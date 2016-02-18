class people::jeremyfuksa {
  include iterm2::stable
  include dropbox
  include mysql
  include onepassword
  include virtualbox
  include vagrant
  include chrome
  include heroku
  include arduino
  include skype
  include tower
  include omnigraffle
  include spotify
  include slack
  include lingon
  include bartender
  include transmit
  include transmission
  include things
  include sequel_pro
  include postbox
  include handbrake
  include caffeine
  include harvest
  include googledrive
  include imageoptim
  include adobe_creative_cloud

  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::tap_to_click
  include osx::dock::2d
  include osx::dock::autohide
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library
  include osx::finder::show_all_filename_extensions
  include osx::disable_app_quarantine
  include osx::dock::hot_corner { 'Bottom Left':
    action => 'Screen Saver'
  }

  $version = "5.6"
  class { 'php::global':
    version => $version
  }
  php::extension::igbinary{"igbinary For PHP ${version}":
    version => $version
  }
  php::extension::mcrypt{"mcrypt For PHP ${version}":
    version => $version
  }
  php::extension::memcached{"memcached For PHP ${version}":
    version => $version
  }

  include php::composer

  include homebrew
  package {"jpeg":
    ensure => installed,
  }

  package {"lame":
    ensure => installed,
  }

  package {"libmemcached":
    ensure => installed,
  }

  package {"mcrypt":
    ensure => installed,
  }

  package {"memcached":
    ensure => installed,
  }

  package {"pandoc":
    ensure => installed,
  }

  package {"phpmyadmin":
    ensure => installed,
  }

  package {"zsh":
    ensure => installed,
  }

  include atom
  atom::package { 'angularjs': }
  atom::package { 'atom-beautify': }
  atom::package { 'autocomplete-paths': }
  atom::package { 'dash': }
  atom::package { 'language-expressionengine': }
  atom::package { 'language-nunjucks': }
  atom::package { 'language-puppet': }
  atom::package { 'pigments': }
  atom::package { 'terminal-plus': }
  atom::package { 'craft-twig': }
  atom::theme { 'base-16-ocean-dark-spacegray': }
  atom::theme { 'spacegray-dark-ui': }

  package { 'alfred': provider => 'brewcask' }
  package { 'firefox': provider => 'brewcask'}
  package { 'kaleidoscope': provider => 'brewcask'}
  package { 'kid3': provider => 'brewcask'}
  package { 'textexpander': provider => 'brewcask'}
  package { 'virtualhostx': provider => 'brewcask'}
  package { 'a-better-finder-rename': provider => 'brewcask'}
  package { 'audio-hijack': provider => 'brewcask'}
  package { 'flux': provider => 'brewcask'}
  package { 'hostbuddy': provider => 'brewcask'}
  package { 'imagealpha': provider => 'brewcask'}
  package { 'ishowu-hd': provider => 'brewcask'}
  package { 'omnioutliner': provider => 'brewcask'}
  package { 'pingendo': provider => 'brewcask'}
  package { 'sketch': provider => 'brewcask'}
  package { 'sketch-toolbox': provider => 'brewcask'}
  package { 'the-unarchiver': provider => 'brewcask'}
  package { 'unrarx': provider => 'brewcask'}
  package { 'zoomus': provider => 'brewcask'}

  package { 'MSOffice2016':
    ensure => installed,
    source => 'http://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_2016_Installer.pkg',
    provider => pkgdmg,
  }

  exec {"Oh My zsh":
    command => "sh -c '$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"
  }
}
