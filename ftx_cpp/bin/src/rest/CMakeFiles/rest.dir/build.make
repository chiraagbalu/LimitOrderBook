# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chiraagbalu/LimitOrderBook/ftx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chiraagbalu/LimitOrderBook/ftx/bin

# Include any dependencies generated for this target.
include src/rest/CMakeFiles/rest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/rest/CMakeFiles/rest.dir/compiler_depend.make

# Include the progress variables for this target.
include src/rest/CMakeFiles/rest.dir/progress.make

# Include the compile flags for this target's objects.
include src/rest/CMakeFiles/rest.dir/flags.make

src/rest/CMakeFiles/rest.dir/client.cc.o: src/rest/CMakeFiles/rest.dir/flags.make
src/rest/CMakeFiles/rest.dir/client.cc.o: /Users/chiraagbalu/LimitOrderBook/ftx/src/rest/client.cc
src/rest/CMakeFiles/rest.dir/client.cc.o: src/rest/CMakeFiles/rest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chiraagbalu/LimitOrderBook/ftx/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/rest/CMakeFiles/rest.dir/client.cc.o"
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/rest/CMakeFiles/rest.dir/client.cc.o -MF CMakeFiles/rest.dir/client.cc.o.d -o CMakeFiles/rest.dir/client.cc.o -c /Users/chiraagbalu/LimitOrderBook/ftx/src/rest/client.cc

src/rest/CMakeFiles/rest.dir/client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rest.dir/client.cc.i"
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chiraagbalu/LimitOrderBook/ftx/src/rest/client.cc > CMakeFiles/rest.dir/client.cc.i

src/rest/CMakeFiles/rest.dir/client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rest.dir/client.cc.s"
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chiraagbalu/LimitOrderBook/ftx/src/rest/client.cc -o CMakeFiles/rest.dir/client.cc.s

# Object files for target rest
rest_OBJECTS = \
"CMakeFiles/rest.dir/client.cc.o"

# External object files for target rest
rest_EXTERNAL_OBJECTS =

src/rest/librest.a: src/rest/CMakeFiles/rest.dir/client.cc.o
src/rest/librest.a: src/rest/CMakeFiles/rest.dir/build.make
src/rest/librest.a: src/rest/CMakeFiles/rest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chiraagbalu/LimitOrderBook/ftx/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library librest.a"
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest && $(CMAKE_COMMAND) -P CMakeFiles/rest.dir/cmake_clean_target.cmake
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/rest/CMakeFiles/rest.dir/build: src/rest/librest.a
.PHONY : src/rest/CMakeFiles/rest.dir/build

src/rest/CMakeFiles/rest.dir/clean:
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest && $(CMAKE_COMMAND) -P CMakeFiles/rest.dir/cmake_clean.cmake
.PHONY : src/rest/CMakeFiles/rest.dir/clean

src/rest/CMakeFiles/rest.dir/depend:
	cd /Users/chiraagbalu/LimitOrderBook/ftx/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chiraagbalu/LimitOrderBook/ftx /Users/chiraagbalu/LimitOrderBook/ftx/src/rest /Users/chiraagbalu/LimitOrderBook/ftx/bin /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest /Users/chiraagbalu/LimitOrderBook/ftx/bin/src/rest/CMakeFiles/rest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/rest/CMakeFiles/rest.dir/depend

