module SimpleForm
  module Components
    module Icons
      def icon(wrapper_options= nil)
        @icon ||= begin
          icon = options[:icon]

          if icon.is_a?(String)
            html_escape(icon)
          else
            content = translate_from_namespace(:icons)
            content.html_safe if content
          end
        end
      end

      def has_icon?
        options[:icon] != false && icon.present?
      end

    end
  end
end
