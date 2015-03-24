class RemoveRuleColumn < ActiveRecord::Migration
  def change
    remove_column :one_dim_rules, :rule
  end
end
