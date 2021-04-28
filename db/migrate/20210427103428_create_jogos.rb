class CreateJogos < ActiveRecord::Migration[6.0]
  def change
    create_table :jogos do |t|
      t.string :nome
      t.float :odd

      t.timestamps
    end
  end
end
