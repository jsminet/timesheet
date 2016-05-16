class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, limit: 50
      t.text :description, limit: 255
      t.datetime :start
      t.datetime :finish
      t.references :customer, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :all_day

      t.timestamps null: false
    end
  end
end
