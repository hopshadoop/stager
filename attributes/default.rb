default["hopsworks"]["version"]                  = "0.1.1"
default["hopsworks"]["url"]                      = "http://snurran.sics.se/hops"
default["hopsworks"]["secondary_url"]            = "http://snurran.sics.se/hops"
default["stager"]["user"]                        = node["install"]["user"].empty? ? "anastager" : node["install"]["user"]
default["stager"]["group"]                       = node["install"]["user"].empty? ? "anastager" : node["install"]["user"]

default["stager"]["dir"]                         = "/srv/hops"

default["stager"]["home"]                        = "#{node["stager"]["dir"]}/stager-#{node["hopsworks"]["version"]}"
default["stager"]["base_dir"]                    = "#{node["stager"]["dir"]}/stager"
default["stager"]["port"]                        = "58216"
