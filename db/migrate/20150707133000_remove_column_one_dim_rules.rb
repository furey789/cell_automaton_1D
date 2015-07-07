class RemoveColumnOneDimRules < ActiveRecord::Migration
  def change
    remove_column :one_dim_rules, :returns_one
    remove_column :one_dim_rules, :behavior
  end
end
