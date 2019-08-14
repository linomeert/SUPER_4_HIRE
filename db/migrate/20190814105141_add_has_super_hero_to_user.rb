class AddHasSuperHeroToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :has_super_hero, :boolean, :default => false
  end
end
