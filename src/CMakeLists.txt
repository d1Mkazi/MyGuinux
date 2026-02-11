include_directories(include)

qt_add_executable(${PROJECT_NAME}
    main.cpp
)

target_link_directories(${PROJECT_NAME} PRIVATE Qt6::Core Qt6::Quick Qt6::Qml Qt6::Widgets)

include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION MyGuinux
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
