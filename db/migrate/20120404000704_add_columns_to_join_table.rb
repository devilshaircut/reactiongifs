class AddColumnsToJoinTable < ActiveRecord::Migration
  def change
    drop_table :images_tags
    create_table :images_tags, :id => false do |t|
      t.references :image, :tag
    end

    add_index :images_tags, [:image_id, :tag_id]
  end
end
