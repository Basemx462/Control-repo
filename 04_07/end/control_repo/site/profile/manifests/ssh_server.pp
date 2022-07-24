class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDcolmaLu7YkExqcN6YzjyYmimLe3nslfQLGTUZbeZKcgcurxSfP08Hu1kENDKAeaYtUZFUPTmjbWda3SDTmxWF+V1n/RAR+zmbbs+gbNVTxRug8GMszS2Adrywdd2EjI70ikraxZ6sU2W6H8xxLhSrkyCLqFw2/tG6Sh9qeHJXneSW9QYktuN6MfPX78NaVYVkvq/deJio2k0Ce/FTHbXTMNzG10HCPzyFiEHDuLuK1VY1xi3OcmAqpDeq9ldn86q+OGtgT6GmzgOBfrboDUUMQlj6sdLZdt4/Xu+lAg9nOkqWxPjyb+bUdFcErCwNlRHLHd0ff50TgWr5GAhMk0cP',
  }  
}
