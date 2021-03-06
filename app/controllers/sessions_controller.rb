class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user.present? && user.authenticate(params[:session][:password])
      login(user)
      redirect_to products_url
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to login_url
  end

end
