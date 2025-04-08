cd /home/colivier/src/hockeymom/external/opencv/build/modules/videoio &&
  /home/colivier/.conda/envs/HockeyMOM/bin/clang \
  -DCVAPI_EXPORTS -DENABLE_PLUGINS -DHAVE_CAMV4L2 -DHAVE_DC1394_2 -DHAVE_FFMPEG -DHAVE_GSTREAMER -DHAVE_OBSENSOR -DHAVE_OBSENSOR_V4L2 \
  -D_USE_MATH_DEFINES -D__OPENCV_BUILD=1 -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS \
  -I/home/colivier/.conda/envs/HockeyMOM/x86_64-conda-linux-gnu/sysroot/usr/include \
  -I/home/colivier/src/hockeymom/external/opencv/build/3rdparty/ippicv/ippicv_lnx/icv/include \
  -I/home/colivier/src/hockeymom/external/opencv/build/3rdparty/ippicv/ippicv_lnx/iw/include \
  -I/home/colivier/src/hockeymom/external/opencv/build -I/home/colivier/src/hockeymom/external/opencv/modules/videoio/include \
  -I/home/colivier/src/hockeymom/external/opencv/build/modules/videoio -I/home/colivier/src/opencv_contrib/modules/cudev/include \
  -I/home/colivier/src/hockeymom/external/opencv/modules/core/include \
  -I/home/colivier/src/hockeymom/external/opencv/modules/imgproc/include \
  -I/home/colivier/src/hockeymom/external/opencv/modules/imgcodecs/include \
  -I/home/colivier/src/hockeymom/external/opencv/modules/ts/include \
  -I/home/colivier/src/hockeymom/external/opencv/modules/highgui/include \
  -isystem /home/colivier/.conda/envs/HockeyMOM/include/glib-2.0 \
  -isystem /home/colivier/.conda/envs/HockeyMOM/lib/glib-2.0/include \
  -isystem /usr/include/gstreamer-1.0 \
  -isystem /usr/include/orc-0.4 -isystem /home/colivier/src/hockeymom/external/opencv/3rdparty/include/opencl/1.2 \
  -fvisibility-inlines-hidden -std=c++17 -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC \
  -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /home/colivier/.conda/envs/HockeyMOM/include  \
  -fsigned-char -ffast-math -W -Wall -Wreturn-type -Wnon-virtual-dtor -Waddress -Wsequence-point -Wformat -Wformat-security \
  -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Wsuggest-override \
  -Wno-delete-non-virtual-dtor -Wno-comment -Wimplicit-fallthrough=3 -Wno-strict-overflow -fdiagnostics-show-option \
  -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections \
  -fdata-sections  -msse -msse2 -msse3 -O3 -DNDEBUG  -DNDEBUG -std=c++17 -fPIC -MD \
  -fmax-errors=3 \
  -MT modules/videoio/CMakeFiles/opencv_videoio.dir/src/videoio_registry.cpp.o -MF CMakeFiles/opencv_videoio.dir/src/videoio_registry.cpp.o.d -o CMakeFiles/opencv_videoio.dir/src/videoio_registry.cpp.o -c /home/colivier/src/hockeymom/external/opencv/modules/videoio/src/videoio_registry.cpp


#   -isystem /usr/include/x86_64-linux-gnu
