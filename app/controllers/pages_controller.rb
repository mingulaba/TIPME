class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home payment_confirm]

  def home
    @user = current_user
  end

  def payment_confirm
    @user = current_user
    @team_member = TeamMember.find(params[:team_member_id])
  end
  
  def dashboard
    @user = current_user
    @restaurants = Restaurant.where(user: current_user)
    authorize @restaurants
    @restaurant = @user.restaurants.first
    authorize @restaurant
    @team_members = @restaurant.team_members.order(first_name: :asc)
    authorize @team_members

    if params[:query]
      @restaurant = Restaurant.find(params[:query])
      @team_members = @restaurant.team_members
    end

    respond_to do |format|
      format.html
      format.text { render partial: "pages/list", locals: { team_members: @team_members }, formats: [:html] }
    end
  end

  def profile
    @team_member = current_user.team_member
  end

end
