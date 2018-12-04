 cmake_minimum_required(VERSION 3.12)
#[[ message("CMAKE_BUILD_PARALLEL_LEVEL:${CMAKE_BUILD_PARALLEL_LEVEL}")#
 message("configtype: ${CMAKE_CONFIG_TYPE}")#打印平行登记
 message("CMAKE_MSVCIDE_RUN_PATH : ${CMAKE_MSVCIDE_RUN_PATH}")#
 message("CMAKE_OSX_ARCHITECTURES:${CMAKE_OSX_ARCHITECTURES}")#
 message("MACOSX_DEPLOYMENT_TARGET : ${MACOSX_DEPLOYMENT_TARGET}")#]]


# message("DESTDIR : ${DESTDIR}")#打印平行登记
#[[ message("CXX : ${CXX}")#打印平行登记
 message("CXXFLAGS : ${CXXFLAGS}")#打印平行登记
 message("CMAKE_ANDROID_NDK : ${CMAKE_ANDROID_NDK}")#打印平行登记]]

#下面的代码都可以用。。。。。。。。
 message("currentSourceDir:${PROJECT_SOURCE_DIR}")
 message("PROJECT_NAME:${PROJECT_NAME}")
 message("JAVA_HOME:$ENV{JAVA_HOME}")
 message(":$ENV{ANDROID_SDK_HOME}")
 message("ANDROID_HOME:$ENV{ANDROID_HOME}")
 message("OPERA_SYSTEM:${CMAKE_SYSTEM}")
 #https://www.cnblogs.com/xianghang123/p/3556425.html
 set(MYFILE aaaaaaa.txt)
 FILE(WRITE ${MYFILE} "write.... to write")#写入文件到当前目录
 FILE(READ ${MYFILE} readresult) #读文件到变量
 message("result result 3 ${readresult}")
 include(test1.txt)
 if (1 GREATER 2)
     message("1 >2 ")#不可能的事情
 elseif (2 GREATER 1)#greater较大的，较大于 1
     message("2 >1")
 endif ()

 if (1 LESS 2)
     message("1<2")
 endif ()

 if (abcdef MATCHES a*d)#*代表一个或者多个。
     message("abc cotnain a")
 endif ()


 if (str STREQUAL str)
     message("str equal  ")
 endif ()

 if (e STRGREATER d)
     message("leter sort e >d ")#字母排序 e要大于d.
 endif ()

 if (EXISTS ${PROJECT_SOURCE_DIR}/CMakeLists.txt)#似乎要加上绝对路径才能正确。
     message("cmake exit...")
 endif ()


 if (COMMAND adb)
  message("adb is available")#vaild有效 available 可用
 else()
  message("adb is not available ")
 endif()

 message("------------------")
 if ($UNIX)
 message("unix ........")
 elseif ($WIN32)
 message("WINDOW ")
 elseif ($WIN64)
 message("WINDOW 64 ")
 endif ()
 message("------------------")

 set(WIN32 1)
 IF(WIN32)
  MESSAGE(STATUS "This is windows.")
  #作一些 Windows 相关的操作
 ELSE(WIN32)
  MESSAGE(STATUS "This is not windows")
  #作一些非 Windows 相关的操作
 ENDIF(WIN32)
# add_executable(CMakeTestC main.c)

 add_library(MYMODULE main.c)
# EXECUTE_PROCESS()
# EXEC_PROGRAM("notepad")#打开记事本。
 message("CMAKE_BUILD_TYPE  ${CMAKE_BUILD_TYPE}")#debug
