//
// Copyright (c) 2013 Christopher Baker <https://christopherbaker.net>
//
// SPDX-License-Identifier:	MIT
//


#pragma once

#include <stdint.h>

#ifdef __cplusplus
extern "C"{
#endif


/// \brief A class for calculating the CRC32 checksum from arbitrary data.
/// \sa http://forum.arduino.cc/index.php?topic=91179.0

/// \brief Reset the checksum calculation.
void CRC32_reset();

/// \brief Update the current checksum calculation with the given data.
/// \param data The datum to add to the checksum.
void CRC32_update(const uint8_t data);

/// \returns the calculated checksum.
uint32_t CRC32_finalize();

#ifdef __cplusplus
} // extern "C"
#endif