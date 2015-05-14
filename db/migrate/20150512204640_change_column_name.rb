class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :skills, :skill, :name
  end
end
