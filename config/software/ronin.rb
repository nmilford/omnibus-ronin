name       "ronin"
version    "0.1.3"
dependency "gdbm"
dependency "db"
dependency "ruby"
dependency "rubygems"
dependency "chef-gem"
build do
  gem "install ronin-wrapper -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  command "rm -rf /opt/#{name}/embedded/docs"
  command "rm -rf /opt/#{name}/embedded/share/man"
  command "rm -rf /opt/#{name}/embedded/share/doc"
  command "rm -rf /opt/#{name}/embedded/ssl/man"
  command "rm -rf /opt/#{name}/embedded/info"
  command "rm -rf /opt/#{name}/embedded/lib/ruby/gems/1.9.1/doc/"

  command "mkdir -p /opt/#{name}/embedded/share/ronin/"
  command "wget --no-check-certificate https://raw.github.com/nmilford/ronin/master/conf/ronin.rb.sample -O /opt/#{name}/embedded/share/ronin/ronin.rb"
  command "wget --no-check-certificate https://raw.github.com/nmilford/ronin/master/conf/artifacts.yaml.sample -O /opt/#{name}/embedded/share/ronin/artifacts.yaml"
end

