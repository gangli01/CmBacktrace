cmake_policy(SET CMP0076 NEW) # target_sources() command now converts relative source file paths to absolute
cmake_policy(SET CMP0079 NEW)

target_sources(${MCUX_SDK_PROJECT_NAME}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/cm_backtrace.c
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/cm_backtrace.h
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/cmb_cfg.h
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/cmb_def.h
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/fault_handler/gcc/cmb_fault.S
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/Languages/en-US/cmb_en_US.h
)

target_include_directories(${MCUX_SDK_PROJECT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/fault_handler/gcc
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/Languages/en-US
        ${CMAKE_CURRENT_LIST_DIR}/cm_backtrace/Languages
)

target_compile_definitions(${MCUX_SDK_PROJECT_NAME}
    PUBLIC
        -DCMB_USER_CFG
)