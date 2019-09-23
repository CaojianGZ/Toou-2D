cmake_minimum_required(VERSION 3.1)

project(example)

aux_source_directory(. SRC)

add_executable(${PROJECT_NAME} ${SRC} ./qml.qrc)

set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "/subsystem:windows /entry:mainCRTStartup")

target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Quick Qt5::Widgets)
