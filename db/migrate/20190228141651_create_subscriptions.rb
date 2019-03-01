class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :magazine_id
      t.integer :subscriber_id
      t.integer :months

      t.timestamps
    end
  end
end
