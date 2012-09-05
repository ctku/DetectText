cython TextDetection_cython.pyx
g++ -shared -pthread
-I `python -c "import distutils.sysconfig;print distutils.sysconfig.get_python_inc()"` -I "." -I "/root/boost_1_50_0/"
-lopencv_core -lopencv_highgui -lopencv_imgproc
-o DetectText TextDetection_cython.c TextDetection.cpp FeaturesMain.cpp

LD_LIBRARY_PATH="." python tester.py
