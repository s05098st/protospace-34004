class AddNameToUsers < ActiveRecord::Migration[6.0]
  validates :name, presence: true
  def change
    add_column :users, :name, :string
  end
end
