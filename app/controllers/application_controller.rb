class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :define_links_for_header

  def define_links_for_header
    @links = [
      { text: 'singlebrook', url: 'http://www.singlebrook.com' },
      { text: 'github', url: 'https://github.com/jaredbeck'},
      { text: 'stackoverflow', url: 'http://stackoverflow.com/users/567762/jared-beck'},
      { text: 'facebook', url: 'https://www.facebook.com/jaredowenbeck' },
      { text: 'twitter', url: 'https://twitter.com/jaredowenbeck' },
      { text: 'medium', url: 'https://medium.com/@jaredowenbeck' },
      { text: 'blogspot', url: 'http://building-a-canoe.blogspot.com' }
    ]
  end
end
