
# Originali, creati da QtCreator
#QT += testlib
#QT -= gui
#
#CONFIG += qt console warn_on depend_includepath testcase
#CONFIG -= app_bundle
#
#TEMPLATE = app
#
#SOURCES +=  tst_clienttests.cpp




# Definiti nel manuale "Learn Qt 5"

QT += testlib
QT -= gui

TARGET = client-tests #??? Cos'è "TARGET"?

TEMPLATE = app

CONFIG += c++14
CONFIG += console
CONFIG -= app_bundle

INCLUDEPATH += source

SOURCES += source/models/tst_clienttests.cpp