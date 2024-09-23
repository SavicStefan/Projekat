# OS1-Projekat

The goal of this project is to implement a small, but fully functional kernel of an operating system that supports multithreading with time-sharing. In the following text, such a system will be briefly referred to as simply the kernel.

In this project, I implemented both a memory allocator and thread management. The kernel provides the concepts of threads, semaphores, and support for time-sharing, as well as asynchronous context switching and preemption on timer and keyboard interrupts.

The kernel is implemented to be as a "library", so that the user program (application) and the kernel share the same address space, meaning they represent a statically linked single program preloaded into the computer's main memory. Concurrent processes created within the application will essentially be "lightweight" processes, i.e., threads running within that program. This configuration is typical for embedded systems, which do not execute arbitrary programs that are loaded and run on user demand but instead execute only the program (along with the operating system) that is already embedded in the target hardware.

The kernel is being implemented for the RISC-V processor architecture and a teaching computer with this processor. For the implementation, assembler for this processor and the C/C++ language can be used. The implemented kernel will run in a virtual environment – a RISC-V processor emulator.




