require_dependency 'line_numbers_hooks'
require_dependency 'monkey_patch'

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
