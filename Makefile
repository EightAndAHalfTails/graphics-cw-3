# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/homes/jbh111/graphics/Coursework 3/cgcoursework"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/homes/jbh111/graphics/Coursework 3/cgcoursework"

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start "/homes/jbh111/graphics/Coursework 3/cgcoursework/CMakeFiles" "/homes/jbh111/graphics/Coursework 3/cgcoursework/CMakeFiles/progress.marks"
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start "/homes/jbh111/graphics/Coursework 3/cgcoursework/CMakeFiles" 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named cgExercise01

# Build rule for target.
cgExercise01: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cgExercise01
.PHONY : cgExercise01

# fast build rule for target.
cgExercise01/fast:
	$(MAKE) -f CMakeFiles/cgExercise01.dir/build.make CMakeFiles/cgExercise01.dir/build
.PHONY : cgExercise01/fast

#=============================================================================
# Target rules for targets named cgExercise02

# Build rule for target.
cgExercise02: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cgExercise02
.PHONY : cgExercise02

# fast build rule for target.
cgExercise02/fast:
	$(MAKE) -f CMakeFiles/cgExercise02.dir/build.make CMakeFiles/cgExercise02.dir/build
.PHONY : cgExercise02/fast

#=============================================================================
# Target rules for targets named cgExercise03

# Build rule for target.
cgExercise03: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cgExercise03
.PHONY : cgExercise03

# fast build rule for target.
cgExercise03/fast:
	$(MAKE) -f CMakeFiles/cgExercise03.dir/build.make CMakeFiles/cgExercise03.dir/build
.PHONY : cgExercise03/fast

# target to build an object file
main01.o:
	$(MAKE) -f CMakeFiles/cgExercise01.dir/build.make CMakeFiles/cgExercise01.dir/main01.o
.PHONY : main01.o

# target to preprocess a source file
main01.i:
	$(MAKE) -f CMakeFiles/cgExercise01.dir/build.make CMakeFiles/cgExercise01.dir/main01.i
.PHONY : main01.i

# target to generate assembly for a file
main01.s:
	$(MAKE) -f CMakeFiles/cgExercise01.dir/build.make CMakeFiles/cgExercise01.dir/main01.s
.PHONY : main01.s

# target to build an object file
main02.o:
	$(MAKE) -f CMakeFiles/cgExercise02.dir/build.make CMakeFiles/cgExercise02.dir/main02.o
.PHONY : main02.o

# target to preprocess a source file
main02.i:
	$(MAKE) -f CMakeFiles/cgExercise02.dir/build.make CMakeFiles/cgExercise02.dir/main02.i
.PHONY : main02.i

# target to generate assembly for a file
main02.s:
	$(MAKE) -f CMakeFiles/cgExercise02.dir/build.make CMakeFiles/cgExercise02.dir/main02.s
.PHONY : main02.s

# target to build an object file
main03.o:
	$(MAKE) -f CMakeFiles/cgExercise03.dir/build.make CMakeFiles/cgExercise03.dir/main03.o
.PHONY : main03.o

# target to preprocess a source file
main03.i:
	$(MAKE) -f CMakeFiles/cgExercise03.dir/build.make CMakeFiles/cgExercise03.dir/main03.i
.PHONY : main03.i

# target to generate assembly for a file
main03.s:
	$(MAKE) -f CMakeFiles/cgExercise03.dir/build.make CMakeFiles/cgExercise03.dir/main03.s
.PHONY : main03.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... cgExercise01"
	@echo "... cgExercise02"
	@echo "... cgExercise03"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... main01.o"
	@echo "... main01.i"
	@echo "... main01.s"
	@echo "... main02.o"
	@echo "... main02.i"
	@echo "... main02.s"
	@echo "... main03.o"
	@echo "... main03.i"
	@echo "... main03.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

