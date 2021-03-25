class CreateJoinTableDiscenteDisciplina < ActiveRecord::Migration[6.1]
  def change
    create_join_table :discentes, :disciplinas do |t|
      # t.index [:discente_id, :disciplina_id]
      # t.index [:disciplina_id, :discente_id]
    end
  end
end
