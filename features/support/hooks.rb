Before do
  begin
    $global_browser ||= open_browser
    @browser = $global_browser
  rescue StandardError => e
    puts e.message
    puts e.backtrace
    raise e
  end
end

After do
  begin
    # @browser.close
  rescue StandardError => e
    puts e.message
    puts e.backtrace
    raise e
  end
end