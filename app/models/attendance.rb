class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :attendance_type

  validates :date, uniqueness: { scope: %i[user_id attendance_type_id] }

end
