class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :ext
      t.string :department

      t.timestamps
    end
  end
end
