class CreateFrs < ActiveRecord::Migration[7.0]
  def change
    create_table :frs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :insta_id

      t.timestamps
    end
  end
end
