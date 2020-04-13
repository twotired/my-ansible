Configuration for Fedora Workstation

sudo dnf -y install ansible

ansible-playbook -K -v ./fedora-workstation.yml

or

curl https://raw.githubusercontent.com/twotired/my-ansible/master/bootstrap/fedora.sh | bash
