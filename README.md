## Vagrant - Data Science

<p align="center">
	<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/vagrant.png" width="250">
</p>

### Description:
A Vagrant machine ready for development of data science projects in Python.

The box includes:
(1) Basics: [numpy](http://www.numpy.org/), [pandas](http://pandas.pydata.org/), [scipy](https://www.scipy.org/), [jupyter](http://jupyter.org/)
(2) Data acquisition: [requests](http://docs.python-requests.org/en/master/), [beautifulsoup](https://www.crummy.com/software/BeautifulSoup/), [feedparser](http://pythonhosted.org/feedparser/), [scrapy](http://scrapy.org/)
(3) NLP: [re](https://docs.python.org/2/library/re.html), [NLTK](http://www.nltk.org/)
(4) Web Framework: [flask](http://flask.pocoo.org/)
(5) Visualization: [matplotlib](http://matplotlib.org/), [seaborn](https://stanford.edu/~mwaskom/software/seaborn/), [bokeh](http://bokeh.pydata.org/en/latest/)
(6) PostgreSQL connection: [psycopg2](http://initd.org/psycopg/)
(7) AWS: [boto3](https://boto3.readthedocs.io/en/latest/)
(8) Machine Learning: [scikit-learn](http://scikit-learn.org/stable/), [theano](http://deeplearning.net/software/theano/), [keras](http://keras.io/), [tensorflow](https://www.tensorflow.org/)

### Instructions:
Prerequesites:
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](https://www.vagrantup.com/)
Then:
- In the terminal, clone the repository
```git clone git@github.com:jaimeps/vagrant-data-science.git```
- Change to your project directory
```cd vagrant-data-science```
- Run ```vagrant up``` to create the VM. This may take a few minutes.
- Once the setup is finished, run ```vagrant ssh``` to login to the VM.	

### Jupyter notebook:
To launch jupyter run
```jupyter notebook --ip=0.0.0.0```
You can find the notebook in the host's browser at http://127.0.0.1:8888

### Pycharm integration:
We can use our local Pycharm IDE with the Vagrant box as the Python interpreter. 
In Pycharm go to Preferences > Project > Project Interpreter
Select "Add remote" in the settings button
<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/add_remote.png">
Select Vagrant as the interpreter and the folder of the vagrant box in your computer
<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/conf_remote.png">
Now the Pycharm interpreter should look like this
<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/vagrant_int.png">

### Shared folder:
For convenience the "shared" folder is synced.

### Customization:
- To increase the memory or CPU count, change the following lines in the Vagrantfile:
```vb.memory = "1024"```
```vb.cpus = 4```
- To add/remove Python modules in the setup, see the script in ```bootstrap.sh```

### References
- [Vagrant Docs](https://www.vagrantup.com/docs/)
- [Holberton School - Deep Learning Vagrant machine](https://github.com/holbertonschool/deep-learning-vagrant-machine)

