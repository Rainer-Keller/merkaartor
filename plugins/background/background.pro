TEMPLATE = subdirs

CONFIG += debug_and_release

#Qt Version
QT_VERSION = $$[QT_VERSION]
QT_VERSION = $$split(QT_VERSION, ".")
QT_VER_MAJ = $$member(QT_VERSION, 0)
QT_VER_MIN = $$member(QT_VERSION, 1)

!symbian {
    SUBDIRS += \
#        MNavitBackground \
#        MCadastreFranceBackground \
#        MYahooTiledBackground \
#        MYahooBackground \
        MMsBingMapBackground \
        MWalkingPapersBackground \
        MGeoTiffBackground \
        MGdalBackground

    contains (SPATIALITE, 1) {
        SUBDIRS += MSpatialiteBackground
    }
}
