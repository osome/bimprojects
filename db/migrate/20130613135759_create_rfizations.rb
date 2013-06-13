class CreateRfizations < ActiveRecord::Migration
  def change
    create_table :rfizations do |t|
      t.integer :project_id
      t.integer :employee_id
      t.integer :rfi_id

      t.timestamps
    end
  end
end
