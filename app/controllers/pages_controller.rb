class PagesController < ApplicationController
  def home
     @title = "Home"
  end

  def features
     @title = "Features"
  end

  def advantages
     @title = "advantages"
  end

  def news
     @title = "news"
  end

  def about
     @title = "about"
  end

  def contact
     @title = "contact"
  end

  def try
     @title = "Try"
  end
end
