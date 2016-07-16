#!/bin/bash

#####################################################################################
# UPDATE #
echo "Updating package list"
sudo apt-get -y update >/dev/null 2>&1

#####################################################################################
# INSTALLING FUNCTIONS #
# To reduce verbosity
function apt_install {
	for p in $@; do
		echo "installing $p"
    	sudo apt-get -y install $p >/dev/null 2>&1
	done
}

function pip_install {
	for p in $@; do
		echo "installing $p"
    	sudo pip install $p >/dev/null 2>&1
	done
}

#####################################################################################
# MODULES #

# Basics an dependencies
apt_install python-pip libpq-dev python-dev build-essential python-setuptools
apt_install python-nose g++ git libatlas3gf-base libatlas-dev pyyaml cython
apt_install python-numpy python-pandas
pip_install ipython jupyter

# Scipy
apt_install python-scipy 

# Scraping
apt_install python-requests python-scrapy
pip_install bs4 feedparser

# NLP
pip_install nltk

# Web framework
pip_install flask

# Visualization
apt_install matplotlib
pip_install seaborn bokeh

# PostgreSQL connection
pip_install psycopg2

# AWS
pip_install boto3

# Scikit-learn
pip_install scikit-learn

# Theano
pip_install theano

# Keras
pip_install keras

# Tensorflow
sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0-cp27-none-linux_x86_64.whl >/dev/null 2>&1

# Others
apt_install libhdf5-7

printf '*** SETUP FINISHED! ***'
#####################################################################################