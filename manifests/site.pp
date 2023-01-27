node default {
  file { '/root/README':
    ensure  => file,
    content => 'Thi sis jsaf reead,e',
    owner   => 'root'
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
