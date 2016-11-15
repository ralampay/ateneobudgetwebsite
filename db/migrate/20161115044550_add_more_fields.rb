class AddMoreFields < ActiveRecord::Migration
  def change
    add_column(:downloadable_forms, :priority, :intger)
    add_column(:guidelines, :special, :boolean)
  end
end
