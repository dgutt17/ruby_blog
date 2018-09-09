class RenameColumnAuthorIDinTablePost < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :author_id, :admin_user_id
  end
end
