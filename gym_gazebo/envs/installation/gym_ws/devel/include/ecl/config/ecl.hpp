/**
 * @file /include/ecl/config/ecl.hpp
 * 
 * @brief Pre-processed macro definitions that define the target platform.
 * 
 * Cmake is used to check/verify your target platform parameters. The results
 * of the platform check are defined here for use by the ecl in the form of
 * preprocessed macros. 
 *
 * Alternatively, a hand readied configuration file can be setup via the
 * ECL_IS_CUSTOM macro. The use case for this generally applies when
 * gathering source files (i.e. make 'source' target) ready to be used
 * on a custom embedded board with its own toolchain/ide that are not
 * usable with cmake.
 * 
 * @date March 2009
 **/
#ifndef ECL_CONFIG_MACROS_HPP_
#define ECL_CONFIG_MACROS_HPP_

#define ECL_VERSION 0.61.6

/**
 * @addtogroup Macros
 * @{
**/
#if defined(ECL_IS_CUSTOM)     // requires user to define something like: #define ECL_IS_CUSTOM <ecl/ecl_dsp2812.hpp>
    #include ECL_IS_CUSTOM 
#elif defined(ECL_IS_UNKNOWN)  // Ecl will try and guess without cmake's help.
	#include "ecl_unknown.hpp" 
#else                          // Let cmake help with the configuration.
	/**
	 * @def ECL_IS_APPLE
	 *
	 * @brief Platform is an apple mac osx.
	 *
	 * Platform utilises the macosx system libraries. Note that
	 * this one is not exclusive with the others, usually 
	 * both ECL_IS_POSIX and ECL_IS_APPLE will be set together.
	 * Other platforms:
	 *
	 * - ECL_IS_POSIX
	 * - ECL_IS_WIN32
	 **/
/* #undef ECL_IS_APPLE */
	/** 
	 * @def ECL_IS_POSIX
	 *
	 * @brief Platform is posix-based.
	 *
	 * Platform is based on a variant of posix. Other platforms:
	 * 
	 * - ECL_IS_WIN32
	 * - ECL_IS_APPLE
	 **/
	#define ECL_IS_POSIX
	/**
	 * @def ECL_IS_WIN32
	 *
	 * @brief Platform is a 32 bit windows OS.
	 *
	 * Platform utilises the win32 libraries. Other platforms:
	 * 
	 * - ECL_IS_POSIX
	 * - ECL_IS_APPLE
	 **/
/* #undef ECL_IS_WIN32 */
	/**
	 * @def ECL_HAS_POSIX_THREADS
	 *
	 * @brief Platform uses posix threads.
	 *
	 * Platform is using the posix thread model. Other thread models:
	 * 
	 * - ECL_HAS_WIN32_THREADS
	 **/
	#define ECL_HAS_POSIX_THREADS
	/**
	 * @def ECL_HAS_WIN32_THREADS
	 *
	 * @brief Platform uses win32 threads.
	 *
	 * Platform is using the win32 thread model. Other thread models:
	 * 
	 * - ECL_HAS_POSIX_THREADS
	 **/
/* #undef ECL_HAS_WIN32_THREADS */
	/**
	 * @brief Defines the number of bytes for a char type.
	 */
	#define ECL_SIZE_OF_CHAR 1
	/**
	 * @brief Defines the number of bytes for a short type.
	 */
	#define ECL_SIZE_OF_SHORT 2
	/**
	 * @brief Defines the number of bytes for a int type.
	 */
	#define ECL_SIZE_OF_INT 4
	/**
	 * @brief Defines the number of bytes for a long type.
	 **/
	#define ECL_SIZE_OF_LONG 8
	/**
	 * @brief Defines the number of bytes for a long long type.
	 **/
	#define ECL_SIZE_OF_LONG_LONG 8
	/**
	 * @brief Defines the number of bytes for a float type.
	 **/
	#define ECL_SIZE_OF_FLOAT 4
	/**
	 * @brief Defines the number of bytes for a double type.
	 **/
	#define ECL_SIZE_OF_DOUBLE 8
	/**
	 * @brief Defines the number of bytes for a long double type.
	 **/
	#define ECL_SIZE_OF_LONG_DOUBLE 16
	/**
	 * @brief Ecl exceptions are disabled.
	 *
	 * By default, ecl builds all its libraries with exceptions
	 * enabled. These can be disabled by passing
	 * -DECL_DISABLE_EXCEPTIONS:bool=true to cmake, or, if
	 * building in ros, setting this variable in
	 * $ROS_ROOT/rosconfig.cmake to be true.
	 **/
/* #undef ECL_DISABLE_EXCEPTIONS */
	
	/**
	 * @def ECL_HAS_SHARED_LIBS
	 *
	 * @brief Defined if ecl was built as shared libraries.
	 *
	 * If both shared and static ecl libs are present on the system, 
	 * the user should predefine this if they wish to use ecl's shared 
	 * libraries.
	 **/
	#if !defined(ECL_HAS_SHARED_LIBS) && !defined(ECL_HAS_STATIC_LIBS)
	  #define ECL_HAS_SHARED_LIBS 1
	#endif
	/**
	 * @def ECL_HAS_STATIC_LIBS
	 *
	 * @brief Defined if ecl was built as static libraries.
	 *
	 * If both shared and static ecl libs are present on the system, 
	 * the user should predefine this if they wish to use ecl's static 
	 * libraries.
	 **/
	#if !defined(ECL_HAS_SHARED_LIBS) && !defined(ECL_HAS_STATIC_LIBS)
/* #undef ECL_HAS_STATIC_LIBS */
	#endif

#endif

/**
 * @}
 **/
 
#endif /* ECL_CONFIG_MACROS_HPP_ */
 
