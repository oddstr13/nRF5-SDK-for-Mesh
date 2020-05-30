PLATFORM=nrf52840_xxAA
BOARD=pca10059
SOFTDEVICE=s140_7.0.1

mkdir -p build
pushd build
    cmake -G "Unix Makefiles" -DTOOLCHAIN=gccarmemb -DPLATFORM=${PLATFORM} -DBOARD=${BOARD} -DSOFTDEVICE=${SOFTDEVICE} ..
    make make serial_${PLATFORM}_${SOFTDEVICE}
popd