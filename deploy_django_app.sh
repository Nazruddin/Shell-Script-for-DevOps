#!/bin/bash


<<task
Deploy a django app
and gandle the code for errors

task

code_clone(){
        echo "cloning the Django app..."
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
        echo "Installing dependincies"
        sudo apt-get update
        sudo apt install nginx -y
        sudo apt-get install docker.io nginx -y #docker-compose

}


required_restart(){
        sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
        sudo systemctl restart docker


}

deploy(){
        docker build -t notes-app .
        #docker-compose up -d
        docker run -d -p 8000:8000 notes-app:latest
}

echo "*****************Deployment Started***************************"
if ! code_clone; then
        echo "the directory already exists"
        cd django-notes-app

fi

if ! install_requirements; then
        echo "Installation failed"
        exit 1
fi

if ! required_restart; then
        echo "System fault identified"
        exit 1
fi

if ! deploy; then
       echo "Deployment failed, mailinhg the admin"
        # sendmail
        exit 1
fi

echo "*********************Deployment Done******************************"
                                                                              
