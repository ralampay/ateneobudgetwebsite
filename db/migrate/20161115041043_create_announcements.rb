class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.date :announced_at
      t.text :content

      t.timestamps null: false
    end
  end
end
