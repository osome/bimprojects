class AddPasswordsaltToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :password_salt, :string
  end
end
