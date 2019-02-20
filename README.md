This is a base Wildfly platform

To get multiple instances of Wildfly do the following in playbook.yml:

{role: wildfly, bind_address: '{{ wildfly_bind_address }}', instance: 'name'}
Where name = name of instance and wildfly_bind_address is a different bind address


1) Why won't 'vagrant provision' work
2) Uses generic Centos base box and install Ansible on it, can't download this base box!



