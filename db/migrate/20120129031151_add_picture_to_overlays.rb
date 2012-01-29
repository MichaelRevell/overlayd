class AddPictureToOverlays < ActiveRecord::Migration
  def change
    add_column :overlays, :picture, :string
  end
end
