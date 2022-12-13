class TeamMembersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_team_member, only: %i[show destroy]
  before_action :set_restaurant, only: %i[index show]

  def index
    @team_members = policy_scope(TeamMember)

    @team_members = @restaurant.team_members.order(first_name: :asc)

    @team_members = @restaurant.team_members.where("first_name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "team_members/list", locals: { team_members: @team_members }, formats: [:html] }
    end
  end

  def show
    @table = Table.new
  end

  def destroy
    @team_member.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_team_member
    @team_member = TeamMember.find(params[:id])
    authorize @team_member
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
