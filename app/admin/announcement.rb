ActiveAdmin.register Announcement do 
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :announced_at

  index do
    id_column

    column :title
    column :announced_at
    actions
  end

  form do |f|
    inputs "Details" do
      input :title
      input :announced_at
      f.input :content
    end

    f.actions
  end

  show do
    attributes_table do
      row :title
      row :announced_at
      row :content
      row :created_at
      row :updated_at
    end
  end
end