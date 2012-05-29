class Game < ActiveRecord::Base
  attr_accessible :name
  
  validates_presence_of :name
  # validates_presence_of :game_type
  
  has_many :players
  
  STATE = { 
    :waiting     => 1,
    :playing     => 2,
    :finished    => 3
  }
  
  def initialize(*args)
    super(*args)
    self.state = STATE[:waiting]
  end
  
  def start
    self.state = STATE[:playing]
  end
  
  def finish
    self.state = STATE[:finished]
  end
  
  def add_player( user )
    p = Player.new( :user => user, :game => self )
    p.save!
  end
    
  def to_hash
    {
      :id => id,
      :name => name,
      :created_at => created_at,
      :state => STATE.key(state).to_s,
      :num_players => players.count
    }
  end
  
end