class Employee < ActiveRecord::Base
  attr_accessible :department, :ext, :name

  has_many :teamizations
  has_many :projects, :through => :teamizations
end
