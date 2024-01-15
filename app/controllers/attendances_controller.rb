class AttendancesController < ApplicationController
  def index
    render json: {hi: Time.now}
  end

  def show

  end

  def create
    attendance = Attendance.new(attendance_params)
    attendance.date = params[:date] || Date.today
    attendance.user_id = params[:user_id] || current_user.id
    attendance.attendance_type_id = params[:attendance_type_id] || AttendanceType.where(name: 'Present').first.id

    if attendance.save
      render json: attendance, status: :created
    else
      render json: attendance.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:date, :attendance_type_id, :user_id)
  end
end
