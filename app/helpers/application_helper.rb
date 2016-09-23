module ApplicationHelper

  #this is where you write helpers that you can use in other places


  def full_title(page_title = '')
    base_title = "Oh yeah!"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def add_links
    
  end
end
