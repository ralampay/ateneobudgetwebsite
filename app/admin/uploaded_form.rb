ActiveAdmin.register UploadedForm do 
  controller do
    def permitted_params
      params.permit!
    end
  end

  actions :all, except: [:new, :edit, :view]

  filter :uploaded_by
  filter :unit

  index do
    column :uploaded_by
    column :unit
    actions defaults: true do |df|
      link_to "Download", df.file.url, target: "_blank"
    end
  end
end

