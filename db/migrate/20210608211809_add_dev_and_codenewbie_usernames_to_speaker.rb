class AddDevAndCodenewbieUsernamesToSpeaker < ActiveRecord::Migration[6.1]
  def change
    add_column :speakers, :dev_username, :string
    add_column :speakers, :codenewbie_username, :string
  end
end
