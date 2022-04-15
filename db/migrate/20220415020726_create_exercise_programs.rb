class CreateExercisePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_programs do |t|
      t.integer :program_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
