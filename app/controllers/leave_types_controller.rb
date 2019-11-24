class LeaveTypesController < ApplicationController
  before_action :set_leave_type, only: [:show, :edit, :update, :destroy]

  def index
    @leave_types = LeaveType.all
  end

  def show; end

  def new
    @leave_type = LeaveType.new
  end

  def edit; end

  def create
    @leave_type = LeaveType.new(leave_type_params)

    if @leave_type.save
      flash[:success] = "Leave Type has been successfully created."
      redirect_to leave_type_path(@leave_type)
    else
      render "new"
    end
  end

  def update
    if @leave_type.update(leave_type_params)
      flash[:success] = "Leave Type has been successfully updated."
      redirect_to leave_type_path(@leave_type)
    else
      render "edit"
    end
  end

  def destroy
    @leave_type.destroy
    flash[:danger] = "Leave Type has been successfully deleted."
    redirect_to leave_types_path
  end

  private

  def set_leave_type
    @leave_type = LeaveType.find(params[:id])
  end

  def leave_type_params
    params.require(:leave_type).permit(:leave_type)
  end
end
