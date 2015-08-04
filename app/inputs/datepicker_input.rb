class DatePicker < SimpleForm::Inputs::DatepickerInput < SimpleForm::Inputs::StringInput
  def input
    input_html_options[:type] = "date"
    super
  end
end
#
# app/inputs/date_time_input.rb
# class DateTimeInput < SimpleForm::Inputs::DateTimeInput
#   def input(wrapper_options)
#     template.content_tag(:div, super)
#   end
# end