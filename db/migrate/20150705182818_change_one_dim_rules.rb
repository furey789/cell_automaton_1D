class ChangeOneDimRules < ActiveRecord::Migration
  def change
    add_column :one_dim_rules, :t000, :integer, {default: 0}
    add_column :one_dim_rules, :t010, :integer, {default: 0}
    add_column :one_dim_rules, :t001, :integer, {default: 0}
    add_column :one_dim_rules, :t011, :integer, {default: 0}
    add_column :one_dim_rules, :t100, :integer, {default: 0}
    add_column :one_dim_rules, :t110, :integer, {default: 0}
    add_column :one_dim_rules, :t101, :integer, {default: 0}
    add_column :one_dim_rules, :t111, :integer, {default: 0}
  end
end
