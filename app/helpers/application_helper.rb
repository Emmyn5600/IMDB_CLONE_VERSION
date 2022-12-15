module ApplicationHelper
  def flash_class(level)
    case level
    when :notice then 'alert alert-success'
    when :alert then 'alert alert-danger'  
    end
  end

  def render_stars(rating)    
    @rating = rating.to_f    
    content_tag :div, star_images, :class => 'stars'  
  end
  
  private    
  
  def star_images    
    (0...5).map do |position|      
      # star_image(((@ratingposition)*2).round) 
    end.join.html_safe  
  end    
  
  def star_image(value)    
    image_tag "#{star_type(value)}.png", :size => '15x15'  
  end    
  
  def star_type(value)    
    if value <= 0      
      'star-off'    
    elsif value == 1      
      'star-half'    
    else      
      'star-on'    
    end  
  end
  
end
