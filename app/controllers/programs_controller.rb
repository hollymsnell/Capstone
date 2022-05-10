class ProgramsController < ApplicationController
  before_action :authenticate_user

  def index
    programs = current_user.programs
    render json: programs.as_json
  end

  def show
    program = current_user.programs.find_by(id: params[:id])
    render json: program.as_json
  end

  def create
    # exercise_programs = current_user.exercise_programs.where(status: added)

    program = Program.new(
      user_id: params[:user_id],
      user_rating: params[:user_rating]
    )
    if program.save
      # exercise_programs.update_all(status: "completed", program_id: program.id)
      render json: program.as_json
    else
      render json: {error_messages: program.errors.full_messages},
      status 422
    end
  end
end
