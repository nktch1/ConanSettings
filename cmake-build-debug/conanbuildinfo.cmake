include(CMakeParseArguments)

macro(conan_find_apple_frameworks FRAMEWORKS_FOUND FRAMEWORKS)
    if(APPLE)
        if(CMAKE_BUILD_TYPE)
            if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_DEBUG} ${CONAN_FRAMEWORKS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_DEBUG} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_RELEASE} ${CONAN_FRAMEWORKS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_RELEASE} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_RELWITHDEBINFO} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_MINSIZEREL} ${CONAN_FRAMEWORKS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_MINSIZEREL} ${CONAN_FRAMEWORK_DIRS})
            endif()
        endif()
        foreach(_FRAMEWORK ${FRAMEWORKS})
            # https://cmake.org/pipermail/cmake-developers/2017-August/030199.html
            find_library(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND NAME ${_FRAMEWORK} PATHS ${CONAN_FRAMEWORK_DIRS})
            if(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND)
                list(APPEND ${FRAMEWORKS_FOUND} ${CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND})
            else()
                message(FATAL_ERROR "Framework library ${_FRAMEWORK} not found in paths: ${CONAN_FRAMEWORK_DIRS}")
            endif()
        endforeach()
    endif()
endmacro()


#################
###  BOOST
#################
set(CONAN_BOOST_ROOT "C:/.conan/bb0a72/1")
set(CONAN_INCLUDE_DIRS_BOOST "C:/.conan/bb0a72/1/include")
set(CONAN_LIB_DIRS_BOOST "C:/.conan/bb0a72/1/lib")
set(CONAN_BIN_DIRS_BOOST )
set(CONAN_RES_DIRS_BOOST )
set(CONAN_SRC_DIRS_BOOST )
set(CONAN_BUILD_DIRS_BOOST "C:/.conan/bb0a72/1/")
set(CONAN_FRAMEWORK_DIRS_BOOST )
set(CONAN_LIBS_BOOST libboost_wave libboost_container libboost_contract libboost_exception libboost_graph libboost_iostreams libboost_locale libboost_log libboost_program_options libboost_random libboost_regex libboost_serialization libboost_wserialization libboost_coroutine libboost_fiber libboost_context libboost_timer libboost_thread libboost_chrono libboost_date_time libboost_atomic libboost_filesystem libboost_system libboost_type_erasure libboost_log_setup libboost_math_c99 libboost_math_c99f libboost_math_c99l libboost_math_tr1 libboost_math_tr1f libboost_math_tr1l libboost_stacktrace_noop libboost_stacktrace_windbg libboost_stacktrace_windbg_cached libboost_unit_test_framework bcrypt)
set(CONAN_PKG_LIBS_BOOST libboost_wave libboost_container libboost_contract libboost_exception libboost_graph libboost_iostreams libboost_locale libboost_log libboost_program_options libboost_random libboost_regex libboost_serialization libboost_wserialization libboost_coroutine libboost_fiber libboost_context libboost_timer libboost_thread libboost_chrono libboost_date_time libboost_atomic libboost_filesystem libboost_system libboost_type_erasure libboost_log_setup libboost_math_c99 libboost_math_c99f libboost_math_c99l libboost_math_tr1 libboost_math_tr1f libboost_math_tr1l libboost_stacktrace_noop libboost_stacktrace_windbg libboost_stacktrace_windbg_cached libboost_unit_test_framework bcrypt)
set(CONAN_SYSTEM_LIBS_BOOST )
set(CONAN_FRAMEWORKS_BOOST )
set(CONAN_FRAMEWORKS_FOUND_BOOST "")  # Will be filled later
set(CONAN_DEFINES_BOOST "-DBOOST_ALL_NO_LIB")
set(CONAN_BUILD_MODULES_PATHS_BOOST )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_BOOST "BOOST_ALL_NO_LIB")

set(CONAN_C_FLAGS_BOOST "")
set(CONAN_CXX_FLAGS_BOOST "")
set(CONAN_SHARED_LINKER_FLAGS_BOOST "")
set(CONAN_EXE_LINKER_FLAGS_BOOST "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_BOOST_LIST "")
set(CONAN_CXX_FLAGS_BOOST_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_BOOST_LIST "")
set(CONAN_EXE_LINKER_FLAGS_BOOST_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_BOOST "${CONAN_FRAMEWORKS_BOOST}")
# Append to aggregated values variable
set(CONAN_LIBS_BOOST ${CONAN_PKG_LIBS_BOOST} ${CONAN_SYSTEM_LIBS_BOOST} ${CONAN_FRAMEWORKS_FOUND_BOOST})


#################
###  OPENCV
#################
set(CONAN_OPENCV_ROOT "C:/.conan/b35745/1")
set(CONAN_INCLUDE_DIRS_OPENCV "C:/.conan/b35745/1/include")
set(CONAN_LIB_DIRS_OPENCV "C:/.conan/b35745/1/lib")
set(CONAN_BIN_DIRS_OPENCV )
set(CONAN_RES_DIRS_OPENCV "C:/.conan/b35745/1/res")
set(CONAN_SRC_DIRS_OPENCV )
set(CONAN_BUILD_DIRS_OPENCV "C:/.conan/b35745/1/")
set(CONAN_FRAMEWORK_DIRS_OPENCV )
set(CONAN_LIBS_OPENCV opencv_stitching411d opencv_photo411d opencv_video411d opencv_ml411d opencv_calib3d411d opencv_features2d411d opencv_highgui411d opencv_videoio411d opencv_flann411d opencv_imgcodecs411d opencv_objdetect411d opencv_dnn411d opencv_imgproc411d opencv_core411d opencv_gapi411d Vfw32 ade quircd)
set(CONAN_PKG_LIBS_OPENCV opencv_stitching411d opencv_photo411d opencv_video411d opencv_ml411d opencv_calib3d411d opencv_features2d411d opencv_highgui411d opencv_videoio411d opencv_flann411d opencv_imgcodecs411d opencv_objdetect411d opencv_dnn411d opencv_imgproc411d opencv_core411d opencv_gapi411d Vfw32 ade quircd)
set(CONAN_SYSTEM_LIBS_OPENCV )
set(CONAN_FRAMEWORKS_OPENCV )
set(CONAN_FRAMEWORKS_FOUND_OPENCV "")  # Will be filled later
set(CONAN_DEFINES_OPENCV )
set(CONAN_BUILD_MODULES_PATHS_OPENCV )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENCV )

set(CONAN_C_FLAGS_OPENCV "")
set(CONAN_CXX_FLAGS_OPENCV "")
set(CONAN_SHARED_LINKER_FLAGS_OPENCV "")
set(CONAN_EXE_LINKER_FLAGS_OPENCV "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENCV_LIST "")
set(CONAN_CXX_FLAGS_OPENCV_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENCV_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENCV_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENCV "${CONAN_FRAMEWORKS_OPENCV}")
# Append to aggregated values variable
set(CONAN_LIBS_OPENCV ${CONAN_PKG_LIBS_OPENCV} ${CONAN_SYSTEM_LIBS_OPENCV} ${CONAN_FRAMEWORKS_FOUND_OPENCV})


#################
###  BZIP2
#################
set(CONAN_BZIP2_ROOT "C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae")
set(CONAN_INCLUDE_DIRS_BZIP2 "C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/include")
set(CONAN_LIB_DIRS_BZIP2 "C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/lib")
set(CONAN_BIN_DIRS_BZIP2 "C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/bin")
set(CONAN_RES_DIRS_BZIP2 )
set(CONAN_SRC_DIRS_BZIP2 )
set(CONAN_BUILD_DIRS_BZIP2 "C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/")
set(CONAN_FRAMEWORK_DIRS_BZIP2 )
set(CONAN_LIBS_BZIP2 bz2)
set(CONAN_PKG_LIBS_BZIP2 bz2)
set(CONAN_SYSTEM_LIBS_BZIP2 )
set(CONAN_FRAMEWORKS_BZIP2 )
set(CONAN_FRAMEWORKS_FOUND_BZIP2 "")  # Will be filled later
set(CONAN_DEFINES_BZIP2 )
set(CONAN_BUILD_MODULES_PATHS_BZIP2 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_BZIP2 )

set(CONAN_C_FLAGS_BZIP2 "")
set(CONAN_CXX_FLAGS_BZIP2 "")
set(CONAN_SHARED_LINKER_FLAGS_BZIP2 "")
set(CONAN_EXE_LINKER_FLAGS_BZIP2 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_BZIP2_LIST "")
set(CONAN_CXX_FLAGS_BZIP2_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST "")
set(CONAN_EXE_LINKER_FLAGS_BZIP2_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_BZIP2 "${CONAN_FRAMEWORKS_BZIP2}")
# Append to aggregated values variable
set(CONAN_LIBS_BZIP2 ${CONAN_PKG_LIBS_BZIP2} ${CONAN_SYSTEM_LIBS_BZIP2} ${CONAN_FRAMEWORKS_FOUND_BZIP2})


#################
###  LIBTIFF
#################
set(CONAN_LIBTIFF_ROOT "C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234")
set(CONAN_INCLUDE_DIRS_LIBTIFF "C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/include")
set(CONAN_LIB_DIRS_LIBTIFF "C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/lib")
set(CONAN_BIN_DIRS_LIBTIFF )
set(CONAN_RES_DIRS_LIBTIFF )
set(CONAN_SRC_DIRS_LIBTIFF )
set(CONAN_BUILD_DIRS_LIBTIFF "C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/")
set(CONAN_FRAMEWORK_DIRS_LIBTIFF )
set(CONAN_LIBS_LIBTIFF tiffd tiffxxd)
set(CONAN_PKG_LIBS_LIBTIFF tiffd tiffxxd)
set(CONAN_SYSTEM_LIBS_LIBTIFF )
set(CONAN_FRAMEWORKS_LIBTIFF )
set(CONAN_FRAMEWORKS_FOUND_LIBTIFF "")  # Will be filled later
set(CONAN_DEFINES_LIBTIFF )
set(CONAN_BUILD_MODULES_PATHS_LIBTIFF )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBTIFF )

