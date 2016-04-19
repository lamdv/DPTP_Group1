# Maps a name to a path. Used by the
#   When /^I go to (.+)$/ do |page_name|
# step definition in tweet_steps.rb

module NavigationHelpers
    
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    
    when /^the sign_up\s?page$/
      '/users/sign_up'

    when /^the sign_in\s?page$/
      '/users/sign_in'
      
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Cannot find mapping from \"#{page_name}\" to a path.\n" +
          "Go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)