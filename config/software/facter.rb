name       "facter"
version    "1.7.5"
dependency "ruby"
dependency "rubygems"

build do
  gem "install facter -n #{install_dir}/embedded/bin --no-rdoc --no-ri -v #{version}"
end
