class Attendance < ApplicationRecord
  belongs_to :users
  belongs_to :attendance_types
end
