call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64
mkdir build
cd build
cmd.exe /c cmake -G "NMake Makefiles" ..
cmake -G "NMake Makefiles" ^
-DBUILD_STATIC_LIBS=TURE ^
-DENABLE_AWS_SDK_IN_TESTS=OFF ^
-DPKG_CONFIG_EXECUTABLE="C:\vcpkg\installed\x64-windows\tools\pkgconf\pkgconf.exe" ^
-DEXT_PTHREAD_INCLUDE_DIR="C:/tools/pthreads-w32-2-9-1-release/Pre-built.2/include/" -DEXT_PTHREAD_LIBRARIES="C:/tools/pthreads-w32-2-9-1-release/Pre-built.2/lib/x64/libpthreadGC2.a" ^
-DBUILD_TEST=FALSE ^
..
nmake