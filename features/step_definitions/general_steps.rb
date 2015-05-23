Given(/^I start the application$/) do
  @page = start_application
end

And(/^I enter a new code$/) do
  start = Time.now
    30.times do
    Watir::Wait.until { @page.input0_element.visible? }
    @page.input0 = '55950954'
    @page.add_another

    Watir::Wait.until { @page.input1_element.visible? }
    @page.input1 = '55950954'
    @page.add_another

    Watir::Wait.until { @page.input2_element.visible? }
    @page.input2 = '55950954'
    @page.add_another

    Watir::Wait.until { @page.input3_element.visible? }
    @page.input3 = '55950954'
    @page.add_another

  #running on sauce always times out right here...
    Watir::Wait.until { @page.input4_element.visible? }
    @page.input4 = '55950954'
    @page.submit
    @page.clear_cookies
  end
  puts Time.now - start
end
