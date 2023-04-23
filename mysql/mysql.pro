TARGET = qsqlmysql

HEADERS += $$PWD/qsql_mysql_p.h
SOURCES += $$PWD/qsql_mysql.cpp $$PWD/main.cpp

#QMAKE_USE += mysql

OTHER_FILES += mysql.json

PLUGIN_CLASS_NAME = QMYSQLDriverPlugin
include(../qsqldriverbase.pri)

#x64
contains(QT_ARCH, x86_64){
message("64-bit")
#   mysql 8.0.27x64
#    INCLUDEPATH += ./mysql8.0.27x64/include
#    DESTDIR = $$PWD/bin/x64/
#    CONFIG(debug, debug|release){
#        LIBS += -L$$PWD/mysql8.0.27x64/lib/ -llibmysql
#    } else {
#        LIBS += -L$$PWD/mysql8.0.27x64/lib/ -llibmysql
#    }
#   mysql 5.7x64
    INCLUDEPATH += ./mysql5.7x64/include
    DESTDIR = $$PWD/bin/x64/
    CONFIG(debug, debug|release){
        LIBS += -L$$PWD/mysql5.7x64/lib/ -llibmysql
    } else {
        LIBS += -L$$PWD/mysql5.7x64/lib/ -llibmysql
    }

} else { #x32
message("32-bit")
    INCLUDEPATH += ./mysql5.7x32/include
    DESTDIR = $$PWD/bin/x32/
    CONFIG(debug, debug|release){
        LIBS += -L$$PWD/mysql5.7x32/lib/ -llibmysql
    } else {
        LIBS += -L$$PWD/mysql5.7x32/lib/ -llibmysql
    }
}



