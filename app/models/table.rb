class Table < ApplicationRecord
  belongs_to :team_member

  validates :tip, presence: true
end
