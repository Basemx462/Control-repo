node default { 
    file {'/root/README':
      ensure => file,
      }
    } 
node 'master.puppet.vm' {
  package { 'httpd':
    ensure => "installed",
  }
      
      
