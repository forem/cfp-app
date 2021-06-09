class AddReviewCommitteeFieldsToProposals < ActiveRecord::Migration[6.1]
  def change
    add_column :proposals, :research, :text
    add_column :proposals, :location_and_time_zone, :string
    add_column :proposals, :equipment_requirements, :text
    add_column :proposals, :accessibility_requirements, :text
    add_column :proposals, :video_voice_recording_permission, :boolean
  end
end
