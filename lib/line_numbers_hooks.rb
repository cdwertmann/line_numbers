# This class hooks into Redmine's View Listeners in order to
# add content to the page
class LineNumbersHooks < Redmine::Hook::ViewListener
  def view_layouts_base_body_bottom(context = { })
    return "<script>
$('.CodeRay').append('<button class=line-toggle>Toggle Line Numbers</button>');
$('.line-toggle').click(function () {
  $('.line-numbers').toggle();
});
</script>"
  end
end
