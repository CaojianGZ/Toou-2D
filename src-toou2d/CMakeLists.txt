cmake_minimum_required(VERSION 3.1)

project(Toou2D)

aux_source_directory(. SRC_1)
aux_source_directory(./controls/gadget SRC_2)
aux_source_directory(./controls/interface SRC_3)
aux_source_directory(./theme SRC_4)

add_compile_definitions(-D VERSION_IN="1.0.1")
add_compile_definitions(-D URI_STR="Toou2D")

add_library(${PROJECT_NAME} SHARED ${SRC_1} ${SRC_2} ${SRC_3} ${SRC_4} ./t2d_res.qrc)
                    
target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Quick Qt5::Widgets)
