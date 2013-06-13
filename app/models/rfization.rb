class Rfization < ActiveRecord::Base
  attr_accessible :employee_id, :project_id, :rfi_id

  belongs_to :project
  belongs_to :employee
  belongs_to :rfi
end
