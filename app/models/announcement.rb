class Announcement < ActiveRecord::Base
  validates :title, presence: true
  validates :announced_at, presence: true
  validates :content, presence: true
end
