# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build

# Include any dependencies generated for this target.
include examples/client/CMakeFiles/datachannel-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/client/CMakeFiles/datachannel-client.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/client/CMakeFiles/datachannel-client.dir/progress.make

# Include the compile flags for this target's objects.
include examples/client/CMakeFiles/datachannel-client.dir/flags.make

examples/client/CMakeFiles/datachannel-client.dir/main.cpp.o: examples/client/CMakeFiles/datachannel-client.dir/flags.make
examples/client/CMakeFiles/datachannel-client.dir/main.cpp.o: ../examples/client/main.cpp
examples/client/CMakeFiles/datachannel-client.dir/main.cpp.o: examples/client/CMakeFiles/datachannel-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/client/CMakeFiles/datachannel-client.dir/main.cpp.o"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/client/CMakeFiles/datachannel-client.dir/main.cpp.o -MF CMakeFiles/datachannel-client.dir/main.cpp.o.d -o CMakeFiles/datachannel-client.dir/main.cpp.o -c /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client/main.cpp

examples/client/CMakeFiles/datachannel-client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/datachannel-client.dir/main.cpp.i"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client/main.cpp > CMakeFiles/datachannel-client.dir/main.cpp.i

examples/client/CMakeFiles/datachannel-client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/datachannel-client.dir/main.cpp.s"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client/main.cpp -o CMakeFiles/datachannel-client.dir/main.cpp.s

examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.o: examples/client/CMakeFiles/datachannel-client.dir/flags.make
examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.o: ../examples/client/parse_cl.cpp
examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.o: examples/client/CMakeFiles/datachannel-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.o"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.o -MF CMakeFiles/datachannel-client.dir/parse_cl.cpp.o.d -o CMakeFiles/datachannel-client.dir/parse_cl.cpp.o -c /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client/parse_cl.cpp

examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/datachannel-client.dir/parse_cl.cpp.i"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client/parse_cl.cpp > CMakeFiles/datachannel-client.dir/parse_cl.cpp.i

examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/datachannel-client.dir/parse_cl.cpp.s"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client/parse_cl.cpp -o CMakeFiles/datachannel-client.dir/parse_cl.cpp.s

# Object files for target datachannel-client
datachannel__client_OBJECTS = \
"CMakeFiles/datachannel-client.dir/main.cpp.o" \
"CMakeFiles/datachannel-client.dir/parse_cl.cpp.o"

# External object files for target datachannel-client
datachannel__client_EXTERNAL_OBJECTS =

examples/client/client: examples/client/CMakeFiles/datachannel-client.dir/main.cpp.o
examples/client/client: examples/client/CMakeFiles/datachannel-client.dir/parse_cl.cpp.o
examples/client/client: examples/client/CMakeFiles/datachannel-client.dir/build.make
examples/client/client: libdatachannel.so.0.20.1
examples/client/client: examples/client/CMakeFiles/datachannel-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable client"
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/datachannel-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/client/CMakeFiles/datachannel-client.dir/build: examples/client/client
.PHONY : examples/client/CMakeFiles/datachannel-client.dir/build

examples/client/CMakeFiles/datachannel-client.dir/clean:
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client && $(CMAKE_COMMAND) -P CMakeFiles/datachannel-client.dir/cmake_clean.cmake
.PHONY : examples/client/CMakeFiles/datachannel-client.dir/clean

examples/client/CMakeFiles/datachannel-client.dir/depend:
	cd /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/examples/client /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client/CMakeFiles/datachannel-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/client/CMakeFiles/datachannel-client.dir/depend

