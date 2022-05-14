class ExerciseProgramsController < ApplicationController

  def index
    exercise_program = ExerciseProgram.all
    # exercise_programs = current_user.exercise_programs.where(status: "added")
    render json: exercise_program
  end

  def create
    index = 0
    exerciseProgram = []
    while index < params[:exercises].length
      exercise_program = ExerciseProgram.new(
        exercise_id: params[:exercises][index][:id],
        program_id: params[:program_id]
      )
      if exercise_program.save
        exerciseProgram << exercise_program
      end
      index = index + 1
    end
    render json: exerciseProgram
  end

  def destroy
      exercise_program = ExerciseProgram.find(params[:id])
      # exercise_program.status = "removed"
    if exercise_program.save
      render json: {status: "Exercise Program removed"}
    else
      render json: {status: "Something went wrong"}
    end
  end
end


