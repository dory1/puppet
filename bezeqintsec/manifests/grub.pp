class bezeqintsec::grub {
$grub_password = '$1$JAymi1$iPF9NdUqX86ba5SCZZihu/'
augeas { "grub-create-password":
	  context => "/files/boot/grub/menu.lst",
	  changes => [
	    "ins password after default",
	    "set password/md5 ''",
	    "set password $grub_password",
  ],
  onlyif => "match password size == 0",
 }

augeas { "grub-set-password":
  context => "/files/boot/grub/menu.lst",
  changes => "set password $grub_password",
  require => Augeas["grub-create-password"],
 }

}
