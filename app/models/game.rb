class Game < ActiveRecord::Base
  attr_accessible :name
  
  validates_presence_of :name
  # validates_presence_of :game_type
  
  has_many :players
  
  STATE = [:waiting, :in_progress, :finished]
  
  def initialize
    super
    self.state = :waiting
  end
  
  def start
    self.state = :in_progress
  end
  
  def finish
    self.state = :finished
  end
  
  def add_player( user )
    # p = Player.new
    # p.game = self
    # p.user = user
    p = Player.new( :user => user, :game => self )
    p.save!
  end
    
  def to_hash
    {
      :id => id,
      :name => name,
      :created_at => created_at,
      :state => state.to_s,
      :num_players => players.count
    }
  end
  
end