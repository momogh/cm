#What is a PRI file?
#
#Software development settings file used by applications created for Qt, a cross-platform framework commonly used for
#building and running mobile applications; contains settings for the qmake command, which builds the application;
#used for specifying locations of developer files and platform-specific definitions.

win32 {
	CONFIG += PLATFORM_WIN
        !build_pass:message(PLATFORM_WIN)
	win32-g++ {
		CONFIG += COMPILER_GCC
                !build_pass:message(COMPILER_GCC)
	}
	win32-msvc2017 {
		CONFIG += COMPILER_MSVC2017
                !build_pass:message(COMPILER_MSVC2017)
		win32-msvc2017:QMAKE_TARGET.arch = x86_64
	}
}

linux {
	CONFIG += PLATFORM_LINUX
        !build_pass:message(PLATFORM_LINUX)
	# Make QMAKE_TARGET arch available for Linux
	!contains(QT_ARCH, x86_64){
		QMAKE_TARGET.arch = x86
	} else {
		QMAKE_TARGET.arch = x86_64
	}
	linux-g++{
		CONFIG += COMPILER_GCC
                !build_pass:message(COMPILER_GCC)
	}
}

macx {
	CONFIG += PLATFORM_OSX
        !build_pass:message(PLATFORM_OSX)
	macx-clang {
		CONFIG += COMPILER_CLANG
                !build_pass:message(COMPILER_CLANG)
		QMAKE_TARGET.arch = x86_64
	}
	macx-clang-32{
		CONFIG += COMPILER_CLANG
                !build_pass:message(COMPILER_CLANG)
		QMAKE_TARGET.arch = x86
	}
}

contains(QMAKE_TARGET.arch, x86_64) {
	CONFIG += PROCESSOR_x64
        !build_pass:message(PROCESSOR_x64)
} else {
	CONFIG += PROCESSOR_x86
        !build_pass:message(PROCESSOR_x86)
}

CONFIG(debug, release|debug) {
	CONFIG += BUILD_DEBUG
        !build_pass:message(BUILD_DEBUG)
} else {
	CONFIG += BUILD_RELEASE
        !build_pass:message(BUILD_RELEASE)
}
