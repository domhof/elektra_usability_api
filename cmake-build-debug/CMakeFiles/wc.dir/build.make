# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/wc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wc.dir/flags.make

CMakeFiles/wc.dir/wc.c.o: CMakeFiles/wc.dir/flags.make
CMakeFiles/wc.dir/wc.c.o: ../wc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/wc.dir/wc.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wc.dir/wc.c.o   -c /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/wc.c

CMakeFiles/wc.dir/wc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wc.dir/wc.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/wc.c > CMakeFiles/wc.dir/wc.c.i

CMakeFiles/wc.dir/wc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wc.dir/wc.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/wc.c -o CMakeFiles/wc.dir/wc.c.s

CMakeFiles/wc.dir/wc.c.o.requires:

.PHONY : CMakeFiles/wc.dir/wc.c.o.requires

CMakeFiles/wc.dir/wc.c.o.provides: CMakeFiles/wc.dir/wc.c.o.requires
	$(MAKE) -f CMakeFiles/wc.dir/build.make CMakeFiles/wc.dir/wc.c.o.provides.build
.PHONY : CMakeFiles/wc.dir/wc.c.o.provides

CMakeFiles/wc.dir/wc.c.o.provides.build: CMakeFiles/wc.dir/wc.c.o


# Object files for target wc
wc_OBJECTS = \
"CMakeFiles/wc.dir/wc.c.o"

# External object files for target wc
wc_EXTERNAL_OBJECTS =

wc: CMakeFiles/wc.dir/wc.c.o
wc: CMakeFiles/wc.dir/build.make
wc: /usr/local/lib/libelektra-highlevel.dylib
wc: /usr/local/lib/libelektra-kdb.0.8.19.dylib
wc: /usr/local/lib/libelektra-core.0.8.19.dylib
wc: CMakeFiles/wc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable wc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wc.dir/build: wc

.PHONY : CMakeFiles/wc.dir/build

CMakeFiles/wc.dir/requires: CMakeFiles/wc.dir/wc.c.o.requires

.PHONY : CMakeFiles/wc.dir/requires

CMakeFiles/wc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wc.dir/clean

CMakeFiles/wc.dir/depend:
	cd /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug /Users/dominik/Documents/Jobs/Elektra/elektra_usability_api/cmake-build-debug/CMakeFiles/wc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wc.dir/depend

