class CreateTeamizations < ActiveRecord::Migration
  def change
    create_table :teamizations do |t|
    	t.integer :employee_id
    	t.integer :project_id
      	
      	t.timestamps
    end
  end
end
