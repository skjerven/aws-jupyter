#!/bin/bash

yum -y update

su ec2-user

wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh -O /tmp/anaconda3.sh

bash /tmp/anaconda3.sh -b -p /home/ec2-user/anaconda3

rm /tmp/anaconda3.sh

echo ". /home/ec2-user/anaconda3/conda.sh" >> /home/ec2-user/.bashrc
source /home/ec2-user/.bashrc

conda create -y --name fastai
conda activate fastai
conda install -c pytorch -c fastai fastai

echo "source activate fastai" >> /home/ec2-user/.bashrc
