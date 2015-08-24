class AddWrapAround < ActiveRecord::Migration
  def change
    add_column :one_dim_rules, :wrap_around, :boolean, {default: true}
  end
end
