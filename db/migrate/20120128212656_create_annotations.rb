class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height
      t.integer :text
      t.string :title
      t.string :link
      t.integer :pattern_id
      t.integer :overlay_id
      t.string :page_path
      t.string :page_sub_domain
      t.string :selector

      t.timestamps
    end
  end
end
