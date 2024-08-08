SECTIONS
{
    . = 1M;
    .text : 
    .text : ALIGN(4096)
    {
        *(.text)
    }

    .rodata :
    .rodata : ALIGN(4096)
    {
        *(.rodata)
    }

    .data :
    .data : ALIGN(4096)
    {
        *(.data)
    }

    .bss :
    .bss : ALIGN(4096)
    {
        *(COMMON)
        *(.bss)
    }

    .asm : ALIGN(4096)
    {
        *(.asm)
    }
}
