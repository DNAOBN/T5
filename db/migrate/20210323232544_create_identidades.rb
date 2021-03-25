class CreateIdentidades < ActiveRecord::Migration[6.1]
  def change
    create_table :identidades do |t|
      t.string :grr
      t.string :cpf
      t.references :discente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
