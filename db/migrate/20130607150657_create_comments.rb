class CreateComments < ActiveRecord::Migration
  def up  	
    create_table :comments do |t|
      t.integer :employee_id
      t.integer :project_id
      t.text :body

      t.timestamps
    end
  end

  def down
  	drop_table :comments
  end
end
