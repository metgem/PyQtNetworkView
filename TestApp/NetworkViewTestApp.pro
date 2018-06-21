HEADERS += \
    ../src/node.h \
    ../src/edge.h \
    ../src/networkscene.h \
    ../src/style.h \
    ../src/graphicsitem.h \
    ../src/config.h
SOURCES += \
    main.cpp \
    ../src/node.cpp \
    ../src/edge.cpp \
    ../src/networkscene.cpp \
    ../src/style.cpp


QT += core gui widgets

TARGET = NetworkView
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
