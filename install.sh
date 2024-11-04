#!/bin/bash
mkdir -p ./repos
cd repos

if [ ! -d "online-e-commerce-marketplace-project-backend" ]; then
    echo "Cloning sample repo..."
    git clone https://github.com/luckyPrice/online-e-commerce-marketplace-project-backend.git
else
    echo "Directory online-e-commerce-marketplace-project-backend already exists. Skipping clone."
fi

cd -

mkdir -p ./tools

cd tools

echo "downloading AppCat CLI..."

if [ -f "azure-migrate-appcat-for-java-cli-6.3.0.9-preview.zip" ]; then
    echo "File azure-migrate-appcat-for-java-cli-6.3.0.9-preview.zip already exists. Skipping download."
else
    curl -O https://download.visualstudio.microsoft.com/download/pr/a52e9a99-3a70-4634-8d53-1585daf73076/448b6540eb5479484096462f1c9463e5/azure-migrate-appcat-for-java-cli-6.3.0.9-preview.zip
fi

echo "Unzipping AppCat file ... to ./appcat"

if [ -d "./appcat" ]; then
    echo "Directory ./appcat already exists. Skipping unzip."
else
    unzip azure-migrate-appcat-for-java-cli-6.3.0.9-preview.zip -d ./

    echo "Moving AppCat files ... to ./appcat folder"

    mv azure-migrate-appcat-for-java-cli-6.3.0.9 ./appcat
fi

cd .. 

export PATH=$PATH:$(pwd)/tools/appcat/bin

echo 'export PATH=$PATH:$(pwd)/tools/appcat/bin' >> ~/.bashrc

source ~/.bashrc

echo "Environment is ready."

appcat --version
 
 