class Match< ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.string :phase
      t.string :state
      t.references :local_team, index; true
      t.references :visit_team, index; true
      t.integer :localgoals
      t.integer :visitgoals
      t.references :winner, index; true
      t.references :looser, index; true
      t.boolean :draw?
      t.references :group, index; true
      t.references :stadium, index; true

      t.timestamps
    end
  end
end