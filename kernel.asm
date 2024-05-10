
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	ed813103          	ld	sp,-296(sp) # 80005ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	295020ef          	jal	ra,80002ab0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RISCV9push_regsEv>:

.global _ZN5RISCV9push_regsEv
.type _ZN5RISCV9push_regsEv, @function

_ZN5RISCV9push_regsEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00213823          	sd	sp,16(sp)
    80001008:	00313c23          	sd	gp,24(sp)
    8000100c:	02413023          	sd	tp,32(sp)
    80001010:	02513423          	sd	t0,40(sp)
    80001014:	02613823          	sd	t1,48(sp)
    80001018:	02713c23          	sd	t2,56(sp)
    8000101c:	04813023          	sd	s0,64(sp)
    80001020:	04913423          	sd	s1,72(sp)
    80001024:	04a13823          	sd	a0,80(sp)
    80001028:	04b13c23          	sd	a1,88(sp)
    8000102c:	06c13023          	sd	a2,96(sp)
    80001030:	06d13423          	sd	a3,104(sp)
    80001034:	06e13823          	sd	a4,112(sp)
    80001038:	06f13c23          	sd	a5,120(sp)
    8000103c:	09013023          	sd	a6,128(sp)
    80001040:	09113423          	sd	a7,136(sp)
    80001044:	09213823          	sd	s2,144(sp)
    80001048:	09313c23          	sd	s3,152(sp)
    8000104c:	0b413023          	sd	s4,160(sp)
    80001050:	0b513423          	sd	s5,168(sp)
    80001054:	0b613823          	sd	s6,176(sp)
    80001058:	0b713c23          	sd	s7,184(sp)
    8000105c:	0d813023          	sd	s8,192(sp)
    80001060:	0d913423          	sd	s9,200(sp)
    80001064:	0da13823          	sd	s10,208(sp)
    80001068:	0db13c23          	sd	s11,216(sp)
    8000106c:	0fc13023          	sd	t3,224(sp)
    80001070:	0fd13423          	sd	t4,232(sp)
    80001074:	0fe13823          	sd	t5,240(sp)
    80001078:	0ff13c23          	sd	t6,248(sp)
    ret
    8000107c:	00008067          	ret

0000000080001080 <_ZN5RISCV8pop_regsEv>:
.type _ZN5RISCV8pop_regsEv, @function

_ZN5RISCV8pop_regsEv:
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001080:	01013103          	ld	sp,16(sp)
    80001084:	01813183          	ld	gp,24(sp)
    80001088:	02013203          	ld	tp,32(sp)
    8000108c:	02813283          	ld	t0,40(sp)
    80001090:	03013303          	ld	t1,48(sp)
    80001094:	03813383          	ld	t2,56(sp)
    80001098:	04013403          	ld	s0,64(sp)
    8000109c:	04813483          	ld	s1,72(sp)
    800010a0:	05013503          	ld	a0,80(sp)
    800010a4:	05813583          	ld	a1,88(sp)
    800010a8:	06013603          	ld	a2,96(sp)
    800010ac:	06813683          	ld	a3,104(sp)
    800010b0:	07013703          	ld	a4,112(sp)
    800010b4:	07813783          	ld	a5,120(sp)
    800010b8:	08013803          	ld	a6,128(sp)
    800010bc:	08813883          	ld	a7,136(sp)
    800010c0:	09013903          	ld	s2,144(sp)
    800010c4:	09813983          	ld	s3,152(sp)
    800010c8:	0a013a03          	ld	s4,160(sp)
    800010cc:	0a813a83          	ld	s5,168(sp)
    800010d0:	0b013b03          	ld	s6,176(sp)
    800010d4:	0b813b83          	ld	s7,184(sp)
    800010d8:	0c013c03          	ld	s8,192(sp)
    800010dc:	0c813c83          	ld	s9,200(sp)
    800010e0:	0d013d03          	ld	s10,208(sp)
    800010e4:	0d813d83          	ld	s11,216(sp)
    800010e8:	0e013e03          	ld	t3,224(sp)
    800010ec:	0e813e83          	ld	t4,232(sp)
    800010f0:	0f013f03          	ld	t5,240(sp)
    800010f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f8:	10010113          	addi	sp,sp,256

    ret
    800010fc:	00008067          	ret

0000000080001100 <_ZN5RISCV15supervisor_trapEv>:
.global _ZN5RISCV15supervisor_trapEv
.type _ZN5RISCV15supervisor_trapEv @function

_ZN5RISCV15supervisor_trapEv:

    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04b13c23          	sd	a1,88(sp)
    80001130:	06c13023          	sd	a2,96(sp)
    80001134:	06d13423          	sd	a3,104(sp)
    80001138:	06e13823          	sd	a4,112(sp)
    8000113c:	06f13c23          	sd	a5,120(sp)
    80001140:	09013023          	sd	a6,128(sp)
    80001144:	09113423          	sd	a7,136(sp)
    80001148:	09213823          	sd	s2,144(sp)
    8000114c:	09313c23          	sd	s3,152(sp)
    80001150:	0b413023          	sd	s4,160(sp)
    80001154:	0b513423          	sd	s5,168(sp)
    80001158:	0b613823          	sd	s6,176(sp)
    8000115c:	0b713c23          	sd	s7,184(sp)
    80001160:	0d813023          	sd	s8,192(sp)
    80001164:	0d913423          	sd	s9,200(sp)
    80001168:	0da13823          	sd	s10,208(sp)
    8000116c:	0db13c23          	sd	s11,216(sp)
    80001170:	0fc13023          	sd	t3,224(sp)
    80001174:	0fd13423          	sd	t4,232(sp)
    80001178:	0fe13823          	sd	t5,240(sp)
    8000117c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RISCV16handle_interruptEv
    80001180:	6fd000ef          	jal	ra,8000207c <_ZN5RISCV16handle_interruptEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001184:	00013003          	ld	zero,0(sp)
    80001188:	00813083          	ld	ra,8(sp)
    8000118c:	01013103          	ld	sp,16(sp)
    80001190:	01813183          	ld	gp,24(sp)
    80001194:	02013203          	ld	tp,32(sp)
    80001198:	02813283          	ld	t0,40(sp)
    8000119c:	03013303          	ld	t1,48(sp)
    800011a0:	03813383          	ld	t2,56(sp)
    800011a4:	04013403          	ld	s0,64(sp)
    800011a8:	04813483          	ld	s1,72(sp)
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

    80001204:	10200073          	sret
	...

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function

_ZN3TCB13contextSwitchEPNS_7ContextES1_:

    # a0 - &old->context
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    # a0 - &old->context
    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <_Z11system_callmmmmm>:


// opsta funkcija, opsti argumenti
// op code -> registar a0 ___ argumenti reg a1 .. a4

void system_call(uint64 op_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00813423          	sd	s0,8(sp)
    8000122c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001230:	00000073          	ecall
}
    80001234:	00813403          	ld	s0,8(sp)
    80001238:	01010113          	addi	sp,sp,16
    8000123c:	00008067          	ret

0000000080001240 <_Z9mem_allocm>:

