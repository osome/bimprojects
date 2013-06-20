class Comment < ActiveRecord::Base
  attr_accessible :body, :employee_id, :project_id

  def reference
  	
  end
end
