class AddDefaultZeroToKarma < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:posts, :karma, true)
    change_column_null(:comments, :karma, true)
    change_column_default(:posts, :karma, from: nil, to: 0)
    change_column_default(:comments, :karma, from: nil, to: 0)
  end
end
