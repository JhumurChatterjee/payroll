class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employee = Employee.all
  end

  def show; end

  def new
    @employee = Employee.new
  end

  def edit; end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:success] = "Employee has been successfully created."
      redirect_to employee_path(@employee)
    else
      render "new"
    end
  end

  def update
    if @employee.update(employee_params)
      flash[:success] = "Employee has been successfully updated."
      redirect_to employee_path(@employee)
    else
      render "edit"
    end
  end

  def destroy
    @employee.destroy
    flash[:danger] = "Employee has been successfully deleted."
    redirect_to employees_path
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :email, :phone, :date_of_birth, :date_of_joining, :city1_id, :city2_id, :state1_id, :state2_id, :country1_id, :country2_id, :stree_address1, :street_address2, :pin_number1, :pin_number2, :department_id, :workplace_id, :status_id, :leave_type_id)
  end
end
