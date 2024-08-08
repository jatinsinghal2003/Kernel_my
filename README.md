# Operating System Kernel

This project is an operating system kernel written in C and assembly language. It includes components such as a bootloader, paging system, heap manager, interrupt descriptor table (IDT), and VGA text mode output.

Some of the **IMPORTANT FUNCTIONS** of the project have been described here :-

## Project Structure

### Bootloader

- **File**: `bootloader.asm`  
  A 16-bit assembly bootloader that sets up the system and jumps to the kernel.

### Kernel

- **File**: `kernel.c`  
  The main kernel code that initializes VGA text mode, handles memory management, and sets up paging.
- **`kernel.asm`**: A 32-bit assembly file that sets up the protected mode and jumps to the `kernel_main` function. It also initializes the data segment and stack, enables the A20 line, and prepares the system for running the kernel.

### Header Files

- **File**: `kernel.h`  
  Declarations for kernel functions.
- **File**: `heap.h`  
  Definitions and declarations for heap management.
- **File**: `kheap.h`  
  Declarations for kernel heap management.
- **File**: `idt.h`  
  Definitions and declarations for the interrupt descriptor table.
- **File**: `paging.h`  
  Declarations and definitions for the paging system.

### Heap Management

- **File**: `heap.c`  
  Implements a basic heap manager with functions for creating heaps, allocating, and freeing memory blocks.
- **File**: `kheap.c`  
  Implements kernel heap management, including functions for initializing the kernel heap and allocating memory.

### Interrupt Descriptor Table (IDT)

- **File**: `idt.c`  
  Sets up and initializes the IDT, including handling basic interrupts.
- **`idt.asm`**: Contains assembly code for loading the Interrupt Descriptor Table (IDT) with the `idt_load` function.

### Paging

- **File**: `paging.c`  
  Implements paging, including directory and table management, and provides functions for setting up paging and switching directories.
- **`paging.asm`**: Contains assembly code for managing paging, including loading page directories and enabling paging.

## Functions and Components

### Kernel Main

- **Function**: `kernel_main`  
  Initializes the VGA text mode, prints a message, sets up heap management, initializes the IDT, and sets up paging.

### Heap Functions

- **Function**: `heap_create()`  
  Initializes a new heap.
- **Function**: `heap_malloc()`  
  Allocates memory from the heap.
- **Function**: `heap_free()`  
  Frees memory back to the heap.

### IDT Functions

- **Function**: `idt_init()`  
  Initializes the IDT and loads it into memory.
- **Function**: `idt_set()`  
  Sets an interrupt descriptor in the IDT.

### Paging Functions

- **Function**: `paging_new_4gb()`  
  Creates a new 4GB paging chunk.
- **Function**: `paging_switch()`  
  Switches to a new page directory.
- **Function**: `paging_set()`  
  Sets up paging for a specific virtual address.

## Project Completion

This project is now complete.
