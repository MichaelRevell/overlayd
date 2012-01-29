class CreateOverlays < ActiveRecord::Migration
  def change
    create_table :overlays do |t|
      t.string :title
      t.string :site_name
      t.string :root_domain
      t.integer :user_id
      t.integer :views
      t.string :subdomain
      t.pic :pic

      t.timestamps
    end
  end
end