set(CONAN_C_FLAGS_LIBTIFF "")
set(CONAN_CXX_FLAGS_LIBTIFF "")
set(CONAN_SHARED_LINKER_FLAGS_LIBTIFF "")
set(CONAN_EXE_LINKER_FLAGS_LIBTIFF "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBTIFF_LIST "")
set(CONAN_CXX_FLAGS_LIBTIFF_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBTIFF_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBTIFF_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBTIFF "${CONAN_FRAMEWORKS_LIBTIFF}")
# Append to aggregated values variable
set(CONAN_LIBS_LIBTIFF ${CONAN_PKG_LIBS_LIBTIFF} ${CONAN_SYSTEM_LIBS_LIBTIFF} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF})


#################
###  LIBWEBP
#################
set(CONAN_LIBWEBP_ROOT "C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540")
set(CONAN_INCLUDE_DIRS_LIBWEBP "C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540/include")
set(CONAN_LIB_DIRS_LIBWEBP "C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540/lib")
set(CONAN_BIN_DIRS_LIBWEBP )
set(CONAN_RES_DIRS_LIBWEBP )
set(CONAN_SRC_DIRS_LIBWEBP )
set(CONAN_BUILD_DIRS_LIBWEBP "C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540/")
set(CONAN_FRAMEWORK_DIRS_LIBWEBP )
set(CONAN_LIBS_LIBWEBP webpmux webpdemux webpdecoder webp)
set(CONAN_PKG_LIBS_LIBWEBP webpmux webpdemux webpdecoder webp)
set(CONAN_SYSTEM_LIBS_LIBWEBP )
set(CONAN_FRAMEWORKS_LIBWEBP )
set(CONAN_FRAMEWORKS_FOUND_LIBWEBP "")  # Will be filled later
set(CONAN_DEFINES_LIBWEBP )
set(CONAN_BUILD_MODULES_PATHS_LIBWEBP )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBWEBP )

set(CONAN_C_FLAGS_LIBWEBP "")
set(CONAN_CXX_FLAGS_LIBWEBP "")
set(CONAN_SHARED_LINKER_FLAGS_LIBWEBP "")
set(CONAN_EXE_LINKER_FLAGS_LIBWEBP "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBWEBP_LIST "")
set(CONAN_CXX_FLAGS_LIBWEBP_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBWEBP_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBWEBP_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBWEBP "${CONAN_FRAMEWORKS_LIBWEBP}")
# Append to aggregated values variable
set(CONAN_LIBS_LIBWEBP ${CONAN_PKG_LIBS_LIBWEBP} ${CONAN_SYSTEM_LIBS_LIBWEBP} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP})


#################
###  LIBPNG
#################
set(CONAN_LIBPNG_ROOT "C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234")
set(CONAN_INCLUDE_DIRS_LIBPNG "C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/include")
set(CONAN_LIB_DIRS_LIBPNG "C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/lib")
set(CONAN_BIN_DIRS_LIBPNG )
set(CONAN_RES_DIRS_LIBPNG )
set(CONAN_SRC_DIRS_LIBPNG )
set(CONAN_BUILD_DIRS_LIBPNG "C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/")
set(CONAN_FRAMEWORK_DIRS_LIBPNG )
set(CONAN_LIBS_LIBPNG libpng16d)
set(CONAN_PKG_LIBS_LIBPNG libpng16d)
set(CONAN_SYSTEM_LIBS_LIBPNG )
set(CONAN_FRAMEWORKS_LIBPNG )
set(CONAN_FRAMEWORKS_FOUND_LIBPNG "")  # Will be filled later
set(CONAN_DEFINES_LIBPNG )
set(CONAN_BUILD_MODULES_PATHS_LIBPNG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBPNG )

set(CONAN_C_FLAGS_LIBPNG "")
set(CONAN_CXX_FLAGS_LIBPNG "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBPNG_LIST "")
set(CONAN_CXX_FLAGS_LIBPNG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBPNG "${CONAN_FRAMEWORKS_LIBPNG}")
# Append to aggregated values variable
set(CONAN_LIBS_LIBPNG ${CONAN_PKG_LIBS_LIBPNG} ${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG})


#################
###  JASPER
#################
set(CONAN_JASPER_ROOT "C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72")
set(CONAN_INCLUDE_DIRS_JASPER "C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72/include")
set(CONAN_LIB_DIRS_JASPER "C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72/lib")
set(CONAN_BIN_DIRS_JASPER )
set(CONAN_RES_DIRS_JASPER )
set(CONAN_SRC_DIRS_JASPER )
set(CONAN_BUILD_DIRS_JASPER "C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72/")
set(CONAN_FRAMEWORK_DIRS_JASPER )
set(CONAN_LIBS_JASPER jasper)
set(CONAN_PKG_LIBS_JASPER jasper)
set(CONAN_SYSTEM_LIBS_JASPER )
set(CONAN_FRAMEWORKS_JASPER )
set(CONAN_FRAMEWORKS_FOUND_JASPER "")  # Will be filled later
set(CONAN_DEFINES_JASPER )
set(CONAN_BUILD_MODULES_PATHS_JASPER )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_JASPER )

set(CONAN_C_FLAGS_JASPER "")
set(CONAN_CXX_FLAGS_JASPER "")
set(CONAN_SHARED_LINKER_FLAGS_JASPER "")
set(CONAN_EXE_LINKER_FLAGS_JASPER "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_JASPER_LIST "")
set(CONAN_CXX_FLAGS_JASPER_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_JASPER_LIST "")
set(CONAN_EXE_LINKER_FLAGS_JASPER_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_JASPER "${CONAN_FRAMEWORKS_JASPER}")
# Append to aggregated values variable
set(CONAN_LIBS_JASPER ${CONAN_PKG_LIBS_JASPER} ${CONAN_SYSTEM_LIBS_JASPER} ${CONAN_FRAMEWORKS_FOUND_JASPER})


#################
###  OPENEXR
#################
set(CONAN_OPENEXR_ROOT "C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889")
set(CONAN_INCLUDE_DIRS_OPENEXR "C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/include/OpenEXR"
			"C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/include")
set(CONAN_LIB_DIRS_OPENEXR "C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/lib")
set(CONAN_BIN_DIRS_OPENEXR )
set(CONAN_RES_DIRS_OPENEXR )
set(CONAN_SRC_DIRS_OPENEXR )
set(CONAN_BUILD_DIRS_OPENEXR "C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/")
set(CONAN_FRAMEWORK_DIRS_OPENEXR )
set(CONAN_LIBS_OPENEXR IlmImf-2_3_s_d IlmImfUtil-2_3_s_d IlmThread-2_3_s_d Iex-2_3_s_d IexMath-2_3_s_d Imath-2_3_s_d Half-2_3_s_d)
set(CONAN_PKG_LIBS_OPENEXR IlmImf-2_3_s_d IlmImfUtil-2_3_s_d IlmThread-2_3_s_d Iex-2_3_s_d IexMath-2_3_s_d Imath-2_3_s_d Half-2_3_s_d)
set(CONAN_SYSTEM_LIBS_OPENEXR )
set(CONAN_FRAMEWORKS_OPENEXR )
set(CONAN_FRAMEWORKS_FOUND_OPENEXR "")  # Will be filled later
set(CONAN_DEFINES_OPENEXR )
set(CONAN_BUILD_MODULES_PATHS_OPENEXR )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENEXR )

set(CONAN_C_FLAGS_OPENEXR "")
set(CONAN_CXX_FLAGS_OPENEXR "")
set(CONAN_SHARED_LINKER_FLAGS_OPENEXR "")
set(CONAN_EXE_LINKER_FLAGS_OPENEXR "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENEXR_LIST "")
set(CONAN_CXX_FLAGS_OPENEXR_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENEXR_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENEXR_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENEXR "${CONAN_FRAMEWORKS_OPENEXR}")
# Append to aggregated values variable
set(CONAN_LIBS_OPENEXR ${CONAN_PKG_LIBS_OPENEXR} ${CONAN_SYSTEM_LIBS_OPENEXR} ${CONAN_FRAMEWORKS_FOUND_OPENEXR})


#################
###  PROTOBUF
#################
set(CONAN_PROTOBUF_ROOT "C:/.conan/4ee4b7/1")
set(CONAN_INCLUDE_DIRS_PROTOBUF "C:/.conan/4ee4b7/1/include")
set(CONAN_LIB_DIRS_PROTOBUF "C:/.conan/4ee4b7/1/lib")
set(CONAN_BIN_DIRS_PROTOBUF )
set(CONAN_RES_DIRS_PROTOBUF )
set(CONAN_SRC_DIRS_PROTOBUF )
set(CONAN_BUILD_DIRS_PROTOBUF "C:/.conan/4ee4b7/1/")
set(CONAN_FRAMEWORK_DIRS_PROTOBUF )
set(CONAN_LIBS_PROTOBUF libprotobufd libprotocd)
set(CONAN_PKG_LIBS_PROTOBUF libprotobufd libprotocd)
set(CONAN_SYSTEM_LIBS_PROTOBUF )
set(CONAN_FRAMEWORKS_PROTOBUF )
set(CONAN_FRAMEWORKS_FOUND_PROTOBUF "")  # Will be filled later
set(CONAN_DEFINES_PROTOBUF )
set(CONAN_BUILD_MODULES_PATHS_PROTOBUF )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PROTOBUF )

