## Mașină virtuală pentru cursul "programare web"


### Quick HOWTO

1. Instalează [VirtualBox](https://www.virtualbox.org):

        apt-get install virtualbox

2. Instalează [Vagrant](http://www.vagrantup.com/):

        gem install vagrant

3. Clonează acest repository:

        git clone https://github.com/programare-web/vm
        cd wm

4. Pornește mașina virtuală:

        vagrant up

Subdirectorul `www` din acest repository va fi montat în mașina virtuală
ca `/var/www` și va fi accesibil prin Apache la adresa
http://192.168.33.10/.