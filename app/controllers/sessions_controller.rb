class SessionsController < ApplicationController
  def new
  end

  def create
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      session[:account_type] = customer.account_type
      redirect_to restaurants_path
    else flash[:alert] = "user and/or password is incorrect"
      render :new
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to restaurants_path, notice: "Logged out!"
  end
end
