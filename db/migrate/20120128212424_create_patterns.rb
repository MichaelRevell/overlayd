class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
