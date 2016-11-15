class UploadedFormsController < ApplicationController
  def new
    @uploaded_form = UploadedForm.new
  end

  def create
    @uploaded_form = UploadedForm.new(uploaded_form_params)

    if @uploaded_form.save
      flash[:success] = "Successfully uploaded file."
      redirect_to new_uploaded_form_path
    else
      flash[:error] = "Cannot upload file. Please check form for details."
      render :new
    end
  end

  def uploaded_form_params
    params.require(:uploaded_form).permit!
  end
end
