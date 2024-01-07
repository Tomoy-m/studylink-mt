class Recode < ApplicationRecord
  belongs_to :user
  validates :start_time, presence: true
  validates :finish_time, presence: true
end
