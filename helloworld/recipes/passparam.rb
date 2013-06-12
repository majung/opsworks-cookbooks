ruby_block "just an example" do
  block do
    puts "Hello"
    File.open("/tmp/helloworld.log","w") do |f|
      f.write("Hello World Pass!")
      rn = rand(1000)
      f.write("Random number: #{rn}")
    end
    variables( :random_number => rn )
    node["node_random_number"] = "random #{rn}"
  end
end
