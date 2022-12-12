class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home payment_confirm ]

  def home
    # @restaurant = Restaurant.find(id: 1)
  end

  def payment_confirm
    @team_member = TeamMember.find(params[:team_member_id])
  end

  def dashboard
    @user = current_user
    @restaurants = Restaurant.where(user: current_user)
    # @team_members = TeamMember.where(restaurant: @restaurant)
  end
end
