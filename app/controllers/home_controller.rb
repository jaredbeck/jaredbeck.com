class HomeController < ApplicationController

  def index
    @links = []
    @links << 'http://www.facebook.com/jaredowenbeck'
    @links << 'http://github.com/jaredbeck'
    @links << 'http://www.singlebrook.com'
  end

end
