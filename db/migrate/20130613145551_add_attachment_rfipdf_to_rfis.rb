class AddAttachmentRfipdfToRfis < ActiveRecord::Migration
  def self.up
    change_table :rfis do |t|
      t.attachment :rfipdf
    end
  end

  def self.down
    drop_attached_file :rfis, :rfipdf
  end
end
