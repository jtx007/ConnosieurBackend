class CreateSneakerUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :sneaker_users do |t|
        t.integer :user_id
        t.integer :sneaker_id
      t.timestamps
    end
  end
end
