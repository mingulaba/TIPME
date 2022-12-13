class TeamMembersController < ApplicationController
  def index
    @team_members = policy_scope(TeamMember)

    @team_members = @team_members.order(first_name: :asc)

    @team_members = @team_members.where("first_name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "team_members/list", locals: { team_members: @team_members }, formats: [:html] }
    end
  end

  def show
    authorize @team_members
    @team_members = TeamMember.new
  end

  def new
    @team_members = TeamMember.new
    authorize @team_members
  end

  def create
    @team_members = TeamMember.new(team_members_params)
    @team_members.user = current_user
    authorize @team_members
    if @team_members.save
      redirect_to team_members_path(@team_members)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @team_members.update(team_members_params)
    authorize @team_members
    redirect_to team_members_path(@team_members)
  end

  def destroy
    auhorize @team_members
    @team_members.destroy
  end

  private

  def set_team_members
    @team_members = TeamMember.find(params[:id])
  end
end
