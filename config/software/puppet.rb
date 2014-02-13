name       "puppet"
version    "3.4.2"
dependency "ruby"
dependency "rubygems"
dependency "facter"

build do
  gem "install puppet -n #{install_dir}/embedded/bin --no-rdoc --no-ri -v #{version}"
end
