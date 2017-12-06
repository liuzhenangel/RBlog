class Admin::BaseController < ApplicationController
  layout 'admin'
  before_action :authenticate_user

  def authenticate_user
    unless session[:login]
      redirect_to new_session_path
    end
  end
end
