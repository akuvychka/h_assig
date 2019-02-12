class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :phone_number
      t.text :bio
      t.references :currencies, foreing_key: true
      t.string :insta_url
      t.string :facebook_url
      t.string :web_site_url
    end
  end
end
