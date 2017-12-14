require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_menu_names
    @menu.search('name')
  end

  def get_menu_prices_as_floats
    menu_prices = []
    @menu.xpath('//price').each do |price|
      menu_prices << price.text.gsub('£', '').to_f
    end
    menu_prices
  end

  def get_all_food_items
    @menu.search('food')
  end

end


x = GuiseppesMenu.new
  # Place your methods here
# puts x.get_all_food_items.element_children
p x.get_all_food_items
