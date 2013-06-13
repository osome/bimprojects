class AddProjectIdToRfi < ActiveRecord::Migration
  def change
  	add_column :rfis, :project_id, :integer
  end
end
