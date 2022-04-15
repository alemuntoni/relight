QT += core gui widgets concurrent xml

QMAKE_CXXFLAGS += -std=c++17

TARGET = relight
CONFIG -= app_bundle
UI_DIR = $$PWD

TEMPLATE = app

DEFINES += _USE_MATH_DEFINES
DEFINES += NOMINMAX

win32:INCLUDEPATH += ../external/libjpeg-turbo-2.0.6/include \
    ../external/eigen-3.3.9/ \
    ../src/
win32:LIBS += ../external/libjpeg-turbo-2.0.6/lib/jpeg-static.lib

unix:INCLUDEPATH += /usr/include/eigen3
unix:LIBS += -ljpeg -liomp5
unix:QMAKE_CXXFLAGS += -fopenmp


mac:INCLUDEPATH += /usr/local/Cellar/jpeg-turbo/2.0.6/include \
    /usr/local/include \
    /usr/local/include/eigen3
mac:LIBS += -L/usr/local/Cellar/jpeg-turbo/2.0.6/lib/ -ljpeg
mac:LIBS += -framework Accelerate
mac:QMAKE_CXXFLAGS += -fopenmp
mac:QMAKE_CXXFLAGS += -Xpreprocessor -fopenmp -lomp -I/usr/local/include
mac:QMAKE_LFLAGS += -lomp
mac:LIBS += -L /usr/local/lib /usr/local/lib/libomp.dylib

SOURCES += main.cpp \
    ../src/deepzoom.cpp \
    dstretchdialog.cpp \
    dstretchtask.cpp \
    imagecropper.cpp \
    mainwindow.cpp \
    graphics_view_zoom.cpp \
    normalstask.cpp \
    rtiexport.cpp \
    ../relight-cli/rtibuilder.cpp \
    ../src/imageset.cpp \
    ../src/jpeg_decoder.cpp \
    ../src/jpeg_encoder.cpp \
    ../src/rti.cpp \
    helpdialog.cpp \
    project.cpp \
    measure.cpp \
    focaldialog.cpp \
    lens.cpp \
    image.cpp \
    ../src/exif.cpp \
    httpserver.cpp \
    scripts.cpp \
    processqueue.cpp \
    queuewindow.cpp \
    queueitem.cpp \
    script.cpp \
    parameter.cpp \
    task.cpp \
    rtitask.cpp \
    settingsdialog.cpp \
    ../relight-cli/convert_rti.cpp \
    ../src/legacy_rti.cpp \
    domecalibration.cpp \
    dome.cpp \
    ../src/lp.cpp \
    qmarkerlist.cpp \
    qmarker.cpp \
    qmeasuremarker.cpp \
    sphere.cpp \
    qspheremarker.cpp \
    align.cpp \
    qalignmarker.cpp \
    qwhitemarker.cpp \
    white.cpp \
    convertdialog.cpp \
    aligndialog.cpp \
    zoomdialog.cpp \
    zoomtask.cpp \
    ../src/deepzoom.cpp


HEADERS += \
    ../src/deepzoom.h \
    dstretch.h \
    dstretchdialog.h \
    dstretchtask.h \
    imagecropper.h \
    mainwindow.h \
    graphics_view_zoom.h \
    normalstask.h \
    rtiexport.h \
    helpdialog.h \
    ../src/imageset.h \
    ../src/jpeg_decoder.h \
    ../src/jpeg_encoder.h \
    ../src/material.h \
    ../src/eigenpca.h \
    ../relight-cli/rtibuilder.h \
    ../src/relight_threadpool.h \
    project.h \
    measure.h \
    focaldialog.h \
    lens.h \
    image.h \
    ../src/exif.h \
    httpserver.h \
    scripts.h \
    processqueue.h \
    queuewindow.h \
    queueitem.h \
    script.h \
    parameter.h \
    task.h \
    rtitask.h \
    settingsdialog.h \
    ../src/legacy_rti.h \
    httplib.h \
    domecalibration.h \
    dome.h \
    ../src/relight_vector.h \
    ../src/lp.h \
    qmarker.h \
    qmarkerlist.h \
    qmeasuremarker.h \
    sphere.h \
    qspheremarker.h \
    align.h \
    qalignmarker.h \
    qwhitemarker.h \
    white.h \
    convertdialog.h \
    aligndialog.h \
    zoom.h \
    zoomdialog.h \
    zoomtask.h \
    ../src/deepzoom.h

FORMS += \
    dstretchdialog.ui \
    mainwindow.ui \
    rtiexport.ui \
    helpdialog.ui \
    focaldialog.ui \
    zoomdialog.ui   \
    queuewindow.ui \
    settingsdialog.ui \
    domecalibration.ui \
    convertdialog.ui \
    aligndialog.ui
RESOURCES += \
    icons.qrc

DISTFILES += \
    README.txt \
    docs/help.html

