require 'mechanize'

links = []
agent = Mechanize.new
current_page = agent.get("http://eiga.com/now/")
include_link = current_page.search('.m_unit h3 a')
include_link.each do |inc|
	link = "http://eiga.com" + inc.get_attribute('href')
	links << link
end

#puts links


urls = []
links.each do |lin|
	agent = Mechanize.new
	detail_page = agent.get(lin)
	url_html = detail_page.at('.pictBox a img')
	url = url_html.get_attribute('src')
	urls << url
end

puts urls
