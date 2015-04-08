class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :fullname
      t.string :email
      t.string :image	

      t.timestamps null: false
    end
  end
end
