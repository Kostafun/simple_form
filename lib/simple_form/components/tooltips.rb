module SimpleForm
  module Components
    module Tooltips
      def tooltip(wrapper_options= nil)
        if tooltip_text.present?
          input_html_options['data-position'] ||= 'top'
          input_html_options['data-tooltip'] ||= tooltip_text
          input_html_classes << 'tooltipped'

          nil
        end
      end

      def tooltip_text
        options[:tooltip] || translate_from_namespace(:tooltips) if translate_from_namespace(:tooltips).present?
      end
    end
  end
end