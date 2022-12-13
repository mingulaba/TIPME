class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :team_members, dependent: :destroy

  validates :name, presence: true
end
