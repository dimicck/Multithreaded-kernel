
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	d8013103          	ld	sp,-640(sp) # 8000cd80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	094070ef          	jal	ra,800070b0 <start>

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
    80001180:	2e9010ef          	jal	ra,80002c68 <_ZN5RISCV16handle_interruptEv>

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

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z11system_callmmmmm>:


// opsta funkcija, opsti argumenti
// op code -> registar a0 ___ argumenti reg a1 .. a4

void system_call(uint64 op_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001250:	00000073          	ecall
}
    80001254:	00813403          	ld	s0,8(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret

0000000080001260 <_Z9mem_allocm>:

// size (bytes) => syscall -> num of block
void* mem_alloc (size_t size) {
    if (!size) return nullptr;
    80001260:	04050463          	beqz	a0,800012a8 <_Z9mem_allocm+0x48>
void* mem_alloc (size_t size) {
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00113423          	sd	ra,8(sp)
    8000126c:	00813023          	sd	s0,0(sp)
    80001270:	01010413          	addi	s0,sp,16
    void volatile *ptr;
    uint64 blocks = (mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001274:	05750513          	addi	a0,a0,87
    system_call(MEM_ALLOC, blocks);
    80001278:	00000713          	li	a4,0
    8000127c:	00000693          	li	a3,0
    80001280:	00000613          	li	a2,0
    80001284:	00655593          	srli	a1,a0,0x6
    80001288:	00100513          	li	a0,1
    8000128c:	00000097          	auipc	ra,0x0
    80001290:	fb8080e7          	jalr	-72(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(ptr));
    80001294:	00050513          	mv	a0,a0
    return (void*)ptr;
}
    80001298:	00813083          	ld	ra,8(sp)
    8000129c:	00013403          	ld	s0,0(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret
    if (!size) return nullptr;
    800012a8:	00000513          	li	a0,0
}
    800012ac:	00008067          	ret

00000000800012b0 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800012b0:	fe010113          	addi	sp,sp,-32
    800012b4:	00113c23          	sd	ra,24(sp)
    800012b8:	00813823          	sd	s0,16(sp)
    800012bc:	02010413          	addi	s0,sp,32
    800012c0:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(MEM_FREE, (uint64)ptr);
    800012c4:	00000713          	li	a4,0
    800012c8:	00000693          	li	a3,0
    800012cc:	00000613          	li	a2,0
    800012d0:	00200513          	li	a0,2
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	f70080e7          	jalr	-144(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800012dc:	00050793          	mv	a5,a0
    800012e0:	fef42623          	sw	a5,-20(s0)
    return a0;
    800012e4:	fec42503          	lw	a0,-20(s0)
}
    800012e8:	0005051b          	sext.w	a0,a0
    800012ec:	01813083          	ld	ra,24(sp)
    800012f0:	01013403          	ld	s0,16(sp)
    800012f4:	02010113          	addi	sp,sp,32
    800012f8:	00008067          	ret

00000000800012fc <_Z13thread_createPP3TCBPFvPvES2_>:

// sistemski poziv thread_create prima
// dodatno void* stack_space

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012fc:	fc010113          	addi	sp,sp,-64
    80001300:	02113c23          	sd	ra,56(sp)
    80001304:	02813823          	sd	s0,48(sp)
    80001308:	02913423          	sd	s1,40(sp)
    8000130c:	03213023          	sd	s2,32(sp)
    80001310:	01313c23          	sd	s3,24(sp)
    80001314:	04010413          	addi	s0,sp,64
    80001318:	00050913          	mv	s2,a0
    8000131c:	00058493          	mv	s1,a1
    80001320:	00060993          	mv	s3,a2
    int volatile ret;
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001324:	04058c63          	beqz	a1,8000137c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001328:	00001537          	lui	a0,0x1
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	f34080e7          	jalr	-204(ra) # 80001260 <_Z9mem_allocm>
    80001334:	00050713          	mv	a4,a0
    system_call(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    80001338:	00098693          	mv	a3,s3
    8000133c:	00048613          	mv	a2,s1
    80001340:	00090593          	mv	a1,s2
    80001344:	01100513          	li	a0,17
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	efc080e7          	jalr	-260(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001350:	00050793          	mv	a5,a0
    80001354:	fcf42623          	sw	a5,-52(s0)
    return ret;
    80001358:	fcc42503          	lw	a0,-52(s0)
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	03813083          	ld	ra,56(sp)
    80001364:	03013403          	ld	s0,48(sp)
    80001368:	02813483          	ld	s1,40(sp)
    8000136c:	02013903          	ld	s2,32(sp)
    80001370:	01813983          	ld	s3,24(sp)
    80001374:	04010113          	addi	sp,sp,64
    80001378:	00008067          	ret
    void* stack_space = nullptr;
    8000137c:	00000713          	li	a4,0
    80001380:	fb9ff06f          	j	80001338 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001384 <_Z11thread_exitv>:

int thread_exit() {
    80001384:	fe010113          	addi	sp,sp,-32
    80001388:	00113c23          	sd	ra,24(sp)
    8000138c:	00813823          	sd	s0,16(sp)
    80001390:	02010413          	addi	s0,sp,32
    int volatile a0;
    system_call(THREAD_EXIT);
    80001394:	00000713          	li	a4,0
    80001398:	00000693          	li	a3,0
    8000139c:	00000613          	li	a2,0
    800013a0:	00000593          	li	a1,0
    800013a4:	01200513          	li	a0,18
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	e9c080e7          	jalr	-356(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800013b0:	00050793          	mv	a5,a0
    800013b4:	fef42623          	sw	a5,-20(s0)
    return a0;
    800013b8:	fec42503          	lw	a0,-20(s0)
}
    800013bc:	0005051b          	sext.w	a0,a0
    800013c0:	01813083          	ld	ra,24(sp)
    800013c4:	01013403          	ld	s0,16(sp)
    800013c8:	02010113          	addi	sp,sp,32
    800013cc:	00008067          	ret

00000000800013d0 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00113423          	sd	ra,8(sp)
    800013d8:	00813023          	sd	s0,0(sp)
    800013dc:	01010413          	addi	s0,sp,16
    system_call(THREAD_DISPATCH);
    800013e0:	00000713          	li	a4,0
    800013e4:	00000693          	li	a3,0
    800013e8:	00000613          	li	a2,0
    800013ec:	00000593          	li	a1,0
    800013f0:	01300513          	li	a0,19
    800013f4:	00000097          	auipc	ra,0x0
    800013f8:	e50080e7          	jalr	-432(ra) # 80001244 <_Z11system_callmmmmm>
}
    800013fc:	00813083          	ld	ra,8(sp)
    80001400:	00013403          	ld	s0,0(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    8000140c:	fe010113          	addi	sp,sp,-32
    80001410:	00113c23          	sd	ra,24(sp)
    80001414:	00813823          	sd	s0,16(sp)
    80001418:	02010413          	addi	s0,sp,32
    //if (init <= 0 || !handle) return -1;
    int volatile a0;
    system_call(SEM_OPEN, (uint64)handle, init);
    8000141c:	00000713          	li	a4,0
    80001420:	00000693          	li	a3,0
    80001424:	02059613          	slli	a2,a1,0x20
    80001428:	02065613          	srli	a2,a2,0x20
    8000142c:	00050593          	mv	a1,a0
    80001430:	02100513          	li	a0,33
    80001434:	00000097          	auipc	ra,0x0
    80001438:	e10080e7          	jalr	-496(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000143c:	00050793          	mv	a5,a0
    80001440:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001444:	fec42503          	lw	a0,-20(s0)
}
    80001448:	0005051b          	sext.w	a0,a0
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	02010113          	addi	sp,sp,32
    80001458:	00008067          	ret

000000008000145c <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    if (!handle) return -1; // no sem
    8000145c:	04050863          	beqz	a0,800014ac <_Z9sem_closeP3Sem+0x50>
int sem_close(sem_t handle) {
    80001460:	fe010113          	addi	sp,sp,-32
    80001464:	00113c23          	sd	ra,24(sp)
    80001468:	00813823          	sd	s0,16(sp)
    8000146c:	02010413          	addi	s0,sp,32
    80001470:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_CLOSE, (uint64)handle);
    80001474:	00000713          	li	a4,0
    80001478:	00000693          	li	a3,0
    8000147c:	00000613          	li	a2,0
    80001480:	02200513          	li	a0,34
    80001484:	00000097          	auipc	ra,0x0
    80001488:	dc0080e7          	jalr	-576(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000148c:	00050793          	mv	a5,a0
    80001490:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001494:	fec42503          	lw	a0,-20(s0)
    80001498:	0005051b          	sext.w	a0,a0
}
    8000149c:	01813083          	ld	ra,24(sp)
    800014a0:	01013403          	ld	s0,16(sp)
    800014a4:	02010113          	addi	sp,sp,32
    800014a8:	00008067          	ret
    if (!handle) return -1; // no sem
    800014ac:	fff00513          	li	a0,-1
}
    800014b0:	00008067          	ret

00000000800014b4 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00113c23          	sd	ra,24(sp)
    800014bc:	00813823          	sd	s0,16(sp)
    800014c0:	02010413          	addi	s0,sp,32
    800014c4:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_WAIT, (uint64)id);
    800014c8:	00000713          	li	a4,0
    800014cc:	00000693          	li	a3,0
    800014d0:	00000613          	li	a2,0
    800014d4:	02300513          	li	a0,35
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	d6c080e7          	jalr	-660(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800014e0:	00050793          	mv	a5,a0
    800014e4:	fef42623          	sw	a5,-20(s0)
    return a0;
    800014e8:	fec42503          	lw	a0,-20(s0)
}
    800014ec:	0005051b          	sext.w	a0,a0
    800014f0:	01813083          	ld	ra,24(sp)
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	02010113          	addi	sp,sp,32
    800014fc:	00008067          	ret

0000000080001500 <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    80001500:	fe010113          	addi	sp,sp,-32
    80001504:	00113c23          	sd	ra,24(sp)
    80001508:	00813823          	sd	s0,16(sp)
    8000150c:	02010413          	addi	s0,sp,32
    80001510:	00058613          	mv	a2,a1
    int volatile a0;
    system_call(SEM_TIMEDWAIT, (uint64)id, (uint64)timeout);
    80001514:	00000713          	li	a4,0
    80001518:	00000693          	li	a3,0
    8000151c:	00050593          	mv	a1,a0
    80001520:	02500513          	li	a0,37
    80001524:	00000097          	auipc	ra,0x0
    80001528:	d20080e7          	jalr	-736(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000152c:	00050793          	mv	a5,a0
    80001530:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001534:	fec42503          	lw	a0,-20(s0)
}
    80001538:	0005051b          	sext.w	a0,a0
    8000153c:	01813083          	ld	ra,24(sp)
    80001540:	01013403          	ld	s0,16(sp)
    80001544:	02010113          	addi	sp,sp,32
    80001548:	00008067          	ret

000000008000154c <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    8000154c:	fe010113          	addi	sp,sp,-32
    80001550:	00113c23          	sd	ra,24(sp)
    80001554:	00813823          	sd	s0,16(sp)
    80001558:	02010413          	addi	s0,sp,32
    8000155c:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_TRYWAIT, (uint64)id);
    80001560:	00000713          	li	a4,0
    80001564:	00000693          	li	a3,0
    80001568:	00000613          	li	a2,0
    8000156c:	02600513          	li	a0,38
    80001570:	00000097          	auipc	ra,0x0
    80001574:	cd4080e7          	jalr	-812(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001578:	00050793          	mv	a5,a0
    8000157c:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001580:	fec42503          	lw	a0,-20(s0)
}
    80001584:	0005051b          	sext.w	a0,a0
    80001588:	01813083          	ld	ra,24(sp)
    8000158c:	01013403          	ld	s0,16(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret

0000000080001598 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    80001598:	fe010113          	addi	sp,sp,-32
    8000159c:	00113c23          	sd	ra,24(sp)
    800015a0:	00813823          	sd	s0,16(sp)
    800015a4:	02010413          	addi	s0,sp,32
    800015a8:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_SIGNAL, (uint64)id);
    800015ac:	00000713          	li	a4,0
    800015b0:	00000693          	li	a3,0
    800015b4:	00000613          	li	a2,0
    800015b8:	02400513          	li	a0,36
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	c88080e7          	jalr	-888(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800015c4:	00050793          	mv	a5,a0
    800015c8:	fef42623          	sw	a5,-20(s0)
    return a0;
    800015cc:	fec42503          	lw	a0,-20(s0)
}
    800015d0:	0005051b          	sext.w	a0,a0
    800015d4:	01813083          	ld	ra,24(sp)
    800015d8:	01013403          	ld	s0,16(sp)
    800015dc:	02010113          	addi	sp,sp,32
    800015e0:	00008067          	ret

00000000800015e4 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    800015e4:	fe010113          	addi	sp,sp,-32
    800015e8:	00113c23          	sd	ra,24(sp)
    800015ec:	00813823          	sd	s0,16(sp)
    800015f0:	02010413          	addi	s0,sp,32
    800015f4:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(TIME_SLEEP, (uint64)time);
    800015f8:	00000713          	li	a4,0
    800015fc:	00000693          	li	a3,0
    80001600:	00000613          	li	a2,0
    80001604:	03100513          	li	a0,49
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	c3c080e7          	jalr	-964(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001610:	00050793          	mv	a5,a0
    80001614:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001618:	fec42503          	lw	a0,-20(s0)
}
    8000161c:	0005051b          	sext.w	a0,a0
    80001620:	01813083          	ld	ra,24(sp)
    80001624:	01013403          	ld	s0,16(sp)
    80001628:	02010113          	addi	sp,sp,32
    8000162c:	00008067          	ret

0000000080001630 <_Z4getcv>:

char getc() {
    80001630:	fe010113          	addi	sp,sp,-32
    80001634:	00113c23          	sd	ra,24(sp)
    80001638:	00813823          	sd	s0,16(sp)
    8000163c:	02010413          	addi	s0,sp,32
    char volatile a0;
    system_call(GETC);
    80001640:	00000713          	li	a4,0
    80001644:	00000693          	li	a3,0
    80001648:	00000613          	li	a2,0
    8000164c:	00000593          	li	a1,0
    80001650:	04100513          	li	a0,65
    80001654:	00000097          	auipc	ra,0x0
    80001658:	bf0080e7          	jalr	-1040(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000165c:	00050793          	mv	a5,a0
    80001660:	fef407a3          	sb	a5,-17(s0)
    return a0;
    80001664:	fef44503          	lbu	a0,-17(s0)
}
    80001668:	0ff57513          	andi	a0,a0,255
    8000166c:	01813083          	ld	ra,24(sp)
    80001670:	01013403          	ld	s0,16(sp)
    80001674:	02010113          	addi	sp,sp,32
    80001678:	00008067          	ret

000000008000167c <_Z4putcc>:

void putc(char c) {
    8000167c:	ff010113          	addi	sp,sp,-16
    80001680:	00113423          	sd	ra,8(sp)
    80001684:	00813023          	sd	s0,0(sp)
    80001688:	01010413          	addi	s0,sp,16
    8000168c:	00050593          	mv	a1,a0
    system_call(PUTC, c);
    80001690:	00000713          	li	a4,0
    80001694:	00000693          	li	a3,0
    80001698:	00000613          	li	a2,0
    8000169c:	04200513          	li	a0,66
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	ba4080e7          	jalr	-1116(ra) # 80001244 <_Z11system_callmmmmm>
}
    800016a8:	00813083          	ld	ra,8(sp)
    800016ac:	00013403          	ld	s0,0(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret

00000000800016b8 <_ZN3Sem7trywaitEPS_>:
    return 0;
}

int Sem::trywait(sem_t handle) { /// ??????????????????

    if (!handle) return SEM_CLOSED; // error code
    800016b8:	02050e63          	beqz	a0,800016f4 <_ZN3Sem7trywaitEPS_+0x3c>
    if (handle->value > 0) return sem_wait(handle);
    800016bc:	00052783          	lw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    800016c0:	00f04663          	bgtz	a5,800016cc <_ZN3Sem7trywaitEPS_+0x14>
    return 0; // no success
    800016c4:	00000513          	li	a0,0
}
    800016c8:	00008067          	ret
int Sem::trywait(sem_t handle) { /// ??????????????????
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    if (handle->value > 0) return sem_wait(handle);
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	dd8080e7          	jalr	-552(ra) # 800014b4 <_Z8sem_waitP3Sem>
}
    800016e4:	00813083          	ld	ra,8(sp)
    800016e8:	00013403          	ld	s0,0(sp)
    800016ec:	01010113          	addi	sp,sp,16
    800016f0:	00008067          	ret
    if (!handle) return SEM_CLOSED; // error code
    800016f4:	ffc00513          	li	a0,-4
    800016f8:	00008067          	ret

00000000800016fc <_ZN3SemdlEPv>:

    delete handle;
    return 0;
}

void Sem::operator delete(void *ptr) {
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00113423          	sd	ra,8(sp)
    80001704:	00813023          	sd	s0,0(sp)
    80001708:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    8000170c:	00002097          	auipc	ra,0x2
    80001710:	ba8080e7          	jalr	-1112(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001714:	00813083          	ld	ra,8(sp)
    80001718:	00013403          	ld	s0,0(sp)
    8000171c:	01010113          	addi	sp,sp,16
    80001720:	00008067          	ret

0000000080001724 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00113423          	sd	ra,8(sp)
    8000172c:	00813023          	sd	s0,0(sp)
    80001730:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001734:	05750513          	addi	a0,a0,87
    80001738:	00655513          	srli	a0,a0,0x6
    8000173c:	00002097          	auipc	ra,0x2
    80001740:	938080e7          	jalr	-1736(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001744:	00813083          	ld	ra,8(sp)
    80001748:	00013403          	ld	s0,0(sp)
    8000174c:	01010113          	addi	sp,sp,16
    80001750:	00008067          	ret

0000000080001754 <_ZNK3Sem8getValueEv>:

int Sem::getValue() const {
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00813423          	sd	s0,8(sp)
    8000175c:	01010413          	addi	s0,sp,16
    return value;
}
    80001760:	00052503          	lw	a0,0(a0)
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <_ZN3Sem6semAddEPS_>:

void Sem::semAdd(Sem* toAdd) {
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00813423          	sd	s0,8(sp)
    80001778:	01010413          	addi	s0,sp,16

    if (!first) first = last = toAdd;
    8000177c:	0000b797          	auipc	a5,0xb
    80001780:	6847b783          	ld	a5,1668(a5) # 8000ce00 <_ZN3Sem5firstE>
    80001784:	02078263          	beqz	a5,800017a8 <_ZN3Sem6semAddEPS_+0x38>
    else last = last -> next = toAdd;
    80001788:	0000b797          	auipc	a5,0xb
    8000178c:	67878793          	addi	a5,a5,1656 # 8000ce00 <_ZN3Sem5firstE>
    80001790:	0087b703          	ld	a4,8(a5)
    80001794:	00a73423          	sd	a0,8(a4)
    80001798:	00a7b423          	sd	a0,8(a5)

}
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret
    if (!first) first = last = toAdd;
    800017a8:	0000b797          	auipc	a5,0xb
    800017ac:	65878793          	addi	a5,a5,1624 # 8000ce00 <_ZN3Sem5firstE>
    800017b0:	00a7b423          	sd	a0,8(a5)
    800017b4:	00a7b023          	sd	a0,0(a5)
    800017b8:	fe5ff06f          	j	8000179c <_ZN3Sem6semAddEPS_+0x2c>

00000000800017bc <_ZN3Sem4openEPPS_j>:
int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	01213023          	sd	s2,0(sp)
    800017d0:	02010413          	addi	s0,sp,32
    800017d4:	00050913          	mv	s2,a0
    800017d8:	00058493          	mv	s1,a1
    auto newSem = new Sem((int)init);
    800017dc:	03000513          	li	a0,48
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	f44080e7          	jalr	-188(ra) # 80001724 <_ZN3SemnwEm>
//    static ListSEM semaphores;
    static Sem* first, *last;

private:

    explicit Sem(int init = 1) : value(init), next(nullptr), blocked() {}
    800017e8:	00952023          	sw	s1,0(a0)
    800017ec:	00053423          	sd	zero,8(a0)

public:

    friend class RISCV;

    List() : head(nullptr), tail(nullptr) {};
    800017f0:	00053823          	sd	zero,16(a0)
    800017f4:	00053c23          	sd	zero,24(a0)
    800017f8:	02052023          	sw	zero,32(a0)
    800017fc:	02052423          	sw	zero,40(a0)
    if (!newSem) return MEMORY_ERR;
    80001800:	02050663          	beqz	a0,8000182c <_ZN3Sem4openEPPS_j+0x70>
    *handle = newSem;
    80001804:	00a93023          	sd	a0,0(s2)
    semAdd(*handle); // to sems list
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	f68080e7          	jalr	-152(ra) # 80001770 <_ZN3Sem6semAddEPS_>
    return 0;
    80001810:	00000513          	li	a0,0
}
    80001814:	01813083          	ld	ra,24(sp)
    80001818:	01013403          	ld	s0,16(sp)
    8000181c:	00813483          	ld	s1,8(sp)
    80001820:	00013903          	ld	s2,0(sp)
    80001824:	02010113          	addi	sp,sp,32
    80001828:	00008067          	ret
    if (!newSem) return MEMORY_ERR;
    8000182c:	ffd00513          	li	a0,-3
    80001830:	fe5ff06f          	j	80001814 <_ZN3Sem4openEPPS_j+0x58>

0000000080001834 <_ZN3Sem9semRemoveEPS_>:

void Sem::semRemove(Sem* toDelete) {
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00813423          	sd	s0,8(sp)
    8000183c:	01010413          	addi	s0,sp,16

    Sem* prev = nullptr, *s = nullptr;

    for (s = first; s; s = s->next) {
    80001840:	0000b797          	auipc	a5,0xb
    80001844:	5c07b783          	ld	a5,1472(a5) # 8000ce00 <_ZN3Sem5firstE>
    Sem* prev = nullptr, *s = nullptr;
    80001848:	00000713          	li	a4,0
    for (s = first; s; s = s->next) {
    8000184c:	02078263          	beqz	a5,80001870 <_ZN3Sem9semRemoveEPS_+0x3c>
        if (s == toDelete) {
    80001850:	00a78863          	beq	a5,a0,80001860 <_ZN3Sem9semRemoveEPS_+0x2c>
            if (prev) prev->next = s->next;
            else first = last = s;
            s->next = nullptr;
            return;
        }
        prev = s;
    80001854:	00078713          	mv	a4,a5
    for (s = first; s; s = s->next) {
    80001858:	0087b783          	ld	a5,8(a5)
    8000185c:	ff1ff06f          	j	8000184c <_ZN3Sem9semRemoveEPS_+0x18>
            if (prev) prev->next = s->next;
    80001860:	00070e63          	beqz	a4,8000187c <_ZN3Sem9semRemoveEPS_+0x48>
    80001864:	0087b683          	ld	a3,8(a5)
    80001868:	00d73423          	sd	a3,8(a4)
            s->next = nullptr;
    8000186c:	0007b423          	sd	zero,8(a5)
    }
}
    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret
            else first = last = s;
    8000187c:	0000b717          	auipc	a4,0xb
    80001880:	58470713          	addi	a4,a4,1412 # 8000ce00 <_ZN3Sem5firstE>
    80001884:	00f73423          	sd	a5,8(a4)
    80001888:	00f73023          	sd	a5,0(a4)
    8000188c:	fe1ff06f          	j	8000186c <_ZN3Sem9semRemoveEPS_+0x38>

0000000080001890 <_ZN3Sem5blockEv>:
void Sem::block() {
    80001890:	fe010113          	addi	sp,sp,-32
    80001894:	00113c23          	sd	ra,24(sp)
    80001898:	00813823          	sd	s0,16(sp)
    8000189c:	00913423          	sd	s1,8(sp)
    800018a0:	01213023          	sd	s2,0(sp)
    800018a4:	02010413          	addi	s0,sp,32
    TCB* oldRunning = TCB::running;
    800018a8:	0000b917          	auipc	s2,0xb
    800018ac:	4f093903          	ld	s2,1264(s2) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    800018b0:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::BLOCKED;
    800018b4:	00400793          	li	a5,4
    800018b8:	06f4a423          	sw	a5,104(s1)
    blocked.add(oldRunning);
    800018bc:	00048593          	mv	a1,s1
    800018c0:	01050513          	addi	a0,a0,16
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	25c080e7          	jalr	604(ra) # 80001b20 <_ZN4ListI3TCBE3addEPS0_>
    TCB::running = Scheduler::get();
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	374080e7          	jalr	884(ra) # 80001c40 <_ZN9Scheduler3getEv>
    800018d4:	00050593          	mv	a1,a0
    800018d8:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	e40080e7          	jalr	-448(ra) # 80003720 <_ZN3TCB5yieldEPS_S0_>
}
    800018e8:	01813083          	ld	ra,24(sp)
    800018ec:	01013403          	ld	s0,16(sp)
    800018f0:	00813483          	ld	s1,8(sp)
    800018f4:	00013903          	ld	s2,0(sp)
    800018f8:	02010113          	addi	sp,sp,32
    800018fc:	00008067          	ret

0000000080001900 <_ZN3Sem4waitEPS_>:
    if (!handle) return SEM_CLOSED;
    80001900:	04050663          	beqz	a0,8000194c <_ZN3Sem4waitEPS_+0x4c>
    if (--handle->value < 0) {
    80001904:	00052783          	lw	a5,0(a0)
    80001908:	fff7879b          	addiw	a5,a5,-1
    8000190c:	00f52023          	sw	a5,0(a0)
    80001910:	02079713          	slli	a4,a5,0x20
    80001914:	00074663          	bltz	a4,80001920 <_ZN3Sem4waitEPS_+0x20>
    return 0;
    80001918:	00000513          	li	a0,0
}
    8000191c:	00008067          	ret
int Sem::wait(sem_t handle) {
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00113423          	sd	ra,8(sp)
    80001928:	00813023          	sd	s0,0(sp)
    8000192c:	01010413          	addi	s0,sp,16
        handle->block();
    80001930:	00000097          	auipc	ra,0x0
    80001934:	f60080e7          	jalr	-160(ra) # 80001890 <_ZN3Sem5blockEv>
    return 0;
    80001938:	00000513          	li	a0,0
}
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    8000194c:	ffc00513          	li	a0,-4
    80001950:	00008067          	ret

0000000080001954 <_ZN3Sem9timedWaitEPS_m>:
    if (!handle) return SEM_CLOSED;
    80001954:	08050c63          	beqz	a0,800019ec <_ZN3Sem9timedWaitEPS_m+0x98>
int Sem::timedWait(sem_t handle, time_t time) {
    80001958:	fe010113          	addi	sp,sp,-32
    8000195c:	00113c23          	sd	ra,24(sp)
    80001960:	00813823          	sd	s0,16(sp)
    80001964:	00913423          	sd	s1,8(sp)
    80001968:	01213023          	sd	s2,0(sp)
    8000196c:	02010413          	addi	s0,sp,32
    80001970:	00050493          	mv	s1,a0
    if (--(handle->value) < 0) {
    80001974:	00052783          	lw	a5,0(a0)
    80001978:	fff7879b          	addiw	a5,a5,-1
    8000197c:	00f52023          	sw	a5,0(a0)
    80001980:	02079713          	slli	a4,a5,0x20
    80001984:	02074063          	bltz	a4,800019a4 <_ZN3Sem9timedWaitEPS_m+0x50>
    return 0;
    80001988:	00000513          	li	a0,0
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	00013903          	ld	s2,0(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret
        TCB::running->time_on_sem = time;
    800019a4:	0000b917          	auipc	s2,0xb
    800019a8:	3f493903          	ld	s2,1012(s2) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    800019ac:	00093783          	ld	a5,0(s2)
    800019b0:	00b7bc23          	sd	a1,24(a5)
        handle->timedBlock++;
    800019b4:	02852783          	lw	a5,40(a0)
    800019b8:	0017879b          	addiw	a5,a5,1
    800019bc:	02f52423          	sw	a5,40(a0)
        handle->block();
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	ed0080e7          	jalr	-304(ra) # 80001890 <_ZN3Sem5blockEv>
        handle->timedBlock--;
    800019c8:	0284a783          	lw	a5,40(s1)
    800019cc:	fff7879b          	addiw	a5,a5,-1
    800019d0:	02f4a423          	sw	a5,40(s1)
        if (!TCB::running->time_on_sem) return TIMEOUT;
    800019d4:	00093783          	ld	a5,0(s2)
    800019d8:	0187b703          	ld	a4,24(a5)
    800019dc:	00070c63          	beqz	a4,800019f4 <_ZN3Sem9timedWaitEPS_m+0xa0>
        else TCB::running->time_on_sem = 0;
    800019e0:	0007bc23          	sd	zero,24(a5)
    return 0;
    800019e4:	00000513          	li	a0,0
    800019e8:	fa5ff06f          	j	8000198c <_ZN3Sem9timedWaitEPS_m+0x38>
    if (!handle) return SEM_CLOSED;
    800019ec:	ffc00513          	li	a0,-4
}
    800019f0:	00008067          	ret
        if (!TCB::running->time_on_sem) return TIMEOUT;
    800019f4:	ffe00513          	li	a0,-2
    800019f8:	f95ff06f          	j	8000198c <_ZN3Sem9timedWaitEPS_m+0x38>

00000000800019fc <_ZN3Sem7deblockEv>:
void Sem::deblock() {
    800019fc:	fe010113          	addi	sp,sp,-32
    80001a00:	00113c23          	sd	ra,24(sp)
    80001a04:	00813823          	sd	s0,16(sp)
    80001a08:	00913423          	sd	s1,8(sp)
    80001a0c:	02010413          	addi	s0,sp,32
    80001a10:	00050493          	mv	s1,a0
    TCB* tcb = blocked.get();
    80001a14:	01050513          	addi	a0,a0,16
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	180080e7          	jalr	384(ra) # 80001b98 <_ZN4ListI3TCBE3getEv>
    if (!tcb) return; // should not happen
    80001a20:	02050463          	beqz	a0,80001a48 <_ZN3Sem7deblockEv+0x4c>
    if (tcb -> time_on_sem) {
    80001a24:	01853783          	ld	a5,24(a0)
    80001a28:	00078a63          	beqz	a5,80001a3c <_ZN3Sem7deblockEv+0x40>
        tcb -> time_on_sem = 0;
    80001a2c:	00053c23          	sd	zero,24(a0)
        timedBlock--;
    80001a30:	0284a783          	lw	a5,40(s1)
    80001a34:	fff7879b          	addiw	a5,a5,-1
    80001a38:	02f4a423          	sw	a5,40(s1)
    tcb->current_state = TCB::RUNNABLE;
    80001a3c:	06052423          	sw	zero,104(a0)
    Scheduler::put(tcb);
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	250080e7          	jalr	592(ra) # 80001c90 <_ZN9Scheduler3putEP3TCB>
}
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	02010113          	addi	sp,sp,32
    80001a58:	00008067          	ret

0000000080001a5c <_ZN3Sem6signalEPS_>:
    if (!handle) return SEM_CLOSED;
    80001a5c:	04050663          	beqz	a0,80001aa8 <_ZN3Sem6signalEPS_+0x4c>
    if (++handle->value<= 0) handle->deblock();
    80001a60:	00052783          	lw	a5,0(a0)
    80001a64:	0017879b          	addiw	a5,a5,1
    80001a68:	0007871b          	sext.w	a4,a5
    80001a6c:	00f52023          	sw	a5,0(a0)
    80001a70:	00e05663          	blez	a4,80001a7c <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001a74:	00000513          	li	a0,0
}
    80001a78:	00008067          	ret
int Sem::signal(sem_t handle) {
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00113423          	sd	ra,8(sp)
    80001a84:	00813023          	sd	s0,0(sp)
    80001a88:	01010413          	addi	s0,sp,16
    if (++handle->value<= 0) handle->deblock();
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	f70080e7          	jalr	-144(ra) # 800019fc <_ZN3Sem7deblockEv>
    return 0;
    80001a94:	00000513          	li	a0,0
}
    80001a98:	00813083          	ld	ra,8(sp)
    80001a9c:	00013403          	ld	s0,0(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    80001aa8:	ffc00513          	li	a0,-4
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN3Sem7s_closeEPS_>:
    if (!handle) return SEM_CLOSED;
    80001ab0:	06050463          	beqz	a0,80001b18 <_ZN3Sem7s_closeEPS_+0x68>
int Sem::s_close(sem_t handle) {
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    80001ac8:	00050493          	mv	s1,a0
    semRemove(handle); // remove from semaphores list
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	d68080e7          	jalr	-664(ra) # 80001834 <_ZN3Sem9semRemoveEPS_>
    while (handle->blocked.peek()) {
    80001ad4:	01048513          	addi	a0,s1,16
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	134080e7          	jalr	308(ra) # 80001c0c <_ZN4ListI3TCBE4peekEv>
    80001ae0:	00050a63          	beqz	a0,80001af4 <_ZN3Sem7s_closeEPS_+0x44>
        handle->deblock();
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	f14080e7          	jalr	-236(ra) # 800019fc <_ZN3Sem7deblockEv>
    while (handle->blocked.peek()) {
    80001af0:	fe5ff06f          	j	80001ad4 <_ZN3Sem7s_closeEPS_+0x24>
    delete handle;
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	c04080e7          	jalr	-1020(ra) # 800016fc <_ZN3SemdlEPv>
    return 0;
    80001b00:	00000513          	li	a0,0
}
    80001b04:	01813083          	ld	ra,24(sp)
    80001b08:	01013403          	ld	s0,16(sp)
    80001b0c:	00813483          	ld	s1,8(sp)
    80001b10:	02010113          	addi	sp,sp,32
    80001b14:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    80001b18:	ffc00513          	li	a0,-4
}
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN4ListI3TCBE3addEPS0_>:

typedef List<TCB> ListTCB;
using ListSEM = List<Sem>;

template <typename T>
void List<T>::add(T *t) {
    80001b20:	fe010113          	addi	sp,sp,-32
    80001b24:	00113c23          	sd	ra,24(sp)
    80001b28:	00813823          	sd	s0,16(sp)
    80001b2c:	00913423          	sd	s1,8(sp)
    80001b30:	01213023          	sd	s2,0(sp)
    80001b34:	02010413          	addi	s0,sp,32
    80001b38:	00050493          	mv	s1,a0
    80001b3c:	00058913          	mv	s2,a1

    Elem* toAdd = new Elem(t);
    80001b40:	01000513          	li	a0,16
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	9bc080e7          	jalr	-1604(ra) # 80002500 <_Znwm>
        explicit Elem(T* data) : data(data), next(nullptr) {}
    80001b4c:	01253023          	sd	s2,0(a0)
    80001b50:	00053423          	sd	zero,8(a0)

    if (!head) head = tail = toAdd;
    80001b54:	0004b783          	ld	a5,0(s1)
    80001b58:	02078a63          	beqz	a5,80001b8c <_ZN4ListI3TCBE3addEPS0_+0x6c>
    else tail = tail -> next = toAdd;
    80001b5c:	0084b783          	ld	a5,8(s1)
    80001b60:	00a7b423          	sd	a0,8(a5)
    80001b64:	00a4b423          	sd	a0,8(s1)

    count++;
    80001b68:	0104a783          	lw	a5,16(s1)
    80001b6c:	0017879b          	addiw	a5,a5,1
    80001b70:	00f4a823          	sw	a5,16(s1)
}
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	00013903          	ld	s2,0(sp)
    80001b84:	02010113          	addi	sp,sp,32
    80001b88:	00008067          	ret
    if (!head) head = tail = toAdd;
    80001b8c:	00a4b423          	sd	a0,8(s1)
    80001b90:	00a4b023          	sd	a0,0(s1)
    80001b94:	fd5ff06f          	j	80001b68 <_ZN4ListI3TCBE3addEPS0_+0x48>

0000000080001b98 <_ZN4ListI3TCBE3getEv>:

template <typename T>
T* List<T>::get() {
    80001b98:	fe010113          	addi	sp,sp,-32
    80001b9c:	00113c23          	sd	ra,24(sp)
    80001ba0:	00813823          	sd	s0,16(sp)
    80001ba4:	00913423          	sd	s1,8(sp)
    80001ba8:	01213023          	sd	s2,0(sp)
    80001bac:	02010413          	addi	s0,sp,32
    80001bb0:	00050493          	mv	s1,a0

    if (!head) return nullptr;
    80001bb4:	00053503          	ld	a0,0(a0)
    80001bb8:	04050663          	beqz	a0,80001c04 <_ZN4ListI3TCBE3getEv+0x6c>

    T* t = head -> data;
    80001bbc:	00053903          	ld	s2,0(a0)
    Elem* oldHead = head;
    head = head -> next;
    80001bc0:	00853783          	ld	a5,8(a0)
    80001bc4:	00f4b023          	sd	a5,0(s1)

    if (!head) tail = nullptr;
    80001bc8:	02078a63          	beqz	a5,80001bfc <_ZN4ListI3TCBE3getEv+0x64>

    delete oldHead;
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	9ac080e7          	jalr	-1620(ra) # 80002578 <_ZdlPv>
    count--;
    80001bd4:	0104a783          	lw	a5,16(s1)
    80001bd8:	fff7879b          	addiw	a5,a5,-1
    80001bdc:	00f4a823          	sw	a5,16(s1)
    return t;
}
    80001be0:	00090513          	mv	a0,s2
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	01013403          	ld	s0,16(sp)
    80001bec:	00813483          	ld	s1,8(sp)
    80001bf0:	00013903          	ld	s2,0(sp)
    80001bf4:	02010113          	addi	sp,sp,32
    80001bf8:	00008067          	ret
    if (!head) tail = nullptr;
    80001bfc:	0004b423          	sd	zero,8(s1)
    80001c00:	fcdff06f          	j	80001bcc <_ZN4ListI3TCBE3getEv+0x34>
    if (!head) return nullptr;
    80001c04:	00050913          	mv	s2,a0
    80001c08:	fd9ff06f          	j	80001be0 <_ZN4ListI3TCBE3getEv+0x48>

0000000080001c0c <_ZN4ListI3TCBE4peekEv>:

template <typename T>
T* List<T>::peek() {
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00813423          	sd	s0,8(sp)
    80001c14:	01010413          	addi	s0,sp,16
    if (head) return head->data;
    80001c18:	00053503          	ld	a0,0(a0)
    80001c1c:	00050463          	beqz	a0,80001c24 <_ZN4ListI3TCBE4peekEv+0x18>
    80001c20:	00053503          	ld	a0,0(a0)
    else return nullptr;
}
    80001c24:	00813403          	ld	s0,8(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret

0000000080001c30 <_Z11idleWrapperPv>:
TCB* Scheduler::first = nullptr;
TCB* Scheduler::last  = nullptr;
TCB* Scheduler::first_sleepy = nullptr;
TCB* Scheduler::idle = nullptr;

[[noreturn]] void idleWrapper(void*) {
    80001c30:	ff010113          	addi	sp,sp,-16
    80001c34:	00813423          	sd	s0,8(sp)
    80001c38:	01010413          	addi	s0,sp,16
    // nothing to do
    while (true);
    80001c3c:	0000006f          	j	80001c3c <_Z11idleWrapperPv+0xc>

0000000080001c40 <_ZN9Scheduler3getEv>:
}

TCB *Scheduler::get() {
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00813423          	sd	s0,8(sp)
    80001c48:	01010413          	addi	s0,sp,16

    if (!first) return idle; // idle thread
    80001c4c:	0000b517          	auipc	a0,0xb
    80001c50:	1c453503          	ld	a0,452(a0) # 8000ce10 <_ZN9Scheduler5firstE>
    80001c54:	02050263          	beqz	a0,80001c78 <_ZN9Scheduler3getEv+0x38>

    TCB* tcb = first;

    first = first -> next_ready;
    80001c58:	00853783          	ld	a5,8(a0)
    80001c5c:	0000b717          	auipc	a4,0xb
    80001c60:	1af73a23          	sd	a5,436(a4) # 8000ce10 <_ZN9Scheduler5firstE>
    if (!first) last = nullptr;
    80001c64:	02078063          	beqz	a5,80001c84 <_ZN9Scheduler3getEv+0x44>
    tcb -> next_ready = nullptr;
    80001c68:	00053423          	sd	zero,8(a0)

    return tcb;

}
    80001c6c:	00813403          	ld	s0,8(sp)
    80001c70:	01010113          	addi	sp,sp,16
    80001c74:	00008067          	ret
    if (!first) return idle; // idle thread
    80001c78:	0000b517          	auipc	a0,0xb
    80001c7c:	1a053503          	ld	a0,416(a0) # 8000ce18 <_ZN9Scheduler4idleE>
    80001c80:	fedff06f          	j	80001c6c <_ZN9Scheduler3getEv+0x2c>
    if (!first) last = nullptr;
    80001c84:	0000b797          	auipc	a5,0xb
    80001c88:	1807be23          	sd	zero,412(a5) # 8000ce20 <_ZN9Scheduler4lastE>
    80001c8c:	fddff06f          	j	80001c68 <_ZN9Scheduler3getEv+0x28>

0000000080001c90 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00813423          	sd	s0,8(sp)
    80001c98:	01010413          	addi	s0,sp,16

    if (newTCB == idle) {
    80001c9c:	0000b797          	auipc	a5,0xb
    80001ca0:	17c7b783          	ld	a5,380(a5) # 8000ce18 <_ZN9Scheduler4idleE>
    80001ca4:	02a78863          	beq	a5,a0,80001cd4 <_ZN9Scheduler3putEP3TCB+0x44>
        idle->current_state = TCB::RUNNABLE;
        return;
    }
    if (!first) first = last = newTCB;
    80001ca8:	0000b797          	auipc	a5,0xb
    80001cac:	1687b783          	ld	a5,360(a5) # 8000ce10 <_ZN9Scheduler5firstE>
    80001cb0:	02078663          	beqz	a5,80001cdc <_ZN9Scheduler3putEP3TCB+0x4c>
    else last = last -> next_ready = newTCB;
    80001cb4:	0000b797          	auipc	a5,0xb
    80001cb8:	15c78793          	addi	a5,a5,348 # 8000ce10 <_ZN9Scheduler5firstE>
    80001cbc:	0107b703          	ld	a4,16(a5)
    80001cc0:	00a73423          	sd	a0,8(a4)
    80001cc4:	00a7b823          	sd	a0,16(a5)

}
    80001cc8:	00813403          	ld	s0,8(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret
        idle->current_state = TCB::RUNNABLE;
    80001cd4:	0607a423          	sw	zero,104(a5)
        return;
    80001cd8:	ff1ff06f          	j	80001cc8 <_ZN9Scheduler3putEP3TCB+0x38>
    if (!first) first = last = newTCB;
    80001cdc:	0000b797          	auipc	a5,0xb
    80001ce0:	13478793          	addi	a5,a5,308 # 8000ce10 <_ZN9Scheduler5firstE>
    80001ce4:	00a7b823          	sd	a0,16(a5)
    80001ce8:	00a7b023          	sd	a0,0(a5)
    80001cec:	fddff06f          	j	80001cc8 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080001cf0 <_ZN9Scheduler4peekEv>:

TCB* Scheduler::peek() {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00813423          	sd	s0,8(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    if (!first) return nullptr;
    return first;
}
    80001cfc:	0000b517          	auipc	a0,0xb
    80001d00:	11453503          	ld	a0,276(a0) # 8000ce10 <_ZN9Scheduler5firstE>
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00813423          	sd	s0,8(sp)
    80001d18:	01010413          	addi	s0,sp,16
    return first != nullptr;
}
    80001d1c:	0000b517          	auipc	a0,0xb
    80001d20:	0f453503          	ld	a0,244(a0) # 8000ce10 <_ZN9Scheduler5firstE>
    80001d24:	00a03533          	snez	a0,a0
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_ZN9SchedulernwEm>:
    return 0;


}

void *Scheduler::operator new(size_t size) {
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00113423          	sd	ra,8(sp)
    80001d3c:	00813023          	sd	s0,0(sp)
    80001d40:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001d44:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001d48:	00655513          	srli	a0,a0,0x6
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	328080e7          	jalr	808(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	540080e7          	jalr	1344(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN9Scheduler7s_yieldEv>:

void Scheduler::s_yield() {
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	01213023          	sd	s2,0(sp)
    80001da0:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    80001da4:	0000b917          	auipc	s2,0xb
    80001da8:	ff493903          	ld	s2,-12(s2) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001dac:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::SLEEPING;
    80001db0:	00100793          	li	a5,1
    80001db4:	06f4a423          	sw	a5,104(s1)

    TCB::running = get(); // Scheduler::get
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	e88080e7          	jalr	-376(ra) # 80001c40 <_ZN9Scheduler3getEv>
    80001dc0:	00050593          	mv	a1,a0
    80001dc4:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001dc8:	00048513          	mv	a0,s1
    80001dcc:	00002097          	auipc	ra,0x2
    80001dd0:	954080e7          	jalr	-1708(ra) # 80003720 <_ZN3TCB5yieldEPS_S0_>

}
    80001dd4:	01813083          	ld	ra,24(sp)
    80001dd8:	01013403          	ld	s0,16(sp)
    80001ddc:	00813483          	ld	s1,8(sp)
    80001de0:	00013903          	ld	s2,0(sp)
    80001de4:	02010113          	addi	sp,sp,32
    80001de8:	00008067          	ret

0000000080001dec <_ZN9Scheduler12put_to_sleepEP3TCBm>:
    if (time == 0) return -1;
    80001dec:	0c058663          	beqz	a1,80001eb8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xcc>
int Scheduler::put_to_sleep(TCB *tcb, time_t time) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    if (!first_sleepy) {
    80001e00:	0000b797          	auipc	a5,0xb
    80001e04:	0287b783          	ld	a5,40(a5) # 8000ce28 <_ZN9Scheduler12first_sleepyE>
    80001e08:	02078663          	beqz	a5,80001e34 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x48>
    time_t time_sum = 0;
    80001e0c:	00000693          	li	a3,0
    TCB* prev = nullptr, *curr = first_sleepy; // insert between
    80001e10:	00000613          	li	a2,0
    while (curr) {
    80001e14:	06078c63          	beqz	a5,80001e8c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa0>
        if (time_sum + curr->sleeping_time > time) {
    80001e18:	0207b703          	ld	a4,32(a5)
    80001e1c:	00d70733          	add	a4,a4,a3
    80001e20:	02e5e863          	bltu	a1,a4,80001e50 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x64>
        time_sum += curr -> sleeping_time;
    80001e24:	00070693          	mv	a3,a4
        prev = curr;
    80001e28:	00078613          	mv	a2,a5
        curr = curr -> next_sleepy;
    80001e2c:	0107b783          	ld	a5,16(a5)
    while (curr) {
    80001e30:	fe5ff06f          	j	80001e14 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x28>
        first_sleepy = tcb;
    80001e34:	0000b797          	auipc	a5,0xb
    80001e38:	fea7ba23          	sd	a0,-12(a5) # 8000ce28 <_ZN9Scheduler12first_sleepyE>
        tcb -> sleeping_time = time;
    80001e3c:	02b53023          	sd	a1,32(a0)
        s_yield();
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	f4c080e7          	jalr	-180(ra) # 80001d8c <_ZN9Scheduler7s_yieldEv>
        return 0;
    80001e48:	00000513          	li	a0,0
    80001e4c:	05c0006f          	j	80001ea8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xbc>
            if (prev) prev -> next_sleepy = tcb;
    80001e50:	02060863          	beqz	a2,80001e80 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x94>
    80001e54:	00a63823          	sd	a0,16(a2)
            tcb -> next_sleepy = curr;
    80001e58:	00f53823          	sd	a5,16(a0)
            tcb -> sleeping_time = time - time_sum;
    80001e5c:	40d586b3          	sub	a3,a1,a3
    80001e60:	02d53023          	sd	a3,32(a0)
            curr -> sleeping_time -= tcb -> sleeping_time;
    80001e64:	0207b583          	ld	a1,32(a5)
    80001e68:	40d586b3          	sub	a3,a1,a3
    80001e6c:	02d7b023          	sd	a3,32(a5)
            s_yield();
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	f1c080e7          	jalr	-228(ra) # 80001d8c <_ZN9Scheduler7s_yieldEv>
            return 0;
    80001e78:	00000513          	li	a0,0
    80001e7c:	02c0006f          	j	80001ea8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xbc>
            else first_sleepy = tcb;
    80001e80:	0000b717          	auipc	a4,0xb
    80001e84:	faa73423          	sd	a0,-88(a4) # 8000ce28 <_ZN9Scheduler12first_sleepyE>
    80001e88:	fd1ff06f          	j	80001e58 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x6c>
    tcb -> sleeping_time = time - time_sum;
    80001e8c:	40d586b3          	sub	a3,a1,a3
    80001e90:	02d53023          	sd	a3,32(a0)
    if (prev) prev -> next_sleepy = tcb;
    80001e94:	00060463          	beqz	a2,80001e9c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xb0>
    80001e98:	00a63823          	sd	a0,16(a2)
    s_yield();
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	ef0080e7          	jalr	-272(ra) # 80001d8c <_ZN9Scheduler7s_yieldEv>
    return 0;
    80001ea4:	00000513          	li	a0,0
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret
    if (time == 0) return -1;
    80001eb8:	fff00513          	li	a0,-1
}
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN9Scheduler14init_schedulerEv>:

void Scheduler::init_scheduler() {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    thread_create(&idle, idleWrapper, nullptr);
    80001ed0:	00000613          	li	a2,0
    80001ed4:	00000597          	auipc	a1,0x0
    80001ed8:	d5c58593          	addi	a1,a1,-676 # 80001c30 <_Z11idleWrapperPv>
    80001edc:	0000b517          	auipc	a0,0xb
    80001ee0:	f3c50513          	addi	a0,a0,-196 # 8000ce18 <_ZN9Scheduler4idleE>
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	418080e7          	jalr	1048(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN9myConsole4initEv>:

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;
TCB* myConsole::char_handler = nullptr;

void myConsole::init() {
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	01213023          	sd	s2,0(sp)
    80001f10:	02010413          	addi	s0,sp,32
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001f14:	15000513          	li	a0,336
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	c54080e7          	jalr	-940(ra) # 80002b6c <_ZN13BoundedBuffernwEm>
    80001f20:	00050493          	mv	s1,a0
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	abc080e7          	jalr	-1348(ra) # 800029e0 <_ZN13BoundedBufferC1Ev>
    80001f2c:	0000b797          	auipc	a5,0xb
    80001f30:	f097b223          	sd	s1,-252(a5) # 8000ce30 <_ZN9myConsole11inputBufferE>
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001f34:	15000513          	li	a0,336
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	c34080e7          	jalr	-972(ra) # 80002b6c <_ZN13BoundedBuffernwEm>
    80001f40:	00050493          	mv	s1,a0
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	a9c080e7          	jalr	-1380(ra) # 800029e0 <_ZN13BoundedBufferC1Ev>
    80001f4c:	0000b797          	auipc	a5,0xb
    80001f50:	ee97b623          	sd	s1,-276(a5) # 8000ce38 <_ZN9myConsole12outputBufferE>
    //thread_create(&char_handler, char_handler_wrapper, nullptr);
}
    80001f54:	01813083          	ld	ra,24(sp)
    80001f58:	01013403          	ld	s0,16(sp)
    80001f5c:	00813483          	ld	s1,8(sp)
    80001f60:	00013903          	ld	s2,0(sp)
    80001f64:	02010113          	addi	sp,sp,32
    80001f68:	00008067          	ret
    80001f6c:	00050913          	mv	s2,a0
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001f70:	00048513          	mv	a0,s1
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	c28080e7          	jalr	-984(ra) # 80002b9c <_ZN13BoundedBufferdlEPv>
    80001f7c:	00090513          	mv	a0,s2
    80001f80:	0000c097          	auipc	ra,0xc
    80001f84:	088080e7          	jalr	136(ra) # 8000e008 <_Unwind_Resume>
    80001f88:	00050913          	mv	s2,a0
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001f8c:	00048513          	mv	a0,s1
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	c0c080e7          	jalr	-1012(ra) # 80002b9c <_ZN13BoundedBufferdlEPv>
    80001f98:	00090513          	mv	a0,s2
    80001f9c:	0000c097          	auipc	ra,0xc
    80001fa0:	06c080e7          	jalr	108(ra) # 8000e008 <_Unwind_Resume>

0000000080001fa4 <_ZN9myConsole10input_getcEv>:

char myConsole::input_getc() {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80001fb4:	0000b517          	auipc	a0,0xb
    80001fb8:	e7c53503          	ld	a0,-388(a0) # 8000ce30 <_ZN9myConsole11inputBufferE>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	b44080e7          	jalr	-1212(ra) # 80002b00 <_ZN13BoundedBuffer3getEv>
}
    80001fc4:	00813083          	ld	ra,8(sp)
    80001fc8:	00013403          	ld	s0,0(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN9myConsole11output_putcEc>:

void myConsole::output_putc(char c) {
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00113423          	sd	ra,8(sp)
    80001fdc:	00813023          	sd	s0,0(sp)
    80001fe0:	01010413          	addi	s0,sp,16
    80001fe4:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    80001fe8:	0000b517          	auipc	a0,0xb
    80001fec:	e5053503          	ld	a0,-432(a0) # 8000ce38 <_ZN9myConsole12outputBufferE>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	aa4080e7          	jalr	-1372(ra) # 80002a94 <_ZN13BoundedBuffer3putEc>
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN9myConsole11output_getcEv>:

char myConsole::output_getc() {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    return outputBuffer->get();
    80002018:	0000b517          	auipc	a0,0xb
    8000201c:	e2053503          	ld	a0,-480(a0) # 8000ce38 <_ZN9myConsole12outputBufferE>
    80002020:	00001097          	auipc	ra,0x1
    80002024:	ae0080e7          	jalr	-1312(ra) # 80002b00 <_ZN13BoundedBuffer3getEv>
}
    80002028:	00813083          	ld	ra,8(sp)
    8000202c:	00013403          	ld	s0,0(sp)
    80002030:	01010113          	addi	sp,sp,16
    80002034:	00008067          	ret

0000000080002038 <_ZN9myConsole10input_putcEc>:

void myConsole::input_putc(char c) {
    80002038:	ff010113          	addi	sp,sp,-16
    8000203c:	00113423          	sd	ra,8(sp)
    80002040:	00813023          	sd	s0,0(sp)
    80002044:	01010413          	addi	s0,sp,16
    80002048:	00050593          	mv	a1,a0
    inputBuffer->put(c);
    8000204c:	0000b517          	auipc	a0,0xb
    80002050:	de453503          	ld	a0,-540(a0) # 8000ce30 <_ZN9myConsole11inputBufferE>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	a40080e7          	jalr	-1472(ra) # 80002a94 <_ZN13BoundedBuffer3putEc>
}
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZN9myConsole20char_handler_wrapperEPv>:

void myConsole::char_handler_wrapper(void *) {

    while (true) { // dodatan uslov?

        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    8000206c:	0000b797          	auipc	a5,0xb
    80002070:	cf47b783          	ld	a5,-780(a5) # 8000cd60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002074:	0007b783          	ld	a5,0(a5)
    80002078:	0007c783          	lbu	a5,0(a5)
    8000207c:	0207f793          	andi	a5,a5,32
    80002080:	fe0786e3          	beqz	a5,8000206c <_ZN9myConsole20char_handler_wrapperEPv>
void myConsole::char_handler_wrapper(void *) {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
            // console controller is ready for new char
            char c = myConsole::output_getc();
    80002094:	00000097          	auipc	ra,0x0
    80002098:	f74080e7          	jalr	-140(ra) # 80002008 <_ZN9myConsole11output_getcEv>
            if (c == '\r') continue;
    8000209c:	00d00793          	li	a5,13
    800020a0:	00f50a63          	beq	a0,a5,800020b4 <_ZN9myConsole20char_handler_wrapperEPv+0x48>
            *(char *) CONSOLE_TX_DATA = c;
    800020a4:	0000b797          	auipc	a5,0xb
    800020a8:	cd47b783          	ld	a5,-812(a5) # 8000cd78 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020ac:	0007b783          	ld	a5,0(a5)
    800020b0:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    800020b4:	0000b797          	auipc	a5,0xb
    800020b8:	cac7b783          	ld	a5,-852(a5) # 8000cd60 <_GLOBAL_OFFSET_TABLE_+0x18>
    800020bc:	0007b783          	ld	a5,0(a5)
    800020c0:	0007c783          	lbu	a5,0(a5)
    800020c4:	0207f793          	andi	a5,a5,32
    800020c8:	fe0786e3          	beqz	a5,800020b4 <_ZN9myConsole20char_handler_wrapperEPv+0x48>
    800020cc:	fc9ff06f          	j	80002094 <_ZN9myConsole20char_handler_wrapperEPv+0x28>

00000000800020d0 <_Z14handleNewCharsPv>:
        putc(c2);
        putc(c3);
    }
}

void handleNewChars(void * args) {
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00113423          	sd	ra,8(sp)
    800020d8:	00813023          	sd	s0,0(sp)
    800020dc:	01010413          	addi	s0,sp,16
    800020e0:	00c0006f          	j	800020ec <_Z14handleNewCharsPv+0x1c>
            *(char *) CONSOLE_TX_DATA = c;
            // pop from output buffer and wr to TX DATA
        }

        // no more work to do, move on
        thread_dispatch();
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	2ec080e7          	jalr	748(ra) # 800013d0 <_Z15thread_dispatchv>
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    800020ec:	0000b797          	auipc	a5,0xb
    800020f0:	c747b783          	ld	a5,-908(a5) # 8000cd60 <_GLOBAL_OFFSET_TABLE_+0x18>
    800020f4:	0007b783          	ld	a5,0(a5)
    800020f8:	0007c783          	lbu	a5,0(a5)
    800020fc:	0207f793          	andi	a5,a5,32
    80002100:	fe0782e3          	beqz	a5,800020e4 <_Z14handleNewCharsPv+0x14>
            char c = myConsole::output_getc();
    80002104:	00000097          	auipc	ra,0x0
    80002108:	f04080e7          	jalr	-252(ra) # 80002008 <_ZN9myConsole11output_getcEv>
            if (c == '\r') continue;
    8000210c:	00d00793          	li	a5,13
    80002110:	fcf50ee3          	beq	a0,a5,800020ec <_Z14handleNewCharsPv+0x1c>
            *(char *) CONSOLE_TX_DATA = c;
    80002114:	0000b797          	auipc	a5,0xb
    80002118:	c647b783          	ld	a5,-924(a5) # 8000cd78 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000211c:	0007b783          	ld	a5,0(a5)
    80002120:	00a78023          	sb	a0,0(a5)
    80002124:	fc9ff06f          	j	800020ec <_Z14handleNewCharsPv+0x1c>

0000000080002128 <_Z11userWrapperPv>:
thread_t userMainThread;


extern void userMain();

void userWrapper(void* args) {
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00113423          	sd	ra,8(sp)
    80002130:	00813023          	sd	s0,0(sp)
    80002134:	01010413          	addi	s0,sp,16
    userMain();
    80002138:	00004097          	auipc	ra,0x4
    8000213c:	3f0080e7          	jalr	1008(ra) # 80006528 <_Z8userMainv>
}
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80002150:	fe010113          	addi	sp,sp,-32
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00813823          	sd	s0,16(sp)
    8000215c:	00913423          	sd	s1,8(sp)
    80002160:	01213023          	sd	s2,0(sp)
    80002164:	02010413          	addi	s0,sp,32
    void *addr = MemoryAllocator::mem_alloc(1);
    80002168:	00100513          	li	a0,1
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	f08080e7          	jalr	-248(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
    80002174:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	2b4080e7          	jalr	692(ra) # 8000342c <_ZN15MemoryAllocator5printEv>
    int ret1 = MemoryAllocator::mem_free(addr);
    80002180:	00048513          	mv	a0,s1
    80002184:	00001097          	auipc	ra,0x1
    80002188:	130080e7          	jalr	304(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
    8000218c:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80002190:	00001097          	auipc	ra,0x1
    80002194:	29c080e7          	jalr	668(ra) # 8000342c <_ZN15MemoryAllocator5printEv>
    int ret2 = MemoryAllocator::mem_free(addr);
    80002198:	00048513          	mv	a0,s1
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	118080e7          	jalr	280(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
    800021a4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	284080e7          	jalr	644(ra) # 8000342c <_ZN15MemoryAllocator5printEv>
    if (ret1 == 0) __putc('G');
    800021b0:	02090063          	beqz	s2,800021d0 <_Z19testMemoryAllocatorv+0x80>
    if (ret2 < 0) __putc('G');
    800021b4:	0204c663          	bltz	s1,800021e0 <_Z19testMemoryAllocatorv+0x90>
}
    800021b8:	01813083          	ld	ra,24(sp)
    800021bc:	01013403          	ld	s0,16(sp)
    800021c0:	00813483          	ld	s1,8(sp)
    800021c4:	00013903          	ld	s2,0(sp)
    800021c8:	02010113          	addi	sp,sp,32
    800021cc:	00008067          	ret
    if (ret1 == 0) __putc('G');
    800021d0:	04700513          	li	a0,71
    800021d4:	00007097          	auipc	ra,0x7
    800021d8:	f98080e7          	jalr	-104(ra) # 8000916c <__putc>
    800021dc:	fd9ff06f          	j	800021b4 <_Z19testMemoryAllocatorv+0x64>
    if (ret2 < 0) __putc('G');
    800021e0:	04700513          	li	a0,71
    800021e4:	00007097          	auipc	ra,0x7
    800021e8:	f88080e7          	jalr	-120(ra) # 8000916c <__putc>
}
    800021ec:	fcdff06f          	j	800021b8 <_Z19testMemoryAllocatorv+0x68>

00000000800021f0 <_Z11testCMemoryv>:
void testCMemory() {
    800021f0:	fe010113          	addi	sp,sp,-32
    800021f4:	00113c23          	sd	ra,24(sp)
    800021f8:	00813823          	sd	s0,16(sp)
    800021fc:	00913423          	sd	s1,8(sp)
    80002200:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80002204:	00001097          	auipc	ra,0x1
    80002208:	228080e7          	jalr	552(ra) # 8000342c <_ZN15MemoryAllocator5printEv>
    void* addr = mem_alloc(50);
    8000220c:	03200513          	li	a0,50
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	050080e7          	jalr	80(ra) # 80001260 <_Z9mem_allocm>
    80002218:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	210080e7          	jalr	528(ra) # 8000342c <_ZN15MemoryAllocator5printEv>
    mem_free(addr);
    80002224:	00048513          	mv	a0,s1
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	088080e7          	jalr	136(ra) # 800012b0 <_Z8mem_freePv>
    MemoryAllocator::print();
    80002230:	00001097          	auipc	ra,0x1
    80002234:	1fc080e7          	jalr	508(ra) # 8000342c <_ZN15MemoryAllocator5printEv>
}
    80002238:	01813083          	ld	ra,24(sp)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	00813483          	ld	s1,8(sp)
    80002244:	02010113          	addi	sp,sp,32
    80002248:	00008067          	ret

000000008000224c <_Z11testConsolePv>:
void testConsole(void *args) {
    8000224c:	fd010113          	addi	sp,sp,-48
    80002250:	02113423          	sd	ra,40(sp)
    80002254:	02813023          	sd	s0,32(sp)
    80002258:	00913c23          	sd	s1,24(sp)
    8000225c:	01213823          	sd	s2,16(sp)
    80002260:	01313423          	sd	s3,8(sp)
    80002264:	03010413          	addi	s0,sp,48
        char c1 = getc();
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	3c8080e7          	jalr	968(ra) # 80001630 <_Z4getcv>
    80002270:	00050993          	mv	s3,a0
        char c2 = getc();
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	3bc080e7          	jalr	956(ra) # 80001630 <_Z4getcv>
    8000227c:	00050913          	mv	s2,a0
        char c3 = getc();
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	3b0080e7          	jalr	944(ra) # 80001630 <_Z4getcv>
    80002288:	00050493          	mv	s1,a0
        putc(c1);
    8000228c:	00098513          	mv	a0,s3
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	3ec080e7          	jalr	1004(ra) # 8000167c <_Z4putcc>
        putc(c2);
    80002298:	00090513          	mv	a0,s2
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	3e0080e7          	jalr	992(ra) # 8000167c <_Z4putcc>
        putc(c3);
    800022a4:	00048513          	mv	a0,s1
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	3d4080e7          	jalr	980(ra) # 8000167c <_Z4putcc>
    while (true) {
    800022b0:	fb9ff06f          	j	80002268 <_Z11testConsolePv+0x1c>

00000000800022b4 <_Z13testTimedWaitPv>:
void testTimedWait(void* args) {
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00813423          	sd	s0,8(sp)
    800022bc:	01010413          	addi	s0,sp,16
}
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_Z9semWaiterPv>:
void semWaiter(void* ) {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
    sem_wait(mySem);
    800022dc:	0000b517          	auipc	a0,0xb
    800022e0:	b6c53503          	ld	a0,-1172(a0) # 8000ce48 <mySem>
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	1d0080e7          	jalr	464(ra) # 800014b4 <_Z8sem_waitP3Sem>
}
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_Z14runningForeverPv>:
    state getState() const {return current_state;}
    time_t getTimeSlice() const {return time_slice;}

    static bool isRunnable();

    static bool isFinished() {return TCB::running->current_state == state::FINISHED;}
    800022fc:	0000b797          	auipc	a5,0xb
    80002300:	a9c7b783          	ld	a5,-1380(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002304:	0007b783          	ld	a5,0(a5)
    80002308:	0687a703          	lw	a4,104(a5)
    while (!mythreads[2] -> isFinished()) {
    8000230c:	00300793          	li	a5,3
    80002310:	04f70463          	beq	a4,a5,80002358 <_Z14runningForeverPv+0x5c>
void runningForever(void* args) {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
        putc('a');
    80002324:	06100513          	li	a0,97
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	354080e7          	jalr	852(ra) # 8000167c <_Z4putcc>
    80002330:	0000b797          	auipc	a5,0xb
    80002334:	a687b783          	ld	a5,-1432(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002338:	0007b783          	ld	a5,0(a5)
    8000233c:	0687a703          	lw	a4,104(a5)
    while (!mythreads[2] -> isFinished()) {
    80002340:	00300793          	li	a5,3
    80002344:	fef710e3          	bne	a4,a5,80002324 <_Z14runningForeverPv+0x28>
}
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret
    80002358:	00008067          	ret

000000008000235c <_Z11timedWaiterPv>:
void timedWaiter(void *) {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    int result = sem_timedwait(mySem, 1);
    8000236c:	00100593          	li	a1,1
    80002370:	0000b517          	auipc	a0,0xb
    80002374:	ad853503          	ld	a0,-1320(a0) # 8000ce48 <mySem>
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	188080e7          	jalr	392(ra) # 80001500 <_Z13sem_timedwaitP3Semm>
    if (result == Sem::TIMEOUT) putc('t');
    80002380:	ffe00793          	li	a5,-2
    80002384:	00f50e63          	beq	a0,a5,800023a0 <_Z11timedWaiterPv+0x44>
    thread_exit();
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	ffc080e7          	jalr	-4(ra) # 80001384 <_Z11thread_exitv>
}
    80002390:	00813083          	ld	ra,8(sp)
    80002394:	00013403          	ld	s0,0(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret
    if (result == Sem::TIMEOUT) putc('t');
    800023a0:	07400513          	li	a0,116
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	2d8080e7          	jalr	728(ra) # 8000167c <_Z4putcc>
    800023ac:	fddff06f          	j	80002388 <_Z11timedWaiterPv+0x2c>

00000000800023b0 <main>:

int main() {
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00113423          	sd	ra,8(sp)
    800023b8:	00813023          	sd	s0,0(sp)
    800023bc:	01010413          	addi	s0,sp,16

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    800023c0:	0000b797          	auipc	a5,0xb
    800023c4:	9b07b783          	ld	a5,-1616(a5) # 8000cd70 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    800023c8:	10579073          	csrw	stvec,a5
    MemoryAllocator::getAllocator();
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	de8080e7          	jalr	-536(ra) # 800031b4 <_ZN15MemoryAllocator12getAllocatorEv>
    Scheduler::init_scheduler();
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	aec080e7          	jalr	-1300(ra) # 80001ec0 <_ZN9Scheduler14init_schedulerEv>
    myConsole::init();
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	b20080e7          	jalr	-1248(ra) # 80001efc <_ZN9myConsole4initEv>

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&mainThread, nullptr, nullptr); // main
    800023e4:	00000613          	li	a2,0
    800023e8:	00000593          	li	a1,0
    800023ec:	0000b517          	auipc	a0,0xb
    800023f0:	a6450513          	addi	a0,a0,-1436 # 8000ce50 <mainThread>
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	f08080e7          	jalr	-248(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = mainThread;
    800023fc:	0000b797          	auipc	a5,0xb
    80002400:	99c7b783          	ld	a5,-1636(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002404:	0000b717          	auipc	a4,0xb
    80002408:	a4c73703          	ld	a4,-1460(a4) # 8000ce50 <mainThread>
    8000240c:	00e7b023          	sd	a4,0(a5)
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80002410:	00200793          	li	a5,2
    80002414:	1007a073          	csrs	sstatus,a5

    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&consoleThread, handleNewChars, nullptr);
    80002418:	00000613          	li	a2,0
    8000241c:	00000597          	auipc	a1,0x0
    80002420:	cb458593          	addi	a1,a1,-844 # 800020d0 <_Z14handleNewCharsPv>
    80002424:	0000b517          	auipc	a0,0xb
    80002428:	a3450513          	addi	a0,a0,-1484 # 8000ce58 <consoleThread>
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	ed0080e7          	jalr	-304(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
//    thread_create(&mythreads[4], semWaiter, (void *)('a'));
//    thread_create(&mythreads[5], semWaiter, (void *)('b'));
//
//    thread_create(&mythreads[2], timedWaiter, nullptr);

    thread_create(&userMainThread, userWrapper, nullptr);
    80002434:	00000613          	li	a2,0
    80002438:	00000597          	auipc	a1,0x0
    8000243c:	cf058593          	addi	a1,a1,-784 # 80002128 <_Z11userWrapperPv>
    80002440:	0000b517          	auipc	a0,0xb
    80002444:	a2050513          	addi	a0,a0,-1504 # 8000ce60 <userMainThread>
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	eb4080e7          	jalr	-332(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

//    sem_open(&mySem, 1); // mutex

     while (true) thread_dispatch();
    80002450:	fffff097          	auipc	ra,0xfffff
    80002454:	f80080e7          	jalr	-128(ra) # 800013d0 <_Z15thread_dispatchv>
    80002458:	ff9ff06f          	j	80002450 <main+0xa0>

000000008000245c <_ZN6Thread7wrapperEPv>:

int Thread::start() {
    return thread_create(&myHandle, this->body, this->arg);
}

void Thread::wrapper(void *arg) {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00113423          	sd	ra,8(sp)
    80002464:	00813023          	sd	s0,0(sp)
    80002468:	01010413          	addi	s0,sp,16
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    auto* t = (Thread*) arg;
    t->run();
    8000246c:	00053783          	ld	a5,0(a0)
    80002470:	0107b783          	ld	a5,16(a5)
    80002474:	000780e7          	jalr	a5
}
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::terminate() {
    thread_exit();
}

void PeriodicThread::run() {
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	02010413          	addi	s0,sp,32
    8000249c:	00050493          	mv	s1,a0
    while (true) {
        periodicActivation();
    800024a0:	0004b783          	ld	a5,0(s1)
    800024a4:	0187b783          	ld	a5,24(a5)
    800024a8:	00048513          	mv	a0,s1
    800024ac:	000780e7          	jalr	a5
        time_sleep(period);
    800024b0:	0204b503          	ld	a0,32(s1)
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	130080e7          	jalr	304(ra) # 800015e4 <_Z10time_sleepm>
    while (true) {
    800024bc:	fe5ff06f          	j	800024a0 <_ZN14PeriodicThread3runEv+0x18>

00000000800024c0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800024c0:	0000a797          	auipc	a5,0xa
    800024c4:	6a078793          	addi	a5,a5,1696 # 8000cb60 <_ZTV9Semaphore+0x10>
    800024c8:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    800024cc:	00853503          	ld	a0,8(a0)
    800024d0:	02050663          	beqz	a0,800024fc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00113423          	sd	ra,8(sp)
    800024dc:	00813023          	sd	s0,0(sp)
    800024e0:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	f78080e7          	jalr	-136(ra) # 8000145c <_Z9sem_closeP3Sem>
}
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret
    800024fc:	00008067          	ret

0000000080002500 <_Znwm>:
void* operator new (size_t size) {
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00113423          	sd	ra,8(sp)
    80002508:	00813023          	sd	s0,0(sp)
    8000250c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	d50080e7          	jalr	-688(ra) # 80001260 <_Z9mem_allocm>
}
    80002518:	00813083          	ld	ra,8(sp)
    8000251c:	00013403          	ld	s0,0(sp)
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00008067          	ret

0000000080002528 <_Znam>:
void* operator new[](size_t size) {
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00113423          	sd	ra,8(sp)
    80002530:	00813023          	sd	s0,0(sp)
    80002534:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	d28080e7          	jalr	-728(ra) # 80001260 <_Z9mem_allocm>
}
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZdaPv>:
void operator delete[](void* ptr) noexcept {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
     mem_free(ptr);
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	d50080e7          	jalr	-688(ra) # 800012b0 <_Z8mem_freePv>
}
    80002568:	00813083          	ld	ra,8(sp)
    8000256c:	00013403          	ld	s0,0(sp)
    80002570:	01010113          	addi	sp,sp,16
    80002574:	00008067          	ret

0000000080002578 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00113423          	sd	ra,8(sp)
    80002580:	00813023          	sd	s0,0(sp)
    80002584:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	d28080e7          	jalr	-728(ra) # 800012b0 <_Z8mem_freePv>
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800025a0:	0000a797          	auipc	a5,0xa
    800025a4:	59878793          	addi	a5,a5,1432 # 8000cb38 <_ZTV6Thread+0x10>
    800025a8:	00f53023          	sd	a5,0(a0)
    delete &this->myHandle;
    800025ac:	00850513          	addi	a0,a0,8
    800025b0:	02050663          	beqz	a0,800025dc <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00113423          	sd	ra,8(sp)
    800025bc:	00813023          	sd	s0,0(sp)
    800025c0:	01010413          	addi	s0,sp,16
    delete &this->myHandle;
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	fb4080e7          	jalr	-76(ra) # 80002578 <_ZdlPv>
}
    800025cc:	00813083          	ld	ra,8(sp)
    800025d0:	00013403          	ld	s0,0(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret
    800025dc:	00008067          	ret

00000000800025e0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800025e0:	fe010113          	addi	sp,sp,-32
    800025e4:	00113c23          	sd	ra,24(sp)
    800025e8:	00813823          	sd	s0,16(sp)
    800025ec:	00913423          	sd	s1,8(sp)
    800025f0:	02010413          	addi	s0,sp,32
    800025f4:	00050493          	mv	s1,a0
}
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	fa8080e7          	jalr	-88(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80002600:	00048513          	mv	a0,s1
    80002604:	00000097          	auipc	ra,0x0
    80002608:	f74080e7          	jalr	-140(ra) # 80002578 <_ZdlPv>
    8000260c:	01813083          	ld	ra,24(sp)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002620:	fe010113          	addi	sp,sp,-32
    80002624:	00113c23          	sd	ra,24(sp)
    80002628:	00813823          	sd	s0,16(sp)
    8000262c:	00913423          	sd	s1,8(sp)
    80002630:	02010413          	addi	s0,sp,32
    80002634:	00050493          	mv	s1,a0
}
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	e88080e7          	jalr	-376(ra) # 800024c0 <_ZN9SemaphoreD1Ev>
    80002640:	00048513          	mv	a0,s1
    80002644:	00000097          	auipc	ra,0x0
    80002648:	f34080e7          	jalr	-204(ra) # 80002578 <_ZdlPv>
    8000264c:	01813083          	ld	ra,24(sp)
    80002650:	01013403          	ld	s0,16(sp)
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	02010113          	addi	sp,sp,32
    8000265c:	00008067          	ret

0000000080002660 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
    8000266c:	0000a797          	auipc	a5,0xa
    80002670:	4cc78793          	addi	a5,a5,1228 # 8000cb38 <_ZTV6Thread+0x10>
    80002674:	00f53023          	sd	a5,0(a0)
    80002678:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000267c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002680:	00c53c23          	sd	a2,24(a0)
}
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00813423          	sd	s0,8(sp)
    80002698:	01010413          	addi	s0,sp,16
    8000269c:	0000a797          	auipc	a5,0xa
    800026a0:	49c78793          	addi	a5,a5,1180 # 8000cb38 <_ZTV6Thread+0x10>
    800026a4:	00f53023          	sd	a5,0(a0)
    800026a8:	00053423          	sd	zero,8(a0)
    this->body = wrapper;
    800026ac:	00000797          	auipc	a5,0x0
    800026b0:	db078793          	addi	a5,a5,-592 # 8000245c <_ZN6Thread7wrapperEPv>
    800026b4:	00f53823          	sd	a5,16(a0)
    this->arg  = (void*) this;
    800026b8:	00a53c23          	sd	a0,24(a0)
}
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	f0c080e7          	jalr	-244(ra) # 800015e4 <_Z10time_sleepm>
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	cd0080e7          	jalr	-816(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80002708:	00813083          	ld	ra,8(sp)
    8000270c:	00013403          	ld	s0,0(sp)
    80002710:	01010113          	addi	sp,sp,16
    80002714:	00008067          	ret

0000000080002718 <_ZN6Thread5startEv>:
int Thread::start() {
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00113423          	sd	ra,8(sp)
    80002720:	00813023          	sd	s0,0(sp)
    80002724:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    80002728:	01853603          	ld	a2,24(a0)
    8000272c:	01053583          	ld	a1,16(a0)
    80002730:	00850513          	addi	a0,a0,8
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	bc8080e7          	jalr	-1080(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	00813023          	sd	s0,0(sp)
    80002758:	01010413          	addi	s0,sp,16
    8000275c:	0000a797          	auipc	a5,0xa
    80002760:	40478793          	addi	a5,a5,1028 # 8000cb60 <_ZTV9Semaphore+0x10>
    80002764:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002768:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    8000276c:	00850513          	addi	a0,a0,8
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	c9c080e7          	jalr	-868(ra) # 8000140c <_Z8sem_openPP3Semj>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    80002788:	00853503          	ld	a0,8(a0)
    8000278c:	02050663          	beqz	a0,800027b8 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	d14080e7          	jalr	-748(ra) # 800014b4 <_Z8sem_waitP3Sem>
}
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret
    return -1;
    800027b8:	fff00513          	li	a0,-1
}
    800027bc:	00008067          	ret

00000000800027c0 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    800027c0:	00853503          	ld	a0,8(a0)
    800027c4:	02050663          	beqz	a0,800027f0 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	dc0080e7          	jalr	-576(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    800027e0:	00813083          	ld	ra,8(sp)
    800027e4:	00013403          	ld	s0,0(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret
    return -1;
    800027f0:	fff00513          	li	a0,-1
}
    800027f4:	00008067          	ret

00000000800027f8 <_ZN9Semaphore9timedWaitEm>:
    if (myHandle) return sem_timedwait(myHandle, time);
    800027f8:	00853503          	ld	a0,8(a0)
    800027fc:	02050663          	beqz	a0,80002828 <_ZN9Semaphore9timedWaitEm+0x30>
int Semaphore::timedWait(time_t time) {
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00113423          	sd	ra,8(sp)
    80002808:	00813023          	sd	s0,0(sp)
    8000280c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_timedwait(myHandle, time);
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	cf0080e7          	jalr	-784(ra) # 80001500 <_Z13sem_timedwaitP3Semm>
}
    80002818:	00813083          	ld	ra,8(sp)
    8000281c:	00013403          	ld	s0,0(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret
    return -1;
    80002828:	fff00513          	li	a0,-1
}
    8000282c:	00008067          	ret

0000000080002830 <_ZN9Semaphore7tryWaitEv>:
    if (myHandle) return sem_trywait(myHandle);
    80002830:	00853503          	ld	a0,8(a0)
    80002834:	02050663          	beqz	a0,80002860 <_ZN9Semaphore7tryWaitEv+0x30>
int Semaphore::tryWait() {
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00113423          	sd	ra,8(sp)
    80002840:	00813023          	sd	s0,0(sp)
    80002844:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_trywait(myHandle);
    80002848:	fffff097          	auipc	ra,0xfffff
    8000284c:	d04080e7          	jalr	-764(ra) # 8000154c <_Z11sem_trywaitP3Sem>
}
    80002850:	00813083          	ld	ra,8(sp)
    80002854:	00013403          	ld	s0,0(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret
    return -1;
    80002860:	fff00513          	li	a0,-1
}
    80002864:	00008067          	ret

0000000080002868 <_ZN7Console4getcEv>:
char Console::getc() {
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00113423          	sd	ra,8(sp)
    80002870:	00813023          	sd	s0,0(sp)
    80002874:	01010413          	addi	s0,sp,16
    return ::getc();
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	db8080e7          	jalr	-584(ra) # 80001630 <_Z4getcv>
}
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00113423          	sd	ra,8(sp)
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	01010413          	addi	s0,sp,16
    ::putc(c);
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	ddc080e7          	jalr	-548(ra) # 8000167c <_Z4putcc>
}
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    800028b8:	fe010113          	addi	sp,sp,-32
    800028bc:	00113c23          	sd	ra,24(sp)
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	01213023          	sd	s2,0(sp)
    800028cc:	02010413          	addi	s0,sp,32
    800028d0:	00050493          	mv	s1,a0
    800028d4:	00058913          	mv	s2,a1
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	db8080e7          	jalr	-584(ra) # 80002690 <_ZN6ThreadC1Ev>
    800028e0:	0000a797          	auipc	a5,0xa
    800028e4:	2a078793          	addi	a5,a5,672 # 8000cb80 <_ZTV14PeriodicThread+0x10>
    800028e8:	00f4b023          	sd	a5,0(s1)
    800028ec:	0324b023          	sd	s2,32(s1)
    800028f0:	01813083          	ld	ra,24(sp)
    800028f4:	01013403          	ld	s0,16(sp)
    800028f8:	00813483          	ld	s1,8(sp)
    800028fc:	00013903          	ld	s2,0(sp)
    80002900:	02010113          	addi	sp,sp,32
    80002904:	00008067          	ret

0000000080002908 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00113423          	sd	ra,8(sp)
    80002910:	00813023          	sd	s0,0(sp)
    80002914:	01010413          	addi	s0,sp,16
    thread_exit();
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	a6c080e7          	jalr	-1428(ra) # 80001384 <_Z11thread_exitv>
}
    80002920:	00813083          	ld	ra,8(sp)
    80002924:	00013403          	ld	s0,0(sp)
    80002928:	01010113          	addi	sp,sp,16
    8000292c:	00008067          	ret

0000000080002930 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    80002930:	ff010113          	addi	sp,sp,-16
    80002934:	00813423          	sd	s0,8(sp)
    80002938:	01010413          	addi	s0,sp,16
    8000293c:	00813403          	ld	s0,8(sp)
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret

0000000080002948 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00813423          	sd	s0,8(sp)
    80002950:	01010413          	addi	s0,sp,16
    80002954:	00813403          	ld	s0,8(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	00008067          	ret

0000000080002960 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00113423          	sd	ra,8(sp)
    80002968:	00813023          	sd	s0,0(sp)
    8000296c:	01010413          	addi	s0,sp,16
    80002970:	0000a797          	auipc	a5,0xa
    80002974:	21078793          	addi	a5,a5,528 # 8000cb80 <_ZTV14PeriodicThread+0x10>
    80002978:	00f53023          	sd	a5,0(a0)
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	c24080e7          	jalr	-988(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80002984:	00813083          	ld	ra,8(sp)
    80002988:	00013403          	ld	s0,0(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret

0000000080002994 <_ZN14PeriodicThreadD0Ev>:
    80002994:	fe010113          	addi	sp,sp,-32
    80002998:	00113c23          	sd	ra,24(sp)
    8000299c:	00813823          	sd	s0,16(sp)
    800029a0:	00913423          	sd	s1,8(sp)
    800029a4:	02010413          	addi	s0,sp,32
    800029a8:	00050493          	mv	s1,a0
    800029ac:	0000a797          	auipc	a5,0xa
    800029b0:	1d478793          	addi	a5,a5,468 # 8000cb80 <_ZTV14PeriodicThread+0x10>
    800029b4:	00f53023          	sd	a5,0(a0)
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	be8080e7          	jalr	-1048(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800029c0:	00048513          	mv	a0,s1
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	bb4080e7          	jalr	-1100(ra) # 80002578 <_ZdlPv>
    800029cc:	01813083          	ld	ra,24(sp)
    800029d0:	01013403          	ld	s0,16(sp)
    800029d4:	00813483          	ld	s1,8(sp)
    800029d8:	02010113          	addi	sp,sp,32
    800029dc:	00008067          	ret

00000000800029e0 <_ZN13BoundedBufferC1Ev>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800029e0:	fe010113          	addi	sp,sp,-32
    800029e4:	00113c23          	sd	ra,24(sp)
    800029e8:	00813823          	sd	s0,16(sp)
    800029ec:	00913423          	sd	s1,8(sp)
    800029f0:	02010413          	addi	s0,sp,32
    800029f4:	00050493          	mv	s1,a0
    head = tail = 0;
    800029f8:	00052223          	sw	zero,4(a0)
    800029fc:	00052023          	sw	zero,0(a0)
    Sem::open(&space_available, bufferSize);
    80002a00:	12c00593          	li	a1,300
    80002a04:	00850513          	addi	a0,a0,8
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	db4080e7          	jalr	-588(ra) # 800017bc <_ZN3Sem4openEPPS_j>
    Sem::open(&item_available, 0);
    80002a10:	00000593          	li	a1,0
    80002a14:	01048513          	addi	a0,s1,16
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	da4080e7          	jalr	-604(ra) # 800017bc <_ZN3Sem4openEPPS_j>
    Sem::open(&mutex, 1);
    80002a20:	00100593          	li	a1,1
    80002a24:	01848513          	addi	a0,s1,24
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	d94080e7          	jalr	-620(ra) # 800017bc <_ZN3Sem4openEPPS_j>
}
    80002a30:	01813083          	ld	ra,24(sp)
    80002a34:	01013403          	ld	s0,16(sp)
    80002a38:	00813483          	ld	s1,8(sp)
    80002a3c:	02010113          	addi	sp,sp,32
    80002a40:	00008067          	ret

0000000080002a44 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002a44:	fe010113          	addi	sp,sp,-32
    80002a48:	00113c23          	sd	ra,24(sp)
    80002a4c:	00813823          	sd	s0,16(sp)
    80002a50:	00913423          	sd	s1,8(sp)
    80002a54:	02010413          	addi	s0,sp,32
    80002a58:	00050493          	mv	s1,a0
    Sem::s_close(space_available);
    80002a5c:	00853503          	ld	a0,8(a0)
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	050080e7          	jalr	80(ra) # 80001ab0 <_ZN3Sem7s_closeEPS_>
    Sem::s_close(item_available);
    80002a68:	0104b503          	ld	a0,16(s1)
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	044080e7          	jalr	68(ra) # 80001ab0 <_ZN3Sem7s_closeEPS_>
    Sem::s_close(mutex);
    80002a74:	0184b503          	ld	a0,24(s1)
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	038080e7          	jalr	56(ra) # 80001ab0 <_ZN3Sem7s_closeEPS_>
}
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	01013403          	ld	s0,16(sp)
    80002a88:	00813483          	ld	s1,8(sp)
    80002a8c:	02010113          	addi	sp,sp,32
    80002a90:	00008067          	ret

0000000080002a94 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	01213023          	sd	s2,0(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002ab4:	00853503          	ld	a0,8(a0)
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	e48080e7          	jalr	-440(ra) # 80001900 <_ZN3Sem4waitEPS_>
    //Sem::wait(mutex);
    buffer[tail++] = c;
    80002ac0:	0044a783          	lw	a5,4(s1)
    80002ac4:	0017871b          	addiw	a4,a5,1
    80002ac8:	00f487b3          	add	a5,s1,a5
    80002acc:	03278023          	sb	s2,32(a5)
    tail %= bufferSize;
    80002ad0:	12c00793          	li	a5,300
    80002ad4:	02f767bb          	remw	a5,a4,a5
    80002ad8:	00f4a223          	sw	a5,4(s1)
    //Sem::signal(mutex);
    Sem::signal(item_available);
    80002adc:	0104b503          	ld	a0,16(s1)
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	f7c080e7          	jalr	-132(ra) # 80001a5c <_ZN3Sem6signalEPS_>
}
    80002ae8:	01813083          	ld	ra,24(sp)
    80002aec:	01013403          	ld	s0,16(sp)
    80002af0:	00813483          	ld	s1,8(sp)
    80002af4:	00013903          	ld	s2,0(sp)
    80002af8:	02010113          	addi	sp,sp,32
    80002afc:	00008067          	ret

0000000080002b00 <_ZN13BoundedBuffer3getEv>:

char BoundedBuffer::get() {
    80002b00:	fe010113          	addi	sp,sp,-32
    80002b04:	00113c23          	sd	ra,24(sp)
    80002b08:	00813823          	sd	s0,16(sp)
    80002b0c:	00913423          	sd	s1,8(sp)
    80002b10:	01213023          	sd	s2,0(sp)
    80002b14:	02010413          	addi	s0,sp,32
    80002b18:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002b1c:	01053503          	ld	a0,16(a0)
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	de0080e7          	jalr	-544(ra) # 80001900 <_ZN3Sem4waitEPS_>
    //Sem::wait(mutex);
    char  c = buffer[head++];
    80002b28:	0004a783          	lw	a5,0(s1)
    80002b2c:	0017871b          	addiw	a4,a5,1
    80002b30:	00f487b3          	add	a5,s1,a5
    80002b34:	0207c903          	lbu	s2,32(a5)
    head %= bufferSize;
    80002b38:	12c00793          	li	a5,300
    80002b3c:	02f767bb          	remw	a5,a4,a5
    80002b40:	00f4a023          	sw	a5,0(s1)
    //Sem::signal(mutex);
    Sem::signal(space_available);
    80002b44:	0084b503          	ld	a0,8(s1)
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	f14080e7          	jalr	-236(ra) # 80001a5c <_ZN3Sem6signalEPS_>
    return c;
}
    80002b50:	00090513          	mv	a0,s2
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	01013403          	ld	s0,16(sp)
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	00013903          	ld	s2,0(sp)
    80002b64:	02010113          	addi	sp,sp,32
    80002b68:	00008067          	ret

0000000080002b6c <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00113423          	sd	ra,8(sp)
    80002b74:	00813023          	sd	s0,0(sp)
    80002b78:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
    80002b7c:	05750513          	addi	a0,a0,87
    80002b80:	00655513          	srli	a0,a0,0x6
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	4f0080e7          	jalr	1264(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	00813023          	sd	s0,0(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	708080e7          	jalr	1800(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret

0000000080002bc4 <_ZNK13BoundedBuffer5emptyEv>:

bool BoundedBuffer::empty() const {
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00113423          	sd	ra,8(sp)
    80002bcc:	00813023          	sd	s0,0(sp)
    80002bd0:	01010413          	addi	s0,sp,16
    return !item_available->getValue();
    80002bd4:	01053503          	ld	a0,16(a0)
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	b7c080e7          	jalr	-1156(ra) # 80001754 <_ZNK3Sem8getValueEv>
}
    80002be0:	00153513          	seqz	a0,a0
    80002be4:	00813083          	ld	ra,8(sp)
    80002be8:	00013403          	ld	s0,0(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret

0000000080002bf4 <_ZNK13BoundedBuffer4fullEv>:

bool BoundedBuffer::full() const {
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00113423          	sd	ra,8(sp)
    80002bfc:	00813023          	sd	s0,0(sp)
    80002c00:	01010413          	addi	s0,sp,16
    return !space_available->getValue();
    80002c04:	00853503          	ld	a0,8(a0)
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	b4c080e7          	jalr	-1204(ra) # 80001754 <_ZNK3Sem8getValueEv>
};
    80002c10:	00153513          	seqz	a0,a0
    80002c14:	00813083          	ld	ra,8(sp)
    80002c18:	00013403          	ld	s0,0(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <_ZN5RISCV10popSppSpieEv>:
extern void handleNewChars(void*);

// first time running a thread, sepc inside of wrapper


void RISCV::popSppSpie() {
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00813423          	sd	s0,8(sp)
    80002c2c:	01010413          	addi	s0,sp,16

    // not inline ( ra reg )

    if (TCB::running->routine != handleNewChars) RISCV::mask_status(SPP);
    80002c30:	0000a797          	auipc	a5,0xa
    80002c34:	1687b783          	ld	a5,360(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c38:	0007b783          	ld	a5,0(a5)
    80002c3c:	0307b703          	ld	a4,48(a5)
    80002c40:	0000a797          	auipc	a5,0xa
    80002c44:	1687b783          	ld	a5,360(a5) # 8000cda8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002c48:	00f70663          	beq	a4,a5,80002c54 <_ZN5RISCV10popSppSpieEv+0x30>
        __asm__ volatile("csrs sip, %0" : : "r"(mask));
    }


    static inline void mask_status(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80002c4c:	10000793          	li	a5,256
    80002c50:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    80002c54:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002c58:	10200073          	sret

    // => pop spp and spie !
    // exit from supervisor mode
}
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret

0000000080002c68 <_ZN5RISCV16handle_interruptEv>:

void RISCV::handle_interrupt() {
    80002c68:	f9010113          	addi	sp,sp,-112
    80002c6c:	06113423          	sd	ra,104(sp)
    80002c70:	06813023          	sd	s0,96(sp)
    80002c74:	04913c23          	sd	s1,88(sp)
    80002c78:	05213823          	sd	s2,80(sp)
    80002c7c:	05313423          	sd	s3,72(sp)
    80002c80:	05413023          	sd	s4,64(sp)
    80002c84:	07010413          	addi	s0,sp,112

    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    80002c88:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002c8c:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002c90:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002c94:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002c98:	00070693          	mv	a3,a4

};

inline uint64 RISCV::rd_scause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    80002c9c:	142027f3          	csrr	a5,scause
    80002ca0:	f8f43c23          	sd	a5,-104(s0)
    return value;
    80002ca4:	f9843703          	ld	a4,-104(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    80002ca8:	fff00793          	li	a5,-1
    80002cac:	03f79793          	slli	a5,a5,0x3f
    80002cb0:	00178793          	addi	a5,a5,1
    80002cb4:	06f70063          	beq	a4,a5,80002d14 <_ZN5RISCV16handle_interruptEv+0xac>

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }

    } else if (scause == EXTERNAL) {
    80002cb8:	fff00793          	li	a5,-1
    80002cbc:	03f79793          	slli	a5,a5,0x3f
    80002cc0:	00978793          	addi	a5,a5,9
    80002cc4:	18f70463          	beq	a4,a5,80002e4c <_ZN5RISCV16handle_interruptEv+0x1e4>
        wr_sstatus(sstatus);
        clear_sip(SE);

    }

     else if (scause == U_ECALL || scause == S_ECALL){
    80002cc8:	ff870713          	addi	a4,a4,-8
    80002ccc:	00100793          	li	a5,1
    80002cd0:	30e7e463          	bltu	a5,a4,80002fd8 <_ZN5RISCV16handle_interruptEv+0x370>
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002cd4:	141027f3          	csrr	a5,sepc
    80002cd8:	fcf43423          	sd	a5,-56(s0)
    return value;
    80002cdc:	fc843483          	ld	s1,-56(s0)
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
    80002ce0:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002ce4:	100027f3          	csrr	a5,sstatus
    80002ce8:	fcf43023          	sd	a5,-64(s0)
    return value;
    80002cec:	fc043903          	ld	s2,-64(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    80002cf0:	04200793          	li	a5,66
    80002cf4:	1f07ee63          	bltu	a5,a6,80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
    80002cf8:	00281793          	slli	a5,a6,0x2
    80002cfc:	00007717          	auipc	a4,0x7
    80002d00:	32470713          	addi	a4,a4,804 # 8000a020 <CONSOLE_STATUS+0x10>
    80002d04:	00e787b3          	add	a5,a5,a4
    80002d08:	0007a783          	lw	a5,0(a5)
    80002d0c:	00e787b3          	add	a5,a5,a4
    80002d10:	00078067          	jr	a5
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002d14:	00200793          	li	a5,2
    80002d18:	1447b073          	csrc	sip,a5

    Scheduler(const Scheduler&) = delete;

private:

    static bool hasSleeping() {return  first_sleepy != nullptr;}
    80002d1c:	0000a797          	auipc	a5,0xa
    80002d20:	0747b783          	ld	a5,116(a5) # 8000cd90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d24:	0007b483          	ld	s1,0(a5)
        if (Scheduler::hasSleeping()) {
    80002d28:	04048463          	beqz	s1,80002d70 <_ZN5RISCV16handle_interruptEv+0x108>
            Scheduler::first_sleepy -> sleeping_time --;
    80002d2c:	0204b783          	ld	a5,32(s1)
    80002d30:	fff78793          	addi	a5,a5,-1
    80002d34:	02f4b023          	sd	a5,32(s1)
            while (tcb) {
    80002d38:	02048663          	beqz	s1,80002d64 <_ZN5RISCV16handle_interruptEv+0xfc>
                if (tcb -> sleeping_time > 0) break;
    80002d3c:	0204b783          	ld	a5,32(s1)
    80002d40:	02079263          	bnez	a5,80002d64 <_ZN5RISCV16handle_interruptEv+0xfc>
                tcb->current_state = TCB::RUNNABLE;
    80002d44:	0604a423          	sw	zero,104(s1)
                Scheduler::put(tcb);
    80002d48:	00048513          	mv	a0,s1
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	f44080e7          	jalr	-188(ra) # 80001c90 <_ZN9Scheduler3putEP3TCB>
                TCB* next = tcb -> next_sleepy;
    80002d54:	0104b783          	ld	a5,16(s1)
                tcb -> next_sleepy = nullptr;
    80002d58:	0004b823          	sd	zero,16(s1)
                tcb = next;
    80002d5c:	00078493          	mv	s1,a5
            while (tcb) {
    80002d60:	fd9ff06f          	j	80002d38 <_ZN5RISCV16handle_interruptEv+0xd0>
            Scheduler::first_sleepy = tcb;
    80002d64:	0000a797          	auipc	a5,0xa
    80002d68:	02c7b783          	ld	a5,44(a5) # 8000cd90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d6c:	0097b023          	sd	s1,0(a5)
        for (Sem* s = Sem::first; s; s = s->next) {
    80002d70:	0000a797          	auipc	a5,0xa
    80002d74:	0187b783          	ld	a5,24(a5) # 8000cd88 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002d78:	0007ba03          	ld	s4,0(a5)
    80002d7c:	0600006f          	j	80002ddc <_ZN5RISCV16handle_interruptEv+0x174>
                        s->blocked.remove(t);  // time expired
    80002d80:	00090593          	mv	a1,s2
    80002d84:	010a0513          	addi	a0,s4,16
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	264080e7          	jalr	612(ra) # 80002fec <_ZN4ListI3TCBE6removeEPS0_>
                        t->current_state = TCB::RUNNABLE;
    80002d90:	06092423          	sw	zero,104(s2)
                        Scheduler::put(t);
    80002d94:	00090513          	mv	a0,s2
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	ef8080e7          	jalr	-264(ra) # 80001c90 <_ZN9Scheduler3putEP3TCB>
            for (List<TCB>::Elem* e = s->blocked.head ; e && count > 0; e = e->next) {
    80002da0:	0084b483          	ld	s1,8(s1)
    80002da4:	02048a63          	beqz	s1,80002dd8 <_ZN5RISCV16handle_interruptEv+0x170>
    80002da8:	03305863          	blez	s3,80002dd8 <_ZN5RISCV16handle_interruptEv+0x170>
                TCB* t = e->data;
    80002dac:	0004b903          	ld	s2,0(s1)
                if (t->time_on_sem > 0) {       // if timed waiting
    80002db0:	01893783          	ld	a5,24(s2)
    80002db4:	fe0786e3          	beqz	a5,80002da0 <_ZN5RISCV16handle_interruptEv+0x138>
                    count--;
    80002db8:	fff9899b          	addiw	s3,s3,-1
                    t->time_on_sem--;
    80002dbc:	fff78793          	addi	a5,a5,-1
    80002dc0:	00f93c23          	sd	a5,24(s2)
                    if ( !t->time_on_sem && t != Scheduler::peek() ) {
    80002dc4:	fc079ee3          	bnez	a5,80002da0 <_ZN5RISCV16handle_interruptEv+0x138>
    80002dc8:	fffff097          	auipc	ra,0xfffff
    80002dcc:	f28080e7          	jalr	-216(ra) # 80001cf0 <_ZN9Scheduler4peekEv>
    80002dd0:	faa918e3          	bne	s2,a0,80002d80 <_ZN5RISCV16handle_interruptEv+0x118>
    80002dd4:	fcdff06f          	j	80002da0 <_ZN5RISCV16handle_interruptEv+0x138>
        for (Sem* s = Sem::first; s; s = s->next) {
    80002dd8:	008a3a03          	ld	s4,8(s4)
    80002ddc:	000a0863          	beqz	s4,80002dec <_ZN5RISCV16handle_interruptEv+0x184>
            int count = s->timedBlock;
    80002de0:	028a2983          	lw	s3,40(s4)
            for (List<TCB>::Elem* e = s->blocked.head ; e && count > 0; e = e->next) {
    80002de4:	010a3483          	ld	s1,16(s4)
    80002de8:	fbdff06f          	j	80002da4 <_ZN5RISCV16handle_interruptEv+0x13c>
        TCB::time_slice_count ++;
    80002dec:	0000a717          	auipc	a4,0xa
    80002df0:	fc473703          	ld	a4,-60(a4) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002df4:	00073783          	ld	a5,0(a4)
    80002df8:	00178793          	addi	a5,a5,1
    80002dfc:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    80002e00:	0000a717          	auipc	a4,0xa
    80002e04:	f9873703          	ld	a4,-104(a4) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e08:	00073703          	ld	a4,0(a4)
    time_t getTimeSlice() const {return time_slice;}
    80002e0c:	02873703          	ld	a4,40(a4)
    80002e10:	0ee7e463          	bltu	a5,a4,80002ef8 <_ZN5RISCV16handle_interruptEv+0x290>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002e14:	141027f3          	csrr	a5,sepc
    80002e18:	faf43423          	sd	a5,-88(s0)
    return value;
    80002e1c:	fa843903          	ld	s2,-88(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002e20:	100027f3          	csrr	a5,sstatus
    80002e24:	faf43023          	sd	a5,-96(s0)
    return value;
    80002e28:	fa043483          	ld	s1,-96(s0)
            TCB::time_slice_count = 0; // new running thread
    80002e2c:	0000a797          	auipc	a5,0xa
    80002e30:	f847b783          	ld	a5,-124(a5) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e34:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002e38:	00001097          	auipc	ra,0x1
    80002e3c:	ac0080e7          	jalr	-1344(ra) # 800038f8 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002e40:	14191073          	csrw	sepc,s2
}

inline void RISCV::wr_sstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002e44:	10049073          	csrw	sstatus,s1
}
    80002e48:	0b00006f          	j	80002ef8 <_ZN5RISCV16handle_interruptEv+0x290>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002e4c:	141027f3          	csrr	a5,sepc
    80002e50:	faf43c23          	sd	a5,-72(s0)
    return value;
    80002e54:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002e58:	100027f3          	csrr	a5,sstatus
    80002e5c:	faf43823          	sd	a5,-80(s0)
    return value;
    80002e60:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002e64:	00005097          	auipc	ra,0x5
    80002e68:	aa0080e7          	jalr	-1376(ra) # 80007904 <plic_claim>
    80002e6c:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002e70:	00a00793          	li	a5,10
    80002e74:	00f50c63          	beq	a0,a5,80002e8c <_ZN5RISCV16handle_interruptEv+0x224>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002e78:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002e7c:	10091073          	csrw	sstatus,s2
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002e80:	20000793          	li	a5,512
    80002e84:	1447b073          	csrc	sip,a5
    }
    80002e88:	0700006f          	j	80002ef8 <_ZN5RISCV16handle_interruptEv+0x290>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002e8c:	0000a797          	auipc	a5,0xa
    80002e90:	ed47b783          	ld	a5,-300(a5) # 8000cd60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e94:	0007b783          	ld	a5,0(a5)
    80002e98:	0007c783          	lbu	a5,0(a5)
    80002e9c:	0017f793          	andi	a5,a5,1
    80002ea0:	02078c63          	beqz	a5,80002ed8 <_ZN5RISCV16handle_interruptEv+0x270>
    80002ea4:	0000a797          	auipc	a5,0xa
    80002ea8:	eb47b783          	ld	a5,-332(a5) # 8000cd58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002eac:	0007b503          	ld	a0,0(a5)
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	d44080e7          	jalr	-700(ra) # 80002bf4 <_ZNK13BoundedBuffer4fullEv>
    80002eb8:	02051063          	bnez	a0,80002ed8 <_ZN5RISCV16handle_interruptEv+0x270>
                char c = *(char *) CONSOLE_RX_DATA;
    80002ebc:	0000a797          	auipc	a5,0xa
    80002ec0:	e947b783          	ld	a5,-364(a5) # 8000cd50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ec4:	0007b783          	ld	a5,0(a5)
                myConsole::input_putc(c);
    80002ec8:	0007c503          	lbu	a0,0(a5)
    80002ecc:	fffff097          	auipc	ra,0xfffff
    80002ed0:	16c080e7          	jalr	364(ra) # 80002038 <_ZN9myConsole10input_putcEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002ed4:	fb9ff06f          	j	80002e8c <_ZN5RISCV16handle_interruptEv+0x224>
            plic_complete(irq);
    80002ed8:	00048513          	mv	a0,s1
    80002edc:	00005097          	auipc	ra,0x5
    80002ee0:	a60080e7          	jalr	-1440(ra) # 8000793c <plic_complete>
    80002ee4:	f95ff06f          	j	80002e78 <_ZN5RISCV16handle_interruptEv+0x210>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	18c080e7          	jalr	396(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002ef0:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002ef4:	10091073          	csrw	sstatus,s2

    } else {
        // INVALID INTERRUPT CODE
        printInteger(123456789);
    }
}
    80002ef8:	06813083          	ld	ra,104(sp)
    80002efc:	06013403          	ld	s0,96(sp)
    80002f00:	05813483          	ld	s1,88(sp)
    80002f04:	05013903          	ld	s2,80(sp)
    80002f08:	04813983          	ld	s3,72(sp)
    80002f0c:	04013a03          	ld	s4,64(sp)
    80002f10:	07010113          	addi	sp,sp,112
    80002f14:	00008067          	ret
                MemoryAllocator::mem_free((void *)a1);
    80002f18:	00000097          	auipc	ra,0x0
    80002f1c:	39c080e7          	jalr	924(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002f20:	fd1ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    80002f24:	00001097          	auipc	ra,0x1
    80002f28:	884080e7          	jalr	-1916(ra) # 800037a8 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    80002f2c:	fc5ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                TCB::_threadExit();
    80002f30:	00001097          	auipc	ra,0x1
    80002f34:	a68080e7          	jalr	-1432(ra) # 80003998 <_ZN3TCB11_threadExitEv>
                break;
    80002f38:	fb9ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                TCB::time_slice_count = 0;
    80002f3c:	0000a797          	auipc	a5,0xa
    80002f40:	e747b783          	ld	a5,-396(a5) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002f44:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002f48:	00001097          	auipc	ra,0x1
    80002f4c:	9b0080e7          	jalr	-1616(ra) # 800038f8 <_ZN3TCB8dispatchEv>
                break;
    80002f50:	fa1ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Sem::open((sem_t*)a1, (unsigned int)a2);
    80002f54:	0005859b          	sext.w	a1,a1
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	864080e7          	jalr	-1948(ra) # 800017bc <_ZN3Sem4openEPPS_j>
                break;
    80002f60:	f91ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Sem::s_close((sem_t)a1); // a1 == handle
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	b4c080e7          	jalr	-1204(ra) # 80001ab0 <_ZN3Sem7s_closeEPS_>
                break;
    80002f6c:	f85ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Sem::wait(((sem_t)a1)); // a1 <=> handle
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	990080e7          	jalr	-1648(ra) # 80001900 <_ZN3Sem4waitEPS_>
                break;
    80002f78:	f79ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Sem::signal((sem_t)a1); // a1 <=> handle
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	ae0080e7          	jalr	-1312(ra) # 80001a5c <_ZN3Sem6signalEPS_>
                break;
    80002f84:	f6dff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Sem::timedWait((sem_t)a1,(time_t)a2);
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	9cc080e7          	jalr	-1588(ra) # 80001954 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002f90:	f61ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Sem::trywait((sem_t)a1);
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	724080e7          	jalr	1828(ra) # 800016b8 <_ZN3Sem7trywaitEPS_>
                break;
    80002f9c:	f55ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                Scheduler::put_to_sleep((thread_t)TCB::running, (time_t)a1);
    80002fa0:	00050593          	mv	a1,a0
    80002fa4:	0000a797          	auipc	a5,0xa
    80002fa8:	df47b783          	ld	a5,-524(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002fac:	0007b503          	ld	a0,0(a5)
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	e3c080e7          	jalr	-452(ra) # 80001dec <_ZN9Scheduler12put_to_sleepEP3TCBm>
                break;
    80002fb8:	f39ff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                myConsole::input_getc();
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	fe8080e7          	jalr	-24(ra) # 80001fa4 <_ZN9myConsole10input_getcEv>
                break;
    80002fc4:	f2dff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
                myConsole::output_putc((char) a1);
    80002fc8:	0ff57513          	andi	a0,a0,255
    80002fcc:	fffff097          	auipc	ra,0xfffff
    80002fd0:	008080e7          	jalr	8(ra) # 80001fd4 <_ZN9myConsole11output_putcEc>
                break;
    80002fd4:	f1dff06f          	j	80002ef0 <_ZN5RISCV16handle_interruptEv+0x288>
        printInteger(123456789);
    80002fd8:	075bd537          	lui	a0,0x75bd
    80002fdc:	d1550513          	addi	a0,a0,-747 # 75bcd15 <_entry-0x78a432eb>
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	5a0080e7          	jalr	1440(ra) # 80003580 <_Z12printIntegerm>
}
    80002fe8:	f11ff06f          	j	80002ef8 <_ZN5RISCV16handle_interruptEv+0x290>

0000000080002fec <_ZN4ListI3TCBE6removeEPS0_>:

template <typename T>
void List<T>::remove(T* t) {
    80002fec:	00050693          	mv	a3,a0
    Elem* prev = nullptr, *elem = head;
    80002ff0:	00053503          	ld	a0,0(a0)
    80002ff4:	00000713          	li	a4,0
    while (elem) {
    80002ff8:	06050c63          	beqz	a0,80003070 <_ZN4ListI3TCBE6removeEPS0_+0x84>
        if (elem->data == t) {
    80002ffc:	00053783          	ld	a5,0(a0)
    80003000:	00b78863          	beq	a5,a1,80003010 <_ZN4ListI3TCBE6removeEPS0_+0x24>

            delete elem;
            return;

        }
        prev = elem;
    80003004:	00050713          	mv	a4,a0
        elem = elem -> next;
    80003008:	00853503          	ld	a0,8(a0)
    while (elem) {
    8000300c:	fedff06f          	j	80002ff8 <_ZN4ListI3TCBE6removeEPS0_+0xc>
void List<T>::remove(T* t) {
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00113423          	sd	ra,8(sp)
    80003018:	00813023          	sd	s0,0(sp)
    8000301c:	01010413          	addi	s0,sp,16
            if (prev) {
    80003020:	02070e63          	beqz	a4,8000305c <_ZN4ListI3TCBE6removeEPS0_+0x70>
                prev->next = elem->next;
    80003024:	00853783          	ld	a5,8(a0)
    80003028:	00f73423          	sd	a5,8(a4)
                if (tail == elem) tail = prev;
    8000302c:	0086b783          	ld	a5,8(a3)
    80003030:	02a78263          	beq	a5,a0,80003054 <_ZN4ListI3TCBE6removeEPS0_+0x68>
            if (!head) tail = nullptr;
    80003034:	0006b783          	ld	a5,0(a3)
    80003038:	02078863          	beqz	a5,80003068 <_ZN4ListI3TCBE6removeEPS0_+0x7c>
            delete elem;
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	53c080e7          	jalr	1340(ra) # 80002578 <_ZdlPv>
    }
}
    80003044:	00813083          	ld	ra,8(sp)
    80003048:	00013403          	ld	s0,0(sp)
    8000304c:	01010113          	addi	sp,sp,16
    80003050:	00008067          	ret
                if (tail == elem) tail = prev;
    80003054:	00e6b423          	sd	a4,8(a3)
    80003058:	fddff06f          	j	80003034 <_ZN4ListI3TCBE6removeEPS0_+0x48>
            else head = elem -> next;
    8000305c:	00853783          	ld	a5,8(a0)
    80003060:	00f6b023          	sd	a5,0(a3)
    80003064:	fd1ff06f          	j	80003034 <_ZN4ListI3TCBE6removeEPS0_+0x48>
            if (!head) tail = nullptr;
    80003068:	0006b423          	sd	zero,8(a3)
    8000306c:	fd1ff06f          	j	8000303c <_ZN4ListI3TCBE6removeEPS0_+0x50>
    80003070:	00008067          	ret

0000000080003074 <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00813423          	sd	s0,8(sp)
    8000307c:	01010413          	addi	s0,sp,16

    //size = block number

    if (size <= 0) return nullptr;
    80003080:	12050663          	beqz	a0,800031ac <_ZN15MemoryAllocator9mem_allocEm+0x138>

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;
    80003084:	00651793          	slli	a5,a0,0x6

    for (curr = free_mem_head; curr; curr = curr -> next) {
    80003088:	0000a517          	auipc	a0,0xa
    8000308c:	e3053503          	ld	a0,-464(a0) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    80003090:	0e050e63          	beqz	a0,8000318c <_ZN15MemoryAllocator9mem_allocEm+0x118>

        if (curr->size >= byte_size) {
    80003094:	01053703          	ld	a4,16(a0)
    80003098:	00f77663          	bgeu	a4,a5,800030a4 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    for (curr = free_mem_head; curr; curr = curr -> next) {
    8000309c:	00053503          	ld	a0,0(a0)
    800030a0:	ff1ff06f          	j	80003090 <_ZN15MemoryAllocator9mem_allocEm+0x1c>

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    800030a4:	40f70733          	sub	a4,a4,a5
    800030a8:	01700693          	li	a3,23
    800030ac:	06e6e463          	bltu	a3,a4,80003114 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                if (curr->next) curr->next->prev = curr->prev;
    800030b0:	00053703          	ld	a4,0(a0)
    800030b4:	00070663          	beqz	a4,800030c0 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800030b8:	00853683          	ld	a3,8(a0)
    800030bc:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    800030c0:	00853703          	ld	a4,8(a0)
    800030c4:	04070063          	beqz	a4,80003104 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    800030c8:	00053683          	ld	a3,0(a0)
    800030cc:	00d73023          	sd	a3,0(a4)
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    800030d0:	0000a717          	auipc	a4,0xa
    800030d4:	df073703          	ld	a4,-528(a4) # 8000cec0 <_ZN15MemoryAllocator13used_mem_headE>
    800030d8:	08e56263          	bltu	a0,a4,8000315c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    800030dc:	0a070e63          	beqz	a4,80003198 <_ZN15MemoryAllocator9mem_allocEm+0x124>
            else for (prev = used_mem_head; prev->next && (char*)curr >= (char *) prev + prev->size; prev = prev->next) {
    800030e0:	00070693          	mv	a3,a4
    800030e4:	00073703          	ld	a4,0(a4)
    800030e8:	06070c63          	beqz	a4,80003160 <_ZN15MemoryAllocator9mem_allocEm+0xec>
    800030ec:	0106b603          	ld	a2,16(a3)
    800030f0:	00c68633          	add	a2,a3,a2
    800030f4:	06c56663          	bltu	a0,a2,80003160 <_ZN15MemoryAllocator9mem_allocEm+0xec>
                // prev addr < addr and prev-next addr > addr + size
                if ((char*)prev->next >= (char*)curr + byte_size) break;
    800030f8:	00f50633          	add	a2,a0,a5
    800030fc:	fec762e3          	bltu	a4,a2,800030e0 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    80003100:	0600006f          	j	80003160 <_ZN15MemoryAllocator9mem_allocEm+0xec>
                else free_mem_head = curr->next;
    80003104:	00053703          	ld	a4,0(a0)
    80003108:	0000a697          	auipc	a3,0xa
    8000310c:	dae6b823          	sd	a4,-592(a3) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    80003110:	fc1ff06f          	j	800030d0 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    80003114:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    80003118:	00053683          	ld	a3,0(a0)
    8000311c:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    80003120:	00853683          	ld	a3,8(a0)
    80003124:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    80003128:	01053683          	ld	a3,16(a0)
    8000312c:	40f686b3          	sub	a3,a3,a5
    80003130:	00d73823          	sd	a3,16(a4)
                if (curr->next) curr->next->prev = remaining;
    80003134:	00053683          	ld	a3,0(a0)
    80003138:	00068463          	beqz	a3,80003140 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    8000313c:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    80003140:	00853683          	ld	a3,8(a0)
    80003144:	00068663          	beqz	a3,80003150 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    80003148:	00e6b023          	sd	a4,0(a3)
    8000314c:	f85ff06f          	j	800030d0 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                else free_mem_head = remaining;
    80003150:	0000a697          	auipc	a3,0xa
    80003154:	d6e6b423          	sd	a4,-664(a3) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    80003158:	f79ff06f          	j	800030d0 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    8000315c:	00000693          	li	a3,0
            }

            // dodavanje na kraj?

            curr->size = byte_size - mem_h_size;
    80003160:	fe878793          	addi	a5,a5,-24
    80003164:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80003168:	00d53423          	sd	a3,8(a0)

            if (prev) {
    8000316c:	02068a63          	beqz	a3,800031a0 <_ZN15MemoryAllocator9mem_allocEm+0x12c>
                curr->next = prev->next;
    80003170:	0006b783          	ld	a5,0(a3)
    80003174:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80003178:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    8000317c:	00053783          	ld	a5,0(a0)
    80003180:	00078463          	beqz	a5,80003188 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80003184:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80003188:	01850513          	addi	a0,a0,24
        }
    }

    // free memory not found :(
    return nullptr;
}
    8000318c:	00813403          	ld	s0,8(sp)
    80003190:	01010113          	addi	sp,sp,16
    80003194:	00008067          	ret
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80003198:	00070693          	mv	a3,a4
    8000319c:	fc5ff06f          	j	80003160 <_ZN15MemoryAllocator9mem_allocEm+0xec>
            else used_mem_head = curr;
    800031a0:	0000a797          	auipc	a5,0xa
    800031a4:	d2a7b023          	sd	a0,-736(a5) # 8000cec0 <_ZN15MemoryAllocator13used_mem_headE>
    800031a8:	fd5ff06f          	j	8000317c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    if (size <= 0) return nullptr;
    800031ac:	00000513          	li	a0,0
    800031b0:	fddff06f          	j	8000318c <_ZN15MemoryAllocator9mem_allocEm+0x118>

00000000800031b4 <_ZN15MemoryAllocator12getAllocatorEv>:
    if (!allocator) {
    800031b4:	0000a797          	auipc	a5,0xa
    800031b8:	d147b783          	ld	a5,-748(a5) # 8000cec8 <_ZN15MemoryAllocator9allocatorE>
    800031bc:	00078863          	beqz	a5,800031cc <_ZN15MemoryAllocator12getAllocatorEv+0x18>
}
    800031c0:	0000a517          	auipc	a0,0xa
    800031c4:	d0853503          	ld	a0,-760(a0) # 8000cec8 <_ZN15MemoryAllocator9allocatorE>
    800031c8:	00008067          	ret
MemoryAllocator* MemoryAllocator::getAllocator() {
    800031cc:	fe010113          	addi	sp,sp,-32
    800031d0:	00113c23          	sd	ra,24(sp)
    800031d4:	00813823          	sd	s0,16(sp)
    800031d8:	00913423          	sd	s1,8(sp)
    800031dc:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    800031e0:	0000a697          	auipc	a3,0xa
    800031e4:	b886b683          	ld	a3,-1144(a3) # 8000cd68 <_GLOBAL_OFFSET_TABLE_+0x20>
    800031e8:	0006b783          	ld	a5,0(a3)
    800031ec:	0000a497          	auipc	s1,0xa
    800031f0:	ccc48493          	addi	s1,s1,-820 # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    800031f4:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    800031f8:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    800031fc:	0004b703          	ld	a4,0(s1)
    80003200:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80003204:	0000a797          	auipc	a5,0xa
    80003208:	b9c7b783          	ld	a5,-1124(a5) # 8000cda0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000320c:	0007b783          	ld	a5,0(a5)
    80003210:	0006b683          	ld	a3,0(a3)
    80003214:	40d787b3          	sub	a5,a5,a3
    80003218:	00178793          	addi	a5,a5,1
    8000321c:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    80003220:	00100513          	li	a0,1
    80003224:	00000097          	auipc	ra,0x0
    80003228:	e50080e7          	jalr	-432(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
    8000322c:	00a4b823          	sd	a0,16(s1)
}
    80003230:	0000a517          	auipc	a0,0xa
    80003234:	c9853503          	ld	a0,-872(a0) # 8000cec8 <_ZN15MemoryAllocator9allocatorE>
    80003238:	01813083          	ld	ra,24(sp)
    8000323c:	01013403          	ld	s0,16(sp)
    80003240:	00813483          	ld	s1,8(sp)
    80003244:	02010113          	addi	sp,sp,32
    80003248:	00008067          	ret

000000008000324c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    8000324c:	ff010113          	addi	sp,sp,-16
    80003250:	00813423          	sd	s0,8(sp)
    80003254:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80003258:	04050663          	beqz	a0,800032a4 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    8000325c:	00053783          	ld	a5,0(a0)
    80003260:	04078663          	beqz	a5,800032ac <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80003264:	01053703          	ld	a4,16(a0)
    80003268:	00e506b3          	add	a3,a0,a4
    8000326c:	00d78a63          	beq	a5,a3,80003280 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
    80003270:	00000513          	li	a0,0
}
    80003274:	00813403          	ld	s0,8(sp)
    80003278:	01010113          	addi	sp,sp,16
    8000327c:	00008067          	ret
        curr->size += curr->next->size;
    80003280:	0107b683          	ld	a3,16(a5)
    80003284:	00d70733          	add	a4,a4,a3
    80003288:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    8000328c:	0007b783          	ld	a5,0(a5)
    80003290:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80003294:	00078463          	beqz	a5,8000329c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80003298:	00a7b423          	sd	a0,8(a5)
        return 1; // success status
    8000329c:	00100513          	li	a0,1
    800032a0:	fd5ff06f          	j	80003274 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (!curr) return 0;
    800032a4:	00000513          	li	a0,0
    800032a8:	fcdff06f          	j	80003274 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    800032ac:	00000513          	li	a0,0
    800032b0:	fc5ff06f          	j	80003274 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

00000000800032b4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    800032b4:	14050863          	beqz	a0,80003404 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    800032b8:	0000a797          	auipc	a5,0xa
    800032bc:	ae87b783          	ld	a5,-1304(a5) # 8000cda0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800032c0:	0007b783          	ld	a5,0(a5)
    800032c4:	14a7e463          	bltu	a5,a0,8000340c <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    800032c8:	0000a797          	auipc	a5,0xa
    800032cc:	aa07b783          	ld	a5,-1376(a5) # 8000cd68 <_GLOBAL_OFFSET_TABLE_+0x20>
    800032d0:	0007b783          	ld	a5,0(a5)
    800032d4:	14f56063          	bltu	a0,a5,80003414 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
int MemoryAllocator::mem_free(void* addr) {
    800032d8:	fe010113          	addi	sp,sp,-32
    800032dc:	00113c23          	sd	ra,24(sp)
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00913423          	sd	s1,8(sp)
    800032e8:	01213023          	sd	s2,0(sp)
    800032ec:	02010413          	addi	s0,sp,32
    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    800032f0:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    800032f4:	0000a797          	auipc	a5,0xa
    800032f8:	bcc7b783          	ld	a5,-1076(a5) # 8000cec0 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    800032fc:	00078863          	beqz	a5,8000330c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80003300:	0097f663          	bgeu	a5,s1,8000330c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80003304:	0007b783          	ld	a5,0(a5)
    80003308:	ff5ff06f          	j	800032fc <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    if (block != tmp || !tmp) return -1;
    8000330c:	10979863          	bne	a5,s1,8000341c <_ZN15MemoryAllocator8mem_freeEPv+0x168>
    80003310:	10078a63          	beqz	a5,80003424 <_ZN15MemoryAllocator8mem_freeEPv+0x170>
    if (tmp->prev) tmp->prev->next = tmp->next;
    80003314:	0087b703          	ld	a4,8(a5)
    80003318:	06070c63          	beqz	a4,80003390 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    8000331c:	0007b683          	ld	a3,0(a5)
    80003320:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    80003324:	0007b703          	ld	a4,0(a5)
    80003328:	00070663          	beqz	a4,80003334 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
    8000332c:	0087b783          	ld	a5,8(a5)
    80003330:	00f73423          	sd	a5,8(a4)
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80003334:	0000a797          	auipc	a5,0xa
    80003338:	b847b783          	ld	a5,-1148(a5) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    8000333c:	06078263          	beqz	a5,800033a0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    80003340:	06f4e063          	bltu	s1,a5,800033a0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    else for (tmp = free_mem_head; tmp->next && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    80003344:	00078913          	mv	s2,a5
    80003348:	0007b783          	ld	a5,0(a5)
    8000334c:	00078463          	beqz	a5,80003354 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80003350:	fe97eae3          	bltu	a5,s1,80003344 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    if (tmp == nullptr) {
    80003354:	04090663          	beqz	s2,800033a0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        block->next = tmp->next;
    80003358:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    8000335c:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80003360:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80003364:	fe853783          	ld	a5,-24(a0)
    80003368:	00078463          	beqz	a5,80003370 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    8000336c:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80003370:	00048513          	mv	a0,s1
    80003374:	00000097          	auipc	ra,0x0
    80003378:	ed8080e7          	jalr	-296(ra) # 8000324c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    8000337c:	00090513          	mv	a0,s2
    80003380:	00000097          	auipc	ra,0x0
    80003384:	ecc080e7          	jalr	-308(ra) # 8000324c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80003388:	00000513          	li	a0,0
    8000338c:	0580006f          	j	800033e4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    else used_mem_head = tmp->next;
    80003390:	0007b703          	ld	a4,0(a5)
    80003394:	0000a697          	auipc	a3,0xa
    80003398:	b2e6b623          	sd	a4,-1236(a3) # 8000cec0 <_ZN15MemoryAllocator13used_mem_headE>
    8000339c:	f89ff06f          	j	80003324 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
        block -> prev = nullptr;
    800033a0:	fe053823          	sd	zero,-16(a0)
        if (free_mem_head) {
    800033a4:	0000a797          	auipc	a5,0xa
    800033a8:	b147b783          	ld	a5,-1260(a5) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    800033ac:	04078863          	beqz	a5,800033fc <_ZN15MemoryAllocator8mem_freeEPv+0x148>
            free_mem_head->prev = block;
    800033b0:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    800033b4:	fef53423          	sd	a5,-24(a0)
            free_mem_head = block;
    800033b8:	0000a797          	auipc	a5,0xa
    800033bc:	b097b023          	sd	s1,-1280(a5) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
            tryToJoin(block);
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	e88080e7          	jalr	-376(ra) # 8000324c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    800033cc:	0000a797          	auipc	a5,0xa
    800033d0:	ae97b623          	sd	s1,-1300(a5) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    800033d4:	00048513          	mv	a0,s1
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	e74080e7          	jalr	-396(ra) # 8000324c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    800033e0:	00000513          	li	a0,0
}
    800033e4:	01813083          	ld	ra,24(sp)
    800033e8:	01013403          	ld	s0,16(sp)
    800033ec:	00813483          	ld	s1,8(sp)
    800033f0:	00013903          	ld	s2,0(sp)
    800033f4:	02010113          	addi	sp,sp,32
    800033f8:	00008067          	ret
        else block -> next = nullptr;
    800033fc:	fe053423          	sd	zero,-24(a0)
    80003400:	fcdff06f          	j	800033cc <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80003404:	fff00513          	li	a0,-1
    80003408:	00008067          	ret
    8000340c:	fff00513          	li	a0,-1
    80003410:	00008067          	ret
    80003414:	fff00513          	li	a0,-1
}
    80003418:	00008067          	ret
    if (block != tmp || !tmp) return -1;
    8000341c:	fff00513          	li	a0,-1
    80003420:	fc5ff06f          	j	800033e4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80003424:	fff00513          	li	a0,-1
    80003428:	fbdff06f          	j	800033e4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>

000000008000342c <_ZN15MemoryAllocator5printEv>:

extern void printInteger(uint64);


void MemoryAllocator::print() {
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00113c23          	sd	ra,24(sp)
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	02010413          	addi	s0,sp,32
    __putc('\n');
    80003440:	00a00513          	li	a0,10
    80003444:	00006097          	auipc	ra,0x6
    80003448:	d28080e7          	jalr	-728(ra) # 8000916c <__putc>
    __putc('M');
    8000344c:	04d00513          	li	a0,77
    80003450:	00006097          	auipc	ra,0x6
    80003454:	d1c080e7          	jalr	-740(ra) # 8000916c <__putc>
    __putc(':');
    80003458:	03a00513          	li	a0,58
    8000345c:	00006097          	auipc	ra,0x6
    80003460:	d10080e7          	jalr	-752(ra) # 8000916c <__putc>
    __putc(' ');
    80003464:	02000513          	li	a0,32
    80003468:	00006097          	auipc	ra,0x6
    8000346c:	d04080e7          	jalr	-764(ra) # 8000916c <__putc>
    for (MemoryBlock* tmp = free_mem_head; tmp; tmp = tmp -> next) {
    80003470:	0000a497          	auipc	s1,0xa
    80003474:	a484b483          	ld	s1,-1464(s1) # 8000ceb8 <_ZN15MemoryAllocator13free_mem_headE>
    80003478:	04048463          	beqz	s1,800034c0 <_ZN15MemoryAllocator5printEv+0x94>
        printInteger(tmp -> size);
    8000347c:	0104b503          	ld	a0,16(s1)
    80003480:	00000097          	auipc	ra,0x0
    80003484:	100080e7          	jalr	256(ra) # 80003580 <_Z12printIntegerm>
        __putc(' ');
    80003488:	02000513          	li	a0,32
    8000348c:	00006097          	auipc	ra,0x6
    80003490:	ce0080e7          	jalr	-800(ra) # 8000916c <__putc>
        printInteger((uint64)tmp);
    80003494:	00048513          	mv	a0,s1
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	0e8080e7          	jalr	232(ra) # 80003580 <_Z12printIntegerm>
        __putc(' ');
    800034a0:	02000513          	li	a0,32
    800034a4:	00006097          	auipc	ra,0x6
    800034a8:	cc8080e7          	jalr	-824(ra) # 8000916c <__putc>
        __putc('f');
    800034ac:	06600513          	li	a0,102
    800034b0:	00006097          	auipc	ra,0x6
    800034b4:	cbc080e7          	jalr	-836(ra) # 8000916c <__putc>
    for (MemoryBlock* tmp = free_mem_head; tmp; tmp = tmp -> next) {
    800034b8:	0004b483          	ld	s1,0(s1)
    800034bc:	fbdff06f          	j	80003478 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    800034c0:	00900513          	li	a0,9
    800034c4:	00006097          	auipc	ra,0x6
    800034c8:	ca8080e7          	jalr	-856(ra) # 8000916c <__putc>
    for (MemoryBlock* tmp = used_mem_head; tmp; tmp = tmp -> next) {
    800034cc:	0000a497          	auipc	s1,0xa
    800034d0:	9f44b483          	ld	s1,-1548(s1) # 8000cec0 <_ZN15MemoryAllocator13used_mem_headE>
    800034d4:	04048463          	beqz	s1,8000351c <_ZN15MemoryAllocator5printEv+0xf0>
        printInteger(tmp -> size);
    800034d8:	0104b503          	ld	a0,16(s1)
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	0a4080e7          	jalr	164(ra) # 80003580 <_Z12printIntegerm>
        __putc(' ');
    800034e4:	02000513          	li	a0,32
    800034e8:	00006097          	auipc	ra,0x6
    800034ec:	c84080e7          	jalr	-892(ra) # 8000916c <__putc>
        printInteger((uint64)tmp);
    800034f0:	00048513          	mv	a0,s1
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	08c080e7          	jalr	140(ra) # 80003580 <_Z12printIntegerm>
        __putc(' ');
    800034fc:	02000513          	li	a0,32
    80003500:	00006097          	auipc	ra,0x6
    80003504:	c6c080e7          	jalr	-916(ra) # 8000916c <__putc>
        __putc('u');
    80003508:	07500513          	li	a0,117
    8000350c:	00006097          	auipc	ra,0x6
    80003510:	c60080e7          	jalr	-928(ra) # 8000916c <__putc>
    for (MemoryBlock* tmp = used_mem_head; tmp; tmp = tmp -> next) {
    80003514:	0004b483          	ld	s1,0(s1)
    80003518:	fbdff06f          	j	800034d4 <_ZN15MemoryAllocator5printEv+0xa8>
    }
}
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret

0000000080003530 <_Z13myPrintStringPKc>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void myPrintString(char const* string) {
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00113c23          	sd	ra,24(sp)
    80003538:	00813823          	sd	s0,16(sp)
    8000353c:	00913423          	sd	s1,8(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80003548:	0004c503          	lbu	a0,0(s1)
    8000354c:	00050a63          	beqz	a0,80003560 <_Z13myPrintStringPKc+0x30>
        putc(*string);
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	12c080e7          	jalr	300(ra) # 8000167c <_Z4putcc>
        string++;
    80003558:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    8000355c:	fedff06f          	j	80003548 <_Z13myPrintStringPKc+0x18>
    }
    putc('\n'); // delete later
    80003560:	00a00513          	li	a0,10
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	118080e7          	jalr	280(ra) # 8000167c <_Z4putcc>
}
    8000356c:	01813083          	ld	ra,24(sp)
    80003570:	01013403          	ld	s0,16(sp)
    80003574:	00813483          	ld	s1,8(sp)
    80003578:	02010113          	addi	sp,sp,32
    8000357c:	00008067          	ret

0000000080003580 <_Z12printIntegerm>:

void printInteger(uint64 num) {
    80003580:	fd010113          	addi	sp,sp,-48
    80003584:	02113423          	sd	ra,40(sp)
    80003588:	02813023          	sd	s0,32(sp)
    8000358c:	00913c23          	sd	s1,24(sp)
    80003590:	01213823          	sd	s2,16(sp)
    80003594:	01313423          	sd	s3,8(sp)
    80003598:	03010413          	addi	s0,sp,48
    8000359c:	00050913          	mv	s2,a0
    __putc('\n');
    800035a0:	00a00513          	li	a0,10
    800035a4:	00006097          	auipc	ra,0x6
    800035a8:	bc8080e7          	jalr	-1080(ra) # 8000916c <__putc>
    if (!num) __putc('0');
    800035ac:	00090863          	beqz	s2,800035bc <_Z12printIntegerm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    800035b0:	00000993          	li	s3,0
    800035b4:	00000493          	li	s1,0
    800035b8:	01c0006f          	j	800035d4 <_Z12printIntegerm+0x54>
    if (!num) __putc('0');
    800035bc:	03000513          	li	a0,48
    800035c0:	00006097          	auipc	ra,0x6
    800035c4:	bac080e7          	jalr	-1108(ra) # 8000916c <__putc>
    800035c8:	fe9ff06f          	j	800035b0 <_Z12printIntegerm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    800035cc:	00a00793          	li	a5,10
    800035d0:	02f95933          	divu	s2,s2,a5
    while (num) {
    800035d4:	02090463          	beqz	s2,800035fc <_Z12printIntegerm+0x7c>
        num2 *= 10;
    800035d8:	00249793          	slli	a5,s1,0x2
    800035dc:	009784b3          	add	s1,a5,s1
    800035e0:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    800035e4:	00a00493          	li	s1,10
    800035e8:	029974b3          	remu	s1,s2,s1
    800035ec:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    800035f0:	fc049ee3          	bnez	s1,800035cc <_Z12printIntegerm+0x4c>
    800035f4:	00198993          	addi	s3,s3,1
    800035f8:	fd5ff06f          	j	800035cc <_Z12printIntegerm+0x4c>
    }
    while (num2) {
    800035fc:	02048063          	beqz	s1,8000361c <_Z12printIntegerm+0x9c>
        __putc(num2 % 10 + '0');
    80003600:	00a00913          	li	s2,10
    80003604:	0324f533          	remu	a0,s1,s2
    80003608:	03050513          	addi	a0,a0,48
    8000360c:	00006097          	auipc	ra,0x6
    80003610:	b60080e7          	jalr	-1184(ra) # 8000916c <__putc>
        num2 /= 10;
    80003614:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80003618:	fe5ff06f          	j	800035fc <_Z12printIntegerm+0x7c>
    }
    while (zero_count--) __putc('0');
    8000361c:	fff98493          	addi	s1,s3,-1
    80003620:	00098c63          	beqz	s3,80003638 <_Z12printIntegerm+0xb8>
    80003624:	03000513          	li	a0,48
    80003628:	00006097          	auipc	ra,0x6
    8000362c:	b44080e7          	jalr	-1212(ra) # 8000916c <__putc>
    80003630:	00048993          	mv	s3,s1
    80003634:	fe9ff06f          	j	8000361c <_Z12printIntegerm+0x9c>
    80003638:	02813083          	ld	ra,40(sp)
    8000363c:	02013403          	ld	s0,32(sp)
    80003640:	01813483          	ld	s1,24(sp)
    80003644:	01013903          	ld	s2,16(sp)
    80003648:	00813983          	ld	s3,8(sp)
    8000364c:	03010113          	addi	sp,sp,48
    80003650:	00008067          	ret

0000000080003654 <_ZN3TCB7wrapperEv>:
    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return 0;
}

void TCB::wrapper() {
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    // came from supervisor trap (s mode)
    if ( running->routine ) {
    80003664:	0000a797          	auipc	a5,0xa
    80003668:	86c7b783          	ld	a5,-1940(a5) # 8000ced0 <_ZN3TCB7runningE>
    8000366c:	0307b783          	ld	a5,48(a5)
    80003670:	02078063          	beqz	a5,80003690 <_ZN3TCB7wrapperEv+0x3c>
        RISCV::popSppSpie();
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	5b0080e7          	jalr	1456(ra) # 80002c24 <_ZN5RISCV10popSppSpieEv>
        running->routine(running->args);
    8000367c:	0000a797          	auipc	a5,0xa
    80003680:	8547b783          	ld	a5,-1964(a5) # 8000ced0 <_ZN3TCB7runningE>
    80003684:	0307b703          	ld	a4,48(a5)
    80003688:	0387b503          	ld	a0,56(a5)
    8000368c:	000700e7          	jalr	a4
        // in user mode IF not char-handler
    }

    ::thread_exit();
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	cf4080e7          	jalr	-780(ra) # 80001384 <_Z11thread_exitv>
    // no return address from wrapper
}
    80003698:	00813083          	ld	ra,8(sp)
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    800036a8:	ff010113          	addi	sp,sp,-16
    800036ac:	00813423          	sd	s0,8(sp)
    800036b0:	01010413          	addi	s0,sp,16
    800036b4:	00073303          	ld	t1,0(a4)
    800036b8:	00873883          	ld	a7,8(a4)
    800036bc:	01073803          	ld	a6,16(a4)
    800036c0:	01873783          	ld	a5,24(a4)
    800036c4:	04653423          	sd	t1,72(a0)
    800036c8:	05153823          	sd	a7,80(a0)
    800036cc:	05053c23          	sd	a6,88(a0)
    800036d0:	06f53023          	sd	a5,96(a0)
    id = id_count++;
    800036d4:	00009717          	auipc	a4,0x9
    800036d8:	7fc70713          	addi	a4,a4,2044 # 8000ced0 <_ZN3TCB7runningE>
    800036dc:	00872783          	lw	a5,8(a4)
    800036e0:	0017881b          	addiw	a6,a5,1
    800036e4:	01072423          	sw	a6,8(a4)
    800036e8:	00f52023          	sw	a5,0(a0)
    routine = fun;
    800036ec:	02b53823          	sd	a1,48(a0)
    this->args = args;
    800036f0:	02c53c23          	sd	a2,56(a0)
    this->stack = (uint64*)stack; // stack start address (allocated)
    800036f4:	04d53023          	sd	a3,64(a0)
    this->current_state = RUNNABLE;
    800036f8:	06052423          	sw	zero,104(a0)
    this->next_ready = nullptr;
    800036fc:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    80003700:	00053823          	sd	zero,16(a0)
    this->time_on_sem = 0;
    80003704:	00053c23          	sd	zero,24(a0)
    this->sleeping_time = 0;
    80003708:	02053023          	sd	zero,32(a0)
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
    8000370c:	00200793          	li	a5,2
    80003710:	02f53423          	sd	a5,40(a0)
}
    80003714:	00813403          	ld	s0,8(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	01213023          	sd	s2,0(sp)
    80003734:	02010413          	addi	s0,sp,32
    80003738:	00050493          	mv	s1,a0
    8000373c:	00058913          	mv	s2,a1
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	8c0080e7          	jalr	-1856(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    80003748:	04890593          	addi	a1,s2,72
    8000374c:	04848513          	addi	a0,s1,72
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	ac0080e7          	jalr	-1344(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	928080e7          	jalr	-1752(ra) # 80001080 <_ZN5RISCV8pop_regsEv>
}
    80003760:	01813083          	ld	ra,24(sp)
    80003764:	01013403          	ld	s0,16(sp)
    80003768:	00813483          	ld	s1,8(sp)
    8000376c:	00013903          	ld	s2,0(sp)
    80003770:	02010113          	addi	sp,sp,32
    80003774:	00008067          	ret

0000000080003778 <_ZN3TCBnwEm>:
    running = Scheduler::get();

    yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    80003778:	ff010113          	addi	sp,sp,-16
    8000377c:	00113423          	sd	ra,8(sp)
    80003780:	00813023          	sd	s0,0(sp)
    80003784:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80003788:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    8000378c:	00655513          	srli	a0,a0,0x6
    80003790:	00000097          	auipc	ra,0x0
    80003794:	8e4080e7          	jalr	-1820(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003798:	00813083          	ld	ra,8(sp)
    8000379c:	00013403          	ld	s0,0(sp)
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret

00000000800037a8 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    800037a8:	f6010113          	addi	sp,sp,-160
    800037ac:	08113c23          	sd	ra,152(sp)
    800037b0:	08813823          	sd	s0,144(sp)
    800037b4:	08913423          	sd	s1,136(sp)
    800037b8:	09213023          	sd	s2,128(sp)
    800037bc:	07313c23          	sd	s3,120(sp)
    800037c0:	07413823          	sd	s4,112(sp)
    800037c4:	07513423          	sd	s5,104(sp)
    800037c8:	0a010413          	addi	s0,sp,160
    800037cc:	00050a13          	mv	s4,a0
    800037d0:	00058493          	mv	s1,a1
    800037d4:	00060a93          	mv	s5,a2
    800037d8:	00068913          	mv	s2,a3
    Context context = {
    800037dc:	fa043823          	sd	zero,-80(s0)
    800037e0:	fa043c23          	sd	zero,-72(s0)
    800037e4:	00000797          	auipc	a5,0x0
    800037e8:	e7078793          	addi	a5,a5,-400 # 80003654 <_ZN3TCB7wrapperEv>
    800037ec:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800037f0:	0a058863          	beqz	a1,800038a0 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xf8>
    800037f4:	000017b7          	lui	a5,0x1
    800037f8:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800037fc:	00f687b3          	add	a5,a3,a5
    *handle = new TCB (routine, args, stack_space, context);
    80003800:	fa043703          	ld	a4,-96(s0)
    80003804:	f8e43023          	sd	a4,-128(s0)
    80003808:	f8f43423          	sd	a5,-120(s0)
    8000380c:	fb043783          	ld	a5,-80(s0)
    80003810:	f8f43823          	sd	a5,-112(s0)
    80003814:	fb843783          	ld	a5,-72(s0)
    80003818:	f8f43c23          	sd	a5,-104(s0)
    8000381c:	07000513          	li	a0,112
    80003820:	00000097          	auipc	ra,0x0
    80003824:	f58080e7          	jalr	-168(ra) # 80003778 <_ZN3TCBnwEm>
    80003828:	00050993          	mv	s3,a0
    8000382c:	f8043783          	ld	a5,-128(s0)
    80003830:	f6f43023          	sd	a5,-160(s0)
    80003834:	f8843783          	ld	a5,-120(s0)
    80003838:	f6f43423          	sd	a5,-152(s0)
    8000383c:	f9043783          	ld	a5,-112(s0)
    80003840:	f6f43823          	sd	a5,-144(s0)
    80003844:	f9843783          	ld	a5,-104(s0)
    80003848:	f6f43c23          	sd	a5,-136(s0)
    8000384c:	f6040713          	addi	a4,s0,-160
    80003850:	00090693          	mv	a3,s2
    80003854:	000a8613          	mv	a2,s5
    80003858:	00048593          	mv	a1,s1
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	e4c080e7          	jalr	-436(ra) # 800036a8 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80003864:	013a3023          	sd	s3,0(s4)
    if (routine) Scheduler::put(*handle);
    80003868:	00048863          	beqz	s1,80003878 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xd0>
    8000386c:	00098513          	mv	a0,s3
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	420080e7          	jalr	1056(ra) # 80001c90 <_ZN9Scheduler3putEP3TCB>
}
    80003878:	00000513          	li	a0,0
    8000387c:	09813083          	ld	ra,152(sp)
    80003880:	09013403          	ld	s0,144(sp)
    80003884:	08813483          	ld	s1,136(sp)
    80003888:	08013903          	ld	s2,128(sp)
    8000388c:	07813983          	ld	s3,120(sp)
    80003890:	07013a03          	ld	s4,112(sp)
    80003894:	06813a83          	ld	s5,104(sp)
    80003898:	0a010113          	addi	sp,sp,160
    8000389c:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800038a0:	00000793          	li	a5,0
    800038a4:	f5dff06f          	j	80003800 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x58>

00000000800038a8 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    800038a8:	ff010113          	addi	sp,sp,-16
    800038ac:	00113423          	sd	ra,8(sp)
    800038b0:	00813023          	sd	s0,0(sp)
    800038b4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	9fc080e7          	jalr	-1540(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800038c0:	00813083          	ld	ra,8(sp)
    800038c4:	00013403          	ld	s0,0(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813423          	sd	s0,8(sp)
    800038d8:	01010413          	addi	s0,sp,16
    return running->current_state == RUNNABLE; }
    800038dc:	00009797          	auipc	a5,0x9
    800038e0:	5f47b783          	ld	a5,1524(a5) # 8000ced0 <_ZN3TCB7runningE>
    800038e4:	0687a503          	lw	a0,104(a5)
    800038e8:	00153513          	seqz	a0,a0
    800038ec:	00813403          	ld	s0,8(sp)
    800038f0:	01010113          	addi	sp,sp,16
    800038f4:	00008067          	ret

00000000800038f8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	01213023          	sd	s2,0(sp)
    8000390c:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    80003910:	00009917          	auipc	s2,0x9
    80003914:	5c093903          	ld	s2,1472(s2) # 8000ced0 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003918:	00000097          	auipc	ra,0x0
    8000391c:	fb8080e7          	jalr	-72(ra) # 800038d0 <_ZN3TCB10isRunnableEv>
    80003920:	04051c63          	bnez	a0,80003978 <_ZN3TCB8dispatchEv+0x80>
    static bool isFinished() {return TCB::running->current_state == state::FINISHED;}
    80003924:	00009797          	auipc	a5,0x9
    80003928:	5ac7b783          	ld	a5,1452(a5) # 8000ced0 <_ZN3TCB7runningE>
    8000392c:	0687a683          	lw	a3,104(a5)
    if ( isFinished() ) {
    80003930:	00300713          	li	a4,3
    80003934:	04e68a63          	beq	a3,a4,80003988 <_ZN3TCB8dispatchEv+0x90>
    time_slice_count = 0;
    80003938:	00009497          	auipc	s1,0x9
    8000393c:	59848493          	addi	s1,s1,1432 # 8000ced0 <_ZN3TCB7runningE>
    80003940:	0004b823          	sd	zero,16(s1)
    running = Scheduler::get();
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	2fc080e7          	jalr	764(ra) # 80001c40 <_ZN9Scheduler3getEv>
    8000394c:	00050593          	mv	a1,a0
    80003950:	00a4b023          	sd	a0,0(s1)
    yield(oldRunning, running);
    80003954:	00090513          	mv	a0,s2
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	dc8080e7          	jalr	-568(ra) # 80003720 <_ZN3TCB5yieldEPS_S0_>
}
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	00013903          	ld	s2,0(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003978:	00090513          	mv	a0,s2
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	314080e7          	jalr	788(ra) # 80001c90 <_ZN9Scheduler3putEP3TCB>
    80003984:	fa1ff06f          	j	80003924 <_ZN3TCB8dispatchEv+0x2c>
        MemoryAllocator::mem_free(TCB::running->stack);
    80003988:	0407b503          	ld	a0,64(a5)
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	928080e7          	jalr	-1752(ra) # 800032b4 <_ZN15MemoryAllocator8mem_freeEPv>
    80003994:	fa5ff06f          	j	80003938 <_ZN3TCB8dispatchEv+0x40>

0000000080003998 <_ZN3TCB11_threadExitEv>:

int TCB::_threadExit() {
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00113423          	sd	ra,8(sp)
    800039a0:	00813023          	sd	s0,0(sp)
    800039a4:	01010413          	addi	s0,sp,16
    void finish() { current_state = state::FINISHED; }
    800039a8:	00009797          	auipc	a5,0x9
    800039ac:	5287b783          	ld	a5,1320(a5) # 8000ced0 <_ZN3TCB7runningE>
    800039b0:	00300713          	li	a4,3
    800039b4:	06e7a423          	sw	a4,104(a5)
    TCB::running -> finish();

    // check if semaphore signal needed ?
    // don't put in Scheduler -> call yield only

    thread_dispatch();
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	a18080e7          	jalr	-1512(ra) # 800013d0 <_Z15thread_dispatchv>

    return 0;
}
    800039c0:	00000513          	li	a0,0
    800039c4:	00813083          	ld	ra,8(sp)
    800039c8:	00013403          	ld	s0,0(sp)
    800039cc:	01010113          	addi	sp,sp,16
    800039d0:	00008067          	ret

00000000800039d4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800039d4:	fe010113          	addi	sp,sp,-32
    800039d8:	00113c23          	sd	ra,24(sp)
    800039dc:	00813823          	sd	s0,16(sp)
    800039e0:	00913423          	sd	s1,8(sp)
    800039e4:	01213023          	sd	s2,0(sp)
    800039e8:	02010413          	addi	s0,sp,32
    800039ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800039f0:	00000913          	li	s2,0
    800039f4:	00c0006f          	j	80003a00 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	9d8080e7          	jalr	-1576(ra) # 800013d0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	c30080e7          	jalr	-976(ra) # 80001630 <_Z4getcv>
    80003a08:	0005059b          	sext.w	a1,a0
    80003a0c:	01b00793          	li	a5,27
    80003a10:	02f58a63          	beq	a1,a5,80003a44 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003a14:	0084b503          	ld	a0,8(s1)
    80003a18:	00003097          	auipc	ra,0x3
    80003a1c:	414080e7          	jalr	1044(ra) # 80006e2c <_ZN6Buffer3putEi>
        i++;
    80003a20:	0019071b          	addiw	a4,s2,1
    80003a24:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a28:	0004a683          	lw	a3,0(s1)
    80003a2c:	0026979b          	slliw	a5,a3,0x2
    80003a30:	00d787bb          	addw	a5,a5,a3
    80003a34:	0017979b          	slliw	a5,a5,0x1
    80003a38:	02f767bb          	remw	a5,a4,a5
    80003a3c:	fc0792e3          	bnez	a5,80003a00 <_ZL16producerKeyboardPv+0x2c>
    80003a40:	fb9ff06f          	j	800039f8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003a44:	00100793          	li	a5,1
    80003a48:	00009717          	auipc	a4,0x9
    80003a4c:	4af72023          	sw	a5,1184(a4) # 8000cee8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003a50:	02100593          	li	a1,33
    80003a54:	0084b503          	ld	a0,8(s1)
    80003a58:	00003097          	auipc	ra,0x3
    80003a5c:	3d4080e7          	jalr	980(ra) # 80006e2c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003a60:	0104b503          	ld	a0,16(s1)
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	b34080e7          	jalr	-1228(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	00013903          	ld	s2,0(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret

0000000080003a84 <_ZL8producerPv>:

static void producer(void *arg) {
    80003a84:	fe010113          	addi	sp,sp,-32
    80003a88:	00113c23          	sd	ra,24(sp)
    80003a8c:	00813823          	sd	s0,16(sp)
    80003a90:	00913423          	sd	s1,8(sp)
    80003a94:	01213023          	sd	s2,0(sp)
    80003a98:	02010413          	addi	s0,sp,32
    80003a9c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003aa0:	00000913          	li	s2,0
    80003aa4:	00c0006f          	j	80003ab0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	928080e7          	jalr	-1752(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003ab0:	00009797          	auipc	a5,0x9
    80003ab4:	4387a783          	lw	a5,1080(a5) # 8000cee8 <_ZL9threadEnd>
    80003ab8:	02079e63          	bnez	a5,80003af4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003abc:	0004a583          	lw	a1,0(s1)
    80003ac0:	0305859b          	addiw	a1,a1,48
    80003ac4:	0084b503          	ld	a0,8(s1)
    80003ac8:	00003097          	auipc	ra,0x3
    80003acc:	364080e7          	jalr	868(ra) # 80006e2c <_ZN6Buffer3putEi>
        i++;
    80003ad0:	0019071b          	addiw	a4,s2,1
    80003ad4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003ad8:	0004a683          	lw	a3,0(s1)
    80003adc:	0026979b          	slliw	a5,a3,0x2
    80003ae0:	00d787bb          	addw	a5,a5,a3
    80003ae4:	0017979b          	slliw	a5,a5,0x1
    80003ae8:	02f767bb          	remw	a5,a4,a5
    80003aec:	fc0792e3          	bnez	a5,80003ab0 <_ZL8producerPv+0x2c>
    80003af0:	fb9ff06f          	j	80003aa8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003af4:	0104b503          	ld	a0,16(s1)
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	aa0080e7          	jalr	-1376(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80003b00:	01813083          	ld	ra,24(sp)
    80003b04:	01013403          	ld	s0,16(sp)
    80003b08:	00813483          	ld	s1,8(sp)
    80003b0c:	00013903          	ld	s2,0(sp)
    80003b10:	02010113          	addi	sp,sp,32
    80003b14:	00008067          	ret

0000000080003b18 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003b18:	fd010113          	addi	sp,sp,-48
    80003b1c:	02113423          	sd	ra,40(sp)
    80003b20:	02813023          	sd	s0,32(sp)
    80003b24:	00913c23          	sd	s1,24(sp)
    80003b28:	01213823          	sd	s2,16(sp)
    80003b2c:	01313423          	sd	s3,8(sp)
    80003b30:	03010413          	addi	s0,sp,48
    80003b34:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003b38:	00000993          	li	s3,0
    80003b3c:	01c0006f          	j	80003b58 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	890080e7          	jalr	-1904(ra) # 800013d0 <_Z15thread_dispatchv>
    80003b48:	0500006f          	j	80003b98 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003b4c:	00a00513          	li	a0,10
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	b2c080e7          	jalr	-1236(ra) # 8000167c <_Z4putcc>
    while (!threadEnd) {
    80003b58:	00009797          	auipc	a5,0x9
    80003b5c:	3907a783          	lw	a5,912(a5) # 8000cee8 <_ZL9threadEnd>
    80003b60:	06079063          	bnez	a5,80003bc0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003b64:	00893503          	ld	a0,8(s2)
    80003b68:	00003097          	auipc	ra,0x3
    80003b6c:	354080e7          	jalr	852(ra) # 80006ebc <_ZN6Buffer3getEv>
        i++;
    80003b70:	0019849b          	addiw	s1,s3,1
    80003b74:	0004899b          	sext.w	s3,s1
        putc(key);
    80003b78:	0ff57513          	andi	a0,a0,255
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	b00080e7          	jalr	-1280(ra) # 8000167c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003b84:	00092703          	lw	a4,0(s2)
    80003b88:	0027179b          	slliw	a5,a4,0x2
    80003b8c:	00e787bb          	addw	a5,a5,a4
    80003b90:	02f4e7bb          	remw	a5,s1,a5
    80003b94:	fa0786e3          	beqz	a5,80003b40 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003b98:	05000793          	li	a5,80
    80003b9c:	02f4e4bb          	remw	s1,s1,a5
    80003ba0:	fa049ce3          	bnez	s1,80003b58 <_ZL8consumerPv+0x40>
    80003ba4:	fa9ff06f          	j	80003b4c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003ba8:	00893503          	ld	a0,8(s2)
    80003bac:	00003097          	auipc	ra,0x3
    80003bb0:	310080e7          	jalr	784(ra) # 80006ebc <_ZN6Buffer3getEv>
        putc(key);
    80003bb4:	0ff57513          	andi	a0,a0,255
    80003bb8:	ffffe097          	auipc	ra,0xffffe
    80003bbc:	ac4080e7          	jalr	-1340(ra) # 8000167c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003bc0:	00893503          	ld	a0,8(s2)
    80003bc4:	00003097          	auipc	ra,0x3
    80003bc8:	384080e7          	jalr	900(ra) # 80006f48 <_ZN6Buffer6getCntEv>
    80003bcc:	fca04ee3          	bgtz	a0,80003ba8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003bd0:	01093503          	ld	a0,16(s2)
    80003bd4:	ffffe097          	auipc	ra,0xffffe
    80003bd8:	9c4080e7          	jalr	-1596(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80003bdc:	02813083          	ld	ra,40(sp)
    80003be0:	02013403          	ld	s0,32(sp)
    80003be4:	01813483          	ld	s1,24(sp)
    80003be8:	01013903          	ld	s2,16(sp)
    80003bec:	00813983          	ld	s3,8(sp)
    80003bf0:	03010113          	addi	sp,sp,48
    80003bf4:	00008067          	ret

0000000080003bf8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003bf8:	f9010113          	addi	sp,sp,-112
    80003bfc:	06113423          	sd	ra,104(sp)
    80003c00:	06813023          	sd	s0,96(sp)
    80003c04:	04913c23          	sd	s1,88(sp)
    80003c08:	05213823          	sd	s2,80(sp)
    80003c0c:	05313423          	sd	s3,72(sp)
    80003c10:	05413023          	sd	s4,64(sp)
    80003c14:	03513c23          	sd	s5,56(sp)
    80003c18:	03613823          	sd	s6,48(sp)
    80003c1c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003c20:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c24:	00006517          	auipc	a0,0x6
    80003c28:	50c50513          	addi	a0,a0,1292 # 8000a130 <CONSOLE_STATUS+0x120>
    80003c2c:	00002097          	auipc	ra,0x2
    80003c30:	234080e7          	jalr	564(ra) # 80005e60 <_Z11printStringPKc>
    getString(input, 30);
    80003c34:	01e00593          	li	a1,30
    80003c38:	fa040493          	addi	s1,s0,-96
    80003c3c:	00048513          	mv	a0,s1
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	2a8080e7          	jalr	680(ra) # 80005ee8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	374080e7          	jalr	884(ra) # 80005fc0 <_Z11stringToIntPKc>
    80003c54:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003c58:	00006517          	auipc	a0,0x6
    80003c5c:	4f850513          	addi	a0,a0,1272 # 8000a150 <CONSOLE_STATUS+0x140>
    80003c60:	00002097          	auipc	ra,0x2
    80003c64:	200080e7          	jalr	512(ra) # 80005e60 <_Z11printStringPKc>
    getString(input, 30);
    80003c68:	01e00593          	li	a1,30
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	00002097          	auipc	ra,0x2
    80003c74:	278080e7          	jalr	632(ra) # 80005ee8 <_Z9getStringPci>
    n = stringToInt(input);
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	344080e7          	jalr	836(ra) # 80005fc0 <_Z11stringToIntPKc>
    80003c84:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003c88:	00006517          	auipc	a0,0x6
    80003c8c:	4e850513          	addi	a0,a0,1256 # 8000a170 <CONSOLE_STATUS+0x160>
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	1d0080e7          	jalr	464(ra) # 80005e60 <_Z11printStringPKc>
    80003c98:	00000613          	li	a2,0
    80003c9c:	00a00593          	li	a1,10
    80003ca0:	00090513          	mv	a0,s2
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	36c080e7          	jalr	876(ra) # 80006010 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003cac:	00006517          	auipc	a0,0x6
    80003cb0:	4dc50513          	addi	a0,a0,1244 # 8000a188 <CONSOLE_STATUS+0x178>
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	1ac080e7          	jalr	428(ra) # 80005e60 <_Z11printStringPKc>
    80003cbc:	00000613          	li	a2,0
    80003cc0:	00a00593          	li	a1,10
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	348080e7          	jalr	840(ra) # 80006010 <_Z8printIntiii>
    printString(".\n");
    80003cd0:	00006517          	auipc	a0,0x6
    80003cd4:	4d050513          	addi	a0,a0,1232 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	188080e7          	jalr	392(ra) # 80005e60 <_Z11printStringPKc>
    if(threadNum > n) {
    80003ce0:	0324c463          	blt	s1,s2,80003d08 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003ce4:	03205c63          	blez	s2,80003d1c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003ce8:	03800513          	li	a0,56
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	814080e7          	jalr	-2028(ra) # 80002500 <_Znwm>
    80003cf4:	00050a13          	mv	s4,a0
    80003cf8:	00048593          	mv	a1,s1
    80003cfc:	00003097          	auipc	ra,0x3
    80003d00:	094080e7          	jalr	148(ra) # 80006d90 <_ZN6BufferC1Ei>
    80003d04:	0300006f          	j	80003d34 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d08:	00006517          	auipc	a0,0x6
    80003d0c:	4a050513          	addi	a0,a0,1184 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003d10:	00002097          	auipc	ra,0x2
    80003d14:	150080e7          	jalr	336(ra) # 80005e60 <_Z11printStringPKc>
        return;
    80003d18:	0140006f          	j	80003d2c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d1c:	00006517          	auipc	a0,0x6
    80003d20:	4cc50513          	addi	a0,a0,1228 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	13c080e7          	jalr	316(ra) # 80005e60 <_Z11printStringPKc>
        return;
    80003d2c:	000b0113          	mv	sp,s6
    80003d30:	1500006f          	j	80003e80 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003d34:	00000593          	li	a1,0
    80003d38:	00009517          	auipc	a0,0x9
    80003d3c:	1b850513          	addi	a0,a0,440 # 8000cef0 <_ZL10waitForAll>
    80003d40:	ffffd097          	auipc	ra,0xffffd
    80003d44:	6cc080e7          	jalr	1740(ra) # 8000140c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003d48:	00391793          	slli	a5,s2,0x3
    80003d4c:	00f78793          	addi	a5,a5,15
    80003d50:	ff07f793          	andi	a5,a5,-16
    80003d54:	40f10133          	sub	sp,sp,a5
    80003d58:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003d5c:	0019071b          	addiw	a4,s2,1
    80003d60:	00171793          	slli	a5,a4,0x1
    80003d64:	00e787b3          	add	a5,a5,a4
    80003d68:	00379793          	slli	a5,a5,0x3
    80003d6c:	00f78793          	addi	a5,a5,15
    80003d70:	ff07f793          	andi	a5,a5,-16
    80003d74:	40f10133          	sub	sp,sp,a5
    80003d78:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003d7c:	00191613          	slli	a2,s2,0x1
    80003d80:	012607b3          	add	a5,a2,s2
    80003d84:	00379793          	slli	a5,a5,0x3
    80003d88:	00f987b3          	add	a5,s3,a5
    80003d8c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003d90:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003d94:	00009717          	auipc	a4,0x9
    80003d98:	15c73703          	ld	a4,348(a4) # 8000cef0 <_ZL10waitForAll>
    80003d9c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003da0:	00078613          	mv	a2,a5
    80003da4:	00000597          	auipc	a1,0x0
    80003da8:	d7458593          	addi	a1,a1,-652 # 80003b18 <_ZL8consumerPv>
    80003dac:	f9840513          	addi	a0,s0,-104
    80003db0:	ffffd097          	auipc	ra,0xffffd
    80003db4:	54c080e7          	jalr	1356(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003db8:	00000493          	li	s1,0
    80003dbc:	0280006f          	j	80003de4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003dc0:	00000597          	auipc	a1,0x0
    80003dc4:	c1458593          	addi	a1,a1,-1004 # 800039d4 <_ZL16producerKeyboardPv>
                      data + i);
    80003dc8:	00179613          	slli	a2,a5,0x1
    80003dcc:	00f60633          	add	a2,a2,a5
    80003dd0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003dd4:	00c98633          	add	a2,s3,a2
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	524080e7          	jalr	1316(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003de0:	0014849b          	addiw	s1,s1,1
    80003de4:	0524d263          	bge	s1,s2,80003e28 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003de8:	00149793          	slli	a5,s1,0x1
    80003dec:	009787b3          	add	a5,a5,s1
    80003df0:	00379793          	slli	a5,a5,0x3
    80003df4:	00f987b3          	add	a5,s3,a5
    80003df8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003dfc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003e00:	00009717          	auipc	a4,0x9
    80003e04:	0f073703          	ld	a4,240(a4) # 8000cef0 <_ZL10waitForAll>
    80003e08:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003e0c:	00048793          	mv	a5,s1
    80003e10:	00349513          	slli	a0,s1,0x3
    80003e14:	00aa8533          	add	a0,s5,a0
    80003e18:	fa9054e3          	blez	s1,80003dc0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003e1c:	00000597          	auipc	a1,0x0
    80003e20:	c6858593          	addi	a1,a1,-920 # 80003a84 <_ZL8producerPv>
    80003e24:	fa5ff06f          	j	80003dc8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003e28:	ffffd097          	auipc	ra,0xffffd
    80003e2c:	5a8080e7          	jalr	1448(ra) # 800013d0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003e30:	00000493          	li	s1,0
    80003e34:	00994e63          	blt	s2,s1,80003e50 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003e38:	00009517          	auipc	a0,0x9
    80003e3c:	0b853503          	ld	a0,184(a0) # 8000cef0 <_ZL10waitForAll>
    80003e40:	ffffd097          	auipc	ra,0xffffd
    80003e44:	674080e7          	jalr	1652(ra) # 800014b4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003e48:	0014849b          	addiw	s1,s1,1
    80003e4c:	fe9ff06f          	j	80003e34 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003e50:	00009517          	auipc	a0,0x9
    80003e54:	0a053503          	ld	a0,160(a0) # 8000cef0 <_ZL10waitForAll>
    80003e58:	ffffd097          	auipc	ra,0xffffd
    80003e5c:	604080e7          	jalr	1540(ra) # 8000145c <_Z9sem_closeP3Sem>
    delete buffer;
    80003e60:	000a0e63          	beqz	s4,80003e7c <_Z22producerConsumer_C_APIv+0x284>
    80003e64:	000a0513          	mv	a0,s4
    80003e68:	00003097          	auipc	ra,0x3
    80003e6c:	168080e7          	jalr	360(ra) # 80006fd0 <_ZN6BufferD1Ev>
    80003e70:	000a0513          	mv	a0,s4
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	704080e7          	jalr	1796(ra) # 80002578 <_ZdlPv>
    80003e7c:	000b0113          	mv	sp,s6

}
    80003e80:	f9040113          	addi	sp,s0,-112
    80003e84:	06813083          	ld	ra,104(sp)
    80003e88:	06013403          	ld	s0,96(sp)
    80003e8c:	05813483          	ld	s1,88(sp)
    80003e90:	05013903          	ld	s2,80(sp)
    80003e94:	04813983          	ld	s3,72(sp)
    80003e98:	04013a03          	ld	s4,64(sp)
    80003e9c:	03813a83          	ld	s5,56(sp)
    80003ea0:	03013b03          	ld	s6,48(sp)
    80003ea4:	07010113          	addi	sp,sp,112
    80003ea8:	00008067          	ret
    80003eac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003eb0:	000a0513          	mv	a0,s4
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	6c4080e7          	jalr	1732(ra) # 80002578 <_ZdlPv>
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	0000a097          	auipc	ra,0xa
    80003ec4:	148080e7          	jalr	328(ra) # 8000e008 <_Unwind_Resume>

0000000080003ec8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ec8:	fe010113          	addi	sp,sp,-32
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	00813823          	sd	s0,16(sp)
    80003ed4:	00913423          	sd	s1,8(sp)
    80003ed8:	01213023          	sd	s2,0(sp)
    80003edc:	02010413          	addi	s0,sp,32
    80003ee0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003ee4:	00100793          	li	a5,1
    80003ee8:	02a7f863          	bgeu	a5,a0,80003f18 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003eec:	00a00793          	li	a5,10
    80003ef0:	02f577b3          	remu	a5,a0,a5
    80003ef4:	02078e63          	beqz	a5,80003f30 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003ef8:	fff48513          	addi	a0,s1,-1
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	fcc080e7          	jalr	-52(ra) # 80003ec8 <_ZL9fibonaccim>
    80003f04:	00050913          	mv	s2,a0
    80003f08:	ffe48513          	addi	a0,s1,-2
    80003f0c:	00000097          	auipc	ra,0x0
    80003f10:	fbc080e7          	jalr	-68(ra) # 80003ec8 <_ZL9fibonaccim>
    80003f14:	00a90533          	add	a0,s2,a0
}
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	01013403          	ld	s0,16(sp)
    80003f20:	00813483          	ld	s1,8(sp)
    80003f24:	00013903          	ld	s2,0(sp)
    80003f28:	02010113          	addi	sp,sp,32
    80003f2c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	4a0080e7          	jalr	1184(ra) # 800013d0 <_Z15thread_dispatchv>
    80003f38:	fc1ff06f          	j	80003ef8 <_ZL9fibonaccim+0x30>

0000000080003f3c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003f3c:	fe010113          	addi	sp,sp,-32
    80003f40:	00113c23          	sd	ra,24(sp)
    80003f44:	00813823          	sd	s0,16(sp)
    80003f48:	00913423          	sd	s1,8(sp)
    80003f4c:	01213023          	sd	s2,0(sp)
    80003f50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f54:	00000913          	li	s2,0
    80003f58:	0380006f          	j	80003f90 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f5c:	ffffd097          	auipc	ra,0xffffd
    80003f60:	474080e7          	jalr	1140(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f64:	00148493          	addi	s1,s1,1
    80003f68:	000027b7          	lui	a5,0x2
    80003f6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f70:	0097ee63          	bltu	a5,s1,80003f8c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f74:	00000713          	li	a4,0
    80003f78:	000077b7          	lui	a5,0x7
    80003f7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f80:	fce7eee3          	bltu	a5,a4,80003f5c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003f84:	00170713          	addi	a4,a4,1
    80003f88:	ff1ff06f          	j	80003f78 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f8c:	00190913          	addi	s2,s2,1
    80003f90:	00900793          	li	a5,9
    80003f94:	0527e063          	bltu	a5,s2,80003fd4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f98:	00006517          	auipc	a0,0x6
    80003f9c:	28050513          	addi	a0,a0,640 # 8000a218 <CONSOLE_STATUS+0x208>
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	ec0080e7          	jalr	-320(ra) # 80005e60 <_Z11printStringPKc>
    80003fa8:	00000613          	li	a2,0
    80003fac:	00a00593          	li	a1,10
    80003fb0:	0009051b          	sext.w	a0,s2
    80003fb4:	00002097          	auipc	ra,0x2
    80003fb8:	05c080e7          	jalr	92(ra) # 80006010 <_Z8printIntiii>
    80003fbc:	00006517          	auipc	a0,0x6
    80003fc0:	4bc50513          	addi	a0,a0,1212 # 8000a478 <CONSOLE_STATUS+0x468>
    80003fc4:	00002097          	auipc	ra,0x2
    80003fc8:	e9c080e7          	jalr	-356(ra) # 80005e60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fcc:	00000493          	li	s1,0
    80003fd0:	f99ff06f          	j	80003f68 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003fd4:	00006517          	auipc	a0,0x6
    80003fd8:	24c50513          	addi	a0,a0,588 # 8000a220 <CONSOLE_STATUS+0x210>
    80003fdc:	00002097          	auipc	ra,0x2
    80003fe0:	e84080e7          	jalr	-380(ra) # 80005e60 <_Z11printStringPKc>
    finishedA = true;
    80003fe4:	00100793          	li	a5,1
    80003fe8:	00009717          	auipc	a4,0x9
    80003fec:	f0f70823          	sb	a5,-240(a4) # 8000cef8 <_ZL9finishedA>
}
    80003ff0:	01813083          	ld	ra,24(sp)
    80003ff4:	01013403          	ld	s0,16(sp)
    80003ff8:	00813483          	ld	s1,8(sp)
    80003ffc:	00013903          	ld	s2,0(sp)
    80004000:	02010113          	addi	sp,sp,32
    80004004:	00008067          	ret

0000000080004008 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	01213023          	sd	s2,0(sp)
    8000401c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004020:	00000913          	li	s2,0
    80004024:	0380006f          	j	8000405c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004028:	ffffd097          	auipc	ra,0xffffd
    8000402c:	3a8080e7          	jalr	936(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004030:	00148493          	addi	s1,s1,1
    80004034:	000027b7          	lui	a5,0x2
    80004038:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000403c:	0097ee63          	bltu	a5,s1,80004058 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004040:	00000713          	li	a4,0
    80004044:	000077b7          	lui	a5,0x7
    80004048:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000404c:	fce7eee3          	bltu	a5,a4,80004028 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004050:	00170713          	addi	a4,a4,1
    80004054:	ff1ff06f          	j	80004044 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004058:	00190913          	addi	s2,s2,1
    8000405c:	00f00793          	li	a5,15
    80004060:	0527e063          	bltu	a5,s2,800040a0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004064:	00006517          	auipc	a0,0x6
    80004068:	1cc50513          	addi	a0,a0,460 # 8000a230 <CONSOLE_STATUS+0x220>
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	df4080e7          	jalr	-524(ra) # 80005e60 <_Z11printStringPKc>
    80004074:	00000613          	li	a2,0
    80004078:	00a00593          	li	a1,10
    8000407c:	0009051b          	sext.w	a0,s2
    80004080:	00002097          	auipc	ra,0x2
    80004084:	f90080e7          	jalr	-112(ra) # 80006010 <_Z8printIntiii>
    80004088:	00006517          	auipc	a0,0x6
    8000408c:	3f050513          	addi	a0,a0,1008 # 8000a478 <CONSOLE_STATUS+0x468>
    80004090:	00002097          	auipc	ra,0x2
    80004094:	dd0080e7          	jalr	-560(ra) # 80005e60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004098:	00000493          	li	s1,0
    8000409c:	f99ff06f          	j	80004034 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800040a0:	00006517          	auipc	a0,0x6
    800040a4:	19850513          	addi	a0,a0,408 # 8000a238 <CONSOLE_STATUS+0x228>
    800040a8:	00002097          	auipc	ra,0x2
    800040ac:	db8080e7          	jalr	-584(ra) # 80005e60 <_Z11printStringPKc>
    finishedB = true;
    800040b0:	00100793          	li	a5,1
    800040b4:	00009717          	auipc	a4,0x9
    800040b8:	e4f702a3          	sb	a5,-443(a4) # 8000cef9 <_ZL9finishedB>
    thread_dispatch();
    800040bc:	ffffd097          	auipc	ra,0xffffd
    800040c0:	314080e7          	jalr	788(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800040c4:	01813083          	ld	ra,24(sp)
    800040c8:	01013403          	ld	s0,16(sp)
    800040cc:	00813483          	ld	s1,8(sp)
    800040d0:	00013903          	ld	s2,0(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret

00000000800040dc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	01213023          	sd	s2,0(sp)
    800040f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800040f4:	00000493          	li	s1,0
    800040f8:	0400006f          	j	80004138 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040fc:	00006517          	auipc	a0,0x6
    80004100:	14c50513          	addi	a0,a0,332 # 8000a248 <CONSOLE_STATUS+0x238>
    80004104:	00002097          	auipc	ra,0x2
    80004108:	d5c080e7          	jalr	-676(ra) # 80005e60 <_Z11printStringPKc>
    8000410c:	00000613          	li	a2,0
    80004110:	00a00593          	li	a1,10
    80004114:	00048513          	mv	a0,s1
    80004118:	00002097          	auipc	ra,0x2
    8000411c:	ef8080e7          	jalr	-264(ra) # 80006010 <_Z8printIntiii>
    80004120:	00006517          	auipc	a0,0x6
    80004124:	35850513          	addi	a0,a0,856 # 8000a478 <CONSOLE_STATUS+0x468>
    80004128:	00002097          	auipc	ra,0x2
    8000412c:	d38080e7          	jalr	-712(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004130:	0014849b          	addiw	s1,s1,1
    80004134:	0ff4f493          	andi	s1,s1,255
    80004138:	00200793          	li	a5,2
    8000413c:	fc97f0e3          	bgeu	a5,s1,800040fc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004140:	00006517          	auipc	a0,0x6
    80004144:	11050513          	addi	a0,a0,272 # 8000a250 <CONSOLE_STATUS+0x240>
    80004148:	00002097          	auipc	ra,0x2
    8000414c:	d18080e7          	jalr	-744(ra) # 80005e60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004150:	00700313          	li	t1,7
    thread_dispatch();
    80004154:	ffffd097          	auipc	ra,0xffffd
    80004158:	27c080e7          	jalr	636(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000415c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004160:	00006517          	auipc	a0,0x6
    80004164:	10050513          	addi	a0,a0,256 # 8000a260 <CONSOLE_STATUS+0x250>
    80004168:	00002097          	auipc	ra,0x2
    8000416c:	cf8080e7          	jalr	-776(ra) # 80005e60 <_Z11printStringPKc>
    80004170:	00000613          	li	a2,0
    80004174:	00a00593          	li	a1,10
    80004178:	0009051b          	sext.w	a0,s2
    8000417c:	00002097          	auipc	ra,0x2
    80004180:	e94080e7          	jalr	-364(ra) # 80006010 <_Z8printIntiii>
    80004184:	00006517          	auipc	a0,0x6
    80004188:	2f450513          	addi	a0,a0,756 # 8000a478 <CONSOLE_STATUS+0x468>
    8000418c:	00002097          	auipc	ra,0x2
    80004190:	cd4080e7          	jalr	-812(ra) # 80005e60 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004194:	00c00513          	li	a0,12
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	d30080e7          	jalr	-720(ra) # 80003ec8 <_ZL9fibonaccim>
    800041a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800041a4:	00006517          	auipc	a0,0x6
    800041a8:	0c450513          	addi	a0,a0,196 # 8000a268 <CONSOLE_STATUS+0x258>
    800041ac:	00002097          	auipc	ra,0x2
    800041b0:	cb4080e7          	jalr	-844(ra) # 80005e60 <_Z11printStringPKc>
    800041b4:	00000613          	li	a2,0
    800041b8:	00a00593          	li	a1,10
    800041bc:	0009051b          	sext.w	a0,s2
    800041c0:	00002097          	auipc	ra,0x2
    800041c4:	e50080e7          	jalr	-432(ra) # 80006010 <_Z8printIntiii>
    800041c8:	00006517          	auipc	a0,0x6
    800041cc:	2b050513          	addi	a0,a0,688 # 8000a478 <CONSOLE_STATUS+0x468>
    800041d0:	00002097          	auipc	ra,0x2
    800041d4:	c90080e7          	jalr	-880(ra) # 80005e60 <_Z11printStringPKc>
    800041d8:	0400006f          	j	80004218 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800041dc:	00006517          	auipc	a0,0x6
    800041e0:	06c50513          	addi	a0,a0,108 # 8000a248 <CONSOLE_STATUS+0x238>
    800041e4:	00002097          	auipc	ra,0x2
    800041e8:	c7c080e7          	jalr	-900(ra) # 80005e60 <_Z11printStringPKc>
    800041ec:	00000613          	li	a2,0
    800041f0:	00a00593          	li	a1,10
    800041f4:	00048513          	mv	a0,s1
    800041f8:	00002097          	auipc	ra,0x2
    800041fc:	e18080e7          	jalr	-488(ra) # 80006010 <_Z8printIntiii>
    80004200:	00006517          	auipc	a0,0x6
    80004204:	27850513          	addi	a0,a0,632 # 8000a478 <CONSOLE_STATUS+0x468>
    80004208:	00002097          	auipc	ra,0x2
    8000420c:	c58080e7          	jalr	-936(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004210:	0014849b          	addiw	s1,s1,1
    80004214:	0ff4f493          	andi	s1,s1,255
    80004218:	00500793          	li	a5,5
    8000421c:	fc97f0e3          	bgeu	a5,s1,800041dc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004220:	00006517          	auipc	a0,0x6
    80004224:	00050513          	mv	a0,a0
    80004228:	00002097          	auipc	ra,0x2
    8000422c:	c38080e7          	jalr	-968(ra) # 80005e60 <_Z11printStringPKc>
    finishedC = true;
    80004230:	00100793          	li	a5,1
    80004234:	00009717          	auipc	a4,0x9
    80004238:	ccf70323          	sb	a5,-826(a4) # 8000cefa <_ZL9finishedC>
    thread_dispatch();
    8000423c:	ffffd097          	auipc	ra,0xffffd
    80004240:	194080e7          	jalr	404(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	00013903          	ld	s2,0(sp)
    80004254:	02010113          	addi	sp,sp,32
    80004258:	00008067          	ret

000000008000425c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00113c23          	sd	ra,24(sp)
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	01213023          	sd	s2,0(sp)
    80004270:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004274:	00a00493          	li	s1,10
    80004278:	0400006f          	j	800042b8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000427c:	00006517          	auipc	a0,0x6
    80004280:	ffc50513          	addi	a0,a0,-4 # 8000a278 <CONSOLE_STATUS+0x268>
    80004284:	00002097          	auipc	ra,0x2
    80004288:	bdc080e7          	jalr	-1060(ra) # 80005e60 <_Z11printStringPKc>
    8000428c:	00000613          	li	a2,0
    80004290:	00a00593          	li	a1,10
    80004294:	00048513          	mv	a0,s1
    80004298:	00002097          	auipc	ra,0x2
    8000429c:	d78080e7          	jalr	-648(ra) # 80006010 <_Z8printIntiii>
    800042a0:	00006517          	auipc	a0,0x6
    800042a4:	1d850513          	addi	a0,a0,472 # 8000a478 <CONSOLE_STATUS+0x468>
    800042a8:	00002097          	auipc	ra,0x2
    800042ac:	bb8080e7          	jalr	-1096(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800042b0:	0014849b          	addiw	s1,s1,1
    800042b4:	0ff4f493          	andi	s1,s1,255
    800042b8:	00c00793          	li	a5,12
    800042bc:	fc97f0e3          	bgeu	a5,s1,8000427c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800042c0:	00006517          	auipc	a0,0x6
    800042c4:	fc050513          	addi	a0,a0,-64 # 8000a280 <CONSOLE_STATUS+0x270>
    800042c8:	00002097          	auipc	ra,0x2
    800042cc:	b98080e7          	jalr	-1128(ra) # 80005e60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800042d0:	00500313          	li	t1,5
    thread_dispatch();
    800042d4:	ffffd097          	auipc	ra,0xffffd
    800042d8:	0fc080e7          	jalr	252(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800042dc:	01000513          	li	a0,16
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	be8080e7          	jalr	-1048(ra) # 80003ec8 <_ZL9fibonaccim>
    800042e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800042ec:	00006517          	auipc	a0,0x6
    800042f0:	fa450513          	addi	a0,a0,-92 # 8000a290 <CONSOLE_STATUS+0x280>
    800042f4:	00002097          	auipc	ra,0x2
    800042f8:	b6c080e7          	jalr	-1172(ra) # 80005e60 <_Z11printStringPKc>
    800042fc:	00000613          	li	a2,0
    80004300:	00a00593          	li	a1,10
    80004304:	0009051b          	sext.w	a0,s2
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	d08080e7          	jalr	-760(ra) # 80006010 <_Z8printIntiii>
    80004310:	00006517          	auipc	a0,0x6
    80004314:	16850513          	addi	a0,a0,360 # 8000a478 <CONSOLE_STATUS+0x468>
    80004318:	00002097          	auipc	ra,0x2
    8000431c:	b48080e7          	jalr	-1208(ra) # 80005e60 <_Z11printStringPKc>
    80004320:	0400006f          	j	80004360 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004324:	00006517          	auipc	a0,0x6
    80004328:	f5450513          	addi	a0,a0,-172 # 8000a278 <CONSOLE_STATUS+0x268>
    8000432c:	00002097          	auipc	ra,0x2
    80004330:	b34080e7          	jalr	-1228(ra) # 80005e60 <_Z11printStringPKc>
    80004334:	00000613          	li	a2,0
    80004338:	00a00593          	li	a1,10
    8000433c:	00048513          	mv	a0,s1
    80004340:	00002097          	auipc	ra,0x2
    80004344:	cd0080e7          	jalr	-816(ra) # 80006010 <_Z8printIntiii>
    80004348:	00006517          	auipc	a0,0x6
    8000434c:	13050513          	addi	a0,a0,304 # 8000a478 <CONSOLE_STATUS+0x468>
    80004350:	00002097          	auipc	ra,0x2
    80004354:	b10080e7          	jalr	-1264(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004358:	0014849b          	addiw	s1,s1,1
    8000435c:	0ff4f493          	andi	s1,s1,255
    80004360:	00f00793          	li	a5,15
    80004364:	fc97f0e3          	bgeu	a5,s1,80004324 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004368:	00006517          	auipc	a0,0x6
    8000436c:	f3850513          	addi	a0,a0,-200 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004370:	00002097          	auipc	ra,0x2
    80004374:	af0080e7          	jalr	-1296(ra) # 80005e60 <_Z11printStringPKc>
    finishedD = true;
    80004378:	00100793          	li	a5,1
    8000437c:	00009717          	auipc	a4,0x9
    80004380:	b6f70fa3          	sb	a5,-1153(a4) # 8000cefb <_ZL9finishedD>
    thread_dispatch();
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	04c080e7          	jalr	76(ra) # 800013d0 <_Z15thread_dispatchv>
}
    8000438c:	01813083          	ld	ra,24(sp)
    80004390:	01013403          	ld	s0,16(sp)
    80004394:	00813483          	ld	s1,8(sp)
    80004398:	00013903          	ld	s2,0(sp)
    8000439c:	02010113          	addi	sp,sp,32
    800043a0:	00008067          	ret

00000000800043a4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800043a4:	fc010113          	addi	sp,sp,-64
    800043a8:	02113c23          	sd	ra,56(sp)
    800043ac:	02813823          	sd	s0,48(sp)
    800043b0:	02913423          	sd	s1,40(sp)
    800043b4:	03213023          	sd	s2,32(sp)
    800043b8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800043bc:	02000513          	li	a0,32
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	140080e7          	jalr	320(ra) # 80002500 <_Znwm>
    800043c8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	2c4080e7          	jalr	708(ra) # 80002690 <_ZN6ThreadC1Ev>
    800043d4:	00008797          	auipc	a5,0x8
    800043d8:	7dc78793          	addi	a5,a5,2012 # 8000cbb0 <_ZTV7WorkerA+0x10>
    800043dc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800043e0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800043e4:	00006517          	auipc	a0,0x6
    800043e8:	ecc50513          	addi	a0,a0,-308 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800043ec:	00002097          	auipc	ra,0x2
    800043f0:	a74080e7          	jalr	-1420(ra) # 80005e60 <_Z11printStringPKc>
    threads[1] = new WorkerB();
    800043f4:	02000513          	li	a0,32
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	108080e7          	jalr	264(ra) # 80002500 <_Znwm>
    80004400:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	28c080e7          	jalr	652(ra) # 80002690 <_ZN6ThreadC1Ev>
    8000440c:	00008797          	auipc	a5,0x8
    80004410:	7cc78793          	addi	a5,a5,1996 # 8000cbd8 <_ZTV7WorkerB+0x10>
    80004414:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004418:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000441c:	00006517          	auipc	a0,0x6
    80004420:	eac50513          	addi	a0,a0,-340 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004424:	00002097          	auipc	ra,0x2
    80004428:	a3c080e7          	jalr	-1476(ra) # 80005e60 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000442c:	02000513          	li	a0,32
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	0d0080e7          	jalr	208(ra) # 80002500 <_Znwm>
    80004438:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000443c:	ffffe097          	auipc	ra,0xffffe
    80004440:	254080e7          	jalr	596(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004444:	00008797          	auipc	a5,0x8
    80004448:	7bc78793          	addi	a5,a5,1980 # 8000cc00 <_ZTV7WorkerC+0x10>
    8000444c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004450:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004454:	00006517          	auipc	a0,0x6
    80004458:	e8c50513          	addi	a0,a0,-372 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000445c:	00002097          	auipc	ra,0x2
    80004460:	a04080e7          	jalr	-1532(ra) # 80005e60 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004464:	02000513          	li	a0,32
    80004468:	ffffe097          	auipc	ra,0xffffe
    8000446c:	098080e7          	jalr	152(ra) # 80002500 <_Znwm>
    80004470:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	21c080e7          	jalr	540(ra) # 80002690 <_ZN6ThreadC1Ev>
    8000447c:	00008797          	auipc	a5,0x8
    80004480:	7ac78793          	addi	a5,a5,1964 # 8000cc28 <_ZTV7WorkerD+0x10>
    80004484:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004488:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000448c:	00006517          	auipc	a0,0x6
    80004490:	e6c50513          	addi	a0,a0,-404 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004494:	00002097          	auipc	ra,0x2
    80004498:	9cc080e7          	jalr	-1588(ra) # 80005e60 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000449c:	00000493          	li	s1,0
    800044a0:	00300793          	li	a5,3
    800044a4:	0297c263          	blt	a5,s1,800044c8 <_Z20Threads_CPP_API_testv+0x124>
        threads[i]->start();
    800044a8:	00349793          	slli	a5,s1,0x3
    800044ac:	fe040713          	addi	a4,s0,-32
    800044b0:	00f707b3          	add	a5,a4,a5
    800044b4:	fe07b503          	ld	a0,-32(a5)
    800044b8:	ffffe097          	auipc	ra,0xffffe
    800044bc:	260080e7          	jalr	608(ra) # 80002718 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800044c0:	0014849b          	addiw	s1,s1,1
    800044c4:	fddff06f          	j	800044a0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    printString("threads started");
    800044c8:	00006517          	auipc	a0,0x6
    800044cc:	e4850513          	addi	a0,a0,-440 # 8000a310 <CONSOLE_STATUS+0x300>
    800044d0:	00002097          	auipc	ra,0x2
    800044d4:	990080e7          	jalr	-1648(ra) # 80005e60 <_Z11printStringPKc>
    800044d8:	00c0006f          	j	800044e4 <_Z20Threads_CPP_API_testv+0x140>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	214080e7          	jalr	532(ra) # 800026f0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800044e4:	00009797          	auipc	a5,0x9
    800044e8:	a147c783          	lbu	a5,-1516(a5) # 8000cef8 <_ZL9finishedA>
    800044ec:	fe0788e3          	beqz	a5,800044dc <_Z20Threads_CPP_API_testv+0x138>
    800044f0:	00009797          	auipc	a5,0x9
    800044f4:	a097c783          	lbu	a5,-1527(a5) # 8000cef9 <_ZL9finishedB>
    800044f8:	fe0782e3          	beqz	a5,800044dc <_Z20Threads_CPP_API_testv+0x138>
    800044fc:	00009797          	auipc	a5,0x9
    80004500:	9fe7c783          	lbu	a5,-1538(a5) # 8000cefa <_ZL9finishedC>
    80004504:	fc078ce3          	beqz	a5,800044dc <_Z20Threads_CPP_API_testv+0x138>
    80004508:	00009797          	auipc	a5,0x9
    8000450c:	9f37c783          	lbu	a5,-1549(a5) # 8000cefb <_ZL9finishedD>
    80004510:	fc0786e3          	beqz	a5,800044dc <_Z20Threads_CPP_API_testv+0x138>
    80004514:	fc040493          	addi	s1,s0,-64
    80004518:	0080006f          	j	80004520 <_Z20Threads_CPP_API_testv+0x17c>
    }

    for (auto thread: threads) { delete thread; }
    8000451c:	00848493          	addi	s1,s1,8
    80004520:	fe040793          	addi	a5,s0,-32
    80004524:	08f48663          	beq	s1,a5,800045b0 <_Z20Threads_CPP_API_testv+0x20c>
    80004528:	0004b503          	ld	a0,0(s1)
    8000452c:	fe0508e3          	beqz	a0,8000451c <_Z20Threads_CPP_API_testv+0x178>
    80004530:	00053783          	ld	a5,0(a0)
    80004534:	0087b783          	ld	a5,8(a5)
    80004538:	000780e7          	jalr	a5
    8000453c:	fe1ff06f          	j	8000451c <_Z20Threads_CPP_API_testv+0x178>
    80004540:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004544:	00048513          	mv	a0,s1
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	030080e7          	jalr	48(ra) # 80002578 <_ZdlPv>
    80004550:	00090513          	mv	a0,s2
    80004554:	0000a097          	auipc	ra,0xa
    80004558:	ab4080e7          	jalr	-1356(ra) # 8000e008 <_Unwind_Resume>
    8000455c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004560:	00048513          	mv	a0,s1
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	014080e7          	jalr	20(ra) # 80002578 <_ZdlPv>
    8000456c:	00090513          	mv	a0,s2
    80004570:	0000a097          	auipc	ra,0xa
    80004574:	a98080e7          	jalr	-1384(ra) # 8000e008 <_Unwind_Resume>
    80004578:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000457c:	00048513          	mv	a0,s1
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	ff8080e7          	jalr	-8(ra) # 80002578 <_ZdlPv>
    80004588:	00090513          	mv	a0,s2
    8000458c:	0000a097          	auipc	ra,0xa
    80004590:	a7c080e7          	jalr	-1412(ra) # 8000e008 <_Unwind_Resume>
    80004594:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004598:	00048513          	mv	a0,s1
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	fdc080e7          	jalr	-36(ra) # 80002578 <_ZdlPv>
    800045a4:	00090513          	mv	a0,s2
    800045a8:	0000a097          	auipc	ra,0xa
    800045ac:	a60080e7          	jalr	-1440(ra) # 8000e008 <_Unwind_Resume>
}
    800045b0:	03813083          	ld	ra,56(sp)
    800045b4:	03013403          	ld	s0,48(sp)
    800045b8:	02813483          	ld	s1,40(sp)
    800045bc:	02013903          	ld	s2,32(sp)
    800045c0:	04010113          	addi	sp,sp,64
    800045c4:	00008067          	ret

00000000800045c8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800045c8:	ff010113          	addi	sp,sp,-16
    800045cc:	00113423          	sd	ra,8(sp)
    800045d0:	00813023          	sd	s0,0(sp)
    800045d4:	01010413          	addi	s0,sp,16
    800045d8:	00008797          	auipc	a5,0x8
    800045dc:	5d878793          	addi	a5,a5,1496 # 8000cbb0 <_ZTV7WorkerA+0x10>
    800045e0:	00f53023          	sd	a5,0(a0)
    800045e4:	ffffe097          	auipc	ra,0xffffe
    800045e8:	fbc080e7          	jalr	-68(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800045ec:	00813083          	ld	ra,8(sp)
    800045f0:	00013403          	ld	s0,0(sp)
    800045f4:	01010113          	addi	sp,sp,16
    800045f8:	00008067          	ret

00000000800045fc <_ZN7WorkerAD0Ev>:
    800045fc:	fe010113          	addi	sp,sp,-32
    80004600:	00113c23          	sd	ra,24(sp)
    80004604:	00813823          	sd	s0,16(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	00050493          	mv	s1,a0
    80004614:	00008797          	auipc	a5,0x8
    80004618:	59c78793          	addi	a5,a5,1436 # 8000cbb0 <_ZTV7WorkerA+0x10>
    8000461c:	00f53023          	sd	a5,0(a0)
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	f80080e7          	jalr	-128(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004628:	00048513          	mv	a0,s1
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	f4c080e7          	jalr	-180(ra) # 80002578 <_ZdlPv>
    80004634:	01813083          	ld	ra,24(sp)
    80004638:	01013403          	ld	s0,16(sp)
    8000463c:	00813483          	ld	s1,8(sp)
    80004640:	02010113          	addi	sp,sp,32
    80004644:	00008067          	ret

0000000080004648 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004648:	ff010113          	addi	sp,sp,-16
    8000464c:	00113423          	sd	ra,8(sp)
    80004650:	00813023          	sd	s0,0(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00008797          	auipc	a5,0x8
    8000465c:	58078793          	addi	a5,a5,1408 # 8000cbd8 <_ZTV7WorkerB+0x10>
    80004660:	00f53023          	sd	a5,0(a0)
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	f3c080e7          	jalr	-196(ra) # 800025a0 <_ZN6ThreadD1Ev>
    8000466c:	00813083          	ld	ra,8(sp)
    80004670:	00013403          	ld	s0,0(sp)
    80004674:	01010113          	addi	sp,sp,16
    80004678:	00008067          	ret

000000008000467c <_ZN7WorkerBD0Ev>:
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	02010413          	addi	s0,sp,32
    80004690:	00050493          	mv	s1,a0
    80004694:	00008797          	auipc	a5,0x8
    80004698:	54478793          	addi	a5,a5,1348 # 8000cbd8 <_ZTV7WorkerB+0x10>
    8000469c:	00f53023          	sd	a5,0(a0)
    800046a0:	ffffe097          	auipc	ra,0xffffe
    800046a4:	f00080e7          	jalr	-256(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800046a8:	00048513          	mv	a0,s1
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	ecc080e7          	jalr	-308(ra) # 80002578 <_ZdlPv>
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	00813023          	sd	s0,0(sp)
    800046d4:	01010413          	addi	s0,sp,16
    800046d8:	00008797          	auipc	a5,0x8
    800046dc:	52878793          	addi	a5,a5,1320 # 8000cc00 <_ZTV7WorkerC+0x10>
    800046e0:	00f53023          	sd	a5,0(a0)
    800046e4:	ffffe097          	auipc	ra,0xffffe
    800046e8:	ebc080e7          	jalr	-324(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800046ec:	00813083          	ld	ra,8(sp)
    800046f0:	00013403          	ld	s0,0(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <_ZN7WorkerCD0Ev>:
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00113c23          	sd	ra,24(sp)
    80004704:	00813823          	sd	s0,16(sp)
    80004708:	00913423          	sd	s1,8(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	00050493          	mv	s1,a0
    80004714:	00008797          	auipc	a5,0x8
    80004718:	4ec78793          	addi	a5,a5,1260 # 8000cc00 <_ZTV7WorkerC+0x10>
    8000471c:	00f53023          	sd	a5,0(a0)
    80004720:	ffffe097          	auipc	ra,0xffffe
    80004724:	e80080e7          	jalr	-384(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004728:	00048513          	mv	a0,s1
    8000472c:	ffffe097          	auipc	ra,0xffffe
    80004730:	e4c080e7          	jalr	-436(ra) # 80002578 <_ZdlPv>
    80004734:	01813083          	ld	ra,24(sp)
    80004738:	01013403          	ld	s0,16(sp)
    8000473c:	00813483          	ld	s1,8(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret

0000000080004748 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00113423          	sd	ra,8(sp)
    80004750:	00813023          	sd	s0,0(sp)
    80004754:	01010413          	addi	s0,sp,16
    80004758:	00008797          	auipc	a5,0x8
    8000475c:	4d078793          	addi	a5,a5,1232 # 8000cc28 <_ZTV7WorkerD+0x10>
    80004760:	00f53023          	sd	a5,0(a0)
    80004764:	ffffe097          	auipc	ra,0xffffe
    80004768:	e3c080e7          	jalr	-452(ra) # 800025a0 <_ZN6ThreadD1Ev>
    8000476c:	00813083          	ld	ra,8(sp)
    80004770:	00013403          	ld	s0,0(sp)
    80004774:	01010113          	addi	sp,sp,16
    80004778:	00008067          	ret

000000008000477c <_ZN7WorkerDD0Ev>:
    8000477c:	fe010113          	addi	sp,sp,-32
    80004780:	00113c23          	sd	ra,24(sp)
    80004784:	00813823          	sd	s0,16(sp)
    80004788:	00913423          	sd	s1,8(sp)
    8000478c:	02010413          	addi	s0,sp,32
    80004790:	00050493          	mv	s1,a0
    80004794:	00008797          	auipc	a5,0x8
    80004798:	49478793          	addi	a5,a5,1172 # 8000cc28 <_ZTV7WorkerD+0x10>
    8000479c:	00f53023          	sd	a5,0(a0)
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	e00080e7          	jalr	-512(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800047a8:	00048513          	mv	a0,s1
    800047ac:	ffffe097          	auipc	ra,0xffffe
    800047b0:	dcc080e7          	jalr	-564(ra) # 80002578 <_ZdlPv>
    800047b4:	01813083          	ld	ra,24(sp)
    800047b8:	01013403          	ld	s0,16(sp)
    800047bc:	00813483          	ld	s1,8(sp)
    800047c0:	02010113          	addi	sp,sp,32
    800047c4:	00008067          	ret

00000000800047c8 <_ZN7WorkerA3runEv>:
    void run() override {
    800047c8:	ff010113          	addi	sp,sp,-16
    800047cc:	00113423          	sd	ra,8(sp)
    800047d0:	00813023          	sd	s0,0(sp)
    800047d4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800047d8:	00000593          	li	a1,0
    800047dc:	fffff097          	auipc	ra,0xfffff
    800047e0:	760080e7          	jalr	1888(ra) # 80003f3c <_ZN7WorkerA11workerBodyAEPv>
    }
    800047e4:	00813083          	ld	ra,8(sp)
    800047e8:	00013403          	ld	s0,0(sp)
    800047ec:	01010113          	addi	sp,sp,16
    800047f0:	00008067          	ret

00000000800047f4 <_ZN7WorkerB3runEv>:
    void run() override {
    800047f4:	ff010113          	addi	sp,sp,-16
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	00813023          	sd	s0,0(sp)
    80004800:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004804:	00000593          	li	a1,0
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	800080e7          	jalr	-2048(ra) # 80004008 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004810:	00813083          	ld	ra,8(sp)
    80004814:	00013403          	ld	s0,0(sp)
    80004818:	01010113          	addi	sp,sp,16
    8000481c:	00008067          	ret

0000000080004820 <_ZN7WorkerC3runEv>:
    void run() override {
    80004820:	ff010113          	addi	sp,sp,-16
    80004824:	00113423          	sd	ra,8(sp)
    80004828:	00813023          	sd	s0,0(sp)
    8000482c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004830:	00000593          	li	a1,0
    80004834:	00000097          	auipc	ra,0x0
    80004838:	8a8080e7          	jalr	-1880(ra) # 800040dc <_ZN7WorkerC11workerBodyCEPv>
    }
    8000483c:	00813083          	ld	ra,8(sp)
    80004840:	00013403          	ld	s0,0(sp)
    80004844:	01010113          	addi	sp,sp,16
    80004848:	00008067          	ret

000000008000484c <_ZN7WorkerD3runEv>:
    void run() override {
    8000484c:	ff010113          	addi	sp,sp,-16
    80004850:	00113423          	sd	ra,8(sp)
    80004854:	00813023          	sd	s0,0(sp)
    80004858:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000485c:	00000593          	li	a1,0
    80004860:	00000097          	auipc	ra,0x0
    80004864:	9fc080e7          	jalr	-1540(ra) # 8000425c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004868:	00813083          	ld	ra,8(sp)
    8000486c:	00013403          	ld	s0,0(sp)
    80004870:	01010113          	addi	sp,sp,16
    80004874:	00008067          	ret

0000000080004878 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004878:	f8010113          	addi	sp,sp,-128
    8000487c:	06113c23          	sd	ra,120(sp)
    80004880:	06813823          	sd	s0,112(sp)
    80004884:	06913423          	sd	s1,104(sp)
    80004888:	07213023          	sd	s2,96(sp)
    8000488c:	05313c23          	sd	s3,88(sp)
    80004890:	05413823          	sd	s4,80(sp)
    80004894:	05513423          	sd	s5,72(sp)
    80004898:	05613023          	sd	s6,64(sp)
    8000489c:	03713c23          	sd	s7,56(sp)
    800048a0:	03813823          	sd	s8,48(sp)
    800048a4:	03913423          	sd	s9,40(sp)
    800048a8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800048ac:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800048b0:	00006517          	auipc	a0,0x6
    800048b4:	88050513          	addi	a0,a0,-1920 # 8000a130 <CONSOLE_STATUS+0x120>
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	5a8080e7          	jalr	1448(ra) # 80005e60 <_Z11printStringPKc>
    getString(input, 30);
    800048c0:	01e00593          	li	a1,30
    800048c4:	f8040493          	addi	s1,s0,-128
    800048c8:	00048513          	mv	a0,s1
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	61c080e7          	jalr	1564(ra) # 80005ee8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800048d4:	00048513          	mv	a0,s1
    800048d8:	00001097          	auipc	ra,0x1
    800048dc:	6e8080e7          	jalr	1768(ra) # 80005fc0 <_Z11stringToIntPKc>
    800048e0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800048e4:	00006517          	auipc	a0,0x6
    800048e8:	86c50513          	addi	a0,a0,-1940 # 8000a150 <CONSOLE_STATUS+0x140>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	574080e7          	jalr	1396(ra) # 80005e60 <_Z11printStringPKc>
    getString(input, 30);
    800048f4:	01e00593          	li	a1,30
    800048f8:	00048513          	mv	a0,s1
    800048fc:	00001097          	auipc	ra,0x1
    80004900:	5ec080e7          	jalr	1516(ra) # 80005ee8 <_Z9getStringPci>
    n = stringToInt(input);
    80004904:	00048513          	mv	a0,s1
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	6b8080e7          	jalr	1720(ra) # 80005fc0 <_Z11stringToIntPKc>
    80004910:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004914:	00006517          	auipc	a0,0x6
    80004918:	85c50513          	addi	a0,a0,-1956 # 8000a170 <CONSOLE_STATUS+0x160>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	544080e7          	jalr	1348(ra) # 80005e60 <_Z11printStringPKc>
    printInt(threadNum);
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	00098513          	mv	a0,s3
    80004930:	00001097          	auipc	ra,0x1
    80004934:	6e0080e7          	jalr	1760(ra) # 80006010 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004938:	00006517          	auipc	a0,0x6
    8000493c:	85050513          	addi	a0,a0,-1968 # 8000a188 <CONSOLE_STATUS+0x178>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	520080e7          	jalr	1312(ra) # 80005e60 <_Z11printStringPKc>
    printInt(n);
    80004948:	00000613          	li	a2,0
    8000494c:	00a00593          	li	a1,10
    80004950:	00048513          	mv	a0,s1
    80004954:	00001097          	auipc	ra,0x1
    80004958:	6bc080e7          	jalr	1724(ra) # 80006010 <_Z8printIntiii>
    printString(".\n");
    8000495c:	00006517          	auipc	a0,0x6
    80004960:	84450513          	addi	a0,a0,-1980 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004964:	00001097          	auipc	ra,0x1
    80004968:	4fc080e7          	jalr	1276(ra) # 80005e60 <_Z11printStringPKc>
    if (threadNum > n) {
    8000496c:	0334c463          	blt	s1,s3,80004994 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004970:	03305c63          	blez	s3,800049a8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004974:	03800513          	li	a0,56
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	b88080e7          	jalr	-1144(ra) # 80002500 <_Znwm>
    80004980:	00050a93          	mv	s5,a0
    80004984:	00048593          	mv	a1,s1
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	7a8080e7          	jalr	1960(ra) # 80006130 <_ZN9BufferCPPC1Ei>
    80004990:	0300006f          	j	800049c0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004994:	00006517          	auipc	a0,0x6
    80004998:	81450513          	addi	a0,a0,-2028 # 8000a1a8 <CONSOLE_STATUS+0x198>
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	4c4080e7          	jalr	1220(ra) # 80005e60 <_Z11printStringPKc>
        return;
    800049a4:	0140006f          	j	800049b8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800049a8:	00006517          	auipc	a0,0x6
    800049ac:	84050513          	addi	a0,a0,-1984 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	4b0080e7          	jalr	1200(ra) # 80005e60 <_Z11printStringPKc>
        return;
    800049b8:	000c0113          	mv	sp,s8
    800049bc:	2140006f          	j	80004bd0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800049c0:	01000513          	li	a0,16
    800049c4:	ffffe097          	auipc	ra,0xffffe
    800049c8:	b3c080e7          	jalr	-1220(ra) # 80002500 <_Znwm>
    800049cc:	00050913          	mv	s2,a0
    800049d0:	00000593          	li	a1,0
    800049d4:	ffffe097          	auipc	ra,0xffffe
    800049d8:	d78080e7          	jalr	-648(ra) # 8000274c <_ZN9SemaphoreC1Ej>
    800049dc:	00008797          	auipc	a5,0x8
    800049e0:	5327b623          	sd	s2,1324(a5) # 8000cf08 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800049e4:	00399793          	slli	a5,s3,0x3
    800049e8:	00f78793          	addi	a5,a5,15
    800049ec:	ff07f793          	andi	a5,a5,-16
    800049f0:	40f10133          	sub	sp,sp,a5
    800049f4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800049f8:	0019871b          	addiw	a4,s3,1
    800049fc:	00171793          	slli	a5,a4,0x1
    80004a00:	00e787b3          	add	a5,a5,a4
    80004a04:	00379793          	slli	a5,a5,0x3
    80004a08:	00f78793          	addi	a5,a5,15
    80004a0c:	ff07f793          	andi	a5,a5,-16
    80004a10:	40f10133          	sub	sp,sp,a5
    80004a14:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004a18:	00199493          	slli	s1,s3,0x1
    80004a1c:	013484b3          	add	s1,s1,s3
    80004a20:	00349493          	slli	s1,s1,0x3
    80004a24:	009b04b3          	add	s1,s6,s1
    80004a28:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004a2c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004a30:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004a34:	02800513          	li	a0,40
    80004a38:	ffffe097          	auipc	ra,0xffffe
    80004a3c:	ac8080e7          	jalr	-1336(ra) # 80002500 <_Znwm>
    80004a40:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004a44:	ffffe097          	auipc	ra,0xffffe
    80004a48:	c4c080e7          	jalr	-948(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004a4c:	00008797          	auipc	a5,0x8
    80004a50:	25478793          	addi	a5,a5,596 # 8000cca0 <_ZTV8Consumer+0x10>
    80004a54:	00fbb023          	sd	a5,0(s7)
    80004a58:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004a5c:	000b8513          	mv	a0,s7
    80004a60:	ffffe097          	auipc	ra,0xffffe
    80004a64:	cb8080e7          	jalr	-840(ra) # 80002718 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004a68:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004a6c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004a70:	00008797          	auipc	a5,0x8
    80004a74:	4987b783          	ld	a5,1176(a5) # 8000cf08 <_ZL10waitForAll>
    80004a78:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a7c:	02800513          	li	a0,40
    80004a80:	ffffe097          	auipc	ra,0xffffe
    80004a84:	a80080e7          	jalr	-1408(ra) # 80002500 <_Znwm>
    80004a88:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004a8c:	ffffe097          	auipc	ra,0xffffe
    80004a90:	c04080e7          	jalr	-1020(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004a94:	00008797          	auipc	a5,0x8
    80004a98:	1bc78793          	addi	a5,a5,444 # 8000cc50 <_ZTV16ProducerKeyborad+0x10>
    80004a9c:	00f4b023          	sd	a5,0(s1)
    80004aa0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004aa4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004aa8:	00048513          	mv	a0,s1
    80004aac:	ffffe097          	auipc	ra,0xffffe
    80004ab0:	c6c080e7          	jalr	-916(ra) # 80002718 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004ab4:	00100913          	li	s2,1
    80004ab8:	0300006f          	j	80004ae8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004abc:	00008797          	auipc	a5,0x8
    80004ac0:	1bc78793          	addi	a5,a5,444 # 8000cc78 <_ZTV8Producer+0x10>
    80004ac4:	00fcb023          	sd	a5,0(s9)
    80004ac8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004acc:	00391793          	slli	a5,s2,0x3
    80004ad0:	00fa07b3          	add	a5,s4,a5
    80004ad4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004ad8:	000c8513          	mv	a0,s9
    80004adc:	ffffe097          	auipc	ra,0xffffe
    80004ae0:	c3c080e7          	jalr	-964(ra) # 80002718 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004ae4:	0019091b          	addiw	s2,s2,1
    80004ae8:	05395263          	bge	s2,s3,80004b2c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004aec:	00191493          	slli	s1,s2,0x1
    80004af0:	012484b3          	add	s1,s1,s2
    80004af4:	00349493          	slli	s1,s1,0x3
    80004af8:	009b04b3          	add	s1,s6,s1
    80004afc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004b00:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004b04:	00008797          	auipc	a5,0x8
    80004b08:	4047b783          	ld	a5,1028(a5) # 8000cf08 <_ZL10waitForAll>
    80004b0c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004b10:	02800513          	li	a0,40
    80004b14:	ffffe097          	auipc	ra,0xffffe
    80004b18:	9ec080e7          	jalr	-1556(ra) # 80002500 <_Znwm>
    80004b1c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004b20:	ffffe097          	auipc	ra,0xffffe
    80004b24:	b70080e7          	jalr	-1168(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004b28:	f95ff06f          	j	80004abc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004b2c:	ffffe097          	auipc	ra,0xffffe
    80004b30:	bc4080e7          	jalr	-1084(ra) # 800026f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b34:	00000493          	li	s1,0
    80004b38:	0099ce63          	blt	s3,s1,80004b54 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004b3c:	00008517          	auipc	a0,0x8
    80004b40:	3cc53503          	ld	a0,972(a0) # 8000cf08 <_ZL10waitForAll>
    80004b44:	ffffe097          	auipc	ra,0xffffe
    80004b48:	c44080e7          	jalr	-956(ra) # 80002788 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b4c:	0014849b          	addiw	s1,s1,1
    80004b50:	fe9ff06f          	j	80004b38 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004b54:	00008517          	auipc	a0,0x8
    80004b58:	3b453503          	ld	a0,948(a0) # 8000cf08 <_ZL10waitForAll>
    80004b5c:	00050863          	beqz	a0,80004b6c <_Z20testConsumerProducerv+0x2f4>
    80004b60:	00053783          	ld	a5,0(a0)
    80004b64:	0087b783          	ld	a5,8(a5)
    80004b68:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004b6c:	00000493          	li	s1,0
    80004b70:	0080006f          	j	80004b78 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004b74:	0014849b          	addiw	s1,s1,1
    80004b78:	0334d263          	bge	s1,s3,80004b9c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004b7c:	00349793          	slli	a5,s1,0x3
    80004b80:	00fa07b3          	add	a5,s4,a5
    80004b84:	0007b503          	ld	a0,0(a5)
    80004b88:	fe0506e3          	beqz	a0,80004b74 <_Z20testConsumerProducerv+0x2fc>
    80004b8c:	00053783          	ld	a5,0(a0)
    80004b90:	0087b783          	ld	a5,8(a5)
    80004b94:	000780e7          	jalr	a5
    80004b98:	fddff06f          	j	80004b74 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004b9c:	000b8a63          	beqz	s7,80004bb0 <_Z20testConsumerProducerv+0x338>
    80004ba0:	000bb783          	ld	a5,0(s7)
    80004ba4:	0087b783          	ld	a5,8(a5)
    80004ba8:	000b8513          	mv	a0,s7
    80004bac:	000780e7          	jalr	a5
    delete buffer;
    80004bb0:	000a8e63          	beqz	s5,80004bcc <_Z20testConsumerProducerv+0x354>
    80004bb4:	000a8513          	mv	a0,s5
    80004bb8:	00002097          	auipc	ra,0x2
    80004bbc:	870080e7          	jalr	-1936(ra) # 80006428 <_ZN9BufferCPPD1Ev>
    80004bc0:	000a8513          	mv	a0,s5
    80004bc4:	ffffe097          	auipc	ra,0xffffe
    80004bc8:	9b4080e7          	jalr	-1612(ra) # 80002578 <_ZdlPv>
    80004bcc:	000c0113          	mv	sp,s8
}
    80004bd0:	f8040113          	addi	sp,s0,-128
    80004bd4:	07813083          	ld	ra,120(sp)
    80004bd8:	07013403          	ld	s0,112(sp)
    80004bdc:	06813483          	ld	s1,104(sp)
    80004be0:	06013903          	ld	s2,96(sp)
    80004be4:	05813983          	ld	s3,88(sp)
    80004be8:	05013a03          	ld	s4,80(sp)
    80004bec:	04813a83          	ld	s5,72(sp)
    80004bf0:	04013b03          	ld	s6,64(sp)
    80004bf4:	03813b83          	ld	s7,56(sp)
    80004bf8:	03013c03          	ld	s8,48(sp)
    80004bfc:	02813c83          	ld	s9,40(sp)
    80004c00:	08010113          	addi	sp,sp,128
    80004c04:	00008067          	ret
    80004c08:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004c0c:	000a8513          	mv	a0,s5
    80004c10:	ffffe097          	auipc	ra,0xffffe
    80004c14:	968080e7          	jalr	-1688(ra) # 80002578 <_ZdlPv>
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	00009097          	auipc	ra,0x9
    80004c20:	3ec080e7          	jalr	1004(ra) # 8000e008 <_Unwind_Resume>
    80004c24:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004c28:	00090513          	mv	a0,s2
    80004c2c:	ffffe097          	auipc	ra,0xffffe
    80004c30:	94c080e7          	jalr	-1716(ra) # 80002578 <_ZdlPv>
    80004c34:	00048513          	mv	a0,s1
    80004c38:	00009097          	auipc	ra,0x9
    80004c3c:	3d0080e7          	jalr	976(ra) # 8000e008 <_Unwind_Resume>
    80004c40:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004c44:	000b8513          	mv	a0,s7
    80004c48:	ffffe097          	auipc	ra,0xffffe
    80004c4c:	930080e7          	jalr	-1744(ra) # 80002578 <_ZdlPv>
    80004c50:	00048513          	mv	a0,s1
    80004c54:	00009097          	auipc	ra,0x9
    80004c58:	3b4080e7          	jalr	948(ra) # 8000e008 <_Unwind_Resume>
    80004c5c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004c60:	00048513          	mv	a0,s1
    80004c64:	ffffe097          	auipc	ra,0xffffe
    80004c68:	914080e7          	jalr	-1772(ra) # 80002578 <_ZdlPv>
    80004c6c:	00090513          	mv	a0,s2
    80004c70:	00009097          	auipc	ra,0x9
    80004c74:	398080e7          	jalr	920(ra) # 8000e008 <_Unwind_Resume>
    80004c78:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004c7c:	000c8513          	mv	a0,s9
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	8f8080e7          	jalr	-1800(ra) # 80002578 <_ZdlPv>
    80004c88:	00048513          	mv	a0,s1
    80004c8c:	00009097          	auipc	ra,0x9
    80004c90:	37c080e7          	jalr	892(ra) # 8000e008 <_Unwind_Resume>

0000000080004c94 <_ZN8Consumer3runEv>:
    void run() override {
    80004c94:	fd010113          	addi	sp,sp,-48
    80004c98:	02113423          	sd	ra,40(sp)
    80004c9c:	02813023          	sd	s0,32(sp)
    80004ca0:	00913c23          	sd	s1,24(sp)
    80004ca4:	01213823          	sd	s2,16(sp)
    80004ca8:	01313423          	sd	s3,8(sp)
    80004cac:	03010413          	addi	s0,sp,48
    80004cb0:	00050913          	mv	s2,a0
        int i = 0;
    80004cb4:	00000993          	li	s3,0
    80004cb8:	0100006f          	j	80004cc8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004cbc:	00a00513          	li	a0,10
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	bd0080e7          	jalr	-1072(ra) # 80002890 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004cc8:	00008797          	auipc	a5,0x8
    80004ccc:	2387a783          	lw	a5,568(a5) # 8000cf00 <_ZL9threadEnd>
    80004cd0:	04079a63          	bnez	a5,80004d24 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004cd4:	02093783          	ld	a5,32(s2)
    80004cd8:	0087b503          	ld	a0,8(a5)
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	638080e7          	jalr	1592(ra) # 80006314 <_ZN9BufferCPP3getEv>
            i++;
    80004ce4:	0019849b          	addiw	s1,s3,1
    80004ce8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004cec:	0ff57513          	andi	a0,a0,255
    80004cf0:	ffffe097          	auipc	ra,0xffffe
    80004cf4:	ba0080e7          	jalr	-1120(ra) # 80002890 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004cf8:	05000793          	li	a5,80
    80004cfc:	02f4e4bb          	remw	s1,s1,a5
    80004d00:	fc0494e3          	bnez	s1,80004cc8 <_ZN8Consumer3runEv+0x34>
    80004d04:	fb9ff06f          	j	80004cbc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004d08:	02093783          	ld	a5,32(s2)
    80004d0c:	0087b503          	ld	a0,8(a5)
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	604080e7          	jalr	1540(ra) # 80006314 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004d18:	0ff57513          	andi	a0,a0,255
    80004d1c:	ffffe097          	auipc	ra,0xffffe
    80004d20:	b74080e7          	jalr	-1164(ra) # 80002890 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004d24:	02093783          	ld	a5,32(s2)
    80004d28:	0087b503          	ld	a0,8(a5)
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	674080e7          	jalr	1652(ra) # 800063a0 <_ZN9BufferCPP6getCntEv>
    80004d34:	fca04ae3          	bgtz	a0,80004d08 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004d38:	02093783          	ld	a5,32(s2)
    80004d3c:	0107b503          	ld	a0,16(a5)
    80004d40:	ffffe097          	auipc	ra,0xffffe
    80004d44:	a80080e7          	jalr	-1408(ra) # 800027c0 <_ZN9Semaphore6signalEv>
    }
    80004d48:	02813083          	ld	ra,40(sp)
    80004d4c:	02013403          	ld	s0,32(sp)
    80004d50:	01813483          	ld	s1,24(sp)
    80004d54:	01013903          	ld	s2,16(sp)
    80004d58:	00813983          	ld	s3,8(sp)
    80004d5c:	03010113          	addi	sp,sp,48
    80004d60:	00008067          	ret

0000000080004d64 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004d64:	ff010113          	addi	sp,sp,-16
    80004d68:	00113423          	sd	ra,8(sp)
    80004d6c:	00813023          	sd	s0,0(sp)
    80004d70:	01010413          	addi	s0,sp,16
    80004d74:	00008797          	auipc	a5,0x8
    80004d78:	f2c78793          	addi	a5,a5,-212 # 8000cca0 <_ZTV8Consumer+0x10>
    80004d7c:	00f53023          	sd	a5,0(a0)
    80004d80:	ffffe097          	auipc	ra,0xffffe
    80004d84:	820080e7          	jalr	-2016(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004d88:	00813083          	ld	ra,8(sp)
    80004d8c:	00013403          	ld	s0,0(sp)
    80004d90:	01010113          	addi	sp,sp,16
    80004d94:	00008067          	ret

0000000080004d98 <_ZN8ConsumerD0Ev>:
    80004d98:	fe010113          	addi	sp,sp,-32
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	00813823          	sd	s0,16(sp)
    80004da4:	00913423          	sd	s1,8(sp)
    80004da8:	02010413          	addi	s0,sp,32
    80004dac:	00050493          	mv	s1,a0
    80004db0:	00008797          	auipc	a5,0x8
    80004db4:	ef078793          	addi	a5,a5,-272 # 8000cca0 <_ZTV8Consumer+0x10>
    80004db8:	00f53023          	sd	a5,0(a0)
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	7e4080e7          	jalr	2020(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004dc4:	00048513          	mv	a0,s1
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	7b0080e7          	jalr	1968(ra) # 80002578 <_ZdlPv>
    80004dd0:	01813083          	ld	ra,24(sp)
    80004dd4:	01013403          	ld	s0,16(sp)
    80004dd8:	00813483          	ld	s1,8(sp)
    80004ddc:	02010113          	addi	sp,sp,32
    80004de0:	00008067          	ret

0000000080004de4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004de4:	ff010113          	addi	sp,sp,-16
    80004de8:	00113423          	sd	ra,8(sp)
    80004dec:	00813023          	sd	s0,0(sp)
    80004df0:	01010413          	addi	s0,sp,16
    80004df4:	00008797          	auipc	a5,0x8
    80004df8:	e5c78793          	addi	a5,a5,-420 # 8000cc50 <_ZTV16ProducerKeyborad+0x10>
    80004dfc:	00f53023          	sd	a5,0(a0)
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	7a0080e7          	jalr	1952(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004e08:	00813083          	ld	ra,8(sp)
    80004e0c:	00013403          	ld	s0,0(sp)
    80004e10:	01010113          	addi	sp,sp,16
    80004e14:	00008067          	ret

0000000080004e18 <_ZN16ProducerKeyboradD0Ev>:
    80004e18:	fe010113          	addi	sp,sp,-32
    80004e1c:	00113c23          	sd	ra,24(sp)
    80004e20:	00813823          	sd	s0,16(sp)
    80004e24:	00913423          	sd	s1,8(sp)
    80004e28:	02010413          	addi	s0,sp,32
    80004e2c:	00050493          	mv	s1,a0
    80004e30:	00008797          	auipc	a5,0x8
    80004e34:	e2078793          	addi	a5,a5,-480 # 8000cc50 <_ZTV16ProducerKeyborad+0x10>
    80004e38:	00f53023          	sd	a5,0(a0)
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	764080e7          	jalr	1892(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004e44:	00048513          	mv	a0,s1
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	730080e7          	jalr	1840(ra) # 80002578 <_ZdlPv>
    80004e50:	01813083          	ld	ra,24(sp)
    80004e54:	01013403          	ld	s0,16(sp)
    80004e58:	00813483          	ld	s1,8(sp)
    80004e5c:	02010113          	addi	sp,sp,32
    80004e60:	00008067          	ret

0000000080004e64 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004e64:	ff010113          	addi	sp,sp,-16
    80004e68:	00113423          	sd	ra,8(sp)
    80004e6c:	00813023          	sd	s0,0(sp)
    80004e70:	01010413          	addi	s0,sp,16
    80004e74:	00008797          	auipc	a5,0x8
    80004e78:	e0478793          	addi	a5,a5,-508 # 8000cc78 <_ZTV8Producer+0x10>
    80004e7c:	00f53023          	sd	a5,0(a0)
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	720080e7          	jalr	1824(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004e88:	00813083          	ld	ra,8(sp)
    80004e8c:	00013403          	ld	s0,0(sp)
    80004e90:	01010113          	addi	sp,sp,16
    80004e94:	00008067          	ret

0000000080004e98 <_ZN8ProducerD0Ev>:
    80004e98:	fe010113          	addi	sp,sp,-32
    80004e9c:	00113c23          	sd	ra,24(sp)
    80004ea0:	00813823          	sd	s0,16(sp)
    80004ea4:	00913423          	sd	s1,8(sp)
    80004ea8:	02010413          	addi	s0,sp,32
    80004eac:	00050493          	mv	s1,a0
    80004eb0:	00008797          	auipc	a5,0x8
    80004eb4:	dc878793          	addi	a5,a5,-568 # 8000cc78 <_ZTV8Producer+0x10>
    80004eb8:	00f53023          	sd	a5,0(a0)
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	6e4080e7          	jalr	1764(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004ec4:	00048513          	mv	a0,s1
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	6b0080e7          	jalr	1712(ra) # 80002578 <_ZdlPv>
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret

0000000080004ee4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004ee4:	fe010113          	addi	sp,sp,-32
    80004ee8:	00113c23          	sd	ra,24(sp)
    80004eec:	00813823          	sd	s0,16(sp)
    80004ef0:	00913423          	sd	s1,8(sp)
    80004ef4:	02010413          	addi	s0,sp,32
    80004ef8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004efc:	ffffc097          	auipc	ra,0xffffc
    80004f00:	734080e7          	jalr	1844(ra) # 80001630 <_Z4getcv>
    80004f04:	0005059b          	sext.w	a1,a0
    80004f08:	01b00793          	li	a5,27
    80004f0c:	00f58c63          	beq	a1,a5,80004f24 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004f10:	0204b783          	ld	a5,32(s1)
    80004f14:	0087b503          	ld	a0,8(a5)
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	36c080e7          	jalr	876(ra) # 80006284 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004f20:	fddff06f          	j	80004efc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004f24:	00100793          	li	a5,1
    80004f28:	00008717          	auipc	a4,0x8
    80004f2c:	fcf72c23          	sw	a5,-40(a4) # 8000cf00 <_ZL9threadEnd>
        td->buffer->put('!');
    80004f30:	0204b783          	ld	a5,32(s1)
    80004f34:	02100593          	li	a1,33
    80004f38:	0087b503          	ld	a0,8(a5)
    80004f3c:	00001097          	auipc	ra,0x1
    80004f40:	348080e7          	jalr	840(ra) # 80006284 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004f44:	0204b783          	ld	a5,32(s1)
    80004f48:	0107b503          	ld	a0,16(a5)
    80004f4c:	ffffe097          	auipc	ra,0xffffe
    80004f50:	874080e7          	jalr	-1932(ra) # 800027c0 <_ZN9Semaphore6signalEv>
    }
    80004f54:	01813083          	ld	ra,24(sp)
    80004f58:	01013403          	ld	s0,16(sp)
    80004f5c:	00813483          	ld	s1,8(sp)
    80004f60:	02010113          	addi	sp,sp,32
    80004f64:	00008067          	ret

0000000080004f68 <_ZN8Producer3runEv>:
    void run() override {
    80004f68:	fe010113          	addi	sp,sp,-32
    80004f6c:	00113c23          	sd	ra,24(sp)
    80004f70:	00813823          	sd	s0,16(sp)
    80004f74:	00913423          	sd	s1,8(sp)
    80004f78:	01213023          	sd	s2,0(sp)
    80004f7c:	02010413          	addi	s0,sp,32
    80004f80:	00050493          	mv	s1,a0
        int i = 0;
    80004f84:	00000913          	li	s2,0
        while (!threadEnd) {
    80004f88:	00008797          	auipc	a5,0x8
    80004f8c:	f787a783          	lw	a5,-136(a5) # 8000cf00 <_ZL9threadEnd>
    80004f90:	04079263          	bnez	a5,80004fd4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004f94:	0204b783          	ld	a5,32(s1)
    80004f98:	0007a583          	lw	a1,0(a5)
    80004f9c:	0305859b          	addiw	a1,a1,48
    80004fa0:	0087b503          	ld	a0,8(a5)
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	2e0080e7          	jalr	736(ra) # 80006284 <_ZN9BufferCPP3putEi>
            i++;
    80004fac:	0019071b          	addiw	a4,s2,1
    80004fb0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004fb4:	0204b783          	ld	a5,32(s1)
    80004fb8:	0007a783          	lw	a5,0(a5)
    80004fbc:	00e787bb          	addw	a5,a5,a4
    80004fc0:	00500513          	li	a0,5
    80004fc4:	02a7e53b          	remw	a0,a5,a0
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	700080e7          	jalr	1792(ra) # 800026c8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004fd0:	fb9ff06f          	j	80004f88 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004fd4:	0204b783          	ld	a5,32(s1)
    80004fd8:	0107b503          	ld	a0,16(a5)
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	7e4080e7          	jalr	2020(ra) # 800027c0 <_ZN9Semaphore6signalEv>
    }
    80004fe4:	01813083          	ld	ra,24(sp)
    80004fe8:	01013403          	ld	s0,16(sp)
    80004fec:	00813483          	ld	s1,8(sp)
    80004ff0:	00013903          	ld	s2,0(sp)
    80004ff4:	02010113          	addi	sp,sp,32
    80004ff8:	00008067          	ret

0000000080004ffc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004ffc:	fe010113          	addi	sp,sp,-32
    80005000:	00113c23          	sd	ra,24(sp)
    80005004:	00813823          	sd	s0,16(sp)
    80005008:	00913423          	sd	s1,8(sp)
    8000500c:	01213023          	sd	s2,0(sp)
    80005010:	02010413          	addi	s0,sp,32
    80005014:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005018:	00100793          	li	a5,1
    8000501c:	02a7f863          	bgeu	a5,a0,8000504c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005020:	00a00793          	li	a5,10
    80005024:	02f577b3          	remu	a5,a0,a5
    80005028:	02078e63          	beqz	a5,80005064 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000502c:	fff48513          	addi	a0,s1,-1
    80005030:	00000097          	auipc	ra,0x0
    80005034:	fcc080e7          	jalr	-52(ra) # 80004ffc <_ZL9fibonaccim>
    80005038:	00050913          	mv	s2,a0
    8000503c:	ffe48513          	addi	a0,s1,-2
    80005040:	00000097          	auipc	ra,0x0
    80005044:	fbc080e7          	jalr	-68(ra) # 80004ffc <_ZL9fibonaccim>
    80005048:	00a90533          	add	a0,s2,a0
}
    8000504c:	01813083          	ld	ra,24(sp)
    80005050:	01013403          	ld	s0,16(sp)
    80005054:	00813483          	ld	s1,8(sp)
    80005058:	00013903          	ld	s2,0(sp)
    8000505c:	02010113          	addi	sp,sp,32
    80005060:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005064:	ffffc097          	auipc	ra,0xffffc
    80005068:	36c080e7          	jalr	876(ra) # 800013d0 <_Z15thread_dispatchv>
    8000506c:	fc1ff06f          	j	8000502c <_ZL9fibonaccim+0x30>

0000000080005070 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00113c23          	sd	ra,24(sp)
    80005078:	00813823          	sd	s0,16(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	01213023          	sd	s2,0(sp)
    80005084:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005088:	00a00493          	li	s1,10
    8000508c:	0400006f          	j	800050cc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005090:	00005517          	auipc	a0,0x5
    80005094:	1e850513          	addi	a0,a0,488 # 8000a278 <CONSOLE_STATUS+0x268>
    80005098:	00001097          	auipc	ra,0x1
    8000509c:	dc8080e7          	jalr	-568(ra) # 80005e60 <_Z11printStringPKc>
    800050a0:	00000613          	li	a2,0
    800050a4:	00a00593          	li	a1,10
    800050a8:	00048513          	mv	a0,s1
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	f64080e7          	jalr	-156(ra) # 80006010 <_Z8printIntiii>
    800050b4:	00005517          	auipc	a0,0x5
    800050b8:	3c450513          	addi	a0,a0,964 # 8000a478 <CONSOLE_STATUS+0x468>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	da4080e7          	jalr	-604(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050c4:	0014849b          	addiw	s1,s1,1
    800050c8:	0ff4f493          	andi	s1,s1,255
    800050cc:	00c00793          	li	a5,12
    800050d0:	fc97f0e3          	bgeu	a5,s1,80005090 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800050d4:	00005517          	auipc	a0,0x5
    800050d8:	1ac50513          	addi	a0,a0,428 # 8000a280 <CONSOLE_STATUS+0x270>
    800050dc:	00001097          	auipc	ra,0x1
    800050e0:	d84080e7          	jalr	-636(ra) # 80005e60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800050e4:	00500313          	li	t1,5
    thread_dispatch();
    800050e8:	ffffc097          	auipc	ra,0xffffc
    800050ec:	2e8080e7          	jalr	744(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800050f0:	01000513          	li	a0,16
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	f08080e7          	jalr	-248(ra) # 80004ffc <_ZL9fibonaccim>
    800050fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005100:	00005517          	auipc	a0,0x5
    80005104:	19050513          	addi	a0,a0,400 # 8000a290 <CONSOLE_STATUS+0x280>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	d58080e7          	jalr	-680(ra) # 80005e60 <_Z11printStringPKc>
    80005110:	00000613          	li	a2,0
    80005114:	00a00593          	li	a1,10
    80005118:	0009051b          	sext.w	a0,s2
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	ef4080e7          	jalr	-268(ra) # 80006010 <_Z8printIntiii>
    80005124:	00005517          	auipc	a0,0x5
    80005128:	35450513          	addi	a0,a0,852 # 8000a478 <CONSOLE_STATUS+0x468>
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	d34080e7          	jalr	-716(ra) # 80005e60 <_Z11printStringPKc>
    80005134:	0400006f          	j	80005174 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005138:	00005517          	auipc	a0,0x5
    8000513c:	14050513          	addi	a0,a0,320 # 8000a278 <CONSOLE_STATUS+0x268>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	d20080e7          	jalr	-736(ra) # 80005e60 <_Z11printStringPKc>
    80005148:	00000613          	li	a2,0
    8000514c:	00a00593          	li	a1,10
    80005150:	00048513          	mv	a0,s1
    80005154:	00001097          	auipc	ra,0x1
    80005158:	ebc080e7          	jalr	-324(ra) # 80006010 <_Z8printIntiii>
    8000515c:	00005517          	auipc	a0,0x5
    80005160:	31c50513          	addi	a0,a0,796 # 8000a478 <CONSOLE_STATUS+0x468>
    80005164:	00001097          	auipc	ra,0x1
    80005168:	cfc080e7          	jalr	-772(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000516c:	0014849b          	addiw	s1,s1,1
    80005170:	0ff4f493          	andi	s1,s1,255
    80005174:	00f00793          	li	a5,15
    80005178:	fc97f0e3          	bgeu	a5,s1,80005138 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000517c:	00005517          	auipc	a0,0x5
    80005180:	12450513          	addi	a0,a0,292 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005184:	00001097          	auipc	ra,0x1
    80005188:	cdc080e7          	jalr	-804(ra) # 80005e60 <_Z11printStringPKc>
    finishedD = true;
    8000518c:	00100793          	li	a5,1
    80005190:	00008717          	auipc	a4,0x8
    80005194:	d8f70023          	sb	a5,-640(a4) # 8000cf10 <_ZL9finishedD>
    thread_dispatch();
    80005198:	ffffc097          	auipc	ra,0xffffc
    8000519c:	238080e7          	jalr	568(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800051a0:	01813083          	ld	ra,24(sp)
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	00013903          	ld	s2,0(sp)
    800051b0:	02010113          	addi	sp,sp,32
    800051b4:	00008067          	ret

00000000800051b8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800051b8:	fe010113          	addi	sp,sp,-32
    800051bc:	00113c23          	sd	ra,24(sp)
    800051c0:	00813823          	sd	s0,16(sp)
    800051c4:	00913423          	sd	s1,8(sp)
    800051c8:	01213023          	sd	s2,0(sp)
    800051cc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800051d0:	00000493          	li	s1,0
    800051d4:	0400006f          	j	80005214 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800051d8:	00005517          	auipc	a0,0x5
    800051dc:	07050513          	addi	a0,a0,112 # 8000a248 <CONSOLE_STATUS+0x238>
    800051e0:	00001097          	auipc	ra,0x1
    800051e4:	c80080e7          	jalr	-896(ra) # 80005e60 <_Z11printStringPKc>
    800051e8:	00000613          	li	a2,0
    800051ec:	00a00593          	li	a1,10
    800051f0:	00048513          	mv	a0,s1
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	e1c080e7          	jalr	-484(ra) # 80006010 <_Z8printIntiii>
    800051fc:	00005517          	auipc	a0,0x5
    80005200:	27c50513          	addi	a0,a0,636 # 8000a478 <CONSOLE_STATUS+0x468>
    80005204:	00001097          	auipc	ra,0x1
    80005208:	c5c080e7          	jalr	-932(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000520c:	0014849b          	addiw	s1,s1,1
    80005210:	0ff4f493          	andi	s1,s1,255
    80005214:	00200793          	li	a5,2
    80005218:	fc97f0e3          	bgeu	a5,s1,800051d8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000521c:	00005517          	auipc	a0,0x5
    80005220:	03450513          	addi	a0,a0,52 # 8000a250 <CONSOLE_STATUS+0x240>
    80005224:	00001097          	auipc	ra,0x1
    80005228:	c3c080e7          	jalr	-964(ra) # 80005e60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000522c:	00700313          	li	t1,7
    thread_dispatch();
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	1a0080e7          	jalr	416(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005238:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000523c:	00005517          	auipc	a0,0x5
    80005240:	02450513          	addi	a0,a0,36 # 8000a260 <CONSOLE_STATUS+0x250>
    80005244:	00001097          	auipc	ra,0x1
    80005248:	c1c080e7          	jalr	-996(ra) # 80005e60 <_Z11printStringPKc>
    8000524c:	00000613          	li	a2,0
    80005250:	00a00593          	li	a1,10
    80005254:	0009051b          	sext.w	a0,s2
    80005258:	00001097          	auipc	ra,0x1
    8000525c:	db8080e7          	jalr	-584(ra) # 80006010 <_Z8printIntiii>
    80005260:	00005517          	auipc	a0,0x5
    80005264:	21850513          	addi	a0,a0,536 # 8000a478 <CONSOLE_STATUS+0x468>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	bf8080e7          	jalr	-1032(ra) # 80005e60 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005270:	00c00513          	li	a0,12
    80005274:	00000097          	auipc	ra,0x0
    80005278:	d88080e7          	jalr	-632(ra) # 80004ffc <_ZL9fibonaccim>
    8000527c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005280:	00005517          	auipc	a0,0x5
    80005284:	fe850513          	addi	a0,a0,-24 # 8000a268 <CONSOLE_STATUS+0x258>
    80005288:	00001097          	auipc	ra,0x1
    8000528c:	bd8080e7          	jalr	-1064(ra) # 80005e60 <_Z11printStringPKc>
    80005290:	00000613          	li	a2,0
    80005294:	00a00593          	li	a1,10
    80005298:	0009051b          	sext.w	a0,s2
    8000529c:	00001097          	auipc	ra,0x1
    800052a0:	d74080e7          	jalr	-652(ra) # 80006010 <_Z8printIntiii>
    800052a4:	00005517          	auipc	a0,0x5
    800052a8:	1d450513          	addi	a0,a0,468 # 8000a478 <CONSOLE_STATUS+0x468>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	bb4080e7          	jalr	-1100(ra) # 80005e60 <_Z11printStringPKc>
    800052b4:	0400006f          	j	800052f4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800052b8:	00005517          	auipc	a0,0x5
    800052bc:	f9050513          	addi	a0,a0,-112 # 8000a248 <CONSOLE_STATUS+0x238>
    800052c0:	00001097          	auipc	ra,0x1
    800052c4:	ba0080e7          	jalr	-1120(ra) # 80005e60 <_Z11printStringPKc>
    800052c8:	00000613          	li	a2,0
    800052cc:	00a00593          	li	a1,10
    800052d0:	00048513          	mv	a0,s1
    800052d4:	00001097          	auipc	ra,0x1
    800052d8:	d3c080e7          	jalr	-708(ra) # 80006010 <_Z8printIntiii>
    800052dc:	00005517          	auipc	a0,0x5
    800052e0:	19c50513          	addi	a0,a0,412 # 8000a478 <CONSOLE_STATUS+0x468>
    800052e4:	00001097          	auipc	ra,0x1
    800052e8:	b7c080e7          	jalr	-1156(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800052ec:	0014849b          	addiw	s1,s1,1
    800052f0:	0ff4f493          	andi	s1,s1,255
    800052f4:	00500793          	li	a5,5
    800052f8:	fc97f0e3          	bgeu	a5,s1,800052b8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800052fc:	00005517          	auipc	a0,0x5
    80005300:	f2450513          	addi	a0,a0,-220 # 8000a220 <CONSOLE_STATUS+0x210>
    80005304:	00001097          	auipc	ra,0x1
    80005308:	b5c080e7          	jalr	-1188(ra) # 80005e60 <_Z11printStringPKc>
    finishedC = true;
    8000530c:	00100793          	li	a5,1
    80005310:	00008717          	auipc	a4,0x8
    80005314:	c0f700a3          	sb	a5,-1023(a4) # 8000cf11 <_ZL9finishedC>
    thread_dispatch();
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	0b8080e7          	jalr	184(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80005320:	01813083          	ld	ra,24(sp)
    80005324:	01013403          	ld	s0,16(sp)
    80005328:	00813483          	ld	s1,8(sp)
    8000532c:	00013903          	ld	s2,0(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret

0000000080005338 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	01213023          	sd	s2,0(sp)
    8000534c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005350:	00000913          	li	s2,0
    80005354:	0380006f          	j	8000538c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	078080e7          	jalr	120(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005360:	00148493          	addi	s1,s1,1
    80005364:	000027b7          	lui	a5,0x2
    80005368:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000536c:	0097ee63          	bltu	a5,s1,80005388 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005370:	00000713          	li	a4,0
    80005374:	000077b7          	lui	a5,0x7
    80005378:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000537c:	fce7eee3          	bltu	a5,a4,80005358 <_ZL11workerBodyBPv+0x20>
    80005380:	00170713          	addi	a4,a4,1
    80005384:	ff1ff06f          	j	80005374 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005388:	00190913          	addi	s2,s2,1
    8000538c:	00f00793          	li	a5,15
    80005390:	0527e063          	bltu	a5,s2,800053d0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005394:	00005517          	auipc	a0,0x5
    80005398:	e9c50513          	addi	a0,a0,-356 # 8000a230 <CONSOLE_STATUS+0x220>
    8000539c:	00001097          	auipc	ra,0x1
    800053a0:	ac4080e7          	jalr	-1340(ra) # 80005e60 <_Z11printStringPKc>
    800053a4:	00000613          	li	a2,0
    800053a8:	00a00593          	li	a1,10
    800053ac:	0009051b          	sext.w	a0,s2
    800053b0:	00001097          	auipc	ra,0x1
    800053b4:	c60080e7          	jalr	-928(ra) # 80006010 <_Z8printIntiii>
    800053b8:	00005517          	auipc	a0,0x5
    800053bc:	0c050513          	addi	a0,a0,192 # 8000a478 <CONSOLE_STATUS+0x468>
    800053c0:	00001097          	auipc	ra,0x1
    800053c4:	aa0080e7          	jalr	-1376(ra) # 80005e60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800053c8:	00000493          	li	s1,0
    800053cc:	f99ff06f          	j	80005364 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800053d0:	00005517          	auipc	a0,0x5
    800053d4:	e6850513          	addi	a0,a0,-408 # 8000a238 <CONSOLE_STATUS+0x228>
    800053d8:	00001097          	auipc	ra,0x1
    800053dc:	a88080e7          	jalr	-1400(ra) # 80005e60 <_Z11printStringPKc>
    finishedB = true;
    800053e0:	00100793          	li	a5,1
    800053e4:	00008717          	auipc	a4,0x8
    800053e8:	b2f70723          	sb	a5,-1234(a4) # 8000cf12 <_ZL9finishedB>
    thread_dispatch();
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	fe4080e7          	jalr	-28(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800053f4:	01813083          	ld	ra,24(sp)
    800053f8:	01013403          	ld	s0,16(sp)
    800053fc:	00813483          	ld	s1,8(sp)
    80005400:	00013903          	ld	s2,0(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00113c23          	sd	ra,24(sp)
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	01213023          	sd	s2,0(sp)
    80005420:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005424:	00000913          	li	s2,0
    80005428:	0380006f          	j	80005460 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	fa4080e7          	jalr	-92(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005434:	00148493          	addi	s1,s1,1
    80005438:	000027b7          	lui	a5,0x2
    8000543c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005440:	0097ee63          	bltu	a5,s1,8000545c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005444:	00000713          	li	a4,0
    80005448:	000077b7          	lui	a5,0x7
    8000544c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005450:	fce7eee3          	bltu	a5,a4,8000542c <_ZL11workerBodyAPv+0x20>
    80005454:	00170713          	addi	a4,a4,1
    80005458:	ff1ff06f          	j	80005448 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000545c:	00190913          	addi	s2,s2,1
    80005460:	00900793          	li	a5,9
    80005464:	0527e063          	bltu	a5,s2,800054a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005468:	00005517          	auipc	a0,0x5
    8000546c:	db050513          	addi	a0,a0,-592 # 8000a218 <CONSOLE_STATUS+0x208>
    80005470:	00001097          	auipc	ra,0x1
    80005474:	9f0080e7          	jalr	-1552(ra) # 80005e60 <_Z11printStringPKc>
    80005478:	00000613          	li	a2,0
    8000547c:	00a00593          	li	a1,10
    80005480:	0009051b          	sext.w	a0,s2
    80005484:	00001097          	auipc	ra,0x1
    80005488:	b8c080e7          	jalr	-1140(ra) # 80006010 <_Z8printIntiii>
    8000548c:	00005517          	auipc	a0,0x5
    80005490:	fec50513          	addi	a0,a0,-20 # 8000a478 <CONSOLE_STATUS+0x468>
    80005494:	00001097          	auipc	ra,0x1
    80005498:	9cc080e7          	jalr	-1588(ra) # 80005e60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000549c:	00000493          	li	s1,0
    800054a0:	f99ff06f          	j	80005438 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800054a4:	00005517          	auipc	a0,0x5
    800054a8:	d7c50513          	addi	a0,a0,-644 # 8000a220 <CONSOLE_STATUS+0x210>
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	9b4080e7          	jalr	-1612(ra) # 80005e60 <_Z11printStringPKc>
    finishedA = true;
    800054b4:	00100793          	li	a5,1
    800054b8:	00008717          	auipc	a4,0x8
    800054bc:	a4f70da3          	sb	a5,-1445(a4) # 8000cf13 <_ZL9finishedA>
}
    800054c0:	01813083          	ld	ra,24(sp)
    800054c4:	01013403          	ld	s0,16(sp)
    800054c8:	00813483          	ld	s1,8(sp)
    800054cc:	00013903          	ld	s2,0(sp)
    800054d0:	02010113          	addi	sp,sp,32
    800054d4:	00008067          	ret

00000000800054d8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800054d8:	fd010113          	addi	sp,sp,-48
    800054dc:	02113423          	sd	ra,40(sp)
    800054e0:	02813023          	sd	s0,32(sp)
    800054e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800054e8:	00000613          	li	a2,0
    800054ec:	00000597          	auipc	a1,0x0
    800054f0:	f2058593          	addi	a1,a1,-224 # 8000540c <_ZL11workerBodyAPv>
    800054f4:	fd040513          	addi	a0,s0,-48
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	e04080e7          	jalr	-508(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005500:	00005517          	auipc	a0,0x5
    80005504:	db050513          	addi	a0,a0,-592 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005508:	00001097          	auipc	ra,0x1
    8000550c:	958080e7          	jalr	-1704(ra) # 80005e60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005510:	00000613          	li	a2,0
    80005514:	00000597          	auipc	a1,0x0
    80005518:	e2458593          	addi	a1,a1,-476 # 80005338 <_ZL11workerBodyBPv>
    8000551c:	fd840513          	addi	a0,s0,-40
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	ddc080e7          	jalr	-548(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005528:	00005517          	auipc	a0,0x5
    8000552c:	da050513          	addi	a0,a0,-608 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80005530:	00001097          	auipc	ra,0x1
    80005534:	930080e7          	jalr	-1744(ra) # 80005e60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005538:	00000613          	li	a2,0
    8000553c:	00000597          	auipc	a1,0x0
    80005540:	c7c58593          	addi	a1,a1,-900 # 800051b8 <_ZL11workerBodyCPv>
    80005544:	fe040513          	addi	a0,s0,-32
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	db4080e7          	jalr	-588(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005550:	00005517          	auipc	a0,0x5
    80005554:	d9050513          	addi	a0,a0,-624 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	908080e7          	jalr	-1784(ra) # 80005e60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005560:	00000613          	li	a2,0
    80005564:	00000597          	auipc	a1,0x0
    80005568:	b0c58593          	addi	a1,a1,-1268 # 80005070 <_ZL11workerBodyDPv>
    8000556c:	fe840513          	addi	a0,s0,-24
    80005570:	ffffc097          	auipc	ra,0xffffc
    80005574:	d8c080e7          	jalr	-628(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005578:	00005517          	auipc	a0,0x5
    8000557c:	d8050513          	addi	a0,a0,-640 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005580:	00001097          	auipc	ra,0x1
    80005584:	8e0080e7          	jalr	-1824(ra) # 80005e60 <_Z11printStringPKc>
    80005588:	00c0006f          	j	80005594 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000558c:	ffffc097          	auipc	ra,0xffffc
    80005590:	e44080e7          	jalr	-444(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005594:	00008797          	auipc	a5,0x8
    80005598:	97f7c783          	lbu	a5,-1665(a5) # 8000cf13 <_ZL9finishedA>
    8000559c:	fe0788e3          	beqz	a5,8000558c <_Z18Threads_C_API_testv+0xb4>
    800055a0:	00008797          	auipc	a5,0x8
    800055a4:	9727c783          	lbu	a5,-1678(a5) # 8000cf12 <_ZL9finishedB>
    800055a8:	fe0782e3          	beqz	a5,8000558c <_Z18Threads_C_API_testv+0xb4>
    800055ac:	00008797          	auipc	a5,0x8
    800055b0:	9657c783          	lbu	a5,-1691(a5) # 8000cf11 <_ZL9finishedC>
    800055b4:	fc078ce3          	beqz	a5,8000558c <_Z18Threads_C_API_testv+0xb4>
    800055b8:	00008797          	auipc	a5,0x8
    800055bc:	9587c783          	lbu	a5,-1704(a5) # 8000cf10 <_ZL9finishedD>
    800055c0:	fc0786e3          	beqz	a5,8000558c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800055c4:	02813083          	ld	ra,40(sp)
    800055c8:	02013403          	ld	s0,32(sp)
    800055cc:	03010113          	addi	sp,sp,48
    800055d0:	00008067          	ret

00000000800055d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800055d4:	fd010113          	addi	sp,sp,-48
    800055d8:	02113423          	sd	ra,40(sp)
    800055dc:	02813023          	sd	s0,32(sp)
    800055e0:	00913c23          	sd	s1,24(sp)
    800055e4:	01213823          	sd	s2,16(sp)
    800055e8:	01313423          	sd	s3,8(sp)
    800055ec:	03010413          	addi	s0,sp,48
    800055f0:	00050993          	mv	s3,a0
    800055f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800055f8:	00000913          	li	s2,0
    800055fc:	00c0006f          	j	80005608 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005600:	ffffd097          	auipc	ra,0xffffd
    80005604:	0f0080e7          	jalr	240(ra) # 800026f0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	028080e7          	jalr	40(ra) # 80001630 <_Z4getcv>
    80005610:	0005059b          	sext.w	a1,a0
    80005614:	01b00793          	li	a5,27
    80005618:	02f58a63          	beq	a1,a5,8000564c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000561c:	0084b503          	ld	a0,8(s1)
    80005620:	00001097          	auipc	ra,0x1
    80005624:	c64080e7          	jalr	-924(ra) # 80006284 <_ZN9BufferCPP3putEi>
        i++;
    80005628:	0019071b          	addiw	a4,s2,1
    8000562c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005630:	0004a683          	lw	a3,0(s1)
    80005634:	0026979b          	slliw	a5,a3,0x2
    80005638:	00d787bb          	addw	a5,a5,a3
    8000563c:	0017979b          	slliw	a5,a5,0x1
    80005640:	02f767bb          	remw	a5,a4,a5
    80005644:	fc0792e3          	bnez	a5,80005608 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005648:	fb9ff06f          	j	80005600 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000564c:	00100793          	li	a5,1
    80005650:	00008717          	auipc	a4,0x8
    80005654:	8cf72423          	sw	a5,-1848(a4) # 8000cf18 <_ZL9threadEnd>
    td->buffer->put('!');
    80005658:	0209b783          	ld	a5,32(s3)
    8000565c:	02100593          	li	a1,33
    80005660:	0087b503          	ld	a0,8(a5)
    80005664:	00001097          	auipc	ra,0x1
    80005668:	c20080e7          	jalr	-992(ra) # 80006284 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000566c:	0104b503          	ld	a0,16(s1)
    80005670:	ffffd097          	auipc	ra,0xffffd
    80005674:	150080e7          	jalr	336(ra) # 800027c0 <_ZN9Semaphore6signalEv>
}
    80005678:	02813083          	ld	ra,40(sp)
    8000567c:	02013403          	ld	s0,32(sp)
    80005680:	01813483          	ld	s1,24(sp)
    80005684:	01013903          	ld	s2,16(sp)
    80005688:	00813983          	ld	s3,8(sp)
    8000568c:	03010113          	addi	sp,sp,48
    80005690:	00008067          	ret

0000000080005694 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005694:	fe010113          	addi	sp,sp,-32
    80005698:	00113c23          	sd	ra,24(sp)
    8000569c:	00813823          	sd	s0,16(sp)
    800056a0:	00913423          	sd	s1,8(sp)
    800056a4:	01213023          	sd	s2,0(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800056b0:	00000913          	li	s2,0
    800056b4:	00c0006f          	j	800056c0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	038080e7          	jalr	56(ra) # 800026f0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800056c0:	00008797          	auipc	a5,0x8
    800056c4:	8587a783          	lw	a5,-1960(a5) # 8000cf18 <_ZL9threadEnd>
    800056c8:	02079e63          	bnez	a5,80005704 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800056cc:	0004a583          	lw	a1,0(s1)
    800056d0:	0305859b          	addiw	a1,a1,48
    800056d4:	0084b503          	ld	a0,8(s1)
    800056d8:	00001097          	auipc	ra,0x1
    800056dc:	bac080e7          	jalr	-1108(ra) # 80006284 <_ZN9BufferCPP3putEi>
        i++;
    800056e0:	0019071b          	addiw	a4,s2,1
    800056e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800056e8:	0004a683          	lw	a3,0(s1)
    800056ec:	0026979b          	slliw	a5,a3,0x2
    800056f0:	00d787bb          	addw	a5,a5,a3
    800056f4:	0017979b          	slliw	a5,a5,0x1
    800056f8:	02f767bb          	remw	a5,a4,a5
    800056fc:	fc0792e3          	bnez	a5,800056c0 <_ZN12ProducerSync8producerEPv+0x2c>
    80005700:	fb9ff06f          	j	800056b8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005704:	0104b503          	ld	a0,16(s1)
    80005708:	ffffd097          	auipc	ra,0xffffd
    8000570c:	0b8080e7          	jalr	184(ra) # 800027c0 <_ZN9Semaphore6signalEv>
}
    80005710:	01813083          	ld	ra,24(sp)
    80005714:	01013403          	ld	s0,16(sp)
    80005718:	00813483          	ld	s1,8(sp)
    8000571c:	00013903          	ld	s2,0(sp)
    80005720:	02010113          	addi	sp,sp,32
    80005724:	00008067          	ret

0000000080005728 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005728:	fd010113          	addi	sp,sp,-48
    8000572c:	02113423          	sd	ra,40(sp)
    80005730:	02813023          	sd	s0,32(sp)
    80005734:	00913c23          	sd	s1,24(sp)
    80005738:	01213823          	sd	s2,16(sp)
    8000573c:	01313423          	sd	s3,8(sp)
    80005740:	01413023          	sd	s4,0(sp)
    80005744:	03010413          	addi	s0,sp,48
    80005748:	00050993          	mv	s3,a0
    8000574c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005750:	00000a13          	li	s4,0
    80005754:	01c0006f          	j	80005770 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	f98080e7          	jalr	-104(ra) # 800026f0 <_ZN6Thread8dispatchEv>
    80005760:	0500006f          	j	800057b0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005764:	00a00513          	li	a0,10
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	f14080e7          	jalr	-236(ra) # 8000167c <_Z4putcc>
    while (!threadEnd) {
    80005770:	00007797          	auipc	a5,0x7
    80005774:	7a87a783          	lw	a5,1960(a5) # 8000cf18 <_ZL9threadEnd>
    80005778:	06079263          	bnez	a5,800057dc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000577c:	00893503          	ld	a0,8(s2)
    80005780:	00001097          	auipc	ra,0x1
    80005784:	b94080e7          	jalr	-1132(ra) # 80006314 <_ZN9BufferCPP3getEv>
        i++;
    80005788:	001a049b          	addiw	s1,s4,1
    8000578c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005790:	0ff57513          	andi	a0,a0,255
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	ee8080e7          	jalr	-280(ra) # 8000167c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000579c:	00092703          	lw	a4,0(s2)
    800057a0:	0027179b          	slliw	a5,a4,0x2
    800057a4:	00e787bb          	addw	a5,a5,a4
    800057a8:	02f4e7bb          	remw	a5,s1,a5
    800057ac:	fa0786e3          	beqz	a5,80005758 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800057b0:	05000793          	li	a5,80
    800057b4:	02f4e4bb          	remw	s1,s1,a5
    800057b8:	fa049ce3          	bnez	s1,80005770 <_ZN12ConsumerSync8consumerEPv+0x48>
    800057bc:	fa9ff06f          	j	80005764 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800057c0:	0209b783          	ld	a5,32(s3)
    800057c4:	0087b503          	ld	a0,8(a5)
    800057c8:	00001097          	auipc	ra,0x1
    800057cc:	b4c080e7          	jalr	-1204(ra) # 80006314 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800057d0:	0ff57513          	andi	a0,a0,255
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	0bc080e7          	jalr	188(ra) # 80002890 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800057dc:	0209b783          	ld	a5,32(s3)
    800057e0:	0087b503          	ld	a0,8(a5)
    800057e4:	00001097          	auipc	ra,0x1
    800057e8:	bbc080e7          	jalr	-1092(ra) # 800063a0 <_ZN9BufferCPP6getCntEv>
    800057ec:	fca04ae3          	bgtz	a0,800057c0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800057f0:	01093503          	ld	a0,16(s2)
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	fcc080e7          	jalr	-52(ra) # 800027c0 <_ZN9Semaphore6signalEv>
}
    800057fc:	02813083          	ld	ra,40(sp)
    80005800:	02013403          	ld	s0,32(sp)
    80005804:	01813483          	ld	s1,24(sp)
    80005808:	01013903          	ld	s2,16(sp)
    8000580c:	00813983          	ld	s3,8(sp)
    80005810:	00013a03          	ld	s4,0(sp)
    80005814:	03010113          	addi	sp,sp,48
    80005818:	00008067          	ret

000000008000581c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000581c:	f8010113          	addi	sp,sp,-128
    80005820:	06113c23          	sd	ra,120(sp)
    80005824:	06813823          	sd	s0,112(sp)
    80005828:	06913423          	sd	s1,104(sp)
    8000582c:	07213023          	sd	s2,96(sp)
    80005830:	05313c23          	sd	s3,88(sp)
    80005834:	05413823          	sd	s4,80(sp)
    80005838:	05513423          	sd	s5,72(sp)
    8000583c:	05613023          	sd	s6,64(sp)
    80005840:	03713c23          	sd	s7,56(sp)
    80005844:	03813823          	sd	s8,48(sp)
    80005848:	03913423          	sd	s9,40(sp)
    8000584c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005850:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005854:	00005517          	auipc	a0,0x5
    80005858:	8dc50513          	addi	a0,a0,-1828 # 8000a130 <CONSOLE_STATUS+0x120>
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	604080e7          	jalr	1540(ra) # 80005e60 <_Z11printStringPKc>
    getString(input, 30);
    80005864:	01e00593          	li	a1,30
    80005868:	f8040493          	addi	s1,s0,-128
    8000586c:	00048513          	mv	a0,s1
    80005870:	00000097          	auipc	ra,0x0
    80005874:	678080e7          	jalr	1656(ra) # 80005ee8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005878:	00048513          	mv	a0,s1
    8000587c:	00000097          	auipc	ra,0x0
    80005880:	744080e7          	jalr	1860(ra) # 80005fc0 <_Z11stringToIntPKc>
    80005884:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005888:	00005517          	auipc	a0,0x5
    8000588c:	8c850513          	addi	a0,a0,-1848 # 8000a150 <CONSOLE_STATUS+0x140>
    80005890:	00000097          	auipc	ra,0x0
    80005894:	5d0080e7          	jalr	1488(ra) # 80005e60 <_Z11printStringPKc>
    getString(input, 30);
    80005898:	01e00593          	li	a1,30
    8000589c:	00048513          	mv	a0,s1
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	648080e7          	jalr	1608(ra) # 80005ee8 <_Z9getStringPci>
    n = stringToInt(input);
    800058a8:	00048513          	mv	a0,s1
    800058ac:	00000097          	auipc	ra,0x0
    800058b0:	714080e7          	jalr	1812(ra) # 80005fc0 <_Z11stringToIntPKc>
    800058b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800058b8:	00005517          	auipc	a0,0x5
    800058bc:	8b850513          	addi	a0,a0,-1864 # 8000a170 <CONSOLE_STATUS+0x160>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	5a0080e7          	jalr	1440(ra) # 80005e60 <_Z11printStringPKc>
    800058c8:	00000613          	li	a2,0
    800058cc:	00a00593          	li	a1,10
    800058d0:	00090513          	mv	a0,s2
    800058d4:	00000097          	auipc	ra,0x0
    800058d8:	73c080e7          	jalr	1852(ra) # 80006010 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800058dc:	00005517          	auipc	a0,0x5
    800058e0:	8ac50513          	addi	a0,a0,-1876 # 8000a188 <CONSOLE_STATUS+0x178>
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	57c080e7          	jalr	1404(ra) # 80005e60 <_Z11printStringPKc>
    800058ec:	00000613          	li	a2,0
    800058f0:	00a00593          	li	a1,10
    800058f4:	00048513          	mv	a0,s1
    800058f8:	00000097          	auipc	ra,0x0
    800058fc:	718080e7          	jalr	1816(ra) # 80006010 <_Z8printIntiii>
    printString(".\n");
    80005900:	00005517          	auipc	a0,0x5
    80005904:	8a050513          	addi	a0,a0,-1888 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005908:	00000097          	auipc	ra,0x0
    8000590c:	558080e7          	jalr	1368(ra) # 80005e60 <_Z11printStringPKc>
    if(threadNum > n) {
    80005910:	0324c463          	blt	s1,s2,80005938 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005914:	03205c63          	blez	s2,8000594c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005918:	03800513          	li	a0,56
    8000591c:	ffffd097          	auipc	ra,0xffffd
    80005920:	be4080e7          	jalr	-1052(ra) # 80002500 <_Znwm>
    80005924:	00050a93          	mv	s5,a0
    80005928:	00048593          	mv	a1,s1
    8000592c:	00001097          	auipc	ra,0x1
    80005930:	804080e7          	jalr	-2044(ra) # 80006130 <_ZN9BufferCPPC1Ei>
    80005934:	0300006f          	j	80005964 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005938:	00005517          	auipc	a0,0x5
    8000593c:	87050513          	addi	a0,a0,-1936 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005940:	00000097          	auipc	ra,0x0
    80005944:	520080e7          	jalr	1312(ra) # 80005e60 <_Z11printStringPKc>
        return;
    80005948:	0140006f          	j	8000595c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000594c:	00005517          	auipc	a0,0x5
    80005950:	89c50513          	addi	a0,a0,-1892 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	50c080e7          	jalr	1292(ra) # 80005e60 <_Z11printStringPKc>
        return;
    8000595c:	000b8113          	mv	sp,s7
    80005960:	2380006f          	j	80005b98 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005964:	01000513          	li	a0,16
    80005968:	ffffd097          	auipc	ra,0xffffd
    8000596c:	b98080e7          	jalr	-1128(ra) # 80002500 <_Znwm>
    80005970:	00050493          	mv	s1,a0
    80005974:	00000593          	li	a1,0
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	dd4080e7          	jalr	-556(ra) # 8000274c <_ZN9SemaphoreC1Ej>
    80005980:	00007797          	auipc	a5,0x7
    80005984:	5a97b023          	sd	s1,1440(a5) # 8000cf20 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005988:	00391793          	slli	a5,s2,0x3
    8000598c:	00f78793          	addi	a5,a5,15
    80005990:	ff07f793          	andi	a5,a5,-16
    80005994:	40f10133          	sub	sp,sp,a5
    80005998:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000599c:	0019071b          	addiw	a4,s2,1
    800059a0:	00171793          	slli	a5,a4,0x1
    800059a4:	00e787b3          	add	a5,a5,a4
    800059a8:	00379793          	slli	a5,a5,0x3
    800059ac:	00f78793          	addi	a5,a5,15
    800059b0:	ff07f793          	andi	a5,a5,-16
    800059b4:	40f10133          	sub	sp,sp,a5
    800059b8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800059bc:	00191c13          	slli	s8,s2,0x1
    800059c0:	012c07b3          	add	a5,s8,s2
    800059c4:	00379793          	slli	a5,a5,0x3
    800059c8:	00fa07b3          	add	a5,s4,a5
    800059cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800059d0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800059d4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800059d8:	02800513          	li	a0,40
    800059dc:	ffffd097          	auipc	ra,0xffffd
    800059e0:	b24080e7          	jalr	-1244(ra) # 80002500 <_Znwm>
    800059e4:	00050b13          	mv	s6,a0
    800059e8:	012c0c33          	add	s8,s8,s2
    800059ec:	003c1c13          	slli	s8,s8,0x3
    800059f0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800059f4:	ffffd097          	auipc	ra,0xffffd
    800059f8:	c9c080e7          	jalr	-868(ra) # 80002690 <_ZN6ThreadC1Ev>
    800059fc:	00007797          	auipc	a5,0x7
    80005a00:	31c78793          	addi	a5,a5,796 # 8000cd18 <_ZTV12ConsumerSync+0x10>
    80005a04:	00fb3023          	sd	a5,0(s6)
    80005a08:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005a0c:	000b0513          	mv	a0,s6
    80005a10:	ffffd097          	auipc	ra,0xffffd
    80005a14:	d08080e7          	jalr	-760(ra) # 80002718 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a18:	00000493          	li	s1,0
    80005a1c:	0380006f          	j	80005a54 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a20:	00007797          	auipc	a5,0x7
    80005a24:	2d078793          	addi	a5,a5,720 # 8000ccf0 <_ZTV12ProducerSync+0x10>
    80005a28:	00fcb023          	sd	a5,0(s9)
    80005a2c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005a30:	00349793          	slli	a5,s1,0x3
    80005a34:	00f987b3          	add	a5,s3,a5
    80005a38:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005a3c:	00349793          	slli	a5,s1,0x3
    80005a40:	00f987b3          	add	a5,s3,a5
    80005a44:	0007b503          	ld	a0,0(a5)
    80005a48:	ffffd097          	auipc	ra,0xffffd
    80005a4c:	cd0080e7          	jalr	-816(ra) # 80002718 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a50:	0014849b          	addiw	s1,s1,1
    80005a54:	0b24d063          	bge	s1,s2,80005af4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005a58:	00149793          	slli	a5,s1,0x1
    80005a5c:	009787b3          	add	a5,a5,s1
    80005a60:	00379793          	slli	a5,a5,0x3
    80005a64:	00fa07b3          	add	a5,s4,a5
    80005a68:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005a6c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005a70:	00007717          	auipc	a4,0x7
    80005a74:	4b073703          	ld	a4,1200(a4) # 8000cf20 <_ZL10waitForAll>
    80005a78:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005a7c:	02905863          	blez	s1,80005aac <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005a80:	02800513          	li	a0,40
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	a7c080e7          	jalr	-1412(ra) # 80002500 <_Znwm>
    80005a8c:	00050c93          	mv	s9,a0
    80005a90:	00149c13          	slli	s8,s1,0x1
    80005a94:	009c0c33          	add	s8,s8,s1
    80005a98:	003c1c13          	slli	s8,s8,0x3
    80005a9c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	bf0080e7          	jalr	-1040(ra) # 80002690 <_ZN6ThreadC1Ev>
    80005aa8:	f79ff06f          	j	80005a20 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005aac:	02800513          	li	a0,40
    80005ab0:	ffffd097          	auipc	ra,0xffffd
    80005ab4:	a50080e7          	jalr	-1456(ra) # 80002500 <_Znwm>
    80005ab8:	00050c93          	mv	s9,a0
    80005abc:	00149c13          	slli	s8,s1,0x1
    80005ac0:	009c0c33          	add	s8,s8,s1
    80005ac4:	003c1c13          	slli	s8,s8,0x3
    80005ac8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005acc:	ffffd097          	auipc	ra,0xffffd
    80005ad0:	bc4080e7          	jalr	-1084(ra) # 80002690 <_ZN6ThreadC1Ev>
    80005ad4:	00007797          	auipc	a5,0x7
    80005ad8:	1f478793          	addi	a5,a5,500 # 8000ccc8 <_ZTV16ProducerKeyboard+0x10>
    80005adc:	00fcb023          	sd	a5,0(s9)
    80005ae0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005ae4:	00349793          	slli	a5,s1,0x3
    80005ae8:	00f987b3          	add	a5,s3,a5
    80005aec:	0197b023          	sd	s9,0(a5)
    80005af0:	f4dff06f          	j	80005a3c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005af4:	ffffd097          	auipc	ra,0xffffd
    80005af8:	bfc080e7          	jalr	-1028(ra) # 800026f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005afc:	00000493          	li	s1,0
    80005b00:	00994e63          	blt	s2,s1,80005b1c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005b04:	00007517          	auipc	a0,0x7
    80005b08:	41c53503          	ld	a0,1052(a0) # 8000cf20 <_ZL10waitForAll>
    80005b0c:	ffffd097          	auipc	ra,0xffffd
    80005b10:	c7c080e7          	jalr	-900(ra) # 80002788 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005b14:	0014849b          	addiw	s1,s1,1
    80005b18:	fe9ff06f          	j	80005b00 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005b1c:	00000493          	li	s1,0
    80005b20:	0080006f          	j	80005b28 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005b24:	0014849b          	addiw	s1,s1,1
    80005b28:	0324d263          	bge	s1,s2,80005b4c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005b2c:	00349793          	slli	a5,s1,0x3
    80005b30:	00f987b3          	add	a5,s3,a5
    80005b34:	0007b503          	ld	a0,0(a5)
    80005b38:	fe0506e3          	beqz	a0,80005b24 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005b3c:	00053783          	ld	a5,0(a0)
    80005b40:	0087b783          	ld	a5,8(a5)
    80005b44:	000780e7          	jalr	a5
    80005b48:	fddff06f          	j	80005b24 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005b4c:	000b0a63          	beqz	s6,80005b60 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005b50:	000b3783          	ld	a5,0(s6)
    80005b54:	0087b783          	ld	a5,8(a5)
    80005b58:	000b0513          	mv	a0,s6
    80005b5c:	000780e7          	jalr	a5
    delete waitForAll;
    80005b60:	00007517          	auipc	a0,0x7
    80005b64:	3c053503          	ld	a0,960(a0) # 8000cf20 <_ZL10waitForAll>
    80005b68:	00050863          	beqz	a0,80005b78 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005b6c:	00053783          	ld	a5,0(a0)
    80005b70:	0087b783          	ld	a5,8(a5)
    80005b74:	000780e7          	jalr	a5
    delete buffer;
    80005b78:	000a8e63          	beqz	s5,80005b94 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005b7c:	000a8513          	mv	a0,s5
    80005b80:	00001097          	auipc	ra,0x1
    80005b84:	8a8080e7          	jalr	-1880(ra) # 80006428 <_ZN9BufferCPPD1Ev>
    80005b88:	000a8513          	mv	a0,s5
    80005b8c:	ffffd097          	auipc	ra,0xffffd
    80005b90:	9ec080e7          	jalr	-1556(ra) # 80002578 <_ZdlPv>
    80005b94:	000b8113          	mv	sp,s7

}
    80005b98:	f8040113          	addi	sp,s0,-128
    80005b9c:	07813083          	ld	ra,120(sp)
    80005ba0:	07013403          	ld	s0,112(sp)
    80005ba4:	06813483          	ld	s1,104(sp)
    80005ba8:	06013903          	ld	s2,96(sp)
    80005bac:	05813983          	ld	s3,88(sp)
    80005bb0:	05013a03          	ld	s4,80(sp)
    80005bb4:	04813a83          	ld	s5,72(sp)
    80005bb8:	04013b03          	ld	s6,64(sp)
    80005bbc:	03813b83          	ld	s7,56(sp)
    80005bc0:	03013c03          	ld	s8,48(sp)
    80005bc4:	02813c83          	ld	s9,40(sp)
    80005bc8:	08010113          	addi	sp,sp,128
    80005bcc:	00008067          	ret
    80005bd0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005bd4:	000a8513          	mv	a0,s5
    80005bd8:	ffffd097          	auipc	ra,0xffffd
    80005bdc:	9a0080e7          	jalr	-1632(ra) # 80002578 <_ZdlPv>
    80005be0:	00048513          	mv	a0,s1
    80005be4:	00008097          	auipc	ra,0x8
    80005be8:	424080e7          	jalr	1060(ra) # 8000e008 <_Unwind_Resume>
    80005bec:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005bf0:	00048513          	mv	a0,s1
    80005bf4:	ffffd097          	auipc	ra,0xffffd
    80005bf8:	984080e7          	jalr	-1660(ra) # 80002578 <_ZdlPv>
    80005bfc:	00090513          	mv	a0,s2
    80005c00:	00008097          	auipc	ra,0x8
    80005c04:	408080e7          	jalr	1032(ra) # 8000e008 <_Unwind_Resume>
    80005c08:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005c0c:	000b0513          	mv	a0,s6
    80005c10:	ffffd097          	auipc	ra,0xffffd
    80005c14:	968080e7          	jalr	-1688(ra) # 80002578 <_ZdlPv>
    80005c18:	00048513          	mv	a0,s1
    80005c1c:	00008097          	auipc	ra,0x8
    80005c20:	3ec080e7          	jalr	1004(ra) # 8000e008 <_Unwind_Resume>
    80005c24:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005c28:	000c8513          	mv	a0,s9
    80005c2c:	ffffd097          	auipc	ra,0xffffd
    80005c30:	94c080e7          	jalr	-1716(ra) # 80002578 <_ZdlPv>
    80005c34:	00048513          	mv	a0,s1
    80005c38:	00008097          	auipc	ra,0x8
    80005c3c:	3d0080e7          	jalr	976(ra) # 8000e008 <_Unwind_Resume>
    80005c40:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005c44:	000c8513          	mv	a0,s9
    80005c48:	ffffd097          	auipc	ra,0xffffd
    80005c4c:	930080e7          	jalr	-1744(ra) # 80002578 <_ZdlPv>
    80005c50:	00048513          	mv	a0,s1
    80005c54:	00008097          	auipc	ra,0x8
    80005c58:	3b4080e7          	jalr	948(ra) # 8000e008 <_Unwind_Resume>

0000000080005c5c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005c5c:	ff010113          	addi	sp,sp,-16
    80005c60:	00113423          	sd	ra,8(sp)
    80005c64:	00813023          	sd	s0,0(sp)
    80005c68:	01010413          	addi	s0,sp,16
    80005c6c:	00007797          	auipc	a5,0x7
    80005c70:	0ac78793          	addi	a5,a5,172 # 8000cd18 <_ZTV12ConsumerSync+0x10>
    80005c74:	00f53023          	sd	a5,0(a0)
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	928080e7          	jalr	-1752(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005c80:	00813083          	ld	ra,8(sp)
    80005c84:	00013403          	ld	s0,0(sp)
    80005c88:	01010113          	addi	sp,sp,16
    80005c8c:	00008067          	ret

0000000080005c90 <_ZN12ConsumerSyncD0Ev>:
    80005c90:	fe010113          	addi	sp,sp,-32
    80005c94:	00113c23          	sd	ra,24(sp)
    80005c98:	00813823          	sd	s0,16(sp)
    80005c9c:	00913423          	sd	s1,8(sp)
    80005ca0:	02010413          	addi	s0,sp,32
    80005ca4:	00050493          	mv	s1,a0
    80005ca8:	00007797          	auipc	a5,0x7
    80005cac:	07078793          	addi	a5,a5,112 # 8000cd18 <_ZTV12ConsumerSync+0x10>
    80005cb0:	00f53023          	sd	a5,0(a0)
    80005cb4:	ffffd097          	auipc	ra,0xffffd
    80005cb8:	8ec080e7          	jalr	-1812(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005cbc:	00048513          	mv	a0,s1
    80005cc0:	ffffd097          	auipc	ra,0xffffd
    80005cc4:	8b8080e7          	jalr	-1864(ra) # 80002578 <_ZdlPv>
    80005cc8:	01813083          	ld	ra,24(sp)
    80005ccc:	01013403          	ld	s0,16(sp)
    80005cd0:	00813483          	ld	s1,8(sp)
    80005cd4:	02010113          	addi	sp,sp,32
    80005cd8:	00008067          	ret

0000000080005cdc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005cdc:	ff010113          	addi	sp,sp,-16
    80005ce0:	00113423          	sd	ra,8(sp)
    80005ce4:	00813023          	sd	s0,0(sp)
    80005ce8:	01010413          	addi	s0,sp,16
    80005cec:	00007797          	auipc	a5,0x7
    80005cf0:	00478793          	addi	a5,a5,4 # 8000ccf0 <_ZTV12ProducerSync+0x10>
    80005cf4:	00f53023          	sd	a5,0(a0)
    80005cf8:	ffffd097          	auipc	ra,0xffffd
    80005cfc:	8a8080e7          	jalr	-1880(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005d00:	00813083          	ld	ra,8(sp)
    80005d04:	00013403          	ld	s0,0(sp)
    80005d08:	01010113          	addi	sp,sp,16
    80005d0c:	00008067          	ret

0000000080005d10 <_ZN12ProducerSyncD0Ev>:
    80005d10:	fe010113          	addi	sp,sp,-32
    80005d14:	00113c23          	sd	ra,24(sp)
    80005d18:	00813823          	sd	s0,16(sp)
    80005d1c:	00913423          	sd	s1,8(sp)
    80005d20:	02010413          	addi	s0,sp,32
    80005d24:	00050493          	mv	s1,a0
    80005d28:	00007797          	auipc	a5,0x7
    80005d2c:	fc878793          	addi	a5,a5,-56 # 8000ccf0 <_ZTV12ProducerSync+0x10>
    80005d30:	00f53023          	sd	a5,0(a0)
    80005d34:	ffffd097          	auipc	ra,0xffffd
    80005d38:	86c080e7          	jalr	-1940(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	ffffd097          	auipc	ra,0xffffd
    80005d44:	838080e7          	jalr	-1992(ra) # 80002578 <_ZdlPv>
    80005d48:	01813083          	ld	ra,24(sp)
    80005d4c:	01013403          	ld	s0,16(sp)
    80005d50:	00813483          	ld	s1,8(sp)
    80005d54:	02010113          	addi	sp,sp,32
    80005d58:	00008067          	ret

0000000080005d5c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005d5c:	ff010113          	addi	sp,sp,-16
    80005d60:	00113423          	sd	ra,8(sp)
    80005d64:	00813023          	sd	s0,0(sp)
    80005d68:	01010413          	addi	s0,sp,16
    80005d6c:	00007797          	auipc	a5,0x7
    80005d70:	f5c78793          	addi	a5,a5,-164 # 8000ccc8 <_ZTV16ProducerKeyboard+0x10>
    80005d74:	00f53023          	sd	a5,0(a0)
    80005d78:	ffffd097          	auipc	ra,0xffffd
    80005d7c:	828080e7          	jalr	-2008(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005d80:	00813083          	ld	ra,8(sp)
    80005d84:	00013403          	ld	s0,0(sp)
    80005d88:	01010113          	addi	sp,sp,16
    80005d8c:	00008067          	ret

0000000080005d90 <_ZN16ProducerKeyboardD0Ev>:
    80005d90:	fe010113          	addi	sp,sp,-32
    80005d94:	00113c23          	sd	ra,24(sp)
    80005d98:	00813823          	sd	s0,16(sp)
    80005d9c:	00913423          	sd	s1,8(sp)
    80005da0:	02010413          	addi	s0,sp,32
    80005da4:	00050493          	mv	s1,a0
    80005da8:	00007797          	auipc	a5,0x7
    80005dac:	f2078793          	addi	a5,a5,-224 # 8000ccc8 <_ZTV16ProducerKeyboard+0x10>
    80005db0:	00f53023          	sd	a5,0(a0)
    80005db4:	ffffc097          	auipc	ra,0xffffc
    80005db8:	7ec080e7          	jalr	2028(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005dbc:	00048513          	mv	a0,s1
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	7b8080e7          	jalr	1976(ra) # 80002578 <_ZdlPv>
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	02010113          	addi	sp,sp,32
    80005dd8:	00008067          	ret

0000000080005ddc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ddc:	ff010113          	addi	sp,sp,-16
    80005de0:	00113423          	sd	ra,8(sp)
    80005de4:	00813023          	sd	s0,0(sp)
    80005de8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005dec:	02053583          	ld	a1,32(a0)
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	7e4080e7          	jalr	2020(ra) # 800055d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005df8:	00813083          	ld	ra,8(sp)
    80005dfc:	00013403          	ld	s0,0(sp)
    80005e00:	01010113          	addi	sp,sp,16
    80005e04:	00008067          	ret

0000000080005e08 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005e08:	ff010113          	addi	sp,sp,-16
    80005e0c:	00113423          	sd	ra,8(sp)
    80005e10:	00813023          	sd	s0,0(sp)
    80005e14:	01010413          	addi	s0,sp,16
        producer(td);
    80005e18:	02053583          	ld	a1,32(a0)
    80005e1c:	00000097          	auipc	ra,0x0
    80005e20:	878080e7          	jalr	-1928(ra) # 80005694 <_ZN12ProducerSync8producerEPv>
    }
    80005e24:	00813083          	ld	ra,8(sp)
    80005e28:	00013403          	ld	s0,0(sp)
    80005e2c:	01010113          	addi	sp,sp,16
    80005e30:	00008067          	ret

0000000080005e34 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005e34:	ff010113          	addi	sp,sp,-16
    80005e38:	00113423          	sd	ra,8(sp)
    80005e3c:	00813023          	sd	s0,0(sp)
    80005e40:	01010413          	addi	s0,sp,16
        consumer(td);
    80005e44:	02053583          	ld	a1,32(a0)
    80005e48:	00000097          	auipc	ra,0x0
    80005e4c:	8e0080e7          	jalr	-1824(ra) # 80005728 <_ZN12ConsumerSync8consumerEPv>
    }
    80005e50:	00813083          	ld	ra,8(sp)
    80005e54:	00013403          	ld	s0,0(sp)
    80005e58:	01010113          	addi	sp,sp,16
    80005e5c:	00008067          	ret

0000000080005e60 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005e60:	fe010113          	addi	sp,sp,-32
    80005e64:	00113c23          	sd	ra,24(sp)
    80005e68:	00813823          	sd	s0,16(sp)
    80005e6c:	00913423          	sd	s1,8(sp)
    80005e70:	02010413          	addi	s0,sp,32
    80005e74:	00050493          	mv	s1,a0
    LOCK();
    80005e78:	00100613          	li	a2,1
    80005e7c:	00000593          	li	a1,0
    80005e80:	00007517          	auipc	a0,0x7
    80005e84:	0a850513          	addi	a0,a0,168 # 8000cf28 <lockPrint>
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	39c080e7          	jalr	924(ra) # 80001224 <copy_and_swap>
    80005e90:	00050863          	beqz	a0,80005ea0 <_Z11printStringPKc+0x40>
    80005e94:	ffffb097          	auipc	ra,0xffffb
    80005e98:	53c080e7          	jalr	1340(ra) # 800013d0 <_Z15thread_dispatchv>
    80005e9c:	fddff06f          	j	80005e78 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ea0:	0004c503          	lbu	a0,0(s1)
    80005ea4:	00050a63          	beqz	a0,80005eb8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005ea8:	ffffb097          	auipc	ra,0xffffb
    80005eac:	7d4080e7          	jalr	2004(ra) # 8000167c <_Z4putcc>
        string++;
    80005eb0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005eb4:	fedff06f          	j	80005ea0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005eb8:	00000613          	li	a2,0
    80005ebc:	00100593          	li	a1,1
    80005ec0:	00007517          	auipc	a0,0x7
    80005ec4:	06850513          	addi	a0,a0,104 # 8000cf28 <lockPrint>
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	35c080e7          	jalr	860(ra) # 80001224 <copy_and_swap>
    80005ed0:	fe0514e3          	bnez	a0,80005eb8 <_Z11printStringPKc+0x58>
}
    80005ed4:	01813083          	ld	ra,24(sp)
    80005ed8:	01013403          	ld	s0,16(sp)
    80005edc:	00813483          	ld	s1,8(sp)
    80005ee0:	02010113          	addi	sp,sp,32
    80005ee4:	00008067          	ret

0000000080005ee8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005ee8:	fd010113          	addi	sp,sp,-48
    80005eec:	02113423          	sd	ra,40(sp)
    80005ef0:	02813023          	sd	s0,32(sp)
    80005ef4:	00913c23          	sd	s1,24(sp)
    80005ef8:	01213823          	sd	s2,16(sp)
    80005efc:	01313423          	sd	s3,8(sp)
    80005f00:	01413023          	sd	s4,0(sp)
    80005f04:	03010413          	addi	s0,sp,48
    80005f08:	00050993          	mv	s3,a0
    80005f0c:	00058a13          	mv	s4,a1
    LOCK();
    80005f10:	00100613          	li	a2,1
    80005f14:	00000593          	li	a1,0
    80005f18:	00007517          	auipc	a0,0x7
    80005f1c:	01050513          	addi	a0,a0,16 # 8000cf28 <lockPrint>
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	304080e7          	jalr	772(ra) # 80001224 <copy_and_swap>
    80005f28:	00050863          	beqz	a0,80005f38 <_Z9getStringPci+0x50>
    80005f2c:	ffffb097          	auipc	ra,0xffffb
    80005f30:	4a4080e7          	jalr	1188(ra) # 800013d0 <_Z15thread_dispatchv>
    80005f34:	fddff06f          	j	80005f10 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005f38:	00000913          	li	s2,0
    80005f3c:	00090493          	mv	s1,s2
    80005f40:	0019091b          	addiw	s2,s2,1
    80005f44:	03495a63          	bge	s2,s4,80005f78 <_Z9getStringPci+0x90>
        cc = getc();
    80005f48:	ffffb097          	auipc	ra,0xffffb
    80005f4c:	6e8080e7          	jalr	1768(ra) # 80001630 <_Z4getcv>
        if(cc < 1)
    80005f50:	02050463          	beqz	a0,80005f78 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005f54:	009984b3          	add	s1,s3,s1
    80005f58:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005f5c:	00a00793          	li	a5,10
    80005f60:	00f50a63          	beq	a0,a5,80005f74 <_Z9getStringPci+0x8c>
    80005f64:	00d00793          	li	a5,13
    80005f68:	fcf51ae3          	bne	a0,a5,80005f3c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005f6c:	00090493          	mv	s1,s2
    80005f70:	0080006f          	j	80005f78 <_Z9getStringPci+0x90>
    80005f74:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005f78:	009984b3          	add	s1,s3,s1
    80005f7c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005f80:	00000613          	li	a2,0
    80005f84:	00100593          	li	a1,1
    80005f88:	00007517          	auipc	a0,0x7
    80005f8c:	fa050513          	addi	a0,a0,-96 # 8000cf28 <lockPrint>
    80005f90:	ffffb097          	auipc	ra,0xffffb
    80005f94:	294080e7          	jalr	660(ra) # 80001224 <copy_and_swap>
    80005f98:	fe0514e3          	bnez	a0,80005f80 <_Z9getStringPci+0x98>
    return buf;
}
    80005f9c:	00098513          	mv	a0,s3
    80005fa0:	02813083          	ld	ra,40(sp)
    80005fa4:	02013403          	ld	s0,32(sp)
    80005fa8:	01813483          	ld	s1,24(sp)
    80005fac:	01013903          	ld	s2,16(sp)
    80005fb0:	00813983          	ld	s3,8(sp)
    80005fb4:	00013a03          	ld	s4,0(sp)
    80005fb8:	03010113          	addi	sp,sp,48
    80005fbc:	00008067          	ret

0000000080005fc0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005fc0:	ff010113          	addi	sp,sp,-16
    80005fc4:	00813423          	sd	s0,8(sp)
    80005fc8:	01010413          	addi	s0,sp,16
    80005fcc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005fd0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005fd4:	0006c603          	lbu	a2,0(a3)
    80005fd8:	fd06071b          	addiw	a4,a2,-48
    80005fdc:	0ff77713          	andi	a4,a4,255
    80005fe0:	00900793          	li	a5,9
    80005fe4:	02e7e063          	bltu	a5,a4,80006004 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005fe8:	0025179b          	slliw	a5,a0,0x2
    80005fec:	00a787bb          	addw	a5,a5,a0
    80005ff0:	0017979b          	slliw	a5,a5,0x1
    80005ff4:	00168693          	addi	a3,a3,1
    80005ff8:	00c787bb          	addw	a5,a5,a2
    80005ffc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006000:	fd5ff06f          	j	80005fd4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006004:	00813403          	ld	s0,8(sp)
    80006008:	01010113          	addi	sp,sp,16
    8000600c:	00008067          	ret

0000000080006010 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006010:	fc010113          	addi	sp,sp,-64
    80006014:	02113c23          	sd	ra,56(sp)
    80006018:	02813823          	sd	s0,48(sp)
    8000601c:	02913423          	sd	s1,40(sp)
    80006020:	03213023          	sd	s2,32(sp)
    80006024:	01313c23          	sd	s3,24(sp)
    80006028:	04010413          	addi	s0,sp,64
    8000602c:	00050493          	mv	s1,a0
    80006030:	00058913          	mv	s2,a1
    80006034:	00060993          	mv	s3,a2
    LOCK();
    80006038:	00100613          	li	a2,1
    8000603c:	00000593          	li	a1,0
    80006040:	00007517          	auipc	a0,0x7
    80006044:	ee850513          	addi	a0,a0,-280 # 8000cf28 <lockPrint>
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	1dc080e7          	jalr	476(ra) # 80001224 <copy_and_swap>
    80006050:	00050863          	beqz	a0,80006060 <_Z8printIntiii+0x50>
    80006054:	ffffb097          	auipc	ra,0xffffb
    80006058:	37c080e7          	jalr	892(ra) # 800013d0 <_Z15thread_dispatchv>
    8000605c:	fddff06f          	j	80006038 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006060:	00098463          	beqz	s3,80006068 <_Z8printIntiii+0x58>
    80006064:	0804c463          	bltz	s1,800060ec <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006068:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000606c:	00000593          	li	a1,0
    }

    i = 0;
    80006070:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006074:	0009079b          	sext.w	a5,s2
    80006078:	0325773b          	remuw	a4,a0,s2
    8000607c:	00048613          	mv	a2,s1
    80006080:	0014849b          	addiw	s1,s1,1
    80006084:	02071693          	slli	a3,a4,0x20
    80006088:	0206d693          	srli	a3,a3,0x20
    8000608c:	00007717          	auipc	a4,0x7
    80006090:	ca470713          	addi	a4,a4,-860 # 8000cd30 <digits>
    80006094:	00d70733          	add	a4,a4,a3
    80006098:	00074683          	lbu	a3,0(a4)
    8000609c:	fd040713          	addi	a4,s0,-48
    800060a0:	00c70733          	add	a4,a4,a2
    800060a4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800060a8:	0005071b          	sext.w	a4,a0
    800060ac:	0325553b          	divuw	a0,a0,s2
    800060b0:	fcf772e3          	bgeu	a4,a5,80006074 <_Z8printIntiii+0x64>
    if(neg)
    800060b4:	00058c63          	beqz	a1,800060cc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800060b8:	fd040793          	addi	a5,s0,-48
    800060bc:	009784b3          	add	s1,a5,s1
    800060c0:	02d00793          	li	a5,45
    800060c4:	fef48823          	sb	a5,-16(s1)
    800060c8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800060cc:	fff4849b          	addiw	s1,s1,-1
    800060d0:	0204c463          	bltz	s1,800060f8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800060d4:	fd040793          	addi	a5,s0,-48
    800060d8:	009787b3          	add	a5,a5,s1
    800060dc:	ff07c503          	lbu	a0,-16(a5)
    800060e0:	ffffb097          	auipc	ra,0xffffb
    800060e4:	59c080e7          	jalr	1436(ra) # 8000167c <_Z4putcc>
    800060e8:	fe5ff06f          	j	800060cc <_Z8printIntiii+0xbc>
        x = -xx;
    800060ec:	4090053b          	negw	a0,s1
        neg = 1;
    800060f0:	00100593          	li	a1,1
        x = -xx;
    800060f4:	f7dff06f          	j	80006070 <_Z8printIntiii+0x60>

    UNLOCK();
    800060f8:	00000613          	li	a2,0
    800060fc:	00100593          	li	a1,1
    80006100:	00007517          	auipc	a0,0x7
    80006104:	e2850513          	addi	a0,a0,-472 # 8000cf28 <lockPrint>
    80006108:	ffffb097          	auipc	ra,0xffffb
    8000610c:	11c080e7          	jalr	284(ra) # 80001224 <copy_and_swap>
    80006110:	fe0514e3          	bnez	a0,800060f8 <_Z8printIntiii+0xe8>
    80006114:	03813083          	ld	ra,56(sp)
    80006118:	03013403          	ld	s0,48(sp)
    8000611c:	02813483          	ld	s1,40(sp)
    80006120:	02013903          	ld	s2,32(sp)
    80006124:	01813983          	ld	s3,24(sp)
    80006128:	04010113          	addi	sp,sp,64
    8000612c:	00008067          	ret

0000000080006130 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006130:	fd010113          	addi	sp,sp,-48
    80006134:	02113423          	sd	ra,40(sp)
    80006138:	02813023          	sd	s0,32(sp)
    8000613c:	00913c23          	sd	s1,24(sp)
    80006140:	01213823          	sd	s2,16(sp)
    80006144:	01313423          	sd	s3,8(sp)
    80006148:	03010413          	addi	s0,sp,48
    8000614c:	00050493          	mv	s1,a0
    80006150:	00058913          	mv	s2,a1
    80006154:	0015879b          	addiw	a5,a1,1
    80006158:	0007851b          	sext.w	a0,a5
    8000615c:	00f4a023          	sw	a5,0(s1)
    80006160:	0004a823          	sw	zero,16(s1)
    80006164:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006168:	00251513          	slli	a0,a0,0x2
    8000616c:	ffffb097          	auipc	ra,0xffffb
    80006170:	0f4080e7          	jalr	244(ra) # 80001260 <_Z9mem_allocm>
    80006174:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006178:	01000513          	li	a0,16
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	384080e7          	jalr	900(ra) # 80002500 <_Znwm>
    80006184:	00050993          	mv	s3,a0
    80006188:	00000593          	li	a1,0
    8000618c:	ffffc097          	auipc	ra,0xffffc
    80006190:	5c0080e7          	jalr	1472(ra) # 8000274c <_ZN9SemaphoreC1Ej>
    80006194:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006198:	01000513          	li	a0,16
    8000619c:	ffffc097          	auipc	ra,0xffffc
    800061a0:	364080e7          	jalr	868(ra) # 80002500 <_Znwm>
    800061a4:	00050993          	mv	s3,a0
    800061a8:	00090593          	mv	a1,s2
    800061ac:	ffffc097          	auipc	ra,0xffffc
    800061b0:	5a0080e7          	jalr	1440(ra) # 8000274c <_ZN9SemaphoreC1Ej>
    800061b4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800061b8:	01000513          	li	a0,16
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	344080e7          	jalr	836(ra) # 80002500 <_Znwm>
    800061c4:	00050913          	mv	s2,a0
    800061c8:	00100593          	li	a1,1
    800061cc:	ffffc097          	auipc	ra,0xffffc
    800061d0:	580080e7          	jalr	1408(ra) # 8000274c <_ZN9SemaphoreC1Ej>
    800061d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800061d8:	01000513          	li	a0,16
    800061dc:	ffffc097          	auipc	ra,0xffffc
    800061e0:	324080e7          	jalr	804(ra) # 80002500 <_Znwm>
    800061e4:	00050913          	mv	s2,a0
    800061e8:	00100593          	li	a1,1
    800061ec:	ffffc097          	auipc	ra,0xffffc
    800061f0:	560080e7          	jalr	1376(ra) # 8000274c <_ZN9SemaphoreC1Ej>
    800061f4:	0324b823          	sd	s2,48(s1)
}
    800061f8:	02813083          	ld	ra,40(sp)
    800061fc:	02013403          	ld	s0,32(sp)
    80006200:	01813483          	ld	s1,24(sp)
    80006204:	01013903          	ld	s2,16(sp)
    80006208:	00813983          	ld	s3,8(sp)
    8000620c:	03010113          	addi	sp,sp,48
    80006210:	00008067          	ret
    80006214:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006218:	00098513          	mv	a0,s3
    8000621c:	ffffc097          	auipc	ra,0xffffc
    80006220:	35c080e7          	jalr	860(ra) # 80002578 <_ZdlPv>
    80006224:	00048513          	mv	a0,s1
    80006228:	00008097          	auipc	ra,0x8
    8000622c:	de0080e7          	jalr	-544(ra) # 8000e008 <_Unwind_Resume>
    80006230:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006234:	00098513          	mv	a0,s3
    80006238:	ffffc097          	auipc	ra,0xffffc
    8000623c:	340080e7          	jalr	832(ra) # 80002578 <_ZdlPv>
    80006240:	00048513          	mv	a0,s1
    80006244:	00008097          	auipc	ra,0x8
    80006248:	dc4080e7          	jalr	-572(ra) # 8000e008 <_Unwind_Resume>
    8000624c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006250:	00090513          	mv	a0,s2
    80006254:	ffffc097          	auipc	ra,0xffffc
    80006258:	324080e7          	jalr	804(ra) # 80002578 <_ZdlPv>
    8000625c:	00048513          	mv	a0,s1
    80006260:	00008097          	auipc	ra,0x8
    80006264:	da8080e7          	jalr	-600(ra) # 8000e008 <_Unwind_Resume>
    80006268:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000626c:	00090513          	mv	a0,s2
    80006270:	ffffc097          	auipc	ra,0xffffc
    80006274:	308080e7          	jalr	776(ra) # 80002578 <_ZdlPv>
    80006278:	00048513          	mv	a0,s1
    8000627c:	00008097          	auipc	ra,0x8
    80006280:	d8c080e7          	jalr	-628(ra) # 8000e008 <_Unwind_Resume>

0000000080006284 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006284:	fe010113          	addi	sp,sp,-32
    80006288:	00113c23          	sd	ra,24(sp)
    8000628c:	00813823          	sd	s0,16(sp)
    80006290:	00913423          	sd	s1,8(sp)
    80006294:	01213023          	sd	s2,0(sp)
    80006298:	02010413          	addi	s0,sp,32
    8000629c:	00050493          	mv	s1,a0
    800062a0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800062a4:	01853503          	ld	a0,24(a0)
    800062a8:	ffffc097          	auipc	ra,0xffffc
    800062ac:	4e0080e7          	jalr	1248(ra) # 80002788 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800062b0:	0304b503          	ld	a0,48(s1)
    800062b4:	ffffc097          	auipc	ra,0xffffc
    800062b8:	4d4080e7          	jalr	1236(ra) # 80002788 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800062bc:	0084b783          	ld	a5,8(s1)
    800062c0:	0144a703          	lw	a4,20(s1)
    800062c4:	00271713          	slli	a4,a4,0x2
    800062c8:	00e787b3          	add	a5,a5,a4
    800062cc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800062d0:	0144a783          	lw	a5,20(s1)
    800062d4:	0017879b          	addiw	a5,a5,1
    800062d8:	0004a703          	lw	a4,0(s1)
    800062dc:	02e7e7bb          	remw	a5,a5,a4
    800062e0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800062e4:	0304b503          	ld	a0,48(s1)
    800062e8:	ffffc097          	auipc	ra,0xffffc
    800062ec:	4d8080e7          	jalr	1240(ra) # 800027c0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800062f0:	0204b503          	ld	a0,32(s1)
    800062f4:	ffffc097          	auipc	ra,0xffffc
    800062f8:	4cc080e7          	jalr	1228(ra) # 800027c0 <_ZN9Semaphore6signalEv>

}
    800062fc:	01813083          	ld	ra,24(sp)
    80006300:	01013403          	ld	s0,16(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	00013903          	ld	s2,0(sp)
    8000630c:	02010113          	addi	sp,sp,32
    80006310:	00008067          	ret

0000000080006314 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006314:	fe010113          	addi	sp,sp,-32
    80006318:	00113c23          	sd	ra,24(sp)
    8000631c:	00813823          	sd	s0,16(sp)
    80006320:	00913423          	sd	s1,8(sp)
    80006324:	01213023          	sd	s2,0(sp)
    80006328:	02010413          	addi	s0,sp,32
    8000632c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006330:	02053503          	ld	a0,32(a0)
    80006334:	ffffc097          	auipc	ra,0xffffc
    80006338:	454080e7          	jalr	1108(ra) # 80002788 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000633c:	0284b503          	ld	a0,40(s1)
    80006340:	ffffc097          	auipc	ra,0xffffc
    80006344:	448080e7          	jalr	1096(ra) # 80002788 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006348:	0084b703          	ld	a4,8(s1)
    8000634c:	0104a783          	lw	a5,16(s1)
    80006350:	00279693          	slli	a3,a5,0x2
    80006354:	00d70733          	add	a4,a4,a3
    80006358:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000635c:	0017879b          	addiw	a5,a5,1
    80006360:	0004a703          	lw	a4,0(s1)
    80006364:	02e7e7bb          	remw	a5,a5,a4
    80006368:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000636c:	0284b503          	ld	a0,40(s1)
    80006370:	ffffc097          	auipc	ra,0xffffc
    80006374:	450080e7          	jalr	1104(ra) # 800027c0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006378:	0184b503          	ld	a0,24(s1)
    8000637c:	ffffc097          	auipc	ra,0xffffc
    80006380:	444080e7          	jalr	1092(ra) # 800027c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006384:	00090513          	mv	a0,s2
    80006388:	01813083          	ld	ra,24(sp)
    8000638c:	01013403          	ld	s0,16(sp)
    80006390:	00813483          	ld	s1,8(sp)
    80006394:	00013903          	ld	s2,0(sp)
    80006398:	02010113          	addi	sp,sp,32
    8000639c:	00008067          	ret

00000000800063a0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800063a0:	fe010113          	addi	sp,sp,-32
    800063a4:	00113c23          	sd	ra,24(sp)
    800063a8:	00813823          	sd	s0,16(sp)
    800063ac:	00913423          	sd	s1,8(sp)
    800063b0:	01213023          	sd	s2,0(sp)
    800063b4:	02010413          	addi	s0,sp,32
    800063b8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800063bc:	02853503          	ld	a0,40(a0)
    800063c0:	ffffc097          	auipc	ra,0xffffc
    800063c4:	3c8080e7          	jalr	968(ra) # 80002788 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800063c8:	0304b503          	ld	a0,48(s1)
    800063cc:	ffffc097          	auipc	ra,0xffffc
    800063d0:	3bc080e7          	jalr	956(ra) # 80002788 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800063d4:	0144a783          	lw	a5,20(s1)
    800063d8:	0104a903          	lw	s2,16(s1)
    800063dc:	0327ce63          	blt	a5,s2,80006418 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800063e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800063e4:	0304b503          	ld	a0,48(s1)
    800063e8:	ffffc097          	auipc	ra,0xffffc
    800063ec:	3d8080e7          	jalr	984(ra) # 800027c0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800063f0:	0284b503          	ld	a0,40(s1)
    800063f4:	ffffc097          	auipc	ra,0xffffc
    800063f8:	3cc080e7          	jalr	972(ra) # 800027c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800063fc:	00090513          	mv	a0,s2
    80006400:	01813083          	ld	ra,24(sp)
    80006404:	01013403          	ld	s0,16(sp)
    80006408:	00813483          	ld	s1,8(sp)
    8000640c:	00013903          	ld	s2,0(sp)
    80006410:	02010113          	addi	sp,sp,32
    80006414:	00008067          	ret
        ret = cap - head + tail;
    80006418:	0004a703          	lw	a4,0(s1)
    8000641c:	4127093b          	subw	s2,a4,s2
    80006420:	00f9093b          	addw	s2,s2,a5
    80006424:	fc1ff06f          	j	800063e4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006428 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006428:	fe010113          	addi	sp,sp,-32
    8000642c:	00113c23          	sd	ra,24(sp)
    80006430:	00813823          	sd	s0,16(sp)
    80006434:	00913423          	sd	s1,8(sp)
    80006438:	02010413          	addi	s0,sp,32
    8000643c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006440:	00a00513          	li	a0,10
    80006444:	ffffc097          	auipc	ra,0xffffc
    80006448:	44c080e7          	jalr	1100(ra) # 80002890 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000644c:	00004517          	auipc	a0,0x4
    80006450:	ed450513          	addi	a0,a0,-300 # 8000a320 <CONSOLE_STATUS+0x310>
    80006454:	00000097          	auipc	ra,0x0
    80006458:	a0c080e7          	jalr	-1524(ra) # 80005e60 <_Z11printStringPKc>
    while (getCnt()) {
    8000645c:	00048513          	mv	a0,s1
    80006460:	00000097          	auipc	ra,0x0
    80006464:	f40080e7          	jalr	-192(ra) # 800063a0 <_ZN9BufferCPP6getCntEv>
    80006468:	02050c63          	beqz	a0,800064a0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000646c:	0084b783          	ld	a5,8(s1)
    80006470:	0104a703          	lw	a4,16(s1)
    80006474:	00271713          	slli	a4,a4,0x2
    80006478:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000647c:	0007c503          	lbu	a0,0(a5)
    80006480:	ffffc097          	auipc	ra,0xffffc
    80006484:	410080e7          	jalr	1040(ra) # 80002890 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006488:	0104a783          	lw	a5,16(s1)
    8000648c:	0017879b          	addiw	a5,a5,1
    80006490:	0004a703          	lw	a4,0(s1)
    80006494:	02e7e7bb          	remw	a5,a5,a4
    80006498:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000649c:	fc1ff06f          	j	8000645c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800064a0:	02100513          	li	a0,33
    800064a4:	ffffc097          	auipc	ra,0xffffc
    800064a8:	3ec080e7          	jalr	1004(ra) # 80002890 <_ZN7Console4putcEc>
    Console::putc('\n');
    800064ac:	00a00513          	li	a0,10
    800064b0:	ffffc097          	auipc	ra,0xffffc
    800064b4:	3e0080e7          	jalr	992(ra) # 80002890 <_ZN7Console4putcEc>
    mem_free(buffer);
    800064b8:	0084b503          	ld	a0,8(s1)
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	df4080e7          	jalr	-524(ra) # 800012b0 <_Z8mem_freePv>
    delete itemAvailable;
    800064c4:	0204b503          	ld	a0,32(s1)
    800064c8:	00050863          	beqz	a0,800064d8 <_ZN9BufferCPPD1Ev+0xb0>
    800064cc:	00053783          	ld	a5,0(a0)
    800064d0:	0087b783          	ld	a5,8(a5)
    800064d4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800064d8:	0184b503          	ld	a0,24(s1)
    800064dc:	00050863          	beqz	a0,800064ec <_ZN9BufferCPPD1Ev+0xc4>
    800064e0:	00053783          	ld	a5,0(a0)
    800064e4:	0087b783          	ld	a5,8(a5)
    800064e8:	000780e7          	jalr	a5
    delete mutexTail;
    800064ec:	0304b503          	ld	a0,48(s1)
    800064f0:	00050863          	beqz	a0,80006500 <_ZN9BufferCPPD1Ev+0xd8>
    800064f4:	00053783          	ld	a5,0(a0)
    800064f8:	0087b783          	ld	a5,8(a5)
    800064fc:	000780e7          	jalr	a5
    delete mutexHead;
    80006500:	0284b503          	ld	a0,40(s1)
    80006504:	00050863          	beqz	a0,80006514 <_ZN9BufferCPPD1Ev+0xec>
    80006508:	00053783          	ld	a5,0(a0)
    8000650c:	0087b783          	ld	a5,8(a5)
    80006510:	000780e7          	jalr	a5
}
    80006514:	01813083          	ld	ra,24(sp)
    80006518:	01013403          	ld	s0,16(sp)
    8000651c:	00813483          	ld	s1,8(sp)
    80006520:	02010113          	addi	sp,sp,32
    80006524:	00008067          	ret

0000000080006528 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006528:	fe010113          	addi	sp,sp,-32
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000653c:	00004517          	auipc	a0,0x4
    80006540:	dfc50513          	addi	a0,a0,-516 # 8000a338 <CONSOLE_STATUS+0x328>
    80006544:	00000097          	auipc	ra,0x0
    80006548:	91c080e7          	jalr	-1764(ra) # 80005e60 <_Z11printStringPKc>
    int test = getc() - '0';
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	0e4080e7          	jalr	228(ra) # 80001630 <_Z4getcv>
    80006554:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006558:	ffffb097          	auipc	ra,0xffffb
    8000655c:	0d8080e7          	jalr	216(ra) # 80001630 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006560:	00700793          	li	a5,7
    80006564:	1097e263          	bltu	a5,s1,80006668 <_Z8userMainv+0x140>
    80006568:	00249493          	slli	s1,s1,0x2
    8000656c:	00004717          	auipc	a4,0x4
    80006570:	02470713          	addi	a4,a4,36 # 8000a590 <CONSOLE_STATUS+0x580>
    80006574:	00e484b3          	add	s1,s1,a4
    80006578:	0004a783          	lw	a5,0(s1)
    8000657c:	00e787b3          	add	a5,a5,a4
    80006580:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006584:	fffff097          	auipc	ra,0xfffff
    80006588:	f54080e7          	jalr	-172(ra) # 800054d8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000658c:	00004517          	auipc	a0,0x4
    80006590:	dcc50513          	addi	a0,a0,-564 # 8000a358 <CONSOLE_STATUS+0x348>
    80006594:	00000097          	auipc	ra,0x0
    80006598:	8cc080e7          	jalr	-1844(ra) # 80005e60 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000659c:	01813083          	ld	ra,24(sp)
    800065a0:	01013403          	ld	s0,16(sp)
    800065a4:	00813483          	ld	s1,8(sp)
    800065a8:	02010113          	addi	sp,sp,32
    800065ac:	00008067          	ret
            Threads_CPP_API_test();
    800065b0:	ffffe097          	auipc	ra,0xffffe
    800065b4:	df4080e7          	jalr	-524(ra) # 800043a4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800065b8:	00004517          	auipc	a0,0x4
    800065bc:	de050513          	addi	a0,a0,-544 # 8000a398 <CONSOLE_STATUS+0x388>
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	8a0080e7          	jalr	-1888(ra) # 80005e60 <_Z11printStringPKc>
            break;
    800065c8:	fd5ff06f          	j	8000659c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800065cc:	ffffd097          	auipc	ra,0xffffd
    800065d0:	62c080e7          	jalr	1580(ra) # 80003bf8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800065d4:	00004517          	auipc	a0,0x4
    800065d8:	e0450513          	addi	a0,a0,-508 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    800065dc:	00000097          	auipc	ra,0x0
    800065e0:	884080e7          	jalr	-1916(ra) # 80005e60 <_Z11printStringPKc>
            break;
    800065e4:	fb9ff06f          	j	8000659c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800065e8:	fffff097          	auipc	ra,0xfffff
    800065ec:	234080e7          	jalr	564(ra) # 8000581c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800065f0:	00004517          	auipc	a0,0x4
    800065f4:	e3850513          	addi	a0,a0,-456 # 8000a428 <CONSOLE_STATUS+0x418>
    800065f8:	00000097          	auipc	ra,0x0
    800065fc:	868080e7          	jalr	-1944(ra) # 80005e60 <_Z11printStringPKc>
            break;
    80006600:	f9dff06f          	j	8000659c <_Z8userMainv+0x74>
            testSleeping();
    80006604:	00000097          	auipc	ra,0x0
    80006608:	11c080e7          	jalr	284(ra) # 80006720 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000660c:	00004517          	auipc	a0,0x4
    80006610:	e7450513          	addi	a0,a0,-396 # 8000a480 <CONSOLE_STATUS+0x470>
    80006614:	00000097          	auipc	ra,0x0
    80006618:	84c080e7          	jalr	-1972(ra) # 80005e60 <_Z11printStringPKc>
            break;
    8000661c:	f81ff06f          	j	8000659c <_Z8userMainv+0x74>
            testConsumerProducer();
    80006620:	ffffe097          	auipc	ra,0xffffe
    80006624:	258080e7          	jalr	600(ra) # 80004878 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006628:	00004517          	auipc	a0,0x4
    8000662c:	e8850513          	addi	a0,a0,-376 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    80006630:	00000097          	auipc	ra,0x0
    80006634:	830080e7          	jalr	-2000(ra) # 80005e60 <_Z11printStringPKc>
            break;
    80006638:	f65ff06f          	j	8000659c <_Z8userMainv+0x74>
            System_Mode_test();
    8000663c:	00000097          	auipc	ra,0x0
    80006640:	658080e7          	jalr	1624(ra) # 80006c94 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006644:	00004517          	auipc	a0,0x4
    80006648:	eac50513          	addi	a0,a0,-340 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    8000664c:	00000097          	auipc	ra,0x0
    80006650:	814080e7          	jalr	-2028(ra) # 80005e60 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006654:	00004517          	auipc	a0,0x4
    80006658:	ebc50513          	addi	a0,a0,-324 # 8000a510 <CONSOLE_STATUS+0x500>
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	804080e7          	jalr	-2044(ra) # 80005e60 <_Z11printStringPKc>
            break;
    80006664:	f39ff06f          	j	8000659c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006668:	00004517          	auipc	a0,0x4
    8000666c:	f0050513          	addi	a0,a0,-256 # 8000a568 <CONSOLE_STATUS+0x558>
    80006670:	fffff097          	auipc	ra,0xfffff
    80006674:	7f0080e7          	jalr	2032(ra) # 80005e60 <_Z11printStringPKc>
    80006678:	f25ff06f          	j	8000659c <_Z8userMainv+0x74>

000000008000667c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000667c:	fe010113          	addi	sp,sp,-32
    80006680:	00113c23          	sd	ra,24(sp)
    80006684:	00813823          	sd	s0,16(sp)
    80006688:	00913423          	sd	s1,8(sp)
    8000668c:	01213023          	sd	s2,0(sp)
    80006690:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006694:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006698:	00600493          	li	s1,6
    while (--i > 0) {
    8000669c:	fff4849b          	addiw	s1,s1,-1
    800066a0:	04905463          	blez	s1,800066e8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800066a4:	00004517          	auipc	a0,0x4
    800066a8:	f0c50513          	addi	a0,a0,-244 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    800066ac:	fffff097          	auipc	ra,0xfffff
    800066b0:	7b4080e7          	jalr	1972(ra) # 80005e60 <_Z11printStringPKc>
        printInt(sleep_time);
    800066b4:	00000613          	li	a2,0
    800066b8:	00a00593          	li	a1,10
    800066bc:	0009051b          	sext.w	a0,s2
    800066c0:	00000097          	auipc	ra,0x0
    800066c4:	950080e7          	jalr	-1712(ra) # 80006010 <_Z8printIntiii>
        printString(" !\n");
    800066c8:	00004517          	auipc	a0,0x4
    800066cc:	ef050513          	addi	a0,a0,-272 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	790080e7          	jalr	1936(ra) # 80005e60 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800066d8:	00090513          	mv	a0,s2
    800066dc:	ffffb097          	auipc	ra,0xffffb
    800066e0:	f08080e7          	jalr	-248(ra) # 800015e4 <_Z10time_sleepm>
    while (--i > 0) {
    800066e4:	fb9ff06f          	j	8000669c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800066e8:	00a00793          	li	a5,10
    800066ec:	02f95933          	divu	s2,s2,a5
    800066f0:	fff90913          	addi	s2,s2,-1
    800066f4:	00007797          	auipc	a5,0x7
    800066f8:	83c78793          	addi	a5,a5,-1988 # 8000cf30 <_ZL8finished>
    800066fc:	01278933          	add	s2,a5,s2
    80006700:	00100793          	li	a5,1
    80006704:	00f90023          	sb	a5,0(s2)
}
    80006708:	01813083          	ld	ra,24(sp)
    8000670c:	01013403          	ld	s0,16(sp)
    80006710:	00813483          	ld	s1,8(sp)
    80006714:	00013903          	ld	s2,0(sp)
    80006718:	02010113          	addi	sp,sp,32
    8000671c:	00008067          	ret

0000000080006720 <_Z12testSleepingv>:

void testSleeping() {
    80006720:	fc010113          	addi	sp,sp,-64
    80006724:	02113c23          	sd	ra,56(sp)
    80006728:	02813823          	sd	s0,48(sp)
    8000672c:	02913423          	sd	s1,40(sp)
    80006730:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006734:	00a00793          	li	a5,10
    80006738:	fcf43823          	sd	a5,-48(s0)
    8000673c:	01400793          	li	a5,20
    80006740:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006744:	00000493          	li	s1,0
    80006748:	02c0006f          	j	80006774 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000674c:	00349793          	slli	a5,s1,0x3
    80006750:	fd040613          	addi	a2,s0,-48
    80006754:	00f60633          	add	a2,a2,a5
    80006758:	00000597          	auipc	a1,0x0
    8000675c:	f2458593          	addi	a1,a1,-220 # 8000667c <_ZL9sleepyRunPv>
    80006760:	fc040513          	addi	a0,s0,-64
    80006764:	00f50533          	add	a0,a0,a5
    80006768:	ffffb097          	auipc	ra,0xffffb
    8000676c:	b94080e7          	jalr	-1132(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006770:	0014849b          	addiw	s1,s1,1
    80006774:	00100793          	li	a5,1
    80006778:	fc97dae3          	bge	a5,s1,8000674c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000677c:	00006797          	auipc	a5,0x6
    80006780:	7b47c783          	lbu	a5,1972(a5) # 8000cf30 <_ZL8finished>
    80006784:	fe078ce3          	beqz	a5,8000677c <_Z12testSleepingv+0x5c>
    80006788:	00006797          	auipc	a5,0x6
    8000678c:	7a97c783          	lbu	a5,1961(a5) # 8000cf31 <_ZL8finished+0x1>
    80006790:	fe0786e3          	beqz	a5,8000677c <_Z12testSleepingv+0x5c>
}
    80006794:	03813083          	ld	ra,56(sp)
    80006798:	03013403          	ld	s0,48(sp)
    8000679c:	02813483          	ld	s1,40(sp)
    800067a0:	04010113          	addi	sp,sp,64
    800067a4:	00008067          	ret

00000000800067a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800067a8:	fe010113          	addi	sp,sp,-32
    800067ac:	00113c23          	sd	ra,24(sp)
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00913423          	sd	s1,8(sp)
    800067b8:	01213023          	sd	s2,0(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800067c4:	00100793          	li	a5,1
    800067c8:	02a7f863          	bgeu	a5,a0,800067f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800067cc:	00a00793          	li	a5,10
    800067d0:	02f577b3          	remu	a5,a0,a5
    800067d4:	02078e63          	beqz	a5,80006810 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800067d8:	fff48513          	addi	a0,s1,-1
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	fcc080e7          	jalr	-52(ra) # 800067a8 <_ZL9fibonaccim>
    800067e4:	00050913          	mv	s2,a0
    800067e8:	ffe48513          	addi	a0,s1,-2
    800067ec:	00000097          	auipc	ra,0x0
    800067f0:	fbc080e7          	jalr	-68(ra) # 800067a8 <_ZL9fibonaccim>
    800067f4:	00a90533          	add	a0,s2,a0
}
    800067f8:	01813083          	ld	ra,24(sp)
    800067fc:	01013403          	ld	s0,16(sp)
    80006800:	00813483          	ld	s1,8(sp)
    80006804:	00013903          	ld	s2,0(sp)
    80006808:	02010113          	addi	sp,sp,32
    8000680c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006810:	ffffb097          	auipc	ra,0xffffb
    80006814:	bc0080e7          	jalr	-1088(ra) # 800013d0 <_Z15thread_dispatchv>
    80006818:	fc1ff06f          	j	800067d8 <_ZL9fibonaccim+0x30>

000000008000681c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000681c:	fe010113          	addi	sp,sp,-32
    80006820:	00113c23          	sd	ra,24(sp)
    80006824:	00813823          	sd	s0,16(sp)
    80006828:	00913423          	sd	s1,8(sp)
    8000682c:	01213023          	sd	s2,0(sp)
    80006830:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006834:	00a00493          	li	s1,10
    80006838:	0400006f          	j	80006878 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000683c:	00004517          	auipc	a0,0x4
    80006840:	a3c50513          	addi	a0,a0,-1476 # 8000a278 <CONSOLE_STATUS+0x268>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	61c080e7          	jalr	1564(ra) # 80005e60 <_Z11printStringPKc>
    8000684c:	00000613          	li	a2,0
    80006850:	00a00593          	li	a1,10
    80006854:	00048513          	mv	a0,s1
    80006858:	fffff097          	auipc	ra,0xfffff
    8000685c:	7b8080e7          	jalr	1976(ra) # 80006010 <_Z8printIntiii>
    80006860:	00004517          	auipc	a0,0x4
    80006864:	c1850513          	addi	a0,a0,-1000 # 8000a478 <CONSOLE_STATUS+0x468>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	5f8080e7          	jalr	1528(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006870:	0014849b          	addiw	s1,s1,1
    80006874:	0ff4f493          	andi	s1,s1,255
    80006878:	00c00793          	li	a5,12
    8000687c:	fc97f0e3          	bgeu	a5,s1,8000683c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006880:	00004517          	auipc	a0,0x4
    80006884:	a0050513          	addi	a0,a0,-1536 # 8000a280 <CONSOLE_STATUS+0x270>
    80006888:	fffff097          	auipc	ra,0xfffff
    8000688c:	5d8080e7          	jalr	1496(ra) # 80005e60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006890:	00500313          	li	t1,5
    thread_dispatch();
    80006894:	ffffb097          	auipc	ra,0xffffb
    80006898:	b3c080e7          	jalr	-1220(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000689c:	01000513          	li	a0,16
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	f08080e7          	jalr	-248(ra) # 800067a8 <_ZL9fibonaccim>
    800068a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800068ac:	00004517          	auipc	a0,0x4
    800068b0:	9e450513          	addi	a0,a0,-1564 # 8000a290 <CONSOLE_STATUS+0x280>
    800068b4:	fffff097          	auipc	ra,0xfffff
    800068b8:	5ac080e7          	jalr	1452(ra) # 80005e60 <_Z11printStringPKc>
    800068bc:	00000613          	li	a2,0
    800068c0:	00a00593          	li	a1,10
    800068c4:	0009051b          	sext.w	a0,s2
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	748080e7          	jalr	1864(ra) # 80006010 <_Z8printIntiii>
    800068d0:	00004517          	auipc	a0,0x4
    800068d4:	ba850513          	addi	a0,a0,-1112 # 8000a478 <CONSOLE_STATUS+0x468>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	588080e7          	jalr	1416(ra) # 80005e60 <_Z11printStringPKc>
    800068e0:	0400006f          	j	80006920 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800068e4:	00004517          	auipc	a0,0x4
    800068e8:	99450513          	addi	a0,a0,-1644 # 8000a278 <CONSOLE_STATUS+0x268>
    800068ec:	fffff097          	auipc	ra,0xfffff
    800068f0:	574080e7          	jalr	1396(ra) # 80005e60 <_Z11printStringPKc>
    800068f4:	00000613          	li	a2,0
    800068f8:	00a00593          	li	a1,10
    800068fc:	00048513          	mv	a0,s1
    80006900:	fffff097          	auipc	ra,0xfffff
    80006904:	710080e7          	jalr	1808(ra) # 80006010 <_Z8printIntiii>
    80006908:	00004517          	auipc	a0,0x4
    8000690c:	b7050513          	addi	a0,a0,-1168 # 8000a478 <CONSOLE_STATUS+0x468>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	550080e7          	jalr	1360(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006918:	0014849b          	addiw	s1,s1,1
    8000691c:	0ff4f493          	andi	s1,s1,255
    80006920:	00f00793          	li	a5,15
    80006924:	fc97f0e3          	bgeu	a5,s1,800068e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006928:	00004517          	auipc	a0,0x4
    8000692c:	97850513          	addi	a0,a0,-1672 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006930:	fffff097          	auipc	ra,0xfffff
    80006934:	530080e7          	jalr	1328(ra) # 80005e60 <_Z11printStringPKc>
    finishedD = true;
    80006938:	00100793          	li	a5,1
    8000693c:	00006717          	auipc	a4,0x6
    80006940:	5ef70b23          	sb	a5,1526(a4) # 8000cf32 <_ZL9finishedD>
    thread_dispatch();
    80006944:	ffffb097          	auipc	ra,0xffffb
    80006948:	a8c080e7          	jalr	-1396(ra) # 800013d0 <_Z15thread_dispatchv>
}
    8000694c:	01813083          	ld	ra,24(sp)
    80006950:	01013403          	ld	s0,16(sp)
    80006954:	00813483          	ld	s1,8(sp)
    80006958:	00013903          	ld	s2,0(sp)
    8000695c:	02010113          	addi	sp,sp,32
    80006960:	00008067          	ret

0000000080006964 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006964:	fe010113          	addi	sp,sp,-32
    80006968:	00113c23          	sd	ra,24(sp)
    8000696c:	00813823          	sd	s0,16(sp)
    80006970:	00913423          	sd	s1,8(sp)
    80006974:	01213023          	sd	s2,0(sp)
    80006978:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000697c:	00000493          	li	s1,0
    80006980:	0400006f          	j	800069c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006984:	00004517          	auipc	a0,0x4
    80006988:	8c450513          	addi	a0,a0,-1852 # 8000a248 <CONSOLE_STATUS+0x238>
    8000698c:	fffff097          	auipc	ra,0xfffff
    80006990:	4d4080e7          	jalr	1236(ra) # 80005e60 <_Z11printStringPKc>
    80006994:	00000613          	li	a2,0
    80006998:	00a00593          	li	a1,10
    8000699c:	00048513          	mv	a0,s1
    800069a0:	fffff097          	auipc	ra,0xfffff
    800069a4:	670080e7          	jalr	1648(ra) # 80006010 <_Z8printIntiii>
    800069a8:	00004517          	auipc	a0,0x4
    800069ac:	ad050513          	addi	a0,a0,-1328 # 8000a478 <CONSOLE_STATUS+0x468>
    800069b0:	fffff097          	auipc	ra,0xfffff
    800069b4:	4b0080e7          	jalr	1200(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800069b8:	0014849b          	addiw	s1,s1,1
    800069bc:	0ff4f493          	andi	s1,s1,255
    800069c0:	00200793          	li	a5,2
    800069c4:	fc97f0e3          	bgeu	a5,s1,80006984 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800069c8:	00004517          	auipc	a0,0x4
    800069cc:	88850513          	addi	a0,a0,-1912 # 8000a250 <CONSOLE_STATUS+0x240>
    800069d0:	fffff097          	auipc	ra,0xfffff
    800069d4:	490080e7          	jalr	1168(ra) # 80005e60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800069d8:	00700313          	li	t1,7
    thread_dispatch();
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	9f4080e7          	jalr	-1548(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800069e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800069e8:	00004517          	auipc	a0,0x4
    800069ec:	87850513          	addi	a0,a0,-1928 # 8000a260 <CONSOLE_STATUS+0x250>
    800069f0:	fffff097          	auipc	ra,0xfffff
    800069f4:	470080e7          	jalr	1136(ra) # 80005e60 <_Z11printStringPKc>
    800069f8:	00000613          	li	a2,0
    800069fc:	00a00593          	li	a1,10
    80006a00:	0009051b          	sext.w	a0,s2
    80006a04:	fffff097          	auipc	ra,0xfffff
    80006a08:	60c080e7          	jalr	1548(ra) # 80006010 <_Z8printIntiii>
    80006a0c:	00004517          	auipc	a0,0x4
    80006a10:	a6c50513          	addi	a0,a0,-1428 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a14:	fffff097          	auipc	ra,0xfffff
    80006a18:	44c080e7          	jalr	1100(ra) # 80005e60 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006a1c:	00c00513          	li	a0,12
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	d88080e7          	jalr	-632(ra) # 800067a8 <_ZL9fibonaccim>
    80006a28:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006a2c:	00004517          	auipc	a0,0x4
    80006a30:	83c50513          	addi	a0,a0,-1988 # 8000a268 <CONSOLE_STATUS+0x258>
    80006a34:	fffff097          	auipc	ra,0xfffff
    80006a38:	42c080e7          	jalr	1068(ra) # 80005e60 <_Z11printStringPKc>
    80006a3c:	00000613          	li	a2,0
    80006a40:	00a00593          	li	a1,10
    80006a44:	0009051b          	sext.w	a0,s2
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	5c8080e7          	jalr	1480(ra) # 80006010 <_Z8printIntiii>
    80006a50:	00004517          	auipc	a0,0x4
    80006a54:	a2850513          	addi	a0,a0,-1496 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a58:	fffff097          	auipc	ra,0xfffff
    80006a5c:	408080e7          	jalr	1032(ra) # 80005e60 <_Z11printStringPKc>
    80006a60:	0400006f          	j	80006aa0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006a64:	00003517          	auipc	a0,0x3
    80006a68:	7e450513          	addi	a0,a0,2020 # 8000a248 <CONSOLE_STATUS+0x238>
    80006a6c:	fffff097          	auipc	ra,0xfffff
    80006a70:	3f4080e7          	jalr	1012(ra) # 80005e60 <_Z11printStringPKc>
    80006a74:	00000613          	li	a2,0
    80006a78:	00a00593          	li	a1,10
    80006a7c:	00048513          	mv	a0,s1
    80006a80:	fffff097          	auipc	ra,0xfffff
    80006a84:	590080e7          	jalr	1424(ra) # 80006010 <_Z8printIntiii>
    80006a88:	00004517          	auipc	a0,0x4
    80006a8c:	9f050513          	addi	a0,a0,-1552 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a90:	fffff097          	auipc	ra,0xfffff
    80006a94:	3d0080e7          	jalr	976(ra) # 80005e60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006a98:	0014849b          	addiw	s1,s1,1
    80006a9c:	0ff4f493          	andi	s1,s1,255
    80006aa0:	00500793          	li	a5,5
    80006aa4:	fc97f0e3          	bgeu	a5,s1,80006a64 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006aa8:	00003517          	auipc	a0,0x3
    80006aac:	77850513          	addi	a0,a0,1912 # 8000a220 <CONSOLE_STATUS+0x210>
    80006ab0:	fffff097          	auipc	ra,0xfffff
    80006ab4:	3b0080e7          	jalr	944(ra) # 80005e60 <_Z11printStringPKc>
    finishedC = true;
    80006ab8:	00100793          	li	a5,1
    80006abc:	00006717          	auipc	a4,0x6
    80006ac0:	46f70ba3          	sb	a5,1143(a4) # 8000cf33 <_ZL9finishedC>
    thread_dispatch();
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	90c080e7          	jalr	-1780(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80006acc:	01813083          	ld	ra,24(sp)
    80006ad0:	01013403          	ld	s0,16(sp)
    80006ad4:	00813483          	ld	s1,8(sp)
    80006ad8:	00013903          	ld	s2,0(sp)
    80006adc:	02010113          	addi	sp,sp,32
    80006ae0:	00008067          	ret

0000000080006ae4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006ae4:	fe010113          	addi	sp,sp,-32
    80006ae8:	00113c23          	sd	ra,24(sp)
    80006aec:	00813823          	sd	s0,16(sp)
    80006af0:	00913423          	sd	s1,8(sp)
    80006af4:	01213023          	sd	s2,0(sp)
    80006af8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006afc:	00000913          	li	s2,0
    80006b00:	0400006f          	j	80006b40 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006b04:	ffffb097          	auipc	ra,0xffffb
    80006b08:	8cc080e7          	jalr	-1844(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006b0c:	00148493          	addi	s1,s1,1
    80006b10:	000027b7          	lui	a5,0x2
    80006b14:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006b18:	0097ee63          	bltu	a5,s1,80006b34 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006b1c:	00000713          	li	a4,0
    80006b20:	000077b7          	lui	a5,0x7
    80006b24:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b28:	fce7eee3          	bltu	a5,a4,80006b04 <_ZL11workerBodyBPv+0x20>
    80006b2c:	00170713          	addi	a4,a4,1
    80006b30:	ff1ff06f          	j	80006b20 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006b34:	00a00793          	li	a5,10
    80006b38:	04f90663          	beq	s2,a5,80006b84 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006b3c:	00190913          	addi	s2,s2,1
    80006b40:	00f00793          	li	a5,15
    80006b44:	0527e463          	bltu	a5,s2,80006b8c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006b48:	00003517          	auipc	a0,0x3
    80006b4c:	6e850513          	addi	a0,a0,1768 # 8000a230 <CONSOLE_STATUS+0x220>
    80006b50:	fffff097          	auipc	ra,0xfffff
    80006b54:	310080e7          	jalr	784(ra) # 80005e60 <_Z11printStringPKc>
    80006b58:	00000613          	li	a2,0
    80006b5c:	00a00593          	li	a1,10
    80006b60:	0009051b          	sext.w	a0,s2
    80006b64:	fffff097          	auipc	ra,0xfffff
    80006b68:	4ac080e7          	jalr	1196(ra) # 80006010 <_Z8printIntiii>
    80006b6c:	00004517          	auipc	a0,0x4
    80006b70:	90c50513          	addi	a0,a0,-1780 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b74:	fffff097          	auipc	ra,0xfffff
    80006b78:	2ec080e7          	jalr	748(ra) # 80005e60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006b7c:	00000493          	li	s1,0
    80006b80:	f91ff06f          	j	80006b10 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006b84:	14102ff3          	csrr	t6,sepc
    80006b88:	fb5ff06f          	j	80006b3c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006b8c:	00003517          	auipc	a0,0x3
    80006b90:	6ac50513          	addi	a0,a0,1708 # 8000a238 <CONSOLE_STATUS+0x228>
    80006b94:	fffff097          	auipc	ra,0xfffff
    80006b98:	2cc080e7          	jalr	716(ra) # 80005e60 <_Z11printStringPKc>
    finishedB = true;
    80006b9c:	00100793          	li	a5,1
    80006ba0:	00006717          	auipc	a4,0x6
    80006ba4:	38f70a23          	sb	a5,916(a4) # 8000cf34 <_ZL9finishedB>
    thread_dispatch();
    80006ba8:	ffffb097          	auipc	ra,0xffffb
    80006bac:	828080e7          	jalr	-2008(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80006bb0:	01813083          	ld	ra,24(sp)
    80006bb4:	01013403          	ld	s0,16(sp)
    80006bb8:	00813483          	ld	s1,8(sp)
    80006bbc:	00013903          	ld	s2,0(sp)
    80006bc0:	02010113          	addi	sp,sp,32
    80006bc4:	00008067          	ret

0000000080006bc8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006bc8:	fe010113          	addi	sp,sp,-32
    80006bcc:	00113c23          	sd	ra,24(sp)
    80006bd0:	00813823          	sd	s0,16(sp)
    80006bd4:	00913423          	sd	s1,8(sp)
    80006bd8:	01213023          	sd	s2,0(sp)
    80006bdc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006be0:	00000913          	li	s2,0
    80006be4:	0380006f          	j	80006c1c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006be8:	ffffa097          	auipc	ra,0xffffa
    80006bec:	7e8080e7          	jalr	2024(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006bf0:	00148493          	addi	s1,s1,1
    80006bf4:	000027b7          	lui	a5,0x2
    80006bf8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006bfc:	0097ee63          	bltu	a5,s1,80006c18 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c00:	00000713          	li	a4,0
    80006c04:	000077b7          	lui	a5,0x7
    80006c08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c0c:	fce7eee3          	bltu	a5,a4,80006be8 <_ZL11workerBodyAPv+0x20>
    80006c10:	00170713          	addi	a4,a4,1
    80006c14:	ff1ff06f          	j	80006c04 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006c18:	00190913          	addi	s2,s2,1
    80006c1c:	00900793          	li	a5,9
    80006c20:	0527e063          	bltu	a5,s2,80006c60 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006c24:	00003517          	auipc	a0,0x3
    80006c28:	5f450513          	addi	a0,a0,1524 # 8000a218 <CONSOLE_STATUS+0x208>
    80006c2c:	fffff097          	auipc	ra,0xfffff
    80006c30:	234080e7          	jalr	564(ra) # 80005e60 <_Z11printStringPKc>
    80006c34:	00000613          	li	a2,0
    80006c38:	00a00593          	li	a1,10
    80006c3c:	0009051b          	sext.w	a0,s2
    80006c40:	fffff097          	auipc	ra,0xfffff
    80006c44:	3d0080e7          	jalr	976(ra) # 80006010 <_Z8printIntiii>
    80006c48:	00004517          	auipc	a0,0x4
    80006c4c:	83050513          	addi	a0,a0,-2000 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c50:	fffff097          	auipc	ra,0xfffff
    80006c54:	210080e7          	jalr	528(ra) # 80005e60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006c58:	00000493          	li	s1,0
    80006c5c:	f99ff06f          	j	80006bf4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006c60:	00003517          	auipc	a0,0x3
    80006c64:	5c050513          	addi	a0,a0,1472 # 8000a220 <CONSOLE_STATUS+0x210>
    80006c68:	fffff097          	auipc	ra,0xfffff
    80006c6c:	1f8080e7          	jalr	504(ra) # 80005e60 <_Z11printStringPKc>
    finishedA = true;
    80006c70:	00100793          	li	a5,1
    80006c74:	00006717          	auipc	a4,0x6
    80006c78:	2cf700a3          	sb	a5,705(a4) # 8000cf35 <_ZL9finishedA>
}
    80006c7c:	01813083          	ld	ra,24(sp)
    80006c80:	01013403          	ld	s0,16(sp)
    80006c84:	00813483          	ld	s1,8(sp)
    80006c88:	00013903          	ld	s2,0(sp)
    80006c8c:	02010113          	addi	sp,sp,32
    80006c90:	00008067          	ret

0000000080006c94 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006c94:	fd010113          	addi	sp,sp,-48
    80006c98:	02113423          	sd	ra,40(sp)
    80006c9c:	02813023          	sd	s0,32(sp)
    80006ca0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ca4:	00000613          	li	a2,0
    80006ca8:	00000597          	auipc	a1,0x0
    80006cac:	f2058593          	addi	a1,a1,-224 # 80006bc8 <_ZL11workerBodyAPv>
    80006cb0:	fd040513          	addi	a0,s0,-48
    80006cb4:	ffffa097          	auipc	ra,0xffffa
    80006cb8:	648080e7          	jalr	1608(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006cbc:	00003517          	auipc	a0,0x3
    80006cc0:	5f450513          	addi	a0,a0,1524 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006cc4:	fffff097          	auipc	ra,0xfffff
    80006cc8:	19c080e7          	jalr	412(ra) # 80005e60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ccc:	00000613          	li	a2,0
    80006cd0:	00000597          	auipc	a1,0x0
    80006cd4:	e1458593          	addi	a1,a1,-492 # 80006ae4 <_ZL11workerBodyBPv>
    80006cd8:	fd840513          	addi	a0,s0,-40
    80006cdc:	ffffa097          	auipc	ra,0xffffa
    80006ce0:	620080e7          	jalr	1568(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006ce4:	00003517          	auipc	a0,0x3
    80006ce8:	5e450513          	addi	a0,a0,1508 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006cec:	fffff097          	auipc	ra,0xfffff
    80006cf0:	174080e7          	jalr	372(ra) # 80005e60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006cf4:	00000613          	li	a2,0
    80006cf8:	00000597          	auipc	a1,0x0
    80006cfc:	c6c58593          	addi	a1,a1,-916 # 80006964 <_ZL11workerBodyCPv>
    80006d00:	fe040513          	addi	a0,s0,-32
    80006d04:	ffffa097          	auipc	ra,0xffffa
    80006d08:	5f8080e7          	jalr	1528(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006d0c:	00003517          	auipc	a0,0x3
    80006d10:	5d450513          	addi	a0,a0,1492 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006d14:	fffff097          	auipc	ra,0xfffff
    80006d18:	14c080e7          	jalr	332(ra) # 80005e60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006d1c:	00000613          	li	a2,0
    80006d20:	00000597          	auipc	a1,0x0
    80006d24:	afc58593          	addi	a1,a1,-1284 # 8000681c <_ZL11workerBodyDPv>
    80006d28:	fe840513          	addi	a0,s0,-24
    80006d2c:	ffffa097          	auipc	ra,0xffffa
    80006d30:	5d0080e7          	jalr	1488(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006d34:	00003517          	auipc	a0,0x3
    80006d38:	5c450513          	addi	a0,a0,1476 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006d3c:	fffff097          	auipc	ra,0xfffff
    80006d40:	124080e7          	jalr	292(ra) # 80005e60 <_Z11printStringPKc>
    80006d44:	00c0006f          	j	80006d50 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006d48:	ffffa097          	auipc	ra,0xffffa
    80006d4c:	688080e7          	jalr	1672(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006d50:	00006797          	auipc	a5,0x6
    80006d54:	1e57c783          	lbu	a5,485(a5) # 8000cf35 <_ZL9finishedA>
    80006d58:	fe0788e3          	beqz	a5,80006d48 <_Z16System_Mode_testv+0xb4>
    80006d5c:	00006797          	auipc	a5,0x6
    80006d60:	1d87c783          	lbu	a5,472(a5) # 8000cf34 <_ZL9finishedB>
    80006d64:	fe0782e3          	beqz	a5,80006d48 <_Z16System_Mode_testv+0xb4>
    80006d68:	00006797          	auipc	a5,0x6
    80006d6c:	1cb7c783          	lbu	a5,459(a5) # 8000cf33 <_ZL9finishedC>
    80006d70:	fc078ce3          	beqz	a5,80006d48 <_Z16System_Mode_testv+0xb4>
    80006d74:	00006797          	auipc	a5,0x6
    80006d78:	1be7c783          	lbu	a5,446(a5) # 8000cf32 <_ZL9finishedD>
    80006d7c:	fc0786e3          	beqz	a5,80006d48 <_Z16System_Mode_testv+0xb4>
    }

}
    80006d80:	02813083          	ld	ra,40(sp)
    80006d84:	02013403          	ld	s0,32(sp)
    80006d88:	03010113          	addi	sp,sp,48
    80006d8c:	00008067          	ret

0000000080006d90 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006d90:	fe010113          	addi	sp,sp,-32
    80006d94:	00113c23          	sd	ra,24(sp)
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00913423          	sd	s1,8(sp)
    80006da0:	01213023          	sd	s2,0(sp)
    80006da4:	02010413          	addi	s0,sp,32
    80006da8:	00050493          	mv	s1,a0
    80006dac:	00058913          	mv	s2,a1
    80006db0:	0015879b          	addiw	a5,a1,1
    80006db4:	0007851b          	sext.w	a0,a5
    80006db8:	00f4a023          	sw	a5,0(s1)
    80006dbc:	0004a823          	sw	zero,16(s1)
    80006dc0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006dc4:	00251513          	slli	a0,a0,0x2
    80006dc8:	ffffa097          	auipc	ra,0xffffa
    80006dcc:	498080e7          	jalr	1176(ra) # 80001260 <_Z9mem_allocm>
    80006dd0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006dd4:	00000593          	li	a1,0
    80006dd8:	02048513          	addi	a0,s1,32
    80006ddc:	ffffa097          	auipc	ra,0xffffa
    80006de0:	630080e7          	jalr	1584(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006de4:	00090593          	mv	a1,s2
    80006de8:	01848513          	addi	a0,s1,24
    80006dec:	ffffa097          	auipc	ra,0xffffa
    80006df0:	620080e7          	jalr	1568(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006df4:	00100593          	li	a1,1
    80006df8:	02848513          	addi	a0,s1,40
    80006dfc:	ffffa097          	auipc	ra,0xffffa
    80006e00:	610080e7          	jalr	1552(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006e04:	00100593          	li	a1,1
    80006e08:	03048513          	addi	a0,s1,48
    80006e0c:	ffffa097          	auipc	ra,0xffffa
    80006e10:	600080e7          	jalr	1536(ra) # 8000140c <_Z8sem_openPP3Semj>
}
    80006e14:	01813083          	ld	ra,24(sp)
    80006e18:	01013403          	ld	s0,16(sp)
    80006e1c:	00813483          	ld	s1,8(sp)
    80006e20:	00013903          	ld	s2,0(sp)
    80006e24:	02010113          	addi	sp,sp,32
    80006e28:	00008067          	ret

0000000080006e2c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006e2c:	fe010113          	addi	sp,sp,-32
    80006e30:	00113c23          	sd	ra,24(sp)
    80006e34:	00813823          	sd	s0,16(sp)
    80006e38:	00913423          	sd	s1,8(sp)
    80006e3c:	01213023          	sd	s2,0(sp)
    80006e40:	02010413          	addi	s0,sp,32
    80006e44:	00050493          	mv	s1,a0
    80006e48:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006e4c:	01853503          	ld	a0,24(a0)
    80006e50:	ffffa097          	auipc	ra,0xffffa
    80006e54:	664080e7          	jalr	1636(ra) # 800014b4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006e58:	0304b503          	ld	a0,48(s1)
    80006e5c:	ffffa097          	auipc	ra,0xffffa
    80006e60:	658080e7          	jalr	1624(ra) # 800014b4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006e64:	0084b783          	ld	a5,8(s1)
    80006e68:	0144a703          	lw	a4,20(s1)
    80006e6c:	00271713          	slli	a4,a4,0x2
    80006e70:	00e787b3          	add	a5,a5,a4
    80006e74:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006e78:	0144a783          	lw	a5,20(s1)
    80006e7c:	0017879b          	addiw	a5,a5,1
    80006e80:	0004a703          	lw	a4,0(s1)
    80006e84:	02e7e7bb          	remw	a5,a5,a4
    80006e88:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006e8c:	0304b503          	ld	a0,48(s1)
    80006e90:	ffffa097          	auipc	ra,0xffffa
    80006e94:	708080e7          	jalr	1800(ra) # 80001598 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006e98:	0204b503          	ld	a0,32(s1)
    80006e9c:	ffffa097          	auipc	ra,0xffffa
    80006ea0:	6fc080e7          	jalr	1788(ra) # 80001598 <_Z10sem_signalP3Sem>

}
    80006ea4:	01813083          	ld	ra,24(sp)
    80006ea8:	01013403          	ld	s0,16(sp)
    80006eac:	00813483          	ld	s1,8(sp)
    80006eb0:	00013903          	ld	s2,0(sp)
    80006eb4:	02010113          	addi	sp,sp,32
    80006eb8:	00008067          	ret

0000000080006ebc <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006ebc:	fe010113          	addi	sp,sp,-32
    80006ec0:	00113c23          	sd	ra,24(sp)
    80006ec4:	00813823          	sd	s0,16(sp)
    80006ec8:	00913423          	sd	s1,8(sp)
    80006ecc:	01213023          	sd	s2,0(sp)
    80006ed0:	02010413          	addi	s0,sp,32
    80006ed4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ed8:	02053503          	ld	a0,32(a0)
    80006edc:	ffffa097          	auipc	ra,0xffffa
    80006ee0:	5d8080e7          	jalr	1496(ra) # 800014b4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006ee4:	0284b503          	ld	a0,40(s1)
    80006ee8:	ffffa097          	auipc	ra,0xffffa
    80006eec:	5cc080e7          	jalr	1484(ra) # 800014b4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006ef0:	0084b703          	ld	a4,8(s1)
    80006ef4:	0104a783          	lw	a5,16(s1)
    80006ef8:	00279693          	slli	a3,a5,0x2
    80006efc:	00d70733          	add	a4,a4,a3
    80006f00:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006f04:	0017879b          	addiw	a5,a5,1
    80006f08:	0004a703          	lw	a4,0(s1)
    80006f0c:	02e7e7bb          	remw	a5,a5,a4
    80006f10:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006f14:	0284b503          	ld	a0,40(s1)
    80006f18:	ffffa097          	auipc	ra,0xffffa
    80006f1c:	680080e7          	jalr	1664(ra) # 80001598 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006f20:	0184b503          	ld	a0,24(s1)
    80006f24:	ffffa097          	auipc	ra,0xffffa
    80006f28:	674080e7          	jalr	1652(ra) # 80001598 <_Z10sem_signalP3Sem>

    return ret;
}
    80006f2c:	00090513          	mv	a0,s2
    80006f30:	01813083          	ld	ra,24(sp)
    80006f34:	01013403          	ld	s0,16(sp)
    80006f38:	00813483          	ld	s1,8(sp)
    80006f3c:	00013903          	ld	s2,0(sp)
    80006f40:	02010113          	addi	sp,sp,32
    80006f44:	00008067          	ret

0000000080006f48 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006f48:	fe010113          	addi	sp,sp,-32
    80006f4c:	00113c23          	sd	ra,24(sp)
    80006f50:	00813823          	sd	s0,16(sp)
    80006f54:	00913423          	sd	s1,8(sp)
    80006f58:	01213023          	sd	s2,0(sp)
    80006f5c:	02010413          	addi	s0,sp,32
    80006f60:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006f64:	02853503          	ld	a0,40(a0)
    80006f68:	ffffa097          	auipc	ra,0xffffa
    80006f6c:	54c080e7          	jalr	1356(ra) # 800014b4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006f70:	0304b503          	ld	a0,48(s1)
    80006f74:	ffffa097          	auipc	ra,0xffffa
    80006f78:	540080e7          	jalr	1344(ra) # 800014b4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006f7c:	0144a783          	lw	a5,20(s1)
    80006f80:	0104a903          	lw	s2,16(s1)
    80006f84:	0327ce63          	blt	a5,s2,80006fc0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006f88:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006f8c:	0304b503          	ld	a0,48(s1)
    80006f90:	ffffa097          	auipc	ra,0xffffa
    80006f94:	608080e7          	jalr	1544(ra) # 80001598 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006f98:	0284b503          	ld	a0,40(s1)
    80006f9c:	ffffa097          	auipc	ra,0xffffa
    80006fa0:	5fc080e7          	jalr	1532(ra) # 80001598 <_Z10sem_signalP3Sem>

    return ret;
}
    80006fa4:	00090513          	mv	a0,s2
    80006fa8:	01813083          	ld	ra,24(sp)
    80006fac:	01013403          	ld	s0,16(sp)
    80006fb0:	00813483          	ld	s1,8(sp)
    80006fb4:	00013903          	ld	s2,0(sp)
    80006fb8:	02010113          	addi	sp,sp,32
    80006fbc:	00008067          	ret
        ret = cap - head + tail;
    80006fc0:	0004a703          	lw	a4,0(s1)
    80006fc4:	4127093b          	subw	s2,a4,s2
    80006fc8:	00f9093b          	addw	s2,s2,a5
    80006fcc:	fc1ff06f          	j	80006f8c <_ZN6Buffer6getCntEv+0x44>

0000000080006fd0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006fd0:	fe010113          	addi	sp,sp,-32
    80006fd4:	00113c23          	sd	ra,24(sp)
    80006fd8:	00813823          	sd	s0,16(sp)
    80006fdc:	00913423          	sd	s1,8(sp)
    80006fe0:	02010413          	addi	s0,sp,32
    80006fe4:	00050493          	mv	s1,a0
    putc('\n');
    80006fe8:	00a00513          	li	a0,10
    80006fec:	ffffa097          	auipc	ra,0xffffa
    80006ff0:	690080e7          	jalr	1680(ra) # 8000167c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006ff4:	00003517          	auipc	a0,0x3
    80006ff8:	32c50513          	addi	a0,a0,812 # 8000a320 <CONSOLE_STATUS+0x310>
    80006ffc:	fffff097          	auipc	ra,0xfffff
    80007000:	e64080e7          	jalr	-412(ra) # 80005e60 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007004:	00048513          	mv	a0,s1
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	f40080e7          	jalr	-192(ra) # 80006f48 <_ZN6Buffer6getCntEv>
    80007010:	02a05c63          	blez	a0,80007048 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007014:	0084b783          	ld	a5,8(s1)
    80007018:	0104a703          	lw	a4,16(s1)
    8000701c:	00271713          	slli	a4,a4,0x2
    80007020:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007024:	0007c503          	lbu	a0,0(a5)
    80007028:	ffffa097          	auipc	ra,0xffffa
    8000702c:	654080e7          	jalr	1620(ra) # 8000167c <_Z4putcc>
        head = (head + 1) % cap;
    80007030:	0104a783          	lw	a5,16(s1)
    80007034:	0017879b          	addiw	a5,a5,1
    80007038:	0004a703          	lw	a4,0(s1)
    8000703c:	02e7e7bb          	remw	a5,a5,a4
    80007040:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007044:	fc1ff06f          	j	80007004 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007048:	02100513          	li	a0,33
    8000704c:	ffffa097          	auipc	ra,0xffffa
    80007050:	630080e7          	jalr	1584(ra) # 8000167c <_Z4putcc>
    putc('\n');
    80007054:	00a00513          	li	a0,10
    80007058:	ffffa097          	auipc	ra,0xffffa
    8000705c:	624080e7          	jalr	1572(ra) # 8000167c <_Z4putcc>
    mem_free(buffer);
    80007060:	0084b503          	ld	a0,8(s1)
    80007064:	ffffa097          	auipc	ra,0xffffa
    80007068:	24c080e7          	jalr	588(ra) # 800012b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000706c:	0204b503          	ld	a0,32(s1)
    80007070:	ffffa097          	auipc	ra,0xffffa
    80007074:	3ec080e7          	jalr	1004(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80007078:	0184b503          	ld	a0,24(s1)
    8000707c:	ffffa097          	auipc	ra,0xffffa
    80007080:	3e0080e7          	jalr	992(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80007084:	0304b503          	ld	a0,48(s1)
    80007088:	ffffa097          	auipc	ra,0xffffa
    8000708c:	3d4080e7          	jalr	980(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80007090:	0284b503          	ld	a0,40(s1)
    80007094:	ffffa097          	auipc	ra,0xffffa
    80007098:	3c8080e7          	jalr	968(ra) # 8000145c <_Z9sem_closeP3Sem>
}
    8000709c:	01813083          	ld	ra,24(sp)
    800070a0:	01013403          	ld	s0,16(sp)
    800070a4:	00813483          	ld	s1,8(sp)
    800070a8:	02010113          	addi	sp,sp,32
    800070ac:	00008067          	ret

00000000800070b0 <start>:
    800070b0:	ff010113          	addi	sp,sp,-16
    800070b4:	00813423          	sd	s0,8(sp)
    800070b8:	01010413          	addi	s0,sp,16
    800070bc:	300027f3          	csrr	a5,mstatus
    800070c0:	ffffe737          	lui	a4,0xffffe
    800070c4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff065f>
    800070c8:	00e7f7b3          	and	a5,a5,a4
    800070cc:	00001737          	lui	a4,0x1
    800070d0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800070d4:	00e7e7b3          	or	a5,a5,a4
    800070d8:	30079073          	csrw	mstatus,a5
    800070dc:	00000797          	auipc	a5,0x0
    800070e0:	16078793          	addi	a5,a5,352 # 8000723c <system_main>
    800070e4:	34179073          	csrw	mepc,a5
    800070e8:	00000793          	li	a5,0
    800070ec:	18079073          	csrw	satp,a5
    800070f0:	000107b7          	lui	a5,0x10
    800070f4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800070f8:	30279073          	csrw	medeleg,a5
    800070fc:	30379073          	csrw	mideleg,a5
    80007100:	104027f3          	csrr	a5,sie
    80007104:	2227e793          	ori	a5,a5,546
    80007108:	10479073          	csrw	sie,a5
    8000710c:	fff00793          	li	a5,-1
    80007110:	00a7d793          	srli	a5,a5,0xa
    80007114:	3b079073          	csrw	pmpaddr0,a5
    80007118:	00f00793          	li	a5,15
    8000711c:	3a079073          	csrw	pmpcfg0,a5
    80007120:	f14027f3          	csrr	a5,mhartid
    80007124:	0200c737          	lui	a4,0x200c
    80007128:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000712c:	0007869b          	sext.w	a3,a5
    80007130:	00269713          	slli	a4,a3,0x2
    80007134:	000f4637          	lui	a2,0xf4
    80007138:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000713c:	00d70733          	add	a4,a4,a3
    80007140:	0037979b          	slliw	a5,a5,0x3
    80007144:	020046b7          	lui	a3,0x2004
    80007148:	00d787b3          	add	a5,a5,a3
    8000714c:	00c585b3          	add	a1,a1,a2
    80007150:	00371693          	slli	a3,a4,0x3
    80007154:	00006717          	auipc	a4,0x6
    80007158:	dec70713          	addi	a4,a4,-532 # 8000cf40 <timer_scratch>
    8000715c:	00b7b023          	sd	a1,0(a5)
    80007160:	00d70733          	add	a4,a4,a3
    80007164:	00f73c23          	sd	a5,24(a4)
    80007168:	02c73023          	sd	a2,32(a4)
    8000716c:	34071073          	csrw	mscratch,a4
    80007170:	00000797          	auipc	a5,0x0
    80007174:	6e078793          	addi	a5,a5,1760 # 80007850 <timervec>
    80007178:	30579073          	csrw	mtvec,a5
    8000717c:	300027f3          	csrr	a5,mstatus
    80007180:	0087e793          	ori	a5,a5,8
    80007184:	30079073          	csrw	mstatus,a5
    80007188:	304027f3          	csrr	a5,mie
    8000718c:	0807e793          	ori	a5,a5,128
    80007190:	30479073          	csrw	mie,a5
    80007194:	f14027f3          	csrr	a5,mhartid
    80007198:	0007879b          	sext.w	a5,a5
    8000719c:	00078213          	mv	tp,a5
    800071a0:	30200073          	mret
    800071a4:	00813403          	ld	s0,8(sp)
    800071a8:	01010113          	addi	sp,sp,16
    800071ac:	00008067          	ret

00000000800071b0 <timerinit>:
    800071b0:	ff010113          	addi	sp,sp,-16
    800071b4:	00813423          	sd	s0,8(sp)
    800071b8:	01010413          	addi	s0,sp,16
    800071bc:	f14027f3          	csrr	a5,mhartid
    800071c0:	0200c737          	lui	a4,0x200c
    800071c4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800071c8:	0007869b          	sext.w	a3,a5
    800071cc:	00269713          	slli	a4,a3,0x2
    800071d0:	000f4637          	lui	a2,0xf4
    800071d4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800071d8:	00d70733          	add	a4,a4,a3
    800071dc:	0037979b          	slliw	a5,a5,0x3
    800071e0:	020046b7          	lui	a3,0x2004
    800071e4:	00d787b3          	add	a5,a5,a3
    800071e8:	00c585b3          	add	a1,a1,a2
    800071ec:	00371693          	slli	a3,a4,0x3
    800071f0:	00006717          	auipc	a4,0x6
    800071f4:	d5070713          	addi	a4,a4,-688 # 8000cf40 <timer_scratch>
    800071f8:	00b7b023          	sd	a1,0(a5)
    800071fc:	00d70733          	add	a4,a4,a3
    80007200:	00f73c23          	sd	a5,24(a4)
    80007204:	02c73023          	sd	a2,32(a4)
    80007208:	34071073          	csrw	mscratch,a4
    8000720c:	00000797          	auipc	a5,0x0
    80007210:	64478793          	addi	a5,a5,1604 # 80007850 <timervec>
    80007214:	30579073          	csrw	mtvec,a5
    80007218:	300027f3          	csrr	a5,mstatus
    8000721c:	0087e793          	ori	a5,a5,8
    80007220:	30079073          	csrw	mstatus,a5
    80007224:	304027f3          	csrr	a5,mie
    80007228:	0807e793          	ori	a5,a5,128
    8000722c:	30479073          	csrw	mie,a5
    80007230:	00813403          	ld	s0,8(sp)
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00008067          	ret

000000008000723c <system_main>:
    8000723c:	fe010113          	addi	sp,sp,-32
    80007240:	00813823          	sd	s0,16(sp)
    80007244:	00913423          	sd	s1,8(sp)
    80007248:	00113c23          	sd	ra,24(sp)
    8000724c:	02010413          	addi	s0,sp,32
    80007250:	00000097          	auipc	ra,0x0
    80007254:	0c4080e7          	jalr	196(ra) # 80007314 <cpuid>
    80007258:	00006497          	auipc	s1,0x6
    8000725c:	b7848493          	addi	s1,s1,-1160 # 8000cdd0 <started>
    80007260:	02050263          	beqz	a0,80007284 <system_main+0x48>
    80007264:	0004a783          	lw	a5,0(s1)
    80007268:	0007879b          	sext.w	a5,a5
    8000726c:	fe078ce3          	beqz	a5,80007264 <system_main+0x28>
    80007270:	0ff0000f          	fence
    80007274:	00003517          	auipc	a0,0x3
    80007278:	37c50513          	addi	a0,a0,892 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    8000727c:	00001097          	auipc	ra,0x1
    80007280:	a70080e7          	jalr	-1424(ra) # 80007cec <panic>
    80007284:	00001097          	auipc	ra,0x1
    80007288:	9c4080e7          	jalr	-1596(ra) # 80007c48 <consoleinit>
    8000728c:	00001097          	auipc	ra,0x1
    80007290:	150080e7          	jalr	336(ra) # 800083dc <printfinit>
    80007294:	00003517          	auipc	a0,0x3
    80007298:	1e450513          	addi	a0,a0,484 # 8000a478 <CONSOLE_STATUS+0x468>
    8000729c:	00001097          	auipc	ra,0x1
    800072a0:	aac080e7          	jalr	-1364(ra) # 80007d48 <__printf>
    800072a4:	00003517          	auipc	a0,0x3
    800072a8:	31c50513          	addi	a0,a0,796 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    800072ac:	00001097          	auipc	ra,0x1
    800072b0:	a9c080e7          	jalr	-1380(ra) # 80007d48 <__printf>
    800072b4:	00003517          	auipc	a0,0x3
    800072b8:	1c450513          	addi	a0,a0,452 # 8000a478 <CONSOLE_STATUS+0x468>
    800072bc:	00001097          	auipc	ra,0x1
    800072c0:	a8c080e7          	jalr	-1396(ra) # 80007d48 <__printf>
    800072c4:	00001097          	auipc	ra,0x1
    800072c8:	4a4080e7          	jalr	1188(ra) # 80008768 <kinit>
    800072cc:	00000097          	auipc	ra,0x0
    800072d0:	148080e7          	jalr	328(ra) # 80007414 <trapinit>
    800072d4:	00000097          	auipc	ra,0x0
    800072d8:	16c080e7          	jalr	364(ra) # 80007440 <trapinithart>
    800072dc:	00000097          	auipc	ra,0x0
    800072e0:	5b4080e7          	jalr	1460(ra) # 80007890 <plicinit>
    800072e4:	00000097          	auipc	ra,0x0
    800072e8:	5d4080e7          	jalr	1492(ra) # 800078b8 <plicinithart>
    800072ec:	00000097          	auipc	ra,0x0
    800072f0:	078080e7          	jalr	120(ra) # 80007364 <userinit>
    800072f4:	0ff0000f          	fence
    800072f8:	00100793          	li	a5,1
    800072fc:	00003517          	auipc	a0,0x3
    80007300:	2dc50513          	addi	a0,a0,732 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80007304:	00f4a023          	sw	a5,0(s1)
    80007308:	00001097          	auipc	ra,0x1
    8000730c:	a40080e7          	jalr	-1472(ra) # 80007d48 <__printf>
    80007310:	0000006f          	j	80007310 <system_main+0xd4>

0000000080007314 <cpuid>:
    80007314:	ff010113          	addi	sp,sp,-16
    80007318:	00813423          	sd	s0,8(sp)
    8000731c:	01010413          	addi	s0,sp,16
    80007320:	00020513          	mv	a0,tp
    80007324:	00813403          	ld	s0,8(sp)
    80007328:	0005051b          	sext.w	a0,a0
    8000732c:	01010113          	addi	sp,sp,16
    80007330:	00008067          	ret

0000000080007334 <mycpu>:
    80007334:	ff010113          	addi	sp,sp,-16
    80007338:	00813423          	sd	s0,8(sp)
    8000733c:	01010413          	addi	s0,sp,16
    80007340:	00020793          	mv	a5,tp
    80007344:	00813403          	ld	s0,8(sp)
    80007348:	0007879b          	sext.w	a5,a5
    8000734c:	00779793          	slli	a5,a5,0x7
    80007350:	00007517          	auipc	a0,0x7
    80007354:	c2050513          	addi	a0,a0,-992 # 8000df70 <cpus>
    80007358:	00f50533          	add	a0,a0,a5
    8000735c:	01010113          	addi	sp,sp,16
    80007360:	00008067          	ret

0000000080007364 <userinit>:
    80007364:	ff010113          	addi	sp,sp,-16
    80007368:	00813423          	sd	s0,8(sp)
    8000736c:	01010413          	addi	s0,sp,16
    80007370:	00813403          	ld	s0,8(sp)
    80007374:	01010113          	addi	sp,sp,16
    80007378:	ffffb317          	auipc	t1,0xffffb
    8000737c:	03830067          	jr	56(t1) # 800023b0 <main>

0000000080007380 <either_copyout>:
    80007380:	ff010113          	addi	sp,sp,-16
    80007384:	00813023          	sd	s0,0(sp)
    80007388:	00113423          	sd	ra,8(sp)
    8000738c:	01010413          	addi	s0,sp,16
    80007390:	02051663          	bnez	a0,800073bc <either_copyout+0x3c>
    80007394:	00058513          	mv	a0,a1
    80007398:	00060593          	mv	a1,a2
    8000739c:	0006861b          	sext.w	a2,a3
    800073a0:	00002097          	auipc	ra,0x2
    800073a4:	c54080e7          	jalr	-940(ra) # 80008ff4 <__memmove>
    800073a8:	00813083          	ld	ra,8(sp)
    800073ac:	00013403          	ld	s0,0(sp)
    800073b0:	00000513          	li	a0,0
    800073b4:	01010113          	addi	sp,sp,16
    800073b8:	00008067          	ret
    800073bc:	00003517          	auipc	a0,0x3
    800073c0:	25c50513          	addi	a0,a0,604 # 8000a618 <CONSOLE_STATUS+0x608>
    800073c4:	00001097          	auipc	ra,0x1
    800073c8:	928080e7          	jalr	-1752(ra) # 80007cec <panic>

00000000800073cc <either_copyin>:
    800073cc:	ff010113          	addi	sp,sp,-16
    800073d0:	00813023          	sd	s0,0(sp)
    800073d4:	00113423          	sd	ra,8(sp)
    800073d8:	01010413          	addi	s0,sp,16
    800073dc:	02059463          	bnez	a1,80007404 <either_copyin+0x38>
    800073e0:	00060593          	mv	a1,a2
    800073e4:	0006861b          	sext.w	a2,a3
    800073e8:	00002097          	auipc	ra,0x2
    800073ec:	c0c080e7          	jalr	-1012(ra) # 80008ff4 <__memmove>
    800073f0:	00813083          	ld	ra,8(sp)
    800073f4:	00013403          	ld	s0,0(sp)
    800073f8:	00000513          	li	a0,0
    800073fc:	01010113          	addi	sp,sp,16
    80007400:	00008067          	ret
    80007404:	00003517          	auipc	a0,0x3
    80007408:	23c50513          	addi	a0,a0,572 # 8000a640 <CONSOLE_STATUS+0x630>
    8000740c:	00001097          	auipc	ra,0x1
    80007410:	8e0080e7          	jalr	-1824(ra) # 80007cec <panic>

0000000080007414 <trapinit>:
    80007414:	ff010113          	addi	sp,sp,-16
    80007418:	00813423          	sd	s0,8(sp)
    8000741c:	01010413          	addi	s0,sp,16
    80007420:	00813403          	ld	s0,8(sp)
    80007424:	00003597          	auipc	a1,0x3
    80007428:	24458593          	addi	a1,a1,580 # 8000a668 <CONSOLE_STATUS+0x658>
    8000742c:	00007517          	auipc	a0,0x7
    80007430:	bc450513          	addi	a0,a0,-1084 # 8000dff0 <tickslock>
    80007434:	01010113          	addi	sp,sp,16
    80007438:	00001317          	auipc	t1,0x1
    8000743c:	5c030067          	jr	1472(t1) # 800089f8 <initlock>

0000000080007440 <trapinithart>:
    80007440:	ff010113          	addi	sp,sp,-16
    80007444:	00813423          	sd	s0,8(sp)
    80007448:	01010413          	addi	s0,sp,16
    8000744c:	00000797          	auipc	a5,0x0
    80007450:	2f478793          	addi	a5,a5,756 # 80007740 <kernelvec>
    80007454:	10579073          	csrw	stvec,a5
    80007458:	00813403          	ld	s0,8(sp)
    8000745c:	01010113          	addi	sp,sp,16
    80007460:	00008067          	ret

0000000080007464 <usertrap>:
    80007464:	ff010113          	addi	sp,sp,-16
    80007468:	00813423          	sd	s0,8(sp)
    8000746c:	01010413          	addi	s0,sp,16
    80007470:	00813403          	ld	s0,8(sp)
    80007474:	01010113          	addi	sp,sp,16
    80007478:	00008067          	ret

000000008000747c <usertrapret>:
    8000747c:	ff010113          	addi	sp,sp,-16
    80007480:	00813423          	sd	s0,8(sp)
    80007484:	01010413          	addi	s0,sp,16
    80007488:	00813403          	ld	s0,8(sp)
    8000748c:	01010113          	addi	sp,sp,16
    80007490:	00008067          	ret

0000000080007494 <kerneltrap>:
    80007494:	fe010113          	addi	sp,sp,-32
    80007498:	00813823          	sd	s0,16(sp)
    8000749c:	00113c23          	sd	ra,24(sp)
    800074a0:	00913423          	sd	s1,8(sp)
    800074a4:	02010413          	addi	s0,sp,32
    800074a8:	142025f3          	csrr	a1,scause
    800074ac:	100027f3          	csrr	a5,sstatus
    800074b0:	0027f793          	andi	a5,a5,2
    800074b4:	10079c63          	bnez	a5,800075cc <kerneltrap+0x138>
    800074b8:	142027f3          	csrr	a5,scause
    800074bc:	0207ce63          	bltz	a5,800074f8 <kerneltrap+0x64>
    800074c0:	00003517          	auipc	a0,0x3
    800074c4:	1f050513          	addi	a0,a0,496 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    800074c8:	00001097          	auipc	ra,0x1
    800074cc:	880080e7          	jalr	-1920(ra) # 80007d48 <__printf>
    800074d0:	141025f3          	csrr	a1,sepc
    800074d4:	14302673          	csrr	a2,stval
    800074d8:	00003517          	auipc	a0,0x3
    800074dc:	1e850513          	addi	a0,a0,488 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    800074e0:	00001097          	auipc	ra,0x1
    800074e4:	868080e7          	jalr	-1944(ra) # 80007d48 <__printf>
    800074e8:	00003517          	auipc	a0,0x3
    800074ec:	1f050513          	addi	a0,a0,496 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	7fc080e7          	jalr	2044(ra) # 80007cec <panic>
    800074f8:	0ff7f713          	andi	a4,a5,255
    800074fc:	00900693          	li	a3,9
    80007500:	04d70063          	beq	a4,a3,80007540 <kerneltrap+0xac>
    80007504:	fff00713          	li	a4,-1
    80007508:	03f71713          	slli	a4,a4,0x3f
    8000750c:	00170713          	addi	a4,a4,1
    80007510:	fae798e3          	bne	a5,a4,800074c0 <kerneltrap+0x2c>
    80007514:	00000097          	auipc	ra,0x0
    80007518:	e00080e7          	jalr	-512(ra) # 80007314 <cpuid>
    8000751c:	06050663          	beqz	a0,80007588 <kerneltrap+0xf4>
    80007520:	144027f3          	csrr	a5,sip
    80007524:	ffd7f793          	andi	a5,a5,-3
    80007528:	14479073          	csrw	sip,a5
    8000752c:	01813083          	ld	ra,24(sp)
    80007530:	01013403          	ld	s0,16(sp)
    80007534:	00813483          	ld	s1,8(sp)
    80007538:	02010113          	addi	sp,sp,32
    8000753c:	00008067          	ret
    80007540:	00000097          	auipc	ra,0x0
    80007544:	3c4080e7          	jalr	964(ra) # 80007904 <plic_claim>
    80007548:	00a00793          	li	a5,10
    8000754c:	00050493          	mv	s1,a0
    80007550:	06f50863          	beq	a0,a5,800075c0 <kerneltrap+0x12c>
    80007554:	fc050ce3          	beqz	a0,8000752c <kerneltrap+0x98>
    80007558:	00050593          	mv	a1,a0
    8000755c:	00003517          	auipc	a0,0x3
    80007560:	13450513          	addi	a0,a0,308 # 8000a690 <CONSOLE_STATUS+0x680>
    80007564:	00000097          	auipc	ra,0x0
    80007568:	7e4080e7          	jalr	2020(ra) # 80007d48 <__printf>
    8000756c:	01013403          	ld	s0,16(sp)
    80007570:	01813083          	ld	ra,24(sp)
    80007574:	00048513          	mv	a0,s1
    80007578:	00813483          	ld	s1,8(sp)
    8000757c:	02010113          	addi	sp,sp,32
    80007580:	00000317          	auipc	t1,0x0
    80007584:	3bc30067          	jr	956(t1) # 8000793c <plic_complete>
    80007588:	00007517          	auipc	a0,0x7
    8000758c:	a6850513          	addi	a0,a0,-1432 # 8000dff0 <tickslock>
    80007590:	00001097          	auipc	ra,0x1
    80007594:	48c080e7          	jalr	1164(ra) # 80008a1c <acquire>
    80007598:	00006717          	auipc	a4,0x6
    8000759c:	83c70713          	addi	a4,a4,-1988 # 8000cdd4 <ticks>
    800075a0:	00072783          	lw	a5,0(a4)
    800075a4:	00007517          	auipc	a0,0x7
    800075a8:	a4c50513          	addi	a0,a0,-1460 # 8000dff0 <tickslock>
    800075ac:	0017879b          	addiw	a5,a5,1
    800075b0:	00f72023          	sw	a5,0(a4)
    800075b4:	00001097          	auipc	ra,0x1
    800075b8:	534080e7          	jalr	1332(ra) # 80008ae8 <release>
    800075bc:	f65ff06f          	j	80007520 <kerneltrap+0x8c>
    800075c0:	00001097          	auipc	ra,0x1
    800075c4:	090080e7          	jalr	144(ra) # 80008650 <uartintr>
    800075c8:	fa5ff06f          	j	8000756c <kerneltrap+0xd8>
    800075cc:	00003517          	auipc	a0,0x3
    800075d0:	0a450513          	addi	a0,a0,164 # 8000a670 <CONSOLE_STATUS+0x660>
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	718080e7          	jalr	1816(ra) # 80007cec <panic>

00000000800075dc <clockintr>:
    800075dc:	fe010113          	addi	sp,sp,-32
    800075e0:	00813823          	sd	s0,16(sp)
    800075e4:	00913423          	sd	s1,8(sp)
    800075e8:	00113c23          	sd	ra,24(sp)
    800075ec:	02010413          	addi	s0,sp,32
    800075f0:	00007497          	auipc	s1,0x7
    800075f4:	a0048493          	addi	s1,s1,-1536 # 8000dff0 <tickslock>
    800075f8:	00048513          	mv	a0,s1
    800075fc:	00001097          	auipc	ra,0x1
    80007600:	420080e7          	jalr	1056(ra) # 80008a1c <acquire>
    80007604:	00005717          	auipc	a4,0x5
    80007608:	7d070713          	addi	a4,a4,2000 # 8000cdd4 <ticks>
    8000760c:	00072783          	lw	a5,0(a4)
    80007610:	01013403          	ld	s0,16(sp)
    80007614:	01813083          	ld	ra,24(sp)
    80007618:	00048513          	mv	a0,s1
    8000761c:	0017879b          	addiw	a5,a5,1
    80007620:	00813483          	ld	s1,8(sp)
    80007624:	00f72023          	sw	a5,0(a4)
    80007628:	02010113          	addi	sp,sp,32
    8000762c:	00001317          	auipc	t1,0x1
    80007630:	4bc30067          	jr	1212(t1) # 80008ae8 <release>

0000000080007634 <devintr>:
    80007634:	142027f3          	csrr	a5,scause
    80007638:	00000513          	li	a0,0
    8000763c:	0007c463          	bltz	a5,80007644 <devintr+0x10>
    80007640:	00008067          	ret
    80007644:	fe010113          	addi	sp,sp,-32
    80007648:	00813823          	sd	s0,16(sp)
    8000764c:	00113c23          	sd	ra,24(sp)
    80007650:	00913423          	sd	s1,8(sp)
    80007654:	02010413          	addi	s0,sp,32
    80007658:	0ff7f713          	andi	a4,a5,255
    8000765c:	00900693          	li	a3,9
    80007660:	04d70c63          	beq	a4,a3,800076b8 <devintr+0x84>
    80007664:	fff00713          	li	a4,-1
    80007668:	03f71713          	slli	a4,a4,0x3f
    8000766c:	00170713          	addi	a4,a4,1
    80007670:	00e78c63          	beq	a5,a4,80007688 <devintr+0x54>
    80007674:	01813083          	ld	ra,24(sp)
    80007678:	01013403          	ld	s0,16(sp)
    8000767c:	00813483          	ld	s1,8(sp)
    80007680:	02010113          	addi	sp,sp,32
    80007684:	00008067          	ret
    80007688:	00000097          	auipc	ra,0x0
    8000768c:	c8c080e7          	jalr	-884(ra) # 80007314 <cpuid>
    80007690:	06050663          	beqz	a0,800076fc <devintr+0xc8>
    80007694:	144027f3          	csrr	a5,sip
    80007698:	ffd7f793          	andi	a5,a5,-3
    8000769c:	14479073          	csrw	sip,a5
    800076a0:	01813083          	ld	ra,24(sp)
    800076a4:	01013403          	ld	s0,16(sp)
    800076a8:	00813483          	ld	s1,8(sp)
    800076ac:	00200513          	li	a0,2
    800076b0:	02010113          	addi	sp,sp,32
    800076b4:	00008067          	ret
    800076b8:	00000097          	auipc	ra,0x0
    800076bc:	24c080e7          	jalr	588(ra) # 80007904 <plic_claim>
    800076c0:	00a00793          	li	a5,10
    800076c4:	00050493          	mv	s1,a0
    800076c8:	06f50663          	beq	a0,a5,80007734 <devintr+0x100>
    800076cc:	00100513          	li	a0,1
    800076d0:	fa0482e3          	beqz	s1,80007674 <devintr+0x40>
    800076d4:	00048593          	mv	a1,s1
    800076d8:	00003517          	auipc	a0,0x3
    800076dc:	fb850513          	addi	a0,a0,-72 # 8000a690 <CONSOLE_STATUS+0x680>
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	668080e7          	jalr	1640(ra) # 80007d48 <__printf>
    800076e8:	00048513          	mv	a0,s1
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	250080e7          	jalr	592(ra) # 8000793c <plic_complete>
    800076f4:	00100513          	li	a0,1
    800076f8:	f7dff06f          	j	80007674 <devintr+0x40>
    800076fc:	00007517          	auipc	a0,0x7
    80007700:	8f450513          	addi	a0,a0,-1804 # 8000dff0 <tickslock>
    80007704:	00001097          	auipc	ra,0x1
    80007708:	318080e7          	jalr	792(ra) # 80008a1c <acquire>
    8000770c:	00005717          	auipc	a4,0x5
    80007710:	6c870713          	addi	a4,a4,1736 # 8000cdd4 <ticks>
    80007714:	00072783          	lw	a5,0(a4)
    80007718:	00007517          	auipc	a0,0x7
    8000771c:	8d850513          	addi	a0,a0,-1832 # 8000dff0 <tickslock>
    80007720:	0017879b          	addiw	a5,a5,1
    80007724:	00f72023          	sw	a5,0(a4)
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	3c0080e7          	jalr	960(ra) # 80008ae8 <release>
    80007730:	f65ff06f          	j	80007694 <devintr+0x60>
    80007734:	00001097          	auipc	ra,0x1
    80007738:	f1c080e7          	jalr	-228(ra) # 80008650 <uartintr>
    8000773c:	fadff06f          	j	800076e8 <devintr+0xb4>

0000000080007740 <kernelvec>:
    80007740:	f0010113          	addi	sp,sp,-256
    80007744:	00113023          	sd	ra,0(sp)
    80007748:	00213423          	sd	sp,8(sp)
    8000774c:	00313823          	sd	gp,16(sp)
    80007750:	00413c23          	sd	tp,24(sp)
    80007754:	02513023          	sd	t0,32(sp)
    80007758:	02613423          	sd	t1,40(sp)
    8000775c:	02713823          	sd	t2,48(sp)
    80007760:	02813c23          	sd	s0,56(sp)
    80007764:	04913023          	sd	s1,64(sp)
    80007768:	04a13423          	sd	a0,72(sp)
    8000776c:	04b13823          	sd	a1,80(sp)
    80007770:	04c13c23          	sd	a2,88(sp)
    80007774:	06d13023          	sd	a3,96(sp)
    80007778:	06e13423          	sd	a4,104(sp)
    8000777c:	06f13823          	sd	a5,112(sp)
    80007780:	07013c23          	sd	a6,120(sp)
    80007784:	09113023          	sd	a7,128(sp)
    80007788:	09213423          	sd	s2,136(sp)
    8000778c:	09313823          	sd	s3,144(sp)
    80007790:	09413c23          	sd	s4,152(sp)
    80007794:	0b513023          	sd	s5,160(sp)
    80007798:	0b613423          	sd	s6,168(sp)
    8000779c:	0b713823          	sd	s7,176(sp)
    800077a0:	0b813c23          	sd	s8,184(sp)
    800077a4:	0d913023          	sd	s9,192(sp)
    800077a8:	0da13423          	sd	s10,200(sp)
    800077ac:	0db13823          	sd	s11,208(sp)
    800077b0:	0dc13c23          	sd	t3,216(sp)
    800077b4:	0fd13023          	sd	t4,224(sp)
    800077b8:	0fe13423          	sd	t5,232(sp)
    800077bc:	0ff13823          	sd	t6,240(sp)
    800077c0:	cd5ff0ef          	jal	ra,80007494 <kerneltrap>
    800077c4:	00013083          	ld	ra,0(sp)
    800077c8:	00813103          	ld	sp,8(sp)
    800077cc:	01013183          	ld	gp,16(sp)
    800077d0:	02013283          	ld	t0,32(sp)
    800077d4:	02813303          	ld	t1,40(sp)
    800077d8:	03013383          	ld	t2,48(sp)
    800077dc:	03813403          	ld	s0,56(sp)
    800077e0:	04013483          	ld	s1,64(sp)
    800077e4:	04813503          	ld	a0,72(sp)
    800077e8:	05013583          	ld	a1,80(sp)
    800077ec:	05813603          	ld	a2,88(sp)
    800077f0:	06013683          	ld	a3,96(sp)
    800077f4:	06813703          	ld	a4,104(sp)
    800077f8:	07013783          	ld	a5,112(sp)
    800077fc:	07813803          	ld	a6,120(sp)
    80007800:	08013883          	ld	a7,128(sp)
    80007804:	08813903          	ld	s2,136(sp)
    80007808:	09013983          	ld	s3,144(sp)
    8000780c:	09813a03          	ld	s4,152(sp)
    80007810:	0a013a83          	ld	s5,160(sp)
    80007814:	0a813b03          	ld	s6,168(sp)
    80007818:	0b013b83          	ld	s7,176(sp)
    8000781c:	0b813c03          	ld	s8,184(sp)
    80007820:	0c013c83          	ld	s9,192(sp)
    80007824:	0c813d03          	ld	s10,200(sp)
    80007828:	0d013d83          	ld	s11,208(sp)
    8000782c:	0d813e03          	ld	t3,216(sp)
    80007830:	0e013e83          	ld	t4,224(sp)
    80007834:	0e813f03          	ld	t5,232(sp)
    80007838:	0f013f83          	ld	t6,240(sp)
    8000783c:	10010113          	addi	sp,sp,256
    80007840:	10200073          	sret
    80007844:	00000013          	nop
    80007848:	00000013          	nop
    8000784c:	00000013          	nop

0000000080007850 <timervec>:
    80007850:	34051573          	csrrw	a0,mscratch,a0
    80007854:	00b53023          	sd	a1,0(a0)
    80007858:	00c53423          	sd	a2,8(a0)
    8000785c:	00d53823          	sd	a3,16(a0)
    80007860:	01853583          	ld	a1,24(a0)
    80007864:	02053603          	ld	a2,32(a0)
    80007868:	0005b683          	ld	a3,0(a1)
    8000786c:	00c686b3          	add	a3,a3,a2
    80007870:	00d5b023          	sd	a3,0(a1)
    80007874:	00200593          	li	a1,2
    80007878:	14459073          	csrw	sip,a1
    8000787c:	01053683          	ld	a3,16(a0)
    80007880:	00853603          	ld	a2,8(a0)
    80007884:	00053583          	ld	a1,0(a0)
    80007888:	34051573          	csrrw	a0,mscratch,a0
    8000788c:	30200073          	mret

0000000080007890 <plicinit>:
    80007890:	ff010113          	addi	sp,sp,-16
    80007894:	00813423          	sd	s0,8(sp)
    80007898:	01010413          	addi	s0,sp,16
    8000789c:	00813403          	ld	s0,8(sp)
    800078a0:	0c0007b7          	lui	a5,0xc000
    800078a4:	00100713          	li	a4,1
    800078a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800078ac:	00e7a223          	sw	a4,4(a5)
    800078b0:	01010113          	addi	sp,sp,16
    800078b4:	00008067          	ret

00000000800078b8 <plicinithart>:
    800078b8:	ff010113          	addi	sp,sp,-16
    800078bc:	00813023          	sd	s0,0(sp)
    800078c0:	00113423          	sd	ra,8(sp)
    800078c4:	01010413          	addi	s0,sp,16
    800078c8:	00000097          	auipc	ra,0x0
    800078cc:	a4c080e7          	jalr	-1460(ra) # 80007314 <cpuid>
    800078d0:	0085171b          	slliw	a4,a0,0x8
    800078d4:	0c0027b7          	lui	a5,0xc002
    800078d8:	00e787b3          	add	a5,a5,a4
    800078dc:	40200713          	li	a4,1026
    800078e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800078e4:	00813083          	ld	ra,8(sp)
    800078e8:	00013403          	ld	s0,0(sp)
    800078ec:	00d5151b          	slliw	a0,a0,0xd
    800078f0:	0c2017b7          	lui	a5,0xc201
    800078f4:	00a78533          	add	a0,a5,a0
    800078f8:	00052023          	sw	zero,0(a0)
    800078fc:	01010113          	addi	sp,sp,16
    80007900:	00008067          	ret

0000000080007904 <plic_claim>:
    80007904:	ff010113          	addi	sp,sp,-16
    80007908:	00813023          	sd	s0,0(sp)
    8000790c:	00113423          	sd	ra,8(sp)
    80007910:	01010413          	addi	s0,sp,16
    80007914:	00000097          	auipc	ra,0x0
    80007918:	a00080e7          	jalr	-1536(ra) # 80007314 <cpuid>
    8000791c:	00813083          	ld	ra,8(sp)
    80007920:	00013403          	ld	s0,0(sp)
    80007924:	00d5151b          	slliw	a0,a0,0xd
    80007928:	0c2017b7          	lui	a5,0xc201
    8000792c:	00a78533          	add	a0,a5,a0
    80007930:	00452503          	lw	a0,4(a0)
    80007934:	01010113          	addi	sp,sp,16
    80007938:	00008067          	ret

000000008000793c <plic_complete>:
    8000793c:	fe010113          	addi	sp,sp,-32
    80007940:	00813823          	sd	s0,16(sp)
    80007944:	00913423          	sd	s1,8(sp)
    80007948:	00113c23          	sd	ra,24(sp)
    8000794c:	02010413          	addi	s0,sp,32
    80007950:	00050493          	mv	s1,a0
    80007954:	00000097          	auipc	ra,0x0
    80007958:	9c0080e7          	jalr	-1600(ra) # 80007314 <cpuid>
    8000795c:	01813083          	ld	ra,24(sp)
    80007960:	01013403          	ld	s0,16(sp)
    80007964:	00d5179b          	slliw	a5,a0,0xd
    80007968:	0c201737          	lui	a4,0xc201
    8000796c:	00f707b3          	add	a5,a4,a5
    80007970:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007974:	00813483          	ld	s1,8(sp)
    80007978:	02010113          	addi	sp,sp,32
    8000797c:	00008067          	ret

0000000080007980 <consolewrite>:
    80007980:	fb010113          	addi	sp,sp,-80
    80007984:	04813023          	sd	s0,64(sp)
    80007988:	04113423          	sd	ra,72(sp)
    8000798c:	02913c23          	sd	s1,56(sp)
    80007990:	03213823          	sd	s2,48(sp)
    80007994:	03313423          	sd	s3,40(sp)
    80007998:	03413023          	sd	s4,32(sp)
    8000799c:	01513c23          	sd	s5,24(sp)
    800079a0:	05010413          	addi	s0,sp,80
    800079a4:	06c05c63          	blez	a2,80007a1c <consolewrite+0x9c>
    800079a8:	00060993          	mv	s3,a2
    800079ac:	00050a13          	mv	s4,a0
    800079b0:	00058493          	mv	s1,a1
    800079b4:	00000913          	li	s2,0
    800079b8:	fff00a93          	li	s5,-1
    800079bc:	01c0006f          	j	800079d8 <consolewrite+0x58>
    800079c0:	fbf44503          	lbu	a0,-65(s0)
    800079c4:	0019091b          	addiw	s2,s2,1
    800079c8:	00148493          	addi	s1,s1,1
    800079cc:	00001097          	auipc	ra,0x1
    800079d0:	a9c080e7          	jalr	-1380(ra) # 80008468 <uartputc>
    800079d4:	03298063          	beq	s3,s2,800079f4 <consolewrite+0x74>
    800079d8:	00048613          	mv	a2,s1
    800079dc:	00100693          	li	a3,1
    800079e0:	000a0593          	mv	a1,s4
    800079e4:	fbf40513          	addi	a0,s0,-65
    800079e8:	00000097          	auipc	ra,0x0
    800079ec:	9e4080e7          	jalr	-1564(ra) # 800073cc <either_copyin>
    800079f0:	fd5518e3          	bne	a0,s5,800079c0 <consolewrite+0x40>
    800079f4:	04813083          	ld	ra,72(sp)
    800079f8:	04013403          	ld	s0,64(sp)
    800079fc:	03813483          	ld	s1,56(sp)
    80007a00:	02813983          	ld	s3,40(sp)
    80007a04:	02013a03          	ld	s4,32(sp)
    80007a08:	01813a83          	ld	s5,24(sp)
    80007a0c:	00090513          	mv	a0,s2
    80007a10:	03013903          	ld	s2,48(sp)
    80007a14:	05010113          	addi	sp,sp,80
    80007a18:	00008067          	ret
    80007a1c:	00000913          	li	s2,0
    80007a20:	fd5ff06f          	j	800079f4 <consolewrite+0x74>

0000000080007a24 <consoleread>:
    80007a24:	f9010113          	addi	sp,sp,-112
    80007a28:	06813023          	sd	s0,96(sp)
    80007a2c:	04913c23          	sd	s1,88(sp)
    80007a30:	05213823          	sd	s2,80(sp)
    80007a34:	05313423          	sd	s3,72(sp)
    80007a38:	05413023          	sd	s4,64(sp)
    80007a3c:	03513c23          	sd	s5,56(sp)
    80007a40:	03613823          	sd	s6,48(sp)
    80007a44:	03713423          	sd	s7,40(sp)
    80007a48:	03813023          	sd	s8,32(sp)
    80007a4c:	06113423          	sd	ra,104(sp)
    80007a50:	01913c23          	sd	s9,24(sp)
    80007a54:	07010413          	addi	s0,sp,112
    80007a58:	00060b93          	mv	s7,a2
    80007a5c:	00050913          	mv	s2,a0
    80007a60:	00058c13          	mv	s8,a1
    80007a64:	00060b1b          	sext.w	s6,a2
    80007a68:	00006497          	auipc	s1,0x6
    80007a6c:	5b048493          	addi	s1,s1,1456 # 8000e018 <cons>
    80007a70:	00400993          	li	s3,4
    80007a74:	fff00a13          	li	s4,-1
    80007a78:	00a00a93          	li	s5,10
    80007a7c:	05705e63          	blez	s7,80007ad8 <consoleread+0xb4>
    80007a80:	09c4a703          	lw	a4,156(s1)
    80007a84:	0984a783          	lw	a5,152(s1)
    80007a88:	0007071b          	sext.w	a4,a4
    80007a8c:	08e78463          	beq	a5,a4,80007b14 <consoleread+0xf0>
    80007a90:	07f7f713          	andi	a4,a5,127
    80007a94:	00e48733          	add	a4,s1,a4
    80007a98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007a9c:	0017869b          	addiw	a3,a5,1
    80007aa0:	08d4ac23          	sw	a3,152(s1)
    80007aa4:	00070c9b          	sext.w	s9,a4
    80007aa8:	0b370663          	beq	a4,s3,80007b54 <consoleread+0x130>
    80007aac:	00100693          	li	a3,1
    80007ab0:	f9f40613          	addi	a2,s0,-97
    80007ab4:	000c0593          	mv	a1,s8
    80007ab8:	00090513          	mv	a0,s2
    80007abc:	f8e40fa3          	sb	a4,-97(s0)
    80007ac0:	00000097          	auipc	ra,0x0
    80007ac4:	8c0080e7          	jalr	-1856(ra) # 80007380 <either_copyout>
    80007ac8:	01450863          	beq	a0,s4,80007ad8 <consoleread+0xb4>
    80007acc:	001c0c13          	addi	s8,s8,1
    80007ad0:	fffb8b9b          	addiw	s7,s7,-1
    80007ad4:	fb5c94e3          	bne	s9,s5,80007a7c <consoleread+0x58>
    80007ad8:	000b851b          	sext.w	a0,s7
    80007adc:	06813083          	ld	ra,104(sp)
    80007ae0:	06013403          	ld	s0,96(sp)
    80007ae4:	05813483          	ld	s1,88(sp)
    80007ae8:	05013903          	ld	s2,80(sp)
    80007aec:	04813983          	ld	s3,72(sp)
    80007af0:	04013a03          	ld	s4,64(sp)
    80007af4:	03813a83          	ld	s5,56(sp)
    80007af8:	02813b83          	ld	s7,40(sp)
    80007afc:	02013c03          	ld	s8,32(sp)
    80007b00:	01813c83          	ld	s9,24(sp)
    80007b04:	40ab053b          	subw	a0,s6,a0
    80007b08:	03013b03          	ld	s6,48(sp)
    80007b0c:	07010113          	addi	sp,sp,112
    80007b10:	00008067          	ret
    80007b14:	00001097          	auipc	ra,0x1
    80007b18:	1d8080e7          	jalr	472(ra) # 80008cec <push_on>
    80007b1c:	0984a703          	lw	a4,152(s1)
    80007b20:	09c4a783          	lw	a5,156(s1)
    80007b24:	0007879b          	sext.w	a5,a5
    80007b28:	fef70ce3          	beq	a4,a5,80007b20 <consoleread+0xfc>
    80007b2c:	00001097          	auipc	ra,0x1
    80007b30:	234080e7          	jalr	564(ra) # 80008d60 <pop_on>
    80007b34:	0984a783          	lw	a5,152(s1)
    80007b38:	07f7f713          	andi	a4,a5,127
    80007b3c:	00e48733          	add	a4,s1,a4
    80007b40:	01874703          	lbu	a4,24(a4)
    80007b44:	0017869b          	addiw	a3,a5,1
    80007b48:	08d4ac23          	sw	a3,152(s1)
    80007b4c:	00070c9b          	sext.w	s9,a4
    80007b50:	f5371ee3          	bne	a4,s3,80007aac <consoleread+0x88>
    80007b54:	000b851b          	sext.w	a0,s7
    80007b58:	f96bf2e3          	bgeu	s7,s6,80007adc <consoleread+0xb8>
    80007b5c:	08f4ac23          	sw	a5,152(s1)
    80007b60:	f7dff06f          	j	80007adc <consoleread+0xb8>

0000000080007b64 <consputc>:
    80007b64:	10000793          	li	a5,256
    80007b68:	00f50663          	beq	a0,a5,80007b74 <consputc+0x10>
    80007b6c:	00001317          	auipc	t1,0x1
    80007b70:	9f430067          	jr	-1548(t1) # 80008560 <uartputc_sync>
    80007b74:	ff010113          	addi	sp,sp,-16
    80007b78:	00113423          	sd	ra,8(sp)
    80007b7c:	00813023          	sd	s0,0(sp)
    80007b80:	01010413          	addi	s0,sp,16
    80007b84:	00800513          	li	a0,8
    80007b88:	00001097          	auipc	ra,0x1
    80007b8c:	9d8080e7          	jalr	-1576(ra) # 80008560 <uartputc_sync>
    80007b90:	02000513          	li	a0,32
    80007b94:	00001097          	auipc	ra,0x1
    80007b98:	9cc080e7          	jalr	-1588(ra) # 80008560 <uartputc_sync>
    80007b9c:	00013403          	ld	s0,0(sp)
    80007ba0:	00813083          	ld	ra,8(sp)
    80007ba4:	00800513          	li	a0,8
    80007ba8:	01010113          	addi	sp,sp,16
    80007bac:	00001317          	auipc	t1,0x1
    80007bb0:	9b430067          	jr	-1612(t1) # 80008560 <uartputc_sync>

0000000080007bb4 <consoleintr>:
    80007bb4:	fe010113          	addi	sp,sp,-32
    80007bb8:	00813823          	sd	s0,16(sp)
    80007bbc:	00913423          	sd	s1,8(sp)
    80007bc0:	01213023          	sd	s2,0(sp)
    80007bc4:	00113c23          	sd	ra,24(sp)
    80007bc8:	02010413          	addi	s0,sp,32
    80007bcc:	00006917          	auipc	s2,0x6
    80007bd0:	44c90913          	addi	s2,s2,1100 # 8000e018 <cons>
    80007bd4:	00050493          	mv	s1,a0
    80007bd8:	00090513          	mv	a0,s2
    80007bdc:	00001097          	auipc	ra,0x1
    80007be0:	e40080e7          	jalr	-448(ra) # 80008a1c <acquire>
    80007be4:	02048c63          	beqz	s1,80007c1c <consoleintr+0x68>
    80007be8:	0a092783          	lw	a5,160(s2)
    80007bec:	09892703          	lw	a4,152(s2)
    80007bf0:	07f00693          	li	a3,127
    80007bf4:	40e7873b          	subw	a4,a5,a4
    80007bf8:	02e6e263          	bltu	a3,a4,80007c1c <consoleintr+0x68>
    80007bfc:	00d00713          	li	a4,13
    80007c00:	04e48063          	beq	s1,a4,80007c40 <consoleintr+0x8c>
    80007c04:	07f7f713          	andi	a4,a5,127
    80007c08:	00e90733          	add	a4,s2,a4
    80007c0c:	0017879b          	addiw	a5,a5,1
    80007c10:	0af92023          	sw	a5,160(s2)
    80007c14:	00970c23          	sb	s1,24(a4)
    80007c18:	08f92e23          	sw	a5,156(s2)
    80007c1c:	01013403          	ld	s0,16(sp)
    80007c20:	01813083          	ld	ra,24(sp)
    80007c24:	00813483          	ld	s1,8(sp)
    80007c28:	00013903          	ld	s2,0(sp)
    80007c2c:	00006517          	auipc	a0,0x6
    80007c30:	3ec50513          	addi	a0,a0,1004 # 8000e018 <cons>
    80007c34:	02010113          	addi	sp,sp,32
    80007c38:	00001317          	auipc	t1,0x1
    80007c3c:	eb030067          	jr	-336(t1) # 80008ae8 <release>
    80007c40:	00a00493          	li	s1,10
    80007c44:	fc1ff06f          	j	80007c04 <consoleintr+0x50>

0000000080007c48 <consoleinit>:
    80007c48:	fe010113          	addi	sp,sp,-32
    80007c4c:	00113c23          	sd	ra,24(sp)
    80007c50:	00813823          	sd	s0,16(sp)
    80007c54:	00913423          	sd	s1,8(sp)
    80007c58:	02010413          	addi	s0,sp,32
    80007c5c:	00006497          	auipc	s1,0x6
    80007c60:	3bc48493          	addi	s1,s1,956 # 8000e018 <cons>
    80007c64:	00048513          	mv	a0,s1
    80007c68:	00003597          	auipc	a1,0x3
    80007c6c:	a8058593          	addi	a1,a1,-1408 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007c70:	00001097          	auipc	ra,0x1
    80007c74:	d88080e7          	jalr	-632(ra) # 800089f8 <initlock>
    80007c78:	00000097          	auipc	ra,0x0
    80007c7c:	7ac080e7          	jalr	1964(ra) # 80008424 <uartinit>
    80007c80:	01813083          	ld	ra,24(sp)
    80007c84:	01013403          	ld	s0,16(sp)
    80007c88:	00000797          	auipc	a5,0x0
    80007c8c:	d9c78793          	addi	a5,a5,-612 # 80007a24 <consoleread>
    80007c90:	0af4bc23          	sd	a5,184(s1)
    80007c94:	00000797          	auipc	a5,0x0
    80007c98:	cec78793          	addi	a5,a5,-788 # 80007980 <consolewrite>
    80007c9c:	0cf4b023          	sd	a5,192(s1)
    80007ca0:	00813483          	ld	s1,8(sp)
    80007ca4:	02010113          	addi	sp,sp,32
    80007ca8:	00008067          	ret

0000000080007cac <console_read>:
    80007cac:	ff010113          	addi	sp,sp,-16
    80007cb0:	00813423          	sd	s0,8(sp)
    80007cb4:	01010413          	addi	s0,sp,16
    80007cb8:	00813403          	ld	s0,8(sp)
    80007cbc:	00006317          	auipc	t1,0x6
    80007cc0:	41433303          	ld	t1,1044(t1) # 8000e0d0 <devsw+0x10>
    80007cc4:	01010113          	addi	sp,sp,16
    80007cc8:	00030067          	jr	t1

0000000080007ccc <console_write>:
    80007ccc:	ff010113          	addi	sp,sp,-16
    80007cd0:	00813423          	sd	s0,8(sp)
    80007cd4:	01010413          	addi	s0,sp,16
    80007cd8:	00813403          	ld	s0,8(sp)
    80007cdc:	00006317          	auipc	t1,0x6
    80007ce0:	3fc33303          	ld	t1,1020(t1) # 8000e0d8 <devsw+0x18>
    80007ce4:	01010113          	addi	sp,sp,16
    80007ce8:	00030067          	jr	t1

0000000080007cec <panic>:
    80007cec:	fe010113          	addi	sp,sp,-32
    80007cf0:	00113c23          	sd	ra,24(sp)
    80007cf4:	00813823          	sd	s0,16(sp)
    80007cf8:	00913423          	sd	s1,8(sp)
    80007cfc:	02010413          	addi	s0,sp,32
    80007d00:	00050493          	mv	s1,a0
    80007d04:	00003517          	auipc	a0,0x3
    80007d08:	9ec50513          	addi	a0,a0,-1556 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007d0c:	00006797          	auipc	a5,0x6
    80007d10:	4607a623          	sw	zero,1132(a5) # 8000e178 <pr+0x18>
    80007d14:	00000097          	auipc	ra,0x0
    80007d18:	034080e7          	jalr	52(ra) # 80007d48 <__printf>
    80007d1c:	00048513          	mv	a0,s1
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	028080e7          	jalr	40(ra) # 80007d48 <__printf>
    80007d28:	00002517          	auipc	a0,0x2
    80007d2c:	75050513          	addi	a0,a0,1872 # 8000a478 <CONSOLE_STATUS+0x468>
    80007d30:	00000097          	auipc	ra,0x0
    80007d34:	018080e7          	jalr	24(ra) # 80007d48 <__printf>
    80007d38:	00100793          	li	a5,1
    80007d3c:	00005717          	auipc	a4,0x5
    80007d40:	08f72e23          	sw	a5,156(a4) # 8000cdd8 <panicked>
    80007d44:	0000006f          	j	80007d44 <panic+0x58>

0000000080007d48 <__printf>:
    80007d48:	f3010113          	addi	sp,sp,-208
    80007d4c:	08813023          	sd	s0,128(sp)
    80007d50:	07313423          	sd	s3,104(sp)
    80007d54:	09010413          	addi	s0,sp,144
    80007d58:	05813023          	sd	s8,64(sp)
    80007d5c:	08113423          	sd	ra,136(sp)
    80007d60:	06913c23          	sd	s1,120(sp)
    80007d64:	07213823          	sd	s2,112(sp)
    80007d68:	07413023          	sd	s4,96(sp)
    80007d6c:	05513c23          	sd	s5,88(sp)
    80007d70:	05613823          	sd	s6,80(sp)
    80007d74:	05713423          	sd	s7,72(sp)
    80007d78:	03913c23          	sd	s9,56(sp)
    80007d7c:	03a13823          	sd	s10,48(sp)
    80007d80:	03b13423          	sd	s11,40(sp)
    80007d84:	00006317          	auipc	t1,0x6
    80007d88:	3dc30313          	addi	t1,t1,988 # 8000e160 <pr>
    80007d8c:	01832c03          	lw	s8,24(t1)
    80007d90:	00b43423          	sd	a1,8(s0)
    80007d94:	00c43823          	sd	a2,16(s0)
    80007d98:	00d43c23          	sd	a3,24(s0)
    80007d9c:	02e43023          	sd	a4,32(s0)
    80007da0:	02f43423          	sd	a5,40(s0)
    80007da4:	03043823          	sd	a6,48(s0)
    80007da8:	03143c23          	sd	a7,56(s0)
    80007dac:	00050993          	mv	s3,a0
    80007db0:	4a0c1663          	bnez	s8,8000825c <__printf+0x514>
    80007db4:	60098c63          	beqz	s3,800083cc <__printf+0x684>
    80007db8:	0009c503          	lbu	a0,0(s3)
    80007dbc:	00840793          	addi	a5,s0,8
    80007dc0:	f6f43c23          	sd	a5,-136(s0)
    80007dc4:	00000493          	li	s1,0
    80007dc8:	22050063          	beqz	a0,80007fe8 <__printf+0x2a0>
    80007dcc:	00002a37          	lui	s4,0x2
    80007dd0:	00018ab7          	lui	s5,0x18
    80007dd4:	000f4b37          	lui	s6,0xf4
    80007dd8:	00989bb7          	lui	s7,0x989
    80007ddc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007de0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007de4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007de8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007dec:	00148c9b          	addiw	s9,s1,1
    80007df0:	02500793          	li	a5,37
    80007df4:	01998933          	add	s2,s3,s9
    80007df8:	38f51263          	bne	a0,a5,8000817c <__printf+0x434>
    80007dfc:	00094783          	lbu	a5,0(s2)
    80007e00:	00078c9b          	sext.w	s9,a5
    80007e04:	1e078263          	beqz	a5,80007fe8 <__printf+0x2a0>
    80007e08:	0024849b          	addiw	s1,s1,2
    80007e0c:	07000713          	li	a4,112
    80007e10:	00998933          	add	s2,s3,s1
    80007e14:	38e78a63          	beq	a5,a4,800081a8 <__printf+0x460>
    80007e18:	20f76863          	bltu	a4,a5,80008028 <__printf+0x2e0>
    80007e1c:	42a78863          	beq	a5,a0,8000824c <__printf+0x504>
    80007e20:	06400713          	li	a4,100
    80007e24:	40e79663          	bne	a5,a4,80008230 <__printf+0x4e8>
    80007e28:	f7843783          	ld	a5,-136(s0)
    80007e2c:	0007a603          	lw	a2,0(a5)
    80007e30:	00878793          	addi	a5,a5,8
    80007e34:	f6f43c23          	sd	a5,-136(s0)
    80007e38:	42064a63          	bltz	a2,8000826c <__printf+0x524>
    80007e3c:	00a00713          	li	a4,10
    80007e40:	02e677bb          	remuw	a5,a2,a4
    80007e44:	00003d97          	auipc	s11,0x3
    80007e48:	8d4d8d93          	addi	s11,s11,-1836 # 8000a718 <digits>
    80007e4c:	00900593          	li	a1,9
    80007e50:	0006051b          	sext.w	a0,a2
    80007e54:	00000c93          	li	s9,0
    80007e58:	02079793          	slli	a5,a5,0x20
    80007e5c:	0207d793          	srli	a5,a5,0x20
    80007e60:	00fd87b3          	add	a5,s11,a5
    80007e64:	0007c783          	lbu	a5,0(a5)
    80007e68:	02e656bb          	divuw	a3,a2,a4
    80007e6c:	f8f40023          	sb	a5,-128(s0)
    80007e70:	14c5d863          	bge	a1,a2,80007fc0 <__printf+0x278>
    80007e74:	06300593          	li	a1,99
    80007e78:	00100c93          	li	s9,1
    80007e7c:	02e6f7bb          	remuw	a5,a3,a4
    80007e80:	02079793          	slli	a5,a5,0x20
    80007e84:	0207d793          	srli	a5,a5,0x20
    80007e88:	00fd87b3          	add	a5,s11,a5
    80007e8c:	0007c783          	lbu	a5,0(a5)
    80007e90:	02e6d73b          	divuw	a4,a3,a4
    80007e94:	f8f400a3          	sb	a5,-127(s0)
    80007e98:	12a5f463          	bgeu	a1,a0,80007fc0 <__printf+0x278>
    80007e9c:	00a00693          	li	a3,10
    80007ea0:	00900593          	li	a1,9
    80007ea4:	02d777bb          	remuw	a5,a4,a3
    80007ea8:	02079793          	slli	a5,a5,0x20
    80007eac:	0207d793          	srli	a5,a5,0x20
    80007eb0:	00fd87b3          	add	a5,s11,a5
    80007eb4:	0007c503          	lbu	a0,0(a5)
    80007eb8:	02d757bb          	divuw	a5,a4,a3
    80007ebc:	f8a40123          	sb	a0,-126(s0)
    80007ec0:	48e5f263          	bgeu	a1,a4,80008344 <__printf+0x5fc>
    80007ec4:	06300513          	li	a0,99
    80007ec8:	02d7f5bb          	remuw	a1,a5,a3
    80007ecc:	02059593          	slli	a1,a1,0x20
    80007ed0:	0205d593          	srli	a1,a1,0x20
    80007ed4:	00bd85b3          	add	a1,s11,a1
    80007ed8:	0005c583          	lbu	a1,0(a1)
    80007edc:	02d7d7bb          	divuw	a5,a5,a3
    80007ee0:	f8b401a3          	sb	a1,-125(s0)
    80007ee4:	48e57263          	bgeu	a0,a4,80008368 <__printf+0x620>
    80007ee8:	3e700513          	li	a0,999
    80007eec:	02d7f5bb          	remuw	a1,a5,a3
    80007ef0:	02059593          	slli	a1,a1,0x20
    80007ef4:	0205d593          	srli	a1,a1,0x20
    80007ef8:	00bd85b3          	add	a1,s11,a1
    80007efc:	0005c583          	lbu	a1,0(a1)
    80007f00:	02d7d7bb          	divuw	a5,a5,a3
    80007f04:	f8b40223          	sb	a1,-124(s0)
    80007f08:	46e57663          	bgeu	a0,a4,80008374 <__printf+0x62c>
    80007f0c:	02d7f5bb          	remuw	a1,a5,a3
    80007f10:	02059593          	slli	a1,a1,0x20
    80007f14:	0205d593          	srli	a1,a1,0x20
    80007f18:	00bd85b3          	add	a1,s11,a1
    80007f1c:	0005c583          	lbu	a1,0(a1)
    80007f20:	02d7d7bb          	divuw	a5,a5,a3
    80007f24:	f8b402a3          	sb	a1,-123(s0)
    80007f28:	46ea7863          	bgeu	s4,a4,80008398 <__printf+0x650>
    80007f2c:	02d7f5bb          	remuw	a1,a5,a3
    80007f30:	02059593          	slli	a1,a1,0x20
    80007f34:	0205d593          	srli	a1,a1,0x20
    80007f38:	00bd85b3          	add	a1,s11,a1
    80007f3c:	0005c583          	lbu	a1,0(a1)
    80007f40:	02d7d7bb          	divuw	a5,a5,a3
    80007f44:	f8b40323          	sb	a1,-122(s0)
    80007f48:	3eeaf863          	bgeu	s5,a4,80008338 <__printf+0x5f0>
    80007f4c:	02d7f5bb          	remuw	a1,a5,a3
    80007f50:	02059593          	slli	a1,a1,0x20
    80007f54:	0205d593          	srli	a1,a1,0x20
    80007f58:	00bd85b3          	add	a1,s11,a1
    80007f5c:	0005c583          	lbu	a1,0(a1)
    80007f60:	02d7d7bb          	divuw	a5,a5,a3
    80007f64:	f8b403a3          	sb	a1,-121(s0)
    80007f68:	42eb7e63          	bgeu	s6,a4,800083a4 <__printf+0x65c>
    80007f6c:	02d7f5bb          	remuw	a1,a5,a3
    80007f70:	02059593          	slli	a1,a1,0x20
    80007f74:	0205d593          	srli	a1,a1,0x20
    80007f78:	00bd85b3          	add	a1,s11,a1
    80007f7c:	0005c583          	lbu	a1,0(a1)
    80007f80:	02d7d7bb          	divuw	a5,a5,a3
    80007f84:	f8b40423          	sb	a1,-120(s0)
    80007f88:	42ebfc63          	bgeu	s7,a4,800083c0 <__printf+0x678>
    80007f8c:	02079793          	slli	a5,a5,0x20
    80007f90:	0207d793          	srli	a5,a5,0x20
    80007f94:	00fd8db3          	add	s11,s11,a5
    80007f98:	000dc703          	lbu	a4,0(s11)
    80007f9c:	00a00793          	li	a5,10
    80007fa0:	00900c93          	li	s9,9
    80007fa4:	f8e404a3          	sb	a4,-119(s0)
    80007fa8:	00065c63          	bgez	a2,80007fc0 <__printf+0x278>
    80007fac:	f9040713          	addi	a4,s0,-112
    80007fb0:	00f70733          	add	a4,a4,a5
    80007fb4:	02d00693          	li	a3,45
    80007fb8:	fed70823          	sb	a3,-16(a4)
    80007fbc:	00078c93          	mv	s9,a5
    80007fc0:	f8040793          	addi	a5,s0,-128
    80007fc4:	01978cb3          	add	s9,a5,s9
    80007fc8:	f7f40d13          	addi	s10,s0,-129
    80007fcc:	000cc503          	lbu	a0,0(s9)
    80007fd0:	fffc8c93          	addi	s9,s9,-1
    80007fd4:	00000097          	auipc	ra,0x0
    80007fd8:	b90080e7          	jalr	-1136(ra) # 80007b64 <consputc>
    80007fdc:	ffac98e3          	bne	s9,s10,80007fcc <__printf+0x284>
    80007fe0:	00094503          	lbu	a0,0(s2)
    80007fe4:	e00514e3          	bnez	a0,80007dec <__printf+0xa4>
    80007fe8:	1a0c1663          	bnez	s8,80008194 <__printf+0x44c>
    80007fec:	08813083          	ld	ra,136(sp)
    80007ff0:	08013403          	ld	s0,128(sp)
    80007ff4:	07813483          	ld	s1,120(sp)
    80007ff8:	07013903          	ld	s2,112(sp)
    80007ffc:	06813983          	ld	s3,104(sp)
    80008000:	06013a03          	ld	s4,96(sp)
    80008004:	05813a83          	ld	s5,88(sp)
    80008008:	05013b03          	ld	s6,80(sp)
    8000800c:	04813b83          	ld	s7,72(sp)
    80008010:	04013c03          	ld	s8,64(sp)
    80008014:	03813c83          	ld	s9,56(sp)
    80008018:	03013d03          	ld	s10,48(sp)
    8000801c:	02813d83          	ld	s11,40(sp)
    80008020:	0d010113          	addi	sp,sp,208
    80008024:	00008067          	ret
    80008028:	07300713          	li	a4,115
    8000802c:	1ce78a63          	beq	a5,a4,80008200 <__printf+0x4b8>
    80008030:	07800713          	li	a4,120
    80008034:	1ee79e63          	bne	a5,a4,80008230 <__printf+0x4e8>
    80008038:	f7843783          	ld	a5,-136(s0)
    8000803c:	0007a703          	lw	a4,0(a5)
    80008040:	00878793          	addi	a5,a5,8
    80008044:	f6f43c23          	sd	a5,-136(s0)
    80008048:	28074263          	bltz	a4,800082cc <__printf+0x584>
    8000804c:	00002d97          	auipc	s11,0x2
    80008050:	6ccd8d93          	addi	s11,s11,1740 # 8000a718 <digits>
    80008054:	00f77793          	andi	a5,a4,15
    80008058:	00fd87b3          	add	a5,s11,a5
    8000805c:	0007c683          	lbu	a3,0(a5)
    80008060:	00f00613          	li	a2,15
    80008064:	0007079b          	sext.w	a5,a4
    80008068:	f8d40023          	sb	a3,-128(s0)
    8000806c:	0047559b          	srliw	a1,a4,0x4
    80008070:	0047569b          	srliw	a3,a4,0x4
    80008074:	00000c93          	li	s9,0
    80008078:	0ee65063          	bge	a2,a4,80008158 <__printf+0x410>
    8000807c:	00f6f693          	andi	a3,a3,15
    80008080:	00dd86b3          	add	a3,s11,a3
    80008084:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008088:	0087d79b          	srliw	a5,a5,0x8
    8000808c:	00100c93          	li	s9,1
    80008090:	f8d400a3          	sb	a3,-127(s0)
    80008094:	0cb67263          	bgeu	a2,a1,80008158 <__printf+0x410>
    80008098:	00f7f693          	andi	a3,a5,15
    8000809c:	00dd86b3          	add	a3,s11,a3
    800080a0:	0006c583          	lbu	a1,0(a3)
    800080a4:	00f00613          	li	a2,15
    800080a8:	0047d69b          	srliw	a3,a5,0x4
    800080ac:	f8b40123          	sb	a1,-126(s0)
    800080b0:	0047d593          	srli	a1,a5,0x4
    800080b4:	28f67e63          	bgeu	a2,a5,80008350 <__printf+0x608>
    800080b8:	00f6f693          	andi	a3,a3,15
    800080bc:	00dd86b3          	add	a3,s11,a3
    800080c0:	0006c503          	lbu	a0,0(a3)
    800080c4:	0087d813          	srli	a6,a5,0x8
    800080c8:	0087d69b          	srliw	a3,a5,0x8
    800080cc:	f8a401a3          	sb	a0,-125(s0)
    800080d0:	28b67663          	bgeu	a2,a1,8000835c <__printf+0x614>
    800080d4:	00f6f693          	andi	a3,a3,15
    800080d8:	00dd86b3          	add	a3,s11,a3
    800080dc:	0006c583          	lbu	a1,0(a3)
    800080e0:	00c7d513          	srli	a0,a5,0xc
    800080e4:	00c7d69b          	srliw	a3,a5,0xc
    800080e8:	f8b40223          	sb	a1,-124(s0)
    800080ec:	29067a63          	bgeu	a2,a6,80008380 <__printf+0x638>
    800080f0:	00f6f693          	andi	a3,a3,15
    800080f4:	00dd86b3          	add	a3,s11,a3
    800080f8:	0006c583          	lbu	a1,0(a3)
    800080fc:	0107d813          	srli	a6,a5,0x10
    80008100:	0107d69b          	srliw	a3,a5,0x10
    80008104:	f8b402a3          	sb	a1,-123(s0)
    80008108:	28a67263          	bgeu	a2,a0,8000838c <__printf+0x644>
    8000810c:	00f6f693          	andi	a3,a3,15
    80008110:	00dd86b3          	add	a3,s11,a3
    80008114:	0006c683          	lbu	a3,0(a3)
    80008118:	0147d79b          	srliw	a5,a5,0x14
    8000811c:	f8d40323          	sb	a3,-122(s0)
    80008120:	21067663          	bgeu	a2,a6,8000832c <__printf+0x5e4>
    80008124:	02079793          	slli	a5,a5,0x20
    80008128:	0207d793          	srli	a5,a5,0x20
    8000812c:	00fd8db3          	add	s11,s11,a5
    80008130:	000dc683          	lbu	a3,0(s11)
    80008134:	00800793          	li	a5,8
    80008138:	00700c93          	li	s9,7
    8000813c:	f8d403a3          	sb	a3,-121(s0)
    80008140:	00075c63          	bgez	a4,80008158 <__printf+0x410>
    80008144:	f9040713          	addi	a4,s0,-112
    80008148:	00f70733          	add	a4,a4,a5
    8000814c:	02d00693          	li	a3,45
    80008150:	fed70823          	sb	a3,-16(a4)
    80008154:	00078c93          	mv	s9,a5
    80008158:	f8040793          	addi	a5,s0,-128
    8000815c:	01978cb3          	add	s9,a5,s9
    80008160:	f7f40d13          	addi	s10,s0,-129
    80008164:	000cc503          	lbu	a0,0(s9)
    80008168:	fffc8c93          	addi	s9,s9,-1
    8000816c:	00000097          	auipc	ra,0x0
    80008170:	9f8080e7          	jalr	-1544(ra) # 80007b64 <consputc>
    80008174:	ff9d18e3          	bne	s10,s9,80008164 <__printf+0x41c>
    80008178:	0100006f          	j	80008188 <__printf+0x440>
    8000817c:	00000097          	auipc	ra,0x0
    80008180:	9e8080e7          	jalr	-1560(ra) # 80007b64 <consputc>
    80008184:	000c8493          	mv	s1,s9
    80008188:	00094503          	lbu	a0,0(s2)
    8000818c:	c60510e3          	bnez	a0,80007dec <__printf+0xa4>
    80008190:	e40c0ee3          	beqz	s8,80007fec <__printf+0x2a4>
    80008194:	00006517          	auipc	a0,0x6
    80008198:	fcc50513          	addi	a0,a0,-52 # 8000e160 <pr>
    8000819c:	00001097          	auipc	ra,0x1
    800081a0:	94c080e7          	jalr	-1716(ra) # 80008ae8 <release>
    800081a4:	e49ff06f          	j	80007fec <__printf+0x2a4>
    800081a8:	f7843783          	ld	a5,-136(s0)
    800081ac:	03000513          	li	a0,48
    800081b0:	01000d13          	li	s10,16
    800081b4:	00878713          	addi	a4,a5,8
    800081b8:	0007bc83          	ld	s9,0(a5)
    800081bc:	f6e43c23          	sd	a4,-136(s0)
    800081c0:	00000097          	auipc	ra,0x0
    800081c4:	9a4080e7          	jalr	-1628(ra) # 80007b64 <consputc>
    800081c8:	07800513          	li	a0,120
    800081cc:	00000097          	auipc	ra,0x0
    800081d0:	998080e7          	jalr	-1640(ra) # 80007b64 <consputc>
    800081d4:	00002d97          	auipc	s11,0x2
    800081d8:	544d8d93          	addi	s11,s11,1348 # 8000a718 <digits>
    800081dc:	03ccd793          	srli	a5,s9,0x3c
    800081e0:	00fd87b3          	add	a5,s11,a5
    800081e4:	0007c503          	lbu	a0,0(a5)
    800081e8:	fffd0d1b          	addiw	s10,s10,-1
    800081ec:	004c9c93          	slli	s9,s9,0x4
    800081f0:	00000097          	auipc	ra,0x0
    800081f4:	974080e7          	jalr	-1676(ra) # 80007b64 <consputc>
    800081f8:	fe0d12e3          	bnez	s10,800081dc <__printf+0x494>
    800081fc:	f8dff06f          	j	80008188 <__printf+0x440>
    80008200:	f7843783          	ld	a5,-136(s0)
    80008204:	0007bc83          	ld	s9,0(a5)
    80008208:	00878793          	addi	a5,a5,8
    8000820c:	f6f43c23          	sd	a5,-136(s0)
    80008210:	000c9a63          	bnez	s9,80008224 <__printf+0x4dc>
    80008214:	1080006f          	j	8000831c <__printf+0x5d4>
    80008218:	001c8c93          	addi	s9,s9,1
    8000821c:	00000097          	auipc	ra,0x0
    80008220:	948080e7          	jalr	-1720(ra) # 80007b64 <consputc>
    80008224:	000cc503          	lbu	a0,0(s9)
    80008228:	fe0518e3          	bnez	a0,80008218 <__printf+0x4d0>
    8000822c:	f5dff06f          	j	80008188 <__printf+0x440>
    80008230:	02500513          	li	a0,37
    80008234:	00000097          	auipc	ra,0x0
    80008238:	930080e7          	jalr	-1744(ra) # 80007b64 <consputc>
    8000823c:	000c8513          	mv	a0,s9
    80008240:	00000097          	auipc	ra,0x0
    80008244:	924080e7          	jalr	-1756(ra) # 80007b64 <consputc>
    80008248:	f41ff06f          	j	80008188 <__printf+0x440>
    8000824c:	02500513          	li	a0,37
    80008250:	00000097          	auipc	ra,0x0
    80008254:	914080e7          	jalr	-1772(ra) # 80007b64 <consputc>
    80008258:	f31ff06f          	j	80008188 <__printf+0x440>
    8000825c:	00030513          	mv	a0,t1
    80008260:	00000097          	auipc	ra,0x0
    80008264:	7bc080e7          	jalr	1980(ra) # 80008a1c <acquire>
    80008268:	b4dff06f          	j	80007db4 <__printf+0x6c>
    8000826c:	40c0053b          	negw	a0,a2
    80008270:	00a00713          	li	a4,10
    80008274:	02e576bb          	remuw	a3,a0,a4
    80008278:	00002d97          	auipc	s11,0x2
    8000827c:	4a0d8d93          	addi	s11,s11,1184 # 8000a718 <digits>
    80008280:	ff700593          	li	a1,-9
    80008284:	02069693          	slli	a3,a3,0x20
    80008288:	0206d693          	srli	a3,a3,0x20
    8000828c:	00dd86b3          	add	a3,s11,a3
    80008290:	0006c683          	lbu	a3,0(a3)
    80008294:	02e557bb          	divuw	a5,a0,a4
    80008298:	f8d40023          	sb	a3,-128(s0)
    8000829c:	10b65e63          	bge	a2,a1,800083b8 <__printf+0x670>
    800082a0:	06300593          	li	a1,99
    800082a4:	02e7f6bb          	remuw	a3,a5,a4
    800082a8:	02069693          	slli	a3,a3,0x20
    800082ac:	0206d693          	srli	a3,a3,0x20
    800082b0:	00dd86b3          	add	a3,s11,a3
    800082b4:	0006c683          	lbu	a3,0(a3)
    800082b8:	02e7d73b          	divuw	a4,a5,a4
    800082bc:	00200793          	li	a5,2
    800082c0:	f8d400a3          	sb	a3,-127(s0)
    800082c4:	bca5ece3          	bltu	a1,a0,80007e9c <__printf+0x154>
    800082c8:	ce5ff06f          	j	80007fac <__printf+0x264>
    800082cc:	40e007bb          	negw	a5,a4
    800082d0:	00002d97          	auipc	s11,0x2
    800082d4:	448d8d93          	addi	s11,s11,1096 # 8000a718 <digits>
    800082d8:	00f7f693          	andi	a3,a5,15
    800082dc:	00dd86b3          	add	a3,s11,a3
    800082e0:	0006c583          	lbu	a1,0(a3)
    800082e4:	ff100613          	li	a2,-15
    800082e8:	0047d69b          	srliw	a3,a5,0x4
    800082ec:	f8b40023          	sb	a1,-128(s0)
    800082f0:	0047d59b          	srliw	a1,a5,0x4
    800082f4:	0ac75e63          	bge	a4,a2,800083b0 <__printf+0x668>
    800082f8:	00f6f693          	andi	a3,a3,15
    800082fc:	00dd86b3          	add	a3,s11,a3
    80008300:	0006c603          	lbu	a2,0(a3)
    80008304:	00f00693          	li	a3,15
    80008308:	0087d79b          	srliw	a5,a5,0x8
    8000830c:	f8c400a3          	sb	a2,-127(s0)
    80008310:	d8b6e4e3          	bltu	a3,a1,80008098 <__printf+0x350>
    80008314:	00200793          	li	a5,2
    80008318:	e2dff06f          	j	80008144 <__printf+0x3fc>
    8000831c:	00002c97          	auipc	s9,0x2
    80008320:	3dcc8c93          	addi	s9,s9,988 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80008324:	02800513          	li	a0,40
    80008328:	ef1ff06f          	j	80008218 <__printf+0x4d0>
    8000832c:	00700793          	li	a5,7
    80008330:	00600c93          	li	s9,6
    80008334:	e0dff06f          	j	80008140 <__printf+0x3f8>
    80008338:	00700793          	li	a5,7
    8000833c:	00600c93          	li	s9,6
    80008340:	c69ff06f          	j	80007fa8 <__printf+0x260>
    80008344:	00300793          	li	a5,3
    80008348:	00200c93          	li	s9,2
    8000834c:	c5dff06f          	j	80007fa8 <__printf+0x260>
    80008350:	00300793          	li	a5,3
    80008354:	00200c93          	li	s9,2
    80008358:	de9ff06f          	j	80008140 <__printf+0x3f8>
    8000835c:	00400793          	li	a5,4
    80008360:	00300c93          	li	s9,3
    80008364:	dddff06f          	j	80008140 <__printf+0x3f8>
    80008368:	00400793          	li	a5,4
    8000836c:	00300c93          	li	s9,3
    80008370:	c39ff06f          	j	80007fa8 <__printf+0x260>
    80008374:	00500793          	li	a5,5
    80008378:	00400c93          	li	s9,4
    8000837c:	c2dff06f          	j	80007fa8 <__printf+0x260>
    80008380:	00500793          	li	a5,5
    80008384:	00400c93          	li	s9,4
    80008388:	db9ff06f          	j	80008140 <__printf+0x3f8>
    8000838c:	00600793          	li	a5,6
    80008390:	00500c93          	li	s9,5
    80008394:	dadff06f          	j	80008140 <__printf+0x3f8>
    80008398:	00600793          	li	a5,6
    8000839c:	00500c93          	li	s9,5
    800083a0:	c09ff06f          	j	80007fa8 <__printf+0x260>
    800083a4:	00800793          	li	a5,8
    800083a8:	00700c93          	li	s9,7
    800083ac:	bfdff06f          	j	80007fa8 <__printf+0x260>
    800083b0:	00100793          	li	a5,1
    800083b4:	d91ff06f          	j	80008144 <__printf+0x3fc>
    800083b8:	00100793          	li	a5,1
    800083bc:	bf1ff06f          	j	80007fac <__printf+0x264>
    800083c0:	00900793          	li	a5,9
    800083c4:	00800c93          	li	s9,8
    800083c8:	be1ff06f          	j	80007fa8 <__printf+0x260>
    800083cc:	00002517          	auipc	a0,0x2
    800083d0:	33450513          	addi	a0,a0,820 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800083d4:	00000097          	auipc	ra,0x0
    800083d8:	918080e7          	jalr	-1768(ra) # 80007cec <panic>

00000000800083dc <printfinit>:
    800083dc:	fe010113          	addi	sp,sp,-32
    800083e0:	00813823          	sd	s0,16(sp)
    800083e4:	00913423          	sd	s1,8(sp)
    800083e8:	00113c23          	sd	ra,24(sp)
    800083ec:	02010413          	addi	s0,sp,32
    800083f0:	00006497          	auipc	s1,0x6
    800083f4:	d7048493          	addi	s1,s1,-656 # 8000e160 <pr>
    800083f8:	00048513          	mv	a0,s1
    800083fc:	00002597          	auipc	a1,0x2
    80008400:	31458593          	addi	a1,a1,788 # 8000a710 <CONSOLE_STATUS+0x700>
    80008404:	00000097          	auipc	ra,0x0
    80008408:	5f4080e7          	jalr	1524(ra) # 800089f8 <initlock>
    8000840c:	01813083          	ld	ra,24(sp)
    80008410:	01013403          	ld	s0,16(sp)
    80008414:	0004ac23          	sw	zero,24(s1)
    80008418:	00813483          	ld	s1,8(sp)
    8000841c:	02010113          	addi	sp,sp,32
    80008420:	00008067          	ret

0000000080008424 <uartinit>:
    80008424:	ff010113          	addi	sp,sp,-16
    80008428:	00813423          	sd	s0,8(sp)
    8000842c:	01010413          	addi	s0,sp,16
    80008430:	100007b7          	lui	a5,0x10000
    80008434:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008438:	f8000713          	li	a4,-128
    8000843c:	00e781a3          	sb	a4,3(a5)
    80008440:	00300713          	li	a4,3
    80008444:	00e78023          	sb	a4,0(a5)
    80008448:	000780a3          	sb	zero,1(a5)
    8000844c:	00e781a3          	sb	a4,3(a5)
    80008450:	00700693          	li	a3,7
    80008454:	00d78123          	sb	a3,2(a5)
    80008458:	00e780a3          	sb	a4,1(a5)
    8000845c:	00813403          	ld	s0,8(sp)
    80008460:	01010113          	addi	sp,sp,16
    80008464:	00008067          	ret

0000000080008468 <uartputc>:
    80008468:	00005797          	auipc	a5,0x5
    8000846c:	9707a783          	lw	a5,-1680(a5) # 8000cdd8 <panicked>
    80008470:	00078463          	beqz	a5,80008478 <uartputc+0x10>
    80008474:	0000006f          	j	80008474 <uartputc+0xc>
    80008478:	fd010113          	addi	sp,sp,-48
    8000847c:	02813023          	sd	s0,32(sp)
    80008480:	00913c23          	sd	s1,24(sp)
    80008484:	01213823          	sd	s2,16(sp)
    80008488:	01313423          	sd	s3,8(sp)
    8000848c:	02113423          	sd	ra,40(sp)
    80008490:	03010413          	addi	s0,sp,48
    80008494:	00005917          	auipc	s2,0x5
    80008498:	94c90913          	addi	s2,s2,-1716 # 8000cde0 <uart_tx_r>
    8000849c:	00093783          	ld	a5,0(s2)
    800084a0:	00005497          	auipc	s1,0x5
    800084a4:	94848493          	addi	s1,s1,-1720 # 8000cde8 <uart_tx_w>
    800084a8:	0004b703          	ld	a4,0(s1)
    800084ac:	02078693          	addi	a3,a5,32
    800084b0:	00050993          	mv	s3,a0
    800084b4:	02e69c63          	bne	a3,a4,800084ec <uartputc+0x84>
    800084b8:	00001097          	auipc	ra,0x1
    800084bc:	834080e7          	jalr	-1996(ra) # 80008cec <push_on>
    800084c0:	00093783          	ld	a5,0(s2)
    800084c4:	0004b703          	ld	a4,0(s1)
    800084c8:	02078793          	addi	a5,a5,32
    800084cc:	00e79463          	bne	a5,a4,800084d4 <uartputc+0x6c>
    800084d0:	0000006f          	j	800084d0 <uartputc+0x68>
    800084d4:	00001097          	auipc	ra,0x1
    800084d8:	88c080e7          	jalr	-1908(ra) # 80008d60 <pop_on>
    800084dc:	00093783          	ld	a5,0(s2)
    800084e0:	0004b703          	ld	a4,0(s1)
    800084e4:	02078693          	addi	a3,a5,32
    800084e8:	fce688e3          	beq	a3,a4,800084b8 <uartputc+0x50>
    800084ec:	01f77693          	andi	a3,a4,31
    800084f0:	00006597          	auipc	a1,0x6
    800084f4:	c9058593          	addi	a1,a1,-880 # 8000e180 <uart_tx_buf>
    800084f8:	00d586b3          	add	a3,a1,a3
    800084fc:	00170713          	addi	a4,a4,1
    80008500:	01368023          	sb	s3,0(a3)
    80008504:	00e4b023          	sd	a4,0(s1)
    80008508:	10000637          	lui	a2,0x10000
    8000850c:	02f71063          	bne	a4,a5,8000852c <uartputc+0xc4>
    80008510:	0340006f          	j	80008544 <uartputc+0xdc>
    80008514:	00074703          	lbu	a4,0(a4)
    80008518:	00f93023          	sd	a5,0(s2)
    8000851c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008520:	00093783          	ld	a5,0(s2)
    80008524:	0004b703          	ld	a4,0(s1)
    80008528:	00f70e63          	beq	a4,a5,80008544 <uartputc+0xdc>
    8000852c:	00564683          	lbu	a3,5(a2)
    80008530:	01f7f713          	andi	a4,a5,31
    80008534:	00e58733          	add	a4,a1,a4
    80008538:	0206f693          	andi	a3,a3,32
    8000853c:	00178793          	addi	a5,a5,1
    80008540:	fc069ae3          	bnez	a3,80008514 <uartputc+0xac>
    80008544:	02813083          	ld	ra,40(sp)
    80008548:	02013403          	ld	s0,32(sp)
    8000854c:	01813483          	ld	s1,24(sp)
    80008550:	01013903          	ld	s2,16(sp)
    80008554:	00813983          	ld	s3,8(sp)
    80008558:	03010113          	addi	sp,sp,48
    8000855c:	00008067          	ret

0000000080008560 <uartputc_sync>:
    80008560:	ff010113          	addi	sp,sp,-16
    80008564:	00813423          	sd	s0,8(sp)
    80008568:	01010413          	addi	s0,sp,16
    8000856c:	00005717          	auipc	a4,0x5
    80008570:	86c72703          	lw	a4,-1940(a4) # 8000cdd8 <panicked>
    80008574:	02071663          	bnez	a4,800085a0 <uartputc_sync+0x40>
    80008578:	00050793          	mv	a5,a0
    8000857c:	100006b7          	lui	a3,0x10000
    80008580:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008584:	02077713          	andi	a4,a4,32
    80008588:	fe070ce3          	beqz	a4,80008580 <uartputc_sync+0x20>
    8000858c:	0ff7f793          	andi	a5,a5,255
    80008590:	00f68023          	sb	a5,0(a3)
    80008594:	00813403          	ld	s0,8(sp)
    80008598:	01010113          	addi	sp,sp,16
    8000859c:	00008067          	ret
    800085a0:	0000006f          	j	800085a0 <uartputc_sync+0x40>

00000000800085a4 <uartstart>:
    800085a4:	ff010113          	addi	sp,sp,-16
    800085a8:	00813423          	sd	s0,8(sp)
    800085ac:	01010413          	addi	s0,sp,16
    800085b0:	00005617          	auipc	a2,0x5
    800085b4:	83060613          	addi	a2,a2,-2000 # 8000cde0 <uart_tx_r>
    800085b8:	00005517          	auipc	a0,0x5
    800085bc:	83050513          	addi	a0,a0,-2000 # 8000cde8 <uart_tx_w>
    800085c0:	00063783          	ld	a5,0(a2)
    800085c4:	00053703          	ld	a4,0(a0)
    800085c8:	04f70263          	beq	a4,a5,8000860c <uartstart+0x68>
    800085cc:	100005b7          	lui	a1,0x10000
    800085d0:	00006817          	auipc	a6,0x6
    800085d4:	bb080813          	addi	a6,a6,-1104 # 8000e180 <uart_tx_buf>
    800085d8:	01c0006f          	j	800085f4 <uartstart+0x50>
    800085dc:	0006c703          	lbu	a4,0(a3)
    800085e0:	00f63023          	sd	a5,0(a2)
    800085e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085e8:	00063783          	ld	a5,0(a2)
    800085ec:	00053703          	ld	a4,0(a0)
    800085f0:	00f70e63          	beq	a4,a5,8000860c <uartstart+0x68>
    800085f4:	01f7f713          	andi	a4,a5,31
    800085f8:	00e806b3          	add	a3,a6,a4
    800085fc:	0055c703          	lbu	a4,5(a1)
    80008600:	00178793          	addi	a5,a5,1
    80008604:	02077713          	andi	a4,a4,32
    80008608:	fc071ae3          	bnez	a4,800085dc <uartstart+0x38>
    8000860c:	00813403          	ld	s0,8(sp)
    80008610:	01010113          	addi	sp,sp,16
    80008614:	00008067          	ret

0000000080008618 <uartgetc>:
    80008618:	ff010113          	addi	sp,sp,-16
    8000861c:	00813423          	sd	s0,8(sp)
    80008620:	01010413          	addi	s0,sp,16
    80008624:	10000737          	lui	a4,0x10000
    80008628:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000862c:	0017f793          	andi	a5,a5,1
    80008630:	00078c63          	beqz	a5,80008648 <uartgetc+0x30>
    80008634:	00074503          	lbu	a0,0(a4)
    80008638:	0ff57513          	andi	a0,a0,255
    8000863c:	00813403          	ld	s0,8(sp)
    80008640:	01010113          	addi	sp,sp,16
    80008644:	00008067          	ret
    80008648:	fff00513          	li	a0,-1
    8000864c:	ff1ff06f          	j	8000863c <uartgetc+0x24>

0000000080008650 <uartintr>:
    80008650:	100007b7          	lui	a5,0x10000
    80008654:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008658:	0017f793          	andi	a5,a5,1
    8000865c:	0a078463          	beqz	a5,80008704 <uartintr+0xb4>
    80008660:	fe010113          	addi	sp,sp,-32
    80008664:	00813823          	sd	s0,16(sp)
    80008668:	00913423          	sd	s1,8(sp)
    8000866c:	00113c23          	sd	ra,24(sp)
    80008670:	02010413          	addi	s0,sp,32
    80008674:	100004b7          	lui	s1,0x10000
    80008678:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000867c:	0ff57513          	andi	a0,a0,255
    80008680:	fffff097          	auipc	ra,0xfffff
    80008684:	534080e7          	jalr	1332(ra) # 80007bb4 <consoleintr>
    80008688:	0054c783          	lbu	a5,5(s1)
    8000868c:	0017f793          	andi	a5,a5,1
    80008690:	fe0794e3          	bnez	a5,80008678 <uartintr+0x28>
    80008694:	00004617          	auipc	a2,0x4
    80008698:	74c60613          	addi	a2,a2,1868 # 8000cde0 <uart_tx_r>
    8000869c:	00004517          	auipc	a0,0x4
    800086a0:	74c50513          	addi	a0,a0,1868 # 8000cde8 <uart_tx_w>
    800086a4:	00063783          	ld	a5,0(a2)
    800086a8:	00053703          	ld	a4,0(a0)
    800086ac:	04f70263          	beq	a4,a5,800086f0 <uartintr+0xa0>
    800086b0:	100005b7          	lui	a1,0x10000
    800086b4:	00006817          	auipc	a6,0x6
    800086b8:	acc80813          	addi	a6,a6,-1332 # 8000e180 <uart_tx_buf>
    800086bc:	01c0006f          	j	800086d8 <uartintr+0x88>
    800086c0:	0006c703          	lbu	a4,0(a3)
    800086c4:	00f63023          	sd	a5,0(a2)
    800086c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800086cc:	00063783          	ld	a5,0(a2)
    800086d0:	00053703          	ld	a4,0(a0)
    800086d4:	00f70e63          	beq	a4,a5,800086f0 <uartintr+0xa0>
    800086d8:	01f7f713          	andi	a4,a5,31
    800086dc:	00e806b3          	add	a3,a6,a4
    800086e0:	0055c703          	lbu	a4,5(a1)
    800086e4:	00178793          	addi	a5,a5,1
    800086e8:	02077713          	andi	a4,a4,32
    800086ec:	fc071ae3          	bnez	a4,800086c0 <uartintr+0x70>
    800086f0:	01813083          	ld	ra,24(sp)
    800086f4:	01013403          	ld	s0,16(sp)
    800086f8:	00813483          	ld	s1,8(sp)
    800086fc:	02010113          	addi	sp,sp,32
    80008700:	00008067          	ret
    80008704:	00004617          	auipc	a2,0x4
    80008708:	6dc60613          	addi	a2,a2,1756 # 8000cde0 <uart_tx_r>
    8000870c:	00004517          	auipc	a0,0x4
    80008710:	6dc50513          	addi	a0,a0,1756 # 8000cde8 <uart_tx_w>
    80008714:	00063783          	ld	a5,0(a2)
    80008718:	00053703          	ld	a4,0(a0)
    8000871c:	04f70263          	beq	a4,a5,80008760 <uartintr+0x110>
    80008720:	100005b7          	lui	a1,0x10000
    80008724:	00006817          	auipc	a6,0x6
    80008728:	a5c80813          	addi	a6,a6,-1444 # 8000e180 <uart_tx_buf>
    8000872c:	01c0006f          	j	80008748 <uartintr+0xf8>
    80008730:	0006c703          	lbu	a4,0(a3)
    80008734:	00f63023          	sd	a5,0(a2)
    80008738:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000873c:	00063783          	ld	a5,0(a2)
    80008740:	00053703          	ld	a4,0(a0)
    80008744:	02f70063          	beq	a4,a5,80008764 <uartintr+0x114>
    80008748:	01f7f713          	andi	a4,a5,31
    8000874c:	00e806b3          	add	a3,a6,a4
    80008750:	0055c703          	lbu	a4,5(a1)
    80008754:	00178793          	addi	a5,a5,1
    80008758:	02077713          	andi	a4,a4,32
    8000875c:	fc071ae3          	bnez	a4,80008730 <uartintr+0xe0>
    80008760:	00008067          	ret
    80008764:	00008067          	ret

0000000080008768 <kinit>:
    80008768:	fc010113          	addi	sp,sp,-64
    8000876c:	02913423          	sd	s1,40(sp)
    80008770:	fffff7b7          	lui	a5,0xfffff
    80008774:	00007497          	auipc	s1,0x7
    80008778:	a2b48493          	addi	s1,s1,-1493 # 8000f19f <end+0xfff>
    8000877c:	02813823          	sd	s0,48(sp)
    80008780:	01313c23          	sd	s3,24(sp)
    80008784:	00f4f4b3          	and	s1,s1,a5
    80008788:	02113c23          	sd	ra,56(sp)
    8000878c:	03213023          	sd	s2,32(sp)
    80008790:	01413823          	sd	s4,16(sp)
    80008794:	01513423          	sd	s5,8(sp)
    80008798:	04010413          	addi	s0,sp,64
    8000879c:	000017b7          	lui	a5,0x1
    800087a0:	01100993          	li	s3,17
    800087a4:	00f487b3          	add	a5,s1,a5
    800087a8:	01b99993          	slli	s3,s3,0x1b
    800087ac:	06f9e063          	bltu	s3,a5,8000880c <kinit+0xa4>
    800087b0:	00006a97          	auipc	s5,0x6
    800087b4:	9f0a8a93          	addi	s5,s5,-1552 # 8000e1a0 <end>
    800087b8:	0754ec63          	bltu	s1,s5,80008830 <kinit+0xc8>
    800087bc:	0734fa63          	bgeu	s1,s3,80008830 <kinit+0xc8>
    800087c0:	00088a37          	lui	s4,0x88
    800087c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800087c8:	00004917          	auipc	s2,0x4
    800087cc:	62890913          	addi	s2,s2,1576 # 8000cdf0 <kmem>
    800087d0:	00ca1a13          	slli	s4,s4,0xc
    800087d4:	0140006f          	j	800087e8 <kinit+0x80>
    800087d8:	000017b7          	lui	a5,0x1
    800087dc:	00f484b3          	add	s1,s1,a5
    800087e0:	0554e863          	bltu	s1,s5,80008830 <kinit+0xc8>
    800087e4:	0534f663          	bgeu	s1,s3,80008830 <kinit+0xc8>
    800087e8:	00001637          	lui	a2,0x1
    800087ec:	00100593          	li	a1,1
    800087f0:	00048513          	mv	a0,s1
    800087f4:	00000097          	auipc	ra,0x0
    800087f8:	5e4080e7          	jalr	1508(ra) # 80008dd8 <__memset>
    800087fc:	00093783          	ld	a5,0(s2)
    80008800:	00f4b023          	sd	a5,0(s1)
    80008804:	00993023          	sd	s1,0(s2)
    80008808:	fd4498e3          	bne	s1,s4,800087d8 <kinit+0x70>
    8000880c:	03813083          	ld	ra,56(sp)
    80008810:	03013403          	ld	s0,48(sp)
    80008814:	02813483          	ld	s1,40(sp)
    80008818:	02013903          	ld	s2,32(sp)
    8000881c:	01813983          	ld	s3,24(sp)
    80008820:	01013a03          	ld	s4,16(sp)
    80008824:	00813a83          	ld	s5,8(sp)
    80008828:	04010113          	addi	sp,sp,64
    8000882c:	00008067          	ret
    80008830:	00002517          	auipc	a0,0x2
    80008834:	f0050513          	addi	a0,a0,-256 # 8000a730 <digits+0x18>
    80008838:	fffff097          	auipc	ra,0xfffff
    8000883c:	4b4080e7          	jalr	1204(ra) # 80007cec <panic>

0000000080008840 <freerange>:
    80008840:	fc010113          	addi	sp,sp,-64
    80008844:	000017b7          	lui	a5,0x1
    80008848:	02913423          	sd	s1,40(sp)
    8000884c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008850:	009504b3          	add	s1,a0,s1
    80008854:	fffff537          	lui	a0,0xfffff
    80008858:	02813823          	sd	s0,48(sp)
    8000885c:	02113c23          	sd	ra,56(sp)
    80008860:	03213023          	sd	s2,32(sp)
    80008864:	01313c23          	sd	s3,24(sp)
    80008868:	01413823          	sd	s4,16(sp)
    8000886c:	01513423          	sd	s5,8(sp)
    80008870:	01613023          	sd	s6,0(sp)
    80008874:	04010413          	addi	s0,sp,64
    80008878:	00a4f4b3          	and	s1,s1,a0
    8000887c:	00f487b3          	add	a5,s1,a5
    80008880:	06f5e463          	bltu	a1,a5,800088e8 <freerange+0xa8>
    80008884:	00006a97          	auipc	s5,0x6
    80008888:	91ca8a93          	addi	s5,s5,-1764 # 8000e1a0 <end>
    8000888c:	0954e263          	bltu	s1,s5,80008910 <freerange+0xd0>
    80008890:	01100993          	li	s3,17
    80008894:	01b99993          	slli	s3,s3,0x1b
    80008898:	0734fc63          	bgeu	s1,s3,80008910 <freerange+0xd0>
    8000889c:	00058a13          	mv	s4,a1
    800088a0:	00004917          	auipc	s2,0x4
    800088a4:	55090913          	addi	s2,s2,1360 # 8000cdf0 <kmem>
    800088a8:	00002b37          	lui	s6,0x2
    800088ac:	0140006f          	j	800088c0 <freerange+0x80>
    800088b0:	000017b7          	lui	a5,0x1
    800088b4:	00f484b3          	add	s1,s1,a5
    800088b8:	0554ec63          	bltu	s1,s5,80008910 <freerange+0xd0>
    800088bc:	0534fa63          	bgeu	s1,s3,80008910 <freerange+0xd0>
    800088c0:	00001637          	lui	a2,0x1
    800088c4:	00100593          	li	a1,1
    800088c8:	00048513          	mv	a0,s1
    800088cc:	00000097          	auipc	ra,0x0
    800088d0:	50c080e7          	jalr	1292(ra) # 80008dd8 <__memset>
    800088d4:	00093703          	ld	a4,0(s2)
    800088d8:	016487b3          	add	a5,s1,s6
    800088dc:	00e4b023          	sd	a4,0(s1)
    800088e0:	00993023          	sd	s1,0(s2)
    800088e4:	fcfa76e3          	bgeu	s4,a5,800088b0 <freerange+0x70>
    800088e8:	03813083          	ld	ra,56(sp)
    800088ec:	03013403          	ld	s0,48(sp)
    800088f0:	02813483          	ld	s1,40(sp)
    800088f4:	02013903          	ld	s2,32(sp)
    800088f8:	01813983          	ld	s3,24(sp)
    800088fc:	01013a03          	ld	s4,16(sp)
    80008900:	00813a83          	ld	s5,8(sp)
    80008904:	00013b03          	ld	s6,0(sp)
    80008908:	04010113          	addi	sp,sp,64
    8000890c:	00008067          	ret
    80008910:	00002517          	auipc	a0,0x2
    80008914:	e2050513          	addi	a0,a0,-480 # 8000a730 <digits+0x18>
    80008918:	fffff097          	auipc	ra,0xfffff
    8000891c:	3d4080e7          	jalr	980(ra) # 80007cec <panic>

0000000080008920 <kfree>:
    80008920:	fe010113          	addi	sp,sp,-32
    80008924:	00813823          	sd	s0,16(sp)
    80008928:	00113c23          	sd	ra,24(sp)
    8000892c:	00913423          	sd	s1,8(sp)
    80008930:	02010413          	addi	s0,sp,32
    80008934:	03451793          	slli	a5,a0,0x34
    80008938:	04079c63          	bnez	a5,80008990 <kfree+0x70>
    8000893c:	00006797          	auipc	a5,0x6
    80008940:	86478793          	addi	a5,a5,-1948 # 8000e1a0 <end>
    80008944:	00050493          	mv	s1,a0
    80008948:	04f56463          	bltu	a0,a5,80008990 <kfree+0x70>
    8000894c:	01100793          	li	a5,17
    80008950:	01b79793          	slli	a5,a5,0x1b
    80008954:	02f57e63          	bgeu	a0,a5,80008990 <kfree+0x70>
    80008958:	00001637          	lui	a2,0x1
    8000895c:	00100593          	li	a1,1
    80008960:	00000097          	auipc	ra,0x0
    80008964:	478080e7          	jalr	1144(ra) # 80008dd8 <__memset>
    80008968:	00004797          	auipc	a5,0x4
    8000896c:	48878793          	addi	a5,a5,1160 # 8000cdf0 <kmem>
    80008970:	0007b703          	ld	a4,0(a5)
    80008974:	01813083          	ld	ra,24(sp)
    80008978:	01013403          	ld	s0,16(sp)
    8000897c:	00e4b023          	sd	a4,0(s1)
    80008980:	0097b023          	sd	s1,0(a5)
    80008984:	00813483          	ld	s1,8(sp)
    80008988:	02010113          	addi	sp,sp,32
    8000898c:	00008067          	ret
    80008990:	00002517          	auipc	a0,0x2
    80008994:	da050513          	addi	a0,a0,-608 # 8000a730 <digits+0x18>
    80008998:	fffff097          	auipc	ra,0xfffff
    8000899c:	354080e7          	jalr	852(ra) # 80007cec <panic>

00000000800089a0 <kalloc>:
    800089a0:	fe010113          	addi	sp,sp,-32
    800089a4:	00813823          	sd	s0,16(sp)
    800089a8:	00913423          	sd	s1,8(sp)
    800089ac:	00113c23          	sd	ra,24(sp)
    800089b0:	02010413          	addi	s0,sp,32
    800089b4:	00004797          	auipc	a5,0x4
    800089b8:	43c78793          	addi	a5,a5,1084 # 8000cdf0 <kmem>
    800089bc:	0007b483          	ld	s1,0(a5)
    800089c0:	02048063          	beqz	s1,800089e0 <kalloc+0x40>
    800089c4:	0004b703          	ld	a4,0(s1)
    800089c8:	00001637          	lui	a2,0x1
    800089cc:	00500593          	li	a1,5
    800089d0:	00048513          	mv	a0,s1
    800089d4:	00e7b023          	sd	a4,0(a5)
    800089d8:	00000097          	auipc	ra,0x0
    800089dc:	400080e7          	jalr	1024(ra) # 80008dd8 <__memset>
    800089e0:	01813083          	ld	ra,24(sp)
    800089e4:	01013403          	ld	s0,16(sp)
    800089e8:	00048513          	mv	a0,s1
    800089ec:	00813483          	ld	s1,8(sp)
    800089f0:	02010113          	addi	sp,sp,32
    800089f4:	00008067          	ret

00000000800089f8 <initlock>:
    800089f8:	ff010113          	addi	sp,sp,-16
    800089fc:	00813423          	sd	s0,8(sp)
    80008a00:	01010413          	addi	s0,sp,16
    80008a04:	00813403          	ld	s0,8(sp)
    80008a08:	00b53423          	sd	a1,8(a0)
    80008a0c:	00052023          	sw	zero,0(a0)
    80008a10:	00053823          	sd	zero,16(a0)
    80008a14:	01010113          	addi	sp,sp,16
    80008a18:	00008067          	ret

0000000080008a1c <acquire>:
    80008a1c:	fe010113          	addi	sp,sp,-32
    80008a20:	00813823          	sd	s0,16(sp)
    80008a24:	00913423          	sd	s1,8(sp)
    80008a28:	00113c23          	sd	ra,24(sp)
    80008a2c:	01213023          	sd	s2,0(sp)
    80008a30:	02010413          	addi	s0,sp,32
    80008a34:	00050493          	mv	s1,a0
    80008a38:	10002973          	csrr	s2,sstatus
    80008a3c:	100027f3          	csrr	a5,sstatus
    80008a40:	ffd7f793          	andi	a5,a5,-3
    80008a44:	10079073          	csrw	sstatus,a5
    80008a48:	fffff097          	auipc	ra,0xfffff
    80008a4c:	8ec080e7          	jalr	-1812(ra) # 80007334 <mycpu>
    80008a50:	07852783          	lw	a5,120(a0)
    80008a54:	06078e63          	beqz	a5,80008ad0 <acquire+0xb4>
    80008a58:	fffff097          	auipc	ra,0xfffff
    80008a5c:	8dc080e7          	jalr	-1828(ra) # 80007334 <mycpu>
    80008a60:	07852783          	lw	a5,120(a0)
    80008a64:	0004a703          	lw	a4,0(s1)
    80008a68:	0017879b          	addiw	a5,a5,1
    80008a6c:	06f52c23          	sw	a5,120(a0)
    80008a70:	04071063          	bnez	a4,80008ab0 <acquire+0x94>
    80008a74:	00100713          	li	a4,1
    80008a78:	00070793          	mv	a5,a4
    80008a7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008a80:	0007879b          	sext.w	a5,a5
    80008a84:	fe079ae3          	bnez	a5,80008a78 <acquire+0x5c>
    80008a88:	0ff0000f          	fence
    80008a8c:	fffff097          	auipc	ra,0xfffff
    80008a90:	8a8080e7          	jalr	-1880(ra) # 80007334 <mycpu>
    80008a94:	01813083          	ld	ra,24(sp)
    80008a98:	01013403          	ld	s0,16(sp)
    80008a9c:	00a4b823          	sd	a0,16(s1)
    80008aa0:	00013903          	ld	s2,0(sp)
    80008aa4:	00813483          	ld	s1,8(sp)
    80008aa8:	02010113          	addi	sp,sp,32
    80008aac:	00008067          	ret
    80008ab0:	0104b903          	ld	s2,16(s1)
    80008ab4:	fffff097          	auipc	ra,0xfffff
    80008ab8:	880080e7          	jalr	-1920(ra) # 80007334 <mycpu>
    80008abc:	faa91ce3          	bne	s2,a0,80008a74 <acquire+0x58>
    80008ac0:	00002517          	auipc	a0,0x2
    80008ac4:	c7850513          	addi	a0,a0,-904 # 8000a738 <digits+0x20>
    80008ac8:	fffff097          	auipc	ra,0xfffff
    80008acc:	224080e7          	jalr	548(ra) # 80007cec <panic>
    80008ad0:	00195913          	srli	s2,s2,0x1
    80008ad4:	fffff097          	auipc	ra,0xfffff
    80008ad8:	860080e7          	jalr	-1952(ra) # 80007334 <mycpu>
    80008adc:	00197913          	andi	s2,s2,1
    80008ae0:	07252e23          	sw	s2,124(a0)
    80008ae4:	f75ff06f          	j	80008a58 <acquire+0x3c>

0000000080008ae8 <release>:
    80008ae8:	fe010113          	addi	sp,sp,-32
    80008aec:	00813823          	sd	s0,16(sp)
    80008af0:	00113c23          	sd	ra,24(sp)
    80008af4:	00913423          	sd	s1,8(sp)
    80008af8:	01213023          	sd	s2,0(sp)
    80008afc:	02010413          	addi	s0,sp,32
    80008b00:	00052783          	lw	a5,0(a0)
    80008b04:	00079a63          	bnez	a5,80008b18 <release+0x30>
    80008b08:	00002517          	auipc	a0,0x2
    80008b0c:	c3850513          	addi	a0,a0,-968 # 8000a740 <digits+0x28>
    80008b10:	fffff097          	auipc	ra,0xfffff
    80008b14:	1dc080e7          	jalr	476(ra) # 80007cec <panic>
    80008b18:	01053903          	ld	s2,16(a0)
    80008b1c:	00050493          	mv	s1,a0
    80008b20:	fffff097          	auipc	ra,0xfffff
    80008b24:	814080e7          	jalr	-2028(ra) # 80007334 <mycpu>
    80008b28:	fea910e3          	bne	s2,a0,80008b08 <release+0x20>
    80008b2c:	0004b823          	sd	zero,16(s1)
    80008b30:	0ff0000f          	fence
    80008b34:	0f50000f          	fence	iorw,ow
    80008b38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008b3c:	ffffe097          	auipc	ra,0xffffe
    80008b40:	7f8080e7          	jalr	2040(ra) # 80007334 <mycpu>
    80008b44:	100027f3          	csrr	a5,sstatus
    80008b48:	0027f793          	andi	a5,a5,2
    80008b4c:	04079a63          	bnez	a5,80008ba0 <release+0xb8>
    80008b50:	07852783          	lw	a5,120(a0)
    80008b54:	02f05e63          	blez	a5,80008b90 <release+0xa8>
    80008b58:	fff7871b          	addiw	a4,a5,-1
    80008b5c:	06e52c23          	sw	a4,120(a0)
    80008b60:	00071c63          	bnez	a4,80008b78 <release+0x90>
    80008b64:	07c52783          	lw	a5,124(a0)
    80008b68:	00078863          	beqz	a5,80008b78 <release+0x90>
    80008b6c:	100027f3          	csrr	a5,sstatus
    80008b70:	0027e793          	ori	a5,a5,2
    80008b74:	10079073          	csrw	sstatus,a5
    80008b78:	01813083          	ld	ra,24(sp)
    80008b7c:	01013403          	ld	s0,16(sp)
    80008b80:	00813483          	ld	s1,8(sp)
    80008b84:	00013903          	ld	s2,0(sp)
    80008b88:	02010113          	addi	sp,sp,32
    80008b8c:	00008067          	ret
    80008b90:	00002517          	auipc	a0,0x2
    80008b94:	bd050513          	addi	a0,a0,-1072 # 8000a760 <digits+0x48>
    80008b98:	fffff097          	auipc	ra,0xfffff
    80008b9c:	154080e7          	jalr	340(ra) # 80007cec <panic>
    80008ba0:	00002517          	auipc	a0,0x2
    80008ba4:	ba850513          	addi	a0,a0,-1112 # 8000a748 <digits+0x30>
    80008ba8:	fffff097          	auipc	ra,0xfffff
    80008bac:	144080e7          	jalr	324(ra) # 80007cec <panic>

0000000080008bb0 <holding>:
    80008bb0:	00052783          	lw	a5,0(a0)
    80008bb4:	00079663          	bnez	a5,80008bc0 <holding+0x10>
    80008bb8:	00000513          	li	a0,0
    80008bbc:	00008067          	ret
    80008bc0:	fe010113          	addi	sp,sp,-32
    80008bc4:	00813823          	sd	s0,16(sp)
    80008bc8:	00913423          	sd	s1,8(sp)
    80008bcc:	00113c23          	sd	ra,24(sp)
    80008bd0:	02010413          	addi	s0,sp,32
    80008bd4:	01053483          	ld	s1,16(a0)
    80008bd8:	ffffe097          	auipc	ra,0xffffe
    80008bdc:	75c080e7          	jalr	1884(ra) # 80007334 <mycpu>
    80008be0:	01813083          	ld	ra,24(sp)
    80008be4:	01013403          	ld	s0,16(sp)
    80008be8:	40a48533          	sub	a0,s1,a0
    80008bec:	00153513          	seqz	a0,a0
    80008bf0:	00813483          	ld	s1,8(sp)
    80008bf4:	02010113          	addi	sp,sp,32
    80008bf8:	00008067          	ret

0000000080008bfc <push_off>:
    80008bfc:	fe010113          	addi	sp,sp,-32
    80008c00:	00813823          	sd	s0,16(sp)
    80008c04:	00113c23          	sd	ra,24(sp)
    80008c08:	00913423          	sd	s1,8(sp)
    80008c0c:	02010413          	addi	s0,sp,32
    80008c10:	100024f3          	csrr	s1,sstatus
    80008c14:	100027f3          	csrr	a5,sstatus
    80008c18:	ffd7f793          	andi	a5,a5,-3
    80008c1c:	10079073          	csrw	sstatus,a5
    80008c20:	ffffe097          	auipc	ra,0xffffe
    80008c24:	714080e7          	jalr	1812(ra) # 80007334 <mycpu>
    80008c28:	07852783          	lw	a5,120(a0)
    80008c2c:	02078663          	beqz	a5,80008c58 <push_off+0x5c>
    80008c30:	ffffe097          	auipc	ra,0xffffe
    80008c34:	704080e7          	jalr	1796(ra) # 80007334 <mycpu>
    80008c38:	07852783          	lw	a5,120(a0)
    80008c3c:	01813083          	ld	ra,24(sp)
    80008c40:	01013403          	ld	s0,16(sp)
    80008c44:	0017879b          	addiw	a5,a5,1
    80008c48:	06f52c23          	sw	a5,120(a0)
    80008c4c:	00813483          	ld	s1,8(sp)
    80008c50:	02010113          	addi	sp,sp,32
    80008c54:	00008067          	ret
    80008c58:	0014d493          	srli	s1,s1,0x1
    80008c5c:	ffffe097          	auipc	ra,0xffffe
    80008c60:	6d8080e7          	jalr	1752(ra) # 80007334 <mycpu>
    80008c64:	0014f493          	andi	s1,s1,1
    80008c68:	06952e23          	sw	s1,124(a0)
    80008c6c:	fc5ff06f          	j	80008c30 <push_off+0x34>

0000000080008c70 <pop_off>:
    80008c70:	ff010113          	addi	sp,sp,-16
    80008c74:	00813023          	sd	s0,0(sp)
    80008c78:	00113423          	sd	ra,8(sp)
    80008c7c:	01010413          	addi	s0,sp,16
    80008c80:	ffffe097          	auipc	ra,0xffffe
    80008c84:	6b4080e7          	jalr	1716(ra) # 80007334 <mycpu>
    80008c88:	100027f3          	csrr	a5,sstatus
    80008c8c:	0027f793          	andi	a5,a5,2
    80008c90:	04079663          	bnez	a5,80008cdc <pop_off+0x6c>
    80008c94:	07852783          	lw	a5,120(a0)
    80008c98:	02f05a63          	blez	a5,80008ccc <pop_off+0x5c>
    80008c9c:	fff7871b          	addiw	a4,a5,-1
    80008ca0:	06e52c23          	sw	a4,120(a0)
    80008ca4:	00071c63          	bnez	a4,80008cbc <pop_off+0x4c>
    80008ca8:	07c52783          	lw	a5,124(a0)
    80008cac:	00078863          	beqz	a5,80008cbc <pop_off+0x4c>
    80008cb0:	100027f3          	csrr	a5,sstatus
    80008cb4:	0027e793          	ori	a5,a5,2
    80008cb8:	10079073          	csrw	sstatus,a5
    80008cbc:	00813083          	ld	ra,8(sp)
    80008cc0:	00013403          	ld	s0,0(sp)
    80008cc4:	01010113          	addi	sp,sp,16
    80008cc8:	00008067          	ret
    80008ccc:	00002517          	auipc	a0,0x2
    80008cd0:	a9450513          	addi	a0,a0,-1388 # 8000a760 <digits+0x48>
    80008cd4:	fffff097          	auipc	ra,0xfffff
    80008cd8:	018080e7          	jalr	24(ra) # 80007cec <panic>
    80008cdc:	00002517          	auipc	a0,0x2
    80008ce0:	a6c50513          	addi	a0,a0,-1428 # 8000a748 <digits+0x30>
    80008ce4:	fffff097          	auipc	ra,0xfffff
    80008ce8:	008080e7          	jalr	8(ra) # 80007cec <panic>

0000000080008cec <push_on>:
    80008cec:	fe010113          	addi	sp,sp,-32
    80008cf0:	00813823          	sd	s0,16(sp)
    80008cf4:	00113c23          	sd	ra,24(sp)
    80008cf8:	00913423          	sd	s1,8(sp)
    80008cfc:	02010413          	addi	s0,sp,32
    80008d00:	100024f3          	csrr	s1,sstatus
    80008d04:	100027f3          	csrr	a5,sstatus
    80008d08:	0027e793          	ori	a5,a5,2
    80008d0c:	10079073          	csrw	sstatus,a5
    80008d10:	ffffe097          	auipc	ra,0xffffe
    80008d14:	624080e7          	jalr	1572(ra) # 80007334 <mycpu>
    80008d18:	07852783          	lw	a5,120(a0)
    80008d1c:	02078663          	beqz	a5,80008d48 <push_on+0x5c>
    80008d20:	ffffe097          	auipc	ra,0xffffe
    80008d24:	614080e7          	jalr	1556(ra) # 80007334 <mycpu>
    80008d28:	07852783          	lw	a5,120(a0)
    80008d2c:	01813083          	ld	ra,24(sp)
    80008d30:	01013403          	ld	s0,16(sp)
    80008d34:	0017879b          	addiw	a5,a5,1
    80008d38:	06f52c23          	sw	a5,120(a0)
    80008d3c:	00813483          	ld	s1,8(sp)
    80008d40:	02010113          	addi	sp,sp,32
    80008d44:	00008067          	ret
    80008d48:	0014d493          	srli	s1,s1,0x1
    80008d4c:	ffffe097          	auipc	ra,0xffffe
    80008d50:	5e8080e7          	jalr	1512(ra) # 80007334 <mycpu>
    80008d54:	0014f493          	andi	s1,s1,1
    80008d58:	06952e23          	sw	s1,124(a0)
    80008d5c:	fc5ff06f          	j	80008d20 <push_on+0x34>

0000000080008d60 <pop_on>:
    80008d60:	ff010113          	addi	sp,sp,-16
    80008d64:	00813023          	sd	s0,0(sp)
    80008d68:	00113423          	sd	ra,8(sp)
    80008d6c:	01010413          	addi	s0,sp,16
    80008d70:	ffffe097          	auipc	ra,0xffffe
    80008d74:	5c4080e7          	jalr	1476(ra) # 80007334 <mycpu>
    80008d78:	100027f3          	csrr	a5,sstatus
    80008d7c:	0027f793          	andi	a5,a5,2
    80008d80:	04078463          	beqz	a5,80008dc8 <pop_on+0x68>
    80008d84:	07852783          	lw	a5,120(a0)
    80008d88:	02f05863          	blez	a5,80008db8 <pop_on+0x58>
    80008d8c:	fff7879b          	addiw	a5,a5,-1
    80008d90:	06f52c23          	sw	a5,120(a0)
    80008d94:	07853783          	ld	a5,120(a0)
    80008d98:	00079863          	bnez	a5,80008da8 <pop_on+0x48>
    80008d9c:	100027f3          	csrr	a5,sstatus
    80008da0:	ffd7f793          	andi	a5,a5,-3
    80008da4:	10079073          	csrw	sstatus,a5
    80008da8:	00813083          	ld	ra,8(sp)
    80008dac:	00013403          	ld	s0,0(sp)
    80008db0:	01010113          	addi	sp,sp,16
    80008db4:	00008067          	ret
    80008db8:	00002517          	auipc	a0,0x2
    80008dbc:	9d050513          	addi	a0,a0,-1584 # 8000a788 <digits+0x70>
    80008dc0:	fffff097          	auipc	ra,0xfffff
    80008dc4:	f2c080e7          	jalr	-212(ra) # 80007cec <panic>
    80008dc8:	00002517          	auipc	a0,0x2
    80008dcc:	9a050513          	addi	a0,a0,-1632 # 8000a768 <digits+0x50>
    80008dd0:	fffff097          	auipc	ra,0xfffff
    80008dd4:	f1c080e7          	jalr	-228(ra) # 80007cec <panic>

0000000080008dd8 <__memset>:
    80008dd8:	ff010113          	addi	sp,sp,-16
    80008ddc:	00813423          	sd	s0,8(sp)
    80008de0:	01010413          	addi	s0,sp,16
    80008de4:	1a060e63          	beqz	a2,80008fa0 <__memset+0x1c8>
    80008de8:	40a007b3          	neg	a5,a0
    80008dec:	0077f793          	andi	a5,a5,7
    80008df0:	00778693          	addi	a3,a5,7
    80008df4:	00b00813          	li	a6,11
    80008df8:	0ff5f593          	andi	a1,a1,255
    80008dfc:	fff6071b          	addiw	a4,a2,-1
    80008e00:	1b06e663          	bltu	a3,a6,80008fac <__memset+0x1d4>
    80008e04:	1cd76463          	bltu	a4,a3,80008fcc <__memset+0x1f4>
    80008e08:	1a078e63          	beqz	a5,80008fc4 <__memset+0x1ec>
    80008e0c:	00b50023          	sb	a1,0(a0)
    80008e10:	00100713          	li	a4,1
    80008e14:	1ae78463          	beq	a5,a4,80008fbc <__memset+0x1e4>
    80008e18:	00b500a3          	sb	a1,1(a0)
    80008e1c:	00200713          	li	a4,2
    80008e20:	1ae78a63          	beq	a5,a4,80008fd4 <__memset+0x1fc>
    80008e24:	00b50123          	sb	a1,2(a0)
    80008e28:	00300713          	li	a4,3
    80008e2c:	18e78463          	beq	a5,a4,80008fb4 <__memset+0x1dc>
    80008e30:	00b501a3          	sb	a1,3(a0)
    80008e34:	00400713          	li	a4,4
    80008e38:	1ae78263          	beq	a5,a4,80008fdc <__memset+0x204>
    80008e3c:	00b50223          	sb	a1,4(a0)
    80008e40:	00500713          	li	a4,5
    80008e44:	1ae78063          	beq	a5,a4,80008fe4 <__memset+0x20c>
    80008e48:	00b502a3          	sb	a1,5(a0)
    80008e4c:	00700713          	li	a4,7
    80008e50:	18e79e63          	bne	a5,a4,80008fec <__memset+0x214>
    80008e54:	00b50323          	sb	a1,6(a0)
    80008e58:	00700e93          	li	t4,7
    80008e5c:	00859713          	slli	a4,a1,0x8
    80008e60:	00e5e733          	or	a4,a1,a4
    80008e64:	01059e13          	slli	t3,a1,0x10
    80008e68:	01c76e33          	or	t3,a4,t3
    80008e6c:	01859313          	slli	t1,a1,0x18
    80008e70:	006e6333          	or	t1,t3,t1
    80008e74:	02059893          	slli	a7,a1,0x20
    80008e78:	40f60e3b          	subw	t3,a2,a5
    80008e7c:	011368b3          	or	a7,t1,a7
    80008e80:	02859813          	slli	a6,a1,0x28
    80008e84:	0108e833          	or	a6,a7,a6
    80008e88:	03059693          	slli	a3,a1,0x30
    80008e8c:	003e589b          	srliw	a7,t3,0x3
    80008e90:	00d866b3          	or	a3,a6,a3
    80008e94:	03859713          	slli	a4,a1,0x38
    80008e98:	00389813          	slli	a6,a7,0x3
    80008e9c:	00f507b3          	add	a5,a0,a5
    80008ea0:	00e6e733          	or	a4,a3,a4
    80008ea4:	000e089b          	sext.w	a7,t3
    80008ea8:	00f806b3          	add	a3,a6,a5
    80008eac:	00e7b023          	sd	a4,0(a5)
    80008eb0:	00878793          	addi	a5,a5,8
    80008eb4:	fed79ce3          	bne	a5,a3,80008eac <__memset+0xd4>
    80008eb8:	ff8e7793          	andi	a5,t3,-8
    80008ebc:	0007871b          	sext.w	a4,a5
    80008ec0:	01d787bb          	addw	a5,a5,t4
    80008ec4:	0ce88e63          	beq	a7,a4,80008fa0 <__memset+0x1c8>
    80008ec8:	00f50733          	add	a4,a0,a5
    80008ecc:	00b70023          	sb	a1,0(a4)
    80008ed0:	0017871b          	addiw	a4,a5,1
    80008ed4:	0cc77663          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008ed8:	00e50733          	add	a4,a0,a4
    80008edc:	00b70023          	sb	a1,0(a4)
    80008ee0:	0027871b          	addiw	a4,a5,2
    80008ee4:	0ac77e63          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008ee8:	00e50733          	add	a4,a0,a4
    80008eec:	00b70023          	sb	a1,0(a4)
    80008ef0:	0037871b          	addiw	a4,a5,3
    80008ef4:	0ac77663          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008ef8:	00e50733          	add	a4,a0,a4
    80008efc:	00b70023          	sb	a1,0(a4)
    80008f00:	0047871b          	addiw	a4,a5,4
    80008f04:	08c77e63          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f08:	00e50733          	add	a4,a0,a4
    80008f0c:	00b70023          	sb	a1,0(a4)
    80008f10:	0057871b          	addiw	a4,a5,5
    80008f14:	08c77663          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f18:	00e50733          	add	a4,a0,a4
    80008f1c:	00b70023          	sb	a1,0(a4)
    80008f20:	0067871b          	addiw	a4,a5,6
    80008f24:	06c77e63          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f28:	00e50733          	add	a4,a0,a4
    80008f2c:	00b70023          	sb	a1,0(a4)
    80008f30:	0077871b          	addiw	a4,a5,7
    80008f34:	06c77663          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f38:	00e50733          	add	a4,a0,a4
    80008f3c:	00b70023          	sb	a1,0(a4)
    80008f40:	0087871b          	addiw	a4,a5,8
    80008f44:	04c77e63          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f48:	00e50733          	add	a4,a0,a4
    80008f4c:	00b70023          	sb	a1,0(a4)
    80008f50:	0097871b          	addiw	a4,a5,9
    80008f54:	04c77663          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f58:	00e50733          	add	a4,a0,a4
    80008f5c:	00b70023          	sb	a1,0(a4)
    80008f60:	00a7871b          	addiw	a4,a5,10
    80008f64:	02c77e63          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f68:	00e50733          	add	a4,a0,a4
    80008f6c:	00b70023          	sb	a1,0(a4)
    80008f70:	00b7871b          	addiw	a4,a5,11
    80008f74:	02c77663          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f78:	00e50733          	add	a4,a0,a4
    80008f7c:	00b70023          	sb	a1,0(a4)
    80008f80:	00c7871b          	addiw	a4,a5,12
    80008f84:	00c77e63          	bgeu	a4,a2,80008fa0 <__memset+0x1c8>
    80008f88:	00e50733          	add	a4,a0,a4
    80008f8c:	00b70023          	sb	a1,0(a4)
    80008f90:	00d7879b          	addiw	a5,a5,13
    80008f94:	00c7f663          	bgeu	a5,a2,80008fa0 <__memset+0x1c8>
    80008f98:	00f507b3          	add	a5,a0,a5
    80008f9c:	00b78023          	sb	a1,0(a5)
    80008fa0:	00813403          	ld	s0,8(sp)
    80008fa4:	01010113          	addi	sp,sp,16
    80008fa8:	00008067          	ret
    80008fac:	00b00693          	li	a3,11
    80008fb0:	e55ff06f          	j	80008e04 <__memset+0x2c>
    80008fb4:	00300e93          	li	t4,3
    80008fb8:	ea5ff06f          	j	80008e5c <__memset+0x84>
    80008fbc:	00100e93          	li	t4,1
    80008fc0:	e9dff06f          	j	80008e5c <__memset+0x84>
    80008fc4:	00000e93          	li	t4,0
    80008fc8:	e95ff06f          	j	80008e5c <__memset+0x84>
    80008fcc:	00000793          	li	a5,0
    80008fd0:	ef9ff06f          	j	80008ec8 <__memset+0xf0>
    80008fd4:	00200e93          	li	t4,2
    80008fd8:	e85ff06f          	j	80008e5c <__memset+0x84>
    80008fdc:	00400e93          	li	t4,4
    80008fe0:	e7dff06f          	j	80008e5c <__memset+0x84>
    80008fe4:	00500e93          	li	t4,5
    80008fe8:	e75ff06f          	j	80008e5c <__memset+0x84>
    80008fec:	00600e93          	li	t4,6
    80008ff0:	e6dff06f          	j	80008e5c <__memset+0x84>

0000000080008ff4 <__memmove>:
    80008ff4:	ff010113          	addi	sp,sp,-16
    80008ff8:	00813423          	sd	s0,8(sp)
    80008ffc:	01010413          	addi	s0,sp,16
    80009000:	0e060863          	beqz	a2,800090f0 <__memmove+0xfc>
    80009004:	fff6069b          	addiw	a3,a2,-1
    80009008:	0006881b          	sext.w	a6,a3
    8000900c:	0ea5e863          	bltu	a1,a0,800090fc <__memmove+0x108>
    80009010:	00758713          	addi	a4,a1,7
    80009014:	00a5e7b3          	or	a5,a1,a0
    80009018:	40a70733          	sub	a4,a4,a0
    8000901c:	0077f793          	andi	a5,a5,7
    80009020:	00f73713          	sltiu	a4,a4,15
    80009024:	00174713          	xori	a4,a4,1
    80009028:	0017b793          	seqz	a5,a5
    8000902c:	00e7f7b3          	and	a5,a5,a4
    80009030:	10078863          	beqz	a5,80009140 <__memmove+0x14c>
    80009034:	00900793          	li	a5,9
    80009038:	1107f463          	bgeu	a5,a6,80009140 <__memmove+0x14c>
    8000903c:	0036581b          	srliw	a6,a2,0x3
    80009040:	fff8081b          	addiw	a6,a6,-1
    80009044:	02081813          	slli	a6,a6,0x20
    80009048:	01d85893          	srli	a7,a6,0x1d
    8000904c:	00858813          	addi	a6,a1,8
    80009050:	00058793          	mv	a5,a1
    80009054:	00050713          	mv	a4,a0
    80009058:	01088833          	add	a6,a7,a6
    8000905c:	0007b883          	ld	a7,0(a5)
    80009060:	00878793          	addi	a5,a5,8
    80009064:	00870713          	addi	a4,a4,8
    80009068:	ff173c23          	sd	a7,-8(a4)
    8000906c:	ff0798e3          	bne	a5,a6,8000905c <__memmove+0x68>
    80009070:	ff867713          	andi	a4,a2,-8
    80009074:	02071793          	slli	a5,a4,0x20
    80009078:	0207d793          	srli	a5,a5,0x20
    8000907c:	00f585b3          	add	a1,a1,a5
    80009080:	40e686bb          	subw	a3,a3,a4
    80009084:	00f507b3          	add	a5,a0,a5
    80009088:	06e60463          	beq	a2,a4,800090f0 <__memmove+0xfc>
    8000908c:	0005c703          	lbu	a4,0(a1)
    80009090:	00e78023          	sb	a4,0(a5)
    80009094:	04068e63          	beqz	a3,800090f0 <__memmove+0xfc>
    80009098:	0015c603          	lbu	a2,1(a1)
    8000909c:	00100713          	li	a4,1
    800090a0:	00c780a3          	sb	a2,1(a5)
    800090a4:	04e68663          	beq	a3,a4,800090f0 <__memmove+0xfc>
    800090a8:	0025c603          	lbu	a2,2(a1)
    800090ac:	00200713          	li	a4,2
    800090b0:	00c78123          	sb	a2,2(a5)
    800090b4:	02e68e63          	beq	a3,a4,800090f0 <__memmove+0xfc>
    800090b8:	0035c603          	lbu	a2,3(a1)
    800090bc:	00300713          	li	a4,3
    800090c0:	00c781a3          	sb	a2,3(a5)
    800090c4:	02e68663          	beq	a3,a4,800090f0 <__memmove+0xfc>
    800090c8:	0045c603          	lbu	a2,4(a1)
    800090cc:	00400713          	li	a4,4
    800090d0:	00c78223          	sb	a2,4(a5)
    800090d4:	00e68e63          	beq	a3,a4,800090f0 <__memmove+0xfc>
    800090d8:	0055c603          	lbu	a2,5(a1)
    800090dc:	00500713          	li	a4,5
    800090e0:	00c782a3          	sb	a2,5(a5)
    800090e4:	00e68663          	beq	a3,a4,800090f0 <__memmove+0xfc>
    800090e8:	0065c703          	lbu	a4,6(a1)
    800090ec:	00e78323          	sb	a4,6(a5)
    800090f0:	00813403          	ld	s0,8(sp)
    800090f4:	01010113          	addi	sp,sp,16
    800090f8:	00008067          	ret
    800090fc:	02061713          	slli	a4,a2,0x20
    80009100:	02075713          	srli	a4,a4,0x20
    80009104:	00e587b3          	add	a5,a1,a4
    80009108:	f0f574e3          	bgeu	a0,a5,80009010 <__memmove+0x1c>
    8000910c:	02069613          	slli	a2,a3,0x20
    80009110:	02065613          	srli	a2,a2,0x20
    80009114:	fff64613          	not	a2,a2
    80009118:	00e50733          	add	a4,a0,a4
    8000911c:	00c78633          	add	a2,a5,a2
    80009120:	fff7c683          	lbu	a3,-1(a5)
    80009124:	fff78793          	addi	a5,a5,-1
    80009128:	fff70713          	addi	a4,a4,-1
    8000912c:	00d70023          	sb	a3,0(a4)
    80009130:	fec798e3          	bne	a5,a2,80009120 <__memmove+0x12c>
    80009134:	00813403          	ld	s0,8(sp)
    80009138:	01010113          	addi	sp,sp,16
    8000913c:	00008067          	ret
    80009140:	02069713          	slli	a4,a3,0x20
    80009144:	02075713          	srli	a4,a4,0x20
    80009148:	00170713          	addi	a4,a4,1
    8000914c:	00e50733          	add	a4,a0,a4
    80009150:	00050793          	mv	a5,a0
    80009154:	0005c683          	lbu	a3,0(a1)
    80009158:	00178793          	addi	a5,a5,1
    8000915c:	00158593          	addi	a1,a1,1
    80009160:	fed78fa3          	sb	a3,-1(a5)
    80009164:	fee798e3          	bne	a5,a4,80009154 <__memmove+0x160>
    80009168:	f89ff06f          	j	800090f0 <__memmove+0xfc>

000000008000916c <__putc>:
    8000916c:	fe010113          	addi	sp,sp,-32
    80009170:	00813823          	sd	s0,16(sp)
    80009174:	00113c23          	sd	ra,24(sp)
    80009178:	02010413          	addi	s0,sp,32
    8000917c:	00050793          	mv	a5,a0
    80009180:	fef40593          	addi	a1,s0,-17
    80009184:	00100613          	li	a2,1
    80009188:	00000513          	li	a0,0
    8000918c:	fef407a3          	sb	a5,-17(s0)
    80009190:	fffff097          	auipc	ra,0xfffff
    80009194:	b3c080e7          	jalr	-1220(ra) # 80007ccc <console_write>
    80009198:	01813083          	ld	ra,24(sp)
    8000919c:	01013403          	ld	s0,16(sp)
    800091a0:	02010113          	addi	sp,sp,32
    800091a4:	00008067          	ret

00000000800091a8 <__getc>:
    800091a8:	fe010113          	addi	sp,sp,-32
    800091ac:	00813823          	sd	s0,16(sp)
    800091b0:	00113c23          	sd	ra,24(sp)
    800091b4:	02010413          	addi	s0,sp,32
    800091b8:	fe840593          	addi	a1,s0,-24
    800091bc:	00100613          	li	a2,1
    800091c0:	00000513          	li	a0,0
    800091c4:	fffff097          	auipc	ra,0xfffff
    800091c8:	ae8080e7          	jalr	-1304(ra) # 80007cac <console_read>
    800091cc:	fe844503          	lbu	a0,-24(s0)
    800091d0:	01813083          	ld	ra,24(sp)
    800091d4:	01013403          	ld	s0,16(sp)
    800091d8:	02010113          	addi	sp,sp,32
    800091dc:	00008067          	ret

00000000800091e0 <console_handler>:
    800091e0:	fe010113          	addi	sp,sp,-32
    800091e4:	00813823          	sd	s0,16(sp)
    800091e8:	00113c23          	sd	ra,24(sp)
    800091ec:	00913423          	sd	s1,8(sp)
    800091f0:	02010413          	addi	s0,sp,32
    800091f4:	14202773          	csrr	a4,scause
    800091f8:	100027f3          	csrr	a5,sstatus
    800091fc:	0027f793          	andi	a5,a5,2
    80009200:	06079e63          	bnez	a5,8000927c <console_handler+0x9c>
    80009204:	00074c63          	bltz	a4,8000921c <console_handler+0x3c>
    80009208:	01813083          	ld	ra,24(sp)
    8000920c:	01013403          	ld	s0,16(sp)
    80009210:	00813483          	ld	s1,8(sp)
    80009214:	02010113          	addi	sp,sp,32
    80009218:	00008067          	ret
    8000921c:	0ff77713          	andi	a4,a4,255
    80009220:	00900793          	li	a5,9
    80009224:	fef712e3          	bne	a4,a5,80009208 <console_handler+0x28>
    80009228:	ffffe097          	auipc	ra,0xffffe
    8000922c:	6dc080e7          	jalr	1756(ra) # 80007904 <plic_claim>
    80009230:	00a00793          	li	a5,10
    80009234:	00050493          	mv	s1,a0
    80009238:	02f50c63          	beq	a0,a5,80009270 <console_handler+0x90>
    8000923c:	fc0506e3          	beqz	a0,80009208 <console_handler+0x28>
    80009240:	00050593          	mv	a1,a0
    80009244:	00001517          	auipc	a0,0x1
    80009248:	44c50513          	addi	a0,a0,1100 # 8000a690 <CONSOLE_STATUS+0x680>
    8000924c:	fffff097          	auipc	ra,0xfffff
    80009250:	afc080e7          	jalr	-1284(ra) # 80007d48 <__printf>
    80009254:	01013403          	ld	s0,16(sp)
    80009258:	01813083          	ld	ra,24(sp)
    8000925c:	00048513          	mv	a0,s1
    80009260:	00813483          	ld	s1,8(sp)
    80009264:	02010113          	addi	sp,sp,32
    80009268:	ffffe317          	auipc	t1,0xffffe
    8000926c:	6d430067          	jr	1748(t1) # 8000793c <plic_complete>
    80009270:	fffff097          	auipc	ra,0xfffff
    80009274:	3e0080e7          	jalr	992(ra) # 80008650 <uartintr>
    80009278:	fddff06f          	j	80009254 <console_handler+0x74>
    8000927c:	00001517          	auipc	a0,0x1
    80009280:	51450513          	addi	a0,a0,1300 # 8000a790 <digits+0x78>
    80009284:	fffff097          	auipc	ra,0xfffff
    80009288:	a68080e7          	jalr	-1432(ra) # 80007cec <panic>
	...
