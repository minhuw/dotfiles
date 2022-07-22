if [[ "$OSTYPE" == "darwin"* ]]; then
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o /tmp/AWSCLIV2.pkg
    sudo installer -pkg /tmp/AWSCLIV2.pkg -target /
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o /tmp/awscliv2.zip
    unzip /tmp/awscliv2.zip -d /tmp/awscliv2
    sudo /tmp/awscliv2/aws/install
fi
