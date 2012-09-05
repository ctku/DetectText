g++ --shared -o DetectText.so TextDetection.cpp FeaturesMain.cpp -lopencv_core -lopencv_highgui -lopencv_imgproc -I "." -I "/root/boost_1_50_0/"
LD_LIBRARY_PATH="." python tester.py
