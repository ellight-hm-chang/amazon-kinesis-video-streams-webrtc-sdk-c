call "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Auxiliary/Build/vcvars64.bat" x86_amd64
set VCPKG_DEFAULT_TRIPLET=x64-windows
mkdir build
cd build
cmake -G "Visual Studio 17 2022" ^
-DBUILD_TEST=TRUE ^
-DCMAKE_BUILD_TYPE=Release ^
-DENABLE_AWS_SDK_IN_TESTS=OFF ^
-DCMAKE_TOOLCHAIN_FILE="C:/vcpkg/scripts/buildsystems/vcpkg.cmake" ^
-DCMAKE_GENERATOR_PLATFORM=x64 ^
-DCMAKE_INSTALL_PREFIX="C:/Source/kvs_supergiftpack/webrtc" ^
-DKVSPC_DIR="c:/Source/kvs_supergiftpack/producer" ^
..
REM --verbose
cmake --build . --config Release --target install 
cd ..