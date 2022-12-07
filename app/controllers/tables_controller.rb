class TablesController < ApplicationController
  def create
    @table = Table.new(table_params)
    @team_member = TeamMember.find(params[:team_member_id])
    @table.team_member = @team_member
    if @table.save
      #when we integrate the payment, we shouls be redirect to the pyment_new_path
      #scebario 2 - redirect to the confirmation page
      #NB!
      redirect_to restaurant_team_member_path(@team_member.restaurant, @team_member)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def table_params
    params.require(:table).permit(:review, :tip, :rating, :price)
  end
end
