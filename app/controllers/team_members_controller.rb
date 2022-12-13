class TeamMembersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
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
    @team_member = TeamMember.find(params[:id])
    authorize @team_member
    @table = Table.new
  end

  def profile
    @profile = TeamMember.find_by(user_id: current_user.id)
    authorize @profile
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
