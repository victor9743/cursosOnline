class CreateCursosAlunos < ActiveRecord::Migration[6.1]
  def change
    create_table :cursos_alunos do |t|
      t.integer :id_aluno
      t.integer :id_curso
      t.integer :id_pagamento
      t.boolean :curso_concluido

      t.timestamps
    end
  end
end
