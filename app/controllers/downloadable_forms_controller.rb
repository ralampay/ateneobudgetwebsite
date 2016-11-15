class DownloadableFormsController < ApplicationController

  def index
    @df = DownloadableForm.all
  end
end