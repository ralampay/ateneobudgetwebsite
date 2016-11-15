class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|
      t.string :title
      t.text :content
      t.date :posted_at
      t.string :guideline_type

      t.timestamps null: false
    end
  end
end
