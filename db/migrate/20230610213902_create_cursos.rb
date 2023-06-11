class CreateCursos < ActiveRecord::Migration[6.1]
  def change
    create_table :cursos do |t|
      t.string :titulo
      t.string :descricao
      t.integer :nivel_dificuldade
      t.string :duracao
      t.integer :preco
      t.integer :id_instrutor

      t.timestamps
    end
  end
end
