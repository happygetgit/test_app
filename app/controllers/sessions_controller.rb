class SessionsController < ApplicationController
  
  def new
    @users = User.new
  end

  def create
  end

end
