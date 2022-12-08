class TeamMembersController < ApplicationController

  #find a team_member with params
  #store it

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @team_member = TeamMember.find(params[:id])
    authorize @team_member
    @table = Table.new
  def index
    @team_members = policy_scope(TeamMember)

    @team_members = @team_members.order(first_name: :asc)

    @team_members = @team_members.where("first_name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "team_members/list", locals: { team_members: @team_members }, formats: [:html] }
    end
  end
end


# restaurant_team_member GET    /restaurants/:restaurant_id/team_members/:id(.:format)                                            team_members#show
