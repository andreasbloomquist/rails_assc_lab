class CreateBooksUsers < ActiveRecord::Migration
  def change
    create_table :books_users do |t|
      t.integer :book_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
