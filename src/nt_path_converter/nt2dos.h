/**
 * \file
 * \author Egor Tensin <Egor.Tensin@gmail.com>
 * \copyright This file is licensed under the terms of the MIT License.
 *            See LICENSE.txt for details.
 */

#pragma once

#include <ntstrsafe.h>

NTSTATUS nt2dos(UNICODE_STRING *resolved, UNICODE_STRING *unresolved);
