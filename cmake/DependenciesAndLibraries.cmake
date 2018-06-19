#
# The following includes include definitions generated
# during `mulle-sde update`. Don't edit those files. They are
# overwritten frequently.
#
# === MULLE-SDE START ===

include( _Dependencies OPTIONAL)
include( _Libraries OPTIONAL)

# === MULLE-SDE END ===
#

#
# If you need more find_library() statements, that you dont want to manage
# with the sourcetree, add them here.
#
# Add OS specific dependencies to OS_SPECIFIC_LIBRARIES
# Add all other dependencies (rest) to DEPENDENCY_LIBRARIES
#

if( NOT MULLE_OBJC_STARTUP_LIBRARY)
   find_library( MULLE_OBJC_STARTUP_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjCStandardFoundation-startup${CMAKE_STATIC_LIBRARY_SUFFIX} MulleObjC-startup)
endif()