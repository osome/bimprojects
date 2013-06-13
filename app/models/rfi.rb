class Rfi < ActiveRecord::Base
  attr_accessible :date_answered, :date_requested, :number, :title, :project_id, :rfipdf

  has_attached_file :rfipdf

  #has_many :rfizations
  belongs_to :project

end
