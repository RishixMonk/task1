class AddUserIdToFrs < ActiveRecord::Migration[7.0]
  def change
    add_column :frs, :user_id, :string
  end
end
