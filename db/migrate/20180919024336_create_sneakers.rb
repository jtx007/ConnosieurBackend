class CreateSneakers < ActiveRecord::Migration[5.2]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :release_date
      t.string :style_code
      t.string :market_value
      t.string :img_url

      t.timestamps
    end
  end
end
