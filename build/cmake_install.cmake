# Install script for directory: /home/media/sjw_src/cocos2d-x-3.1rc0

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
    set(CMAKE_INSTALL_CONFIG_NAME "DEBUG")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/chipmunk/src/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/Box2D/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/unzip/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/tinyxml2/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/xxhash/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/cocos/audio/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/cocos/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/extensions/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/cocos/editor-support/spine/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/cocos/editor-support/cocosbuilder/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/cocos/editor-support/cocostudio/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/lua/lua/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/external/lua/tolua/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/cocos/scripting/lua-bindings/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-empty-test/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/cpp-tests/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/lua-tests/project/cmake_install.cmake")
  include("/home/media/sjw_src/cocos2d-x-3.1rc0/build/tests/lua-empty-test/project/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/home/media/sjw_src/cocos2d-x-3.1rc0/build/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/home/media/sjw_src/cocos2d-x-3.1rc0/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
