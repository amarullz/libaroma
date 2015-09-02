# project config
cmake_minimum_required(VERSION 2.8)
project(squirrel)

# png
add_library(squirrel ${CMAKE_LINK_TYPE} 
	squirrel/sqapi.cpp
	squirrel/sqbaselib.cpp
	squirrel/sqclass.cpp
	squirrel/sqcompiler.cpp
	squirrel/sqdebug.cpp
	squirrel/sqfuncstate.cpp
	squirrel/sqlexer.cpp
	squirrel/sqmem.cpp
	squirrel/sqobject.cpp
	squirrel/sqstate.cpp
	squirrel/sqtable.cpp
	squirrel/sqvm.cpp

	sqstdlib/sqstdaux.cpp
	sqstdlib/sqstdblob.cpp
	sqstdlib/sqstdio.cpp
	sqstdlib/sqstdmath.cpp
	sqstdlib/sqstdrex.cpp
	sqstdlib/sqstdstream.cpp
	sqstdlib/sqstdstring.cpp
	sqstdlib/sqstdsystem.cpp
)

# cflags
set_target_properties(squirrel PROPERTIES COMPILE_FLAGS "-save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror ")
