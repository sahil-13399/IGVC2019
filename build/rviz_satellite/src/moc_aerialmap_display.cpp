/****************************************************************************
** Meta object code from reading C++ file 'aerialmap_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/rviz_satellite/src/aerialmap_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'aerialmap_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_rviz__AerialMapDisplay_t {
    QByteArrayData data[10];
    char stringdata0[136];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz__AerialMapDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz__AerialMapDisplay_t qt_meta_stringdata_rviz__AerialMapDisplay = {
    {
QT_MOC_LITERAL(0, 0, 22), // "rviz::AerialMapDisplay"
QT_MOC_LITERAL(1, 23, 11), // "updateAlpha"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 11), // "updateTopic"
QT_MOC_LITERAL(4, 48, 11), // "updateFrame"
QT_MOC_LITERAL(5, 60, 15), // "updateDrawUnder"
QT_MOC_LITERAL(6, 76, 13), // "updateTileUrl"
QT_MOC_LITERAL(7, 90, 10), // "updateZoom"
QT_MOC_LITERAL(8, 101, 12), // "updateBlocks"
QT_MOC_LITERAL(9, 114, 21) // "updateFrameConvention"

    },
    "rviz::AerialMapDisplay\0updateAlpha\0\0"
    "updateTopic\0updateFrame\0updateDrawUnder\0"
    "updateTileUrl\0updateZoom\0updateBlocks\0"
    "updateFrameConvention"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz__AerialMapDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x09 /* Protected */,
       3,    0,   55,    2, 0x09 /* Protected */,
       4,    0,   56,    2, 0x09 /* Protected */,
       5,    0,   57,    2, 0x09 /* Protected */,
       6,    0,   58,    2, 0x09 /* Protected */,
       7,    0,   59,    2, 0x09 /* Protected */,
       8,    0,   60,    2, 0x09 /* Protected */,
       9,    0,   61,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz::AerialMapDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        AerialMapDisplay *_t = static_cast<AerialMapDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateAlpha(); break;
        case 1: _t->updateTopic(); break;
        case 2: _t->updateFrame(); break;
        case 3: _t->updateDrawUnder(); break;
        case 4: _t->updateTileUrl(); break;
        case 5: _t->updateZoom(); break;
        case 6: _t->updateBlocks(); break;
        case 7: _t->updateFrameConvention(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject rviz::AerialMapDisplay::staticMetaObject = {
    { &Display::staticMetaObject, qt_meta_stringdata_rviz__AerialMapDisplay.data,
      qt_meta_data_rviz__AerialMapDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *rviz::AerialMapDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz::AerialMapDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_rviz__AerialMapDisplay.stringdata0))
        return static_cast<void*>(const_cast< AerialMapDisplay*>(this));
    return Display::qt_metacast(_clname);
}

int rviz::AerialMapDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
