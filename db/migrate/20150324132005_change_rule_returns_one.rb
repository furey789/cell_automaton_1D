class ChangeRuleReturnsOne < ActiveRecord::Migration
  def change
    remove_column :one_dim_rules, :rule_returns_one
    add_column :one_dim_rules, :returns_one, :string
  end
end
