
content = File.readlines 'Berksfile'
File.foreach( 'Berksfile' ) do |line|
  idx = line[/hopshadoop\/hops-hadoop-chef.*branch.*v(?<version>(\d+\.)?(\d+\.)?(\*|\d+))/, 1]
  if idx.nil? == false
    puts idx 
  end
end


# Check available disk space
# Check amount of memory
# Check number of CPUs


# use kagent_param to return a result of the checks to the karamel client.
