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
end
