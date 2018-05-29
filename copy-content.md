# 快速把 txt 拷貝到文件裡面

此法適合將 001.txt 的內容拷貝到已有標題的 001.md。並斷行，去掉空白。

* 執行 `ruby copy_content.rb > SUMMARY.md`

``` rb
file_names = []

for i in 1..9
  file_names << "00#{i}"
end

for i in 10..99
  file_names << "0#{i}"
end
for i in 101..246
  file_names << "#{i}"
end



file_names.each do |file_name|
  begin
  file_name_md = "#{file_name}.md"
  file_name_txt = "txt/#{file_name}.txt"
  text = File.read(file_name_txt)

  # new_contents = text

  new_contents = text.gsub("。", "。\n\n")
  new_contents = new_contents.gsub("！", "。\n\n")
  new_contents = new_contents.gsub("\u2028", "")


  puts new_contents

  # To write changes to the file, use:
  File.open(file_name_md, "a") {|file| file.puts new_contents }
  end
end

```
