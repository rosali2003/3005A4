class RemoveCreatedAt < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :created_at, :datetime
    remove_column :students, :updated_at, :datetime
  end
end
