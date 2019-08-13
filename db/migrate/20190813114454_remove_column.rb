class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :powers, :discription, :text
  end
end
