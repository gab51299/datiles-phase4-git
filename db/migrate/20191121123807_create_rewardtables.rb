class CreateRewardtables < ActiveRecord::Migration[6.0]
  def change
    create_table :rewardtables do |t|
      t.string :rewardtype
      t.integer :pts

      t.timestamps
    end
  end
end
