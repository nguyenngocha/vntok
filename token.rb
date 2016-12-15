Dir.entries("data-w2v").each do |dir|
  unless File.directory? dir
    # stack token
    total = 0
    Dir.entries("data-w2v").each do |dir|
      unless File.directory? dir
        total += 1
      end
    end
    puts "stack tokenizing number #{total}"
    puts "stack tokenizing #{dir}"
    system "./vnTokenizer.sh -i data-w2v/#{dir} -o data-tok/#{dir}"
    puts "tokenized successfully #{dir}"
    system "rm data-w2v/#{dir}"
    puts "\n"
  end
end
