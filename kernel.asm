
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b0813103          	ld	sp,-1272(sp) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	32d060ef          	jal	ra,80006b48 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN6Prekid9zaPrekideEv>:
.global _ZN6Prekid9zaPrekideEv
.type _ZN6Prekid9zaPrekideEv @function
.align 4

_ZN6Prekid9zaPrekideEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN6Prekid16interruptHandlerEv
    80001084:	795000ef          	jal	ra,80002018 <_ZN6Prekid16interruptHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN6Prekid13pushRegistersEv>:
.global _ZN6Prekid13pushRegistersEv
.type _ZN6Prekid13pushRegistersEv @function
_ZN6Prekid13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret

000000008000118c <_ZN6Prekid12popRegistersEv>:
.global _ZN6Prekid12popRegistersEv
.type _ZN6Prekid12popRegistersEv @function
_ZN6Prekid12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256
    ret
    80001204:	00008067          	ret

0000000080001208 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>:
.global _ZN7_thread13contextSwitchEPNS_7ContextES1_
.type _ZN7_thread13contextSwitchEPNS_7ContextES1_ @function

_ZN7_thread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0(a0)
    80001208:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    8000120c:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1);
    80001210:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1);
    80001214:	0085b103          	ld	sp,8(a1)

    80001218:	00008067          	ret

000000008000121c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000121c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001220:	00b29a63          	bne	t0,a1,80001234 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001224:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001228:	fe029ae3          	bnez	t0,8000121c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000122c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001230:	00008067          	ret

0000000080001234 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001234:	00100513          	li	a0,1
    80001238:	00008067          	ret

000000008000123c <_Z5stavimmmmm>:
#include "../lib/console.h"
#include "../h/memoryAllocator.hpp"

#include "../h/prekid.hpp"

uint64 stavi(uint64 code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0){
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
    uint64 ans;
    __asm__ volatile("mv %0, a0" : "=r"(ans));
    8000124c:	00050513          	mv	a0,a0
    return ans;
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00113423          	sd	ra,8(sp)
    80001264:	00813023          	sd	s0,0(sp)
    80001268:	01010413          	addi	s0,sp,16
    8000126c:	00050593          	mv	a1,a0
//    if(Prekid::super)return MemoryAllocator::mem_alloc(size);

    size_t sz = size;
//    if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    return (void*)stavi(0x01, (uint64)sz);
    80001270:	00000713          	li	a4,0
    80001274:	00000693          	li	a3,0
    80001278:	00000613          	li	a2,0
    8000127c:	00100513          	li	a0,1
    80001280:	00000097          	auipc	ra,0x0
    80001284:	fbc080e7          	jalr	-68(ra) # 8000123c <_Z5stavimmmmm>
}
    80001288:	00813083          	ld	ra,8(sp)
    8000128c:	00013403          	ld	s0,0(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <_Z8mem_freePv>:

int mem_free (void* ptr){
    80001298:	ff010113          	addi	sp,sp,-16
    8000129c:	00113423          	sd	ra,8(sp)
    800012a0:	00813023          	sd	s0,0(sp)
    800012a4:	01010413          	addi	s0,sp,16
    800012a8:	00050593          	mv	a1,a0
//    if(Prekid::super){
//        MemoryAllocator::mem_free(ptr);
//        return 0;
//    }
    return (int)stavi(0x02, (uint64)ptr);
    800012ac:	00000713          	li	a4,0
    800012b0:	00000693          	li	a3,0
    800012b4:	00000613          	li	a2,0
    800012b8:	00200513          	li	a0,2
    800012bc:	00000097          	auipc	ra,0x0
    800012c0:	f80080e7          	jalr	-128(ra) # 8000123c <_Z5stavimmmmm>
}
    800012c4:	0005051b          	sext.w	a0,a0
    800012c8:	00813083          	ld	ra,8(sp)
    800012cc:	00013403          	ld	s0,0(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    800012d8:	fd010113          	addi	sp,sp,-48
    800012dc:	02113423          	sd	ra,40(sp)
    800012e0:	02813023          	sd	s0,32(sp)
    800012e4:	00913c23          	sd	s1,24(sp)
    800012e8:	01213823          	sd	s2,16(sp)
    800012ec:	01313423          	sd	s3,8(sp)
    800012f0:	03010413          	addi	s0,sp,48
    800012f4:	00050493          	mv	s1,a0
    800012f8:	00058913          	mv	s2,a1
    800012fc:	00060993          	mv	s3,a2
    void* stack_space = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001300:	00001537          	lui	a0,0x1
    80001304:	00001097          	auipc	ra,0x1
    80001308:	300080e7          	jalr	768(ra) # 80002604 <_ZN15MemoryAllocator9mem_allocEm>
    8000130c:	00050713          	mv	a4,a0
    return (int)stavi(0x11, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    80001310:	00098693          	mv	a3,s3
    80001314:	00090613          	mv	a2,s2
    80001318:	00048593          	mv	a1,s1
    8000131c:	01100513          	li	a0,17
    80001320:	00000097          	auipc	ra,0x0
    80001324:	f1c080e7          	jalr	-228(ra) # 8000123c <_Z5stavimmmmm>
}
    80001328:	0005051b          	sext.w	a0,a0
    8000132c:	02813083          	ld	ra,40(sp)
    80001330:	02013403          	ld	s0,32(sp)
    80001334:	01813483          	ld	s1,24(sp)
    80001338:	01013903          	ld	s2,16(sp)
    8000133c:	00813983          	ld	s3,8(sp)
    80001340:	03010113          	addi	sp,sp,48
    80001344:	00008067          	ret

0000000080001348 <_Z11thread_exitv>:

int thread_exit (){
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00113423          	sd	ra,8(sp)
    80001350:	00813023          	sd	s0,0(sp)
    80001354:	01010413          	addi	s0,sp,16
    return (int)stavi(0x12);
    80001358:	00000713          	li	a4,0
    8000135c:	00000693          	li	a3,0
    80001360:	00000613          	li	a2,0
    80001364:	00000593          	li	a1,0
    80001368:	01200513          	li	a0,18
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	ed0080e7          	jalr	-304(ra) # 8000123c <_Z5stavimmmmm>
}
    80001374:	0005051b          	sext.w	a0,a0
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    stavi(0x13);
    80001398:	00000713          	li	a4,0
    8000139c:	00000693          	li	a3,0
    800013a0:	00000613          	li	a2,0
    800013a4:	00000593          	li	a1,0
    800013a8:	01300513          	li	a0,19
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	e90080e7          	jalr	-368(ra) # 8000123c <_Z5stavimmmmm>
}
    800013b4:	00813083          	ld	ra,8(sp)
    800013b8:	00013403          	ld	s0,0(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z5yieldv>:

void yield(){
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    stavi(0x14);
    800013d4:	00000713          	li	a4,0
    800013d8:	00000693          	li	a3,0
    800013dc:	00000613          	li	a2,0
    800013e0:	00000593          	li	a1,0
    800013e4:	01400513          	li	a0,20
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	e54080e7          	jalr	-428(ra) # 8000123c <_Z5stavimmmmm>
}
    800013f0:	00813083          	ld	ra,8(sp)
    800013f4:	00013403          	ld	s0,0(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle, unsigned init){
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00113423          	sd	ra,8(sp)
    80001408:	00813023          	sd	s0,0(sp)
    8000140c:	01010413          	addi	s0,sp,16
    return (int)stavi(0x21, (uint64)handle, (uint64)init);
    80001410:	00000713          	li	a4,0
    80001414:	00000693          	li	a3,0
    80001418:	02059613          	slli	a2,a1,0x20
    8000141c:	02065613          	srli	a2,a2,0x20
    80001420:	00050593          	mv	a1,a0
    80001424:	02100513          	li	a0,33
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	e14080e7          	jalr	-492(ra) # 8000123c <_Z5stavimmmmm>
}
    80001430:	0005051b          	sext.w	a0,a0
    80001434:	00813083          	ld	ra,8(sp)
    80001438:	00013403          	ld	s0,0(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle){
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00113423          	sd	ra,8(sp)
    8000144c:	00813023          	sd	s0,0(sp)
    80001450:	01010413          	addi	s0,sp,16
    80001454:	00050593          	mv	a1,a0
    return (int)stavi(0x22, (uint64)handle);
    80001458:	00000713          	li	a4,0
    8000145c:	00000693          	li	a3,0
    80001460:	00000613          	li	a2,0
    80001464:	02200513          	li	a0,34
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	dd4080e7          	jalr	-556(ra) # 8000123c <_Z5stavimmmmm>
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813083          	ld	ra,8(sp)
    80001478:	00013403          	ld	s0,0(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id){
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00113423          	sd	ra,8(sp)
    8000148c:	00813023          	sd	s0,0(sp)
    80001490:	01010413          	addi	s0,sp,16
    80001494:	00050593          	mv	a1,a0
    return (int)stavi(0x23, (uint64)id);
    80001498:	00000713          	li	a4,0
    8000149c:	00000693          	li	a3,0
    800014a0:	00000613          	li	a2,0
    800014a4:	02300513          	li	a0,35
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	d94080e7          	jalr	-620(ra) # 8000123c <_Z5stavimmmmm>
}
    800014b0:	0005051b          	sext.w	a0,a0
    800014b4:	00813083          	ld	ra,8(sp)
    800014b8:	00013403          	ld	s0,0(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id){
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00113423          	sd	ra,8(sp)
    800014cc:	00813023          	sd	s0,0(sp)
    800014d0:	01010413          	addi	s0,sp,16
    800014d4:	00050593          	mv	a1,a0
    return (int)stavi(0x24, (uint64)id);
    800014d8:	00000713          	li	a4,0
    800014dc:	00000693          	li	a3,0
    800014e0:	00000613          	li	a2,0
    800014e4:	02400513          	li	a0,36
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	d54080e7          	jalr	-684(ra) # 8000123c <_Z5stavimmmmm>
}
    800014f0:	0005051b          	sext.w	a0,a0
    800014f4:	00813083          	ld	ra,8(sp)
    800014f8:	00013403          	ld	s0,0(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_Z13sem_timedwaitP4_semm>:

int sem_timedwait(sem_t id, time_t timeout){
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00113423          	sd	ra,8(sp)
    8000150c:	00813023          	sd	s0,0(sp)
    80001510:	01010413          	addi	s0,sp,16
    80001514:	00058613          	mv	a2,a1
    return (int)stavi(0x25, (uint64)id, (uint64)timeout);
    80001518:	00000713          	li	a4,0
    8000151c:	00000693          	li	a3,0
    80001520:	00050593          	mv	a1,a0
    80001524:	02500513          	li	a0,37
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	d14080e7          	jalr	-748(ra) # 8000123c <_Z5stavimmmmm>
}
    80001530:	0005051b          	sext.w	a0,a0
    80001534:	00813083          	ld	ra,8(sp)
    80001538:	00013403          	ld	s0,0(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id){
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00113423          	sd	ra,8(sp)
    8000154c:	00813023          	sd	s0,0(sp)
    80001550:	01010413          	addi	s0,sp,16
    80001554:	00050593          	mv	a1,a0
    return (int)stavi(0x26, (uint64)id);
    80001558:	00000713          	li	a4,0
    8000155c:	00000693          	li	a3,0
    80001560:	00000613          	li	a2,0
    80001564:	02600513          	li	a0,38
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	cd4080e7          	jalr	-812(ra) # 8000123c <_Z5stavimmmmm>
}
    80001570:	0005051b          	sext.w	a0,a0
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z10time_sleepm>:

int time_sleep (time_t t){
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00113423          	sd	ra,8(sp)
    8000158c:	00813023          	sd	s0,0(sp)
    80001590:	01010413          	addi	s0,sp,16
    80001594:	00050593          	mv	a1,a0
    return (int)stavi(0x31, (uint64)t);
    80001598:	00000713          	li	a4,0
    8000159c:	00000693          	li	a3,0
    800015a0:	00000613          	li	a2,0
    800015a4:	03100513          	li	a0,49
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	c94080e7          	jalr	-876(ra) # 8000123c <_Z5stavimmmmm>
}
    800015b0:	0005051b          	sext.w	a0,a0
    800015b4:	00813083          	ld	ra,8(sp)
    800015b8:	00013403          	ld	s0,0(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z4getcv>:

char getc (){
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00113423          	sd	ra,8(sp)
    800015cc:	00813023          	sd	s0,0(sp)
    800015d0:	01010413          	addi	s0,sp,16
//    return __getc();
    return (char)stavi(0x41);
    800015d4:	00000713          	li	a4,0
    800015d8:	00000693          	li	a3,0
    800015dc:	00000613          	li	a2,0
    800015e0:	00000593          	li	a1,0
    800015e4:	04100513          	li	a0,65
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	c54080e7          	jalr	-940(ra) # 8000123c <_Z5stavimmmmm>
}
    800015f0:	0ff57513          	andi	a0,a0,255
    800015f4:	00813083          	ld	ra,8(sp)
    800015f8:	00013403          	ld	s0,0(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_Z4putcc>:

void putc (char c){
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00113423          	sd	ra,8(sp)
    8000160c:	00813023          	sd	s0,0(sp)
    80001610:	01010413          	addi	s0,sp,16
    __putc(c);
    80001614:	00008097          	auipc	ra,0x8
    80001618:	81c080e7          	jalr	-2020(ra) # 80008e30 <__putc>
//    stavi(0x42, (uint64)c);
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN4_semC1Ei>:

#include "../test/printing.hpp"

int _sem::semId = 0;

_sem::_sem(int init) : id(semId++), init(init) {
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	02010413          	addi	s0,sp,32
    80001640:	00050493          	mv	s1,a0
    80001644:	0000a717          	auipc	a4,0xa
    80001648:	53c70713          	addi	a4,a4,1340 # 8000bb80 <_ZN4_sem5semIdE>
    8000164c:	00072783          	lw	a5,0(a4)
    80001650:	0017869b          	addiw	a3,a5,1
    80001654:	00d72023          	sw	a3,0(a4)
    80001658:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    8000165c:	00b52223          	sw	a1,4(a0)
    blocked = new List<_thread>();
    80001660:	01800513          	li	a0,24
    80001664:	00001097          	auipc	ra,0x1
    80001668:	310080e7          	jalr	784(ra) # 80002974 <_Znwm>

    node* head = nullptr;
    node* tail = nullptr;

public:
    List(){}
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	00053823          	sd	zero,16(a0)
    80001678:	00a4b423          	sd	a0,8(s1)
}
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	00813483          	ld	s1,8(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_ZN4_sem7semOpenEPPS_i>:

int _sem::semOpen(sem_t* handle, int init){
    80001690:	fd010113          	addi	sp,sp,-48
    80001694:	02113423          	sd	ra,40(sp)
    80001698:	02813023          	sd	s0,32(sp)
    8000169c:	00913c23          	sd	s1,24(sp)
    800016a0:	01213823          	sd	s2,16(sp)
    800016a4:	01313423          	sd	s3,8(sp)
    800016a8:	03010413          	addi	s0,sp,48
    800016ac:	00050913          	mv	s2,a0
    800016b0:	00058993          	mv	s3,a1
    *handle = new _sem(init);
    800016b4:	01000513          	li	a0,16
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	2bc080e7          	jalr	700(ra) # 80002974 <_Znwm>
    800016c0:	00050493          	mv	s1,a0
    800016c4:	00098593          	mv	a1,s3
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	f64080e7          	jalr	-156(ra) # 8000162c <_ZN4_semC1Ei>
    800016d0:	00993023          	sd	s1,0(s2)
    return (*handle)->id;
    800016d4:	0004a503          	lw	a0,0(s1)
}
    800016d8:	02813083          	ld	ra,40(sp)
    800016dc:	02013403          	ld	s0,32(sp)
    800016e0:	01813483          	ld	s1,24(sp)
    800016e4:	01013903          	ld	s2,16(sp)
    800016e8:	00813983          	ld	s3,8(sp)
    800016ec:	03010113          	addi	sp,sp,48
    800016f0:	00008067          	ret
    800016f4:	00050913          	mv	s2,a0
    *handle = new _sem(init);
    800016f8:	00048513          	mv	a0,s1
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	2e8080e7          	jalr	744(ra) # 800029e4 <_ZdlPv>
    80001704:	00090513          	mv	a0,s2
    80001708:	0000b097          	auipc	ra,0xb
    8000170c:	600080e7          	jalr	1536(ra) # 8000cd08 <_Unwind_Resume>

0000000080001710 <_ZN4_sem5blockEv>:
    while(!handle->blocked->empty())handle->unblock();
    delete handle;
    return 0;
}

void _sem::block(){
    80001710:	fe010113          	addi	sp,sp,-32
    80001714:	00113c23          	sd	ra,24(sp)
    80001718:	00813823          	sd	s0,16(sp)
    8000171c:	00913423          	sd	s1,8(sp)
    80001720:	01213023          	sd	s2,0(sp)
    80001724:	02010413          	addi	s0,sp,32
    blocked->add_last(_thread::running);
    80001728:	00853483          	ld	s1,8(a0)
    8000172c:	0000a797          	auipc	a5,0xa
    80001730:	3bc7b783          	ld	a5,956(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001734:	0007b903          	ld	s2,0(a5)
        head = nw;
        if(!tail)tail = head;
    }

    void add_last(T* info){
        node* nw = new node(info, 0);
    80001738:	01000513          	li	a0,16
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	238080e7          	jalr	568(ra) # 80002974 <_Znwm>
        node(T* info, node* next) : info(info), next(next) {}
    80001744:	01253023          	sd	s2,0(a0)
    80001748:	00053423          	sd	zero,8(a0)
        if(tail){
    8000174c:	0084b783          	ld	a5,8(s1)
    80001750:	02078c63          	beqz	a5,80001788 <_ZN4_sem5blockEv+0x78>
            tail->next = nw;
    80001754:	00a7b423          	sd	a0,8(a5)
            tail = nw;
    80001758:	00a4b423          	sd	a0,8(s1)
    _thread::running->setBlocked(true);
    8000175c:	0000a797          	auipc	a5,0xa
    80001760:	38c7b783          	ld	a5,908(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001764:	0007b783          	ld	a5,0(a5)

    bool getFinish() const { return this->finish; }
    void setFinish(bool f){ this->finish = f; }

    bool getBlocked() const { return this->blocked; }
    void setBlocked(bool f){ this->blocked = f; }
    80001768:	00100713          	li	a4,1
    8000176c:	02e78ca3          	sb	a4,57(a5)
}
    80001770:	01813083          	ld	ra,24(sp)
    80001774:	01013403          	ld	s0,16(sp)
    80001778:	00813483          	ld	s1,8(sp)
    8000177c:	00013903          	ld	s2,0(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret
        }
        else{
            head = tail = nw;
    80001788:	00a4b423          	sd	a0,8(s1)
    8000178c:	00a4b023          	sd	a0,0(s1)
    80001790:	fcdff06f          	j	8000175c <_ZN4_sem5blockEv+0x4c>

0000000080001794 <_ZN4_sem7unblockEv>:

_thread* _sem::unblock(){
    80001794:	fe010113          	addi	sp,sp,-32
    80001798:	00113c23          	sd	ra,24(sp)
    8000179c:	00813823          	sd	s0,16(sp)
    800017a0:	00913423          	sd	s1,8(sp)
    800017a4:	02010413          	addi	s0,sp,32
    _thread* t = blocked->remove_first();
    800017a8:	00853783          	ld	a5,8(a0)
        }
    }

    T* remove_first(){
        if(!head)return 0;
    800017ac:	0007b503          	ld	a0,0(a5)
    800017b0:	04050663          	beqz	a0,800017fc <_ZN4_sem7unblockEv+0x68>

        node* p = head;
        head = head->next;
    800017b4:	00853703          	ld	a4,8(a0)
    800017b8:	00e7b023          	sd	a4,0(a5)
        if(!head)tail = 0;
    800017bc:	02070c63          	beqz	a4,800017f4 <_ZN4_sem7unblockEv+0x60>

        T* ans = p->info;
    800017c0:	00053483          	ld	s1,0(a0)
        delete p;
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	220080e7          	jalr	544(ra) # 800029e4 <_ZdlPv>
    800017cc:	02048ca3          	sb	zero,57(s1)
    t->setBlocked(false);
    Scheduler::put(t);
    800017d0:	00048513          	mv	a0,s1
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	764080e7          	jalr	1892(ra) # 80002f38 <_ZN9Scheduler3putEP7_thread>
    return t;
}
    800017dc:	00048513          	mv	a0,s1
    800017e0:	01813083          	ld	ra,24(sp)
    800017e4:	01013403          	ld	s0,16(sp)
    800017e8:	00813483          	ld	s1,8(sp)
    800017ec:	02010113          	addi	sp,sp,32
    800017f0:	00008067          	ret
        if(!head)tail = 0;
    800017f4:	0007b423          	sd	zero,8(a5)
    800017f8:	fc9ff06f          	j	800017c0 <_ZN4_sem7unblockEv+0x2c>
        if(!head)return 0;
    800017fc:	00050493          	mv	s1,a0
    80001800:	fcdff06f          	j	800017cc <_ZN4_sem7unblockEv+0x38>

0000000080001804 <_ZN4_sem8semCloseEPS_>:
int _sem::semClose(sem_t handle){
    80001804:	fe010113          	addi	sp,sp,-32
    80001808:	00113c23          	sd	ra,24(sp)
    8000180c:	00813823          	sd	s0,16(sp)
    80001810:	00913423          	sd	s1,8(sp)
    80001814:	02010413          	addi	s0,sp,32
    80001818:	00050493          	mv	s1,a0
    if(!handle)return -1;
    8000181c:	04050263          	beqz	a0,80001860 <_ZN4_sem8semCloseEPS_+0x5c>
    while(!handle->blocked->empty())handle->unblock();
    80001820:	0084b783          	ld	a5,8(s1)
    T* get_last(){
        return (tail ? tail->info : 0);
    }

    bool empty(){
        return head == 0;
    80001824:	0007b783          	ld	a5,0(a5)
    80001828:	00078a63          	beqz	a5,8000183c <_ZN4_sem8semCloseEPS_+0x38>
    8000182c:	00048513          	mv	a0,s1
    80001830:	00000097          	auipc	ra,0x0
    80001834:	f64080e7          	jalr	-156(ra) # 80001794 <_ZN4_sem7unblockEv>
    80001838:	fe9ff06f          	j	80001820 <_ZN4_sem8semCloseEPS_+0x1c>
    delete handle;
    8000183c:	00048513          	mv	a0,s1
    80001840:	00001097          	auipc	ra,0x1
    80001844:	1a4080e7          	jalr	420(ra) # 800029e4 <_ZdlPv>
    return 0;
    80001848:	00000513          	li	a0,0
}
    8000184c:	01813083          	ld	ra,24(sp)
    80001850:	01013403          	ld	s0,16(sp)
    80001854:	00813483          	ld	s1,8(sp)
    80001858:	02010113          	addi	sp,sp,32
    8000185c:	00008067          	ret
    if(!handle)return -1;
    80001860:	fff00513          	li	a0,-1
    80001864:	fe9ff06f          	j	8000184c <_ZN4_sem8semCloseEPS_+0x48>

0000000080001868 <_ZN4_sem7semWaitEPS_>:

int _sem::semWait(sem_t handle){
    if(!handle)return -1;
    80001868:	04050863          	beqz	a0,800018b8 <_ZN4_sem7semWaitEPS_+0x50>
int _sem::semWait(sem_t handle){
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00113423          	sd	ra,8(sp)
    80001874:	00813023          	sd	s0,0(sp)
    80001878:	01010413          	addi	s0,sp,16
    if(--(handle->init) < 0)handle->block();
    8000187c:	00452783          	lw	a5,4(a0)
    80001880:	fff7879b          	addiw	a5,a5,-1
    80001884:	00f52223          	sw	a5,4(a0)
    80001888:	02079713          	slli	a4,a5,0x20
    8000188c:	02074063          	bltz	a4,800018ac <_ZN4_sem7semWaitEPS_+0x44>
    thread_dispatch();
    80001890:	00000097          	auipc	ra,0x0
    80001894:	af8080e7          	jalr	-1288(ra) # 80001388 <_Z15thread_dispatchv>
    return 0;
    80001898:	00000513          	li	a0,0
}
    8000189c:	00813083          	ld	ra,8(sp)
    800018a0:	00013403          	ld	s0,0(sp)
    800018a4:	01010113          	addi	sp,sp,16
    800018a8:	00008067          	ret
    if(--(handle->init) < 0)handle->block();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	e64080e7          	jalr	-412(ra) # 80001710 <_ZN4_sem5blockEv>
    800018b4:	fddff06f          	j	80001890 <_ZN4_sem7semWaitEPS_+0x28>
    if(!handle)return -1;
    800018b8:	fff00513          	li	a0,-1
}
    800018bc:	00008067          	ret

00000000800018c0 <_ZN4_sem9semSignalEPS_>:

int _sem::semSignal(sem_t handle){
    if(!handle)return -1;
    800018c0:	06050863          	beqz	a0,80001930 <_ZN4_sem9semSignalEPS_+0x70>
int _sem::semSignal(sem_t handle){
    800018c4:	fe010113          	addi	sp,sp,-32
    800018c8:	00113c23          	sd	ra,24(sp)
    800018cc:	00813823          	sd	s0,16(sp)
    800018d0:	00913423          	sd	s1,8(sp)
    800018d4:	02010413          	addi	s0,sp,32
    if(++handle->init <= 0){
    800018d8:	00452783          	lw	a5,4(a0)
    800018dc:	0017879b          	addiw	a5,a5,1
    800018e0:	0007871b          	sext.w	a4,a5
    800018e4:	00f52223          	sw	a5,4(a0)
    800018e8:	02e05263          	blez	a4,8000190c <_ZN4_sem9semSignalEPS_+0x4c>
        _thread* nit = handle->unblock();
        nit->setSleep(false); nit->setBlocked(false);
        _sleep::izbaciSleep(nit);
        nit->rtv = 0;
    }
    thread_dispatch();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	a9c080e7          	jalr	-1380(ra) # 80001388 <_Z15thread_dispatchv>
    return 0;
    800018f4:	00000513          	li	a0,0
}
    800018f8:	01813083          	ld	ra,24(sp)
    800018fc:	01013403          	ld	s0,16(sp)
    80001900:	00813483          	ld	s1,8(sp)
    80001904:	02010113          	addi	sp,sp,32
    80001908:	00008067          	ret
        _thread* nit = handle->unblock();
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	e88080e7          	jalr	-376(ra) # 80001794 <_ZN4_sem7unblockEv>
    80001914:	00050493          	mv	s1,a0

    bool getSleep() const { return this->sleep; }
    void setSleep(bool f){ this->sleep = f; }
    80001918:	02050d23          	sb	zero,58(a0)
    void setBlocked(bool f){ this->blocked = f; }
    8000191c:	02050ca3          	sb	zero,57(a0)
        _sleep::izbaciSleep(nit);
    80001920:	00000097          	auipc	ra,0x0
    80001924:	650080e7          	jalr	1616(ra) # 80001f70 <_ZN6_sleep11izbaciSleepEP7_thread>
        nit->rtv = 0;
    80001928:	0404a423          	sw	zero,72(s1)
    8000192c:	fc1ff06f          	j	800018ec <_ZN4_sem9semSignalEPS_+0x2c>
    if(!handle)return -1;
    80001930:	fff00513          	li	a0,-1
}
    80001934:	00008067          	ret

0000000080001938 <_ZN4_sem12semTrysignalEPS_>:

int _sem::semTrysignal(sem_t handle){
    if(!handle)return -1;
    80001938:	04050663          	beqz	a0,80001984 <_ZN4_sem12semTrysignalEPS_+0x4c>
    if(++handle->init <= 0)handle->unblock();
    8000193c:	00452783          	lw	a5,4(a0)
    80001940:	0017879b          	addiw	a5,a5,1
    80001944:	0007871b          	sext.w	a4,a5
    80001948:	00f52223          	sw	a5,4(a0)
    8000194c:	00e05663          	blez	a4,80001958 <_ZN4_sem12semTrysignalEPS_+0x20>
    return 0;
    80001950:	00000513          	li	a0,0
}
    80001954:	00008067          	ret
int _sem::semTrysignal(sem_t handle){
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00113423          	sd	ra,8(sp)
    80001960:	00813023          	sd	s0,0(sp)
    80001964:	01010413          	addi	s0,sp,16
    if(++handle->init <= 0)handle->unblock();
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	e2c080e7          	jalr	-468(ra) # 80001794 <_ZN4_sem7unblockEv>
    return 0;
    80001970:	00000513          	li	a0,0
}
    80001974:	00813083          	ld	ra,8(sp)
    80001978:	00013403          	ld	s0,0(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret
    if(!handle)return -1;
    80001984:	fff00513          	li	a0,-1
    80001988:	00008067          	ret

000000008000198c <_ZN4_sem12semTimedwaitEPS_m>:

int _sem::semTimedwait(sem_t handle, time_t t){
    if(!handle)return -1;
    8000198c:	0a050263          	beqz	a0,80001a30 <_ZN4_sem12semTimedwaitEPS_m+0xa4>
int _sem::semTimedwait(sem_t handle, time_t t){
    80001990:	fe010113          	addi	sp,sp,-32
    80001994:	00113c23          	sd	ra,24(sp)
    80001998:	00813823          	sd	s0,16(sp)
    8000199c:	00913423          	sd	s1,8(sp)
    800019a0:	01213023          	sd	s2,0(sp)
    800019a4:	02010413          	addi	s0,sp,32
    800019a8:	00058493          	mv	s1,a1
    if(t == 0)return -2;
    800019ac:	08058663          	beqz	a1,80001a38 <_ZN4_sem12semTimedwaitEPS_m+0xac>

    if(--(handle->init) < 0){
    800019b0:	00452783          	lw	a5,4(a0)
    800019b4:	fff7879b          	addiw	a5,a5,-1
    800019b8:	00f52223          	sw	a5,4(a0)
    800019bc:	02079713          	slli	a4,a5,0x20
    800019c0:	02074e63          	bltz	a4,800019fc <_ZN4_sem12semTimedwaitEPS_m+0x70>
        handle->block();
        _sleep::insert(_thread::running, t);
        thread_dispatch();
    }
    else{
        _thread::running->rtv = 0;
    800019c4:	0000a797          	auipc	a5,0xa
    800019c8:	1247b783          	ld	a5,292(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019cc:	0007b783          	ld	a5,0(a5)
    800019d0:	0407a423          	sw	zero,72(a5)
    }

    return _thread::running->rtv;
    800019d4:	0000a797          	auipc	a5,0xa
    800019d8:	1147b783          	ld	a5,276(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019dc:	0007b783          	ld	a5,0(a5)
    800019e0:	0487a503          	lw	a0,72(a5)
}
    800019e4:	01813083          	ld	ra,24(sp)
    800019e8:	01013403          	ld	s0,16(sp)
    800019ec:	00813483          	ld	s1,8(sp)
    800019f0:	00013903          	ld	s2,0(sp)
    800019f4:	02010113          	addi	sp,sp,32
    800019f8:	00008067          	ret
        _thread::running->semaphore = handle;
    800019fc:	0000a917          	auipc	s2,0xa
    80001a00:	0ec93903          	ld	s2,236(s2) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a04:	00093783          	ld	a5,0(s2)
    80001a08:	04a7b023          	sd	a0,64(a5)
        handle->block();
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	d04080e7          	jalr	-764(ra) # 80001710 <_ZN4_sem5blockEv>
        _sleep::insert(_thread::running, t);
    80001a14:	00048593          	mv	a1,s1
    80001a18:	00093503          	ld	a0,0(s2)
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	2b4080e7          	jalr	692(ra) # 80001cd0 <_ZN6_sleep6insertEP7_threadm>
        thread_dispatch();
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	964080e7          	jalr	-1692(ra) # 80001388 <_Z15thread_dispatchv>
    80001a2c:	fa9ff06f          	j	800019d4 <_ZN4_sem12semTimedwaitEPS_m+0x48>
    if(!handle)return -1;
    80001a30:	fff00513          	li	a0,-1
}
    80001a34:	00008067          	ret
    if(t == 0)return -2;
    80001a38:	ffe00513          	li	a0,-2
    80001a3c:	fa9ff06f          	j	800019e4 <_ZN4_sem12semTimedwaitEPS_m+0x58>

0000000080001a40 <_ZN4_sem10semTrywaitEPS_>:

int _sem::semTrywait(sem_t handle){
    if(!handle)return -1;
    80001a40:	04050a63          	beqz	a0,80001a94 <_ZN4_sem10semTrywaitEPS_+0x54>
    if(--(handle->init) < 0){
    80001a44:	00452783          	lw	a5,4(a0)
    80001a48:	fff7879b          	addiw	a5,a5,-1
    80001a4c:	00f52223          	sw	a5,4(a0)
    80001a50:	02079713          	slli	a4,a5,0x20
    80001a54:	00074663          	bltz	a4,80001a60 <_ZN4_sem10semTrywaitEPS_+0x20>
        handle->block();
        thread_dispatch();
    }
    return 0;
    80001a58:	00000513          	li	a0,0
}
    80001a5c:	00008067          	ret
int _sem::semTrywait(sem_t handle){
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00113423          	sd	ra,8(sp)
    80001a68:	00813023          	sd	s0,0(sp)
    80001a6c:	01010413          	addi	s0,sp,16
        handle->block();
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	ca0080e7          	jalr	-864(ra) # 80001710 <_ZN4_sem5blockEv>
        thread_dispatch();
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	910080e7          	jalr	-1776(ra) # 80001388 <_Z15thread_dispatchv>
    return 0;
    80001a80:	00000513          	li	a0,0
}
    80001a84:	00813083          	ld	ra,8(sp)
    80001a88:	00013403          	ld	s0,0(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret
    if(!handle)return -1;
    80001a94:	fff00513          	li	a0,-1
    80001a98:	00008067          	ret

0000000080001a9c <_ZN7console4initEv>:

void consoleWrapper(void*){
    console::radi();
}

void console::init() {
    80001a9c:	fd010113          	addi	sp,sp,-48
    80001aa0:	02113423          	sd	ra,40(sp)
    80001aa4:	02813023          	sd	s0,32(sp)
    80001aa8:	00913c23          	sd	s1,24(sp)
    80001aac:	01213823          	sd	s2,16(sp)
    80001ab0:	03010413          	addi	s0,sp,48
    input = new Buffer();
    80001ab4:	12000513          	li	a0,288
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	ebc080e7          	jalr	-324(ra) # 80002974 <_Znwm>
    80001ac0:	00050493          	mv	s1,a0
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	11c080e7          	jalr	284(ra) # 80001be0 <_ZN6BufferC1Ev>
    80001acc:	0000a797          	auipc	a5,0xa
    80001ad0:	0a97be23          	sd	s1,188(a5) # 8000bb88 <_ZN7console5inputE>
    output = new Buffer();
    80001ad4:	12000513          	li	a0,288
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	e9c080e7          	jalr	-356(ra) # 80002974 <_Znwm>
    80001ae0:	00050493          	mv	s1,a0
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	0fc080e7          	jalr	252(ra) # 80001be0 <_ZN6BufferC1Ev>
    80001aec:	0000a797          	auipc	a5,0xa
    80001af0:	0a97b223          	sd	s1,164(a5) # 8000bb90 <_ZN7console6outputE>

    _thread* konzola;
    _thread::napravi(&konzola, consoleWrapper, nullptr);
    80001af4:	00000613          	li	a2,0
    80001af8:	00000597          	auipc	a1,0x0
    80001afc:	0d058593          	addi	a1,a1,208 # 80001bc8 <_Z14consoleWrapperPv>
    80001b00:	fd840513          	addi	a0,s0,-40
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	7cc080e7          	jalr	1996(ra) # 800032d0 <_ZN7_thread7napraviEPPS_PFvPvES2_>

}
    80001b0c:	02813083          	ld	ra,40(sp)
    80001b10:	02013403          	ld	s0,32(sp)
    80001b14:	01813483          	ld	s1,24(sp)
    80001b18:	01013903          	ld	s2,16(sp)
    80001b1c:	03010113          	addi	sp,sp,48
    80001b20:	00008067          	ret
    80001b24:	00050913          	mv	s2,a0
    input = new Buffer();
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	eb8080e7          	jalr	-328(ra) # 800029e4 <_ZdlPv>
    80001b34:	00090513          	mv	a0,s2
    80001b38:	0000b097          	auipc	ra,0xb
    80001b3c:	1d0080e7          	jalr	464(ra) # 8000cd08 <_Unwind_Resume>
    80001b40:	00050913          	mv	s2,a0
    output = new Buffer();
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00001097          	auipc	ra,0x1
    80001b4c:	e9c080e7          	jalr	-356(ra) # 800029e4 <_ZdlPv>
    80001b50:	00090513          	mv	a0,s2
    80001b54:	0000b097          	auipc	ra,0xb
    80001b58:	1b4080e7          	jalr	436(ra) # 8000cd08 <_Unwind_Resume>

0000000080001b5c <_ZN7console4radiEv>:
void console::radi() {
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00113423          	sd	ra,8(sp)
    80001b64:	00813023          	sd	s0,0(sp)
    80001b68:	01010413          	addi	s0,sp,16
    80001b6c:	0100006f          	j	80001b7c <_ZN7console4radiEv+0x20>
        if (console::output->getCount() > 0 && ((*((volatile char *) (CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT))) {
            char c = console::output->getc();
            *(volatile char *) CONSOLE_TX_DATA = c;
        }
        else{
            __asm__ volatile("csrs sstatus, 2");
    80001b70:	10016073          	csrsi	sstatus,2
            thread_dispatch();
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	814080e7          	jalr	-2028(ra) # 80001388 <_Z15thread_dispatchv>
        __asm__ volatile("csrc sstatus, 2");
    80001b7c:	10017073          	csrci	sstatus,2
        if (console::output->getCount() > 0 && ((*((volatile char *) (CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT))) {
    80001b80:	0000a517          	auipc	a0,0xa
    80001b84:	01053503          	ld	a0,16(a0) # 8000bb90 <_ZN7console6outputE>
    uint64 count = 0;
public:
    Buffer();
    char getc();
    void putc(char c);
    uint64 getCount() { return count; }
    80001b88:	11853783          	ld	a5,280(a0)
    80001b8c:	fe0782e3          	beqz	a5,80001b70 <_ZN7console4radiEv+0x14>
    80001b90:	0000a797          	auipc	a5,0xa
    80001b94:	f487b783          	ld	a5,-184(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b98:	0007b783          	ld	a5,0(a5)
    80001b9c:	0007c783          	lbu	a5,0(a5)
    80001ba0:	0ff7f793          	andi	a5,a5,255
    80001ba4:	0207f793          	andi	a5,a5,32
    80001ba8:	fc0784e3          	beqz	a5,80001b70 <_ZN7console4radiEv+0x14>
            char c = console::output->getc();
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	06c080e7          	jalr	108(ra) # 80001c18 <_ZN6Buffer4getcEv>
            *(volatile char *) CONSOLE_TX_DATA = c;
    80001bb4:	0000a797          	auipc	a5,0xa
    80001bb8:	f4c7b783          	ld	a5,-180(a5) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	00a78023          	sb	a0,0(a5)
    80001bc4:	fb9ff06f          	j	80001b7c <_ZN7console4radiEv+0x20>

0000000080001bc8 <_Z14consoleWrapperPv>:
void consoleWrapper(void*){
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    console::radi();
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	f84080e7          	jalr	-124(ra) # 80001b5c <_ZN7console4radiEv>

0000000080001be0 <_ZN6BufferC1Ev>:
#include "../h/c_buffer.hpp"

#include "../lib/console.h"

Buffer::Buffer() : head(0), tail(0), count(0) {
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00113423          	sd	ra,8(sp)
    80001be8:	00813023          	sd	s0,0(sp)
    80001bec:	01010413          	addi	s0,sp,16
    80001bf0:	10053423          	sd	zero,264(a0)
    80001bf4:	10053823          	sd	zero,272(a0)
    80001bf8:	10053c23          	sd	zero,280(a0)
    _sem::semOpen(&itemAvailable, 0);
    80001bfc:	00000593          	li	a1,0
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	a90080e7          	jalr	-1392(ra) # 80001690 <_ZN4_sem7semOpenEPPS_i>
}
    80001c08:	00813083          	ld	ra,8(sp)
    80001c0c:	00013403          	ld	s0,0(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <_ZN6Buffer4getcEv>:

char Buffer::getc(){
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00813823          	sd	s0,16(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	02010413          	addi	s0,sp,32
    80001c2c:	00050493          	mv	s1,a0
    _sem::semTrywait(itemAvailable);
    80001c30:	00053503          	ld	a0,0(a0)
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	e0c080e7          	jalr	-500(ra) # 80001a40 <_ZN4_sem10semTrywaitEPS_>
    char c = buf[head];
    80001c3c:	1084b783          	ld	a5,264(s1)
    80001c40:	00f48733          	add	a4,s1,a5
    80001c44:	00874503          	lbu	a0,8(a4)
    head = (head + 1) % N;
    80001c48:	00178793          	addi	a5,a5,1
    80001c4c:	0ff7f793          	andi	a5,a5,255
    80001c50:	10f4b423          	sd	a5,264(s1)
    count -= 1;
    80001c54:	1184b783          	ld	a5,280(s1)
    80001c58:	fff78793          	addi	a5,a5,-1
    80001c5c:	10f4bc23          	sd	a5,280(s1)
    return c;
}
    80001c60:	01813083          	ld	ra,24(sp)
    80001c64:	01013403          	ld	s0,16(sp)
    80001c68:	00813483          	ld	s1,8(sp)
    80001c6c:	02010113          	addi	sp,sp,32
    80001c70:	00008067          	ret

0000000080001c74 <_ZN6Buffer4putcEc>:

void Buffer::putc(char c){
    if(count < N){
    80001c74:	11853783          	ld	a5,280(a0)
    80001c78:	0ff00713          	li	a4,255
    80001c7c:	00f77463          	bgeu	a4,a5,80001c84 <_ZN6Buffer4putcEc+0x10>
    80001c80:	00008067          	ret
void Buffer::putc(char c){
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
        buf[tail] = c;
    80001c94:	11053703          	ld	a4,272(a0)
    80001c98:	00e506b3          	add	a3,a0,a4
    80001c9c:	00b68423          	sb	a1,8(a3)
        tail = (tail + 1) % N;
    80001ca0:	00170713          	addi	a4,a4,1
    80001ca4:	0ff77713          	andi	a4,a4,255
    80001ca8:	10e53823          	sd	a4,272(a0)
        count += 1;
    80001cac:	00178793          	addi	a5,a5,1
    80001cb0:	10f53c23          	sd	a5,280(a0)
        _sem::semTrysignal(itemAvailable);
    80001cb4:	00053503          	ld	a0,0(a0)
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	c80080e7          	jalr	-896(ra) # 80001938 <_ZN4_sem12semTrysignalEPS_>
    }
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN6_sleep6insertEP7_threadm>:
_sleep::node* _sleep::tail = nullptr;

#include "../test/printing.hpp"
#include "../h/scheduler.hpp"

void _sleep::insert(_thread* nit, time_t time){
    80001cd0:	fc010113          	addi	sp,sp,-64
    80001cd4:	02113c23          	sd	ra,56(sp)
    80001cd8:	02813823          	sd	s0,48(sp)
    80001cdc:	02913423          	sd	s1,40(sp)
    80001ce0:	03213023          	sd	s2,32(sp)
    80001ce4:	01313c23          	sd	s3,24(sp)
    80001ce8:	01413823          	sd	s4,16(sp)
    80001cec:	01513423          	sd	s5,8(sp)
    80001cf0:	04010413          	addi	s0,sp,64
    80001cf4:	00050a93          	mv	s5,a0
    if(time == 0){
    80001cf8:	04058a63          	beqz	a1,80001d4c <_ZN6_sleep6insertEP7_threadm+0x7c>
    80001cfc:	00058913          	mv	s2,a1
        nit->setSleep(false);
        return;
    }

    if(head == nullptr){
    80001d00:	0000a497          	auipc	s1,0xa
    80001d04:	e984b483          	ld	s1,-360(s1) # 8000bb98 <_ZN6_sleep4headE>
    80001d08:	06048663          	beqz	s1,80001d74 <_ZN6_sleep6insertEP7_threadm+0xa4>
        head = tail = new node(nit, time, nullptr);
    }
    else if(time < head->time){
    80001d0c:	0084b783          	ld	a5,8(s1)
    80001d10:	0af5f263          	bgeu	a1,a5,80001db4 <_ZN6_sleep6insertEP7_threadm+0xe4>
        head = new node(nit, time, head);
    80001d14:	01800513          	li	a0,24
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	c5c080e7          	jalr	-932(ra) # 80002974 <_Znwm>
    80001d20:	0000a717          	auipc	a4,0xa
    80001d24:	e7870713          	addi	a4,a4,-392 # 8000bb98 <_ZN6_sleep4headE>
    80001d28:	00073783          	ld	a5,0(a4)

    struct node{
        _thread* info;
        time_t time;
        node* next;
        node(_thread* info, time_t time, node* next) : info(info), time(time), next(next) {}
    80001d2c:	01553023          	sd	s5,0(a0)
    80001d30:	01253423          	sd	s2,8(a0)
    80001d34:	00f53823          	sd	a5,16(a0)
    80001d38:	00a73023          	sd	a0,0(a4)
        head->next->time -= time;
    80001d3c:	0087b703          	ld	a4,8(a5)
    80001d40:	41270933          	sub	s2,a4,s2
    80001d44:	0127b423          	sd	s2,8(a5)
    80001d48:	0080006f          	j	80001d50 <_ZN6_sleep6insertEP7_threadm+0x80>
    void setSleep(bool f){ this->sleep = f; }
    80001d4c:	02050d23          	sb	zero,58(a0)
//    for(node* p = head; p != nullptr; p = p->next){
//        printInt(p->info->id); printString(" "); printInt(p->time); printString("\n");
//    }
//    printString("kraj\n");

}
    80001d50:	03813083          	ld	ra,56(sp)
    80001d54:	03013403          	ld	s0,48(sp)
    80001d58:	02813483          	ld	s1,40(sp)
    80001d5c:	02013903          	ld	s2,32(sp)
    80001d60:	01813983          	ld	s3,24(sp)
    80001d64:	01013a03          	ld	s4,16(sp)
    80001d68:	00813a83          	ld	s5,8(sp)
    80001d6c:	04010113          	addi	sp,sp,64
    80001d70:	00008067          	ret
        head = tail = new node(nit, time, nullptr);
    80001d74:	01800513          	li	a0,24
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	bfc080e7          	jalr	-1028(ra) # 80002974 <_Znwm>
    80001d80:	01553023          	sd	s5,0(a0)
    80001d84:	01253423          	sd	s2,8(a0)
    80001d88:	00053823          	sd	zero,16(a0)
    80001d8c:	0000a797          	auipc	a5,0xa
    80001d90:	e0c78793          	addi	a5,a5,-500 # 8000bb98 <_ZN6_sleep4headE>
    80001d94:	00a7b423          	sd	a0,8(a5)
    80001d98:	00a7b023          	sd	a0,0(a5)
    80001d9c:	fb5ff06f          	j	80001d50 <_ZN6_sleep6insertEP7_threadm+0x80>
    80001da0:	00078493          	mv	s1,a5
    80001da4:	00098913          	mv	s2,s3
    80001da8:	00c0006f          	j	80001db4 <_ZN6_sleep6insertEP7_threadm+0xe4>
    80001dac:	00078493          	mv	s1,a5
    80001db0:	00098913          	mv	s2,s3
        for(node* p = head; p; p = p->next){
    80001db4:	04048a63          	beqz	s1,80001e08 <_ZN6_sleep6insertEP7_threadm+0x138>
            time -= p->time;
    80001db8:	0084ba03          	ld	s4,8(s1)
    80001dbc:	414909b3          	sub	s3,s2,s4
            if(p->next && time < p->next->time){
    80001dc0:	0104b783          	ld	a5,16(s1)
    80001dc4:	fc078ee3          	beqz	a5,80001da0 <_ZN6_sleep6insertEP7_threadm+0xd0>
    80001dc8:	0087b703          	ld	a4,8(a5)
    80001dcc:	fee9f0e3          	bgeu	s3,a4,80001dac <_ZN6_sleep6insertEP7_threadm+0xdc>
                p->next = new node(nit, time, p->next);
    80001dd0:	01800513          	li	a0,24
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	ba0080e7          	jalr	-1120(ra) # 80002974 <_Znwm>
    80001ddc:	0104b783          	ld	a5,16(s1)
    80001de0:	01553023          	sd	s5,0(a0)
    80001de4:	01353423          	sd	s3,8(a0)
    80001de8:	00f53823          	sd	a5,16(a0)
    80001dec:	00a4b823          	sd	a0,16(s1)
                p->next->next->time -= time;
    80001df0:	01053783          	ld	a5,16(a0)
    80001df4:	412a0933          	sub	s2,s4,s2
    80001df8:	0087ba03          	ld	s4,8(a5)
    80001dfc:	012a0933          	add	s2,s4,s2
    80001e00:	0127b423          	sd	s2,8(a5)
        if(ok == false){
    80001e04:	f4dff06f          	j	80001d50 <_ZN6_sleep6insertEP7_threadm+0x80>
            tail->next = new node(nit, time, nullptr);
    80001e08:	01800513          	li	a0,24
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	b68080e7          	jalr	-1176(ra) # 80002974 <_Znwm>
    80001e14:	01553023          	sd	s5,0(a0)
    80001e18:	01253423          	sd	s2,8(a0)
    80001e1c:	00053823          	sd	zero,16(a0)
    80001e20:	0000a797          	auipc	a5,0xa
    80001e24:	d7878793          	addi	a5,a5,-648 # 8000bb98 <_ZN6_sleep4headE>
    80001e28:	0087b703          	ld	a4,8(a5)
    80001e2c:	00a73823          	sd	a0,16(a4)
            tail = tail->next;
    80001e30:	00a7b423          	sd	a0,8(a5)
    80001e34:	f1dff06f          	j	80001d50 <_ZN6_sleep6insertEP7_threadm+0x80>

0000000080001e38 <_ZN6_sleep5emptyEv>:

bool _sleep::empty(){
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813423          	sd	s0,8(sp)
    80001e40:	01010413          	addi	s0,sp,16
    return head == nullptr;
}
    80001e44:	0000a517          	auipc	a0,0xa
    80001e48:	d5453503          	ld	a0,-684(a0) # 8000bb98 <_ZN6_sleep4headE>
    80001e4c:	00153513          	seqz	a0,a0
    80001e50:	00813403          	ld	s0,8(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret

0000000080001e5c <_ZN6_sleep12remove_firstEv>:

_thread* _sleep::remove_first(){
    80001e5c:	fe010113          	addi	sp,sp,-32
    80001e60:	00113c23          	sd	ra,24(sp)
    80001e64:	00813823          	sd	s0,16(sp)
    80001e68:	00913423          	sd	s1,8(sp)
    80001e6c:	02010413          	addi	s0,sp,32
    if(!head)return 0;
    80001e70:	0000a517          	auipc	a0,0xa
    80001e74:	d2853503          	ld	a0,-728(a0) # 8000bb98 <_ZN6_sleep4headE>
    80001e78:	04050263          	beqz	a0,80001ebc <_ZN6_sleep12remove_firstEv+0x60>

    node* p = head;
    head = head->next;
    80001e7c:	01053783          	ld	a5,16(a0)
    80001e80:	0000a717          	auipc	a4,0xa
    80001e84:	d0f73c23          	sd	a5,-744(a4) # 8000bb98 <_ZN6_sleep4headE>
    if(!head)tail = 0;
    80001e88:	02078463          	beqz	a5,80001eb0 <_ZN6_sleep12remove_firstEv+0x54>

    _thread* ans = p->info;
    80001e8c:	00053483          	ld	s1,0(a0)
    delete p;
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	b54080e7          	jalr	-1196(ra) # 800029e4 <_ZdlPv>
    return ans;
}
    80001e98:	00048513          	mv	a0,s1
    80001e9c:	01813083          	ld	ra,24(sp)
    80001ea0:	01013403          	ld	s0,16(sp)
    80001ea4:	00813483          	ld	s1,8(sp)
    80001ea8:	02010113          	addi	sp,sp,32
    80001eac:	00008067          	ret
    if(!head)tail = 0;
    80001eb0:	0000a797          	auipc	a5,0xa
    80001eb4:	ce07b823          	sd	zero,-784(a5) # 8000bba0 <_ZN6_sleep4tailE>
    80001eb8:	fd5ff06f          	j	80001e8c <_ZN6_sleep12remove_firstEv+0x30>
    if(!head)return 0;
    80001ebc:	00050493          	mv	s1,a0
    80001ec0:	fd9ff06f          	j	80001e98 <_ZN6_sleep12remove_firstEv+0x3c>

0000000080001ec4 <_ZN6_sleep9timeSleepEm>:

int _sleep::timeSleep(time_t time){
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    80001ed4:	00050593          	mv	a1,a0
    _thread::running->setSleep(true);
    80001ed8:	0000a797          	auipc	a5,0xa
    80001edc:	c107b783          	ld	a5,-1008(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ee0:	0007b503          	ld	a0,0(a5)
    80001ee4:	00100713          	li	a4,1
    80001ee8:	02e50d23          	sb	a4,58(a0)
    insert(_thread::running, time);
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	de4080e7          	jalr	-540(ra) # 80001cd0 <_ZN6_sleep6insertEP7_threadm>
    _thread::threadDispatch();
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	4a4080e7          	jalr	1188(ra) # 80003398 <_ZN7_thread14threadDispatchEv>
    return 0;
}
    80001efc:	00000513          	li	a0,0
    80001f00:	00813083          	ld	ra,8(sp)
    80001f04:	00013403          	ld	s0,0(sp)
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret

0000000080001f10 <_ZN6_sleep6updateEv>:

void _sleep::update(){
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00813423          	sd	s0,8(sp)
    80001f18:	01010413          	addi	s0,sp,16
    if(head == nullptr)return;
    80001f1c:	0000a797          	auipc	a5,0xa
    80001f20:	c7c7b783          	ld	a5,-900(a5) # 8000bb98 <_ZN6_sleep4headE>
    80001f24:	00078863          	beqz	a5,80001f34 <_ZN6_sleep6updateEv+0x24>
//    printString("update");
//    printInt(head->time);
//    printString("\n");
    head->time--;
    80001f28:	0087b703          	ld	a4,8(a5)
    80001f2c:	fff70713          	addi	a4,a4,-1
    80001f30:	00e7b423          	sd	a4,8(a5)
}
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN6_sleep12getFirstTimeEv>:

time_t _sleep::getFirstTime(){
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    if(head == nullptr)return -1;
    80001f4c:	0000a797          	auipc	a5,0xa
    80001f50:	c4c7b783          	ld	a5,-948(a5) # 8000bb98 <_ZN6_sleep4headE>
    80001f54:	00078a63          	beqz	a5,80001f68 <_ZN6_sleep12getFirstTimeEv+0x28>
    return head->time;
    80001f58:	0087b503          	ld	a0,8(a5)
}
    80001f5c:	00813403          	ld	s0,8(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret
    if(head == nullptr)return -1;
    80001f68:	fff00513          	li	a0,-1
    80001f6c:	ff1ff06f          	j	80001f5c <_ZN6_sleep12getFirstTimeEv+0x1c>

0000000080001f70 <_ZN6_sleep11izbaciSleepEP7_thread>:

int _sleep::izbaciSleep(_thread* X) {
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00813423          	sd	s0,8(sp)
    80001f78:	01010413          	addi	s0,sp,16
    node* prev = nullptr;
    for(node* p = head; p; p = p->next){
    80001f7c:	0000a617          	auipc	a2,0xa
    80001f80:	c1c63603          	ld	a2,-996(a2) # 8000bb98 <_ZN6_sleep4headE>
    80001f84:	00060793          	mv	a5,a2
    node* prev = nullptr;
    80001f88:	00000693          	li	a3,0
    for(node* p = head; p; p = p->next){
    80001f8c:	06078e63          	beqz	a5,80002008 <_ZN6_sleep11izbaciSleepEP7_thread+0x98>
        if(p->info == X){
    80001f90:	0007b703          	ld	a4,0(a5)
    80001f94:	00a70863          	beq	a4,a0,80001fa4 <_ZN6_sleep11izbaciSleepEP7_thread+0x34>
            else p->next->time += p->time;

//            delete p;
            return 1;
        }
        prev = p;
    80001f98:	00078693          	mv	a3,a5
    for(node* p = head; p; p = p->next){
    80001f9c:	0107b783          	ld	a5,16(a5)
    80001fa0:	fedff06f          	j	80001f8c <_ZN6_sleep11izbaciSleepEP7_thread+0x1c>
            if(!prev){
    80001fa4:	02068663          	beqz	a3,80001fd0 <_ZN6_sleep11izbaciSleepEP7_thread+0x60>
            prev->next = p->next;
    80001fa8:	0107b703          	ld	a4,16(a5)
    80001fac:	00e6b823          	sd	a4,16(a3)
            if(!p->next)tail = prev;
    80001fb0:	0107b703          	ld	a4,16(a5)
    80001fb4:	04070463          	beqz	a4,80001ffc <_ZN6_sleep11izbaciSleepEP7_thread+0x8c>
            else p->next->time += p->time;
    80001fb8:	0087b683          	ld	a3,8(a5)
    80001fbc:	00873783          	ld	a5,8(a4)
    80001fc0:	00d787b3          	add	a5,a5,a3
    80001fc4:	00f73423          	sd	a5,8(a4)
            return 1;
    80001fc8:	00100513          	li	a0,1
    80001fcc:	0400006f          	j	8000200c <_ZN6_sleep11izbaciSleepEP7_thread+0x9c>
                if(head->next)head->next->time += head->time;
    80001fd0:	01063783          	ld	a5,16(a2)
    80001fd4:	00078a63          	beqz	a5,80001fe8 <_ZN6_sleep11izbaciSleepEP7_thread+0x78>
    80001fd8:	00863683          	ld	a3,8(a2)
    80001fdc:	0087b703          	ld	a4,8(a5)
    80001fe0:	00d70733          	add	a4,a4,a3
    80001fe4:	00e7b423          	sd	a4,8(a5)
                head = head->next;
    80001fe8:	01063783          	ld	a5,16(a2)
    80001fec:	0000a717          	auipc	a4,0xa
    80001ff0:	baf73623          	sd	a5,-1108(a4) # 8000bb98 <_ZN6_sleep4headE>
                return 1;
    80001ff4:	00100513          	li	a0,1
    80001ff8:	0140006f          	j	8000200c <_ZN6_sleep11izbaciSleepEP7_thread+0x9c>
            if(!p->next)tail = prev;
    80001ffc:	0000a797          	auipc	a5,0xa
    80002000:	bad7b223          	sd	a3,-1116(a5) # 8000bba0 <_ZN6_sleep4tailE>
    80002004:	fc5ff06f          	j	80001fc8 <_ZN6_sleep11izbaciSleepEP7_thread+0x58>
    }
    return 0;
    80002008:	00000513          	li	a0,0
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN6Prekid16interruptHandlerEv>:

#include "../test/printing.hpp"

bool Prekid::super;

void Prekid::interruptHandler(){
    80002018:	f5010113          	addi	sp,sp,-176
    8000201c:	0a113423          	sd	ra,168(sp)
    80002020:	0a813023          	sd	s0,160(sp)
    80002024:	08913c23          	sd	s1,152(sp)
    80002028:	0b010413          	addi	s0,sp,176
    super = true;
    8000202c:	00100793          	li	a5,1
    80002030:	0000a717          	auipc	a4,0xa
    80002034:	b6f70c23          	sb	a5,-1160(a4) # 8000bba8 <_ZN6Prekid5superE>

    uint64 volatile arg0; __asm__ volatile("mv %0, a0" : "=r"(arg0));
    80002038:	00050793          	mv	a5,a0
    8000203c:	fcf43c23          	sd	a5,-40(s0)
    uint64 volatile arg1; __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002040:	00058793          	mv	a5,a1
    80002044:	fcf43823          	sd	a5,-48(s0)
    uint64 volatile arg2; __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80002048:	00060793          	mv	a5,a2
    8000204c:	fcf43423          	sd	a5,-56(s0)
    uint64 volatile arg3; __asm__ volatile("mv %0, a3" : "=r"(arg3));
    80002050:	00068793          	mv	a5,a3
    80002054:	fcf43023          	sd	a5,-64(s0)
    uint64 volatile arg4; __asm__ volatile("mv %0, a4" : "=r"(arg4));
    80002058:	00070793          	mv	a5,a4
    8000205c:	faf43c23          	sd	a5,-72(s0)

    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r" (scause));
    80002060:	142027f3          	csrr	a5,scause
    80002064:	faf43823          	sd	a5,-80(s0)

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){ // syscall
    80002068:	fb043703          	ld	a4,-80(s0)
    8000206c:	00800793          	li	a5,8
    80002070:	04f70663          	beq	a4,a5,800020bc <_ZN6Prekid16interruptHandlerEv+0xa4>
    80002074:	fb043703          	ld	a4,-80(s0)
    80002078:	00900793          	li	a5,9
    8000207c:	04f70063          	beq	a4,a5,800020bc <_ZN6Prekid16interruptHandlerEv+0xa4>

        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    }
    else if(scause == 0x8000000000000001UL){
    80002080:	fb043703          	ld	a4,-80(s0)
    80002084:	fff00793          	li	a5,-1
    80002088:	03f79793          	slli	a5,a5,0x3f
    8000208c:	00178793          	addi	a5,a5,1
    80002090:	26f70c63          	beq	a4,a5,80002308 <_ZN6Prekid16interruptHandlerEv+0x2f0>
        __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));

        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    }else if(scause == 0x8000000000000009UL){
    80002094:	fb043703          	ld	a4,-80(s0)
    80002098:	fff00793          	li	a5,-1
    8000209c:	03f79793          	slli	a5,a5,0x3f
    800020a0:	00978793          	addi	a5,a5,9
    800020a4:	38f70463          	beq	a4,a5,8000242c <_ZN6Prekid16interruptHandlerEv+0x414>

        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    }else{
        int volatile X = 1; if(X == X);
    800020a8:	00100793          	li	a5,1
    800020ac:	f6f42e23          	sw	a5,-132(s0)
    800020b0:	f7c42783          	lw	a5,-132(s0)
    800020b4:	f7c42783          	lw	a5,-132(s0)
    800020b8:	06c0006f          	j	80002124 <_ZN6Prekid16interruptHandlerEv+0x10c>
        __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020bc:	100027f3          	csrr	a5,sstatus
    800020c0:	f8f43023          	sd	a5,-128(s0)
        __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020c4:	141027f3          	csrr	a5,sepc
    800020c8:	f8f43423          	sd	a5,-120(s0)
        sepc += 4;
    800020cc:	f8843783          	ld	a5,-120(s0)
    800020d0:	00478793          	addi	a5,a5,4
    800020d4:	f8f43423          	sd	a5,-120(s0)
        uint64 code = arg0;
    800020d8:	fd843783          	ld	a5,-40(s0)
        switch(code){
    800020dc:	04200713          	li	a4,66
    800020e0:	02f76a63          	bltu	a4,a5,80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
    800020e4:	00279793          	slli	a5,a5,0x2
    800020e8:	00007717          	auipc	a4,0x7
    800020ec:	f3870713          	addi	a4,a4,-200 # 80009020 <CONSOLE_STATUS+0x10>
    800020f0:	00e787b3          	add	a5,a5,a4
    800020f4:	0007a783          	lw	a5,0(a5)
    800020f8:	00e787b3          	add	a5,a5,a4
    800020fc:	00078067          	jr	a5
                size_t size = (size_t)arg1;
    80002100:	fd043503          	ld	a0,-48(s0)
                volatile void* p = MemoryAllocator::mem_alloc(size);
    80002104:	00000097          	auipc	ra,0x0
    80002108:	500080e7          	jalr	1280(ra) # 80002604 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(p));
    8000210c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002110:	04542823          	sw	t0,80(s0)
        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002114:	f8043783          	ld	a5,-128(s0)
    80002118:	10079073          	csrw	sstatus,a5
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000211c:	f8843783          	ld	a5,-120(s0)
    80002120:	14179073          	csrw	sepc,a5
    }

    super = false;
    80002124:	0000a797          	auipc	a5,0xa
    80002128:	a8078223          	sb	zero,-1404(a5) # 8000bba8 <_ZN6Prekid5superE>

}
    8000212c:	0a813083          	ld	ra,168(sp)
    80002130:	0a013403          	ld	s0,160(sp)
    80002134:	09813483          	ld	s1,152(sp)
    80002138:	0b010113          	addi	sp,sp,176
    8000213c:	00008067          	ret
                void* ptr = (void*)arg1;
    80002140:	fd043503          	ld	a0,-48(s0)
                volatile int ans = MemoryAllocator::mem_free(ptr);
    80002144:	00000097          	auipc	ra,0x0
    80002148:	65c080e7          	jalr	1628(ra) # 800027a0 <_ZN15MemoryAllocator8mem_freeEPv>
    8000214c:	f4a42a23          	sw	a0,-172(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    80002150:	f5442783          	lw	a5,-172(s0)
    80002154:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002158:	04542823          	sw	t0,80(s0)
                break;
    8000215c:	fb9ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                thread_t* handle = (thread_t*)arg1;
    80002160:	fd043503          	ld	a0,-48(s0)
                Body start_routine = (Body)arg2;
    80002164:	fc843583          	ld	a1,-56(s0)
                void* arg = (void*)arg3;
    80002168:	fc043603          	ld	a2,-64(s0)
                void* stack_space = (void*)arg4;
    8000216c:	fb843683          	ld	a3,-72(s0)
                volatile int ans = _thread::threadCreate(handle, start_routine, arg, stack_space);
    80002170:	00001097          	auipc	ra,0x1
    80002174:	098080e7          	jalr	152(ra) # 80003208 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>
    80002178:	f4a42c23          	sw	a0,-168(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    8000217c:	f5842783          	lw	a5,-168(s0)
    80002180:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002184:	04542823          	sw	t0,80(s0)
                break;
    80002188:	f8dff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                _thread::threadExit();
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	2bc080e7          	jalr	700(ra) # 80003448 <_ZN7_thread10threadExitEv>
                volatile int ans = 0;
    80002194:	f4042e23          	sw	zero,-164(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    80002198:	f5c42783          	lw	a5,-164(s0)
    8000219c:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800021a0:	04542823          	sw	t0,80(s0)
                break;
    800021a4:	f71ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                _thread::threadDispatch();
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	1f0080e7          	jalr	496(ra) # 80003398 <_ZN7_thread14threadDispatchEv>
                break;
    800021b0:	f65ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                _thread::threadYield();
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	25c080e7          	jalr	604(ra) # 80003410 <_ZN7_thread11threadYieldEv>
                break;
    800021bc:	f59ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                sem_t* handle = (sem_t*)arg1;
    800021c0:	fd043503          	ld	a0,-48(s0)
                int init = (int)arg2;
    800021c4:	fc843583          	ld	a1,-56(s0)
                volatile int ans = _sem::semOpen(handle, init);
    800021c8:	0005859b          	sext.w	a1,a1
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	4c4080e7          	jalr	1220(ra) # 80001690 <_ZN4_sem7semOpenEPPS_i>
    800021d4:	f6a42023          	sw	a0,-160(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    800021d8:	f6042783          	lw	a5,-160(s0)
    800021dc:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800021e0:	04542823          	sw	t0,80(s0)
                break;
    800021e4:	f31ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                sem_t handle = (sem_t)arg1;
    800021e8:	fd043503          	ld	a0,-48(s0)
                volatile int ans = _sem::semClose(handle);
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	618080e7          	jalr	1560(ra) # 80001804 <_ZN4_sem8semCloseEPS_>
    800021f4:	f6a42223          	sw	a0,-156(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    800021f8:	f6442783          	lw	a5,-156(s0)
    800021fc:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002200:	04542823          	sw	t0,80(s0)
                break;
    80002204:	f11ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                sem_t id = (sem_t)arg1;
    80002208:	fd043503          	ld	a0,-48(s0)
                volatile int ans = _sem::semWait(id);
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	65c080e7          	jalr	1628(ra) # 80001868 <_ZN4_sem7semWaitEPS_>
    80002214:	f6a42423          	sw	a0,-152(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    80002218:	f6842783          	lw	a5,-152(s0)
    8000221c:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002220:	04542823          	sw	t0,80(s0)
                break;
    80002224:	ef1ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                sem_t id = (sem_t)arg1;
    80002228:	fd043503          	ld	a0,-48(s0)
                volatile int ans = _sem::semSignal(id);
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	694080e7          	jalr	1684(ra) # 800018c0 <_ZN4_sem9semSignalEPS_>
    80002234:	f6a42623          	sw	a0,-148(s0)
                _thread::threadDispatch();
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	160080e7          	jalr	352(ra) # 80003398 <_ZN7_thread14threadDispatchEv>
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    80002240:	f6c42783          	lw	a5,-148(s0)
    80002244:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002248:	04542823          	sw	t0,80(s0)
                break;
    8000224c:	ec9ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                sem_t id = (sem_t)arg1;
    80002250:	fd043503          	ld	a0,-48(s0)
                time_t timeout = (time_t)arg2;
    80002254:	fc843583          	ld	a1,-56(s0)
                volatile int ans = _sem::semTimedwait(id, timeout);
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	734080e7          	jalr	1844(ra) # 8000198c <_ZN4_sem12semTimedwaitEPS_m>
    80002260:	f6a42823          	sw	a0,-144(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    80002264:	f7042783          	lw	a5,-144(s0)
    80002268:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    8000226c:	04542823          	sw	t0,80(s0)
                break;
    80002270:	ea5ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                sem_t id = (sem_t)arg1;
    80002274:	fd043503          	ld	a0,-48(s0)
                volatile int ans = _sem::semTrywait(id);
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	7c8080e7          	jalr	1992(ra) # 80001a40 <_ZN4_sem10semTrywaitEPS_>
    80002280:	f6a42a23          	sw	a0,-140(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    80002284:	f7442783          	lw	a5,-140(s0)
    80002288:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    8000228c:	04542823          	sw	t0,80(s0)
                break;
    80002290:	e85ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                time_t t = (time_t)arg1;
    80002294:	fd043503          	ld	a0,-48(s0)
                volatile int ans = _sleep::timeSleep(t);
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	c2c080e7          	jalr	-980(ra) # 80001ec4 <_ZN6_sleep9timeSleepEm>
    800022a0:	f6a42c23          	sw	a0,-136(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    800022a4:	f7842783          	lw	a5,-136(s0)
    800022a8:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800022ac:	04542823          	sw	t0,80(s0)
                break;
    800022b0:	e65ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                volatile char ans = console::input->getc();
    800022b4:	0000a797          	auipc	a5,0xa
    800022b8:	8747b783          	ld	a5,-1932(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x60>
    800022bc:	0007b503          	ld	a0,0(a5)
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	958080e7          	jalr	-1704(ra) # 80001c18 <_ZN6Buffer4getcEv>
    800022c8:	f4a40923          	sb	a0,-174(s0)
                __asm__ volatile("mv t0, %0" : : "r"(ans));
    800022cc:	f5244783          	lbu	a5,-174(s0)
    800022d0:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800022d4:	04542823          	sw	t0,80(s0)
                break;
    800022d8:	e3dff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
                volatile char c = (char)arg1;
    800022dc:	fd043783          	ld	a5,-48(s0)
    800022e0:	0ff7f793          	andi	a5,a5,255
    800022e4:	f4f409a3          	sb	a5,-173(s0)
                console::output->putc(c);
    800022e8:	f5344583          	lbu	a1,-173(s0)
    800022ec:	0ff5f593          	andi	a1,a1,255
    800022f0:	0000a797          	auipc	a5,0xa
    800022f4:	8007b783          	ld	a5,-2048(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022f8:	0007b503          	ld	a0,0(a5)
    800022fc:	00000097          	auipc	ra,0x0
    80002300:	978080e7          	jalr	-1672(ra) # 80001c74 <_ZN6Buffer4putcEc>
                break;
    80002304:	e11ff06f          	j	80002114 <_ZN6Prekid16interruptHandlerEv+0xfc>
        __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002308:	100027f3          	csrr	a5,sstatus
    8000230c:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002310:	141027f3          	csrr	a5,sepc
    80002314:	f8f43c23          	sd	a5,-104(s0)
        _sleep::update();
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	bf8080e7          	jalr	-1032(ra) # 80001f10 <_ZN6_sleep6updateEv>
    80002320:	0840006f          	j	800023a4 <_ZN6Prekid16interruptHandlerEv+0x38c>
        _thread::timeCounter++;
    80002324:	00009717          	auipc	a4,0x9
    80002328:	7ec73703          	ld	a4,2028(a4) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000232c:	00073783          	ld	a5,0(a4)
    80002330:	00178793          	addi	a5,a5,1
    80002334:	00f73023          	sd	a5,0(a4)
        if(_thread::timeCounter >= _thread::running->getTimeSlice()){
    80002338:	00009717          	auipc	a4,0x9
    8000233c:	7b073703          	ld	a4,1968(a4) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002340:	00073703          	ld	a4,0(a4)

    time_t getTimeSlice(){ return timeSlice; }
    80002344:	03073703          	ld	a4,48(a4)
    80002348:	0ce7f663          	bgeu	a5,a4,80002414 <_ZN6Prekid16interruptHandlerEv+0x3fc>
        __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000234c:	00200793          	li	a5,2
    80002350:	1447b073          	csrc	sip,a5
        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002354:	f9043783          	ld	a5,-112(s0)
    80002358:	10079073          	csrw	sstatus,a5
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000235c:	f9843783          	ld	a5,-104(s0)
    80002360:	14179073          	csrw	sepc,a5
    80002364:	dc1ff06f          	j	80002124 <_ZN6Prekid16interruptHandlerEv+0x10c>
//        __putc('b'); __putc('\n');

        node* prev = nullptr;
        for(node* p = head; p; p = p->next){
            if(p->info == X){
                if(!prev){
    80002368:	08068663          	beqz	a3,800023f4 <_ZN6Prekid16interruptHandlerEv+0x3dc>
                    head = head->next;
//                    delete p;
                    return 1;
                }

                prev->next = p->next;
    8000236c:	0087b703          	ld	a4,8(a5)
    80002370:	00e6b423          	sd	a4,8(a3)
                if(!p->next)tail = prev;
    80002374:	0087b783          	ld	a5,8(a5)
    80002378:	08078463          	beqz	a5,80002400 <_ZN6Prekid16interruptHandlerEv+0x3e8>
                nit->rtv = -2;
    8000237c:	ffe00793          	li	a5,-2
    80002380:	04f52423          	sw	a5,72(a0)
                nit->semaphore->init++;
    80002384:	04053703          	ld	a4,64(a0)
    80002388:	00472783          	lw	a5,4(a4)
    8000238c:	0017879b          	addiw	a5,a5,1
    80002390:	00f72223          	sw	a5,4(a4)
    void setBlocked(bool f){ this->blocked = f; }
    80002394:	02050ca3          	sb	zero,57(a0)
    void setSleep(bool f){ this->sleep = f; }
    80002398:	02050d23          	sb	zero,58(a0)
    bool getFinish() const { return this->finish; }
    8000239c:	03854783          	lbu	a5,56(a0)
            if(!nit->getFinish()){
    800023a0:	06078463          	beqz	a5,80002408 <_ZN6Prekid16interruptHandlerEv+0x3f0>
        while(!_sleep::empty() && _sleep::getFirstTime() == 0){
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	a94080e7          	jalr	-1388(ra) # 80001e38 <_ZN6_sleep5emptyEv>
    800023ac:	f6051ce3          	bnez	a0,80002324 <_ZN6Prekid16interruptHandlerEv+0x30c>
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	b90080e7          	jalr	-1136(ra) # 80001f40 <_ZN6_sleep12getFirstTimeEv>
    800023b8:	f60516e3          	bnez	a0,80002324 <_ZN6Prekid16interruptHandlerEv+0x30c>
            _thread* nit = _sleep::remove_first();
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	aa0080e7          	jalr	-1376(ra) # 80001e5c <_ZN6_sleep12remove_firstEv>
            if(nit->semaphore && nit->semaphore->blocked->izbaci(nit)){
    800023c4:	04053783          	ld	a5,64(a0)
    800023c8:	fc0788e3          	beqz	a5,80002398 <_ZN6Prekid16interruptHandlerEv+0x380>
    800023cc:	0087b603          	ld	a2,8(a5)
        for(node* p = head; p; p = p->next){
    800023d0:	00063583          	ld	a1,0(a2)
    800023d4:	00058793          	mv	a5,a1
        node* prev = nullptr;
    800023d8:	00000693          	li	a3,0
        for(node* p = head; p; p = p->next){
    800023dc:	fa078ee3          	beqz	a5,80002398 <_ZN6Prekid16interruptHandlerEv+0x380>
            if(p->info == X){
    800023e0:	0007b703          	ld	a4,0(a5)
    800023e4:	f8e502e3          	beq	a0,a4,80002368 <_ZN6Prekid16interruptHandlerEv+0x350>

//                delete p;
                return 1;
            }
            prev = p;
    800023e8:	00078693          	mv	a3,a5
        for(node* p = head; p; p = p->next){
    800023ec:	0087b783          	ld	a5,8(a5)
    800023f0:	fedff06f          	j	800023dc <_ZN6Prekid16interruptHandlerEv+0x3c4>
                    head = head->next;
    800023f4:	0085b783          	ld	a5,8(a1)
    800023f8:	00f63023          	sd	a5,0(a2)
    800023fc:	f81ff06f          	j	8000237c <_ZN6Prekid16interruptHandlerEv+0x364>
                if(!p->next)tail = prev;
    80002400:	00d63423          	sd	a3,8(a2)
    80002404:	f79ff06f          	j	8000237c <_ZN6Prekid16interruptHandlerEv+0x364>
                Scheduler::put(nit);
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	b30080e7          	jalr	-1232(ra) # 80002f38 <_ZN9Scheduler3putEP7_thread>
    80002410:	f95ff06f          	j	800023a4 <_ZN6Prekid16interruptHandlerEv+0x38c>
            _thread::timeCounter = 0;
    80002414:	00009797          	auipc	a5,0x9
    80002418:	6fc7b783          	ld	a5,1788(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000241c:	0007b023          	sd	zero,0(a5)
            _thread::threadDispatch();
    80002420:	00001097          	auipc	ra,0x1
    80002424:	f78080e7          	jalr	-136(ra) # 80003398 <_ZN7_thread14threadDispatchEv>
    80002428:	f25ff06f          	j	8000234c <_ZN6Prekid16interruptHandlerEv+0x334>
        __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000242c:	100027f3          	csrr	a5,sstatus
    80002430:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002434:	141027f3          	csrr	a5,sepc
    80002438:	faf43423          	sd	a5,-88(s0)
        int irq = plic_claim();
    8000243c:	00005097          	auipc	ra,0x5
    80002440:	f68080e7          	jalr	-152(ra) # 800073a4 <plic_claim>
    80002444:	00050493          	mv	s1,a0
        while(*((volatile char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
    80002448:	00009797          	auipc	a5,0x9
    8000244c:	6907b783          	ld	a5,1680(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002450:	0007b783          	ld	a5,0(a5)
    80002454:	0007c783          	lbu	a5,0(a5)
    80002458:	0017f793          	andi	a5,a5,1
    8000245c:	02078863          	beqz	a5,8000248c <_ZN6Prekid16interruptHandlerEv+0x474>
            char c = (*(volatile char*)CONSOLE_RX_DATA);
    80002460:	00009797          	auipc	a5,0x9
    80002464:	6707b783          	ld	a5,1648(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002468:	0007b783          	ld	a5,0(a5)
    8000246c:	0007c583          	lbu	a1,0(a5)
            console::input->putc(c);
    80002470:	0ff5f593          	andi	a1,a1,255
    80002474:	00009797          	auipc	a5,0x9
    80002478:	6b47b783          	ld	a5,1716(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000247c:	0007b503          	ld	a0,0(a5)
    80002480:	fffff097          	auipc	ra,0xfffff
    80002484:	7f4080e7          	jalr	2036(ra) # 80001c74 <_ZN6Buffer4putcEc>
        while(*((volatile char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
    80002488:	fc1ff06f          	j	80002448 <_ZN6Prekid16interruptHandlerEv+0x430>
        plic_complete(irq);
    8000248c:	00048513          	mv	a0,s1
    80002490:	00005097          	auipc	ra,0x5
    80002494:	f4c080e7          	jalr	-180(ra) # 800073dc <plic_complete>
        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002498:	fa043783          	ld	a5,-96(s0)
    8000249c:	10079073          	csrw	sstatus,a5
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800024a0:	fa843783          	ld	a5,-88(s0)
    800024a4:	14179073          	csrw	sepc,a5
    800024a8:	c7dff06f          	j	80002124 <_ZN6Prekid16interruptHandlerEv+0x10c>

00000000800024ac <_ZN6Prekid10popSppSpieEv>:

void Prekid::popSppSpie() {
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00813423          	sd	s0,8(sp)
    800024b4:	01010413          	addi	s0,sp,16
    super = false;
    800024b8:	00009797          	auipc	a5,0x9
    800024bc:	6e078823          	sb	zero,1776(a5) # 8000bba8 <_ZN6Prekid5superE>
    uint64 mask = (1 << 8);
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800024c0:	10000793          	li	a5,256
    800024c4:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    800024c8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800024cc:	10200073          	sret
    800024d0:	00813403          	ld	s0,8(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_Z11userWrapperPv>:
//#include "../test/printing.hpp"


extern int userMain();

void userWrapper(void*){
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
//    printString("Poceo\n");
    userMain();
    800024ec:	00004097          	auipc	ra,0x4
    800024f0:	ad4080e7          	jalr	-1324(ra) # 80005fc0 <_Z8userMainv>
//    printString("Zavrsio\n");
}
    800024f4:	00813083          	ld	ra,8(sp)
    800024f8:	00013403          	ld	s0,0(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <main>:


int main(){
    80002504:	fe010113          	addi	sp,sp,-32
    80002508:	00113c23          	sd	ra,24(sp)
    8000250c:	00813823          	sd	s0,16(sp)
    80002510:	02010413          	addi	s0,sp,32
    MemoryAllocator::mem_init();
    80002514:	00000097          	auipc	ra,0x0
    80002518:	098080e7          	jalr	152(ra) # 800025ac <_ZN15MemoryAllocator8mem_initEv>
    __asm__ volatile("csrw stvec, %[stvec]" : : [stvec] "r" (Prekid::zaPrekide));
    8000251c:	00009797          	auipc	a5,0x9
    80002520:	5dc7b783          	ld	a5,1500(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002524:	10579073          	csrw	stvec,a5

//    uint64 mask = (1 << 8);
//    __asm__ volatile("csrs sstatus, %[mask]" : : [mask] "r" (mask));

    Prekid::super = true;
    80002528:	00009797          	auipc	a5,0x9
    8000252c:	5f07b783          	ld	a5,1520(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002530:	00100713          	li	a4,1
    80002534:	00e78023          	sb	a4,0(a5)

    _thread* main;
    thread_create(&main, nullptr, nullptr);
    80002538:	00000613          	li	a2,0
    8000253c:	00000593          	li	a1,0
    80002540:	fe840513          	addi	a0,s0,-24
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	d94080e7          	jalr	-620(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = main;
    8000254c:	00009797          	auipc	a5,0x9
    80002550:	59c7b783          	ld	a5,1436(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002554:	fe843703          	ld	a4,-24(s0)
    80002558:	00e7b023          	sd	a4,0(a5)

    console::init();
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	540080e7          	jalr	1344(ra) # 80001a9c <_ZN7console4initEv>

    __asm__ volatile("csrs sstatus, 2");
    80002564:	10016073          	csrsi	sstatus,2

    _thread* userMain;
    thread_create(&userMain, userWrapper, nullptr);
    80002568:	00000613          	li	a2,0
    8000256c:	00000597          	auipc	a1,0x0
    80002570:	f7058593          	addi	a1,a1,-144 # 800024dc <_Z11userWrapperPv>
    80002574:	fe040513          	addi	a0,s0,-32
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	d60080e7          	jalr	-672(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>

    while(!userMain->getFinish()){
    80002580:	fe043783          	ld	a5,-32(s0)
    80002584:	0387c783          	lbu	a5,56(a5)
    80002588:	00079863          	bnez	a5,80002598 <main+0x94>
        thread_dispatch();
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	dfc080e7          	jalr	-516(ra) # 80001388 <_Z15thread_dispatchv>
    80002594:	fedff06f          	j	80002580 <main+0x7c>

//    uint64* p = (uint64*)(0x100000);
//    *p = 0x5555;

    return 0;
}
    80002598:	00000513          	li	a0,0
    8000259c:	01813083          	ld	ra,24(sp)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	02010113          	addi	sp,sp,32
    800025a8:	00008067          	ret

00000000800025ac <_ZN15MemoryAllocator8mem_initEv>:
#include "../test/printing.hpp"

BlockHeader* MemoryAllocator::freeMemHead = nullptr;
BlockHeader* MemoryAllocator::usedMemHead = nullptr;

void MemoryAllocator::mem_init(){
    800025ac:	ff010113          	addi	sp,sp,-16
    800025b0:	00813423          	sd	s0,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
	freeMemHead = (BlockHeader*)((char*)HEAP_START_ADDR);
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	5287b783          	ld	a5,1320(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025c0:	0007b703          	ld	a4,0(a5)
    800025c4:	00009697          	auipc	a3,0x9
    800025c8:	5ec68693          	addi	a3,a3,1516 # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    800025cc:	00e6b023          	sd	a4,0(a3)
	freeMemHead->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(BlockHeader));
    800025d0:	00009797          	auipc	a5,0x9
    800025d4:	5507b783          	ld	a5,1360(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x58>
    800025d8:	0007b783          	ld	a5,0(a5)
    800025dc:	40e787b3          	sub	a5,a5,a4
    800025e0:	fe878793          	addi	a5,a5,-24
    800025e4:	00f73823          	sd	a5,16(a4)
	freeMemHead->prev = nullptr;
    800025e8:	00073023          	sd	zero,0(a4)
	freeMemHead->next = nullptr;
    800025ec:	0006b783          	ld	a5,0(a3)
    800025f0:	0007b423          	sd	zero,8(a5)
	usedMemHead = nullptr;
    800025f4:	0006b423          	sd	zero,8(a3)
}
    800025f8:	00813403          	ld	s0,8(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size){
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813423          	sd	s0,8(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	00050793          	mv	a5,a0
//    printString("alloc\n");
    // 90 -> 128

	size_t sz = size;
	if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    80002614:	03f57713          	andi	a4,a0,63
    80002618:	00070663          	beqz	a4,80002624 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    8000261c:	fc057793          	andi	a5,a0,-64
    80002620:	04078793          	addi	a5,a5,64

	// MEM_BLOCK_SIZE deli sz

	BlockHeader *blk = freeMemHead;
    80002624:	00009517          	auipc	a0,0x9
    80002628:	58c53503          	ld	a0,1420(a0) # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
	for(; blk != nullptr; blk = blk->next){
    8000262c:	00050a63          	beqz	a0,80002640 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
		if(blk->size >= sz)break;
    80002630:	01053703          	ld	a4,16(a0)
    80002634:	00f77663          	bgeu	a4,a5,80002640 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
	for(; blk != nullptr; blk = blk->next){
    80002638:	00853503          	ld	a0,8(a0)
    8000263c:	ff1ff06f          	j	8000262c <_ZN15MemoryAllocator9mem_allocEm+0x28>
	}

	// ovo znaci da nisam nasao prostor
	if(blk == nullptr){
    80002640:	08050263          	beqz	a0,800026c4 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
		return nullptr;
	}

	size_t ostSz = blk->size - sz; // ovoliko memorije mi je ostalo
    80002644:	01053703          	ld	a4,16(a0)
    80002648:	40f70733          	sub	a4,a4,a5
	if(ostSz > sizeof(BlockHeader)){
    8000264c:	01800693          	li	a3,24
    80002650:	08e6f663          	bgeu	a3,a4,800026dc <_ZN15MemoryAllocator9mem_allocEm+0xd8>
		// mora bar biti vece od cvora liste kako bi ga stavio uopste

		blk->size = sz;
    80002654:	00f53823          	sd	a5,16(a0)

		BlockHeader* nwBlk = (BlockHeader*)((char*)blk + sizeof(BlockHeader) + sz);
    80002658:	01878793          	addi	a5,a5,24
    8000265c:	00f507b3          	add	a5,a0,a5

		if(blk->prev)blk->prev->next = nwBlk;
    80002660:	00053683          	ld	a3,0(a0)
    80002664:	06068663          	beqz	a3,800026d0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002668:	00f6b423          	sd	a5,8(a3)
		else freeMemHead = nwBlk;

		nwBlk->prev = blk->prev;
    8000266c:	00053683          	ld	a3,0(a0)
    80002670:	00d7b023          	sd	a3,0(a5)
		nwBlk->next = blk->next;
    80002674:	00853683          	ld	a3,8(a0)
    80002678:	00d7b423          	sd	a3,8(a5)

        if(nwBlk->next)nwBlk->next->prev = nwBlk;
    8000267c:	00068463          	beqz	a3,80002684 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002680:	00f6b023          	sd	a5,0(a3)
		nwBlk->size = ostSz - sizeof(BlockHeader);
    80002684:	fe870713          	addi	a4,a4,-24
    80002688:	00e7b823          	sd	a4,16(a5)

        if(blk->next)blk->next->prev = blk->prev;

	}

	blk->prev = nullptr;
    8000268c:	00053023          	sd	zero,0(a0)
	blk->next = nullptr;
    80002690:	00053423          	sd	zero,8(a0)

	// TREBA STAVITI blk U usedMemHead
	if(usedMemHead == nullptr){
    80002694:	00009797          	auipc	a5,0x9
    80002698:	5247b783          	ld	a5,1316(a5) # 8000bbb8 <_ZN15MemoryAllocator11usedMemHeadE>
    8000269c:	06078a63          	beqz	a5,80002710 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
		usedMemHead = blk;
        usedMemHead->next = nullptr;
        usedMemHead->prev = nullptr;
 	}
 	else if((char*)blk < (char*)usedMemHead){
    800026a0:	08f57063          	bgeu	a0,a5,80002720 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
         usedMemHead->prev = blk;
    800026a4:	00a7b023          	sd	a0,0(a5)
         blk->prev = nullptr;
    800026a8:	00053023          	sd	zero,0(a0)
         blk->next = usedMemHead;
    800026ac:	00009797          	auipc	a5,0x9
    800026b0:	50478793          	addi	a5,a5,1284 # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    800026b4:	0087b703          	ld	a4,8(a5)
    800026b8:	00e53423          	sd	a4,8(a0)
         usedMemHead = blk;
    800026bc:	00a7b423          	sd	a0,8(a5)
         if(blk->next)blk->next->prev = blk;
         a->next = blk;

     }

	return (char*)blk + sizeof(BlockHeader);
    800026c0:	01850513          	addi	a0,a0,24

}
    800026c4:	00813403          	ld	s0,8(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret
		else freeMemHead = nwBlk;
    800026d0:	00009697          	auipc	a3,0x9
    800026d4:	4ef6b023          	sd	a5,1248(a3) # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    800026d8:	f95ff06f          	j	8000266c <_ZN15MemoryAllocator9mem_allocEm+0x68>
		if(blk->prev)blk->prev->next = blk->next;
    800026dc:	00053783          	ld	a5,0(a0)
    800026e0:	02078063          	beqz	a5,80002700 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
    800026e4:	00853703          	ld	a4,8(a0)
    800026e8:	00e7b423          	sd	a4,8(a5)
        if(blk->next)blk->next->prev = blk->prev;
    800026ec:	00853783          	ld	a5,8(a0)
    800026f0:	f8078ee3          	beqz	a5,8000268c <_ZN15MemoryAllocator9mem_allocEm+0x88>
    800026f4:	00053703          	ld	a4,0(a0)
    800026f8:	00e7b023          	sd	a4,0(a5)
    800026fc:	f91ff06f          	j	8000268c <_ZN15MemoryAllocator9mem_allocEm+0x88>
		else freeMemHead = blk->next;
    80002700:	00853783          	ld	a5,8(a0)
    80002704:	00009717          	auipc	a4,0x9
    80002708:	4af73623          	sd	a5,1196(a4) # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000270c:	fe1ff06f          	j	800026ec <_ZN15MemoryAllocator9mem_allocEm+0xe8>
		usedMemHead = blk;
    80002710:	00009797          	auipc	a5,0x9
    80002714:	4aa7b423          	sd	a0,1192(a5) # 8000bbb8 <_ZN15MemoryAllocator11usedMemHeadE>
        usedMemHead->prev = nullptr;
    80002718:	00053023          	sd	zero,0(a0)
    8000271c:	fa5ff06f          	j	800026c0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
         for(;a->next && (char*)a->next < (char*)blk; a = a->next);
    80002720:	00078713          	mv	a4,a5
    80002724:	0087b783          	ld	a5,8(a5)
    80002728:	00078463          	beqz	a5,80002730 <_ZN15MemoryAllocator9mem_allocEm+0x12c>
    8000272c:	fea7eae3          	bltu	a5,a0,80002720 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
         blk->next = a->next;
    80002730:	00f53423          	sd	a5,8(a0)
         blk->prev = a;
    80002734:	00e53023          	sd	a4,0(a0)
         if(blk->next)blk->next->prev = blk;
    80002738:	00078463          	beqz	a5,80002740 <_ZN15MemoryAllocator9mem_allocEm+0x13c>
    8000273c:	00a7b023          	sd	a0,0(a5)
         a->next = blk;
    80002740:	00a73423          	sd	a0,8(a4)
    80002744:	f7dff06f          	j	800026c0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>

0000000080002748 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:

	return 0;

}

void MemoryAllocator::tryToJoin(BlockHeader* p){
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813423          	sd	s0,8(sp)
    80002750:	01010413          	addi	s0,sp,16
	if(!p)return;
    80002754:	00050e63          	beqz	a0,80002770 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
	if(p->next && (char*)p + sizeof(BlockHeader) + p->size == (char*)(p->next)){
    80002758:	00853783          	ld	a5,8(a0)
    8000275c:	00078a63          	beqz	a5,80002770 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
    80002760:	01053683          	ld	a3,16(a0)
    80002764:	01868713          	addi	a4,a3,24
    80002768:	00e50733          	add	a4,a0,a4
    8000276c:	00e78863          	beq	a5,a4,8000277c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x34>
		p->size += p->next->size + sizeof(BlockHeader);
		p->next = p->next->next;
		if(p->next)p->next->prev = p;
	}
    80002770:	00813403          	ld	s0,8(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret
		p->size += p->next->size + sizeof(BlockHeader);
    8000277c:	0107b703          	ld	a4,16(a5)
    80002780:	00e686b3          	add	a3,a3,a4
    80002784:	01868693          	addi	a3,a3,24
    80002788:	00d53823          	sd	a3,16(a0)
		p->next = p->next->next;
    8000278c:	0087b783          	ld	a5,8(a5)
    80002790:	00f53423          	sd	a5,8(a0)
		if(p->next)p->next->prev = p;
    80002794:	fc078ee3          	beqz	a5,80002770 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
    80002798:	00a7b023          	sd	a0,0(a5)
    8000279c:	fd5ff06f          	j	80002770 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>

00000000800027a0 <_ZN15MemoryAllocator8mem_freeEPv>:
	if(usedMemHead == nullptr)return -1;
    800027a0:	00009797          	auipc	a5,0x9
    800027a4:	4187b783          	ld	a5,1048(a5) # 8000bbb8 <_ZN15MemoryAllocator11usedMemHeadE>
    800027a8:	12078c63          	beqz	a5,800028e0 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    800027ac:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR)return -2;
    800027b0:	12050c63          	beqz	a0,800028e8 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
    800027b4:	00009697          	auipc	a3,0x9
    800027b8:	32c6b683          	ld	a3,812(a3) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027bc:	0006b683          	ld	a3,0(a3)
    800027c0:	12d56863          	bltu	a0,a3,800028f0 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    800027c4:	00009697          	auipc	a3,0x9
    800027c8:	35c6b683          	ld	a3,860(a3) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x58>
    800027cc:	0006b683          	ld	a3,0(a3)
    800027d0:	12a6e463          	bltu	a3,a0,800028f8 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
	BlockHeader* blk = (BlockHeader*)((char*)ptr - sizeof(BlockHeader));
    800027d4:	fe850513          	addi	a0,a0,-24
    if(blk == nullptr || blk < usedMemHead)return -3;
    800027d8:	12050463          	beqz	a0,80002900 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    800027dc:	12f56663          	bltu	a0,a5,80002908 <_ZN15MemoryAllocator8mem_freeEPv+0x168>
	if(blk == usedMemHead){
    800027e0:	0aa78063          	beq	a5,a0,80002880 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
		if(blk->prev)blk->prev->next = blk->next;
    800027e4:	fe873783          	ld	a5,-24(a4)
    800027e8:	00078663          	beqz	a5,800027f4 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    800027ec:	ff073683          	ld	a3,-16(a4)
    800027f0:	00d7b423          	sd	a3,8(a5)
		if(blk->next)blk->next->prev = blk->prev;
    800027f4:	ff073783          	ld	a5,-16(a4)
    800027f8:	00078663          	beqz	a5,80002804 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    800027fc:	fe873683          	ld	a3,-24(a4)
    80002800:	00d7b023          	sd	a3,0(a5)
	blk->prev = nullptr;
    80002804:	fe073423          	sd	zero,-24(a4)
	blk->next = nullptr;
    80002808:	fe073823          	sd	zero,-16(a4)
	if(freeMemHead == nullptr){
    8000280c:	00009797          	auipc	a5,0x9
    80002810:	3a47b783          	ld	a5,932(a5) # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002814:	08078263          	beqz	a5,80002898 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
int MemoryAllocator::mem_free(void* ptr){
    80002818:	fe010113          	addi	sp,sp,-32
    8000281c:	00113c23          	sd	ra,24(sp)
    80002820:	00813823          	sd	s0,16(sp)
    80002824:	00913423          	sd	s1,8(sp)
    80002828:	02010413          	addi	s0,sp,32
	else if((char*)blk < (char*)freeMemHead){
    8000282c:	08f56663          	bltu	a0,a5,800028b8 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
		for(;p->next != nullptr && (char*)p->next < (char*)blk; p = p->next);
    80002830:	00078493          	mv	s1,a5
    80002834:	0087b783          	ld	a5,8(a5)
    80002838:	00078463          	beqz	a5,80002840 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    8000283c:	fea7eae3          	bltu	a5,a0,80002830 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
		blk->next = p->next;
    80002840:	fef73823          	sd	a5,-16(a4)
		blk->prev = p;
    80002844:	fe973423          	sd	s1,-24(a4)
		if(blk->next)blk->next->prev = blk;
    80002848:	00078463          	beqz	a5,80002850 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    8000284c:	00a7b023          	sd	a0,0(a5)
        p->next = blk;
    80002850:	00a4b423          	sd	a0,8(s1)
		tryToJoin(blk);
    80002854:	00000097          	auipc	ra,0x0
    80002858:	ef4080e7          	jalr	-268(ra) # 80002748 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
		tryToJoin(p);
    8000285c:	00048513          	mv	a0,s1
    80002860:	00000097          	auipc	ra,0x0
    80002864:	ee8080e7          	jalr	-280(ra) # 80002748 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
	return 0;
    80002868:	00000513          	li	a0,0
}
    8000286c:	01813083          	ld	ra,24(sp)
    80002870:	01013403          	ld	s0,16(sp)
    80002874:	00813483          	ld	s1,8(sp)
    80002878:	02010113          	addi	sp,sp,32
    8000287c:	00008067          	ret
		usedMemHead = usedMemHead->next;
    80002880:	0087b783          	ld	a5,8(a5)
    80002884:	00009697          	auipc	a3,0x9
    80002888:	32f6ba23          	sd	a5,820(a3) # 8000bbb8 <_ZN15MemoryAllocator11usedMemHeadE>
		if(usedMemHead)usedMemHead->prev = nullptr;
    8000288c:	f6078ce3          	beqz	a5,80002804 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    80002890:	0007b023          	sd	zero,0(a5)
    80002894:	f71ff06f          	j	80002804 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
		freeMemHead = blk;
    80002898:	00009797          	auipc	a5,0x9
    8000289c:	31878793          	addi	a5,a5,792 # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    800028a0:	00a7b023          	sd	a0,0(a5)
        freeMemHead->prev = nullptr;
    800028a4:	fe073423          	sd	zero,-24(a4)
        freeMemHead->next = nullptr;
    800028a8:	0007b783          	ld	a5,0(a5)
    800028ac:	0007b423          	sd	zero,8(a5)
	return 0;
    800028b0:	00000513          	li	a0,0
    800028b4:	00008067          	ret
        freeMemHead->prev = blk;
    800028b8:	00a7b023          	sd	a0,0(a5)
		blk->next = freeMemHead;
    800028bc:	00009797          	auipc	a5,0x9
    800028c0:	2f478793          	addi	a5,a5,756 # 8000bbb0 <_ZN15MemoryAllocator11freeMemHeadE>
    800028c4:	0007b683          	ld	a3,0(a5)
    800028c8:	fed73823          	sd	a3,-16(a4)
		freeMemHead = blk;
    800028cc:	00a7b023          	sd	a0,0(a5)
		tryToJoin(freeMemHead);
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	e78080e7          	jalr	-392(ra) # 80002748 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
	return 0;
    800028d8:	00000513          	li	a0,0
    800028dc:	f91ff06f          	j	8000286c <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
	if(usedMemHead == nullptr)return -1;
    800028e0:	fff00513          	li	a0,-1
    800028e4:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR)return -2;
    800028e8:	ffe00513          	li	a0,-2
    800028ec:	00008067          	ret
    800028f0:	ffe00513          	li	a0,-2
    800028f4:	00008067          	ret
    800028f8:	ffe00513          	li	a0,-2
    800028fc:	00008067          	ret
    if(blk == nullptr || blk < usedMemHead)return -3;
    80002900:	ffd00513          	li	a0,-3
    80002904:	00008067          	ret
    80002908:	ffd00513          	li	a0,-3
}
    8000290c:	00008067          	ret

0000000080002910 <_ZN6Thread13threadWrapperEPv>:

int Thread::sleep (time_t t){
    return time_sleep(t);
}

void Thread::threadWrapper(void *thread){
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00113423          	sd	ra,8(sp)
    80002918:	00813023          	sd	s0,0(sp)
    8000291c:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80002920:	00053783          	ld	a5,0(a0)
    80002924:	0107b783          	ld	a5,16(a5)
    80002928:	000780e7          	jalr	a5
}
    8000292c:	00813083          	ld	ra,8(sp)
    80002930:	00013403          	ld	s0,0(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <_ZN9SemaphoreD1Ev>:
// Semaphore
Semaphore::Semaphore (unsigned init){
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore(){
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
    8000294c:	00009797          	auipc	a5,0x9
    80002950:	fc478793          	addi	a5,a5,-60 # 8000b910 <_ZTV9Semaphore+0x10>
    80002954:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002958:	00853503          	ld	a0,8(a0)
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	ae8080e7          	jalr	-1304(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80002964:	00813083          	ld	ra,8(sp)
    80002968:	00013403          	ld	s0,0(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <_Znwm>:
void* operator new (size_t size){
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00113423          	sd	ra,8(sp)
    8000297c:	00813023          	sd	s0,0(sp)
    80002980:	01010413          	addi	s0,sp,16
    if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    80002984:	03f57793          	andi	a5,a0,63
    80002988:	00078663          	beqz	a5,80002994 <_Znwm+0x20>
    8000298c:	fc057513          	andi	a0,a0,-64
    80002990:	04050513          	addi	a0,a0,64
    return mem_alloc(sz);
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	8c8080e7          	jalr	-1848(ra) # 8000125c <_Z9mem_allocm>
}
    8000299c:	00813083          	ld	ra,8(sp)
    800029a0:	00013403          	ld	s0,0(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_Znam>:
void* operator new [](size_t size){
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00113423          	sd	ra,8(sp)
    800029b4:	00813023          	sd	s0,0(sp)
    800029b8:	01010413          	addi	s0,sp,16
    if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    800029bc:	03f57793          	andi	a5,a0,63
    800029c0:	00078663          	beqz	a5,800029cc <_Znam+0x20>
    800029c4:	fc057513          	andi	a0,a0,-64
    800029c8:	04050513          	addi	a0,a0,64
    return mem_alloc(sz);
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	890080e7          	jalr	-1904(ra) # 8000125c <_Z9mem_allocm>
}
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZdlPv>:
void operator delete (void* ptr){
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00113423          	sd	ra,8(sp)
    800029ec:	00813023          	sd	s0,0(sp)
    800029f0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	8a4080e7          	jalr	-1884(ra) # 80001298 <_Z8mem_freePv>
}
    800029fc:	00813083          	ld	ra,8(sp)
    80002a00:	00013403          	ld	s0,0(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_ZN6ThreadD1Ev>:
Thread::~Thread(){
    80002a0c:	00009797          	auipc	a5,0x9
    80002a10:	edc78793          	addi	a5,a5,-292 # 8000b8e8 <_ZTV6Thread+0x10>
    80002a14:	00f53023          	sd	a5,0(a0)
    myHandle->setFinish(true);
    80002a18:	00853783          	ld	a5,8(a0)
    void setFinish(bool f){ this->finish = f; }
    80002a1c:	00100713          	li	a4,1
    80002a20:	02e78c23          	sb	a4,56(a5)
    delete myHandle;
    80002a24:	00853503          	ld	a0,8(a0)
    80002a28:	02050663          	beqz	a0,80002a54 <_ZN6ThreadD1Ev+0x48>
Thread::~Thread(){
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	00813023          	sd	s0,0(sp)
    80002a38:	01010413          	addi	s0,sp,16
    delete myHandle;
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	fa8080e7          	jalr	-88(ra) # 800029e4 <_ZdlPv>
}
    80002a44:	00813083          	ld	ra,8(sp)
    80002a48:	00013403          	ld	s0,0(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret
    80002a54:	00008067          	ret

0000000080002a58 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80002a58:	fe010113          	addi	sp,sp,-32
    80002a5c:	00113c23          	sd	ra,24(sp)
    80002a60:	00813823          	sd	s0,16(sp)
    80002a64:	00913423          	sd	s1,8(sp)
    80002a68:	02010413          	addi	s0,sp,32
    80002a6c:	00050493          	mv	s1,a0
}
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	f9c080e7          	jalr	-100(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80002a78:	00048513          	mv	a0,s1
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	f68080e7          	jalr	-152(ra) # 800029e4 <_ZdlPv>
    80002a84:	01813083          	ld	ra,24(sp)
    80002a88:	01013403          	ld	s0,16(sp)
    80002a8c:	00813483          	ld	s1,8(sp)
    80002a90:	02010113          	addi	sp,sp,32
    80002a94:	00008067          	ret

0000000080002a98 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
}
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	e8c080e7          	jalr	-372(ra) # 8000293c <_ZN9SemaphoreD1Ev>
    80002ab8:	00048513          	mv	a0,s1
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	f28080e7          	jalr	-216(ra) # 800029e4 <_ZdlPv>
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00813483          	ld	s1,8(sp)
    80002ad0:	02010113          	addi	sp,sp,32
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZdaPv>:
void operator delete[](void* ptr){
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00113423          	sd	ra,8(sp)
    80002ae0:	00813023          	sd	s0,0(sp)
    80002ae4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002ae8:	ffffe097          	auipc	ra,0xffffe
    80002aec:	7b0080e7          	jalr	1968(ra) # 80001298 <_Z8mem_freePv>
}
    80002af0:	00813083          	ld	ra,8(sp)
    80002af4:	00013403          	ld	s0,0(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret

0000000080002b00 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread (void (*body)(void*), void* arg){
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	ddc78793          	addi	a5,a5,-548 # 8000b8e8 <_ZTV6Thread+0x10>
    80002b14:	00f53023          	sd	a5,0(a0)
    this->body = body; this->arg = arg;
    80002b18:	00b53823          	sd	a1,16(a0)
    80002b1c:	00c53c23          	sd	a2,24(a0)
}
    80002b20:	00813403          	ld	s0,8(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN6Thread5startEv>:
int Thread::start (){
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
   return thread_create(&myHandle, body, arg);
    80002b3c:	01853603          	ld	a2,24(a0)
    80002b40:	01053583          	ld	a1,16(a0)
    80002b44:	00850513          	addi	a0,a0,8
    80002b48:	ffffe097          	auipc	ra,0xffffe
    80002b4c:	790080e7          	jalr	1936(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	818080e7          	jalr	-2024(ra) # 80001388 <_Z15thread_dispatchv>
}
    80002b78:	00813083          	ld	ra,8(sp)
    80002b7c:	00013403          	ld	s0,0(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <_ZN6Thread5sleepEm>:
int Thread::sleep (time_t t){
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00113423          	sd	ra,8(sp)
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	9ec080e7          	jalr	-1556(ra) # 80001584 <_Z10time_sleepm>
}
    80002ba0:	00813083          	ld	ra,8(sp)
    80002ba4:	00013403          	ld	s0,0(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN6ThreadC1Ev>:
Thread::Thread() : Thread(threadWrapper, (void*)this){
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    80002bc0:	00050613          	mv	a2,a0
    80002bc4:	00000597          	auipc	a1,0x0
    80002bc8:	d4c58593          	addi	a1,a1,-692 # 80002910 <_ZN6Thread13threadWrapperEPv>
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	f34080e7          	jalr	-204(ra) # 80002b00 <_ZN6ThreadC1EPFvPvES0_>
}
    80002bd4:	00813083          	ld	ra,8(sp)
    80002bd8:	00013403          	ld	s0,0(sp)
    80002bdc:	01010113          	addi	sp,sp,16
    80002be0:	00008067          	ret

0000000080002be4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore (unsigned init){
    80002be4:	ff010113          	addi	sp,sp,-16
    80002be8:	00113423          	sd	ra,8(sp)
    80002bec:	00813023          	sd	s0,0(sp)
    80002bf0:	01010413          	addi	s0,sp,16
    80002bf4:	00009797          	auipc	a5,0x9
    80002bf8:	d1c78793          	addi	a5,a5,-740 # 8000b910 <_ZTV9Semaphore+0x10>
    80002bfc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002c00:	00850513          	addi	a0,a0,8
    80002c04:	ffffe097          	auipc	ra,0xffffe
    80002c08:	7fc080e7          	jalr	2044(ra) # 80001400 <_Z8sem_openPP4_semj>
}
    80002c0c:	00813083          	ld	ra,8(sp)
    80002c10:	00013403          	ld	s0,0(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00008067          	ret

0000000080002c1c <_ZN9Semaphore4waitEv>:

int Semaphore::wait(){
    80002c1c:	ff010113          	addi	sp,sp,-16
    80002c20:	00113423          	sd	ra,8(sp)
    80002c24:	00813023          	sd	s0,0(sp)
    80002c28:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002c2c:	00853503          	ld	a0,8(a0)
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	854080e7          	jalr	-1964(ra) # 80001484 <_Z8sem_waitP4_sem>
}
    80002c38:	00813083          	ld	ra,8(sp)
    80002c3c:	00013403          	ld	s0,0(sp)
    80002c40:	01010113          	addi	sp,sp,16
    80002c44:	00008067          	ret

0000000080002c48 <_ZN9Semaphore6signalEv>:

int Semaphore::signal(){
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00113423          	sd	ra,8(sp)
    80002c50:	00813023          	sd	s0,0(sp)
    80002c54:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002c58:	00853503          	ld	a0,8(a0)
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	868080e7          	jalr	-1944(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    80002c64:	00813083          	ld	ra,8(sp)
    80002c68:	00013403          	ld	s0,0(sp)
    80002c6c:	01010113          	addi	sp,sp,16
    80002c70:	00008067          	ret

0000000080002c74 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait (time_t time){
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00113423          	sd	ra,8(sp)
    80002c7c:	00813023          	sd	s0,0(sp)
    80002c80:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002c84:	00853503          	ld	a0,8(a0)
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	87c080e7          	jalr	-1924(ra) # 80001504 <_Z13sem_timedwaitP4_semm>
}
    80002c90:	00813083          	ld	ra,8(sp)
    80002c94:	00013403          	ld	s0,0(sp)
    80002c98:	01010113          	addi	sp,sp,16
    80002c9c:	00008067          	ret

0000000080002ca0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait(){
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00113423          	sd	ra,8(sp)
    80002ca8:	00813023          	sd	s0,0(sp)
    80002cac:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002cb0:	00853503          	ld	a0,8(a0)
    80002cb4:	fffff097          	auipc	ra,0xfffff
    80002cb8:	890080e7          	jalr	-1904(ra) # 80001544 <_Z11sem_trywaitP4_sem>
}
    80002cbc:	00813083          	ld	ra,8(sp)
    80002cc0:	00013403          	ld	s0,0(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret

0000000080002ccc <_ZN14PeriodicThreadC1Em>:

// PeriodicThread
PeriodicThread::PeriodicThread (time_t period){
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00113c23          	sd	ra,24(sp)
    80002cd4:	00813823          	sd	s0,16(sp)
    80002cd8:	00913423          	sd	s1,8(sp)
    80002cdc:	01213023          	sd	s2,0(sp)
    80002ce0:	02010413          	addi	s0,sp,32
    80002ce4:	00050493          	mv	s1,a0
    80002ce8:	00058913          	mv	s2,a1
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	ec4080e7          	jalr	-316(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80002cf4:	00009797          	auipc	a5,0x9
    80002cf8:	bc478793          	addi	a5,a5,-1084 # 8000b8b8 <_ZTV14PeriodicThread+0x10>
    80002cfc:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002d00:	0324b023          	sd	s2,32(s1)
}
    80002d04:	01813083          	ld	ra,24(sp)
    80002d08:	01013403          	ld	s0,16(sp)
    80002d0c:	00813483          	ld	s1,8(sp)
    80002d10:	00013903          	ld	s2,0(sp)
    80002d14:	02010113          	addi	sp,sp,32
    80002d18:	00008067          	ret

0000000080002d1c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate (){
    80002d1c:	ff010113          	addi	sp,sp,-16
    80002d20:	00813423          	sd	s0,8(sp)
    80002d24:	01010413          	addi	s0,sp,16
    this->period = 0;
    80002d28:	02053023          	sd	zero,32(a0)
}
    80002d2c:	00813403          	ld	s0,8(sp)
    80002d30:	01010113          	addi	sp,sp,16
    80002d34:	00008067          	ret

0000000080002d38 <_ZN14PeriodicThread15periodicWrapperEPv>:

void PeriodicThread::periodicWrapper(void *thread){
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00913423          	sd	s1,8(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00050493          	mv	s1,a0
    PeriodicThread* p = (PeriodicThread*)thread;
    while(p->period != 0){
    80002d50:	0204b783          	ld	a5,32(s1)
    80002d54:	02078263          	beqz	a5,80002d78 <_ZN14PeriodicThread15periodicWrapperEPv+0x40>
        p->periodicActivation();
    80002d58:	0004b783          	ld	a5,0(s1)
    80002d5c:	0187b783          	ld	a5,24(a5)
    80002d60:	00048513          	mv	a0,s1
    80002d64:	000780e7          	jalr	a5
        Thread::sleep(p->period);
    80002d68:	0204b503          	ld	a0,32(s1)
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	e1c080e7          	jalr	-484(ra) # 80002b88 <_ZN6Thread5sleepEm>
    while(p->period != 0){
    80002d74:	fddff06f          	j	80002d50 <_ZN14PeriodicThread15periodicWrapperEPv+0x18>
    }
}
    80002d78:	01813083          	ld	ra,24(sp)
    80002d7c:	01013403          	ld	s0,16(sp)
    80002d80:	00813483          	ld	s1,8(sp)
    80002d84:	02010113          	addi	sp,sp,32
    80002d88:	00008067          	ret

0000000080002d8c <_ZN7Console4getcEv>:

// Console
char Console::getc (){
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00113423          	sd	ra,8(sp)
    80002d94:	00813023          	sd	s0,0(sp)
    80002d98:	01010413          	addi	s0,sp,16
    return ::getc();
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	828080e7          	jalr	-2008(ra) # 800015c4 <_Z4getcv>
}
    80002da4:	00813083          	ld	ra,8(sp)
    80002da8:	00013403          	ld	s0,0(sp)
    80002dac:	01010113          	addi	sp,sp,16
    80002db0:	00008067          	ret

0000000080002db4 <_ZN7Console4putcEc>:

void Console::putc (char c){
    80002db4:	ff010113          	addi	sp,sp,-16
    80002db8:	00113423          	sd	ra,8(sp)
    80002dbc:	00813023          	sd	s0,0(sp)
    80002dc0:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	840080e7          	jalr	-1984(ra) # 80001604 <_Z4putcc>
}
    80002dcc:	00813083          	ld	ra,8(sp)
    80002dd0:	00013403          	ld	s0,0(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret

0000000080002ddc <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void threadWrapper(void*);
protected:
    Thread ();
    virtual void run () {}
    80002ddc:	ff010113          	addi	sp,sp,-16
    80002de0:	00813423          	sd	s0,8(sp)
    80002de4:	01010413          	addi	s0,sp,16
    80002de8:	00813403          	ld	s0,8(sp)
    80002dec:	01010113          	addi	sp,sp,16
    80002df0:	00008067          	ret

0000000080002df4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002df4:	ff010113          	addi	sp,sp,-16
    80002df8:	00813423          	sd	s0,8(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    80002e00:	00813403          	ld	s0,8(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00008067          	ret

0000000080002e0c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00113423          	sd	ra,8(sp)
    80002e14:	00813023          	sd	s0,0(sp)
    80002e18:	01010413          	addi	s0,sp,16
    80002e1c:	00009797          	auipc	a5,0x9
    80002e20:	a9c78793          	addi	a5,a5,-1380 # 8000b8b8 <_ZTV14PeriodicThread+0x10>
    80002e24:	00f53023          	sd	a5,0(a0)
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	be4080e7          	jalr	-1052(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80002e30:	00813083          	ld	ra,8(sp)
    80002e34:	00013403          	ld	s0,0(sp)
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret

0000000080002e40 <_ZN14PeriodicThreadD0Ev>:
    80002e40:	fe010113          	addi	sp,sp,-32
    80002e44:	00113c23          	sd	ra,24(sp)
    80002e48:	00813823          	sd	s0,16(sp)
    80002e4c:	00913423          	sd	s1,8(sp)
    80002e50:	02010413          	addi	s0,sp,32
    80002e54:	00050493          	mv	s1,a0
    80002e58:	00009797          	auipc	a5,0x9
    80002e5c:	a6078793          	addi	a5,a5,-1440 # 8000b8b8 <_ZTV14PeriodicThread+0x10>
    80002e60:	00f53023          	sd	a5,0(a0)
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	ba8080e7          	jalr	-1112(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80002e6c:	00048513          	mv	a0,s1
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	b74080e7          	jalr	-1164(ra) # 800029e4 <_ZdlPv>
    80002e78:	01813083          	ld	ra,24(sp)
    80002e7c:	01013403          	ld	s0,16(sp)
    80002e80:	00813483          	ld	s1,8(sp)
    80002e84:	02010113          	addi	sp,sp,32
    80002e88:	00008067          	ret

0000000080002e8c <_Z41__static_initialization_and_destruction_0ii>:
        if(!ready.has())break;
        ready.next();
    }

    printString("---------------------\n");
}
    80002e8c:	ff010113          	addi	sp,sp,-16
    80002e90:	00813423          	sd	s0,8(sp)
    80002e94:	01010413          	addi	s0,sp,16
    80002e98:	00100793          	li	a5,1
    80002e9c:	00f50863          	beq	a0,a5,80002eac <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ea0:	00813403          	ld	s0,8(sp)
    80002ea4:	01010113          	addi	sp,sp,16
    80002ea8:	00008067          	ret
    80002eac:	000107b7          	lui	a5,0x10
    80002eb0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002eb4:	fef596e3          	bne	a1,a5,80002ea0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List(){}
    80002eb8:	00009797          	auipc	a5,0x9
    80002ebc:	d0878793          	addi	a5,a5,-760 # 8000bbc0 <_ZN9Scheduler5readyE>
    80002ec0:	0007b023          	sd	zero,0(a5)
    80002ec4:	0007b423          	sd	zero,8(a5)
    80002ec8:	0007b823          	sd	zero,16(a5)
    80002ecc:	fd5ff06f          	j	80002ea0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ed0 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get(){
    80002ed0:	fe010113          	addi	sp,sp,-32
    80002ed4:	00113c23          	sd	ra,24(sp)
    80002ed8:	00813823          	sd	s0,16(sp)
    80002edc:	00913423          	sd	s1,8(sp)
    80002ee0:	02010413          	addi	s0,sp,32
        if(!head)return 0;
    80002ee4:	00009517          	auipc	a0,0x9
    80002ee8:	cdc53503          	ld	a0,-804(a0) # 8000bbc0 <_ZN9Scheduler5readyE>
    80002eec:	04050263          	beqz	a0,80002f30 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002ef0:	00853783          	ld	a5,8(a0)
    80002ef4:	00009717          	auipc	a4,0x9
    80002ef8:	ccf73623          	sd	a5,-820(a4) # 8000bbc0 <_ZN9Scheduler5readyE>
        if(!head)tail = 0;
    80002efc:	02078463          	beqz	a5,80002f24 <_ZN9Scheduler3getEv+0x54>
        T* ans = p->info;
    80002f00:	00053483          	ld	s1,0(a0)
        delete p;
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	ae0080e7          	jalr	-1312(ra) # 800029e4 <_ZdlPv>
}
    80002f0c:	00048513          	mv	a0,s1
    80002f10:	01813083          	ld	ra,24(sp)
    80002f14:	01013403          	ld	s0,16(sp)
    80002f18:	00813483          	ld	s1,8(sp)
    80002f1c:	02010113          	addi	sp,sp,32
    80002f20:	00008067          	ret
        if(!head)tail = 0;
    80002f24:	00009797          	auipc	a5,0x9
    80002f28:	ca07b223          	sd	zero,-860(a5) # 8000bbc8 <_ZN9Scheduler5readyE+0x8>
    80002f2c:	fd5ff06f          	j	80002f00 <_ZN9Scheduler3getEv+0x30>
        if(!head)return 0;
    80002f30:	00050493          	mv	s1,a0
    return ready.remove_first();
    80002f34:	fd9ff06f          	j	80002f0c <_ZN9Scheduler3getEv+0x3c>

0000000080002f38 <_ZN9Scheduler3putEP7_thread>:
void Scheduler::put(_thread* t){
    80002f38:	fe010113          	addi	sp,sp,-32
    80002f3c:	00113c23          	sd	ra,24(sp)
    80002f40:	00813823          	sd	s0,16(sp)
    80002f44:	00913423          	sd	s1,8(sp)
    80002f48:	02010413          	addi	s0,sp,32
    80002f4c:	00050493          	mv	s1,a0
        node* nw = new node(info, 0);
    80002f50:	01000513          	li	a0,16
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	a20080e7          	jalr	-1504(ra) # 80002974 <_Znwm>
        node(T* info, node* next) : info(info), next(next) {}
    80002f5c:	00953023          	sd	s1,0(a0)
    80002f60:	00053423          	sd	zero,8(a0)
        if(tail){
    80002f64:	00009797          	auipc	a5,0x9
    80002f68:	c647b783          	ld	a5,-924(a5) # 8000bbc8 <_ZN9Scheduler5readyE+0x8>
    80002f6c:	02078263          	beqz	a5,80002f90 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = nw;
    80002f70:	00a7b423          	sd	a0,8(a5)
            tail = nw;
    80002f74:	00009797          	auipc	a5,0x9
    80002f78:	c4a7ba23          	sd	a0,-940(a5) # 8000bbc8 <_ZN9Scheduler5readyE+0x8>
}
    80002f7c:	01813083          	ld	ra,24(sp)
    80002f80:	01013403          	ld	s0,16(sp)
    80002f84:	00813483          	ld	s1,8(sp)
    80002f88:	02010113          	addi	sp,sp,32
    80002f8c:	00008067          	ret
            head = tail = nw;
    80002f90:	00009797          	auipc	a5,0x9
    80002f94:	c3078793          	addi	a5,a5,-976 # 8000bbc0 <_ZN9Scheduler5readyE>
    80002f98:	00a7b423          	sd	a0,8(a5)
    80002f9c:	00a7b023          	sd	a0,0(a5)
    80002fa0:	fddff06f          	j	80002f7c <_ZN9Scheduler3putEP7_thread+0x44>

0000000080002fa4 <_ZN9Scheduler9put_firstEP7_thread>:
void Scheduler::put_first(_thread* t){
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	02010413          	addi	s0,sp,32
    80002fb8:	00050493          	mv	s1,a0
        node* nw = new node(info, head);
    80002fbc:	01000513          	li	a0,16
    80002fc0:	00000097          	auipc	ra,0x0
    80002fc4:	9b4080e7          	jalr	-1612(ra) # 80002974 <_Znwm>
    80002fc8:	00009797          	auipc	a5,0x9
    80002fcc:	bf878793          	addi	a5,a5,-1032 # 8000bbc0 <_ZN9Scheduler5readyE>
    80002fd0:	0007b703          	ld	a4,0(a5)
        node(T* info, node* next) : info(info), next(next) {}
    80002fd4:	00953023          	sd	s1,0(a0)
    80002fd8:	00e53423          	sd	a4,8(a0)
        head = nw;
    80002fdc:	00a7b023          	sd	a0,0(a5)
        if(!tail)tail = head;
    80002fe0:	0087b783          	ld	a5,8(a5)
    80002fe4:	00078c63          	beqz	a5,80002ffc <_ZN9Scheduler9put_firstEP7_thread+0x58>
}
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret
    80002ffc:	00009797          	auipc	a5,0x9
    80003000:	bca7b623          	sd	a0,-1076(a5) # 8000bbc8 <_ZN9Scheduler5readyE+0x8>
    80003004:	fe5ff06f          	j	80002fe8 <_ZN9Scheduler9put_firstEP7_thread+0x44>

0000000080003008 <_ZN9Scheduler5printEv>:
void Scheduler::print(){
    80003008:	fe010113          	addi	sp,sp,-32
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	00813823          	sd	s0,16(sp)
    80003014:	00913423          	sd	s1,8(sp)
    80003018:	02010413          	addi	s0,sp,32
        cur = head;
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	ba478793          	addi	a5,a5,-1116 # 8000bbc0 <_ZN9Scheduler5readyE>
    80003024:	0007b703          	ld	a4,0(a5)
    80003028:	00e7b823          	sd	a4,16(a5)
    printString("---------------------\n");
    8000302c:	00006517          	auipc	a0,0x6
    80003030:	10450513          	addi	a0,a0,260 # 80009130 <CONSOLE_STATUS+0x120>
    80003034:	00003097          	auipc	ra,0x3
    80003038:	8c4080e7          	jalr	-1852(ra) # 800058f8 <_Z11printStringPKc>
        return (cur ? cur->info : nullptr);
    8000303c:	00009797          	auipc	a5,0x9
    80003040:	b947b783          	ld	a5,-1132(a5) # 8000bbd0 <_ZN9Scheduler5readyE+0x10>
    80003044:	04078e63          	beqz	a5,800030a0 <_ZN9Scheduler5printEv+0x98>
    80003048:	0007b483          	ld	s1,0(a5)
        if(!t)break;
    8000304c:	04048a63          	beqz	s1,800030a0 <_ZN9Scheduler5printEv+0x98>
        printString("id: ");
    80003050:	00006517          	auipc	a0,0x6
    80003054:	0f850513          	addi	a0,a0,248 # 80009148 <CONSOLE_STATUS+0x138>
    80003058:	00003097          	auipc	ra,0x3
    8000305c:	8a0080e7          	jalr	-1888(ra) # 800058f8 <_Z11printStringPKc>
        printInt(t->id);
    80003060:	00000613          	li	a2,0
    80003064:	00a00593          	li	a1,10
    80003068:	0004a503          	lw	a0,0(s1)
    8000306c:	00003097          	auipc	ra,0x3
    80003070:	a3c080e7          	jalr	-1476(ra) # 80005aa8 <_Z8printIntiii>
        printString("\n");
    80003074:	00006517          	auipc	a0,0x6
    80003078:	41450513          	addi	a0,a0,1044 # 80009488 <CONSOLE_STATUS+0x478>
    8000307c:	00003097          	auipc	ra,0x3
    80003080:	87c080e7          	jalr	-1924(ra) # 800058f8 <_Z11printStringPKc>
        return cur->next;
    80003084:	00009797          	auipc	a5,0x9
    80003088:	b4c7b783          	ld	a5,-1204(a5) # 8000bbd0 <_ZN9Scheduler5readyE+0x10>
    8000308c:	0087b783          	ld	a5,8(a5)
        if(!ready.has())break;
    80003090:	00078863          	beqz	a5,800030a0 <_ZN9Scheduler5printEv+0x98>
        cur = cur->next;
    80003094:	00009717          	auipc	a4,0x9
    80003098:	b2f73e23          	sd	a5,-1220(a4) # 8000bbd0 <_ZN9Scheduler5readyE+0x10>
    }
    8000309c:	fa1ff06f          	j	8000303c <_ZN9Scheduler5printEv+0x34>
    printString("---------------------\n");
    800030a0:	00006517          	auipc	a0,0x6
    800030a4:	09050513          	addi	a0,a0,144 # 80009130 <CONSOLE_STATUS+0x120>
    800030a8:	00003097          	auipc	ra,0x3
    800030ac:	850080e7          	jalr	-1968(ra) # 800058f8 <_Z11printStringPKc>
}
    800030b0:	01813083          	ld	ra,24(sp)
    800030b4:	01013403          	ld	s0,16(sp)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret

00000000800030c4 <_GLOBAL__sub_I__ZN9Scheduler5readyE>:
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00113423          	sd	ra,8(sp)
    800030cc:	00813023          	sd	s0,0(sp)
    800030d0:	01010413          	addi	s0,sp,16
    800030d4:	000105b7          	lui	a1,0x10
    800030d8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800030dc:	00100513          	li	a0,1
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	dac080e7          	jalr	-596(ra) # 80002e8c <_Z41__static_initialization_and_destruction_0ii>
    800030e8:	00813083          	ld	ra,8(sp)
    800030ec:	00013403          	ld	s0,0(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN7_thread14threadWrapper2Ev>:
    void* stek = __mem_alloc(DEFAULT_STACK_SIZE);
    *handle = new _thread(start_routine, arg, stek, {(uint64)threadWrapper2, (uint64)stek + DEFAULT_STACK_SIZE - 1});
    if(start_routine)Scheduler::put(*handle);
    return (*handle)->id;
}
void _thread::threadWrapper2(){
    800030f8:	fe010113          	addi	sp,sp,-32
    800030fc:	00113c23          	sd	ra,24(sp)
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00913423          	sd	s1,8(sp)
    80003108:	02010413          	addi	s0,sp,32
    _thread::running->body(_thread::running->arg);
    8000310c:	00009497          	auipc	s1,0x9
    80003110:	acc48493          	addi	s1,s1,-1332 # 8000bbd8 <_ZN7_thread7runningE>
    80003114:	0004b783          	ld	a5,0(s1)
    80003118:	0087b703          	ld	a4,8(a5)
    8000311c:	0107b503          	ld	a0,16(a5)
    80003120:	000700e7          	jalr	a4
    _thread::running->setFinish(true);
    80003124:	0004b783          	ld	a5,0(s1)
    80003128:	00100713          	li	a4,1
    8000312c:	02e78c23          	sb	a4,56(a5)
    thread_dispatch();
    80003130:	ffffe097          	auipc	ra,0xffffe
    80003134:	258080e7          	jalr	600(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003138:	01813083          	ld	ra,24(sp)
    8000313c:	01013403          	ld	s0,16(sp)
    80003140:	00813483          	ld	s1,8(sp)
    80003144:	02010113          	addi	sp,sp,32
    80003148:	00008067          	ret

000000008000314c <_ZN7_thread13threadWrapperEv>:
    if(!old->getFinish() && !old->getSleep() && !old->getBlocked())Scheduler::put(old);
    _thread::running = Scheduler::get();
    _thread::contextSwitch(&old->context, &_thread::running->context);
}

void _thread::threadWrapper(){
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00113c23          	sd	ra,24(sp)
    80003154:	00813823          	sd	s0,16(sp)
    80003158:	00913423          	sd	s1,8(sp)
    8000315c:	02010413          	addi	s0,sp,32
    Prekid::popSppSpie();
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	34c080e7          	jalr	844(ra) # 800024ac <_ZN6Prekid10popSppSpieEv>
    _thread::running->body(_thread::running->arg);
    80003168:	00009497          	auipc	s1,0x9
    8000316c:	a7048493          	addi	s1,s1,-1424 # 8000bbd8 <_ZN7_thread7runningE>
    80003170:	0004b783          	ld	a5,0(s1)
    80003174:	0087b703          	ld	a4,8(a5)
    80003178:	0107b503          	ld	a0,16(a5)
    8000317c:	000700e7          	jalr	a4
    _thread::running->setFinish(true);
    80003180:	0004b783          	ld	a5,0(s1)
    80003184:	00100713          	li	a4,1
    80003188:	02e78c23          	sb	a4,56(a5)
    thread_dispatch();
    8000318c:	ffffe097          	auipc	ra,0xffffe
    80003190:	1fc080e7          	jalr	508(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003194:	01813083          	ld	ra,24(sp)
    80003198:	01013403          	ld	s0,16(sp)
    8000319c:	00813483          	ld	s1,8(sp)
    800031a0:	02010113          	addi	sp,sp,32
    800031a4:	00008067          	ret

00000000800031a8 <_ZN7_threadC1EPFvPvES0_S0_NS_7ContextE>:
_thread::_thread(Body start_routine, void* arg, void* stek, Context context) :
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00813c23          	sd	s0,24(sp)
    800031b0:	02010413          	addi	s0,sp,32
    id(_thread::threadId++), body(start_routine), arg(arg), stek(stek), context(context), timeSlice(DEFAULT_TIME_SLICE), finish(false), blocked(false), sleep(false){}
    800031b4:	00009897          	auipc	a7,0x9
    800031b8:	a2488893          	addi	a7,a7,-1500 # 8000bbd8 <_ZN7_thread7runningE>
    800031bc:	0088a803          	lw	a6,8(a7)
    800031c0:	0018031b          	addiw	t1,a6,1
    800031c4:	0068a423          	sw	t1,8(a7)
    800031c8:	01052023          	sw	a6,0(a0)
    800031cc:	00b53423          	sd	a1,8(a0)
    800031d0:	00c53823          	sd	a2,16(a0)
    800031d4:	00d53c23          	sd	a3,24(a0)
    800031d8:	02e53023          	sd	a4,32(a0)
    800031dc:	02f53423          	sd	a5,40(a0)
    800031e0:	00200793          	li	a5,2
    800031e4:	02f53823          	sd	a5,48(a0)
    800031e8:	02050c23          	sb	zero,56(a0)
    800031ec:	02050ca3          	sb	zero,57(a0)
    800031f0:	02050d23          	sb	zero,58(a0)
    800031f4:	04053023          	sd	zero,64(a0)
    800031f8:	04052423          	sw	zero,72(a0)
    800031fc:	01813403          	ld	s0,24(sp)
    80003200:	02010113          	addi	sp,sp,32
    80003204:	00008067          	ret

0000000080003208 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_>:
int _thread::threadCreate(thread_t* handle, void(*start_routine)(void*), void* arg, void* stek){
    80003208:	fb010113          	addi	sp,sp,-80
    8000320c:	04113423          	sd	ra,72(sp)
    80003210:	04813023          	sd	s0,64(sp)
    80003214:	02913c23          	sd	s1,56(sp)
    80003218:	03213823          	sd	s2,48(sp)
    8000321c:	03313423          	sd	s3,40(sp)
    80003220:	03413023          	sd	s4,32(sp)
    80003224:	01513c23          	sd	s5,24(sp)
    80003228:	05010413          	addi	s0,sp,80
    8000322c:	00050493          	mv	s1,a0
    80003230:	00058913          	mv	s2,a1
    80003234:	00060a93          	mv	s5,a2
    stek = __mem_alloc(DEFAULT_STACK_SIZE);
    80003238:	00001537          	lui	a0,0x1
    8000323c:	00006097          	auipc	ra,0x6
    80003240:	a9c080e7          	jalr	-1380(ra) # 80008cd8 <__mem_alloc>
    80003244:	00050993          	mv	s3,a0
    *handle = new _thread(start_routine, arg, stek, {(uint64)threadWrapper, (uint64)stek + DEFAULT_STACK_SIZE - 1});
    80003248:	00000797          	auipc	a5,0x0
    8000324c:	f0478793          	addi	a5,a5,-252 # 8000314c <_ZN7_thread13threadWrapperEv>
    80003250:	faf43823          	sd	a5,-80(s0)
    80003254:	000017b7          	lui	a5,0x1
    80003258:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000325c:	00f507b3          	add	a5,a0,a5
    80003260:	faf43c23          	sd	a5,-72(s0)
    80003264:	05000513          	li	a0,80
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	70c080e7          	jalr	1804(ra) # 80002974 <_Znwm>
    80003270:	00050a13          	mv	s4,a0
    80003274:	fb043703          	ld	a4,-80(s0)
    80003278:	fb843783          	ld	a5,-72(s0)
    8000327c:	00098693          	mv	a3,s3
    80003280:	000a8613          	mv	a2,s5
    80003284:	00090593          	mv	a1,s2
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	f20080e7          	jalr	-224(ra) # 800031a8 <_ZN7_threadC1EPFvPvES0_S0_NS_7ContextE>
    80003290:	0144b023          	sd	s4,0(s1)
    if(start_routine)Scheduler::put(*handle);
    80003294:	00090863          	beqz	s2,800032a4 <_ZN7_thread12threadCreateEPPS_PFvPvES2_S2_+0x9c>
    80003298:	000a0513          	mv	a0,s4
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	c9c080e7          	jalr	-868(ra) # 80002f38 <_ZN9Scheduler3putEP7_thread>
    return (*handle)->id;
    800032a4:	0004b783          	ld	a5,0(s1)
}
    800032a8:	0007a503          	lw	a0,0(a5)
    800032ac:	04813083          	ld	ra,72(sp)
    800032b0:	04013403          	ld	s0,64(sp)
    800032b4:	03813483          	ld	s1,56(sp)
    800032b8:	03013903          	ld	s2,48(sp)
    800032bc:	02813983          	ld	s3,40(sp)
    800032c0:	02013a03          	ld	s4,32(sp)
    800032c4:	01813a83          	ld	s5,24(sp)
    800032c8:	05010113          	addi	sp,sp,80
    800032cc:	00008067          	ret

00000000800032d0 <_ZN7_thread7napraviEPPS_PFvPvES2_>:
int _thread::napravi(thread_t* handle, void(*start_routine)(void*), void* arg){
    800032d0:	fb010113          	addi	sp,sp,-80
    800032d4:	04113423          	sd	ra,72(sp)
    800032d8:	04813023          	sd	s0,64(sp)
    800032dc:	02913c23          	sd	s1,56(sp)
    800032e0:	03213823          	sd	s2,48(sp)
    800032e4:	03313423          	sd	s3,40(sp)
    800032e8:	03413023          	sd	s4,32(sp)
    800032ec:	01513c23          	sd	s5,24(sp)
    800032f0:	05010413          	addi	s0,sp,80
    800032f4:	00050493          	mv	s1,a0
    800032f8:	00058913          	mv	s2,a1
    800032fc:	00060a93          	mv	s5,a2
    void* stek = __mem_alloc(DEFAULT_STACK_SIZE);
    80003300:	00001537          	lui	a0,0x1
    80003304:	00006097          	auipc	ra,0x6
    80003308:	9d4080e7          	jalr	-1580(ra) # 80008cd8 <__mem_alloc>
    8000330c:	00050993          	mv	s3,a0
    *handle = new _thread(start_routine, arg, stek, {(uint64)threadWrapper2, (uint64)stek + DEFAULT_STACK_SIZE - 1});
    80003310:	00000797          	auipc	a5,0x0
    80003314:	de878793          	addi	a5,a5,-536 # 800030f8 <_ZN7_thread14threadWrapper2Ev>
    80003318:	faf43823          	sd	a5,-80(s0)
    8000331c:	000017b7          	lui	a5,0x1
    80003320:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003324:	00f507b3          	add	a5,a0,a5
    80003328:	faf43c23          	sd	a5,-72(s0)
    8000332c:	05000513          	li	a0,80
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	644080e7          	jalr	1604(ra) # 80002974 <_Znwm>
    80003338:	00050a13          	mv	s4,a0
    8000333c:	fb043703          	ld	a4,-80(s0)
    80003340:	fb843783          	ld	a5,-72(s0)
    80003344:	00098693          	mv	a3,s3
    80003348:	000a8613          	mv	a2,s5
    8000334c:	00090593          	mv	a1,s2
    80003350:	00000097          	auipc	ra,0x0
    80003354:	e58080e7          	jalr	-424(ra) # 800031a8 <_ZN7_threadC1EPFvPvES0_S0_NS_7ContextE>
    80003358:	0144b023          	sd	s4,0(s1)
    if(start_routine)Scheduler::put(*handle);
    8000335c:	00090863          	beqz	s2,8000336c <_ZN7_thread7napraviEPPS_PFvPvES2_+0x9c>
    80003360:	000a0513          	mv	a0,s4
    80003364:	00000097          	auipc	ra,0x0
    80003368:	bd4080e7          	jalr	-1068(ra) # 80002f38 <_ZN9Scheduler3putEP7_thread>
    return (*handle)->id;
    8000336c:	0004b783          	ld	a5,0(s1)
}
    80003370:	0007a503          	lw	a0,0(a5)
    80003374:	04813083          	ld	ra,72(sp)
    80003378:	04013403          	ld	s0,64(sp)
    8000337c:	03813483          	ld	s1,56(sp)
    80003380:	03013903          	ld	s2,48(sp)
    80003384:	02813983          	ld	s3,40(sp)
    80003388:	02013a03          	ld	s4,32(sp)
    8000338c:	01813a83          	ld	s5,24(sp)
    80003390:	05010113          	addi	sp,sp,80
    80003394:	00008067          	ret

0000000080003398 <_ZN7_thread14threadDispatchEv>:
void _thread::threadDispatch(){
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	02010413          	addi	s0,sp,32
    _thread* old = _thread::running;
    800033ac:	00009497          	auipc	s1,0x9
    800033b0:	82c4b483          	ld	s1,-2004(s1) # 8000bbd8 <_ZN7_thread7runningE>
    bool getFinish() const { return this->finish; }
    800033b4:	0384c783          	lbu	a5,56(s1)
    if(!old->getFinish() && !old->getSleep() && !old->getBlocked())Scheduler::put(old);
    800033b8:	00079a63          	bnez	a5,800033cc <_ZN7_thread14threadDispatchEv+0x34>
    bool getSleep() const { return this->sleep; }
    800033bc:	03a4c783          	lbu	a5,58(s1)
    800033c0:	00079663          	bnez	a5,800033cc <_ZN7_thread14threadDispatchEv+0x34>
    bool getBlocked() const { return this->blocked; }
    800033c4:	0394c783          	lbu	a5,57(s1)
    800033c8:	02078c63          	beqz	a5,80003400 <_ZN7_thread14threadDispatchEv+0x68>
    _thread::running = Scheduler::get();
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	b04080e7          	jalr	-1276(ra) # 80002ed0 <_ZN9Scheduler3getEv>
    800033d4:	00009797          	auipc	a5,0x9
    800033d8:	80a7b223          	sd	a0,-2044(a5) # 8000bbd8 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &_thread::running->context);
    800033dc:	02050593          	addi	a1,a0,32 # 1020 <_entry-0x7fffefe0>
    800033e0:	02048513          	addi	a0,s1,32
    800033e4:	ffffe097          	auipc	ra,0xffffe
    800033e8:	e24080e7          	jalr	-476(ra) # 80001208 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00813483          	ld	s1,8(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret
    if(!old->getFinish() && !old->getSleep() && !old->getBlocked())Scheduler::put(old);
    80003400:	00048513          	mv	a0,s1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	b34080e7          	jalr	-1228(ra) # 80002f38 <_ZN9Scheduler3putEP7_thread>
    8000340c:	fc1ff06f          	j	800033cc <_ZN7_thread14threadDispatchEv+0x34>

0000000080003410 <_ZN7_thread11threadYieldEv>:
void _thread::threadYield(){
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00113423          	sd	ra,8(sp)
    80003418:	00813023          	sd	s0,0(sp)
    8000341c:	01010413          	addi	s0,sp,16
    Prekid::pushRegisters();
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	cf0080e7          	jalr	-784(ra) # 80001110 <_ZN6Prekid13pushRegistersEv>
    _thread::threadDispatch();
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	f70080e7          	jalr	-144(ra) # 80003398 <_ZN7_thread14threadDispatchEv>
    Prekid::popRegisters();
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	d5c080e7          	jalr	-676(ra) # 8000118c <_ZN6Prekid12popRegistersEv>
}
    80003438:	00813083          	ld	ra,8(sp)
    8000343c:	00013403          	ld	s0,0(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret

0000000080003448 <_ZN7_thread10threadExitEv>:

void _thread::threadExit(){
    80003448:	ff010113          	addi	sp,sp,-16
    8000344c:	00113423          	sd	ra,8(sp)
    80003450:	00813023          	sd	s0,0(sp)
    80003454:	01010413          	addi	s0,sp,16
    void setFinish(bool f){ this->finish = f; }
    80003458:	00008797          	auipc	a5,0x8
    8000345c:	7807b783          	ld	a5,1920(a5) # 8000bbd8 <_ZN7_thread7runningE>
    80003460:	00100713          	li	a4,1
    80003464:	02e78c23          	sb	a4,56(a5)
    _thread::running->setFinish(true);
    thread_dispatch();
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	f20080e7          	jalr	-224(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003470:	00813083          	ld	ra,8(sp)
    80003474:	00013403          	ld	s0,0(sp)
    80003478:	01010113          	addi	sp,sp,16
    8000347c:	00008067          	ret

0000000080003480 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003480:	fe010113          	addi	sp,sp,-32
    80003484:	00113c23          	sd	ra,24(sp)
    80003488:	00813823          	sd	s0,16(sp)
    8000348c:	00913423          	sd	s1,8(sp)
    80003490:	01213023          	sd	s2,0(sp)
    80003494:	02010413          	addi	s0,sp,32
    80003498:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000349c:	00000913          	li	s2,0
    800034a0:	00c0006f          	j	800034ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	ee4080e7          	jalr	-284(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	118080e7          	jalr	280(ra) # 800015c4 <_Z4getcv>
    800034b4:	0005059b          	sext.w	a1,a0
    800034b8:	01b00793          	li	a5,27
    800034bc:	02f58a63          	beq	a1,a5,800034f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800034c0:	0084b503          	ld	a0,8(s1)
    800034c4:	00003097          	auipc	ra,0x3
    800034c8:	400080e7          	jalr	1024(ra) # 800068c4 <_ZN6Buffer3putEi>
        i++;
    800034cc:	0019071b          	addiw	a4,s2,1
    800034d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800034d4:	0004a683          	lw	a3,0(s1)
    800034d8:	0026979b          	slliw	a5,a3,0x2
    800034dc:	00d787bb          	addw	a5,a5,a3
    800034e0:	0017979b          	slliw	a5,a5,0x1
    800034e4:	02f767bb          	remw	a5,a4,a5
    800034e8:	fc0792e3          	bnez	a5,800034ac <_ZL16producerKeyboardPv+0x2c>
    800034ec:	fb9ff06f          	j	800034a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800034f0:	00100793          	li	a5,1
    800034f4:	00008717          	auipc	a4,0x8
    800034f8:	6ef72e23          	sw	a5,1788(a4) # 8000bbf0 <_ZL9threadEnd>
    data->buffer->put('!');
    800034fc:	02100593          	li	a1,33
    80003500:	0084b503          	ld	a0,8(s1)
    80003504:	00003097          	auipc	ra,0x3
    80003508:	3c0080e7          	jalr	960(ra) # 800068c4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000350c:	0104b503          	ld	a0,16(s1)
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	fb4080e7          	jalr	-76(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    80003518:	01813083          	ld	ra,24(sp)
    8000351c:	01013403          	ld	s0,16(sp)
    80003520:	00813483          	ld	s1,8(sp)
    80003524:	00013903          	ld	s2,0(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret

0000000080003530 <_ZL8producerPv>:

static void producer(void *arg) {
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00113c23          	sd	ra,24(sp)
    80003538:	00813823          	sd	s0,16(sp)
    8000353c:	00913423          	sd	s1,8(sp)
    80003540:	01213023          	sd	s2,0(sp)
    80003544:	02010413          	addi	s0,sp,32
    80003548:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000354c:	00000913          	li	s2,0
    80003550:	00c0006f          	j	8000355c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	e34080e7          	jalr	-460(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000355c:	00008797          	auipc	a5,0x8
    80003560:	6947a783          	lw	a5,1684(a5) # 8000bbf0 <_ZL9threadEnd>
    80003564:	02079e63          	bnez	a5,800035a0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003568:	0004a583          	lw	a1,0(s1)
    8000356c:	0305859b          	addiw	a1,a1,48
    80003570:	0084b503          	ld	a0,8(s1)
    80003574:	00003097          	auipc	ra,0x3
    80003578:	350080e7          	jalr	848(ra) # 800068c4 <_ZN6Buffer3putEi>
        i++;
    8000357c:	0019071b          	addiw	a4,s2,1
    80003580:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003584:	0004a683          	lw	a3,0(s1)
    80003588:	0026979b          	slliw	a5,a3,0x2
    8000358c:	00d787bb          	addw	a5,a5,a3
    80003590:	0017979b          	slliw	a5,a5,0x1
    80003594:	02f767bb          	remw	a5,a4,a5
    80003598:	fc0792e3          	bnez	a5,8000355c <_ZL8producerPv+0x2c>
    8000359c:	fb9ff06f          	j	80003554 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800035a0:	0104b503          	ld	a0,16(s1)
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	f20080e7          	jalr	-224(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	00013903          	ld	s2,0(sp)
    800035bc:	02010113          	addi	sp,sp,32
    800035c0:	00008067          	ret

00000000800035c4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800035c4:	fd010113          	addi	sp,sp,-48
    800035c8:	02113423          	sd	ra,40(sp)
    800035cc:	02813023          	sd	s0,32(sp)
    800035d0:	00913c23          	sd	s1,24(sp)
    800035d4:	01213823          	sd	s2,16(sp)
    800035d8:	01313423          	sd	s3,8(sp)
    800035dc:	03010413          	addi	s0,sp,48
    800035e0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035e4:	00000993          	li	s3,0
    800035e8:	01c0006f          	j	80003604 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	d9c080e7          	jalr	-612(ra) # 80001388 <_Z15thread_dispatchv>
    800035f4:	0500006f          	j	80003644 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800035f8:	00a00513          	li	a0,10
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	008080e7          	jalr	8(ra) # 80001604 <_Z4putcc>
    while (!threadEnd) {
    80003604:	00008797          	auipc	a5,0x8
    80003608:	5ec7a783          	lw	a5,1516(a5) # 8000bbf0 <_ZL9threadEnd>
    8000360c:	06079063          	bnez	a5,8000366c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003610:	00893503          	ld	a0,8(s2)
    80003614:	00003097          	auipc	ra,0x3
    80003618:	340080e7          	jalr	832(ra) # 80006954 <_ZN6Buffer3getEv>
        i++;
    8000361c:	0019849b          	addiw	s1,s3,1
    80003620:	0004899b          	sext.w	s3,s1
        putc(key);
    80003624:	0ff57513          	andi	a0,a0,255
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	fdc080e7          	jalr	-36(ra) # 80001604 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003630:	00092703          	lw	a4,0(s2)
    80003634:	0027179b          	slliw	a5,a4,0x2
    80003638:	00e787bb          	addw	a5,a5,a4
    8000363c:	02f4e7bb          	remw	a5,s1,a5
    80003640:	fa0786e3          	beqz	a5,800035ec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003644:	05000793          	li	a5,80
    80003648:	02f4e4bb          	remw	s1,s1,a5
    8000364c:	fa049ce3          	bnez	s1,80003604 <_ZL8consumerPv+0x40>
    80003650:	fa9ff06f          	j	800035f8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003654:	00893503          	ld	a0,8(s2)
    80003658:	00003097          	auipc	ra,0x3
    8000365c:	2fc080e7          	jalr	764(ra) # 80006954 <_ZN6Buffer3getEv>
        putc(key);
    80003660:	0ff57513          	andi	a0,a0,255
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	fa0080e7          	jalr	-96(ra) # 80001604 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000366c:	00893503          	ld	a0,8(s2)
    80003670:	00003097          	auipc	ra,0x3
    80003674:	370080e7          	jalr	880(ra) # 800069e0 <_ZN6Buffer6getCntEv>
    80003678:	fca04ee3          	bgtz	a0,80003654 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000367c:	01093503          	ld	a0,16(s2)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	e44080e7          	jalr	-444(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    80003688:	02813083          	ld	ra,40(sp)
    8000368c:	02013403          	ld	s0,32(sp)
    80003690:	01813483          	ld	s1,24(sp)
    80003694:	01013903          	ld	s2,16(sp)
    80003698:	00813983          	ld	s3,8(sp)
    8000369c:	03010113          	addi	sp,sp,48
    800036a0:	00008067          	ret

00000000800036a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800036a4:	f9010113          	addi	sp,sp,-112
    800036a8:	06113423          	sd	ra,104(sp)
    800036ac:	06813023          	sd	s0,96(sp)
    800036b0:	04913c23          	sd	s1,88(sp)
    800036b4:	05213823          	sd	s2,80(sp)
    800036b8:	05313423          	sd	s3,72(sp)
    800036bc:	05413023          	sd	s4,64(sp)
    800036c0:	03513c23          	sd	s5,56(sp)
    800036c4:	03613823          	sd	s6,48(sp)
    800036c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800036cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800036d0:	00006517          	auipc	a0,0x6
    800036d4:	a8050513          	addi	a0,a0,-1408 # 80009150 <CONSOLE_STATUS+0x140>
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	220080e7          	jalr	544(ra) # 800058f8 <_Z11printStringPKc>
    getString(input, 30);
    800036e0:	01e00593          	li	a1,30
    800036e4:	fa040493          	addi	s1,s0,-96
    800036e8:	00048513          	mv	a0,s1
    800036ec:	00002097          	auipc	ra,0x2
    800036f0:	294080e7          	jalr	660(ra) # 80005980 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800036f4:	00048513          	mv	a0,s1
    800036f8:	00002097          	auipc	ra,0x2
    800036fc:	360080e7          	jalr	864(ra) # 80005a58 <_Z11stringToIntPKc>
    80003700:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003704:	00006517          	auipc	a0,0x6
    80003708:	a6c50513          	addi	a0,a0,-1428 # 80009170 <CONSOLE_STATUS+0x160>
    8000370c:	00002097          	auipc	ra,0x2
    80003710:	1ec080e7          	jalr	492(ra) # 800058f8 <_Z11printStringPKc>
    getString(input, 30);
    80003714:	01e00593          	li	a1,30
    80003718:	00048513          	mv	a0,s1
    8000371c:	00002097          	auipc	ra,0x2
    80003720:	264080e7          	jalr	612(ra) # 80005980 <_Z9getStringPci>
    n = stringToInt(input);
    80003724:	00048513          	mv	a0,s1
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	330080e7          	jalr	816(ra) # 80005a58 <_Z11stringToIntPKc>
    80003730:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003734:	00006517          	auipc	a0,0x6
    80003738:	a5c50513          	addi	a0,a0,-1444 # 80009190 <CONSOLE_STATUS+0x180>
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	1bc080e7          	jalr	444(ra) # 800058f8 <_Z11printStringPKc>
    80003744:	00000613          	li	a2,0
    80003748:	00a00593          	li	a1,10
    8000374c:	00090513          	mv	a0,s2
    80003750:	00002097          	auipc	ra,0x2
    80003754:	358080e7          	jalr	856(ra) # 80005aa8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003758:	00006517          	auipc	a0,0x6
    8000375c:	a5050513          	addi	a0,a0,-1456 # 800091a8 <CONSOLE_STATUS+0x198>
    80003760:	00002097          	auipc	ra,0x2
    80003764:	198080e7          	jalr	408(ra) # 800058f8 <_Z11printStringPKc>
    80003768:	00000613          	li	a2,0
    8000376c:	00a00593          	li	a1,10
    80003770:	00048513          	mv	a0,s1
    80003774:	00002097          	auipc	ra,0x2
    80003778:	334080e7          	jalr	820(ra) # 80005aa8 <_Z8printIntiii>
    printString(".\n");
    8000377c:	00006517          	auipc	a0,0x6
    80003780:	a4450513          	addi	a0,a0,-1468 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003784:	00002097          	auipc	ra,0x2
    80003788:	174080e7          	jalr	372(ra) # 800058f8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000378c:	0324c463          	blt	s1,s2,800037b4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003790:	03205c63          	blez	s2,800037c8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003794:	03800513          	li	a0,56
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	1dc080e7          	jalr	476(ra) # 80002974 <_Znwm>
    800037a0:	00050a13          	mv	s4,a0
    800037a4:	00048593          	mv	a1,s1
    800037a8:	00003097          	auipc	ra,0x3
    800037ac:	080080e7          	jalr	128(ra) # 80006828 <_ZN6BufferC1Ei>
    800037b0:	0300006f          	j	800037e0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800037b4:	00006517          	auipc	a0,0x6
    800037b8:	a1450513          	addi	a0,a0,-1516 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	13c080e7          	jalr	316(ra) # 800058f8 <_Z11printStringPKc>
        return;
    800037c4:	0140006f          	j	800037d8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800037c8:	00006517          	auipc	a0,0x6
    800037cc:	a4050513          	addi	a0,a0,-1472 # 80009208 <CONSOLE_STATUS+0x1f8>
    800037d0:	00002097          	auipc	ra,0x2
    800037d4:	128080e7          	jalr	296(ra) # 800058f8 <_Z11printStringPKc>
        return;
    800037d8:	000b0113          	mv	sp,s6
    800037dc:	1500006f          	j	8000392c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800037e0:	00000593          	li	a1,0
    800037e4:	00008517          	auipc	a0,0x8
    800037e8:	41450513          	addi	a0,a0,1044 # 8000bbf8 <_ZL10waitForAll>
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	c14080e7          	jalr	-1004(ra) # 80001400 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800037f4:	00391793          	slli	a5,s2,0x3
    800037f8:	00f78793          	addi	a5,a5,15
    800037fc:	ff07f793          	andi	a5,a5,-16
    80003800:	40f10133          	sub	sp,sp,a5
    80003804:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003808:	0019071b          	addiw	a4,s2,1
    8000380c:	00171793          	slli	a5,a4,0x1
    80003810:	00e787b3          	add	a5,a5,a4
    80003814:	00379793          	slli	a5,a5,0x3
    80003818:	00f78793          	addi	a5,a5,15
    8000381c:	ff07f793          	andi	a5,a5,-16
    80003820:	40f10133          	sub	sp,sp,a5
    80003824:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003828:	00191613          	slli	a2,s2,0x1
    8000382c:	012607b3          	add	a5,a2,s2
    80003830:	00379793          	slli	a5,a5,0x3
    80003834:	00f987b3          	add	a5,s3,a5
    80003838:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000383c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003840:	00008717          	auipc	a4,0x8
    80003844:	3b873703          	ld	a4,952(a4) # 8000bbf8 <_ZL10waitForAll>
    80003848:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000384c:	00078613          	mv	a2,a5
    80003850:	00000597          	auipc	a1,0x0
    80003854:	d7458593          	addi	a1,a1,-652 # 800035c4 <_ZL8consumerPv>
    80003858:	f9840513          	addi	a0,s0,-104
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	a7c080e7          	jalr	-1412(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003864:	00000493          	li	s1,0
    80003868:	0280006f          	j	80003890 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000386c:	00000597          	auipc	a1,0x0
    80003870:	c1458593          	addi	a1,a1,-1004 # 80003480 <_ZL16producerKeyboardPv>
                      data + i);
    80003874:	00179613          	slli	a2,a5,0x1
    80003878:	00f60633          	add	a2,a2,a5
    8000387c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003880:	00c98633          	add	a2,s3,a2
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	a54080e7          	jalr	-1452(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000388c:	0014849b          	addiw	s1,s1,1
    80003890:	0524d263          	bge	s1,s2,800038d4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003894:	00149793          	slli	a5,s1,0x1
    80003898:	009787b3          	add	a5,a5,s1
    8000389c:	00379793          	slli	a5,a5,0x3
    800038a0:	00f987b3          	add	a5,s3,a5
    800038a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800038a8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800038ac:	00008717          	auipc	a4,0x8
    800038b0:	34c73703          	ld	a4,844(a4) # 8000bbf8 <_ZL10waitForAll>
    800038b4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800038b8:	00048793          	mv	a5,s1
    800038bc:	00349513          	slli	a0,s1,0x3
    800038c0:	00aa8533          	add	a0,s5,a0
    800038c4:	fa9054e3          	blez	s1,8000386c <_Z22producerConsumer_C_APIv+0x1c8>
    800038c8:	00000597          	auipc	a1,0x0
    800038cc:	c6858593          	addi	a1,a1,-920 # 80003530 <_ZL8producerPv>
    800038d0:	fa5ff06f          	j	80003874 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	ab4080e7          	jalr	-1356(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800038dc:	00000493          	li	s1,0
    800038e0:	00994e63          	blt	s2,s1,800038fc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800038e4:	00008517          	auipc	a0,0x8
    800038e8:	31453503          	ld	a0,788(a0) # 8000bbf8 <_ZL10waitForAll>
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	b98080e7          	jalr	-1128(ra) # 80001484 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800038f4:	0014849b          	addiw	s1,s1,1
    800038f8:	fe9ff06f          	j	800038e0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800038fc:	00008517          	auipc	a0,0x8
    80003900:	2fc53503          	ld	a0,764(a0) # 8000bbf8 <_ZL10waitForAll>
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	b40080e7          	jalr	-1216(ra) # 80001444 <_Z9sem_closeP4_sem>
    delete buffer;
    8000390c:	000a0e63          	beqz	s4,80003928 <_Z22producerConsumer_C_APIv+0x284>
    80003910:	000a0513          	mv	a0,s4
    80003914:	00003097          	auipc	ra,0x3
    80003918:	154080e7          	jalr	340(ra) # 80006a68 <_ZN6BufferD1Ev>
    8000391c:	000a0513          	mv	a0,s4
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	0c4080e7          	jalr	196(ra) # 800029e4 <_ZdlPv>
    80003928:	000b0113          	mv	sp,s6

}
    8000392c:	f9040113          	addi	sp,s0,-112
    80003930:	06813083          	ld	ra,104(sp)
    80003934:	06013403          	ld	s0,96(sp)
    80003938:	05813483          	ld	s1,88(sp)
    8000393c:	05013903          	ld	s2,80(sp)
    80003940:	04813983          	ld	s3,72(sp)
    80003944:	04013a03          	ld	s4,64(sp)
    80003948:	03813a83          	ld	s5,56(sp)
    8000394c:	03013b03          	ld	s6,48(sp)
    80003950:	07010113          	addi	sp,sp,112
    80003954:	00008067          	ret
    80003958:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000395c:	000a0513          	mv	a0,s4
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	084080e7          	jalr	132(ra) # 800029e4 <_ZdlPv>
    80003968:	00048513          	mv	a0,s1
    8000396c:	00009097          	auipc	ra,0x9
    80003970:	39c080e7          	jalr	924(ra) # 8000cd08 <_Unwind_Resume>

0000000080003974 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003974:	fe010113          	addi	sp,sp,-32
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00913423          	sd	s1,8(sp)
    80003984:	01213023          	sd	s2,0(sp)
    80003988:	02010413          	addi	s0,sp,32
    8000398c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003990:	00100793          	li	a5,1
    80003994:	02a7f863          	bgeu	a5,a0,800039c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003998:	00a00793          	li	a5,10
    8000399c:	02f577b3          	remu	a5,a0,a5
    800039a0:	02078e63          	beqz	a5,800039dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039a4:	fff48513          	addi	a0,s1,-1
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	fcc080e7          	jalr	-52(ra) # 80003974 <_ZL9fibonaccim>
    800039b0:	00050913          	mv	s2,a0
    800039b4:	ffe48513          	addi	a0,s1,-2
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	fbc080e7          	jalr	-68(ra) # 80003974 <_ZL9fibonaccim>
    800039c0:	00a90533          	add	a0,s2,a0
}
    800039c4:	01813083          	ld	ra,24(sp)
    800039c8:	01013403          	ld	s0,16(sp)
    800039cc:	00813483          	ld	s1,8(sp)
    800039d0:	00013903          	ld	s2,0(sp)
    800039d4:	02010113          	addi	sp,sp,32
    800039d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	9ac080e7          	jalr	-1620(ra) # 80001388 <_Z15thread_dispatchv>
    800039e4:	fc1ff06f          	j	800039a4 <_ZL9fibonaccim+0x30>

00000000800039e8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800039e8:	fe010113          	addi	sp,sp,-32
    800039ec:	00113c23          	sd	ra,24(sp)
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00913423          	sd	s1,8(sp)
    800039f8:	01213023          	sd	s2,0(sp)
    800039fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a00:	00000913          	li	s2,0
    80003a04:	0380006f          	j	80003a3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	980080e7          	jalr	-1664(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a10:	00148493          	addi	s1,s1,1
    80003a14:	000027b7          	lui	a5,0x2
    80003a18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a1c:	0097ee63          	bltu	a5,s1,80003a38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a20:	00000713          	li	a4,0
    80003a24:	000077b7          	lui	a5,0x7
    80003a28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a2c:	fce7eee3          	bltu	a5,a4,80003a08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a30:	00170713          	addi	a4,a4,1
    80003a34:	ff1ff06f          	j	80003a24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a38:	00190913          	addi	s2,s2,1
    80003a3c:	00900793          	li	a5,9
    80003a40:	0527e063          	bltu	a5,s2,80003a80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003a44:	00005517          	auipc	a0,0x5
    80003a48:	7f450513          	addi	a0,a0,2036 # 80009238 <CONSOLE_STATUS+0x228>
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	eac080e7          	jalr	-340(ra) # 800058f8 <_Z11printStringPKc>
    80003a54:	00000613          	li	a2,0
    80003a58:	00a00593          	li	a1,10
    80003a5c:	0009051b          	sext.w	a0,s2
    80003a60:	00002097          	auipc	ra,0x2
    80003a64:	048080e7          	jalr	72(ra) # 80005aa8 <_Z8printIntiii>
    80003a68:	00006517          	auipc	a0,0x6
    80003a6c:	a2050513          	addi	a0,a0,-1504 # 80009488 <CONSOLE_STATUS+0x478>
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	e88080e7          	jalr	-376(ra) # 800058f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a78:	00000493          	li	s1,0
    80003a7c:	f99ff06f          	j	80003a14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003a80:	00005517          	auipc	a0,0x5
    80003a84:	7c050513          	addi	a0,a0,1984 # 80009240 <CONSOLE_STATUS+0x230>
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	e70080e7          	jalr	-400(ra) # 800058f8 <_Z11printStringPKc>
    finishedA = true;
    80003a90:	00100793          	li	a5,1
    80003a94:	00008717          	auipc	a4,0x8
    80003a98:	16f70623          	sb	a5,364(a4) # 8000bc00 <_ZL9finishedA>
}
    80003a9c:	01813083          	ld	ra,24(sp)
    80003aa0:	01013403          	ld	s0,16(sp)
    80003aa4:	00813483          	ld	s1,8(sp)
    80003aa8:	00013903          	ld	s2,0(sp)
    80003aac:	02010113          	addi	sp,sp,32
    80003ab0:	00008067          	ret

0000000080003ab4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ab4:	fe010113          	addi	sp,sp,-32
    80003ab8:	00113c23          	sd	ra,24(sp)
    80003abc:	00813823          	sd	s0,16(sp)
    80003ac0:	00913423          	sd	s1,8(sp)
    80003ac4:	01213023          	sd	s2,0(sp)
    80003ac8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003acc:	00000913          	li	s2,0
    80003ad0:	0380006f          	j	80003b08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	8b4080e7          	jalr	-1868(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003adc:	00148493          	addi	s1,s1,1
    80003ae0:	000027b7          	lui	a5,0x2
    80003ae4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ae8:	0097ee63          	bltu	a5,s1,80003b04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003aec:	00000713          	li	a4,0
    80003af0:	000077b7          	lui	a5,0x7
    80003af4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003af8:	fce7eee3          	bltu	a5,a4,80003ad4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003afc:	00170713          	addi	a4,a4,1
    80003b00:	ff1ff06f          	j	80003af0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b04:	00190913          	addi	s2,s2,1
    80003b08:	00f00793          	li	a5,15
    80003b0c:	0527e063          	bltu	a5,s2,80003b4c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b10:	00005517          	auipc	a0,0x5
    80003b14:	74050513          	addi	a0,a0,1856 # 80009250 <CONSOLE_STATUS+0x240>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	de0080e7          	jalr	-544(ra) # 800058f8 <_Z11printStringPKc>
    80003b20:	00000613          	li	a2,0
    80003b24:	00a00593          	li	a1,10
    80003b28:	0009051b          	sext.w	a0,s2
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	f7c080e7          	jalr	-132(ra) # 80005aa8 <_Z8printIntiii>
    80003b34:	00006517          	auipc	a0,0x6
    80003b38:	95450513          	addi	a0,a0,-1708 # 80009488 <CONSOLE_STATUS+0x478>
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	dbc080e7          	jalr	-580(ra) # 800058f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b44:	00000493          	li	s1,0
    80003b48:	f99ff06f          	j	80003ae0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003b4c:	00005517          	auipc	a0,0x5
    80003b50:	70c50513          	addi	a0,a0,1804 # 80009258 <CONSOLE_STATUS+0x248>
    80003b54:	00002097          	auipc	ra,0x2
    80003b58:	da4080e7          	jalr	-604(ra) # 800058f8 <_Z11printStringPKc>
    finishedB = true;
    80003b5c:	00100793          	li	a5,1
    80003b60:	00008717          	auipc	a4,0x8
    80003b64:	0af700a3          	sb	a5,161(a4) # 8000bc01 <_ZL9finishedB>
    thread_dispatch();
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	820080e7          	jalr	-2016(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	00013903          	ld	s2,0(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret

0000000080003b88 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003b88:	fe010113          	addi	sp,sp,-32
    80003b8c:	00113c23          	sd	ra,24(sp)
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00913423          	sd	s1,8(sp)
    80003b98:	01213023          	sd	s2,0(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ba0:	00000493          	li	s1,0
    80003ba4:	0400006f          	j	80003be4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	6c050513          	addi	a0,a0,1728 # 80009268 <CONSOLE_STATUS+0x258>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	d48080e7          	jalr	-696(ra) # 800058f8 <_Z11printStringPKc>
    80003bb8:	00000613          	li	a2,0
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	ee4080e7          	jalr	-284(ra) # 80005aa8 <_Z8printIntiii>
    80003bcc:	00006517          	auipc	a0,0x6
    80003bd0:	8bc50513          	addi	a0,a0,-1860 # 80009488 <CONSOLE_STATUS+0x478>
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	d24080e7          	jalr	-732(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003bdc:	0014849b          	addiw	s1,s1,1
    80003be0:	0ff4f493          	andi	s1,s1,255
    80003be4:	00200793          	li	a5,2
    80003be8:	fc97f0e3          	bgeu	a5,s1,80003ba8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003bec:	00005517          	auipc	a0,0x5
    80003bf0:	68450513          	addi	a0,a0,1668 # 80009270 <CONSOLE_STATUS+0x260>
    80003bf4:	00002097          	auipc	ra,0x2
    80003bf8:	d04080e7          	jalr	-764(ra) # 800058f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003bfc:	00700313          	li	t1,7
    thread_dispatch();
    80003c00:	ffffd097          	auipc	ra,0xffffd
    80003c04:	788080e7          	jalr	1928(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c08:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c0c:	00005517          	auipc	a0,0x5
    80003c10:	67450513          	addi	a0,a0,1652 # 80009280 <CONSOLE_STATUS+0x270>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	ce4080e7          	jalr	-796(ra) # 800058f8 <_Z11printStringPKc>
    80003c1c:	00000613          	li	a2,0
    80003c20:	00a00593          	li	a1,10
    80003c24:	0009051b          	sext.w	a0,s2
    80003c28:	00002097          	auipc	ra,0x2
    80003c2c:	e80080e7          	jalr	-384(ra) # 80005aa8 <_Z8printIntiii>
    80003c30:	00006517          	auipc	a0,0x6
    80003c34:	85850513          	addi	a0,a0,-1960 # 80009488 <CONSOLE_STATUS+0x478>
    80003c38:	00002097          	auipc	ra,0x2
    80003c3c:	cc0080e7          	jalr	-832(ra) # 800058f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003c40:	00c00513          	li	a0,12
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	d30080e7          	jalr	-720(ra) # 80003974 <_ZL9fibonaccim>
    80003c4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	63850513          	addi	a0,a0,1592 # 80009288 <CONSOLE_STATUS+0x278>
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	ca0080e7          	jalr	-864(ra) # 800058f8 <_Z11printStringPKc>
    80003c60:	00000613          	li	a2,0
    80003c64:	00a00593          	li	a1,10
    80003c68:	0009051b          	sext.w	a0,s2
    80003c6c:	00002097          	auipc	ra,0x2
    80003c70:	e3c080e7          	jalr	-452(ra) # 80005aa8 <_Z8printIntiii>
    80003c74:	00006517          	auipc	a0,0x6
    80003c78:	81450513          	addi	a0,a0,-2028 # 80009488 <CONSOLE_STATUS+0x478>
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	c7c080e7          	jalr	-900(ra) # 800058f8 <_Z11printStringPKc>
    80003c84:	0400006f          	j	80003cc4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c88:	00005517          	auipc	a0,0x5
    80003c8c:	5e050513          	addi	a0,a0,1504 # 80009268 <CONSOLE_STATUS+0x258>
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	c68080e7          	jalr	-920(ra) # 800058f8 <_Z11printStringPKc>
    80003c98:	00000613          	li	a2,0
    80003c9c:	00a00593          	li	a1,10
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	e04080e7          	jalr	-508(ra) # 80005aa8 <_Z8printIntiii>
    80003cac:	00005517          	auipc	a0,0x5
    80003cb0:	7dc50513          	addi	a0,a0,2012 # 80009488 <CONSOLE_STATUS+0x478>
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	c44080e7          	jalr	-956(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003cbc:	0014849b          	addiw	s1,s1,1
    80003cc0:	0ff4f493          	andi	s1,s1,255
    80003cc4:	00500793          	li	a5,5
    80003cc8:	fc97f0e3          	bgeu	a5,s1,80003c88 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003ccc:	00005517          	auipc	a0,0x5
    80003cd0:	57450513          	addi	a0,a0,1396 # 80009240 <CONSOLE_STATUS+0x230>
    80003cd4:	00002097          	auipc	ra,0x2
    80003cd8:	c24080e7          	jalr	-988(ra) # 800058f8 <_Z11printStringPKc>
    finishedC = true;
    80003cdc:	00100793          	li	a5,1
    80003ce0:	00008717          	auipc	a4,0x8
    80003ce4:	f2f70123          	sb	a5,-222(a4) # 8000bc02 <_ZL9finishedC>
    thread_dispatch();
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	6a0080e7          	jalr	1696(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003cf0:	01813083          	ld	ra,24(sp)
    80003cf4:	01013403          	ld	s0,16(sp)
    80003cf8:	00813483          	ld	s1,8(sp)
    80003cfc:	00013903          	ld	s2,0(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret

0000000080003d08 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d08:	fe010113          	addi	sp,sp,-32
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00913423          	sd	s1,8(sp)
    80003d18:	01213023          	sd	s2,0(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d20:	00a00493          	li	s1,10
    80003d24:	0400006f          	j	80003d64 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d28:	00005517          	auipc	a0,0x5
    80003d2c:	57050513          	addi	a0,a0,1392 # 80009298 <CONSOLE_STATUS+0x288>
    80003d30:	00002097          	auipc	ra,0x2
    80003d34:	bc8080e7          	jalr	-1080(ra) # 800058f8 <_Z11printStringPKc>
    80003d38:	00000613          	li	a2,0
    80003d3c:	00a00593          	li	a1,10
    80003d40:	00048513          	mv	a0,s1
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	d64080e7          	jalr	-668(ra) # 80005aa8 <_Z8printIntiii>
    80003d4c:	00005517          	auipc	a0,0x5
    80003d50:	73c50513          	addi	a0,a0,1852 # 80009488 <CONSOLE_STATUS+0x478>
    80003d54:	00002097          	auipc	ra,0x2
    80003d58:	ba4080e7          	jalr	-1116(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003d5c:	0014849b          	addiw	s1,s1,1
    80003d60:	0ff4f493          	andi	s1,s1,255
    80003d64:	00c00793          	li	a5,12
    80003d68:	fc97f0e3          	bgeu	a5,s1,80003d28 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003d6c:	00005517          	auipc	a0,0x5
    80003d70:	53450513          	addi	a0,a0,1332 # 800092a0 <CONSOLE_STATUS+0x290>
    80003d74:	00002097          	auipc	ra,0x2
    80003d78:	b84080e7          	jalr	-1148(ra) # 800058f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003d7c:	00500313          	li	t1,5
    thread_dispatch();
    80003d80:	ffffd097          	auipc	ra,0xffffd
    80003d84:	608080e7          	jalr	1544(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d88:	01000513          	li	a0,16
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	be8080e7          	jalr	-1048(ra) # 80003974 <_ZL9fibonaccim>
    80003d94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d98:	00005517          	auipc	a0,0x5
    80003d9c:	51850513          	addi	a0,a0,1304 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003da0:	00002097          	auipc	ra,0x2
    80003da4:	b58080e7          	jalr	-1192(ra) # 800058f8 <_Z11printStringPKc>
    80003da8:	00000613          	li	a2,0
    80003dac:	00a00593          	li	a1,10
    80003db0:	0009051b          	sext.w	a0,s2
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	cf4080e7          	jalr	-780(ra) # 80005aa8 <_Z8printIntiii>
    80003dbc:	00005517          	auipc	a0,0x5
    80003dc0:	6cc50513          	addi	a0,a0,1740 # 80009488 <CONSOLE_STATUS+0x478>
    80003dc4:	00002097          	auipc	ra,0x2
    80003dc8:	b34080e7          	jalr	-1228(ra) # 800058f8 <_Z11printStringPKc>
    80003dcc:	0400006f          	j	80003e0c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003dd0:	00005517          	auipc	a0,0x5
    80003dd4:	4c850513          	addi	a0,a0,1224 # 80009298 <CONSOLE_STATUS+0x288>
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	b20080e7          	jalr	-1248(ra) # 800058f8 <_Z11printStringPKc>
    80003de0:	00000613          	li	a2,0
    80003de4:	00a00593          	li	a1,10
    80003de8:	00048513          	mv	a0,s1
    80003dec:	00002097          	auipc	ra,0x2
    80003df0:	cbc080e7          	jalr	-836(ra) # 80005aa8 <_Z8printIntiii>
    80003df4:	00005517          	auipc	a0,0x5
    80003df8:	69450513          	addi	a0,a0,1684 # 80009488 <CONSOLE_STATUS+0x478>
    80003dfc:	00002097          	auipc	ra,0x2
    80003e00:	afc080e7          	jalr	-1284(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e04:	0014849b          	addiw	s1,s1,1
    80003e08:	0ff4f493          	andi	s1,s1,255
    80003e0c:	00f00793          	li	a5,15
    80003e10:	fc97f0e3          	bgeu	a5,s1,80003dd0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e14:	00005517          	auipc	a0,0x5
    80003e18:	4ac50513          	addi	a0,a0,1196 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003e1c:	00002097          	auipc	ra,0x2
    80003e20:	adc080e7          	jalr	-1316(ra) # 800058f8 <_Z11printStringPKc>
    finishedD = true;
    80003e24:	00100793          	li	a5,1
    80003e28:	00008717          	auipc	a4,0x8
    80003e2c:	dcf70da3          	sb	a5,-549(a4) # 8000bc03 <_ZL9finishedD>
    thread_dispatch();
    80003e30:	ffffd097          	auipc	ra,0xffffd
    80003e34:	558080e7          	jalr	1368(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003e38:	01813083          	ld	ra,24(sp)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	00813483          	ld	s1,8(sp)
    80003e44:	00013903          	ld	s2,0(sp)
    80003e48:	02010113          	addi	sp,sp,32
    80003e4c:	00008067          	ret

0000000080003e50 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003e50:	fc010113          	addi	sp,sp,-64
    80003e54:	02113c23          	sd	ra,56(sp)
    80003e58:	02813823          	sd	s0,48(sp)
    80003e5c:	02913423          	sd	s1,40(sp)
    80003e60:	03213023          	sd	s2,32(sp)
    80003e64:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003e68:	02000513          	li	a0,32
    80003e6c:	fffff097          	auipc	ra,0xfffff
    80003e70:	b08080e7          	jalr	-1272(ra) # 80002974 <_Znwm>
    80003e74:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	d38080e7          	jalr	-712(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80003e80:	00008797          	auipc	a5,0x8
    80003e84:	ab078793          	addi	a5,a5,-1360 # 8000b930 <_ZTV7WorkerA+0x10>
    80003e88:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003e8c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003e90:	00005517          	auipc	a0,0x5
    80003e94:	44050513          	addi	a0,a0,1088 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003e98:	00002097          	auipc	ra,0x2
    80003e9c:	a60080e7          	jalr	-1440(ra) # 800058f8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ea0:	02000513          	li	a0,32
    80003ea4:	fffff097          	auipc	ra,0xfffff
    80003ea8:	ad0080e7          	jalr	-1328(ra) # 80002974 <_Znwm>
    80003eac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003eb0:	fffff097          	auipc	ra,0xfffff
    80003eb4:	d00080e7          	jalr	-768(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80003eb8:	00008797          	auipc	a5,0x8
    80003ebc:	aa078793          	addi	a5,a5,-1376 # 8000b958 <_ZTV7WorkerB+0x10>
    80003ec0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003ec4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003ec8:	00005517          	auipc	a0,0x5
    80003ecc:	42050513          	addi	a0,a0,1056 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003ed0:	00002097          	auipc	ra,0x2
    80003ed4:	a28080e7          	jalr	-1496(ra) # 800058f8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003ed8:	02000513          	li	a0,32
    80003edc:	fffff097          	auipc	ra,0xfffff
    80003ee0:	a98080e7          	jalr	-1384(ra) # 80002974 <_Znwm>
    80003ee4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	cc8080e7          	jalr	-824(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80003ef0:	00008797          	auipc	a5,0x8
    80003ef4:	a9078793          	addi	a5,a5,-1392 # 8000b980 <_ZTV7WorkerC+0x10>
    80003ef8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003efc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f00:	00005517          	auipc	a0,0x5
    80003f04:	40050513          	addi	a0,a0,1024 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003f08:	00002097          	auipc	ra,0x2
    80003f0c:	9f0080e7          	jalr	-1552(ra) # 800058f8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f10:	02000513          	li	a0,32
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	a60080e7          	jalr	-1440(ra) # 80002974 <_Znwm>
    80003f1c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	c90080e7          	jalr	-880(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80003f28:	00008797          	auipc	a5,0x8
    80003f2c:	a8078793          	addi	a5,a5,-1408 # 8000b9a8 <_ZTV7WorkerD+0x10>
    80003f30:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003f34:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	3e050513          	addi	a0,a0,992 # 80009318 <CONSOLE_STATUS+0x308>
    80003f40:	00002097          	auipc	ra,0x2
    80003f44:	9b8080e7          	jalr	-1608(ra) # 800058f8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003f48:	00000493          	li	s1,0
    80003f4c:	00300793          	li	a5,3
    80003f50:	0297c663          	blt	a5,s1,80003f7c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003f54:	00349793          	slli	a5,s1,0x3
    80003f58:	fe040713          	addi	a4,s0,-32
    80003f5c:	00f707b3          	add	a5,a4,a5
    80003f60:	fe07b503          	ld	a0,-32(a5)
    80003f64:	fffff097          	auipc	ra,0xfffff
    80003f68:	bc8080e7          	jalr	-1080(ra) # 80002b2c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003f6c:	0014849b          	addiw	s1,s1,1
    80003f70:	fddff06f          	j	80003f4c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	bec080e7          	jalr	-1044(ra) # 80002b60 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f7c:	00008797          	auipc	a5,0x8
    80003f80:	c847c783          	lbu	a5,-892(a5) # 8000bc00 <_ZL9finishedA>
    80003f84:	fe0788e3          	beqz	a5,80003f74 <_Z20Threads_CPP_API_testv+0x124>
    80003f88:	00008797          	auipc	a5,0x8
    80003f8c:	c797c783          	lbu	a5,-903(a5) # 8000bc01 <_ZL9finishedB>
    80003f90:	fe0782e3          	beqz	a5,80003f74 <_Z20Threads_CPP_API_testv+0x124>
    80003f94:	00008797          	auipc	a5,0x8
    80003f98:	c6e7c783          	lbu	a5,-914(a5) # 8000bc02 <_ZL9finishedC>
    80003f9c:	fc078ce3          	beqz	a5,80003f74 <_Z20Threads_CPP_API_testv+0x124>
    80003fa0:	00008797          	auipc	a5,0x8
    80003fa4:	c637c783          	lbu	a5,-925(a5) # 8000bc03 <_ZL9finishedD>
    80003fa8:	fc0786e3          	beqz	a5,80003f74 <_Z20Threads_CPP_API_testv+0x124>
    80003fac:	fc040493          	addi	s1,s0,-64
    80003fb0:	0080006f          	j	80003fb8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003fb4:	00848493          	addi	s1,s1,8
    80003fb8:	fe040793          	addi	a5,s0,-32
    80003fbc:	08f48663          	beq	s1,a5,80004048 <_Z20Threads_CPP_API_testv+0x1f8>
    80003fc0:	0004b503          	ld	a0,0(s1)
    80003fc4:	fe0508e3          	beqz	a0,80003fb4 <_Z20Threads_CPP_API_testv+0x164>
    80003fc8:	00053783          	ld	a5,0(a0)
    80003fcc:	0087b783          	ld	a5,8(a5)
    80003fd0:	000780e7          	jalr	a5
    80003fd4:	fe1ff06f          	j	80003fb4 <_Z20Threads_CPP_API_testv+0x164>
    80003fd8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003fdc:	00048513          	mv	a0,s1
    80003fe0:	fffff097          	auipc	ra,0xfffff
    80003fe4:	a04080e7          	jalr	-1532(ra) # 800029e4 <_ZdlPv>
    80003fe8:	00090513          	mv	a0,s2
    80003fec:	00009097          	auipc	ra,0x9
    80003ff0:	d1c080e7          	jalr	-740(ra) # 8000cd08 <_Unwind_Resume>
    80003ff4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003ff8:	00048513          	mv	a0,s1
    80003ffc:	fffff097          	auipc	ra,0xfffff
    80004000:	9e8080e7          	jalr	-1560(ra) # 800029e4 <_ZdlPv>
    80004004:	00090513          	mv	a0,s2
    80004008:	00009097          	auipc	ra,0x9
    8000400c:	d00080e7          	jalr	-768(ra) # 8000cd08 <_Unwind_Resume>
    80004010:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004014:	00048513          	mv	a0,s1
    80004018:	fffff097          	auipc	ra,0xfffff
    8000401c:	9cc080e7          	jalr	-1588(ra) # 800029e4 <_ZdlPv>
    80004020:	00090513          	mv	a0,s2
    80004024:	00009097          	auipc	ra,0x9
    80004028:	ce4080e7          	jalr	-796(ra) # 8000cd08 <_Unwind_Resume>
    8000402c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004030:	00048513          	mv	a0,s1
    80004034:	fffff097          	auipc	ra,0xfffff
    80004038:	9b0080e7          	jalr	-1616(ra) # 800029e4 <_ZdlPv>
    8000403c:	00090513          	mv	a0,s2
    80004040:	00009097          	auipc	ra,0x9
    80004044:	cc8080e7          	jalr	-824(ra) # 8000cd08 <_Unwind_Resume>
}
    80004048:	03813083          	ld	ra,56(sp)
    8000404c:	03013403          	ld	s0,48(sp)
    80004050:	02813483          	ld	s1,40(sp)
    80004054:	02013903          	ld	s2,32(sp)
    80004058:	04010113          	addi	sp,sp,64
    8000405c:	00008067          	ret

0000000080004060 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00113423          	sd	ra,8(sp)
    80004068:	00813023          	sd	s0,0(sp)
    8000406c:	01010413          	addi	s0,sp,16
    80004070:	00008797          	auipc	a5,0x8
    80004074:	8c078793          	addi	a5,a5,-1856 # 8000b930 <_ZTV7WorkerA+0x10>
    80004078:	00f53023          	sd	a5,0(a0)
    8000407c:	fffff097          	auipc	ra,0xfffff
    80004080:	990080e7          	jalr	-1648(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004084:	00813083          	ld	ra,8(sp)
    80004088:	00013403          	ld	s0,0(sp)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <_ZN7WorkerAD0Ev>:
    80004094:	fe010113          	addi	sp,sp,-32
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	00813823          	sd	s0,16(sp)
    800040a0:	00913423          	sd	s1,8(sp)
    800040a4:	02010413          	addi	s0,sp,32
    800040a8:	00050493          	mv	s1,a0
    800040ac:	00008797          	auipc	a5,0x8
    800040b0:	88478793          	addi	a5,a5,-1916 # 8000b930 <_ZTV7WorkerA+0x10>
    800040b4:	00f53023          	sd	a5,0(a0)
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	954080e7          	jalr	-1708(ra) # 80002a0c <_ZN6ThreadD1Ev>
    800040c0:	00048513          	mv	a0,s1
    800040c4:	fffff097          	auipc	ra,0xfffff
    800040c8:	920080e7          	jalr	-1760(ra) # 800029e4 <_ZdlPv>
    800040cc:	01813083          	ld	ra,24(sp)
    800040d0:	01013403          	ld	s0,16(sp)
    800040d4:	00813483          	ld	s1,8(sp)
    800040d8:	02010113          	addi	sp,sp,32
    800040dc:	00008067          	ret

00000000800040e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800040e0:	ff010113          	addi	sp,sp,-16
    800040e4:	00113423          	sd	ra,8(sp)
    800040e8:	00813023          	sd	s0,0(sp)
    800040ec:	01010413          	addi	s0,sp,16
    800040f0:	00008797          	auipc	a5,0x8
    800040f4:	86878793          	addi	a5,a5,-1944 # 8000b958 <_ZTV7WorkerB+0x10>
    800040f8:	00f53023          	sd	a5,0(a0)
    800040fc:	fffff097          	auipc	ra,0xfffff
    80004100:	910080e7          	jalr	-1776(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004104:	00813083          	ld	ra,8(sp)
    80004108:	00013403          	ld	s0,0(sp)
    8000410c:	01010113          	addi	sp,sp,16
    80004110:	00008067          	ret

0000000080004114 <_ZN7WorkerBD0Ev>:
    80004114:	fe010113          	addi	sp,sp,-32
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	00813823          	sd	s0,16(sp)
    80004120:	00913423          	sd	s1,8(sp)
    80004124:	02010413          	addi	s0,sp,32
    80004128:	00050493          	mv	s1,a0
    8000412c:	00008797          	auipc	a5,0x8
    80004130:	82c78793          	addi	a5,a5,-2004 # 8000b958 <_ZTV7WorkerB+0x10>
    80004134:	00f53023          	sd	a5,0(a0)
    80004138:	fffff097          	auipc	ra,0xfffff
    8000413c:	8d4080e7          	jalr	-1836(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004140:	00048513          	mv	a0,s1
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	8a0080e7          	jalr	-1888(ra) # 800029e4 <_ZdlPv>
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	00008797          	auipc	a5,0x8
    80004174:	81078793          	addi	a5,a5,-2032 # 8000b980 <_ZTV7WorkerC+0x10>
    80004178:	00f53023          	sd	a5,0(a0)
    8000417c:	fffff097          	auipc	ra,0xfffff
    80004180:	890080e7          	jalr	-1904(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004184:	00813083          	ld	ra,8(sp)
    80004188:	00013403          	ld	s0,0(sp)
    8000418c:	01010113          	addi	sp,sp,16
    80004190:	00008067          	ret

0000000080004194 <_ZN7WorkerCD0Ev>:
    80004194:	fe010113          	addi	sp,sp,-32
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	00813823          	sd	s0,16(sp)
    800041a0:	00913423          	sd	s1,8(sp)
    800041a4:	02010413          	addi	s0,sp,32
    800041a8:	00050493          	mv	s1,a0
    800041ac:	00007797          	auipc	a5,0x7
    800041b0:	7d478793          	addi	a5,a5,2004 # 8000b980 <_ZTV7WorkerC+0x10>
    800041b4:	00f53023          	sd	a5,0(a0)
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	854080e7          	jalr	-1964(ra) # 80002a0c <_ZN6ThreadD1Ev>
    800041c0:	00048513          	mv	a0,s1
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	820080e7          	jalr	-2016(ra) # 800029e4 <_ZdlPv>
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	02010113          	addi	sp,sp,32
    800041dc:	00008067          	ret

00000000800041e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00113423          	sd	ra,8(sp)
    800041e8:	00813023          	sd	s0,0(sp)
    800041ec:	01010413          	addi	s0,sp,16
    800041f0:	00007797          	auipc	a5,0x7
    800041f4:	7b878793          	addi	a5,a5,1976 # 8000b9a8 <_ZTV7WorkerD+0x10>
    800041f8:	00f53023          	sd	a5,0(a0)
    800041fc:	fffff097          	auipc	ra,0xfffff
    80004200:	810080e7          	jalr	-2032(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004204:	00813083          	ld	ra,8(sp)
    80004208:	00013403          	ld	s0,0(sp)
    8000420c:	01010113          	addi	sp,sp,16
    80004210:	00008067          	ret

0000000080004214 <_ZN7WorkerDD0Ev>:
    80004214:	fe010113          	addi	sp,sp,-32
    80004218:	00113c23          	sd	ra,24(sp)
    8000421c:	00813823          	sd	s0,16(sp)
    80004220:	00913423          	sd	s1,8(sp)
    80004224:	02010413          	addi	s0,sp,32
    80004228:	00050493          	mv	s1,a0
    8000422c:	00007797          	auipc	a5,0x7
    80004230:	77c78793          	addi	a5,a5,1916 # 8000b9a8 <_ZTV7WorkerD+0x10>
    80004234:	00f53023          	sd	a5,0(a0)
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	7d4080e7          	jalr	2004(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004240:	00048513          	mv	a0,s1
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	7a0080e7          	jalr	1952(ra) # 800029e4 <_ZdlPv>
    8000424c:	01813083          	ld	ra,24(sp)
    80004250:	01013403          	ld	s0,16(sp)
    80004254:	00813483          	ld	s1,8(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret

0000000080004260 <_ZN7WorkerA3runEv>:
    void run() override {
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00113423          	sd	ra,8(sp)
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004270:	00000593          	li	a1,0
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	774080e7          	jalr	1908(ra) # 800039e8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_ZN7WorkerB3runEv>:
    void run() override {
    8000428c:	ff010113          	addi	sp,sp,-16
    80004290:	00113423          	sd	ra,8(sp)
    80004294:	00813023          	sd	s0,0(sp)
    80004298:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000429c:	00000593          	li	a1,0
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	814080e7          	jalr	-2028(ra) # 80003ab4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800042a8:	00813083          	ld	ra,8(sp)
    800042ac:	00013403          	ld	s0,0(sp)
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00113423          	sd	ra,8(sp)
    800042c0:	00813023          	sd	s0,0(sp)
    800042c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800042c8:	00000593          	li	a1,0
    800042cc:	00000097          	auipc	ra,0x0
    800042d0:	8bc080e7          	jalr	-1860(ra) # 80003b88 <_ZN7WorkerC11workerBodyCEPv>
    }
    800042d4:	00813083          	ld	ra,8(sp)
    800042d8:	00013403          	ld	s0,0(sp)
    800042dc:	01010113          	addi	sp,sp,16
    800042e0:	00008067          	ret

00000000800042e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800042e4:	ff010113          	addi	sp,sp,-16
    800042e8:	00113423          	sd	ra,8(sp)
    800042ec:	00813023          	sd	s0,0(sp)
    800042f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800042f4:	00000593          	li	a1,0
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	a10080e7          	jalr	-1520(ra) # 80003d08 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004300:	00813083          	ld	ra,8(sp)
    80004304:	00013403          	ld	s0,0(sp)
    80004308:	01010113          	addi	sp,sp,16
    8000430c:	00008067          	ret

0000000080004310 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004310:	f8010113          	addi	sp,sp,-128
    80004314:	06113c23          	sd	ra,120(sp)
    80004318:	06813823          	sd	s0,112(sp)
    8000431c:	06913423          	sd	s1,104(sp)
    80004320:	07213023          	sd	s2,96(sp)
    80004324:	05313c23          	sd	s3,88(sp)
    80004328:	05413823          	sd	s4,80(sp)
    8000432c:	05513423          	sd	s5,72(sp)
    80004330:	05613023          	sd	s6,64(sp)
    80004334:	03713c23          	sd	s7,56(sp)
    80004338:	03813823          	sd	s8,48(sp)
    8000433c:	03913423          	sd	s9,40(sp)
    80004340:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004344:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004348:	00005517          	auipc	a0,0x5
    8000434c:	e0850513          	addi	a0,a0,-504 # 80009150 <CONSOLE_STATUS+0x140>
    80004350:	00001097          	auipc	ra,0x1
    80004354:	5a8080e7          	jalr	1448(ra) # 800058f8 <_Z11printStringPKc>
    getString(input, 30);
    80004358:	01e00593          	li	a1,30
    8000435c:	f8040493          	addi	s1,s0,-128
    80004360:	00048513          	mv	a0,s1
    80004364:	00001097          	auipc	ra,0x1
    80004368:	61c080e7          	jalr	1564(ra) # 80005980 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000436c:	00048513          	mv	a0,s1
    80004370:	00001097          	auipc	ra,0x1
    80004374:	6e8080e7          	jalr	1768(ra) # 80005a58 <_Z11stringToIntPKc>
    80004378:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000437c:	00005517          	auipc	a0,0x5
    80004380:	df450513          	addi	a0,a0,-524 # 80009170 <CONSOLE_STATUS+0x160>
    80004384:	00001097          	auipc	ra,0x1
    80004388:	574080e7          	jalr	1396(ra) # 800058f8 <_Z11printStringPKc>
    getString(input, 30);
    8000438c:	01e00593          	li	a1,30
    80004390:	00048513          	mv	a0,s1
    80004394:	00001097          	auipc	ra,0x1
    80004398:	5ec080e7          	jalr	1516(ra) # 80005980 <_Z9getStringPci>
    n = stringToInt(input);
    8000439c:	00048513          	mv	a0,s1
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	6b8080e7          	jalr	1720(ra) # 80005a58 <_Z11stringToIntPKc>
    800043a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800043ac:	00005517          	auipc	a0,0x5
    800043b0:	de450513          	addi	a0,a0,-540 # 80009190 <CONSOLE_STATUS+0x180>
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	544080e7          	jalr	1348(ra) # 800058f8 <_Z11printStringPKc>
    printInt(threadNum);
    800043bc:	00000613          	li	a2,0
    800043c0:	00a00593          	li	a1,10
    800043c4:	00098513          	mv	a0,s3
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	6e0080e7          	jalr	1760(ra) # 80005aa8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800043d0:	00005517          	auipc	a0,0x5
    800043d4:	dd850513          	addi	a0,a0,-552 # 800091a8 <CONSOLE_STATUS+0x198>
    800043d8:	00001097          	auipc	ra,0x1
    800043dc:	520080e7          	jalr	1312(ra) # 800058f8 <_Z11printStringPKc>
    printInt(n);
    800043e0:	00000613          	li	a2,0
    800043e4:	00a00593          	li	a1,10
    800043e8:	00048513          	mv	a0,s1
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	6bc080e7          	jalr	1724(ra) # 80005aa8 <_Z8printIntiii>
    printString(".\n");
    800043f4:	00005517          	auipc	a0,0x5
    800043f8:	dcc50513          	addi	a0,a0,-564 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	4fc080e7          	jalr	1276(ra) # 800058f8 <_Z11printStringPKc>
    if (threadNum > n) {
    80004404:	0334c463          	blt	s1,s3,8000442c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004408:	03305c63          	blez	s3,80004440 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000440c:	03800513          	li	a0,56
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	564080e7          	jalr	1380(ra) # 80002974 <_Znwm>
    80004418:	00050a93          	mv	s5,a0
    8000441c:	00048593          	mv	a1,s1
    80004420:	00001097          	auipc	ra,0x1
    80004424:	7a8080e7          	jalr	1960(ra) # 80005bc8 <_ZN9BufferCPPC1Ei>
    80004428:	0300006f          	j	80004458 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000442c:	00005517          	auipc	a0,0x5
    80004430:	d9c50513          	addi	a0,a0,-612 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004434:	00001097          	auipc	ra,0x1
    80004438:	4c4080e7          	jalr	1220(ra) # 800058f8 <_Z11printStringPKc>
        return;
    8000443c:	0140006f          	j	80004450 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004440:	00005517          	auipc	a0,0x5
    80004444:	dc850513          	addi	a0,a0,-568 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	4b0080e7          	jalr	1200(ra) # 800058f8 <_Z11printStringPKc>
        return;
    80004450:	000c0113          	mv	sp,s8
    80004454:	2140006f          	j	80004668 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004458:	01000513          	li	a0,16
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	518080e7          	jalr	1304(ra) # 80002974 <_Znwm>
    80004464:	00050913          	mv	s2,a0
    80004468:	00000593          	li	a1,0
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	778080e7          	jalr	1912(ra) # 80002be4 <_ZN9SemaphoreC1Ej>
    80004474:	00007797          	auipc	a5,0x7
    80004478:	7927be23          	sd	s2,1948(a5) # 8000bc10 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000447c:	00399793          	slli	a5,s3,0x3
    80004480:	00f78793          	addi	a5,a5,15
    80004484:	ff07f793          	andi	a5,a5,-16
    80004488:	40f10133          	sub	sp,sp,a5
    8000448c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004490:	0019871b          	addiw	a4,s3,1
    80004494:	00171793          	slli	a5,a4,0x1
    80004498:	00e787b3          	add	a5,a5,a4
    8000449c:	00379793          	slli	a5,a5,0x3
    800044a0:	00f78793          	addi	a5,a5,15
    800044a4:	ff07f793          	andi	a5,a5,-16
    800044a8:	40f10133          	sub	sp,sp,a5
    800044ac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800044b0:	00199493          	slli	s1,s3,0x1
    800044b4:	013484b3          	add	s1,s1,s3
    800044b8:	00349493          	slli	s1,s1,0x3
    800044bc:	009b04b3          	add	s1,s6,s1
    800044c0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800044c4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800044c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800044cc:	02800513          	li	a0,40
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	4a4080e7          	jalr	1188(ra) # 80002974 <_Znwm>
    800044d8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	6d4080e7          	jalr	1748(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    800044e4:	00007797          	auipc	a5,0x7
    800044e8:	53c78793          	addi	a5,a5,1340 # 8000ba20 <_ZTV8Consumer+0x10>
    800044ec:	00fbb023          	sd	a5,0(s7)
    800044f0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800044f4:	000b8513          	mv	a0,s7
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	634080e7          	jalr	1588(ra) # 80002b2c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004500:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004504:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004508:	00007797          	auipc	a5,0x7
    8000450c:	7087b783          	ld	a5,1800(a5) # 8000bc10 <_ZL10waitForAll>
    80004510:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004514:	02800513          	li	a0,40
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	45c080e7          	jalr	1116(ra) # 80002974 <_Znwm>
    80004520:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	68c080e7          	jalr	1676(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    8000452c:	00007797          	auipc	a5,0x7
    80004530:	4a478793          	addi	a5,a5,1188 # 8000b9d0 <_ZTV16ProducerKeyborad+0x10>
    80004534:	00f4b023          	sd	a5,0(s1)
    80004538:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000453c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004540:	00048513          	mv	a0,s1
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	5e8080e7          	jalr	1512(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000454c:	00100913          	li	s2,1
    80004550:	0300006f          	j	80004580 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004554:	00007797          	auipc	a5,0x7
    80004558:	4a478793          	addi	a5,a5,1188 # 8000b9f8 <_ZTV8Producer+0x10>
    8000455c:	00fcb023          	sd	a5,0(s9)
    80004560:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004564:	00391793          	slli	a5,s2,0x3
    80004568:	00fa07b3          	add	a5,s4,a5
    8000456c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004570:	000c8513          	mv	a0,s9
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	5b8080e7          	jalr	1464(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000457c:	0019091b          	addiw	s2,s2,1
    80004580:	05395263          	bge	s2,s3,800045c4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004584:	00191493          	slli	s1,s2,0x1
    80004588:	012484b3          	add	s1,s1,s2
    8000458c:	00349493          	slli	s1,s1,0x3
    80004590:	009b04b3          	add	s1,s6,s1
    80004594:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004598:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000459c:	00007797          	auipc	a5,0x7
    800045a0:	6747b783          	ld	a5,1652(a5) # 8000bc10 <_ZL10waitForAll>
    800045a4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800045a8:	02800513          	li	a0,40
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	3c8080e7          	jalr	968(ra) # 80002974 <_Znwm>
    800045b4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	5f8080e7          	jalr	1528(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    800045c0:	f95ff06f          	j	80004554 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	59c080e7          	jalr	1436(ra) # 80002b60 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800045cc:	00000493          	li	s1,0
    800045d0:	0099ce63          	blt	s3,s1,800045ec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800045d4:	00007517          	auipc	a0,0x7
    800045d8:	63c53503          	ld	a0,1596(a0) # 8000bc10 <_ZL10waitForAll>
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	640080e7          	jalr	1600(ra) # 80002c1c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800045e4:	0014849b          	addiw	s1,s1,1
    800045e8:	fe9ff06f          	j	800045d0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800045ec:	00007517          	auipc	a0,0x7
    800045f0:	62453503          	ld	a0,1572(a0) # 8000bc10 <_ZL10waitForAll>
    800045f4:	00050863          	beqz	a0,80004604 <_Z20testConsumerProducerv+0x2f4>
    800045f8:	00053783          	ld	a5,0(a0)
    800045fc:	0087b783          	ld	a5,8(a5)
    80004600:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004604:	00000493          	li	s1,0
    80004608:	0080006f          	j	80004610 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000460c:	0014849b          	addiw	s1,s1,1
    80004610:	0334d263          	bge	s1,s3,80004634 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004614:	00349793          	slli	a5,s1,0x3
    80004618:	00fa07b3          	add	a5,s4,a5
    8000461c:	0007b503          	ld	a0,0(a5)
    80004620:	fe0506e3          	beqz	a0,8000460c <_Z20testConsumerProducerv+0x2fc>
    80004624:	00053783          	ld	a5,0(a0)
    80004628:	0087b783          	ld	a5,8(a5)
    8000462c:	000780e7          	jalr	a5
    80004630:	fddff06f          	j	8000460c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004634:	000b8a63          	beqz	s7,80004648 <_Z20testConsumerProducerv+0x338>
    80004638:	000bb783          	ld	a5,0(s7)
    8000463c:	0087b783          	ld	a5,8(a5)
    80004640:	000b8513          	mv	a0,s7
    80004644:	000780e7          	jalr	a5
    delete buffer;
    80004648:	000a8e63          	beqz	s5,80004664 <_Z20testConsumerProducerv+0x354>
    8000464c:	000a8513          	mv	a0,s5
    80004650:	00002097          	auipc	ra,0x2
    80004654:	870080e7          	jalr	-1936(ra) # 80005ec0 <_ZN9BufferCPPD1Ev>
    80004658:	000a8513          	mv	a0,s5
    8000465c:	ffffe097          	auipc	ra,0xffffe
    80004660:	388080e7          	jalr	904(ra) # 800029e4 <_ZdlPv>
    80004664:	000c0113          	mv	sp,s8
}
    80004668:	f8040113          	addi	sp,s0,-128
    8000466c:	07813083          	ld	ra,120(sp)
    80004670:	07013403          	ld	s0,112(sp)
    80004674:	06813483          	ld	s1,104(sp)
    80004678:	06013903          	ld	s2,96(sp)
    8000467c:	05813983          	ld	s3,88(sp)
    80004680:	05013a03          	ld	s4,80(sp)
    80004684:	04813a83          	ld	s5,72(sp)
    80004688:	04013b03          	ld	s6,64(sp)
    8000468c:	03813b83          	ld	s7,56(sp)
    80004690:	03013c03          	ld	s8,48(sp)
    80004694:	02813c83          	ld	s9,40(sp)
    80004698:	08010113          	addi	sp,sp,128
    8000469c:	00008067          	ret
    800046a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046a4:	000a8513          	mv	a0,s5
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	33c080e7          	jalr	828(ra) # 800029e4 <_ZdlPv>
    800046b0:	00048513          	mv	a0,s1
    800046b4:	00008097          	auipc	ra,0x8
    800046b8:	654080e7          	jalr	1620(ra) # 8000cd08 <_Unwind_Resume>
    800046bc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800046c0:	00090513          	mv	a0,s2
    800046c4:	ffffe097          	auipc	ra,0xffffe
    800046c8:	320080e7          	jalr	800(ra) # 800029e4 <_ZdlPv>
    800046cc:	00048513          	mv	a0,s1
    800046d0:	00008097          	auipc	ra,0x8
    800046d4:	638080e7          	jalr	1592(ra) # 8000cd08 <_Unwind_Resume>
    800046d8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800046dc:	000b8513          	mv	a0,s7
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	304080e7          	jalr	772(ra) # 800029e4 <_ZdlPv>
    800046e8:	00048513          	mv	a0,s1
    800046ec:	00008097          	auipc	ra,0x8
    800046f0:	61c080e7          	jalr	1564(ra) # 8000cd08 <_Unwind_Resume>
    800046f4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046f8:	00048513          	mv	a0,s1
    800046fc:	ffffe097          	auipc	ra,0xffffe
    80004700:	2e8080e7          	jalr	744(ra) # 800029e4 <_ZdlPv>
    80004704:	00090513          	mv	a0,s2
    80004708:	00008097          	auipc	ra,0x8
    8000470c:	600080e7          	jalr	1536(ra) # 8000cd08 <_Unwind_Resume>
    80004710:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004714:	000c8513          	mv	a0,s9
    80004718:	ffffe097          	auipc	ra,0xffffe
    8000471c:	2cc080e7          	jalr	716(ra) # 800029e4 <_ZdlPv>
    80004720:	00048513          	mv	a0,s1
    80004724:	00008097          	auipc	ra,0x8
    80004728:	5e4080e7          	jalr	1508(ra) # 8000cd08 <_Unwind_Resume>

000000008000472c <_ZN8Consumer3runEv>:
    void run() override {
    8000472c:	fd010113          	addi	sp,sp,-48
    80004730:	02113423          	sd	ra,40(sp)
    80004734:	02813023          	sd	s0,32(sp)
    80004738:	00913c23          	sd	s1,24(sp)
    8000473c:	01213823          	sd	s2,16(sp)
    80004740:	01313423          	sd	s3,8(sp)
    80004744:	03010413          	addi	s0,sp,48
    80004748:	00050913          	mv	s2,a0
        int i = 0;
    8000474c:	00000993          	li	s3,0
    80004750:	0100006f          	j	80004760 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004754:	00a00513          	li	a0,10
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	65c080e7          	jalr	1628(ra) # 80002db4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004760:	00007797          	auipc	a5,0x7
    80004764:	4a87a783          	lw	a5,1192(a5) # 8000bc08 <_ZL9threadEnd>
    80004768:	04079a63          	bnez	a5,800047bc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000476c:	02093783          	ld	a5,32(s2)
    80004770:	0087b503          	ld	a0,8(a5)
    80004774:	00001097          	auipc	ra,0x1
    80004778:	638080e7          	jalr	1592(ra) # 80005dac <_ZN9BufferCPP3getEv>
            i++;
    8000477c:	0019849b          	addiw	s1,s3,1
    80004780:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004784:	0ff57513          	andi	a0,a0,255
    80004788:	ffffe097          	auipc	ra,0xffffe
    8000478c:	62c080e7          	jalr	1580(ra) # 80002db4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004790:	05000793          	li	a5,80
    80004794:	02f4e4bb          	remw	s1,s1,a5
    80004798:	fc0494e3          	bnez	s1,80004760 <_ZN8Consumer3runEv+0x34>
    8000479c:	fb9ff06f          	j	80004754 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800047a0:	02093783          	ld	a5,32(s2)
    800047a4:	0087b503          	ld	a0,8(a5)
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	604080e7          	jalr	1540(ra) # 80005dac <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800047b0:	0ff57513          	andi	a0,a0,255
    800047b4:	ffffe097          	auipc	ra,0xffffe
    800047b8:	600080e7          	jalr	1536(ra) # 80002db4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800047bc:	02093783          	ld	a5,32(s2)
    800047c0:	0087b503          	ld	a0,8(a5)
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	674080e7          	jalr	1652(ra) # 80005e38 <_ZN9BufferCPP6getCntEv>
    800047cc:	fca04ae3          	bgtz	a0,800047a0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800047d0:	02093783          	ld	a5,32(s2)
    800047d4:	0107b503          	ld	a0,16(a5)
    800047d8:	ffffe097          	auipc	ra,0xffffe
    800047dc:	470080e7          	jalr	1136(ra) # 80002c48 <_ZN9Semaphore6signalEv>
    }
    800047e0:	02813083          	ld	ra,40(sp)
    800047e4:	02013403          	ld	s0,32(sp)
    800047e8:	01813483          	ld	s1,24(sp)
    800047ec:	01013903          	ld	s2,16(sp)
    800047f0:	00813983          	ld	s3,8(sp)
    800047f4:	03010113          	addi	sp,sp,48
    800047f8:	00008067          	ret

00000000800047fc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800047fc:	ff010113          	addi	sp,sp,-16
    80004800:	00113423          	sd	ra,8(sp)
    80004804:	00813023          	sd	s0,0(sp)
    80004808:	01010413          	addi	s0,sp,16
    8000480c:	00007797          	auipc	a5,0x7
    80004810:	21478793          	addi	a5,a5,532 # 8000ba20 <_ZTV8Consumer+0x10>
    80004814:	00f53023          	sd	a5,0(a0)
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	1f4080e7          	jalr	500(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004820:	00813083          	ld	ra,8(sp)
    80004824:	00013403          	ld	s0,0(sp)
    80004828:	01010113          	addi	sp,sp,16
    8000482c:	00008067          	ret

0000000080004830 <_ZN8ConsumerD0Ev>:
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00113c23          	sd	ra,24(sp)
    80004838:	00813823          	sd	s0,16(sp)
    8000483c:	00913423          	sd	s1,8(sp)
    80004840:	02010413          	addi	s0,sp,32
    80004844:	00050493          	mv	s1,a0
    80004848:	00007797          	auipc	a5,0x7
    8000484c:	1d878793          	addi	a5,a5,472 # 8000ba20 <_ZTV8Consumer+0x10>
    80004850:	00f53023          	sd	a5,0(a0)
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	1b8080e7          	jalr	440(ra) # 80002a0c <_ZN6ThreadD1Ev>
    8000485c:	00048513          	mv	a0,s1
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	184080e7          	jalr	388(ra) # 800029e4 <_ZdlPv>
    80004868:	01813083          	ld	ra,24(sp)
    8000486c:	01013403          	ld	s0,16(sp)
    80004870:	00813483          	ld	s1,8(sp)
    80004874:	02010113          	addi	sp,sp,32
    80004878:	00008067          	ret

000000008000487c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000487c:	ff010113          	addi	sp,sp,-16
    80004880:	00113423          	sd	ra,8(sp)
    80004884:	00813023          	sd	s0,0(sp)
    80004888:	01010413          	addi	s0,sp,16
    8000488c:	00007797          	auipc	a5,0x7
    80004890:	14478793          	addi	a5,a5,324 # 8000b9d0 <_ZTV16ProducerKeyborad+0x10>
    80004894:	00f53023          	sd	a5,0(a0)
    80004898:	ffffe097          	auipc	ra,0xffffe
    8000489c:	174080e7          	jalr	372(ra) # 80002a0c <_ZN6ThreadD1Ev>
    800048a0:	00813083          	ld	ra,8(sp)
    800048a4:	00013403          	ld	s0,0(sp)
    800048a8:	01010113          	addi	sp,sp,16
    800048ac:	00008067          	ret

00000000800048b0 <_ZN16ProducerKeyboradD0Ev>:
    800048b0:	fe010113          	addi	sp,sp,-32
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	00813823          	sd	s0,16(sp)
    800048bc:	00913423          	sd	s1,8(sp)
    800048c0:	02010413          	addi	s0,sp,32
    800048c4:	00050493          	mv	s1,a0
    800048c8:	00007797          	auipc	a5,0x7
    800048cc:	10878793          	addi	a5,a5,264 # 8000b9d0 <_ZTV16ProducerKeyborad+0x10>
    800048d0:	00f53023          	sd	a5,0(a0)
    800048d4:	ffffe097          	auipc	ra,0xffffe
    800048d8:	138080e7          	jalr	312(ra) # 80002a0c <_ZN6ThreadD1Ev>
    800048dc:	00048513          	mv	a0,s1
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	104080e7          	jalr	260(ra) # 800029e4 <_ZdlPv>
    800048e8:	01813083          	ld	ra,24(sp)
    800048ec:	01013403          	ld	s0,16(sp)
    800048f0:	00813483          	ld	s1,8(sp)
    800048f4:	02010113          	addi	sp,sp,32
    800048f8:	00008067          	ret

00000000800048fc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800048fc:	ff010113          	addi	sp,sp,-16
    80004900:	00113423          	sd	ra,8(sp)
    80004904:	00813023          	sd	s0,0(sp)
    80004908:	01010413          	addi	s0,sp,16
    8000490c:	00007797          	auipc	a5,0x7
    80004910:	0ec78793          	addi	a5,a5,236 # 8000b9f8 <_ZTV8Producer+0x10>
    80004914:	00f53023          	sd	a5,0(a0)
    80004918:	ffffe097          	auipc	ra,0xffffe
    8000491c:	0f4080e7          	jalr	244(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80004920:	00813083          	ld	ra,8(sp)
    80004924:	00013403          	ld	s0,0(sp)
    80004928:	01010113          	addi	sp,sp,16
    8000492c:	00008067          	ret

0000000080004930 <_ZN8ProducerD0Ev>:
    80004930:	fe010113          	addi	sp,sp,-32
    80004934:	00113c23          	sd	ra,24(sp)
    80004938:	00813823          	sd	s0,16(sp)
    8000493c:	00913423          	sd	s1,8(sp)
    80004940:	02010413          	addi	s0,sp,32
    80004944:	00050493          	mv	s1,a0
    80004948:	00007797          	auipc	a5,0x7
    8000494c:	0b078793          	addi	a5,a5,176 # 8000b9f8 <_ZTV8Producer+0x10>
    80004950:	00f53023          	sd	a5,0(a0)
    80004954:	ffffe097          	auipc	ra,0xffffe
    80004958:	0b8080e7          	jalr	184(ra) # 80002a0c <_ZN6ThreadD1Ev>
    8000495c:	00048513          	mv	a0,s1
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	084080e7          	jalr	132(ra) # 800029e4 <_ZdlPv>
    80004968:	01813083          	ld	ra,24(sp)
    8000496c:	01013403          	ld	s0,16(sp)
    80004970:	00813483          	ld	s1,8(sp)
    80004974:	02010113          	addi	sp,sp,32
    80004978:	00008067          	ret

000000008000497c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000497c:	fe010113          	addi	sp,sp,-32
    80004980:	00113c23          	sd	ra,24(sp)
    80004984:	00813823          	sd	s0,16(sp)
    80004988:	00913423          	sd	s1,8(sp)
    8000498c:	02010413          	addi	s0,sp,32
    80004990:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	c30080e7          	jalr	-976(ra) # 800015c4 <_Z4getcv>
    8000499c:	0005059b          	sext.w	a1,a0
    800049a0:	01b00793          	li	a5,27
    800049a4:	00f58c63          	beq	a1,a5,800049bc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800049a8:	0204b783          	ld	a5,32(s1)
    800049ac:	0087b503          	ld	a0,8(a5)
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	36c080e7          	jalr	876(ra) # 80005d1c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800049b8:	fddff06f          	j	80004994 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800049bc:	00100793          	li	a5,1
    800049c0:	00007717          	auipc	a4,0x7
    800049c4:	24f72423          	sw	a5,584(a4) # 8000bc08 <_ZL9threadEnd>
        td->buffer->put('!');
    800049c8:	0204b783          	ld	a5,32(s1)
    800049cc:	02100593          	li	a1,33
    800049d0:	0087b503          	ld	a0,8(a5)
    800049d4:	00001097          	auipc	ra,0x1
    800049d8:	348080e7          	jalr	840(ra) # 80005d1c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800049dc:	0204b783          	ld	a5,32(s1)
    800049e0:	0107b503          	ld	a0,16(a5)
    800049e4:	ffffe097          	auipc	ra,0xffffe
    800049e8:	264080e7          	jalr	612(ra) # 80002c48 <_ZN9Semaphore6signalEv>
    }
    800049ec:	01813083          	ld	ra,24(sp)
    800049f0:	01013403          	ld	s0,16(sp)
    800049f4:	00813483          	ld	s1,8(sp)
    800049f8:	02010113          	addi	sp,sp,32
    800049fc:	00008067          	ret

0000000080004a00 <_ZN8Producer3runEv>:
    void run() override {
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00813823          	sd	s0,16(sp)
    80004a0c:	00913423          	sd	s1,8(sp)
    80004a10:	01213023          	sd	s2,0(sp)
    80004a14:	02010413          	addi	s0,sp,32
    80004a18:	00050493          	mv	s1,a0
        int i = 0;
    80004a1c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a20:	00007797          	auipc	a5,0x7
    80004a24:	1e87a783          	lw	a5,488(a5) # 8000bc08 <_ZL9threadEnd>
    80004a28:	04079263          	bnez	a5,80004a6c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a2c:	0204b783          	ld	a5,32(s1)
    80004a30:	0007a583          	lw	a1,0(a5)
    80004a34:	0305859b          	addiw	a1,a1,48
    80004a38:	0087b503          	ld	a0,8(a5)
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	2e0080e7          	jalr	736(ra) # 80005d1c <_ZN9BufferCPP3putEi>
            i++;
    80004a44:	0019071b          	addiw	a4,s2,1
    80004a48:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004a4c:	0204b783          	ld	a5,32(s1)
    80004a50:	0007a783          	lw	a5,0(a5)
    80004a54:	00e787bb          	addw	a5,a5,a4
    80004a58:	00500513          	li	a0,5
    80004a5c:	02a7e53b          	remw	a0,a5,a0
    80004a60:	ffffe097          	auipc	ra,0xffffe
    80004a64:	128080e7          	jalr	296(ra) # 80002b88 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004a68:	fb9ff06f          	j	80004a20 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004a6c:	0204b783          	ld	a5,32(s1)
    80004a70:	0107b503          	ld	a0,16(a5)
    80004a74:	ffffe097          	auipc	ra,0xffffe
    80004a78:	1d4080e7          	jalr	468(ra) # 80002c48 <_ZN9Semaphore6signalEv>
    }
    80004a7c:	01813083          	ld	ra,24(sp)
    80004a80:	01013403          	ld	s0,16(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	00013903          	ld	s2,0(sp)
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret

0000000080004a94 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	01213023          	sd	s2,0(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    80004aac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ab0:	00100793          	li	a5,1
    80004ab4:	02a7f863          	bgeu	a5,a0,80004ae4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ab8:	00a00793          	li	a5,10
    80004abc:	02f577b3          	remu	a5,a0,a5
    80004ac0:	02078e63          	beqz	a5,80004afc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004ac4:	fff48513          	addi	a0,s1,-1
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	fcc080e7          	jalr	-52(ra) # 80004a94 <_ZL9fibonaccim>
    80004ad0:	00050913          	mv	s2,a0
    80004ad4:	ffe48513          	addi	a0,s1,-2
    80004ad8:	00000097          	auipc	ra,0x0
    80004adc:	fbc080e7          	jalr	-68(ra) # 80004a94 <_ZL9fibonaccim>
    80004ae0:	00a90533          	add	a0,s2,a0
}
    80004ae4:	01813083          	ld	ra,24(sp)
    80004ae8:	01013403          	ld	s0,16(sp)
    80004aec:	00813483          	ld	s1,8(sp)
    80004af0:	00013903          	ld	s2,0(sp)
    80004af4:	02010113          	addi	sp,sp,32
    80004af8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	88c080e7          	jalr	-1908(ra) # 80001388 <_Z15thread_dispatchv>
    80004b04:	fc1ff06f          	j	80004ac4 <_ZL9fibonaccim+0x30>

0000000080004b08 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b08:	fe010113          	addi	sp,sp,-32
    80004b0c:	00113c23          	sd	ra,24(sp)
    80004b10:	00813823          	sd	s0,16(sp)
    80004b14:	00913423          	sd	s1,8(sp)
    80004b18:	01213023          	sd	s2,0(sp)
    80004b1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004b20:	00a00493          	li	s1,10
    80004b24:	0400006f          	j	80004b64 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b28:	00004517          	auipc	a0,0x4
    80004b2c:	77050513          	addi	a0,a0,1904 # 80009298 <CONSOLE_STATUS+0x288>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	dc8080e7          	jalr	-568(ra) # 800058f8 <_Z11printStringPKc>
    80004b38:	00000613          	li	a2,0
    80004b3c:	00a00593          	li	a1,10
    80004b40:	00048513          	mv	a0,s1
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	f64080e7          	jalr	-156(ra) # 80005aa8 <_Z8printIntiii>
    80004b4c:	00005517          	auipc	a0,0x5
    80004b50:	93c50513          	addi	a0,a0,-1732 # 80009488 <CONSOLE_STATUS+0x478>
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	da4080e7          	jalr	-604(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004b5c:	0014849b          	addiw	s1,s1,1
    80004b60:	0ff4f493          	andi	s1,s1,255
    80004b64:	00c00793          	li	a5,12
    80004b68:	fc97f0e3          	bgeu	a5,s1,80004b28 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004b6c:	00004517          	auipc	a0,0x4
    80004b70:	73450513          	addi	a0,a0,1844 # 800092a0 <CONSOLE_STATUS+0x290>
    80004b74:	00001097          	auipc	ra,0x1
    80004b78:	d84080e7          	jalr	-636(ra) # 800058f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004b7c:	00500313          	li	t1,5
    thread_dispatch();
    80004b80:	ffffd097          	auipc	ra,0xffffd
    80004b84:	808080e7          	jalr	-2040(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004b88:	01000513          	li	a0,16
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	f08080e7          	jalr	-248(ra) # 80004a94 <_ZL9fibonaccim>
    80004b94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004b98:	00004517          	auipc	a0,0x4
    80004b9c:	71850513          	addi	a0,a0,1816 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	d58080e7          	jalr	-680(ra) # 800058f8 <_Z11printStringPKc>
    80004ba8:	00000613          	li	a2,0
    80004bac:	00a00593          	li	a1,10
    80004bb0:	0009051b          	sext.w	a0,s2
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	ef4080e7          	jalr	-268(ra) # 80005aa8 <_Z8printIntiii>
    80004bbc:	00005517          	auipc	a0,0x5
    80004bc0:	8cc50513          	addi	a0,a0,-1844 # 80009488 <CONSOLE_STATUS+0x478>
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	d34080e7          	jalr	-716(ra) # 800058f8 <_Z11printStringPKc>
    80004bcc:	0400006f          	j	80004c0c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004bd0:	00004517          	auipc	a0,0x4
    80004bd4:	6c850513          	addi	a0,a0,1736 # 80009298 <CONSOLE_STATUS+0x288>
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	d20080e7          	jalr	-736(ra) # 800058f8 <_Z11printStringPKc>
    80004be0:	00000613          	li	a2,0
    80004be4:	00a00593          	li	a1,10
    80004be8:	00048513          	mv	a0,s1
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	ebc080e7          	jalr	-324(ra) # 80005aa8 <_Z8printIntiii>
    80004bf4:	00005517          	auipc	a0,0x5
    80004bf8:	89450513          	addi	a0,a0,-1900 # 80009488 <CONSOLE_STATUS+0x478>
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	cfc080e7          	jalr	-772(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c04:	0014849b          	addiw	s1,s1,1
    80004c08:	0ff4f493          	andi	s1,s1,255
    80004c0c:	00f00793          	li	a5,15
    80004c10:	fc97f0e3          	bgeu	a5,s1,80004bd0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004c14:	00004517          	auipc	a0,0x4
    80004c18:	6ac50513          	addi	a0,a0,1708 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	cdc080e7          	jalr	-804(ra) # 800058f8 <_Z11printStringPKc>
    finishedD = true;
    80004c24:	00100793          	li	a5,1
    80004c28:	00007717          	auipc	a4,0x7
    80004c2c:	fef70823          	sb	a5,-16(a4) # 8000bc18 <_ZL9finishedD>
    thread_dispatch();
    80004c30:	ffffc097          	auipc	ra,0xffffc
    80004c34:	758080e7          	jalr	1880(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004c38:	01813083          	ld	ra,24(sp)
    80004c3c:	01013403          	ld	s0,16(sp)
    80004c40:	00813483          	ld	s1,8(sp)
    80004c44:	00013903          	ld	s2,0(sp)
    80004c48:	02010113          	addi	sp,sp,32
    80004c4c:	00008067          	ret

0000000080004c50 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004c50:	fe010113          	addi	sp,sp,-32
    80004c54:	00113c23          	sd	ra,24(sp)
    80004c58:	00813823          	sd	s0,16(sp)
    80004c5c:	00913423          	sd	s1,8(sp)
    80004c60:	01213023          	sd	s2,0(sp)
    80004c64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c68:	00000493          	li	s1,0
    80004c6c:	0400006f          	j	80004cac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004c70:	00004517          	auipc	a0,0x4
    80004c74:	5f850513          	addi	a0,a0,1528 # 80009268 <CONSOLE_STATUS+0x258>
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	c80080e7          	jalr	-896(ra) # 800058f8 <_Z11printStringPKc>
    80004c80:	00000613          	li	a2,0
    80004c84:	00a00593          	li	a1,10
    80004c88:	00048513          	mv	a0,s1
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	e1c080e7          	jalr	-484(ra) # 80005aa8 <_Z8printIntiii>
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	7f450513          	addi	a0,a0,2036 # 80009488 <CONSOLE_STATUS+0x478>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	c5c080e7          	jalr	-932(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ca4:	0014849b          	addiw	s1,s1,1
    80004ca8:	0ff4f493          	andi	s1,s1,255
    80004cac:	00200793          	li	a5,2
    80004cb0:	fc97f0e3          	bgeu	a5,s1,80004c70 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004cb4:	00004517          	auipc	a0,0x4
    80004cb8:	5bc50513          	addi	a0,a0,1468 # 80009270 <CONSOLE_STATUS+0x260>
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	c3c080e7          	jalr	-964(ra) # 800058f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004cc4:	00700313          	li	t1,7
    thread_dispatch();
    80004cc8:	ffffc097          	auipc	ra,0xffffc
    80004ccc:	6c0080e7          	jalr	1728(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004cd0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004cd4:	00004517          	auipc	a0,0x4
    80004cd8:	5ac50513          	addi	a0,a0,1452 # 80009280 <CONSOLE_STATUS+0x270>
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	c1c080e7          	jalr	-996(ra) # 800058f8 <_Z11printStringPKc>
    80004ce4:	00000613          	li	a2,0
    80004ce8:	00a00593          	li	a1,10
    80004cec:	0009051b          	sext.w	a0,s2
    80004cf0:	00001097          	auipc	ra,0x1
    80004cf4:	db8080e7          	jalr	-584(ra) # 80005aa8 <_Z8printIntiii>
    80004cf8:	00004517          	auipc	a0,0x4
    80004cfc:	79050513          	addi	a0,a0,1936 # 80009488 <CONSOLE_STATUS+0x478>
    80004d00:	00001097          	auipc	ra,0x1
    80004d04:	bf8080e7          	jalr	-1032(ra) # 800058f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d08:	00c00513          	li	a0,12
    80004d0c:	00000097          	auipc	ra,0x0
    80004d10:	d88080e7          	jalr	-632(ra) # 80004a94 <_ZL9fibonaccim>
    80004d14:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d18:	00004517          	auipc	a0,0x4
    80004d1c:	57050513          	addi	a0,a0,1392 # 80009288 <CONSOLE_STATUS+0x278>
    80004d20:	00001097          	auipc	ra,0x1
    80004d24:	bd8080e7          	jalr	-1064(ra) # 800058f8 <_Z11printStringPKc>
    80004d28:	00000613          	li	a2,0
    80004d2c:	00a00593          	li	a1,10
    80004d30:	0009051b          	sext.w	a0,s2
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	d74080e7          	jalr	-652(ra) # 80005aa8 <_Z8printIntiii>
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	74c50513          	addi	a0,a0,1868 # 80009488 <CONSOLE_STATUS+0x478>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	bb4080e7          	jalr	-1100(ra) # 800058f8 <_Z11printStringPKc>
    80004d4c:	0400006f          	j	80004d8c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004d50:	00004517          	auipc	a0,0x4
    80004d54:	51850513          	addi	a0,a0,1304 # 80009268 <CONSOLE_STATUS+0x258>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	ba0080e7          	jalr	-1120(ra) # 800058f8 <_Z11printStringPKc>
    80004d60:	00000613          	li	a2,0
    80004d64:	00a00593          	li	a1,10
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	d3c080e7          	jalr	-708(ra) # 80005aa8 <_Z8printIntiii>
    80004d74:	00004517          	auipc	a0,0x4
    80004d78:	71450513          	addi	a0,a0,1812 # 80009488 <CONSOLE_STATUS+0x478>
    80004d7c:	00001097          	auipc	ra,0x1
    80004d80:	b7c080e7          	jalr	-1156(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004d84:	0014849b          	addiw	s1,s1,1
    80004d88:	0ff4f493          	andi	s1,s1,255
    80004d8c:	00500793          	li	a5,5
    80004d90:	fc97f0e3          	bgeu	a5,s1,80004d50 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	4ac50513          	addi	a0,a0,1196 # 80009240 <CONSOLE_STATUS+0x230>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	b5c080e7          	jalr	-1188(ra) # 800058f8 <_Z11printStringPKc>
    finishedC = true;
    80004da4:	00100793          	li	a5,1
    80004da8:	00007717          	auipc	a4,0x7
    80004dac:	e6f708a3          	sb	a5,-399(a4) # 8000bc19 <_ZL9finishedC>
    thread_dispatch();
    80004db0:	ffffc097          	auipc	ra,0xffffc
    80004db4:	5d8080e7          	jalr	1496(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	01013403          	ld	s0,16(sp)
    80004dc0:	00813483          	ld	s1,8(sp)
    80004dc4:	00013903          	ld	s2,0(sp)
    80004dc8:	02010113          	addi	sp,sp,32
    80004dcc:	00008067          	ret

0000000080004dd0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004dd0:	fe010113          	addi	sp,sp,-32
    80004dd4:	00113c23          	sd	ra,24(sp)
    80004dd8:	00813823          	sd	s0,16(sp)
    80004ddc:	00913423          	sd	s1,8(sp)
    80004de0:	01213023          	sd	s2,0(sp)
    80004de4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004de8:	00000913          	li	s2,0
    80004dec:	0380006f          	j	80004e24 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004df0:	ffffc097          	auipc	ra,0xffffc
    80004df4:	598080e7          	jalr	1432(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004df8:	00148493          	addi	s1,s1,1
    80004dfc:	000027b7          	lui	a5,0x2
    80004e00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e04:	0097ee63          	bltu	a5,s1,80004e20 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e08:	00000713          	li	a4,0
    80004e0c:	000077b7          	lui	a5,0x7
    80004e10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e14:	fce7eee3          	bltu	a5,a4,80004df0 <_ZL11workerBodyBPv+0x20>
    80004e18:	00170713          	addi	a4,a4,1
    80004e1c:	ff1ff06f          	j	80004e0c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e20:	00190913          	addi	s2,s2,1
    80004e24:	00f00793          	li	a5,15
    80004e28:	0527e063          	bltu	a5,s2,80004e68 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e2c:	00004517          	auipc	a0,0x4
    80004e30:	42450513          	addi	a0,a0,1060 # 80009250 <CONSOLE_STATUS+0x240>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	ac4080e7          	jalr	-1340(ra) # 800058f8 <_Z11printStringPKc>
    80004e3c:	00000613          	li	a2,0
    80004e40:	00a00593          	li	a1,10
    80004e44:	0009051b          	sext.w	a0,s2
    80004e48:	00001097          	auipc	ra,0x1
    80004e4c:	c60080e7          	jalr	-928(ra) # 80005aa8 <_Z8printIntiii>
    80004e50:	00004517          	auipc	a0,0x4
    80004e54:	63850513          	addi	a0,a0,1592 # 80009488 <CONSOLE_STATUS+0x478>
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	aa0080e7          	jalr	-1376(ra) # 800058f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e60:	00000493          	li	s1,0
    80004e64:	f99ff06f          	j	80004dfc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004e68:	00004517          	auipc	a0,0x4
    80004e6c:	3f050513          	addi	a0,a0,1008 # 80009258 <CONSOLE_STATUS+0x248>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	a88080e7          	jalr	-1400(ra) # 800058f8 <_Z11printStringPKc>
    finishedB = true;
    80004e78:	00100793          	li	a5,1
    80004e7c:	00007717          	auipc	a4,0x7
    80004e80:	d8f70f23          	sb	a5,-610(a4) # 8000bc1a <_ZL9finishedB>
    thread_dispatch();
    80004e84:	ffffc097          	auipc	ra,0xffffc
    80004e88:	504080e7          	jalr	1284(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004e8c:	01813083          	ld	ra,24(sp)
    80004e90:	01013403          	ld	s0,16(sp)
    80004e94:	00813483          	ld	s1,8(sp)
    80004e98:	00013903          	ld	s2,0(sp)
    80004e9c:	02010113          	addi	sp,sp,32
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ea4:	fe010113          	addi	sp,sp,-32
    80004ea8:	00113c23          	sd	ra,24(sp)
    80004eac:	00813823          	sd	s0,16(sp)
    80004eb0:	00913423          	sd	s1,8(sp)
    80004eb4:	01213023          	sd	s2,0(sp)
    80004eb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ebc:	00000913          	li	s2,0
    80004ec0:	0380006f          	j	80004ef8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	4c4080e7          	jalr	1220(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ecc:	00148493          	addi	s1,s1,1
    80004ed0:	000027b7          	lui	a5,0x2
    80004ed4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ed8:	0097ee63          	bltu	a5,s1,80004ef4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004edc:	00000713          	li	a4,0
    80004ee0:	000077b7          	lui	a5,0x7
    80004ee4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ee8:	fce7eee3          	bltu	a5,a4,80004ec4 <_ZL11workerBodyAPv+0x20>
    80004eec:	00170713          	addi	a4,a4,1
    80004ef0:	ff1ff06f          	j	80004ee0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ef4:	00190913          	addi	s2,s2,1
    80004ef8:	00900793          	li	a5,9
    80004efc:	0527e063          	bltu	a5,s2,80004f3c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	33850513          	addi	a0,a0,824 # 80009238 <CONSOLE_STATUS+0x228>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	9f0080e7          	jalr	-1552(ra) # 800058f8 <_Z11printStringPKc>
    80004f10:	00000613          	li	a2,0
    80004f14:	00a00593          	li	a1,10
    80004f18:	0009051b          	sext.w	a0,s2
    80004f1c:	00001097          	auipc	ra,0x1
    80004f20:	b8c080e7          	jalr	-1140(ra) # 80005aa8 <_Z8printIntiii>
    80004f24:	00004517          	auipc	a0,0x4
    80004f28:	56450513          	addi	a0,a0,1380 # 80009488 <CONSOLE_STATUS+0x478>
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	9cc080e7          	jalr	-1588(ra) # 800058f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f34:	00000493          	li	s1,0
    80004f38:	f99ff06f          	j	80004ed0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004f3c:	00004517          	auipc	a0,0x4
    80004f40:	30450513          	addi	a0,a0,772 # 80009240 <CONSOLE_STATUS+0x230>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	9b4080e7          	jalr	-1612(ra) # 800058f8 <_Z11printStringPKc>
    finishedA = true;
    80004f4c:	00100793          	li	a5,1
    80004f50:	00007717          	auipc	a4,0x7
    80004f54:	ccf705a3          	sb	a5,-821(a4) # 8000bc1b <_ZL9finishedA>
}
    80004f58:	01813083          	ld	ra,24(sp)
    80004f5c:	01013403          	ld	s0,16(sp)
    80004f60:	00813483          	ld	s1,8(sp)
    80004f64:	00013903          	ld	s2,0(sp)
    80004f68:	02010113          	addi	sp,sp,32
    80004f6c:	00008067          	ret

0000000080004f70 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004f70:	fd010113          	addi	sp,sp,-48
    80004f74:	02113423          	sd	ra,40(sp)
    80004f78:	02813023          	sd	s0,32(sp)
    80004f7c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004f80:	00000613          	li	a2,0
    80004f84:	00000597          	auipc	a1,0x0
    80004f88:	f2058593          	addi	a1,a1,-224 # 80004ea4 <_ZL11workerBodyAPv>
    80004f8c:	fd040513          	addi	a0,s0,-48
    80004f90:	ffffc097          	auipc	ra,0xffffc
    80004f94:	348080e7          	jalr	840(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004f98:	00004517          	auipc	a0,0x4
    80004f9c:	33850513          	addi	a0,a0,824 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	958080e7          	jalr	-1704(ra) # 800058f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004fa8:	00000613          	li	a2,0
    80004fac:	00000597          	auipc	a1,0x0
    80004fb0:	e2458593          	addi	a1,a1,-476 # 80004dd0 <_ZL11workerBodyBPv>
    80004fb4:	fd840513          	addi	a0,s0,-40
    80004fb8:	ffffc097          	auipc	ra,0xffffc
    80004fbc:	320080e7          	jalr	800(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	32850513          	addi	a0,a0,808 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	930080e7          	jalr	-1744(ra) # 800058f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004fd0:	00000613          	li	a2,0
    80004fd4:	00000597          	auipc	a1,0x0
    80004fd8:	c7c58593          	addi	a1,a1,-900 # 80004c50 <_ZL11workerBodyCPv>
    80004fdc:	fe040513          	addi	a0,s0,-32
    80004fe0:	ffffc097          	auipc	ra,0xffffc
    80004fe4:	2f8080e7          	jalr	760(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	31850513          	addi	a0,a0,792 # 80009300 <CONSOLE_STATUS+0x2f0>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	908080e7          	jalr	-1784(ra) # 800058f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004ff8:	00000613          	li	a2,0
    80004ffc:	00000597          	auipc	a1,0x0
    80005000:	b0c58593          	addi	a1,a1,-1268 # 80004b08 <_ZL11workerBodyDPv>
    80005004:	fe840513          	addi	a0,s0,-24
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	2d0080e7          	jalr	720(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005010:	00004517          	auipc	a0,0x4
    80005014:	30850513          	addi	a0,a0,776 # 80009318 <CONSOLE_STATUS+0x308>
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	8e0080e7          	jalr	-1824(ra) # 800058f8 <_Z11printStringPKc>
    80005020:	00c0006f          	j	8000502c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005024:	ffffc097          	auipc	ra,0xffffc
    80005028:	364080e7          	jalr	868(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000502c:	00007797          	auipc	a5,0x7
    80005030:	bef7c783          	lbu	a5,-1041(a5) # 8000bc1b <_ZL9finishedA>
    80005034:	fe0788e3          	beqz	a5,80005024 <_Z18Threads_C_API_testv+0xb4>
    80005038:	00007797          	auipc	a5,0x7
    8000503c:	be27c783          	lbu	a5,-1054(a5) # 8000bc1a <_ZL9finishedB>
    80005040:	fe0782e3          	beqz	a5,80005024 <_Z18Threads_C_API_testv+0xb4>
    80005044:	00007797          	auipc	a5,0x7
    80005048:	bd57c783          	lbu	a5,-1067(a5) # 8000bc19 <_ZL9finishedC>
    8000504c:	fc078ce3          	beqz	a5,80005024 <_Z18Threads_C_API_testv+0xb4>
    80005050:	00007797          	auipc	a5,0x7
    80005054:	bc87c783          	lbu	a5,-1080(a5) # 8000bc18 <_ZL9finishedD>
    80005058:	fc0786e3          	beqz	a5,80005024 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000505c:	02813083          	ld	ra,40(sp)
    80005060:	02013403          	ld	s0,32(sp)
    80005064:	03010113          	addi	sp,sp,48
    80005068:	00008067          	ret

000000008000506c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000506c:	fd010113          	addi	sp,sp,-48
    80005070:	02113423          	sd	ra,40(sp)
    80005074:	02813023          	sd	s0,32(sp)
    80005078:	00913c23          	sd	s1,24(sp)
    8000507c:	01213823          	sd	s2,16(sp)
    80005080:	01313423          	sd	s3,8(sp)
    80005084:	03010413          	addi	s0,sp,48
    80005088:	00050993          	mv	s3,a0
    8000508c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005090:	00000913          	li	s2,0
    80005094:	00c0006f          	j	800050a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005098:	ffffe097          	auipc	ra,0xffffe
    8000509c:	ac8080e7          	jalr	-1336(ra) # 80002b60 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	524080e7          	jalr	1316(ra) # 800015c4 <_Z4getcv>
    800050a8:	0005059b          	sext.w	a1,a0
    800050ac:	01b00793          	li	a5,27
    800050b0:	02f58a63          	beq	a1,a5,800050e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800050b4:	0084b503          	ld	a0,8(s1)
    800050b8:	00001097          	auipc	ra,0x1
    800050bc:	c64080e7          	jalr	-924(ra) # 80005d1c <_ZN9BufferCPP3putEi>
        i++;
    800050c0:	0019071b          	addiw	a4,s2,1
    800050c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800050c8:	0004a683          	lw	a3,0(s1)
    800050cc:	0026979b          	slliw	a5,a3,0x2
    800050d0:	00d787bb          	addw	a5,a5,a3
    800050d4:	0017979b          	slliw	a5,a5,0x1
    800050d8:	02f767bb          	remw	a5,a4,a5
    800050dc:	fc0792e3          	bnez	a5,800050a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800050e0:	fb9ff06f          	j	80005098 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800050e4:	00100793          	li	a5,1
    800050e8:	00007717          	auipc	a4,0x7
    800050ec:	b2f72c23          	sw	a5,-1224(a4) # 8000bc20 <_ZL9threadEnd>
    td->buffer->put('!');
    800050f0:	0209b783          	ld	a5,32(s3)
    800050f4:	02100593          	li	a1,33
    800050f8:	0087b503          	ld	a0,8(a5)
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	c20080e7          	jalr	-992(ra) # 80005d1c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005104:	0104b503          	ld	a0,16(s1)
    80005108:	ffffe097          	auipc	ra,0xffffe
    8000510c:	b40080e7          	jalr	-1216(ra) # 80002c48 <_ZN9Semaphore6signalEv>
}
    80005110:	02813083          	ld	ra,40(sp)
    80005114:	02013403          	ld	s0,32(sp)
    80005118:	01813483          	ld	s1,24(sp)
    8000511c:	01013903          	ld	s2,16(sp)
    80005120:	00813983          	ld	s3,8(sp)
    80005124:	03010113          	addi	sp,sp,48
    80005128:	00008067          	ret

000000008000512c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000512c:	fe010113          	addi	sp,sp,-32
    80005130:	00113c23          	sd	ra,24(sp)
    80005134:	00813823          	sd	s0,16(sp)
    80005138:	00913423          	sd	s1,8(sp)
    8000513c:	01213023          	sd	s2,0(sp)
    80005140:	02010413          	addi	s0,sp,32
    80005144:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005148:	00000913          	li	s2,0
    8000514c:	00c0006f          	j	80005158 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	a10080e7          	jalr	-1520(ra) # 80002b60 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005158:	00007797          	auipc	a5,0x7
    8000515c:	ac87a783          	lw	a5,-1336(a5) # 8000bc20 <_ZL9threadEnd>
    80005160:	02079e63          	bnez	a5,8000519c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005164:	0004a583          	lw	a1,0(s1)
    80005168:	0305859b          	addiw	a1,a1,48
    8000516c:	0084b503          	ld	a0,8(s1)
    80005170:	00001097          	auipc	ra,0x1
    80005174:	bac080e7          	jalr	-1108(ra) # 80005d1c <_ZN9BufferCPP3putEi>
        i++;
    80005178:	0019071b          	addiw	a4,s2,1
    8000517c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005180:	0004a683          	lw	a3,0(s1)
    80005184:	0026979b          	slliw	a5,a3,0x2
    80005188:	00d787bb          	addw	a5,a5,a3
    8000518c:	0017979b          	slliw	a5,a5,0x1
    80005190:	02f767bb          	remw	a5,a4,a5
    80005194:	fc0792e3          	bnez	a5,80005158 <_ZN12ProducerSync8producerEPv+0x2c>
    80005198:	fb9ff06f          	j	80005150 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000519c:	0104b503          	ld	a0,16(s1)
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	aa8080e7          	jalr	-1368(ra) # 80002c48 <_ZN9Semaphore6signalEv>
}
    800051a8:	01813083          	ld	ra,24(sp)
    800051ac:	01013403          	ld	s0,16(sp)
    800051b0:	00813483          	ld	s1,8(sp)
    800051b4:	00013903          	ld	s2,0(sp)
    800051b8:	02010113          	addi	sp,sp,32
    800051bc:	00008067          	ret

00000000800051c0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800051c0:	fd010113          	addi	sp,sp,-48
    800051c4:	02113423          	sd	ra,40(sp)
    800051c8:	02813023          	sd	s0,32(sp)
    800051cc:	00913c23          	sd	s1,24(sp)
    800051d0:	01213823          	sd	s2,16(sp)
    800051d4:	01313423          	sd	s3,8(sp)
    800051d8:	01413023          	sd	s4,0(sp)
    800051dc:	03010413          	addi	s0,sp,48
    800051e0:	00050993          	mv	s3,a0
    800051e4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800051e8:	00000a13          	li	s4,0
    800051ec:	01c0006f          	j	80005208 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800051f0:	ffffe097          	auipc	ra,0xffffe
    800051f4:	970080e7          	jalr	-1680(ra) # 80002b60 <_ZN6Thread8dispatchEv>
    800051f8:	0500006f          	j	80005248 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800051fc:	00a00513          	li	a0,10
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	404080e7          	jalr	1028(ra) # 80001604 <_Z4putcc>
    while (!threadEnd) {
    80005208:	00007797          	auipc	a5,0x7
    8000520c:	a187a783          	lw	a5,-1512(a5) # 8000bc20 <_ZL9threadEnd>
    80005210:	06079263          	bnez	a5,80005274 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005214:	00893503          	ld	a0,8(s2)
    80005218:	00001097          	auipc	ra,0x1
    8000521c:	b94080e7          	jalr	-1132(ra) # 80005dac <_ZN9BufferCPP3getEv>
        i++;
    80005220:	001a049b          	addiw	s1,s4,1
    80005224:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005228:	0ff57513          	andi	a0,a0,255
    8000522c:	ffffc097          	auipc	ra,0xffffc
    80005230:	3d8080e7          	jalr	984(ra) # 80001604 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005234:	00092703          	lw	a4,0(s2)
    80005238:	0027179b          	slliw	a5,a4,0x2
    8000523c:	00e787bb          	addw	a5,a5,a4
    80005240:	02f4e7bb          	remw	a5,s1,a5
    80005244:	fa0786e3          	beqz	a5,800051f0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005248:	05000793          	li	a5,80
    8000524c:	02f4e4bb          	remw	s1,s1,a5
    80005250:	fa049ce3          	bnez	s1,80005208 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005254:	fa9ff06f          	j	800051fc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005258:	0209b783          	ld	a5,32(s3)
    8000525c:	0087b503          	ld	a0,8(a5)
    80005260:	00001097          	auipc	ra,0x1
    80005264:	b4c080e7          	jalr	-1204(ra) # 80005dac <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005268:	0ff57513          	andi	a0,a0,255
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	b48080e7          	jalr	-1208(ra) # 80002db4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005274:	0209b783          	ld	a5,32(s3)
    80005278:	0087b503          	ld	a0,8(a5)
    8000527c:	00001097          	auipc	ra,0x1
    80005280:	bbc080e7          	jalr	-1092(ra) # 80005e38 <_ZN9BufferCPP6getCntEv>
    80005284:	fca04ae3          	bgtz	a0,80005258 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005288:	01093503          	ld	a0,16(s2)
    8000528c:	ffffe097          	auipc	ra,0xffffe
    80005290:	9bc080e7          	jalr	-1604(ra) # 80002c48 <_ZN9Semaphore6signalEv>
}
    80005294:	02813083          	ld	ra,40(sp)
    80005298:	02013403          	ld	s0,32(sp)
    8000529c:	01813483          	ld	s1,24(sp)
    800052a0:	01013903          	ld	s2,16(sp)
    800052a4:	00813983          	ld	s3,8(sp)
    800052a8:	00013a03          	ld	s4,0(sp)
    800052ac:	03010113          	addi	sp,sp,48
    800052b0:	00008067          	ret

00000000800052b4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800052b4:	f8010113          	addi	sp,sp,-128
    800052b8:	06113c23          	sd	ra,120(sp)
    800052bc:	06813823          	sd	s0,112(sp)
    800052c0:	06913423          	sd	s1,104(sp)
    800052c4:	07213023          	sd	s2,96(sp)
    800052c8:	05313c23          	sd	s3,88(sp)
    800052cc:	05413823          	sd	s4,80(sp)
    800052d0:	05513423          	sd	s5,72(sp)
    800052d4:	05613023          	sd	s6,64(sp)
    800052d8:	03713c23          	sd	s7,56(sp)
    800052dc:	03813823          	sd	s8,48(sp)
    800052e0:	03913423          	sd	s9,40(sp)
    800052e4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800052e8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800052ec:	00004517          	auipc	a0,0x4
    800052f0:	e6450513          	addi	a0,a0,-412 # 80009150 <CONSOLE_STATUS+0x140>
    800052f4:	00000097          	auipc	ra,0x0
    800052f8:	604080e7          	jalr	1540(ra) # 800058f8 <_Z11printStringPKc>
    getString(input, 30);
    800052fc:	01e00593          	li	a1,30
    80005300:	f8040493          	addi	s1,s0,-128
    80005304:	00048513          	mv	a0,s1
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	678080e7          	jalr	1656(ra) # 80005980 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005310:	00048513          	mv	a0,s1
    80005314:	00000097          	auipc	ra,0x0
    80005318:	744080e7          	jalr	1860(ra) # 80005a58 <_Z11stringToIntPKc>
    8000531c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005320:	00004517          	auipc	a0,0x4
    80005324:	e5050513          	addi	a0,a0,-432 # 80009170 <CONSOLE_STATUS+0x160>
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	5d0080e7          	jalr	1488(ra) # 800058f8 <_Z11printStringPKc>
    getString(input, 30);
    80005330:	01e00593          	li	a1,30
    80005334:	00048513          	mv	a0,s1
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	648080e7          	jalr	1608(ra) # 80005980 <_Z9getStringPci>
    n = stringToInt(input);
    80005340:	00048513          	mv	a0,s1
    80005344:	00000097          	auipc	ra,0x0
    80005348:	714080e7          	jalr	1812(ra) # 80005a58 <_Z11stringToIntPKc>
    8000534c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005350:	00004517          	auipc	a0,0x4
    80005354:	e4050513          	addi	a0,a0,-448 # 80009190 <CONSOLE_STATUS+0x180>
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	5a0080e7          	jalr	1440(ra) # 800058f8 <_Z11printStringPKc>
    80005360:	00000613          	li	a2,0
    80005364:	00a00593          	li	a1,10
    80005368:	00090513          	mv	a0,s2
    8000536c:	00000097          	auipc	ra,0x0
    80005370:	73c080e7          	jalr	1852(ra) # 80005aa8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005374:	00004517          	auipc	a0,0x4
    80005378:	e3450513          	addi	a0,a0,-460 # 800091a8 <CONSOLE_STATUS+0x198>
    8000537c:	00000097          	auipc	ra,0x0
    80005380:	57c080e7          	jalr	1404(ra) # 800058f8 <_Z11printStringPKc>
    80005384:	00000613          	li	a2,0
    80005388:	00a00593          	li	a1,10
    8000538c:	00048513          	mv	a0,s1
    80005390:	00000097          	auipc	ra,0x0
    80005394:	718080e7          	jalr	1816(ra) # 80005aa8 <_Z8printIntiii>
    printString(".\n");
    80005398:	00004517          	auipc	a0,0x4
    8000539c:	e2850513          	addi	a0,a0,-472 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	558080e7          	jalr	1368(ra) # 800058f8 <_Z11printStringPKc>
    if(threadNum > n) {
    800053a8:	0324c463          	blt	s1,s2,800053d0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800053ac:	03205c63          	blez	s2,800053e4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800053b0:	03800513          	li	a0,56
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	5c0080e7          	jalr	1472(ra) # 80002974 <_Znwm>
    800053bc:	00050a93          	mv	s5,a0
    800053c0:	00048593          	mv	a1,s1
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	804080e7          	jalr	-2044(ra) # 80005bc8 <_ZN9BufferCPPC1Ei>
    800053cc:	0300006f          	j	800053fc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800053d0:	00004517          	auipc	a0,0x4
    800053d4:	df850513          	addi	a0,a0,-520 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800053d8:	00000097          	auipc	ra,0x0
    800053dc:	520080e7          	jalr	1312(ra) # 800058f8 <_Z11printStringPKc>
        return;
    800053e0:	0140006f          	j	800053f4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800053e4:	00004517          	auipc	a0,0x4
    800053e8:	e2450513          	addi	a0,a0,-476 # 80009208 <CONSOLE_STATUS+0x1f8>
    800053ec:	00000097          	auipc	ra,0x0
    800053f0:	50c080e7          	jalr	1292(ra) # 800058f8 <_Z11printStringPKc>
        return;
    800053f4:	000b8113          	mv	sp,s7
    800053f8:	2380006f          	j	80005630 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800053fc:	01000513          	li	a0,16
    80005400:	ffffd097          	auipc	ra,0xffffd
    80005404:	574080e7          	jalr	1396(ra) # 80002974 <_Znwm>
    80005408:	00050493          	mv	s1,a0
    8000540c:	00000593          	li	a1,0
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	7d4080e7          	jalr	2004(ra) # 80002be4 <_ZN9SemaphoreC1Ej>
    80005418:	00007797          	auipc	a5,0x7
    8000541c:	8097b823          	sd	s1,-2032(a5) # 8000bc28 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005420:	00391793          	slli	a5,s2,0x3
    80005424:	00f78793          	addi	a5,a5,15
    80005428:	ff07f793          	andi	a5,a5,-16
    8000542c:	40f10133          	sub	sp,sp,a5
    80005430:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005434:	0019071b          	addiw	a4,s2,1
    80005438:	00171793          	slli	a5,a4,0x1
    8000543c:	00e787b3          	add	a5,a5,a4
    80005440:	00379793          	slli	a5,a5,0x3
    80005444:	00f78793          	addi	a5,a5,15
    80005448:	ff07f793          	andi	a5,a5,-16
    8000544c:	40f10133          	sub	sp,sp,a5
    80005450:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005454:	00191c13          	slli	s8,s2,0x1
    80005458:	012c07b3          	add	a5,s8,s2
    8000545c:	00379793          	slli	a5,a5,0x3
    80005460:	00fa07b3          	add	a5,s4,a5
    80005464:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005468:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000546c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005470:	02800513          	li	a0,40
    80005474:	ffffd097          	auipc	ra,0xffffd
    80005478:	500080e7          	jalr	1280(ra) # 80002974 <_Znwm>
    8000547c:	00050b13          	mv	s6,a0
    80005480:	012c0c33          	add	s8,s8,s2
    80005484:	003c1c13          	slli	s8,s8,0x3
    80005488:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	724080e7          	jalr	1828(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80005494:	00006797          	auipc	a5,0x6
    80005498:	60478793          	addi	a5,a5,1540 # 8000ba98 <_ZTV12ConsumerSync+0x10>
    8000549c:	00fb3023          	sd	a5,0(s6)
    800054a0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800054a4:	000b0513          	mv	a0,s6
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	684080e7          	jalr	1668(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054b0:	00000493          	li	s1,0
    800054b4:	0380006f          	j	800054ec <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800054b8:	00006797          	auipc	a5,0x6
    800054bc:	5b878793          	addi	a5,a5,1464 # 8000ba70 <_ZTV12ProducerSync+0x10>
    800054c0:	00fcb023          	sd	a5,0(s9)
    800054c4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800054c8:	00349793          	slli	a5,s1,0x3
    800054cc:	00f987b3          	add	a5,s3,a5
    800054d0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800054d4:	00349793          	slli	a5,s1,0x3
    800054d8:	00f987b3          	add	a5,s3,a5
    800054dc:	0007b503          	ld	a0,0(a5)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	64c080e7          	jalr	1612(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054e8:	0014849b          	addiw	s1,s1,1
    800054ec:	0b24d063          	bge	s1,s2,8000558c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800054f0:	00149793          	slli	a5,s1,0x1
    800054f4:	009787b3          	add	a5,a5,s1
    800054f8:	00379793          	slli	a5,a5,0x3
    800054fc:	00fa07b3          	add	a5,s4,a5
    80005500:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005504:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005508:	00006717          	auipc	a4,0x6
    8000550c:	72073703          	ld	a4,1824(a4) # 8000bc28 <_ZL10waitForAll>
    80005510:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005514:	02905863          	blez	s1,80005544 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005518:	02800513          	li	a0,40
    8000551c:	ffffd097          	auipc	ra,0xffffd
    80005520:	458080e7          	jalr	1112(ra) # 80002974 <_Znwm>
    80005524:	00050c93          	mv	s9,a0
    80005528:	00149c13          	slli	s8,s1,0x1
    8000552c:	009c0c33          	add	s8,s8,s1
    80005530:	003c1c13          	slli	s8,s8,0x3
    80005534:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	678080e7          	jalr	1656(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    80005540:	f79ff06f          	j	800054b8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005544:	02800513          	li	a0,40
    80005548:	ffffd097          	auipc	ra,0xffffd
    8000554c:	42c080e7          	jalr	1068(ra) # 80002974 <_Znwm>
    80005550:	00050c93          	mv	s9,a0
    80005554:	00149c13          	slli	s8,s1,0x1
    80005558:	009c0c33          	add	s8,s8,s1
    8000555c:	003c1c13          	slli	s8,s8,0x3
    80005560:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	64c080e7          	jalr	1612(ra) # 80002bb0 <_ZN6ThreadC1Ev>
    8000556c:	00006797          	auipc	a5,0x6
    80005570:	4dc78793          	addi	a5,a5,1244 # 8000ba48 <_ZTV16ProducerKeyboard+0x10>
    80005574:	00fcb023          	sd	a5,0(s9)
    80005578:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000557c:	00349793          	slli	a5,s1,0x3
    80005580:	00f987b3          	add	a5,s3,a5
    80005584:	0197b023          	sd	s9,0(a5)
    80005588:	f4dff06f          	j	800054d4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	5d4080e7          	jalr	1492(ra) # 80002b60 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005594:	00000493          	li	s1,0
    80005598:	00994e63          	blt	s2,s1,800055b4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000559c:	00006517          	auipc	a0,0x6
    800055a0:	68c53503          	ld	a0,1676(a0) # 8000bc28 <_ZL10waitForAll>
    800055a4:	ffffd097          	auipc	ra,0xffffd
    800055a8:	678080e7          	jalr	1656(ra) # 80002c1c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800055ac:	0014849b          	addiw	s1,s1,1
    800055b0:	fe9ff06f          	j	80005598 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800055b4:	00000493          	li	s1,0
    800055b8:	0080006f          	j	800055c0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800055bc:	0014849b          	addiw	s1,s1,1
    800055c0:	0324d263          	bge	s1,s2,800055e4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800055c4:	00349793          	slli	a5,s1,0x3
    800055c8:	00f987b3          	add	a5,s3,a5
    800055cc:	0007b503          	ld	a0,0(a5)
    800055d0:	fe0506e3          	beqz	a0,800055bc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800055d4:	00053783          	ld	a5,0(a0)
    800055d8:	0087b783          	ld	a5,8(a5)
    800055dc:	000780e7          	jalr	a5
    800055e0:	fddff06f          	j	800055bc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800055e4:	000b0a63          	beqz	s6,800055f8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800055e8:	000b3783          	ld	a5,0(s6)
    800055ec:	0087b783          	ld	a5,8(a5)
    800055f0:	000b0513          	mv	a0,s6
    800055f4:	000780e7          	jalr	a5
    delete waitForAll;
    800055f8:	00006517          	auipc	a0,0x6
    800055fc:	63053503          	ld	a0,1584(a0) # 8000bc28 <_ZL10waitForAll>
    80005600:	00050863          	beqz	a0,80005610 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005604:	00053783          	ld	a5,0(a0)
    80005608:	0087b783          	ld	a5,8(a5)
    8000560c:	000780e7          	jalr	a5
    delete buffer;
    80005610:	000a8e63          	beqz	s5,8000562c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005614:	000a8513          	mv	a0,s5
    80005618:	00001097          	auipc	ra,0x1
    8000561c:	8a8080e7          	jalr	-1880(ra) # 80005ec0 <_ZN9BufferCPPD1Ev>
    80005620:	000a8513          	mv	a0,s5
    80005624:	ffffd097          	auipc	ra,0xffffd
    80005628:	3c0080e7          	jalr	960(ra) # 800029e4 <_ZdlPv>
    8000562c:	000b8113          	mv	sp,s7

}
    80005630:	f8040113          	addi	sp,s0,-128
    80005634:	07813083          	ld	ra,120(sp)
    80005638:	07013403          	ld	s0,112(sp)
    8000563c:	06813483          	ld	s1,104(sp)
    80005640:	06013903          	ld	s2,96(sp)
    80005644:	05813983          	ld	s3,88(sp)
    80005648:	05013a03          	ld	s4,80(sp)
    8000564c:	04813a83          	ld	s5,72(sp)
    80005650:	04013b03          	ld	s6,64(sp)
    80005654:	03813b83          	ld	s7,56(sp)
    80005658:	03013c03          	ld	s8,48(sp)
    8000565c:	02813c83          	ld	s9,40(sp)
    80005660:	08010113          	addi	sp,sp,128
    80005664:	00008067          	ret
    80005668:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000566c:	000a8513          	mv	a0,s5
    80005670:	ffffd097          	auipc	ra,0xffffd
    80005674:	374080e7          	jalr	884(ra) # 800029e4 <_ZdlPv>
    80005678:	00048513          	mv	a0,s1
    8000567c:	00007097          	auipc	ra,0x7
    80005680:	68c080e7          	jalr	1676(ra) # 8000cd08 <_Unwind_Resume>
    80005684:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005688:	00048513          	mv	a0,s1
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	358080e7          	jalr	856(ra) # 800029e4 <_ZdlPv>
    80005694:	00090513          	mv	a0,s2
    80005698:	00007097          	auipc	ra,0x7
    8000569c:	670080e7          	jalr	1648(ra) # 8000cd08 <_Unwind_Resume>
    800056a0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800056a4:	000b0513          	mv	a0,s6
    800056a8:	ffffd097          	auipc	ra,0xffffd
    800056ac:	33c080e7          	jalr	828(ra) # 800029e4 <_ZdlPv>
    800056b0:	00048513          	mv	a0,s1
    800056b4:	00007097          	auipc	ra,0x7
    800056b8:	654080e7          	jalr	1620(ra) # 8000cd08 <_Unwind_Resume>
    800056bc:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800056c0:	000c8513          	mv	a0,s9
    800056c4:	ffffd097          	auipc	ra,0xffffd
    800056c8:	320080e7          	jalr	800(ra) # 800029e4 <_ZdlPv>
    800056cc:	00048513          	mv	a0,s1
    800056d0:	00007097          	auipc	ra,0x7
    800056d4:	638080e7          	jalr	1592(ra) # 8000cd08 <_Unwind_Resume>
    800056d8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800056dc:	000c8513          	mv	a0,s9
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	304080e7          	jalr	772(ra) # 800029e4 <_ZdlPv>
    800056e8:	00048513          	mv	a0,s1
    800056ec:	00007097          	auipc	ra,0x7
    800056f0:	61c080e7          	jalr	1564(ra) # 8000cd08 <_Unwind_Resume>

00000000800056f4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800056f4:	ff010113          	addi	sp,sp,-16
    800056f8:	00113423          	sd	ra,8(sp)
    800056fc:	00813023          	sd	s0,0(sp)
    80005700:	01010413          	addi	s0,sp,16
    80005704:	00006797          	auipc	a5,0x6
    80005708:	39478793          	addi	a5,a5,916 # 8000ba98 <_ZTV12ConsumerSync+0x10>
    8000570c:	00f53023          	sd	a5,0(a0)
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	2fc080e7          	jalr	764(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80005718:	00813083          	ld	ra,8(sp)
    8000571c:	00013403          	ld	s0,0(sp)
    80005720:	01010113          	addi	sp,sp,16
    80005724:	00008067          	ret

0000000080005728 <_ZN12ConsumerSyncD0Ev>:
    80005728:	fe010113          	addi	sp,sp,-32
    8000572c:	00113c23          	sd	ra,24(sp)
    80005730:	00813823          	sd	s0,16(sp)
    80005734:	00913423          	sd	s1,8(sp)
    80005738:	02010413          	addi	s0,sp,32
    8000573c:	00050493          	mv	s1,a0
    80005740:	00006797          	auipc	a5,0x6
    80005744:	35878793          	addi	a5,a5,856 # 8000ba98 <_ZTV12ConsumerSync+0x10>
    80005748:	00f53023          	sd	a5,0(a0)
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	2c0080e7          	jalr	704(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80005754:	00048513          	mv	a0,s1
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	28c080e7          	jalr	652(ra) # 800029e4 <_ZdlPv>
    80005760:	01813083          	ld	ra,24(sp)
    80005764:	01013403          	ld	s0,16(sp)
    80005768:	00813483          	ld	s1,8(sp)
    8000576c:	02010113          	addi	sp,sp,32
    80005770:	00008067          	ret

0000000080005774 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005774:	ff010113          	addi	sp,sp,-16
    80005778:	00113423          	sd	ra,8(sp)
    8000577c:	00813023          	sd	s0,0(sp)
    80005780:	01010413          	addi	s0,sp,16
    80005784:	00006797          	auipc	a5,0x6
    80005788:	2ec78793          	addi	a5,a5,748 # 8000ba70 <_ZTV12ProducerSync+0x10>
    8000578c:	00f53023          	sd	a5,0(a0)
    80005790:	ffffd097          	auipc	ra,0xffffd
    80005794:	27c080e7          	jalr	636(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80005798:	00813083          	ld	ra,8(sp)
    8000579c:	00013403          	ld	s0,0(sp)
    800057a0:	01010113          	addi	sp,sp,16
    800057a4:	00008067          	ret

00000000800057a8 <_ZN12ProducerSyncD0Ev>:
    800057a8:	fe010113          	addi	sp,sp,-32
    800057ac:	00113c23          	sd	ra,24(sp)
    800057b0:	00813823          	sd	s0,16(sp)
    800057b4:	00913423          	sd	s1,8(sp)
    800057b8:	02010413          	addi	s0,sp,32
    800057bc:	00050493          	mv	s1,a0
    800057c0:	00006797          	auipc	a5,0x6
    800057c4:	2b078793          	addi	a5,a5,688 # 8000ba70 <_ZTV12ProducerSync+0x10>
    800057c8:	00f53023          	sd	a5,0(a0)
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	240080e7          	jalr	576(ra) # 80002a0c <_ZN6ThreadD1Ev>
    800057d4:	00048513          	mv	a0,s1
    800057d8:	ffffd097          	auipc	ra,0xffffd
    800057dc:	20c080e7          	jalr	524(ra) # 800029e4 <_ZdlPv>
    800057e0:	01813083          	ld	ra,24(sp)
    800057e4:	01013403          	ld	s0,16(sp)
    800057e8:	00813483          	ld	s1,8(sp)
    800057ec:	02010113          	addi	sp,sp,32
    800057f0:	00008067          	ret

00000000800057f4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800057f4:	ff010113          	addi	sp,sp,-16
    800057f8:	00113423          	sd	ra,8(sp)
    800057fc:	00813023          	sd	s0,0(sp)
    80005800:	01010413          	addi	s0,sp,16
    80005804:	00006797          	auipc	a5,0x6
    80005808:	24478793          	addi	a5,a5,580 # 8000ba48 <_ZTV16ProducerKeyboard+0x10>
    8000580c:	00f53023          	sd	a5,0(a0)
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	1fc080e7          	jalr	508(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80005818:	00813083          	ld	ra,8(sp)
    8000581c:	00013403          	ld	s0,0(sp)
    80005820:	01010113          	addi	sp,sp,16
    80005824:	00008067          	ret

0000000080005828 <_ZN16ProducerKeyboardD0Ev>:
    80005828:	fe010113          	addi	sp,sp,-32
    8000582c:	00113c23          	sd	ra,24(sp)
    80005830:	00813823          	sd	s0,16(sp)
    80005834:	00913423          	sd	s1,8(sp)
    80005838:	02010413          	addi	s0,sp,32
    8000583c:	00050493          	mv	s1,a0
    80005840:	00006797          	auipc	a5,0x6
    80005844:	20878793          	addi	a5,a5,520 # 8000ba48 <_ZTV16ProducerKeyboard+0x10>
    80005848:	00f53023          	sd	a5,0(a0)
    8000584c:	ffffd097          	auipc	ra,0xffffd
    80005850:	1c0080e7          	jalr	448(ra) # 80002a0c <_ZN6ThreadD1Ev>
    80005854:	00048513          	mv	a0,s1
    80005858:	ffffd097          	auipc	ra,0xffffd
    8000585c:	18c080e7          	jalr	396(ra) # 800029e4 <_ZdlPv>
    80005860:	01813083          	ld	ra,24(sp)
    80005864:	01013403          	ld	s0,16(sp)
    80005868:	00813483          	ld	s1,8(sp)
    8000586c:	02010113          	addi	sp,sp,32
    80005870:	00008067          	ret

0000000080005874 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005874:	ff010113          	addi	sp,sp,-16
    80005878:	00113423          	sd	ra,8(sp)
    8000587c:	00813023          	sd	s0,0(sp)
    80005880:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005884:	02053583          	ld	a1,32(a0)
    80005888:	fffff097          	auipc	ra,0xfffff
    8000588c:	7e4080e7          	jalr	2020(ra) # 8000506c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005890:	00813083          	ld	ra,8(sp)
    80005894:	00013403          	ld	s0,0(sp)
    80005898:	01010113          	addi	sp,sp,16
    8000589c:	00008067          	ret

00000000800058a0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800058a0:	ff010113          	addi	sp,sp,-16
    800058a4:	00113423          	sd	ra,8(sp)
    800058a8:	00813023          	sd	s0,0(sp)
    800058ac:	01010413          	addi	s0,sp,16
        producer(td);
    800058b0:	02053583          	ld	a1,32(a0)
    800058b4:	00000097          	auipc	ra,0x0
    800058b8:	878080e7          	jalr	-1928(ra) # 8000512c <_ZN12ProducerSync8producerEPv>
    }
    800058bc:	00813083          	ld	ra,8(sp)
    800058c0:	00013403          	ld	s0,0(sp)
    800058c4:	01010113          	addi	sp,sp,16
    800058c8:	00008067          	ret

00000000800058cc <_ZN12ConsumerSync3runEv>:
    void run() override {
    800058cc:	ff010113          	addi	sp,sp,-16
    800058d0:	00113423          	sd	ra,8(sp)
    800058d4:	00813023          	sd	s0,0(sp)
    800058d8:	01010413          	addi	s0,sp,16
        consumer(td);
    800058dc:	02053583          	ld	a1,32(a0)
    800058e0:	00000097          	auipc	ra,0x0
    800058e4:	8e0080e7          	jalr	-1824(ra) # 800051c0 <_ZN12ConsumerSync8consumerEPv>
    }
    800058e8:	00813083          	ld	ra,8(sp)
    800058ec:	00013403          	ld	s0,0(sp)
    800058f0:	01010113          	addi	sp,sp,16
    800058f4:	00008067          	ret

00000000800058f8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800058f8:	fe010113          	addi	sp,sp,-32
    800058fc:	00113c23          	sd	ra,24(sp)
    80005900:	00813823          	sd	s0,16(sp)
    80005904:	00913423          	sd	s1,8(sp)
    80005908:	02010413          	addi	s0,sp,32
    8000590c:	00050493          	mv	s1,a0
    LOCK();
    80005910:	00100613          	li	a2,1
    80005914:	00000593          	li	a1,0
    80005918:	00006517          	auipc	a0,0x6
    8000591c:	31850513          	addi	a0,a0,792 # 8000bc30 <lockPrint>
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	8fc080e7          	jalr	-1796(ra) # 8000121c <copy_and_swap>
    80005928:	00050863          	beqz	a0,80005938 <_Z11printStringPKc+0x40>
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	a5c080e7          	jalr	-1444(ra) # 80001388 <_Z15thread_dispatchv>
    80005934:	fddff06f          	j	80005910 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005938:	0004c503          	lbu	a0,0(s1)
    8000593c:	00050a63          	beqz	a0,80005950 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	cc4080e7          	jalr	-828(ra) # 80001604 <_Z4putcc>
        string++;
    80005948:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000594c:	fedff06f          	j	80005938 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005950:	00000613          	li	a2,0
    80005954:	00100593          	li	a1,1
    80005958:	00006517          	auipc	a0,0x6
    8000595c:	2d850513          	addi	a0,a0,728 # 8000bc30 <lockPrint>
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	8bc080e7          	jalr	-1860(ra) # 8000121c <copy_and_swap>
    80005968:	fe0514e3          	bnez	a0,80005950 <_Z11printStringPKc+0x58>
}
    8000596c:	01813083          	ld	ra,24(sp)
    80005970:	01013403          	ld	s0,16(sp)
    80005974:	00813483          	ld	s1,8(sp)
    80005978:	02010113          	addi	sp,sp,32
    8000597c:	00008067          	ret

0000000080005980 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005980:	fd010113          	addi	sp,sp,-48
    80005984:	02113423          	sd	ra,40(sp)
    80005988:	02813023          	sd	s0,32(sp)
    8000598c:	00913c23          	sd	s1,24(sp)
    80005990:	01213823          	sd	s2,16(sp)
    80005994:	01313423          	sd	s3,8(sp)
    80005998:	01413023          	sd	s4,0(sp)
    8000599c:	03010413          	addi	s0,sp,48
    800059a0:	00050993          	mv	s3,a0
    800059a4:	00058a13          	mv	s4,a1
    LOCK();
    800059a8:	00100613          	li	a2,1
    800059ac:	00000593          	li	a1,0
    800059b0:	00006517          	auipc	a0,0x6
    800059b4:	28050513          	addi	a0,a0,640 # 8000bc30 <lockPrint>
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	864080e7          	jalr	-1948(ra) # 8000121c <copy_and_swap>
    800059c0:	00050863          	beqz	a0,800059d0 <_Z9getStringPci+0x50>
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	9c4080e7          	jalr	-1596(ra) # 80001388 <_Z15thread_dispatchv>
    800059cc:	fddff06f          	j	800059a8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800059d0:	00000913          	li	s2,0
    800059d4:	00090493          	mv	s1,s2
    800059d8:	0019091b          	addiw	s2,s2,1
    800059dc:	03495a63          	bge	s2,s4,80005a10 <_Z9getStringPci+0x90>
        cc = getc();
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	be4080e7          	jalr	-1052(ra) # 800015c4 <_Z4getcv>
        if(cc < 1)
    800059e8:	02050463          	beqz	a0,80005a10 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800059ec:	009984b3          	add	s1,s3,s1
    800059f0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800059f4:	00a00793          	li	a5,10
    800059f8:	00f50a63          	beq	a0,a5,80005a0c <_Z9getStringPci+0x8c>
    800059fc:	00d00793          	li	a5,13
    80005a00:	fcf51ae3          	bne	a0,a5,800059d4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005a04:	00090493          	mv	s1,s2
    80005a08:	0080006f          	j	80005a10 <_Z9getStringPci+0x90>
    80005a0c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a10:	009984b3          	add	s1,s3,s1
    80005a14:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a18:	00000613          	li	a2,0
    80005a1c:	00100593          	li	a1,1
    80005a20:	00006517          	auipc	a0,0x6
    80005a24:	21050513          	addi	a0,a0,528 # 8000bc30 <lockPrint>
    80005a28:	ffffb097          	auipc	ra,0xffffb
    80005a2c:	7f4080e7          	jalr	2036(ra) # 8000121c <copy_and_swap>
    80005a30:	fe0514e3          	bnez	a0,80005a18 <_Z9getStringPci+0x98>
    return buf;
}
    80005a34:	00098513          	mv	a0,s3
    80005a38:	02813083          	ld	ra,40(sp)
    80005a3c:	02013403          	ld	s0,32(sp)
    80005a40:	01813483          	ld	s1,24(sp)
    80005a44:	01013903          	ld	s2,16(sp)
    80005a48:	00813983          	ld	s3,8(sp)
    80005a4c:	00013a03          	ld	s4,0(sp)
    80005a50:	03010113          	addi	sp,sp,48
    80005a54:	00008067          	ret

0000000080005a58 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a58:	ff010113          	addi	sp,sp,-16
    80005a5c:	00813423          	sd	s0,8(sp)
    80005a60:	01010413          	addi	s0,sp,16
    80005a64:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a68:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005a6c:	0006c603          	lbu	a2,0(a3)
    80005a70:	fd06071b          	addiw	a4,a2,-48
    80005a74:	0ff77713          	andi	a4,a4,255
    80005a78:	00900793          	li	a5,9
    80005a7c:	02e7e063          	bltu	a5,a4,80005a9c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005a80:	0025179b          	slliw	a5,a0,0x2
    80005a84:	00a787bb          	addw	a5,a5,a0
    80005a88:	0017979b          	slliw	a5,a5,0x1
    80005a8c:	00168693          	addi	a3,a3,1
    80005a90:	00c787bb          	addw	a5,a5,a2
    80005a94:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005a98:	fd5ff06f          	j	80005a6c <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a9c:	00813403          	ld	s0,8(sp)
    80005aa0:	01010113          	addi	sp,sp,16
    80005aa4:	00008067          	ret

0000000080005aa8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005aa8:	fc010113          	addi	sp,sp,-64
    80005aac:	02113c23          	sd	ra,56(sp)
    80005ab0:	02813823          	sd	s0,48(sp)
    80005ab4:	02913423          	sd	s1,40(sp)
    80005ab8:	03213023          	sd	s2,32(sp)
    80005abc:	01313c23          	sd	s3,24(sp)
    80005ac0:	04010413          	addi	s0,sp,64
    80005ac4:	00050493          	mv	s1,a0
    80005ac8:	00058913          	mv	s2,a1
    80005acc:	00060993          	mv	s3,a2
    LOCK();
    80005ad0:	00100613          	li	a2,1
    80005ad4:	00000593          	li	a1,0
    80005ad8:	00006517          	auipc	a0,0x6
    80005adc:	15850513          	addi	a0,a0,344 # 8000bc30 <lockPrint>
    80005ae0:	ffffb097          	auipc	ra,0xffffb
    80005ae4:	73c080e7          	jalr	1852(ra) # 8000121c <copy_and_swap>
    80005ae8:	00050863          	beqz	a0,80005af8 <_Z8printIntiii+0x50>
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	89c080e7          	jalr	-1892(ra) # 80001388 <_Z15thread_dispatchv>
    80005af4:	fddff06f          	j	80005ad0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005af8:	00098463          	beqz	s3,80005b00 <_Z8printIntiii+0x58>
    80005afc:	0804c463          	bltz	s1,80005b84 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005b00:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005b04:	00000593          	li	a1,0
    }

    i = 0;
    80005b08:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005b0c:	0009079b          	sext.w	a5,s2
    80005b10:	0325773b          	remuw	a4,a0,s2
    80005b14:	00048613          	mv	a2,s1
    80005b18:	0014849b          	addiw	s1,s1,1
    80005b1c:	02071693          	slli	a3,a4,0x20
    80005b20:	0206d693          	srli	a3,a3,0x20
    80005b24:	00006717          	auipc	a4,0x6
    80005b28:	f8c70713          	addi	a4,a4,-116 # 8000bab0 <digits>
    80005b2c:	00d70733          	add	a4,a4,a3
    80005b30:	00074683          	lbu	a3,0(a4)
    80005b34:	fd040713          	addi	a4,s0,-48
    80005b38:	00c70733          	add	a4,a4,a2
    80005b3c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005b40:	0005071b          	sext.w	a4,a0
    80005b44:	0325553b          	divuw	a0,a0,s2
    80005b48:	fcf772e3          	bgeu	a4,a5,80005b0c <_Z8printIntiii+0x64>
    if(neg)
    80005b4c:	00058c63          	beqz	a1,80005b64 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005b50:	fd040793          	addi	a5,s0,-48
    80005b54:	009784b3          	add	s1,a5,s1
    80005b58:	02d00793          	li	a5,45
    80005b5c:	fef48823          	sb	a5,-16(s1)
    80005b60:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005b64:	fff4849b          	addiw	s1,s1,-1
    80005b68:	0204c463          	bltz	s1,80005b90 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005b6c:	fd040793          	addi	a5,s0,-48
    80005b70:	009787b3          	add	a5,a5,s1
    80005b74:	ff07c503          	lbu	a0,-16(a5)
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	a8c080e7          	jalr	-1396(ra) # 80001604 <_Z4putcc>
    80005b80:	fe5ff06f          	j	80005b64 <_Z8printIntiii+0xbc>
        x = -xx;
    80005b84:	4090053b          	negw	a0,s1
        neg = 1;
    80005b88:	00100593          	li	a1,1
        x = -xx;
    80005b8c:	f7dff06f          	j	80005b08 <_Z8printIntiii+0x60>

    UNLOCK();
    80005b90:	00000613          	li	a2,0
    80005b94:	00100593          	li	a1,1
    80005b98:	00006517          	auipc	a0,0x6
    80005b9c:	09850513          	addi	a0,a0,152 # 8000bc30 <lockPrint>
    80005ba0:	ffffb097          	auipc	ra,0xffffb
    80005ba4:	67c080e7          	jalr	1660(ra) # 8000121c <copy_and_swap>
    80005ba8:	fe0514e3          	bnez	a0,80005b90 <_Z8printIntiii+0xe8>
    80005bac:	03813083          	ld	ra,56(sp)
    80005bb0:	03013403          	ld	s0,48(sp)
    80005bb4:	02813483          	ld	s1,40(sp)
    80005bb8:	02013903          	ld	s2,32(sp)
    80005bbc:	01813983          	ld	s3,24(sp)
    80005bc0:	04010113          	addi	sp,sp,64
    80005bc4:	00008067          	ret

0000000080005bc8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005bc8:	fd010113          	addi	sp,sp,-48
    80005bcc:	02113423          	sd	ra,40(sp)
    80005bd0:	02813023          	sd	s0,32(sp)
    80005bd4:	00913c23          	sd	s1,24(sp)
    80005bd8:	01213823          	sd	s2,16(sp)
    80005bdc:	01313423          	sd	s3,8(sp)
    80005be0:	03010413          	addi	s0,sp,48
    80005be4:	00050493          	mv	s1,a0
    80005be8:	00058913          	mv	s2,a1
    80005bec:	0015879b          	addiw	a5,a1,1
    80005bf0:	0007851b          	sext.w	a0,a5
    80005bf4:	00f4a023          	sw	a5,0(s1)
    80005bf8:	0004a823          	sw	zero,16(s1)
    80005bfc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c00:	00251513          	slli	a0,a0,0x2
    80005c04:	ffffb097          	auipc	ra,0xffffb
    80005c08:	658080e7          	jalr	1624(ra) # 8000125c <_Z9mem_allocm>
    80005c0c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c10:	01000513          	li	a0,16
    80005c14:	ffffd097          	auipc	ra,0xffffd
    80005c18:	d60080e7          	jalr	-672(ra) # 80002974 <_Znwm>
    80005c1c:	00050993          	mv	s3,a0
    80005c20:	00000593          	li	a1,0
    80005c24:	ffffd097          	auipc	ra,0xffffd
    80005c28:	fc0080e7          	jalr	-64(ra) # 80002be4 <_ZN9SemaphoreC1Ej>
    80005c2c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c30:	01000513          	li	a0,16
    80005c34:	ffffd097          	auipc	ra,0xffffd
    80005c38:	d40080e7          	jalr	-704(ra) # 80002974 <_Znwm>
    80005c3c:	00050993          	mv	s3,a0
    80005c40:	00090593          	mv	a1,s2
    80005c44:	ffffd097          	auipc	ra,0xffffd
    80005c48:	fa0080e7          	jalr	-96(ra) # 80002be4 <_ZN9SemaphoreC1Ej>
    80005c4c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005c50:	01000513          	li	a0,16
    80005c54:	ffffd097          	auipc	ra,0xffffd
    80005c58:	d20080e7          	jalr	-736(ra) # 80002974 <_Znwm>
    80005c5c:	00050913          	mv	s2,a0
    80005c60:	00100593          	li	a1,1
    80005c64:	ffffd097          	auipc	ra,0xffffd
    80005c68:	f80080e7          	jalr	-128(ra) # 80002be4 <_ZN9SemaphoreC1Ej>
    80005c6c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005c70:	01000513          	li	a0,16
    80005c74:	ffffd097          	auipc	ra,0xffffd
    80005c78:	d00080e7          	jalr	-768(ra) # 80002974 <_Znwm>
    80005c7c:	00050913          	mv	s2,a0
    80005c80:	00100593          	li	a1,1
    80005c84:	ffffd097          	auipc	ra,0xffffd
    80005c88:	f60080e7          	jalr	-160(ra) # 80002be4 <_ZN9SemaphoreC1Ej>
    80005c8c:	0324b823          	sd	s2,48(s1)
}
    80005c90:	02813083          	ld	ra,40(sp)
    80005c94:	02013403          	ld	s0,32(sp)
    80005c98:	01813483          	ld	s1,24(sp)
    80005c9c:	01013903          	ld	s2,16(sp)
    80005ca0:	00813983          	ld	s3,8(sp)
    80005ca4:	03010113          	addi	sp,sp,48
    80005ca8:	00008067          	ret
    80005cac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005cb0:	00098513          	mv	a0,s3
    80005cb4:	ffffd097          	auipc	ra,0xffffd
    80005cb8:	d30080e7          	jalr	-720(ra) # 800029e4 <_ZdlPv>
    80005cbc:	00048513          	mv	a0,s1
    80005cc0:	00007097          	auipc	ra,0x7
    80005cc4:	048080e7          	jalr	72(ra) # 8000cd08 <_Unwind_Resume>
    80005cc8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005ccc:	00098513          	mv	a0,s3
    80005cd0:	ffffd097          	auipc	ra,0xffffd
    80005cd4:	d14080e7          	jalr	-748(ra) # 800029e4 <_ZdlPv>
    80005cd8:	00048513          	mv	a0,s1
    80005cdc:	00007097          	auipc	ra,0x7
    80005ce0:	02c080e7          	jalr	44(ra) # 8000cd08 <_Unwind_Resume>
    80005ce4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005ce8:	00090513          	mv	a0,s2
    80005cec:	ffffd097          	auipc	ra,0xffffd
    80005cf0:	cf8080e7          	jalr	-776(ra) # 800029e4 <_ZdlPv>
    80005cf4:	00048513          	mv	a0,s1
    80005cf8:	00007097          	auipc	ra,0x7
    80005cfc:	010080e7          	jalr	16(ra) # 8000cd08 <_Unwind_Resume>
    80005d00:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d04:	00090513          	mv	a0,s2
    80005d08:	ffffd097          	auipc	ra,0xffffd
    80005d0c:	cdc080e7          	jalr	-804(ra) # 800029e4 <_ZdlPv>
    80005d10:	00048513          	mv	a0,s1
    80005d14:	00007097          	auipc	ra,0x7
    80005d18:	ff4080e7          	jalr	-12(ra) # 8000cd08 <_Unwind_Resume>

0000000080005d1c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d1c:	fe010113          	addi	sp,sp,-32
    80005d20:	00113c23          	sd	ra,24(sp)
    80005d24:	00813823          	sd	s0,16(sp)
    80005d28:	00913423          	sd	s1,8(sp)
    80005d2c:	01213023          	sd	s2,0(sp)
    80005d30:	02010413          	addi	s0,sp,32
    80005d34:	00050493          	mv	s1,a0
    80005d38:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d3c:	01853503          	ld	a0,24(a0)
    80005d40:	ffffd097          	auipc	ra,0xffffd
    80005d44:	edc080e7          	jalr	-292(ra) # 80002c1c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d48:	0304b503          	ld	a0,48(s1)
    80005d4c:	ffffd097          	auipc	ra,0xffffd
    80005d50:	ed0080e7          	jalr	-304(ra) # 80002c1c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d54:	0084b783          	ld	a5,8(s1)
    80005d58:	0144a703          	lw	a4,20(s1)
    80005d5c:	00271713          	slli	a4,a4,0x2
    80005d60:	00e787b3          	add	a5,a5,a4
    80005d64:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d68:	0144a783          	lw	a5,20(s1)
    80005d6c:	0017879b          	addiw	a5,a5,1
    80005d70:	0004a703          	lw	a4,0(s1)
    80005d74:	02e7e7bb          	remw	a5,a5,a4
    80005d78:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d7c:	0304b503          	ld	a0,48(s1)
    80005d80:	ffffd097          	auipc	ra,0xffffd
    80005d84:	ec8080e7          	jalr	-312(ra) # 80002c48 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005d88:	0204b503          	ld	a0,32(s1)
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	ebc080e7          	jalr	-324(ra) # 80002c48 <_ZN9Semaphore6signalEv>

}
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	00013903          	ld	s2,0(sp)
    80005da4:	02010113          	addi	sp,sp,32
    80005da8:	00008067          	ret

0000000080005dac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005dac:	fe010113          	addi	sp,sp,-32
    80005db0:	00113c23          	sd	ra,24(sp)
    80005db4:	00813823          	sd	s0,16(sp)
    80005db8:	00913423          	sd	s1,8(sp)
    80005dbc:	01213023          	sd	s2,0(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    80005dc4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005dc8:	02053503          	ld	a0,32(a0)
    80005dcc:	ffffd097          	auipc	ra,0xffffd
    80005dd0:	e50080e7          	jalr	-432(ra) # 80002c1c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005dd4:	0284b503          	ld	a0,40(s1)
    80005dd8:	ffffd097          	auipc	ra,0xffffd
    80005ddc:	e44080e7          	jalr	-444(ra) # 80002c1c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005de0:	0084b703          	ld	a4,8(s1)
    80005de4:	0104a783          	lw	a5,16(s1)
    80005de8:	00279693          	slli	a3,a5,0x2
    80005dec:	00d70733          	add	a4,a4,a3
    80005df0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005df4:	0017879b          	addiw	a5,a5,1
    80005df8:	0004a703          	lw	a4,0(s1)
    80005dfc:	02e7e7bb          	remw	a5,a5,a4
    80005e00:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e04:	0284b503          	ld	a0,40(s1)
    80005e08:	ffffd097          	auipc	ra,0xffffd
    80005e0c:	e40080e7          	jalr	-448(ra) # 80002c48 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e10:	0184b503          	ld	a0,24(s1)
    80005e14:	ffffd097          	auipc	ra,0xffffd
    80005e18:	e34080e7          	jalr	-460(ra) # 80002c48 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e1c:	00090513          	mv	a0,s2
    80005e20:	01813083          	ld	ra,24(sp)
    80005e24:	01013403          	ld	s0,16(sp)
    80005e28:	00813483          	ld	s1,8(sp)
    80005e2c:	00013903          	ld	s2,0(sp)
    80005e30:	02010113          	addi	sp,sp,32
    80005e34:	00008067          	ret

0000000080005e38 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005e38:	fe010113          	addi	sp,sp,-32
    80005e3c:	00113c23          	sd	ra,24(sp)
    80005e40:	00813823          	sd	s0,16(sp)
    80005e44:	00913423          	sd	s1,8(sp)
    80005e48:	01213023          	sd	s2,0(sp)
    80005e4c:	02010413          	addi	s0,sp,32
    80005e50:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005e54:	02853503          	ld	a0,40(a0)
    80005e58:	ffffd097          	auipc	ra,0xffffd
    80005e5c:	dc4080e7          	jalr	-572(ra) # 80002c1c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005e60:	0304b503          	ld	a0,48(s1)
    80005e64:	ffffd097          	auipc	ra,0xffffd
    80005e68:	db8080e7          	jalr	-584(ra) # 80002c1c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005e6c:	0144a783          	lw	a5,20(s1)
    80005e70:	0104a903          	lw	s2,16(s1)
    80005e74:	0327ce63          	blt	a5,s2,80005eb0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005e78:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005e7c:	0304b503          	ld	a0,48(s1)
    80005e80:	ffffd097          	auipc	ra,0xffffd
    80005e84:	dc8080e7          	jalr	-568(ra) # 80002c48 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005e88:	0284b503          	ld	a0,40(s1)
    80005e8c:	ffffd097          	auipc	ra,0xffffd
    80005e90:	dbc080e7          	jalr	-580(ra) # 80002c48 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e94:	00090513          	mv	a0,s2
    80005e98:	01813083          	ld	ra,24(sp)
    80005e9c:	01013403          	ld	s0,16(sp)
    80005ea0:	00813483          	ld	s1,8(sp)
    80005ea4:	00013903          	ld	s2,0(sp)
    80005ea8:	02010113          	addi	sp,sp,32
    80005eac:	00008067          	ret
        ret = cap - head + tail;
    80005eb0:	0004a703          	lw	a4,0(s1)
    80005eb4:	4127093b          	subw	s2,a4,s2
    80005eb8:	00f9093b          	addw	s2,s2,a5
    80005ebc:	fc1ff06f          	j	80005e7c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005ec0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005ec0:	fe010113          	addi	sp,sp,-32
    80005ec4:	00113c23          	sd	ra,24(sp)
    80005ec8:	00813823          	sd	s0,16(sp)
    80005ecc:	00913423          	sd	s1,8(sp)
    80005ed0:	02010413          	addi	s0,sp,32
    80005ed4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005ed8:	00a00513          	li	a0,10
    80005edc:	ffffd097          	auipc	ra,0xffffd
    80005ee0:	ed8080e7          	jalr	-296(ra) # 80002db4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	44c50513          	addi	a0,a0,1100 # 80009330 <CONSOLE_STATUS+0x320>
    80005eec:	00000097          	auipc	ra,0x0
    80005ef0:	a0c080e7          	jalr	-1524(ra) # 800058f8 <_Z11printStringPKc>
    while (getCnt()) {
    80005ef4:	00048513          	mv	a0,s1
    80005ef8:	00000097          	auipc	ra,0x0
    80005efc:	f40080e7          	jalr	-192(ra) # 80005e38 <_ZN9BufferCPP6getCntEv>
    80005f00:	02050c63          	beqz	a0,80005f38 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005f04:	0084b783          	ld	a5,8(s1)
    80005f08:	0104a703          	lw	a4,16(s1)
    80005f0c:	00271713          	slli	a4,a4,0x2
    80005f10:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005f14:	0007c503          	lbu	a0,0(a5)
    80005f18:	ffffd097          	auipc	ra,0xffffd
    80005f1c:	e9c080e7          	jalr	-356(ra) # 80002db4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005f20:	0104a783          	lw	a5,16(s1)
    80005f24:	0017879b          	addiw	a5,a5,1
    80005f28:	0004a703          	lw	a4,0(s1)
    80005f2c:	02e7e7bb          	remw	a5,a5,a4
    80005f30:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005f34:	fc1ff06f          	j	80005ef4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005f38:	02100513          	li	a0,33
    80005f3c:	ffffd097          	auipc	ra,0xffffd
    80005f40:	e78080e7          	jalr	-392(ra) # 80002db4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005f44:	00a00513          	li	a0,10
    80005f48:	ffffd097          	auipc	ra,0xffffd
    80005f4c:	e6c080e7          	jalr	-404(ra) # 80002db4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005f50:	0084b503          	ld	a0,8(s1)
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	344080e7          	jalr	836(ra) # 80001298 <_Z8mem_freePv>
    delete itemAvailable;
    80005f5c:	0204b503          	ld	a0,32(s1)
    80005f60:	00050863          	beqz	a0,80005f70 <_ZN9BufferCPPD1Ev+0xb0>
    80005f64:	00053783          	ld	a5,0(a0)
    80005f68:	0087b783          	ld	a5,8(a5)
    80005f6c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005f70:	0184b503          	ld	a0,24(s1)
    80005f74:	00050863          	beqz	a0,80005f84 <_ZN9BufferCPPD1Ev+0xc4>
    80005f78:	00053783          	ld	a5,0(a0)
    80005f7c:	0087b783          	ld	a5,8(a5)
    80005f80:	000780e7          	jalr	a5
    delete mutexTail;
    80005f84:	0304b503          	ld	a0,48(s1)
    80005f88:	00050863          	beqz	a0,80005f98 <_ZN9BufferCPPD1Ev+0xd8>
    80005f8c:	00053783          	ld	a5,0(a0)
    80005f90:	0087b783          	ld	a5,8(a5)
    80005f94:	000780e7          	jalr	a5
    delete mutexHead;
    80005f98:	0284b503          	ld	a0,40(s1)
    80005f9c:	00050863          	beqz	a0,80005fac <_ZN9BufferCPPD1Ev+0xec>
    80005fa0:	00053783          	ld	a5,0(a0)
    80005fa4:	0087b783          	ld	a5,8(a5)
    80005fa8:	000780e7          	jalr	a5
}
    80005fac:	01813083          	ld	ra,24(sp)
    80005fb0:	01013403          	ld	s0,16(sp)
    80005fb4:	00813483          	ld	s1,8(sp)
    80005fb8:	02010113          	addi	sp,sp,32
    80005fbc:	00008067          	ret

0000000080005fc0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005fc0:	fe010113          	addi	sp,sp,-32
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	00813823          	sd	s0,16(sp)
    80005fcc:	00913423          	sd	s1,8(sp)
    80005fd0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	37450513          	addi	a0,a0,884 # 80009348 <CONSOLE_STATUS+0x338>
    80005fdc:	00000097          	auipc	ra,0x0
    80005fe0:	91c080e7          	jalr	-1764(ra) # 800058f8 <_Z11printStringPKc>
    int test = getc() - '0';
    80005fe4:	ffffb097          	auipc	ra,0xffffb
    80005fe8:	5e0080e7          	jalr	1504(ra) # 800015c4 <_Z4getcv>
    80005fec:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005ff0:	ffffb097          	auipc	ra,0xffffb
    80005ff4:	5d4080e7          	jalr	1492(ra) # 800015c4 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005ff8:	00700793          	li	a5,7
    80005ffc:	1097e263          	bltu	a5,s1,80006100 <_Z8userMainv+0x140>
    80006000:	00249493          	slli	s1,s1,0x2
    80006004:	00003717          	auipc	a4,0x3
    80006008:	59c70713          	addi	a4,a4,1436 # 800095a0 <CONSOLE_STATUS+0x590>
    8000600c:	00e484b3          	add	s1,s1,a4
    80006010:	0004a783          	lw	a5,0(s1)
    80006014:	00e787b3          	add	a5,a5,a4
    80006018:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	f54080e7          	jalr	-172(ra) # 80004f70 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006024:	00003517          	auipc	a0,0x3
    80006028:	34450513          	addi	a0,a0,836 # 80009368 <CONSOLE_STATUS+0x358>
    8000602c:	00000097          	auipc	ra,0x0
    80006030:	8cc080e7          	jalr	-1844(ra) # 800058f8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006034:	01813083          	ld	ra,24(sp)
    80006038:	01013403          	ld	s0,16(sp)
    8000603c:	00813483          	ld	s1,8(sp)
    80006040:	02010113          	addi	sp,sp,32
    80006044:	00008067          	ret
            Threads_CPP_API_test();
    80006048:	ffffe097          	auipc	ra,0xffffe
    8000604c:	e08080e7          	jalr	-504(ra) # 80003e50 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006050:	00003517          	auipc	a0,0x3
    80006054:	35850513          	addi	a0,a0,856 # 800093a8 <CONSOLE_STATUS+0x398>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	8a0080e7          	jalr	-1888(ra) # 800058f8 <_Z11printStringPKc>
            break;
    80006060:	fd5ff06f          	j	80006034 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006064:	ffffd097          	auipc	ra,0xffffd
    80006068:	640080e7          	jalr	1600(ra) # 800036a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000606c:	00003517          	auipc	a0,0x3
    80006070:	37c50513          	addi	a0,a0,892 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80006074:	00000097          	auipc	ra,0x0
    80006078:	884080e7          	jalr	-1916(ra) # 800058f8 <_Z11printStringPKc>
            break;
    8000607c:	fb9ff06f          	j	80006034 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006080:	fffff097          	auipc	ra,0xfffff
    80006084:	234080e7          	jalr	564(ra) # 800052b4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006088:	00003517          	auipc	a0,0x3
    8000608c:	3b050513          	addi	a0,a0,944 # 80009438 <CONSOLE_STATUS+0x428>
    80006090:	00000097          	auipc	ra,0x0
    80006094:	868080e7          	jalr	-1944(ra) # 800058f8 <_Z11printStringPKc>
            break;
    80006098:	f9dff06f          	j	80006034 <_Z8userMainv+0x74>
            testSleeping();
    8000609c:	00000097          	auipc	ra,0x0
    800060a0:	11c080e7          	jalr	284(ra) # 800061b8 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800060a4:	00003517          	auipc	a0,0x3
    800060a8:	3ec50513          	addi	a0,a0,1004 # 80009490 <CONSOLE_STATUS+0x480>
    800060ac:	00000097          	auipc	ra,0x0
    800060b0:	84c080e7          	jalr	-1972(ra) # 800058f8 <_Z11printStringPKc>
            break;
    800060b4:	f81ff06f          	j	80006034 <_Z8userMainv+0x74>
            testConsumerProducer();
    800060b8:	ffffe097          	auipc	ra,0xffffe
    800060bc:	258080e7          	jalr	600(ra) # 80004310 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800060c0:	00003517          	auipc	a0,0x3
    800060c4:	40050513          	addi	a0,a0,1024 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800060c8:	00000097          	auipc	ra,0x0
    800060cc:	830080e7          	jalr	-2000(ra) # 800058f8 <_Z11printStringPKc>
            break;
    800060d0:	f65ff06f          	j	80006034 <_Z8userMainv+0x74>
            System_Mode_test();
    800060d4:	00000097          	auipc	ra,0x0
    800060d8:	658080e7          	jalr	1624(ra) # 8000672c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800060dc:	00003517          	auipc	a0,0x3
    800060e0:	42450513          	addi	a0,a0,1060 # 80009500 <CONSOLE_STATUS+0x4f0>
    800060e4:	00000097          	auipc	ra,0x0
    800060e8:	814080e7          	jalr	-2028(ra) # 800058f8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	43450513          	addi	a0,a0,1076 # 80009520 <CONSOLE_STATUS+0x510>
    800060f4:	00000097          	auipc	ra,0x0
    800060f8:	804080e7          	jalr	-2044(ra) # 800058f8 <_Z11printStringPKc>
            break;
    800060fc:	f39ff06f          	j	80006034 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006100:	00003517          	auipc	a0,0x3
    80006104:	47850513          	addi	a0,a0,1144 # 80009578 <CONSOLE_STATUS+0x568>
    80006108:	fffff097          	auipc	ra,0xfffff
    8000610c:	7f0080e7          	jalr	2032(ra) # 800058f8 <_Z11printStringPKc>
    80006110:	f25ff06f          	j	80006034 <_Z8userMainv+0x74>

0000000080006114 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006114:	fe010113          	addi	sp,sp,-32
    80006118:	00113c23          	sd	ra,24(sp)
    8000611c:	00813823          	sd	s0,16(sp)
    80006120:	00913423          	sd	s1,8(sp)
    80006124:	01213023          	sd	s2,0(sp)
    80006128:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000612c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006130:	00600493          	li	s1,6
    while (--i > 0) {
    80006134:	fff4849b          	addiw	s1,s1,-1
    80006138:	04905463          	blez	s1,80006180 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	48450513          	addi	a0,a0,1156 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	7b4080e7          	jalr	1972(ra) # 800058f8 <_Z11printStringPKc>
        printInt(sleep_time);
    8000614c:	00000613          	li	a2,0
    80006150:	00a00593          	li	a1,10
    80006154:	0009051b          	sext.w	a0,s2
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	950080e7          	jalr	-1712(ra) # 80005aa8 <_Z8printIntiii>
        printString(" !\n");
    80006160:	00003517          	auipc	a0,0x3
    80006164:	46850513          	addi	a0,a0,1128 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006168:	fffff097          	auipc	ra,0xfffff
    8000616c:	790080e7          	jalr	1936(ra) # 800058f8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006170:	00090513          	mv	a0,s2
    80006174:	ffffb097          	auipc	ra,0xffffb
    80006178:	410080e7          	jalr	1040(ra) # 80001584 <_Z10time_sleepm>
    while (--i > 0) {
    8000617c:	fb9ff06f          	j	80006134 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006180:	00a00793          	li	a5,10
    80006184:	02f95933          	divu	s2,s2,a5
    80006188:	fff90913          	addi	s2,s2,-1
    8000618c:	00006797          	auipc	a5,0x6
    80006190:	aac78793          	addi	a5,a5,-1364 # 8000bc38 <_ZL8finished>
    80006194:	01278933          	add	s2,a5,s2
    80006198:	00100793          	li	a5,1
    8000619c:	00f90023          	sb	a5,0(s2)
}
    800061a0:	01813083          	ld	ra,24(sp)
    800061a4:	01013403          	ld	s0,16(sp)
    800061a8:	00813483          	ld	s1,8(sp)
    800061ac:	00013903          	ld	s2,0(sp)
    800061b0:	02010113          	addi	sp,sp,32
    800061b4:	00008067          	ret

00000000800061b8 <_Z12testSleepingv>:

void testSleeping() {
    800061b8:	fc010113          	addi	sp,sp,-64
    800061bc:	02113c23          	sd	ra,56(sp)
    800061c0:	02813823          	sd	s0,48(sp)
    800061c4:	02913423          	sd	s1,40(sp)
    800061c8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800061cc:	00a00793          	li	a5,10
    800061d0:	fcf43823          	sd	a5,-48(s0)
    800061d4:	01400793          	li	a5,20
    800061d8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800061dc:	00000493          	li	s1,0
    800061e0:	02c0006f          	j	8000620c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800061e4:	00349793          	slli	a5,s1,0x3
    800061e8:	fd040613          	addi	a2,s0,-48
    800061ec:	00f60633          	add	a2,a2,a5
    800061f0:	00000597          	auipc	a1,0x0
    800061f4:	f2458593          	addi	a1,a1,-220 # 80006114 <_ZL9sleepyRunPv>
    800061f8:	fc040513          	addi	a0,s0,-64
    800061fc:	00f50533          	add	a0,a0,a5
    80006200:	ffffb097          	auipc	ra,0xffffb
    80006204:	0d8080e7          	jalr	216(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006208:	0014849b          	addiw	s1,s1,1
    8000620c:	00100793          	li	a5,1
    80006210:	fc97dae3          	bge	a5,s1,800061e4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006214:	00006797          	auipc	a5,0x6
    80006218:	a247c783          	lbu	a5,-1500(a5) # 8000bc38 <_ZL8finished>
    8000621c:	fe078ce3          	beqz	a5,80006214 <_Z12testSleepingv+0x5c>
    80006220:	00006797          	auipc	a5,0x6
    80006224:	a197c783          	lbu	a5,-1511(a5) # 8000bc39 <_ZL8finished+0x1>
    80006228:	fe0786e3          	beqz	a5,80006214 <_Z12testSleepingv+0x5c>
}
    8000622c:	03813083          	ld	ra,56(sp)
    80006230:	03013403          	ld	s0,48(sp)
    80006234:	02813483          	ld	s1,40(sp)
    80006238:	04010113          	addi	sp,sp,64
    8000623c:	00008067          	ret

0000000080006240 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	01213023          	sd	s2,0(sp)
    80006254:	02010413          	addi	s0,sp,32
    80006258:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000625c:	00100793          	li	a5,1
    80006260:	02a7f863          	bgeu	a5,a0,80006290 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006264:	00a00793          	li	a5,10
    80006268:	02f577b3          	remu	a5,a0,a5
    8000626c:	02078e63          	beqz	a5,800062a8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006270:	fff48513          	addi	a0,s1,-1
    80006274:	00000097          	auipc	ra,0x0
    80006278:	fcc080e7          	jalr	-52(ra) # 80006240 <_ZL9fibonaccim>
    8000627c:	00050913          	mv	s2,a0
    80006280:	ffe48513          	addi	a0,s1,-2
    80006284:	00000097          	auipc	ra,0x0
    80006288:	fbc080e7          	jalr	-68(ra) # 80006240 <_ZL9fibonaccim>
    8000628c:	00a90533          	add	a0,s2,a0
}
    80006290:	01813083          	ld	ra,24(sp)
    80006294:	01013403          	ld	s0,16(sp)
    80006298:	00813483          	ld	s1,8(sp)
    8000629c:	00013903          	ld	s2,0(sp)
    800062a0:	02010113          	addi	sp,sp,32
    800062a4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	0e0080e7          	jalr	224(ra) # 80001388 <_Z15thread_dispatchv>
    800062b0:	fc1ff06f          	j	80006270 <_ZL9fibonaccim+0x30>

00000000800062b4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800062b4:	fe010113          	addi	sp,sp,-32
    800062b8:	00113c23          	sd	ra,24(sp)
    800062bc:	00813823          	sd	s0,16(sp)
    800062c0:	00913423          	sd	s1,8(sp)
    800062c4:	01213023          	sd	s2,0(sp)
    800062c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800062cc:	00a00493          	li	s1,10
    800062d0:	0400006f          	j	80006310 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800062d4:	00003517          	auipc	a0,0x3
    800062d8:	fc450513          	addi	a0,a0,-60 # 80009298 <CONSOLE_STATUS+0x288>
    800062dc:	fffff097          	auipc	ra,0xfffff
    800062e0:	61c080e7          	jalr	1564(ra) # 800058f8 <_Z11printStringPKc>
    800062e4:	00000613          	li	a2,0
    800062e8:	00a00593          	li	a1,10
    800062ec:	00048513          	mv	a0,s1
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	7b8080e7          	jalr	1976(ra) # 80005aa8 <_Z8printIntiii>
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	19050513          	addi	a0,a0,400 # 80009488 <CONSOLE_STATUS+0x478>
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	5f8080e7          	jalr	1528(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006308:	0014849b          	addiw	s1,s1,1
    8000630c:	0ff4f493          	andi	s1,s1,255
    80006310:	00c00793          	li	a5,12
    80006314:	fc97f0e3          	bgeu	a5,s1,800062d4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006318:	00003517          	auipc	a0,0x3
    8000631c:	f8850513          	addi	a0,a0,-120 # 800092a0 <CONSOLE_STATUS+0x290>
    80006320:	fffff097          	auipc	ra,0xfffff
    80006324:	5d8080e7          	jalr	1496(ra) # 800058f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006328:	00500313          	li	t1,5
    thread_dispatch();
    8000632c:	ffffb097          	auipc	ra,0xffffb
    80006330:	05c080e7          	jalr	92(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006334:	01000513          	li	a0,16
    80006338:	00000097          	auipc	ra,0x0
    8000633c:	f08080e7          	jalr	-248(ra) # 80006240 <_ZL9fibonaccim>
    80006340:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006344:	00003517          	auipc	a0,0x3
    80006348:	f6c50513          	addi	a0,a0,-148 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000634c:	fffff097          	auipc	ra,0xfffff
    80006350:	5ac080e7          	jalr	1452(ra) # 800058f8 <_Z11printStringPKc>
    80006354:	00000613          	li	a2,0
    80006358:	00a00593          	li	a1,10
    8000635c:	0009051b          	sext.w	a0,s2
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	748080e7          	jalr	1864(ra) # 80005aa8 <_Z8printIntiii>
    80006368:	00003517          	auipc	a0,0x3
    8000636c:	12050513          	addi	a0,a0,288 # 80009488 <CONSOLE_STATUS+0x478>
    80006370:	fffff097          	auipc	ra,0xfffff
    80006374:	588080e7          	jalr	1416(ra) # 800058f8 <_Z11printStringPKc>
    80006378:	0400006f          	j	800063b8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000637c:	00003517          	auipc	a0,0x3
    80006380:	f1c50513          	addi	a0,a0,-228 # 80009298 <CONSOLE_STATUS+0x288>
    80006384:	fffff097          	auipc	ra,0xfffff
    80006388:	574080e7          	jalr	1396(ra) # 800058f8 <_Z11printStringPKc>
    8000638c:	00000613          	li	a2,0
    80006390:	00a00593          	li	a1,10
    80006394:	00048513          	mv	a0,s1
    80006398:	fffff097          	auipc	ra,0xfffff
    8000639c:	710080e7          	jalr	1808(ra) # 80005aa8 <_Z8printIntiii>
    800063a0:	00003517          	auipc	a0,0x3
    800063a4:	0e850513          	addi	a0,a0,232 # 80009488 <CONSOLE_STATUS+0x478>
    800063a8:	fffff097          	auipc	ra,0xfffff
    800063ac:	550080e7          	jalr	1360(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800063b0:	0014849b          	addiw	s1,s1,1
    800063b4:	0ff4f493          	andi	s1,s1,255
    800063b8:	00f00793          	li	a5,15
    800063bc:	fc97f0e3          	bgeu	a5,s1,8000637c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800063c0:	00003517          	auipc	a0,0x3
    800063c4:	f0050513          	addi	a0,a0,-256 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	530080e7          	jalr	1328(ra) # 800058f8 <_Z11printStringPKc>
    finishedD = true;
    800063d0:	00100793          	li	a5,1
    800063d4:	00006717          	auipc	a4,0x6
    800063d8:	86f70323          	sb	a5,-1946(a4) # 8000bc3a <_ZL9finishedD>
    thread_dispatch();
    800063dc:	ffffb097          	auipc	ra,0xffffb
    800063e0:	fac080e7          	jalr	-84(ra) # 80001388 <_Z15thread_dispatchv>
}
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	00813483          	ld	s1,8(sp)
    800063f0:	00013903          	ld	s2,0(sp)
    800063f4:	02010113          	addi	sp,sp,32
    800063f8:	00008067          	ret

00000000800063fc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	01213023          	sd	s2,0(sp)
    80006410:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006414:	00000493          	li	s1,0
    80006418:	0400006f          	j	80006458 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	e4c50513          	addi	a0,a0,-436 # 80009268 <CONSOLE_STATUS+0x258>
    80006424:	fffff097          	auipc	ra,0xfffff
    80006428:	4d4080e7          	jalr	1236(ra) # 800058f8 <_Z11printStringPKc>
    8000642c:	00000613          	li	a2,0
    80006430:	00a00593          	li	a1,10
    80006434:	00048513          	mv	a0,s1
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	670080e7          	jalr	1648(ra) # 80005aa8 <_Z8printIntiii>
    80006440:	00003517          	auipc	a0,0x3
    80006444:	04850513          	addi	a0,a0,72 # 80009488 <CONSOLE_STATUS+0x478>
    80006448:	fffff097          	auipc	ra,0xfffff
    8000644c:	4b0080e7          	jalr	1200(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006450:	0014849b          	addiw	s1,s1,1
    80006454:	0ff4f493          	andi	s1,s1,255
    80006458:	00200793          	li	a5,2
    8000645c:	fc97f0e3          	bgeu	a5,s1,8000641c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006460:	00003517          	auipc	a0,0x3
    80006464:	e1050513          	addi	a0,a0,-496 # 80009270 <CONSOLE_STATUS+0x260>
    80006468:	fffff097          	auipc	ra,0xfffff
    8000646c:	490080e7          	jalr	1168(ra) # 800058f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006470:	00700313          	li	t1,7
    thread_dispatch();
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	f14080e7          	jalr	-236(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000647c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	e0050513          	addi	a0,a0,-512 # 80009280 <CONSOLE_STATUS+0x270>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	470080e7          	jalr	1136(ra) # 800058f8 <_Z11printStringPKc>
    80006490:	00000613          	li	a2,0
    80006494:	00a00593          	li	a1,10
    80006498:	0009051b          	sext.w	a0,s2
    8000649c:	fffff097          	auipc	ra,0xfffff
    800064a0:	60c080e7          	jalr	1548(ra) # 80005aa8 <_Z8printIntiii>
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	fe450513          	addi	a0,a0,-28 # 80009488 <CONSOLE_STATUS+0x478>
    800064ac:	fffff097          	auipc	ra,0xfffff
    800064b0:	44c080e7          	jalr	1100(ra) # 800058f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800064b4:	00c00513          	li	a0,12
    800064b8:	00000097          	auipc	ra,0x0
    800064bc:	d88080e7          	jalr	-632(ra) # 80006240 <_ZL9fibonaccim>
    800064c0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	dc450513          	addi	a0,a0,-572 # 80009288 <CONSOLE_STATUS+0x278>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	42c080e7          	jalr	1068(ra) # 800058f8 <_Z11printStringPKc>
    800064d4:	00000613          	li	a2,0
    800064d8:	00a00593          	li	a1,10
    800064dc:	0009051b          	sext.w	a0,s2
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	5c8080e7          	jalr	1480(ra) # 80005aa8 <_Z8printIntiii>
    800064e8:	00003517          	auipc	a0,0x3
    800064ec:	fa050513          	addi	a0,a0,-96 # 80009488 <CONSOLE_STATUS+0x478>
    800064f0:	fffff097          	auipc	ra,0xfffff
    800064f4:	408080e7          	jalr	1032(ra) # 800058f8 <_Z11printStringPKc>
    800064f8:	0400006f          	j	80006538 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	d6c50513          	addi	a0,a0,-660 # 80009268 <CONSOLE_STATUS+0x258>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	3f4080e7          	jalr	1012(ra) # 800058f8 <_Z11printStringPKc>
    8000650c:	00000613          	li	a2,0
    80006510:	00a00593          	li	a1,10
    80006514:	00048513          	mv	a0,s1
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	590080e7          	jalr	1424(ra) # 80005aa8 <_Z8printIntiii>
    80006520:	00003517          	auipc	a0,0x3
    80006524:	f6850513          	addi	a0,a0,-152 # 80009488 <CONSOLE_STATUS+0x478>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	3d0080e7          	jalr	976(ra) # 800058f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006530:	0014849b          	addiw	s1,s1,1
    80006534:	0ff4f493          	andi	s1,s1,255
    80006538:	00500793          	li	a5,5
    8000653c:	fc97f0e3          	bgeu	a5,s1,800064fc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006540:	00003517          	auipc	a0,0x3
    80006544:	d0050513          	addi	a0,a0,-768 # 80009240 <CONSOLE_STATUS+0x230>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	3b0080e7          	jalr	944(ra) # 800058f8 <_Z11printStringPKc>
    finishedC = true;
    80006550:	00100793          	li	a5,1
    80006554:	00005717          	auipc	a4,0x5
    80006558:	6ef703a3          	sb	a5,1767(a4) # 8000bc3b <_ZL9finishedC>
    thread_dispatch();
    8000655c:	ffffb097          	auipc	ra,0xffffb
    80006560:	e2c080e7          	jalr	-468(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006564:	01813083          	ld	ra,24(sp)
    80006568:	01013403          	ld	s0,16(sp)
    8000656c:	00813483          	ld	s1,8(sp)
    80006570:	00013903          	ld	s2,0(sp)
    80006574:	02010113          	addi	sp,sp,32
    80006578:	00008067          	ret

000000008000657c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000657c:	fe010113          	addi	sp,sp,-32
    80006580:	00113c23          	sd	ra,24(sp)
    80006584:	00813823          	sd	s0,16(sp)
    80006588:	00913423          	sd	s1,8(sp)
    8000658c:	01213023          	sd	s2,0(sp)
    80006590:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006594:	00000913          	li	s2,0
    80006598:	0400006f          	j	800065d8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000659c:	ffffb097          	auipc	ra,0xffffb
    800065a0:	dec080e7          	jalr	-532(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800065a4:	00148493          	addi	s1,s1,1
    800065a8:	000027b7          	lui	a5,0x2
    800065ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800065b0:	0097ee63          	bltu	a5,s1,800065cc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800065b4:	00000713          	li	a4,0
    800065b8:	000077b7          	lui	a5,0x7
    800065bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800065c0:	fce7eee3          	bltu	a5,a4,8000659c <_ZL11workerBodyBPv+0x20>
    800065c4:	00170713          	addi	a4,a4,1
    800065c8:	ff1ff06f          	j	800065b8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800065cc:	00a00793          	li	a5,10
    800065d0:	04f90663          	beq	s2,a5,8000661c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800065d4:	00190913          	addi	s2,s2,1
    800065d8:	00f00793          	li	a5,15
    800065dc:	0527e463          	bltu	a5,s2,80006624 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800065e0:	00003517          	auipc	a0,0x3
    800065e4:	c7050513          	addi	a0,a0,-912 # 80009250 <CONSOLE_STATUS+0x240>
    800065e8:	fffff097          	auipc	ra,0xfffff
    800065ec:	310080e7          	jalr	784(ra) # 800058f8 <_Z11printStringPKc>
    800065f0:	00000613          	li	a2,0
    800065f4:	00a00593          	li	a1,10
    800065f8:	0009051b          	sext.w	a0,s2
    800065fc:	fffff097          	auipc	ra,0xfffff
    80006600:	4ac080e7          	jalr	1196(ra) # 80005aa8 <_Z8printIntiii>
    80006604:	00003517          	auipc	a0,0x3
    80006608:	e8450513          	addi	a0,a0,-380 # 80009488 <CONSOLE_STATUS+0x478>
    8000660c:	fffff097          	auipc	ra,0xfffff
    80006610:	2ec080e7          	jalr	748(ra) # 800058f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006614:	00000493          	li	s1,0
    80006618:	f91ff06f          	j	800065a8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000661c:	14102ff3          	csrr	t6,sepc
    80006620:	fb5ff06f          	j	800065d4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006624:	00003517          	auipc	a0,0x3
    80006628:	c3450513          	addi	a0,a0,-972 # 80009258 <CONSOLE_STATUS+0x248>
    8000662c:	fffff097          	auipc	ra,0xfffff
    80006630:	2cc080e7          	jalr	716(ra) # 800058f8 <_Z11printStringPKc>
    finishedB = true;
    80006634:	00100793          	li	a5,1
    80006638:	00005717          	auipc	a4,0x5
    8000663c:	60f70223          	sb	a5,1540(a4) # 8000bc3c <_ZL9finishedB>
    thread_dispatch();
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	d48080e7          	jalr	-696(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006648:	01813083          	ld	ra,24(sp)
    8000664c:	01013403          	ld	s0,16(sp)
    80006650:	00813483          	ld	s1,8(sp)
    80006654:	00013903          	ld	s2,0(sp)
    80006658:	02010113          	addi	sp,sp,32
    8000665c:	00008067          	ret

0000000080006660 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006660:	fe010113          	addi	sp,sp,-32
    80006664:	00113c23          	sd	ra,24(sp)
    80006668:	00813823          	sd	s0,16(sp)
    8000666c:	00913423          	sd	s1,8(sp)
    80006670:	01213023          	sd	s2,0(sp)
    80006674:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006678:	00000913          	li	s2,0
    8000667c:	0380006f          	j	800066b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	d08080e7          	jalr	-760(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006688:	00148493          	addi	s1,s1,1
    8000668c:	000027b7          	lui	a5,0x2
    80006690:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006694:	0097ee63          	bltu	a5,s1,800066b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006698:	00000713          	li	a4,0
    8000669c:	000077b7          	lui	a5,0x7
    800066a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066a4:	fce7eee3          	bltu	a5,a4,80006680 <_ZL11workerBodyAPv+0x20>
    800066a8:	00170713          	addi	a4,a4,1
    800066ac:	ff1ff06f          	j	8000669c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800066b0:	00190913          	addi	s2,s2,1
    800066b4:	00900793          	li	a5,9
    800066b8:	0527e063          	bltu	a5,s2,800066f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	b7c50513          	addi	a0,a0,-1156 # 80009238 <CONSOLE_STATUS+0x228>
    800066c4:	fffff097          	auipc	ra,0xfffff
    800066c8:	234080e7          	jalr	564(ra) # 800058f8 <_Z11printStringPKc>
    800066cc:	00000613          	li	a2,0
    800066d0:	00a00593          	li	a1,10
    800066d4:	0009051b          	sext.w	a0,s2
    800066d8:	fffff097          	auipc	ra,0xfffff
    800066dc:	3d0080e7          	jalr	976(ra) # 80005aa8 <_Z8printIntiii>
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	da850513          	addi	a0,a0,-600 # 80009488 <CONSOLE_STATUS+0x478>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	210080e7          	jalr	528(ra) # 800058f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800066f0:	00000493          	li	s1,0
    800066f4:	f99ff06f          	j	8000668c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800066f8:	00003517          	auipc	a0,0x3
    800066fc:	b4850513          	addi	a0,a0,-1208 # 80009240 <CONSOLE_STATUS+0x230>
    80006700:	fffff097          	auipc	ra,0xfffff
    80006704:	1f8080e7          	jalr	504(ra) # 800058f8 <_Z11printStringPKc>
    finishedA = true;
    80006708:	00100793          	li	a5,1
    8000670c:	00005717          	auipc	a4,0x5
    80006710:	52f708a3          	sb	a5,1329(a4) # 8000bc3d <_ZL9finishedA>
}
    80006714:	01813083          	ld	ra,24(sp)
    80006718:	01013403          	ld	s0,16(sp)
    8000671c:	00813483          	ld	s1,8(sp)
    80006720:	00013903          	ld	s2,0(sp)
    80006724:	02010113          	addi	sp,sp,32
    80006728:	00008067          	ret

000000008000672c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000672c:	fd010113          	addi	sp,sp,-48
    80006730:	02113423          	sd	ra,40(sp)
    80006734:	02813023          	sd	s0,32(sp)
    80006738:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000673c:	00000613          	li	a2,0
    80006740:	00000597          	auipc	a1,0x0
    80006744:	f2058593          	addi	a1,a1,-224 # 80006660 <_ZL11workerBodyAPv>
    80006748:	fd040513          	addi	a0,s0,-48
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	b8c080e7          	jalr	-1140(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006754:	00003517          	auipc	a0,0x3
    80006758:	b7c50513          	addi	a0,a0,-1156 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000675c:	fffff097          	auipc	ra,0xfffff
    80006760:	19c080e7          	jalr	412(ra) # 800058f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006764:	00000613          	li	a2,0
    80006768:	00000597          	auipc	a1,0x0
    8000676c:	e1458593          	addi	a1,a1,-492 # 8000657c <_ZL11workerBodyBPv>
    80006770:	fd840513          	addi	a0,s0,-40
    80006774:	ffffb097          	auipc	ra,0xffffb
    80006778:	b64080e7          	jalr	-1180(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000677c:	00003517          	auipc	a0,0x3
    80006780:	b6c50513          	addi	a0,a0,-1172 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80006784:	fffff097          	auipc	ra,0xfffff
    80006788:	174080e7          	jalr	372(ra) # 800058f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000678c:	00000613          	li	a2,0
    80006790:	00000597          	auipc	a1,0x0
    80006794:	c6c58593          	addi	a1,a1,-916 # 800063fc <_ZL11workerBodyCPv>
    80006798:	fe040513          	addi	a0,s0,-32
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	b3c080e7          	jalr	-1220(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	b5c50513          	addi	a0,a0,-1188 # 80009300 <CONSOLE_STATUS+0x2f0>
    800067ac:	fffff097          	auipc	ra,0xfffff
    800067b0:	14c080e7          	jalr	332(ra) # 800058f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800067b4:	00000613          	li	a2,0
    800067b8:	00000597          	auipc	a1,0x0
    800067bc:	afc58593          	addi	a1,a1,-1284 # 800062b4 <_ZL11workerBodyDPv>
    800067c0:	fe840513          	addi	a0,s0,-24
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	b14080e7          	jalr	-1260(ra) # 800012d8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	b4c50513          	addi	a0,a0,-1204 # 80009318 <CONSOLE_STATUS+0x308>
    800067d4:	fffff097          	auipc	ra,0xfffff
    800067d8:	124080e7          	jalr	292(ra) # 800058f8 <_Z11printStringPKc>
    800067dc:	00c0006f          	j	800067e8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	ba8080e7          	jalr	-1112(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800067e8:	00005797          	auipc	a5,0x5
    800067ec:	4557c783          	lbu	a5,1109(a5) # 8000bc3d <_ZL9finishedA>
    800067f0:	fe0788e3          	beqz	a5,800067e0 <_Z16System_Mode_testv+0xb4>
    800067f4:	00005797          	auipc	a5,0x5
    800067f8:	4487c783          	lbu	a5,1096(a5) # 8000bc3c <_ZL9finishedB>
    800067fc:	fe0782e3          	beqz	a5,800067e0 <_Z16System_Mode_testv+0xb4>
    80006800:	00005797          	auipc	a5,0x5
    80006804:	43b7c783          	lbu	a5,1083(a5) # 8000bc3b <_ZL9finishedC>
    80006808:	fc078ce3          	beqz	a5,800067e0 <_Z16System_Mode_testv+0xb4>
    8000680c:	00005797          	auipc	a5,0x5
    80006810:	42e7c783          	lbu	a5,1070(a5) # 8000bc3a <_ZL9finishedD>
    80006814:	fc0786e3          	beqz	a5,800067e0 <_Z16System_Mode_testv+0xb4>
    }

}
    80006818:	02813083          	ld	ra,40(sp)
    8000681c:	02013403          	ld	s0,32(sp)
    80006820:	03010113          	addi	sp,sp,48
    80006824:	00008067          	ret

0000000080006828 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006828:	fe010113          	addi	sp,sp,-32
    8000682c:	00113c23          	sd	ra,24(sp)
    80006830:	00813823          	sd	s0,16(sp)
    80006834:	00913423          	sd	s1,8(sp)
    80006838:	01213023          	sd	s2,0(sp)
    8000683c:	02010413          	addi	s0,sp,32
    80006840:	00050493          	mv	s1,a0
    80006844:	00058913          	mv	s2,a1
    80006848:	0015879b          	addiw	a5,a1,1
    8000684c:	0007851b          	sext.w	a0,a5
    80006850:	00f4a023          	sw	a5,0(s1)
    80006854:	0004a823          	sw	zero,16(s1)
    80006858:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000685c:	00251513          	slli	a0,a0,0x2
    80006860:	ffffb097          	auipc	ra,0xffffb
    80006864:	9fc080e7          	jalr	-1540(ra) # 8000125c <_Z9mem_allocm>
    80006868:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000686c:	00000593          	li	a1,0
    80006870:	02048513          	addi	a0,s1,32
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	b8c080e7          	jalr	-1140(ra) # 80001400 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000687c:	00090593          	mv	a1,s2
    80006880:	01848513          	addi	a0,s1,24
    80006884:	ffffb097          	auipc	ra,0xffffb
    80006888:	b7c080e7          	jalr	-1156(ra) # 80001400 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000688c:	00100593          	li	a1,1
    80006890:	02848513          	addi	a0,s1,40
    80006894:	ffffb097          	auipc	ra,0xffffb
    80006898:	b6c080e7          	jalr	-1172(ra) # 80001400 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000689c:	00100593          	li	a1,1
    800068a0:	03048513          	addi	a0,s1,48
    800068a4:	ffffb097          	auipc	ra,0xffffb
    800068a8:	b5c080e7          	jalr	-1188(ra) # 80001400 <_Z8sem_openPP4_semj>
}
    800068ac:	01813083          	ld	ra,24(sp)
    800068b0:	01013403          	ld	s0,16(sp)
    800068b4:	00813483          	ld	s1,8(sp)
    800068b8:	00013903          	ld	s2,0(sp)
    800068bc:	02010113          	addi	sp,sp,32
    800068c0:	00008067          	ret

00000000800068c4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800068c4:	fe010113          	addi	sp,sp,-32
    800068c8:	00113c23          	sd	ra,24(sp)
    800068cc:	00813823          	sd	s0,16(sp)
    800068d0:	00913423          	sd	s1,8(sp)
    800068d4:	01213023          	sd	s2,0(sp)
    800068d8:	02010413          	addi	s0,sp,32
    800068dc:	00050493          	mv	s1,a0
    800068e0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800068e4:	01853503          	ld	a0,24(a0)
    800068e8:	ffffb097          	auipc	ra,0xffffb
    800068ec:	b9c080e7          	jalr	-1124(ra) # 80001484 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800068f0:	0304b503          	ld	a0,48(s1)
    800068f4:	ffffb097          	auipc	ra,0xffffb
    800068f8:	b90080e7          	jalr	-1136(ra) # 80001484 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800068fc:	0084b783          	ld	a5,8(s1)
    80006900:	0144a703          	lw	a4,20(s1)
    80006904:	00271713          	slli	a4,a4,0x2
    80006908:	00e787b3          	add	a5,a5,a4
    8000690c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006910:	0144a783          	lw	a5,20(s1)
    80006914:	0017879b          	addiw	a5,a5,1
    80006918:	0004a703          	lw	a4,0(s1)
    8000691c:	02e7e7bb          	remw	a5,a5,a4
    80006920:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006924:	0304b503          	ld	a0,48(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	b9c080e7          	jalr	-1124(ra) # 800014c4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006930:	0204b503          	ld	a0,32(s1)
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	b90080e7          	jalr	-1136(ra) # 800014c4 <_Z10sem_signalP4_sem>

}
    8000693c:	01813083          	ld	ra,24(sp)
    80006940:	01013403          	ld	s0,16(sp)
    80006944:	00813483          	ld	s1,8(sp)
    80006948:	00013903          	ld	s2,0(sp)
    8000694c:	02010113          	addi	sp,sp,32
    80006950:	00008067          	ret

0000000080006954 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006954:	fe010113          	addi	sp,sp,-32
    80006958:	00113c23          	sd	ra,24(sp)
    8000695c:	00813823          	sd	s0,16(sp)
    80006960:	00913423          	sd	s1,8(sp)
    80006964:	01213023          	sd	s2,0(sp)
    80006968:	02010413          	addi	s0,sp,32
    8000696c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006970:	02053503          	ld	a0,32(a0)
    80006974:	ffffb097          	auipc	ra,0xffffb
    80006978:	b10080e7          	jalr	-1264(ra) # 80001484 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000697c:	0284b503          	ld	a0,40(s1)
    80006980:	ffffb097          	auipc	ra,0xffffb
    80006984:	b04080e7          	jalr	-1276(ra) # 80001484 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006988:	0084b703          	ld	a4,8(s1)
    8000698c:	0104a783          	lw	a5,16(s1)
    80006990:	00279693          	slli	a3,a5,0x2
    80006994:	00d70733          	add	a4,a4,a3
    80006998:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000699c:	0017879b          	addiw	a5,a5,1
    800069a0:	0004a703          	lw	a4,0(s1)
    800069a4:	02e7e7bb          	remw	a5,a5,a4
    800069a8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800069ac:	0284b503          	ld	a0,40(s1)
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	b14080e7          	jalr	-1260(ra) # 800014c4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800069b8:	0184b503          	ld	a0,24(s1)
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	b08080e7          	jalr	-1272(ra) # 800014c4 <_Z10sem_signalP4_sem>

    return ret;
}
    800069c4:	00090513          	mv	a0,s2
    800069c8:	01813083          	ld	ra,24(sp)
    800069cc:	01013403          	ld	s0,16(sp)
    800069d0:	00813483          	ld	s1,8(sp)
    800069d4:	00013903          	ld	s2,0(sp)
    800069d8:	02010113          	addi	sp,sp,32
    800069dc:	00008067          	ret

00000000800069e0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800069e0:	fe010113          	addi	sp,sp,-32
    800069e4:	00113c23          	sd	ra,24(sp)
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00913423          	sd	s1,8(sp)
    800069f0:	01213023          	sd	s2,0(sp)
    800069f4:	02010413          	addi	s0,sp,32
    800069f8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800069fc:	02853503          	ld	a0,40(a0)
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	a84080e7          	jalr	-1404(ra) # 80001484 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006a08:	0304b503          	ld	a0,48(s1)
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	a78080e7          	jalr	-1416(ra) # 80001484 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006a14:	0144a783          	lw	a5,20(s1)
    80006a18:	0104a903          	lw	s2,16(s1)
    80006a1c:	0327ce63          	blt	a5,s2,80006a58 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006a20:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006a24:	0304b503          	ld	a0,48(s1)
    80006a28:	ffffb097          	auipc	ra,0xffffb
    80006a2c:	a9c080e7          	jalr	-1380(ra) # 800014c4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006a30:	0284b503          	ld	a0,40(s1)
    80006a34:	ffffb097          	auipc	ra,0xffffb
    80006a38:	a90080e7          	jalr	-1392(ra) # 800014c4 <_Z10sem_signalP4_sem>

    return ret;
}
    80006a3c:	00090513          	mv	a0,s2
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	00013903          	ld	s2,0(sp)
    80006a50:	02010113          	addi	sp,sp,32
    80006a54:	00008067          	ret
        ret = cap - head + tail;
    80006a58:	0004a703          	lw	a4,0(s1)
    80006a5c:	4127093b          	subw	s2,a4,s2
    80006a60:	00f9093b          	addw	s2,s2,a5
    80006a64:	fc1ff06f          	j	80006a24 <_ZN6Buffer6getCntEv+0x44>

0000000080006a68 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006a68:	fe010113          	addi	sp,sp,-32
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	00813823          	sd	s0,16(sp)
    80006a74:	00913423          	sd	s1,8(sp)
    80006a78:	02010413          	addi	s0,sp,32
    80006a7c:	00050493          	mv	s1,a0
    putc('\n');
    80006a80:	00a00513          	li	a0,10
    80006a84:	ffffb097          	auipc	ra,0xffffb
    80006a88:	b80080e7          	jalr	-1152(ra) # 80001604 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006a8c:	00003517          	auipc	a0,0x3
    80006a90:	8a450513          	addi	a0,a0,-1884 # 80009330 <CONSOLE_STATUS+0x320>
    80006a94:	fffff097          	auipc	ra,0xfffff
    80006a98:	e64080e7          	jalr	-412(ra) # 800058f8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a9c:	00048513          	mv	a0,s1
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	f40080e7          	jalr	-192(ra) # 800069e0 <_ZN6Buffer6getCntEv>
    80006aa8:	02a05c63          	blez	a0,80006ae0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006aac:	0084b783          	ld	a5,8(s1)
    80006ab0:	0104a703          	lw	a4,16(s1)
    80006ab4:	00271713          	slli	a4,a4,0x2
    80006ab8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006abc:	0007c503          	lbu	a0,0(a5)
    80006ac0:	ffffb097          	auipc	ra,0xffffb
    80006ac4:	b44080e7          	jalr	-1212(ra) # 80001604 <_Z4putcc>
        head = (head + 1) % cap;
    80006ac8:	0104a783          	lw	a5,16(s1)
    80006acc:	0017879b          	addiw	a5,a5,1
    80006ad0:	0004a703          	lw	a4,0(s1)
    80006ad4:	02e7e7bb          	remw	a5,a5,a4
    80006ad8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006adc:	fc1ff06f          	j	80006a9c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006ae0:	02100513          	li	a0,33
    80006ae4:	ffffb097          	auipc	ra,0xffffb
    80006ae8:	b20080e7          	jalr	-1248(ra) # 80001604 <_Z4putcc>
    putc('\n');
    80006aec:	00a00513          	li	a0,10
    80006af0:	ffffb097          	auipc	ra,0xffffb
    80006af4:	b14080e7          	jalr	-1260(ra) # 80001604 <_Z4putcc>
    mem_free(buffer);
    80006af8:	0084b503          	ld	a0,8(s1)
    80006afc:	ffffa097          	auipc	ra,0xffffa
    80006b00:	79c080e7          	jalr	1948(ra) # 80001298 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006b04:	0204b503          	ld	a0,32(s1)
    80006b08:	ffffb097          	auipc	ra,0xffffb
    80006b0c:	93c080e7          	jalr	-1732(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006b10:	0184b503          	ld	a0,24(s1)
    80006b14:	ffffb097          	auipc	ra,0xffffb
    80006b18:	930080e7          	jalr	-1744(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006b1c:	0304b503          	ld	a0,48(s1)
    80006b20:	ffffb097          	auipc	ra,0xffffb
    80006b24:	924080e7          	jalr	-1756(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006b28:	0284b503          	ld	a0,40(s1)
    80006b2c:	ffffb097          	auipc	ra,0xffffb
    80006b30:	918080e7          	jalr	-1768(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80006b34:	01813083          	ld	ra,24(sp)
    80006b38:	01013403          	ld	s0,16(sp)
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	02010113          	addi	sp,sp,32
    80006b44:	00008067          	ret

0000000080006b48 <start>:
    80006b48:	ff010113          	addi	sp,sp,-16
    80006b4c:	00813423          	sd	s0,8(sp)
    80006b50:	01010413          	addi	s0,sp,16
    80006b54:	300027f3          	csrr	a5,mstatus
    80006b58:	ffffe737          	lui	a4,0xffffe
    80006b5c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff194f>
    80006b60:	00e7f7b3          	and	a5,a5,a4
    80006b64:	00001737          	lui	a4,0x1
    80006b68:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006b6c:	00e7e7b3          	or	a5,a5,a4
    80006b70:	30079073          	csrw	mstatus,a5
    80006b74:	00000797          	auipc	a5,0x0
    80006b78:	16078793          	addi	a5,a5,352 # 80006cd4 <system_main>
    80006b7c:	34179073          	csrw	mepc,a5
    80006b80:	00000793          	li	a5,0
    80006b84:	18079073          	csrw	satp,a5
    80006b88:	000107b7          	lui	a5,0x10
    80006b8c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006b90:	30279073          	csrw	medeleg,a5
    80006b94:	30379073          	csrw	mideleg,a5
    80006b98:	104027f3          	csrr	a5,sie
    80006b9c:	2227e793          	ori	a5,a5,546
    80006ba0:	10479073          	csrw	sie,a5
    80006ba4:	fff00793          	li	a5,-1
    80006ba8:	00a7d793          	srli	a5,a5,0xa
    80006bac:	3b079073          	csrw	pmpaddr0,a5
    80006bb0:	00f00793          	li	a5,15
    80006bb4:	3a079073          	csrw	pmpcfg0,a5
    80006bb8:	f14027f3          	csrr	a5,mhartid
    80006bbc:	0200c737          	lui	a4,0x200c
    80006bc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006bc4:	0007869b          	sext.w	a3,a5
    80006bc8:	00269713          	slli	a4,a3,0x2
    80006bcc:	000f4637          	lui	a2,0xf4
    80006bd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bd4:	00d70733          	add	a4,a4,a3
    80006bd8:	0037979b          	slliw	a5,a5,0x3
    80006bdc:	020046b7          	lui	a3,0x2004
    80006be0:	00d787b3          	add	a5,a5,a3
    80006be4:	00c585b3          	add	a1,a1,a2
    80006be8:	00371693          	slli	a3,a4,0x3
    80006bec:	00005717          	auipc	a4,0x5
    80006bf0:	05470713          	addi	a4,a4,84 # 8000bc40 <timer_scratch>
    80006bf4:	00b7b023          	sd	a1,0(a5)
    80006bf8:	00d70733          	add	a4,a4,a3
    80006bfc:	00f73c23          	sd	a5,24(a4)
    80006c00:	02c73023          	sd	a2,32(a4)
    80006c04:	34071073          	csrw	mscratch,a4
    80006c08:	00000797          	auipc	a5,0x0
    80006c0c:	6e878793          	addi	a5,a5,1768 # 800072f0 <timervec>
    80006c10:	30579073          	csrw	mtvec,a5
    80006c14:	300027f3          	csrr	a5,mstatus
    80006c18:	0087e793          	ori	a5,a5,8
    80006c1c:	30079073          	csrw	mstatus,a5
    80006c20:	304027f3          	csrr	a5,mie
    80006c24:	0807e793          	ori	a5,a5,128
    80006c28:	30479073          	csrw	mie,a5
    80006c2c:	f14027f3          	csrr	a5,mhartid
    80006c30:	0007879b          	sext.w	a5,a5
    80006c34:	00078213          	mv	tp,a5
    80006c38:	30200073          	mret
    80006c3c:	00813403          	ld	s0,8(sp)
    80006c40:	01010113          	addi	sp,sp,16
    80006c44:	00008067          	ret

0000000080006c48 <timerinit>:
    80006c48:	ff010113          	addi	sp,sp,-16
    80006c4c:	00813423          	sd	s0,8(sp)
    80006c50:	01010413          	addi	s0,sp,16
    80006c54:	f14027f3          	csrr	a5,mhartid
    80006c58:	0200c737          	lui	a4,0x200c
    80006c5c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c60:	0007869b          	sext.w	a3,a5
    80006c64:	00269713          	slli	a4,a3,0x2
    80006c68:	000f4637          	lui	a2,0xf4
    80006c6c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c70:	00d70733          	add	a4,a4,a3
    80006c74:	0037979b          	slliw	a5,a5,0x3
    80006c78:	020046b7          	lui	a3,0x2004
    80006c7c:	00d787b3          	add	a5,a5,a3
    80006c80:	00c585b3          	add	a1,a1,a2
    80006c84:	00371693          	slli	a3,a4,0x3
    80006c88:	00005717          	auipc	a4,0x5
    80006c8c:	fb870713          	addi	a4,a4,-72 # 8000bc40 <timer_scratch>
    80006c90:	00b7b023          	sd	a1,0(a5)
    80006c94:	00d70733          	add	a4,a4,a3
    80006c98:	00f73c23          	sd	a5,24(a4)
    80006c9c:	02c73023          	sd	a2,32(a4)
    80006ca0:	34071073          	csrw	mscratch,a4
    80006ca4:	00000797          	auipc	a5,0x0
    80006ca8:	64c78793          	addi	a5,a5,1612 # 800072f0 <timervec>
    80006cac:	30579073          	csrw	mtvec,a5
    80006cb0:	300027f3          	csrr	a5,mstatus
    80006cb4:	0087e793          	ori	a5,a5,8
    80006cb8:	30079073          	csrw	mstatus,a5
    80006cbc:	304027f3          	csrr	a5,mie
    80006cc0:	0807e793          	ori	a5,a5,128
    80006cc4:	30479073          	csrw	mie,a5
    80006cc8:	00813403          	ld	s0,8(sp)
    80006ccc:	01010113          	addi	sp,sp,16
    80006cd0:	00008067          	ret

0000000080006cd4 <system_main>:
    80006cd4:	fe010113          	addi	sp,sp,-32
    80006cd8:	00813823          	sd	s0,16(sp)
    80006cdc:	00913423          	sd	s1,8(sp)
    80006ce0:	00113c23          	sd	ra,24(sp)
    80006ce4:	02010413          	addi	s0,sp,32
    80006ce8:	00000097          	auipc	ra,0x0
    80006cec:	0c4080e7          	jalr	196(ra) # 80006dac <cpuid>
    80006cf0:	00005497          	auipc	s1,0x5
    80006cf4:	e6048493          	addi	s1,s1,-416 # 8000bb50 <started>
    80006cf8:	02050263          	beqz	a0,80006d1c <system_main+0x48>
    80006cfc:	0004a783          	lw	a5,0(s1)
    80006d00:	0007879b          	sext.w	a5,a5
    80006d04:	fe078ce3          	beqz	a5,80006cfc <system_main+0x28>
    80006d08:	0ff0000f          	fence
    80006d0c:	00003517          	auipc	a0,0x3
    80006d10:	8f450513          	addi	a0,a0,-1804 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006d14:	00001097          	auipc	ra,0x1
    80006d18:	a78080e7          	jalr	-1416(ra) # 8000778c <panic>
    80006d1c:	00001097          	auipc	ra,0x1
    80006d20:	9cc080e7          	jalr	-1588(ra) # 800076e8 <consoleinit>
    80006d24:	00001097          	auipc	ra,0x1
    80006d28:	158080e7          	jalr	344(ra) # 80007e7c <printfinit>
    80006d2c:	00002517          	auipc	a0,0x2
    80006d30:	75c50513          	addi	a0,a0,1884 # 80009488 <CONSOLE_STATUS+0x478>
    80006d34:	00001097          	auipc	ra,0x1
    80006d38:	ab4080e7          	jalr	-1356(ra) # 800077e8 <__printf>
    80006d3c:	00003517          	auipc	a0,0x3
    80006d40:	89450513          	addi	a0,a0,-1900 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006d44:	00001097          	auipc	ra,0x1
    80006d48:	aa4080e7          	jalr	-1372(ra) # 800077e8 <__printf>
    80006d4c:	00002517          	auipc	a0,0x2
    80006d50:	73c50513          	addi	a0,a0,1852 # 80009488 <CONSOLE_STATUS+0x478>
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	a94080e7          	jalr	-1388(ra) # 800077e8 <__printf>
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	4ac080e7          	jalr	1196(ra) # 80008208 <kinit>
    80006d64:	00000097          	auipc	ra,0x0
    80006d68:	148080e7          	jalr	328(ra) # 80006eac <trapinit>
    80006d6c:	00000097          	auipc	ra,0x0
    80006d70:	16c080e7          	jalr	364(ra) # 80006ed8 <trapinithart>
    80006d74:	00000097          	auipc	ra,0x0
    80006d78:	5bc080e7          	jalr	1468(ra) # 80007330 <plicinit>
    80006d7c:	00000097          	auipc	ra,0x0
    80006d80:	5dc080e7          	jalr	1500(ra) # 80007358 <plicinithart>
    80006d84:	00000097          	auipc	ra,0x0
    80006d88:	078080e7          	jalr	120(ra) # 80006dfc <userinit>
    80006d8c:	0ff0000f          	fence
    80006d90:	00100793          	li	a5,1
    80006d94:	00003517          	auipc	a0,0x3
    80006d98:	85450513          	addi	a0,a0,-1964 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006d9c:	00f4a023          	sw	a5,0(s1)
    80006da0:	00001097          	auipc	ra,0x1
    80006da4:	a48080e7          	jalr	-1464(ra) # 800077e8 <__printf>
    80006da8:	0000006f          	j	80006da8 <system_main+0xd4>

0000000080006dac <cpuid>:
    80006dac:	ff010113          	addi	sp,sp,-16
    80006db0:	00813423          	sd	s0,8(sp)
    80006db4:	01010413          	addi	s0,sp,16
    80006db8:	00020513          	mv	a0,tp
    80006dbc:	00813403          	ld	s0,8(sp)
    80006dc0:	0005051b          	sext.w	a0,a0
    80006dc4:	01010113          	addi	sp,sp,16
    80006dc8:	00008067          	ret

0000000080006dcc <mycpu>:
    80006dcc:	ff010113          	addi	sp,sp,-16
    80006dd0:	00813423          	sd	s0,8(sp)
    80006dd4:	01010413          	addi	s0,sp,16
    80006dd8:	00020793          	mv	a5,tp
    80006ddc:	00813403          	ld	s0,8(sp)
    80006de0:	0007879b          	sext.w	a5,a5
    80006de4:	00779793          	slli	a5,a5,0x7
    80006de8:	00006517          	auipc	a0,0x6
    80006dec:	e8850513          	addi	a0,a0,-376 # 8000cc70 <cpus>
    80006df0:	00f50533          	add	a0,a0,a5
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00008067          	ret

0000000080006dfc <userinit>:
    80006dfc:	ff010113          	addi	sp,sp,-16
    80006e00:	00813423          	sd	s0,8(sp)
    80006e04:	01010413          	addi	s0,sp,16
    80006e08:	00813403          	ld	s0,8(sp)
    80006e0c:	01010113          	addi	sp,sp,16
    80006e10:	ffffb317          	auipc	t1,0xffffb
    80006e14:	6f430067          	jr	1780(t1) # 80002504 <main>

0000000080006e18 <either_copyout>:
    80006e18:	ff010113          	addi	sp,sp,-16
    80006e1c:	00813023          	sd	s0,0(sp)
    80006e20:	00113423          	sd	ra,8(sp)
    80006e24:	01010413          	addi	s0,sp,16
    80006e28:	02051663          	bnez	a0,80006e54 <either_copyout+0x3c>
    80006e2c:	00058513          	mv	a0,a1
    80006e30:	00060593          	mv	a1,a2
    80006e34:	0006861b          	sext.w	a2,a3
    80006e38:	00002097          	auipc	ra,0x2
    80006e3c:	c5c080e7          	jalr	-932(ra) # 80008a94 <__memmove>
    80006e40:	00813083          	ld	ra,8(sp)
    80006e44:	00013403          	ld	s0,0(sp)
    80006e48:	00000513          	li	a0,0
    80006e4c:	01010113          	addi	sp,sp,16
    80006e50:	00008067          	ret
    80006e54:	00002517          	auipc	a0,0x2
    80006e58:	7d450513          	addi	a0,a0,2004 # 80009628 <CONSOLE_STATUS+0x618>
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	930080e7          	jalr	-1744(ra) # 8000778c <panic>

0000000080006e64 <either_copyin>:
    80006e64:	ff010113          	addi	sp,sp,-16
    80006e68:	00813023          	sd	s0,0(sp)
    80006e6c:	00113423          	sd	ra,8(sp)
    80006e70:	01010413          	addi	s0,sp,16
    80006e74:	02059463          	bnez	a1,80006e9c <either_copyin+0x38>
    80006e78:	00060593          	mv	a1,a2
    80006e7c:	0006861b          	sext.w	a2,a3
    80006e80:	00002097          	auipc	ra,0x2
    80006e84:	c14080e7          	jalr	-1004(ra) # 80008a94 <__memmove>
    80006e88:	00813083          	ld	ra,8(sp)
    80006e8c:	00013403          	ld	s0,0(sp)
    80006e90:	00000513          	li	a0,0
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00008067          	ret
    80006e9c:	00002517          	auipc	a0,0x2
    80006ea0:	7b450513          	addi	a0,a0,1972 # 80009650 <CONSOLE_STATUS+0x640>
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	8e8080e7          	jalr	-1816(ra) # 8000778c <panic>

0000000080006eac <trapinit>:
    80006eac:	ff010113          	addi	sp,sp,-16
    80006eb0:	00813423          	sd	s0,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	00813403          	ld	s0,8(sp)
    80006ebc:	00002597          	auipc	a1,0x2
    80006ec0:	7bc58593          	addi	a1,a1,1980 # 80009678 <CONSOLE_STATUS+0x668>
    80006ec4:	00006517          	auipc	a0,0x6
    80006ec8:	e2c50513          	addi	a0,a0,-468 # 8000ccf0 <tickslock>
    80006ecc:	01010113          	addi	sp,sp,16
    80006ed0:	00001317          	auipc	t1,0x1
    80006ed4:	5c830067          	jr	1480(t1) # 80008498 <initlock>

0000000080006ed8 <trapinithart>:
    80006ed8:	ff010113          	addi	sp,sp,-16
    80006edc:	00813423          	sd	s0,8(sp)
    80006ee0:	01010413          	addi	s0,sp,16
    80006ee4:	00000797          	auipc	a5,0x0
    80006ee8:	2fc78793          	addi	a5,a5,764 # 800071e0 <kernelvec>
    80006eec:	10579073          	csrw	stvec,a5
    80006ef0:	00813403          	ld	s0,8(sp)
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00008067          	ret

0000000080006efc <usertrap>:
    80006efc:	ff010113          	addi	sp,sp,-16
    80006f00:	00813423          	sd	s0,8(sp)
    80006f04:	01010413          	addi	s0,sp,16
    80006f08:	00813403          	ld	s0,8(sp)
    80006f0c:	01010113          	addi	sp,sp,16
    80006f10:	00008067          	ret

0000000080006f14 <usertrapret>:
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00813423          	sd	s0,8(sp)
    80006f1c:	01010413          	addi	s0,sp,16
    80006f20:	00813403          	ld	s0,8(sp)
    80006f24:	01010113          	addi	sp,sp,16
    80006f28:	00008067          	ret

0000000080006f2c <kerneltrap>:
    80006f2c:	fe010113          	addi	sp,sp,-32
    80006f30:	00813823          	sd	s0,16(sp)
    80006f34:	00113c23          	sd	ra,24(sp)
    80006f38:	00913423          	sd	s1,8(sp)
    80006f3c:	02010413          	addi	s0,sp,32
    80006f40:	142025f3          	csrr	a1,scause
    80006f44:	100027f3          	csrr	a5,sstatus
    80006f48:	0027f793          	andi	a5,a5,2
    80006f4c:	10079c63          	bnez	a5,80007064 <kerneltrap+0x138>
    80006f50:	142027f3          	csrr	a5,scause
    80006f54:	0207ce63          	bltz	a5,80006f90 <kerneltrap+0x64>
    80006f58:	00002517          	auipc	a0,0x2
    80006f5c:	76850513          	addi	a0,a0,1896 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006f60:	00001097          	auipc	ra,0x1
    80006f64:	888080e7          	jalr	-1912(ra) # 800077e8 <__printf>
    80006f68:	141025f3          	csrr	a1,sepc
    80006f6c:	14302673          	csrr	a2,stval
    80006f70:	00002517          	auipc	a0,0x2
    80006f74:	76050513          	addi	a0,a0,1888 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006f78:	00001097          	auipc	ra,0x1
    80006f7c:	870080e7          	jalr	-1936(ra) # 800077e8 <__printf>
    80006f80:	00002517          	auipc	a0,0x2
    80006f84:	76850513          	addi	a0,a0,1896 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006f88:	00001097          	auipc	ra,0x1
    80006f8c:	804080e7          	jalr	-2044(ra) # 8000778c <panic>
    80006f90:	0ff7f713          	andi	a4,a5,255
    80006f94:	00900693          	li	a3,9
    80006f98:	04d70063          	beq	a4,a3,80006fd8 <kerneltrap+0xac>
    80006f9c:	fff00713          	li	a4,-1
    80006fa0:	03f71713          	slli	a4,a4,0x3f
    80006fa4:	00170713          	addi	a4,a4,1
    80006fa8:	fae798e3          	bne	a5,a4,80006f58 <kerneltrap+0x2c>
    80006fac:	00000097          	auipc	ra,0x0
    80006fb0:	e00080e7          	jalr	-512(ra) # 80006dac <cpuid>
    80006fb4:	06050663          	beqz	a0,80007020 <kerneltrap+0xf4>
    80006fb8:	144027f3          	csrr	a5,sip
    80006fbc:	ffd7f793          	andi	a5,a5,-3
    80006fc0:	14479073          	csrw	sip,a5
    80006fc4:	01813083          	ld	ra,24(sp)
    80006fc8:	01013403          	ld	s0,16(sp)
    80006fcc:	00813483          	ld	s1,8(sp)
    80006fd0:	02010113          	addi	sp,sp,32
    80006fd4:	00008067          	ret
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	3cc080e7          	jalr	972(ra) # 800073a4 <plic_claim>
    80006fe0:	00a00793          	li	a5,10
    80006fe4:	00050493          	mv	s1,a0
    80006fe8:	06f50863          	beq	a0,a5,80007058 <kerneltrap+0x12c>
    80006fec:	fc050ce3          	beqz	a0,80006fc4 <kerneltrap+0x98>
    80006ff0:	00050593          	mv	a1,a0
    80006ff4:	00002517          	auipc	a0,0x2
    80006ff8:	6ac50513          	addi	a0,a0,1708 # 800096a0 <CONSOLE_STATUS+0x690>
    80006ffc:	00000097          	auipc	ra,0x0
    80007000:	7ec080e7          	jalr	2028(ra) # 800077e8 <__printf>
    80007004:	01013403          	ld	s0,16(sp)
    80007008:	01813083          	ld	ra,24(sp)
    8000700c:	00048513          	mv	a0,s1
    80007010:	00813483          	ld	s1,8(sp)
    80007014:	02010113          	addi	sp,sp,32
    80007018:	00000317          	auipc	t1,0x0
    8000701c:	3c430067          	jr	964(t1) # 800073dc <plic_complete>
    80007020:	00006517          	auipc	a0,0x6
    80007024:	cd050513          	addi	a0,a0,-816 # 8000ccf0 <tickslock>
    80007028:	00001097          	auipc	ra,0x1
    8000702c:	494080e7          	jalr	1172(ra) # 800084bc <acquire>
    80007030:	00005717          	auipc	a4,0x5
    80007034:	b2470713          	addi	a4,a4,-1244 # 8000bb54 <ticks>
    80007038:	00072783          	lw	a5,0(a4)
    8000703c:	00006517          	auipc	a0,0x6
    80007040:	cb450513          	addi	a0,a0,-844 # 8000ccf0 <tickslock>
    80007044:	0017879b          	addiw	a5,a5,1
    80007048:	00f72023          	sw	a5,0(a4)
    8000704c:	00001097          	auipc	ra,0x1
    80007050:	53c080e7          	jalr	1340(ra) # 80008588 <release>
    80007054:	f65ff06f          	j	80006fb8 <kerneltrap+0x8c>
    80007058:	00001097          	auipc	ra,0x1
    8000705c:	098080e7          	jalr	152(ra) # 800080f0 <uartintr>
    80007060:	fa5ff06f          	j	80007004 <kerneltrap+0xd8>
    80007064:	00002517          	auipc	a0,0x2
    80007068:	61c50513          	addi	a0,a0,1564 # 80009680 <CONSOLE_STATUS+0x670>
    8000706c:	00000097          	auipc	ra,0x0
    80007070:	720080e7          	jalr	1824(ra) # 8000778c <panic>

0000000080007074 <clockintr>:
    80007074:	fe010113          	addi	sp,sp,-32
    80007078:	00813823          	sd	s0,16(sp)
    8000707c:	00913423          	sd	s1,8(sp)
    80007080:	00113c23          	sd	ra,24(sp)
    80007084:	02010413          	addi	s0,sp,32
    80007088:	00006497          	auipc	s1,0x6
    8000708c:	c6848493          	addi	s1,s1,-920 # 8000ccf0 <tickslock>
    80007090:	00048513          	mv	a0,s1
    80007094:	00001097          	auipc	ra,0x1
    80007098:	428080e7          	jalr	1064(ra) # 800084bc <acquire>
    8000709c:	00005717          	auipc	a4,0x5
    800070a0:	ab870713          	addi	a4,a4,-1352 # 8000bb54 <ticks>
    800070a4:	00072783          	lw	a5,0(a4)
    800070a8:	01013403          	ld	s0,16(sp)
    800070ac:	01813083          	ld	ra,24(sp)
    800070b0:	00048513          	mv	a0,s1
    800070b4:	0017879b          	addiw	a5,a5,1
    800070b8:	00813483          	ld	s1,8(sp)
    800070bc:	00f72023          	sw	a5,0(a4)
    800070c0:	02010113          	addi	sp,sp,32
    800070c4:	00001317          	auipc	t1,0x1
    800070c8:	4c430067          	jr	1220(t1) # 80008588 <release>

00000000800070cc <devintr>:
    800070cc:	142027f3          	csrr	a5,scause
    800070d0:	00000513          	li	a0,0
    800070d4:	0007c463          	bltz	a5,800070dc <devintr+0x10>
    800070d8:	00008067          	ret
    800070dc:	fe010113          	addi	sp,sp,-32
    800070e0:	00813823          	sd	s0,16(sp)
    800070e4:	00113c23          	sd	ra,24(sp)
    800070e8:	00913423          	sd	s1,8(sp)
    800070ec:	02010413          	addi	s0,sp,32
    800070f0:	0ff7f713          	andi	a4,a5,255
    800070f4:	00900693          	li	a3,9
    800070f8:	04d70c63          	beq	a4,a3,80007150 <devintr+0x84>
    800070fc:	fff00713          	li	a4,-1
    80007100:	03f71713          	slli	a4,a4,0x3f
    80007104:	00170713          	addi	a4,a4,1
    80007108:	00e78c63          	beq	a5,a4,80007120 <devintr+0x54>
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	01013403          	ld	s0,16(sp)
    80007114:	00813483          	ld	s1,8(sp)
    80007118:	02010113          	addi	sp,sp,32
    8000711c:	00008067          	ret
    80007120:	00000097          	auipc	ra,0x0
    80007124:	c8c080e7          	jalr	-884(ra) # 80006dac <cpuid>
    80007128:	06050663          	beqz	a0,80007194 <devintr+0xc8>
    8000712c:	144027f3          	csrr	a5,sip
    80007130:	ffd7f793          	andi	a5,a5,-3
    80007134:	14479073          	csrw	sip,a5
    80007138:	01813083          	ld	ra,24(sp)
    8000713c:	01013403          	ld	s0,16(sp)
    80007140:	00813483          	ld	s1,8(sp)
    80007144:	00200513          	li	a0,2
    80007148:	02010113          	addi	sp,sp,32
    8000714c:	00008067          	ret
    80007150:	00000097          	auipc	ra,0x0
    80007154:	254080e7          	jalr	596(ra) # 800073a4 <plic_claim>
    80007158:	00a00793          	li	a5,10
    8000715c:	00050493          	mv	s1,a0
    80007160:	06f50663          	beq	a0,a5,800071cc <devintr+0x100>
    80007164:	00100513          	li	a0,1
    80007168:	fa0482e3          	beqz	s1,8000710c <devintr+0x40>
    8000716c:	00048593          	mv	a1,s1
    80007170:	00002517          	auipc	a0,0x2
    80007174:	53050513          	addi	a0,a0,1328 # 800096a0 <CONSOLE_STATUS+0x690>
    80007178:	00000097          	auipc	ra,0x0
    8000717c:	670080e7          	jalr	1648(ra) # 800077e8 <__printf>
    80007180:	00048513          	mv	a0,s1
    80007184:	00000097          	auipc	ra,0x0
    80007188:	258080e7          	jalr	600(ra) # 800073dc <plic_complete>
    8000718c:	00100513          	li	a0,1
    80007190:	f7dff06f          	j	8000710c <devintr+0x40>
    80007194:	00006517          	auipc	a0,0x6
    80007198:	b5c50513          	addi	a0,a0,-1188 # 8000ccf0 <tickslock>
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	320080e7          	jalr	800(ra) # 800084bc <acquire>
    800071a4:	00005717          	auipc	a4,0x5
    800071a8:	9b070713          	addi	a4,a4,-1616 # 8000bb54 <ticks>
    800071ac:	00072783          	lw	a5,0(a4)
    800071b0:	00006517          	auipc	a0,0x6
    800071b4:	b4050513          	addi	a0,a0,-1216 # 8000ccf0 <tickslock>
    800071b8:	0017879b          	addiw	a5,a5,1
    800071bc:	00f72023          	sw	a5,0(a4)
    800071c0:	00001097          	auipc	ra,0x1
    800071c4:	3c8080e7          	jalr	968(ra) # 80008588 <release>
    800071c8:	f65ff06f          	j	8000712c <devintr+0x60>
    800071cc:	00001097          	auipc	ra,0x1
    800071d0:	f24080e7          	jalr	-220(ra) # 800080f0 <uartintr>
    800071d4:	fadff06f          	j	80007180 <devintr+0xb4>
	...

00000000800071e0 <kernelvec>:
    800071e0:	f0010113          	addi	sp,sp,-256
    800071e4:	00113023          	sd	ra,0(sp)
    800071e8:	00213423          	sd	sp,8(sp)
    800071ec:	00313823          	sd	gp,16(sp)
    800071f0:	00413c23          	sd	tp,24(sp)
    800071f4:	02513023          	sd	t0,32(sp)
    800071f8:	02613423          	sd	t1,40(sp)
    800071fc:	02713823          	sd	t2,48(sp)
    80007200:	02813c23          	sd	s0,56(sp)
    80007204:	04913023          	sd	s1,64(sp)
    80007208:	04a13423          	sd	a0,72(sp)
    8000720c:	04b13823          	sd	a1,80(sp)
    80007210:	04c13c23          	sd	a2,88(sp)
    80007214:	06d13023          	sd	a3,96(sp)
    80007218:	06e13423          	sd	a4,104(sp)
    8000721c:	06f13823          	sd	a5,112(sp)
    80007220:	07013c23          	sd	a6,120(sp)
    80007224:	09113023          	sd	a7,128(sp)
    80007228:	09213423          	sd	s2,136(sp)
    8000722c:	09313823          	sd	s3,144(sp)
    80007230:	09413c23          	sd	s4,152(sp)
    80007234:	0b513023          	sd	s5,160(sp)
    80007238:	0b613423          	sd	s6,168(sp)
    8000723c:	0b713823          	sd	s7,176(sp)
    80007240:	0b813c23          	sd	s8,184(sp)
    80007244:	0d913023          	sd	s9,192(sp)
    80007248:	0da13423          	sd	s10,200(sp)
    8000724c:	0db13823          	sd	s11,208(sp)
    80007250:	0dc13c23          	sd	t3,216(sp)
    80007254:	0fd13023          	sd	t4,224(sp)
    80007258:	0fe13423          	sd	t5,232(sp)
    8000725c:	0ff13823          	sd	t6,240(sp)
    80007260:	ccdff0ef          	jal	ra,80006f2c <kerneltrap>
    80007264:	00013083          	ld	ra,0(sp)
    80007268:	00813103          	ld	sp,8(sp)
    8000726c:	01013183          	ld	gp,16(sp)
    80007270:	02013283          	ld	t0,32(sp)
    80007274:	02813303          	ld	t1,40(sp)
    80007278:	03013383          	ld	t2,48(sp)
    8000727c:	03813403          	ld	s0,56(sp)
    80007280:	04013483          	ld	s1,64(sp)
    80007284:	04813503          	ld	a0,72(sp)
    80007288:	05013583          	ld	a1,80(sp)
    8000728c:	05813603          	ld	a2,88(sp)
    80007290:	06013683          	ld	a3,96(sp)
    80007294:	06813703          	ld	a4,104(sp)
    80007298:	07013783          	ld	a5,112(sp)
    8000729c:	07813803          	ld	a6,120(sp)
    800072a0:	08013883          	ld	a7,128(sp)
    800072a4:	08813903          	ld	s2,136(sp)
    800072a8:	09013983          	ld	s3,144(sp)
    800072ac:	09813a03          	ld	s4,152(sp)
    800072b0:	0a013a83          	ld	s5,160(sp)
    800072b4:	0a813b03          	ld	s6,168(sp)
    800072b8:	0b013b83          	ld	s7,176(sp)
    800072bc:	0b813c03          	ld	s8,184(sp)
    800072c0:	0c013c83          	ld	s9,192(sp)
    800072c4:	0c813d03          	ld	s10,200(sp)
    800072c8:	0d013d83          	ld	s11,208(sp)
    800072cc:	0d813e03          	ld	t3,216(sp)
    800072d0:	0e013e83          	ld	t4,224(sp)
    800072d4:	0e813f03          	ld	t5,232(sp)
    800072d8:	0f013f83          	ld	t6,240(sp)
    800072dc:	10010113          	addi	sp,sp,256
    800072e0:	10200073          	sret
    800072e4:	00000013          	nop
    800072e8:	00000013          	nop
    800072ec:	00000013          	nop

00000000800072f0 <timervec>:
    800072f0:	34051573          	csrrw	a0,mscratch,a0
    800072f4:	00b53023          	sd	a1,0(a0)
    800072f8:	00c53423          	sd	a2,8(a0)
    800072fc:	00d53823          	sd	a3,16(a0)
    80007300:	01853583          	ld	a1,24(a0)
    80007304:	02053603          	ld	a2,32(a0)
    80007308:	0005b683          	ld	a3,0(a1)
    8000730c:	00c686b3          	add	a3,a3,a2
    80007310:	00d5b023          	sd	a3,0(a1)
    80007314:	00200593          	li	a1,2
    80007318:	14459073          	csrw	sip,a1
    8000731c:	01053683          	ld	a3,16(a0)
    80007320:	00853603          	ld	a2,8(a0)
    80007324:	00053583          	ld	a1,0(a0)
    80007328:	34051573          	csrrw	a0,mscratch,a0
    8000732c:	30200073          	mret

0000000080007330 <plicinit>:
    80007330:	ff010113          	addi	sp,sp,-16
    80007334:	00813423          	sd	s0,8(sp)
    80007338:	01010413          	addi	s0,sp,16
    8000733c:	00813403          	ld	s0,8(sp)
    80007340:	0c0007b7          	lui	a5,0xc000
    80007344:	00100713          	li	a4,1
    80007348:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000734c:	00e7a223          	sw	a4,4(a5)
    80007350:	01010113          	addi	sp,sp,16
    80007354:	00008067          	ret

0000000080007358 <plicinithart>:
    80007358:	ff010113          	addi	sp,sp,-16
    8000735c:	00813023          	sd	s0,0(sp)
    80007360:	00113423          	sd	ra,8(sp)
    80007364:	01010413          	addi	s0,sp,16
    80007368:	00000097          	auipc	ra,0x0
    8000736c:	a44080e7          	jalr	-1468(ra) # 80006dac <cpuid>
    80007370:	0085171b          	slliw	a4,a0,0x8
    80007374:	0c0027b7          	lui	a5,0xc002
    80007378:	00e787b3          	add	a5,a5,a4
    8000737c:	40200713          	li	a4,1026
    80007380:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007384:	00813083          	ld	ra,8(sp)
    80007388:	00013403          	ld	s0,0(sp)
    8000738c:	00d5151b          	slliw	a0,a0,0xd
    80007390:	0c2017b7          	lui	a5,0xc201
    80007394:	00a78533          	add	a0,a5,a0
    80007398:	00052023          	sw	zero,0(a0)
    8000739c:	01010113          	addi	sp,sp,16
    800073a0:	00008067          	ret

00000000800073a4 <plic_claim>:
    800073a4:	ff010113          	addi	sp,sp,-16
    800073a8:	00813023          	sd	s0,0(sp)
    800073ac:	00113423          	sd	ra,8(sp)
    800073b0:	01010413          	addi	s0,sp,16
    800073b4:	00000097          	auipc	ra,0x0
    800073b8:	9f8080e7          	jalr	-1544(ra) # 80006dac <cpuid>
    800073bc:	00813083          	ld	ra,8(sp)
    800073c0:	00013403          	ld	s0,0(sp)
    800073c4:	00d5151b          	slliw	a0,a0,0xd
    800073c8:	0c2017b7          	lui	a5,0xc201
    800073cc:	00a78533          	add	a0,a5,a0
    800073d0:	00452503          	lw	a0,4(a0)
    800073d4:	01010113          	addi	sp,sp,16
    800073d8:	00008067          	ret

00000000800073dc <plic_complete>:
    800073dc:	fe010113          	addi	sp,sp,-32
    800073e0:	00813823          	sd	s0,16(sp)
    800073e4:	00913423          	sd	s1,8(sp)
    800073e8:	00113c23          	sd	ra,24(sp)
    800073ec:	02010413          	addi	s0,sp,32
    800073f0:	00050493          	mv	s1,a0
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	9b8080e7          	jalr	-1608(ra) # 80006dac <cpuid>
    800073fc:	01813083          	ld	ra,24(sp)
    80007400:	01013403          	ld	s0,16(sp)
    80007404:	00d5179b          	slliw	a5,a0,0xd
    80007408:	0c201737          	lui	a4,0xc201
    8000740c:	00f707b3          	add	a5,a4,a5
    80007410:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007414:	00813483          	ld	s1,8(sp)
    80007418:	02010113          	addi	sp,sp,32
    8000741c:	00008067          	ret

0000000080007420 <consolewrite>:
    80007420:	fb010113          	addi	sp,sp,-80
    80007424:	04813023          	sd	s0,64(sp)
    80007428:	04113423          	sd	ra,72(sp)
    8000742c:	02913c23          	sd	s1,56(sp)
    80007430:	03213823          	sd	s2,48(sp)
    80007434:	03313423          	sd	s3,40(sp)
    80007438:	03413023          	sd	s4,32(sp)
    8000743c:	01513c23          	sd	s5,24(sp)
    80007440:	05010413          	addi	s0,sp,80
    80007444:	06c05c63          	blez	a2,800074bc <consolewrite+0x9c>
    80007448:	00060993          	mv	s3,a2
    8000744c:	00050a13          	mv	s4,a0
    80007450:	00058493          	mv	s1,a1
    80007454:	00000913          	li	s2,0
    80007458:	fff00a93          	li	s5,-1
    8000745c:	01c0006f          	j	80007478 <consolewrite+0x58>
    80007460:	fbf44503          	lbu	a0,-65(s0)
    80007464:	0019091b          	addiw	s2,s2,1
    80007468:	00148493          	addi	s1,s1,1
    8000746c:	00001097          	auipc	ra,0x1
    80007470:	a9c080e7          	jalr	-1380(ra) # 80007f08 <uartputc>
    80007474:	03298063          	beq	s3,s2,80007494 <consolewrite+0x74>
    80007478:	00048613          	mv	a2,s1
    8000747c:	00100693          	li	a3,1
    80007480:	000a0593          	mv	a1,s4
    80007484:	fbf40513          	addi	a0,s0,-65
    80007488:	00000097          	auipc	ra,0x0
    8000748c:	9dc080e7          	jalr	-1572(ra) # 80006e64 <either_copyin>
    80007490:	fd5518e3          	bne	a0,s5,80007460 <consolewrite+0x40>
    80007494:	04813083          	ld	ra,72(sp)
    80007498:	04013403          	ld	s0,64(sp)
    8000749c:	03813483          	ld	s1,56(sp)
    800074a0:	02813983          	ld	s3,40(sp)
    800074a4:	02013a03          	ld	s4,32(sp)
    800074a8:	01813a83          	ld	s5,24(sp)
    800074ac:	00090513          	mv	a0,s2
    800074b0:	03013903          	ld	s2,48(sp)
    800074b4:	05010113          	addi	sp,sp,80
    800074b8:	00008067          	ret
    800074bc:	00000913          	li	s2,0
    800074c0:	fd5ff06f          	j	80007494 <consolewrite+0x74>

00000000800074c4 <consoleread>:
    800074c4:	f9010113          	addi	sp,sp,-112
    800074c8:	06813023          	sd	s0,96(sp)
    800074cc:	04913c23          	sd	s1,88(sp)
    800074d0:	05213823          	sd	s2,80(sp)
    800074d4:	05313423          	sd	s3,72(sp)
    800074d8:	05413023          	sd	s4,64(sp)
    800074dc:	03513c23          	sd	s5,56(sp)
    800074e0:	03613823          	sd	s6,48(sp)
    800074e4:	03713423          	sd	s7,40(sp)
    800074e8:	03813023          	sd	s8,32(sp)
    800074ec:	06113423          	sd	ra,104(sp)
    800074f0:	01913c23          	sd	s9,24(sp)
    800074f4:	07010413          	addi	s0,sp,112
    800074f8:	00060b93          	mv	s7,a2
    800074fc:	00050913          	mv	s2,a0
    80007500:	00058c13          	mv	s8,a1
    80007504:	00060b1b          	sext.w	s6,a2
    80007508:	00006497          	auipc	s1,0x6
    8000750c:	81048493          	addi	s1,s1,-2032 # 8000cd18 <cons>
    80007510:	00400993          	li	s3,4
    80007514:	fff00a13          	li	s4,-1
    80007518:	00a00a93          	li	s5,10
    8000751c:	05705e63          	blez	s7,80007578 <consoleread+0xb4>
    80007520:	09c4a703          	lw	a4,156(s1)
    80007524:	0984a783          	lw	a5,152(s1)
    80007528:	0007071b          	sext.w	a4,a4
    8000752c:	08e78463          	beq	a5,a4,800075b4 <consoleread+0xf0>
    80007530:	07f7f713          	andi	a4,a5,127
    80007534:	00e48733          	add	a4,s1,a4
    80007538:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000753c:	0017869b          	addiw	a3,a5,1
    80007540:	08d4ac23          	sw	a3,152(s1)
    80007544:	00070c9b          	sext.w	s9,a4
    80007548:	0b370663          	beq	a4,s3,800075f4 <consoleread+0x130>
    8000754c:	00100693          	li	a3,1
    80007550:	f9f40613          	addi	a2,s0,-97
    80007554:	000c0593          	mv	a1,s8
    80007558:	00090513          	mv	a0,s2
    8000755c:	f8e40fa3          	sb	a4,-97(s0)
    80007560:	00000097          	auipc	ra,0x0
    80007564:	8b8080e7          	jalr	-1864(ra) # 80006e18 <either_copyout>
    80007568:	01450863          	beq	a0,s4,80007578 <consoleread+0xb4>
    8000756c:	001c0c13          	addi	s8,s8,1
    80007570:	fffb8b9b          	addiw	s7,s7,-1
    80007574:	fb5c94e3          	bne	s9,s5,8000751c <consoleread+0x58>
    80007578:	000b851b          	sext.w	a0,s7
    8000757c:	06813083          	ld	ra,104(sp)
    80007580:	06013403          	ld	s0,96(sp)
    80007584:	05813483          	ld	s1,88(sp)
    80007588:	05013903          	ld	s2,80(sp)
    8000758c:	04813983          	ld	s3,72(sp)
    80007590:	04013a03          	ld	s4,64(sp)
    80007594:	03813a83          	ld	s5,56(sp)
    80007598:	02813b83          	ld	s7,40(sp)
    8000759c:	02013c03          	ld	s8,32(sp)
    800075a0:	01813c83          	ld	s9,24(sp)
    800075a4:	40ab053b          	subw	a0,s6,a0
    800075a8:	03013b03          	ld	s6,48(sp)
    800075ac:	07010113          	addi	sp,sp,112
    800075b0:	00008067          	ret
    800075b4:	00001097          	auipc	ra,0x1
    800075b8:	1d8080e7          	jalr	472(ra) # 8000878c <push_on>
    800075bc:	0984a703          	lw	a4,152(s1)
    800075c0:	09c4a783          	lw	a5,156(s1)
    800075c4:	0007879b          	sext.w	a5,a5
    800075c8:	fef70ce3          	beq	a4,a5,800075c0 <consoleread+0xfc>
    800075cc:	00001097          	auipc	ra,0x1
    800075d0:	234080e7          	jalr	564(ra) # 80008800 <pop_on>
    800075d4:	0984a783          	lw	a5,152(s1)
    800075d8:	07f7f713          	andi	a4,a5,127
    800075dc:	00e48733          	add	a4,s1,a4
    800075e0:	01874703          	lbu	a4,24(a4)
    800075e4:	0017869b          	addiw	a3,a5,1
    800075e8:	08d4ac23          	sw	a3,152(s1)
    800075ec:	00070c9b          	sext.w	s9,a4
    800075f0:	f5371ee3          	bne	a4,s3,8000754c <consoleread+0x88>
    800075f4:	000b851b          	sext.w	a0,s7
    800075f8:	f96bf2e3          	bgeu	s7,s6,8000757c <consoleread+0xb8>
    800075fc:	08f4ac23          	sw	a5,152(s1)
    80007600:	f7dff06f          	j	8000757c <consoleread+0xb8>

0000000080007604 <consputc>:
    80007604:	10000793          	li	a5,256
    80007608:	00f50663          	beq	a0,a5,80007614 <consputc+0x10>
    8000760c:	00001317          	auipc	t1,0x1
    80007610:	9f430067          	jr	-1548(t1) # 80008000 <uartputc_sync>
    80007614:	ff010113          	addi	sp,sp,-16
    80007618:	00113423          	sd	ra,8(sp)
    8000761c:	00813023          	sd	s0,0(sp)
    80007620:	01010413          	addi	s0,sp,16
    80007624:	00800513          	li	a0,8
    80007628:	00001097          	auipc	ra,0x1
    8000762c:	9d8080e7          	jalr	-1576(ra) # 80008000 <uartputc_sync>
    80007630:	02000513          	li	a0,32
    80007634:	00001097          	auipc	ra,0x1
    80007638:	9cc080e7          	jalr	-1588(ra) # 80008000 <uartputc_sync>
    8000763c:	00013403          	ld	s0,0(sp)
    80007640:	00813083          	ld	ra,8(sp)
    80007644:	00800513          	li	a0,8
    80007648:	01010113          	addi	sp,sp,16
    8000764c:	00001317          	auipc	t1,0x1
    80007650:	9b430067          	jr	-1612(t1) # 80008000 <uartputc_sync>

0000000080007654 <consoleintr>:
    80007654:	fe010113          	addi	sp,sp,-32
    80007658:	00813823          	sd	s0,16(sp)
    8000765c:	00913423          	sd	s1,8(sp)
    80007660:	01213023          	sd	s2,0(sp)
    80007664:	00113c23          	sd	ra,24(sp)
    80007668:	02010413          	addi	s0,sp,32
    8000766c:	00005917          	auipc	s2,0x5
    80007670:	6ac90913          	addi	s2,s2,1708 # 8000cd18 <cons>
    80007674:	00050493          	mv	s1,a0
    80007678:	00090513          	mv	a0,s2
    8000767c:	00001097          	auipc	ra,0x1
    80007680:	e40080e7          	jalr	-448(ra) # 800084bc <acquire>
    80007684:	02048c63          	beqz	s1,800076bc <consoleintr+0x68>
    80007688:	0a092783          	lw	a5,160(s2)
    8000768c:	09892703          	lw	a4,152(s2)
    80007690:	07f00693          	li	a3,127
    80007694:	40e7873b          	subw	a4,a5,a4
    80007698:	02e6e263          	bltu	a3,a4,800076bc <consoleintr+0x68>
    8000769c:	00d00713          	li	a4,13
    800076a0:	04e48063          	beq	s1,a4,800076e0 <consoleintr+0x8c>
    800076a4:	07f7f713          	andi	a4,a5,127
    800076a8:	00e90733          	add	a4,s2,a4
    800076ac:	0017879b          	addiw	a5,a5,1
    800076b0:	0af92023          	sw	a5,160(s2)
    800076b4:	00970c23          	sb	s1,24(a4)
    800076b8:	08f92e23          	sw	a5,156(s2)
    800076bc:	01013403          	ld	s0,16(sp)
    800076c0:	01813083          	ld	ra,24(sp)
    800076c4:	00813483          	ld	s1,8(sp)
    800076c8:	00013903          	ld	s2,0(sp)
    800076cc:	00005517          	auipc	a0,0x5
    800076d0:	64c50513          	addi	a0,a0,1612 # 8000cd18 <cons>
    800076d4:	02010113          	addi	sp,sp,32
    800076d8:	00001317          	auipc	t1,0x1
    800076dc:	eb030067          	jr	-336(t1) # 80008588 <release>
    800076e0:	00a00493          	li	s1,10
    800076e4:	fc1ff06f          	j	800076a4 <consoleintr+0x50>

00000000800076e8 <consoleinit>:
    800076e8:	fe010113          	addi	sp,sp,-32
    800076ec:	00113c23          	sd	ra,24(sp)
    800076f0:	00813823          	sd	s0,16(sp)
    800076f4:	00913423          	sd	s1,8(sp)
    800076f8:	02010413          	addi	s0,sp,32
    800076fc:	00005497          	auipc	s1,0x5
    80007700:	61c48493          	addi	s1,s1,1564 # 8000cd18 <cons>
    80007704:	00048513          	mv	a0,s1
    80007708:	00002597          	auipc	a1,0x2
    8000770c:	ff058593          	addi	a1,a1,-16 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007710:	00001097          	auipc	ra,0x1
    80007714:	d88080e7          	jalr	-632(ra) # 80008498 <initlock>
    80007718:	00000097          	auipc	ra,0x0
    8000771c:	7ac080e7          	jalr	1964(ra) # 80007ec4 <uartinit>
    80007720:	01813083          	ld	ra,24(sp)
    80007724:	01013403          	ld	s0,16(sp)
    80007728:	00000797          	auipc	a5,0x0
    8000772c:	d9c78793          	addi	a5,a5,-612 # 800074c4 <consoleread>
    80007730:	0af4bc23          	sd	a5,184(s1)
    80007734:	00000797          	auipc	a5,0x0
    80007738:	cec78793          	addi	a5,a5,-788 # 80007420 <consolewrite>
    8000773c:	0cf4b023          	sd	a5,192(s1)
    80007740:	00813483          	ld	s1,8(sp)
    80007744:	02010113          	addi	sp,sp,32
    80007748:	00008067          	ret

000000008000774c <console_read>:
    8000774c:	ff010113          	addi	sp,sp,-16
    80007750:	00813423          	sd	s0,8(sp)
    80007754:	01010413          	addi	s0,sp,16
    80007758:	00813403          	ld	s0,8(sp)
    8000775c:	00005317          	auipc	t1,0x5
    80007760:	67433303          	ld	t1,1652(t1) # 8000cdd0 <devsw+0x10>
    80007764:	01010113          	addi	sp,sp,16
    80007768:	00030067          	jr	t1

000000008000776c <console_write>:
    8000776c:	ff010113          	addi	sp,sp,-16
    80007770:	00813423          	sd	s0,8(sp)
    80007774:	01010413          	addi	s0,sp,16
    80007778:	00813403          	ld	s0,8(sp)
    8000777c:	00005317          	auipc	t1,0x5
    80007780:	65c33303          	ld	t1,1628(t1) # 8000cdd8 <devsw+0x18>
    80007784:	01010113          	addi	sp,sp,16
    80007788:	00030067          	jr	t1

000000008000778c <panic>:
    8000778c:	fe010113          	addi	sp,sp,-32
    80007790:	00113c23          	sd	ra,24(sp)
    80007794:	00813823          	sd	s0,16(sp)
    80007798:	00913423          	sd	s1,8(sp)
    8000779c:	02010413          	addi	s0,sp,32
    800077a0:	00050493          	mv	s1,a0
    800077a4:	00002517          	auipc	a0,0x2
    800077a8:	f5c50513          	addi	a0,a0,-164 # 80009700 <CONSOLE_STATUS+0x6f0>
    800077ac:	00005797          	auipc	a5,0x5
    800077b0:	6c07a623          	sw	zero,1740(a5) # 8000ce78 <pr+0x18>
    800077b4:	00000097          	auipc	ra,0x0
    800077b8:	034080e7          	jalr	52(ra) # 800077e8 <__printf>
    800077bc:	00048513          	mv	a0,s1
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	028080e7          	jalr	40(ra) # 800077e8 <__printf>
    800077c8:	00002517          	auipc	a0,0x2
    800077cc:	cc050513          	addi	a0,a0,-832 # 80009488 <CONSOLE_STATUS+0x478>
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	018080e7          	jalr	24(ra) # 800077e8 <__printf>
    800077d8:	00100793          	li	a5,1
    800077dc:	00004717          	auipc	a4,0x4
    800077e0:	36f72e23          	sw	a5,892(a4) # 8000bb58 <panicked>
    800077e4:	0000006f          	j	800077e4 <panic+0x58>

00000000800077e8 <__printf>:
    800077e8:	f3010113          	addi	sp,sp,-208
    800077ec:	08813023          	sd	s0,128(sp)
    800077f0:	07313423          	sd	s3,104(sp)
    800077f4:	09010413          	addi	s0,sp,144
    800077f8:	05813023          	sd	s8,64(sp)
    800077fc:	08113423          	sd	ra,136(sp)
    80007800:	06913c23          	sd	s1,120(sp)
    80007804:	07213823          	sd	s2,112(sp)
    80007808:	07413023          	sd	s4,96(sp)
    8000780c:	05513c23          	sd	s5,88(sp)
    80007810:	05613823          	sd	s6,80(sp)
    80007814:	05713423          	sd	s7,72(sp)
    80007818:	03913c23          	sd	s9,56(sp)
    8000781c:	03a13823          	sd	s10,48(sp)
    80007820:	03b13423          	sd	s11,40(sp)
    80007824:	00005317          	auipc	t1,0x5
    80007828:	63c30313          	addi	t1,t1,1596 # 8000ce60 <pr>
    8000782c:	01832c03          	lw	s8,24(t1)
    80007830:	00b43423          	sd	a1,8(s0)
    80007834:	00c43823          	sd	a2,16(s0)
    80007838:	00d43c23          	sd	a3,24(s0)
    8000783c:	02e43023          	sd	a4,32(s0)
    80007840:	02f43423          	sd	a5,40(s0)
    80007844:	03043823          	sd	a6,48(s0)
    80007848:	03143c23          	sd	a7,56(s0)
    8000784c:	00050993          	mv	s3,a0
    80007850:	4a0c1663          	bnez	s8,80007cfc <__printf+0x514>
    80007854:	60098c63          	beqz	s3,80007e6c <__printf+0x684>
    80007858:	0009c503          	lbu	a0,0(s3)
    8000785c:	00840793          	addi	a5,s0,8
    80007860:	f6f43c23          	sd	a5,-136(s0)
    80007864:	00000493          	li	s1,0
    80007868:	22050063          	beqz	a0,80007a88 <__printf+0x2a0>
    8000786c:	00002a37          	lui	s4,0x2
    80007870:	00018ab7          	lui	s5,0x18
    80007874:	000f4b37          	lui	s6,0xf4
    80007878:	00989bb7          	lui	s7,0x989
    8000787c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007880:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007884:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007888:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000788c:	00148c9b          	addiw	s9,s1,1
    80007890:	02500793          	li	a5,37
    80007894:	01998933          	add	s2,s3,s9
    80007898:	38f51263          	bne	a0,a5,80007c1c <__printf+0x434>
    8000789c:	00094783          	lbu	a5,0(s2)
    800078a0:	00078c9b          	sext.w	s9,a5
    800078a4:	1e078263          	beqz	a5,80007a88 <__printf+0x2a0>
    800078a8:	0024849b          	addiw	s1,s1,2
    800078ac:	07000713          	li	a4,112
    800078b0:	00998933          	add	s2,s3,s1
    800078b4:	38e78a63          	beq	a5,a4,80007c48 <__printf+0x460>
    800078b8:	20f76863          	bltu	a4,a5,80007ac8 <__printf+0x2e0>
    800078bc:	42a78863          	beq	a5,a0,80007cec <__printf+0x504>
    800078c0:	06400713          	li	a4,100
    800078c4:	40e79663          	bne	a5,a4,80007cd0 <__printf+0x4e8>
    800078c8:	f7843783          	ld	a5,-136(s0)
    800078cc:	0007a603          	lw	a2,0(a5)
    800078d0:	00878793          	addi	a5,a5,8
    800078d4:	f6f43c23          	sd	a5,-136(s0)
    800078d8:	42064a63          	bltz	a2,80007d0c <__printf+0x524>
    800078dc:	00a00713          	li	a4,10
    800078e0:	02e677bb          	remuw	a5,a2,a4
    800078e4:	00002d97          	auipc	s11,0x2
    800078e8:	e44d8d93          	addi	s11,s11,-444 # 80009728 <digits>
    800078ec:	00900593          	li	a1,9
    800078f0:	0006051b          	sext.w	a0,a2
    800078f4:	00000c93          	li	s9,0
    800078f8:	02079793          	slli	a5,a5,0x20
    800078fc:	0207d793          	srli	a5,a5,0x20
    80007900:	00fd87b3          	add	a5,s11,a5
    80007904:	0007c783          	lbu	a5,0(a5)
    80007908:	02e656bb          	divuw	a3,a2,a4
    8000790c:	f8f40023          	sb	a5,-128(s0)
    80007910:	14c5d863          	bge	a1,a2,80007a60 <__printf+0x278>
    80007914:	06300593          	li	a1,99
    80007918:	00100c93          	li	s9,1
    8000791c:	02e6f7bb          	remuw	a5,a3,a4
    80007920:	02079793          	slli	a5,a5,0x20
    80007924:	0207d793          	srli	a5,a5,0x20
    80007928:	00fd87b3          	add	a5,s11,a5
    8000792c:	0007c783          	lbu	a5,0(a5)
    80007930:	02e6d73b          	divuw	a4,a3,a4
    80007934:	f8f400a3          	sb	a5,-127(s0)
    80007938:	12a5f463          	bgeu	a1,a0,80007a60 <__printf+0x278>
    8000793c:	00a00693          	li	a3,10
    80007940:	00900593          	li	a1,9
    80007944:	02d777bb          	remuw	a5,a4,a3
    80007948:	02079793          	slli	a5,a5,0x20
    8000794c:	0207d793          	srli	a5,a5,0x20
    80007950:	00fd87b3          	add	a5,s11,a5
    80007954:	0007c503          	lbu	a0,0(a5)
    80007958:	02d757bb          	divuw	a5,a4,a3
    8000795c:	f8a40123          	sb	a0,-126(s0)
    80007960:	48e5f263          	bgeu	a1,a4,80007de4 <__printf+0x5fc>
    80007964:	06300513          	li	a0,99
    80007968:	02d7f5bb          	remuw	a1,a5,a3
    8000796c:	02059593          	slli	a1,a1,0x20
    80007970:	0205d593          	srli	a1,a1,0x20
    80007974:	00bd85b3          	add	a1,s11,a1
    80007978:	0005c583          	lbu	a1,0(a1)
    8000797c:	02d7d7bb          	divuw	a5,a5,a3
    80007980:	f8b401a3          	sb	a1,-125(s0)
    80007984:	48e57263          	bgeu	a0,a4,80007e08 <__printf+0x620>
    80007988:	3e700513          	li	a0,999
    8000798c:	02d7f5bb          	remuw	a1,a5,a3
    80007990:	02059593          	slli	a1,a1,0x20
    80007994:	0205d593          	srli	a1,a1,0x20
    80007998:	00bd85b3          	add	a1,s11,a1
    8000799c:	0005c583          	lbu	a1,0(a1)
    800079a0:	02d7d7bb          	divuw	a5,a5,a3
    800079a4:	f8b40223          	sb	a1,-124(s0)
    800079a8:	46e57663          	bgeu	a0,a4,80007e14 <__printf+0x62c>
    800079ac:	02d7f5bb          	remuw	a1,a5,a3
    800079b0:	02059593          	slli	a1,a1,0x20
    800079b4:	0205d593          	srli	a1,a1,0x20
    800079b8:	00bd85b3          	add	a1,s11,a1
    800079bc:	0005c583          	lbu	a1,0(a1)
    800079c0:	02d7d7bb          	divuw	a5,a5,a3
    800079c4:	f8b402a3          	sb	a1,-123(s0)
    800079c8:	46ea7863          	bgeu	s4,a4,80007e38 <__printf+0x650>
    800079cc:	02d7f5bb          	remuw	a1,a5,a3
    800079d0:	02059593          	slli	a1,a1,0x20
    800079d4:	0205d593          	srli	a1,a1,0x20
    800079d8:	00bd85b3          	add	a1,s11,a1
    800079dc:	0005c583          	lbu	a1,0(a1)
    800079e0:	02d7d7bb          	divuw	a5,a5,a3
    800079e4:	f8b40323          	sb	a1,-122(s0)
    800079e8:	3eeaf863          	bgeu	s5,a4,80007dd8 <__printf+0x5f0>
    800079ec:	02d7f5bb          	remuw	a1,a5,a3
    800079f0:	02059593          	slli	a1,a1,0x20
    800079f4:	0205d593          	srli	a1,a1,0x20
    800079f8:	00bd85b3          	add	a1,s11,a1
    800079fc:	0005c583          	lbu	a1,0(a1)
    80007a00:	02d7d7bb          	divuw	a5,a5,a3
    80007a04:	f8b403a3          	sb	a1,-121(s0)
    80007a08:	42eb7e63          	bgeu	s6,a4,80007e44 <__printf+0x65c>
    80007a0c:	02d7f5bb          	remuw	a1,a5,a3
    80007a10:	02059593          	slli	a1,a1,0x20
    80007a14:	0205d593          	srli	a1,a1,0x20
    80007a18:	00bd85b3          	add	a1,s11,a1
    80007a1c:	0005c583          	lbu	a1,0(a1)
    80007a20:	02d7d7bb          	divuw	a5,a5,a3
    80007a24:	f8b40423          	sb	a1,-120(s0)
    80007a28:	42ebfc63          	bgeu	s7,a4,80007e60 <__printf+0x678>
    80007a2c:	02079793          	slli	a5,a5,0x20
    80007a30:	0207d793          	srli	a5,a5,0x20
    80007a34:	00fd8db3          	add	s11,s11,a5
    80007a38:	000dc703          	lbu	a4,0(s11)
    80007a3c:	00a00793          	li	a5,10
    80007a40:	00900c93          	li	s9,9
    80007a44:	f8e404a3          	sb	a4,-119(s0)
    80007a48:	00065c63          	bgez	a2,80007a60 <__printf+0x278>
    80007a4c:	f9040713          	addi	a4,s0,-112
    80007a50:	00f70733          	add	a4,a4,a5
    80007a54:	02d00693          	li	a3,45
    80007a58:	fed70823          	sb	a3,-16(a4)
    80007a5c:	00078c93          	mv	s9,a5
    80007a60:	f8040793          	addi	a5,s0,-128
    80007a64:	01978cb3          	add	s9,a5,s9
    80007a68:	f7f40d13          	addi	s10,s0,-129
    80007a6c:	000cc503          	lbu	a0,0(s9)
    80007a70:	fffc8c93          	addi	s9,s9,-1
    80007a74:	00000097          	auipc	ra,0x0
    80007a78:	b90080e7          	jalr	-1136(ra) # 80007604 <consputc>
    80007a7c:	ffac98e3          	bne	s9,s10,80007a6c <__printf+0x284>
    80007a80:	00094503          	lbu	a0,0(s2)
    80007a84:	e00514e3          	bnez	a0,8000788c <__printf+0xa4>
    80007a88:	1a0c1663          	bnez	s8,80007c34 <__printf+0x44c>
    80007a8c:	08813083          	ld	ra,136(sp)
    80007a90:	08013403          	ld	s0,128(sp)
    80007a94:	07813483          	ld	s1,120(sp)
    80007a98:	07013903          	ld	s2,112(sp)
    80007a9c:	06813983          	ld	s3,104(sp)
    80007aa0:	06013a03          	ld	s4,96(sp)
    80007aa4:	05813a83          	ld	s5,88(sp)
    80007aa8:	05013b03          	ld	s6,80(sp)
    80007aac:	04813b83          	ld	s7,72(sp)
    80007ab0:	04013c03          	ld	s8,64(sp)
    80007ab4:	03813c83          	ld	s9,56(sp)
    80007ab8:	03013d03          	ld	s10,48(sp)
    80007abc:	02813d83          	ld	s11,40(sp)
    80007ac0:	0d010113          	addi	sp,sp,208
    80007ac4:	00008067          	ret
    80007ac8:	07300713          	li	a4,115
    80007acc:	1ce78a63          	beq	a5,a4,80007ca0 <__printf+0x4b8>
    80007ad0:	07800713          	li	a4,120
    80007ad4:	1ee79e63          	bne	a5,a4,80007cd0 <__printf+0x4e8>
    80007ad8:	f7843783          	ld	a5,-136(s0)
    80007adc:	0007a703          	lw	a4,0(a5)
    80007ae0:	00878793          	addi	a5,a5,8
    80007ae4:	f6f43c23          	sd	a5,-136(s0)
    80007ae8:	28074263          	bltz	a4,80007d6c <__printf+0x584>
    80007aec:	00002d97          	auipc	s11,0x2
    80007af0:	c3cd8d93          	addi	s11,s11,-964 # 80009728 <digits>
    80007af4:	00f77793          	andi	a5,a4,15
    80007af8:	00fd87b3          	add	a5,s11,a5
    80007afc:	0007c683          	lbu	a3,0(a5)
    80007b00:	00f00613          	li	a2,15
    80007b04:	0007079b          	sext.w	a5,a4
    80007b08:	f8d40023          	sb	a3,-128(s0)
    80007b0c:	0047559b          	srliw	a1,a4,0x4
    80007b10:	0047569b          	srliw	a3,a4,0x4
    80007b14:	00000c93          	li	s9,0
    80007b18:	0ee65063          	bge	a2,a4,80007bf8 <__printf+0x410>
    80007b1c:	00f6f693          	andi	a3,a3,15
    80007b20:	00dd86b3          	add	a3,s11,a3
    80007b24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007b28:	0087d79b          	srliw	a5,a5,0x8
    80007b2c:	00100c93          	li	s9,1
    80007b30:	f8d400a3          	sb	a3,-127(s0)
    80007b34:	0cb67263          	bgeu	a2,a1,80007bf8 <__printf+0x410>
    80007b38:	00f7f693          	andi	a3,a5,15
    80007b3c:	00dd86b3          	add	a3,s11,a3
    80007b40:	0006c583          	lbu	a1,0(a3)
    80007b44:	00f00613          	li	a2,15
    80007b48:	0047d69b          	srliw	a3,a5,0x4
    80007b4c:	f8b40123          	sb	a1,-126(s0)
    80007b50:	0047d593          	srli	a1,a5,0x4
    80007b54:	28f67e63          	bgeu	a2,a5,80007df0 <__printf+0x608>
    80007b58:	00f6f693          	andi	a3,a3,15
    80007b5c:	00dd86b3          	add	a3,s11,a3
    80007b60:	0006c503          	lbu	a0,0(a3)
    80007b64:	0087d813          	srli	a6,a5,0x8
    80007b68:	0087d69b          	srliw	a3,a5,0x8
    80007b6c:	f8a401a3          	sb	a0,-125(s0)
    80007b70:	28b67663          	bgeu	a2,a1,80007dfc <__printf+0x614>
    80007b74:	00f6f693          	andi	a3,a3,15
    80007b78:	00dd86b3          	add	a3,s11,a3
    80007b7c:	0006c583          	lbu	a1,0(a3)
    80007b80:	00c7d513          	srli	a0,a5,0xc
    80007b84:	00c7d69b          	srliw	a3,a5,0xc
    80007b88:	f8b40223          	sb	a1,-124(s0)
    80007b8c:	29067a63          	bgeu	a2,a6,80007e20 <__printf+0x638>
    80007b90:	00f6f693          	andi	a3,a3,15
    80007b94:	00dd86b3          	add	a3,s11,a3
    80007b98:	0006c583          	lbu	a1,0(a3)
    80007b9c:	0107d813          	srli	a6,a5,0x10
    80007ba0:	0107d69b          	srliw	a3,a5,0x10
    80007ba4:	f8b402a3          	sb	a1,-123(s0)
    80007ba8:	28a67263          	bgeu	a2,a0,80007e2c <__printf+0x644>
    80007bac:	00f6f693          	andi	a3,a3,15
    80007bb0:	00dd86b3          	add	a3,s11,a3
    80007bb4:	0006c683          	lbu	a3,0(a3)
    80007bb8:	0147d79b          	srliw	a5,a5,0x14
    80007bbc:	f8d40323          	sb	a3,-122(s0)
    80007bc0:	21067663          	bgeu	a2,a6,80007dcc <__printf+0x5e4>
    80007bc4:	02079793          	slli	a5,a5,0x20
    80007bc8:	0207d793          	srli	a5,a5,0x20
    80007bcc:	00fd8db3          	add	s11,s11,a5
    80007bd0:	000dc683          	lbu	a3,0(s11)
    80007bd4:	00800793          	li	a5,8
    80007bd8:	00700c93          	li	s9,7
    80007bdc:	f8d403a3          	sb	a3,-121(s0)
    80007be0:	00075c63          	bgez	a4,80007bf8 <__printf+0x410>
    80007be4:	f9040713          	addi	a4,s0,-112
    80007be8:	00f70733          	add	a4,a4,a5
    80007bec:	02d00693          	li	a3,45
    80007bf0:	fed70823          	sb	a3,-16(a4)
    80007bf4:	00078c93          	mv	s9,a5
    80007bf8:	f8040793          	addi	a5,s0,-128
    80007bfc:	01978cb3          	add	s9,a5,s9
    80007c00:	f7f40d13          	addi	s10,s0,-129
    80007c04:	000cc503          	lbu	a0,0(s9)
    80007c08:	fffc8c93          	addi	s9,s9,-1
    80007c0c:	00000097          	auipc	ra,0x0
    80007c10:	9f8080e7          	jalr	-1544(ra) # 80007604 <consputc>
    80007c14:	ff9d18e3          	bne	s10,s9,80007c04 <__printf+0x41c>
    80007c18:	0100006f          	j	80007c28 <__printf+0x440>
    80007c1c:	00000097          	auipc	ra,0x0
    80007c20:	9e8080e7          	jalr	-1560(ra) # 80007604 <consputc>
    80007c24:	000c8493          	mv	s1,s9
    80007c28:	00094503          	lbu	a0,0(s2)
    80007c2c:	c60510e3          	bnez	a0,8000788c <__printf+0xa4>
    80007c30:	e40c0ee3          	beqz	s8,80007a8c <__printf+0x2a4>
    80007c34:	00005517          	auipc	a0,0x5
    80007c38:	22c50513          	addi	a0,a0,556 # 8000ce60 <pr>
    80007c3c:	00001097          	auipc	ra,0x1
    80007c40:	94c080e7          	jalr	-1716(ra) # 80008588 <release>
    80007c44:	e49ff06f          	j	80007a8c <__printf+0x2a4>
    80007c48:	f7843783          	ld	a5,-136(s0)
    80007c4c:	03000513          	li	a0,48
    80007c50:	01000d13          	li	s10,16
    80007c54:	00878713          	addi	a4,a5,8
    80007c58:	0007bc83          	ld	s9,0(a5)
    80007c5c:	f6e43c23          	sd	a4,-136(s0)
    80007c60:	00000097          	auipc	ra,0x0
    80007c64:	9a4080e7          	jalr	-1628(ra) # 80007604 <consputc>
    80007c68:	07800513          	li	a0,120
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	998080e7          	jalr	-1640(ra) # 80007604 <consputc>
    80007c74:	00002d97          	auipc	s11,0x2
    80007c78:	ab4d8d93          	addi	s11,s11,-1356 # 80009728 <digits>
    80007c7c:	03ccd793          	srli	a5,s9,0x3c
    80007c80:	00fd87b3          	add	a5,s11,a5
    80007c84:	0007c503          	lbu	a0,0(a5)
    80007c88:	fffd0d1b          	addiw	s10,s10,-1
    80007c8c:	004c9c93          	slli	s9,s9,0x4
    80007c90:	00000097          	auipc	ra,0x0
    80007c94:	974080e7          	jalr	-1676(ra) # 80007604 <consputc>
    80007c98:	fe0d12e3          	bnez	s10,80007c7c <__printf+0x494>
    80007c9c:	f8dff06f          	j	80007c28 <__printf+0x440>
    80007ca0:	f7843783          	ld	a5,-136(s0)
    80007ca4:	0007bc83          	ld	s9,0(a5)
    80007ca8:	00878793          	addi	a5,a5,8
    80007cac:	f6f43c23          	sd	a5,-136(s0)
    80007cb0:	000c9a63          	bnez	s9,80007cc4 <__printf+0x4dc>
    80007cb4:	1080006f          	j	80007dbc <__printf+0x5d4>
    80007cb8:	001c8c93          	addi	s9,s9,1
    80007cbc:	00000097          	auipc	ra,0x0
    80007cc0:	948080e7          	jalr	-1720(ra) # 80007604 <consputc>
    80007cc4:	000cc503          	lbu	a0,0(s9)
    80007cc8:	fe0518e3          	bnez	a0,80007cb8 <__printf+0x4d0>
    80007ccc:	f5dff06f          	j	80007c28 <__printf+0x440>
    80007cd0:	02500513          	li	a0,37
    80007cd4:	00000097          	auipc	ra,0x0
    80007cd8:	930080e7          	jalr	-1744(ra) # 80007604 <consputc>
    80007cdc:	000c8513          	mv	a0,s9
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	924080e7          	jalr	-1756(ra) # 80007604 <consputc>
    80007ce8:	f41ff06f          	j	80007c28 <__printf+0x440>
    80007cec:	02500513          	li	a0,37
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	914080e7          	jalr	-1772(ra) # 80007604 <consputc>
    80007cf8:	f31ff06f          	j	80007c28 <__printf+0x440>
    80007cfc:	00030513          	mv	a0,t1
    80007d00:	00000097          	auipc	ra,0x0
    80007d04:	7bc080e7          	jalr	1980(ra) # 800084bc <acquire>
    80007d08:	b4dff06f          	j	80007854 <__printf+0x6c>
    80007d0c:	40c0053b          	negw	a0,a2
    80007d10:	00a00713          	li	a4,10
    80007d14:	02e576bb          	remuw	a3,a0,a4
    80007d18:	00002d97          	auipc	s11,0x2
    80007d1c:	a10d8d93          	addi	s11,s11,-1520 # 80009728 <digits>
    80007d20:	ff700593          	li	a1,-9
    80007d24:	02069693          	slli	a3,a3,0x20
    80007d28:	0206d693          	srli	a3,a3,0x20
    80007d2c:	00dd86b3          	add	a3,s11,a3
    80007d30:	0006c683          	lbu	a3,0(a3)
    80007d34:	02e557bb          	divuw	a5,a0,a4
    80007d38:	f8d40023          	sb	a3,-128(s0)
    80007d3c:	10b65e63          	bge	a2,a1,80007e58 <__printf+0x670>
    80007d40:	06300593          	li	a1,99
    80007d44:	02e7f6bb          	remuw	a3,a5,a4
    80007d48:	02069693          	slli	a3,a3,0x20
    80007d4c:	0206d693          	srli	a3,a3,0x20
    80007d50:	00dd86b3          	add	a3,s11,a3
    80007d54:	0006c683          	lbu	a3,0(a3)
    80007d58:	02e7d73b          	divuw	a4,a5,a4
    80007d5c:	00200793          	li	a5,2
    80007d60:	f8d400a3          	sb	a3,-127(s0)
    80007d64:	bca5ece3          	bltu	a1,a0,8000793c <__printf+0x154>
    80007d68:	ce5ff06f          	j	80007a4c <__printf+0x264>
    80007d6c:	40e007bb          	negw	a5,a4
    80007d70:	00002d97          	auipc	s11,0x2
    80007d74:	9b8d8d93          	addi	s11,s11,-1608 # 80009728 <digits>
    80007d78:	00f7f693          	andi	a3,a5,15
    80007d7c:	00dd86b3          	add	a3,s11,a3
    80007d80:	0006c583          	lbu	a1,0(a3)
    80007d84:	ff100613          	li	a2,-15
    80007d88:	0047d69b          	srliw	a3,a5,0x4
    80007d8c:	f8b40023          	sb	a1,-128(s0)
    80007d90:	0047d59b          	srliw	a1,a5,0x4
    80007d94:	0ac75e63          	bge	a4,a2,80007e50 <__printf+0x668>
    80007d98:	00f6f693          	andi	a3,a3,15
    80007d9c:	00dd86b3          	add	a3,s11,a3
    80007da0:	0006c603          	lbu	a2,0(a3)
    80007da4:	00f00693          	li	a3,15
    80007da8:	0087d79b          	srliw	a5,a5,0x8
    80007dac:	f8c400a3          	sb	a2,-127(s0)
    80007db0:	d8b6e4e3          	bltu	a3,a1,80007b38 <__printf+0x350>
    80007db4:	00200793          	li	a5,2
    80007db8:	e2dff06f          	j	80007be4 <__printf+0x3fc>
    80007dbc:	00002c97          	auipc	s9,0x2
    80007dc0:	94cc8c93          	addi	s9,s9,-1716 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007dc4:	02800513          	li	a0,40
    80007dc8:	ef1ff06f          	j	80007cb8 <__printf+0x4d0>
    80007dcc:	00700793          	li	a5,7
    80007dd0:	00600c93          	li	s9,6
    80007dd4:	e0dff06f          	j	80007be0 <__printf+0x3f8>
    80007dd8:	00700793          	li	a5,7
    80007ddc:	00600c93          	li	s9,6
    80007de0:	c69ff06f          	j	80007a48 <__printf+0x260>
    80007de4:	00300793          	li	a5,3
    80007de8:	00200c93          	li	s9,2
    80007dec:	c5dff06f          	j	80007a48 <__printf+0x260>
    80007df0:	00300793          	li	a5,3
    80007df4:	00200c93          	li	s9,2
    80007df8:	de9ff06f          	j	80007be0 <__printf+0x3f8>
    80007dfc:	00400793          	li	a5,4
    80007e00:	00300c93          	li	s9,3
    80007e04:	dddff06f          	j	80007be0 <__printf+0x3f8>
    80007e08:	00400793          	li	a5,4
    80007e0c:	00300c93          	li	s9,3
    80007e10:	c39ff06f          	j	80007a48 <__printf+0x260>
    80007e14:	00500793          	li	a5,5
    80007e18:	00400c93          	li	s9,4
    80007e1c:	c2dff06f          	j	80007a48 <__printf+0x260>
    80007e20:	00500793          	li	a5,5
    80007e24:	00400c93          	li	s9,4
    80007e28:	db9ff06f          	j	80007be0 <__printf+0x3f8>
    80007e2c:	00600793          	li	a5,6
    80007e30:	00500c93          	li	s9,5
    80007e34:	dadff06f          	j	80007be0 <__printf+0x3f8>
    80007e38:	00600793          	li	a5,6
    80007e3c:	00500c93          	li	s9,5
    80007e40:	c09ff06f          	j	80007a48 <__printf+0x260>
    80007e44:	00800793          	li	a5,8
    80007e48:	00700c93          	li	s9,7
    80007e4c:	bfdff06f          	j	80007a48 <__printf+0x260>
    80007e50:	00100793          	li	a5,1
    80007e54:	d91ff06f          	j	80007be4 <__printf+0x3fc>
    80007e58:	00100793          	li	a5,1
    80007e5c:	bf1ff06f          	j	80007a4c <__printf+0x264>
    80007e60:	00900793          	li	a5,9
    80007e64:	00800c93          	li	s9,8
    80007e68:	be1ff06f          	j	80007a48 <__printf+0x260>
    80007e6c:	00002517          	auipc	a0,0x2
    80007e70:	8a450513          	addi	a0,a0,-1884 # 80009710 <CONSOLE_STATUS+0x700>
    80007e74:	00000097          	auipc	ra,0x0
    80007e78:	918080e7          	jalr	-1768(ra) # 8000778c <panic>

0000000080007e7c <printfinit>:
    80007e7c:	fe010113          	addi	sp,sp,-32
    80007e80:	00813823          	sd	s0,16(sp)
    80007e84:	00913423          	sd	s1,8(sp)
    80007e88:	00113c23          	sd	ra,24(sp)
    80007e8c:	02010413          	addi	s0,sp,32
    80007e90:	00005497          	auipc	s1,0x5
    80007e94:	fd048493          	addi	s1,s1,-48 # 8000ce60 <pr>
    80007e98:	00048513          	mv	a0,s1
    80007e9c:	00002597          	auipc	a1,0x2
    80007ea0:	88458593          	addi	a1,a1,-1916 # 80009720 <CONSOLE_STATUS+0x710>
    80007ea4:	00000097          	auipc	ra,0x0
    80007ea8:	5f4080e7          	jalr	1524(ra) # 80008498 <initlock>
    80007eac:	01813083          	ld	ra,24(sp)
    80007eb0:	01013403          	ld	s0,16(sp)
    80007eb4:	0004ac23          	sw	zero,24(s1)
    80007eb8:	00813483          	ld	s1,8(sp)
    80007ebc:	02010113          	addi	sp,sp,32
    80007ec0:	00008067          	ret

0000000080007ec4 <uartinit>:
    80007ec4:	ff010113          	addi	sp,sp,-16
    80007ec8:	00813423          	sd	s0,8(sp)
    80007ecc:	01010413          	addi	s0,sp,16
    80007ed0:	100007b7          	lui	a5,0x10000
    80007ed4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ed8:	f8000713          	li	a4,-128
    80007edc:	00e781a3          	sb	a4,3(a5)
    80007ee0:	00300713          	li	a4,3
    80007ee4:	00e78023          	sb	a4,0(a5)
    80007ee8:	000780a3          	sb	zero,1(a5)
    80007eec:	00e781a3          	sb	a4,3(a5)
    80007ef0:	00700693          	li	a3,7
    80007ef4:	00d78123          	sb	a3,2(a5)
    80007ef8:	00e780a3          	sb	a4,1(a5)
    80007efc:	00813403          	ld	s0,8(sp)
    80007f00:	01010113          	addi	sp,sp,16
    80007f04:	00008067          	ret

0000000080007f08 <uartputc>:
    80007f08:	00004797          	auipc	a5,0x4
    80007f0c:	c507a783          	lw	a5,-944(a5) # 8000bb58 <panicked>
    80007f10:	00078463          	beqz	a5,80007f18 <uartputc+0x10>
    80007f14:	0000006f          	j	80007f14 <uartputc+0xc>
    80007f18:	fd010113          	addi	sp,sp,-48
    80007f1c:	02813023          	sd	s0,32(sp)
    80007f20:	00913c23          	sd	s1,24(sp)
    80007f24:	01213823          	sd	s2,16(sp)
    80007f28:	01313423          	sd	s3,8(sp)
    80007f2c:	02113423          	sd	ra,40(sp)
    80007f30:	03010413          	addi	s0,sp,48
    80007f34:	00004917          	auipc	s2,0x4
    80007f38:	c2c90913          	addi	s2,s2,-980 # 8000bb60 <uart_tx_r>
    80007f3c:	00093783          	ld	a5,0(s2)
    80007f40:	00004497          	auipc	s1,0x4
    80007f44:	c2848493          	addi	s1,s1,-984 # 8000bb68 <uart_tx_w>
    80007f48:	0004b703          	ld	a4,0(s1)
    80007f4c:	02078693          	addi	a3,a5,32
    80007f50:	00050993          	mv	s3,a0
    80007f54:	02e69c63          	bne	a3,a4,80007f8c <uartputc+0x84>
    80007f58:	00001097          	auipc	ra,0x1
    80007f5c:	834080e7          	jalr	-1996(ra) # 8000878c <push_on>
    80007f60:	00093783          	ld	a5,0(s2)
    80007f64:	0004b703          	ld	a4,0(s1)
    80007f68:	02078793          	addi	a5,a5,32
    80007f6c:	00e79463          	bne	a5,a4,80007f74 <uartputc+0x6c>
    80007f70:	0000006f          	j	80007f70 <uartputc+0x68>
    80007f74:	00001097          	auipc	ra,0x1
    80007f78:	88c080e7          	jalr	-1908(ra) # 80008800 <pop_on>
    80007f7c:	00093783          	ld	a5,0(s2)
    80007f80:	0004b703          	ld	a4,0(s1)
    80007f84:	02078693          	addi	a3,a5,32
    80007f88:	fce688e3          	beq	a3,a4,80007f58 <uartputc+0x50>
    80007f8c:	01f77693          	andi	a3,a4,31
    80007f90:	00005597          	auipc	a1,0x5
    80007f94:	ef058593          	addi	a1,a1,-272 # 8000ce80 <uart_tx_buf>
    80007f98:	00d586b3          	add	a3,a1,a3
    80007f9c:	00170713          	addi	a4,a4,1
    80007fa0:	01368023          	sb	s3,0(a3)
    80007fa4:	00e4b023          	sd	a4,0(s1)
    80007fa8:	10000637          	lui	a2,0x10000
    80007fac:	02f71063          	bne	a4,a5,80007fcc <uartputc+0xc4>
    80007fb0:	0340006f          	j	80007fe4 <uartputc+0xdc>
    80007fb4:	00074703          	lbu	a4,0(a4)
    80007fb8:	00f93023          	sd	a5,0(s2)
    80007fbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007fc0:	00093783          	ld	a5,0(s2)
    80007fc4:	0004b703          	ld	a4,0(s1)
    80007fc8:	00f70e63          	beq	a4,a5,80007fe4 <uartputc+0xdc>
    80007fcc:	00564683          	lbu	a3,5(a2)
    80007fd0:	01f7f713          	andi	a4,a5,31
    80007fd4:	00e58733          	add	a4,a1,a4
    80007fd8:	0206f693          	andi	a3,a3,32
    80007fdc:	00178793          	addi	a5,a5,1
    80007fe0:	fc069ae3          	bnez	a3,80007fb4 <uartputc+0xac>
    80007fe4:	02813083          	ld	ra,40(sp)
    80007fe8:	02013403          	ld	s0,32(sp)
    80007fec:	01813483          	ld	s1,24(sp)
    80007ff0:	01013903          	ld	s2,16(sp)
    80007ff4:	00813983          	ld	s3,8(sp)
    80007ff8:	03010113          	addi	sp,sp,48
    80007ffc:	00008067          	ret

0000000080008000 <uartputc_sync>:
    80008000:	ff010113          	addi	sp,sp,-16
    80008004:	00813423          	sd	s0,8(sp)
    80008008:	01010413          	addi	s0,sp,16
    8000800c:	00004717          	auipc	a4,0x4
    80008010:	b4c72703          	lw	a4,-1204(a4) # 8000bb58 <panicked>
    80008014:	02071663          	bnez	a4,80008040 <uartputc_sync+0x40>
    80008018:	00050793          	mv	a5,a0
    8000801c:	100006b7          	lui	a3,0x10000
    80008020:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008024:	02077713          	andi	a4,a4,32
    80008028:	fe070ce3          	beqz	a4,80008020 <uartputc_sync+0x20>
    8000802c:	0ff7f793          	andi	a5,a5,255
    80008030:	00f68023          	sb	a5,0(a3)
    80008034:	00813403          	ld	s0,8(sp)
    80008038:	01010113          	addi	sp,sp,16
    8000803c:	00008067          	ret
    80008040:	0000006f          	j	80008040 <uartputc_sync+0x40>

0000000080008044 <uartstart>:
    80008044:	ff010113          	addi	sp,sp,-16
    80008048:	00813423          	sd	s0,8(sp)
    8000804c:	01010413          	addi	s0,sp,16
    80008050:	00004617          	auipc	a2,0x4
    80008054:	b1060613          	addi	a2,a2,-1264 # 8000bb60 <uart_tx_r>
    80008058:	00004517          	auipc	a0,0x4
    8000805c:	b1050513          	addi	a0,a0,-1264 # 8000bb68 <uart_tx_w>
    80008060:	00063783          	ld	a5,0(a2)
    80008064:	00053703          	ld	a4,0(a0)
    80008068:	04f70263          	beq	a4,a5,800080ac <uartstart+0x68>
    8000806c:	100005b7          	lui	a1,0x10000
    80008070:	00005817          	auipc	a6,0x5
    80008074:	e1080813          	addi	a6,a6,-496 # 8000ce80 <uart_tx_buf>
    80008078:	01c0006f          	j	80008094 <uartstart+0x50>
    8000807c:	0006c703          	lbu	a4,0(a3)
    80008080:	00f63023          	sd	a5,0(a2)
    80008084:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008088:	00063783          	ld	a5,0(a2)
    8000808c:	00053703          	ld	a4,0(a0)
    80008090:	00f70e63          	beq	a4,a5,800080ac <uartstart+0x68>
    80008094:	01f7f713          	andi	a4,a5,31
    80008098:	00e806b3          	add	a3,a6,a4
    8000809c:	0055c703          	lbu	a4,5(a1)
    800080a0:	00178793          	addi	a5,a5,1
    800080a4:	02077713          	andi	a4,a4,32
    800080a8:	fc071ae3          	bnez	a4,8000807c <uartstart+0x38>
    800080ac:	00813403          	ld	s0,8(sp)
    800080b0:	01010113          	addi	sp,sp,16
    800080b4:	00008067          	ret

00000000800080b8 <uartgetc>:
    800080b8:	ff010113          	addi	sp,sp,-16
    800080bc:	00813423          	sd	s0,8(sp)
    800080c0:	01010413          	addi	s0,sp,16
    800080c4:	10000737          	lui	a4,0x10000
    800080c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800080cc:	0017f793          	andi	a5,a5,1
    800080d0:	00078c63          	beqz	a5,800080e8 <uartgetc+0x30>
    800080d4:	00074503          	lbu	a0,0(a4)
    800080d8:	0ff57513          	andi	a0,a0,255
    800080dc:	00813403          	ld	s0,8(sp)
    800080e0:	01010113          	addi	sp,sp,16
    800080e4:	00008067          	ret
    800080e8:	fff00513          	li	a0,-1
    800080ec:	ff1ff06f          	j	800080dc <uartgetc+0x24>

00000000800080f0 <uartintr>:
    800080f0:	100007b7          	lui	a5,0x10000
    800080f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800080f8:	0017f793          	andi	a5,a5,1
    800080fc:	0a078463          	beqz	a5,800081a4 <uartintr+0xb4>
    80008100:	fe010113          	addi	sp,sp,-32
    80008104:	00813823          	sd	s0,16(sp)
    80008108:	00913423          	sd	s1,8(sp)
    8000810c:	00113c23          	sd	ra,24(sp)
    80008110:	02010413          	addi	s0,sp,32
    80008114:	100004b7          	lui	s1,0x10000
    80008118:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000811c:	0ff57513          	andi	a0,a0,255
    80008120:	fffff097          	auipc	ra,0xfffff
    80008124:	534080e7          	jalr	1332(ra) # 80007654 <consoleintr>
    80008128:	0054c783          	lbu	a5,5(s1)
    8000812c:	0017f793          	andi	a5,a5,1
    80008130:	fe0794e3          	bnez	a5,80008118 <uartintr+0x28>
    80008134:	00004617          	auipc	a2,0x4
    80008138:	a2c60613          	addi	a2,a2,-1492 # 8000bb60 <uart_tx_r>
    8000813c:	00004517          	auipc	a0,0x4
    80008140:	a2c50513          	addi	a0,a0,-1492 # 8000bb68 <uart_tx_w>
    80008144:	00063783          	ld	a5,0(a2)
    80008148:	00053703          	ld	a4,0(a0)
    8000814c:	04f70263          	beq	a4,a5,80008190 <uartintr+0xa0>
    80008150:	100005b7          	lui	a1,0x10000
    80008154:	00005817          	auipc	a6,0x5
    80008158:	d2c80813          	addi	a6,a6,-724 # 8000ce80 <uart_tx_buf>
    8000815c:	01c0006f          	j	80008178 <uartintr+0x88>
    80008160:	0006c703          	lbu	a4,0(a3)
    80008164:	00f63023          	sd	a5,0(a2)
    80008168:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000816c:	00063783          	ld	a5,0(a2)
    80008170:	00053703          	ld	a4,0(a0)
    80008174:	00f70e63          	beq	a4,a5,80008190 <uartintr+0xa0>
    80008178:	01f7f713          	andi	a4,a5,31
    8000817c:	00e806b3          	add	a3,a6,a4
    80008180:	0055c703          	lbu	a4,5(a1)
    80008184:	00178793          	addi	a5,a5,1
    80008188:	02077713          	andi	a4,a4,32
    8000818c:	fc071ae3          	bnez	a4,80008160 <uartintr+0x70>
    80008190:	01813083          	ld	ra,24(sp)
    80008194:	01013403          	ld	s0,16(sp)
    80008198:	00813483          	ld	s1,8(sp)
    8000819c:	02010113          	addi	sp,sp,32
    800081a0:	00008067          	ret
    800081a4:	00004617          	auipc	a2,0x4
    800081a8:	9bc60613          	addi	a2,a2,-1604 # 8000bb60 <uart_tx_r>
    800081ac:	00004517          	auipc	a0,0x4
    800081b0:	9bc50513          	addi	a0,a0,-1604 # 8000bb68 <uart_tx_w>
    800081b4:	00063783          	ld	a5,0(a2)
    800081b8:	00053703          	ld	a4,0(a0)
    800081bc:	04f70263          	beq	a4,a5,80008200 <uartintr+0x110>
    800081c0:	100005b7          	lui	a1,0x10000
    800081c4:	00005817          	auipc	a6,0x5
    800081c8:	cbc80813          	addi	a6,a6,-836 # 8000ce80 <uart_tx_buf>
    800081cc:	01c0006f          	j	800081e8 <uartintr+0xf8>
    800081d0:	0006c703          	lbu	a4,0(a3)
    800081d4:	00f63023          	sd	a5,0(a2)
    800081d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081dc:	00063783          	ld	a5,0(a2)
    800081e0:	00053703          	ld	a4,0(a0)
    800081e4:	02f70063          	beq	a4,a5,80008204 <uartintr+0x114>
    800081e8:	01f7f713          	andi	a4,a5,31
    800081ec:	00e806b3          	add	a3,a6,a4
    800081f0:	0055c703          	lbu	a4,5(a1)
    800081f4:	00178793          	addi	a5,a5,1
    800081f8:	02077713          	andi	a4,a4,32
    800081fc:	fc071ae3          	bnez	a4,800081d0 <uartintr+0xe0>
    80008200:	00008067          	ret
    80008204:	00008067          	ret

0000000080008208 <kinit>:
    80008208:	fc010113          	addi	sp,sp,-64
    8000820c:	02913423          	sd	s1,40(sp)
    80008210:	fffff7b7          	lui	a5,0xfffff
    80008214:	00006497          	auipc	s1,0x6
    80008218:	c9b48493          	addi	s1,s1,-869 # 8000deaf <end+0xfff>
    8000821c:	02813823          	sd	s0,48(sp)
    80008220:	01313c23          	sd	s3,24(sp)
    80008224:	00f4f4b3          	and	s1,s1,a5
    80008228:	02113c23          	sd	ra,56(sp)
    8000822c:	03213023          	sd	s2,32(sp)
    80008230:	01413823          	sd	s4,16(sp)
    80008234:	01513423          	sd	s5,8(sp)
    80008238:	04010413          	addi	s0,sp,64
    8000823c:	000017b7          	lui	a5,0x1
    80008240:	01100993          	li	s3,17
    80008244:	00f487b3          	add	a5,s1,a5
    80008248:	01b99993          	slli	s3,s3,0x1b
    8000824c:	06f9e063          	bltu	s3,a5,800082ac <kinit+0xa4>
    80008250:	00005a97          	auipc	s5,0x5
    80008254:	c60a8a93          	addi	s5,s5,-928 # 8000ceb0 <end>
    80008258:	0754ec63          	bltu	s1,s5,800082d0 <kinit+0xc8>
    8000825c:	0734fa63          	bgeu	s1,s3,800082d0 <kinit+0xc8>
    80008260:	00088a37          	lui	s4,0x88
    80008264:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008268:	00004917          	auipc	s2,0x4
    8000826c:	90890913          	addi	s2,s2,-1784 # 8000bb70 <kmem>
    80008270:	00ca1a13          	slli	s4,s4,0xc
    80008274:	0140006f          	j	80008288 <kinit+0x80>
    80008278:	000017b7          	lui	a5,0x1
    8000827c:	00f484b3          	add	s1,s1,a5
    80008280:	0554e863          	bltu	s1,s5,800082d0 <kinit+0xc8>
    80008284:	0534f663          	bgeu	s1,s3,800082d0 <kinit+0xc8>
    80008288:	00001637          	lui	a2,0x1
    8000828c:	00100593          	li	a1,1
    80008290:	00048513          	mv	a0,s1
    80008294:	00000097          	auipc	ra,0x0
    80008298:	5e4080e7          	jalr	1508(ra) # 80008878 <__memset>
    8000829c:	00093783          	ld	a5,0(s2)
    800082a0:	00f4b023          	sd	a5,0(s1)
    800082a4:	00993023          	sd	s1,0(s2)
    800082a8:	fd4498e3          	bne	s1,s4,80008278 <kinit+0x70>
    800082ac:	03813083          	ld	ra,56(sp)
    800082b0:	03013403          	ld	s0,48(sp)
    800082b4:	02813483          	ld	s1,40(sp)
    800082b8:	02013903          	ld	s2,32(sp)
    800082bc:	01813983          	ld	s3,24(sp)
    800082c0:	01013a03          	ld	s4,16(sp)
    800082c4:	00813a83          	ld	s5,8(sp)
    800082c8:	04010113          	addi	sp,sp,64
    800082cc:	00008067          	ret
    800082d0:	00001517          	auipc	a0,0x1
    800082d4:	47050513          	addi	a0,a0,1136 # 80009740 <digits+0x18>
    800082d8:	fffff097          	auipc	ra,0xfffff
    800082dc:	4b4080e7          	jalr	1204(ra) # 8000778c <panic>

00000000800082e0 <freerange>:
    800082e0:	fc010113          	addi	sp,sp,-64
    800082e4:	000017b7          	lui	a5,0x1
    800082e8:	02913423          	sd	s1,40(sp)
    800082ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800082f0:	009504b3          	add	s1,a0,s1
    800082f4:	fffff537          	lui	a0,0xfffff
    800082f8:	02813823          	sd	s0,48(sp)
    800082fc:	02113c23          	sd	ra,56(sp)
    80008300:	03213023          	sd	s2,32(sp)
    80008304:	01313c23          	sd	s3,24(sp)
    80008308:	01413823          	sd	s4,16(sp)
    8000830c:	01513423          	sd	s5,8(sp)
    80008310:	01613023          	sd	s6,0(sp)
    80008314:	04010413          	addi	s0,sp,64
    80008318:	00a4f4b3          	and	s1,s1,a0
    8000831c:	00f487b3          	add	a5,s1,a5
    80008320:	06f5e463          	bltu	a1,a5,80008388 <freerange+0xa8>
    80008324:	00005a97          	auipc	s5,0x5
    80008328:	b8ca8a93          	addi	s5,s5,-1140 # 8000ceb0 <end>
    8000832c:	0954e263          	bltu	s1,s5,800083b0 <freerange+0xd0>
    80008330:	01100993          	li	s3,17
    80008334:	01b99993          	slli	s3,s3,0x1b
    80008338:	0734fc63          	bgeu	s1,s3,800083b0 <freerange+0xd0>
    8000833c:	00058a13          	mv	s4,a1
    80008340:	00004917          	auipc	s2,0x4
    80008344:	83090913          	addi	s2,s2,-2000 # 8000bb70 <kmem>
    80008348:	00002b37          	lui	s6,0x2
    8000834c:	0140006f          	j	80008360 <freerange+0x80>
    80008350:	000017b7          	lui	a5,0x1
    80008354:	00f484b3          	add	s1,s1,a5
    80008358:	0554ec63          	bltu	s1,s5,800083b0 <freerange+0xd0>
    8000835c:	0534fa63          	bgeu	s1,s3,800083b0 <freerange+0xd0>
    80008360:	00001637          	lui	a2,0x1
    80008364:	00100593          	li	a1,1
    80008368:	00048513          	mv	a0,s1
    8000836c:	00000097          	auipc	ra,0x0
    80008370:	50c080e7          	jalr	1292(ra) # 80008878 <__memset>
    80008374:	00093703          	ld	a4,0(s2)
    80008378:	016487b3          	add	a5,s1,s6
    8000837c:	00e4b023          	sd	a4,0(s1)
    80008380:	00993023          	sd	s1,0(s2)
    80008384:	fcfa76e3          	bgeu	s4,a5,80008350 <freerange+0x70>
    80008388:	03813083          	ld	ra,56(sp)
    8000838c:	03013403          	ld	s0,48(sp)
    80008390:	02813483          	ld	s1,40(sp)
    80008394:	02013903          	ld	s2,32(sp)
    80008398:	01813983          	ld	s3,24(sp)
    8000839c:	01013a03          	ld	s4,16(sp)
    800083a0:	00813a83          	ld	s5,8(sp)
    800083a4:	00013b03          	ld	s6,0(sp)
    800083a8:	04010113          	addi	sp,sp,64
    800083ac:	00008067          	ret
    800083b0:	00001517          	auipc	a0,0x1
    800083b4:	39050513          	addi	a0,a0,912 # 80009740 <digits+0x18>
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	3d4080e7          	jalr	980(ra) # 8000778c <panic>

00000000800083c0 <kfree>:
    800083c0:	fe010113          	addi	sp,sp,-32
    800083c4:	00813823          	sd	s0,16(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	00913423          	sd	s1,8(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	03451793          	slli	a5,a0,0x34
    800083d8:	04079c63          	bnez	a5,80008430 <kfree+0x70>
    800083dc:	00005797          	auipc	a5,0x5
    800083e0:	ad478793          	addi	a5,a5,-1324 # 8000ceb0 <end>
    800083e4:	00050493          	mv	s1,a0
    800083e8:	04f56463          	bltu	a0,a5,80008430 <kfree+0x70>
    800083ec:	01100793          	li	a5,17
    800083f0:	01b79793          	slli	a5,a5,0x1b
    800083f4:	02f57e63          	bgeu	a0,a5,80008430 <kfree+0x70>
    800083f8:	00001637          	lui	a2,0x1
    800083fc:	00100593          	li	a1,1
    80008400:	00000097          	auipc	ra,0x0
    80008404:	478080e7          	jalr	1144(ra) # 80008878 <__memset>
    80008408:	00003797          	auipc	a5,0x3
    8000840c:	76878793          	addi	a5,a5,1896 # 8000bb70 <kmem>
    80008410:	0007b703          	ld	a4,0(a5)
    80008414:	01813083          	ld	ra,24(sp)
    80008418:	01013403          	ld	s0,16(sp)
    8000841c:	00e4b023          	sd	a4,0(s1)
    80008420:	0097b023          	sd	s1,0(a5)
    80008424:	00813483          	ld	s1,8(sp)
    80008428:	02010113          	addi	sp,sp,32
    8000842c:	00008067          	ret
    80008430:	00001517          	auipc	a0,0x1
    80008434:	31050513          	addi	a0,a0,784 # 80009740 <digits+0x18>
    80008438:	fffff097          	auipc	ra,0xfffff
    8000843c:	354080e7          	jalr	852(ra) # 8000778c <panic>

0000000080008440 <kalloc>:
    80008440:	fe010113          	addi	sp,sp,-32
    80008444:	00813823          	sd	s0,16(sp)
    80008448:	00913423          	sd	s1,8(sp)
    8000844c:	00113c23          	sd	ra,24(sp)
    80008450:	02010413          	addi	s0,sp,32
    80008454:	00003797          	auipc	a5,0x3
    80008458:	71c78793          	addi	a5,a5,1820 # 8000bb70 <kmem>
    8000845c:	0007b483          	ld	s1,0(a5)
    80008460:	02048063          	beqz	s1,80008480 <kalloc+0x40>
    80008464:	0004b703          	ld	a4,0(s1)
    80008468:	00001637          	lui	a2,0x1
    8000846c:	00500593          	li	a1,5
    80008470:	00048513          	mv	a0,s1
    80008474:	00e7b023          	sd	a4,0(a5)
    80008478:	00000097          	auipc	ra,0x0
    8000847c:	400080e7          	jalr	1024(ra) # 80008878 <__memset>
    80008480:	01813083          	ld	ra,24(sp)
    80008484:	01013403          	ld	s0,16(sp)
    80008488:	00048513          	mv	a0,s1
    8000848c:	00813483          	ld	s1,8(sp)
    80008490:	02010113          	addi	sp,sp,32
    80008494:	00008067          	ret

0000000080008498 <initlock>:
    80008498:	ff010113          	addi	sp,sp,-16
    8000849c:	00813423          	sd	s0,8(sp)
    800084a0:	01010413          	addi	s0,sp,16
    800084a4:	00813403          	ld	s0,8(sp)
    800084a8:	00b53423          	sd	a1,8(a0)
    800084ac:	00052023          	sw	zero,0(a0)
    800084b0:	00053823          	sd	zero,16(a0)
    800084b4:	01010113          	addi	sp,sp,16
    800084b8:	00008067          	ret

00000000800084bc <acquire>:
    800084bc:	fe010113          	addi	sp,sp,-32
    800084c0:	00813823          	sd	s0,16(sp)
    800084c4:	00913423          	sd	s1,8(sp)
    800084c8:	00113c23          	sd	ra,24(sp)
    800084cc:	01213023          	sd	s2,0(sp)
    800084d0:	02010413          	addi	s0,sp,32
    800084d4:	00050493          	mv	s1,a0
    800084d8:	10002973          	csrr	s2,sstatus
    800084dc:	100027f3          	csrr	a5,sstatus
    800084e0:	ffd7f793          	andi	a5,a5,-3
    800084e4:	10079073          	csrw	sstatus,a5
    800084e8:	fffff097          	auipc	ra,0xfffff
    800084ec:	8e4080e7          	jalr	-1820(ra) # 80006dcc <mycpu>
    800084f0:	07852783          	lw	a5,120(a0)
    800084f4:	06078e63          	beqz	a5,80008570 <acquire+0xb4>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	8d4080e7          	jalr	-1836(ra) # 80006dcc <mycpu>
    80008500:	07852783          	lw	a5,120(a0)
    80008504:	0004a703          	lw	a4,0(s1)
    80008508:	0017879b          	addiw	a5,a5,1
    8000850c:	06f52c23          	sw	a5,120(a0)
    80008510:	04071063          	bnez	a4,80008550 <acquire+0x94>
    80008514:	00100713          	li	a4,1
    80008518:	00070793          	mv	a5,a4
    8000851c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008520:	0007879b          	sext.w	a5,a5
    80008524:	fe079ae3          	bnez	a5,80008518 <acquire+0x5c>
    80008528:	0ff0000f          	fence
    8000852c:	fffff097          	auipc	ra,0xfffff
    80008530:	8a0080e7          	jalr	-1888(ra) # 80006dcc <mycpu>
    80008534:	01813083          	ld	ra,24(sp)
    80008538:	01013403          	ld	s0,16(sp)
    8000853c:	00a4b823          	sd	a0,16(s1)
    80008540:	00013903          	ld	s2,0(sp)
    80008544:	00813483          	ld	s1,8(sp)
    80008548:	02010113          	addi	sp,sp,32
    8000854c:	00008067          	ret
    80008550:	0104b903          	ld	s2,16(s1)
    80008554:	fffff097          	auipc	ra,0xfffff
    80008558:	878080e7          	jalr	-1928(ra) # 80006dcc <mycpu>
    8000855c:	faa91ce3          	bne	s2,a0,80008514 <acquire+0x58>
    80008560:	00001517          	auipc	a0,0x1
    80008564:	1e850513          	addi	a0,a0,488 # 80009748 <digits+0x20>
    80008568:	fffff097          	auipc	ra,0xfffff
    8000856c:	224080e7          	jalr	548(ra) # 8000778c <panic>
    80008570:	00195913          	srli	s2,s2,0x1
    80008574:	fffff097          	auipc	ra,0xfffff
    80008578:	858080e7          	jalr	-1960(ra) # 80006dcc <mycpu>
    8000857c:	00197913          	andi	s2,s2,1
    80008580:	07252e23          	sw	s2,124(a0)
    80008584:	f75ff06f          	j	800084f8 <acquire+0x3c>

0000000080008588 <release>:
    80008588:	fe010113          	addi	sp,sp,-32
    8000858c:	00813823          	sd	s0,16(sp)
    80008590:	00113c23          	sd	ra,24(sp)
    80008594:	00913423          	sd	s1,8(sp)
    80008598:	01213023          	sd	s2,0(sp)
    8000859c:	02010413          	addi	s0,sp,32
    800085a0:	00052783          	lw	a5,0(a0)
    800085a4:	00079a63          	bnez	a5,800085b8 <release+0x30>
    800085a8:	00001517          	auipc	a0,0x1
    800085ac:	1a850513          	addi	a0,a0,424 # 80009750 <digits+0x28>
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	1dc080e7          	jalr	476(ra) # 8000778c <panic>
    800085b8:	01053903          	ld	s2,16(a0)
    800085bc:	00050493          	mv	s1,a0
    800085c0:	fffff097          	auipc	ra,0xfffff
    800085c4:	80c080e7          	jalr	-2036(ra) # 80006dcc <mycpu>
    800085c8:	fea910e3          	bne	s2,a0,800085a8 <release+0x20>
    800085cc:	0004b823          	sd	zero,16(s1)
    800085d0:	0ff0000f          	fence
    800085d4:	0f50000f          	fence	iorw,ow
    800085d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800085dc:	ffffe097          	auipc	ra,0xffffe
    800085e0:	7f0080e7          	jalr	2032(ra) # 80006dcc <mycpu>
    800085e4:	100027f3          	csrr	a5,sstatus
    800085e8:	0027f793          	andi	a5,a5,2
    800085ec:	04079a63          	bnez	a5,80008640 <release+0xb8>
    800085f0:	07852783          	lw	a5,120(a0)
    800085f4:	02f05e63          	blez	a5,80008630 <release+0xa8>
    800085f8:	fff7871b          	addiw	a4,a5,-1
    800085fc:	06e52c23          	sw	a4,120(a0)
    80008600:	00071c63          	bnez	a4,80008618 <release+0x90>
    80008604:	07c52783          	lw	a5,124(a0)
    80008608:	00078863          	beqz	a5,80008618 <release+0x90>
    8000860c:	100027f3          	csrr	a5,sstatus
    80008610:	0027e793          	ori	a5,a5,2
    80008614:	10079073          	csrw	sstatus,a5
    80008618:	01813083          	ld	ra,24(sp)
    8000861c:	01013403          	ld	s0,16(sp)
    80008620:	00813483          	ld	s1,8(sp)
    80008624:	00013903          	ld	s2,0(sp)
    80008628:	02010113          	addi	sp,sp,32
    8000862c:	00008067          	ret
    80008630:	00001517          	auipc	a0,0x1
    80008634:	14050513          	addi	a0,a0,320 # 80009770 <digits+0x48>
    80008638:	fffff097          	auipc	ra,0xfffff
    8000863c:	154080e7          	jalr	340(ra) # 8000778c <panic>
    80008640:	00001517          	auipc	a0,0x1
    80008644:	11850513          	addi	a0,a0,280 # 80009758 <digits+0x30>
    80008648:	fffff097          	auipc	ra,0xfffff
    8000864c:	144080e7          	jalr	324(ra) # 8000778c <panic>

0000000080008650 <holding>:
    80008650:	00052783          	lw	a5,0(a0)
    80008654:	00079663          	bnez	a5,80008660 <holding+0x10>
    80008658:	00000513          	li	a0,0
    8000865c:	00008067          	ret
    80008660:	fe010113          	addi	sp,sp,-32
    80008664:	00813823          	sd	s0,16(sp)
    80008668:	00913423          	sd	s1,8(sp)
    8000866c:	00113c23          	sd	ra,24(sp)
    80008670:	02010413          	addi	s0,sp,32
    80008674:	01053483          	ld	s1,16(a0)
    80008678:	ffffe097          	auipc	ra,0xffffe
    8000867c:	754080e7          	jalr	1876(ra) # 80006dcc <mycpu>
    80008680:	01813083          	ld	ra,24(sp)
    80008684:	01013403          	ld	s0,16(sp)
    80008688:	40a48533          	sub	a0,s1,a0
    8000868c:	00153513          	seqz	a0,a0
    80008690:	00813483          	ld	s1,8(sp)
    80008694:	02010113          	addi	sp,sp,32
    80008698:	00008067          	ret

000000008000869c <push_off>:
    8000869c:	fe010113          	addi	sp,sp,-32
    800086a0:	00813823          	sd	s0,16(sp)
    800086a4:	00113c23          	sd	ra,24(sp)
    800086a8:	00913423          	sd	s1,8(sp)
    800086ac:	02010413          	addi	s0,sp,32
    800086b0:	100024f3          	csrr	s1,sstatus
    800086b4:	100027f3          	csrr	a5,sstatus
    800086b8:	ffd7f793          	andi	a5,a5,-3
    800086bc:	10079073          	csrw	sstatus,a5
    800086c0:	ffffe097          	auipc	ra,0xffffe
    800086c4:	70c080e7          	jalr	1804(ra) # 80006dcc <mycpu>
    800086c8:	07852783          	lw	a5,120(a0)
    800086cc:	02078663          	beqz	a5,800086f8 <push_off+0x5c>
    800086d0:	ffffe097          	auipc	ra,0xffffe
    800086d4:	6fc080e7          	jalr	1788(ra) # 80006dcc <mycpu>
    800086d8:	07852783          	lw	a5,120(a0)
    800086dc:	01813083          	ld	ra,24(sp)
    800086e0:	01013403          	ld	s0,16(sp)
    800086e4:	0017879b          	addiw	a5,a5,1
    800086e8:	06f52c23          	sw	a5,120(a0)
    800086ec:	00813483          	ld	s1,8(sp)
    800086f0:	02010113          	addi	sp,sp,32
    800086f4:	00008067          	ret
    800086f8:	0014d493          	srli	s1,s1,0x1
    800086fc:	ffffe097          	auipc	ra,0xffffe
    80008700:	6d0080e7          	jalr	1744(ra) # 80006dcc <mycpu>
    80008704:	0014f493          	andi	s1,s1,1
    80008708:	06952e23          	sw	s1,124(a0)
    8000870c:	fc5ff06f          	j	800086d0 <push_off+0x34>

0000000080008710 <pop_off>:
    80008710:	ff010113          	addi	sp,sp,-16
    80008714:	00813023          	sd	s0,0(sp)
    80008718:	00113423          	sd	ra,8(sp)
    8000871c:	01010413          	addi	s0,sp,16
    80008720:	ffffe097          	auipc	ra,0xffffe
    80008724:	6ac080e7          	jalr	1708(ra) # 80006dcc <mycpu>
    80008728:	100027f3          	csrr	a5,sstatus
    8000872c:	0027f793          	andi	a5,a5,2
    80008730:	04079663          	bnez	a5,8000877c <pop_off+0x6c>
    80008734:	07852783          	lw	a5,120(a0)
    80008738:	02f05a63          	blez	a5,8000876c <pop_off+0x5c>
    8000873c:	fff7871b          	addiw	a4,a5,-1
    80008740:	06e52c23          	sw	a4,120(a0)
    80008744:	00071c63          	bnez	a4,8000875c <pop_off+0x4c>
    80008748:	07c52783          	lw	a5,124(a0)
    8000874c:	00078863          	beqz	a5,8000875c <pop_off+0x4c>
    80008750:	100027f3          	csrr	a5,sstatus
    80008754:	0027e793          	ori	a5,a5,2
    80008758:	10079073          	csrw	sstatus,a5
    8000875c:	00813083          	ld	ra,8(sp)
    80008760:	00013403          	ld	s0,0(sp)
    80008764:	01010113          	addi	sp,sp,16
    80008768:	00008067          	ret
    8000876c:	00001517          	auipc	a0,0x1
    80008770:	00450513          	addi	a0,a0,4 # 80009770 <digits+0x48>
    80008774:	fffff097          	auipc	ra,0xfffff
    80008778:	018080e7          	jalr	24(ra) # 8000778c <panic>
    8000877c:	00001517          	auipc	a0,0x1
    80008780:	fdc50513          	addi	a0,a0,-36 # 80009758 <digits+0x30>
    80008784:	fffff097          	auipc	ra,0xfffff
    80008788:	008080e7          	jalr	8(ra) # 8000778c <panic>

000000008000878c <push_on>:
    8000878c:	fe010113          	addi	sp,sp,-32
    80008790:	00813823          	sd	s0,16(sp)
    80008794:	00113c23          	sd	ra,24(sp)
    80008798:	00913423          	sd	s1,8(sp)
    8000879c:	02010413          	addi	s0,sp,32
    800087a0:	100024f3          	csrr	s1,sstatus
    800087a4:	100027f3          	csrr	a5,sstatus
    800087a8:	0027e793          	ori	a5,a5,2
    800087ac:	10079073          	csrw	sstatus,a5
    800087b0:	ffffe097          	auipc	ra,0xffffe
    800087b4:	61c080e7          	jalr	1564(ra) # 80006dcc <mycpu>
    800087b8:	07852783          	lw	a5,120(a0)
    800087bc:	02078663          	beqz	a5,800087e8 <push_on+0x5c>
    800087c0:	ffffe097          	auipc	ra,0xffffe
    800087c4:	60c080e7          	jalr	1548(ra) # 80006dcc <mycpu>
    800087c8:	07852783          	lw	a5,120(a0)
    800087cc:	01813083          	ld	ra,24(sp)
    800087d0:	01013403          	ld	s0,16(sp)
    800087d4:	0017879b          	addiw	a5,a5,1
    800087d8:	06f52c23          	sw	a5,120(a0)
    800087dc:	00813483          	ld	s1,8(sp)
    800087e0:	02010113          	addi	sp,sp,32
    800087e4:	00008067          	ret
    800087e8:	0014d493          	srli	s1,s1,0x1
    800087ec:	ffffe097          	auipc	ra,0xffffe
    800087f0:	5e0080e7          	jalr	1504(ra) # 80006dcc <mycpu>
    800087f4:	0014f493          	andi	s1,s1,1
    800087f8:	06952e23          	sw	s1,124(a0)
    800087fc:	fc5ff06f          	j	800087c0 <push_on+0x34>

0000000080008800 <pop_on>:
    80008800:	ff010113          	addi	sp,sp,-16
    80008804:	00813023          	sd	s0,0(sp)
    80008808:	00113423          	sd	ra,8(sp)
    8000880c:	01010413          	addi	s0,sp,16
    80008810:	ffffe097          	auipc	ra,0xffffe
    80008814:	5bc080e7          	jalr	1468(ra) # 80006dcc <mycpu>
    80008818:	100027f3          	csrr	a5,sstatus
    8000881c:	0027f793          	andi	a5,a5,2
    80008820:	04078463          	beqz	a5,80008868 <pop_on+0x68>
    80008824:	07852783          	lw	a5,120(a0)
    80008828:	02f05863          	blez	a5,80008858 <pop_on+0x58>
    8000882c:	fff7879b          	addiw	a5,a5,-1
    80008830:	06f52c23          	sw	a5,120(a0)
    80008834:	07853783          	ld	a5,120(a0)
    80008838:	00079863          	bnez	a5,80008848 <pop_on+0x48>
    8000883c:	100027f3          	csrr	a5,sstatus
    80008840:	ffd7f793          	andi	a5,a5,-3
    80008844:	10079073          	csrw	sstatus,a5
    80008848:	00813083          	ld	ra,8(sp)
    8000884c:	00013403          	ld	s0,0(sp)
    80008850:	01010113          	addi	sp,sp,16
    80008854:	00008067          	ret
    80008858:	00001517          	auipc	a0,0x1
    8000885c:	f4050513          	addi	a0,a0,-192 # 80009798 <digits+0x70>
    80008860:	fffff097          	auipc	ra,0xfffff
    80008864:	f2c080e7          	jalr	-212(ra) # 8000778c <panic>
    80008868:	00001517          	auipc	a0,0x1
    8000886c:	f1050513          	addi	a0,a0,-240 # 80009778 <digits+0x50>
    80008870:	fffff097          	auipc	ra,0xfffff
    80008874:	f1c080e7          	jalr	-228(ra) # 8000778c <panic>

0000000080008878 <__memset>:
    80008878:	ff010113          	addi	sp,sp,-16
    8000887c:	00813423          	sd	s0,8(sp)
    80008880:	01010413          	addi	s0,sp,16
    80008884:	1a060e63          	beqz	a2,80008a40 <__memset+0x1c8>
    80008888:	40a007b3          	neg	a5,a0
    8000888c:	0077f793          	andi	a5,a5,7
    80008890:	00778693          	addi	a3,a5,7
    80008894:	00b00813          	li	a6,11
    80008898:	0ff5f593          	andi	a1,a1,255
    8000889c:	fff6071b          	addiw	a4,a2,-1
    800088a0:	1b06e663          	bltu	a3,a6,80008a4c <__memset+0x1d4>
    800088a4:	1cd76463          	bltu	a4,a3,80008a6c <__memset+0x1f4>
    800088a8:	1a078e63          	beqz	a5,80008a64 <__memset+0x1ec>
    800088ac:	00b50023          	sb	a1,0(a0)
    800088b0:	00100713          	li	a4,1
    800088b4:	1ae78463          	beq	a5,a4,80008a5c <__memset+0x1e4>
    800088b8:	00b500a3          	sb	a1,1(a0)
    800088bc:	00200713          	li	a4,2
    800088c0:	1ae78a63          	beq	a5,a4,80008a74 <__memset+0x1fc>
    800088c4:	00b50123          	sb	a1,2(a0)
    800088c8:	00300713          	li	a4,3
    800088cc:	18e78463          	beq	a5,a4,80008a54 <__memset+0x1dc>
    800088d0:	00b501a3          	sb	a1,3(a0)
    800088d4:	00400713          	li	a4,4
    800088d8:	1ae78263          	beq	a5,a4,80008a7c <__memset+0x204>
    800088dc:	00b50223          	sb	a1,4(a0)
    800088e0:	00500713          	li	a4,5
    800088e4:	1ae78063          	beq	a5,a4,80008a84 <__memset+0x20c>
    800088e8:	00b502a3          	sb	a1,5(a0)
    800088ec:	00700713          	li	a4,7
    800088f0:	18e79e63          	bne	a5,a4,80008a8c <__memset+0x214>
    800088f4:	00b50323          	sb	a1,6(a0)
    800088f8:	00700e93          	li	t4,7
    800088fc:	00859713          	slli	a4,a1,0x8
    80008900:	00e5e733          	or	a4,a1,a4
    80008904:	01059e13          	slli	t3,a1,0x10
    80008908:	01c76e33          	or	t3,a4,t3
    8000890c:	01859313          	slli	t1,a1,0x18
    80008910:	006e6333          	or	t1,t3,t1
    80008914:	02059893          	slli	a7,a1,0x20
    80008918:	40f60e3b          	subw	t3,a2,a5
    8000891c:	011368b3          	or	a7,t1,a7
    80008920:	02859813          	slli	a6,a1,0x28
    80008924:	0108e833          	or	a6,a7,a6
    80008928:	03059693          	slli	a3,a1,0x30
    8000892c:	003e589b          	srliw	a7,t3,0x3
    80008930:	00d866b3          	or	a3,a6,a3
    80008934:	03859713          	slli	a4,a1,0x38
    80008938:	00389813          	slli	a6,a7,0x3
    8000893c:	00f507b3          	add	a5,a0,a5
    80008940:	00e6e733          	or	a4,a3,a4
    80008944:	000e089b          	sext.w	a7,t3
    80008948:	00f806b3          	add	a3,a6,a5
    8000894c:	00e7b023          	sd	a4,0(a5)
    80008950:	00878793          	addi	a5,a5,8
    80008954:	fed79ce3          	bne	a5,a3,8000894c <__memset+0xd4>
    80008958:	ff8e7793          	andi	a5,t3,-8
    8000895c:	0007871b          	sext.w	a4,a5
    80008960:	01d787bb          	addw	a5,a5,t4
    80008964:	0ce88e63          	beq	a7,a4,80008a40 <__memset+0x1c8>
    80008968:	00f50733          	add	a4,a0,a5
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	0017871b          	addiw	a4,a5,1
    80008974:	0cc77663          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    80008978:	00e50733          	add	a4,a0,a4
    8000897c:	00b70023          	sb	a1,0(a4)
    80008980:	0027871b          	addiw	a4,a5,2
    80008984:	0ac77e63          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00b70023          	sb	a1,0(a4)
    80008990:	0037871b          	addiw	a4,a5,3
    80008994:	0ac77663          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    80008998:	00e50733          	add	a4,a0,a4
    8000899c:	00b70023          	sb	a1,0(a4)
    800089a0:	0047871b          	addiw	a4,a5,4
    800089a4:	08c77e63          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    800089a8:	00e50733          	add	a4,a0,a4
    800089ac:	00b70023          	sb	a1,0(a4)
    800089b0:	0057871b          	addiw	a4,a5,5
    800089b4:	08c77663          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    800089b8:	00e50733          	add	a4,a0,a4
    800089bc:	00b70023          	sb	a1,0(a4)
    800089c0:	0067871b          	addiw	a4,a5,6
    800089c4:	06c77e63          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    800089c8:	00e50733          	add	a4,a0,a4
    800089cc:	00b70023          	sb	a1,0(a4)
    800089d0:	0077871b          	addiw	a4,a5,7
    800089d4:	06c77663          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    800089d8:	00e50733          	add	a4,a0,a4
    800089dc:	00b70023          	sb	a1,0(a4)
    800089e0:	0087871b          	addiw	a4,a5,8
    800089e4:	04c77e63          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    800089e8:	00e50733          	add	a4,a0,a4
    800089ec:	00b70023          	sb	a1,0(a4)
    800089f0:	0097871b          	addiw	a4,a5,9
    800089f4:	04c77663          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	00a7871b          	addiw	a4,a5,10
    80008a04:	02c77e63          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	00b7871b          	addiw	a4,a5,11
    80008a14:	02c77663          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	00c7871b          	addiw	a4,a5,12
    80008a24:	00c77e63          	bgeu	a4,a2,80008a40 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	00d7879b          	addiw	a5,a5,13
    80008a34:	00c7f663          	bgeu	a5,a2,80008a40 <__memset+0x1c8>
    80008a38:	00f507b3          	add	a5,a0,a5
    80008a3c:	00b78023          	sb	a1,0(a5)
    80008a40:	00813403          	ld	s0,8(sp)
    80008a44:	01010113          	addi	sp,sp,16
    80008a48:	00008067          	ret
    80008a4c:	00b00693          	li	a3,11
    80008a50:	e55ff06f          	j	800088a4 <__memset+0x2c>
    80008a54:	00300e93          	li	t4,3
    80008a58:	ea5ff06f          	j	800088fc <__memset+0x84>
    80008a5c:	00100e93          	li	t4,1
    80008a60:	e9dff06f          	j	800088fc <__memset+0x84>
    80008a64:	00000e93          	li	t4,0
    80008a68:	e95ff06f          	j	800088fc <__memset+0x84>
    80008a6c:	00000793          	li	a5,0
    80008a70:	ef9ff06f          	j	80008968 <__memset+0xf0>
    80008a74:	00200e93          	li	t4,2
    80008a78:	e85ff06f          	j	800088fc <__memset+0x84>
    80008a7c:	00400e93          	li	t4,4
    80008a80:	e7dff06f          	j	800088fc <__memset+0x84>
    80008a84:	00500e93          	li	t4,5
    80008a88:	e75ff06f          	j	800088fc <__memset+0x84>
    80008a8c:	00600e93          	li	t4,6
    80008a90:	e6dff06f          	j	800088fc <__memset+0x84>

0000000080008a94 <__memmove>:
    80008a94:	ff010113          	addi	sp,sp,-16
    80008a98:	00813423          	sd	s0,8(sp)
    80008a9c:	01010413          	addi	s0,sp,16
    80008aa0:	0e060863          	beqz	a2,80008b90 <__memmove+0xfc>
    80008aa4:	fff6069b          	addiw	a3,a2,-1
    80008aa8:	0006881b          	sext.w	a6,a3
    80008aac:	0ea5e863          	bltu	a1,a0,80008b9c <__memmove+0x108>
    80008ab0:	00758713          	addi	a4,a1,7
    80008ab4:	00a5e7b3          	or	a5,a1,a0
    80008ab8:	40a70733          	sub	a4,a4,a0
    80008abc:	0077f793          	andi	a5,a5,7
    80008ac0:	00f73713          	sltiu	a4,a4,15
    80008ac4:	00174713          	xori	a4,a4,1
    80008ac8:	0017b793          	seqz	a5,a5
    80008acc:	00e7f7b3          	and	a5,a5,a4
    80008ad0:	10078863          	beqz	a5,80008be0 <__memmove+0x14c>
    80008ad4:	00900793          	li	a5,9
    80008ad8:	1107f463          	bgeu	a5,a6,80008be0 <__memmove+0x14c>
    80008adc:	0036581b          	srliw	a6,a2,0x3
    80008ae0:	fff8081b          	addiw	a6,a6,-1
    80008ae4:	02081813          	slli	a6,a6,0x20
    80008ae8:	01d85893          	srli	a7,a6,0x1d
    80008aec:	00858813          	addi	a6,a1,8
    80008af0:	00058793          	mv	a5,a1
    80008af4:	00050713          	mv	a4,a0
    80008af8:	01088833          	add	a6,a7,a6
    80008afc:	0007b883          	ld	a7,0(a5)
    80008b00:	00878793          	addi	a5,a5,8
    80008b04:	00870713          	addi	a4,a4,8
    80008b08:	ff173c23          	sd	a7,-8(a4)
    80008b0c:	ff0798e3          	bne	a5,a6,80008afc <__memmove+0x68>
    80008b10:	ff867713          	andi	a4,a2,-8
    80008b14:	02071793          	slli	a5,a4,0x20
    80008b18:	0207d793          	srli	a5,a5,0x20
    80008b1c:	00f585b3          	add	a1,a1,a5
    80008b20:	40e686bb          	subw	a3,a3,a4
    80008b24:	00f507b3          	add	a5,a0,a5
    80008b28:	06e60463          	beq	a2,a4,80008b90 <__memmove+0xfc>
    80008b2c:	0005c703          	lbu	a4,0(a1)
    80008b30:	00e78023          	sb	a4,0(a5)
    80008b34:	04068e63          	beqz	a3,80008b90 <__memmove+0xfc>
    80008b38:	0015c603          	lbu	a2,1(a1)
    80008b3c:	00100713          	li	a4,1
    80008b40:	00c780a3          	sb	a2,1(a5)
    80008b44:	04e68663          	beq	a3,a4,80008b90 <__memmove+0xfc>
    80008b48:	0025c603          	lbu	a2,2(a1)
    80008b4c:	00200713          	li	a4,2
    80008b50:	00c78123          	sb	a2,2(a5)
    80008b54:	02e68e63          	beq	a3,a4,80008b90 <__memmove+0xfc>
    80008b58:	0035c603          	lbu	a2,3(a1)
    80008b5c:	00300713          	li	a4,3
    80008b60:	00c781a3          	sb	a2,3(a5)
    80008b64:	02e68663          	beq	a3,a4,80008b90 <__memmove+0xfc>
    80008b68:	0045c603          	lbu	a2,4(a1)
    80008b6c:	00400713          	li	a4,4
    80008b70:	00c78223          	sb	a2,4(a5)
    80008b74:	00e68e63          	beq	a3,a4,80008b90 <__memmove+0xfc>
    80008b78:	0055c603          	lbu	a2,5(a1)
    80008b7c:	00500713          	li	a4,5
    80008b80:	00c782a3          	sb	a2,5(a5)
    80008b84:	00e68663          	beq	a3,a4,80008b90 <__memmove+0xfc>
    80008b88:	0065c703          	lbu	a4,6(a1)
    80008b8c:	00e78323          	sb	a4,6(a5)
    80008b90:	00813403          	ld	s0,8(sp)
    80008b94:	01010113          	addi	sp,sp,16
    80008b98:	00008067          	ret
    80008b9c:	02061713          	slli	a4,a2,0x20
    80008ba0:	02075713          	srli	a4,a4,0x20
    80008ba4:	00e587b3          	add	a5,a1,a4
    80008ba8:	f0f574e3          	bgeu	a0,a5,80008ab0 <__memmove+0x1c>
    80008bac:	02069613          	slli	a2,a3,0x20
    80008bb0:	02065613          	srli	a2,a2,0x20
    80008bb4:	fff64613          	not	a2,a2
    80008bb8:	00e50733          	add	a4,a0,a4
    80008bbc:	00c78633          	add	a2,a5,a2
    80008bc0:	fff7c683          	lbu	a3,-1(a5)
    80008bc4:	fff78793          	addi	a5,a5,-1
    80008bc8:	fff70713          	addi	a4,a4,-1
    80008bcc:	00d70023          	sb	a3,0(a4)
    80008bd0:	fec798e3          	bne	a5,a2,80008bc0 <__memmove+0x12c>
    80008bd4:	00813403          	ld	s0,8(sp)
    80008bd8:	01010113          	addi	sp,sp,16
    80008bdc:	00008067          	ret
    80008be0:	02069713          	slli	a4,a3,0x20
    80008be4:	02075713          	srli	a4,a4,0x20
    80008be8:	00170713          	addi	a4,a4,1
    80008bec:	00e50733          	add	a4,a0,a4
    80008bf0:	00050793          	mv	a5,a0
    80008bf4:	0005c683          	lbu	a3,0(a1)
    80008bf8:	00178793          	addi	a5,a5,1
    80008bfc:	00158593          	addi	a1,a1,1
    80008c00:	fed78fa3          	sb	a3,-1(a5)
    80008c04:	fee798e3          	bne	a5,a4,80008bf4 <__memmove+0x160>
    80008c08:	f89ff06f          	j	80008b90 <__memmove+0xfc>

0000000080008c0c <__mem_free>:
    80008c0c:	ff010113          	addi	sp,sp,-16
    80008c10:	00813423          	sd	s0,8(sp)
    80008c14:	01010413          	addi	s0,sp,16
    80008c18:	00003597          	auipc	a1,0x3
    80008c1c:	f6058593          	addi	a1,a1,-160 # 8000bb78 <freep>
    80008c20:	0005b783          	ld	a5,0(a1)
    80008c24:	ff050693          	addi	a3,a0,-16
    80008c28:	0007b703          	ld	a4,0(a5)
    80008c2c:	00d7fc63          	bgeu	a5,a3,80008c44 <__mem_free+0x38>
    80008c30:	00e6ee63          	bltu	a3,a4,80008c4c <__mem_free+0x40>
    80008c34:	00e7fc63          	bgeu	a5,a4,80008c4c <__mem_free+0x40>
    80008c38:	00070793          	mv	a5,a4
    80008c3c:	0007b703          	ld	a4,0(a5)
    80008c40:	fed7e8e3          	bltu	a5,a3,80008c30 <__mem_free+0x24>
    80008c44:	fee7eae3          	bltu	a5,a4,80008c38 <__mem_free+0x2c>
    80008c48:	fee6f8e3          	bgeu	a3,a4,80008c38 <__mem_free+0x2c>
    80008c4c:	ff852803          	lw	a6,-8(a0)
    80008c50:	02081613          	slli	a2,a6,0x20
    80008c54:	01c65613          	srli	a2,a2,0x1c
    80008c58:	00c68633          	add	a2,a3,a2
    80008c5c:	02c70a63          	beq	a4,a2,80008c90 <__mem_free+0x84>
    80008c60:	fee53823          	sd	a4,-16(a0)
    80008c64:	0087a503          	lw	a0,8(a5)
    80008c68:	02051613          	slli	a2,a0,0x20
    80008c6c:	01c65613          	srli	a2,a2,0x1c
    80008c70:	00c78633          	add	a2,a5,a2
    80008c74:	04c68263          	beq	a3,a2,80008cb8 <__mem_free+0xac>
    80008c78:	00813403          	ld	s0,8(sp)
    80008c7c:	00d7b023          	sd	a3,0(a5)
    80008c80:	00f5b023          	sd	a5,0(a1)
    80008c84:	00000513          	li	a0,0
    80008c88:	01010113          	addi	sp,sp,16
    80008c8c:	00008067          	ret
    80008c90:	00872603          	lw	a2,8(a4)
    80008c94:	00073703          	ld	a4,0(a4)
    80008c98:	0106083b          	addw	a6,a2,a6
    80008c9c:	ff052c23          	sw	a6,-8(a0)
    80008ca0:	fee53823          	sd	a4,-16(a0)
    80008ca4:	0087a503          	lw	a0,8(a5)
    80008ca8:	02051613          	slli	a2,a0,0x20
    80008cac:	01c65613          	srli	a2,a2,0x1c
    80008cb0:	00c78633          	add	a2,a5,a2
    80008cb4:	fcc692e3          	bne	a3,a2,80008c78 <__mem_free+0x6c>
    80008cb8:	00813403          	ld	s0,8(sp)
    80008cbc:	0105053b          	addw	a0,a0,a6
    80008cc0:	00a7a423          	sw	a0,8(a5)
    80008cc4:	00e7b023          	sd	a4,0(a5)
    80008cc8:	00f5b023          	sd	a5,0(a1)
    80008ccc:	00000513          	li	a0,0
    80008cd0:	01010113          	addi	sp,sp,16
    80008cd4:	00008067          	ret

0000000080008cd8 <__mem_alloc>:
    80008cd8:	fc010113          	addi	sp,sp,-64
    80008cdc:	02813823          	sd	s0,48(sp)
    80008ce0:	02913423          	sd	s1,40(sp)
    80008ce4:	03213023          	sd	s2,32(sp)
    80008ce8:	01513423          	sd	s5,8(sp)
    80008cec:	02113c23          	sd	ra,56(sp)
    80008cf0:	01313c23          	sd	s3,24(sp)
    80008cf4:	01413823          	sd	s4,16(sp)
    80008cf8:	01613023          	sd	s6,0(sp)
    80008cfc:	04010413          	addi	s0,sp,64
    80008d00:	00003a97          	auipc	s5,0x3
    80008d04:	e78a8a93          	addi	s5,s5,-392 # 8000bb78 <freep>
    80008d08:	00f50913          	addi	s2,a0,15
    80008d0c:	000ab683          	ld	a3,0(s5)
    80008d10:	00495913          	srli	s2,s2,0x4
    80008d14:	0019049b          	addiw	s1,s2,1
    80008d18:	00048913          	mv	s2,s1
    80008d1c:	0c068c63          	beqz	a3,80008df4 <__mem_alloc+0x11c>
    80008d20:	0006b503          	ld	a0,0(a3)
    80008d24:	00852703          	lw	a4,8(a0)
    80008d28:	10977063          	bgeu	a4,s1,80008e28 <__mem_alloc+0x150>
    80008d2c:	000017b7          	lui	a5,0x1
    80008d30:	0009099b          	sext.w	s3,s2
    80008d34:	0af4e863          	bltu	s1,a5,80008de4 <__mem_alloc+0x10c>
    80008d38:	02099a13          	slli	s4,s3,0x20
    80008d3c:	01ca5a13          	srli	s4,s4,0x1c
    80008d40:	fff00b13          	li	s6,-1
    80008d44:	0100006f          	j	80008d54 <__mem_alloc+0x7c>
    80008d48:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80008d4c:	00852703          	lw	a4,8(a0)
    80008d50:	04977463          	bgeu	a4,s1,80008d98 <__mem_alloc+0xc0>
    80008d54:	00050793          	mv	a5,a0
    80008d58:	fea698e3          	bne	a3,a0,80008d48 <__mem_alloc+0x70>
    80008d5c:	000a0513          	mv	a0,s4
    80008d60:	00000097          	auipc	ra,0x0
    80008d64:	1f0080e7          	jalr	496(ra) # 80008f50 <kvmincrease>
    80008d68:	00050793          	mv	a5,a0
    80008d6c:	01050513          	addi	a0,a0,16
    80008d70:	07678e63          	beq	a5,s6,80008dec <__mem_alloc+0x114>
    80008d74:	0137a423          	sw	s3,8(a5)
    80008d78:	00000097          	auipc	ra,0x0
    80008d7c:	e94080e7          	jalr	-364(ra) # 80008c0c <__mem_free>
    80008d80:	000ab783          	ld	a5,0(s5)
    80008d84:	06078463          	beqz	a5,80008dec <__mem_alloc+0x114>
    80008d88:	0007b503          	ld	a0,0(a5)
    80008d8c:	00078693          	mv	a3,a5
    80008d90:	00852703          	lw	a4,8(a0)
    80008d94:	fc9760e3          	bltu	a4,s1,80008d54 <__mem_alloc+0x7c>
    80008d98:	08e48263          	beq	s1,a4,80008e1c <__mem_alloc+0x144>
    80008d9c:	4127073b          	subw	a4,a4,s2
    80008da0:	02071693          	slli	a3,a4,0x20
    80008da4:	01c6d693          	srli	a3,a3,0x1c
    80008da8:	00e52423          	sw	a4,8(a0)
    80008dac:	00d50533          	add	a0,a0,a3
    80008db0:	01252423          	sw	s2,8(a0)
    80008db4:	00fab023          	sd	a5,0(s5)
    80008db8:	01050513          	addi	a0,a0,16
    80008dbc:	03813083          	ld	ra,56(sp)
    80008dc0:	03013403          	ld	s0,48(sp)
    80008dc4:	02813483          	ld	s1,40(sp)
    80008dc8:	02013903          	ld	s2,32(sp)
    80008dcc:	01813983          	ld	s3,24(sp)
    80008dd0:	01013a03          	ld	s4,16(sp)
    80008dd4:	00813a83          	ld	s5,8(sp)
    80008dd8:	00013b03          	ld	s6,0(sp)
    80008ddc:	04010113          	addi	sp,sp,64
    80008de0:	00008067          	ret
    80008de4:	000019b7          	lui	s3,0x1
    80008de8:	f51ff06f          	j	80008d38 <__mem_alloc+0x60>
    80008dec:	00000513          	li	a0,0
    80008df0:	fcdff06f          	j	80008dbc <__mem_alloc+0xe4>
    80008df4:	00004797          	auipc	a5,0x4
    80008df8:	0ac78793          	addi	a5,a5,172 # 8000cea0 <base>
    80008dfc:	00078513          	mv	a0,a5
    80008e00:	00fab023          	sd	a5,0(s5)
    80008e04:	00f7b023          	sd	a5,0(a5)
    80008e08:	00000713          	li	a4,0
    80008e0c:	00004797          	auipc	a5,0x4
    80008e10:	0807ae23          	sw	zero,156(a5) # 8000cea8 <base+0x8>
    80008e14:	00050693          	mv	a3,a0
    80008e18:	f11ff06f          	j	80008d28 <__mem_alloc+0x50>
    80008e1c:	00053703          	ld	a4,0(a0)
    80008e20:	00e7b023          	sd	a4,0(a5)
    80008e24:	f91ff06f          	j	80008db4 <__mem_alloc+0xdc>
    80008e28:	00068793          	mv	a5,a3
    80008e2c:	f6dff06f          	j	80008d98 <__mem_alloc+0xc0>

0000000080008e30 <__putc>:
    80008e30:	fe010113          	addi	sp,sp,-32
    80008e34:	00813823          	sd	s0,16(sp)
    80008e38:	00113c23          	sd	ra,24(sp)
    80008e3c:	02010413          	addi	s0,sp,32
    80008e40:	00050793          	mv	a5,a0
    80008e44:	fef40593          	addi	a1,s0,-17
    80008e48:	00100613          	li	a2,1
    80008e4c:	00000513          	li	a0,0
    80008e50:	fef407a3          	sb	a5,-17(s0)
    80008e54:	fffff097          	auipc	ra,0xfffff
    80008e58:	918080e7          	jalr	-1768(ra) # 8000776c <console_write>
    80008e5c:	01813083          	ld	ra,24(sp)
    80008e60:	01013403          	ld	s0,16(sp)
    80008e64:	02010113          	addi	sp,sp,32
    80008e68:	00008067          	ret

0000000080008e6c <__getc>:
    80008e6c:	fe010113          	addi	sp,sp,-32
    80008e70:	00813823          	sd	s0,16(sp)
    80008e74:	00113c23          	sd	ra,24(sp)
    80008e78:	02010413          	addi	s0,sp,32
    80008e7c:	fe840593          	addi	a1,s0,-24
    80008e80:	00100613          	li	a2,1
    80008e84:	00000513          	li	a0,0
    80008e88:	fffff097          	auipc	ra,0xfffff
    80008e8c:	8c4080e7          	jalr	-1852(ra) # 8000774c <console_read>
    80008e90:	fe844503          	lbu	a0,-24(s0)
    80008e94:	01813083          	ld	ra,24(sp)
    80008e98:	01013403          	ld	s0,16(sp)
    80008e9c:	02010113          	addi	sp,sp,32
    80008ea0:	00008067          	ret

0000000080008ea4 <console_handler>:
    80008ea4:	fe010113          	addi	sp,sp,-32
    80008ea8:	00813823          	sd	s0,16(sp)
    80008eac:	00113c23          	sd	ra,24(sp)
    80008eb0:	00913423          	sd	s1,8(sp)
    80008eb4:	02010413          	addi	s0,sp,32
    80008eb8:	14202773          	csrr	a4,scause
    80008ebc:	100027f3          	csrr	a5,sstatus
    80008ec0:	0027f793          	andi	a5,a5,2
    80008ec4:	06079e63          	bnez	a5,80008f40 <console_handler+0x9c>
    80008ec8:	00074c63          	bltz	a4,80008ee0 <console_handler+0x3c>
    80008ecc:	01813083          	ld	ra,24(sp)
    80008ed0:	01013403          	ld	s0,16(sp)
    80008ed4:	00813483          	ld	s1,8(sp)
    80008ed8:	02010113          	addi	sp,sp,32
    80008edc:	00008067          	ret
    80008ee0:	0ff77713          	andi	a4,a4,255
    80008ee4:	00900793          	li	a5,9
    80008ee8:	fef712e3          	bne	a4,a5,80008ecc <console_handler+0x28>
    80008eec:	ffffe097          	auipc	ra,0xffffe
    80008ef0:	4b8080e7          	jalr	1208(ra) # 800073a4 <plic_claim>
    80008ef4:	00a00793          	li	a5,10
    80008ef8:	00050493          	mv	s1,a0
    80008efc:	02f50c63          	beq	a0,a5,80008f34 <console_handler+0x90>
    80008f00:	fc0506e3          	beqz	a0,80008ecc <console_handler+0x28>
    80008f04:	00050593          	mv	a1,a0
    80008f08:	00000517          	auipc	a0,0x0
    80008f0c:	79850513          	addi	a0,a0,1944 # 800096a0 <CONSOLE_STATUS+0x690>
    80008f10:	fffff097          	auipc	ra,0xfffff
    80008f14:	8d8080e7          	jalr	-1832(ra) # 800077e8 <__printf>
    80008f18:	01013403          	ld	s0,16(sp)
    80008f1c:	01813083          	ld	ra,24(sp)
    80008f20:	00048513          	mv	a0,s1
    80008f24:	00813483          	ld	s1,8(sp)
    80008f28:	02010113          	addi	sp,sp,32
    80008f2c:	ffffe317          	auipc	t1,0xffffe
    80008f30:	4b030067          	jr	1200(t1) # 800073dc <plic_complete>
    80008f34:	fffff097          	auipc	ra,0xfffff
    80008f38:	1bc080e7          	jalr	444(ra) # 800080f0 <uartintr>
    80008f3c:	fddff06f          	j	80008f18 <console_handler+0x74>
    80008f40:	00001517          	auipc	a0,0x1
    80008f44:	86050513          	addi	a0,a0,-1952 # 800097a0 <digits+0x78>
    80008f48:	fffff097          	auipc	ra,0xfffff
    80008f4c:	844080e7          	jalr	-1980(ra) # 8000778c <panic>

0000000080008f50 <kvmincrease>:
    80008f50:	fe010113          	addi	sp,sp,-32
    80008f54:	01213023          	sd	s2,0(sp)
    80008f58:	00001937          	lui	s2,0x1
    80008f5c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008f60:	00813823          	sd	s0,16(sp)
    80008f64:	00113c23          	sd	ra,24(sp)
    80008f68:	00913423          	sd	s1,8(sp)
    80008f6c:	02010413          	addi	s0,sp,32
    80008f70:	01250933          	add	s2,a0,s2
    80008f74:	00c95913          	srli	s2,s2,0xc
    80008f78:	02090863          	beqz	s2,80008fa8 <kvmincrease+0x58>
    80008f7c:	00000493          	li	s1,0
    80008f80:	00148493          	addi	s1,s1,1
    80008f84:	fffff097          	auipc	ra,0xfffff
    80008f88:	4bc080e7          	jalr	1212(ra) # 80008440 <kalloc>
    80008f8c:	fe991ae3          	bne	s2,s1,80008f80 <kvmincrease+0x30>
    80008f90:	01813083          	ld	ra,24(sp)
    80008f94:	01013403          	ld	s0,16(sp)
    80008f98:	00813483          	ld	s1,8(sp)
    80008f9c:	00013903          	ld	s2,0(sp)
    80008fa0:	02010113          	addi	sp,sp,32
    80008fa4:	00008067          	ret
    80008fa8:	01813083          	ld	ra,24(sp)
    80008fac:	01013403          	ld	s0,16(sp)
    80008fb0:	00813483          	ld	s1,8(sp)
    80008fb4:	00013903          	ld	s2,0(sp)
    80008fb8:	00000513          	li	a0,0
    80008fbc:	02010113          	addi	sp,sp,32
    80008fc0:	00008067          	ret
	...
