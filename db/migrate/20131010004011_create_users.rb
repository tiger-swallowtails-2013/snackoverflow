class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |g|
      g.string :email
      g.string :fb_username
      g.timestamps
    end
  end
end
