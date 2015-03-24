class ChangeRuleColumnName < ActiveRecord::Migration
  def change
    add_column :one_dim_rules, :rule_returns_one, :string 
  end
end
