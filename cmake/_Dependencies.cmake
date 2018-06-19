# cmake/_Dependencies.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

if( NOT MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY)
   find_library( MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjCStandardFoundation${CMAKE_STATIC_LIBRARY_SUFFIX} MulleObjCStandardFoundation)
   message( STATUS "MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY is ${MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY}")

   # the order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need
   if( MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY)
      set( ALL_LOAD_DEPENDENCY_LIBRARIES
         ${ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_STANDARD_FOUNDATION_ROOT "${MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_STANDARD_FOUNDATION_ROOT "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_ROOT}" DIRECTORY)

      # search for DependenciesAndLibraries.cmake to include
      foreach( _TMP_MULLE_OBJC_STANDARD_FOUNDATION_NAME in MulleObjCStandardFoundation)
         set( _TMP_MULLE_OBJC_STANDARD_FOUNDATION_DIR "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_ROOT}/include/${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_STANDARD_FOUNDATION_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_DIR}")
            include( "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_DIR}/DependenciesAndLibraries.cmake")
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_STANDARD_FOUNDATION_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         endif()
      endforeach()

      # search for objc-loader.inc in include directory
      foreach( _TMP_MULLE_OBJC_STANDARD_FOUNDATION_NAME in MulleObjCStandardFoundation)
         set( _TMP_MULLE_OBJC_STANDARD_FOUNDATION_FILE "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_ROOT}/include/${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_NAME}/objc-loader.inc")
         if( EXISTS "${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_FILE}")
            set( INHERITED_OBJC_LOADERS
               ${INHERITED_OBJC_LOADERS}
               ${_TMP_MULLE_OBJC_STANDARD_FOUNDATION_FILE}
               CACHE INTERNAL "need to cache this"
            )
            break()
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "MULLE_OBJC_STANDARD_FOUNDATION_LIBRARY was not found")
   endif()
endif()
