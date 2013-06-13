class Rfi < ActiveRecord::Base
  attr_accessible :date_answered, :date_requested, :number, :title, :project_id

  has_many :rfizations
  belongs_to :project

  def self.update_rfizations(rfi)
  	@project = rfi.project
  	@project.rfis << rfi
  end

end
