vcpkg_from_git(
	OUT_SOURCE_PATH SOURCE_PATH
	URL https://github.com/Askia/Amqp
	REF e2bee8789e898dee31b5cc5ac7fddc492c282ca7
)
if(DEFINED VCPKG_CMAKE_CONFIGURE_OPTIONS)
message(STATUS "VCPKG_CMAKE_CONFIGURE_OPTIONS exists: ${VCPKG_CMAKE_CONFIGURE_OPTIONS}")
endif()
vcpkg_cmake_configure(
	SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(INSTALL ${CURRENT_PORT_DIR}/copyright DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})
