class TablesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @table = Table.new(table_params)
    authorize @table
    @team_member = TeamMember.find(params[:team_member_id])
    authorize @team_member
    @table.team_member = @team_member
    @table.date = Date.today
    if @table.save
      #when we integrate the payment, we shouls be redirect to the pyment_new_path
      #scebario 2 - redirect to the confirmation page
      #NB!
      redirect_to restaurant_team_member_payment_confirm_path(@team_member.restaurant, @team_member)
    else
      flash[:alert] = "Something went wrong."
      render "team_members/show", status: :unprocessable_entity
    end
  end

  private

  def table_params
    params.require(:table).permit(:review, :tip, :rating, :price)
  end
end
