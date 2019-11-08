class ApplicationController < ActionController::Base
  # around_action :skip_bullet
  #before_action :set_paper_trail_whodunnit
  #before_action :set_current_user

  protected

  

  def skip_bullet
    previous_value = Bullet.enable?
    Bullet.enable = false
    yield
  ensure
    Bullet.enable = previous_value
  end
end
