class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :instructions
      t.string :frequency
      t.string :image

      t.timestamps
    end
  end
end
