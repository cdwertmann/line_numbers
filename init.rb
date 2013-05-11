require_dependency 'line_numbers_hooks'
require_dependency 'monkey_patch'

Redmine::Plugin.register :line_numbers do
  name 'Line Numbers plugin'
  author 'Christoph Dwertmann'
  description 'Enables line numbers in code blocks and adds toggle button'
  version '1.0.0'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
