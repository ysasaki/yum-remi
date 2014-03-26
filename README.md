yum-remi Cookbook
=============

This cookbook installs and enables remi repositories.

Requirements
------------

 * Chef 11 or higher

Supports
--------

 * CentOS 6.x

Attributes
----------

```ruby
default['remi']['main']['enabled']             = 1
default['remi']['main']['priority']            = 10
default['remi']['php55']['enabled']            = 0
default['remi']['php55']['priority']           = 10
default['remi']['test']['enabled']             = 0
default['remi']['test']['priority']            = 10
default['remi']['debuginfo']['enabled']        = 0
default['remi']['debuginfo']['priority']       = 10
default['remi']['php55_debuginfo']['enabled']  = 0
default['remi']['php55_debuginfo']['priority'] = 10
default['remi']['test_debuginfo']['enabled']   = 0
default['remi']['test_debuginfo']['priority']  = 10
```

Usage
-----

Just include `yum-remi` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[yum-remi]"
  ]
}
```

License and Authors
-------------------

 * The MIT License
 * Author Yoshihiro Sasaki <aloelight at gmail.com>
