class AddTextToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :text, :string
  end
end
