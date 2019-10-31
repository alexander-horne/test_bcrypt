class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
