vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO Askia/Amqp
	REF e2bee8789e898dee31b5cc5ac7fddc492c282ca7
	SHA512 d1dc426c0613daa2fd9e650684935cebb5ed9ea2b1e13a80bb8a8f885216b94301b9eaae32a0d724f5e9514409af94b3c456c370cb66ab8de6701b7e9d9fe83b
)

vcpkg_cmake_configure(
	SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(INSTALL ${CURRENT_PORT_DIR}/copyright DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})
