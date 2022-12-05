class Table < ApplicationRecord
  belongs_to :team_member

  validates :tip, :price, presence: true
end
