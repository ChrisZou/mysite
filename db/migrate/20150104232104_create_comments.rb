class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :post, index: true
      t.string :username
      t.string :email
      t.string :site

      t.timestamps
    end
  end
end
