class CreateNotas < ActiveRecord::Migration[7.1]
  def change
    create_table :notas do |t|
      t.string :cnpj_fornecedor
      t.string :nome_fornecedor
      t.date :data
      t.integer :numero_da_nota
      t.string :serie
      t.string :regime
      t.decimal :valor
      t.text :servicos
      t.decimal :valor_final

      t.timestamps
    end
  end
end
