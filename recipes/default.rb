# 1. Go to hopsworks-chef/Berksfile and get all the github urls / branches
# 2. Given all the cookbook names, expect that they have a cb.url attribute, and in a for loop,
#    call remote_file for each one

url = "https://github.com/hopshadoop/hopsworks-chef/tree/v#{node['hopsworks']['version']}/Berksfile"

directory node["stager"]["dir"]  do
  owner "root"
  group "root"
  mode "755"
  action :create
end

directory node["stager"]["home"] do
  owner node["stager"]["user"]
  group node["stager"]["group"]
  mode "755"
  action :create
end

link node['stager']['base_dir'] do
  owner node['stager']['user']
  group node['stager']['group']
  to node['stager']['home']
end





require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end


berksTxt = open(url)

# "1-3 dot-separated components, each numeric except that the last one may be *"
# ^(\d+\.)?(\d+\.)?(\*|\d+)$
pos = berksTxt.index("hopshadoop/hops-hadoop-chef\", branch: \"")
berksTxt[/hopshadoop/hops-hadoop-chef\", branch: \"(\d+\.)?(\d+\.)?(\*|\d+)/x]



# cookbook 'conda', github: "hopshadoop/conda-chef", branch: "master"
# cookbook 'kagent', github: "hopshadoop/kagent-chef", branch: "master"
# cookbook 'hops', github: "hopshadoop/hops-hadoop-chef", branch: "master"
# cookbook 'ndb', github: "hopshadoop/ndb-chef", branch: "master"
# cookbook 'hadoop_spark', github: "hopshadoop/spark-chef", branch: "master"
# cookbook 'flink', github: "hopshadoop/flink-chef", branch: "master"
# cookbook 'zeppelin', github: "hopshadoop/zeppelin-chef", branch: "master"
# cookbook 'livy', github: "hopshadoop/livy-chef", branch: "master"
# cookbook 'drelephant', github: "hopshadoop/dr-elephant-chef", branch: "master"
# cookbook 'tensorflow', github: "hopshadoop/tensorflow-chef", branch: "master"
# cookbook 'epipe', github: "hopshadoop/epipe-chef", branch: "master"
# cookbook 'adam', github: "biobankcloud/adam-chef", branch: "master"
# cookbook 'dela', github: "hopshadoop/dela-chef", branch: "master"

# cookbook 'kzookeeper', github: "hopshadoop/kzookeeper", branch: "master"
# cookbook 'kkafka', github: "hopshadoop/kafka-cookbook", branch: "master"
# cookbook 'elastic', github: "hopshadoop/elasticsearch-chef", branch: "master"

# cookbook 'hopslog', github: "hopshadoop/hopslog-chef", branch: "master"
# cookbook 'hopsmonitor', github: "hopshadoop/hopsmonitor-chef", branch: "master"



#cookbooks = %w{ ndb hops kzookeeper kkafka elastic hadoop_spark flink conda kagent livy zeppelin drelephant tensorflow }



# hopsmonitor - influxdb, grafana


# hopslog - logstash, kibana, filebeat, 
