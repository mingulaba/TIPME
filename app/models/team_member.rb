class TeamMember < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :first_name, :last_name, :birth_date, presence: true
end
