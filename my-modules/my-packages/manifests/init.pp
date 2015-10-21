class my-packages {
	package { 'sudo':
		ensure => present,
	}
	package { 'git':
		ensure => present,
	}
	package { 'openssh-server':
		ensure => present,
	}
	package { 'wget':
		ensure => present,
	}
}
