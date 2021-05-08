#################################################
# Common compile options
#################################################

include_guard()

add_library(ez_compile_options INTERFACE)
add_library(ez::compile_options ALIAS ez_compile_options)

if (MSVC)
    target_compile_options(ez_compile_options
        INTERFACE

        /EHsc
        /Wall
        /WX
    )
else()
    target_compile_options(ez_compile_options
        INTERFACE

        -Wall
        -Wcast-align
        -Wconversion
        -Wctor-dtor-privacy
        -Werror
        -Wextra
        -Wno-unknown-attributes
        -Wnon-virtual-dtor
        -Wold-style-cast
        -Woverloaded-virtual
        -Wpedantic
        -Wshadow
        -Wsign-conversion
    )
endif()

target_compile_features(ez_compile_options INTERFACE cxx_std_20)
