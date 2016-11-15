class CreateUploadedForms < ActiveRecord::Migration
  def change
    create_table :uploaded_forms do |t|
      t.string :uploaded_by
      t.string :unit

      t.timestamps null: false
    end
  end
end
