class ExerciseProgramsController < ApplicationController

  def index
    exercise_program = ExerciseProgram.all
    # exercise_programs = current_user.exercise_programs.where(status: "added")
    render json: exercise_program
  end

  def create
    exercise_program = ExerciseProgram.new(
      # user_id: current_user.id,
      exercise_id: params[:exercise_id],
      # status: "added",
      program_id: params[:program_id]
    )
    if exercise_program.save
      render json: exercise_program
    else
      render json: {error_message: exercise_program.errors.full_messages}, status: 422
    end 
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
