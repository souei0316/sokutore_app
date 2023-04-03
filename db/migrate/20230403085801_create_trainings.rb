class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.text :title
      t.text :content
      t.string :image_id

      t.timestamps
    end
  end
end