set(CONAN_C_FLAGS_PROTOBUF "")
set(CONAN_CXX_FLAGS_PROTOBUF "")
set(CONAN_SHARED_LINKER_FLAGS_PROTOBUF "")
set(CONAN_EXE_LINKER_FLAGS_PROTOBUF "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PROTOBUF_LIST "")
set(CONAN_CXX_FLAGS_PROTOBUF_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PROTOBUF_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PROTOBUF_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PROTOBUF "${CONAN_FRAMEWORKS_PROTOBUF}")
# Append to aggregated values variable
set(CONAN_LIBS_PROTOBUF ${CONAN_PKG_LIBS_PROTOBUF} ${CONAN_SYSTEM_LIBS_PROTOBUF} ${CONAN_FRAMEWORKS_FOUND_PROTOBUF})


#################
###  EIGEN3
#################
set(CONAN_EIGEN3_ROOT "C:/Users/smirn/.conan/data/eigen/3.3.7/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_EIGEN3 "C:/Users/smirn/.conan/data/eigen/3.3.7/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/eigen3")
set(CONAN_LIB_DIRS_EIGEN3 )
set(CONAN_BIN_DIRS_EIGEN3 )
set(CONAN_RES_DIRS_EIGEN3 )
set(CONAN_SRC_DIRS_EIGEN3 )
set(CONAN_BUILD_DIRS_EIGEN3 "C:/Users/smirn/.conan/data/eigen/3.3.7/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_EIGEN3 )
set(CONAN_LIBS_EIGEN3 )
set(CONAN_PKG_LIBS_EIGEN3 )
set(CONAN_SYSTEM_LIBS_EIGEN3 )
set(CONAN_FRAMEWORKS_EIGEN3 )
set(CONAN_FRAMEWORKS_FOUND_EIGEN3 "")  # Will be filled later
set(CONAN_DEFINES_EIGEN3 )
set(CONAN_BUILD_MODULES_PATHS_EIGEN3 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_EIGEN3 )

set(CONAN_C_FLAGS_EIGEN3 "")
set(CONAN_CXX_FLAGS_EIGEN3 "")
set(CONAN_SHARED_LINKER_FLAGS_EIGEN3 "")
set(CONAN_EXE_LINKER_FLAGS_EIGEN3 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_EIGEN3_LIST "")
set(CONAN_CXX_FLAGS_EIGEN3_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_EIGEN3_LIST "")
set(CONAN_EXE_LINKER_FLAGS_EIGEN3_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_EIGEN3 "${CONAN_FRAMEWORKS_EIGEN3}")
# Append to aggregated values variable
set(CONAN_LIBS_EIGEN3 ${CONAN_PKG_LIBS_EIGEN3} ${CONAN_SYSTEM_LIBS_EIGEN3} ${CONAN_FRAMEWORKS_FOUND_EIGEN3})


#################
###  ZLIB
#################
set(CONAN_ZLIB_ROOT "C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1")
set(CONAN_INCLUDE_DIRS_ZLIB "C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1/include")
set(CONAN_LIB_DIRS_ZLIB "C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1/lib")
set(CONAN_BIN_DIRS_ZLIB )
set(CONAN_RES_DIRS_ZLIB )
set(CONAN_SRC_DIRS_ZLIB )
set(CONAN_BUILD_DIRS_ZLIB "C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1/")
set(CONAN_FRAMEWORK_DIRS_ZLIB )
set(CONAN_LIBS_ZLIB zlib)
set(CONAN_PKG_LIBS_ZLIB zlib)
set(CONAN_SYSTEM_LIBS_ZLIB )
set(CONAN_FRAMEWORKS_ZLIB )
set(CONAN_FRAMEWORKS_FOUND_ZLIB "")  # Will be filled later
set(CONAN_DEFINES_ZLIB )
set(CONAN_BUILD_MODULES_PATHS_ZLIB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ZLIB )

set(CONAN_C_FLAGS_ZLIB "")
set(CONAN_CXX_FLAGS_ZLIB "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ZLIB_LIST "")
set(CONAN_CXX_FLAGS_ZLIB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ZLIB "${CONAN_FRAMEWORKS_ZLIB}")
# Append to aggregated values variable
set(CONAN_LIBS_ZLIB ${CONAN_PKG_LIBS_ZLIB} ${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB})


#################
###  LIBJPEG
#################
set(CONAN_LIBJPEG_ROOT "C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1")
set(CONAN_INCLUDE_DIRS_LIBJPEG "C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1/include")
set(CONAN_LIB_DIRS_LIBJPEG "C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1/lib")
set(CONAN_BIN_DIRS_LIBJPEG )
set(CONAN_RES_DIRS_LIBJPEG )
set(CONAN_SRC_DIRS_LIBJPEG )
set(CONAN_BUILD_DIRS_LIBJPEG "C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1/")
set(CONAN_FRAMEWORK_DIRS_LIBJPEG )
set(CONAN_LIBS_LIBJPEG libjpeg)
set(CONAN_PKG_LIBS_LIBJPEG libjpeg)
set(CONAN_SYSTEM_LIBS_LIBJPEG )
set(CONAN_FRAMEWORKS_LIBJPEG )
set(CONAN_FRAMEWORKS_FOUND_LIBJPEG "")  # Will be filled later
set(CONAN_DEFINES_LIBJPEG )
set(CONAN_BUILD_MODULES_PATHS_LIBJPEG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBJPEG )

set(CONAN_C_FLAGS_LIBJPEG "")
set(CONAN_CXX_FLAGS_LIBJPEG "")
set(CONAN_SHARED_LINKER_FLAGS_LIBJPEG "")
set(CONAN_EXE_LINKER_FLAGS_LIBJPEG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBJPEG_LIST "")
set(CONAN_CXX_FLAGS_LIBJPEG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBJPEG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBJPEG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBJPEG "${CONAN_FRAMEWORKS_LIBJPEG}")
# Append to aggregated values variable
set(CONAN_LIBS_LIBJPEG ${CONAN_PKG_LIBS_LIBJPEG} ${CONAN_SYSTEM_LIBS_LIBJPEG} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG})


### Definition of global aggregated variables ###

set(CONAN_PACKAGE_NAME None)
set(CONAN_PACKAGE_VERSION None)

set(CONAN_SETTINGS_ARCH "x86_64")
set(CONAN_SETTINGS_ARCH_BUILD "x86_64")
set(CONAN_SETTINGS_BUILD_TYPE "Debug")
set(CONAN_SETTINGS_COMPILER "Visual Studio")
set(CONAN_SETTINGS_COMPILER_RUNTIME "MDd")
set(CONAN_SETTINGS_COMPILER_VERSION "15")
set(CONAN_SETTINGS_OS "Windows")
set(CONAN_SETTINGS_OS_BUILD "Windows")

set(CONAN_DEPENDENCIES boost opencv bzip2 libtiff libwebp libpng jasper openexr protobuf eigen zlib libjpeg)
# Storing original command line args (CMake helper) flags
set(CONAN_CMD_CXX_FLAGS ${CONAN_CXX_FLAGS})

set(CONAN_CMD_SHARED_LINKER_FLAGS ${CONAN_SHARED_LINKER_FLAGS})
set(CONAN_CMD_C_FLAGS ${CONAN_C_FLAGS})
# Defining accumulated conan variables for all deps

set(CONAN_INCLUDE_DIRS "C:/.conan/bb0a72/1/include"
			"C:/.conan/b35745/1/include"
			"C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/include"
			"C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/include"
			"C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540/include"
			"C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/include"
			"C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72/include"
			"C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/include/OpenEXR"
			"C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/include"
			"C:/.conan/4ee4b7/1/include"
			"C:/Users/smirn/.conan/data/eigen/3.3.7/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/eigen3"
			"C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1/include"
			"C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1/include" ${CONAN_INCLUDE_DIRS})
set(CONAN_LIB_DIRS "C:/.conan/bb0a72/1/lib"
			"C:/.conan/b35745/1/lib"
			"C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/lib"
			"C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/lib"
			"C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540/lib"
			"C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/lib"
			"C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72/lib"
			"C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/lib"
			"C:/.conan/4ee4b7/1/lib"
			"C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1/lib"
			"C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1/lib" ${CONAN_LIB_DIRS})
set(CONAN_BIN_DIRS "C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/bin" ${CONAN_BIN_DIRS})
set(CONAN_RES_DIRS "C:/.conan/b35745/1/res" ${CONAN_RES_DIRS})
set(CONAN_FRAMEWORK_DIRS  ${CONAN_FRAMEWORK_DIRS})
set(CONAN_LIBS libboost_wave libboost_container libboost_contract libboost_exception libboost_graph libboost_iostreams libboost_locale libboost_log libboost_program_options libboost_random libboost_regex libboost_serialization libboost_wserialization libboost_coroutine libboost_fiber libboost_context libboost_timer libboost_thread libboost_chrono libboost_date_time libboost_atomic libboost_filesystem libboost_system libboost_type_erasure libboost_log_setup libboost_math_c99 libboost_math_c99f libboost_math_c99l libboost_math_tr1 libboost_math_tr1f libboost_math_tr1l libboost_stacktrace_noop libboost_stacktrace_windbg libboost_stacktrace_windbg_cached libboost_unit_test_framework bcrypt opencv_stitching411d opencv_photo411d opencv_video411d opencv_ml411d opencv_calib3d411d opencv_features2d411d opencv_highgui411d opencv_videoio411d opencv_flann411d opencv_imgcodecs411d opencv_objdetect411d opencv_dnn411d opencv_imgproc411d opencv_core411d opencv_gapi411d Vfw32 ade quircd bz2 tiffd tiffxxd webpmux webpdemux webpdecoder webp libpng16d jasper IlmImf-2_3_s_d IlmImfUtil-2_3_s_d IlmThread-2_3_s_d Iex-2_3_s_d IexMath-2_3_s_d Imath-2_3_s_d Half-2_3_s_d libprotobufd libprotocd zlib libjpeg ${CONAN_LIBS})
set(CONAN_PKG_LIBS libboost_wave libboost_container libboost_contract libboost_exception libboost_graph libboost_iostreams libboost_locale libboost_log libboost_program_options libboost_random libboost_regex libboost_serialization libboost_wserialization libboost_coroutine libboost_fiber libboost_context libboost_timer libboost_thread libboost_chrono libboost_date_time libboost_atomic libboost_filesystem libboost_system libboost_type_erasure libboost_log_setup libboost_math_c99 libboost_math_c99f libboost_math_c99l libboost_math_tr1 libboost_math_tr1f libboost_math_tr1l libboost_stacktrace_noop libboost_stacktrace_windbg libboost_stacktrace_windbg_cached libboost_unit_test_framework bcrypt opencv_stitching411d opencv_photo411d opencv_video411d opencv_ml411d opencv_calib3d411d opencv_features2d411d opencv_highgui411d opencv_videoio411d opencv_flann411d opencv_imgcodecs411d opencv_objdetect411d opencv_dnn411d opencv_imgproc411d opencv_core411d opencv_gapi411d Vfw32 ade quircd bz2 tiffd tiffxxd webpmux webpdemux webpdecoder webp libpng16d jasper IlmImf-2_3_s_d IlmImfUtil-2_3_s_d IlmThread-2_3_s_d Iex-2_3_s_d IexMath-2_3_s_d Imath-2_3_s_d Half-2_3_s_d libprotobufd libprotocd zlib libjpeg ${CONAN_PKG_LIBS})
set(CONAN_SYSTEM_LIBS  ${CONAN_SYSTEM_LIBS})
set(CONAN_FRAMEWORKS  ${CONAN_FRAMEWORKS})
set(CONAN_FRAMEWORKS_FOUND "")  # Will be filled later
set(CONAN_DEFINES "-DBOOST_ALL_NO_LIB" ${CONAN_DEFINES})
set(CONAN_BUILD_MODULES_PATHS  ${CONAN_BUILD_MODULES_PATHS})
set(CONAN_CMAKE_MODULE_PATH "C:/.conan/bb0a72/1/"
			"C:/.conan/b35745/1/"
			"C:/Users/smirn/.conan/data/bzip2/1.0.8/conan/stable/package/5c382ca84120276840c8074ab1851697636fb8ae/"
			"C:/Users/smirn/.conan/data/libtiff/4.0.9/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/"
			"C:/Users/smirn/.conan/data/libwebp/1.0.3/_/_/package/cc3ca8804df71811388ba344bb754fcfc3a6d540/"
			"C:/Users/smirn/.conan/data/libpng/1.6.37/_/_/package/009a50ddeb47afbc9361cbc63650560c127e1234/"
			"C:/Users/smirn/.conan/data/jasper/2.0.14/_/_/package/78d8505b0977f10821c001074d3304c25671ea72/"
			"C:/Users/smirn/.conan/data/openexr/2.3.0/_/_/package/5b897370b869bd0a8fb2a9960ac8725942daf889/"
			"C:/.conan/4ee4b7/1/"
			"C:/Users/smirn/.conan/data/eigen/3.3.7/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"C:/Users/smirn/.conan/data/zlib/1.2.11/conan/stable/package/8cf01e2f50fcd6b63525e70584df0326550364e1/"
			"C:/Users/smirn/.conan/data/libjpeg/9c/_/_/package/8cf01e2f50fcd6b63525e70584df0326550364e1/" ${CONAN_CMAKE_MODULE_PATH})

set(CONAN_CXX_FLAGS " ${CONAN_CXX_FLAGS}")
set(CONAN_SHARED_LINKER_FLAGS " ${CONAN_SHARED_LINKER_FLAGS}")
set(CONAN_EXE_LINKER_FLAGS " ${CONAN_EXE_LINKER_FLAGS}")
set(CONAN_C_FLAGS " ${CONAN_C_FLAGS}")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND "${CONAN_FRAMEWORKS}")
# Append to aggregated values variable: Use CONAN_LIBS instead of CONAN_PKG_LIBS to include user appended vars
set(CONAN_LIBS ${CONAN_LIBS} ${CONAN_SYSTEM_LIBS} ${CONAN_FRAMEWORKS_FOUND})


###  Definition of macros and functions ###

macro(conan_define_targets)
    if(${CMAKE_VERSION} VERSION_LESS "3.1.2")
        message(FATAL_ERROR "TARGETS not supported by your CMake version!")
    endif()  # CMAKE > 3.x
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CONAN_CMD_CXX_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CONAN_CMD_C_FLAGS}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${CONAN_CMD_SHARED_LINKER_FLAGS}")


    set(_CONAN_PKG_LIBS_BOOST_DEPENDENCIES "${CONAN_SYSTEM_LIBS_BOOST} ${CONAN_FRAMEWORKS_FOUND_BOOST} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BOOST_DEPENDENCIES "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BOOST}" "${CONAN_LIB_DIRS_BOOST}"
                                  CONAN_PACKAGE_TARGETS_BOOST "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES}"
                                  "" boost)
    set(_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_BOOST_DEBUG} ${CONAN_FRAMEWORKS_FOUND_BOOST_DEBUG} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BOOST_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BOOST_DEBUG}" "${CONAN_LIB_DIRS_BOOST_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_BOOST_DEBUG "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_DEBUG}"
                                  "debug" boost)
    set(_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_BOOST_RELEASE} ${CONAN_FRAMEWORKS_FOUND_BOOST_RELEASE} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BOOST_RELEASE}" "${CONAN_LIB_DIRS_BOOST_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_BOOST_RELEASE "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELEASE}"
                                  "release" boost)
    set(_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_BOOST_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_BOOST_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BOOST_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_BOOST_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_BOOST_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" boost)
    set(_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_BOOST_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_BOOST_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BOOST_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BOOST_MINSIZEREL}" "${CONAN_LIB_DIRS_BOOST_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_BOOST_MINSIZEREL "${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" boost)

    add_library(CONAN_PKG::boost INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::boost PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_BOOST} ${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_BOOST_LIST} ${CONAN_EXE_LINKER_FLAGS_BOOST_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_BOOST_RELEASE} ${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_BOOST_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_BOOST_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_BOOST_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_BOOST_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_BOOST_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_BOOST_MINSIZEREL} ${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_BOOST_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_BOOST_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_BOOST_DEBUG} ${_CONAN_PKG_LIBS_BOOST_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_BOOST_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_BOOST_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::boost PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_BOOST}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_BOOST_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_BOOST_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_BOOST_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_BOOST_DEBUG}>)
    set_property(TARGET CONAN_PKG::boost PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_BOOST}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_BOOST_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_BOOST_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_BOOST_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_BOOST_DEBUG}>)
    set_property(TARGET CONAN_PKG::boost PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_BOOST_LIST} ${CONAN_CXX_FLAGS_BOOST_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_BOOST_RELEASE_LIST} ${CONAN_CXX_FLAGS_BOOST_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_BOOST_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_BOOST_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_BOOST_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_BOOST_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_BOOST_DEBUG_LIST}  ${CONAN_CXX_FLAGS_BOOST_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENCV} ${CONAN_FRAMEWORKS_FOUND_OPENCV} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::libtiff CONAN_PKG::libwebp CONAN_PKG::libpng CONAN_PKG::jasper CONAN_PKG::openexr CONAN_PKG::protobuf CONAN_PKG::Eigen3")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENCV_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENCV}" "${CONAN_LIB_DIRS_OPENCV}"
                                  CONAN_PACKAGE_TARGETS_OPENCV "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES}"
                                  "" opencv)
    set(_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENCV_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENCV_DEBUG} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::libtiff CONAN_PKG::libwebp CONAN_PKG::libpng CONAN_PKG::jasper CONAN_PKG::openexr CONAN_PKG::protobuf CONAN_PKG::Eigen3")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENCV_DEBUG}" "${CONAN_LIB_DIRS_OPENCV_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENCV_DEBUG "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_DEBUG}"
                                  "debug" opencv)
    set(_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENCV_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENCV_RELEASE} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::libtiff CONAN_PKG::libwebp CONAN_PKG::libpng CONAN_PKG::jasper CONAN_PKG::openexr CONAN_PKG::protobuf CONAN_PKG::Eigen3")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENCV_RELEASE}" "${CONAN_LIB_DIRS_OPENCV_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENCV_RELEASE "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELEASE}"
                                  "release" opencv)
    set(_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENCV_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENCV_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::libtiff CONAN_PKG::libwebp CONAN_PKG::libpng CONAN_PKG::jasper CONAN_PKG::openexr CONAN_PKG::protobuf CONAN_PKG::Eigen3")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENCV_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENCV_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENCV_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" opencv)
    set(_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENCV_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENCV_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::libtiff CONAN_PKG::libwebp CONAN_PKG::libpng CONAN_PKG::jasper CONAN_PKG::openexr CONAN_PKG::protobuf CONAN_PKG::Eigen3")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENCV_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENCV_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENCV_MINSIZEREL "${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" opencv)

    add_library(CONAN_PKG::opencv INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::opencv PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENCV} ${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_OPENCV_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENCV_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENCV_RELEASE} ${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_OPENCV_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENCV_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENCV_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_OPENCV_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENCV_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENCV_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_OPENCV_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENCV_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENCV_DEBUG} ${_CONAN_PKG_LIBS_OPENCV_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_OPENCV_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENCV_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::opencv PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENCV}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENCV_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENCV_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENCV_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENCV_DEBUG}>)
    set_property(TARGET CONAN_PKG::opencv PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENCV}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENCV_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENCV_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENCV_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENCV_DEBUG}>)
    set_property(TARGET CONAN_PKG::opencv PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENCV_LIST} ${CONAN_CXX_FLAGS_OPENCV_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENCV_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENCV_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENCV_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENCV_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENCV_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENCV_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENCV_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENCV_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES "${CONAN_SYSTEM_LIBS_BZIP2} ${CONAN_FRAMEWORKS_FOUND_BZIP2} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2}" "${CONAN_LIB_DIRS_BZIP2}"
                                  CONAN_PACKAGE_TARGETS_BZIP2 "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES}"
                                  "" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_BZIP2_DEBUG} ${CONAN_FRAMEWORKS_FOUND_BZIP2_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_DEBUG}" "${CONAN_LIB_DIRS_BZIP2_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_DEBUG "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG}"
                                  "debug" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_BZIP2_RELEASE} ${CONAN_FRAMEWORKS_FOUND_BZIP2_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_RELEASE}" "${CONAN_LIB_DIRS_BZIP2_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_RELEASE "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE}"
                                  "release" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_BZIP2_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_BZIP2_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_BZIP2_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_BZIP2_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_BZIP2_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_MINSIZEREL}" "${CONAN_LIB_DIRS_BZIP2_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_MINSIZEREL "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" bzip2)

    add_library(CONAN_PKG::bzip2 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_BZIP2} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_BZIP2_RELEASE} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_BZIP2_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_BZIP2_MINSIZEREL} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_BZIP2_DEBUG} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_BZIP2}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_BZIP2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_BZIP2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_BZIP2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_BZIP2_DEBUG}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_BZIP2}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_BZIP2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_BZIP2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_BZIP2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_BZIP2_DEBUG}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_BZIP2_LIST} ${CONAN_CXX_FLAGS_BZIP2_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_BZIP2_RELEASE_LIST} ${CONAN_CXX_FLAGS_BZIP2_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_BZIP2_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_BZIP2_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_BZIP2_DEBUG_LIST}  ${CONAN_CXX_FLAGS_BZIP2_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBTIFF} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF}" "${CONAN_LIB_DIRS_LIBTIFF}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES}"
                                  "" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBTIFF_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_DEBUG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_DEBUG}" "${CONAN_LIB_DIRS_LIBTIFF_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_DEBUG "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG}"
                                  "debug" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBTIFF_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_RELEASE} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_RELEASE}" "${CONAN_LIB_DIRS_LIBTIFF_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_RELEASE "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE}"
                                  "release" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBTIFF_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_RELWITHDEBINFO} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBTIFF_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBTIFF_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_MINSIZEREL} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBTIFF_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_MINSIZEREL "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libtiff)

    add_library(CONAN_PKG::libtiff INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBTIFF} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBTIFF_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBTIFF_RELEASE} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBTIFF_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBTIFF_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBTIFF_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBTIFF_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBTIFF_DEBUG} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBTIFF_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBTIFF}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBTIFF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBTIFF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBTIFF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBTIFF_DEBUG}>)
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBTIFF}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_DEBUG}>)
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBTIFF_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBTIFF_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBTIFF_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBTIFF_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBTIFF_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBWEBP} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP}" "${CONAN_LIB_DIRS_LIBWEBP}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES}"
                                  "" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBWEBP_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_DEBUG}" "${CONAN_LIB_DIRS_LIBWEBP_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_DEBUG "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG}"
                                  "debug" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBWEBP_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_RELEASE}" "${CONAN_LIB_DIRS_LIBWEBP_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_RELEASE "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE}"
                                  "release" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBWEBP_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBWEBP_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBWEBP_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBWEBP_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_MINSIZEREL "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libwebp)

    add_library(CONAN_PKG::libwebp INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBWEBP} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBWEBP_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBWEBP_RELEASE} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBWEBP_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBWEBP_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBWEBP_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBWEBP_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBWEBP_DEBUG} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBWEBP_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBWEBP}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBWEBP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBWEBP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBWEBP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBWEBP_DEBUG}>)
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBWEBP}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_DEBUG}>)
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBWEBP_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBWEBP_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBWEBP_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBWEBP_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBWEBP_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG}" "${CONAN_LIB_DIRS_LIBPNG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}"
                                  "" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBPNG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_DEBUG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_DEBUG}" "${CONAN_LIB_DIRS_LIBPNG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}"
                                  "debug" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBPNG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_RELEASE} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_RELEASE}" "${CONAN_LIB_DIRS_LIBPNG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}"
                                  "release" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBPNG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_RELWITHDEBINFO} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBPNG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBPNG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_MINSIZEREL} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBPNG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libpng)

    add_library(CONAN_PKG::libpng INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBPNG} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBPNG_LIST} ${CONAN_CXX_FLAGS_LIBPNG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBPNG_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBPNG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBPNG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBPNG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBPNG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES "${CONAN_SYSTEM_LIBS_JASPER} ${CONAN_FRAMEWORKS_FOUND_JASPER} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER}" "${CONAN_LIB_DIRS_JASPER}"
                                  CONAN_PACKAGE_TARGETS_JASPER "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES}"
                                  "" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_JASPER_DEBUG} ${CONAN_FRAMEWORKS_FOUND_JASPER_DEBUG} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_DEBUG}" "${CONAN_LIB_DIRS_JASPER_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_JASPER_DEBUG "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG}"
                                  "debug" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_JASPER_RELEASE} ${CONAN_FRAMEWORKS_FOUND_JASPER_RELEASE} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_RELEASE}" "${CONAN_LIB_DIRS_JASPER_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_JASPER_RELEASE "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE}"
                                  "release" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_JASPER_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_JASPER_RELWITHDEBINFO} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_JASPER_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_JASPER_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_JASPER_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_JASPER_MINSIZEREL} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_MINSIZEREL}" "${CONAN_LIB_DIRS_JASPER_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_JASPER_MINSIZEREL "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" jasper)

    add_library(CONAN_PKG::jasper INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_JASPER} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_JASPER_LIST} ${CONAN_EXE_LINKER_FLAGS_JASPER_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_JASPER_RELEASE} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_JASPER_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_JASPER_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_JASPER_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_JASPER_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_JASPER_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_JASPER_MINSIZEREL} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_JASPER_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_JASPER_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_JASPER_DEBUG} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_JASPER_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_JASPER_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_JASPER}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_JASPER_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_JASPER_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_JASPER_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_JASPER_DEBUG}>)
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_JASPER}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_JASPER_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_JASPER_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_JASPER_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_JASPER_DEBUG}>)
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_JASPER_LIST} ${CONAN_CXX_FLAGS_JASPER_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_JASPER_RELEASE_LIST} ${CONAN_CXX_FLAGS_JASPER_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_JASPER_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_JASPER_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_JASPER_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_JASPER_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_JASPER_DEBUG_LIST}  ${CONAN_CXX_FLAGS_JASPER_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENEXR} ${CONAN_FRAMEWORKS_FOUND_OPENEXR} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR}" "${CONAN_LIB_DIRS_OPENEXR}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES}"
                                  "" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENEXR_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_DEBUG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_DEBUG}" "${CONAN_LIB_DIRS_OPENEXR_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_DEBUG "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG}"
                                  "debug" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENEXR_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_RELEASE} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_RELEASE}" "${CONAN_LIB_DIRS_OPENEXR_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_RELEASE "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE}"
                                  "release" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENEXR_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_RELWITHDEBINFO} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENEXR_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENEXR_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_MINSIZEREL} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENEXR_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_MINSIZEREL "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" openexr)

    add_library(CONAN_PKG::openexr INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENEXR} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_OPENEXR_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENEXR_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENEXR_RELEASE} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_OPENEXR_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENEXR_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENEXR_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_OPENEXR_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENEXR_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENEXR_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_OPENEXR_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENEXR_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENEXR_DEBUG} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_OPENEXR_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENEXR_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENEXR}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENEXR_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENEXR_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENEXR_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENEXR_DEBUG}>)
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENEXR}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_DEBUG}>)
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENEXR_LIST} ${CONAN_CXX_FLAGS_OPENEXR_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENEXR_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENEXR_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENEXR_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENEXR_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENEXR_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENEXR_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENEXR_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENEXR_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PROTOBUF} ${CONAN_FRAMEWORKS_FOUND_PROTOBUF} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PROTOBUF}" "${CONAN_LIB_DIRS_PROTOBUF}"
                                  CONAN_PACKAGE_TARGETS_PROTOBUF "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES}"
                                  "" protobuf)
    set(_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PROTOBUF_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PROTOBUF_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PROTOBUF_DEBUG}" "${CONAN_LIB_DIRS_PROTOBUF_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PROTOBUF_DEBUG "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_DEBUG}"
                                  "debug" protobuf)
    set(_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PROTOBUF_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PROTOBUF_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PROTOBUF_RELEASE}" "${CONAN_LIB_DIRS_PROTOBUF_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PROTOBUF_RELEASE "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELEASE}"
                                  "release" protobuf)
    set(_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PROTOBUF_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PROTOBUF_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PROTOBUF_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PROTOBUF_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PROTOBUF_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" protobuf)
    set(_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PROTOBUF_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PROTOBUF_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PROTOBUF_MINSIZEREL}" "${CONAN_LIB_DIRS_PROTOBUF_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PROTOBUF_MINSIZEREL "${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" protobuf)

    add_library(CONAN_PKG::protobuf INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::protobuf PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PROTOBUF} ${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_PROTOBUF_LIST} ${CONAN_EXE_LINKER_FLAGS_PROTOBUF_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PROTOBUF_RELEASE} ${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_PROTOBUF_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_PROTOBUF_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PROTOBUF_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_PROTOBUF_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_PROTOBUF_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PROTOBUF_MINSIZEREL} ${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_PROTOBUF_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_PROTOBUF_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PROTOBUF_DEBUG} ${_CONAN_PKG_LIBS_PROTOBUF_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_PROTOBUF_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_PROTOBUF_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::protobuf PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PROTOBUF}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PROTOBUF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PROTOBUF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PROTOBUF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PROTOBUF_DEBUG}>)
    set_property(TARGET CONAN_PKG::protobuf PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PROTOBUF}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PROTOBUF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PROTOBUF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PROTOBUF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PROTOBUF_DEBUG}>)
    set_property(TARGET CONAN_PKG::protobuf PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PROTOBUF_LIST} ${CONAN_CXX_FLAGS_PROTOBUF_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PROTOBUF_RELEASE_LIST} ${CONAN_CXX_FLAGS_PROTOBUF_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PROTOBUF_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PROTOBUF_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PROTOBUF_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PROTOBUF_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PROTOBUF_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PROTOBUF_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES "${CONAN_SYSTEM_LIBS_EIGEN3} ${CONAN_FRAMEWORKS_FOUND_EIGEN3} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN3}" "${CONAN_LIB_DIRS_EIGEN3}"
                                  CONAN_PACKAGE_TARGETS_EIGEN3 "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES}"
                                  "" Eigen3)
    set(_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_EIGEN3_DEBUG} ${CONAN_FRAMEWORKS_FOUND_EIGEN3_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN3_DEBUG}" "${CONAN_LIB_DIRS_EIGEN3_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_EIGEN3_DEBUG "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_DEBUG}"
                                  "debug" Eigen3)
    set(_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_EIGEN3_RELEASE} ${CONAN_FRAMEWORKS_FOUND_EIGEN3_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN3_RELEASE}" "${CONAN_LIB_DIRS_EIGEN3_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_EIGEN3_RELEASE "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELEASE}"
                                  "release" Eigen3)
    set(_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_EIGEN3_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_EIGEN3_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN3_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_EIGEN3_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_EIGEN3_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" Eigen3)
    set(_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_EIGEN3_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_EIGEN3_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN3_MINSIZEREL}" "${CONAN_LIB_DIRS_EIGEN3_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_EIGEN3_MINSIZEREL "${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" Eigen3)

    add_library(CONAN_PKG::Eigen3 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::Eigen3 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_EIGEN3} ${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_EIGEN3_LIST} ${CONAN_EXE_LINKER_FLAGS_EIGEN3_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_EIGEN3_RELEASE} ${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_EIGEN3_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_EIGEN3_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_EIGEN3_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_EIGEN3_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_EIGEN3_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_EIGEN3_MINSIZEREL} ${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_EIGEN3_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_EIGEN3_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_EIGEN3_DEBUG} ${_CONAN_PKG_LIBS_EIGEN3_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_EIGEN3_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_EIGEN3_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::Eigen3 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_EIGEN3}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_EIGEN3_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_EIGEN3_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_EIGEN3_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_EIGEN3_DEBUG}>)
    set_property(TARGET CONAN_PKG::Eigen3 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_EIGEN3}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_EIGEN3_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_EIGEN3_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_EIGEN3_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_EIGEN3_DEBUG}>)
    set_property(TARGET CONAN_PKG::Eigen3 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_EIGEN3_LIST} ${CONAN_CXX_FLAGS_EIGEN3_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_EIGEN3_RELEASE_LIST} ${CONAN_CXX_FLAGS_EIGEN3_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_EIGEN3_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_EIGEN3_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_EIGEN3_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_EIGEN3_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_EIGEN3_DEBUG_LIST}  ${CONAN_CXX_FLAGS_EIGEN3_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB}" "${CONAN_LIB_DIRS_ZLIB}"
                                  CONAN_PACKAGE_TARGETS_ZLIB "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}"
                                  "" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ZLIB_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ZLIB_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_DEBUG}" "${CONAN_LIB_DIRS_ZLIB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_DEBUG "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}"
                                  "debug" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ZLIB_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ZLIB_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_RELEASE}" "${CONAN_LIB_DIRS_ZLIB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELEASE "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}"
                                  "release" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ZLIB_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ZLIB_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ZLIB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ZLIB_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ZLIB_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_MINSIZEREL}" "${CONAN_LIB_DIRS_ZLIB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" zlib)

    add_library(CONAN_PKG::zlib INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ZLIB} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ZLIB_RELEASE} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ZLIB_DEBUG} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ZLIB_LIST} ${CONAN_CXX_FLAGS_ZLIB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ZLIB_RELEASE_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ZLIB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ZLIB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ZLIB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ZLIB_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBJPEG} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG}" "${CONAN_LIB_DIRS_LIBJPEG}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES}"
                                  "" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBJPEG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_DEBUG}" "${CONAN_LIB_DIRS_LIBJPEG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_DEBUG "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG}"
                                  "debug" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBJPEG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_RELEASE}" "${CONAN_LIB_DIRS_LIBJPEG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_RELEASE "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE}"
                                  "release" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBJPEG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBJPEG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBJPEG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBJPEG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_MINSIZEREL "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libjpeg)

    add_library(CONAN_PKG::libjpeg INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBJPEG} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES} ${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBJPEG_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBJPEG_RELEASE} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBJPEG_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBJPEG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBJPEG_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBJPEG_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBJPEG_DEBUG} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBJPEG_DEBUG_LIST}>)
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBJPEG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBJPEG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBJPEG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBJPEG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBJPEG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBJPEG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBJPEG_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBJPEG_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBJPEG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBJPEG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBJPEG_DEBUG_LIST}>)

    set(CONAN_TARGETS CONAN_PKG::boost CONAN_PKG::opencv CONAN_PKG::bzip2 CONAN_PKG::libtiff CONAN_PKG::libwebp CONAN_PKG::libpng CONAN_PKG::jasper CONAN_PKG::openexr CONAN_PKG::protobuf CONAN_PKG::Eigen3 CONAN_PKG::zlib CONAN_PKG::libjpeg)

