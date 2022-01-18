cmake_minimum_required(VERSION 3.14)

project(crosssi LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 COMPONENTS Core Quick QuickControls2 REQUIRED)

set(BUILD_TESTING OFF)
add_subdirectory("external/signalr-client")

add_executable(
    ${PROJECT_NAME}
    "main.cpp"
    "qml.qrc"
    )
qt_add_qml_module(
    ${PROJECT_NAME}
    URI ts.crosssi
    VERSION 1.0
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Core Qt6::Quick Qt6::QuickControls2 microsoft-signalr)
