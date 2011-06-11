module UsersHelper
  
  # Return a title on a per-page basis. 
  def title 
    base_title = "Sign Up" 
    if @title.nil? 
      base_title 
    else 
      "#{@title}" 
    end 
  end

  def gravatar_for(user, options = { :size => 50 }) 
    gravatar_image_tag(user.email.downcase, :alt => user.name, 
      :class => 'gravatar', 
      :gravatar => options) 
  end
  
end
