#-------------------------------------------------
#
# Project created by QtCreator 2019-04-26T18:15:09
#
#-------------------------------------------------

QT       -= gui

TARGET = cm-lib
TEMPLATE = lib

CONFIG += c++14

DEFINES += CMLIB_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

INCLUDEPATH += source

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += source/models/client.cpp \
source/data/datetimedecorator.cpp \
    source/data/entity.cpp \
source/data/enumeratordecorator.cpp \
    source/controllers/command_controller.cpp \
    source/controllers/master-controller.cpp \
    source/data/datadecorator.cpp \
    source/data/intdecorator.cpp \
    source/data/stringdecorator.cpp \
    source/framework/command.cpp

HEADERS +=  source/cm-lib_global.h \
source/data/datetimedecorator.h \
    source/data/entity.h \
source/data/enumeratordecorator.h \
    source/controllers/command_controller.h \
    source/controllers/navigation-controller.h \
    source/data/datadecorator.h \
    source/data/intdecorator.h \
    source/data/stringdecorator.h \
    source/framework/command.h \
source/models/client.h \
    source/controllers/master-controller.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

!build_pass:message(cm-lib project dir: $${PWD})

DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui

!build_pass:message(cm-lib output dir: $${DESTDIR})

