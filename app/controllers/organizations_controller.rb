class OrganizationsController < ApplicationController
  before_action :set_organization, only: :create_user
  def index; end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      # OrganizationMailer.with(organization: @organization).welcome_email.deliver_now!
      flash[:notice] = "Email Sent !!!"
      redirect_to new_user_organization_path(id: @organization.id)
    else
      render "new"
    end
  end

  def new_user
    @user = User.new
  end

  def create_user
    @user = @organization.users.new(user_params)

    if @organization.total_user == 0
      @user.admin = true
    end

    if @user.save
      flash[:notice] = "User created !!!"
      redirect_to root_path
    end
  end

  private

  def organization_params
    params.require(:organization).permit(:subdomain)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_organization
    @organization = Organization.find(params[:id])
  end
end
