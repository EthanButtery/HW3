class CreateEthans < ActiveRecord::Migration[5.2]
  def change
    create_table :ethans do |t|
      t.string :login

      t.timestamps
    end
  end
end
