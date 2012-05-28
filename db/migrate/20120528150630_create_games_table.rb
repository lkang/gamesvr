class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |g|
      g.string  :name
      g.integer :game_type_id
      g.integer :state
      
      g.timestamps
    end
  end
end
