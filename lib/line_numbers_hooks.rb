# This class hooks into Redmine's View Listeners in order to
# add content to the page
class LineNumbersHooks < Redmine::Hook::ViewListener
  def view_layouts_base_body_bottom(context = { })
    hide_line_numbers = "$('.line-numbers').hide();"
    hide_line_numbers = "" if Setting.plugin_line_numbers['show_line_numbers'] == "true"
    toggle = "$('.CodeRay').append('<button class=line-toggle>Toggle Line Numbers</button>'); $('.line-toggle').click(function () { $('.line-numbers').toggle(); });"
    toggle = "" if Setting.plugin_line_numbers['show_line_numbers_toggle'] != "true"
    return "<script>
#{toggle}
#{hide_line_numbers}
</script>"
  end
end
