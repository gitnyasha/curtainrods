class AddUserToBlinds < ActiveRecord::Migration[6.0]
  def change
    add_column :blinds, :user_id, :interger
  end
end
