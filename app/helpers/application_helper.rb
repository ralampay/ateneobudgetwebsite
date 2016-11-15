module ApplicationHelper
  def downloadable_forms
    return DownloadableForm.all.order(:priority)
  end
end
