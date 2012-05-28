class Api::GamesController < ActionController::Base
  def index
    @games = Game.all
    render :json => @games.map(&:to_hash)
  end
  
  def create
    g = Game.create( :name => params[:name] )
    g.add_player( current_user )
  end
end