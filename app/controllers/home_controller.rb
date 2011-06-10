class HomeController < ApplicationController

  def index
    @links = []
    @links << link_hash('facebook', 'http://www.facebook.com/jaredowenbeck')
    @links << link_hash('github', 'http://github.com/jaredbeck')
    @links << link_hash('singlebrook', 'http://www.singlebrook.com')
  end

private

  def link_hash(t,u)
    { :text => t, :url => u }
  end

end
