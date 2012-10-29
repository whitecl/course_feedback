class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :name
      t.boolean :released, default: false
      t.references :course

      t.timestamps
    end
    add_index :segments, :course_id
  end
end
