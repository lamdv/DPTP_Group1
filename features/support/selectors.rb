# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module HtmlSelectorsHelpers
  
  def selector_for(locator)
    case locator

    when "the page"
      "html > body"

    when /^"(.+)"$/
      $1

    else
      raise "Cannot find mapping from \"#{locator}\" to a selector.\n" +
        "Go and add a mapping in #{__FILE__}"
    end
  end
end

World(HtmlSelectorsHelpers)