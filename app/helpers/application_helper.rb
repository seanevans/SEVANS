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
    image_tag("SEVANS_logo.JPG", :alt => "SEVANS", :class => "round",
    :size => "400x100") 
  end
end
