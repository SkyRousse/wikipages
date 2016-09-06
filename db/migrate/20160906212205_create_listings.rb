class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :phone, :string
      t.column :website, :string
      t.column :hours, :string
      t.column :category_id, :int
    end
  end
end
