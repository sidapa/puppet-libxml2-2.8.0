class libxml2 {
  include homebrew
  include libxml::config


  # 'little-cms2':
  #   source => 'puppet:///modules/imagemagick/brews/little-cms2.rb',
  #   before => Package['boxen/brews/little-cms2'] ;

  homebrew::formula {
    'libxml2':
      before => Package['boxen/brews/libxml2'] ;
  }

  package {
    'boxen/brews/libxml2':
      ensure  => $imagemagick::config::version ;
  }
}
