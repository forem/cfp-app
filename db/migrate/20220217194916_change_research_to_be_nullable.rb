class ChangeResearchToBeNullable < ActiveRecord::Migration[6.1]
  def change
    change_column_null :proposals, :research, true
  end
end
