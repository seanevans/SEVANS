module ApplicationHelper
  # Return a title on a per-page basis. 
  def title 
    base_title = "Sean Evans" 
    if @title.nil? 
      base_title 
    else 
      "#{base_title} | #{@title}" 
    end 
  end
  
  def logo 
    image_tag("SEVANS_logo.png", :alt => "SEVANS", :class => "round") 
  end
end
