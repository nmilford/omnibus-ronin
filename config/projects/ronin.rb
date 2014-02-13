name            "ronin"
maintainer      "Nathan Milford <nathan@milford.io>"
homepage        "https://github.com/nmilford/ronin"
replaces        "ronin"
install_path    "/opt/ronin"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1
dependency      "preparation"
dependency      "version-manifest"
dependency      "ronin"
exclude         "\.git*"
exclude         "bundler\/git"
