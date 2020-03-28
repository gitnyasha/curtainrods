class AddImageToBlinds < ActiveRecord::Migration[6.0]
  def change
    add_column :blinds, :image, :string
  end
end
