class CreateAreaConhecimentos < ActiveRecord::Migration[6.1]
  def change
    create_table :area_conhecimentos do |t|
      t.string :descricao
      t.boolean :ativo

      t.timestamps
    end
  end
end
