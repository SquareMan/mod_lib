.intel_syntax noprefix
.text
.def    _framehook_patch; .scl 2; .type 32; .endef
.def    _framehook_c; .scl 2; .type 32; .endef
.global	_framehook_shim
.def	_framehook_shim
_framehook_shim:
    pushad
    call _framehook_c
    popad
    mov eax, dword ptr [0x372AC0]
    jmp _framehook_patch + 5


