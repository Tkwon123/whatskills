class AddFreeVotesToUser < ActiveRecord::Migration
  def change
    add_column :users, :free_votes, :integer
  end
end
