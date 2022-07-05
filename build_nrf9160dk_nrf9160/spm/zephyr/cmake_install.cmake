# Install script for directory: D:/SDK/ncs_v1.9.1/v1.9.1/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "D:/zepyth/v1.9.1/toolchain/opt/bin/arm-none-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/soc/arm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/cddl-gen/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/CANopenNode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/civetweb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/tinycbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/TraceRecorder/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/SDK/ncs_v1.9.1/v1.9.1/zephyr/samples/basic/button/build_nrf9160dk_nrf9160/spm/zephyr/cmake/reports/cmake_install.cmake")
endif()

