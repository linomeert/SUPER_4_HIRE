class AddAddressToSuperheros < ActiveRecord::Migration[5.2]
  def change
    add_column :superheros, :address, :string
  end
end
