class CreateSuperheros < ActiveRecord::Migration[5.2]
  def change
    create_table :superheros do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.integer :price_per_day
      t.references :power, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
