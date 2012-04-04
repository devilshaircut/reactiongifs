class CreateImagesTags < ActiveRecord::Migration
  def change
    create_table :images_tags do |t|

      t.timestamps
    end
  end
end
