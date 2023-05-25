extern void* __cdecl malloc(unsigned long);
extern void free(void*);
int crashme = 0;
void framehook_c() {
    if (malloc(1000000) == 0) {
        //crashtime
        crashme = 1;
    }
}
