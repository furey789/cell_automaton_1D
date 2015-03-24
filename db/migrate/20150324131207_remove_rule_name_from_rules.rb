class RemoveRuleNameFromRules < ActiveRecord::Migration
  def change
    remove_column :one_dim_rules, :rule_name
    add_column :one_dim_rules, :name, :string
  end
end
