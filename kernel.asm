
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	bf013103          	ld	sp,-1040(sp) # 80005bf0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	460020ef          	jal	ra,8000247c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RISCV9push_regsEv>:
.global _ZN5RISCV9push_regsEv
.type _ZN5RISCV9push_regsEv, @function


_ZN5RISCV9push_regsEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5RISCV8pop_regsEv>:
.type _ZN5RISCV8pop_regsEv, @function

_ZN5RISCV8pop_regsEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256

    ret
    800010f4:	00008067          	ret

00000000800010f8 <_ZN5RISCV16handle_interruptEv>:
.global _ZN5RISCV16handle_interruptEv
.type _ZN5RISCV16handle_interruptEv, @function

_ZN5RISCV16handle_interruptEv:

    addi sp, sp, -256
    800010f8:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    800010fc:	00013023          	sd	zero,0(sp)
    80001100:	00113423          	sd	ra,8(sp)
    80001104:	00213823          	sd	sp,16(sp)
    80001108:	00313c23          	sd	gp,24(sp)
    8000110c:	02413023          	sd	tp,32(sp)
    80001110:	02513423          	sd	t0,40(sp)
    80001114:	02613823          	sd	t1,48(sp)
    80001118:	02713c23          	sd	t2,56(sp)
    8000111c:	04813023          	sd	s0,64(sp)
    80001120:	04b13c23          	sd	a1,88(sp)
    80001124:	06c13023          	sd	a2,96(sp)
    80001128:	06d13423          	sd	a3,104(sp)
    8000112c:	06e13823          	sd	a4,112(sp)
    80001130:	06f13c23          	sd	a5,120(sp)
    80001134:	09013023          	sd	a6,128(sp)
    80001138:	09113423          	sd	a7,136(sp)
    8000113c:	09213823          	sd	s2,144(sp)
    80001140:	09313c23          	sd	s3,152(sp)
    80001144:	0b413023          	sd	s4,160(sp)
    80001148:	0b513423          	sd	s5,168(sp)
    8000114c:	0b613823          	sd	s6,176(sp)
    80001150:	0b713c23          	sd	s7,184(sp)
    80001154:	0d813023          	sd	s8,192(sp)
    80001158:	0d913423          	sd	s9,200(sp)
    8000115c:	0da13823          	sd	s10,208(sp)
    80001160:	0db13c23          	sd	s11,216(sp)
    80001164:	0fc13023          	sd	t3,224(sp)
    80001168:	0fd13423          	sd	t4,232(sp)
    8000116c:	0fe13823          	sd	t5,240(sp)
    80001170:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RISCV15supervisor_trapEv
    80001174:	171000ef          	jal	ra,80001ae4 <_ZN5RISCV15supervisor_trapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001178:	00013003          	ld	zero,0(sp)
    8000117c:	00813083          	ld	ra,8(sp)
    80001180:	01013103          	ld	sp,16(sp)
    80001184:	01813183          	ld	gp,24(sp)
    80001188:	02013203          	ld	tp,32(sp)
    8000118c:	02813283          	ld	t0,40(sp)
    80001190:	03013303          	ld	t1,48(sp)
    80001194:	03813383          	ld	t2,56(sp)
    80001198:	04013403          	ld	s0,64(sp)
    8000119c:	05813583          	ld	a1,88(sp)
    800011a0:	06013603          	ld	a2,96(sp)
    800011a4:	06813683          	ld	a3,104(sp)
    800011a8:	07013703          	ld	a4,112(sp)
    800011ac:	07813783          	ld	a5,120(sp)
    800011b0:	08013803          	ld	a6,128(sp)
    800011b4:	08813883          	ld	a7,136(sp)
    800011b8:	09013903          	ld	s2,144(sp)
    800011bc:	09813983          	ld	s3,152(sp)
    800011c0:	0a013a03          	ld	s4,160(sp)
    800011c4:	0a813a83          	ld	s5,168(sp)
    800011c8:	0b013b03          	ld	s6,176(sp)
    800011cc:	0b813b83          	ld	s7,184(sp)
    800011d0:	0c013c03          	ld	s8,192(sp)
    800011d4:	0c813c83          	ld	s9,200(sp)
    800011d8:	0d013d03          	ld	s10,208(sp)
    800011dc:	0d813d83          	ld	s11,216(sp)
    800011e0:	0e013e03          	ld	t3,224(sp)
    800011e4:	0e813e83          	ld	t4,232(sp)
    800011e8:	0f013f03          	ld	t5,240(sp)
    800011ec:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    800011f0:	10010113          	addi	sp,sp,256

    800011f4:	10200073          	sret
	...

0000000080001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function

_ZN3TCB13contextSwitchEPNS_7ContextES1_:

    # a0 - &old->context
    sd ra, 0 * 8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    # a0 - &old->context
    ld ra, 0 * 8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <_Z11system_callmmmmm>:


// opsta funkcija, opsti argumenti
// op code -> registar a0 ___ argumenti reg a1 .. a4

void system_call(uint64 op_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001214:	ff010113          	addi	sp,sp,-16
    80001218:	00813423          	sd	s0,8(sp)
    8000121c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001220:	00000073          	ecall
}
    80001224:	00813403          	ld	s0,8(sp)
    80001228:	01010113          	addi	sp,sp,16
    8000122c:	00008067          	ret

0000000080001230 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (!size) return nullptr;
    80001230:	04050263          	beqz	a0,80001274 <_Z9mem_allocm+0x44>
void* mem_alloc (size_t size) {
    80001234:	ff010113          	addi	sp,sp,-16
    80001238:	00113423          	sd	ra,8(sp)
    8000123c:	00813023          	sd	s0,0(sp)
    80001240:	01010413          	addi	s0,sp,16
    void volatile *ptr;
    system_call(MEM_ALLOC, size + mem_h_size);
    80001244:	00000713          	li	a4,0
    80001248:	00000693          	li	a3,0
    8000124c:	00000613          	li	a2,0
    80001250:	01850593          	addi	a1,a0,24
    80001254:	00100513          	li	a0,1
    80001258:	00000097          	auipc	ra,0x0
    8000125c:	fbc080e7          	jalr	-68(ra) # 80001214 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(ptr));
    80001260:	00050513          	mv	a0,a0
    return (void*)ptr;
}
    80001264:	00813083          	ld	ra,8(sp)
    80001268:	00013403          	ld	s0,0(sp)
    8000126c:	01010113          	addi	sp,sp,16
    80001270:	00008067          	ret
    if (!size) return nullptr;
    80001274:	00000513          	li	a0,0
}
    80001278:	00008067          	ret

000000008000127c <_Z8mem_freePv>:

