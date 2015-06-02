class AddDefaultValueToUsers < ActiveRecord::Migration
	def up
	  change_column :users, :free_votes, :integer, :default => 3
	end

	def down
	  change_column :users, :free_votes, :integer, :default => nil
	end
end
