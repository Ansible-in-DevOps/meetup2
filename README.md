# meetup2
AiDO Meetup#2 - https://www.meetup.com/pl-PL/Ansible-in-DevOps-Torun-Bydgoszcz/events/266216484/

Youtube - https://www.youtube.com/playlist?list=PL-2nM3otnXgruHvo87HYSOgUBugO0m09x

# Prelekcja nr 1 -> Czym jest wirtualizacja z użyciem VMware? Warsztat z Terraformem.


# Prelekcja nr 2 -> Jak uzupełnić automatyczną instalację wewnątrz maszyny wirtualnej - Ansible oraz magia testów infrastruktury z użyciem Chef InSpec

1. Przygotowanie środowiska

````
Zainstaluj Chef inspec - https://downloads.chef.io/inspec
Zainstaluj Ansible (onlu on linux) https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
````

2. Sklonowanie repozytorium

````
git clone https://github.com/Ansible-in-DevOps/meetup2.git
cd Prelekcja_nr_2
````

3. Edytuj ansible inventory (ansible host, user, password)

````
git clone https://github.com/Ansible-in-DevOps/meetup2.git
cd Prelekcja_nr_2

Plik inventory:
localhost

[prod]
#Istead this file you should use dynamic script
s1 ansible_host=1.2.3.4 ansible_ssh_user=root ansible_password=T@jn3!
````

4. Uruchom ansible-playbook

````
ansible-playbook deploy.yml
````

5. Uruchom chef inspec zmieniając IP oraz hasło

````
inspec shell -t ssh://root@1.1.1.1 --password T@jn3! --sudo
````

