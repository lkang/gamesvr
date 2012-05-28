class Api::UsersController < ActionController::Base
  def index
    @users = User.all
    render :json => @users.map(&:to_hash)
  end
end