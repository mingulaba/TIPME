class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :team_members
  
  validates :name, presence: true
end
