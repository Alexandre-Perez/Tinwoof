class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :update_last_seen_at, if: -> { user_signed_in? && (current_user.last_seen_at.nil? || current_user.last_seen_at < 5.minutes.ago) }

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo])
  end

  def update_last_seen_at
    logger.info "Update last seen at: #{current_user.id}"
    current_user.update_attribute(:last_seen_at, Time.current)
  end

  private

  def after_sign_in_path_for(resource)
    authenticated_user_path
  end

end
