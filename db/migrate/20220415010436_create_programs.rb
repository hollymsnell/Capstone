class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.string :user_rating

      t.timestamps
    end
  end
end
