#What is a PRI file?
#
#Software development settings file used by applications created for Qt, a cross-platform framework commonly used for
#building and running mobile applications; contains settings for the qmake command, which builds the application;
#used for specifying locations of developer files and platform-specific definitions.


platform_path = unknown-platform
compiler_path = unknown-compiler
processor_path = unknown-processor
build_path = unknown-build

PLATFORM_WIN {
	platform_path = windows
}
PLATFORM_OSX {
	platform_path = osx
}
PLATFORM_LINUX {
	platform_path = linux
}
COMPILER_GCC {
	compiler_path = gcc
}
COMPILER_MSVC2017 {
	compiler_path = msvc2017
}
COMPILER_CLANG {
	compiler_path = clang
}
PROCESSOR_x64 {
	processor_path = x64
}
PROCESSOR_x86 {
	processor_path = x86
}
BUILD_DEBUG {
	build_path = debug
} else {
	build_path = release
}

DESTINATION_PATH = $$platform_path/$$compiler_path/$$processor_path/$$build_path
!build_pass:message(Dest path: $${DESTINATION_PATH})
