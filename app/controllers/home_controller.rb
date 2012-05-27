class HomeController < ApplicationController
  
  def index
    puts 'index called... '
    puts "****** #{session.inspect}"
    @user = current_user
    @session_user = session[:name] if session[:access_token]
  end
end