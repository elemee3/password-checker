class PasswordController < ApplicationController
  def check
    @username = params[:user]
    @password = params[:password]
    @message = "Please enter your user name and password."

    if !@username.nil? && !@password.nil?
      if @username == @password
        @message = "Try again. Your password cannot be the same as your user name."
      end

      if @username.to_s.length < 6
        @message = "Try again. Your user name must be 6 characters or longer."
      end

      if @password.to_s.length < 6
        @message = "Try again. Your password must be 6 characters or longer."
      end

      if !@password.include?("#") && !@password.include?("!") && !@password.include?("$")
        @message = "Try again. Your password must contain at least one special character (#!$)"
      end
      @message = "Credentials are acceptable."
    end

    render '/password/check.html.erb'
  end

  def reset
    reset_session
  end
end
