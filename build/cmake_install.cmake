# Install script for directory: /home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so.0.20.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so.0.20"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/libdatachannel.so.0.20.1"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/libdatachannel.so.0.20"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so.0.20.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so.0.20"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/libdatachannel.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdatachannel.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rtc" TYPE FILE FILES
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/candidate.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/channel.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/configuration.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/datachannel.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/description.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/mediahandler.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtcpreceivingsession.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/common.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/global.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/message.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/peerconnection.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/reliability.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtc.h"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtc.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtp.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/track.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/websocket.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/websocketserver.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtppacketizationconfig.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtcpsrreporter.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtppacketizer.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/h264rtppacketizer.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/h264rtpdepacketizer.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/nalunit.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/h265rtppacketizer.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/h265nalunit.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/av1rtppacketizer.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/nalunit.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/rtcpnackresponder.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/utils.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/plihandler.hpp"
    "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/include/rtc/version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel/LibDataChannelTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel/LibDataChannelTargets.cmake"
         "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/CMakeFiles/Export/lib/cmake/LibDataChannel/LibDataChannelTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel/LibDataChannelTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel/LibDataChannelTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel" TYPE FILE FILES "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/CMakeFiles/Export/lib/cmake/LibDataChannel/LibDataChannelTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel" TYPE FILE FILES "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/CMakeFiles/Export/lib/cmake/LibDataChannel/LibDataChannelTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel" TYPE FILE FILES "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/cmake/LibDataChannelConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/LibDataChannel" TYPE FILE FILES "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/LibDataChannelConfigVersion.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/client-benchmark/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/media-receiver/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/media-sender/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/media-sfu/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/streamer/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/copy-paste/cmake_install.cmake")
  include("/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/examples/copy-paste-capi/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/buu/Workspace/PJ_Camera_OTA/libdatachannel-master/libdatachannel/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
