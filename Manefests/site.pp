node localhost.localdomain {
  file { '/root/README1':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
      


      
