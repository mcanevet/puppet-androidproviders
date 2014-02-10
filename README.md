Androidproviders
================

Usage:
------

```puppet
package { 'android-tools-adb':
  ensure => present,
}
```

Exec provider:
--------------

```puppet
exec { '/system/bin/touch /sdcard/foo':
  provider => adb,
}
```
