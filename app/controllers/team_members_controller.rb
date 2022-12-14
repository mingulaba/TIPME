class TeamMembersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_team_member, only: %i[show destroy profile]
  before_action :set_restaurant, only: %i[index show new create]

  def index
    @user = current_user
    @team_members = policy_scope(TeamMember)

    @team_members = @restaurant.team_members.order(first_name: :asc)

    @team_members = @restaurant.team_members.where("first_name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "team_members/list", locals: { team_members: @team_members }, formats: [:html] }
    end
  end

  def show
    @user = current_user
    @table = Table.new
  end

  def new
    @user = current_user
    @team_member = TeamMember.new
    authorize @team_member
  end

  def create
    @team_member = TeamMember.new(safe_params)
    authorize @team_member
    @team_member.user = User.find_by(first_name: @team_member.first_name, last_name: @team_member.last_name)
    @team_member.restaurant = @restaurant
    if @team_member.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @team_members.update(team_members_params)
    authorize @team_members
    redirect_to team_members_path(@team_members)
  end

  def destroy
    @team_member.destroy
    redirect_to dashboard_path, status: :see_other
  end

  def profile
    @user = current_user
    @tables = @team_member.tables.order(date: :desc)
  end

  private

  def set_team_member
    @team_member = TeamMember.find(params[:id])
    authorize @team_member
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def safe_params
    params.require(:team_member).permit(:first_name, :last_name, :birth_date, :introduction)
  end
end
