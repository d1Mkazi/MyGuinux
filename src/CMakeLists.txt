include_directories(include)

qt_add_executable(${PROJECT_NAME}
    cpp/main.cpp
)

qt_add_qml_module(${PROJECT_NAME}
    URI gui
    QML_FILES
        qml/Main.qml
)
    

target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
