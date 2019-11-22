class CreateIdtables < ActiveRecord::Migration[6.0]
  def change
    create_table :idtables do |t|
      t.string :idtype
      t.integer :minbal

      t.timestamps
    end
  end
end
