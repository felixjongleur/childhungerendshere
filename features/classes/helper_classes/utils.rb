module Utils
  def open_browser
    @browser = Watir::Browser.start('http://www.childhungerendshere.com/', :chrome)
    
    #comment out the line above and uncomment below to run on saucelabs
    # username = 'moejello'
    # access_key = '9150097b-deef-417d-9e9f-fff2b546d980'
    #
    # caps = {:name => 'Testing in the Sauce Cloud', :platform => 'WINDOWS 7', :version => '33', :browserName => 'firefox'}
    #
    # @browser = Watir::Browser.new(:remote,
    #                               :url => "http://#{username}:#{access_key}@ondemand.saucelabs.com:80/wd/hub",
    #                               :desired_capabilities => caps)
    # @browser.goto('http://www.childhungerendshere.com/')
    # @browser
  end

  def start_application
    EnterCodePage.new @browser
  end
end
