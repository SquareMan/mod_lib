	.intel_syntax noprefix
	.text
	.global	_framehook_shim
	.def	_framehook_shim;	.scl	2;	.type	32;	.endef
_framehook_shim:
	pushad
	call _framehook_c
	popad
	mov eax, dword ptr [0x372AC0]
	jmp _framehook_patch + 5
	.def	_framehook_patch;	.scl	2;	.type	32;	.endef
    .global _framehook_c
	.def	_framehook_c;	.scl	2;	.type	32;	.endef
_framehook_c:
    ret
    