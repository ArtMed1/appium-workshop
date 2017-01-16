class ScreenIntro < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @base = element(:id, 'content')
    @button_intro_close = element(:id, 'close_intro')
    @intro = element(:id, 'intro_footer_image')
    @image = element(:id, 'page_image')
    @introtexthdr = element(:id, 'intro_text_header')
    @intrtxtftr = element(:id, 'intro_text_footer')
    @driver = driver
  end

  def visible?
    @driver.find_element(@base[:type], @base[:value])
    @driver.find_element(@button_intro_close[:type], @button_intro_close[:value])
    @driver.find_element(@intro[:type], @intro[:value])
    @driver.find_element(@image[:type], @image[:value])
    @driver.find_element(@introtexthdr[:type], @introtexthdr[:value])
    @driver.find_element(@intrtxtftr[:type], @intrtxtftr[:value])
  end
end
