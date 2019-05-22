class CallbackController < ApplicationController
  def omniauthAuth
  	@user = User.from_omniauth(request.env["omniauth.auth"])
  	sing_in_and_redirect @user
  end
end
