require_relative 'report'
require_relative 'html_formatter'
require_relative 'plain_text_formatter'

puts 'HTML Report'
report = Report.new(HTMLFormatter.new)
report.output_report

puts ''

puts 'Plain Text Report'
report.formatter = PlainTextFormatter.new
report.output_report
