class TeamMembersController < ApplicationController

  #find a team_member with params
  #store it

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @team_member = TeamMember.find(params[:id])
    @table = Table.new
  end
end


# restaurant_team_member GET    /restaurants/:restaurant_id/team_members/:id(.:format)                                            team_members#show
