Given(/^I start the application$/) do
  @page = start_application
end

And(/^I enter a new code$/) do
  start = Time.now
  20.times do
    reload = true
    5.times do

      begin
        Watir::Wait.until { @page.input? }
      rescue Exception
        @page.clear_cookies
      end

      @page.input = 55950954
      @page.submit

      if reload
        @page.reload
        reload = false
      end
    end
    @page.clear_cookies
  end
  puts Time.now - start
end
