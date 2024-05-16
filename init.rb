require File.dirname(__FILE__) + '/lib/line_numbers_hooks.rb'
require File.dirname(__FILE__) + '/lib/monkey_patch.rb'

Redmine::Plugin.register :line_numbers do
  name 'Line Numbers plugin'
  author 'Christoph Dwertmann'
  description 'Enables line numbers in code blocks and adds toggle button'
  version '1.0.0'
  url 'https://github.com/cdwertmann/line_numbers'
  author_url 'https://github.com/cdwertmann'
  settings({
     :partial => 'line_numbers/settings',
     :default => {
      'show_line_numbers' => "true",
      'show_line_numbers_toggle' => "true"
      }
  })
end
