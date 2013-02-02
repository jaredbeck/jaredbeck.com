class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :define_links_for_header

  def define_links_for_header
    @links = [
      { text: 'singlebrook', pre: 'works at', url: 'http://www.singlebrook.com' },
      { text: 'github', pre: 'codes on', url: 'https://github.com/jaredbeck'},
      { text: 'stackoverflow', pre: 'thanks heaven for', url: 'http://stackoverflow.com/users/567762/jared-beck'},
      { text: 'facebook', pre: 'still not sure about', url: 'https://www.facebook.com/jaredowenbeck' }
    ]
  end
end
