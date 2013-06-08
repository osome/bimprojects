class AddAttachmentRvtmodelToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :rvtmodel
    end
  end

  def self.down
    drop_attached_file :projects, :rvtmodel
  end
end
