class WelcomeController < ApplicationController
  def index
    # When the user Handle is not set, force to register Handle
    if current_user.handle.blank?
      url = root_url( only_path: false )
      SignupMailer.signup_email( current_user, url ).deliver_now
      session[:set_handle_from_chat] = true
      redirect_to edit_user_path(current_user)
    end
    session[:user] = current_user

  end
end
