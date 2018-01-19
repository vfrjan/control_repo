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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDhDwEpbo7KRSgmnsOw3iaqXhaVgWQVyVziWSSASMFadJ0NMvrTM3CLCnrJpDYf5Jjz4IEmrmMbPWULojsqnr7nnstyawIXXU0PVQzFj1dw9+DBHwNPhqtEkbqLxGL8suseSj1NzrphZ/kb+r7MYZFRiTimL2GG8zMOflY8C6wt/vFz0JT5Ra6ziCwRetelcR4xWydWM+6BYCpVQzuRzws//n/PqOJQaNSlmoYOSmgx7xKsotn8vIS32/4mdx9Vjs9QZqvcRdLggzA3AIEMP/5dYbPNTQO+l9YBnVsPbUqYMn3/m4lNTGPYACqmBlNZ9X+gbV0W7XNaoU5scKAz58Dp',
  }  
}
