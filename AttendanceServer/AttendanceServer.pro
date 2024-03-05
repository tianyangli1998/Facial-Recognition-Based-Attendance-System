QT       += core gui network sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    attendancewin.cpp \
    qfaceobject.cpp \
    registerwin.cpp \
    selectwin.cpp

HEADERS += \
    attendancewin.h \
    qfaceobject.h \
    registerwin.h \
    selectwin.h

FORMS += \
    attendancewin.ui \
    registerwin.ui \
    selectwin.ui

#window平台opencv，seetaface环境
win32{
#LIBS += -lopencv_core -lopencv_videoio
LIBS +=C:\opencv452\x64\mingw\lib\libopencv*
LIBS +=C:\SeetaFace\lib\libSeeta*
INCLUDEPATH +=C:\opencv452\include
INCLUDEPATH += C:\opencv452\include\opencv2
INCLUDEPATH += C:\SeetaFace\include
INCLUDEPATH += C:\SeetaFace\include\seeta
}



#INCLUDEPATH +=C:\OpenCV-4.5.5\build\include  \
#              C:\OpenCV-4.5.5\build\include\opencv2

#CONFIG(debug, debug|release): {

#        LIBS += C:\OpenCV-4.5.5\build\x64\mingw\lib\libopencv_*d.dll.a
#        }

#        else:CONFIG(release, debug|release): {

#        LIBS += C:\OpenCV-4.5.5\build\x64\mingw\lib\libopencv_*.dll.a

#        }

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
