# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/media/sjw_src/cocos2d-x-3.1rc0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/media/sjw_src/cocos2d-x-3.1rc0/build

# Utility rule file for cpp-tests_PRE_BUILD.

# Include the progress variables for this target.
include tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/progress.make

tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD:

cpp-tests_PRE_BUILD: tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD
cpp-tests_PRE_BUILD: tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "cpp-tests_PRE_BUILD ..."
	cd /home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-tests && /usr/local/bin/cmake -E remove_directory /home/media/sjw_src/cocos2d-x-3.1rc0/build/bin/cpp-tests/Resources
	cd /home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-tests && /usr/local/bin/cmake -E copy_directory /home/media/sjw_src/cocos2d-x-3.1rc0/tests/cpp-tests/Resources /home/media/sjw_src/cocos2d-x-3.1rc0/build/bin/cpp-tests/Resources
.PHONY : cpp-tests_PRE_BUILD

# Rule to build all files generated by this target.
tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/build: cpp-tests_PRE_BUILD
.PHONY : tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/build

tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/clean:
	cd /home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-tests && $(CMAKE_COMMAND) -P CMakeFiles/cpp-tests_PRE_BUILD.dir/cmake_clean.cmake
.PHONY : tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/clean

tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/depend:
	cd /home/media/sjw_src/cocos2d-x-3.1rc0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/media/sjw_src/cocos2d-x-3.1rc0 /home/media/sjw_src/cocos2d-x-3.1rc0/tests/cpp-tests /home/media/sjw_src/cocos2d-x-3.1rc0/build /home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-tests /home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/cpp-tests/CMakeFiles/cpp-tests_PRE_BUILD.dir/depend
