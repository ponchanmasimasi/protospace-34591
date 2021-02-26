class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment, null: false 
      t.references :user, :prototype,foreign_key: true
      belong_to user
      berong_to prototype
       
      t.timestamps
    end
  end
end
