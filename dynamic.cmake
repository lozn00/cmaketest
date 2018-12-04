 message("dynamic library compile")
 set(MY_SOURCE dynamic.c.bak)

 ADD_LIBRARY(mydynamic SHARED  ${MY_SOURCE})
 SET_TARGET_PROPERTIES (mydynamic PROPERTIES VERSION 1.2 SOVERSION 1)