class TeamMember < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :first_name, :last_name, :birth_date, presence: true
  has_one_attached :photo
  has_many :tables

  def av_rating
    sum = 0
    self.tables.each do |table|
      sum += table.rating
    end
    @av_rating = (sum/self.tables.count.to_f).round(1)
  end

  def sum_tip
    sum = 0
    self.tables.each do |table|
      sum += table.tip
    end
    sum
  end

  def last_tip
    @tip = self.tables.last.tip
  end
end
