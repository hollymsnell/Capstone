class UsersController < ApplicationController
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
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end


