class CreateJogoSubscribes < ActiveRecord::Migration[6.0]
  def change
    create_table :jogo_subscribes do |t|
      t.string :key
      t.text :params

      t.timestamps
    end
  end
end
