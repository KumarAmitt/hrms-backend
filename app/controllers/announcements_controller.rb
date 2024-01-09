class AnnouncementsController < ApplicationController
  def index
    announcements = Announcement.all
    render json: { announcements: }
  end

  def create
    announcement = current_user.announcements.build(announcement_params)
    announcement.user_id = current_user.id
    if announcement.save
      render json: { announcement: announcement, status: :ok }
    else
      render json: { status: 'Invalid data' }, status: 400
    end
  end

  private
  def announcement_params
    params.permit(:title, :description, :priority)
  end
end