endmacro()


macro(conan_basic_setup)
    set(options TARGETS NO_OUTPUT_DIRS SKIP_RPATH KEEP_RPATHS SKIP_STD SKIP_FPIC)
    cmake_parse_arguments(ARGUMENTS "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

    if(CONAN_EXPORTED)
        conan_message(STATUS "Conan: called by CMake conan helper")
    endif()

    if(CONAN_IN_LOCAL_CACHE)
        conan_message(STATUS "Conan: called inside local cache")
    endif()

    if(NOT ARGUMENTS_NO_OUTPUT_DIRS)
        conan_message(STATUS "Conan: Adjusting output directories")
        conan_output_dirs_setup()
    endif()

    if(NOT ARGUMENTS_TARGETS)
        conan_message(STATUS "Conan: Using cmake global configuration")
        conan_global_flags()
    else()
        conan_message(STATUS "Conan: Using cmake targets configuration")
        conan_define_targets()
    endif()

    if(ARGUMENTS_SKIP_RPATH)
        # Change by "DEPRECATION" or "SEND_ERROR" when we are ready
        conan_message(WARNING "Conan: SKIP_RPATH is deprecated, it has been renamed to KEEP_RPATHS")
    endif()

    if(NOT ARGUMENTS_SKIP_RPATH AND NOT ARGUMENTS_KEEP_RPATHS)
        # Parameter has renamed, but we keep the compatibility with old SKIP_RPATH
        conan_set_rpath()
    endif()

    if(NOT ARGUMENTS_SKIP_STD)
        conan_set_std()
    endif()

    if(NOT ARGUMENTS_SKIP_FPIC)
        conan_set_fpic()
    endif()

    conan_check_compiler()
    conan_set_libcxx()
    conan_set_vs_runtime()
    conan_set_find_paths()
    conan_include_build_modules()
    conan_set_find_library_paths()
endmacro()


macro(conan_set_find_paths)
    # CMAKE_MODULE_PATH does not have Debug/Release config, but there are variables
    # CONAN_CMAKE_MODULE_PATH_DEBUG to be used by the consumer
    # CMake can find findXXX.cmake files in the root of packages
    set(CMAKE_MODULE_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_MODULE_PATH})

    # Make find_package() to work
    set(CMAKE_PREFIX_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_PREFIX_PATH})

    # Set the find root path (cross build)
    set(CMAKE_FIND_ROOT_PATH ${CONAN_CMAKE_FIND_ROOT_PATH} ${CMAKE_FIND_ROOT_PATH})
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
        set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
        set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
        set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE})
    endif()
