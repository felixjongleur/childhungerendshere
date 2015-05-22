class EnterCodePage
  include PageObject

  text_field(:input, :type => 'tel')
  button(:submit, :type => 'submit')

  # 55950954

  def reload
    @browser.goto('http://www.childhungerendshere.com/')
  end

  def clear_cookies
    reload
    @browser.cookies.clear
    reload
  end
end