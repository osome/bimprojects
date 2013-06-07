class AddPasswordhashToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :password_hash, :string
  end
end
