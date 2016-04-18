class CustomersController < ApplicationController
  def new



    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
        redirect_to new_session_path
    else
        render :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to customer_path(current_customer), notice: "Customer profile successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
        session[:customer_id] = nil
    redirect_to restaurants_path, notice: "Profile successfully deleted. We hope you join us again some day!"
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end

end
