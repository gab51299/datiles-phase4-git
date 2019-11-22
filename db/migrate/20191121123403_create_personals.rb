class CreatePersonals < ActiveRecord::Migration[6.0]
  def change
    create_table :personals do |t|
      t.string :email
      t.string :tel
      t.string :mobile
      t.string :idtype
      t.string :rewardtype

      t.timestamps
    end
  end
end
