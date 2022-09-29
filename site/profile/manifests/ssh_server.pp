class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhqNEWIr1GDrmZqEf8MM70u+8zNYlLs5VO8B7hQ2uGxYHhax1emMA4/beySfpYpTnEfgKIQPzOrx1tAjFNFRcpy60fAv4XCw5zhX6e/CcWiLULxIPSZdv7Ry6eA4YWnDamd/iT7XdrrxYa1VPTj5V3hxV4ogX5Pzx1N8HtY1dbkxzHFLUlkq3VROMN1IGViLyo6deNubiZFfcuTZzint9mrYE+RG3Jlbf3tbv4arUkDiti/8M/PmayKYwJsSwh2Q47WcNZSOSI1xcJk9qbEXI2oryWbJD8/2HSRAS0Q/AbUw6a+D6YKi0kKJ2cKtz4eegv0PVqYz7EIP2gylZC6len',
  }
}
