class WorkplacesController < ApplicationController
  def new
    @workplace = Workplace.new
  end

  def create
    @workplace = Workplace.new(workplace_params)

    if @workplace.save
      redirect_to @workplace
    else
      render "new"
    end
  end

  private

  def workplace_params
    params.require(:workplace).permit(:name)
  end
end
