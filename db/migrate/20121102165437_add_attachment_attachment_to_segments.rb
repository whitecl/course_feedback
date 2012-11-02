class AddAttachmentAttachmentToSegments < ActiveRecord::Migration
  def self.up
    change_table :segments do |t|
      t.has_attached_file :attachment
    end
  end

  def self.down
    drop_attached_file :segments, :attachment
  end
end
