class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :manager, null: true, foreign_key: { to_table: :employees }

      t.timestamps
    end
  end
end
