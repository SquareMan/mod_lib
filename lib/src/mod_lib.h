#ifndef MOD_LIB_H
#define MOD_LIB_H

#include "bfbb/zGlobals.h"

extern zGlobals globals;
extern void* xMemAlloc(unsigned int size);

void *get_mod_data(int idx);

#endif
