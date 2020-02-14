class AddImageToCurtains < ActiveRecord::Migration[6.0]
  def change
    add_column :curtains, :image, :string
  end
end
