class sh_profile {
    file {
        '/etc/profile.d':
            ensure  => 'directory',
            source  => "puppet:///modules/${module_name}/",
            recurse => true,
            purge   => false, # Don't purge this dir, since under RedHat there are several required scripts
            force   => true,
            owner   => 'root',
            group   => 'root',
            mode    => '0755',
    }
}
