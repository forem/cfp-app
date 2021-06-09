class AddReviewCommitteeFieldsToProposals < ActiveRecord::Migration[6.1]
  def change
    add_column :proposals, :research, :text, null: false
    add_column :proposals, :location_and_time_zone, :string, null: false
    add_column :proposals, :equipment_requirements, :text, null: false
    add_column :proposals, :accessibility_requirements, :text, null: false
    add_column :proposals, :video_voice_recording_permission, :boolean, null: false, default: false
  end
end
