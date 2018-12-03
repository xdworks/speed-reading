require 'active_support'
require 'active_support/core_ext'

old_filename = ARGV[0].to_s
new_filename = Time.now.to_i


system "ebook-convert '#{old_filename}' '#{new_filename}.docx'"
system "pandoc --extract-media . -f docx '#{new_filename}.docx' -o '#{new_filename}.md'"
system "tx_translate md #{new_filename}.md"
