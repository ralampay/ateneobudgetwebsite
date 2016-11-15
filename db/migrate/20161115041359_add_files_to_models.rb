class AddFilesToModels < ActiveRecord::Migration
  def change
    add_attachment :uploaded_forms, :file
    add_attachment :downloadable_forms, :file
  end
end
