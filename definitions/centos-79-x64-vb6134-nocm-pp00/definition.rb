Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '480',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat6_64',
  :iso_file => "CentOS-7.9-2009-x86_64-NetInstall.iso",
  :iso_src => "http://mirror.nextlayer.at/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-NetInstall-2009.iso",
  :iso_md5 => "b79079ad71cc3c5ceb3561fff348a1b67ee37f71f4cddfec09480d4589c191d6",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 300,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "veewee",
  :ssh_password => "veewee",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "chef.sh",
    "puppet.sh",
    "vagrant.sh",
    "virtualbox.sh",
    #"vmfusion.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
