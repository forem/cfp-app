class AddProposalTalkType < ActiveRecord::Migration[6.1]
  def change
    add_column :proposals, :talk_type, :string
  end
end
