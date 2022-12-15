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
    tips_today
    average_tip_today(@team_members)
    average_rating(@team_members)
    top_rating
    low_rating

    if params[:query]
      @restaurant = Restaurant.find(params[:query])
      @team_members = @restaurant.team_members
      tips_today
      average_tip_today(@team_members)
      average_rating(@team_members)
      top_rating
      low_rating
    end

    respond_to do |format|
      format.html
      format.text { render partial: "pages/tabs", locals: { team_members: @team_members }, formats: [:html] }
    end
  end

  def profile
    @team_member = current_user.team_member
  end

  private

  def tips_today
    @tips = 0
    @team_members.each do |team_member|
      team_member.tables.each { |table| @tips += table.tip if table.date == Date.today }
    end
    @tips
  end

  def average_tip_today(team_members)
    sum = 0
    tips = 0
    team_members.each do |team_member|
      team_member.tables.each do |table|
        if table.date == Date.today
          sum += table.tip
          tips += 1
        end
      end
    end
    @average_tip_today = (sum / tips.to_f).round(2)
  end

  def average_rating(team_members)
    sum = 0
    tables = 0
    team_members.each do |team_member|
      team_member.tables.each do |table|
        sum += table.rating
        tables += 1
      end
    end
    @average_rating = (sum / tables.to_f).round(1)
  end

  def top_rating
    @top_rating = @team_members.max_by(&:av_rating)
  end

  def low_rating
    @low_rating = @team_members.min_by(&:av_rating)
  end

  # def table_counter
  #   @table_counter = 0
  #   @team_members.each do |team_member|
  #     team_member.tables.each { |table| @table_counter += 1 if table.date == Date.today }
  #   end
  #   @table_counter
  # end
end
