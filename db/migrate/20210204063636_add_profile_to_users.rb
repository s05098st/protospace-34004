class AddProfileToUsers < ActiveRecord::Migration[6.0]
  validates :profile, presence: true
  def change
    add_column :users, :profile, :text
  end
end