// size (bytes) => syscall -> num of block
void* mem_alloc (size_t size) {
    if (!size) return nullptr;
    80001240:	04050463          	beqz	a0,80001288 <_Z9mem_allocm+0x48>
void* mem_alloc (size_t size) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00113423          	sd	ra,8(sp)
    8000124c:	00813023          	sd	s0,0(sp)
    80001250:	01010413          	addi	s0,sp,16
    void volatile *ptr;
    uint64 blocks = (mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001254:	05750513          	addi	a0,a0,87
    system_call(MEM_ALLOC, blocks);
    80001258:	00000713          	li	a4,0
    8000125c:	00000693          	li	a3,0
    80001260:	00000613          	li	a2,0
    80001264:	00655593          	srli	a1,a0,0x6
    80001268:	00100513          	li	a0,1
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	fb8080e7          	jalr	-72(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(ptr));
    80001274:	00050513          	mv	a0,a0
    return (void*)ptr;
}
    80001278:	00813083          	ld	ra,8(sp)
    8000127c:	00013403          	ld	s0,0(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret
    if (!size) return nullptr;
    80001288:	00000513          	li	a0,0
}
    8000128c:	00008067          	ret

0000000080001290 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001290:	fe010113          	addi	sp,sp,-32
    80001294:	00113c23          	sd	ra,24(sp)
    80001298:	00813823          	sd	s0,16(sp)
    8000129c:	02010413          	addi	s0,sp,32
    800012a0:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(MEM_FREE, (uint64)ptr);
    800012a4:	00000713          	li	a4,0
    800012a8:	00000693          	li	a3,0
    800012ac:	00000613          	li	a2,0
    800012b0:	00200513          	li	a0,2
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	f70080e7          	jalr	-144(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800012bc:	00050793          	mv	a5,a0
    800012c0:	fef42623          	sw	a5,-20(s0)
    return a0;
    800012c4:	fec42503          	lw	a0,-20(s0)
}
    800012c8:	0005051b          	sext.w	a0,a0
    800012cc:	01813083          	ld	ra,24(sp)
    800012d0:	01013403          	ld	s0,16(sp)
    800012d4:	02010113          	addi	sp,sp,32
    800012d8:	00008067          	ret

00000000800012dc <_Z13thread_createPP3TCBPFvPvES2_>:

// sistemski poziv thread_create prima
// dodatno void* stack_space

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012dc:	fc010113          	addi	sp,sp,-64
    800012e0:	02113c23          	sd	ra,56(sp)
    800012e4:	02813823          	sd	s0,48(sp)
    800012e8:	02913423          	sd	s1,40(sp)
    800012ec:	03213023          	sd	s2,32(sp)
    800012f0:	01313c23          	sd	s3,24(sp)
    800012f4:	04010413          	addi	s0,sp,64
    800012f8:	00050913          	mv	s2,a0
    800012fc:	00058493          	mv	s1,a1
    80001300:	00060993          	mv	s3,a2
    int volatile ret;
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001304:	04058c63          	beqz	a1,8000135c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001308:	00001537          	lui	a0,0x1
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	f34080e7          	jalr	-204(ra) # 80001240 <_Z9mem_allocm>
    80001314:	00050713          	mv	a4,a0
    system_call(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    80001318:	00098693          	mv	a3,s3
    8000131c:	00048613          	mv	a2,s1
    80001320:	00090593          	mv	a1,s2
    80001324:	01100513          	li	a0,17
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	efc080e7          	jalr	-260(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001330:	00050793          	mv	a5,a0
    80001334:	fcf42623          	sw	a5,-52(s0)
    return ret;
    80001338:	fcc42503          	lw	a0,-52(s0)
}
    8000133c:	0005051b          	sext.w	a0,a0
    80001340:	03813083          	ld	ra,56(sp)
    80001344:	03013403          	ld	s0,48(sp)
    80001348:	02813483          	ld	s1,40(sp)
    8000134c:	02013903          	ld	s2,32(sp)
    80001350:	01813983          	ld	s3,24(sp)
    80001354:	04010113          	addi	sp,sp,64
    80001358:	00008067          	ret
    void* stack_space = nullptr;
    8000135c:	00000713          	li	a4,0
    80001360:	fb9ff06f          	j	80001318 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001364 <_Z11thread_exitv>:

int thread_exit() {
    80001364:	fe010113          	addi	sp,sp,-32
    80001368:	00113c23          	sd	ra,24(sp)
    8000136c:	00813823          	sd	s0,16(sp)
    80001370:	02010413          	addi	s0,sp,32
    int volatile a0;
    system_call(THREAD_EXIT);
    80001374:	00000713          	li	a4,0
    80001378:	00000693          	li	a3,0
    8000137c:	00000613          	li	a2,0
    80001380:	00000593          	li	a1,0
    80001384:	01200513          	li	a0,18
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	e9c080e7          	jalr	-356(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001390:	00050793          	mv	a5,a0
    80001394:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001398:	fec42503          	lw	a0,-20(s0)
}
    8000139c:	0005051b          	sext.w	a0,a0
    800013a0:	01813083          	ld	ra,24(sp)
    800013a4:	01013403          	ld	s0,16(sp)
    800013a8:	02010113          	addi	sp,sp,32
    800013ac:	00008067          	ret

00000000800013b0 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00113423          	sd	ra,8(sp)
    800013b8:	00813023          	sd	s0,0(sp)
    800013bc:	01010413          	addi	s0,sp,16
    system_call(THREAD_DISPATCH);
    800013c0:	00000713          	li	a4,0
    800013c4:	00000693          	li	a3,0
    800013c8:	00000613          	li	a2,0
    800013cc:	00000593          	li	a1,0
    800013d0:	01300513          	li	a0,19
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	e50080e7          	jalr	-432(ra) # 80001224 <_Z11system_callmmmmm>
}
    800013dc:	00813083          	ld	ra,8(sp)
    800013e0:	00013403          	ld	s0,0(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	02010413          	addi	s0,sp,32
    //if (init <= 0 || !handle) return -1;
    int volatile a0;
    system_call(SEM_OPEN, (uint64)handle, init);
    800013fc:	00000713          	li	a4,0
    80001400:	00000693          	li	a3,0
    80001404:	02059613          	slli	a2,a1,0x20
    80001408:	02065613          	srli	a2,a2,0x20
    8000140c:	00050593          	mv	a1,a0
    80001410:	02100513          	li	a0,33
    80001414:	00000097          	auipc	ra,0x0
    80001418:	e10080e7          	jalr	-496(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000141c:	00050793          	mv	a5,a0
    80001420:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001424:	fec42503          	lw	a0,-20(s0)
}
    80001428:	0005051b          	sext.w	a0,a0
    8000142c:	01813083          	ld	ra,24(sp)
    80001430:	01013403          	ld	s0,16(sp)
    80001434:	02010113          	addi	sp,sp,32
    80001438:	00008067          	ret

000000008000143c <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    if (!handle) return -1; // no sem
    8000143c:	04050863          	beqz	a0,8000148c <_Z9sem_closeP3Sem+0x50>
int sem_close(sem_t handle) {
    80001440:	fe010113          	addi	sp,sp,-32
    80001444:	00113c23          	sd	ra,24(sp)
    80001448:	00813823          	sd	s0,16(sp)
    8000144c:	02010413          	addi	s0,sp,32
    80001450:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_CLOSE, (uint64)handle);
    80001454:	00000713          	li	a4,0
    80001458:	00000693          	li	a3,0
    8000145c:	00000613          	li	a2,0
    80001460:	02200513          	li	a0,34
    80001464:	00000097          	auipc	ra,0x0
    80001468:	dc0080e7          	jalr	-576(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000146c:	00050793          	mv	a5,a0
    80001470:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001474:	fec42503          	lw	a0,-20(s0)
    80001478:	0005051b          	sext.w	a0,a0
}
    8000147c:	01813083          	ld	ra,24(sp)
    80001480:	01013403          	ld	s0,16(sp)
    80001484:	02010113          	addi	sp,sp,32
    80001488:	00008067          	ret
    if (!handle) return -1; // no sem
    8000148c:	fff00513          	li	a0,-1
}
    80001490:	00008067          	ret

0000000080001494 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    80001494:	fe010113          	addi	sp,sp,-32
    80001498:	00113c23          	sd	ra,24(sp)
    8000149c:	00813823          	sd	s0,16(sp)
    800014a0:	02010413          	addi	s0,sp,32
    800014a4:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_WAIT, (uint64)id);
    800014a8:	00000713          	li	a4,0
    800014ac:	00000693          	li	a3,0
    800014b0:	00000613          	li	a2,0
    800014b4:	02300513          	li	a0,35
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	d6c080e7          	jalr	-660(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800014c0:	00050793          	mv	a5,a0
    800014c4:	fef42623          	sw	a5,-20(s0)
    return a0;
    800014c8:	fec42503          	lw	a0,-20(s0)
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	01813083          	ld	ra,24(sp)
    800014d4:	01013403          	ld	s0,16(sp)
    800014d8:	02010113          	addi	sp,sp,32
    800014dc:	00008067          	ret

00000000800014e0 <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    800014e0:	fe010113          	addi	sp,sp,-32
    800014e4:	00113c23          	sd	ra,24(sp)
    800014e8:	00813823          	sd	s0,16(sp)
    800014ec:	02010413          	addi	s0,sp,32
    800014f0:	00058613          	mv	a2,a1
    int volatile a0;
    system_call(SEM_TIMEDWAIT, (uint64)id, (uint64)timeout);
    800014f4:	00000713          	li	a4,0
    800014f8:	00000693          	li	a3,0
    800014fc:	00050593          	mv	a1,a0
    80001500:	02500513          	li	a0,37
    80001504:	00000097          	auipc	ra,0x0
    80001508:	d20080e7          	jalr	-736(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000150c:	00050793          	mv	a5,a0
    80001510:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001514:	fec42503          	lw	a0,-20(s0)
}
    80001518:	0005051b          	sext.w	a0,a0
    8000151c:	01813083          	ld	ra,24(sp)
    80001520:	01013403          	ld	s0,16(sp)
    80001524:	02010113          	addi	sp,sp,32
    80001528:	00008067          	ret

000000008000152c <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    8000152c:	fe010113          	addi	sp,sp,-32
    80001530:	00113c23          	sd	ra,24(sp)
    80001534:	00813823          	sd	s0,16(sp)
    80001538:	02010413          	addi	s0,sp,32
    8000153c:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_TRYWAIT, (uint64)id);
    80001540:	00000713          	li	a4,0
    80001544:	00000693          	li	a3,0
    80001548:	00000613          	li	a2,0
    8000154c:	02600513          	li	a0,38
    80001550:	00000097          	auipc	ra,0x0
    80001554:	cd4080e7          	jalr	-812(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001558:	00050793          	mv	a5,a0
    8000155c:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001560:	fec42503          	lw	a0,-20(s0)
}
    80001564:	0005051b          	sext.w	a0,a0
    80001568:	01813083          	ld	ra,24(sp)
    8000156c:	01013403          	ld	s0,16(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret

0000000080001578 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	02010413          	addi	s0,sp,32
    80001588:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_SIGNAL, (uint64)id);
    8000158c:	00000713          	li	a4,0
    80001590:	00000693          	li	a3,0
    80001594:	00000613          	li	a2,0
    80001598:	02400513          	li	a0,36
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	c88080e7          	jalr	-888(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800015a4:	00050793          	mv	a5,a0
    800015a8:	fef42623          	sw	a5,-20(s0)
    return a0;
    800015ac:	fec42503          	lw	a0,-20(s0)
}
    800015b0:	0005051b          	sext.w	a0,a0
    800015b4:	01813083          	ld	ra,24(sp)
    800015b8:	01013403          	ld	s0,16(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    800015c4:	fe010113          	addi	sp,sp,-32
    800015c8:	00113c23          	sd	ra,24(sp)
    800015cc:	00813823          	sd	s0,16(sp)
    800015d0:	02010413          	addi	s0,sp,32
    800015d4:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(TIME_SLEEP, (uint64)time);
    800015d8:	00000713          	li	a4,0
    800015dc:	00000693          	li	a3,0
    800015e0:	00000613          	li	a2,0
    800015e4:	03100513          	li	a0,49
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	c3c080e7          	jalr	-964(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800015f0:	00050793          	mv	a5,a0
    800015f4:	fef42623          	sw	a5,-20(s0)
    return a0;
    800015f8:	fec42503          	lw	a0,-20(s0)
}
    800015fc:	0005051b          	sext.w	a0,a0
    80001600:	01813083          	ld	ra,24(sp)
    80001604:	01013403          	ld	s0,16(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <_Z4getcv>:

char getc() {
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	02010413          	addi	s0,sp,32
    char volatile a0;
    system_call(GETC);
    80001620:	00000713          	li	a4,0
    80001624:	00000693          	li	a3,0
    80001628:	00000613          	li	a2,0
    8000162c:	00000593          	li	a1,0
    80001630:	04100513          	li	a0,65
    80001634:	00000097          	auipc	ra,0x0
    80001638:	bf0080e7          	jalr	-1040(ra) # 80001224 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000163c:	00050793          	mv	a5,a0
    80001640:	fef407a3          	sb	a5,-17(s0)
    return a0;
    80001644:	fef44503          	lbu	a0,-17(s0)
}
    80001648:	0ff57513          	andi	a0,a0,255
    8000164c:	01813083          	ld	ra,24(sp)
    80001650:	01013403          	ld	s0,16(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_Z4putcc>:

void putc(char c) {
    8000165c:	ff010113          	addi	sp,sp,-16
    80001660:	00113423          	sd	ra,8(sp)
    80001664:	00813023          	sd	s0,0(sp)
    80001668:	01010413          	addi	s0,sp,16
    8000166c:	00050593          	mv	a1,a0
    system_call(PUTC, c);
    80001670:	00000713          	li	a4,0
    80001674:	00000693          	li	a3,0
    80001678:	00000613          	li	a2,0
    8000167c:	04200513          	li	a0,66
    80001680:	00000097          	auipc	ra,0x0
    80001684:	ba4080e7          	jalr	-1116(ra) # 80001224 <_Z11system_callmmmmm>
}
    80001688:	00813083          	ld	ra,8(sp)
    8000168c:	00013403          	ld	s0,0(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <_ZN3Sem7trywaitEv>:
    if (isClosed) return SEM_CLOSED;
    if (++value <= 0) deblock();
    return 0;
}

int Sem::trywait() { /// ??????????????????
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00813423          	sd	s0,8(sp)
    800016a0:	01010413          	addi	s0,sp,16

    if (isClosed) return SEM_CLOSED; // error code
    800016a4:	00454703          	lbu	a4,4(a0) # 1004 <_entry-0x7fffeffc>
    800016a8:	02071863          	bnez	a4,800016d8 <_ZN3Sem7trywaitEv+0x40>
    800016ac:	00050793          	mv	a5,a0
    if (value <= 0) return NEG_VALUE; // no success
    800016b0:	00052703          	lw	a4,0(a0)
    800016b4:	02e05663          	blez	a4,800016e0 <_ZN3Sem7trywaitEv+0x48>
    --value;
    800016b8:	fff7071b          	addiw	a4,a4,-1
    800016bc:	0007051b          	sext.w	a0,a4
    800016c0:	00e7a023          	sw	a4,0(a5)
    if (value == 0) return 0; // sem locked ??
    800016c4:	00050463          	beqz	a0,800016cc <_ZN3Sem7trywaitEv+0x34>
    return 1;                 // sem not locked
    800016c8:	00100513          	li	a0,1
}
    800016cc:	00813403          	ld	s0,8(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret
    if (isClosed) return SEM_CLOSED; // error code
    800016d8:	ffd00513          	li	a0,-3
    800016dc:	ff1ff06f          	j	800016cc <_ZN3Sem7trywaitEv+0x34>
    if (value <= 0) return NEG_VALUE; // no success
    800016e0:	ffe00513          	li	a0,-2
    800016e4:	fe9ff06f          	j	800016cc <_ZN3Sem7trywaitEv+0x34>

00000000800016e8 <_ZN3Sem5blockEv>:

void Sem::block() {
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    800016fc:	00004797          	auipc	a5,0x4
    80001700:	7e47b783          	ld	a5,2020(a5) # 80005ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001704:	0007b483          	ld	s1,0(a5)

    if (last) last = last->next_blocked = oldRunning; // with tcb pointers
    80001708:	00853783          	ld	a5,8(a0)
    8000170c:	04078663          	beqz	a5,80001758 <_ZN3Sem5blockEv+0x70>
    80001710:	0097bc23          	sd	s1,24(a5)
    80001714:	00953423          	sd	s1,8(a0)
    else first = last = oldRunning;

    oldRunning -> current_state = TCB::BLOCKED;
    80001718:	00400793          	li	a5,4
    8000171c:	04f4ac23          	sw	a5,88(s1)

    TCB::running = Scheduler::get();
    80001720:	00000097          	auipc	ra,0x0
    80001724:	288080e7          	jalr	648(ra) # 800019a8 <_ZN9Scheduler3getEv>
    80001728:	00050593          	mv	a1,a0
    8000172c:	00004797          	auipc	a5,0x4
    80001730:	7b47b783          	ld	a5,1972(a5) # 80005ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001734:	00a7b023          	sd	a0,0(a5)
    TCB::yield(oldRunning, TCB::running);
    80001738:	00048513          	mv	a0,s1
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	084080e7          	jalr	132(ra) # 800027c0 <_ZN3TCB5yieldEPS_S0_>
}
    80001744:	01813083          	ld	ra,24(sp)
    80001748:	01013403          	ld	s0,16(sp)
    8000174c:	00813483          	ld	s1,8(sp)
    80001750:	02010113          	addi	sp,sp,32
    80001754:	00008067          	ret
    else first = last = oldRunning;
    80001758:	00953423          	sd	s1,8(a0)
    8000175c:	00953823          	sd	s1,16(a0)
    80001760:	fb9ff06f          	j	80001718 <_ZN3Sem5blockEv+0x30>

0000000080001764 <_ZN3Sem4waitEv>:
    if (isClosed) return SEM_CLOSED;
    80001764:	00454783          	lbu	a5,4(a0)
    80001768:	04079663          	bnez	a5,800017b4 <_ZN3Sem4waitEv+0x50>
    if (--value < 0) {
    8000176c:	00052783          	lw	a5,0(a0)
    80001770:	fff7879b          	addiw	a5,a5,-1
    80001774:	00f52023          	sw	a5,0(a0)
    80001778:	02079713          	slli	a4,a5,0x20
    8000177c:	00074663          	bltz	a4,80001788 <_ZN3Sem4waitEv+0x24>
    return 0;
    80001780:	00000513          	li	a0,0
}
    80001784:	00008067          	ret
int Sem::wait() {
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
        block();
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	f50080e7          	jalr	-176(ra) # 800016e8 <_ZN3Sem5blockEv>
    return 0;
    800017a0:	00000513          	li	a0,0
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret
    if (isClosed) return SEM_CLOSED;
    800017b4:	ffd00513          	li	a0,-3
    800017b8:	00008067          	ret

00000000800017bc <_ZN3Sem7deblockEv>:

void Sem::deblock() {
    800017bc:	00050793          	mv	a5,a0

    // needs modification for timedWait

    if (!first) return;          // blocked empty
    800017c0:	01053503          	ld	a0,16(a0)
    800017c4:	04050463          	beqz	a0,8000180c <_ZN3Sem7deblockEv+0x50>
void Sem::deblock() {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
    TCB* t = first;
    first = first -> next_blocked;
    800017d8:	01853703          	ld	a4,24(a0)
    800017dc:	00e7b823          	sd	a4,16(a5)
    if (!first) last = nullptr;
    800017e0:	02070263          	beqz	a4,80001804 <_ZN3Sem7deblockEv+0x48>

    t -> next_blocked = nullptr;
    800017e4:	00053c23          	sd	zero,24(a0)
    t -> current_state = TCB::RUNNABLE;
    800017e8:	04052c23          	sw	zero,88(a0)
    Scheduler::put(t);
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	224080e7          	jalr	548(ra) # 80001a10 <_ZN9Scheduler3putEP3TCB>
}
    800017f4:	00813083          	ld	ra,8(sp)
    800017f8:	00013403          	ld	s0,0(sp)
    800017fc:	01010113          	addi	sp,sp,16
    80001800:	00008067          	ret
    if (!first) last = nullptr;
    80001804:	0007b423          	sd	zero,8(a5)
    80001808:	fddff06f          	j	800017e4 <_ZN3Sem7deblockEv+0x28>
    8000180c:	00008067          	ret

0000000080001810 <_ZN3Sem6signalEv>:
    if (isClosed) return SEM_CLOSED;
    80001810:	00454783          	lbu	a5,4(a0)
    80001814:	04079663          	bnez	a5,80001860 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) deblock();
    80001818:	00052783          	lw	a5,0(a0)
    8000181c:	0017879b          	addiw	a5,a5,1
    80001820:	0007871b          	sext.w	a4,a5
    80001824:	00f52023          	sw	a5,0(a0)
    80001828:	00e05663          	blez	a4,80001834 <_ZN3Sem6signalEv+0x24>
    return 0;
    8000182c:	00000513          	li	a0,0
}
    80001830:	00008067          	ret
int Sem::signal() {
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00113423          	sd	ra,8(sp)
    8000183c:	00813023          	sd	s0,0(sp)
    80001840:	01010413          	addi	s0,sp,16
    if (++value <= 0) deblock();
    80001844:	00000097          	auipc	ra,0x0
    80001848:	f78080e7          	jalr	-136(ra) # 800017bc <_ZN3Sem7deblockEv>
    return 0;
    8000184c:	00000513          	li	a0,0
}
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret
    if (isClosed) return SEM_CLOSED;
    80001860:	ffd00513          	li	a0,-3
    80001864:	00008067          	ret

0000000080001868 <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t) {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00813423          	sd	s0,8(sp)
    80001870:	01010413          	addi	s0,sp,16
    // after timer implementation
    return 0;
}
    80001874:	00000513          	li	a0,0
    80001878:	00813403          	ld	s0,8(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_ZN3Sem4openEPPS_j>:

int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    80001884:	fe010113          	addi	sp,sp,-32
    80001888:	00113c23          	sd	ra,24(sp)
    8000188c:	00813823          	sd	s0,16(sp)
    80001890:	00913423          	sd	s1,8(sp)
    80001894:	01213023          	sd	s2,0(sp)
    80001898:	02010413          	addi	s0,sp,32
    8000189c:	00050493          	mv	s1,a0
    800018a0:	00058913          	mv	s2,a1
    auto newSem = (sem_t) MemoryAllocator::mem_alloc(sizeof(Sem));
    800018a4:	01800513          	li	a0,24
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	99c080e7          	jalr	-1636(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
    if (!newSem) return MEMORY_ERR;
    800018b0:	02050463          	beqz	a0,800018d8 <_ZN3Sem4openEPPS_j+0x54>
    newSem -> value = init;
    800018b4:	01252023          	sw	s2,0(a0)
    *handle = newSem;
    800018b8:	00a4b023          	sd	a0,0(s1)
    return 0;
    800018bc:	00000513          	li	a0,0
}
    800018c0:	01813083          	ld	ra,24(sp)
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	00813483          	ld	s1,8(sp)
    800018cc:	00013903          	ld	s2,0(sp)
    800018d0:	02010113          	addi	sp,sp,32
    800018d4:	00008067          	ret
    if (!newSem) return MEMORY_ERR;
    800018d8:	fff00513          	li	a0,-1
    800018dc:	fe5ff06f          	j	800018c0 <_ZN3Sem4openEPPS_j+0x3c>

00000000800018e0 <_ZN3SemdlEPv>:
    delete handle; //

    return 0;
}

void Sem::operator delete(void *ptr) {
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00113423          	sd	ra,8(sp)
    800018e8:	00813023          	sd	s0,0(sp)
    800018ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	b78080e7          	jalr	-1160(ra) # 80002468 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800018f8:	00813083          	ld	ra,8(sp)
    800018fc:	00013403          	ld	s0,0(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <_ZN3Sem7s_closeEPS_>:
    if (!handle) return SEM_CLOSED; // da li je dealociran ?
    80001908:	06050463          	beqz	a0,80001970 <_ZN3Sem7s_closeEPS_+0x68>
int Sem::s_close(sem_t handle) {
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	00913423          	sd	s1,8(sp)
    8000191c:	01213023          	sd	s2,0(sp)
    80001920:	02010413          	addi	s0,sp,32
    80001924:	00050913          	mv	s2,a0
    for (TCB* b = handle->first; b != nullptr; b = b -> next_blocked) {
    80001928:	01053483          	ld	s1,16(a0)
    8000192c:	00048e63          	beqz	s1,80001948 <_ZN3Sem7s_closeEPS_+0x40>
        b -> current_state = TCB::RUNNABLE;
    80001930:	0404ac23          	sw	zero,88(s1)
        Scheduler::put(b);
    80001934:	00048513          	mv	a0,s1
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	0d8080e7          	jalr	216(ra) # 80001a10 <_ZN9Scheduler3putEP3TCB>
    for (TCB* b = handle->first; b != nullptr; b = b -> next_blocked) {
    80001940:	0184b483          	ld	s1,24(s1)
    80001944:	fe9ff06f          	j	8000192c <_ZN3Sem7s_closeEPS_+0x24>
    delete handle; //
    80001948:	00090513          	mv	a0,s2
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	f94080e7          	jalr	-108(ra) # 800018e0 <_ZN3SemdlEPv>
    return 0;
    80001954:	00000513          	li	a0,0
}
    80001958:	01813083          	ld	ra,24(sp)
    8000195c:	01013403          	ld	s0,16(sp)
    80001960:	00813483          	ld	s1,8(sp)
    80001964:	00013903          	ld	s2,0(sp)
    80001968:	02010113          	addi	sp,sp,32
    8000196c:	00008067          	ret
    if (!handle) return SEM_CLOSED; // da li je dealociran ?
    80001970:	ffd00513          	li	a0,-3
}
    80001974:	00008067          	ret

0000000080001978 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001988:	05750513          	addi	a0,a0,87
    8000198c:	00655513          	srli	a0,a0,0x6
    80001990:	00001097          	auipc	ra,0x1
    80001994:	8b4080e7          	jalr	-1868(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001998:	00813083          	ld	ra,8(sp)
    8000199c:	00013403          	ld	s0,0(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_ZN9Scheduler3getEv>:
#include "../h/Scheduler.hpp"

Scheduler::Elem* Scheduler::head = nullptr;
Scheduler::Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get() {
    800019a8:	fe010113          	addi	sp,sp,-32
    800019ac:	00113c23          	sd	ra,24(sp)
    800019b0:	00813823          	sd	s0,16(sp)
    800019b4:	00913423          	sd	s1,8(sp)
    800019b8:	02010413          	addi	s0,sp,32
    if (!head) return nullptr;
    800019bc:	00004517          	auipc	a0,0x4
    800019c0:	58453503          	ld	a0,1412(a0) # 80005f40 <_ZN9Scheduler4headE>
    800019c4:	04050263          	beqz	a0,80001a08 <_ZN9Scheduler3getEv+0x60>
    Elem* removed = head;
    head = head -> next;
    800019c8:	00853783          	ld	a5,8(a0)
    800019cc:	00004717          	auipc	a4,0x4
    800019d0:	56f73a23          	sd	a5,1396(a4) # 80005f40 <_ZN9Scheduler4headE>
    if (!head) tail = nullptr;
    800019d4:	02078463          	beqz	a5,800019fc <_ZN9Scheduler3getEv+0x54>
    TCB *ret = removed -> data;
    800019d8:	00053483          	ld	s1,0(a0)
    delete removed;
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	55c080e7          	jalr	1372(ra) # 80001f38 <_ZdlPv>
    return ret;
}
    800019e4:	00048513          	mv	a0,s1
    800019e8:	01813083          	ld	ra,24(sp)
    800019ec:	01013403          	ld	s0,16(sp)
    800019f0:	00813483          	ld	s1,8(sp)
    800019f4:	02010113          	addi	sp,sp,32
    800019f8:	00008067          	ret
    if (!head) tail = nullptr;
    800019fc:	00004797          	auipc	a5,0x4
    80001a00:	5407b623          	sd	zero,1356(a5) # 80005f48 <_ZN9Scheduler4tailE>
    80001a04:	fd5ff06f          	j	800019d8 <_ZN9Scheduler3getEv+0x30>
    if (!head) return nullptr;
    80001a08:	00050493          	mv	s1,a0
    80001a0c:	fd9ff06f          	j	800019e4 <_ZN9Scheduler3getEv+0x3c>

0000000080001a10 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    80001a10:	fe010113          	addi	sp,sp,-32
    80001a14:	00113c23          	sd	ra,24(sp)
    80001a18:	00813823          	sd	s0,16(sp)
    80001a1c:	00913423          	sd	s1,8(sp)
    80001a20:	02010413          	addi	s0,sp,32
    80001a24:	00050493          	mv	s1,a0

    Elem* newElem = new Elem(newTCB, nullptr);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	494080e7          	jalr	1172(ra) # 80001ec0 <_Znwm>

    struct Elem {
        friend class Scheduler;
        TCB* data;
        Elem* next;
        Elem(TCB *data, Elem* next) : data(data), next(next) {}
    80001a34:	00953023          	sd	s1,0(a0)
    80001a38:	00053423          	sd	zero,8(a0)
    if (tail) tail = tail -> next = newElem;
    80001a3c:	00004797          	auipc	a5,0x4
    80001a40:	50c7b783          	ld	a5,1292(a5) # 80005f48 <_ZN9Scheduler4tailE>
    80001a44:	02078263          	beqz	a5,80001a68 <_ZN9Scheduler3putEP3TCB+0x58>
    80001a48:	00a7b423          	sd	a0,8(a5)
    80001a4c:	00004797          	auipc	a5,0x4
    80001a50:	4ea7be23          	sd	a0,1276(a5) # 80005f48 <_ZN9Scheduler4tailE>
    else head = tail = newElem;
}
    80001a54:	01813083          	ld	ra,24(sp)
    80001a58:	01013403          	ld	s0,16(sp)
    80001a5c:	00813483          	ld	s1,8(sp)
    80001a60:	02010113          	addi	sp,sp,32
    80001a64:	00008067          	ret
    else head = tail = newElem;
    80001a68:	00004797          	auipc	a5,0x4
    80001a6c:	4d878793          	addi	a5,a5,1240 # 80005f40 <_ZN9Scheduler4headE>
    80001a70:	00a7b423          	sd	a0,8(a5)
    80001a74:	00a7b023          	sd	a0,0(a5)
}
    80001a78:	fddff06f          	j	80001a54 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001a7c <_ZN9Scheduler4peekEv>:

TCB* Scheduler::peek() {
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813423          	sd	s0,8(sp)
    80001a84:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80001a88:	00004517          	auipc	a0,0x4
    80001a8c:	4b853503          	ld	a0,1208(a0) # 80005f40 <_ZN9Scheduler4headE>
    80001a90:	00050463          	beqz	a0,80001a98 <_ZN9Scheduler4peekEv+0x1c>
    return head -> data;}
    80001a94:	00053503          	ld	a0,0(a0)
    80001a98:	00813403          	ld	s0,8(sp)
    80001a9c:	01010113          	addi	sp,sp,16
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00113423          	sd	ra,8(sp)
    80001aac:	00813023          	sd	s0,0(sp)
    80001ab0:	01010413          	addi	s0,sp,16
    return peek() == nullptr;
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	fc8080e7          	jalr	-56(ra) # 80001a7c <_ZN9Scheduler4peekEv>
}
    80001abc:	00153513          	seqz	a0,a0
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *, time_t) {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00813423          	sd	s0,8(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    // ...
}
    80001adc:	00813403          	ld	s0,8(sp)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80001ae8:	ff010113          	addi	sp,sp,-16
    80001aec:	00113423          	sd	ra,8(sp)
    80001af0:	00813023          	sd	s0,0(sp)
    80001af4:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001af8:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001afc:	00655513          	srli	a0,a0,0x6
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	744080e7          	jalr	1860(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001b08:	00813083          	ld	ra,8(sp)
    80001b0c:	00013403          	ld	s0,0(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00008067          	ret

0000000080001b18 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00113423          	sd	ra,8(sp)
    80001b20:	00813023          	sd	s0,0(sp)
    80001b24:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	940080e7          	jalr	-1728(ra) # 80002468 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00013403          	ld	s0,0(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <_Z7workerAPv>:
    MemoryAllocator::print();
}

sem_t mySem = nullptr;

void workerA(void * args) {
    80001b40:	fe010113          	addi	sp,sp,-32
    80001b44:	00113c23          	sd	ra,24(sp)
    80001b48:	00813823          	sd	s0,16(sp)
    80001b4c:	00913423          	sd	s1,8(sp)
    80001b50:	01213023          	sd	s2,0(sp)
    80001b54:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 3; i++) {
    80001b58:	00000493          	li	s1,0
    80001b5c:	00200793          	li	a5,2
    80001b60:	0497c663          	blt	a5,s1,80001bac <_Z7workerAPv+0x6c>
        sem_wait(mySem);
    80001b64:	00004917          	auipc	s2,0x4
    80001b68:	3ec90913          	addi	s2,s2,1004 # 80005f50 <mySem>
    80001b6c:	00093503          	ld	a0,0(s2)
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	924080e7          	jalr	-1756(ra) # 80001494 <_Z8sem_waitP3Sem>
        sem_signal(mySem);
    80001b78:	00093503          	ld	a0,0(s2)
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	9fc080e7          	jalr	-1540(ra) # 80001578 <_Z10sem_signalP3Sem>
        __putc('A');
    80001b84:	04100513          	li	a0,65
    80001b88:	00003097          	auipc	ra,0x3
    80001b8c:	fe4080e7          	jalr	-28(ra) # 80004b6c <__putc>
        __putc('\n');
    80001b90:	00a00513          	li	a0,10
    80001b94:	00003097          	auipc	ra,0x3
    80001b98:	fd8080e7          	jalr	-40(ra) # 80004b6c <__putc>
        thread_dispatch();
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	814080e7          	jalr	-2028(ra) # 800013b0 <_Z15thread_dispatchv>
    for (int i = 0; i < 3; i++) {
    80001ba4:	0014849b          	addiw	s1,s1,1
    80001ba8:	fb5ff06f          	j	80001b5c <_Z7workerAPv+0x1c>
    }
    for (int  i = 0; i<2; i++) {
    80001bac:	00000493          	li	s1,0
    80001bb0:	02c0006f          	j	80001bdc <_Z7workerAPv+0x9c>
        sem_wait(mySem);
    80001bb4:	00004517          	auipc	a0,0x4
    80001bb8:	39c53503          	ld	a0,924(a0) # 80005f50 <mySem>
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	8d8080e7          	jalr	-1832(ra) # 80001494 <_Z8sem_waitP3Sem>
        __putc('A');
    80001bc4:	04100513          	li	a0,65
    80001bc8:	00003097          	auipc	ra,0x3
    80001bcc:	fa4080e7          	jalr	-92(ra) # 80004b6c <__putc>
        thread_dispatch();
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	7e0080e7          	jalr	2016(ra) # 800013b0 <_Z15thread_dispatchv>
    for (int  i = 0; i<2; i++) {
    80001bd8:	0014849b          	addiw	s1,s1,1
    80001bdc:	00100793          	li	a5,1
    80001be0:	fc97dae3          	bge	a5,s1,80001bb4 <_Z7workerAPv+0x74>
    }

}
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	01013403          	ld	s0,16(sp)
    80001bec:	00813483          	ld	s1,8(sp)
    80001bf0:	00013903          	ld	s2,0(sp)
    80001bf4:	02010113          	addi	sp,sp,32
    80001bf8:	00008067          	ret

0000000080001bfc <_Z7workerBPv>:

void workerB(void * args) {
    80001bfc:	fe010113          	addi	sp,sp,-32
    80001c00:	00113c23          	sd	ra,24(sp)
    80001c04:	00813823          	sd	s0,16(sp)
    80001c08:	00913423          	sd	s1,8(sp)
    80001c0c:	01213023          	sd	s2,0(sp)
    80001c10:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++){
    80001c14:	00000493          	li	s1,0
    80001c18:	00400793          	li	a5,4
    80001c1c:	0497c663          	blt	a5,s1,80001c68 <_Z7workerBPv+0x6c>
        sem_wait(mySem);
    80001c20:	00004917          	auipc	s2,0x4
    80001c24:	33090913          	addi	s2,s2,816 # 80005f50 <mySem>
    80001c28:	00093503          	ld	a0,0(s2)
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	868080e7          	jalr	-1944(ra) # 80001494 <_Z8sem_waitP3Sem>
        sem_signal(mySem);
    80001c34:	00093503          	ld	a0,0(s2)
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	940080e7          	jalr	-1728(ra) # 80001578 <_Z10sem_signalP3Sem>
        __putc('B');
    80001c40:	04200513          	li	a0,66
    80001c44:	00003097          	auipc	ra,0x3
    80001c48:	f28080e7          	jalr	-216(ra) # 80004b6c <__putc>
        __putc('\n');
    80001c4c:	00a00513          	li	a0,10
    80001c50:	00003097          	auipc	ra,0x3
    80001c54:	f1c080e7          	jalr	-228(ra) # 80004b6c <__putc>
        thread_dispatch();
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	758080e7          	jalr	1880(ra) # 800013b0 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++){
    80001c60:	0014849b          	addiw	s1,s1,1
    80001c64:	fb5ff06f          	j	80001c18 <_Z7workerBPv+0x1c>
    }
}
    80001c68:	01813083          	ld	ra,24(sp)
    80001c6c:	01013403          	ld	s0,16(sp)
    80001c70:	00813483          	ld	s1,8(sp)
    80001c74:	00013903          	ld	s2,0(sp)
    80001c78:	02010113          	addi	sp,sp,32
    80001c7c:	00008067          	ret

0000000080001c80 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001c80:	fe010113          	addi	sp,sp,-32
    80001c84:	00113c23          	sd	ra,24(sp)
    80001c88:	00813823          	sd	s0,16(sp)
    80001c8c:	00913423          	sd	s1,8(sp)
    80001c90:	01213023          	sd	s2,0(sp)
    80001c94:	02010413          	addi	s0,sp,32
    void *addr = MemoryAllocator::mem_alloc(1);
    80001c98:	00100513          	li	a0,1
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	5a8080e7          	jalr	1448(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
    80001ca4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	93c080e7          	jalr	-1732(ra) # 800025e4 <_ZN15MemoryAllocator5printEv>
    int ret1 = MemoryAllocator::mem_free(addr);
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	7b4080e7          	jalr	1972(ra) # 80002468 <_ZN15MemoryAllocator8mem_freeEPKv>
    80001cbc:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001cc0:	00001097          	auipc	ra,0x1
    80001cc4:	924080e7          	jalr	-1756(ra) # 800025e4 <_ZN15MemoryAllocator5printEv>
    int ret2 = MemoryAllocator::mem_free(addr);
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	79c080e7          	jalr	1948(ra) # 80002468 <_ZN15MemoryAllocator8mem_freeEPKv>
    80001cd4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	90c080e7          	jalr	-1780(ra) # 800025e4 <_ZN15MemoryAllocator5printEv>
    if (ret1 == 0) __putc('G');
    80001ce0:	02090063          	beqz	s2,80001d00 <_Z19testMemoryAllocatorv+0x80>
    if (ret2 < 0) __putc('G');
    80001ce4:	0204c663          	bltz	s1,80001d10 <_Z19testMemoryAllocatorv+0x90>
}
    80001ce8:	01813083          	ld	ra,24(sp)
    80001cec:	01013403          	ld	s0,16(sp)
    80001cf0:	00813483          	ld	s1,8(sp)
    80001cf4:	00013903          	ld	s2,0(sp)
    80001cf8:	02010113          	addi	sp,sp,32
    80001cfc:	00008067          	ret
    if (ret1 == 0) __putc('G');
    80001d00:	04700513          	li	a0,71
    80001d04:	00003097          	auipc	ra,0x3
    80001d08:	e68080e7          	jalr	-408(ra) # 80004b6c <__putc>
    80001d0c:	fd9ff06f          	j	80001ce4 <_Z19testMemoryAllocatorv+0x64>
    if (ret2 < 0) __putc('G');
    80001d10:	04700513          	li	a0,71
    80001d14:	00003097          	auipc	ra,0x3
    80001d18:	e58080e7          	jalr	-424(ra) # 80004b6c <__putc>
}
    80001d1c:	fcdff06f          	j	80001ce8 <_Z19testMemoryAllocatorv+0x68>

0000000080001d20 <_Z11testCMemoryv>:
void testCMemory() {
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	8b0080e7          	jalr	-1872(ra) # 800025e4 <_ZN15MemoryAllocator5printEv>
    void* addr = mem_alloc(50);
    80001d3c:	03200513          	li	a0,50
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	500080e7          	jalr	1280(ra) # 80001240 <_Z9mem_allocm>
    80001d48:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	898080e7          	jalr	-1896(ra) # 800025e4 <_ZN15MemoryAllocator5printEv>
    mem_free(addr);
    80001d54:	00048513          	mv	a0,s1
    80001d58:	fffff097          	auipc	ra,0xfffff
    80001d5c:	538080e7          	jalr	1336(ra) # 80001290 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	884080e7          	jalr	-1916(ra) # 800025e4 <_ZN15MemoryAllocator5printEv>
}
    80001d68:	01813083          	ld	ra,24(sp)
    80001d6c:	01013403          	ld	s0,16(sp)
    80001d70:	00813483          	ld	s1,8(sp)
    80001d74:	02010113          	addi	sp,sp,32
    80001d78:	00008067          	ret

0000000080001d7c <main>:

thread_t threads[3];

int main() {
    80001d7c:	fe010113          	addi	sp,sp,-32
    80001d80:	00113c23          	sd	ra,24(sp)
    80001d84:	00813823          	sd	s0,16(sp)
    80001d88:	00913423          	sd	s1,8(sp)
    80001d8c:	02010413          	addi	s0,sp,32

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    80001d90:	00004797          	auipc	a5,0x4
    80001d94:	1407b783          	ld	a5,320(a5) # 80005ed0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    80001d98:	10579073          	csrw	stvec,a5

    //RISCV::mask_status(RISCV::SIE);

    MemoryAllocator::getAllocator();
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	5cc080e7          	jalr	1484(ra) # 80002368 <_ZN15MemoryAllocator12getAllocatorEv>
    Scheduler::init_scheduler();

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&threads[0], nullptr, nullptr); // main
    80001da4:	00004497          	auipc	s1,0x4
    80001da8:	1ac48493          	addi	s1,s1,428 # 80005f50 <mySem>
    80001dac:	00000613          	li	a2,0
    80001db0:	00000593          	li	a1,0
    80001db4:	00004517          	auipc	a0,0x4
    80001db8:	1a450513          	addi	a0,a0,420 # 80005f58 <threads>
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	520080e7          	jalr	1312(ra) # 800012dc <_Z13thread_createPP3TCBPFvPvES2_>

    //printInteger(r);

    TCB::running = threads[0];
    80001dc4:	0084b703          	ld	a4,8(s1)
    80001dc8:	00004797          	auipc	a5,0x4
    80001dcc:	1187b783          	ld	a5,280(a5) # 80005ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001dd0:	00e7b023          	sd	a4,0(a5)

    sem_open(&mySem, 1); // mutex
    80001dd4:	00100593          	li	a1,1
    80001dd8:	00048513          	mv	a0,s1
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	610080e7          	jalr	1552(ra) # 800013ec <_Z8sem_openPP3Semj>
    //printInteger(r);
    thread_create(&threads[1], &workerA, nullptr);
    80001de4:	00000613          	li	a2,0
    80001de8:	00000597          	auipc	a1,0x0
    80001dec:	d5858593          	addi	a1,a1,-680 # 80001b40 <_Z7workerAPv>
    80001df0:	00004517          	auipc	a0,0x4
    80001df4:	17050513          	addi	a0,a0,368 # 80005f60 <threads+0x8>
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	4e4080e7          	jalr	1252(ra) # 800012dc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], &workerB, nullptr);
    80001e00:	00000613          	li	a2,0
    80001e04:	00000597          	auipc	a1,0x0
    80001e08:	df858593          	addi	a1,a1,-520 # 80001bfc <_Z7workerBPv>
    80001e0c:	00004517          	auipc	a0,0x4
    80001e10:	15c50513          	addi	a0,a0,348 # 80005f68 <threads+0x10>
    80001e14:	fffff097          	auipc	ra,0xfffff
    80001e18:	4c8080e7          	jalr	1224(ra) # 800012dc <_Z13thread_createPP3TCBPFvPvES2_>
    80001e1c:	00c0006f          	j	80001e28 <main+0xac>

    while (!threads[1]->isFinished() || !threads[2]->isFinished()) thread_dispatch();
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	590080e7          	jalr	1424(ra) # 800013b0 <_Z15thread_dispatchv>
    80001e28:	00004797          	auipc	a5,0x4
    80001e2c:	1387b783          	ld	a5,312(a5) # 80005f60 <threads+0x8>
    state getState() const {return current_state;}
    time_t getTimeSlice() const {return time_slice;}

    static bool isRunnable();

    bool isFinished() {return current_state == state::FINISHED;}
    80001e30:	0587a703          	lw	a4,88(a5)
    80001e34:	00300793          	li	a5,3
    80001e38:	fef714e3          	bne	a4,a5,80001e20 <main+0xa4>
    80001e3c:	00004797          	auipc	a5,0x4
    80001e40:	12c7b783          	ld	a5,300(a5) # 80005f68 <threads+0x10>
    80001e44:	0587a703          	lw	a4,88(a5)
    80001e48:	00300793          	li	a5,3
    80001e4c:	fcf71ae3          	bne	a4,a5,80001e20 <main+0xa4>
//    if (!threads[0]) __putc('n');
//    thread_create(&threads[1], workerA, nullptr);
//    thread_create(&threads[2], workerB, nullptr);
//    while (!threads[1]->isFinished() || !threads[2]->isFinished()) thread_dispatch();
    return 0;
}
    80001e50:	00000513          	li	a0,0
    80001e54:	01813083          	ld	ra,24(sp)
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	00813483          	ld	s1,8(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret

0000000080001e68 <_ZN6ThreadD1Ev>:

Thread::Thread() {

}

Thread::~Thread() {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00813423          	sd	s0,8(sp)
    80001e70:	01010413          	addi	s0,sp,16

}
    80001e74:	00813403          	ld	s0,8(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN6Thread7wrapperEPv>:

void Thread::wrapper(void *arg) {
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    Thread* t = (Thread*) arg;
    if (t->body) t->body(t->arg);
    80001e90:	01053783          	ld	a5,16(a0)
    80001e94:	00078e63          	beqz	a5,80001eb0 <_ZN6Thread7wrapperEPv+0x30>
    80001e98:	01853503          	ld	a0,24(a0)
    80001e9c:	000780e7          	jalr	a5
    else t->run(); /// ????????????????????
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret
    else t->run(); /// ????????????????????
    80001eb0:	00053783          	ld	a5,0(a0)
    80001eb4:	0107b783          	ld	a5,16(a5)
    80001eb8:	000780e7          	jalr	a5
}
    80001ebc:	fe5ff06f          	j	80001ea0 <_ZN6Thread7wrapperEPv+0x20>

0000000080001ec0 <_Znwm>:
void* operator new (size_t size) {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ed0:	fffff097          	auipc	ra,0xfffff
    80001ed4:	370080e7          	jalr	880(ra) # 80001240 <_Z9mem_allocm>
}
    80001ed8:	00813083          	ld	ra,8(sp)
    80001edc:	00013403          	ld	s0,0(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <_Znam>:
void* operator new[](size_t size) {
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00113423          	sd	ra,8(sp)
    80001ef0:	00813023          	sd	s0,0(sp)
    80001ef4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	348080e7          	jalr	840(ra) # 80001240 <_Z9mem_allocm>
}
    80001f00:	00813083          	ld	ra,8(sp)
    80001f04:	00013403          	ld	s0,0(sp)
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret

0000000080001f10 <_ZdaPv>:
void operator delete[](void* ptr) noexcept {
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00113423          	sd	ra,8(sp)
    80001f18:	00813023          	sd	s0,0(sp)
    80001f1c:	01010413          	addi	s0,sp,16
     mem_free(ptr);
    80001f20:	fffff097          	auipc	ra,0xfffff
    80001f24:	370080e7          	jalr	880(ra) # 80001290 <_Z8mem_freePv>
}
    80001f28:	00813083          	ld	ra,8(sp)
    80001f2c:	00013403          	ld	s0,0(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00113423          	sd	ra,8(sp)
    80001f40:	00813023          	sd	s0,0(sp)
    80001f44:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001f48:	fffff097          	auipc	ra,0xfffff
    80001f4c:	348080e7          	jalr	840(ra) # 80001290 <_Z8mem_freePv>
}
    80001f50:	00813083          	ld	ra,8(sp)
    80001f54:	00013403          	ld	s0,0(sp)
    80001f58:	01010113          	addi	sp,sp,16
    80001f5c:	00008067          	ret

0000000080001f60 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f60:	ff010113          	addi	sp,sp,-16
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	00813023          	sd	s0,0(sp)
    80001f6c:	01010413          	addi	s0,sp,16
}
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	fc8080e7          	jalr	-56(ra) # 80001f38 <_ZdlPv>
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	00004797          	auipc	a5,0x4
    80001f98:	f0c78793          	addi	a5,a5,-244 # 80005ea0 <_ZTV6Thread+0x10>
    80001f9c:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001fa0:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001fa4:	00c53c23          	sd	a2,24(a0)
}
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00813423          	sd	s0,8(sp)
    80001fbc:	01010413          	addi	s0,sp,16
}
    80001fc0:	00000513          	li	a0,0
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
}
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <_ZN6Thread5startEv>:
int Thread::start() {
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00113423          	sd	ra,8(sp)
    80001ff0:	00813023          	sd	s0,0(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, &wrapper, this);
    80001ff8:	00050613          	mv	a2,a0
    80001ffc:	00000597          	auipc	a1,0x0
    80002000:	e8458593          	addi	a1,a1,-380 # 80001e80 <_ZN6Thread7wrapperEPv>
    80002004:	00850513          	addi	a0,a0,8
    80002008:	fffff097          	auipc	ra,0xfffff
    8000200c:	2d4080e7          	jalr	724(ra) # 800012dc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002010:	00813083          	ld	ra,8(sp)
    80002014:	00013403          	ld	s0,0(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00813423          	sd	s0,8(sp)
    80002028:	01010413          	addi	s0,sp,16
    8000202c:	00004797          	auipc	a5,0x4
    80002030:	e7478793          	addi	a5,a5,-396 # 80005ea0 <_ZTV6Thread+0x10>
    80002034:	00f53023          	sd	a5,0(a0)
}
    80002038:	00813403          	ld	s0,8(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    80002050:	00813403          	ld	s0,8(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <_ZN5RISCV10popSppSpieEv>:
extern void printInteger(uint64);
extern void printString(char*);

// first time running a thread, sepc inside of wrapper

void RISCV::popSppSpie() {
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00813423          	sd	s0,8(sp)
    80002064:	01010413          	addi	s0,sp,16

    // not inline ( ra reg )
    // pop sstatus spp and spie bits

    __asm__ volatile ("csrw sepc, ra");
    80002068:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000206c:	10200073          	sret

    // => pop spp and spie !
    // exit from supervisor mode
}
    80002070:	00813403          	ld	s0,8(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN5RISCV16handle_interruptEv>:

void RISCV::handle_interrupt() {
    8000207c:	fb010113          	addi	sp,sp,-80
    80002080:	04113423          	sd	ra,72(sp)
    80002084:	04813023          	sd	s0,64(sp)
    80002088:	02913c23          	sd	s1,56(sp)
    8000208c:	03213823          	sd	s2,48(sp)
    80002090:	05010413          	addi	s0,sp,80
    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    80002094:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002098:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    8000209c:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    800020a0:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    800020a4:	00070693          	mv	a3,a4

};

inline uint64 RISCV::rd_scause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    800020a8:	142027f3          	csrr	a5,scause
    800020ac:	faf43c23          	sd	a5,-72(s0)
    return value;
    800020b0:	fb843703          	ld	a4,-72(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    800020b4:	00100793          	li	a5,1
    800020b8:	03b79793          	slli	a5,a5,0x3b
    800020bc:	00178793          	addi	a5,a5,1
    800020c0:	06f70063          	beq	a4,a5,80002120 <_ZN5RISCV16handle_interruptEv+0xa4>
            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }
        mask_sip(mask_sip_sie::SS);

    } else if (scause == EXTERNAL) {
    800020c4:	00100793          	li	a5,1
    800020c8:	03b79793          	slli	a5,a5,0x3b
    800020cc:	00978793          	addi	a5,a5,9
    800020d0:	0cf70c63          	beq	a4,a5,800021a8 <_ZN5RISCV16handle_interruptEv+0x12c>
        // external interrupt - console
        console_handler();
        // plus INVALID INTERRUPT

    } else if (scause == U_ECALL || scause == S_ECALL){
    800020d4:	ff870713          	addi	a4,a4,-8
    800020d8:	00100793          	li	a5,1
    800020dc:	06e7ee63          	bltu	a5,a4,80002158 <_ZN5RISCV16handle_interruptEv+0xdc>
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    800020e0:	141027f3          	csrr	a5,sepc
    800020e4:	fcf43c23          	sd	a5,-40(s0)
    return value;
    800020e8:	fd843483          	ld	s1,-40(s0)
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
    800020ec:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    800020f0:	100027f3          	csrr	a5,sstatus
    800020f4:	fcf43823          	sd	a5,-48(s0)
    return value;
    800020f8:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    800020fc:	02600793          	li	a5,38
    80002100:	0b07ee63          	bltu	a5,a6,800021bc <_ZN5RISCV16handle_interruptEv+0x140>
    80002104:	00281813          	slli	a6,a6,0x2
    80002108:	00003717          	auipc	a4,0x3
    8000210c:	f1870713          	addi	a4,a4,-232 # 80005020 <CONSOLE_STATUS+0x10>
    80002110:	00e80833          	add	a6,a6,a4
    80002114:	00082783          	lw	a5,0(a6)
    80002118:	00e787b3          	add	a5,a5,a4
    8000211c:	00078067          	jr	a5
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002120:	00200793          	li	a5,2
    80002124:	1447b073          	csrc	sip,a5
        TCB::time_slice_count ++;
    80002128:	00004717          	auipc	a4,0x4
    8000212c:	dc873703          	ld	a4,-568(a4) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002130:	00073783          	ld	a5,0(a4)
    80002134:	00178793          	addi	a5,a5,1
    80002138:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    8000213c:	00004717          	auipc	a4,0x4
    80002140:	da473703          	ld	a4,-604(a4) # 80005ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002144:	00073703          	ld	a4,0(a4)
    time_t getTimeSlice() const {return time_slice;}
    80002148:	02873703          	ld	a4,40(a4)
    8000214c:	02e7f263          	bgeu	a5,a4,80002170 <_ZN5RISCV16handle_interruptEv+0xf4>
    80002150:	00200793          	li	a5,2
    80002154:	1447b073          	csrc	sip,a5
        wr_sstatus(sstatus);

    } else {
        // INVALID INTERRUPT CODE
    }
}
    80002158:	04813083          	ld	ra,72(sp)
    8000215c:	04013403          	ld	s0,64(sp)
    80002160:	03813483          	ld	s1,56(sp)
    80002164:	03013903          	ld	s2,48(sp)
    80002168:	05010113          	addi	sp,sp,80
    8000216c:	00008067          	ret
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002170:	141027f3          	csrr	a5,sepc
    80002174:	fcf43423          	sd	a5,-56(s0)
    return value;
    80002178:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    8000217c:	100027f3          	csrr	a5,sstatus
    80002180:	fcf43023          	sd	a5,-64(s0)
    return value;
    80002184:	fc043903          	ld	s2,-64(s0)
            TCB::time_slice_count = 0; // new running thread
    80002188:	00004797          	auipc	a5,0x4
    8000218c:	d687b783          	ld	a5,-664(a5) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002190:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002194:	00000097          	auipc	ra,0x0
    80002198:	7f8080e7          	jalr	2040(ra) # 8000298c <_ZN3TCB8dispatchEv>
}

inline void RISCV::wr_sstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    8000219c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    800021a0:	14149073          	csrw	sepc,s1
}
    800021a4:	fadff06f          	j	80002150 <_ZN5RISCV16handle_interruptEv+0xd4>
        console_handler();
    800021a8:	00003097          	auipc	ra,0x3
    800021ac:	a38080e7          	jalr	-1480(ra) # 80004be0 <console_handler>
    800021b0:	fa9ff06f          	j	80002158 <_ZN5RISCV16handle_interruptEv+0xdc>
                MemoryAllocator::mem_alloc((size_t)a1);
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	090080e7          	jalr	144(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    800021bc:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    800021c0:	10091073          	csrw	sstatus,s2
}
    800021c4:	f95ff06f          	j	80002158 <_ZN5RISCV16handle_interruptEv+0xdc>
                MemoryAllocator::mem_free((void *)a1);
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	2a0080e7          	jalr	672(ra) # 80002468 <_ZN15MemoryAllocator8mem_freeEPKv>
                break;
    800021d0:	fedff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	674080e7          	jalr	1652(ra) # 80002848 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    800021dc:	fe1ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                TCB::_threadExit();
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	86c080e7          	jalr	-1940(ra) # 80002a4c <_ZN3TCB11_threadExitEv>
                break;
    800021e8:	fd5ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                TCB::dispatch();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	7a0080e7          	jalr	1952(ra) # 8000298c <_ZN3TCB8dispatchEv>
                break;
    800021f4:	fc9ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                Sem::open((sem_t*)a1, (unsigned int)a2);
    800021f8:	0005859b          	sext.w	a1,a1
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	688080e7          	jalr	1672(ra) # 80001884 <_ZN3Sem4openEPPS_j>
                break;
    80002204:	fb9ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                Sem::s_close((sem_t)a1); // a1 == handle
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	700080e7          	jalr	1792(ra) # 80001908 <_ZN3Sem7s_closeEPS_>
                break;
    80002210:	fadff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                ((sem_t)a1)->wait(); // a1 <=> handle
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	550080e7          	jalr	1360(ra) # 80001764 <_ZN3Sem4waitEv>
                break;
    8000221c:	fa1ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                ((sem_t)a1)->signal(); // a1 <=> handle
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	5f0080e7          	jalr	1520(ra) # 80001810 <_ZN3Sem6signalEv>
                break;
    80002228:	f95ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                ((sem_t)a1)->timedWait((time_t)a2);
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	63c080e7          	jalr	1596(ra) # 80001868 <_ZN3Sem9timedWaitEm>
                break;
    80002234:	f89ff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>
                ((sem_t)a1)->trywait();
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	460080e7          	jalr	1120(ra) # 80001698 <_ZN3Sem7trywaitEv>
                break;
    80002240:	f7dff06f          	j	800021bc <_ZN5RISCV16handle_interruptEv+0x140>

0000000080002244 <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00813423          	sd	s0,8(sp)
    8000224c:	01010413          	addi	s0,sp,16

    //size je broj blokova koje zelimo zauzeti
    if (size <= 0) return nullptr;
    80002250:	10050863          	beqz	a0,80002360 <_ZN15MemoryAllocator9mem_allocEm+0x11c>

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;
    80002254:	00651793          	slli	a5,a0,0x6

    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002258:	00004517          	auipc	a0,0x4
    8000225c:	d1853503          	ld	a0,-744(a0) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
    80002260:	0280006f          	j	80002288 <_ZN15MemoryAllocator9mem_allocEm+0x44>

        if (curr->size >= byte_size) {

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
                if (curr->next) curr->next->prev = curr->prev;
    80002264:	00053703          	ld	a4,0(a0)
    80002268:	00070663          	beqz	a4,80002274 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    8000226c:	00853683          	ld	a3,8(a0)
    80002270:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    80002274:	00853703          	ld	a4,8(a0)
    80002278:	08070063          	beqz	a4,800022f8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    8000227c:	00053683          	ld	a3,0(a0)
    80002280:	00d73023          	sd	a3,0(a4)
    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002284:	00053503          	ld	a0,0(a0)
    80002288:	0a050c63          	beqz	a0,80002340 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if (curr->size >= byte_size) {
    8000228c:	01053703          	ld	a4,16(a0)
    80002290:	fef76ae3          	bltu	a4,a5,80002284 <_ZN15MemoryAllocator9mem_allocEm+0x40>
            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    80002294:	40f70733          	sub	a4,a4,a5
    80002298:	01700693          	li	a3,23
    8000229c:	fce6f4e3          	bgeu	a3,a4,80002264 <_ZN15MemoryAllocator9mem_allocEm+0x20>
                else free_mem_head = curr->next;
                // first free seg
                continue;
            } else {
                // allocate
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    800022a0:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    800022a4:	00053683          	ld	a3,0(a0)
    800022a8:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    800022ac:	00853683          	ld	a3,8(a0)
    800022b0:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    800022b4:	01053683          	ld	a3,16(a0)
    800022b8:	40f686b3          	sub	a3,a3,a5
    800022bc:	00d73823          	sd	a3,16(a4)
                // update pointers of next
                if (curr->next) curr->next->prev = remaining;
    800022c0:	00053683          	ld	a3,0(a0)
    800022c4:	00068463          	beqz	a3,800022cc <_ZN15MemoryAllocator9mem_allocEm+0x88>
    800022c8:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    800022cc:	00853683          	ld	a3,8(a0)
    800022d0:	02068c63          	beqz	a3,80002308 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    800022d4:	00e6b023          	sd	a4,0(a3)
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    800022d8:	00004717          	auipc	a4,0x4
    800022dc:	ca073703          	ld	a4,-864(a4) # 80005f78 <_ZN15MemoryAllocator13used_mem_headE>
    800022e0:	02e56a63          	bltu	a0,a4,80002314 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    800022e4:	06070463          	beqz	a4,8000234c <_ZN15MemoryAllocator9mem_allocEm+0x108>
            else for (prev = used_mem_head; prev->next != 0; prev = prev->next);
    800022e8:	00070693          	mv	a3,a4
    800022ec:	00073703          	ld	a4,0(a4)
    800022f0:	fe071ce3          	bnez	a4,800022e8 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
    800022f4:	0240006f          	j	80002318 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
                else free_mem_head = curr->next;
    800022f8:	00053703          	ld	a4,0(a0)
    800022fc:	00004697          	auipc	a3,0x4
    80002300:	c6e6ba23          	sd	a4,-908(a3) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
                continue;
    80002304:	f81ff06f          	j	80002284 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                else free_mem_head = remaining;
    80002308:	00004697          	auipc	a3,0x4
    8000230c:	c6e6b423          	sd	a4,-920(a3) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
    80002310:	fc9ff06f          	j	800022d8 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80002314:	00000693          	li	a3,0

            curr->size = byte_size;
    80002318:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    8000231c:	00d53423          	sd	a3,8(a0)
            if (prev) {
    80002320:	02068a63          	beqz	a3,80002354 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                curr->next = prev->next;
    80002324:	0006b783          	ld	a5,0(a3)
    80002328:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    8000232c:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    80002330:	00053783          	ld	a5,0(a0)
    80002334:	00078463          	beqz	a5,8000233c <_ZN15MemoryAllocator9mem_allocEm+0xf8>
    80002338:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    8000233c:	01850513          	addi	a0,a0,24
        }
    }

    // free memory not found :(
    return nullptr;
}
    80002340:	00813403          	ld	s0,8(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    8000234c:	00070693          	mv	a3,a4
    80002350:	fc9ff06f          	j	80002318 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
            else used_mem_head = curr;
    80002354:	00004797          	auipc	a5,0x4
    80002358:	c2a7b223          	sd	a0,-988(a5) # 80005f78 <_ZN15MemoryAllocator13used_mem_headE>
    8000235c:	fd5ff06f          	j	80002330 <_ZN15MemoryAllocator9mem_allocEm+0xec>
    if (size <= 0) return nullptr;
    80002360:	00000513          	li	a0,0
    80002364:	fddff06f          	j	80002340 <_ZN15MemoryAllocator9mem_allocEm+0xfc>

0000000080002368 <_ZN15MemoryAllocator12getAllocatorEv>:
    if (allocator == 0) {
    80002368:	00004797          	auipc	a5,0x4
    8000236c:	c187b783          	ld	a5,-1000(a5) # 80005f80 <_ZN15MemoryAllocator9allocatorE>
    80002370:	00078863          	beqz	a5,80002380 <_ZN15MemoryAllocator12getAllocatorEv+0x18>
}
    80002374:	00004517          	auipc	a0,0x4
    80002378:	c0c53503          	ld	a0,-1012(a0) # 80005f80 <_ZN15MemoryAllocator9allocatorE>
    8000237c:	00008067          	ret
MemoryAllocator* MemoryAllocator::getAllocator() {
    80002380:	fe010113          	addi	sp,sp,-32
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00913423          	sd	s1,8(sp)
    80002390:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    80002394:	00004697          	auipc	a3,0x4
    80002398:	b346b683          	ld	a3,-1228(a3) # 80005ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000239c:	0006b783          	ld	a5,0(a3)
    800023a0:	00004497          	auipc	s1,0x4
    800023a4:	bd048493          	addi	s1,s1,-1072 # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
    800023a8:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    800023ac:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    800023b0:	0004b703          	ld	a4,0(s1)
    800023b4:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800023b8:	00004797          	auipc	a5,0x4
    800023bc:	b307b783          	ld	a5,-1232(a5) # 80005ee8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023c0:	0007b783          	ld	a5,0(a5)
    800023c4:	0006b683          	ld	a3,0(a3)
    800023c8:	40d787b3          	sub	a5,a5,a3
    800023cc:	00178793          	addi	a5,a5,1
    800023d0:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    800023d4:	00100513          	li	a0,1
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	e6c080e7          	jalr	-404(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
    800023e0:	00a4b823          	sd	a0,16(s1)
}
    800023e4:	00004517          	auipc	a0,0x4
    800023e8:	b9c53503          	ld	a0,-1124(a0) # 80005f80 <_ZN15MemoryAllocator9allocatorE>
    800023ec:	01813083          	ld	ra,24(sp)
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	00813483          	ld	s1,8(sp)
    800023f8:	02010113          	addi	sp,sp,32
    800023fc:	00008067          	ret

0000000080002400 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    8000240c:	04050663          	beqz	a0,80002458 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    80002410:	00053783          	ld	a5,0(a0)
    80002414:	04078663          	beqz	a5,80002460 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80002418:	01053703          	ld	a4,16(a0)
    8000241c:	00e506b3          	add	a3,a0,a4
    80002420:	00d78a63          	beq	a5,a3,80002434 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
    80002424:	00000513          	li	a0,0
}
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret
        curr->size += curr->next->size;
    80002434:	0107b683          	ld	a3,16(a5)
    80002438:	00d70733          	add	a4,a4,a3
    8000243c:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    80002440:	0007b783          	ld	a5,0(a5)
    80002444:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80002448:	00078463          	beqz	a5,80002450 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    8000244c:	00a7b423          	sd	a0,8(a5)
        return 1; // success status
    80002450:	00100513          	li	a0,1
    80002454:	fd5ff06f          	j	80002428 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (!curr) return 0;
    80002458:	00000513          	li	a0,0
    8000245c:	fcdff06f          	j	80002428 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    80002460:	00000513          	li	a0,0
    80002464:	fc5ff06f          	j	80002428 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080002468 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80002468:	14050a63          	beqz	a0,800025bc <_ZN15MemoryAllocator8mem_freeEPKv+0x154>
    8000246c:	00004797          	auipc	a5,0x4
    80002470:	a7c7b783          	ld	a5,-1412(a5) # 80005ee8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002474:	0007b783          	ld	a5,0(a5)
    80002478:	14a7e663          	bltu	a5,a0,800025c4 <_ZN15MemoryAllocator8mem_freeEPKv+0x15c>
    8000247c:	00004797          	auipc	a5,0x4
    80002480:	a4c7b783          	ld	a5,-1460(a5) # 80005ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002484:	0007b783          	ld	a5,0(a5)
    80002488:	14f56263          	bltu	a0,a5,800025cc <_ZN15MemoryAllocator8mem_freeEPKv+0x164>
int MemoryAllocator::mem_free(const void* addr) {
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	01213023          	sd	s2,0(sp)
    800024a0:	02010413          	addi	s0,sp,32
    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    800024a4:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    800024a8:	00004797          	auipc	a5,0x4
    800024ac:	ad07b783          	ld	a5,-1328(a5) # 80005f78 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    800024b0:	00078863          	beqz	a5,800024c0 <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    800024b4:	0097f663          	bgeu	a5,s1,800024c0 <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    800024b8:	0007b783          	ld	a5,0(a5)
    800024bc:	ff5ff06f          	j	800024b0 <_ZN15MemoryAllocator8mem_freeEPKv+0x48>
    if (block != tmp || !tmp) return -1;
    800024c0:	10979a63          	bne	a5,s1,800025d4 <_ZN15MemoryAllocator8mem_freeEPKv+0x16c>
    800024c4:	10078c63          	beqz	a5,800025dc <_ZN15MemoryAllocator8mem_freeEPKv+0x174>
    if (tmp->prev) tmp->prev->next = tmp->next;
    800024c8:	0087b703          	ld	a4,8(a5)
    800024cc:	06070c63          	beqz	a4,80002544 <_ZN15MemoryAllocator8mem_freeEPKv+0xdc>
    800024d0:	0007b683          	ld	a3,0(a5)
    800024d4:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    800024d8:	0007b703          	ld	a4,0(a5)
    800024dc:	00070663          	beqz	a4,800024e8 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    800024e0:	0087b783          	ld	a5,8(a5)
    800024e4:	00f73423          	sd	a5,8(a4)
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    800024e8:	00004797          	auipc	a5,0x4
    800024ec:	a887b783          	ld	a5,-1400(a5) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
    800024f0:	06078863          	beqz	a5,80002560 <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    800024f4:	06f4e463          	bltu	s1,a5,8000255c <_ZN15MemoryAllocator8mem_freeEPKv+0xf4>
    else for (tmp = free_mem_head; tmp->next != 0 && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    800024f8:	00078913          	mv	s2,a5
    800024fc:	0007b783          	ld	a5,0(a5)
    80002500:	00078463          	beqz	a5,80002508 <_ZN15MemoryAllocator8mem_freeEPKv+0xa0>
    80002504:	fe97eae3          	bltu	a5,s1,800024f8 <_ZN15MemoryAllocator8mem_freeEPKv+0x90>
    if (tmp == nullptr) {
    80002508:	04090663          	beqz	s2,80002554 <_ZN15MemoryAllocator8mem_freeEPKv+0xec>
        block->next = tmp->next;
    8000250c:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    80002510:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80002514:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80002518:	fe853783          	ld	a5,-24(a0)
    8000251c:	00078463          	beqz	a5,80002524 <_ZN15MemoryAllocator8mem_freeEPKv+0xbc>
    80002520:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80002524:	00048513          	mv	a0,s1
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	ed8080e7          	jalr	-296(ra) # 80002400 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    80002530:	00090513          	mv	a0,s2
    80002534:	00000097          	auipc	ra,0x0
    80002538:	ecc080e7          	jalr	-308(ra) # 80002400 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    8000253c:	00000513          	li	a0,0
    80002540:	05c0006f          	j	8000259c <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    else used_mem_head = tmp->next;
    80002544:	0007b703          	ld	a4,0(a5)
    80002548:	00004697          	auipc	a3,0x4
    8000254c:	a2e6b823          	sd	a4,-1488(a3) # 80005f78 <_ZN15MemoryAllocator13used_mem_headE>
    80002550:	f89ff06f          	j	800024d8 <_ZN15MemoryAllocator8mem_freeEPKv+0x70>
    80002554:	00090793          	mv	a5,s2
    80002558:	0080006f          	j	80002560 <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    8000255c:	00000793          	li	a5,0
        block -> prev = tmp;
    80002560:	fef53823          	sd	a5,-16(a0)
        if (free_mem_head) {
    80002564:	00004797          	auipc	a5,0x4
    80002568:	a0c7b783          	ld	a5,-1524(a5) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
    8000256c:	04078463          	beqz	a5,800025b4 <_ZN15MemoryAllocator8mem_freeEPKv+0x14c>
            free_mem_head->prev = block;
    80002570:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    80002574:	fef53423          	sd	a5,-24(a0)
            tryToJoin(block);
    80002578:	00048513          	mv	a0,s1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	e84080e7          	jalr	-380(ra) # 80002400 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    80002584:	00004797          	auipc	a5,0x4
    80002588:	9e97b623          	sd	s1,-1556(a5) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    8000258c:	00048513          	mv	a0,s1
    80002590:	00000097          	auipc	ra,0x0
    80002594:	e70080e7          	jalr	-400(ra) # 80002400 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80002598:	00000513          	li	a0,0
}
    8000259c:	01813083          	ld	ra,24(sp)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	00813483          	ld	s1,8(sp)
    800025a8:	00013903          	ld	s2,0(sp)
    800025ac:	02010113          	addi	sp,sp,32
    800025b0:	00008067          	ret
        else block -> next = nullptr;
    800025b4:	fe053423          	sd	zero,-24(a0)
    800025b8:	fcdff06f          	j	80002584 <_ZN15MemoryAllocator8mem_freeEPKv+0x11c>
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    800025bc:	fff00513          	li	a0,-1
    800025c0:	00008067          	ret
    800025c4:	fff00513          	li	a0,-1
    800025c8:	00008067          	ret
    800025cc:	fff00513          	li	a0,-1
}
    800025d0:	00008067          	ret
    if (block != tmp || !tmp) return -1;
    800025d4:	fff00513          	li	a0,-1
    800025d8:	fc5ff06f          	j	8000259c <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    800025dc:	fff00513          	li	a0,-1
    800025e0:	fbdff06f          	j	8000259c <_ZN15MemoryAllocator8mem_freeEPKv+0x134>

00000000800025e4 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800025e4:	fe010113          	addi	sp,sp,-32
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	00813823          	sd	s0,16(sp)
    800025f0:	00913423          	sd	s1,8(sp)
    800025f4:	02010413          	addi	s0,sp,32

    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    800025f8:	00004497          	auipc	s1,0x4
    800025fc:	9784b483          	ld	s1,-1672(s1) # 80005f70 <_ZN15MemoryAllocator13free_mem_headE>
    80002600:	02048263          	beqz	s1,80002624 <_ZN15MemoryAllocator5printEv+0x40>
        __putc('f');
    80002604:	06600513          	li	a0,102
    80002608:	00002097          	auipc	ra,0x2
    8000260c:	564080e7          	jalr	1380(ra) # 80004b6c <__putc>
        __putc('\n');
    80002610:	00a00513          	li	a0,10
    80002614:	00002097          	auipc	ra,0x2
    80002618:	558080e7          	jalr	1368(ra) # 80004b6c <__putc>
    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    8000261c:	0004b483          	ld	s1,0(s1)
    80002620:	fe1ff06f          	j	80002600 <_ZN15MemoryAllocator5printEv+0x1c>
    }

    if (!used_mem_head) __putc('x');
    80002624:	00004797          	auipc	a5,0x4
    80002628:	9547b783          	ld	a5,-1708(a5) # 80005f78 <_ZN15MemoryAllocator13used_mem_headE>
    8000262c:	02078863          	beqz	a5,8000265c <_ZN15MemoryAllocator5printEv+0x78>

    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    80002630:	00004497          	auipc	s1,0x4
    80002634:	9484b483          	ld	s1,-1720(s1) # 80005f78 <_ZN15MemoryAllocator13used_mem_headE>
    80002638:	02048a63          	beqz	s1,8000266c <_ZN15MemoryAllocator5printEv+0x88>
        __putc('u');
    8000263c:	07500513          	li	a0,117
    80002640:	00002097          	auipc	ra,0x2
    80002644:	52c080e7          	jalr	1324(ra) # 80004b6c <__putc>
        __putc('\n');
    80002648:	00a00513          	li	a0,10
    8000264c:	00002097          	auipc	ra,0x2
    80002650:	520080e7          	jalr	1312(ra) # 80004b6c <__putc>
    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    80002654:	0004b483          	ld	s1,0(s1)
    80002658:	fe1ff06f          	j	80002638 <_ZN15MemoryAllocator5printEv+0x54>
    if (!used_mem_head) __putc('x');
    8000265c:	07800513          	li	a0,120
    80002660:	00002097          	auipc	ra,0x2
    80002664:	50c080e7          	jalr	1292(ra) # 80004b6c <__putc>
    80002668:	fc9ff06f          	j	80002630 <_ZN15MemoryAllocator5printEv+0x4c>
    }

    __putc('\n');
    8000266c:	00a00513          	li	a0,10
    80002670:	00002097          	auipc	ra,0x2
    80002674:	4fc080e7          	jalr	1276(ra) # 80004b6c <__putc>
}
    80002678:	01813083          	ld	ra,24(sp)
    8000267c:	01013403          	ld	s0,16(sp)
    80002680:	00813483          	ld	s1,8(sp)
    80002684:	02010113          	addi	sp,sp,32
    80002688:	00008067          	ret

000000008000268c <_Z11printStringPKc>:
#include "../lib/console.h"
#include "../h/print.hpp"

void printString(char const* string) {
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00113c23          	sd	ra,24(sp)
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
    while (*string != '\0') {
    800026a4:	0004c503          	lbu	a0,0(s1)
    800026a8:	00050a63          	beqz	a0,800026bc <_Z11printStringPKc+0x30>
        __putc(*string);
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	4c0080e7          	jalr	1216(ra) # 80004b6c <__putc>
        string++;
    800026b4:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800026b8:	fedff06f          	j	800026a4 <_Z11printStringPKc+0x18>
    }
}
    800026bc:	01813083          	ld	ra,24(sp)
    800026c0:	01013403          	ld	s0,16(sp)
    800026c4:	00813483          	ld	s1,8(sp)
    800026c8:	02010113          	addi	sp,sp,32
    800026cc:	00008067          	ret

00000000800026d0 <_Z12printIntegerm>:

void printInteger(uint64 integer) {
    800026d0:	fd010113          	addi	sp,sp,-48
    800026d4:	02113423          	sd	ra,40(sp)
    800026d8:	02813023          	sd	s0,32(sp)
    800026dc:	00913c23          	sd	s1,24(sp)
    800026e0:	03010413          	addi	s0,sp,48
    uint x;

    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else x = integer;
    800026e4:	0005051b          	sext.w	a0,a0
    int i = 0, neg = 0;
    800026e8:	00000493          	li	s1,0


    do {
        buf[i++] = digits[x % 10];
    800026ec:	00a00613          	li	a2,10
    800026f0:	02c5773b          	remuw	a4,a0,a2
    800026f4:	02071693          	slli	a3,a4,0x20
    800026f8:	0206d693          	srli	a3,a3,0x20
    800026fc:	00003717          	auipc	a4,0x3
    80002700:	9c470713          	addi	a4,a4,-1596 # 800050c0 <_ZZ12printIntegermE6digits>
    80002704:	00d70733          	add	a4,a4,a3
    80002708:	00074703          	lbu	a4,0(a4)
    8000270c:	fe040693          	addi	a3,s0,-32
    80002710:	009687b3          	add	a5,a3,s1
    80002714:	0014849b          	addiw	s1,s1,1
    80002718:	fee78823          	sb	a4,-16(a5)
        x = x/10;
    8000271c:	0005071b          	sext.w	a4,a0
    80002720:	02c5553b          	divuw	a0,a0,a2
    }
    while ( x != 0);
    80002724:	00900793          	li	a5,9
    80002728:	fce7e2e3          	bltu	a5,a4,800026ec <_Z12printIntegerm+0x1c>

    if (neg) buf[i++] = '-';

    while (--i >= 0) __putc(buf[i]);
    8000272c:	fff4849b          	addiw	s1,s1,-1
    80002730:	0004ce63          	bltz	s1,8000274c <_Z12printIntegerm+0x7c>
    80002734:	fe040793          	addi	a5,s0,-32
    80002738:	009787b3          	add	a5,a5,s1
    8000273c:	ff07c503          	lbu	a0,-16(a5)
    80002740:	00002097          	auipc	ra,0x2
    80002744:	42c080e7          	jalr	1068(ra) # 80004b6c <__putc>
    80002748:	fe5ff06f          	j	8000272c <_Z12printIntegerm+0x5c>
    8000274c:	02813083          	ld	ra,40(sp)
    80002750:	02013403          	ld	s0,32(sp)
    80002754:	01813483          	ld	s1,24(sp)
    80002758:	03010113          	addi	sp,sp,48
    8000275c:	00008067          	ret

0000000080002760 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:

int TCB::id_count = 0;
TCB* TCB::running = nullptr;
time_t TCB::time_slice_count = 0;

TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    80002760:	fe010113          	addi	sp,sp,-32
    80002764:	00813c23          	sd	s0,24(sp)
    80002768:	02010413          	addi	s0,sp,32
    8000276c:	04e53423          	sd	a4,72(a0)
    80002770:	04f53823          	sd	a5,80(a0)
    80002774:	04050e23          	sb	zero,92(a0)
    // poziva se iz _threadCreate gde je inicijalni kontekst formiran
    id = id_count++;
    80002778:	00004717          	auipc	a4,0x4
    8000277c:	81070713          	addi	a4,a4,-2032 # 80005f88 <_ZN3TCB8id_countE>
    80002780:	00072783          	lw	a5,0(a4)
    80002784:	0017881b          	addiw	a6,a5,1
    80002788:	01072023          	sw	a6,0(a4)
    8000278c:	00f52023          	sw	a5,0(a0)

    // !!! body = nullptr => stack = nullptr + skip Scheduler::put()

    routine = fun;
    80002790:	02b53823          	sd	a1,48(a0)
    this->args = args;
    80002794:	02c53c23          	sd	a2,56(a0)
    this->stack = (uint64*)stack; // stack start address (allocated)
    80002798:	04d53023          	sd	a3,64(a0)
    this->current_state = RUNNABLE;
    8000279c:	04052c23          	sw	zero,88(a0)
    this->next_ready = nullptr;
    800027a0:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    800027a4:	00053823          	sd	zero,16(a0)
    this->sleeping_time = 0;
    800027a8:	02053023          	sd	zero,32(a0)
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
    800027ac:	00200793          	li	a5,2
    800027b0:	02f53423          	sd	a5,40(a0)
}
    800027b4:	01813403          	ld	s0,24(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret

00000000800027c0 <_ZN3TCB5yieldEPS_S0_>:
    dispatch();

    // no return address from wrapper
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    800027c0:	fe010113          	addi	sp,sp,-32
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	01213023          	sd	s2,0(sp)
    800027d4:	02010413          	addi	s0,sp,32
    800027d8:	00050493          	mv	s1,a0
    800027dc:	00058913          	mv	s2,a1
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	820080e7          	jalr	-2016(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    800027e8:	04890593          	addi	a1,s2,72
    800027ec:	04848513          	addi	a0,s1,72
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	a20080e7          	jalr	-1504(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	888080e7          	jalr	-1912(ra) # 80001080 <_ZN5RISCV8pop_regsEv>
}
    80002800:	01813083          	ld	ra,24(sp)
    80002804:	01013403          	ld	s0,16(sp)
    80002808:	00813483          	ld	s1,8(sp)
    8000280c:	00013903          	ld	s2,0(sp)
    80002810:	02010113          	addi	sp,sp,32
    80002814:	00008067          	ret

0000000080002818 <_ZN3TCBnwEm>:
    if ( isRunnable() ) Scheduler::put(oldRunning);
    running = Scheduler::get();
    if (running != oldRunning) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    80002818:	ff010113          	addi	sp,sp,-16
    8000281c:	00113423          	sd	ra,8(sp)
    80002820:	00813023          	sd	s0,0(sp)
    80002824:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002828:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    8000282c:	00655513          	srli	a0,a0,0x6
    80002830:	00000097          	auipc	ra,0x0
    80002834:	a14080e7          	jalr	-1516(ra) # 80002244 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    80002848:	fa010113          	addi	sp,sp,-96
    8000284c:	04113c23          	sd	ra,88(sp)
    80002850:	04813823          	sd	s0,80(sp)
    80002854:	04913423          	sd	s1,72(sp)
    80002858:	05213023          	sd	s2,64(sp)
    8000285c:	03313c23          	sd	s3,56(sp)
    80002860:	03413823          	sd	s4,48(sp)
    80002864:	03513423          	sd	s5,40(sp)
    80002868:	06010413          	addi	s0,sp,96
    8000286c:	00050a13          	mv	s4,a0
    80002870:	00058493          	mv	s1,a1
    80002874:	00060a93          	mv	s5,a2
    80002878:	00068913          	mv	s2,a3
    Context context = {
    8000287c:	00000797          	auipc	a5,0x0
    80002880:	18078793          	addi	a5,a5,384 # 800029fc <_ZN3TCB7wrapperEv>
    80002884:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    80002888:	08058263          	beqz	a1,8000290c <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xc4>
    8000288c:	000017b7          	lui	a5,0x1
    80002890:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80002894:	00f687b3          	add	a5,a3,a5
    *handle = new TCB (routine, args, stack_space, context);
    80002898:	fa043703          	ld	a4,-96(s0)
    8000289c:	fae43823          	sd	a4,-80(s0)
    800028a0:	faf43c23          	sd	a5,-72(s0)
    800028a4:	06000513          	li	a0,96
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	f70080e7          	jalr	-144(ra) # 80002818 <_ZN3TCBnwEm>
    800028b0:	00050993          	mv	s3,a0
    800028b4:	fb043703          	ld	a4,-80(s0)
    800028b8:	fb843783          	ld	a5,-72(s0)
    800028bc:	00090693          	mv	a3,s2
    800028c0:	000a8613          	mv	a2,s5
    800028c4:	00048593          	mv	a1,s1
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	e98080e7          	jalr	-360(ra) # 80002760 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    800028d0:	013a3023          	sd	s3,0(s4)
    if (routine) Scheduler::put(*handle);
    800028d4:	00048863          	beqz	s1,800028e4 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x9c>
    800028d8:	00098513          	mv	a0,s3
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	134080e7          	jalr	308(ra) # 80001a10 <_ZN9Scheduler3putEP3TCB>
}
    800028e4:	00000513          	li	a0,0
    800028e8:	05813083          	ld	ra,88(sp)
    800028ec:	05013403          	ld	s0,80(sp)
    800028f0:	04813483          	ld	s1,72(sp)
    800028f4:	04013903          	ld	s2,64(sp)
    800028f8:	03813983          	ld	s3,56(sp)
    800028fc:	03013a03          	ld	s4,48(sp)
    80002900:	02813a83          	ld	s5,40(sp)
    80002904:	06010113          	addi	sp,sp,96
    80002908:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    8000290c:	00000793          	li	a5,0
    80002910:	f89ff06f          	j	80002898 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x50>

0000000080002914 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80002914:	ff010113          	addi	sp,sp,-16
    80002918:	00113423          	sd	ra,8(sp)
    8000291c:	00813023          	sd	s0,0(sp)
    80002920:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002924:	00000097          	auipc	ra,0x0
    80002928:	b44080e7          	jalr	-1212(ra) # 80002468 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    8000292c:	00813083          	ld	ra,8(sp)
    80002930:	00013403          	ld	s0,0(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <_ZN3TCB5startEv>:

void TCB::start() {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
    /// remove from thread create !
    Scheduler::put(this);
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	0c4080e7          	jalr	196(ra) # 80001a10 <_ZN9Scheduler3putEP3TCB>

}
    80002954:	00813083          	ld	ra,8(sp)
    80002958:	00013403          	ld	s0,0(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret

0000000080002964 <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00813423          	sd	s0,8(sp)
    8000296c:	01010413          	addi	s0,sp,16
    return running->current_state == RUNNABLE; }
    80002970:	00003797          	auipc	a5,0x3
    80002974:	6207b783          	ld	a5,1568(a5) # 80005f90 <_ZN3TCB7runningE>
    80002978:	0587a503          	lw	a0,88(a5)
    8000297c:	00153513          	seqz	a0,a0
    80002980:	00813403          	ld	s0,8(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000298c:	fe010113          	addi	sp,sp,-32
    80002990:	00113c23          	sd	ra,24(sp)
    80002994:	00813823          	sd	s0,16(sp)
    80002998:	00913423          	sd	s1,8(sp)
    8000299c:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    800029a0:	00003497          	auipc	s1,0x3
    800029a4:	5f04b483          	ld	s1,1520(s1) # 80005f90 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	fbc080e7          	jalr	-68(ra) # 80002964 <_ZN3TCB10isRunnableEv>
    800029b0:	02051e63          	bnez	a0,800029ec <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	ff4080e7          	jalr	-12(ra) # 800019a8 <_ZN9Scheduler3getEv>
    800029bc:	00050593          	mv	a1,a0
    800029c0:	00003797          	auipc	a5,0x3
    800029c4:	5ca7b823          	sd	a0,1488(a5) # 80005f90 <_ZN3TCB7runningE>
    if (running != oldRunning) yield(oldRunning, running);
    800029c8:	00a48863          	beq	s1,a0,800029d8 <_ZN3TCB8dispatchEv+0x4c>
    800029cc:	00048513          	mv	a0,s1
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	df0080e7          	jalr	-528(ra) # 800027c0 <_ZN3TCB5yieldEPS_S0_>
}
    800029d8:	01813083          	ld	ra,24(sp)
    800029dc:	01013403          	ld	s0,16(sp)
    800029e0:	00813483          	ld	s1,8(sp)
    800029e4:	02010113          	addi	sp,sp,32
    800029e8:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    800029ec:	00048513          	mv	a0,s1
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	020080e7          	jalr	32(ra) # 80001a10 <_ZN9Scheduler3putEP3TCB>
    800029f8:	fbdff06f          	j	800029b4 <_ZN3TCB8dispatchEv+0x28>

00000000800029fc <_ZN3TCB7wrapperEv>:
void TCB::wrapper() {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    if (running->routine) running->routine(running->args); // in user mode
    80002a0c:	00003717          	auipc	a4,0x3
    80002a10:	58473703          	ld	a4,1412(a4) # 80005f90 <_ZN3TCB7runningE>
    80002a14:	03073783          	ld	a5,48(a4)
    80002a18:	00078663          	beqz	a5,80002a24 <_ZN3TCB7wrapperEv+0x28>
    80002a1c:	03873503          	ld	a0,56(a4)
    80002a20:	000780e7          	jalr	a5
    void finish() { current_state = state::FINISHED; }
    80002a24:	00003797          	auipc	a5,0x3
    80002a28:	56c7b783          	ld	a5,1388(a5) # 80005f90 <_ZN3TCB7runningE>
    80002a2c:	00300713          	li	a4,3
    80002a30:	04e7ac23          	sw	a4,88(a5)
    dispatch();
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	f58080e7          	jalr	-168(ra) # 8000298c <_ZN3TCB8dispatchEv>
}
    80002a3c:	00813083          	ld	ra,8(sp)
    80002a40:	00013403          	ld	s0,0(sp)
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret

0000000080002a4c <_ZN3TCB11_threadExitEv>:

int TCB::_threadExit() {
    80002a4c:	fe010113          	addi	sp,sp,-32
    80002a50:	00113c23          	sd	ra,24(sp)
    80002a54:	00813823          	sd	s0,16(sp)
    80002a58:	00913423          	sd	s1,8(sp)
    80002a5c:	01213023          	sd	s2,0(sp)
    80002a60:	02010413          	addi	s0,sp,32
    TCB::running -> finish();
    80002a64:	00003917          	auipc	s2,0x3
    80002a68:	52490913          	addi	s2,s2,1316 # 80005f88 <_ZN3TCB8id_countE>
    80002a6c:	00893483          	ld	s1,8(s2)
    80002a70:	00300793          	li	a5,3
    80002a74:	04f4ac23          	sw	a5,88(s1)

    // check if semaphore signal needed ?
    // don't put in Scheduler -> call yield only

    TCB* toExit = TCB::running;
    TCB::running = Scheduler::get();
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	f30080e7          	jalr	-208(ra) # 800019a8 <_ZN9Scheduler3getEv>
    80002a80:	00050593          	mv	a1,a0
    80002a84:	00a93423          	sd	a0,8(s2)
    yield(toExit, running);
    80002a88:	00048513          	mv	a0,s1
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	d34080e7          	jalr	-716(ra) # 800027c0 <_ZN3TCB5yieldEPS_S0_>

    return 0;
}
    80002a94:	00000513          	li	a0,0
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	00013903          	ld	s2,0(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret

0000000080002ab0 <start>:
    80002ab0:	ff010113          	addi	sp,sp,-16
    80002ab4:	00813423          	sd	s0,8(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    80002abc:	300027f3          	csrr	a5,mstatus
    80002ac0:	ffffe737          	lui	a4,0xffffe
    80002ac4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff75ff>
    80002ac8:	00e7f7b3          	and	a5,a5,a4
    80002acc:	00001737          	lui	a4,0x1
    80002ad0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002ad4:	00e7e7b3          	or	a5,a5,a4
    80002ad8:	30079073          	csrw	mstatus,a5
    80002adc:	00000797          	auipc	a5,0x0
    80002ae0:	16078793          	addi	a5,a5,352 # 80002c3c <system_main>
    80002ae4:	34179073          	csrw	mepc,a5
    80002ae8:	00000793          	li	a5,0
    80002aec:	18079073          	csrw	satp,a5
    80002af0:	000107b7          	lui	a5,0x10
    80002af4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002af8:	30279073          	csrw	medeleg,a5
    80002afc:	30379073          	csrw	mideleg,a5
    80002b00:	104027f3          	csrr	a5,sie
    80002b04:	2227e793          	ori	a5,a5,546
    80002b08:	10479073          	csrw	sie,a5
    80002b0c:	fff00793          	li	a5,-1
    80002b10:	00a7d793          	srli	a5,a5,0xa
    80002b14:	3b079073          	csrw	pmpaddr0,a5
    80002b18:	00f00793          	li	a5,15
    80002b1c:	3a079073          	csrw	pmpcfg0,a5
    80002b20:	f14027f3          	csrr	a5,mhartid
    80002b24:	0200c737          	lui	a4,0x200c
    80002b28:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002b2c:	0007869b          	sext.w	a3,a5
    80002b30:	00269713          	slli	a4,a3,0x2
    80002b34:	000f4637          	lui	a2,0xf4
    80002b38:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002b3c:	00d70733          	add	a4,a4,a3
    80002b40:	0037979b          	slliw	a5,a5,0x3
    80002b44:	020046b7          	lui	a3,0x2004
    80002b48:	00d787b3          	add	a5,a5,a3
    80002b4c:	00c585b3          	add	a1,a1,a2
    80002b50:	00371693          	slli	a3,a4,0x3
    80002b54:	00003717          	auipc	a4,0x3
    80002b58:	44c70713          	addi	a4,a4,1100 # 80005fa0 <timer_scratch>
    80002b5c:	00b7b023          	sd	a1,0(a5)
    80002b60:	00d70733          	add	a4,a4,a3
    80002b64:	00f73c23          	sd	a5,24(a4)
    80002b68:	02c73023          	sd	a2,32(a4)
    80002b6c:	34071073          	csrw	mscratch,a4
    80002b70:	00000797          	auipc	a5,0x0
    80002b74:	6e078793          	addi	a5,a5,1760 # 80003250 <timervec>
    80002b78:	30579073          	csrw	mtvec,a5
    80002b7c:	300027f3          	csrr	a5,mstatus
    80002b80:	0087e793          	ori	a5,a5,8
    80002b84:	30079073          	csrw	mstatus,a5
    80002b88:	304027f3          	csrr	a5,mie
    80002b8c:	0807e793          	ori	a5,a5,128
    80002b90:	30479073          	csrw	mie,a5
    80002b94:	f14027f3          	csrr	a5,mhartid
    80002b98:	0007879b          	sext.w	a5,a5
    80002b9c:	00078213          	mv	tp,a5
    80002ba0:	30200073          	mret
    80002ba4:	00813403          	ld	s0,8(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <timerinit>:
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00813423          	sd	s0,8(sp)
    80002bb8:	01010413          	addi	s0,sp,16
    80002bbc:	f14027f3          	csrr	a5,mhartid
    80002bc0:	0200c737          	lui	a4,0x200c
    80002bc4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002bc8:	0007869b          	sext.w	a3,a5
    80002bcc:	00269713          	slli	a4,a3,0x2
    80002bd0:	000f4637          	lui	a2,0xf4
    80002bd4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002bd8:	00d70733          	add	a4,a4,a3
    80002bdc:	0037979b          	slliw	a5,a5,0x3
    80002be0:	020046b7          	lui	a3,0x2004
    80002be4:	00d787b3          	add	a5,a5,a3
    80002be8:	00c585b3          	add	a1,a1,a2
    80002bec:	00371693          	slli	a3,a4,0x3
    80002bf0:	00003717          	auipc	a4,0x3
    80002bf4:	3b070713          	addi	a4,a4,944 # 80005fa0 <timer_scratch>
    80002bf8:	00b7b023          	sd	a1,0(a5)
    80002bfc:	00d70733          	add	a4,a4,a3
    80002c00:	00f73c23          	sd	a5,24(a4)
    80002c04:	02c73023          	sd	a2,32(a4)
    80002c08:	34071073          	csrw	mscratch,a4
    80002c0c:	00000797          	auipc	a5,0x0
    80002c10:	64478793          	addi	a5,a5,1604 # 80003250 <timervec>
    80002c14:	30579073          	csrw	mtvec,a5
    80002c18:	300027f3          	csrr	a5,mstatus
    80002c1c:	0087e793          	ori	a5,a5,8
    80002c20:	30079073          	csrw	mstatus,a5
    80002c24:	304027f3          	csrr	a5,mie
    80002c28:	0807e793          	ori	a5,a5,128
    80002c2c:	30479073          	csrw	mie,a5
    80002c30:	00813403          	ld	s0,8(sp)
    80002c34:	01010113          	addi	sp,sp,16
    80002c38:	00008067          	ret

0000000080002c3c <system_main>:
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00813823          	sd	s0,16(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	02010413          	addi	s0,sp,32
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	0c4080e7          	jalr	196(ra) # 80002d14 <cpuid>
    80002c58:	00003497          	auipc	s1,0x3
    80002c5c:	2b848493          	addi	s1,s1,696 # 80005f10 <started>
    80002c60:	02050263          	beqz	a0,80002c84 <system_main+0x48>
    80002c64:	0004a783          	lw	a5,0(s1)
    80002c68:	0007879b          	sext.w	a5,a5
    80002c6c:	fe078ce3          	beqz	a5,80002c64 <system_main+0x28>
    80002c70:	0ff0000f          	fence
    80002c74:	00002517          	auipc	a0,0x2
    80002c78:	48c50513          	addi	a0,a0,1164 # 80005100 <_ZZ12printIntegermE6digits+0x40>
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	a70080e7          	jalr	-1424(ra) # 800036ec <panic>
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	9c4080e7          	jalr	-1596(ra) # 80003648 <consoleinit>
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	150080e7          	jalr	336(ra) # 80003ddc <printfinit>
    80002c94:	00002517          	auipc	a0,0x2
    80002c98:	54c50513          	addi	a0,a0,1356 # 800051e0 <_ZZ12printIntegermE6digits+0x120>
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	aac080e7          	jalr	-1364(ra) # 80003748 <__printf>
    80002ca4:	00002517          	auipc	a0,0x2
    80002ca8:	42c50513          	addi	a0,a0,1068 # 800050d0 <_ZZ12printIntegermE6digits+0x10>
    80002cac:	00001097          	auipc	ra,0x1
    80002cb0:	a9c080e7          	jalr	-1380(ra) # 80003748 <__printf>
    80002cb4:	00002517          	auipc	a0,0x2
    80002cb8:	52c50513          	addi	a0,a0,1324 # 800051e0 <_ZZ12printIntegermE6digits+0x120>
    80002cbc:	00001097          	auipc	ra,0x1
    80002cc0:	a8c080e7          	jalr	-1396(ra) # 80003748 <__printf>
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	4a4080e7          	jalr	1188(ra) # 80004168 <kinit>
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	148080e7          	jalr	328(ra) # 80002e14 <trapinit>
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	16c080e7          	jalr	364(ra) # 80002e40 <trapinithart>
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	5b4080e7          	jalr	1460(ra) # 80003290 <plicinit>
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	5d4080e7          	jalr	1492(ra) # 800032b8 <plicinithart>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	078080e7          	jalr	120(ra) # 80002d64 <userinit>
    80002cf4:	0ff0000f          	fence
    80002cf8:	00100793          	li	a5,1
    80002cfc:	00002517          	auipc	a0,0x2
    80002d00:	3ec50513          	addi	a0,a0,1004 # 800050e8 <_ZZ12printIntegermE6digits+0x28>
    80002d04:	00f4a023          	sw	a5,0(s1)
    80002d08:	00001097          	auipc	ra,0x1
    80002d0c:	a40080e7          	jalr	-1472(ra) # 80003748 <__printf>
    80002d10:	0000006f          	j	80002d10 <system_main+0xd4>

0000000080002d14 <cpuid>:
    80002d14:	ff010113          	addi	sp,sp,-16
    80002d18:	00813423          	sd	s0,8(sp)
    80002d1c:	01010413          	addi	s0,sp,16
    80002d20:	00020513          	mv	a0,tp
    80002d24:	00813403          	ld	s0,8(sp)
    80002d28:	0005051b          	sext.w	a0,a0
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <mycpu>:
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00813423          	sd	s0,8(sp)
    80002d3c:	01010413          	addi	s0,sp,16
    80002d40:	00020793          	mv	a5,tp
    80002d44:	00813403          	ld	s0,8(sp)
    80002d48:	0007879b          	sext.w	a5,a5
    80002d4c:	00779793          	slli	a5,a5,0x7
    80002d50:	00004517          	auipc	a0,0x4
    80002d54:	28050513          	addi	a0,a0,640 # 80006fd0 <cpus>
    80002d58:	00f50533          	add	a0,a0,a5
    80002d5c:	01010113          	addi	sp,sp,16
    80002d60:	00008067          	ret

0000000080002d64 <userinit>:
    80002d64:	ff010113          	addi	sp,sp,-16
    80002d68:	00813423          	sd	s0,8(sp)
    80002d6c:	01010413          	addi	s0,sp,16
    80002d70:	00813403          	ld	s0,8(sp)
    80002d74:	01010113          	addi	sp,sp,16
    80002d78:	fffff317          	auipc	t1,0xfffff
    80002d7c:	00430067          	jr	4(t1) # 80001d7c <main>

0000000080002d80 <either_copyout>:
    80002d80:	ff010113          	addi	sp,sp,-16
    80002d84:	00813023          	sd	s0,0(sp)
    80002d88:	00113423          	sd	ra,8(sp)
    80002d8c:	01010413          	addi	s0,sp,16
    80002d90:	02051663          	bnez	a0,80002dbc <either_copyout+0x3c>
    80002d94:	00058513          	mv	a0,a1
    80002d98:	00060593          	mv	a1,a2
    80002d9c:	0006861b          	sext.w	a2,a3
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	c54080e7          	jalr	-940(ra) # 800049f4 <__memmove>
    80002da8:	00813083          	ld	ra,8(sp)
    80002dac:	00013403          	ld	s0,0(sp)
    80002db0:	00000513          	li	a0,0
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00008067          	ret
    80002dbc:	00002517          	auipc	a0,0x2
    80002dc0:	36c50513          	addi	a0,a0,876 # 80005128 <_ZZ12printIntegermE6digits+0x68>
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	928080e7          	jalr	-1752(ra) # 800036ec <panic>

0000000080002dcc <either_copyin>:
    80002dcc:	ff010113          	addi	sp,sp,-16
    80002dd0:	00813023          	sd	s0,0(sp)
    80002dd4:	00113423          	sd	ra,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
    80002ddc:	02059463          	bnez	a1,80002e04 <either_copyin+0x38>
    80002de0:	00060593          	mv	a1,a2
    80002de4:	0006861b          	sext.w	a2,a3
    80002de8:	00002097          	auipc	ra,0x2
    80002dec:	c0c080e7          	jalr	-1012(ra) # 800049f4 <__memmove>
    80002df0:	00813083          	ld	ra,8(sp)
    80002df4:	00013403          	ld	s0,0(sp)
    80002df8:	00000513          	li	a0,0
    80002dfc:	01010113          	addi	sp,sp,16
    80002e00:	00008067          	ret
    80002e04:	00002517          	auipc	a0,0x2
    80002e08:	34c50513          	addi	a0,a0,844 # 80005150 <_ZZ12printIntegermE6digits+0x90>
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	8e0080e7          	jalr	-1824(ra) # 800036ec <panic>

0000000080002e14 <trapinit>:
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	00813403          	ld	s0,8(sp)
    80002e24:	00002597          	auipc	a1,0x2
    80002e28:	35458593          	addi	a1,a1,852 # 80005178 <_ZZ12printIntegermE6digits+0xb8>
    80002e2c:	00004517          	auipc	a0,0x4
    80002e30:	22450513          	addi	a0,a0,548 # 80007050 <tickslock>
    80002e34:	01010113          	addi	sp,sp,16
    80002e38:	00001317          	auipc	t1,0x1
    80002e3c:	5c030067          	jr	1472(t1) # 800043f8 <initlock>

0000000080002e40 <trapinithart>:
    80002e40:	ff010113          	addi	sp,sp,-16
    80002e44:	00813423          	sd	s0,8(sp)
    80002e48:	01010413          	addi	s0,sp,16
    80002e4c:	00000797          	auipc	a5,0x0
    80002e50:	2f478793          	addi	a5,a5,756 # 80003140 <kernelvec>
    80002e54:	10579073          	csrw	stvec,a5
    80002e58:	00813403          	ld	s0,8(sp)
    80002e5c:	01010113          	addi	sp,sp,16
    80002e60:	00008067          	ret

0000000080002e64 <usertrap>:
    80002e64:	ff010113          	addi	sp,sp,-16
    80002e68:	00813423          	sd	s0,8(sp)
    80002e6c:	01010413          	addi	s0,sp,16
    80002e70:	00813403          	ld	s0,8(sp)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <usertrapret>:
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813423          	sd	s0,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
    80002e88:	00813403          	ld	s0,8(sp)
    80002e8c:	01010113          	addi	sp,sp,16
    80002e90:	00008067          	ret

0000000080002e94 <kerneltrap>:
    80002e94:	fe010113          	addi	sp,sp,-32
    80002e98:	00813823          	sd	s0,16(sp)
    80002e9c:	00113c23          	sd	ra,24(sp)
    80002ea0:	00913423          	sd	s1,8(sp)
    80002ea4:	02010413          	addi	s0,sp,32
    80002ea8:	142025f3          	csrr	a1,scause
    80002eac:	100027f3          	csrr	a5,sstatus
    80002eb0:	0027f793          	andi	a5,a5,2
    80002eb4:	10079c63          	bnez	a5,80002fcc <kerneltrap+0x138>
    80002eb8:	142027f3          	csrr	a5,scause
    80002ebc:	0207ce63          	bltz	a5,80002ef8 <kerneltrap+0x64>
    80002ec0:	00002517          	auipc	a0,0x2
    80002ec4:	30050513          	addi	a0,a0,768 # 800051c0 <_ZZ12printIntegermE6digits+0x100>
    80002ec8:	00001097          	auipc	ra,0x1
    80002ecc:	880080e7          	jalr	-1920(ra) # 80003748 <__printf>
    80002ed0:	141025f3          	csrr	a1,sepc
    80002ed4:	14302673          	csrr	a2,stval
    80002ed8:	00002517          	auipc	a0,0x2
    80002edc:	2f850513          	addi	a0,a0,760 # 800051d0 <_ZZ12printIntegermE6digits+0x110>
    80002ee0:	00001097          	auipc	ra,0x1
    80002ee4:	868080e7          	jalr	-1944(ra) # 80003748 <__printf>
    80002ee8:	00002517          	auipc	a0,0x2
    80002eec:	30050513          	addi	a0,a0,768 # 800051e8 <_ZZ12printIntegermE6digits+0x128>
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	7fc080e7          	jalr	2044(ra) # 800036ec <panic>
    80002ef8:	0ff7f713          	andi	a4,a5,255
    80002efc:	00900693          	li	a3,9
    80002f00:	04d70063          	beq	a4,a3,80002f40 <kerneltrap+0xac>
    80002f04:	fff00713          	li	a4,-1
    80002f08:	03f71713          	slli	a4,a4,0x3f
    80002f0c:	00170713          	addi	a4,a4,1
    80002f10:	fae798e3          	bne	a5,a4,80002ec0 <kerneltrap+0x2c>
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	e00080e7          	jalr	-512(ra) # 80002d14 <cpuid>
    80002f1c:	06050663          	beqz	a0,80002f88 <kerneltrap+0xf4>
    80002f20:	144027f3          	csrr	a5,sip
    80002f24:	ffd7f793          	andi	a5,a5,-3
    80002f28:	14479073          	csrw	sip,a5
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	3c4080e7          	jalr	964(ra) # 80003304 <plic_claim>
    80002f48:	00a00793          	li	a5,10
    80002f4c:	00050493          	mv	s1,a0
    80002f50:	06f50863          	beq	a0,a5,80002fc0 <kerneltrap+0x12c>
    80002f54:	fc050ce3          	beqz	a0,80002f2c <kerneltrap+0x98>
    80002f58:	00050593          	mv	a1,a0
    80002f5c:	00002517          	auipc	a0,0x2
    80002f60:	24450513          	addi	a0,a0,580 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	7e4080e7          	jalr	2020(ra) # 80003748 <__printf>
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	01813083          	ld	ra,24(sp)
    80002f74:	00048513          	mv	a0,s1
    80002f78:	00813483          	ld	s1,8(sp)
    80002f7c:	02010113          	addi	sp,sp,32
    80002f80:	00000317          	auipc	t1,0x0
    80002f84:	3bc30067          	jr	956(t1) # 8000333c <plic_complete>
    80002f88:	00004517          	auipc	a0,0x4
    80002f8c:	0c850513          	addi	a0,a0,200 # 80007050 <tickslock>
    80002f90:	00001097          	auipc	ra,0x1
    80002f94:	48c080e7          	jalr	1164(ra) # 8000441c <acquire>
    80002f98:	00003717          	auipc	a4,0x3
    80002f9c:	f7c70713          	addi	a4,a4,-132 # 80005f14 <ticks>
    80002fa0:	00072783          	lw	a5,0(a4)
    80002fa4:	00004517          	auipc	a0,0x4
    80002fa8:	0ac50513          	addi	a0,a0,172 # 80007050 <tickslock>
    80002fac:	0017879b          	addiw	a5,a5,1
    80002fb0:	00f72023          	sw	a5,0(a4)
    80002fb4:	00001097          	auipc	ra,0x1
    80002fb8:	534080e7          	jalr	1332(ra) # 800044e8 <release>
    80002fbc:	f65ff06f          	j	80002f20 <kerneltrap+0x8c>
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	090080e7          	jalr	144(ra) # 80004050 <uartintr>
    80002fc8:	fa5ff06f          	j	80002f6c <kerneltrap+0xd8>
    80002fcc:	00002517          	auipc	a0,0x2
    80002fd0:	1b450513          	addi	a0,a0,436 # 80005180 <_ZZ12printIntegermE6digits+0xc0>
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	718080e7          	jalr	1816(ra) # 800036ec <panic>

0000000080002fdc <clockintr>:
    80002fdc:	fe010113          	addi	sp,sp,-32
    80002fe0:	00813823          	sd	s0,16(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	00113c23          	sd	ra,24(sp)
    80002fec:	02010413          	addi	s0,sp,32
    80002ff0:	00004497          	auipc	s1,0x4
    80002ff4:	06048493          	addi	s1,s1,96 # 80007050 <tickslock>
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	00001097          	auipc	ra,0x1
    80003000:	420080e7          	jalr	1056(ra) # 8000441c <acquire>
    80003004:	00003717          	auipc	a4,0x3
    80003008:	f1070713          	addi	a4,a4,-240 # 80005f14 <ticks>
    8000300c:	00072783          	lw	a5,0(a4)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	01813083          	ld	ra,24(sp)
    80003018:	00048513          	mv	a0,s1
    8000301c:	0017879b          	addiw	a5,a5,1
    80003020:	00813483          	ld	s1,8(sp)
    80003024:	00f72023          	sw	a5,0(a4)
    80003028:	02010113          	addi	sp,sp,32
    8000302c:	00001317          	auipc	t1,0x1
    80003030:	4bc30067          	jr	1212(t1) # 800044e8 <release>

0000000080003034 <devintr>:
    80003034:	142027f3          	csrr	a5,scause
    80003038:	00000513          	li	a0,0
    8000303c:	0007c463          	bltz	a5,80003044 <devintr+0x10>
    80003040:	00008067          	ret
    80003044:	fe010113          	addi	sp,sp,-32
    80003048:	00813823          	sd	s0,16(sp)
    8000304c:	00113c23          	sd	ra,24(sp)
    80003050:	00913423          	sd	s1,8(sp)
    80003054:	02010413          	addi	s0,sp,32
    80003058:	0ff7f713          	andi	a4,a5,255
    8000305c:	00900693          	li	a3,9
    80003060:	04d70c63          	beq	a4,a3,800030b8 <devintr+0x84>
    80003064:	fff00713          	li	a4,-1
    80003068:	03f71713          	slli	a4,a4,0x3f
    8000306c:	00170713          	addi	a4,a4,1
    80003070:	00e78c63          	beq	a5,a4,80003088 <devintr+0x54>
    80003074:	01813083          	ld	ra,24(sp)
    80003078:	01013403          	ld	s0,16(sp)
    8000307c:	00813483          	ld	s1,8(sp)
    80003080:	02010113          	addi	sp,sp,32
    80003084:	00008067          	ret
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	c8c080e7          	jalr	-884(ra) # 80002d14 <cpuid>
    80003090:	06050663          	beqz	a0,800030fc <devintr+0xc8>
    80003094:	144027f3          	csrr	a5,sip
    80003098:	ffd7f793          	andi	a5,a5,-3
    8000309c:	14479073          	csrw	sip,a5
    800030a0:	01813083          	ld	ra,24(sp)
    800030a4:	01013403          	ld	s0,16(sp)
    800030a8:	00813483          	ld	s1,8(sp)
    800030ac:	00200513          	li	a0,2
    800030b0:	02010113          	addi	sp,sp,32
    800030b4:	00008067          	ret
    800030b8:	00000097          	auipc	ra,0x0
    800030bc:	24c080e7          	jalr	588(ra) # 80003304 <plic_claim>
    800030c0:	00a00793          	li	a5,10
    800030c4:	00050493          	mv	s1,a0
    800030c8:	06f50663          	beq	a0,a5,80003134 <devintr+0x100>
    800030cc:	00100513          	li	a0,1
    800030d0:	fa0482e3          	beqz	s1,80003074 <devintr+0x40>
    800030d4:	00048593          	mv	a1,s1
    800030d8:	00002517          	auipc	a0,0x2
    800030dc:	0c850513          	addi	a0,a0,200 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	668080e7          	jalr	1640(ra) # 80003748 <__printf>
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	250080e7          	jalr	592(ra) # 8000333c <plic_complete>
    800030f4:	00100513          	li	a0,1
    800030f8:	f7dff06f          	j	80003074 <devintr+0x40>
    800030fc:	00004517          	auipc	a0,0x4
    80003100:	f5450513          	addi	a0,a0,-172 # 80007050 <tickslock>
    80003104:	00001097          	auipc	ra,0x1
    80003108:	318080e7          	jalr	792(ra) # 8000441c <acquire>
    8000310c:	00003717          	auipc	a4,0x3
    80003110:	e0870713          	addi	a4,a4,-504 # 80005f14 <ticks>
    80003114:	00072783          	lw	a5,0(a4)
    80003118:	00004517          	auipc	a0,0x4
    8000311c:	f3850513          	addi	a0,a0,-200 # 80007050 <tickslock>
    80003120:	0017879b          	addiw	a5,a5,1
    80003124:	00f72023          	sw	a5,0(a4)
    80003128:	00001097          	auipc	ra,0x1
    8000312c:	3c0080e7          	jalr	960(ra) # 800044e8 <release>
    80003130:	f65ff06f          	j	80003094 <devintr+0x60>
    80003134:	00001097          	auipc	ra,0x1
    80003138:	f1c080e7          	jalr	-228(ra) # 80004050 <uartintr>
    8000313c:	fadff06f          	j	800030e8 <devintr+0xb4>

0000000080003140 <kernelvec>:
    80003140:	f0010113          	addi	sp,sp,-256
    80003144:	00113023          	sd	ra,0(sp)
    80003148:	00213423          	sd	sp,8(sp)
    8000314c:	00313823          	sd	gp,16(sp)
    80003150:	00413c23          	sd	tp,24(sp)
    80003154:	02513023          	sd	t0,32(sp)
    80003158:	02613423          	sd	t1,40(sp)
    8000315c:	02713823          	sd	t2,48(sp)
    80003160:	02813c23          	sd	s0,56(sp)
    80003164:	04913023          	sd	s1,64(sp)
    80003168:	04a13423          	sd	a0,72(sp)
    8000316c:	04b13823          	sd	a1,80(sp)
    80003170:	04c13c23          	sd	a2,88(sp)
    80003174:	06d13023          	sd	a3,96(sp)
    80003178:	06e13423          	sd	a4,104(sp)
    8000317c:	06f13823          	sd	a5,112(sp)
    80003180:	07013c23          	sd	a6,120(sp)
    80003184:	09113023          	sd	a7,128(sp)
    80003188:	09213423          	sd	s2,136(sp)
    8000318c:	09313823          	sd	s3,144(sp)
    80003190:	09413c23          	sd	s4,152(sp)
    80003194:	0b513023          	sd	s5,160(sp)
    80003198:	0b613423          	sd	s6,168(sp)
    8000319c:	0b713823          	sd	s7,176(sp)
    800031a0:	0b813c23          	sd	s8,184(sp)
    800031a4:	0d913023          	sd	s9,192(sp)
    800031a8:	0da13423          	sd	s10,200(sp)
    800031ac:	0db13823          	sd	s11,208(sp)
    800031b0:	0dc13c23          	sd	t3,216(sp)
    800031b4:	0fd13023          	sd	t4,224(sp)
    800031b8:	0fe13423          	sd	t5,232(sp)
    800031bc:	0ff13823          	sd	t6,240(sp)
    800031c0:	cd5ff0ef          	jal	ra,80002e94 <kerneltrap>
    800031c4:	00013083          	ld	ra,0(sp)
    800031c8:	00813103          	ld	sp,8(sp)
    800031cc:	01013183          	ld	gp,16(sp)
    800031d0:	02013283          	ld	t0,32(sp)
    800031d4:	02813303          	ld	t1,40(sp)
    800031d8:	03013383          	ld	t2,48(sp)
    800031dc:	03813403          	ld	s0,56(sp)
    800031e0:	04013483          	ld	s1,64(sp)
    800031e4:	04813503          	ld	a0,72(sp)
    800031e8:	05013583          	ld	a1,80(sp)
    800031ec:	05813603          	ld	a2,88(sp)
    800031f0:	06013683          	ld	a3,96(sp)
    800031f4:	06813703          	ld	a4,104(sp)
    800031f8:	07013783          	ld	a5,112(sp)
    800031fc:	07813803          	ld	a6,120(sp)
    80003200:	08013883          	ld	a7,128(sp)
    80003204:	08813903          	ld	s2,136(sp)
    80003208:	09013983          	ld	s3,144(sp)
    8000320c:	09813a03          	ld	s4,152(sp)
    80003210:	0a013a83          	ld	s5,160(sp)
    80003214:	0a813b03          	ld	s6,168(sp)
    80003218:	0b013b83          	ld	s7,176(sp)
    8000321c:	0b813c03          	ld	s8,184(sp)
    80003220:	0c013c83          	ld	s9,192(sp)
    80003224:	0c813d03          	ld	s10,200(sp)
    80003228:	0d013d83          	ld	s11,208(sp)
    8000322c:	0d813e03          	ld	t3,216(sp)
    80003230:	0e013e83          	ld	t4,224(sp)
    80003234:	0e813f03          	ld	t5,232(sp)
    80003238:	0f013f83          	ld	t6,240(sp)
    8000323c:	10010113          	addi	sp,sp,256
    80003240:	10200073          	sret
    80003244:	00000013          	nop
    80003248:	00000013          	nop
    8000324c:	00000013          	nop

0000000080003250 <timervec>:
    80003250:	34051573          	csrrw	a0,mscratch,a0
    80003254:	00b53023          	sd	a1,0(a0)
    80003258:	00c53423          	sd	a2,8(a0)
    8000325c:	00d53823          	sd	a3,16(a0)
    80003260:	01853583          	ld	a1,24(a0)
    80003264:	02053603          	ld	a2,32(a0)
    80003268:	0005b683          	ld	a3,0(a1)
    8000326c:	00c686b3          	add	a3,a3,a2
    80003270:	00d5b023          	sd	a3,0(a1)
    80003274:	00200593          	li	a1,2
    80003278:	14459073          	csrw	sip,a1
    8000327c:	01053683          	ld	a3,16(a0)
    80003280:	00853603          	ld	a2,8(a0)
    80003284:	00053583          	ld	a1,0(a0)
    80003288:	34051573          	csrrw	a0,mscratch,a0
    8000328c:	30200073          	mret

0000000080003290 <plicinit>:
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00813423          	sd	s0,8(sp)
    80003298:	01010413          	addi	s0,sp,16
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	0c0007b7          	lui	a5,0xc000
    800032a4:	00100713          	li	a4,1
    800032a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800032ac:	00e7a223          	sw	a4,4(a5)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <plicinithart>:
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	00113423          	sd	ra,8(sp)
    800032c4:	01010413          	addi	s0,sp,16
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	a4c080e7          	jalr	-1460(ra) # 80002d14 <cpuid>
    800032d0:	0085171b          	slliw	a4,a0,0x8
    800032d4:	0c0027b7          	lui	a5,0xc002
    800032d8:	00e787b3          	add	a5,a5,a4
    800032dc:	40200713          	li	a4,1026
    800032e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800032e4:	00813083          	ld	ra,8(sp)
    800032e8:	00013403          	ld	s0,0(sp)
    800032ec:	00d5151b          	slliw	a0,a0,0xd
    800032f0:	0c2017b7          	lui	a5,0xc201
    800032f4:	00a78533          	add	a0,a5,a0
    800032f8:	00052023          	sw	zero,0(a0)
    800032fc:	01010113          	addi	sp,sp,16
    80003300:	00008067          	ret

0000000080003304 <plic_claim>:
    80003304:	ff010113          	addi	sp,sp,-16
    80003308:	00813023          	sd	s0,0(sp)
    8000330c:	00113423          	sd	ra,8(sp)
    80003310:	01010413          	addi	s0,sp,16
    80003314:	00000097          	auipc	ra,0x0
    80003318:	a00080e7          	jalr	-1536(ra) # 80002d14 <cpuid>
    8000331c:	00813083          	ld	ra,8(sp)
    80003320:	00013403          	ld	s0,0(sp)
    80003324:	00d5151b          	slliw	a0,a0,0xd
    80003328:	0c2017b7          	lui	a5,0xc201
    8000332c:	00a78533          	add	a0,a5,a0
    80003330:	00452503          	lw	a0,4(a0)
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00008067          	ret

000000008000333c <plic_complete>:
    8000333c:	fe010113          	addi	sp,sp,-32
    80003340:	00813823          	sd	s0,16(sp)
    80003344:	00913423          	sd	s1,8(sp)
    80003348:	00113c23          	sd	ra,24(sp)
    8000334c:	02010413          	addi	s0,sp,32
    80003350:	00050493          	mv	s1,a0
    80003354:	00000097          	auipc	ra,0x0
    80003358:	9c0080e7          	jalr	-1600(ra) # 80002d14 <cpuid>
    8000335c:	01813083          	ld	ra,24(sp)
    80003360:	01013403          	ld	s0,16(sp)
    80003364:	00d5179b          	slliw	a5,a0,0xd
    80003368:	0c201737          	lui	a4,0xc201
    8000336c:	00f707b3          	add	a5,a4,a5
    80003370:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret

0000000080003380 <consolewrite>:
    80003380:	fb010113          	addi	sp,sp,-80
    80003384:	04813023          	sd	s0,64(sp)
    80003388:	04113423          	sd	ra,72(sp)
    8000338c:	02913c23          	sd	s1,56(sp)
    80003390:	03213823          	sd	s2,48(sp)
    80003394:	03313423          	sd	s3,40(sp)
    80003398:	03413023          	sd	s4,32(sp)
    8000339c:	01513c23          	sd	s5,24(sp)
    800033a0:	05010413          	addi	s0,sp,80
    800033a4:	06c05c63          	blez	a2,8000341c <consolewrite+0x9c>
    800033a8:	00060993          	mv	s3,a2
    800033ac:	00050a13          	mv	s4,a0
    800033b0:	00058493          	mv	s1,a1
    800033b4:	00000913          	li	s2,0
    800033b8:	fff00a93          	li	s5,-1
    800033bc:	01c0006f          	j	800033d8 <consolewrite+0x58>
    800033c0:	fbf44503          	lbu	a0,-65(s0)
    800033c4:	0019091b          	addiw	s2,s2,1
    800033c8:	00148493          	addi	s1,s1,1
    800033cc:	00001097          	auipc	ra,0x1
    800033d0:	a9c080e7          	jalr	-1380(ra) # 80003e68 <uartputc>
    800033d4:	03298063          	beq	s3,s2,800033f4 <consolewrite+0x74>
    800033d8:	00048613          	mv	a2,s1
    800033dc:	00100693          	li	a3,1
    800033e0:	000a0593          	mv	a1,s4
    800033e4:	fbf40513          	addi	a0,s0,-65
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	9e4080e7          	jalr	-1564(ra) # 80002dcc <either_copyin>
    800033f0:	fd5518e3          	bne	a0,s5,800033c0 <consolewrite+0x40>
    800033f4:	04813083          	ld	ra,72(sp)
    800033f8:	04013403          	ld	s0,64(sp)
    800033fc:	03813483          	ld	s1,56(sp)
    80003400:	02813983          	ld	s3,40(sp)
    80003404:	02013a03          	ld	s4,32(sp)
    80003408:	01813a83          	ld	s5,24(sp)
    8000340c:	00090513          	mv	a0,s2
    80003410:	03013903          	ld	s2,48(sp)
    80003414:	05010113          	addi	sp,sp,80
    80003418:	00008067          	ret
    8000341c:	00000913          	li	s2,0
    80003420:	fd5ff06f          	j	800033f4 <consolewrite+0x74>

0000000080003424 <consoleread>:
    80003424:	f9010113          	addi	sp,sp,-112
    80003428:	06813023          	sd	s0,96(sp)
    8000342c:	04913c23          	sd	s1,88(sp)
    80003430:	05213823          	sd	s2,80(sp)
    80003434:	05313423          	sd	s3,72(sp)
    80003438:	05413023          	sd	s4,64(sp)
    8000343c:	03513c23          	sd	s5,56(sp)
    80003440:	03613823          	sd	s6,48(sp)
    80003444:	03713423          	sd	s7,40(sp)
    80003448:	03813023          	sd	s8,32(sp)
    8000344c:	06113423          	sd	ra,104(sp)
    80003450:	01913c23          	sd	s9,24(sp)
    80003454:	07010413          	addi	s0,sp,112
    80003458:	00060b93          	mv	s7,a2
    8000345c:	00050913          	mv	s2,a0
    80003460:	00058c13          	mv	s8,a1
    80003464:	00060b1b          	sext.w	s6,a2
    80003468:	00004497          	auipc	s1,0x4
    8000346c:	c1048493          	addi	s1,s1,-1008 # 80007078 <cons>
    80003470:	00400993          	li	s3,4
    80003474:	fff00a13          	li	s4,-1
    80003478:	00a00a93          	li	s5,10
    8000347c:	05705e63          	blez	s7,800034d8 <consoleread+0xb4>
    80003480:	09c4a703          	lw	a4,156(s1)
    80003484:	0984a783          	lw	a5,152(s1)
    80003488:	0007071b          	sext.w	a4,a4
    8000348c:	08e78463          	beq	a5,a4,80003514 <consoleread+0xf0>
    80003490:	07f7f713          	andi	a4,a5,127
    80003494:	00e48733          	add	a4,s1,a4
    80003498:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000349c:	0017869b          	addiw	a3,a5,1
    800034a0:	08d4ac23          	sw	a3,152(s1)
    800034a4:	00070c9b          	sext.w	s9,a4
    800034a8:	0b370663          	beq	a4,s3,80003554 <consoleread+0x130>
    800034ac:	00100693          	li	a3,1
    800034b0:	f9f40613          	addi	a2,s0,-97
    800034b4:	000c0593          	mv	a1,s8
    800034b8:	00090513          	mv	a0,s2
    800034bc:	f8e40fa3          	sb	a4,-97(s0)
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	8c0080e7          	jalr	-1856(ra) # 80002d80 <either_copyout>
    800034c8:	01450863          	beq	a0,s4,800034d8 <consoleread+0xb4>
    800034cc:	001c0c13          	addi	s8,s8,1
    800034d0:	fffb8b9b          	addiw	s7,s7,-1
    800034d4:	fb5c94e3          	bne	s9,s5,8000347c <consoleread+0x58>
    800034d8:	000b851b          	sext.w	a0,s7
    800034dc:	06813083          	ld	ra,104(sp)
    800034e0:	06013403          	ld	s0,96(sp)
    800034e4:	05813483          	ld	s1,88(sp)
    800034e8:	05013903          	ld	s2,80(sp)
    800034ec:	04813983          	ld	s3,72(sp)
    800034f0:	04013a03          	ld	s4,64(sp)
    800034f4:	03813a83          	ld	s5,56(sp)
    800034f8:	02813b83          	ld	s7,40(sp)
    800034fc:	02013c03          	ld	s8,32(sp)
    80003500:	01813c83          	ld	s9,24(sp)
    80003504:	40ab053b          	subw	a0,s6,a0
    80003508:	03013b03          	ld	s6,48(sp)
    8000350c:	07010113          	addi	sp,sp,112
    80003510:	00008067          	ret
    80003514:	00001097          	auipc	ra,0x1
    80003518:	1d8080e7          	jalr	472(ra) # 800046ec <push_on>
    8000351c:	0984a703          	lw	a4,152(s1)
    80003520:	09c4a783          	lw	a5,156(s1)
    80003524:	0007879b          	sext.w	a5,a5
    80003528:	fef70ce3          	beq	a4,a5,80003520 <consoleread+0xfc>
    8000352c:	00001097          	auipc	ra,0x1
    80003530:	234080e7          	jalr	564(ra) # 80004760 <pop_on>
    80003534:	0984a783          	lw	a5,152(s1)
    80003538:	07f7f713          	andi	a4,a5,127
    8000353c:	00e48733          	add	a4,s1,a4
    80003540:	01874703          	lbu	a4,24(a4)
    80003544:	0017869b          	addiw	a3,a5,1
    80003548:	08d4ac23          	sw	a3,152(s1)
    8000354c:	00070c9b          	sext.w	s9,a4
    80003550:	f5371ee3          	bne	a4,s3,800034ac <consoleread+0x88>
    80003554:	000b851b          	sext.w	a0,s7
    80003558:	f96bf2e3          	bgeu	s7,s6,800034dc <consoleread+0xb8>
    8000355c:	08f4ac23          	sw	a5,152(s1)
    80003560:	f7dff06f          	j	800034dc <consoleread+0xb8>

0000000080003564 <consputc>:
    80003564:	10000793          	li	a5,256
    80003568:	00f50663          	beq	a0,a5,80003574 <consputc+0x10>
    8000356c:	00001317          	auipc	t1,0x1
    80003570:	9f430067          	jr	-1548(t1) # 80003f60 <uartputc_sync>
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00113423          	sd	ra,8(sp)
    8000357c:	00813023          	sd	s0,0(sp)
    80003580:	01010413          	addi	s0,sp,16
    80003584:	00800513          	li	a0,8
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	9d8080e7          	jalr	-1576(ra) # 80003f60 <uartputc_sync>
    80003590:	02000513          	li	a0,32
    80003594:	00001097          	auipc	ra,0x1
    80003598:	9cc080e7          	jalr	-1588(ra) # 80003f60 <uartputc_sync>
    8000359c:	00013403          	ld	s0,0(sp)
    800035a0:	00813083          	ld	ra,8(sp)
    800035a4:	00800513          	li	a0,8
    800035a8:	01010113          	addi	sp,sp,16
    800035ac:	00001317          	auipc	t1,0x1
    800035b0:	9b430067          	jr	-1612(t1) # 80003f60 <uartputc_sync>

00000000800035b4 <consoleintr>:
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00813823          	sd	s0,16(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	01213023          	sd	s2,0(sp)
    800035c4:	00113c23          	sd	ra,24(sp)
    800035c8:	02010413          	addi	s0,sp,32
    800035cc:	00004917          	auipc	s2,0x4
    800035d0:	aac90913          	addi	s2,s2,-1364 # 80007078 <cons>
    800035d4:	00050493          	mv	s1,a0
    800035d8:	00090513          	mv	a0,s2
    800035dc:	00001097          	auipc	ra,0x1
    800035e0:	e40080e7          	jalr	-448(ra) # 8000441c <acquire>
    800035e4:	02048c63          	beqz	s1,8000361c <consoleintr+0x68>
    800035e8:	0a092783          	lw	a5,160(s2)
    800035ec:	09892703          	lw	a4,152(s2)
    800035f0:	07f00693          	li	a3,127
    800035f4:	40e7873b          	subw	a4,a5,a4
    800035f8:	02e6e263          	bltu	a3,a4,8000361c <consoleintr+0x68>
    800035fc:	00d00713          	li	a4,13
    80003600:	04e48063          	beq	s1,a4,80003640 <consoleintr+0x8c>
    80003604:	07f7f713          	andi	a4,a5,127
    80003608:	00e90733          	add	a4,s2,a4
    8000360c:	0017879b          	addiw	a5,a5,1
    80003610:	0af92023          	sw	a5,160(s2)
    80003614:	00970c23          	sb	s1,24(a4)
    80003618:	08f92e23          	sw	a5,156(s2)
    8000361c:	01013403          	ld	s0,16(sp)
    80003620:	01813083          	ld	ra,24(sp)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	00013903          	ld	s2,0(sp)
    8000362c:	00004517          	auipc	a0,0x4
    80003630:	a4c50513          	addi	a0,a0,-1460 # 80007078 <cons>
    80003634:	02010113          	addi	sp,sp,32
    80003638:	00001317          	auipc	t1,0x1
    8000363c:	eb030067          	jr	-336(t1) # 800044e8 <release>
    80003640:	00a00493          	li	s1,10
    80003644:	fc1ff06f          	j	80003604 <consoleintr+0x50>

0000000080003648 <consoleinit>:
    80003648:	fe010113          	addi	sp,sp,-32
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	00813823          	sd	s0,16(sp)
    80003654:	00913423          	sd	s1,8(sp)
    80003658:	02010413          	addi	s0,sp,32
    8000365c:	00004497          	auipc	s1,0x4
    80003660:	a1c48493          	addi	s1,s1,-1508 # 80007078 <cons>
    80003664:	00048513          	mv	a0,s1
    80003668:	00002597          	auipc	a1,0x2
    8000366c:	b9058593          	addi	a1,a1,-1136 # 800051f8 <_ZZ12printIntegermE6digits+0x138>
    80003670:	00001097          	auipc	ra,0x1
    80003674:	d88080e7          	jalr	-632(ra) # 800043f8 <initlock>
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	7ac080e7          	jalr	1964(ra) # 80003e24 <uartinit>
    80003680:	01813083          	ld	ra,24(sp)
    80003684:	01013403          	ld	s0,16(sp)
    80003688:	00000797          	auipc	a5,0x0
    8000368c:	d9c78793          	addi	a5,a5,-612 # 80003424 <consoleread>
    80003690:	0af4bc23          	sd	a5,184(s1)
    80003694:	00000797          	auipc	a5,0x0
    80003698:	cec78793          	addi	a5,a5,-788 # 80003380 <consolewrite>
    8000369c:	0cf4b023          	sd	a5,192(s1)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret

00000000800036ac <console_read>:
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00813423          	sd	s0,8(sp)
    800036b4:	01010413          	addi	s0,sp,16
    800036b8:	00813403          	ld	s0,8(sp)
    800036bc:	00004317          	auipc	t1,0x4
    800036c0:	a7433303          	ld	t1,-1420(t1) # 80007130 <devsw+0x10>
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00030067          	jr	t1

00000000800036cc <console_write>:
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00813423          	sd	s0,8(sp)
    800036d4:	01010413          	addi	s0,sp,16
    800036d8:	00813403          	ld	s0,8(sp)
    800036dc:	00004317          	auipc	t1,0x4
    800036e0:	a5c33303          	ld	t1,-1444(t1) # 80007138 <devsw+0x18>
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00030067          	jr	t1

00000000800036ec <panic>:
    800036ec:	fe010113          	addi	sp,sp,-32
    800036f0:	00113c23          	sd	ra,24(sp)
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00913423          	sd	s1,8(sp)
    800036fc:	02010413          	addi	s0,sp,32
    80003700:	00050493          	mv	s1,a0
    80003704:	00002517          	auipc	a0,0x2
    80003708:	afc50513          	addi	a0,a0,-1284 # 80005200 <_ZZ12printIntegermE6digits+0x140>
    8000370c:	00004797          	auipc	a5,0x4
    80003710:	ac07a623          	sw	zero,-1332(a5) # 800071d8 <pr+0x18>
    80003714:	00000097          	auipc	ra,0x0
    80003718:	034080e7          	jalr	52(ra) # 80003748 <__printf>
    8000371c:	00048513          	mv	a0,s1
    80003720:	00000097          	auipc	ra,0x0
    80003724:	028080e7          	jalr	40(ra) # 80003748 <__printf>
    80003728:	00002517          	auipc	a0,0x2
    8000372c:	ab850513          	addi	a0,a0,-1352 # 800051e0 <_ZZ12printIntegermE6digits+0x120>
    80003730:	00000097          	auipc	ra,0x0
    80003734:	018080e7          	jalr	24(ra) # 80003748 <__printf>
    80003738:	00100793          	li	a5,1
    8000373c:	00002717          	auipc	a4,0x2
    80003740:	7cf72e23          	sw	a5,2012(a4) # 80005f18 <panicked>
    80003744:	0000006f          	j	80003744 <panic+0x58>

0000000080003748 <__printf>:
    80003748:	f3010113          	addi	sp,sp,-208
    8000374c:	08813023          	sd	s0,128(sp)
    80003750:	07313423          	sd	s3,104(sp)
    80003754:	09010413          	addi	s0,sp,144
    80003758:	05813023          	sd	s8,64(sp)
    8000375c:	08113423          	sd	ra,136(sp)
    80003760:	06913c23          	sd	s1,120(sp)
    80003764:	07213823          	sd	s2,112(sp)
    80003768:	07413023          	sd	s4,96(sp)
    8000376c:	05513c23          	sd	s5,88(sp)
    80003770:	05613823          	sd	s6,80(sp)
    80003774:	05713423          	sd	s7,72(sp)
    80003778:	03913c23          	sd	s9,56(sp)
    8000377c:	03a13823          	sd	s10,48(sp)
    80003780:	03b13423          	sd	s11,40(sp)
    80003784:	00004317          	auipc	t1,0x4
    80003788:	a3c30313          	addi	t1,t1,-1476 # 800071c0 <pr>
    8000378c:	01832c03          	lw	s8,24(t1)
    80003790:	00b43423          	sd	a1,8(s0)
    80003794:	00c43823          	sd	a2,16(s0)
    80003798:	00d43c23          	sd	a3,24(s0)
    8000379c:	02e43023          	sd	a4,32(s0)
    800037a0:	02f43423          	sd	a5,40(s0)
    800037a4:	03043823          	sd	a6,48(s0)
    800037a8:	03143c23          	sd	a7,56(s0)
    800037ac:	00050993          	mv	s3,a0
    800037b0:	4a0c1663          	bnez	s8,80003c5c <__printf+0x514>
    800037b4:	60098c63          	beqz	s3,80003dcc <__printf+0x684>
    800037b8:	0009c503          	lbu	a0,0(s3)
    800037bc:	00840793          	addi	a5,s0,8
    800037c0:	f6f43c23          	sd	a5,-136(s0)
    800037c4:	00000493          	li	s1,0
    800037c8:	22050063          	beqz	a0,800039e8 <__printf+0x2a0>
    800037cc:	00002a37          	lui	s4,0x2
    800037d0:	00018ab7          	lui	s5,0x18
    800037d4:	000f4b37          	lui	s6,0xf4
    800037d8:	00989bb7          	lui	s7,0x989
    800037dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800037e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800037e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800037e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800037ec:	00148c9b          	addiw	s9,s1,1
    800037f0:	02500793          	li	a5,37
    800037f4:	01998933          	add	s2,s3,s9
    800037f8:	38f51263          	bne	a0,a5,80003b7c <__printf+0x434>
    800037fc:	00094783          	lbu	a5,0(s2)
    80003800:	00078c9b          	sext.w	s9,a5
    80003804:	1e078263          	beqz	a5,800039e8 <__printf+0x2a0>
    80003808:	0024849b          	addiw	s1,s1,2
    8000380c:	07000713          	li	a4,112
    80003810:	00998933          	add	s2,s3,s1
    80003814:	38e78a63          	beq	a5,a4,80003ba8 <__printf+0x460>
    80003818:	20f76863          	bltu	a4,a5,80003a28 <__printf+0x2e0>
    8000381c:	42a78863          	beq	a5,a0,80003c4c <__printf+0x504>
    80003820:	06400713          	li	a4,100
    80003824:	40e79663          	bne	a5,a4,80003c30 <__printf+0x4e8>
    80003828:	f7843783          	ld	a5,-136(s0)
    8000382c:	0007a603          	lw	a2,0(a5)
    80003830:	00878793          	addi	a5,a5,8
    80003834:	f6f43c23          	sd	a5,-136(s0)
    80003838:	42064a63          	bltz	a2,80003c6c <__printf+0x524>
    8000383c:	00a00713          	li	a4,10
    80003840:	02e677bb          	remuw	a5,a2,a4
    80003844:	00002d97          	auipc	s11,0x2
    80003848:	9e4d8d93          	addi	s11,s11,-1564 # 80005228 <digits>
    8000384c:	00900593          	li	a1,9
    80003850:	0006051b          	sext.w	a0,a2
    80003854:	00000c93          	li	s9,0
    80003858:	02079793          	slli	a5,a5,0x20
    8000385c:	0207d793          	srli	a5,a5,0x20
    80003860:	00fd87b3          	add	a5,s11,a5
    80003864:	0007c783          	lbu	a5,0(a5)
    80003868:	02e656bb          	divuw	a3,a2,a4
    8000386c:	f8f40023          	sb	a5,-128(s0)
    80003870:	14c5d863          	bge	a1,a2,800039c0 <__printf+0x278>
    80003874:	06300593          	li	a1,99
    80003878:	00100c93          	li	s9,1
    8000387c:	02e6f7bb          	remuw	a5,a3,a4
    80003880:	02079793          	slli	a5,a5,0x20
    80003884:	0207d793          	srli	a5,a5,0x20
    80003888:	00fd87b3          	add	a5,s11,a5
    8000388c:	0007c783          	lbu	a5,0(a5)
    80003890:	02e6d73b          	divuw	a4,a3,a4
    80003894:	f8f400a3          	sb	a5,-127(s0)
    80003898:	12a5f463          	bgeu	a1,a0,800039c0 <__printf+0x278>
    8000389c:	00a00693          	li	a3,10
    800038a0:	00900593          	li	a1,9
    800038a4:	02d777bb          	remuw	a5,a4,a3
    800038a8:	02079793          	slli	a5,a5,0x20
    800038ac:	0207d793          	srli	a5,a5,0x20
    800038b0:	00fd87b3          	add	a5,s11,a5
    800038b4:	0007c503          	lbu	a0,0(a5)
    800038b8:	02d757bb          	divuw	a5,a4,a3
    800038bc:	f8a40123          	sb	a0,-126(s0)
    800038c0:	48e5f263          	bgeu	a1,a4,80003d44 <__printf+0x5fc>
    800038c4:	06300513          	li	a0,99
    800038c8:	02d7f5bb          	remuw	a1,a5,a3
    800038cc:	02059593          	slli	a1,a1,0x20
    800038d0:	0205d593          	srli	a1,a1,0x20
    800038d4:	00bd85b3          	add	a1,s11,a1
    800038d8:	0005c583          	lbu	a1,0(a1)
    800038dc:	02d7d7bb          	divuw	a5,a5,a3
    800038e0:	f8b401a3          	sb	a1,-125(s0)
    800038e4:	48e57263          	bgeu	a0,a4,80003d68 <__printf+0x620>
    800038e8:	3e700513          	li	a0,999
    800038ec:	02d7f5bb          	remuw	a1,a5,a3
    800038f0:	02059593          	slli	a1,a1,0x20
    800038f4:	0205d593          	srli	a1,a1,0x20
    800038f8:	00bd85b3          	add	a1,s11,a1
    800038fc:	0005c583          	lbu	a1,0(a1)
    80003900:	02d7d7bb          	divuw	a5,a5,a3
    80003904:	f8b40223          	sb	a1,-124(s0)
    80003908:	46e57663          	bgeu	a0,a4,80003d74 <__printf+0x62c>
    8000390c:	02d7f5bb          	remuw	a1,a5,a3
    80003910:	02059593          	slli	a1,a1,0x20
    80003914:	0205d593          	srli	a1,a1,0x20
    80003918:	00bd85b3          	add	a1,s11,a1
    8000391c:	0005c583          	lbu	a1,0(a1)
    80003920:	02d7d7bb          	divuw	a5,a5,a3
    80003924:	f8b402a3          	sb	a1,-123(s0)
    80003928:	46ea7863          	bgeu	s4,a4,80003d98 <__printf+0x650>
    8000392c:	02d7f5bb          	remuw	a1,a5,a3
    80003930:	02059593          	slli	a1,a1,0x20
    80003934:	0205d593          	srli	a1,a1,0x20
    80003938:	00bd85b3          	add	a1,s11,a1
    8000393c:	0005c583          	lbu	a1,0(a1)
    80003940:	02d7d7bb          	divuw	a5,a5,a3
    80003944:	f8b40323          	sb	a1,-122(s0)
    80003948:	3eeaf863          	bgeu	s5,a4,80003d38 <__printf+0x5f0>
    8000394c:	02d7f5bb          	remuw	a1,a5,a3
    80003950:	02059593          	slli	a1,a1,0x20
    80003954:	0205d593          	srli	a1,a1,0x20
    80003958:	00bd85b3          	add	a1,s11,a1
    8000395c:	0005c583          	lbu	a1,0(a1)
    80003960:	02d7d7bb          	divuw	a5,a5,a3
    80003964:	f8b403a3          	sb	a1,-121(s0)
    80003968:	42eb7e63          	bgeu	s6,a4,80003da4 <__printf+0x65c>
    8000396c:	02d7f5bb          	remuw	a1,a5,a3
    80003970:	02059593          	slli	a1,a1,0x20
    80003974:	0205d593          	srli	a1,a1,0x20
    80003978:	00bd85b3          	add	a1,s11,a1
    8000397c:	0005c583          	lbu	a1,0(a1)
    80003980:	02d7d7bb          	divuw	a5,a5,a3
    80003984:	f8b40423          	sb	a1,-120(s0)
    80003988:	42ebfc63          	bgeu	s7,a4,80003dc0 <__printf+0x678>
    8000398c:	02079793          	slli	a5,a5,0x20
    80003990:	0207d793          	srli	a5,a5,0x20
    80003994:	00fd8db3          	add	s11,s11,a5
    80003998:	000dc703          	lbu	a4,0(s11)
    8000399c:	00a00793          	li	a5,10
    800039a0:	00900c93          	li	s9,9
    800039a4:	f8e404a3          	sb	a4,-119(s0)
    800039a8:	00065c63          	bgez	a2,800039c0 <__printf+0x278>
    800039ac:	f9040713          	addi	a4,s0,-112
    800039b0:	00f70733          	add	a4,a4,a5
    800039b4:	02d00693          	li	a3,45
    800039b8:	fed70823          	sb	a3,-16(a4)
    800039bc:	00078c93          	mv	s9,a5
    800039c0:	f8040793          	addi	a5,s0,-128
    800039c4:	01978cb3          	add	s9,a5,s9
    800039c8:	f7f40d13          	addi	s10,s0,-129
    800039cc:	000cc503          	lbu	a0,0(s9)
    800039d0:	fffc8c93          	addi	s9,s9,-1
    800039d4:	00000097          	auipc	ra,0x0
    800039d8:	b90080e7          	jalr	-1136(ra) # 80003564 <consputc>
    800039dc:	ffac98e3          	bne	s9,s10,800039cc <__printf+0x284>
    800039e0:	00094503          	lbu	a0,0(s2)
    800039e4:	e00514e3          	bnez	a0,800037ec <__printf+0xa4>
    800039e8:	1a0c1663          	bnez	s8,80003b94 <__printf+0x44c>
    800039ec:	08813083          	ld	ra,136(sp)
    800039f0:	08013403          	ld	s0,128(sp)
    800039f4:	07813483          	ld	s1,120(sp)
    800039f8:	07013903          	ld	s2,112(sp)
    800039fc:	06813983          	ld	s3,104(sp)
    80003a00:	06013a03          	ld	s4,96(sp)
    80003a04:	05813a83          	ld	s5,88(sp)
    80003a08:	05013b03          	ld	s6,80(sp)
    80003a0c:	04813b83          	ld	s7,72(sp)
    80003a10:	04013c03          	ld	s8,64(sp)
    80003a14:	03813c83          	ld	s9,56(sp)
    80003a18:	03013d03          	ld	s10,48(sp)
    80003a1c:	02813d83          	ld	s11,40(sp)
    80003a20:	0d010113          	addi	sp,sp,208
    80003a24:	00008067          	ret
    80003a28:	07300713          	li	a4,115
    80003a2c:	1ce78a63          	beq	a5,a4,80003c00 <__printf+0x4b8>
    80003a30:	07800713          	li	a4,120
    80003a34:	1ee79e63          	bne	a5,a4,80003c30 <__printf+0x4e8>
    80003a38:	f7843783          	ld	a5,-136(s0)
    80003a3c:	0007a703          	lw	a4,0(a5)
    80003a40:	00878793          	addi	a5,a5,8
    80003a44:	f6f43c23          	sd	a5,-136(s0)
    80003a48:	28074263          	bltz	a4,80003ccc <__printf+0x584>
    80003a4c:	00001d97          	auipc	s11,0x1
    80003a50:	7dcd8d93          	addi	s11,s11,2012 # 80005228 <digits>
    80003a54:	00f77793          	andi	a5,a4,15
    80003a58:	00fd87b3          	add	a5,s11,a5
    80003a5c:	0007c683          	lbu	a3,0(a5)
    80003a60:	00f00613          	li	a2,15
    80003a64:	0007079b          	sext.w	a5,a4
    80003a68:	f8d40023          	sb	a3,-128(s0)
    80003a6c:	0047559b          	srliw	a1,a4,0x4
    80003a70:	0047569b          	srliw	a3,a4,0x4
    80003a74:	00000c93          	li	s9,0
    80003a78:	0ee65063          	bge	a2,a4,80003b58 <__printf+0x410>
    80003a7c:	00f6f693          	andi	a3,a3,15
    80003a80:	00dd86b3          	add	a3,s11,a3
    80003a84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003a88:	0087d79b          	srliw	a5,a5,0x8
    80003a8c:	00100c93          	li	s9,1
    80003a90:	f8d400a3          	sb	a3,-127(s0)
    80003a94:	0cb67263          	bgeu	a2,a1,80003b58 <__printf+0x410>
    80003a98:	00f7f693          	andi	a3,a5,15
    80003a9c:	00dd86b3          	add	a3,s11,a3
    80003aa0:	0006c583          	lbu	a1,0(a3)
    80003aa4:	00f00613          	li	a2,15
    80003aa8:	0047d69b          	srliw	a3,a5,0x4
    80003aac:	f8b40123          	sb	a1,-126(s0)
    80003ab0:	0047d593          	srli	a1,a5,0x4
    80003ab4:	28f67e63          	bgeu	a2,a5,80003d50 <__printf+0x608>
    80003ab8:	00f6f693          	andi	a3,a3,15
    80003abc:	00dd86b3          	add	a3,s11,a3
    80003ac0:	0006c503          	lbu	a0,0(a3)
    80003ac4:	0087d813          	srli	a6,a5,0x8
    80003ac8:	0087d69b          	srliw	a3,a5,0x8
    80003acc:	f8a401a3          	sb	a0,-125(s0)
    80003ad0:	28b67663          	bgeu	a2,a1,80003d5c <__printf+0x614>
    80003ad4:	00f6f693          	andi	a3,a3,15
    80003ad8:	00dd86b3          	add	a3,s11,a3
    80003adc:	0006c583          	lbu	a1,0(a3)
    80003ae0:	00c7d513          	srli	a0,a5,0xc
    80003ae4:	00c7d69b          	srliw	a3,a5,0xc
    80003ae8:	f8b40223          	sb	a1,-124(s0)
    80003aec:	29067a63          	bgeu	a2,a6,80003d80 <__printf+0x638>
    80003af0:	00f6f693          	andi	a3,a3,15
    80003af4:	00dd86b3          	add	a3,s11,a3
    80003af8:	0006c583          	lbu	a1,0(a3)
    80003afc:	0107d813          	srli	a6,a5,0x10
    80003b00:	0107d69b          	srliw	a3,a5,0x10
    80003b04:	f8b402a3          	sb	a1,-123(s0)
    80003b08:	28a67263          	bgeu	a2,a0,80003d8c <__printf+0x644>
    80003b0c:	00f6f693          	andi	a3,a3,15
    80003b10:	00dd86b3          	add	a3,s11,a3
    80003b14:	0006c683          	lbu	a3,0(a3)
    80003b18:	0147d79b          	srliw	a5,a5,0x14
    80003b1c:	f8d40323          	sb	a3,-122(s0)
    80003b20:	21067663          	bgeu	a2,a6,80003d2c <__printf+0x5e4>
    80003b24:	02079793          	slli	a5,a5,0x20
    80003b28:	0207d793          	srli	a5,a5,0x20
    80003b2c:	00fd8db3          	add	s11,s11,a5
    80003b30:	000dc683          	lbu	a3,0(s11)
    80003b34:	00800793          	li	a5,8
    80003b38:	00700c93          	li	s9,7
    80003b3c:	f8d403a3          	sb	a3,-121(s0)
    80003b40:	00075c63          	bgez	a4,80003b58 <__printf+0x410>
    80003b44:	f9040713          	addi	a4,s0,-112
    80003b48:	00f70733          	add	a4,a4,a5
    80003b4c:	02d00693          	li	a3,45
    80003b50:	fed70823          	sb	a3,-16(a4)
    80003b54:	00078c93          	mv	s9,a5
    80003b58:	f8040793          	addi	a5,s0,-128
    80003b5c:	01978cb3          	add	s9,a5,s9
    80003b60:	f7f40d13          	addi	s10,s0,-129
    80003b64:	000cc503          	lbu	a0,0(s9)
    80003b68:	fffc8c93          	addi	s9,s9,-1
    80003b6c:	00000097          	auipc	ra,0x0
    80003b70:	9f8080e7          	jalr	-1544(ra) # 80003564 <consputc>
    80003b74:	ff9d18e3          	bne	s10,s9,80003b64 <__printf+0x41c>
    80003b78:	0100006f          	j	80003b88 <__printf+0x440>
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	9e8080e7          	jalr	-1560(ra) # 80003564 <consputc>
    80003b84:	000c8493          	mv	s1,s9
    80003b88:	00094503          	lbu	a0,0(s2)
    80003b8c:	c60510e3          	bnez	a0,800037ec <__printf+0xa4>
    80003b90:	e40c0ee3          	beqz	s8,800039ec <__printf+0x2a4>
    80003b94:	00003517          	auipc	a0,0x3
    80003b98:	62c50513          	addi	a0,a0,1580 # 800071c0 <pr>
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	94c080e7          	jalr	-1716(ra) # 800044e8 <release>
    80003ba4:	e49ff06f          	j	800039ec <__printf+0x2a4>
    80003ba8:	f7843783          	ld	a5,-136(s0)
    80003bac:	03000513          	li	a0,48
    80003bb0:	01000d13          	li	s10,16
    80003bb4:	00878713          	addi	a4,a5,8
    80003bb8:	0007bc83          	ld	s9,0(a5)
    80003bbc:	f6e43c23          	sd	a4,-136(s0)
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	9a4080e7          	jalr	-1628(ra) # 80003564 <consputc>
    80003bc8:	07800513          	li	a0,120
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	998080e7          	jalr	-1640(ra) # 80003564 <consputc>
    80003bd4:	00001d97          	auipc	s11,0x1
    80003bd8:	654d8d93          	addi	s11,s11,1620 # 80005228 <digits>
    80003bdc:	03ccd793          	srli	a5,s9,0x3c
    80003be0:	00fd87b3          	add	a5,s11,a5
    80003be4:	0007c503          	lbu	a0,0(a5)
    80003be8:	fffd0d1b          	addiw	s10,s10,-1
    80003bec:	004c9c93          	slli	s9,s9,0x4
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	974080e7          	jalr	-1676(ra) # 80003564 <consputc>
    80003bf8:	fe0d12e3          	bnez	s10,80003bdc <__printf+0x494>
    80003bfc:	f8dff06f          	j	80003b88 <__printf+0x440>
    80003c00:	f7843783          	ld	a5,-136(s0)
    80003c04:	0007bc83          	ld	s9,0(a5)
    80003c08:	00878793          	addi	a5,a5,8
    80003c0c:	f6f43c23          	sd	a5,-136(s0)
    80003c10:	000c9a63          	bnez	s9,80003c24 <__printf+0x4dc>
    80003c14:	1080006f          	j	80003d1c <__printf+0x5d4>
    80003c18:	001c8c93          	addi	s9,s9,1
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	948080e7          	jalr	-1720(ra) # 80003564 <consputc>
    80003c24:	000cc503          	lbu	a0,0(s9)
    80003c28:	fe0518e3          	bnez	a0,80003c18 <__printf+0x4d0>
    80003c2c:	f5dff06f          	j	80003b88 <__printf+0x440>
    80003c30:	02500513          	li	a0,37
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	930080e7          	jalr	-1744(ra) # 80003564 <consputc>
    80003c3c:	000c8513          	mv	a0,s9
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	924080e7          	jalr	-1756(ra) # 80003564 <consputc>
    80003c48:	f41ff06f          	j	80003b88 <__printf+0x440>
    80003c4c:	02500513          	li	a0,37
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	914080e7          	jalr	-1772(ra) # 80003564 <consputc>
    80003c58:	f31ff06f          	j	80003b88 <__printf+0x440>
    80003c5c:	00030513          	mv	a0,t1
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	7bc080e7          	jalr	1980(ra) # 8000441c <acquire>
    80003c68:	b4dff06f          	j	800037b4 <__printf+0x6c>
    80003c6c:	40c0053b          	negw	a0,a2
    80003c70:	00a00713          	li	a4,10
    80003c74:	02e576bb          	remuw	a3,a0,a4
    80003c78:	00001d97          	auipc	s11,0x1
    80003c7c:	5b0d8d93          	addi	s11,s11,1456 # 80005228 <digits>
    80003c80:	ff700593          	li	a1,-9
    80003c84:	02069693          	slli	a3,a3,0x20
    80003c88:	0206d693          	srli	a3,a3,0x20
    80003c8c:	00dd86b3          	add	a3,s11,a3
    80003c90:	0006c683          	lbu	a3,0(a3)
    80003c94:	02e557bb          	divuw	a5,a0,a4
    80003c98:	f8d40023          	sb	a3,-128(s0)
    80003c9c:	10b65e63          	bge	a2,a1,80003db8 <__printf+0x670>
    80003ca0:	06300593          	li	a1,99
    80003ca4:	02e7f6bb          	remuw	a3,a5,a4
    80003ca8:	02069693          	slli	a3,a3,0x20
    80003cac:	0206d693          	srli	a3,a3,0x20
    80003cb0:	00dd86b3          	add	a3,s11,a3
    80003cb4:	0006c683          	lbu	a3,0(a3)
    80003cb8:	02e7d73b          	divuw	a4,a5,a4
    80003cbc:	00200793          	li	a5,2
    80003cc0:	f8d400a3          	sb	a3,-127(s0)
    80003cc4:	bca5ece3          	bltu	a1,a0,8000389c <__printf+0x154>
    80003cc8:	ce5ff06f          	j	800039ac <__printf+0x264>
    80003ccc:	40e007bb          	negw	a5,a4
    80003cd0:	00001d97          	auipc	s11,0x1
    80003cd4:	558d8d93          	addi	s11,s11,1368 # 80005228 <digits>
    80003cd8:	00f7f693          	andi	a3,a5,15
    80003cdc:	00dd86b3          	add	a3,s11,a3
    80003ce0:	0006c583          	lbu	a1,0(a3)
    80003ce4:	ff100613          	li	a2,-15
    80003ce8:	0047d69b          	srliw	a3,a5,0x4
    80003cec:	f8b40023          	sb	a1,-128(s0)
    80003cf0:	0047d59b          	srliw	a1,a5,0x4
    80003cf4:	0ac75e63          	bge	a4,a2,80003db0 <__printf+0x668>
    80003cf8:	00f6f693          	andi	a3,a3,15
    80003cfc:	00dd86b3          	add	a3,s11,a3
    80003d00:	0006c603          	lbu	a2,0(a3)
    80003d04:	00f00693          	li	a3,15
    80003d08:	0087d79b          	srliw	a5,a5,0x8
    80003d0c:	f8c400a3          	sb	a2,-127(s0)
    80003d10:	d8b6e4e3          	bltu	a3,a1,80003a98 <__printf+0x350>
    80003d14:	00200793          	li	a5,2
    80003d18:	e2dff06f          	j	80003b44 <__printf+0x3fc>
    80003d1c:	00001c97          	auipc	s9,0x1
    80003d20:	4ecc8c93          	addi	s9,s9,1260 # 80005208 <_ZZ12printIntegermE6digits+0x148>
    80003d24:	02800513          	li	a0,40
    80003d28:	ef1ff06f          	j	80003c18 <__printf+0x4d0>
    80003d2c:	00700793          	li	a5,7
    80003d30:	00600c93          	li	s9,6
    80003d34:	e0dff06f          	j	80003b40 <__printf+0x3f8>
    80003d38:	00700793          	li	a5,7
    80003d3c:	00600c93          	li	s9,6
    80003d40:	c69ff06f          	j	800039a8 <__printf+0x260>
    80003d44:	00300793          	li	a5,3
    80003d48:	00200c93          	li	s9,2
    80003d4c:	c5dff06f          	j	800039a8 <__printf+0x260>
    80003d50:	00300793          	li	a5,3
    80003d54:	00200c93          	li	s9,2
    80003d58:	de9ff06f          	j	80003b40 <__printf+0x3f8>
    80003d5c:	00400793          	li	a5,4
    80003d60:	00300c93          	li	s9,3
    80003d64:	dddff06f          	j	80003b40 <__printf+0x3f8>
    80003d68:	00400793          	li	a5,4
    80003d6c:	00300c93          	li	s9,3
    80003d70:	c39ff06f          	j	800039a8 <__printf+0x260>
    80003d74:	00500793          	li	a5,5
    80003d78:	00400c93          	li	s9,4
    80003d7c:	c2dff06f          	j	800039a8 <__printf+0x260>
    80003d80:	00500793          	li	a5,5
    80003d84:	00400c93          	li	s9,4
    80003d88:	db9ff06f          	j	80003b40 <__printf+0x3f8>
    80003d8c:	00600793          	li	a5,6
    80003d90:	00500c93          	li	s9,5
    80003d94:	dadff06f          	j	80003b40 <__printf+0x3f8>
    80003d98:	00600793          	li	a5,6
    80003d9c:	00500c93          	li	s9,5
    80003da0:	c09ff06f          	j	800039a8 <__printf+0x260>
    80003da4:	00800793          	li	a5,8
    80003da8:	00700c93          	li	s9,7
    80003dac:	bfdff06f          	j	800039a8 <__printf+0x260>
    80003db0:	00100793          	li	a5,1
    80003db4:	d91ff06f          	j	80003b44 <__printf+0x3fc>
    80003db8:	00100793          	li	a5,1
    80003dbc:	bf1ff06f          	j	800039ac <__printf+0x264>
    80003dc0:	00900793          	li	a5,9
    80003dc4:	00800c93          	li	s9,8
    80003dc8:	be1ff06f          	j	800039a8 <__printf+0x260>
    80003dcc:	00001517          	auipc	a0,0x1
    80003dd0:	44450513          	addi	a0,a0,1092 # 80005210 <_ZZ12printIntegermE6digits+0x150>
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	918080e7          	jalr	-1768(ra) # 800036ec <panic>

0000000080003ddc <printfinit>:
    80003ddc:	fe010113          	addi	sp,sp,-32
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00913423          	sd	s1,8(sp)
    80003de8:	00113c23          	sd	ra,24(sp)
    80003dec:	02010413          	addi	s0,sp,32
    80003df0:	00003497          	auipc	s1,0x3
    80003df4:	3d048493          	addi	s1,s1,976 # 800071c0 <pr>
    80003df8:	00048513          	mv	a0,s1
    80003dfc:	00001597          	auipc	a1,0x1
    80003e00:	42458593          	addi	a1,a1,1060 # 80005220 <_ZZ12printIntegermE6digits+0x160>
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	5f4080e7          	jalr	1524(ra) # 800043f8 <initlock>
    80003e0c:	01813083          	ld	ra,24(sp)
    80003e10:	01013403          	ld	s0,16(sp)
    80003e14:	0004ac23          	sw	zero,24(s1)
    80003e18:	00813483          	ld	s1,8(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret

0000000080003e24 <uartinit>:
    80003e24:	ff010113          	addi	sp,sp,-16
    80003e28:	00813423          	sd	s0,8(sp)
    80003e2c:	01010413          	addi	s0,sp,16
    80003e30:	100007b7          	lui	a5,0x10000
    80003e34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003e38:	f8000713          	li	a4,-128
    80003e3c:	00e781a3          	sb	a4,3(a5)
    80003e40:	00300713          	li	a4,3
    80003e44:	00e78023          	sb	a4,0(a5)
    80003e48:	000780a3          	sb	zero,1(a5)
    80003e4c:	00e781a3          	sb	a4,3(a5)
    80003e50:	00700693          	li	a3,7
    80003e54:	00d78123          	sb	a3,2(a5)
    80003e58:	00e780a3          	sb	a4,1(a5)
    80003e5c:	00813403          	ld	s0,8(sp)
    80003e60:	01010113          	addi	sp,sp,16
    80003e64:	00008067          	ret

0000000080003e68 <uartputc>:
    80003e68:	00002797          	auipc	a5,0x2
    80003e6c:	0b07a783          	lw	a5,176(a5) # 80005f18 <panicked>
    80003e70:	00078463          	beqz	a5,80003e78 <uartputc+0x10>
    80003e74:	0000006f          	j	80003e74 <uartputc+0xc>
    80003e78:	fd010113          	addi	sp,sp,-48
    80003e7c:	02813023          	sd	s0,32(sp)
    80003e80:	00913c23          	sd	s1,24(sp)
    80003e84:	01213823          	sd	s2,16(sp)
    80003e88:	01313423          	sd	s3,8(sp)
    80003e8c:	02113423          	sd	ra,40(sp)
    80003e90:	03010413          	addi	s0,sp,48
    80003e94:	00002917          	auipc	s2,0x2
    80003e98:	08c90913          	addi	s2,s2,140 # 80005f20 <uart_tx_r>
    80003e9c:	00093783          	ld	a5,0(s2)
    80003ea0:	00002497          	auipc	s1,0x2
    80003ea4:	08848493          	addi	s1,s1,136 # 80005f28 <uart_tx_w>
    80003ea8:	0004b703          	ld	a4,0(s1)
    80003eac:	02078693          	addi	a3,a5,32
    80003eb0:	00050993          	mv	s3,a0
    80003eb4:	02e69c63          	bne	a3,a4,80003eec <uartputc+0x84>
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	834080e7          	jalr	-1996(ra) # 800046ec <push_on>
    80003ec0:	00093783          	ld	a5,0(s2)
    80003ec4:	0004b703          	ld	a4,0(s1)
    80003ec8:	02078793          	addi	a5,a5,32
    80003ecc:	00e79463          	bne	a5,a4,80003ed4 <uartputc+0x6c>
    80003ed0:	0000006f          	j	80003ed0 <uartputc+0x68>
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	88c080e7          	jalr	-1908(ra) # 80004760 <pop_on>
    80003edc:	00093783          	ld	a5,0(s2)
    80003ee0:	0004b703          	ld	a4,0(s1)
    80003ee4:	02078693          	addi	a3,a5,32
    80003ee8:	fce688e3          	beq	a3,a4,80003eb8 <uartputc+0x50>
    80003eec:	01f77693          	andi	a3,a4,31
    80003ef0:	00003597          	auipc	a1,0x3
    80003ef4:	2f058593          	addi	a1,a1,752 # 800071e0 <uart_tx_buf>
    80003ef8:	00d586b3          	add	a3,a1,a3
    80003efc:	00170713          	addi	a4,a4,1
    80003f00:	01368023          	sb	s3,0(a3)
    80003f04:	00e4b023          	sd	a4,0(s1)
    80003f08:	10000637          	lui	a2,0x10000
    80003f0c:	02f71063          	bne	a4,a5,80003f2c <uartputc+0xc4>
    80003f10:	0340006f          	j	80003f44 <uartputc+0xdc>
    80003f14:	00074703          	lbu	a4,0(a4)
    80003f18:	00f93023          	sd	a5,0(s2)
    80003f1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003f20:	00093783          	ld	a5,0(s2)
    80003f24:	0004b703          	ld	a4,0(s1)
    80003f28:	00f70e63          	beq	a4,a5,80003f44 <uartputc+0xdc>
    80003f2c:	00564683          	lbu	a3,5(a2)
    80003f30:	01f7f713          	andi	a4,a5,31
    80003f34:	00e58733          	add	a4,a1,a4
    80003f38:	0206f693          	andi	a3,a3,32
    80003f3c:	00178793          	addi	a5,a5,1
    80003f40:	fc069ae3          	bnez	a3,80003f14 <uartputc+0xac>
    80003f44:	02813083          	ld	ra,40(sp)
    80003f48:	02013403          	ld	s0,32(sp)
    80003f4c:	01813483          	ld	s1,24(sp)
    80003f50:	01013903          	ld	s2,16(sp)
    80003f54:	00813983          	ld	s3,8(sp)
    80003f58:	03010113          	addi	sp,sp,48
    80003f5c:	00008067          	ret

0000000080003f60 <uartputc_sync>:
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00813423          	sd	s0,8(sp)
    80003f68:	01010413          	addi	s0,sp,16
    80003f6c:	00002717          	auipc	a4,0x2
    80003f70:	fac72703          	lw	a4,-84(a4) # 80005f18 <panicked>
    80003f74:	02071663          	bnez	a4,80003fa0 <uartputc_sync+0x40>
    80003f78:	00050793          	mv	a5,a0
    80003f7c:	100006b7          	lui	a3,0x10000
    80003f80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003f84:	02077713          	andi	a4,a4,32
    80003f88:	fe070ce3          	beqz	a4,80003f80 <uartputc_sync+0x20>
    80003f8c:	0ff7f793          	andi	a5,a5,255
    80003f90:	00f68023          	sb	a5,0(a3)
    80003f94:	00813403          	ld	s0,8(sp)
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00008067          	ret
    80003fa0:	0000006f          	j	80003fa0 <uartputc_sync+0x40>

0000000080003fa4 <uartstart>:
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00813423          	sd	s0,8(sp)
    80003fac:	01010413          	addi	s0,sp,16
    80003fb0:	00002617          	auipc	a2,0x2
    80003fb4:	f7060613          	addi	a2,a2,-144 # 80005f20 <uart_tx_r>
    80003fb8:	00002517          	auipc	a0,0x2
    80003fbc:	f7050513          	addi	a0,a0,-144 # 80005f28 <uart_tx_w>
    80003fc0:	00063783          	ld	a5,0(a2)
    80003fc4:	00053703          	ld	a4,0(a0)
    80003fc8:	04f70263          	beq	a4,a5,8000400c <uartstart+0x68>
    80003fcc:	100005b7          	lui	a1,0x10000
    80003fd0:	00003817          	auipc	a6,0x3
    80003fd4:	21080813          	addi	a6,a6,528 # 800071e0 <uart_tx_buf>
    80003fd8:	01c0006f          	j	80003ff4 <uartstart+0x50>
    80003fdc:	0006c703          	lbu	a4,0(a3)
    80003fe0:	00f63023          	sd	a5,0(a2)
    80003fe4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003fe8:	00063783          	ld	a5,0(a2)
    80003fec:	00053703          	ld	a4,0(a0)
    80003ff0:	00f70e63          	beq	a4,a5,8000400c <uartstart+0x68>
    80003ff4:	01f7f713          	andi	a4,a5,31
    80003ff8:	00e806b3          	add	a3,a6,a4
    80003ffc:	0055c703          	lbu	a4,5(a1)
    80004000:	00178793          	addi	a5,a5,1
    80004004:	02077713          	andi	a4,a4,32
    80004008:	fc071ae3          	bnez	a4,80003fdc <uartstart+0x38>
    8000400c:	00813403          	ld	s0,8(sp)
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret

0000000080004018 <uartgetc>:
    80004018:	ff010113          	addi	sp,sp,-16
    8000401c:	00813423          	sd	s0,8(sp)
    80004020:	01010413          	addi	s0,sp,16
    80004024:	10000737          	lui	a4,0x10000
    80004028:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000402c:	0017f793          	andi	a5,a5,1
    80004030:	00078c63          	beqz	a5,80004048 <uartgetc+0x30>
    80004034:	00074503          	lbu	a0,0(a4)
    80004038:	0ff57513          	andi	a0,a0,255
    8000403c:	00813403          	ld	s0,8(sp)
    80004040:	01010113          	addi	sp,sp,16
    80004044:	00008067          	ret
    80004048:	fff00513          	li	a0,-1
    8000404c:	ff1ff06f          	j	8000403c <uartgetc+0x24>

0000000080004050 <uartintr>:
    80004050:	100007b7          	lui	a5,0x10000
    80004054:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004058:	0017f793          	andi	a5,a5,1
    8000405c:	0a078463          	beqz	a5,80004104 <uartintr+0xb4>
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	02010413          	addi	s0,sp,32
    80004074:	100004b7          	lui	s1,0x10000
    80004078:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000407c:	0ff57513          	andi	a0,a0,255
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	534080e7          	jalr	1332(ra) # 800035b4 <consoleintr>
    80004088:	0054c783          	lbu	a5,5(s1)
    8000408c:	0017f793          	andi	a5,a5,1
    80004090:	fe0794e3          	bnez	a5,80004078 <uartintr+0x28>
    80004094:	00002617          	auipc	a2,0x2
    80004098:	e8c60613          	addi	a2,a2,-372 # 80005f20 <uart_tx_r>
    8000409c:	00002517          	auipc	a0,0x2
    800040a0:	e8c50513          	addi	a0,a0,-372 # 80005f28 <uart_tx_w>
    800040a4:	00063783          	ld	a5,0(a2)
    800040a8:	00053703          	ld	a4,0(a0)
    800040ac:	04f70263          	beq	a4,a5,800040f0 <uartintr+0xa0>
    800040b0:	100005b7          	lui	a1,0x10000
    800040b4:	00003817          	auipc	a6,0x3
    800040b8:	12c80813          	addi	a6,a6,300 # 800071e0 <uart_tx_buf>
    800040bc:	01c0006f          	j	800040d8 <uartintr+0x88>
    800040c0:	0006c703          	lbu	a4,0(a3)
    800040c4:	00f63023          	sd	a5,0(a2)
    800040c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040cc:	00063783          	ld	a5,0(a2)
    800040d0:	00053703          	ld	a4,0(a0)
    800040d4:	00f70e63          	beq	a4,a5,800040f0 <uartintr+0xa0>
    800040d8:	01f7f713          	andi	a4,a5,31
    800040dc:	00e806b3          	add	a3,a6,a4
    800040e0:	0055c703          	lbu	a4,5(a1)
    800040e4:	00178793          	addi	a5,a5,1
    800040e8:	02077713          	andi	a4,a4,32
    800040ec:	fc071ae3          	bnez	a4,800040c0 <uartintr+0x70>
    800040f0:	01813083          	ld	ra,24(sp)
    800040f4:	01013403          	ld	s0,16(sp)
    800040f8:	00813483          	ld	s1,8(sp)
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret
    80004104:	00002617          	auipc	a2,0x2
    80004108:	e1c60613          	addi	a2,a2,-484 # 80005f20 <uart_tx_r>
    8000410c:	00002517          	auipc	a0,0x2
    80004110:	e1c50513          	addi	a0,a0,-484 # 80005f28 <uart_tx_w>
    80004114:	00063783          	ld	a5,0(a2)
    80004118:	00053703          	ld	a4,0(a0)
    8000411c:	04f70263          	beq	a4,a5,80004160 <uartintr+0x110>
    80004120:	100005b7          	lui	a1,0x10000
    80004124:	00003817          	auipc	a6,0x3
    80004128:	0bc80813          	addi	a6,a6,188 # 800071e0 <uart_tx_buf>
    8000412c:	01c0006f          	j	80004148 <uartintr+0xf8>
    80004130:	0006c703          	lbu	a4,0(a3)
    80004134:	00f63023          	sd	a5,0(a2)
    80004138:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000413c:	00063783          	ld	a5,0(a2)
    80004140:	00053703          	ld	a4,0(a0)
    80004144:	02f70063          	beq	a4,a5,80004164 <uartintr+0x114>
    80004148:	01f7f713          	andi	a4,a5,31
    8000414c:	00e806b3          	add	a3,a6,a4
    80004150:	0055c703          	lbu	a4,5(a1)
    80004154:	00178793          	addi	a5,a5,1
    80004158:	02077713          	andi	a4,a4,32
    8000415c:	fc071ae3          	bnez	a4,80004130 <uartintr+0xe0>
    80004160:	00008067          	ret
    80004164:	00008067          	ret

0000000080004168 <kinit>:
    80004168:	fc010113          	addi	sp,sp,-64
    8000416c:	02913423          	sd	s1,40(sp)
    80004170:	fffff7b7          	lui	a5,0xfffff
    80004174:	00004497          	auipc	s1,0x4
    80004178:	08b48493          	addi	s1,s1,139 # 800081ff <end+0xfff>
    8000417c:	02813823          	sd	s0,48(sp)
    80004180:	01313c23          	sd	s3,24(sp)
    80004184:	00f4f4b3          	and	s1,s1,a5
    80004188:	02113c23          	sd	ra,56(sp)
    8000418c:	03213023          	sd	s2,32(sp)
    80004190:	01413823          	sd	s4,16(sp)
    80004194:	01513423          	sd	s5,8(sp)
    80004198:	04010413          	addi	s0,sp,64
    8000419c:	000017b7          	lui	a5,0x1
    800041a0:	01100993          	li	s3,17
    800041a4:	00f487b3          	add	a5,s1,a5
    800041a8:	01b99993          	slli	s3,s3,0x1b
    800041ac:	06f9e063          	bltu	s3,a5,8000420c <kinit+0xa4>
    800041b0:	00003a97          	auipc	s5,0x3
    800041b4:	050a8a93          	addi	s5,s5,80 # 80007200 <end>
    800041b8:	0754ec63          	bltu	s1,s5,80004230 <kinit+0xc8>
    800041bc:	0734fa63          	bgeu	s1,s3,80004230 <kinit+0xc8>
    800041c0:	00088a37          	lui	s4,0x88
    800041c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800041c8:	00002917          	auipc	s2,0x2
    800041cc:	d6890913          	addi	s2,s2,-664 # 80005f30 <kmem>
    800041d0:	00ca1a13          	slli	s4,s4,0xc
    800041d4:	0140006f          	j	800041e8 <kinit+0x80>
    800041d8:	000017b7          	lui	a5,0x1
    800041dc:	00f484b3          	add	s1,s1,a5
    800041e0:	0554e863          	bltu	s1,s5,80004230 <kinit+0xc8>
    800041e4:	0534f663          	bgeu	s1,s3,80004230 <kinit+0xc8>
    800041e8:	00001637          	lui	a2,0x1
    800041ec:	00100593          	li	a1,1
    800041f0:	00048513          	mv	a0,s1
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	5e4080e7          	jalr	1508(ra) # 800047d8 <__memset>
    800041fc:	00093783          	ld	a5,0(s2)
    80004200:	00f4b023          	sd	a5,0(s1)
    80004204:	00993023          	sd	s1,0(s2)
    80004208:	fd4498e3          	bne	s1,s4,800041d8 <kinit+0x70>
    8000420c:	03813083          	ld	ra,56(sp)
    80004210:	03013403          	ld	s0,48(sp)
    80004214:	02813483          	ld	s1,40(sp)
    80004218:	02013903          	ld	s2,32(sp)
    8000421c:	01813983          	ld	s3,24(sp)
    80004220:	01013a03          	ld	s4,16(sp)
    80004224:	00813a83          	ld	s5,8(sp)
    80004228:	04010113          	addi	sp,sp,64
    8000422c:	00008067          	ret
    80004230:	00001517          	auipc	a0,0x1
    80004234:	01050513          	addi	a0,a0,16 # 80005240 <digits+0x18>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	4b4080e7          	jalr	1204(ra) # 800036ec <panic>

0000000080004240 <freerange>:
    80004240:	fc010113          	addi	sp,sp,-64
    80004244:	000017b7          	lui	a5,0x1
    80004248:	02913423          	sd	s1,40(sp)
    8000424c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004250:	009504b3          	add	s1,a0,s1
    80004254:	fffff537          	lui	a0,0xfffff
    80004258:	02813823          	sd	s0,48(sp)
    8000425c:	02113c23          	sd	ra,56(sp)
    80004260:	03213023          	sd	s2,32(sp)
    80004264:	01313c23          	sd	s3,24(sp)
    80004268:	01413823          	sd	s4,16(sp)
    8000426c:	01513423          	sd	s5,8(sp)
    80004270:	01613023          	sd	s6,0(sp)
    80004274:	04010413          	addi	s0,sp,64
    80004278:	00a4f4b3          	and	s1,s1,a0
    8000427c:	00f487b3          	add	a5,s1,a5
    80004280:	06f5e463          	bltu	a1,a5,800042e8 <freerange+0xa8>
    80004284:	00003a97          	auipc	s5,0x3
    80004288:	f7ca8a93          	addi	s5,s5,-132 # 80007200 <end>
    8000428c:	0954e263          	bltu	s1,s5,80004310 <freerange+0xd0>
    80004290:	01100993          	li	s3,17
    80004294:	01b99993          	slli	s3,s3,0x1b
    80004298:	0734fc63          	bgeu	s1,s3,80004310 <freerange+0xd0>
    8000429c:	00058a13          	mv	s4,a1
    800042a0:	00002917          	auipc	s2,0x2
    800042a4:	c9090913          	addi	s2,s2,-880 # 80005f30 <kmem>
    800042a8:	00002b37          	lui	s6,0x2
    800042ac:	0140006f          	j	800042c0 <freerange+0x80>
    800042b0:	000017b7          	lui	a5,0x1
    800042b4:	00f484b3          	add	s1,s1,a5
    800042b8:	0554ec63          	bltu	s1,s5,80004310 <freerange+0xd0>
    800042bc:	0534fa63          	bgeu	s1,s3,80004310 <freerange+0xd0>
    800042c0:	00001637          	lui	a2,0x1
    800042c4:	00100593          	li	a1,1
    800042c8:	00048513          	mv	a0,s1
    800042cc:	00000097          	auipc	ra,0x0
    800042d0:	50c080e7          	jalr	1292(ra) # 800047d8 <__memset>
    800042d4:	00093703          	ld	a4,0(s2)
    800042d8:	016487b3          	add	a5,s1,s6
    800042dc:	00e4b023          	sd	a4,0(s1)
    800042e0:	00993023          	sd	s1,0(s2)
    800042e4:	fcfa76e3          	bgeu	s4,a5,800042b0 <freerange+0x70>
    800042e8:	03813083          	ld	ra,56(sp)
    800042ec:	03013403          	ld	s0,48(sp)
    800042f0:	02813483          	ld	s1,40(sp)
    800042f4:	02013903          	ld	s2,32(sp)
    800042f8:	01813983          	ld	s3,24(sp)
    800042fc:	01013a03          	ld	s4,16(sp)
    80004300:	00813a83          	ld	s5,8(sp)
    80004304:	00013b03          	ld	s6,0(sp)
    80004308:	04010113          	addi	sp,sp,64
    8000430c:	00008067          	ret
    80004310:	00001517          	auipc	a0,0x1
    80004314:	f3050513          	addi	a0,a0,-208 # 80005240 <digits+0x18>
    80004318:	fffff097          	auipc	ra,0xfffff
    8000431c:	3d4080e7          	jalr	980(ra) # 800036ec <panic>

0000000080004320 <kfree>:
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00113c23          	sd	ra,24(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	02010413          	addi	s0,sp,32
    80004334:	03451793          	slli	a5,a0,0x34
    80004338:	04079c63          	bnez	a5,80004390 <kfree+0x70>
    8000433c:	00003797          	auipc	a5,0x3
    80004340:	ec478793          	addi	a5,a5,-316 # 80007200 <end>
    80004344:	00050493          	mv	s1,a0
    80004348:	04f56463          	bltu	a0,a5,80004390 <kfree+0x70>
    8000434c:	01100793          	li	a5,17
    80004350:	01b79793          	slli	a5,a5,0x1b
    80004354:	02f57e63          	bgeu	a0,a5,80004390 <kfree+0x70>
    80004358:	00001637          	lui	a2,0x1
    8000435c:	00100593          	li	a1,1
    80004360:	00000097          	auipc	ra,0x0
    80004364:	478080e7          	jalr	1144(ra) # 800047d8 <__memset>
    80004368:	00002797          	auipc	a5,0x2
    8000436c:	bc878793          	addi	a5,a5,-1080 # 80005f30 <kmem>
    80004370:	0007b703          	ld	a4,0(a5)
    80004374:	01813083          	ld	ra,24(sp)
    80004378:	01013403          	ld	s0,16(sp)
    8000437c:	00e4b023          	sd	a4,0(s1)
    80004380:	0097b023          	sd	s1,0(a5)
    80004384:	00813483          	ld	s1,8(sp)
    80004388:	02010113          	addi	sp,sp,32
    8000438c:	00008067          	ret
    80004390:	00001517          	auipc	a0,0x1
    80004394:	eb050513          	addi	a0,a0,-336 # 80005240 <digits+0x18>
    80004398:	fffff097          	auipc	ra,0xfffff
    8000439c:	354080e7          	jalr	852(ra) # 800036ec <panic>

00000000800043a0 <kalloc>:
    800043a0:	fe010113          	addi	sp,sp,-32
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	00113c23          	sd	ra,24(sp)
    800043b0:	02010413          	addi	s0,sp,32
    800043b4:	00002797          	auipc	a5,0x2
    800043b8:	b7c78793          	addi	a5,a5,-1156 # 80005f30 <kmem>
    800043bc:	0007b483          	ld	s1,0(a5)
    800043c0:	02048063          	beqz	s1,800043e0 <kalloc+0x40>
    800043c4:	0004b703          	ld	a4,0(s1)
    800043c8:	00001637          	lui	a2,0x1
    800043cc:	00500593          	li	a1,5
    800043d0:	00048513          	mv	a0,s1
    800043d4:	00e7b023          	sd	a4,0(a5)
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	400080e7          	jalr	1024(ra) # 800047d8 <__memset>
    800043e0:	01813083          	ld	ra,24(sp)
    800043e4:	01013403          	ld	s0,16(sp)
    800043e8:	00048513          	mv	a0,s1
    800043ec:	00813483          	ld	s1,8(sp)
    800043f0:	02010113          	addi	sp,sp,32
    800043f4:	00008067          	ret

00000000800043f8 <initlock>:
    800043f8:	ff010113          	addi	sp,sp,-16
    800043fc:	00813423          	sd	s0,8(sp)
    80004400:	01010413          	addi	s0,sp,16
    80004404:	00813403          	ld	s0,8(sp)
    80004408:	00b53423          	sd	a1,8(a0)
    8000440c:	00052023          	sw	zero,0(a0)
    80004410:	00053823          	sd	zero,16(a0)
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00008067          	ret

000000008000441c <acquire>:
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00813823          	sd	s0,16(sp)
    80004424:	00913423          	sd	s1,8(sp)
    80004428:	00113c23          	sd	ra,24(sp)
    8000442c:	01213023          	sd	s2,0(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	00050493          	mv	s1,a0
    80004438:	10002973          	csrr	s2,sstatus
    8000443c:	100027f3          	csrr	a5,sstatus
    80004440:	ffd7f793          	andi	a5,a5,-3
    80004444:	10079073          	csrw	sstatus,a5
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	8ec080e7          	jalr	-1812(ra) # 80002d34 <mycpu>
    80004450:	07852783          	lw	a5,120(a0)
    80004454:	06078e63          	beqz	a5,800044d0 <acquire+0xb4>
    80004458:	fffff097          	auipc	ra,0xfffff
    8000445c:	8dc080e7          	jalr	-1828(ra) # 80002d34 <mycpu>
    80004460:	07852783          	lw	a5,120(a0)
    80004464:	0004a703          	lw	a4,0(s1)
    80004468:	0017879b          	addiw	a5,a5,1
    8000446c:	06f52c23          	sw	a5,120(a0)
    80004470:	04071063          	bnez	a4,800044b0 <acquire+0x94>
    80004474:	00100713          	li	a4,1
    80004478:	00070793          	mv	a5,a4
    8000447c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004480:	0007879b          	sext.w	a5,a5
    80004484:	fe079ae3          	bnez	a5,80004478 <acquire+0x5c>
    80004488:	0ff0000f          	fence
    8000448c:	fffff097          	auipc	ra,0xfffff
    80004490:	8a8080e7          	jalr	-1880(ra) # 80002d34 <mycpu>
    80004494:	01813083          	ld	ra,24(sp)
    80004498:	01013403          	ld	s0,16(sp)
    8000449c:	00a4b823          	sd	a0,16(s1)
    800044a0:	00013903          	ld	s2,0(sp)
    800044a4:	00813483          	ld	s1,8(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	00008067          	ret
    800044b0:	0104b903          	ld	s2,16(s1)
    800044b4:	fffff097          	auipc	ra,0xfffff
    800044b8:	880080e7          	jalr	-1920(ra) # 80002d34 <mycpu>
    800044bc:	faa91ce3          	bne	s2,a0,80004474 <acquire+0x58>
    800044c0:	00001517          	auipc	a0,0x1
    800044c4:	d8850513          	addi	a0,a0,-632 # 80005248 <digits+0x20>
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	224080e7          	jalr	548(ra) # 800036ec <panic>
    800044d0:	00195913          	srli	s2,s2,0x1
    800044d4:	fffff097          	auipc	ra,0xfffff
    800044d8:	860080e7          	jalr	-1952(ra) # 80002d34 <mycpu>
    800044dc:	00197913          	andi	s2,s2,1
    800044e0:	07252e23          	sw	s2,124(a0)
    800044e4:	f75ff06f          	j	80004458 <acquire+0x3c>

00000000800044e8 <release>:
    800044e8:	fe010113          	addi	sp,sp,-32
    800044ec:	00813823          	sd	s0,16(sp)
    800044f0:	00113c23          	sd	ra,24(sp)
    800044f4:	00913423          	sd	s1,8(sp)
    800044f8:	01213023          	sd	s2,0(sp)
    800044fc:	02010413          	addi	s0,sp,32
    80004500:	00052783          	lw	a5,0(a0)
    80004504:	00079a63          	bnez	a5,80004518 <release+0x30>
    80004508:	00001517          	auipc	a0,0x1
    8000450c:	d4850513          	addi	a0,a0,-696 # 80005250 <digits+0x28>
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	1dc080e7          	jalr	476(ra) # 800036ec <panic>
    80004518:	01053903          	ld	s2,16(a0)
    8000451c:	00050493          	mv	s1,a0
    80004520:	fffff097          	auipc	ra,0xfffff
    80004524:	814080e7          	jalr	-2028(ra) # 80002d34 <mycpu>
    80004528:	fea910e3          	bne	s2,a0,80004508 <release+0x20>
    8000452c:	0004b823          	sd	zero,16(s1)
    80004530:	0ff0000f          	fence
    80004534:	0f50000f          	fence	iorw,ow
    80004538:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000453c:	ffffe097          	auipc	ra,0xffffe
    80004540:	7f8080e7          	jalr	2040(ra) # 80002d34 <mycpu>
    80004544:	100027f3          	csrr	a5,sstatus
    80004548:	0027f793          	andi	a5,a5,2
    8000454c:	04079a63          	bnez	a5,800045a0 <release+0xb8>
    80004550:	07852783          	lw	a5,120(a0)
    80004554:	02f05e63          	blez	a5,80004590 <release+0xa8>
    80004558:	fff7871b          	addiw	a4,a5,-1
    8000455c:	06e52c23          	sw	a4,120(a0)
    80004560:	00071c63          	bnez	a4,80004578 <release+0x90>
    80004564:	07c52783          	lw	a5,124(a0)
    80004568:	00078863          	beqz	a5,80004578 <release+0x90>
    8000456c:	100027f3          	csrr	a5,sstatus
    80004570:	0027e793          	ori	a5,a5,2
    80004574:	10079073          	csrw	sstatus,a5
    80004578:	01813083          	ld	ra,24(sp)
    8000457c:	01013403          	ld	s0,16(sp)
    80004580:	00813483          	ld	s1,8(sp)
    80004584:	00013903          	ld	s2,0(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret
    80004590:	00001517          	auipc	a0,0x1
    80004594:	ce050513          	addi	a0,a0,-800 # 80005270 <digits+0x48>
    80004598:	fffff097          	auipc	ra,0xfffff
    8000459c:	154080e7          	jalr	340(ra) # 800036ec <panic>
    800045a0:	00001517          	auipc	a0,0x1
    800045a4:	cb850513          	addi	a0,a0,-840 # 80005258 <digits+0x30>
    800045a8:	fffff097          	auipc	ra,0xfffff
    800045ac:	144080e7          	jalr	324(ra) # 800036ec <panic>

00000000800045b0 <holding>:
    800045b0:	00052783          	lw	a5,0(a0)
    800045b4:	00079663          	bnez	a5,800045c0 <holding+0x10>
    800045b8:	00000513          	li	a0,0
    800045bc:	00008067          	ret
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00813823          	sd	s0,16(sp)
    800045c8:	00913423          	sd	s1,8(sp)
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	02010413          	addi	s0,sp,32
    800045d4:	01053483          	ld	s1,16(a0)
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	75c080e7          	jalr	1884(ra) # 80002d34 <mycpu>
    800045e0:	01813083          	ld	ra,24(sp)
    800045e4:	01013403          	ld	s0,16(sp)
    800045e8:	40a48533          	sub	a0,s1,a0
    800045ec:	00153513          	seqz	a0,a0
    800045f0:	00813483          	ld	s1,8(sp)
    800045f4:	02010113          	addi	sp,sp,32
    800045f8:	00008067          	ret

00000000800045fc <push_off>:
    800045fc:	fe010113          	addi	sp,sp,-32
    80004600:	00813823          	sd	s0,16(sp)
    80004604:	00113c23          	sd	ra,24(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	100024f3          	csrr	s1,sstatus
    80004614:	100027f3          	csrr	a5,sstatus
    80004618:	ffd7f793          	andi	a5,a5,-3
    8000461c:	10079073          	csrw	sstatus,a5
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	714080e7          	jalr	1812(ra) # 80002d34 <mycpu>
    80004628:	07852783          	lw	a5,120(a0)
    8000462c:	02078663          	beqz	a5,80004658 <push_off+0x5c>
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	704080e7          	jalr	1796(ra) # 80002d34 <mycpu>
    80004638:	07852783          	lw	a5,120(a0)
    8000463c:	01813083          	ld	ra,24(sp)
    80004640:	01013403          	ld	s0,16(sp)
    80004644:	0017879b          	addiw	a5,a5,1
    80004648:	06f52c23          	sw	a5,120(a0)
    8000464c:	00813483          	ld	s1,8(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret
    80004658:	0014d493          	srli	s1,s1,0x1
    8000465c:	ffffe097          	auipc	ra,0xffffe
    80004660:	6d8080e7          	jalr	1752(ra) # 80002d34 <mycpu>
    80004664:	0014f493          	andi	s1,s1,1
    80004668:	06952e23          	sw	s1,124(a0)
    8000466c:	fc5ff06f          	j	80004630 <push_off+0x34>

0000000080004670 <pop_off>:
    80004670:	ff010113          	addi	sp,sp,-16
    80004674:	00813023          	sd	s0,0(sp)
    80004678:	00113423          	sd	ra,8(sp)
    8000467c:	01010413          	addi	s0,sp,16
    80004680:	ffffe097          	auipc	ra,0xffffe
    80004684:	6b4080e7          	jalr	1716(ra) # 80002d34 <mycpu>
    80004688:	100027f3          	csrr	a5,sstatus
    8000468c:	0027f793          	andi	a5,a5,2
    80004690:	04079663          	bnez	a5,800046dc <pop_off+0x6c>
    80004694:	07852783          	lw	a5,120(a0)
    80004698:	02f05a63          	blez	a5,800046cc <pop_off+0x5c>
    8000469c:	fff7871b          	addiw	a4,a5,-1
    800046a0:	06e52c23          	sw	a4,120(a0)
    800046a4:	00071c63          	bnez	a4,800046bc <pop_off+0x4c>
    800046a8:	07c52783          	lw	a5,124(a0)
    800046ac:	00078863          	beqz	a5,800046bc <pop_off+0x4c>
    800046b0:	100027f3          	csrr	a5,sstatus
    800046b4:	0027e793          	ori	a5,a5,2
    800046b8:	10079073          	csrw	sstatus,a5
    800046bc:	00813083          	ld	ra,8(sp)
    800046c0:	00013403          	ld	s0,0(sp)
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00008067          	ret
    800046cc:	00001517          	auipc	a0,0x1
    800046d0:	ba450513          	addi	a0,a0,-1116 # 80005270 <digits+0x48>
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	018080e7          	jalr	24(ra) # 800036ec <panic>
    800046dc:	00001517          	auipc	a0,0x1
    800046e0:	b7c50513          	addi	a0,a0,-1156 # 80005258 <digits+0x30>
    800046e4:	fffff097          	auipc	ra,0xfffff
    800046e8:	008080e7          	jalr	8(ra) # 800036ec <panic>

00000000800046ec <push_on>:
    800046ec:	fe010113          	addi	sp,sp,-32
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00113c23          	sd	ra,24(sp)
    800046f8:	00913423          	sd	s1,8(sp)
    800046fc:	02010413          	addi	s0,sp,32
    80004700:	100024f3          	csrr	s1,sstatus
    80004704:	100027f3          	csrr	a5,sstatus
    80004708:	0027e793          	ori	a5,a5,2
    8000470c:	10079073          	csrw	sstatus,a5
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	624080e7          	jalr	1572(ra) # 80002d34 <mycpu>
    80004718:	07852783          	lw	a5,120(a0)
    8000471c:	02078663          	beqz	a5,80004748 <push_on+0x5c>
    80004720:	ffffe097          	auipc	ra,0xffffe
    80004724:	614080e7          	jalr	1556(ra) # 80002d34 <mycpu>
    80004728:	07852783          	lw	a5,120(a0)
    8000472c:	01813083          	ld	ra,24(sp)
    80004730:	01013403          	ld	s0,16(sp)
    80004734:	0017879b          	addiw	a5,a5,1
    80004738:	06f52c23          	sw	a5,120(a0)
    8000473c:	00813483          	ld	s1,8(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret
    80004748:	0014d493          	srli	s1,s1,0x1
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	5e8080e7          	jalr	1512(ra) # 80002d34 <mycpu>
    80004754:	0014f493          	andi	s1,s1,1
    80004758:	06952e23          	sw	s1,124(a0)
    8000475c:	fc5ff06f          	j	80004720 <push_on+0x34>

0000000080004760 <pop_on>:
    80004760:	ff010113          	addi	sp,sp,-16
    80004764:	00813023          	sd	s0,0(sp)
    80004768:	00113423          	sd	ra,8(sp)
    8000476c:	01010413          	addi	s0,sp,16
    80004770:	ffffe097          	auipc	ra,0xffffe
    80004774:	5c4080e7          	jalr	1476(ra) # 80002d34 <mycpu>
    80004778:	100027f3          	csrr	a5,sstatus
    8000477c:	0027f793          	andi	a5,a5,2
    80004780:	04078463          	beqz	a5,800047c8 <pop_on+0x68>
    80004784:	07852783          	lw	a5,120(a0)
    80004788:	02f05863          	blez	a5,800047b8 <pop_on+0x58>
    8000478c:	fff7879b          	addiw	a5,a5,-1
    80004790:	06f52c23          	sw	a5,120(a0)
    80004794:	07853783          	ld	a5,120(a0)
    80004798:	00079863          	bnez	a5,800047a8 <pop_on+0x48>
    8000479c:	100027f3          	csrr	a5,sstatus
    800047a0:	ffd7f793          	andi	a5,a5,-3
    800047a4:	10079073          	csrw	sstatus,a5
    800047a8:	00813083          	ld	ra,8(sp)
    800047ac:	00013403          	ld	s0,0(sp)
    800047b0:	01010113          	addi	sp,sp,16
    800047b4:	00008067          	ret
    800047b8:	00001517          	auipc	a0,0x1
    800047bc:	ae050513          	addi	a0,a0,-1312 # 80005298 <digits+0x70>
    800047c0:	fffff097          	auipc	ra,0xfffff
    800047c4:	f2c080e7          	jalr	-212(ra) # 800036ec <panic>
    800047c8:	00001517          	auipc	a0,0x1
    800047cc:	ab050513          	addi	a0,a0,-1360 # 80005278 <digits+0x50>
    800047d0:	fffff097          	auipc	ra,0xfffff
    800047d4:	f1c080e7          	jalr	-228(ra) # 800036ec <panic>

00000000800047d8 <__memset>:
    800047d8:	ff010113          	addi	sp,sp,-16
    800047dc:	00813423          	sd	s0,8(sp)
    800047e0:	01010413          	addi	s0,sp,16
    800047e4:	1a060e63          	beqz	a2,800049a0 <__memset+0x1c8>
    800047e8:	40a007b3          	neg	a5,a0
    800047ec:	0077f793          	andi	a5,a5,7
    800047f0:	00778693          	addi	a3,a5,7
    800047f4:	00b00813          	li	a6,11
    800047f8:	0ff5f593          	andi	a1,a1,255
    800047fc:	fff6071b          	addiw	a4,a2,-1
    80004800:	1b06e663          	bltu	a3,a6,800049ac <__memset+0x1d4>
    80004804:	1cd76463          	bltu	a4,a3,800049cc <__memset+0x1f4>
    80004808:	1a078e63          	beqz	a5,800049c4 <__memset+0x1ec>
    8000480c:	00b50023          	sb	a1,0(a0)
    80004810:	00100713          	li	a4,1
    80004814:	1ae78463          	beq	a5,a4,800049bc <__memset+0x1e4>
    80004818:	00b500a3          	sb	a1,1(a0)
    8000481c:	00200713          	li	a4,2
    80004820:	1ae78a63          	beq	a5,a4,800049d4 <__memset+0x1fc>
    80004824:	00b50123          	sb	a1,2(a0)
    80004828:	00300713          	li	a4,3
    8000482c:	18e78463          	beq	a5,a4,800049b4 <__memset+0x1dc>
    80004830:	00b501a3          	sb	a1,3(a0)
    80004834:	00400713          	li	a4,4
    80004838:	1ae78263          	beq	a5,a4,800049dc <__memset+0x204>
    8000483c:	00b50223          	sb	a1,4(a0)
    80004840:	00500713          	li	a4,5
    80004844:	1ae78063          	beq	a5,a4,800049e4 <__memset+0x20c>
    80004848:	00b502a3          	sb	a1,5(a0)
    8000484c:	00700713          	li	a4,7
    80004850:	18e79e63          	bne	a5,a4,800049ec <__memset+0x214>
    80004854:	00b50323          	sb	a1,6(a0)
    80004858:	00700e93          	li	t4,7
    8000485c:	00859713          	slli	a4,a1,0x8
    80004860:	00e5e733          	or	a4,a1,a4
    80004864:	01059e13          	slli	t3,a1,0x10
    80004868:	01c76e33          	or	t3,a4,t3
    8000486c:	01859313          	slli	t1,a1,0x18
    80004870:	006e6333          	or	t1,t3,t1
    80004874:	02059893          	slli	a7,a1,0x20
    80004878:	40f60e3b          	subw	t3,a2,a5
    8000487c:	011368b3          	or	a7,t1,a7
    80004880:	02859813          	slli	a6,a1,0x28
    80004884:	0108e833          	or	a6,a7,a6
    80004888:	03059693          	slli	a3,a1,0x30
    8000488c:	003e589b          	srliw	a7,t3,0x3
    80004890:	00d866b3          	or	a3,a6,a3
    80004894:	03859713          	slli	a4,a1,0x38
    80004898:	00389813          	slli	a6,a7,0x3
    8000489c:	00f507b3          	add	a5,a0,a5
    800048a0:	00e6e733          	or	a4,a3,a4
    800048a4:	000e089b          	sext.w	a7,t3
    800048a8:	00f806b3          	add	a3,a6,a5
    800048ac:	00e7b023          	sd	a4,0(a5)
    800048b0:	00878793          	addi	a5,a5,8
    800048b4:	fed79ce3          	bne	a5,a3,800048ac <__memset+0xd4>
    800048b8:	ff8e7793          	andi	a5,t3,-8
    800048bc:	0007871b          	sext.w	a4,a5
    800048c0:	01d787bb          	addw	a5,a5,t4
    800048c4:	0ce88e63          	beq	a7,a4,800049a0 <__memset+0x1c8>
    800048c8:	00f50733          	add	a4,a0,a5
    800048cc:	00b70023          	sb	a1,0(a4)
    800048d0:	0017871b          	addiw	a4,a5,1
    800048d4:	0cc77663          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    800048d8:	00e50733          	add	a4,a0,a4
    800048dc:	00b70023          	sb	a1,0(a4)
    800048e0:	0027871b          	addiw	a4,a5,2
    800048e4:	0ac77e63          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    800048e8:	00e50733          	add	a4,a0,a4
    800048ec:	00b70023          	sb	a1,0(a4)
    800048f0:	0037871b          	addiw	a4,a5,3
    800048f4:	0ac77663          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    800048f8:	00e50733          	add	a4,a0,a4
    800048fc:	00b70023          	sb	a1,0(a4)
    80004900:	0047871b          	addiw	a4,a5,4
    80004904:	08c77e63          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004908:	00e50733          	add	a4,a0,a4
    8000490c:	00b70023          	sb	a1,0(a4)
    80004910:	0057871b          	addiw	a4,a5,5
    80004914:	08c77663          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004918:	00e50733          	add	a4,a0,a4
    8000491c:	00b70023          	sb	a1,0(a4)
    80004920:	0067871b          	addiw	a4,a5,6
    80004924:	06c77e63          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004928:	00e50733          	add	a4,a0,a4
    8000492c:	00b70023          	sb	a1,0(a4)
    80004930:	0077871b          	addiw	a4,a5,7
    80004934:	06c77663          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004938:	00e50733          	add	a4,a0,a4
    8000493c:	00b70023          	sb	a1,0(a4)
    80004940:	0087871b          	addiw	a4,a5,8
    80004944:	04c77e63          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004948:	00e50733          	add	a4,a0,a4
    8000494c:	00b70023          	sb	a1,0(a4)
    80004950:	0097871b          	addiw	a4,a5,9
    80004954:	04c77663          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004958:	00e50733          	add	a4,a0,a4
    8000495c:	00b70023          	sb	a1,0(a4)
    80004960:	00a7871b          	addiw	a4,a5,10
    80004964:	02c77e63          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004968:	00e50733          	add	a4,a0,a4
    8000496c:	00b70023          	sb	a1,0(a4)
    80004970:	00b7871b          	addiw	a4,a5,11
    80004974:	02c77663          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00b70023          	sb	a1,0(a4)
    80004980:	00c7871b          	addiw	a4,a5,12
    80004984:	00c77e63          	bgeu	a4,a2,800049a0 <__memset+0x1c8>
    80004988:	00e50733          	add	a4,a0,a4
    8000498c:	00b70023          	sb	a1,0(a4)
    80004990:	00d7879b          	addiw	a5,a5,13
    80004994:	00c7f663          	bgeu	a5,a2,800049a0 <__memset+0x1c8>
    80004998:	00f507b3          	add	a5,a0,a5
    8000499c:	00b78023          	sb	a1,0(a5)
    800049a0:	00813403          	ld	s0,8(sp)
    800049a4:	01010113          	addi	sp,sp,16
    800049a8:	00008067          	ret
    800049ac:	00b00693          	li	a3,11
    800049b0:	e55ff06f          	j	80004804 <__memset+0x2c>
    800049b4:	00300e93          	li	t4,3
    800049b8:	ea5ff06f          	j	8000485c <__memset+0x84>
    800049bc:	00100e93          	li	t4,1
    800049c0:	e9dff06f          	j	8000485c <__memset+0x84>
    800049c4:	00000e93          	li	t4,0
    800049c8:	e95ff06f          	j	8000485c <__memset+0x84>
    800049cc:	00000793          	li	a5,0
    800049d0:	ef9ff06f          	j	800048c8 <__memset+0xf0>
    800049d4:	00200e93          	li	t4,2
    800049d8:	e85ff06f          	j	8000485c <__memset+0x84>
    800049dc:	00400e93          	li	t4,4
    800049e0:	e7dff06f          	j	8000485c <__memset+0x84>
    800049e4:	00500e93          	li	t4,5
    800049e8:	e75ff06f          	j	8000485c <__memset+0x84>
    800049ec:	00600e93          	li	t4,6
    800049f0:	e6dff06f          	j	8000485c <__memset+0x84>

00000000800049f4 <__memmove>:
    800049f4:	ff010113          	addi	sp,sp,-16
    800049f8:	00813423          	sd	s0,8(sp)
    800049fc:	01010413          	addi	s0,sp,16
    80004a00:	0e060863          	beqz	a2,80004af0 <__memmove+0xfc>
    80004a04:	fff6069b          	addiw	a3,a2,-1
    80004a08:	0006881b          	sext.w	a6,a3
    80004a0c:	0ea5e863          	bltu	a1,a0,80004afc <__memmove+0x108>
    80004a10:	00758713          	addi	a4,a1,7
    80004a14:	00a5e7b3          	or	a5,a1,a0
    80004a18:	40a70733          	sub	a4,a4,a0
    80004a1c:	0077f793          	andi	a5,a5,7
    80004a20:	00f73713          	sltiu	a4,a4,15
    80004a24:	00174713          	xori	a4,a4,1
    80004a28:	0017b793          	seqz	a5,a5
    80004a2c:	00e7f7b3          	and	a5,a5,a4
    80004a30:	10078863          	beqz	a5,80004b40 <__memmove+0x14c>
    80004a34:	00900793          	li	a5,9
    80004a38:	1107f463          	bgeu	a5,a6,80004b40 <__memmove+0x14c>
    80004a3c:	0036581b          	srliw	a6,a2,0x3
    80004a40:	fff8081b          	addiw	a6,a6,-1
    80004a44:	02081813          	slli	a6,a6,0x20
    80004a48:	01d85893          	srli	a7,a6,0x1d
    80004a4c:	00858813          	addi	a6,a1,8
    80004a50:	00058793          	mv	a5,a1
    80004a54:	00050713          	mv	a4,a0
    80004a58:	01088833          	add	a6,a7,a6
    80004a5c:	0007b883          	ld	a7,0(a5)
    80004a60:	00878793          	addi	a5,a5,8
    80004a64:	00870713          	addi	a4,a4,8
    80004a68:	ff173c23          	sd	a7,-8(a4)
    80004a6c:	ff0798e3          	bne	a5,a6,80004a5c <__memmove+0x68>
    80004a70:	ff867713          	andi	a4,a2,-8
    80004a74:	02071793          	slli	a5,a4,0x20
    80004a78:	0207d793          	srli	a5,a5,0x20
    80004a7c:	00f585b3          	add	a1,a1,a5
    80004a80:	40e686bb          	subw	a3,a3,a4
    80004a84:	00f507b3          	add	a5,a0,a5
    80004a88:	06e60463          	beq	a2,a4,80004af0 <__memmove+0xfc>
    80004a8c:	0005c703          	lbu	a4,0(a1)
    80004a90:	00e78023          	sb	a4,0(a5)
    80004a94:	04068e63          	beqz	a3,80004af0 <__memmove+0xfc>
    80004a98:	0015c603          	lbu	a2,1(a1)
    80004a9c:	00100713          	li	a4,1
    80004aa0:	00c780a3          	sb	a2,1(a5)
    80004aa4:	04e68663          	beq	a3,a4,80004af0 <__memmove+0xfc>
    80004aa8:	0025c603          	lbu	a2,2(a1)
    80004aac:	00200713          	li	a4,2
    80004ab0:	00c78123          	sb	a2,2(a5)
    80004ab4:	02e68e63          	beq	a3,a4,80004af0 <__memmove+0xfc>
    80004ab8:	0035c603          	lbu	a2,3(a1)
    80004abc:	00300713          	li	a4,3
    80004ac0:	00c781a3          	sb	a2,3(a5)
    80004ac4:	02e68663          	beq	a3,a4,80004af0 <__memmove+0xfc>
    80004ac8:	0045c603          	lbu	a2,4(a1)
    80004acc:	00400713          	li	a4,4
    80004ad0:	00c78223          	sb	a2,4(a5)
    80004ad4:	00e68e63          	beq	a3,a4,80004af0 <__memmove+0xfc>
    80004ad8:	0055c603          	lbu	a2,5(a1)
    80004adc:	00500713          	li	a4,5
    80004ae0:	00c782a3          	sb	a2,5(a5)
    80004ae4:	00e68663          	beq	a3,a4,80004af0 <__memmove+0xfc>
    80004ae8:	0065c703          	lbu	a4,6(a1)
    80004aec:	00e78323          	sb	a4,6(a5)
    80004af0:	00813403          	ld	s0,8(sp)
    80004af4:	01010113          	addi	sp,sp,16
    80004af8:	00008067          	ret
    80004afc:	02061713          	slli	a4,a2,0x20
    80004b00:	02075713          	srli	a4,a4,0x20
    80004b04:	00e587b3          	add	a5,a1,a4
    80004b08:	f0f574e3          	bgeu	a0,a5,80004a10 <__memmove+0x1c>
    80004b0c:	02069613          	slli	a2,a3,0x20
    80004b10:	02065613          	srli	a2,a2,0x20
    80004b14:	fff64613          	not	a2,a2
    80004b18:	00e50733          	add	a4,a0,a4
    80004b1c:	00c78633          	add	a2,a5,a2
    80004b20:	fff7c683          	lbu	a3,-1(a5)
    80004b24:	fff78793          	addi	a5,a5,-1
    80004b28:	fff70713          	addi	a4,a4,-1
    80004b2c:	00d70023          	sb	a3,0(a4)
    80004b30:	fec798e3          	bne	a5,a2,80004b20 <__memmove+0x12c>
    80004b34:	00813403          	ld	s0,8(sp)
    80004b38:	01010113          	addi	sp,sp,16
    80004b3c:	00008067          	ret
    80004b40:	02069713          	slli	a4,a3,0x20
    80004b44:	02075713          	srli	a4,a4,0x20
    80004b48:	00170713          	addi	a4,a4,1
    80004b4c:	00e50733          	add	a4,a0,a4
    80004b50:	00050793          	mv	a5,a0
    80004b54:	0005c683          	lbu	a3,0(a1)
    80004b58:	00178793          	addi	a5,a5,1
    80004b5c:	00158593          	addi	a1,a1,1
    80004b60:	fed78fa3          	sb	a3,-1(a5)
    80004b64:	fee798e3          	bne	a5,a4,80004b54 <__memmove+0x160>
    80004b68:	f89ff06f          	j	80004af0 <__memmove+0xfc>

0000000080004b6c <__putc>:
    80004b6c:	fe010113          	addi	sp,sp,-32
    80004b70:	00813823          	sd	s0,16(sp)
    80004b74:	00113c23          	sd	ra,24(sp)
    80004b78:	02010413          	addi	s0,sp,32
    80004b7c:	00050793          	mv	a5,a0
    80004b80:	fef40593          	addi	a1,s0,-17
    80004b84:	00100613          	li	a2,1
    80004b88:	00000513          	li	a0,0
    80004b8c:	fef407a3          	sb	a5,-17(s0)
    80004b90:	fffff097          	auipc	ra,0xfffff
    80004b94:	b3c080e7          	jalr	-1220(ra) # 800036cc <console_write>
    80004b98:	01813083          	ld	ra,24(sp)
    80004b9c:	01013403          	ld	s0,16(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret

0000000080004ba8 <__getc>:
    80004ba8:	fe010113          	addi	sp,sp,-32
    80004bac:	00813823          	sd	s0,16(sp)
    80004bb0:	00113c23          	sd	ra,24(sp)
    80004bb4:	02010413          	addi	s0,sp,32
    80004bb8:	fe840593          	addi	a1,s0,-24
    80004bbc:	00100613          	li	a2,1
    80004bc0:	00000513          	li	a0,0
    80004bc4:	fffff097          	auipc	ra,0xfffff
    80004bc8:	ae8080e7          	jalr	-1304(ra) # 800036ac <console_read>
    80004bcc:	fe844503          	lbu	a0,-24(s0)
    80004bd0:	01813083          	ld	ra,24(sp)
    80004bd4:	01013403          	ld	s0,16(sp)
    80004bd8:	02010113          	addi	sp,sp,32
    80004bdc:	00008067          	ret

0000000080004be0 <console_handler>:
    80004be0:	fe010113          	addi	sp,sp,-32
    80004be4:	00813823          	sd	s0,16(sp)
    80004be8:	00113c23          	sd	ra,24(sp)
    80004bec:	00913423          	sd	s1,8(sp)
    80004bf0:	02010413          	addi	s0,sp,32
    80004bf4:	14202773          	csrr	a4,scause
    80004bf8:	100027f3          	csrr	a5,sstatus
    80004bfc:	0027f793          	andi	a5,a5,2
    80004c00:	06079e63          	bnez	a5,80004c7c <console_handler+0x9c>
    80004c04:	00074c63          	bltz	a4,80004c1c <console_handler+0x3c>
    80004c08:	01813083          	ld	ra,24(sp)
    80004c0c:	01013403          	ld	s0,16(sp)
    80004c10:	00813483          	ld	s1,8(sp)
    80004c14:	02010113          	addi	sp,sp,32
    80004c18:	00008067          	ret
    80004c1c:	0ff77713          	andi	a4,a4,255
    80004c20:	00900793          	li	a5,9
    80004c24:	fef712e3          	bne	a4,a5,80004c08 <console_handler+0x28>
    80004c28:	ffffe097          	auipc	ra,0xffffe
    80004c2c:	6dc080e7          	jalr	1756(ra) # 80003304 <plic_claim>
    80004c30:	00a00793          	li	a5,10
    80004c34:	00050493          	mv	s1,a0
    80004c38:	02f50c63          	beq	a0,a5,80004c70 <console_handler+0x90>
    80004c3c:	fc0506e3          	beqz	a0,80004c08 <console_handler+0x28>
    80004c40:	00050593          	mv	a1,a0
    80004c44:	00000517          	auipc	a0,0x0
    80004c48:	55c50513          	addi	a0,a0,1372 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    80004c4c:	fffff097          	auipc	ra,0xfffff
    80004c50:	afc080e7          	jalr	-1284(ra) # 80003748 <__printf>
    80004c54:	01013403          	ld	s0,16(sp)
    80004c58:	01813083          	ld	ra,24(sp)
    80004c5c:	00048513          	mv	a0,s1
    80004c60:	00813483          	ld	s1,8(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	ffffe317          	auipc	t1,0xffffe
    80004c6c:	6d430067          	jr	1748(t1) # 8000333c <plic_complete>
    80004c70:	fffff097          	auipc	ra,0xfffff
    80004c74:	3e0080e7          	jalr	992(ra) # 80004050 <uartintr>
    80004c78:	fddff06f          	j	80004c54 <console_handler+0x74>
    80004c7c:	00000517          	auipc	a0,0x0
    80004c80:	62450513          	addi	a0,a0,1572 # 800052a0 <digits+0x78>
    80004c84:	fffff097          	auipc	ra,0xfffff
    80004c88:	a68080e7          	jalr	-1432(ra) # 800036ec <panic>
	...
