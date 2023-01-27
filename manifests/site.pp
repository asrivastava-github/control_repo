node default {
  file { '/root/README':
    ensure  => file,
    content => 'Thi sis jsaf reead,e',
    owner   => 'root'
  }
}
node 'ip-172-17-0-21.us-east-1.compute.internal' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
