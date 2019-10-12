class ApplicationController < ActionController::Base
  # around_action :skip_bullet

  protected

  def skip_bullet
    previous_value = Bullet.enable?
    Bullet.enable = false
    yield
  ensure
    Bullet.enable = previous_value
  end
end
