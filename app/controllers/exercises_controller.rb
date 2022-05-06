class ExercisesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index
    all_exercises = Exercise.all
    render json: all_exercises
  end

  def show
    exercise = Exercise.find_by(id: params["id"])
    render json: exercise
  end

  def create
    exercise = Exercise.new(
      name: params["name"],
      instructions: params["instructions"],
      frequency: params["frequency"],
      image: params["image"]
    )
    if exercise.save
      render json: exercise
    else
      render json: {error_messages: exercise.errors.full_messages},
      status: 422
    end
  end

  def update
    exercise_id = params["id"]
    exercise = Exercise.find(product_id)
    exercise.name = params["name"] || exercise.name
    exercise.instructions = params["instructions"] || exercise.instructions
    exercise.frequency = params["frequency"] || exercise.frequency
    exercise.image = params["image"] || exercise.image

    if product.save
      render json: exercise
    else
      render json: {error_messages: exercise.errors.full_messages},
      status: 422
    end
  end

  def destroy
    exercise_id = params["id"]
    exercise = Exercise.find_by(id: exercise_id)
    exercise.destroy
    render json: {message: "exercise destroyed"}
  end
end
