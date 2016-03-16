# Install CPU-Only Caffe on Mac OS (For Python Interface)

Caffe is a deep learning framework developed by the Berkely Vision and Learning Center ([BVLC](http://caffe.berkeleyvision.org/)). It allows flexible construction of deep learning models for computer vision as well as providing pretrained visual features learned from massive image repositories, such as the ImageNet. 

However, it is never a easy task to install Caffe. Hope this guide can save some of your time.


Open terminal

## Install the command-line tools for Xcode
`xcode-select –install`

## Install Homebrew
Homebrew is the "missing package manager for OSX". We need to install several open-source packages via homebrew. 

1. `ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`
2. Update homebrew if already installed `brew update`


## Install Python
1. If you haven't install Python yet: `brew install python`
2. If Python is installed, then update `pip install --upgrade pip setuptools`
3. You can verify that Python is at the right place, installed via Homebrew: `which python`


## (Optional) Install Anaconda Python Distribution
Anaconda is a freemium distribution of the Python programming language for large-scale data processing, predictive analytics, and scientific computing, that aims to simplify package management and deployment. It might simplifies the installation configuration. 

1. Go to https://www.continuum.io/downloads and download Anaconda for OS X
2. Install with default settings.
3. Change environment variable `export PATH=~/anaconda/bin:$PATH`.

## CUDA Driver and Toolkit
Although we don't do the computation on GPU and Mac normally does not have CUDA installed, we need to let the caffe knows that we have the CUDA drived and toolkit installed in order to proceed. It is like we fool the computer by installing the driver and toolkit without having the real hardware. 

1. Go to: https://developer.nvidia.com/cuda-downloads and download CUDA Toolkit 7.5
2. Go to: http://www.nvidia.com/object/mac-driver-archive.html and download CUDA 7.5.25 driver for MAC
3. Install both of them with default settings
4. Change environment variables:

```
    export PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
    export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH

    
```  

## Install Dependencies

### BLAS
Basic Linear Algebra Subprograms (BLAS) is a specification that prescribes a set of low-level routines for performing common linear algebra operations such as vector addition, scalar multiplication, dot products, linear combinations, and matrix multiplication. Mac should have built-in BLAS named as "atlas". If not, you can install the "openblas"

```
brew install openblas
```

### OpenCV
OpenCV (Open Source Computer Vision) is a library of programming functions mainly aimed at real-time computer vision. 
1. Installation
2. 
```
brew tap homebrew/science
brew install opencv
```

2. Edit variables

```
brew edit open
```

Change line 89-90

```
args << "-DPYTHON#{py_ver}_LIBRARY=#{py_lib}/libpython2.7.#{dylib}"
args << "-DPYTHON#{py_ver}_INCLUDE_DIR=#{py_prefix}/include/python2.7"
```

to 

```
args << "-DPYTHON_LIBRARY=#{py_prefix}/lib/libpython2.7.dylib"
args << "-DPYTHON_INCLUDE_DIR=#{py_prefix}/include/python2.7"
```

### Hdf5

```
brew install hdf5
```

### Boost & Python-Boost
Boost is a collection of peer-reviewed (i.e. very high quality) C++ libraries that help programmers and developers not get caught up in reinventing the wheel. Boost provides implementations for linear algebra, multithreading, basic image processing, and unit testing, just to name a few. Boost-python provides interoperability between the C++ and Python programming languages.

```
brew install --build-from-source --fresh -vd boost boost-python
```

### Other dependencies

```
brew install --fresh -vd snappy leveldb gflags glog szip lmdb homebrew/science/opencv
brew install --build-from-source --with-python --fresh -vd protobuf
```


## Final Step: Install Caffe
### Preparation
Before install Caffe, check whether the required dependencies are installed appropriately. Use `brew list` to view the full list of installed packages.

###Download Caffe from GitHub

1. From your home directory or any directory you want to download caffe, `git clone https://github.com/BVLC/caffe.git`
3. `cd caffe`
3. `cp Makefile.config.example Makefile.config`

### Install Dependencies

``` 
for req in $(cat ./python/requirements.txt); do pip install $req; done
```

### Modify Configurations
!! This step is very crucial.

1. From the `caffe` folder open "Makefile.config" with any text editor or `vim Makefile.config`.
2. For CPU-only configuration, uncomment the line `CPU_ONLY := 1` 
3. **Extra Importance**: Check your Python paths (`PYTHON_INCLUDE` & `PYTHON_LIB`)
	+ With Anaconda: follow the instruction, uncomment all variables with Anaconda specification and comment out corresponding variables with original Python paths. 
4. Read through carefully and modify configuration to suit your need!!!

Here is a [sample Makefile.config](https://github.com/TZstatsADS/ADS_Teaching/blob/master/Tutorials/wk7-image_analysis/Makefile.config) that I used for installation with Python 2.7.11 (not Anaconda).

### Make Caffe
1. `make clean`
2. `make all`
3. `make test`
4. `make runtest`
	+ If succeed, you should see the following output
	![Alt text](./runtest_output.png)
5. To make Python interface: `make pycaffe`
6. Open Python, try to `import caffe`.

If there is no error, congraduations! You've made it!! :)



## Possible Errors & Solutions
* If the system has a package installed but not linked, use `brew link $package_name`.
* If you run into the error message "Can't find TextMate.app (error -10814)". Here are solutions:
	+ Install a textmate: `brew install Caskroom/cask/textmate`
	+ Or change your enviroment editor to Vim or other existing editor. [Reference](http://superuser.com/questions/741099/how-does-one-change-the-editor-that-brew-uses)

* HDF5 library version mismatched error
	+ Solution: `brew upgrade hdf5`
	+ Solution with caution: `export HDF5_DISABLE_VERSION_CHECK=1`

* In `make pycaffe`, if runs into fatal error: numpy/arrayobject.h: No such file or directory, you need to double check whether the path `PYTHON_INCLUDE` actually contains files "Python.h" and "/numpy/arrayobject.h".

* In Python, when try to import caffe, if runs into "**Segmentation fault: 11**", it is probably due to 
	- different versions of Python (System Python and brewed Python via homebrew) are used. The error can be fixed by changing the `PYTHON_LIB` variable in "Makefile.config" to the homebrew Python library path. For instance:

```
PYTHON_LIB := /usr/local/Cellar/python/2.7.11/Frameworks/Python.framework/Versions/2.7/lib/
```
(Depends on your Python version)
	- or the current Python is not the one you used for installing Caffe. Test which Python you are using by `which python`. If you install the Caffe with the homebrew Python, you can set the default python to it by `export PATH=/usr/local/bin:$PATH`.


* ImportError: No module named skimage
	+ Solutaion: `pip install scikit-image`

* When using functions in caffe, if runs into "TypeError: No to_python (by-value) converter found for C++ type: boost::shared_ptr<caffe::Blob<float> >", this is a newly occurred problem due to the mismatch between Caffe and the latest version of Boost (1.6). To solve it, open the file /caffe/python/caffe/_caffe.cpp with an editor, insert the following line under line 257:
```
boost::python::register_ptr_to_python<boost::shared_ptr<Blob<Dtype> > >();
```

* And lots of other potential errors... Debugging is also kind of training. 

* If you are more familiar with Matlab, Caffe also has Matlab interface and it can be installed in a similar fashion as Python interface by changin the configuration variables. 

* For Windows user, Unfortunately there is only an unofficial Windows port of Caffe. Or since Caffe can be used on Ubuntu, you can install an [VirtualBox](http://www.psychocats.net/ubuntu/virtualbox) and choose Ubuntu as the Linux distribution.


## Reference
It is absolutely non-trivial to install Caffe. Here is a long list of references when I tried to install it. 

* [Official BVLC Caffe installation tutorial, written by the developer](http://caffe.berkeleyvision.org/install_osx.html) 
* [How to install Caffe on Mac OS X 10.10 for dummies](http://hoondy.com/2015/04/03/how-to-install-caffe-on-mac-os-x-10-10-for-dummies-like-me/)
* [Caffe github issues](https://github.com/BVLC/caffe/issues/)
* https://github.com/BVLC/caffe/wiki/Installation-%28OSX%29
* http://christopher5106.github.io/big/data/2015/07/16/deep-learning-install-caffe-cudnn-cuda-for-digits-python-on-mac-osx.html
* http://installing-caffe-the-right-way.wikidot.com/start
* Stackoverflow
