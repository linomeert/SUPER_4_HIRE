class AddDescriptionToPowers < ActiveRecord::Migration[5.2]
  def change
    add_column :powers, :description, :text
  end
end
