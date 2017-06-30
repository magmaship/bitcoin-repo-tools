#!/bin/bash
# from https://github.com/UASF/gitian.sigs

version_major=0.14
version=0.14.2-uasfsegwit0.3
for guy in laanwj
do
	for platform1 in linux osx-unsigned win-unsigned
	do
		platform2="${platform1/-unsigned/}"
		wget "https://raw.githubusercontent.com/UASF/gitian.sigs/master/$version-$platform1/$guy/bitcoin-$platform2-$version_major-build.assert"
		wget "https://github.com/UASF/gitian.sigs/blob/master/$version-$platform1/$guy/bitcoin-$platform2-$version_major-build.assert.sig?raw=true" \
			-O "bitcoin-$platform2-$version_major-build.assert.sig"
	done
done
# https://raw.githubusercontent.com/UASF/gitian.sigs/master/0.14.2-uasfsegwit0.3-$platform/laanwj/bitcoin-$platform-0.14-build.assert
# https://github.com/UASF/gitian.sigs/blob/master/0.14.2-uasfsegwit0.3-linux/laanwj/bitcoin-linux-0.14-build.assert.sig?raw=true
