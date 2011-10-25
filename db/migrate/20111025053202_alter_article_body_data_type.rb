class AlterArticleBodyDataType < ActiveRecord::Migration
  def up
    change_column :articles, :body, :text
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
