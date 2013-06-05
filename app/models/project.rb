class Project < ActiveRecord::Base
  attr_accessible :name, :number, :status

  has_many :teamizations
  has_many :employees, :through => :teamizations

end
