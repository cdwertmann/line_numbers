# This class hooks into Redmine's View Listeners in order to
# add content to the page
class LineNumbersHooks < Redmine::Hook::ViewListener
  def view_layouts_base_body_bottom(context = { })
    return "<script>
$('.CodeRay').append('<button>Toggle Line Numbers</button>');
$('button').click(function () {
  $('.line-numbers').toggle();
});
</script>"
  end
end
