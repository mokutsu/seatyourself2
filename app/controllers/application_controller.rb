class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  def current_customer
    @current_customer ||= session[:customer_id] && Customer.find(session[:customer_id]) if session[:customer_id]
  end

  helper_method :current_customer

  def ensure_logged_in
    unless current_customer
      flash[:alert] = 'Please log in!'
      redirect_to new_session_path
    end
  end

  def chop_time(time)
    time.strftime("%H:%M%p")
  end

  helper_method :chop_time

end
