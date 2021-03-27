class CreateDisciplinas < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :carga_horaria
      t.references :docente, null: true, foreign_key: true

      t.timestamps
    end
  end
end
