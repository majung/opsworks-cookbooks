ruby_block "just an example" do
  block do
    puts "Hello"
    File.open("/tmp/helloworld.log","w") do |f|
      f.write("Hello World!")
      f.write(node.inspect)
    end
  end
end
