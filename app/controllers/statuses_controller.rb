class StatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  def index
    @statuses = Status.all
  end

  def show; end

  def new
    @status = Status.new
  end

  def edit; end

  def create
    @status = Status.new(status_params)

    if @status.save
      flash[:success] = "Status has been successfully created."
      redirect_to status_path(@status)
    else
      render "new"
    end
  end

  def update
    if @status.update(status_params)
      flash[:success] = "Status has been successfully updated."
      redirect_to status(@status)
    else
      render "edit"
    end
  end

  def destroy
    @status.destroy
    flash[:danger] = "Status has been successfully deleted."
    redirect_to status_path
  end

  private

  def set_status
    @status = Status.find(params[:id])
  end

  def status_params
    params.require(:status).permit(:status_type)
  end
end
