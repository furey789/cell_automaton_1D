class AddSeedColumnOneDimRules < ActiveRecord::Migration
  def change
    add_column :one_dim_rules, :seed_number, :integer, {default: 0}
    add_column :one_dim_rules, :seed_state, :string, {default: "fixed"}
  end
end
