class WorkplacesController < ApplicationController
  before_action :set_workplace, only: [:create_admin_user]

  def new
    @workplace = Workplace.new
  end

  def create
    @workplace = Workplace.new(workplace_params)

    if @workplace.save
      redirect_to create_admin_workplace_url
    else
      render "new"
    end
  end

  def create_admin
    @user = User.new
  end

  def create_admin_user
    @user = @workplace.users.new(user_params)

    if @user.save
      if @workplace.total_user == 0
        @user.admin == true
      end
 
      flash[:success] = "Welcome Admin!!"
      redirect_to admin_dashboard_url
    else
      render "create_admin"
    end
  end

  private

  def set_workplace
    @workplace = Workplace.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :phone, :password, :password_confirmation)
  end

  def workplace_params
    params.require(:workplace).permit(:name)
  end
end