int mem_free(void* ptr) {
    8000127c:	fe010113          	addi	sp,sp,-32
    80001280:	00113c23          	sd	ra,24(sp)
    80001284:	00813823          	sd	s0,16(sp)
    80001288:	02010413          	addi	s0,sp,32
    8000128c:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(MEM_FREE, (uint64)ptr);
    80001290:	00000713          	li	a4,0
    80001294:	00000693          	li	a3,0
    80001298:	00000613          	li	a2,0
    8000129c:	00200513          	li	a0,2
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	f74080e7          	jalr	-140(ra) # 80001214 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800012a8:	00050793          	mv	a5,a0
    800012ac:	fef42623          	sw	a5,-20(s0)
    return a0;
    800012b0:	fec42503          	lw	a0,-20(s0)
}
    800012b4:	0005051b          	sext.w	a0,a0
    800012b8:	01813083          	ld	ra,24(sp)
    800012bc:	01013403          	ld	s0,16(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z13thread_createPP7_threadPFvPvES2_>:
// sistemski poziv thread_create prima
// dodatno void* stack_space
int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {

    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012c8:	08058663          	beqz	a1,80001354 <_Z13thread_createPP7_threadPFvPvES2_+0x8c>
int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012cc:	fc010113          	addi	sp,sp,-64
    800012d0:	02113c23          	sd	ra,56(sp)
    800012d4:	02813823          	sd	s0,48(sp)
    800012d8:	02913423          	sd	s1,40(sp)
    800012dc:	03213023          	sd	s2,32(sp)
    800012e0:	01313c23          	sd	s3,24(sp)
    800012e4:	04010413          	addi	s0,sp,64
    800012e8:	00050913          	mv	s2,a0
    800012ec:	00058493          	mv	s1,a1
    800012f0:	00060993          	mv	s3,a2
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012f4:	00001537          	lui	a0,0x1
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	f38080e7          	jalr	-200(ra) # 80001230 <_Z9mem_allocm>
    80001300:	00050713          	mv	a4,a0
    if (!stack_space) return -1; // error
    80001304:	04050463          	beqz	a0,8000134c <_Z13thread_createPP7_threadPFvPvES2_+0x84>
    system_call(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    80001308:	00098693          	mv	a3,s3
    8000130c:	00048613          	mv	a2,s1
    80001310:	00090593          	mv	a1,s2
    80001314:	01100513          	li	a0,17
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	efc080e7          	jalr	-260(ra) # 80001214 <_Z11system_callmmmmm>
    int volatile a0;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001320:	00050793          	mv	a5,a0
    80001324:	fcf42623          	sw	a5,-52(s0)
    return a0;
    80001328:	fcc42503          	lw	a0,-52(s0)
    8000132c:	0005051b          	sext.w	a0,a0

}
    80001330:	03813083          	ld	ra,56(sp)
    80001334:	03013403          	ld	s0,48(sp)
    80001338:	02813483          	ld	s1,40(sp)
    8000133c:	02013903          	ld	s2,32(sp)
    80001340:	01813983          	ld	s3,24(sp)
    80001344:	04010113          	addi	sp,sp,64
    80001348:	00008067          	ret
    if (!stack_space) return -1; // error
    8000134c:	fff00513          	li	a0,-1
    80001350:	fe1ff06f          	j	80001330 <_Z13thread_createPP7_threadPFvPvES2_+0x68>
    80001354:	fff00513          	li	a0,-1
}
    80001358:	00008067          	ret

000000008000135c <_Z11thread_exitv>:

int thread_exit() {
    8000135c:	fe010113          	addi	sp,sp,-32
    80001360:	00113c23          	sd	ra,24(sp)
    80001364:	00813823          	sd	s0,16(sp)
    80001368:	02010413          	addi	s0,sp,32
    int volatile a0;
    system_call(THREAD_EXIT);
    8000136c:	00000713          	li	a4,0
    80001370:	00000693          	li	a3,0
    80001374:	00000613          	li	a2,0
    80001378:	00000593          	li	a1,0
    8000137c:	01200513          	li	a0,18
    80001380:	00000097          	auipc	ra,0x0
    80001384:	e94080e7          	jalr	-364(ra) # 80001214 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001388:	00050793          	mv	a5,a0
    8000138c:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001390:	fec42503          	lw	a0,-20(s0)
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	01813083          	ld	ra,24(sp)
    8000139c:	01013403          	ld	s0,16(sp)
    800013a0:	02010113          	addi	sp,sp,32
    800013a4:	00008067          	ret

00000000800013a8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00113423          	sd	ra,8(sp)
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	01010413          	addi	s0,sp,16
    system_call(THREAD_DISPATCH);
    800013b8:	00000713          	li	a4,0
    800013bc:	00000693          	li	a3,0
    800013c0:	00000613          	li	a2,0
    800013c4:	00000593          	li	a1,0
    800013c8:	01300513          	li	a0,19
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	e48080e7          	jalr	-440(ra) # 80001214 <_Z11system_callmmmmm>
}
    800013d4:	00813083          	ld	ra,8(sp)
    800013d8:	00013403          	ld	s0,0(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_Z8sem_openv>:

int sem_open() {
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    return 0;
}
    800013f0:	00000513          	li	a0,0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z9sem_closev>:

int sem_close() {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    return 0;
}
    8000140c:	00000513          	li	a0,0
    80001410:	00813403          	ld	s0,8(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <_Z8sem_waitv>:

int sem_wait() {
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
 return 0;
}
    80001428:	00000513          	li	a0,0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z10sem_signalv>:

int sem_signal() {
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    return 0;
}
    80001444:	00000513          	li	a0,0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z4getcv>:

char getc() {
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001460:	00000513          	li	a0,0
    80001464:	00813403          	ld	s0,8(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_Z4putcc>:

void putc(char c) {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16

}
    8000147c:	00813403          	ld	s0,8(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_ZN3Sem5blockEv>:
    if (++value <= 0) deblock();
    return 0;
}


void Sem::block() {
    80001488:	fe010113          	addi	sp,sp,-32
    8000148c:	00113c23          	sd	ra,24(sp)
    80001490:	00813823          	sd	s0,16(sp)
    80001494:	00913423          	sd	s1,8(sp)
    80001498:	01213023          	sd	s2,0(sp)
    8000149c:	02010413          	addi	s0,sp,32
    800014a0:	00050493          	mv	s1,a0
    TCB* oldRunning = TCB::running;
    800014a4:	00004797          	auipc	a5,0x4
    800014a8:	75c7b783          	ld	a5,1884(a5) # 80005c00 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014ac:	0007b903          	ld	s2,0(a5)
    List<T> operator=(const List<T> &) = delete;

    /// dodavanje na pocetak po potrebi

    void add(T *newData) {
        Elem* newElem = new Elem(newData, nullptr);
    800014b0:	01000513          	li	a0,16
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	474080e7          	jalr	1140(ra) # 80001928 <_Znwm>
        Elem(T *data, Elem* next) : data(data), next(next) {}
    800014bc:	01253023          	sd	s2,0(a0) # 1000 <_entry-0x7ffff000>
    800014c0:	00053423          	sd	zero,8(a0)
        if (tail) tail = tail -> next = newElem;
    800014c4:	0104b783          	ld	a5,16(s1)
    800014c8:	00078463          	beqz	a5,800014d0 <_ZN3Sem5blockEv+0x48>
    800014cc:	00a7b423          	sd	a0,8(a5)
        head = tail = newElem;
    800014d0:	00a4b823          	sd	a0,16(s1)
    800014d4:	00a4b423          	sd	a0,8(s1)
    blocked.add(oldRunning);
    TCB::running = Scheduler::get();
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	170080e7          	jalr	368(ra) # 80001648 <_ZN9Scheduler3getEv>
    800014e0:	00050593          	mv	a1,a0
    800014e4:	00004797          	auipc	a5,0x4
    800014e8:	71c7b783          	ld	a5,1820(a5) # 80005c00 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014ec:	00a7b023          	sd	a0,0(a5)
    TCB::yield(oldRunning, TCB::running);
    800014f0:	00090513          	mv	a0,s2
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	ccc080e7          	jalr	-820(ra) # 800021c0 <_ZN3TCB5yieldEPS_S0_>
}
    800014fc:	01813083          	ld	ra,24(sp)
    80001500:	01013403          	ld	s0,16(sp)
    80001504:	00813483          	ld	s1,8(sp)
    80001508:	00013903          	ld	s2,0(sp)
    8000150c:	02010113          	addi	sp,sp,32
    80001510:	00008067          	ret

0000000080001514 <_ZN3Sem4waitEv>:
    if (isClosed) return -1;
    80001514:	00454783          	lbu	a5,4(a0)
    80001518:	04079663          	bnez	a5,80001564 <_ZN3Sem4waitEv+0x50>
    if (--value < 0) block();
    8000151c:	00052783          	lw	a5,0(a0)
    80001520:	fff7879b          	addiw	a5,a5,-1
    80001524:	00f52023          	sw	a5,0(a0)
    80001528:	02079713          	slli	a4,a5,0x20
    8000152c:	00074663          	bltz	a4,80001538 <_ZN3Sem4waitEv+0x24>
    return 0;
    80001530:	00000513          	li	a0,0
}
    80001534:	00008067          	ret
int Sem::wait() {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
    if (--value < 0) block();
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	f40080e7          	jalr	-192(ra) # 80001488 <_ZN3Sem5blockEv>
    return 0;
    80001550:	00000513          	li	a0,0
}
    80001554:	00813083          	ld	ra,8(sp)
    80001558:	00013403          	ld	s0,0(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret
    if (isClosed) return -1;
    80001564:	fff00513          	li	a0,-1
    80001568:	00008067          	ret

000000008000156c <_ZN3Sem7deblockEv>:

void Sem::deblock() {
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	00813823          	sd	s0,16(sp)
    80001578:	00913423          	sd	s1,8(sp)
    8000157c:	02010413          	addi	s0,sp,32
    80001580:	00050793          	mv	a5,a0
        if (!head) return nullptr;
        return head -> data;
    }

    T* removeFirst() {
        if (!head) return nullptr;
    80001584:	00853503          	ld	a0,8(a0)
    80001588:	04050263          	beqz	a0,800015cc <_ZN3Sem7deblockEv+0x60>
        Elem* removed = head;
        head = head -> next;
    8000158c:	00853703          	ld	a4,8(a0)
    80001590:	00e7b423          	sd	a4,8(a5)
        if (!head) tail = nullptr;
    80001594:	02070863          	beqz	a4,800015c4 <_ZN3Sem7deblockEv+0x58>
        T *ret = removed -> data;
    80001598:	00053483          	ld	s1,0(a0)
        delete removed;
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	404080e7          	jalr	1028(ra) # 800019a0 <_ZdlPv>
    TCB* t = blocked.removeFirst();
    Scheduler::put(t);
    800015a4:	00048513          	mv	a0,s1
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	108080e7          	jalr	264(ra) # 800016b0 <_ZN9Scheduler3putEP3TCB>
}
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret
        if (!head) tail = nullptr;
    800015c4:	0007b823          	sd	zero,16(a5)
    800015c8:	fd1ff06f          	j	80001598 <_ZN3Sem7deblockEv+0x2c>
        if (!head) return nullptr;
    800015cc:	00050493          	mv	s1,a0
    800015d0:	fd5ff06f          	j	800015a4 <_ZN3Sem7deblockEv+0x38>

00000000800015d4 <_ZN3Sem6signalEv>:
    if (isClosed) return -1;
    800015d4:	00454783          	lbu	a5,4(a0)
    800015d8:	04079663          	bnez	a5,80001624 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) deblock();
    800015dc:	00052783          	lw	a5,0(a0)
    800015e0:	0017879b          	addiw	a5,a5,1
    800015e4:	0007871b          	sext.w	a4,a5
    800015e8:	00f52023          	sw	a5,0(a0)
    800015ec:	00e05663          	blez	a4,800015f8 <_ZN3Sem6signalEv+0x24>
    return 0;
    800015f0:	00000513          	li	a0,0
}
    800015f4:	00008067          	ret
int Sem::signal() {
    800015f8:	ff010113          	addi	sp,sp,-16
    800015fc:	00113423          	sd	ra,8(sp)
    80001600:	00813023          	sd	s0,0(sp)
    80001604:	01010413          	addi	s0,sp,16
    if (++value <= 0) deblock();
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	f64080e7          	jalr	-156(ra) # 8000156c <_ZN3Sem7deblockEv>
    return 0;
    80001610:	00000513          	li	a0,0
}
    80001614:	00813083          	ld	ra,8(sp)
    80001618:	00013403          	ld	s0,0(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret
    if (isClosed) return -1;
    80001624:	fff00513          	li	a0,-1
    80001628:	00008067          	ret

000000008000162c <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t) {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    return 0;
}
    80001638:	00000513          	li	a0,0
    8000163c:	00813403          	ld	s0,8(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_ZN9Scheduler3getEv>:

#include "../h/Scheduler.hpp"

List<TCB> Scheduler::list;

TCB *Scheduler::get() {
    80001648:	fe010113          	addi	sp,sp,-32
    8000164c:	00113c23          	sd	ra,24(sp)
    80001650:	00813823          	sd	s0,16(sp)
    80001654:	00913423          	sd	s1,8(sp)
    80001658:	02010413          	addi	s0,sp,32
    8000165c:	00004517          	auipc	a0,0x4
    80001660:	60453503          	ld	a0,1540(a0) # 80005c60 <_ZN9Scheduler4listE>
    80001664:	04050263          	beqz	a0,800016a8 <_ZN9Scheduler3getEv+0x60>
        head = head -> next;
    80001668:	00853783          	ld	a5,8(a0)
    8000166c:	00004717          	auipc	a4,0x4
    80001670:	5ef73a23          	sd	a5,1524(a4) # 80005c60 <_ZN9Scheduler4listE>
        if (!head) tail = nullptr;
    80001674:	02078463          	beqz	a5,8000169c <_ZN9Scheduler3getEv+0x54>
        T *ret = removed -> data;
    80001678:	00053483          	ld	s1,0(a0)
        delete removed;
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	324080e7          	jalr	804(ra) # 800019a0 <_ZdlPv>
    return list.removeFirst();
}
    80001684:	00048513          	mv	a0,s1
    80001688:	01813083          	ld	ra,24(sp)
    8000168c:	01013403          	ld	s0,16(sp)
    80001690:	00813483          	ld	s1,8(sp)
    80001694:	02010113          	addi	sp,sp,32
    80001698:	00008067          	ret
        if (!head) tail = nullptr;
    8000169c:	00004797          	auipc	a5,0x4
    800016a0:	5c07b623          	sd	zero,1484(a5) # 80005c68 <_ZN9Scheduler4listE+0x8>
    800016a4:	fd5ff06f          	j	80001678 <_ZN9Scheduler3getEv+0x30>
        if (!head) return nullptr;
    800016a8:	00050493          	mv	s1,a0
    return list.removeFirst();
    800016ac:	fd9ff06f          	j	80001684 <_ZN9Scheduler3getEv+0x3c>

00000000800016b0 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	02010413          	addi	s0,sp,32
    800016c4:	00050493          	mv	s1,a0
        Elem* newElem = new Elem(newData, nullptr);
    800016c8:	01000513          	li	a0,16
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	25c080e7          	jalr	604(ra) # 80001928 <_Znwm>
        Elem(T *data, Elem* next) : data(data), next(next) {}
    800016d4:	00953023          	sd	s1,0(a0)
    800016d8:	00053423          	sd	zero,8(a0)
        if (tail) tail = tail -> next = newElem;
    800016dc:	00004797          	auipc	a5,0x4
    800016e0:	58c7b783          	ld	a5,1420(a5) # 80005c68 <_ZN9Scheduler4listE+0x8>
    800016e4:	00078463          	beqz	a5,800016ec <_ZN9Scheduler3putEP3TCB+0x3c>
    800016e8:	00a7b423          	sd	a0,8(a5)
        head = tail = newElem;
    800016ec:	00004797          	auipc	a5,0x4
    800016f0:	57478793          	addi	a5,a5,1396 # 80005c60 <_ZN9Scheduler4listE>
    800016f4:	00a7b423          	sd	a0,8(a5)
    800016f8:	00a7b023          	sd	a0,0(a5)
    list.add(newTCB);
}
    800016fc:	01813083          	ld	ra,24(sp)
    80001700:	01013403          	ld	s0,16(sp)
    80001704:	00813483          	ld	s1,8(sp)
    80001708:	02010113          	addi	sp,sp,32
    8000170c:	00008067          	ret

0000000080001710 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00813423          	sd	s0,8(sp)
    80001718:	01010413          	addi	s0,sp,16
        if (!head) return nullptr;
    8000171c:	00004517          	auipc	a0,0x4
    80001720:	54453503          	ld	a0,1348(a0) # 80005c60 <_ZN9Scheduler4listE>
    80001724:	00050463          	beqz	a0,8000172c <_ZN9Scheduler5emptyEv+0x1c>
        return head -> data;
    80001728:	00053503          	ld	a0,0(a0)
    return list.peek() == nullptr;
}
    8000172c:	00153513          	seqz	a0,a0
    80001730:	00813403          	ld	s0,8(sp)
    80001734:	01010113          	addi	sp,sp,16
    80001738:	00008067          	ret

000000008000173c <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    8000173c:	ff010113          	addi	sp,sp,-16
    80001740:	00113423          	sd	ra,8(sp)
    80001744:	00813023          	sd	s0,0(sp)
    80001748:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000174c:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001750:	00655513          	srli	a0,a0,0x6
    80001754:	00000097          	auipc	ra,0x0
    80001758:	4f8080e7          	jalr	1272(ra) # 80001c4c <_ZN15MemoryAllocator9mem_allocEm>
}
    8000175c:	00813083          	ld	ra,8(sp)
    80001760:	00013403          	ld	s0,0(sp)
    80001764:	01010113          	addi	sp,sp,16
    80001768:	00008067          	ret

000000008000176c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    8000176c:	ff010113          	addi	sp,sp,-16
    80001770:	00113423          	sd	ra,8(sp)
    80001774:	00813023          	sd	s0,0(sp)
    80001778:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	6f8080e7          	jalr	1784(ra) # 80001e74 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001784:	00813083          	ld	ra,8(sp)
    80001788:	00013403          	ld	s0,0(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <_Z19testMemoryAllocatorv>:
#include "../lib/console.h"
#include "../h/thread.hpp"
#include "../h/riscv.hpp"


void testMemoryAllocator() {
    80001794:	fe010113          	addi	sp,sp,-32
    80001798:	00113c23          	sd	ra,24(sp)
    8000179c:	00813823          	sd	s0,16(sp)
    800017a0:	00913423          	sd	s1,8(sp)
    800017a4:	01213023          	sd	s2,0(sp)
    800017a8:	02010413          	addi	s0,sp,32

    void *addr = MemoryAllocator::mem_alloc(1);
    800017ac:	00100513          	li	a0,1
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	49c080e7          	jalr	1180(ra) # 80001c4c <_ZN15MemoryAllocator9mem_allocEm>
    800017b8:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	834080e7          	jalr	-1996(ra) # 80001ff0 <_ZN15MemoryAllocator5printEv>
    int ret1 = MemoryAllocator::mem_free(addr);
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	6ac080e7          	jalr	1708(ra) # 80001e74 <_ZN15MemoryAllocator8mem_freeEPKv>
    800017d0:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	81c080e7          	jalr	-2020(ra) # 80001ff0 <_ZN15MemoryAllocator5printEv>

    int ret2 = MemoryAllocator::mem_free(addr);
    800017dc:	00048513          	mv	a0,s1
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	694080e7          	jalr	1684(ra) # 80001e74 <_ZN15MemoryAllocator8mem_freeEPKv>
    800017e8:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	804080e7          	jalr	-2044(ra) # 80001ff0 <_ZN15MemoryAllocator5printEv>

    if (ret1 == 0) __putc('G');
    800017f4:	02090063          	beqz	s2,80001814 <_Z19testMemoryAllocatorv+0x80>
    if (ret2 < 0) __putc('G');
    800017f8:	0204c663          	bltz	s1,80001824 <_Z19testMemoryAllocatorv+0x90>

}
    800017fc:	01813083          	ld	ra,24(sp)
    80001800:	01013403          	ld	s0,16(sp)
    80001804:	00813483          	ld	s1,8(sp)
    80001808:	00013903          	ld	s2,0(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret
    if (ret1 == 0) __putc('G');
    80001814:	04700513          	li	a0,71
    80001818:	00003097          	auipc	ra,0x3
    8000181c:	d24080e7          	jalr	-732(ra) # 8000453c <__putc>
    80001820:	fd9ff06f          	j	800017f8 <_Z19testMemoryAllocatorv+0x64>
    if (ret2 < 0) __putc('G');
    80001824:	04700513          	li	a0,71
    80001828:	00003097          	auipc	ra,0x3
    8000182c:	d14080e7          	jalr	-748(ra) # 8000453c <__putc>
}
    80001830:	fcdff06f          	j	800017fc <_Z19testMemoryAllocatorv+0x68>

0000000080001834 <_Z11testCMemoryv>:

void testCMemory() {
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	7a8080e7          	jalr	1960(ra) # 80001ff0 <_ZN15MemoryAllocator5printEv>
    void* addr = mem_alloc(50);
    80001850:	03200513          	li	a0,50
    80001854:	00000097          	auipc	ra,0x0
    80001858:	9dc080e7          	jalr	-1572(ra) # 80001230 <_Z9mem_allocm>
    8000185c:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	790080e7          	jalr	1936(ra) # 80001ff0 <_ZN15MemoryAllocator5printEv>
    mem_free(addr);
    80001868:	00048513          	mv	a0,s1
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	a10080e7          	jalr	-1520(ra) # 8000127c <_Z8mem_freePv>
    MemoryAllocator::print();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	77c080e7          	jalr	1916(ra) # 80001ff0 <_ZN15MemoryAllocator5printEv>
}
    8000187c:	01813083          	ld	ra,24(sp)
    80001880:	01013403          	ld	s0,16(sp)
    80001884:	00813483          	ld	s1,8(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret

0000000080001890 <main>:

int main() {
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16

    RISCV::wr_stvec((uint64)&RISCV::handle_interrupt);
    800018a0:	00004797          	auipc	a5,0x4
    800018a4:	3587b783          	ld	a5,856(a5) # 80005bf8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    800018a8:	10579073          	csrw	stvec,a5
    // ecall jumps to addres in stvec reg

    MemoryAllocator::getAllocator();
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	4c8080e7          	jalr	1224(ra) # 80001d74 <_ZN15MemoryAllocator12getAllocatorEv>

    // testMemoryAllocator();
    testCMemory();
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	f80080e7          	jalr	-128(ra) # 80001834 <_Z11testCMemoryv>

    return 0;
}
    800018bc:	00000513          	li	a0,0
    800018c0:	00813083          	ld	ra,8(sp)
    800018c4:	00013403          	ld	s0,0(sp)
    800018c8:	01010113          	addi	sp,sp,16
    800018cc:	00008067          	ret

00000000800018d0 <_ZN6ThreadD1Ev>:

Thread::Thread() {

}

Thread::~Thread() {
    800018d0:	ff010113          	addi	sp,sp,-16
    800018d4:	00813423          	sd	s0,8(sp)
    800018d8:	01010413          	addi	s0,sp,16

}
    800018dc:	00813403          	ld	s0,8(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_ZN6Thread7wrapperEPv>:

void Thread::wrapper(void *arg) {
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	00813023          	sd	s0,0(sp)
    800018f4:	01010413          	addi	s0,sp,16
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    Thread* t = (Thread*) arg;
    if (t->body) t->body(t->arg);
    800018f8:	01053783          	ld	a5,16(a0)
    800018fc:	00078e63          	beqz	a5,80001918 <_ZN6Thread7wrapperEPv+0x30>
    80001900:	01853503          	ld	a0,24(a0)
    80001904:	000780e7          	jalr	a5
    else t->run(); /// ????????????????????
}
    80001908:	00813083          	ld	ra,8(sp)
    8000190c:	00013403          	ld	s0,0(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret
    else t->run(); /// ????????????????????
    80001918:	00053783          	ld	a5,0(a0)
    8000191c:	0107b783          	ld	a5,16(a5)
    80001920:	000780e7          	jalr	a5
}
    80001924:	fe5ff06f          	j	80001908 <_ZN6Thread7wrapperEPv+0x20>

0000000080001928 <_Znwm>:
void* operator new (size_t size) {
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00113423          	sd	ra,8(sp)
    80001930:	00813023          	sd	s0,0(sp)
    80001934:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	8f8080e7          	jalr	-1800(ra) # 80001230 <_Z9mem_allocm>
}
    80001940:	00813083          	ld	ra,8(sp)
    80001944:	00013403          	ld	s0,0(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <_Znam>:
void* operator new[](size_t size) {
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00113423          	sd	ra,8(sp)
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001960:	00000097          	auipc	ra,0x0
    80001964:	8d0080e7          	jalr	-1840(ra) # 80001230 <_Z9mem_allocm>
}
    80001968:	00813083          	ld	ra,8(sp)
    8000196c:	00013403          	ld	s0,0(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_ZdaPv>:
void operator delete[](void* ptr) noexcept {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
     mem_free(ptr);
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	8f4080e7          	jalr	-1804(ra) # 8000127c <_Z8mem_freePv>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	00813023          	sd	s0,0(sp)
    800019ac:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	8cc080e7          	jalr	-1844(ra) # 8000127c <_Z8mem_freePv>
}
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00113423          	sd	ra,8(sp)
    800019d0:	00813023          	sd	s0,0(sp)
    800019d4:	01010413          	addi	s0,sp,16
}
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	fc8080e7          	jalr	-56(ra) # 800019a0 <_ZdlPv>
    800019e0:	00813083          	ld	ra,8(sp)
    800019e4:	00013403          	ld	s0,0(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800019f0:	ff010113          	addi	sp,sp,-16
    800019f4:	00813423          	sd	s0,8(sp)
    800019f8:	01010413          	addi	s0,sp,16
    800019fc:	00004797          	auipc	a5,0x4
    80001a00:	1c478793          	addi	a5,a5,452 # 80005bc0 <_ZTV6Thread+0x10>
    80001a04:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001a08:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001a0c:	00c53c23          	sd	a2,24(a0)
}
    80001a10:	00813403          	ld	s0,8(sp)
    80001a14:	01010113          	addi	sp,sp,16
    80001a18:	00008067          	ret

0000000080001a1c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00813423          	sd	s0,8(sp)
    80001a24:	01010413          	addi	s0,sp,16
}
    80001a28:	00000513          	li	a0,0
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
}
    80001a44:	00813403          	ld	s0,8(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN6Thread5startEv>:
int Thread::start() {
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00113423          	sd	ra,8(sp)
    80001a58:	00813023          	sd	s0,0(sp)
    80001a5c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, &wrapper, this);
    80001a60:	00050613          	mv	a2,a0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	e8458593          	addi	a1,a1,-380 # 800018e8 <_ZN6Thread7wrapperEPv>
    80001a6c:	00850513          	addi	a0,a0,8
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	858080e7          	jalr	-1960(ra) # 800012c8 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001a78:	00813083          	ld	ra,8(sp)
    80001a7c:	00013403          	ld	s0,0(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    80001a94:	00004797          	auipc	a5,0x4
    80001a98:	12c78793          	addi	a5,a5,300 # 80005bc0 <_ZTV6Thread+0x10>
    80001a9c:	00f53023          	sd	a5,0(a0)
}
    80001aa0:	00813403          	ld	s0,8(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    80001aac:	ff010113          	addi	sp,sp,-16
    80001ab0:	00813423          	sd	s0,8(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    80001ab8:	00813403          	ld	s0,8(sp)
    80001abc:	01010113          	addi	sp,sp,16
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZN5RISCV10popSppSpieEv>:
#include "../h/thread.hpp"

// not inline ( ra reg )
// first time running a thread, sepc inside of wrapper

void RISCV::popSppSpie() {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00813423          	sd	s0,8(sp)
    80001acc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001ad0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001ad4:	10200073          	sret
}
    80001ad8:	00813403          	ld	s0,8(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN5RISCV15supervisor_trapEv>:

void RISCV::supervisor_trap() {
    80001ae4:	fb010113          	addi	sp,sp,-80
    80001ae8:	04113423          	sd	ra,72(sp)
    80001aec:	04813023          	sd	s0,64(sp)
    80001af0:	02913c23          	sd	s1,56(sp)
    80001af4:	03213823          	sd	s2,48(sp)
    80001af8:	05010413          	addi	s0,sp,80
    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op));
    80001afc:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001b00:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001b04:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001b08:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001b0c:	00070693          	mv	a3,a4

};

inline uint64 RISCV::rd_scause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    80001b10:	142027f3          	csrr	a5,scause
    80001b14:	faf43c23          	sd	a5,-72(s0)
    return value;
    80001b18:	fb843703          	ld	a4,-72(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    80001b1c:	00100793          	li	a5,1
    80001b20:	03b79793          	slli	a5,a5,0x3b
    80001b24:	00178793          	addi	a5,a5,1
    80001b28:	06f70263          	beq	a4,a5,80001b8c <_ZN5RISCV15supervisor_trapEv+0xa8>
            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }
        mask_sip(mask_sip_sie::SS);

    } else if (scause == EXTERNAL) {
    80001b2c:	00100793          	li	a5,1
    80001b30:	03b79793          	slli	a5,a5,0x3b
    80001b34:	00978793          	addi	a5,a5,9
    80001b38:	0cf70a63          	beq	a4,a5,80001c0c <_ZN5RISCV15supervisor_trapEv+0x128>
        // external interrupt - console
        console_handler();

        // plus INVALID INTERRUPT

    } else if (scause == U_ECALL || scause == S_ECALL){
    80001b3c:	ff870713          	addi	a4,a4,-8
    80001b40:	00100793          	li	a5,1
    80001b44:	06e7ec63          	bltu	a5,a4,80001bbc <_ZN5RISCV15supervisor_trapEv+0xd8>
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80001b48:	141027f3          	csrr	a5,sepc
    80001b4c:	fcf43c23          	sd	a5,-40(s0)
    return value;
    80001b50:	fd843483          	ld	s1,-40(s0)
        // environment call from user / supervisor mode

//        TCB::time_slice_count = 0; // new running thread
//        TCB::dispatch();

        uint64 sepc = rd_sepc() + 4;
    80001b54:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80001b58:	100027f3          	csrr	a5,sstatus
    80001b5c:	fcf43823          	sd	a5,-48(s0)
    return value;
    80001b60:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    80001b64:	01100793          	li	a5,17
    80001b68:	0cf80c63          	beq	a6,a5,80001c40 <_ZN5RISCV15supervisor_trapEv+0x15c>
    80001b6c:	0b07e663          	bltu	a5,a6,80001c18 <_ZN5RISCV15supervisor_trapEv+0x134>
    80001b70:	00100793          	li	a5,1
    80001b74:	0af80c63          	beq	a6,a5,80001c2c <_ZN5RISCV15supervisor_trapEv+0x148>
    80001b78:	00200793          	li	a5,2
    80001b7c:	0af81c63          	bne	a6,a5,80001c34 <_ZN5RISCV15supervisor_trapEv+0x150>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
                break;
            case MEM_FREE:
                MemoryAllocator::mem_free((void *)a1);
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	2f4080e7          	jalr	756(ra) # 80001e74 <_ZN15MemoryAllocator8mem_freeEPKv>
                break;
    80001b88:	0ac0006f          	j	80001c34 <_ZN5RISCV15supervisor_trapEv+0x150>
        TCB::time_slice_count ++;
    80001b8c:	00004717          	auipc	a4,0x4
    80001b90:	08473703          	ld	a4,132(a4) # 80005c10 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b94:	00073783          	ld	a5,0(a4)
    80001b98:	00178793          	addi	a5,a5,1
    80001b9c:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    80001ba0:	00004717          	auipc	a4,0x4
    80001ba4:	06073703          	ld	a4,96(a4) # 80005c00 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ba8:	00073703          	ld	a4,0(a4)

    static void dispatch();

    static TCB* running; // tekuca nit
    state getState() {return current_state;}
    time_t getTimeSlice() const {return time_slice;}
    80001bac:	02073703          	ld	a4,32(a4)
    80001bb0:	02e7f263          	bgeu	a5,a4,80001bd4 <_ZN5RISCV15supervisor_trapEv+0xf0>
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001bb4:	00200793          	li	a5,2
    80001bb8:	1447b073          	csrc	sip,a5

        wr_sepc(sepc);
        wr_sstatus(sstatus);

    }
}
    80001bbc:	04813083          	ld	ra,72(sp)
    80001bc0:	04013403          	ld	s0,64(sp)
    80001bc4:	03813483          	ld	s1,56(sp)
    80001bc8:	03013903          	ld	s2,48(sp)
    80001bcc:	05010113          	addi	sp,sp,80
    80001bd0:	00008067          	ret
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80001bd4:	141027f3          	csrr	a5,sepc
    80001bd8:	fcf43423          	sd	a5,-56(s0)
    return value;
    80001bdc:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80001be0:	100027f3          	csrr	a5,sstatus
    80001be4:	fcf43023          	sd	a5,-64(s0)
    return value;
    80001be8:	fc043903          	ld	s2,-64(s0)
            TCB::time_slice_count = 0; // new running thread
    80001bec:	00004797          	auipc	a5,0x4
    80001bf0:	0247b783          	ld	a5,36(a5) # 80005c10 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bf4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	7b8080e7          	jalr	1976(ra) # 800023b0 <_ZN3TCB8dispatchEv>
}

inline void RISCV::wr_sstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80001c00:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80001c04:	14149073          	csrw	sepc,s1
}
    80001c08:	fadff06f          	j	80001bb4 <_ZN5RISCV15supervisor_trapEv+0xd0>
        console_handler();
    80001c0c:	00003097          	auipc	ra,0x3
    80001c10:	9a4080e7          	jalr	-1628(ra) # 800045b0 <console_handler>
    80001c14:	fa9ff06f          	j	80001bbc <_ZN5RISCV15supervisor_trapEv+0xd8>
        switch (op) {
    80001c18:	01300793          	li	a5,19
    80001c1c:	00f81c63          	bne	a6,a5,80001c34 <_ZN5RISCV15supervisor_trapEv+0x150>
                TCB::dispatch();
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	790080e7          	jalr	1936(ra) # 800023b0 <_ZN3TCB8dispatchEv>
                break;
    80001c28:	00c0006f          	j	80001c34 <_ZN5RISCV15supervisor_trapEv+0x150>
                MemoryAllocator::mem_alloc((size_t)a1);
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	020080e7          	jalr	32(ra) # 80001c4c <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80001c34:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80001c38:	10091073          	csrw	sstatus,s2
}
    80001c3c:	f81ff06f          	j	80001bbc <_ZN5RISCV15supervisor_trapEv+0xd8>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	608080e7          	jalr	1544(ra) # 80002248 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    80001c48:	fedff06f          	j	80001c34 <_ZN5RISCV15supervisor_trapEv+0x150>

0000000080001c4c <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00813423          	sd	s0,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    //size je broj blokova koje zelimo zauzeti
    if (size <= 0) return nullptr;
    80001c58:	10050a63          	beqz	a0,80001d6c <_ZN15MemoryAllocator9mem_allocEm+0x120>

    MemoryBlock* curr = 0;
    size_t byte_size = ((size + sizeof(MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80001c5c:	05750513          	addi	a0,a0,87
    80001c60:	fc057793          	andi	a5,a0,-64
    for (curr = free_mem_head; curr != 0; curr = curr -> next) {
    80001c64:	00004517          	auipc	a0,0x4
    80001c68:	00c53503          	ld	a0,12(a0) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
    80001c6c:	0280006f          	j	80001c94 <_ZN15MemoryAllocator9mem_allocEm+0x48>

        if (curr->size >= byte_size) {

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
                if (curr->next) curr->next->prev = curr->prev;
    80001c70:	00053703          	ld	a4,0(a0)
    80001c74:	00070663          	beqz	a4,80001c80 <_ZN15MemoryAllocator9mem_allocEm+0x34>
    80001c78:	00853683          	ld	a3,8(a0)
    80001c7c:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    80001c80:	00853703          	ld	a4,8(a0)
    80001c84:	08070063          	beqz	a4,80001d04 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001c88:	00053683          	ld	a3,0(a0)
    80001c8c:	00d73023          	sd	a3,0(a4)
    for (curr = free_mem_head; curr != 0; curr = curr -> next) {
    80001c90:	00053503          	ld	a0,0(a0)
    80001c94:	0a050c63          	beqz	a0,80001d4c <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->size >= byte_size) {
    80001c98:	01053703          	ld	a4,16(a0)
    80001c9c:	fef76ae3          	bltu	a4,a5,80001c90 <_ZN15MemoryAllocator9mem_allocEm+0x44>
            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    80001ca0:	40f70733          	sub	a4,a4,a5
    80001ca4:	01700693          	li	a3,23
    80001ca8:	fce6f4e3          	bgeu	a3,a4,80001c70 <_ZN15MemoryAllocator9mem_allocEm+0x24>
                else free_mem_head = curr->next;
                // zauzima se prvi slobodni fragment
                continue;
            } else {
                // alociranje novog slobodnog segmenta za preostali prostor
                MemoryBlock *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    80001cac:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    80001cb0:	00053683          	ld	a3,0(a0)
    80001cb4:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    80001cb8:	00853683          	ld	a3,8(a0)
    80001cbc:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    80001cc0:	01053683          	ld	a3,16(a0)
    80001cc4:	40f686b3          	sub	a3,a3,a5
    80001cc8:	00d73823          	sd	a3,16(a4)
                // pokazivaci susednih
                if (curr->next) curr->next->prev = remaining;
    80001ccc:	00053683          	ld	a3,0(a0)
    80001cd0:	00068463          	beqz	a3,80001cd8 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    80001cd4:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    80001cd8:	00853683          	ld	a3,8(a0)
    80001cdc:	02068c63          	beqz	a3,80001d14 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    80001ce0:	00e6b023          	sd	a4,0(a3)
            // dodavanje novog zauzetog segmenta ??
            // curr pokazuje na pocetak zauzetog prostora
            // used blokovi sortirani po start addr

            MemoryBlock* prev; // nakon kog elem liste umecemo novi
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80001ce4:	00004717          	auipc	a4,0x4
    80001ce8:	f9473703          	ld	a4,-108(a4) # 80005c78 <_ZN15MemoryAllocator13used_mem_headE>
    80001cec:	02e56a63          	bltu	a0,a4,80001d20 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    80001cf0:	06070463          	beqz	a4,80001d58 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
            else for (prev = used_mem_head; prev->next != 0; prev = prev->next);
    80001cf4:	00070693          	mv	a3,a4
    80001cf8:	00073703          	ld	a4,0(a4)
    80001cfc:	fe071ce3          	bnez	a4,80001cf4 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
    80001d00:	0240006f          	j	80001d24 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                else free_mem_head = curr->next;
    80001d04:	00053703          	ld	a4,0(a0)
    80001d08:	00004697          	auipc	a3,0x4
    80001d0c:	f6e6b423          	sd	a4,-152(a3) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
                continue;
    80001d10:	f81ff06f          	j	80001c90 <_ZN15MemoryAllocator9mem_allocEm+0x44>
                else free_mem_head = remaining;
    80001d14:	00004697          	auipc	a3,0x4
    80001d18:	f4e6be23          	sd	a4,-164(a3) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
    80001d1c:	fc9ff06f          	j	80001ce4 <_ZN15MemoryAllocator9mem_allocEm+0x98>
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80001d20:	00000693          	li	a3,0

            curr->size = byte_size;
    80001d24:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80001d28:	00d53423          	sd	a3,8(a0)
            if (prev) {
    80001d2c:	02068a63          	beqz	a3,80001d60 <_ZN15MemoryAllocator9mem_allocEm+0x114>
                curr->next = prev->next;
    80001d30:	0006b783          	ld	a5,0(a3)
    80001d34:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80001d38:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    80001d3c:	00053783          	ld	a5,0(a0)
    80001d40:	00078463          	beqz	a5,80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
    80001d44:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80001d48:	01850513          	addi	a0,a0,24
            // pokazivac na memoriju za alociranje: bez zaglavlja
        }
    }
    // nije pronadjen odgovarajuc blok memorije
    return 0;
}
    80001d4c:	00813403          	ld	s0,8(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80001d58:	00070693          	mv	a3,a4
    80001d5c:	fc9ff06f          	j	80001d24 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            else used_mem_head = curr;
    80001d60:	00004797          	auipc	a5,0x4
    80001d64:	f0a7bc23          	sd	a0,-232(a5) # 80005c78 <_ZN15MemoryAllocator13used_mem_headE>
    80001d68:	fd5ff06f          	j	80001d3c <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    if (size <= 0) return nullptr;
    80001d6c:	00000513          	li	a0,0
    80001d70:	fddff06f          	j	80001d4c <_ZN15MemoryAllocator9mem_allocEm+0x100>

0000000080001d74 <_ZN15MemoryAllocator12getAllocatorEv>:
    if (allocator == 0) {
    80001d74:	00004797          	auipc	a5,0x4
    80001d78:	f0c7b783          	ld	a5,-244(a5) # 80005c80 <_ZN15MemoryAllocator9allocatorE>
    80001d7c:	00078863          	beqz	a5,80001d8c <_ZN15MemoryAllocator12getAllocatorEv+0x18>
}
    80001d80:	00004517          	auipc	a0,0x4
    80001d84:	f0053503          	ld	a0,-256(a0) # 80005c80 <_ZN15MemoryAllocator9allocatorE>
    80001d88:	00008067          	ret
MemoryAllocator* MemoryAllocator::getAllocator() {
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    80001da0:	00004697          	auipc	a3,0x4
    80001da4:	e486b683          	ld	a3,-440(a3) # 80005be8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001da8:	0006b783          	ld	a5,0(a3)
    80001dac:	00004497          	auipc	s1,0x4
    80001db0:	ec448493          	addi	s1,s1,-316 # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
    80001db4:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    80001db8:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    80001dbc:	0004b703          	ld	a4,0(s1)
    80001dc0:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80001dc4:	00004797          	auipc	a5,0x4
    80001dc8:	e447b783          	ld	a5,-444(a5) # 80005c08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dcc:	0007b783          	ld	a5,0(a5)
    80001dd0:	0006b683          	ld	a3,0(a3)
    80001dd4:	40d787b3          	sub	a5,a5,a3
    80001dd8:	00178793          	addi	a5,a5,1
    80001ddc:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001de0:	00100513          	li	a0,1
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	e68080e7          	jalr	-408(ra) # 80001c4c <_ZN15MemoryAllocator9mem_allocEm>
    80001dec:	00a4b823          	sd	a0,16(s1)
}
    80001df0:	00004517          	auipc	a0,0x4
    80001df4:	e9053503          	ld	a0,-368(a0) # 80005c80 <_ZN15MemoryAllocator9allocatorE>
    80001df8:	01813083          	ld	ra,24(sp)
    80001dfc:	01013403          	ld	s0,16(sp)
    80001e00:	00813483          	ld	s1,8(sp)
    80001e04:	02010113          	addi	sp,sp,32
    80001e08:	00008067          	ret

0000000080001e0c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    }
    return 0;
}

//tryToJoin metoda pokusava spajanje sa narednim elementom
int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00813423          	sd	s0,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    if (curr == 0) return 0;
    80001e18:	04050663          	beqz	a0,80001e64 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    80001e1c:	00053783          	ld	a5,0(a0)
    80001e20:	04078663          	beqz	a5,80001e6c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80001e24:	01053703          	ld	a4,16(a0)
    80001e28:	00e506b3          	add	a3,a0,a4
    80001e2c:	00d78a63          	beq	a5,a3,80001e40 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    return 0;
    80001e30:	00000513          	li	a0,0
}
    80001e34:	00813403          	ld	s0,8(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret
        curr->size += curr->next->size;
    80001e40:	0107b683          	ld	a3,16(a5)
    80001e44:	00d70733          	add	a4,a4,a3
    80001e48:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    80001e4c:	0007b783          	ld	a5,0(a5)
    80001e50:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001e54:	00078463          	beqz	a5,80001e5c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80001e58:	00a7b423          	sd	a0,8(a5)
        return 1;
    80001e5c:	00100513          	li	a0,1
    80001e60:	fd5ff06f          	j	80001e34 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (curr == 0) return 0;
    80001e64:	00000513          	li	a0,0
    80001e68:	fcdff06f          	j	80001e34 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    80001e6c:	00000513          	li	a0,0
    80001e70:	fc5ff06f          	j	80001e34 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080001e74 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if (addr == 0 || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80001e74:	14050a63          	beqz	a0,80001fc8 <_ZN15MemoryAllocator8mem_freeEPKv+0x154>
    80001e78:	00004797          	auipc	a5,0x4
    80001e7c:	d907b783          	ld	a5,-624(a5) # 80005c08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e80:	0007b783          	ld	a5,0(a5)
    80001e84:	14a7e663          	bltu	a5,a0,80001fd0 <_ZN15MemoryAllocator8mem_freeEPKv+0x15c>
    80001e88:	00004797          	auipc	a5,0x4
    80001e8c:	d607b783          	ld	a5,-672(a5) # 80005be8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e90:	0007b783          	ld	a5,0(a5)
    80001e94:	14f56263          	bltu	a0,a5,80001fd8 <_ZN15MemoryAllocator8mem_freeEPKv+0x164>
int MemoryAllocator::mem_free(const void* addr) {
    80001e98:	fe010113          	addi	sp,sp,-32
    80001e9c:	00113c23          	sd	ra,24(sp)
    80001ea0:	00813823          	sd	s0,16(sp)
    80001ea4:	00913423          	sd	s1,8(sp)
    80001ea8:	01213023          	sd	s2,0(sp)
    80001eac:	02010413          	addi	s0,sp,32
    MemoryBlock* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    80001eb0:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    80001eb4:	00004797          	auipc	a5,0x4
    80001eb8:	dc47b783          	ld	a5,-572(a5) # 80005c78 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    80001ebc:	00078863          	beqz	a5,80001ecc <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    80001ec0:	0097f663          	bgeu	a5,s1,80001ecc <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    80001ec4:	0007b783          	ld	a5,0(a5)
    80001ec8:	ff5ff06f          	j	80001ebc <_ZN15MemoryAllocator8mem_freeEPKv+0x48>
    if (block != tmp || tmp == 0) return -1;
    80001ecc:	10979a63          	bne	a5,s1,80001fe0 <_ZN15MemoryAllocator8mem_freeEPKv+0x16c>
    80001ed0:	10078c63          	beqz	a5,80001fe8 <_ZN15MemoryAllocator8mem_freeEPKv+0x174>
    if (tmp->prev) tmp->prev->next = tmp->next;
    80001ed4:	0087b703          	ld	a4,8(a5)
    80001ed8:	06070c63          	beqz	a4,80001f50 <_ZN15MemoryAllocator8mem_freeEPKv+0xdc>
    80001edc:	0007b683          	ld	a3,0(a5)
    80001ee0:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    80001ee4:	0007b703          	ld	a4,0(a5)
    80001ee8:	00070663          	beqz	a4,80001ef4 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    80001eec:	0087b783          	ld	a5,8(a5)
    80001ef0:	00f73423          	sd	a5,8(a4)
    if (free_mem_head == 0 || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80001ef4:	00004797          	auipc	a5,0x4
    80001ef8:	d7c7b783          	ld	a5,-644(a5) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
    80001efc:	06078863          	beqz	a5,80001f6c <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    80001f00:	06f4e463          	bltu	s1,a5,80001f68 <_ZN15MemoryAllocator8mem_freeEPKv+0xf4>
    else for (tmp = free_mem_head; tmp->next != 0 && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    80001f04:	00078913          	mv	s2,a5
    80001f08:	0007b783          	ld	a5,0(a5)
    80001f0c:	00078463          	beqz	a5,80001f14 <_ZN15MemoryAllocator8mem_freeEPKv+0xa0>
    80001f10:	fe97eae3          	bltu	a5,s1,80001f04 <_ZN15MemoryAllocator8mem_freeEPKv+0x90>
    if (tmp == nullptr) {
    80001f14:	04090663          	beqz	s2,80001f60 <_ZN15MemoryAllocator8mem_freeEPKv+0xec>
        block->next = tmp->next;
    80001f18:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    80001f1c:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80001f20:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80001f24:	fe853783          	ld	a5,-24(a0)
    80001f28:	00078463          	beqz	a5,80001f30 <_ZN15MemoryAllocator8mem_freeEPKv+0xbc>
    80001f2c:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80001f30:	00048513          	mv	a0,s1
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	ed8080e7          	jalr	-296(ra) # 80001e0c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    80001f3c:	00090513          	mv	a0,s2
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	ecc080e7          	jalr	-308(ra) # 80001e0c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80001f48:	00000513          	li	a0,0
    80001f4c:	05c0006f          	j	80001fa8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    else used_mem_head = tmp->next;
    80001f50:	0007b703          	ld	a4,0(a5)
    80001f54:	00004697          	auipc	a3,0x4
    80001f58:	d2e6b223          	sd	a4,-732(a3) # 80005c78 <_ZN15MemoryAllocator13used_mem_headE>
    80001f5c:	f89ff06f          	j	80001ee4 <_ZN15MemoryAllocator8mem_freeEPKv+0x70>
    80001f60:	00090793          	mv	a5,s2
    80001f64:	0080006f          	j	80001f6c <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    if (free_mem_head == 0 || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80001f68:	00000793          	li	a5,0
        block -> prev = tmp;
    80001f6c:	fef53823          	sd	a5,-16(a0)
        if (free_mem_head) {
    80001f70:	00004797          	auipc	a5,0x4
    80001f74:	d007b783          	ld	a5,-768(a5) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
    80001f78:	04078463          	beqz	a5,80001fc0 <_ZN15MemoryAllocator8mem_freeEPKv+0x14c>
            free_mem_head->prev = block;
    80001f7c:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    80001f80:	fef53423          	sd	a5,-24(a0)
            tryToJoin(block);
    80001f84:	00048513          	mv	a0,s1
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	e84080e7          	jalr	-380(ra) # 80001e0c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    80001f90:	00004797          	auipc	a5,0x4
    80001f94:	ce97b023          	sd	s1,-800(a5) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	e70080e7          	jalr	-400(ra) # 80001e0c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80001fa4:	00000513          	li	a0,0
}
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	00013903          	ld	s2,0(sp)
    80001fb8:	02010113          	addi	sp,sp,32
    80001fbc:	00008067          	ret
        else block -> next = nullptr;
    80001fc0:	fe053423          	sd	zero,-24(a0)
    80001fc4:	fcdff06f          	j	80001f90 <_ZN15MemoryAllocator8mem_freeEPKv+0x11c>
    if (addr == 0 || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80001fc8:	fff00513          	li	a0,-1
    80001fcc:	00008067          	ret
    80001fd0:	fff00513          	li	a0,-1
    80001fd4:	00008067          	ret
    80001fd8:	fff00513          	li	a0,-1
}
    80001fdc:	00008067          	ret
    if (block != tmp || tmp == 0) return -1;
    80001fe0:	fff00513          	li	a0,-1
    80001fe4:	fc5ff06f          	j	80001fa8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    80001fe8:	fff00513          	li	a0,-1
    80001fec:	fbdff06f          	j	80001fa8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>

0000000080001ff0 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001ff0:	fe010113          	addi	sp,sp,-32
    80001ff4:	00113c23          	sd	ra,24(sp)
    80001ff8:	00813823          	sd	s0,16(sp)
    80001ffc:	00913423          	sd	s1,8(sp)
    80002000:	02010413          	addi	s0,sp,32

    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    80002004:	00004497          	auipc	s1,0x4
    80002008:	c6c4b483          	ld	s1,-916(s1) # 80005c70 <_ZN15MemoryAllocator13free_mem_headE>
    8000200c:	02048263          	beqz	s1,80002030 <_ZN15MemoryAllocator5printEv+0x40>
        __putc('f');
    80002010:	06600513          	li	a0,102
    80002014:	00002097          	auipc	ra,0x2
    80002018:	528080e7          	jalr	1320(ra) # 8000453c <__putc>
        __putc('\n');
    8000201c:	00a00513          	li	a0,10
    80002020:	00002097          	auipc	ra,0x2
    80002024:	51c080e7          	jalr	1308(ra) # 8000453c <__putc>
    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    80002028:	0004b483          	ld	s1,0(s1)
    8000202c:	fe1ff06f          	j	8000200c <_ZN15MemoryAllocator5printEv+0x1c>
    }

    if (!used_mem_head) __putc('x');
    80002030:	00004797          	auipc	a5,0x4
    80002034:	c487b783          	ld	a5,-952(a5) # 80005c78 <_ZN15MemoryAllocator13used_mem_headE>
    80002038:	02078863          	beqz	a5,80002068 <_ZN15MemoryAllocator5printEv+0x78>

    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    8000203c:	00004497          	auipc	s1,0x4
    80002040:	c3c4b483          	ld	s1,-964(s1) # 80005c78 <_ZN15MemoryAllocator13used_mem_headE>
    80002044:	02048a63          	beqz	s1,80002078 <_ZN15MemoryAllocator5printEv+0x88>
        __putc('u');
    80002048:	07500513          	li	a0,117
    8000204c:	00002097          	auipc	ra,0x2
    80002050:	4f0080e7          	jalr	1264(ra) # 8000453c <__putc>
        __putc('\n');
    80002054:	00a00513          	li	a0,10
    80002058:	00002097          	auipc	ra,0x2
    8000205c:	4e4080e7          	jalr	1252(ra) # 8000453c <__putc>
    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    80002060:	0004b483          	ld	s1,0(s1)
    80002064:	fe1ff06f          	j	80002044 <_ZN15MemoryAllocator5printEv+0x54>
    if (!used_mem_head) __putc('x');
    80002068:	07800513          	li	a0,120
    8000206c:	00002097          	auipc	ra,0x2
    80002070:	4d0080e7          	jalr	1232(ra) # 8000453c <__putc>
    80002074:	fc9ff06f          	j	8000203c <_ZN15MemoryAllocator5printEv+0x4c>
    }

    __putc('\n');
    80002078:	00a00513          	li	a0,10
    8000207c:	00002097          	auipc	ra,0x2
    80002080:	4c0080e7          	jalr	1216(ra) # 8000453c <__putc>
}
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00008067          	ret

0000000080002098 <_Z11printStringPKc>:
#include "../lib/console.h"
#include "../h/print.hpp"

void printString(char const* string) {
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	00813823          	sd	s0,16(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	00050493          	mv	s1,a0
    while (*string != '\0') {
    800020b0:	0004c503          	lbu	a0,0(s1)
    800020b4:	00050a63          	beqz	a0,800020c8 <_Z11printStringPKc+0x30>
        __putc(*string);
    800020b8:	00002097          	auipc	ra,0x2
    800020bc:	484080e7          	jalr	1156(ra) # 8000453c <__putc>
        string++;
    800020c0:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800020c4:	fedff06f          	j	800020b0 <_Z11printStringPKc+0x18>
    }
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	02010113          	addi	sp,sp,32
    800020d8:	00008067          	ret

00000000800020dc <_Z12printIntegerm>:

void printInteger(uint64 integer) {
    800020dc:	fd010113          	addi	sp,sp,-48
    800020e0:	02113423          	sd	ra,40(sp)
    800020e4:	02813023          	sd	s0,32(sp)
    800020e8:	00913c23          	sd	s1,24(sp)
    800020ec:	03010413          	addi	s0,sp,48
    uint x;

    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else x = integer;
    800020f0:	0005051b          	sext.w	a0,a0
    int i = 0, neg = 0;
    800020f4:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    800020f8:	00a00713          	li	a4,10
    800020fc:	02e5773b          	remuw	a4,a0,a4
    80002100:	02071713          	slli	a4,a4,0x20
    80002104:	02075713          	srli	a4,a4,0x20
    80002108:	00003697          	auipc	a3,0x3
    8000210c:	f1868693          	addi	a3,a3,-232 # 80005020 <_ZZ12printIntegermE6digits>
    80002110:	00e68733          	add	a4,a3,a4
    80002114:	00074703          	lbu	a4,0(a4)
    80002118:	fe040693          	addi	a3,s0,-32
    8000211c:	009687b3          	add	a5,a3,s1
    80002120:	0014849b          	addiw	s1,s1,1
    80002124:	fee78823          	sb	a4,-16(a5)
    while ( x /= 10 != 0);
    80002128:	fc0518e3          	bnez	a0,800020f8 <_Z12printIntegerm+0x1c>

    if (neg) buf[i++] = '-';

    while (--i >= 0) __putc(buf[i]);
    8000212c:	fff4849b          	addiw	s1,s1,-1
    80002130:	0004ce63          	bltz	s1,8000214c <_Z12printIntegerm+0x70>
    80002134:	fe040793          	addi	a5,s0,-32
    80002138:	009787b3          	add	a5,a5,s1
    8000213c:	ff07c503          	lbu	a0,-16(a5)
    80002140:	00002097          	auipc	ra,0x2
    80002144:	3fc080e7          	jalr	1020(ra) # 8000453c <__putc>
    80002148:	fe5ff06f          	j	8000212c <_Z12printIntegerm+0x50>
    8000214c:	02813083          	ld	ra,40(sp)
    80002150:	02013403          	ld	s0,32(sp)
    80002154:	01813483          	ld	s1,24(sp)
    80002158:	03010113          	addi	sp,sp,48
    8000215c:	00008067          	ret

0000000080002160 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
TCB* TCB::running = nullptr;
time_t TCB::time_slice_count = 0;

typedef TCB* _thread;

TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) {
    80002160:	fe010113          	addi	sp,sp,-32
    80002164:	00813c23          	sd	s0,24(sp)
    80002168:	02010413          	addi	s0,sp,32
    8000216c:	04050a23          	sb	zero,84(a0)
    // poziva se iz _threadCreate gde je inicijalni kontekst formiran
    id = id_count++;
    80002170:	00004897          	auipc	a7,0x4
    80002174:	b1888893          	addi	a7,a7,-1256 # 80005c88 <_ZN3TCB8id_countE>
    80002178:	0008a803          	lw	a6,0(a7)
    8000217c:	0018031b          	addiw	t1,a6,1
    80002180:	0068a023          	sw	t1,0(a7)
    80002184:	01052023          	sw	a6,0(a0)

    // !!! Ukoliko se nit kreira nad funkcijom main, stek NE TREBA da se kreira
    // !!! prosledi se body = nullptr, dodati neophodne provere
    // !!! takva nit se NE STAVLJA u Scheduler !!!

    routine = fun;
    80002188:	02b53423          	sd	a1,40(a0)
    this->args = args;
    8000218c:	02c53c23          	sd	a2,56(a0)
    this->stack = stack; // stack start address (allocated)
    80002190:	02d53823          	sd	a3,48(a0)
    this->context = c;
    80002194:	04e53023          	sd	a4,64(a0)
    80002198:	04f53423          	sd	a5,72(a0)
    this->current_state = RUNNABLE;
    8000219c:	04052823          	sw	zero,80(a0)
    this->next_ready = nullptr;
    800021a0:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    800021a4:	00053823          	sd	zero,16(a0)
    this->sleeping_time = 0;
    800021a8:	00053c23          	sd	zero,24(a0)
    this->time_slice = DEFAULT_TIME_SLICE;
    800021ac:	00200793          	li	a5,2
    800021b0:	02f53023          	sd	a5,32(a0)
}
    800021b4:	01813403          	ld	s0,24(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret

00000000800021c0 <_ZN3TCB5yieldEPS_S0_>:
    running->finish();
    dispatch();
    // thread exit syscall ili yield?
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    800021c0:	fe010113          	addi	sp,sp,-32
    800021c4:	00113c23          	sd	ra,24(sp)
    800021c8:	00813823          	sd	s0,16(sp)
    800021cc:	00913423          	sd	s1,8(sp)
    800021d0:	01213023          	sd	s2,0(sp)
    800021d4:	02010413          	addi	s0,sp,32
    800021d8:	00050493          	mv	s1,a0
    800021dc:	00058913          	mv	s2,a1

    // ecall ????
    // free stack if finished

    RISCV::push_regs();
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	e20080e7          	jalr	-480(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    800021e8:	04090593          	addi	a1,s2,64
    800021ec:	04048513          	addi	a0,s1,64
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	010080e7          	jalr	16(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	e84080e7          	jalr	-380(ra) # 8000107c <_ZN5RISCV8pop_regsEv>
}
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	01013403          	ld	s0,16(sp)
    80002208:	00813483          	ld	s1,8(sp)
    8000220c:	00013903          	ld	s2,0(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret

0000000080002218 <_ZN3TCBnwEm>:
    if ( isRunnable() ) Scheduler::put(oldRunning);
    running = Scheduler::get();
    if (running != oldRunning) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	00813023          	sd	s0,0(sp)
    80002224:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002228:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    8000222c:	00655513          	srli	a0,a0,0x6
    80002230:	00000097          	auipc	ra,0x0
    80002234:	a1c080e7          	jalr	-1508(ra) # 80001c4c <_ZN15MemoryAllocator9mem_allocEm>
}
    80002238:	00813083          	ld	ra,8(sp)
    8000223c:	00013403          	ld	s0,0(sp)
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00008067          	ret

0000000080002248 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(_thread *handle, routine_ptr routine, void *args, void *stack_space) {
    80002248:	fa010113          	addi	sp,sp,-96
    8000224c:	04113c23          	sd	ra,88(sp)
    80002250:	04813823          	sd	s0,80(sp)
    80002254:	04913423          	sd	s1,72(sp)
    80002258:	05213023          	sd	s2,64(sp)
    8000225c:	03313c23          	sd	s3,56(sp)
    80002260:	03413823          	sd	s4,48(sp)
    80002264:	03513423          	sd	s5,40(sp)
    80002268:	06010413          	addi	s0,sp,96
    8000226c:	00050913          	mv	s2,a0
    80002270:	00058493          	mv	s1,a1
    80002274:	00060a93          	mv	s5,a2
    80002278:	00068993          	mv	s3,a3
    Context context = {
    8000227c:	00000797          	auipc	a5,0x0
    80002280:	1a478793          	addi	a5,a5,420 # 80002420 <_ZN3TCB7wrapperEv>
    80002284:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE)
    80002288:	08058463          	beqz	a1,80002310 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xc8>
    8000228c:	000017b7          	lui	a5,0x1
    80002290:	00f687b3          	add	a5,a3,a5
    };
    80002294:	faf43423          	sd	a5,-88(s0)
    *handle = new TCB (routine, args, stack_space, context);
    80002298:	fa043703          	ld	a4,-96(s0)
    8000229c:	fae43823          	sd	a4,-80(s0)
    800022a0:	faf43c23          	sd	a5,-72(s0)
    800022a4:	05800513          	li	a0,88
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	f70080e7          	jalr	-144(ra) # 80002218 <_ZN3TCBnwEm>
    800022b0:	00050a13          	mv	s4,a0
    800022b4:	fb043703          	ld	a4,-80(s0)
    800022b8:	fb843783          	ld	a5,-72(s0)
    800022bc:	00098693          	mv	a3,s3
    800022c0:	000a8613          	mv	a2,s5
    800022c4:	00048593          	mv	a1,s1
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	e98080e7          	jalr	-360(ra) # 80002160 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    800022d0:	01493023          	sd	s4,0(s2)
    if (routine) Scheduler::put(*handle);
    800022d4:	00048863          	beqz	s1,800022e4 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x9c>
    800022d8:	000a0513          	mv	a0,s4
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	3d4080e7          	jalr	980(ra) # 800016b0 <_ZN9Scheduler3putEP3TCB>
    return (*handle)->id;
    800022e4:	00093783          	ld	a5,0(s2)
}
    800022e8:	0007a503          	lw	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800022ec:	05813083          	ld	ra,88(sp)
    800022f0:	05013403          	ld	s0,80(sp)
    800022f4:	04813483          	ld	s1,72(sp)
    800022f8:	04013903          	ld	s2,64(sp)
    800022fc:	03813983          	ld	s3,56(sp)
    80002300:	03013a03          	ld	s4,48(sp)
    80002304:	02813a83          	ld	s5,40(sp)
    80002308:	06010113          	addi	sp,sp,96
    8000230c:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE)
    80002310:	00000793          	li	a5,0
    80002314:	f81ff06f          	j	80002294 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x4c>

0000000080002318 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	00813023          	sd	s0,0(sp)
    80002324:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	b4c080e7          	jalr	-1204(ra) # 80001e74 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80002330:	00813083          	ld	ra,8(sp)
    80002334:	00013403          	ld	s0,0(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret

0000000080002340 <_ZN3TCB5startEv>:

void TCB::start() {
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00113423          	sd	ra,8(sp)
    80002348:	00813023          	sd	s0,0(sp)
    8000234c:	01010413          	addi	s0,sp,16
    /// ...
    Scheduler::put(this);
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	360080e7          	jalr	864(ra) # 800016b0 <_ZN9Scheduler3putEP3TCB>
}
    80002358:	00813083          	ld	ra,8(sp)
    8000235c:	00013403          	ld	s0,0(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813423          	sd	s0,8(sp)
    80002370:	01010413          	addi	s0,sp,16
    return running->current_state != BLOCKED &&
    80002374:	00004797          	auipc	a5,0x4
    80002378:	91c7b783          	ld	a5,-1764(a5) # 80005c90 <_ZN3TCB7runningE>
    8000237c:	0507a783          	lw	a5,80(a5)
    80002380:	ffd7869b          	addiw	a3,a5,-3
           running->current_state != FINISHED &&
    80002384:	00100713          	li	a4,1
    80002388:	00d77c63          	bgeu	a4,a3,800023a0 <_ZN3TCB10isRunnableEv+0x38>
    8000238c:	00e78663          	beq	a5,a4,80002398 <_ZN3TCB10isRunnableEv+0x30>
    80002390:	00100513          	li	a0,1
    80002394:	0100006f          	j	800023a4 <_ZN3TCB10isRunnableEv+0x3c>
    80002398:	00000513          	li	a0,0
    8000239c:	0080006f          	j	800023a4 <_ZN3TCB10isRunnableEv+0x3c>
    800023a0:	00000513          	li	a0,0
           running->current_state != SLEEPING;
}
    800023a4:	00813403          	ld	s0,8(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret

00000000800023b0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800023b0:	fe010113          	addi	sp,sp,-32
    800023b4:	00113c23          	sd	ra,24(sp)
    800023b8:	00813823          	sd	s0,16(sp)
    800023bc:	00913423          	sd	s1,8(sp)
    800023c0:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    800023c4:	00004497          	auipc	s1,0x4
    800023c8:	8cc4b483          	ld	s1,-1844(s1) # 80005c90 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	f9c080e7          	jalr	-100(ra) # 80002368 <_ZN3TCB10isRunnableEv>
    800023d4:	02051e63          	bnez	a0,80002410 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	270080e7          	jalr	624(ra) # 80001648 <_ZN9Scheduler3getEv>
    800023e0:	00050593          	mv	a1,a0
    800023e4:	00004797          	auipc	a5,0x4
    800023e8:	8aa7b623          	sd	a0,-1876(a5) # 80005c90 <_ZN3TCB7runningE>
    if (running != oldRunning) yield(oldRunning, running);
    800023ec:	00a48863          	beq	s1,a0,800023fc <_ZN3TCB8dispatchEv+0x4c>
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	dcc080e7          	jalr	-564(ra) # 800021c0 <_ZN3TCB5yieldEPS_S0_>
}
    800023fc:	01813083          	ld	ra,24(sp)
    80002400:	01013403          	ld	s0,16(sp)
    80002404:	00813483          	ld	s1,8(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80002410:	00048513          	mv	a0,s1
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	29c080e7          	jalr	668(ra) # 800016b0 <_ZN9Scheduler3putEP3TCB>
    8000241c:	fbdff06f          	j	800023d8 <_ZN3TCB8dispatchEv+0x28>

0000000080002420 <_ZN3TCB7wrapperEv>:
void TCB::wrapper() {
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	02010413          	addi	s0,sp,32
    RISCV::popSppSpie();
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	690080e7          	jalr	1680(ra) # 80001ac4 <_ZN5RISCV10popSppSpieEv>
    running->routine(running->args);
    8000243c:	00004497          	auipc	s1,0x4
    80002440:	84c48493          	addi	s1,s1,-1972 # 80005c88 <_ZN3TCB8id_countE>
    80002444:	0084b783          	ld	a5,8(s1)
    80002448:	0287b703          	ld	a4,40(a5)
    8000244c:	0387b503          	ld	a0,56(a5)
    80002450:	000700e7          	jalr	a4
    running->finish();
    80002454:	0084b783          	ld	a5,8(s1)
    static bool isRunnable();
    bool isFinished() {return current_state == state::FINISHED;}
    void finish() { current_state = state::FINISHED; }
    80002458:	00300713          	li	a4,3
    8000245c:	04e7a823          	sw	a4,80(a5)
    dispatch();
    80002460:	00000097          	auipc	ra,0x0
    80002464:	f50080e7          	jalr	-176(ra) # 800023b0 <_ZN3TCB8dispatchEv>
}
    80002468:	01813083          	ld	ra,24(sp)
    8000246c:	01013403          	ld	s0,16(sp)
    80002470:	00813483          	ld	s1,8(sp)
    80002474:	02010113          	addi	sp,sp,32
    80002478:	00008067          	ret

000000008000247c <start>:
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    80002488:	300027f3          	csrr	a5,mstatus
    8000248c:	ffffe737          	lui	a4,0xffffe
    80002490:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff78ff>
    80002494:	00e7f7b3          	and	a5,a5,a4
    80002498:	00001737          	lui	a4,0x1
    8000249c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800024a0:	00e7e7b3          	or	a5,a5,a4
    800024a4:	30079073          	csrw	mstatus,a5
    800024a8:	00000797          	auipc	a5,0x0
    800024ac:	16078793          	addi	a5,a5,352 # 80002608 <system_main>
    800024b0:	34179073          	csrw	mepc,a5
    800024b4:	00000793          	li	a5,0
    800024b8:	18079073          	csrw	satp,a5
    800024bc:	000107b7          	lui	a5,0x10
    800024c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800024c4:	30279073          	csrw	medeleg,a5
    800024c8:	30379073          	csrw	mideleg,a5
    800024cc:	104027f3          	csrr	a5,sie
    800024d0:	2227e793          	ori	a5,a5,546
    800024d4:	10479073          	csrw	sie,a5
    800024d8:	fff00793          	li	a5,-1
    800024dc:	00a7d793          	srli	a5,a5,0xa
    800024e0:	3b079073          	csrw	pmpaddr0,a5
    800024e4:	00f00793          	li	a5,15
    800024e8:	3a079073          	csrw	pmpcfg0,a5
    800024ec:	f14027f3          	csrr	a5,mhartid
    800024f0:	0200c737          	lui	a4,0x200c
    800024f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800024f8:	0007869b          	sext.w	a3,a5
    800024fc:	00269713          	slli	a4,a3,0x2
    80002500:	000f4637          	lui	a2,0xf4
    80002504:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002508:	00d70733          	add	a4,a4,a3
    8000250c:	0037979b          	slliw	a5,a5,0x3
    80002510:	020046b7          	lui	a3,0x2004
    80002514:	00d787b3          	add	a5,a5,a3
    80002518:	00c585b3          	add	a1,a1,a2
    8000251c:	00371693          	slli	a3,a4,0x3
    80002520:	00003717          	auipc	a4,0x3
    80002524:	78070713          	addi	a4,a4,1920 # 80005ca0 <timer_scratch>
    80002528:	00b7b023          	sd	a1,0(a5)
    8000252c:	00d70733          	add	a4,a4,a3
    80002530:	00f73c23          	sd	a5,24(a4)
    80002534:	02c73023          	sd	a2,32(a4)
    80002538:	34071073          	csrw	mscratch,a4
    8000253c:	00000797          	auipc	a5,0x0
    80002540:	6e478793          	addi	a5,a5,1764 # 80002c20 <timervec>
    80002544:	30579073          	csrw	mtvec,a5
    80002548:	300027f3          	csrr	a5,mstatus
    8000254c:	0087e793          	ori	a5,a5,8
    80002550:	30079073          	csrw	mstatus,a5
    80002554:	304027f3          	csrr	a5,mie
    80002558:	0807e793          	ori	a5,a5,128
    8000255c:	30479073          	csrw	mie,a5
    80002560:	f14027f3          	csrr	a5,mhartid
    80002564:	0007879b          	sext.w	a5,a5
    80002568:	00078213          	mv	tp,a5
    8000256c:	30200073          	mret
    80002570:	00813403          	ld	s0,8(sp)
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret

000000008000257c <timerinit>:
    8000257c:	ff010113          	addi	sp,sp,-16
    80002580:	00813423          	sd	s0,8(sp)
    80002584:	01010413          	addi	s0,sp,16
    80002588:	f14027f3          	csrr	a5,mhartid
    8000258c:	0200c737          	lui	a4,0x200c
    80002590:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002594:	0007869b          	sext.w	a3,a5
    80002598:	00269713          	slli	a4,a3,0x2
    8000259c:	000f4637          	lui	a2,0xf4
    800025a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800025a4:	00d70733          	add	a4,a4,a3
    800025a8:	0037979b          	slliw	a5,a5,0x3
    800025ac:	020046b7          	lui	a3,0x2004
    800025b0:	00d787b3          	add	a5,a5,a3
    800025b4:	00c585b3          	add	a1,a1,a2
    800025b8:	00371693          	slli	a3,a4,0x3
    800025bc:	00003717          	auipc	a4,0x3
    800025c0:	6e470713          	addi	a4,a4,1764 # 80005ca0 <timer_scratch>
    800025c4:	00b7b023          	sd	a1,0(a5)
    800025c8:	00d70733          	add	a4,a4,a3
    800025cc:	00f73c23          	sd	a5,24(a4)
    800025d0:	02c73023          	sd	a2,32(a4)
    800025d4:	34071073          	csrw	mscratch,a4
    800025d8:	00000797          	auipc	a5,0x0
    800025dc:	64878793          	addi	a5,a5,1608 # 80002c20 <timervec>
    800025e0:	30579073          	csrw	mtvec,a5
    800025e4:	300027f3          	csrr	a5,mstatus
    800025e8:	0087e793          	ori	a5,a5,8
    800025ec:	30079073          	csrw	mstatus,a5
    800025f0:	304027f3          	csrr	a5,mie
    800025f4:	0807e793          	ori	a5,a5,128
    800025f8:	30479073          	csrw	mie,a5
    800025fc:	00813403          	ld	s0,8(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <system_main>:
    80002608:	fe010113          	addi	sp,sp,-32
    8000260c:	00813823          	sd	s0,16(sp)
    80002610:	00913423          	sd	s1,8(sp)
    80002614:	00113c23          	sd	ra,24(sp)
    80002618:	02010413          	addi	s0,sp,32
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	0c4080e7          	jalr	196(ra) # 800026e0 <cpuid>
    80002624:	00003497          	auipc	s1,0x3
    80002628:	60c48493          	addi	s1,s1,1548 # 80005c30 <started>
    8000262c:	02050263          	beqz	a0,80002650 <system_main+0x48>
    80002630:	0004a783          	lw	a5,0(s1)
    80002634:	0007879b          	sext.w	a5,a5
    80002638:	fe078ce3          	beqz	a5,80002630 <system_main+0x28>
    8000263c:	0ff0000f          	fence
    80002640:	00003517          	auipc	a0,0x3
    80002644:	a2050513          	addi	a0,a0,-1504 # 80005060 <_ZZ12printIntegermE6digits+0x40>
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	a74080e7          	jalr	-1420(ra) # 800030bc <panic>
    80002650:	00001097          	auipc	ra,0x1
    80002654:	9c8080e7          	jalr	-1592(ra) # 80003018 <consoleinit>
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	154080e7          	jalr	340(ra) # 800037ac <printfinit>
    80002660:	00003517          	auipc	a0,0x3
    80002664:	ae050513          	addi	a0,a0,-1312 # 80005140 <_ZZ12printIntegermE6digits+0x120>
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	ab0080e7          	jalr	-1360(ra) # 80003118 <__printf>
    80002670:	00003517          	auipc	a0,0x3
    80002674:	9c050513          	addi	a0,a0,-1600 # 80005030 <_ZZ12printIntegermE6digits+0x10>
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	aa0080e7          	jalr	-1376(ra) # 80003118 <__printf>
    80002680:	00003517          	auipc	a0,0x3
    80002684:	ac050513          	addi	a0,a0,-1344 # 80005140 <_ZZ12printIntegermE6digits+0x120>
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	a90080e7          	jalr	-1392(ra) # 80003118 <__printf>
    80002690:	00001097          	auipc	ra,0x1
    80002694:	4a8080e7          	jalr	1192(ra) # 80003b38 <kinit>
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	148080e7          	jalr	328(ra) # 800027e0 <trapinit>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	16c080e7          	jalr	364(ra) # 8000280c <trapinithart>
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	5b8080e7          	jalr	1464(ra) # 80002c60 <plicinit>
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	5d8080e7          	jalr	1496(ra) # 80002c88 <plicinithart>
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	078080e7          	jalr	120(ra) # 80002730 <userinit>
    800026c0:	0ff0000f          	fence
    800026c4:	00100793          	li	a5,1
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	98050513          	addi	a0,a0,-1664 # 80005048 <_ZZ12printIntegermE6digits+0x28>
    800026d0:	00f4a023          	sw	a5,0(s1)
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	a44080e7          	jalr	-1468(ra) # 80003118 <__printf>
    800026dc:	0000006f          	j	800026dc <system_main+0xd4>

00000000800026e0 <cpuid>:
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00813423          	sd	s0,8(sp)
    800026e8:	01010413          	addi	s0,sp,16
    800026ec:	00020513          	mv	a0,tp
    800026f0:	00813403          	ld	s0,8(sp)
    800026f4:	0005051b          	sext.w	a0,a0
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <mycpu>:
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00813423          	sd	s0,8(sp)
    80002708:	01010413          	addi	s0,sp,16
    8000270c:	00020793          	mv	a5,tp
    80002710:	00813403          	ld	s0,8(sp)
    80002714:	0007879b          	sext.w	a5,a5
    80002718:	00779793          	slli	a5,a5,0x7
    8000271c:	00004517          	auipc	a0,0x4
    80002720:	5b450513          	addi	a0,a0,1460 # 80006cd0 <cpus>
    80002724:	00f50533          	add	a0,a0,a5
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <userinit>:
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00813423          	sd	s0,8(sp)
    80002738:	01010413          	addi	s0,sp,16
    8000273c:	00813403          	ld	s0,8(sp)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	fffff317          	auipc	t1,0xfffff
    80002748:	14c30067          	jr	332(t1) # 80001890 <main>

000000008000274c <either_copyout>:
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813023          	sd	s0,0(sp)
    80002754:	00113423          	sd	ra,8(sp)
    80002758:	01010413          	addi	s0,sp,16
    8000275c:	02051663          	bnez	a0,80002788 <either_copyout+0x3c>
    80002760:	00058513          	mv	a0,a1
    80002764:	00060593          	mv	a1,a2
    80002768:	0006861b          	sext.w	a2,a3
    8000276c:	00002097          	auipc	ra,0x2
    80002770:	c58080e7          	jalr	-936(ra) # 800043c4 <__memmove>
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	00000513          	li	a0,0
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret
    80002788:	00003517          	auipc	a0,0x3
    8000278c:	90050513          	addi	a0,a0,-1792 # 80005088 <_ZZ12printIntegermE6digits+0x68>
    80002790:	00001097          	auipc	ra,0x1
    80002794:	92c080e7          	jalr	-1748(ra) # 800030bc <panic>

0000000080002798 <either_copyin>:
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	00113423          	sd	ra,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    800027a8:	02059463          	bnez	a1,800027d0 <either_copyin+0x38>
    800027ac:	00060593          	mv	a1,a2
    800027b0:	0006861b          	sext.w	a2,a3
    800027b4:	00002097          	auipc	ra,0x2
    800027b8:	c10080e7          	jalr	-1008(ra) # 800043c4 <__memmove>
    800027bc:	00813083          	ld	ra,8(sp)
    800027c0:	00013403          	ld	s0,0(sp)
    800027c4:	00000513          	li	a0,0
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret
    800027d0:	00003517          	auipc	a0,0x3
    800027d4:	8e050513          	addi	a0,a0,-1824 # 800050b0 <_ZZ12printIntegermE6digits+0x90>
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	8e4080e7          	jalr	-1820(ra) # 800030bc <panic>

00000000800027e0 <trapinit>:
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00813423          	sd	s0,8(sp)
    800027e8:	01010413          	addi	s0,sp,16
    800027ec:	00813403          	ld	s0,8(sp)
    800027f0:	00003597          	auipc	a1,0x3
    800027f4:	8e858593          	addi	a1,a1,-1816 # 800050d8 <_ZZ12printIntegermE6digits+0xb8>
    800027f8:	00004517          	auipc	a0,0x4
    800027fc:	55850513          	addi	a0,a0,1368 # 80006d50 <tickslock>
    80002800:	01010113          	addi	sp,sp,16
    80002804:	00001317          	auipc	t1,0x1
    80002808:	5c430067          	jr	1476(t1) # 80003dc8 <initlock>

000000008000280c <trapinithart>:
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00813423          	sd	s0,8(sp)
    80002814:	01010413          	addi	s0,sp,16
    80002818:	00000797          	auipc	a5,0x0
    8000281c:	2f878793          	addi	a5,a5,760 # 80002b10 <kernelvec>
    80002820:	10579073          	csrw	stvec,a5
    80002824:	00813403          	ld	s0,8(sp)
    80002828:	01010113          	addi	sp,sp,16
    8000282c:	00008067          	ret

0000000080002830 <usertrap>:
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00813423          	sd	s0,8(sp)
    80002838:	01010413          	addi	s0,sp,16
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <usertrapret>:
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <kerneltrap>:
    80002860:	fe010113          	addi	sp,sp,-32
    80002864:	00813823          	sd	s0,16(sp)
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00913423          	sd	s1,8(sp)
    80002870:	02010413          	addi	s0,sp,32
    80002874:	142025f3          	csrr	a1,scause
    80002878:	100027f3          	csrr	a5,sstatus
    8000287c:	0027f793          	andi	a5,a5,2
    80002880:	10079c63          	bnez	a5,80002998 <kerneltrap+0x138>
    80002884:	142027f3          	csrr	a5,scause
    80002888:	0207ce63          	bltz	a5,800028c4 <kerneltrap+0x64>
    8000288c:	00003517          	auipc	a0,0x3
    80002890:	89450513          	addi	a0,a0,-1900 # 80005120 <_ZZ12printIntegermE6digits+0x100>
    80002894:	00001097          	auipc	ra,0x1
    80002898:	884080e7          	jalr	-1916(ra) # 80003118 <__printf>
    8000289c:	141025f3          	csrr	a1,sepc
    800028a0:	14302673          	csrr	a2,stval
    800028a4:	00003517          	auipc	a0,0x3
    800028a8:	88c50513          	addi	a0,a0,-1908 # 80005130 <_ZZ12printIntegermE6digits+0x110>
    800028ac:	00001097          	auipc	ra,0x1
    800028b0:	86c080e7          	jalr	-1940(ra) # 80003118 <__printf>
    800028b4:	00003517          	auipc	a0,0x3
    800028b8:	89450513          	addi	a0,a0,-1900 # 80005148 <_ZZ12printIntegermE6digits+0x128>
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	800080e7          	jalr	-2048(ra) # 800030bc <panic>
    800028c4:	0ff7f713          	andi	a4,a5,255
    800028c8:	00900693          	li	a3,9
    800028cc:	04d70063          	beq	a4,a3,8000290c <kerneltrap+0xac>
    800028d0:	fff00713          	li	a4,-1
    800028d4:	03f71713          	slli	a4,a4,0x3f
    800028d8:	00170713          	addi	a4,a4,1
    800028dc:	fae798e3          	bne	a5,a4,8000288c <kerneltrap+0x2c>
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	e00080e7          	jalr	-512(ra) # 800026e0 <cpuid>
    800028e8:	06050663          	beqz	a0,80002954 <kerneltrap+0xf4>
    800028ec:	144027f3          	csrr	a5,sip
    800028f0:	ffd7f793          	andi	a5,a5,-3
    800028f4:	14479073          	csrw	sip,a5
    800028f8:	01813083          	ld	ra,24(sp)
    800028fc:	01013403          	ld	s0,16(sp)
    80002900:	00813483          	ld	s1,8(sp)
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00008067          	ret
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	3c8080e7          	jalr	968(ra) # 80002cd4 <plic_claim>
    80002914:	00a00793          	li	a5,10
    80002918:	00050493          	mv	s1,a0
    8000291c:	06f50863          	beq	a0,a5,8000298c <kerneltrap+0x12c>
    80002920:	fc050ce3          	beqz	a0,800028f8 <kerneltrap+0x98>
    80002924:	00050593          	mv	a1,a0
    80002928:	00002517          	auipc	a0,0x2
    8000292c:	7d850513          	addi	a0,a0,2008 # 80005100 <_ZZ12printIntegermE6digits+0xe0>
    80002930:	00000097          	auipc	ra,0x0
    80002934:	7e8080e7          	jalr	2024(ra) # 80003118 <__printf>
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	00048513          	mv	a0,s1
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00000317          	auipc	t1,0x0
    80002950:	3c030067          	jr	960(t1) # 80002d0c <plic_complete>
    80002954:	00004517          	auipc	a0,0x4
    80002958:	3fc50513          	addi	a0,a0,1020 # 80006d50 <tickslock>
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	490080e7          	jalr	1168(ra) # 80003dec <acquire>
    80002964:	00003717          	auipc	a4,0x3
    80002968:	2d070713          	addi	a4,a4,720 # 80005c34 <ticks>
    8000296c:	00072783          	lw	a5,0(a4)
    80002970:	00004517          	auipc	a0,0x4
    80002974:	3e050513          	addi	a0,a0,992 # 80006d50 <tickslock>
    80002978:	0017879b          	addiw	a5,a5,1
    8000297c:	00f72023          	sw	a5,0(a4)
    80002980:	00001097          	auipc	ra,0x1
    80002984:	538080e7          	jalr	1336(ra) # 80003eb8 <release>
    80002988:	f65ff06f          	j	800028ec <kerneltrap+0x8c>
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	094080e7          	jalr	148(ra) # 80003a20 <uartintr>
    80002994:	fa5ff06f          	j	80002938 <kerneltrap+0xd8>
    80002998:	00002517          	auipc	a0,0x2
    8000299c:	74850513          	addi	a0,a0,1864 # 800050e0 <_ZZ12printIntegermE6digits+0xc0>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	71c080e7          	jalr	1820(ra) # 800030bc <panic>

00000000800029a8 <clockintr>:
    800029a8:	fe010113          	addi	sp,sp,-32
    800029ac:	00813823          	sd	s0,16(sp)
    800029b0:	00913423          	sd	s1,8(sp)
    800029b4:	00113c23          	sd	ra,24(sp)
    800029b8:	02010413          	addi	s0,sp,32
    800029bc:	00004497          	auipc	s1,0x4
    800029c0:	39448493          	addi	s1,s1,916 # 80006d50 <tickslock>
    800029c4:	00048513          	mv	a0,s1
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	424080e7          	jalr	1060(ra) # 80003dec <acquire>
    800029d0:	00003717          	auipc	a4,0x3
    800029d4:	26470713          	addi	a4,a4,612 # 80005c34 <ticks>
    800029d8:	00072783          	lw	a5,0(a4)
    800029dc:	01013403          	ld	s0,16(sp)
    800029e0:	01813083          	ld	ra,24(sp)
    800029e4:	00048513          	mv	a0,s1
    800029e8:	0017879b          	addiw	a5,a5,1
    800029ec:	00813483          	ld	s1,8(sp)
    800029f0:	00f72023          	sw	a5,0(a4)
    800029f4:	02010113          	addi	sp,sp,32
    800029f8:	00001317          	auipc	t1,0x1
    800029fc:	4c030067          	jr	1216(t1) # 80003eb8 <release>

0000000080002a00 <devintr>:
    80002a00:	142027f3          	csrr	a5,scause
    80002a04:	00000513          	li	a0,0
    80002a08:	0007c463          	bltz	a5,80002a10 <devintr+0x10>
    80002a0c:	00008067          	ret
    80002a10:	fe010113          	addi	sp,sp,-32
    80002a14:	00813823          	sd	s0,16(sp)
    80002a18:	00113c23          	sd	ra,24(sp)
    80002a1c:	00913423          	sd	s1,8(sp)
    80002a20:	02010413          	addi	s0,sp,32
    80002a24:	0ff7f713          	andi	a4,a5,255
    80002a28:	00900693          	li	a3,9
    80002a2c:	04d70c63          	beq	a4,a3,80002a84 <devintr+0x84>
    80002a30:	fff00713          	li	a4,-1
    80002a34:	03f71713          	slli	a4,a4,0x3f
    80002a38:	00170713          	addi	a4,a4,1
    80002a3c:	00e78c63          	beq	a5,a4,80002a54 <devintr+0x54>
    80002a40:	01813083          	ld	ra,24(sp)
    80002a44:	01013403          	ld	s0,16(sp)
    80002a48:	00813483          	ld	s1,8(sp)
    80002a4c:	02010113          	addi	sp,sp,32
    80002a50:	00008067          	ret
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	c8c080e7          	jalr	-884(ra) # 800026e0 <cpuid>
    80002a5c:	06050663          	beqz	a0,80002ac8 <devintr+0xc8>
    80002a60:	144027f3          	csrr	a5,sip
    80002a64:	ffd7f793          	andi	a5,a5,-3
    80002a68:	14479073          	csrw	sip,a5
    80002a6c:	01813083          	ld	ra,24(sp)
    80002a70:	01013403          	ld	s0,16(sp)
    80002a74:	00813483          	ld	s1,8(sp)
    80002a78:	00200513          	li	a0,2
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	250080e7          	jalr	592(ra) # 80002cd4 <plic_claim>
    80002a8c:	00a00793          	li	a5,10
    80002a90:	00050493          	mv	s1,a0
    80002a94:	06f50663          	beq	a0,a5,80002b00 <devintr+0x100>
    80002a98:	00100513          	li	a0,1
    80002a9c:	fa0482e3          	beqz	s1,80002a40 <devintr+0x40>
    80002aa0:	00048593          	mv	a1,s1
    80002aa4:	00002517          	auipc	a0,0x2
    80002aa8:	65c50513          	addi	a0,a0,1628 # 80005100 <_ZZ12printIntegermE6digits+0xe0>
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	66c080e7          	jalr	1644(ra) # 80003118 <__printf>
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	254080e7          	jalr	596(ra) # 80002d0c <plic_complete>
    80002ac0:	00100513          	li	a0,1
    80002ac4:	f7dff06f          	j	80002a40 <devintr+0x40>
    80002ac8:	00004517          	auipc	a0,0x4
    80002acc:	28850513          	addi	a0,a0,648 # 80006d50 <tickslock>
    80002ad0:	00001097          	auipc	ra,0x1
    80002ad4:	31c080e7          	jalr	796(ra) # 80003dec <acquire>
    80002ad8:	00003717          	auipc	a4,0x3
    80002adc:	15c70713          	addi	a4,a4,348 # 80005c34 <ticks>
    80002ae0:	00072783          	lw	a5,0(a4)
    80002ae4:	00004517          	auipc	a0,0x4
    80002ae8:	26c50513          	addi	a0,a0,620 # 80006d50 <tickslock>
    80002aec:	0017879b          	addiw	a5,a5,1
    80002af0:	00f72023          	sw	a5,0(a4)
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	3c4080e7          	jalr	964(ra) # 80003eb8 <release>
    80002afc:	f65ff06f          	j	80002a60 <devintr+0x60>
    80002b00:	00001097          	auipc	ra,0x1
    80002b04:	f20080e7          	jalr	-224(ra) # 80003a20 <uartintr>
    80002b08:	fadff06f          	j	80002ab4 <devintr+0xb4>
    80002b0c:	0000                	unimp
	...

0000000080002b10 <kernelvec>:
    80002b10:	f0010113          	addi	sp,sp,-256
    80002b14:	00113023          	sd	ra,0(sp)
    80002b18:	00213423          	sd	sp,8(sp)
    80002b1c:	00313823          	sd	gp,16(sp)
    80002b20:	00413c23          	sd	tp,24(sp)
    80002b24:	02513023          	sd	t0,32(sp)
    80002b28:	02613423          	sd	t1,40(sp)
    80002b2c:	02713823          	sd	t2,48(sp)
    80002b30:	02813c23          	sd	s0,56(sp)
    80002b34:	04913023          	sd	s1,64(sp)
    80002b38:	04a13423          	sd	a0,72(sp)
    80002b3c:	04b13823          	sd	a1,80(sp)
    80002b40:	04c13c23          	sd	a2,88(sp)
    80002b44:	06d13023          	sd	a3,96(sp)
    80002b48:	06e13423          	sd	a4,104(sp)
    80002b4c:	06f13823          	sd	a5,112(sp)
    80002b50:	07013c23          	sd	a6,120(sp)
    80002b54:	09113023          	sd	a7,128(sp)
    80002b58:	09213423          	sd	s2,136(sp)
    80002b5c:	09313823          	sd	s3,144(sp)
    80002b60:	09413c23          	sd	s4,152(sp)
    80002b64:	0b513023          	sd	s5,160(sp)
    80002b68:	0b613423          	sd	s6,168(sp)
    80002b6c:	0b713823          	sd	s7,176(sp)
    80002b70:	0b813c23          	sd	s8,184(sp)
    80002b74:	0d913023          	sd	s9,192(sp)
    80002b78:	0da13423          	sd	s10,200(sp)
    80002b7c:	0db13823          	sd	s11,208(sp)
    80002b80:	0dc13c23          	sd	t3,216(sp)
    80002b84:	0fd13023          	sd	t4,224(sp)
    80002b88:	0fe13423          	sd	t5,232(sp)
    80002b8c:	0ff13823          	sd	t6,240(sp)
    80002b90:	cd1ff0ef          	jal	ra,80002860 <kerneltrap>
    80002b94:	00013083          	ld	ra,0(sp)
    80002b98:	00813103          	ld	sp,8(sp)
    80002b9c:	01013183          	ld	gp,16(sp)
    80002ba0:	02013283          	ld	t0,32(sp)
    80002ba4:	02813303          	ld	t1,40(sp)
    80002ba8:	03013383          	ld	t2,48(sp)
    80002bac:	03813403          	ld	s0,56(sp)
    80002bb0:	04013483          	ld	s1,64(sp)
    80002bb4:	04813503          	ld	a0,72(sp)
    80002bb8:	05013583          	ld	a1,80(sp)
    80002bbc:	05813603          	ld	a2,88(sp)
    80002bc0:	06013683          	ld	a3,96(sp)
    80002bc4:	06813703          	ld	a4,104(sp)
    80002bc8:	07013783          	ld	a5,112(sp)
    80002bcc:	07813803          	ld	a6,120(sp)
    80002bd0:	08013883          	ld	a7,128(sp)
    80002bd4:	08813903          	ld	s2,136(sp)
    80002bd8:	09013983          	ld	s3,144(sp)
    80002bdc:	09813a03          	ld	s4,152(sp)
    80002be0:	0a013a83          	ld	s5,160(sp)
    80002be4:	0a813b03          	ld	s6,168(sp)
    80002be8:	0b013b83          	ld	s7,176(sp)
    80002bec:	0b813c03          	ld	s8,184(sp)
    80002bf0:	0c013c83          	ld	s9,192(sp)
    80002bf4:	0c813d03          	ld	s10,200(sp)
    80002bf8:	0d013d83          	ld	s11,208(sp)
    80002bfc:	0d813e03          	ld	t3,216(sp)
    80002c00:	0e013e83          	ld	t4,224(sp)
    80002c04:	0e813f03          	ld	t5,232(sp)
    80002c08:	0f013f83          	ld	t6,240(sp)
    80002c0c:	10010113          	addi	sp,sp,256
    80002c10:	10200073          	sret
    80002c14:	00000013          	nop
    80002c18:	00000013          	nop
    80002c1c:	00000013          	nop

0000000080002c20 <timervec>:
    80002c20:	34051573          	csrrw	a0,mscratch,a0
    80002c24:	00b53023          	sd	a1,0(a0)
    80002c28:	00c53423          	sd	a2,8(a0)
    80002c2c:	00d53823          	sd	a3,16(a0)
    80002c30:	01853583          	ld	a1,24(a0)
    80002c34:	02053603          	ld	a2,32(a0)
    80002c38:	0005b683          	ld	a3,0(a1)
    80002c3c:	00c686b3          	add	a3,a3,a2
    80002c40:	00d5b023          	sd	a3,0(a1)
    80002c44:	00200593          	li	a1,2
    80002c48:	14459073          	csrw	sip,a1
    80002c4c:	01053683          	ld	a3,16(a0)
    80002c50:	00853603          	ld	a2,8(a0)
    80002c54:	00053583          	ld	a1,0(a0)
    80002c58:	34051573          	csrrw	a0,mscratch,a0
    80002c5c:	30200073          	mret

0000000080002c60 <plicinit>:
    80002c60:	ff010113          	addi	sp,sp,-16
    80002c64:	00813423          	sd	s0,8(sp)
    80002c68:	01010413          	addi	s0,sp,16
    80002c6c:	00813403          	ld	s0,8(sp)
    80002c70:	0c0007b7          	lui	a5,0xc000
    80002c74:	00100713          	li	a4,1
    80002c78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002c7c:	00e7a223          	sw	a4,4(a5)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <plicinithart>:
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	00113423          	sd	ra,8(sp)
    80002c94:	01010413          	addi	s0,sp,16
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	a48080e7          	jalr	-1464(ra) # 800026e0 <cpuid>
    80002ca0:	0085171b          	slliw	a4,a0,0x8
    80002ca4:	0c0027b7          	lui	a5,0xc002
    80002ca8:	00e787b3          	add	a5,a5,a4
    80002cac:	40200713          	li	a4,1026
    80002cb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002cb4:	00813083          	ld	ra,8(sp)
    80002cb8:	00013403          	ld	s0,0(sp)
    80002cbc:	00d5151b          	slliw	a0,a0,0xd
    80002cc0:	0c2017b7          	lui	a5,0xc201
    80002cc4:	00a78533          	add	a0,a5,a0
    80002cc8:	00052023          	sw	zero,0(a0)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <plic_claim>:
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813023          	sd	s0,0(sp)
    80002cdc:	00113423          	sd	ra,8(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	9fc080e7          	jalr	-1540(ra) # 800026e0 <cpuid>
    80002cec:	00813083          	ld	ra,8(sp)
    80002cf0:	00013403          	ld	s0,0(sp)
    80002cf4:	00d5151b          	slliw	a0,a0,0xd
    80002cf8:	0c2017b7          	lui	a5,0xc201
    80002cfc:	00a78533          	add	a0,a5,a0
    80002d00:	00452503          	lw	a0,4(a0)
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00008067          	ret

0000000080002d0c <plic_complete>:
    80002d0c:	fe010113          	addi	sp,sp,-32
    80002d10:	00813823          	sd	s0,16(sp)
    80002d14:	00913423          	sd	s1,8(sp)
    80002d18:	00113c23          	sd	ra,24(sp)
    80002d1c:	02010413          	addi	s0,sp,32
    80002d20:	00050493          	mv	s1,a0
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	9bc080e7          	jalr	-1604(ra) # 800026e0 <cpuid>
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	00d5179b          	slliw	a5,a0,0xd
    80002d38:	0c201737          	lui	a4,0xc201
    80002d3c:	00f707b3          	add	a5,a4,a5
    80002d40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002d44:	00813483          	ld	s1,8(sp)
    80002d48:	02010113          	addi	sp,sp,32
    80002d4c:	00008067          	ret

0000000080002d50 <consolewrite>:
    80002d50:	fb010113          	addi	sp,sp,-80
    80002d54:	04813023          	sd	s0,64(sp)
    80002d58:	04113423          	sd	ra,72(sp)
    80002d5c:	02913c23          	sd	s1,56(sp)
    80002d60:	03213823          	sd	s2,48(sp)
    80002d64:	03313423          	sd	s3,40(sp)
    80002d68:	03413023          	sd	s4,32(sp)
    80002d6c:	01513c23          	sd	s5,24(sp)
    80002d70:	05010413          	addi	s0,sp,80
    80002d74:	06c05c63          	blez	a2,80002dec <consolewrite+0x9c>
    80002d78:	00060993          	mv	s3,a2
    80002d7c:	00050a13          	mv	s4,a0
    80002d80:	00058493          	mv	s1,a1
    80002d84:	00000913          	li	s2,0
    80002d88:	fff00a93          	li	s5,-1
    80002d8c:	01c0006f          	j	80002da8 <consolewrite+0x58>
    80002d90:	fbf44503          	lbu	a0,-65(s0)
    80002d94:	0019091b          	addiw	s2,s2,1
    80002d98:	00148493          	addi	s1,s1,1
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	a9c080e7          	jalr	-1380(ra) # 80003838 <uartputc>
    80002da4:	03298063          	beq	s3,s2,80002dc4 <consolewrite+0x74>
    80002da8:	00048613          	mv	a2,s1
    80002dac:	00100693          	li	a3,1
    80002db0:	000a0593          	mv	a1,s4
    80002db4:	fbf40513          	addi	a0,s0,-65
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	9e0080e7          	jalr	-1568(ra) # 80002798 <either_copyin>
    80002dc0:	fd5518e3          	bne	a0,s5,80002d90 <consolewrite+0x40>
    80002dc4:	04813083          	ld	ra,72(sp)
    80002dc8:	04013403          	ld	s0,64(sp)
    80002dcc:	03813483          	ld	s1,56(sp)
    80002dd0:	02813983          	ld	s3,40(sp)
    80002dd4:	02013a03          	ld	s4,32(sp)
    80002dd8:	01813a83          	ld	s5,24(sp)
    80002ddc:	00090513          	mv	a0,s2
    80002de0:	03013903          	ld	s2,48(sp)
    80002de4:	05010113          	addi	sp,sp,80
    80002de8:	00008067          	ret
    80002dec:	00000913          	li	s2,0
    80002df0:	fd5ff06f          	j	80002dc4 <consolewrite+0x74>

0000000080002df4 <consoleread>:
    80002df4:	f9010113          	addi	sp,sp,-112
    80002df8:	06813023          	sd	s0,96(sp)
    80002dfc:	04913c23          	sd	s1,88(sp)
    80002e00:	05213823          	sd	s2,80(sp)
    80002e04:	05313423          	sd	s3,72(sp)
    80002e08:	05413023          	sd	s4,64(sp)
    80002e0c:	03513c23          	sd	s5,56(sp)
    80002e10:	03613823          	sd	s6,48(sp)
    80002e14:	03713423          	sd	s7,40(sp)
    80002e18:	03813023          	sd	s8,32(sp)
    80002e1c:	06113423          	sd	ra,104(sp)
    80002e20:	01913c23          	sd	s9,24(sp)
    80002e24:	07010413          	addi	s0,sp,112
    80002e28:	00060b93          	mv	s7,a2
    80002e2c:	00050913          	mv	s2,a0
    80002e30:	00058c13          	mv	s8,a1
    80002e34:	00060b1b          	sext.w	s6,a2
    80002e38:	00004497          	auipc	s1,0x4
    80002e3c:	f4048493          	addi	s1,s1,-192 # 80006d78 <cons>
    80002e40:	00400993          	li	s3,4
    80002e44:	fff00a13          	li	s4,-1
    80002e48:	00a00a93          	li	s5,10
    80002e4c:	05705e63          	blez	s7,80002ea8 <consoleread+0xb4>
    80002e50:	09c4a703          	lw	a4,156(s1)
    80002e54:	0984a783          	lw	a5,152(s1)
    80002e58:	0007071b          	sext.w	a4,a4
    80002e5c:	08e78463          	beq	a5,a4,80002ee4 <consoleread+0xf0>
    80002e60:	07f7f713          	andi	a4,a5,127
    80002e64:	00e48733          	add	a4,s1,a4
    80002e68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002e6c:	0017869b          	addiw	a3,a5,1
    80002e70:	08d4ac23          	sw	a3,152(s1)
    80002e74:	00070c9b          	sext.w	s9,a4
    80002e78:	0b370663          	beq	a4,s3,80002f24 <consoleread+0x130>
    80002e7c:	00100693          	li	a3,1
    80002e80:	f9f40613          	addi	a2,s0,-97
    80002e84:	000c0593          	mv	a1,s8
    80002e88:	00090513          	mv	a0,s2
    80002e8c:	f8e40fa3          	sb	a4,-97(s0)
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	8bc080e7          	jalr	-1860(ra) # 8000274c <either_copyout>
    80002e98:	01450863          	beq	a0,s4,80002ea8 <consoleread+0xb4>
    80002e9c:	001c0c13          	addi	s8,s8,1
    80002ea0:	fffb8b9b          	addiw	s7,s7,-1
    80002ea4:	fb5c94e3          	bne	s9,s5,80002e4c <consoleread+0x58>
    80002ea8:	000b851b          	sext.w	a0,s7
    80002eac:	06813083          	ld	ra,104(sp)
    80002eb0:	06013403          	ld	s0,96(sp)
    80002eb4:	05813483          	ld	s1,88(sp)
    80002eb8:	05013903          	ld	s2,80(sp)
    80002ebc:	04813983          	ld	s3,72(sp)
    80002ec0:	04013a03          	ld	s4,64(sp)
    80002ec4:	03813a83          	ld	s5,56(sp)
    80002ec8:	02813b83          	ld	s7,40(sp)
    80002ecc:	02013c03          	ld	s8,32(sp)
    80002ed0:	01813c83          	ld	s9,24(sp)
    80002ed4:	40ab053b          	subw	a0,s6,a0
    80002ed8:	03013b03          	ld	s6,48(sp)
    80002edc:	07010113          	addi	sp,sp,112
    80002ee0:	00008067          	ret
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	1d8080e7          	jalr	472(ra) # 800040bc <push_on>
    80002eec:	0984a703          	lw	a4,152(s1)
    80002ef0:	09c4a783          	lw	a5,156(s1)
    80002ef4:	0007879b          	sext.w	a5,a5
    80002ef8:	fef70ce3          	beq	a4,a5,80002ef0 <consoleread+0xfc>
    80002efc:	00001097          	auipc	ra,0x1
    80002f00:	234080e7          	jalr	564(ra) # 80004130 <pop_on>
    80002f04:	0984a783          	lw	a5,152(s1)
    80002f08:	07f7f713          	andi	a4,a5,127
    80002f0c:	00e48733          	add	a4,s1,a4
    80002f10:	01874703          	lbu	a4,24(a4)
    80002f14:	0017869b          	addiw	a3,a5,1
    80002f18:	08d4ac23          	sw	a3,152(s1)
    80002f1c:	00070c9b          	sext.w	s9,a4
    80002f20:	f5371ee3          	bne	a4,s3,80002e7c <consoleread+0x88>
    80002f24:	000b851b          	sext.w	a0,s7
    80002f28:	f96bf2e3          	bgeu	s7,s6,80002eac <consoleread+0xb8>
    80002f2c:	08f4ac23          	sw	a5,152(s1)
    80002f30:	f7dff06f          	j	80002eac <consoleread+0xb8>

0000000080002f34 <consputc>:
    80002f34:	10000793          	li	a5,256
    80002f38:	00f50663          	beq	a0,a5,80002f44 <consputc+0x10>
    80002f3c:	00001317          	auipc	t1,0x1
    80002f40:	9f430067          	jr	-1548(t1) # 80003930 <uartputc_sync>
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00113423          	sd	ra,8(sp)
    80002f4c:	00813023          	sd	s0,0(sp)
    80002f50:	01010413          	addi	s0,sp,16
    80002f54:	00800513          	li	a0,8
    80002f58:	00001097          	auipc	ra,0x1
    80002f5c:	9d8080e7          	jalr	-1576(ra) # 80003930 <uartputc_sync>
    80002f60:	02000513          	li	a0,32
    80002f64:	00001097          	auipc	ra,0x1
    80002f68:	9cc080e7          	jalr	-1588(ra) # 80003930 <uartputc_sync>
    80002f6c:	00013403          	ld	s0,0(sp)
    80002f70:	00813083          	ld	ra,8(sp)
    80002f74:	00800513          	li	a0,8
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00001317          	auipc	t1,0x1
    80002f80:	9b430067          	jr	-1612(t1) # 80003930 <uartputc_sync>

0000000080002f84 <consoleintr>:
    80002f84:	fe010113          	addi	sp,sp,-32
    80002f88:	00813823          	sd	s0,16(sp)
    80002f8c:	00913423          	sd	s1,8(sp)
    80002f90:	01213023          	sd	s2,0(sp)
    80002f94:	00113c23          	sd	ra,24(sp)
    80002f98:	02010413          	addi	s0,sp,32
    80002f9c:	00004917          	auipc	s2,0x4
    80002fa0:	ddc90913          	addi	s2,s2,-548 # 80006d78 <cons>
    80002fa4:	00050493          	mv	s1,a0
    80002fa8:	00090513          	mv	a0,s2
    80002fac:	00001097          	auipc	ra,0x1
    80002fb0:	e40080e7          	jalr	-448(ra) # 80003dec <acquire>
    80002fb4:	02048c63          	beqz	s1,80002fec <consoleintr+0x68>
    80002fb8:	0a092783          	lw	a5,160(s2)
    80002fbc:	09892703          	lw	a4,152(s2)
    80002fc0:	07f00693          	li	a3,127
    80002fc4:	40e7873b          	subw	a4,a5,a4
    80002fc8:	02e6e263          	bltu	a3,a4,80002fec <consoleintr+0x68>
    80002fcc:	00d00713          	li	a4,13
    80002fd0:	04e48063          	beq	s1,a4,80003010 <consoleintr+0x8c>
    80002fd4:	07f7f713          	andi	a4,a5,127
    80002fd8:	00e90733          	add	a4,s2,a4
    80002fdc:	0017879b          	addiw	a5,a5,1
    80002fe0:	0af92023          	sw	a5,160(s2)
    80002fe4:	00970c23          	sb	s1,24(a4)
    80002fe8:	08f92e23          	sw	a5,156(s2)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	00813483          	ld	s1,8(sp)
    80002ff8:	00013903          	ld	s2,0(sp)
    80002ffc:	00004517          	auipc	a0,0x4
    80003000:	d7c50513          	addi	a0,a0,-644 # 80006d78 <cons>
    80003004:	02010113          	addi	sp,sp,32
    80003008:	00001317          	auipc	t1,0x1
    8000300c:	eb030067          	jr	-336(t1) # 80003eb8 <release>
    80003010:	00a00493          	li	s1,10
    80003014:	fc1ff06f          	j	80002fd4 <consoleintr+0x50>

0000000080003018 <consoleinit>:
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00113c23          	sd	ra,24(sp)
    80003020:	00813823          	sd	s0,16(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	02010413          	addi	s0,sp,32
    8000302c:	00004497          	auipc	s1,0x4
    80003030:	d4c48493          	addi	s1,s1,-692 # 80006d78 <cons>
    80003034:	00048513          	mv	a0,s1
    80003038:	00002597          	auipc	a1,0x2
    8000303c:	12058593          	addi	a1,a1,288 # 80005158 <_ZZ12printIntegermE6digits+0x138>
    80003040:	00001097          	auipc	ra,0x1
    80003044:	d88080e7          	jalr	-632(ra) # 80003dc8 <initlock>
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	7ac080e7          	jalr	1964(ra) # 800037f4 <uartinit>
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	00000797          	auipc	a5,0x0
    8000305c:	d9c78793          	addi	a5,a5,-612 # 80002df4 <consoleread>
    80003060:	0af4bc23          	sd	a5,184(s1)
    80003064:	00000797          	auipc	a5,0x0
    80003068:	cec78793          	addi	a5,a5,-788 # 80002d50 <consolewrite>
    8000306c:	0cf4b023          	sd	a5,192(s1)
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00008067          	ret

000000008000307c <console_read>:
    8000307c:	ff010113          	addi	sp,sp,-16
    80003080:	00813423          	sd	s0,8(sp)
    80003084:	01010413          	addi	s0,sp,16
    80003088:	00813403          	ld	s0,8(sp)
    8000308c:	00004317          	auipc	t1,0x4
    80003090:	da433303          	ld	t1,-604(t1) # 80006e30 <devsw+0x10>
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00030067          	jr	t1

000000008000309c <console_write>:
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00813423          	sd	s0,8(sp)
    800030a4:	01010413          	addi	s0,sp,16
    800030a8:	00813403          	ld	s0,8(sp)
    800030ac:	00004317          	auipc	t1,0x4
    800030b0:	d8c33303          	ld	t1,-628(t1) # 80006e38 <devsw+0x18>
    800030b4:	01010113          	addi	sp,sp,16
    800030b8:	00030067          	jr	t1

00000000800030bc <panic>:
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00113c23          	sd	ra,24(sp)
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	02010413          	addi	s0,sp,32
    800030d0:	00050493          	mv	s1,a0
    800030d4:	00002517          	auipc	a0,0x2
    800030d8:	08c50513          	addi	a0,a0,140 # 80005160 <_ZZ12printIntegermE6digits+0x140>
    800030dc:	00004797          	auipc	a5,0x4
    800030e0:	de07ae23          	sw	zero,-516(a5) # 80006ed8 <pr+0x18>
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	034080e7          	jalr	52(ra) # 80003118 <__printf>
    800030ec:	00048513          	mv	a0,s1
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	028080e7          	jalr	40(ra) # 80003118 <__printf>
    800030f8:	00002517          	auipc	a0,0x2
    800030fc:	04850513          	addi	a0,a0,72 # 80005140 <_ZZ12printIntegermE6digits+0x120>
    80003100:	00000097          	auipc	ra,0x0
    80003104:	018080e7          	jalr	24(ra) # 80003118 <__printf>
    80003108:	00100793          	li	a5,1
    8000310c:	00003717          	auipc	a4,0x3
    80003110:	b2f72623          	sw	a5,-1236(a4) # 80005c38 <panicked>
    80003114:	0000006f          	j	80003114 <panic+0x58>

0000000080003118 <__printf>:
    80003118:	f3010113          	addi	sp,sp,-208
    8000311c:	08813023          	sd	s0,128(sp)
    80003120:	07313423          	sd	s3,104(sp)
    80003124:	09010413          	addi	s0,sp,144
    80003128:	05813023          	sd	s8,64(sp)
    8000312c:	08113423          	sd	ra,136(sp)
    80003130:	06913c23          	sd	s1,120(sp)
    80003134:	07213823          	sd	s2,112(sp)
    80003138:	07413023          	sd	s4,96(sp)
    8000313c:	05513c23          	sd	s5,88(sp)
    80003140:	05613823          	sd	s6,80(sp)
    80003144:	05713423          	sd	s7,72(sp)
    80003148:	03913c23          	sd	s9,56(sp)
    8000314c:	03a13823          	sd	s10,48(sp)
    80003150:	03b13423          	sd	s11,40(sp)
    80003154:	00004317          	auipc	t1,0x4
    80003158:	d6c30313          	addi	t1,t1,-660 # 80006ec0 <pr>
    8000315c:	01832c03          	lw	s8,24(t1)
    80003160:	00b43423          	sd	a1,8(s0)
    80003164:	00c43823          	sd	a2,16(s0)
    80003168:	00d43c23          	sd	a3,24(s0)
    8000316c:	02e43023          	sd	a4,32(s0)
    80003170:	02f43423          	sd	a5,40(s0)
    80003174:	03043823          	sd	a6,48(s0)
    80003178:	03143c23          	sd	a7,56(s0)
    8000317c:	00050993          	mv	s3,a0
    80003180:	4a0c1663          	bnez	s8,8000362c <__printf+0x514>
    80003184:	60098c63          	beqz	s3,8000379c <__printf+0x684>
    80003188:	0009c503          	lbu	a0,0(s3)
    8000318c:	00840793          	addi	a5,s0,8
    80003190:	f6f43c23          	sd	a5,-136(s0)
    80003194:	00000493          	li	s1,0
    80003198:	22050063          	beqz	a0,800033b8 <__printf+0x2a0>
    8000319c:	00002a37          	lui	s4,0x2
    800031a0:	00018ab7          	lui	s5,0x18
    800031a4:	000f4b37          	lui	s6,0xf4
    800031a8:	00989bb7          	lui	s7,0x989
    800031ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800031b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800031b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800031b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800031bc:	00148c9b          	addiw	s9,s1,1
    800031c0:	02500793          	li	a5,37
    800031c4:	01998933          	add	s2,s3,s9
    800031c8:	38f51263          	bne	a0,a5,8000354c <__printf+0x434>
    800031cc:	00094783          	lbu	a5,0(s2)
    800031d0:	00078c9b          	sext.w	s9,a5
    800031d4:	1e078263          	beqz	a5,800033b8 <__printf+0x2a0>
    800031d8:	0024849b          	addiw	s1,s1,2
    800031dc:	07000713          	li	a4,112
    800031e0:	00998933          	add	s2,s3,s1
    800031e4:	38e78a63          	beq	a5,a4,80003578 <__printf+0x460>
    800031e8:	20f76863          	bltu	a4,a5,800033f8 <__printf+0x2e0>
    800031ec:	42a78863          	beq	a5,a0,8000361c <__printf+0x504>
    800031f0:	06400713          	li	a4,100
    800031f4:	40e79663          	bne	a5,a4,80003600 <__printf+0x4e8>
    800031f8:	f7843783          	ld	a5,-136(s0)
    800031fc:	0007a603          	lw	a2,0(a5)
    80003200:	00878793          	addi	a5,a5,8
    80003204:	f6f43c23          	sd	a5,-136(s0)
    80003208:	42064a63          	bltz	a2,8000363c <__printf+0x524>
    8000320c:	00a00713          	li	a4,10
    80003210:	02e677bb          	remuw	a5,a2,a4
    80003214:	00002d97          	auipc	s11,0x2
    80003218:	f74d8d93          	addi	s11,s11,-140 # 80005188 <digits>
    8000321c:	00900593          	li	a1,9
    80003220:	0006051b          	sext.w	a0,a2
    80003224:	00000c93          	li	s9,0
    80003228:	02079793          	slli	a5,a5,0x20
    8000322c:	0207d793          	srli	a5,a5,0x20
    80003230:	00fd87b3          	add	a5,s11,a5
    80003234:	0007c783          	lbu	a5,0(a5)
    80003238:	02e656bb          	divuw	a3,a2,a4
    8000323c:	f8f40023          	sb	a5,-128(s0)
    80003240:	14c5d863          	bge	a1,a2,80003390 <__printf+0x278>
    80003244:	06300593          	li	a1,99
    80003248:	00100c93          	li	s9,1
    8000324c:	02e6f7bb          	remuw	a5,a3,a4
    80003250:	02079793          	slli	a5,a5,0x20
    80003254:	0207d793          	srli	a5,a5,0x20
    80003258:	00fd87b3          	add	a5,s11,a5
    8000325c:	0007c783          	lbu	a5,0(a5)
    80003260:	02e6d73b          	divuw	a4,a3,a4
    80003264:	f8f400a3          	sb	a5,-127(s0)
    80003268:	12a5f463          	bgeu	a1,a0,80003390 <__printf+0x278>
    8000326c:	00a00693          	li	a3,10
    80003270:	00900593          	li	a1,9
    80003274:	02d777bb          	remuw	a5,a4,a3
    80003278:	02079793          	slli	a5,a5,0x20
    8000327c:	0207d793          	srli	a5,a5,0x20
    80003280:	00fd87b3          	add	a5,s11,a5
    80003284:	0007c503          	lbu	a0,0(a5)
    80003288:	02d757bb          	divuw	a5,a4,a3
    8000328c:	f8a40123          	sb	a0,-126(s0)
    80003290:	48e5f263          	bgeu	a1,a4,80003714 <__printf+0x5fc>
    80003294:	06300513          	li	a0,99
    80003298:	02d7f5bb          	remuw	a1,a5,a3
    8000329c:	02059593          	slli	a1,a1,0x20
    800032a0:	0205d593          	srli	a1,a1,0x20
    800032a4:	00bd85b3          	add	a1,s11,a1
    800032a8:	0005c583          	lbu	a1,0(a1)
    800032ac:	02d7d7bb          	divuw	a5,a5,a3
    800032b0:	f8b401a3          	sb	a1,-125(s0)
    800032b4:	48e57263          	bgeu	a0,a4,80003738 <__printf+0x620>
    800032b8:	3e700513          	li	a0,999
    800032bc:	02d7f5bb          	remuw	a1,a5,a3
    800032c0:	02059593          	slli	a1,a1,0x20
    800032c4:	0205d593          	srli	a1,a1,0x20
    800032c8:	00bd85b3          	add	a1,s11,a1
    800032cc:	0005c583          	lbu	a1,0(a1)
    800032d0:	02d7d7bb          	divuw	a5,a5,a3
    800032d4:	f8b40223          	sb	a1,-124(s0)
    800032d8:	46e57663          	bgeu	a0,a4,80003744 <__printf+0x62c>
    800032dc:	02d7f5bb          	remuw	a1,a5,a3
    800032e0:	02059593          	slli	a1,a1,0x20
    800032e4:	0205d593          	srli	a1,a1,0x20
    800032e8:	00bd85b3          	add	a1,s11,a1
    800032ec:	0005c583          	lbu	a1,0(a1)
    800032f0:	02d7d7bb          	divuw	a5,a5,a3
    800032f4:	f8b402a3          	sb	a1,-123(s0)
    800032f8:	46ea7863          	bgeu	s4,a4,80003768 <__printf+0x650>
    800032fc:	02d7f5bb          	remuw	a1,a5,a3
    80003300:	02059593          	slli	a1,a1,0x20
    80003304:	0205d593          	srli	a1,a1,0x20
    80003308:	00bd85b3          	add	a1,s11,a1
    8000330c:	0005c583          	lbu	a1,0(a1)
    80003310:	02d7d7bb          	divuw	a5,a5,a3
    80003314:	f8b40323          	sb	a1,-122(s0)
    80003318:	3eeaf863          	bgeu	s5,a4,80003708 <__printf+0x5f0>
    8000331c:	02d7f5bb          	remuw	a1,a5,a3
    80003320:	02059593          	slli	a1,a1,0x20
    80003324:	0205d593          	srli	a1,a1,0x20
    80003328:	00bd85b3          	add	a1,s11,a1
    8000332c:	0005c583          	lbu	a1,0(a1)
    80003330:	02d7d7bb          	divuw	a5,a5,a3
    80003334:	f8b403a3          	sb	a1,-121(s0)
    80003338:	42eb7e63          	bgeu	s6,a4,80003774 <__printf+0x65c>
    8000333c:	02d7f5bb          	remuw	a1,a5,a3
    80003340:	02059593          	slli	a1,a1,0x20
    80003344:	0205d593          	srli	a1,a1,0x20
    80003348:	00bd85b3          	add	a1,s11,a1
    8000334c:	0005c583          	lbu	a1,0(a1)
    80003350:	02d7d7bb          	divuw	a5,a5,a3
    80003354:	f8b40423          	sb	a1,-120(s0)
    80003358:	42ebfc63          	bgeu	s7,a4,80003790 <__printf+0x678>
    8000335c:	02079793          	slli	a5,a5,0x20
    80003360:	0207d793          	srli	a5,a5,0x20
    80003364:	00fd8db3          	add	s11,s11,a5
    80003368:	000dc703          	lbu	a4,0(s11)
    8000336c:	00a00793          	li	a5,10
    80003370:	00900c93          	li	s9,9
    80003374:	f8e404a3          	sb	a4,-119(s0)
    80003378:	00065c63          	bgez	a2,80003390 <__printf+0x278>
    8000337c:	f9040713          	addi	a4,s0,-112
    80003380:	00f70733          	add	a4,a4,a5
    80003384:	02d00693          	li	a3,45
    80003388:	fed70823          	sb	a3,-16(a4)
    8000338c:	00078c93          	mv	s9,a5
    80003390:	f8040793          	addi	a5,s0,-128
    80003394:	01978cb3          	add	s9,a5,s9
    80003398:	f7f40d13          	addi	s10,s0,-129
    8000339c:	000cc503          	lbu	a0,0(s9)
    800033a0:	fffc8c93          	addi	s9,s9,-1
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	b90080e7          	jalr	-1136(ra) # 80002f34 <consputc>
    800033ac:	ffac98e3          	bne	s9,s10,8000339c <__printf+0x284>
    800033b0:	00094503          	lbu	a0,0(s2)
    800033b4:	e00514e3          	bnez	a0,800031bc <__printf+0xa4>
    800033b8:	1a0c1663          	bnez	s8,80003564 <__printf+0x44c>
    800033bc:	08813083          	ld	ra,136(sp)
    800033c0:	08013403          	ld	s0,128(sp)
    800033c4:	07813483          	ld	s1,120(sp)
    800033c8:	07013903          	ld	s2,112(sp)
    800033cc:	06813983          	ld	s3,104(sp)
    800033d0:	06013a03          	ld	s4,96(sp)
    800033d4:	05813a83          	ld	s5,88(sp)
    800033d8:	05013b03          	ld	s6,80(sp)
    800033dc:	04813b83          	ld	s7,72(sp)
    800033e0:	04013c03          	ld	s8,64(sp)
    800033e4:	03813c83          	ld	s9,56(sp)
    800033e8:	03013d03          	ld	s10,48(sp)
    800033ec:	02813d83          	ld	s11,40(sp)
    800033f0:	0d010113          	addi	sp,sp,208
    800033f4:	00008067          	ret
    800033f8:	07300713          	li	a4,115
    800033fc:	1ce78a63          	beq	a5,a4,800035d0 <__printf+0x4b8>
    80003400:	07800713          	li	a4,120
    80003404:	1ee79e63          	bne	a5,a4,80003600 <__printf+0x4e8>
    80003408:	f7843783          	ld	a5,-136(s0)
    8000340c:	0007a703          	lw	a4,0(a5)
    80003410:	00878793          	addi	a5,a5,8
    80003414:	f6f43c23          	sd	a5,-136(s0)
    80003418:	28074263          	bltz	a4,8000369c <__printf+0x584>
    8000341c:	00002d97          	auipc	s11,0x2
    80003420:	d6cd8d93          	addi	s11,s11,-660 # 80005188 <digits>
    80003424:	00f77793          	andi	a5,a4,15
    80003428:	00fd87b3          	add	a5,s11,a5
    8000342c:	0007c683          	lbu	a3,0(a5)
    80003430:	00f00613          	li	a2,15
    80003434:	0007079b          	sext.w	a5,a4
    80003438:	f8d40023          	sb	a3,-128(s0)
    8000343c:	0047559b          	srliw	a1,a4,0x4
    80003440:	0047569b          	srliw	a3,a4,0x4
    80003444:	00000c93          	li	s9,0
    80003448:	0ee65063          	bge	a2,a4,80003528 <__printf+0x410>
    8000344c:	00f6f693          	andi	a3,a3,15
    80003450:	00dd86b3          	add	a3,s11,a3
    80003454:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003458:	0087d79b          	srliw	a5,a5,0x8
    8000345c:	00100c93          	li	s9,1
    80003460:	f8d400a3          	sb	a3,-127(s0)
    80003464:	0cb67263          	bgeu	a2,a1,80003528 <__printf+0x410>
    80003468:	00f7f693          	andi	a3,a5,15
    8000346c:	00dd86b3          	add	a3,s11,a3
    80003470:	0006c583          	lbu	a1,0(a3)
    80003474:	00f00613          	li	a2,15
    80003478:	0047d69b          	srliw	a3,a5,0x4
    8000347c:	f8b40123          	sb	a1,-126(s0)
    80003480:	0047d593          	srli	a1,a5,0x4
    80003484:	28f67e63          	bgeu	a2,a5,80003720 <__printf+0x608>
    80003488:	00f6f693          	andi	a3,a3,15
    8000348c:	00dd86b3          	add	a3,s11,a3
    80003490:	0006c503          	lbu	a0,0(a3)
    80003494:	0087d813          	srli	a6,a5,0x8
    80003498:	0087d69b          	srliw	a3,a5,0x8
    8000349c:	f8a401a3          	sb	a0,-125(s0)
    800034a0:	28b67663          	bgeu	a2,a1,8000372c <__printf+0x614>
    800034a4:	00f6f693          	andi	a3,a3,15
    800034a8:	00dd86b3          	add	a3,s11,a3
    800034ac:	0006c583          	lbu	a1,0(a3)
    800034b0:	00c7d513          	srli	a0,a5,0xc
    800034b4:	00c7d69b          	srliw	a3,a5,0xc
    800034b8:	f8b40223          	sb	a1,-124(s0)
    800034bc:	29067a63          	bgeu	a2,a6,80003750 <__printf+0x638>
    800034c0:	00f6f693          	andi	a3,a3,15
    800034c4:	00dd86b3          	add	a3,s11,a3
    800034c8:	0006c583          	lbu	a1,0(a3)
    800034cc:	0107d813          	srli	a6,a5,0x10
    800034d0:	0107d69b          	srliw	a3,a5,0x10
    800034d4:	f8b402a3          	sb	a1,-123(s0)
    800034d8:	28a67263          	bgeu	a2,a0,8000375c <__printf+0x644>
    800034dc:	00f6f693          	andi	a3,a3,15
    800034e0:	00dd86b3          	add	a3,s11,a3
    800034e4:	0006c683          	lbu	a3,0(a3)
    800034e8:	0147d79b          	srliw	a5,a5,0x14
    800034ec:	f8d40323          	sb	a3,-122(s0)
    800034f0:	21067663          	bgeu	a2,a6,800036fc <__printf+0x5e4>
    800034f4:	02079793          	slli	a5,a5,0x20
    800034f8:	0207d793          	srli	a5,a5,0x20
    800034fc:	00fd8db3          	add	s11,s11,a5
    80003500:	000dc683          	lbu	a3,0(s11)
    80003504:	00800793          	li	a5,8
    80003508:	00700c93          	li	s9,7
    8000350c:	f8d403a3          	sb	a3,-121(s0)
    80003510:	00075c63          	bgez	a4,80003528 <__printf+0x410>
    80003514:	f9040713          	addi	a4,s0,-112
    80003518:	00f70733          	add	a4,a4,a5
    8000351c:	02d00693          	li	a3,45
    80003520:	fed70823          	sb	a3,-16(a4)
    80003524:	00078c93          	mv	s9,a5
    80003528:	f8040793          	addi	a5,s0,-128
    8000352c:	01978cb3          	add	s9,a5,s9
    80003530:	f7f40d13          	addi	s10,s0,-129
    80003534:	000cc503          	lbu	a0,0(s9)
    80003538:	fffc8c93          	addi	s9,s9,-1
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	9f8080e7          	jalr	-1544(ra) # 80002f34 <consputc>
    80003544:	ff9d18e3          	bne	s10,s9,80003534 <__printf+0x41c>
    80003548:	0100006f          	j	80003558 <__printf+0x440>
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	9e8080e7          	jalr	-1560(ra) # 80002f34 <consputc>
    80003554:	000c8493          	mv	s1,s9
    80003558:	00094503          	lbu	a0,0(s2)
    8000355c:	c60510e3          	bnez	a0,800031bc <__printf+0xa4>
    80003560:	e40c0ee3          	beqz	s8,800033bc <__printf+0x2a4>
    80003564:	00004517          	auipc	a0,0x4
    80003568:	95c50513          	addi	a0,a0,-1700 # 80006ec0 <pr>
    8000356c:	00001097          	auipc	ra,0x1
    80003570:	94c080e7          	jalr	-1716(ra) # 80003eb8 <release>
    80003574:	e49ff06f          	j	800033bc <__printf+0x2a4>
    80003578:	f7843783          	ld	a5,-136(s0)
    8000357c:	03000513          	li	a0,48
    80003580:	01000d13          	li	s10,16
    80003584:	00878713          	addi	a4,a5,8
    80003588:	0007bc83          	ld	s9,0(a5)
    8000358c:	f6e43c23          	sd	a4,-136(s0)
    80003590:	00000097          	auipc	ra,0x0
    80003594:	9a4080e7          	jalr	-1628(ra) # 80002f34 <consputc>
    80003598:	07800513          	li	a0,120
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	998080e7          	jalr	-1640(ra) # 80002f34 <consputc>
    800035a4:	00002d97          	auipc	s11,0x2
    800035a8:	be4d8d93          	addi	s11,s11,-1052 # 80005188 <digits>
    800035ac:	03ccd793          	srli	a5,s9,0x3c
    800035b0:	00fd87b3          	add	a5,s11,a5
    800035b4:	0007c503          	lbu	a0,0(a5)
    800035b8:	fffd0d1b          	addiw	s10,s10,-1
    800035bc:	004c9c93          	slli	s9,s9,0x4
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	974080e7          	jalr	-1676(ra) # 80002f34 <consputc>
    800035c8:	fe0d12e3          	bnez	s10,800035ac <__printf+0x494>
    800035cc:	f8dff06f          	j	80003558 <__printf+0x440>
    800035d0:	f7843783          	ld	a5,-136(s0)
    800035d4:	0007bc83          	ld	s9,0(a5)
    800035d8:	00878793          	addi	a5,a5,8
    800035dc:	f6f43c23          	sd	a5,-136(s0)
    800035e0:	000c9a63          	bnez	s9,800035f4 <__printf+0x4dc>
    800035e4:	1080006f          	j	800036ec <__printf+0x5d4>
    800035e8:	001c8c93          	addi	s9,s9,1
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	948080e7          	jalr	-1720(ra) # 80002f34 <consputc>
    800035f4:	000cc503          	lbu	a0,0(s9)
    800035f8:	fe0518e3          	bnez	a0,800035e8 <__printf+0x4d0>
    800035fc:	f5dff06f          	j	80003558 <__printf+0x440>
    80003600:	02500513          	li	a0,37
    80003604:	00000097          	auipc	ra,0x0
    80003608:	930080e7          	jalr	-1744(ra) # 80002f34 <consputc>
    8000360c:	000c8513          	mv	a0,s9
    80003610:	00000097          	auipc	ra,0x0
    80003614:	924080e7          	jalr	-1756(ra) # 80002f34 <consputc>
    80003618:	f41ff06f          	j	80003558 <__printf+0x440>
    8000361c:	02500513          	li	a0,37
    80003620:	00000097          	auipc	ra,0x0
    80003624:	914080e7          	jalr	-1772(ra) # 80002f34 <consputc>
    80003628:	f31ff06f          	j	80003558 <__printf+0x440>
    8000362c:	00030513          	mv	a0,t1
    80003630:	00000097          	auipc	ra,0x0
    80003634:	7bc080e7          	jalr	1980(ra) # 80003dec <acquire>
    80003638:	b4dff06f          	j	80003184 <__printf+0x6c>
    8000363c:	40c0053b          	negw	a0,a2
    80003640:	00a00713          	li	a4,10
    80003644:	02e576bb          	remuw	a3,a0,a4
    80003648:	00002d97          	auipc	s11,0x2
    8000364c:	b40d8d93          	addi	s11,s11,-1216 # 80005188 <digits>
    80003650:	ff700593          	li	a1,-9
    80003654:	02069693          	slli	a3,a3,0x20
    80003658:	0206d693          	srli	a3,a3,0x20
    8000365c:	00dd86b3          	add	a3,s11,a3
    80003660:	0006c683          	lbu	a3,0(a3)
    80003664:	02e557bb          	divuw	a5,a0,a4
    80003668:	f8d40023          	sb	a3,-128(s0)
    8000366c:	10b65e63          	bge	a2,a1,80003788 <__printf+0x670>
    80003670:	06300593          	li	a1,99
    80003674:	02e7f6bb          	remuw	a3,a5,a4
    80003678:	02069693          	slli	a3,a3,0x20
    8000367c:	0206d693          	srli	a3,a3,0x20
    80003680:	00dd86b3          	add	a3,s11,a3
    80003684:	0006c683          	lbu	a3,0(a3)
    80003688:	02e7d73b          	divuw	a4,a5,a4
    8000368c:	00200793          	li	a5,2
    80003690:	f8d400a3          	sb	a3,-127(s0)
    80003694:	bca5ece3          	bltu	a1,a0,8000326c <__printf+0x154>
    80003698:	ce5ff06f          	j	8000337c <__printf+0x264>
    8000369c:	40e007bb          	negw	a5,a4
    800036a0:	00002d97          	auipc	s11,0x2
    800036a4:	ae8d8d93          	addi	s11,s11,-1304 # 80005188 <digits>
    800036a8:	00f7f693          	andi	a3,a5,15
    800036ac:	00dd86b3          	add	a3,s11,a3
    800036b0:	0006c583          	lbu	a1,0(a3)
    800036b4:	ff100613          	li	a2,-15
    800036b8:	0047d69b          	srliw	a3,a5,0x4
    800036bc:	f8b40023          	sb	a1,-128(s0)
    800036c0:	0047d59b          	srliw	a1,a5,0x4
    800036c4:	0ac75e63          	bge	a4,a2,80003780 <__printf+0x668>
    800036c8:	00f6f693          	andi	a3,a3,15
    800036cc:	00dd86b3          	add	a3,s11,a3
    800036d0:	0006c603          	lbu	a2,0(a3)
    800036d4:	00f00693          	li	a3,15
    800036d8:	0087d79b          	srliw	a5,a5,0x8
    800036dc:	f8c400a3          	sb	a2,-127(s0)
    800036e0:	d8b6e4e3          	bltu	a3,a1,80003468 <__printf+0x350>
    800036e4:	00200793          	li	a5,2
    800036e8:	e2dff06f          	j	80003514 <__printf+0x3fc>
    800036ec:	00002c97          	auipc	s9,0x2
    800036f0:	a7cc8c93          	addi	s9,s9,-1412 # 80005168 <_ZZ12printIntegermE6digits+0x148>
    800036f4:	02800513          	li	a0,40
    800036f8:	ef1ff06f          	j	800035e8 <__printf+0x4d0>
    800036fc:	00700793          	li	a5,7
    80003700:	00600c93          	li	s9,6
    80003704:	e0dff06f          	j	80003510 <__printf+0x3f8>
    80003708:	00700793          	li	a5,7
    8000370c:	00600c93          	li	s9,6
    80003710:	c69ff06f          	j	80003378 <__printf+0x260>
    80003714:	00300793          	li	a5,3
    80003718:	00200c93          	li	s9,2
    8000371c:	c5dff06f          	j	80003378 <__printf+0x260>
    80003720:	00300793          	li	a5,3
    80003724:	00200c93          	li	s9,2
    80003728:	de9ff06f          	j	80003510 <__printf+0x3f8>
    8000372c:	00400793          	li	a5,4
    80003730:	00300c93          	li	s9,3
    80003734:	dddff06f          	j	80003510 <__printf+0x3f8>
    80003738:	00400793          	li	a5,4
    8000373c:	00300c93          	li	s9,3
    80003740:	c39ff06f          	j	80003378 <__printf+0x260>
    80003744:	00500793          	li	a5,5
    80003748:	00400c93          	li	s9,4
    8000374c:	c2dff06f          	j	80003378 <__printf+0x260>
    80003750:	00500793          	li	a5,5
    80003754:	00400c93          	li	s9,4
    80003758:	db9ff06f          	j	80003510 <__printf+0x3f8>
    8000375c:	00600793          	li	a5,6
    80003760:	00500c93          	li	s9,5
    80003764:	dadff06f          	j	80003510 <__printf+0x3f8>
    80003768:	00600793          	li	a5,6
    8000376c:	00500c93          	li	s9,5
    80003770:	c09ff06f          	j	80003378 <__printf+0x260>
    80003774:	00800793          	li	a5,8
    80003778:	00700c93          	li	s9,7
    8000377c:	bfdff06f          	j	80003378 <__printf+0x260>
    80003780:	00100793          	li	a5,1
    80003784:	d91ff06f          	j	80003514 <__printf+0x3fc>
    80003788:	00100793          	li	a5,1
    8000378c:	bf1ff06f          	j	8000337c <__printf+0x264>
    80003790:	00900793          	li	a5,9
    80003794:	00800c93          	li	s9,8
    80003798:	be1ff06f          	j	80003378 <__printf+0x260>
    8000379c:	00002517          	auipc	a0,0x2
    800037a0:	9d450513          	addi	a0,a0,-1580 # 80005170 <_ZZ12printIntegermE6digits+0x150>
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	918080e7          	jalr	-1768(ra) # 800030bc <panic>

00000000800037ac <printfinit>:
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	02010413          	addi	s0,sp,32
    800037c0:	00003497          	auipc	s1,0x3
    800037c4:	70048493          	addi	s1,s1,1792 # 80006ec0 <pr>
    800037c8:	00048513          	mv	a0,s1
    800037cc:	00002597          	auipc	a1,0x2
    800037d0:	9b458593          	addi	a1,a1,-1612 # 80005180 <_ZZ12printIntegermE6digits+0x160>
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	5f4080e7          	jalr	1524(ra) # 80003dc8 <initlock>
    800037dc:	01813083          	ld	ra,24(sp)
    800037e0:	01013403          	ld	s0,16(sp)
    800037e4:	0004ac23          	sw	zero,24(s1)
    800037e8:	00813483          	ld	s1,8(sp)
    800037ec:	02010113          	addi	sp,sp,32
    800037f0:	00008067          	ret

00000000800037f4 <uartinit>:
    800037f4:	ff010113          	addi	sp,sp,-16
    800037f8:	00813423          	sd	s0,8(sp)
    800037fc:	01010413          	addi	s0,sp,16
    80003800:	100007b7          	lui	a5,0x10000
    80003804:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003808:	f8000713          	li	a4,-128
    8000380c:	00e781a3          	sb	a4,3(a5)
    80003810:	00300713          	li	a4,3
    80003814:	00e78023          	sb	a4,0(a5)
    80003818:	000780a3          	sb	zero,1(a5)
    8000381c:	00e781a3          	sb	a4,3(a5)
    80003820:	00700693          	li	a3,7
    80003824:	00d78123          	sb	a3,2(a5)
    80003828:	00e780a3          	sb	a4,1(a5)
    8000382c:	00813403          	ld	s0,8(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret

0000000080003838 <uartputc>:
    80003838:	00002797          	auipc	a5,0x2
    8000383c:	4007a783          	lw	a5,1024(a5) # 80005c38 <panicked>
    80003840:	00078463          	beqz	a5,80003848 <uartputc+0x10>
    80003844:	0000006f          	j	80003844 <uartputc+0xc>
    80003848:	fd010113          	addi	sp,sp,-48
    8000384c:	02813023          	sd	s0,32(sp)
    80003850:	00913c23          	sd	s1,24(sp)
    80003854:	01213823          	sd	s2,16(sp)
    80003858:	01313423          	sd	s3,8(sp)
    8000385c:	02113423          	sd	ra,40(sp)
    80003860:	03010413          	addi	s0,sp,48
    80003864:	00002917          	auipc	s2,0x2
    80003868:	3dc90913          	addi	s2,s2,988 # 80005c40 <uart_tx_r>
    8000386c:	00093783          	ld	a5,0(s2)
    80003870:	00002497          	auipc	s1,0x2
    80003874:	3d848493          	addi	s1,s1,984 # 80005c48 <uart_tx_w>
    80003878:	0004b703          	ld	a4,0(s1)
    8000387c:	02078693          	addi	a3,a5,32
    80003880:	00050993          	mv	s3,a0
    80003884:	02e69c63          	bne	a3,a4,800038bc <uartputc+0x84>
    80003888:	00001097          	auipc	ra,0x1
    8000388c:	834080e7          	jalr	-1996(ra) # 800040bc <push_on>
    80003890:	00093783          	ld	a5,0(s2)
    80003894:	0004b703          	ld	a4,0(s1)
    80003898:	02078793          	addi	a5,a5,32
    8000389c:	00e79463          	bne	a5,a4,800038a4 <uartputc+0x6c>
    800038a0:	0000006f          	j	800038a0 <uartputc+0x68>
    800038a4:	00001097          	auipc	ra,0x1
    800038a8:	88c080e7          	jalr	-1908(ra) # 80004130 <pop_on>
    800038ac:	00093783          	ld	a5,0(s2)
    800038b0:	0004b703          	ld	a4,0(s1)
    800038b4:	02078693          	addi	a3,a5,32
    800038b8:	fce688e3          	beq	a3,a4,80003888 <uartputc+0x50>
    800038bc:	01f77693          	andi	a3,a4,31
    800038c0:	00003597          	auipc	a1,0x3
    800038c4:	62058593          	addi	a1,a1,1568 # 80006ee0 <uart_tx_buf>
    800038c8:	00d586b3          	add	a3,a1,a3
    800038cc:	00170713          	addi	a4,a4,1
    800038d0:	01368023          	sb	s3,0(a3)
    800038d4:	00e4b023          	sd	a4,0(s1)
    800038d8:	10000637          	lui	a2,0x10000
    800038dc:	02f71063          	bne	a4,a5,800038fc <uartputc+0xc4>
    800038e0:	0340006f          	j	80003914 <uartputc+0xdc>
    800038e4:	00074703          	lbu	a4,0(a4)
    800038e8:	00f93023          	sd	a5,0(s2)
    800038ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800038f0:	00093783          	ld	a5,0(s2)
    800038f4:	0004b703          	ld	a4,0(s1)
    800038f8:	00f70e63          	beq	a4,a5,80003914 <uartputc+0xdc>
    800038fc:	00564683          	lbu	a3,5(a2)
    80003900:	01f7f713          	andi	a4,a5,31
    80003904:	00e58733          	add	a4,a1,a4
    80003908:	0206f693          	andi	a3,a3,32
    8000390c:	00178793          	addi	a5,a5,1
    80003910:	fc069ae3          	bnez	a3,800038e4 <uartputc+0xac>
    80003914:	02813083          	ld	ra,40(sp)
    80003918:	02013403          	ld	s0,32(sp)
    8000391c:	01813483          	ld	s1,24(sp)
    80003920:	01013903          	ld	s2,16(sp)
    80003924:	00813983          	ld	s3,8(sp)
    80003928:	03010113          	addi	sp,sp,48
    8000392c:	00008067          	ret

0000000080003930 <uartputc_sync>:
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00813423          	sd	s0,8(sp)
    80003938:	01010413          	addi	s0,sp,16
    8000393c:	00002717          	auipc	a4,0x2
    80003940:	2fc72703          	lw	a4,764(a4) # 80005c38 <panicked>
    80003944:	02071663          	bnez	a4,80003970 <uartputc_sync+0x40>
    80003948:	00050793          	mv	a5,a0
    8000394c:	100006b7          	lui	a3,0x10000
    80003950:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003954:	02077713          	andi	a4,a4,32
    80003958:	fe070ce3          	beqz	a4,80003950 <uartputc_sync+0x20>
    8000395c:	0ff7f793          	andi	a5,a5,255
    80003960:	00f68023          	sb	a5,0(a3)
    80003964:	00813403          	ld	s0,8(sp)
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00008067          	ret
    80003970:	0000006f          	j	80003970 <uartputc_sync+0x40>

0000000080003974 <uartstart>:
    80003974:	ff010113          	addi	sp,sp,-16
    80003978:	00813423          	sd	s0,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	00002617          	auipc	a2,0x2
    80003984:	2c060613          	addi	a2,a2,704 # 80005c40 <uart_tx_r>
    80003988:	00002517          	auipc	a0,0x2
    8000398c:	2c050513          	addi	a0,a0,704 # 80005c48 <uart_tx_w>
    80003990:	00063783          	ld	a5,0(a2)
    80003994:	00053703          	ld	a4,0(a0)
    80003998:	04f70263          	beq	a4,a5,800039dc <uartstart+0x68>
    8000399c:	100005b7          	lui	a1,0x10000
    800039a0:	00003817          	auipc	a6,0x3
    800039a4:	54080813          	addi	a6,a6,1344 # 80006ee0 <uart_tx_buf>
    800039a8:	01c0006f          	j	800039c4 <uartstart+0x50>
    800039ac:	0006c703          	lbu	a4,0(a3)
    800039b0:	00f63023          	sd	a5,0(a2)
    800039b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800039b8:	00063783          	ld	a5,0(a2)
    800039bc:	00053703          	ld	a4,0(a0)
    800039c0:	00f70e63          	beq	a4,a5,800039dc <uartstart+0x68>
    800039c4:	01f7f713          	andi	a4,a5,31
    800039c8:	00e806b3          	add	a3,a6,a4
    800039cc:	0055c703          	lbu	a4,5(a1)
    800039d0:	00178793          	addi	a5,a5,1
    800039d4:	02077713          	andi	a4,a4,32
    800039d8:	fc071ae3          	bnez	a4,800039ac <uartstart+0x38>
    800039dc:	00813403          	ld	s0,8(sp)
    800039e0:	01010113          	addi	sp,sp,16
    800039e4:	00008067          	ret

00000000800039e8 <uartgetc>:
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00813423          	sd	s0,8(sp)
    800039f0:	01010413          	addi	s0,sp,16
    800039f4:	10000737          	lui	a4,0x10000
    800039f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800039fc:	0017f793          	andi	a5,a5,1
    80003a00:	00078c63          	beqz	a5,80003a18 <uartgetc+0x30>
    80003a04:	00074503          	lbu	a0,0(a4)
    80003a08:	0ff57513          	andi	a0,a0,255
    80003a0c:	00813403          	ld	s0,8(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret
    80003a18:	fff00513          	li	a0,-1
    80003a1c:	ff1ff06f          	j	80003a0c <uartgetc+0x24>

0000000080003a20 <uartintr>:
    80003a20:	100007b7          	lui	a5,0x10000
    80003a24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003a28:	0017f793          	andi	a5,a5,1
    80003a2c:	0a078463          	beqz	a5,80003ad4 <uartintr+0xb4>
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	02010413          	addi	s0,sp,32
    80003a44:	100004b7          	lui	s1,0x10000
    80003a48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003a4c:	0ff57513          	andi	a0,a0,255
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	534080e7          	jalr	1332(ra) # 80002f84 <consoleintr>
    80003a58:	0054c783          	lbu	a5,5(s1)
    80003a5c:	0017f793          	andi	a5,a5,1
    80003a60:	fe0794e3          	bnez	a5,80003a48 <uartintr+0x28>
    80003a64:	00002617          	auipc	a2,0x2
    80003a68:	1dc60613          	addi	a2,a2,476 # 80005c40 <uart_tx_r>
    80003a6c:	00002517          	auipc	a0,0x2
    80003a70:	1dc50513          	addi	a0,a0,476 # 80005c48 <uart_tx_w>
    80003a74:	00063783          	ld	a5,0(a2)
    80003a78:	00053703          	ld	a4,0(a0)
    80003a7c:	04f70263          	beq	a4,a5,80003ac0 <uartintr+0xa0>
    80003a80:	100005b7          	lui	a1,0x10000
    80003a84:	00003817          	auipc	a6,0x3
    80003a88:	45c80813          	addi	a6,a6,1116 # 80006ee0 <uart_tx_buf>
    80003a8c:	01c0006f          	j	80003aa8 <uartintr+0x88>
    80003a90:	0006c703          	lbu	a4,0(a3)
    80003a94:	00f63023          	sd	a5,0(a2)
    80003a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a9c:	00063783          	ld	a5,0(a2)
    80003aa0:	00053703          	ld	a4,0(a0)
    80003aa4:	00f70e63          	beq	a4,a5,80003ac0 <uartintr+0xa0>
    80003aa8:	01f7f713          	andi	a4,a5,31
    80003aac:	00e806b3          	add	a3,a6,a4
    80003ab0:	0055c703          	lbu	a4,5(a1)
    80003ab4:	00178793          	addi	a5,a5,1
    80003ab8:	02077713          	andi	a4,a4,32
    80003abc:	fc071ae3          	bnez	a4,80003a90 <uartintr+0x70>
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	02010113          	addi	sp,sp,32
    80003ad0:	00008067          	ret
    80003ad4:	00002617          	auipc	a2,0x2
    80003ad8:	16c60613          	addi	a2,a2,364 # 80005c40 <uart_tx_r>
    80003adc:	00002517          	auipc	a0,0x2
    80003ae0:	16c50513          	addi	a0,a0,364 # 80005c48 <uart_tx_w>
    80003ae4:	00063783          	ld	a5,0(a2)
    80003ae8:	00053703          	ld	a4,0(a0)
    80003aec:	04f70263          	beq	a4,a5,80003b30 <uartintr+0x110>
    80003af0:	100005b7          	lui	a1,0x10000
    80003af4:	00003817          	auipc	a6,0x3
    80003af8:	3ec80813          	addi	a6,a6,1004 # 80006ee0 <uart_tx_buf>
    80003afc:	01c0006f          	j	80003b18 <uartintr+0xf8>
    80003b00:	0006c703          	lbu	a4,0(a3)
    80003b04:	00f63023          	sd	a5,0(a2)
    80003b08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b0c:	00063783          	ld	a5,0(a2)
    80003b10:	00053703          	ld	a4,0(a0)
    80003b14:	02f70063          	beq	a4,a5,80003b34 <uartintr+0x114>
    80003b18:	01f7f713          	andi	a4,a5,31
    80003b1c:	00e806b3          	add	a3,a6,a4
    80003b20:	0055c703          	lbu	a4,5(a1)
    80003b24:	00178793          	addi	a5,a5,1
    80003b28:	02077713          	andi	a4,a4,32
    80003b2c:	fc071ae3          	bnez	a4,80003b00 <uartintr+0xe0>
    80003b30:	00008067          	ret
    80003b34:	00008067          	ret

0000000080003b38 <kinit>:
    80003b38:	fc010113          	addi	sp,sp,-64
    80003b3c:	02913423          	sd	s1,40(sp)
    80003b40:	fffff7b7          	lui	a5,0xfffff
    80003b44:	00004497          	auipc	s1,0x4
    80003b48:	3bb48493          	addi	s1,s1,955 # 80007eff <end+0xfff>
    80003b4c:	02813823          	sd	s0,48(sp)
    80003b50:	01313c23          	sd	s3,24(sp)
    80003b54:	00f4f4b3          	and	s1,s1,a5
    80003b58:	02113c23          	sd	ra,56(sp)
    80003b5c:	03213023          	sd	s2,32(sp)
    80003b60:	01413823          	sd	s4,16(sp)
    80003b64:	01513423          	sd	s5,8(sp)
    80003b68:	04010413          	addi	s0,sp,64
    80003b6c:	000017b7          	lui	a5,0x1
    80003b70:	01100993          	li	s3,17
    80003b74:	00f487b3          	add	a5,s1,a5
    80003b78:	01b99993          	slli	s3,s3,0x1b
    80003b7c:	06f9e063          	bltu	s3,a5,80003bdc <kinit+0xa4>
    80003b80:	00003a97          	auipc	s5,0x3
    80003b84:	380a8a93          	addi	s5,s5,896 # 80006f00 <end>
    80003b88:	0754ec63          	bltu	s1,s5,80003c00 <kinit+0xc8>
    80003b8c:	0734fa63          	bgeu	s1,s3,80003c00 <kinit+0xc8>
    80003b90:	00088a37          	lui	s4,0x88
    80003b94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003b98:	00002917          	auipc	s2,0x2
    80003b9c:	0b890913          	addi	s2,s2,184 # 80005c50 <kmem>
    80003ba0:	00ca1a13          	slli	s4,s4,0xc
    80003ba4:	0140006f          	j	80003bb8 <kinit+0x80>
    80003ba8:	000017b7          	lui	a5,0x1
    80003bac:	00f484b3          	add	s1,s1,a5
    80003bb0:	0554e863          	bltu	s1,s5,80003c00 <kinit+0xc8>
    80003bb4:	0534f663          	bgeu	s1,s3,80003c00 <kinit+0xc8>
    80003bb8:	00001637          	lui	a2,0x1
    80003bbc:	00100593          	li	a1,1
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	5e4080e7          	jalr	1508(ra) # 800041a8 <__memset>
    80003bcc:	00093783          	ld	a5,0(s2)
    80003bd0:	00f4b023          	sd	a5,0(s1)
    80003bd4:	00993023          	sd	s1,0(s2)
    80003bd8:	fd4498e3          	bne	s1,s4,80003ba8 <kinit+0x70>
    80003bdc:	03813083          	ld	ra,56(sp)
    80003be0:	03013403          	ld	s0,48(sp)
    80003be4:	02813483          	ld	s1,40(sp)
    80003be8:	02013903          	ld	s2,32(sp)
    80003bec:	01813983          	ld	s3,24(sp)
    80003bf0:	01013a03          	ld	s4,16(sp)
    80003bf4:	00813a83          	ld	s5,8(sp)
    80003bf8:	04010113          	addi	sp,sp,64
    80003bfc:	00008067          	ret
    80003c00:	00001517          	auipc	a0,0x1
    80003c04:	5a050513          	addi	a0,a0,1440 # 800051a0 <digits+0x18>
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	4b4080e7          	jalr	1204(ra) # 800030bc <panic>

0000000080003c10 <freerange>:
    80003c10:	fc010113          	addi	sp,sp,-64
    80003c14:	000017b7          	lui	a5,0x1
    80003c18:	02913423          	sd	s1,40(sp)
    80003c1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003c20:	009504b3          	add	s1,a0,s1
    80003c24:	fffff537          	lui	a0,0xfffff
    80003c28:	02813823          	sd	s0,48(sp)
    80003c2c:	02113c23          	sd	ra,56(sp)
    80003c30:	03213023          	sd	s2,32(sp)
    80003c34:	01313c23          	sd	s3,24(sp)
    80003c38:	01413823          	sd	s4,16(sp)
    80003c3c:	01513423          	sd	s5,8(sp)
    80003c40:	01613023          	sd	s6,0(sp)
    80003c44:	04010413          	addi	s0,sp,64
    80003c48:	00a4f4b3          	and	s1,s1,a0
    80003c4c:	00f487b3          	add	a5,s1,a5
    80003c50:	06f5e463          	bltu	a1,a5,80003cb8 <freerange+0xa8>
    80003c54:	00003a97          	auipc	s5,0x3
    80003c58:	2aca8a93          	addi	s5,s5,684 # 80006f00 <end>
    80003c5c:	0954e263          	bltu	s1,s5,80003ce0 <freerange+0xd0>
    80003c60:	01100993          	li	s3,17
    80003c64:	01b99993          	slli	s3,s3,0x1b
    80003c68:	0734fc63          	bgeu	s1,s3,80003ce0 <freerange+0xd0>
    80003c6c:	00058a13          	mv	s4,a1
    80003c70:	00002917          	auipc	s2,0x2
    80003c74:	fe090913          	addi	s2,s2,-32 # 80005c50 <kmem>
    80003c78:	00002b37          	lui	s6,0x2
    80003c7c:	0140006f          	j	80003c90 <freerange+0x80>
    80003c80:	000017b7          	lui	a5,0x1
    80003c84:	00f484b3          	add	s1,s1,a5
    80003c88:	0554ec63          	bltu	s1,s5,80003ce0 <freerange+0xd0>
    80003c8c:	0534fa63          	bgeu	s1,s3,80003ce0 <freerange+0xd0>
    80003c90:	00001637          	lui	a2,0x1
    80003c94:	00100593          	li	a1,1
    80003c98:	00048513          	mv	a0,s1
    80003c9c:	00000097          	auipc	ra,0x0
    80003ca0:	50c080e7          	jalr	1292(ra) # 800041a8 <__memset>
    80003ca4:	00093703          	ld	a4,0(s2)
    80003ca8:	016487b3          	add	a5,s1,s6
    80003cac:	00e4b023          	sd	a4,0(s1)
    80003cb0:	00993023          	sd	s1,0(s2)
    80003cb4:	fcfa76e3          	bgeu	s4,a5,80003c80 <freerange+0x70>
    80003cb8:	03813083          	ld	ra,56(sp)
    80003cbc:	03013403          	ld	s0,48(sp)
    80003cc0:	02813483          	ld	s1,40(sp)
    80003cc4:	02013903          	ld	s2,32(sp)
    80003cc8:	01813983          	ld	s3,24(sp)
    80003ccc:	01013a03          	ld	s4,16(sp)
    80003cd0:	00813a83          	ld	s5,8(sp)
    80003cd4:	00013b03          	ld	s6,0(sp)
    80003cd8:	04010113          	addi	sp,sp,64
    80003cdc:	00008067          	ret
    80003ce0:	00001517          	auipc	a0,0x1
    80003ce4:	4c050513          	addi	a0,a0,1216 # 800051a0 <digits+0x18>
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	3d4080e7          	jalr	980(ra) # 800030bc <panic>

0000000080003cf0 <kfree>:
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00913423          	sd	s1,8(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	03451793          	slli	a5,a0,0x34
    80003d08:	04079c63          	bnez	a5,80003d60 <kfree+0x70>
    80003d0c:	00003797          	auipc	a5,0x3
    80003d10:	1f478793          	addi	a5,a5,500 # 80006f00 <end>
    80003d14:	00050493          	mv	s1,a0
    80003d18:	04f56463          	bltu	a0,a5,80003d60 <kfree+0x70>
    80003d1c:	01100793          	li	a5,17
    80003d20:	01b79793          	slli	a5,a5,0x1b
    80003d24:	02f57e63          	bgeu	a0,a5,80003d60 <kfree+0x70>
    80003d28:	00001637          	lui	a2,0x1
    80003d2c:	00100593          	li	a1,1
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	478080e7          	jalr	1144(ra) # 800041a8 <__memset>
    80003d38:	00002797          	auipc	a5,0x2
    80003d3c:	f1878793          	addi	a5,a5,-232 # 80005c50 <kmem>
    80003d40:	0007b703          	ld	a4,0(a5)
    80003d44:	01813083          	ld	ra,24(sp)
    80003d48:	01013403          	ld	s0,16(sp)
    80003d4c:	00e4b023          	sd	a4,0(s1)
    80003d50:	0097b023          	sd	s1,0(a5)
    80003d54:	00813483          	ld	s1,8(sp)
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00008067          	ret
    80003d60:	00001517          	auipc	a0,0x1
    80003d64:	44050513          	addi	a0,a0,1088 # 800051a0 <digits+0x18>
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	354080e7          	jalr	852(ra) # 800030bc <panic>

0000000080003d70 <kalloc>:
    80003d70:	fe010113          	addi	sp,sp,-32
    80003d74:	00813823          	sd	s0,16(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	00113c23          	sd	ra,24(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	00002797          	auipc	a5,0x2
    80003d88:	ecc78793          	addi	a5,a5,-308 # 80005c50 <kmem>
    80003d8c:	0007b483          	ld	s1,0(a5)
    80003d90:	02048063          	beqz	s1,80003db0 <kalloc+0x40>
    80003d94:	0004b703          	ld	a4,0(s1)
    80003d98:	00001637          	lui	a2,0x1
    80003d9c:	00500593          	li	a1,5
    80003da0:	00048513          	mv	a0,s1
    80003da4:	00e7b023          	sd	a4,0(a5)
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	400080e7          	jalr	1024(ra) # 800041a8 <__memset>
    80003db0:	01813083          	ld	ra,24(sp)
    80003db4:	01013403          	ld	s0,16(sp)
    80003db8:	00048513          	mv	a0,s1
    80003dbc:	00813483          	ld	s1,8(sp)
    80003dc0:	02010113          	addi	sp,sp,32
    80003dc4:	00008067          	ret

0000000080003dc8 <initlock>:
    80003dc8:	ff010113          	addi	sp,sp,-16
    80003dcc:	00813423          	sd	s0,8(sp)
    80003dd0:	01010413          	addi	s0,sp,16
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	00b53423          	sd	a1,8(a0)
    80003ddc:	00052023          	sw	zero,0(a0)
    80003de0:	00053823          	sd	zero,16(a0)
    80003de4:	01010113          	addi	sp,sp,16
    80003de8:	00008067          	ret

0000000080003dec <acquire>:
    80003dec:	fe010113          	addi	sp,sp,-32
    80003df0:	00813823          	sd	s0,16(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	00113c23          	sd	ra,24(sp)
    80003dfc:	01213023          	sd	s2,0(sp)
    80003e00:	02010413          	addi	s0,sp,32
    80003e04:	00050493          	mv	s1,a0
    80003e08:	10002973          	csrr	s2,sstatus
    80003e0c:	100027f3          	csrr	a5,sstatus
    80003e10:	ffd7f793          	andi	a5,a5,-3
    80003e14:	10079073          	csrw	sstatus,a5
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	8e8080e7          	jalr	-1816(ra) # 80002700 <mycpu>
    80003e20:	07852783          	lw	a5,120(a0)
    80003e24:	06078e63          	beqz	a5,80003ea0 <acquire+0xb4>
    80003e28:	fffff097          	auipc	ra,0xfffff
    80003e2c:	8d8080e7          	jalr	-1832(ra) # 80002700 <mycpu>
    80003e30:	07852783          	lw	a5,120(a0)
    80003e34:	0004a703          	lw	a4,0(s1)
    80003e38:	0017879b          	addiw	a5,a5,1
    80003e3c:	06f52c23          	sw	a5,120(a0)
    80003e40:	04071063          	bnez	a4,80003e80 <acquire+0x94>
    80003e44:	00100713          	li	a4,1
    80003e48:	00070793          	mv	a5,a4
    80003e4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003e50:	0007879b          	sext.w	a5,a5
    80003e54:	fe079ae3          	bnez	a5,80003e48 <acquire+0x5c>
    80003e58:	0ff0000f          	fence
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	8a4080e7          	jalr	-1884(ra) # 80002700 <mycpu>
    80003e64:	01813083          	ld	ra,24(sp)
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	00a4b823          	sd	a0,16(s1)
    80003e70:	00013903          	ld	s2,0(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	02010113          	addi	sp,sp,32
    80003e7c:	00008067          	ret
    80003e80:	0104b903          	ld	s2,16(s1)
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	87c080e7          	jalr	-1924(ra) # 80002700 <mycpu>
    80003e8c:	faa91ce3          	bne	s2,a0,80003e44 <acquire+0x58>
    80003e90:	00001517          	auipc	a0,0x1
    80003e94:	31850513          	addi	a0,a0,792 # 800051a8 <digits+0x20>
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	224080e7          	jalr	548(ra) # 800030bc <panic>
    80003ea0:	00195913          	srli	s2,s2,0x1
    80003ea4:	fffff097          	auipc	ra,0xfffff
    80003ea8:	85c080e7          	jalr	-1956(ra) # 80002700 <mycpu>
    80003eac:	00197913          	andi	s2,s2,1
    80003eb0:	07252e23          	sw	s2,124(a0)
    80003eb4:	f75ff06f          	j	80003e28 <acquire+0x3c>

0000000080003eb8 <release>:
    80003eb8:	fe010113          	addi	sp,sp,-32
    80003ebc:	00813823          	sd	s0,16(sp)
    80003ec0:	00113c23          	sd	ra,24(sp)
    80003ec4:	00913423          	sd	s1,8(sp)
    80003ec8:	01213023          	sd	s2,0(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	00052783          	lw	a5,0(a0)
    80003ed4:	00079a63          	bnez	a5,80003ee8 <release+0x30>
    80003ed8:	00001517          	auipc	a0,0x1
    80003edc:	2d850513          	addi	a0,a0,728 # 800051b0 <digits+0x28>
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	1dc080e7          	jalr	476(ra) # 800030bc <panic>
    80003ee8:	01053903          	ld	s2,16(a0)
    80003eec:	00050493          	mv	s1,a0
    80003ef0:	fffff097          	auipc	ra,0xfffff
    80003ef4:	810080e7          	jalr	-2032(ra) # 80002700 <mycpu>
    80003ef8:	fea910e3          	bne	s2,a0,80003ed8 <release+0x20>
    80003efc:	0004b823          	sd	zero,16(s1)
    80003f00:	0ff0000f          	fence
    80003f04:	0f50000f          	fence	iorw,ow
    80003f08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	7f4080e7          	jalr	2036(ra) # 80002700 <mycpu>
    80003f14:	100027f3          	csrr	a5,sstatus
    80003f18:	0027f793          	andi	a5,a5,2
    80003f1c:	04079a63          	bnez	a5,80003f70 <release+0xb8>
    80003f20:	07852783          	lw	a5,120(a0)
    80003f24:	02f05e63          	blez	a5,80003f60 <release+0xa8>
    80003f28:	fff7871b          	addiw	a4,a5,-1
    80003f2c:	06e52c23          	sw	a4,120(a0)
    80003f30:	00071c63          	bnez	a4,80003f48 <release+0x90>
    80003f34:	07c52783          	lw	a5,124(a0)
    80003f38:	00078863          	beqz	a5,80003f48 <release+0x90>
    80003f3c:	100027f3          	csrr	a5,sstatus
    80003f40:	0027e793          	ori	a5,a5,2
    80003f44:	10079073          	csrw	sstatus,a5
    80003f48:	01813083          	ld	ra,24(sp)
    80003f4c:	01013403          	ld	s0,16(sp)
    80003f50:	00813483          	ld	s1,8(sp)
    80003f54:	00013903          	ld	s2,0(sp)
    80003f58:	02010113          	addi	sp,sp,32
    80003f5c:	00008067          	ret
    80003f60:	00001517          	auipc	a0,0x1
    80003f64:	27050513          	addi	a0,a0,624 # 800051d0 <digits+0x48>
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	154080e7          	jalr	340(ra) # 800030bc <panic>
    80003f70:	00001517          	auipc	a0,0x1
    80003f74:	24850513          	addi	a0,a0,584 # 800051b8 <digits+0x30>
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	144080e7          	jalr	324(ra) # 800030bc <panic>

0000000080003f80 <holding>:
    80003f80:	00052783          	lw	a5,0(a0)
    80003f84:	00079663          	bnez	a5,80003f90 <holding+0x10>
    80003f88:	00000513          	li	a0,0
    80003f8c:	00008067          	ret
    80003f90:	fe010113          	addi	sp,sp,-32
    80003f94:	00813823          	sd	s0,16(sp)
    80003f98:	00913423          	sd	s1,8(sp)
    80003f9c:	00113c23          	sd	ra,24(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    80003fa4:	01053483          	ld	s1,16(a0)
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	758080e7          	jalr	1880(ra) # 80002700 <mycpu>
    80003fb0:	01813083          	ld	ra,24(sp)
    80003fb4:	01013403          	ld	s0,16(sp)
    80003fb8:	40a48533          	sub	a0,s1,a0
    80003fbc:	00153513          	seqz	a0,a0
    80003fc0:	00813483          	ld	s1,8(sp)
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00008067          	ret

0000000080003fcc <push_off>:
    80003fcc:	fe010113          	addi	sp,sp,-32
    80003fd0:	00813823          	sd	s0,16(sp)
    80003fd4:	00113c23          	sd	ra,24(sp)
    80003fd8:	00913423          	sd	s1,8(sp)
    80003fdc:	02010413          	addi	s0,sp,32
    80003fe0:	100024f3          	csrr	s1,sstatus
    80003fe4:	100027f3          	csrr	a5,sstatus
    80003fe8:	ffd7f793          	andi	a5,a5,-3
    80003fec:	10079073          	csrw	sstatus,a5
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	710080e7          	jalr	1808(ra) # 80002700 <mycpu>
    80003ff8:	07852783          	lw	a5,120(a0)
    80003ffc:	02078663          	beqz	a5,80004028 <push_off+0x5c>
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	700080e7          	jalr	1792(ra) # 80002700 <mycpu>
    80004008:	07852783          	lw	a5,120(a0)
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	0017879b          	addiw	a5,a5,1
    80004018:	06f52c23          	sw	a5,120(a0)
    8000401c:	00813483          	ld	s1,8(sp)
    80004020:	02010113          	addi	sp,sp,32
    80004024:	00008067          	ret
    80004028:	0014d493          	srli	s1,s1,0x1
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	6d4080e7          	jalr	1748(ra) # 80002700 <mycpu>
    80004034:	0014f493          	andi	s1,s1,1
    80004038:	06952e23          	sw	s1,124(a0)
    8000403c:	fc5ff06f          	j	80004000 <push_off+0x34>

0000000080004040 <pop_off>:
    80004040:	ff010113          	addi	sp,sp,-16
    80004044:	00813023          	sd	s0,0(sp)
    80004048:	00113423          	sd	ra,8(sp)
    8000404c:	01010413          	addi	s0,sp,16
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	6b0080e7          	jalr	1712(ra) # 80002700 <mycpu>
    80004058:	100027f3          	csrr	a5,sstatus
    8000405c:	0027f793          	andi	a5,a5,2
    80004060:	04079663          	bnez	a5,800040ac <pop_off+0x6c>
    80004064:	07852783          	lw	a5,120(a0)
    80004068:	02f05a63          	blez	a5,8000409c <pop_off+0x5c>
    8000406c:	fff7871b          	addiw	a4,a5,-1
    80004070:	06e52c23          	sw	a4,120(a0)
    80004074:	00071c63          	bnez	a4,8000408c <pop_off+0x4c>
    80004078:	07c52783          	lw	a5,124(a0)
    8000407c:	00078863          	beqz	a5,8000408c <pop_off+0x4c>
    80004080:	100027f3          	csrr	a5,sstatus
    80004084:	0027e793          	ori	a5,a5,2
    80004088:	10079073          	csrw	sstatus,a5
    8000408c:	00813083          	ld	ra,8(sp)
    80004090:	00013403          	ld	s0,0(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret
    8000409c:	00001517          	auipc	a0,0x1
    800040a0:	13450513          	addi	a0,a0,308 # 800051d0 <digits+0x48>
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	018080e7          	jalr	24(ra) # 800030bc <panic>
    800040ac:	00001517          	auipc	a0,0x1
    800040b0:	10c50513          	addi	a0,a0,268 # 800051b8 <digits+0x30>
    800040b4:	fffff097          	auipc	ra,0xfffff
    800040b8:	008080e7          	jalr	8(ra) # 800030bc <panic>

00000000800040bc <push_on>:
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00113c23          	sd	ra,24(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	02010413          	addi	s0,sp,32
    800040d0:	100024f3          	csrr	s1,sstatus
    800040d4:	100027f3          	csrr	a5,sstatus
    800040d8:	0027e793          	ori	a5,a5,2
    800040dc:	10079073          	csrw	sstatus,a5
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	620080e7          	jalr	1568(ra) # 80002700 <mycpu>
    800040e8:	07852783          	lw	a5,120(a0)
    800040ec:	02078663          	beqz	a5,80004118 <push_on+0x5c>
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	610080e7          	jalr	1552(ra) # 80002700 <mycpu>
    800040f8:	07852783          	lw	a5,120(a0)
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	0017879b          	addiw	a5,a5,1
    80004108:	06f52c23          	sw	a5,120(a0)
    8000410c:	00813483          	ld	s1,8(sp)
    80004110:	02010113          	addi	sp,sp,32
    80004114:	00008067          	ret
    80004118:	0014d493          	srli	s1,s1,0x1
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	5e4080e7          	jalr	1508(ra) # 80002700 <mycpu>
    80004124:	0014f493          	andi	s1,s1,1
    80004128:	06952e23          	sw	s1,124(a0)
    8000412c:	fc5ff06f          	j	800040f0 <push_on+0x34>

0000000080004130 <pop_on>:
    80004130:	ff010113          	addi	sp,sp,-16
    80004134:	00813023          	sd	s0,0(sp)
    80004138:	00113423          	sd	ra,8(sp)
    8000413c:	01010413          	addi	s0,sp,16
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	5c0080e7          	jalr	1472(ra) # 80002700 <mycpu>
    80004148:	100027f3          	csrr	a5,sstatus
    8000414c:	0027f793          	andi	a5,a5,2
    80004150:	04078463          	beqz	a5,80004198 <pop_on+0x68>
    80004154:	07852783          	lw	a5,120(a0)
    80004158:	02f05863          	blez	a5,80004188 <pop_on+0x58>
    8000415c:	fff7879b          	addiw	a5,a5,-1
    80004160:	06f52c23          	sw	a5,120(a0)
    80004164:	07853783          	ld	a5,120(a0)
    80004168:	00079863          	bnez	a5,80004178 <pop_on+0x48>
    8000416c:	100027f3          	csrr	a5,sstatus
    80004170:	ffd7f793          	andi	a5,a5,-3
    80004174:	10079073          	csrw	sstatus,a5
    80004178:	00813083          	ld	ra,8(sp)
    8000417c:	00013403          	ld	s0,0(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret
    80004188:	00001517          	auipc	a0,0x1
    8000418c:	07050513          	addi	a0,a0,112 # 800051f8 <digits+0x70>
    80004190:	fffff097          	auipc	ra,0xfffff
    80004194:	f2c080e7          	jalr	-212(ra) # 800030bc <panic>
    80004198:	00001517          	auipc	a0,0x1
    8000419c:	04050513          	addi	a0,a0,64 # 800051d8 <digits+0x50>
    800041a0:	fffff097          	auipc	ra,0xfffff
    800041a4:	f1c080e7          	jalr	-228(ra) # 800030bc <panic>

00000000800041a8 <__memset>:
    800041a8:	ff010113          	addi	sp,sp,-16
    800041ac:	00813423          	sd	s0,8(sp)
    800041b0:	01010413          	addi	s0,sp,16
    800041b4:	1a060e63          	beqz	a2,80004370 <__memset+0x1c8>
    800041b8:	40a007b3          	neg	a5,a0
    800041bc:	0077f793          	andi	a5,a5,7
    800041c0:	00778693          	addi	a3,a5,7
    800041c4:	00b00813          	li	a6,11
    800041c8:	0ff5f593          	andi	a1,a1,255
    800041cc:	fff6071b          	addiw	a4,a2,-1
    800041d0:	1b06e663          	bltu	a3,a6,8000437c <__memset+0x1d4>
    800041d4:	1cd76463          	bltu	a4,a3,8000439c <__memset+0x1f4>
    800041d8:	1a078e63          	beqz	a5,80004394 <__memset+0x1ec>
    800041dc:	00b50023          	sb	a1,0(a0)
    800041e0:	00100713          	li	a4,1
    800041e4:	1ae78463          	beq	a5,a4,8000438c <__memset+0x1e4>
    800041e8:	00b500a3          	sb	a1,1(a0)
    800041ec:	00200713          	li	a4,2
    800041f0:	1ae78a63          	beq	a5,a4,800043a4 <__memset+0x1fc>
    800041f4:	00b50123          	sb	a1,2(a0)
    800041f8:	00300713          	li	a4,3
    800041fc:	18e78463          	beq	a5,a4,80004384 <__memset+0x1dc>
    80004200:	00b501a3          	sb	a1,3(a0)
    80004204:	00400713          	li	a4,4
    80004208:	1ae78263          	beq	a5,a4,800043ac <__memset+0x204>
    8000420c:	00b50223          	sb	a1,4(a0)
    80004210:	00500713          	li	a4,5
    80004214:	1ae78063          	beq	a5,a4,800043b4 <__memset+0x20c>
    80004218:	00b502a3          	sb	a1,5(a0)
    8000421c:	00700713          	li	a4,7
    80004220:	18e79e63          	bne	a5,a4,800043bc <__memset+0x214>
    80004224:	00b50323          	sb	a1,6(a0)
    80004228:	00700e93          	li	t4,7
    8000422c:	00859713          	slli	a4,a1,0x8
    80004230:	00e5e733          	or	a4,a1,a4
    80004234:	01059e13          	slli	t3,a1,0x10
    80004238:	01c76e33          	or	t3,a4,t3
    8000423c:	01859313          	slli	t1,a1,0x18
    80004240:	006e6333          	or	t1,t3,t1
    80004244:	02059893          	slli	a7,a1,0x20
    80004248:	40f60e3b          	subw	t3,a2,a5
    8000424c:	011368b3          	or	a7,t1,a7
    80004250:	02859813          	slli	a6,a1,0x28
    80004254:	0108e833          	or	a6,a7,a6
    80004258:	03059693          	slli	a3,a1,0x30
    8000425c:	003e589b          	srliw	a7,t3,0x3
    80004260:	00d866b3          	or	a3,a6,a3
    80004264:	03859713          	slli	a4,a1,0x38
    80004268:	00389813          	slli	a6,a7,0x3
    8000426c:	00f507b3          	add	a5,a0,a5
    80004270:	00e6e733          	or	a4,a3,a4
    80004274:	000e089b          	sext.w	a7,t3
    80004278:	00f806b3          	add	a3,a6,a5
    8000427c:	00e7b023          	sd	a4,0(a5)
    80004280:	00878793          	addi	a5,a5,8
    80004284:	fed79ce3          	bne	a5,a3,8000427c <__memset+0xd4>
    80004288:	ff8e7793          	andi	a5,t3,-8
    8000428c:	0007871b          	sext.w	a4,a5
    80004290:	01d787bb          	addw	a5,a5,t4
    80004294:	0ce88e63          	beq	a7,a4,80004370 <__memset+0x1c8>
    80004298:	00f50733          	add	a4,a0,a5
    8000429c:	00b70023          	sb	a1,0(a4)
    800042a0:	0017871b          	addiw	a4,a5,1
    800042a4:	0cc77663          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    800042a8:	00e50733          	add	a4,a0,a4
    800042ac:	00b70023          	sb	a1,0(a4)
    800042b0:	0027871b          	addiw	a4,a5,2
    800042b4:	0ac77e63          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    800042b8:	00e50733          	add	a4,a0,a4
    800042bc:	00b70023          	sb	a1,0(a4)
    800042c0:	0037871b          	addiw	a4,a5,3
    800042c4:	0ac77663          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    800042c8:	00e50733          	add	a4,a0,a4
    800042cc:	00b70023          	sb	a1,0(a4)
    800042d0:	0047871b          	addiw	a4,a5,4
    800042d4:	08c77e63          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    800042d8:	00e50733          	add	a4,a0,a4
    800042dc:	00b70023          	sb	a1,0(a4)
    800042e0:	0057871b          	addiw	a4,a5,5
    800042e4:	08c77663          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    800042e8:	00e50733          	add	a4,a0,a4
    800042ec:	00b70023          	sb	a1,0(a4)
    800042f0:	0067871b          	addiw	a4,a5,6
    800042f4:	06c77e63          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    800042f8:	00e50733          	add	a4,a0,a4
    800042fc:	00b70023          	sb	a1,0(a4)
    80004300:	0077871b          	addiw	a4,a5,7
    80004304:	06c77663          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    80004308:	00e50733          	add	a4,a0,a4
    8000430c:	00b70023          	sb	a1,0(a4)
    80004310:	0087871b          	addiw	a4,a5,8
    80004314:	04c77e63          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    80004318:	00e50733          	add	a4,a0,a4
    8000431c:	00b70023          	sb	a1,0(a4)
    80004320:	0097871b          	addiw	a4,a5,9
    80004324:	04c77663          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    80004328:	00e50733          	add	a4,a0,a4
    8000432c:	00b70023          	sb	a1,0(a4)
    80004330:	00a7871b          	addiw	a4,a5,10
    80004334:	02c77e63          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    80004338:	00e50733          	add	a4,a0,a4
    8000433c:	00b70023          	sb	a1,0(a4)
    80004340:	00b7871b          	addiw	a4,a5,11
    80004344:	02c77663          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    80004348:	00e50733          	add	a4,a0,a4
    8000434c:	00b70023          	sb	a1,0(a4)
    80004350:	00c7871b          	addiw	a4,a5,12
    80004354:	00c77e63          	bgeu	a4,a2,80004370 <__memset+0x1c8>
    80004358:	00e50733          	add	a4,a0,a4
    8000435c:	00b70023          	sb	a1,0(a4)
    80004360:	00d7879b          	addiw	a5,a5,13
    80004364:	00c7f663          	bgeu	a5,a2,80004370 <__memset+0x1c8>
    80004368:	00f507b3          	add	a5,a0,a5
    8000436c:	00b78023          	sb	a1,0(a5)
    80004370:	00813403          	ld	s0,8(sp)
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00008067          	ret
    8000437c:	00b00693          	li	a3,11
    80004380:	e55ff06f          	j	800041d4 <__memset+0x2c>
    80004384:	00300e93          	li	t4,3
    80004388:	ea5ff06f          	j	8000422c <__memset+0x84>
    8000438c:	00100e93          	li	t4,1
    80004390:	e9dff06f          	j	8000422c <__memset+0x84>
    80004394:	00000e93          	li	t4,0
    80004398:	e95ff06f          	j	8000422c <__memset+0x84>
    8000439c:	00000793          	li	a5,0
    800043a0:	ef9ff06f          	j	80004298 <__memset+0xf0>
    800043a4:	00200e93          	li	t4,2
    800043a8:	e85ff06f          	j	8000422c <__memset+0x84>
    800043ac:	00400e93          	li	t4,4
    800043b0:	e7dff06f          	j	8000422c <__memset+0x84>
    800043b4:	00500e93          	li	t4,5
    800043b8:	e75ff06f          	j	8000422c <__memset+0x84>
    800043bc:	00600e93          	li	t4,6
    800043c0:	e6dff06f          	j	8000422c <__memset+0x84>

00000000800043c4 <__memmove>:
    800043c4:	ff010113          	addi	sp,sp,-16
    800043c8:	00813423          	sd	s0,8(sp)
    800043cc:	01010413          	addi	s0,sp,16
    800043d0:	0e060863          	beqz	a2,800044c0 <__memmove+0xfc>
    800043d4:	fff6069b          	addiw	a3,a2,-1
    800043d8:	0006881b          	sext.w	a6,a3
    800043dc:	0ea5e863          	bltu	a1,a0,800044cc <__memmove+0x108>
    800043e0:	00758713          	addi	a4,a1,7
    800043e4:	00a5e7b3          	or	a5,a1,a0
    800043e8:	40a70733          	sub	a4,a4,a0
    800043ec:	0077f793          	andi	a5,a5,7
    800043f0:	00f73713          	sltiu	a4,a4,15
    800043f4:	00174713          	xori	a4,a4,1
    800043f8:	0017b793          	seqz	a5,a5
    800043fc:	00e7f7b3          	and	a5,a5,a4
    80004400:	10078863          	beqz	a5,80004510 <__memmove+0x14c>
    80004404:	00900793          	li	a5,9
    80004408:	1107f463          	bgeu	a5,a6,80004510 <__memmove+0x14c>
    8000440c:	0036581b          	srliw	a6,a2,0x3
    80004410:	fff8081b          	addiw	a6,a6,-1
    80004414:	02081813          	slli	a6,a6,0x20
    80004418:	01d85893          	srli	a7,a6,0x1d
    8000441c:	00858813          	addi	a6,a1,8
    80004420:	00058793          	mv	a5,a1
    80004424:	00050713          	mv	a4,a0
    80004428:	01088833          	add	a6,a7,a6
    8000442c:	0007b883          	ld	a7,0(a5)
    80004430:	00878793          	addi	a5,a5,8
    80004434:	00870713          	addi	a4,a4,8
    80004438:	ff173c23          	sd	a7,-8(a4)
    8000443c:	ff0798e3          	bne	a5,a6,8000442c <__memmove+0x68>
    80004440:	ff867713          	andi	a4,a2,-8
    80004444:	02071793          	slli	a5,a4,0x20
    80004448:	0207d793          	srli	a5,a5,0x20
    8000444c:	00f585b3          	add	a1,a1,a5
    80004450:	40e686bb          	subw	a3,a3,a4
    80004454:	00f507b3          	add	a5,a0,a5
    80004458:	06e60463          	beq	a2,a4,800044c0 <__memmove+0xfc>
    8000445c:	0005c703          	lbu	a4,0(a1)
    80004460:	00e78023          	sb	a4,0(a5)
    80004464:	04068e63          	beqz	a3,800044c0 <__memmove+0xfc>
    80004468:	0015c603          	lbu	a2,1(a1)
    8000446c:	00100713          	li	a4,1
    80004470:	00c780a3          	sb	a2,1(a5)
    80004474:	04e68663          	beq	a3,a4,800044c0 <__memmove+0xfc>
    80004478:	0025c603          	lbu	a2,2(a1)
    8000447c:	00200713          	li	a4,2
    80004480:	00c78123          	sb	a2,2(a5)
    80004484:	02e68e63          	beq	a3,a4,800044c0 <__memmove+0xfc>
    80004488:	0035c603          	lbu	a2,3(a1)
    8000448c:	00300713          	li	a4,3
    80004490:	00c781a3          	sb	a2,3(a5)
    80004494:	02e68663          	beq	a3,a4,800044c0 <__memmove+0xfc>
    80004498:	0045c603          	lbu	a2,4(a1)
    8000449c:	00400713          	li	a4,4
    800044a0:	00c78223          	sb	a2,4(a5)
    800044a4:	00e68e63          	beq	a3,a4,800044c0 <__memmove+0xfc>
    800044a8:	0055c603          	lbu	a2,5(a1)
    800044ac:	00500713          	li	a4,5
    800044b0:	00c782a3          	sb	a2,5(a5)
    800044b4:	00e68663          	beq	a3,a4,800044c0 <__memmove+0xfc>
    800044b8:	0065c703          	lbu	a4,6(a1)
    800044bc:	00e78323          	sb	a4,6(a5)
    800044c0:	00813403          	ld	s0,8(sp)
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00008067          	ret
    800044cc:	02061713          	slli	a4,a2,0x20
    800044d0:	02075713          	srli	a4,a4,0x20
    800044d4:	00e587b3          	add	a5,a1,a4
    800044d8:	f0f574e3          	bgeu	a0,a5,800043e0 <__memmove+0x1c>
    800044dc:	02069613          	slli	a2,a3,0x20
    800044e0:	02065613          	srli	a2,a2,0x20
    800044e4:	fff64613          	not	a2,a2
    800044e8:	00e50733          	add	a4,a0,a4
    800044ec:	00c78633          	add	a2,a5,a2
    800044f0:	fff7c683          	lbu	a3,-1(a5)
    800044f4:	fff78793          	addi	a5,a5,-1
    800044f8:	fff70713          	addi	a4,a4,-1
    800044fc:	00d70023          	sb	a3,0(a4)
    80004500:	fec798e3          	bne	a5,a2,800044f0 <__memmove+0x12c>
    80004504:	00813403          	ld	s0,8(sp)
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00008067          	ret
    80004510:	02069713          	slli	a4,a3,0x20
    80004514:	02075713          	srli	a4,a4,0x20
    80004518:	00170713          	addi	a4,a4,1
    8000451c:	00e50733          	add	a4,a0,a4
    80004520:	00050793          	mv	a5,a0
    80004524:	0005c683          	lbu	a3,0(a1)
    80004528:	00178793          	addi	a5,a5,1
    8000452c:	00158593          	addi	a1,a1,1
    80004530:	fed78fa3          	sb	a3,-1(a5)
    80004534:	fee798e3          	bne	a5,a4,80004524 <__memmove+0x160>
    80004538:	f89ff06f          	j	800044c0 <__memmove+0xfc>

000000008000453c <__putc>:
    8000453c:	fe010113          	addi	sp,sp,-32
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	02010413          	addi	s0,sp,32
    8000454c:	00050793          	mv	a5,a0
    80004550:	fef40593          	addi	a1,s0,-17
    80004554:	00100613          	li	a2,1
    80004558:	00000513          	li	a0,0
    8000455c:	fef407a3          	sb	a5,-17(s0)
    80004560:	fffff097          	auipc	ra,0xfffff
    80004564:	b3c080e7          	jalr	-1220(ra) # 8000309c <console_write>
    80004568:	01813083          	ld	ra,24(sp)
    8000456c:	01013403          	ld	s0,16(sp)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00008067          	ret

0000000080004578 <__getc>:
    80004578:	fe010113          	addi	sp,sp,-32
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00113c23          	sd	ra,24(sp)
    80004584:	02010413          	addi	s0,sp,32
    80004588:	fe840593          	addi	a1,s0,-24
    8000458c:	00100613          	li	a2,1
    80004590:	00000513          	li	a0,0
    80004594:	fffff097          	auipc	ra,0xfffff
    80004598:	ae8080e7          	jalr	-1304(ra) # 8000307c <console_read>
    8000459c:	fe844503          	lbu	a0,-24(s0)
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	01013403          	ld	s0,16(sp)
    800045a8:	02010113          	addi	sp,sp,32
    800045ac:	00008067          	ret

00000000800045b0 <console_handler>:
    800045b0:	fe010113          	addi	sp,sp,-32
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00113c23          	sd	ra,24(sp)
    800045bc:	00913423          	sd	s1,8(sp)
    800045c0:	02010413          	addi	s0,sp,32
    800045c4:	14202773          	csrr	a4,scause
    800045c8:	100027f3          	csrr	a5,sstatus
    800045cc:	0027f793          	andi	a5,a5,2
    800045d0:	06079e63          	bnez	a5,8000464c <console_handler+0x9c>
    800045d4:	00074c63          	bltz	a4,800045ec <console_handler+0x3c>
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	02010113          	addi	sp,sp,32
    800045e8:	00008067          	ret
    800045ec:	0ff77713          	andi	a4,a4,255
    800045f0:	00900793          	li	a5,9
    800045f4:	fef712e3          	bne	a4,a5,800045d8 <console_handler+0x28>
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	6dc080e7          	jalr	1756(ra) # 80002cd4 <plic_claim>
    80004600:	00a00793          	li	a5,10
    80004604:	00050493          	mv	s1,a0
    80004608:	02f50c63          	beq	a0,a5,80004640 <console_handler+0x90>
    8000460c:	fc0506e3          	beqz	a0,800045d8 <console_handler+0x28>
    80004610:	00050593          	mv	a1,a0
    80004614:	00001517          	auipc	a0,0x1
    80004618:	aec50513          	addi	a0,a0,-1300 # 80005100 <_ZZ12printIntegermE6digits+0xe0>
    8000461c:	fffff097          	auipc	ra,0xfffff
    80004620:	afc080e7          	jalr	-1284(ra) # 80003118 <__printf>
    80004624:	01013403          	ld	s0,16(sp)
    80004628:	01813083          	ld	ra,24(sp)
    8000462c:	00048513          	mv	a0,s1
    80004630:	00813483          	ld	s1,8(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	ffffe317          	auipc	t1,0xffffe
    8000463c:	6d430067          	jr	1748(t1) # 80002d0c <plic_complete>
    80004640:	fffff097          	auipc	ra,0xfffff
    80004644:	3e0080e7          	jalr	992(ra) # 80003a20 <uartintr>
    80004648:	fddff06f          	j	80004624 <console_handler+0x74>
    8000464c:	00001517          	auipc	a0,0x1
    80004650:	bb450513          	addi	a0,a0,-1100 # 80005200 <digits+0x78>
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	a68080e7          	jalr	-1432(ra) # 800030bc <panic>
	...
