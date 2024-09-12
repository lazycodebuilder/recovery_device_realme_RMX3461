# Twrp Recovery Tree For Realme 9 Speed Edition (RMX3461)

## Build Instructions
```sh
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_RMX3461-eng
make clean && mka vendorbootimage 2>&1 | tee out/9se-rec.log
```

## Specifications

Component Type | Details
--------------:|:-------
SoC | Qualcomm Snapdragon 778G (SM7325)
CPU | 1x 2.4 GHz Cortex-A78, 3x 2.4 GHz Cortex-A78, 4x 1.8 GHz Cortex-A55 (Kryo 670)
GPU | Qualcomm Adreno 642L, 550 MHz
RAM | 6 GB, 8 GB, 3200 MHz
Storage | 128 GB
Display | 6.6 in, IPS, 1080 x 2400 pixels, 24 bit
Battery | 5000 mAh, Li-Polymer
OS | Android 11. Realme 9 5G Speed Edition is also known as Realme 9 5G SE

![Realme RMX3461](https://github.com/lazycodebuilder/devices/blob/e71f50743449fc5786d64df2d350b192b3d47373/RMX3461.png)

---
## Copyright notice
 ```
  /*
  *  Copyright (C) 2023-2024 The TeamWin Recovery Project
  *
  * This program is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 3 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  *
  */
  ```
