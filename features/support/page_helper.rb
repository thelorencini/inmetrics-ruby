Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
  def page_home
      @_set ||= HomePage.new
  end
end