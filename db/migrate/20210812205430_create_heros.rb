class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.text :description
      t.integer :rank
      t.string :abilities
      t.string :img_url
      t.belongs_to :league, foreign_key: true
    end
  end
end
