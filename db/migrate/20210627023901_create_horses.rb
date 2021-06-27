class CreateHorses < ActiveRecord::Migration[6.1]
  def change
    create_table :horses do |t|
      t.text :name
      t.float :power
      t.integer :last_race
      t.integer :year

      
    end
  end
end
