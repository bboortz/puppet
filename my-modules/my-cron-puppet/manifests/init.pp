class my-cron-puppet {
    file { 'post-hook':
        ensure  => file,
        path    => '/etc/puppet/.git/hooks/post-merge',
        source  => 'puppet:///modules/my-cron-puppet/post-merge',
        mode    => 0755,
        owner   => root,
        group   => root,
    }
    cron { 'puppet-apply':
        ensure  => present,
        command => "/etc/puppet/tools/apply.bash",
        user    => root,
        minute  => '*/30',
        require => File['post-hook'],
    }
}
