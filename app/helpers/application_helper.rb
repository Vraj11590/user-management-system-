module ApplicationHelper

  #this is where you write helpers that you can use in other places


  def full_title(page_title = '')
    base_title = "User Management"
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end

  def add_links

  end
end
