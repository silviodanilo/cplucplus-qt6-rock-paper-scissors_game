cmake_minimum_required(VERSION 3.16)

project(Rock-Paper-Scissors_Game VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appRock-Paper-Scissors_Game

)

qt_add_qml_module(appRock-Paper-Scissors_Game
    URI Rock-Paper-Scissors_Game
    VERSION 1.0
    QML_FILES

        QML_FILES
        QML_FILES
        QML_FILES
        QML_FILES
        QML_FILES
        RESOURCES
        QML_FILES Main.qml
        QML_FILES End_Page.qml Game_Page.qml Home_Page.qml Player_Phase.qml Result_Phase.qml
        RESOURCES
        RESOURCES
        SOURCES main.cpp
        RESOURCES drawImg.png
        RESOURCES losImg.png paperImg.png rockImg.png scissorImg.png winImg.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appRock-Paper-Scissors_Game PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appRock-Paper-Scissors_Game
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appRock-Paper-Scissors_Game
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appRock-Paper-Scissors_Game
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
