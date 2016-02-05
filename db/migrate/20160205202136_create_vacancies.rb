class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name, limit: 50
      t.string :code, limit: 10

      t.timestamps null: false
    end
    add_index :vacancies, :name, unique: true
    add_index :vacancies, :code, unique: true
  end
end
