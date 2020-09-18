# Find the libspnav library and header.
#
# Sets the usual variables expected for find_package scripts:
#
# SpaceWare_INCLUDE_DIR - header location
# SpaceWare_LIBRARIES - library to link against
# SpaceWare_FOUND - true if libspnav was found.

if(UNIX)

    find_path(SpaceWare_INCLUDE_DIR
        spnav.h)

    find_library(SpaceWare_LIBRARY
        NAMES spnav libspnav)

    # Support the REQUIRED and QUIET arguments, and set SpaceWare_FOUND if found.
    include(FindPackageHandleStandardArgs)
    FIND_PACKAGE_HANDLE_STANDARD_ARGS(SpaceWare DEFAULT_MSG
        SpaceWare_LIBRARY SpaceWare_INCLUDE_DIR)

    if(SpaceWare_FOUND)
        set(SpaceWare_LIBRARIES ${SpaceWare_LIBRARY})
    endif()

    mark_as_advanced(SpaceWare_LIBRARY SpaceWare_INCLUDE_DIR)

endif()
