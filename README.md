Androidproviders
================

Usage:
------

Get your device serial number
```
$ adb devices
```

```puppet
node 'my_device_serial_number' {
  package { 'android-tools-adb':
    ensure => present,
  }
  exec { '/system/bin/touch /sdcard/foo': }
}
```

Then

```
FACTER_clientcert=my_device_serial_number FACTER_operatingsystem=Android puppet agent --certname=`facter -p clientcert`
```

Exec provider:
--------------

```puppet
exec { '/system/bin/touch /sdcard/foo': }
```
