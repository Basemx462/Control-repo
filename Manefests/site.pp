node default {
    file {'/root/README':
      ensure => file,
      content => 'this is a be5 file',
      owner   =root> 'root',
      }
    file {'/root/README':
      owner   => 'root',
    }
}


      
