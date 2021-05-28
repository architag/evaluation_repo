class ApplicationController < ActionController::Base
  def home
    render html:"Hello, Welcome to my App!"
  end
end
