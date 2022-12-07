class AddUserIdToTeamMembers < ActiveRecord::Migration[7.0]
  def change
    add_reference :team_members, :users, null: false, foreign_key: true
  end
end