endmacro()


macro(conan_set_find_library_paths)
    # CMAKE_INCLUDE_PATH, CMAKE_LIBRARY_PATH does not have Debug/Release config, but there are variables
    # CONAN_INCLUDE_DIRS_DEBUG/RELEASE CONAN_LIB_DIRS_DEBUG/RELEASE to be used by the consumer
    # For find_library
    set(CMAKE_INCLUDE_PATH ${CONAN_INCLUDE_DIRS} ${CMAKE_INCLUDE_PATH})
    set(CMAKE_LIBRARY_PATH ${CONAN_LIB_DIRS} ${CMAKE_LIBRARY_PATH})
endmacro()


macro(conan_set_vs_runtime)
    if(CONAN_LINK_RUNTIME)
        foreach(flag CMAKE_C_FLAGS_RELEASE CMAKE_CXX_FLAGS_RELEASE
                     CMAKE_C_FLAGS_RELWITHDEBINFO CMAKE_CXX_FLAGS_RELWITHDEBINFO
                     CMAKE_C_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_MINSIZEREL)
            if(DEFINED ${flag})
                string(REPLACE "/MD" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
            endif()
        endforeach()
        foreach(flag CMAKE_C_FLAGS_DEBUG CMAKE_CXX_FLAGS_DEBUG)
            if(DEFINED ${flag})
                string(REPLACE "/MDd" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
            endif()
        endforeach()
    endif()
endmacro()


macro(conan_flags_setup)
    # Macro maintained for backwards compatibility
    conan_set_find_library_paths()
    conan_global_flags()
    conan_set_rpath()
    conan_set_vs_runtime()
    conan_set_libcxx()
endmacro()


function(conan_message MESSAGE_OUTPUT)
    if(NOT CONAN_CMAKE_SILENT_OUTPUT)
        message(${ARGV${0}})
    endif()
endfunction()


function(conan_find_libraries_abs_path libraries package_libdir libraries_abs_path)
    foreach(_LIBRARY_NAME ${libraries})
        unset(CONAN_FOUND_LIBRARY CACHE)
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${CONAN_FOUND_LIBRARY})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
        endif()
    endforeach()
    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


function(conan_package_library_targets libraries package_libdir libraries_abs_path deps build_type package_name)
    unset(_CONAN_ACTUAL_TARGETS CACHE)
    unset(_CONAN_FOUND_SYSTEM_LIBS CACHE)
    foreach(_LIBRARY_NAME ${libraries})
        unset(CONAN_FOUND_LIBRARY CACHE)
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(_LIB_NAME CONAN_LIB::${package_name}_${_LIBRARY_NAME}${build_type})
            add_library(${_LIB_NAME} UNKNOWN IMPORTED)
            set_target_properties(${_LIB_NAME} PROPERTIES IMPORTED_LOCATION ${CONAN_FOUND_LIBRARY})
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIB_NAME})
            set(_CONAN_ACTUAL_TARGETS ${_CONAN_ACTUAL_TARGETS} ${_LIB_NAME})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
            set(_CONAN_FOUND_SYSTEM_LIBS "${_CONAN_FOUND_SYSTEM_LIBS};${_LIBRARY_NAME}")
        endif()
    endforeach()

    # Add all dependencies to all targets
    string(REPLACE " " ";" deps_list "${deps}")
    foreach(_CONAN_ACTUAL_TARGET ${_CONAN_ACTUAL_TARGETS})
        set_property(TARGET ${_CONAN_ACTUAL_TARGET} PROPERTY INTERFACE_LINK_LIBRARIES "${_CONAN_FOUND_SYSTEM_LIBS};${deps_list}")
    endforeach()

    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


