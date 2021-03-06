class Admin::DepartmentsController < AdminController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  def index
    @departments = Department.all
  end

  def show; end

  def new
    @department = Department.new
  end

  def edit; end

  def create
    @department = Department.new(department_params)

    if @department.save
      flash[:success] = "Department has been successfully created."
      redirect_to department_path(@department)
    else
      render "new"
    end
  end

  def update
    if @department.update(department_params)
      flash[:success] = "Department has been successfully updated."
      redirect_to department_path(@department)
    else
      render "edit"
    end
  end

  def destroy
    @department.destroy
    flash[:danger] = "Department has been successfully deleted."
    redirect_to departments_path
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
