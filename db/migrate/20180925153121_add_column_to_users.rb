class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatarUrl, :string
    add_column :users, :bio, :text
  end
end
