class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :name
      t.text :discription

      t.timestamps
    end
  end
end
