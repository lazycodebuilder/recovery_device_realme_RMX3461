#
# Copyright (C) 2023-2024 The TeamWin Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), RMX3461)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
