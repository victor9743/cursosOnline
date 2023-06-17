class CreateCursoPagamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :curso_pagamentos do |t|
      t.string :descricao
      t.string :cod_barras
      t.integer :valor
      t.integer :aprovado

      t.timestamps
    end
  end
end
