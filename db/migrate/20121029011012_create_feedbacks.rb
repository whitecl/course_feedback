class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.float :score
      t.references :segment

      t.timestamps
    end
    add_index :feedbacks, :segment_id
  end
end
