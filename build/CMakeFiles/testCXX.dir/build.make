# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sinkdream/Desktop/testCXX

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sinkdream/Desktop/testCXX/build

# Include any dependencies generated for this target.
include CMakeFiles/testCXX.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testCXX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testCXX.dir/flags.make

CMakeFiles/testCXX.dir/main.cpp.o: CMakeFiles/testCXX.dir/flags.make
CMakeFiles/testCXX.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sinkdream/Desktop/testCXX/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testCXX.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testCXX.dir/main.cpp.o -c /home/sinkdream/Desktop/testCXX/main.cpp

CMakeFiles/testCXX.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testCXX.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sinkdream/Desktop/testCXX/main.cpp > CMakeFiles/testCXX.dir/main.cpp.i

CMakeFiles/testCXX.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testCXX.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sinkdream/Desktop/testCXX/main.cpp -o CMakeFiles/testCXX.dir/main.cpp.s

# Object files for target testCXX
testCXX_OBJECTS = \
"CMakeFiles/testCXX.dir/main.cpp.o"

# External object files for target testCXX
testCXX_EXTERNAL_OBJECTS =

testCXX: CMakeFiles/testCXX.dir/main.cpp.o
testCXX: CMakeFiles/testCXX.dir/build.make
testCXX: CMakeFiles/testCXX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sinkdream/Desktop/testCXX/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testCXX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testCXX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testCXX.dir/build: testCXX

.PHONY : CMakeFiles/testCXX.dir/build

CMakeFiles/testCXX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testCXX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testCXX.dir/clean

CMakeFiles/testCXX.dir/depend:
	cd /home/sinkdream/Desktop/testCXX/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sinkdream/Desktop/testCXX /home/sinkdream/Desktop/testCXX /home/sinkdream/Desktop/testCXX/build /home/sinkdream/Desktop/testCXX/build /home/sinkdream/Desktop/testCXX/build/CMakeFiles/testCXX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testCXX.dir/depend