macro(conan_set_libcxx)
    if(DEFINED CONAN_LIBCXX)
        conan_message(STATUS "Conan: C++ stdlib: ${CONAN_LIBCXX}")
        if(CONAN_COMPILER STREQUAL "clang" OR CONAN_COMPILER STREQUAL "apple-clang")
            if(CONAN_LIBCXX STREQUAL "libstdc++" OR CONAN_LIBCXX STREQUAL "libstdc++11" )
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")
            elseif(CONAN_LIBCXX STREQUAL "libc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
            endif()
        endif()
        if(CONAN_COMPILER STREQUAL "sun-cc")
            if(CONAN_LIBCXX STREQUAL "libCstd")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=Cstd")
            elseif(CONAN_LIBCXX STREQUAL "libstdcxx")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcxx4")
            elseif(CONAN_LIBCXX STREQUAL "libstlport")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stlport4")
            elseif(CONAN_LIBCXX STREQUAL "libstdc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcpp")
            endif()
        endif()
        if(CONAN_LIBCXX STREQUAL "libstdc++11")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=1)
        elseif(CONAN_LIBCXX STREQUAL "libstdc++")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
        endif()
    endif()
endmacro()


macro(conan_set_std)
    conan_message(STATUS "Conan: Adjusting language standard")
    # Do not warn "Manually-specified variables were not used by the project"
    set(ignorevar "${CONAN_STD_CXX_FLAG}${CONAN_CMAKE_CXX_STANDARD}${CONAN_CMAKE_CXX_EXTENSIONS}")
    if (CMAKE_VERSION VERSION_LESS "3.1" OR
        (CMAKE_VERSION VERSION_LESS "3.12" AND ("${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "20" OR "${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "gnu20")))
        if(CONAN_STD_CXX_FLAG)
            conan_message(STATUS "Conan setting CXX_FLAGS flags: ${CONAN_STD_CXX_FLAG}")
            set(CMAKE_CXX_FLAGS "${CONAN_STD_CXX_FLAG} ${CMAKE_CXX_FLAGS}")
        endif()
    else()
        if(CONAN_CMAKE_CXX_STANDARD)
            conan_message(STATUS "Conan setting CPP STANDARD: ${CONAN_CMAKE_CXX_STANDARD} WITH EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS}")
            set(CMAKE_CXX_STANDARD ${CONAN_CMAKE_CXX_STANDARD})
            set(CMAKE_CXX_EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS})
        endif()
    endif()
