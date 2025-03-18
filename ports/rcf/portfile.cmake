vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO thirogit/rcf
  REF 2.2.0.0
  SHA512 0
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()


vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/license.txt")