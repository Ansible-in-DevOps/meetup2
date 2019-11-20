Run by:
=========
1. Edit inventory file (which host should be used)
2. ansible-playbook deploy.yml
3. inspec check #check chef code
4. inspec exec httpd -t ssh://{IP} -i {PRIV_KEY}

Where:
=========

--------------
| Variable| Example Value | Description |
|-------------------|---------------------|----------------------|
|IP | 1.1.1.1 | machine ip |
|PRIV_KEY | ~/.ssh/id_rsa |ssh private key|
