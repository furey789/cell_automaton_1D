class CreateOnedimRules < ActiveRecord::Migration
  def change
    create_table :one_dim_rules do |t|
      t.string :rule_name
      t.string :rule
      t.string :behavior
    end
  end
end
