class CreateCompraCursos < ActiveRecord::Migration[6.1]
  def change
    create_table :compra_cursos do |t|
      t.string :descricao
      t.text :cod_barras
      t.integer :valor
      t.boolean :aprovado

      t.timestamps
    end
  end
end
