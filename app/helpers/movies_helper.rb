module MoviesHelper
  def format_total_gross(movie)
    if movie.flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.total_gross)
    end
  end
  
  def image_for (event)
    if event.image_file_name.blank?
      image_tag 'placeholder.png'
    else
      image_tag event.image_file_name
    end
  end
end
