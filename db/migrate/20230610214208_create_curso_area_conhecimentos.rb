class CreateCursoAreaConhecimentos < ActiveRecord::Migration[6.1]
  def change
    create_table :curso_area_conhecimentos do |t|
      t.integer :id_curso
      t.integer :id_area_conhecimento

      t.timestamps
    end
  end
end
