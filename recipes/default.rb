#
# Cookbook Name:: yum-remi
# Recipe:: default
#
# Copyright 2014, Yoshihiro Sasaki
#

bash "install remi from rpm packages" do
    not_if 'yum repolist all | grep remi'
    cwd "/usr/local/src"
    user "root"
    code <<-EOC
    wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm
    rm -f *.rpm
    EOC
end

template "/etc/yum.repos.d/remi.repo" do
    source "etc/yum.repos.d/remi.repo.erb"
    user "root"
    owner "root"
    group "root"
    mode 0644
    variables(
        :config => node[:remi]
    )
end
