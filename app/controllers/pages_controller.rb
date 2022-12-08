class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
  end

  def dashboard
    @user = current_user
    @restaurants = Restaurant.where(user: current_user)
    # @team_members = TeamMember.where(restaurant: @restaurant)
  end
end
