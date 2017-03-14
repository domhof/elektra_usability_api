cmake_minimum_required(VERSION 3.6)
project(elektra_usability_api)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Werror")

# For Error parameter support... elektra_error_param.h elektra_error_param.c
set(SOURCE_FILES wc.c)
add_executable(wc ${SOURCE_FILES})

find_package(Elektra REQUIRED)
if (ELEKTRA_FOUND)
    message (STATUS "Elektra ${ELEKTRA_VERSION} found")
    include_directories (${ELEKTRA_INCLUDE_DIR})

    target_link_libraries (wc ${ELEKTRA_LIBRARIES} elektra-highlevel)
else (ELEKTRA_FOUND)
    message (FATAL_ERROR "Elektra not found")
endif(ELEKTRA_FOUND)