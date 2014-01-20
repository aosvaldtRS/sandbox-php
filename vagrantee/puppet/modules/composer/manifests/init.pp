class composer (
) {

  exec { "curl -sS https://getcomposer.org/installer | php":
    cwd     => "/home/vagrant",
    creates => "/home/vagrant/composer.phar",
  }

  exec { "mv composer.phar /usr/bin/composer":
    cwd     => "/home/vagrant",
    creates => "/usr/bin/composer",
    require => Exec ["curl -sS https://getcomposer.org/installer | php"],
  }

}