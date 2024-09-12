#!/system/bin/sh
#
# Copyright (C) 2023-2024 The TeamWin Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later
#

set_permissive()
{
  setenforce 0
}

properties()
{
  echo "I:postrecoveryboot: Setting up props for $CODENAME" > /tmp/recovery.log
  resetprop "ro.boot.prjname" "$PRJNAME"
  resetprop "ro.commonsoft.ota" "$SEC_CODENAME"
  resetprop "ro.separate.soft" "$PRJNAME"
  resetprop "ro.build.device_family" "$FAMILY"
  resetprop "ro.product.oplus.cpuinfo" "$CPUINFO"
  resetprop "ro.build.product" "$CODENAME"
  resetprop "ro.product.name" "$CODENAME"
  resetprop "ro.product.model" "$CODENAME"
  resetprop "ro.product.device" "$SEC_CODENAME"
  resetprop "ro.product.product.device" "$SEC_CODENAME"
  resetprop "ro.vendor.product.oem" "$CODENAME"
  resetprop "ro.vendor.product.device.oem" "$SEC_CODENAME"
  resetprop "ro.vendor.qti.soc_name" "$SOC_NAME"
  resetprop "ro.vendor.qti.soc_model" "$SOC_MODEL"
}

load_properties()
{
  PRJNAME=21695
  CODENAME=RMX3461
  SEC_CODENAME=RE54BFL1
  FAMILY=OPSM7325
  CPUINFO=SDM778G
  SOC_NAME=lahaina
  SOC_MODEL=SM8350
  properties
}

set_permissive
load_properties

exit 0