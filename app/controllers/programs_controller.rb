class ProgramsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    pp current_user
    programs = Program.where(user_id: current_user.id).order(:created_at)
    # programs = Program.all
    render json: programs
  end

  def show
    program = Program.where(user_id: params[:user_id])
    render json: program
  end

  def create
    # exercise_programs = current_user.exercise_programs.where(status: added)

    program = Program.new(
      user_id: params[:user_id],
      user_rating: params[:user_rating],
      title: params[:title]
    )
    if program.save
      # exercise_programs.update_all(status: "completed", program_id: program.id)
      render json: program.as_json
    else
      render json: {error_messages: program.errors.full_messages},
      status: 422
    end
  end

  def update
    id = params["id"]
    program = Program.find(id)
    program.user_rating = params["user_rating"] || program.user_rating
    program.title = params["title"] || program.title
    
    if program.save
      render json: program
    else
      render json: {error_messages: program.errors.full_messages},
      status: 422
    end
  end

  def destroy
    program_id = params["id"]
    program = Program.find_by(id: program_id)
    program.destroy
    render json: {message: "program destroyed"}
  end
end
