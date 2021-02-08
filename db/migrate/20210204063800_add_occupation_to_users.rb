class AddOccupationToUsers < ActiveRecord::Migration[6.0]
  validates :occupation, presence: true
  def change
    add_column :users, :occupation, :text
  end
end
