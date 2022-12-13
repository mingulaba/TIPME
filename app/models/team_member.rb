class TeamMember < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :tables, dependent: :destroy

  validates :first_name, :last_name, :birth_date, presence: true
  has_one_attached :photo
end
