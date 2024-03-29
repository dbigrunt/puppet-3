
# Note on passwds
# The must be stored as a hash generated from openssl
# openssl passwd -1 is the command

class users {
# passwd is wiarreft
        user { 'mmoyles':
        home => '/home/mmoyles',
        ensure => present,
	password => '$1$rLrcsrrZ$/VnY4X1rlaIJ31FMBiEld0',
        comment => 'Michael Moyles',
        shell => '/bin/bash',
        groups => ['svn','puppet','sudo','erova']
    }
# passwd is erova123
        user { 'erova':
        home => '/home/erova',
        ensure => present,
	password => '$1$JaQmbDDv$4XzeggNopjsO4507Vq0uT/',
        comment => 'Erova, shared user',
        shell => '/bin/bash',
        groups => ['svn','erova']
    }
	}

# best to try using managehome => true but this actually doesn't seem to work
class users::pi inherits users {

# passwd is wiarreft
        user { 'michael':
        home => '/home/michael',
        ensure => present,
        managehome => true,
	password => '$1$UfXQTHh1$I070bUWksoJrrHRrB08vn1',
        comment => 'user michael',
        shell => '/bin/bash',
        groups => ['svn','puppet','sudo','erova']
    }
}
