cmake_minimum_required (VERSION 3.1)
set (CMAKE_BACKWARDS_COMPATIBILITY 3.1)

Project ("ssl_wrapper")


include ( "${CMAKE_ROOT}/Modules/FindOpenSSL.cmake" )

find_library ( OPENSSL_LIBRARIES NAMES ssl ssleay32 ssleay32MD )


include_directories ( ${OPENSSL_INCLUDE_DIR} )

set (src_files
    ${CMAKE_CURRENT_SOURCE_DIR}/net_skeleton.c
	${CMAKE_CURRENT_SOURCE_DIR}/ssl_wrapper.c
)

SOURCE_GROUP("src" FILES ${src_files}) 

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_executable (ssl_wrapper ${src_files})

target_link_libraries( ssl_wrapper debug ${SSL_EAY_DEBUG} ${LIB_EAY_DEBUG})
target_link_libraries( ssl_wrapper optimized ${SSL_EAY_RELEASE} ${LIB_EAY_RELEASE} )




