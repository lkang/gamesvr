class Player < ActiveRecord::Base
  attr_accessible :user, :game
  
  validates_presence_of :user
  validates_presence_of :game
  
  belongs_to :user
  belongs_to :game
  
  # def initialize
  #   self.score = 0
  # end
  # 
end    
  
  