require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_menu_names
    @menu.search('name')
  end

  def get_menu_price
    @menu.search('price')
  end

  def get_menu_description
    @menu.search('description')
  end

  def get_menu_calories
    @menu.search('calories')
  end
end

x = GuiseppesMenu.new
# puts x.get_menu_names.last
# puts x.get_menu_names[2]
# puts x.get_menu_names.count
# puts x.get_menu_names.last.text
# puts x.get_menu_names[2].text

# puts x.xpath_get_names
puts x.get_menu_calories.text


#searchable
#The Searchable module declares the interface used for searching your DOM. could search elements withing tags of xml.

#node
#Nokogiri::XML::Node is your window to the fun filled world of dealing with XML and HTML tags. A Nokogiri::XML::Node may be treated similarly to a hash with regard to attributes. For example (from irb):
#can treat as a hash
