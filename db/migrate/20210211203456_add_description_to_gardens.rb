class AddDescriptionToGardens < ActiveRecord::Migration[6.1]
  def change
    add_column :gardens, :description, :text
  end
end
