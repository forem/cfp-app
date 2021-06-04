class AddSuggestedThemeToProposals < ActiveRecord::Migration[6.1]
  def change
    add_column :proposals, :suggested_theme, :string
  end
end
