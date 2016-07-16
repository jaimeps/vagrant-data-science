## Vagrant - Data Science

<p align="center">
	<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/vagrant.png" width="150">
</p>

### Description:
A Vagrant machine ready for development of data science projects in Python.

The box includes: <br />
(1) Basics: [numpy](http://www.numpy.org/), [pandas](http://pandas.pydata.org/), [scipy](https://www.scipy.org/), [jupyter](http://jupyter.org/) <br />
(2) Data acquisition: [requests](http://docs.python-requests.org/en/master/), [beautifulsoup](https://www.crummy.com/software/BeautifulSoup/), [feedparser](http://pythonhosted.org/feedparser/), [scrapy](http://scrapy.org/) <br />
(3) NLP: [re](https://docs.python.org/2/library/re.html), [NLTK](http://www.nltk.org/) <br />
(4) Web Framework: [flask](http://flask.pocoo.org/) <br />
(5) Visualization: [matplotlib](http://matplotlib.org/), [seaborn](https://stanford.edu/~mwaskom/software/seaborn/), [bokeh](http://bokeh.pydata.org/en/latest/) <br />
(6) PostgreSQL connection: [psycopg2](http://initd.org/psycopg/) <br />
(7) AWS: [boto3](https://boto3.readthedocs.io/en/latest/) <br />
(8) Machine Learning: [scikit-learn](http://scikit-learn.org/stable/), [theano](http://deeplearning.net/software/theano/), [keras](http://keras.io/), [tensorflow](https://www.tensorflow.org/) <br />

### Instructions:
Prerequesites:
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](https://www.vagrantup.com/) <br />
Then:
- In the terminal, clone the repository <br />
```
$ git clone git@github.com:jaimeps/vagrant-data-science.git
```
- Change to your project directory <br />
```
$ cd vagrant-data-science
```
- Run 
```
$ vagrant up
``` 
to create the VM. This may take a few minutes.
- Once the setup is finished, run 
```
$ vagrant ssh
``` to login to the VM.	

### Jupyter notebook:
To launch jupyter run <br />
```
$ jupyter notebook --ip=0.0.0.0
``` <br />
You can find the notebook in the host's browser at http://127.0.0.1:8888

### Pycharm integration:
We can use our local Pycharm IDE with the Vagrant box as the Python interpreter. <br />
In Pycharm go to Preferences > Project > Project Interpreter <br />
Select "Add remote" in the settings button <br />
<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/add_remote.png" width="800"> <br />
Select Vagrant as the interpreter and the folder of the vagrant box in your computer <br />
<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/conf_remote.png" width="500"> <br />
Now the Pycharm interpreter should look like this <br />
<img src="https://github.com/jaimeps/vagrant-data-science/blob/master/images/vagrant_int.png" width="800"> <br />

### Shared folder:
For convenience the "shared" folder is synced.

### Customization:
- To increase the memory or CPU count, change the following lines in the Vagrantfile: <br />
```
vb.memory = "1024"
vb.cpus = 4
``` <br />
- To add/remove Python modules in the setup, see the script in ```bootstrap.sh```

### References
- [Vagrant Docs](https://www.vagrantup.com/docs/)
- [Holberton School - Deep Learning Vagrant machine](https://github.com/holbertonschool/deep-learning-vagrant-machine)

