class UsersController < ApplicationController
  # before_action :authenticate_admin, except: [] 
  def index
    all_users = User.all.order(:name)
    render json: all_users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      phone: params[:phone],
      age: params[:age],
      profile_pic: params[:profile_pic],
      injury_diagnosis: params[:injury_diagnosis]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  def update
    pp params
    user_id = params["id"]
    user = User.find(user_id)
    user.name = params["name"] || user.name
    user.phone = params["phone"] || user.phone
    user.age = params["age"] || user.age
    user.profile_pic = params["profile_pic"] || user.profile_pic
    user.injury_diagnosis = params["injury_diagnosis"] || user.injury_diagnosis

    if user.save
      render json: user
    else
      render json: {error_messages: user.errors.full_messages},
      status: 422
    end
  end

  def destroy
    user_id = params["id"]
    user = User.find_by(id: user_id)
    user.destroy
    render json: {message: "user destroyed"}
  end
end


