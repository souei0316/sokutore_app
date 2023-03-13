class CreateBbsTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :bbs_titles do |t|
      t.text :title
      t.string :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
