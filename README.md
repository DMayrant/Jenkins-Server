# CI/CD Automation using jenkins and Terraform
Deploy 1 EC2 Instance in your VPC.
Bootstrap the EC2 instance with a script that will install and start Jenkins. Review the official Jenkins Documentation for more information: https://www.jenkins.io/doc/book/installing/linux/
Create and assign a Security Group to the Jenkins Security Group that allows traffic on port 22 from your IP and allows traffic from port 8080.
Create a S3 bucket for your Jenkins Artifacts that is not open to the public.
Verify that you can reach your Jenkins install via port 8080 in your browser. Be sure to include a screenshot of the Jenkins login screen in your documentation.
Push your code to GitHub and include the link in your write up.


After connecting to your running server via SSH protocol on port 22 on the AWS console: 

install git 

    sudo apt install git 

Clone your code rep and cd into your directory

    cat install-jenkins.sh 

install jenkins server

    chmod +x install-jenkins.sh

Next run your script 

    ./install-jenkins.sh


![image alt](https://github.com/DMayrant/Jenkins-Server-Deployment/blob/main/Jenkins-Server.jpeg?raw=true)


