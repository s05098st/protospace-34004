class AddPositionToUsers < ActiveRecord::Migration[6.0]
  validates :position, presence: true
  def change
    add_column :users, :position, :text
  end
end
