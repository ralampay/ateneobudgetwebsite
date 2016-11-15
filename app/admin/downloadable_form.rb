ActiveAdmin.register DownloadableForm do 
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :name
  filter :color

  index do
    column :name
    column :color
    column :description
    column :priority
    column :special
    actions defaults: true do |df|
      link_to "Download", df.file.url, target: "_blank"
    end
  end

  form do |f|
    f.inputs "Details" do 
      f.input :name
      f.input :color, input_html: {class: 'colorpicker'}
      f.input :description
      f.input :priority
      f.input :special
      f.input :file, as: :file
    end

    f.actions
  end
    
  show do |v|
    attributes_table do
      row :name
      row :color
      row :description
      row :priority
      row :special
    end
  end
end
