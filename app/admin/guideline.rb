ActiveAdmin.register Guideline do 
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :title
  filter :posted_at
  filter :guideline_type

  index do 
    column :title
    column :posted_at
    column :guideline_type
    column :special 
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :posted_at, as: :datepicker
      f.input :guideline_type, as: :select, collection: ["School", "Auxiliaries", "Central Services", "CAPEX"]
      f.input :content
      f.input :special
    end 

    f.actions

  end   

  show do |v|
    attributes_table do
      row :title
      row :content do
        v.content.html_safe
      end
      row :guideline_type
      row :posted_at
    end
  end
end
