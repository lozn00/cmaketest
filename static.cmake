    message("static library compile")
    ADD_LIBRARY(mystatic STATIC static.c)
#    SET_TARGET_PROPERTIES(mystatic PROPERTIES CLEAN_DIRECT_OUTPUT 1)
#    SET_TARGET_PROPERTIES(mystatic PROPERTIES VERSION 1.2 SOVERSION 1)
