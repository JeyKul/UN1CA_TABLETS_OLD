#
# Copyright (C) 2023 BlackMesa123
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# UN1CA configuration file
ROM_VERSION="2.5.1"
ROM_VERSION+="-$(git rev-parse --short HEAD)"
ROM_CODENAME="Eureka"

# Source ROM firmware
case "$TARGET_SINGLE_SYSTEM_IMAGE" in
    # Qualcomm
    "gts9uwifi")
	# Galaxy Tab S8 Ultra (One UI 6.1.1)
        SOURCE_FIRMWARE="SM-X910/EUX/R52X4097B7E"
        SOURCE_EXTRA_FIRMWARES=("SM-F926B/EUY/351014294018326")
        SOURCE_API_LEVEL=34
        SOURCE_PRODUCT_FIRST_API_LEVEL=33
        SOURCE_VNDK_VERSION=33
        SOURCE_HAS_SYSTEM_EXT=true
        # SEC Product Feature
        SOURCE_AUDIO_SUPPORT_ACH_RINGTONE=false
        SOURCE_AUDIO_SUPPORT_DUAL_SPEAKER=true
        SOURCE_AUDIO_SUPPORT_VIRTUAL_VIBRATION=true
        SOURCE_AUTO_BRIGHTNESS_TYPE="5"
        SOURCE_DVFS_CONFIG_NAME="dvfs_policy_default"
        SOURCE_ESE_CHIP_VENDOR="NXP"
        SOURCE_ESE_COS_NAME="JCOP6.3U"
        SOURCE_FP_SENSOR_CONFIG="google_touch_display_optical,settings=3"
        SOURCE_HAS_HW_MDNIE=true
        SOURCE_HAS_MASS_CAMERA_APP=false
        SOURCE_HFR_MODE="1"
        SOURCE_HFR_SUPPORTED_REFRESH_RATE="60,120"
        SOURCE_HFR_DEFAULT_REFRESH_RATE="120"
        SOURCE_HFR_SEAMLESS_BRT="84,91"
        SOURCE_HFR_SEAMLESS_LUX="200,2500"
        SOURCE_MDNIE_SUPPORT_HDR_EFFECT=true
        SOURCE_MDNIE_SUPPORTED_MODES="65303"
        SOURCE_MDNIE_WEAKNESS_SOLUTION_FUNCTION="3"
        SOURCE_MULTI_MIC_MANAGER_VERSION="08020"
        SOURCE_SSRM_CONFIG_NAME="siop_gts8u_sm8550"
        SOURCE_SUPPORT_CUTOUT_PROTECTION=true
	SOURCE_IS_ESIM_SUPPORTED=false
        ;;
    "qssi")
        # Galaxy S23 (One UI 6.1.1)
        SOURCE_FIRMWARE="SM-S911B/EUX/352404911234563"
        SOURCE_EXTRA_FIRMWARES=("SM-S9210/CHC/356724910402671")
        SOURCE_API_LEVEL=34
        SOURCE_PRODUCT_FIRST_API_LEVEL=33
        SOURCE_VNDK_VERSION=33
        SOURCE_HAS_SYSTEM_EXT=true
        # SEC Product Feature
        SOURCE_AUDIO_SUPPORT_ACH_RINGTONE=true
        SOURCE_AUDIO_SUPPORT_DUAL_SPEAKER=true
        SOURCE_AUDIO_SUPPORT_VIRTUAL_VIBRATION=true
        SOURCE_AUTO_BRIGHTNESS_TYPE="5"
        SOURCE_DVFS_CONFIG_NAME="dvfs_policy_default"
        SOURCE_ESE_CHIP_VENDOR="NXP"
        SOURCE_ESE_COS_NAME="JCOP6.3U"
        SOURCE_FP_SENSOR_CONFIG="google_touch_display_ultrasonic"
        SOURCE_HAS_HW_MDNIE=true
        SOURCE_HAS_MASS_CAMERA_APP=false
        SOURCE_HFR_MODE="2"
        SOURCE_HFR_SUPPORTED_REFRESH_RATE="24,10,30,48,60,96,120"
        SOURCE_HFR_DEFAULT_REFRESH_RATE="120"
        SOURCE_HFR_SEAMLESS_BRT="84,91"
        SOURCE_HFR_SEAMLESS_LUX="200,2500"
        SOURCE_IS_ESIM_SUPPORTED=true
        SOURCE_MDNIE_SUPPORT_HDR_EFFECT=true
        SOURCE_MDNIE_SUPPORTED_MODES="65303"
        SOURCE_MDNIE_WEAKNESS_SOLUTION_FUNCTION="3"
        SOURCE_MULTI_MIC_MANAGER_VERSION="08020"
        SOURCE_SSRM_CONFIG_NAME="siop_dm1q_sm8550"
        SOURCE_SUPPORT_CUTOUT_PROTECTION=false
        ;;
    *)
        echo "\"$TARGET_SINGLE_SYSTEM_IMAGE\" is not a valid system image."
        return 1
        ;;
esac

return 0
