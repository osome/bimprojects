class Project < ActiveRecord::Base
  attr_accessible :name, :number, :status, :employee_ids

  has_many :teamizations
  has_many :employees, :through => :teamizations

end
