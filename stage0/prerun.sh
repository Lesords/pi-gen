#!/bin/bash -e

if [ "$RELEASE" != "bookworm" ]; then
	echo "WARNING: RELEASE does not match the intended option for this branch."
	echo "         Please check the relevant README.md section."
fi

if [ ! -d "${ROOTFS_DIR}" ]; then
	bootstrap ${RELEASE} "${ROOTFS_DIR}" https://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/
fi
