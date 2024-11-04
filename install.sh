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

curl -O https://download.visualstudio.microsoft.com/download/pr/a52e9a99-3a70-4634-8d53-1585daf73076/448b6540eb
5479484096462f1c9463e5/azure-migrate-appcat-for-java-cli-6.3.0.9-preview.zip

unzip azure-migrate-appcat-for-java-cli-6.3.0.9-preview.zip -d ./

mv azure-migrate-appcat-for-java-cli-6.3.0.9 ./appcat

export PATH=$PATH:$(pwd)/appcat/bin

echo "Installation complete."
 
 