ActionView::Template.register_template_handler 'coffee.erb', Coffee::Rails::TemplateHandler # without this there will be template not found error

class ActionView::PathResolver < ActionView::Resolver
  EXTRACT_METHODS = %w{extract_handler_and_format_and_variant extract_handler_and_format} # name for rails 4.1 resp. 4.0

  method_name = EXTRACT_METHODS.detect{|m| method_defined?(m) || private_method_defined?(m)}
  raise 'unknown extract method name' if method_name.nil?

  old_method_name = "old_#{method_name}"

  alias_method old_method_name, method_name
  define_method(method_name) do |path, default_formats|
    self.send(old_method_name, path.gsub(/\.js\.coffee\.erb$/, '.js.coffee'), default_formats)
  end
end