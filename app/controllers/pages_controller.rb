class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home payment_confirm ]

  def home
    #@restaurant = Restaurant.find(id: 1)
  end

  def payment_confirm
    @team_member = TeamMember.find(params[:team_member_id])
  end
end
