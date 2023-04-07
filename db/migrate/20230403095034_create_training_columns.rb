class CreateTrainingColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :training_columns do |t|
      t.text :content

      t.timestamps
    end
  end
end
