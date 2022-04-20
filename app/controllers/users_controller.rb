class UsersController < ApplicationController

  def create
    user = User.new(
      name: params[:input_name],
      email: params[:input_email],
      password: params[:input_password],
      password_confirmation: params[:input_password_confirmation]
    )
    user.save
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[input_name] || user.name
    user.email = params[input_email] || user.email
    user.password = params[input_password] || user.password
    user.password_confirmation = params[input_password_confirmation] || user.password_confirmation

    user.save
    render json: user
  end

end
