class Timetable < ApplicationRecord
  belongs_to :user
  validates :start_time1, presence: true
  validates :finish_time1, presence: true
  validates :start_time2, presence: true
  validates :finish_time2, presence: true
  validates :start_time3, presence: true
  validates :finish_time3, presence: true
  validates :start_time4, presence: true
  validates :finish_time4, presence: true
  validates :start_time5, presence: true
  validates :finish_time5, presence: true
  validates :start_time6, presence: true
  validates :finish_time6, presence: true
end
