class CreateDocentes < ActiveRecord::Migration[6.1]
  def change
    create_table :docentes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
