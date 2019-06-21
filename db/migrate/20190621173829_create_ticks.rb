class CreateTicks < ActiveRecord::Migration[5.2]
  def change
    create_table :ticks do |t|
      t.string :titulo
      t.string :conteudo
      t.references :cliente, foreign_key: true
      t.references :pedido, foreign_key: true

      t.timestamps
    end
  end
end
