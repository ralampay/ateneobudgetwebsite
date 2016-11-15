class DownloadableForm < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true
  validates :description, presence: true
  validates :priority, presence: true, numericality: true

  has_attached_file :file
  #validates_attachment_file_name :file, :matches => [/doc\Z/, /xlsx?g\Z/, /xls\Z/, /docx\Z/]
  #validates_attachment_content_type :file, :content_type => %w(application/xml application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
  do_not_validate_attachment_file_type :file

  def file_attached?
    self.file.file?
  end
end
