# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\smirn\CLionProjects\SGD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\smirn\CLionProjects\SGD\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\SGD.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\SGD.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\SGD.dir\flags.make

CMakeFiles\SGD.dir\src\main.cpp.obj: CMakeFiles\SGD.dir\flags.make
CMakeFiles\SGD.dir\src\main.cpp.obj: ..\src\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\smirn\CLionProjects\SGD\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SGD.dir/src/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\SGD.dir\src\main.cpp.obj /FdCMakeFiles\SGD.dir\ /FS -c C:\Users\smirn\CLionProjects\SGD\src\main.cpp
<<

CMakeFiles\SGD.dir\src\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SGD.dir/src/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\cl.exe > CMakeFiles\SGD.dir\src\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\smirn\CLionProjects\SGD\src\main.cpp
<<

CMakeFiles\SGD.dir\src\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SGD.dir/src/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\SGD.dir\src\main.cpp.s /c C:\Users\smirn\CLionProjects\SGD\src\main.cpp
<<

# Object files for target SGD
SGD_OBJECTS = \
"CMakeFiles\SGD.dir\src\main.cpp.obj"

# External object files for target SGD
SGD_EXTERNAL_OBJECTS =

bin\SGD.exe: CMakeFiles\SGD.dir\src\main.cpp.obj
bin\SGD.exe: CMakeFiles\SGD.dir\build.make
bin\SGD.exe: CMakeFiles\SGD.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\smirn\CLionProjects\SGD\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin\SGD.exe"
	"C:\Program Files\JetBrains\CLion 2019.2.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\SGD.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\SGD.dir\objects1.rsp @<<
 /out:bin\SGD.exe /implib:lib\SGD.lib /pdb:C:\Users\smirn\CLionProjects\SGD\cmake-build-debug\bin\SGD.pdb /version:0.0  /machine:x64   /debug /INCREMENTAL  /subsystem:console  -LIBPATH:C:\.conan\bb0a72\1\lib  -LIBPATH:C:\.conan\b35745\1\lib  -LIBPATH:C:\Users\smirn\.conan\data\bzip2\1.0.8\conan\stable\package\5c382ca84120276840c8074ab1851697636fb8ae\lib  -LIBPATH:C:\Users\smirn\.conan\data\libtiff\4.0.9\_\_\package\009a50ddeb47afbc9361cbc63650560c127e1234\lib  -LIBPATH:C:\Users\smirn\.conan\data\libwebp\1.0.3\_\_\package\cc3ca8804df71811388ba344bb754fcfc3a6d540\lib  -LIBPATH:C:\Users\smirn\.conan\data\libpng\1.6.37\_\_\package\009a50ddeb47afbc9361cbc63650560c127e1234\lib  -LIBPATH:C:\Users\smirn\.conan\data\jasper\2.0.14\_\_\package\78d8505b0977f10821c001074d3304c25671ea72\lib  -LIBPATH:C:\Users\smirn\.conan\data\openexr\2.3.0\_\_\package\5b897370b869bd0a8fb2a9960ac8725942daf889\lib  -LIBPATH:C:\.conan\4ee4b7\1\lib  -LIBPATH:C:\Users\smirn\.conan\data\zlib\1.2.11\conan\stable\package\8cf01e2f50fcd6b63525e70584df0326550364e1\lib  -LIBPATH:C:\Users\smirn\.conan\data\libjpeg\9c\_\_\package\8cf01e2f50fcd6b63525e70584df0326550364e1\lib libboost_wave.lib libboost_container.lib libboost_contract.lib libboost_exception.lib libboost_graph.lib libboost_iostreams.lib libboost_locale.lib libboost_log.lib libboost_program_options.lib libboost_random.lib libboost_regex.lib libboost_serialization.lib libboost_wserialization.lib libboost_coroutine.lib libboost_fiber.lib libboost_context.lib libboost_timer.lib libboost_thread.lib libboost_chrono.lib libboost_date_time.lib libboost_atomic.lib libboost_filesystem.lib libboost_system.lib libboost_type_erasure.lib libboost_log_setup.lib libboost_math_c99.lib libboost_math_c99f.lib libboost_math_c99l.lib libboost_math_tr1.lib libboost_math_tr1f.lib libboost_math_tr1l.lib libboost_stacktrace_noop.lib libboost_stacktrace_windbg.lib libboost_stacktrace_windbg_cached.lib libboost_unit_test_framework.lib bcrypt.lib opencv_stitching411d.lib opencv_photo411d.lib opencv_video411d.lib opencv_ml411d.lib opencv_calib3d411d.lib opencv_features2d411d.lib opencv_highgui411d.lib opencv_videoio411d.lib opencv_flann411d.lib opencv_imgcodecs411d.lib opencv_objdetect411d.lib opencv_dnn411d.lib opencv_imgproc411d.lib opencv_core411d.lib opencv_gapi411d.lib Vfw32.lib ade.lib quircd.lib bz2.lib tiffd.lib tiffxxd.lib webpmux.lib webpdemux.lib webpdecoder.lib webp.lib libpng16d.lib jasper.lib IlmImf-2_3_s_d.lib IlmImfUtil-2_3_s_d.lib IlmThread-2_3_s_d.lib Iex-2_3_s_d.lib IexMath-2_3_s_d.lib Imath-2_3_s_d.lib Half-2_3_s_d.lib libprotobufd.lib libprotocd.lib zlib.lib libjpeg.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\SGD.dir\build: bin\SGD.exe

.PHONY : CMakeFiles\SGD.dir\build

CMakeFiles\SGD.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SGD.dir\cmake_clean.cmake
.PHONY : CMakeFiles\SGD.dir\clean

CMakeFiles\SGD.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\smirn\CLionProjects\SGD C:\Users\smirn\CLionProjects\SGD C:\Users\smirn\CLionProjects\SGD\cmake-build-debug C:\Users\smirn\CLionProjects\SGD\cmake-build-debug C:\Users\smirn\CLionProjects\SGD\cmake-build-debug\CMakeFiles\SGD.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\SGD.dir\depend

