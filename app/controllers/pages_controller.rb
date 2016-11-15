class PagesController < ApplicationController
  def index
  end

  def announcements
    @announcements = Announcement.all
  end
end