module Utils
  def open_browser
    @browser = Watir::Browser.start('http://www.childhungerendshere.com/', :chrome)
  end

  def start_application
    EnterCodePage.new @browser
  end
end