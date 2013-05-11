# patch to enable CodeRay line numbering
module Redmine
  module SyntaxHighlighting
    module CodeRay
      class << self
        # Highlights +text+ using +language+ syntax
        # Should not return outer pre tag
        def highlight_by_language(text, language)
          ::CodeRay.scan(text, language).html(:wrap => :span, :line_numbers => :inline)
        end
      end
    end
  end
end
