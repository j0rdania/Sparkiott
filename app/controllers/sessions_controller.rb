class SessionsController < ApplicationController
  def destroy
    reset_session
  end

  def create
    session[:id] = params(:id)
    redirect_to root_path
  end

end
