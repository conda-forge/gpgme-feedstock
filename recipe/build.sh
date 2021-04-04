# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux
./configure --prefix=$PREFIX \
	--disable-gpgsm-test \
	--disable-gpgconf-test \
	--disable-g13-test \
  --disable-gpg-test
#  --enable-languages="no"

make -j${CPU_PROC}

make install