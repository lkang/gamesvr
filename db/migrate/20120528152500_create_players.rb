class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |p|
      p.integer :game_id
      p.integer :user_id
      p.integer :score
      p.timestamps
    end
  end
end
