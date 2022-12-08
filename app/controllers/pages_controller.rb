class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def payment_confirm
    @team_member = TeamMember.find(params[:team_member_id])
  end
end
