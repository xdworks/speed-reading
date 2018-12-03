# 如何转换 doc

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


textutil -stdout -cat txt SomeFile.doc