endmacro()


macro(conan_set_rpath)
    conan_message(STATUS "Conan: Adjusting default RPATHs Conan policies")
    if(APPLE)
        # https://cmake.org/Wiki/CMake_RPATH_handling
        # CONAN GUIDE: All generated libraries should have the id and dependencies to other
        # dylibs without path, just the name, EX:
        # libMyLib1.dylib:
        #     libMyLib1.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     libMyLib0.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     /usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 120.0.0)
        #     /usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1197.1.1)
        set(CMAKE_SKIP_RPATH 1)  # AVOID RPATH FOR *.dylib, ALL LIBS BETWEEN THEM AND THE EXE
                                 # SHOULD BE ON THE LINKER RESOLVER PATH (./ IS ONE OF THEM)
        # Policy CMP0068
        # We want the old behavior, in CMake >= 3.9 CMAKE_SKIP_RPATH won't affect the install_name in OSX
        set(CMAKE_INSTALL_NAME_DIR "")
    endif()
endmacro()


macro(conan_set_fpic)
    if(DEFINED CONAN_CMAKE_POSITION_INDEPENDENT_CODE)
        conan_message(STATUS "Conan: Adjusting fPIC flag (${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})")
        set(CMAKE_POSITION_INDEPENDENT_CODE ${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})
    endif()
endmacro()


macro(conan_output_dirs_setup)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
endmacro()


macro(conan_split_version VERSION_STRING MAJOR MINOR)
    #make a list from the version string
    string(REPLACE "." ";" VERSION_LIST "${VERSION_STRING}")

    #write output values
    list(LENGTH VERSION_LIST _version_len)
    list(GET VERSION_LIST 0 ${MAJOR})
    if(${_version_len} GREATER 1)
        list(GET VERSION_LIST 1 ${MINOR})
    endif()
endmacro()


macro(conan_error_compiler_version)
    message(FATAL_ERROR "Detected a mismatch for the compiler version between your conan profile settings and CMake: \n"
                        "Compiler version specified in your conan profile: ${CONAN_COMPILER_VERSION}\n"
                        "Compiler version detected in CMake: ${VERSION_MAJOR}.${VERSION_MINOR}\n"
                        "Please check your conan profile settings (conan profile show [default|your_profile_name])"
           )
endmacro()

set(_CONAN_CURRENT_DIR ${CMAKE_CURRENT_LIST_DIR})

function(conan_get_compiler CONAN_INFO_COMPILER CONAN_INFO_COMPILER_VERSION)
    conan_message(STATUS "Current conanbuildinfo.cmake directory: " ${_CONAN_CURRENT_DIR})
    if(NOT EXISTS ${_CONAN_CURRENT_DIR}/conaninfo.txt)
        conan_message(STATUS "WARN: conaninfo.txt not found")
        return()
    endif()

    file (READ "${_CONAN_CURRENT_DIR}/conaninfo.txt" CONANINFO)

    string(REGEX MATCH "compiler=([-A-Za-z0-9_ ]+)" _MATCHED ${CONANINFO})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER)
        set(${CONAN_INFO_COMPILER} ${_CONAN_INFO_COMPILER} PARENT_SCOPE)
    endif()

    string(REGEX MATCH "compiler.version=([-A-Za-z0-9_.]+)" _MATCHED ${CONANINFO})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER_VERSION)
        set(${CONAN_INFO_COMPILER_VERSION} ${_CONAN_INFO_COMPILER_VERSION} PARENT_SCOPE)
    endif()
