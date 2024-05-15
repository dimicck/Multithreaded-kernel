
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	f8813103          	ld	sp,-120(sp) # 80008f88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	581040ef          	jal	ra,80004d9c <start>

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
    80001180:	690010ef          	jal	ra,80002810 <_ZN5RISCV16handle_interruptEv>

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
    if (!handle) return SEM_CLOSED;
    if (++(handle->value) <= 0) handle->deblock();
    return 0;
}

int Sem::trywait(sem_t handle) { /// ??????????????????
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00813423          	sd	s0,8(sp)
    800016c0:	01010413          	addi	s0,sp,16

    if (!handle) return SEM_CLOSED; // error code
    800016c4:	02050263          	beqz	a0,800016e8 <_ZN3Sem7trywaitEPS_+0x30>
    if (handle->value <= 0) return 1; // no success
    800016c8:	00052783          	lw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    800016cc:	02f05263          	blez	a5,800016f0 <_ZN3Sem7trywaitEPS_+0x38>
    --(handle->value);
    800016d0:	fff7879b          	addiw	a5,a5,-1
    800016d4:	00f52023          	sw	a5,0(a0)
    return 0;                       // sem not locked
    800016d8:	00000513          	li	a0,0
}
    800016dc:	00813403          	ld	s0,8(sp)
    800016e0:	01010113          	addi	sp,sp,16
    800016e4:	00008067          	ret
    if (!handle) return SEM_CLOSED; // error code
    800016e8:	ffd00513          	li	a0,-3
    800016ec:	ff1ff06f          	j	800016dc <_ZN3Sem7trywaitEPS_+0x24>
    if (handle->value <= 0) return 1; // no success
    800016f0:	00100513          	li	a0,1
    800016f4:	fe9ff06f          	j	800016dc <_ZN3Sem7trywaitEPS_+0x24>

00000000800016f8 <_ZN3Sem5blockEv>:

void Sem::block() {
    800016f8:	fe010113          	addi	sp,sp,-32
    800016fc:	00113c23          	sd	ra,24(sp)
    80001700:	00813823          	sd	s0,16(sp)
    80001704:	00913423          	sd	s1,8(sp)
    80001708:	01213023          	sd	s2,0(sp)
    8000170c:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    80001710:	00008917          	auipc	s2,0x8
    80001714:	88893903          	ld	s2,-1912(s2) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001718:	00093483          	ld	s1,0(s2)

    blocked.add(oldRunning);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00850513          	addi	a0,a0,8
    80001724:	00001097          	auipc	ra,0x1
    80001728:	7d4080e7          	jalr	2004(ra) # 80002ef8 <_ZN4List3addEP3TCB>

    oldRunning -> current_state = TCB::BLOCKED;
    8000172c:	00400793          	li	a5,4
    80001730:	06f4a023          	sw	a5,96(s1)

    TCB::running = Scheduler::get();
    80001734:	00000097          	auipc	ra,0x0
    80001738:	250080e7          	jalr	592(ra) # 80001984 <_ZN9Scheduler3getEv>
    8000173c:	00050593          	mv	a1,a0
    80001740:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001744:	00048513          	mv	a0,s1
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	a88080e7          	jalr	-1400(ra) # 800031d0 <_ZN3TCB5yieldEPS_S0_>
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	00013903          	ld	s2,0(sp)
    80001760:	02010113          	addi	sp,sp,32
    80001764:	00008067          	ret

0000000080001768 <_ZN3Sem4waitEPS_>:
    if (!handle) return SEM_CLOSED;
    80001768:	04050663          	beqz	a0,800017b4 <_ZN3Sem4waitEPS_+0x4c>
    if (--(handle->value) < 0) {
    8000176c:	00052783          	lw	a5,0(a0)
    80001770:	fff7879b          	addiw	a5,a5,-1
    80001774:	00f52023          	sw	a5,0(a0)
    80001778:	02079713          	slli	a4,a5,0x20
    8000177c:	00074663          	bltz	a4,80001788 <_ZN3Sem4waitEPS_+0x20>
    return 0;
    80001780:	00000513          	li	a0,0
}
    80001784:	00008067          	ret
int Sem::wait(sem_t handle) {
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
        handle->block();
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	f60080e7          	jalr	-160(ra) # 800016f8 <_ZN3Sem5blockEv>
    return 0;
    800017a0:	00000513          	li	a0,0
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    800017b4:	ffd00513          	li	a0,-3
    800017b8:	00008067          	ret

00000000800017bc <_ZN3Sem7deblockEv>:

void Sem::deblock() {
    800017bc:	ff010113          	addi	sp,sp,-16
    800017c0:	00113423          	sd	ra,8(sp)
    800017c4:	00813023          	sd	s0,0(sp)
    800017c8:	01010413          	addi	s0,sp,16

    // needs modification for timedWait

    TCB* tcb = blocked.get();
    800017cc:	00850513          	addi	a0,a0,8
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	794080e7          	jalr	1940(ra) # 80002f64 <_ZN4List3getEv>
    if (!tcb) return; // should not happen
    800017d8:	00050863          	beqz	a0,800017e8 <_ZN3Sem7deblockEv+0x2c>
    tcb->current_state = TCB::RUNNABLE;
    800017dc:	06052023          	sw	zero,96(a0)
    Scheduler::put(tcb);
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	1e8080e7          	jalr	488(ra) # 800019c8 <_ZN9Scheduler3putEP3TCB>

}
    800017e8:	00813083          	ld	ra,8(sp)
    800017ec:	00013403          	ld	s0,0(sp)
    800017f0:	01010113          	addi	sp,sp,16
    800017f4:	00008067          	ret

00000000800017f8 <_ZN3Sem6signalEPS_>:
    if (!handle) return SEM_CLOSED;
    800017f8:	04050663          	beqz	a0,80001844 <_ZN3Sem6signalEPS_+0x4c>
    if (++(handle->value) <= 0) handle->deblock();
    800017fc:	00052783          	lw	a5,0(a0)
    80001800:	0017879b          	addiw	a5,a5,1
    80001804:	0007871b          	sext.w	a4,a5
    80001808:	00f52023          	sw	a5,0(a0)
    8000180c:	00e05663          	blez	a4,80001818 <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001810:	00000513          	li	a0,0
}
    80001814:	00008067          	ret
int Sem::signal(sem_t handle) {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    if (++(handle->value) <= 0) handle->deblock();
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	f94080e7          	jalr	-108(ra) # 800017bc <_ZN3Sem7deblockEv>
    return 0;
    80001830:	00000513          	li	a0,0
}
    80001834:	00813083          	ld	ra,8(sp)
    80001838:	00013403          	ld	s0,0(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    80001844:	ffd00513          	li	a0,-3
    80001848:	00008067          	ret

000000008000184c <_ZN3Sem9timedWaitEPS_m>:

int Sem::timedWait(sem_t, time_t) {
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    // after timer implementation
    return 0;
}
    80001858:	00000513          	li	a0,0
    8000185c:	00813403          	ld	s0,8(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZN3Sem4openEPPS_j>:

int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    80001868:	fe010113          	addi	sp,sp,-32
    8000186c:	00113c23          	sd	ra,24(sp)
    80001870:	00813823          	sd	s0,16(sp)
    80001874:	00913423          	sd	s1,8(sp)
    80001878:	01213023          	sd	s2,0(sp)
    8000187c:	02010413          	addi	s0,sp,32
    80001880:	00050493          	mv	s1,a0
    80001884:	00058913          	mv	s2,a1
    auto newSem = (sem_t) MemoryAllocator::mem_alloc( (sizeof(Sem) + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001888:	00100513          	li	a0,1
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	1f4080e7          	jalr	500(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
    if (!newSem) return MEMORY_ERR;
    80001894:	02050463          	beqz	a0,800018bc <_ZN3Sem4openEPPS_j+0x54>
    newSem -> value = (int)init;
    80001898:	01252023          	sw	s2,0(a0)
    *handle = newSem;
    8000189c:	00a4b023          	sd	a0,0(s1)
    return 0;
    800018a0:	00000513          	li	a0,0
}
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	00013903          	ld	s2,0(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret
    if (!newSem) return MEMORY_ERR;
    800018bc:	fff00513          	li	a0,-1
    800018c0:	fe5ff06f          	j	800018a4 <_ZN3Sem4openEPPS_j+0x3c>

00000000800018c4 <_ZN3SemdlEPv>:

    delete handle;
    return 0;
}

void Sem::operator delete(void *ptr) {
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00113423          	sd	ra,8(sp)
    800018cc:	00813023          	sd	s0,0(sp)
    800018d0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	3d0080e7          	jalr	976(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_ZN3Sem7s_closeEPS_>:
int Sem::s_close(sem_t handle) {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	02010413          	addi	s0,sp,32
    80001900:	00050493          	mv	s1,a0
    if (!handle) return SEM_CLOSED;
    80001904:	04050463          	beqz	a0,8000194c <_ZN3Sem7s_closeEPS_+0x60>
    while (handle->blocked.peek()) {
    80001908:	00848513          	addi	a0,s1,8
    8000190c:	00001097          	auipc	ra,0x1
    80001910:	6b8080e7          	jalr	1720(ra) # 80002fc4 <_ZN4List4peekEv>
    80001914:	00050a63          	beqz	a0,80001928 <_ZN3Sem7s_closeEPS_+0x3c>
        handle->deblock();
    80001918:	00048513          	mv	a0,s1
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	ea0080e7          	jalr	-352(ra) # 800017bc <_ZN3Sem7deblockEv>
    while (handle->blocked.peek()) {
    80001924:	fe5ff06f          	j	80001908 <_ZN3Sem7s_closeEPS_+0x1c>
    delete handle;
    80001928:	00048513          	mv	a0,s1
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	f98080e7          	jalr	-104(ra) # 800018c4 <_ZN3SemdlEPv>
    return 0;
    80001934:	00000513          	li	a0,0
}
    80001938:	01813083          	ld	ra,24(sp)
    8000193c:	01013403          	ld	s0,16(sp)
    80001940:	00813483          	ld	s1,8(sp)
    80001944:	02010113          	addi	sp,sp,32
    80001948:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    8000194c:	ffd00513          	li	a0,-3
    80001950:	fe9ff06f          	j	80001938 <_ZN3Sem7s_closeEPS_+0x4c>

0000000080001954 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001964:	05750513          	addi	a0,a0,87
    80001968:	00655513          	srli	a0,a0,0x6
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	114080e7          	jalr	276(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001974:	00813083          	ld	ra,8(sp)
    80001978:	00013403          	ld	s0,0(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret

0000000080001984 <_ZN9Scheduler3getEv>:
TCB* Scheduler::first = nullptr;
TCB* Scheduler::last  = nullptr;
TCB* Scheduler::first_sleepy = nullptr;
TCB* Scheduler::last_sleepy  = nullptr;

TCB *Scheduler::get() {
    80001984:	ff010113          	addi	sp,sp,-16
    80001988:	00813423          	sd	s0,8(sp)
    8000198c:	01010413          	addi	s0,sp,16

    if (!first) return nullptr; // idle thread
    80001990:	00007517          	auipc	a0,0x7
    80001994:	67053503          	ld	a0,1648(a0) # 80009000 <_ZN9Scheduler5firstE>
    80001998:	00050c63          	beqz	a0,800019b0 <_ZN9Scheduler3getEv+0x2c>

    TCB* tcb = first;

    first = first -> next_ready;
    8000199c:	00853783          	ld	a5,8(a0)
    800019a0:	00007717          	auipc	a4,0x7
    800019a4:	66f73023          	sd	a5,1632(a4) # 80009000 <_ZN9Scheduler5firstE>
    if (!first) last = nullptr;
    800019a8:	00078a63          	beqz	a5,800019bc <_ZN9Scheduler3getEv+0x38>
    tcb -> next_ready = nullptr;
    800019ac:	00053423          	sd	zero,8(a0)

    return tcb;

}
    800019b0:	00813403          	ld	s0,8(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret
    if (!first) last = nullptr;
    800019bc:	00007797          	auipc	a5,0x7
    800019c0:	6407b623          	sd	zero,1612(a5) # 80009008 <_ZN9Scheduler4lastE>
    800019c4:	fe9ff06f          	j	800019ac <_ZN9Scheduler3getEv+0x28>

00000000800019c8 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16

    if (!first) first = last = newTCB;
    800019d4:	00007797          	auipc	a5,0x7
    800019d8:	62c7b783          	ld	a5,1580(a5) # 80009000 <_ZN9Scheduler5firstE>
    800019dc:	02078263          	beqz	a5,80001a00 <_ZN9Scheduler3putEP3TCB+0x38>
    else last = last -> next_ready = newTCB;
    800019e0:	00007797          	auipc	a5,0x7
    800019e4:	62078793          	addi	a5,a5,1568 # 80009000 <_ZN9Scheduler5firstE>
    800019e8:	0087b703          	ld	a4,8(a5)
    800019ec:	00a73423          	sd	a0,8(a4)
    800019f0:	00a7b423          	sd	a0,8(a5)

}
    800019f4:	00813403          	ld	s0,8(sp)
    800019f8:	01010113          	addi	sp,sp,16
    800019fc:	00008067          	ret
    if (!first) first = last = newTCB;
    80001a00:	00007797          	auipc	a5,0x7
    80001a04:	60078793          	addi	a5,a5,1536 # 80009000 <_ZN9Scheduler5firstE>
    80001a08:	00a7b423          	sd	a0,8(a5)
    80001a0c:	00a7b023          	sd	a0,0(a5)
    80001a10:	fe5ff06f          	j	800019f4 <_ZN9Scheduler3putEP3TCB+0x2c>

0000000080001a14 <_ZN9Scheduler4peekEv>:

TCB* Scheduler::peek() {
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00813423          	sd	s0,8(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    if (!first) return nullptr;
    return first;
}
    80001a20:	00007517          	auipc	a0,0x7
    80001a24:	5e053503          	ld	a0,1504(a0) # 80009000 <_ZN9Scheduler5firstE>
    80001a28:	00813403          	ld	s0,8(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00813423          	sd	s0,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    return first != nullptr;
}
    80001a40:	00007517          	auipc	a0,0x7
    80001a44:	5c053503          	ld	a0,1472(a0) # 80009000 <_ZN9Scheduler5firstE>
    80001a48:	00a03533          	snez	a0,a0
    80001a4c:	00813403          	ld	s0,8(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <_ZN9SchedulernwEm>:
    return 0;


}

void *Scheduler::operator new(size_t size) {
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00113423          	sd	ra,8(sp)
    80001a60:	00813023          	sd	s0,0(sp)
    80001a64:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001a68:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001a6c:	00655513          	srli	a0,a0,0x6
    80001a70:	00001097          	auipc	ra,0x1
    80001a74:	010080e7          	jalr	16(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001a78:	00813083          	ld	ra,8(sp)
    80001a7c:	00013403          	ld	s0,0(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00113423          	sd	ra,8(sp)
    80001a90:	00813023          	sd	s0,0(sp)
    80001a94:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	20c080e7          	jalr	524(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN9Scheduler7s_yieldEv>:

void Scheduler::s_yield() {
    80001ab0:	fe010113          	addi	sp,sp,-32
    80001ab4:	00113c23          	sd	ra,24(sp)
    80001ab8:	00813823          	sd	s0,16(sp)
    80001abc:	00913423          	sd	s1,8(sp)
    80001ac0:	01213023          	sd	s2,0(sp)
    80001ac4:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    80001ac8:	00007917          	auipc	s2,0x7
    80001acc:	4d093903          	ld	s2,1232(s2) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001ad0:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::SLEEPING;
    80001ad4:	00100793          	li	a5,1
    80001ad8:	06f4a023          	sw	a5,96(s1)

    TCB::running = get(); // Scheduler::get
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	ea8080e7          	jalr	-344(ra) # 80001984 <_ZN9Scheduler3getEv>
    80001ae4:	00050593          	mv	a1,a0
    80001ae8:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	6e0080e7          	jalr	1760(ra) # 800031d0 <_ZN3TCB5yieldEPS_S0_>

}
    80001af8:	01813083          	ld	ra,24(sp)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	00813483          	ld	s1,8(sp)
    80001b04:	00013903          	ld	s2,0(sp)
    80001b08:	02010113          	addi	sp,sp,32
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN9Scheduler12put_to_sleepEP3TCBm>:
int Scheduler::put_to_sleep(TCB *tcb, time_t time) {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    if (!first_sleepy) {
    80001b20:	00007797          	auipc	a5,0x7
    80001b24:	4f07b783          	ld	a5,1264(a5) # 80009010 <_ZN9Scheduler12first_sleepyE>
    80001b28:	02078663          	beqz	a5,80001b54 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x44>
    time_t time_sum = 0;
    80001b2c:	00000693          	li	a3,0
    TCB* prev = nullptr, *curr = first_sleepy; // insert between
    80001b30:	00000613          	li	a2,0
    while (curr) {
    80001b34:	06078c63          	beqz	a5,80001bac <_ZN9Scheduler12put_to_sleepEP3TCBm+0x9c>
        if (time_sum + curr->sleeping_time > time) {
    80001b38:	0187b703          	ld	a4,24(a5)
    80001b3c:	00d70733          	add	a4,a4,a3
    80001b40:	02e5ea63          	bltu	a1,a4,80001b74 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x64>
        time_sum += curr -> sleeping_time;
    80001b44:	00070693          	mv	a3,a4
        prev = curr;
    80001b48:	00078613          	mv	a2,a5
        curr = curr -> next_sleepy;
    80001b4c:	0107b783          	ld	a5,16(a5)
    while (curr) {
    80001b50:	fe5ff06f          	j	80001b34 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x24>
        first_sleepy = last_sleepy = tcb;
    80001b54:	00007797          	auipc	a5,0x7
    80001b58:	4ac78793          	addi	a5,a5,1196 # 80009000 <_ZN9Scheduler5firstE>
    80001b5c:	00a7bc23          	sd	a0,24(a5)
    80001b60:	00a7b823          	sd	a0,16(a5)
        tcb -> sleeping_time = time;
    80001b64:	00b53c23          	sd	a1,24(a0)
        s_yield();
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	f48080e7          	jalr	-184(ra) # 80001ab0 <_ZN9Scheduler7s_yieldEv>
        return 0;
    80001b70:	0500006f          	j	80001bc0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xb0>
            if (prev) prev -> next_sleepy = tcb;
    80001b74:	02060663          	beqz	a2,80001ba0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x90>
    80001b78:	00a63823          	sd	a0,16(a2)
            tcb -> next_sleepy = curr;
    80001b7c:	00f53823          	sd	a5,16(a0)
            tcb -> sleeping_time = time - time_sum;
    80001b80:	40d586b3          	sub	a3,a1,a3
    80001b84:	00d53c23          	sd	a3,24(a0)
            curr -> sleeping_time -= tcb -> sleeping_time;
    80001b88:	0187b583          	ld	a1,24(a5)
    80001b8c:	40d586b3          	sub	a3,a1,a3
    80001b90:	00d7bc23          	sd	a3,24(a5)
            s_yield();
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	f1c080e7          	jalr	-228(ra) # 80001ab0 <_ZN9Scheduler7s_yieldEv>
            return 0;
    80001b9c:	0240006f          	j	80001bc0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xb0>
            else first_sleepy = tcb;
    80001ba0:	00007717          	auipc	a4,0x7
    80001ba4:	46a73823          	sd	a0,1136(a4) # 80009010 <_ZN9Scheduler12first_sleepyE>
    80001ba8:	fd5ff06f          	j	80001b7c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x6c>
    tcb -> sleeping_time = time - time_sum;
    80001bac:	40d586b3          	sub	a3,a1,a3
    80001bb0:	00d53c23          	sd	a3,24(a0)
    prev -> next_sleepy = tcb;
    80001bb4:	00a63823          	sd	a0,16(a2)
    s_yield();
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	ef8080e7          	jalr	-264(ra) # 80001ab0 <_ZN9Scheduler7s_yieldEv>
}
    80001bc0:	00000513          	li	a0,0
    80001bc4:	00813083          	ld	ra,8(sp)
    80001bc8:	00013403          	ld	s0,0(sp)
    80001bcc:	01010113          	addi	sp,sp,16
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN9myConsole4initEv>:
#include "../h/Console.hpp"

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;

void myConsole::init() {
    80001bd4:	fe010113          	addi	sp,sp,-32
    80001bd8:	00113c23          	sd	ra,24(sp)
    80001bdc:	00813823          	sd	s0,16(sp)
    80001be0:	00913423          	sd	s1,8(sp)
    80001be4:	01213023          	sd	s2,0(sp)
    80001be8:	02010413          	addi	s0,sp,32
    inputBuffer = new BoundedBuffer();
    80001bec:	08000513          	li	a0,128
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	b80080e7          	jalr	-1152(ra) # 80002770 <_ZN13BoundedBuffernwEm>
    80001bf8:	00050493          	mv	s1,a0
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	a04080e7          	jalr	-1532(ra) # 80002600 <_ZN13BoundedBufferC1Ev>
    80001c04:	00007797          	auipc	a5,0x7
    80001c08:	4097be23          	sd	s1,1052(a5) # 80009020 <_ZN9myConsole11inputBufferE>
    outputBuffer = new BoundedBuffer();
    80001c0c:	08000513          	li	a0,128
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	b60080e7          	jalr	-1184(ra) # 80002770 <_ZN13BoundedBuffernwEm>
    80001c18:	00050493          	mv	s1,a0
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	9e4080e7          	jalr	-1564(ra) # 80002600 <_ZN13BoundedBufferC1Ev>
    80001c24:	00007797          	auipc	a5,0x7
    80001c28:	4097b223          	sd	s1,1028(a5) # 80009028 <_ZN9myConsole12outputBufferE>
}
    80001c2c:	01813083          	ld	ra,24(sp)
    80001c30:	01013403          	ld	s0,16(sp)
    80001c34:	00813483          	ld	s1,8(sp)
    80001c38:	00013903          	ld	s2,0(sp)
    80001c3c:	02010113          	addi	sp,sp,32
    80001c40:	00008067          	ret
    80001c44:	00050913          	mv	s2,a0
    inputBuffer = new BoundedBuffer();
    80001c48:	00048513          	mv	a0,s1
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	b54080e7          	jalr	-1196(ra) # 800027a0 <_ZN13BoundedBufferdlEPv>
    80001c54:	00090513          	mv	a0,s2
    80001c58:	00008097          	auipc	ra,0x8
    80001c5c:	520080e7          	jalr	1312(ra) # 8000a178 <_Unwind_Resume>
    80001c60:	00050913          	mv	s2,a0
    outputBuffer = new BoundedBuffer();
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	b38080e7          	jalr	-1224(ra) # 800027a0 <_ZN13BoundedBufferdlEPv>
    80001c70:	00090513          	mv	a0,s2
    80001c74:	00008097          	auipc	ra,0x8
    80001c78:	504080e7          	jalr	1284(ra) # 8000a178 <_Unwind_Resume>

0000000080001c7c <_ZN9myConsole4getcEv>:

char myConsole::getc() {
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00113423          	sd	ra,8(sp)
    80001c84:	00813023          	sd	s0,0(sp)
    80001c88:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80001c8c:	00007517          	auipc	a0,0x7
    80001c90:	39453503          	ld	a0,916(a0) # 80009020 <_ZN9myConsole11inputBufferE>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	a70080e7          	jalr	-1424(ra) # 80002704 <_ZN13BoundedBuffer3getEv>
}
    80001c9c:	00813083          	ld	ra,8(sp)
    80001ca0:	00013403          	ld	s0,0(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZN9myConsole4putcEc>:

void myConsole::putc(char c) {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	36853503          	ld	a0,872(a0) # 80009028 <_ZN9myConsole12outputBufferE>
    80001cc8:	00001097          	auipc	ra,0x1
    80001ccc:	9d0080e7          	jalr	-1584(ra) # 80002698 <_ZN13BoundedBuffer3putEc>
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN9myConsole5kgetcEv>:

char myConsole::kgetc() {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00113423          	sd	ra,8(sp)
    80001ce8:	00813023          	sd	s0,0(sp)
    80001cec:	01010413          	addi	s0,sp,16
    return outputBuffer->get();
    80001cf0:	00007517          	auipc	a0,0x7
    80001cf4:	33853503          	ld	a0,824(a0) # 80009028 <_ZN9myConsole12outputBufferE>
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	a0c080e7          	jalr	-1524(ra) # 80002704 <_ZN13BoundedBuffer3getEv>
}
    80001d00:	00813083          	ld	ra,8(sp)
    80001d04:	00013403          	ld	s0,0(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN9myConsole5kputcEc>:

void myConsole::kputc(char c) {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00113423          	sd	ra,8(sp)
    80001d18:	00813023          	sd	s0,0(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	00050593          	mv	a1,a0
    inputBuffer->put(c);
    80001d24:	00007517          	auipc	a0,0x7
    80001d28:	2fc53503          	ld	a0,764(a0) # 80009020 <_ZN9myConsole11inputBufferE>
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	96c080e7          	jalr	-1684(ra) # 80002698 <_ZN13BoundedBuffer3putEc>
    80001d34:	00813083          	ld	ra,8(sp)
    80001d38:	00013403          	ld	s0,0(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <_Z7workerAPv>:
}


//sem_t mySem = nullptr;

void workerA(void*) {
    80001d44:	fe010113          	addi	sp,sp,-32
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	00813823          	sd	s0,16(sp)
    80001d50:	00913423          	sd	s1,8(sp)
    80001d54:	01213023          	sd	s2,0(sp)
    80001d58:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 4; ++i) {
    80001d5c:	00000913          	li	s2,0
    80001d60:	0380006f          	j	80001d98 <_Z7workerAPv+0x54>
        __putc('(');
        __putc('A');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	66c080e7          	jalr	1644(ra) # 800013d0 <_Z15thread_dispatchv>
        for (int j = 0; j < 10000; ++j) {
    80001d6c:	0014849b          	addiw	s1,s1,1
    80001d70:	000027b7          	lui	a5,0x2
    80001d74:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d78:	0097ce63          	blt	a5,s1,80001d94 <_Z7workerAPv+0x50>
            for (int k = 0; k < 30000; ++k) {}
    80001d7c:	00000713          	li	a4,0
    80001d80:	000077b7          	lui	a5,0x7
    80001d84:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001d88:	fce7cee3          	blt	a5,a4,80001d64 <_Z7workerAPv+0x20>
    80001d8c:	0017071b          	addiw	a4,a4,1
    80001d90:	ff1ff06f          	j	80001d80 <_Z7workerAPv+0x3c>
    for (int i = 0; i < 4; ++i) {
    80001d94:	0019091b          	addiw	s2,s2,1
    80001d98:	00300793          	li	a5,3
    80001d9c:	0327ce63          	blt	a5,s2,80001dd8 <_Z7workerAPv+0x94>
        printInteger(i);
    80001da0:	00090513          	mv	a0,s2
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	288080e7          	jalr	648(ra) # 8000302c <_Z12printIntegerm>
        __putc('(');
    80001dac:	02800513          	li	a0,40
    80001db0:	00005097          	auipc	ra,0x5
    80001db4:	0ac080e7          	jalr	172(ra) # 80006e5c <__putc>
        __putc('A');
    80001db8:	04100513          	li	a0,65
    80001dbc:	00005097          	auipc	ra,0x5
    80001dc0:	0a0080e7          	jalr	160(ra) # 80006e5c <__putc>
        __putc(')');
    80001dc4:	02900513          	li	a0,41
    80001dc8:	00005097          	auipc	ra,0x5
    80001dcc:	094080e7          	jalr	148(ra) # 80006e5c <__putc>
        for (int j = 0; j < 10000; ++j) {
    80001dd0:	00000493          	li	s1,0
    80001dd4:	f9dff06f          	j	80001d70 <_Z7workerAPv+0x2c>
        }
    }
}
    80001dd8:	01813083          	ld	ra,24(sp)
    80001ddc:	01013403          	ld	s0,16(sp)
    80001de0:	00813483          	ld	s1,8(sp)
    80001de4:	00013903          	ld	s2,0(sp)
    80001de8:	02010113          	addi	sp,sp,32
    80001dec:	00008067          	ret

0000000080001df0 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	01213023          	sd	s2,0(sp)
    80001e04:	02010413          	addi	s0,sp,32
    void *addr = MemoryAllocator::mem_alloc(1);
    80001e08:	00100513          	li	a0,1
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	c74080e7          	jalr	-908(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
    80001e14:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	008080e7          	jalr	8(ra) # 80002e20 <_ZN15MemoryAllocator5printEv>
    int ret1 = MemoryAllocator::mem_free(addr);
    80001e20:	00048513          	mv	a0,s1
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	e80080e7          	jalr	-384(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
    80001e2c:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	ff0080e7          	jalr	-16(ra) # 80002e20 <_ZN15MemoryAllocator5printEv>
    int ret2 = MemoryAllocator::mem_free(addr);
    80001e38:	00048513          	mv	a0,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	e68080e7          	jalr	-408(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
    80001e44:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	fd8080e7          	jalr	-40(ra) # 80002e20 <_ZN15MemoryAllocator5printEv>
    if (ret1 == 0) __putc('G');
    80001e50:	02090063          	beqz	s2,80001e70 <_Z19testMemoryAllocatorv+0x80>
    if (ret2 < 0) __putc('G');
    80001e54:	0204c663          	bltz	s1,80001e80 <_Z19testMemoryAllocatorv+0x90>
}
    80001e58:	01813083          	ld	ra,24(sp)
    80001e5c:	01013403          	ld	s0,16(sp)
    80001e60:	00813483          	ld	s1,8(sp)
    80001e64:	00013903          	ld	s2,0(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret
    if (ret1 == 0) __putc('G');
    80001e70:	04700513          	li	a0,71
    80001e74:	00005097          	auipc	ra,0x5
    80001e78:	fe8080e7          	jalr	-24(ra) # 80006e5c <__putc>
    80001e7c:	fd9ff06f          	j	80001e54 <_Z19testMemoryAllocatorv+0x64>
    if (ret2 < 0) __putc('G');
    80001e80:	04700513          	li	a0,71
    80001e84:	00005097          	auipc	ra,0x5
    80001e88:	fd8080e7          	jalr	-40(ra) # 80006e5c <__putc>
}
    80001e8c:	fcdff06f          	j	80001e58 <_Z19testMemoryAllocatorv+0x68>

0000000080001e90 <_Z11testCMemoryv>:
void testCMemory() {
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	f7c080e7          	jalr	-132(ra) # 80002e20 <_ZN15MemoryAllocator5printEv>
    void* addr = mem_alloc(50);
    80001eac:	03200513          	li	a0,50
    80001eb0:	fffff097          	auipc	ra,0xfffff
    80001eb4:	3b0080e7          	jalr	944(ra) # 80001260 <_Z9mem_allocm>
    80001eb8:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	f64080e7          	jalr	-156(ra) # 80002e20 <_ZN15MemoryAllocator5printEv>
    mem_free(addr);
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	fffff097          	auipc	ra,0xfffff
    80001ecc:	3e8080e7          	jalr	1000(ra) # 800012b0 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	f50080e7          	jalr	-176(ra) # 80002e20 <_ZN15MemoryAllocator5printEv>
}
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	00813483          	ld	s1,8(sp)
    80001ee4:	02010113          	addi	sp,sp,32
    80001ee8:	00008067          	ret

0000000080001eec <_Z7workerBPv>:
void workerB(void*) {
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	00913423          	sd	s1,8(sp)
    80001efc:	01213023          	sd	s2,0(sp)
    80001f00:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 16; ++i) {
    80001f04:	00000913          	li	s2,0
    80001f08:	0380006f          	j	80001f40 <_Z7workerBPv+0x54>
        __putc('(');
        __putc('B');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
    80001f0c:	fffff097          	auipc	ra,0xfffff
    80001f10:	4c4080e7          	jalr	1220(ra) # 800013d0 <_Z15thread_dispatchv>
        for (int j = 0; j < 10000; ++j) {
    80001f14:	0014849b          	addiw	s1,s1,1
    80001f18:	000027b7          	lui	a5,0x2
    80001f1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001f20:	0097ce63          	blt	a5,s1,80001f3c <_Z7workerBPv+0x50>
            for (int k = 0; k < 30000; ++k) {}
    80001f24:	00000713          	li	a4,0
    80001f28:	000077b7          	lui	a5,0x7
    80001f2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001f30:	fce7cee3          	blt	a5,a4,80001f0c <_Z7workerBPv+0x20>
    80001f34:	0017071b          	addiw	a4,a4,1
    80001f38:	ff1ff06f          	j	80001f28 <_Z7workerBPv+0x3c>
    for (int i = 0; i < 16; ++i) {
    80001f3c:	0019091b          	addiw	s2,s2,1
    80001f40:	00f00793          	li	a5,15
    80001f44:	0327ce63          	blt	a5,s2,80001f80 <_Z7workerBPv+0x94>
        printInteger(i);
    80001f48:	00090513          	mv	a0,s2
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	0e0080e7          	jalr	224(ra) # 8000302c <_Z12printIntegerm>
        __putc('(');
    80001f54:	02800513          	li	a0,40
    80001f58:	00005097          	auipc	ra,0x5
    80001f5c:	f04080e7          	jalr	-252(ra) # 80006e5c <__putc>
        __putc('B');
    80001f60:	04200513          	li	a0,66
    80001f64:	00005097          	auipc	ra,0x5
    80001f68:	ef8080e7          	jalr	-264(ra) # 80006e5c <__putc>
        __putc(')');
    80001f6c:	02900513          	li	a0,41
    80001f70:	00005097          	auipc	ra,0x5
    80001f74:	eec080e7          	jalr	-276(ra) # 80006e5c <__putc>
        for (int j = 0; j < 10000; ++j) {
    80001f78:	00000493          	li	s1,0
    80001f7c:	f9dff06f          	j	80001f18 <_Z7workerBPv+0x2c>
        }
    }
}
    80001f80:	01813083          	ld	ra,24(sp)
    80001f84:	01013403          	ld	s0,16(sp)
    80001f88:	00813483          	ld	s1,8(sp)
    80001f8c:	00013903          	ld	s2,0(sp)
    80001f90:	02010113          	addi	sp,sp,32
    80001f94:	00008067          	ret

0000000080001f98 <_Z11testConsolePv>:

void testConsole(void *args) {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    putc('a');
    80001fa8:	06100513          	li	a0,97
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	6d0080e7          	jalr	1744(ra) # 8000167c <_Z4putcc>
}
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_Z14handleNewCharsPv>:

void handleNewChars(void * args) {

    while (true) {
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001fc4:	00007797          	auipc	a5,0x7
    80001fc8:	f9c7b783          	ld	a5,-100(a5) # 80008f60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001fcc:	0007b783          	ld	a5,0(a5)
    80001fd0:	0007c783          	lbu	a5,0(a5)
    80001fd4:	0207f793          	andi	a5,a5,32
    80001fd8:	fe0786e3          	beqz	a5,80001fc4 <_Z14handleNewCharsPv>
void handleNewChars(void * args) {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
            // console controller is ready for new char
            char c = myConsole::kgetc();
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	cf4080e7          	jalr	-780(ra) # 80001ce0 <_ZN9myConsole5kgetcEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001ff4:	00007797          	auipc	a5,0x7
    80001ff8:	f8c7b783          	ld	a5,-116(a5) # 80008f80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ffc:	0007b783          	ld	a5,0(a5)
    80002000:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80002004:	00007797          	auipc	a5,0x7
    80002008:	f5c7b783          	ld	a5,-164(a5) # 80008f60 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000200c:	0007b783          	ld	a5,0(a5)
    80002010:	0007c783          	lbu	a5,0(a5)
    80002014:	0207f793          	andi	a5,a5,32
    80002018:	fe0786e3          	beqz	a5,80002004 <_Z14handleNewCharsPv+0x40>
    8000201c:	fd1ff06f          	j	80001fec <_Z14handleNewCharsPv+0x28>

0000000080002020 <_Z11userWrapperPv>:

thread_t threads[5];

void userMain();

void userWrapper(void* args) {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    userMain();
    80002030:	00002097          	auipc	ra,0x2
    80002034:	1fc080e7          	jalr	508(ra) # 8000422c <_Z8userMainv>
}
    80002038:	00813083          	ld	ra,8(sp)
    8000203c:	00013403          	ld	s0,0(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <main>:

int main() {
    80002048:	fe010113          	addi	sp,sp,-32
    8000204c:	00113c23          	sd	ra,24(sp)
    80002050:	00813823          	sd	s0,16(sp)
    80002054:	00913423          	sd	s1,8(sp)
    80002058:	02010413          	addi	s0,sp,32

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    8000205c:	00007797          	auipc	a5,0x7
    80002060:	f147b783          	ld	a5,-236(a5) # 80008f70 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    80002064:	10579073          	csrw	stvec,a5
    MemoryAllocator::getAllocator();
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	b3c080e7          	jalr	-1220(ra) # 80002ba4 <_ZN15MemoryAllocator12getAllocatorEv>
//    myConsole::init();

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&threads[0], nullptr, nullptr); // main
    80002070:	00007497          	auipc	s1,0x7
    80002074:	fc048493          	addi	s1,s1,-64 # 80009030 <threads>
    80002078:	00000613          	li	a2,0
    8000207c:	00000593          	li	a1,0
    80002080:	00048513          	mv	a0,s1
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	278080e7          	jalr	632(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    8000208c:	0004b703          	ld	a4,0(s1)
    80002090:	00007797          	auipc	a5,0x7
    80002094:	f087b783          	ld	a5,-248(a5) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002098:	00e7b023          	sd	a4,0(a5)
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    8000209c:	00200793          	li	a5,2
    800020a0:	1007a073          	csrs	sstatus,a5
//    thread_create(&threads[1], handleNewChars, nullptr);
    RISCV::set_status(RISCV::SIE); // interrupts enabled

    //sem_open(&mySem, 1); // mutex

    thread_create(&threads[1], workerA, nullptr);
    800020a4:	00000613          	li	a2,0
    800020a8:	00000597          	auipc	a1,0x0
    800020ac:	c9c58593          	addi	a1,a1,-868 # 80001d44 <_Z7workerAPv>
    800020b0:	00007517          	auipc	a0,0x7
    800020b4:	f8850513          	addi	a0,a0,-120 # 80009038 <threads+0x8>
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	244080e7          	jalr	580(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
//    while (!userMainThread->isFinished()) {thread_dispatch();}

//    char c = getc();
//    putc(c);

    while (true) thread_dispatch();
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	310080e7          	jalr	784(ra) # 800013d0 <_Z15thread_dispatchv>
    800020c8:	ff9ff06f          	j	800020c0 <main+0x78>

00000000800020cc <_ZN6Thread7wrapperEPv>:

void Thread::wrapper(void *arg) {
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    Thread* t = (Thread*) arg;
    if (t->body) t->body(t->arg);
    800020cc:	01053783          	ld	a5,16(a0)
    800020d0:	02078663          	beqz	a5,800020fc <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void *arg) {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
    if (t->body) t->body(t->arg);
    800020e4:	01853503          	ld	a0,24(a0)
    800020e8:	000780e7          	jalr	a5
}
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
    800020fc:	00008067          	ret

0000000080002100 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    80002110:	00007797          	auipc	a5,0x7
    80002114:	e2078793          	addi	a5,a5,-480 # 80008f30 <_ZTV9Semaphore+0x10>
    80002118:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000211c:	00853503          	ld	a0,8(a0)
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	33c080e7          	jalr	828(ra) # 8000145c <_Z9sem_closeP3Sem>
}
    80002128:	00813083          	ld	ra,8(sp)
    8000212c:	00013403          	ld	s0,0(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_Znwm>:
void* operator new (size_t size) {
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00113423          	sd	ra,8(sp)
    80002140:	00813023          	sd	s0,0(sp)
    80002144:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	118080e7          	jalr	280(ra) # 80001260 <_Z9mem_allocm>
}
    80002150:	00813083          	ld	ra,8(sp)
    80002154:	00013403          	ld	s0,0(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <_Znam>:
void* operator new[](size_t size) {
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00113423          	sd	ra,8(sp)
    80002168:	00813023          	sd	s0,0(sp)
    8000216c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	0f0080e7          	jalr	240(ra) # 80001260 <_Z9mem_allocm>
}
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZdaPv>:
void operator delete[](void* ptr) noexcept {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
     mem_free(ptr);
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	118080e7          	jalr	280(ra) # 800012b0 <_Z8mem_freePv>
}
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00013403          	ld	s0,0(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	02010413          	addi	s0,sp,32
    800021c4:	00007797          	auipc	a5,0x7
    800021c8:	d4478793          	addi	a5,a5,-700 # 80008f08 <_ZTV6Thread+0x10>
    800021cc:	00f53023          	sd	a5,0(a0)
    if (this->myHandle->isFinished()) delete myHandle;
    800021d0:	00853483          	ld	s1,8(a0)

    static void dispatch();

    state getState() const {return current_state;}
    time_t getTimeSlice() const {return time_slice;}

    800021d4:	0604a703          	lw	a4,96(s1)
    800021d8:	00300793          	li	a5,3
    800021dc:	00f70c63          	beq	a4,a5,800021f4 <_ZN6ThreadD1Ev+0x44>
}
    800021e0:	01813083          	ld	ra,24(sp)
    800021e4:	01013403          	ld	s0,16(sp)
    800021e8:	00813483          	ld	s1,8(sp)
    800021ec:	02010113          	addi	sp,sp,32
    800021f0:	00008067          	ret
    if (this->myHandle->isFinished()) delete myHandle;
    800021f4:	fe0486e3          	beqz	s1,800021e0 <_ZN6ThreadD1Ev+0x30>
    static bool isRunnable();

    bool isFinished() {return current_state == state::FINISHED;}
    800021f8:	0384b503          	ld	a0,56(s1)
    800021fc:	00050663          	beqz	a0,80002208 <_ZN6ThreadD1Ev+0x58>
    80002200:	00000097          	auipc	ra,0x0
    80002204:	f88080e7          	jalr	-120(ra) # 80002188 <_ZdaPv>
    80002208:	00048513          	mv	a0,s1
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	14c080e7          	jalr	332(ra) # 80003358 <_ZN3TCBdlEPv>
}
    80002214:	fcdff06f          	j	800021e0 <_ZN6ThreadD1Ev+0x30>

0000000080002218 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	00813023          	sd	s0,0(sp)
    80002224:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	088080e7          	jalr	136(ra) # 800012b0 <_Z8mem_freePv>
}
    80002230:	00813083          	ld	ra,8(sp)
    80002234:	00013403          	ld	s0,0(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret

0000000080002240 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002240:	fe010113          	addi	sp,sp,-32
    80002244:	00113c23          	sd	ra,24(sp)
    80002248:	00813823          	sd	s0,16(sp)
    8000224c:	00913423          	sd	s1,8(sp)
    80002250:	02010413          	addi	s0,sp,32
    80002254:	00050493          	mv	s1,a0
}
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	f58080e7          	jalr	-168(ra) # 800021b0 <_ZN6ThreadD1Ev>
    80002260:	00048513          	mv	a0,s1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	fb4080e7          	jalr	-76(ra) # 80002218 <_ZdlPv>
    8000226c:	01813083          	ld	ra,24(sp)
    80002270:	01013403          	ld	s0,16(sp)
    80002274:	00813483          	ld	s1,8(sp)
    80002278:	02010113          	addi	sp,sp,32
    8000227c:	00008067          	ret

0000000080002280 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002280:	fe010113          	addi	sp,sp,-32
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	00813823          	sd	s0,16(sp)
    8000228c:	00913423          	sd	s1,8(sp)
    80002290:	02010413          	addi	s0,sp,32
    80002294:	00050493          	mv	s1,a0
}
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	e68080e7          	jalr	-408(ra) # 80002100 <_ZN9SemaphoreD1Ev>
    800022a0:	00048513          	mv	a0,s1
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	f74080e7          	jalr	-140(ra) # 80002218 <_ZdlPv>
    800022ac:	01813083          	ld	ra,24(sp)
    800022b0:	01013403          	ld	s0,16(sp)
    800022b4:	00813483          	ld	s1,8(sp)
    800022b8:	02010113          	addi	sp,sp,32
    800022bc:	00008067          	ret

00000000800022c0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    800022cc:	00007797          	auipc	a5,0x7
    800022d0:	c3c78793          	addi	a5,a5,-964 # 80008f08 <_ZTV6Thread+0x10>
    800022d4:	00f53023          	sd	a5,0(a0)
    this->body = body;
    800022d8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800022dc:	00c53c23          	sd	a2,24(a0)
}
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00113423          	sd	ra,8(sp)
    800022f4:	00813023          	sd	s0,0(sp)
    800022f8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	2e8080e7          	jalr	744(ra) # 800015e4 <_Z10time_sleepm>
}
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002324:	fffff097          	auipc	ra,0xfffff
    80002328:	0ac080e7          	jalr	172(ra) # 800013d0 <_Z15thread_dispatchv>
}
    8000232c:	00813083          	ld	ra,8(sp)
    80002330:	00013403          	ld	s0,0(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN6Thread5startEv>:
int Thread::start() {
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00113423          	sd	ra,8(sp)
    80002344:	00813023          	sd	s0,0(sp)
    80002348:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, &wrapper, this);
    8000234c:	00050613          	mv	a2,a0
    80002350:	00000597          	auipc	a1,0x0
    80002354:	d7c58593          	addi	a1,a1,-644 # 800020cc <_ZN6Thread7wrapperEPv>
    80002358:	00850513          	addi	a0,a0,8
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	fa0080e7          	jalr	-96(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00813423          	sd	s0,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	00007797          	auipc	a5,0x7
    80002384:	b8878793          	addi	a5,a5,-1144 # 80008f08 <_ZTV6Thread+0x10>
    80002388:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    8000238c:	00053823          	sd	zero,16(a0)
    this->arg  = nullptr;
    80002390:	00053c23          	sd	zero,24(a0)
}
    80002394:	00813403          	ld	s0,8(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
    800023b0:	00007797          	auipc	a5,0x7
    800023b4:	b8078793          	addi	a5,a5,-1152 # 80008f30 <_ZTV9Semaphore+0x10>
    800023b8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800023bc:	00850513          	addi	a0,a0,8
    800023c0:	fffff097          	auipc	ra,0xfffff
    800023c4:	04c080e7          	jalr	76(ra) # 8000140c <_Z8sem_openPP3Semj>
}
    800023c8:	00813083          	ld	ra,8(sp)
    800023cc:	00013403          	ld	s0,0(sp)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00113423          	sd	ra,8(sp)
    800023e0:	00813023          	sd	s0,0(sp)
    800023e4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800023e8:	00853503          	ld	a0,8(a0)
    800023ec:	fffff097          	auipc	ra,0xfffff
    800023f0:	0c8080e7          	jalr	200(ra) # 800014b4 <_Z8sem_waitP3Sem>
}
    800023f4:	00813083          	ld	ra,8(sp)
    800023f8:	00013403          	ld	s0,0(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002414:	00853503          	ld	a0,8(a0)
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	180080e7          	jalr	384(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002440:	00853503          	ld	a0,8(a0)
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	0bc080e7          	jalr	188(ra) # 80001500 <_Z13sem_timedwaitP3Semm>
}
    8000244c:	00813083          	ld	ra,8(sp)
    80002450:	00013403          	ld	s0,0(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00113423          	sd	ra,8(sp)
    80002464:	00813023          	sd	s0,0(sp)
    80002468:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    8000246c:	00853503          	ld	a0,8(a0)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	0dc080e7          	jalr	220(ra) # 8000154c <_Z11sem_trywaitP3Sem>
}
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN7Console4getcEv>:

char Console::getc() {
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00113423          	sd	ra,8(sp)
    80002490:	00813023          	sd	s0,0(sp)
    80002494:	01010413          	addi	s0,sp,16
    return getc();
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	ff0080e7          	jalr	-16(ra) # 80002488 <_ZN7Console4getcEv>
}
    800024a0:	00813083          	ld	ra,8(sp)
    800024a4:	00013403          	ld	s0,0(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00113423          	sd	ra,8(sp)
    800024b8:	00813023          	sd	s0,0(sp)
    800024bc:	01010413          	addi	s0,sp,16
    putc(c);
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	ff0080e7          	jalr	-16(ra) # 800024b0 <_ZN7Console4putcEc>
}
    800024c8:	00813083          	ld	ra,8(sp)
    800024cc:	00013403          	ld	s0,0(sp)
    800024d0:	01010113          	addi	sp,sp,16
    800024d4:	00008067          	ret

00000000800024d8 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    800024d8:	fe010113          	addi	sp,sp,-32
    800024dc:	00113c23          	sd	ra,24(sp)
    800024e0:	00813823          	sd	s0,16(sp)
    800024e4:	00913423          	sd	s1,8(sp)
    800024e8:	01213023          	sd	s2,0(sp)
    800024ec:	02010413          	addi	s0,sp,32
    800024f0:	00050493          	mv	s1,a0
    800024f4:	00058913          	mv	s2,a1
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	e7c080e7          	jalr	-388(ra) # 80002374 <_ZN6ThreadC1Ev>
    80002500:	00007797          	auipc	a5,0x7
    80002504:	9d878793          	addi	a5,a5,-1576 # 80008ed8 <_ZTV14PeriodicThread+0x10>
    80002508:	00f4b023          	sd	a5,0(s1)
    8000250c:	0324b023          	sd	s2,32(s1)
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	00013903          	ld	s2,0(sp)
    80002520:	02010113          	addi	sp,sp,32
    80002524:	00008067          	ret

0000000080002528 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00113423          	sd	ra,8(sp)
    80002530:	00813023          	sd	s0,0(sp)
    80002534:	01010413          	addi	s0,sp,16
    thread_exit();
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	e4c080e7          	jalr	-436(ra) # 80001384 <_Z11thread_exitv>
}
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    8000255c:	00813403          	ld	s0,8(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00813423          	sd	s0,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00813403          	ld	s0,8(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00113423          	sd	ra,8(sp)
    80002588:	00813023          	sd	s0,0(sp)
    8000258c:	01010413          	addi	s0,sp,16
    80002590:	00007797          	auipc	a5,0x7
    80002594:	94878793          	addi	a5,a5,-1720 # 80008ed8 <_ZTV14PeriodicThread+0x10>
    80002598:	00f53023          	sd	a5,0(a0)
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	c14080e7          	jalr	-1004(ra) # 800021b0 <_ZN6ThreadD1Ev>
    800025a4:	00813083          	ld	ra,8(sp)
    800025a8:	00013403          	ld	s0,0(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret

00000000800025b4 <_ZN14PeriodicThreadD0Ev>:
    800025b4:	fe010113          	addi	sp,sp,-32
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	00813823          	sd	s0,16(sp)
    800025c0:	00913423          	sd	s1,8(sp)
    800025c4:	02010413          	addi	s0,sp,32
    800025c8:	00050493          	mv	s1,a0
    800025cc:	00007797          	auipc	a5,0x7
    800025d0:	90c78793          	addi	a5,a5,-1780 # 80008ed8 <_ZTV14PeriodicThread+0x10>
    800025d4:	00f53023          	sd	a5,0(a0)
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	bd8080e7          	jalr	-1064(ra) # 800021b0 <_ZN6ThreadD1Ev>
    800025e0:	00048513          	mv	a0,s1
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	c34080e7          	jalr	-972(ra) # 80002218 <_ZdlPv>
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret

0000000080002600 <_ZN13BoundedBufferC1Ev>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002600:	fe010113          	addi	sp,sp,-32
    80002604:	00113c23          	sd	ra,24(sp)
    80002608:	00813823          	sd	s0,16(sp)
    8000260c:	00913423          	sd	s1,8(sp)
    80002610:	02010413          	addi	s0,sp,32
    80002614:	00050493          	mv	s1,a0
    head = tail = 0;
    80002618:	00052223          	sw	zero,4(a0)
    8000261c:	00052023          	sw	zero,0(a0)
    Sem::open(&space_available, bufferSize);
    80002620:	06400593          	li	a1,100
    80002624:	00850513          	addi	a0,a0,8
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	240080e7          	jalr	576(ra) # 80001868 <_ZN3Sem4openEPPS_j>
    Sem::open(&item_available, 0);
    80002630:	00000593          	li	a1,0
    80002634:	01048513          	addi	a0,s1,16
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	230080e7          	jalr	560(ra) # 80001868 <_ZN3Sem4openEPPS_j>
}
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	02010113          	addi	sp,sp,32
    80002650:	00008067          	ret

0000000080002654 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002654:	fe010113          	addi	sp,sp,-32
    80002658:	00113c23          	sd	ra,24(sp)
    8000265c:	00813823          	sd	s0,16(sp)
    80002660:	00913423          	sd	s1,8(sp)
    80002664:	02010413          	addi	s0,sp,32
    80002668:	00050493          	mv	s1,a0
    Sem::s_close(space_available);
    8000266c:	00853503          	ld	a0,8(a0)
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	27c080e7          	jalr	636(ra) # 800018ec <_ZN3Sem7s_closeEPS_>
    Sem::s_close(item_available);
    80002678:	0104b503          	ld	a0,16(s1)
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	270080e7          	jalr	624(ra) # 800018ec <_ZN3Sem7s_closeEPS_>
}
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret

0000000080002698 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002698:	fe010113          	addi	sp,sp,-32
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	01213023          	sd	s2,0(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00050493          	mv	s1,a0
    800026b4:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800026b8:	00853503          	ld	a0,8(a0)
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	0ac080e7          	jalr	172(ra) # 80001768 <_ZN3Sem4waitEPS_>
    buffer[tail++] = c;
    800026c4:	0044a783          	lw	a5,4(s1)
    800026c8:	0017871b          	addiw	a4,a5,1
    800026cc:	00f487b3          	add	a5,s1,a5
    800026d0:	01278c23          	sb	s2,24(a5)
    tail %= bufferSize;
    800026d4:	06400793          	li	a5,100
    800026d8:	02f767bb          	remw	a5,a4,a5
    800026dc:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    800026e0:	0104b503          	ld	a0,16(s1)
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	114080e7          	jalr	276(ra) # 800017f8 <_ZN3Sem6signalEPS_>
}
    800026ec:	01813083          	ld	ra,24(sp)
    800026f0:	01013403          	ld	s0,16(sp)
    800026f4:	00813483          	ld	s1,8(sp)
    800026f8:	00013903          	ld	s2,0(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret

0000000080002704 <_ZN13BoundedBuffer3getEv>:

char BoundedBuffer::get() {
    80002704:	fe010113          	addi	sp,sp,-32
    80002708:	00113c23          	sd	ra,24(sp)
    8000270c:	00813823          	sd	s0,16(sp)
    80002710:	00913423          	sd	s1,8(sp)
    80002714:	01213023          	sd	s2,0(sp)
    80002718:	02010413          	addi	s0,sp,32
    8000271c:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002720:	01053503          	ld	a0,16(a0)
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	044080e7          	jalr	68(ra) # 80001768 <_ZN3Sem4waitEPS_>
    char  c = buffer[head++];
    8000272c:	0004a783          	lw	a5,0(s1)
    80002730:	0017871b          	addiw	a4,a5,1
    80002734:	00f487b3          	add	a5,s1,a5
    80002738:	0187c903          	lbu	s2,24(a5)
    head %= bufferSize;
    8000273c:	06400793          	li	a5,100
    80002740:	02f767bb          	remw	a5,a4,a5
    80002744:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002748:	0084b503          	ld	a0,8(s1)
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	0ac080e7          	jalr	172(ra) # 800017f8 <_ZN3Sem6signalEPS_>
    return c;
}
    80002754:	00090513          	mv	a0,s2
    80002758:	01813083          	ld	ra,24(sp)
    8000275c:	01013403          	ld	s0,16(sp)
    80002760:	00813483          	ld	s1,8(sp)
    80002764:	00013903          	ld	s2,0(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret

0000000080002770 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00113423          	sd	ra,8(sp)
    80002778:	00813023          	sd	s0,0(sp)
    8000277c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
    80002780:	05750513          	addi	a0,a0,87
    80002784:	00655513          	srli	a0,a0,0x6
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	2f8080e7          	jalr	760(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002790:	00813083          	ld	ra,8(sp)
    80002794:	00013403          	ld	s0,0(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800027a0:	ff010113          	addi	sp,sp,-16
    800027a4:	00113423          	sd	ra,8(sp)
    800027a8:	00813023          	sd	s0,0(sp)
    800027ac:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	4f4080e7          	jalr	1268(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800027b8:	00813083          	ld	ra,8(sp)
    800027bc:	00013403          	ld	s0,0(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_ZN5RISCV10popSppSpieEv>:
extern void handleNewChars(void*);

// first time running a thread, sepc inside of wrapper


void RISCV::popSppSpie() {
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00813423          	sd	s0,8(sp)
    800027d0:	01010413          	addi	s0,sp,16

    // not inline ( ra reg )
    // pop sstatus spp and spie bits
    if (TCB::running->routine && TCB::running->routine != handleNewChars) RISCV::mask_status(SPP);
    800027d4:	00006797          	auipc	a5,0x6
    800027d8:	7c47b783          	ld	a5,1988(a5) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x40>
    800027dc:	0007b783          	ld	a5,0(a5)
    800027e0:	0287b783          	ld	a5,40(a5)
    800027e4:	00078c63          	beqz	a5,800027fc <_ZN5RISCV10popSppSpieEv+0x34>
    800027e8:	00006717          	auipc	a4,0x6
    800027ec:	7c073703          	ld	a4,1984(a4) # 80008fa8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800027f0:	00e78663          	beq	a5,a4,800027fc <_ZN5RISCV10popSppSpieEv+0x34>
        __asm__ volatile("csrs sip, %0" : : "r"(mask));
    }


    static inline void mask_status(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800027f4:	10000793          	li	a5,256
    800027f8:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    800027fc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002800:	10200073          	sret

    // => pop spp and spie !
    // exit from supervisor mode
}
    80002804:	00813403          	ld	s0,8(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN5RISCV16handle_interruptEv>:

void RISCV::handle_interrupt() {
    80002810:	fb010113          	addi	sp,sp,-80
    80002814:	04113423          	sd	ra,72(sp)
    80002818:	04813023          	sd	s0,64(sp)
    8000281c:	02913c23          	sd	s1,56(sp)
    80002820:	03213823          	sd	s2,48(sp)
    80002824:	05010413          	addi	s0,sp,80

    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    80002828:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    8000282c:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002830:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002834:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002838:	00070693          	mv	a3,a4

};

inline uint64 RISCV::rd_scause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    8000283c:	142027f3          	csrr	a5,scause
    80002840:	faf43c23          	sd	a5,-72(s0)
    return value;
    80002844:	fb843703          	ld	a4,-72(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    80002848:	fff00793          	li	a5,-1
    8000284c:	03f79793          	slli	a5,a5,0x3f
    80002850:	00178793          	addi	a5,a5,1
    80002854:	06f70063          	beq	a4,a5,800028b4 <_ZN5RISCV16handle_interruptEv+0xa4>

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }

    } else if (scause == EXTERNAL) {
    80002858:	fff00793          	li	a5,-1
    8000285c:	03f79793          	slli	a5,a5,0x3f
    80002860:	00978793          	addi	a5,a5,9
    80002864:	12f70063          	beq	a4,a5,80002984 <_ZN5RISCV16handle_interruptEv+0x174>
//        TCB::contextSwitch( &((TCB*)a1)->context, &((TCB*)a2)->context );
//
//        wr_sepc(sepc);
//        wr_sstatus(sstatus);

     else if (scause == U_ECALL || scause == S_ECALL){
    80002868:	ff870713          	addi	a4,a4,-8
    8000286c:	00100793          	li	a5,1
    80002870:	1ee7ee63          	bltu	a5,a4,80002a6c <_ZN5RISCV16handle_interruptEv+0x25c>
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002874:	141027f3          	csrr	a5,sepc
    80002878:	fcf43c23          	sd	a5,-40(s0)
    return value;
    8000287c:	fd843483          	ld	s1,-40(s0)
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
    80002880:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002884:	100027f3          	csrr	a5,sstatus
    80002888:	fcf43823          	sd	a5,-48(s0)
    return value;
    8000288c:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    80002890:	04200793          	li	a5,66
    80002894:	1107e263          	bltu	a5,a6,80002998 <_ZN5RISCV16handle_interruptEv+0x188>
    80002898:	00281813          	slli	a6,a6,0x2
    8000289c:	00004717          	auipc	a4,0x4
    800028a0:	78470713          	addi	a4,a4,1924 # 80007020 <CONSOLE_STATUS+0x10>
    800028a4:	00e80833          	add	a6,a6,a4
    800028a8:	00082783          	lw	a5,0(a6)
    800028ac:	00e787b3          	add	a5,a5,a4
    800028b0:	00078067          	jr	a5
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    800028b4:	00200793          	li	a5,2
    800028b8:	1447b073          	csrc	sip,a5

    Scheduler(const Scheduler&) = delete;

private:

    static bool hasSleeping() {return  first_sleepy != nullptr;}
    800028bc:	00006797          	auipc	a5,0x6
    800028c0:	6d47b783          	ld	a5,1748(a5) # 80008f90 <_GLOBAL_OFFSET_TABLE_+0x38>
    800028c4:	0007b483          	ld	s1,0(a5)
        if (Scheduler::hasSleeping()) {
    800028c8:	04048663          	beqz	s1,80002914 <_ZN5RISCV16handle_interruptEv+0x104>
            Scheduler::first_sleepy -> sleeping_time --;
    800028cc:	0184b783          	ld	a5,24(s1)
    800028d0:	fff78793          	addi	a5,a5,-1
    800028d4:	00f4bc23          	sd	a5,24(s1)
            while (tcb) {
    800028d8:	02048663          	beqz	s1,80002904 <_ZN5RISCV16handle_interruptEv+0xf4>
                if (tcb -> sleeping_time > 0) break;
    800028dc:	0184b783          	ld	a5,24(s1)
    800028e0:	02079263          	bnez	a5,80002904 <_ZN5RISCV16handle_interruptEv+0xf4>
                tcb->current_state = TCB::RUNNABLE;
    800028e4:	0604a023          	sw	zero,96(s1)
                Scheduler::put(tcb);
    800028e8:	00048513          	mv	a0,s1
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	0dc080e7          	jalr	220(ra) # 800019c8 <_ZN9Scheduler3putEP3TCB>
                TCB* next = tcb -> next_sleepy;
    800028f4:	0104b783          	ld	a5,16(s1)
                tcb -> next_sleepy = nullptr;
    800028f8:	0004b823          	sd	zero,16(s1)
                tcb = next;
    800028fc:	00078493          	mv	s1,a5
            while (tcb) {
    80002900:	fd9ff06f          	j	800028d8 <_ZN5RISCV16handle_interruptEv+0xc8>
            Scheduler::first_sleepy = tcb;
    80002904:	00006797          	auipc	a5,0x6
    80002908:	68c7b783          	ld	a5,1676(a5) # 80008f90 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000290c:	0097b023          	sd	s1,0(a5)
            if (!Scheduler::first_sleepy) Scheduler::last_sleepy = nullptr;
    80002910:	06048263          	beqz	s1,80002974 <_ZN5RISCV16handle_interruptEv+0x164>
        TCB::time_slice_count ++;
    80002914:	00006717          	auipc	a4,0x6
    80002918:	69c73703          	ld	a4,1692(a4) # 80008fb0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000291c:	00073783          	ld	a5,0(a4)
    80002920:	00178793          	addi	a5,a5,1
    80002924:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    80002928:	00006717          	auipc	a4,0x6
    8000292c:	67073703          	ld	a4,1648(a4) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002930:	00073703          	ld	a4,0(a4)
    time_t getTimeSlice() const {return time_slice;}
    80002934:	02073703          	ld	a4,32(a4)
    80002938:	06e7e463          	bltu	a5,a4,800029a0 <_ZN5RISCV16handle_interruptEv+0x190>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    8000293c:	141027f3          	csrr	a5,sepc
    80002940:	fcf43423          	sd	a5,-56(s0)
    return value;
    80002944:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002948:	100027f3          	csrr	a5,sstatus
    8000294c:	fcf43023          	sd	a5,-64(s0)
    return value;
    80002950:	fc043483          	ld	s1,-64(s0)
            TCB::time_slice_count = 0; // new running thread
    80002954:	00006797          	auipc	a5,0x6
    80002958:	65c7b783          	ld	a5,1628(a5) # 80008fb0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000295c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002960:	00001097          	auipc	ra,0x1
    80002964:	a84080e7          	jalr	-1404(ra) # 800033e4 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002968:	14191073          	csrw	sepc,s2
}

inline void RISCV::wr_sstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    8000296c:	10049073          	csrw	sstatus,s1
}
    80002970:	0300006f          	j	800029a0 <_ZN5RISCV16handle_interruptEv+0x190>
            if (!Scheduler::first_sleepy) Scheduler::last_sleepy = nullptr;
    80002974:	00006797          	auipc	a5,0x6
    80002978:	6047b783          	ld	a5,1540(a5) # 80008f78 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000297c:	0007b023          	sd	zero,0(a5)
    80002980:	f95ff06f          	j	80002914 <_ZN5RISCV16handle_interruptEv+0x104>
        console_handler();
    80002984:	00004097          	auipc	ra,0x4
    80002988:	54c080e7          	jalr	1356(ra) # 80006ed0 <console_handler>
    8000298c:	0140006f          	j	800029a0 <_ZN5RISCV16handle_interruptEv+0x190>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
    80002990:	00000097          	auipc	ra,0x0
    80002994:	0f0080e7          	jalr	240(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002998:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    8000299c:	10091073          	csrw	sstatus,s2

    } else {
        // INVALID INTERRUPT CODE
        printInteger(123456789);
    }
}
    800029a0:	04813083          	ld	ra,72(sp)
    800029a4:	04013403          	ld	s0,64(sp)
    800029a8:	03813483          	ld	s1,56(sp)
    800029ac:	03013903          	ld	s2,48(sp)
    800029b0:	05010113          	addi	sp,sp,80
    800029b4:	00008067          	ret
                MemoryAllocator::mem_free((void *)a1);
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	2ec080e7          	jalr	748(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
                break;
    800029c0:	fd9ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	894080e7          	jalr	-1900(ra) # 80003258 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    800029cc:	fcdff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                TCB::_threadExit();
    800029d0:	00001097          	auipc	ra,0x1
    800029d4:	a84080e7          	jalr	-1404(ra) # 80003454 <_ZN3TCB11_threadExitEv>
                break;
    800029d8:	fc1ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                TCB::dispatch();
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	a08080e7          	jalr	-1528(ra) # 800033e4 <_ZN3TCB8dispatchEv>
                break;
    800029e4:	fb5ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Sem::open((sem_t*)a1, (unsigned int)a2);
    800029e8:	0005859b          	sext.w	a1,a1
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	e7c080e7          	jalr	-388(ra) # 80001868 <_ZN3Sem4openEPPS_j>
                break;
    800029f4:	fa5ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Sem::s_close((sem_t)a1); // a1 == handle
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	ef4080e7          	jalr	-268(ra) # 800018ec <_ZN3Sem7s_closeEPS_>
                break;
    80002a00:	f99ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Sem::wait(((sem_t)a1)); // a1 <=> handle
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	d64080e7          	jalr	-668(ra) # 80001768 <_ZN3Sem4waitEPS_>
                break;
    80002a0c:	f8dff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Sem::signal((sem_t)a1); // a1 <=> handle
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	de8080e7          	jalr	-536(ra) # 800017f8 <_ZN3Sem6signalEPS_>
                break;
    80002a18:	f81ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Sem::timedWait((sem_t)a1,(time_t)a2);
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	e30080e7          	jalr	-464(ra) # 8000184c <_ZN3Sem9timedWaitEPS_m>
                break;
    80002a24:	f75ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Sem::trywait((sem_t)a1);
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	c90080e7          	jalr	-880(ra) # 800016b8 <_ZN3Sem7trywaitEPS_>
                break;
    80002a30:	f69ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                Scheduler::put_to_sleep((thread_t)TCB::running, (time_t)a1);
    80002a34:	00050593          	mv	a1,a0
    80002a38:	00006797          	auipc	a5,0x6
    80002a3c:	5607b783          	ld	a5,1376(a5) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002a40:	0007b503          	ld	a0,0(a5)
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	0cc080e7          	jalr	204(ra) # 80001b10 <_ZN9Scheduler12put_to_sleepEP3TCBm>
                break;
    80002a4c:	f4dff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                myConsole::getc();
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	22c080e7          	jalr	556(ra) # 80001c7c <_ZN9myConsole4getcEv>
                break;
    80002a58:	f41ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
                myConsole::putc((char)a1);
    80002a5c:	0ff57513          	andi	a0,a0,255
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	24c080e7          	jalr	588(ra) # 80001cac <_ZN9myConsole4putcEc>
                break;
    80002a68:	f31ff06f          	j	80002998 <_ZN5RISCV16handle_interruptEv+0x188>
        printInteger(123456789);
    80002a6c:	075bd537          	lui	a0,0x75bd
    80002a70:	d1550513          	addi	a0,a0,-747 # 75bcd15 <_entry-0x78a432eb>
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	5b8080e7          	jalr	1464(ra) # 8000302c <_Z12printIntegerm>
}
    80002a7c:	f25ff06f          	j	800029a0 <_ZN5RISCV16handle_interruptEv+0x190>

0000000080002a80 <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00813423          	sd	s0,8(sp)
    80002a88:	01010413          	addi	s0,sp,16

    //size je broj blokova koje zelimo zauzeti
    if (size <= 0) return nullptr;
    80002a8c:	10050863          	beqz	a0,80002b9c <_ZN15MemoryAllocator9mem_allocEm+0x11c>

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;
    80002a90:	00651793          	slli	a5,a0,0x6

    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002a94:	00006517          	auipc	a0,0x6
    80002a98:	5c453503          	ld	a0,1476(a0) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
    80002a9c:	0280006f          	j	80002ac4 <_ZN15MemoryAllocator9mem_allocEm+0x44>

        if (curr->size >= byte_size) {

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
                if (curr->next) curr->next->prev = curr->prev;
    80002aa0:	00053703          	ld	a4,0(a0)
    80002aa4:	00070663          	beqz	a4,80002ab0 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    80002aa8:	00853683          	ld	a3,8(a0)
    80002aac:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    80002ab0:	00853703          	ld	a4,8(a0)
    80002ab4:	08070063          	beqz	a4,80002b34 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002ab8:	00053683          	ld	a3,0(a0)
    80002abc:	00d73023          	sd	a3,0(a4)
    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002ac0:	00053503          	ld	a0,0(a0)
    80002ac4:	0a050c63          	beqz	a0,80002b7c <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if (curr->size >= byte_size) {
    80002ac8:	01053703          	ld	a4,16(a0)
    80002acc:	fef76ae3          	bltu	a4,a5,80002ac0 <_ZN15MemoryAllocator9mem_allocEm+0x40>
            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    80002ad0:	40f70733          	sub	a4,a4,a5
    80002ad4:	01700693          	li	a3,23
    80002ad8:	fce6f4e3          	bgeu	a3,a4,80002aa0 <_ZN15MemoryAllocator9mem_allocEm+0x20>
                else free_mem_head = curr->next;
                // first free seg
                continue;
            } else {
                // allocate
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    80002adc:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    80002ae0:	00053683          	ld	a3,0(a0)
    80002ae4:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    80002ae8:	00853683          	ld	a3,8(a0)
    80002aec:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    80002af0:	01053683          	ld	a3,16(a0)
    80002af4:	40f686b3          	sub	a3,a3,a5
    80002af8:	00d73823          	sd	a3,16(a4)
                // update pointers of next
                if (curr->next) curr->next->prev = remaining;
    80002afc:	00053683          	ld	a3,0(a0)
    80002b00:	00068463          	beqz	a3,80002b08 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    80002b04:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    80002b08:	00853683          	ld	a3,8(a0)
    80002b0c:	02068c63          	beqz	a3,80002b44 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    80002b10:	00e6b023          	sd	a4,0(a3)
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80002b14:	00006717          	auipc	a4,0x6
    80002b18:	54c73703          	ld	a4,1356(a4) # 80009060 <_ZN15MemoryAllocator13used_mem_headE>
    80002b1c:	02e56a63          	bltu	a0,a4,80002b50 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    80002b20:	06070463          	beqz	a4,80002b88 <_ZN15MemoryAllocator9mem_allocEm+0x108>
            else for (prev = used_mem_head; prev->next != 0; prev = prev->next);
    80002b24:	00070693          	mv	a3,a4
    80002b28:	00073703          	ld	a4,0(a4)
    80002b2c:	fe071ce3          	bnez	a4,80002b24 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
    80002b30:	0240006f          	j	80002b54 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
                else free_mem_head = curr->next;
    80002b34:	00053703          	ld	a4,0(a0)
    80002b38:	00006697          	auipc	a3,0x6
    80002b3c:	52e6b023          	sd	a4,1312(a3) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
                continue;
    80002b40:	f81ff06f          	j	80002ac0 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                else free_mem_head = remaining;
    80002b44:	00006697          	auipc	a3,0x6
    80002b48:	50e6ba23          	sd	a4,1300(a3) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
    80002b4c:	fc9ff06f          	j	80002b14 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80002b50:	00000693          	li	a3,0

            curr->size = byte_size;
    80002b54:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80002b58:	00d53423          	sd	a3,8(a0)
            if (prev) {
    80002b5c:	02068a63          	beqz	a3,80002b90 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                curr->next = prev->next;
    80002b60:	0006b783          	ld	a5,0(a3)
    80002b64:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80002b68:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    80002b6c:	00053783          	ld	a5,0(a0)
    80002b70:	00078463          	beqz	a5,80002b78 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
    80002b74:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80002b78:	01850513          	addi	a0,a0,24
        }
    }

    // free memory not found :(
    return nullptr;
}
    80002b7c:	00813403          	ld	s0,8(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80002b88:	00070693          	mv	a3,a4
    80002b8c:	fc9ff06f          	j	80002b54 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
            else used_mem_head = curr;
    80002b90:	00006797          	auipc	a5,0x6
    80002b94:	4ca7b823          	sd	a0,1232(a5) # 80009060 <_ZN15MemoryAllocator13used_mem_headE>
    80002b98:	fd5ff06f          	j	80002b6c <_ZN15MemoryAllocator9mem_allocEm+0xec>
    if (size <= 0) return nullptr;
    80002b9c:	00000513          	li	a0,0
    80002ba0:	fddff06f          	j	80002b7c <_ZN15MemoryAllocator9mem_allocEm+0xfc>

0000000080002ba4 <_ZN15MemoryAllocator12getAllocatorEv>:
    if (!allocator) {
    80002ba4:	00006797          	auipc	a5,0x6
    80002ba8:	4c47b783          	ld	a5,1220(a5) # 80009068 <_ZN15MemoryAllocator9allocatorE>
    80002bac:	00078863          	beqz	a5,80002bbc <_ZN15MemoryAllocator12getAllocatorEv+0x18>
}
    80002bb0:	00006517          	auipc	a0,0x6
    80002bb4:	4b853503          	ld	a0,1208(a0) # 80009068 <_ZN15MemoryAllocator9allocatorE>
    80002bb8:	00008067          	ret
MemoryAllocator* MemoryAllocator::getAllocator() {
    80002bbc:	fe010113          	addi	sp,sp,-32
    80002bc0:	00113c23          	sd	ra,24(sp)
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    80002bd0:	00006697          	auipc	a3,0x6
    80002bd4:	3986b683          	ld	a3,920(a3) # 80008f68 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002bd8:	0006b783          	ld	a5,0(a3)
    80002bdc:	00006497          	auipc	s1,0x6
    80002be0:	47c48493          	addi	s1,s1,1148 # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
    80002be4:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    80002be8:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    80002bec:	0004b703          	ld	a4,0(s1)
    80002bf0:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80002bf4:	00006797          	auipc	a5,0x6
    80002bf8:	3ac7b783          	ld	a5,940(a5) # 80008fa0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bfc:	0007b783          	ld	a5,0(a5)
    80002c00:	0006b683          	ld	a3,0(a3)
    80002c04:	40d787b3          	sub	a5,a5,a3
    80002c08:	00178793          	addi	a5,a5,1
    80002c0c:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    80002c10:	00100513          	li	a0,1
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	e6c080e7          	jalr	-404(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
    80002c1c:	00a4b823          	sd	a0,16(s1)
}
    80002c20:	00006517          	auipc	a0,0x6
    80002c24:	44853503          	ld	a0,1096(a0) # 80009068 <_ZN15MemoryAllocator9allocatorE>
    80002c28:	01813083          	ld	ra,24(sp)
    80002c2c:	01013403          	ld	s0,16(sp)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret

0000000080002c3c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00813423          	sd	s0,8(sp)
    80002c44:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80002c48:	04050663          	beqz	a0,80002c94 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    80002c4c:	00053783          	ld	a5,0(a0)
    80002c50:	04078663          	beqz	a5,80002c9c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80002c54:	01053703          	ld	a4,16(a0)
    80002c58:	00e506b3          	add	a3,a0,a4
    80002c5c:	00d78a63          	beq	a5,a3,80002c70 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
    80002c60:	00000513          	li	a0,0
}
    80002c64:	00813403          	ld	s0,8(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret
        curr->size += curr->next->size;
    80002c70:	0107b683          	ld	a3,16(a5)
    80002c74:	00d70733          	add	a4,a4,a3
    80002c78:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    80002c7c:	0007b783          	ld	a5,0(a5)
    80002c80:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80002c84:	00078463          	beqz	a5,80002c8c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80002c88:	00a7b423          	sd	a0,8(a5)
        return 1; // success status
    80002c8c:	00100513          	li	a0,1
    80002c90:	fd5ff06f          	j	80002c64 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (!curr) return 0;
    80002c94:	00000513          	li	a0,0
    80002c98:	fcdff06f          	j	80002c64 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    80002c9c:	00000513          	li	a0,0
    80002ca0:	fc5ff06f          	j	80002c64 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80002ca4:	14050a63          	beqz	a0,80002df8 <_ZN15MemoryAllocator8mem_freeEPKv+0x154>
    80002ca8:	00006797          	auipc	a5,0x6
    80002cac:	2f87b783          	ld	a5,760(a5) # 80008fa0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002cb0:	0007b783          	ld	a5,0(a5)
    80002cb4:	14a7e663          	bltu	a5,a0,80002e00 <_ZN15MemoryAllocator8mem_freeEPKv+0x15c>
    80002cb8:	00006797          	auipc	a5,0x6
    80002cbc:	2b07b783          	ld	a5,688(a5) # 80008f68 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002cc0:	0007b783          	ld	a5,0(a5)
    80002cc4:	14f56263          	bltu	a0,a5,80002e08 <_ZN15MemoryAllocator8mem_freeEPKv+0x164>
int MemoryAllocator::mem_free(const void* addr) {
    80002cc8:	fe010113          	addi	sp,sp,-32
    80002ccc:	00113c23          	sd	ra,24(sp)
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	01213023          	sd	s2,0(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    80002ce0:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    80002ce4:	00006797          	auipc	a5,0x6
    80002ce8:	37c7b783          	ld	a5,892(a5) # 80009060 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    80002cec:	00078863          	beqz	a5,80002cfc <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    80002cf0:	0097f663          	bgeu	a5,s1,80002cfc <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    80002cf4:	0007b783          	ld	a5,0(a5)
    80002cf8:	ff5ff06f          	j	80002cec <_ZN15MemoryAllocator8mem_freeEPKv+0x48>
    if (block != tmp || !tmp) return -1;
    80002cfc:	10979a63          	bne	a5,s1,80002e10 <_ZN15MemoryAllocator8mem_freeEPKv+0x16c>
    80002d00:	10078c63          	beqz	a5,80002e18 <_ZN15MemoryAllocator8mem_freeEPKv+0x174>
    if (tmp->prev) tmp->prev->next = tmp->next;
    80002d04:	0087b703          	ld	a4,8(a5)
    80002d08:	06070c63          	beqz	a4,80002d80 <_ZN15MemoryAllocator8mem_freeEPKv+0xdc>
    80002d0c:	0007b683          	ld	a3,0(a5)
    80002d10:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    80002d14:	0007b703          	ld	a4,0(a5)
    80002d18:	00070663          	beqz	a4,80002d24 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    80002d1c:	0087b783          	ld	a5,8(a5)
    80002d20:	00f73423          	sd	a5,8(a4)
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80002d24:	00006797          	auipc	a5,0x6
    80002d28:	3347b783          	ld	a5,820(a5) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
    80002d2c:	06078863          	beqz	a5,80002d9c <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    80002d30:	06f4e463          	bltu	s1,a5,80002d98 <_ZN15MemoryAllocator8mem_freeEPKv+0xf4>
    else for (tmp = free_mem_head; tmp->next != 0 && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    80002d34:	00078913          	mv	s2,a5
    80002d38:	0007b783          	ld	a5,0(a5)
    80002d3c:	00078463          	beqz	a5,80002d44 <_ZN15MemoryAllocator8mem_freeEPKv+0xa0>
    80002d40:	fe97eae3          	bltu	a5,s1,80002d34 <_ZN15MemoryAllocator8mem_freeEPKv+0x90>
    if (tmp == nullptr) {
    80002d44:	04090663          	beqz	s2,80002d90 <_ZN15MemoryAllocator8mem_freeEPKv+0xec>
        block->next = tmp->next;
    80002d48:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    80002d4c:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80002d50:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80002d54:	fe853783          	ld	a5,-24(a0)
    80002d58:	00078463          	beqz	a5,80002d60 <_ZN15MemoryAllocator8mem_freeEPKv+0xbc>
    80002d5c:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80002d60:	00048513          	mv	a0,s1
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	ed8080e7          	jalr	-296(ra) # 80002c3c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    80002d6c:	00090513          	mv	a0,s2
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	ecc080e7          	jalr	-308(ra) # 80002c3c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80002d78:	00000513          	li	a0,0
    80002d7c:	05c0006f          	j	80002dd8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    else used_mem_head = tmp->next;
    80002d80:	0007b703          	ld	a4,0(a5)
    80002d84:	00006697          	auipc	a3,0x6
    80002d88:	2ce6be23          	sd	a4,732(a3) # 80009060 <_ZN15MemoryAllocator13used_mem_headE>
    80002d8c:	f89ff06f          	j	80002d14 <_ZN15MemoryAllocator8mem_freeEPKv+0x70>
    80002d90:	00090793          	mv	a5,s2
    80002d94:	0080006f          	j	80002d9c <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80002d98:	00000793          	li	a5,0
        block -> prev = tmp;
    80002d9c:	fef53823          	sd	a5,-16(a0)
        if (free_mem_head) {
    80002da0:	00006797          	auipc	a5,0x6
    80002da4:	2b87b783          	ld	a5,696(a5) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
    80002da8:	04078463          	beqz	a5,80002df0 <_ZN15MemoryAllocator8mem_freeEPKv+0x14c>
            free_mem_head->prev = block;
    80002dac:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    80002db0:	fef53423          	sd	a5,-24(a0)
            tryToJoin(block);
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	e84080e7          	jalr	-380(ra) # 80002c3c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    80002dc0:	00006797          	auipc	a5,0x6
    80002dc4:	2897bc23          	sd	s1,664(a5) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    80002dc8:	00048513          	mv	a0,s1
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	e70080e7          	jalr	-400(ra) # 80002c3c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80002dd4:	00000513          	li	a0,0
}
    80002dd8:	01813083          	ld	ra,24(sp)
    80002ddc:	01013403          	ld	s0,16(sp)
    80002de0:	00813483          	ld	s1,8(sp)
    80002de4:	00013903          	ld	s2,0(sp)
    80002de8:	02010113          	addi	sp,sp,32
    80002dec:	00008067          	ret
        else block -> next = nullptr;
    80002df0:	fe053423          	sd	zero,-24(a0)
    80002df4:	fcdff06f          	j	80002dc0 <_ZN15MemoryAllocator8mem_freeEPKv+0x11c>
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80002df8:	fff00513          	li	a0,-1
    80002dfc:	00008067          	ret
    80002e00:	fff00513          	li	a0,-1
    80002e04:	00008067          	ret
    80002e08:	fff00513          	li	a0,-1
}
    80002e0c:	00008067          	ret
    if (block != tmp || !tmp) return -1;
    80002e10:	fff00513          	li	a0,-1
    80002e14:	fc5ff06f          	j	80002dd8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    80002e18:	fff00513          	li	a0,-1
    80002e1c:	fbdff06f          	j	80002dd8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>

0000000080002e20 <_ZN15MemoryAllocator5printEv>:

extern void printInteger(uint64);

void MemoryAllocator::print() {
    80002e20:	fe010113          	addi	sp,sp,-32
    80002e24:	00113c23          	sd	ra,24(sp)
    80002e28:	00813823          	sd	s0,16(sp)
    80002e2c:	00913423          	sd	s1,8(sp)
    80002e30:	02010413          	addi	s0,sp,32

    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    80002e34:	00006497          	auipc	s1,0x6
    80002e38:	2244b483          	ld	s1,548(s1) # 80009058 <_ZN15MemoryAllocator13free_mem_headE>
    80002e3c:	02048e63          	beqz	s1,80002e78 <_ZN15MemoryAllocator5printEv+0x58>
        __putc('f');
    80002e40:	06600513          	li	a0,102
    80002e44:	00004097          	auipc	ra,0x4
    80002e48:	018080e7          	jalr	24(ra) # 80006e5c <__putc>
        __putc('\n');
    80002e4c:	00a00513          	li	a0,10
    80002e50:	00004097          	auipc	ra,0x4
    80002e54:	00c080e7          	jalr	12(ra) # 80006e5c <__putc>
        printInteger(b->size);
    80002e58:	0104b503          	ld	a0,16(s1)
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	1d0080e7          	jalr	464(ra) # 8000302c <_Z12printIntegerm>
        __putc('\n');
    80002e64:	00a00513          	li	a0,10
    80002e68:	00004097          	auipc	ra,0x4
    80002e6c:	ff4080e7          	jalr	-12(ra) # 80006e5c <__putc>
    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    80002e70:	0004b483          	ld	s1,0(s1)
    80002e74:	fc9ff06f          	j	80002e3c <_ZN15MemoryAllocator5printEv+0x1c>
    }

    if (!used_mem_head) __putc('x');
    80002e78:	00006797          	auipc	a5,0x6
    80002e7c:	1e87b783          	ld	a5,488(a5) # 80009060 <_ZN15MemoryAllocator13used_mem_headE>
    80002e80:	04078463          	beqz	a5,80002ec8 <_ZN15MemoryAllocator5printEv+0xa8>

    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    80002e84:	00006497          	auipc	s1,0x6
    80002e88:	1dc4b483          	ld	s1,476(s1) # 80009060 <_ZN15MemoryAllocator13used_mem_headE>
    80002e8c:	04048663          	beqz	s1,80002ed8 <_ZN15MemoryAllocator5printEv+0xb8>
        __putc('u');
    80002e90:	07500513          	li	a0,117
    80002e94:	00004097          	auipc	ra,0x4
    80002e98:	fc8080e7          	jalr	-56(ra) # 80006e5c <__putc>
        __putc('\n');
    80002e9c:	00a00513          	li	a0,10
    80002ea0:	00004097          	auipc	ra,0x4
    80002ea4:	fbc080e7          	jalr	-68(ra) # 80006e5c <__putc>
        printInteger(b->size);
    80002ea8:	0104b503          	ld	a0,16(s1)
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	180080e7          	jalr	384(ra) # 8000302c <_Z12printIntegerm>
        __putc('\n');
    80002eb4:	00a00513          	li	a0,10
    80002eb8:	00004097          	auipc	ra,0x4
    80002ebc:	fa4080e7          	jalr	-92(ra) # 80006e5c <__putc>
    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    80002ec0:	0004b483          	ld	s1,0(s1)
    80002ec4:	fc9ff06f          	j	80002e8c <_ZN15MemoryAllocator5printEv+0x6c>
    if (!used_mem_head) __putc('x');
    80002ec8:	07800513          	li	a0,120
    80002ecc:	00004097          	auipc	ra,0x4
    80002ed0:	f90080e7          	jalr	-112(ra) # 80006e5c <__putc>
    80002ed4:	fb1ff06f          	j	80002e84 <_ZN15MemoryAllocator5printEv+0x64>
    }

    __putc('\n');
    80002ed8:	00a00513          	li	a0,10
    80002edc:	00004097          	auipc	ra,0x4
    80002ee0:	f80080e7          	jalr	-128(ra) # 80006e5c <__putc>
}
    80002ee4:	01813083          	ld	ra,24(sp)
    80002ee8:	01013403          	ld	s0,16(sp)
    80002eec:	00813483          	ld	s1,8(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret

0000000080002ef8 <_ZN4List3addEP3TCB>:
#include "../h/List.hpp"

void List::add(TCB *tcb) {
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	01213023          	sd	s2,0(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    80002f10:	00050493          	mv	s1,a0
    80002f14:	00058913          	mv	s2,a1

    Elem* toAdd = new Elem(tcb);
    80002f18:	01000513          	li	a0,16
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	21c080e7          	jalr	540(ra) # 80002138 <_Znwm>

    struct Elem {
        TCB* data;
        Elem* next;

        explicit Elem(TCB* tcb) : data(tcb), next(nullptr) {}
    80002f24:	01253023          	sd	s2,0(a0)
    80002f28:	00053423          	sd	zero,8(a0)

    if (!head) head = tail = toAdd;
    80002f2c:	0004b783          	ld	a5,0(s1)
    80002f30:	02078463          	beqz	a5,80002f58 <_ZN4List3addEP3TCB+0x60>
    else tail = tail -> next = toAdd;
    80002f34:	0084b783          	ld	a5,8(s1)
    80002f38:	00a7b423          	sd	a0,8(a5)
    80002f3c:	00a4b423          	sd	a0,8(s1)

}
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00813483          	ld	s1,8(sp)
    80002f4c:	00013903          	ld	s2,0(sp)
    80002f50:	02010113          	addi	sp,sp,32
    80002f54:	00008067          	ret
    if (!head) head = tail = toAdd;
    80002f58:	00a4b423          	sd	a0,8(s1)
    80002f5c:	00a4b023          	sd	a0,0(s1)
    80002f60:	fe1ff06f          	j	80002f40 <_ZN4List3addEP3TCB+0x48>

0000000080002f64 <_ZN4List3getEv>:

TCB *List::get() {
    80002f64:	fe010113          	addi	sp,sp,-32
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00813823          	sd	s0,16(sp)
    80002f70:	00913423          	sd	s1,8(sp)
    80002f74:	02010413          	addi	s0,sp,32
    80002f78:	00050793          	mv	a5,a0

    if (!head) return nullptr;
    80002f7c:	00053503          	ld	a0,0(a0)
    80002f80:	02050e63          	beqz	a0,80002fbc <_ZN4List3getEv+0x58>

    TCB* tcb = head -> data;
    80002f84:	00053483          	ld	s1,0(a0)
    Elem* oldHead = head;
    head = head -> next;
    80002f88:	00853703          	ld	a4,8(a0)
    80002f8c:	00e7b023          	sd	a4,0(a5)

    if (!head) tail = nullptr;
    80002f90:	02070263          	beqz	a4,80002fb4 <_ZN4List3getEv+0x50>

    delete oldHead;
    80002f94:	fffff097          	auipc	ra,0xfffff
    80002f98:	284080e7          	jalr	644(ra) # 80002218 <_ZdlPv>
    return tcb;
}
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	01013403          	ld	s0,16(sp)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret
    if (!head) tail = nullptr;
    80002fb4:	0007b423          	sd	zero,8(a5)
    80002fb8:	fddff06f          	j	80002f94 <_ZN4List3getEv+0x30>
    if (!head) return nullptr;
    80002fbc:	00050493          	mv	s1,a0
    80002fc0:	fddff06f          	j	80002f9c <_ZN4List3getEv+0x38>

0000000080002fc4 <_ZN4List4peekEv>:

TCB *List::peek() {
    80002fc4:	ff010113          	addi	sp,sp,-16
    80002fc8:	00813423          	sd	s0,8(sp)
    80002fcc:	01010413          	addi	s0,sp,16
    if (head) return head->data;
    80002fd0:	00053503          	ld	a0,0(a0)
    80002fd4:	00050463          	beqz	a0,80002fdc <_ZN4List4peekEv+0x18>
    80002fd8:	00053503          	ld	a0,0(a0)
    else return nullptr;
}
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <_Z13myPrintStringPKc>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void myPrintString(char const* string) {
    80002fe8:	fe010113          	addi	sp,sp,-32
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	02010413          	addi	s0,sp,32
    80002ffc:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80003000:	0004c503          	lbu	a0,0(s1)
    80003004:	00050a63          	beqz	a0,80003018 <_Z13myPrintStringPKc+0x30>
        __putc(*string);
    80003008:	00004097          	auipc	ra,0x4
    8000300c:	e54080e7          	jalr	-428(ra) # 80006e5c <__putc>
        string++;
    80003010:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80003014:	fedff06f          	j	80003000 <_Z13myPrintStringPKc+0x18>
    }
}
    80003018:	01813083          	ld	ra,24(sp)
    8000301c:	01013403          	ld	s0,16(sp)
    80003020:	00813483          	ld	s1,8(sp)
    80003024:	02010113          	addi	sp,sp,32
    80003028:	00008067          	ret

000000008000302c <_Z12printIntegerm>:

void printInteger(uint64 num) {
    8000302c:	fd010113          	addi	sp,sp,-48
    80003030:	02113423          	sd	ra,40(sp)
    80003034:	02813023          	sd	s0,32(sp)
    80003038:	00913c23          	sd	s1,24(sp)
    8000303c:	01213823          	sd	s2,16(sp)
    80003040:	01313423          	sd	s3,8(sp)
    80003044:	03010413          	addi	s0,sp,48
    80003048:	00050913          	mv	s2,a0
    __putc('\n');
    8000304c:	00a00513          	li	a0,10
    80003050:	00004097          	auipc	ra,0x4
    80003054:	e0c080e7          	jalr	-500(ra) # 80006e5c <__putc>
    if (!num) __putc('0');
    80003058:	00090863          	beqz	s2,80003068 <_Z12printIntegerm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    8000305c:	00000993          	li	s3,0
    80003060:	00000493          	li	s1,0
    80003064:	01c0006f          	j	80003080 <_Z12printIntegerm+0x54>
    if (!num) __putc('0');
    80003068:	03000513          	li	a0,48
    8000306c:	00004097          	auipc	ra,0x4
    80003070:	df0080e7          	jalr	-528(ra) # 80006e5c <__putc>
    80003074:	fe9ff06f          	j	8000305c <_Z12printIntegerm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    80003078:	00a00793          	li	a5,10
    8000307c:	02f95933          	divu	s2,s2,a5
    while (num) {
    80003080:	02090463          	beqz	s2,800030a8 <_Z12printIntegerm+0x7c>
        num2 *= 10;
    80003084:	00249793          	slli	a5,s1,0x2
    80003088:	009784b3          	add	s1,a5,s1
    8000308c:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80003090:	00a00493          	li	s1,10
    80003094:	029974b3          	remu	s1,s2,s1
    80003098:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    8000309c:	fc049ee3          	bnez	s1,80003078 <_Z12printIntegerm+0x4c>
    800030a0:	00198993          	addi	s3,s3,1
    800030a4:	fd5ff06f          	j	80003078 <_Z12printIntegerm+0x4c>
    }
    while (num2) {
    800030a8:	02048063          	beqz	s1,800030c8 <_Z12printIntegerm+0x9c>
        __putc(num2 % 10 + '0');
    800030ac:	00a00913          	li	s2,10
    800030b0:	0324f533          	remu	a0,s1,s2
    800030b4:	03050513          	addi	a0,a0,48
    800030b8:	00004097          	auipc	ra,0x4
    800030bc:	da4080e7          	jalr	-604(ra) # 80006e5c <__putc>
        num2 /= 10;
    800030c0:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    800030c4:	fe5ff06f          	j	800030a8 <_Z12printIntegerm+0x7c>
    }
    while (zero_count--) __putc('0');
    800030c8:	fff98493          	addi	s1,s3,-1
    800030cc:	00098c63          	beqz	s3,800030e4 <_Z12printIntegerm+0xb8>
    800030d0:	03000513          	li	a0,48
    800030d4:	00004097          	auipc	ra,0x4
    800030d8:	d88080e7          	jalr	-632(ra) # 80006e5c <__putc>
    800030dc:	00048993          	mv	s3,s1
    800030e0:	fe9ff06f          	j	800030c8 <_Z12printIntegerm+0x9c>
    800030e4:	02813083          	ld	ra,40(sp)
    800030e8:	02013403          	ld	s0,32(sp)
    800030ec:	01813483          	ld	s1,24(sp)
    800030f0:	01013903          	ld	s2,16(sp)
    800030f4:	00813983          	ld	s3,8(sp)
    800030f8:	03010113          	addi	sp,sp,48
    800030fc:	00008067          	ret

0000000080003100 <_ZN3TCB7wrapperEv>:
    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return 0;
}

void TCB::wrapper() {
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00113423          	sd	ra,8(sp)
    80003108:	00813023          	sd	s0,0(sp)
    8000310c:	01010413          	addi	s0,sp,16

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    // came from supervisor trap (s mode)
    RISCV::popSppSpie();
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	6b8080e7          	jalr	1720(ra) # 800027c8 <_ZN5RISCV10popSppSpieEv>
    if (running->routine) {
    80003118:	00006717          	auipc	a4,0x6
    8000311c:	f5873703          	ld	a4,-168(a4) # 80009070 <_ZN3TCB7runningE>
    80003120:	02873783          	ld	a5,40(a4)
    80003124:	00078663          	beqz	a5,80003130 <_ZN3TCB7wrapperEv+0x30>
        running->routine(running->args); // in user mode
    80003128:	03073503          	ld	a0,48(a4)
    8000312c:	000780e7          	jalr	a5
    void finish() { current_state = state::FINISHED; }
    80003130:	00006797          	auipc	a5,0x6
    80003134:	f407b783          	ld	a5,-192(a5) # 80009070 <_ZN3TCB7runningE>
    80003138:	00300713          	li	a4,3
    8000313c:	06e7a023          	sw	a4,96(a5)
    }

    running->finish();
    thread_dispatch();
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	290080e7          	jalr	656(ra) # 800013d0 <_Z15thread_dispatchv>
    // no return address from wrapper
}
    80003148:	00813083          	ld	ra,8(sp)
    8000314c:	00013403          	ld	s0,0(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813423          	sd	s0,8(sp)
    80003160:	01010413          	addi	s0,sp,16
    80003164:	00073303          	ld	t1,0(a4)
    80003168:	00873883          	ld	a7,8(a4)
    8000316c:	01073803          	ld	a6,16(a4)
    80003170:	01873783          	ld	a5,24(a4)
    80003174:	04653023          	sd	t1,64(a0)
    80003178:	05153423          	sd	a7,72(a0)
    8000317c:	05053823          	sd	a6,80(a0)
    80003180:	04f53c23          	sd	a5,88(a0)
    80003184:	06050223          	sb	zero,100(a0)
    id = id_count++;
    80003188:	00006717          	auipc	a4,0x6
    8000318c:	ee870713          	addi	a4,a4,-280 # 80009070 <_ZN3TCB7runningE>
    80003190:	00872783          	lw	a5,8(a4)
    80003194:	0017881b          	addiw	a6,a5,1
    80003198:	01072423          	sw	a6,8(a4)
    8000319c:	00f52023          	sw	a5,0(a0)
    routine = fun;
    800031a0:	02b53423          	sd	a1,40(a0)
    this->args = args;
    800031a4:	02c53823          	sd	a2,48(a0)
    this->stack = (uint64*)stack; // stack start address (allocated)
    800031a8:	02d53c23          	sd	a3,56(a0)
    this->current_state = RUNNABLE;
    800031ac:	06052023          	sw	zero,96(a0)
    this->next_ready = nullptr;
    800031b0:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    800031b4:	00053823          	sd	zero,16(a0)
    this->sleeping_time = 0;
    800031b8:	00053c23          	sd	zero,24(a0)
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
    800031bc:	00200793          	li	a5,2
    800031c0:	02f53023          	sd	a5,32(a0)
}
    800031c4:	00813403          	ld	s0,8(sp)
    800031c8:	01010113          	addi	sp,sp,16
    800031cc:	00008067          	ret

00000000800031d0 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    800031d0:	fe010113          	addi	sp,sp,-32
    800031d4:	00113c23          	sd	ra,24(sp)
    800031d8:	00813823          	sd	s0,16(sp)
    800031dc:	00913423          	sd	s1,8(sp)
    800031e0:	01213023          	sd	s2,0(sp)
    800031e4:	02010413          	addi	s0,sp,32
    800031e8:	00050493          	mv	s1,a0
    800031ec:	00058913          	mv	s2,a1
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	e10080e7          	jalr	-496(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    800031f8:	04090593          	addi	a1,s2,64
    800031fc:	04048513          	addi	a0,s1,64
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	010080e7          	jalr	16(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	e78080e7          	jalr	-392(ra) # 80001080 <_ZN5RISCV8pop_regsEv>
}
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	00013903          	ld	s2,0(sp)
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret

0000000080003228 <_ZN3TCBnwEm>:
    running = Scheduler::get();

    if (running != oldRunning) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00113423          	sd	ra,8(sp)
    80003230:	00813023          	sd	s0,0(sp)
    80003234:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80003238:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    8000323c:	00655513          	srli	a0,a0,0x6
    80003240:	00000097          	auipc	ra,0x0
    80003244:	840080e7          	jalr	-1984(ra) # 80002a80 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003248:	00813083          	ld	ra,8(sp)
    8000324c:	00013403          	ld	s0,0(sp)
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret

0000000080003258 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    80003258:	f6010113          	addi	sp,sp,-160
    8000325c:	08113c23          	sd	ra,152(sp)
    80003260:	08813823          	sd	s0,144(sp)
    80003264:	08913423          	sd	s1,136(sp)
    80003268:	09213023          	sd	s2,128(sp)
    8000326c:	07313c23          	sd	s3,120(sp)
    80003270:	07413823          	sd	s4,112(sp)
    80003274:	07513423          	sd	s5,104(sp)
    80003278:	0a010413          	addi	s0,sp,160
    8000327c:	00050a13          	mv	s4,a0
    80003280:	00058493          	mv	s1,a1
    80003284:	00060a93          	mv	s5,a2
    80003288:	00068913          	mv	s2,a3
    Context context = {
    8000328c:	fa043823          	sd	zero,-80(s0)
    80003290:	fa043c23          	sd	zero,-72(s0)
    80003294:	00000797          	auipc	a5,0x0
    80003298:	e6c78793          	addi	a5,a5,-404 # 80003100 <_ZN3TCB7wrapperEv>
    8000329c:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800032a0:	0a058863          	beqz	a1,80003350 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xf8>
    800032a4:	000017b7          	lui	a5,0x1
    800032a8:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800032ac:	00f687b3          	add	a5,a3,a5
    *handle = new TCB (routine, args, stack_space, context);
    800032b0:	fa043703          	ld	a4,-96(s0)
    800032b4:	f8e43023          	sd	a4,-128(s0)
    800032b8:	f8f43423          	sd	a5,-120(s0)
    800032bc:	fb043783          	ld	a5,-80(s0)
    800032c0:	f8f43823          	sd	a5,-112(s0)
    800032c4:	fb843783          	ld	a5,-72(s0)
    800032c8:	f8f43c23          	sd	a5,-104(s0)
    800032cc:	06800513          	li	a0,104
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	f58080e7          	jalr	-168(ra) # 80003228 <_ZN3TCBnwEm>
    800032d8:	00050993          	mv	s3,a0
    800032dc:	f8043783          	ld	a5,-128(s0)
    800032e0:	f6f43023          	sd	a5,-160(s0)
    800032e4:	f8843783          	ld	a5,-120(s0)
    800032e8:	f6f43423          	sd	a5,-152(s0)
    800032ec:	f9043783          	ld	a5,-112(s0)
    800032f0:	f6f43823          	sd	a5,-144(s0)
    800032f4:	f9843783          	ld	a5,-104(s0)
    800032f8:	f6f43c23          	sd	a5,-136(s0)
    800032fc:	f6040713          	addi	a4,s0,-160
    80003300:	00090693          	mv	a3,s2
    80003304:	000a8613          	mv	a2,s5
    80003308:	00048593          	mv	a1,s1
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	e4c080e7          	jalr	-436(ra) # 80003158 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80003314:	013a3023          	sd	s3,0(s4)
    if (routine) Scheduler::put(*handle);
    80003318:	00048863          	beqz	s1,80003328 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xd0>
    8000331c:	00098513          	mv	a0,s3
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	6a8080e7          	jalr	1704(ra) # 800019c8 <_ZN9Scheduler3putEP3TCB>
}
    80003328:	00000513          	li	a0,0
    8000332c:	09813083          	ld	ra,152(sp)
    80003330:	09013403          	ld	s0,144(sp)
    80003334:	08813483          	ld	s1,136(sp)
    80003338:	08013903          	ld	s2,128(sp)
    8000333c:	07813983          	ld	s3,120(sp)
    80003340:	07013a03          	ld	s4,112(sp)
    80003344:	06813a83          	ld	s5,104(sp)
    80003348:	0a010113          	addi	sp,sp,160
    8000334c:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    80003350:	00000793          	li	a5,0
    80003354:	f5dff06f          	j	800032b0 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x58>

0000000080003358 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00113423          	sd	ra,8(sp)
    80003360:	00813023          	sd	s0,0(sp)
    80003364:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	93c080e7          	jalr	-1732(ra) # 80002ca4 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80003370:	00813083          	ld	ra,8(sp)
    80003374:	00013403          	ld	s0,0(sp)
    80003378:	01010113          	addi	sp,sp,16
    8000337c:	00008067          	ret

0000000080003380 <_ZN3TCB5startEv>:

void TCB::start() {
    /// remove from thread create !
    if (current_state == CREATED) {
    80003380:	06052703          	lw	a4,96(a0)
    80003384:	00200793          	li	a5,2
    80003388:	00f70463          	beq	a4,a5,80003390 <_ZN3TCB5startEv+0x10>
    8000338c:	00008067          	ret
void TCB::start() {
    80003390:	ff010113          	addi	sp,sp,-16
    80003394:	00113423          	sd	ra,8(sp)
    80003398:	00813023          	sd	s0,0(sp)
    8000339c:	01010413          	addi	s0,sp,16
        current_state = RUNNABLE;
    800033a0:	06052023          	sw	zero,96(a0)
        Scheduler::put(this);
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	624080e7          	jalr	1572(ra) # 800019c8 <_ZN9Scheduler3putEP3TCB>
    }
}
    800033ac:	00813083          	ld	ra,8(sp)
    800033b0:	00013403          	ld	s0,0(sp)
    800033b4:	01010113          	addi	sp,sp,16
    800033b8:	00008067          	ret

00000000800033bc <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00813423          	sd	s0,8(sp)
    800033c4:	01010413          	addi	s0,sp,16
    return running->current_state == RUNNABLE; }
    800033c8:	00006797          	auipc	a5,0x6
    800033cc:	ca87b783          	ld	a5,-856(a5) # 80009070 <_ZN3TCB7runningE>
    800033d0:	0607a503          	lw	a0,96(a5)
    800033d4:	00153513          	seqz	a0,a0
    800033d8:	00813403          	ld	s0,8(sp)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret

00000000800033e4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800033e4:	fe010113          	addi	sp,sp,-32
    800033e8:	00113c23          	sd	ra,24(sp)
    800033ec:	00813823          	sd	s0,16(sp)
    800033f0:	00913423          	sd	s1,8(sp)
    800033f4:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    800033f8:	00006497          	auipc	s1,0x6
    800033fc:	c784b483          	ld	s1,-904(s1) # 80009070 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003400:	00000097          	auipc	ra,0x0
    80003404:	fbc080e7          	jalr	-68(ra) # 800033bc <_ZN3TCB10isRunnableEv>
    80003408:	02051e63          	bnez	a0,80003444 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	578080e7          	jalr	1400(ra) # 80001984 <_ZN9Scheduler3getEv>
    80003414:	00050593          	mv	a1,a0
    80003418:	00006797          	auipc	a5,0x6
    8000341c:	c4a7bc23          	sd	a0,-936(a5) # 80009070 <_ZN3TCB7runningE>
    if (running != oldRunning) yield(oldRunning, running);
    80003420:	00a48863          	beq	s1,a0,80003430 <_ZN3TCB8dispatchEv+0x4c>
    80003424:	00048513          	mv	a0,s1
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	da8080e7          	jalr	-600(ra) # 800031d0 <_ZN3TCB5yieldEPS_S0_>
}
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003444:	00048513          	mv	a0,s1
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	580080e7          	jalr	1408(ra) # 800019c8 <_ZN9Scheduler3putEP3TCB>
    80003450:	fbdff06f          	j	8000340c <_ZN3TCB8dispatchEv+0x28>

0000000080003454 <_ZN3TCB11_threadExitEv>:

int TCB::_threadExit() {
    80003454:	ff010113          	addi	sp,sp,-16
    80003458:	00113423          	sd	ra,8(sp)
    8000345c:	00813023          	sd	s0,0(sp)
    80003460:	01010413          	addi	s0,sp,16
    80003464:	00006797          	auipc	a5,0x6
    80003468:	c0c7b783          	ld	a5,-1012(a5) # 80009070 <_ZN3TCB7runningE>
    8000346c:	00300713          	li	a4,3
    80003470:	06e7a023          	sw	a4,96(a5)
    TCB::running -> finish();

    // check if semaphore signal needed ?
    // don't put in Scheduler -> call yield only

    thread_dispatch();
    80003474:	ffffe097          	auipc	ra,0xffffe
    80003478:	f5c080e7          	jalr	-164(ra) # 800013d0 <_Z15thread_dispatchv>

    return 0;
}
    8000347c:	00000513          	li	a0,0
    80003480:	00813083          	ld	ra,8(sp)
    80003484:	00013403          	ld	s0,0(sp)
    80003488:	01010113          	addi	sp,sp,16
    8000348c:	00008067          	ret

0000000080003490 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003490:	fe010113          	addi	sp,sp,-32
    80003494:	00113c23          	sd	ra,24(sp)
    80003498:	00813823          	sd	s0,16(sp)
    8000349c:	00913423          	sd	s1,8(sp)
    800034a0:	01213023          	sd	s2,0(sp)
    800034a4:	02010413          	addi	s0,sp,32
    800034a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800034ac:	00000913          	li	s2,0
    800034b0:	00c0006f          	j	800034bc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	f1c080e7          	jalr	-228(ra) # 800013d0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	174080e7          	jalr	372(ra) # 80001630 <_Z4getcv>
    800034c4:	0005059b          	sext.w	a1,a0
    800034c8:	01b00793          	li	a5,27
    800034cc:	02f58a63          	beq	a1,a5,80003500 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800034d0:	0084b503          	ld	a0,8(s1)
    800034d4:	00001097          	auipc	ra,0x1
    800034d8:	644080e7          	jalr	1604(ra) # 80004b18 <_ZN6Buffer3putEi>
        i++;
    800034dc:	0019071b          	addiw	a4,s2,1
    800034e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800034e4:	0004a683          	lw	a3,0(s1)
    800034e8:	0026979b          	slliw	a5,a3,0x2
    800034ec:	00d787bb          	addw	a5,a5,a3
    800034f0:	0017979b          	slliw	a5,a5,0x1
    800034f4:	02f767bb          	remw	a5,a4,a5
    800034f8:	fc0792e3          	bnez	a5,800034bc <_ZL16producerKeyboardPv+0x2c>
    800034fc:	fb9ff06f          	j	800034b4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003500:	00100793          	li	a5,1
    80003504:	00006717          	auipc	a4,0x6
    80003508:	b8f72223          	sw	a5,-1148(a4) # 80009088 <_ZL9threadEnd>
    data->buffer->put('!');
    8000350c:	02100593          	li	a1,33
    80003510:	0084b503          	ld	a0,8(s1)
    80003514:	00001097          	auipc	ra,0x1
    80003518:	604080e7          	jalr	1540(ra) # 80004b18 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000351c:	0104b503          	ld	a0,16(s1)
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	078080e7          	jalr	120(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80003528:	01813083          	ld	ra,24(sp)
    8000352c:	01013403          	ld	s0,16(sp)
    80003530:	00813483          	ld	s1,8(sp)
    80003534:	00013903          	ld	s2,0(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret

0000000080003540 <_ZL8producerPv>:

static void producer(void *arg) {
    80003540:	fe010113          	addi	sp,sp,-32
    80003544:	00113c23          	sd	ra,24(sp)
    80003548:	00813823          	sd	s0,16(sp)
    8000354c:	00913423          	sd	s1,8(sp)
    80003550:	01213023          	sd	s2,0(sp)
    80003554:	02010413          	addi	s0,sp,32
    80003558:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000355c:	00000913          	li	s2,0
    80003560:	00c0006f          	j	8000356c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	e6c080e7          	jalr	-404(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000356c:	00006797          	auipc	a5,0x6
    80003570:	b1c7a783          	lw	a5,-1252(a5) # 80009088 <_ZL9threadEnd>
    80003574:	02079e63          	bnez	a5,800035b0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003578:	0004a583          	lw	a1,0(s1)
    8000357c:	0305859b          	addiw	a1,a1,48
    80003580:	0084b503          	ld	a0,8(s1)
    80003584:	00001097          	auipc	ra,0x1
    80003588:	594080e7          	jalr	1428(ra) # 80004b18 <_ZN6Buffer3putEi>
        i++;
    8000358c:	0019071b          	addiw	a4,s2,1
    80003590:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003594:	0004a683          	lw	a3,0(s1)
    80003598:	0026979b          	slliw	a5,a3,0x2
    8000359c:	00d787bb          	addw	a5,a5,a3
    800035a0:	0017979b          	slliw	a5,a5,0x1
    800035a4:	02f767bb          	remw	a5,a4,a5
    800035a8:	fc0792e3          	bnez	a5,8000356c <_ZL8producerPv+0x2c>
    800035ac:	fb9ff06f          	j	80003564 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800035b0:	0104b503          	ld	a0,16(s1)
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	fe4080e7          	jalr	-28(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    800035bc:	01813083          	ld	ra,24(sp)
    800035c0:	01013403          	ld	s0,16(sp)
    800035c4:	00813483          	ld	s1,8(sp)
    800035c8:	00013903          	ld	s2,0(sp)
    800035cc:	02010113          	addi	sp,sp,32
    800035d0:	00008067          	ret

00000000800035d4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800035d4:	fd010113          	addi	sp,sp,-48
    800035d8:	02113423          	sd	ra,40(sp)
    800035dc:	02813023          	sd	s0,32(sp)
    800035e0:	00913c23          	sd	s1,24(sp)
    800035e4:	01213823          	sd	s2,16(sp)
    800035e8:	01313423          	sd	s3,8(sp)
    800035ec:	03010413          	addi	s0,sp,48
    800035f0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035f4:	00000993          	li	s3,0
    800035f8:	01c0006f          	j	80003614 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	dd4080e7          	jalr	-556(ra) # 800013d0 <_Z15thread_dispatchv>
    80003604:	0500006f          	j	80003654 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003608:	00a00513          	li	a0,10
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	070080e7          	jalr	112(ra) # 8000167c <_Z4putcc>
    while (!threadEnd) {
    80003614:	00006797          	auipc	a5,0x6
    80003618:	a747a783          	lw	a5,-1420(a5) # 80009088 <_ZL9threadEnd>
    8000361c:	06079063          	bnez	a5,8000367c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003620:	00893503          	ld	a0,8(s2)
    80003624:	00001097          	auipc	ra,0x1
    80003628:	584080e7          	jalr	1412(ra) # 80004ba8 <_ZN6Buffer3getEv>
        i++;
    8000362c:	0019849b          	addiw	s1,s3,1
    80003630:	0004899b          	sext.w	s3,s1
        putc(key);
    80003634:	0ff57513          	andi	a0,a0,255
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	044080e7          	jalr	68(ra) # 8000167c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003640:	00092703          	lw	a4,0(s2)
    80003644:	0027179b          	slliw	a5,a4,0x2
    80003648:	00e787bb          	addw	a5,a5,a4
    8000364c:	02f4e7bb          	remw	a5,s1,a5
    80003650:	fa0786e3          	beqz	a5,800035fc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003654:	05000793          	li	a5,80
    80003658:	02f4e4bb          	remw	s1,s1,a5
    8000365c:	fa049ce3          	bnez	s1,80003614 <_ZL8consumerPv+0x40>
    80003660:	fa9ff06f          	j	80003608 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003664:	00893503          	ld	a0,8(s2)
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	540080e7          	jalr	1344(ra) # 80004ba8 <_ZN6Buffer3getEv>
        putc(key);
    80003670:	0ff57513          	andi	a0,a0,255
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	008080e7          	jalr	8(ra) # 8000167c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000367c:	00893503          	ld	a0,8(s2)
    80003680:	00001097          	auipc	ra,0x1
    80003684:	5b4080e7          	jalr	1460(ra) # 80004c34 <_ZN6Buffer6getCntEv>
    80003688:	fca04ee3          	bgtz	a0,80003664 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000368c:	01093503          	ld	a0,16(s2)
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	f08080e7          	jalr	-248(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80003698:	02813083          	ld	ra,40(sp)
    8000369c:	02013403          	ld	s0,32(sp)
    800036a0:	01813483          	ld	s1,24(sp)
    800036a4:	01013903          	ld	s2,16(sp)
    800036a8:	00813983          	ld	s3,8(sp)
    800036ac:	03010113          	addi	sp,sp,48
    800036b0:	00008067          	ret

00000000800036b4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800036b4:	f9010113          	addi	sp,sp,-112
    800036b8:	06113423          	sd	ra,104(sp)
    800036bc:	06813023          	sd	s0,96(sp)
    800036c0:	04913c23          	sd	s1,88(sp)
    800036c4:	05213823          	sd	s2,80(sp)
    800036c8:	05313423          	sd	s3,72(sp)
    800036cc:	05413023          	sd	s4,64(sp)
    800036d0:	03513c23          	sd	s5,56(sp)
    800036d4:	03613823          	sd	s6,48(sp)
    800036d8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800036dc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800036e0:	00004517          	auipc	a0,0x4
    800036e4:	a5050513          	addi	a0,a0,-1456 # 80007130 <CONSOLE_STATUS+0x120>
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	874080e7          	jalr	-1932(ra) # 80003f5c <_Z11printStringPKc>
    getString(input, 30);
    800036f0:	01e00593          	li	a1,30
    800036f4:	fa040493          	addi	s1,s0,-96
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00001097          	auipc	ra,0x1
    80003700:	8e8080e7          	jalr	-1816(ra) # 80003fe4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003704:	00048513          	mv	a0,s1
    80003708:	00001097          	auipc	ra,0x1
    8000370c:	9b4080e7          	jalr	-1612(ra) # 800040bc <_Z11stringToIntPKc>
    80003710:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003714:	00004517          	auipc	a0,0x4
    80003718:	a3c50513          	addi	a0,a0,-1476 # 80007150 <CONSOLE_STATUS+0x140>
    8000371c:	00001097          	auipc	ra,0x1
    80003720:	840080e7          	jalr	-1984(ra) # 80003f5c <_Z11printStringPKc>
    getString(input, 30);
    80003724:	01e00593          	li	a1,30
    80003728:	00048513          	mv	a0,s1
    8000372c:	00001097          	auipc	ra,0x1
    80003730:	8b8080e7          	jalr	-1864(ra) # 80003fe4 <_Z9getStringPci>
    n = stringToInt(input);
    80003734:	00048513          	mv	a0,s1
    80003738:	00001097          	auipc	ra,0x1
    8000373c:	984080e7          	jalr	-1660(ra) # 800040bc <_Z11stringToIntPKc>
    80003740:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003744:	00004517          	auipc	a0,0x4
    80003748:	a2c50513          	addi	a0,a0,-1492 # 80007170 <CONSOLE_STATUS+0x160>
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	810080e7          	jalr	-2032(ra) # 80003f5c <_Z11printStringPKc>
    80003754:	00000613          	li	a2,0
    80003758:	00a00593          	li	a1,10
    8000375c:	00090513          	mv	a0,s2
    80003760:	00001097          	auipc	ra,0x1
    80003764:	9ac080e7          	jalr	-1620(ra) # 8000410c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003768:	00004517          	auipc	a0,0x4
    8000376c:	a2050513          	addi	a0,a0,-1504 # 80007188 <CONSOLE_STATUS+0x178>
    80003770:	00000097          	auipc	ra,0x0
    80003774:	7ec080e7          	jalr	2028(ra) # 80003f5c <_Z11printStringPKc>
    80003778:	00000613          	li	a2,0
    8000377c:	00a00593          	li	a1,10
    80003780:	00048513          	mv	a0,s1
    80003784:	00001097          	auipc	ra,0x1
    80003788:	988080e7          	jalr	-1656(ra) # 8000410c <_Z8printIntiii>
    printString(".\n");
    8000378c:	00004517          	auipc	a0,0x4
    80003790:	a1450513          	addi	a0,a0,-1516 # 800071a0 <CONSOLE_STATUS+0x190>
    80003794:	00000097          	auipc	ra,0x0
    80003798:	7c8080e7          	jalr	1992(ra) # 80003f5c <_Z11printStringPKc>
    if(threadNum > n) {
    8000379c:	0324c463          	blt	s1,s2,800037c4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800037a0:	03205c63          	blez	s2,800037d8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800037a4:	03800513          	li	a0,56
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	990080e7          	jalr	-1648(ra) # 80002138 <_Znwm>
    800037b0:	00050a13          	mv	s4,a0
    800037b4:	00048593          	mv	a1,s1
    800037b8:	00001097          	auipc	ra,0x1
    800037bc:	2c4080e7          	jalr	708(ra) # 80004a7c <_ZN6BufferC1Ei>
    800037c0:	0300006f          	j	800037f0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800037c4:	00004517          	auipc	a0,0x4
    800037c8:	9e450513          	addi	a0,a0,-1564 # 800071a8 <CONSOLE_STATUS+0x198>
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	790080e7          	jalr	1936(ra) # 80003f5c <_Z11printStringPKc>
        return;
    800037d4:	0140006f          	j	800037e8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800037d8:	00004517          	auipc	a0,0x4
    800037dc:	a1050513          	addi	a0,a0,-1520 # 800071e8 <CONSOLE_STATUS+0x1d8>
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	77c080e7          	jalr	1916(ra) # 80003f5c <_Z11printStringPKc>
        return;
    800037e8:	000b0113          	mv	sp,s6
    800037ec:	1500006f          	j	8000393c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800037f0:	00000593          	li	a1,0
    800037f4:	00006517          	auipc	a0,0x6
    800037f8:	89c50513          	addi	a0,a0,-1892 # 80009090 <_ZL10waitForAll>
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	c10080e7          	jalr	-1008(ra) # 8000140c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003804:	00391793          	slli	a5,s2,0x3
    80003808:	00f78793          	addi	a5,a5,15
    8000380c:	ff07f793          	andi	a5,a5,-16
    80003810:	40f10133          	sub	sp,sp,a5
    80003814:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003818:	0019071b          	addiw	a4,s2,1
    8000381c:	00171793          	slli	a5,a4,0x1
    80003820:	00e787b3          	add	a5,a5,a4
    80003824:	00379793          	slli	a5,a5,0x3
    80003828:	00f78793          	addi	a5,a5,15
    8000382c:	ff07f793          	andi	a5,a5,-16
    80003830:	40f10133          	sub	sp,sp,a5
    80003834:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003838:	00191613          	slli	a2,s2,0x1
    8000383c:	012607b3          	add	a5,a2,s2
    80003840:	00379793          	slli	a5,a5,0x3
    80003844:	00f987b3          	add	a5,s3,a5
    80003848:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000384c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003850:	00006717          	auipc	a4,0x6
    80003854:	84073703          	ld	a4,-1984(a4) # 80009090 <_ZL10waitForAll>
    80003858:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000385c:	00078613          	mv	a2,a5
    80003860:	00000597          	auipc	a1,0x0
    80003864:	d7458593          	addi	a1,a1,-652 # 800035d4 <_ZL8consumerPv>
    80003868:	f9840513          	addi	a0,s0,-104
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	a90080e7          	jalr	-1392(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003874:	00000493          	li	s1,0
    80003878:	0280006f          	j	800038a0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000387c:	00000597          	auipc	a1,0x0
    80003880:	c1458593          	addi	a1,a1,-1004 # 80003490 <_ZL16producerKeyboardPv>
                      data + i);
    80003884:	00179613          	slli	a2,a5,0x1
    80003888:	00f60633          	add	a2,a2,a5
    8000388c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003890:	00c98633          	add	a2,s3,a2
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	a68080e7          	jalr	-1432(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000389c:	0014849b          	addiw	s1,s1,1
    800038a0:	0524d263          	bge	s1,s2,800038e4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800038a4:	00149793          	slli	a5,s1,0x1
    800038a8:	009787b3          	add	a5,a5,s1
    800038ac:	00379793          	slli	a5,a5,0x3
    800038b0:	00f987b3          	add	a5,s3,a5
    800038b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800038b8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800038bc:	00005717          	auipc	a4,0x5
    800038c0:	7d473703          	ld	a4,2004(a4) # 80009090 <_ZL10waitForAll>
    800038c4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800038c8:	00048793          	mv	a5,s1
    800038cc:	00349513          	slli	a0,s1,0x3
    800038d0:	00aa8533          	add	a0,s5,a0
    800038d4:	fa9054e3          	blez	s1,8000387c <_Z22producerConsumer_C_APIv+0x1c8>
    800038d8:	00000597          	auipc	a1,0x0
    800038dc:	c6858593          	addi	a1,a1,-920 # 80003540 <_ZL8producerPv>
    800038e0:	fa5ff06f          	j	80003884 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	aec080e7          	jalr	-1300(ra) # 800013d0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800038ec:	00000493          	li	s1,0
    800038f0:	00994e63          	blt	s2,s1,8000390c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800038f4:	00005517          	auipc	a0,0x5
    800038f8:	79c53503          	ld	a0,1948(a0) # 80009090 <_ZL10waitForAll>
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	bb8080e7          	jalr	-1096(ra) # 800014b4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003904:	0014849b          	addiw	s1,s1,1
    80003908:	fe9ff06f          	j	800038f0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000390c:	00005517          	auipc	a0,0x5
    80003910:	78453503          	ld	a0,1924(a0) # 80009090 <_ZL10waitForAll>
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	b48080e7          	jalr	-1208(ra) # 8000145c <_Z9sem_closeP3Sem>
    delete buffer;
    8000391c:	000a0e63          	beqz	s4,80003938 <_Z22producerConsumer_C_APIv+0x284>
    80003920:	000a0513          	mv	a0,s4
    80003924:	00001097          	auipc	ra,0x1
    80003928:	398080e7          	jalr	920(ra) # 80004cbc <_ZN6BufferD1Ev>
    8000392c:	000a0513          	mv	a0,s4
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	8e8080e7          	jalr	-1816(ra) # 80002218 <_ZdlPv>
    80003938:	000b0113          	mv	sp,s6

}
    8000393c:	f9040113          	addi	sp,s0,-112
    80003940:	06813083          	ld	ra,104(sp)
    80003944:	06013403          	ld	s0,96(sp)
    80003948:	05813483          	ld	s1,88(sp)
    8000394c:	05013903          	ld	s2,80(sp)
    80003950:	04813983          	ld	s3,72(sp)
    80003954:	04013a03          	ld	s4,64(sp)
    80003958:	03813a83          	ld	s5,56(sp)
    8000395c:	03013b03          	ld	s6,48(sp)
    80003960:	07010113          	addi	sp,sp,112
    80003964:	00008067          	ret
    80003968:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000396c:	000a0513          	mv	a0,s4
    80003970:	fffff097          	auipc	ra,0xfffff
    80003974:	8a8080e7          	jalr	-1880(ra) # 80002218 <_ZdlPv>
    80003978:	00048513          	mv	a0,s1
    8000397c:	00006097          	auipc	ra,0x6
    80003980:	7fc080e7          	jalr	2044(ra) # 8000a178 <_Unwind_Resume>

0000000080003984 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00813823          	sd	s0,16(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	01213023          	sd	s2,0(sp)
    80003998:	02010413          	addi	s0,sp,32
    8000399c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800039a0:	00100793          	li	a5,1
    800039a4:	02a7f863          	bgeu	a5,a0,800039d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039a8:	00a00793          	li	a5,10
    800039ac:	02f577b3          	remu	a5,a0,a5
    800039b0:	02078e63          	beqz	a5,800039ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039b4:	fff48513          	addi	a0,s1,-1
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	fcc080e7          	jalr	-52(ra) # 80003984 <_ZL9fibonaccim>
    800039c0:	00050913          	mv	s2,a0
    800039c4:	ffe48513          	addi	a0,s1,-2
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	fbc080e7          	jalr	-68(ra) # 80003984 <_ZL9fibonaccim>
    800039d0:	00a90533          	add	a0,s2,a0
}
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	00013903          	ld	s2,0(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	9e4080e7          	jalr	-1564(ra) # 800013d0 <_Z15thread_dispatchv>
    800039f4:	fc1ff06f          	j	800039b4 <_ZL9fibonaccim+0x30>

00000000800039f8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a10:	00a00493          	li	s1,10
    80003a14:	0400006f          	j	80003a54 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a18:	00004517          	auipc	a0,0x4
    80003a1c:	80050513          	addi	a0,a0,-2048 # 80007218 <CONSOLE_STATUS+0x208>
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	53c080e7          	jalr	1340(ra) # 80003f5c <_Z11printStringPKc>
    80003a28:	00000613          	li	a2,0
    80003a2c:	00a00593          	li	a1,10
    80003a30:	00048513          	mv	a0,s1
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	6d8080e7          	jalr	1752(ra) # 8000410c <_Z8printIntiii>
    80003a3c:	00004517          	auipc	a0,0x4
    80003a40:	a1450513          	addi	a0,a0,-1516 # 80007450 <CONSOLE_STATUS+0x440>
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	518080e7          	jalr	1304(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003a4c:	0014849b          	addiw	s1,s1,1
    80003a50:	0ff4f493          	andi	s1,s1,255
    80003a54:	00c00793          	li	a5,12
    80003a58:	fc97f0e3          	bgeu	a5,s1,80003a18 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003a5c:	00003517          	auipc	a0,0x3
    80003a60:	7c450513          	addi	a0,a0,1988 # 80007220 <CONSOLE_STATUS+0x210>
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	4f8080e7          	jalr	1272(ra) # 80003f5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003a6c:	00500313          	li	t1,5
    thread_dispatch();
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	960080e7          	jalr	-1696(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003a78:	01000513          	li	a0,16
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	f08080e7          	jalr	-248(ra) # 80003984 <_ZL9fibonaccim>
    80003a84:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003a88:	00003517          	auipc	a0,0x3
    80003a8c:	7a850513          	addi	a0,a0,1960 # 80007230 <CONSOLE_STATUS+0x220>
    80003a90:	00000097          	auipc	ra,0x0
    80003a94:	4cc080e7          	jalr	1228(ra) # 80003f5c <_Z11printStringPKc>
    80003a98:	00000613          	li	a2,0
    80003a9c:	00a00593          	li	a1,10
    80003aa0:	0009051b          	sext.w	a0,s2
    80003aa4:	00000097          	auipc	ra,0x0
    80003aa8:	668080e7          	jalr	1640(ra) # 8000410c <_Z8printIntiii>
    80003aac:	00004517          	auipc	a0,0x4
    80003ab0:	9a450513          	addi	a0,a0,-1628 # 80007450 <CONSOLE_STATUS+0x440>
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	4a8080e7          	jalr	1192(ra) # 80003f5c <_Z11printStringPKc>
    80003abc:	0400006f          	j	80003afc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ac0:	00003517          	auipc	a0,0x3
    80003ac4:	75850513          	addi	a0,a0,1880 # 80007218 <CONSOLE_STATUS+0x208>
    80003ac8:	00000097          	auipc	ra,0x0
    80003acc:	494080e7          	jalr	1172(ra) # 80003f5c <_Z11printStringPKc>
    80003ad0:	00000613          	li	a2,0
    80003ad4:	00a00593          	li	a1,10
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	00000097          	auipc	ra,0x0
    80003ae0:	630080e7          	jalr	1584(ra) # 8000410c <_Z8printIntiii>
    80003ae4:	00004517          	auipc	a0,0x4
    80003ae8:	96c50513          	addi	a0,a0,-1684 # 80007450 <CONSOLE_STATUS+0x440>
    80003aec:	00000097          	auipc	ra,0x0
    80003af0:	470080e7          	jalr	1136(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003af4:	0014849b          	addiw	s1,s1,1
    80003af8:	0ff4f493          	andi	s1,s1,255
    80003afc:	00f00793          	li	a5,15
    80003b00:	fc97f0e3          	bgeu	a5,s1,80003ac0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b04:	00003517          	auipc	a0,0x3
    80003b08:	73c50513          	addi	a0,a0,1852 # 80007240 <CONSOLE_STATUS+0x230>
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	450080e7          	jalr	1104(ra) # 80003f5c <_Z11printStringPKc>
    finishedD = true;
    80003b14:	00100793          	li	a5,1
    80003b18:	00005717          	auipc	a4,0x5
    80003b1c:	58f70023          	sb	a5,1408(a4) # 80009098 <_ZL9finishedD>
    thread_dispatch();
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	8b0080e7          	jalr	-1872(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003b28:	01813083          	ld	ra,24(sp)
    80003b2c:	01013403          	ld	s0,16(sp)
    80003b30:	00813483          	ld	s1,8(sp)
    80003b34:	00013903          	ld	s2,0(sp)
    80003b38:	02010113          	addi	sp,sp,32
    80003b3c:	00008067          	ret

0000000080003b40 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	00813823          	sd	s0,16(sp)
    80003b4c:	00913423          	sd	s1,8(sp)
    80003b50:	01213023          	sd	s2,0(sp)
    80003b54:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003b58:	00000493          	li	s1,0
    80003b5c:	0400006f          	j	80003b9c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003b60:	00003517          	auipc	a0,0x3
    80003b64:	6f050513          	addi	a0,a0,1776 # 80007250 <CONSOLE_STATUS+0x240>
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	3f4080e7          	jalr	1012(ra) # 80003f5c <_Z11printStringPKc>
    80003b70:	00000613          	li	a2,0
    80003b74:	00a00593          	li	a1,10
    80003b78:	00048513          	mv	a0,s1
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	590080e7          	jalr	1424(ra) # 8000410c <_Z8printIntiii>
    80003b84:	00004517          	auipc	a0,0x4
    80003b88:	8cc50513          	addi	a0,a0,-1844 # 80007450 <CONSOLE_STATUS+0x440>
    80003b8c:	00000097          	auipc	ra,0x0
    80003b90:	3d0080e7          	jalr	976(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003b94:	0014849b          	addiw	s1,s1,1
    80003b98:	0ff4f493          	andi	s1,s1,255
    80003b9c:	00200793          	li	a5,2
    80003ba0:	fc97f0e3          	bgeu	a5,s1,80003b60 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003ba4:	00003517          	auipc	a0,0x3
    80003ba8:	6b450513          	addi	a0,a0,1716 # 80007258 <CONSOLE_STATUS+0x248>
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	3b0080e7          	jalr	944(ra) # 80003f5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003bb4:	00700313          	li	t1,7
    thread_dispatch();
    80003bb8:	ffffe097          	auipc	ra,0xffffe
    80003bbc:	818080e7          	jalr	-2024(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003bc0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003bc4:	00003517          	auipc	a0,0x3
    80003bc8:	6a450513          	addi	a0,a0,1700 # 80007268 <CONSOLE_STATUS+0x258>
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	390080e7          	jalr	912(ra) # 80003f5c <_Z11printStringPKc>
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00a00593          	li	a1,10
    80003bdc:	0009051b          	sext.w	a0,s2
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	52c080e7          	jalr	1324(ra) # 8000410c <_Z8printIntiii>
    80003be8:	00004517          	auipc	a0,0x4
    80003bec:	86850513          	addi	a0,a0,-1944 # 80007450 <CONSOLE_STATUS+0x440>
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	36c080e7          	jalr	876(ra) # 80003f5c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003bf8:	00c00513          	li	a0,12
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	d88080e7          	jalr	-632(ra) # 80003984 <_ZL9fibonaccim>
    80003c04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c08:	00003517          	auipc	a0,0x3
    80003c0c:	66850513          	addi	a0,a0,1640 # 80007270 <CONSOLE_STATUS+0x260>
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	34c080e7          	jalr	844(ra) # 80003f5c <_Z11printStringPKc>
    80003c18:	00000613          	li	a2,0
    80003c1c:	00a00593          	li	a1,10
    80003c20:	0009051b          	sext.w	a0,s2
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	4e8080e7          	jalr	1256(ra) # 8000410c <_Z8printIntiii>
    80003c2c:	00004517          	auipc	a0,0x4
    80003c30:	82450513          	addi	a0,a0,-2012 # 80007450 <CONSOLE_STATUS+0x440>
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	328080e7          	jalr	808(ra) # 80003f5c <_Z11printStringPKc>
    80003c3c:	0400006f          	j	80003c7c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003c40:	00003517          	auipc	a0,0x3
    80003c44:	61050513          	addi	a0,a0,1552 # 80007250 <CONSOLE_STATUS+0x240>
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	314080e7          	jalr	788(ra) # 80003f5c <_Z11printStringPKc>
    80003c50:	00000613          	li	a2,0
    80003c54:	00a00593          	li	a1,10
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	4b0080e7          	jalr	1200(ra) # 8000410c <_Z8printIntiii>
    80003c64:	00003517          	auipc	a0,0x3
    80003c68:	7ec50513          	addi	a0,a0,2028 # 80007450 <CONSOLE_STATUS+0x440>
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	2f0080e7          	jalr	752(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003c74:	0014849b          	addiw	s1,s1,1
    80003c78:	0ff4f493          	andi	s1,s1,255
    80003c7c:	00500793          	li	a5,5
    80003c80:	fc97f0e3          	bgeu	a5,s1,80003c40 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003c84:	00003517          	auipc	a0,0x3
    80003c88:	5fc50513          	addi	a0,a0,1532 # 80007280 <CONSOLE_STATUS+0x270>
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	2d0080e7          	jalr	720(ra) # 80003f5c <_Z11printStringPKc>
    finishedC = true;
    80003c94:	00100793          	li	a5,1
    80003c98:	00005717          	auipc	a4,0x5
    80003c9c:	40f700a3          	sb	a5,1025(a4) # 80009099 <_ZL9finishedC>
    thread_dispatch();
    80003ca0:	ffffd097          	auipc	ra,0xffffd
    80003ca4:	730080e7          	jalr	1840(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003ca8:	01813083          	ld	ra,24(sp)
    80003cac:	01013403          	ld	s0,16(sp)
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	00013903          	ld	s2,0(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003cd8:	00000913          	li	s2,0
    80003cdc:	0380006f          	j	80003d14 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003ce0:	ffffd097          	auipc	ra,0xffffd
    80003ce4:	6f0080e7          	jalr	1776(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ce8:	00148493          	addi	s1,s1,1
    80003cec:	000027b7          	lui	a5,0x2
    80003cf0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cf4:	0097ee63          	bltu	a5,s1,80003d10 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003cf8:	00000713          	li	a4,0
    80003cfc:	000077b7          	lui	a5,0x7
    80003d00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d04:	fce7eee3          	bltu	a5,a4,80003ce0 <_ZL11workerBodyBPv+0x20>
    80003d08:	00170713          	addi	a4,a4,1
    80003d0c:	ff1ff06f          	j	80003cfc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d10:	00190913          	addi	s2,s2,1
    80003d14:	00f00793          	li	a5,15
    80003d18:	0527e063          	bltu	a5,s2,80003d58 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d1c:	00003517          	auipc	a0,0x3
    80003d20:	57450513          	addi	a0,a0,1396 # 80007290 <CONSOLE_STATUS+0x280>
    80003d24:	00000097          	auipc	ra,0x0
    80003d28:	238080e7          	jalr	568(ra) # 80003f5c <_Z11printStringPKc>
    80003d2c:	00000613          	li	a2,0
    80003d30:	00a00593          	li	a1,10
    80003d34:	0009051b          	sext.w	a0,s2
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	3d4080e7          	jalr	980(ra) # 8000410c <_Z8printIntiii>
    80003d40:	00003517          	auipc	a0,0x3
    80003d44:	71050513          	addi	a0,a0,1808 # 80007450 <CONSOLE_STATUS+0x440>
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	214080e7          	jalr	532(ra) # 80003f5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d50:	00000493          	li	s1,0
    80003d54:	f99ff06f          	j	80003cec <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003d58:	00003517          	auipc	a0,0x3
    80003d5c:	54050513          	addi	a0,a0,1344 # 80007298 <CONSOLE_STATUS+0x288>
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	1fc080e7          	jalr	508(ra) # 80003f5c <_Z11printStringPKc>
    finishedB = true;
    80003d68:	00100793          	li	a5,1
    80003d6c:	00005717          	auipc	a4,0x5
    80003d70:	32f70723          	sb	a5,814(a4) # 8000909a <_ZL9finishedB>
    thread_dispatch();
    80003d74:	ffffd097          	auipc	ra,0xffffd
    80003d78:	65c080e7          	jalr	1628(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	00813483          	ld	s1,8(sp)
    80003d88:	00013903          	ld	s2,0(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret

0000000080003d94 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003d94:	fe010113          	addi	sp,sp,-32
    80003d98:	00113c23          	sd	ra,24(sp)
    80003d9c:	00813823          	sd	s0,16(sp)
    80003da0:	00913423          	sd	s1,8(sp)
    80003da4:	01213023          	sd	s2,0(sp)
    80003da8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003dac:	00000913          	li	s2,0
    80003db0:	0380006f          	j	80003de8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003db4:	ffffd097          	auipc	ra,0xffffd
    80003db8:	61c080e7          	jalr	1564(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003dbc:	00148493          	addi	s1,s1,1
    80003dc0:	000027b7          	lui	a5,0x2
    80003dc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003dc8:	0097ee63          	bltu	a5,s1,80003de4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003dcc:	00000713          	li	a4,0
    80003dd0:	000077b7          	lui	a5,0x7
    80003dd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003dd8:	fce7eee3          	bltu	a5,a4,80003db4 <_ZL11workerBodyAPv+0x20>
    80003ddc:	00170713          	addi	a4,a4,1
    80003de0:	ff1ff06f          	j	80003dd0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003de4:	00190913          	addi	s2,s2,1
    80003de8:	00900793          	li	a5,9
    80003dec:	0527e063          	bltu	a5,s2,80003e2c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003df0:	00003517          	auipc	a0,0x3
    80003df4:	4b850513          	addi	a0,a0,1208 # 800072a8 <CONSOLE_STATUS+0x298>
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	164080e7          	jalr	356(ra) # 80003f5c <_Z11printStringPKc>
    80003e00:	00000613          	li	a2,0
    80003e04:	00a00593          	li	a1,10
    80003e08:	0009051b          	sext.w	a0,s2
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	300080e7          	jalr	768(ra) # 8000410c <_Z8printIntiii>
    80003e14:	00003517          	auipc	a0,0x3
    80003e18:	63c50513          	addi	a0,a0,1596 # 80007450 <CONSOLE_STATUS+0x440>
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	140080e7          	jalr	320(ra) # 80003f5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e24:	00000493          	li	s1,0
    80003e28:	f99ff06f          	j	80003dc0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003e2c:	00003517          	auipc	a0,0x3
    80003e30:	45450513          	addi	a0,a0,1108 # 80007280 <CONSOLE_STATUS+0x270>
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	128080e7          	jalr	296(ra) # 80003f5c <_Z11printStringPKc>
    finishedA = true;
    80003e3c:	00100793          	li	a5,1
    80003e40:	00005717          	auipc	a4,0x5
    80003e44:	24f70da3          	sb	a5,603(a4) # 8000909b <_ZL9finishedA>
}
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	00013903          	ld	s2,0(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret

0000000080003e60 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003e60:	fd010113          	addi	sp,sp,-48
    80003e64:	02113423          	sd	ra,40(sp)
    80003e68:	02813023          	sd	s0,32(sp)
    80003e6c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003e70:	00000613          	li	a2,0
    80003e74:	00000597          	auipc	a1,0x0
    80003e78:	f2058593          	addi	a1,a1,-224 # 80003d94 <_ZL11workerBodyAPv>
    80003e7c:	fd040513          	addi	a0,s0,-48
    80003e80:	ffffd097          	auipc	ra,0xffffd
    80003e84:	47c080e7          	jalr	1148(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003e88:	00003517          	auipc	a0,0x3
    80003e8c:	42850513          	addi	a0,a0,1064 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	0cc080e7          	jalr	204(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003e98:	00000613          	li	a2,0
    80003e9c:	00000597          	auipc	a1,0x0
    80003ea0:	e2458593          	addi	a1,a1,-476 # 80003cc0 <_ZL11workerBodyBPv>
    80003ea4:	fd840513          	addi	a0,s0,-40
    80003ea8:	ffffd097          	auipc	ra,0xffffd
    80003eac:	454080e7          	jalr	1108(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003eb0:	00003517          	auipc	a0,0x3
    80003eb4:	41850513          	addi	a0,a0,1048 # 800072c8 <CONSOLE_STATUS+0x2b8>
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	0a4080e7          	jalr	164(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003ec0:	00000613          	li	a2,0
    80003ec4:	00000597          	auipc	a1,0x0
    80003ec8:	c7c58593          	addi	a1,a1,-900 # 80003b40 <_ZL11workerBodyCPv>
    80003ecc:	fe040513          	addi	a0,s0,-32
    80003ed0:	ffffd097          	auipc	ra,0xffffd
    80003ed4:	42c080e7          	jalr	1068(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003ed8:	00003517          	auipc	a0,0x3
    80003edc:	40850513          	addi	a0,a0,1032 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	07c080e7          	jalr	124(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003ee8:	00000613          	li	a2,0
    80003eec:	00000597          	auipc	a1,0x0
    80003ef0:	b0c58593          	addi	a1,a1,-1268 # 800039f8 <_ZL11workerBodyDPv>
    80003ef4:	fe840513          	addi	a0,s0,-24
    80003ef8:	ffffd097          	auipc	ra,0xffffd
    80003efc:	404080e7          	jalr	1028(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003f00:	00003517          	auipc	a0,0x3
    80003f04:	3f850513          	addi	a0,a0,1016 # 800072f8 <CONSOLE_STATUS+0x2e8>
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	054080e7          	jalr	84(ra) # 80003f5c <_Z11printStringPKc>
    80003f10:	00c0006f          	j	80003f1c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003f14:	ffffd097          	auipc	ra,0xffffd
    80003f18:	4bc080e7          	jalr	1212(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f1c:	00005797          	auipc	a5,0x5
    80003f20:	17f7c783          	lbu	a5,383(a5) # 8000909b <_ZL9finishedA>
    80003f24:	fe0788e3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    80003f28:	00005797          	auipc	a5,0x5
    80003f2c:	1727c783          	lbu	a5,370(a5) # 8000909a <_ZL9finishedB>
    80003f30:	fe0782e3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    80003f34:	00005797          	auipc	a5,0x5
    80003f38:	1657c783          	lbu	a5,357(a5) # 80009099 <_ZL9finishedC>
    80003f3c:	fc078ce3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    80003f40:	00005797          	auipc	a5,0x5
    80003f44:	1587c783          	lbu	a5,344(a5) # 80009098 <_ZL9finishedD>
    80003f48:	fc0786e3          	beqz	a5,80003f14 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003f4c:	02813083          	ld	ra,40(sp)
    80003f50:	02013403          	ld	s0,32(sp)
    80003f54:	03010113          	addi	sp,sp,48
    80003f58:	00008067          	ret

0000000080003f5c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00113c23          	sd	ra,24(sp)
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	00050493          	mv	s1,a0
    LOCK();
    80003f74:	00100613          	li	a2,1
    80003f78:	00000593          	li	a1,0
    80003f7c:	00005517          	auipc	a0,0x5
    80003f80:	12450513          	addi	a0,a0,292 # 800090a0 <lockPrint>
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	2a0080e7          	jalr	672(ra) # 80001224 <copy_and_swap>
    80003f8c:	00050863          	beqz	a0,80003f9c <_Z11printStringPKc+0x40>
    80003f90:	ffffd097          	auipc	ra,0xffffd
    80003f94:	440080e7          	jalr	1088(ra) # 800013d0 <_Z15thread_dispatchv>
    80003f98:	fddff06f          	j	80003f74 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003f9c:	0004c503          	lbu	a0,0(s1)
    80003fa0:	00050a63          	beqz	a0,80003fb4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80003fa4:	ffffd097          	auipc	ra,0xffffd
    80003fa8:	6d8080e7          	jalr	1752(ra) # 8000167c <_Z4putcc>
        string++;
    80003fac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003fb0:	fedff06f          	j	80003f9c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003fb4:	00000613          	li	a2,0
    80003fb8:	00100593          	li	a1,1
    80003fbc:	00005517          	auipc	a0,0x5
    80003fc0:	0e450513          	addi	a0,a0,228 # 800090a0 <lockPrint>
    80003fc4:	ffffd097          	auipc	ra,0xffffd
    80003fc8:	260080e7          	jalr	608(ra) # 80001224 <copy_and_swap>
    80003fcc:	fe0514e3          	bnez	a0,80003fb4 <_Z11printStringPKc+0x58>
}
    80003fd0:	01813083          	ld	ra,24(sp)
    80003fd4:	01013403          	ld	s0,16(sp)
    80003fd8:	00813483          	ld	s1,8(sp)
    80003fdc:	02010113          	addi	sp,sp,32
    80003fe0:	00008067          	ret

0000000080003fe4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003fe4:	fd010113          	addi	sp,sp,-48
    80003fe8:	02113423          	sd	ra,40(sp)
    80003fec:	02813023          	sd	s0,32(sp)
    80003ff0:	00913c23          	sd	s1,24(sp)
    80003ff4:	01213823          	sd	s2,16(sp)
    80003ff8:	01313423          	sd	s3,8(sp)
    80003ffc:	01413023          	sd	s4,0(sp)
    80004000:	03010413          	addi	s0,sp,48
    80004004:	00050993          	mv	s3,a0
    80004008:	00058a13          	mv	s4,a1
    LOCK();
    8000400c:	00100613          	li	a2,1
    80004010:	00000593          	li	a1,0
    80004014:	00005517          	auipc	a0,0x5
    80004018:	08c50513          	addi	a0,a0,140 # 800090a0 <lockPrint>
    8000401c:	ffffd097          	auipc	ra,0xffffd
    80004020:	208080e7          	jalr	520(ra) # 80001224 <copy_and_swap>
    80004024:	00050863          	beqz	a0,80004034 <_Z9getStringPci+0x50>
    80004028:	ffffd097          	auipc	ra,0xffffd
    8000402c:	3a8080e7          	jalr	936(ra) # 800013d0 <_Z15thread_dispatchv>
    80004030:	fddff06f          	j	8000400c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004034:	00000913          	li	s2,0
    80004038:	00090493          	mv	s1,s2
    8000403c:	0019091b          	addiw	s2,s2,1
    80004040:	03495a63          	bge	s2,s4,80004074 <_Z9getStringPci+0x90>
        cc = getc();
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	5ec080e7          	jalr	1516(ra) # 80001630 <_Z4getcv>
        if(cc < 1)
    8000404c:	02050463          	beqz	a0,80004074 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004050:	009984b3          	add	s1,s3,s1
    80004054:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004058:	00a00793          	li	a5,10
    8000405c:	00f50a63          	beq	a0,a5,80004070 <_Z9getStringPci+0x8c>
    80004060:	00d00793          	li	a5,13
    80004064:	fcf51ae3          	bne	a0,a5,80004038 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004068:	00090493          	mv	s1,s2
    8000406c:	0080006f          	j	80004074 <_Z9getStringPci+0x90>
    80004070:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004074:	009984b3          	add	s1,s3,s1
    80004078:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000407c:	00000613          	li	a2,0
    80004080:	00100593          	li	a1,1
    80004084:	00005517          	auipc	a0,0x5
    80004088:	01c50513          	addi	a0,a0,28 # 800090a0 <lockPrint>
    8000408c:	ffffd097          	auipc	ra,0xffffd
    80004090:	198080e7          	jalr	408(ra) # 80001224 <copy_and_swap>
    80004094:	fe0514e3          	bnez	a0,8000407c <_Z9getStringPci+0x98>
    return buf;
}
    80004098:	00098513          	mv	a0,s3
    8000409c:	02813083          	ld	ra,40(sp)
    800040a0:	02013403          	ld	s0,32(sp)
    800040a4:	01813483          	ld	s1,24(sp)
    800040a8:	01013903          	ld	s2,16(sp)
    800040ac:	00813983          	ld	s3,8(sp)
    800040b0:	00013a03          	ld	s4,0(sp)
    800040b4:	03010113          	addi	sp,sp,48
    800040b8:	00008067          	ret

00000000800040bc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800040bc:	ff010113          	addi	sp,sp,-16
    800040c0:	00813423          	sd	s0,8(sp)
    800040c4:	01010413          	addi	s0,sp,16
    800040c8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800040cc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800040d0:	0006c603          	lbu	a2,0(a3)
    800040d4:	fd06071b          	addiw	a4,a2,-48
    800040d8:	0ff77713          	andi	a4,a4,255
    800040dc:	00900793          	li	a5,9
    800040e0:	02e7e063          	bltu	a5,a4,80004100 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800040e4:	0025179b          	slliw	a5,a0,0x2
    800040e8:	00a787bb          	addw	a5,a5,a0
    800040ec:	0017979b          	slliw	a5,a5,0x1
    800040f0:	00168693          	addi	a3,a3,1
    800040f4:	00c787bb          	addw	a5,a5,a2
    800040f8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800040fc:	fd5ff06f          	j	800040d0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004100:	00813403          	ld	s0,8(sp)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret

000000008000410c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000410c:	fc010113          	addi	sp,sp,-64
    80004110:	02113c23          	sd	ra,56(sp)
    80004114:	02813823          	sd	s0,48(sp)
    80004118:	02913423          	sd	s1,40(sp)
    8000411c:	03213023          	sd	s2,32(sp)
    80004120:	01313c23          	sd	s3,24(sp)
    80004124:	04010413          	addi	s0,sp,64
    80004128:	00050493          	mv	s1,a0
    8000412c:	00058913          	mv	s2,a1
    80004130:	00060993          	mv	s3,a2
    LOCK();
    80004134:	00100613          	li	a2,1
    80004138:	00000593          	li	a1,0
    8000413c:	00005517          	auipc	a0,0x5
    80004140:	f6450513          	addi	a0,a0,-156 # 800090a0 <lockPrint>
    80004144:	ffffd097          	auipc	ra,0xffffd
    80004148:	0e0080e7          	jalr	224(ra) # 80001224 <copy_and_swap>
    8000414c:	00050863          	beqz	a0,8000415c <_Z8printIntiii+0x50>
    80004150:	ffffd097          	auipc	ra,0xffffd
    80004154:	280080e7          	jalr	640(ra) # 800013d0 <_Z15thread_dispatchv>
    80004158:	fddff06f          	j	80004134 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000415c:	00098463          	beqz	s3,80004164 <_Z8printIntiii+0x58>
    80004160:	0804c463          	bltz	s1,800041e8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004164:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004168:	00000593          	li	a1,0
    }

    i = 0;
    8000416c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004170:	0009079b          	sext.w	a5,s2
    80004174:	0325773b          	remuw	a4,a0,s2
    80004178:	00048613          	mv	a2,s1
    8000417c:	0014849b          	addiw	s1,s1,1
    80004180:	02071693          	slli	a3,a4,0x20
    80004184:	0206d693          	srli	a3,a3,0x20
    80004188:	00005717          	auipc	a4,0x5
    8000418c:	db870713          	addi	a4,a4,-584 # 80008f40 <digits>
    80004190:	00d70733          	add	a4,a4,a3
    80004194:	00074683          	lbu	a3,0(a4)
    80004198:	fd040713          	addi	a4,s0,-48
    8000419c:	00c70733          	add	a4,a4,a2
    800041a0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800041a4:	0005071b          	sext.w	a4,a0
    800041a8:	0325553b          	divuw	a0,a0,s2
    800041ac:	fcf772e3          	bgeu	a4,a5,80004170 <_Z8printIntiii+0x64>
    if(neg)
    800041b0:	00058c63          	beqz	a1,800041c8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800041b4:	fd040793          	addi	a5,s0,-48
    800041b8:	009784b3          	add	s1,a5,s1
    800041bc:	02d00793          	li	a5,45
    800041c0:	fef48823          	sb	a5,-16(s1)
    800041c4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800041c8:	fff4849b          	addiw	s1,s1,-1
    800041cc:	0204c463          	bltz	s1,800041f4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800041d0:	fd040793          	addi	a5,s0,-48
    800041d4:	009787b3          	add	a5,a5,s1
    800041d8:	ff07c503          	lbu	a0,-16(a5)
    800041dc:	ffffd097          	auipc	ra,0xffffd
    800041e0:	4a0080e7          	jalr	1184(ra) # 8000167c <_Z4putcc>
    800041e4:	fe5ff06f          	j	800041c8 <_Z8printIntiii+0xbc>
        x = -xx;
    800041e8:	4090053b          	negw	a0,s1
        neg = 1;
    800041ec:	00100593          	li	a1,1
        x = -xx;
    800041f0:	f7dff06f          	j	8000416c <_Z8printIntiii+0x60>

    UNLOCK();
    800041f4:	00000613          	li	a2,0
    800041f8:	00100593          	li	a1,1
    800041fc:	00005517          	auipc	a0,0x5
    80004200:	ea450513          	addi	a0,a0,-348 # 800090a0 <lockPrint>
    80004204:	ffffd097          	auipc	ra,0xffffd
    80004208:	020080e7          	jalr	32(ra) # 80001224 <copy_and_swap>
    8000420c:	fe0514e3          	bnez	a0,800041f4 <_Z8printIntiii+0xe8>
    80004210:	03813083          	ld	ra,56(sp)
    80004214:	03013403          	ld	s0,48(sp)
    80004218:	02813483          	ld	s1,40(sp)
    8000421c:	02013903          	ld	s2,32(sp)
    80004220:	01813983          	ld	s3,24(sp)
    80004224:	04010113          	addi	sp,sp,64
    80004228:	00008067          	ret

000000008000422c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00113c23          	sd	ra,24(sp)
    80004234:	00813823          	sd	s0,16(sp)
    80004238:	00913423          	sd	s1,8(sp)
    8000423c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004240:	00003517          	auipc	a0,0x3
    80004244:	0d050513          	addi	a0,a0,208 # 80007310 <CONSOLE_STATUS+0x300>
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	d14080e7          	jalr	-748(ra) # 80003f5c <_Z11printStringPKc>
    int test = getc() - '0';
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	3e0080e7          	jalr	992(ra) # 80001630 <_Z4getcv>
    80004258:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000425c:	ffffd097          	auipc	ra,0xffffd
    80004260:	3d4080e7          	jalr	980(ra) # 80001630 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004264:	00700793          	li	a5,7
    80004268:	0e97e663          	bltu	a5,s1,80004354 <_Z8userMainv+0x128>
    8000426c:	00249493          	slli	s1,s1,0x2
    80004270:	00003717          	auipc	a4,0x3
    80004274:	2f870713          	addi	a4,a4,760 # 80007568 <CONSOLE_STATUS+0x558>
    80004278:	00e484b3          	add	s1,s1,a4
    8000427c:	0004a783          	lw	a5,0(s1)
    80004280:	00e787b3          	add	a5,a5,a4
    80004284:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	bd8080e7          	jalr	-1064(ra) # 80003e60 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004290:	00003517          	auipc	a0,0x3
    80004294:	0a050513          	addi	a0,a0,160 # 80007330 <CONSOLE_STATUS+0x320>
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	cc4080e7          	jalr	-828(ra) # 80003f5c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800042a0:	01813083          	ld	ra,24(sp)
    800042a4:	01013403          	ld	s0,16(sp)
    800042a8:	00813483          	ld	s1,8(sp)
    800042ac:	02010113          	addi	sp,sp,32
    800042b0:	00008067          	ret
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800042b4:	00003517          	auipc	a0,0x3
    800042b8:	0bc50513          	addi	a0,a0,188 # 80007370 <CONSOLE_STATUS+0x360>
    800042bc:	00000097          	auipc	ra,0x0
    800042c0:	ca0080e7          	jalr	-864(ra) # 80003f5c <_Z11printStringPKc>
            break;
    800042c4:	fddff06f          	j	800042a0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	3ec080e7          	jalr	1004(ra) # 800036b4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800042d0:	00003517          	auipc	a0,0x3
    800042d4:	0e050513          	addi	a0,a0,224 # 800073b0 <CONSOLE_STATUS+0x3a0>
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	c84080e7          	jalr	-892(ra) # 80003f5c <_Z11printStringPKc>
            break;
    800042e0:	fc1ff06f          	j	800042a0 <_Z8userMainv+0x74>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800042e4:	00003517          	auipc	a0,0x3
    800042e8:	11c50513          	addi	a0,a0,284 # 80007400 <CONSOLE_STATUS+0x3f0>
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	c70080e7          	jalr	-912(ra) # 80003f5c <_Z11printStringPKc>
            break;
    800042f4:	fadff06f          	j	800042a0 <_Z8userMainv+0x74>
            testSleeping();
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	114080e7          	jalr	276(ra) # 8000440c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004300:	00003517          	auipc	a0,0x3
    80004304:	15850513          	addi	a0,a0,344 # 80007458 <CONSOLE_STATUS+0x448>
    80004308:	00000097          	auipc	ra,0x0
    8000430c:	c54080e7          	jalr	-940(ra) # 80003f5c <_Z11printStringPKc>
            break;
    80004310:	f91ff06f          	j	800042a0 <_Z8userMainv+0x74>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004314:	00003517          	auipc	a0,0x3
    80004318:	17450513          	addi	a0,a0,372 # 80007488 <CONSOLE_STATUS+0x478>
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	c40080e7          	jalr	-960(ra) # 80003f5c <_Z11printStringPKc>
            break;
    80004324:	f7dff06f          	j	800042a0 <_Z8userMainv+0x74>
            System_Mode_test();
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	658080e7          	jalr	1624(ra) # 80004980 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004330:	00003517          	auipc	a0,0x3
    80004334:	19850513          	addi	a0,a0,408 # 800074c8 <CONSOLE_STATUS+0x4b8>
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	c24080e7          	jalr	-988(ra) # 80003f5c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004340:	00003517          	auipc	a0,0x3
    80004344:	1a850513          	addi	a0,a0,424 # 800074e8 <CONSOLE_STATUS+0x4d8>
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	c14080e7          	jalr	-1004(ra) # 80003f5c <_Z11printStringPKc>
            break;
    80004350:	f51ff06f          	j	800042a0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004354:	00003517          	auipc	a0,0x3
    80004358:	1ec50513          	addi	a0,a0,492 # 80007540 <CONSOLE_STATUS+0x530>
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	c00080e7          	jalr	-1024(ra) # 80003f5c <_Z11printStringPKc>
    80004364:	f3dff06f          	j	800042a0 <_Z8userMainv+0x74>

0000000080004368 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80004368:	fe010113          	addi	sp,sp,-32
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	01213023          	sd	s2,0(sp)
    8000437c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80004380:	00053903          	ld	s2,0(a0)
    int i = 6;
    80004384:	00600493          	li	s1,6
    while (--i > 0) {
    80004388:	fff4849b          	addiw	s1,s1,-1
    8000438c:	04905463          	blez	s1,800043d4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80004390:	00003517          	auipc	a0,0x3
    80004394:	1f850513          	addi	a0,a0,504 # 80007588 <CONSOLE_STATUS+0x578>
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	bc4080e7          	jalr	-1084(ra) # 80003f5c <_Z11printStringPKc>
        printInt(sleep_time);
    800043a0:	00000613          	li	a2,0
    800043a4:	00a00593          	li	a1,10
    800043a8:	0009051b          	sext.w	a0,s2
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	d60080e7          	jalr	-672(ra) # 8000410c <_Z8printIntiii>
        printString(" !\n");
    800043b4:	00003517          	auipc	a0,0x3
    800043b8:	1dc50513          	addi	a0,a0,476 # 80007590 <CONSOLE_STATUS+0x580>
    800043bc:	00000097          	auipc	ra,0x0
    800043c0:	ba0080e7          	jalr	-1120(ra) # 80003f5c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800043c4:	00090513          	mv	a0,s2
    800043c8:	ffffd097          	auipc	ra,0xffffd
    800043cc:	21c080e7          	jalr	540(ra) # 800015e4 <_Z10time_sleepm>
    while (--i > 0) {
    800043d0:	fb9ff06f          	j	80004388 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800043d4:	00a00793          	li	a5,10
    800043d8:	02f95933          	divu	s2,s2,a5
    800043dc:	fff90913          	addi	s2,s2,-1
    800043e0:	00005797          	auipc	a5,0x5
    800043e4:	cc878793          	addi	a5,a5,-824 # 800090a8 <_ZL8finished>
    800043e8:	01278933          	add	s2,a5,s2
    800043ec:	00100793          	li	a5,1
    800043f0:	00f90023          	sb	a5,0(s2)
}
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	00013903          	ld	s2,0(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00008067          	ret

000000008000440c <_Z12testSleepingv>:

void testSleeping() {
    8000440c:	fc010113          	addi	sp,sp,-64
    80004410:	02113c23          	sd	ra,56(sp)
    80004414:	02813823          	sd	s0,48(sp)
    80004418:	02913423          	sd	s1,40(sp)
    8000441c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80004420:	00a00793          	li	a5,10
    80004424:	fcf43823          	sd	a5,-48(s0)
    80004428:	01400793          	li	a5,20
    8000442c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80004430:	00000493          	li	s1,0
    80004434:	02c0006f          	j	80004460 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80004438:	00349793          	slli	a5,s1,0x3
    8000443c:	fd040613          	addi	a2,s0,-48
    80004440:	00f60633          	add	a2,a2,a5
    80004444:	00000597          	auipc	a1,0x0
    80004448:	f2458593          	addi	a1,a1,-220 # 80004368 <_ZL9sleepyRunPv>
    8000444c:	fc040513          	addi	a0,s0,-64
    80004450:	00f50533          	add	a0,a0,a5
    80004454:	ffffd097          	auipc	ra,0xffffd
    80004458:	ea8080e7          	jalr	-344(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000445c:	0014849b          	addiw	s1,s1,1
    80004460:	00100793          	li	a5,1
    80004464:	fc97dae3          	bge	a5,s1,80004438 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80004468:	00005797          	auipc	a5,0x5
    8000446c:	c407c783          	lbu	a5,-960(a5) # 800090a8 <_ZL8finished>
    80004470:	fe078ce3          	beqz	a5,80004468 <_Z12testSleepingv+0x5c>
    80004474:	00005797          	auipc	a5,0x5
    80004478:	c357c783          	lbu	a5,-971(a5) # 800090a9 <_ZL8finished+0x1>
    8000447c:	fe0786e3          	beqz	a5,80004468 <_Z12testSleepingv+0x5c>
}
    80004480:	03813083          	ld	ra,56(sp)
    80004484:	03013403          	ld	s0,48(sp)
    80004488:	02813483          	ld	s1,40(sp)
    8000448c:	04010113          	addi	sp,sp,64
    80004490:	00008067          	ret

0000000080004494 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004494:	fe010113          	addi	sp,sp,-32
    80004498:	00113c23          	sd	ra,24(sp)
    8000449c:	00813823          	sd	s0,16(sp)
    800044a0:	00913423          	sd	s1,8(sp)
    800044a4:	01213023          	sd	s2,0(sp)
    800044a8:	02010413          	addi	s0,sp,32
    800044ac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800044b0:	00100793          	li	a5,1
    800044b4:	02a7f863          	bgeu	a5,a0,800044e4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800044b8:	00a00793          	li	a5,10
    800044bc:	02f577b3          	remu	a5,a0,a5
    800044c0:	02078e63          	beqz	a5,800044fc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044c4:	fff48513          	addi	a0,s1,-1
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	fcc080e7          	jalr	-52(ra) # 80004494 <_ZL9fibonaccim>
    800044d0:	00050913          	mv	s2,a0
    800044d4:	ffe48513          	addi	a0,s1,-2
    800044d8:	00000097          	auipc	ra,0x0
    800044dc:	fbc080e7          	jalr	-68(ra) # 80004494 <_ZL9fibonaccim>
    800044e0:	00a90533          	add	a0,s2,a0
}
    800044e4:	01813083          	ld	ra,24(sp)
    800044e8:	01013403          	ld	s0,16(sp)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	00013903          	ld	s2,0(sp)
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	ed4080e7          	jalr	-300(ra) # 800013d0 <_Z15thread_dispatchv>
    80004504:	fc1ff06f          	j	800044c4 <_ZL9fibonaccim+0x30>

0000000080004508 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004508:	fe010113          	addi	sp,sp,-32
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	01213023          	sd	s2,0(sp)
    8000451c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004520:	00a00493          	li	s1,10
    80004524:	0400006f          	j	80004564 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004528:	00003517          	auipc	a0,0x3
    8000452c:	cf050513          	addi	a0,a0,-784 # 80007218 <CONSOLE_STATUS+0x208>
    80004530:	00000097          	auipc	ra,0x0
    80004534:	a2c080e7          	jalr	-1492(ra) # 80003f5c <_Z11printStringPKc>
    80004538:	00000613          	li	a2,0
    8000453c:	00a00593          	li	a1,10
    80004540:	00048513          	mv	a0,s1
    80004544:	00000097          	auipc	ra,0x0
    80004548:	bc8080e7          	jalr	-1080(ra) # 8000410c <_Z8printIntiii>
    8000454c:	00003517          	auipc	a0,0x3
    80004550:	f0450513          	addi	a0,a0,-252 # 80007450 <CONSOLE_STATUS+0x440>
    80004554:	00000097          	auipc	ra,0x0
    80004558:	a08080e7          	jalr	-1528(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000455c:	0014849b          	addiw	s1,s1,1
    80004560:	0ff4f493          	andi	s1,s1,255
    80004564:	00c00793          	li	a5,12
    80004568:	fc97f0e3          	bgeu	a5,s1,80004528 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000456c:	00003517          	auipc	a0,0x3
    80004570:	cb450513          	addi	a0,a0,-844 # 80007220 <CONSOLE_STATUS+0x210>
    80004574:	00000097          	auipc	ra,0x0
    80004578:	9e8080e7          	jalr	-1560(ra) # 80003f5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000457c:	00500313          	li	t1,5
    thread_dispatch();
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	e50080e7          	jalr	-432(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004588:	01000513          	li	a0,16
    8000458c:	00000097          	auipc	ra,0x0
    80004590:	f08080e7          	jalr	-248(ra) # 80004494 <_ZL9fibonaccim>
    80004594:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004598:	00003517          	auipc	a0,0x3
    8000459c:	c9850513          	addi	a0,a0,-872 # 80007230 <CONSOLE_STATUS+0x220>
    800045a0:	00000097          	auipc	ra,0x0
    800045a4:	9bc080e7          	jalr	-1604(ra) # 80003f5c <_Z11printStringPKc>
    800045a8:	00000613          	li	a2,0
    800045ac:	00a00593          	li	a1,10
    800045b0:	0009051b          	sext.w	a0,s2
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	b58080e7          	jalr	-1192(ra) # 8000410c <_Z8printIntiii>
    800045bc:	00003517          	auipc	a0,0x3
    800045c0:	e9450513          	addi	a0,a0,-364 # 80007450 <CONSOLE_STATUS+0x440>
    800045c4:	00000097          	auipc	ra,0x0
    800045c8:	998080e7          	jalr	-1640(ra) # 80003f5c <_Z11printStringPKc>
    800045cc:	0400006f          	j	8000460c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045d0:	00003517          	auipc	a0,0x3
    800045d4:	c4850513          	addi	a0,a0,-952 # 80007218 <CONSOLE_STATUS+0x208>
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	984080e7          	jalr	-1660(ra) # 80003f5c <_Z11printStringPKc>
    800045e0:	00000613          	li	a2,0
    800045e4:	00a00593          	li	a1,10
    800045e8:	00048513          	mv	a0,s1
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	b20080e7          	jalr	-1248(ra) # 8000410c <_Z8printIntiii>
    800045f4:	00003517          	auipc	a0,0x3
    800045f8:	e5c50513          	addi	a0,a0,-420 # 80007450 <CONSOLE_STATUS+0x440>
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	960080e7          	jalr	-1696(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004604:	0014849b          	addiw	s1,s1,1
    80004608:	0ff4f493          	andi	s1,s1,255
    8000460c:	00f00793          	li	a5,15
    80004610:	fc97f0e3          	bgeu	a5,s1,800045d0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004614:	00003517          	auipc	a0,0x3
    80004618:	c2c50513          	addi	a0,a0,-980 # 80007240 <CONSOLE_STATUS+0x230>
    8000461c:	00000097          	auipc	ra,0x0
    80004620:	940080e7          	jalr	-1728(ra) # 80003f5c <_Z11printStringPKc>
    finishedD = true;
    80004624:	00100793          	li	a5,1
    80004628:	00005717          	auipc	a4,0x5
    8000462c:	a8f70123          	sb	a5,-1406(a4) # 800090aa <_ZL9finishedD>
    thread_dispatch();
    80004630:	ffffd097          	auipc	ra,0xffffd
    80004634:	da0080e7          	jalr	-608(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	00013903          	ld	s2,0(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret

0000000080004650 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004650:	fe010113          	addi	sp,sp,-32
    80004654:	00113c23          	sd	ra,24(sp)
    80004658:	00813823          	sd	s0,16(sp)
    8000465c:	00913423          	sd	s1,8(sp)
    80004660:	01213023          	sd	s2,0(sp)
    80004664:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004668:	00000493          	li	s1,0
    8000466c:	0400006f          	j	800046ac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004670:	00003517          	auipc	a0,0x3
    80004674:	be050513          	addi	a0,a0,-1056 # 80007250 <CONSOLE_STATUS+0x240>
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	8e4080e7          	jalr	-1820(ra) # 80003f5c <_Z11printStringPKc>
    80004680:	00000613          	li	a2,0
    80004684:	00a00593          	li	a1,10
    80004688:	00048513          	mv	a0,s1
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	a80080e7          	jalr	-1408(ra) # 8000410c <_Z8printIntiii>
    80004694:	00003517          	auipc	a0,0x3
    80004698:	dbc50513          	addi	a0,a0,-580 # 80007450 <CONSOLE_STATUS+0x440>
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	8c0080e7          	jalr	-1856(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046a4:	0014849b          	addiw	s1,s1,1
    800046a8:	0ff4f493          	andi	s1,s1,255
    800046ac:	00200793          	li	a5,2
    800046b0:	fc97f0e3          	bgeu	a5,s1,80004670 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800046b4:	00003517          	auipc	a0,0x3
    800046b8:	ba450513          	addi	a0,a0,-1116 # 80007258 <CONSOLE_STATUS+0x248>
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	8a0080e7          	jalr	-1888(ra) # 80003f5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800046c4:	00700313          	li	t1,7
    thread_dispatch();
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	d08080e7          	jalr	-760(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800046d0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800046d4:	00003517          	auipc	a0,0x3
    800046d8:	b9450513          	addi	a0,a0,-1132 # 80007268 <CONSOLE_STATUS+0x258>
    800046dc:	00000097          	auipc	ra,0x0
    800046e0:	880080e7          	jalr	-1920(ra) # 80003f5c <_Z11printStringPKc>
    800046e4:	00000613          	li	a2,0
    800046e8:	00a00593          	li	a1,10
    800046ec:	0009051b          	sext.w	a0,s2
    800046f0:	00000097          	auipc	ra,0x0
    800046f4:	a1c080e7          	jalr	-1508(ra) # 8000410c <_Z8printIntiii>
    800046f8:	00003517          	auipc	a0,0x3
    800046fc:	d5850513          	addi	a0,a0,-680 # 80007450 <CONSOLE_STATUS+0x440>
    80004700:	00000097          	auipc	ra,0x0
    80004704:	85c080e7          	jalr	-1956(ra) # 80003f5c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004708:	00c00513          	li	a0,12
    8000470c:	00000097          	auipc	ra,0x0
    80004710:	d88080e7          	jalr	-632(ra) # 80004494 <_ZL9fibonaccim>
    80004714:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004718:	00003517          	auipc	a0,0x3
    8000471c:	b5850513          	addi	a0,a0,-1192 # 80007270 <CONSOLE_STATUS+0x260>
    80004720:	00000097          	auipc	ra,0x0
    80004724:	83c080e7          	jalr	-1988(ra) # 80003f5c <_Z11printStringPKc>
    80004728:	00000613          	li	a2,0
    8000472c:	00a00593          	li	a1,10
    80004730:	0009051b          	sext.w	a0,s2
    80004734:	00000097          	auipc	ra,0x0
    80004738:	9d8080e7          	jalr	-1576(ra) # 8000410c <_Z8printIntiii>
    8000473c:	00003517          	auipc	a0,0x3
    80004740:	d1450513          	addi	a0,a0,-748 # 80007450 <CONSOLE_STATUS+0x440>
    80004744:	00000097          	auipc	ra,0x0
    80004748:	818080e7          	jalr	-2024(ra) # 80003f5c <_Z11printStringPKc>
    8000474c:	0400006f          	j	8000478c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004750:	00003517          	auipc	a0,0x3
    80004754:	b0050513          	addi	a0,a0,-1280 # 80007250 <CONSOLE_STATUS+0x240>
    80004758:	00000097          	auipc	ra,0x0
    8000475c:	804080e7          	jalr	-2044(ra) # 80003f5c <_Z11printStringPKc>
    80004760:	00000613          	li	a2,0
    80004764:	00a00593          	li	a1,10
    80004768:	00048513          	mv	a0,s1
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	9a0080e7          	jalr	-1632(ra) # 8000410c <_Z8printIntiii>
    80004774:	00003517          	auipc	a0,0x3
    80004778:	cdc50513          	addi	a0,a0,-804 # 80007450 <CONSOLE_STATUS+0x440>
    8000477c:	fffff097          	auipc	ra,0xfffff
    80004780:	7e0080e7          	jalr	2016(ra) # 80003f5c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004784:	0014849b          	addiw	s1,s1,1
    80004788:	0ff4f493          	andi	s1,s1,255
    8000478c:	00500793          	li	a5,5
    80004790:	fc97f0e3          	bgeu	a5,s1,80004750 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004794:	00003517          	auipc	a0,0x3
    80004798:	aec50513          	addi	a0,a0,-1300 # 80007280 <CONSOLE_STATUS+0x270>
    8000479c:	fffff097          	auipc	ra,0xfffff
    800047a0:	7c0080e7          	jalr	1984(ra) # 80003f5c <_Z11printStringPKc>
    finishedC = true;
    800047a4:	00100793          	li	a5,1
    800047a8:	00005717          	auipc	a4,0x5
    800047ac:	90f701a3          	sb	a5,-1789(a4) # 800090ab <_ZL9finishedC>
    thread_dispatch();
    800047b0:	ffffd097          	auipc	ra,0xffffd
    800047b4:	c20080e7          	jalr	-992(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800047b8:	01813083          	ld	ra,24(sp)
    800047bc:	01013403          	ld	s0,16(sp)
    800047c0:	00813483          	ld	s1,8(sp)
    800047c4:	00013903          	ld	s2,0(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret

00000000800047d0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00813823          	sd	s0,16(sp)
    800047dc:	00913423          	sd	s1,8(sp)
    800047e0:	01213023          	sd	s2,0(sp)
    800047e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800047e8:	00000913          	li	s2,0
    800047ec:	0400006f          	j	8000482c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800047f0:	ffffd097          	auipc	ra,0xffffd
    800047f4:	be0080e7          	jalr	-1056(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047f8:	00148493          	addi	s1,s1,1
    800047fc:	000027b7          	lui	a5,0x2
    80004800:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004804:	0097ee63          	bltu	a5,s1,80004820 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004808:	00000713          	li	a4,0
    8000480c:	000077b7          	lui	a5,0x7
    80004810:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004814:	fce7eee3          	bltu	a5,a4,800047f0 <_ZL11workerBodyBPv+0x20>
    80004818:	00170713          	addi	a4,a4,1
    8000481c:	ff1ff06f          	j	8000480c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80004820:	00a00793          	li	a5,10
    80004824:	04f90663          	beq	s2,a5,80004870 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004828:	00190913          	addi	s2,s2,1
    8000482c:	00f00793          	li	a5,15
    80004830:	0527e463          	bltu	a5,s2,80004878 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004834:	00003517          	auipc	a0,0x3
    80004838:	a5c50513          	addi	a0,a0,-1444 # 80007290 <CONSOLE_STATUS+0x280>
    8000483c:	fffff097          	auipc	ra,0xfffff
    80004840:	720080e7          	jalr	1824(ra) # 80003f5c <_Z11printStringPKc>
    80004844:	00000613          	li	a2,0
    80004848:	00a00593          	li	a1,10
    8000484c:	0009051b          	sext.w	a0,s2
    80004850:	00000097          	auipc	ra,0x0
    80004854:	8bc080e7          	jalr	-1860(ra) # 8000410c <_Z8printIntiii>
    80004858:	00003517          	auipc	a0,0x3
    8000485c:	bf850513          	addi	a0,a0,-1032 # 80007450 <CONSOLE_STATUS+0x440>
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	6fc080e7          	jalr	1788(ra) # 80003f5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004868:	00000493          	li	s1,0
    8000486c:	f91ff06f          	j	800047fc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80004870:	14102ff3          	csrr	t6,sepc
    80004874:	fb5ff06f          	j	80004828 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80004878:	00003517          	auipc	a0,0x3
    8000487c:	a2050513          	addi	a0,a0,-1504 # 80007298 <CONSOLE_STATUS+0x288>
    80004880:	fffff097          	auipc	ra,0xfffff
    80004884:	6dc080e7          	jalr	1756(ra) # 80003f5c <_Z11printStringPKc>
    finishedB = true;
    80004888:	00100793          	li	a5,1
    8000488c:	00005717          	auipc	a4,0x5
    80004890:	82f70023          	sb	a5,-2016(a4) # 800090ac <_ZL9finishedB>
    thread_dispatch();
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	b3c080e7          	jalr	-1220(ra) # 800013d0 <_Z15thread_dispatchv>
}
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	00813483          	ld	s1,8(sp)
    800048a8:	00013903          	ld	s2,0(sp)
    800048ac:	02010113          	addi	sp,sp,32
    800048b0:	00008067          	ret

00000000800048b4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800048b4:	fe010113          	addi	sp,sp,-32
    800048b8:	00113c23          	sd	ra,24(sp)
    800048bc:	00813823          	sd	s0,16(sp)
    800048c0:	00913423          	sd	s1,8(sp)
    800048c4:	01213023          	sd	s2,0(sp)
    800048c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800048cc:	00000913          	li	s2,0
    800048d0:	0380006f          	j	80004908 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800048d4:	ffffd097          	auipc	ra,0xffffd
    800048d8:	afc080e7          	jalr	-1284(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800048dc:	00148493          	addi	s1,s1,1
    800048e0:	000027b7          	lui	a5,0x2
    800048e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800048e8:	0097ee63          	bltu	a5,s1,80004904 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800048ec:	00000713          	li	a4,0
    800048f0:	000077b7          	lui	a5,0x7
    800048f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800048f8:	fce7eee3          	bltu	a5,a4,800048d4 <_ZL11workerBodyAPv+0x20>
    800048fc:	00170713          	addi	a4,a4,1
    80004900:	ff1ff06f          	j	800048f0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004904:	00190913          	addi	s2,s2,1
    80004908:	00900793          	li	a5,9
    8000490c:	0527e063          	bltu	a5,s2,8000494c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004910:	00003517          	auipc	a0,0x3
    80004914:	99850513          	addi	a0,a0,-1640 # 800072a8 <CONSOLE_STATUS+0x298>
    80004918:	fffff097          	auipc	ra,0xfffff
    8000491c:	644080e7          	jalr	1604(ra) # 80003f5c <_Z11printStringPKc>
    80004920:	00000613          	li	a2,0
    80004924:	00a00593          	li	a1,10
    80004928:	0009051b          	sext.w	a0,s2
    8000492c:	fffff097          	auipc	ra,0xfffff
    80004930:	7e0080e7          	jalr	2016(ra) # 8000410c <_Z8printIntiii>
    80004934:	00003517          	auipc	a0,0x3
    80004938:	b1c50513          	addi	a0,a0,-1252 # 80007450 <CONSOLE_STATUS+0x440>
    8000493c:	fffff097          	auipc	ra,0xfffff
    80004940:	620080e7          	jalr	1568(ra) # 80003f5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004944:	00000493          	li	s1,0
    80004948:	f99ff06f          	j	800048e0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000494c:	00003517          	auipc	a0,0x3
    80004950:	93450513          	addi	a0,a0,-1740 # 80007280 <CONSOLE_STATUS+0x270>
    80004954:	fffff097          	auipc	ra,0xfffff
    80004958:	608080e7          	jalr	1544(ra) # 80003f5c <_Z11printStringPKc>
    finishedA = true;
    8000495c:	00100793          	li	a5,1
    80004960:	00004717          	auipc	a4,0x4
    80004964:	74f706a3          	sb	a5,1869(a4) # 800090ad <_ZL9finishedA>
}
    80004968:	01813083          	ld	ra,24(sp)
    8000496c:	01013403          	ld	s0,16(sp)
    80004970:	00813483          	ld	s1,8(sp)
    80004974:	00013903          	ld	s2,0(sp)
    80004978:	02010113          	addi	sp,sp,32
    8000497c:	00008067          	ret

0000000080004980 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004980:	fd010113          	addi	sp,sp,-48
    80004984:	02113423          	sd	ra,40(sp)
    80004988:	02813023          	sd	s0,32(sp)
    8000498c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004990:	00000613          	li	a2,0
    80004994:	00000597          	auipc	a1,0x0
    80004998:	f2058593          	addi	a1,a1,-224 # 800048b4 <_ZL11workerBodyAPv>
    8000499c:	fd040513          	addi	a0,s0,-48
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	95c080e7          	jalr	-1700(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049a8:	00003517          	auipc	a0,0x3
    800049ac:	90850513          	addi	a0,a0,-1784 # 800072b0 <CONSOLE_STATUS+0x2a0>
    800049b0:	fffff097          	auipc	ra,0xfffff
    800049b4:	5ac080e7          	jalr	1452(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049b8:	00000613          	li	a2,0
    800049bc:	00000597          	auipc	a1,0x0
    800049c0:	e1458593          	addi	a1,a1,-492 # 800047d0 <_ZL11workerBodyBPv>
    800049c4:	fd840513          	addi	a0,s0,-40
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	934080e7          	jalr	-1740(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049d0:	00003517          	auipc	a0,0x3
    800049d4:	8f850513          	addi	a0,a0,-1800 # 800072c8 <CONSOLE_STATUS+0x2b8>
    800049d8:	fffff097          	auipc	ra,0xfffff
    800049dc:	584080e7          	jalr	1412(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049e0:	00000613          	li	a2,0
    800049e4:	00000597          	auipc	a1,0x0
    800049e8:	c6c58593          	addi	a1,a1,-916 # 80004650 <_ZL11workerBodyCPv>
    800049ec:	fe040513          	addi	a0,s0,-32
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	90c080e7          	jalr	-1780(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800049f8:	00003517          	auipc	a0,0x3
    800049fc:	8e850513          	addi	a0,a0,-1816 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80004a00:	fffff097          	auipc	ra,0xfffff
    80004a04:	55c080e7          	jalr	1372(ra) # 80003f5c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a08:	00000613          	li	a2,0
    80004a0c:	00000597          	auipc	a1,0x0
    80004a10:	afc58593          	addi	a1,a1,-1284 # 80004508 <_ZL11workerBodyDPv>
    80004a14:	fe840513          	addi	a0,s0,-24
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	8e4080e7          	jalr	-1820(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a20:	00003517          	auipc	a0,0x3
    80004a24:	8d850513          	addi	a0,a0,-1832 # 800072f8 <CONSOLE_STATUS+0x2e8>
    80004a28:	fffff097          	auipc	ra,0xfffff
    80004a2c:	534080e7          	jalr	1332(ra) # 80003f5c <_Z11printStringPKc>
    80004a30:	00c0006f          	j	80004a3c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	99c080e7          	jalr	-1636(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a3c:	00004797          	auipc	a5,0x4
    80004a40:	6717c783          	lbu	a5,1649(a5) # 800090ad <_ZL9finishedA>
    80004a44:	fe0788e3          	beqz	a5,80004a34 <_Z16System_Mode_testv+0xb4>
    80004a48:	00004797          	auipc	a5,0x4
    80004a4c:	6647c783          	lbu	a5,1636(a5) # 800090ac <_ZL9finishedB>
    80004a50:	fe0782e3          	beqz	a5,80004a34 <_Z16System_Mode_testv+0xb4>
    80004a54:	00004797          	auipc	a5,0x4
    80004a58:	6577c783          	lbu	a5,1623(a5) # 800090ab <_ZL9finishedC>
    80004a5c:	fc078ce3          	beqz	a5,80004a34 <_Z16System_Mode_testv+0xb4>
    80004a60:	00004797          	auipc	a5,0x4
    80004a64:	64a7c783          	lbu	a5,1610(a5) # 800090aa <_ZL9finishedD>
    80004a68:	fc0786e3          	beqz	a5,80004a34 <_Z16System_Mode_testv+0xb4>
    }

}
    80004a6c:	02813083          	ld	ra,40(sp)
    80004a70:	02013403          	ld	s0,32(sp)
    80004a74:	03010113          	addi	sp,sp,48
    80004a78:	00008067          	ret

0000000080004a7c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004a7c:	fe010113          	addi	sp,sp,-32
    80004a80:	00113c23          	sd	ra,24(sp)
    80004a84:	00813823          	sd	s0,16(sp)
    80004a88:	00913423          	sd	s1,8(sp)
    80004a8c:	01213023          	sd	s2,0(sp)
    80004a90:	02010413          	addi	s0,sp,32
    80004a94:	00050493          	mv	s1,a0
    80004a98:	00058913          	mv	s2,a1
    80004a9c:	0015879b          	addiw	a5,a1,1
    80004aa0:	0007851b          	sext.w	a0,a5
    80004aa4:	00f4a023          	sw	a5,0(s1)
    80004aa8:	0004a823          	sw	zero,16(s1)
    80004aac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004ab0:	00251513          	slli	a0,a0,0x2
    80004ab4:	ffffc097          	auipc	ra,0xffffc
    80004ab8:	7ac080e7          	jalr	1964(ra) # 80001260 <_Z9mem_allocm>
    80004abc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004ac0:	00000593          	li	a1,0
    80004ac4:	02048513          	addi	a0,s1,32
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	944080e7          	jalr	-1724(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004ad0:	00090593          	mv	a1,s2
    80004ad4:	01848513          	addi	a0,s1,24
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	934080e7          	jalr	-1740(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004ae0:	00100593          	li	a1,1
    80004ae4:	02848513          	addi	a0,s1,40
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	924080e7          	jalr	-1756(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004af0:	00100593          	li	a1,1
    80004af4:	03048513          	addi	a0,s1,48
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	914080e7          	jalr	-1772(ra) # 8000140c <_Z8sem_openPP3Semj>
}
    80004b00:	01813083          	ld	ra,24(sp)
    80004b04:	01013403          	ld	s0,16(sp)
    80004b08:	00813483          	ld	s1,8(sp)
    80004b0c:	00013903          	ld	s2,0(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret

0000000080004b18 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004b18:	fe010113          	addi	sp,sp,-32
    80004b1c:	00113c23          	sd	ra,24(sp)
    80004b20:	00813823          	sd	s0,16(sp)
    80004b24:	00913423          	sd	s1,8(sp)
    80004b28:	01213023          	sd	s2,0(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00050493          	mv	s1,a0
    80004b34:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004b38:	01853503          	ld	a0,24(a0)
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	978080e7          	jalr	-1672(ra) # 800014b4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004b44:	0304b503          	ld	a0,48(s1)
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	96c080e7          	jalr	-1684(ra) # 800014b4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004b50:	0084b783          	ld	a5,8(s1)
    80004b54:	0144a703          	lw	a4,20(s1)
    80004b58:	00271713          	slli	a4,a4,0x2
    80004b5c:	00e787b3          	add	a5,a5,a4
    80004b60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004b64:	0144a783          	lw	a5,20(s1)
    80004b68:	0017879b          	addiw	a5,a5,1
    80004b6c:	0004a703          	lw	a4,0(s1)
    80004b70:	02e7e7bb          	remw	a5,a5,a4
    80004b74:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004b78:	0304b503          	ld	a0,48(s1)
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	a1c080e7          	jalr	-1508(ra) # 80001598 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004b84:	0204b503          	ld	a0,32(s1)
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	a10080e7          	jalr	-1520(ra) # 80001598 <_Z10sem_signalP3Sem>

}
    80004b90:	01813083          	ld	ra,24(sp)
    80004b94:	01013403          	ld	s0,16(sp)
    80004b98:	00813483          	ld	s1,8(sp)
    80004b9c:	00013903          	ld	s2,0(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret

0000000080004ba8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004ba8:	fe010113          	addi	sp,sp,-32
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00913423          	sd	s1,8(sp)
    80004bb8:	01213023          	sd	s2,0(sp)
    80004bbc:	02010413          	addi	s0,sp,32
    80004bc0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004bc4:	02053503          	ld	a0,32(a0)
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	8ec080e7          	jalr	-1812(ra) # 800014b4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004bd0:	0284b503          	ld	a0,40(s1)
    80004bd4:	ffffd097          	auipc	ra,0xffffd
    80004bd8:	8e0080e7          	jalr	-1824(ra) # 800014b4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004bdc:	0084b703          	ld	a4,8(s1)
    80004be0:	0104a783          	lw	a5,16(s1)
    80004be4:	00279693          	slli	a3,a5,0x2
    80004be8:	00d70733          	add	a4,a4,a3
    80004bec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004bf0:	0017879b          	addiw	a5,a5,1
    80004bf4:	0004a703          	lw	a4,0(s1)
    80004bf8:	02e7e7bb          	remw	a5,a5,a4
    80004bfc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004c00:	0284b503          	ld	a0,40(s1)
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	994080e7          	jalr	-1644(ra) # 80001598 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004c0c:	0184b503          	ld	a0,24(s1)
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	988080e7          	jalr	-1656(ra) # 80001598 <_Z10sem_signalP3Sem>

    return ret;
}
    80004c18:	00090513          	mv	a0,s2
    80004c1c:	01813083          	ld	ra,24(sp)
    80004c20:	01013403          	ld	s0,16(sp)
    80004c24:	00813483          	ld	s1,8(sp)
    80004c28:	00013903          	ld	s2,0(sp)
    80004c2c:	02010113          	addi	sp,sp,32
    80004c30:	00008067          	ret

0000000080004c34 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004c34:	fe010113          	addi	sp,sp,-32
    80004c38:	00113c23          	sd	ra,24(sp)
    80004c3c:	00813823          	sd	s0,16(sp)
    80004c40:	00913423          	sd	s1,8(sp)
    80004c44:	01213023          	sd	s2,0(sp)
    80004c48:	02010413          	addi	s0,sp,32
    80004c4c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004c50:	02853503          	ld	a0,40(a0)
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	860080e7          	jalr	-1952(ra) # 800014b4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004c5c:	0304b503          	ld	a0,48(s1)
    80004c60:	ffffd097          	auipc	ra,0xffffd
    80004c64:	854080e7          	jalr	-1964(ra) # 800014b4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004c68:	0144a783          	lw	a5,20(s1)
    80004c6c:	0104a903          	lw	s2,16(s1)
    80004c70:	0327ce63          	blt	a5,s2,80004cac <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004c74:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004c78:	0304b503          	ld	a0,48(s1)
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	91c080e7          	jalr	-1764(ra) # 80001598 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004c84:	0284b503          	ld	a0,40(s1)
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	910080e7          	jalr	-1776(ra) # 80001598 <_Z10sem_signalP3Sem>

    return ret;
}
    80004c90:	00090513          	mv	a0,s2
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	00013903          	ld	s2,0(sp)
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	00008067          	ret
        ret = cap - head + tail;
    80004cac:	0004a703          	lw	a4,0(s1)
    80004cb0:	4127093b          	subw	s2,a4,s2
    80004cb4:	00f9093b          	addw	s2,s2,a5
    80004cb8:	fc1ff06f          	j	80004c78 <_ZN6Buffer6getCntEv+0x44>

0000000080004cbc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004cbc:	fe010113          	addi	sp,sp,-32
    80004cc0:	00113c23          	sd	ra,24(sp)
    80004cc4:	00813823          	sd	s0,16(sp)
    80004cc8:	00913423          	sd	s1,8(sp)
    80004ccc:	02010413          	addi	s0,sp,32
    80004cd0:	00050493          	mv	s1,a0
    putc('\n');
    80004cd4:	00a00513          	li	a0,10
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	9a4080e7          	jalr	-1628(ra) # 8000167c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004ce0:	00003517          	auipc	a0,0x3
    80004ce4:	8b850513          	addi	a0,a0,-1864 # 80007598 <CONSOLE_STATUS+0x588>
    80004ce8:	fffff097          	auipc	ra,0xfffff
    80004cec:	274080e7          	jalr	628(ra) # 80003f5c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004cf0:	00048513          	mv	a0,s1
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	f40080e7          	jalr	-192(ra) # 80004c34 <_ZN6Buffer6getCntEv>
    80004cfc:	02a05c63          	blez	a0,80004d34 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004d00:	0084b783          	ld	a5,8(s1)
    80004d04:	0104a703          	lw	a4,16(s1)
    80004d08:	00271713          	slli	a4,a4,0x2
    80004d0c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004d10:	0007c503          	lbu	a0,0(a5)
    80004d14:	ffffd097          	auipc	ra,0xffffd
    80004d18:	968080e7          	jalr	-1688(ra) # 8000167c <_Z4putcc>
        head = (head + 1) % cap;
    80004d1c:	0104a783          	lw	a5,16(s1)
    80004d20:	0017879b          	addiw	a5,a5,1
    80004d24:	0004a703          	lw	a4,0(s1)
    80004d28:	02e7e7bb          	remw	a5,a5,a4
    80004d2c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004d30:	fc1ff06f          	j	80004cf0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004d34:	02100513          	li	a0,33
    80004d38:	ffffd097          	auipc	ra,0xffffd
    80004d3c:	944080e7          	jalr	-1724(ra) # 8000167c <_Z4putcc>
    putc('\n');
    80004d40:	00a00513          	li	a0,10
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	938080e7          	jalr	-1736(ra) # 8000167c <_Z4putcc>
    mem_free(buffer);
    80004d4c:	0084b503          	ld	a0,8(s1)
    80004d50:	ffffc097          	auipc	ra,0xffffc
    80004d54:	560080e7          	jalr	1376(ra) # 800012b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004d58:	0204b503          	ld	a0,32(s1)
    80004d5c:	ffffc097          	auipc	ra,0xffffc
    80004d60:	700080e7          	jalr	1792(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004d64:	0184b503          	ld	a0,24(s1)
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	6f4080e7          	jalr	1780(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004d70:	0304b503          	ld	a0,48(s1)
    80004d74:	ffffc097          	auipc	ra,0xffffc
    80004d78:	6e8080e7          	jalr	1768(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004d7c:	0284b503          	ld	a0,40(s1)
    80004d80:	ffffc097          	auipc	ra,0xffffc
    80004d84:	6dc080e7          	jalr	1756(ra) # 8000145c <_Z9sem_closeP3Sem>
}
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	02010113          	addi	sp,sp,32
    80004d98:	00008067          	ret

0000000080004d9c <start>:
    80004d9c:	ff010113          	addi	sp,sp,-16
    80004da0:	00813423          	sd	s0,8(sp)
    80004da4:	01010413          	addi	s0,sp,16
    80004da8:	300027f3          	csrr	a5,mstatus
    80004dac:	ffffe737          	lui	a4,0xffffe
    80004db0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff44ef>
    80004db4:	00e7f7b3          	and	a5,a5,a4
    80004db8:	00001737          	lui	a4,0x1
    80004dbc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004dc0:	00e7e7b3          	or	a5,a5,a4
    80004dc4:	30079073          	csrw	mstatus,a5
    80004dc8:	00000797          	auipc	a5,0x0
    80004dcc:	16078793          	addi	a5,a5,352 # 80004f28 <system_main>
    80004dd0:	34179073          	csrw	mepc,a5
    80004dd4:	00000793          	li	a5,0
    80004dd8:	18079073          	csrw	satp,a5
    80004ddc:	000107b7          	lui	a5,0x10
    80004de0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004de4:	30279073          	csrw	medeleg,a5
    80004de8:	30379073          	csrw	mideleg,a5
    80004dec:	104027f3          	csrr	a5,sie
    80004df0:	2227e793          	ori	a5,a5,546
    80004df4:	10479073          	csrw	sie,a5
    80004df8:	fff00793          	li	a5,-1
    80004dfc:	00a7d793          	srli	a5,a5,0xa
    80004e00:	3b079073          	csrw	pmpaddr0,a5
    80004e04:	00f00793          	li	a5,15
    80004e08:	3a079073          	csrw	pmpcfg0,a5
    80004e0c:	f14027f3          	csrr	a5,mhartid
    80004e10:	0200c737          	lui	a4,0x200c
    80004e14:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004e18:	0007869b          	sext.w	a3,a5
    80004e1c:	00269713          	slli	a4,a3,0x2
    80004e20:	000f4637          	lui	a2,0xf4
    80004e24:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004e28:	00d70733          	add	a4,a4,a3
    80004e2c:	0037979b          	slliw	a5,a5,0x3
    80004e30:	020046b7          	lui	a3,0x2004
    80004e34:	00d787b3          	add	a5,a5,a3
    80004e38:	00c585b3          	add	a1,a1,a2
    80004e3c:	00371693          	slli	a3,a4,0x3
    80004e40:	00004717          	auipc	a4,0x4
    80004e44:	27070713          	addi	a4,a4,624 # 800090b0 <timer_scratch>
    80004e48:	00b7b023          	sd	a1,0(a5)
    80004e4c:	00d70733          	add	a4,a4,a3
    80004e50:	00f73c23          	sd	a5,24(a4)
    80004e54:	02c73023          	sd	a2,32(a4)
    80004e58:	34071073          	csrw	mscratch,a4
    80004e5c:	00000797          	auipc	a5,0x0
    80004e60:	6e478793          	addi	a5,a5,1764 # 80005540 <timervec>
    80004e64:	30579073          	csrw	mtvec,a5
    80004e68:	300027f3          	csrr	a5,mstatus
    80004e6c:	0087e793          	ori	a5,a5,8
    80004e70:	30079073          	csrw	mstatus,a5
    80004e74:	304027f3          	csrr	a5,mie
    80004e78:	0807e793          	ori	a5,a5,128
    80004e7c:	30479073          	csrw	mie,a5
    80004e80:	f14027f3          	csrr	a5,mhartid
    80004e84:	0007879b          	sext.w	a5,a5
    80004e88:	00078213          	mv	tp,a5
    80004e8c:	30200073          	mret
    80004e90:	00813403          	ld	s0,8(sp)
    80004e94:	01010113          	addi	sp,sp,16
    80004e98:	00008067          	ret

0000000080004e9c <timerinit>:
    80004e9c:	ff010113          	addi	sp,sp,-16
    80004ea0:	00813423          	sd	s0,8(sp)
    80004ea4:	01010413          	addi	s0,sp,16
    80004ea8:	f14027f3          	csrr	a5,mhartid
    80004eac:	0200c737          	lui	a4,0x200c
    80004eb0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004eb4:	0007869b          	sext.w	a3,a5
    80004eb8:	00269713          	slli	a4,a3,0x2
    80004ebc:	000f4637          	lui	a2,0xf4
    80004ec0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004ec4:	00d70733          	add	a4,a4,a3
    80004ec8:	0037979b          	slliw	a5,a5,0x3
    80004ecc:	020046b7          	lui	a3,0x2004
    80004ed0:	00d787b3          	add	a5,a5,a3
    80004ed4:	00c585b3          	add	a1,a1,a2
    80004ed8:	00371693          	slli	a3,a4,0x3
    80004edc:	00004717          	auipc	a4,0x4
    80004ee0:	1d470713          	addi	a4,a4,468 # 800090b0 <timer_scratch>
    80004ee4:	00b7b023          	sd	a1,0(a5)
    80004ee8:	00d70733          	add	a4,a4,a3
    80004eec:	00f73c23          	sd	a5,24(a4)
    80004ef0:	02c73023          	sd	a2,32(a4)
    80004ef4:	34071073          	csrw	mscratch,a4
    80004ef8:	00000797          	auipc	a5,0x0
    80004efc:	64878793          	addi	a5,a5,1608 # 80005540 <timervec>
    80004f00:	30579073          	csrw	mtvec,a5
    80004f04:	300027f3          	csrr	a5,mstatus
    80004f08:	0087e793          	ori	a5,a5,8
    80004f0c:	30079073          	csrw	mstatus,a5
    80004f10:	304027f3          	csrr	a5,mie
    80004f14:	0807e793          	ori	a5,a5,128
    80004f18:	30479073          	csrw	mie,a5
    80004f1c:	00813403          	ld	s0,8(sp)
    80004f20:	01010113          	addi	sp,sp,16
    80004f24:	00008067          	ret

0000000080004f28 <system_main>:
    80004f28:	fe010113          	addi	sp,sp,-32
    80004f2c:	00813823          	sd	s0,16(sp)
    80004f30:	00913423          	sd	s1,8(sp)
    80004f34:	00113c23          	sd	ra,24(sp)
    80004f38:	02010413          	addi	s0,sp,32
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	0c4080e7          	jalr	196(ra) # 80005000 <cpuid>
    80004f44:	00004497          	auipc	s1,0x4
    80004f48:	08c48493          	addi	s1,s1,140 # 80008fd0 <started>
    80004f4c:	02050263          	beqz	a0,80004f70 <system_main+0x48>
    80004f50:	0004a783          	lw	a5,0(s1)
    80004f54:	0007879b          	sext.w	a5,a5
    80004f58:	fe078ce3          	beqz	a5,80004f50 <system_main+0x28>
    80004f5c:	0ff0000f          	fence
    80004f60:	00002517          	auipc	a0,0x2
    80004f64:	68050513          	addi	a0,a0,1664 # 800075e0 <CONSOLE_STATUS+0x5d0>
    80004f68:	00001097          	auipc	ra,0x1
    80004f6c:	a74080e7          	jalr	-1420(ra) # 800059dc <panic>
    80004f70:	00001097          	auipc	ra,0x1
    80004f74:	9c8080e7          	jalr	-1592(ra) # 80005938 <consoleinit>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	154080e7          	jalr	340(ra) # 800060cc <printfinit>
    80004f80:	00002517          	auipc	a0,0x2
    80004f84:	4d050513          	addi	a0,a0,1232 # 80007450 <CONSOLE_STATUS+0x440>
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	ab0080e7          	jalr	-1360(ra) # 80005a38 <__printf>
    80004f90:	00002517          	auipc	a0,0x2
    80004f94:	62050513          	addi	a0,a0,1568 # 800075b0 <CONSOLE_STATUS+0x5a0>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	aa0080e7          	jalr	-1376(ra) # 80005a38 <__printf>
    80004fa0:	00002517          	auipc	a0,0x2
    80004fa4:	4b050513          	addi	a0,a0,1200 # 80007450 <CONSOLE_STATUS+0x440>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	a90080e7          	jalr	-1392(ra) # 80005a38 <__printf>
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	4a8080e7          	jalr	1192(ra) # 80006458 <kinit>
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	148080e7          	jalr	328(ra) # 80005100 <trapinit>
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	16c080e7          	jalr	364(ra) # 8000512c <trapinithart>
    80004fc8:	00000097          	auipc	ra,0x0
    80004fcc:	5b8080e7          	jalr	1464(ra) # 80005580 <plicinit>
    80004fd0:	00000097          	auipc	ra,0x0
    80004fd4:	5d8080e7          	jalr	1496(ra) # 800055a8 <plicinithart>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	078080e7          	jalr	120(ra) # 80005050 <userinit>
    80004fe0:	0ff0000f          	fence
    80004fe4:	00100793          	li	a5,1
    80004fe8:	00002517          	auipc	a0,0x2
    80004fec:	5e050513          	addi	a0,a0,1504 # 800075c8 <CONSOLE_STATUS+0x5b8>
    80004ff0:	00f4a023          	sw	a5,0(s1)
    80004ff4:	00001097          	auipc	ra,0x1
    80004ff8:	a44080e7          	jalr	-1468(ra) # 80005a38 <__printf>
    80004ffc:	0000006f          	j	80004ffc <system_main+0xd4>

0000000080005000 <cpuid>:
    80005000:	ff010113          	addi	sp,sp,-16
    80005004:	00813423          	sd	s0,8(sp)
    80005008:	01010413          	addi	s0,sp,16
    8000500c:	00020513          	mv	a0,tp
    80005010:	00813403          	ld	s0,8(sp)
    80005014:	0005051b          	sext.w	a0,a0
    80005018:	01010113          	addi	sp,sp,16
    8000501c:	00008067          	ret

0000000080005020 <mycpu>:
    80005020:	ff010113          	addi	sp,sp,-16
    80005024:	00813423          	sd	s0,8(sp)
    80005028:	01010413          	addi	s0,sp,16
    8000502c:	00020793          	mv	a5,tp
    80005030:	00813403          	ld	s0,8(sp)
    80005034:	0007879b          	sext.w	a5,a5
    80005038:	00779793          	slli	a5,a5,0x7
    8000503c:	00005517          	auipc	a0,0x5
    80005040:	0a450513          	addi	a0,a0,164 # 8000a0e0 <cpus>
    80005044:	00f50533          	add	a0,a0,a5
    80005048:	01010113          	addi	sp,sp,16
    8000504c:	00008067          	ret

0000000080005050 <userinit>:
    80005050:	ff010113          	addi	sp,sp,-16
    80005054:	00813423          	sd	s0,8(sp)
    80005058:	01010413          	addi	s0,sp,16
    8000505c:	00813403          	ld	s0,8(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	ffffd317          	auipc	t1,0xffffd
    80005068:	fe430067          	jr	-28(t1) # 80002048 <main>

000000008000506c <either_copyout>:
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00813023          	sd	s0,0(sp)
    80005074:	00113423          	sd	ra,8(sp)
    80005078:	01010413          	addi	s0,sp,16
    8000507c:	02051663          	bnez	a0,800050a8 <either_copyout+0x3c>
    80005080:	00058513          	mv	a0,a1
    80005084:	00060593          	mv	a1,a2
    80005088:	0006861b          	sext.w	a2,a3
    8000508c:	00002097          	auipc	ra,0x2
    80005090:	c58080e7          	jalr	-936(ra) # 80006ce4 <__memmove>
    80005094:	00813083          	ld	ra,8(sp)
    80005098:	00013403          	ld	s0,0(sp)
    8000509c:	00000513          	li	a0,0
    800050a0:	01010113          	addi	sp,sp,16
    800050a4:	00008067          	ret
    800050a8:	00002517          	auipc	a0,0x2
    800050ac:	56050513          	addi	a0,a0,1376 # 80007608 <CONSOLE_STATUS+0x5f8>
    800050b0:	00001097          	auipc	ra,0x1
    800050b4:	92c080e7          	jalr	-1748(ra) # 800059dc <panic>

00000000800050b8 <either_copyin>:
    800050b8:	ff010113          	addi	sp,sp,-16
    800050bc:	00813023          	sd	s0,0(sp)
    800050c0:	00113423          	sd	ra,8(sp)
    800050c4:	01010413          	addi	s0,sp,16
    800050c8:	02059463          	bnez	a1,800050f0 <either_copyin+0x38>
    800050cc:	00060593          	mv	a1,a2
    800050d0:	0006861b          	sext.w	a2,a3
    800050d4:	00002097          	auipc	ra,0x2
    800050d8:	c10080e7          	jalr	-1008(ra) # 80006ce4 <__memmove>
    800050dc:	00813083          	ld	ra,8(sp)
    800050e0:	00013403          	ld	s0,0(sp)
    800050e4:	00000513          	li	a0,0
    800050e8:	01010113          	addi	sp,sp,16
    800050ec:	00008067          	ret
    800050f0:	00002517          	auipc	a0,0x2
    800050f4:	54050513          	addi	a0,a0,1344 # 80007630 <CONSOLE_STATUS+0x620>
    800050f8:	00001097          	auipc	ra,0x1
    800050fc:	8e4080e7          	jalr	-1820(ra) # 800059dc <panic>

0000000080005100 <trapinit>:
    80005100:	ff010113          	addi	sp,sp,-16
    80005104:	00813423          	sd	s0,8(sp)
    80005108:	01010413          	addi	s0,sp,16
    8000510c:	00813403          	ld	s0,8(sp)
    80005110:	00002597          	auipc	a1,0x2
    80005114:	54858593          	addi	a1,a1,1352 # 80007658 <CONSOLE_STATUS+0x648>
    80005118:	00005517          	auipc	a0,0x5
    8000511c:	04850513          	addi	a0,a0,72 # 8000a160 <tickslock>
    80005120:	01010113          	addi	sp,sp,16
    80005124:	00001317          	auipc	t1,0x1
    80005128:	5c430067          	jr	1476(t1) # 800066e8 <initlock>

000000008000512c <trapinithart>:
    8000512c:	ff010113          	addi	sp,sp,-16
    80005130:	00813423          	sd	s0,8(sp)
    80005134:	01010413          	addi	s0,sp,16
    80005138:	00000797          	auipc	a5,0x0
    8000513c:	2f878793          	addi	a5,a5,760 # 80005430 <kernelvec>
    80005140:	10579073          	csrw	stvec,a5
    80005144:	00813403          	ld	s0,8(sp)
    80005148:	01010113          	addi	sp,sp,16
    8000514c:	00008067          	ret

0000000080005150 <usertrap>:
    80005150:	ff010113          	addi	sp,sp,-16
    80005154:	00813423          	sd	s0,8(sp)
    80005158:	01010413          	addi	s0,sp,16
    8000515c:	00813403          	ld	s0,8(sp)
    80005160:	01010113          	addi	sp,sp,16
    80005164:	00008067          	ret

0000000080005168 <usertrapret>:
    80005168:	ff010113          	addi	sp,sp,-16
    8000516c:	00813423          	sd	s0,8(sp)
    80005170:	01010413          	addi	s0,sp,16
    80005174:	00813403          	ld	s0,8(sp)
    80005178:	01010113          	addi	sp,sp,16
    8000517c:	00008067          	ret

0000000080005180 <kerneltrap>:
    80005180:	fe010113          	addi	sp,sp,-32
    80005184:	00813823          	sd	s0,16(sp)
    80005188:	00113c23          	sd	ra,24(sp)
    8000518c:	00913423          	sd	s1,8(sp)
    80005190:	02010413          	addi	s0,sp,32
    80005194:	142025f3          	csrr	a1,scause
    80005198:	100027f3          	csrr	a5,sstatus
    8000519c:	0027f793          	andi	a5,a5,2
    800051a0:	10079c63          	bnez	a5,800052b8 <kerneltrap+0x138>
    800051a4:	142027f3          	csrr	a5,scause
    800051a8:	0207ce63          	bltz	a5,800051e4 <kerneltrap+0x64>
    800051ac:	00002517          	auipc	a0,0x2
    800051b0:	4f450513          	addi	a0,a0,1268 # 800076a0 <CONSOLE_STATUS+0x690>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	884080e7          	jalr	-1916(ra) # 80005a38 <__printf>
    800051bc:	141025f3          	csrr	a1,sepc
    800051c0:	14302673          	csrr	a2,stval
    800051c4:	00002517          	auipc	a0,0x2
    800051c8:	4ec50513          	addi	a0,a0,1260 # 800076b0 <CONSOLE_STATUS+0x6a0>
    800051cc:	00001097          	auipc	ra,0x1
    800051d0:	86c080e7          	jalr	-1940(ra) # 80005a38 <__printf>
    800051d4:	00002517          	auipc	a0,0x2
    800051d8:	4f450513          	addi	a0,a0,1268 # 800076c8 <CONSOLE_STATUS+0x6b8>
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	800080e7          	jalr	-2048(ra) # 800059dc <panic>
    800051e4:	0ff7f713          	andi	a4,a5,255
    800051e8:	00900693          	li	a3,9
    800051ec:	04d70063          	beq	a4,a3,8000522c <kerneltrap+0xac>
    800051f0:	fff00713          	li	a4,-1
    800051f4:	03f71713          	slli	a4,a4,0x3f
    800051f8:	00170713          	addi	a4,a4,1
    800051fc:	fae798e3          	bne	a5,a4,800051ac <kerneltrap+0x2c>
    80005200:	00000097          	auipc	ra,0x0
    80005204:	e00080e7          	jalr	-512(ra) # 80005000 <cpuid>
    80005208:	06050663          	beqz	a0,80005274 <kerneltrap+0xf4>
    8000520c:	144027f3          	csrr	a5,sip
    80005210:	ffd7f793          	andi	a5,a5,-3
    80005214:	14479073          	csrw	sip,a5
    80005218:	01813083          	ld	ra,24(sp)
    8000521c:	01013403          	ld	s0,16(sp)
    80005220:	00813483          	ld	s1,8(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	00008067          	ret
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	3c8080e7          	jalr	968(ra) # 800055f4 <plic_claim>
    80005234:	00a00793          	li	a5,10
    80005238:	00050493          	mv	s1,a0
    8000523c:	06f50863          	beq	a0,a5,800052ac <kerneltrap+0x12c>
    80005240:	fc050ce3          	beqz	a0,80005218 <kerneltrap+0x98>
    80005244:	00050593          	mv	a1,a0
    80005248:	00002517          	auipc	a0,0x2
    8000524c:	43850513          	addi	a0,a0,1080 # 80007680 <CONSOLE_STATUS+0x670>
    80005250:	00000097          	auipc	ra,0x0
    80005254:	7e8080e7          	jalr	2024(ra) # 80005a38 <__printf>
    80005258:	01013403          	ld	s0,16(sp)
    8000525c:	01813083          	ld	ra,24(sp)
    80005260:	00048513          	mv	a0,s1
    80005264:	00813483          	ld	s1,8(sp)
    80005268:	02010113          	addi	sp,sp,32
    8000526c:	00000317          	auipc	t1,0x0
    80005270:	3c030067          	jr	960(t1) # 8000562c <plic_complete>
    80005274:	00005517          	auipc	a0,0x5
    80005278:	eec50513          	addi	a0,a0,-276 # 8000a160 <tickslock>
    8000527c:	00001097          	auipc	ra,0x1
    80005280:	490080e7          	jalr	1168(ra) # 8000670c <acquire>
    80005284:	00004717          	auipc	a4,0x4
    80005288:	d5070713          	addi	a4,a4,-688 # 80008fd4 <ticks>
    8000528c:	00072783          	lw	a5,0(a4)
    80005290:	00005517          	auipc	a0,0x5
    80005294:	ed050513          	addi	a0,a0,-304 # 8000a160 <tickslock>
    80005298:	0017879b          	addiw	a5,a5,1
    8000529c:	00f72023          	sw	a5,0(a4)
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	538080e7          	jalr	1336(ra) # 800067d8 <release>
    800052a8:	f65ff06f          	j	8000520c <kerneltrap+0x8c>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	094080e7          	jalr	148(ra) # 80006340 <uartintr>
    800052b4:	fa5ff06f          	j	80005258 <kerneltrap+0xd8>
    800052b8:	00002517          	auipc	a0,0x2
    800052bc:	3a850513          	addi	a0,a0,936 # 80007660 <CONSOLE_STATUS+0x650>
    800052c0:	00000097          	auipc	ra,0x0
    800052c4:	71c080e7          	jalr	1820(ra) # 800059dc <panic>

00000000800052c8 <clockintr>:
    800052c8:	fe010113          	addi	sp,sp,-32
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	00113c23          	sd	ra,24(sp)
    800052d8:	02010413          	addi	s0,sp,32
    800052dc:	00005497          	auipc	s1,0x5
    800052e0:	e8448493          	addi	s1,s1,-380 # 8000a160 <tickslock>
    800052e4:	00048513          	mv	a0,s1
    800052e8:	00001097          	auipc	ra,0x1
    800052ec:	424080e7          	jalr	1060(ra) # 8000670c <acquire>
    800052f0:	00004717          	auipc	a4,0x4
    800052f4:	ce470713          	addi	a4,a4,-796 # 80008fd4 <ticks>
    800052f8:	00072783          	lw	a5,0(a4)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	01813083          	ld	ra,24(sp)
    80005304:	00048513          	mv	a0,s1
    80005308:	0017879b          	addiw	a5,a5,1
    8000530c:	00813483          	ld	s1,8(sp)
    80005310:	00f72023          	sw	a5,0(a4)
    80005314:	02010113          	addi	sp,sp,32
    80005318:	00001317          	auipc	t1,0x1
    8000531c:	4c030067          	jr	1216(t1) # 800067d8 <release>

0000000080005320 <devintr>:
    80005320:	142027f3          	csrr	a5,scause
    80005324:	00000513          	li	a0,0
    80005328:	0007c463          	bltz	a5,80005330 <devintr+0x10>
    8000532c:	00008067          	ret
    80005330:	fe010113          	addi	sp,sp,-32
    80005334:	00813823          	sd	s0,16(sp)
    80005338:	00113c23          	sd	ra,24(sp)
    8000533c:	00913423          	sd	s1,8(sp)
    80005340:	02010413          	addi	s0,sp,32
    80005344:	0ff7f713          	andi	a4,a5,255
    80005348:	00900693          	li	a3,9
    8000534c:	04d70c63          	beq	a4,a3,800053a4 <devintr+0x84>
    80005350:	fff00713          	li	a4,-1
    80005354:	03f71713          	slli	a4,a4,0x3f
    80005358:	00170713          	addi	a4,a4,1
    8000535c:	00e78c63          	beq	a5,a4,80005374 <devintr+0x54>
    80005360:	01813083          	ld	ra,24(sp)
    80005364:	01013403          	ld	s0,16(sp)
    80005368:	00813483          	ld	s1,8(sp)
    8000536c:	02010113          	addi	sp,sp,32
    80005370:	00008067          	ret
    80005374:	00000097          	auipc	ra,0x0
    80005378:	c8c080e7          	jalr	-884(ra) # 80005000 <cpuid>
    8000537c:	06050663          	beqz	a0,800053e8 <devintr+0xc8>
    80005380:	144027f3          	csrr	a5,sip
    80005384:	ffd7f793          	andi	a5,a5,-3
    80005388:	14479073          	csrw	sip,a5
    8000538c:	01813083          	ld	ra,24(sp)
    80005390:	01013403          	ld	s0,16(sp)
    80005394:	00813483          	ld	s1,8(sp)
    80005398:	00200513          	li	a0,2
    8000539c:	02010113          	addi	sp,sp,32
    800053a0:	00008067          	ret
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	250080e7          	jalr	592(ra) # 800055f4 <plic_claim>
    800053ac:	00a00793          	li	a5,10
    800053b0:	00050493          	mv	s1,a0
    800053b4:	06f50663          	beq	a0,a5,80005420 <devintr+0x100>
    800053b8:	00100513          	li	a0,1
    800053bc:	fa0482e3          	beqz	s1,80005360 <devintr+0x40>
    800053c0:	00048593          	mv	a1,s1
    800053c4:	00002517          	auipc	a0,0x2
    800053c8:	2bc50513          	addi	a0,a0,700 # 80007680 <CONSOLE_STATUS+0x670>
    800053cc:	00000097          	auipc	ra,0x0
    800053d0:	66c080e7          	jalr	1644(ra) # 80005a38 <__printf>
    800053d4:	00048513          	mv	a0,s1
    800053d8:	00000097          	auipc	ra,0x0
    800053dc:	254080e7          	jalr	596(ra) # 8000562c <plic_complete>
    800053e0:	00100513          	li	a0,1
    800053e4:	f7dff06f          	j	80005360 <devintr+0x40>
    800053e8:	00005517          	auipc	a0,0x5
    800053ec:	d7850513          	addi	a0,a0,-648 # 8000a160 <tickslock>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	31c080e7          	jalr	796(ra) # 8000670c <acquire>
    800053f8:	00004717          	auipc	a4,0x4
    800053fc:	bdc70713          	addi	a4,a4,-1060 # 80008fd4 <ticks>
    80005400:	00072783          	lw	a5,0(a4)
    80005404:	00005517          	auipc	a0,0x5
    80005408:	d5c50513          	addi	a0,a0,-676 # 8000a160 <tickslock>
    8000540c:	0017879b          	addiw	a5,a5,1
    80005410:	00f72023          	sw	a5,0(a4)
    80005414:	00001097          	auipc	ra,0x1
    80005418:	3c4080e7          	jalr	964(ra) # 800067d8 <release>
    8000541c:	f65ff06f          	j	80005380 <devintr+0x60>
    80005420:	00001097          	auipc	ra,0x1
    80005424:	f20080e7          	jalr	-224(ra) # 80006340 <uartintr>
    80005428:	fadff06f          	j	800053d4 <devintr+0xb4>
    8000542c:	0000                	unimp
	...

0000000080005430 <kernelvec>:
    80005430:	f0010113          	addi	sp,sp,-256
    80005434:	00113023          	sd	ra,0(sp)
    80005438:	00213423          	sd	sp,8(sp)
    8000543c:	00313823          	sd	gp,16(sp)
    80005440:	00413c23          	sd	tp,24(sp)
    80005444:	02513023          	sd	t0,32(sp)
    80005448:	02613423          	sd	t1,40(sp)
    8000544c:	02713823          	sd	t2,48(sp)
    80005450:	02813c23          	sd	s0,56(sp)
    80005454:	04913023          	sd	s1,64(sp)
    80005458:	04a13423          	sd	a0,72(sp)
    8000545c:	04b13823          	sd	a1,80(sp)
    80005460:	04c13c23          	sd	a2,88(sp)
    80005464:	06d13023          	sd	a3,96(sp)
    80005468:	06e13423          	sd	a4,104(sp)
    8000546c:	06f13823          	sd	a5,112(sp)
    80005470:	07013c23          	sd	a6,120(sp)
    80005474:	09113023          	sd	a7,128(sp)
    80005478:	09213423          	sd	s2,136(sp)
    8000547c:	09313823          	sd	s3,144(sp)
    80005480:	09413c23          	sd	s4,152(sp)
    80005484:	0b513023          	sd	s5,160(sp)
    80005488:	0b613423          	sd	s6,168(sp)
    8000548c:	0b713823          	sd	s7,176(sp)
    80005490:	0b813c23          	sd	s8,184(sp)
    80005494:	0d913023          	sd	s9,192(sp)
    80005498:	0da13423          	sd	s10,200(sp)
    8000549c:	0db13823          	sd	s11,208(sp)
    800054a0:	0dc13c23          	sd	t3,216(sp)
    800054a4:	0fd13023          	sd	t4,224(sp)
    800054a8:	0fe13423          	sd	t5,232(sp)
    800054ac:	0ff13823          	sd	t6,240(sp)
    800054b0:	cd1ff0ef          	jal	ra,80005180 <kerneltrap>
    800054b4:	00013083          	ld	ra,0(sp)
    800054b8:	00813103          	ld	sp,8(sp)
    800054bc:	01013183          	ld	gp,16(sp)
    800054c0:	02013283          	ld	t0,32(sp)
    800054c4:	02813303          	ld	t1,40(sp)
    800054c8:	03013383          	ld	t2,48(sp)
    800054cc:	03813403          	ld	s0,56(sp)
    800054d0:	04013483          	ld	s1,64(sp)
    800054d4:	04813503          	ld	a0,72(sp)
    800054d8:	05013583          	ld	a1,80(sp)
    800054dc:	05813603          	ld	a2,88(sp)
    800054e0:	06013683          	ld	a3,96(sp)
    800054e4:	06813703          	ld	a4,104(sp)
    800054e8:	07013783          	ld	a5,112(sp)
    800054ec:	07813803          	ld	a6,120(sp)
    800054f0:	08013883          	ld	a7,128(sp)
    800054f4:	08813903          	ld	s2,136(sp)
    800054f8:	09013983          	ld	s3,144(sp)
    800054fc:	09813a03          	ld	s4,152(sp)
    80005500:	0a013a83          	ld	s5,160(sp)
    80005504:	0a813b03          	ld	s6,168(sp)
    80005508:	0b013b83          	ld	s7,176(sp)
    8000550c:	0b813c03          	ld	s8,184(sp)
    80005510:	0c013c83          	ld	s9,192(sp)
    80005514:	0c813d03          	ld	s10,200(sp)
    80005518:	0d013d83          	ld	s11,208(sp)
    8000551c:	0d813e03          	ld	t3,216(sp)
    80005520:	0e013e83          	ld	t4,224(sp)
    80005524:	0e813f03          	ld	t5,232(sp)
    80005528:	0f013f83          	ld	t6,240(sp)
    8000552c:	10010113          	addi	sp,sp,256
    80005530:	10200073          	sret
    80005534:	00000013          	nop
    80005538:	00000013          	nop
    8000553c:	00000013          	nop

0000000080005540 <timervec>:
    80005540:	34051573          	csrrw	a0,mscratch,a0
    80005544:	00b53023          	sd	a1,0(a0)
    80005548:	00c53423          	sd	a2,8(a0)
    8000554c:	00d53823          	sd	a3,16(a0)
    80005550:	01853583          	ld	a1,24(a0)
    80005554:	02053603          	ld	a2,32(a0)
    80005558:	0005b683          	ld	a3,0(a1)
    8000555c:	00c686b3          	add	a3,a3,a2
    80005560:	00d5b023          	sd	a3,0(a1)
    80005564:	00200593          	li	a1,2
    80005568:	14459073          	csrw	sip,a1
    8000556c:	01053683          	ld	a3,16(a0)
    80005570:	00853603          	ld	a2,8(a0)
    80005574:	00053583          	ld	a1,0(a0)
    80005578:	34051573          	csrrw	a0,mscratch,a0
    8000557c:	30200073          	mret

0000000080005580 <plicinit>:
    80005580:	ff010113          	addi	sp,sp,-16
    80005584:	00813423          	sd	s0,8(sp)
    80005588:	01010413          	addi	s0,sp,16
    8000558c:	00813403          	ld	s0,8(sp)
    80005590:	0c0007b7          	lui	a5,0xc000
    80005594:	00100713          	li	a4,1
    80005598:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000559c:	00e7a223          	sw	a4,4(a5)
    800055a0:	01010113          	addi	sp,sp,16
    800055a4:	00008067          	ret

00000000800055a8 <plicinithart>:
    800055a8:	ff010113          	addi	sp,sp,-16
    800055ac:	00813023          	sd	s0,0(sp)
    800055b0:	00113423          	sd	ra,8(sp)
    800055b4:	01010413          	addi	s0,sp,16
    800055b8:	00000097          	auipc	ra,0x0
    800055bc:	a48080e7          	jalr	-1464(ra) # 80005000 <cpuid>
    800055c0:	0085171b          	slliw	a4,a0,0x8
    800055c4:	0c0027b7          	lui	a5,0xc002
    800055c8:	00e787b3          	add	a5,a5,a4
    800055cc:	40200713          	li	a4,1026
    800055d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800055d4:	00813083          	ld	ra,8(sp)
    800055d8:	00013403          	ld	s0,0(sp)
    800055dc:	00d5151b          	slliw	a0,a0,0xd
    800055e0:	0c2017b7          	lui	a5,0xc201
    800055e4:	00a78533          	add	a0,a5,a0
    800055e8:	00052023          	sw	zero,0(a0)
    800055ec:	01010113          	addi	sp,sp,16
    800055f0:	00008067          	ret

00000000800055f4 <plic_claim>:
    800055f4:	ff010113          	addi	sp,sp,-16
    800055f8:	00813023          	sd	s0,0(sp)
    800055fc:	00113423          	sd	ra,8(sp)
    80005600:	01010413          	addi	s0,sp,16
    80005604:	00000097          	auipc	ra,0x0
    80005608:	9fc080e7          	jalr	-1540(ra) # 80005000 <cpuid>
    8000560c:	00813083          	ld	ra,8(sp)
    80005610:	00013403          	ld	s0,0(sp)
    80005614:	00d5151b          	slliw	a0,a0,0xd
    80005618:	0c2017b7          	lui	a5,0xc201
    8000561c:	00a78533          	add	a0,a5,a0
    80005620:	00452503          	lw	a0,4(a0)
    80005624:	01010113          	addi	sp,sp,16
    80005628:	00008067          	ret

000000008000562c <plic_complete>:
    8000562c:	fe010113          	addi	sp,sp,-32
    80005630:	00813823          	sd	s0,16(sp)
    80005634:	00913423          	sd	s1,8(sp)
    80005638:	00113c23          	sd	ra,24(sp)
    8000563c:	02010413          	addi	s0,sp,32
    80005640:	00050493          	mv	s1,a0
    80005644:	00000097          	auipc	ra,0x0
    80005648:	9bc080e7          	jalr	-1604(ra) # 80005000 <cpuid>
    8000564c:	01813083          	ld	ra,24(sp)
    80005650:	01013403          	ld	s0,16(sp)
    80005654:	00d5179b          	slliw	a5,a0,0xd
    80005658:	0c201737          	lui	a4,0xc201
    8000565c:	00f707b3          	add	a5,a4,a5
    80005660:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005664:	00813483          	ld	s1,8(sp)
    80005668:	02010113          	addi	sp,sp,32
    8000566c:	00008067          	ret

0000000080005670 <consolewrite>:
    80005670:	fb010113          	addi	sp,sp,-80
    80005674:	04813023          	sd	s0,64(sp)
    80005678:	04113423          	sd	ra,72(sp)
    8000567c:	02913c23          	sd	s1,56(sp)
    80005680:	03213823          	sd	s2,48(sp)
    80005684:	03313423          	sd	s3,40(sp)
    80005688:	03413023          	sd	s4,32(sp)
    8000568c:	01513c23          	sd	s5,24(sp)
    80005690:	05010413          	addi	s0,sp,80
    80005694:	06c05c63          	blez	a2,8000570c <consolewrite+0x9c>
    80005698:	00060993          	mv	s3,a2
    8000569c:	00050a13          	mv	s4,a0
    800056a0:	00058493          	mv	s1,a1
    800056a4:	00000913          	li	s2,0
    800056a8:	fff00a93          	li	s5,-1
    800056ac:	01c0006f          	j	800056c8 <consolewrite+0x58>
    800056b0:	fbf44503          	lbu	a0,-65(s0)
    800056b4:	0019091b          	addiw	s2,s2,1
    800056b8:	00148493          	addi	s1,s1,1
    800056bc:	00001097          	auipc	ra,0x1
    800056c0:	a9c080e7          	jalr	-1380(ra) # 80006158 <uartputc>
    800056c4:	03298063          	beq	s3,s2,800056e4 <consolewrite+0x74>
    800056c8:	00048613          	mv	a2,s1
    800056cc:	00100693          	li	a3,1
    800056d0:	000a0593          	mv	a1,s4
    800056d4:	fbf40513          	addi	a0,s0,-65
    800056d8:	00000097          	auipc	ra,0x0
    800056dc:	9e0080e7          	jalr	-1568(ra) # 800050b8 <either_copyin>
    800056e0:	fd5518e3          	bne	a0,s5,800056b0 <consolewrite+0x40>
    800056e4:	04813083          	ld	ra,72(sp)
    800056e8:	04013403          	ld	s0,64(sp)
    800056ec:	03813483          	ld	s1,56(sp)
    800056f0:	02813983          	ld	s3,40(sp)
    800056f4:	02013a03          	ld	s4,32(sp)
    800056f8:	01813a83          	ld	s5,24(sp)
    800056fc:	00090513          	mv	a0,s2
    80005700:	03013903          	ld	s2,48(sp)
    80005704:	05010113          	addi	sp,sp,80
    80005708:	00008067          	ret
    8000570c:	00000913          	li	s2,0
    80005710:	fd5ff06f          	j	800056e4 <consolewrite+0x74>

0000000080005714 <consoleread>:
    80005714:	f9010113          	addi	sp,sp,-112
    80005718:	06813023          	sd	s0,96(sp)
    8000571c:	04913c23          	sd	s1,88(sp)
    80005720:	05213823          	sd	s2,80(sp)
    80005724:	05313423          	sd	s3,72(sp)
    80005728:	05413023          	sd	s4,64(sp)
    8000572c:	03513c23          	sd	s5,56(sp)
    80005730:	03613823          	sd	s6,48(sp)
    80005734:	03713423          	sd	s7,40(sp)
    80005738:	03813023          	sd	s8,32(sp)
    8000573c:	06113423          	sd	ra,104(sp)
    80005740:	01913c23          	sd	s9,24(sp)
    80005744:	07010413          	addi	s0,sp,112
    80005748:	00060b93          	mv	s7,a2
    8000574c:	00050913          	mv	s2,a0
    80005750:	00058c13          	mv	s8,a1
    80005754:	00060b1b          	sext.w	s6,a2
    80005758:	00005497          	auipc	s1,0x5
    8000575c:	a3048493          	addi	s1,s1,-1488 # 8000a188 <cons>
    80005760:	00400993          	li	s3,4
    80005764:	fff00a13          	li	s4,-1
    80005768:	00a00a93          	li	s5,10
    8000576c:	05705e63          	blez	s7,800057c8 <consoleread+0xb4>
    80005770:	09c4a703          	lw	a4,156(s1)
    80005774:	0984a783          	lw	a5,152(s1)
    80005778:	0007071b          	sext.w	a4,a4
    8000577c:	08e78463          	beq	a5,a4,80005804 <consoleread+0xf0>
    80005780:	07f7f713          	andi	a4,a5,127
    80005784:	00e48733          	add	a4,s1,a4
    80005788:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000578c:	0017869b          	addiw	a3,a5,1
    80005790:	08d4ac23          	sw	a3,152(s1)
    80005794:	00070c9b          	sext.w	s9,a4
    80005798:	0b370663          	beq	a4,s3,80005844 <consoleread+0x130>
    8000579c:	00100693          	li	a3,1
    800057a0:	f9f40613          	addi	a2,s0,-97
    800057a4:	000c0593          	mv	a1,s8
    800057a8:	00090513          	mv	a0,s2
    800057ac:	f8e40fa3          	sb	a4,-97(s0)
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	8bc080e7          	jalr	-1860(ra) # 8000506c <either_copyout>
    800057b8:	01450863          	beq	a0,s4,800057c8 <consoleread+0xb4>
    800057bc:	001c0c13          	addi	s8,s8,1
    800057c0:	fffb8b9b          	addiw	s7,s7,-1
    800057c4:	fb5c94e3          	bne	s9,s5,8000576c <consoleread+0x58>
    800057c8:	000b851b          	sext.w	a0,s7
    800057cc:	06813083          	ld	ra,104(sp)
    800057d0:	06013403          	ld	s0,96(sp)
    800057d4:	05813483          	ld	s1,88(sp)
    800057d8:	05013903          	ld	s2,80(sp)
    800057dc:	04813983          	ld	s3,72(sp)
    800057e0:	04013a03          	ld	s4,64(sp)
    800057e4:	03813a83          	ld	s5,56(sp)
    800057e8:	02813b83          	ld	s7,40(sp)
    800057ec:	02013c03          	ld	s8,32(sp)
    800057f0:	01813c83          	ld	s9,24(sp)
    800057f4:	40ab053b          	subw	a0,s6,a0
    800057f8:	03013b03          	ld	s6,48(sp)
    800057fc:	07010113          	addi	sp,sp,112
    80005800:	00008067          	ret
    80005804:	00001097          	auipc	ra,0x1
    80005808:	1d8080e7          	jalr	472(ra) # 800069dc <push_on>
    8000580c:	0984a703          	lw	a4,152(s1)
    80005810:	09c4a783          	lw	a5,156(s1)
    80005814:	0007879b          	sext.w	a5,a5
    80005818:	fef70ce3          	beq	a4,a5,80005810 <consoleread+0xfc>
    8000581c:	00001097          	auipc	ra,0x1
    80005820:	234080e7          	jalr	564(ra) # 80006a50 <pop_on>
    80005824:	0984a783          	lw	a5,152(s1)
    80005828:	07f7f713          	andi	a4,a5,127
    8000582c:	00e48733          	add	a4,s1,a4
    80005830:	01874703          	lbu	a4,24(a4)
    80005834:	0017869b          	addiw	a3,a5,1
    80005838:	08d4ac23          	sw	a3,152(s1)
    8000583c:	00070c9b          	sext.w	s9,a4
    80005840:	f5371ee3          	bne	a4,s3,8000579c <consoleread+0x88>
    80005844:	000b851b          	sext.w	a0,s7
    80005848:	f96bf2e3          	bgeu	s7,s6,800057cc <consoleread+0xb8>
    8000584c:	08f4ac23          	sw	a5,152(s1)
    80005850:	f7dff06f          	j	800057cc <consoleread+0xb8>

0000000080005854 <consputc>:
    80005854:	10000793          	li	a5,256
    80005858:	00f50663          	beq	a0,a5,80005864 <consputc+0x10>
    8000585c:	00001317          	auipc	t1,0x1
    80005860:	9f430067          	jr	-1548(t1) # 80006250 <uartputc_sync>
    80005864:	ff010113          	addi	sp,sp,-16
    80005868:	00113423          	sd	ra,8(sp)
    8000586c:	00813023          	sd	s0,0(sp)
    80005870:	01010413          	addi	s0,sp,16
    80005874:	00800513          	li	a0,8
    80005878:	00001097          	auipc	ra,0x1
    8000587c:	9d8080e7          	jalr	-1576(ra) # 80006250 <uartputc_sync>
    80005880:	02000513          	li	a0,32
    80005884:	00001097          	auipc	ra,0x1
    80005888:	9cc080e7          	jalr	-1588(ra) # 80006250 <uartputc_sync>
    8000588c:	00013403          	ld	s0,0(sp)
    80005890:	00813083          	ld	ra,8(sp)
    80005894:	00800513          	li	a0,8
    80005898:	01010113          	addi	sp,sp,16
    8000589c:	00001317          	auipc	t1,0x1
    800058a0:	9b430067          	jr	-1612(t1) # 80006250 <uartputc_sync>

00000000800058a4 <consoleintr>:
    800058a4:	fe010113          	addi	sp,sp,-32
    800058a8:	00813823          	sd	s0,16(sp)
    800058ac:	00913423          	sd	s1,8(sp)
    800058b0:	01213023          	sd	s2,0(sp)
    800058b4:	00113c23          	sd	ra,24(sp)
    800058b8:	02010413          	addi	s0,sp,32
    800058bc:	00005917          	auipc	s2,0x5
    800058c0:	8cc90913          	addi	s2,s2,-1844 # 8000a188 <cons>
    800058c4:	00050493          	mv	s1,a0
    800058c8:	00090513          	mv	a0,s2
    800058cc:	00001097          	auipc	ra,0x1
    800058d0:	e40080e7          	jalr	-448(ra) # 8000670c <acquire>
    800058d4:	02048c63          	beqz	s1,8000590c <consoleintr+0x68>
    800058d8:	0a092783          	lw	a5,160(s2)
    800058dc:	09892703          	lw	a4,152(s2)
    800058e0:	07f00693          	li	a3,127
    800058e4:	40e7873b          	subw	a4,a5,a4
    800058e8:	02e6e263          	bltu	a3,a4,8000590c <consoleintr+0x68>
    800058ec:	00d00713          	li	a4,13
    800058f0:	04e48063          	beq	s1,a4,80005930 <consoleintr+0x8c>
    800058f4:	07f7f713          	andi	a4,a5,127
    800058f8:	00e90733          	add	a4,s2,a4
    800058fc:	0017879b          	addiw	a5,a5,1
    80005900:	0af92023          	sw	a5,160(s2)
    80005904:	00970c23          	sb	s1,24(a4)
    80005908:	08f92e23          	sw	a5,156(s2)
    8000590c:	01013403          	ld	s0,16(sp)
    80005910:	01813083          	ld	ra,24(sp)
    80005914:	00813483          	ld	s1,8(sp)
    80005918:	00013903          	ld	s2,0(sp)
    8000591c:	00005517          	auipc	a0,0x5
    80005920:	86c50513          	addi	a0,a0,-1940 # 8000a188 <cons>
    80005924:	02010113          	addi	sp,sp,32
    80005928:	00001317          	auipc	t1,0x1
    8000592c:	eb030067          	jr	-336(t1) # 800067d8 <release>
    80005930:	00a00493          	li	s1,10
    80005934:	fc1ff06f          	j	800058f4 <consoleintr+0x50>

0000000080005938 <consoleinit>:
    80005938:	fe010113          	addi	sp,sp,-32
    8000593c:	00113c23          	sd	ra,24(sp)
    80005940:	00813823          	sd	s0,16(sp)
    80005944:	00913423          	sd	s1,8(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00005497          	auipc	s1,0x5
    80005950:	83c48493          	addi	s1,s1,-1988 # 8000a188 <cons>
    80005954:	00048513          	mv	a0,s1
    80005958:	00002597          	auipc	a1,0x2
    8000595c:	d8058593          	addi	a1,a1,-640 # 800076d8 <CONSOLE_STATUS+0x6c8>
    80005960:	00001097          	auipc	ra,0x1
    80005964:	d88080e7          	jalr	-632(ra) # 800066e8 <initlock>
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	7ac080e7          	jalr	1964(ra) # 80006114 <uartinit>
    80005970:	01813083          	ld	ra,24(sp)
    80005974:	01013403          	ld	s0,16(sp)
    80005978:	00000797          	auipc	a5,0x0
    8000597c:	d9c78793          	addi	a5,a5,-612 # 80005714 <consoleread>
    80005980:	0af4bc23          	sd	a5,184(s1)
    80005984:	00000797          	auipc	a5,0x0
    80005988:	cec78793          	addi	a5,a5,-788 # 80005670 <consolewrite>
    8000598c:	0cf4b023          	sd	a5,192(s1)
    80005990:	00813483          	ld	s1,8(sp)
    80005994:	02010113          	addi	sp,sp,32
    80005998:	00008067          	ret

000000008000599c <console_read>:
    8000599c:	ff010113          	addi	sp,sp,-16
    800059a0:	00813423          	sd	s0,8(sp)
    800059a4:	01010413          	addi	s0,sp,16
    800059a8:	00813403          	ld	s0,8(sp)
    800059ac:	00005317          	auipc	t1,0x5
    800059b0:	89433303          	ld	t1,-1900(t1) # 8000a240 <devsw+0x10>
    800059b4:	01010113          	addi	sp,sp,16
    800059b8:	00030067          	jr	t1

00000000800059bc <console_write>:
    800059bc:	ff010113          	addi	sp,sp,-16
    800059c0:	00813423          	sd	s0,8(sp)
    800059c4:	01010413          	addi	s0,sp,16
    800059c8:	00813403          	ld	s0,8(sp)
    800059cc:	00005317          	auipc	t1,0x5
    800059d0:	87c33303          	ld	t1,-1924(t1) # 8000a248 <devsw+0x18>
    800059d4:	01010113          	addi	sp,sp,16
    800059d8:	00030067          	jr	t1

00000000800059dc <panic>:
    800059dc:	fe010113          	addi	sp,sp,-32
    800059e0:	00113c23          	sd	ra,24(sp)
    800059e4:	00813823          	sd	s0,16(sp)
    800059e8:	00913423          	sd	s1,8(sp)
    800059ec:	02010413          	addi	s0,sp,32
    800059f0:	00050493          	mv	s1,a0
    800059f4:	00002517          	auipc	a0,0x2
    800059f8:	cec50513          	addi	a0,a0,-788 # 800076e0 <CONSOLE_STATUS+0x6d0>
    800059fc:	00005797          	auipc	a5,0x5
    80005a00:	8e07a623          	sw	zero,-1812(a5) # 8000a2e8 <pr+0x18>
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	034080e7          	jalr	52(ra) # 80005a38 <__printf>
    80005a0c:	00048513          	mv	a0,s1
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	028080e7          	jalr	40(ra) # 80005a38 <__printf>
    80005a18:	00002517          	auipc	a0,0x2
    80005a1c:	a3850513          	addi	a0,a0,-1480 # 80007450 <CONSOLE_STATUS+0x440>
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	018080e7          	jalr	24(ra) # 80005a38 <__printf>
    80005a28:	00100793          	li	a5,1
    80005a2c:	00003717          	auipc	a4,0x3
    80005a30:	5af72623          	sw	a5,1452(a4) # 80008fd8 <panicked>
    80005a34:	0000006f          	j	80005a34 <panic+0x58>

0000000080005a38 <__printf>:
    80005a38:	f3010113          	addi	sp,sp,-208
    80005a3c:	08813023          	sd	s0,128(sp)
    80005a40:	07313423          	sd	s3,104(sp)
    80005a44:	09010413          	addi	s0,sp,144
    80005a48:	05813023          	sd	s8,64(sp)
    80005a4c:	08113423          	sd	ra,136(sp)
    80005a50:	06913c23          	sd	s1,120(sp)
    80005a54:	07213823          	sd	s2,112(sp)
    80005a58:	07413023          	sd	s4,96(sp)
    80005a5c:	05513c23          	sd	s5,88(sp)
    80005a60:	05613823          	sd	s6,80(sp)
    80005a64:	05713423          	sd	s7,72(sp)
    80005a68:	03913c23          	sd	s9,56(sp)
    80005a6c:	03a13823          	sd	s10,48(sp)
    80005a70:	03b13423          	sd	s11,40(sp)
    80005a74:	00005317          	auipc	t1,0x5
    80005a78:	85c30313          	addi	t1,t1,-1956 # 8000a2d0 <pr>
    80005a7c:	01832c03          	lw	s8,24(t1)
    80005a80:	00b43423          	sd	a1,8(s0)
    80005a84:	00c43823          	sd	a2,16(s0)
    80005a88:	00d43c23          	sd	a3,24(s0)
    80005a8c:	02e43023          	sd	a4,32(s0)
    80005a90:	02f43423          	sd	a5,40(s0)
    80005a94:	03043823          	sd	a6,48(s0)
    80005a98:	03143c23          	sd	a7,56(s0)
    80005a9c:	00050993          	mv	s3,a0
    80005aa0:	4a0c1663          	bnez	s8,80005f4c <__printf+0x514>
    80005aa4:	60098c63          	beqz	s3,800060bc <__printf+0x684>
    80005aa8:	0009c503          	lbu	a0,0(s3)
    80005aac:	00840793          	addi	a5,s0,8
    80005ab0:	f6f43c23          	sd	a5,-136(s0)
    80005ab4:	00000493          	li	s1,0
    80005ab8:	22050063          	beqz	a0,80005cd8 <__printf+0x2a0>
    80005abc:	00002a37          	lui	s4,0x2
    80005ac0:	00018ab7          	lui	s5,0x18
    80005ac4:	000f4b37          	lui	s6,0xf4
    80005ac8:	00989bb7          	lui	s7,0x989
    80005acc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005ad0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005ad4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005ad8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005adc:	00148c9b          	addiw	s9,s1,1
    80005ae0:	02500793          	li	a5,37
    80005ae4:	01998933          	add	s2,s3,s9
    80005ae8:	38f51263          	bne	a0,a5,80005e6c <__printf+0x434>
    80005aec:	00094783          	lbu	a5,0(s2)
    80005af0:	00078c9b          	sext.w	s9,a5
    80005af4:	1e078263          	beqz	a5,80005cd8 <__printf+0x2a0>
    80005af8:	0024849b          	addiw	s1,s1,2
    80005afc:	07000713          	li	a4,112
    80005b00:	00998933          	add	s2,s3,s1
    80005b04:	38e78a63          	beq	a5,a4,80005e98 <__printf+0x460>
    80005b08:	20f76863          	bltu	a4,a5,80005d18 <__printf+0x2e0>
    80005b0c:	42a78863          	beq	a5,a0,80005f3c <__printf+0x504>
    80005b10:	06400713          	li	a4,100
    80005b14:	40e79663          	bne	a5,a4,80005f20 <__printf+0x4e8>
    80005b18:	f7843783          	ld	a5,-136(s0)
    80005b1c:	0007a603          	lw	a2,0(a5)
    80005b20:	00878793          	addi	a5,a5,8
    80005b24:	f6f43c23          	sd	a5,-136(s0)
    80005b28:	42064a63          	bltz	a2,80005f5c <__printf+0x524>
    80005b2c:	00a00713          	li	a4,10
    80005b30:	02e677bb          	remuw	a5,a2,a4
    80005b34:	00002d97          	auipc	s11,0x2
    80005b38:	bd4d8d93          	addi	s11,s11,-1068 # 80007708 <digits>
    80005b3c:	00900593          	li	a1,9
    80005b40:	0006051b          	sext.w	a0,a2
    80005b44:	00000c93          	li	s9,0
    80005b48:	02079793          	slli	a5,a5,0x20
    80005b4c:	0207d793          	srli	a5,a5,0x20
    80005b50:	00fd87b3          	add	a5,s11,a5
    80005b54:	0007c783          	lbu	a5,0(a5)
    80005b58:	02e656bb          	divuw	a3,a2,a4
    80005b5c:	f8f40023          	sb	a5,-128(s0)
    80005b60:	14c5d863          	bge	a1,a2,80005cb0 <__printf+0x278>
    80005b64:	06300593          	li	a1,99
    80005b68:	00100c93          	li	s9,1
    80005b6c:	02e6f7bb          	remuw	a5,a3,a4
    80005b70:	02079793          	slli	a5,a5,0x20
    80005b74:	0207d793          	srli	a5,a5,0x20
    80005b78:	00fd87b3          	add	a5,s11,a5
    80005b7c:	0007c783          	lbu	a5,0(a5)
    80005b80:	02e6d73b          	divuw	a4,a3,a4
    80005b84:	f8f400a3          	sb	a5,-127(s0)
    80005b88:	12a5f463          	bgeu	a1,a0,80005cb0 <__printf+0x278>
    80005b8c:	00a00693          	li	a3,10
    80005b90:	00900593          	li	a1,9
    80005b94:	02d777bb          	remuw	a5,a4,a3
    80005b98:	02079793          	slli	a5,a5,0x20
    80005b9c:	0207d793          	srli	a5,a5,0x20
    80005ba0:	00fd87b3          	add	a5,s11,a5
    80005ba4:	0007c503          	lbu	a0,0(a5)
    80005ba8:	02d757bb          	divuw	a5,a4,a3
    80005bac:	f8a40123          	sb	a0,-126(s0)
    80005bb0:	48e5f263          	bgeu	a1,a4,80006034 <__printf+0x5fc>
    80005bb4:	06300513          	li	a0,99
    80005bb8:	02d7f5bb          	remuw	a1,a5,a3
    80005bbc:	02059593          	slli	a1,a1,0x20
    80005bc0:	0205d593          	srli	a1,a1,0x20
    80005bc4:	00bd85b3          	add	a1,s11,a1
    80005bc8:	0005c583          	lbu	a1,0(a1)
    80005bcc:	02d7d7bb          	divuw	a5,a5,a3
    80005bd0:	f8b401a3          	sb	a1,-125(s0)
    80005bd4:	48e57263          	bgeu	a0,a4,80006058 <__printf+0x620>
    80005bd8:	3e700513          	li	a0,999
    80005bdc:	02d7f5bb          	remuw	a1,a5,a3
    80005be0:	02059593          	slli	a1,a1,0x20
    80005be4:	0205d593          	srli	a1,a1,0x20
    80005be8:	00bd85b3          	add	a1,s11,a1
    80005bec:	0005c583          	lbu	a1,0(a1)
    80005bf0:	02d7d7bb          	divuw	a5,a5,a3
    80005bf4:	f8b40223          	sb	a1,-124(s0)
    80005bf8:	46e57663          	bgeu	a0,a4,80006064 <__printf+0x62c>
    80005bfc:	02d7f5bb          	remuw	a1,a5,a3
    80005c00:	02059593          	slli	a1,a1,0x20
    80005c04:	0205d593          	srli	a1,a1,0x20
    80005c08:	00bd85b3          	add	a1,s11,a1
    80005c0c:	0005c583          	lbu	a1,0(a1)
    80005c10:	02d7d7bb          	divuw	a5,a5,a3
    80005c14:	f8b402a3          	sb	a1,-123(s0)
    80005c18:	46ea7863          	bgeu	s4,a4,80006088 <__printf+0x650>
    80005c1c:	02d7f5bb          	remuw	a1,a5,a3
    80005c20:	02059593          	slli	a1,a1,0x20
    80005c24:	0205d593          	srli	a1,a1,0x20
    80005c28:	00bd85b3          	add	a1,s11,a1
    80005c2c:	0005c583          	lbu	a1,0(a1)
    80005c30:	02d7d7bb          	divuw	a5,a5,a3
    80005c34:	f8b40323          	sb	a1,-122(s0)
    80005c38:	3eeaf863          	bgeu	s5,a4,80006028 <__printf+0x5f0>
    80005c3c:	02d7f5bb          	remuw	a1,a5,a3
    80005c40:	02059593          	slli	a1,a1,0x20
    80005c44:	0205d593          	srli	a1,a1,0x20
    80005c48:	00bd85b3          	add	a1,s11,a1
    80005c4c:	0005c583          	lbu	a1,0(a1)
    80005c50:	02d7d7bb          	divuw	a5,a5,a3
    80005c54:	f8b403a3          	sb	a1,-121(s0)
    80005c58:	42eb7e63          	bgeu	s6,a4,80006094 <__printf+0x65c>
    80005c5c:	02d7f5bb          	remuw	a1,a5,a3
    80005c60:	02059593          	slli	a1,a1,0x20
    80005c64:	0205d593          	srli	a1,a1,0x20
    80005c68:	00bd85b3          	add	a1,s11,a1
    80005c6c:	0005c583          	lbu	a1,0(a1)
    80005c70:	02d7d7bb          	divuw	a5,a5,a3
    80005c74:	f8b40423          	sb	a1,-120(s0)
    80005c78:	42ebfc63          	bgeu	s7,a4,800060b0 <__printf+0x678>
    80005c7c:	02079793          	slli	a5,a5,0x20
    80005c80:	0207d793          	srli	a5,a5,0x20
    80005c84:	00fd8db3          	add	s11,s11,a5
    80005c88:	000dc703          	lbu	a4,0(s11)
    80005c8c:	00a00793          	li	a5,10
    80005c90:	00900c93          	li	s9,9
    80005c94:	f8e404a3          	sb	a4,-119(s0)
    80005c98:	00065c63          	bgez	a2,80005cb0 <__printf+0x278>
    80005c9c:	f9040713          	addi	a4,s0,-112
    80005ca0:	00f70733          	add	a4,a4,a5
    80005ca4:	02d00693          	li	a3,45
    80005ca8:	fed70823          	sb	a3,-16(a4)
    80005cac:	00078c93          	mv	s9,a5
    80005cb0:	f8040793          	addi	a5,s0,-128
    80005cb4:	01978cb3          	add	s9,a5,s9
    80005cb8:	f7f40d13          	addi	s10,s0,-129
    80005cbc:	000cc503          	lbu	a0,0(s9)
    80005cc0:	fffc8c93          	addi	s9,s9,-1
    80005cc4:	00000097          	auipc	ra,0x0
    80005cc8:	b90080e7          	jalr	-1136(ra) # 80005854 <consputc>
    80005ccc:	ffac98e3          	bne	s9,s10,80005cbc <__printf+0x284>
    80005cd0:	00094503          	lbu	a0,0(s2)
    80005cd4:	e00514e3          	bnez	a0,80005adc <__printf+0xa4>
    80005cd8:	1a0c1663          	bnez	s8,80005e84 <__printf+0x44c>
    80005cdc:	08813083          	ld	ra,136(sp)
    80005ce0:	08013403          	ld	s0,128(sp)
    80005ce4:	07813483          	ld	s1,120(sp)
    80005ce8:	07013903          	ld	s2,112(sp)
    80005cec:	06813983          	ld	s3,104(sp)
    80005cf0:	06013a03          	ld	s4,96(sp)
    80005cf4:	05813a83          	ld	s5,88(sp)
    80005cf8:	05013b03          	ld	s6,80(sp)
    80005cfc:	04813b83          	ld	s7,72(sp)
    80005d00:	04013c03          	ld	s8,64(sp)
    80005d04:	03813c83          	ld	s9,56(sp)
    80005d08:	03013d03          	ld	s10,48(sp)
    80005d0c:	02813d83          	ld	s11,40(sp)
    80005d10:	0d010113          	addi	sp,sp,208
    80005d14:	00008067          	ret
    80005d18:	07300713          	li	a4,115
    80005d1c:	1ce78a63          	beq	a5,a4,80005ef0 <__printf+0x4b8>
    80005d20:	07800713          	li	a4,120
    80005d24:	1ee79e63          	bne	a5,a4,80005f20 <__printf+0x4e8>
    80005d28:	f7843783          	ld	a5,-136(s0)
    80005d2c:	0007a703          	lw	a4,0(a5)
    80005d30:	00878793          	addi	a5,a5,8
    80005d34:	f6f43c23          	sd	a5,-136(s0)
    80005d38:	28074263          	bltz	a4,80005fbc <__printf+0x584>
    80005d3c:	00002d97          	auipc	s11,0x2
    80005d40:	9ccd8d93          	addi	s11,s11,-1588 # 80007708 <digits>
    80005d44:	00f77793          	andi	a5,a4,15
    80005d48:	00fd87b3          	add	a5,s11,a5
    80005d4c:	0007c683          	lbu	a3,0(a5)
    80005d50:	00f00613          	li	a2,15
    80005d54:	0007079b          	sext.w	a5,a4
    80005d58:	f8d40023          	sb	a3,-128(s0)
    80005d5c:	0047559b          	srliw	a1,a4,0x4
    80005d60:	0047569b          	srliw	a3,a4,0x4
    80005d64:	00000c93          	li	s9,0
    80005d68:	0ee65063          	bge	a2,a4,80005e48 <__printf+0x410>
    80005d6c:	00f6f693          	andi	a3,a3,15
    80005d70:	00dd86b3          	add	a3,s11,a3
    80005d74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005d78:	0087d79b          	srliw	a5,a5,0x8
    80005d7c:	00100c93          	li	s9,1
    80005d80:	f8d400a3          	sb	a3,-127(s0)
    80005d84:	0cb67263          	bgeu	a2,a1,80005e48 <__printf+0x410>
    80005d88:	00f7f693          	andi	a3,a5,15
    80005d8c:	00dd86b3          	add	a3,s11,a3
    80005d90:	0006c583          	lbu	a1,0(a3)
    80005d94:	00f00613          	li	a2,15
    80005d98:	0047d69b          	srliw	a3,a5,0x4
    80005d9c:	f8b40123          	sb	a1,-126(s0)
    80005da0:	0047d593          	srli	a1,a5,0x4
    80005da4:	28f67e63          	bgeu	a2,a5,80006040 <__printf+0x608>
    80005da8:	00f6f693          	andi	a3,a3,15
    80005dac:	00dd86b3          	add	a3,s11,a3
    80005db0:	0006c503          	lbu	a0,0(a3)
    80005db4:	0087d813          	srli	a6,a5,0x8
    80005db8:	0087d69b          	srliw	a3,a5,0x8
    80005dbc:	f8a401a3          	sb	a0,-125(s0)
    80005dc0:	28b67663          	bgeu	a2,a1,8000604c <__printf+0x614>
    80005dc4:	00f6f693          	andi	a3,a3,15
    80005dc8:	00dd86b3          	add	a3,s11,a3
    80005dcc:	0006c583          	lbu	a1,0(a3)
    80005dd0:	00c7d513          	srli	a0,a5,0xc
    80005dd4:	00c7d69b          	srliw	a3,a5,0xc
    80005dd8:	f8b40223          	sb	a1,-124(s0)
    80005ddc:	29067a63          	bgeu	a2,a6,80006070 <__printf+0x638>
    80005de0:	00f6f693          	andi	a3,a3,15
    80005de4:	00dd86b3          	add	a3,s11,a3
    80005de8:	0006c583          	lbu	a1,0(a3)
    80005dec:	0107d813          	srli	a6,a5,0x10
    80005df0:	0107d69b          	srliw	a3,a5,0x10
    80005df4:	f8b402a3          	sb	a1,-123(s0)
    80005df8:	28a67263          	bgeu	a2,a0,8000607c <__printf+0x644>
    80005dfc:	00f6f693          	andi	a3,a3,15
    80005e00:	00dd86b3          	add	a3,s11,a3
    80005e04:	0006c683          	lbu	a3,0(a3)
    80005e08:	0147d79b          	srliw	a5,a5,0x14
    80005e0c:	f8d40323          	sb	a3,-122(s0)
    80005e10:	21067663          	bgeu	a2,a6,8000601c <__printf+0x5e4>
    80005e14:	02079793          	slli	a5,a5,0x20
    80005e18:	0207d793          	srli	a5,a5,0x20
    80005e1c:	00fd8db3          	add	s11,s11,a5
    80005e20:	000dc683          	lbu	a3,0(s11)
    80005e24:	00800793          	li	a5,8
    80005e28:	00700c93          	li	s9,7
    80005e2c:	f8d403a3          	sb	a3,-121(s0)
    80005e30:	00075c63          	bgez	a4,80005e48 <__printf+0x410>
    80005e34:	f9040713          	addi	a4,s0,-112
    80005e38:	00f70733          	add	a4,a4,a5
    80005e3c:	02d00693          	li	a3,45
    80005e40:	fed70823          	sb	a3,-16(a4)
    80005e44:	00078c93          	mv	s9,a5
    80005e48:	f8040793          	addi	a5,s0,-128
    80005e4c:	01978cb3          	add	s9,a5,s9
    80005e50:	f7f40d13          	addi	s10,s0,-129
    80005e54:	000cc503          	lbu	a0,0(s9)
    80005e58:	fffc8c93          	addi	s9,s9,-1
    80005e5c:	00000097          	auipc	ra,0x0
    80005e60:	9f8080e7          	jalr	-1544(ra) # 80005854 <consputc>
    80005e64:	ff9d18e3          	bne	s10,s9,80005e54 <__printf+0x41c>
    80005e68:	0100006f          	j	80005e78 <__printf+0x440>
    80005e6c:	00000097          	auipc	ra,0x0
    80005e70:	9e8080e7          	jalr	-1560(ra) # 80005854 <consputc>
    80005e74:	000c8493          	mv	s1,s9
    80005e78:	00094503          	lbu	a0,0(s2)
    80005e7c:	c60510e3          	bnez	a0,80005adc <__printf+0xa4>
    80005e80:	e40c0ee3          	beqz	s8,80005cdc <__printf+0x2a4>
    80005e84:	00004517          	auipc	a0,0x4
    80005e88:	44c50513          	addi	a0,a0,1100 # 8000a2d0 <pr>
    80005e8c:	00001097          	auipc	ra,0x1
    80005e90:	94c080e7          	jalr	-1716(ra) # 800067d8 <release>
    80005e94:	e49ff06f          	j	80005cdc <__printf+0x2a4>
    80005e98:	f7843783          	ld	a5,-136(s0)
    80005e9c:	03000513          	li	a0,48
    80005ea0:	01000d13          	li	s10,16
    80005ea4:	00878713          	addi	a4,a5,8
    80005ea8:	0007bc83          	ld	s9,0(a5)
    80005eac:	f6e43c23          	sd	a4,-136(s0)
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	9a4080e7          	jalr	-1628(ra) # 80005854 <consputc>
    80005eb8:	07800513          	li	a0,120
    80005ebc:	00000097          	auipc	ra,0x0
    80005ec0:	998080e7          	jalr	-1640(ra) # 80005854 <consputc>
    80005ec4:	00002d97          	auipc	s11,0x2
    80005ec8:	844d8d93          	addi	s11,s11,-1980 # 80007708 <digits>
    80005ecc:	03ccd793          	srli	a5,s9,0x3c
    80005ed0:	00fd87b3          	add	a5,s11,a5
    80005ed4:	0007c503          	lbu	a0,0(a5)
    80005ed8:	fffd0d1b          	addiw	s10,s10,-1
    80005edc:	004c9c93          	slli	s9,s9,0x4
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	974080e7          	jalr	-1676(ra) # 80005854 <consputc>
    80005ee8:	fe0d12e3          	bnez	s10,80005ecc <__printf+0x494>
    80005eec:	f8dff06f          	j	80005e78 <__printf+0x440>
    80005ef0:	f7843783          	ld	a5,-136(s0)
    80005ef4:	0007bc83          	ld	s9,0(a5)
    80005ef8:	00878793          	addi	a5,a5,8
    80005efc:	f6f43c23          	sd	a5,-136(s0)
    80005f00:	000c9a63          	bnez	s9,80005f14 <__printf+0x4dc>
    80005f04:	1080006f          	j	8000600c <__printf+0x5d4>
    80005f08:	001c8c93          	addi	s9,s9,1
    80005f0c:	00000097          	auipc	ra,0x0
    80005f10:	948080e7          	jalr	-1720(ra) # 80005854 <consputc>
    80005f14:	000cc503          	lbu	a0,0(s9)
    80005f18:	fe0518e3          	bnez	a0,80005f08 <__printf+0x4d0>
    80005f1c:	f5dff06f          	j	80005e78 <__printf+0x440>
    80005f20:	02500513          	li	a0,37
    80005f24:	00000097          	auipc	ra,0x0
    80005f28:	930080e7          	jalr	-1744(ra) # 80005854 <consputc>
    80005f2c:	000c8513          	mv	a0,s9
    80005f30:	00000097          	auipc	ra,0x0
    80005f34:	924080e7          	jalr	-1756(ra) # 80005854 <consputc>
    80005f38:	f41ff06f          	j	80005e78 <__printf+0x440>
    80005f3c:	02500513          	li	a0,37
    80005f40:	00000097          	auipc	ra,0x0
    80005f44:	914080e7          	jalr	-1772(ra) # 80005854 <consputc>
    80005f48:	f31ff06f          	j	80005e78 <__printf+0x440>
    80005f4c:	00030513          	mv	a0,t1
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	7bc080e7          	jalr	1980(ra) # 8000670c <acquire>
    80005f58:	b4dff06f          	j	80005aa4 <__printf+0x6c>
    80005f5c:	40c0053b          	negw	a0,a2
    80005f60:	00a00713          	li	a4,10
    80005f64:	02e576bb          	remuw	a3,a0,a4
    80005f68:	00001d97          	auipc	s11,0x1
    80005f6c:	7a0d8d93          	addi	s11,s11,1952 # 80007708 <digits>
    80005f70:	ff700593          	li	a1,-9
    80005f74:	02069693          	slli	a3,a3,0x20
    80005f78:	0206d693          	srli	a3,a3,0x20
    80005f7c:	00dd86b3          	add	a3,s11,a3
    80005f80:	0006c683          	lbu	a3,0(a3)
    80005f84:	02e557bb          	divuw	a5,a0,a4
    80005f88:	f8d40023          	sb	a3,-128(s0)
    80005f8c:	10b65e63          	bge	a2,a1,800060a8 <__printf+0x670>
    80005f90:	06300593          	li	a1,99
    80005f94:	02e7f6bb          	remuw	a3,a5,a4
    80005f98:	02069693          	slli	a3,a3,0x20
    80005f9c:	0206d693          	srli	a3,a3,0x20
    80005fa0:	00dd86b3          	add	a3,s11,a3
    80005fa4:	0006c683          	lbu	a3,0(a3)
    80005fa8:	02e7d73b          	divuw	a4,a5,a4
    80005fac:	00200793          	li	a5,2
    80005fb0:	f8d400a3          	sb	a3,-127(s0)
    80005fb4:	bca5ece3          	bltu	a1,a0,80005b8c <__printf+0x154>
    80005fb8:	ce5ff06f          	j	80005c9c <__printf+0x264>
    80005fbc:	40e007bb          	negw	a5,a4
    80005fc0:	00001d97          	auipc	s11,0x1
    80005fc4:	748d8d93          	addi	s11,s11,1864 # 80007708 <digits>
    80005fc8:	00f7f693          	andi	a3,a5,15
    80005fcc:	00dd86b3          	add	a3,s11,a3
    80005fd0:	0006c583          	lbu	a1,0(a3)
    80005fd4:	ff100613          	li	a2,-15
    80005fd8:	0047d69b          	srliw	a3,a5,0x4
    80005fdc:	f8b40023          	sb	a1,-128(s0)
    80005fe0:	0047d59b          	srliw	a1,a5,0x4
    80005fe4:	0ac75e63          	bge	a4,a2,800060a0 <__printf+0x668>
    80005fe8:	00f6f693          	andi	a3,a3,15
    80005fec:	00dd86b3          	add	a3,s11,a3
    80005ff0:	0006c603          	lbu	a2,0(a3)
    80005ff4:	00f00693          	li	a3,15
    80005ff8:	0087d79b          	srliw	a5,a5,0x8
    80005ffc:	f8c400a3          	sb	a2,-127(s0)
    80006000:	d8b6e4e3          	bltu	a3,a1,80005d88 <__printf+0x350>
    80006004:	00200793          	li	a5,2
    80006008:	e2dff06f          	j	80005e34 <__printf+0x3fc>
    8000600c:	00001c97          	auipc	s9,0x1
    80006010:	6dcc8c93          	addi	s9,s9,1756 # 800076e8 <CONSOLE_STATUS+0x6d8>
    80006014:	02800513          	li	a0,40
    80006018:	ef1ff06f          	j	80005f08 <__printf+0x4d0>
    8000601c:	00700793          	li	a5,7
    80006020:	00600c93          	li	s9,6
    80006024:	e0dff06f          	j	80005e30 <__printf+0x3f8>
    80006028:	00700793          	li	a5,7
    8000602c:	00600c93          	li	s9,6
    80006030:	c69ff06f          	j	80005c98 <__printf+0x260>
    80006034:	00300793          	li	a5,3
    80006038:	00200c93          	li	s9,2
    8000603c:	c5dff06f          	j	80005c98 <__printf+0x260>
    80006040:	00300793          	li	a5,3
    80006044:	00200c93          	li	s9,2
    80006048:	de9ff06f          	j	80005e30 <__printf+0x3f8>
    8000604c:	00400793          	li	a5,4
    80006050:	00300c93          	li	s9,3
    80006054:	dddff06f          	j	80005e30 <__printf+0x3f8>
    80006058:	00400793          	li	a5,4
    8000605c:	00300c93          	li	s9,3
    80006060:	c39ff06f          	j	80005c98 <__printf+0x260>
    80006064:	00500793          	li	a5,5
    80006068:	00400c93          	li	s9,4
    8000606c:	c2dff06f          	j	80005c98 <__printf+0x260>
    80006070:	00500793          	li	a5,5
    80006074:	00400c93          	li	s9,4
    80006078:	db9ff06f          	j	80005e30 <__printf+0x3f8>
    8000607c:	00600793          	li	a5,6
    80006080:	00500c93          	li	s9,5
    80006084:	dadff06f          	j	80005e30 <__printf+0x3f8>
    80006088:	00600793          	li	a5,6
    8000608c:	00500c93          	li	s9,5
    80006090:	c09ff06f          	j	80005c98 <__printf+0x260>
    80006094:	00800793          	li	a5,8
    80006098:	00700c93          	li	s9,7
    8000609c:	bfdff06f          	j	80005c98 <__printf+0x260>
    800060a0:	00100793          	li	a5,1
    800060a4:	d91ff06f          	j	80005e34 <__printf+0x3fc>
    800060a8:	00100793          	li	a5,1
    800060ac:	bf1ff06f          	j	80005c9c <__printf+0x264>
    800060b0:	00900793          	li	a5,9
    800060b4:	00800c93          	li	s9,8
    800060b8:	be1ff06f          	j	80005c98 <__printf+0x260>
    800060bc:	00001517          	auipc	a0,0x1
    800060c0:	63450513          	addi	a0,a0,1588 # 800076f0 <CONSOLE_STATUS+0x6e0>
    800060c4:	00000097          	auipc	ra,0x0
    800060c8:	918080e7          	jalr	-1768(ra) # 800059dc <panic>

00000000800060cc <printfinit>:
    800060cc:	fe010113          	addi	sp,sp,-32
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	00113c23          	sd	ra,24(sp)
    800060dc:	02010413          	addi	s0,sp,32
    800060e0:	00004497          	auipc	s1,0x4
    800060e4:	1f048493          	addi	s1,s1,496 # 8000a2d0 <pr>
    800060e8:	00048513          	mv	a0,s1
    800060ec:	00001597          	auipc	a1,0x1
    800060f0:	61458593          	addi	a1,a1,1556 # 80007700 <CONSOLE_STATUS+0x6f0>
    800060f4:	00000097          	auipc	ra,0x0
    800060f8:	5f4080e7          	jalr	1524(ra) # 800066e8 <initlock>
    800060fc:	01813083          	ld	ra,24(sp)
    80006100:	01013403          	ld	s0,16(sp)
    80006104:	0004ac23          	sw	zero,24(s1)
    80006108:	00813483          	ld	s1,8(sp)
    8000610c:	02010113          	addi	sp,sp,32
    80006110:	00008067          	ret

0000000080006114 <uartinit>:
    80006114:	ff010113          	addi	sp,sp,-16
    80006118:	00813423          	sd	s0,8(sp)
    8000611c:	01010413          	addi	s0,sp,16
    80006120:	100007b7          	lui	a5,0x10000
    80006124:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006128:	f8000713          	li	a4,-128
    8000612c:	00e781a3          	sb	a4,3(a5)
    80006130:	00300713          	li	a4,3
    80006134:	00e78023          	sb	a4,0(a5)
    80006138:	000780a3          	sb	zero,1(a5)
    8000613c:	00e781a3          	sb	a4,3(a5)
    80006140:	00700693          	li	a3,7
    80006144:	00d78123          	sb	a3,2(a5)
    80006148:	00e780a3          	sb	a4,1(a5)
    8000614c:	00813403          	ld	s0,8(sp)
    80006150:	01010113          	addi	sp,sp,16
    80006154:	00008067          	ret

0000000080006158 <uartputc>:
    80006158:	00003797          	auipc	a5,0x3
    8000615c:	e807a783          	lw	a5,-384(a5) # 80008fd8 <panicked>
    80006160:	00078463          	beqz	a5,80006168 <uartputc+0x10>
    80006164:	0000006f          	j	80006164 <uartputc+0xc>
    80006168:	fd010113          	addi	sp,sp,-48
    8000616c:	02813023          	sd	s0,32(sp)
    80006170:	00913c23          	sd	s1,24(sp)
    80006174:	01213823          	sd	s2,16(sp)
    80006178:	01313423          	sd	s3,8(sp)
    8000617c:	02113423          	sd	ra,40(sp)
    80006180:	03010413          	addi	s0,sp,48
    80006184:	00003917          	auipc	s2,0x3
    80006188:	e5c90913          	addi	s2,s2,-420 # 80008fe0 <uart_tx_r>
    8000618c:	00093783          	ld	a5,0(s2)
    80006190:	00003497          	auipc	s1,0x3
    80006194:	e5848493          	addi	s1,s1,-424 # 80008fe8 <uart_tx_w>
    80006198:	0004b703          	ld	a4,0(s1)
    8000619c:	02078693          	addi	a3,a5,32
    800061a0:	00050993          	mv	s3,a0
    800061a4:	02e69c63          	bne	a3,a4,800061dc <uartputc+0x84>
    800061a8:	00001097          	auipc	ra,0x1
    800061ac:	834080e7          	jalr	-1996(ra) # 800069dc <push_on>
    800061b0:	00093783          	ld	a5,0(s2)
    800061b4:	0004b703          	ld	a4,0(s1)
    800061b8:	02078793          	addi	a5,a5,32
    800061bc:	00e79463          	bne	a5,a4,800061c4 <uartputc+0x6c>
    800061c0:	0000006f          	j	800061c0 <uartputc+0x68>
    800061c4:	00001097          	auipc	ra,0x1
    800061c8:	88c080e7          	jalr	-1908(ra) # 80006a50 <pop_on>
    800061cc:	00093783          	ld	a5,0(s2)
    800061d0:	0004b703          	ld	a4,0(s1)
    800061d4:	02078693          	addi	a3,a5,32
    800061d8:	fce688e3          	beq	a3,a4,800061a8 <uartputc+0x50>
    800061dc:	01f77693          	andi	a3,a4,31
    800061e0:	00004597          	auipc	a1,0x4
    800061e4:	11058593          	addi	a1,a1,272 # 8000a2f0 <uart_tx_buf>
    800061e8:	00d586b3          	add	a3,a1,a3
    800061ec:	00170713          	addi	a4,a4,1
    800061f0:	01368023          	sb	s3,0(a3)
    800061f4:	00e4b023          	sd	a4,0(s1)
    800061f8:	10000637          	lui	a2,0x10000
    800061fc:	02f71063          	bne	a4,a5,8000621c <uartputc+0xc4>
    80006200:	0340006f          	j	80006234 <uartputc+0xdc>
    80006204:	00074703          	lbu	a4,0(a4)
    80006208:	00f93023          	sd	a5,0(s2)
    8000620c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006210:	00093783          	ld	a5,0(s2)
    80006214:	0004b703          	ld	a4,0(s1)
    80006218:	00f70e63          	beq	a4,a5,80006234 <uartputc+0xdc>
    8000621c:	00564683          	lbu	a3,5(a2)
    80006220:	01f7f713          	andi	a4,a5,31
    80006224:	00e58733          	add	a4,a1,a4
    80006228:	0206f693          	andi	a3,a3,32
    8000622c:	00178793          	addi	a5,a5,1
    80006230:	fc069ae3          	bnez	a3,80006204 <uartputc+0xac>
    80006234:	02813083          	ld	ra,40(sp)
    80006238:	02013403          	ld	s0,32(sp)
    8000623c:	01813483          	ld	s1,24(sp)
    80006240:	01013903          	ld	s2,16(sp)
    80006244:	00813983          	ld	s3,8(sp)
    80006248:	03010113          	addi	sp,sp,48
    8000624c:	00008067          	ret

0000000080006250 <uartputc_sync>:
    80006250:	ff010113          	addi	sp,sp,-16
    80006254:	00813423          	sd	s0,8(sp)
    80006258:	01010413          	addi	s0,sp,16
    8000625c:	00003717          	auipc	a4,0x3
    80006260:	d7c72703          	lw	a4,-644(a4) # 80008fd8 <panicked>
    80006264:	02071663          	bnez	a4,80006290 <uartputc_sync+0x40>
    80006268:	00050793          	mv	a5,a0
    8000626c:	100006b7          	lui	a3,0x10000
    80006270:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006274:	02077713          	andi	a4,a4,32
    80006278:	fe070ce3          	beqz	a4,80006270 <uartputc_sync+0x20>
    8000627c:	0ff7f793          	andi	a5,a5,255
    80006280:	00f68023          	sb	a5,0(a3)
    80006284:	00813403          	ld	s0,8(sp)
    80006288:	01010113          	addi	sp,sp,16
    8000628c:	00008067          	ret
    80006290:	0000006f          	j	80006290 <uartputc_sync+0x40>

0000000080006294 <uartstart>:
    80006294:	ff010113          	addi	sp,sp,-16
    80006298:	00813423          	sd	s0,8(sp)
    8000629c:	01010413          	addi	s0,sp,16
    800062a0:	00003617          	auipc	a2,0x3
    800062a4:	d4060613          	addi	a2,a2,-704 # 80008fe0 <uart_tx_r>
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	d4050513          	addi	a0,a0,-704 # 80008fe8 <uart_tx_w>
    800062b0:	00063783          	ld	a5,0(a2)
    800062b4:	00053703          	ld	a4,0(a0)
    800062b8:	04f70263          	beq	a4,a5,800062fc <uartstart+0x68>
    800062bc:	100005b7          	lui	a1,0x10000
    800062c0:	00004817          	auipc	a6,0x4
    800062c4:	03080813          	addi	a6,a6,48 # 8000a2f0 <uart_tx_buf>
    800062c8:	01c0006f          	j	800062e4 <uartstart+0x50>
    800062cc:	0006c703          	lbu	a4,0(a3)
    800062d0:	00f63023          	sd	a5,0(a2)
    800062d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800062d8:	00063783          	ld	a5,0(a2)
    800062dc:	00053703          	ld	a4,0(a0)
    800062e0:	00f70e63          	beq	a4,a5,800062fc <uartstart+0x68>
    800062e4:	01f7f713          	andi	a4,a5,31
    800062e8:	00e806b3          	add	a3,a6,a4
    800062ec:	0055c703          	lbu	a4,5(a1)
    800062f0:	00178793          	addi	a5,a5,1
    800062f4:	02077713          	andi	a4,a4,32
    800062f8:	fc071ae3          	bnez	a4,800062cc <uartstart+0x38>
    800062fc:	00813403          	ld	s0,8(sp)
    80006300:	01010113          	addi	sp,sp,16
    80006304:	00008067          	ret

0000000080006308 <uartgetc>:
    80006308:	ff010113          	addi	sp,sp,-16
    8000630c:	00813423          	sd	s0,8(sp)
    80006310:	01010413          	addi	s0,sp,16
    80006314:	10000737          	lui	a4,0x10000
    80006318:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000631c:	0017f793          	andi	a5,a5,1
    80006320:	00078c63          	beqz	a5,80006338 <uartgetc+0x30>
    80006324:	00074503          	lbu	a0,0(a4)
    80006328:	0ff57513          	andi	a0,a0,255
    8000632c:	00813403          	ld	s0,8(sp)
    80006330:	01010113          	addi	sp,sp,16
    80006334:	00008067          	ret
    80006338:	fff00513          	li	a0,-1
    8000633c:	ff1ff06f          	j	8000632c <uartgetc+0x24>

0000000080006340 <uartintr>:
    80006340:	100007b7          	lui	a5,0x10000
    80006344:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006348:	0017f793          	andi	a5,a5,1
    8000634c:	0a078463          	beqz	a5,800063f4 <uartintr+0xb4>
    80006350:	fe010113          	addi	sp,sp,-32
    80006354:	00813823          	sd	s0,16(sp)
    80006358:	00913423          	sd	s1,8(sp)
    8000635c:	00113c23          	sd	ra,24(sp)
    80006360:	02010413          	addi	s0,sp,32
    80006364:	100004b7          	lui	s1,0x10000
    80006368:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000636c:	0ff57513          	andi	a0,a0,255
    80006370:	fffff097          	auipc	ra,0xfffff
    80006374:	534080e7          	jalr	1332(ra) # 800058a4 <consoleintr>
    80006378:	0054c783          	lbu	a5,5(s1)
    8000637c:	0017f793          	andi	a5,a5,1
    80006380:	fe0794e3          	bnez	a5,80006368 <uartintr+0x28>
    80006384:	00003617          	auipc	a2,0x3
    80006388:	c5c60613          	addi	a2,a2,-932 # 80008fe0 <uart_tx_r>
    8000638c:	00003517          	auipc	a0,0x3
    80006390:	c5c50513          	addi	a0,a0,-932 # 80008fe8 <uart_tx_w>
    80006394:	00063783          	ld	a5,0(a2)
    80006398:	00053703          	ld	a4,0(a0)
    8000639c:	04f70263          	beq	a4,a5,800063e0 <uartintr+0xa0>
    800063a0:	100005b7          	lui	a1,0x10000
    800063a4:	00004817          	auipc	a6,0x4
    800063a8:	f4c80813          	addi	a6,a6,-180 # 8000a2f0 <uart_tx_buf>
    800063ac:	01c0006f          	j	800063c8 <uartintr+0x88>
    800063b0:	0006c703          	lbu	a4,0(a3)
    800063b4:	00f63023          	sd	a5,0(a2)
    800063b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800063bc:	00063783          	ld	a5,0(a2)
    800063c0:	00053703          	ld	a4,0(a0)
    800063c4:	00f70e63          	beq	a4,a5,800063e0 <uartintr+0xa0>
    800063c8:	01f7f713          	andi	a4,a5,31
    800063cc:	00e806b3          	add	a3,a6,a4
    800063d0:	0055c703          	lbu	a4,5(a1)
    800063d4:	00178793          	addi	a5,a5,1
    800063d8:	02077713          	andi	a4,a4,32
    800063dc:	fc071ae3          	bnez	a4,800063b0 <uartintr+0x70>
    800063e0:	01813083          	ld	ra,24(sp)
    800063e4:	01013403          	ld	s0,16(sp)
    800063e8:	00813483          	ld	s1,8(sp)
    800063ec:	02010113          	addi	sp,sp,32
    800063f0:	00008067          	ret
    800063f4:	00003617          	auipc	a2,0x3
    800063f8:	bec60613          	addi	a2,a2,-1044 # 80008fe0 <uart_tx_r>
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	bec50513          	addi	a0,a0,-1044 # 80008fe8 <uart_tx_w>
    80006404:	00063783          	ld	a5,0(a2)
    80006408:	00053703          	ld	a4,0(a0)
    8000640c:	04f70263          	beq	a4,a5,80006450 <uartintr+0x110>
    80006410:	100005b7          	lui	a1,0x10000
    80006414:	00004817          	auipc	a6,0x4
    80006418:	edc80813          	addi	a6,a6,-292 # 8000a2f0 <uart_tx_buf>
    8000641c:	01c0006f          	j	80006438 <uartintr+0xf8>
    80006420:	0006c703          	lbu	a4,0(a3)
    80006424:	00f63023          	sd	a5,0(a2)
    80006428:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000642c:	00063783          	ld	a5,0(a2)
    80006430:	00053703          	ld	a4,0(a0)
    80006434:	02f70063          	beq	a4,a5,80006454 <uartintr+0x114>
    80006438:	01f7f713          	andi	a4,a5,31
    8000643c:	00e806b3          	add	a3,a6,a4
    80006440:	0055c703          	lbu	a4,5(a1)
    80006444:	00178793          	addi	a5,a5,1
    80006448:	02077713          	andi	a4,a4,32
    8000644c:	fc071ae3          	bnez	a4,80006420 <uartintr+0xe0>
    80006450:	00008067          	ret
    80006454:	00008067          	ret

0000000080006458 <kinit>:
    80006458:	fc010113          	addi	sp,sp,-64
    8000645c:	02913423          	sd	s1,40(sp)
    80006460:	fffff7b7          	lui	a5,0xfffff
    80006464:	00005497          	auipc	s1,0x5
    80006468:	eab48493          	addi	s1,s1,-341 # 8000b30f <end+0xfff>
    8000646c:	02813823          	sd	s0,48(sp)
    80006470:	01313c23          	sd	s3,24(sp)
    80006474:	00f4f4b3          	and	s1,s1,a5
    80006478:	02113c23          	sd	ra,56(sp)
    8000647c:	03213023          	sd	s2,32(sp)
    80006480:	01413823          	sd	s4,16(sp)
    80006484:	01513423          	sd	s5,8(sp)
    80006488:	04010413          	addi	s0,sp,64
    8000648c:	000017b7          	lui	a5,0x1
    80006490:	01100993          	li	s3,17
    80006494:	00f487b3          	add	a5,s1,a5
    80006498:	01b99993          	slli	s3,s3,0x1b
    8000649c:	06f9e063          	bltu	s3,a5,800064fc <kinit+0xa4>
    800064a0:	00004a97          	auipc	s5,0x4
    800064a4:	e70a8a93          	addi	s5,s5,-400 # 8000a310 <end>
    800064a8:	0754ec63          	bltu	s1,s5,80006520 <kinit+0xc8>
    800064ac:	0734fa63          	bgeu	s1,s3,80006520 <kinit+0xc8>
    800064b0:	00088a37          	lui	s4,0x88
    800064b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800064b8:	00003917          	auipc	s2,0x3
    800064bc:	b3890913          	addi	s2,s2,-1224 # 80008ff0 <kmem>
    800064c0:	00ca1a13          	slli	s4,s4,0xc
    800064c4:	0140006f          	j	800064d8 <kinit+0x80>
    800064c8:	000017b7          	lui	a5,0x1
    800064cc:	00f484b3          	add	s1,s1,a5
    800064d0:	0554e863          	bltu	s1,s5,80006520 <kinit+0xc8>
    800064d4:	0534f663          	bgeu	s1,s3,80006520 <kinit+0xc8>
    800064d8:	00001637          	lui	a2,0x1
    800064dc:	00100593          	li	a1,1
    800064e0:	00048513          	mv	a0,s1
    800064e4:	00000097          	auipc	ra,0x0
    800064e8:	5e4080e7          	jalr	1508(ra) # 80006ac8 <__memset>
    800064ec:	00093783          	ld	a5,0(s2)
    800064f0:	00f4b023          	sd	a5,0(s1)
    800064f4:	00993023          	sd	s1,0(s2)
    800064f8:	fd4498e3          	bne	s1,s4,800064c8 <kinit+0x70>
    800064fc:	03813083          	ld	ra,56(sp)
    80006500:	03013403          	ld	s0,48(sp)
    80006504:	02813483          	ld	s1,40(sp)
    80006508:	02013903          	ld	s2,32(sp)
    8000650c:	01813983          	ld	s3,24(sp)
    80006510:	01013a03          	ld	s4,16(sp)
    80006514:	00813a83          	ld	s5,8(sp)
    80006518:	04010113          	addi	sp,sp,64
    8000651c:	00008067          	ret
    80006520:	00001517          	auipc	a0,0x1
    80006524:	20050513          	addi	a0,a0,512 # 80007720 <digits+0x18>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	4b4080e7          	jalr	1204(ra) # 800059dc <panic>

0000000080006530 <freerange>:
    80006530:	fc010113          	addi	sp,sp,-64
    80006534:	000017b7          	lui	a5,0x1
    80006538:	02913423          	sd	s1,40(sp)
    8000653c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006540:	009504b3          	add	s1,a0,s1
    80006544:	fffff537          	lui	a0,0xfffff
    80006548:	02813823          	sd	s0,48(sp)
    8000654c:	02113c23          	sd	ra,56(sp)
    80006550:	03213023          	sd	s2,32(sp)
    80006554:	01313c23          	sd	s3,24(sp)
    80006558:	01413823          	sd	s4,16(sp)
    8000655c:	01513423          	sd	s5,8(sp)
    80006560:	01613023          	sd	s6,0(sp)
    80006564:	04010413          	addi	s0,sp,64
    80006568:	00a4f4b3          	and	s1,s1,a0
    8000656c:	00f487b3          	add	a5,s1,a5
    80006570:	06f5e463          	bltu	a1,a5,800065d8 <freerange+0xa8>
    80006574:	00004a97          	auipc	s5,0x4
    80006578:	d9ca8a93          	addi	s5,s5,-612 # 8000a310 <end>
    8000657c:	0954e263          	bltu	s1,s5,80006600 <freerange+0xd0>
    80006580:	01100993          	li	s3,17
    80006584:	01b99993          	slli	s3,s3,0x1b
    80006588:	0734fc63          	bgeu	s1,s3,80006600 <freerange+0xd0>
    8000658c:	00058a13          	mv	s4,a1
    80006590:	00003917          	auipc	s2,0x3
    80006594:	a6090913          	addi	s2,s2,-1440 # 80008ff0 <kmem>
    80006598:	00002b37          	lui	s6,0x2
    8000659c:	0140006f          	j	800065b0 <freerange+0x80>
    800065a0:	000017b7          	lui	a5,0x1
    800065a4:	00f484b3          	add	s1,s1,a5
    800065a8:	0554ec63          	bltu	s1,s5,80006600 <freerange+0xd0>
    800065ac:	0534fa63          	bgeu	s1,s3,80006600 <freerange+0xd0>
    800065b0:	00001637          	lui	a2,0x1
    800065b4:	00100593          	li	a1,1
    800065b8:	00048513          	mv	a0,s1
    800065bc:	00000097          	auipc	ra,0x0
    800065c0:	50c080e7          	jalr	1292(ra) # 80006ac8 <__memset>
    800065c4:	00093703          	ld	a4,0(s2)
    800065c8:	016487b3          	add	a5,s1,s6
    800065cc:	00e4b023          	sd	a4,0(s1)
    800065d0:	00993023          	sd	s1,0(s2)
    800065d4:	fcfa76e3          	bgeu	s4,a5,800065a0 <freerange+0x70>
    800065d8:	03813083          	ld	ra,56(sp)
    800065dc:	03013403          	ld	s0,48(sp)
    800065e0:	02813483          	ld	s1,40(sp)
    800065e4:	02013903          	ld	s2,32(sp)
    800065e8:	01813983          	ld	s3,24(sp)
    800065ec:	01013a03          	ld	s4,16(sp)
    800065f0:	00813a83          	ld	s5,8(sp)
    800065f4:	00013b03          	ld	s6,0(sp)
    800065f8:	04010113          	addi	sp,sp,64
    800065fc:	00008067          	ret
    80006600:	00001517          	auipc	a0,0x1
    80006604:	12050513          	addi	a0,a0,288 # 80007720 <digits+0x18>
    80006608:	fffff097          	auipc	ra,0xfffff
    8000660c:	3d4080e7          	jalr	980(ra) # 800059dc <panic>

0000000080006610 <kfree>:
    80006610:	fe010113          	addi	sp,sp,-32
    80006614:	00813823          	sd	s0,16(sp)
    80006618:	00113c23          	sd	ra,24(sp)
    8000661c:	00913423          	sd	s1,8(sp)
    80006620:	02010413          	addi	s0,sp,32
    80006624:	03451793          	slli	a5,a0,0x34
    80006628:	04079c63          	bnez	a5,80006680 <kfree+0x70>
    8000662c:	00004797          	auipc	a5,0x4
    80006630:	ce478793          	addi	a5,a5,-796 # 8000a310 <end>
    80006634:	00050493          	mv	s1,a0
    80006638:	04f56463          	bltu	a0,a5,80006680 <kfree+0x70>
    8000663c:	01100793          	li	a5,17
    80006640:	01b79793          	slli	a5,a5,0x1b
    80006644:	02f57e63          	bgeu	a0,a5,80006680 <kfree+0x70>
    80006648:	00001637          	lui	a2,0x1
    8000664c:	00100593          	li	a1,1
    80006650:	00000097          	auipc	ra,0x0
    80006654:	478080e7          	jalr	1144(ra) # 80006ac8 <__memset>
    80006658:	00003797          	auipc	a5,0x3
    8000665c:	99878793          	addi	a5,a5,-1640 # 80008ff0 <kmem>
    80006660:	0007b703          	ld	a4,0(a5)
    80006664:	01813083          	ld	ra,24(sp)
    80006668:	01013403          	ld	s0,16(sp)
    8000666c:	00e4b023          	sd	a4,0(s1)
    80006670:	0097b023          	sd	s1,0(a5)
    80006674:	00813483          	ld	s1,8(sp)
    80006678:	02010113          	addi	sp,sp,32
    8000667c:	00008067          	ret
    80006680:	00001517          	auipc	a0,0x1
    80006684:	0a050513          	addi	a0,a0,160 # 80007720 <digits+0x18>
    80006688:	fffff097          	auipc	ra,0xfffff
    8000668c:	354080e7          	jalr	852(ra) # 800059dc <panic>

0000000080006690 <kalloc>:
    80006690:	fe010113          	addi	sp,sp,-32
    80006694:	00813823          	sd	s0,16(sp)
    80006698:	00913423          	sd	s1,8(sp)
    8000669c:	00113c23          	sd	ra,24(sp)
    800066a0:	02010413          	addi	s0,sp,32
    800066a4:	00003797          	auipc	a5,0x3
    800066a8:	94c78793          	addi	a5,a5,-1716 # 80008ff0 <kmem>
    800066ac:	0007b483          	ld	s1,0(a5)
    800066b0:	02048063          	beqz	s1,800066d0 <kalloc+0x40>
    800066b4:	0004b703          	ld	a4,0(s1)
    800066b8:	00001637          	lui	a2,0x1
    800066bc:	00500593          	li	a1,5
    800066c0:	00048513          	mv	a0,s1
    800066c4:	00e7b023          	sd	a4,0(a5)
    800066c8:	00000097          	auipc	ra,0x0
    800066cc:	400080e7          	jalr	1024(ra) # 80006ac8 <__memset>
    800066d0:	01813083          	ld	ra,24(sp)
    800066d4:	01013403          	ld	s0,16(sp)
    800066d8:	00048513          	mv	a0,s1
    800066dc:	00813483          	ld	s1,8(sp)
    800066e0:	02010113          	addi	sp,sp,32
    800066e4:	00008067          	ret

00000000800066e8 <initlock>:
    800066e8:	ff010113          	addi	sp,sp,-16
    800066ec:	00813423          	sd	s0,8(sp)
    800066f0:	01010413          	addi	s0,sp,16
    800066f4:	00813403          	ld	s0,8(sp)
    800066f8:	00b53423          	sd	a1,8(a0)
    800066fc:	00052023          	sw	zero,0(a0)
    80006700:	00053823          	sd	zero,16(a0)
    80006704:	01010113          	addi	sp,sp,16
    80006708:	00008067          	ret

000000008000670c <acquire>:
    8000670c:	fe010113          	addi	sp,sp,-32
    80006710:	00813823          	sd	s0,16(sp)
    80006714:	00913423          	sd	s1,8(sp)
    80006718:	00113c23          	sd	ra,24(sp)
    8000671c:	01213023          	sd	s2,0(sp)
    80006720:	02010413          	addi	s0,sp,32
    80006724:	00050493          	mv	s1,a0
    80006728:	10002973          	csrr	s2,sstatus
    8000672c:	100027f3          	csrr	a5,sstatus
    80006730:	ffd7f793          	andi	a5,a5,-3
    80006734:	10079073          	csrw	sstatus,a5
    80006738:	fffff097          	auipc	ra,0xfffff
    8000673c:	8e8080e7          	jalr	-1816(ra) # 80005020 <mycpu>
    80006740:	07852783          	lw	a5,120(a0)
    80006744:	06078e63          	beqz	a5,800067c0 <acquire+0xb4>
    80006748:	fffff097          	auipc	ra,0xfffff
    8000674c:	8d8080e7          	jalr	-1832(ra) # 80005020 <mycpu>
    80006750:	07852783          	lw	a5,120(a0)
    80006754:	0004a703          	lw	a4,0(s1)
    80006758:	0017879b          	addiw	a5,a5,1
    8000675c:	06f52c23          	sw	a5,120(a0)
    80006760:	04071063          	bnez	a4,800067a0 <acquire+0x94>
    80006764:	00100713          	li	a4,1
    80006768:	00070793          	mv	a5,a4
    8000676c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006770:	0007879b          	sext.w	a5,a5
    80006774:	fe079ae3          	bnez	a5,80006768 <acquire+0x5c>
    80006778:	0ff0000f          	fence
    8000677c:	fffff097          	auipc	ra,0xfffff
    80006780:	8a4080e7          	jalr	-1884(ra) # 80005020 <mycpu>
    80006784:	01813083          	ld	ra,24(sp)
    80006788:	01013403          	ld	s0,16(sp)
    8000678c:	00a4b823          	sd	a0,16(s1)
    80006790:	00013903          	ld	s2,0(sp)
    80006794:	00813483          	ld	s1,8(sp)
    80006798:	02010113          	addi	sp,sp,32
    8000679c:	00008067          	ret
    800067a0:	0104b903          	ld	s2,16(s1)
    800067a4:	fffff097          	auipc	ra,0xfffff
    800067a8:	87c080e7          	jalr	-1924(ra) # 80005020 <mycpu>
    800067ac:	faa91ce3          	bne	s2,a0,80006764 <acquire+0x58>
    800067b0:	00001517          	auipc	a0,0x1
    800067b4:	f7850513          	addi	a0,a0,-136 # 80007728 <digits+0x20>
    800067b8:	fffff097          	auipc	ra,0xfffff
    800067bc:	224080e7          	jalr	548(ra) # 800059dc <panic>
    800067c0:	00195913          	srli	s2,s2,0x1
    800067c4:	fffff097          	auipc	ra,0xfffff
    800067c8:	85c080e7          	jalr	-1956(ra) # 80005020 <mycpu>
    800067cc:	00197913          	andi	s2,s2,1
    800067d0:	07252e23          	sw	s2,124(a0)
    800067d4:	f75ff06f          	j	80006748 <acquire+0x3c>

00000000800067d8 <release>:
    800067d8:	fe010113          	addi	sp,sp,-32
    800067dc:	00813823          	sd	s0,16(sp)
    800067e0:	00113c23          	sd	ra,24(sp)
    800067e4:	00913423          	sd	s1,8(sp)
    800067e8:	01213023          	sd	s2,0(sp)
    800067ec:	02010413          	addi	s0,sp,32
    800067f0:	00052783          	lw	a5,0(a0)
    800067f4:	00079a63          	bnez	a5,80006808 <release+0x30>
    800067f8:	00001517          	auipc	a0,0x1
    800067fc:	f3850513          	addi	a0,a0,-200 # 80007730 <digits+0x28>
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	1dc080e7          	jalr	476(ra) # 800059dc <panic>
    80006808:	01053903          	ld	s2,16(a0)
    8000680c:	00050493          	mv	s1,a0
    80006810:	fffff097          	auipc	ra,0xfffff
    80006814:	810080e7          	jalr	-2032(ra) # 80005020 <mycpu>
    80006818:	fea910e3          	bne	s2,a0,800067f8 <release+0x20>
    8000681c:	0004b823          	sd	zero,16(s1)
    80006820:	0ff0000f          	fence
    80006824:	0f50000f          	fence	iorw,ow
    80006828:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000682c:	ffffe097          	auipc	ra,0xffffe
    80006830:	7f4080e7          	jalr	2036(ra) # 80005020 <mycpu>
    80006834:	100027f3          	csrr	a5,sstatus
    80006838:	0027f793          	andi	a5,a5,2
    8000683c:	04079a63          	bnez	a5,80006890 <release+0xb8>
    80006840:	07852783          	lw	a5,120(a0)
    80006844:	02f05e63          	blez	a5,80006880 <release+0xa8>
    80006848:	fff7871b          	addiw	a4,a5,-1
    8000684c:	06e52c23          	sw	a4,120(a0)
    80006850:	00071c63          	bnez	a4,80006868 <release+0x90>
    80006854:	07c52783          	lw	a5,124(a0)
    80006858:	00078863          	beqz	a5,80006868 <release+0x90>
    8000685c:	100027f3          	csrr	a5,sstatus
    80006860:	0027e793          	ori	a5,a5,2
    80006864:	10079073          	csrw	sstatus,a5
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	01013403          	ld	s0,16(sp)
    80006870:	00813483          	ld	s1,8(sp)
    80006874:	00013903          	ld	s2,0(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret
    80006880:	00001517          	auipc	a0,0x1
    80006884:	ed050513          	addi	a0,a0,-304 # 80007750 <digits+0x48>
    80006888:	fffff097          	auipc	ra,0xfffff
    8000688c:	154080e7          	jalr	340(ra) # 800059dc <panic>
    80006890:	00001517          	auipc	a0,0x1
    80006894:	ea850513          	addi	a0,a0,-344 # 80007738 <digits+0x30>
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	144080e7          	jalr	324(ra) # 800059dc <panic>

00000000800068a0 <holding>:
    800068a0:	00052783          	lw	a5,0(a0)
    800068a4:	00079663          	bnez	a5,800068b0 <holding+0x10>
    800068a8:	00000513          	li	a0,0
    800068ac:	00008067          	ret
    800068b0:	fe010113          	addi	sp,sp,-32
    800068b4:	00813823          	sd	s0,16(sp)
    800068b8:	00913423          	sd	s1,8(sp)
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	02010413          	addi	s0,sp,32
    800068c4:	01053483          	ld	s1,16(a0)
    800068c8:	ffffe097          	auipc	ra,0xffffe
    800068cc:	758080e7          	jalr	1880(ra) # 80005020 <mycpu>
    800068d0:	01813083          	ld	ra,24(sp)
    800068d4:	01013403          	ld	s0,16(sp)
    800068d8:	40a48533          	sub	a0,s1,a0
    800068dc:	00153513          	seqz	a0,a0
    800068e0:	00813483          	ld	s1,8(sp)
    800068e4:	02010113          	addi	sp,sp,32
    800068e8:	00008067          	ret

00000000800068ec <push_off>:
    800068ec:	fe010113          	addi	sp,sp,-32
    800068f0:	00813823          	sd	s0,16(sp)
    800068f4:	00113c23          	sd	ra,24(sp)
    800068f8:	00913423          	sd	s1,8(sp)
    800068fc:	02010413          	addi	s0,sp,32
    80006900:	100024f3          	csrr	s1,sstatus
    80006904:	100027f3          	csrr	a5,sstatus
    80006908:	ffd7f793          	andi	a5,a5,-3
    8000690c:	10079073          	csrw	sstatus,a5
    80006910:	ffffe097          	auipc	ra,0xffffe
    80006914:	710080e7          	jalr	1808(ra) # 80005020 <mycpu>
    80006918:	07852783          	lw	a5,120(a0)
    8000691c:	02078663          	beqz	a5,80006948 <push_off+0x5c>
    80006920:	ffffe097          	auipc	ra,0xffffe
    80006924:	700080e7          	jalr	1792(ra) # 80005020 <mycpu>
    80006928:	07852783          	lw	a5,120(a0)
    8000692c:	01813083          	ld	ra,24(sp)
    80006930:	01013403          	ld	s0,16(sp)
    80006934:	0017879b          	addiw	a5,a5,1
    80006938:	06f52c23          	sw	a5,120(a0)
    8000693c:	00813483          	ld	s1,8(sp)
    80006940:	02010113          	addi	sp,sp,32
    80006944:	00008067          	ret
    80006948:	0014d493          	srli	s1,s1,0x1
    8000694c:	ffffe097          	auipc	ra,0xffffe
    80006950:	6d4080e7          	jalr	1748(ra) # 80005020 <mycpu>
    80006954:	0014f493          	andi	s1,s1,1
    80006958:	06952e23          	sw	s1,124(a0)
    8000695c:	fc5ff06f          	j	80006920 <push_off+0x34>

0000000080006960 <pop_off>:
    80006960:	ff010113          	addi	sp,sp,-16
    80006964:	00813023          	sd	s0,0(sp)
    80006968:	00113423          	sd	ra,8(sp)
    8000696c:	01010413          	addi	s0,sp,16
    80006970:	ffffe097          	auipc	ra,0xffffe
    80006974:	6b0080e7          	jalr	1712(ra) # 80005020 <mycpu>
    80006978:	100027f3          	csrr	a5,sstatus
    8000697c:	0027f793          	andi	a5,a5,2
    80006980:	04079663          	bnez	a5,800069cc <pop_off+0x6c>
    80006984:	07852783          	lw	a5,120(a0)
    80006988:	02f05a63          	blez	a5,800069bc <pop_off+0x5c>
    8000698c:	fff7871b          	addiw	a4,a5,-1
    80006990:	06e52c23          	sw	a4,120(a0)
    80006994:	00071c63          	bnez	a4,800069ac <pop_off+0x4c>
    80006998:	07c52783          	lw	a5,124(a0)
    8000699c:	00078863          	beqz	a5,800069ac <pop_off+0x4c>
    800069a0:	100027f3          	csrr	a5,sstatus
    800069a4:	0027e793          	ori	a5,a5,2
    800069a8:	10079073          	csrw	sstatus,a5
    800069ac:	00813083          	ld	ra,8(sp)
    800069b0:	00013403          	ld	s0,0(sp)
    800069b4:	01010113          	addi	sp,sp,16
    800069b8:	00008067          	ret
    800069bc:	00001517          	auipc	a0,0x1
    800069c0:	d9450513          	addi	a0,a0,-620 # 80007750 <digits+0x48>
    800069c4:	fffff097          	auipc	ra,0xfffff
    800069c8:	018080e7          	jalr	24(ra) # 800059dc <panic>
    800069cc:	00001517          	auipc	a0,0x1
    800069d0:	d6c50513          	addi	a0,a0,-660 # 80007738 <digits+0x30>
    800069d4:	fffff097          	auipc	ra,0xfffff
    800069d8:	008080e7          	jalr	8(ra) # 800059dc <panic>

00000000800069dc <push_on>:
    800069dc:	fe010113          	addi	sp,sp,-32
    800069e0:	00813823          	sd	s0,16(sp)
    800069e4:	00113c23          	sd	ra,24(sp)
    800069e8:	00913423          	sd	s1,8(sp)
    800069ec:	02010413          	addi	s0,sp,32
    800069f0:	100024f3          	csrr	s1,sstatus
    800069f4:	100027f3          	csrr	a5,sstatus
    800069f8:	0027e793          	ori	a5,a5,2
    800069fc:	10079073          	csrw	sstatus,a5
    80006a00:	ffffe097          	auipc	ra,0xffffe
    80006a04:	620080e7          	jalr	1568(ra) # 80005020 <mycpu>
    80006a08:	07852783          	lw	a5,120(a0)
    80006a0c:	02078663          	beqz	a5,80006a38 <push_on+0x5c>
    80006a10:	ffffe097          	auipc	ra,0xffffe
    80006a14:	610080e7          	jalr	1552(ra) # 80005020 <mycpu>
    80006a18:	07852783          	lw	a5,120(a0)
    80006a1c:	01813083          	ld	ra,24(sp)
    80006a20:	01013403          	ld	s0,16(sp)
    80006a24:	0017879b          	addiw	a5,a5,1
    80006a28:	06f52c23          	sw	a5,120(a0)
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	02010113          	addi	sp,sp,32
    80006a34:	00008067          	ret
    80006a38:	0014d493          	srli	s1,s1,0x1
    80006a3c:	ffffe097          	auipc	ra,0xffffe
    80006a40:	5e4080e7          	jalr	1508(ra) # 80005020 <mycpu>
    80006a44:	0014f493          	andi	s1,s1,1
    80006a48:	06952e23          	sw	s1,124(a0)
    80006a4c:	fc5ff06f          	j	80006a10 <push_on+0x34>

0000000080006a50 <pop_on>:
    80006a50:	ff010113          	addi	sp,sp,-16
    80006a54:	00813023          	sd	s0,0(sp)
    80006a58:	00113423          	sd	ra,8(sp)
    80006a5c:	01010413          	addi	s0,sp,16
    80006a60:	ffffe097          	auipc	ra,0xffffe
    80006a64:	5c0080e7          	jalr	1472(ra) # 80005020 <mycpu>
    80006a68:	100027f3          	csrr	a5,sstatus
    80006a6c:	0027f793          	andi	a5,a5,2
    80006a70:	04078463          	beqz	a5,80006ab8 <pop_on+0x68>
    80006a74:	07852783          	lw	a5,120(a0)
    80006a78:	02f05863          	blez	a5,80006aa8 <pop_on+0x58>
    80006a7c:	fff7879b          	addiw	a5,a5,-1
    80006a80:	06f52c23          	sw	a5,120(a0)
    80006a84:	07853783          	ld	a5,120(a0)
    80006a88:	00079863          	bnez	a5,80006a98 <pop_on+0x48>
    80006a8c:	100027f3          	csrr	a5,sstatus
    80006a90:	ffd7f793          	andi	a5,a5,-3
    80006a94:	10079073          	csrw	sstatus,a5
    80006a98:	00813083          	ld	ra,8(sp)
    80006a9c:	00013403          	ld	s0,0(sp)
    80006aa0:	01010113          	addi	sp,sp,16
    80006aa4:	00008067          	ret
    80006aa8:	00001517          	auipc	a0,0x1
    80006aac:	cd050513          	addi	a0,a0,-816 # 80007778 <digits+0x70>
    80006ab0:	fffff097          	auipc	ra,0xfffff
    80006ab4:	f2c080e7          	jalr	-212(ra) # 800059dc <panic>
    80006ab8:	00001517          	auipc	a0,0x1
    80006abc:	ca050513          	addi	a0,a0,-864 # 80007758 <digits+0x50>
    80006ac0:	fffff097          	auipc	ra,0xfffff
    80006ac4:	f1c080e7          	jalr	-228(ra) # 800059dc <panic>

0000000080006ac8 <__memset>:
    80006ac8:	ff010113          	addi	sp,sp,-16
    80006acc:	00813423          	sd	s0,8(sp)
    80006ad0:	01010413          	addi	s0,sp,16
    80006ad4:	1a060e63          	beqz	a2,80006c90 <__memset+0x1c8>
    80006ad8:	40a007b3          	neg	a5,a0
    80006adc:	0077f793          	andi	a5,a5,7
    80006ae0:	00778693          	addi	a3,a5,7
    80006ae4:	00b00813          	li	a6,11
    80006ae8:	0ff5f593          	andi	a1,a1,255
    80006aec:	fff6071b          	addiw	a4,a2,-1
    80006af0:	1b06e663          	bltu	a3,a6,80006c9c <__memset+0x1d4>
    80006af4:	1cd76463          	bltu	a4,a3,80006cbc <__memset+0x1f4>
    80006af8:	1a078e63          	beqz	a5,80006cb4 <__memset+0x1ec>
    80006afc:	00b50023          	sb	a1,0(a0)
    80006b00:	00100713          	li	a4,1
    80006b04:	1ae78463          	beq	a5,a4,80006cac <__memset+0x1e4>
    80006b08:	00b500a3          	sb	a1,1(a0)
    80006b0c:	00200713          	li	a4,2
    80006b10:	1ae78a63          	beq	a5,a4,80006cc4 <__memset+0x1fc>
    80006b14:	00b50123          	sb	a1,2(a0)
    80006b18:	00300713          	li	a4,3
    80006b1c:	18e78463          	beq	a5,a4,80006ca4 <__memset+0x1dc>
    80006b20:	00b501a3          	sb	a1,3(a0)
    80006b24:	00400713          	li	a4,4
    80006b28:	1ae78263          	beq	a5,a4,80006ccc <__memset+0x204>
    80006b2c:	00b50223          	sb	a1,4(a0)
    80006b30:	00500713          	li	a4,5
    80006b34:	1ae78063          	beq	a5,a4,80006cd4 <__memset+0x20c>
    80006b38:	00b502a3          	sb	a1,5(a0)
    80006b3c:	00700713          	li	a4,7
    80006b40:	18e79e63          	bne	a5,a4,80006cdc <__memset+0x214>
    80006b44:	00b50323          	sb	a1,6(a0)
    80006b48:	00700e93          	li	t4,7
    80006b4c:	00859713          	slli	a4,a1,0x8
    80006b50:	00e5e733          	or	a4,a1,a4
    80006b54:	01059e13          	slli	t3,a1,0x10
    80006b58:	01c76e33          	or	t3,a4,t3
    80006b5c:	01859313          	slli	t1,a1,0x18
    80006b60:	006e6333          	or	t1,t3,t1
    80006b64:	02059893          	slli	a7,a1,0x20
    80006b68:	40f60e3b          	subw	t3,a2,a5
    80006b6c:	011368b3          	or	a7,t1,a7
    80006b70:	02859813          	slli	a6,a1,0x28
    80006b74:	0108e833          	or	a6,a7,a6
    80006b78:	03059693          	slli	a3,a1,0x30
    80006b7c:	003e589b          	srliw	a7,t3,0x3
    80006b80:	00d866b3          	or	a3,a6,a3
    80006b84:	03859713          	slli	a4,a1,0x38
    80006b88:	00389813          	slli	a6,a7,0x3
    80006b8c:	00f507b3          	add	a5,a0,a5
    80006b90:	00e6e733          	or	a4,a3,a4
    80006b94:	000e089b          	sext.w	a7,t3
    80006b98:	00f806b3          	add	a3,a6,a5
    80006b9c:	00e7b023          	sd	a4,0(a5)
    80006ba0:	00878793          	addi	a5,a5,8
    80006ba4:	fed79ce3          	bne	a5,a3,80006b9c <__memset+0xd4>
    80006ba8:	ff8e7793          	andi	a5,t3,-8
    80006bac:	0007871b          	sext.w	a4,a5
    80006bb0:	01d787bb          	addw	a5,a5,t4
    80006bb4:	0ce88e63          	beq	a7,a4,80006c90 <__memset+0x1c8>
    80006bb8:	00f50733          	add	a4,a0,a5
    80006bbc:	00b70023          	sb	a1,0(a4)
    80006bc0:	0017871b          	addiw	a4,a5,1
    80006bc4:	0cc77663          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006bc8:	00e50733          	add	a4,a0,a4
    80006bcc:	00b70023          	sb	a1,0(a4)
    80006bd0:	0027871b          	addiw	a4,a5,2
    80006bd4:	0ac77e63          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006bd8:	00e50733          	add	a4,a0,a4
    80006bdc:	00b70023          	sb	a1,0(a4)
    80006be0:	0037871b          	addiw	a4,a5,3
    80006be4:	0ac77663          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006be8:	00e50733          	add	a4,a0,a4
    80006bec:	00b70023          	sb	a1,0(a4)
    80006bf0:	0047871b          	addiw	a4,a5,4
    80006bf4:	08c77e63          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006bf8:	00e50733          	add	a4,a0,a4
    80006bfc:	00b70023          	sb	a1,0(a4)
    80006c00:	0057871b          	addiw	a4,a5,5
    80006c04:	08c77663          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c08:	00e50733          	add	a4,a0,a4
    80006c0c:	00b70023          	sb	a1,0(a4)
    80006c10:	0067871b          	addiw	a4,a5,6
    80006c14:	06c77e63          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c18:	00e50733          	add	a4,a0,a4
    80006c1c:	00b70023          	sb	a1,0(a4)
    80006c20:	0077871b          	addiw	a4,a5,7
    80006c24:	06c77663          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c28:	00e50733          	add	a4,a0,a4
    80006c2c:	00b70023          	sb	a1,0(a4)
    80006c30:	0087871b          	addiw	a4,a5,8
    80006c34:	04c77e63          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c38:	00e50733          	add	a4,a0,a4
    80006c3c:	00b70023          	sb	a1,0(a4)
    80006c40:	0097871b          	addiw	a4,a5,9
    80006c44:	04c77663          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c48:	00e50733          	add	a4,a0,a4
    80006c4c:	00b70023          	sb	a1,0(a4)
    80006c50:	00a7871b          	addiw	a4,a5,10
    80006c54:	02c77e63          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c58:	00e50733          	add	a4,a0,a4
    80006c5c:	00b70023          	sb	a1,0(a4)
    80006c60:	00b7871b          	addiw	a4,a5,11
    80006c64:	02c77663          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c68:	00e50733          	add	a4,a0,a4
    80006c6c:	00b70023          	sb	a1,0(a4)
    80006c70:	00c7871b          	addiw	a4,a5,12
    80006c74:	00c77e63          	bgeu	a4,a2,80006c90 <__memset+0x1c8>
    80006c78:	00e50733          	add	a4,a0,a4
    80006c7c:	00b70023          	sb	a1,0(a4)
    80006c80:	00d7879b          	addiw	a5,a5,13
    80006c84:	00c7f663          	bgeu	a5,a2,80006c90 <__memset+0x1c8>
    80006c88:	00f507b3          	add	a5,a0,a5
    80006c8c:	00b78023          	sb	a1,0(a5)
    80006c90:	00813403          	ld	s0,8(sp)
    80006c94:	01010113          	addi	sp,sp,16
    80006c98:	00008067          	ret
    80006c9c:	00b00693          	li	a3,11
    80006ca0:	e55ff06f          	j	80006af4 <__memset+0x2c>
    80006ca4:	00300e93          	li	t4,3
    80006ca8:	ea5ff06f          	j	80006b4c <__memset+0x84>
    80006cac:	00100e93          	li	t4,1
    80006cb0:	e9dff06f          	j	80006b4c <__memset+0x84>
    80006cb4:	00000e93          	li	t4,0
    80006cb8:	e95ff06f          	j	80006b4c <__memset+0x84>
    80006cbc:	00000793          	li	a5,0
    80006cc0:	ef9ff06f          	j	80006bb8 <__memset+0xf0>
    80006cc4:	00200e93          	li	t4,2
    80006cc8:	e85ff06f          	j	80006b4c <__memset+0x84>
    80006ccc:	00400e93          	li	t4,4
    80006cd0:	e7dff06f          	j	80006b4c <__memset+0x84>
    80006cd4:	00500e93          	li	t4,5
    80006cd8:	e75ff06f          	j	80006b4c <__memset+0x84>
    80006cdc:	00600e93          	li	t4,6
    80006ce0:	e6dff06f          	j	80006b4c <__memset+0x84>

0000000080006ce4 <__memmove>:
    80006ce4:	ff010113          	addi	sp,sp,-16
    80006ce8:	00813423          	sd	s0,8(sp)
    80006cec:	01010413          	addi	s0,sp,16
    80006cf0:	0e060863          	beqz	a2,80006de0 <__memmove+0xfc>
    80006cf4:	fff6069b          	addiw	a3,a2,-1
    80006cf8:	0006881b          	sext.w	a6,a3
    80006cfc:	0ea5e863          	bltu	a1,a0,80006dec <__memmove+0x108>
    80006d00:	00758713          	addi	a4,a1,7
    80006d04:	00a5e7b3          	or	a5,a1,a0
    80006d08:	40a70733          	sub	a4,a4,a0
    80006d0c:	0077f793          	andi	a5,a5,7
    80006d10:	00f73713          	sltiu	a4,a4,15
    80006d14:	00174713          	xori	a4,a4,1
    80006d18:	0017b793          	seqz	a5,a5
    80006d1c:	00e7f7b3          	and	a5,a5,a4
    80006d20:	10078863          	beqz	a5,80006e30 <__memmove+0x14c>
    80006d24:	00900793          	li	a5,9
    80006d28:	1107f463          	bgeu	a5,a6,80006e30 <__memmove+0x14c>
    80006d2c:	0036581b          	srliw	a6,a2,0x3
    80006d30:	fff8081b          	addiw	a6,a6,-1
    80006d34:	02081813          	slli	a6,a6,0x20
    80006d38:	01d85893          	srli	a7,a6,0x1d
    80006d3c:	00858813          	addi	a6,a1,8
    80006d40:	00058793          	mv	a5,a1
    80006d44:	00050713          	mv	a4,a0
    80006d48:	01088833          	add	a6,a7,a6
    80006d4c:	0007b883          	ld	a7,0(a5)
    80006d50:	00878793          	addi	a5,a5,8
    80006d54:	00870713          	addi	a4,a4,8
    80006d58:	ff173c23          	sd	a7,-8(a4)
    80006d5c:	ff0798e3          	bne	a5,a6,80006d4c <__memmove+0x68>
    80006d60:	ff867713          	andi	a4,a2,-8
    80006d64:	02071793          	slli	a5,a4,0x20
    80006d68:	0207d793          	srli	a5,a5,0x20
    80006d6c:	00f585b3          	add	a1,a1,a5
    80006d70:	40e686bb          	subw	a3,a3,a4
    80006d74:	00f507b3          	add	a5,a0,a5
    80006d78:	06e60463          	beq	a2,a4,80006de0 <__memmove+0xfc>
    80006d7c:	0005c703          	lbu	a4,0(a1)
    80006d80:	00e78023          	sb	a4,0(a5)
    80006d84:	04068e63          	beqz	a3,80006de0 <__memmove+0xfc>
    80006d88:	0015c603          	lbu	a2,1(a1)
    80006d8c:	00100713          	li	a4,1
    80006d90:	00c780a3          	sb	a2,1(a5)
    80006d94:	04e68663          	beq	a3,a4,80006de0 <__memmove+0xfc>
    80006d98:	0025c603          	lbu	a2,2(a1)
    80006d9c:	00200713          	li	a4,2
    80006da0:	00c78123          	sb	a2,2(a5)
    80006da4:	02e68e63          	beq	a3,a4,80006de0 <__memmove+0xfc>
    80006da8:	0035c603          	lbu	a2,3(a1)
    80006dac:	00300713          	li	a4,3
    80006db0:	00c781a3          	sb	a2,3(a5)
    80006db4:	02e68663          	beq	a3,a4,80006de0 <__memmove+0xfc>
    80006db8:	0045c603          	lbu	a2,4(a1)
    80006dbc:	00400713          	li	a4,4
    80006dc0:	00c78223          	sb	a2,4(a5)
    80006dc4:	00e68e63          	beq	a3,a4,80006de0 <__memmove+0xfc>
    80006dc8:	0055c603          	lbu	a2,5(a1)
    80006dcc:	00500713          	li	a4,5
    80006dd0:	00c782a3          	sb	a2,5(a5)
    80006dd4:	00e68663          	beq	a3,a4,80006de0 <__memmove+0xfc>
    80006dd8:	0065c703          	lbu	a4,6(a1)
    80006ddc:	00e78323          	sb	a4,6(a5)
    80006de0:	00813403          	ld	s0,8(sp)
    80006de4:	01010113          	addi	sp,sp,16
    80006de8:	00008067          	ret
    80006dec:	02061713          	slli	a4,a2,0x20
    80006df0:	02075713          	srli	a4,a4,0x20
    80006df4:	00e587b3          	add	a5,a1,a4
    80006df8:	f0f574e3          	bgeu	a0,a5,80006d00 <__memmove+0x1c>
    80006dfc:	02069613          	slli	a2,a3,0x20
    80006e00:	02065613          	srli	a2,a2,0x20
    80006e04:	fff64613          	not	a2,a2
    80006e08:	00e50733          	add	a4,a0,a4
    80006e0c:	00c78633          	add	a2,a5,a2
    80006e10:	fff7c683          	lbu	a3,-1(a5)
    80006e14:	fff78793          	addi	a5,a5,-1
    80006e18:	fff70713          	addi	a4,a4,-1
    80006e1c:	00d70023          	sb	a3,0(a4)
    80006e20:	fec798e3          	bne	a5,a2,80006e10 <__memmove+0x12c>
    80006e24:	00813403          	ld	s0,8(sp)
    80006e28:	01010113          	addi	sp,sp,16
    80006e2c:	00008067          	ret
    80006e30:	02069713          	slli	a4,a3,0x20
    80006e34:	02075713          	srli	a4,a4,0x20
    80006e38:	00170713          	addi	a4,a4,1
    80006e3c:	00e50733          	add	a4,a0,a4
    80006e40:	00050793          	mv	a5,a0
    80006e44:	0005c683          	lbu	a3,0(a1)
    80006e48:	00178793          	addi	a5,a5,1
    80006e4c:	00158593          	addi	a1,a1,1
    80006e50:	fed78fa3          	sb	a3,-1(a5)
    80006e54:	fee798e3          	bne	a5,a4,80006e44 <__memmove+0x160>
    80006e58:	f89ff06f          	j	80006de0 <__memmove+0xfc>

0000000080006e5c <__putc>:
    80006e5c:	fe010113          	addi	sp,sp,-32
    80006e60:	00813823          	sd	s0,16(sp)
    80006e64:	00113c23          	sd	ra,24(sp)
    80006e68:	02010413          	addi	s0,sp,32
    80006e6c:	00050793          	mv	a5,a0
    80006e70:	fef40593          	addi	a1,s0,-17
    80006e74:	00100613          	li	a2,1
    80006e78:	00000513          	li	a0,0
    80006e7c:	fef407a3          	sb	a5,-17(s0)
    80006e80:	fffff097          	auipc	ra,0xfffff
    80006e84:	b3c080e7          	jalr	-1220(ra) # 800059bc <console_write>
    80006e88:	01813083          	ld	ra,24(sp)
    80006e8c:	01013403          	ld	s0,16(sp)
    80006e90:	02010113          	addi	sp,sp,32
    80006e94:	00008067          	ret

0000000080006e98 <__getc>:
    80006e98:	fe010113          	addi	sp,sp,-32
    80006e9c:	00813823          	sd	s0,16(sp)
    80006ea0:	00113c23          	sd	ra,24(sp)
    80006ea4:	02010413          	addi	s0,sp,32
    80006ea8:	fe840593          	addi	a1,s0,-24
    80006eac:	00100613          	li	a2,1
    80006eb0:	00000513          	li	a0,0
    80006eb4:	fffff097          	auipc	ra,0xfffff
    80006eb8:	ae8080e7          	jalr	-1304(ra) # 8000599c <console_read>
    80006ebc:	fe844503          	lbu	a0,-24(s0)
    80006ec0:	01813083          	ld	ra,24(sp)
    80006ec4:	01013403          	ld	s0,16(sp)
    80006ec8:	02010113          	addi	sp,sp,32
    80006ecc:	00008067          	ret

0000000080006ed0 <console_handler>:
    80006ed0:	fe010113          	addi	sp,sp,-32
    80006ed4:	00813823          	sd	s0,16(sp)
    80006ed8:	00113c23          	sd	ra,24(sp)
    80006edc:	00913423          	sd	s1,8(sp)
    80006ee0:	02010413          	addi	s0,sp,32
    80006ee4:	14202773          	csrr	a4,scause
    80006ee8:	100027f3          	csrr	a5,sstatus
    80006eec:	0027f793          	andi	a5,a5,2
    80006ef0:	06079e63          	bnez	a5,80006f6c <console_handler+0x9c>
    80006ef4:	00074c63          	bltz	a4,80006f0c <console_handler+0x3c>
    80006ef8:	01813083          	ld	ra,24(sp)
    80006efc:	01013403          	ld	s0,16(sp)
    80006f00:	00813483          	ld	s1,8(sp)
    80006f04:	02010113          	addi	sp,sp,32
    80006f08:	00008067          	ret
    80006f0c:	0ff77713          	andi	a4,a4,255
    80006f10:	00900793          	li	a5,9
    80006f14:	fef712e3          	bne	a4,a5,80006ef8 <console_handler+0x28>
    80006f18:	ffffe097          	auipc	ra,0xffffe
    80006f1c:	6dc080e7          	jalr	1756(ra) # 800055f4 <plic_claim>
    80006f20:	00a00793          	li	a5,10
    80006f24:	00050493          	mv	s1,a0
    80006f28:	02f50c63          	beq	a0,a5,80006f60 <console_handler+0x90>
    80006f2c:	fc0506e3          	beqz	a0,80006ef8 <console_handler+0x28>
    80006f30:	00050593          	mv	a1,a0
    80006f34:	00000517          	auipc	a0,0x0
    80006f38:	74c50513          	addi	a0,a0,1868 # 80007680 <CONSOLE_STATUS+0x670>
    80006f3c:	fffff097          	auipc	ra,0xfffff
    80006f40:	afc080e7          	jalr	-1284(ra) # 80005a38 <__printf>
    80006f44:	01013403          	ld	s0,16(sp)
    80006f48:	01813083          	ld	ra,24(sp)
    80006f4c:	00048513          	mv	a0,s1
    80006f50:	00813483          	ld	s1,8(sp)
    80006f54:	02010113          	addi	sp,sp,32
    80006f58:	ffffe317          	auipc	t1,0xffffe
    80006f5c:	6d430067          	jr	1748(t1) # 8000562c <plic_complete>
    80006f60:	fffff097          	auipc	ra,0xfffff
    80006f64:	3e0080e7          	jalr	992(ra) # 80006340 <uartintr>
    80006f68:	fddff06f          	j	80006f44 <console_handler+0x74>
    80006f6c:	00001517          	auipc	a0,0x1
    80006f70:	81450513          	addi	a0,a0,-2028 # 80007780 <digits+0x78>
    80006f74:	fffff097          	auipc	ra,0xfffff
    80006f78:	a68080e7          	jalr	-1432(ra) # 800059dc <panic>
	...
