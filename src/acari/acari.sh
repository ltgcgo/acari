#!/bin/bash
nativeArch="$(uname -m)"
detectArch="$nativeArch"
# Arch rename
case $nativeArch in
	"i386" | "i686" )
		detectArch="i386"
		;;
	"x86_64" | "amd64")
		detectArch="amd64"
		;;
	"arm64" | "armv8l" | "aarch64")
		detectArch="arm64"
		;;
	"riscv64" )
		detectArch="riscv64"
		;;
esac
# Revision match
cpuFlags=$(cat "/proc/cpuinfo")
case $detectArch in
	"amd64" )
		if [[ "$cpuFlags" == *"avx512"* ]]; then
			detectArch="amd64v4"
		elif [[ "$cpuFlags" == *"avx2"* ]]; then
			detectArch="amd64v3"
		elif [[ "$cpuFlags" == *"sse3"* ]]; then
			detectArch="amd64v2"
		fi
		;;
	"arm64" )
		if [[ "$cpuFlags" == *"ilrcpc"* ]]; then
			detectArch="arm64_4"
		elif [[ "$cpuFlags" == *"lrcpc"* ]]; then
			detectArch="arm64_3"
		elif [[ "$cpuFlags" == *"asimddp"* ]]; then
			detectArch="arm64_2"
		elif [[ "$cpuFlags" == *"atomics"* ]] && [[ "$cpuFlags" == *"asimdrdm"* ]]; then
			detectArch="arm64_1"
		fi
		;;
esac
# Print the output
printf "$detectArch"
exit