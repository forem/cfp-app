module ProposalHelper
  def rating_tooltip
      <<-HTML
      <p><strong>Ratings Guide</strong></p>
     <p> 1 - Poor talk with many issues. Not a fit for the event.</p>
     <p> 2 - Mediocre talk that might fit event if they work on it.</p>
     <p> 3 - Good talk, could use improvement but appropriate for the event.</p>
     <p> 4 - Great talk, on topic and an overall fit for the event.</p>
     <p> 5 - Ideal talk, excellent proposal that is a perfect fit for the event.</p>
      HTML
  end

  def session_format_tooltip
    content_tag(:div) do
      concat(content_tag(:p) do
        content_tag(:strong, "Session Format Guide")
      end)
      event.session_formats.publicly_viewable.each do |format|
        concat(content_tag(:p, "#{format.name} - #{format.description}"))
      end
    end
  end

  def track_tooltip
    content_tag(:div) do
      concat(content_tag(:p) do
        content_tag(:strong, "Session Theme Guide")
      end)
      event.tracks.each do |track|
        concat(content_tag(:p, "#{track.name} - #{track.description}"))
      end
    end
  end

  def abstract_tooltip
    "This is the place to outline the specifics of your talk: what topics will you cover, if you\'ll have any special elements (i.e., code samples, video samples, etc.), what you\'d like the audience to take away from your talk, and how you\'d like them to feel afterwards."
  end

  def details_tooltip
    "What problem is your talk solving?"
  end

  def pitch_tooltip
    "Explain why this talk should be considered and what makes you qualified to speak on the topic."
  end

  def bio_tooltip
    "Your bio should be short, no longer than 500 characters. It's related to why you're speaking about this topic."
  end

  def notes_tooltip
    "Please note any scheduling conflicts, or any additional information an organizer may need to schedule your talk."
  end
  
  def theme_with_suggestion(proposal)
      capture do
        concat proposal.track_name
        if !proposal&.track_id&.nil? && proposal&.suggested_theme
          concat ' - '
          concat proposal.suggested_theme
        end
      end
  end
end