endfunction()


function(check_compiler_version)
    conan_split_version(${CMAKE_CXX_COMPILER_VERSION} VERSION_MAJOR VERSION_MINOR)
    if(DEFINED CONAN_SETTINGS_COMPILER_TOOLSET)
       conan_message(STATUS "Conan: Skipping compiler check: Declared 'compiler.toolset'")
       return()
    endif()
    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
        # MSVC_VERSION is defined since 2.8.2 at least
        # https://cmake.org/cmake/help/v2.8.2/cmake.html#variable:MSVC_VERSION
        # https://cmake.org/cmake/help/v3.14/variable/MSVC_VERSION.html
        if(
            # 1920-1929 = VS 16.0 (v142 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "16" AND NOT((MSVC_VERSION GREATER 1919) AND (MSVC_VERSION LESS 1930))) OR
            # 1910-1919 = VS 15.0 (v141 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "15" AND NOT((MSVC_VERSION GREATER 1909) AND (MSVC_VERSION LESS 1920))) OR
            # 1900      = VS 14.0 (v140 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "14" AND NOT(MSVC_VERSION EQUAL 1900)) OR
            # 1800      = VS 12.0 (v120 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "12" AND NOT VERSION_MAJOR STREQUAL "18") OR
            # 1700      = VS 11.0 (v110 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "11" AND NOT VERSION_MAJOR STREQUAL "17") OR
            # 1600      = VS 10.0 (v100 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "10" AND NOT VERSION_MAJOR STREQUAL "16") OR
            # 1500      = VS  9.0 (v90 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "9" AND NOT VERSION_MAJOR STREQUAL "15") OR
            # 1400      = VS  8.0 (v80 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "8" AND NOT VERSION_MAJOR STREQUAL "14") OR
            # 1310      = VS  7.1, 1300      = VS  7.0
            (CONAN_COMPILER_VERSION STREQUAL "7" AND NOT VERSION_MAJOR STREQUAL "13") OR
            # 1200      = VS  6.0
            (CONAN_COMPILER_VERSION STREQUAL "6" AND NOT VERSION_MAJOR STREQUAL "12") )
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "gcc")
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 5.0)
            conan_message(STATUS "Conan: Compiler GCC>=5, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL CONAN_COMPILER_VERSION)
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "clang")
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 8.0)
            conan_message(STATUS "Conan: Compiler Clang>=8, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL CONAN_COMPILER_VERSION)
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "apple-clang" OR CONAN_COMPILER STREQUAL "sun-cc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
           conan_error_compiler_version()
        endif()
    else()
        conan_message(STATUS "WARN: Unknown compiler '${CONAN_COMPILER}', skipping the version check...")
    endif()
endfunction()


function(conan_check_compiler)
    if(CONAN_DISABLE_CHECK_COMPILER)
        conan_message(STATUS "WARN: Disabled conan compiler checks")
        return()
    endif()
    if(NOT DEFINED CMAKE_CXX_COMPILER_ID)
        if(DEFINED CMAKE_C_COMPILER_ID)
            conan_message(STATUS "This project seems to be plain C, using '${CMAKE_C_COMPILER_ID}' compiler")
            set(CMAKE_CXX_COMPILER_ID ${CMAKE_C_COMPILER_ID})
            set(CMAKE_CXX_COMPILER_VERSION ${CMAKE_C_COMPILER_VERSION})
        else()
            message(FATAL_ERROR "This project seems to be plain C, but no compiler defined")
        endif()
    endif()
    if(NOT CMAKE_CXX_COMPILER_ID AND NOT CMAKE_C_COMPILER_ID)
        # This use case happens when compiler is not identified by CMake, but the compilers are there and work
        conan_message(STATUS "*** WARN: CMake was not able to identify a C or C++ compiler ***")
        conan_message(STATUS "*** WARN: Disabling compiler checks. Please make sure your settings match your environment ***")
        return()
    endif()
    if(NOT DEFINED CONAN_COMPILER)
        conan_get_compiler(CONAN_COMPILER CONAN_COMPILER_VERSION)
        if(NOT DEFINED CONAN_COMPILER)
            conan_message(STATUS "WARN: CONAN_COMPILER variable not set, please make sure yourself that "
                          "your compiler and version matches your declared settings")
            return()
        endif()
    endif()

    if(NOT CMAKE_HOST_SYSTEM_NAME STREQUAL ${CMAKE_SYSTEM_NAME})
        set(CROSS_BUILDING 1)
    endif()

    # If using VS, verify toolset
    if (CONAN_COMPILER STREQUAL "Visual Studio")
        if (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "LLVM" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "clang")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Clang")
        elseif (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Intel")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Intel")
        else()
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "MSVC")
        endif()

        if (NOT CMAKE_CXX_COMPILER_ID MATCHES ${EXPECTED_CMAKE_CXX_COMPILER_ID})
            message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}'. Toolset specifies compiler as '${EXPECTED_CMAKE_CXX_COMPILER_ID}' "
                                "but CMake detected '${CMAKE_CXX_COMPILER_ID}'")
        endif()

    # Avoid checks when cross compiling, apple-clang crashes because its APPLE but not apple-clang
    # Actually CMake is detecting "clang" when you are using apple-clang, only if CMP0025 is set to NEW will detect apple-clang
    elseif((CONAN_COMPILER STREQUAL "gcc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "GNU") OR
        (CONAN_COMPILER STREQUAL "apple-clang" AND NOT CROSS_BUILDING AND (NOT APPLE OR NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")) OR
        (CONAN_COMPILER STREQUAL "clang" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang") OR
        (CONAN_COMPILER STREQUAL "sun-cc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "SunPro") )
        message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}', is not the one detected by CMake: '${CMAKE_CXX_COMPILER_ID}'")
    endif()


    if(NOT DEFINED CONAN_COMPILER_VERSION)
        conan_message(STATUS "WARN: CONAN_COMPILER_VERSION variable not set, please make sure yourself "
                             "that your compiler version matches your declared settings")
        return()
    endif()
    check_compiler_version()
endfunction()


macro(conan_set_flags build_type)
    set(CMAKE_CXX_FLAGS${build_type} "${CMAKE_CXX_FLAGS${build_type}} ${CONAN_CXX_FLAGS${build_type}}")
    set(CMAKE_C_FLAGS${build_type} "${CMAKE_C_FLAGS${build_type}} ${CONAN_C_FLAGS${build_type}}")
    set(CMAKE_SHARED_LINKER_FLAGS${build_type} "${CMAKE_SHARED_LINKER_FLAGS${build_type}} ${CONAN_SHARED_LINKER_FLAGS${build_type}}")
    set(CMAKE_EXE_LINKER_FLAGS${build_type} "${CMAKE_EXE_LINKER_FLAGS${build_type}} ${CONAN_EXE_LINKER_FLAGS${build_type}}")
endmacro()


macro(conan_global_flags)
    if(CONAN_SYSTEM_INCLUDES)
        include_directories(SYSTEM ${CONAN_INCLUDE_DIRS}
                                   "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                                   "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                                   "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                                   "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    else()
        include_directories(${CONAN_INCLUDE_DIRS}
                            "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                            "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                            "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                            "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    endif()

    link_directories(${CONAN_LIB_DIRS})

    conan_find_libraries_abs_path("${CONAN_LIBS_DEBUG}" "${CONAN_LIB_DIRS_DEBUG}"
                                  CONAN_LIBS_DEBUG)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELEASE}" "${CONAN_LIB_DIRS_RELEASE}"
                                  CONAN_LIBS_RELEASE)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RELWITHDEBINFO}"
                                  CONAN_LIBS_RELWITHDEBINFO)
    conan_find_libraries_abs_path("${CONAN_LIBS_MINSIZEREL}" "${CONAN_LIB_DIRS_MINSIZEREL}"
                                  CONAN_LIBS_MINSIZEREL)

    add_compile_options(${CONAN_DEFINES}
                        "$<$<CONFIG:Debug>:${CONAN_DEFINES_DEBUG}>"
                        "$<$<CONFIG:Release>:${CONAN_DEFINES_RELEASE}>"
                        "$<$<CONFIG:RelWithDebInfo>:${CONAN_DEFINES_RELWITHDEBINFO}>"
                        "$<$<CONFIG:MinSizeRel>:${CONAN_DEFINES_MINSIZEREL}>")

    conan_set_flags("")
    conan_set_flags("_RELEASE")
    conan_set_flags("_DEBUG")

endmacro()


macro(conan_target_link_libraries target)
    if(CONAN_TARGETS)
        target_link_libraries(${target} ${CONAN_TARGETS})
    else()
        target_link_libraries(${target} ${CONAN_LIBS})
        foreach(_LIB ${CONAN_LIBS_RELEASE})
            target_link_libraries(${target} optimized ${_LIB})
        endforeach()
        foreach(_LIB ${CONAN_LIBS_DEBUG})
            target_link_libraries(${target} debug ${_LIB})
        endforeach()
    endif()
endmacro()


macro(conan_include_build_modules)
    if(CMAKE_BUILD_TYPE)
        if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_DEBUG} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELEASE} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELWITHDEBINFO} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_MINSIZEREL} ${CONAN_BUILD_MODULES_PATHS})
        endif()
    endif()

    foreach(_BUILD_MODULE_PATH ${CONAN_BUILD_MODULES_PATHS})
        include(${_BUILD_MODULE_PATH})
    endforeach()
endmacro()


### Definition of user declared vars (user_info) ###

