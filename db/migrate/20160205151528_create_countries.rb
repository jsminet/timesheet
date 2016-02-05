class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, limit: 60
      t.string :iso_code_2, limit: 2
      t.string :iso_code_3, limit: 3

      t.timestamps null: false
    end
    add_index :countries, :iso_code_2, unique: true
    add_index :countries, :iso_code_3, unique: true
  end
end
