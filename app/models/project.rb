class Project < ActiveRecord::Base
  attr_accessible :name, :number, :status, :employee_ids, :rvtmodel

  has_attached_file :rvtmodel#, :path => ":rails_root/public/files/"

  has_many :comments
  has_many :teamizations
  has_many :employees, :through => :teamizations

end
