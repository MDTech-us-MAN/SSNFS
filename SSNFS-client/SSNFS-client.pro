# SSNFS Client v0.1
#
# Available under the license(s) specified at https://github.com/MDTech-us-MAN/SSNFS.
#
# Copyright 2018 Maxwell Dreytser
#

!contains(DEFINES, "ISGLOBAL=1"):{
    error(SSNFS-client.pro cannot be used independently. Please use the main SSNFS.pro file.)
}

QT += core
QT -= gui

QT += network

CONFIG += c++11

TARGET = SSNFS-client
CONFIG += console
CONFIG -= app_bundle

target.path = $$PREFIX/bin
INSTALLS += target

LIBS += -lfuse

TEMPLATE = app

include(../Common/Common.pri)

SOURCES += main.cpp \
    fuseclient.cpp

HEADERS += \
    fuseclient.h


QMAKE_CXXFLAGS += -D_FILE_OFFSET_BITS=64
QMAKE_CXXFLAGS += -D_XOPEN_SOURCE=700
QMAKE_CXXFLAGS += -DFUSE_USE_VERSION=31

QMAKE_CXXFLAGS += -D_CLIENT_VERSION=0.1
