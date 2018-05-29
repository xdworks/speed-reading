# 快速產生給 Gitbook 用的列表

## Step 1 複製列表

把章節貼到 `ccc.md`

```
第三章
第二章
第一章
```

* 執行 `ruby convert_summary > SUMMARY.md`

```
line_num=0
lines = []
File.open('ccc.md').each do |line|
  lines << line
end

lines.reverse!
lines.each do |line|
  line.gsub!("\n","")
  if line_num < 9
    print "* [#{line}](00#{line_num += 1}.md)\n"
  elsif line_num < 99
    print "* [#{line}](0#{line_num += 1}.md)\n"
  else
    print "* [#{line}](#{line_num += 1}.md)\n"
  end
end
```

然後 SUMMARY.md 就會產生

```
* [第一章](001.md)
* [第二章](002.md)
* [第三章](003.md)
```
