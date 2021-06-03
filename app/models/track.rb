class Track < ApplicationRecord
  # Referred to as 'Theme' in the UI

  NO_TRACK = 'General'

  belongs_to :event
  has_many :program_sessions
  has_many :proposals

  validates :name, uniqueness: {scope: :event}, presence: true
  validates :description, length: {maximum: 250}

  scope :sort_by_name, -> { order(:name) }

  def self.count_by_track(event)
    event.tracks.joins(:program_sessions).group(:name).count
  end
end

# == Schema Information
#
# Table name: tracks
#
#  id          :bigint(8)        not null, primary key
#  event_id    :bigint(8)
#  name        :string
#  description :string(250)
#  guidelines  :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_tracks_on_event_id  (event_id)
#
