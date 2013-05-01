class CreatePostageStamps < ActiveRecord::Migration
  def change
    create_table :postage_stamps do |t|
      t.decimal :original_price
      t.decimal :appraised_price
      t.text :description
      t.datetime :issue_date
      t.integer :user_id
      
      t.timestamps
    end
  end
end
