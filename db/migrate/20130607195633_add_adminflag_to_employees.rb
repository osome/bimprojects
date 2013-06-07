class AddAdminflagToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :admin_flag, :string
  end
end
