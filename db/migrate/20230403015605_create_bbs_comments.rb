class CreateBbsComments < ActiveRecord::Migration[5.2]
  def change
    create_table :bbs_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :bbs_title_id

      t.timestamps
    end
  end
end
