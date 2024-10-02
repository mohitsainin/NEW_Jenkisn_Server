
[bastion]
bastion ansible_host=${bastion_public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=/home/ubuntu/jenkins.pem

[jenkins]
jenkins ansible_host=${jenkins_private_ip} ansible_user=ubuntu ansible_ssh_private_key_file=/home/ubuntu/jenkins.pem ansible_ssh_common_args='-o ProxyCommand="ssh -i /home/ubuntu/jenkins.pem -W %h:%p ubuntu@${bastion_public_ip}"'
