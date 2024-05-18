
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	c6013103          	ld	sp,-928(sp) # 8000bc60 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4a5060ef          	jal	ra,80006cc0 <start>

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
    80001180:	6f0010ef          	jal	ra,80002870 <_ZN5RISCV16handle_interruptEv>

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
    80001710:	0000a917          	auipc	s2,0xa
    80001714:	56093903          	ld	s2,1376(s2) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001718:	00093483          	ld	s1,0(s2)

    blocked.add(oldRunning);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00850513          	addi	a0,a0,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	990080e7          	jalr	-1648(ra) # 800030b4 <_ZN4List3addEP3TCB>

    oldRunning -> current_state = TCB::BLOCKED;
    8000172c:	00400793          	li	a5,4
    80001730:	06f4a023          	sw	a5,96(s1)

    TCB::running = Scheduler::get();
    80001734:	00000097          	auipc	ra,0x0
    80001738:	284080e7          	jalr	644(ra) # 800019b8 <_ZN9Scheduler3getEv>
    8000173c:	00050593          	mv	a1,a0
    80001740:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001744:	00048513          	mv	a0,s1
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	bdc080e7          	jalr	-1060(ra) # 80003324 <_ZN3TCB5yieldEPS_S0_>
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
    800017d0:	00002097          	auipc	ra,0x2
    800017d4:	85c080e7          	jalr	-1956(ra) # 8000302c <_ZN4List3getEv>

    if (!tcb) return; // should not happen
    800017d8:	00050863          	beqz	a0,800017e8 <_ZN3Sem7deblockEv+0x2c>

    tcb->current_state = TCB::RUNNABLE;
    800017dc:	06052023          	sw	zero,96(a0)
    Scheduler::put(tcb);
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	228080e7          	jalr	552(ra) # 80001a08 <_ZN9Scheduler3putEP3TCB>

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

0000000080001868 <_ZN3SemdlEPv>:

    delete handle;
    return 0;
}

void Sem::operator delete(void *ptr) {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	538080e7          	jalr	1336(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_ZN3Sem7s_closeEPS_>:
int Sem::s_close(sem_t handle) {
    80001890:	fe010113          	addi	sp,sp,-32
    80001894:	00113c23          	sd	ra,24(sp)
    80001898:	00813823          	sd	s0,16(sp)
    8000189c:	00913423          	sd	s1,8(sp)
    800018a0:	02010413          	addi	s0,sp,32
    800018a4:	00050493          	mv	s1,a0
    if (!handle) return SEM_CLOSED;
    800018a8:	04050463          	beqz	a0,800018f0 <_ZN3Sem7s_closeEPS_+0x60>
    while (handle->blocked.peek()) {
    800018ac:	00848513          	addi	a0,s1,8
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	7c0080e7          	jalr	1984(ra) # 80003070 <_ZN4List4peekEv>
    800018b8:	00050a63          	beqz	a0,800018cc <_ZN3Sem7s_closeEPS_+0x3c>
        handle->deblock();
    800018bc:	00048513          	mv	a0,s1
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	efc080e7          	jalr	-260(ra) # 800017bc <_ZN3Sem7deblockEv>
    while (handle->blocked.peek()) {
    800018c8:	fe5ff06f          	j	800018ac <_ZN3Sem7s_closeEPS_+0x1c>
    delete handle;
    800018cc:	00048513          	mv	a0,s1
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f98080e7          	jalr	-104(ra) # 80001868 <_ZN3SemdlEPv>
    return 0;
    800018d8:	00000513          	li	a0,0
}
    800018dc:	01813083          	ld	ra,24(sp)
    800018e0:	01013403          	ld	s0,16(sp)
    800018e4:	00813483          	ld	s1,8(sp)
    800018e8:	02010113          	addi	sp,sp,32
    800018ec:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    800018f0:	ffd00513          	li	a0,-3
    800018f4:	fe9ff06f          	j	800018dc <_ZN3Sem7s_closeEPS_+0x4c>

00000000800018f8 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001908:	05750513          	addi	a0,a0,87
    8000190c:	00655513          	srli	a0,a0,0x6
    80001910:	00001097          	auipc	ra,0x1
    80001914:	260080e7          	jalr	608(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN3Sem4openEPPS_j>:
int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	01213023          	sd	s2,0(sp)
    8000193c:	02010413          	addi	s0,sp,32
    80001940:	00050913          	mv	s2,a0
    80001944:	00058493          	mv	s1,a1
    auto newSem = new Sem((int)init);
    80001948:	01800513          	li	a0,24
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	fac080e7          	jalr	-84(ra) # 800018f8 <_ZN3SemnwEm>
    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int init = 1) : value(init), blocked() {}
    80001954:	00952023          	sw	s1,0(a0)

class List {

public:

    List() : head(nullptr), tail(nullptr) {};
    80001958:	00053423          	sd	zero,8(a0)
    8000195c:	00053823          	sd	zero,16(a0)
    if (!newSem) return MEMORY_ERR;
    80001960:	02050263          	beqz	a0,80001984 <_ZN3Sem4openEPPS_j+0x5c>
    *handle = newSem;
    80001964:	00a93023          	sd	a0,0(s2)
    return 0;
    80001968:	00000513          	li	a0,0
}
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	01013403          	ld	s0,16(sp)
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	00013903          	ld	s2,0(sp)
    8000197c:	02010113          	addi	sp,sp,32
    80001980:	00008067          	ret
    if (!newSem) return MEMORY_ERR;
    80001984:	fff00513          	li	a0,-1
    80001988:	fe5ff06f          	j	8000196c <_ZN3Sem4openEPPS_j+0x44>

000000008000198c <_ZNK3Sem8getValueEv>:

int Sem::getValue() const {
    8000198c:	ff010113          	addi	sp,sp,-16
    80001990:	00813423          	sd	s0,8(sp)
    80001994:	01010413          	addi	s0,sp,16
    return value;
}
    80001998:	00052503          	lw	a0,0(a0)
    8000199c:	00813403          	ld	s0,8(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_Z11idleWrapperPv>:
TCB* Scheduler::first = nullptr;
TCB* Scheduler::last  = nullptr;
TCB* Scheduler::first_sleepy = nullptr;
TCB* Scheduler::idle = nullptr;

[[noreturn]] void idleWrapper(void*) {
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00813423          	sd	s0,8(sp)
    800019b0:	01010413          	addi	s0,sp,16
    // nothing to do
    while (true);
    800019b4:	0000006f          	j	800019b4 <_Z11idleWrapperPv+0xc>

00000000800019b8 <_ZN9Scheduler3getEv>:
}

TCB *Scheduler::get() {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00813423          	sd	s0,8(sp)
    800019c0:	01010413          	addi	s0,sp,16

    if (!first) return idle; // idle thread
    800019c4:	0000a517          	auipc	a0,0xa
    800019c8:	30c53503          	ld	a0,780(a0) # 8000bcd0 <_ZN9Scheduler5firstE>
    800019cc:	02050263          	beqz	a0,800019f0 <_ZN9Scheduler3getEv+0x38>

    TCB* tcb = first;

    first = first -> next_ready;
    800019d0:	00853783          	ld	a5,8(a0)
    800019d4:	0000a717          	auipc	a4,0xa
    800019d8:	2ef73e23          	sd	a5,764(a4) # 8000bcd0 <_ZN9Scheduler5firstE>
    if (!first) last = nullptr;
    800019dc:	02078063          	beqz	a5,800019fc <_ZN9Scheduler3getEv+0x44>
    tcb -> next_ready = nullptr;
    800019e0:	00053423          	sd	zero,8(a0)

    return tcb;

}
    800019e4:	00813403          	ld	s0,8(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret
    if (!first) return idle; // idle thread
    800019f0:	0000a517          	auipc	a0,0xa
    800019f4:	2e853503          	ld	a0,744(a0) # 8000bcd8 <_ZN9Scheduler4idleE>
    800019f8:	fedff06f          	j	800019e4 <_ZN9Scheduler3getEv+0x2c>
    if (!first) last = nullptr;
    800019fc:	0000a797          	auipc	a5,0xa
    80001a00:	2e07b223          	sd	zero,740(a5) # 8000bce0 <_ZN9Scheduler4lastE>
    80001a04:	fddff06f          	j	800019e0 <_ZN9Scheduler3getEv+0x28>

0000000080001a08 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00813423          	sd	s0,8(sp)
    80001a10:	01010413          	addi	s0,sp,16

    if (newTCB == idle) {
    80001a14:	0000a797          	auipc	a5,0xa
    80001a18:	2c47b783          	ld	a5,708(a5) # 8000bcd8 <_ZN9Scheduler4idleE>
    80001a1c:	02a78863          	beq	a5,a0,80001a4c <_ZN9Scheduler3putEP3TCB+0x44>
        idle->current_state = TCB::RUNNABLE;
        return;
    }
    if (!first) first = last = newTCB;
    80001a20:	0000a797          	auipc	a5,0xa
    80001a24:	2b07b783          	ld	a5,688(a5) # 8000bcd0 <_ZN9Scheduler5firstE>
    80001a28:	02078663          	beqz	a5,80001a54 <_ZN9Scheduler3putEP3TCB+0x4c>
    else last = last -> next_ready = newTCB;
    80001a2c:	0000a797          	auipc	a5,0xa
    80001a30:	2a478793          	addi	a5,a5,676 # 8000bcd0 <_ZN9Scheduler5firstE>
    80001a34:	0107b703          	ld	a4,16(a5)
    80001a38:	00a73423          	sd	a0,8(a4)
    80001a3c:	00a7b823          	sd	a0,16(a5)

}
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret
        idle->current_state = TCB::RUNNABLE;
    80001a4c:	0607a023          	sw	zero,96(a5)
        return;
    80001a50:	ff1ff06f          	j	80001a40 <_ZN9Scheduler3putEP3TCB+0x38>
    if (!first) first = last = newTCB;
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	27c78793          	addi	a5,a5,636 # 8000bcd0 <_ZN9Scheduler5firstE>
    80001a5c:	00a7b823          	sd	a0,16(a5)
    80001a60:	00a7b023          	sd	a0,0(a5)
    80001a64:	fddff06f          	j	80001a40 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080001a68 <_ZN9Scheduler4peekEv>:

TCB* Scheduler::peek() {
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00813423          	sd	s0,8(sp)
    80001a70:	01010413          	addi	s0,sp,16
    if (!first) return nullptr;
    return first;
}
    80001a74:	0000a517          	auipc	a0,0xa
    80001a78:	25c53503          	ld	a0,604(a0) # 8000bcd0 <_ZN9Scheduler5firstE>
    80001a7c:	00813403          	ld	s0,8(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    return first != nullptr;
}
    80001a94:	0000a517          	auipc	a0,0xa
    80001a98:	23c53503          	ld	a0,572(a0) # 8000bcd0 <_ZN9Scheduler5firstE>
    80001a9c:	00a03533          	snez	a0,a0
    80001aa0:	00813403          	ld	s0,8(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <_ZN9SchedulernwEm>:
    return 0;


}

void *Scheduler::operator new(size_t size) {
    80001aac:	ff010113          	addi	sp,sp,-16
    80001ab0:	00113423          	sd	ra,8(sp)
    80001ab4:	00813023          	sd	s0,0(sp)
    80001ab8:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001abc:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001ac0:	00655513          	srli	a0,a0,0x6
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	0ac080e7          	jalr	172(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001acc:	00813083          	ld	ra,8(sp)
    80001ad0:	00013403          	ld	s0,0(sp)
    80001ad4:	01010113          	addi	sp,sp,16
    80001ad8:	00008067          	ret

0000000080001adc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001adc:	ff010113          	addi	sp,sp,-16
    80001ae0:	00113423          	sd	ra,8(sp)
    80001ae4:	00813023          	sd	s0,0(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	2c4080e7          	jalr	708(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001af4:	00813083          	ld	ra,8(sp)
    80001af8:	00013403          	ld	s0,0(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret

0000000080001b04 <_ZN9Scheduler7s_yieldEv>:

void Scheduler::s_yield() {
    80001b04:	fe010113          	addi	sp,sp,-32
    80001b08:	00113c23          	sd	ra,24(sp)
    80001b0c:	00813823          	sd	s0,16(sp)
    80001b10:	00913423          	sd	s1,8(sp)
    80001b14:	01213023          	sd	s2,0(sp)
    80001b18:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    80001b1c:	0000a917          	auipc	s2,0xa
    80001b20:	15493903          	ld	s2,340(s2) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001b24:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::SLEEPING;
    80001b28:	00100793          	li	a5,1
    80001b2c:	06f4a023          	sw	a5,96(s1)

    TCB::running = get(); // Scheduler::get
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	e88080e7          	jalr	-376(ra) # 800019b8 <_ZN9Scheduler3getEv>
    80001b38:	00050593          	mv	a1,a0
    80001b3c:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001b40:	00048513          	mv	a0,s1
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	7e0080e7          	jalr	2016(ra) # 80003324 <_ZN3TCB5yieldEPS_S0_>

}
    80001b4c:	01813083          	ld	ra,24(sp)
    80001b50:	01013403          	ld	s0,16(sp)
    80001b54:	00813483          	ld	s1,8(sp)
    80001b58:	00013903          	ld	s2,0(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret

0000000080001b64 <_ZN9Scheduler12put_to_sleepEP3TCBm>:
int Scheduler::put_to_sleep(TCB *tcb, time_t time) {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    if (!first_sleepy) {
    80001b74:	0000a797          	auipc	a5,0xa
    80001b78:	1747b783          	ld	a5,372(a5) # 8000bce8 <_ZN9Scheduler12first_sleepyE>
    80001b7c:	02078663          	beqz	a5,80001ba8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x44>
    time_t time_sum = 0;
    80001b80:	00000693          	li	a3,0
    TCB* prev = nullptr, *curr = first_sleepy; // insert between
    80001b84:	00000613          	li	a2,0
    while (curr) {
    80001b88:	06078863          	beqz	a5,80001bf8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x94>
        if (time_sum + curr->sleeping_time > time) {
    80001b8c:	0187b703          	ld	a4,24(a5)
    80001b90:	00d70733          	add	a4,a4,a3
    80001b94:	02e5e663          	bltu	a1,a4,80001bc0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x5c>
        time_sum += curr -> sleeping_time;
    80001b98:	00070693          	mv	a3,a4
        prev = curr;
    80001b9c:	00078613          	mv	a2,a5
        curr = curr -> next_sleepy;
    80001ba0:	0107b783          	ld	a5,16(a5)
    while (curr) {
    80001ba4:	fe5ff06f          	j	80001b88 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x24>
        first_sleepy = tcb;
    80001ba8:	0000a797          	auipc	a5,0xa
    80001bac:	14a7b023          	sd	a0,320(a5) # 8000bce8 <_ZN9Scheduler12first_sleepyE>
        tcb -> sleeping_time = time;
    80001bb0:	00b53c23          	sd	a1,24(a0)
        s_yield();
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	f50080e7          	jalr	-176(ra) # 80001b04 <_ZN9Scheduler7s_yieldEv>
        return 0;
    80001bbc:	0540006f          	j	80001c10 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xac>
            if (prev) prev -> next_sleepy = tcb;
    80001bc0:	02060663          	beqz	a2,80001bec <_ZN9Scheduler12put_to_sleepEP3TCBm+0x88>
    80001bc4:	00a63823          	sd	a0,16(a2)
            tcb -> next_sleepy = curr;
    80001bc8:	00f53823          	sd	a5,16(a0)
            tcb -> sleeping_time = time - time_sum;
    80001bcc:	40d586b3          	sub	a3,a1,a3
    80001bd0:	00d53c23          	sd	a3,24(a0)
            curr -> sleeping_time -= tcb -> sleeping_time;
    80001bd4:	0187b583          	ld	a1,24(a5)
    80001bd8:	40d586b3          	sub	a3,a1,a3
    80001bdc:	00d7bc23          	sd	a3,24(a5)
            s_yield();
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	f24080e7          	jalr	-220(ra) # 80001b04 <_ZN9Scheduler7s_yieldEv>
            return 0;
    80001be8:	0280006f          	j	80001c10 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xac>
            else first_sleepy = tcb;
    80001bec:	0000a717          	auipc	a4,0xa
    80001bf0:	0ea73e23          	sd	a0,252(a4) # 8000bce8 <_ZN9Scheduler12first_sleepyE>
    80001bf4:	fd5ff06f          	j	80001bc8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x64>
    tcb -> sleeping_time = time - time_sum;
    80001bf8:	40d586b3          	sub	a3,a1,a3
    80001bfc:	00d53c23          	sd	a3,24(a0)
    if (prev) prev -> next_sleepy = tcb;
    80001c00:	00060463          	beqz	a2,80001c08 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
    80001c04:	00a63823          	sd	a0,16(a2)
    s_yield();
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	efc080e7          	jalr	-260(ra) # 80001b04 <_ZN9Scheduler7s_yieldEv>
}
    80001c10:	00000513          	li	a0,0
    80001c14:	00813083          	ld	ra,8(sp)
    80001c18:	00013403          	ld	s0,0(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <_ZN9Scheduler14init_schedulerEv>:

void Scheduler::init_scheduler() {
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00113423          	sd	ra,8(sp)
    80001c2c:	00813023          	sd	s0,0(sp)
    80001c30:	01010413          	addi	s0,sp,16
    thread_create(&idle, idleWrapper, nullptr);
    80001c34:	00000613          	li	a2,0
    80001c38:	00000597          	auipc	a1,0x0
    80001c3c:	d7058593          	addi	a1,a1,-656 # 800019a8 <_Z11idleWrapperPv>
    80001c40:	0000a517          	auipc	a0,0xa
    80001c44:	09850513          	addi	a0,a0,152 # 8000bcd8 <_ZN9Scheduler4idleE>
    80001c48:	fffff097          	auipc	ra,0xfffff
    80001c4c:	6b4080e7          	jalr	1716(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001c50:	00813083          	ld	ra,8(sp)
    80001c54:	00013403          	ld	s0,0(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <_ZN9myConsole4initEv>:

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;
TCB* myConsole::char_handler = nullptr;

void myConsole::init() {
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	01213023          	sd	s2,0(sp)
    80001c74:	02010413          	addi	s0,sp,32
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001c78:	15000513          	li	a0,336
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	af8080e7          	jalr	-1288(ra) # 80002774 <_ZN13BoundedBuffernwEm>
    80001c84:	00050493          	mv	s1,a0
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	960080e7          	jalr	-1696(ra) # 800025e8 <_ZN13BoundedBufferC1Ev>
    80001c90:	0000a797          	auipc	a5,0xa
    80001c94:	0697b023          	sd	s1,96(a5) # 8000bcf0 <_ZN9myConsole11inputBufferE>
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001c98:	15000513          	li	a0,336
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	ad8080e7          	jalr	-1320(ra) # 80002774 <_ZN13BoundedBuffernwEm>
    80001ca4:	00050493          	mv	s1,a0
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	940080e7          	jalr	-1728(ra) # 800025e8 <_ZN13BoundedBufferC1Ev>
    80001cb0:	0000a797          	auipc	a5,0xa
    80001cb4:	0497b423          	sd	s1,72(a5) # 8000bcf8 <_ZN9myConsole12outputBufferE>
    //thread_create(&char_handler, char_handler_wrapper, nullptr);
}
    80001cb8:	01813083          	ld	ra,24(sp)
    80001cbc:	01013403          	ld	s0,16(sp)
    80001cc0:	00813483          	ld	s1,8(sp)
    80001cc4:	00013903          	ld	s2,0(sp)
    80001cc8:	02010113          	addi	sp,sp,32
    80001ccc:	00008067          	ret
    80001cd0:	00050913          	mv	s2,a0
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001cd4:	00048513          	mv	a0,s1
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	acc080e7          	jalr	-1332(ra) # 800027a4 <_ZN13BoundedBufferdlEPv>
    80001ce0:	00090513          	mv	a0,s2
    80001ce4:	0000b097          	auipc	ra,0xb
    80001ce8:	194080e7          	jalr	404(ra) # 8000ce78 <_Unwind_Resume>
    80001cec:	00050913          	mv	s2,a0
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001cf0:	00048513          	mv	a0,s1
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	ab0080e7          	jalr	-1360(ra) # 800027a4 <_ZN13BoundedBufferdlEPv>
    80001cfc:	00090513          	mv	a0,s2
    80001d00:	0000b097          	auipc	ra,0xb
    80001d04:	178080e7          	jalr	376(ra) # 8000ce78 <_Unwind_Resume>

0000000080001d08 <_ZN9myConsole10input_getcEv>:

char myConsole::input_getc() {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80001d18:	0000a517          	auipc	a0,0xa
    80001d1c:	fd853503          	ld	a0,-40(a0) # 8000bcf0 <_ZN9myConsole11inputBufferE>
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	9e8080e7          	jalr	-1560(ra) # 80002708 <_ZN13BoundedBuffer3getEv>
}
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_ZN9myConsole11output_putcEc>:

void myConsole::output_putc(char c) {
    80001d38:	ff010113          	addi	sp,sp,-16
    80001d3c:	00113423          	sd	ra,8(sp)
    80001d40:	00813023          	sd	s0,0(sp)
    80001d44:	01010413          	addi	s0,sp,16
    80001d48:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    80001d4c:	0000a517          	auipc	a0,0xa
    80001d50:	fac53503          	ld	a0,-84(a0) # 8000bcf8 <_ZN9myConsole12outputBufferE>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	948080e7          	jalr	-1720(ra) # 8000269c <_ZN13BoundedBuffer3putEc>
}
    80001d5c:	00813083          	ld	ra,8(sp)
    80001d60:	00013403          	ld	s0,0(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN9myConsole11output_getcEv>:

char myConsole::output_getc() {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	00813023          	sd	s0,0(sp)
    80001d78:	01010413          	addi	s0,sp,16
    return outputBuffer->get();
    80001d7c:	0000a517          	auipc	a0,0xa
    80001d80:	f7c53503          	ld	a0,-132(a0) # 8000bcf8 <_ZN9myConsole12outputBufferE>
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	984080e7          	jalr	-1660(ra) # 80002708 <_ZN13BoundedBuffer3getEv>
}
    80001d8c:	00813083          	ld	ra,8(sp)
    80001d90:	00013403          	ld	s0,0(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN9myConsole10input_putcEc>:

void myConsole::input_putc(char c) {
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	00813023          	sd	s0,0(sp)
    80001da8:	01010413          	addi	s0,sp,16
    80001dac:	00050593          	mv	a1,a0
    inputBuffer->put(c);
    80001db0:	0000a517          	auipc	a0,0xa
    80001db4:	f4053503          	ld	a0,-192(a0) # 8000bcf0 <_ZN9myConsole11inputBufferE>
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	8e4080e7          	jalr	-1820(ra) # 8000269c <_ZN13BoundedBuffer3putEc>
}
    80001dc0:	00813083          	ld	ra,8(sp)
    80001dc4:	00013403          	ld	s0,0(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret

0000000080001dd0 <_ZN9myConsole20char_handler_wrapperEPv>:

void myConsole::char_handler_wrapper(void *) {

    while (true) { // dodatan uslov?

        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001dd0:	0000a797          	auipc	a5,0xa
    80001dd4:	e707b783          	ld	a5,-400(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001dd8:	0007b783          	ld	a5,0(a5)
    80001ddc:	0007c783          	lbu	a5,0(a5)
    80001de0:	0207f793          	andi	a5,a5,32
    80001de4:	fe0786e3          	beqz	a5,80001dd0 <_ZN9myConsole20char_handler_wrapperEPv>
void myConsole::char_handler_wrapper(void *) {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
            // console controller is ready for new char
            char c = myConsole::output_getc();
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	f74080e7          	jalr	-140(ra) # 80001d6c <_ZN9myConsole11output_getcEv>
            if (c == '\r') continue;
    80001e00:	00d00793          	li	a5,13
    80001e04:	00f50a63          	beq	a0,a5,80001e18 <_ZN9myConsole20char_handler_wrapperEPv+0x48>
            *(char *) CONSOLE_TX_DATA = c;
    80001e08:	0000a797          	auipc	a5,0xa
    80001e0c:	e507b783          	ld	a5,-432(a5) # 8000bc58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e10:	0007b783          	ld	a5,0(a5)
    80001e14:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001e18:	0000a797          	auipc	a5,0xa
    80001e1c:	e287b783          	ld	a5,-472(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e20:	0007b783          	ld	a5,0(a5)
    80001e24:	0007c783          	lbu	a5,0(a5)
    80001e28:	0207f793          	andi	a5,a5,32
    80001e2c:	fe0786e3          	beqz	a5,80001e18 <_ZN9myConsole20char_handler_wrapperEPv+0x48>
    80001e30:	fc9ff06f          	j	80001df8 <_ZN9myConsole20char_handler_wrapperEPv+0x28>

0000000080001e34 <_Z14handleNewCharsPv>:
}

void handleNewChars(void * args) {

    while (true) {
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001e34:	0000a797          	auipc	a5,0xa
    80001e38:	e0c7b783          	ld	a5,-500(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e3c:	0007b783          	ld	a5,0(a5)
    80001e40:	0007c783          	lbu	a5,0(a5)
    80001e44:	0207f793          	andi	a5,a5,32
    80001e48:	fe0786e3          	beqz	a5,80001e34 <_Z14handleNewCharsPv>
void handleNewChars(void * args) {
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00113423          	sd	ra,8(sp)
    80001e54:	00813023          	sd	s0,0(sp)
    80001e58:	01010413          	addi	s0,sp,16
            // console controller is ready for new char
            char c = myConsole::output_getc();
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	f10080e7          	jalr	-240(ra) # 80001d6c <_ZN9myConsole11output_getcEv>
            if (c == '\r') continue;
    80001e64:	00d00793          	li	a5,13
    80001e68:	00f50a63          	beq	a0,a5,80001e7c <_Z14handleNewCharsPv+0x48>
            *(char *) CONSOLE_TX_DATA = c;
    80001e6c:	0000a797          	auipc	a5,0xa
    80001e70:	dec7b783          	ld	a5,-532(a5) # 8000bc58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e74:	0007b783          	ld	a5,0(a5)
    80001e78:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001e7c:	0000a797          	auipc	a5,0xa
    80001e80:	dc47b783          	ld	a5,-572(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e84:	0007b783          	ld	a5,0(a5)
    80001e88:	0007c783          	lbu	a5,0(a5)
    80001e8c:	0207f793          	andi	a5,a5,32
    80001e90:	fe0786e3          	beqz	a5,80001e7c <_Z14handleNewCharsPv+0x48>
    80001e94:	fc9ff06f          	j	80001e5c <_Z14handleNewCharsPv+0x28>

0000000080001e98 <_Z11userWrapperPv>:

thread_t mythreads[5];

extern void userMain();

void userWrapper(void* args) {
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	00813023          	sd	s0,0(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    userMain();
    80001ea8:	00004097          	auipc	ra,0x4
    80001eac:	290080e7          	jalr	656(ra) # 80006138 <_Z8userMainv>
}
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001ec0:	fe010113          	addi	sp,sp,-32
    80001ec4:	00113c23          	sd	ra,24(sp)
    80001ec8:	00813823          	sd	s0,16(sp)
    80001ecc:	00913423          	sd	s1,8(sp)
    80001ed0:	01213023          	sd	s2,0(sp)
    80001ed4:	02010413          	addi	s0,sp,32
    void *addr = MemoryAllocator::mem_alloc(1);
    80001ed8:	00100513          	li	a0,1
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	c94080e7          	jalr	-876(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
    80001ee4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	040080e7          	jalr	64(ra) # 80002f28 <_ZN15MemoryAllocator5printEv>
    int ret1 = MemoryAllocator::mem_free(addr);
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	ebc080e7          	jalr	-324(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001efc:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	028080e7          	jalr	40(ra) # 80002f28 <_ZN15MemoryAllocator5printEv>
    int ret2 = MemoryAllocator::mem_free(addr);
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	ea4080e7          	jalr	-348(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001f14:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	010080e7          	jalr	16(ra) # 80002f28 <_ZN15MemoryAllocator5printEv>
    if (ret1 == 0) __putc('G');
    80001f20:	02090063          	beqz	s2,80001f40 <_Z19testMemoryAllocatorv+0x80>
    if (ret2 < 0) __putc('G');
    80001f24:	0204c663          	bltz	s1,80001f50 <_Z19testMemoryAllocatorv+0x90>
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	00013903          	ld	s2,0(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret
    if (ret1 == 0) __putc('G');
    80001f40:	04700513          	li	a0,71
    80001f44:	00007097          	auipc	ra,0x7
    80001f48:	e38080e7          	jalr	-456(ra) # 80008d7c <__putc>
    80001f4c:	fd9ff06f          	j	80001f24 <_Z19testMemoryAllocatorv+0x64>
    if (ret2 < 0) __putc('G');
    80001f50:	04700513          	li	a0,71
    80001f54:	00007097          	auipc	ra,0x7
    80001f58:	e28080e7          	jalr	-472(ra) # 80008d7c <__putc>
}
    80001f5c:	fcdff06f          	j	80001f28 <_Z19testMemoryAllocatorv+0x68>

0000000080001f60 <_Z11testCMemoryv>:
void testCMemory() {
    80001f60:	fe010113          	addi	sp,sp,-32
    80001f64:	00113c23          	sd	ra,24(sp)
    80001f68:	00813823          	sd	s0,16(sp)
    80001f6c:	00913423          	sd	s1,8(sp)
    80001f70:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	fb4080e7          	jalr	-76(ra) # 80002f28 <_ZN15MemoryAllocator5printEv>
    void* addr = mem_alloc(50);
    80001f7c:	03200513          	li	a0,50
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	2e0080e7          	jalr	736(ra) # 80001260 <_Z9mem_allocm>
    80001f88:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	f9c080e7          	jalr	-100(ra) # 80002f28 <_ZN15MemoryAllocator5printEv>
    mem_free(addr);
    80001f94:	00048513          	mv	a0,s1
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	318080e7          	jalr	792(ra) # 800012b0 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	f88080e7          	jalr	-120(ra) # 80002f28 <_ZN15MemoryAllocator5printEv>
}
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret

0000000080001fbc <_Z11testConsolePv>:
void testConsole(void *args) {
    80001fbc:	fd010113          	addi	sp,sp,-48
    80001fc0:	02113423          	sd	ra,40(sp)
    80001fc4:	02813023          	sd	s0,32(sp)
    80001fc8:	00913c23          	sd	s1,24(sp)
    80001fcc:	01213823          	sd	s2,16(sp)
    80001fd0:	01313423          	sd	s3,8(sp)
    80001fd4:	03010413          	addi	s0,sp,48
        char c1 = getc();
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	658080e7          	jalr	1624(ra) # 80001630 <_Z4getcv>
    80001fe0:	00050993          	mv	s3,a0
        char c2 = getc();
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	64c080e7          	jalr	1612(ra) # 80001630 <_Z4getcv>
    80001fec:	00050913          	mv	s2,a0
        char c3 = getc();
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	640080e7          	jalr	1600(ra) # 80001630 <_Z4getcv>
    80001ff8:	00050493          	mv	s1,a0
        putc(c1);
    80001ffc:	00098513          	mv	a0,s3
    80002000:	fffff097          	auipc	ra,0xfffff
    80002004:	67c080e7          	jalr	1660(ra) # 8000167c <_Z4putcc>
        putc(c2);
    80002008:	00090513          	mv	a0,s2
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	670080e7          	jalr	1648(ra) # 8000167c <_Z4putcc>
        putc(c3);
    80002014:	00048513          	mv	a0,s1
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	664080e7          	jalr	1636(ra) # 8000167c <_Z4putcc>
    while (true) {
    80002020:	fb9ff06f          	j	80001fd8 <_Z11testConsolePv+0x1c>

0000000080002024 <main>:

int main() {
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	02010413          	addi	s0,sp,32

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    80002038:	0000a797          	auipc	a5,0xa
    8000203c:	c187b783          	ld	a5,-1000(a5) # 8000bc50 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    80002040:	10579073          	csrw	stvec,a5
    MemoryAllocator::getAllocator();
    80002044:	00001097          	auipc	ra,0x1
    80002048:	c6c080e7          	jalr	-916(ra) # 80002cb0 <_ZN15MemoryAllocator12getAllocatorEv>
    Scheduler::init_scheduler();
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	bd8080e7          	jalr	-1064(ra) # 80001c24 <_ZN9Scheduler14init_schedulerEv>
    myConsole::init();
    80002054:	00000097          	auipc	ra,0x0
    80002058:	c0c080e7          	jalr	-1012(ra) # 80001c60 <_ZN9myConsole4initEv>

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&mythreads[0], nullptr, nullptr); // main
    8000205c:	0000a497          	auipc	s1,0xa
    80002060:	cac48493          	addi	s1,s1,-852 # 8000bd08 <mythreads>
    80002064:	00000613          	li	a2,0
    80002068:	00000593          	li	a1,0
    8000206c:	00048513          	mv	a0,s1
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	28c080e7          	jalr	652(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = mythreads[0];
    80002078:	0004b703          	ld	a4,0(s1)
    8000207c:	0000a797          	auipc	a5,0xa
    80002080:	bf47b783          	ld	a5,-1036(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002084:	00e7b023          	sd	a4,0(a5)

    thread_create(&mythreads[3], handleNewChars, nullptr);
    80002088:	00000613          	li	a2,0
    8000208c:	00000597          	auipc	a1,0x0
    80002090:	da858593          	addi	a1,a1,-600 # 80001e34 <_Z14handleNewCharsPv>
    80002094:	0000a517          	auipc	a0,0xa
    80002098:	c8c50513          	addi	a0,a0,-884 # 8000bd20 <mythreads+0x18>
    8000209c:	fffff097          	auipc	ra,0xfffff
    800020a0:	260080e7          	jalr	608(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    800020a4:	00200793          	li	a5,2
    800020a8:	1007a073          	csrs	sstatus,a5
//    thread_create(&mythreads[1], testConsole, nullptr);
    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&mythreads[1], userWrapper, nullptr);
    800020ac:	00000613          	li	a2,0
    800020b0:	00000597          	auipc	a1,0x0
    800020b4:	de858593          	addi	a1,a1,-536 # 80001e98 <_Z11userWrapperPv>
    800020b8:	0000a517          	auipc	a0,0xa
    800020bc:	c5850513          	addi	a0,a0,-936 # 8000bd10 <mythreads+0x8>
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	23c080e7          	jalr	572(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

    while ( true ) { thread_dispatch(); }
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	308080e7          	jalr	776(ra) # 800013d0 <_Z15thread_dispatchv>
    800020d0:	ff9ff06f          	j	800020c8 <main+0xa4>

00000000800020d4 <_ZN6Thread7wrapperEPv>:

Thread::~Thread() {
    delete &this->myHandle;
}

void Thread::wrapper(void *arg) {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    auto* t = (Thread*) arg;
    t->run();
    800020e4:	00053783          	ld	a5,0(a0)
    800020e8:	0107b783          	ld	a5,16(a5)
    800020ec:	000780e7          	jalr	a5
}
    800020f0:	00813083          	ld	ra,8(sp)
    800020f4:	00013403          	ld	s0,0(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    80002110:	0000a797          	auipc	a5,0xa
    80002114:	96078793          	addi	a5,a5,-1696 # 8000ba70 <_ZTV9Semaphore+0x10>
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

00000000800021b0 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	00813023          	sd	s0,0(sp)
    800021bc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	0f0080e7          	jalr	240(ra) # 800012b0 <_Z8mem_freePv>
}
    800021c8:	00813083          	ld	ra,8(sp)
    800021cc:	00013403          	ld	s0,0(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800021d8:	0000a797          	auipc	a5,0xa
    800021dc:	87078793          	addi	a5,a5,-1936 # 8000ba48 <_ZTV6Thread+0x10>
    800021e0:	00f53023          	sd	a5,0(a0)
    delete &this->myHandle;
    800021e4:	00850513          	addi	a0,a0,8
    800021e8:	02050663          	beqz	a0,80002214 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00113423          	sd	ra,8(sp)
    800021f4:	00813023          	sd	s0,0(sp)
    800021f8:	01010413          	addi	s0,sp,16
    delete &this->myHandle;
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	fb4080e7          	jalr	-76(ra) # 800021b0 <_ZdlPv>
}
    80002204:	00813083          	ld	ra,8(sp)
    80002208:	00013403          	ld	s0,0(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret
    80002214:	00008067          	ret

0000000080002218 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	02010413          	addi	s0,sp,32
    8000222c:	00050493          	mv	s1,a0
}
    80002230:	00000097          	auipc	ra,0x0
    80002234:	fa8080e7          	jalr	-88(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80002238:	00048513          	mv	a0,s1
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	f74080e7          	jalr	-140(ra) # 800021b0 <_ZdlPv>
    80002244:	01813083          	ld	ra,24(sp)
    80002248:	01013403          	ld	s0,16(sp)
    8000224c:	00813483          	ld	s1,8(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	02010413          	addi	s0,sp,32
    8000226c:	00050493          	mv	s1,a0
}
    80002270:	00000097          	auipc	ra,0x0
    80002274:	e90080e7          	jalr	-368(ra) # 80002100 <_ZN9SemaphoreD1Ev>
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	f34080e7          	jalr	-204(ra) # 800021b0 <_ZdlPv>
    80002284:	01813083          	ld	ra,24(sp)
    80002288:	01013403          	ld	s0,16(sp)
    8000228c:	00813483          	ld	s1,8(sp)
    80002290:	02010113          	addi	sp,sp,32
    80002294:	00008067          	ret

0000000080002298 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00813423          	sd	s0,8(sp)
    800022a0:	01010413          	addi	s0,sp,16
    800022a4:	00009797          	auipc	a5,0x9
    800022a8:	7a478793          	addi	a5,a5,1956 # 8000ba48 <_ZTV6Thread+0x10>
    800022ac:	00f53023          	sd	a5,0(a0)
    800022b0:	00053423          	sd	zero,8(a0)
    this->body = body;
    800022b4:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800022b8:	00c53c23          	sd	a2,24(a0)
}
    800022bc:	00813403          	ld	s0,8(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00113423          	sd	ra,8(sp)
    800022d0:	00813023          	sd	s0,0(sp)
    800022d4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	30c080e7          	jalr	780(ra) # 800015e4 <_Z10time_sleepm>
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002300:	fffff097          	auipc	ra,0xfffff
    80002304:	0d0080e7          	jalr	208(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80002308:	00813083          	ld	ra,8(sp)
    8000230c:	00013403          	ld	s0,0(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_ZN6Thread5startEv>:
int Thread::start() {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	00813023          	sd	s0,0(sp)
    80002324:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    80002328:	01853603          	ld	a2,24(a0)
    8000232c:	01053583          	ld	a1,16(a0)
    80002330:	00850513          	addi	a0,a0,8
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	fc8080e7          	jalr	-56(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00813423          	sd	s0,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    80002358:	00009797          	auipc	a5,0x9
    8000235c:	6f078793          	addi	a5,a5,1776 # 8000ba48 <_ZTV6Thread+0x10>
    80002360:	00f53023          	sd	a5,0(a0)
    80002364:	00053423          	sd	zero,8(a0)
    this->body = wrapper;
    80002368:	00000797          	auipc	a5,0x0
    8000236c:	d6c78793          	addi	a5,a5,-660 # 800020d4 <_ZN6Thread7wrapperEPv>
    80002370:	00f53823          	sd	a5,16(a0)
    this->arg  = (void*) this;
    80002374:	00a53c23          	sd	a0,24(a0)
}
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    80002394:	00009797          	auipc	a5,0x9
    80002398:	6dc78793          	addi	a5,a5,1756 # 8000ba70 <_ZTV9Semaphore+0x10>
    8000239c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800023a0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800023a4:	00850513          	addi	a0,a0,8
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	064080e7          	jalr	100(ra) # 8000140c <_Z8sem_openPP3Semj>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800023d0:	00853503          	ld	a0,8(a0)
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	0e0080e7          	jalr	224(ra) # 800014b4 <_Z8sem_waitP3Sem>
}
    800023dc:	00813083          	ld	ra,8(sp)
    800023e0:	00013403          	ld	s0,0(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800023fc:	00853503          	ld	a0,8(a0)
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	198080e7          	jalr	408(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80002408:	00813083          	ld	ra,8(sp)
    8000240c:	00013403          	ld	s0,0(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00113423          	sd	ra,8(sp)
    80002420:	00813023          	sd	s0,0(sp)
    80002424:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002428:	00853503          	ld	a0,8(a0)
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	0d4080e7          	jalr	212(ra) # 80001500 <_Z13sem_timedwaitP3Semm>
}
    80002434:	00813083          	ld	ra,8(sp)
    80002438:	00013403          	ld	s0,0(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00113423          	sd	ra,8(sp)
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002454:	00853503          	ld	a0,8(a0)
    80002458:	fffff097          	auipc	ra,0xfffff
    8000245c:	0f4080e7          	jalr	244(ra) # 8000154c <_Z11sem_trywaitP3Sem>
}
    80002460:	00813083          	ld	ra,8(sp)
    80002464:	00013403          	ld	s0,0(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN7Console4getcEv>:

char Console::getc() {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00113423          	sd	ra,8(sp)
    80002478:	00813023          	sd	s0,0(sp)
    8000247c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002480:	fffff097          	auipc	ra,0xfffff
    80002484:	1b0080e7          	jalr	432(ra) # 80001630 <_Z4getcv>
}
    80002488:	00813083          	ld	ra,8(sp)
    8000248c:	00013403          	ld	s0,0(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	00813023          	sd	s0,0(sp)
    800024a4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	1d4080e7          	jalr	468(ra) # 8000167c <_Z4putcc>
}
    800024b0:	00813083          	ld	ra,8(sp)
    800024b4:	00013403          	ld	s0,0(sp)
    800024b8:	01010113          	addi	sp,sp,16
    800024bc:	00008067          	ret

00000000800024c0 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    800024c0:	fe010113          	addi	sp,sp,-32
    800024c4:	00113c23          	sd	ra,24(sp)
    800024c8:	00813823          	sd	s0,16(sp)
    800024cc:	00913423          	sd	s1,8(sp)
    800024d0:	01213023          	sd	s2,0(sp)
    800024d4:	02010413          	addi	s0,sp,32
    800024d8:	00050493          	mv	s1,a0
    800024dc:	00058913          	mv	s2,a1
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	e6c080e7          	jalr	-404(ra) # 8000234c <_ZN6ThreadC1Ev>
    800024e8:	00009797          	auipc	a5,0x9
    800024ec:	53078793          	addi	a5,a5,1328 # 8000ba18 <_ZTV14PeriodicThread+0x10>
    800024f0:	00f4b023          	sd	a5,0(s1)
    800024f4:	0324b023          	sd	s2,32(s1)
    800024f8:	01813083          	ld	ra,24(sp)
    800024fc:	01013403          	ld	s0,16(sp)
    80002500:	00813483          	ld	s1,8(sp)
    80002504:	00013903          	ld	s2,0(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    thread_exit();
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e64080e7          	jalr	-412(ra) # 80001384 <_Z11thread_exitv>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00813423          	sd	s0,8(sp)
    80002540:	01010413          	addi	s0,sp,16
    80002544:	00813403          	ld	s0,8(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    8000255c:	00813403          	ld	s0,8(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00113423          	sd	ra,8(sp)
    80002570:	00813023          	sd	s0,0(sp)
    80002574:	01010413          	addi	s0,sp,16
    80002578:	00009797          	auipc	a5,0x9
    8000257c:	4a078793          	addi	a5,a5,1184 # 8000ba18 <_ZTV14PeriodicThread+0x10>
    80002580:	00f53023          	sd	a5,0(a0)
    80002584:	00000097          	auipc	ra,0x0
    80002588:	c54080e7          	jalr	-940(ra) # 800021d8 <_ZN6ThreadD1Ev>
    8000258c:	00813083          	ld	ra,8(sp)
    80002590:	00013403          	ld	s0,0(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <_ZN14PeriodicThreadD0Ev>:
    8000259c:	fe010113          	addi	sp,sp,-32
    800025a0:	00113c23          	sd	ra,24(sp)
    800025a4:	00813823          	sd	s0,16(sp)
    800025a8:	00913423          	sd	s1,8(sp)
    800025ac:	02010413          	addi	s0,sp,32
    800025b0:	00050493          	mv	s1,a0
    800025b4:	00009797          	auipc	a5,0x9
    800025b8:	46478793          	addi	a5,a5,1124 # 8000ba18 <_ZTV14PeriodicThread+0x10>
    800025bc:	00f53023          	sd	a5,0(a0)
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	c18080e7          	jalr	-1000(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800025c8:	00048513          	mv	a0,s1
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	be4080e7          	jalr	-1052(ra) # 800021b0 <_ZdlPv>
    800025d4:	01813083          	ld	ra,24(sp)
    800025d8:	01013403          	ld	s0,16(sp)
    800025dc:	00813483          	ld	s1,8(sp)
    800025e0:	02010113          	addi	sp,sp,32
    800025e4:	00008067          	ret

00000000800025e8 <_ZN13BoundedBufferC1Ev>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800025e8:	fe010113          	addi	sp,sp,-32
    800025ec:	00113c23          	sd	ra,24(sp)
    800025f0:	00813823          	sd	s0,16(sp)
    800025f4:	00913423          	sd	s1,8(sp)
    800025f8:	02010413          	addi	s0,sp,32
    800025fc:	00050493          	mv	s1,a0
    head = tail = 0;
    80002600:	00052223          	sw	zero,4(a0)
    80002604:	00052023          	sw	zero,0(a0)
    Sem::open(&space_available, bufferSize);
    80002608:	12c00593          	li	a1,300
    8000260c:	00850513          	addi	a0,a0,8
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	318080e7          	jalr	792(ra) # 80001928 <_ZN3Sem4openEPPS_j>
    Sem::open(&item_available, 0);
    80002618:	00000593          	li	a1,0
    8000261c:	01048513          	addi	a0,s1,16
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	308080e7          	jalr	776(ra) # 80001928 <_ZN3Sem4openEPPS_j>
    Sem::open(&mutex, 1);
    80002628:	00100593          	li	a1,1
    8000262c:	01848513          	addi	a0,s1,24
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	2f8080e7          	jalr	760(ra) # 80001928 <_ZN3Sem4openEPPS_j>
}
    80002638:	01813083          	ld	ra,24(sp)
    8000263c:	01013403          	ld	s0,16(sp)
    80002640:	00813483          	ld	s1,8(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret

000000008000264c <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00113c23          	sd	ra,24(sp)
    80002654:	00813823          	sd	s0,16(sp)
    80002658:	00913423          	sd	s1,8(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
    Sem::s_close(space_available);
    80002664:	00853503          	ld	a0,8(a0)
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	228080e7          	jalr	552(ra) # 80001890 <_ZN3Sem7s_closeEPS_>
    Sem::s_close(item_available);
    80002670:	0104b503          	ld	a0,16(s1)
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	21c080e7          	jalr	540(ra) # 80001890 <_ZN3Sem7s_closeEPS_>
    Sem::s_close(mutex);
    8000267c:	0184b503          	ld	a0,24(s1)
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	210080e7          	jalr	528(ra) # 80001890 <_ZN3Sem7s_closeEPS_>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret

000000008000269c <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    8000269c:	fe010113          	addi	sp,sp,-32
    800026a0:	00113c23          	sd	ra,24(sp)
    800026a4:	00813823          	sd	s0,16(sp)
    800026a8:	00913423          	sd	s1,8(sp)
    800026ac:	01213023          	sd	s2,0(sp)
    800026b0:	02010413          	addi	s0,sp,32
    800026b4:	00050493          	mv	s1,a0
    800026b8:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800026bc:	00853503          	ld	a0,8(a0)
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	0a8080e7          	jalr	168(ra) # 80001768 <_ZN3Sem4waitEPS_>
    //Sem::wait(mutex);
    buffer[tail++] = c;
    800026c8:	0044a783          	lw	a5,4(s1)
    800026cc:	0017871b          	addiw	a4,a5,1
    800026d0:	00f487b3          	add	a5,s1,a5
    800026d4:	03278023          	sb	s2,32(a5)
    tail %= bufferSize;
    800026d8:	12c00793          	li	a5,300
    800026dc:	02f767bb          	remw	a5,a4,a5
    800026e0:	00f4a223          	sw	a5,4(s1)
    //Sem::signal(mutex);
    Sem::signal(item_available);
    800026e4:	0104b503          	ld	a0,16(s1)
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	110080e7          	jalr	272(ra) # 800017f8 <_ZN3Sem6signalEPS_>
}
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	00013903          	ld	s2,0(sp)
    80002700:	02010113          	addi	sp,sp,32
    80002704:	00008067          	ret

0000000080002708 <_ZN13BoundedBuffer3getEv>:

char BoundedBuffer::get() {
    80002708:	fe010113          	addi	sp,sp,-32
    8000270c:	00113c23          	sd	ra,24(sp)
    80002710:	00813823          	sd	s0,16(sp)
    80002714:	00913423          	sd	s1,8(sp)
    80002718:	01213023          	sd	s2,0(sp)
    8000271c:	02010413          	addi	s0,sp,32
    80002720:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002724:	01053503          	ld	a0,16(a0)
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	040080e7          	jalr	64(ra) # 80001768 <_ZN3Sem4waitEPS_>
    //Sem::wait(mutex);
    char  c = buffer[head++];
    80002730:	0004a783          	lw	a5,0(s1)
    80002734:	0017871b          	addiw	a4,a5,1
    80002738:	00f487b3          	add	a5,s1,a5
    8000273c:	0207c903          	lbu	s2,32(a5)
    head %= bufferSize;
    80002740:	12c00793          	li	a5,300
    80002744:	02f767bb          	remw	a5,a4,a5
    80002748:	00f4a023          	sw	a5,0(s1)
    //Sem::signal(mutex);
    Sem::signal(space_available);
    8000274c:	0084b503          	ld	a0,8(s1)
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	0a8080e7          	jalr	168(ra) # 800017f8 <_ZN3Sem6signalEPS_>
    return c;
}
    80002758:	00090513          	mv	a0,s2
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	00013903          	ld	s2,0(sp)
    8000276c:	02010113          	addi	sp,sp,32
    80002770:	00008067          	ret

0000000080002774 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00113423          	sd	ra,8(sp)
    8000277c:	00813023          	sd	s0,0(sp)
    80002780:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
    80002784:	05750513          	addi	a0,a0,87
    80002788:	00655513          	srli	a0,a0,0x6
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	3e4080e7          	jalr	996(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002794:	00813083          	ld	ra,8(sp)
    80002798:	00013403          	ld	s0,0(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00113423          	sd	ra,8(sp)
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	5fc080e7          	jalr	1532(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800027bc:	00813083          	ld	ra,8(sp)
    800027c0:	00013403          	ld	s0,0(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <_ZNK13BoundedBuffer5emptyEv>:

bool BoundedBuffer::empty() const {
    800027cc:	ff010113          	addi	sp,sp,-16
    800027d0:	00113423          	sd	ra,8(sp)
    800027d4:	00813023          	sd	s0,0(sp)
    800027d8:	01010413          	addi	s0,sp,16
    return !item_available->getValue();
    800027dc:	01053503          	ld	a0,16(a0)
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	1ac080e7          	jalr	428(ra) # 8000198c <_ZNK3Sem8getValueEv>
}
    800027e8:	00153513          	seqz	a0,a0
    800027ec:	00813083          	ld	ra,8(sp)
    800027f0:	00013403          	ld	s0,0(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret

00000000800027fc <_ZNK13BoundedBuffer4fullEv>:

bool BoundedBuffer::full() const {
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00113423          	sd	ra,8(sp)
    80002804:	00813023          	sd	s0,0(sp)
    80002808:	01010413          	addi	s0,sp,16
    return !space_available->getValue();
    8000280c:	00853503          	ld	a0,8(a0)
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	17c080e7          	jalr	380(ra) # 8000198c <_ZNK3Sem8getValueEv>
};
    80002818:	00153513          	seqz	a0,a0
    8000281c:	00813083          	ld	ra,8(sp)
    80002820:	00013403          	ld	s0,0(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN5RISCV10popSppSpieEv>:
extern void handleNewChars(void*);

// first time running a thread, sepc inside of wrapper


void RISCV::popSppSpie() {
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00813423          	sd	s0,8(sp)
    80002834:	01010413          	addi	s0,sp,16

    // not inline ( ra reg )

    if (TCB::running->routine != handleNewChars) RISCV::mask_status(SPP);
    80002838:	00009797          	auipc	a5,0x9
    8000283c:	4387b783          	ld	a5,1080(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002840:	0007b783          	ld	a5,0(a5)
    80002844:	0287b703          	ld	a4,40(a5)
    80002848:	00009797          	auipc	a5,0x9
    8000284c:	4387b783          	ld	a5,1080(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002850:	00f70663          	beq	a4,a5,8000285c <_ZN5RISCV10popSppSpieEv+0x30>
        __asm__ volatile("csrs sip, %0" : : "r"(mask));
    }


    static inline void mask_status(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80002854:	10000793          	li	a5,256
    80002858:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    8000285c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002860:	10200073          	sret

    // => pop spp and spie !
    // exit from supervisor mode
}
    80002864:	00813403          	ld	s0,8(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN5RISCV16handle_interruptEv>:

void RISCV::handle_interrupt() {
    80002870:	f9010113          	addi	sp,sp,-112
    80002874:	06113423          	sd	ra,104(sp)
    80002878:	06813023          	sd	s0,96(sp)
    8000287c:	04913c23          	sd	s1,88(sp)
    80002880:	05213823          	sd	s2,80(sp)
    80002884:	05313423          	sd	s3,72(sp)
    80002888:	07010413          	addi	s0,sp,112

    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    8000288c:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002890:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002894:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002898:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    8000289c:	00070693          	mv	a3,a4

};

inline uint64 RISCV::rd_scause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    800028a0:	142027f3          	csrr	a5,scause
    800028a4:	f8f43c23          	sd	a5,-104(s0)
    return value;
    800028a8:	f9843703          	ld	a4,-104(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    800028ac:	fff00793          	li	a5,-1
    800028b0:	03f79793          	slli	a5,a5,0x3f
    800028b4:	00178793          	addi	a5,a5,1
    800028b8:	06f70063          	beq	a4,a5,80002918 <_ZN5RISCV16handle_interruptEv+0xa8>

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }

    } else if (scause == EXTERNAL) {
    800028bc:	fff00793          	li	a5,-1
    800028c0:	03f79793          	slli	a5,a5,0x3f
    800028c4:	00978793          	addi	a5,a5,9
    800028c8:	10f70663          	beq	a4,a5,800029d4 <_ZN5RISCV16handle_interruptEv+0x164>
//        TCB::contextSwitch( &((TCB*)a1)->context, &((TCB*)a2)->context );
//
//        wr_sepc(sepc);
//        wr_sstatus(sstatus);

     else if (scause == U_ECALL || scause == S_ECALL){
    800028cc:	ff870713          	addi	a4,a4,-8
    800028d0:	00100793          	li	a5,1
    800028d4:	28e7e463          	bltu	a5,a4,80002b5c <_ZN5RISCV16handle_interruptEv+0x2ec>
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    800028d8:	141027f3          	csrr	a5,sepc
    800028dc:	fcf43423          	sd	a5,-56(s0)
    return value;
    800028e0:	fc843483          	ld	s1,-56(s0)
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
    800028e4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    800028e8:	100027f3          	csrr	a5,sstatus
    800028ec:	fcf43023          	sd	a5,-64(s0)
    return value;
    800028f0:	fc043903          	ld	s2,-64(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    800028f4:	04200793          	li	a5,66
    800028f8:	1907e063          	bltu	a5,a6,80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
    800028fc:	00281813          	slli	a6,a6,0x2
    80002900:	00006717          	auipc	a4,0x6
    80002904:	72070713          	addi	a4,a4,1824 # 80009020 <CONSOLE_STATUS+0x10>
    80002908:	00e80833          	add	a6,a6,a4
    8000290c:	00082783          	lw	a5,0(a6)
    80002910:	00e787b3          	add	a5,a5,a4
    80002914:	00078067          	jr	a5
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002918:	00200793          	li	a5,2
    8000291c:	1447b073          	csrc	sip,a5

    Scheduler(const Scheduler&) = delete;

private:

    static bool hasSleeping() {return  first_sleepy != nullptr;}
    80002920:	00009797          	auipc	a5,0x9
    80002924:	3487b783          	ld	a5,840(a5) # 8000bc68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002928:	0007b483          	ld	s1,0(a5)
        if (Scheduler::hasSleeping()) {
    8000292c:	04048463          	beqz	s1,80002974 <_ZN5RISCV16handle_interruptEv+0x104>
            Scheduler::first_sleepy -> sleeping_time --;
    80002930:	0184b783          	ld	a5,24(s1)
    80002934:	fff78793          	addi	a5,a5,-1
    80002938:	00f4bc23          	sd	a5,24(s1)
            while (tcb) {
    8000293c:	02048663          	beqz	s1,80002968 <_ZN5RISCV16handle_interruptEv+0xf8>
                if (tcb -> sleeping_time > 0) break;
    80002940:	0184b783          	ld	a5,24(s1)
    80002944:	02079263          	bnez	a5,80002968 <_ZN5RISCV16handle_interruptEv+0xf8>
                tcb->current_state = TCB::RUNNABLE;
    80002948:	0604a023          	sw	zero,96(s1)
                Scheduler::put(tcb);
    8000294c:	00048513          	mv	a0,s1
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	0b8080e7          	jalr	184(ra) # 80001a08 <_ZN9Scheduler3putEP3TCB>
                TCB* next = tcb -> next_sleepy;
    80002958:	0104b783          	ld	a5,16(s1)
                tcb -> next_sleepy = nullptr;
    8000295c:	0004b823          	sd	zero,16(s1)
                tcb = next;
    80002960:	00078493          	mv	s1,a5
            while (tcb) {
    80002964:	fd9ff06f          	j	8000293c <_ZN5RISCV16handle_interruptEv+0xcc>
            Scheduler::first_sleepy = tcb;
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	3007b783          	ld	a5,768(a5) # 8000bc68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002970:	0097b023          	sd	s1,0(a5)
        TCB::time_slice_count ++;
    80002974:	00009717          	auipc	a4,0x9
    80002978:	31473703          	ld	a4,788(a4) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000297c:	00073783          	ld	a5,0(a4)
    80002980:	00178793          	addi	a5,a5,1
    80002984:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    80002988:	00009717          	auipc	a4,0x9
    8000298c:	2e873703          	ld	a4,744(a4) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002990:	00073703          	ld	a4,0(a4)
    static void yield(TCB*, TCB*);

    static void dispatch();

    state getState() const {return current_state;}
    time_t getTimeSlice() const {return time_slice;}
    80002994:	02073703          	ld	a4,32(a4)
    80002998:	0ee7e463          	bltu	a5,a4,80002a80 <_ZN5RISCV16handle_interruptEv+0x210>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    8000299c:	141027f3          	csrr	a5,sepc
    800029a0:	faf43423          	sd	a5,-88(s0)
    return value;
    800029a4:	fa843903          	ld	s2,-88(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    800029a8:	100027f3          	csrr	a5,sstatus
    800029ac:	faf43023          	sd	a5,-96(s0)
    return value;
    800029b0:	fa043483          	ld	s1,-96(s0)
            TCB::time_slice_count = 0; // new running thread
    800029b4:	00009797          	auipc	a5,0x9
    800029b8:	2d47b783          	ld	a5,724(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x60>
    800029bc:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800029c0:	00001097          	auipc	ra,0x1
    800029c4:	b78080e7          	jalr	-1160(ra) # 80003538 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    800029c8:	14191073          	csrw	sepc,s2
}

inline void RISCV::wr_sstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    800029cc:	10049073          	csrw	sstatus,s1
}
    800029d0:	0b00006f          	j	80002a80 <_ZN5RISCV16handle_interruptEv+0x210>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    800029d4:	141027f3          	csrr	a5,sepc
    800029d8:	faf43c23          	sd	a5,-72(s0)
    return value;
    800029dc:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    800029e0:	100027f3          	csrr	a5,sstatus
    800029e4:	faf43823          	sd	a5,-80(s0)
    return value;
    800029e8:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    800029ec:	00005097          	auipc	ra,0x5
    800029f0:	b28080e7          	jalr	-1240(ra) # 80007514 <plic_claim>
    800029f4:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    800029f8:	00a00793          	li	a5,10
    800029fc:	00f50c63          	beq	a0,a5,80002a14 <_ZN5RISCV16handle_interruptEv+0x1a4>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002a00:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002a04:	10091073          	csrw	sstatus,s2
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002a08:	20000793          	li	a5,512
    80002a0c:	1447b073          	csrc	sip,a5
    }
    80002a10:	0700006f          	j	80002a80 <_ZN5RISCV16handle_interruptEv+0x210>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002a14:	00009797          	auipc	a5,0x9
    80002a18:	22c7b783          	ld	a5,556(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002a1c:	0007b783          	ld	a5,0(a5)
    80002a20:	0007c783          	lbu	a5,0(a5)
    80002a24:	0017f793          	andi	a5,a5,1
    80002a28:	02078c63          	beqz	a5,80002a60 <_ZN5RISCV16handle_interruptEv+0x1f0>
    80002a2c:	00009797          	auipc	a5,0x9
    80002a30:	20c7b783          	ld	a5,524(a5) # 8000bc38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002a34:	0007b503          	ld	a0,0(a5)
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	dc4080e7          	jalr	-572(ra) # 800027fc <_ZNK13BoundedBuffer4fullEv>
    80002a40:	02051063          	bnez	a0,80002a60 <_ZN5RISCV16handle_interruptEv+0x1f0>
                char c = *(char *) CONSOLE_RX_DATA;
    80002a44:	00009797          	auipc	a5,0x9
    80002a48:	1ec7b783          	ld	a5,492(a5) # 8000bc30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a4c:	0007b783          	ld	a5,0(a5)
                myConsole::input_putc(c);
    80002a50:	0007c503          	lbu	a0,0(a5)
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	348080e7          	jalr	840(ra) # 80001d9c <_ZN9myConsole10input_putcEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002a5c:	fb9ff06f          	j	80002a14 <_ZN5RISCV16handle_interruptEv+0x1a4>
            plic_complete(irq);
    80002a60:	00048513          	mv	a0,s1
    80002a64:	00005097          	auipc	ra,0x5
    80002a68:	ae8080e7          	jalr	-1304(ra) # 8000754c <plic_complete>
    80002a6c:	f95ff06f          	j	80002a00 <_ZN5RISCV16handle_interruptEv+0x190>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	100080e7          	jalr	256(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002a78:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002a7c:	10091073          	csrw	sstatus,s2

    } else {
        // INVALID INTERRUPT CODE
        printInteger(123456789);
    }
}
    80002a80:	06813083          	ld	ra,104(sp)
    80002a84:	06013403          	ld	s0,96(sp)
    80002a88:	05813483          	ld	s1,88(sp)
    80002a8c:	05013903          	ld	s2,80(sp)
    80002a90:	04813983          	ld	s3,72(sp)
    80002a94:	07010113          	addi	sp,sp,112
    80002a98:	00008067          	ret
                MemoryAllocator::mem_free((void *)a1);
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	314080e7          	jalr	788(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002aa4:	fd5ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    80002aa8:	00001097          	auipc	ra,0x1
    80002aac:	904080e7          	jalr	-1788(ra) # 800033ac <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    80002ab0:	fc9ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                TCB::_threadExit();
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	af4080e7          	jalr	-1292(ra) # 800035a8 <_ZN3TCB11_threadExitEv>
                break;
    80002abc:	fbdff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                TCB::time_slice_count = 0;
    80002ac0:	00009797          	auipc	a5,0x9
    80002ac4:	1c87b783          	ld	a5,456(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002ac8:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	a6c080e7          	jalr	-1428(ra) # 80003538 <_ZN3TCB8dispatchEv>
                break;
    80002ad4:	fa5ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Sem::open((sem_t*)a1, (unsigned int)a2);
    80002ad8:	0005859b          	sext.w	a1,a1
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	e4c080e7          	jalr	-436(ra) # 80001928 <_ZN3Sem4openEPPS_j>
                break;
    80002ae4:	f95ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Sem::s_close((sem_t)a1); // a1 == handle
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	da8080e7          	jalr	-600(ra) # 80001890 <_ZN3Sem7s_closeEPS_>
                break;
    80002af0:	f89ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Sem::wait(((sem_t)a1)); // a1 <=> handle
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	c74080e7          	jalr	-908(ra) # 80001768 <_ZN3Sem4waitEPS_>
                break;
    80002afc:	f7dff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Sem::signal((sem_t)a1); // a1 <=> handle
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	cf8080e7          	jalr	-776(ra) # 800017f8 <_ZN3Sem6signalEPS_>
                break;
    80002b08:	f71ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Sem::timedWait((sem_t)a1,(time_t)a2);
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	d40080e7          	jalr	-704(ra) # 8000184c <_ZN3Sem9timedWaitEPS_m>
                break;
    80002b14:	f65ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Sem::trywait((sem_t)a1);
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	ba0080e7          	jalr	-1120(ra) # 800016b8 <_ZN3Sem7trywaitEPS_>
                break;
    80002b20:	f59ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                Scheduler::put_to_sleep((thread_t)TCB::running, (time_t)a1);
    80002b24:	00050593          	mv	a1,a0
    80002b28:	00009797          	auipc	a5,0x9
    80002b2c:	1487b783          	ld	a5,328(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b30:	0007b503          	ld	a0,0(a5)
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	030080e7          	jalr	48(ra) # 80001b64 <_ZN9Scheduler12put_to_sleepEP3TCBm>
                break;
    80002b3c:	f3dff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                myConsole::input_getc();
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	1c8080e7          	jalr	456(ra) # 80001d08 <_ZN9myConsole10input_getcEv>
                break;
    80002b48:	f31ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
                myConsole::output_putc((char) a1);
    80002b4c:	0ff57513          	andi	a0,a0,255
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	1e8080e7          	jalr	488(ra) # 80001d38 <_ZN9myConsole11output_putcEc>
                break;
    80002b58:	f21ff06f          	j	80002a78 <_ZN5RISCV16handle_interruptEv+0x208>
        printInteger(123456789);
    80002b5c:	075bd537          	lui	a0,0x75bd
    80002b60:	d1550513          	addi	a0,a0,-747 # 75bcd15 <_entry-0x78a432eb>
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	610080e7          	jalr	1552(ra) # 80003174 <_Z12printIntegerm>
}
    80002b6c:	f15ff06f          	j	80002a80 <_ZN5RISCV16handle_interruptEv+0x210>

0000000080002b70 <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16

    //size = block number

    if (size <= 0) return nullptr;
    80002b7c:	12050663          	beqz	a0,80002ca8 <_ZN15MemoryAllocator9mem_allocEm+0x138>

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;
    80002b80:	00651793          	slli	a5,a0,0x6

    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002b84:	00009517          	auipc	a0,0x9
    80002b88:	1ac53503          	ld	a0,428(a0) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002b8c:	0e050e63          	beqz	a0,80002c88 <_ZN15MemoryAllocator9mem_allocEm+0x118>

        if (curr->size >= byte_size) {
    80002b90:	01053703          	ld	a4,16(a0)
    80002b94:	00f77663          	bgeu	a4,a5,80002ba0 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002b98:	00053503          	ld	a0,0(a0)
    80002b9c:	ff1ff06f          	j	80002b8c <_ZN15MemoryAllocator9mem_allocEm+0x1c>

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    80002ba0:	40f70733          	sub	a4,a4,a5
    80002ba4:	01700693          	li	a3,23
    80002ba8:	06e6e463          	bltu	a3,a4,80002c10 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                if (curr->next) curr->next->prev = curr->prev;
    80002bac:	00053703          	ld	a4,0(a0)
    80002bb0:	00070663          	beqz	a4,80002bbc <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002bb4:	00853683          	ld	a3,8(a0)
    80002bb8:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    80002bbc:	00853703          	ld	a4,8(a0)
    80002bc0:	04070063          	beqz	a4,80002c00 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    80002bc4:	00053683          	ld	a3,0(a0)
    80002bc8:	00d73023          	sd	a3,0(a4)
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80002bcc:	00009717          	auipc	a4,0x9
    80002bd0:	16c73703          	ld	a4,364(a4) # 8000bd38 <_ZN15MemoryAllocator13used_mem_headE>
    80002bd4:	08e56263          	bltu	a0,a4,80002c58 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002bd8:	0a070e63          	beqz	a4,80002c94 <_ZN15MemoryAllocator9mem_allocEm+0x124>
            else for (prev = used_mem_head; prev->next && (char*)curr >= (char *) prev + prev->size; prev = prev->next) {
    80002bdc:	00070693          	mv	a3,a4
    80002be0:	00073703          	ld	a4,0(a4)
    80002be4:	06070c63          	beqz	a4,80002c5c <_ZN15MemoryAllocator9mem_allocEm+0xec>
    80002be8:	0106b603          	ld	a2,16(a3)
    80002bec:	00c68633          	add	a2,a3,a2
    80002bf0:	06c56663          	bltu	a0,a2,80002c5c <_ZN15MemoryAllocator9mem_allocEm+0xec>
                // prev addr < addr and prev-next addr > addr + size
                if ((char*)prev->next >= (char*)curr + byte_size) break;
    80002bf4:	00f50633          	add	a2,a0,a5
    80002bf8:	fec762e3          	bltu	a4,a2,80002bdc <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    80002bfc:	0600006f          	j	80002c5c <_ZN15MemoryAllocator9mem_allocEm+0xec>
                else free_mem_head = curr->next;
    80002c00:	00053703          	ld	a4,0(a0)
    80002c04:	00009697          	auipc	a3,0x9
    80002c08:	12e6b623          	sd	a4,300(a3) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002c0c:	fc1ff06f          	j	80002bcc <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    80002c10:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    80002c14:	00053683          	ld	a3,0(a0)
    80002c18:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    80002c1c:	00853683          	ld	a3,8(a0)
    80002c20:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    80002c24:	01053683          	ld	a3,16(a0)
    80002c28:	40f686b3          	sub	a3,a3,a5
    80002c2c:	00d73823          	sd	a3,16(a4)
                if (curr->next) curr->next->prev = remaining;
    80002c30:	00053683          	ld	a3,0(a0)
    80002c34:	00068463          	beqz	a3,80002c3c <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002c38:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    80002c3c:	00853683          	ld	a3,8(a0)
    80002c40:	00068663          	beqz	a3,80002c4c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    80002c44:	00e6b023          	sd	a4,0(a3)
    80002c48:	f85ff06f          	j	80002bcc <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                else free_mem_head = remaining;
    80002c4c:	00009697          	auipc	a3,0x9
    80002c50:	0ee6b223          	sd	a4,228(a3) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002c54:	f79ff06f          	j	80002bcc <_ZN15MemoryAllocator9mem_allocEm+0x5c>
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80002c58:	00000693          	li	a3,0
            }

            // dodavanje na kraj?

            curr->size = byte_size - mem_h_size;
    80002c5c:	fe878793          	addi	a5,a5,-24
    80002c60:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80002c64:	00d53423          	sd	a3,8(a0)

            if (prev) {
    80002c68:	02068a63          	beqz	a3,80002c9c <_ZN15MemoryAllocator9mem_allocEm+0x12c>
                curr->next = prev->next;
    80002c6c:	0006b783          	ld	a5,0(a3)
    80002c70:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80002c74:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    80002c78:	00053783          	ld	a5,0(a0)
    80002c7c:	00078463          	beqz	a5,80002c84 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002c80:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80002c84:	01850513          	addi	a0,a0,24
        }
    }

    // free memory not found :(
    return nullptr;
}
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80002c94:	00070693          	mv	a3,a4
    80002c98:	fc5ff06f          	j	80002c5c <_ZN15MemoryAllocator9mem_allocEm+0xec>
            else used_mem_head = curr;
    80002c9c:	00009797          	auipc	a5,0x9
    80002ca0:	08a7be23          	sd	a0,156(a5) # 8000bd38 <_ZN15MemoryAllocator13used_mem_headE>
    80002ca4:	fd5ff06f          	j	80002c78 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    if (size <= 0) return nullptr;
    80002ca8:	00000513          	li	a0,0
    80002cac:	fddff06f          	j	80002c88 <_ZN15MemoryAllocator9mem_allocEm+0x118>

0000000080002cb0 <_ZN15MemoryAllocator12getAllocatorEv>:
    if (!allocator) {
    80002cb0:	00009797          	auipc	a5,0x9
    80002cb4:	0907b783          	ld	a5,144(a5) # 8000bd40 <_ZN15MemoryAllocator9allocatorE>
    80002cb8:	00078863          	beqz	a5,80002cc8 <_ZN15MemoryAllocator12getAllocatorEv+0x18>
}
    80002cbc:	00009517          	auipc	a0,0x9
    80002cc0:	08453503          	ld	a0,132(a0) # 8000bd40 <_ZN15MemoryAllocator9allocatorE>
    80002cc4:	00008067          	ret
MemoryAllocator* MemoryAllocator::getAllocator() {
    80002cc8:	fe010113          	addi	sp,sp,-32
    80002ccc:	00113c23          	sd	ra,24(sp)
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    80002cdc:	00009697          	auipc	a3,0x9
    80002ce0:	f6c6b683          	ld	a3,-148(a3) # 8000bc48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ce4:	0006b783          	ld	a5,0(a3)
    80002ce8:	00009497          	auipc	s1,0x9
    80002cec:	04848493          	addi	s1,s1,72 # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002cf0:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    80002cf4:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    80002cf8:	0004b703          	ld	a4,0(s1)
    80002cfc:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80002d00:	00009797          	auipc	a5,0x9
    80002d04:	f787b783          	ld	a5,-136(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d08:	0007b783          	ld	a5,0(a5)
    80002d0c:	0006b683          	ld	a3,0(a3)
    80002d10:	40d787b3          	sub	a5,a5,a3
    80002d14:	00178793          	addi	a5,a5,1
    80002d18:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    80002d1c:	00100513          	li	a0,1
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	e50080e7          	jalr	-432(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
    80002d28:	00a4b823          	sd	a0,16(s1)
}
    80002d2c:	00009517          	auipc	a0,0x9
    80002d30:	01453503          	ld	a0,20(a0) # 8000bd40 <_ZN15MemoryAllocator9allocatorE>
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	01013403          	ld	s0,16(sp)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret

0000000080002d48 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    80002d48:	ff010113          	addi	sp,sp,-16
    80002d4c:	00813423          	sd	s0,8(sp)
    80002d50:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80002d54:	04050663          	beqz	a0,80002da0 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    80002d58:	00053783          	ld	a5,0(a0)
    80002d5c:	04078663          	beqz	a5,80002da8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80002d60:	01053703          	ld	a4,16(a0)
    80002d64:	00e506b3          	add	a3,a0,a4
    80002d68:	00d78a63          	beq	a5,a3,80002d7c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
    80002d6c:	00000513          	li	a0,0
}
    80002d70:	00813403          	ld	s0,8(sp)
    80002d74:	01010113          	addi	sp,sp,16
    80002d78:	00008067          	ret
        curr->size += curr->next->size;
    80002d7c:	0107b683          	ld	a3,16(a5)
    80002d80:	00d70733          	add	a4,a4,a3
    80002d84:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    80002d88:	0007b783          	ld	a5,0(a5)
    80002d8c:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80002d90:	00078463          	beqz	a5,80002d98 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80002d94:	00a7b423          	sd	a0,8(a5)
        return 1; // success status
    80002d98:	00100513          	li	a0,1
    80002d9c:	fd5ff06f          	j	80002d70 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (!curr) return 0;
    80002da0:	00000513          	li	a0,0
    80002da4:	fcdff06f          	j	80002d70 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    80002da8:	00000513          	li	a0,0
    80002dac:	fc5ff06f          	j	80002d70 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080002db0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80002db0:	14050863          	beqz	a0,80002f00 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    80002db4:	00009797          	auipc	a5,0x9
    80002db8:	ec47b783          	ld	a5,-316(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002dbc:	0007b783          	ld	a5,0(a5)
    80002dc0:	14a7e463          	bltu	a5,a0,80002f08 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80002dc4:	00009797          	auipc	a5,0x9
    80002dc8:	e847b783          	ld	a5,-380(a5) # 8000bc48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002dcc:	0007b783          	ld	a5,0(a5)
    80002dd0:	14f56063          	bltu	a0,a5,80002f10 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
int MemoryAllocator::mem_free(void* addr) {
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	00813823          	sd	s0,16(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	01213023          	sd	s2,0(sp)
    80002de8:	02010413          	addi	s0,sp,32
    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    80002dec:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    80002df0:	00009797          	auipc	a5,0x9
    80002df4:	f487b783          	ld	a5,-184(a5) # 8000bd38 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    80002df8:	00078863          	beqz	a5,80002e08 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002dfc:	0097f663          	bgeu	a5,s1,80002e08 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002e00:	0007b783          	ld	a5,0(a5)
    80002e04:	ff5ff06f          	j	80002df8 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    if (block != tmp || !tmp) return -1;
    80002e08:	10979863          	bne	a5,s1,80002f18 <_ZN15MemoryAllocator8mem_freeEPv+0x168>
    80002e0c:	10078a63          	beqz	a5,80002f20 <_ZN15MemoryAllocator8mem_freeEPv+0x170>
    if (tmp->prev) tmp->prev->next = tmp->next;
    80002e10:	0087b703          	ld	a4,8(a5)
    80002e14:	06070c63          	beqz	a4,80002e8c <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002e18:	0007b683          	ld	a3,0(a5)
    80002e1c:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    80002e20:	0007b703          	ld	a4,0(a5)
    80002e24:	00070663          	beqz	a4,80002e30 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
    80002e28:	0087b783          	ld	a5,8(a5)
    80002e2c:	00f73423          	sd	a5,8(a4)
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80002e30:	00009797          	auipc	a5,0x9
    80002e34:	f007b783          	ld	a5,-256(a5) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002e38:	06078263          	beqz	a5,80002e9c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    80002e3c:	06f4e063          	bltu	s1,a5,80002e9c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    else for (tmp = free_mem_head; tmp->next && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    80002e40:	00078913          	mv	s2,a5
    80002e44:	0007b783          	ld	a5,0(a5)
    80002e48:	00078463          	beqz	a5,80002e50 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002e4c:	fe97eae3          	bltu	a5,s1,80002e40 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    if (tmp == nullptr) {
    80002e50:	04090663          	beqz	s2,80002e9c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        block->next = tmp->next;
    80002e54:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    80002e58:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80002e5c:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80002e60:	fe853783          	ld	a5,-24(a0)
    80002e64:	00078463          	beqz	a5,80002e6c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002e68:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80002e6c:	00048513          	mv	a0,s1
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	ed8080e7          	jalr	-296(ra) # 80002d48 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    80002e78:	00090513          	mv	a0,s2
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	ecc080e7          	jalr	-308(ra) # 80002d48 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80002e84:	00000513          	li	a0,0
    80002e88:	0580006f          	j	80002ee0 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    else used_mem_head = tmp->next;
    80002e8c:	0007b703          	ld	a4,0(a5)
    80002e90:	00009697          	auipc	a3,0x9
    80002e94:	eae6b423          	sd	a4,-344(a3) # 8000bd38 <_ZN15MemoryAllocator13used_mem_headE>
    80002e98:	f89ff06f          	j	80002e20 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
        block -> prev = nullptr;
    80002e9c:	fe053823          	sd	zero,-16(a0)
        if (free_mem_head) {
    80002ea0:	00009797          	auipc	a5,0x9
    80002ea4:	e907b783          	ld	a5,-368(a5) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002ea8:	04078863          	beqz	a5,80002ef8 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
            free_mem_head->prev = block;
    80002eac:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    80002eb0:	fef53423          	sd	a5,-24(a0)
            free_mem_head = block;
    80002eb4:	00009797          	auipc	a5,0x9
    80002eb8:	e697be23          	sd	s1,-388(a5) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
            tryToJoin(block);
    80002ebc:	00048513          	mv	a0,s1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	e88080e7          	jalr	-376(ra) # 80002d48 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    80002ec8:	00009797          	auipc	a5,0x9
    80002ecc:	e697b423          	sd	s1,-408(a5) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    80002ed0:	00048513          	mv	a0,s1
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	e74080e7          	jalr	-396(ra) # 80002d48 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80002edc:	00000513          	li	a0,0
}
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	01013403          	ld	s0,16(sp)
    80002ee8:	00813483          	ld	s1,8(sp)
    80002eec:	00013903          	ld	s2,0(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret
        else block -> next = nullptr;
    80002ef8:	fe053423          	sd	zero,-24(a0)
    80002efc:	fcdff06f          	j	80002ec8 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80002f00:	fff00513          	li	a0,-1
    80002f04:	00008067          	ret
    80002f08:	fff00513          	li	a0,-1
    80002f0c:	00008067          	ret
    80002f10:	fff00513          	li	a0,-1
}
    80002f14:	00008067          	ret
    if (block != tmp || !tmp) return -1;
    80002f18:	fff00513          	li	a0,-1
    80002f1c:	fc5ff06f          	j	80002ee0 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80002f20:	fff00513          	li	a0,-1
    80002f24:	fbdff06f          	j	80002ee0 <_ZN15MemoryAllocator8mem_freeEPv+0x130>

0000000080002f28 <_ZN15MemoryAllocator5printEv>:

extern void printInteger(uint64);


void MemoryAllocator::print() {
    80002f28:	fe010113          	addi	sp,sp,-32
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002f3c:	00a00513          	li	a0,10
    80002f40:	00006097          	auipc	ra,0x6
    80002f44:	e3c080e7          	jalr	-452(ra) # 80008d7c <__putc>
    __putc('M');
    80002f48:	04d00513          	li	a0,77
    80002f4c:	00006097          	auipc	ra,0x6
    80002f50:	e30080e7          	jalr	-464(ra) # 80008d7c <__putc>
    __putc(':');
    80002f54:	03a00513          	li	a0,58
    80002f58:	00006097          	auipc	ra,0x6
    80002f5c:	e24080e7          	jalr	-476(ra) # 80008d7c <__putc>
    __putc(' ');
    80002f60:	02000513          	li	a0,32
    80002f64:	00006097          	auipc	ra,0x6
    80002f68:	e18080e7          	jalr	-488(ra) # 80008d7c <__putc>
    for (MemoryBlock* tmp = free_mem_head; tmp; tmp = tmp -> next) {
    80002f6c:	00009497          	auipc	s1,0x9
    80002f70:	dc44b483          	ld	s1,-572(s1) # 8000bd30 <_ZN15MemoryAllocator13free_mem_headE>
    80002f74:	04048463          	beqz	s1,80002fbc <_ZN15MemoryAllocator5printEv+0x94>
        printInteger(tmp -> size);
    80002f78:	0104b503          	ld	a0,16(s1)
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	1f8080e7          	jalr	504(ra) # 80003174 <_Z12printIntegerm>
        __putc(' ');
    80002f84:	02000513          	li	a0,32
    80002f88:	00006097          	auipc	ra,0x6
    80002f8c:	df4080e7          	jalr	-524(ra) # 80008d7c <__putc>
        printInteger((uint64)tmp);
    80002f90:	00048513          	mv	a0,s1
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	1e0080e7          	jalr	480(ra) # 80003174 <_Z12printIntegerm>
        __putc(' ');
    80002f9c:	02000513          	li	a0,32
    80002fa0:	00006097          	auipc	ra,0x6
    80002fa4:	ddc080e7          	jalr	-548(ra) # 80008d7c <__putc>
        __putc('f');
    80002fa8:	06600513          	li	a0,102
    80002fac:	00006097          	auipc	ra,0x6
    80002fb0:	dd0080e7          	jalr	-560(ra) # 80008d7c <__putc>
    for (MemoryBlock* tmp = free_mem_head; tmp; tmp = tmp -> next) {
    80002fb4:	0004b483          	ld	s1,0(s1)
    80002fb8:	fbdff06f          	j	80002f74 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    80002fbc:	00900513          	li	a0,9
    80002fc0:	00006097          	auipc	ra,0x6
    80002fc4:	dbc080e7          	jalr	-580(ra) # 80008d7c <__putc>
    for (MemoryBlock* tmp = used_mem_head; tmp; tmp = tmp -> next) {
    80002fc8:	00009497          	auipc	s1,0x9
    80002fcc:	d704b483          	ld	s1,-656(s1) # 8000bd38 <_ZN15MemoryAllocator13used_mem_headE>
    80002fd0:	04048463          	beqz	s1,80003018 <_ZN15MemoryAllocator5printEv+0xf0>
        printInteger(tmp -> size);
    80002fd4:	0104b503          	ld	a0,16(s1)
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	19c080e7          	jalr	412(ra) # 80003174 <_Z12printIntegerm>
        __putc(' ');
    80002fe0:	02000513          	li	a0,32
    80002fe4:	00006097          	auipc	ra,0x6
    80002fe8:	d98080e7          	jalr	-616(ra) # 80008d7c <__putc>
        printInteger((uint64)tmp);
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	184080e7          	jalr	388(ra) # 80003174 <_Z12printIntegerm>
        __putc(' ');
    80002ff8:	02000513          	li	a0,32
    80002ffc:	00006097          	auipc	ra,0x6
    80003000:	d80080e7          	jalr	-640(ra) # 80008d7c <__putc>
        __putc('u');
    80003004:	07500513          	li	a0,117
    80003008:	00006097          	auipc	ra,0x6
    8000300c:	d74080e7          	jalr	-652(ra) # 80008d7c <__putc>
    for (MemoryBlock* tmp = used_mem_head; tmp; tmp = tmp -> next) {
    80003010:	0004b483          	ld	s1,0(s1)
    80003014:	fbdff06f          	j	80002fd0 <_ZN15MemoryAllocator5printEv+0xa8>
    }
}
    80003018:	01813083          	ld	ra,24(sp)
    8000301c:	01013403          	ld	s0,16(sp)
    80003020:	00813483          	ld	s1,8(sp)
    80003024:	02010113          	addi	sp,sp,32
    80003028:	00008067          	ret

000000008000302c <_ZN4List3getEv>:
    if (!head) head = tail = toAdd;
    else tail = tail -> next = toAdd;

}

TCB *List::get() {
    8000302c:	ff010113          	addi	sp,sp,-16
    80003030:	00813423          	sd	s0,8(sp)
    80003034:	01010413          	addi	s0,sp,16

    if (!head) return nullptr;
    80003038:	00053703          	ld	a4,0(a0)
    8000303c:	02070663          	beqz	a4,80003068 <_ZN4List3getEv+0x3c>
    80003040:	00050793          	mv	a5,a0

    TCB* tcb = head -> data;
    80003044:	00073503          	ld	a0,0(a4)
//    Elem* oldHead = head;
    head = head -> next;
    80003048:	00873703          	ld	a4,8(a4)
    8000304c:	00e7b023          	sd	a4,0(a5)

    if (!head) tail = nullptr;
    80003050:	00070863          	beqz	a4,80003060 <_ZN4List3getEv+0x34>

    return tcb;
}
    80003054:	00813403          	ld	s0,8(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret
    if (!head) tail = nullptr;
    80003060:	0007b423          	sd	zero,8(a5)
    80003064:	ff1ff06f          	j	80003054 <_ZN4List3getEv+0x28>
    if (!head) return nullptr;
    80003068:	00070513          	mv	a0,a4
    8000306c:	fe9ff06f          	j	80003054 <_ZN4List3getEv+0x28>

0000000080003070 <_ZN4List4peekEv>:

TCB *List::peek() {
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00813423          	sd	s0,8(sp)
    80003078:	01010413          	addi	s0,sp,16
    if (head) return head->data;
    8000307c:	00053503          	ld	a0,0(a0)
    80003080:	00050463          	beqz	a0,80003088 <_ZN4List4peekEv+0x18>
    80003084:	00053503          	ld	a0,0(a0)
    else return nullptr;
}
    80003088:	00813403          	ld	s0,8(sp)
    8000308c:	01010113          	addi	sp,sp,16
    80003090:	00008067          	ret

0000000080003094 <_ZN4List4ElemC1EP3TCB>:

List::Elem::Elem(TCB *tcb) : data(tcb), next(nullptr) {}
    80003094:	ff010113          	addi	sp,sp,-16
    80003098:	00813423          	sd	s0,8(sp)
    8000309c:	01010413          	addi	s0,sp,16
    800030a0:	00b53023          	sd	a1,0(a0)
    800030a4:	00053423          	sd	zero,8(a0)
    800030a8:	00813403          	ld	s0,8(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZN4List3addEP3TCB>:
void List::add(TCB *tcb) {
    800030b4:	fd010113          	addi	sp,sp,-48
    800030b8:	02113423          	sd	ra,40(sp)
    800030bc:	02813023          	sd	s0,32(sp)
    800030c0:	00913c23          	sd	s1,24(sp)
    800030c4:	01213823          	sd	s2,16(sp)
    800030c8:	01313423          	sd	s3,8(sp)
    800030cc:	03010413          	addi	s0,sp,48
    800030d0:	00050493          	mv	s1,a0
    800030d4:	00058993          	mv	s3,a1
    Elem* toAdd = new Elem(tcb);
    800030d8:	01000513          	li	a0,16
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	05c080e7          	jalr	92(ra) # 80002138 <_Znwm>
    800030e4:	00050913          	mv	s2,a0
    800030e8:	00098593          	mv	a1,s3
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	fa8080e7          	jalr	-88(ra) # 80003094 <_ZN4List4ElemC1EP3TCB>
    if (!head) head = tail = toAdd;
    800030f4:	0004b783          	ld	a5,0(s1)
    800030f8:	02078663          	beqz	a5,80003124 <_ZN4List3addEP3TCB+0x70>
    else tail = tail -> next = toAdd;
    800030fc:	0084b783          	ld	a5,8(s1)
    80003100:	0127b423          	sd	s2,8(a5)
    80003104:	0124b423          	sd	s2,8(s1)
}
    80003108:	02813083          	ld	ra,40(sp)
    8000310c:	02013403          	ld	s0,32(sp)
    80003110:	01813483          	ld	s1,24(sp)
    80003114:	01013903          	ld	s2,16(sp)
    80003118:	00813983          	ld	s3,8(sp)
    8000311c:	03010113          	addi	sp,sp,48
    80003120:	00008067          	ret
    if (!head) head = tail = toAdd;
    80003124:	0124b423          	sd	s2,8(s1)
    80003128:	0124b023          	sd	s2,0(s1)
    8000312c:	fddff06f          	j	80003108 <_ZN4List3addEP3TCB+0x54>

0000000080003130 <_Z13myPrintStringPKc>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void myPrintString(char const* string) {
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	00813823          	sd	s0,16(sp)
    8000313c:	00913423          	sd	s1,8(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80003148:	0004c503          	lbu	a0,0(s1)
    8000314c:	00050a63          	beqz	a0,80003160 <_Z13myPrintStringPKc+0x30>
        putc(*string);
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	52c080e7          	jalr	1324(ra) # 8000167c <_Z4putcc>
        string++;
    80003158:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    8000315c:	fedff06f          	j	80003148 <_Z13myPrintStringPKc+0x18>
    }
}
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	00813483          	ld	s1,8(sp)
    8000316c:	02010113          	addi	sp,sp,32
    80003170:	00008067          	ret

0000000080003174 <_Z12printIntegerm>:

void printInteger(uint64 num) {
    80003174:	fd010113          	addi	sp,sp,-48
    80003178:	02113423          	sd	ra,40(sp)
    8000317c:	02813023          	sd	s0,32(sp)
    80003180:	00913c23          	sd	s1,24(sp)
    80003184:	01213823          	sd	s2,16(sp)
    80003188:	01313423          	sd	s3,8(sp)
    8000318c:	03010413          	addi	s0,sp,48
    80003190:	00050913          	mv	s2,a0
    __putc('\n');
    80003194:	00a00513          	li	a0,10
    80003198:	00006097          	auipc	ra,0x6
    8000319c:	be4080e7          	jalr	-1052(ra) # 80008d7c <__putc>
    if (!num) __putc('0');
    800031a0:	00090863          	beqz	s2,800031b0 <_Z12printIntegerm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    800031a4:	00000993          	li	s3,0
    800031a8:	00000493          	li	s1,0
    800031ac:	01c0006f          	j	800031c8 <_Z12printIntegerm+0x54>
    if (!num) __putc('0');
    800031b0:	03000513          	li	a0,48
    800031b4:	00006097          	auipc	ra,0x6
    800031b8:	bc8080e7          	jalr	-1080(ra) # 80008d7c <__putc>
    800031bc:	fe9ff06f          	j	800031a4 <_Z12printIntegerm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    800031c0:	00a00793          	li	a5,10
    800031c4:	02f95933          	divu	s2,s2,a5
    while (num) {
    800031c8:	02090463          	beqz	s2,800031f0 <_Z12printIntegerm+0x7c>
        num2 *= 10;
    800031cc:	00249793          	slli	a5,s1,0x2
    800031d0:	009784b3          	add	s1,a5,s1
    800031d4:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    800031d8:	00a00493          	li	s1,10
    800031dc:	029974b3          	remu	s1,s2,s1
    800031e0:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    800031e4:	fc049ee3          	bnez	s1,800031c0 <_Z12printIntegerm+0x4c>
    800031e8:	00198993          	addi	s3,s3,1
    800031ec:	fd5ff06f          	j	800031c0 <_Z12printIntegerm+0x4c>
    }
    while (num2) {
    800031f0:	02048063          	beqz	s1,80003210 <_Z12printIntegerm+0x9c>
        __putc(num2 % 10 + '0');
    800031f4:	00a00913          	li	s2,10
    800031f8:	0324f533          	remu	a0,s1,s2
    800031fc:	03050513          	addi	a0,a0,48
    80003200:	00006097          	auipc	ra,0x6
    80003204:	b7c080e7          	jalr	-1156(ra) # 80008d7c <__putc>
        num2 /= 10;
    80003208:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    8000320c:	fe5ff06f          	j	800031f0 <_Z12printIntegerm+0x7c>
    }
    while (zero_count--) __putc('0');
    80003210:	fff98493          	addi	s1,s3,-1
    80003214:	00098c63          	beqz	s3,8000322c <_Z12printIntegerm+0xb8>
    80003218:	03000513          	li	a0,48
    8000321c:	00006097          	auipc	ra,0x6
    80003220:	b60080e7          	jalr	-1184(ra) # 80008d7c <__putc>
    80003224:	00048993          	mv	s3,s1
    80003228:	fe9ff06f          	j	80003210 <_Z12printIntegerm+0x9c>
    8000322c:	02813083          	ld	ra,40(sp)
    80003230:	02013403          	ld	s0,32(sp)
    80003234:	01813483          	ld	s1,24(sp)
    80003238:	01013903          	ld	s2,16(sp)
    8000323c:	00813983          	ld	s3,8(sp)
    80003240:	03010113          	addi	sp,sp,48
    80003244:	00008067          	ret

0000000080003248 <_ZN3TCB7wrapperEv>:
    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return 0;
}

void TCB::wrapper() {
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00113423          	sd	ra,8(sp)
    80003250:	00813023          	sd	s0,0(sp)
    80003254:	01010413          	addi	s0,sp,16

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    // came from supervisor trap (s mode)
    if ( running->routine ) {
    80003258:	00009797          	auipc	a5,0x9
    8000325c:	af07b783          	ld	a5,-1296(a5) # 8000bd48 <_ZN3TCB7runningE>
    80003260:	0287b783          	ld	a5,40(a5)
    80003264:	02078063          	beqz	a5,80003284 <_ZN3TCB7wrapperEv+0x3c>
        RISCV::popSppSpie();
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	5c4080e7          	jalr	1476(ra) # 8000282c <_ZN5RISCV10popSppSpieEv>
        running->routine(running->args);
    80003270:	00009797          	auipc	a5,0x9
    80003274:	ad87b783          	ld	a5,-1320(a5) # 8000bd48 <_ZN3TCB7runningE>
    80003278:	0287b703          	ld	a4,40(a5)
    8000327c:	0307b503          	ld	a0,48(a5)
    80003280:	000700e7          	jalr	a4

    static bool isRunnable();

    bool isFinished() {return current_state == state::FINISHED;}
    void finish() { current_state = state::FINISHED; }
    80003284:	00009797          	auipc	a5,0x9
    80003288:	ac47b783          	ld	a5,-1340(a5) # 8000bd48 <_ZN3TCB7runningE>
    8000328c:	00300713          	li	a4,3
    80003290:	06e7a023          	sw	a4,96(a5)
        // in user mode IF not char-handler
    }

    running->finish();
    thread_dispatch();
    80003294:	ffffe097          	auipc	ra,0xffffe
    80003298:	13c080e7          	jalr	316(ra) # 800013d0 <_Z15thread_dispatchv>
    // no return address from wrapper
}
    8000329c:	00813083          	ld	ra,8(sp)
    800032a0:	00013403          	ld	s0,0(sp)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret

00000000800032ac <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00813423          	sd	s0,8(sp)
    800032b4:	01010413          	addi	s0,sp,16
    800032b8:	00073303          	ld	t1,0(a4)
    800032bc:	00873883          	ld	a7,8(a4)
    800032c0:	01073803          	ld	a6,16(a4)
    800032c4:	01873783          	ld	a5,24(a4)
    800032c8:	04653023          	sd	t1,64(a0)
    800032cc:	05153423          	sd	a7,72(a0)
    800032d0:	05053823          	sd	a6,80(a0)
    800032d4:	04f53c23          	sd	a5,88(a0)
    800032d8:	06050223          	sb	zero,100(a0)
    id = id_count++;
    800032dc:	00009717          	auipc	a4,0x9
    800032e0:	a6c70713          	addi	a4,a4,-1428 # 8000bd48 <_ZN3TCB7runningE>
    800032e4:	00872783          	lw	a5,8(a4)
    800032e8:	0017881b          	addiw	a6,a5,1
    800032ec:	01072423          	sw	a6,8(a4)
    800032f0:	00f52023          	sw	a5,0(a0)
    routine = fun;
    800032f4:	02b53423          	sd	a1,40(a0)
    this->args = args;
    800032f8:	02c53823          	sd	a2,48(a0)
    this->stack = (uint64*)stack; // stack start address (allocated)
    800032fc:	02d53c23          	sd	a3,56(a0)
    this->current_state = RUNNABLE;
    80003300:	06052023          	sw	zero,96(a0)
    this->next_ready = nullptr;
    80003304:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    80003308:	00053823          	sd	zero,16(a0)
    this->sleeping_time = 0;
    8000330c:	00053c23          	sd	zero,24(a0)
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
    80003310:	00200793          	li	a5,2
    80003314:	02f53023          	sd	a5,32(a0)
}
    80003318:	00813403          	ld	s0,8(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    80003324:	fe010113          	addi	sp,sp,-32
    80003328:	00113c23          	sd	ra,24(sp)
    8000332c:	00813823          	sd	s0,16(sp)
    80003330:	00913423          	sd	s1,8(sp)
    80003334:	01213023          	sd	s2,0(sp)
    80003338:	02010413          	addi	s0,sp,32
    8000333c:	00050493          	mv	s1,a0
    80003340:	00058913          	mv	s2,a1
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    80003344:	ffffe097          	auipc	ra,0xffffe
    80003348:	cbc080e7          	jalr	-836(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    8000334c:	04090593          	addi	a1,s2,64
    80003350:	04048513          	addi	a0,s1,64
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	ebc080e7          	jalr	-324(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	d24080e7          	jalr	-732(ra) # 80001080 <_ZN5RISCV8pop_regsEv>
}
    80003364:	01813083          	ld	ra,24(sp)
    80003368:	01013403          	ld	s0,16(sp)
    8000336c:	00813483          	ld	s1,8(sp)
    80003370:	00013903          	ld	s2,0(sp)
    80003374:	02010113          	addi	sp,sp,32
    80003378:	00008067          	ret

000000008000337c <_ZN3TCBnwEm>:
    running = Scheduler::get();

    if (running != oldRunning) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    8000337c:	ff010113          	addi	sp,sp,-16
    80003380:	00113423          	sd	ra,8(sp)
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000338c:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80003390:	00655513          	srli	a0,a0,0x6
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	7dc080e7          	jalr	2012(ra) # 80002b70 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000339c:	00813083          	ld	ra,8(sp)
    800033a0:	00013403          	ld	s0,0(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret

00000000800033ac <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    800033ac:	f6010113          	addi	sp,sp,-160
    800033b0:	08113c23          	sd	ra,152(sp)
    800033b4:	08813823          	sd	s0,144(sp)
    800033b8:	08913423          	sd	s1,136(sp)
    800033bc:	09213023          	sd	s2,128(sp)
    800033c0:	07313c23          	sd	s3,120(sp)
    800033c4:	07413823          	sd	s4,112(sp)
    800033c8:	07513423          	sd	s5,104(sp)
    800033cc:	0a010413          	addi	s0,sp,160
    800033d0:	00050a13          	mv	s4,a0
    800033d4:	00058493          	mv	s1,a1
    800033d8:	00060a93          	mv	s5,a2
    800033dc:	00068913          	mv	s2,a3
    Context context = {
    800033e0:	fa043823          	sd	zero,-80(s0)
    800033e4:	fa043c23          	sd	zero,-72(s0)
    800033e8:	00000797          	auipc	a5,0x0
    800033ec:	e6078793          	addi	a5,a5,-416 # 80003248 <_ZN3TCB7wrapperEv>
    800033f0:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800033f4:	0a058863          	beqz	a1,800034a4 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xf8>
    800033f8:	000017b7          	lui	a5,0x1
    800033fc:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003400:	00f687b3          	add	a5,a3,a5
    *handle = new TCB (routine, args, stack_space, context);
    80003404:	fa043703          	ld	a4,-96(s0)
    80003408:	f8e43023          	sd	a4,-128(s0)
    8000340c:	f8f43423          	sd	a5,-120(s0)
    80003410:	fb043783          	ld	a5,-80(s0)
    80003414:	f8f43823          	sd	a5,-112(s0)
    80003418:	fb843783          	ld	a5,-72(s0)
    8000341c:	f8f43c23          	sd	a5,-104(s0)
    80003420:	06800513          	li	a0,104
    80003424:	00000097          	auipc	ra,0x0
    80003428:	f58080e7          	jalr	-168(ra) # 8000337c <_ZN3TCBnwEm>
    8000342c:	00050993          	mv	s3,a0
    80003430:	f8043783          	ld	a5,-128(s0)
    80003434:	f6f43023          	sd	a5,-160(s0)
    80003438:	f8843783          	ld	a5,-120(s0)
    8000343c:	f6f43423          	sd	a5,-152(s0)
    80003440:	f9043783          	ld	a5,-112(s0)
    80003444:	f6f43823          	sd	a5,-144(s0)
    80003448:	f9843783          	ld	a5,-104(s0)
    8000344c:	f6f43c23          	sd	a5,-136(s0)
    80003450:	f6040713          	addi	a4,s0,-160
    80003454:	00090693          	mv	a3,s2
    80003458:	000a8613          	mv	a2,s5
    8000345c:	00048593          	mv	a1,s1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	e4c080e7          	jalr	-436(ra) # 800032ac <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80003468:	013a3023          	sd	s3,0(s4)
    if (routine) Scheduler::put(*handle);
    8000346c:	00048863          	beqz	s1,8000347c <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xd0>
    80003470:	00098513          	mv	a0,s3
    80003474:	ffffe097          	auipc	ra,0xffffe
    80003478:	594080e7          	jalr	1428(ra) # 80001a08 <_ZN9Scheduler3putEP3TCB>
}
    8000347c:	00000513          	li	a0,0
    80003480:	09813083          	ld	ra,152(sp)
    80003484:	09013403          	ld	s0,144(sp)
    80003488:	08813483          	ld	s1,136(sp)
    8000348c:	08013903          	ld	s2,128(sp)
    80003490:	07813983          	ld	s3,120(sp)
    80003494:	07013a03          	ld	s4,112(sp)
    80003498:	06813a83          	ld	s5,104(sp)
    8000349c:	0a010113          	addi	sp,sp,160
    800034a0:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800034a4:	00000793          	li	a5,0
    800034a8:	f5dff06f          	j	80003404 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x58>

00000000800034ac <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    800034ac:	ff010113          	addi	sp,sp,-16
    800034b0:	00113423          	sd	ra,8(sp)
    800034b4:	00813023          	sd	s0,0(sp)
    800034b8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	8f4080e7          	jalr	-1804(ra) # 80002db0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800034c4:	00813083          	ld	ra,8(sp)
    800034c8:	00013403          	ld	s0,0(sp)
    800034cc:	01010113          	addi	sp,sp,16
    800034d0:	00008067          	ret

00000000800034d4 <_ZN3TCB5startEv>:

void TCB::start() {
    /// remove from thread create !
    if (current_state == CREATED) {
    800034d4:	06052703          	lw	a4,96(a0)
    800034d8:	00200793          	li	a5,2
    800034dc:	00f70463          	beq	a4,a5,800034e4 <_ZN3TCB5startEv+0x10>
    800034e0:	00008067          	ret
void TCB::start() {
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00113423          	sd	ra,8(sp)
    800034ec:	00813023          	sd	s0,0(sp)
    800034f0:	01010413          	addi	s0,sp,16
        current_state = RUNNABLE;
    800034f4:	06052023          	sw	zero,96(a0)
        Scheduler::put(this);
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	510080e7          	jalr	1296(ra) # 80001a08 <_ZN9Scheduler3putEP3TCB>
    }
}
    80003500:	00813083          	ld	ra,8(sp)
    80003504:	00013403          	ld	s0,0(sp)
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret

0000000080003510 <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    80003510:	ff010113          	addi	sp,sp,-16
    80003514:	00813423          	sd	s0,8(sp)
    80003518:	01010413          	addi	s0,sp,16
    return running->current_state == RUNNABLE; }
    8000351c:	00009797          	auipc	a5,0x9
    80003520:	82c7b783          	ld	a5,-2004(a5) # 8000bd48 <_ZN3TCB7runningE>
    80003524:	0607a503          	lw	a0,96(a5)
    80003528:	00153513          	seqz	a0,a0
    8000352c:	00813403          	ld	s0,8(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    8000354c:	00008497          	auipc	s1,0x8
    80003550:	7fc4b483          	ld	s1,2044(s1) # 8000bd48 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003554:	00000097          	auipc	ra,0x0
    80003558:	fbc080e7          	jalr	-68(ra) # 80003510 <_ZN3TCB10isRunnableEv>
    8000355c:	02051e63          	bnez	a0,80003598 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	458080e7          	jalr	1112(ra) # 800019b8 <_ZN9Scheduler3getEv>
    80003568:	00050593          	mv	a1,a0
    8000356c:	00008797          	auipc	a5,0x8
    80003570:	7ca7be23          	sd	a0,2012(a5) # 8000bd48 <_ZN3TCB7runningE>
    if (running != oldRunning) yield(oldRunning, running);
    80003574:	00a48863          	beq	s1,a0,80003584 <_ZN3TCB8dispatchEv+0x4c>
    80003578:	00048513          	mv	a0,s1
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	da8080e7          	jalr	-600(ra) # 80003324 <_ZN3TCB5yieldEPS_S0_>
}
    80003584:	01813083          	ld	ra,24(sp)
    80003588:	01013403          	ld	s0,16(sp)
    8000358c:	00813483          	ld	s1,8(sp)
    80003590:	02010113          	addi	sp,sp,32
    80003594:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003598:	00048513          	mv	a0,s1
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	46c080e7          	jalr	1132(ra) # 80001a08 <_ZN9Scheduler3putEP3TCB>
    800035a4:	fbdff06f          	j	80003560 <_ZN3TCB8dispatchEv+0x28>

00000000800035a8 <_ZN3TCB11_threadExitEv>:

int TCB::_threadExit() {
    800035a8:	ff010113          	addi	sp,sp,-16
    800035ac:	00113423          	sd	ra,8(sp)
    800035b0:	00813023          	sd	s0,0(sp)
    800035b4:	01010413          	addi	s0,sp,16
    800035b8:	00008797          	auipc	a5,0x8
    800035bc:	7907b783          	ld	a5,1936(a5) # 8000bd48 <_ZN3TCB7runningE>
    800035c0:	00300713          	li	a4,3
    800035c4:	06e7a023          	sw	a4,96(a5)
    TCB::running -> finish();

    // check if semaphore signal needed ?
    // don't put in Scheduler -> call yield only

    thread_dispatch();
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	e08080e7          	jalr	-504(ra) # 800013d0 <_Z15thread_dispatchv>

    return 0;
}
    800035d0:	00000513          	li	a0,0
    800035d4:	00813083          	ld	ra,8(sp)
    800035d8:	00013403          	ld	s0,0(sp)
    800035dc:	01010113          	addi	sp,sp,16
    800035e0:	00008067          	ret

00000000800035e4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800035e4:	fe010113          	addi	sp,sp,-32
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	00813823          	sd	s0,16(sp)
    800035f0:	00913423          	sd	s1,8(sp)
    800035f4:	01213023          	sd	s2,0(sp)
    800035f8:	02010413          	addi	s0,sp,32
    800035fc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003600:	00000913          	li	s2,0
    80003604:	00c0006f          	j	80003610 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	dc8080e7          	jalr	-568(ra) # 800013d0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	020080e7          	jalr	32(ra) # 80001630 <_Z4getcv>
    80003618:	0005059b          	sext.w	a1,a0
    8000361c:	01b00793          	li	a5,27
    80003620:	02f58a63          	beq	a1,a5,80003654 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003624:	0084b503          	ld	a0,8(s1)
    80003628:	00003097          	auipc	ra,0x3
    8000362c:	414080e7          	jalr	1044(ra) # 80006a3c <_ZN6Buffer3putEi>
        i++;
    80003630:	0019071b          	addiw	a4,s2,1
    80003634:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003638:	0004a683          	lw	a3,0(s1)
    8000363c:	0026979b          	slliw	a5,a3,0x2
    80003640:	00d787bb          	addw	a5,a5,a3
    80003644:	0017979b          	slliw	a5,a5,0x1
    80003648:	02f767bb          	remw	a5,a4,a5
    8000364c:	fc0792e3          	bnez	a5,80003610 <_ZL16producerKeyboardPv+0x2c>
    80003650:	fb9ff06f          	j	80003608 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003654:	00100793          	li	a5,1
    80003658:	00008717          	auipc	a4,0x8
    8000365c:	70f72423          	sw	a5,1800(a4) # 8000bd60 <_ZL9threadEnd>
    data->buffer->put('!');
    80003660:	02100593          	li	a1,33
    80003664:	0084b503          	ld	a0,8(s1)
    80003668:	00003097          	auipc	ra,0x3
    8000366c:	3d4080e7          	jalr	980(ra) # 80006a3c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003670:	0104b503          	ld	a0,16(s1)
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	f24080e7          	jalr	-220(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    8000367c:	01813083          	ld	ra,24(sp)
    80003680:	01013403          	ld	s0,16(sp)
    80003684:	00813483          	ld	s1,8(sp)
    80003688:	00013903          	ld	s2,0(sp)
    8000368c:	02010113          	addi	sp,sp,32
    80003690:	00008067          	ret

0000000080003694 <_ZL8producerPv>:

static void producer(void *arg) {
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00113c23          	sd	ra,24(sp)
    8000369c:	00813823          	sd	s0,16(sp)
    800036a0:	00913423          	sd	s1,8(sp)
    800036a4:	01213023          	sd	s2,0(sp)
    800036a8:	02010413          	addi	s0,sp,32
    800036ac:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800036b0:	00000913          	li	s2,0
    800036b4:	00c0006f          	j	800036c0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	d18080e7          	jalr	-744(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800036c0:	00008797          	auipc	a5,0x8
    800036c4:	6a07a783          	lw	a5,1696(a5) # 8000bd60 <_ZL9threadEnd>
    800036c8:	02079e63          	bnez	a5,80003704 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800036cc:	0004a583          	lw	a1,0(s1)
    800036d0:	0305859b          	addiw	a1,a1,48
    800036d4:	0084b503          	ld	a0,8(s1)
    800036d8:	00003097          	auipc	ra,0x3
    800036dc:	364080e7          	jalr	868(ra) # 80006a3c <_ZN6Buffer3putEi>
        i++;
    800036e0:	0019071b          	addiw	a4,s2,1
    800036e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800036e8:	0004a683          	lw	a3,0(s1)
    800036ec:	0026979b          	slliw	a5,a3,0x2
    800036f0:	00d787bb          	addw	a5,a5,a3
    800036f4:	0017979b          	slliw	a5,a5,0x1
    800036f8:	02f767bb          	remw	a5,a4,a5
    800036fc:	fc0792e3          	bnez	a5,800036c0 <_ZL8producerPv+0x2c>
    80003700:	fb9ff06f          	j	800036b8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003704:	0104b503          	ld	a0,16(s1)
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	e90080e7          	jalr	-368(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	00813483          	ld	s1,8(sp)
    8000371c:	00013903          	ld	s2,0(sp)
    80003720:	02010113          	addi	sp,sp,32
    80003724:	00008067          	ret

0000000080003728 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003728:	fd010113          	addi	sp,sp,-48
    8000372c:	02113423          	sd	ra,40(sp)
    80003730:	02813023          	sd	s0,32(sp)
    80003734:	00913c23          	sd	s1,24(sp)
    80003738:	01213823          	sd	s2,16(sp)
    8000373c:	01313423          	sd	s3,8(sp)
    80003740:	03010413          	addi	s0,sp,48
    80003744:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003748:	00000993          	li	s3,0
    8000374c:	01c0006f          	j	80003768 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	c80080e7          	jalr	-896(ra) # 800013d0 <_Z15thread_dispatchv>
    80003758:	0500006f          	j	800037a8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000375c:	00a00513          	li	a0,10
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	f1c080e7          	jalr	-228(ra) # 8000167c <_Z4putcc>
    while (!threadEnd) {
    80003768:	00008797          	auipc	a5,0x8
    8000376c:	5f87a783          	lw	a5,1528(a5) # 8000bd60 <_ZL9threadEnd>
    80003770:	06079063          	bnez	a5,800037d0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003774:	00893503          	ld	a0,8(s2)
    80003778:	00003097          	auipc	ra,0x3
    8000377c:	354080e7          	jalr	852(ra) # 80006acc <_ZN6Buffer3getEv>
        i++;
    80003780:	0019849b          	addiw	s1,s3,1
    80003784:	0004899b          	sext.w	s3,s1
        putc(key);
    80003788:	0ff57513          	andi	a0,a0,255
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	ef0080e7          	jalr	-272(ra) # 8000167c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003794:	00092703          	lw	a4,0(s2)
    80003798:	0027179b          	slliw	a5,a4,0x2
    8000379c:	00e787bb          	addw	a5,a5,a4
    800037a0:	02f4e7bb          	remw	a5,s1,a5
    800037a4:	fa0786e3          	beqz	a5,80003750 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800037a8:	05000793          	li	a5,80
    800037ac:	02f4e4bb          	remw	s1,s1,a5
    800037b0:	fa049ce3          	bnez	s1,80003768 <_ZL8consumerPv+0x40>
    800037b4:	fa9ff06f          	j	8000375c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800037b8:	00893503          	ld	a0,8(s2)
    800037bc:	00003097          	auipc	ra,0x3
    800037c0:	310080e7          	jalr	784(ra) # 80006acc <_ZN6Buffer3getEv>
        putc(key);
    800037c4:	0ff57513          	andi	a0,a0,255
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	eb4080e7          	jalr	-332(ra) # 8000167c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800037d0:	00893503          	ld	a0,8(s2)
    800037d4:	00003097          	auipc	ra,0x3
    800037d8:	384080e7          	jalr	900(ra) # 80006b58 <_ZN6Buffer6getCntEv>
    800037dc:	fca04ee3          	bgtz	a0,800037b8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800037e0:	01093503          	ld	a0,16(s2)
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	db4080e7          	jalr	-588(ra) # 80001598 <_Z10sem_signalP3Sem>
}
    800037ec:	02813083          	ld	ra,40(sp)
    800037f0:	02013403          	ld	s0,32(sp)
    800037f4:	01813483          	ld	s1,24(sp)
    800037f8:	01013903          	ld	s2,16(sp)
    800037fc:	00813983          	ld	s3,8(sp)
    80003800:	03010113          	addi	sp,sp,48
    80003804:	00008067          	ret

0000000080003808 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003808:	f9010113          	addi	sp,sp,-112
    8000380c:	06113423          	sd	ra,104(sp)
    80003810:	06813023          	sd	s0,96(sp)
    80003814:	04913c23          	sd	s1,88(sp)
    80003818:	05213823          	sd	s2,80(sp)
    8000381c:	05313423          	sd	s3,72(sp)
    80003820:	05413023          	sd	s4,64(sp)
    80003824:	03513c23          	sd	s5,56(sp)
    80003828:	03613823          	sd	s6,48(sp)
    8000382c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003830:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003834:	00006517          	auipc	a0,0x6
    80003838:	8fc50513          	addi	a0,a0,-1796 # 80009130 <CONSOLE_STATUS+0x120>
    8000383c:	00002097          	auipc	ra,0x2
    80003840:	234080e7          	jalr	564(ra) # 80005a70 <_Z11printStringPKc>
    getString(input, 30);
    80003844:	01e00593          	li	a1,30
    80003848:	fa040493          	addi	s1,s0,-96
    8000384c:	00048513          	mv	a0,s1
    80003850:	00002097          	auipc	ra,0x2
    80003854:	2a8080e7          	jalr	680(ra) # 80005af8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003858:	00048513          	mv	a0,s1
    8000385c:	00002097          	auipc	ra,0x2
    80003860:	374080e7          	jalr	884(ra) # 80005bd0 <_Z11stringToIntPKc>
    80003864:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	8e850513          	addi	a0,a0,-1816 # 80009150 <CONSOLE_STATUS+0x140>
    80003870:	00002097          	auipc	ra,0x2
    80003874:	200080e7          	jalr	512(ra) # 80005a70 <_Z11printStringPKc>
    getString(input, 30);
    80003878:	01e00593          	li	a1,30
    8000387c:	00048513          	mv	a0,s1
    80003880:	00002097          	auipc	ra,0x2
    80003884:	278080e7          	jalr	632(ra) # 80005af8 <_Z9getStringPci>
    n = stringToInt(input);
    80003888:	00048513          	mv	a0,s1
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	344080e7          	jalr	836(ra) # 80005bd0 <_Z11stringToIntPKc>
    80003894:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	8d850513          	addi	a0,a0,-1832 # 80009170 <CONSOLE_STATUS+0x160>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	1d0080e7          	jalr	464(ra) # 80005a70 <_Z11printStringPKc>
    800038a8:	00000613          	li	a2,0
    800038ac:	00a00593          	li	a1,10
    800038b0:	00090513          	mv	a0,s2
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	36c080e7          	jalr	876(ra) # 80005c20 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	8cc50513          	addi	a0,a0,-1844 # 80009188 <CONSOLE_STATUS+0x178>
    800038c4:	00002097          	auipc	ra,0x2
    800038c8:	1ac080e7          	jalr	428(ra) # 80005a70 <_Z11printStringPKc>
    800038cc:	00000613          	li	a2,0
    800038d0:	00a00593          	li	a1,10
    800038d4:	00048513          	mv	a0,s1
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	348080e7          	jalr	840(ra) # 80005c20 <_Z8printIntiii>
    printString(".\n");
    800038e0:	00006517          	auipc	a0,0x6
    800038e4:	8c050513          	addi	a0,a0,-1856 # 800091a0 <CONSOLE_STATUS+0x190>
    800038e8:	00002097          	auipc	ra,0x2
    800038ec:	188080e7          	jalr	392(ra) # 80005a70 <_Z11printStringPKc>
    if(threadNum > n) {
    800038f0:	0324c463          	blt	s1,s2,80003918 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800038f4:	03205c63          	blez	s2,8000392c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800038f8:	03800513          	li	a0,56
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	83c080e7          	jalr	-1988(ra) # 80002138 <_Znwm>
    80003904:	00050a13          	mv	s4,a0
    80003908:	00048593          	mv	a1,s1
    8000390c:	00003097          	auipc	ra,0x3
    80003910:	094080e7          	jalr	148(ra) # 800069a0 <_ZN6BufferC1Ei>
    80003914:	0300006f          	j	80003944 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003918:	00006517          	auipc	a0,0x6
    8000391c:	89050513          	addi	a0,a0,-1904 # 800091a8 <CONSOLE_STATUS+0x198>
    80003920:	00002097          	auipc	ra,0x2
    80003924:	150080e7          	jalr	336(ra) # 80005a70 <_Z11printStringPKc>
        return;
    80003928:	0140006f          	j	8000393c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	8bc50513          	addi	a0,a0,-1860 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003934:	00002097          	auipc	ra,0x2
    80003938:	13c080e7          	jalr	316(ra) # 80005a70 <_Z11printStringPKc>
        return;
    8000393c:	000b0113          	mv	sp,s6
    80003940:	1500006f          	j	80003a90 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003944:	00000593          	li	a1,0
    80003948:	00008517          	auipc	a0,0x8
    8000394c:	42050513          	addi	a0,a0,1056 # 8000bd68 <_ZL10waitForAll>
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	abc080e7          	jalr	-1348(ra) # 8000140c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003958:	00391793          	slli	a5,s2,0x3
    8000395c:	00f78793          	addi	a5,a5,15
    80003960:	ff07f793          	andi	a5,a5,-16
    80003964:	40f10133          	sub	sp,sp,a5
    80003968:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000396c:	0019071b          	addiw	a4,s2,1
    80003970:	00171793          	slli	a5,a4,0x1
    80003974:	00e787b3          	add	a5,a5,a4
    80003978:	00379793          	slli	a5,a5,0x3
    8000397c:	00f78793          	addi	a5,a5,15
    80003980:	ff07f793          	andi	a5,a5,-16
    80003984:	40f10133          	sub	sp,sp,a5
    80003988:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000398c:	00191613          	slli	a2,s2,0x1
    80003990:	012607b3          	add	a5,a2,s2
    80003994:	00379793          	slli	a5,a5,0x3
    80003998:	00f987b3          	add	a5,s3,a5
    8000399c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800039a0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800039a4:	00008717          	auipc	a4,0x8
    800039a8:	3c473703          	ld	a4,964(a4) # 8000bd68 <_ZL10waitForAll>
    800039ac:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800039b0:	00078613          	mv	a2,a5
    800039b4:	00000597          	auipc	a1,0x0
    800039b8:	d7458593          	addi	a1,a1,-652 # 80003728 <_ZL8consumerPv>
    800039bc:	f9840513          	addi	a0,s0,-104
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	93c080e7          	jalr	-1732(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039c8:	00000493          	li	s1,0
    800039cc:	0280006f          	j	800039f4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800039d0:	00000597          	auipc	a1,0x0
    800039d4:	c1458593          	addi	a1,a1,-1004 # 800035e4 <_ZL16producerKeyboardPv>
                      data + i);
    800039d8:	00179613          	slli	a2,a5,0x1
    800039dc:	00f60633          	add	a2,a2,a5
    800039e0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800039e4:	00c98633          	add	a2,s3,a2
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	914080e7          	jalr	-1772(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039f0:	0014849b          	addiw	s1,s1,1
    800039f4:	0524d263          	bge	s1,s2,80003a38 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800039f8:	00149793          	slli	a5,s1,0x1
    800039fc:	009787b3          	add	a5,a5,s1
    80003a00:	00379793          	slli	a5,a5,0x3
    80003a04:	00f987b3          	add	a5,s3,a5
    80003a08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003a0c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003a10:	00008717          	auipc	a4,0x8
    80003a14:	35873703          	ld	a4,856(a4) # 8000bd68 <_ZL10waitForAll>
    80003a18:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003a1c:	00048793          	mv	a5,s1
    80003a20:	00349513          	slli	a0,s1,0x3
    80003a24:	00aa8533          	add	a0,s5,a0
    80003a28:	fa9054e3          	blez	s1,800039d0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003a2c:	00000597          	auipc	a1,0x0
    80003a30:	c6858593          	addi	a1,a1,-920 # 80003694 <_ZL8producerPv>
    80003a34:	fa5ff06f          	j	800039d8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	998080e7          	jalr	-1640(ra) # 800013d0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003a40:	00000493          	li	s1,0
    80003a44:	00994e63          	blt	s2,s1,80003a60 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003a48:	00008517          	auipc	a0,0x8
    80003a4c:	32053503          	ld	a0,800(a0) # 8000bd68 <_ZL10waitForAll>
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	a64080e7          	jalr	-1436(ra) # 800014b4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003a58:	0014849b          	addiw	s1,s1,1
    80003a5c:	fe9ff06f          	j	80003a44 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003a60:	00008517          	auipc	a0,0x8
    80003a64:	30853503          	ld	a0,776(a0) # 8000bd68 <_ZL10waitForAll>
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	9f4080e7          	jalr	-1548(ra) # 8000145c <_Z9sem_closeP3Sem>
    delete buffer;
    80003a70:	000a0e63          	beqz	s4,80003a8c <_Z22producerConsumer_C_APIv+0x284>
    80003a74:	000a0513          	mv	a0,s4
    80003a78:	00003097          	auipc	ra,0x3
    80003a7c:	168080e7          	jalr	360(ra) # 80006be0 <_ZN6BufferD1Ev>
    80003a80:	000a0513          	mv	a0,s4
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	72c080e7          	jalr	1836(ra) # 800021b0 <_ZdlPv>
    80003a8c:	000b0113          	mv	sp,s6

}
    80003a90:	f9040113          	addi	sp,s0,-112
    80003a94:	06813083          	ld	ra,104(sp)
    80003a98:	06013403          	ld	s0,96(sp)
    80003a9c:	05813483          	ld	s1,88(sp)
    80003aa0:	05013903          	ld	s2,80(sp)
    80003aa4:	04813983          	ld	s3,72(sp)
    80003aa8:	04013a03          	ld	s4,64(sp)
    80003aac:	03813a83          	ld	s5,56(sp)
    80003ab0:	03013b03          	ld	s6,48(sp)
    80003ab4:	07010113          	addi	sp,sp,112
    80003ab8:	00008067          	ret
    80003abc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003ac0:	000a0513          	mv	a0,s4
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	6ec080e7          	jalr	1772(ra) # 800021b0 <_ZdlPv>
    80003acc:	00048513          	mv	a0,s1
    80003ad0:	00009097          	auipc	ra,0x9
    80003ad4:	3a8080e7          	jalr	936(ra) # 8000ce78 <_Unwind_Resume>

0000000080003ad8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ad8:	fe010113          	addi	sp,sp,-32
    80003adc:	00113c23          	sd	ra,24(sp)
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	01213023          	sd	s2,0(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003af4:	00100793          	li	a5,1
    80003af8:	02a7f863          	bgeu	a5,a0,80003b28 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003afc:	00a00793          	li	a5,10
    80003b00:	02f577b3          	remu	a5,a0,a5
    80003b04:	02078e63          	beqz	a5,80003b40 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b08:	fff48513          	addi	a0,s1,-1
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	fcc080e7          	jalr	-52(ra) # 80003ad8 <_ZL9fibonaccim>
    80003b14:	00050913          	mv	s2,a0
    80003b18:	ffe48513          	addi	a0,s1,-2
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	fbc080e7          	jalr	-68(ra) # 80003ad8 <_ZL9fibonaccim>
    80003b24:	00a90533          	add	a0,s2,a0
}
    80003b28:	01813083          	ld	ra,24(sp)
    80003b2c:	01013403          	ld	s0,16(sp)
    80003b30:	00813483          	ld	s1,8(sp)
    80003b34:	00013903          	ld	s2,0(sp)
    80003b38:	02010113          	addi	sp,sp,32
    80003b3c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	890080e7          	jalr	-1904(ra) # 800013d0 <_Z15thread_dispatchv>
    80003b48:	fc1ff06f          	j	80003b08 <_ZL9fibonaccim+0x30>

0000000080003b4c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	01213023          	sd	s2,0(sp)
    80003b60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b64:	00000913          	li	s2,0
    80003b68:	0380006f          	j	80003ba0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	864080e7          	jalr	-1948(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b74:	00148493          	addi	s1,s1,1
    80003b78:	000027b7          	lui	a5,0x2
    80003b7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b80:	0097ee63          	bltu	a5,s1,80003b9c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b84:	00000713          	li	a4,0
    80003b88:	000077b7          	lui	a5,0x7
    80003b8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b90:	fce7eee3          	bltu	a5,a4,80003b6c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b94:	00170713          	addi	a4,a4,1
    80003b98:	ff1ff06f          	j	80003b88 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b9c:	00190913          	addi	s2,s2,1
    80003ba0:	00900793          	li	a5,9
    80003ba4:	0527e063          	bltu	a5,s2,80003be4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	67050513          	addi	a0,a0,1648 # 80009218 <CONSOLE_STATUS+0x208>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	ec0080e7          	jalr	-320(ra) # 80005a70 <_Z11printStringPKc>
    80003bb8:	00000613          	li	a2,0
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	0009051b          	sext.w	a0,s2
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	05c080e7          	jalr	92(ra) # 80005c20 <_Z8printIntiii>
    80003bcc:	00006517          	auipc	a0,0x6
    80003bd0:	8ac50513          	addi	a0,a0,-1876 # 80009478 <CONSOLE_STATUS+0x468>
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	e9c080e7          	jalr	-356(ra) # 80005a70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bdc:	00000493          	li	s1,0
    80003be0:	f99ff06f          	j	80003b78 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003be4:	00005517          	auipc	a0,0x5
    80003be8:	63c50513          	addi	a0,a0,1596 # 80009220 <CONSOLE_STATUS+0x210>
    80003bec:	00002097          	auipc	ra,0x2
    80003bf0:	e84080e7          	jalr	-380(ra) # 80005a70 <_Z11printStringPKc>
    finishedA = true;
    80003bf4:	00100793          	li	a5,1
    80003bf8:	00008717          	auipc	a4,0x8
    80003bfc:	16f70c23          	sb	a5,376(a4) # 8000bd70 <_ZL9finishedA>
}
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	00813483          	ld	s1,8(sp)
    80003c0c:	00013903          	ld	s2,0(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c18:	fe010113          	addi	sp,sp,-32
    80003c1c:	00113c23          	sd	ra,24(sp)
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00913423          	sd	s1,8(sp)
    80003c28:	01213023          	sd	s2,0(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c30:	00000913          	li	s2,0
    80003c34:	0380006f          	j	80003c6c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c38:	ffffd097          	auipc	ra,0xffffd
    80003c3c:	798080e7          	jalr	1944(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c40:	00148493          	addi	s1,s1,1
    80003c44:	000027b7          	lui	a5,0x2
    80003c48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c4c:	0097ee63          	bltu	a5,s1,80003c68 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c50:	00000713          	li	a4,0
    80003c54:	000077b7          	lui	a5,0x7
    80003c58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c5c:	fce7eee3          	bltu	a5,a4,80003c38 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003c60:	00170713          	addi	a4,a4,1
    80003c64:	ff1ff06f          	j	80003c54 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c68:	00190913          	addi	s2,s2,1
    80003c6c:	00f00793          	li	a5,15
    80003c70:	0527e063          	bltu	a5,s2,80003cb0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c74:	00005517          	auipc	a0,0x5
    80003c78:	5bc50513          	addi	a0,a0,1468 # 80009230 <CONSOLE_STATUS+0x220>
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	df4080e7          	jalr	-524(ra) # 80005a70 <_Z11printStringPKc>
    80003c84:	00000613          	li	a2,0
    80003c88:	00a00593          	li	a1,10
    80003c8c:	0009051b          	sext.w	a0,s2
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	f90080e7          	jalr	-112(ra) # 80005c20 <_Z8printIntiii>
    80003c98:	00005517          	auipc	a0,0x5
    80003c9c:	7e050513          	addi	a0,a0,2016 # 80009478 <CONSOLE_STATUS+0x468>
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	dd0080e7          	jalr	-560(ra) # 80005a70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ca8:	00000493          	li	s1,0
    80003cac:	f99ff06f          	j	80003c44 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	58850513          	addi	a0,a0,1416 # 80009238 <CONSOLE_STATUS+0x228>
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	db8080e7          	jalr	-584(ra) # 80005a70 <_Z11printStringPKc>
    finishedB = true;
    80003cc0:	00100793          	li	a5,1
    80003cc4:	00008717          	auipc	a4,0x8
    80003cc8:	0af706a3          	sb	a5,173(a4) # 8000bd71 <_ZL9finishedB>
    thread_dispatch();
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	704080e7          	jalr	1796(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003cd4:	01813083          	ld	ra,24(sp)
    80003cd8:	01013403          	ld	s0,16(sp)
    80003cdc:	00813483          	ld	s1,8(sp)
    80003ce0:	00013903          	ld	s2,0(sp)
    80003ce4:	02010113          	addi	sp,sp,32
    80003ce8:	00008067          	ret

0000000080003cec <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	01213023          	sd	s2,0(sp)
    80003d00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d04:	00000493          	li	s1,0
    80003d08:	0400006f          	j	80003d48 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	53c50513          	addi	a0,a0,1340 # 80009248 <CONSOLE_STATUS+0x238>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	d5c080e7          	jalr	-676(ra) # 80005a70 <_Z11printStringPKc>
    80003d1c:	00000613          	li	a2,0
    80003d20:	00a00593          	li	a1,10
    80003d24:	00048513          	mv	a0,s1
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	ef8080e7          	jalr	-264(ra) # 80005c20 <_Z8printIntiii>
    80003d30:	00005517          	auipc	a0,0x5
    80003d34:	74850513          	addi	a0,a0,1864 # 80009478 <CONSOLE_STATUS+0x468>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	d38080e7          	jalr	-712(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d40:	0014849b          	addiw	s1,s1,1
    80003d44:	0ff4f493          	andi	s1,s1,255
    80003d48:	00200793          	li	a5,2
    80003d4c:	fc97f0e3          	bgeu	a5,s1,80003d0c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003d50:	00005517          	auipc	a0,0x5
    80003d54:	50050513          	addi	a0,a0,1280 # 80009250 <CONSOLE_STATUS+0x240>
    80003d58:	00002097          	auipc	ra,0x2
    80003d5c:	d18080e7          	jalr	-744(ra) # 80005a70 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d60:	00700313          	li	t1,7
    thread_dispatch();
    80003d64:	ffffd097          	auipc	ra,0xffffd
    80003d68:	66c080e7          	jalr	1644(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d6c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d70:	00005517          	auipc	a0,0x5
    80003d74:	4f050513          	addi	a0,a0,1264 # 80009260 <CONSOLE_STATUS+0x250>
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	cf8080e7          	jalr	-776(ra) # 80005a70 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	0009051b          	sext.w	a0,s2
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	e94080e7          	jalr	-364(ra) # 80005c20 <_Z8printIntiii>
    80003d94:	00005517          	auipc	a0,0x5
    80003d98:	6e450513          	addi	a0,a0,1764 # 80009478 <CONSOLE_STATUS+0x468>
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	cd4080e7          	jalr	-812(ra) # 80005a70 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003da4:	00c00513          	li	a0,12
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	d30080e7          	jalr	-720(ra) # 80003ad8 <_ZL9fibonaccim>
    80003db0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003db4:	00005517          	auipc	a0,0x5
    80003db8:	4b450513          	addi	a0,a0,1204 # 80009268 <CONSOLE_STATUS+0x258>
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	cb4080e7          	jalr	-844(ra) # 80005a70 <_Z11printStringPKc>
    80003dc4:	00000613          	li	a2,0
    80003dc8:	00a00593          	li	a1,10
    80003dcc:	0009051b          	sext.w	a0,s2
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	e50080e7          	jalr	-432(ra) # 80005c20 <_Z8printIntiii>
    80003dd8:	00005517          	auipc	a0,0x5
    80003ddc:	6a050513          	addi	a0,a0,1696 # 80009478 <CONSOLE_STATUS+0x468>
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	c90080e7          	jalr	-880(ra) # 80005a70 <_Z11printStringPKc>
    80003de8:	0400006f          	j	80003e28 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003dec:	00005517          	auipc	a0,0x5
    80003df0:	45c50513          	addi	a0,a0,1116 # 80009248 <CONSOLE_STATUS+0x238>
    80003df4:	00002097          	auipc	ra,0x2
    80003df8:	c7c080e7          	jalr	-900(ra) # 80005a70 <_Z11printStringPKc>
    80003dfc:	00000613          	li	a2,0
    80003e00:	00a00593          	li	a1,10
    80003e04:	00048513          	mv	a0,s1
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	e18080e7          	jalr	-488(ra) # 80005c20 <_Z8printIntiii>
    80003e10:	00005517          	auipc	a0,0x5
    80003e14:	66850513          	addi	a0,a0,1640 # 80009478 <CONSOLE_STATUS+0x468>
    80003e18:	00002097          	auipc	ra,0x2
    80003e1c:	c58080e7          	jalr	-936(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e20:	0014849b          	addiw	s1,s1,1
    80003e24:	0ff4f493          	andi	s1,s1,255
    80003e28:	00500793          	li	a5,5
    80003e2c:	fc97f0e3          	bgeu	a5,s1,80003dec <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003e30:	00005517          	auipc	a0,0x5
    80003e34:	3f050513          	addi	a0,a0,1008 # 80009220 <CONSOLE_STATUS+0x210>
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	c38080e7          	jalr	-968(ra) # 80005a70 <_Z11printStringPKc>
    finishedC = true;
    80003e40:	00100793          	li	a5,1
    80003e44:	00008717          	auipc	a4,0x8
    80003e48:	f2f70723          	sb	a5,-210(a4) # 8000bd72 <_ZL9finishedC>
    thread_dispatch();
    80003e4c:	ffffd097          	auipc	ra,0xffffd
    80003e50:	584080e7          	jalr	1412(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003e54:	01813083          	ld	ra,24(sp)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	00813483          	ld	s1,8(sp)
    80003e60:	00013903          	ld	s2,0(sp)
    80003e64:	02010113          	addi	sp,sp,32
    80003e68:	00008067          	ret

0000000080003e6c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00113c23          	sd	ra,24(sp)
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	01213023          	sd	s2,0(sp)
    80003e80:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e84:	00a00493          	li	s1,10
    80003e88:	0400006f          	j	80003ec8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e8c:	00005517          	auipc	a0,0x5
    80003e90:	3ec50513          	addi	a0,a0,1004 # 80009278 <CONSOLE_STATUS+0x268>
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	bdc080e7          	jalr	-1060(ra) # 80005a70 <_Z11printStringPKc>
    80003e9c:	00000613          	li	a2,0
    80003ea0:	00a00593          	li	a1,10
    80003ea4:	00048513          	mv	a0,s1
    80003ea8:	00002097          	auipc	ra,0x2
    80003eac:	d78080e7          	jalr	-648(ra) # 80005c20 <_Z8printIntiii>
    80003eb0:	00005517          	auipc	a0,0x5
    80003eb4:	5c850513          	addi	a0,a0,1480 # 80009478 <CONSOLE_STATUS+0x468>
    80003eb8:	00002097          	auipc	ra,0x2
    80003ebc:	bb8080e7          	jalr	-1096(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ec0:	0014849b          	addiw	s1,s1,1
    80003ec4:	0ff4f493          	andi	s1,s1,255
    80003ec8:	00c00793          	li	a5,12
    80003ecc:	fc97f0e3          	bgeu	a5,s1,80003e8c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003ed0:	00005517          	auipc	a0,0x5
    80003ed4:	3b050513          	addi	a0,a0,944 # 80009280 <CONSOLE_STATUS+0x270>
    80003ed8:	00002097          	auipc	ra,0x2
    80003edc:	b98080e7          	jalr	-1128(ra) # 80005a70 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ee0:	00500313          	li	t1,5
    thread_dispatch();
    80003ee4:	ffffd097          	auipc	ra,0xffffd
    80003ee8:	4ec080e7          	jalr	1260(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003eec:	01000513          	li	a0,16
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	be8080e7          	jalr	-1048(ra) # 80003ad8 <_ZL9fibonaccim>
    80003ef8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	39450513          	addi	a0,a0,916 # 80009290 <CONSOLE_STATUS+0x280>
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	b6c080e7          	jalr	-1172(ra) # 80005a70 <_Z11printStringPKc>
    80003f0c:	00000613          	li	a2,0
    80003f10:	00a00593          	li	a1,10
    80003f14:	0009051b          	sext.w	a0,s2
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	d08080e7          	jalr	-760(ra) # 80005c20 <_Z8printIntiii>
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	55850513          	addi	a0,a0,1368 # 80009478 <CONSOLE_STATUS+0x468>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	b48080e7          	jalr	-1208(ra) # 80005a70 <_Z11printStringPKc>
    80003f30:	0400006f          	j	80003f70 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f34:	00005517          	auipc	a0,0x5
    80003f38:	34450513          	addi	a0,a0,836 # 80009278 <CONSOLE_STATUS+0x268>
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	b34080e7          	jalr	-1228(ra) # 80005a70 <_Z11printStringPKc>
    80003f44:	00000613          	li	a2,0
    80003f48:	00a00593          	li	a1,10
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00002097          	auipc	ra,0x2
    80003f54:	cd0080e7          	jalr	-816(ra) # 80005c20 <_Z8printIntiii>
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	52050513          	addi	a0,a0,1312 # 80009478 <CONSOLE_STATUS+0x468>
    80003f60:	00002097          	auipc	ra,0x2
    80003f64:	b10080e7          	jalr	-1264(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f68:	0014849b          	addiw	s1,s1,1
    80003f6c:	0ff4f493          	andi	s1,s1,255
    80003f70:	00f00793          	li	a5,15
    80003f74:	fc97f0e3          	bgeu	a5,s1,80003f34 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f78:	00005517          	auipc	a0,0x5
    80003f7c:	32850513          	addi	a0,a0,808 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	af0080e7          	jalr	-1296(ra) # 80005a70 <_Z11printStringPKc>
    finishedD = true;
    80003f88:	00100793          	li	a5,1
    80003f8c:	00008717          	auipc	a4,0x8
    80003f90:	def703a3          	sb	a5,-537(a4) # 8000bd73 <_ZL9finishedD>
    thread_dispatch();
    80003f94:	ffffd097          	auipc	ra,0xffffd
    80003f98:	43c080e7          	jalr	1084(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003f9c:	01813083          	ld	ra,24(sp)
    80003fa0:	01013403          	ld	s0,16(sp)
    80003fa4:	00813483          	ld	s1,8(sp)
    80003fa8:	00013903          	ld	s2,0(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret

0000000080003fb4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003fb4:	fc010113          	addi	sp,sp,-64
    80003fb8:	02113c23          	sd	ra,56(sp)
    80003fbc:	02813823          	sd	s0,48(sp)
    80003fc0:	02913423          	sd	s1,40(sp)
    80003fc4:	03213023          	sd	s2,32(sp)
    80003fc8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003fcc:	02000513          	li	a0,32
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	168080e7          	jalr	360(ra) # 80002138 <_Znwm>
    80003fd8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	370080e7          	jalr	880(ra) # 8000234c <_ZN6ThreadC1Ev>
    80003fe4:	00008797          	auipc	a5,0x8
    80003fe8:	aac78793          	addi	a5,a5,-1364 # 8000ba90 <_ZTV7WorkerA+0x10>
    80003fec:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ff0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ff4:	00005517          	auipc	a0,0x5
    80003ff8:	2bc50513          	addi	a0,a0,700 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003ffc:	00002097          	auipc	ra,0x2
    80004000:	a74080e7          	jalr	-1420(ra) # 80005a70 <_Z11printStringPKc>
    threads[1] = new WorkerB();
    80004004:	02000513          	li	a0,32
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	130080e7          	jalr	304(ra) # 80002138 <_Znwm>
    80004010:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	338080e7          	jalr	824(ra) # 8000234c <_ZN6ThreadC1Ev>
    8000401c:	00008797          	auipc	a5,0x8
    80004020:	a9c78793          	addi	a5,a5,-1380 # 8000bab8 <_ZTV7WorkerB+0x10>
    80004024:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004028:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000402c:	00005517          	auipc	a0,0x5
    80004030:	29c50513          	addi	a0,a0,668 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004034:	00002097          	auipc	ra,0x2
    80004038:	a3c080e7          	jalr	-1476(ra) # 80005a70 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000403c:	02000513          	li	a0,32
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	0f8080e7          	jalr	248(ra) # 80002138 <_Znwm>
    80004048:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	300080e7          	jalr	768(ra) # 8000234c <_ZN6ThreadC1Ev>
    80004054:	00008797          	auipc	a5,0x8
    80004058:	a8c78793          	addi	a5,a5,-1396 # 8000bae0 <_ZTV7WorkerC+0x10>
    8000405c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004060:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004064:	00005517          	auipc	a0,0x5
    80004068:	27c50513          	addi	a0,a0,636 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	a04080e7          	jalr	-1532(ra) # 80005a70 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004074:	02000513          	li	a0,32
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	0c0080e7          	jalr	192(ra) # 80002138 <_Znwm>
    80004080:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	2c8080e7          	jalr	712(ra) # 8000234c <_ZN6ThreadC1Ev>
    8000408c:	00008797          	auipc	a5,0x8
    80004090:	a7c78793          	addi	a5,a5,-1412 # 8000bb08 <_ZTV7WorkerD+0x10>
    80004094:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004098:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000409c:	00005517          	auipc	a0,0x5
    800040a0:	25c50513          	addi	a0,a0,604 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800040a4:	00002097          	auipc	ra,0x2
    800040a8:	9cc080e7          	jalr	-1588(ra) # 80005a70 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800040ac:	00000493          	li	s1,0
    800040b0:	00300793          	li	a5,3
    800040b4:	0297c263          	blt	a5,s1,800040d8 <_Z20Threads_CPP_API_testv+0x124>
        threads[i]->start();
    800040b8:	00349793          	slli	a5,s1,0x3
    800040bc:	fe040713          	addi	a4,s0,-32
    800040c0:	00f707b3          	add	a5,a4,a5
    800040c4:	fe07b503          	ld	a0,-32(a5)
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	250080e7          	jalr	592(ra) # 80002318 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800040d0:	0014849b          	addiw	s1,s1,1
    800040d4:	fddff06f          	j	800040b0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    printString("threads started");
    800040d8:	00005517          	auipc	a0,0x5
    800040dc:	23850513          	addi	a0,a0,568 # 80009310 <CONSOLE_STATUS+0x300>
    800040e0:	00002097          	auipc	ra,0x2
    800040e4:	990080e7          	jalr	-1648(ra) # 80005a70 <_Z11printStringPKc>
    800040e8:	00c0006f          	j	800040f4 <_Z20Threads_CPP_API_testv+0x140>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	204080e7          	jalr	516(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040f4:	00008797          	auipc	a5,0x8
    800040f8:	c7c7c783          	lbu	a5,-900(a5) # 8000bd70 <_ZL9finishedA>
    800040fc:	fe0788e3          	beqz	a5,800040ec <_Z20Threads_CPP_API_testv+0x138>
    80004100:	00008797          	auipc	a5,0x8
    80004104:	c717c783          	lbu	a5,-911(a5) # 8000bd71 <_ZL9finishedB>
    80004108:	fe0782e3          	beqz	a5,800040ec <_Z20Threads_CPP_API_testv+0x138>
    8000410c:	00008797          	auipc	a5,0x8
    80004110:	c667c783          	lbu	a5,-922(a5) # 8000bd72 <_ZL9finishedC>
    80004114:	fc078ce3          	beqz	a5,800040ec <_Z20Threads_CPP_API_testv+0x138>
    80004118:	00008797          	auipc	a5,0x8
    8000411c:	c5b7c783          	lbu	a5,-933(a5) # 8000bd73 <_ZL9finishedD>
    80004120:	fc0786e3          	beqz	a5,800040ec <_Z20Threads_CPP_API_testv+0x138>
    80004124:	fc040493          	addi	s1,s0,-64
    80004128:	0080006f          	j	80004130 <_Z20Threads_CPP_API_testv+0x17c>
    }

    for (auto thread: threads) { delete thread; }
    8000412c:	00848493          	addi	s1,s1,8
    80004130:	fe040793          	addi	a5,s0,-32
    80004134:	08f48663          	beq	s1,a5,800041c0 <_Z20Threads_CPP_API_testv+0x20c>
    80004138:	0004b503          	ld	a0,0(s1)
    8000413c:	fe0508e3          	beqz	a0,8000412c <_Z20Threads_CPP_API_testv+0x178>
    80004140:	00053783          	ld	a5,0(a0)
    80004144:	0087b783          	ld	a5,8(a5)
    80004148:	000780e7          	jalr	a5
    8000414c:	fe1ff06f          	j	8000412c <_Z20Threads_CPP_API_testv+0x178>
    80004150:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004154:	00048513          	mv	a0,s1
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	058080e7          	jalr	88(ra) # 800021b0 <_ZdlPv>
    80004160:	00090513          	mv	a0,s2
    80004164:	00009097          	auipc	ra,0x9
    80004168:	d14080e7          	jalr	-748(ra) # 8000ce78 <_Unwind_Resume>
    8000416c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004170:	00048513          	mv	a0,s1
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	03c080e7          	jalr	60(ra) # 800021b0 <_ZdlPv>
    8000417c:	00090513          	mv	a0,s2
    80004180:	00009097          	auipc	ra,0x9
    80004184:	cf8080e7          	jalr	-776(ra) # 8000ce78 <_Unwind_Resume>
    80004188:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000418c:	00048513          	mv	a0,s1
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	020080e7          	jalr	32(ra) # 800021b0 <_ZdlPv>
    80004198:	00090513          	mv	a0,s2
    8000419c:	00009097          	auipc	ra,0x9
    800041a0:	cdc080e7          	jalr	-804(ra) # 8000ce78 <_Unwind_Resume>
    800041a4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800041a8:	00048513          	mv	a0,s1
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	004080e7          	jalr	4(ra) # 800021b0 <_ZdlPv>
    800041b4:	00090513          	mv	a0,s2
    800041b8:	00009097          	auipc	ra,0x9
    800041bc:	cc0080e7          	jalr	-832(ra) # 8000ce78 <_Unwind_Resume>
}
    800041c0:	03813083          	ld	ra,56(sp)
    800041c4:	03013403          	ld	s0,48(sp)
    800041c8:	02813483          	ld	s1,40(sp)
    800041cc:	02013903          	ld	s2,32(sp)
    800041d0:	04010113          	addi	sp,sp,64
    800041d4:	00008067          	ret

00000000800041d8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00113423          	sd	ra,8(sp)
    800041e0:	00813023          	sd	s0,0(sp)
    800041e4:	01010413          	addi	s0,sp,16
    800041e8:	00008797          	auipc	a5,0x8
    800041ec:	8a878793          	addi	a5,a5,-1880 # 8000ba90 <_ZTV7WorkerA+0x10>
    800041f0:	00f53023          	sd	a5,0(a0)
    800041f4:	ffffe097          	auipc	ra,0xffffe
    800041f8:	fe4080e7          	jalr	-28(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800041fc:	00813083          	ld	ra,8(sp)
    80004200:	00013403          	ld	s0,0(sp)
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00008067          	ret

000000008000420c <_ZN7WorkerAD0Ev>:
    8000420c:	fe010113          	addi	sp,sp,-32
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00813823          	sd	s0,16(sp)
    80004218:	00913423          	sd	s1,8(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00050493          	mv	s1,a0
    80004224:	00008797          	auipc	a5,0x8
    80004228:	86c78793          	addi	a5,a5,-1940 # 8000ba90 <_ZTV7WorkerA+0x10>
    8000422c:	00f53023          	sd	a5,0(a0)
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	fa8080e7          	jalr	-88(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004238:	00048513          	mv	a0,s1
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	f74080e7          	jalr	-140(ra) # 800021b0 <_ZdlPv>
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret

0000000080004258 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00113423          	sd	ra,8(sp)
    80004260:	00813023          	sd	s0,0(sp)
    80004264:	01010413          	addi	s0,sp,16
    80004268:	00008797          	auipc	a5,0x8
    8000426c:	85078793          	addi	a5,a5,-1968 # 8000bab8 <_ZTV7WorkerB+0x10>
    80004270:	00f53023          	sd	a5,0(a0)
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	f64080e7          	jalr	-156(ra) # 800021d8 <_ZN6ThreadD1Ev>
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_ZN7WorkerBD0Ev>:
    8000428c:	fe010113          	addi	sp,sp,-32
    80004290:	00113c23          	sd	ra,24(sp)
    80004294:	00813823          	sd	s0,16(sp)
    80004298:	00913423          	sd	s1,8(sp)
    8000429c:	02010413          	addi	s0,sp,32
    800042a0:	00050493          	mv	s1,a0
    800042a4:	00008797          	auipc	a5,0x8
    800042a8:	81478793          	addi	a5,a5,-2028 # 8000bab8 <_ZTV7WorkerB+0x10>
    800042ac:	00f53023          	sd	a5,0(a0)
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	f28080e7          	jalr	-216(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800042b8:	00048513          	mv	a0,s1
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	ef4080e7          	jalr	-268(ra) # 800021b0 <_ZdlPv>
    800042c4:	01813083          	ld	ra,24(sp)
    800042c8:	01013403          	ld	s0,16(sp)
    800042cc:	00813483          	ld	s1,8(sp)
    800042d0:	02010113          	addi	sp,sp,32
    800042d4:	00008067          	ret

00000000800042d8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00113423          	sd	ra,8(sp)
    800042e0:	00813023          	sd	s0,0(sp)
    800042e4:	01010413          	addi	s0,sp,16
    800042e8:	00007797          	auipc	a5,0x7
    800042ec:	7f878793          	addi	a5,a5,2040 # 8000bae0 <_ZTV7WorkerC+0x10>
    800042f0:	00f53023          	sd	a5,0(a0)
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	ee4080e7          	jalr	-284(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800042fc:	00813083          	ld	ra,8(sp)
    80004300:	00013403          	ld	s0,0(sp)
    80004304:	01010113          	addi	sp,sp,16
    80004308:	00008067          	ret

000000008000430c <_ZN7WorkerCD0Ev>:
    8000430c:	fe010113          	addi	sp,sp,-32
    80004310:	00113c23          	sd	ra,24(sp)
    80004314:	00813823          	sd	s0,16(sp)
    80004318:	00913423          	sd	s1,8(sp)
    8000431c:	02010413          	addi	s0,sp,32
    80004320:	00050493          	mv	s1,a0
    80004324:	00007797          	auipc	a5,0x7
    80004328:	7bc78793          	addi	a5,a5,1980 # 8000bae0 <_ZTV7WorkerC+0x10>
    8000432c:	00f53023          	sd	a5,0(a0)
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	ea8080e7          	jalr	-344(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004338:	00048513          	mv	a0,s1
    8000433c:	ffffe097          	auipc	ra,0xffffe
    80004340:	e74080e7          	jalr	-396(ra) # 800021b0 <_ZdlPv>
    80004344:	01813083          	ld	ra,24(sp)
    80004348:	01013403          	ld	s0,16(sp)
    8000434c:	00813483          	ld	s1,8(sp)
    80004350:	02010113          	addi	sp,sp,32
    80004354:	00008067          	ret

0000000080004358 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004358:	ff010113          	addi	sp,sp,-16
    8000435c:	00113423          	sd	ra,8(sp)
    80004360:	00813023          	sd	s0,0(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	00007797          	auipc	a5,0x7
    8000436c:	7a078793          	addi	a5,a5,1952 # 8000bb08 <_ZTV7WorkerD+0x10>
    80004370:	00f53023          	sd	a5,0(a0)
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	e64080e7          	jalr	-412(ra) # 800021d8 <_ZN6ThreadD1Ev>
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <_ZN7WorkerDD0Ev>:
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00113c23          	sd	ra,24(sp)
    80004394:	00813823          	sd	s0,16(sp)
    80004398:	00913423          	sd	s1,8(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	00050493          	mv	s1,a0
    800043a4:	00007797          	auipc	a5,0x7
    800043a8:	76478793          	addi	a5,a5,1892 # 8000bb08 <_ZTV7WorkerD+0x10>
    800043ac:	00f53023          	sd	a5,0(a0)
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	e28080e7          	jalr	-472(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800043b8:	00048513          	mv	a0,s1
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	df4080e7          	jalr	-524(ra) # 800021b0 <_ZdlPv>
    800043c4:	01813083          	ld	ra,24(sp)
    800043c8:	01013403          	ld	s0,16(sp)
    800043cc:	00813483          	ld	s1,8(sp)
    800043d0:	02010113          	addi	sp,sp,32
    800043d4:	00008067          	ret

00000000800043d8 <_ZN7WorkerA3runEv>:
    void run() override {
    800043d8:	ff010113          	addi	sp,sp,-16
    800043dc:	00113423          	sd	ra,8(sp)
    800043e0:	00813023          	sd	s0,0(sp)
    800043e4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800043e8:	00000593          	li	a1,0
    800043ec:	fffff097          	auipc	ra,0xfffff
    800043f0:	760080e7          	jalr	1888(ra) # 80003b4c <_ZN7WorkerA11workerBodyAEPv>
    }
    800043f4:	00813083          	ld	ra,8(sp)
    800043f8:	00013403          	ld	s0,0(sp)
    800043fc:	01010113          	addi	sp,sp,16
    80004400:	00008067          	ret

0000000080004404 <_ZN7WorkerB3runEv>:
    void run() override {
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00113423          	sd	ra,8(sp)
    8000440c:	00813023          	sd	s0,0(sp)
    80004410:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004414:	00000593          	li	a1,0
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	800080e7          	jalr	-2048(ra) # 80003c18 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004420:	00813083          	ld	ra,8(sp)
    80004424:	00013403          	ld	s0,0(sp)
    80004428:	01010113          	addi	sp,sp,16
    8000442c:	00008067          	ret

0000000080004430 <_ZN7WorkerC3runEv>:
    void run() override {
    80004430:	ff010113          	addi	sp,sp,-16
    80004434:	00113423          	sd	ra,8(sp)
    80004438:	00813023          	sd	s0,0(sp)
    8000443c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004440:	00000593          	li	a1,0
    80004444:	00000097          	auipc	ra,0x0
    80004448:	8a8080e7          	jalr	-1880(ra) # 80003cec <_ZN7WorkerC11workerBodyCEPv>
    }
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN7WorkerD3runEv>:
    void run() override {
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000446c:	00000593          	li	a1,0
    80004470:	00000097          	auipc	ra,0x0
    80004474:	9fc080e7          	jalr	-1540(ra) # 80003e6c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004478:	00813083          	ld	ra,8(sp)
    8000447c:	00013403          	ld	s0,0(sp)
    80004480:	01010113          	addi	sp,sp,16
    80004484:	00008067          	ret

0000000080004488 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004488:	f8010113          	addi	sp,sp,-128
    8000448c:	06113c23          	sd	ra,120(sp)
    80004490:	06813823          	sd	s0,112(sp)
    80004494:	06913423          	sd	s1,104(sp)
    80004498:	07213023          	sd	s2,96(sp)
    8000449c:	05313c23          	sd	s3,88(sp)
    800044a0:	05413823          	sd	s4,80(sp)
    800044a4:	05513423          	sd	s5,72(sp)
    800044a8:	05613023          	sd	s6,64(sp)
    800044ac:	03713c23          	sd	s7,56(sp)
    800044b0:	03813823          	sd	s8,48(sp)
    800044b4:	03913423          	sd	s9,40(sp)
    800044b8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800044bc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800044c0:	00005517          	auipc	a0,0x5
    800044c4:	c7050513          	addi	a0,a0,-912 # 80009130 <CONSOLE_STATUS+0x120>
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	5a8080e7          	jalr	1448(ra) # 80005a70 <_Z11printStringPKc>
    getString(input, 30);
    800044d0:	01e00593          	li	a1,30
    800044d4:	f8040493          	addi	s1,s0,-128
    800044d8:	00048513          	mv	a0,s1
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	61c080e7          	jalr	1564(ra) # 80005af8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800044e4:	00048513          	mv	a0,s1
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	6e8080e7          	jalr	1768(ra) # 80005bd0 <_Z11stringToIntPKc>
    800044f0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800044f4:	00005517          	auipc	a0,0x5
    800044f8:	c5c50513          	addi	a0,a0,-932 # 80009150 <CONSOLE_STATUS+0x140>
    800044fc:	00001097          	auipc	ra,0x1
    80004500:	574080e7          	jalr	1396(ra) # 80005a70 <_Z11printStringPKc>
    getString(input, 30);
    80004504:	01e00593          	li	a1,30
    80004508:	00048513          	mv	a0,s1
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	5ec080e7          	jalr	1516(ra) # 80005af8 <_Z9getStringPci>
    n = stringToInt(input);
    80004514:	00048513          	mv	a0,s1
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	6b8080e7          	jalr	1720(ra) # 80005bd0 <_Z11stringToIntPKc>
    80004520:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	c4c50513          	addi	a0,a0,-948 # 80009170 <CONSOLE_STATUS+0x160>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	544080e7          	jalr	1348(ra) # 80005a70 <_Z11printStringPKc>
    printInt(threadNum);
    80004534:	00000613          	li	a2,0
    80004538:	00a00593          	li	a1,10
    8000453c:	00098513          	mv	a0,s3
    80004540:	00001097          	auipc	ra,0x1
    80004544:	6e0080e7          	jalr	1760(ra) # 80005c20 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	c4050513          	addi	a0,a0,-960 # 80009188 <CONSOLE_STATUS+0x178>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	520080e7          	jalr	1312(ra) # 80005a70 <_Z11printStringPKc>
    printInt(n);
    80004558:	00000613          	li	a2,0
    8000455c:	00a00593          	li	a1,10
    80004560:	00048513          	mv	a0,s1
    80004564:	00001097          	auipc	ra,0x1
    80004568:	6bc080e7          	jalr	1724(ra) # 80005c20 <_Z8printIntiii>
    printString(".\n");
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	c3450513          	addi	a0,a0,-972 # 800091a0 <CONSOLE_STATUS+0x190>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	4fc080e7          	jalr	1276(ra) # 80005a70 <_Z11printStringPKc>
    if (threadNum > n) {
    8000457c:	0334c463          	blt	s1,s3,800045a4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004580:	03305c63          	blez	s3,800045b8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004584:	03800513          	li	a0,56
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	bb0080e7          	jalr	-1104(ra) # 80002138 <_Znwm>
    80004590:	00050a93          	mv	s5,a0
    80004594:	00048593          	mv	a1,s1
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	7a8080e7          	jalr	1960(ra) # 80005d40 <_ZN9BufferCPPC1Ei>
    800045a0:	0300006f          	j	800045d0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800045a4:	00005517          	auipc	a0,0x5
    800045a8:	c0450513          	addi	a0,a0,-1020 # 800091a8 <CONSOLE_STATUS+0x198>
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	4c4080e7          	jalr	1220(ra) # 80005a70 <_Z11printStringPKc>
        return;
    800045b4:	0140006f          	j	800045c8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800045b8:	00005517          	auipc	a0,0x5
    800045bc:	c3050513          	addi	a0,a0,-976 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	4b0080e7          	jalr	1200(ra) # 80005a70 <_Z11printStringPKc>
        return;
    800045c8:	000c0113          	mv	sp,s8
    800045cc:	2140006f          	j	800047e0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800045d0:	01000513          	li	a0,16
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	b64080e7          	jalr	-1180(ra) # 80002138 <_Znwm>
    800045dc:	00050913          	mv	s2,a0
    800045e0:	00000593          	li	a1,0
    800045e4:	ffffe097          	auipc	ra,0xffffe
    800045e8:	da0080e7          	jalr	-608(ra) # 80002384 <_ZN9SemaphoreC1Ej>
    800045ec:	00007797          	auipc	a5,0x7
    800045f0:	7927ba23          	sd	s2,1940(a5) # 8000bd80 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800045f4:	00399793          	slli	a5,s3,0x3
    800045f8:	00f78793          	addi	a5,a5,15
    800045fc:	ff07f793          	andi	a5,a5,-16
    80004600:	40f10133          	sub	sp,sp,a5
    80004604:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004608:	0019871b          	addiw	a4,s3,1
    8000460c:	00171793          	slli	a5,a4,0x1
    80004610:	00e787b3          	add	a5,a5,a4
    80004614:	00379793          	slli	a5,a5,0x3
    80004618:	00f78793          	addi	a5,a5,15
    8000461c:	ff07f793          	andi	a5,a5,-16
    80004620:	40f10133          	sub	sp,sp,a5
    80004624:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004628:	00199493          	slli	s1,s3,0x1
    8000462c:	013484b3          	add	s1,s1,s3
    80004630:	00349493          	slli	s1,s1,0x3
    80004634:	009b04b3          	add	s1,s6,s1
    80004638:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000463c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004640:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004644:	02800513          	li	a0,40
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	af0080e7          	jalr	-1296(ra) # 80002138 <_Znwm>
    80004650:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	cf8080e7          	jalr	-776(ra) # 8000234c <_ZN6ThreadC1Ev>
    8000465c:	00007797          	auipc	a5,0x7
    80004660:	52478793          	addi	a5,a5,1316 # 8000bb80 <_ZTV8Consumer+0x10>
    80004664:	00fbb023          	sd	a5,0(s7)
    80004668:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000466c:	000b8513          	mv	a0,s7
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	ca8080e7          	jalr	-856(ra) # 80002318 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004678:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000467c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004680:	00007797          	auipc	a5,0x7
    80004684:	7007b783          	ld	a5,1792(a5) # 8000bd80 <_ZL10waitForAll>
    80004688:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000468c:	02800513          	li	a0,40
    80004690:	ffffe097          	auipc	ra,0xffffe
    80004694:	aa8080e7          	jalr	-1368(ra) # 80002138 <_Znwm>
    80004698:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000469c:	ffffe097          	auipc	ra,0xffffe
    800046a0:	cb0080e7          	jalr	-848(ra) # 8000234c <_ZN6ThreadC1Ev>
    800046a4:	00007797          	auipc	a5,0x7
    800046a8:	48c78793          	addi	a5,a5,1164 # 8000bb30 <_ZTV16ProducerKeyborad+0x10>
    800046ac:	00f4b023          	sd	a5,0(s1)
    800046b0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046b4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800046b8:	00048513          	mv	a0,s1
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	c5c080e7          	jalr	-932(ra) # 80002318 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046c4:	00100913          	li	s2,1
    800046c8:	0300006f          	j	800046f8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800046cc:	00007797          	auipc	a5,0x7
    800046d0:	48c78793          	addi	a5,a5,1164 # 8000bb58 <_ZTV8Producer+0x10>
    800046d4:	00fcb023          	sd	a5,0(s9)
    800046d8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800046dc:	00391793          	slli	a5,s2,0x3
    800046e0:	00fa07b3          	add	a5,s4,a5
    800046e4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800046e8:	000c8513          	mv	a0,s9
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	c2c080e7          	jalr	-980(ra) # 80002318 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046f4:	0019091b          	addiw	s2,s2,1
    800046f8:	05395263          	bge	s2,s3,8000473c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800046fc:	00191493          	slli	s1,s2,0x1
    80004700:	012484b3          	add	s1,s1,s2
    80004704:	00349493          	slli	s1,s1,0x3
    80004708:	009b04b3          	add	s1,s6,s1
    8000470c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004710:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004714:	00007797          	auipc	a5,0x7
    80004718:	66c7b783          	ld	a5,1644(a5) # 8000bd80 <_ZL10waitForAll>
    8000471c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004720:	02800513          	li	a0,40
    80004724:	ffffe097          	auipc	ra,0xffffe
    80004728:	a14080e7          	jalr	-1516(ra) # 80002138 <_Znwm>
    8000472c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	c1c080e7          	jalr	-996(ra) # 8000234c <_ZN6ThreadC1Ev>
    80004738:	f95ff06f          	j	800046cc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	bb4080e7          	jalr	-1100(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004744:	00000493          	li	s1,0
    80004748:	0099ce63          	blt	s3,s1,80004764 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000474c:	00007517          	auipc	a0,0x7
    80004750:	63453503          	ld	a0,1588(a0) # 8000bd80 <_ZL10waitForAll>
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	c6c080e7          	jalr	-916(ra) # 800023c0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000475c:	0014849b          	addiw	s1,s1,1
    80004760:	fe9ff06f          	j	80004748 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004764:	00007517          	auipc	a0,0x7
    80004768:	61c53503          	ld	a0,1564(a0) # 8000bd80 <_ZL10waitForAll>
    8000476c:	00050863          	beqz	a0,8000477c <_Z20testConsumerProducerv+0x2f4>
    80004770:	00053783          	ld	a5,0(a0)
    80004774:	0087b783          	ld	a5,8(a5)
    80004778:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000477c:	00000493          	li	s1,0
    80004780:	0080006f          	j	80004788 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004784:	0014849b          	addiw	s1,s1,1
    80004788:	0334d263          	bge	s1,s3,800047ac <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000478c:	00349793          	slli	a5,s1,0x3
    80004790:	00fa07b3          	add	a5,s4,a5
    80004794:	0007b503          	ld	a0,0(a5)
    80004798:	fe0506e3          	beqz	a0,80004784 <_Z20testConsumerProducerv+0x2fc>
    8000479c:	00053783          	ld	a5,0(a0)
    800047a0:	0087b783          	ld	a5,8(a5)
    800047a4:	000780e7          	jalr	a5
    800047a8:	fddff06f          	j	80004784 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800047ac:	000b8a63          	beqz	s7,800047c0 <_Z20testConsumerProducerv+0x338>
    800047b0:	000bb783          	ld	a5,0(s7)
    800047b4:	0087b783          	ld	a5,8(a5)
    800047b8:	000b8513          	mv	a0,s7
    800047bc:	000780e7          	jalr	a5
    delete buffer;
    800047c0:	000a8e63          	beqz	s5,800047dc <_Z20testConsumerProducerv+0x354>
    800047c4:	000a8513          	mv	a0,s5
    800047c8:	00002097          	auipc	ra,0x2
    800047cc:	870080e7          	jalr	-1936(ra) # 80006038 <_ZN9BufferCPPD1Ev>
    800047d0:	000a8513          	mv	a0,s5
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	9dc080e7          	jalr	-1572(ra) # 800021b0 <_ZdlPv>
    800047dc:	000c0113          	mv	sp,s8
}
    800047e0:	f8040113          	addi	sp,s0,-128
    800047e4:	07813083          	ld	ra,120(sp)
    800047e8:	07013403          	ld	s0,112(sp)
    800047ec:	06813483          	ld	s1,104(sp)
    800047f0:	06013903          	ld	s2,96(sp)
    800047f4:	05813983          	ld	s3,88(sp)
    800047f8:	05013a03          	ld	s4,80(sp)
    800047fc:	04813a83          	ld	s5,72(sp)
    80004800:	04013b03          	ld	s6,64(sp)
    80004804:	03813b83          	ld	s7,56(sp)
    80004808:	03013c03          	ld	s8,48(sp)
    8000480c:	02813c83          	ld	s9,40(sp)
    80004810:	08010113          	addi	sp,sp,128
    80004814:	00008067          	ret
    80004818:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000481c:	000a8513          	mv	a0,s5
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	990080e7          	jalr	-1648(ra) # 800021b0 <_ZdlPv>
    80004828:	00048513          	mv	a0,s1
    8000482c:	00008097          	auipc	ra,0x8
    80004830:	64c080e7          	jalr	1612(ra) # 8000ce78 <_Unwind_Resume>
    80004834:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004838:	00090513          	mv	a0,s2
    8000483c:	ffffe097          	auipc	ra,0xffffe
    80004840:	974080e7          	jalr	-1676(ra) # 800021b0 <_ZdlPv>
    80004844:	00048513          	mv	a0,s1
    80004848:	00008097          	auipc	ra,0x8
    8000484c:	630080e7          	jalr	1584(ra) # 8000ce78 <_Unwind_Resume>
    80004850:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004854:	000b8513          	mv	a0,s7
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	958080e7          	jalr	-1704(ra) # 800021b0 <_ZdlPv>
    80004860:	00048513          	mv	a0,s1
    80004864:	00008097          	auipc	ra,0x8
    80004868:	614080e7          	jalr	1556(ra) # 8000ce78 <_Unwind_Resume>
    8000486c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004870:	00048513          	mv	a0,s1
    80004874:	ffffe097          	auipc	ra,0xffffe
    80004878:	93c080e7          	jalr	-1732(ra) # 800021b0 <_ZdlPv>
    8000487c:	00090513          	mv	a0,s2
    80004880:	00008097          	auipc	ra,0x8
    80004884:	5f8080e7          	jalr	1528(ra) # 8000ce78 <_Unwind_Resume>
    80004888:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000488c:	000c8513          	mv	a0,s9
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	920080e7          	jalr	-1760(ra) # 800021b0 <_ZdlPv>
    80004898:	00048513          	mv	a0,s1
    8000489c:	00008097          	auipc	ra,0x8
    800048a0:	5dc080e7          	jalr	1500(ra) # 8000ce78 <_Unwind_Resume>

00000000800048a4 <_ZN8Consumer3runEv>:
    void run() override {
    800048a4:	fd010113          	addi	sp,sp,-48
    800048a8:	02113423          	sd	ra,40(sp)
    800048ac:	02813023          	sd	s0,32(sp)
    800048b0:	00913c23          	sd	s1,24(sp)
    800048b4:	01213823          	sd	s2,16(sp)
    800048b8:	01313423          	sd	s3,8(sp)
    800048bc:	03010413          	addi	s0,sp,48
    800048c0:	00050913          	mv	s2,a0
        int i = 0;
    800048c4:	00000993          	li	s3,0
    800048c8:	0100006f          	j	800048d8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800048cc:	00a00513          	li	a0,10
    800048d0:	ffffe097          	auipc	ra,0xffffe
    800048d4:	bc8080e7          	jalr	-1080(ra) # 80002498 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800048d8:	00007797          	auipc	a5,0x7
    800048dc:	4a07a783          	lw	a5,1184(a5) # 8000bd78 <_ZL9threadEnd>
    800048e0:	04079a63          	bnez	a5,80004934 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800048e4:	02093783          	ld	a5,32(s2)
    800048e8:	0087b503          	ld	a0,8(a5)
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	638080e7          	jalr	1592(ra) # 80005f24 <_ZN9BufferCPP3getEv>
            i++;
    800048f4:	0019849b          	addiw	s1,s3,1
    800048f8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800048fc:	0ff57513          	andi	a0,a0,255
    80004900:	ffffe097          	auipc	ra,0xffffe
    80004904:	b98080e7          	jalr	-1128(ra) # 80002498 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004908:	05000793          	li	a5,80
    8000490c:	02f4e4bb          	remw	s1,s1,a5
    80004910:	fc0494e3          	bnez	s1,800048d8 <_ZN8Consumer3runEv+0x34>
    80004914:	fb9ff06f          	j	800048cc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004918:	02093783          	ld	a5,32(s2)
    8000491c:	0087b503          	ld	a0,8(a5)
    80004920:	00001097          	auipc	ra,0x1
    80004924:	604080e7          	jalr	1540(ra) # 80005f24 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004928:	0ff57513          	andi	a0,a0,255
    8000492c:	ffffe097          	auipc	ra,0xffffe
    80004930:	b6c080e7          	jalr	-1172(ra) # 80002498 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004934:	02093783          	ld	a5,32(s2)
    80004938:	0087b503          	ld	a0,8(a5)
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	674080e7          	jalr	1652(ra) # 80005fb0 <_ZN9BufferCPP6getCntEv>
    80004944:	fca04ae3          	bgtz	a0,80004918 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004948:	02093783          	ld	a5,32(s2)
    8000494c:	0107b503          	ld	a0,16(a5)
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	a9c080e7          	jalr	-1380(ra) # 800023ec <_ZN9Semaphore6signalEv>
    }
    80004958:	02813083          	ld	ra,40(sp)
    8000495c:	02013403          	ld	s0,32(sp)
    80004960:	01813483          	ld	s1,24(sp)
    80004964:	01013903          	ld	s2,16(sp)
    80004968:	00813983          	ld	s3,8(sp)
    8000496c:	03010113          	addi	sp,sp,48
    80004970:	00008067          	ret

0000000080004974 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004974:	ff010113          	addi	sp,sp,-16
    80004978:	00113423          	sd	ra,8(sp)
    8000497c:	00813023          	sd	s0,0(sp)
    80004980:	01010413          	addi	s0,sp,16
    80004984:	00007797          	auipc	a5,0x7
    80004988:	1fc78793          	addi	a5,a5,508 # 8000bb80 <_ZTV8Consumer+0x10>
    8000498c:	00f53023          	sd	a5,0(a0)
    80004990:	ffffe097          	auipc	ra,0xffffe
    80004994:	848080e7          	jalr	-1976(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004998:	00813083          	ld	ra,8(sp)
    8000499c:	00013403          	ld	s0,0(sp)
    800049a0:	01010113          	addi	sp,sp,16
    800049a4:	00008067          	ret

00000000800049a8 <_ZN8ConsumerD0Ev>:
    800049a8:	fe010113          	addi	sp,sp,-32
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	02010413          	addi	s0,sp,32
    800049bc:	00050493          	mv	s1,a0
    800049c0:	00007797          	auipc	a5,0x7
    800049c4:	1c078793          	addi	a5,a5,448 # 8000bb80 <_ZTV8Consumer+0x10>
    800049c8:	00f53023          	sd	a5,0(a0)
    800049cc:	ffffe097          	auipc	ra,0xffffe
    800049d0:	80c080e7          	jalr	-2036(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800049d4:	00048513          	mv	a0,s1
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	7d8080e7          	jalr	2008(ra) # 800021b0 <_ZdlPv>
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	00813483          	ld	s1,8(sp)
    800049ec:	02010113          	addi	sp,sp,32
    800049f0:	00008067          	ret

00000000800049f4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800049f4:	ff010113          	addi	sp,sp,-16
    800049f8:	00113423          	sd	ra,8(sp)
    800049fc:	00813023          	sd	s0,0(sp)
    80004a00:	01010413          	addi	s0,sp,16
    80004a04:	00007797          	auipc	a5,0x7
    80004a08:	12c78793          	addi	a5,a5,300 # 8000bb30 <_ZTV16ProducerKeyborad+0x10>
    80004a0c:	00f53023          	sd	a5,0(a0)
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	7c8080e7          	jalr	1992(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004a18:	00813083          	ld	ra,8(sp)
    80004a1c:	00013403          	ld	s0,0(sp)
    80004a20:	01010113          	addi	sp,sp,16
    80004a24:	00008067          	ret

0000000080004a28 <_ZN16ProducerKeyboradD0Ev>:
    80004a28:	fe010113          	addi	sp,sp,-32
    80004a2c:	00113c23          	sd	ra,24(sp)
    80004a30:	00813823          	sd	s0,16(sp)
    80004a34:	00913423          	sd	s1,8(sp)
    80004a38:	02010413          	addi	s0,sp,32
    80004a3c:	00050493          	mv	s1,a0
    80004a40:	00007797          	auipc	a5,0x7
    80004a44:	0f078793          	addi	a5,a5,240 # 8000bb30 <_ZTV16ProducerKeyborad+0x10>
    80004a48:	00f53023          	sd	a5,0(a0)
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	78c080e7          	jalr	1932(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004a54:	00048513          	mv	a0,s1
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	758080e7          	jalr	1880(ra) # 800021b0 <_ZdlPv>
    80004a60:	01813083          	ld	ra,24(sp)
    80004a64:	01013403          	ld	s0,16(sp)
    80004a68:	00813483          	ld	s1,8(sp)
    80004a6c:	02010113          	addi	sp,sp,32
    80004a70:	00008067          	ret

0000000080004a74 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004a74:	ff010113          	addi	sp,sp,-16
    80004a78:	00113423          	sd	ra,8(sp)
    80004a7c:	00813023          	sd	s0,0(sp)
    80004a80:	01010413          	addi	s0,sp,16
    80004a84:	00007797          	auipc	a5,0x7
    80004a88:	0d478793          	addi	a5,a5,212 # 8000bb58 <_ZTV8Producer+0x10>
    80004a8c:	00f53023          	sd	a5,0(a0)
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	748080e7          	jalr	1864(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004a98:	00813083          	ld	ra,8(sp)
    80004a9c:	00013403          	ld	s0,0(sp)
    80004aa0:	01010113          	addi	sp,sp,16
    80004aa4:	00008067          	ret

0000000080004aa8 <_ZN8ProducerD0Ev>:
    80004aa8:	fe010113          	addi	sp,sp,-32
    80004aac:	00113c23          	sd	ra,24(sp)
    80004ab0:	00813823          	sd	s0,16(sp)
    80004ab4:	00913423          	sd	s1,8(sp)
    80004ab8:	02010413          	addi	s0,sp,32
    80004abc:	00050493          	mv	s1,a0
    80004ac0:	00007797          	auipc	a5,0x7
    80004ac4:	09878793          	addi	a5,a5,152 # 8000bb58 <_ZTV8Producer+0x10>
    80004ac8:	00f53023          	sd	a5,0(a0)
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	70c080e7          	jalr	1804(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80004ad4:	00048513          	mv	a0,s1
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	6d8080e7          	jalr	1752(ra) # 800021b0 <_ZdlPv>
    80004ae0:	01813083          	ld	ra,24(sp)
    80004ae4:	01013403          	ld	s0,16(sp)
    80004ae8:	00813483          	ld	s1,8(sp)
    80004aec:	02010113          	addi	sp,sp,32
    80004af0:	00008067          	ret

0000000080004af4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004af4:	fe010113          	addi	sp,sp,-32
    80004af8:	00113c23          	sd	ra,24(sp)
    80004afc:	00813823          	sd	s0,16(sp)
    80004b00:	00913423          	sd	s1,8(sp)
    80004b04:	02010413          	addi	s0,sp,32
    80004b08:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004b0c:	ffffd097          	auipc	ra,0xffffd
    80004b10:	b24080e7          	jalr	-1244(ra) # 80001630 <_Z4getcv>
    80004b14:	0005059b          	sext.w	a1,a0
    80004b18:	01b00793          	li	a5,27
    80004b1c:	00f58c63          	beq	a1,a5,80004b34 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004b20:	0204b783          	ld	a5,32(s1)
    80004b24:	0087b503          	ld	a0,8(a5)
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	36c080e7          	jalr	876(ra) # 80005e94 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004b30:	fddff06f          	j	80004b0c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004b34:	00100793          	li	a5,1
    80004b38:	00007717          	auipc	a4,0x7
    80004b3c:	24f72023          	sw	a5,576(a4) # 8000bd78 <_ZL9threadEnd>
        td->buffer->put('!');
    80004b40:	0204b783          	ld	a5,32(s1)
    80004b44:	02100593          	li	a1,33
    80004b48:	0087b503          	ld	a0,8(a5)
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	348080e7          	jalr	840(ra) # 80005e94 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004b54:	0204b783          	ld	a5,32(s1)
    80004b58:	0107b503          	ld	a0,16(a5)
    80004b5c:	ffffe097          	auipc	ra,0xffffe
    80004b60:	890080e7          	jalr	-1904(ra) # 800023ec <_ZN9Semaphore6signalEv>
    }
    80004b64:	01813083          	ld	ra,24(sp)
    80004b68:	01013403          	ld	s0,16(sp)
    80004b6c:	00813483          	ld	s1,8(sp)
    80004b70:	02010113          	addi	sp,sp,32
    80004b74:	00008067          	ret

0000000080004b78 <_ZN8Producer3runEv>:
    void run() override {
    80004b78:	fe010113          	addi	sp,sp,-32
    80004b7c:	00113c23          	sd	ra,24(sp)
    80004b80:	00813823          	sd	s0,16(sp)
    80004b84:	00913423          	sd	s1,8(sp)
    80004b88:	01213023          	sd	s2,0(sp)
    80004b8c:	02010413          	addi	s0,sp,32
    80004b90:	00050493          	mv	s1,a0
        int i = 0;
    80004b94:	00000913          	li	s2,0
        while (!threadEnd) {
    80004b98:	00007797          	auipc	a5,0x7
    80004b9c:	1e07a783          	lw	a5,480(a5) # 8000bd78 <_ZL9threadEnd>
    80004ba0:	04079263          	bnez	a5,80004be4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004ba4:	0204b783          	ld	a5,32(s1)
    80004ba8:	0007a583          	lw	a1,0(a5)
    80004bac:	0305859b          	addiw	a1,a1,48
    80004bb0:	0087b503          	ld	a0,8(a5)
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	2e0080e7          	jalr	736(ra) # 80005e94 <_ZN9BufferCPP3putEi>
            i++;
    80004bbc:	0019071b          	addiw	a4,s2,1
    80004bc0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004bc4:	0204b783          	ld	a5,32(s1)
    80004bc8:	0007a783          	lw	a5,0(a5)
    80004bcc:	00e787bb          	addw	a5,a5,a4
    80004bd0:	00500513          	li	a0,5
    80004bd4:	02a7e53b          	remw	a0,a5,a0
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	6f0080e7          	jalr	1776(ra) # 800022c8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004be0:	fb9ff06f          	j	80004b98 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004be4:	0204b783          	ld	a5,32(s1)
    80004be8:	0107b503          	ld	a0,16(a5)
    80004bec:	ffffe097          	auipc	ra,0xffffe
    80004bf0:	800080e7          	jalr	-2048(ra) # 800023ec <_ZN9Semaphore6signalEv>
    }
    80004bf4:	01813083          	ld	ra,24(sp)
    80004bf8:	01013403          	ld	s0,16(sp)
    80004bfc:	00813483          	ld	s1,8(sp)
    80004c00:	00013903          	ld	s2,0(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret

0000000080004c0c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004c0c:	fe010113          	addi	sp,sp,-32
    80004c10:	00113c23          	sd	ra,24(sp)
    80004c14:	00813823          	sd	s0,16(sp)
    80004c18:	00913423          	sd	s1,8(sp)
    80004c1c:	01213023          	sd	s2,0(sp)
    80004c20:	02010413          	addi	s0,sp,32
    80004c24:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c28:	00100793          	li	a5,1
    80004c2c:	02a7f863          	bgeu	a5,a0,80004c5c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c30:	00a00793          	li	a5,10
    80004c34:	02f577b3          	remu	a5,a0,a5
    80004c38:	02078e63          	beqz	a5,80004c74 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c3c:	fff48513          	addi	a0,s1,-1
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	fcc080e7          	jalr	-52(ra) # 80004c0c <_ZL9fibonaccim>
    80004c48:	00050913          	mv	s2,a0
    80004c4c:	ffe48513          	addi	a0,s1,-2
    80004c50:	00000097          	auipc	ra,0x0
    80004c54:	fbc080e7          	jalr	-68(ra) # 80004c0c <_ZL9fibonaccim>
    80004c58:	00a90533          	add	a0,s2,a0
}
    80004c5c:	01813083          	ld	ra,24(sp)
    80004c60:	01013403          	ld	s0,16(sp)
    80004c64:	00813483          	ld	s1,8(sp)
    80004c68:	00013903          	ld	s2,0(sp)
    80004c6c:	02010113          	addi	sp,sp,32
    80004c70:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	75c080e7          	jalr	1884(ra) # 800013d0 <_Z15thread_dispatchv>
    80004c7c:	fc1ff06f          	j	80004c3c <_ZL9fibonaccim+0x30>

0000000080004c80 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004c80:	fe010113          	addi	sp,sp,-32
    80004c84:	00113c23          	sd	ra,24(sp)
    80004c88:	00813823          	sd	s0,16(sp)
    80004c8c:	00913423          	sd	s1,8(sp)
    80004c90:	01213023          	sd	s2,0(sp)
    80004c94:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c98:	00a00493          	li	s1,10
    80004c9c:	0400006f          	j	80004cdc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	5d850513          	addi	a0,a0,1496 # 80009278 <CONSOLE_STATUS+0x268>
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	dc8080e7          	jalr	-568(ra) # 80005a70 <_Z11printStringPKc>
    80004cb0:	00000613          	li	a2,0
    80004cb4:	00a00593          	li	a1,10
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	f64080e7          	jalr	-156(ra) # 80005c20 <_Z8printIntiii>
    80004cc4:	00004517          	auipc	a0,0x4
    80004cc8:	7b450513          	addi	a0,a0,1972 # 80009478 <CONSOLE_STATUS+0x468>
    80004ccc:	00001097          	auipc	ra,0x1
    80004cd0:	da4080e7          	jalr	-604(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004cd4:	0014849b          	addiw	s1,s1,1
    80004cd8:	0ff4f493          	andi	s1,s1,255
    80004cdc:	00c00793          	li	a5,12
    80004ce0:	fc97f0e3          	bgeu	a5,s1,80004ca0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004ce4:	00004517          	auipc	a0,0x4
    80004ce8:	59c50513          	addi	a0,a0,1436 # 80009280 <CONSOLE_STATUS+0x270>
    80004cec:	00001097          	auipc	ra,0x1
    80004cf0:	d84080e7          	jalr	-636(ra) # 80005a70 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004cf4:	00500313          	li	t1,5
    thread_dispatch();
    80004cf8:	ffffc097          	auipc	ra,0xffffc
    80004cfc:	6d8080e7          	jalr	1752(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004d00:	01000513          	li	a0,16
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	f08080e7          	jalr	-248(ra) # 80004c0c <_ZL9fibonaccim>
    80004d0c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	58050513          	addi	a0,a0,1408 # 80009290 <CONSOLE_STATUS+0x280>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	d58080e7          	jalr	-680(ra) # 80005a70 <_Z11printStringPKc>
    80004d20:	00000613          	li	a2,0
    80004d24:	00a00593          	li	a1,10
    80004d28:	0009051b          	sext.w	a0,s2
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	ef4080e7          	jalr	-268(ra) # 80005c20 <_Z8printIntiii>
    80004d34:	00004517          	auipc	a0,0x4
    80004d38:	74450513          	addi	a0,a0,1860 # 80009478 <CONSOLE_STATUS+0x468>
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	d34080e7          	jalr	-716(ra) # 80005a70 <_Z11printStringPKc>
    80004d44:	0400006f          	j	80004d84 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	53050513          	addi	a0,a0,1328 # 80009278 <CONSOLE_STATUS+0x268>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	d20080e7          	jalr	-736(ra) # 80005a70 <_Z11printStringPKc>
    80004d58:	00000613          	li	a2,0
    80004d5c:	00a00593          	li	a1,10
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	ebc080e7          	jalr	-324(ra) # 80005c20 <_Z8printIntiii>
    80004d6c:	00004517          	auipc	a0,0x4
    80004d70:	70c50513          	addi	a0,a0,1804 # 80009478 <CONSOLE_STATUS+0x468>
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	cfc080e7          	jalr	-772(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d7c:	0014849b          	addiw	s1,s1,1
    80004d80:	0ff4f493          	andi	s1,s1,255
    80004d84:	00f00793          	li	a5,15
    80004d88:	fc97f0e3          	bgeu	a5,s1,80004d48 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004d8c:	00004517          	auipc	a0,0x4
    80004d90:	51450513          	addi	a0,a0,1300 # 800092a0 <CONSOLE_STATUS+0x290>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	cdc080e7          	jalr	-804(ra) # 80005a70 <_Z11printStringPKc>
    finishedD = true;
    80004d9c:	00100793          	li	a5,1
    80004da0:	00007717          	auipc	a4,0x7
    80004da4:	fef70423          	sb	a5,-24(a4) # 8000bd88 <_ZL9finishedD>
    thread_dispatch();
    80004da8:	ffffc097          	auipc	ra,0xffffc
    80004dac:	628080e7          	jalr	1576(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	00013903          	ld	s2,0(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	01213023          	sd	s2,0(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004de0:	00000493          	li	s1,0
    80004de4:	0400006f          	j	80004e24 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004de8:	00004517          	auipc	a0,0x4
    80004dec:	46050513          	addi	a0,a0,1120 # 80009248 <CONSOLE_STATUS+0x238>
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	c80080e7          	jalr	-896(ra) # 80005a70 <_Z11printStringPKc>
    80004df8:	00000613          	li	a2,0
    80004dfc:	00a00593          	li	a1,10
    80004e00:	00048513          	mv	a0,s1
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	e1c080e7          	jalr	-484(ra) # 80005c20 <_Z8printIntiii>
    80004e0c:	00004517          	auipc	a0,0x4
    80004e10:	66c50513          	addi	a0,a0,1644 # 80009478 <CONSOLE_STATUS+0x468>
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	c5c080e7          	jalr	-932(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e1c:	0014849b          	addiw	s1,s1,1
    80004e20:	0ff4f493          	andi	s1,s1,255
    80004e24:	00200793          	li	a5,2
    80004e28:	fc97f0e3          	bgeu	a5,s1,80004de8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004e2c:	00004517          	auipc	a0,0x4
    80004e30:	42450513          	addi	a0,a0,1060 # 80009250 <CONSOLE_STATUS+0x240>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	c3c080e7          	jalr	-964(ra) # 80005a70 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e3c:	00700313          	li	t1,7
    thread_dispatch();
    80004e40:	ffffc097          	auipc	ra,0xffffc
    80004e44:	590080e7          	jalr	1424(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e48:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004e4c:	00004517          	auipc	a0,0x4
    80004e50:	41450513          	addi	a0,a0,1044 # 80009260 <CONSOLE_STATUS+0x250>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	c1c080e7          	jalr	-996(ra) # 80005a70 <_Z11printStringPKc>
    80004e5c:	00000613          	li	a2,0
    80004e60:	00a00593          	li	a1,10
    80004e64:	0009051b          	sext.w	a0,s2
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	db8080e7          	jalr	-584(ra) # 80005c20 <_Z8printIntiii>
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	60850513          	addi	a0,a0,1544 # 80009478 <CONSOLE_STATUS+0x468>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	bf8080e7          	jalr	-1032(ra) # 80005a70 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004e80:	00c00513          	li	a0,12
    80004e84:	00000097          	auipc	ra,0x0
    80004e88:	d88080e7          	jalr	-632(ra) # 80004c0c <_ZL9fibonaccim>
    80004e8c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e90:	00004517          	auipc	a0,0x4
    80004e94:	3d850513          	addi	a0,a0,984 # 80009268 <CONSOLE_STATUS+0x258>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	bd8080e7          	jalr	-1064(ra) # 80005a70 <_Z11printStringPKc>
    80004ea0:	00000613          	li	a2,0
    80004ea4:	00a00593          	li	a1,10
    80004ea8:	0009051b          	sext.w	a0,s2
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	d74080e7          	jalr	-652(ra) # 80005c20 <_Z8printIntiii>
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	5c450513          	addi	a0,a0,1476 # 80009478 <CONSOLE_STATUS+0x468>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	bb4080e7          	jalr	-1100(ra) # 80005a70 <_Z11printStringPKc>
    80004ec4:	0400006f          	j	80004f04 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004ec8:	00004517          	auipc	a0,0x4
    80004ecc:	38050513          	addi	a0,a0,896 # 80009248 <CONSOLE_STATUS+0x238>
    80004ed0:	00001097          	auipc	ra,0x1
    80004ed4:	ba0080e7          	jalr	-1120(ra) # 80005a70 <_Z11printStringPKc>
    80004ed8:	00000613          	li	a2,0
    80004edc:	00a00593          	li	a1,10
    80004ee0:	00048513          	mv	a0,s1
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	d3c080e7          	jalr	-708(ra) # 80005c20 <_Z8printIntiii>
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	58c50513          	addi	a0,a0,1420 # 80009478 <CONSOLE_STATUS+0x468>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	b7c080e7          	jalr	-1156(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004efc:	0014849b          	addiw	s1,s1,1
    80004f00:	0ff4f493          	andi	s1,s1,255
    80004f04:	00500793          	li	a5,5
    80004f08:	fc97f0e3          	bgeu	a5,s1,80004ec8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004f0c:	00004517          	auipc	a0,0x4
    80004f10:	31450513          	addi	a0,a0,788 # 80009220 <CONSOLE_STATUS+0x210>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	b5c080e7          	jalr	-1188(ra) # 80005a70 <_Z11printStringPKc>
    finishedC = true;
    80004f1c:	00100793          	li	a5,1
    80004f20:	00007717          	auipc	a4,0x7
    80004f24:	e6f704a3          	sb	a5,-407(a4) # 8000bd89 <_ZL9finishedC>
    thread_dispatch();
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	4a8080e7          	jalr	1192(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004f30:	01813083          	ld	ra,24(sp)
    80004f34:	01013403          	ld	s0,16(sp)
    80004f38:	00813483          	ld	s1,8(sp)
    80004f3c:	00013903          	ld	s2,0(sp)
    80004f40:	02010113          	addi	sp,sp,32
    80004f44:	00008067          	ret

0000000080004f48 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	01213023          	sd	s2,0(sp)
    80004f5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f60:	00000913          	li	s2,0
    80004f64:	0380006f          	j	80004f9c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004f68:	ffffc097          	auipc	ra,0xffffc
    80004f6c:	468080e7          	jalr	1128(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f70:	00148493          	addi	s1,s1,1
    80004f74:	000027b7          	lui	a5,0x2
    80004f78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f7c:	0097ee63          	bltu	a5,s1,80004f98 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f80:	00000713          	li	a4,0
    80004f84:	000077b7          	lui	a5,0x7
    80004f88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f8c:	fce7eee3          	bltu	a5,a4,80004f68 <_ZL11workerBodyBPv+0x20>
    80004f90:	00170713          	addi	a4,a4,1
    80004f94:	ff1ff06f          	j	80004f84 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004f98:	00190913          	addi	s2,s2,1
    80004f9c:	00f00793          	li	a5,15
    80004fa0:	0527e063          	bltu	a5,s2,80004fe0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004fa4:	00004517          	auipc	a0,0x4
    80004fa8:	28c50513          	addi	a0,a0,652 # 80009230 <CONSOLE_STATUS+0x220>
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	ac4080e7          	jalr	-1340(ra) # 80005a70 <_Z11printStringPKc>
    80004fb4:	00000613          	li	a2,0
    80004fb8:	00a00593          	li	a1,10
    80004fbc:	0009051b          	sext.w	a0,s2
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	c60080e7          	jalr	-928(ra) # 80005c20 <_Z8printIntiii>
    80004fc8:	00004517          	auipc	a0,0x4
    80004fcc:	4b050513          	addi	a0,a0,1200 # 80009478 <CONSOLE_STATUS+0x468>
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	aa0080e7          	jalr	-1376(ra) # 80005a70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fd8:	00000493          	li	s1,0
    80004fdc:	f99ff06f          	j	80004f74 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	25850513          	addi	a0,a0,600 # 80009238 <CONSOLE_STATUS+0x228>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	a88080e7          	jalr	-1400(ra) # 80005a70 <_Z11printStringPKc>
    finishedB = true;
    80004ff0:	00100793          	li	a5,1
    80004ff4:	00007717          	auipc	a4,0x7
    80004ff8:	d8f70b23          	sb	a5,-618(a4) # 8000bd8a <_ZL9finishedB>
    thread_dispatch();
    80004ffc:	ffffc097          	auipc	ra,0xffffc
    80005000:	3d4080e7          	jalr	980(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80005004:	01813083          	ld	ra,24(sp)
    80005008:	01013403          	ld	s0,16(sp)
    8000500c:	00813483          	ld	s1,8(sp)
    80005010:	00013903          	ld	s2,0(sp)
    80005014:	02010113          	addi	sp,sp,32
    80005018:	00008067          	ret

000000008000501c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000501c:	fe010113          	addi	sp,sp,-32
    80005020:	00113c23          	sd	ra,24(sp)
    80005024:	00813823          	sd	s0,16(sp)
    80005028:	00913423          	sd	s1,8(sp)
    8000502c:	01213023          	sd	s2,0(sp)
    80005030:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005034:	00000913          	li	s2,0
    80005038:	0380006f          	j	80005070 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000503c:	ffffc097          	auipc	ra,0xffffc
    80005040:	394080e7          	jalr	916(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005044:	00148493          	addi	s1,s1,1
    80005048:	000027b7          	lui	a5,0x2
    8000504c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005050:	0097ee63          	bltu	a5,s1,8000506c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005054:	00000713          	li	a4,0
    80005058:	000077b7          	lui	a5,0x7
    8000505c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005060:	fce7eee3          	bltu	a5,a4,8000503c <_ZL11workerBodyAPv+0x20>
    80005064:	00170713          	addi	a4,a4,1
    80005068:	ff1ff06f          	j	80005058 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000506c:	00190913          	addi	s2,s2,1
    80005070:	00900793          	li	a5,9
    80005074:	0527e063          	bltu	a5,s2,800050b4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	1a050513          	addi	a0,a0,416 # 80009218 <CONSOLE_STATUS+0x208>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	9f0080e7          	jalr	-1552(ra) # 80005a70 <_Z11printStringPKc>
    80005088:	00000613          	li	a2,0
    8000508c:	00a00593          	li	a1,10
    80005090:	0009051b          	sext.w	a0,s2
    80005094:	00001097          	auipc	ra,0x1
    80005098:	b8c080e7          	jalr	-1140(ra) # 80005c20 <_Z8printIntiii>
    8000509c:	00004517          	auipc	a0,0x4
    800050a0:	3dc50513          	addi	a0,a0,988 # 80009478 <CONSOLE_STATUS+0x468>
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	9cc080e7          	jalr	-1588(ra) # 80005a70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050ac:	00000493          	li	s1,0
    800050b0:	f99ff06f          	j	80005048 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800050b4:	00004517          	auipc	a0,0x4
    800050b8:	16c50513          	addi	a0,a0,364 # 80009220 <CONSOLE_STATUS+0x210>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	9b4080e7          	jalr	-1612(ra) # 80005a70 <_Z11printStringPKc>
    finishedA = true;
    800050c4:	00100793          	li	a5,1
    800050c8:	00007717          	auipc	a4,0x7
    800050cc:	ccf701a3          	sb	a5,-829(a4) # 8000bd8b <_ZL9finishedA>
}
    800050d0:	01813083          	ld	ra,24(sp)
    800050d4:	01013403          	ld	s0,16(sp)
    800050d8:	00813483          	ld	s1,8(sp)
    800050dc:	00013903          	ld	s2,0(sp)
    800050e0:	02010113          	addi	sp,sp,32
    800050e4:	00008067          	ret

00000000800050e8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050e8:	fd010113          	addi	sp,sp,-48
    800050ec:	02113423          	sd	ra,40(sp)
    800050f0:	02813023          	sd	s0,32(sp)
    800050f4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050f8:	00000613          	li	a2,0
    800050fc:	00000597          	auipc	a1,0x0
    80005100:	f2058593          	addi	a1,a1,-224 # 8000501c <_ZL11workerBodyAPv>
    80005104:	fd040513          	addi	a0,s0,-48
    80005108:	ffffc097          	auipc	ra,0xffffc
    8000510c:	1f4080e7          	jalr	500(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005110:	00004517          	auipc	a0,0x4
    80005114:	1a050513          	addi	a0,a0,416 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	958080e7          	jalr	-1704(ra) # 80005a70 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005120:	00000613          	li	a2,0
    80005124:	00000597          	auipc	a1,0x0
    80005128:	e2458593          	addi	a1,a1,-476 # 80004f48 <_ZL11workerBodyBPv>
    8000512c:	fd840513          	addi	a0,s0,-40
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	1cc080e7          	jalr	460(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	19050513          	addi	a0,a0,400 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	930080e7          	jalr	-1744(ra) # 80005a70 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005148:	00000613          	li	a2,0
    8000514c:	00000597          	auipc	a1,0x0
    80005150:	c7c58593          	addi	a1,a1,-900 # 80004dc8 <_ZL11workerBodyCPv>
    80005154:	fe040513          	addi	a0,s0,-32
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	1a4080e7          	jalr	420(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005160:	00004517          	auipc	a0,0x4
    80005164:	18050513          	addi	a0,a0,384 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	908080e7          	jalr	-1784(ra) # 80005a70 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005170:	00000613          	li	a2,0
    80005174:	00000597          	auipc	a1,0x0
    80005178:	b0c58593          	addi	a1,a1,-1268 # 80004c80 <_ZL11workerBodyDPv>
    8000517c:	fe840513          	addi	a0,s0,-24
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	17c080e7          	jalr	380(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005188:	00004517          	auipc	a0,0x4
    8000518c:	17050513          	addi	a0,a0,368 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005190:	00001097          	auipc	ra,0x1
    80005194:	8e0080e7          	jalr	-1824(ra) # 80005a70 <_Z11printStringPKc>
    80005198:	00c0006f          	j	800051a4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000519c:	ffffc097          	auipc	ra,0xffffc
    800051a0:	234080e7          	jalr	564(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800051a4:	00007797          	auipc	a5,0x7
    800051a8:	be77c783          	lbu	a5,-1049(a5) # 8000bd8b <_ZL9finishedA>
    800051ac:	fe0788e3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    800051b0:	00007797          	auipc	a5,0x7
    800051b4:	bda7c783          	lbu	a5,-1062(a5) # 8000bd8a <_ZL9finishedB>
    800051b8:	fe0782e3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    800051bc:	00007797          	auipc	a5,0x7
    800051c0:	bcd7c783          	lbu	a5,-1075(a5) # 8000bd89 <_ZL9finishedC>
    800051c4:	fc078ce3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    800051c8:	00007797          	auipc	a5,0x7
    800051cc:	bc07c783          	lbu	a5,-1088(a5) # 8000bd88 <_ZL9finishedD>
    800051d0:	fc0786e3          	beqz	a5,8000519c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800051d4:	02813083          	ld	ra,40(sp)
    800051d8:	02013403          	ld	s0,32(sp)
    800051dc:	03010113          	addi	sp,sp,48
    800051e0:	00008067          	ret

00000000800051e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800051e4:	fd010113          	addi	sp,sp,-48
    800051e8:	02113423          	sd	ra,40(sp)
    800051ec:	02813023          	sd	s0,32(sp)
    800051f0:	00913c23          	sd	s1,24(sp)
    800051f4:	01213823          	sd	s2,16(sp)
    800051f8:	01313423          	sd	s3,8(sp)
    800051fc:	03010413          	addi	s0,sp,48
    80005200:	00050993          	mv	s3,a0
    80005204:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005208:	00000913          	li	s2,0
    8000520c:	00c0006f          	j	80005218 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005210:	ffffd097          	auipc	ra,0xffffd
    80005214:	0e0080e7          	jalr	224(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005218:	ffffc097          	auipc	ra,0xffffc
    8000521c:	418080e7          	jalr	1048(ra) # 80001630 <_Z4getcv>
    80005220:	0005059b          	sext.w	a1,a0
    80005224:	01b00793          	li	a5,27
    80005228:	02f58a63          	beq	a1,a5,8000525c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000522c:	0084b503          	ld	a0,8(s1)
    80005230:	00001097          	auipc	ra,0x1
    80005234:	c64080e7          	jalr	-924(ra) # 80005e94 <_ZN9BufferCPP3putEi>
        i++;
    80005238:	0019071b          	addiw	a4,s2,1
    8000523c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005240:	0004a683          	lw	a3,0(s1)
    80005244:	0026979b          	slliw	a5,a3,0x2
    80005248:	00d787bb          	addw	a5,a5,a3
    8000524c:	0017979b          	slliw	a5,a5,0x1
    80005250:	02f767bb          	remw	a5,a4,a5
    80005254:	fc0792e3          	bnez	a5,80005218 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005258:	fb9ff06f          	j	80005210 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000525c:	00100793          	li	a5,1
    80005260:	00007717          	auipc	a4,0x7
    80005264:	b2f72823          	sw	a5,-1232(a4) # 8000bd90 <_ZL9threadEnd>
    td->buffer->put('!');
    80005268:	0209b783          	ld	a5,32(s3)
    8000526c:	02100593          	li	a1,33
    80005270:	0087b503          	ld	a0,8(a5)
    80005274:	00001097          	auipc	ra,0x1
    80005278:	c20080e7          	jalr	-992(ra) # 80005e94 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000527c:	0104b503          	ld	a0,16(s1)
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	16c080e7          	jalr	364(ra) # 800023ec <_ZN9Semaphore6signalEv>
}
    80005288:	02813083          	ld	ra,40(sp)
    8000528c:	02013403          	ld	s0,32(sp)
    80005290:	01813483          	ld	s1,24(sp)
    80005294:	01013903          	ld	s2,16(sp)
    80005298:	00813983          	ld	s3,8(sp)
    8000529c:	03010113          	addi	sp,sp,48
    800052a0:	00008067          	ret

00000000800052a4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800052a4:	fe010113          	addi	sp,sp,-32
    800052a8:	00113c23          	sd	ra,24(sp)
    800052ac:	00813823          	sd	s0,16(sp)
    800052b0:	00913423          	sd	s1,8(sp)
    800052b4:	01213023          	sd	s2,0(sp)
    800052b8:	02010413          	addi	s0,sp,32
    800052bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800052c0:	00000913          	li	s2,0
    800052c4:	00c0006f          	j	800052d0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	028080e7          	jalr	40(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800052d0:	00007797          	auipc	a5,0x7
    800052d4:	ac07a783          	lw	a5,-1344(a5) # 8000bd90 <_ZL9threadEnd>
    800052d8:	02079e63          	bnez	a5,80005314 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800052dc:	0004a583          	lw	a1,0(s1)
    800052e0:	0305859b          	addiw	a1,a1,48
    800052e4:	0084b503          	ld	a0,8(s1)
    800052e8:	00001097          	auipc	ra,0x1
    800052ec:	bac080e7          	jalr	-1108(ra) # 80005e94 <_ZN9BufferCPP3putEi>
        i++;
    800052f0:	0019071b          	addiw	a4,s2,1
    800052f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800052f8:	0004a683          	lw	a3,0(s1)
    800052fc:	0026979b          	slliw	a5,a3,0x2
    80005300:	00d787bb          	addw	a5,a5,a3
    80005304:	0017979b          	slliw	a5,a5,0x1
    80005308:	02f767bb          	remw	a5,a4,a5
    8000530c:	fc0792e3          	bnez	a5,800052d0 <_ZN12ProducerSync8producerEPv+0x2c>
    80005310:	fb9ff06f          	j	800052c8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005314:	0104b503          	ld	a0,16(s1)
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	0d4080e7          	jalr	212(ra) # 800023ec <_ZN9Semaphore6signalEv>
}
    80005320:	01813083          	ld	ra,24(sp)
    80005324:	01013403          	ld	s0,16(sp)
    80005328:	00813483          	ld	s1,8(sp)
    8000532c:	00013903          	ld	s2,0(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret

0000000080005338 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005338:	fd010113          	addi	sp,sp,-48
    8000533c:	02113423          	sd	ra,40(sp)
    80005340:	02813023          	sd	s0,32(sp)
    80005344:	00913c23          	sd	s1,24(sp)
    80005348:	01213823          	sd	s2,16(sp)
    8000534c:	01313423          	sd	s3,8(sp)
    80005350:	01413023          	sd	s4,0(sp)
    80005354:	03010413          	addi	s0,sp,48
    80005358:	00050993          	mv	s3,a0
    8000535c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005360:	00000a13          	li	s4,0
    80005364:	01c0006f          	j	80005380 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005368:	ffffd097          	auipc	ra,0xffffd
    8000536c:	f88080e7          	jalr	-120(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    80005370:	0500006f          	j	800053c0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005374:	00a00513          	li	a0,10
    80005378:	ffffc097          	auipc	ra,0xffffc
    8000537c:	304080e7          	jalr	772(ra) # 8000167c <_Z4putcc>
    while (!threadEnd) {
    80005380:	00007797          	auipc	a5,0x7
    80005384:	a107a783          	lw	a5,-1520(a5) # 8000bd90 <_ZL9threadEnd>
    80005388:	06079263          	bnez	a5,800053ec <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000538c:	00893503          	ld	a0,8(s2)
    80005390:	00001097          	auipc	ra,0x1
    80005394:	b94080e7          	jalr	-1132(ra) # 80005f24 <_ZN9BufferCPP3getEv>
        i++;
    80005398:	001a049b          	addiw	s1,s4,1
    8000539c:	00048a1b          	sext.w	s4,s1
        putc(key);
    800053a0:	0ff57513          	andi	a0,a0,255
    800053a4:	ffffc097          	auipc	ra,0xffffc
    800053a8:	2d8080e7          	jalr	728(ra) # 8000167c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800053ac:	00092703          	lw	a4,0(s2)
    800053b0:	0027179b          	slliw	a5,a4,0x2
    800053b4:	00e787bb          	addw	a5,a5,a4
    800053b8:	02f4e7bb          	remw	a5,s1,a5
    800053bc:	fa0786e3          	beqz	a5,80005368 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800053c0:	05000793          	li	a5,80
    800053c4:	02f4e4bb          	remw	s1,s1,a5
    800053c8:	fa049ce3          	bnez	s1,80005380 <_ZN12ConsumerSync8consumerEPv+0x48>
    800053cc:	fa9ff06f          	j	80005374 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800053d0:	0209b783          	ld	a5,32(s3)
    800053d4:	0087b503          	ld	a0,8(a5)
    800053d8:	00001097          	auipc	ra,0x1
    800053dc:	b4c080e7          	jalr	-1204(ra) # 80005f24 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800053e0:	0ff57513          	andi	a0,a0,255
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	0b4080e7          	jalr	180(ra) # 80002498 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800053ec:	0209b783          	ld	a5,32(s3)
    800053f0:	0087b503          	ld	a0,8(a5)
    800053f4:	00001097          	auipc	ra,0x1
    800053f8:	bbc080e7          	jalr	-1092(ra) # 80005fb0 <_ZN9BufferCPP6getCntEv>
    800053fc:	fca04ae3          	bgtz	a0,800053d0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005400:	01093503          	ld	a0,16(s2)
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	fe8080e7          	jalr	-24(ra) # 800023ec <_ZN9Semaphore6signalEv>
}
    8000540c:	02813083          	ld	ra,40(sp)
    80005410:	02013403          	ld	s0,32(sp)
    80005414:	01813483          	ld	s1,24(sp)
    80005418:	01013903          	ld	s2,16(sp)
    8000541c:	00813983          	ld	s3,8(sp)
    80005420:	00013a03          	ld	s4,0(sp)
    80005424:	03010113          	addi	sp,sp,48
    80005428:	00008067          	ret

000000008000542c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000542c:	f8010113          	addi	sp,sp,-128
    80005430:	06113c23          	sd	ra,120(sp)
    80005434:	06813823          	sd	s0,112(sp)
    80005438:	06913423          	sd	s1,104(sp)
    8000543c:	07213023          	sd	s2,96(sp)
    80005440:	05313c23          	sd	s3,88(sp)
    80005444:	05413823          	sd	s4,80(sp)
    80005448:	05513423          	sd	s5,72(sp)
    8000544c:	05613023          	sd	s6,64(sp)
    80005450:	03713c23          	sd	s7,56(sp)
    80005454:	03813823          	sd	s8,48(sp)
    80005458:	03913423          	sd	s9,40(sp)
    8000545c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005460:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005464:	00004517          	auipc	a0,0x4
    80005468:	ccc50513          	addi	a0,a0,-820 # 80009130 <CONSOLE_STATUS+0x120>
    8000546c:	00000097          	auipc	ra,0x0
    80005470:	604080e7          	jalr	1540(ra) # 80005a70 <_Z11printStringPKc>
    getString(input, 30);
    80005474:	01e00593          	li	a1,30
    80005478:	f8040493          	addi	s1,s0,-128
    8000547c:	00048513          	mv	a0,s1
    80005480:	00000097          	auipc	ra,0x0
    80005484:	678080e7          	jalr	1656(ra) # 80005af8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005488:	00048513          	mv	a0,s1
    8000548c:	00000097          	auipc	ra,0x0
    80005490:	744080e7          	jalr	1860(ra) # 80005bd0 <_Z11stringToIntPKc>
    80005494:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	cb850513          	addi	a0,a0,-840 # 80009150 <CONSOLE_STATUS+0x140>
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	5d0080e7          	jalr	1488(ra) # 80005a70 <_Z11printStringPKc>
    getString(input, 30);
    800054a8:	01e00593          	li	a1,30
    800054ac:	00048513          	mv	a0,s1
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	648080e7          	jalr	1608(ra) # 80005af8 <_Z9getStringPci>
    n = stringToInt(input);
    800054b8:	00048513          	mv	a0,s1
    800054bc:	00000097          	auipc	ra,0x0
    800054c0:	714080e7          	jalr	1812(ra) # 80005bd0 <_Z11stringToIntPKc>
    800054c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054c8:	00004517          	auipc	a0,0x4
    800054cc:	ca850513          	addi	a0,a0,-856 # 80009170 <CONSOLE_STATUS+0x160>
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	5a0080e7          	jalr	1440(ra) # 80005a70 <_Z11printStringPKc>
    800054d8:	00000613          	li	a2,0
    800054dc:	00a00593          	li	a1,10
    800054e0:	00090513          	mv	a0,s2
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	73c080e7          	jalr	1852(ra) # 80005c20 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800054ec:	00004517          	auipc	a0,0x4
    800054f0:	c9c50513          	addi	a0,a0,-868 # 80009188 <CONSOLE_STATUS+0x178>
    800054f4:	00000097          	auipc	ra,0x0
    800054f8:	57c080e7          	jalr	1404(ra) # 80005a70 <_Z11printStringPKc>
    800054fc:	00000613          	li	a2,0
    80005500:	00a00593          	li	a1,10
    80005504:	00048513          	mv	a0,s1
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	718080e7          	jalr	1816(ra) # 80005c20 <_Z8printIntiii>
    printString(".\n");
    80005510:	00004517          	auipc	a0,0x4
    80005514:	c9050513          	addi	a0,a0,-880 # 800091a0 <CONSOLE_STATUS+0x190>
    80005518:	00000097          	auipc	ra,0x0
    8000551c:	558080e7          	jalr	1368(ra) # 80005a70 <_Z11printStringPKc>
    if(threadNum > n) {
    80005520:	0324c463          	blt	s1,s2,80005548 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005524:	03205c63          	blez	s2,8000555c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005528:	03800513          	li	a0,56
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	c0c080e7          	jalr	-1012(ra) # 80002138 <_Znwm>
    80005534:	00050a93          	mv	s5,a0
    80005538:	00048593          	mv	a1,s1
    8000553c:	00001097          	auipc	ra,0x1
    80005540:	804080e7          	jalr	-2044(ra) # 80005d40 <_ZN9BufferCPPC1Ei>
    80005544:	0300006f          	j	80005574 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005548:	00004517          	auipc	a0,0x4
    8000554c:	c6050513          	addi	a0,a0,-928 # 800091a8 <CONSOLE_STATUS+0x198>
    80005550:	00000097          	auipc	ra,0x0
    80005554:	520080e7          	jalr	1312(ra) # 80005a70 <_Z11printStringPKc>
        return;
    80005558:	0140006f          	j	8000556c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000555c:	00004517          	auipc	a0,0x4
    80005560:	c8c50513          	addi	a0,a0,-884 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80005564:	00000097          	auipc	ra,0x0
    80005568:	50c080e7          	jalr	1292(ra) # 80005a70 <_Z11printStringPKc>
        return;
    8000556c:	000b8113          	mv	sp,s7
    80005570:	2380006f          	j	800057a8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005574:	01000513          	li	a0,16
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	bc0080e7          	jalr	-1088(ra) # 80002138 <_Znwm>
    80005580:	00050493          	mv	s1,a0
    80005584:	00000593          	li	a1,0
    80005588:	ffffd097          	auipc	ra,0xffffd
    8000558c:	dfc080e7          	jalr	-516(ra) # 80002384 <_ZN9SemaphoreC1Ej>
    80005590:	00007797          	auipc	a5,0x7
    80005594:	8097b423          	sd	s1,-2040(a5) # 8000bd98 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005598:	00391793          	slli	a5,s2,0x3
    8000559c:	00f78793          	addi	a5,a5,15
    800055a0:	ff07f793          	andi	a5,a5,-16
    800055a4:	40f10133          	sub	sp,sp,a5
    800055a8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800055ac:	0019071b          	addiw	a4,s2,1
    800055b0:	00171793          	slli	a5,a4,0x1
    800055b4:	00e787b3          	add	a5,a5,a4
    800055b8:	00379793          	slli	a5,a5,0x3
    800055bc:	00f78793          	addi	a5,a5,15
    800055c0:	ff07f793          	andi	a5,a5,-16
    800055c4:	40f10133          	sub	sp,sp,a5
    800055c8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800055cc:	00191c13          	slli	s8,s2,0x1
    800055d0:	012c07b3          	add	a5,s8,s2
    800055d4:	00379793          	slli	a5,a5,0x3
    800055d8:	00fa07b3          	add	a5,s4,a5
    800055dc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800055e0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800055e4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800055e8:	02800513          	li	a0,40
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	b4c080e7          	jalr	-1204(ra) # 80002138 <_Znwm>
    800055f4:	00050b13          	mv	s6,a0
    800055f8:	012c0c33          	add	s8,s8,s2
    800055fc:	003c1c13          	slli	s8,s8,0x3
    80005600:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	d48080e7          	jalr	-696(ra) # 8000234c <_ZN6ThreadC1Ev>
    8000560c:	00006797          	auipc	a5,0x6
    80005610:	5ec78793          	addi	a5,a5,1516 # 8000bbf8 <_ZTV12ConsumerSync+0x10>
    80005614:	00fb3023          	sd	a5,0(s6)
    80005618:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000561c:	000b0513          	mv	a0,s6
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	cf8080e7          	jalr	-776(ra) # 80002318 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005628:	00000493          	li	s1,0
    8000562c:	0380006f          	j	80005664 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005630:	00006797          	auipc	a5,0x6
    80005634:	5a078793          	addi	a5,a5,1440 # 8000bbd0 <_ZTV12ProducerSync+0x10>
    80005638:	00fcb023          	sd	a5,0(s9)
    8000563c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005640:	00349793          	slli	a5,s1,0x3
    80005644:	00f987b3          	add	a5,s3,a5
    80005648:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000564c:	00349793          	slli	a5,s1,0x3
    80005650:	00f987b3          	add	a5,s3,a5
    80005654:	0007b503          	ld	a0,0(a5)
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	cc0080e7          	jalr	-832(ra) # 80002318 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005660:	0014849b          	addiw	s1,s1,1
    80005664:	0b24d063          	bge	s1,s2,80005704 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005668:	00149793          	slli	a5,s1,0x1
    8000566c:	009787b3          	add	a5,a5,s1
    80005670:	00379793          	slli	a5,a5,0x3
    80005674:	00fa07b3          	add	a5,s4,a5
    80005678:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000567c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005680:	00006717          	auipc	a4,0x6
    80005684:	71873703          	ld	a4,1816(a4) # 8000bd98 <_ZL10waitForAll>
    80005688:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000568c:	02905863          	blez	s1,800056bc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005690:	02800513          	li	a0,40
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	aa4080e7          	jalr	-1372(ra) # 80002138 <_Znwm>
    8000569c:	00050c93          	mv	s9,a0
    800056a0:	00149c13          	slli	s8,s1,0x1
    800056a4:	009c0c33          	add	s8,s8,s1
    800056a8:	003c1c13          	slli	s8,s8,0x3
    800056ac:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	c9c080e7          	jalr	-868(ra) # 8000234c <_ZN6ThreadC1Ev>
    800056b8:	f79ff06f          	j	80005630 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800056bc:	02800513          	li	a0,40
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	a78080e7          	jalr	-1416(ra) # 80002138 <_Znwm>
    800056c8:	00050c93          	mv	s9,a0
    800056cc:	00149c13          	slli	s8,s1,0x1
    800056d0:	009c0c33          	add	s8,s8,s1
    800056d4:	003c1c13          	slli	s8,s8,0x3
    800056d8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	c70080e7          	jalr	-912(ra) # 8000234c <_ZN6ThreadC1Ev>
    800056e4:	00006797          	auipc	a5,0x6
    800056e8:	4c478793          	addi	a5,a5,1220 # 8000bba8 <_ZTV16ProducerKeyboard+0x10>
    800056ec:	00fcb023          	sd	a5,0(s9)
    800056f0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800056f4:	00349793          	slli	a5,s1,0x3
    800056f8:	00f987b3          	add	a5,s3,a5
    800056fc:	0197b023          	sd	s9,0(a5)
    80005700:	f4dff06f          	j	8000564c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005704:	ffffd097          	auipc	ra,0xffffd
    80005708:	bec080e7          	jalr	-1044(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000570c:	00000493          	li	s1,0
    80005710:	00994e63          	blt	s2,s1,8000572c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005714:	00006517          	auipc	a0,0x6
    80005718:	68453503          	ld	a0,1668(a0) # 8000bd98 <_ZL10waitForAll>
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	ca4080e7          	jalr	-860(ra) # 800023c0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005724:	0014849b          	addiw	s1,s1,1
    80005728:	fe9ff06f          	j	80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000572c:	00000493          	li	s1,0
    80005730:	0080006f          	j	80005738 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005734:	0014849b          	addiw	s1,s1,1
    80005738:	0324d263          	bge	s1,s2,8000575c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000573c:	00349793          	slli	a5,s1,0x3
    80005740:	00f987b3          	add	a5,s3,a5
    80005744:	0007b503          	ld	a0,0(a5)
    80005748:	fe0506e3          	beqz	a0,80005734 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000574c:	00053783          	ld	a5,0(a0)
    80005750:	0087b783          	ld	a5,8(a5)
    80005754:	000780e7          	jalr	a5
    80005758:	fddff06f          	j	80005734 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000575c:	000b0a63          	beqz	s6,80005770 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005760:	000b3783          	ld	a5,0(s6)
    80005764:	0087b783          	ld	a5,8(a5)
    80005768:	000b0513          	mv	a0,s6
    8000576c:	000780e7          	jalr	a5
    delete waitForAll;
    80005770:	00006517          	auipc	a0,0x6
    80005774:	62853503          	ld	a0,1576(a0) # 8000bd98 <_ZL10waitForAll>
    80005778:	00050863          	beqz	a0,80005788 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000577c:	00053783          	ld	a5,0(a0)
    80005780:	0087b783          	ld	a5,8(a5)
    80005784:	000780e7          	jalr	a5
    delete buffer;
    80005788:	000a8e63          	beqz	s5,800057a4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000578c:	000a8513          	mv	a0,s5
    80005790:	00001097          	auipc	ra,0x1
    80005794:	8a8080e7          	jalr	-1880(ra) # 80006038 <_ZN9BufferCPPD1Ev>
    80005798:	000a8513          	mv	a0,s5
    8000579c:	ffffd097          	auipc	ra,0xffffd
    800057a0:	a14080e7          	jalr	-1516(ra) # 800021b0 <_ZdlPv>
    800057a4:	000b8113          	mv	sp,s7

}
    800057a8:	f8040113          	addi	sp,s0,-128
    800057ac:	07813083          	ld	ra,120(sp)
    800057b0:	07013403          	ld	s0,112(sp)
    800057b4:	06813483          	ld	s1,104(sp)
    800057b8:	06013903          	ld	s2,96(sp)
    800057bc:	05813983          	ld	s3,88(sp)
    800057c0:	05013a03          	ld	s4,80(sp)
    800057c4:	04813a83          	ld	s5,72(sp)
    800057c8:	04013b03          	ld	s6,64(sp)
    800057cc:	03813b83          	ld	s7,56(sp)
    800057d0:	03013c03          	ld	s8,48(sp)
    800057d4:	02813c83          	ld	s9,40(sp)
    800057d8:	08010113          	addi	sp,sp,128
    800057dc:	00008067          	ret
    800057e0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800057e4:	000a8513          	mv	a0,s5
    800057e8:	ffffd097          	auipc	ra,0xffffd
    800057ec:	9c8080e7          	jalr	-1592(ra) # 800021b0 <_ZdlPv>
    800057f0:	00048513          	mv	a0,s1
    800057f4:	00007097          	auipc	ra,0x7
    800057f8:	684080e7          	jalr	1668(ra) # 8000ce78 <_Unwind_Resume>
    800057fc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005800:	00048513          	mv	a0,s1
    80005804:	ffffd097          	auipc	ra,0xffffd
    80005808:	9ac080e7          	jalr	-1620(ra) # 800021b0 <_ZdlPv>
    8000580c:	00090513          	mv	a0,s2
    80005810:	00007097          	auipc	ra,0x7
    80005814:	668080e7          	jalr	1640(ra) # 8000ce78 <_Unwind_Resume>
    80005818:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000581c:	000b0513          	mv	a0,s6
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	990080e7          	jalr	-1648(ra) # 800021b0 <_ZdlPv>
    80005828:	00048513          	mv	a0,s1
    8000582c:	00007097          	auipc	ra,0x7
    80005830:	64c080e7          	jalr	1612(ra) # 8000ce78 <_Unwind_Resume>
    80005834:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005838:	000c8513          	mv	a0,s9
    8000583c:	ffffd097          	auipc	ra,0xffffd
    80005840:	974080e7          	jalr	-1676(ra) # 800021b0 <_ZdlPv>
    80005844:	00048513          	mv	a0,s1
    80005848:	00007097          	auipc	ra,0x7
    8000584c:	630080e7          	jalr	1584(ra) # 8000ce78 <_Unwind_Resume>
    80005850:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005854:	000c8513          	mv	a0,s9
    80005858:	ffffd097          	auipc	ra,0xffffd
    8000585c:	958080e7          	jalr	-1704(ra) # 800021b0 <_ZdlPv>
    80005860:	00048513          	mv	a0,s1
    80005864:	00007097          	auipc	ra,0x7
    80005868:	614080e7          	jalr	1556(ra) # 8000ce78 <_Unwind_Resume>

000000008000586c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000586c:	ff010113          	addi	sp,sp,-16
    80005870:	00113423          	sd	ra,8(sp)
    80005874:	00813023          	sd	s0,0(sp)
    80005878:	01010413          	addi	s0,sp,16
    8000587c:	00006797          	auipc	a5,0x6
    80005880:	37c78793          	addi	a5,a5,892 # 8000bbf8 <_ZTV12ConsumerSync+0x10>
    80005884:	00f53023          	sd	a5,0(a0)
    80005888:	ffffd097          	auipc	ra,0xffffd
    8000588c:	950080e7          	jalr	-1712(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80005890:	00813083          	ld	ra,8(sp)
    80005894:	00013403          	ld	s0,0(sp)
    80005898:	01010113          	addi	sp,sp,16
    8000589c:	00008067          	ret

00000000800058a0 <_ZN12ConsumerSyncD0Ev>:
    800058a0:	fe010113          	addi	sp,sp,-32
    800058a4:	00113c23          	sd	ra,24(sp)
    800058a8:	00813823          	sd	s0,16(sp)
    800058ac:	00913423          	sd	s1,8(sp)
    800058b0:	02010413          	addi	s0,sp,32
    800058b4:	00050493          	mv	s1,a0
    800058b8:	00006797          	auipc	a5,0x6
    800058bc:	34078793          	addi	a5,a5,832 # 8000bbf8 <_ZTV12ConsumerSync+0x10>
    800058c0:	00f53023          	sd	a5,0(a0)
    800058c4:	ffffd097          	auipc	ra,0xffffd
    800058c8:	914080e7          	jalr	-1772(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800058cc:	00048513          	mv	a0,s1
    800058d0:	ffffd097          	auipc	ra,0xffffd
    800058d4:	8e0080e7          	jalr	-1824(ra) # 800021b0 <_ZdlPv>
    800058d8:	01813083          	ld	ra,24(sp)
    800058dc:	01013403          	ld	s0,16(sp)
    800058e0:	00813483          	ld	s1,8(sp)
    800058e4:	02010113          	addi	sp,sp,32
    800058e8:	00008067          	ret

00000000800058ec <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800058ec:	ff010113          	addi	sp,sp,-16
    800058f0:	00113423          	sd	ra,8(sp)
    800058f4:	00813023          	sd	s0,0(sp)
    800058f8:	01010413          	addi	s0,sp,16
    800058fc:	00006797          	auipc	a5,0x6
    80005900:	2d478793          	addi	a5,a5,724 # 8000bbd0 <_ZTV12ProducerSync+0x10>
    80005904:	00f53023          	sd	a5,0(a0)
    80005908:	ffffd097          	auipc	ra,0xffffd
    8000590c:	8d0080e7          	jalr	-1840(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80005910:	00813083          	ld	ra,8(sp)
    80005914:	00013403          	ld	s0,0(sp)
    80005918:	01010113          	addi	sp,sp,16
    8000591c:	00008067          	ret

0000000080005920 <_ZN12ProducerSyncD0Ev>:
    80005920:	fe010113          	addi	sp,sp,-32
    80005924:	00113c23          	sd	ra,24(sp)
    80005928:	00813823          	sd	s0,16(sp)
    8000592c:	00913423          	sd	s1,8(sp)
    80005930:	02010413          	addi	s0,sp,32
    80005934:	00050493          	mv	s1,a0
    80005938:	00006797          	auipc	a5,0x6
    8000593c:	29878793          	addi	a5,a5,664 # 8000bbd0 <_ZTV12ProducerSync+0x10>
    80005940:	00f53023          	sd	a5,0(a0)
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	894080e7          	jalr	-1900(ra) # 800021d8 <_ZN6ThreadD1Ev>
    8000594c:	00048513          	mv	a0,s1
    80005950:	ffffd097          	auipc	ra,0xffffd
    80005954:	860080e7          	jalr	-1952(ra) # 800021b0 <_ZdlPv>
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	02010113          	addi	sp,sp,32
    80005968:	00008067          	ret

000000008000596c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000596c:	ff010113          	addi	sp,sp,-16
    80005970:	00113423          	sd	ra,8(sp)
    80005974:	00813023          	sd	s0,0(sp)
    80005978:	01010413          	addi	s0,sp,16
    8000597c:	00006797          	auipc	a5,0x6
    80005980:	22c78793          	addi	a5,a5,556 # 8000bba8 <_ZTV16ProducerKeyboard+0x10>
    80005984:	00f53023          	sd	a5,0(a0)
    80005988:	ffffd097          	auipc	ra,0xffffd
    8000598c:	850080e7          	jalr	-1968(ra) # 800021d8 <_ZN6ThreadD1Ev>
    80005990:	00813083          	ld	ra,8(sp)
    80005994:	00013403          	ld	s0,0(sp)
    80005998:	01010113          	addi	sp,sp,16
    8000599c:	00008067          	ret

00000000800059a0 <_ZN16ProducerKeyboardD0Ev>:
    800059a0:	fe010113          	addi	sp,sp,-32
    800059a4:	00113c23          	sd	ra,24(sp)
    800059a8:	00813823          	sd	s0,16(sp)
    800059ac:	00913423          	sd	s1,8(sp)
    800059b0:	02010413          	addi	s0,sp,32
    800059b4:	00050493          	mv	s1,a0
    800059b8:	00006797          	auipc	a5,0x6
    800059bc:	1f078793          	addi	a5,a5,496 # 8000bba8 <_ZTV16ProducerKeyboard+0x10>
    800059c0:	00f53023          	sd	a5,0(a0)
    800059c4:	ffffd097          	auipc	ra,0xffffd
    800059c8:	814080e7          	jalr	-2028(ra) # 800021d8 <_ZN6ThreadD1Ev>
    800059cc:	00048513          	mv	a0,s1
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	7e0080e7          	jalr	2016(ra) # 800021b0 <_ZdlPv>
    800059d8:	01813083          	ld	ra,24(sp)
    800059dc:	01013403          	ld	s0,16(sp)
    800059e0:	00813483          	ld	s1,8(sp)
    800059e4:	02010113          	addi	sp,sp,32
    800059e8:	00008067          	ret

00000000800059ec <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800059ec:	ff010113          	addi	sp,sp,-16
    800059f0:	00113423          	sd	ra,8(sp)
    800059f4:	00813023          	sd	s0,0(sp)
    800059f8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800059fc:	02053583          	ld	a1,32(a0)
    80005a00:	fffff097          	auipc	ra,0xfffff
    80005a04:	7e4080e7          	jalr	2020(ra) # 800051e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005a08:	00813083          	ld	ra,8(sp)
    80005a0c:	00013403          	ld	s0,0(sp)
    80005a10:	01010113          	addi	sp,sp,16
    80005a14:	00008067          	ret

0000000080005a18 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005a18:	ff010113          	addi	sp,sp,-16
    80005a1c:	00113423          	sd	ra,8(sp)
    80005a20:	00813023          	sd	s0,0(sp)
    80005a24:	01010413          	addi	s0,sp,16
        producer(td);
    80005a28:	02053583          	ld	a1,32(a0)
    80005a2c:	00000097          	auipc	ra,0x0
    80005a30:	878080e7          	jalr	-1928(ra) # 800052a4 <_ZN12ProducerSync8producerEPv>
    }
    80005a34:	00813083          	ld	ra,8(sp)
    80005a38:	00013403          	ld	s0,0(sp)
    80005a3c:	01010113          	addi	sp,sp,16
    80005a40:	00008067          	ret

0000000080005a44 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a44:	ff010113          	addi	sp,sp,-16
    80005a48:	00113423          	sd	ra,8(sp)
    80005a4c:	00813023          	sd	s0,0(sp)
    80005a50:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a54:	02053583          	ld	a1,32(a0)
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	8e0080e7          	jalr	-1824(ra) # 80005338 <_ZN12ConsumerSync8consumerEPv>
    }
    80005a60:	00813083          	ld	ra,8(sp)
    80005a64:	00013403          	ld	s0,0(sp)
    80005a68:	01010113          	addi	sp,sp,16
    80005a6c:	00008067          	ret

0000000080005a70 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005a70:	fe010113          	addi	sp,sp,-32
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	00813823          	sd	s0,16(sp)
    80005a7c:	00913423          	sd	s1,8(sp)
    80005a80:	02010413          	addi	s0,sp,32
    80005a84:	00050493          	mv	s1,a0
    LOCK();
    80005a88:	00100613          	li	a2,1
    80005a8c:	00000593          	li	a1,0
    80005a90:	00006517          	auipc	a0,0x6
    80005a94:	31050513          	addi	a0,a0,784 # 8000bda0 <lockPrint>
    80005a98:	ffffb097          	auipc	ra,0xffffb
    80005a9c:	78c080e7          	jalr	1932(ra) # 80001224 <copy_and_swap>
    80005aa0:	00050863          	beqz	a0,80005ab0 <_Z11printStringPKc+0x40>
    80005aa4:	ffffc097          	auipc	ra,0xffffc
    80005aa8:	92c080e7          	jalr	-1748(ra) # 800013d0 <_Z15thread_dispatchv>
    80005aac:	fddff06f          	j	80005a88 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ab0:	0004c503          	lbu	a0,0(s1)
    80005ab4:	00050a63          	beqz	a0,80005ac8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	bc4080e7          	jalr	-1084(ra) # 8000167c <_Z4putcc>
        string++;
    80005ac0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ac4:	fedff06f          	j	80005ab0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005ac8:	00000613          	li	a2,0
    80005acc:	00100593          	li	a1,1
    80005ad0:	00006517          	auipc	a0,0x6
    80005ad4:	2d050513          	addi	a0,a0,720 # 8000bda0 <lockPrint>
    80005ad8:	ffffb097          	auipc	ra,0xffffb
    80005adc:	74c080e7          	jalr	1868(ra) # 80001224 <copy_and_swap>
    80005ae0:	fe0514e3          	bnez	a0,80005ac8 <_Z11printStringPKc+0x58>
}
    80005ae4:	01813083          	ld	ra,24(sp)
    80005ae8:	01013403          	ld	s0,16(sp)
    80005aec:	00813483          	ld	s1,8(sp)
    80005af0:	02010113          	addi	sp,sp,32
    80005af4:	00008067          	ret

0000000080005af8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005af8:	fd010113          	addi	sp,sp,-48
    80005afc:	02113423          	sd	ra,40(sp)
    80005b00:	02813023          	sd	s0,32(sp)
    80005b04:	00913c23          	sd	s1,24(sp)
    80005b08:	01213823          	sd	s2,16(sp)
    80005b0c:	01313423          	sd	s3,8(sp)
    80005b10:	01413023          	sd	s4,0(sp)
    80005b14:	03010413          	addi	s0,sp,48
    80005b18:	00050993          	mv	s3,a0
    80005b1c:	00058a13          	mv	s4,a1
    LOCK();
    80005b20:	00100613          	li	a2,1
    80005b24:	00000593          	li	a1,0
    80005b28:	00006517          	auipc	a0,0x6
    80005b2c:	27850513          	addi	a0,a0,632 # 8000bda0 <lockPrint>
    80005b30:	ffffb097          	auipc	ra,0xffffb
    80005b34:	6f4080e7          	jalr	1780(ra) # 80001224 <copy_and_swap>
    80005b38:	00050863          	beqz	a0,80005b48 <_Z9getStringPci+0x50>
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	894080e7          	jalr	-1900(ra) # 800013d0 <_Z15thread_dispatchv>
    80005b44:	fddff06f          	j	80005b20 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b48:	00000913          	li	s2,0
    80005b4c:	00090493          	mv	s1,s2
    80005b50:	0019091b          	addiw	s2,s2,1
    80005b54:	03495a63          	bge	s2,s4,80005b88 <_Z9getStringPci+0x90>
        cc = getc();
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	ad8080e7          	jalr	-1320(ra) # 80001630 <_Z4getcv>
        if(cc < 1)
    80005b60:	02050463          	beqz	a0,80005b88 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b64:	009984b3          	add	s1,s3,s1
    80005b68:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b6c:	00a00793          	li	a5,10
    80005b70:	00f50a63          	beq	a0,a5,80005b84 <_Z9getStringPci+0x8c>
    80005b74:	00d00793          	li	a5,13
    80005b78:	fcf51ae3          	bne	a0,a5,80005b4c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005b7c:	00090493          	mv	s1,s2
    80005b80:	0080006f          	j	80005b88 <_Z9getStringPci+0x90>
    80005b84:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005b88:	009984b3          	add	s1,s3,s1
    80005b8c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005b90:	00000613          	li	a2,0
    80005b94:	00100593          	li	a1,1
    80005b98:	00006517          	auipc	a0,0x6
    80005b9c:	20850513          	addi	a0,a0,520 # 8000bda0 <lockPrint>
    80005ba0:	ffffb097          	auipc	ra,0xffffb
    80005ba4:	684080e7          	jalr	1668(ra) # 80001224 <copy_and_swap>
    80005ba8:	fe0514e3          	bnez	a0,80005b90 <_Z9getStringPci+0x98>
    return buf;
}
    80005bac:	00098513          	mv	a0,s3
    80005bb0:	02813083          	ld	ra,40(sp)
    80005bb4:	02013403          	ld	s0,32(sp)
    80005bb8:	01813483          	ld	s1,24(sp)
    80005bbc:	01013903          	ld	s2,16(sp)
    80005bc0:	00813983          	ld	s3,8(sp)
    80005bc4:	00013a03          	ld	s4,0(sp)
    80005bc8:	03010113          	addi	sp,sp,48
    80005bcc:	00008067          	ret

0000000080005bd0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005bd0:	ff010113          	addi	sp,sp,-16
    80005bd4:	00813423          	sd	s0,8(sp)
    80005bd8:	01010413          	addi	s0,sp,16
    80005bdc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005be0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005be4:	0006c603          	lbu	a2,0(a3)
    80005be8:	fd06071b          	addiw	a4,a2,-48
    80005bec:	0ff77713          	andi	a4,a4,255
    80005bf0:	00900793          	li	a5,9
    80005bf4:	02e7e063          	bltu	a5,a4,80005c14 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005bf8:	0025179b          	slliw	a5,a0,0x2
    80005bfc:	00a787bb          	addw	a5,a5,a0
    80005c00:	0017979b          	slliw	a5,a5,0x1
    80005c04:	00168693          	addi	a3,a3,1
    80005c08:	00c787bb          	addw	a5,a5,a2
    80005c0c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005c10:	fd5ff06f          	j	80005be4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005c14:	00813403          	ld	s0,8(sp)
    80005c18:	01010113          	addi	sp,sp,16
    80005c1c:	00008067          	ret

0000000080005c20 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005c20:	fc010113          	addi	sp,sp,-64
    80005c24:	02113c23          	sd	ra,56(sp)
    80005c28:	02813823          	sd	s0,48(sp)
    80005c2c:	02913423          	sd	s1,40(sp)
    80005c30:	03213023          	sd	s2,32(sp)
    80005c34:	01313c23          	sd	s3,24(sp)
    80005c38:	04010413          	addi	s0,sp,64
    80005c3c:	00050493          	mv	s1,a0
    80005c40:	00058913          	mv	s2,a1
    80005c44:	00060993          	mv	s3,a2
    LOCK();
    80005c48:	00100613          	li	a2,1
    80005c4c:	00000593          	li	a1,0
    80005c50:	00006517          	auipc	a0,0x6
    80005c54:	15050513          	addi	a0,a0,336 # 8000bda0 <lockPrint>
    80005c58:	ffffb097          	auipc	ra,0xffffb
    80005c5c:	5cc080e7          	jalr	1484(ra) # 80001224 <copy_and_swap>
    80005c60:	00050863          	beqz	a0,80005c70 <_Z8printIntiii+0x50>
    80005c64:	ffffb097          	auipc	ra,0xffffb
    80005c68:	76c080e7          	jalr	1900(ra) # 800013d0 <_Z15thread_dispatchv>
    80005c6c:	fddff06f          	j	80005c48 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005c70:	00098463          	beqz	s3,80005c78 <_Z8printIntiii+0x58>
    80005c74:	0804c463          	bltz	s1,80005cfc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005c78:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005c7c:	00000593          	li	a1,0
    }

    i = 0;
    80005c80:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005c84:	0009079b          	sext.w	a5,s2
    80005c88:	0325773b          	remuw	a4,a0,s2
    80005c8c:	00048613          	mv	a2,s1
    80005c90:	0014849b          	addiw	s1,s1,1
    80005c94:	02071693          	slli	a3,a4,0x20
    80005c98:	0206d693          	srli	a3,a3,0x20
    80005c9c:	00006717          	auipc	a4,0x6
    80005ca0:	f7470713          	addi	a4,a4,-140 # 8000bc10 <digits>
    80005ca4:	00d70733          	add	a4,a4,a3
    80005ca8:	00074683          	lbu	a3,0(a4)
    80005cac:	fd040713          	addi	a4,s0,-48
    80005cb0:	00c70733          	add	a4,a4,a2
    80005cb4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005cb8:	0005071b          	sext.w	a4,a0
    80005cbc:	0325553b          	divuw	a0,a0,s2
    80005cc0:	fcf772e3          	bgeu	a4,a5,80005c84 <_Z8printIntiii+0x64>
    if(neg)
    80005cc4:	00058c63          	beqz	a1,80005cdc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005cc8:	fd040793          	addi	a5,s0,-48
    80005ccc:	009784b3          	add	s1,a5,s1
    80005cd0:	02d00793          	li	a5,45
    80005cd4:	fef48823          	sb	a5,-16(s1)
    80005cd8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005cdc:	fff4849b          	addiw	s1,s1,-1
    80005ce0:	0204c463          	bltz	s1,80005d08 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005ce4:	fd040793          	addi	a5,s0,-48
    80005ce8:	009787b3          	add	a5,a5,s1
    80005cec:	ff07c503          	lbu	a0,-16(a5)
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	98c080e7          	jalr	-1652(ra) # 8000167c <_Z4putcc>
    80005cf8:	fe5ff06f          	j	80005cdc <_Z8printIntiii+0xbc>
        x = -xx;
    80005cfc:	4090053b          	negw	a0,s1
        neg = 1;
    80005d00:	00100593          	li	a1,1
        x = -xx;
    80005d04:	f7dff06f          	j	80005c80 <_Z8printIntiii+0x60>

    UNLOCK();
    80005d08:	00000613          	li	a2,0
    80005d0c:	00100593          	li	a1,1
    80005d10:	00006517          	auipc	a0,0x6
    80005d14:	09050513          	addi	a0,a0,144 # 8000bda0 <lockPrint>
    80005d18:	ffffb097          	auipc	ra,0xffffb
    80005d1c:	50c080e7          	jalr	1292(ra) # 80001224 <copy_and_swap>
    80005d20:	fe0514e3          	bnez	a0,80005d08 <_Z8printIntiii+0xe8>
    80005d24:	03813083          	ld	ra,56(sp)
    80005d28:	03013403          	ld	s0,48(sp)
    80005d2c:	02813483          	ld	s1,40(sp)
    80005d30:	02013903          	ld	s2,32(sp)
    80005d34:	01813983          	ld	s3,24(sp)
    80005d38:	04010113          	addi	sp,sp,64
    80005d3c:	00008067          	ret

0000000080005d40 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d40:	fd010113          	addi	sp,sp,-48
    80005d44:	02113423          	sd	ra,40(sp)
    80005d48:	02813023          	sd	s0,32(sp)
    80005d4c:	00913c23          	sd	s1,24(sp)
    80005d50:	01213823          	sd	s2,16(sp)
    80005d54:	01313423          	sd	s3,8(sp)
    80005d58:	03010413          	addi	s0,sp,48
    80005d5c:	00050493          	mv	s1,a0
    80005d60:	00058913          	mv	s2,a1
    80005d64:	0015879b          	addiw	a5,a1,1
    80005d68:	0007851b          	sext.w	a0,a5
    80005d6c:	00f4a023          	sw	a5,0(s1)
    80005d70:	0004a823          	sw	zero,16(s1)
    80005d74:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d78:	00251513          	slli	a0,a0,0x2
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	4e4080e7          	jalr	1252(ra) # 80001260 <_Z9mem_allocm>
    80005d84:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005d88:	01000513          	li	a0,16
    80005d8c:	ffffc097          	auipc	ra,0xffffc
    80005d90:	3ac080e7          	jalr	940(ra) # 80002138 <_Znwm>
    80005d94:	00050993          	mv	s3,a0
    80005d98:	00000593          	li	a1,0
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	5e8080e7          	jalr	1512(ra) # 80002384 <_ZN9SemaphoreC1Ej>
    80005da4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005da8:	01000513          	li	a0,16
    80005dac:	ffffc097          	auipc	ra,0xffffc
    80005db0:	38c080e7          	jalr	908(ra) # 80002138 <_Znwm>
    80005db4:	00050993          	mv	s3,a0
    80005db8:	00090593          	mv	a1,s2
    80005dbc:	ffffc097          	auipc	ra,0xffffc
    80005dc0:	5c8080e7          	jalr	1480(ra) # 80002384 <_ZN9SemaphoreC1Ej>
    80005dc4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005dc8:	01000513          	li	a0,16
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	36c080e7          	jalr	876(ra) # 80002138 <_Znwm>
    80005dd4:	00050913          	mv	s2,a0
    80005dd8:	00100593          	li	a1,1
    80005ddc:	ffffc097          	auipc	ra,0xffffc
    80005de0:	5a8080e7          	jalr	1448(ra) # 80002384 <_ZN9SemaphoreC1Ej>
    80005de4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005de8:	01000513          	li	a0,16
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	34c080e7          	jalr	844(ra) # 80002138 <_Znwm>
    80005df4:	00050913          	mv	s2,a0
    80005df8:	00100593          	li	a1,1
    80005dfc:	ffffc097          	auipc	ra,0xffffc
    80005e00:	588080e7          	jalr	1416(ra) # 80002384 <_ZN9SemaphoreC1Ej>
    80005e04:	0324b823          	sd	s2,48(s1)
}
    80005e08:	02813083          	ld	ra,40(sp)
    80005e0c:	02013403          	ld	s0,32(sp)
    80005e10:	01813483          	ld	s1,24(sp)
    80005e14:	01013903          	ld	s2,16(sp)
    80005e18:	00813983          	ld	s3,8(sp)
    80005e1c:	03010113          	addi	sp,sp,48
    80005e20:	00008067          	ret
    80005e24:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e28:	00098513          	mv	a0,s3
    80005e2c:	ffffc097          	auipc	ra,0xffffc
    80005e30:	384080e7          	jalr	900(ra) # 800021b0 <_ZdlPv>
    80005e34:	00048513          	mv	a0,s1
    80005e38:	00007097          	auipc	ra,0x7
    80005e3c:	040080e7          	jalr	64(ra) # 8000ce78 <_Unwind_Resume>
    80005e40:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e44:	00098513          	mv	a0,s3
    80005e48:	ffffc097          	auipc	ra,0xffffc
    80005e4c:	368080e7          	jalr	872(ra) # 800021b0 <_ZdlPv>
    80005e50:	00048513          	mv	a0,s1
    80005e54:	00007097          	auipc	ra,0x7
    80005e58:	024080e7          	jalr	36(ra) # 8000ce78 <_Unwind_Resume>
    80005e5c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e60:	00090513          	mv	a0,s2
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	34c080e7          	jalr	844(ra) # 800021b0 <_ZdlPv>
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	00007097          	auipc	ra,0x7
    80005e74:	008080e7          	jalr	8(ra) # 8000ce78 <_Unwind_Resume>
    80005e78:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e7c:	00090513          	mv	a0,s2
    80005e80:	ffffc097          	auipc	ra,0xffffc
    80005e84:	330080e7          	jalr	816(ra) # 800021b0 <_ZdlPv>
    80005e88:	00048513          	mv	a0,s1
    80005e8c:	00007097          	auipc	ra,0x7
    80005e90:	fec080e7          	jalr	-20(ra) # 8000ce78 <_Unwind_Resume>

0000000080005e94 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e94:	fe010113          	addi	sp,sp,-32
    80005e98:	00113c23          	sd	ra,24(sp)
    80005e9c:	00813823          	sd	s0,16(sp)
    80005ea0:	00913423          	sd	s1,8(sp)
    80005ea4:	01213023          	sd	s2,0(sp)
    80005ea8:	02010413          	addi	s0,sp,32
    80005eac:	00050493          	mv	s1,a0
    80005eb0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005eb4:	01853503          	ld	a0,24(a0)
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	508080e7          	jalr	1288(ra) # 800023c0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005ec0:	0304b503          	ld	a0,48(s1)
    80005ec4:	ffffc097          	auipc	ra,0xffffc
    80005ec8:	4fc080e7          	jalr	1276(ra) # 800023c0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ecc:	0084b783          	ld	a5,8(s1)
    80005ed0:	0144a703          	lw	a4,20(s1)
    80005ed4:	00271713          	slli	a4,a4,0x2
    80005ed8:	00e787b3          	add	a5,a5,a4
    80005edc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ee0:	0144a783          	lw	a5,20(s1)
    80005ee4:	0017879b          	addiw	a5,a5,1
    80005ee8:	0004a703          	lw	a4,0(s1)
    80005eec:	02e7e7bb          	remw	a5,a5,a4
    80005ef0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ef4:	0304b503          	ld	a0,48(s1)
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	4f4080e7          	jalr	1268(ra) # 800023ec <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005f00:	0204b503          	ld	a0,32(s1)
    80005f04:	ffffc097          	auipc	ra,0xffffc
    80005f08:	4e8080e7          	jalr	1256(ra) # 800023ec <_ZN9Semaphore6signalEv>

}
    80005f0c:	01813083          	ld	ra,24(sp)
    80005f10:	01013403          	ld	s0,16(sp)
    80005f14:	00813483          	ld	s1,8(sp)
    80005f18:	00013903          	ld	s2,0(sp)
    80005f1c:	02010113          	addi	sp,sp,32
    80005f20:	00008067          	ret

0000000080005f24 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005f24:	fe010113          	addi	sp,sp,-32
    80005f28:	00113c23          	sd	ra,24(sp)
    80005f2c:	00813823          	sd	s0,16(sp)
    80005f30:	00913423          	sd	s1,8(sp)
    80005f34:	01213023          	sd	s2,0(sp)
    80005f38:	02010413          	addi	s0,sp,32
    80005f3c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f40:	02053503          	ld	a0,32(a0)
    80005f44:	ffffc097          	auipc	ra,0xffffc
    80005f48:	47c080e7          	jalr	1148(ra) # 800023c0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f4c:	0284b503          	ld	a0,40(s1)
    80005f50:	ffffc097          	auipc	ra,0xffffc
    80005f54:	470080e7          	jalr	1136(ra) # 800023c0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f58:	0084b703          	ld	a4,8(s1)
    80005f5c:	0104a783          	lw	a5,16(s1)
    80005f60:	00279693          	slli	a3,a5,0x2
    80005f64:	00d70733          	add	a4,a4,a3
    80005f68:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f6c:	0017879b          	addiw	a5,a5,1
    80005f70:	0004a703          	lw	a4,0(s1)
    80005f74:	02e7e7bb          	remw	a5,a5,a4
    80005f78:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f7c:	0284b503          	ld	a0,40(s1)
    80005f80:	ffffc097          	auipc	ra,0xffffc
    80005f84:	46c080e7          	jalr	1132(ra) # 800023ec <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005f88:	0184b503          	ld	a0,24(s1)
    80005f8c:	ffffc097          	auipc	ra,0xffffc
    80005f90:	460080e7          	jalr	1120(ra) # 800023ec <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f94:	00090513          	mv	a0,s2
    80005f98:	01813083          	ld	ra,24(sp)
    80005f9c:	01013403          	ld	s0,16(sp)
    80005fa0:	00813483          	ld	s1,8(sp)
    80005fa4:	00013903          	ld	s2,0(sp)
    80005fa8:	02010113          	addi	sp,sp,32
    80005fac:	00008067          	ret

0000000080005fb0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005fb0:	fe010113          	addi	sp,sp,-32
    80005fb4:	00113c23          	sd	ra,24(sp)
    80005fb8:	00813823          	sd	s0,16(sp)
    80005fbc:	00913423          	sd	s1,8(sp)
    80005fc0:	01213023          	sd	s2,0(sp)
    80005fc4:	02010413          	addi	s0,sp,32
    80005fc8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fcc:	02853503          	ld	a0,40(a0)
    80005fd0:	ffffc097          	auipc	ra,0xffffc
    80005fd4:	3f0080e7          	jalr	1008(ra) # 800023c0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005fd8:	0304b503          	ld	a0,48(s1)
    80005fdc:	ffffc097          	auipc	ra,0xffffc
    80005fe0:	3e4080e7          	jalr	996(ra) # 800023c0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005fe4:	0144a783          	lw	a5,20(s1)
    80005fe8:	0104a903          	lw	s2,16(s1)
    80005fec:	0327ce63          	blt	a5,s2,80006028 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005ff0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005ff4:	0304b503          	ld	a0,48(s1)
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	3f4080e7          	jalr	1012(ra) # 800023ec <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006000:	0284b503          	ld	a0,40(s1)
    80006004:	ffffc097          	auipc	ra,0xffffc
    80006008:	3e8080e7          	jalr	1000(ra) # 800023ec <_ZN9Semaphore6signalEv>

    return ret;
}
    8000600c:	00090513          	mv	a0,s2
    80006010:	01813083          	ld	ra,24(sp)
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	00813483          	ld	s1,8(sp)
    8000601c:	00013903          	ld	s2,0(sp)
    80006020:	02010113          	addi	sp,sp,32
    80006024:	00008067          	ret
        ret = cap - head + tail;
    80006028:	0004a703          	lw	a4,0(s1)
    8000602c:	4127093b          	subw	s2,a4,s2
    80006030:	00f9093b          	addw	s2,s2,a5
    80006034:	fc1ff06f          	j	80005ff4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006038 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006038:	fe010113          	addi	sp,sp,-32
    8000603c:	00113c23          	sd	ra,24(sp)
    80006040:	00813823          	sd	s0,16(sp)
    80006044:	00913423          	sd	s1,8(sp)
    80006048:	02010413          	addi	s0,sp,32
    8000604c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006050:	00a00513          	li	a0,10
    80006054:	ffffc097          	auipc	ra,0xffffc
    80006058:	444080e7          	jalr	1092(ra) # 80002498 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000605c:	00003517          	auipc	a0,0x3
    80006060:	2c450513          	addi	a0,a0,708 # 80009320 <CONSOLE_STATUS+0x310>
    80006064:	00000097          	auipc	ra,0x0
    80006068:	a0c080e7          	jalr	-1524(ra) # 80005a70 <_Z11printStringPKc>
    while (getCnt()) {
    8000606c:	00048513          	mv	a0,s1
    80006070:	00000097          	auipc	ra,0x0
    80006074:	f40080e7          	jalr	-192(ra) # 80005fb0 <_ZN9BufferCPP6getCntEv>
    80006078:	02050c63          	beqz	a0,800060b0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000607c:	0084b783          	ld	a5,8(s1)
    80006080:	0104a703          	lw	a4,16(s1)
    80006084:	00271713          	slli	a4,a4,0x2
    80006088:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000608c:	0007c503          	lbu	a0,0(a5)
    80006090:	ffffc097          	auipc	ra,0xffffc
    80006094:	408080e7          	jalr	1032(ra) # 80002498 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006098:	0104a783          	lw	a5,16(s1)
    8000609c:	0017879b          	addiw	a5,a5,1
    800060a0:	0004a703          	lw	a4,0(s1)
    800060a4:	02e7e7bb          	remw	a5,a5,a4
    800060a8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800060ac:	fc1ff06f          	j	8000606c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800060b0:	02100513          	li	a0,33
    800060b4:	ffffc097          	auipc	ra,0xffffc
    800060b8:	3e4080e7          	jalr	996(ra) # 80002498 <_ZN7Console4putcEc>
    Console::putc('\n');
    800060bc:	00a00513          	li	a0,10
    800060c0:	ffffc097          	auipc	ra,0xffffc
    800060c4:	3d8080e7          	jalr	984(ra) # 80002498 <_ZN7Console4putcEc>
    mem_free(buffer);
    800060c8:	0084b503          	ld	a0,8(s1)
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	1e4080e7          	jalr	484(ra) # 800012b0 <_Z8mem_freePv>
    delete itemAvailable;
    800060d4:	0204b503          	ld	a0,32(s1)
    800060d8:	00050863          	beqz	a0,800060e8 <_ZN9BufferCPPD1Ev+0xb0>
    800060dc:	00053783          	ld	a5,0(a0)
    800060e0:	0087b783          	ld	a5,8(a5)
    800060e4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060e8:	0184b503          	ld	a0,24(s1)
    800060ec:	00050863          	beqz	a0,800060fc <_ZN9BufferCPPD1Ev+0xc4>
    800060f0:	00053783          	ld	a5,0(a0)
    800060f4:	0087b783          	ld	a5,8(a5)
    800060f8:	000780e7          	jalr	a5
    delete mutexTail;
    800060fc:	0304b503          	ld	a0,48(s1)
    80006100:	00050863          	beqz	a0,80006110 <_ZN9BufferCPPD1Ev+0xd8>
    80006104:	00053783          	ld	a5,0(a0)
    80006108:	0087b783          	ld	a5,8(a5)
    8000610c:	000780e7          	jalr	a5
    delete mutexHead;
    80006110:	0284b503          	ld	a0,40(s1)
    80006114:	00050863          	beqz	a0,80006124 <_ZN9BufferCPPD1Ev+0xec>
    80006118:	00053783          	ld	a5,0(a0)
    8000611c:	0087b783          	ld	a5,8(a5)
    80006120:	000780e7          	jalr	a5
}
    80006124:	01813083          	ld	ra,24(sp)
    80006128:	01013403          	ld	s0,16(sp)
    8000612c:	00813483          	ld	s1,8(sp)
    80006130:	02010113          	addi	sp,sp,32
    80006134:	00008067          	ret

0000000080006138 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006138:	fe010113          	addi	sp,sp,-32
    8000613c:	00113c23          	sd	ra,24(sp)
    80006140:	00813823          	sd	s0,16(sp)
    80006144:	00913423          	sd	s1,8(sp)
    80006148:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000614c:	00003517          	auipc	a0,0x3
    80006150:	1ec50513          	addi	a0,a0,492 # 80009338 <CONSOLE_STATUS+0x328>
    80006154:	00000097          	auipc	ra,0x0
    80006158:	91c080e7          	jalr	-1764(ra) # 80005a70 <_Z11printStringPKc>
    int test = getc() - '0';
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	4d4080e7          	jalr	1236(ra) # 80001630 <_Z4getcv>
    80006164:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	4c8080e7          	jalr	1224(ra) # 80001630 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006170:	00700793          	li	a5,7
    80006174:	1097e263          	bltu	a5,s1,80006278 <_Z8userMainv+0x140>
    80006178:	00249493          	slli	s1,s1,0x2
    8000617c:	00003717          	auipc	a4,0x3
    80006180:	41470713          	addi	a4,a4,1044 # 80009590 <CONSOLE_STATUS+0x580>
    80006184:	00e484b3          	add	s1,s1,a4
    80006188:	0004a783          	lw	a5,0(s1)
    8000618c:	00e787b3          	add	a5,a5,a4
    80006190:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006194:	fffff097          	auipc	ra,0xfffff
    80006198:	f54080e7          	jalr	-172(ra) # 800050e8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000619c:	00003517          	auipc	a0,0x3
    800061a0:	1bc50513          	addi	a0,a0,444 # 80009358 <CONSOLE_STATUS+0x348>
    800061a4:	00000097          	auipc	ra,0x0
    800061a8:	8cc080e7          	jalr	-1844(ra) # 80005a70 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800061ac:	01813083          	ld	ra,24(sp)
    800061b0:	01013403          	ld	s0,16(sp)
    800061b4:	00813483          	ld	s1,8(sp)
    800061b8:	02010113          	addi	sp,sp,32
    800061bc:	00008067          	ret
            Threads_CPP_API_test();
    800061c0:	ffffe097          	auipc	ra,0xffffe
    800061c4:	df4080e7          	jalr	-524(ra) # 80003fb4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	1d050513          	addi	a0,a0,464 # 80009398 <CONSOLE_STATUS+0x388>
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	8a0080e7          	jalr	-1888(ra) # 80005a70 <_Z11printStringPKc>
            break;
    800061d8:	fd5ff06f          	j	800061ac <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800061dc:	ffffd097          	auipc	ra,0xffffd
    800061e0:	62c080e7          	jalr	1580(ra) # 80003808 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	1f450513          	addi	a0,a0,500 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800061ec:	00000097          	auipc	ra,0x0
    800061f0:	884080e7          	jalr	-1916(ra) # 80005a70 <_Z11printStringPKc>
            break;
    800061f4:	fb9ff06f          	j	800061ac <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800061f8:	fffff097          	auipc	ra,0xfffff
    800061fc:	234080e7          	jalr	564(ra) # 8000542c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006200:	00003517          	auipc	a0,0x3
    80006204:	22850513          	addi	a0,a0,552 # 80009428 <CONSOLE_STATUS+0x418>
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	868080e7          	jalr	-1944(ra) # 80005a70 <_Z11printStringPKc>
            break;
    80006210:	f9dff06f          	j	800061ac <_Z8userMainv+0x74>
            testSleeping();
    80006214:	00000097          	auipc	ra,0x0
    80006218:	11c080e7          	jalr	284(ra) # 80006330 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	26450513          	addi	a0,a0,612 # 80009480 <CONSOLE_STATUS+0x470>
    80006224:	00000097          	auipc	ra,0x0
    80006228:	84c080e7          	jalr	-1972(ra) # 80005a70 <_Z11printStringPKc>
            break;
    8000622c:	f81ff06f          	j	800061ac <_Z8userMainv+0x74>
            testConsumerProducer();
    80006230:	ffffe097          	auipc	ra,0xffffe
    80006234:	258080e7          	jalr	600(ra) # 80004488 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006238:	00003517          	auipc	a0,0x3
    8000623c:	27850513          	addi	a0,a0,632 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80006240:	00000097          	auipc	ra,0x0
    80006244:	830080e7          	jalr	-2000(ra) # 80005a70 <_Z11printStringPKc>
            break;
    80006248:	f65ff06f          	j	800061ac <_Z8userMainv+0x74>
            System_Mode_test();
    8000624c:	00000097          	auipc	ra,0x0
    80006250:	658080e7          	jalr	1624(ra) # 800068a4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006254:	00003517          	auipc	a0,0x3
    80006258:	29c50513          	addi	a0,a0,668 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000625c:	00000097          	auipc	ra,0x0
    80006260:	814080e7          	jalr	-2028(ra) # 80005a70 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006264:	00003517          	auipc	a0,0x3
    80006268:	2ac50513          	addi	a0,a0,684 # 80009510 <CONSOLE_STATUS+0x500>
    8000626c:	00000097          	auipc	ra,0x0
    80006270:	804080e7          	jalr	-2044(ra) # 80005a70 <_Z11printStringPKc>
            break;
    80006274:	f39ff06f          	j	800061ac <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006278:	00003517          	auipc	a0,0x3
    8000627c:	2f050513          	addi	a0,a0,752 # 80009568 <CONSOLE_STATUS+0x558>
    80006280:	fffff097          	auipc	ra,0xfffff
    80006284:	7f0080e7          	jalr	2032(ra) # 80005a70 <_Z11printStringPKc>
    80006288:	f25ff06f          	j	800061ac <_Z8userMainv+0x74>

000000008000628c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000628c:	fe010113          	addi	sp,sp,-32
    80006290:	00113c23          	sd	ra,24(sp)
    80006294:	00813823          	sd	s0,16(sp)
    80006298:	00913423          	sd	s1,8(sp)
    8000629c:	01213023          	sd	s2,0(sp)
    800062a0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800062a4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800062a8:	00600493          	li	s1,6
    while (--i > 0) {
    800062ac:	fff4849b          	addiw	s1,s1,-1
    800062b0:	04905463          	blez	s1,800062f8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800062b4:	00003517          	auipc	a0,0x3
    800062b8:	2fc50513          	addi	a0,a0,764 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800062bc:	fffff097          	auipc	ra,0xfffff
    800062c0:	7b4080e7          	jalr	1972(ra) # 80005a70 <_Z11printStringPKc>
        printInt(sleep_time);
    800062c4:	00000613          	li	a2,0
    800062c8:	00a00593          	li	a1,10
    800062cc:	0009051b          	sext.w	a0,s2
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	950080e7          	jalr	-1712(ra) # 80005c20 <_Z8printIntiii>
        printString(" !\n");
    800062d8:	00003517          	auipc	a0,0x3
    800062dc:	2e050513          	addi	a0,a0,736 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800062e0:	fffff097          	auipc	ra,0xfffff
    800062e4:	790080e7          	jalr	1936(ra) # 80005a70 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062e8:	00090513          	mv	a0,s2
    800062ec:	ffffb097          	auipc	ra,0xffffb
    800062f0:	2f8080e7          	jalr	760(ra) # 800015e4 <_Z10time_sleepm>
    while (--i > 0) {
    800062f4:	fb9ff06f          	j	800062ac <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062f8:	00a00793          	li	a5,10
    800062fc:	02f95933          	divu	s2,s2,a5
    80006300:	fff90913          	addi	s2,s2,-1
    80006304:	00006797          	auipc	a5,0x6
    80006308:	aa478793          	addi	a5,a5,-1372 # 8000bda8 <_ZL8finished>
    8000630c:	01278933          	add	s2,a5,s2
    80006310:	00100793          	li	a5,1
    80006314:	00f90023          	sb	a5,0(s2)
}
    80006318:	01813083          	ld	ra,24(sp)
    8000631c:	01013403          	ld	s0,16(sp)
    80006320:	00813483          	ld	s1,8(sp)
    80006324:	00013903          	ld	s2,0(sp)
    80006328:	02010113          	addi	sp,sp,32
    8000632c:	00008067          	ret

0000000080006330 <_Z12testSleepingv>:

void testSleeping() {
    80006330:	fc010113          	addi	sp,sp,-64
    80006334:	02113c23          	sd	ra,56(sp)
    80006338:	02813823          	sd	s0,48(sp)
    8000633c:	02913423          	sd	s1,40(sp)
    80006340:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006344:	00a00793          	li	a5,10
    80006348:	fcf43823          	sd	a5,-48(s0)
    8000634c:	01400793          	li	a5,20
    80006350:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006354:	00000493          	li	s1,0
    80006358:	02c0006f          	j	80006384 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000635c:	00349793          	slli	a5,s1,0x3
    80006360:	fd040613          	addi	a2,s0,-48
    80006364:	00f60633          	add	a2,a2,a5
    80006368:	00000597          	auipc	a1,0x0
    8000636c:	f2458593          	addi	a1,a1,-220 # 8000628c <_ZL9sleepyRunPv>
    80006370:	fc040513          	addi	a0,s0,-64
    80006374:	00f50533          	add	a0,a0,a5
    80006378:	ffffb097          	auipc	ra,0xffffb
    8000637c:	f84080e7          	jalr	-124(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006380:	0014849b          	addiw	s1,s1,1
    80006384:	00100793          	li	a5,1
    80006388:	fc97dae3          	bge	a5,s1,8000635c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000638c:	00006797          	auipc	a5,0x6
    80006390:	a1c7c783          	lbu	a5,-1508(a5) # 8000bda8 <_ZL8finished>
    80006394:	fe078ce3          	beqz	a5,8000638c <_Z12testSleepingv+0x5c>
    80006398:	00006797          	auipc	a5,0x6
    8000639c:	a117c783          	lbu	a5,-1519(a5) # 8000bda9 <_ZL8finished+0x1>
    800063a0:	fe0786e3          	beqz	a5,8000638c <_Z12testSleepingv+0x5c>
}
    800063a4:	03813083          	ld	ra,56(sp)
    800063a8:	03013403          	ld	s0,48(sp)
    800063ac:	02813483          	ld	s1,40(sp)
    800063b0:	04010113          	addi	sp,sp,64
    800063b4:	00008067          	ret

00000000800063b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800063b8:	fe010113          	addi	sp,sp,-32
    800063bc:	00113c23          	sd	ra,24(sp)
    800063c0:	00813823          	sd	s0,16(sp)
    800063c4:	00913423          	sd	s1,8(sp)
    800063c8:	01213023          	sd	s2,0(sp)
    800063cc:	02010413          	addi	s0,sp,32
    800063d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063d4:	00100793          	li	a5,1
    800063d8:	02a7f863          	bgeu	a5,a0,80006408 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063dc:	00a00793          	li	a5,10
    800063e0:	02f577b3          	remu	a5,a0,a5
    800063e4:	02078e63          	beqz	a5,80006420 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063e8:	fff48513          	addi	a0,s1,-1
    800063ec:	00000097          	auipc	ra,0x0
    800063f0:	fcc080e7          	jalr	-52(ra) # 800063b8 <_ZL9fibonaccim>
    800063f4:	00050913          	mv	s2,a0
    800063f8:	ffe48513          	addi	a0,s1,-2
    800063fc:	00000097          	auipc	ra,0x0
    80006400:	fbc080e7          	jalr	-68(ra) # 800063b8 <_ZL9fibonaccim>
    80006404:	00a90533          	add	a0,s2,a0
}
    80006408:	01813083          	ld	ra,24(sp)
    8000640c:	01013403          	ld	s0,16(sp)
    80006410:	00813483          	ld	s1,8(sp)
    80006414:	00013903          	ld	s2,0(sp)
    80006418:	02010113          	addi	sp,sp,32
    8000641c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	fb0080e7          	jalr	-80(ra) # 800013d0 <_Z15thread_dispatchv>
    80006428:	fc1ff06f          	j	800063e8 <_ZL9fibonaccim+0x30>

000000008000642c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000642c:	fe010113          	addi	sp,sp,-32
    80006430:	00113c23          	sd	ra,24(sp)
    80006434:	00813823          	sd	s0,16(sp)
    80006438:	00913423          	sd	s1,8(sp)
    8000643c:	01213023          	sd	s2,0(sp)
    80006440:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006444:	00a00493          	li	s1,10
    80006448:	0400006f          	j	80006488 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	e2c50513          	addi	a0,a0,-468 # 80009278 <CONSOLE_STATUS+0x268>
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	61c080e7          	jalr	1564(ra) # 80005a70 <_Z11printStringPKc>
    8000645c:	00000613          	li	a2,0
    80006460:	00a00593          	li	a1,10
    80006464:	00048513          	mv	a0,s1
    80006468:	fffff097          	auipc	ra,0xfffff
    8000646c:	7b8080e7          	jalr	1976(ra) # 80005c20 <_Z8printIntiii>
    80006470:	00003517          	auipc	a0,0x3
    80006474:	00850513          	addi	a0,a0,8 # 80009478 <CONSOLE_STATUS+0x468>
    80006478:	fffff097          	auipc	ra,0xfffff
    8000647c:	5f8080e7          	jalr	1528(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006480:	0014849b          	addiw	s1,s1,1
    80006484:	0ff4f493          	andi	s1,s1,255
    80006488:	00c00793          	li	a5,12
    8000648c:	fc97f0e3          	bgeu	a5,s1,8000644c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006490:	00003517          	auipc	a0,0x3
    80006494:	df050513          	addi	a0,a0,-528 # 80009280 <CONSOLE_STATUS+0x270>
    80006498:	fffff097          	auipc	ra,0xfffff
    8000649c:	5d8080e7          	jalr	1496(ra) # 80005a70 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800064a0:	00500313          	li	t1,5
    thread_dispatch();
    800064a4:	ffffb097          	auipc	ra,0xffffb
    800064a8:	f2c080e7          	jalr	-212(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800064ac:	01000513          	li	a0,16
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	f08080e7          	jalr	-248(ra) # 800063b8 <_ZL9fibonaccim>
    800064b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064bc:	00003517          	auipc	a0,0x3
    800064c0:	dd450513          	addi	a0,a0,-556 # 80009290 <CONSOLE_STATUS+0x280>
    800064c4:	fffff097          	auipc	ra,0xfffff
    800064c8:	5ac080e7          	jalr	1452(ra) # 80005a70 <_Z11printStringPKc>
    800064cc:	00000613          	li	a2,0
    800064d0:	00a00593          	li	a1,10
    800064d4:	0009051b          	sext.w	a0,s2
    800064d8:	fffff097          	auipc	ra,0xfffff
    800064dc:	748080e7          	jalr	1864(ra) # 80005c20 <_Z8printIntiii>
    800064e0:	00003517          	auipc	a0,0x3
    800064e4:	f9850513          	addi	a0,a0,-104 # 80009478 <CONSOLE_STATUS+0x468>
    800064e8:	fffff097          	auipc	ra,0xfffff
    800064ec:	588080e7          	jalr	1416(ra) # 80005a70 <_Z11printStringPKc>
    800064f0:	0400006f          	j	80006530 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064f4:	00003517          	auipc	a0,0x3
    800064f8:	d8450513          	addi	a0,a0,-636 # 80009278 <CONSOLE_STATUS+0x268>
    800064fc:	fffff097          	auipc	ra,0xfffff
    80006500:	574080e7          	jalr	1396(ra) # 80005a70 <_Z11printStringPKc>
    80006504:	00000613          	li	a2,0
    80006508:	00a00593          	li	a1,10
    8000650c:	00048513          	mv	a0,s1
    80006510:	fffff097          	auipc	ra,0xfffff
    80006514:	710080e7          	jalr	1808(ra) # 80005c20 <_Z8printIntiii>
    80006518:	00003517          	auipc	a0,0x3
    8000651c:	f6050513          	addi	a0,a0,-160 # 80009478 <CONSOLE_STATUS+0x468>
    80006520:	fffff097          	auipc	ra,0xfffff
    80006524:	550080e7          	jalr	1360(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006528:	0014849b          	addiw	s1,s1,1
    8000652c:	0ff4f493          	andi	s1,s1,255
    80006530:	00f00793          	li	a5,15
    80006534:	fc97f0e3          	bgeu	a5,s1,800064f4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006538:	00003517          	auipc	a0,0x3
    8000653c:	d6850513          	addi	a0,a0,-664 # 800092a0 <CONSOLE_STATUS+0x290>
    80006540:	fffff097          	auipc	ra,0xfffff
    80006544:	530080e7          	jalr	1328(ra) # 80005a70 <_Z11printStringPKc>
    finishedD = true;
    80006548:	00100793          	li	a5,1
    8000654c:	00006717          	auipc	a4,0x6
    80006550:	84f70f23          	sb	a5,-1954(a4) # 8000bdaa <_ZL9finishedD>
    thread_dispatch();
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	e7c080e7          	jalr	-388(ra) # 800013d0 <_Z15thread_dispatchv>
}
    8000655c:	01813083          	ld	ra,24(sp)
    80006560:	01013403          	ld	s0,16(sp)
    80006564:	00813483          	ld	s1,8(sp)
    80006568:	00013903          	ld	s2,0(sp)
    8000656c:	02010113          	addi	sp,sp,32
    80006570:	00008067          	ret

0000000080006574 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006574:	fe010113          	addi	sp,sp,-32
    80006578:	00113c23          	sd	ra,24(sp)
    8000657c:	00813823          	sd	s0,16(sp)
    80006580:	00913423          	sd	s1,8(sp)
    80006584:	01213023          	sd	s2,0(sp)
    80006588:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000658c:	00000493          	li	s1,0
    80006590:	0400006f          	j	800065d0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006594:	00003517          	auipc	a0,0x3
    80006598:	cb450513          	addi	a0,a0,-844 # 80009248 <CONSOLE_STATUS+0x238>
    8000659c:	fffff097          	auipc	ra,0xfffff
    800065a0:	4d4080e7          	jalr	1236(ra) # 80005a70 <_Z11printStringPKc>
    800065a4:	00000613          	li	a2,0
    800065a8:	00a00593          	li	a1,10
    800065ac:	00048513          	mv	a0,s1
    800065b0:	fffff097          	auipc	ra,0xfffff
    800065b4:	670080e7          	jalr	1648(ra) # 80005c20 <_Z8printIntiii>
    800065b8:	00003517          	auipc	a0,0x3
    800065bc:	ec050513          	addi	a0,a0,-320 # 80009478 <CONSOLE_STATUS+0x468>
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	4b0080e7          	jalr	1200(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800065c8:	0014849b          	addiw	s1,s1,1
    800065cc:	0ff4f493          	andi	s1,s1,255
    800065d0:	00200793          	li	a5,2
    800065d4:	fc97f0e3          	bgeu	a5,s1,80006594 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065d8:	00003517          	auipc	a0,0x3
    800065dc:	c7850513          	addi	a0,a0,-904 # 80009250 <CONSOLE_STATUS+0x240>
    800065e0:	fffff097          	auipc	ra,0xfffff
    800065e4:	490080e7          	jalr	1168(ra) # 80005a70 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065e8:	00700313          	li	t1,7
    thread_dispatch();
    800065ec:	ffffb097          	auipc	ra,0xffffb
    800065f0:	de4080e7          	jalr	-540(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065f4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065f8:	00003517          	auipc	a0,0x3
    800065fc:	c6850513          	addi	a0,a0,-920 # 80009260 <CONSOLE_STATUS+0x250>
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	470080e7          	jalr	1136(ra) # 80005a70 <_Z11printStringPKc>
    80006608:	00000613          	li	a2,0
    8000660c:	00a00593          	li	a1,10
    80006610:	0009051b          	sext.w	a0,s2
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	60c080e7          	jalr	1548(ra) # 80005c20 <_Z8printIntiii>
    8000661c:	00003517          	auipc	a0,0x3
    80006620:	e5c50513          	addi	a0,a0,-420 # 80009478 <CONSOLE_STATUS+0x468>
    80006624:	fffff097          	auipc	ra,0xfffff
    80006628:	44c080e7          	jalr	1100(ra) # 80005a70 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000662c:	00c00513          	li	a0,12
    80006630:	00000097          	auipc	ra,0x0
    80006634:	d88080e7          	jalr	-632(ra) # 800063b8 <_ZL9fibonaccim>
    80006638:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000663c:	00003517          	auipc	a0,0x3
    80006640:	c2c50513          	addi	a0,a0,-980 # 80009268 <CONSOLE_STATUS+0x258>
    80006644:	fffff097          	auipc	ra,0xfffff
    80006648:	42c080e7          	jalr	1068(ra) # 80005a70 <_Z11printStringPKc>
    8000664c:	00000613          	li	a2,0
    80006650:	00a00593          	li	a1,10
    80006654:	0009051b          	sext.w	a0,s2
    80006658:	fffff097          	auipc	ra,0xfffff
    8000665c:	5c8080e7          	jalr	1480(ra) # 80005c20 <_Z8printIntiii>
    80006660:	00003517          	auipc	a0,0x3
    80006664:	e1850513          	addi	a0,a0,-488 # 80009478 <CONSOLE_STATUS+0x468>
    80006668:	fffff097          	auipc	ra,0xfffff
    8000666c:	408080e7          	jalr	1032(ra) # 80005a70 <_Z11printStringPKc>
    80006670:	0400006f          	j	800066b0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006674:	00003517          	auipc	a0,0x3
    80006678:	bd450513          	addi	a0,a0,-1068 # 80009248 <CONSOLE_STATUS+0x238>
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	3f4080e7          	jalr	1012(ra) # 80005a70 <_Z11printStringPKc>
    80006684:	00000613          	li	a2,0
    80006688:	00a00593          	li	a1,10
    8000668c:	00048513          	mv	a0,s1
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	590080e7          	jalr	1424(ra) # 80005c20 <_Z8printIntiii>
    80006698:	00003517          	auipc	a0,0x3
    8000669c:	de050513          	addi	a0,a0,-544 # 80009478 <CONSOLE_STATUS+0x468>
    800066a0:	fffff097          	auipc	ra,0xfffff
    800066a4:	3d0080e7          	jalr	976(ra) # 80005a70 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800066a8:	0014849b          	addiw	s1,s1,1
    800066ac:	0ff4f493          	andi	s1,s1,255
    800066b0:	00500793          	li	a5,5
    800066b4:	fc97f0e3          	bgeu	a5,s1,80006674 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800066b8:	00003517          	auipc	a0,0x3
    800066bc:	b6850513          	addi	a0,a0,-1176 # 80009220 <CONSOLE_STATUS+0x210>
    800066c0:	fffff097          	auipc	ra,0xfffff
    800066c4:	3b0080e7          	jalr	944(ra) # 80005a70 <_Z11printStringPKc>
    finishedC = true;
    800066c8:	00100793          	li	a5,1
    800066cc:	00005717          	auipc	a4,0x5
    800066d0:	6cf70fa3          	sb	a5,1759(a4) # 8000bdab <_ZL9finishedC>
    thread_dispatch();
    800066d4:	ffffb097          	auipc	ra,0xffffb
    800066d8:	cfc080e7          	jalr	-772(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800066dc:	01813083          	ld	ra,24(sp)
    800066e0:	01013403          	ld	s0,16(sp)
    800066e4:	00813483          	ld	s1,8(sp)
    800066e8:	00013903          	ld	s2,0(sp)
    800066ec:	02010113          	addi	sp,sp,32
    800066f0:	00008067          	ret

00000000800066f4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066f4:	fe010113          	addi	sp,sp,-32
    800066f8:	00113c23          	sd	ra,24(sp)
    800066fc:	00813823          	sd	s0,16(sp)
    80006700:	00913423          	sd	s1,8(sp)
    80006704:	01213023          	sd	s2,0(sp)
    80006708:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000670c:	00000913          	li	s2,0
    80006710:	0400006f          	j	80006750 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	cbc080e7          	jalr	-836(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000671c:	00148493          	addi	s1,s1,1
    80006720:	000027b7          	lui	a5,0x2
    80006724:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006728:	0097ee63          	bltu	a5,s1,80006744 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000672c:	00000713          	li	a4,0
    80006730:	000077b7          	lui	a5,0x7
    80006734:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006738:	fce7eee3          	bltu	a5,a4,80006714 <_ZL11workerBodyBPv+0x20>
    8000673c:	00170713          	addi	a4,a4,1
    80006740:	ff1ff06f          	j	80006730 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006744:	00a00793          	li	a5,10
    80006748:	04f90663          	beq	s2,a5,80006794 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000674c:	00190913          	addi	s2,s2,1
    80006750:	00f00793          	li	a5,15
    80006754:	0527e463          	bltu	a5,s2,8000679c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006758:	00003517          	auipc	a0,0x3
    8000675c:	ad850513          	addi	a0,a0,-1320 # 80009230 <CONSOLE_STATUS+0x220>
    80006760:	fffff097          	auipc	ra,0xfffff
    80006764:	310080e7          	jalr	784(ra) # 80005a70 <_Z11printStringPKc>
    80006768:	00000613          	li	a2,0
    8000676c:	00a00593          	li	a1,10
    80006770:	0009051b          	sext.w	a0,s2
    80006774:	fffff097          	auipc	ra,0xfffff
    80006778:	4ac080e7          	jalr	1196(ra) # 80005c20 <_Z8printIntiii>
    8000677c:	00003517          	auipc	a0,0x3
    80006780:	cfc50513          	addi	a0,a0,-772 # 80009478 <CONSOLE_STATUS+0x468>
    80006784:	fffff097          	auipc	ra,0xfffff
    80006788:	2ec080e7          	jalr	748(ra) # 80005a70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000678c:	00000493          	li	s1,0
    80006790:	f91ff06f          	j	80006720 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006794:	14102ff3          	csrr	t6,sepc
    80006798:	fb5ff06f          	j	8000674c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000679c:	00003517          	auipc	a0,0x3
    800067a0:	a9c50513          	addi	a0,a0,-1380 # 80009238 <CONSOLE_STATUS+0x228>
    800067a4:	fffff097          	auipc	ra,0xfffff
    800067a8:	2cc080e7          	jalr	716(ra) # 80005a70 <_Z11printStringPKc>
    finishedB = true;
    800067ac:	00100793          	li	a5,1
    800067b0:	00005717          	auipc	a4,0x5
    800067b4:	5ef70e23          	sb	a5,1532(a4) # 8000bdac <_ZL9finishedB>
    thread_dispatch();
    800067b8:	ffffb097          	auipc	ra,0xffffb
    800067bc:	c18080e7          	jalr	-1000(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800067c0:	01813083          	ld	ra,24(sp)
    800067c4:	01013403          	ld	s0,16(sp)
    800067c8:	00813483          	ld	s1,8(sp)
    800067cc:	00013903          	ld	s2,0(sp)
    800067d0:	02010113          	addi	sp,sp,32
    800067d4:	00008067          	ret

00000000800067d8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067d8:	fe010113          	addi	sp,sp,-32
    800067dc:	00113c23          	sd	ra,24(sp)
    800067e0:	00813823          	sd	s0,16(sp)
    800067e4:	00913423          	sd	s1,8(sp)
    800067e8:	01213023          	sd	s2,0(sp)
    800067ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067f0:	00000913          	li	s2,0
    800067f4:	0380006f          	j	8000682c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067f8:	ffffb097          	auipc	ra,0xffffb
    800067fc:	bd8080e7          	jalr	-1064(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006800:	00148493          	addi	s1,s1,1
    80006804:	000027b7          	lui	a5,0x2
    80006808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000680c:	0097ee63          	bltu	a5,s1,80006828 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006810:	00000713          	li	a4,0
    80006814:	000077b7          	lui	a5,0x7
    80006818:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000681c:	fce7eee3          	bltu	a5,a4,800067f8 <_ZL11workerBodyAPv+0x20>
    80006820:	00170713          	addi	a4,a4,1
    80006824:	ff1ff06f          	j	80006814 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006828:	00190913          	addi	s2,s2,1
    8000682c:	00900793          	li	a5,9
    80006830:	0527e063          	bltu	a5,s2,80006870 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006834:	00003517          	auipc	a0,0x3
    80006838:	9e450513          	addi	a0,a0,-1564 # 80009218 <CONSOLE_STATUS+0x208>
    8000683c:	fffff097          	auipc	ra,0xfffff
    80006840:	234080e7          	jalr	564(ra) # 80005a70 <_Z11printStringPKc>
    80006844:	00000613          	li	a2,0
    80006848:	00a00593          	li	a1,10
    8000684c:	0009051b          	sext.w	a0,s2
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	3d0080e7          	jalr	976(ra) # 80005c20 <_Z8printIntiii>
    80006858:	00003517          	auipc	a0,0x3
    8000685c:	c2050513          	addi	a0,a0,-992 # 80009478 <CONSOLE_STATUS+0x468>
    80006860:	fffff097          	auipc	ra,0xfffff
    80006864:	210080e7          	jalr	528(ra) # 80005a70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006868:	00000493          	li	s1,0
    8000686c:	f99ff06f          	j	80006804 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006870:	00003517          	auipc	a0,0x3
    80006874:	9b050513          	addi	a0,a0,-1616 # 80009220 <CONSOLE_STATUS+0x210>
    80006878:	fffff097          	auipc	ra,0xfffff
    8000687c:	1f8080e7          	jalr	504(ra) # 80005a70 <_Z11printStringPKc>
    finishedA = true;
    80006880:	00100793          	li	a5,1
    80006884:	00005717          	auipc	a4,0x5
    80006888:	52f704a3          	sb	a5,1321(a4) # 8000bdad <_ZL9finishedA>
}
    8000688c:	01813083          	ld	ra,24(sp)
    80006890:	01013403          	ld	s0,16(sp)
    80006894:	00813483          	ld	s1,8(sp)
    80006898:	00013903          	ld	s2,0(sp)
    8000689c:	02010113          	addi	sp,sp,32
    800068a0:	00008067          	ret

00000000800068a4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800068a4:	fd010113          	addi	sp,sp,-48
    800068a8:	02113423          	sd	ra,40(sp)
    800068ac:	02813023          	sd	s0,32(sp)
    800068b0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800068b4:	00000613          	li	a2,0
    800068b8:	00000597          	auipc	a1,0x0
    800068bc:	f2058593          	addi	a1,a1,-224 # 800067d8 <_ZL11workerBodyAPv>
    800068c0:	fd040513          	addi	a0,s0,-48
    800068c4:	ffffb097          	auipc	ra,0xffffb
    800068c8:	a38080e7          	jalr	-1480(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800068cc:	00003517          	auipc	a0,0x3
    800068d0:	9e450513          	addi	a0,a0,-1564 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800068d4:	fffff097          	auipc	ra,0xfffff
    800068d8:	19c080e7          	jalr	412(ra) # 80005a70 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068dc:	00000613          	li	a2,0
    800068e0:	00000597          	auipc	a1,0x0
    800068e4:	e1458593          	addi	a1,a1,-492 # 800066f4 <_ZL11workerBodyBPv>
    800068e8:	fd840513          	addi	a0,s0,-40
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	a10080e7          	jalr	-1520(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	9d450513          	addi	a0,a0,-1580 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800068fc:	fffff097          	auipc	ra,0xfffff
    80006900:	174080e7          	jalr	372(ra) # 80005a70 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006904:	00000613          	li	a2,0
    80006908:	00000597          	auipc	a1,0x0
    8000690c:	c6c58593          	addi	a1,a1,-916 # 80006574 <_ZL11workerBodyCPv>
    80006910:	fe040513          	addi	a0,s0,-32
    80006914:	ffffb097          	auipc	ra,0xffffb
    80006918:	9e8080e7          	jalr	-1560(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000691c:	00003517          	auipc	a0,0x3
    80006920:	9c450513          	addi	a0,a0,-1596 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006924:	fffff097          	auipc	ra,0xfffff
    80006928:	14c080e7          	jalr	332(ra) # 80005a70 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000692c:	00000613          	li	a2,0
    80006930:	00000597          	auipc	a1,0x0
    80006934:	afc58593          	addi	a1,a1,-1284 # 8000642c <_ZL11workerBodyDPv>
    80006938:	fe840513          	addi	a0,s0,-24
    8000693c:	ffffb097          	auipc	ra,0xffffb
    80006940:	9c0080e7          	jalr	-1600(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006944:	00003517          	auipc	a0,0x3
    80006948:	9b450513          	addi	a0,a0,-1612 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000694c:	fffff097          	auipc	ra,0xfffff
    80006950:	124080e7          	jalr	292(ra) # 80005a70 <_Z11printStringPKc>
    80006954:	00c0006f          	j	80006960 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006958:	ffffb097          	auipc	ra,0xffffb
    8000695c:	a78080e7          	jalr	-1416(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006960:	00005797          	auipc	a5,0x5
    80006964:	44d7c783          	lbu	a5,1101(a5) # 8000bdad <_ZL9finishedA>
    80006968:	fe0788e3          	beqz	a5,80006958 <_Z16System_Mode_testv+0xb4>
    8000696c:	00005797          	auipc	a5,0x5
    80006970:	4407c783          	lbu	a5,1088(a5) # 8000bdac <_ZL9finishedB>
    80006974:	fe0782e3          	beqz	a5,80006958 <_Z16System_Mode_testv+0xb4>
    80006978:	00005797          	auipc	a5,0x5
    8000697c:	4337c783          	lbu	a5,1075(a5) # 8000bdab <_ZL9finishedC>
    80006980:	fc078ce3          	beqz	a5,80006958 <_Z16System_Mode_testv+0xb4>
    80006984:	00005797          	auipc	a5,0x5
    80006988:	4267c783          	lbu	a5,1062(a5) # 8000bdaa <_ZL9finishedD>
    8000698c:	fc0786e3          	beqz	a5,80006958 <_Z16System_Mode_testv+0xb4>
    }

}
    80006990:	02813083          	ld	ra,40(sp)
    80006994:	02013403          	ld	s0,32(sp)
    80006998:	03010113          	addi	sp,sp,48
    8000699c:	00008067          	ret

00000000800069a0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800069a0:	fe010113          	addi	sp,sp,-32
    800069a4:	00113c23          	sd	ra,24(sp)
    800069a8:	00813823          	sd	s0,16(sp)
    800069ac:	00913423          	sd	s1,8(sp)
    800069b0:	01213023          	sd	s2,0(sp)
    800069b4:	02010413          	addi	s0,sp,32
    800069b8:	00050493          	mv	s1,a0
    800069bc:	00058913          	mv	s2,a1
    800069c0:	0015879b          	addiw	a5,a1,1
    800069c4:	0007851b          	sext.w	a0,a5
    800069c8:	00f4a023          	sw	a5,0(s1)
    800069cc:	0004a823          	sw	zero,16(s1)
    800069d0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069d4:	00251513          	slli	a0,a0,0x2
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	888080e7          	jalr	-1912(ra) # 80001260 <_Z9mem_allocm>
    800069e0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069e4:	00000593          	li	a1,0
    800069e8:	02048513          	addi	a0,s1,32
    800069ec:	ffffb097          	auipc	ra,0xffffb
    800069f0:	a20080e7          	jalr	-1504(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    800069f4:	00090593          	mv	a1,s2
    800069f8:	01848513          	addi	a0,s1,24
    800069fc:	ffffb097          	auipc	ra,0xffffb
    80006a00:	a10080e7          	jalr	-1520(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006a04:	00100593          	li	a1,1
    80006a08:	02848513          	addi	a0,s1,40
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	a00080e7          	jalr	-1536(ra) # 8000140c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006a14:	00100593          	li	a1,1
    80006a18:	03048513          	addi	a0,s1,48
    80006a1c:	ffffb097          	auipc	ra,0xffffb
    80006a20:	9f0080e7          	jalr	-1552(ra) # 8000140c <_Z8sem_openPP3Semj>
}
    80006a24:	01813083          	ld	ra,24(sp)
    80006a28:	01013403          	ld	s0,16(sp)
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	00013903          	ld	s2,0(sp)
    80006a34:	02010113          	addi	sp,sp,32
    80006a38:	00008067          	ret

0000000080006a3c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a3c:	fe010113          	addi	sp,sp,-32
    80006a40:	00113c23          	sd	ra,24(sp)
    80006a44:	00813823          	sd	s0,16(sp)
    80006a48:	00913423          	sd	s1,8(sp)
    80006a4c:	01213023          	sd	s2,0(sp)
    80006a50:	02010413          	addi	s0,sp,32
    80006a54:	00050493          	mv	s1,a0
    80006a58:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a5c:	01853503          	ld	a0,24(a0)
    80006a60:	ffffb097          	auipc	ra,0xffffb
    80006a64:	a54080e7          	jalr	-1452(ra) # 800014b4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006a68:	0304b503          	ld	a0,48(s1)
    80006a6c:	ffffb097          	auipc	ra,0xffffb
    80006a70:	a48080e7          	jalr	-1464(ra) # 800014b4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006a74:	0084b783          	ld	a5,8(s1)
    80006a78:	0144a703          	lw	a4,20(s1)
    80006a7c:	00271713          	slli	a4,a4,0x2
    80006a80:	00e787b3          	add	a5,a5,a4
    80006a84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a88:	0144a783          	lw	a5,20(s1)
    80006a8c:	0017879b          	addiw	a5,a5,1
    80006a90:	0004a703          	lw	a4,0(s1)
    80006a94:	02e7e7bb          	remw	a5,a5,a4
    80006a98:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a9c:	0304b503          	ld	a0,48(s1)
    80006aa0:	ffffb097          	auipc	ra,0xffffb
    80006aa4:	af8080e7          	jalr	-1288(ra) # 80001598 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006aa8:	0204b503          	ld	a0,32(s1)
    80006aac:	ffffb097          	auipc	ra,0xffffb
    80006ab0:	aec080e7          	jalr	-1300(ra) # 80001598 <_Z10sem_signalP3Sem>

}
    80006ab4:	01813083          	ld	ra,24(sp)
    80006ab8:	01013403          	ld	s0,16(sp)
    80006abc:	00813483          	ld	s1,8(sp)
    80006ac0:	00013903          	ld	s2,0(sp)
    80006ac4:	02010113          	addi	sp,sp,32
    80006ac8:	00008067          	ret

0000000080006acc <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006acc:	fe010113          	addi	sp,sp,-32
    80006ad0:	00113c23          	sd	ra,24(sp)
    80006ad4:	00813823          	sd	s0,16(sp)
    80006ad8:	00913423          	sd	s1,8(sp)
    80006adc:	01213023          	sd	s2,0(sp)
    80006ae0:	02010413          	addi	s0,sp,32
    80006ae4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ae8:	02053503          	ld	a0,32(a0)
    80006aec:	ffffb097          	auipc	ra,0xffffb
    80006af0:	9c8080e7          	jalr	-1592(ra) # 800014b4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006af4:	0284b503          	ld	a0,40(s1)
    80006af8:	ffffb097          	auipc	ra,0xffffb
    80006afc:	9bc080e7          	jalr	-1604(ra) # 800014b4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006b00:	0084b703          	ld	a4,8(s1)
    80006b04:	0104a783          	lw	a5,16(s1)
    80006b08:	00279693          	slli	a3,a5,0x2
    80006b0c:	00d70733          	add	a4,a4,a3
    80006b10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b14:	0017879b          	addiw	a5,a5,1
    80006b18:	0004a703          	lw	a4,0(s1)
    80006b1c:	02e7e7bb          	remw	a5,a5,a4
    80006b20:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006b24:	0284b503          	ld	a0,40(s1)
    80006b28:	ffffb097          	auipc	ra,0xffffb
    80006b2c:	a70080e7          	jalr	-1424(ra) # 80001598 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006b30:	0184b503          	ld	a0,24(s1)
    80006b34:	ffffb097          	auipc	ra,0xffffb
    80006b38:	a64080e7          	jalr	-1436(ra) # 80001598 <_Z10sem_signalP3Sem>

    return ret;
}
    80006b3c:	00090513          	mv	a0,s2
    80006b40:	01813083          	ld	ra,24(sp)
    80006b44:	01013403          	ld	s0,16(sp)
    80006b48:	00813483          	ld	s1,8(sp)
    80006b4c:	00013903          	ld	s2,0(sp)
    80006b50:	02010113          	addi	sp,sp,32
    80006b54:	00008067          	ret

0000000080006b58 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b58:	fe010113          	addi	sp,sp,-32
    80006b5c:	00113c23          	sd	ra,24(sp)
    80006b60:	00813823          	sd	s0,16(sp)
    80006b64:	00913423          	sd	s1,8(sp)
    80006b68:	01213023          	sd	s2,0(sp)
    80006b6c:	02010413          	addi	s0,sp,32
    80006b70:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b74:	02853503          	ld	a0,40(a0)
    80006b78:	ffffb097          	auipc	ra,0xffffb
    80006b7c:	93c080e7          	jalr	-1732(ra) # 800014b4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006b80:	0304b503          	ld	a0,48(s1)
    80006b84:	ffffb097          	auipc	ra,0xffffb
    80006b88:	930080e7          	jalr	-1744(ra) # 800014b4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006b8c:	0144a783          	lw	a5,20(s1)
    80006b90:	0104a903          	lw	s2,16(s1)
    80006b94:	0327ce63          	blt	a5,s2,80006bd0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b9c:	0304b503          	ld	a0,48(s1)
    80006ba0:	ffffb097          	auipc	ra,0xffffb
    80006ba4:	9f8080e7          	jalr	-1544(ra) # 80001598 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006ba8:	0284b503          	ld	a0,40(s1)
    80006bac:	ffffb097          	auipc	ra,0xffffb
    80006bb0:	9ec080e7          	jalr	-1556(ra) # 80001598 <_Z10sem_signalP3Sem>

    return ret;
}
    80006bb4:	00090513          	mv	a0,s2
    80006bb8:	01813083          	ld	ra,24(sp)
    80006bbc:	01013403          	ld	s0,16(sp)
    80006bc0:	00813483          	ld	s1,8(sp)
    80006bc4:	00013903          	ld	s2,0(sp)
    80006bc8:	02010113          	addi	sp,sp,32
    80006bcc:	00008067          	ret
        ret = cap - head + tail;
    80006bd0:	0004a703          	lw	a4,0(s1)
    80006bd4:	4127093b          	subw	s2,a4,s2
    80006bd8:	00f9093b          	addw	s2,s2,a5
    80006bdc:	fc1ff06f          	j	80006b9c <_ZN6Buffer6getCntEv+0x44>

0000000080006be0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006be0:	fe010113          	addi	sp,sp,-32
    80006be4:	00113c23          	sd	ra,24(sp)
    80006be8:	00813823          	sd	s0,16(sp)
    80006bec:	00913423          	sd	s1,8(sp)
    80006bf0:	02010413          	addi	s0,sp,32
    80006bf4:	00050493          	mv	s1,a0
    putc('\n');
    80006bf8:	00a00513          	li	a0,10
    80006bfc:	ffffb097          	auipc	ra,0xffffb
    80006c00:	a80080e7          	jalr	-1408(ra) # 8000167c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006c04:	00002517          	auipc	a0,0x2
    80006c08:	71c50513          	addi	a0,a0,1820 # 80009320 <CONSOLE_STATUS+0x310>
    80006c0c:	fffff097          	auipc	ra,0xfffff
    80006c10:	e64080e7          	jalr	-412(ra) # 80005a70 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c14:	00048513          	mv	a0,s1
    80006c18:	00000097          	auipc	ra,0x0
    80006c1c:	f40080e7          	jalr	-192(ra) # 80006b58 <_ZN6Buffer6getCntEv>
    80006c20:	02a05c63          	blez	a0,80006c58 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c24:	0084b783          	ld	a5,8(s1)
    80006c28:	0104a703          	lw	a4,16(s1)
    80006c2c:	00271713          	slli	a4,a4,0x2
    80006c30:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c34:	0007c503          	lbu	a0,0(a5)
    80006c38:	ffffb097          	auipc	ra,0xffffb
    80006c3c:	a44080e7          	jalr	-1468(ra) # 8000167c <_Z4putcc>
        head = (head + 1) % cap;
    80006c40:	0104a783          	lw	a5,16(s1)
    80006c44:	0017879b          	addiw	a5,a5,1
    80006c48:	0004a703          	lw	a4,0(s1)
    80006c4c:	02e7e7bb          	remw	a5,a5,a4
    80006c50:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c54:	fc1ff06f          	j	80006c14 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c58:	02100513          	li	a0,33
    80006c5c:	ffffb097          	auipc	ra,0xffffb
    80006c60:	a20080e7          	jalr	-1504(ra) # 8000167c <_Z4putcc>
    putc('\n');
    80006c64:	00a00513          	li	a0,10
    80006c68:	ffffb097          	auipc	ra,0xffffb
    80006c6c:	a14080e7          	jalr	-1516(ra) # 8000167c <_Z4putcc>
    mem_free(buffer);
    80006c70:	0084b503          	ld	a0,8(s1)
    80006c74:	ffffa097          	auipc	ra,0xffffa
    80006c78:	63c080e7          	jalr	1596(ra) # 800012b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c7c:	0204b503          	ld	a0,32(s1)
    80006c80:	ffffa097          	auipc	ra,0xffffa
    80006c84:	7dc080e7          	jalr	2012(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80006c88:	0184b503          	ld	a0,24(s1)
    80006c8c:	ffffa097          	auipc	ra,0xffffa
    80006c90:	7d0080e7          	jalr	2000(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006c94:	0304b503          	ld	a0,48(s1)
    80006c98:	ffffa097          	auipc	ra,0xffffa
    80006c9c:	7c4080e7          	jalr	1988(ra) # 8000145c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006ca0:	0284b503          	ld	a0,40(s1)
    80006ca4:	ffffa097          	auipc	ra,0xffffa
    80006ca8:	7b8080e7          	jalr	1976(ra) # 8000145c <_Z9sem_closeP3Sem>
}
    80006cac:	01813083          	ld	ra,24(sp)
    80006cb0:	01013403          	ld	s0,16(sp)
    80006cb4:	00813483          	ld	s1,8(sp)
    80006cb8:	02010113          	addi	sp,sp,32
    80006cbc:	00008067          	ret

0000000080006cc0 <start>:
    80006cc0:	ff010113          	addi	sp,sp,-16
    80006cc4:	00813423          	sd	s0,8(sp)
    80006cc8:	01010413          	addi	s0,sp,16
    80006ccc:	300027f3          	csrr	a5,mstatus
    80006cd0:	ffffe737          	lui	a4,0xffffe
    80006cd4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17ef>
    80006cd8:	00e7f7b3          	and	a5,a5,a4
    80006cdc:	00001737          	lui	a4,0x1
    80006ce0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006ce4:	00e7e7b3          	or	a5,a5,a4
    80006ce8:	30079073          	csrw	mstatus,a5
    80006cec:	00000797          	auipc	a5,0x0
    80006cf0:	16078793          	addi	a5,a5,352 # 80006e4c <system_main>
    80006cf4:	34179073          	csrw	mepc,a5
    80006cf8:	00000793          	li	a5,0
    80006cfc:	18079073          	csrw	satp,a5
    80006d00:	000107b7          	lui	a5,0x10
    80006d04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006d08:	30279073          	csrw	medeleg,a5
    80006d0c:	30379073          	csrw	mideleg,a5
    80006d10:	104027f3          	csrr	a5,sie
    80006d14:	2227e793          	ori	a5,a5,546
    80006d18:	10479073          	csrw	sie,a5
    80006d1c:	fff00793          	li	a5,-1
    80006d20:	00a7d793          	srli	a5,a5,0xa
    80006d24:	3b079073          	csrw	pmpaddr0,a5
    80006d28:	00f00793          	li	a5,15
    80006d2c:	3a079073          	csrw	pmpcfg0,a5
    80006d30:	f14027f3          	csrr	a5,mhartid
    80006d34:	0200c737          	lui	a4,0x200c
    80006d38:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d3c:	0007869b          	sext.w	a3,a5
    80006d40:	00269713          	slli	a4,a3,0x2
    80006d44:	000f4637          	lui	a2,0xf4
    80006d48:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d4c:	00d70733          	add	a4,a4,a3
    80006d50:	0037979b          	slliw	a5,a5,0x3
    80006d54:	020046b7          	lui	a3,0x2004
    80006d58:	00d787b3          	add	a5,a5,a3
    80006d5c:	00c585b3          	add	a1,a1,a2
    80006d60:	00371693          	slli	a3,a4,0x3
    80006d64:	00005717          	auipc	a4,0x5
    80006d68:	04c70713          	addi	a4,a4,76 # 8000bdb0 <timer_scratch>
    80006d6c:	00b7b023          	sd	a1,0(a5)
    80006d70:	00d70733          	add	a4,a4,a3
    80006d74:	00f73c23          	sd	a5,24(a4)
    80006d78:	02c73023          	sd	a2,32(a4)
    80006d7c:	34071073          	csrw	mscratch,a4
    80006d80:	00000797          	auipc	a5,0x0
    80006d84:	6e078793          	addi	a5,a5,1760 # 80007460 <timervec>
    80006d88:	30579073          	csrw	mtvec,a5
    80006d8c:	300027f3          	csrr	a5,mstatus
    80006d90:	0087e793          	ori	a5,a5,8
    80006d94:	30079073          	csrw	mstatus,a5
    80006d98:	304027f3          	csrr	a5,mie
    80006d9c:	0807e793          	ori	a5,a5,128
    80006da0:	30479073          	csrw	mie,a5
    80006da4:	f14027f3          	csrr	a5,mhartid
    80006da8:	0007879b          	sext.w	a5,a5
    80006dac:	00078213          	mv	tp,a5
    80006db0:	30200073          	mret
    80006db4:	00813403          	ld	s0,8(sp)
    80006db8:	01010113          	addi	sp,sp,16
    80006dbc:	00008067          	ret

0000000080006dc0 <timerinit>:
    80006dc0:	ff010113          	addi	sp,sp,-16
    80006dc4:	00813423          	sd	s0,8(sp)
    80006dc8:	01010413          	addi	s0,sp,16
    80006dcc:	f14027f3          	csrr	a5,mhartid
    80006dd0:	0200c737          	lui	a4,0x200c
    80006dd4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006dd8:	0007869b          	sext.w	a3,a5
    80006ddc:	00269713          	slli	a4,a3,0x2
    80006de0:	000f4637          	lui	a2,0xf4
    80006de4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006de8:	00d70733          	add	a4,a4,a3
    80006dec:	0037979b          	slliw	a5,a5,0x3
    80006df0:	020046b7          	lui	a3,0x2004
    80006df4:	00d787b3          	add	a5,a5,a3
    80006df8:	00c585b3          	add	a1,a1,a2
    80006dfc:	00371693          	slli	a3,a4,0x3
    80006e00:	00005717          	auipc	a4,0x5
    80006e04:	fb070713          	addi	a4,a4,-80 # 8000bdb0 <timer_scratch>
    80006e08:	00b7b023          	sd	a1,0(a5)
    80006e0c:	00d70733          	add	a4,a4,a3
    80006e10:	00f73c23          	sd	a5,24(a4)
    80006e14:	02c73023          	sd	a2,32(a4)
    80006e18:	34071073          	csrw	mscratch,a4
    80006e1c:	00000797          	auipc	a5,0x0
    80006e20:	64478793          	addi	a5,a5,1604 # 80007460 <timervec>
    80006e24:	30579073          	csrw	mtvec,a5
    80006e28:	300027f3          	csrr	a5,mstatus
    80006e2c:	0087e793          	ori	a5,a5,8
    80006e30:	30079073          	csrw	mstatus,a5
    80006e34:	304027f3          	csrr	a5,mie
    80006e38:	0807e793          	ori	a5,a5,128
    80006e3c:	30479073          	csrw	mie,a5
    80006e40:	00813403          	ld	s0,8(sp)
    80006e44:	01010113          	addi	sp,sp,16
    80006e48:	00008067          	ret

0000000080006e4c <system_main>:
    80006e4c:	fe010113          	addi	sp,sp,-32
    80006e50:	00813823          	sd	s0,16(sp)
    80006e54:	00913423          	sd	s1,8(sp)
    80006e58:	00113c23          	sd	ra,24(sp)
    80006e5c:	02010413          	addi	s0,sp,32
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	0c4080e7          	jalr	196(ra) # 80006f24 <cpuid>
    80006e68:	00005497          	auipc	s1,0x5
    80006e6c:	e3848493          	addi	s1,s1,-456 # 8000bca0 <started>
    80006e70:	02050263          	beqz	a0,80006e94 <system_main+0x48>
    80006e74:	0004a783          	lw	a5,0(s1)
    80006e78:	0007879b          	sext.w	a5,a5
    80006e7c:	fe078ce3          	beqz	a5,80006e74 <system_main+0x28>
    80006e80:	0ff0000f          	fence
    80006e84:	00002517          	auipc	a0,0x2
    80006e88:	76c50513          	addi	a0,a0,1900 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	a70080e7          	jalr	-1424(ra) # 800078fc <panic>
    80006e94:	00001097          	auipc	ra,0x1
    80006e98:	9c4080e7          	jalr	-1596(ra) # 80007858 <consoleinit>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	150080e7          	jalr	336(ra) # 80007fec <printfinit>
    80006ea4:	00002517          	auipc	a0,0x2
    80006ea8:	5d450513          	addi	a0,a0,1492 # 80009478 <CONSOLE_STATUS+0x468>
    80006eac:	00001097          	auipc	ra,0x1
    80006eb0:	aac080e7          	jalr	-1364(ra) # 80007958 <__printf>
    80006eb4:	00002517          	auipc	a0,0x2
    80006eb8:	70c50513          	addi	a0,a0,1804 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	a9c080e7          	jalr	-1380(ra) # 80007958 <__printf>
    80006ec4:	00002517          	auipc	a0,0x2
    80006ec8:	5b450513          	addi	a0,a0,1460 # 80009478 <CONSOLE_STATUS+0x468>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	a8c080e7          	jalr	-1396(ra) # 80007958 <__printf>
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	4a4080e7          	jalr	1188(ra) # 80008378 <kinit>
    80006edc:	00000097          	auipc	ra,0x0
    80006ee0:	148080e7          	jalr	328(ra) # 80007024 <trapinit>
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	16c080e7          	jalr	364(ra) # 80007050 <trapinithart>
    80006eec:	00000097          	auipc	ra,0x0
    80006ef0:	5b4080e7          	jalr	1460(ra) # 800074a0 <plicinit>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	5d4080e7          	jalr	1492(ra) # 800074c8 <plicinithart>
    80006efc:	00000097          	auipc	ra,0x0
    80006f00:	078080e7          	jalr	120(ra) # 80006f74 <userinit>
    80006f04:	0ff0000f          	fence
    80006f08:	00100793          	li	a5,1
    80006f0c:	00002517          	auipc	a0,0x2
    80006f10:	6cc50513          	addi	a0,a0,1740 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006f14:	00f4a023          	sw	a5,0(s1)
    80006f18:	00001097          	auipc	ra,0x1
    80006f1c:	a40080e7          	jalr	-1472(ra) # 80007958 <__printf>
    80006f20:	0000006f          	j	80006f20 <system_main+0xd4>

0000000080006f24 <cpuid>:
    80006f24:	ff010113          	addi	sp,sp,-16
    80006f28:	00813423          	sd	s0,8(sp)
    80006f2c:	01010413          	addi	s0,sp,16
    80006f30:	00020513          	mv	a0,tp
    80006f34:	00813403          	ld	s0,8(sp)
    80006f38:	0005051b          	sext.w	a0,a0
    80006f3c:	01010113          	addi	sp,sp,16
    80006f40:	00008067          	ret

0000000080006f44 <mycpu>:
    80006f44:	ff010113          	addi	sp,sp,-16
    80006f48:	00813423          	sd	s0,8(sp)
    80006f4c:	01010413          	addi	s0,sp,16
    80006f50:	00020793          	mv	a5,tp
    80006f54:	00813403          	ld	s0,8(sp)
    80006f58:	0007879b          	sext.w	a5,a5
    80006f5c:	00779793          	slli	a5,a5,0x7
    80006f60:	00006517          	auipc	a0,0x6
    80006f64:	e8050513          	addi	a0,a0,-384 # 8000cde0 <cpus>
    80006f68:	00f50533          	add	a0,a0,a5
    80006f6c:	01010113          	addi	sp,sp,16
    80006f70:	00008067          	ret

0000000080006f74 <userinit>:
    80006f74:	ff010113          	addi	sp,sp,-16
    80006f78:	00813423          	sd	s0,8(sp)
    80006f7c:	01010413          	addi	s0,sp,16
    80006f80:	00813403          	ld	s0,8(sp)
    80006f84:	01010113          	addi	sp,sp,16
    80006f88:	ffffb317          	auipc	t1,0xffffb
    80006f8c:	09c30067          	jr	156(t1) # 80002024 <main>

0000000080006f90 <either_copyout>:
    80006f90:	ff010113          	addi	sp,sp,-16
    80006f94:	00813023          	sd	s0,0(sp)
    80006f98:	00113423          	sd	ra,8(sp)
    80006f9c:	01010413          	addi	s0,sp,16
    80006fa0:	02051663          	bnez	a0,80006fcc <either_copyout+0x3c>
    80006fa4:	00058513          	mv	a0,a1
    80006fa8:	00060593          	mv	a1,a2
    80006fac:	0006861b          	sext.w	a2,a3
    80006fb0:	00002097          	auipc	ra,0x2
    80006fb4:	c54080e7          	jalr	-940(ra) # 80008c04 <__memmove>
    80006fb8:	00813083          	ld	ra,8(sp)
    80006fbc:	00013403          	ld	s0,0(sp)
    80006fc0:	00000513          	li	a0,0
    80006fc4:	01010113          	addi	sp,sp,16
    80006fc8:	00008067          	ret
    80006fcc:	00002517          	auipc	a0,0x2
    80006fd0:	64c50513          	addi	a0,a0,1612 # 80009618 <CONSOLE_STATUS+0x608>
    80006fd4:	00001097          	auipc	ra,0x1
    80006fd8:	928080e7          	jalr	-1752(ra) # 800078fc <panic>

0000000080006fdc <either_copyin>:
    80006fdc:	ff010113          	addi	sp,sp,-16
    80006fe0:	00813023          	sd	s0,0(sp)
    80006fe4:	00113423          	sd	ra,8(sp)
    80006fe8:	01010413          	addi	s0,sp,16
    80006fec:	02059463          	bnez	a1,80007014 <either_copyin+0x38>
    80006ff0:	00060593          	mv	a1,a2
    80006ff4:	0006861b          	sext.w	a2,a3
    80006ff8:	00002097          	auipc	ra,0x2
    80006ffc:	c0c080e7          	jalr	-1012(ra) # 80008c04 <__memmove>
    80007000:	00813083          	ld	ra,8(sp)
    80007004:	00013403          	ld	s0,0(sp)
    80007008:	00000513          	li	a0,0
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00008067          	ret
    80007014:	00002517          	auipc	a0,0x2
    80007018:	62c50513          	addi	a0,a0,1580 # 80009640 <CONSOLE_STATUS+0x630>
    8000701c:	00001097          	auipc	ra,0x1
    80007020:	8e0080e7          	jalr	-1824(ra) # 800078fc <panic>

0000000080007024 <trapinit>:
    80007024:	ff010113          	addi	sp,sp,-16
    80007028:	00813423          	sd	s0,8(sp)
    8000702c:	01010413          	addi	s0,sp,16
    80007030:	00813403          	ld	s0,8(sp)
    80007034:	00002597          	auipc	a1,0x2
    80007038:	63458593          	addi	a1,a1,1588 # 80009668 <CONSOLE_STATUS+0x658>
    8000703c:	00006517          	auipc	a0,0x6
    80007040:	e2450513          	addi	a0,a0,-476 # 8000ce60 <tickslock>
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00001317          	auipc	t1,0x1
    8000704c:	5c030067          	jr	1472(t1) # 80008608 <initlock>

0000000080007050 <trapinithart>:
    80007050:	ff010113          	addi	sp,sp,-16
    80007054:	00813423          	sd	s0,8(sp)
    80007058:	01010413          	addi	s0,sp,16
    8000705c:	00000797          	auipc	a5,0x0
    80007060:	2f478793          	addi	a5,a5,756 # 80007350 <kernelvec>
    80007064:	10579073          	csrw	stvec,a5
    80007068:	00813403          	ld	s0,8(sp)
    8000706c:	01010113          	addi	sp,sp,16
    80007070:	00008067          	ret

0000000080007074 <usertrap>:
    80007074:	ff010113          	addi	sp,sp,-16
    80007078:	00813423          	sd	s0,8(sp)
    8000707c:	01010413          	addi	s0,sp,16
    80007080:	00813403          	ld	s0,8(sp)
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00008067          	ret

000000008000708c <usertrapret>:
    8000708c:	ff010113          	addi	sp,sp,-16
    80007090:	00813423          	sd	s0,8(sp)
    80007094:	01010413          	addi	s0,sp,16
    80007098:	00813403          	ld	s0,8(sp)
    8000709c:	01010113          	addi	sp,sp,16
    800070a0:	00008067          	ret

00000000800070a4 <kerneltrap>:
    800070a4:	fe010113          	addi	sp,sp,-32
    800070a8:	00813823          	sd	s0,16(sp)
    800070ac:	00113c23          	sd	ra,24(sp)
    800070b0:	00913423          	sd	s1,8(sp)
    800070b4:	02010413          	addi	s0,sp,32
    800070b8:	142025f3          	csrr	a1,scause
    800070bc:	100027f3          	csrr	a5,sstatus
    800070c0:	0027f793          	andi	a5,a5,2
    800070c4:	10079c63          	bnez	a5,800071dc <kerneltrap+0x138>
    800070c8:	142027f3          	csrr	a5,scause
    800070cc:	0207ce63          	bltz	a5,80007108 <kerneltrap+0x64>
    800070d0:	00002517          	auipc	a0,0x2
    800070d4:	5e050513          	addi	a0,a0,1504 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800070d8:	00001097          	auipc	ra,0x1
    800070dc:	880080e7          	jalr	-1920(ra) # 80007958 <__printf>
    800070e0:	141025f3          	csrr	a1,sepc
    800070e4:	14302673          	csrr	a2,stval
    800070e8:	00002517          	auipc	a0,0x2
    800070ec:	5d850513          	addi	a0,a0,1496 # 800096c0 <CONSOLE_STATUS+0x6b0>
    800070f0:	00001097          	auipc	ra,0x1
    800070f4:	868080e7          	jalr	-1944(ra) # 80007958 <__printf>
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	5e050513          	addi	a0,a0,1504 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007100:	00000097          	auipc	ra,0x0
    80007104:	7fc080e7          	jalr	2044(ra) # 800078fc <panic>
    80007108:	0ff7f713          	andi	a4,a5,255
    8000710c:	00900693          	li	a3,9
    80007110:	04d70063          	beq	a4,a3,80007150 <kerneltrap+0xac>
    80007114:	fff00713          	li	a4,-1
    80007118:	03f71713          	slli	a4,a4,0x3f
    8000711c:	00170713          	addi	a4,a4,1
    80007120:	fae798e3          	bne	a5,a4,800070d0 <kerneltrap+0x2c>
    80007124:	00000097          	auipc	ra,0x0
    80007128:	e00080e7          	jalr	-512(ra) # 80006f24 <cpuid>
    8000712c:	06050663          	beqz	a0,80007198 <kerneltrap+0xf4>
    80007130:	144027f3          	csrr	a5,sip
    80007134:	ffd7f793          	andi	a5,a5,-3
    80007138:	14479073          	csrw	sip,a5
    8000713c:	01813083          	ld	ra,24(sp)
    80007140:	01013403          	ld	s0,16(sp)
    80007144:	00813483          	ld	s1,8(sp)
    80007148:	02010113          	addi	sp,sp,32
    8000714c:	00008067          	ret
    80007150:	00000097          	auipc	ra,0x0
    80007154:	3c4080e7          	jalr	964(ra) # 80007514 <plic_claim>
    80007158:	00a00793          	li	a5,10
    8000715c:	00050493          	mv	s1,a0
    80007160:	06f50863          	beq	a0,a5,800071d0 <kerneltrap+0x12c>
    80007164:	fc050ce3          	beqz	a0,8000713c <kerneltrap+0x98>
    80007168:	00050593          	mv	a1,a0
    8000716c:	00002517          	auipc	a0,0x2
    80007170:	52450513          	addi	a0,a0,1316 # 80009690 <CONSOLE_STATUS+0x680>
    80007174:	00000097          	auipc	ra,0x0
    80007178:	7e4080e7          	jalr	2020(ra) # 80007958 <__printf>
    8000717c:	01013403          	ld	s0,16(sp)
    80007180:	01813083          	ld	ra,24(sp)
    80007184:	00048513          	mv	a0,s1
    80007188:	00813483          	ld	s1,8(sp)
    8000718c:	02010113          	addi	sp,sp,32
    80007190:	00000317          	auipc	t1,0x0
    80007194:	3bc30067          	jr	956(t1) # 8000754c <plic_complete>
    80007198:	00006517          	auipc	a0,0x6
    8000719c:	cc850513          	addi	a0,a0,-824 # 8000ce60 <tickslock>
    800071a0:	00001097          	auipc	ra,0x1
    800071a4:	48c080e7          	jalr	1164(ra) # 8000862c <acquire>
    800071a8:	00005717          	auipc	a4,0x5
    800071ac:	afc70713          	addi	a4,a4,-1284 # 8000bca4 <ticks>
    800071b0:	00072783          	lw	a5,0(a4)
    800071b4:	00006517          	auipc	a0,0x6
    800071b8:	cac50513          	addi	a0,a0,-852 # 8000ce60 <tickslock>
    800071bc:	0017879b          	addiw	a5,a5,1
    800071c0:	00f72023          	sw	a5,0(a4)
    800071c4:	00001097          	auipc	ra,0x1
    800071c8:	534080e7          	jalr	1332(ra) # 800086f8 <release>
    800071cc:	f65ff06f          	j	80007130 <kerneltrap+0x8c>
    800071d0:	00001097          	auipc	ra,0x1
    800071d4:	090080e7          	jalr	144(ra) # 80008260 <uartintr>
    800071d8:	fa5ff06f          	j	8000717c <kerneltrap+0xd8>
    800071dc:	00002517          	auipc	a0,0x2
    800071e0:	49450513          	addi	a0,a0,1172 # 80009670 <CONSOLE_STATUS+0x660>
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	718080e7          	jalr	1816(ra) # 800078fc <panic>

00000000800071ec <clockintr>:
    800071ec:	fe010113          	addi	sp,sp,-32
    800071f0:	00813823          	sd	s0,16(sp)
    800071f4:	00913423          	sd	s1,8(sp)
    800071f8:	00113c23          	sd	ra,24(sp)
    800071fc:	02010413          	addi	s0,sp,32
    80007200:	00006497          	auipc	s1,0x6
    80007204:	c6048493          	addi	s1,s1,-928 # 8000ce60 <tickslock>
    80007208:	00048513          	mv	a0,s1
    8000720c:	00001097          	auipc	ra,0x1
    80007210:	420080e7          	jalr	1056(ra) # 8000862c <acquire>
    80007214:	00005717          	auipc	a4,0x5
    80007218:	a9070713          	addi	a4,a4,-1392 # 8000bca4 <ticks>
    8000721c:	00072783          	lw	a5,0(a4)
    80007220:	01013403          	ld	s0,16(sp)
    80007224:	01813083          	ld	ra,24(sp)
    80007228:	00048513          	mv	a0,s1
    8000722c:	0017879b          	addiw	a5,a5,1
    80007230:	00813483          	ld	s1,8(sp)
    80007234:	00f72023          	sw	a5,0(a4)
    80007238:	02010113          	addi	sp,sp,32
    8000723c:	00001317          	auipc	t1,0x1
    80007240:	4bc30067          	jr	1212(t1) # 800086f8 <release>

0000000080007244 <devintr>:
    80007244:	142027f3          	csrr	a5,scause
    80007248:	00000513          	li	a0,0
    8000724c:	0007c463          	bltz	a5,80007254 <devintr+0x10>
    80007250:	00008067          	ret
    80007254:	fe010113          	addi	sp,sp,-32
    80007258:	00813823          	sd	s0,16(sp)
    8000725c:	00113c23          	sd	ra,24(sp)
    80007260:	00913423          	sd	s1,8(sp)
    80007264:	02010413          	addi	s0,sp,32
    80007268:	0ff7f713          	andi	a4,a5,255
    8000726c:	00900693          	li	a3,9
    80007270:	04d70c63          	beq	a4,a3,800072c8 <devintr+0x84>
    80007274:	fff00713          	li	a4,-1
    80007278:	03f71713          	slli	a4,a4,0x3f
    8000727c:	00170713          	addi	a4,a4,1
    80007280:	00e78c63          	beq	a5,a4,80007298 <devintr+0x54>
    80007284:	01813083          	ld	ra,24(sp)
    80007288:	01013403          	ld	s0,16(sp)
    8000728c:	00813483          	ld	s1,8(sp)
    80007290:	02010113          	addi	sp,sp,32
    80007294:	00008067          	ret
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	c8c080e7          	jalr	-884(ra) # 80006f24 <cpuid>
    800072a0:	06050663          	beqz	a0,8000730c <devintr+0xc8>
    800072a4:	144027f3          	csrr	a5,sip
    800072a8:	ffd7f793          	andi	a5,a5,-3
    800072ac:	14479073          	csrw	sip,a5
    800072b0:	01813083          	ld	ra,24(sp)
    800072b4:	01013403          	ld	s0,16(sp)
    800072b8:	00813483          	ld	s1,8(sp)
    800072bc:	00200513          	li	a0,2
    800072c0:	02010113          	addi	sp,sp,32
    800072c4:	00008067          	ret
    800072c8:	00000097          	auipc	ra,0x0
    800072cc:	24c080e7          	jalr	588(ra) # 80007514 <plic_claim>
    800072d0:	00a00793          	li	a5,10
    800072d4:	00050493          	mv	s1,a0
    800072d8:	06f50663          	beq	a0,a5,80007344 <devintr+0x100>
    800072dc:	00100513          	li	a0,1
    800072e0:	fa0482e3          	beqz	s1,80007284 <devintr+0x40>
    800072e4:	00048593          	mv	a1,s1
    800072e8:	00002517          	auipc	a0,0x2
    800072ec:	3a850513          	addi	a0,a0,936 # 80009690 <CONSOLE_STATUS+0x680>
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	668080e7          	jalr	1640(ra) # 80007958 <__printf>
    800072f8:	00048513          	mv	a0,s1
    800072fc:	00000097          	auipc	ra,0x0
    80007300:	250080e7          	jalr	592(ra) # 8000754c <plic_complete>
    80007304:	00100513          	li	a0,1
    80007308:	f7dff06f          	j	80007284 <devintr+0x40>
    8000730c:	00006517          	auipc	a0,0x6
    80007310:	b5450513          	addi	a0,a0,-1196 # 8000ce60 <tickslock>
    80007314:	00001097          	auipc	ra,0x1
    80007318:	318080e7          	jalr	792(ra) # 8000862c <acquire>
    8000731c:	00005717          	auipc	a4,0x5
    80007320:	98870713          	addi	a4,a4,-1656 # 8000bca4 <ticks>
    80007324:	00072783          	lw	a5,0(a4)
    80007328:	00006517          	auipc	a0,0x6
    8000732c:	b3850513          	addi	a0,a0,-1224 # 8000ce60 <tickslock>
    80007330:	0017879b          	addiw	a5,a5,1
    80007334:	00f72023          	sw	a5,0(a4)
    80007338:	00001097          	auipc	ra,0x1
    8000733c:	3c0080e7          	jalr	960(ra) # 800086f8 <release>
    80007340:	f65ff06f          	j	800072a4 <devintr+0x60>
    80007344:	00001097          	auipc	ra,0x1
    80007348:	f1c080e7          	jalr	-228(ra) # 80008260 <uartintr>
    8000734c:	fadff06f          	j	800072f8 <devintr+0xb4>

0000000080007350 <kernelvec>:
    80007350:	f0010113          	addi	sp,sp,-256
    80007354:	00113023          	sd	ra,0(sp)
    80007358:	00213423          	sd	sp,8(sp)
    8000735c:	00313823          	sd	gp,16(sp)
    80007360:	00413c23          	sd	tp,24(sp)
    80007364:	02513023          	sd	t0,32(sp)
    80007368:	02613423          	sd	t1,40(sp)
    8000736c:	02713823          	sd	t2,48(sp)
    80007370:	02813c23          	sd	s0,56(sp)
    80007374:	04913023          	sd	s1,64(sp)
    80007378:	04a13423          	sd	a0,72(sp)
    8000737c:	04b13823          	sd	a1,80(sp)
    80007380:	04c13c23          	sd	a2,88(sp)
    80007384:	06d13023          	sd	a3,96(sp)
    80007388:	06e13423          	sd	a4,104(sp)
    8000738c:	06f13823          	sd	a5,112(sp)
    80007390:	07013c23          	sd	a6,120(sp)
    80007394:	09113023          	sd	a7,128(sp)
    80007398:	09213423          	sd	s2,136(sp)
    8000739c:	09313823          	sd	s3,144(sp)
    800073a0:	09413c23          	sd	s4,152(sp)
    800073a4:	0b513023          	sd	s5,160(sp)
    800073a8:	0b613423          	sd	s6,168(sp)
    800073ac:	0b713823          	sd	s7,176(sp)
    800073b0:	0b813c23          	sd	s8,184(sp)
    800073b4:	0d913023          	sd	s9,192(sp)
    800073b8:	0da13423          	sd	s10,200(sp)
    800073bc:	0db13823          	sd	s11,208(sp)
    800073c0:	0dc13c23          	sd	t3,216(sp)
    800073c4:	0fd13023          	sd	t4,224(sp)
    800073c8:	0fe13423          	sd	t5,232(sp)
    800073cc:	0ff13823          	sd	t6,240(sp)
    800073d0:	cd5ff0ef          	jal	ra,800070a4 <kerneltrap>
    800073d4:	00013083          	ld	ra,0(sp)
    800073d8:	00813103          	ld	sp,8(sp)
    800073dc:	01013183          	ld	gp,16(sp)
    800073e0:	02013283          	ld	t0,32(sp)
    800073e4:	02813303          	ld	t1,40(sp)
    800073e8:	03013383          	ld	t2,48(sp)
    800073ec:	03813403          	ld	s0,56(sp)
    800073f0:	04013483          	ld	s1,64(sp)
    800073f4:	04813503          	ld	a0,72(sp)
    800073f8:	05013583          	ld	a1,80(sp)
    800073fc:	05813603          	ld	a2,88(sp)
    80007400:	06013683          	ld	a3,96(sp)
    80007404:	06813703          	ld	a4,104(sp)
    80007408:	07013783          	ld	a5,112(sp)
    8000740c:	07813803          	ld	a6,120(sp)
    80007410:	08013883          	ld	a7,128(sp)
    80007414:	08813903          	ld	s2,136(sp)
    80007418:	09013983          	ld	s3,144(sp)
    8000741c:	09813a03          	ld	s4,152(sp)
    80007420:	0a013a83          	ld	s5,160(sp)
    80007424:	0a813b03          	ld	s6,168(sp)
    80007428:	0b013b83          	ld	s7,176(sp)
    8000742c:	0b813c03          	ld	s8,184(sp)
    80007430:	0c013c83          	ld	s9,192(sp)
    80007434:	0c813d03          	ld	s10,200(sp)
    80007438:	0d013d83          	ld	s11,208(sp)
    8000743c:	0d813e03          	ld	t3,216(sp)
    80007440:	0e013e83          	ld	t4,224(sp)
    80007444:	0e813f03          	ld	t5,232(sp)
    80007448:	0f013f83          	ld	t6,240(sp)
    8000744c:	10010113          	addi	sp,sp,256
    80007450:	10200073          	sret
    80007454:	00000013          	nop
    80007458:	00000013          	nop
    8000745c:	00000013          	nop

0000000080007460 <timervec>:
    80007460:	34051573          	csrrw	a0,mscratch,a0
    80007464:	00b53023          	sd	a1,0(a0)
    80007468:	00c53423          	sd	a2,8(a0)
    8000746c:	00d53823          	sd	a3,16(a0)
    80007470:	01853583          	ld	a1,24(a0)
    80007474:	02053603          	ld	a2,32(a0)
    80007478:	0005b683          	ld	a3,0(a1)
    8000747c:	00c686b3          	add	a3,a3,a2
    80007480:	00d5b023          	sd	a3,0(a1)
    80007484:	00200593          	li	a1,2
    80007488:	14459073          	csrw	sip,a1
    8000748c:	01053683          	ld	a3,16(a0)
    80007490:	00853603          	ld	a2,8(a0)
    80007494:	00053583          	ld	a1,0(a0)
    80007498:	34051573          	csrrw	a0,mscratch,a0
    8000749c:	30200073          	mret

00000000800074a0 <plicinit>:
    800074a0:	ff010113          	addi	sp,sp,-16
    800074a4:	00813423          	sd	s0,8(sp)
    800074a8:	01010413          	addi	s0,sp,16
    800074ac:	00813403          	ld	s0,8(sp)
    800074b0:	0c0007b7          	lui	a5,0xc000
    800074b4:	00100713          	li	a4,1
    800074b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800074bc:	00e7a223          	sw	a4,4(a5)
    800074c0:	01010113          	addi	sp,sp,16
    800074c4:	00008067          	ret

00000000800074c8 <plicinithart>:
    800074c8:	ff010113          	addi	sp,sp,-16
    800074cc:	00813023          	sd	s0,0(sp)
    800074d0:	00113423          	sd	ra,8(sp)
    800074d4:	01010413          	addi	s0,sp,16
    800074d8:	00000097          	auipc	ra,0x0
    800074dc:	a4c080e7          	jalr	-1460(ra) # 80006f24 <cpuid>
    800074e0:	0085171b          	slliw	a4,a0,0x8
    800074e4:	0c0027b7          	lui	a5,0xc002
    800074e8:	00e787b3          	add	a5,a5,a4
    800074ec:	40200713          	li	a4,1026
    800074f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074f4:	00813083          	ld	ra,8(sp)
    800074f8:	00013403          	ld	s0,0(sp)
    800074fc:	00d5151b          	slliw	a0,a0,0xd
    80007500:	0c2017b7          	lui	a5,0xc201
    80007504:	00a78533          	add	a0,a5,a0
    80007508:	00052023          	sw	zero,0(a0)
    8000750c:	01010113          	addi	sp,sp,16
    80007510:	00008067          	ret

0000000080007514 <plic_claim>:
    80007514:	ff010113          	addi	sp,sp,-16
    80007518:	00813023          	sd	s0,0(sp)
    8000751c:	00113423          	sd	ra,8(sp)
    80007520:	01010413          	addi	s0,sp,16
    80007524:	00000097          	auipc	ra,0x0
    80007528:	a00080e7          	jalr	-1536(ra) # 80006f24 <cpuid>
    8000752c:	00813083          	ld	ra,8(sp)
    80007530:	00013403          	ld	s0,0(sp)
    80007534:	00d5151b          	slliw	a0,a0,0xd
    80007538:	0c2017b7          	lui	a5,0xc201
    8000753c:	00a78533          	add	a0,a5,a0
    80007540:	00452503          	lw	a0,4(a0)
    80007544:	01010113          	addi	sp,sp,16
    80007548:	00008067          	ret

000000008000754c <plic_complete>:
    8000754c:	fe010113          	addi	sp,sp,-32
    80007550:	00813823          	sd	s0,16(sp)
    80007554:	00913423          	sd	s1,8(sp)
    80007558:	00113c23          	sd	ra,24(sp)
    8000755c:	02010413          	addi	s0,sp,32
    80007560:	00050493          	mv	s1,a0
    80007564:	00000097          	auipc	ra,0x0
    80007568:	9c0080e7          	jalr	-1600(ra) # 80006f24 <cpuid>
    8000756c:	01813083          	ld	ra,24(sp)
    80007570:	01013403          	ld	s0,16(sp)
    80007574:	00d5179b          	slliw	a5,a0,0xd
    80007578:	0c201737          	lui	a4,0xc201
    8000757c:	00f707b3          	add	a5,a4,a5
    80007580:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	02010113          	addi	sp,sp,32
    8000758c:	00008067          	ret

0000000080007590 <consolewrite>:
    80007590:	fb010113          	addi	sp,sp,-80
    80007594:	04813023          	sd	s0,64(sp)
    80007598:	04113423          	sd	ra,72(sp)
    8000759c:	02913c23          	sd	s1,56(sp)
    800075a0:	03213823          	sd	s2,48(sp)
    800075a4:	03313423          	sd	s3,40(sp)
    800075a8:	03413023          	sd	s4,32(sp)
    800075ac:	01513c23          	sd	s5,24(sp)
    800075b0:	05010413          	addi	s0,sp,80
    800075b4:	06c05c63          	blez	a2,8000762c <consolewrite+0x9c>
    800075b8:	00060993          	mv	s3,a2
    800075bc:	00050a13          	mv	s4,a0
    800075c0:	00058493          	mv	s1,a1
    800075c4:	00000913          	li	s2,0
    800075c8:	fff00a93          	li	s5,-1
    800075cc:	01c0006f          	j	800075e8 <consolewrite+0x58>
    800075d0:	fbf44503          	lbu	a0,-65(s0)
    800075d4:	0019091b          	addiw	s2,s2,1
    800075d8:	00148493          	addi	s1,s1,1
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	a9c080e7          	jalr	-1380(ra) # 80008078 <uartputc>
    800075e4:	03298063          	beq	s3,s2,80007604 <consolewrite+0x74>
    800075e8:	00048613          	mv	a2,s1
    800075ec:	00100693          	li	a3,1
    800075f0:	000a0593          	mv	a1,s4
    800075f4:	fbf40513          	addi	a0,s0,-65
    800075f8:	00000097          	auipc	ra,0x0
    800075fc:	9e4080e7          	jalr	-1564(ra) # 80006fdc <either_copyin>
    80007600:	fd5518e3          	bne	a0,s5,800075d0 <consolewrite+0x40>
    80007604:	04813083          	ld	ra,72(sp)
    80007608:	04013403          	ld	s0,64(sp)
    8000760c:	03813483          	ld	s1,56(sp)
    80007610:	02813983          	ld	s3,40(sp)
    80007614:	02013a03          	ld	s4,32(sp)
    80007618:	01813a83          	ld	s5,24(sp)
    8000761c:	00090513          	mv	a0,s2
    80007620:	03013903          	ld	s2,48(sp)
    80007624:	05010113          	addi	sp,sp,80
    80007628:	00008067          	ret
    8000762c:	00000913          	li	s2,0
    80007630:	fd5ff06f          	j	80007604 <consolewrite+0x74>

0000000080007634 <consoleread>:
    80007634:	f9010113          	addi	sp,sp,-112
    80007638:	06813023          	sd	s0,96(sp)
    8000763c:	04913c23          	sd	s1,88(sp)
    80007640:	05213823          	sd	s2,80(sp)
    80007644:	05313423          	sd	s3,72(sp)
    80007648:	05413023          	sd	s4,64(sp)
    8000764c:	03513c23          	sd	s5,56(sp)
    80007650:	03613823          	sd	s6,48(sp)
    80007654:	03713423          	sd	s7,40(sp)
    80007658:	03813023          	sd	s8,32(sp)
    8000765c:	06113423          	sd	ra,104(sp)
    80007660:	01913c23          	sd	s9,24(sp)
    80007664:	07010413          	addi	s0,sp,112
    80007668:	00060b93          	mv	s7,a2
    8000766c:	00050913          	mv	s2,a0
    80007670:	00058c13          	mv	s8,a1
    80007674:	00060b1b          	sext.w	s6,a2
    80007678:	00006497          	auipc	s1,0x6
    8000767c:	81048493          	addi	s1,s1,-2032 # 8000ce88 <cons>
    80007680:	00400993          	li	s3,4
    80007684:	fff00a13          	li	s4,-1
    80007688:	00a00a93          	li	s5,10
    8000768c:	05705e63          	blez	s7,800076e8 <consoleread+0xb4>
    80007690:	09c4a703          	lw	a4,156(s1)
    80007694:	0984a783          	lw	a5,152(s1)
    80007698:	0007071b          	sext.w	a4,a4
    8000769c:	08e78463          	beq	a5,a4,80007724 <consoleread+0xf0>
    800076a0:	07f7f713          	andi	a4,a5,127
    800076a4:	00e48733          	add	a4,s1,a4
    800076a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800076ac:	0017869b          	addiw	a3,a5,1
    800076b0:	08d4ac23          	sw	a3,152(s1)
    800076b4:	00070c9b          	sext.w	s9,a4
    800076b8:	0b370663          	beq	a4,s3,80007764 <consoleread+0x130>
    800076bc:	00100693          	li	a3,1
    800076c0:	f9f40613          	addi	a2,s0,-97
    800076c4:	000c0593          	mv	a1,s8
    800076c8:	00090513          	mv	a0,s2
    800076cc:	f8e40fa3          	sb	a4,-97(s0)
    800076d0:	00000097          	auipc	ra,0x0
    800076d4:	8c0080e7          	jalr	-1856(ra) # 80006f90 <either_copyout>
    800076d8:	01450863          	beq	a0,s4,800076e8 <consoleread+0xb4>
    800076dc:	001c0c13          	addi	s8,s8,1
    800076e0:	fffb8b9b          	addiw	s7,s7,-1
    800076e4:	fb5c94e3          	bne	s9,s5,8000768c <consoleread+0x58>
    800076e8:	000b851b          	sext.w	a0,s7
    800076ec:	06813083          	ld	ra,104(sp)
    800076f0:	06013403          	ld	s0,96(sp)
    800076f4:	05813483          	ld	s1,88(sp)
    800076f8:	05013903          	ld	s2,80(sp)
    800076fc:	04813983          	ld	s3,72(sp)
    80007700:	04013a03          	ld	s4,64(sp)
    80007704:	03813a83          	ld	s5,56(sp)
    80007708:	02813b83          	ld	s7,40(sp)
    8000770c:	02013c03          	ld	s8,32(sp)
    80007710:	01813c83          	ld	s9,24(sp)
    80007714:	40ab053b          	subw	a0,s6,a0
    80007718:	03013b03          	ld	s6,48(sp)
    8000771c:	07010113          	addi	sp,sp,112
    80007720:	00008067          	ret
    80007724:	00001097          	auipc	ra,0x1
    80007728:	1d8080e7          	jalr	472(ra) # 800088fc <push_on>
    8000772c:	0984a703          	lw	a4,152(s1)
    80007730:	09c4a783          	lw	a5,156(s1)
    80007734:	0007879b          	sext.w	a5,a5
    80007738:	fef70ce3          	beq	a4,a5,80007730 <consoleread+0xfc>
    8000773c:	00001097          	auipc	ra,0x1
    80007740:	234080e7          	jalr	564(ra) # 80008970 <pop_on>
    80007744:	0984a783          	lw	a5,152(s1)
    80007748:	07f7f713          	andi	a4,a5,127
    8000774c:	00e48733          	add	a4,s1,a4
    80007750:	01874703          	lbu	a4,24(a4)
    80007754:	0017869b          	addiw	a3,a5,1
    80007758:	08d4ac23          	sw	a3,152(s1)
    8000775c:	00070c9b          	sext.w	s9,a4
    80007760:	f5371ee3          	bne	a4,s3,800076bc <consoleread+0x88>
    80007764:	000b851b          	sext.w	a0,s7
    80007768:	f96bf2e3          	bgeu	s7,s6,800076ec <consoleread+0xb8>
    8000776c:	08f4ac23          	sw	a5,152(s1)
    80007770:	f7dff06f          	j	800076ec <consoleread+0xb8>

0000000080007774 <consputc>:
    80007774:	10000793          	li	a5,256
    80007778:	00f50663          	beq	a0,a5,80007784 <consputc+0x10>
    8000777c:	00001317          	auipc	t1,0x1
    80007780:	9f430067          	jr	-1548(t1) # 80008170 <uartputc_sync>
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00113423          	sd	ra,8(sp)
    8000778c:	00813023          	sd	s0,0(sp)
    80007790:	01010413          	addi	s0,sp,16
    80007794:	00800513          	li	a0,8
    80007798:	00001097          	auipc	ra,0x1
    8000779c:	9d8080e7          	jalr	-1576(ra) # 80008170 <uartputc_sync>
    800077a0:	02000513          	li	a0,32
    800077a4:	00001097          	auipc	ra,0x1
    800077a8:	9cc080e7          	jalr	-1588(ra) # 80008170 <uartputc_sync>
    800077ac:	00013403          	ld	s0,0(sp)
    800077b0:	00813083          	ld	ra,8(sp)
    800077b4:	00800513          	li	a0,8
    800077b8:	01010113          	addi	sp,sp,16
    800077bc:	00001317          	auipc	t1,0x1
    800077c0:	9b430067          	jr	-1612(t1) # 80008170 <uartputc_sync>

00000000800077c4 <consoleintr>:
    800077c4:	fe010113          	addi	sp,sp,-32
    800077c8:	00813823          	sd	s0,16(sp)
    800077cc:	00913423          	sd	s1,8(sp)
    800077d0:	01213023          	sd	s2,0(sp)
    800077d4:	00113c23          	sd	ra,24(sp)
    800077d8:	02010413          	addi	s0,sp,32
    800077dc:	00005917          	auipc	s2,0x5
    800077e0:	6ac90913          	addi	s2,s2,1708 # 8000ce88 <cons>
    800077e4:	00050493          	mv	s1,a0
    800077e8:	00090513          	mv	a0,s2
    800077ec:	00001097          	auipc	ra,0x1
    800077f0:	e40080e7          	jalr	-448(ra) # 8000862c <acquire>
    800077f4:	02048c63          	beqz	s1,8000782c <consoleintr+0x68>
    800077f8:	0a092783          	lw	a5,160(s2)
    800077fc:	09892703          	lw	a4,152(s2)
    80007800:	07f00693          	li	a3,127
    80007804:	40e7873b          	subw	a4,a5,a4
    80007808:	02e6e263          	bltu	a3,a4,8000782c <consoleintr+0x68>
    8000780c:	00d00713          	li	a4,13
    80007810:	04e48063          	beq	s1,a4,80007850 <consoleintr+0x8c>
    80007814:	07f7f713          	andi	a4,a5,127
    80007818:	00e90733          	add	a4,s2,a4
    8000781c:	0017879b          	addiw	a5,a5,1
    80007820:	0af92023          	sw	a5,160(s2)
    80007824:	00970c23          	sb	s1,24(a4)
    80007828:	08f92e23          	sw	a5,156(s2)
    8000782c:	01013403          	ld	s0,16(sp)
    80007830:	01813083          	ld	ra,24(sp)
    80007834:	00813483          	ld	s1,8(sp)
    80007838:	00013903          	ld	s2,0(sp)
    8000783c:	00005517          	auipc	a0,0x5
    80007840:	64c50513          	addi	a0,a0,1612 # 8000ce88 <cons>
    80007844:	02010113          	addi	sp,sp,32
    80007848:	00001317          	auipc	t1,0x1
    8000784c:	eb030067          	jr	-336(t1) # 800086f8 <release>
    80007850:	00a00493          	li	s1,10
    80007854:	fc1ff06f          	j	80007814 <consoleintr+0x50>

0000000080007858 <consoleinit>:
    80007858:	fe010113          	addi	sp,sp,-32
    8000785c:	00113c23          	sd	ra,24(sp)
    80007860:	00813823          	sd	s0,16(sp)
    80007864:	00913423          	sd	s1,8(sp)
    80007868:	02010413          	addi	s0,sp,32
    8000786c:	00005497          	auipc	s1,0x5
    80007870:	61c48493          	addi	s1,s1,1564 # 8000ce88 <cons>
    80007874:	00048513          	mv	a0,s1
    80007878:	00002597          	auipc	a1,0x2
    8000787c:	e7058593          	addi	a1,a1,-400 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007880:	00001097          	auipc	ra,0x1
    80007884:	d88080e7          	jalr	-632(ra) # 80008608 <initlock>
    80007888:	00000097          	auipc	ra,0x0
    8000788c:	7ac080e7          	jalr	1964(ra) # 80008034 <uartinit>
    80007890:	01813083          	ld	ra,24(sp)
    80007894:	01013403          	ld	s0,16(sp)
    80007898:	00000797          	auipc	a5,0x0
    8000789c:	d9c78793          	addi	a5,a5,-612 # 80007634 <consoleread>
    800078a0:	0af4bc23          	sd	a5,184(s1)
    800078a4:	00000797          	auipc	a5,0x0
    800078a8:	cec78793          	addi	a5,a5,-788 # 80007590 <consolewrite>
    800078ac:	0cf4b023          	sd	a5,192(s1)
    800078b0:	00813483          	ld	s1,8(sp)
    800078b4:	02010113          	addi	sp,sp,32
    800078b8:	00008067          	ret

00000000800078bc <console_read>:
    800078bc:	ff010113          	addi	sp,sp,-16
    800078c0:	00813423          	sd	s0,8(sp)
    800078c4:	01010413          	addi	s0,sp,16
    800078c8:	00813403          	ld	s0,8(sp)
    800078cc:	00005317          	auipc	t1,0x5
    800078d0:	67433303          	ld	t1,1652(t1) # 8000cf40 <devsw+0x10>
    800078d4:	01010113          	addi	sp,sp,16
    800078d8:	00030067          	jr	t1

00000000800078dc <console_write>:
    800078dc:	ff010113          	addi	sp,sp,-16
    800078e0:	00813423          	sd	s0,8(sp)
    800078e4:	01010413          	addi	s0,sp,16
    800078e8:	00813403          	ld	s0,8(sp)
    800078ec:	00005317          	auipc	t1,0x5
    800078f0:	65c33303          	ld	t1,1628(t1) # 8000cf48 <devsw+0x18>
    800078f4:	01010113          	addi	sp,sp,16
    800078f8:	00030067          	jr	t1

00000000800078fc <panic>:
    800078fc:	fe010113          	addi	sp,sp,-32
    80007900:	00113c23          	sd	ra,24(sp)
    80007904:	00813823          	sd	s0,16(sp)
    80007908:	00913423          	sd	s1,8(sp)
    8000790c:	02010413          	addi	s0,sp,32
    80007910:	00050493          	mv	s1,a0
    80007914:	00002517          	auipc	a0,0x2
    80007918:	ddc50513          	addi	a0,a0,-548 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000791c:	00005797          	auipc	a5,0x5
    80007920:	6c07a623          	sw	zero,1740(a5) # 8000cfe8 <pr+0x18>
    80007924:	00000097          	auipc	ra,0x0
    80007928:	034080e7          	jalr	52(ra) # 80007958 <__printf>
    8000792c:	00048513          	mv	a0,s1
    80007930:	00000097          	auipc	ra,0x0
    80007934:	028080e7          	jalr	40(ra) # 80007958 <__printf>
    80007938:	00002517          	auipc	a0,0x2
    8000793c:	b4050513          	addi	a0,a0,-1216 # 80009478 <CONSOLE_STATUS+0x468>
    80007940:	00000097          	auipc	ra,0x0
    80007944:	018080e7          	jalr	24(ra) # 80007958 <__printf>
    80007948:	00100793          	li	a5,1
    8000794c:	00004717          	auipc	a4,0x4
    80007950:	34f72e23          	sw	a5,860(a4) # 8000bca8 <panicked>
    80007954:	0000006f          	j	80007954 <panic+0x58>

0000000080007958 <__printf>:
    80007958:	f3010113          	addi	sp,sp,-208
    8000795c:	08813023          	sd	s0,128(sp)
    80007960:	07313423          	sd	s3,104(sp)
    80007964:	09010413          	addi	s0,sp,144
    80007968:	05813023          	sd	s8,64(sp)
    8000796c:	08113423          	sd	ra,136(sp)
    80007970:	06913c23          	sd	s1,120(sp)
    80007974:	07213823          	sd	s2,112(sp)
    80007978:	07413023          	sd	s4,96(sp)
    8000797c:	05513c23          	sd	s5,88(sp)
    80007980:	05613823          	sd	s6,80(sp)
    80007984:	05713423          	sd	s7,72(sp)
    80007988:	03913c23          	sd	s9,56(sp)
    8000798c:	03a13823          	sd	s10,48(sp)
    80007990:	03b13423          	sd	s11,40(sp)
    80007994:	00005317          	auipc	t1,0x5
    80007998:	63c30313          	addi	t1,t1,1596 # 8000cfd0 <pr>
    8000799c:	01832c03          	lw	s8,24(t1)
    800079a0:	00b43423          	sd	a1,8(s0)
    800079a4:	00c43823          	sd	a2,16(s0)
    800079a8:	00d43c23          	sd	a3,24(s0)
    800079ac:	02e43023          	sd	a4,32(s0)
    800079b0:	02f43423          	sd	a5,40(s0)
    800079b4:	03043823          	sd	a6,48(s0)
    800079b8:	03143c23          	sd	a7,56(s0)
    800079bc:	00050993          	mv	s3,a0
    800079c0:	4a0c1663          	bnez	s8,80007e6c <__printf+0x514>
    800079c4:	60098c63          	beqz	s3,80007fdc <__printf+0x684>
    800079c8:	0009c503          	lbu	a0,0(s3)
    800079cc:	00840793          	addi	a5,s0,8
    800079d0:	f6f43c23          	sd	a5,-136(s0)
    800079d4:	00000493          	li	s1,0
    800079d8:	22050063          	beqz	a0,80007bf8 <__printf+0x2a0>
    800079dc:	00002a37          	lui	s4,0x2
    800079e0:	00018ab7          	lui	s5,0x18
    800079e4:	000f4b37          	lui	s6,0xf4
    800079e8:	00989bb7          	lui	s7,0x989
    800079ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079fc:	00148c9b          	addiw	s9,s1,1
    80007a00:	02500793          	li	a5,37
    80007a04:	01998933          	add	s2,s3,s9
    80007a08:	38f51263          	bne	a0,a5,80007d8c <__printf+0x434>
    80007a0c:	00094783          	lbu	a5,0(s2)
    80007a10:	00078c9b          	sext.w	s9,a5
    80007a14:	1e078263          	beqz	a5,80007bf8 <__printf+0x2a0>
    80007a18:	0024849b          	addiw	s1,s1,2
    80007a1c:	07000713          	li	a4,112
    80007a20:	00998933          	add	s2,s3,s1
    80007a24:	38e78a63          	beq	a5,a4,80007db8 <__printf+0x460>
    80007a28:	20f76863          	bltu	a4,a5,80007c38 <__printf+0x2e0>
    80007a2c:	42a78863          	beq	a5,a0,80007e5c <__printf+0x504>
    80007a30:	06400713          	li	a4,100
    80007a34:	40e79663          	bne	a5,a4,80007e40 <__printf+0x4e8>
    80007a38:	f7843783          	ld	a5,-136(s0)
    80007a3c:	0007a603          	lw	a2,0(a5)
    80007a40:	00878793          	addi	a5,a5,8
    80007a44:	f6f43c23          	sd	a5,-136(s0)
    80007a48:	42064a63          	bltz	a2,80007e7c <__printf+0x524>
    80007a4c:	00a00713          	li	a4,10
    80007a50:	02e677bb          	remuw	a5,a2,a4
    80007a54:	00002d97          	auipc	s11,0x2
    80007a58:	cc4d8d93          	addi	s11,s11,-828 # 80009718 <digits>
    80007a5c:	00900593          	li	a1,9
    80007a60:	0006051b          	sext.w	a0,a2
    80007a64:	00000c93          	li	s9,0
    80007a68:	02079793          	slli	a5,a5,0x20
    80007a6c:	0207d793          	srli	a5,a5,0x20
    80007a70:	00fd87b3          	add	a5,s11,a5
    80007a74:	0007c783          	lbu	a5,0(a5)
    80007a78:	02e656bb          	divuw	a3,a2,a4
    80007a7c:	f8f40023          	sb	a5,-128(s0)
    80007a80:	14c5d863          	bge	a1,a2,80007bd0 <__printf+0x278>
    80007a84:	06300593          	li	a1,99
    80007a88:	00100c93          	li	s9,1
    80007a8c:	02e6f7bb          	remuw	a5,a3,a4
    80007a90:	02079793          	slli	a5,a5,0x20
    80007a94:	0207d793          	srli	a5,a5,0x20
    80007a98:	00fd87b3          	add	a5,s11,a5
    80007a9c:	0007c783          	lbu	a5,0(a5)
    80007aa0:	02e6d73b          	divuw	a4,a3,a4
    80007aa4:	f8f400a3          	sb	a5,-127(s0)
    80007aa8:	12a5f463          	bgeu	a1,a0,80007bd0 <__printf+0x278>
    80007aac:	00a00693          	li	a3,10
    80007ab0:	00900593          	li	a1,9
    80007ab4:	02d777bb          	remuw	a5,a4,a3
    80007ab8:	02079793          	slli	a5,a5,0x20
    80007abc:	0207d793          	srli	a5,a5,0x20
    80007ac0:	00fd87b3          	add	a5,s11,a5
    80007ac4:	0007c503          	lbu	a0,0(a5)
    80007ac8:	02d757bb          	divuw	a5,a4,a3
    80007acc:	f8a40123          	sb	a0,-126(s0)
    80007ad0:	48e5f263          	bgeu	a1,a4,80007f54 <__printf+0x5fc>
    80007ad4:	06300513          	li	a0,99
    80007ad8:	02d7f5bb          	remuw	a1,a5,a3
    80007adc:	02059593          	slli	a1,a1,0x20
    80007ae0:	0205d593          	srli	a1,a1,0x20
    80007ae4:	00bd85b3          	add	a1,s11,a1
    80007ae8:	0005c583          	lbu	a1,0(a1)
    80007aec:	02d7d7bb          	divuw	a5,a5,a3
    80007af0:	f8b401a3          	sb	a1,-125(s0)
    80007af4:	48e57263          	bgeu	a0,a4,80007f78 <__printf+0x620>
    80007af8:	3e700513          	li	a0,999
    80007afc:	02d7f5bb          	remuw	a1,a5,a3
    80007b00:	02059593          	slli	a1,a1,0x20
    80007b04:	0205d593          	srli	a1,a1,0x20
    80007b08:	00bd85b3          	add	a1,s11,a1
    80007b0c:	0005c583          	lbu	a1,0(a1)
    80007b10:	02d7d7bb          	divuw	a5,a5,a3
    80007b14:	f8b40223          	sb	a1,-124(s0)
    80007b18:	46e57663          	bgeu	a0,a4,80007f84 <__printf+0x62c>
    80007b1c:	02d7f5bb          	remuw	a1,a5,a3
    80007b20:	02059593          	slli	a1,a1,0x20
    80007b24:	0205d593          	srli	a1,a1,0x20
    80007b28:	00bd85b3          	add	a1,s11,a1
    80007b2c:	0005c583          	lbu	a1,0(a1)
    80007b30:	02d7d7bb          	divuw	a5,a5,a3
    80007b34:	f8b402a3          	sb	a1,-123(s0)
    80007b38:	46ea7863          	bgeu	s4,a4,80007fa8 <__printf+0x650>
    80007b3c:	02d7f5bb          	remuw	a1,a5,a3
    80007b40:	02059593          	slli	a1,a1,0x20
    80007b44:	0205d593          	srli	a1,a1,0x20
    80007b48:	00bd85b3          	add	a1,s11,a1
    80007b4c:	0005c583          	lbu	a1,0(a1)
    80007b50:	02d7d7bb          	divuw	a5,a5,a3
    80007b54:	f8b40323          	sb	a1,-122(s0)
    80007b58:	3eeaf863          	bgeu	s5,a4,80007f48 <__printf+0x5f0>
    80007b5c:	02d7f5bb          	remuw	a1,a5,a3
    80007b60:	02059593          	slli	a1,a1,0x20
    80007b64:	0205d593          	srli	a1,a1,0x20
    80007b68:	00bd85b3          	add	a1,s11,a1
    80007b6c:	0005c583          	lbu	a1,0(a1)
    80007b70:	02d7d7bb          	divuw	a5,a5,a3
    80007b74:	f8b403a3          	sb	a1,-121(s0)
    80007b78:	42eb7e63          	bgeu	s6,a4,80007fb4 <__printf+0x65c>
    80007b7c:	02d7f5bb          	remuw	a1,a5,a3
    80007b80:	02059593          	slli	a1,a1,0x20
    80007b84:	0205d593          	srli	a1,a1,0x20
    80007b88:	00bd85b3          	add	a1,s11,a1
    80007b8c:	0005c583          	lbu	a1,0(a1)
    80007b90:	02d7d7bb          	divuw	a5,a5,a3
    80007b94:	f8b40423          	sb	a1,-120(s0)
    80007b98:	42ebfc63          	bgeu	s7,a4,80007fd0 <__printf+0x678>
    80007b9c:	02079793          	slli	a5,a5,0x20
    80007ba0:	0207d793          	srli	a5,a5,0x20
    80007ba4:	00fd8db3          	add	s11,s11,a5
    80007ba8:	000dc703          	lbu	a4,0(s11)
    80007bac:	00a00793          	li	a5,10
    80007bb0:	00900c93          	li	s9,9
    80007bb4:	f8e404a3          	sb	a4,-119(s0)
    80007bb8:	00065c63          	bgez	a2,80007bd0 <__printf+0x278>
    80007bbc:	f9040713          	addi	a4,s0,-112
    80007bc0:	00f70733          	add	a4,a4,a5
    80007bc4:	02d00693          	li	a3,45
    80007bc8:	fed70823          	sb	a3,-16(a4)
    80007bcc:	00078c93          	mv	s9,a5
    80007bd0:	f8040793          	addi	a5,s0,-128
    80007bd4:	01978cb3          	add	s9,a5,s9
    80007bd8:	f7f40d13          	addi	s10,s0,-129
    80007bdc:	000cc503          	lbu	a0,0(s9)
    80007be0:	fffc8c93          	addi	s9,s9,-1
    80007be4:	00000097          	auipc	ra,0x0
    80007be8:	b90080e7          	jalr	-1136(ra) # 80007774 <consputc>
    80007bec:	ffac98e3          	bne	s9,s10,80007bdc <__printf+0x284>
    80007bf0:	00094503          	lbu	a0,0(s2)
    80007bf4:	e00514e3          	bnez	a0,800079fc <__printf+0xa4>
    80007bf8:	1a0c1663          	bnez	s8,80007da4 <__printf+0x44c>
    80007bfc:	08813083          	ld	ra,136(sp)
    80007c00:	08013403          	ld	s0,128(sp)
    80007c04:	07813483          	ld	s1,120(sp)
    80007c08:	07013903          	ld	s2,112(sp)
    80007c0c:	06813983          	ld	s3,104(sp)
    80007c10:	06013a03          	ld	s4,96(sp)
    80007c14:	05813a83          	ld	s5,88(sp)
    80007c18:	05013b03          	ld	s6,80(sp)
    80007c1c:	04813b83          	ld	s7,72(sp)
    80007c20:	04013c03          	ld	s8,64(sp)
    80007c24:	03813c83          	ld	s9,56(sp)
    80007c28:	03013d03          	ld	s10,48(sp)
    80007c2c:	02813d83          	ld	s11,40(sp)
    80007c30:	0d010113          	addi	sp,sp,208
    80007c34:	00008067          	ret
    80007c38:	07300713          	li	a4,115
    80007c3c:	1ce78a63          	beq	a5,a4,80007e10 <__printf+0x4b8>
    80007c40:	07800713          	li	a4,120
    80007c44:	1ee79e63          	bne	a5,a4,80007e40 <__printf+0x4e8>
    80007c48:	f7843783          	ld	a5,-136(s0)
    80007c4c:	0007a703          	lw	a4,0(a5)
    80007c50:	00878793          	addi	a5,a5,8
    80007c54:	f6f43c23          	sd	a5,-136(s0)
    80007c58:	28074263          	bltz	a4,80007edc <__printf+0x584>
    80007c5c:	00002d97          	auipc	s11,0x2
    80007c60:	abcd8d93          	addi	s11,s11,-1348 # 80009718 <digits>
    80007c64:	00f77793          	andi	a5,a4,15
    80007c68:	00fd87b3          	add	a5,s11,a5
    80007c6c:	0007c683          	lbu	a3,0(a5)
    80007c70:	00f00613          	li	a2,15
    80007c74:	0007079b          	sext.w	a5,a4
    80007c78:	f8d40023          	sb	a3,-128(s0)
    80007c7c:	0047559b          	srliw	a1,a4,0x4
    80007c80:	0047569b          	srliw	a3,a4,0x4
    80007c84:	00000c93          	li	s9,0
    80007c88:	0ee65063          	bge	a2,a4,80007d68 <__printf+0x410>
    80007c8c:	00f6f693          	andi	a3,a3,15
    80007c90:	00dd86b3          	add	a3,s11,a3
    80007c94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c98:	0087d79b          	srliw	a5,a5,0x8
    80007c9c:	00100c93          	li	s9,1
    80007ca0:	f8d400a3          	sb	a3,-127(s0)
    80007ca4:	0cb67263          	bgeu	a2,a1,80007d68 <__printf+0x410>
    80007ca8:	00f7f693          	andi	a3,a5,15
    80007cac:	00dd86b3          	add	a3,s11,a3
    80007cb0:	0006c583          	lbu	a1,0(a3)
    80007cb4:	00f00613          	li	a2,15
    80007cb8:	0047d69b          	srliw	a3,a5,0x4
    80007cbc:	f8b40123          	sb	a1,-126(s0)
    80007cc0:	0047d593          	srli	a1,a5,0x4
    80007cc4:	28f67e63          	bgeu	a2,a5,80007f60 <__printf+0x608>
    80007cc8:	00f6f693          	andi	a3,a3,15
    80007ccc:	00dd86b3          	add	a3,s11,a3
    80007cd0:	0006c503          	lbu	a0,0(a3)
    80007cd4:	0087d813          	srli	a6,a5,0x8
    80007cd8:	0087d69b          	srliw	a3,a5,0x8
    80007cdc:	f8a401a3          	sb	a0,-125(s0)
    80007ce0:	28b67663          	bgeu	a2,a1,80007f6c <__printf+0x614>
    80007ce4:	00f6f693          	andi	a3,a3,15
    80007ce8:	00dd86b3          	add	a3,s11,a3
    80007cec:	0006c583          	lbu	a1,0(a3)
    80007cf0:	00c7d513          	srli	a0,a5,0xc
    80007cf4:	00c7d69b          	srliw	a3,a5,0xc
    80007cf8:	f8b40223          	sb	a1,-124(s0)
    80007cfc:	29067a63          	bgeu	a2,a6,80007f90 <__printf+0x638>
    80007d00:	00f6f693          	andi	a3,a3,15
    80007d04:	00dd86b3          	add	a3,s11,a3
    80007d08:	0006c583          	lbu	a1,0(a3)
    80007d0c:	0107d813          	srli	a6,a5,0x10
    80007d10:	0107d69b          	srliw	a3,a5,0x10
    80007d14:	f8b402a3          	sb	a1,-123(s0)
    80007d18:	28a67263          	bgeu	a2,a0,80007f9c <__printf+0x644>
    80007d1c:	00f6f693          	andi	a3,a3,15
    80007d20:	00dd86b3          	add	a3,s11,a3
    80007d24:	0006c683          	lbu	a3,0(a3)
    80007d28:	0147d79b          	srliw	a5,a5,0x14
    80007d2c:	f8d40323          	sb	a3,-122(s0)
    80007d30:	21067663          	bgeu	a2,a6,80007f3c <__printf+0x5e4>
    80007d34:	02079793          	slli	a5,a5,0x20
    80007d38:	0207d793          	srli	a5,a5,0x20
    80007d3c:	00fd8db3          	add	s11,s11,a5
    80007d40:	000dc683          	lbu	a3,0(s11)
    80007d44:	00800793          	li	a5,8
    80007d48:	00700c93          	li	s9,7
    80007d4c:	f8d403a3          	sb	a3,-121(s0)
    80007d50:	00075c63          	bgez	a4,80007d68 <__printf+0x410>
    80007d54:	f9040713          	addi	a4,s0,-112
    80007d58:	00f70733          	add	a4,a4,a5
    80007d5c:	02d00693          	li	a3,45
    80007d60:	fed70823          	sb	a3,-16(a4)
    80007d64:	00078c93          	mv	s9,a5
    80007d68:	f8040793          	addi	a5,s0,-128
    80007d6c:	01978cb3          	add	s9,a5,s9
    80007d70:	f7f40d13          	addi	s10,s0,-129
    80007d74:	000cc503          	lbu	a0,0(s9)
    80007d78:	fffc8c93          	addi	s9,s9,-1
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	9f8080e7          	jalr	-1544(ra) # 80007774 <consputc>
    80007d84:	ff9d18e3          	bne	s10,s9,80007d74 <__printf+0x41c>
    80007d88:	0100006f          	j	80007d98 <__printf+0x440>
    80007d8c:	00000097          	auipc	ra,0x0
    80007d90:	9e8080e7          	jalr	-1560(ra) # 80007774 <consputc>
    80007d94:	000c8493          	mv	s1,s9
    80007d98:	00094503          	lbu	a0,0(s2)
    80007d9c:	c60510e3          	bnez	a0,800079fc <__printf+0xa4>
    80007da0:	e40c0ee3          	beqz	s8,80007bfc <__printf+0x2a4>
    80007da4:	00005517          	auipc	a0,0x5
    80007da8:	22c50513          	addi	a0,a0,556 # 8000cfd0 <pr>
    80007dac:	00001097          	auipc	ra,0x1
    80007db0:	94c080e7          	jalr	-1716(ra) # 800086f8 <release>
    80007db4:	e49ff06f          	j	80007bfc <__printf+0x2a4>
    80007db8:	f7843783          	ld	a5,-136(s0)
    80007dbc:	03000513          	li	a0,48
    80007dc0:	01000d13          	li	s10,16
    80007dc4:	00878713          	addi	a4,a5,8
    80007dc8:	0007bc83          	ld	s9,0(a5)
    80007dcc:	f6e43c23          	sd	a4,-136(s0)
    80007dd0:	00000097          	auipc	ra,0x0
    80007dd4:	9a4080e7          	jalr	-1628(ra) # 80007774 <consputc>
    80007dd8:	07800513          	li	a0,120
    80007ddc:	00000097          	auipc	ra,0x0
    80007de0:	998080e7          	jalr	-1640(ra) # 80007774 <consputc>
    80007de4:	00002d97          	auipc	s11,0x2
    80007de8:	934d8d93          	addi	s11,s11,-1740 # 80009718 <digits>
    80007dec:	03ccd793          	srli	a5,s9,0x3c
    80007df0:	00fd87b3          	add	a5,s11,a5
    80007df4:	0007c503          	lbu	a0,0(a5)
    80007df8:	fffd0d1b          	addiw	s10,s10,-1
    80007dfc:	004c9c93          	slli	s9,s9,0x4
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	974080e7          	jalr	-1676(ra) # 80007774 <consputc>
    80007e08:	fe0d12e3          	bnez	s10,80007dec <__printf+0x494>
    80007e0c:	f8dff06f          	j	80007d98 <__printf+0x440>
    80007e10:	f7843783          	ld	a5,-136(s0)
    80007e14:	0007bc83          	ld	s9,0(a5)
    80007e18:	00878793          	addi	a5,a5,8
    80007e1c:	f6f43c23          	sd	a5,-136(s0)
    80007e20:	000c9a63          	bnez	s9,80007e34 <__printf+0x4dc>
    80007e24:	1080006f          	j	80007f2c <__printf+0x5d4>
    80007e28:	001c8c93          	addi	s9,s9,1
    80007e2c:	00000097          	auipc	ra,0x0
    80007e30:	948080e7          	jalr	-1720(ra) # 80007774 <consputc>
    80007e34:	000cc503          	lbu	a0,0(s9)
    80007e38:	fe0518e3          	bnez	a0,80007e28 <__printf+0x4d0>
    80007e3c:	f5dff06f          	j	80007d98 <__printf+0x440>
    80007e40:	02500513          	li	a0,37
    80007e44:	00000097          	auipc	ra,0x0
    80007e48:	930080e7          	jalr	-1744(ra) # 80007774 <consputc>
    80007e4c:	000c8513          	mv	a0,s9
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	924080e7          	jalr	-1756(ra) # 80007774 <consputc>
    80007e58:	f41ff06f          	j	80007d98 <__printf+0x440>
    80007e5c:	02500513          	li	a0,37
    80007e60:	00000097          	auipc	ra,0x0
    80007e64:	914080e7          	jalr	-1772(ra) # 80007774 <consputc>
    80007e68:	f31ff06f          	j	80007d98 <__printf+0x440>
    80007e6c:	00030513          	mv	a0,t1
    80007e70:	00000097          	auipc	ra,0x0
    80007e74:	7bc080e7          	jalr	1980(ra) # 8000862c <acquire>
    80007e78:	b4dff06f          	j	800079c4 <__printf+0x6c>
    80007e7c:	40c0053b          	negw	a0,a2
    80007e80:	00a00713          	li	a4,10
    80007e84:	02e576bb          	remuw	a3,a0,a4
    80007e88:	00002d97          	auipc	s11,0x2
    80007e8c:	890d8d93          	addi	s11,s11,-1904 # 80009718 <digits>
    80007e90:	ff700593          	li	a1,-9
    80007e94:	02069693          	slli	a3,a3,0x20
    80007e98:	0206d693          	srli	a3,a3,0x20
    80007e9c:	00dd86b3          	add	a3,s11,a3
    80007ea0:	0006c683          	lbu	a3,0(a3)
    80007ea4:	02e557bb          	divuw	a5,a0,a4
    80007ea8:	f8d40023          	sb	a3,-128(s0)
    80007eac:	10b65e63          	bge	a2,a1,80007fc8 <__printf+0x670>
    80007eb0:	06300593          	li	a1,99
    80007eb4:	02e7f6bb          	remuw	a3,a5,a4
    80007eb8:	02069693          	slli	a3,a3,0x20
    80007ebc:	0206d693          	srli	a3,a3,0x20
    80007ec0:	00dd86b3          	add	a3,s11,a3
    80007ec4:	0006c683          	lbu	a3,0(a3)
    80007ec8:	02e7d73b          	divuw	a4,a5,a4
    80007ecc:	00200793          	li	a5,2
    80007ed0:	f8d400a3          	sb	a3,-127(s0)
    80007ed4:	bca5ece3          	bltu	a1,a0,80007aac <__printf+0x154>
    80007ed8:	ce5ff06f          	j	80007bbc <__printf+0x264>
    80007edc:	40e007bb          	negw	a5,a4
    80007ee0:	00002d97          	auipc	s11,0x2
    80007ee4:	838d8d93          	addi	s11,s11,-1992 # 80009718 <digits>
    80007ee8:	00f7f693          	andi	a3,a5,15
    80007eec:	00dd86b3          	add	a3,s11,a3
    80007ef0:	0006c583          	lbu	a1,0(a3)
    80007ef4:	ff100613          	li	a2,-15
    80007ef8:	0047d69b          	srliw	a3,a5,0x4
    80007efc:	f8b40023          	sb	a1,-128(s0)
    80007f00:	0047d59b          	srliw	a1,a5,0x4
    80007f04:	0ac75e63          	bge	a4,a2,80007fc0 <__printf+0x668>
    80007f08:	00f6f693          	andi	a3,a3,15
    80007f0c:	00dd86b3          	add	a3,s11,a3
    80007f10:	0006c603          	lbu	a2,0(a3)
    80007f14:	00f00693          	li	a3,15
    80007f18:	0087d79b          	srliw	a5,a5,0x8
    80007f1c:	f8c400a3          	sb	a2,-127(s0)
    80007f20:	d8b6e4e3          	bltu	a3,a1,80007ca8 <__printf+0x350>
    80007f24:	00200793          	li	a5,2
    80007f28:	e2dff06f          	j	80007d54 <__printf+0x3fc>
    80007f2c:	00001c97          	auipc	s9,0x1
    80007f30:	7ccc8c93          	addi	s9,s9,1996 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007f34:	02800513          	li	a0,40
    80007f38:	ef1ff06f          	j	80007e28 <__printf+0x4d0>
    80007f3c:	00700793          	li	a5,7
    80007f40:	00600c93          	li	s9,6
    80007f44:	e0dff06f          	j	80007d50 <__printf+0x3f8>
    80007f48:	00700793          	li	a5,7
    80007f4c:	00600c93          	li	s9,6
    80007f50:	c69ff06f          	j	80007bb8 <__printf+0x260>
    80007f54:	00300793          	li	a5,3
    80007f58:	00200c93          	li	s9,2
    80007f5c:	c5dff06f          	j	80007bb8 <__printf+0x260>
    80007f60:	00300793          	li	a5,3
    80007f64:	00200c93          	li	s9,2
    80007f68:	de9ff06f          	j	80007d50 <__printf+0x3f8>
    80007f6c:	00400793          	li	a5,4
    80007f70:	00300c93          	li	s9,3
    80007f74:	dddff06f          	j	80007d50 <__printf+0x3f8>
    80007f78:	00400793          	li	a5,4
    80007f7c:	00300c93          	li	s9,3
    80007f80:	c39ff06f          	j	80007bb8 <__printf+0x260>
    80007f84:	00500793          	li	a5,5
    80007f88:	00400c93          	li	s9,4
    80007f8c:	c2dff06f          	j	80007bb8 <__printf+0x260>
    80007f90:	00500793          	li	a5,5
    80007f94:	00400c93          	li	s9,4
    80007f98:	db9ff06f          	j	80007d50 <__printf+0x3f8>
    80007f9c:	00600793          	li	a5,6
    80007fa0:	00500c93          	li	s9,5
    80007fa4:	dadff06f          	j	80007d50 <__printf+0x3f8>
    80007fa8:	00600793          	li	a5,6
    80007fac:	00500c93          	li	s9,5
    80007fb0:	c09ff06f          	j	80007bb8 <__printf+0x260>
    80007fb4:	00800793          	li	a5,8
    80007fb8:	00700c93          	li	s9,7
    80007fbc:	bfdff06f          	j	80007bb8 <__printf+0x260>
    80007fc0:	00100793          	li	a5,1
    80007fc4:	d91ff06f          	j	80007d54 <__printf+0x3fc>
    80007fc8:	00100793          	li	a5,1
    80007fcc:	bf1ff06f          	j	80007bbc <__printf+0x264>
    80007fd0:	00900793          	li	a5,9
    80007fd4:	00800c93          	li	s9,8
    80007fd8:	be1ff06f          	j	80007bb8 <__printf+0x260>
    80007fdc:	00001517          	auipc	a0,0x1
    80007fe0:	72450513          	addi	a0,a0,1828 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007fe4:	00000097          	auipc	ra,0x0
    80007fe8:	918080e7          	jalr	-1768(ra) # 800078fc <panic>

0000000080007fec <printfinit>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00913423          	sd	s1,8(sp)
    80007ff8:	00113c23          	sd	ra,24(sp)
    80007ffc:	02010413          	addi	s0,sp,32
    80008000:	00005497          	auipc	s1,0x5
    80008004:	fd048493          	addi	s1,s1,-48 # 8000cfd0 <pr>
    80008008:	00048513          	mv	a0,s1
    8000800c:	00001597          	auipc	a1,0x1
    80008010:	70458593          	addi	a1,a1,1796 # 80009710 <CONSOLE_STATUS+0x700>
    80008014:	00000097          	auipc	ra,0x0
    80008018:	5f4080e7          	jalr	1524(ra) # 80008608 <initlock>
    8000801c:	01813083          	ld	ra,24(sp)
    80008020:	01013403          	ld	s0,16(sp)
    80008024:	0004ac23          	sw	zero,24(s1)
    80008028:	00813483          	ld	s1,8(sp)
    8000802c:	02010113          	addi	sp,sp,32
    80008030:	00008067          	ret

0000000080008034 <uartinit>:
    80008034:	ff010113          	addi	sp,sp,-16
    80008038:	00813423          	sd	s0,8(sp)
    8000803c:	01010413          	addi	s0,sp,16
    80008040:	100007b7          	lui	a5,0x10000
    80008044:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008048:	f8000713          	li	a4,-128
    8000804c:	00e781a3          	sb	a4,3(a5)
    80008050:	00300713          	li	a4,3
    80008054:	00e78023          	sb	a4,0(a5)
    80008058:	000780a3          	sb	zero,1(a5)
    8000805c:	00e781a3          	sb	a4,3(a5)
    80008060:	00700693          	li	a3,7
    80008064:	00d78123          	sb	a3,2(a5)
    80008068:	00e780a3          	sb	a4,1(a5)
    8000806c:	00813403          	ld	s0,8(sp)
    80008070:	01010113          	addi	sp,sp,16
    80008074:	00008067          	ret

0000000080008078 <uartputc>:
    80008078:	00004797          	auipc	a5,0x4
    8000807c:	c307a783          	lw	a5,-976(a5) # 8000bca8 <panicked>
    80008080:	00078463          	beqz	a5,80008088 <uartputc+0x10>
    80008084:	0000006f          	j	80008084 <uartputc+0xc>
    80008088:	fd010113          	addi	sp,sp,-48
    8000808c:	02813023          	sd	s0,32(sp)
    80008090:	00913c23          	sd	s1,24(sp)
    80008094:	01213823          	sd	s2,16(sp)
    80008098:	01313423          	sd	s3,8(sp)
    8000809c:	02113423          	sd	ra,40(sp)
    800080a0:	03010413          	addi	s0,sp,48
    800080a4:	00004917          	auipc	s2,0x4
    800080a8:	c0c90913          	addi	s2,s2,-1012 # 8000bcb0 <uart_tx_r>
    800080ac:	00093783          	ld	a5,0(s2)
    800080b0:	00004497          	auipc	s1,0x4
    800080b4:	c0848493          	addi	s1,s1,-1016 # 8000bcb8 <uart_tx_w>
    800080b8:	0004b703          	ld	a4,0(s1)
    800080bc:	02078693          	addi	a3,a5,32
    800080c0:	00050993          	mv	s3,a0
    800080c4:	02e69c63          	bne	a3,a4,800080fc <uartputc+0x84>
    800080c8:	00001097          	auipc	ra,0x1
    800080cc:	834080e7          	jalr	-1996(ra) # 800088fc <push_on>
    800080d0:	00093783          	ld	a5,0(s2)
    800080d4:	0004b703          	ld	a4,0(s1)
    800080d8:	02078793          	addi	a5,a5,32
    800080dc:	00e79463          	bne	a5,a4,800080e4 <uartputc+0x6c>
    800080e0:	0000006f          	j	800080e0 <uartputc+0x68>
    800080e4:	00001097          	auipc	ra,0x1
    800080e8:	88c080e7          	jalr	-1908(ra) # 80008970 <pop_on>
    800080ec:	00093783          	ld	a5,0(s2)
    800080f0:	0004b703          	ld	a4,0(s1)
    800080f4:	02078693          	addi	a3,a5,32
    800080f8:	fce688e3          	beq	a3,a4,800080c8 <uartputc+0x50>
    800080fc:	01f77693          	andi	a3,a4,31
    80008100:	00005597          	auipc	a1,0x5
    80008104:	ef058593          	addi	a1,a1,-272 # 8000cff0 <uart_tx_buf>
    80008108:	00d586b3          	add	a3,a1,a3
    8000810c:	00170713          	addi	a4,a4,1
    80008110:	01368023          	sb	s3,0(a3)
    80008114:	00e4b023          	sd	a4,0(s1)
    80008118:	10000637          	lui	a2,0x10000
    8000811c:	02f71063          	bne	a4,a5,8000813c <uartputc+0xc4>
    80008120:	0340006f          	j	80008154 <uartputc+0xdc>
    80008124:	00074703          	lbu	a4,0(a4)
    80008128:	00f93023          	sd	a5,0(s2)
    8000812c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008130:	00093783          	ld	a5,0(s2)
    80008134:	0004b703          	ld	a4,0(s1)
    80008138:	00f70e63          	beq	a4,a5,80008154 <uartputc+0xdc>
    8000813c:	00564683          	lbu	a3,5(a2)
    80008140:	01f7f713          	andi	a4,a5,31
    80008144:	00e58733          	add	a4,a1,a4
    80008148:	0206f693          	andi	a3,a3,32
    8000814c:	00178793          	addi	a5,a5,1
    80008150:	fc069ae3          	bnez	a3,80008124 <uartputc+0xac>
    80008154:	02813083          	ld	ra,40(sp)
    80008158:	02013403          	ld	s0,32(sp)
    8000815c:	01813483          	ld	s1,24(sp)
    80008160:	01013903          	ld	s2,16(sp)
    80008164:	00813983          	ld	s3,8(sp)
    80008168:	03010113          	addi	sp,sp,48
    8000816c:	00008067          	ret

0000000080008170 <uartputc_sync>:
    80008170:	ff010113          	addi	sp,sp,-16
    80008174:	00813423          	sd	s0,8(sp)
    80008178:	01010413          	addi	s0,sp,16
    8000817c:	00004717          	auipc	a4,0x4
    80008180:	b2c72703          	lw	a4,-1236(a4) # 8000bca8 <panicked>
    80008184:	02071663          	bnez	a4,800081b0 <uartputc_sync+0x40>
    80008188:	00050793          	mv	a5,a0
    8000818c:	100006b7          	lui	a3,0x10000
    80008190:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008194:	02077713          	andi	a4,a4,32
    80008198:	fe070ce3          	beqz	a4,80008190 <uartputc_sync+0x20>
    8000819c:	0ff7f793          	andi	a5,a5,255
    800081a0:	00f68023          	sb	a5,0(a3)
    800081a4:	00813403          	ld	s0,8(sp)
    800081a8:	01010113          	addi	sp,sp,16
    800081ac:	00008067          	ret
    800081b0:	0000006f          	j	800081b0 <uartputc_sync+0x40>

00000000800081b4 <uartstart>:
    800081b4:	ff010113          	addi	sp,sp,-16
    800081b8:	00813423          	sd	s0,8(sp)
    800081bc:	01010413          	addi	s0,sp,16
    800081c0:	00004617          	auipc	a2,0x4
    800081c4:	af060613          	addi	a2,a2,-1296 # 8000bcb0 <uart_tx_r>
    800081c8:	00004517          	auipc	a0,0x4
    800081cc:	af050513          	addi	a0,a0,-1296 # 8000bcb8 <uart_tx_w>
    800081d0:	00063783          	ld	a5,0(a2)
    800081d4:	00053703          	ld	a4,0(a0)
    800081d8:	04f70263          	beq	a4,a5,8000821c <uartstart+0x68>
    800081dc:	100005b7          	lui	a1,0x10000
    800081e0:	00005817          	auipc	a6,0x5
    800081e4:	e1080813          	addi	a6,a6,-496 # 8000cff0 <uart_tx_buf>
    800081e8:	01c0006f          	j	80008204 <uartstart+0x50>
    800081ec:	0006c703          	lbu	a4,0(a3)
    800081f0:	00f63023          	sd	a5,0(a2)
    800081f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081f8:	00063783          	ld	a5,0(a2)
    800081fc:	00053703          	ld	a4,0(a0)
    80008200:	00f70e63          	beq	a4,a5,8000821c <uartstart+0x68>
    80008204:	01f7f713          	andi	a4,a5,31
    80008208:	00e806b3          	add	a3,a6,a4
    8000820c:	0055c703          	lbu	a4,5(a1)
    80008210:	00178793          	addi	a5,a5,1
    80008214:	02077713          	andi	a4,a4,32
    80008218:	fc071ae3          	bnez	a4,800081ec <uartstart+0x38>
    8000821c:	00813403          	ld	s0,8(sp)
    80008220:	01010113          	addi	sp,sp,16
    80008224:	00008067          	ret

0000000080008228 <uartgetc>:
    80008228:	ff010113          	addi	sp,sp,-16
    8000822c:	00813423          	sd	s0,8(sp)
    80008230:	01010413          	addi	s0,sp,16
    80008234:	10000737          	lui	a4,0x10000
    80008238:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000823c:	0017f793          	andi	a5,a5,1
    80008240:	00078c63          	beqz	a5,80008258 <uartgetc+0x30>
    80008244:	00074503          	lbu	a0,0(a4)
    80008248:	0ff57513          	andi	a0,a0,255
    8000824c:	00813403          	ld	s0,8(sp)
    80008250:	01010113          	addi	sp,sp,16
    80008254:	00008067          	ret
    80008258:	fff00513          	li	a0,-1
    8000825c:	ff1ff06f          	j	8000824c <uartgetc+0x24>

0000000080008260 <uartintr>:
    80008260:	100007b7          	lui	a5,0x10000
    80008264:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008268:	0017f793          	andi	a5,a5,1
    8000826c:	0a078463          	beqz	a5,80008314 <uartintr+0xb4>
    80008270:	fe010113          	addi	sp,sp,-32
    80008274:	00813823          	sd	s0,16(sp)
    80008278:	00913423          	sd	s1,8(sp)
    8000827c:	00113c23          	sd	ra,24(sp)
    80008280:	02010413          	addi	s0,sp,32
    80008284:	100004b7          	lui	s1,0x10000
    80008288:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000828c:	0ff57513          	andi	a0,a0,255
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	534080e7          	jalr	1332(ra) # 800077c4 <consoleintr>
    80008298:	0054c783          	lbu	a5,5(s1)
    8000829c:	0017f793          	andi	a5,a5,1
    800082a0:	fe0794e3          	bnez	a5,80008288 <uartintr+0x28>
    800082a4:	00004617          	auipc	a2,0x4
    800082a8:	a0c60613          	addi	a2,a2,-1524 # 8000bcb0 <uart_tx_r>
    800082ac:	00004517          	auipc	a0,0x4
    800082b0:	a0c50513          	addi	a0,a0,-1524 # 8000bcb8 <uart_tx_w>
    800082b4:	00063783          	ld	a5,0(a2)
    800082b8:	00053703          	ld	a4,0(a0)
    800082bc:	04f70263          	beq	a4,a5,80008300 <uartintr+0xa0>
    800082c0:	100005b7          	lui	a1,0x10000
    800082c4:	00005817          	auipc	a6,0x5
    800082c8:	d2c80813          	addi	a6,a6,-724 # 8000cff0 <uart_tx_buf>
    800082cc:	01c0006f          	j	800082e8 <uartintr+0x88>
    800082d0:	0006c703          	lbu	a4,0(a3)
    800082d4:	00f63023          	sd	a5,0(a2)
    800082d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082dc:	00063783          	ld	a5,0(a2)
    800082e0:	00053703          	ld	a4,0(a0)
    800082e4:	00f70e63          	beq	a4,a5,80008300 <uartintr+0xa0>
    800082e8:	01f7f713          	andi	a4,a5,31
    800082ec:	00e806b3          	add	a3,a6,a4
    800082f0:	0055c703          	lbu	a4,5(a1)
    800082f4:	00178793          	addi	a5,a5,1
    800082f8:	02077713          	andi	a4,a4,32
    800082fc:	fc071ae3          	bnez	a4,800082d0 <uartintr+0x70>
    80008300:	01813083          	ld	ra,24(sp)
    80008304:	01013403          	ld	s0,16(sp)
    80008308:	00813483          	ld	s1,8(sp)
    8000830c:	02010113          	addi	sp,sp,32
    80008310:	00008067          	ret
    80008314:	00004617          	auipc	a2,0x4
    80008318:	99c60613          	addi	a2,a2,-1636 # 8000bcb0 <uart_tx_r>
    8000831c:	00004517          	auipc	a0,0x4
    80008320:	99c50513          	addi	a0,a0,-1636 # 8000bcb8 <uart_tx_w>
    80008324:	00063783          	ld	a5,0(a2)
    80008328:	00053703          	ld	a4,0(a0)
    8000832c:	04f70263          	beq	a4,a5,80008370 <uartintr+0x110>
    80008330:	100005b7          	lui	a1,0x10000
    80008334:	00005817          	auipc	a6,0x5
    80008338:	cbc80813          	addi	a6,a6,-836 # 8000cff0 <uart_tx_buf>
    8000833c:	01c0006f          	j	80008358 <uartintr+0xf8>
    80008340:	0006c703          	lbu	a4,0(a3)
    80008344:	00f63023          	sd	a5,0(a2)
    80008348:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000834c:	00063783          	ld	a5,0(a2)
    80008350:	00053703          	ld	a4,0(a0)
    80008354:	02f70063          	beq	a4,a5,80008374 <uartintr+0x114>
    80008358:	01f7f713          	andi	a4,a5,31
    8000835c:	00e806b3          	add	a3,a6,a4
    80008360:	0055c703          	lbu	a4,5(a1)
    80008364:	00178793          	addi	a5,a5,1
    80008368:	02077713          	andi	a4,a4,32
    8000836c:	fc071ae3          	bnez	a4,80008340 <uartintr+0xe0>
    80008370:	00008067          	ret
    80008374:	00008067          	ret

0000000080008378 <kinit>:
    80008378:	fc010113          	addi	sp,sp,-64
    8000837c:	02913423          	sd	s1,40(sp)
    80008380:	fffff7b7          	lui	a5,0xfffff
    80008384:	00006497          	auipc	s1,0x6
    80008388:	c8b48493          	addi	s1,s1,-885 # 8000e00f <end+0xfff>
    8000838c:	02813823          	sd	s0,48(sp)
    80008390:	01313c23          	sd	s3,24(sp)
    80008394:	00f4f4b3          	and	s1,s1,a5
    80008398:	02113c23          	sd	ra,56(sp)
    8000839c:	03213023          	sd	s2,32(sp)
    800083a0:	01413823          	sd	s4,16(sp)
    800083a4:	01513423          	sd	s5,8(sp)
    800083a8:	04010413          	addi	s0,sp,64
    800083ac:	000017b7          	lui	a5,0x1
    800083b0:	01100993          	li	s3,17
    800083b4:	00f487b3          	add	a5,s1,a5
    800083b8:	01b99993          	slli	s3,s3,0x1b
    800083bc:	06f9e063          	bltu	s3,a5,8000841c <kinit+0xa4>
    800083c0:	00005a97          	auipc	s5,0x5
    800083c4:	c50a8a93          	addi	s5,s5,-944 # 8000d010 <end>
    800083c8:	0754ec63          	bltu	s1,s5,80008440 <kinit+0xc8>
    800083cc:	0734fa63          	bgeu	s1,s3,80008440 <kinit+0xc8>
    800083d0:	00088a37          	lui	s4,0x88
    800083d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083d8:	00004917          	auipc	s2,0x4
    800083dc:	8e890913          	addi	s2,s2,-1816 # 8000bcc0 <kmem>
    800083e0:	00ca1a13          	slli	s4,s4,0xc
    800083e4:	0140006f          	j	800083f8 <kinit+0x80>
    800083e8:	000017b7          	lui	a5,0x1
    800083ec:	00f484b3          	add	s1,s1,a5
    800083f0:	0554e863          	bltu	s1,s5,80008440 <kinit+0xc8>
    800083f4:	0534f663          	bgeu	s1,s3,80008440 <kinit+0xc8>
    800083f8:	00001637          	lui	a2,0x1
    800083fc:	00100593          	li	a1,1
    80008400:	00048513          	mv	a0,s1
    80008404:	00000097          	auipc	ra,0x0
    80008408:	5e4080e7          	jalr	1508(ra) # 800089e8 <__memset>
    8000840c:	00093783          	ld	a5,0(s2)
    80008410:	00f4b023          	sd	a5,0(s1)
    80008414:	00993023          	sd	s1,0(s2)
    80008418:	fd4498e3          	bne	s1,s4,800083e8 <kinit+0x70>
    8000841c:	03813083          	ld	ra,56(sp)
    80008420:	03013403          	ld	s0,48(sp)
    80008424:	02813483          	ld	s1,40(sp)
    80008428:	02013903          	ld	s2,32(sp)
    8000842c:	01813983          	ld	s3,24(sp)
    80008430:	01013a03          	ld	s4,16(sp)
    80008434:	00813a83          	ld	s5,8(sp)
    80008438:	04010113          	addi	sp,sp,64
    8000843c:	00008067          	ret
    80008440:	00001517          	auipc	a0,0x1
    80008444:	2f050513          	addi	a0,a0,752 # 80009730 <digits+0x18>
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	4b4080e7          	jalr	1204(ra) # 800078fc <panic>

0000000080008450 <freerange>:
    80008450:	fc010113          	addi	sp,sp,-64
    80008454:	000017b7          	lui	a5,0x1
    80008458:	02913423          	sd	s1,40(sp)
    8000845c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008460:	009504b3          	add	s1,a0,s1
    80008464:	fffff537          	lui	a0,0xfffff
    80008468:	02813823          	sd	s0,48(sp)
    8000846c:	02113c23          	sd	ra,56(sp)
    80008470:	03213023          	sd	s2,32(sp)
    80008474:	01313c23          	sd	s3,24(sp)
    80008478:	01413823          	sd	s4,16(sp)
    8000847c:	01513423          	sd	s5,8(sp)
    80008480:	01613023          	sd	s6,0(sp)
    80008484:	04010413          	addi	s0,sp,64
    80008488:	00a4f4b3          	and	s1,s1,a0
    8000848c:	00f487b3          	add	a5,s1,a5
    80008490:	06f5e463          	bltu	a1,a5,800084f8 <freerange+0xa8>
    80008494:	00005a97          	auipc	s5,0x5
    80008498:	b7ca8a93          	addi	s5,s5,-1156 # 8000d010 <end>
    8000849c:	0954e263          	bltu	s1,s5,80008520 <freerange+0xd0>
    800084a0:	01100993          	li	s3,17
    800084a4:	01b99993          	slli	s3,s3,0x1b
    800084a8:	0734fc63          	bgeu	s1,s3,80008520 <freerange+0xd0>
    800084ac:	00058a13          	mv	s4,a1
    800084b0:	00004917          	auipc	s2,0x4
    800084b4:	81090913          	addi	s2,s2,-2032 # 8000bcc0 <kmem>
    800084b8:	00002b37          	lui	s6,0x2
    800084bc:	0140006f          	j	800084d0 <freerange+0x80>
    800084c0:	000017b7          	lui	a5,0x1
    800084c4:	00f484b3          	add	s1,s1,a5
    800084c8:	0554ec63          	bltu	s1,s5,80008520 <freerange+0xd0>
    800084cc:	0534fa63          	bgeu	s1,s3,80008520 <freerange+0xd0>
    800084d0:	00001637          	lui	a2,0x1
    800084d4:	00100593          	li	a1,1
    800084d8:	00048513          	mv	a0,s1
    800084dc:	00000097          	auipc	ra,0x0
    800084e0:	50c080e7          	jalr	1292(ra) # 800089e8 <__memset>
    800084e4:	00093703          	ld	a4,0(s2)
    800084e8:	016487b3          	add	a5,s1,s6
    800084ec:	00e4b023          	sd	a4,0(s1)
    800084f0:	00993023          	sd	s1,0(s2)
    800084f4:	fcfa76e3          	bgeu	s4,a5,800084c0 <freerange+0x70>
    800084f8:	03813083          	ld	ra,56(sp)
    800084fc:	03013403          	ld	s0,48(sp)
    80008500:	02813483          	ld	s1,40(sp)
    80008504:	02013903          	ld	s2,32(sp)
    80008508:	01813983          	ld	s3,24(sp)
    8000850c:	01013a03          	ld	s4,16(sp)
    80008510:	00813a83          	ld	s5,8(sp)
    80008514:	00013b03          	ld	s6,0(sp)
    80008518:	04010113          	addi	sp,sp,64
    8000851c:	00008067          	ret
    80008520:	00001517          	auipc	a0,0x1
    80008524:	21050513          	addi	a0,a0,528 # 80009730 <digits+0x18>
    80008528:	fffff097          	auipc	ra,0xfffff
    8000852c:	3d4080e7          	jalr	980(ra) # 800078fc <panic>

0000000080008530 <kfree>:
    80008530:	fe010113          	addi	sp,sp,-32
    80008534:	00813823          	sd	s0,16(sp)
    80008538:	00113c23          	sd	ra,24(sp)
    8000853c:	00913423          	sd	s1,8(sp)
    80008540:	02010413          	addi	s0,sp,32
    80008544:	03451793          	slli	a5,a0,0x34
    80008548:	04079c63          	bnez	a5,800085a0 <kfree+0x70>
    8000854c:	00005797          	auipc	a5,0x5
    80008550:	ac478793          	addi	a5,a5,-1340 # 8000d010 <end>
    80008554:	00050493          	mv	s1,a0
    80008558:	04f56463          	bltu	a0,a5,800085a0 <kfree+0x70>
    8000855c:	01100793          	li	a5,17
    80008560:	01b79793          	slli	a5,a5,0x1b
    80008564:	02f57e63          	bgeu	a0,a5,800085a0 <kfree+0x70>
    80008568:	00001637          	lui	a2,0x1
    8000856c:	00100593          	li	a1,1
    80008570:	00000097          	auipc	ra,0x0
    80008574:	478080e7          	jalr	1144(ra) # 800089e8 <__memset>
    80008578:	00003797          	auipc	a5,0x3
    8000857c:	74878793          	addi	a5,a5,1864 # 8000bcc0 <kmem>
    80008580:	0007b703          	ld	a4,0(a5)
    80008584:	01813083          	ld	ra,24(sp)
    80008588:	01013403          	ld	s0,16(sp)
    8000858c:	00e4b023          	sd	a4,0(s1)
    80008590:	0097b023          	sd	s1,0(a5)
    80008594:	00813483          	ld	s1,8(sp)
    80008598:	02010113          	addi	sp,sp,32
    8000859c:	00008067          	ret
    800085a0:	00001517          	auipc	a0,0x1
    800085a4:	19050513          	addi	a0,a0,400 # 80009730 <digits+0x18>
    800085a8:	fffff097          	auipc	ra,0xfffff
    800085ac:	354080e7          	jalr	852(ra) # 800078fc <panic>

00000000800085b0 <kalloc>:
    800085b0:	fe010113          	addi	sp,sp,-32
    800085b4:	00813823          	sd	s0,16(sp)
    800085b8:	00913423          	sd	s1,8(sp)
    800085bc:	00113c23          	sd	ra,24(sp)
    800085c0:	02010413          	addi	s0,sp,32
    800085c4:	00003797          	auipc	a5,0x3
    800085c8:	6fc78793          	addi	a5,a5,1788 # 8000bcc0 <kmem>
    800085cc:	0007b483          	ld	s1,0(a5)
    800085d0:	02048063          	beqz	s1,800085f0 <kalloc+0x40>
    800085d4:	0004b703          	ld	a4,0(s1)
    800085d8:	00001637          	lui	a2,0x1
    800085dc:	00500593          	li	a1,5
    800085e0:	00048513          	mv	a0,s1
    800085e4:	00e7b023          	sd	a4,0(a5)
    800085e8:	00000097          	auipc	ra,0x0
    800085ec:	400080e7          	jalr	1024(ra) # 800089e8 <__memset>
    800085f0:	01813083          	ld	ra,24(sp)
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	00048513          	mv	a0,s1
    800085fc:	00813483          	ld	s1,8(sp)
    80008600:	02010113          	addi	sp,sp,32
    80008604:	00008067          	ret

0000000080008608 <initlock>:
    80008608:	ff010113          	addi	sp,sp,-16
    8000860c:	00813423          	sd	s0,8(sp)
    80008610:	01010413          	addi	s0,sp,16
    80008614:	00813403          	ld	s0,8(sp)
    80008618:	00b53423          	sd	a1,8(a0)
    8000861c:	00052023          	sw	zero,0(a0)
    80008620:	00053823          	sd	zero,16(a0)
    80008624:	01010113          	addi	sp,sp,16
    80008628:	00008067          	ret

000000008000862c <acquire>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00913423          	sd	s1,8(sp)
    80008638:	00113c23          	sd	ra,24(sp)
    8000863c:	01213023          	sd	s2,0(sp)
    80008640:	02010413          	addi	s0,sp,32
    80008644:	00050493          	mv	s1,a0
    80008648:	10002973          	csrr	s2,sstatus
    8000864c:	100027f3          	csrr	a5,sstatus
    80008650:	ffd7f793          	andi	a5,a5,-3
    80008654:	10079073          	csrw	sstatus,a5
    80008658:	fffff097          	auipc	ra,0xfffff
    8000865c:	8ec080e7          	jalr	-1812(ra) # 80006f44 <mycpu>
    80008660:	07852783          	lw	a5,120(a0)
    80008664:	06078e63          	beqz	a5,800086e0 <acquire+0xb4>
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	8dc080e7          	jalr	-1828(ra) # 80006f44 <mycpu>
    80008670:	07852783          	lw	a5,120(a0)
    80008674:	0004a703          	lw	a4,0(s1)
    80008678:	0017879b          	addiw	a5,a5,1
    8000867c:	06f52c23          	sw	a5,120(a0)
    80008680:	04071063          	bnez	a4,800086c0 <acquire+0x94>
    80008684:	00100713          	li	a4,1
    80008688:	00070793          	mv	a5,a4
    8000868c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008690:	0007879b          	sext.w	a5,a5
    80008694:	fe079ae3          	bnez	a5,80008688 <acquire+0x5c>
    80008698:	0ff0000f          	fence
    8000869c:	fffff097          	auipc	ra,0xfffff
    800086a0:	8a8080e7          	jalr	-1880(ra) # 80006f44 <mycpu>
    800086a4:	01813083          	ld	ra,24(sp)
    800086a8:	01013403          	ld	s0,16(sp)
    800086ac:	00a4b823          	sd	a0,16(s1)
    800086b0:	00013903          	ld	s2,0(sp)
    800086b4:	00813483          	ld	s1,8(sp)
    800086b8:	02010113          	addi	sp,sp,32
    800086bc:	00008067          	ret
    800086c0:	0104b903          	ld	s2,16(s1)
    800086c4:	fffff097          	auipc	ra,0xfffff
    800086c8:	880080e7          	jalr	-1920(ra) # 80006f44 <mycpu>
    800086cc:	faa91ce3          	bne	s2,a0,80008684 <acquire+0x58>
    800086d0:	00001517          	auipc	a0,0x1
    800086d4:	06850513          	addi	a0,a0,104 # 80009738 <digits+0x20>
    800086d8:	fffff097          	auipc	ra,0xfffff
    800086dc:	224080e7          	jalr	548(ra) # 800078fc <panic>
    800086e0:	00195913          	srli	s2,s2,0x1
    800086e4:	fffff097          	auipc	ra,0xfffff
    800086e8:	860080e7          	jalr	-1952(ra) # 80006f44 <mycpu>
    800086ec:	00197913          	andi	s2,s2,1
    800086f0:	07252e23          	sw	s2,124(a0)
    800086f4:	f75ff06f          	j	80008668 <acquire+0x3c>

00000000800086f8 <release>:
    800086f8:	fe010113          	addi	sp,sp,-32
    800086fc:	00813823          	sd	s0,16(sp)
    80008700:	00113c23          	sd	ra,24(sp)
    80008704:	00913423          	sd	s1,8(sp)
    80008708:	01213023          	sd	s2,0(sp)
    8000870c:	02010413          	addi	s0,sp,32
    80008710:	00052783          	lw	a5,0(a0)
    80008714:	00079a63          	bnez	a5,80008728 <release+0x30>
    80008718:	00001517          	auipc	a0,0x1
    8000871c:	02850513          	addi	a0,a0,40 # 80009740 <digits+0x28>
    80008720:	fffff097          	auipc	ra,0xfffff
    80008724:	1dc080e7          	jalr	476(ra) # 800078fc <panic>
    80008728:	01053903          	ld	s2,16(a0)
    8000872c:	00050493          	mv	s1,a0
    80008730:	fffff097          	auipc	ra,0xfffff
    80008734:	814080e7          	jalr	-2028(ra) # 80006f44 <mycpu>
    80008738:	fea910e3          	bne	s2,a0,80008718 <release+0x20>
    8000873c:	0004b823          	sd	zero,16(s1)
    80008740:	0ff0000f          	fence
    80008744:	0f50000f          	fence	iorw,ow
    80008748:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000874c:	ffffe097          	auipc	ra,0xffffe
    80008750:	7f8080e7          	jalr	2040(ra) # 80006f44 <mycpu>
    80008754:	100027f3          	csrr	a5,sstatus
    80008758:	0027f793          	andi	a5,a5,2
    8000875c:	04079a63          	bnez	a5,800087b0 <release+0xb8>
    80008760:	07852783          	lw	a5,120(a0)
    80008764:	02f05e63          	blez	a5,800087a0 <release+0xa8>
    80008768:	fff7871b          	addiw	a4,a5,-1
    8000876c:	06e52c23          	sw	a4,120(a0)
    80008770:	00071c63          	bnez	a4,80008788 <release+0x90>
    80008774:	07c52783          	lw	a5,124(a0)
    80008778:	00078863          	beqz	a5,80008788 <release+0x90>
    8000877c:	100027f3          	csrr	a5,sstatus
    80008780:	0027e793          	ori	a5,a5,2
    80008784:	10079073          	csrw	sstatus,a5
    80008788:	01813083          	ld	ra,24(sp)
    8000878c:	01013403          	ld	s0,16(sp)
    80008790:	00813483          	ld	s1,8(sp)
    80008794:	00013903          	ld	s2,0(sp)
    80008798:	02010113          	addi	sp,sp,32
    8000879c:	00008067          	ret
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	fc050513          	addi	a0,a0,-64 # 80009760 <digits+0x48>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	154080e7          	jalr	340(ra) # 800078fc <panic>
    800087b0:	00001517          	auipc	a0,0x1
    800087b4:	f9850513          	addi	a0,a0,-104 # 80009748 <digits+0x30>
    800087b8:	fffff097          	auipc	ra,0xfffff
    800087bc:	144080e7          	jalr	324(ra) # 800078fc <panic>

00000000800087c0 <holding>:
    800087c0:	00052783          	lw	a5,0(a0)
    800087c4:	00079663          	bnez	a5,800087d0 <holding+0x10>
    800087c8:	00000513          	li	a0,0
    800087cc:	00008067          	ret
    800087d0:	fe010113          	addi	sp,sp,-32
    800087d4:	00813823          	sd	s0,16(sp)
    800087d8:	00913423          	sd	s1,8(sp)
    800087dc:	00113c23          	sd	ra,24(sp)
    800087e0:	02010413          	addi	s0,sp,32
    800087e4:	01053483          	ld	s1,16(a0)
    800087e8:	ffffe097          	auipc	ra,0xffffe
    800087ec:	75c080e7          	jalr	1884(ra) # 80006f44 <mycpu>
    800087f0:	01813083          	ld	ra,24(sp)
    800087f4:	01013403          	ld	s0,16(sp)
    800087f8:	40a48533          	sub	a0,s1,a0
    800087fc:	00153513          	seqz	a0,a0
    80008800:	00813483          	ld	s1,8(sp)
    80008804:	02010113          	addi	sp,sp,32
    80008808:	00008067          	ret

000000008000880c <push_off>:
    8000880c:	fe010113          	addi	sp,sp,-32
    80008810:	00813823          	sd	s0,16(sp)
    80008814:	00113c23          	sd	ra,24(sp)
    80008818:	00913423          	sd	s1,8(sp)
    8000881c:	02010413          	addi	s0,sp,32
    80008820:	100024f3          	csrr	s1,sstatus
    80008824:	100027f3          	csrr	a5,sstatus
    80008828:	ffd7f793          	andi	a5,a5,-3
    8000882c:	10079073          	csrw	sstatus,a5
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	714080e7          	jalr	1812(ra) # 80006f44 <mycpu>
    80008838:	07852783          	lw	a5,120(a0)
    8000883c:	02078663          	beqz	a5,80008868 <push_off+0x5c>
    80008840:	ffffe097          	auipc	ra,0xffffe
    80008844:	704080e7          	jalr	1796(ra) # 80006f44 <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	01813083          	ld	ra,24(sp)
    80008850:	01013403          	ld	s0,16(sp)
    80008854:	0017879b          	addiw	a5,a5,1
    80008858:	06f52c23          	sw	a5,120(a0)
    8000885c:	00813483          	ld	s1,8(sp)
    80008860:	02010113          	addi	sp,sp,32
    80008864:	00008067          	ret
    80008868:	0014d493          	srli	s1,s1,0x1
    8000886c:	ffffe097          	auipc	ra,0xffffe
    80008870:	6d8080e7          	jalr	1752(ra) # 80006f44 <mycpu>
    80008874:	0014f493          	andi	s1,s1,1
    80008878:	06952e23          	sw	s1,124(a0)
    8000887c:	fc5ff06f          	j	80008840 <push_off+0x34>

0000000080008880 <pop_off>:
    80008880:	ff010113          	addi	sp,sp,-16
    80008884:	00813023          	sd	s0,0(sp)
    80008888:	00113423          	sd	ra,8(sp)
    8000888c:	01010413          	addi	s0,sp,16
    80008890:	ffffe097          	auipc	ra,0xffffe
    80008894:	6b4080e7          	jalr	1716(ra) # 80006f44 <mycpu>
    80008898:	100027f3          	csrr	a5,sstatus
    8000889c:	0027f793          	andi	a5,a5,2
    800088a0:	04079663          	bnez	a5,800088ec <pop_off+0x6c>
    800088a4:	07852783          	lw	a5,120(a0)
    800088a8:	02f05a63          	blez	a5,800088dc <pop_off+0x5c>
    800088ac:	fff7871b          	addiw	a4,a5,-1
    800088b0:	06e52c23          	sw	a4,120(a0)
    800088b4:	00071c63          	bnez	a4,800088cc <pop_off+0x4c>
    800088b8:	07c52783          	lw	a5,124(a0)
    800088bc:	00078863          	beqz	a5,800088cc <pop_off+0x4c>
    800088c0:	100027f3          	csrr	a5,sstatus
    800088c4:	0027e793          	ori	a5,a5,2
    800088c8:	10079073          	csrw	sstatus,a5
    800088cc:	00813083          	ld	ra,8(sp)
    800088d0:	00013403          	ld	s0,0(sp)
    800088d4:	01010113          	addi	sp,sp,16
    800088d8:	00008067          	ret
    800088dc:	00001517          	auipc	a0,0x1
    800088e0:	e8450513          	addi	a0,a0,-380 # 80009760 <digits+0x48>
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	018080e7          	jalr	24(ra) # 800078fc <panic>
    800088ec:	00001517          	auipc	a0,0x1
    800088f0:	e5c50513          	addi	a0,a0,-420 # 80009748 <digits+0x30>
    800088f4:	fffff097          	auipc	ra,0xfffff
    800088f8:	008080e7          	jalr	8(ra) # 800078fc <panic>

00000000800088fc <push_on>:
    800088fc:	fe010113          	addi	sp,sp,-32
    80008900:	00813823          	sd	s0,16(sp)
    80008904:	00113c23          	sd	ra,24(sp)
    80008908:	00913423          	sd	s1,8(sp)
    8000890c:	02010413          	addi	s0,sp,32
    80008910:	100024f3          	csrr	s1,sstatus
    80008914:	100027f3          	csrr	a5,sstatus
    80008918:	0027e793          	ori	a5,a5,2
    8000891c:	10079073          	csrw	sstatus,a5
    80008920:	ffffe097          	auipc	ra,0xffffe
    80008924:	624080e7          	jalr	1572(ra) # 80006f44 <mycpu>
    80008928:	07852783          	lw	a5,120(a0)
    8000892c:	02078663          	beqz	a5,80008958 <push_on+0x5c>
    80008930:	ffffe097          	auipc	ra,0xffffe
    80008934:	614080e7          	jalr	1556(ra) # 80006f44 <mycpu>
    80008938:	07852783          	lw	a5,120(a0)
    8000893c:	01813083          	ld	ra,24(sp)
    80008940:	01013403          	ld	s0,16(sp)
    80008944:	0017879b          	addiw	a5,a5,1
    80008948:	06f52c23          	sw	a5,120(a0)
    8000894c:	00813483          	ld	s1,8(sp)
    80008950:	02010113          	addi	sp,sp,32
    80008954:	00008067          	ret
    80008958:	0014d493          	srli	s1,s1,0x1
    8000895c:	ffffe097          	auipc	ra,0xffffe
    80008960:	5e8080e7          	jalr	1512(ra) # 80006f44 <mycpu>
    80008964:	0014f493          	andi	s1,s1,1
    80008968:	06952e23          	sw	s1,124(a0)
    8000896c:	fc5ff06f          	j	80008930 <push_on+0x34>

0000000080008970 <pop_on>:
    80008970:	ff010113          	addi	sp,sp,-16
    80008974:	00813023          	sd	s0,0(sp)
    80008978:	00113423          	sd	ra,8(sp)
    8000897c:	01010413          	addi	s0,sp,16
    80008980:	ffffe097          	auipc	ra,0xffffe
    80008984:	5c4080e7          	jalr	1476(ra) # 80006f44 <mycpu>
    80008988:	100027f3          	csrr	a5,sstatus
    8000898c:	0027f793          	andi	a5,a5,2
    80008990:	04078463          	beqz	a5,800089d8 <pop_on+0x68>
    80008994:	07852783          	lw	a5,120(a0)
    80008998:	02f05863          	blez	a5,800089c8 <pop_on+0x58>
    8000899c:	fff7879b          	addiw	a5,a5,-1
    800089a0:	06f52c23          	sw	a5,120(a0)
    800089a4:	07853783          	ld	a5,120(a0)
    800089a8:	00079863          	bnez	a5,800089b8 <pop_on+0x48>
    800089ac:	100027f3          	csrr	a5,sstatus
    800089b0:	ffd7f793          	andi	a5,a5,-3
    800089b4:	10079073          	csrw	sstatus,a5
    800089b8:	00813083          	ld	ra,8(sp)
    800089bc:	00013403          	ld	s0,0(sp)
    800089c0:	01010113          	addi	sp,sp,16
    800089c4:	00008067          	ret
    800089c8:	00001517          	auipc	a0,0x1
    800089cc:	dc050513          	addi	a0,a0,-576 # 80009788 <digits+0x70>
    800089d0:	fffff097          	auipc	ra,0xfffff
    800089d4:	f2c080e7          	jalr	-212(ra) # 800078fc <panic>
    800089d8:	00001517          	auipc	a0,0x1
    800089dc:	d9050513          	addi	a0,a0,-624 # 80009768 <digits+0x50>
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	f1c080e7          	jalr	-228(ra) # 800078fc <panic>

00000000800089e8 <__memset>:
    800089e8:	ff010113          	addi	sp,sp,-16
    800089ec:	00813423          	sd	s0,8(sp)
    800089f0:	01010413          	addi	s0,sp,16
    800089f4:	1a060e63          	beqz	a2,80008bb0 <__memset+0x1c8>
    800089f8:	40a007b3          	neg	a5,a0
    800089fc:	0077f793          	andi	a5,a5,7
    80008a00:	00778693          	addi	a3,a5,7
    80008a04:	00b00813          	li	a6,11
    80008a08:	0ff5f593          	andi	a1,a1,255
    80008a0c:	fff6071b          	addiw	a4,a2,-1
    80008a10:	1b06e663          	bltu	a3,a6,80008bbc <__memset+0x1d4>
    80008a14:	1cd76463          	bltu	a4,a3,80008bdc <__memset+0x1f4>
    80008a18:	1a078e63          	beqz	a5,80008bd4 <__memset+0x1ec>
    80008a1c:	00b50023          	sb	a1,0(a0)
    80008a20:	00100713          	li	a4,1
    80008a24:	1ae78463          	beq	a5,a4,80008bcc <__memset+0x1e4>
    80008a28:	00b500a3          	sb	a1,1(a0)
    80008a2c:	00200713          	li	a4,2
    80008a30:	1ae78a63          	beq	a5,a4,80008be4 <__memset+0x1fc>
    80008a34:	00b50123          	sb	a1,2(a0)
    80008a38:	00300713          	li	a4,3
    80008a3c:	18e78463          	beq	a5,a4,80008bc4 <__memset+0x1dc>
    80008a40:	00b501a3          	sb	a1,3(a0)
    80008a44:	00400713          	li	a4,4
    80008a48:	1ae78263          	beq	a5,a4,80008bec <__memset+0x204>
    80008a4c:	00b50223          	sb	a1,4(a0)
    80008a50:	00500713          	li	a4,5
    80008a54:	1ae78063          	beq	a5,a4,80008bf4 <__memset+0x20c>
    80008a58:	00b502a3          	sb	a1,5(a0)
    80008a5c:	00700713          	li	a4,7
    80008a60:	18e79e63          	bne	a5,a4,80008bfc <__memset+0x214>
    80008a64:	00b50323          	sb	a1,6(a0)
    80008a68:	00700e93          	li	t4,7
    80008a6c:	00859713          	slli	a4,a1,0x8
    80008a70:	00e5e733          	or	a4,a1,a4
    80008a74:	01059e13          	slli	t3,a1,0x10
    80008a78:	01c76e33          	or	t3,a4,t3
    80008a7c:	01859313          	slli	t1,a1,0x18
    80008a80:	006e6333          	or	t1,t3,t1
    80008a84:	02059893          	slli	a7,a1,0x20
    80008a88:	40f60e3b          	subw	t3,a2,a5
    80008a8c:	011368b3          	or	a7,t1,a7
    80008a90:	02859813          	slli	a6,a1,0x28
    80008a94:	0108e833          	or	a6,a7,a6
    80008a98:	03059693          	slli	a3,a1,0x30
    80008a9c:	003e589b          	srliw	a7,t3,0x3
    80008aa0:	00d866b3          	or	a3,a6,a3
    80008aa4:	03859713          	slli	a4,a1,0x38
    80008aa8:	00389813          	slli	a6,a7,0x3
    80008aac:	00f507b3          	add	a5,a0,a5
    80008ab0:	00e6e733          	or	a4,a3,a4
    80008ab4:	000e089b          	sext.w	a7,t3
    80008ab8:	00f806b3          	add	a3,a6,a5
    80008abc:	00e7b023          	sd	a4,0(a5)
    80008ac0:	00878793          	addi	a5,a5,8
    80008ac4:	fed79ce3          	bne	a5,a3,80008abc <__memset+0xd4>
    80008ac8:	ff8e7793          	andi	a5,t3,-8
    80008acc:	0007871b          	sext.w	a4,a5
    80008ad0:	01d787bb          	addw	a5,a5,t4
    80008ad4:	0ce88e63          	beq	a7,a4,80008bb0 <__memset+0x1c8>
    80008ad8:	00f50733          	add	a4,a0,a5
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0017871b          	addiw	a4,a5,1
    80008ae4:	0cc77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0027871b          	addiw	a4,a5,2
    80008af4:	0ac77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0037871b          	addiw	a4,a5,3
    80008b04:	0ac77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0047871b          	addiw	a4,a5,4
    80008b14:	08c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0057871b          	addiw	a4,a5,5
    80008b24:	08c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0067871b          	addiw	a4,a5,6
    80008b34:	06c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0077871b          	addiw	a4,a5,7
    80008b44:	06c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0087871b          	addiw	a4,a5,8
    80008b54:	04c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	0097871b          	addiw	a4,a5,9
    80008b64:	04c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00a7871b          	addiw	a4,a5,10
    80008b74:	02c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	00b7871b          	addiw	a4,a5,11
    80008b84:	02c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	00c7871b          	addiw	a4,a5,12
    80008b94:	00c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b98:	00e50733          	add	a4,a0,a4
    80008b9c:	00b70023          	sb	a1,0(a4)
    80008ba0:	00d7879b          	addiw	a5,a5,13
    80008ba4:	00c7f663          	bgeu	a5,a2,80008bb0 <__memset+0x1c8>
    80008ba8:	00f507b3          	add	a5,a0,a5
    80008bac:	00b78023          	sb	a1,0(a5)
    80008bb0:	00813403          	ld	s0,8(sp)
    80008bb4:	01010113          	addi	sp,sp,16
    80008bb8:	00008067          	ret
    80008bbc:	00b00693          	li	a3,11
    80008bc0:	e55ff06f          	j	80008a14 <__memset+0x2c>
    80008bc4:	00300e93          	li	t4,3
    80008bc8:	ea5ff06f          	j	80008a6c <__memset+0x84>
    80008bcc:	00100e93          	li	t4,1
    80008bd0:	e9dff06f          	j	80008a6c <__memset+0x84>
    80008bd4:	00000e93          	li	t4,0
    80008bd8:	e95ff06f          	j	80008a6c <__memset+0x84>
    80008bdc:	00000793          	li	a5,0
    80008be0:	ef9ff06f          	j	80008ad8 <__memset+0xf0>
    80008be4:	00200e93          	li	t4,2
    80008be8:	e85ff06f          	j	80008a6c <__memset+0x84>
    80008bec:	00400e93          	li	t4,4
    80008bf0:	e7dff06f          	j	80008a6c <__memset+0x84>
    80008bf4:	00500e93          	li	t4,5
    80008bf8:	e75ff06f          	j	80008a6c <__memset+0x84>
    80008bfc:	00600e93          	li	t4,6
    80008c00:	e6dff06f          	j	80008a6c <__memset+0x84>

0000000080008c04 <__memmove>:
    80008c04:	ff010113          	addi	sp,sp,-16
    80008c08:	00813423          	sd	s0,8(sp)
    80008c0c:	01010413          	addi	s0,sp,16
    80008c10:	0e060863          	beqz	a2,80008d00 <__memmove+0xfc>
    80008c14:	fff6069b          	addiw	a3,a2,-1
    80008c18:	0006881b          	sext.w	a6,a3
    80008c1c:	0ea5e863          	bltu	a1,a0,80008d0c <__memmove+0x108>
    80008c20:	00758713          	addi	a4,a1,7
    80008c24:	00a5e7b3          	or	a5,a1,a0
    80008c28:	40a70733          	sub	a4,a4,a0
    80008c2c:	0077f793          	andi	a5,a5,7
    80008c30:	00f73713          	sltiu	a4,a4,15
    80008c34:	00174713          	xori	a4,a4,1
    80008c38:	0017b793          	seqz	a5,a5
    80008c3c:	00e7f7b3          	and	a5,a5,a4
    80008c40:	10078863          	beqz	a5,80008d50 <__memmove+0x14c>
    80008c44:	00900793          	li	a5,9
    80008c48:	1107f463          	bgeu	a5,a6,80008d50 <__memmove+0x14c>
    80008c4c:	0036581b          	srliw	a6,a2,0x3
    80008c50:	fff8081b          	addiw	a6,a6,-1
    80008c54:	02081813          	slli	a6,a6,0x20
    80008c58:	01d85893          	srli	a7,a6,0x1d
    80008c5c:	00858813          	addi	a6,a1,8
    80008c60:	00058793          	mv	a5,a1
    80008c64:	00050713          	mv	a4,a0
    80008c68:	01088833          	add	a6,a7,a6
    80008c6c:	0007b883          	ld	a7,0(a5)
    80008c70:	00878793          	addi	a5,a5,8
    80008c74:	00870713          	addi	a4,a4,8
    80008c78:	ff173c23          	sd	a7,-8(a4)
    80008c7c:	ff0798e3          	bne	a5,a6,80008c6c <__memmove+0x68>
    80008c80:	ff867713          	andi	a4,a2,-8
    80008c84:	02071793          	slli	a5,a4,0x20
    80008c88:	0207d793          	srli	a5,a5,0x20
    80008c8c:	00f585b3          	add	a1,a1,a5
    80008c90:	40e686bb          	subw	a3,a3,a4
    80008c94:	00f507b3          	add	a5,a0,a5
    80008c98:	06e60463          	beq	a2,a4,80008d00 <__memmove+0xfc>
    80008c9c:	0005c703          	lbu	a4,0(a1)
    80008ca0:	00e78023          	sb	a4,0(a5)
    80008ca4:	04068e63          	beqz	a3,80008d00 <__memmove+0xfc>
    80008ca8:	0015c603          	lbu	a2,1(a1)
    80008cac:	00100713          	li	a4,1
    80008cb0:	00c780a3          	sb	a2,1(a5)
    80008cb4:	04e68663          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cb8:	0025c603          	lbu	a2,2(a1)
    80008cbc:	00200713          	li	a4,2
    80008cc0:	00c78123          	sb	a2,2(a5)
    80008cc4:	02e68e63          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cc8:	0035c603          	lbu	a2,3(a1)
    80008ccc:	00300713          	li	a4,3
    80008cd0:	00c781a3          	sb	a2,3(a5)
    80008cd4:	02e68663          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cd8:	0045c603          	lbu	a2,4(a1)
    80008cdc:	00400713          	li	a4,4
    80008ce0:	00c78223          	sb	a2,4(a5)
    80008ce4:	00e68e63          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008ce8:	0055c603          	lbu	a2,5(a1)
    80008cec:	00500713          	li	a4,5
    80008cf0:	00c782a3          	sb	a2,5(a5)
    80008cf4:	00e68663          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cf8:	0065c703          	lbu	a4,6(a1)
    80008cfc:	00e78323          	sb	a4,6(a5)
    80008d00:	00813403          	ld	s0,8(sp)
    80008d04:	01010113          	addi	sp,sp,16
    80008d08:	00008067          	ret
    80008d0c:	02061713          	slli	a4,a2,0x20
    80008d10:	02075713          	srli	a4,a4,0x20
    80008d14:	00e587b3          	add	a5,a1,a4
    80008d18:	f0f574e3          	bgeu	a0,a5,80008c20 <__memmove+0x1c>
    80008d1c:	02069613          	slli	a2,a3,0x20
    80008d20:	02065613          	srli	a2,a2,0x20
    80008d24:	fff64613          	not	a2,a2
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00c78633          	add	a2,a5,a2
    80008d30:	fff7c683          	lbu	a3,-1(a5)
    80008d34:	fff78793          	addi	a5,a5,-1
    80008d38:	fff70713          	addi	a4,a4,-1
    80008d3c:	00d70023          	sb	a3,0(a4)
    80008d40:	fec798e3          	bne	a5,a2,80008d30 <__memmove+0x12c>
    80008d44:	00813403          	ld	s0,8(sp)
    80008d48:	01010113          	addi	sp,sp,16
    80008d4c:	00008067          	ret
    80008d50:	02069713          	slli	a4,a3,0x20
    80008d54:	02075713          	srli	a4,a4,0x20
    80008d58:	00170713          	addi	a4,a4,1
    80008d5c:	00e50733          	add	a4,a0,a4
    80008d60:	00050793          	mv	a5,a0
    80008d64:	0005c683          	lbu	a3,0(a1)
    80008d68:	00178793          	addi	a5,a5,1
    80008d6c:	00158593          	addi	a1,a1,1
    80008d70:	fed78fa3          	sb	a3,-1(a5)
    80008d74:	fee798e3          	bne	a5,a4,80008d64 <__memmove+0x160>
    80008d78:	f89ff06f          	j	80008d00 <__memmove+0xfc>

0000000080008d7c <__putc>:
    80008d7c:	fe010113          	addi	sp,sp,-32
    80008d80:	00813823          	sd	s0,16(sp)
    80008d84:	00113c23          	sd	ra,24(sp)
    80008d88:	02010413          	addi	s0,sp,32
    80008d8c:	00050793          	mv	a5,a0
    80008d90:	fef40593          	addi	a1,s0,-17
    80008d94:	00100613          	li	a2,1
    80008d98:	00000513          	li	a0,0
    80008d9c:	fef407a3          	sb	a5,-17(s0)
    80008da0:	fffff097          	auipc	ra,0xfffff
    80008da4:	b3c080e7          	jalr	-1220(ra) # 800078dc <console_write>
    80008da8:	01813083          	ld	ra,24(sp)
    80008dac:	01013403          	ld	s0,16(sp)
    80008db0:	02010113          	addi	sp,sp,32
    80008db4:	00008067          	ret

0000000080008db8 <__getc>:
    80008db8:	fe010113          	addi	sp,sp,-32
    80008dbc:	00813823          	sd	s0,16(sp)
    80008dc0:	00113c23          	sd	ra,24(sp)
    80008dc4:	02010413          	addi	s0,sp,32
    80008dc8:	fe840593          	addi	a1,s0,-24
    80008dcc:	00100613          	li	a2,1
    80008dd0:	00000513          	li	a0,0
    80008dd4:	fffff097          	auipc	ra,0xfffff
    80008dd8:	ae8080e7          	jalr	-1304(ra) # 800078bc <console_read>
    80008ddc:	fe844503          	lbu	a0,-24(s0)
    80008de0:	01813083          	ld	ra,24(sp)
    80008de4:	01013403          	ld	s0,16(sp)
    80008de8:	02010113          	addi	sp,sp,32
    80008dec:	00008067          	ret

0000000080008df0 <console_handler>:
    80008df0:	fe010113          	addi	sp,sp,-32
    80008df4:	00813823          	sd	s0,16(sp)
    80008df8:	00113c23          	sd	ra,24(sp)
    80008dfc:	00913423          	sd	s1,8(sp)
    80008e00:	02010413          	addi	s0,sp,32
    80008e04:	14202773          	csrr	a4,scause
    80008e08:	100027f3          	csrr	a5,sstatus
    80008e0c:	0027f793          	andi	a5,a5,2
    80008e10:	06079e63          	bnez	a5,80008e8c <console_handler+0x9c>
    80008e14:	00074c63          	bltz	a4,80008e2c <console_handler+0x3c>
    80008e18:	01813083          	ld	ra,24(sp)
    80008e1c:	01013403          	ld	s0,16(sp)
    80008e20:	00813483          	ld	s1,8(sp)
    80008e24:	02010113          	addi	sp,sp,32
    80008e28:	00008067          	ret
    80008e2c:	0ff77713          	andi	a4,a4,255
    80008e30:	00900793          	li	a5,9
    80008e34:	fef712e3          	bne	a4,a5,80008e18 <console_handler+0x28>
    80008e38:	ffffe097          	auipc	ra,0xffffe
    80008e3c:	6dc080e7          	jalr	1756(ra) # 80007514 <plic_claim>
    80008e40:	00a00793          	li	a5,10
    80008e44:	00050493          	mv	s1,a0
    80008e48:	02f50c63          	beq	a0,a5,80008e80 <console_handler+0x90>
    80008e4c:	fc0506e3          	beqz	a0,80008e18 <console_handler+0x28>
    80008e50:	00050593          	mv	a1,a0
    80008e54:	00001517          	auipc	a0,0x1
    80008e58:	83c50513          	addi	a0,a0,-1988 # 80009690 <CONSOLE_STATUS+0x680>
    80008e5c:	fffff097          	auipc	ra,0xfffff
    80008e60:	afc080e7          	jalr	-1284(ra) # 80007958 <__printf>
    80008e64:	01013403          	ld	s0,16(sp)
    80008e68:	01813083          	ld	ra,24(sp)
    80008e6c:	00048513          	mv	a0,s1
    80008e70:	00813483          	ld	s1,8(sp)
    80008e74:	02010113          	addi	sp,sp,32
    80008e78:	ffffe317          	auipc	t1,0xffffe
    80008e7c:	6d430067          	jr	1748(t1) # 8000754c <plic_complete>
    80008e80:	fffff097          	auipc	ra,0xfffff
    80008e84:	3e0080e7          	jalr	992(ra) # 80008260 <uartintr>
    80008e88:	fddff06f          	j	80008e64 <console_handler+0x74>
    80008e8c:	00001517          	auipc	a0,0x1
    80008e90:	90450513          	addi	a0,a0,-1788 # 80009790 <digits+0x78>
    80008e94:	fffff097          	auipc	ra,0xfffff
    80008e98:	a68080e7          	jalr	-1432(ra) # 800078fc <panic>
	...
