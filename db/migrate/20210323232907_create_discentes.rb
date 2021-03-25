class CreateDiscentes < ActiveRecord::Migration[6.1]
  def change
    create_table :discentes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
