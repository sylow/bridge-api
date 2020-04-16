class CreateHands < ActiveRecord::Migration[6.0]
  def change
    create_table :hands do |t|
      t.references :deal, null: false      
      t.column :seat, :player_position
      t.jsonb :cards, default: []
    end
  end
end
