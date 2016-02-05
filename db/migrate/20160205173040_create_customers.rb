class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, limit: 50
      t.string :code, limit: 10
      t.string :full_code, limit: 15
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :customers, :full_code, unique: true
  end
end
