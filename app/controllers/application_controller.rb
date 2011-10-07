class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :define_links_for_header
  
  def define_links_for_header
    @links = []
    @links << link_hash('github', 'http://github.com/jaredbeck')
    @links << link_hash('singlebrook', 'http://www.singlebrook.com')
    @links << link_hash('facebook', 'http://www.facebook.com/jaredowenbeck')
  end

private

  def link_hash(t,u)
    { :text => t, :url => u }
  end

end
