
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
    8000001c:	074070ef          	jal	ra,80007090 <start>

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
    80001180:	2c5010ef          	jal	ra,80002c44 <_ZN5RISCV16handle_interruptEv>

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
    if (start_routine) {
    80001324:	04058e63          	beqz	a1,80001380 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
        stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001328:	00001537          	lui	a0,0x1
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	f34080e7          	jalr	-204(ra) # 80001260 <_Z9mem_allocm>
    80001334:	00050713          	mv	a4,a0
        if (!stack_space) return -1; // memory allocation error
    80001338:	04050863          	beqz	a0,80001388 <_Z13thread_createPP3TCBPFvPvES2_+0x8c>
    }
    system_call(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    8000133c:	00098693          	mv	a3,s3
    80001340:	00048613          	mv	a2,s1
    80001344:	00090593          	mv	a1,s2
    80001348:	01100513          	li	a0,17
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	ef8080e7          	jalr	-264(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001354:	00050793          	mv	a5,a0
    80001358:	fcf42623          	sw	a5,-52(s0)
    return ret;
    8000135c:	fcc42503          	lw	a0,-52(s0)
    80001360:	0005051b          	sext.w	a0,a0
}
    80001364:	03813083          	ld	ra,56(sp)
    80001368:	03013403          	ld	s0,48(sp)
    8000136c:	02813483          	ld	s1,40(sp)
    80001370:	02013903          	ld	s2,32(sp)
    80001374:	01813983          	ld	s3,24(sp)
    80001378:	04010113          	addi	sp,sp,64
    8000137c:	00008067          	ret
    void* stack_space = nullptr;
    80001380:	00000713          	li	a4,0
    80001384:	fb9ff06f          	j	8000133c <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (!stack_space) return -1; // memory allocation error
    80001388:	fff00513          	li	a0,-1
    8000138c:	fd9ff06f          	j	80001364 <_Z13thread_createPP3TCBPFvPvES2_+0x68>

0000000080001390 <_Z11thread_exitv>:

int thread_exit() {
    80001390:	fe010113          	addi	sp,sp,-32
    80001394:	00113c23          	sd	ra,24(sp)
    80001398:	00813823          	sd	s0,16(sp)
    8000139c:	02010413          	addi	s0,sp,32
    int volatile a0;
    system_call(THREAD_EXIT);
    800013a0:	00000713          	li	a4,0
    800013a4:	00000693          	li	a3,0
    800013a8:	00000613          	li	a2,0
    800013ac:	00000593          	li	a1,0
    800013b0:	01200513          	li	a0,18
    800013b4:	00000097          	auipc	ra,0x0
    800013b8:	e90080e7          	jalr	-368(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800013bc:	00050793          	mv	a5,a0
    800013c0:	fef42623          	sw	a5,-20(s0)
    return a0;
    800013c4:	fec42503          	lw	a0,-20(s0)
}
    800013c8:	0005051b          	sext.w	a0,a0
    800013cc:	01813083          	ld	ra,24(sp)
    800013d0:	01013403          	ld	s0,16(sp)
    800013d4:	02010113          	addi	sp,sp,32
    800013d8:	00008067          	ret

00000000800013dc <_Z15thread_dispatchv>:

void thread_dispatch() {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00113423          	sd	ra,8(sp)
    800013e4:	00813023          	sd	s0,0(sp)
    800013e8:	01010413          	addi	s0,sp,16
    system_call(THREAD_DISPATCH);
    800013ec:	00000713          	li	a4,0
    800013f0:	00000693          	li	a3,0
    800013f4:	00000613          	li	a2,0
    800013f8:	00000593          	li	a1,0
    800013fc:	01300513          	li	a0,19
    80001400:	00000097          	auipc	ra,0x0
    80001404:	e44080e7          	jalr	-444(ra) # 80001244 <_Z11system_callmmmmm>
}
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    80001418:	fe010113          	addi	sp,sp,-32
    8000141c:	00113c23          	sd	ra,24(sp)
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	02010413          	addi	s0,sp,32
    int volatile a0;
    system_call(SEM_OPEN, (uint64)handle, init);
    80001428:	00000713          	li	a4,0
    8000142c:	00000693          	li	a3,0
    80001430:	02059613          	slli	a2,a1,0x20
    80001434:	02065613          	srli	a2,a2,0x20
    80001438:	00050593          	mv	a1,a0
    8000143c:	02100513          	li	a0,33
    80001440:	00000097          	auipc	ra,0x0
    80001444:	e04080e7          	jalr	-508(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001448:	00050793          	mv	a5,a0
    8000144c:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001450:	fec42503          	lw	a0,-20(s0)
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	01813083          	ld	ra,24(sp)
    8000145c:	01013403          	ld	s0,16(sp)
    80001460:	02010113          	addi	sp,sp,32
    80001464:	00008067          	ret

0000000080001468 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    if (!handle) return -1; // no sem
    80001468:	04050863          	beqz	a0,800014b8 <_Z9sem_closeP3Sem+0x50>
int sem_close(sem_t handle) {
    8000146c:	fe010113          	addi	sp,sp,-32
    80001470:	00113c23          	sd	ra,24(sp)
    80001474:	00813823          	sd	s0,16(sp)
    80001478:	02010413          	addi	s0,sp,32
    8000147c:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_CLOSE, (uint64)handle);
    80001480:	00000713          	li	a4,0
    80001484:	00000693          	li	a3,0
    80001488:	00000613          	li	a2,0
    8000148c:	02200513          	li	a0,34
    80001490:	00000097          	auipc	ra,0x0
    80001494:	db4080e7          	jalr	-588(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001498:	00050793          	mv	a5,a0
    8000149c:	fef42623          	sw	a5,-20(s0)
    return a0;
    800014a0:	fec42503          	lw	a0,-20(s0)
    800014a4:	0005051b          	sext.w	a0,a0
}
    800014a8:	01813083          	ld	ra,24(sp)
    800014ac:	01013403          	ld	s0,16(sp)
    800014b0:	02010113          	addi	sp,sp,32
    800014b4:	00008067          	ret
    if (!handle) return -1; // no sem
    800014b8:	fff00513          	li	a0,-1
}
    800014bc:	00008067          	ret

00000000800014c0 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800014c0:	fe010113          	addi	sp,sp,-32
    800014c4:	00113c23          	sd	ra,24(sp)
    800014c8:	00813823          	sd	s0,16(sp)
    800014cc:	02010413          	addi	s0,sp,32
    800014d0:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_WAIT, (uint64)id);
    800014d4:	00000713          	li	a4,0
    800014d8:	00000693          	li	a3,0
    800014dc:	00000613          	li	a2,0
    800014e0:	02300513          	li	a0,35
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	d60080e7          	jalr	-672(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800014ec:	00050793          	mv	a5,a0
    800014f0:	fef42623          	sw	a5,-20(s0)
    return a0;
    800014f4:	fec42503          	lw	a0,-20(s0)
}
    800014f8:	0005051b          	sext.w	a0,a0
    800014fc:	01813083          	ld	ra,24(sp)
    80001500:	01013403          	ld	s0,16(sp)
    80001504:	02010113          	addi	sp,sp,32
    80001508:	00008067          	ret

000000008000150c <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    8000150c:	fe010113          	addi	sp,sp,-32
    80001510:	00113c23          	sd	ra,24(sp)
    80001514:	00813823          	sd	s0,16(sp)
    80001518:	02010413          	addi	s0,sp,32
    8000151c:	00058613          	mv	a2,a1
    int volatile a0;
    system_call(SEM_TIMEDWAIT, (uint64)id, (uint64)timeout);
    80001520:	00000713          	li	a4,0
    80001524:	00000693          	li	a3,0
    80001528:	00050593          	mv	a1,a0
    8000152c:	02500513          	li	a0,37
    80001530:	00000097          	auipc	ra,0x0
    80001534:	d14080e7          	jalr	-748(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001538:	00050793          	mv	a5,a0
    8000153c:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001540:	fec42503          	lw	a0,-20(s0)
}
    80001544:	0005051b          	sext.w	a0,a0
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	02010113          	addi	sp,sp,32
    80001554:	00008067          	ret

0000000080001558 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    80001558:	fe010113          	addi	sp,sp,-32
    8000155c:	00113c23          	sd	ra,24(sp)
    80001560:	00813823          	sd	s0,16(sp)
    80001564:	02010413          	addi	s0,sp,32
    80001568:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_TRYWAIT, (uint64)id);
    8000156c:	00000713          	li	a4,0
    80001570:	00000693          	li	a3,0
    80001574:	00000613          	li	a2,0
    80001578:	02600513          	li	a0,38
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	cc8080e7          	jalr	-824(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001584:	00050793          	mv	a5,a0
    80001588:	fef42623          	sw	a5,-20(s0)
    return a0;
    8000158c:	fec42503          	lw	a0,-20(s0)
}
    80001590:	0005051b          	sext.w	a0,a0
    80001594:	01813083          	ld	ra,24(sp)
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	02010113          	addi	sp,sp,32
    800015a0:	00008067          	ret

00000000800015a4 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    800015a4:	fe010113          	addi	sp,sp,-32
    800015a8:	00113c23          	sd	ra,24(sp)
    800015ac:	00813823          	sd	s0,16(sp)
    800015b0:	02010413          	addi	s0,sp,32
    800015b4:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(SEM_SIGNAL, (uint64)id);
    800015b8:	00000713          	li	a4,0
    800015bc:	00000693          	li	a3,0
    800015c0:	00000613          	li	a2,0
    800015c4:	02400513          	li	a0,36
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	c7c080e7          	jalr	-900(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800015d0:	00050793          	mv	a5,a0
    800015d4:	fef42623          	sw	a5,-20(s0)
    return a0;
    800015d8:	fec42503          	lw	a0,-20(s0)
}
    800015dc:	0005051b          	sext.w	a0,a0
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	02010113          	addi	sp,sp,32
    800015ec:	00008067          	ret

00000000800015f0 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    800015f0:	fe010113          	addi	sp,sp,-32
    800015f4:	00113c23          	sd	ra,24(sp)
    800015f8:	00813823          	sd	s0,16(sp)
    800015fc:	02010413          	addi	s0,sp,32
    80001600:	00050593          	mv	a1,a0
    int volatile a0;
    system_call(TIME_SLEEP, (uint64)time);
    80001604:	00000713          	li	a4,0
    80001608:	00000693          	li	a3,0
    8000160c:	00000613          	li	a2,0
    80001610:	03100513          	li	a0,49
    80001614:	00000097          	auipc	ra,0x0
    80001618:	c30080e7          	jalr	-976(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000161c:	00050793          	mv	a5,a0
    80001620:	fef42623          	sw	a5,-20(s0)
    return a0;
    80001624:	fec42503          	lw	a0,-20(s0)
}
    80001628:	0005051b          	sext.w	a0,a0
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret

000000008000163c <_Z4getcv>:

char getc() {
    8000163c:	fe010113          	addi	sp,sp,-32
    80001640:	00113c23          	sd	ra,24(sp)
    80001644:	00813823          	sd	s0,16(sp)
    80001648:	02010413          	addi	s0,sp,32
    char volatile a0;
    system_call(GETC);
    8000164c:	00000713          	li	a4,0
    80001650:	00000693          	li	a3,0
    80001654:	00000613          	li	a2,0
    80001658:	00000593          	li	a1,0
    8000165c:	04100513          	li	a0,65
    80001660:	00000097          	auipc	ra,0x0
    80001664:	be4080e7          	jalr	-1052(ra) # 80001244 <_Z11system_callmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001668:	00050793          	mv	a5,a0
    8000166c:	fef407a3          	sb	a5,-17(s0)
    return a0;
    80001670:	fef44503          	lbu	a0,-17(s0)
}
    80001674:	0ff57513          	andi	a0,a0,255
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret

0000000080001688 <_Z4putcc>:

void putc(char c) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    80001698:	00050593          	mv	a1,a0
    system_call(PUTC, c);
    8000169c:	00000713          	li	a4,0
    800016a0:	00000693          	li	a3,0
    800016a4:	00000613          	li	a2,0
    800016a8:	04200513          	li	a0,66
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	b98080e7          	jalr	-1128(ra) # 80001244 <_Z11system_callmmmmm>
}
    800016b4:	00813083          	ld	ra,8(sp)
    800016b8:	00013403          	ld	s0,0(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret

00000000800016c4 <_ZN3Sem7trywaitEPS_>:
    return 0;
}

int Sem::trywait(sem_t handle) { /// ??????????????????

    if (!handle) return SEM_CLOSED; // error code
    800016c4:	02050e63          	beqz	a0,80001700 <_ZN3Sem7trywaitEPS_+0x3c>
    if (handle->value > 0) return sem_wait(handle);
    800016c8:	00052783          	lw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    800016cc:	00f04663          	bgtz	a5,800016d8 <_ZN3Sem7trywaitEPS_+0x14>
    return 0; // no success
    800016d0:	00000513          	li	a0,0
}
    800016d4:	00008067          	ret
int Sem::trywait(sem_t handle) { /// ??????????????????
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00113423          	sd	ra,8(sp)
    800016e0:	00813023          	sd	s0,0(sp)
    800016e4:	01010413          	addi	s0,sp,16
    if (handle->value > 0) return sem_wait(handle);
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	dd8080e7          	jalr	-552(ra) # 800014c0 <_Z8sem_waitP3Sem>
}
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret
    if (!handle) return SEM_CLOSED; // error code
    80001700:	ffc00513          	li	a0,-4
    80001704:	00008067          	ret

0000000080001708 <_ZN3SemdlEPv>:
    }

    return 0;
}

void Sem::operator delete(void *ptr) {
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00113423          	sd	ra,8(sp)
    80001710:	00813023          	sd	s0,0(sp)
    80001714:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001718:	00002097          	auipc	ra,0x2
    8000171c:	b6c080e7          	jalr	-1172(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001720:	00813083          	ld	ra,8(sp)
    80001724:	00013403          	ld	s0,0(sp)
    80001728:	01010113          	addi	sp,sp,16
    8000172c:	00008067          	ret

0000000080001730 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00113423          	sd	ra,8(sp)
    80001738:	00813023          	sd	s0,0(sp)
    8000173c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001740:	05750513          	addi	a0,a0,87
    80001744:	00655513          	srli	a0,a0,0x6
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	8fc080e7          	jalr	-1796(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001750:	00813083          	ld	ra,8(sp)
    80001754:	00013403          	ld	s0,0(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_ZNK3Sem9get_valueEv>:

int Sem::get_value() const {return value;}
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    8000176c:	00052503          	lw	a0,0(a0)
    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_ZN3Sem7sem_addEPS_>:

void Sem::sem_add(Sem* toAdd) {
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00813423          	sd	s0,8(sp)
    80001784:	01010413          	addi	s0,sp,16

    if (!first) first = last = toAdd;
    80001788:	0000b797          	auipc	a5,0xb
    8000178c:	6787b783          	ld	a5,1656(a5) # 8000ce00 <_ZN3Sem5firstE>
    80001790:	02078263          	beqz	a5,800017b4 <_ZN3Sem7sem_addEPS_+0x38>
    else last = last -> next = toAdd;
    80001794:	0000b797          	auipc	a5,0xb
    80001798:	66c78793          	addi	a5,a5,1644 # 8000ce00 <_ZN3Sem5firstE>
    8000179c:	0087b703          	ld	a4,8(a5)
    800017a0:	00a73423          	sd	a0,8(a4)
    800017a4:	00a7b423          	sd	a0,8(a5)

}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret
    if (!first) first = last = toAdd;
    800017b4:	0000b797          	auipc	a5,0xb
    800017b8:	64c78793          	addi	a5,a5,1612 # 8000ce00 <_ZN3Sem5firstE>
    800017bc:	00a7b423          	sd	a0,8(a5)
    800017c0:	00a7b023          	sd	a0,0(a5)
    800017c4:	fe5ff06f          	j	800017a8 <_ZN3Sem7sem_addEPS_+0x2c>

00000000800017c8 <_ZN3Sem4openEPPS_j>:
int Sem::open(sem_t *handle, unsigned int init) {
    800017c8:	fe010113          	addi	sp,sp,-32
    800017cc:	00113c23          	sd	ra,24(sp)
    800017d0:	00813823          	sd	s0,16(sp)
    800017d4:	00913423          	sd	s1,8(sp)
    800017d8:	01213023          	sd	s2,0(sp)
    800017dc:	02010413          	addi	s0,sp,32
    800017e0:	00050493          	mv	s1,a0
    800017e4:	00058913          	mv	s2,a1
    *handle = new Sem((int)init);
    800017e8:	03000513          	li	a0,48
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	f44080e7          	jalr	-188(ra) # 80001730 <_ZN3SemnwEm>
//    static ListSEM semaphores;
    static Sem* first, *last;

private:

    explicit Sem(int init = 1) : value(init), next(nullptr), blocked() {}
    800017f4:	01252023          	sw	s2,0(a0)
    800017f8:	00053423          	sd	zero,8(a0)

public:

    friend class RISCV;

    List() : head(nullptr), tail(nullptr) {};
    800017fc:	00053823          	sd	zero,16(a0)
    80001800:	00053c23          	sd	zero,24(a0)
    80001804:	02052023          	sw	zero,32(a0)
    80001808:	02052423          	sw	zero,40(a0)
    8000180c:	00a4b023          	sd	a0,0(s1)
    if (*handle == nullptr) return  -1;
    80001810:	02050463          	beqz	a0,80001838 <_ZN3Sem4openEPPS_j+0x70>
    sem_add(*handle); // to Sem list
    80001814:	00000097          	auipc	ra,0x0
    80001818:	f68080e7          	jalr	-152(ra) # 8000177c <_ZN3Sem7sem_addEPS_>
    return 0;
    8000181c:	00000513          	li	a0,0
}
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	00013903          	ld	s2,0(sp)
    80001830:	02010113          	addi	sp,sp,32
    80001834:	00008067          	ret
    if (*handle == nullptr) return  -1;
    80001838:	fff00513          	li	a0,-1
    8000183c:	fe5ff06f          	j	80001820 <_ZN3Sem4openEPPS_j+0x58>

0000000080001840 <_ZN3Sem10sem_removeEPS_>:

void Sem::sem_remove(Sem* toDelete) {
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00813423          	sd	s0,8(sp)
    80001848:	01010413          	addi	s0,sp,16

    Sem* prev = nullptr, *s = nullptr;

    for (s = first; s; s = s->next) {
    8000184c:	0000b797          	auipc	a5,0xb
    80001850:	5b47b783          	ld	a5,1460(a5) # 8000ce00 <_ZN3Sem5firstE>
    Sem* prev = nullptr, *s = nullptr;
    80001854:	00000713          	li	a4,0
    for (s = first; s; s = s->next) {
    80001858:	02078263          	beqz	a5,8000187c <_ZN3Sem10sem_removeEPS_+0x3c>
        if (s == toDelete) {
    8000185c:	00a78863          	beq	a5,a0,8000186c <_ZN3Sem10sem_removeEPS_+0x2c>
            if (prev) prev->next = s->next;
            else first = last = s;
            s->next = nullptr;
            return;
        }
        prev = s;
    80001860:	00078713          	mv	a4,a5
    for (s = first; s; s = s->next) {
    80001864:	0087b783          	ld	a5,8(a5)
    80001868:	ff1ff06f          	j	80001858 <_ZN3Sem10sem_removeEPS_+0x18>
            if (prev) prev->next = s->next;
    8000186c:	00070e63          	beqz	a4,80001888 <_ZN3Sem10sem_removeEPS_+0x48>
    80001870:	0087b683          	ld	a3,8(a5)
    80001874:	00d73423          	sd	a3,8(a4)
            s->next = nullptr;
    80001878:	0007b423          	sd	zero,8(a5)
    }
}
    8000187c:	00813403          	ld	s0,8(sp)
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret
            else first = last = s;
    80001888:	0000b717          	auipc	a4,0xb
    8000188c:	57870713          	addi	a4,a4,1400 # 8000ce00 <_ZN3Sem5firstE>
    80001890:	00f73423          	sd	a5,8(a4)
    80001894:	00f73023          	sd	a5,0(a4)
    80001898:	fe1ff06f          	j	80001878 <_ZN3Sem10sem_removeEPS_+0x38>

000000008000189c <_ZN3Sem5blockEv>:
void Sem::block() {
    8000189c:	fe010113          	addi	sp,sp,-32
    800018a0:	00113c23          	sd	ra,24(sp)
    800018a4:	00813823          	sd	s0,16(sp)
    800018a8:	00913423          	sd	s1,8(sp)
    800018ac:	01213023          	sd	s2,0(sp)
    800018b0:	02010413          	addi	s0,sp,32
    TCB* oldRunning = TCB::running;
    800018b4:	0000b917          	auipc	s2,0xb
    800018b8:	4e493903          	ld	s2,1252(s2) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    800018bc:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::BLOCKED;
    800018c0:	00400793          	li	a5,4
    800018c4:	06f4a423          	sw	a5,104(s1)
    blocked.add(oldRunning);
    800018c8:	00048593          	mv	a1,s1
    800018cc:	01050513          	addi	a0,a0,16
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	25c080e7          	jalr	604(ra) # 80001b2c <_ZN4ListI3TCBE3addEPS0_>
    TCB::running = Scheduler::get();
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	350080e7          	jalr	848(ra) # 80001c28 <_ZN9Scheduler3getEv>
    800018e0:	00050593          	mv	a1,a0
    800018e4:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	e04080e7          	jalr	-508(ra) # 800036f0 <_ZN3TCB5yieldEPS_S0_>
}
    800018f4:	01813083          	ld	ra,24(sp)
    800018f8:	01013403          	ld	s0,16(sp)
    800018fc:	00813483          	ld	s1,8(sp)
    80001900:	00013903          	ld	s2,0(sp)
    80001904:	02010113          	addi	sp,sp,32
    80001908:	00008067          	ret

000000008000190c <_ZN3Sem4waitEPS_>:
    if (!handle) return SEM_CLOSED;
    8000190c:	04050663          	beqz	a0,80001958 <_ZN3Sem4waitEPS_+0x4c>
    if (--handle->value < 0) {
    80001910:	00052783          	lw	a5,0(a0)
    80001914:	fff7879b          	addiw	a5,a5,-1
    80001918:	00f52023          	sw	a5,0(a0)
    8000191c:	02079713          	slli	a4,a5,0x20
    80001920:	00074663          	bltz	a4,8000192c <_ZN3Sem4waitEPS_+0x20>
    return 0;
    80001924:	00000513          	li	a0,0
}
    80001928:	00008067          	ret
int Sem::wait(sem_t handle) {
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
        handle->block();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	f60080e7          	jalr	-160(ra) # 8000189c <_ZN3Sem5blockEv>
    return 0;
    80001944:	00000513          	li	a0,0
}
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    80001958:	ffc00513          	li	a0,-4
    8000195c:	00008067          	ret

0000000080001960 <_ZN3Sem9timedwaitEPS_m>:
    if (!handle) return SEM_CLOSED;
    80001960:	08050c63          	beqz	a0,800019f8 <_ZN3Sem9timedwaitEPS_m+0x98>
int Sem::timedwait(sem_t handle, time_t time) {
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	01213023          	sd	s2,0(sp)
    80001978:	02010413          	addi	s0,sp,32
    8000197c:	00050493          	mv	s1,a0
    if (--(handle->value) < 0) {
    80001980:	00052783          	lw	a5,0(a0)
    80001984:	fff7879b          	addiw	a5,a5,-1
    80001988:	00f52023          	sw	a5,0(a0)
    8000198c:	02079713          	slli	a4,a5,0x20
    80001990:	02074063          	bltz	a4,800019b0 <_ZN3Sem9timedwaitEPS_m+0x50>
    return 0;
    80001994:	00000513          	li	a0,0
}
    80001998:	01813083          	ld	ra,24(sp)
    8000199c:	01013403          	ld	s0,16(sp)
    800019a0:	00813483          	ld	s1,8(sp)
    800019a4:	00013903          	ld	s2,0(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
        TCB::running->time_on_sem = time;
    800019b0:	0000b917          	auipc	s2,0xb
    800019b4:	3e893903          	ld	s2,1000(s2) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    800019b8:	00093783          	ld	a5,0(s2)
    800019bc:	00b7bc23          	sd	a1,24(a5)
        handle->timedBlock++;
    800019c0:	02852783          	lw	a5,40(a0)
    800019c4:	0017879b          	addiw	a5,a5,1
    800019c8:	02f52423          	sw	a5,40(a0)
        handle->block();
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	ed0080e7          	jalr	-304(ra) # 8000189c <_ZN3Sem5blockEv>
        handle->timedBlock--;
    800019d4:	0284a783          	lw	a5,40(s1)
    800019d8:	fff7879b          	addiw	a5,a5,-1
    800019dc:	02f4a423          	sw	a5,40(s1)
        if (!TCB::running->time_on_sem) return TIMEOUT;
    800019e0:	00093783          	ld	a5,0(s2)
    800019e4:	0187b703          	ld	a4,24(a5)
    800019e8:	00070c63          	beqz	a4,80001a00 <_ZN3Sem9timedwaitEPS_m+0xa0>
        else TCB::running->time_on_sem = 0;
    800019ec:	0007bc23          	sd	zero,24(a5)
    return 0;
    800019f0:	00000513          	li	a0,0
    800019f4:	fa5ff06f          	j	80001998 <_ZN3Sem9timedwaitEPS_m+0x38>
    if (!handle) return SEM_CLOSED;
    800019f8:	ffc00513          	li	a0,-4
}
    800019fc:	00008067          	ret
        if (!TCB::running->time_on_sem) return TIMEOUT;
    80001a00:	ffe00513          	li	a0,-2
    80001a04:	f95ff06f          	j	80001998 <_ZN3Sem9timedwaitEPS_m+0x38>

0000000080001a08 <_ZN3Sem7deblockEv>:
void Sem::deblock() {
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00113423          	sd	ra,8(sp)
    80001a10:	00813023          	sd	s0,0(sp)
    80001a14:	01010413          	addi	s0,sp,16
    TCB* tcb = blocked.get();
    80001a18:	01050513          	addi	a0,a0,16
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	188080e7          	jalr	392(ra) # 80001ba4 <_ZN4ListI3TCBE3getEv>
    if (!tcb) return; // should not happen
    80001a24:	00050863          	beqz	a0,80001a34 <_ZN3Sem7deblockEv+0x2c>
    tcb->current_state = TCB::RUNNABLE;
    80001a28:	06052423          	sw	zero,104(a0)
    Scheduler::put(tcb);
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	24c080e7          	jalr	588(ra) # 80001c78 <_ZN9Scheduler3putEP3TCB>
}
    80001a34:	00813083          	ld	ra,8(sp)
    80001a38:	00013403          	ld	s0,0(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN3Sem7s_closeEPS_>:
    if (!handle) return -1;
    80001a44:	06050463          	beqz	a0,80001aac <_ZN3Sem7s_closeEPS_+0x68>
int Sem::s_close(sem_t handle) {
    80001a48:	fe010113          	addi	sp,sp,-32
    80001a4c:	00113c23          	sd	ra,24(sp)
    80001a50:	00813823          	sd	s0,16(sp)
    80001a54:	00913423          	sd	s1,8(sp)
    80001a58:	02010413          	addi	s0,sp,32
    80001a5c:	00050493          	mv	s1,a0
    sem_remove(handle); // remove from semaphores list
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	de0080e7          	jalr	-544(ra) # 80001840 <_ZN3Sem10sem_removeEPS_>
    while (handle->blocked.peek()) {
    80001a68:	01048513          	addi	a0,s1,16
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	09c080e7          	jalr	156(ra) # 80001b08 <_ZN4ListI3TCBE4peekEv>
    80001a74:	00050a63          	beqz	a0,80001a88 <_ZN3Sem7s_closeEPS_+0x44>
        handle->deblock();
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	f8c080e7          	jalr	-116(ra) # 80001a08 <_ZN3Sem7deblockEv>
    while (handle->blocked.peek()) {
    80001a84:	fe5ff06f          	j	80001a68 <_ZN3Sem7s_closeEPS_+0x24>
    delete handle;
    80001a88:	00048513          	mv	a0,s1
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	c7c080e7          	jalr	-900(ra) # 80001708 <_ZN3SemdlEPv>
    return 0;
    80001a94:	00000513          	li	a0,0
}
    80001a98:	01813083          	ld	ra,24(sp)
    80001a9c:	01013403          	ld	s0,16(sp)
    80001aa0:	00813483          	ld	s1,8(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret
    if (!handle) return -1;
    80001aac:	fff00513          	li	a0,-1
}
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN3Sem6signalEPS_>:
    if (!handle) return SEM_CLOSED;
    80001ab4:	04050663          	beqz	a0,80001b00 <_ZN3Sem6signalEPS_+0x4c>
    if (++handle->value<= 0) handle->deblock();
    80001ab8:	00052783          	lw	a5,0(a0)
    80001abc:	0017879b          	addiw	a5,a5,1
    80001ac0:	0007871b          	sext.w	a4,a5
    80001ac4:	00f52023          	sw	a5,0(a0)
    80001ac8:	00e05663          	blez	a4,80001ad4 <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001acc:	00000513          	li	a0,0
}
    80001ad0:	00008067          	ret
int Sem::signal(sem_t handle) {
    80001ad4:	ff010113          	addi	sp,sp,-16
    80001ad8:	00113423          	sd	ra,8(sp)
    80001adc:	00813023          	sd	s0,0(sp)
    80001ae0:	01010413          	addi	s0,sp,16
    if (++handle->value<= 0) handle->deblock();
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	f24080e7          	jalr	-220(ra) # 80001a08 <_ZN3Sem7deblockEv>
    return 0;
    80001aec:	00000513          	li	a0,0
}
    80001af0:	00813083          	ld	ra,8(sp)
    80001af4:	00013403          	ld	s0,0(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    80001b00:	ffc00513          	li	a0,-4
    80001b04:	00008067          	ret

0000000080001b08 <_ZN4ListI3TCBE4peekEv>:
    count--;
    return t;
}

template <typename T>
T* List<T>::peek() {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00813423          	sd	s0,8(sp)
    80001b10:	01010413          	addi	s0,sp,16
    if (head) return head->data;
    80001b14:	00053503          	ld	a0,0(a0)
    80001b18:	00050463          	beqz	a0,80001b20 <_ZN4ListI3TCBE4peekEv+0x18>
    80001b1c:	00053503          	ld	a0,0(a0)
    else return nullptr;
}
    80001b20:	00813403          	ld	s0,8(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZN4ListI3TCBE3addEPS0_>:
void List<T>::add(T *t) {
    80001b2c:	fe010113          	addi	sp,sp,-32
    80001b30:	00113c23          	sd	ra,24(sp)
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00913423          	sd	s1,8(sp)
    80001b3c:	01213023          	sd	s2,0(sp)
    80001b40:	02010413          	addi	s0,sp,32
    80001b44:	00050493          	mv	s1,a0
    80001b48:	00058913          	mv	s2,a1
    Elem* toAdd = new Elem(t);
    80001b4c:	01000513          	li	a0,16
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	95c080e7          	jalr	-1700(ra) # 800024ac <_Znwm>
        explicit Elem(T* data) : data(data), next(nullptr) {}
    80001b58:	01253023          	sd	s2,0(a0)
    80001b5c:	00053423          	sd	zero,8(a0)
    if (!head) head = tail = toAdd;
    80001b60:	0004b783          	ld	a5,0(s1)
    80001b64:	02078a63          	beqz	a5,80001b98 <_ZN4ListI3TCBE3addEPS0_+0x6c>
    else tail = tail -> next = toAdd;
    80001b68:	0084b783          	ld	a5,8(s1)
    80001b6c:	00a7b423          	sd	a0,8(a5)
    80001b70:	00a4b423          	sd	a0,8(s1)
    count++;
    80001b74:	0104a783          	lw	a5,16(s1)
    80001b78:	0017879b          	addiw	a5,a5,1
    80001b7c:	00f4a823          	sw	a5,16(s1)
}
    80001b80:	01813083          	ld	ra,24(sp)
    80001b84:	01013403          	ld	s0,16(sp)
    80001b88:	00813483          	ld	s1,8(sp)
    80001b8c:	00013903          	ld	s2,0(sp)
    80001b90:	02010113          	addi	sp,sp,32
    80001b94:	00008067          	ret
    if (!head) head = tail = toAdd;
    80001b98:	00a4b423          	sd	a0,8(s1)
    80001b9c:	00a4b023          	sd	a0,0(s1)
    80001ba0:	fd5ff06f          	j	80001b74 <_ZN4ListI3TCBE3addEPS0_+0x48>

0000000080001ba4 <_ZN4ListI3TCBE3getEv>:
T* List<T>::get() {
    80001ba4:	fe010113          	addi	sp,sp,-32
    80001ba8:	00113c23          	sd	ra,24(sp)
    80001bac:	00813823          	sd	s0,16(sp)
    80001bb0:	00913423          	sd	s1,8(sp)
    80001bb4:	01213023          	sd	s2,0(sp)
    80001bb8:	02010413          	addi	s0,sp,32
    80001bbc:	00050493          	mv	s1,a0
    if (!head) return nullptr;
    80001bc0:	00053503          	ld	a0,0(a0)
    80001bc4:	04050663          	beqz	a0,80001c10 <_ZN4ListI3TCBE3getEv+0x6c>
    T* t = head -> data;
    80001bc8:	00053903          	ld	s2,0(a0)
    head = head -> next;
    80001bcc:	00853783          	ld	a5,8(a0)
    80001bd0:	00f4b023          	sd	a5,0(s1)
    if (!head) tail = nullptr;
    80001bd4:	02078a63          	beqz	a5,80001c08 <_ZN4ListI3TCBE3getEv+0x64>
    delete oldHead;
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	94c080e7          	jalr	-1716(ra) # 80002524 <_ZdlPv>
    count--;
    80001be0:	0104a783          	lw	a5,16(s1)
    80001be4:	fff7879b          	addiw	a5,a5,-1
    80001be8:	00f4a823          	sw	a5,16(s1)
}
    80001bec:	00090513          	mv	a0,s2
    80001bf0:	01813083          	ld	ra,24(sp)
    80001bf4:	01013403          	ld	s0,16(sp)
    80001bf8:	00813483          	ld	s1,8(sp)
    80001bfc:	00013903          	ld	s2,0(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret
    if (!head) tail = nullptr;
    80001c08:	0004b423          	sd	zero,8(s1)
    80001c0c:	fcdff06f          	j	80001bd8 <_ZN4ListI3TCBE3getEv+0x34>
    if (!head) return nullptr;
    80001c10:	00050913          	mv	s2,a0
    80001c14:	fd9ff06f          	j	80001bec <_ZN4ListI3TCBE3getEv+0x48>

0000000080001c18 <_Z11idleWrapperPv>:
TCB* Scheduler::first = nullptr;
TCB* Scheduler::last  = nullptr;
TCB* Scheduler::first_sleepy = nullptr;
TCB* Scheduler::idle = nullptr;

[[noreturn]] void idleWrapper(void*) {
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00813423          	sd	s0,8(sp)
    80001c20:	01010413          	addi	s0,sp,16
    // nothing to do
    while (true);
    80001c24:	0000006f          	j	80001c24 <_Z11idleWrapperPv+0xc>

0000000080001c28 <_ZN9Scheduler3getEv>:
}

TCB *Scheduler::get() {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00813423          	sd	s0,8(sp)
    80001c30:	01010413          	addi	s0,sp,16

    if (!first) return idle; // idle thread
    80001c34:	0000b517          	auipc	a0,0xb
    80001c38:	1dc53503          	ld	a0,476(a0) # 8000ce10 <_ZN9Scheduler5firstE>
    80001c3c:	02050263          	beqz	a0,80001c60 <_ZN9Scheduler3getEv+0x38>

    TCB* tcb = first;

    first = first -> next_ready;
    80001c40:	00853783          	ld	a5,8(a0)
    80001c44:	0000b717          	auipc	a4,0xb
    80001c48:	1cf73623          	sd	a5,460(a4) # 8000ce10 <_ZN9Scheduler5firstE>
    if (!first) last = nullptr;
    80001c4c:	02078063          	beqz	a5,80001c6c <_ZN9Scheduler3getEv+0x44>
    tcb -> next_ready = nullptr;
    80001c50:	00053423          	sd	zero,8(a0)

    return tcb;

}
    80001c54:	00813403          	ld	s0,8(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret
    if (!first) return idle; // idle thread
    80001c60:	0000b517          	auipc	a0,0xb
    80001c64:	1b853503          	ld	a0,440(a0) # 8000ce18 <_ZN9Scheduler4idleE>
    80001c68:	fedff06f          	j	80001c54 <_ZN9Scheduler3getEv+0x2c>
    if (!first) last = nullptr;
    80001c6c:	0000b797          	auipc	a5,0xb
    80001c70:	1a07ba23          	sd	zero,436(a5) # 8000ce20 <_ZN9Scheduler4lastE>
    80001c74:	fddff06f          	j	80001c50 <_ZN9Scheduler3getEv+0x28>

0000000080001c78 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00813423          	sd	s0,8(sp)
    80001c80:	01010413          	addi	s0,sp,16

    if (newTCB == idle) {
    80001c84:	0000b797          	auipc	a5,0xb
    80001c88:	1947b783          	ld	a5,404(a5) # 8000ce18 <_ZN9Scheduler4idleE>
    80001c8c:	02a78863          	beq	a5,a0,80001cbc <_ZN9Scheduler3putEP3TCB+0x44>
        idle->current_state = TCB::RUNNABLE;
        return;
    }
    if (!first) first = last = newTCB;
    80001c90:	0000b797          	auipc	a5,0xb
    80001c94:	1807b783          	ld	a5,384(a5) # 8000ce10 <_ZN9Scheduler5firstE>
    80001c98:	02078663          	beqz	a5,80001cc4 <_ZN9Scheduler3putEP3TCB+0x4c>
    else last = last -> next_ready = newTCB;
    80001c9c:	0000b797          	auipc	a5,0xb
    80001ca0:	17478793          	addi	a5,a5,372 # 8000ce10 <_ZN9Scheduler5firstE>
    80001ca4:	0107b703          	ld	a4,16(a5)
    80001ca8:	00a73423          	sd	a0,8(a4)
    80001cac:	00a7b823          	sd	a0,16(a5)

}
    80001cb0:	00813403          	ld	s0,8(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret
        idle->current_state = TCB::RUNNABLE;
    80001cbc:	0607a423          	sw	zero,104(a5)
        return;
    80001cc0:	ff1ff06f          	j	80001cb0 <_ZN9Scheduler3putEP3TCB+0x38>
    if (!first) first = last = newTCB;
    80001cc4:	0000b797          	auipc	a5,0xb
    80001cc8:	14c78793          	addi	a5,a5,332 # 8000ce10 <_ZN9Scheduler5firstE>
    80001ccc:	00a7b823          	sd	a0,16(a5)
    80001cd0:	00a7b023          	sd	a0,0(a5)
    80001cd4:	fddff06f          	j	80001cb0 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080001cd8 <_ZN9Scheduler4peekEv>:

TCB* Scheduler::peek() {
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00813423          	sd	s0,8(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    if (!first) return nullptr;
    return first;
}
    80001ce4:	0000b517          	auipc	a0,0xb
    80001ce8:	12c53503          	ld	a0,300(a0) # 8000ce10 <_ZN9Scheduler5firstE>
    80001cec:	00813403          	ld	s0,8(sp)
    80001cf0:	01010113          	addi	sp,sp,16
    80001cf4:	00008067          	ret

0000000080001cf8 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001cf8:	ff010113          	addi	sp,sp,-16
    80001cfc:	00813423          	sd	s0,8(sp)
    80001d00:	01010413          	addi	s0,sp,16
    return first != nullptr;
}
    80001d04:	0000b517          	auipc	a0,0xb
    80001d08:	10c53503          	ld	a0,268(a0) # 8000ce10 <_ZN9Scheduler5firstE>
    80001d0c:	00a03533          	snez	a0,a0
    80001d10:	00813403          	ld	s0,8(sp)
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <_ZN9SchedulernwEm>:
    return 0;


}

void *Scheduler::operator new(size_t size) {
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00113423          	sd	ra,8(sp)
    80001d24:	00813023          	sd	s0,0(sp)
    80001d28:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001d2c:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001d30:	00655513          	srli	a0,a0,0x6
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	310080e7          	jalr	784(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d3c:	00813083          	ld	ra,8(sp)
    80001d40:	00013403          	ld	s0,0(sp)
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00113423          	sd	ra,8(sp)
    80001d54:	00813023          	sd	s0,0(sp)
    80001d58:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	528080e7          	jalr	1320(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d64:	00813083          	ld	ra,8(sp)
    80001d68:	00013403          	ld	s0,0(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN9Scheduler7s_yieldEv>:

void Scheduler::s_yield() {
    80001d74:	fe010113          	addi	sp,sp,-32
    80001d78:	00113c23          	sd	ra,24(sp)
    80001d7c:	00813823          	sd	s0,16(sp)
    80001d80:	00913423          	sd	s1,8(sp)
    80001d84:	01213023          	sd	s2,0(sp)
    80001d88:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    80001d8c:	0000b917          	auipc	s2,0xb
    80001d90:	00c93903          	ld	s2,12(s2) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d94:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::SLEEPING;
    80001d98:	00100793          	li	a5,1
    80001d9c:	06f4a423          	sw	a5,104(s1)

    TCB::running = get(); // Scheduler::get
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	e88080e7          	jalr	-376(ra) # 80001c28 <_ZN9Scheduler3getEv>
    80001da8:	00050593          	mv	a1,a0
    80001dac:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	93c080e7          	jalr	-1732(ra) # 800036f0 <_ZN3TCB5yieldEPS_S0_>

}
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	00013903          	ld	s2,0(sp)
    80001dcc:	02010113          	addi	sp,sp,32
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN9Scheduler10time_sleepEP3TCBm>:
    if (time == 0) return -1;
    80001dd4:	0c058663          	beqz	a1,80001ea0 <_ZN9Scheduler10time_sleepEP3TCBm+0xcc>
int Scheduler::time_sleep(TCB *tcb, time_t time) {
    80001dd8:	ff010113          	addi	sp,sp,-16
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	01010413          	addi	s0,sp,16
    if (!first_sleepy) {
    80001de8:	0000b797          	auipc	a5,0xb
    80001dec:	0407b783          	ld	a5,64(a5) # 8000ce28 <_ZN9Scheduler12first_sleepyE>
    80001df0:	02078663          	beqz	a5,80001e1c <_ZN9Scheduler10time_sleepEP3TCBm+0x48>
    time_t time_sum = 0;
    80001df4:	00000693          	li	a3,0
    TCB* prev = nullptr, *curr = first_sleepy; // insert between
    80001df8:	00000613          	li	a2,0
    while (curr) {
    80001dfc:	06078c63          	beqz	a5,80001e74 <_ZN9Scheduler10time_sleepEP3TCBm+0xa0>
        if (time_sum + curr->sleeping_time > time) {
    80001e00:	0207b703          	ld	a4,32(a5)
    80001e04:	00d70733          	add	a4,a4,a3
    80001e08:	02e5e863          	bltu	a1,a4,80001e38 <_ZN9Scheduler10time_sleepEP3TCBm+0x64>
        time_sum += curr -> sleeping_time;
    80001e0c:	00070693          	mv	a3,a4
        prev = curr;
    80001e10:	00078613          	mv	a2,a5
        curr = curr -> next_sleepy;
    80001e14:	0107b783          	ld	a5,16(a5)
    while (curr) {
    80001e18:	fe5ff06f          	j	80001dfc <_ZN9Scheduler10time_sleepEP3TCBm+0x28>
        first_sleepy = tcb;
    80001e1c:	0000b797          	auipc	a5,0xb
    80001e20:	00a7b623          	sd	a0,12(a5) # 8000ce28 <_ZN9Scheduler12first_sleepyE>
        tcb -> sleeping_time = time;
    80001e24:	02b53023          	sd	a1,32(a0)
        s_yield();
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	f4c080e7          	jalr	-180(ra) # 80001d74 <_ZN9Scheduler7s_yieldEv>
        return 0;
    80001e30:	00000513          	li	a0,0
    80001e34:	05c0006f          	j	80001e90 <_ZN9Scheduler10time_sleepEP3TCBm+0xbc>
            if (prev) prev -> next_sleepy = tcb;
    80001e38:	02060863          	beqz	a2,80001e68 <_ZN9Scheduler10time_sleepEP3TCBm+0x94>
    80001e3c:	00a63823          	sd	a0,16(a2)
            tcb -> next_sleepy = curr;
    80001e40:	00f53823          	sd	a5,16(a0)
            tcb -> sleeping_time = time - time_sum;
    80001e44:	40d586b3          	sub	a3,a1,a3
    80001e48:	02d53023          	sd	a3,32(a0)
            curr -> sleeping_time -= tcb -> sleeping_time;
    80001e4c:	0207b583          	ld	a1,32(a5)
    80001e50:	40d586b3          	sub	a3,a1,a3
    80001e54:	02d7b023          	sd	a3,32(a5)
            s_yield();
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	f1c080e7          	jalr	-228(ra) # 80001d74 <_ZN9Scheduler7s_yieldEv>
            return 0;
    80001e60:	00000513          	li	a0,0
    80001e64:	02c0006f          	j	80001e90 <_ZN9Scheduler10time_sleepEP3TCBm+0xbc>
            else first_sleepy = tcb;
    80001e68:	0000b717          	auipc	a4,0xb
    80001e6c:	fca73023          	sd	a0,-64(a4) # 8000ce28 <_ZN9Scheduler12first_sleepyE>
    80001e70:	fd1ff06f          	j	80001e40 <_ZN9Scheduler10time_sleepEP3TCBm+0x6c>
    tcb -> sleeping_time = time - time_sum;
    80001e74:	40d586b3          	sub	a3,a1,a3
    80001e78:	02d53023          	sd	a3,32(a0)
    if (prev) prev -> next_sleepy = tcb;
    80001e7c:	00060463          	beqz	a2,80001e84 <_ZN9Scheduler10time_sleepEP3TCBm+0xb0>
    80001e80:	00a63823          	sd	a0,16(a2)
    s_yield();
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	ef0080e7          	jalr	-272(ra) # 80001d74 <_ZN9Scheduler7s_yieldEv>
    return 0;
    80001e8c:	00000513          	li	a0,0
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret
    if (time == 0) return -1;
    80001ea0:	fff00513          	li	a0,-1
}
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN9Scheduler14init_schedulerEv>:

void Scheduler::init_scheduler() {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    thread_create(&idle, idleWrapper, nullptr);
    80001eb8:	00000613          	li	a2,0
    80001ebc:	00000597          	auipc	a1,0x0
    80001ec0:	d5c58593          	addi	a1,a1,-676 # 80001c18 <_Z11idleWrapperPv>
    80001ec4:	0000b517          	auipc	a0,0xb
    80001ec8:	f5450513          	addi	a0,a0,-172 # 8000ce18 <_ZN9Scheduler4idleE>
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	430080e7          	jalr	1072(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN9myConsole14init_myconsoleEv>:
#include "../h/Console.hpp"

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;

void myConsole::init_myconsole() {
    80001ee4:	fe010113          	addi	sp,sp,-32
    80001ee8:	00113c23          	sd	ra,24(sp)
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00913423          	sd	s1,8(sp)
    80001ef4:	01213023          	sd	s2,0(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001efc:	15000513          	li	a0,336
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	c30080e7          	jalr	-976(ra) # 80002b30 <_ZN13BoundedBuffernwEm>
    80001f08:	00050493          	mv	s1,a0
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	a8c080e7          	jalr	-1396(ra) # 80002998 <_ZN13BoundedBufferC1Ev>
    80001f14:	0000b797          	auipc	a5,0xb
    80001f18:	f097be23          	sd	s1,-228(a5) # 8000ce30 <_ZN9myConsole11inputBufferE>
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001f1c:	15000513          	li	a0,336
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	c10080e7          	jalr	-1008(ra) # 80002b30 <_ZN13BoundedBuffernwEm>
    80001f28:	00050493          	mv	s1,a0
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	a6c080e7          	jalr	-1428(ra) # 80002998 <_ZN13BoundedBufferC1Ev>
    80001f34:	0000b797          	auipc	a5,0xb
    80001f38:	f097b223          	sd	s1,-252(a5) # 8000ce38 <_ZN9myConsole12outputBufferE>
}
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	01013403          	ld	s0,16(sp)
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	00013903          	ld	s2,0(sp)
    80001f4c:	02010113          	addi	sp,sp,32
    80001f50:	00008067          	ret
    80001f54:	00050913          	mv	s2,a0
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001f58:	00048513          	mv	a0,s1
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	c04080e7          	jalr	-1020(ra) # 80002b60 <_ZN13BoundedBufferdlEPv>
    80001f64:	00090513          	mv	a0,s2
    80001f68:	0000c097          	auipc	ra,0xc
    80001f6c:	090080e7          	jalr	144(ra) # 8000dff8 <_Unwind_Resume>
    80001f70:	00050913          	mv	s2,a0
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001f74:	00048513          	mv	a0,s1
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	be8080e7          	jalr	-1048(ra) # 80002b60 <_ZN13BoundedBufferdlEPv>
    80001f80:	00090513          	mv	a0,s2
    80001f84:	0000c097          	auipc	ra,0xc
    80001f88:	074080e7          	jalr	116(ra) # 8000dff8 <_Unwind_Resume>

0000000080001f8c <_ZN9myConsole10input_getcEv>:

char myConsole::input_getc() {
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00113423          	sd	ra,8(sp)
    80001f94:	00813023          	sd	s0,0(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80001f9c:	0000b517          	auipc	a0,0xb
    80001fa0:	e9453503          	ld	a0,-364(a0) # 8000ce30 <_ZN9myConsole11inputBufferE>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	b14080e7          	jalr	-1260(ra) # 80002ab8 <_ZN13BoundedBuffer3getEv>
}
    80001fac:	00813083          	ld	ra,8(sp)
    80001fb0:	00013403          	ld	s0,0(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN9myConsole11output_putcEc>:

void myConsole::output_putc(char c) {
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    80001fcc:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    80001fd0:	0000b517          	auipc	a0,0xb
    80001fd4:	e6853503          	ld	a0,-408(a0) # 8000ce38 <_ZN9myConsole12outputBufferE>
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	a74080e7          	jalr	-1420(ra) # 80002a4c <_ZN13BoundedBuffer3putEc>
}
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN9myConsole11output_getcEv>:

char myConsole::output_getc() {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    return outputBuffer->get();
    80002000:	0000b517          	auipc	a0,0xb
    80002004:	e3853503          	ld	a0,-456(a0) # 8000ce38 <_ZN9myConsole12outputBufferE>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	ab0080e7          	jalr	-1360(ra) # 80002ab8 <_ZN13BoundedBuffer3getEv>
}
    80002010:	00813083          	ld	ra,8(sp)
    80002014:	00013403          	ld	s0,0(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN9myConsole10input_putcEc>:

void myConsole::input_putc(char c) {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    80002030:	00050593          	mv	a1,a0
    inputBuffer->put(c);
    80002034:	0000b517          	auipc	a0,0xb
    80002038:	dfc53503          	ld	a0,-516(a0) # 8000ce30 <_ZN9myConsole11inputBufferE>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	a10080e7          	jalr	-1520(ra) # 80002a4c <_ZN13BoundedBuffer3putEc>
}
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_Z14handleNewCharsPv>:
        putc(c2);
        putc(c3);
    }
}

void handleNewChars(void * args) {
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	01010413          	addi	s0,sp,16
    80002064:	00c0006f          	j	80002070 <_Z14handleNewCharsPv+0x1c>
            *(char *) CONSOLE_TX_DATA = c;
            // pop from output buffer and wr to TX DATA
        }

        // no more work to do, move on
        thread_dispatch();
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	374080e7          	jalr	884(ra) # 800013dc <_Z15thread_dispatchv>
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80002070:	0000b797          	auipc	a5,0xb
    80002074:	cf07b783          	ld	a5,-784(a5) # 8000cd60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002078:	0007b783          	ld	a5,0(a5)
    8000207c:	0007c783          	lbu	a5,0(a5)
    80002080:	0207f793          	andi	a5,a5,32
    80002084:	fe0782e3          	beqz	a5,80002068 <_Z14handleNewCharsPv+0x14>
            char c = myConsole::output_getc();
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	f68080e7          	jalr	-152(ra) # 80001ff0 <_ZN9myConsole11output_getcEv>
            if (c == '\r') continue;
    80002090:	00d00793          	li	a5,13
    80002094:	fcf50ee3          	beq	a0,a5,80002070 <_Z14handleNewCharsPv+0x1c>
            *(char *) CONSOLE_TX_DATA = c;
    80002098:	0000b797          	auipc	a5,0xb
    8000209c:	ce07b783          	ld	a5,-800(a5) # 8000cd78 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020a0:	0007b783          	ld	a5,0(a5)
    800020a4:	00a78023          	sb	a0,0(a5)
    800020a8:	fc9ff06f          	j	80002070 <_Z14handleNewCharsPv+0x1c>

00000000800020ac <_Z11userWrapperPv>:
    thread_exit();
}

extern void userMain();

void userWrapper(void* args) {
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00113423          	sd	ra,8(sp)
    800020b4:	00813023          	sd	s0,0(sp)
    800020b8:	01010413          	addi	s0,sp,16
    userMain();
    800020bc:	00004097          	auipc	ra,0x4
    800020c0:	44c080e7          	jalr	1100(ra) # 80006508 <_Z8userMainv>
}
    800020c4:	00813083          	ld	ra,8(sp)
    800020c8:	00013403          	ld	s0,0(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    800020d4:	fe010113          	addi	sp,sp,-32
    800020d8:	00113c23          	sd	ra,24(sp)
    800020dc:	00813823          	sd	s0,16(sp)
    800020e0:	00913423          	sd	s1,8(sp)
    800020e4:	01213023          	sd	s2,0(sp)
    800020e8:	02010413          	addi	s0,sp,32
    void *addr = MemoryAllocator::mem_alloc(1);
    800020ec:	00100513          	li	a0,1
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	f54080e7          	jalr	-172(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
    800020f8:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	300080e7          	jalr	768(ra) # 800033fc <_ZN15MemoryAllocator5printEv>
    int ret1 = MemoryAllocator::mem_free(addr);
    80002104:	00048513          	mv	a0,s1
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	17c080e7          	jalr	380(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
    80002110:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80002114:	00001097          	auipc	ra,0x1
    80002118:	2e8080e7          	jalr	744(ra) # 800033fc <_ZN15MemoryAllocator5printEv>
    int ret2 = MemoryAllocator::mem_free(addr);
    8000211c:	00048513          	mv	a0,s1
    80002120:	00001097          	auipc	ra,0x1
    80002124:	164080e7          	jalr	356(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
    80002128:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	2d0080e7          	jalr	720(ra) # 800033fc <_ZN15MemoryAllocator5printEv>
    if (ret1 == 0) __putc('G');
    80002134:	02090063          	beqz	s2,80002154 <_Z19testMemoryAllocatorv+0x80>
    if (ret2 < 0) __putc('G');
    80002138:	0204c663          	bltz	s1,80002164 <_Z19testMemoryAllocatorv+0x90>
}
    8000213c:	01813083          	ld	ra,24(sp)
    80002140:	01013403          	ld	s0,16(sp)
    80002144:	00813483          	ld	s1,8(sp)
    80002148:	00013903          	ld	s2,0(sp)
    8000214c:	02010113          	addi	sp,sp,32
    80002150:	00008067          	ret
    if (ret1 == 0) __putc('G');
    80002154:	04700513          	li	a0,71
    80002158:	00007097          	auipc	ra,0x7
    8000215c:	ff4080e7          	jalr	-12(ra) # 8000914c <__putc>
    80002160:	fd9ff06f          	j	80002138 <_Z19testMemoryAllocatorv+0x64>
    if (ret2 < 0) __putc('G');
    80002164:	04700513          	li	a0,71
    80002168:	00007097          	auipc	ra,0x7
    8000216c:	fe4080e7          	jalr	-28(ra) # 8000914c <__putc>
}
    80002170:	fcdff06f          	j	8000213c <_Z19testMemoryAllocatorv+0x68>

0000000080002174 <_Z11testCMemoryv>:
void testCMemory() {
    80002174:	fe010113          	addi	sp,sp,-32
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00813823          	sd	s0,16(sp)
    80002180:	00913423          	sd	s1,8(sp)
    80002184:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	274080e7          	jalr	628(ra) # 800033fc <_ZN15MemoryAllocator5printEv>
    void* addr = mem_alloc(50);
    80002190:	03200513          	li	a0,50
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	0cc080e7          	jalr	204(ra) # 80001260 <_Z9mem_allocm>
    8000219c:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	25c080e7          	jalr	604(ra) # 800033fc <_ZN15MemoryAllocator5printEv>
    mem_free(addr);
    800021a8:	00048513          	mv	a0,s1
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	104080e7          	jalr	260(ra) # 800012b0 <_Z8mem_freePv>
    MemoryAllocator::print();
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	248080e7          	jalr	584(ra) # 800033fc <_ZN15MemoryAllocator5printEv>
}
    800021bc:	01813083          	ld	ra,24(sp)
    800021c0:	01013403          	ld	s0,16(sp)
    800021c4:	00813483          	ld	s1,8(sp)
    800021c8:	02010113          	addi	sp,sp,32
    800021cc:	00008067          	ret

00000000800021d0 <_Z11testConsolePv>:
void testConsole(void *args) {
    800021d0:	fd010113          	addi	sp,sp,-48
    800021d4:	02113423          	sd	ra,40(sp)
    800021d8:	02813023          	sd	s0,32(sp)
    800021dc:	00913c23          	sd	s1,24(sp)
    800021e0:	01213823          	sd	s2,16(sp)
    800021e4:	01313423          	sd	s3,8(sp)
    800021e8:	03010413          	addi	s0,sp,48
        char c1 = getc();
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	450080e7          	jalr	1104(ra) # 8000163c <_Z4getcv>
    800021f4:	00050993          	mv	s3,a0
        char c2 = getc();
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	444080e7          	jalr	1092(ra) # 8000163c <_Z4getcv>
    80002200:	00050913          	mv	s2,a0
        char c3 = getc();
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	438080e7          	jalr	1080(ra) # 8000163c <_Z4getcv>
    8000220c:	00050493          	mv	s1,a0
        putc(c1);
    80002210:	00098513          	mv	a0,s3
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	474080e7          	jalr	1140(ra) # 80001688 <_Z4putcc>
        putc(c2);
    8000221c:	00090513          	mv	a0,s2
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	468080e7          	jalr	1128(ra) # 80001688 <_Z4putcc>
        putc(c3);
    80002228:	00048513          	mv	a0,s1
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	45c080e7          	jalr	1116(ra) # 80001688 <_Z4putcc>
    while (true) {
    80002234:	fb9ff06f          	j	800021ec <_Z11testConsolePv+0x1c>

0000000080002238 <_Z13testTimedWaitPv>:
void testTimedWait(void* args) {
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00813423          	sd	s0,8(sp)
    80002240:	01010413          	addi	s0,sp,16
}
    80002244:	00813403          	ld	s0,8(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_Z9semWaiterPv>:
void semWaiter(void* ) {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    sem_wait(mySem);
    80002260:	0000b517          	auipc	a0,0xb
    80002264:	be053503          	ld	a0,-1056(a0) # 8000ce40 <mySem>
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	258080e7          	jalr	600(ra) # 800014c0 <_Z8sem_waitP3Sem>
}
    80002270:	00813083          	ld	ra,8(sp)
    80002274:	00013403          	ld	s0,0(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_Z14runningForeverPv>:
    state getState() const {return current_state;}
    time_t getTimeSlice() const {return time_slice;}

    static bool isRunnable();

    static bool isFinished() {return TCB::running->current_state == state::FINISHED;}
    80002280:	0000b797          	auipc	a5,0xb
    80002284:	b187b783          	ld	a5,-1256(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002288:	0007b783          	ld	a5,0(a5)
    8000228c:	0687a703          	lw	a4,104(a5)
    while (!mythreads[2] -> isFinished()) {
    80002290:	00300793          	li	a5,3
    80002294:	04f70463          	beq	a4,a5,800022dc <_Z14runningForeverPv+0x5c>
void runningForever(void* args) {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00113423          	sd	ra,8(sp)
    800022a0:	00813023          	sd	s0,0(sp)
    800022a4:	01010413          	addi	s0,sp,16
        putc('a');
    800022a8:	06100513          	li	a0,97
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	3dc080e7          	jalr	988(ra) # 80001688 <_Z4putcc>
    800022b4:	0000b797          	auipc	a5,0xb
    800022b8:	ae47b783          	ld	a5,-1308(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    800022bc:	0007b783          	ld	a5,0(a5)
    800022c0:	0687a703          	lw	a4,104(a5)
    while (!mythreads[2] -> isFinished()) {
    800022c4:	00300793          	li	a5,3
    800022c8:	fef710e3          	bne	a4,a5,800022a8 <_Z14runningForeverPv+0x28>
}
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret
    800022dc:	00008067          	ret

00000000800022e0 <_Z11timedWaiterPv>:
void timedWaiter(void *) {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00113423          	sd	ra,8(sp)
    800022e8:	00813023          	sd	s0,0(sp)
    800022ec:	01010413          	addi	s0,sp,16
    int result = sem_timedwait(mySem, 1);
    800022f0:	00100593          	li	a1,1
    800022f4:	0000b517          	auipc	a0,0xb
    800022f8:	b4c53503          	ld	a0,-1204(a0) # 8000ce40 <mySem>
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	210080e7          	jalr	528(ra) # 8000150c <_Z13sem_timedwaitP3Semm>
    if (result == Sem::TIMEOUT) putc('t');
    80002304:	ffe00793          	li	a5,-2
    80002308:	00f50e63          	beq	a0,a5,80002324 <_Z11timedWaiterPv+0x44>
    thread_exit();
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	084080e7          	jalr	132(ra) # 80001390 <_Z11thread_exitv>
}
    80002314:	00813083          	ld	ra,8(sp)
    80002318:	00013403          	ld	s0,0(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret
    if (result == Sem::TIMEOUT) putc('t');
    80002324:	07400513          	li	a0,116
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	360080e7          	jalr	864(ra) # 80001688 <_Z4putcc>
    80002330:	fddff06f          	j	8000230c <_Z11timedWaiterPv+0x2c>

0000000080002334 <main>:

int main() {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00113423          	sd	ra,8(sp)
    8000233c:	00813023          	sd	s0,0(sp)
    80002340:	01010413          	addi	s0,sp,16

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    80002344:	0000b797          	auipc	a5,0xb
    80002348:	a2c7b783          	ld	a5,-1492(a5) # 8000cd70 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    8000234c:	10579073          	csrw	stvec,a5

    MemoryAllocator::init_allocator();
    80002350:	00001097          	auipc	ra,0x1
    80002354:	e34080e7          	jalr	-460(ra) # 80003184 <_ZN15MemoryAllocator14init_allocatorEv>
    Scheduler::init_scheduler();
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	b50080e7          	jalr	-1200(ra) # 80001ea8 <_ZN9Scheduler14init_schedulerEv>
    myConsole::init_myconsole();
    80002360:	00000097          	auipc	ra,0x0
    80002364:	b84080e7          	jalr	-1148(ra) # 80001ee4 <_ZN9myConsole14init_myconsoleEv>

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&mainThread, nullptr, nullptr); // main
    80002368:	00000613          	li	a2,0
    8000236c:	00000593          	li	a1,0
    80002370:	0000b517          	auipc	a0,0xb
    80002374:	ad850513          	addi	a0,a0,-1320 # 8000ce48 <mainThread>
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	f84080e7          	jalr	-124(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = mainThread;
    80002380:	0000b797          	auipc	a5,0xb
    80002384:	a187b783          	ld	a5,-1512(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002388:	0000b717          	auipc	a4,0xb
    8000238c:	ac073703          	ld	a4,-1344(a4) # 8000ce48 <mainThread>
    80002390:	00e7b023          	sd	a4,0(a5)
inline void RISCV::mask_status(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline void RISCV::set_status(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80002394:	00200793          	li	a5,2
    80002398:	1007a073          	csrs	sstatus,a5

    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&consoleThread, handleNewChars, nullptr);
    8000239c:	00000613          	li	a2,0
    800023a0:	00000597          	auipc	a1,0x0
    800023a4:	cb458593          	addi	a1,a1,-844 # 80002054 <_Z14handleNewCharsPv>
    800023a8:	0000b517          	auipc	a0,0xb
    800023ac:	aa850513          	addi	a0,a0,-1368 # 8000ce50 <consoleThread>
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	f4c080e7          	jalr	-180(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
//    thread_create(&mythreads[3], runningForever, (void *)('b'));
//    thread_create(&mythreads[4], semWaiter, (void *)('a'));
//    thread_create(&mythreads[5], semWaiter, (void *)('b'));
//    thread_create(&mythreads[2], timedWaiter, nullptr);

    thread_create(&userMainThread, userWrapper, nullptr);
    800023b8:	00000613          	li	a2,0
    800023bc:	00000597          	auipc	a1,0x0
    800023c0:	cf058593          	addi	a1,a1,-784 # 800020ac <_Z11userWrapperPv>
    800023c4:	0000b517          	auipc	a0,0xb
    800023c8:	a9450513          	addi	a0,a0,-1388 # 8000ce58 <userMainThread>
    800023cc:	fffff097          	auipc	ra,0xfffff
    800023d0:	f30080e7          	jalr	-208(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

//    sem_open(&mySem, 1); // mutex

     while (!userMainThread -> all_work_done()) thread_dispatch();
    800023d4:	0000b797          	auipc	a5,0xb
    800023d8:	a847b783          	ld	a5,-1404(a5) # 8000ce58 <userMainThread>
    void finish() { current_state = state::FINISHED; }
    bool all_work_done() {return current_state == state::FINISHED;}
    800023dc:	0687a703          	lw	a4,104(a5)
    800023e0:	00300793          	li	a5,3
    800023e4:	00f70863          	beq	a4,a5,800023f4 <main+0xc0>
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	ff4080e7          	jalr	-12(ra) # 800013dc <_Z15thread_dispatchv>
    800023f0:	fe5ff06f          	j	800023d4 <main+0xa0>

     return 0;
}
    800023f4:	00000513          	li	a0,0
    800023f8:	00813083          	ld	ra,8(sp)
    800023fc:	00013403          	ld	s0,0(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <_ZN6Thread7wrapperEPv>:

int Thread::start() {
    return thread_create(&myHandle, this->body, this->arg);
}

void Thread::wrapper(void *arg) {
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00113423          	sd	ra,8(sp)
    80002410:	00813023          	sd	s0,0(sp)
    80002414:	01010413          	addi	s0,sp,16
    auto* t = (Thread*) arg;
    t->run();
    80002418:	00053783          	ld	a5,0(a0)
    8000241c:	0107b783          	ld	a5,16(a5)
    80002420:	000780e7          	jalr	a5
}
    80002424:	00813083          	ld	ra,8(sp)
    80002428:	00013403          	ld	s0,0(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::terminate() {
    thread_exit();
}

void PeriodicThread::run() {
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00113c23          	sd	ra,24(sp)
    8000243c:	00813823          	sd	s0,16(sp)
    80002440:	00913423          	sd	s1,8(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	00050493          	mv	s1,a0
    while (true) {
        periodicActivation();
    8000244c:	0004b783          	ld	a5,0(s1)
    80002450:	0187b783          	ld	a5,24(a5)
    80002454:	00048513          	mv	a0,s1
    80002458:	000780e7          	jalr	a5
        time_sleep(period);
    8000245c:	0204b503          	ld	a0,32(s1)
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	190080e7          	jalr	400(ra) # 800015f0 <_Z10time_sleepm>
    while (true) {
    80002468:	fe5ff06f          	j	8000244c <_ZN14PeriodicThread3runEv+0x18>

000000008000246c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    8000246c:	0000a797          	auipc	a5,0xa
    80002470:	6f478793          	addi	a5,a5,1780 # 8000cb60 <_ZTV9Semaphore+0x10>
    80002474:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002478:	00853503          	ld	a0,8(a0)
    8000247c:	02050663          	beqz	a0,800024a8 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	fd8080e7          	jalr	-40(ra) # 80001468 <_Z9sem_closeP3Sem>
}
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret
    800024a8:	00008067          	ret

00000000800024ac <_Znwm>:
void* operator new (size_t size) {
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00113423          	sd	ra,8(sp)
    800024b4:	00813023          	sd	s0,0(sp)
    800024b8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	da4080e7          	jalr	-604(ra) # 80001260 <_Z9mem_allocm>
}
    800024c4:	00813083          	ld	ra,8(sp)
    800024c8:	00013403          	ld	s0,0(sp)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret

00000000800024d4 <_Znam>:
void* operator new[](size_t size) {
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00113423          	sd	ra,8(sp)
    800024dc:	00813023          	sd	s0,0(sp)
    800024e0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	d7c080e7          	jalr	-644(ra) # 80001260 <_Z9mem_allocm>
}
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZdaPv>:
void operator delete[](void* ptr) noexcept {
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	01010413          	addi	s0,sp,16
     mem_free(ptr);
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	da4080e7          	jalr	-604(ra) # 800012b0 <_Z8mem_freePv>
}
    80002514:	00813083          	ld	ra,8(sp)
    80002518:	00013403          	ld	s0,0(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret

0000000080002524 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00113423          	sd	ra,8(sp)
    8000252c:	00813023          	sd	s0,0(sp)
    80002530:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	d7c080e7          	jalr	-644(ra) # 800012b0 <_Z8mem_freePv>
}
    8000253c:	00813083          	ld	ra,8(sp)
    80002540:	00013403          	ld	s0,0(sp)
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00008067          	ret

000000008000254c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    8000254c:	0000a797          	auipc	a5,0xa
    80002550:	5ec78793          	addi	a5,a5,1516 # 8000cb38 <_ZTV6Thread+0x10>
    80002554:	00f53023          	sd	a5,0(a0)
    delete &this->myHandle;
    80002558:	00850513          	addi	a0,a0,8
    8000255c:	02050663          	beqz	a0,80002588 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00113423          	sd	ra,8(sp)
    80002568:	00813023          	sd	s0,0(sp)
    8000256c:	01010413          	addi	s0,sp,16
    delete &this->myHandle;
    80002570:	00000097          	auipc	ra,0x0
    80002574:	fb4080e7          	jalr	-76(ra) # 80002524 <_ZdlPv>
}
    80002578:	00813083          	ld	ra,8(sp)
    8000257c:	00013403          	ld	s0,0(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret
    80002588:	00008067          	ret

000000008000258c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000258c:	fe010113          	addi	sp,sp,-32
    80002590:	00113c23          	sd	ra,24(sp)
    80002594:	00813823          	sd	s0,16(sp)
    80002598:	00913423          	sd	s1,8(sp)
    8000259c:	02010413          	addi	s0,sp,32
    800025a0:	00050493          	mv	s1,a0
}
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	fa8080e7          	jalr	-88(ra) # 8000254c <_ZN6ThreadD1Ev>
    800025ac:	00048513          	mv	a0,s1
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	f74080e7          	jalr	-140(ra) # 80002524 <_ZdlPv>
    800025b8:	01813083          	ld	ra,24(sp)
    800025bc:	01013403          	ld	s0,16(sp)
    800025c0:	00813483          	ld	s1,8(sp)
    800025c4:	02010113          	addi	sp,sp,32
    800025c8:	00008067          	ret

00000000800025cc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00113c23          	sd	ra,24(sp)
    800025d4:	00813823          	sd	s0,16(sp)
    800025d8:	00913423          	sd	s1,8(sp)
    800025dc:	02010413          	addi	s0,sp,32
    800025e0:	00050493          	mv	s1,a0
}
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	e88080e7          	jalr	-376(ra) # 8000246c <_ZN9SemaphoreD1Ev>
    800025ec:	00048513          	mv	a0,s1
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	f34080e7          	jalr	-204(ra) # 80002524 <_ZdlPv>
    800025f8:	01813083          	ld	ra,24(sp)
    800025fc:	01013403          	ld	s0,16(sp)
    80002600:	00813483          	ld	s1,8(sp)
    80002604:	02010113          	addi	sp,sp,32
    80002608:	00008067          	ret

000000008000260c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00813423          	sd	s0,8(sp)
    80002614:	01010413          	addi	s0,sp,16
    80002618:	0000a797          	auipc	a5,0xa
    8000261c:	52078793          	addi	a5,a5,1312 # 8000cb38 <_ZTV6Thread+0x10>
    80002620:	00f53023          	sd	a5,0(a0)
    80002624:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002628:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000262c:	00c53c23          	sd	a2,24(a0)
}
    80002630:	00813403          	ld	s0,8(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00813423          	sd	s0,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	0000a797          	auipc	a5,0xa
    8000264c:	4f078793          	addi	a5,a5,1264 # 8000cb38 <_ZTV6Thread+0x10>
    80002650:	00f53023          	sd	a5,0(a0)
    80002654:	00053423          	sd	zero,8(a0)
    this->body = wrapper;
    80002658:	00000797          	auipc	a5,0x0
    8000265c:	db078793          	addi	a5,a5,-592 # 80002408 <_ZN6Thread7wrapperEPv>
    80002660:	00f53823          	sd	a5,16(a0)
    this->arg  = (void*) this;
    80002664:	00a53c23          	sd	a0,24(a0)
}
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	f6c080e7          	jalr	-148(ra) # 800015f0 <_Z10time_sleepm>
}
    8000268c:	00813083          	ld	ra,8(sp)
    80002690:	00013403          	ld	s0,0(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	d30080e7          	jalr	-720(ra) # 800013dc <_Z15thread_dispatchv>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6Thread5startEv>:
int Thread::start() {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00113423          	sd	ra,8(sp)
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    800026d4:	01853603          	ld	a2,24(a0)
    800026d8:	01053583          	ld	a1,16(a0)
    800026dc:	00850513          	addi	a0,a0,8
    800026e0:	fffff097          	auipc	ra,0xfffff
    800026e4:	c1c080e7          	jalr	-996(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    800026e8:	00813083          	ld	ra,8(sp)
    800026ec:	00013403          	ld	s0,0(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00113423          	sd	ra,8(sp)
    80002700:	00813023          	sd	s0,0(sp)
    80002704:	01010413          	addi	s0,sp,16
    80002708:	0000a797          	auipc	a5,0xa
    8000270c:	45878793          	addi	a5,a5,1112 # 8000cb60 <_ZTV9Semaphore+0x10>
    80002710:	00f53023          	sd	a5,0(a0)
    80002714:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002718:	00850513          	addi	a0,a0,8
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	cfc080e7          	jalr	-772(ra) # 80001418 <_Z8sem_openPP3Semj>
}
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    80002734:	00853503          	ld	a0,8(a0)
    80002738:	02050663          	beqz	a0,80002764 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00113423          	sd	ra,8(sp)
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	d74080e7          	jalr	-652(ra) # 800014c0 <_Z8sem_waitP3Sem>
}
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret
    return -1;
    80002764:	fff00513          	li	a0,-1
}
    80002768:	00008067          	ret

000000008000276c <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    8000276c:	00853503          	ld	a0,8(a0)
    80002770:	02050663          	beqz	a0,8000279c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00113423          	sd	ra,8(sp)
    8000277c:	00813023          	sd	s0,0(sp)
    80002780:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	e20080e7          	jalr	-480(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret
    return -1;
    8000279c:	fff00513          	li	a0,-1
}
    800027a0:	00008067          	ret

00000000800027a4 <_ZN9Semaphore9timedWaitEm>:
    if (myHandle && time) return sem_timedwait(myHandle, time);
    800027a4:	00853503          	ld	a0,8(a0)
    800027a8:	02050863          	beqz	a0,800027d8 <_ZN9Semaphore9timedWaitEm+0x34>
    800027ac:	02058a63          	beqz	a1,800027e0 <_ZN9Semaphore9timedWaitEm+0x3c>
int Semaphore::timedWait(time_t time) {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00113423          	sd	ra,8(sp)
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	01010413          	addi	s0,sp,16
    if (myHandle && time) return sem_timedwait(myHandle, time);
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	d4c080e7          	jalr	-692(ra) # 8000150c <_Z13sem_timedwaitP3Semm>
}
    800027c8:	00813083          	ld	ra,8(sp)
    800027cc:	00013403          	ld	s0,0(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret
    return -1;
    800027d8:	fff00513          	li	a0,-1
    800027dc:	00008067          	ret
    800027e0:	fff00513          	li	a0,-1
}
    800027e4:	00008067          	ret

00000000800027e8 <_ZN9Semaphore7tryWaitEv>:
    if (myHandle) return sem_trywait(myHandle);
    800027e8:	00853503          	ld	a0,8(a0)
    800027ec:	02050663          	beqz	a0,80002818 <_ZN9Semaphore7tryWaitEv+0x30>
int Semaphore::tryWait() {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_trywait(myHandle);
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	d58080e7          	jalr	-680(ra) # 80001558 <_Z11sem_trywaitP3Sem>
}
    80002808:	00813083          	ld	ra,8(sp)
    8000280c:	00013403          	ld	s0,0(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret
    return -1;
    80002818:	fff00513          	li	a0,-1
}
    8000281c:	00008067          	ret

0000000080002820 <_ZN7Console4getcEv>:
char Console::getc() {
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00113423          	sd	ra,8(sp)
    80002828:	00813023          	sd	s0,0(sp)
    8000282c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	e0c080e7          	jalr	-500(ra) # 8000163c <_Z4getcv>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00113423          	sd	ra,8(sp)
    80002850:	00813023          	sd	s0,0(sp)
    80002854:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	e30080e7          	jalr	-464(ra) # 80001688 <_Z4putcc>
}
    80002860:	00813083          	ld	ra,8(sp)
    80002864:	00013403          	ld	s0,0(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80002870:	fe010113          	addi	sp,sp,-32
    80002874:	00113c23          	sd	ra,24(sp)
    80002878:	00813823          	sd	s0,16(sp)
    8000287c:	00913423          	sd	s1,8(sp)
    80002880:	01213023          	sd	s2,0(sp)
    80002884:	02010413          	addi	s0,sp,32
    80002888:	00050493          	mv	s1,a0
    8000288c:	00058913          	mv	s2,a1
    80002890:	00000097          	auipc	ra,0x0
    80002894:	dac080e7          	jalr	-596(ra) # 8000263c <_ZN6ThreadC1Ev>
    80002898:	0000a797          	auipc	a5,0xa
    8000289c:	2e878793          	addi	a5,a5,744 # 8000cb80 <_ZTV14PeriodicThread+0x10>
    800028a0:	00f4b023          	sd	a5,0(s1)
    800028a4:	0324b023          	sd	s2,32(s1)
    800028a8:	01813083          	ld	ra,24(sp)
    800028ac:	01013403          	ld	s0,16(sp)
    800028b0:	00813483          	ld	s1,8(sp)
    800028b4:	00013903          	ld	s2,0(sp)
    800028b8:	02010113          	addi	sp,sp,32
    800028bc:	00008067          	ret

00000000800028c0 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00113423          	sd	ra,8(sp)
    800028c8:	00813023          	sd	s0,0(sp)
    800028cc:	01010413          	addi	s0,sp,16
    thread_exit();
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	ac0080e7          	jalr	-1344(ra) # 80001390 <_Z11thread_exitv>
}
    800028d8:	00813083          	ld	ra,8(sp)
    800028dc:	00013403          	ld	s0,0(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret

00000000800028e8 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00813423          	sd	s0,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    800028f4:	00813403          	ld	s0,8(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret

0000000080002900 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002900:	ff010113          	addi	sp,sp,-16
    80002904:	00813423          	sd	s0,8(sp)
    80002908:	01010413          	addi	s0,sp,16
    8000290c:	00813403          	ld	s0,8(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00113423          	sd	ra,8(sp)
    80002920:	00813023          	sd	s0,0(sp)
    80002924:	01010413          	addi	s0,sp,16
    80002928:	0000a797          	auipc	a5,0xa
    8000292c:	25878793          	addi	a5,a5,600 # 8000cb80 <_ZTV14PeriodicThread+0x10>
    80002930:	00f53023          	sd	a5,0(a0)
    80002934:	00000097          	auipc	ra,0x0
    80002938:	c18080e7          	jalr	-1000(ra) # 8000254c <_ZN6ThreadD1Ev>
    8000293c:	00813083          	ld	ra,8(sp)
    80002940:	00013403          	ld	s0,0(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret

000000008000294c <_ZN14PeriodicThreadD0Ev>:
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00113c23          	sd	ra,24(sp)
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00050493          	mv	s1,a0
    80002964:	0000a797          	auipc	a5,0xa
    80002968:	21c78793          	addi	a5,a5,540 # 8000cb80 <_ZTV14PeriodicThread+0x10>
    8000296c:	00f53023          	sd	a5,0(a0)
    80002970:	00000097          	auipc	ra,0x0
    80002974:	bdc080e7          	jalr	-1060(ra) # 8000254c <_ZN6ThreadD1Ev>
    80002978:	00048513          	mv	a0,s1
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	ba8080e7          	jalr	-1112(ra) # 80002524 <_ZdlPv>
    80002984:	01813083          	ld	ra,24(sp)
    80002988:	01013403          	ld	s0,16(sp)
    8000298c:	00813483          	ld	s1,8(sp)
    80002990:	02010113          	addi	sp,sp,32
    80002994:	00008067          	ret

0000000080002998 <_ZN13BoundedBufferC1Ev>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	02010413          	addi	s0,sp,32
    800029ac:	00050493          	mv	s1,a0
    head = tail = 0;
    800029b0:	00052223          	sw	zero,4(a0)
    800029b4:	00052023          	sw	zero,0(a0)
    Sem::open(&space_available, bufferSize);
    800029b8:	12c00593          	li	a1,300
    800029bc:	00850513          	addi	a0,a0,8
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	e08080e7          	jalr	-504(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
    Sem::open(&item_available, 0);
    800029c8:	00000593          	li	a1,0
    800029cc:	01048513          	addi	a0,s1,16
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	df8080e7          	jalr	-520(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
    Sem::open(&mutex, 1);
    800029d8:	00100593          	li	a1,1
    800029dc:	01848513          	addi	a0,s1,24
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	de8080e7          	jalr	-536(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
}
    800029e8:	01813083          	ld	ra,24(sp)
    800029ec:	01013403          	ld	s0,16(sp)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	02010113          	addi	sp,sp,32
    800029f8:	00008067          	ret

00000000800029fc <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050493          	mv	s1,a0
    Sem::s_close(space_available);
    80002a14:	00853503          	ld	a0,8(a0)
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	02c080e7          	jalr	44(ra) # 80001a44 <_ZN3Sem7s_closeEPS_>
    Sem::s_close(item_available);
    80002a20:	0104b503          	ld	a0,16(s1)
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	020080e7          	jalr	32(ra) # 80001a44 <_ZN3Sem7s_closeEPS_>
    Sem::s_close(mutex);
    80002a2c:	0184b503          	ld	a0,24(s1)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	014080e7          	jalr	20(ra) # 80001a44 <_ZN3Sem7s_closeEPS_>
}
    80002a38:	01813083          	ld	ra,24(sp)
    80002a3c:	01013403          	ld	s0,16(sp)
    80002a40:	00813483          	ld	s1,8(sp)
    80002a44:	02010113          	addi	sp,sp,32
    80002a48:	00008067          	ret

0000000080002a4c <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    80002a4c:	fe010113          	addi	sp,sp,-32
    80002a50:	00113c23          	sd	ra,24(sp)
    80002a54:	00813823          	sd	s0,16(sp)
    80002a58:	00913423          	sd	s1,8(sp)
    80002a5c:	01213023          	sd	s2,0(sp)
    80002a60:	02010413          	addi	s0,sp,32
    80002a64:	00050493          	mv	s1,a0
    80002a68:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002a6c:	00853503          	ld	a0,8(a0)
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	e9c080e7          	jalr	-356(ra) # 8000190c <_ZN3Sem4waitEPS_>
    //Sem::wait(mutex);
    buffer[tail++] = c;
    80002a78:	0044a783          	lw	a5,4(s1)
    80002a7c:	0017871b          	addiw	a4,a5,1
    80002a80:	00f487b3          	add	a5,s1,a5
    80002a84:	03278023          	sb	s2,32(a5)
    tail %= bufferSize;
    80002a88:	12c00793          	li	a5,300
    80002a8c:	02f767bb          	remw	a5,a4,a5
    80002a90:	00f4a223          	sw	a5,4(s1)
    //Sem::signal(mutex);
    Sem::signal(item_available);
    80002a94:	0104b503          	ld	a0,16(s1)
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	01c080e7          	jalr	28(ra) # 80001ab4 <_ZN3Sem6signalEPS_>
}
    80002aa0:	01813083          	ld	ra,24(sp)
    80002aa4:	01013403          	ld	s0,16(sp)
    80002aa8:	00813483          	ld	s1,8(sp)
    80002aac:	00013903          	ld	s2,0(sp)
    80002ab0:	02010113          	addi	sp,sp,32
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN13BoundedBuffer3getEv>:

char BoundedBuffer::get() {
    80002ab8:	fe010113          	addi	sp,sp,-32
    80002abc:	00113c23          	sd	ra,24(sp)
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	01213023          	sd	s2,0(sp)
    80002acc:	02010413          	addi	s0,sp,32
    80002ad0:	00050493          	mv	s1,a0
    int ret = Sem::wait(item_available);
    80002ad4:	01053503          	ld	a0,16(a0)
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	e34080e7          	jalr	-460(ra) # 8000190c <_ZN3Sem4waitEPS_>
    //Sem::wait(mutex);
    if (ret != 0) return EOF; // unsuccessful
    80002ae0:	04051463          	bnez	a0,80002b28 <_ZN13BoundedBuffer3getEv+0x70>
    char  c = buffer[head++];
    80002ae4:	0004a783          	lw	a5,0(s1)
    80002ae8:	0017871b          	addiw	a4,a5,1
    80002aec:	00f487b3          	add	a5,s1,a5
    80002af0:	0207c903          	lbu	s2,32(a5)
    head %= bufferSize;
    80002af4:	12c00793          	li	a5,300
    80002af8:	02f767bb          	remw	a5,a4,a5
    80002afc:	00f4a023          	sw	a5,0(s1)
    //Sem::signal(mutex);
    Sem::signal(space_available);
    80002b00:	0084b503          	ld	a0,8(s1)
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	fb0080e7          	jalr	-80(ra) # 80001ab4 <_ZN3Sem6signalEPS_>
    return c;
}
    80002b0c:	00090513          	mv	a0,s2
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	00013903          	ld	s2,0(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret
    if (ret != 0) return EOF; // unsuccessful
    80002b28:	0ff00913          	li	s2,255
    80002b2c:	fe1ff06f          	j	80002b0c <_ZN13BoundedBuffer3getEv+0x54>

0000000080002b30 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002b30:	ff010113          	addi	sp,sp,-16
    80002b34:	00113423          	sd	ra,8(sp)
    80002b38:	00813023          	sd	s0,0(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
    80002b40:	05750513          	addi	a0,a0,87
    80002b44:	00655513          	srli	a0,a0,0x6
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	4fc080e7          	jalr	1276(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	714080e7          	jalr	1812(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002b78:	00813083          	ld	ra,8(sp)
    80002b7c:	00013403          	ld	s0,0(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <_ZNK13BoundedBuffer5emptyEv>:

bool BoundedBuffer::empty() const {
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00113423          	sd	ra,8(sp)
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	01010413          	addi	s0,sp,16
    return !item_available->get_value();
    80002b98:	01053503          	ld	a0,16(a0)
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	bc4080e7          	jalr	-1084(ra) # 80001760 <_ZNK3Sem9get_valueEv>
}
    80002ba4:	00153513          	seqz	a0,a0
    80002ba8:	00813083          	ld	ra,8(sp)
    80002bac:	00013403          	ld	s0,0(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZNK13BoundedBuffer4fullEv>:

bool BoundedBuffer::full() const {
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00113423          	sd	ra,8(sp)
    80002bc0:	00813023          	sd	s0,0(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    return !space_available->get_value();
    80002bc8:	00853503          	ld	a0,8(a0)
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	b94080e7          	jalr	-1132(ra) # 80001760 <_ZNK3Sem9get_valueEv>
};
    80002bd4:	00153513          	seqz	a0,a0
    80002bd8:	00813083          	ld	ra,8(sp)
    80002bdc:	00013403          	ld	s0,0(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret

0000000080002be8 <_ZN5RISCV10popSppSpieEv>:
extern void printString(char*);
extern void handleNewChars(void*);

// first time running a thread, sepc inside of wrapper

void RISCV::popSppSpie() {
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00813423          	sd	s0,8(sp)
    80002bf0:	01010413          	addi	s0,sp,16

    // not inline ( ra reg )

    if (TCB::running->routine != handleNewChars) RISCV::mask_status(SPP);
    80002bf4:	0000a797          	auipc	a5,0xa
    80002bf8:	1a47b783          	ld	a5,420(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002bfc:	0007b783          	ld	a5,0(a5)
    80002c00:	0307b703          	ld	a4,48(a5)
    80002c04:	0000a797          	auipc	a5,0xa
    80002c08:	1a47b783          	ld	a5,420(a5) # 8000cda8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002c0c:	00f70663          	beq	a4,a5,80002c18 <_ZN5RISCV10popSppSpieEv+0x30>
inline void RISCV::set_sip(uint64 mask) {
    __asm__ volatile("csrs sip, %0" : : "r"(mask));
}

inline void RISCV::mask_status(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80002c10:	10000793          	li	a5,256
    80002c14:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    80002c18:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002c1c:	10200073          	sret

    // => pop spp and spie !
    // exit from supervisor mode
}
    80002c20:	00813403          	ld	s0,8(sp)
    80002c24:	01010113          	addi	sp,sp,16
    80002c28:	00008067          	ret

0000000080002c2c <_ZN5RISCV12return_valueEm>:

uint64 RISCV::return_value(uint64 value) {
    80002c2c:	ff010113          	addi	sp,sp,-16
    80002c30:	00813423          	sd	s0,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
    return value; // move to a0 reg
}
    80002c38:	00813403          	ld	s0,8(sp)
    80002c3c:	01010113          	addi	sp,sp,16
    80002c40:	00008067          	ret

0000000080002c44 <_ZN5RISCV16handle_interruptEv>:

void RISCV::handle_interrupt() {
    80002c44:	f9010113          	addi	sp,sp,-112
    80002c48:	06113423          	sd	ra,104(sp)
    80002c4c:	06813023          	sd	s0,96(sp)
    80002c50:	04913c23          	sd	s1,88(sp)
    80002c54:	05213823          	sd	s2,80(sp)
    80002c58:	05313423          	sd	s3,72(sp)
    80002c5c:	05413023          	sd	s4,64(sp)
    80002c60:	07010413          	addi	s0,sp,112

    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    80002c64:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002c68:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002c6c:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002c70:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002c74:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    80002c78:	142027f3          	csrr	a5,scause
    80002c7c:	f8f43c23          	sd	a5,-104(s0)
    return value;
    80002c80:	f9843703          	ld	a4,-104(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    80002c84:	fff00793          	li	a5,-1
    80002c88:	03f79793          	slli	a5,a5,0x3f
    80002c8c:	00178793          	addi	a5,a5,1
    80002c90:	06f70063          	beq	a4,a5,80002cf0 <_ZN5RISCV16handle_interruptEv+0xac>

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }

    } else if (scause == EXTERNAL) {
    80002c94:	fff00793          	li	a5,-1
    80002c98:	03f79793          	slli	a5,a5,0x3f
    80002c9c:	00978793          	addi	a5,a5,9
    80002ca0:	16f70e63          	beq	a4,a5,80002e1c <_ZN5RISCV16handle_interruptEv+0x1d8>
        wr_sstatus(sstatus);
        clear_sip(SE);

    }

     else if (scause == U_ECALL || scause == S_ECALL){
    80002ca4:	ff870713          	addi	a4,a4,-8
    80002ca8:	00100793          	li	a5,1
    80002cac:	2ee7ee63          	bltu	a5,a4,80002fa8 <_ZN5RISCV16handle_interruptEv+0x364>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002cb0:	141027f3          	csrr	a5,sepc
    80002cb4:	fcf43423          	sd	a5,-56(s0)
    return value;
    80002cb8:	fc843483          	ld	s1,-56(s0)
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
    80002cbc:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002cc0:	100027f3          	csrr	a5,sstatus
    80002cc4:	fcf43023          	sd	a5,-64(s0)
    return value;
    80002cc8:	fc043903          	ld	s2,-64(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    80002ccc:	04200793          	li	a5,66
    80002cd0:	1f07e863          	bltu	a5,a6,80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
    80002cd4:	00281793          	slli	a5,a6,0x2
    80002cd8:	00007717          	auipc	a4,0x7
    80002cdc:	34870713          	addi	a4,a4,840 # 8000a020 <CONSOLE_STATUS+0x10>
    80002ce0:	00e787b3          	add	a5,a5,a4
    80002ce4:	0007a783          	lw	a5,0(a5)
    80002ce8:	00e787b3          	add	a5,a5,a4
    80002cec:	00078067          	jr	a5
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002cf0:	00200793          	li	a5,2
    80002cf4:	1447b073          	csrc	sip,a5

    Scheduler(const Scheduler&) = delete;

private:

    static bool hasSleeping() {return  first_sleepy != nullptr;}
    80002cf8:	0000a797          	auipc	a5,0xa
    80002cfc:	0987b783          	ld	a5,152(a5) # 8000cd90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d00:	0007b483          	ld	s1,0(a5)
        if (Scheduler::hasSleeping()) {
    80002d04:	04048463          	beqz	s1,80002d4c <_ZN5RISCV16handle_interruptEv+0x108>
            Scheduler::first_sleepy -> sleeping_time --;
    80002d08:	0204b783          	ld	a5,32(s1)
    80002d0c:	fff78793          	addi	a5,a5,-1
    80002d10:	02f4b023          	sd	a5,32(s1)
            while (tcb) {
    80002d14:	02048663          	beqz	s1,80002d40 <_ZN5RISCV16handle_interruptEv+0xfc>
                if (tcb -> sleeping_time > 0) break;
    80002d18:	0204b783          	ld	a5,32(s1)
    80002d1c:	02079263          	bnez	a5,80002d40 <_ZN5RISCV16handle_interruptEv+0xfc>
                tcb->current_state = TCB::RUNNABLE;
    80002d20:	0604a423          	sw	zero,104(s1)
                Scheduler::put(tcb);
    80002d24:	00048513          	mv	a0,s1
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	f50080e7          	jalr	-176(ra) # 80001c78 <_ZN9Scheduler3putEP3TCB>
                TCB* next = tcb -> next_sleepy;
    80002d30:	0104b783          	ld	a5,16(s1)
                tcb -> next_sleepy = nullptr;
    80002d34:	0004b823          	sd	zero,16(s1)
                tcb = next;
    80002d38:	00078493          	mv	s1,a5
            while (tcb) {
    80002d3c:	fd9ff06f          	j	80002d14 <_ZN5RISCV16handle_interruptEv+0xd0>
            Scheduler::first_sleepy = tcb;
    80002d40:	0000a797          	auipc	a5,0xa
    80002d44:	0507b783          	ld	a5,80(a5) # 8000cd90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d48:	0097b023          	sd	s1,0(a5)
        for (Sem* s = Sem::first; s; s = s->next) {
    80002d4c:	0000a797          	auipc	a5,0xa
    80002d50:	03c7b783          	ld	a5,60(a5) # 8000cd88 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002d54:	0007ba03          	ld	s4,0(a5)
    80002d58:	0540006f          	j	80002dac <_ZN5RISCV16handle_interruptEv+0x168>
            for (List<TCB>::Elem* e = s->blocked.head ; e && count > 0; e = e->next) {
    80002d5c:	0084b483          	ld	s1,8(s1)
    80002d60:	04048463          	beqz	s1,80002da8 <_ZN5RISCV16handle_interruptEv+0x164>
    80002d64:	05305263          	blez	s3,80002da8 <_ZN5RISCV16handle_interruptEv+0x164>
                TCB* t = e->data;
    80002d68:	0004b903          	ld	s2,0(s1)
                if (t->time_on_sem > 0) { // if timed waiting
    80002d6c:	01893783          	ld	a5,24(s2)
    80002d70:	fe0786e3          	beqz	a5,80002d5c <_ZN5RISCV16handle_interruptEv+0x118>
                    count--;
    80002d74:	fff9899b          	addiw	s3,s3,-1
                    if ( --t->time_on_sem == 0) {
    80002d78:	fff78793          	addi	a5,a5,-1
    80002d7c:	00f93c23          	sd	a5,24(s2)
    80002d80:	fc079ee3          	bnez	a5,80002d5c <_ZN5RISCV16handle_interruptEv+0x118>
                        s->blocked.remove(t);
    80002d84:	00090593          	mv	a1,s2
    80002d88:	010a0513          	addi	a0,s4,16
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	230080e7          	jalr	560(ra) # 80002fbc <_ZN4ListI3TCBE6removeEPS0_>
                        t->current_state = TCB::RUNNABLE;
    80002d94:	06092423          	sw	zero,104(s2)
                        Scheduler::put(t);
    80002d98:	00090513          	mv	a0,s2
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	edc080e7          	jalr	-292(ra) # 80001c78 <_ZN9Scheduler3putEP3TCB>
    80002da4:	fb9ff06f          	j	80002d5c <_ZN5RISCV16handle_interruptEv+0x118>
        for (Sem* s = Sem::first; s; s = s->next) {
    80002da8:	008a3a03          	ld	s4,8(s4)
    80002dac:	000a0863          	beqz	s4,80002dbc <_ZN5RISCV16handle_interruptEv+0x178>
            int count = s->timedBlock;
    80002db0:	028a2983          	lw	s3,40(s4)
            for (List<TCB>::Elem* e = s->blocked.head ; e && count > 0; e = e->next) {
    80002db4:	010a3483          	ld	s1,16(s4)
    80002db8:	fa9ff06f          	j	80002d60 <_ZN5RISCV16handle_interruptEv+0x11c>
        TCB::time_slice_count ++;
    80002dbc:	0000a717          	auipc	a4,0xa
    80002dc0:	ff473703          	ld	a4,-12(a4) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002dc4:	00073783          	ld	a5,0(a4)
    80002dc8:	00178793          	addi	a5,a5,1
    80002dcc:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    80002dd0:	0000a717          	auipc	a4,0xa
    80002dd4:	fc873703          	ld	a4,-56(a4) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002dd8:	00073703          	ld	a4,0(a4)
    time_t getTimeSlice() const {return time_slice;}
    80002ddc:	02873703          	ld	a4,40(a4)
    80002de0:	0ee7e463          	bltu	a5,a4,80002ec8 <_ZN5RISCV16handle_interruptEv+0x284>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002de4:	141027f3          	csrr	a5,sepc
    80002de8:	faf43423          	sd	a5,-88(s0)
    return value;
    80002dec:	fa843903          	ld	s2,-88(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002df0:	100027f3          	csrr	a5,sstatus
    80002df4:	faf43023          	sd	a5,-96(s0)
    return value;
    80002df8:	fa043483          	ld	s1,-96(s0)
            TCB::time_slice_count = 0; // new running thread
    80002dfc:	0000a797          	auipc	a5,0xa
    80002e00:	fb47b783          	ld	a5,-76(a5) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e04:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002e08:	00001097          	auipc	ra,0x1
    80002e0c:	ac0080e7          	jalr	-1344(ra) # 800038c8 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002e10:	14191073          	csrw	sepc,s2
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002e14:	10049073          	csrw	sstatus,s1
}
    80002e18:	0b00006f          	j	80002ec8 <_ZN5RISCV16handle_interruptEv+0x284>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002e1c:	141027f3          	csrr	a5,sepc
    80002e20:	faf43c23          	sd	a5,-72(s0)
    return value;
    80002e24:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002e28:	100027f3          	csrr	a5,sstatus
    80002e2c:	faf43823          	sd	a5,-80(s0)
    return value;
    80002e30:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002e34:	00005097          	auipc	ra,0x5
    80002e38:	ab0080e7          	jalr	-1360(ra) # 800078e4 <plic_claim>
    80002e3c:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002e40:	00a00793          	li	a5,10
    80002e44:	00f50c63          	beq	a0,a5,80002e5c <_ZN5RISCV16handle_interruptEv+0x218>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002e48:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002e4c:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002e50:	20000793          	li	a5,512
    80002e54:	1447b073          	csrc	sip,a5
}
    80002e58:	0700006f          	j	80002ec8 <_ZN5RISCV16handle_interruptEv+0x284>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002e5c:	0000a797          	auipc	a5,0xa
    80002e60:	f047b783          	ld	a5,-252(a5) # 8000cd60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e64:	0007b783          	ld	a5,0(a5)
    80002e68:	0007c783          	lbu	a5,0(a5)
    80002e6c:	0017f793          	andi	a5,a5,1
    80002e70:	02078c63          	beqz	a5,80002ea8 <_ZN5RISCV16handle_interruptEv+0x264>
    80002e74:	0000a797          	auipc	a5,0xa
    80002e78:	ee47b783          	ld	a5,-284(a5) # 8000cd58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e7c:	0007b503          	ld	a0,0(a5)
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	d38080e7          	jalr	-712(ra) # 80002bb8 <_ZNK13BoundedBuffer4fullEv>
    80002e88:	02051063          	bnez	a0,80002ea8 <_ZN5RISCV16handle_interruptEv+0x264>
                char c = *(char *) CONSOLE_RX_DATA;
    80002e8c:	0000a797          	auipc	a5,0xa
    80002e90:	ec47b783          	ld	a5,-316(a5) # 8000cd50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e94:	0007b783          	ld	a5,0(a5)
                myConsole::input_putc(c);
    80002e98:	0007c503          	lbu	a0,0(a5)
    80002e9c:	fffff097          	auipc	ra,0xfffff
    80002ea0:	184080e7          	jalr	388(ra) # 80002020 <_ZN9myConsole10input_putcEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002ea4:	fb9ff06f          	j	80002e5c <_ZN5RISCV16handle_interruptEv+0x218>
            plic_complete(irq);
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00005097          	auipc	ra,0x5
    80002eb0:	a70080e7          	jalr	-1424(ra) # 8000791c <plic_complete>
    80002eb4:	f95ff06f          	j	80002e48 <_ZN5RISCV16handle_interruptEv+0x204>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	18c080e7          	jalr	396(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002ec0:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002ec4:	10091073          	csrw	sstatus,s2

    } else {
        // INVALID INTERRUPT CODE
        printInteger(123456789);
    }
}
    80002ec8:	06813083          	ld	ra,104(sp)
    80002ecc:	06013403          	ld	s0,96(sp)
    80002ed0:	05813483          	ld	s1,88(sp)
    80002ed4:	05013903          	ld	s2,80(sp)
    80002ed8:	04813983          	ld	s3,72(sp)
    80002edc:	04013a03          	ld	s4,64(sp)
    80002ee0:	07010113          	addi	sp,sp,112
    80002ee4:	00008067          	ret
                MemoryAllocator::mem_free((void *)a1);
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	39c080e7          	jalr	924(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002ef0:	fd1ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    80002ef4:	00001097          	auipc	ra,0x1
    80002ef8:	884080e7          	jalr	-1916(ra) # 80003778 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    80002efc:	fc5ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                TCB::_threadExit();
    80002f00:	00001097          	auipc	ra,0x1
    80002f04:	a6c080e7          	jalr	-1428(ra) # 8000396c <_ZN3TCB11_threadExitEv>
                break;
    80002f08:	fb9ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                TCB::time_slice_count = 0;
    80002f0c:	0000a797          	auipc	a5,0xa
    80002f10:	ea47b783          	ld	a5,-348(a5) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002f14:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002f18:	00001097          	auipc	ra,0x1
    80002f1c:	9b0080e7          	jalr	-1616(ra) # 800038c8 <_ZN3TCB8dispatchEv>
                break;
    80002f20:	fa1ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Sem::open((sem_t*)a1, (unsigned int)a2);
    80002f24:	0005859b          	sext.w	a1,a1
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	8a0080e7          	jalr	-1888(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
                break;
    80002f30:	f91ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Sem::s_close((sem_t)a1); // a1 == handle
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	b10080e7          	jalr	-1264(ra) # 80001a44 <_ZN3Sem7s_closeEPS_>
                break;
    80002f3c:	f85ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Sem::wait(((sem_t)a1)); // a1 <=> handle
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	9cc080e7          	jalr	-1588(ra) # 8000190c <_ZN3Sem4waitEPS_>
                break;
    80002f48:	f79ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Sem::signal((sem_t)a1); // a1 <=> handle
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	b68080e7          	jalr	-1176(ra) # 80001ab4 <_ZN3Sem6signalEPS_>
                break;
    80002f54:	f6dff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Sem::timedwait((sem_t)a1,(time_t)a2);
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	a08080e7          	jalr	-1528(ra) # 80001960 <_ZN3Sem9timedwaitEPS_m>
                break;
    80002f60:	f61ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Sem::trywait((sem_t)a1);
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	760080e7          	jalr	1888(ra) # 800016c4 <_ZN3Sem7trywaitEPS_>
                break;
    80002f6c:	f55ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                Scheduler::time_sleep((thread_t)TCB::running, (time_t)a1);
    80002f70:	00050593          	mv	a1,a0
    80002f74:	0000a797          	auipc	a5,0xa
    80002f78:	e247b783          	ld	a5,-476(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f7c:	0007b503          	ld	a0,0(a5)
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	e54080e7          	jalr	-428(ra) # 80001dd4 <_ZN9Scheduler10time_sleepEP3TCBm>
                break;
    80002f88:	f39ff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                myConsole::input_getc();
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	000080e7          	jalr	ra # 80001f8c <_ZN9myConsole10input_getcEv>
                break;
    80002f94:	f2dff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
                myConsole::output_putc((char) a1);
    80002f98:	0ff57513          	andi	a0,a0,255
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	020080e7          	jalr	32(ra) # 80001fbc <_ZN9myConsole11output_putcEc>
                break;
    80002fa4:	f1dff06f          	j	80002ec0 <_ZN5RISCV16handle_interruptEv+0x27c>
        printInteger(123456789);
    80002fa8:	075bd537          	lui	a0,0x75bd
    80002fac:	d1550513          	addi	a0,a0,-747 # 75bcd15 <_entry-0x78a432eb>
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	5a0080e7          	jalr	1440(ra) # 80003550 <_Z12printIntegerm>
}
    80002fb8:	f11ff06f          	j	80002ec8 <_ZN5RISCV16handle_interruptEv+0x284>

0000000080002fbc <_ZN4ListI3TCBE6removeEPS0_>:

template <typename T>
void List<T>::remove(T* t) {
    80002fbc:	00050693          	mv	a3,a0
    Elem* prev = nullptr, *elem = head;
    80002fc0:	00053503          	ld	a0,0(a0)
    80002fc4:	00000713          	li	a4,0
    while (elem) {
    80002fc8:	06050c63          	beqz	a0,80003040 <_ZN4ListI3TCBE6removeEPS0_+0x84>
        if (elem->data == t) {
    80002fcc:	00053783          	ld	a5,0(a0)
    80002fd0:	00b78863          	beq	a5,a1,80002fe0 <_ZN4ListI3TCBE6removeEPS0_+0x24>

            delete elem;
            return;

        }
        prev = elem;
    80002fd4:	00050713          	mv	a4,a0
        elem = elem -> next;
    80002fd8:	00853503          	ld	a0,8(a0)
    while (elem) {
    80002fdc:	fedff06f          	j	80002fc8 <_ZN4ListI3TCBE6removeEPS0_+0xc>
void List<T>::remove(T* t) {
    80002fe0:	ff010113          	addi	sp,sp,-16
    80002fe4:	00113423          	sd	ra,8(sp)
    80002fe8:	00813023          	sd	s0,0(sp)
    80002fec:	01010413          	addi	s0,sp,16
            if (prev) {
    80002ff0:	02070e63          	beqz	a4,8000302c <_ZN4ListI3TCBE6removeEPS0_+0x70>
                prev->next = elem->next;
    80002ff4:	00853783          	ld	a5,8(a0)
    80002ff8:	00f73423          	sd	a5,8(a4)
                if (tail == elem) tail = prev;
    80002ffc:	0086b783          	ld	a5,8(a3)
    80003000:	02a78263          	beq	a5,a0,80003024 <_ZN4ListI3TCBE6removeEPS0_+0x68>
            if (!head) tail = nullptr;
    80003004:	0006b783          	ld	a5,0(a3)
    80003008:	02078863          	beqz	a5,80003038 <_ZN4ListI3TCBE6removeEPS0_+0x7c>
            delete elem;
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	518080e7          	jalr	1304(ra) # 80002524 <_ZdlPv>
    }
}
    80003014:	00813083          	ld	ra,8(sp)
    80003018:	00013403          	ld	s0,0(sp)
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret
                if (tail == elem) tail = prev;
    80003024:	00e6b423          	sd	a4,8(a3)
    80003028:	fddff06f          	j	80003004 <_ZN4ListI3TCBE6removeEPS0_+0x48>
            else head = elem -> next;
    8000302c:	00853783          	ld	a5,8(a0)
    80003030:	00f6b023          	sd	a5,0(a3)
    80003034:	fd1ff06f          	j	80003004 <_ZN4ListI3TCBE6removeEPS0_+0x48>
            if (!head) tail = nullptr;
    80003038:	0006b423          	sd	zero,8(a3)
    8000303c:	fd1ff06f          	j	8000300c <_ZN4ListI3TCBE6removeEPS0_+0x50>
    80003040:	00008067          	ret

0000000080003044 <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00813423          	sd	s0,8(sp)
    8000304c:	01010413          	addi	s0,sp,16

    //size = block number

    if (size <= 0) return nullptr;
    80003050:	12050663          	beqz	a0,8000317c <_ZN15MemoryAllocator9mem_allocEm+0x138>

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;
    80003054:	00651793          	slli	a5,a0,0x6

    for (curr = free_mem_head; curr; curr = curr -> next) {
    80003058:	0000a517          	auipc	a0,0xa
    8000305c:	e5853503          	ld	a0,-424(a0) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    80003060:	0e050e63          	beqz	a0,8000315c <_ZN15MemoryAllocator9mem_allocEm+0x118>

        if (curr->size >= byte_size) {
    80003064:	01053703          	ld	a4,16(a0)
    80003068:	00f77663          	bgeu	a4,a5,80003074 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    for (curr = free_mem_head; curr; curr = curr -> next) {
    8000306c:	00053503          	ld	a0,0(a0)
    80003070:	ff1ff06f          	j	80003060 <_ZN15MemoryAllocator9mem_allocEm+0x1c>

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    80003074:	40f70733          	sub	a4,a4,a5
    80003078:	01700693          	li	a3,23
    8000307c:	06e6e463          	bltu	a3,a4,800030e4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                if (curr->next) curr->next->prev = curr->prev;
    80003080:	00053703          	ld	a4,0(a0)
    80003084:	00070663          	beqz	a4,80003090 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80003088:	00853683          	ld	a3,8(a0)
    8000308c:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    80003090:	00853703          	ld	a4,8(a0)
    80003094:	04070063          	beqz	a4,800030d4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    80003098:	00053683          	ld	a3,0(a0)
    8000309c:	00d73023          	sd	a3,0(a4)
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    800030a0:	0000a717          	auipc	a4,0xa
    800030a4:	e1873703          	ld	a4,-488(a4) # 8000ceb8 <_ZN15MemoryAllocator13used_mem_headE>
    800030a8:	08e56263          	bltu	a0,a4,8000312c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    800030ac:	0a070e63          	beqz	a4,80003168 <_ZN15MemoryAllocator9mem_allocEm+0x124>
            else for (prev = used_mem_head; prev->next && (char*)curr >= (char *) prev + prev->size; prev = prev->next) {
    800030b0:	00070693          	mv	a3,a4
    800030b4:	00073703          	ld	a4,0(a4)
    800030b8:	06070c63          	beqz	a4,80003130 <_ZN15MemoryAllocator9mem_allocEm+0xec>
    800030bc:	0106b603          	ld	a2,16(a3)
    800030c0:	00c68633          	add	a2,a3,a2
    800030c4:	06c56663          	bltu	a0,a2,80003130 <_ZN15MemoryAllocator9mem_allocEm+0xec>
                // prev addr < addr and prev-next addr > addr + size
                if ((char*)prev->next >= (char*)curr + byte_size) break;
    800030c8:	00f50633          	add	a2,a0,a5
    800030cc:	fec762e3          	bltu	a4,a2,800030b0 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    800030d0:	0600006f          	j	80003130 <_ZN15MemoryAllocator9mem_allocEm+0xec>
                else free_mem_head = curr->next;
    800030d4:	00053703          	ld	a4,0(a0)
    800030d8:	0000a697          	auipc	a3,0xa
    800030dc:	dce6bc23          	sd	a4,-552(a3) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    800030e0:	fc1ff06f          	j	800030a0 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    800030e4:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    800030e8:	00053683          	ld	a3,0(a0)
    800030ec:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    800030f0:	00853683          	ld	a3,8(a0)
    800030f4:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    800030f8:	01053683          	ld	a3,16(a0)
    800030fc:	40f686b3          	sub	a3,a3,a5
    80003100:	00d73823          	sd	a3,16(a4)
                if (curr->next) curr->next->prev = remaining;
    80003104:	00053683          	ld	a3,0(a0)
    80003108:	00068463          	beqz	a3,80003110 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    8000310c:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    80003110:	00853683          	ld	a3,8(a0)
    80003114:	00068663          	beqz	a3,80003120 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    80003118:	00e6b023          	sd	a4,0(a3)
    8000311c:	f85ff06f          	j	800030a0 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                else free_mem_head = remaining;
    80003120:	0000a697          	auipc	a3,0xa
    80003124:	d8e6b823          	sd	a4,-624(a3) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    80003128:	f79ff06f          	j	800030a0 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    8000312c:	00000693          	li	a3,0
            }

            // dodavanje na kraj?

            curr->size = byte_size - mem_h_size;
    80003130:	fe878793          	addi	a5,a5,-24
    80003134:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80003138:	00d53423          	sd	a3,8(a0)

            if (prev) {
    8000313c:	02068a63          	beqz	a3,80003170 <_ZN15MemoryAllocator9mem_allocEm+0x12c>
                curr->next = prev->next;
    80003140:	0006b783          	ld	a5,0(a3)
    80003144:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80003148:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    8000314c:	00053783          	ld	a5,0(a0)
    80003150:	00078463          	beqz	a5,80003158 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80003154:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80003158:	01850513          	addi	a0,a0,24
        }
    }

    // free memory not found :(
    return nullptr;
}
    8000315c:	00813403          	ld	s0,8(sp)
    80003160:	01010113          	addi	sp,sp,16
    80003164:	00008067          	ret
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80003168:	00070693          	mv	a3,a4
    8000316c:	fc5ff06f          	j	80003130 <_ZN15MemoryAllocator9mem_allocEm+0xec>
            else used_mem_head = curr;
    80003170:	0000a797          	auipc	a5,0xa
    80003174:	d4a7b423          	sd	a0,-696(a5) # 8000ceb8 <_ZN15MemoryAllocator13used_mem_headE>
    80003178:	fd5ff06f          	j	8000314c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    if (size <= 0) return nullptr;
    8000317c:	00000513          	li	a0,0
    80003180:	fddff06f          	j	8000315c <_ZN15MemoryAllocator9mem_allocEm+0x118>

0000000080003184 <_ZN15MemoryAllocator14init_allocatorEv>:
    if (!allocator) {
    80003184:	0000a797          	auipc	a5,0xa
    80003188:	d3c7b783          	ld	a5,-708(a5) # 8000cec0 <_ZN15MemoryAllocator9allocatorE>
    8000318c:	00078863          	beqz	a5,8000319c <_ZN15MemoryAllocator14init_allocatorEv+0x18>
}
    80003190:	0000a517          	auipc	a0,0xa
    80003194:	d3053503          	ld	a0,-720(a0) # 8000cec0 <_ZN15MemoryAllocator9allocatorE>
    80003198:	00008067          	ret
MemoryAllocator* MemoryAllocator::init_allocator() {
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	00913423          	sd	s1,8(sp)
    800031ac:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    800031b0:	0000a697          	auipc	a3,0xa
    800031b4:	bb86b683          	ld	a3,-1096(a3) # 8000cd68 <_GLOBAL_OFFSET_TABLE_+0x20>
    800031b8:	0006b783          	ld	a5,0(a3)
    800031bc:	0000a497          	auipc	s1,0xa
    800031c0:	cf448493          	addi	s1,s1,-780 # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    800031c4:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    800031c8:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    800031cc:	0004b703          	ld	a4,0(s1)
    800031d0:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800031d4:	0000a797          	auipc	a5,0xa
    800031d8:	bcc7b783          	ld	a5,-1076(a5) # 8000cda0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800031dc:	0007b783          	ld	a5,0(a5)
    800031e0:	0006b683          	ld	a3,0(a3)
    800031e4:	40d787b3          	sub	a5,a5,a3
    800031e8:	00178793          	addi	a5,a5,1
    800031ec:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    800031f0:	00100513          	li	a0,1
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	e50080e7          	jalr	-432(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
    800031fc:	00a4b823          	sd	a0,16(s1)
}
    80003200:	0000a517          	auipc	a0,0xa
    80003204:	cc053503          	ld	a0,-832(a0) # 8000cec0 <_ZN15MemoryAllocator9allocatorE>
    80003208:	01813083          	ld	ra,24(sp)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret

000000008000321c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    8000321c:	ff010113          	addi	sp,sp,-16
    80003220:	00813423          	sd	s0,8(sp)
    80003224:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80003228:	04050663          	beqz	a0,80003274 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    8000322c:	00053783          	ld	a5,0(a0)
    80003230:	04078663          	beqz	a5,8000327c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80003234:	01053703          	ld	a4,16(a0)
    80003238:	00e506b3          	add	a3,a0,a4
    8000323c:	00d78a63          	beq	a5,a3,80003250 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
    80003240:	00000513          	li	a0,0
}
    80003244:	00813403          	ld	s0,8(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret
        curr->size += curr->next->size;
    80003250:	0107b683          	ld	a3,16(a5)
    80003254:	00d70733          	add	a4,a4,a3
    80003258:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    8000325c:	0007b783          	ld	a5,0(a5)
    80003260:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80003264:	00078463          	beqz	a5,8000326c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80003268:	00a7b423          	sd	a0,8(a5)
        return 1; // success status
    8000326c:	00100513          	li	a0,1
    80003270:	fd5ff06f          	j	80003244 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (!curr) return 0;
    80003274:	00000513          	li	a0,0
    80003278:	fcdff06f          	j	80003244 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    8000327c:	00000513          	li	a0,0
    80003280:	fc5ff06f          	j	80003244 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080003284 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80003284:	14050863          	beqz	a0,800033d4 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    80003288:	0000a797          	auipc	a5,0xa
    8000328c:	b187b783          	ld	a5,-1256(a5) # 8000cda0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003290:	0007b783          	ld	a5,0(a5)
    80003294:	14a7e463          	bltu	a5,a0,800033dc <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80003298:	0000a797          	auipc	a5,0xa
    8000329c:	ad07b783          	ld	a5,-1328(a5) # 8000cd68 <_GLOBAL_OFFSET_TABLE_+0x20>
    800032a0:	0007b783          	ld	a5,0(a5)
    800032a4:	14f56063          	bltu	a0,a5,800033e4 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
int MemoryAllocator::mem_free(void* addr) {
    800032a8:	fe010113          	addi	sp,sp,-32
    800032ac:	00113c23          	sd	ra,24(sp)
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	01213023          	sd	s2,0(sp)
    800032bc:	02010413          	addi	s0,sp,32
    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    800032c0:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    800032c4:	0000a797          	auipc	a5,0xa
    800032c8:	bf47b783          	ld	a5,-1036(a5) # 8000ceb8 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    800032cc:	00078863          	beqz	a5,800032dc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800032d0:	0097f663          	bgeu	a5,s1,800032dc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800032d4:	0007b783          	ld	a5,0(a5)
    800032d8:	ff5ff06f          	j	800032cc <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    if (block != tmp || !tmp) return -1;
    800032dc:	10979863          	bne	a5,s1,800033ec <_ZN15MemoryAllocator8mem_freeEPv+0x168>
    800032e0:	10078a63          	beqz	a5,800033f4 <_ZN15MemoryAllocator8mem_freeEPv+0x170>
    if (tmp->prev) tmp->prev->next = tmp->next;
    800032e4:	0087b703          	ld	a4,8(a5)
    800032e8:	06070c63          	beqz	a4,80003360 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    800032ec:	0007b683          	ld	a3,0(a5)
    800032f0:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    800032f4:	0007b703          	ld	a4,0(a5)
    800032f8:	00070663          	beqz	a4,80003304 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
    800032fc:	0087b783          	ld	a5,8(a5)
    80003300:	00f73423          	sd	a5,8(a4)
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80003304:	0000a797          	auipc	a5,0xa
    80003308:	bac7b783          	ld	a5,-1108(a5) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    8000330c:	06078263          	beqz	a5,80003370 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    80003310:	06f4e063          	bltu	s1,a5,80003370 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    else for (tmp = free_mem_head; tmp->next && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    80003314:	00078913          	mv	s2,a5
    80003318:	0007b783          	ld	a5,0(a5)
    8000331c:	00078463          	beqz	a5,80003324 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80003320:	fe97eae3          	bltu	a5,s1,80003314 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    if (tmp == nullptr) {
    80003324:	04090663          	beqz	s2,80003370 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        block->next = tmp->next;
    80003328:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    8000332c:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80003330:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80003334:	fe853783          	ld	a5,-24(a0)
    80003338:	00078463          	beqz	a5,80003340 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    8000333c:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80003340:	00048513          	mv	a0,s1
    80003344:	00000097          	auipc	ra,0x0
    80003348:	ed8080e7          	jalr	-296(ra) # 8000321c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    8000334c:	00090513          	mv	a0,s2
    80003350:	00000097          	auipc	ra,0x0
    80003354:	ecc080e7          	jalr	-308(ra) # 8000321c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80003358:	00000513          	li	a0,0
    8000335c:	0580006f          	j	800033b4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    else used_mem_head = tmp->next;
    80003360:	0007b703          	ld	a4,0(a5)
    80003364:	0000a697          	auipc	a3,0xa
    80003368:	b4e6ba23          	sd	a4,-1196(a3) # 8000ceb8 <_ZN15MemoryAllocator13used_mem_headE>
    8000336c:	f89ff06f          	j	800032f4 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
        block -> prev = nullptr;
    80003370:	fe053823          	sd	zero,-16(a0)
        if (free_mem_head) {
    80003374:	0000a797          	auipc	a5,0xa
    80003378:	b3c7b783          	ld	a5,-1220(a5) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    8000337c:	04078863          	beqz	a5,800033cc <_ZN15MemoryAllocator8mem_freeEPv+0x148>
            free_mem_head->prev = block;
    80003380:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    80003384:	fef53423          	sd	a5,-24(a0)
            free_mem_head = block;
    80003388:	0000a797          	auipc	a5,0xa
    8000338c:	b297b423          	sd	s1,-1240(a5) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
            tryToJoin(block);
    80003390:	00048513          	mv	a0,s1
    80003394:	00000097          	auipc	ra,0x0
    80003398:	e88080e7          	jalr	-376(ra) # 8000321c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    8000339c:	0000a797          	auipc	a5,0xa
    800033a0:	b097ba23          	sd	s1,-1260(a5) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	e74080e7          	jalr	-396(ra) # 8000321c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    800033b0:	00000513          	li	a0,0
}
    800033b4:	01813083          	ld	ra,24(sp)
    800033b8:	01013403          	ld	s0,16(sp)
    800033bc:	00813483          	ld	s1,8(sp)
    800033c0:	00013903          	ld	s2,0(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret
        else block -> next = nullptr;
    800033cc:	fe053423          	sd	zero,-24(a0)
    800033d0:	fcdff06f          	j	8000339c <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    800033d4:	fff00513          	li	a0,-1
    800033d8:	00008067          	ret
    800033dc:	fff00513          	li	a0,-1
    800033e0:	00008067          	ret
    800033e4:	fff00513          	li	a0,-1
}
    800033e8:	00008067          	ret
    if (block != tmp || !tmp) return -1;
    800033ec:	fff00513          	li	a0,-1
    800033f0:	fc5ff06f          	j	800033b4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    800033f4:	fff00513          	li	a0,-1
    800033f8:	fbdff06f          	j	800033b4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>

00000000800033fc <_ZN15MemoryAllocator5printEv>:

extern void printInteger(uint64);


void MemoryAllocator::print() {
    800033fc:	fe010113          	addi	sp,sp,-32
    80003400:	00113c23          	sd	ra,24(sp)
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00913423          	sd	s1,8(sp)
    8000340c:	02010413          	addi	s0,sp,32
    __putc('\n');
    80003410:	00a00513          	li	a0,10
    80003414:	00006097          	auipc	ra,0x6
    80003418:	d38080e7          	jalr	-712(ra) # 8000914c <__putc>
    __putc('M');
    8000341c:	04d00513          	li	a0,77
    80003420:	00006097          	auipc	ra,0x6
    80003424:	d2c080e7          	jalr	-724(ra) # 8000914c <__putc>
    __putc(':');
    80003428:	03a00513          	li	a0,58
    8000342c:	00006097          	auipc	ra,0x6
    80003430:	d20080e7          	jalr	-736(ra) # 8000914c <__putc>
    __putc(' ');
    80003434:	02000513          	li	a0,32
    80003438:	00006097          	auipc	ra,0x6
    8000343c:	d14080e7          	jalr	-748(ra) # 8000914c <__putc>
    for (MemoryBlock* tmp = free_mem_head; tmp; tmp = tmp -> next) {
    80003440:	0000a497          	auipc	s1,0xa
    80003444:	a704b483          	ld	s1,-1424(s1) # 8000ceb0 <_ZN15MemoryAllocator13free_mem_headE>
    80003448:	04048463          	beqz	s1,80003490 <_ZN15MemoryAllocator5printEv+0x94>
        printInteger(tmp -> size);
    8000344c:	0104b503          	ld	a0,16(s1)
    80003450:	00000097          	auipc	ra,0x0
    80003454:	100080e7          	jalr	256(ra) # 80003550 <_Z12printIntegerm>
        __putc(' ');
    80003458:	02000513          	li	a0,32
    8000345c:	00006097          	auipc	ra,0x6
    80003460:	cf0080e7          	jalr	-784(ra) # 8000914c <__putc>
        printInteger((uint64)tmp);
    80003464:	00048513          	mv	a0,s1
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	0e8080e7          	jalr	232(ra) # 80003550 <_Z12printIntegerm>
        __putc(' ');
    80003470:	02000513          	li	a0,32
    80003474:	00006097          	auipc	ra,0x6
    80003478:	cd8080e7          	jalr	-808(ra) # 8000914c <__putc>
        __putc('f');
    8000347c:	06600513          	li	a0,102
    80003480:	00006097          	auipc	ra,0x6
    80003484:	ccc080e7          	jalr	-820(ra) # 8000914c <__putc>
    for (MemoryBlock* tmp = free_mem_head; tmp; tmp = tmp -> next) {
    80003488:	0004b483          	ld	s1,0(s1)
    8000348c:	fbdff06f          	j	80003448 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    80003490:	00900513          	li	a0,9
    80003494:	00006097          	auipc	ra,0x6
    80003498:	cb8080e7          	jalr	-840(ra) # 8000914c <__putc>
    for (MemoryBlock* tmp = used_mem_head; tmp; tmp = tmp -> next) {
    8000349c:	0000a497          	auipc	s1,0xa
    800034a0:	a1c4b483          	ld	s1,-1508(s1) # 8000ceb8 <_ZN15MemoryAllocator13used_mem_headE>
    800034a4:	04048463          	beqz	s1,800034ec <_ZN15MemoryAllocator5printEv+0xf0>
        printInteger(tmp -> size);
    800034a8:	0104b503          	ld	a0,16(s1)
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	0a4080e7          	jalr	164(ra) # 80003550 <_Z12printIntegerm>
        __putc(' ');
    800034b4:	02000513          	li	a0,32
    800034b8:	00006097          	auipc	ra,0x6
    800034bc:	c94080e7          	jalr	-876(ra) # 8000914c <__putc>
        printInteger((uint64)tmp);
    800034c0:	00048513          	mv	a0,s1
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	08c080e7          	jalr	140(ra) # 80003550 <_Z12printIntegerm>
        __putc(' ');
    800034cc:	02000513          	li	a0,32
    800034d0:	00006097          	auipc	ra,0x6
    800034d4:	c7c080e7          	jalr	-900(ra) # 8000914c <__putc>
        __putc('u');
    800034d8:	07500513          	li	a0,117
    800034dc:	00006097          	auipc	ra,0x6
    800034e0:	c70080e7          	jalr	-912(ra) # 8000914c <__putc>
    for (MemoryBlock* tmp = used_mem_head; tmp; tmp = tmp -> next) {
    800034e4:	0004b483          	ld	s1,0(s1)
    800034e8:	fbdff06f          	j	800034a4 <_ZN15MemoryAllocator5printEv+0xa8>
    }
}
    800034ec:	01813083          	ld	ra,24(sp)
    800034f0:	01013403          	ld	s0,16(sp)
    800034f4:	00813483          	ld	s1,8(sp)
    800034f8:	02010113          	addi	sp,sp,32
    800034fc:	00008067          	ret

0000000080003500 <_Z13myPrintStringPKc>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void myPrintString(char const* string) {
    80003500:	fe010113          	addi	sp,sp,-32
    80003504:	00113c23          	sd	ra,24(sp)
    80003508:	00813823          	sd	s0,16(sp)
    8000350c:	00913423          	sd	s1,8(sp)
    80003510:	02010413          	addi	s0,sp,32
    80003514:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80003518:	0004c503          	lbu	a0,0(s1)
    8000351c:	00050a63          	beqz	a0,80003530 <_Z13myPrintStringPKc+0x30>
        putc(*string);
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	168080e7          	jalr	360(ra) # 80001688 <_Z4putcc>
        string++;
    80003528:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    8000352c:	fedff06f          	j	80003518 <_Z13myPrintStringPKc+0x18>
    }
    putc('\n'); // delete later
    80003530:	00a00513          	li	a0,10
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	154080e7          	jalr	340(ra) # 80001688 <_Z4putcc>
}
    8000353c:	01813083          	ld	ra,24(sp)
    80003540:	01013403          	ld	s0,16(sp)
    80003544:	00813483          	ld	s1,8(sp)
    80003548:	02010113          	addi	sp,sp,32
    8000354c:	00008067          	ret

0000000080003550 <_Z12printIntegerm>:

void printInteger(uint64 num) {
    80003550:	fd010113          	addi	sp,sp,-48
    80003554:	02113423          	sd	ra,40(sp)
    80003558:	02813023          	sd	s0,32(sp)
    8000355c:	00913c23          	sd	s1,24(sp)
    80003560:	01213823          	sd	s2,16(sp)
    80003564:	01313423          	sd	s3,8(sp)
    80003568:	03010413          	addi	s0,sp,48
    8000356c:	00050913          	mv	s2,a0
    __putc('\n');
    80003570:	00a00513          	li	a0,10
    80003574:	00006097          	auipc	ra,0x6
    80003578:	bd8080e7          	jalr	-1064(ra) # 8000914c <__putc>
    if (!num) __putc('0');
    8000357c:	00090863          	beqz	s2,8000358c <_Z12printIntegerm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    80003580:	00000993          	li	s3,0
    80003584:	00000493          	li	s1,0
    80003588:	01c0006f          	j	800035a4 <_Z12printIntegerm+0x54>
    if (!num) __putc('0');
    8000358c:	03000513          	li	a0,48
    80003590:	00006097          	auipc	ra,0x6
    80003594:	bbc080e7          	jalr	-1092(ra) # 8000914c <__putc>
    80003598:	fe9ff06f          	j	80003580 <_Z12printIntegerm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    8000359c:	00a00793          	li	a5,10
    800035a0:	02f95933          	divu	s2,s2,a5
    while (num) {
    800035a4:	02090463          	beqz	s2,800035cc <_Z12printIntegerm+0x7c>
        num2 *= 10;
    800035a8:	00249793          	slli	a5,s1,0x2
    800035ac:	009784b3          	add	s1,a5,s1
    800035b0:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    800035b4:	00a00493          	li	s1,10
    800035b8:	029974b3          	remu	s1,s2,s1
    800035bc:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    800035c0:	fc049ee3          	bnez	s1,8000359c <_Z12printIntegerm+0x4c>
    800035c4:	00198993          	addi	s3,s3,1
    800035c8:	fd5ff06f          	j	8000359c <_Z12printIntegerm+0x4c>
    }
    while (num2) {
    800035cc:	02048063          	beqz	s1,800035ec <_Z12printIntegerm+0x9c>
        __putc(num2 % 10 + '0');
    800035d0:	00a00913          	li	s2,10
    800035d4:	0324f533          	remu	a0,s1,s2
    800035d8:	03050513          	addi	a0,a0,48
    800035dc:	00006097          	auipc	ra,0x6
    800035e0:	b70080e7          	jalr	-1168(ra) # 8000914c <__putc>
        num2 /= 10;
    800035e4:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    800035e8:	fe5ff06f          	j	800035cc <_Z12printIntegerm+0x7c>
    }
    while (zero_count--) __putc('0');
    800035ec:	fff98493          	addi	s1,s3,-1
    800035f0:	00098c63          	beqz	s3,80003608 <_Z12printIntegerm+0xb8>
    800035f4:	03000513          	li	a0,48
    800035f8:	00006097          	auipc	ra,0x6
    800035fc:	b54080e7          	jalr	-1196(ra) # 8000914c <__putc>
    80003600:	00048993          	mv	s3,s1
    80003604:	fe9ff06f          	j	800035ec <_Z12printIntegerm+0x9c>
    80003608:	02813083          	ld	ra,40(sp)
    8000360c:	02013403          	ld	s0,32(sp)
    80003610:	01813483          	ld	s1,24(sp)
    80003614:	01013903          	ld	s2,16(sp)
    80003618:	00813983          	ld	s3,8(sp)
    8000361c:	03010113          	addi	sp,sp,48
    80003620:	00008067          	ret

0000000080003624 <_ZN3TCB7wrapperEv>:
    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return 0;
}

void TCB::wrapper() {
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00113423          	sd	ra,8(sp)
    8000362c:	00813023          	sd	s0,0(sp)
    80003630:	01010413          	addi	s0,sp,16

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    // came from supervisor trap (s mode)
    if ( running->routine ) {
    80003634:	0000a797          	auipc	a5,0xa
    80003638:	8947b783          	ld	a5,-1900(a5) # 8000cec8 <_ZN3TCB7runningE>
    8000363c:	0307b783          	ld	a5,48(a5)
    80003640:	02078063          	beqz	a5,80003660 <_ZN3TCB7wrapperEv+0x3c>
        RISCV::popSppSpie();
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	5a4080e7          	jalr	1444(ra) # 80002be8 <_ZN5RISCV10popSppSpieEv>
        running->routine(running->args);
    8000364c:	0000a797          	auipc	a5,0xa
    80003650:	87c7b783          	ld	a5,-1924(a5) # 8000cec8 <_ZN3TCB7runningE>
    80003654:	0307b703          	ld	a4,48(a5)
    80003658:	0387b503          	ld	a0,56(a5)
    8000365c:	000700e7          	jalr	a4
        // in user mode IF not char-handler
    }

    ::thread_exit();
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	d30080e7          	jalr	-720(ra) # 80001390 <_Z11thread_exitv>
    // no return address from wrapper
}
    80003668:	00813083          	ld	ra,8(sp)
    8000366c:	00013403          	ld	s0,0(sp)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret

0000000080003678 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    80003678:	ff010113          	addi	sp,sp,-16
    8000367c:	00813423          	sd	s0,8(sp)
    80003680:	01010413          	addi	s0,sp,16
    80003684:	00073303          	ld	t1,0(a4)
    80003688:	00873883          	ld	a7,8(a4)
    8000368c:	01073803          	ld	a6,16(a4)
    80003690:	01873783          	ld	a5,24(a4)
    80003694:	04653423          	sd	t1,72(a0)
    80003698:	05153823          	sd	a7,80(a0)
    8000369c:	05053c23          	sd	a6,88(a0)
    800036a0:	06f53023          	sd	a5,96(a0)
    id = id_count++;
    800036a4:	0000a717          	auipc	a4,0xa
    800036a8:	82470713          	addi	a4,a4,-2012 # 8000cec8 <_ZN3TCB7runningE>
    800036ac:	00872783          	lw	a5,8(a4)
    800036b0:	0017881b          	addiw	a6,a5,1
    800036b4:	01072423          	sw	a6,8(a4)
    800036b8:	00f52023          	sw	a5,0(a0)
    routine = fun;
    800036bc:	02b53823          	sd	a1,48(a0)
    this->args = args;
    800036c0:	02c53c23          	sd	a2,56(a0)
    this->stack = (uint64*)stack; // stack start address (allocated)
    800036c4:	04d53023          	sd	a3,64(a0)
    this->current_state = RUNNABLE;
    800036c8:	06052423          	sw	zero,104(a0)
    this->next_ready = nullptr;
    800036cc:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    800036d0:	00053823          	sd	zero,16(a0)
    this->time_on_sem = 0;
    800036d4:	00053c23          	sd	zero,24(a0)
    this->sleeping_time = 0;
    800036d8:	02053023          	sd	zero,32(a0)
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
    800036dc:	00200793          	li	a5,2
    800036e0:	02f53423          	sd	a5,40(a0)
}
    800036e4:	00813403          	ld	s0,8(sp)
    800036e8:	01010113          	addi	sp,sp,16
    800036ec:	00008067          	ret

00000000800036f0 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    800036f0:	fe010113          	addi	sp,sp,-32
    800036f4:	00113c23          	sd	ra,24(sp)
    800036f8:	00813823          	sd	s0,16(sp)
    800036fc:	00913423          	sd	s1,8(sp)
    80003700:	01213023          	sd	s2,0(sp)
    80003704:	02010413          	addi	s0,sp,32
    80003708:	00050493          	mv	s1,a0
    8000370c:	00058913          	mv	s2,a1
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	8f0080e7          	jalr	-1808(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    80003718:	04890593          	addi	a1,s2,72
    8000371c:	04848513          	addi	a0,s1,72
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	af0080e7          	jalr	-1296(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	958080e7          	jalr	-1704(ra) # 80001080 <_ZN5RISCV8pop_regsEv>
}
    80003730:	01813083          	ld	ra,24(sp)
    80003734:	01013403          	ld	s0,16(sp)
    80003738:	00813483          	ld	s1,8(sp)
    8000373c:	00013903          	ld	s2,0(sp)
    80003740:	02010113          	addi	sp,sp,32
    80003744:	00008067          	ret

0000000080003748 <_ZN3TCBnwEm>:
    running = Scheduler::get();

    if (oldRunning != running) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    80003748:	ff010113          	addi	sp,sp,-16
    8000374c:	00113423          	sd	ra,8(sp)
    80003750:	00813023          	sd	s0,0(sp)
    80003754:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80003758:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    8000375c:	00655513          	srli	a0,a0,0x6
    80003760:	00000097          	auipc	ra,0x0
    80003764:	8e4080e7          	jalr	-1820(ra) # 80003044 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003768:	00813083          	ld	ra,8(sp)
    8000376c:	00013403          	ld	s0,0(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret

0000000080003778 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    80003778:	f6010113          	addi	sp,sp,-160
    8000377c:	08113c23          	sd	ra,152(sp)
    80003780:	08813823          	sd	s0,144(sp)
    80003784:	08913423          	sd	s1,136(sp)
    80003788:	09213023          	sd	s2,128(sp)
    8000378c:	07313c23          	sd	s3,120(sp)
    80003790:	07413823          	sd	s4,112(sp)
    80003794:	07513423          	sd	s5,104(sp)
    80003798:	0a010413          	addi	s0,sp,160
    8000379c:	00050a13          	mv	s4,a0
    800037a0:	00058493          	mv	s1,a1
    800037a4:	00060a93          	mv	s5,a2
    800037a8:	00068913          	mv	s2,a3
    Context context = {
    800037ac:	fa043823          	sd	zero,-80(s0)
    800037b0:	fa043c23          	sd	zero,-72(s0)
    800037b4:	00000797          	auipc	a5,0x0
    800037b8:	e7078793          	addi	a5,a5,-400 # 80003624 <_ZN3TCB7wrapperEv>
    800037bc:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800037c0:	0a058863          	beqz	a1,80003870 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xf8>
    800037c4:	000017b7          	lui	a5,0x1
    800037c8:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800037cc:	00f687b3          	add	a5,a3,a5
    *handle = new TCB (routine, args, stack_space, context);
    800037d0:	fa043703          	ld	a4,-96(s0)
    800037d4:	f8e43023          	sd	a4,-128(s0)
    800037d8:	f8f43423          	sd	a5,-120(s0)
    800037dc:	fb043783          	ld	a5,-80(s0)
    800037e0:	f8f43823          	sd	a5,-112(s0)
    800037e4:	fb843783          	ld	a5,-72(s0)
    800037e8:	f8f43c23          	sd	a5,-104(s0)
    800037ec:	07000513          	li	a0,112
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	f58080e7          	jalr	-168(ra) # 80003748 <_ZN3TCBnwEm>
    800037f8:	00050993          	mv	s3,a0
    800037fc:	f8043783          	ld	a5,-128(s0)
    80003800:	f6f43023          	sd	a5,-160(s0)
    80003804:	f8843783          	ld	a5,-120(s0)
    80003808:	f6f43423          	sd	a5,-152(s0)
    8000380c:	f9043783          	ld	a5,-112(s0)
    80003810:	f6f43823          	sd	a5,-144(s0)
    80003814:	f9843783          	ld	a5,-104(s0)
    80003818:	f6f43c23          	sd	a5,-136(s0)
    8000381c:	f6040713          	addi	a4,s0,-160
    80003820:	00090693          	mv	a3,s2
    80003824:	000a8613          	mv	a2,s5
    80003828:	00048593          	mv	a1,s1
    8000382c:	00000097          	auipc	ra,0x0
    80003830:	e4c080e7          	jalr	-436(ra) # 80003678 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80003834:	013a3023          	sd	s3,0(s4)
    if (routine) Scheduler::put(*handle);
    80003838:	00048863          	beqz	s1,80003848 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xd0>
    8000383c:	00098513          	mv	a0,s3
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	438080e7          	jalr	1080(ra) # 80001c78 <_ZN9Scheduler3putEP3TCB>
}
    80003848:	00000513          	li	a0,0
    8000384c:	09813083          	ld	ra,152(sp)
    80003850:	09013403          	ld	s0,144(sp)
    80003854:	08813483          	ld	s1,136(sp)
    80003858:	08013903          	ld	s2,128(sp)
    8000385c:	07813983          	ld	s3,120(sp)
    80003860:	07013a03          	ld	s4,112(sp)
    80003864:	06813a83          	ld	s5,104(sp)
    80003868:	0a010113          	addi	sp,sp,160
    8000386c:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    80003870:	00000793          	li	a5,0
    80003874:	f5dff06f          	j	800037d0 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x58>

0000000080003878 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80003878:	ff010113          	addi	sp,sp,-16
    8000387c:	00113423          	sd	ra,8(sp)
    80003880:	00813023          	sd	s0,0(sp)
    80003884:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80003888:	00000097          	auipc	ra,0x0
    8000388c:	9fc080e7          	jalr	-1540(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003890:	00813083          	ld	ra,8(sp)
    80003894:	00013403          	ld	s0,0(sp)
    80003898:	01010113          	addi	sp,sp,16
    8000389c:	00008067          	ret

00000000800038a0 <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    800038a0:	ff010113          	addi	sp,sp,-16
    800038a4:	00813423          	sd	s0,8(sp)
    800038a8:	01010413          	addi	s0,sp,16
    return running->current_state == RUNNABLE; }
    800038ac:	00009797          	auipc	a5,0x9
    800038b0:	61c7b783          	ld	a5,1564(a5) # 8000cec8 <_ZN3TCB7runningE>
    800038b4:	0687a503          	lw	a0,104(a5)
    800038b8:	00153513          	seqz	a0,a0
    800038bc:	00813403          	ld	s0,8(sp)
    800038c0:	01010113          	addi	sp,sp,16
    800038c4:	00008067          	ret

00000000800038c8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800038c8:	fe010113          	addi	sp,sp,-32
    800038cc:	00113c23          	sd	ra,24(sp)
    800038d0:	00813823          	sd	s0,16(sp)
    800038d4:	00913423          	sd	s1,8(sp)
    800038d8:	01213023          	sd	s2,0(sp)
    800038dc:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    800038e0:	00009917          	auipc	s2,0x9
    800038e4:	5e893903          	ld	s2,1512(s2) # 8000cec8 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    800038e8:	00000097          	auipc	ra,0x0
    800038ec:	fb8080e7          	jalr	-72(ra) # 800038a0 <_ZN3TCB10isRunnableEv>
    800038f0:	04051e63          	bnez	a0,8000394c <_ZN3TCB8dispatchEv+0x84>
    static bool isFinished() {return TCB::running->current_state == state::FINISHED;}
    800038f4:	00009797          	auipc	a5,0x9
    800038f8:	5d47b783          	ld	a5,1492(a5) # 8000cec8 <_ZN3TCB7runningE>
    800038fc:	0687a683          	lw	a3,104(a5)
    if ( isFinished() ) {
    80003900:	00300713          	li	a4,3
    80003904:	04e68c63          	beq	a3,a4,8000395c <_ZN3TCB8dispatchEv+0x94>
    time_slice_count = 0;
    80003908:	00009497          	auipc	s1,0x9
    8000390c:	5c048493          	addi	s1,s1,1472 # 8000cec8 <_ZN3TCB7runningE>
    80003910:	0004b823          	sd	zero,16(s1)
    running = Scheduler::get();
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	314080e7          	jalr	788(ra) # 80001c28 <_ZN9Scheduler3getEv>
    8000391c:	00050593          	mv	a1,a0
    80003920:	00a4b023          	sd	a0,0(s1)
    if (oldRunning != running) yield(oldRunning, running);
    80003924:	00a90863          	beq	s2,a0,80003934 <_ZN3TCB8dispatchEv+0x6c>
    80003928:	00090513          	mv	a0,s2
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	dc4080e7          	jalr	-572(ra) # 800036f0 <_ZN3TCB5yieldEPS_S0_>
}
    80003934:	01813083          	ld	ra,24(sp)
    80003938:	01013403          	ld	s0,16(sp)
    8000393c:	00813483          	ld	s1,8(sp)
    80003940:	00013903          	ld	s2,0(sp)
    80003944:	02010113          	addi	sp,sp,32
    80003948:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    8000394c:	00090513          	mv	a0,s2
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	328080e7          	jalr	808(ra) # 80001c78 <_ZN9Scheduler3putEP3TCB>
    80003958:	f9dff06f          	j	800038f4 <_ZN3TCB8dispatchEv+0x2c>
        MemoryAllocator::mem_free(TCB::running->stack);
    8000395c:	0407b503          	ld	a0,64(a5)
    80003960:	00000097          	auipc	ra,0x0
    80003964:	924080e7          	jalr	-1756(ra) # 80003284 <_ZN15MemoryAllocator8mem_freeEPv>
    80003968:	fa1ff06f          	j	80003908 <_ZN3TCB8dispatchEv+0x40>

000000008000396c <_ZN3TCB11_threadExitEv>:

int TCB::_threadExit() {

    if (TCB::running == nullptr) return -1; // error
    8000396c:	00009797          	auipc	a5,0x9
    80003970:	55c7b783          	ld	a5,1372(a5) # 8000cec8 <_ZN3TCB7runningE>
    80003974:	02078c63          	beqz	a5,800039ac <_ZN3TCB11_threadExitEv+0x40>
int TCB::_threadExit() {
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00113423          	sd	ra,8(sp)
    80003980:	00813023          	sd	s0,0(sp)
    80003984:	01010413          	addi	s0,sp,16
    void finish() { current_state = state::FINISHED; }
    80003988:	00300713          	li	a4,3
    8000398c:	06e7a423          	sw	a4,104(a5)

    TCB::running -> finish();
    thread_dispatch();
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	a4c080e7          	jalr	-1460(ra) # 800013dc <_Z15thread_dispatchv>
    return 0;
    80003998:	00000513          	li	a0,0
}
    8000399c:	00813083          	ld	ra,8(sp)
    800039a0:	00013403          	ld	s0,0(sp)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret
    if (TCB::running == nullptr) return -1; // error
    800039ac:	fff00513          	li	a0,-1
}
    800039b0:	00008067          	ret

00000000800039b4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800039b4:	fe010113          	addi	sp,sp,-32
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00913423          	sd	s1,8(sp)
    800039c4:	01213023          	sd	s2,0(sp)
    800039c8:	02010413          	addi	s0,sp,32
    800039cc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800039d0:	00000913          	li	s2,0
    800039d4:	00c0006f          	j	800039e0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	a04080e7          	jalr	-1532(ra) # 800013dc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	c5c080e7          	jalr	-932(ra) # 8000163c <_Z4getcv>
    800039e8:	0005059b          	sext.w	a1,a0
    800039ec:	01b00793          	li	a5,27
    800039f0:	02f58a63          	beq	a1,a5,80003a24 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800039f4:	0084b503          	ld	a0,8(s1)
    800039f8:	00003097          	auipc	ra,0x3
    800039fc:	414080e7          	jalr	1044(ra) # 80006e0c <_ZN6Buffer3putEi>
        i++;
    80003a00:	0019071b          	addiw	a4,s2,1
    80003a04:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a08:	0004a683          	lw	a3,0(s1)
    80003a0c:	0026979b          	slliw	a5,a3,0x2
    80003a10:	00d787bb          	addw	a5,a5,a3
    80003a14:	0017979b          	slliw	a5,a5,0x1
    80003a18:	02f767bb          	remw	a5,a4,a5
    80003a1c:	fc0792e3          	bnez	a5,800039e0 <_ZL16producerKeyboardPv+0x2c>
    80003a20:	fb9ff06f          	j	800039d8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003a24:	00100793          	li	a5,1
    80003a28:	00009717          	auipc	a4,0x9
    80003a2c:	4af72c23          	sw	a5,1208(a4) # 8000cee0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003a30:	02100593          	li	a1,33
    80003a34:	0084b503          	ld	a0,8(s1)
    80003a38:	00003097          	auipc	ra,0x3
    80003a3c:	3d4080e7          	jalr	980(ra) # 80006e0c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003a40:	0104b503          	ld	a0,16(s1)
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	b60080e7          	jalr	-1184(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	00013903          	ld	s2,0(sp)
    80003a5c:	02010113          	addi	sp,sp,32
    80003a60:	00008067          	ret

0000000080003a64 <_ZL8producerPv>:

static void producer(void *arg) {
    80003a64:	fe010113          	addi	sp,sp,-32
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00813823          	sd	s0,16(sp)
    80003a70:	00913423          	sd	s1,8(sp)
    80003a74:	01213023          	sd	s2,0(sp)
    80003a78:	02010413          	addi	s0,sp,32
    80003a7c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a80:	00000913          	li	s2,0
    80003a84:	00c0006f          	j	80003a90 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	954080e7          	jalr	-1708(ra) # 800013dc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003a90:	00009797          	auipc	a5,0x9
    80003a94:	4507a783          	lw	a5,1104(a5) # 8000cee0 <_ZL9threadEnd>
    80003a98:	02079e63          	bnez	a5,80003ad4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003a9c:	0004a583          	lw	a1,0(s1)
    80003aa0:	0305859b          	addiw	a1,a1,48
    80003aa4:	0084b503          	ld	a0,8(s1)
    80003aa8:	00003097          	auipc	ra,0x3
    80003aac:	364080e7          	jalr	868(ra) # 80006e0c <_ZN6Buffer3putEi>
        i++;
    80003ab0:	0019071b          	addiw	a4,s2,1
    80003ab4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003ab8:	0004a683          	lw	a3,0(s1)
    80003abc:	0026979b          	slliw	a5,a3,0x2
    80003ac0:	00d787bb          	addw	a5,a5,a3
    80003ac4:	0017979b          	slliw	a5,a5,0x1
    80003ac8:	02f767bb          	remw	a5,a4,a5
    80003acc:	fc0792e3          	bnez	a5,80003a90 <_ZL8producerPv+0x2c>
    80003ad0:	fb9ff06f          	j	80003a88 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003ad4:	0104b503          	ld	a0,16(s1)
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	acc080e7          	jalr	-1332(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00813483          	ld	s1,8(sp)
    80003aec:	00013903          	ld	s2,0(sp)
    80003af0:	02010113          	addi	sp,sp,32
    80003af4:	00008067          	ret

0000000080003af8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003af8:	fd010113          	addi	sp,sp,-48
    80003afc:	02113423          	sd	ra,40(sp)
    80003b00:	02813023          	sd	s0,32(sp)
    80003b04:	00913c23          	sd	s1,24(sp)
    80003b08:	01213823          	sd	s2,16(sp)
    80003b0c:	01313423          	sd	s3,8(sp)
    80003b10:	03010413          	addi	s0,sp,48
    80003b14:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003b18:	00000993          	li	s3,0
    80003b1c:	01c0006f          	j	80003b38 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	8bc080e7          	jalr	-1860(ra) # 800013dc <_Z15thread_dispatchv>
    80003b28:	0500006f          	j	80003b78 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003b2c:	00a00513          	li	a0,10
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	b58080e7          	jalr	-1192(ra) # 80001688 <_Z4putcc>
    while (!threadEnd) {
    80003b38:	00009797          	auipc	a5,0x9
    80003b3c:	3a87a783          	lw	a5,936(a5) # 8000cee0 <_ZL9threadEnd>
    80003b40:	06079063          	bnez	a5,80003ba0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003b44:	00893503          	ld	a0,8(s2)
    80003b48:	00003097          	auipc	ra,0x3
    80003b4c:	354080e7          	jalr	852(ra) # 80006e9c <_ZN6Buffer3getEv>
        i++;
    80003b50:	0019849b          	addiw	s1,s3,1
    80003b54:	0004899b          	sext.w	s3,s1
        putc(key);
    80003b58:	0ff57513          	andi	a0,a0,255
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	b2c080e7          	jalr	-1236(ra) # 80001688 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003b64:	00092703          	lw	a4,0(s2)
    80003b68:	0027179b          	slliw	a5,a4,0x2
    80003b6c:	00e787bb          	addw	a5,a5,a4
    80003b70:	02f4e7bb          	remw	a5,s1,a5
    80003b74:	fa0786e3          	beqz	a5,80003b20 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003b78:	05000793          	li	a5,80
    80003b7c:	02f4e4bb          	remw	s1,s1,a5
    80003b80:	fa049ce3          	bnez	s1,80003b38 <_ZL8consumerPv+0x40>
    80003b84:	fa9ff06f          	j	80003b2c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003b88:	00893503          	ld	a0,8(s2)
    80003b8c:	00003097          	auipc	ra,0x3
    80003b90:	310080e7          	jalr	784(ra) # 80006e9c <_ZN6Buffer3getEv>
        putc(key);
    80003b94:	0ff57513          	andi	a0,a0,255
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	af0080e7          	jalr	-1296(ra) # 80001688 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003ba0:	00893503          	ld	a0,8(s2)
    80003ba4:	00003097          	auipc	ra,0x3
    80003ba8:	384080e7          	jalr	900(ra) # 80006f28 <_ZN6Buffer6getCntEv>
    80003bac:	fca04ee3          	bgtz	a0,80003b88 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003bb0:	01093503          	ld	a0,16(s2)
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	9f0080e7          	jalr	-1552(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    80003bbc:	02813083          	ld	ra,40(sp)
    80003bc0:	02013403          	ld	s0,32(sp)
    80003bc4:	01813483          	ld	s1,24(sp)
    80003bc8:	01013903          	ld	s2,16(sp)
    80003bcc:	00813983          	ld	s3,8(sp)
    80003bd0:	03010113          	addi	sp,sp,48
    80003bd4:	00008067          	ret

0000000080003bd8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003bd8:	f9010113          	addi	sp,sp,-112
    80003bdc:	06113423          	sd	ra,104(sp)
    80003be0:	06813023          	sd	s0,96(sp)
    80003be4:	04913c23          	sd	s1,88(sp)
    80003be8:	05213823          	sd	s2,80(sp)
    80003bec:	05313423          	sd	s3,72(sp)
    80003bf0:	05413023          	sd	s4,64(sp)
    80003bf4:	03513c23          	sd	s5,56(sp)
    80003bf8:	03613823          	sd	s6,48(sp)
    80003bfc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003c00:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c04:	00006517          	auipc	a0,0x6
    80003c08:	52c50513          	addi	a0,a0,1324 # 8000a130 <CONSOLE_STATUS+0x120>
    80003c0c:	00002097          	auipc	ra,0x2
    80003c10:	234080e7          	jalr	564(ra) # 80005e40 <_Z11printStringPKc>
    getString(input, 30);
    80003c14:	01e00593          	li	a1,30
    80003c18:	fa040493          	addi	s1,s0,-96
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	2a8080e7          	jalr	680(ra) # 80005ec8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c28:	00048513          	mv	a0,s1
    80003c2c:	00002097          	auipc	ra,0x2
    80003c30:	374080e7          	jalr	884(ra) # 80005fa0 <_Z11stringToIntPKc>
    80003c34:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003c38:	00006517          	auipc	a0,0x6
    80003c3c:	51850513          	addi	a0,a0,1304 # 8000a150 <CONSOLE_STATUS+0x140>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	200080e7          	jalr	512(ra) # 80005e40 <_Z11printStringPKc>
    getString(input, 30);
    80003c48:	01e00593          	li	a1,30
    80003c4c:	00048513          	mv	a0,s1
    80003c50:	00002097          	auipc	ra,0x2
    80003c54:	278080e7          	jalr	632(ra) # 80005ec8 <_Z9getStringPci>
    n = stringToInt(input);
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	344080e7          	jalr	836(ra) # 80005fa0 <_Z11stringToIntPKc>
    80003c64:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003c68:	00006517          	auipc	a0,0x6
    80003c6c:	50850513          	addi	a0,a0,1288 # 8000a170 <CONSOLE_STATUS+0x160>
    80003c70:	00002097          	auipc	ra,0x2
    80003c74:	1d0080e7          	jalr	464(ra) # 80005e40 <_Z11printStringPKc>
    80003c78:	00000613          	li	a2,0
    80003c7c:	00a00593          	li	a1,10
    80003c80:	00090513          	mv	a0,s2
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	36c080e7          	jalr	876(ra) # 80005ff0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003c8c:	00006517          	auipc	a0,0x6
    80003c90:	4fc50513          	addi	a0,a0,1276 # 8000a188 <CONSOLE_STATUS+0x178>
    80003c94:	00002097          	auipc	ra,0x2
    80003c98:	1ac080e7          	jalr	428(ra) # 80005e40 <_Z11printStringPKc>
    80003c9c:	00000613          	li	a2,0
    80003ca0:	00a00593          	li	a1,10
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00002097          	auipc	ra,0x2
    80003cac:	348080e7          	jalr	840(ra) # 80005ff0 <_Z8printIntiii>
    printString(".\n");
    80003cb0:	00006517          	auipc	a0,0x6
    80003cb4:	4f050513          	addi	a0,a0,1264 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	188080e7          	jalr	392(ra) # 80005e40 <_Z11printStringPKc>
    if(threadNum > n) {
    80003cc0:	0324c463          	blt	s1,s2,80003ce8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003cc4:	03205c63          	blez	s2,80003cfc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003cc8:	03800513          	li	a0,56
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	7e0080e7          	jalr	2016(ra) # 800024ac <_Znwm>
    80003cd4:	00050a13          	mv	s4,a0
    80003cd8:	00048593          	mv	a1,s1
    80003cdc:	00003097          	auipc	ra,0x3
    80003ce0:	094080e7          	jalr	148(ra) # 80006d70 <_ZN6BufferC1Ei>
    80003ce4:	0300006f          	j	80003d14 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ce8:	00006517          	auipc	a0,0x6
    80003cec:	4c050513          	addi	a0,a0,1216 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003cf0:	00002097          	auipc	ra,0x2
    80003cf4:	150080e7          	jalr	336(ra) # 80005e40 <_Z11printStringPKc>
        return;
    80003cf8:	0140006f          	j	80003d0c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cfc:	00006517          	auipc	a0,0x6
    80003d00:	4ec50513          	addi	a0,a0,1260 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003d04:	00002097          	auipc	ra,0x2
    80003d08:	13c080e7          	jalr	316(ra) # 80005e40 <_Z11printStringPKc>
        return;
    80003d0c:	000b0113          	mv	sp,s6
    80003d10:	1500006f          	j	80003e60 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003d14:	00000593          	li	a1,0
    80003d18:	00009517          	auipc	a0,0x9
    80003d1c:	1d050513          	addi	a0,a0,464 # 8000cee8 <_ZL10waitForAll>
    80003d20:	ffffd097          	auipc	ra,0xffffd
    80003d24:	6f8080e7          	jalr	1784(ra) # 80001418 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003d28:	00391793          	slli	a5,s2,0x3
    80003d2c:	00f78793          	addi	a5,a5,15
    80003d30:	ff07f793          	andi	a5,a5,-16
    80003d34:	40f10133          	sub	sp,sp,a5
    80003d38:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003d3c:	0019071b          	addiw	a4,s2,1
    80003d40:	00171793          	slli	a5,a4,0x1
    80003d44:	00e787b3          	add	a5,a5,a4
    80003d48:	00379793          	slli	a5,a5,0x3
    80003d4c:	00f78793          	addi	a5,a5,15
    80003d50:	ff07f793          	andi	a5,a5,-16
    80003d54:	40f10133          	sub	sp,sp,a5
    80003d58:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003d5c:	00191613          	slli	a2,s2,0x1
    80003d60:	012607b3          	add	a5,a2,s2
    80003d64:	00379793          	slli	a5,a5,0x3
    80003d68:	00f987b3          	add	a5,s3,a5
    80003d6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003d70:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003d74:	00009717          	auipc	a4,0x9
    80003d78:	17473703          	ld	a4,372(a4) # 8000cee8 <_ZL10waitForAll>
    80003d7c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003d80:	00078613          	mv	a2,a5
    80003d84:	00000597          	auipc	a1,0x0
    80003d88:	d7458593          	addi	a1,a1,-652 # 80003af8 <_ZL8consumerPv>
    80003d8c:	f9840513          	addi	a0,s0,-104
    80003d90:	ffffd097          	auipc	ra,0xffffd
    80003d94:	56c080e7          	jalr	1388(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d98:	00000493          	li	s1,0
    80003d9c:	0280006f          	j	80003dc4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003da0:	00000597          	auipc	a1,0x0
    80003da4:	c1458593          	addi	a1,a1,-1004 # 800039b4 <_ZL16producerKeyboardPv>
                      data + i);
    80003da8:	00179613          	slli	a2,a5,0x1
    80003dac:	00f60633          	add	a2,a2,a5
    80003db0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003db4:	00c98633          	add	a2,s3,a2
    80003db8:	ffffd097          	auipc	ra,0xffffd
    80003dbc:	544080e7          	jalr	1348(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003dc0:	0014849b          	addiw	s1,s1,1
    80003dc4:	0524d263          	bge	s1,s2,80003e08 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003dc8:	00149793          	slli	a5,s1,0x1
    80003dcc:	009787b3          	add	a5,a5,s1
    80003dd0:	00379793          	slli	a5,a5,0x3
    80003dd4:	00f987b3          	add	a5,s3,a5
    80003dd8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003ddc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003de0:	00009717          	auipc	a4,0x9
    80003de4:	10873703          	ld	a4,264(a4) # 8000cee8 <_ZL10waitForAll>
    80003de8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003dec:	00048793          	mv	a5,s1
    80003df0:	00349513          	slli	a0,s1,0x3
    80003df4:	00aa8533          	add	a0,s5,a0
    80003df8:	fa9054e3          	blez	s1,80003da0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003dfc:	00000597          	auipc	a1,0x0
    80003e00:	c6858593          	addi	a1,a1,-920 # 80003a64 <_ZL8producerPv>
    80003e04:	fa5ff06f          	j	80003da8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003e08:	ffffd097          	auipc	ra,0xffffd
    80003e0c:	5d4080e7          	jalr	1492(ra) # 800013dc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003e10:	00000493          	li	s1,0
    80003e14:	00994e63          	blt	s2,s1,80003e30 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003e18:	00009517          	auipc	a0,0x9
    80003e1c:	0d053503          	ld	a0,208(a0) # 8000cee8 <_ZL10waitForAll>
    80003e20:	ffffd097          	auipc	ra,0xffffd
    80003e24:	6a0080e7          	jalr	1696(ra) # 800014c0 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003e28:	0014849b          	addiw	s1,s1,1
    80003e2c:	fe9ff06f          	j	80003e14 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003e30:	00009517          	auipc	a0,0x9
    80003e34:	0b853503          	ld	a0,184(a0) # 8000cee8 <_ZL10waitForAll>
    80003e38:	ffffd097          	auipc	ra,0xffffd
    80003e3c:	630080e7          	jalr	1584(ra) # 80001468 <_Z9sem_closeP3Sem>
    delete buffer;
    80003e40:	000a0e63          	beqz	s4,80003e5c <_Z22producerConsumer_C_APIv+0x284>
    80003e44:	000a0513          	mv	a0,s4
    80003e48:	00003097          	auipc	ra,0x3
    80003e4c:	168080e7          	jalr	360(ra) # 80006fb0 <_ZN6BufferD1Ev>
    80003e50:	000a0513          	mv	a0,s4
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	6d0080e7          	jalr	1744(ra) # 80002524 <_ZdlPv>
    80003e5c:	000b0113          	mv	sp,s6

}
    80003e60:	f9040113          	addi	sp,s0,-112
    80003e64:	06813083          	ld	ra,104(sp)
    80003e68:	06013403          	ld	s0,96(sp)
    80003e6c:	05813483          	ld	s1,88(sp)
    80003e70:	05013903          	ld	s2,80(sp)
    80003e74:	04813983          	ld	s3,72(sp)
    80003e78:	04013a03          	ld	s4,64(sp)
    80003e7c:	03813a83          	ld	s5,56(sp)
    80003e80:	03013b03          	ld	s6,48(sp)
    80003e84:	07010113          	addi	sp,sp,112
    80003e88:	00008067          	ret
    80003e8c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003e90:	000a0513          	mv	a0,s4
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	690080e7          	jalr	1680(ra) # 80002524 <_ZdlPv>
    80003e9c:	00048513          	mv	a0,s1
    80003ea0:	0000a097          	auipc	ra,0xa
    80003ea4:	158080e7          	jalr	344(ra) # 8000dff8 <_Unwind_Resume>

0000000080003ea8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ea8:	fe010113          	addi	sp,sp,-32
    80003eac:	00113c23          	sd	ra,24(sp)
    80003eb0:	00813823          	sd	s0,16(sp)
    80003eb4:	00913423          	sd	s1,8(sp)
    80003eb8:	01213023          	sd	s2,0(sp)
    80003ebc:	02010413          	addi	s0,sp,32
    80003ec0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003ec4:	00100793          	li	a5,1
    80003ec8:	02a7f863          	bgeu	a5,a0,80003ef8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ecc:	00a00793          	li	a5,10
    80003ed0:	02f577b3          	remu	a5,a0,a5
    80003ed4:	02078e63          	beqz	a5,80003f10 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003ed8:	fff48513          	addi	a0,s1,-1
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	fcc080e7          	jalr	-52(ra) # 80003ea8 <_ZL9fibonaccim>
    80003ee4:	00050913          	mv	s2,a0
    80003ee8:	ffe48513          	addi	a0,s1,-2
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	fbc080e7          	jalr	-68(ra) # 80003ea8 <_ZL9fibonaccim>
    80003ef4:	00a90533          	add	a0,s2,a0
}
    80003ef8:	01813083          	ld	ra,24(sp)
    80003efc:	01013403          	ld	s0,16(sp)
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	00013903          	ld	s2,0(sp)
    80003f08:	02010113          	addi	sp,sp,32
    80003f0c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003f10:	ffffd097          	auipc	ra,0xffffd
    80003f14:	4cc080e7          	jalr	1228(ra) # 800013dc <_Z15thread_dispatchv>
    80003f18:	fc1ff06f          	j	80003ed8 <_ZL9fibonaccim+0x30>

0000000080003f1c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003f1c:	fe010113          	addi	sp,sp,-32
    80003f20:	00113c23          	sd	ra,24(sp)
    80003f24:	00813823          	sd	s0,16(sp)
    80003f28:	00913423          	sd	s1,8(sp)
    80003f2c:	01213023          	sd	s2,0(sp)
    80003f30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f34:	00000913          	li	s2,0
    80003f38:	0380006f          	j	80003f70 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f3c:	ffffd097          	auipc	ra,0xffffd
    80003f40:	4a0080e7          	jalr	1184(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f44:	00148493          	addi	s1,s1,1
    80003f48:	000027b7          	lui	a5,0x2
    80003f4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f50:	0097ee63          	bltu	a5,s1,80003f6c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f54:	00000713          	li	a4,0
    80003f58:	000077b7          	lui	a5,0x7
    80003f5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f60:	fce7eee3          	bltu	a5,a4,80003f3c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003f64:	00170713          	addi	a4,a4,1
    80003f68:	ff1ff06f          	j	80003f58 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f6c:	00190913          	addi	s2,s2,1
    80003f70:	00900793          	li	a5,9
    80003f74:	0527e063          	bltu	a5,s2,80003fb4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f78:	00006517          	auipc	a0,0x6
    80003f7c:	2a050513          	addi	a0,a0,672 # 8000a218 <CONSOLE_STATUS+0x208>
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	ec0080e7          	jalr	-320(ra) # 80005e40 <_Z11printStringPKc>
    80003f88:	00000613          	li	a2,0
    80003f8c:	00a00593          	li	a1,10
    80003f90:	0009051b          	sext.w	a0,s2
    80003f94:	00002097          	auipc	ra,0x2
    80003f98:	05c080e7          	jalr	92(ra) # 80005ff0 <_Z8printIntiii>
    80003f9c:	00006517          	auipc	a0,0x6
    80003fa0:	4dc50513          	addi	a0,a0,1244 # 8000a478 <CONSOLE_STATUS+0x468>
    80003fa4:	00002097          	auipc	ra,0x2
    80003fa8:	e9c080e7          	jalr	-356(ra) # 80005e40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fac:	00000493          	li	s1,0
    80003fb0:	f99ff06f          	j	80003f48 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003fb4:	00006517          	auipc	a0,0x6
    80003fb8:	26c50513          	addi	a0,a0,620 # 8000a220 <CONSOLE_STATUS+0x210>
    80003fbc:	00002097          	auipc	ra,0x2
    80003fc0:	e84080e7          	jalr	-380(ra) # 80005e40 <_Z11printStringPKc>
    finishedA = true;
    80003fc4:	00100793          	li	a5,1
    80003fc8:	00009717          	auipc	a4,0x9
    80003fcc:	f2f70423          	sb	a5,-216(a4) # 8000cef0 <_ZL9finishedA>
}
    80003fd0:	01813083          	ld	ra,24(sp)
    80003fd4:	01013403          	ld	s0,16(sp)
    80003fd8:	00813483          	ld	s1,8(sp)
    80003fdc:	00013903          	ld	s2,0(sp)
    80003fe0:	02010113          	addi	sp,sp,32
    80003fe4:	00008067          	ret

0000000080003fe8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003fe8:	fe010113          	addi	sp,sp,-32
    80003fec:	00113c23          	sd	ra,24(sp)
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	01213023          	sd	s2,0(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004000:	00000913          	li	s2,0
    80004004:	0380006f          	j	8000403c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004008:	ffffd097          	auipc	ra,0xffffd
    8000400c:	3d4080e7          	jalr	980(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004010:	00148493          	addi	s1,s1,1
    80004014:	000027b7          	lui	a5,0x2
    80004018:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000401c:	0097ee63          	bltu	a5,s1,80004038 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004020:	00000713          	li	a4,0
    80004024:	000077b7          	lui	a5,0x7
    80004028:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000402c:	fce7eee3          	bltu	a5,a4,80004008 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004030:	00170713          	addi	a4,a4,1
    80004034:	ff1ff06f          	j	80004024 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004038:	00190913          	addi	s2,s2,1
    8000403c:	00f00793          	li	a5,15
    80004040:	0527e063          	bltu	a5,s2,80004080 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004044:	00006517          	auipc	a0,0x6
    80004048:	1ec50513          	addi	a0,a0,492 # 8000a230 <CONSOLE_STATUS+0x220>
    8000404c:	00002097          	auipc	ra,0x2
    80004050:	df4080e7          	jalr	-524(ra) # 80005e40 <_Z11printStringPKc>
    80004054:	00000613          	li	a2,0
    80004058:	00a00593          	li	a1,10
    8000405c:	0009051b          	sext.w	a0,s2
    80004060:	00002097          	auipc	ra,0x2
    80004064:	f90080e7          	jalr	-112(ra) # 80005ff0 <_Z8printIntiii>
    80004068:	00006517          	auipc	a0,0x6
    8000406c:	41050513          	addi	a0,a0,1040 # 8000a478 <CONSOLE_STATUS+0x468>
    80004070:	00002097          	auipc	ra,0x2
    80004074:	dd0080e7          	jalr	-560(ra) # 80005e40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004078:	00000493          	li	s1,0
    8000407c:	f99ff06f          	j	80004014 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004080:	00006517          	auipc	a0,0x6
    80004084:	1b850513          	addi	a0,a0,440 # 8000a238 <CONSOLE_STATUS+0x228>
    80004088:	00002097          	auipc	ra,0x2
    8000408c:	db8080e7          	jalr	-584(ra) # 80005e40 <_Z11printStringPKc>
    finishedB = true;
    80004090:	00100793          	li	a5,1
    80004094:	00009717          	auipc	a4,0x9
    80004098:	e4f70ea3          	sb	a5,-419(a4) # 8000cef1 <_ZL9finishedB>
    thread_dispatch();
    8000409c:	ffffd097          	auipc	ra,0xffffd
    800040a0:	340080e7          	jalr	832(ra) # 800013dc <_Z15thread_dispatchv>
}
    800040a4:	01813083          	ld	ra,24(sp)
    800040a8:	01013403          	ld	s0,16(sp)
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	00013903          	ld	s2,0(sp)
    800040b4:	02010113          	addi	sp,sp,32
    800040b8:	00008067          	ret

00000000800040bc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	01213023          	sd	s2,0(sp)
    800040d0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800040d4:	00000493          	li	s1,0
    800040d8:	0400006f          	j	80004118 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040dc:	00006517          	auipc	a0,0x6
    800040e0:	16c50513          	addi	a0,a0,364 # 8000a248 <CONSOLE_STATUS+0x238>
    800040e4:	00002097          	auipc	ra,0x2
    800040e8:	d5c080e7          	jalr	-676(ra) # 80005e40 <_Z11printStringPKc>
    800040ec:	00000613          	li	a2,0
    800040f0:	00a00593          	li	a1,10
    800040f4:	00048513          	mv	a0,s1
    800040f8:	00002097          	auipc	ra,0x2
    800040fc:	ef8080e7          	jalr	-264(ra) # 80005ff0 <_Z8printIntiii>
    80004100:	00006517          	auipc	a0,0x6
    80004104:	37850513          	addi	a0,a0,888 # 8000a478 <CONSOLE_STATUS+0x468>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	d38080e7          	jalr	-712(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004110:	0014849b          	addiw	s1,s1,1
    80004114:	0ff4f493          	andi	s1,s1,255
    80004118:	00200793          	li	a5,2
    8000411c:	fc97f0e3          	bgeu	a5,s1,800040dc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004120:	00006517          	auipc	a0,0x6
    80004124:	13050513          	addi	a0,a0,304 # 8000a250 <CONSOLE_STATUS+0x240>
    80004128:	00002097          	auipc	ra,0x2
    8000412c:	d18080e7          	jalr	-744(ra) # 80005e40 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004130:	00700313          	li	t1,7
    thread_dispatch();
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	2a8080e7          	jalr	680(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000413c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004140:	00006517          	auipc	a0,0x6
    80004144:	12050513          	addi	a0,a0,288 # 8000a260 <CONSOLE_STATUS+0x250>
    80004148:	00002097          	auipc	ra,0x2
    8000414c:	cf8080e7          	jalr	-776(ra) # 80005e40 <_Z11printStringPKc>
    80004150:	00000613          	li	a2,0
    80004154:	00a00593          	li	a1,10
    80004158:	0009051b          	sext.w	a0,s2
    8000415c:	00002097          	auipc	ra,0x2
    80004160:	e94080e7          	jalr	-364(ra) # 80005ff0 <_Z8printIntiii>
    80004164:	00006517          	auipc	a0,0x6
    80004168:	31450513          	addi	a0,a0,788 # 8000a478 <CONSOLE_STATUS+0x468>
    8000416c:	00002097          	auipc	ra,0x2
    80004170:	cd4080e7          	jalr	-812(ra) # 80005e40 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004174:	00c00513          	li	a0,12
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	d30080e7          	jalr	-720(ra) # 80003ea8 <_ZL9fibonaccim>
    80004180:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004184:	00006517          	auipc	a0,0x6
    80004188:	0e450513          	addi	a0,a0,228 # 8000a268 <CONSOLE_STATUS+0x258>
    8000418c:	00002097          	auipc	ra,0x2
    80004190:	cb4080e7          	jalr	-844(ra) # 80005e40 <_Z11printStringPKc>
    80004194:	00000613          	li	a2,0
    80004198:	00a00593          	li	a1,10
    8000419c:	0009051b          	sext.w	a0,s2
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	e50080e7          	jalr	-432(ra) # 80005ff0 <_Z8printIntiii>
    800041a8:	00006517          	auipc	a0,0x6
    800041ac:	2d050513          	addi	a0,a0,720 # 8000a478 <CONSOLE_STATUS+0x468>
    800041b0:	00002097          	auipc	ra,0x2
    800041b4:	c90080e7          	jalr	-880(ra) # 80005e40 <_Z11printStringPKc>
    800041b8:	0400006f          	j	800041f8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800041bc:	00006517          	auipc	a0,0x6
    800041c0:	08c50513          	addi	a0,a0,140 # 8000a248 <CONSOLE_STATUS+0x238>
    800041c4:	00002097          	auipc	ra,0x2
    800041c8:	c7c080e7          	jalr	-900(ra) # 80005e40 <_Z11printStringPKc>
    800041cc:	00000613          	li	a2,0
    800041d0:	00a00593          	li	a1,10
    800041d4:	00048513          	mv	a0,s1
    800041d8:	00002097          	auipc	ra,0x2
    800041dc:	e18080e7          	jalr	-488(ra) # 80005ff0 <_Z8printIntiii>
    800041e0:	00006517          	auipc	a0,0x6
    800041e4:	29850513          	addi	a0,a0,664 # 8000a478 <CONSOLE_STATUS+0x468>
    800041e8:	00002097          	auipc	ra,0x2
    800041ec:	c58080e7          	jalr	-936(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800041f0:	0014849b          	addiw	s1,s1,1
    800041f4:	0ff4f493          	andi	s1,s1,255
    800041f8:	00500793          	li	a5,5
    800041fc:	fc97f0e3          	bgeu	a5,s1,800041bc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004200:	00006517          	auipc	a0,0x6
    80004204:	02050513          	addi	a0,a0,32 # 8000a220 <CONSOLE_STATUS+0x210>
    80004208:	00002097          	auipc	ra,0x2
    8000420c:	c38080e7          	jalr	-968(ra) # 80005e40 <_Z11printStringPKc>
    finishedC = true;
    80004210:	00100793          	li	a5,1
    80004214:	00009717          	auipc	a4,0x9
    80004218:	ccf70f23          	sb	a5,-802(a4) # 8000cef2 <_ZL9finishedC>
    thread_dispatch();
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	1c0080e7          	jalr	448(ra) # 800013dc <_Z15thread_dispatchv>
}
    80004224:	01813083          	ld	ra,24(sp)
    80004228:	01013403          	ld	s0,16(sp)
    8000422c:	00813483          	ld	s1,8(sp)
    80004230:	00013903          	ld	s2,0(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00008067          	ret

000000008000423c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000423c:	fe010113          	addi	sp,sp,-32
    80004240:	00113c23          	sd	ra,24(sp)
    80004244:	00813823          	sd	s0,16(sp)
    80004248:	00913423          	sd	s1,8(sp)
    8000424c:	01213023          	sd	s2,0(sp)
    80004250:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004254:	00a00493          	li	s1,10
    80004258:	0400006f          	j	80004298 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000425c:	00006517          	auipc	a0,0x6
    80004260:	01c50513          	addi	a0,a0,28 # 8000a278 <CONSOLE_STATUS+0x268>
    80004264:	00002097          	auipc	ra,0x2
    80004268:	bdc080e7          	jalr	-1060(ra) # 80005e40 <_Z11printStringPKc>
    8000426c:	00000613          	li	a2,0
    80004270:	00a00593          	li	a1,10
    80004274:	00048513          	mv	a0,s1
    80004278:	00002097          	auipc	ra,0x2
    8000427c:	d78080e7          	jalr	-648(ra) # 80005ff0 <_Z8printIntiii>
    80004280:	00006517          	auipc	a0,0x6
    80004284:	1f850513          	addi	a0,a0,504 # 8000a478 <CONSOLE_STATUS+0x468>
    80004288:	00002097          	auipc	ra,0x2
    8000428c:	bb8080e7          	jalr	-1096(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004290:	0014849b          	addiw	s1,s1,1
    80004294:	0ff4f493          	andi	s1,s1,255
    80004298:	00c00793          	li	a5,12
    8000429c:	fc97f0e3          	bgeu	a5,s1,8000425c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800042a0:	00006517          	auipc	a0,0x6
    800042a4:	fe050513          	addi	a0,a0,-32 # 8000a280 <CONSOLE_STATUS+0x270>
    800042a8:	00002097          	auipc	ra,0x2
    800042ac:	b98080e7          	jalr	-1128(ra) # 80005e40 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800042b0:	00500313          	li	t1,5
    thread_dispatch();
    800042b4:	ffffd097          	auipc	ra,0xffffd
    800042b8:	128080e7          	jalr	296(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800042bc:	01000513          	li	a0,16
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	be8080e7          	jalr	-1048(ra) # 80003ea8 <_ZL9fibonaccim>
    800042c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800042cc:	00006517          	auipc	a0,0x6
    800042d0:	fc450513          	addi	a0,a0,-60 # 8000a290 <CONSOLE_STATUS+0x280>
    800042d4:	00002097          	auipc	ra,0x2
    800042d8:	b6c080e7          	jalr	-1172(ra) # 80005e40 <_Z11printStringPKc>
    800042dc:	00000613          	li	a2,0
    800042e0:	00a00593          	li	a1,10
    800042e4:	0009051b          	sext.w	a0,s2
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	d08080e7          	jalr	-760(ra) # 80005ff0 <_Z8printIntiii>
    800042f0:	00006517          	auipc	a0,0x6
    800042f4:	18850513          	addi	a0,a0,392 # 8000a478 <CONSOLE_STATUS+0x468>
    800042f8:	00002097          	auipc	ra,0x2
    800042fc:	b48080e7          	jalr	-1208(ra) # 80005e40 <_Z11printStringPKc>
    80004300:	0400006f          	j	80004340 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004304:	00006517          	auipc	a0,0x6
    80004308:	f7450513          	addi	a0,a0,-140 # 8000a278 <CONSOLE_STATUS+0x268>
    8000430c:	00002097          	auipc	ra,0x2
    80004310:	b34080e7          	jalr	-1228(ra) # 80005e40 <_Z11printStringPKc>
    80004314:	00000613          	li	a2,0
    80004318:	00a00593          	li	a1,10
    8000431c:	00048513          	mv	a0,s1
    80004320:	00002097          	auipc	ra,0x2
    80004324:	cd0080e7          	jalr	-816(ra) # 80005ff0 <_Z8printIntiii>
    80004328:	00006517          	auipc	a0,0x6
    8000432c:	15050513          	addi	a0,a0,336 # 8000a478 <CONSOLE_STATUS+0x468>
    80004330:	00002097          	auipc	ra,0x2
    80004334:	b10080e7          	jalr	-1264(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004338:	0014849b          	addiw	s1,s1,1
    8000433c:	0ff4f493          	andi	s1,s1,255
    80004340:	00f00793          	li	a5,15
    80004344:	fc97f0e3          	bgeu	a5,s1,80004304 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004348:	00006517          	auipc	a0,0x6
    8000434c:	f5850513          	addi	a0,a0,-168 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004350:	00002097          	auipc	ra,0x2
    80004354:	af0080e7          	jalr	-1296(ra) # 80005e40 <_Z11printStringPKc>
    finishedD = true;
    80004358:	00100793          	li	a5,1
    8000435c:	00009717          	auipc	a4,0x9
    80004360:	b8f70ba3          	sb	a5,-1129(a4) # 8000cef3 <_ZL9finishedD>
    thread_dispatch();
    80004364:	ffffd097          	auipc	ra,0xffffd
    80004368:	078080e7          	jalr	120(ra) # 800013dc <_Z15thread_dispatchv>
}
    8000436c:	01813083          	ld	ra,24(sp)
    80004370:	01013403          	ld	s0,16(sp)
    80004374:	00813483          	ld	s1,8(sp)
    80004378:	00013903          	ld	s2,0(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004384:	fc010113          	addi	sp,sp,-64
    80004388:	02113c23          	sd	ra,56(sp)
    8000438c:	02813823          	sd	s0,48(sp)
    80004390:	02913423          	sd	s1,40(sp)
    80004394:	03213023          	sd	s2,32(sp)
    80004398:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000439c:	02000513          	li	a0,32
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	10c080e7          	jalr	268(ra) # 800024ac <_Znwm>
    800043a8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800043ac:	ffffe097          	auipc	ra,0xffffe
    800043b0:	290080e7          	jalr	656(ra) # 8000263c <_ZN6ThreadC1Ev>
    800043b4:	00008797          	auipc	a5,0x8
    800043b8:	7fc78793          	addi	a5,a5,2044 # 8000cbb0 <_ZTV7WorkerA+0x10>
    800043bc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800043c0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800043c4:	00006517          	auipc	a0,0x6
    800043c8:	eec50513          	addi	a0,a0,-276 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800043cc:	00002097          	auipc	ra,0x2
    800043d0:	a74080e7          	jalr	-1420(ra) # 80005e40 <_Z11printStringPKc>
    threads[1] = new WorkerB();
    800043d4:	02000513          	li	a0,32
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	0d4080e7          	jalr	212(ra) # 800024ac <_Znwm>
    800043e0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800043e4:	ffffe097          	auipc	ra,0xffffe
    800043e8:	258080e7          	jalr	600(ra) # 8000263c <_ZN6ThreadC1Ev>
    800043ec:	00008797          	auipc	a5,0x8
    800043f0:	7ec78793          	addi	a5,a5,2028 # 8000cbd8 <_ZTV7WorkerB+0x10>
    800043f4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800043f8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800043fc:	00006517          	auipc	a0,0x6
    80004400:	ecc50513          	addi	a0,a0,-308 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004404:	00002097          	auipc	ra,0x2
    80004408:	a3c080e7          	jalr	-1476(ra) # 80005e40 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000440c:	02000513          	li	a0,32
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	09c080e7          	jalr	156(ra) # 800024ac <_Znwm>
    80004418:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	220080e7          	jalr	544(ra) # 8000263c <_ZN6ThreadC1Ev>
    80004424:	00008797          	auipc	a5,0x8
    80004428:	7dc78793          	addi	a5,a5,2012 # 8000cc00 <_ZTV7WorkerC+0x10>
    8000442c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004430:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004434:	00006517          	auipc	a0,0x6
    80004438:	eac50513          	addi	a0,a0,-340 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000443c:	00002097          	auipc	ra,0x2
    80004440:	a04080e7          	jalr	-1532(ra) # 80005e40 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004444:	02000513          	li	a0,32
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	064080e7          	jalr	100(ra) # 800024ac <_Znwm>
    80004450:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	1e8080e7          	jalr	488(ra) # 8000263c <_ZN6ThreadC1Ev>
    8000445c:	00008797          	auipc	a5,0x8
    80004460:	7cc78793          	addi	a5,a5,1996 # 8000cc28 <_ZTV7WorkerD+0x10>
    80004464:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004468:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000446c:	00006517          	auipc	a0,0x6
    80004470:	e8c50513          	addi	a0,a0,-372 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004474:	00002097          	auipc	ra,0x2
    80004478:	9cc080e7          	jalr	-1588(ra) # 80005e40 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000447c:	00000493          	li	s1,0
    80004480:	00300793          	li	a5,3
    80004484:	0297c263          	blt	a5,s1,800044a8 <_Z20Threads_CPP_API_testv+0x124>
        threads[i]->start();
    80004488:	00349793          	slli	a5,s1,0x3
    8000448c:	fe040713          	addi	a4,s0,-32
    80004490:	00f707b3          	add	a5,a4,a5
    80004494:	fe07b503          	ld	a0,-32(a5)
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	22c080e7          	jalr	556(ra) # 800026c4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800044a0:	0014849b          	addiw	s1,s1,1
    800044a4:	fddff06f          	j	80004480 <_Z20Threads_CPP_API_testv+0xfc>
    }

    printString("threads started");
    800044a8:	00006517          	auipc	a0,0x6
    800044ac:	e6850513          	addi	a0,a0,-408 # 8000a310 <CONSOLE_STATUS+0x300>
    800044b0:	00002097          	auipc	ra,0x2
    800044b4:	990080e7          	jalr	-1648(ra) # 80005e40 <_Z11printStringPKc>
    800044b8:	00c0006f          	j	800044c4 <_Z20Threads_CPP_API_testv+0x140>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	1e0080e7          	jalr	480(ra) # 8000269c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800044c4:	00009797          	auipc	a5,0x9
    800044c8:	a2c7c783          	lbu	a5,-1492(a5) # 8000cef0 <_ZL9finishedA>
    800044cc:	fe0788e3          	beqz	a5,800044bc <_Z20Threads_CPP_API_testv+0x138>
    800044d0:	00009797          	auipc	a5,0x9
    800044d4:	a217c783          	lbu	a5,-1503(a5) # 8000cef1 <_ZL9finishedB>
    800044d8:	fe0782e3          	beqz	a5,800044bc <_Z20Threads_CPP_API_testv+0x138>
    800044dc:	00009797          	auipc	a5,0x9
    800044e0:	a167c783          	lbu	a5,-1514(a5) # 8000cef2 <_ZL9finishedC>
    800044e4:	fc078ce3          	beqz	a5,800044bc <_Z20Threads_CPP_API_testv+0x138>
    800044e8:	00009797          	auipc	a5,0x9
    800044ec:	a0b7c783          	lbu	a5,-1525(a5) # 8000cef3 <_ZL9finishedD>
    800044f0:	fc0786e3          	beqz	a5,800044bc <_Z20Threads_CPP_API_testv+0x138>
    800044f4:	fc040493          	addi	s1,s0,-64
    800044f8:	0080006f          	j	80004500 <_Z20Threads_CPP_API_testv+0x17c>
    }

    for (auto thread: threads) { delete thread; }
    800044fc:	00848493          	addi	s1,s1,8
    80004500:	fe040793          	addi	a5,s0,-32
    80004504:	08f48663          	beq	s1,a5,80004590 <_Z20Threads_CPP_API_testv+0x20c>
    80004508:	0004b503          	ld	a0,0(s1)
    8000450c:	fe0508e3          	beqz	a0,800044fc <_Z20Threads_CPP_API_testv+0x178>
    80004510:	00053783          	ld	a5,0(a0)
    80004514:	0087b783          	ld	a5,8(a5)
    80004518:	000780e7          	jalr	a5
    8000451c:	fe1ff06f          	j	800044fc <_Z20Threads_CPP_API_testv+0x178>
    80004520:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004524:	00048513          	mv	a0,s1
    80004528:	ffffe097          	auipc	ra,0xffffe
    8000452c:	ffc080e7          	jalr	-4(ra) # 80002524 <_ZdlPv>
    80004530:	00090513          	mv	a0,s2
    80004534:	0000a097          	auipc	ra,0xa
    80004538:	ac4080e7          	jalr	-1340(ra) # 8000dff8 <_Unwind_Resume>
    8000453c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004540:	00048513          	mv	a0,s1
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	fe0080e7          	jalr	-32(ra) # 80002524 <_ZdlPv>
    8000454c:	00090513          	mv	a0,s2
    80004550:	0000a097          	auipc	ra,0xa
    80004554:	aa8080e7          	jalr	-1368(ra) # 8000dff8 <_Unwind_Resume>
    80004558:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000455c:	00048513          	mv	a0,s1
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	fc4080e7          	jalr	-60(ra) # 80002524 <_ZdlPv>
    80004568:	00090513          	mv	a0,s2
    8000456c:	0000a097          	auipc	ra,0xa
    80004570:	a8c080e7          	jalr	-1396(ra) # 8000dff8 <_Unwind_Resume>
    80004574:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004578:	00048513          	mv	a0,s1
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	fa8080e7          	jalr	-88(ra) # 80002524 <_ZdlPv>
    80004584:	00090513          	mv	a0,s2
    80004588:	0000a097          	auipc	ra,0xa
    8000458c:	a70080e7          	jalr	-1424(ra) # 8000dff8 <_Unwind_Resume>
}
    80004590:	03813083          	ld	ra,56(sp)
    80004594:	03013403          	ld	s0,48(sp)
    80004598:	02813483          	ld	s1,40(sp)
    8000459c:	02013903          	ld	s2,32(sp)
    800045a0:	04010113          	addi	sp,sp,64
    800045a4:	00008067          	ret

00000000800045a8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800045a8:	ff010113          	addi	sp,sp,-16
    800045ac:	00113423          	sd	ra,8(sp)
    800045b0:	00813023          	sd	s0,0(sp)
    800045b4:	01010413          	addi	s0,sp,16
    800045b8:	00008797          	auipc	a5,0x8
    800045bc:	5f878793          	addi	a5,a5,1528 # 8000cbb0 <_ZTV7WorkerA+0x10>
    800045c0:	00f53023          	sd	a5,0(a0)
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	f88080e7          	jalr	-120(ra) # 8000254c <_ZN6ThreadD1Ev>
    800045cc:	00813083          	ld	ra,8(sp)
    800045d0:	00013403          	ld	s0,0(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret

00000000800045dc <_ZN7WorkerAD0Ev>:
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	02010413          	addi	s0,sp,32
    800045f0:	00050493          	mv	s1,a0
    800045f4:	00008797          	auipc	a5,0x8
    800045f8:	5bc78793          	addi	a5,a5,1468 # 8000cbb0 <_ZTV7WorkerA+0x10>
    800045fc:	00f53023          	sd	a5,0(a0)
    80004600:	ffffe097          	auipc	ra,0xffffe
    80004604:	f4c080e7          	jalr	-180(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004608:	00048513          	mv	a0,s1
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	f18080e7          	jalr	-232(ra) # 80002524 <_ZdlPv>
    80004614:	01813083          	ld	ra,24(sp)
    80004618:	01013403          	ld	s0,16(sp)
    8000461c:	00813483          	ld	s1,8(sp)
    80004620:	02010113          	addi	sp,sp,32
    80004624:	00008067          	ret

0000000080004628 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004628:	ff010113          	addi	sp,sp,-16
    8000462c:	00113423          	sd	ra,8(sp)
    80004630:	00813023          	sd	s0,0(sp)
    80004634:	01010413          	addi	s0,sp,16
    80004638:	00008797          	auipc	a5,0x8
    8000463c:	5a078793          	addi	a5,a5,1440 # 8000cbd8 <_ZTV7WorkerB+0x10>
    80004640:	00f53023          	sd	a5,0(a0)
    80004644:	ffffe097          	auipc	ra,0xffffe
    80004648:	f08080e7          	jalr	-248(ra) # 8000254c <_ZN6ThreadD1Ev>
    8000464c:	00813083          	ld	ra,8(sp)
    80004650:	00013403          	ld	s0,0(sp)
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00008067          	ret

000000008000465c <_ZN7WorkerBD0Ev>:
    8000465c:	fe010113          	addi	sp,sp,-32
    80004660:	00113c23          	sd	ra,24(sp)
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00913423          	sd	s1,8(sp)
    8000466c:	02010413          	addi	s0,sp,32
    80004670:	00050493          	mv	s1,a0
    80004674:	00008797          	auipc	a5,0x8
    80004678:	56478793          	addi	a5,a5,1380 # 8000cbd8 <_ZTV7WorkerB+0x10>
    8000467c:	00f53023          	sd	a5,0(a0)
    80004680:	ffffe097          	auipc	ra,0xffffe
    80004684:	ecc080e7          	jalr	-308(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004688:	00048513          	mv	a0,s1
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	e98080e7          	jalr	-360(ra) # 80002524 <_ZdlPv>
    80004694:	01813083          	ld	ra,24(sp)
    80004698:	01013403          	ld	s0,16(sp)
    8000469c:	00813483          	ld	s1,8(sp)
    800046a0:	02010113          	addi	sp,sp,32
    800046a4:	00008067          	ret

00000000800046a8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800046a8:	ff010113          	addi	sp,sp,-16
    800046ac:	00113423          	sd	ra,8(sp)
    800046b0:	00813023          	sd	s0,0(sp)
    800046b4:	01010413          	addi	s0,sp,16
    800046b8:	00008797          	auipc	a5,0x8
    800046bc:	54878793          	addi	a5,a5,1352 # 8000cc00 <_ZTV7WorkerC+0x10>
    800046c0:	00f53023          	sd	a5,0(a0)
    800046c4:	ffffe097          	auipc	ra,0xffffe
    800046c8:	e88080e7          	jalr	-376(ra) # 8000254c <_ZN6ThreadD1Ev>
    800046cc:	00813083          	ld	ra,8(sp)
    800046d0:	00013403          	ld	s0,0(sp)
    800046d4:	01010113          	addi	sp,sp,16
    800046d8:	00008067          	ret

00000000800046dc <_ZN7WorkerCD0Ev>:
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00113c23          	sd	ra,24(sp)
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	00913423          	sd	s1,8(sp)
    800046ec:	02010413          	addi	s0,sp,32
    800046f0:	00050493          	mv	s1,a0
    800046f4:	00008797          	auipc	a5,0x8
    800046f8:	50c78793          	addi	a5,a5,1292 # 8000cc00 <_ZTV7WorkerC+0x10>
    800046fc:	00f53023          	sd	a5,0(a0)
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	e4c080e7          	jalr	-436(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004708:	00048513          	mv	a0,s1
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	e18080e7          	jalr	-488(ra) # 80002524 <_ZdlPv>
    80004714:	01813083          	ld	ra,24(sp)
    80004718:	01013403          	ld	s0,16(sp)
    8000471c:	00813483          	ld	s1,8(sp)
    80004720:	02010113          	addi	sp,sp,32
    80004724:	00008067          	ret

0000000080004728 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004728:	ff010113          	addi	sp,sp,-16
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	00813023          	sd	s0,0(sp)
    80004734:	01010413          	addi	s0,sp,16
    80004738:	00008797          	auipc	a5,0x8
    8000473c:	4f078793          	addi	a5,a5,1264 # 8000cc28 <_ZTV7WorkerD+0x10>
    80004740:	00f53023          	sd	a5,0(a0)
    80004744:	ffffe097          	auipc	ra,0xffffe
    80004748:	e08080e7          	jalr	-504(ra) # 8000254c <_ZN6ThreadD1Ev>
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret

000000008000475c <_ZN7WorkerDD0Ev>:
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00113c23          	sd	ra,24(sp)
    80004764:	00813823          	sd	s0,16(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	00050493          	mv	s1,a0
    80004774:	00008797          	auipc	a5,0x8
    80004778:	4b478793          	addi	a5,a5,1204 # 8000cc28 <_ZTV7WorkerD+0x10>
    8000477c:	00f53023          	sd	a5,0(a0)
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	dcc080e7          	jalr	-564(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004788:	00048513          	mv	a0,s1
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	d98080e7          	jalr	-616(ra) # 80002524 <_ZdlPv>
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret

00000000800047a8 <_ZN7WorkerA3runEv>:
    void run() override {
    800047a8:	ff010113          	addi	sp,sp,-16
    800047ac:	00113423          	sd	ra,8(sp)
    800047b0:	00813023          	sd	s0,0(sp)
    800047b4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800047b8:	00000593          	li	a1,0
    800047bc:	fffff097          	auipc	ra,0xfffff
    800047c0:	760080e7          	jalr	1888(ra) # 80003f1c <_ZN7WorkerA11workerBodyAEPv>
    }
    800047c4:	00813083          	ld	ra,8(sp)
    800047c8:	00013403          	ld	s0,0(sp)
    800047cc:	01010113          	addi	sp,sp,16
    800047d0:	00008067          	ret

00000000800047d4 <_ZN7WorkerB3runEv>:
    void run() override {
    800047d4:	ff010113          	addi	sp,sp,-16
    800047d8:	00113423          	sd	ra,8(sp)
    800047dc:	00813023          	sd	s0,0(sp)
    800047e0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800047e4:	00000593          	li	a1,0
    800047e8:	00000097          	auipc	ra,0x0
    800047ec:	800080e7          	jalr	-2048(ra) # 80003fe8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800047f0:	00813083          	ld	ra,8(sp)
    800047f4:	00013403          	ld	s0,0(sp)
    800047f8:	01010113          	addi	sp,sp,16
    800047fc:	00008067          	ret

0000000080004800 <_ZN7WorkerC3runEv>:
    void run() override {
    80004800:	ff010113          	addi	sp,sp,-16
    80004804:	00113423          	sd	ra,8(sp)
    80004808:	00813023          	sd	s0,0(sp)
    8000480c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004810:	00000593          	li	a1,0
    80004814:	00000097          	auipc	ra,0x0
    80004818:	8a8080e7          	jalr	-1880(ra) # 800040bc <_ZN7WorkerC11workerBodyCEPv>
    }
    8000481c:	00813083          	ld	ra,8(sp)
    80004820:	00013403          	ld	s0,0(sp)
    80004824:	01010113          	addi	sp,sp,16
    80004828:	00008067          	ret

000000008000482c <_ZN7WorkerD3runEv>:
    void run() override {
    8000482c:	ff010113          	addi	sp,sp,-16
    80004830:	00113423          	sd	ra,8(sp)
    80004834:	00813023          	sd	s0,0(sp)
    80004838:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000483c:	00000593          	li	a1,0
    80004840:	00000097          	auipc	ra,0x0
    80004844:	9fc080e7          	jalr	-1540(ra) # 8000423c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004848:	00813083          	ld	ra,8(sp)
    8000484c:	00013403          	ld	s0,0(sp)
    80004850:	01010113          	addi	sp,sp,16
    80004854:	00008067          	ret

0000000080004858 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004858:	f8010113          	addi	sp,sp,-128
    8000485c:	06113c23          	sd	ra,120(sp)
    80004860:	06813823          	sd	s0,112(sp)
    80004864:	06913423          	sd	s1,104(sp)
    80004868:	07213023          	sd	s2,96(sp)
    8000486c:	05313c23          	sd	s3,88(sp)
    80004870:	05413823          	sd	s4,80(sp)
    80004874:	05513423          	sd	s5,72(sp)
    80004878:	05613023          	sd	s6,64(sp)
    8000487c:	03713c23          	sd	s7,56(sp)
    80004880:	03813823          	sd	s8,48(sp)
    80004884:	03913423          	sd	s9,40(sp)
    80004888:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000488c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004890:	00006517          	auipc	a0,0x6
    80004894:	8a050513          	addi	a0,a0,-1888 # 8000a130 <CONSOLE_STATUS+0x120>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	5a8080e7          	jalr	1448(ra) # 80005e40 <_Z11printStringPKc>
    getString(input, 30);
    800048a0:	01e00593          	li	a1,30
    800048a4:	f8040493          	addi	s1,s0,-128
    800048a8:	00048513          	mv	a0,s1
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	61c080e7          	jalr	1564(ra) # 80005ec8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800048b4:	00048513          	mv	a0,s1
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	6e8080e7          	jalr	1768(ra) # 80005fa0 <_Z11stringToIntPKc>
    800048c0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800048c4:	00006517          	auipc	a0,0x6
    800048c8:	88c50513          	addi	a0,a0,-1908 # 8000a150 <CONSOLE_STATUS+0x140>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	574080e7          	jalr	1396(ra) # 80005e40 <_Z11printStringPKc>
    getString(input, 30);
    800048d4:	01e00593          	li	a1,30
    800048d8:	00048513          	mv	a0,s1
    800048dc:	00001097          	auipc	ra,0x1
    800048e0:	5ec080e7          	jalr	1516(ra) # 80005ec8 <_Z9getStringPci>
    n = stringToInt(input);
    800048e4:	00048513          	mv	a0,s1
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	6b8080e7          	jalr	1720(ra) # 80005fa0 <_Z11stringToIntPKc>
    800048f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800048f4:	00006517          	auipc	a0,0x6
    800048f8:	87c50513          	addi	a0,a0,-1924 # 8000a170 <CONSOLE_STATUS+0x160>
    800048fc:	00001097          	auipc	ra,0x1
    80004900:	544080e7          	jalr	1348(ra) # 80005e40 <_Z11printStringPKc>
    printInt(threadNum);
    80004904:	00000613          	li	a2,0
    80004908:	00a00593          	li	a1,10
    8000490c:	00098513          	mv	a0,s3
    80004910:	00001097          	auipc	ra,0x1
    80004914:	6e0080e7          	jalr	1760(ra) # 80005ff0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004918:	00006517          	auipc	a0,0x6
    8000491c:	87050513          	addi	a0,a0,-1936 # 8000a188 <CONSOLE_STATUS+0x178>
    80004920:	00001097          	auipc	ra,0x1
    80004924:	520080e7          	jalr	1312(ra) # 80005e40 <_Z11printStringPKc>
    printInt(n);
    80004928:	00000613          	li	a2,0
    8000492c:	00a00593          	li	a1,10
    80004930:	00048513          	mv	a0,s1
    80004934:	00001097          	auipc	ra,0x1
    80004938:	6bc080e7          	jalr	1724(ra) # 80005ff0 <_Z8printIntiii>
    printString(".\n");
    8000493c:	00006517          	auipc	a0,0x6
    80004940:	86450513          	addi	a0,a0,-1948 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004944:	00001097          	auipc	ra,0x1
    80004948:	4fc080e7          	jalr	1276(ra) # 80005e40 <_Z11printStringPKc>
    if (threadNum > n) {
    8000494c:	0334c463          	blt	s1,s3,80004974 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004950:	03305c63          	blez	s3,80004988 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004954:	03800513          	li	a0,56
    80004958:	ffffe097          	auipc	ra,0xffffe
    8000495c:	b54080e7          	jalr	-1196(ra) # 800024ac <_Znwm>
    80004960:	00050a93          	mv	s5,a0
    80004964:	00048593          	mv	a1,s1
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	7a8080e7          	jalr	1960(ra) # 80006110 <_ZN9BufferCPPC1Ei>
    80004970:	0300006f          	j	800049a0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004974:	00006517          	auipc	a0,0x6
    80004978:	83450513          	addi	a0,a0,-1996 # 8000a1a8 <CONSOLE_STATUS+0x198>
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	4c4080e7          	jalr	1220(ra) # 80005e40 <_Z11printStringPKc>
        return;
    80004984:	0140006f          	j	80004998 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004988:	00006517          	auipc	a0,0x6
    8000498c:	86050513          	addi	a0,a0,-1952 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004990:	00001097          	auipc	ra,0x1
    80004994:	4b0080e7          	jalr	1200(ra) # 80005e40 <_Z11printStringPKc>
        return;
    80004998:	000c0113          	mv	sp,s8
    8000499c:	2140006f          	j	80004bb0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800049a0:	01000513          	li	a0,16
    800049a4:	ffffe097          	auipc	ra,0xffffe
    800049a8:	b08080e7          	jalr	-1272(ra) # 800024ac <_Znwm>
    800049ac:	00050913          	mv	s2,a0
    800049b0:	00000593          	li	a1,0
    800049b4:	ffffe097          	auipc	ra,0xffffe
    800049b8:	d44080e7          	jalr	-700(ra) # 800026f8 <_ZN9SemaphoreC1Ej>
    800049bc:	00008797          	auipc	a5,0x8
    800049c0:	5527b223          	sd	s2,1348(a5) # 8000cf00 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800049c4:	00399793          	slli	a5,s3,0x3
    800049c8:	00f78793          	addi	a5,a5,15
    800049cc:	ff07f793          	andi	a5,a5,-16
    800049d0:	40f10133          	sub	sp,sp,a5
    800049d4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800049d8:	0019871b          	addiw	a4,s3,1
    800049dc:	00171793          	slli	a5,a4,0x1
    800049e0:	00e787b3          	add	a5,a5,a4
    800049e4:	00379793          	slli	a5,a5,0x3
    800049e8:	00f78793          	addi	a5,a5,15
    800049ec:	ff07f793          	andi	a5,a5,-16
    800049f0:	40f10133          	sub	sp,sp,a5
    800049f4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800049f8:	00199493          	slli	s1,s3,0x1
    800049fc:	013484b3          	add	s1,s1,s3
    80004a00:	00349493          	slli	s1,s1,0x3
    80004a04:	009b04b3          	add	s1,s6,s1
    80004a08:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004a0c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004a10:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004a14:	02800513          	li	a0,40
    80004a18:	ffffe097          	auipc	ra,0xffffe
    80004a1c:	a94080e7          	jalr	-1388(ra) # 800024ac <_Znwm>
    80004a20:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004a24:	ffffe097          	auipc	ra,0xffffe
    80004a28:	c18080e7          	jalr	-1000(ra) # 8000263c <_ZN6ThreadC1Ev>
    80004a2c:	00008797          	auipc	a5,0x8
    80004a30:	27478793          	addi	a5,a5,628 # 8000cca0 <_ZTV8Consumer+0x10>
    80004a34:	00fbb023          	sd	a5,0(s7)
    80004a38:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004a3c:	000b8513          	mv	a0,s7
    80004a40:	ffffe097          	auipc	ra,0xffffe
    80004a44:	c84080e7          	jalr	-892(ra) # 800026c4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004a48:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004a4c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004a50:	00008797          	auipc	a5,0x8
    80004a54:	4b07b783          	ld	a5,1200(a5) # 8000cf00 <_ZL10waitForAll>
    80004a58:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a5c:	02800513          	li	a0,40
    80004a60:	ffffe097          	auipc	ra,0xffffe
    80004a64:	a4c080e7          	jalr	-1460(ra) # 800024ac <_Znwm>
    80004a68:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004a6c:	ffffe097          	auipc	ra,0xffffe
    80004a70:	bd0080e7          	jalr	-1072(ra) # 8000263c <_ZN6ThreadC1Ev>
    80004a74:	00008797          	auipc	a5,0x8
    80004a78:	1dc78793          	addi	a5,a5,476 # 8000cc50 <_ZTV16ProducerKeyborad+0x10>
    80004a7c:	00f4b023          	sd	a5,0(s1)
    80004a80:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a84:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004a88:	00048513          	mv	a0,s1
    80004a8c:	ffffe097          	auipc	ra,0xffffe
    80004a90:	c38080e7          	jalr	-968(ra) # 800026c4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a94:	00100913          	li	s2,1
    80004a98:	0300006f          	j	80004ac8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004a9c:	00008797          	auipc	a5,0x8
    80004aa0:	1dc78793          	addi	a5,a5,476 # 8000cc78 <_ZTV8Producer+0x10>
    80004aa4:	00fcb023          	sd	a5,0(s9)
    80004aa8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004aac:	00391793          	slli	a5,s2,0x3
    80004ab0:	00fa07b3          	add	a5,s4,a5
    80004ab4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004ab8:	000c8513          	mv	a0,s9
    80004abc:	ffffe097          	auipc	ra,0xffffe
    80004ac0:	c08080e7          	jalr	-1016(ra) # 800026c4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004ac4:	0019091b          	addiw	s2,s2,1
    80004ac8:	05395263          	bge	s2,s3,80004b0c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004acc:	00191493          	slli	s1,s2,0x1
    80004ad0:	012484b3          	add	s1,s1,s2
    80004ad4:	00349493          	slli	s1,s1,0x3
    80004ad8:	009b04b3          	add	s1,s6,s1
    80004adc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004ae0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004ae4:	00008797          	auipc	a5,0x8
    80004ae8:	41c7b783          	ld	a5,1052(a5) # 8000cf00 <_ZL10waitForAll>
    80004aec:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004af0:	02800513          	li	a0,40
    80004af4:	ffffe097          	auipc	ra,0xffffe
    80004af8:	9b8080e7          	jalr	-1608(ra) # 800024ac <_Znwm>
    80004afc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004b00:	ffffe097          	auipc	ra,0xffffe
    80004b04:	b3c080e7          	jalr	-1220(ra) # 8000263c <_ZN6ThreadC1Ev>
    80004b08:	f95ff06f          	j	80004a9c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004b0c:	ffffe097          	auipc	ra,0xffffe
    80004b10:	b90080e7          	jalr	-1136(ra) # 8000269c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b14:	00000493          	li	s1,0
    80004b18:	0099ce63          	blt	s3,s1,80004b34 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004b1c:	00008517          	auipc	a0,0x8
    80004b20:	3e453503          	ld	a0,996(a0) # 8000cf00 <_ZL10waitForAll>
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	c10080e7          	jalr	-1008(ra) # 80002734 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b2c:	0014849b          	addiw	s1,s1,1
    80004b30:	fe9ff06f          	j	80004b18 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004b34:	00008517          	auipc	a0,0x8
    80004b38:	3cc53503          	ld	a0,972(a0) # 8000cf00 <_ZL10waitForAll>
    80004b3c:	00050863          	beqz	a0,80004b4c <_Z20testConsumerProducerv+0x2f4>
    80004b40:	00053783          	ld	a5,0(a0)
    80004b44:	0087b783          	ld	a5,8(a5)
    80004b48:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004b4c:	00000493          	li	s1,0
    80004b50:	0080006f          	j	80004b58 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004b54:	0014849b          	addiw	s1,s1,1
    80004b58:	0334d263          	bge	s1,s3,80004b7c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004b5c:	00349793          	slli	a5,s1,0x3
    80004b60:	00fa07b3          	add	a5,s4,a5
    80004b64:	0007b503          	ld	a0,0(a5)
    80004b68:	fe0506e3          	beqz	a0,80004b54 <_Z20testConsumerProducerv+0x2fc>
    80004b6c:	00053783          	ld	a5,0(a0)
    80004b70:	0087b783          	ld	a5,8(a5)
    80004b74:	000780e7          	jalr	a5
    80004b78:	fddff06f          	j	80004b54 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004b7c:	000b8a63          	beqz	s7,80004b90 <_Z20testConsumerProducerv+0x338>
    80004b80:	000bb783          	ld	a5,0(s7)
    80004b84:	0087b783          	ld	a5,8(a5)
    80004b88:	000b8513          	mv	a0,s7
    80004b8c:	000780e7          	jalr	a5
    delete buffer;
    80004b90:	000a8e63          	beqz	s5,80004bac <_Z20testConsumerProducerv+0x354>
    80004b94:	000a8513          	mv	a0,s5
    80004b98:	00002097          	auipc	ra,0x2
    80004b9c:	870080e7          	jalr	-1936(ra) # 80006408 <_ZN9BufferCPPD1Ev>
    80004ba0:	000a8513          	mv	a0,s5
    80004ba4:	ffffe097          	auipc	ra,0xffffe
    80004ba8:	980080e7          	jalr	-1664(ra) # 80002524 <_ZdlPv>
    80004bac:	000c0113          	mv	sp,s8
}
    80004bb0:	f8040113          	addi	sp,s0,-128
    80004bb4:	07813083          	ld	ra,120(sp)
    80004bb8:	07013403          	ld	s0,112(sp)
    80004bbc:	06813483          	ld	s1,104(sp)
    80004bc0:	06013903          	ld	s2,96(sp)
    80004bc4:	05813983          	ld	s3,88(sp)
    80004bc8:	05013a03          	ld	s4,80(sp)
    80004bcc:	04813a83          	ld	s5,72(sp)
    80004bd0:	04013b03          	ld	s6,64(sp)
    80004bd4:	03813b83          	ld	s7,56(sp)
    80004bd8:	03013c03          	ld	s8,48(sp)
    80004bdc:	02813c83          	ld	s9,40(sp)
    80004be0:	08010113          	addi	sp,sp,128
    80004be4:	00008067          	ret
    80004be8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004bec:	000a8513          	mv	a0,s5
    80004bf0:	ffffe097          	auipc	ra,0xffffe
    80004bf4:	934080e7          	jalr	-1740(ra) # 80002524 <_ZdlPv>
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	00009097          	auipc	ra,0x9
    80004c00:	3fc080e7          	jalr	1020(ra) # 8000dff8 <_Unwind_Resume>
    80004c04:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004c08:	00090513          	mv	a0,s2
    80004c0c:	ffffe097          	auipc	ra,0xffffe
    80004c10:	918080e7          	jalr	-1768(ra) # 80002524 <_ZdlPv>
    80004c14:	00048513          	mv	a0,s1
    80004c18:	00009097          	auipc	ra,0x9
    80004c1c:	3e0080e7          	jalr	992(ra) # 8000dff8 <_Unwind_Resume>
    80004c20:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004c24:	000b8513          	mv	a0,s7
    80004c28:	ffffe097          	auipc	ra,0xffffe
    80004c2c:	8fc080e7          	jalr	-1796(ra) # 80002524 <_ZdlPv>
    80004c30:	00048513          	mv	a0,s1
    80004c34:	00009097          	auipc	ra,0x9
    80004c38:	3c4080e7          	jalr	964(ra) # 8000dff8 <_Unwind_Resume>
    80004c3c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004c40:	00048513          	mv	a0,s1
    80004c44:	ffffe097          	auipc	ra,0xffffe
    80004c48:	8e0080e7          	jalr	-1824(ra) # 80002524 <_ZdlPv>
    80004c4c:	00090513          	mv	a0,s2
    80004c50:	00009097          	auipc	ra,0x9
    80004c54:	3a8080e7          	jalr	936(ra) # 8000dff8 <_Unwind_Resume>
    80004c58:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004c5c:	000c8513          	mv	a0,s9
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	8c4080e7          	jalr	-1852(ra) # 80002524 <_ZdlPv>
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	00009097          	auipc	ra,0x9
    80004c70:	38c080e7          	jalr	908(ra) # 8000dff8 <_Unwind_Resume>

0000000080004c74 <_ZN8Consumer3runEv>:
    void run() override {
    80004c74:	fd010113          	addi	sp,sp,-48
    80004c78:	02113423          	sd	ra,40(sp)
    80004c7c:	02813023          	sd	s0,32(sp)
    80004c80:	00913c23          	sd	s1,24(sp)
    80004c84:	01213823          	sd	s2,16(sp)
    80004c88:	01313423          	sd	s3,8(sp)
    80004c8c:	03010413          	addi	s0,sp,48
    80004c90:	00050913          	mv	s2,a0
        int i = 0;
    80004c94:	00000993          	li	s3,0
    80004c98:	0100006f          	j	80004ca8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004c9c:	00a00513          	li	a0,10
    80004ca0:	ffffe097          	auipc	ra,0xffffe
    80004ca4:	ba8080e7          	jalr	-1112(ra) # 80002848 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004ca8:	00008797          	auipc	a5,0x8
    80004cac:	2507a783          	lw	a5,592(a5) # 8000cef8 <_ZL9threadEnd>
    80004cb0:	04079a63          	bnez	a5,80004d04 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004cb4:	02093783          	ld	a5,32(s2)
    80004cb8:	0087b503          	ld	a0,8(a5)
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	638080e7          	jalr	1592(ra) # 800062f4 <_ZN9BufferCPP3getEv>
            i++;
    80004cc4:	0019849b          	addiw	s1,s3,1
    80004cc8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004ccc:	0ff57513          	andi	a0,a0,255
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	b78080e7          	jalr	-1160(ra) # 80002848 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004cd8:	05000793          	li	a5,80
    80004cdc:	02f4e4bb          	remw	s1,s1,a5
    80004ce0:	fc0494e3          	bnez	s1,80004ca8 <_ZN8Consumer3runEv+0x34>
    80004ce4:	fb9ff06f          	j	80004c9c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004ce8:	02093783          	ld	a5,32(s2)
    80004cec:	0087b503          	ld	a0,8(a5)
    80004cf0:	00001097          	auipc	ra,0x1
    80004cf4:	604080e7          	jalr	1540(ra) # 800062f4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004cf8:	0ff57513          	andi	a0,a0,255
    80004cfc:	ffffe097          	auipc	ra,0xffffe
    80004d00:	b4c080e7          	jalr	-1204(ra) # 80002848 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004d04:	02093783          	ld	a5,32(s2)
    80004d08:	0087b503          	ld	a0,8(a5)
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	674080e7          	jalr	1652(ra) # 80006380 <_ZN9BufferCPP6getCntEv>
    80004d14:	fca04ae3          	bgtz	a0,80004ce8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004d18:	02093783          	ld	a5,32(s2)
    80004d1c:	0107b503          	ld	a0,16(a5)
    80004d20:	ffffe097          	auipc	ra,0xffffe
    80004d24:	a4c080e7          	jalr	-1460(ra) # 8000276c <_ZN9Semaphore6signalEv>
    }
    80004d28:	02813083          	ld	ra,40(sp)
    80004d2c:	02013403          	ld	s0,32(sp)
    80004d30:	01813483          	ld	s1,24(sp)
    80004d34:	01013903          	ld	s2,16(sp)
    80004d38:	00813983          	ld	s3,8(sp)
    80004d3c:	03010113          	addi	sp,sp,48
    80004d40:	00008067          	ret

0000000080004d44 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004d44:	ff010113          	addi	sp,sp,-16
    80004d48:	00113423          	sd	ra,8(sp)
    80004d4c:	00813023          	sd	s0,0(sp)
    80004d50:	01010413          	addi	s0,sp,16
    80004d54:	00008797          	auipc	a5,0x8
    80004d58:	f4c78793          	addi	a5,a5,-180 # 8000cca0 <_ZTV8Consumer+0x10>
    80004d5c:	00f53023          	sd	a5,0(a0)
    80004d60:	ffffd097          	auipc	ra,0xffffd
    80004d64:	7ec080e7          	jalr	2028(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004d68:	00813083          	ld	ra,8(sp)
    80004d6c:	00013403          	ld	s0,0(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret

0000000080004d78 <_ZN8ConsumerD0Ev>:
    80004d78:	fe010113          	addi	sp,sp,-32
    80004d7c:	00113c23          	sd	ra,24(sp)
    80004d80:	00813823          	sd	s0,16(sp)
    80004d84:	00913423          	sd	s1,8(sp)
    80004d88:	02010413          	addi	s0,sp,32
    80004d8c:	00050493          	mv	s1,a0
    80004d90:	00008797          	auipc	a5,0x8
    80004d94:	f1078793          	addi	a5,a5,-240 # 8000cca0 <_ZTV8Consumer+0x10>
    80004d98:	00f53023          	sd	a5,0(a0)
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	7b0080e7          	jalr	1968(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004da4:	00048513          	mv	a0,s1
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	77c080e7          	jalr	1916(ra) # 80002524 <_ZdlPv>
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret

0000000080004dc4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004dc4:	ff010113          	addi	sp,sp,-16
    80004dc8:	00113423          	sd	ra,8(sp)
    80004dcc:	00813023          	sd	s0,0(sp)
    80004dd0:	01010413          	addi	s0,sp,16
    80004dd4:	00008797          	auipc	a5,0x8
    80004dd8:	e7c78793          	addi	a5,a5,-388 # 8000cc50 <_ZTV16ProducerKeyborad+0x10>
    80004ddc:	00f53023          	sd	a5,0(a0)
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	76c080e7          	jalr	1900(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004de8:	00813083          	ld	ra,8(sp)
    80004dec:	00013403          	ld	s0,0(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret

0000000080004df8 <_ZN16ProducerKeyboradD0Ev>:
    80004df8:	fe010113          	addi	sp,sp,-32
    80004dfc:	00113c23          	sd	ra,24(sp)
    80004e00:	00813823          	sd	s0,16(sp)
    80004e04:	00913423          	sd	s1,8(sp)
    80004e08:	02010413          	addi	s0,sp,32
    80004e0c:	00050493          	mv	s1,a0
    80004e10:	00008797          	auipc	a5,0x8
    80004e14:	e4078793          	addi	a5,a5,-448 # 8000cc50 <_ZTV16ProducerKeyborad+0x10>
    80004e18:	00f53023          	sd	a5,0(a0)
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	730080e7          	jalr	1840(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004e24:	00048513          	mv	a0,s1
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	6fc080e7          	jalr	1788(ra) # 80002524 <_ZdlPv>
    80004e30:	01813083          	ld	ra,24(sp)
    80004e34:	01013403          	ld	s0,16(sp)
    80004e38:	00813483          	ld	s1,8(sp)
    80004e3c:	02010113          	addi	sp,sp,32
    80004e40:	00008067          	ret

0000000080004e44 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004e44:	ff010113          	addi	sp,sp,-16
    80004e48:	00113423          	sd	ra,8(sp)
    80004e4c:	00813023          	sd	s0,0(sp)
    80004e50:	01010413          	addi	s0,sp,16
    80004e54:	00008797          	auipc	a5,0x8
    80004e58:	e2478793          	addi	a5,a5,-476 # 8000cc78 <_ZTV8Producer+0x10>
    80004e5c:	00f53023          	sd	a5,0(a0)
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	6ec080e7          	jalr	1772(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004e68:	00813083          	ld	ra,8(sp)
    80004e6c:	00013403          	ld	s0,0(sp)
    80004e70:	01010113          	addi	sp,sp,16
    80004e74:	00008067          	ret

0000000080004e78 <_ZN8ProducerD0Ev>:
    80004e78:	fe010113          	addi	sp,sp,-32
    80004e7c:	00113c23          	sd	ra,24(sp)
    80004e80:	00813823          	sd	s0,16(sp)
    80004e84:	00913423          	sd	s1,8(sp)
    80004e88:	02010413          	addi	s0,sp,32
    80004e8c:	00050493          	mv	s1,a0
    80004e90:	00008797          	auipc	a5,0x8
    80004e94:	de878793          	addi	a5,a5,-536 # 8000cc78 <_ZTV8Producer+0x10>
    80004e98:	00f53023          	sd	a5,0(a0)
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	6b0080e7          	jalr	1712(ra) # 8000254c <_ZN6ThreadD1Ev>
    80004ea4:	00048513          	mv	a0,s1
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	67c080e7          	jalr	1660(ra) # 80002524 <_ZdlPv>
    80004eb0:	01813083          	ld	ra,24(sp)
    80004eb4:	01013403          	ld	s0,16(sp)
    80004eb8:	00813483          	ld	s1,8(sp)
    80004ebc:	02010113          	addi	sp,sp,32
    80004ec0:	00008067          	ret

0000000080004ec4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004ec4:	fe010113          	addi	sp,sp,-32
    80004ec8:	00113c23          	sd	ra,24(sp)
    80004ecc:	00813823          	sd	s0,16(sp)
    80004ed0:	00913423          	sd	s1,8(sp)
    80004ed4:	02010413          	addi	s0,sp,32
    80004ed8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	760080e7          	jalr	1888(ra) # 8000163c <_Z4getcv>
    80004ee4:	0005059b          	sext.w	a1,a0
    80004ee8:	01b00793          	li	a5,27
    80004eec:	00f58c63          	beq	a1,a5,80004f04 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004ef0:	0204b783          	ld	a5,32(s1)
    80004ef4:	0087b503          	ld	a0,8(a5)
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	36c080e7          	jalr	876(ra) # 80006264 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004f00:	fddff06f          	j	80004edc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004f04:	00100793          	li	a5,1
    80004f08:	00008717          	auipc	a4,0x8
    80004f0c:	fef72823          	sw	a5,-16(a4) # 8000cef8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004f10:	0204b783          	ld	a5,32(s1)
    80004f14:	02100593          	li	a1,33
    80004f18:	0087b503          	ld	a0,8(a5)
    80004f1c:	00001097          	auipc	ra,0x1
    80004f20:	348080e7          	jalr	840(ra) # 80006264 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004f24:	0204b783          	ld	a5,32(s1)
    80004f28:	0107b503          	ld	a0,16(a5)
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	840080e7          	jalr	-1984(ra) # 8000276c <_ZN9Semaphore6signalEv>
    }
    80004f34:	01813083          	ld	ra,24(sp)
    80004f38:	01013403          	ld	s0,16(sp)
    80004f3c:	00813483          	ld	s1,8(sp)
    80004f40:	02010113          	addi	sp,sp,32
    80004f44:	00008067          	ret

0000000080004f48 <_ZN8Producer3runEv>:
    void run() override {
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	01213023          	sd	s2,0(sp)
    80004f5c:	02010413          	addi	s0,sp,32
    80004f60:	00050493          	mv	s1,a0
        int i = 0;
    80004f64:	00000913          	li	s2,0
        while (!threadEnd) {
    80004f68:	00008797          	auipc	a5,0x8
    80004f6c:	f907a783          	lw	a5,-112(a5) # 8000cef8 <_ZL9threadEnd>
    80004f70:	04079263          	bnez	a5,80004fb4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004f74:	0204b783          	ld	a5,32(s1)
    80004f78:	0007a583          	lw	a1,0(a5)
    80004f7c:	0305859b          	addiw	a1,a1,48
    80004f80:	0087b503          	ld	a0,8(a5)
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	2e0080e7          	jalr	736(ra) # 80006264 <_ZN9BufferCPP3putEi>
            i++;
    80004f8c:	0019071b          	addiw	a4,s2,1
    80004f90:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004f94:	0204b783          	ld	a5,32(s1)
    80004f98:	0007a783          	lw	a5,0(a5)
    80004f9c:	00e787bb          	addw	a5,a5,a4
    80004fa0:	00500513          	li	a0,5
    80004fa4:	02a7e53b          	remw	a0,a5,a0
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	6cc080e7          	jalr	1740(ra) # 80002674 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004fb0:	fb9ff06f          	j	80004f68 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004fb4:	0204b783          	ld	a5,32(s1)
    80004fb8:	0107b503          	ld	a0,16(a5)
    80004fbc:	ffffd097          	auipc	ra,0xffffd
    80004fc0:	7b0080e7          	jalr	1968(ra) # 8000276c <_ZN9Semaphore6signalEv>
    }
    80004fc4:	01813083          	ld	ra,24(sp)
    80004fc8:	01013403          	ld	s0,16(sp)
    80004fcc:	00813483          	ld	s1,8(sp)
    80004fd0:	00013903          	ld	s2,0(sp)
    80004fd4:	02010113          	addi	sp,sp,32
    80004fd8:	00008067          	ret

0000000080004fdc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00113c23          	sd	ra,24(sp)
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	01213023          	sd	s2,0(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    80004ff4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ff8:	00100793          	li	a5,1
    80004ffc:	02a7f863          	bgeu	a5,a0,8000502c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005000:	00a00793          	li	a5,10
    80005004:	02f577b3          	remu	a5,a0,a5
    80005008:	02078e63          	beqz	a5,80005044 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000500c:	fff48513          	addi	a0,s1,-1
    80005010:	00000097          	auipc	ra,0x0
    80005014:	fcc080e7          	jalr	-52(ra) # 80004fdc <_ZL9fibonaccim>
    80005018:	00050913          	mv	s2,a0
    8000501c:	ffe48513          	addi	a0,s1,-2
    80005020:	00000097          	auipc	ra,0x0
    80005024:	fbc080e7          	jalr	-68(ra) # 80004fdc <_ZL9fibonaccim>
    80005028:	00a90533          	add	a0,s2,a0
}
    8000502c:	01813083          	ld	ra,24(sp)
    80005030:	01013403          	ld	s0,16(sp)
    80005034:	00813483          	ld	s1,8(sp)
    80005038:	00013903          	ld	s2,0(sp)
    8000503c:	02010113          	addi	sp,sp,32
    80005040:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005044:	ffffc097          	auipc	ra,0xffffc
    80005048:	398080e7          	jalr	920(ra) # 800013dc <_Z15thread_dispatchv>
    8000504c:	fc1ff06f          	j	8000500c <_ZL9fibonaccim+0x30>

0000000080005050 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00113c23          	sd	ra,24(sp)
    80005058:	00813823          	sd	s0,16(sp)
    8000505c:	00913423          	sd	s1,8(sp)
    80005060:	01213023          	sd	s2,0(sp)
    80005064:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005068:	00a00493          	li	s1,10
    8000506c:	0400006f          	j	800050ac <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005070:	00005517          	auipc	a0,0x5
    80005074:	20850513          	addi	a0,a0,520 # 8000a278 <CONSOLE_STATUS+0x268>
    80005078:	00001097          	auipc	ra,0x1
    8000507c:	dc8080e7          	jalr	-568(ra) # 80005e40 <_Z11printStringPKc>
    80005080:	00000613          	li	a2,0
    80005084:	00a00593          	li	a1,10
    80005088:	00048513          	mv	a0,s1
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	f64080e7          	jalr	-156(ra) # 80005ff0 <_Z8printIntiii>
    80005094:	00005517          	auipc	a0,0x5
    80005098:	3e450513          	addi	a0,a0,996 # 8000a478 <CONSOLE_STATUS+0x468>
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	da4080e7          	jalr	-604(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050a4:	0014849b          	addiw	s1,s1,1
    800050a8:	0ff4f493          	andi	s1,s1,255
    800050ac:	00c00793          	li	a5,12
    800050b0:	fc97f0e3          	bgeu	a5,s1,80005070 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800050b4:	00005517          	auipc	a0,0x5
    800050b8:	1cc50513          	addi	a0,a0,460 # 8000a280 <CONSOLE_STATUS+0x270>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	d84080e7          	jalr	-636(ra) # 80005e40 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800050c4:	00500313          	li	t1,5
    thread_dispatch();
    800050c8:	ffffc097          	auipc	ra,0xffffc
    800050cc:	314080e7          	jalr	788(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800050d0:	01000513          	li	a0,16
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	f08080e7          	jalr	-248(ra) # 80004fdc <_ZL9fibonaccim>
    800050dc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800050e0:	00005517          	auipc	a0,0x5
    800050e4:	1b050513          	addi	a0,a0,432 # 8000a290 <CONSOLE_STATUS+0x280>
    800050e8:	00001097          	auipc	ra,0x1
    800050ec:	d58080e7          	jalr	-680(ra) # 80005e40 <_Z11printStringPKc>
    800050f0:	00000613          	li	a2,0
    800050f4:	00a00593          	li	a1,10
    800050f8:	0009051b          	sext.w	a0,s2
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	ef4080e7          	jalr	-268(ra) # 80005ff0 <_Z8printIntiii>
    80005104:	00005517          	auipc	a0,0x5
    80005108:	37450513          	addi	a0,a0,884 # 8000a478 <CONSOLE_STATUS+0x468>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	d34080e7          	jalr	-716(ra) # 80005e40 <_Z11printStringPKc>
    80005114:	0400006f          	j	80005154 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005118:	00005517          	auipc	a0,0x5
    8000511c:	16050513          	addi	a0,a0,352 # 8000a278 <CONSOLE_STATUS+0x268>
    80005120:	00001097          	auipc	ra,0x1
    80005124:	d20080e7          	jalr	-736(ra) # 80005e40 <_Z11printStringPKc>
    80005128:	00000613          	li	a2,0
    8000512c:	00a00593          	li	a1,10
    80005130:	00048513          	mv	a0,s1
    80005134:	00001097          	auipc	ra,0x1
    80005138:	ebc080e7          	jalr	-324(ra) # 80005ff0 <_Z8printIntiii>
    8000513c:	00005517          	auipc	a0,0x5
    80005140:	33c50513          	addi	a0,a0,828 # 8000a478 <CONSOLE_STATUS+0x468>
    80005144:	00001097          	auipc	ra,0x1
    80005148:	cfc080e7          	jalr	-772(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000514c:	0014849b          	addiw	s1,s1,1
    80005150:	0ff4f493          	andi	s1,s1,255
    80005154:	00f00793          	li	a5,15
    80005158:	fc97f0e3          	bgeu	a5,s1,80005118 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000515c:	00005517          	auipc	a0,0x5
    80005160:	14450513          	addi	a0,a0,324 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005164:	00001097          	auipc	ra,0x1
    80005168:	cdc080e7          	jalr	-804(ra) # 80005e40 <_Z11printStringPKc>
    finishedD = true;
    8000516c:	00100793          	li	a5,1
    80005170:	00008717          	auipc	a4,0x8
    80005174:	d8f70c23          	sb	a5,-616(a4) # 8000cf08 <_ZL9finishedD>
    thread_dispatch();
    80005178:	ffffc097          	auipc	ra,0xffffc
    8000517c:	264080e7          	jalr	612(ra) # 800013dc <_Z15thread_dispatchv>
}
    80005180:	01813083          	ld	ra,24(sp)
    80005184:	01013403          	ld	s0,16(sp)
    80005188:	00813483          	ld	s1,8(sp)
    8000518c:	00013903          	ld	s2,0(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret

0000000080005198 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800051b0:	00000493          	li	s1,0
    800051b4:	0400006f          	j	800051f4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800051b8:	00005517          	auipc	a0,0x5
    800051bc:	09050513          	addi	a0,a0,144 # 8000a248 <CONSOLE_STATUS+0x238>
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	c80080e7          	jalr	-896(ra) # 80005e40 <_Z11printStringPKc>
    800051c8:	00000613          	li	a2,0
    800051cc:	00a00593          	li	a1,10
    800051d0:	00048513          	mv	a0,s1
    800051d4:	00001097          	auipc	ra,0x1
    800051d8:	e1c080e7          	jalr	-484(ra) # 80005ff0 <_Z8printIntiii>
    800051dc:	00005517          	auipc	a0,0x5
    800051e0:	29c50513          	addi	a0,a0,668 # 8000a478 <CONSOLE_STATUS+0x468>
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	c5c080e7          	jalr	-932(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800051ec:	0014849b          	addiw	s1,s1,1
    800051f0:	0ff4f493          	andi	s1,s1,255
    800051f4:	00200793          	li	a5,2
    800051f8:	fc97f0e3          	bgeu	a5,s1,800051b8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800051fc:	00005517          	auipc	a0,0x5
    80005200:	05450513          	addi	a0,a0,84 # 8000a250 <CONSOLE_STATUS+0x240>
    80005204:	00001097          	auipc	ra,0x1
    80005208:	c3c080e7          	jalr	-964(ra) # 80005e40 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000520c:	00700313          	li	t1,7
    thread_dispatch();
    80005210:	ffffc097          	auipc	ra,0xffffc
    80005214:	1cc080e7          	jalr	460(ra) # 800013dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005218:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000521c:	00005517          	auipc	a0,0x5
    80005220:	04450513          	addi	a0,a0,68 # 8000a260 <CONSOLE_STATUS+0x250>
    80005224:	00001097          	auipc	ra,0x1
    80005228:	c1c080e7          	jalr	-996(ra) # 80005e40 <_Z11printStringPKc>
    8000522c:	00000613          	li	a2,0
    80005230:	00a00593          	li	a1,10
    80005234:	0009051b          	sext.w	a0,s2
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	db8080e7          	jalr	-584(ra) # 80005ff0 <_Z8printIntiii>
    80005240:	00005517          	auipc	a0,0x5
    80005244:	23850513          	addi	a0,a0,568 # 8000a478 <CONSOLE_STATUS+0x468>
    80005248:	00001097          	auipc	ra,0x1
    8000524c:	bf8080e7          	jalr	-1032(ra) # 80005e40 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005250:	00c00513          	li	a0,12
    80005254:	00000097          	auipc	ra,0x0
    80005258:	d88080e7          	jalr	-632(ra) # 80004fdc <_ZL9fibonaccim>
    8000525c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005260:	00005517          	auipc	a0,0x5
    80005264:	00850513          	addi	a0,a0,8 # 8000a268 <CONSOLE_STATUS+0x258>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	bd8080e7          	jalr	-1064(ra) # 80005e40 <_Z11printStringPKc>
    80005270:	00000613          	li	a2,0
    80005274:	00a00593          	li	a1,10
    80005278:	0009051b          	sext.w	a0,s2
    8000527c:	00001097          	auipc	ra,0x1
    80005280:	d74080e7          	jalr	-652(ra) # 80005ff0 <_Z8printIntiii>
    80005284:	00005517          	auipc	a0,0x5
    80005288:	1f450513          	addi	a0,a0,500 # 8000a478 <CONSOLE_STATUS+0x468>
    8000528c:	00001097          	auipc	ra,0x1
    80005290:	bb4080e7          	jalr	-1100(ra) # 80005e40 <_Z11printStringPKc>
    80005294:	0400006f          	j	800052d4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005298:	00005517          	auipc	a0,0x5
    8000529c:	fb050513          	addi	a0,a0,-80 # 8000a248 <CONSOLE_STATUS+0x238>
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	ba0080e7          	jalr	-1120(ra) # 80005e40 <_Z11printStringPKc>
    800052a8:	00000613          	li	a2,0
    800052ac:	00a00593          	li	a1,10
    800052b0:	00048513          	mv	a0,s1
    800052b4:	00001097          	auipc	ra,0x1
    800052b8:	d3c080e7          	jalr	-708(ra) # 80005ff0 <_Z8printIntiii>
    800052bc:	00005517          	auipc	a0,0x5
    800052c0:	1bc50513          	addi	a0,a0,444 # 8000a478 <CONSOLE_STATUS+0x468>
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	b7c080e7          	jalr	-1156(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800052cc:	0014849b          	addiw	s1,s1,1
    800052d0:	0ff4f493          	andi	s1,s1,255
    800052d4:	00500793          	li	a5,5
    800052d8:	fc97f0e3          	bgeu	a5,s1,80005298 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800052dc:	00005517          	auipc	a0,0x5
    800052e0:	f4450513          	addi	a0,a0,-188 # 8000a220 <CONSOLE_STATUS+0x210>
    800052e4:	00001097          	auipc	ra,0x1
    800052e8:	b5c080e7          	jalr	-1188(ra) # 80005e40 <_Z11printStringPKc>
    finishedC = true;
    800052ec:	00100793          	li	a5,1
    800052f0:	00008717          	auipc	a4,0x8
    800052f4:	c0f70ca3          	sb	a5,-999(a4) # 8000cf09 <_ZL9finishedC>
    thread_dispatch();
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	0e4080e7          	jalr	228(ra) # 800013dc <_Z15thread_dispatchv>
}
    80005300:	01813083          	ld	ra,24(sp)
    80005304:	01013403          	ld	s0,16(sp)
    80005308:	00813483          	ld	s1,8(sp)
    8000530c:	00013903          	ld	s2,0(sp)
    80005310:	02010113          	addi	sp,sp,32
    80005314:	00008067          	ret

0000000080005318 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005318:	fe010113          	addi	sp,sp,-32
    8000531c:	00113c23          	sd	ra,24(sp)
    80005320:	00813823          	sd	s0,16(sp)
    80005324:	00913423          	sd	s1,8(sp)
    80005328:	01213023          	sd	s2,0(sp)
    8000532c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005330:	00000913          	li	s2,0
    80005334:	0380006f          	j	8000536c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	0a4080e7          	jalr	164(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005340:	00148493          	addi	s1,s1,1
    80005344:	000027b7          	lui	a5,0x2
    80005348:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000534c:	0097ee63          	bltu	a5,s1,80005368 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005350:	00000713          	li	a4,0
    80005354:	000077b7          	lui	a5,0x7
    80005358:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000535c:	fce7eee3          	bltu	a5,a4,80005338 <_ZL11workerBodyBPv+0x20>
    80005360:	00170713          	addi	a4,a4,1
    80005364:	ff1ff06f          	j	80005354 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005368:	00190913          	addi	s2,s2,1
    8000536c:	00f00793          	li	a5,15
    80005370:	0527e063          	bltu	a5,s2,800053b0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005374:	00005517          	auipc	a0,0x5
    80005378:	ebc50513          	addi	a0,a0,-324 # 8000a230 <CONSOLE_STATUS+0x220>
    8000537c:	00001097          	auipc	ra,0x1
    80005380:	ac4080e7          	jalr	-1340(ra) # 80005e40 <_Z11printStringPKc>
    80005384:	00000613          	li	a2,0
    80005388:	00a00593          	li	a1,10
    8000538c:	0009051b          	sext.w	a0,s2
    80005390:	00001097          	auipc	ra,0x1
    80005394:	c60080e7          	jalr	-928(ra) # 80005ff0 <_Z8printIntiii>
    80005398:	00005517          	auipc	a0,0x5
    8000539c:	0e050513          	addi	a0,a0,224 # 8000a478 <CONSOLE_STATUS+0x468>
    800053a0:	00001097          	auipc	ra,0x1
    800053a4:	aa0080e7          	jalr	-1376(ra) # 80005e40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800053a8:	00000493          	li	s1,0
    800053ac:	f99ff06f          	j	80005344 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800053b0:	00005517          	auipc	a0,0x5
    800053b4:	e8850513          	addi	a0,a0,-376 # 8000a238 <CONSOLE_STATUS+0x228>
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	a88080e7          	jalr	-1400(ra) # 80005e40 <_Z11printStringPKc>
    finishedB = true;
    800053c0:	00100793          	li	a5,1
    800053c4:	00008717          	auipc	a4,0x8
    800053c8:	b4f70323          	sb	a5,-1210(a4) # 8000cf0a <_ZL9finishedB>
    thread_dispatch();
    800053cc:	ffffc097          	auipc	ra,0xffffc
    800053d0:	010080e7          	jalr	16(ra) # 800013dc <_Z15thread_dispatchv>
}
    800053d4:	01813083          	ld	ra,24(sp)
    800053d8:	01013403          	ld	s0,16(sp)
    800053dc:	00813483          	ld	s1,8(sp)
    800053e0:	00013903          	ld	s2,0(sp)
    800053e4:	02010113          	addi	sp,sp,32
    800053e8:	00008067          	ret

00000000800053ec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800053ec:	fe010113          	addi	sp,sp,-32
    800053f0:	00113c23          	sd	ra,24(sp)
    800053f4:	00813823          	sd	s0,16(sp)
    800053f8:	00913423          	sd	s1,8(sp)
    800053fc:	01213023          	sd	s2,0(sp)
    80005400:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005404:	00000913          	li	s2,0
    80005408:	0380006f          	j	80005440 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000540c:	ffffc097          	auipc	ra,0xffffc
    80005410:	fd0080e7          	jalr	-48(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005414:	00148493          	addi	s1,s1,1
    80005418:	000027b7          	lui	a5,0x2
    8000541c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005420:	0097ee63          	bltu	a5,s1,8000543c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005424:	00000713          	li	a4,0
    80005428:	000077b7          	lui	a5,0x7
    8000542c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005430:	fce7eee3          	bltu	a5,a4,8000540c <_ZL11workerBodyAPv+0x20>
    80005434:	00170713          	addi	a4,a4,1
    80005438:	ff1ff06f          	j	80005428 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000543c:	00190913          	addi	s2,s2,1
    80005440:	00900793          	li	a5,9
    80005444:	0527e063          	bltu	a5,s2,80005484 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005448:	00005517          	auipc	a0,0x5
    8000544c:	dd050513          	addi	a0,a0,-560 # 8000a218 <CONSOLE_STATUS+0x208>
    80005450:	00001097          	auipc	ra,0x1
    80005454:	9f0080e7          	jalr	-1552(ra) # 80005e40 <_Z11printStringPKc>
    80005458:	00000613          	li	a2,0
    8000545c:	00a00593          	li	a1,10
    80005460:	0009051b          	sext.w	a0,s2
    80005464:	00001097          	auipc	ra,0x1
    80005468:	b8c080e7          	jalr	-1140(ra) # 80005ff0 <_Z8printIntiii>
    8000546c:	00005517          	auipc	a0,0x5
    80005470:	00c50513          	addi	a0,a0,12 # 8000a478 <CONSOLE_STATUS+0x468>
    80005474:	00001097          	auipc	ra,0x1
    80005478:	9cc080e7          	jalr	-1588(ra) # 80005e40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000547c:	00000493          	li	s1,0
    80005480:	f99ff06f          	j	80005418 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005484:	00005517          	auipc	a0,0x5
    80005488:	d9c50513          	addi	a0,a0,-612 # 8000a220 <CONSOLE_STATUS+0x210>
    8000548c:	00001097          	auipc	ra,0x1
    80005490:	9b4080e7          	jalr	-1612(ra) # 80005e40 <_Z11printStringPKc>
    finishedA = true;
    80005494:	00100793          	li	a5,1
    80005498:	00008717          	auipc	a4,0x8
    8000549c:	a6f709a3          	sb	a5,-1421(a4) # 8000cf0b <_ZL9finishedA>
}
    800054a0:	01813083          	ld	ra,24(sp)
    800054a4:	01013403          	ld	s0,16(sp)
    800054a8:	00813483          	ld	s1,8(sp)
    800054ac:	00013903          	ld	s2,0(sp)
    800054b0:	02010113          	addi	sp,sp,32
    800054b4:	00008067          	ret

00000000800054b8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800054b8:	fd010113          	addi	sp,sp,-48
    800054bc:	02113423          	sd	ra,40(sp)
    800054c0:	02813023          	sd	s0,32(sp)
    800054c4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800054c8:	00000613          	li	a2,0
    800054cc:	00000597          	auipc	a1,0x0
    800054d0:	f2058593          	addi	a1,a1,-224 # 800053ec <_ZL11workerBodyAPv>
    800054d4:	fd040513          	addi	a0,s0,-48
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	e24080e7          	jalr	-476(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800054e0:	00005517          	auipc	a0,0x5
    800054e4:	dd050513          	addi	a0,a0,-560 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800054e8:	00001097          	auipc	ra,0x1
    800054ec:	958080e7          	jalr	-1704(ra) # 80005e40 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800054f0:	00000613          	li	a2,0
    800054f4:	00000597          	auipc	a1,0x0
    800054f8:	e2458593          	addi	a1,a1,-476 # 80005318 <_ZL11workerBodyBPv>
    800054fc:	fd840513          	addi	a0,s0,-40
    80005500:	ffffc097          	auipc	ra,0xffffc
    80005504:	dfc080e7          	jalr	-516(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005508:	00005517          	auipc	a0,0x5
    8000550c:	dc050513          	addi	a0,a0,-576 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80005510:	00001097          	auipc	ra,0x1
    80005514:	930080e7          	jalr	-1744(ra) # 80005e40 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005518:	00000613          	li	a2,0
    8000551c:	00000597          	auipc	a1,0x0
    80005520:	c7c58593          	addi	a1,a1,-900 # 80005198 <_ZL11workerBodyCPv>
    80005524:	fe040513          	addi	a0,s0,-32
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	dd4080e7          	jalr	-556(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005530:	00005517          	auipc	a0,0x5
    80005534:	db050513          	addi	a0,a0,-592 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005538:	00001097          	auipc	ra,0x1
    8000553c:	908080e7          	jalr	-1784(ra) # 80005e40 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005540:	00000613          	li	a2,0
    80005544:	00000597          	auipc	a1,0x0
    80005548:	b0c58593          	addi	a1,a1,-1268 # 80005050 <_ZL11workerBodyDPv>
    8000554c:	fe840513          	addi	a0,s0,-24
    80005550:	ffffc097          	auipc	ra,0xffffc
    80005554:	dac080e7          	jalr	-596(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005558:	00005517          	auipc	a0,0x5
    8000555c:	da050513          	addi	a0,a0,-608 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005560:	00001097          	auipc	ra,0x1
    80005564:	8e0080e7          	jalr	-1824(ra) # 80005e40 <_Z11printStringPKc>
    80005568:	00c0006f          	j	80005574 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	e70080e7          	jalr	-400(ra) # 800013dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005574:	00008797          	auipc	a5,0x8
    80005578:	9977c783          	lbu	a5,-1641(a5) # 8000cf0b <_ZL9finishedA>
    8000557c:	fe0788e3          	beqz	a5,8000556c <_Z18Threads_C_API_testv+0xb4>
    80005580:	00008797          	auipc	a5,0x8
    80005584:	98a7c783          	lbu	a5,-1654(a5) # 8000cf0a <_ZL9finishedB>
    80005588:	fe0782e3          	beqz	a5,8000556c <_Z18Threads_C_API_testv+0xb4>
    8000558c:	00008797          	auipc	a5,0x8
    80005590:	97d7c783          	lbu	a5,-1667(a5) # 8000cf09 <_ZL9finishedC>
    80005594:	fc078ce3          	beqz	a5,8000556c <_Z18Threads_C_API_testv+0xb4>
    80005598:	00008797          	auipc	a5,0x8
    8000559c:	9707c783          	lbu	a5,-1680(a5) # 8000cf08 <_ZL9finishedD>
    800055a0:	fc0786e3          	beqz	a5,8000556c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800055a4:	02813083          	ld	ra,40(sp)
    800055a8:	02013403          	ld	s0,32(sp)
    800055ac:	03010113          	addi	sp,sp,48
    800055b0:	00008067          	ret

00000000800055b4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800055b4:	fd010113          	addi	sp,sp,-48
    800055b8:	02113423          	sd	ra,40(sp)
    800055bc:	02813023          	sd	s0,32(sp)
    800055c0:	00913c23          	sd	s1,24(sp)
    800055c4:	01213823          	sd	s2,16(sp)
    800055c8:	01313423          	sd	s3,8(sp)
    800055cc:	03010413          	addi	s0,sp,48
    800055d0:	00050993          	mv	s3,a0
    800055d4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800055d8:	00000913          	li	s2,0
    800055dc:	00c0006f          	j	800055e8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	0bc080e7          	jalr	188(ra) # 8000269c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800055e8:	ffffc097          	auipc	ra,0xffffc
    800055ec:	054080e7          	jalr	84(ra) # 8000163c <_Z4getcv>
    800055f0:	0005059b          	sext.w	a1,a0
    800055f4:	01b00793          	li	a5,27
    800055f8:	02f58a63          	beq	a1,a5,8000562c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800055fc:	0084b503          	ld	a0,8(s1)
    80005600:	00001097          	auipc	ra,0x1
    80005604:	c64080e7          	jalr	-924(ra) # 80006264 <_ZN9BufferCPP3putEi>
        i++;
    80005608:	0019071b          	addiw	a4,s2,1
    8000560c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005610:	0004a683          	lw	a3,0(s1)
    80005614:	0026979b          	slliw	a5,a3,0x2
    80005618:	00d787bb          	addw	a5,a5,a3
    8000561c:	0017979b          	slliw	a5,a5,0x1
    80005620:	02f767bb          	remw	a5,a4,a5
    80005624:	fc0792e3          	bnez	a5,800055e8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005628:	fb9ff06f          	j	800055e0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000562c:	00100793          	li	a5,1
    80005630:	00008717          	auipc	a4,0x8
    80005634:	8ef72023          	sw	a5,-1824(a4) # 8000cf10 <_ZL9threadEnd>
    td->buffer->put('!');
    80005638:	0209b783          	ld	a5,32(s3)
    8000563c:	02100593          	li	a1,33
    80005640:	0087b503          	ld	a0,8(a5)
    80005644:	00001097          	auipc	ra,0x1
    80005648:	c20080e7          	jalr	-992(ra) # 80006264 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000564c:	0104b503          	ld	a0,16(s1)
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	11c080e7          	jalr	284(ra) # 8000276c <_ZN9Semaphore6signalEv>
}
    80005658:	02813083          	ld	ra,40(sp)
    8000565c:	02013403          	ld	s0,32(sp)
    80005660:	01813483          	ld	s1,24(sp)
    80005664:	01013903          	ld	s2,16(sp)
    80005668:	00813983          	ld	s3,8(sp)
    8000566c:	03010113          	addi	sp,sp,48
    80005670:	00008067          	ret

0000000080005674 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005674:	fe010113          	addi	sp,sp,-32
    80005678:	00113c23          	sd	ra,24(sp)
    8000567c:	00813823          	sd	s0,16(sp)
    80005680:	00913423          	sd	s1,8(sp)
    80005684:	01213023          	sd	s2,0(sp)
    80005688:	02010413          	addi	s0,sp,32
    8000568c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005690:	00000913          	li	s2,0
    80005694:	00c0006f          	j	800056a0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005698:	ffffd097          	auipc	ra,0xffffd
    8000569c:	004080e7          	jalr	4(ra) # 8000269c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800056a0:	00008797          	auipc	a5,0x8
    800056a4:	8707a783          	lw	a5,-1936(a5) # 8000cf10 <_ZL9threadEnd>
    800056a8:	02079e63          	bnez	a5,800056e4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800056ac:	0004a583          	lw	a1,0(s1)
    800056b0:	0305859b          	addiw	a1,a1,48
    800056b4:	0084b503          	ld	a0,8(s1)
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	bac080e7          	jalr	-1108(ra) # 80006264 <_ZN9BufferCPP3putEi>
        i++;
    800056c0:	0019071b          	addiw	a4,s2,1
    800056c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800056c8:	0004a683          	lw	a3,0(s1)
    800056cc:	0026979b          	slliw	a5,a3,0x2
    800056d0:	00d787bb          	addw	a5,a5,a3
    800056d4:	0017979b          	slliw	a5,a5,0x1
    800056d8:	02f767bb          	remw	a5,a4,a5
    800056dc:	fc0792e3          	bnez	a5,800056a0 <_ZN12ProducerSync8producerEPv+0x2c>
    800056e0:	fb9ff06f          	j	80005698 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800056e4:	0104b503          	ld	a0,16(s1)
    800056e8:	ffffd097          	auipc	ra,0xffffd
    800056ec:	084080e7          	jalr	132(ra) # 8000276c <_ZN9Semaphore6signalEv>
}
    800056f0:	01813083          	ld	ra,24(sp)
    800056f4:	01013403          	ld	s0,16(sp)
    800056f8:	00813483          	ld	s1,8(sp)
    800056fc:	00013903          	ld	s2,0(sp)
    80005700:	02010113          	addi	sp,sp,32
    80005704:	00008067          	ret

0000000080005708 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005708:	fd010113          	addi	sp,sp,-48
    8000570c:	02113423          	sd	ra,40(sp)
    80005710:	02813023          	sd	s0,32(sp)
    80005714:	00913c23          	sd	s1,24(sp)
    80005718:	01213823          	sd	s2,16(sp)
    8000571c:	01313423          	sd	s3,8(sp)
    80005720:	01413023          	sd	s4,0(sp)
    80005724:	03010413          	addi	s0,sp,48
    80005728:	00050993          	mv	s3,a0
    8000572c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005730:	00000a13          	li	s4,0
    80005734:	01c0006f          	j	80005750 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005738:	ffffd097          	auipc	ra,0xffffd
    8000573c:	f64080e7          	jalr	-156(ra) # 8000269c <_ZN6Thread8dispatchEv>
    80005740:	0500006f          	j	80005790 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005744:	00a00513          	li	a0,10
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	f40080e7          	jalr	-192(ra) # 80001688 <_Z4putcc>
    while (!threadEnd) {
    80005750:	00007797          	auipc	a5,0x7
    80005754:	7c07a783          	lw	a5,1984(a5) # 8000cf10 <_ZL9threadEnd>
    80005758:	06079263          	bnez	a5,800057bc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000575c:	00893503          	ld	a0,8(s2)
    80005760:	00001097          	auipc	ra,0x1
    80005764:	b94080e7          	jalr	-1132(ra) # 800062f4 <_ZN9BufferCPP3getEv>
        i++;
    80005768:	001a049b          	addiw	s1,s4,1
    8000576c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005770:	0ff57513          	andi	a0,a0,255
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	f14080e7          	jalr	-236(ra) # 80001688 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000577c:	00092703          	lw	a4,0(s2)
    80005780:	0027179b          	slliw	a5,a4,0x2
    80005784:	00e787bb          	addw	a5,a5,a4
    80005788:	02f4e7bb          	remw	a5,s1,a5
    8000578c:	fa0786e3          	beqz	a5,80005738 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005790:	05000793          	li	a5,80
    80005794:	02f4e4bb          	remw	s1,s1,a5
    80005798:	fa049ce3          	bnez	s1,80005750 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000579c:	fa9ff06f          	j	80005744 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800057a0:	0209b783          	ld	a5,32(s3)
    800057a4:	0087b503          	ld	a0,8(a5)
    800057a8:	00001097          	auipc	ra,0x1
    800057ac:	b4c080e7          	jalr	-1204(ra) # 800062f4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800057b0:	0ff57513          	andi	a0,a0,255
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	094080e7          	jalr	148(ra) # 80002848 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800057bc:	0209b783          	ld	a5,32(s3)
    800057c0:	0087b503          	ld	a0,8(a5)
    800057c4:	00001097          	auipc	ra,0x1
    800057c8:	bbc080e7          	jalr	-1092(ra) # 80006380 <_ZN9BufferCPP6getCntEv>
    800057cc:	fca04ae3          	bgtz	a0,800057a0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800057d0:	01093503          	ld	a0,16(s2)
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	f98080e7          	jalr	-104(ra) # 8000276c <_ZN9Semaphore6signalEv>
}
    800057dc:	02813083          	ld	ra,40(sp)
    800057e0:	02013403          	ld	s0,32(sp)
    800057e4:	01813483          	ld	s1,24(sp)
    800057e8:	01013903          	ld	s2,16(sp)
    800057ec:	00813983          	ld	s3,8(sp)
    800057f0:	00013a03          	ld	s4,0(sp)
    800057f4:	03010113          	addi	sp,sp,48
    800057f8:	00008067          	ret

00000000800057fc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800057fc:	f8010113          	addi	sp,sp,-128
    80005800:	06113c23          	sd	ra,120(sp)
    80005804:	06813823          	sd	s0,112(sp)
    80005808:	06913423          	sd	s1,104(sp)
    8000580c:	07213023          	sd	s2,96(sp)
    80005810:	05313c23          	sd	s3,88(sp)
    80005814:	05413823          	sd	s4,80(sp)
    80005818:	05513423          	sd	s5,72(sp)
    8000581c:	05613023          	sd	s6,64(sp)
    80005820:	03713c23          	sd	s7,56(sp)
    80005824:	03813823          	sd	s8,48(sp)
    80005828:	03913423          	sd	s9,40(sp)
    8000582c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005830:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005834:	00005517          	auipc	a0,0x5
    80005838:	8fc50513          	addi	a0,a0,-1796 # 8000a130 <CONSOLE_STATUS+0x120>
    8000583c:	00000097          	auipc	ra,0x0
    80005840:	604080e7          	jalr	1540(ra) # 80005e40 <_Z11printStringPKc>
    getString(input, 30);
    80005844:	01e00593          	li	a1,30
    80005848:	f8040493          	addi	s1,s0,-128
    8000584c:	00048513          	mv	a0,s1
    80005850:	00000097          	auipc	ra,0x0
    80005854:	678080e7          	jalr	1656(ra) # 80005ec8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005858:	00048513          	mv	a0,s1
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	744080e7          	jalr	1860(ra) # 80005fa0 <_Z11stringToIntPKc>
    80005864:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005868:	00005517          	auipc	a0,0x5
    8000586c:	8e850513          	addi	a0,a0,-1816 # 8000a150 <CONSOLE_STATUS+0x140>
    80005870:	00000097          	auipc	ra,0x0
    80005874:	5d0080e7          	jalr	1488(ra) # 80005e40 <_Z11printStringPKc>
    getString(input, 30);
    80005878:	01e00593          	li	a1,30
    8000587c:	00048513          	mv	a0,s1
    80005880:	00000097          	auipc	ra,0x0
    80005884:	648080e7          	jalr	1608(ra) # 80005ec8 <_Z9getStringPci>
    n = stringToInt(input);
    80005888:	00048513          	mv	a0,s1
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	714080e7          	jalr	1812(ra) # 80005fa0 <_Z11stringToIntPKc>
    80005894:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005898:	00005517          	auipc	a0,0x5
    8000589c:	8d850513          	addi	a0,a0,-1832 # 8000a170 <CONSOLE_STATUS+0x160>
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	5a0080e7          	jalr	1440(ra) # 80005e40 <_Z11printStringPKc>
    800058a8:	00000613          	li	a2,0
    800058ac:	00a00593          	li	a1,10
    800058b0:	00090513          	mv	a0,s2
    800058b4:	00000097          	auipc	ra,0x0
    800058b8:	73c080e7          	jalr	1852(ra) # 80005ff0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800058bc:	00005517          	auipc	a0,0x5
    800058c0:	8cc50513          	addi	a0,a0,-1844 # 8000a188 <CONSOLE_STATUS+0x178>
    800058c4:	00000097          	auipc	ra,0x0
    800058c8:	57c080e7          	jalr	1404(ra) # 80005e40 <_Z11printStringPKc>
    800058cc:	00000613          	li	a2,0
    800058d0:	00a00593          	li	a1,10
    800058d4:	00048513          	mv	a0,s1
    800058d8:	00000097          	auipc	ra,0x0
    800058dc:	718080e7          	jalr	1816(ra) # 80005ff0 <_Z8printIntiii>
    printString(".\n");
    800058e0:	00005517          	auipc	a0,0x5
    800058e4:	8c050513          	addi	a0,a0,-1856 # 8000a1a0 <CONSOLE_STATUS+0x190>
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	558080e7          	jalr	1368(ra) # 80005e40 <_Z11printStringPKc>
    if(threadNum > n) {
    800058f0:	0324c463          	blt	s1,s2,80005918 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800058f4:	03205c63          	blez	s2,8000592c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800058f8:	03800513          	li	a0,56
    800058fc:	ffffd097          	auipc	ra,0xffffd
    80005900:	bb0080e7          	jalr	-1104(ra) # 800024ac <_Znwm>
    80005904:	00050a93          	mv	s5,a0
    80005908:	00048593          	mv	a1,s1
    8000590c:	00001097          	auipc	ra,0x1
    80005910:	804080e7          	jalr	-2044(ra) # 80006110 <_ZN9BufferCPPC1Ei>
    80005914:	0300006f          	j	80005944 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005918:	00005517          	auipc	a0,0x5
    8000591c:	89050513          	addi	a0,a0,-1904 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005920:	00000097          	auipc	ra,0x0
    80005924:	520080e7          	jalr	1312(ra) # 80005e40 <_Z11printStringPKc>
        return;
    80005928:	0140006f          	j	8000593c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000592c:	00005517          	auipc	a0,0x5
    80005930:	8bc50513          	addi	a0,a0,-1860 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005934:	00000097          	auipc	ra,0x0
    80005938:	50c080e7          	jalr	1292(ra) # 80005e40 <_Z11printStringPKc>
        return;
    8000593c:	000b8113          	mv	sp,s7
    80005940:	2380006f          	j	80005b78 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005944:	01000513          	li	a0,16
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	b64080e7          	jalr	-1180(ra) # 800024ac <_Znwm>
    80005950:	00050493          	mv	s1,a0
    80005954:	00000593          	li	a1,0
    80005958:	ffffd097          	auipc	ra,0xffffd
    8000595c:	da0080e7          	jalr	-608(ra) # 800026f8 <_ZN9SemaphoreC1Ej>
    80005960:	00007797          	auipc	a5,0x7
    80005964:	5a97bc23          	sd	s1,1464(a5) # 8000cf18 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005968:	00391793          	slli	a5,s2,0x3
    8000596c:	00f78793          	addi	a5,a5,15
    80005970:	ff07f793          	andi	a5,a5,-16
    80005974:	40f10133          	sub	sp,sp,a5
    80005978:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000597c:	0019071b          	addiw	a4,s2,1
    80005980:	00171793          	slli	a5,a4,0x1
    80005984:	00e787b3          	add	a5,a5,a4
    80005988:	00379793          	slli	a5,a5,0x3
    8000598c:	00f78793          	addi	a5,a5,15
    80005990:	ff07f793          	andi	a5,a5,-16
    80005994:	40f10133          	sub	sp,sp,a5
    80005998:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000599c:	00191c13          	slli	s8,s2,0x1
    800059a0:	012c07b3          	add	a5,s8,s2
    800059a4:	00379793          	slli	a5,a5,0x3
    800059a8:	00fa07b3          	add	a5,s4,a5
    800059ac:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800059b0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800059b4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800059b8:	02800513          	li	a0,40
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	af0080e7          	jalr	-1296(ra) # 800024ac <_Znwm>
    800059c4:	00050b13          	mv	s6,a0
    800059c8:	012c0c33          	add	s8,s8,s2
    800059cc:	003c1c13          	slli	s8,s8,0x3
    800059d0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800059d4:	ffffd097          	auipc	ra,0xffffd
    800059d8:	c68080e7          	jalr	-920(ra) # 8000263c <_ZN6ThreadC1Ev>
    800059dc:	00007797          	auipc	a5,0x7
    800059e0:	33c78793          	addi	a5,a5,828 # 8000cd18 <_ZTV12ConsumerSync+0x10>
    800059e4:	00fb3023          	sd	a5,0(s6)
    800059e8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800059ec:	000b0513          	mv	a0,s6
    800059f0:	ffffd097          	auipc	ra,0xffffd
    800059f4:	cd4080e7          	jalr	-812(ra) # 800026c4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800059f8:	00000493          	li	s1,0
    800059fc:	0380006f          	j	80005a34 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a00:	00007797          	auipc	a5,0x7
    80005a04:	2f078793          	addi	a5,a5,752 # 8000ccf0 <_ZTV12ProducerSync+0x10>
    80005a08:	00fcb023          	sd	a5,0(s9)
    80005a0c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005a10:	00349793          	slli	a5,s1,0x3
    80005a14:	00f987b3          	add	a5,s3,a5
    80005a18:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005a1c:	00349793          	slli	a5,s1,0x3
    80005a20:	00f987b3          	add	a5,s3,a5
    80005a24:	0007b503          	ld	a0,0(a5)
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	c9c080e7          	jalr	-868(ra) # 800026c4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a30:	0014849b          	addiw	s1,s1,1
    80005a34:	0b24d063          	bge	s1,s2,80005ad4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005a38:	00149793          	slli	a5,s1,0x1
    80005a3c:	009787b3          	add	a5,a5,s1
    80005a40:	00379793          	slli	a5,a5,0x3
    80005a44:	00fa07b3          	add	a5,s4,a5
    80005a48:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005a4c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005a50:	00007717          	auipc	a4,0x7
    80005a54:	4c873703          	ld	a4,1224(a4) # 8000cf18 <_ZL10waitForAll>
    80005a58:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005a5c:	02905863          	blez	s1,80005a8c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005a60:	02800513          	li	a0,40
    80005a64:	ffffd097          	auipc	ra,0xffffd
    80005a68:	a48080e7          	jalr	-1464(ra) # 800024ac <_Znwm>
    80005a6c:	00050c93          	mv	s9,a0
    80005a70:	00149c13          	slli	s8,s1,0x1
    80005a74:	009c0c33          	add	s8,s8,s1
    80005a78:	003c1c13          	slli	s8,s8,0x3
    80005a7c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a80:	ffffd097          	auipc	ra,0xffffd
    80005a84:	bbc080e7          	jalr	-1092(ra) # 8000263c <_ZN6ThreadC1Ev>
    80005a88:	f79ff06f          	j	80005a00 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005a8c:	02800513          	li	a0,40
    80005a90:	ffffd097          	auipc	ra,0xffffd
    80005a94:	a1c080e7          	jalr	-1508(ra) # 800024ac <_Znwm>
    80005a98:	00050c93          	mv	s9,a0
    80005a9c:	00149c13          	slli	s8,s1,0x1
    80005aa0:	009c0c33          	add	s8,s8,s1
    80005aa4:	003c1c13          	slli	s8,s8,0x3
    80005aa8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005aac:	ffffd097          	auipc	ra,0xffffd
    80005ab0:	b90080e7          	jalr	-1136(ra) # 8000263c <_ZN6ThreadC1Ev>
    80005ab4:	00007797          	auipc	a5,0x7
    80005ab8:	21478793          	addi	a5,a5,532 # 8000ccc8 <_ZTV16ProducerKeyboard+0x10>
    80005abc:	00fcb023          	sd	a5,0(s9)
    80005ac0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005ac4:	00349793          	slli	a5,s1,0x3
    80005ac8:	00f987b3          	add	a5,s3,a5
    80005acc:	0197b023          	sd	s9,0(a5)
    80005ad0:	f4dff06f          	j	80005a1c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005ad4:	ffffd097          	auipc	ra,0xffffd
    80005ad8:	bc8080e7          	jalr	-1080(ra) # 8000269c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005adc:	00000493          	li	s1,0
    80005ae0:	00994e63          	blt	s2,s1,80005afc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005ae4:	00007517          	auipc	a0,0x7
    80005ae8:	43453503          	ld	a0,1076(a0) # 8000cf18 <_ZL10waitForAll>
    80005aec:	ffffd097          	auipc	ra,0xffffd
    80005af0:	c48080e7          	jalr	-952(ra) # 80002734 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005af4:	0014849b          	addiw	s1,s1,1
    80005af8:	fe9ff06f          	j	80005ae0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005afc:	00000493          	li	s1,0
    80005b00:	0080006f          	j	80005b08 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005b04:	0014849b          	addiw	s1,s1,1
    80005b08:	0324d263          	bge	s1,s2,80005b2c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005b0c:	00349793          	slli	a5,s1,0x3
    80005b10:	00f987b3          	add	a5,s3,a5
    80005b14:	0007b503          	ld	a0,0(a5)
    80005b18:	fe0506e3          	beqz	a0,80005b04 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005b1c:	00053783          	ld	a5,0(a0)
    80005b20:	0087b783          	ld	a5,8(a5)
    80005b24:	000780e7          	jalr	a5
    80005b28:	fddff06f          	j	80005b04 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005b2c:	000b0a63          	beqz	s6,80005b40 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005b30:	000b3783          	ld	a5,0(s6)
    80005b34:	0087b783          	ld	a5,8(a5)
    80005b38:	000b0513          	mv	a0,s6
    80005b3c:	000780e7          	jalr	a5
    delete waitForAll;
    80005b40:	00007517          	auipc	a0,0x7
    80005b44:	3d853503          	ld	a0,984(a0) # 8000cf18 <_ZL10waitForAll>
    80005b48:	00050863          	beqz	a0,80005b58 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005b4c:	00053783          	ld	a5,0(a0)
    80005b50:	0087b783          	ld	a5,8(a5)
    80005b54:	000780e7          	jalr	a5
    delete buffer;
    80005b58:	000a8e63          	beqz	s5,80005b74 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005b5c:	000a8513          	mv	a0,s5
    80005b60:	00001097          	auipc	ra,0x1
    80005b64:	8a8080e7          	jalr	-1880(ra) # 80006408 <_ZN9BufferCPPD1Ev>
    80005b68:	000a8513          	mv	a0,s5
    80005b6c:	ffffd097          	auipc	ra,0xffffd
    80005b70:	9b8080e7          	jalr	-1608(ra) # 80002524 <_ZdlPv>
    80005b74:	000b8113          	mv	sp,s7

}
    80005b78:	f8040113          	addi	sp,s0,-128
    80005b7c:	07813083          	ld	ra,120(sp)
    80005b80:	07013403          	ld	s0,112(sp)
    80005b84:	06813483          	ld	s1,104(sp)
    80005b88:	06013903          	ld	s2,96(sp)
    80005b8c:	05813983          	ld	s3,88(sp)
    80005b90:	05013a03          	ld	s4,80(sp)
    80005b94:	04813a83          	ld	s5,72(sp)
    80005b98:	04013b03          	ld	s6,64(sp)
    80005b9c:	03813b83          	ld	s7,56(sp)
    80005ba0:	03013c03          	ld	s8,48(sp)
    80005ba4:	02813c83          	ld	s9,40(sp)
    80005ba8:	08010113          	addi	sp,sp,128
    80005bac:	00008067          	ret
    80005bb0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005bb4:	000a8513          	mv	a0,s5
    80005bb8:	ffffd097          	auipc	ra,0xffffd
    80005bbc:	96c080e7          	jalr	-1684(ra) # 80002524 <_ZdlPv>
    80005bc0:	00048513          	mv	a0,s1
    80005bc4:	00008097          	auipc	ra,0x8
    80005bc8:	434080e7          	jalr	1076(ra) # 8000dff8 <_Unwind_Resume>
    80005bcc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005bd0:	00048513          	mv	a0,s1
    80005bd4:	ffffd097          	auipc	ra,0xffffd
    80005bd8:	950080e7          	jalr	-1712(ra) # 80002524 <_ZdlPv>
    80005bdc:	00090513          	mv	a0,s2
    80005be0:	00008097          	auipc	ra,0x8
    80005be4:	418080e7          	jalr	1048(ra) # 8000dff8 <_Unwind_Resume>
    80005be8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005bec:	000b0513          	mv	a0,s6
    80005bf0:	ffffd097          	auipc	ra,0xffffd
    80005bf4:	934080e7          	jalr	-1740(ra) # 80002524 <_ZdlPv>
    80005bf8:	00048513          	mv	a0,s1
    80005bfc:	00008097          	auipc	ra,0x8
    80005c00:	3fc080e7          	jalr	1020(ra) # 8000dff8 <_Unwind_Resume>
    80005c04:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005c08:	000c8513          	mv	a0,s9
    80005c0c:	ffffd097          	auipc	ra,0xffffd
    80005c10:	918080e7          	jalr	-1768(ra) # 80002524 <_ZdlPv>
    80005c14:	00048513          	mv	a0,s1
    80005c18:	00008097          	auipc	ra,0x8
    80005c1c:	3e0080e7          	jalr	992(ra) # 8000dff8 <_Unwind_Resume>
    80005c20:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005c24:	000c8513          	mv	a0,s9
    80005c28:	ffffd097          	auipc	ra,0xffffd
    80005c2c:	8fc080e7          	jalr	-1796(ra) # 80002524 <_ZdlPv>
    80005c30:	00048513          	mv	a0,s1
    80005c34:	00008097          	auipc	ra,0x8
    80005c38:	3c4080e7          	jalr	964(ra) # 8000dff8 <_Unwind_Resume>

0000000080005c3c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005c3c:	ff010113          	addi	sp,sp,-16
    80005c40:	00113423          	sd	ra,8(sp)
    80005c44:	00813023          	sd	s0,0(sp)
    80005c48:	01010413          	addi	s0,sp,16
    80005c4c:	00007797          	auipc	a5,0x7
    80005c50:	0cc78793          	addi	a5,a5,204 # 8000cd18 <_ZTV12ConsumerSync+0x10>
    80005c54:	00f53023          	sd	a5,0(a0)
    80005c58:	ffffd097          	auipc	ra,0xffffd
    80005c5c:	8f4080e7          	jalr	-1804(ra) # 8000254c <_ZN6ThreadD1Ev>
    80005c60:	00813083          	ld	ra,8(sp)
    80005c64:	00013403          	ld	s0,0(sp)
    80005c68:	01010113          	addi	sp,sp,16
    80005c6c:	00008067          	ret

0000000080005c70 <_ZN12ConsumerSyncD0Ev>:
    80005c70:	fe010113          	addi	sp,sp,-32
    80005c74:	00113c23          	sd	ra,24(sp)
    80005c78:	00813823          	sd	s0,16(sp)
    80005c7c:	00913423          	sd	s1,8(sp)
    80005c80:	02010413          	addi	s0,sp,32
    80005c84:	00050493          	mv	s1,a0
    80005c88:	00007797          	auipc	a5,0x7
    80005c8c:	09078793          	addi	a5,a5,144 # 8000cd18 <_ZTV12ConsumerSync+0x10>
    80005c90:	00f53023          	sd	a5,0(a0)
    80005c94:	ffffd097          	auipc	ra,0xffffd
    80005c98:	8b8080e7          	jalr	-1864(ra) # 8000254c <_ZN6ThreadD1Ev>
    80005c9c:	00048513          	mv	a0,s1
    80005ca0:	ffffd097          	auipc	ra,0xffffd
    80005ca4:	884080e7          	jalr	-1916(ra) # 80002524 <_ZdlPv>
    80005ca8:	01813083          	ld	ra,24(sp)
    80005cac:	01013403          	ld	s0,16(sp)
    80005cb0:	00813483          	ld	s1,8(sp)
    80005cb4:	02010113          	addi	sp,sp,32
    80005cb8:	00008067          	ret

0000000080005cbc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005cbc:	ff010113          	addi	sp,sp,-16
    80005cc0:	00113423          	sd	ra,8(sp)
    80005cc4:	00813023          	sd	s0,0(sp)
    80005cc8:	01010413          	addi	s0,sp,16
    80005ccc:	00007797          	auipc	a5,0x7
    80005cd0:	02478793          	addi	a5,a5,36 # 8000ccf0 <_ZTV12ProducerSync+0x10>
    80005cd4:	00f53023          	sd	a5,0(a0)
    80005cd8:	ffffd097          	auipc	ra,0xffffd
    80005cdc:	874080e7          	jalr	-1932(ra) # 8000254c <_ZN6ThreadD1Ev>
    80005ce0:	00813083          	ld	ra,8(sp)
    80005ce4:	00013403          	ld	s0,0(sp)
    80005ce8:	01010113          	addi	sp,sp,16
    80005cec:	00008067          	ret

0000000080005cf0 <_ZN12ProducerSyncD0Ev>:
    80005cf0:	fe010113          	addi	sp,sp,-32
    80005cf4:	00113c23          	sd	ra,24(sp)
    80005cf8:	00813823          	sd	s0,16(sp)
    80005cfc:	00913423          	sd	s1,8(sp)
    80005d00:	02010413          	addi	s0,sp,32
    80005d04:	00050493          	mv	s1,a0
    80005d08:	00007797          	auipc	a5,0x7
    80005d0c:	fe878793          	addi	a5,a5,-24 # 8000ccf0 <_ZTV12ProducerSync+0x10>
    80005d10:	00f53023          	sd	a5,0(a0)
    80005d14:	ffffd097          	auipc	ra,0xffffd
    80005d18:	838080e7          	jalr	-1992(ra) # 8000254c <_ZN6ThreadD1Ev>
    80005d1c:	00048513          	mv	a0,s1
    80005d20:	ffffd097          	auipc	ra,0xffffd
    80005d24:	804080e7          	jalr	-2044(ra) # 80002524 <_ZdlPv>
    80005d28:	01813083          	ld	ra,24(sp)
    80005d2c:	01013403          	ld	s0,16(sp)
    80005d30:	00813483          	ld	s1,8(sp)
    80005d34:	02010113          	addi	sp,sp,32
    80005d38:	00008067          	ret

0000000080005d3c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005d3c:	ff010113          	addi	sp,sp,-16
    80005d40:	00113423          	sd	ra,8(sp)
    80005d44:	00813023          	sd	s0,0(sp)
    80005d48:	01010413          	addi	s0,sp,16
    80005d4c:	00007797          	auipc	a5,0x7
    80005d50:	f7c78793          	addi	a5,a5,-132 # 8000ccc8 <_ZTV16ProducerKeyboard+0x10>
    80005d54:	00f53023          	sd	a5,0(a0)
    80005d58:	ffffc097          	auipc	ra,0xffffc
    80005d5c:	7f4080e7          	jalr	2036(ra) # 8000254c <_ZN6ThreadD1Ev>
    80005d60:	00813083          	ld	ra,8(sp)
    80005d64:	00013403          	ld	s0,0(sp)
    80005d68:	01010113          	addi	sp,sp,16
    80005d6c:	00008067          	ret

0000000080005d70 <_ZN16ProducerKeyboardD0Ev>:
    80005d70:	fe010113          	addi	sp,sp,-32
    80005d74:	00113c23          	sd	ra,24(sp)
    80005d78:	00813823          	sd	s0,16(sp)
    80005d7c:	00913423          	sd	s1,8(sp)
    80005d80:	02010413          	addi	s0,sp,32
    80005d84:	00050493          	mv	s1,a0
    80005d88:	00007797          	auipc	a5,0x7
    80005d8c:	f4078793          	addi	a5,a5,-192 # 8000ccc8 <_ZTV16ProducerKeyboard+0x10>
    80005d90:	00f53023          	sd	a5,0(a0)
    80005d94:	ffffc097          	auipc	ra,0xffffc
    80005d98:	7b8080e7          	jalr	1976(ra) # 8000254c <_ZN6ThreadD1Ev>
    80005d9c:	00048513          	mv	a0,s1
    80005da0:	ffffc097          	auipc	ra,0xffffc
    80005da4:	784080e7          	jalr	1924(ra) # 80002524 <_ZdlPv>
    80005da8:	01813083          	ld	ra,24(sp)
    80005dac:	01013403          	ld	s0,16(sp)
    80005db0:	00813483          	ld	s1,8(sp)
    80005db4:	02010113          	addi	sp,sp,32
    80005db8:	00008067          	ret

0000000080005dbc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005dbc:	ff010113          	addi	sp,sp,-16
    80005dc0:	00113423          	sd	ra,8(sp)
    80005dc4:	00813023          	sd	s0,0(sp)
    80005dc8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005dcc:	02053583          	ld	a1,32(a0)
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	7e4080e7          	jalr	2020(ra) # 800055b4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005dd8:	00813083          	ld	ra,8(sp)
    80005ddc:	00013403          	ld	s0,0(sp)
    80005de0:	01010113          	addi	sp,sp,16
    80005de4:	00008067          	ret

0000000080005de8 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005de8:	ff010113          	addi	sp,sp,-16
    80005dec:	00113423          	sd	ra,8(sp)
    80005df0:	00813023          	sd	s0,0(sp)
    80005df4:	01010413          	addi	s0,sp,16
        producer(td);
    80005df8:	02053583          	ld	a1,32(a0)
    80005dfc:	00000097          	auipc	ra,0x0
    80005e00:	878080e7          	jalr	-1928(ra) # 80005674 <_ZN12ProducerSync8producerEPv>
    }
    80005e04:	00813083          	ld	ra,8(sp)
    80005e08:	00013403          	ld	s0,0(sp)
    80005e0c:	01010113          	addi	sp,sp,16
    80005e10:	00008067          	ret

0000000080005e14 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005e14:	ff010113          	addi	sp,sp,-16
    80005e18:	00113423          	sd	ra,8(sp)
    80005e1c:	00813023          	sd	s0,0(sp)
    80005e20:	01010413          	addi	s0,sp,16
        consumer(td);
    80005e24:	02053583          	ld	a1,32(a0)
    80005e28:	00000097          	auipc	ra,0x0
    80005e2c:	8e0080e7          	jalr	-1824(ra) # 80005708 <_ZN12ConsumerSync8consumerEPv>
    }
    80005e30:	00813083          	ld	ra,8(sp)
    80005e34:	00013403          	ld	s0,0(sp)
    80005e38:	01010113          	addi	sp,sp,16
    80005e3c:	00008067          	ret

0000000080005e40 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005e40:	fe010113          	addi	sp,sp,-32
    80005e44:	00113c23          	sd	ra,24(sp)
    80005e48:	00813823          	sd	s0,16(sp)
    80005e4c:	00913423          	sd	s1,8(sp)
    80005e50:	02010413          	addi	s0,sp,32
    80005e54:	00050493          	mv	s1,a0
    LOCK();
    80005e58:	00100613          	li	a2,1
    80005e5c:	00000593          	li	a1,0
    80005e60:	00007517          	auipc	a0,0x7
    80005e64:	0c050513          	addi	a0,a0,192 # 8000cf20 <lockPrint>
    80005e68:	ffffb097          	auipc	ra,0xffffb
    80005e6c:	3bc080e7          	jalr	956(ra) # 80001224 <copy_and_swap>
    80005e70:	00050863          	beqz	a0,80005e80 <_Z11printStringPKc+0x40>
    80005e74:	ffffb097          	auipc	ra,0xffffb
    80005e78:	568080e7          	jalr	1384(ra) # 800013dc <_Z15thread_dispatchv>
    80005e7c:	fddff06f          	j	80005e58 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005e80:	0004c503          	lbu	a0,0(s1)
    80005e84:	00050a63          	beqz	a0,80005e98 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005e88:	ffffc097          	auipc	ra,0xffffc
    80005e8c:	800080e7          	jalr	-2048(ra) # 80001688 <_Z4putcc>
        string++;
    80005e90:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005e94:	fedff06f          	j	80005e80 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005e98:	00000613          	li	a2,0
    80005e9c:	00100593          	li	a1,1
    80005ea0:	00007517          	auipc	a0,0x7
    80005ea4:	08050513          	addi	a0,a0,128 # 8000cf20 <lockPrint>
    80005ea8:	ffffb097          	auipc	ra,0xffffb
    80005eac:	37c080e7          	jalr	892(ra) # 80001224 <copy_and_swap>
    80005eb0:	fe0514e3          	bnez	a0,80005e98 <_Z11printStringPKc+0x58>
}
    80005eb4:	01813083          	ld	ra,24(sp)
    80005eb8:	01013403          	ld	s0,16(sp)
    80005ebc:	00813483          	ld	s1,8(sp)
    80005ec0:	02010113          	addi	sp,sp,32
    80005ec4:	00008067          	ret

0000000080005ec8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005ec8:	fd010113          	addi	sp,sp,-48
    80005ecc:	02113423          	sd	ra,40(sp)
    80005ed0:	02813023          	sd	s0,32(sp)
    80005ed4:	00913c23          	sd	s1,24(sp)
    80005ed8:	01213823          	sd	s2,16(sp)
    80005edc:	01313423          	sd	s3,8(sp)
    80005ee0:	01413023          	sd	s4,0(sp)
    80005ee4:	03010413          	addi	s0,sp,48
    80005ee8:	00050993          	mv	s3,a0
    80005eec:	00058a13          	mv	s4,a1
    LOCK();
    80005ef0:	00100613          	li	a2,1
    80005ef4:	00000593          	li	a1,0
    80005ef8:	00007517          	auipc	a0,0x7
    80005efc:	02850513          	addi	a0,a0,40 # 8000cf20 <lockPrint>
    80005f00:	ffffb097          	auipc	ra,0xffffb
    80005f04:	324080e7          	jalr	804(ra) # 80001224 <copy_and_swap>
    80005f08:	00050863          	beqz	a0,80005f18 <_Z9getStringPci+0x50>
    80005f0c:	ffffb097          	auipc	ra,0xffffb
    80005f10:	4d0080e7          	jalr	1232(ra) # 800013dc <_Z15thread_dispatchv>
    80005f14:	fddff06f          	j	80005ef0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005f18:	00000913          	li	s2,0
    80005f1c:	00090493          	mv	s1,s2
    80005f20:	0019091b          	addiw	s2,s2,1
    80005f24:	03495a63          	bge	s2,s4,80005f58 <_Z9getStringPci+0x90>
        cc = getc();
    80005f28:	ffffb097          	auipc	ra,0xffffb
    80005f2c:	714080e7          	jalr	1812(ra) # 8000163c <_Z4getcv>
        if(cc < 1)
    80005f30:	02050463          	beqz	a0,80005f58 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005f34:	009984b3          	add	s1,s3,s1
    80005f38:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005f3c:	00a00793          	li	a5,10
    80005f40:	00f50a63          	beq	a0,a5,80005f54 <_Z9getStringPci+0x8c>
    80005f44:	00d00793          	li	a5,13
    80005f48:	fcf51ae3          	bne	a0,a5,80005f1c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005f4c:	00090493          	mv	s1,s2
    80005f50:	0080006f          	j	80005f58 <_Z9getStringPci+0x90>
    80005f54:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005f58:	009984b3          	add	s1,s3,s1
    80005f5c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005f60:	00000613          	li	a2,0
    80005f64:	00100593          	li	a1,1
    80005f68:	00007517          	auipc	a0,0x7
    80005f6c:	fb850513          	addi	a0,a0,-72 # 8000cf20 <lockPrint>
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	2b4080e7          	jalr	692(ra) # 80001224 <copy_and_swap>
    80005f78:	fe0514e3          	bnez	a0,80005f60 <_Z9getStringPci+0x98>
    return buf;
}
    80005f7c:	00098513          	mv	a0,s3
    80005f80:	02813083          	ld	ra,40(sp)
    80005f84:	02013403          	ld	s0,32(sp)
    80005f88:	01813483          	ld	s1,24(sp)
    80005f8c:	01013903          	ld	s2,16(sp)
    80005f90:	00813983          	ld	s3,8(sp)
    80005f94:	00013a03          	ld	s4,0(sp)
    80005f98:	03010113          	addi	sp,sp,48
    80005f9c:	00008067          	ret

0000000080005fa0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005fa0:	ff010113          	addi	sp,sp,-16
    80005fa4:	00813423          	sd	s0,8(sp)
    80005fa8:	01010413          	addi	s0,sp,16
    80005fac:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005fb0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005fb4:	0006c603          	lbu	a2,0(a3)
    80005fb8:	fd06071b          	addiw	a4,a2,-48
    80005fbc:	0ff77713          	andi	a4,a4,255
    80005fc0:	00900793          	li	a5,9
    80005fc4:	02e7e063          	bltu	a5,a4,80005fe4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005fc8:	0025179b          	slliw	a5,a0,0x2
    80005fcc:	00a787bb          	addw	a5,a5,a0
    80005fd0:	0017979b          	slliw	a5,a5,0x1
    80005fd4:	00168693          	addi	a3,a3,1
    80005fd8:	00c787bb          	addw	a5,a5,a2
    80005fdc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005fe0:	fd5ff06f          	j	80005fb4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005fe4:	00813403          	ld	s0,8(sp)
    80005fe8:	01010113          	addi	sp,sp,16
    80005fec:	00008067          	ret

0000000080005ff0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005ff0:	fc010113          	addi	sp,sp,-64
    80005ff4:	02113c23          	sd	ra,56(sp)
    80005ff8:	02813823          	sd	s0,48(sp)
    80005ffc:	02913423          	sd	s1,40(sp)
    80006000:	03213023          	sd	s2,32(sp)
    80006004:	01313c23          	sd	s3,24(sp)
    80006008:	04010413          	addi	s0,sp,64
    8000600c:	00050493          	mv	s1,a0
    80006010:	00058913          	mv	s2,a1
    80006014:	00060993          	mv	s3,a2
    LOCK();
    80006018:	00100613          	li	a2,1
    8000601c:	00000593          	li	a1,0
    80006020:	00007517          	auipc	a0,0x7
    80006024:	f0050513          	addi	a0,a0,-256 # 8000cf20 <lockPrint>
    80006028:	ffffb097          	auipc	ra,0xffffb
    8000602c:	1fc080e7          	jalr	508(ra) # 80001224 <copy_and_swap>
    80006030:	00050863          	beqz	a0,80006040 <_Z8printIntiii+0x50>
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	3a8080e7          	jalr	936(ra) # 800013dc <_Z15thread_dispatchv>
    8000603c:	fddff06f          	j	80006018 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006040:	00098463          	beqz	s3,80006048 <_Z8printIntiii+0x58>
    80006044:	0804c463          	bltz	s1,800060cc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006048:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000604c:	00000593          	li	a1,0
    }

    i = 0;
    80006050:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006054:	0009079b          	sext.w	a5,s2
    80006058:	0325773b          	remuw	a4,a0,s2
    8000605c:	00048613          	mv	a2,s1
    80006060:	0014849b          	addiw	s1,s1,1
    80006064:	02071693          	slli	a3,a4,0x20
    80006068:	0206d693          	srli	a3,a3,0x20
    8000606c:	00007717          	auipc	a4,0x7
    80006070:	cc470713          	addi	a4,a4,-828 # 8000cd30 <digits>
    80006074:	00d70733          	add	a4,a4,a3
    80006078:	00074683          	lbu	a3,0(a4)
    8000607c:	fd040713          	addi	a4,s0,-48
    80006080:	00c70733          	add	a4,a4,a2
    80006084:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006088:	0005071b          	sext.w	a4,a0
    8000608c:	0325553b          	divuw	a0,a0,s2
    80006090:	fcf772e3          	bgeu	a4,a5,80006054 <_Z8printIntiii+0x64>
    if(neg)
    80006094:	00058c63          	beqz	a1,800060ac <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006098:	fd040793          	addi	a5,s0,-48
    8000609c:	009784b3          	add	s1,a5,s1
    800060a0:	02d00793          	li	a5,45
    800060a4:	fef48823          	sb	a5,-16(s1)
    800060a8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800060ac:	fff4849b          	addiw	s1,s1,-1
    800060b0:	0204c463          	bltz	s1,800060d8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800060b4:	fd040793          	addi	a5,s0,-48
    800060b8:	009787b3          	add	a5,a5,s1
    800060bc:	ff07c503          	lbu	a0,-16(a5)
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	5c8080e7          	jalr	1480(ra) # 80001688 <_Z4putcc>
    800060c8:	fe5ff06f          	j	800060ac <_Z8printIntiii+0xbc>
        x = -xx;
    800060cc:	4090053b          	negw	a0,s1
        neg = 1;
    800060d0:	00100593          	li	a1,1
        x = -xx;
    800060d4:	f7dff06f          	j	80006050 <_Z8printIntiii+0x60>

    UNLOCK();
    800060d8:	00000613          	li	a2,0
    800060dc:	00100593          	li	a1,1
    800060e0:	00007517          	auipc	a0,0x7
    800060e4:	e4050513          	addi	a0,a0,-448 # 8000cf20 <lockPrint>
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	13c080e7          	jalr	316(ra) # 80001224 <copy_and_swap>
    800060f0:	fe0514e3          	bnez	a0,800060d8 <_Z8printIntiii+0xe8>
    800060f4:	03813083          	ld	ra,56(sp)
    800060f8:	03013403          	ld	s0,48(sp)
    800060fc:	02813483          	ld	s1,40(sp)
    80006100:	02013903          	ld	s2,32(sp)
    80006104:	01813983          	ld	s3,24(sp)
    80006108:	04010113          	addi	sp,sp,64
    8000610c:	00008067          	ret

0000000080006110 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006110:	fd010113          	addi	sp,sp,-48
    80006114:	02113423          	sd	ra,40(sp)
    80006118:	02813023          	sd	s0,32(sp)
    8000611c:	00913c23          	sd	s1,24(sp)
    80006120:	01213823          	sd	s2,16(sp)
    80006124:	01313423          	sd	s3,8(sp)
    80006128:	03010413          	addi	s0,sp,48
    8000612c:	00050493          	mv	s1,a0
    80006130:	00058913          	mv	s2,a1
    80006134:	0015879b          	addiw	a5,a1,1
    80006138:	0007851b          	sext.w	a0,a5
    8000613c:	00f4a023          	sw	a5,0(s1)
    80006140:	0004a823          	sw	zero,16(s1)
    80006144:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006148:	00251513          	slli	a0,a0,0x2
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	114080e7          	jalr	276(ra) # 80001260 <_Z9mem_allocm>
    80006154:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006158:	01000513          	li	a0,16
    8000615c:	ffffc097          	auipc	ra,0xffffc
    80006160:	350080e7          	jalr	848(ra) # 800024ac <_Znwm>
    80006164:	00050993          	mv	s3,a0
    80006168:	00000593          	li	a1,0
    8000616c:	ffffc097          	auipc	ra,0xffffc
    80006170:	58c080e7          	jalr	1420(ra) # 800026f8 <_ZN9SemaphoreC1Ej>
    80006174:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006178:	01000513          	li	a0,16
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	330080e7          	jalr	816(ra) # 800024ac <_Znwm>
    80006184:	00050993          	mv	s3,a0
    80006188:	00090593          	mv	a1,s2
    8000618c:	ffffc097          	auipc	ra,0xffffc
    80006190:	56c080e7          	jalr	1388(ra) # 800026f8 <_ZN9SemaphoreC1Ej>
    80006194:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006198:	01000513          	li	a0,16
    8000619c:	ffffc097          	auipc	ra,0xffffc
    800061a0:	310080e7          	jalr	784(ra) # 800024ac <_Znwm>
    800061a4:	00050913          	mv	s2,a0
    800061a8:	00100593          	li	a1,1
    800061ac:	ffffc097          	auipc	ra,0xffffc
    800061b0:	54c080e7          	jalr	1356(ra) # 800026f8 <_ZN9SemaphoreC1Ej>
    800061b4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800061b8:	01000513          	li	a0,16
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	2f0080e7          	jalr	752(ra) # 800024ac <_Znwm>
    800061c4:	00050913          	mv	s2,a0
    800061c8:	00100593          	li	a1,1
    800061cc:	ffffc097          	auipc	ra,0xffffc
    800061d0:	52c080e7          	jalr	1324(ra) # 800026f8 <_ZN9SemaphoreC1Ej>
    800061d4:	0324b823          	sd	s2,48(s1)
}
    800061d8:	02813083          	ld	ra,40(sp)
    800061dc:	02013403          	ld	s0,32(sp)
    800061e0:	01813483          	ld	s1,24(sp)
    800061e4:	01013903          	ld	s2,16(sp)
    800061e8:	00813983          	ld	s3,8(sp)
    800061ec:	03010113          	addi	sp,sp,48
    800061f0:	00008067          	ret
    800061f4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800061f8:	00098513          	mv	a0,s3
    800061fc:	ffffc097          	auipc	ra,0xffffc
    80006200:	328080e7          	jalr	808(ra) # 80002524 <_ZdlPv>
    80006204:	00048513          	mv	a0,s1
    80006208:	00008097          	auipc	ra,0x8
    8000620c:	df0080e7          	jalr	-528(ra) # 8000dff8 <_Unwind_Resume>
    80006210:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006214:	00098513          	mv	a0,s3
    80006218:	ffffc097          	auipc	ra,0xffffc
    8000621c:	30c080e7          	jalr	780(ra) # 80002524 <_ZdlPv>
    80006220:	00048513          	mv	a0,s1
    80006224:	00008097          	auipc	ra,0x8
    80006228:	dd4080e7          	jalr	-556(ra) # 8000dff8 <_Unwind_Resume>
    8000622c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006230:	00090513          	mv	a0,s2
    80006234:	ffffc097          	auipc	ra,0xffffc
    80006238:	2f0080e7          	jalr	752(ra) # 80002524 <_ZdlPv>
    8000623c:	00048513          	mv	a0,s1
    80006240:	00008097          	auipc	ra,0x8
    80006244:	db8080e7          	jalr	-584(ra) # 8000dff8 <_Unwind_Resume>
    80006248:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000624c:	00090513          	mv	a0,s2
    80006250:	ffffc097          	auipc	ra,0xffffc
    80006254:	2d4080e7          	jalr	724(ra) # 80002524 <_ZdlPv>
    80006258:	00048513          	mv	a0,s1
    8000625c:	00008097          	auipc	ra,0x8
    80006260:	d9c080e7          	jalr	-612(ra) # 8000dff8 <_Unwind_Resume>

0000000080006264 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006264:	fe010113          	addi	sp,sp,-32
    80006268:	00113c23          	sd	ra,24(sp)
    8000626c:	00813823          	sd	s0,16(sp)
    80006270:	00913423          	sd	s1,8(sp)
    80006274:	01213023          	sd	s2,0(sp)
    80006278:	02010413          	addi	s0,sp,32
    8000627c:	00050493          	mv	s1,a0
    80006280:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006284:	01853503          	ld	a0,24(a0)
    80006288:	ffffc097          	auipc	ra,0xffffc
    8000628c:	4ac080e7          	jalr	1196(ra) # 80002734 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006290:	0304b503          	ld	a0,48(s1)
    80006294:	ffffc097          	auipc	ra,0xffffc
    80006298:	4a0080e7          	jalr	1184(ra) # 80002734 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000629c:	0084b783          	ld	a5,8(s1)
    800062a0:	0144a703          	lw	a4,20(s1)
    800062a4:	00271713          	slli	a4,a4,0x2
    800062a8:	00e787b3          	add	a5,a5,a4
    800062ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800062b0:	0144a783          	lw	a5,20(s1)
    800062b4:	0017879b          	addiw	a5,a5,1
    800062b8:	0004a703          	lw	a4,0(s1)
    800062bc:	02e7e7bb          	remw	a5,a5,a4
    800062c0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800062c4:	0304b503          	ld	a0,48(s1)
    800062c8:	ffffc097          	auipc	ra,0xffffc
    800062cc:	4a4080e7          	jalr	1188(ra) # 8000276c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800062d0:	0204b503          	ld	a0,32(s1)
    800062d4:	ffffc097          	auipc	ra,0xffffc
    800062d8:	498080e7          	jalr	1176(ra) # 8000276c <_ZN9Semaphore6signalEv>

}
    800062dc:	01813083          	ld	ra,24(sp)
    800062e0:	01013403          	ld	s0,16(sp)
    800062e4:	00813483          	ld	s1,8(sp)
    800062e8:	00013903          	ld	s2,0(sp)
    800062ec:	02010113          	addi	sp,sp,32
    800062f0:	00008067          	ret

00000000800062f4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800062f4:	fe010113          	addi	sp,sp,-32
    800062f8:	00113c23          	sd	ra,24(sp)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	01213023          	sd	s2,0(sp)
    80006308:	02010413          	addi	s0,sp,32
    8000630c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006310:	02053503          	ld	a0,32(a0)
    80006314:	ffffc097          	auipc	ra,0xffffc
    80006318:	420080e7          	jalr	1056(ra) # 80002734 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000631c:	0284b503          	ld	a0,40(s1)
    80006320:	ffffc097          	auipc	ra,0xffffc
    80006324:	414080e7          	jalr	1044(ra) # 80002734 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006328:	0084b703          	ld	a4,8(s1)
    8000632c:	0104a783          	lw	a5,16(s1)
    80006330:	00279693          	slli	a3,a5,0x2
    80006334:	00d70733          	add	a4,a4,a3
    80006338:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000633c:	0017879b          	addiw	a5,a5,1
    80006340:	0004a703          	lw	a4,0(s1)
    80006344:	02e7e7bb          	remw	a5,a5,a4
    80006348:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000634c:	0284b503          	ld	a0,40(s1)
    80006350:	ffffc097          	auipc	ra,0xffffc
    80006354:	41c080e7          	jalr	1052(ra) # 8000276c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006358:	0184b503          	ld	a0,24(s1)
    8000635c:	ffffc097          	auipc	ra,0xffffc
    80006360:	410080e7          	jalr	1040(ra) # 8000276c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006364:	00090513          	mv	a0,s2
    80006368:	01813083          	ld	ra,24(sp)
    8000636c:	01013403          	ld	s0,16(sp)
    80006370:	00813483          	ld	s1,8(sp)
    80006374:	00013903          	ld	s2,0(sp)
    80006378:	02010113          	addi	sp,sp,32
    8000637c:	00008067          	ret

0000000080006380 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006380:	fe010113          	addi	sp,sp,-32
    80006384:	00113c23          	sd	ra,24(sp)
    80006388:	00813823          	sd	s0,16(sp)
    8000638c:	00913423          	sd	s1,8(sp)
    80006390:	01213023          	sd	s2,0(sp)
    80006394:	02010413          	addi	s0,sp,32
    80006398:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000639c:	02853503          	ld	a0,40(a0)
    800063a0:	ffffc097          	auipc	ra,0xffffc
    800063a4:	394080e7          	jalr	916(ra) # 80002734 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800063a8:	0304b503          	ld	a0,48(s1)
    800063ac:	ffffc097          	auipc	ra,0xffffc
    800063b0:	388080e7          	jalr	904(ra) # 80002734 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800063b4:	0144a783          	lw	a5,20(s1)
    800063b8:	0104a903          	lw	s2,16(s1)
    800063bc:	0327ce63          	blt	a5,s2,800063f8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800063c0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800063c4:	0304b503          	ld	a0,48(s1)
    800063c8:	ffffc097          	auipc	ra,0xffffc
    800063cc:	3a4080e7          	jalr	932(ra) # 8000276c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800063d0:	0284b503          	ld	a0,40(s1)
    800063d4:	ffffc097          	auipc	ra,0xffffc
    800063d8:	398080e7          	jalr	920(ra) # 8000276c <_ZN9Semaphore6signalEv>

    return ret;
}
    800063dc:	00090513          	mv	a0,s2
    800063e0:	01813083          	ld	ra,24(sp)
    800063e4:	01013403          	ld	s0,16(sp)
    800063e8:	00813483          	ld	s1,8(sp)
    800063ec:	00013903          	ld	s2,0(sp)
    800063f0:	02010113          	addi	sp,sp,32
    800063f4:	00008067          	ret
        ret = cap - head + tail;
    800063f8:	0004a703          	lw	a4,0(s1)
    800063fc:	4127093b          	subw	s2,a4,s2
    80006400:	00f9093b          	addw	s2,s2,a5
    80006404:	fc1ff06f          	j	800063c4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006408 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006408:	fe010113          	addi	sp,sp,-32
    8000640c:	00113c23          	sd	ra,24(sp)
    80006410:	00813823          	sd	s0,16(sp)
    80006414:	00913423          	sd	s1,8(sp)
    80006418:	02010413          	addi	s0,sp,32
    8000641c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006420:	00a00513          	li	a0,10
    80006424:	ffffc097          	auipc	ra,0xffffc
    80006428:	424080e7          	jalr	1060(ra) # 80002848 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000642c:	00004517          	auipc	a0,0x4
    80006430:	ef450513          	addi	a0,a0,-268 # 8000a320 <CONSOLE_STATUS+0x310>
    80006434:	00000097          	auipc	ra,0x0
    80006438:	a0c080e7          	jalr	-1524(ra) # 80005e40 <_Z11printStringPKc>
    while (getCnt()) {
    8000643c:	00048513          	mv	a0,s1
    80006440:	00000097          	auipc	ra,0x0
    80006444:	f40080e7          	jalr	-192(ra) # 80006380 <_ZN9BufferCPP6getCntEv>
    80006448:	02050c63          	beqz	a0,80006480 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000644c:	0084b783          	ld	a5,8(s1)
    80006450:	0104a703          	lw	a4,16(s1)
    80006454:	00271713          	slli	a4,a4,0x2
    80006458:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000645c:	0007c503          	lbu	a0,0(a5)
    80006460:	ffffc097          	auipc	ra,0xffffc
    80006464:	3e8080e7          	jalr	1000(ra) # 80002848 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006468:	0104a783          	lw	a5,16(s1)
    8000646c:	0017879b          	addiw	a5,a5,1
    80006470:	0004a703          	lw	a4,0(s1)
    80006474:	02e7e7bb          	remw	a5,a5,a4
    80006478:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000647c:	fc1ff06f          	j	8000643c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006480:	02100513          	li	a0,33
    80006484:	ffffc097          	auipc	ra,0xffffc
    80006488:	3c4080e7          	jalr	964(ra) # 80002848 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000648c:	00a00513          	li	a0,10
    80006490:	ffffc097          	auipc	ra,0xffffc
    80006494:	3b8080e7          	jalr	952(ra) # 80002848 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006498:	0084b503          	ld	a0,8(s1)
    8000649c:	ffffb097          	auipc	ra,0xffffb
    800064a0:	e14080e7          	jalr	-492(ra) # 800012b0 <_Z8mem_freePv>
    delete itemAvailable;
    800064a4:	0204b503          	ld	a0,32(s1)
    800064a8:	00050863          	beqz	a0,800064b8 <_ZN9BufferCPPD1Ev+0xb0>
    800064ac:	00053783          	ld	a5,0(a0)
    800064b0:	0087b783          	ld	a5,8(a5)
    800064b4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800064b8:	0184b503          	ld	a0,24(s1)
    800064bc:	00050863          	beqz	a0,800064cc <_ZN9BufferCPPD1Ev+0xc4>
    800064c0:	00053783          	ld	a5,0(a0)
    800064c4:	0087b783          	ld	a5,8(a5)
    800064c8:	000780e7          	jalr	a5
    delete mutexTail;
    800064cc:	0304b503          	ld	a0,48(s1)
    800064d0:	00050863          	beqz	a0,800064e0 <_ZN9BufferCPPD1Ev+0xd8>
    800064d4:	00053783          	ld	a5,0(a0)
    800064d8:	0087b783          	ld	a5,8(a5)
    800064dc:	000780e7          	jalr	a5
    delete mutexHead;
    800064e0:	0284b503          	ld	a0,40(s1)
    800064e4:	00050863          	beqz	a0,800064f4 <_ZN9BufferCPPD1Ev+0xec>
    800064e8:	00053783          	ld	a5,0(a0)
    800064ec:	0087b783          	ld	a5,8(a5)
    800064f0:	000780e7          	jalr	a5
}
    800064f4:	01813083          	ld	ra,24(sp)
    800064f8:	01013403          	ld	s0,16(sp)
    800064fc:	00813483          	ld	s1,8(sp)
    80006500:	02010113          	addi	sp,sp,32
    80006504:	00008067          	ret

0000000080006508 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006508:	fe010113          	addi	sp,sp,-32
    8000650c:	00113c23          	sd	ra,24(sp)
    80006510:	00813823          	sd	s0,16(sp)
    80006514:	00913423          	sd	s1,8(sp)
    80006518:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000651c:	00004517          	auipc	a0,0x4
    80006520:	e1c50513          	addi	a0,a0,-484 # 8000a338 <CONSOLE_STATUS+0x328>
    80006524:	00000097          	auipc	ra,0x0
    80006528:	91c080e7          	jalr	-1764(ra) # 80005e40 <_Z11printStringPKc>
    int test = getc() - '0';
    8000652c:	ffffb097          	auipc	ra,0xffffb
    80006530:	110080e7          	jalr	272(ra) # 8000163c <_Z4getcv>
    80006534:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	104080e7          	jalr	260(ra) # 8000163c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006540:	00700793          	li	a5,7
    80006544:	1097e263          	bltu	a5,s1,80006648 <_Z8userMainv+0x140>
    80006548:	00249493          	slli	s1,s1,0x2
    8000654c:	00004717          	auipc	a4,0x4
    80006550:	04470713          	addi	a4,a4,68 # 8000a590 <CONSOLE_STATUS+0x580>
    80006554:	00e484b3          	add	s1,s1,a4
    80006558:	0004a783          	lw	a5,0(s1)
    8000655c:	00e787b3          	add	a5,a5,a4
    80006560:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006564:	fffff097          	auipc	ra,0xfffff
    80006568:	f54080e7          	jalr	-172(ra) # 800054b8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000656c:	00004517          	auipc	a0,0x4
    80006570:	dec50513          	addi	a0,a0,-532 # 8000a358 <CONSOLE_STATUS+0x348>
    80006574:	00000097          	auipc	ra,0x0
    80006578:	8cc080e7          	jalr	-1844(ra) # 80005e40 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000657c:	01813083          	ld	ra,24(sp)
    80006580:	01013403          	ld	s0,16(sp)
    80006584:	00813483          	ld	s1,8(sp)
    80006588:	02010113          	addi	sp,sp,32
    8000658c:	00008067          	ret
            Threads_CPP_API_test();
    80006590:	ffffe097          	auipc	ra,0xffffe
    80006594:	df4080e7          	jalr	-524(ra) # 80004384 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006598:	00004517          	auipc	a0,0x4
    8000659c:	e0050513          	addi	a0,a0,-512 # 8000a398 <CONSOLE_STATUS+0x388>
    800065a0:	00000097          	auipc	ra,0x0
    800065a4:	8a0080e7          	jalr	-1888(ra) # 80005e40 <_Z11printStringPKc>
            break;
    800065a8:	fd5ff06f          	j	8000657c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800065ac:	ffffd097          	auipc	ra,0xffffd
    800065b0:	62c080e7          	jalr	1580(ra) # 80003bd8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800065b4:	00004517          	auipc	a0,0x4
    800065b8:	e2450513          	addi	a0,a0,-476 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    800065bc:	00000097          	auipc	ra,0x0
    800065c0:	884080e7          	jalr	-1916(ra) # 80005e40 <_Z11printStringPKc>
            break;
    800065c4:	fb9ff06f          	j	8000657c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800065c8:	fffff097          	auipc	ra,0xfffff
    800065cc:	234080e7          	jalr	564(ra) # 800057fc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800065d0:	00004517          	auipc	a0,0x4
    800065d4:	e5850513          	addi	a0,a0,-424 # 8000a428 <CONSOLE_STATUS+0x418>
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	868080e7          	jalr	-1944(ra) # 80005e40 <_Z11printStringPKc>
            break;
    800065e0:	f9dff06f          	j	8000657c <_Z8userMainv+0x74>
            testSleeping();
    800065e4:	00000097          	auipc	ra,0x0
    800065e8:	11c080e7          	jalr	284(ra) # 80006700 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800065ec:	00004517          	auipc	a0,0x4
    800065f0:	e9450513          	addi	a0,a0,-364 # 8000a480 <CONSOLE_STATUS+0x470>
    800065f4:	00000097          	auipc	ra,0x0
    800065f8:	84c080e7          	jalr	-1972(ra) # 80005e40 <_Z11printStringPKc>
            break;
    800065fc:	f81ff06f          	j	8000657c <_Z8userMainv+0x74>
            testConsumerProducer();
    80006600:	ffffe097          	auipc	ra,0xffffe
    80006604:	258080e7          	jalr	600(ra) # 80004858 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006608:	00004517          	auipc	a0,0x4
    8000660c:	ea850513          	addi	a0,a0,-344 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    80006610:	00000097          	auipc	ra,0x0
    80006614:	830080e7          	jalr	-2000(ra) # 80005e40 <_Z11printStringPKc>
            break;
    80006618:	f65ff06f          	j	8000657c <_Z8userMainv+0x74>
            System_Mode_test();
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	658080e7          	jalr	1624(ra) # 80006c74 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006624:	00004517          	auipc	a0,0x4
    80006628:	ecc50513          	addi	a0,a0,-308 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    8000662c:	00000097          	auipc	ra,0x0
    80006630:	814080e7          	jalr	-2028(ra) # 80005e40 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006634:	00004517          	auipc	a0,0x4
    80006638:	edc50513          	addi	a0,a0,-292 # 8000a510 <CONSOLE_STATUS+0x500>
    8000663c:	00000097          	auipc	ra,0x0
    80006640:	804080e7          	jalr	-2044(ra) # 80005e40 <_Z11printStringPKc>
            break;
    80006644:	f39ff06f          	j	8000657c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006648:	00004517          	auipc	a0,0x4
    8000664c:	f2050513          	addi	a0,a0,-224 # 8000a568 <CONSOLE_STATUS+0x558>
    80006650:	fffff097          	auipc	ra,0xfffff
    80006654:	7f0080e7          	jalr	2032(ra) # 80005e40 <_Z11printStringPKc>
    80006658:	f25ff06f          	j	8000657c <_Z8userMainv+0x74>

000000008000665c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000665c:	fe010113          	addi	sp,sp,-32
    80006660:	00113c23          	sd	ra,24(sp)
    80006664:	00813823          	sd	s0,16(sp)
    80006668:	00913423          	sd	s1,8(sp)
    8000666c:	01213023          	sd	s2,0(sp)
    80006670:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006674:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006678:	00600493          	li	s1,6
    while (--i > 0) {
    8000667c:	fff4849b          	addiw	s1,s1,-1
    80006680:	04905463          	blez	s1,800066c8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006684:	00004517          	auipc	a0,0x4
    80006688:	f2c50513          	addi	a0,a0,-212 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	7b4080e7          	jalr	1972(ra) # 80005e40 <_Z11printStringPKc>
        printInt(sleep_time);
    80006694:	00000613          	li	a2,0
    80006698:	00a00593          	li	a1,10
    8000669c:	0009051b          	sext.w	a0,s2
    800066a0:	00000097          	auipc	ra,0x0
    800066a4:	950080e7          	jalr	-1712(ra) # 80005ff0 <_Z8printIntiii>
        printString(" !\n");
    800066a8:	00004517          	auipc	a0,0x4
    800066ac:	f1050513          	addi	a0,a0,-240 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    800066b0:	fffff097          	auipc	ra,0xfffff
    800066b4:	790080e7          	jalr	1936(ra) # 80005e40 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800066b8:	00090513          	mv	a0,s2
    800066bc:	ffffb097          	auipc	ra,0xffffb
    800066c0:	f34080e7          	jalr	-204(ra) # 800015f0 <_Z10time_sleepm>
    while (--i > 0) {
    800066c4:	fb9ff06f          	j	8000667c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800066c8:	00a00793          	li	a5,10
    800066cc:	02f95933          	divu	s2,s2,a5
    800066d0:	fff90913          	addi	s2,s2,-1
    800066d4:	00007797          	auipc	a5,0x7
    800066d8:	85478793          	addi	a5,a5,-1964 # 8000cf28 <_ZL8finished>
    800066dc:	01278933          	add	s2,a5,s2
    800066e0:	00100793          	li	a5,1
    800066e4:	00f90023          	sb	a5,0(s2)
}
    800066e8:	01813083          	ld	ra,24(sp)
    800066ec:	01013403          	ld	s0,16(sp)
    800066f0:	00813483          	ld	s1,8(sp)
    800066f4:	00013903          	ld	s2,0(sp)
    800066f8:	02010113          	addi	sp,sp,32
    800066fc:	00008067          	ret

0000000080006700 <_Z12testSleepingv>:

void testSleeping() {
    80006700:	fc010113          	addi	sp,sp,-64
    80006704:	02113c23          	sd	ra,56(sp)
    80006708:	02813823          	sd	s0,48(sp)
    8000670c:	02913423          	sd	s1,40(sp)
    80006710:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006714:	00a00793          	li	a5,10
    80006718:	fcf43823          	sd	a5,-48(s0)
    8000671c:	01400793          	li	a5,20
    80006720:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006724:	00000493          	li	s1,0
    80006728:	02c0006f          	j	80006754 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000672c:	00349793          	slli	a5,s1,0x3
    80006730:	fd040613          	addi	a2,s0,-48
    80006734:	00f60633          	add	a2,a2,a5
    80006738:	00000597          	auipc	a1,0x0
    8000673c:	f2458593          	addi	a1,a1,-220 # 8000665c <_ZL9sleepyRunPv>
    80006740:	fc040513          	addi	a0,s0,-64
    80006744:	00f50533          	add	a0,a0,a5
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	bb4080e7          	jalr	-1100(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006750:	0014849b          	addiw	s1,s1,1
    80006754:	00100793          	li	a5,1
    80006758:	fc97dae3          	bge	a5,s1,8000672c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000675c:	00006797          	auipc	a5,0x6
    80006760:	7cc7c783          	lbu	a5,1996(a5) # 8000cf28 <_ZL8finished>
    80006764:	fe078ce3          	beqz	a5,8000675c <_Z12testSleepingv+0x5c>
    80006768:	00006797          	auipc	a5,0x6
    8000676c:	7c17c783          	lbu	a5,1985(a5) # 8000cf29 <_ZL8finished+0x1>
    80006770:	fe0786e3          	beqz	a5,8000675c <_Z12testSleepingv+0x5c>
}
    80006774:	03813083          	ld	ra,56(sp)
    80006778:	03013403          	ld	s0,48(sp)
    8000677c:	02813483          	ld	s1,40(sp)
    80006780:	04010113          	addi	sp,sp,64
    80006784:	00008067          	ret

0000000080006788 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006788:	fe010113          	addi	sp,sp,-32
    8000678c:	00113c23          	sd	ra,24(sp)
    80006790:	00813823          	sd	s0,16(sp)
    80006794:	00913423          	sd	s1,8(sp)
    80006798:	01213023          	sd	s2,0(sp)
    8000679c:	02010413          	addi	s0,sp,32
    800067a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800067a4:	00100793          	li	a5,1
    800067a8:	02a7f863          	bgeu	a5,a0,800067d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800067ac:	00a00793          	li	a5,10
    800067b0:	02f577b3          	remu	a5,a0,a5
    800067b4:	02078e63          	beqz	a5,800067f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800067b8:	fff48513          	addi	a0,s1,-1
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	fcc080e7          	jalr	-52(ra) # 80006788 <_ZL9fibonaccim>
    800067c4:	00050913          	mv	s2,a0
    800067c8:	ffe48513          	addi	a0,s1,-2
    800067cc:	00000097          	auipc	ra,0x0
    800067d0:	fbc080e7          	jalr	-68(ra) # 80006788 <_ZL9fibonaccim>
    800067d4:	00a90533          	add	a0,s2,a0
}
    800067d8:	01813083          	ld	ra,24(sp)
    800067dc:	01013403          	ld	s0,16(sp)
    800067e0:	00813483          	ld	s1,8(sp)
    800067e4:	00013903          	ld	s2,0(sp)
    800067e8:	02010113          	addi	sp,sp,32
    800067ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800067f0:	ffffb097          	auipc	ra,0xffffb
    800067f4:	bec080e7          	jalr	-1044(ra) # 800013dc <_Z15thread_dispatchv>
    800067f8:	fc1ff06f          	j	800067b8 <_ZL9fibonaccim+0x30>

00000000800067fc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800067fc:	fe010113          	addi	sp,sp,-32
    80006800:	00113c23          	sd	ra,24(sp)
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00913423          	sd	s1,8(sp)
    8000680c:	01213023          	sd	s2,0(sp)
    80006810:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006814:	00a00493          	li	s1,10
    80006818:	0400006f          	j	80006858 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000681c:	00004517          	auipc	a0,0x4
    80006820:	a5c50513          	addi	a0,a0,-1444 # 8000a278 <CONSOLE_STATUS+0x268>
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	61c080e7          	jalr	1564(ra) # 80005e40 <_Z11printStringPKc>
    8000682c:	00000613          	li	a2,0
    80006830:	00a00593          	li	a1,10
    80006834:	00048513          	mv	a0,s1
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	7b8080e7          	jalr	1976(ra) # 80005ff0 <_Z8printIntiii>
    80006840:	00004517          	auipc	a0,0x4
    80006844:	c3850513          	addi	a0,a0,-968 # 8000a478 <CONSOLE_STATUS+0x468>
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	5f8080e7          	jalr	1528(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006850:	0014849b          	addiw	s1,s1,1
    80006854:	0ff4f493          	andi	s1,s1,255
    80006858:	00c00793          	li	a5,12
    8000685c:	fc97f0e3          	bgeu	a5,s1,8000681c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006860:	00004517          	auipc	a0,0x4
    80006864:	a2050513          	addi	a0,a0,-1504 # 8000a280 <CONSOLE_STATUS+0x270>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	5d8080e7          	jalr	1496(ra) # 80005e40 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006870:	00500313          	li	t1,5
    thread_dispatch();
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	b68080e7          	jalr	-1176(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000687c:	01000513          	li	a0,16
    80006880:	00000097          	auipc	ra,0x0
    80006884:	f08080e7          	jalr	-248(ra) # 80006788 <_ZL9fibonaccim>
    80006888:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000688c:	00004517          	auipc	a0,0x4
    80006890:	a0450513          	addi	a0,a0,-1532 # 8000a290 <CONSOLE_STATUS+0x280>
    80006894:	fffff097          	auipc	ra,0xfffff
    80006898:	5ac080e7          	jalr	1452(ra) # 80005e40 <_Z11printStringPKc>
    8000689c:	00000613          	li	a2,0
    800068a0:	00a00593          	li	a1,10
    800068a4:	0009051b          	sext.w	a0,s2
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	748080e7          	jalr	1864(ra) # 80005ff0 <_Z8printIntiii>
    800068b0:	00004517          	auipc	a0,0x4
    800068b4:	bc850513          	addi	a0,a0,-1080 # 8000a478 <CONSOLE_STATUS+0x468>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	588080e7          	jalr	1416(ra) # 80005e40 <_Z11printStringPKc>
    800068c0:	0400006f          	j	80006900 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800068c4:	00004517          	auipc	a0,0x4
    800068c8:	9b450513          	addi	a0,a0,-1612 # 8000a278 <CONSOLE_STATUS+0x268>
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	574080e7          	jalr	1396(ra) # 80005e40 <_Z11printStringPKc>
    800068d4:	00000613          	li	a2,0
    800068d8:	00a00593          	li	a1,10
    800068dc:	00048513          	mv	a0,s1
    800068e0:	fffff097          	auipc	ra,0xfffff
    800068e4:	710080e7          	jalr	1808(ra) # 80005ff0 <_Z8printIntiii>
    800068e8:	00004517          	auipc	a0,0x4
    800068ec:	b9050513          	addi	a0,a0,-1136 # 8000a478 <CONSOLE_STATUS+0x468>
    800068f0:	fffff097          	auipc	ra,0xfffff
    800068f4:	550080e7          	jalr	1360(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800068f8:	0014849b          	addiw	s1,s1,1
    800068fc:	0ff4f493          	andi	s1,s1,255
    80006900:	00f00793          	li	a5,15
    80006904:	fc97f0e3          	bgeu	a5,s1,800068c4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006908:	00004517          	auipc	a0,0x4
    8000690c:	99850513          	addi	a0,a0,-1640 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	530080e7          	jalr	1328(ra) # 80005e40 <_Z11printStringPKc>
    finishedD = true;
    80006918:	00100793          	li	a5,1
    8000691c:	00006717          	auipc	a4,0x6
    80006920:	60f70723          	sb	a5,1550(a4) # 8000cf2a <_ZL9finishedD>
    thread_dispatch();
    80006924:	ffffb097          	auipc	ra,0xffffb
    80006928:	ab8080e7          	jalr	-1352(ra) # 800013dc <_Z15thread_dispatchv>
}
    8000692c:	01813083          	ld	ra,24(sp)
    80006930:	01013403          	ld	s0,16(sp)
    80006934:	00813483          	ld	s1,8(sp)
    80006938:	00013903          	ld	s2,0(sp)
    8000693c:	02010113          	addi	sp,sp,32
    80006940:	00008067          	ret

0000000080006944 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006944:	fe010113          	addi	sp,sp,-32
    80006948:	00113c23          	sd	ra,24(sp)
    8000694c:	00813823          	sd	s0,16(sp)
    80006950:	00913423          	sd	s1,8(sp)
    80006954:	01213023          	sd	s2,0(sp)
    80006958:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000695c:	00000493          	li	s1,0
    80006960:	0400006f          	j	800069a0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006964:	00004517          	auipc	a0,0x4
    80006968:	8e450513          	addi	a0,a0,-1820 # 8000a248 <CONSOLE_STATUS+0x238>
    8000696c:	fffff097          	auipc	ra,0xfffff
    80006970:	4d4080e7          	jalr	1236(ra) # 80005e40 <_Z11printStringPKc>
    80006974:	00000613          	li	a2,0
    80006978:	00a00593          	li	a1,10
    8000697c:	00048513          	mv	a0,s1
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	670080e7          	jalr	1648(ra) # 80005ff0 <_Z8printIntiii>
    80006988:	00004517          	auipc	a0,0x4
    8000698c:	af050513          	addi	a0,a0,-1296 # 8000a478 <CONSOLE_STATUS+0x468>
    80006990:	fffff097          	auipc	ra,0xfffff
    80006994:	4b0080e7          	jalr	1200(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006998:	0014849b          	addiw	s1,s1,1
    8000699c:	0ff4f493          	andi	s1,s1,255
    800069a0:	00200793          	li	a5,2
    800069a4:	fc97f0e3          	bgeu	a5,s1,80006964 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800069a8:	00004517          	auipc	a0,0x4
    800069ac:	8a850513          	addi	a0,a0,-1880 # 8000a250 <CONSOLE_STATUS+0x240>
    800069b0:	fffff097          	auipc	ra,0xfffff
    800069b4:	490080e7          	jalr	1168(ra) # 80005e40 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800069b8:	00700313          	li	t1,7
    thread_dispatch();
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	a20080e7          	jalr	-1504(ra) # 800013dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800069c4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800069c8:	00004517          	auipc	a0,0x4
    800069cc:	89850513          	addi	a0,a0,-1896 # 8000a260 <CONSOLE_STATUS+0x250>
    800069d0:	fffff097          	auipc	ra,0xfffff
    800069d4:	470080e7          	jalr	1136(ra) # 80005e40 <_Z11printStringPKc>
    800069d8:	00000613          	li	a2,0
    800069dc:	00a00593          	li	a1,10
    800069e0:	0009051b          	sext.w	a0,s2
    800069e4:	fffff097          	auipc	ra,0xfffff
    800069e8:	60c080e7          	jalr	1548(ra) # 80005ff0 <_Z8printIntiii>
    800069ec:	00004517          	auipc	a0,0x4
    800069f0:	a8c50513          	addi	a0,a0,-1396 # 8000a478 <CONSOLE_STATUS+0x468>
    800069f4:	fffff097          	auipc	ra,0xfffff
    800069f8:	44c080e7          	jalr	1100(ra) # 80005e40 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800069fc:	00c00513          	li	a0,12
    80006a00:	00000097          	auipc	ra,0x0
    80006a04:	d88080e7          	jalr	-632(ra) # 80006788 <_ZL9fibonaccim>
    80006a08:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006a0c:	00004517          	auipc	a0,0x4
    80006a10:	85c50513          	addi	a0,a0,-1956 # 8000a268 <CONSOLE_STATUS+0x258>
    80006a14:	fffff097          	auipc	ra,0xfffff
    80006a18:	42c080e7          	jalr	1068(ra) # 80005e40 <_Z11printStringPKc>
    80006a1c:	00000613          	li	a2,0
    80006a20:	00a00593          	li	a1,10
    80006a24:	0009051b          	sext.w	a0,s2
    80006a28:	fffff097          	auipc	ra,0xfffff
    80006a2c:	5c8080e7          	jalr	1480(ra) # 80005ff0 <_Z8printIntiii>
    80006a30:	00004517          	auipc	a0,0x4
    80006a34:	a4850513          	addi	a0,a0,-1464 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a38:	fffff097          	auipc	ra,0xfffff
    80006a3c:	408080e7          	jalr	1032(ra) # 80005e40 <_Z11printStringPKc>
    80006a40:	0400006f          	j	80006a80 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006a44:	00004517          	auipc	a0,0x4
    80006a48:	80450513          	addi	a0,a0,-2044 # 8000a248 <CONSOLE_STATUS+0x238>
    80006a4c:	fffff097          	auipc	ra,0xfffff
    80006a50:	3f4080e7          	jalr	1012(ra) # 80005e40 <_Z11printStringPKc>
    80006a54:	00000613          	li	a2,0
    80006a58:	00a00593          	li	a1,10
    80006a5c:	00048513          	mv	a0,s1
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	590080e7          	jalr	1424(ra) # 80005ff0 <_Z8printIntiii>
    80006a68:	00004517          	auipc	a0,0x4
    80006a6c:	a1050513          	addi	a0,a0,-1520 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a70:	fffff097          	auipc	ra,0xfffff
    80006a74:	3d0080e7          	jalr	976(ra) # 80005e40 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006a78:	0014849b          	addiw	s1,s1,1
    80006a7c:	0ff4f493          	andi	s1,s1,255
    80006a80:	00500793          	li	a5,5
    80006a84:	fc97f0e3          	bgeu	a5,s1,80006a44 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006a88:	00003517          	auipc	a0,0x3
    80006a8c:	79850513          	addi	a0,a0,1944 # 8000a220 <CONSOLE_STATUS+0x210>
    80006a90:	fffff097          	auipc	ra,0xfffff
    80006a94:	3b0080e7          	jalr	944(ra) # 80005e40 <_Z11printStringPKc>
    finishedC = true;
    80006a98:	00100793          	li	a5,1
    80006a9c:	00006717          	auipc	a4,0x6
    80006aa0:	48f707a3          	sb	a5,1167(a4) # 8000cf2b <_ZL9finishedC>
    thread_dispatch();
    80006aa4:	ffffb097          	auipc	ra,0xffffb
    80006aa8:	938080e7          	jalr	-1736(ra) # 800013dc <_Z15thread_dispatchv>
}
    80006aac:	01813083          	ld	ra,24(sp)
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	00013903          	ld	s2,0(sp)
    80006abc:	02010113          	addi	sp,sp,32
    80006ac0:	00008067          	ret

0000000080006ac4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006ac4:	fe010113          	addi	sp,sp,-32
    80006ac8:	00113c23          	sd	ra,24(sp)
    80006acc:	00813823          	sd	s0,16(sp)
    80006ad0:	00913423          	sd	s1,8(sp)
    80006ad4:	01213023          	sd	s2,0(sp)
    80006ad8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006adc:	00000913          	li	s2,0
    80006ae0:	0400006f          	j	80006b20 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006ae4:	ffffb097          	auipc	ra,0xffffb
    80006ae8:	8f8080e7          	jalr	-1800(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006aec:	00148493          	addi	s1,s1,1
    80006af0:	000027b7          	lui	a5,0x2
    80006af4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006af8:	0097ee63          	bltu	a5,s1,80006b14 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006afc:	00000713          	li	a4,0
    80006b00:	000077b7          	lui	a5,0x7
    80006b04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b08:	fce7eee3          	bltu	a5,a4,80006ae4 <_ZL11workerBodyBPv+0x20>
    80006b0c:	00170713          	addi	a4,a4,1
    80006b10:	ff1ff06f          	j	80006b00 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006b14:	00a00793          	li	a5,10
    80006b18:	04f90663          	beq	s2,a5,80006b64 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006b1c:	00190913          	addi	s2,s2,1
    80006b20:	00f00793          	li	a5,15
    80006b24:	0527e463          	bltu	a5,s2,80006b6c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006b28:	00003517          	auipc	a0,0x3
    80006b2c:	70850513          	addi	a0,a0,1800 # 8000a230 <CONSOLE_STATUS+0x220>
    80006b30:	fffff097          	auipc	ra,0xfffff
    80006b34:	310080e7          	jalr	784(ra) # 80005e40 <_Z11printStringPKc>
    80006b38:	00000613          	li	a2,0
    80006b3c:	00a00593          	li	a1,10
    80006b40:	0009051b          	sext.w	a0,s2
    80006b44:	fffff097          	auipc	ra,0xfffff
    80006b48:	4ac080e7          	jalr	1196(ra) # 80005ff0 <_Z8printIntiii>
    80006b4c:	00004517          	auipc	a0,0x4
    80006b50:	92c50513          	addi	a0,a0,-1748 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b54:	fffff097          	auipc	ra,0xfffff
    80006b58:	2ec080e7          	jalr	748(ra) # 80005e40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006b5c:	00000493          	li	s1,0
    80006b60:	f91ff06f          	j	80006af0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006b64:	14102ff3          	csrr	t6,sepc
    80006b68:	fb5ff06f          	j	80006b1c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006b6c:	00003517          	auipc	a0,0x3
    80006b70:	6cc50513          	addi	a0,a0,1740 # 8000a238 <CONSOLE_STATUS+0x228>
    80006b74:	fffff097          	auipc	ra,0xfffff
    80006b78:	2cc080e7          	jalr	716(ra) # 80005e40 <_Z11printStringPKc>
    finishedB = true;
    80006b7c:	00100793          	li	a5,1
    80006b80:	00006717          	auipc	a4,0x6
    80006b84:	3af70623          	sb	a5,940(a4) # 8000cf2c <_ZL9finishedB>
    thread_dispatch();
    80006b88:	ffffb097          	auipc	ra,0xffffb
    80006b8c:	854080e7          	jalr	-1964(ra) # 800013dc <_Z15thread_dispatchv>
}
    80006b90:	01813083          	ld	ra,24(sp)
    80006b94:	01013403          	ld	s0,16(sp)
    80006b98:	00813483          	ld	s1,8(sp)
    80006b9c:	00013903          	ld	s2,0(sp)
    80006ba0:	02010113          	addi	sp,sp,32
    80006ba4:	00008067          	ret

0000000080006ba8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006ba8:	fe010113          	addi	sp,sp,-32
    80006bac:	00113c23          	sd	ra,24(sp)
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00913423          	sd	s1,8(sp)
    80006bb8:	01213023          	sd	s2,0(sp)
    80006bbc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006bc0:	00000913          	li	s2,0
    80006bc4:	0380006f          	j	80006bfc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006bc8:	ffffb097          	auipc	ra,0xffffb
    80006bcc:	814080e7          	jalr	-2028(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006bd0:	00148493          	addi	s1,s1,1
    80006bd4:	000027b7          	lui	a5,0x2
    80006bd8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006bdc:	0097ee63          	bltu	a5,s1,80006bf8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006be0:	00000713          	li	a4,0
    80006be4:	000077b7          	lui	a5,0x7
    80006be8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006bec:	fce7eee3          	bltu	a5,a4,80006bc8 <_ZL11workerBodyAPv+0x20>
    80006bf0:	00170713          	addi	a4,a4,1
    80006bf4:	ff1ff06f          	j	80006be4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006bf8:	00190913          	addi	s2,s2,1
    80006bfc:	00900793          	li	a5,9
    80006c00:	0527e063          	bltu	a5,s2,80006c40 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	61450513          	addi	a0,a0,1556 # 8000a218 <CONSOLE_STATUS+0x208>
    80006c0c:	fffff097          	auipc	ra,0xfffff
    80006c10:	234080e7          	jalr	564(ra) # 80005e40 <_Z11printStringPKc>
    80006c14:	00000613          	li	a2,0
    80006c18:	00a00593          	li	a1,10
    80006c1c:	0009051b          	sext.w	a0,s2
    80006c20:	fffff097          	auipc	ra,0xfffff
    80006c24:	3d0080e7          	jalr	976(ra) # 80005ff0 <_Z8printIntiii>
    80006c28:	00004517          	auipc	a0,0x4
    80006c2c:	85050513          	addi	a0,a0,-1968 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c30:	fffff097          	auipc	ra,0xfffff
    80006c34:	210080e7          	jalr	528(ra) # 80005e40 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006c38:	00000493          	li	s1,0
    80006c3c:	f99ff06f          	j	80006bd4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006c40:	00003517          	auipc	a0,0x3
    80006c44:	5e050513          	addi	a0,a0,1504 # 8000a220 <CONSOLE_STATUS+0x210>
    80006c48:	fffff097          	auipc	ra,0xfffff
    80006c4c:	1f8080e7          	jalr	504(ra) # 80005e40 <_Z11printStringPKc>
    finishedA = true;
    80006c50:	00100793          	li	a5,1
    80006c54:	00006717          	auipc	a4,0x6
    80006c58:	2cf70ca3          	sb	a5,729(a4) # 8000cf2d <_ZL9finishedA>
}
    80006c5c:	01813083          	ld	ra,24(sp)
    80006c60:	01013403          	ld	s0,16(sp)
    80006c64:	00813483          	ld	s1,8(sp)
    80006c68:	00013903          	ld	s2,0(sp)
    80006c6c:	02010113          	addi	sp,sp,32
    80006c70:	00008067          	ret

0000000080006c74 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006c74:	fd010113          	addi	sp,sp,-48
    80006c78:	02113423          	sd	ra,40(sp)
    80006c7c:	02813023          	sd	s0,32(sp)
    80006c80:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006c84:	00000613          	li	a2,0
    80006c88:	00000597          	auipc	a1,0x0
    80006c8c:	f2058593          	addi	a1,a1,-224 # 80006ba8 <_ZL11workerBodyAPv>
    80006c90:	fd040513          	addi	a0,s0,-48
    80006c94:	ffffa097          	auipc	ra,0xffffa
    80006c98:	668080e7          	jalr	1640(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006c9c:	00003517          	auipc	a0,0x3
    80006ca0:	61450513          	addi	a0,a0,1556 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006ca4:	fffff097          	auipc	ra,0xfffff
    80006ca8:	19c080e7          	jalr	412(ra) # 80005e40 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006cac:	00000613          	li	a2,0
    80006cb0:	00000597          	auipc	a1,0x0
    80006cb4:	e1458593          	addi	a1,a1,-492 # 80006ac4 <_ZL11workerBodyBPv>
    80006cb8:	fd840513          	addi	a0,s0,-40
    80006cbc:	ffffa097          	auipc	ra,0xffffa
    80006cc0:	640080e7          	jalr	1600(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006cc4:	00003517          	auipc	a0,0x3
    80006cc8:	60450513          	addi	a0,a0,1540 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006ccc:	fffff097          	auipc	ra,0xfffff
    80006cd0:	174080e7          	jalr	372(ra) # 80005e40 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006cd4:	00000613          	li	a2,0
    80006cd8:	00000597          	auipc	a1,0x0
    80006cdc:	c6c58593          	addi	a1,a1,-916 # 80006944 <_ZL11workerBodyCPv>
    80006ce0:	fe040513          	addi	a0,s0,-32
    80006ce4:	ffffa097          	auipc	ra,0xffffa
    80006ce8:	618080e7          	jalr	1560(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006cec:	00003517          	auipc	a0,0x3
    80006cf0:	5f450513          	addi	a0,a0,1524 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006cf4:	fffff097          	auipc	ra,0xfffff
    80006cf8:	14c080e7          	jalr	332(ra) # 80005e40 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006cfc:	00000613          	li	a2,0
    80006d00:	00000597          	auipc	a1,0x0
    80006d04:	afc58593          	addi	a1,a1,-1284 # 800067fc <_ZL11workerBodyDPv>
    80006d08:	fe840513          	addi	a0,s0,-24
    80006d0c:	ffffa097          	auipc	ra,0xffffa
    80006d10:	5f0080e7          	jalr	1520(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	5e450513          	addi	a0,a0,1508 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006d1c:	fffff097          	auipc	ra,0xfffff
    80006d20:	124080e7          	jalr	292(ra) # 80005e40 <_Z11printStringPKc>
    80006d24:	00c0006f          	j	80006d30 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006d28:	ffffa097          	auipc	ra,0xffffa
    80006d2c:	6b4080e7          	jalr	1716(ra) # 800013dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006d30:	00006797          	auipc	a5,0x6
    80006d34:	1fd7c783          	lbu	a5,509(a5) # 8000cf2d <_ZL9finishedA>
    80006d38:	fe0788e3          	beqz	a5,80006d28 <_Z16System_Mode_testv+0xb4>
    80006d3c:	00006797          	auipc	a5,0x6
    80006d40:	1f07c783          	lbu	a5,496(a5) # 8000cf2c <_ZL9finishedB>
    80006d44:	fe0782e3          	beqz	a5,80006d28 <_Z16System_Mode_testv+0xb4>
    80006d48:	00006797          	auipc	a5,0x6
    80006d4c:	1e37c783          	lbu	a5,483(a5) # 8000cf2b <_ZL9finishedC>
    80006d50:	fc078ce3          	beqz	a5,80006d28 <_Z16System_Mode_testv+0xb4>
    80006d54:	00006797          	auipc	a5,0x6
    80006d58:	1d67c783          	lbu	a5,470(a5) # 8000cf2a <_ZL9finishedD>
    80006d5c:	fc0786e3          	beqz	a5,80006d28 <_Z16System_Mode_testv+0xb4>
    }

}
    80006d60:	02813083          	ld	ra,40(sp)
    80006d64:	02013403          	ld	s0,32(sp)
    80006d68:	03010113          	addi	sp,sp,48
    80006d6c:	00008067          	ret

0000000080006d70 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00113c23          	sd	ra,24(sp)
    80006d78:	00813823          	sd	s0,16(sp)
    80006d7c:	00913423          	sd	s1,8(sp)
    80006d80:	01213023          	sd	s2,0(sp)
    80006d84:	02010413          	addi	s0,sp,32
    80006d88:	00050493          	mv	s1,a0
    80006d8c:	00058913          	mv	s2,a1
    80006d90:	0015879b          	addiw	a5,a1,1
    80006d94:	0007851b          	sext.w	a0,a5
    80006d98:	00f4a023          	sw	a5,0(s1)
    80006d9c:	0004a823          	sw	zero,16(s1)
    80006da0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006da4:	00251513          	slli	a0,a0,0x2
    80006da8:	ffffa097          	auipc	ra,0xffffa
    80006dac:	4b8080e7          	jalr	1208(ra) # 80001260 <_Z9mem_allocm>
    80006db0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006db4:	00000593          	li	a1,0
    80006db8:	02048513          	addi	a0,s1,32
    80006dbc:	ffffa097          	auipc	ra,0xffffa
    80006dc0:	65c080e7          	jalr	1628(ra) # 80001418 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006dc4:	00090593          	mv	a1,s2
    80006dc8:	01848513          	addi	a0,s1,24
    80006dcc:	ffffa097          	auipc	ra,0xffffa
    80006dd0:	64c080e7          	jalr	1612(ra) # 80001418 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006dd4:	00100593          	li	a1,1
    80006dd8:	02848513          	addi	a0,s1,40
    80006ddc:	ffffa097          	auipc	ra,0xffffa
    80006de0:	63c080e7          	jalr	1596(ra) # 80001418 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006de4:	00100593          	li	a1,1
    80006de8:	03048513          	addi	a0,s1,48
    80006dec:	ffffa097          	auipc	ra,0xffffa
    80006df0:	62c080e7          	jalr	1580(ra) # 80001418 <_Z8sem_openPP3Semj>
}
    80006df4:	01813083          	ld	ra,24(sp)
    80006df8:	01013403          	ld	s0,16(sp)
    80006dfc:	00813483          	ld	s1,8(sp)
    80006e00:	00013903          	ld	s2,0(sp)
    80006e04:	02010113          	addi	sp,sp,32
    80006e08:	00008067          	ret

0000000080006e0c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006e0c:	fe010113          	addi	sp,sp,-32
    80006e10:	00113c23          	sd	ra,24(sp)
    80006e14:	00813823          	sd	s0,16(sp)
    80006e18:	00913423          	sd	s1,8(sp)
    80006e1c:	01213023          	sd	s2,0(sp)
    80006e20:	02010413          	addi	s0,sp,32
    80006e24:	00050493          	mv	s1,a0
    80006e28:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006e2c:	01853503          	ld	a0,24(a0)
    80006e30:	ffffa097          	auipc	ra,0xffffa
    80006e34:	690080e7          	jalr	1680(ra) # 800014c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006e38:	0304b503          	ld	a0,48(s1)
    80006e3c:	ffffa097          	auipc	ra,0xffffa
    80006e40:	684080e7          	jalr	1668(ra) # 800014c0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006e44:	0084b783          	ld	a5,8(s1)
    80006e48:	0144a703          	lw	a4,20(s1)
    80006e4c:	00271713          	slli	a4,a4,0x2
    80006e50:	00e787b3          	add	a5,a5,a4
    80006e54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006e58:	0144a783          	lw	a5,20(s1)
    80006e5c:	0017879b          	addiw	a5,a5,1
    80006e60:	0004a703          	lw	a4,0(s1)
    80006e64:	02e7e7bb          	remw	a5,a5,a4
    80006e68:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006e6c:	0304b503          	ld	a0,48(s1)
    80006e70:	ffffa097          	auipc	ra,0xffffa
    80006e74:	734080e7          	jalr	1844(ra) # 800015a4 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006e78:	0204b503          	ld	a0,32(s1)
    80006e7c:	ffffa097          	auipc	ra,0xffffa
    80006e80:	728080e7          	jalr	1832(ra) # 800015a4 <_Z10sem_signalP3Sem>

}
    80006e84:	01813083          	ld	ra,24(sp)
    80006e88:	01013403          	ld	s0,16(sp)
    80006e8c:	00813483          	ld	s1,8(sp)
    80006e90:	00013903          	ld	s2,0(sp)
    80006e94:	02010113          	addi	sp,sp,32
    80006e98:	00008067          	ret

0000000080006e9c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00113c23          	sd	ra,24(sp)
    80006ea4:	00813823          	sd	s0,16(sp)
    80006ea8:	00913423          	sd	s1,8(sp)
    80006eac:	01213023          	sd	s2,0(sp)
    80006eb0:	02010413          	addi	s0,sp,32
    80006eb4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006eb8:	02053503          	ld	a0,32(a0)
    80006ebc:	ffffa097          	auipc	ra,0xffffa
    80006ec0:	604080e7          	jalr	1540(ra) # 800014c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006ec4:	0284b503          	ld	a0,40(s1)
    80006ec8:	ffffa097          	auipc	ra,0xffffa
    80006ecc:	5f8080e7          	jalr	1528(ra) # 800014c0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006ed0:	0084b703          	ld	a4,8(s1)
    80006ed4:	0104a783          	lw	a5,16(s1)
    80006ed8:	00279693          	slli	a3,a5,0x2
    80006edc:	00d70733          	add	a4,a4,a3
    80006ee0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006ee4:	0017879b          	addiw	a5,a5,1
    80006ee8:	0004a703          	lw	a4,0(s1)
    80006eec:	02e7e7bb          	remw	a5,a5,a4
    80006ef0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006ef4:	0284b503          	ld	a0,40(s1)
    80006ef8:	ffffa097          	auipc	ra,0xffffa
    80006efc:	6ac080e7          	jalr	1708(ra) # 800015a4 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006f00:	0184b503          	ld	a0,24(s1)
    80006f04:	ffffa097          	auipc	ra,0xffffa
    80006f08:	6a0080e7          	jalr	1696(ra) # 800015a4 <_Z10sem_signalP3Sem>

    return ret;
}
    80006f0c:	00090513          	mv	a0,s2
    80006f10:	01813083          	ld	ra,24(sp)
    80006f14:	01013403          	ld	s0,16(sp)
    80006f18:	00813483          	ld	s1,8(sp)
    80006f1c:	00013903          	ld	s2,0(sp)
    80006f20:	02010113          	addi	sp,sp,32
    80006f24:	00008067          	ret

0000000080006f28 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006f28:	fe010113          	addi	sp,sp,-32
    80006f2c:	00113c23          	sd	ra,24(sp)
    80006f30:	00813823          	sd	s0,16(sp)
    80006f34:	00913423          	sd	s1,8(sp)
    80006f38:	01213023          	sd	s2,0(sp)
    80006f3c:	02010413          	addi	s0,sp,32
    80006f40:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006f44:	02853503          	ld	a0,40(a0)
    80006f48:	ffffa097          	auipc	ra,0xffffa
    80006f4c:	578080e7          	jalr	1400(ra) # 800014c0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006f50:	0304b503          	ld	a0,48(s1)
    80006f54:	ffffa097          	auipc	ra,0xffffa
    80006f58:	56c080e7          	jalr	1388(ra) # 800014c0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006f5c:	0144a783          	lw	a5,20(s1)
    80006f60:	0104a903          	lw	s2,16(s1)
    80006f64:	0327ce63          	blt	a5,s2,80006fa0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006f68:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006f6c:	0304b503          	ld	a0,48(s1)
    80006f70:	ffffa097          	auipc	ra,0xffffa
    80006f74:	634080e7          	jalr	1588(ra) # 800015a4 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006f78:	0284b503          	ld	a0,40(s1)
    80006f7c:	ffffa097          	auipc	ra,0xffffa
    80006f80:	628080e7          	jalr	1576(ra) # 800015a4 <_Z10sem_signalP3Sem>

    return ret;
}
    80006f84:	00090513          	mv	a0,s2
    80006f88:	01813083          	ld	ra,24(sp)
    80006f8c:	01013403          	ld	s0,16(sp)
    80006f90:	00813483          	ld	s1,8(sp)
    80006f94:	00013903          	ld	s2,0(sp)
    80006f98:	02010113          	addi	sp,sp,32
    80006f9c:	00008067          	ret
        ret = cap - head + tail;
    80006fa0:	0004a703          	lw	a4,0(s1)
    80006fa4:	4127093b          	subw	s2,a4,s2
    80006fa8:	00f9093b          	addw	s2,s2,a5
    80006fac:	fc1ff06f          	j	80006f6c <_ZN6Buffer6getCntEv+0x44>

0000000080006fb0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006fb0:	fe010113          	addi	sp,sp,-32
    80006fb4:	00113c23          	sd	ra,24(sp)
    80006fb8:	00813823          	sd	s0,16(sp)
    80006fbc:	00913423          	sd	s1,8(sp)
    80006fc0:	02010413          	addi	s0,sp,32
    80006fc4:	00050493          	mv	s1,a0
    putc('\n');
    80006fc8:	00a00513          	li	a0,10
    80006fcc:	ffffa097          	auipc	ra,0xffffa
    80006fd0:	6bc080e7          	jalr	1724(ra) # 80001688 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006fd4:	00003517          	auipc	a0,0x3
    80006fd8:	34c50513          	addi	a0,a0,844 # 8000a320 <CONSOLE_STATUS+0x310>
    80006fdc:	fffff097          	auipc	ra,0xfffff
    80006fe0:	e64080e7          	jalr	-412(ra) # 80005e40 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006fe4:	00048513          	mv	a0,s1
    80006fe8:	00000097          	auipc	ra,0x0
    80006fec:	f40080e7          	jalr	-192(ra) # 80006f28 <_ZN6Buffer6getCntEv>
    80006ff0:	02a05c63          	blez	a0,80007028 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006ff4:	0084b783          	ld	a5,8(s1)
    80006ff8:	0104a703          	lw	a4,16(s1)
    80006ffc:	00271713          	slli	a4,a4,0x2
    80007000:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007004:	0007c503          	lbu	a0,0(a5)
    80007008:	ffffa097          	auipc	ra,0xffffa
    8000700c:	680080e7          	jalr	1664(ra) # 80001688 <_Z4putcc>
        head = (head + 1) % cap;
    80007010:	0104a783          	lw	a5,16(s1)
    80007014:	0017879b          	addiw	a5,a5,1
    80007018:	0004a703          	lw	a4,0(s1)
    8000701c:	02e7e7bb          	remw	a5,a5,a4
    80007020:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007024:	fc1ff06f          	j	80006fe4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007028:	02100513          	li	a0,33
    8000702c:	ffffa097          	auipc	ra,0xffffa
    80007030:	65c080e7          	jalr	1628(ra) # 80001688 <_Z4putcc>
    putc('\n');
    80007034:	00a00513          	li	a0,10
    80007038:	ffffa097          	auipc	ra,0xffffa
    8000703c:	650080e7          	jalr	1616(ra) # 80001688 <_Z4putcc>
    mem_free(buffer);
    80007040:	0084b503          	ld	a0,8(s1)
    80007044:	ffffa097          	auipc	ra,0xffffa
    80007048:	26c080e7          	jalr	620(ra) # 800012b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000704c:	0204b503          	ld	a0,32(s1)
    80007050:	ffffa097          	auipc	ra,0xffffa
    80007054:	418080e7          	jalr	1048(ra) # 80001468 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80007058:	0184b503          	ld	a0,24(s1)
    8000705c:	ffffa097          	auipc	ra,0xffffa
    80007060:	40c080e7          	jalr	1036(ra) # 80001468 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80007064:	0304b503          	ld	a0,48(s1)
    80007068:	ffffa097          	auipc	ra,0xffffa
    8000706c:	400080e7          	jalr	1024(ra) # 80001468 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80007070:	0284b503          	ld	a0,40(s1)
    80007074:	ffffa097          	auipc	ra,0xffffa
    80007078:	3f4080e7          	jalr	1012(ra) # 80001468 <_Z9sem_closeP3Sem>
}
    8000707c:	01813083          	ld	ra,24(sp)
    80007080:	01013403          	ld	s0,16(sp)
    80007084:	00813483          	ld	s1,8(sp)
    80007088:	02010113          	addi	sp,sp,32
    8000708c:	00008067          	ret

0000000080007090 <start>:
    80007090:	ff010113          	addi	sp,sp,-16
    80007094:	00813423          	sd	s0,8(sp)
    80007098:	01010413          	addi	s0,sp,16
    8000709c:	300027f3          	csrr	a5,mstatus
    800070a0:	ffffe737          	lui	a4,0xffffe
    800070a4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff066f>
    800070a8:	00e7f7b3          	and	a5,a5,a4
    800070ac:	00001737          	lui	a4,0x1
    800070b0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800070b4:	00e7e7b3          	or	a5,a5,a4
    800070b8:	30079073          	csrw	mstatus,a5
    800070bc:	00000797          	auipc	a5,0x0
    800070c0:	16078793          	addi	a5,a5,352 # 8000721c <system_main>
    800070c4:	34179073          	csrw	mepc,a5
    800070c8:	00000793          	li	a5,0
    800070cc:	18079073          	csrw	satp,a5
    800070d0:	000107b7          	lui	a5,0x10
    800070d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800070d8:	30279073          	csrw	medeleg,a5
    800070dc:	30379073          	csrw	mideleg,a5
    800070e0:	104027f3          	csrr	a5,sie
    800070e4:	2227e793          	ori	a5,a5,546
    800070e8:	10479073          	csrw	sie,a5
    800070ec:	fff00793          	li	a5,-1
    800070f0:	00a7d793          	srli	a5,a5,0xa
    800070f4:	3b079073          	csrw	pmpaddr0,a5
    800070f8:	00f00793          	li	a5,15
    800070fc:	3a079073          	csrw	pmpcfg0,a5
    80007100:	f14027f3          	csrr	a5,mhartid
    80007104:	0200c737          	lui	a4,0x200c
    80007108:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000710c:	0007869b          	sext.w	a3,a5
    80007110:	00269713          	slli	a4,a3,0x2
    80007114:	000f4637          	lui	a2,0xf4
    80007118:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000711c:	00d70733          	add	a4,a4,a3
    80007120:	0037979b          	slliw	a5,a5,0x3
    80007124:	020046b7          	lui	a3,0x2004
    80007128:	00d787b3          	add	a5,a5,a3
    8000712c:	00c585b3          	add	a1,a1,a2
    80007130:	00371693          	slli	a3,a4,0x3
    80007134:	00006717          	auipc	a4,0x6
    80007138:	dfc70713          	addi	a4,a4,-516 # 8000cf30 <timer_scratch>
    8000713c:	00b7b023          	sd	a1,0(a5)
    80007140:	00d70733          	add	a4,a4,a3
    80007144:	00f73c23          	sd	a5,24(a4)
    80007148:	02c73023          	sd	a2,32(a4)
    8000714c:	34071073          	csrw	mscratch,a4
    80007150:	00000797          	auipc	a5,0x0
    80007154:	6e078793          	addi	a5,a5,1760 # 80007830 <timervec>
    80007158:	30579073          	csrw	mtvec,a5
    8000715c:	300027f3          	csrr	a5,mstatus
    80007160:	0087e793          	ori	a5,a5,8
    80007164:	30079073          	csrw	mstatus,a5
    80007168:	304027f3          	csrr	a5,mie
    8000716c:	0807e793          	ori	a5,a5,128
    80007170:	30479073          	csrw	mie,a5
    80007174:	f14027f3          	csrr	a5,mhartid
    80007178:	0007879b          	sext.w	a5,a5
    8000717c:	00078213          	mv	tp,a5
    80007180:	30200073          	mret
    80007184:	00813403          	ld	s0,8(sp)
    80007188:	01010113          	addi	sp,sp,16
    8000718c:	00008067          	ret

0000000080007190 <timerinit>:
    80007190:	ff010113          	addi	sp,sp,-16
    80007194:	00813423          	sd	s0,8(sp)
    80007198:	01010413          	addi	s0,sp,16
    8000719c:	f14027f3          	csrr	a5,mhartid
    800071a0:	0200c737          	lui	a4,0x200c
    800071a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800071a8:	0007869b          	sext.w	a3,a5
    800071ac:	00269713          	slli	a4,a3,0x2
    800071b0:	000f4637          	lui	a2,0xf4
    800071b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800071b8:	00d70733          	add	a4,a4,a3
    800071bc:	0037979b          	slliw	a5,a5,0x3
    800071c0:	020046b7          	lui	a3,0x2004
    800071c4:	00d787b3          	add	a5,a5,a3
    800071c8:	00c585b3          	add	a1,a1,a2
    800071cc:	00371693          	slli	a3,a4,0x3
    800071d0:	00006717          	auipc	a4,0x6
    800071d4:	d6070713          	addi	a4,a4,-672 # 8000cf30 <timer_scratch>
    800071d8:	00b7b023          	sd	a1,0(a5)
    800071dc:	00d70733          	add	a4,a4,a3
    800071e0:	00f73c23          	sd	a5,24(a4)
    800071e4:	02c73023          	sd	a2,32(a4)
    800071e8:	34071073          	csrw	mscratch,a4
    800071ec:	00000797          	auipc	a5,0x0
    800071f0:	64478793          	addi	a5,a5,1604 # 80007830 <timervec>
    800071f4:	30579073          	csrw	mtvec,a5
    800071f8:	300027f3          	csrr	a5,mstatus
    800071fc:	0087e793          	ori	a5,a5,8
    80007200:	30079073          	csrw	mstatus,a5
    80007204:	304027f3          	csrr	a5,mie
    80007208:	0807e793          	ori	a5,a5,128
    8000720c:	30479073          	csrw	mie,a5
    80007210:	00813403          	ld	s0,8(sp)
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00008067          	ret

000000008000721c <system_main>:
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	00113c23          	sd	ra,24(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	00000097          	auipc	ra,0x0
    80007234:	0c4080e7          	jalr	196(ra) # 800072f4 <cpuid>
    80007238:	00006497          	auipc	s1,0x6
    8000723c:	b9848493          	addi	s1,s1,-1128 # 8000cdd0 <started>
    80007240:	02050263          	beqz	a0,80007264 <system_main+0x48>
    80007244:	0004a783          	lw	a5,0(s1)
    80007248:	0007879b          	sext.w	a5,a5
    8000724c:	fe078ce3          	beqz	a5,80007244 <system_main+0x28>
    80007250:	0ff0000f          	fence
    80007254:	00003517          	auipc	a0,0x3
    80007258:	39c50513          	addi	a0,a0,924 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    8000725c:	00001097          	auipc	ra,0x1
    80007260:	a70080e7          	jalr	-1424(ra) # 80007ccc <panic>
    80007264:	00001097          	auipc	ra,0x1
    80007268:	9c4080e7          	jalr	-1596(ra) # 80007c28 <consoleinit>
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	150080e7          	jalr	336(ra) # 800083bc <printfinit>
    80007274:	00003517          	auipc	a0,0x3
    80007278:	20450513          	addi	a0,a0,516 # 8000a478 <CONSOLE_STATUS+0x468>
    8000727c:	00001097          	auipc	ra,0x1
    80007280:	aac080e7          	jalr	-1364(ra) # 80007d28 <__printf>
    80007284:	00003517          	auipc	a0,0x3
    80007288:	33c50513          	addi	a0,a0,828 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    8000728c:	00001097          	auipc	ra,0x1
    80007290:	a9c080e7          	jalr	-1380(ra) # 80007d28 <__printf>
    80007294:	00003517          	auipc	a0,0x3
    80007298:	1e450513          	addi	a0,a0,484 # 8000a478 <CONSOLE_STATUS+0x468>
    8000729c:	00001097          	auipc	ra,0x1
    800072a0:	a8c080e7          	jalr	-1396(ra) # 80007d28 <__printf>
    800072a4:	00001097          	auipc	ra,0x1
    800072a8:	4a4080e7          	jalr	1188(ra) # 80008748 <kinit>
    800072ac:	00000097          	auipc	ra,0x0
    800072b0:	148080e7          	jalr	328(ra) # 800073f4 <trapinit>
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	16c080e7          	jalr	364(ra) # 80007420 <trapinithart>
    800072bc:	00000097          	auipc	ra,0x0
    800072c0:	5b4080e7          	jalr	1460(ra) # 80007870 <plicinit>
    800072c4:	00000097          	auipc	ra,0x0
    800072c8:	5d4080e7          	jalr	1492(ra) # 80007898 <plicinithart>
    800072cc:	00000097          	auipc	ra,0x0
    800072d0:	078080e7          	jalr	120(ra) # 80007344 <userinit>
    800072d4:	0ff0000f          	fence
    800072d8:	00100793          	li	a5,1
    800072dc:	00003517          	auipc	a0,0x3
    800072e0:	2fc50513          	addi	a0,a0,764 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    800072e4:	00f4a023          	sw	a5,0(s1)
    800072e8:	00001097          	auipc	ra,0x1
    800072ec:	a40080e7          	jalr	-1472(ra) # 80007d28 <__printf>
    800072f0:	0000006f          	j	800072f0 <system_main+0xd4>

00000000800072f4 <cpuid>:
    800072f4:	ff010113          	addi	sp,sp,-16
    800072f8:	00813423          	sd	s0,8(sp)
    800072fc:	01010413          	addi	s0,sp,16
    80007300:	00020513          	mv	a0,tp
    80007304:	00813403          	ld	s0,8(sp)
    80007308:	0005051b          	sext.w	a0,a0
    8000730c:	01010113          	addi	sp,sp,16
    80007310:	00008067          	ret

0000000080007314 <mycpu>:
    80007314:	ff010113          	addi	sp,sp,-16
    80007318:	00813423          	sd	s0,8(sp)
    8000731c:	01010413          	addi	s0,sp,16
    80007320:	00020793          	mv	a5,tp
    80007324:	00813403          	ld	s0,8(sp)
    80007328:	0007879b          	sext.w	a5,a5
    8000732c:	00779793          	slli	a5,a5,0x7
    80007330:	00007517          	auipc	a0,0x7
    80007334:	c3050513          	addi	a0,a0,-976 # 8000df60 <cpus>
    80007338:	00f50533          	add	a0,a0,a5
    8000733c:	01010113          	addi	sp,sp,16
    80007340:	00008067          	ret

0000000080007344 <userinit>:
    80007344:	ff010113          	addi	sp,sp,-16
    80007348:	00813423          	sd	s0,8(sp)
    8000734c:	01010413          	addi	s0,sp,16
    80007350:	00813403          	ld	s0,8(sp)
    80007354:	01010113          	addi	sp,sp,16
    80007358:	ffffb317          	auipc	t1,0xffffb
    8000735c:	fdc30067          	jr	-36(t1) # 80002334 <main>

0000000080007360 <either_copyout>:
    80007360:	ff010113          	addi	sp,sp,-16
    80007364:	00813023          	sd	s0,0(sp)
    80007368:	00113423          	sd	ra,8(sp)
    8000736c:	01010413          	addi	s0,sp,16
    80007370:	02051663          	bnez	a0,8000739c <either_copyout+0x3c>
    80007374:	00058513          	mv	a0,a1
    80007378:	00060593          	mv	a1,a2
    8000737c:	0006861b          	sext.w	a2,a3
    80007380:	00002097          	auipc	ra,0x2
    80007384:	c54080e7          	jalr	-940(ra) # 80008fd4 <__memmove>
    80007388:	00813083          	ld	ra,8(sp)
    8000738c:	00013403          	ld	s0,0(sp)
    80007390:	00000513          	li	a0,0
    80007394:	01010113          	addi	sp,sp,16
    80007398:	00008067          	ret
    8000739c:	00003517          	auipc	a0,0x3
    800073a0:	27c50513          	addi	a0,a0,636 # 8000a618 <CONSOLE_STATUS+0x608>
    800073a4:	00001097          	auipc	ra,0x1
    800073a8:	928080e7          	jalr	-1752(ra) # 80007ccc <panic>

00000000800073ac <either_copyin>:
    800073ac:	ff010113          	addi	sp,sp,-16
    800073b0:	00813023          	sd	s0,0(sp)
    800073b4:	00113423          	sd	ra,8(sp)
    800073b8:	01010413          	addi	s0,sp,16
    800073bc:	02059463          	bnez	a1,800073e4 <either_copyin+0x38>
    800073c0:	00060593          	mv	a1,a2
    800073c4:	0006861b          	sext.w	a2,a3
    800073c8:	00002097          	auipc	ra,0x2
    800073cc:	c0c080e7          	jalr	-1012(ra) # 80008fd4 <__memmove>
    800073d0:	00813083          	ld	ra,8(sp)
    800073d4:	00013403          	ld	s0,0(sp)
    800073d8:	00000513          	li	a0,0
    800073dc:	01010113          	addi	sp,sp,16
    800073e0:	00008067          	ret
    800073e4:	00003517          	auipc	a0,0x3
    800073e8:	25c50513          	addi	a0,a0,604 # 8000a640 <CONSOLE_STATUS+0x630>
    800073ec:	00001097          	auipc	ra,0x1
    800073f0:	8e0080e7          	jalr	-1824(ra) # 80007ccc <panic>

00000000800073f4 <trapinit>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813423          	sd	s0,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	00813403          	ld	s0,8(sp)
    80007404:	00003597          	auipc	a1,0x3
    80007408:	26458593          	addi	a1,a1,612 # 8000a668 <CONSOLE_STATUS+0x658>
    8000740c:	00007517          	auipc	a0,0x7
    80007410:	bd450513          	addi	a0,a0,-1068 # 8000dfe0 <tickslock>
    80007414:	01010113          	addi	sp,sp,16
    80007418:	00001317          	auipc	t1,0x1
    8000741c:	5c030067          	jr	1472(t1) # 800089d8 <initlock>

0000000080007420 <trapinithart>:
    80007420:	ff010113          	addi	sp,sp,-16
    80007424:	00813423          	sd	s0,8(sp)
    80007428:	01010413          	addi	s0,sp,16
    8000742c:	00000797          	auipc	a5,0x0
    80007430:	2f478793          	addi	a5,a5,756 # 80007720 <kernelvec>
    80007434:	10579073          	csrw	stvec,a5
    80007438:	00813403          	ld	s0,8(sp)
    8000743c:	01010113          	addi	sp,sp,16
    80007440:	00008067          	ret

0000000080007444 <usertrap>:
    80007444:	ff010113          	addi	sp,sp,-16
    80007448:	00813423          	sd	s0,8(sp)
    8000744c:	01010413          	addi	s0,sp,16
    80007450:	00813403          	ld	s0,8(sp)
    80007454:	01010113          	addi	sp,sp,16
    80007458:	00008067          	ret

000000008000745c <usertrapret>:
    8000745c:	ff010113          	addi	sp,sp,-16
    80007460:	00813423          	sd	s0,8(sp)
    80007464:	01010413          	addi	s0,sp,16
    80007468:	00813403          	ld	s0,8(sp)
    8000746c:	01010113          	addi	sp,sp,16
    80007470:	00008067          	ret

0000000080007474 <kerneltrap>:
    80007474:	fe010113          	addi	sp,sp,-32
    80007478:	00813823          	sd	s0,16(sp)
    8000747c:	00113c23          	sd	ra,24(sp)
    80007480:	00913423          	sd	s1,8(sp)
    80007484:	02010413          	addi	s0,sp,32
    80007488:	142025f3          	csrr	a1,scause
    8000748c:	100027f3          	csrr	a5,sstatus
    80007490:	0027f793          	andi	a5,a5,2
    80007494:	10079c63          	bnez	a5,800075ac <kerneltrap+0x138>
    80007498:	142027f3          	csrr	a5,scause
    8000749c:	0207ce63          	bltz	a5,800074d8 <kerneltrap+0x64>
    800074a0:	00003517          	auipc	a0,0x3
    800074a4:	21050513          	addi	a0,a0,528 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    800074a8:	00001097          	auipc	ra,0x1
    800074ac:	880080e7          	jalr	-1920(ra) # 80007d28 <__printf>
    800074b0:	141025f3          	csrr	a1,sepc
    800074b4:	14302673          	csrr	a2,stval
    800074b8:	00003517          	auipc	a0,0x3
    800074bc:	20850513          	addi	a0,a0,520 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    800074c0:	00001097          	auipc	ra,0x1
    800074c4:	868080e7          	jalr	-1944(ra) # 80007d28 <__printf>
    800074c8:	00003517          	auipc	a0,0x3
    800074cc:	21050513          	addi	a0,a0,528 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	7fc080e7          	jalr	2044(ra) # 80007ccc <panic>
    800074d8:	0ff7f713          	andi	a4,a5,255
    800074dc:	00900693          	li	a3,9
    800074e0:	04d70063          	beq	a4,a3,80007520 <kerneltrap+0xac>
    800074e4:	fff00713          	li	a4,-1
    800074e8:	03f71713          	slli	a4,a4,0x3f
    800074ec:	00170713          	addi	a4,a4,1
    800074f0:	fae798e3          	bne	a5,a4,800074a0 <kerneltrap+0x2c>
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	e00080e7          	jalr	-512(ra) # 800072f4 <cpuid>
    800074fc:	06050663          	beqz	a0,80007568 <kerneltrap+0xf4>
    80007500:	144027f3          	csrr	a5,sip
    80007504:	ffd7f793          	andi	a5,a5,-3
    80007508:	14479073          	csrw	sip,a5
    8000750c:	01813083          	ld	ra,24(sp)
    80007510:	01013403          	ld	s0,16(sp)
    80007514:	00813483          	ld	s1,8(sp)
    80007518:	02010113          	addi	sp,sp,32
    8000751c:	00008067          	ret
    80007520:	00000097          	auipc	ra,0x0
    80007524:	3c4080e7          	jalr	964(ra) # 800078e4 <plic_claim>
    80007528:	00a00793          	li	a5,10
    8000752c:	00050493          	mv	s1,a0
    80007530:	06f50863          	beq	a0,a5,800075a0 <kerneltrap+0x12c>
    80007534:	fc050ce3          	beqz	a0,8000750c <kerneltrap+0x98>
    80007538:	00050593          	mv	a1,a0
    8000753c:	00003517          	auipc	a0,0x3
    80007540:	15450513          	addi	a0,a0,340 # 8000a690 <CONSOLE_STATUS+0x680>
    80007544:	00000097          	auipc	ra,0x0
    80007548:	7e4080e7          	jalr	2020(ra) # 80007d28 <__printf>
    8000754c:	01013403          	ld	s0,16(sp)
    80007550:	01813083          	ld	ra,24(sp)
    80007554:	00048513          	mv	a0,s1
    80007558:	00813483          	ld	s1,8(sp)
    8000755c:	02010113          	addi	sp,sp,32
    80007560:	00000317          	auipc	t1,0x0
    80007564:	3bc30067          	jr	956(t1) # 8000791c <plic_complete>
    80007568:	00007517          	auipc	a0,0x7
    8000756c:	a7850513          	addi	a0,a0,-1416 # 8000dfe0 <tickslock>
    80007570:	00001097          	auipc	ra,0x1
    80007574:	48c080e7          	jalr	1164(ra) # 800089fc <acquire>
    80007578:	00006717          	auipc	a4,0x6
    8000757c:	85c70713          	addi	a4,a4,-1956 # 8000cdd4 <ticks>
    80007580:	00072783          	lw	a5,0(a4)
    80007584:	00007517          	auipc	a0,0x7
    80007588:	a5c50513          	addi	a0,a0,-1444 # 8000dfe0 <tickslock>
    8000758c:	0017879b          	addiw	a5,a5,1
    80007590:	00f72023          	sw	a5,0(a4)
    80007594:	00001097          	auipc	ra,0x1
    80007598:	534080e7          	jalr	1332(ra) # 80008ac8 <release>
    8000759c:	f65ff06f          	j	80007500 <kerneltrap+0x8c>
    800075a0:	00001097          	auipc	ra,0x1
    800075a4:	090080e7          	jalr	144(ra) # 80008630 <uartintr>
    800075a8:	fa5ff06f          	j	8000754c <kerneltrap+0xd8>
    800075ac:	00003517          	auipc	a0,0x3
    800075b0:	0c450513          	addi	a0,a0,196 # 8000a670 <CONSOLE_STATUS+0x660>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	718080e7          	jalr	1816(ra) # 80007ccc <panic>

00000000800075bc <clockintr>:
    800075bc:	fe010113          	addi	sp,sp,-32
    800075c0:	00813823          	sd	s0,16(sp)
    800075c4:	00913423          	sd	s1,8(sp)
    800075c8:	00113c23          	sd	ra,24(sp)
    800075cc:	02010413          	addi	s0,sp,32
    800075d0:	00007497          	auipc	s1,0x7
    800075d4:	a1048493          	addi	s1,s1,-1520 # 8000dfe0 <tickslock>
    800075d8:	00048513          	mv	a0,s1
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	420080e7          	jalr	1056(ra) # 800089fc <acquire>
    800075e4:	00005717          	auipc	a4,0x5
    800075e8:	7f070713          	addi	a4,a4,2032 # 8000cdd4 <ticks>
    800075ec:	00072783          	lw	a5,0(a4)
    800075f0:	01013403          	ld	s0,16(sp)
    800075f4:	01813083          	ld	ra,24(sp)
    800075f8:	00048513          	mv	a0,s1
    800075fc:	0017879b          	addiw	a5,a5,1
    80007600:	00813483          	ld	s1,8(sp)
    80007604:	00f72023          	sw	a5,0(a4)
    80007608:	02010113          	addi	sp,sp,32
    8000760c:	00001317          	auipc	t1,0x1
    80007610:	4bc30067          	jr	1212(t1) # 80008ac8 <release>

0000000080007614 <devintr>:
    80007614:	142027f3          	csrr	a5,scause
    80007618:	00000513          	li	a0,0
    8000761c:	0007c463          	bltz	a5,80007624 <devintr+0x10>
    80007620:	00008067          	ret
    80007624:	fe010113          	addi	sp,sp,-32
    80007628:	00813823          	sd	s0,16(sp)
    8000762c:	00113c23          	sd	ra,24(sp)
    80007630:	00913423          	sd	s1,8(sp)
    80007634:	02010413          	addi	s0,sp,32
    80007638:	0ff7f713          	andi	a4,a5,255
    8000763c:	00900693          	li	a3,9
    80007640:	04d70c63          	beq	a4,a3,80007698 <devintr+0x84>
    80007644:	fff00713          	li	a4,-1
    80007648:	03f71713          	slli	a4,a4,0x3f
    8000764c:	00170713          	addi	a4,a4,1
    80007650:	00e78c63          	beq	a5,a4,80007668 <devintr+0x54>
    80007654:	01813083          	ld	ra,24(sp)
    80007658:	01013403          	ld	s0,16(sp)
    8000765c:	00813483          	ld	s1,8(sp)
    80007660:	02010113          	addi	sp,sp,32
    80007664:	00008067          	ret
    80007668:	00000097          	auipc	ra,0x0
    8000766c:	c8c080e7          	jalr	-884(ra) # 800072f4 <cpuid>
    80007670:	06050663          	beqz	a0,800076dc <devintr+0xc8>
    80007674:	144027f3          	csrr	a5,sip
    80007678:	ffd7f793          	andi	a5,a5,-3
    8000767c:	14479073          	csrw	sip,a5
    80007680:	01813083          	ld	ra,24(sp)
    80007684:	01013403          	ld	s0,16(sp)
    80007688:	00813483          	ld	s1,8(sp)
    8000768c:	00200513          	li	a0,2
    80007690:	02010113          	addi	sp,sp,32
    80007694:	00008067          	ret
    80007698:	00000097          	auipc	ra,0x0
    8000769c:	24c080e7          	jalr	588(ra) # 800078e4 <plic_claim>
    800076a0:	00a00793          	li	a5,10
    800076a4:	00050493          	mv	s1,a0
    800076a8:	06f50663          	beq	a0,a5,80007714 <devintr+0x100>
    800076ac:	00100513          	li	a0,1
    800076b0:	fa0482e3          	beqz	s1,80007654 <devintr+0x40>
    800076b4:	00048593          	mv	a1,s1
    800076b8:	00003517          	auipc	a0,0x3
    800076bc:	fd850513          	addi	a0,a0,-40 # 8000a690 <CONSOLE_STATUS+0x680>
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	668080e7          	jalr	1640(ra) # 80007d28 <__printf>
    800076c8:	00048513          	mv	a0,s1
    800076cc:	00000097          	auipc	ra,0x0
    800076d0:	250080e7          	jalr	592(ra) # 8000791c <plic_complete>
    800076d4:	00100513          	li	a0,1
    800076d8:	f7dff06f          	j	80007654 <devintr+0x40>
    800076dc:	00007517          	auipc	a0,0x7
    800076e0:	90450513          	addi	a0,a0,-1788 # 8000dfe0 <tickslock>
    800076e4:	00001097          	auipc	ra,0x1
    800076e8:	318080e7          	jalr	792(ra) # 800089fc <acquire>
    800076ec:	00005717          	auipc	a4,0x5
    800076f0:	6e870713          	addi	a4,a4,1768 # 8000cdd4 <ticks>
    800076f4:	00072783          	lw	a5,0(a4)
    800076f8:	00007517          	auipc	a0,0x7
    800076fc:	8e850513          	addi	a0,a0,-1816 # 8000dfe0 <tickslock>
    80007700:	0017879b          	addiw	a5,a5,1
    80007704:	00f72023          	sw	a5,0(a4)
    80007708:	00001097          	auipc	ra,0x1
    8000770c:	3c0080e7          	jalr	960(ra) # 80008ac8 <release>
    80007710:	f65ff06f          	j	80007674 <devintr+0x60>
    80007714:	00001097          	auipc	ra,0x1
    80007718:	f1c080e7          	jalr	-228(ra) # 80008630 <uartintr>
    8000771c:	fadff06f          	j	800076c8 <devintr+0xb4>

0000000080007720 <kernelvec>:
    80007720:	f0010113          	addi	sp,sp,-256
    80007724:	00113023          	sd	ra,0(sp)
    80007728:	00213423          	sd	sp,8(sp)
    8000772c:	00313823          	sd	gp,16(sp)
    80007730:	00413c23          	sd	tp,24(sp)
    80007734:	02513023          	sd	t0,32(sp)
    80007738:	02613423          	sd	t1,40(sp)
    8000773c:	02713823          	sd	t2,48(sp)
    80007740:	02813c23          	sd	s0,56(sp)
    80007744:	04913023          	sd	s1,64(sp)
    80007748:	04a13423          	sd	a0,72(sp)
    8000774c:	04b13823          	sd	a1,80(sp)
    80007750:	04c13c23          	sd	a2,88(sp)
    80007754:	06d13023          	sd	a3,96(sp)
    80007758:	06e13423          	sd	a4,104(sp)
    8000775c:	06f13823          	sd	a5,112(sp)
    80007760:	07013c23          	sd	a6,120(sp)
    80007764:	09113023          	sd	a7,128(sp)
    80007768:	09213423          	sd	s2,136(sp)
    8000776c:	09313823          	sd	s3,144(sp)
    80007770:	09413c23          	sd	s4,152(sp)
    80007774:	0b513023          	sd	s5,160(sp)
    80007778:	0b613423          	sd	s6,168(sp)
    8000777c:	0b713823          	sd	s7,176(sp)
    80007780:	0b813c23          	sd	s8,184(sp)
    80007784:	0d913023          	sd	s9,192(sp)
    80007788:	0da13423          	sd	s10,200(sp)
    8000778c:	0db13823          	sd	s11,208(sp)
    80007790:	0dc13c23          	sd	t3,216(sp)
    80007794:	0fd13023          	sd	t4,224(sp)
    80007798:	0fe13423          	sd	t5,232(sp)
    8000779c:	0ff13823          	sd	t6,240(sp)
    800077a0:	cd5ff0ef          	jal	ra,80007474 <kerneltrap>
    800077a4:	00013083          	ld	ra,0(sp)
    800077a8:	00813103          	ld	sp,8(sp)
    800077ac:	01013183          	ld	gp,16(sp)
    800077b0:	02013283          	ld	t0,32(sp)
    800077b4:	02813303          	ld	t1,40(sp)
    800077b8:	03013383          	ld	t2,48(sp)
    800077bc:	03813403          	ld	s0,56(sp)
    800077c0:	04013483          	ld	s1,64(sp)
    800077c4:	04813503          	ld	a0,72(sp)
    800077c8:	05013583          	ld	a1,80(sp)
    800077cc:	05813603          	ld	a2,88(sp)
    800077d0:	06013683          	ld	a3,96(sp)
    800077d4:	06813703          	ld	a4,104(sp)
    800077d8:	07013783          	ld	a5,112(sp)
    800077dc:	07813803          	ld	a6,120(sp)
    800077e0:	08013883          	ld	a7,128(sp)
    800077e4:	08813903          	ld	s2,136(sp)
    800077e8:	09013983          	ld	s3,144(sp)
    800077ec:	09813a03          	ld	s4,152(sp)
    800077f0:	0a013a83          	ld	s5,160(sp)
    800077f4:	0a813b03          	ld	s6,168(sp)
    800077f8:	0b013b83          	ld	s7,176(sp)
    800077fc:	0b813c03          	ld	s8,184(sp)
    80007800:	0c013c83          	ld	s9,192(sp)
    80007804:	0c813d03          	ld	s10,200(sp)
    80007808:	0d013d83          	ld	s11,208(sp)
    8000780c:	0d813e03          	ld	t3,216(sp)
    80007810:	0e013e83          	ld	t4,224(sp)
    80007814:	0e813f03          	ld	t5,232(sp)
    80007818:	0f013f83          	ld	t6,240(sp)
    8000781c:	10010113          	addi	sp,sp,256
    80007820:	10200073          	sret
    80007824:	00000013          	nop
    80007828:	00000013          	nop
    8000782c:	00000013          	nop

0000000080007830 <timervec>:
    80007830:	34051573          	csrrw	a0,mscratch,a0
    80007834:	00b53023          	sd	a1,0(a0)
    80007838:	00c53423          	sd	a2,8(a0)
    8000783c:	00d53823          	sd	a3,16(a0)
    80007840:	01853583          	ld	a1,24(a0)
    80007844:	02053603          	ld	a2,32(a0)
    80007848:	0005b683          	ld	a3,0(a1)
    8000784c:	00c686b3          	add	a3,a3,a2
    80007850:	00d5b023          	sd	a3,0(a1)
    80007854:	00200593          	li	a1,2
    80007858:	14459073          	csrw	sip,a1
    8000785c:	01053683          	ld	a3,16(a0)
    80007860:	00853603          	ld	a2,8(a0)
    80007864:	00053583          	ld	a1,0(a0)
    80007868:	34051573          	csrrw	a0,mscratch,a0
    8000786c:	30200073          	mret

0000000080007870 <plicinit>:
    80007870:	ff010113          	addi	sp,sp,-16
    80007874:	00813423          	sd	s0,8(sp)
    80007878:	01010413          	addi	s0,sp,16
    8000787c:	00813403          	ld	s0,8(sp)
    80007880:	0c0007b7          	lui	a5,0xc000
    80007884:	00100713          	li	a4,1
    80007888:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000788c:	00e7a223          	sw	a4,4(a5)
    80007890:	01010113          	addi	sp,sp,16
    80007894:	00008067          	ret

0000000080007898 <plicinithart>:
    80007898:	ff010113          	addi	sp,sp,-16
    8000789c:	00813023          	sd	s0,0(sp)
    800078a0:	00113423          	sd	ra,8(sp)
    800078a4:	01010413          	addi	s0,sp,16
    800078a8:	00000097          	auipc	ra,0x0
    800078ac:	a4c080e7          	jalr	-1460(ra) # 800072f4 <cpuid>
    800078b0:	0085171b          	slliw	a4,a0,0x8
    800078b4:	0c0027b7          	lui	a5,0xc002
    800078b8:	00e787b3          	add	a5,a5,a4
    800078bc:	40200713          	li	a4,1026
    800078c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800078c4:	00813083          	ld	ra,8(sp)
    800078c8:	00013403          	ld	s0,0(sp)
    800078cc:	00d5151b          	slliw	a0,a0,0xd
    800078d0:	0c2017b7          	lui	a5,0xc201
    800078d4:	00a78533          	add	a0,a5,a0
    800078d8:	00052023          	sw	zero,0(a0)
    800078dc:	01010113          	addi	sp,sp,16
    800078e0:	00008067          	ret

00000000800078e4 <plic_claim>:
    800078e4:	ff010113          	addi	sp,sp,-16
    800078e8:	00813023          	sd	s0,0(sp)
    800078ec:	00113423          	sd	ra,8(sp)
    800078f0:	01010413          	addi	s0,sp,16
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	a00080e7          	jalr	-1536(ra) # 800072f4 <cpuid>
    800078fc:	00813083          	ld	ra,8(sp)
    80007900:	00013403          	ld	s0,0(sp)
    80007904:	00d5151b          	slliw	a0,a0,0xd
    80007908:	0c2017b7          	lui	a5,0xc201
    8000790c:	00a78533          	add	a0,a5,a0
    80007910:	00452503          	lw	a0,4(a0)
    80007914:	01010113          	addi	sp,sp,16
    80007918:	00008067          	ret

000000008000791c <plic_complete>:
    8000791c:	fe010113          	addi	sp,sp,-32
    80007920:	00813823          	sd	s0,16(sp)
    80007924:	00913423          	sd	s1,8(sp)
    80007928:	00113c23          	sd	ra,24(sp)
    8000792c:	02010413          	addi	s0,sp,32
    80007930:	00050493          	mv	s1,a0
    80007934:	00000097          	auipc	ra,0x0
    80007938:	9c0080e7          	jalr	-1600(ra) # 800072f4 <cpuid>
    8000793c:	01813083          	ld	ra,24(sp)
    80007940:	01013403          	ld	s0,16(sp)
    80007944:	00d5179b          	slliw	a5,a0,0xd
    80007948:	0c201737          	lui	a4,0xc201
    8000794c:	00f707b3          	add	a5,a4,a5
    80007950:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007954:	00813483          	ld	s1,8(sp)
    80007958:	02010113          	addi	sp,sp,32
    8000795c:	00008067          	ret

0000000080007960 <consolewrite>:
    80007960:	fb010113          	addi	sp,sp,-80
    80007964:	04813023          	sd	s0,64(sp)
    80007968:	04113423          	sd	ra,72(sp)
    8000796c:	02913c23          	sd	s1,56(sp)
    80007970:	03213823          	sd	s2,48(sp)
    80007974:	03313423          	sd	s3,40(sp)
    80007978:	03413023          	sd	s4,32(sp)
    8000797c:	01513c23          	sd	s5,24(sp)
    80007980:	05010413          	addi	s0,sp,80
    80007984:	06c05c63          	blez	a2,800079fc <consolewrite+0x9c>
    80007988:	00060993          	mv	s3,a2
    8000798c:	00050a13          	mv	s4,a0
    80007990:	00058493          	mv	s1,a1
    80007994:	00000913          	li	s2,0
    80007998:	fff00a93          	li	s5,-1
    8000799c:	01c0006f          	j	800079b8 <consolewrite+0x58>
    800079a0:	fbf44503          	lbu	a0,-65(s0)
    800079a4:	0019091b          	addiw	s2,s2,1
    800079a8:	00148493          	addi	s1,s1,1
    800079ac:	00001097          	auipc	ra,0x1
    800079b0:	a9c080e7          	jalr	-1380(ra) # 80008448 <uartputc>
    800079b4:	03298063          	beq	s3,s2,800079d4 <consolewrite+0x74>
    800079b8:	00048613          	mv	a2,s1
    800079bc:	00100693          	li	a3,1
    800079c0:	000a0593          	mv	a1,s4
    800079c4:	fbf40513          	addi	a0,s0,-65
    800079c8:	00000097          	auipc	ra,0x0
    800079cc:	9e4080e7          	jalr	-1564(ra) # 800073ac <either_copyin>
    800079d0:	fd5518e3          	bne	a0,s5,800079a0 <consolewrite+0x40>
    800079d4:	04813083          	ld	ra,72(sp)
    800079d8:	04013403          	ld	s0,64(sp)
    800079dc:	03813483          	ld	s1,56(sp)
    800079e0:	02813983          	ld	s3,40(sp)
    800079e4:	02013a03          	ld	s4,32(sp)
    800079e8:	01813a83          	ld	s5,24(sp)
    800079ec:	00090513          	mv	a0,s2
    800079f0:	03013903          	ld	s2,48(sp)
    800079f4:	05010113          	addi	sp,sp,80
    800079f8:	00008067          	ret
    800079fc:	00000913          	li	s2,0
    80007a00:	fd5ff06f          	j	800079d4 <consolewrite+0x74>

0000000080007a04 <consoleread>:
    80007a04:	f9010113          	addi	sp,sp,-112
    80007a08:	06813023          	sd	s0,96(sp)
    80007a0c:	04913c23          	sd	s1,88(sp)
    80007a10:	05213823          	sd	s2,80(sp)
    80007a14:	05313423          	sd	s3,72(sp)
    80007a18:	05413023          	sd	s4,64(sp)
    80007a1c:	03513c23          	sd	s5,56(sp)
    80007a20:	03613823          	sd	s6,48(sp)
    80007a24:	03713423          	sd	s7,40(sp)
    80007a28:	03813023          	sd	s8,32(sp)
    80007a2c:	06113423          	sd	ra,104(sp)
    80007a30:	01913c23          	sd	s9,24(sp)
    80007a34:	07010413          	addi	s0,sp,112
    80007a38:	00060b93          	mv	s7,a2
    80007a3c:	00050913          	mv	s2,a0
    80007a40:	00058c13          	mv	s8,a1
    80007a44:	00060b1b          	sext.w	s6,a2
    80007a48:	00006497          	auipc	s1,0x6
    80007a4c:	5c048493          	addi	s1,s1,1472 # 8000e008 <cons>
    80007a50:	00400993          	li	s3,4
    80007a54:	fff00a13          	li	s4,-1
    80007a58:	00a00a93          	li	s5,10
    80007a5c:	05705e63          	blez	s7,80007ab8 <consoleread+0xb4>
    80007a60:	09c4a703          	lw	a4,156(s1)
    80007a64:	0984a783          	lw	a5,152(s1)
    80007a68:	0007071b          	sext.w	a4,a4
    80007a6c:	08e78463          	beq	a5,a4,80007af4 <consoleread+0xf0>
    80007a70:	07f7f713          	andi	a4,a5,127
    80007a74:	00e48733          	add	a4,s1,a4
    80007a78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007a7c:	0017869b          	addiw	a3,a5,1
    80007a80:	08d4ac23          	sw	a3,152(s1)
    80007a84:	00070c9b          	sext.w	s9,a4
    80007a88:	0b370663          	beq	a4,s3,80007b34 <consoleread+0x130>
    80007a8c:	00100693          	li	a3,1
    80007a90:	f9f40613          	addi	a2,s0,-97
    80007a94:	000c0593          	mv	a1,s8
    80007a98:	00090513          	mv	a0,s2
    80007a9c:	f8e40fa3          	sb	a4,-97(s0)
    80007aa0:	00000097          	auipc	ra,0x0
    80007aa4:	8c0080e7          	jalr	-1856(ra) # 80007360 <either_copyout>
    80007aa8:	01450863          	beq	a0,s4,80007ab8 <consoleread+0xb4>
    80007aac:	001c0c13          	addi	s8,s8,1
    80007ab0:	fffb8b9b          	addiw	s7,s7,-1
    80007ab4:	fb5c94e3          	bne	s9,s5,80007a5c <consoleread+0x58>
    80007ab8:	000b851b          	sext.w	a0,s7
    80007abc:	06813083          	ld	ra,104(sp)
    80007ac0:	06013403          	ld	s0,96(sp)
    80007ac4:	05813483          	ld	s1,88(sp)
    80007ac8:	05013903          	ld	s2,80(sp)
    80007acc:	04813983          	ld	s3,72(sp)
    80007ad0:	04013a03          	ld	s4,64(sp)
    80007ad4:	03813a83          	ld	s5,56(sp)
    80007ad8:	02813b83          	ld	s7,40(sp)
    80007adc:	02013c03          	ld	s8,32(sp)
    80007ae0:	01813c83          	ld	s9,24(sp)
    80007ae4:	40ab053b          	subw	a0,s6,a0
    80007ae8:	03013b03          	ld	s6,48(sp)
    80007aec:	07010113          	addi	sp,sp,112
    80007af0:	00008067          	ret
    80007af4:	00001097          	auipc	ra,0x1
    80007af8:	1d8080e7          	jalr	472(ra) # 80008ccc <push_on>
    80007afc:	0984a703          	lw	a4,152(s1)
    80007b00:	09c4a783          	lw	a5,156(s1)
    80007b04:	0007879b          	sext.w	a5,a5
    80007b08:	fef70ce3          	beq	a4,a5,80007b00 <consoleread+0xfc>
    80007b0c:	00001097          	auipc	ra,0x1
    80007b10:	234080e7          	jalr	564(ra) # 80008d40 <pop_on>
    80007b14:	0984a783          	lw	a5,152(s1)
    80007b18:	07f7f713          	andi	a4,a5,127
    80007b1c:	00e48733          	add	a4,s1,a4
    80007b20:	01874703          	lbu	a4,24(a4)
    80007b24:	0017869b          	addiw	a3,a5,1
    80007b28:	08d4ac23          	sw	a3,152(s1)
    80007b2c:	00070c9b          	sext.w	s9,a4
    80007b30:	f5371ee3          	bne	a4,s3,80007a8c <consoleread+0x88>
    80007b34:	000b851b          	sext.w	a0,s7
    80007b38:	f96bf2e3          	bgeu	s7,s6,80007abc <consoleread+0xb8>
    80007b3c:	08f4ac23          	sw	a5,152(s1)
    80007b40:	f7dff06f          	j	80007abc <consoleread+0xb8>

0000000080007b44 <consputc>:
    80007b44:	10000793          	li	a5,256
    80007b48:	00f50663          	beq	a0,a5,80007b54 <consputc+0x10>
    80007b4c:	00001317          	auipc	t1,0x1
    80007b50:	9f430067          	jr	-1548(t1) # 80008540 <uartputc_sync>
    80007b54:	ff010113          	addi	sp,sp,-16
    80007b58:	00113423          	sd	ra,8(sp)
    80007b5c:	00813023          	sd	s0,0(sp)
    80007b60:	01010413          	addi	s0,sp,16
    80007b64:	00800513          	li	a0,8
    80007b68:	00001097          	auipc	ra,0x1
    80007b6c:	9d8080e7          	jalr	-1576(ra) # 80008540 <uartputc_sync>
    80007b70:	02000513          	li	a0,32
    80007b74:	00001097          	auipc	ra,0x1
    80007b78:	9cc080e7          	jalr	-1588(ra) # 80008540 <uartputc_sync>
    80007b7c:	00013403          	ld	s0,0(sp)
    80007b80:	00813083          	ld	ra,8(sp)
    80007b84:	00800513          	li	a0,8
    80007b88:	01010113          	addi	sp,sp,16
    80007b8c:	00001317          	auipc	t1,0x1
    80007b90:	9b430067          	jr	-1612(t1) # 80008540 <uartputc_sync>

0000000080007b94 <consoleintr>:
    80007b94:	fe010113          	addi	sp,sp,-32
    80007b98:	00813823          	sd	s0,16(sp)
    80007b9c:	00913423          	sd	s1,8(sp)
    80007ba0:	01213023          	sd	s2,0(sp)
    80007ba4:	00113c23          	sd	ra,24(sp)
    80007ba8:	02010413          	addi	s0,sp,32
    80007bac:	00006917          	auipc	s2,0x6
    80007bb0:	45c90913          	addi	s2,s2,1116 # 8000e008 <cons>
    80007bb4:	00050493          	mv	s1,a0
    80007bb8:	00090513          	mv	a0,s2
    80007bbc:	00001097          	auipc	ra,0x1
    80007bc0:	e40080e7          	jalr	-448(ra) # 800089fc <acquire>
    80007bc4:	02048c63          	beqz	s1,80007bfc <consoleintr+0x68>
    80007bc8:	0a092783          	lw	a5,160(s2)
    80007bcc:	09892703          	lw	a4,152(s2)
    80007bd0:	07f00693          	li	a3,127
    80007bd4:	40e7873b          	subw	a4,a5,a4
    80007bd8:	02e6e263          	bltu	a3,a4,80007bfc <consoleintr+0x68>
    80007bdc:	00d00713          	li	a4,13
    80007be0:	04e48063          	beq	s1,a4,80007c20 <consoleintr+0x8c>
    80007be4:	07f7f713          	andi	a4,a5,127
    80007be8:	00e90733          	add	a4,s2,a4
    80007bec:	0017879b          	addiw	a5,a5,1
    80007bf0:	0af92023          	sw	a5,160(s2)
    80007bf4:	00970c23          	sb	s1,24(a4)
    80007bf8:	08f92e23          	sw	a5,156(s2)
    80007bfc:	01013403          	ld	s0,16(sp)
    80007c00:	01813083          	ld	ra,24(sp)
    80007c04:	00813483          	ld	s1,8(sp)
    80007c08:	00013903          	ld	s2,0(sp)
    80007c0c:	00006517          	auipc	a0,0x6
    80007c10:	3fc50513          	addi	a0,a0,1020 # 8000e008 <cons>
    80007c14:	02010113          	addi	sp,sp,32
    80007c18:	00001317          	auipc	t1,0x1
    80007c1c:	eb030067          	jr	-336(t1) # 80008ac8 <release>
    80007c20:	00a00493          	li	s1,10
    80007c24:	fc1ff06f          	j	80007be4 <consoleintr+0x50>

0000000080007c28 <consoleinit>:
    80007c28:	fe010113          	addi	sp,sp,-32
    80007c2c:	00113c23          	sd	ra,24(sp)
    80007c30:	00813823          	sd	s0,16(sp)
    80007c34:	00913423          	sd	s1,8(sp)
    80007c38:	02010413          	addi	s0,sp,32
    80007c3c:	00006497          	auipc	s1,0x6
    80007c40:	3cc48493          	addi	s1,s1,972 # 8000e008 <cons>
    80007c44:	00048513          	mv	a0,s1
    80007c48:	00003597          	auipc	a1,0x3
    80007c4c:	aa058593          	addi	a1,a1,-1376 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007c50:	00001097          	auipc	ra,0x1
    80007c54:	d88080e7          	jalr	-632(ra) # 800089d8 <initlock>
    80007c58:	00000097          	auipc	ra,0x0
    80007c5c:	7ac080e7          	jalr	1964(ra) # 80008404 <uartinit>
    80007c60:	01813083          	ld	ra,24(sp)
    80007c64:	01013403          	ld	s0,16(sp)
    80007c68:	00000797          	auipc	a5,0x0
    80007c6c:	d9c78793          	addi	a5,a5,-612 # 80007a04 <consoleread>
    80007c70:	0af4bc23          	sd	a5,184(s1)
    80007c74:	00000797          	auipc	a5,0x0
    80007c78:	cec78793          	addi	a5,a5,-788 # 80007960 <consolewrite>
    80007c7c:	0cf4b023          	sd	a5,192(s1)
    80007c80:	00813483          	ld	s1,8(sp)
    80007c84:	02010113          	addi	sp,sp,32
    80007c88:	00008067          	ret

0000000080007c8c <console_read>:
    80007c8c:	ff010113          	addi	sp,sp,-16
    80007c90:	00813423          	sd	s0,8(sp)
    80007c94:	01010413          	addi	s0,sp,16
    80007c98:	00813403          	ld	s0,8(sp)
    80007c9c:	00006317          	auipc	t1,0x6
    80007ca0:	42433303          	ld	t1,1060(t1) # 8000e0c0 <devsw+0x10>
    80007ca4:	01010113          	addi	sp,sp,16
    80007ca8:	00030067          	jr	t1

0000000080007cac <console_write>:
    80007cac:	ff010113          	addi	sp,sp,-16
    80007cb0:	00813423          	sd	s0,8(sp)
    80007cb4:	01010413          	addi	s0,sp,16
    80007cb8:	00813403          	ld	s0,8(sp)
    80007cbc:	00006317          	auipc	t1,0x6
    80007cc0:	40c33303          	ld	t1,1036(t1) # 8000e0c8 <devsw+0x18>
    80007cc4:	01010113          	addi	sp,sp,16
    80007cc8:	00030067          	jr	t1

0000000080007ccc <panic>:
    80007ccc:	fe010113          	addi	sp,sp,-32
    80007cd0:	00113c23          	sd	ra,24(sp)
    80007cd4:	00813823          	sd	s0,16(sp)
    80007cd8:	00913423          	sd	s1,8(sp)
    80007cdc:	02010413          	addi	s0,sp,32
    80007ce0:	00050493          	mv	s1,a0
    80007ce4:	00003517          	auipc	a0,0x3
    80007ce8:	a0c50513          	addi	a0,a0,-1524 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007cec:	00006797          	auipc	a5,0x6
    80007cf0:	4607ae23          	sw	zero,1148(a5) # 8000e168 <pr+0x18>
    80007cf4:	00000097          	auipc	ra,0x0
    80007cf8:	034080e7          	jalr	52(ra) # 80007d28 <__printf>
    80007cfc:	00048513          	mv	a0,s1
    80007d00:	00000097          	auipc	ra,0x0
    80007d04:	028080e7          	jalr	40(ra) # 80007d28 <__printf>
    80007d08:	00002517          	auipc	a0,0x2
    80007d0c:	77050513          	addi	a0,a0,1904 # 8000a478 <CONSOLE_STATUS+0x468>
    80007d10:	00000097          	auipc	ra,0x0
    80007d14:	018080e7          	jalr	24(ra) # 80007d28 <__printf>
    80007d18:	00100793          	li	a5,1
    80007d1c:	00005717          	auipc	a4,0x5
    80007d20:	0af72e23          	sw	a5,188(a4) # 8000cdd8 <panicked>
    80007d24:	0000006f          	j	80007d24 <panic+0x58>

0000000080007d28 <__printf>:
    80007d28:	f3010113          	addi	sp,sp,-208
    80007d2c:	08813023          	sd	s0,128(sp)
    80007d30:	07313423          	sd	s3,104(sp)
    80007d34:	09010413          	addi	s0,sp,144
    80007d38:	05813023          	sd	s8,64(sp)
    80007d3c:	08113423          	sd	ra,136(sp)
    80007d40:	06913c23          	sd	s1,120(sp)
    80007d44:	07213823          	sd	s2,112(sp)
    80007d48:	07413023          	sd	s4,96(sp)
    80007d4c:	05513c23          	sd	s5,88(sp)
    80007d50:	05613823          	sd	s6,80(sp)
    80007d54:	05713423          	sd	s7,72(sp)
    80007d58:	03913c23          	sd	s9,56(sp)
    80007d5c:	03a13823          	sd	s10,48(sp)
    80007d60:	03b13423          	sd	s11,40(sp)
    80007d64:	00006317          	auipc	t1,0x6
    80007d68:	3ec30313          	addi	t1,t1,1004 # 8000e150 <pr>
    80007d6c:	01832c03          	lw	s8,24(t1)
    80007d70:	00b43423          	sd	a1,8(s0)
    80007d74:	00c43823          	sd	a2,16(s0)
    80007d78:	00d43c23          	sd	a3,24(s0)
    80007d7c:	02e43023          	sd	a4,32(s0)
    80007d80:	02f43423          	sd	a5,40(s0)
    80007d84:	03043823          	sd	a6,48(s0)
    80007d88:	03143c23          	sd	a7,56(s0)
    80007d8c:	00050993          	mv	s3,a0
    80007d90:	4a0c1663          	bnez	s8,8000823c <__printf+0x514>
    80007d94:	60098c63          	beqz	s3,800083ac <__printf+0x684>
    80007d98:	0009c503          	lbu	a0,0(s3)
    80007d9c:	00840793          	addi	a5,s0,8
    80007da0:	f6f43c23          	sd	a5,-136(s0)
    80007da4:	00000493          	li	s1,0
    80007da8:	22050063          	beqz	a0,80007fc8 <__printf+0x2a0>
    80007dac:	00002a37          	lui	s4,0x2
    80007db0:	00018ab7          	lui	s5,0x18
    80007db4:	000f4b37          	lui	s6,0xf4
    80007db8:	00989bb7          	lui	s7,0x989
    80007dbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007dc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007dc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007dc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007dcc:	00148c9b          	addiw	s9,s1,1
    80007dd0:	02500793          	li	a5,37
    80007dd4:	01998933          	add	s2,s3,s9
    80007dd8:	38f51263          	bne	a0,a5,8000815c <__printf+0x434>
    80007ddc:	00094783          	lbu	a5,0(s2)
    80007de0:	00078c9b          	sext.w	s9,a5
    80007de4:	1e078263          	beqz	a5,80007fc8 <__printf+0x2a0>
    80007de8:	0024849b          	addiw	s1,s1,2
    80007dec:	07000713          	li	a4,112
    80007df0:	00998933          	add	s2,s3,s1
    80007df4:	38e78a63          	beq	a5,a4,80008188 <__printf+0x460>
    80007df8:	20f76863          	bltu	a4,a5,80008008 <__printf+0x2e0>
    80007dfc:	42a78863          	beq	a5,a0,8000822c <__printf+0x504>
    80007e00:	06400713          	li	a4,100
    80007e04:	40e79663          	bne	a5,a4,80008210 <__printf+0x4e8>
    80007e08:	f7843783          	ld	a5,-136(s0)
    80007e0c:	0007a603          	lw	a2,0(a5)
    80007e10:	00878793          	addi	a5,a5,8
    80007e14:	f6f43c23          	sd	a5,-136(s0)
    80007e18:	42064a63          	bltz	a2,8000824c <__printf+0x524>
    80007e1c:	00a00713          	li	a4,10
    80007e20:	02e677bb          	remuw	a5,a2,a4
    80007e24:	00003d97          	auipc	s11,0x3
    80007e28:	8f4d8d93          	addi	s11,s11,-1804 # 8000a718 <digits>
    80007e2c:	00900593          	li	a1,9
    80007e30:	0006051b          	sext.w	a0,a2
    80007e34:	00000c93          	li	s9,0
    80007e38:	02079793          	slli	a5,a5,0x20
    80007e3c:	0207d793          	srli	a5,a5,0x20
    80007e40:	00fd87b3          	add	a5,s11,a5
    80007e44:	0007c783          	lbu	a5,0(a5)
    80007e48:	02e656bb          	divuw	a3,a2,a4
    80007e4c:	f8f40023          	sb	a5,-128(s0)
    80007e50:	14c5d863          	bge	a1,a2,80007fa0 <__printf+0x278>
    80007e54:	06300593          	li	a1,99
    80007e58:	00100c93          	li	s9,1
    80007e5c:	02e6f7bb          	remuw	a5,a3,a4
    80007e60:	02079793          	slli	a5,a5,0x20
    80007e64:	0207d793          	srli	a5,a5,0x20
    80007e68:	00fd87b3          	add	a5,s11,a5
    80007e6c:	0007c783          	lbu	a5,0(a5)
    80007e70:	02e6d73b          	divuw	a4,a3,a4
    80007e74:	f8f400a3          	sb	a5,-127(s0)
    80007e78:	12a5f463          	bgeu	a1,a0,80007fa0 <__printf+0x278>
    80007e7c:	00a00693          	li	a3,10
    80007e80:	00900593          	li	a1,9
    80007e84:	02d777bb          	remuw	a5,a4,a3
    80007e88:	02079793          	slli	a5,a5,0x20
    80007e8c:	0207d793          	srli	a5,a5,0x20
    80007e90:	00fd87b3          	add	a5,s11,a5
    80007e94:	0007c503          	lbu	a0,0(a5)
    80007e98:	02d757bb          	divuw	a5,a4,a3
    80007e9c:	f8a40123          	sb	a0,-126(s0)
    80007ea0:	48e5f263          	bgeu	a1,a4,80008324 <__printf+0x5fc>
    80007ea4:	06300513          	li	a0,99
    80007ea8:	02d7f5bb          	remuw	a1,a5,a3
    80007eac:	02059593          	slli	a1,a1,0x20
    80007eb0:	0205d593          	srli	a1,a1,0x20
    80007eb4:	00bd85b3          	add	a1,s11,a1
    80007eb8:	0005c583          	lbu	a1,0(a1)
    80007ebc:	02d7d7bb          	divuw	a5,a5,a3
    80007ec0:	f8b401a3          	sb	a1,-125(s0)
    80007ec4:	48e57263          	bgeu	a0,a4,80008348 <__printf+0x620>
    80007ec8:	3e700513          	li	a0,999
    80007ecc:	02d7f5bb          	remuw	a1,a5,a3
    80007ed0:	02059593          	slli	a1,a1,0x20
    80007ed4:	0205d593          	srli	a1,a1,0x20
    80007ed8:	00bd85b3          	add	a1,s11,a1
    80007edc:	0005c583          	lbu	a1,0(a1)
    80007ee0:	02d7d7bb          	divuw	a5,a5,a3
    80007ee4:	f8b40223          	sb	a1,-124(s0)
    80007ee8:	46e57663          	bgeu	a0,a4,80008354 <__printf+0x62c>
    80007eec:	02d7f5bb          	remuw	a1,a5,a3
    80007ef0:	02059593          	slli	a1,a1,0x20
    80007ef4:	0205d593          	srli	a1,a1,0x20
    80007ef8:	00bd85b3          	add	a1,s11,a1
    80007efc:	0005c583          	lbu	a1,0(a1)
    80007f00:	02d7d7bb          	divuw	a5,a5,a3
    80007f04:	f8b402a3          	sb	a1,-123(s0)
    80007f08:	46ea7863          	bgeu	s4,a4,80008378 <__printf+0x650>
    80007f0c:	02d7f5bb          	remuw	a1,a5,a3
    80007f10:	02059593          	slli	a1,a1,0x20
    80007f14:	0205d593          	srli	a1,a1,0x20
    80007f18:	00bd85b3          	add	a1,s11,a1
    80007f1c:	0005c583          	lbu	a1,0(a1)
    80007f20:	02d7d7bb          	divuw	a5,a5,a3
    80007f24:	f8b40323          	sb	a1,-122(s0)
    80007f28:	3eeaf863          	bgeu	s5,a4,80008318 <__printf+0x5f0>
    80007f2c:	02d7f5bb          	remuw	a1,a5,a3
    80007f30:	02059593          	slli	a1,a1,0x20
    80007f34:	0205d593          	srli	a1,a1,0x20
    80007f38:	00bd85b3          	add	a1,s11,a1
    80007f3c:	0005c583          	lbu	a1,0(a1)
    80007f40:	02d7d7bb          	divuw	a5,a5,a3
    80007f44:	f8b403a3          	sb	a1,-121(s0)
    80007f48:	42eb7e63          	bgeu	s6,a4,80008384 <__printf+0x65c>
    80007f4c:	02d7f5bb          	remuw	a1,a5,a3
    80007f50:	02059593          	slli	a1,a1,0x20
    80007f54:	0205d593          	srli	a1,a1,0x20
    80007f58:	00bd85b3          	add	a1,s11,a1
    80007f5c:	0005c583          	lbu	a1,0(a1)
    80007f60:	02d7d7bb          	divuw	a5,a5,a3
    80007f64:	f8b40423          	sb	a1,-120(s0)
    80007f68:	42ebfc63          	bgeu	s7,a4,800083a0 <__printf+0x678>
    80007f6c:	02079793          	slli	a5,a5,0x20
    80007f70:	0207d793          	srli	a5,a5,0x20
    80007f74:	00fd8db3          	add	s11,s11,a5
    80007f78:	000dc703          	lbu	a4,0(s11)
    80007f7c:	00a00793          	li	a5,10
    80007f80:	00900c93          	li	s9,9
    80007f84:	f8e404a3          	sb	a4,-119(s0)
    80007f88:	00065c63          	bgez	a2,80007fa0 <__printf+0x278>
    80007f8c:	f9040713          	addi	a4,s0,-112
    80007f90:	00f70733          	add	a4,a4,a5
    80007f94:	02d00693          	li	a3,45
    80007f98:	fed70823          	sb	a3,-16(a4)
    80007f9c:	00078c93          	mv	s9,a5
    80007fa0:	f8040793          	addi	a5,s0,-128
    80007fa4:	01978cb3          	add	s9,a5,s9
    80007fa8:	f7f40d13          	addi	s10,s0,-129
    80007fac:	000cc503          	lbu	a0,0(s9)
    80007fb0:	fffc8c93          	addi	s9,s9,-1
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	b90080e7          	jalr	-1136(ra) # 80007b44 <consputc>
    80007fbc:	ffac98e3          	bne	s9,s10,80007fac <__printf+0x284>
    80007fc0:	00094503          	lbu	a0,0(s2)
    80007fc4:	e00514e3          	bnez	a0,80007dcc <__printf+0xa4>
    80007fc8:	1a0c1663          	bnez	s8,80008174 <__printf+0x44c>
    80007fcc:	08813083          	ld	ra,136(sp)
    80007fd0:	08013403          	ld	s0,128(sp)
    80007fd4:	07813483          	ld	s1,120(sp)
    80007fd8:	07013903          	ld	s2,112(sp)
    80007fdc:	06813983          	ld	s3,104(sp)
    80007fe0:	06013a03          	ld	s4,96(sp)
    80007fe4:	05813a83          	ld	s5,88(sp)
    80007fe8:	05013b03          	ld	s6,80(sp)
    80007fec:	04813b83          	ld	s7,72(sp)
    80007ff0:	04013c03          	ld	s8,64(sp)
    80007ff4:	03813c83          	ld	s9,56(sp)
    80007ff8:	03013d03          	ld	s10,48(sp)
    80007ffc:	02813d83          	ld	s11,40(sp)
    80008000:	0d010113          	addi	sp,sp,208
    80008004:	00008067          	ret
    80008008:	07300713          	li	a4,115
    8000800c:	1ce78a63          	beq	a5,a4,800081e0 <__printf+0x4b8>
    80008010:	07800713          	li	a4,120
    80008014:	1ee79e63          	bne	a5,a4,80008210 <__printf+0x4e8>
    80008018:	f7843783          	ld	a5,-136(s0)
    8000801c:	0007a703          	lw	a4,0(a5)
    80008020:	00878793          	addi	a5,a5,8
    80008024:	f6f43c23          	sd	a5,-136(s0)
    80008028:	28074263          	bltz	a4,800082ac <__printf+0x584>
    8000802c:	00002d97          	auipc	s11,0x2
    80008030:	6ecd8d93          	addi	s11,s11,1772 # 8000a718 <digits>
    80008034:	00f77793          	andi	a5,a4,15
    80008038:	00fd87b3          	add	a5,s11,a5
    8000803c:	0007c683          	lbu	a3,0(a5)
    80008040:	00f00613          	li	a2,15
    80008044:	0007079b          	sext.w	a5,a4
    80008048:	f8d40023          	sb	a3,-128(s0)
    8000804c:	0047559b          	srliw	a1,a4,0x4
    80008050:	0047569b          	srliw	a3,a4,0x4
    80008054:	00000c93          	li	s9,0
    80008058:	0ee65063          	bge	a2,a4,80008138 <__printf+0x410>
    8000805c:	00f6f693          	andi	a3,a3,15
    80008060:	00dd86b3          	add	a3,s11,a3
    80008064:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008068:	0087d79b          	srliw	a5,a5,0x8
    8000806c:	00100c93          	li	s9,1
    80008070:	f8d400a3          	sb	a3,-127(s0)
    80008074:	0cb67263          	bgeu	a2,a1,80008138 <__printf+0x410>
    80008078:	00f7f693          	andi	a3,a5,15
    8000807c:	00dd86b3          	add	a3,s11,a3
    80008080:	0006c583          	lbu	a1,0(a3)
    80008084:	00f00613          	li	a2,15
    80008088:	0047d69b          	srliw	a3,a5,0x4
    8000808c:	f8b40123          	sb	a1,-126(s0)
    80008090:	0047d593          	srli	a1,a5,0x4
    80008094:	28f67e63          	bgeu	a2,a5,80008330 <__printf+0x608>
    80008098:	00f6f693          	andi	a3,a3,15
    8000809c:	00dd86b3          	add	a3,s11,a3
    800080a0:	0006c503          	lbu	a0,0(a3)
    800080a4:	0087d813          	srli	a6,a5,0x8
    800080a8:	0087d69b          	srliw	a3,a5,0x8
    800080ac:	f8a401a3          	sb	a0,-125(s0)
    800080b0:	28b67663          	bgeu	a2,a1,8000833c <__printf+0x614>
    800080b4:	00f6f693          	andi	a3,a3,15
    800080b8:	00dd86b3          	add	a3,s11,a3
    800080bc:	0006c583          	lbu	a1,0(a3)
    800080c0:	00c7d513          	srli	a0,a5,0xc
    800080c4:	00c7d69b          	srliw	a3,a5,0xc
    800080c8:	f8b40223          	sb	a1,-124(s0)
    800080cc:	29067a63          	bgeu	a2,a6,80008360 <__printf+0x638>
    800080d0:	00f6f693          	andi	a3,a3,15
    800080d4:	00dd86b3          	add	a3,s11,a3
    800080d8:	0006c583          	lbu	a1,0(a3)
    800080dc:	0107d813          	srli	a6,a5,0x10
    800080e0:	0107d69b          	srliw	a3,a5,0x10
    800080e4:	f8b402a3          	sb	a1,-123(s0)
    800080e8:	28a67263          	bgeu	a2,a0,8000836c <__printf+0x644>
    800080ec:	00f6f693          	andi	a3,a3,15
    800080f0:	00dd86b3          	add	a3,s11,a3
    800080f4:	0006c683          	lbu	a3,0(a3)
    800080f8:	0147d79b          	srliw	a5,a5,0x14
    800080fc:	f8d40323          	sb	a3,-122(s0)
    80008100:	21067663          	bgeu	a2,a6,8000830c <__printf+0x5e4>
    80008104:	02079793          	slli	a5,a5,0x20
    80008108:	0207d793          	srli	a5,a5,0x20
    8000810c:	00fd8db3          	add	s11,s11,a5
    80008110:	000dc683          	lbu	a3,0(s11)
    80008114:	00800793          	li	a5,8
    80008118:	00700c93          	li	s9,7
    8000811c:	f8d403a3          	sb	a3,-121(s0)
    80008120:	00075c63          	bgez	a4,80008138 <__printf+0x410>
    80008124:	f9040713          	addi	a4,s0,-112
    80008128:	00f70733          	add	a4,a4,a5
    8000812c:	02d00693          	li	a3,45
    80008130:	fed70823          	sb	a3,-16(a4)
    80008134:	00078c93          	mv	s9,a5
    80008138:	f8040793          	addi	a5,s0,-128
    8000813c:	01978cb3          	add	s9,a5,s9
    80008140:	f7f40d13          	addi	s10,s0,-129
    80008144:	000cc503          	lbu	a0,0(s9)
    80008148:	fffc8c93          	addi	s9,s9,-1
    8000814c:	00000097          	auipc	ra,0x0
    80008150:	9f8080e7          	jalr	-1544(ra) # 80007b44 <consputc>
    80008154:	ff9d18e3          	bne	s10,s9,80008144 <__printf+0x41c>
    80008158:	0100006f          	j	80008168 <__printf+0x440>
    8000815c:	00000097          	auipc	ra,0x0
    80008160:	9e8080e7          	jalr	-1560(ra) # 80007b44 <consputc>
    80008164:	000c8493          	mv	s1,s9
    80008168:	00094503          	lbu	a0,0(s2)
    8000816c:	c60510e3          	bnez	a0,80007dcc <__printf+0xa4>
    80008170:	e40c0ee3          	beqz	s8,80007fcc <__printf+0x2a4>
    80008174:	00006517          	auipc	a0,0x6
    80008178:	fdc50513          	addi	a0,a0,-36 # 8000e150 <pr>
    8000817c:	00001097          	auipc	ra,0x1
    80008180:	94c080e7          	jalr	-1716(ra) # 80008ac8 <release>
    80008184:	e49ff06f          	j	80007fcc <__printf+0x2a4>
    80008188:	f7843783          	ld	a5,-136(s0)
    8000818c:	03000513          	li	a0,48
    80008190:	01000d13          	li	s10,16
    80008194:	00878713          	addi	a4,a5,8
    80008198:	0007bc83          	ld	s9,0(a5)
    8000819c:	f6e43c23          	sd	a4,-136(s0)
    800081a0:	00000097          	auipc	ra,0x0
    800081a4:	9a4080e7          	jalr	-1628(ra) # 80007b44 <consputc>
    800081a8:	07800513          	li	a0,120
    800081ac:	00000097          	auipc	ra,0x0
    800081b0:	998080e7          	jalr	-1640(ra) # 80007b44 <consputc>
    800081b4:	00002d97          	auipc	s11,0x2
    800081b8:	564d8d93          	addi	s11,s11,1380 # 8000a718 <digits>
    800081bc:	03ccd793          	srli	a5,s9,0x3c
    800081c0:	00fd87b3          	add	a5,s11,a5
    800081c4:	0007c503          	lbu	a0,0(a5)
    800081c8:	fffd0d1b          	addiw	s10,s10,-1
    800081cc:	004c9c93          	slli	s9,s9,0x4
    800081d0:	00000097          	auipc	ra,0x0
    800081d4:	974080e7          	jalr	-1676(ra) # 80007b44 <consputc>
    800081d8:	fe0d12e3          	bnez	s10,800081bc <__printf+0x494>
    800081dc:	f8dff06f          	j	80008168 <__printf+0x440>
    800081e0:	f7843783          	ld	a5,-136(s0)
    800081e4:	0007bc83          	ld	s9,0(a5)
    800081e8:	00878793          	addi	a5,a5,8
    800081ec:	f6f43c23          	sd	a5,-136(s0)
    800081f0:	000c9a63          	bnez	s9,80008204 <__printf+0x4dc>
    800081f4:	1080006f          	j	800082fc <__printf+0x5d4>
    800081f8:	001c8c93          	addi	s9,s9,1
    800081fc:	00000097          	auipc	ra,0x0
    80008200:	948080e7          	jalr	-1720(ra) # 80007b44 <consputc>
    80008204:	000cc503          	lbu	a0,0(s9)
    80008208:	fe0518e3          	bnez	a0,800081f8 <__printf+0x4d0>
    8000820c:	f5dff06f          	j	80008168 <__printf+0x440>
    80008210:	02500513          	li	a0,37
    80008214:	00000097          	auipc	ra,0x0
    80008218:	930080e7          	jalr	-1744(ra) # 80007b44 <consputc>
    8000821c:	000c8513          	mv	a0,s9
    80008220:	00000097          	auipc	ra,0x0
    80008224:	924080e7          	jalr	-1756(ra) # 80007b44 <consputc>
    80008228:	f41ff06f          	j	80008168 <__printf+0x440>
    8000822c:	02500513          	li	a0,37
    80008230:	00000097          	auipc	ra,0x0
    80008234:	914080e7          	jalr	-1772(ra) # 80007b44 <consputc>
    80008238:	f31ff06f          	j	80008168 <__printf+0x440>
    8000823c:	00030513          	mv	a0,t1
    80008240:	00000097          	auipc	ra,0x0
    80008244:	7bc080e7          	jalr	1980(ra) # 800089fc <acquire>
    80008248:	b4dff06f          	j	80007d94 <__printf+0x6c>
    8000824c:	40c0053b          	negw	a0,a2
    80008250:	00a00713          	li	a4,10
    80008254:	02e576bb          	remuw	a3,a0,a4
    80008258:	00002d97          	auipc	s11,0x2
    8000825c:	4c0d8d93          	addi	s11,s11,1216 # 8000a718 <digits>
    80008260:	ff700593          	li	a1,-9
    80008264:	02069693          	slli	a3,a3,0x20
    80008268:	0206d693          	srli	a3,a3,0x20
    8000826c:	00dd86b3          	add	a3,s11,a3
    80008270:	0006c683          	lbu	a3,0(a3)
    80008274:	02e557bb          	divuw	a5,a0,a4
    80008278:	f8d40023          	sb	a3,-128(s0)
    8000827c:	10b65e63          	bge	a2,a1,80008398 <__printf+0x670>
    80008280:	06300593          	li	a1,99
    80008284:	02e7f6bb          	remuw	a3,a5,a4
    80008288:	02069693          	slli	a3,a3,0x20
    8000828c:	0206d693          	srli	a3,a3,0x20
    80008290:	00dd86b3          	add	a3,s11,a3
    80008294:	0006c683          	lbu	a3,0(a3)
    80008298:	02e7d73b          	divuw	a4,a5,a4
    8000829c:	00200793          	li	a5,2
    800082a0:	f8d400a3          	sb	a3,-127(s0)
    800082a4:	bca5ece3          	bltu	a1,a0,80007e7c <__printf+0x154>
    800082a8:	ce5ff06f          	j	80007f8c <__printf+0x264>
    800082ac:	40e007bb          	negw	a5,a4
    800082b0:	00002d97          	auipc	s11,0x2
    800082b4:	468d8d93          	addi	s11,s11,1128 # 8000a718 <digits>
    800082b8:	00f7f693          	andi	a3,a5,15
    800082bc:	00dd86b3          	add	a3,s11,a3
    800082c0:	0006c583          	lbu	a1,0(a3)
    800082c4:	ff100613          	li	a2,-15
    800082c8:	0047d69b          	srliw	a3,a5,0x4
    800082cc:	f8b40023          	sb	a1,-128(s0)
    800082d0:	0047d59b          	srliw	a1,a5,0x4
    800082d4:	0ac75e63          	bge	a4,a2,80008390 <__printf+0x668>
    800082d8:	00f6f693          	andi	a3,a3,15
    800082dc:	00dd86b3          	add	a3,s11,a3
    800082e0:	0006c603          	lbu	a2,0(a3)
    800082e4:	00f00693          	li	a3,15
    800082e8:	0087d79b          	srliw	a5,a5,0x8
    800082ec:	f8c400a3          	sb	a2,-127(s0)
    800082f0:	d8b6e4e3          	bltu	a3,a1,80008078 <__printf+0x350>
    800082f4:	00200793          	li	a5,2
    800082f8:	e2dff06f          	j	80008124 <__printf+0x3fc>
    800082fc:	00002c97          	auipc	s9,0x2
    80008300:	3fcc8c93          	addi	s9,s9,1020 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80008304:	02800513          	li	a0,40
    80008308:	ef1ff06f          	j	800081f8 <__printf+0x4d0>
    8000830c:	00700793          	li	a5,7
    80008310:	00600c93          	li	s9,6
    80008314:	e0dff06f          	j	80008120 <__printf+0x3f8>
    80008318:	00700793          	li	a5,7
    8000831c:	00600c93          	li	s9,6
    80008320:	c69ff06f          	j	80007f88 <__printf+0x260>
    80008324:	00300793          	li	a5,3
    80008328:	00200c93          	li	s9,2
    8000832c:	c5dff06f          	j	80007f88 <__printf+0x260>
    80008330:	00300793          	li	a5,3
    80008334:	00200c93          	li	s9,2
    80008338:	de9ff06f          	j	80008120 <__printf+0x3f8>
    8000833c:	00400793          	li	a5,4
    80008340:	00300c93          	li	s9,3
    80008344:	dddff06f          	j	80008120 <__printf+0x3f8>
    80008348:	00400793          	li	a5,4
    8000834c:	00300c93          	li	s9,3
    80008350:	c39ff06f          	j	80007f88 <__printf+0x260>
    80008354:	00500793          	li	a5,5
    80008358:	00400c93          	li	s9,4
    8000835c:	c2dff06f          	j	80007f88 <__printf+0x260>
    80008360:	00500793          	li	a5,5
    80008364:	00400c93          	li	s9,4
    80008368:	db9ff06f          	j	80008120 <__printf+0x3f8>
    8000836c:	00600793          	li	a5,6
    80008370:	00500c93          	li	s9,5
    80008374:	dadff06f          	j	80008120 <__printf+0x3f8>
    80008378:	00600793          	li	a5,6
    8000837c:	00500c93          	li	s9,5
    80008380:	c09ff06f          	j	80007f88 <__printf+0x260>
    80008384:	00800793          	li	a5,8
    80008388:	00700c93          	li	s9,7
    8000838c:	bfdff06f          	j	80007f88 <__printf+0x260>
    80008390:	00100793          	li	a5,1
    80008394:	d91ff06f          	j	80008124 <__printf+0x3fc>
    80008398:	00100793          	li	a5,1
    8000839c:	bf1ff06f          	j	80007f8c <__printf+0x264>
    800083a0:	00900793          	li	a5,9
    800083a4:	00800c93          	li	s9,8
    800083a8:	be1ff06f          	j	80007f88 <__printf+0x260>
    800083ac:	00002517          	auipc	a0,0x2
    800083b0:	35450513          	addi	a0,a0,852 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800083b4:	00000097          	auipc	ra,0x0
    800083b8:	918080e7          	jalr	-1768(ra) # 80007ccc <panic>

00000000800083bc <printfinit>:
    800083bc:	fe010113          	addi	sp,sp,-32
    800083c0:	00813823          	sd	s0,16(sp)
    800083c4:	00913423          	sd	s1,8(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	02010413          	addi	s0,sp,32
    800083d0:	00006497          	auipc	s1,0x6
    800083d4:	d8048493          	addi	s1,s1,-640 # 8000e150 <pr>
    800083d8:	00048513          	mv	a0,s1
    800083dc:	00002597          	auipc	a1,0x2
    800083e0:	33458593          	addi	a1,a1,820 # 8000a710 <CONSOLE_STATUS+0x700>
    800083e4:	00000097          	auipc	ra,0x0
    800083e8:	5f4080e7          	jalr	1524(ra) # 800089d8 <initlock>
    800083ec:	01813083          	ld	ra,24(sp)
    800083f0:	01013403          	ld	s0,16(sp)
    800083f4:	0004ac23          	sw	zero,24(s1)
    800083f8:	00813483          	ld	s1,8(sp)
    800083fc:	02010113          	addi	sp,sp,32
    80008400:	00008067          	ret

0000000080008404 <uartinit>:
    80008404:	ff010113          	addi	sp,sp,-16
    80008408:	00813423          	sd	s0,8(sp)
    8000840c:	01010413          	addi	s0,sp,16
    80008410:	100007b7          	lui	a5,0x10000
    80008414:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008418:	f8000713          	li	a4,-128
    8000841c:	00e781a3          	sb	a4,3(a5)
    80008420:	00300713          	li	a4,3
    80008424:	00e78023          	sb	a4,0(a5)
    80008428:	000780a3          	sb	zero,1(a5)
    8000842c:	00e781a3          	sb	a4,3(a5)
    80008430:	00700693          	li	a3,7
    80008434:	00d78123          	sb	a3,2(a5)
    80008438:	00e780a3          	sb	a4,1(a5)
    8000843c:	00813403          	ld	s0,8(sp)
    80008440:	01010113          	addi	sp,sp,16
    80008444:	00008067          	ret

0000000080008448 <uartputc>:
    80008448:	00005797          	auipc	a5,0x5
    8000844c:	9907a783          	lw	a5,-1648(a5) # 8000cdd8 <panicked>
    80008450:	00078463          	beqz	a5,80008458 <uartputc+0x10>
    80008454:	0000006f          	j	80008454 <uartputc+0xc>
    80008458:	fd010113          	addi	sp,sp,-48
    8000845c:	02813023          	sd	s0,32(sp)
    80008460:	00913c23          	sd	s1,24(sp)
    80008464:	01213823          	sd	s2,16(sp)
    80008468:	01313423          	sd	s3,8(sp)
    8000846c:	02113423          	sd	ra,40(sp)
    80008470:	03010413          	addi	s0,sp,48
    80008474:	00005917          	auipc	s2,0x5
    80008478:	96c90913          	addi	s2,s2,-1684 # 8000cde0 <uart_tx_r>
    8000847c:	00093783          	ld	a5,0(s2)
    80008480:	00005497          	auipc	s1,0x5
    80008484:	96848493          	addi	s1,s1,-1688 # 8000cde8 <uart_tx_w>
    80008488:	0004b703          	ld	a4,0(s1)
    8000848c:	02078693          	addi	a3,a5,32
    80008490:	00050993          	mv	s3,a0
    80008494:	02e69c63          	bne	a3,a4,800084cc <uartputc+0x84>
    80008498:	00001097          	auipc	ra,0x1
    8000849c:	834080e7          	jalr	-1996(ra) # 80008ccc <push_on>
    800084a0:	00093783          	ld	a5,0(s2)
    800084a4:	0004b703          	ld	a4,0(s1)
    800084a8:	02078793          	addi	a5,a5,32
    800084ac:	00e79463          	bne	a5,a4,800084b4 <uartputc+0x6c>
    800084b0:	0000006f          	j	800084b0 <uartputc+0x68>
    800084b4:	00001097          	auipc	ra,0x1
    800084b8:	88c080e7          	jalr	-1908(ra) # 80008d40 <pop_on>
    800084bc:	00093783          	ld	a5,0(s2)
    800084c0:	0004b703          	ld	a4,0(s1)
    800084c4:	02078693          	addi	a3,a5,32
    800084c8:	fce688e3          	beq	a3,a4,80008498 <uartputc+0x50>
    800084cc:	01f77693          	andi	a3,a4,31
    800084d0:	00006597          	auipc	a1,0x6
    800084d4:	ca058593          	addi	a1,a1,-864 # 8000e170 <uart_tx_buf>
    800084d8:	00d586b3          	add	a3,a1,a3
    800084dc:	00170713          	addi	a4,a4,1
    800084e0:	01368023          	sb	s3,0(a3)
    800084e4:	00e4b023          	sd	a4,0(s1)
    800084e8:	10000637          	lui	a2,0x10000
    800084ec:	02f71063          	bne	a4,a5,8000850c <uartputc+0xc4>
    800084f0:	0340006f          	j	80008524 <uartputc+0xdc>
    800084f4:	00074703          	lbu	a4,0(a4)
    800084f8:	00f93023          	sd	a5,0(s2)
    800084fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008500:	00093783          	ld	a5,0(s2)
    80008504:	0004b703          	ld	a4,0(s1)
    80008508:	00f70e63          	beq	a4,a5,80008524 <uartputc+0xdc>
    8000850c:	00564683          	lbu	a3,5(a2)
    80008510:	01f7f713          	andi	a4,a5,31
    80008514:	00e58733          	add	a4,a1,a4
    80008518:	0206f693          	andi	a3,a3,32
    8000851c:	00178793          	addi	a5,a5,1
    80008520:	fc069ae3          	bnez	a3,800084f4 <uartputc+0xac>
    80008524:	02813083          	ld	ra,40(sp)
    80008528:	02013403          	ld	s0,32(sp)
    8000852c:	01813483          	ld	s1,24(sp)
    80008530:	01013903          	ld	s2,16(sp)
    80008534:	00813983          	ld	s3,8(sp)
    80008538:	03010113          	addi	sp,sp,48
    8000853c:	00008067          	ret

0000000080008540 <uartputc_sync>:
    80008540:	ff010113          	addi	sp,sp,-16
    80008544:	00813423          	sd	s0,8(sp)
    80008548:	01010413          	addi	s0,sp,16
    8000854c:	00005717          	auipc	a4,0x5
    80008550:	88c72703          	lw	a4,-1908(a4) # 8000cdd8 <panicked>
    80008554:	02071663          	bnez	a4,80008580 <uartputc_sync+0x40>
    80008558:	00050793          	mv	a5,a0
    8000855c:	100006b7          	lui	a3,0x10000
    80008560:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008564:	02077713          	andi	a4,a4,32
    80008568:	fe070ce3          	beqz	a4,80008560 <uartputc_sync+0x20>
    8000856c:	0ff7f793          	andi	a5,a5,255
    80008570:	00f68023          	sb	a5,0(a3)
    80008574:	00813403          	ld	s0,8(sp)
    80008578:	01010113          	addi	sp,sp,16
    8000857c:	00008067          	ret
    80008580:	0000006f          	j	80008580 <uartputc_sync+0x40>

0000000080008584 <uartstart>:
    80008584:	ff010113          	addi	sp,sp,-16
    80008588:	00813423          	sd	s0,8(sp)
    8000858c:	01010413          	addi	s0,sp,16
    80008590:	00005617          	auipc	a2,0x5
    80008594:	85060613          	addi	a2,a2,-1968 # 8000cde0 <uart_tx_r>
    80008598:	00005517          	auipc	a0,0x5
    8000859c:	85050513          	addi	a0,a0,-1968 # 8000cde8 <uart_tx_w>
    800085a0:	00063783          	ld	a5,0(a2)
    800085a4:	00053703          	ld	a4,0(a0)
    800085a8:	04f70263          	beq	a4,a5,800085ec <uartstart+0x68>
    800085ac:	100005b7          	lui	a1,0x10000
    800085b0:	00006817          	auipc	a6,0x6
    800085b4:	bc080813          	addi	a6,a6,-1088 # 8000e170 <uart_tx_buf>
    800085b8:	01c0006f          	j	800085d4 <uartstart+0x50>
    800085bc:	0006c703          	lbu	a4,0(a3)
    800085c0:	00f63023          	sd	a5,0(a2)
    800085c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085c8:	00063783          	ld	a5,0(a2)
    800085cc:	00053703          	ld	a4,0(a0)
    800085d0:	00f70e63          	beq	a4,a5,800085ec <uartstart+0x68>
    800085d4:	01f7f713          	andi	a4,a5,31
    800085d8:	00e806b3          	add	a3,a6,a4
    800085dc:	0055c703          	lbu	a4,5(a1)
    800085e0:	00178793          	addi	a5,a5,1
    800085e4:	02077713          	andi	a4,a4,32
    800085e8:	fc071ae3          	bnez	a4,800085bc <uartstart+0x38>
    800085ec:	00813403          	ld	s0,8(sp)
    800085f0:	01010113          	addi	sp,sp,16
    800085f4:	00008067          	ret

00000000800085f8 <uartgetc>:
    800085f8:	ff010113          	addi	sp,sp,-16
    800085fc:	00813423          	sd	s0,8(sp)
    80008600:	01010413          	addi	s0,sp,16
    80008604:	10000737          	lui	a4,0x10000
    80008608:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000860c:	0017f793          	andi	a5,a5,1
    80008610:	00078c63          	beqz	a5,80008628 <uartgetc+0x30>
    80008614:	00074503          	lbu	a0,0(a4)
    80008618:	0ff57513          	andi	a0,a0,255
    8000861c:	00813403          	ld	s0,8(sp)
    80008620:	01010113          	addi	sp,sp,16
    80008624:	00008067          	ret
    80008628:	fff00513          	li	a0,-1
    8000862c:	ff1ff06f          	j	8000861c <uartgetc+0x24>

0000000080008630 <uartintr>:
    80008630:	100007b7          	lui	a5,0x10000
    80008634:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008638:	0017f793          	andi	a5,a5,1
    8000863c:	0a078463          	beqz	a5,800086e4 <uartintr+0xb4>
    80008640:	fe010113          	addi	sp,sp,-32
    80008644:	00813823          	sd	s0,16(sp)
    80008648:	00913423          	sd	s1,8(sp)
    8000864c:	00113c23          	sd	ra,24(sp)
    80008650:	02010413          	addi	s0,sp,32
    80008654:	100004b7          	lui	s1,0x10000
    80008658:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000865c:	0ff57513          	andi	a0,a0,255
    80008660:	fffff097          	auipc	ra,0xfffff
    80008664:	534080e7          	jalr	1332(ra) # 80007b94 <consoleintr>
    80008668:	0054c783          	lbu	a5,5(s1)
    8000866c:	0017f793          	andi	a5,a5,1
    80008670:	fe0794e3          	bnez	a5,80008658 <uartintr+0x28>
    80008674:	00004617          	auipc	a2,0x4
    80008678:	76c60613          	addi	a2,a2,1900 # 8000cde0 <uart_tx_r>
    8000867c:	00004517          	auipc	a0,0x4
    80008680:	76c50513          	addi	a0,a0,1900 # 8000cde8 <uart_tx_w>
    80008684:	00063783          	ld	a5,0(a2)
    80008688:	00053703          	ld	a4,0(a0)
    8000868c:	04f70263          	beq	a4,a5,800086d0 <uartintr+0xa0>
    80008690:	100005b7          	lui	a1,0x10000
    80008694:	00006817          	auipc	a6,0x6
    80008698:	adc80813          	addi	a6,a6,-1316 # 8000e170 <uart_tx_buf>
    8000869c:	01c0006f          	j	800086b8 <uartintr+0x88>
    800086a0:	0006c703          	lbu	a4,0(a3)
    800086a4:	00f63023          	sd	a5,0(a2)
    800086a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800086ac:	00063783          	ld	a5,0(a2)
    800086b0:	00053703          	ld	a4,0(a0)
    800086b4:	00f70e63          	beq	a4,a5,800086d0 <uartintr+0xa0>
    800086b8:	01f7f713          	andi	a4,a5,31
    800086bc:	00e806b3          	add	a3,a6,a4
    800086c0:	0055c703          	lbu	a4,5(a1)
    800086c4:	00178793          	addi	a5,a5,1
    800086c8:	02077713          	andi	a4,a4,32
    800086cc:	fc071ae3          	bnez	a4,800086a0 <uartintr+0x70>
    800086d0:	01813083          	ld	ra,24(sp)
    800086d4:	01013403          	ld	s0,16(sp)
    800086d8:	00813483          	ld	s1,8(sp)
    800086dc:	02010113          	addi	sp,sp,32
    800086e0:	00008067          	ret
    800086e4:	00004617          	auipc	a2,0x4
    800086e8:	6fc60613          	addi	a2,a2,1788 # 8000cde0 <uart_tx_r>
    800086ec:	00004517          	auipc	a0,0x4
    800086f0:	6fc50513          	addi	a0,a0,1788 # 8000cde8 <uart_tx_w>
    800086f4:	00063783          	ld	a5,0(a2)
    800086f8:	00053703          	ld	a4,0(a0)
    800086fc:	04f70263          	beq	a4,a5,80008740 <uartintr+0x110>
    80008700:	100005b7          	lui	a1,0x10000
    80008704:	00006817          	auipc	a6,0x6
    80008708:	a6c80813          	addi	a6,a6,-1428 # 8000e170 <uart_tx_buf>
    8000870c:	01c0006f          	j	80008728 <uartintr+0xf8>
    80008710:	0006c703          	lbu	a4,0(a3)
    80008714:	00f63023          	sd	a5,0(a2)
    80008718:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000871c:	00063783          	ld	a5,0(a2)
    80008720:	00053703          	ld	a4,0(a0)
    80008724:	02f70063          	beq	a4,a5,80008744 <uartintr+0x114>
    80008728:	01f7f713          	andi	a4,a5,31
    8000872c:	00e806b3          	add	a3,a6,a4
    80008730:	0055c703          	lbu	a4,5(a1)
    80008734:	00178793          	addi	a5,a5,1
    80008738:	02077713          	andi	a4,a4,32
    8000873c:	fc071ae3          	bnez	a4,80008710 <uartintr+0xe0>
    80008740:	00008067          	ret
    80008744:	00008067          	ret

0000000080008748 <kinit>:
    80008748:	fc010113          	addi	sp,sp,-64
    8000874c:	02913423          	sd	s1,40(sp)
    80008750:	fffff7b7          	lui	a5,0xfffff
    80008754:	00007497          	auipc	s1,0x7
    80008758:	a3b48493          	addi	s1,s1,-1477 # 8000f18f <end+0xfff>
    8000875c:	02813823          	sd	s0,48(sp)
    80008760:	01313c23          	sd	s3,24(sp)
    80008764:	00f4f4b3          	and	s1,s1,a5
    80008768:	02113c23          	sd	ra,56(sp)
    8000876c:	03213023          	sd	s2,32(sp)
    80008770:	01413823          	sd	s4,16(sp)
    80008774:	01513423          	sd	s5,8(sp)
    80008778:	04010413          	addi	s0,sp,64
    8000877c:	000017b7          	lui	a5,0x1
    80008780:	01100993          	li	s3,17
    80008784:	00f487b3          	add	a5,s1,a5
    80008788:	01b99993          	slli	s3,s3,0x1b
    8000878c:	06f9e063          	bltu	s3,a5,800087ec <kinit+0xa4>
    80008790:	00006a97          	auipc	s5,0x6
    80008794:	a00a8a93          	addi	s5,s5,-1536 # 8000e190 <end>
    80008798:	0754ec63          	bltu	s1,s5,80008810 <kinit+0xc8>
    8000879c:	0734fa63          	bgeu	s1,s3,80008810 <kinit+0xc8>
    800087a0:	00088a37          	lui	s4,0x88
    800087a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800087a8:	00004917          	auipc	s2,0x4
    800087ac:	64890913          	addi	s2,s2,1608 # 8000cdf0 <kmem>
    800087b0:	00ca1a13          	slli	s4,s4,0xc
    800087b4:	0140006f          	j	800087c8 <kinit+0x80>
    800087b8:	000017b7          	lui	a5,0x1
    800087bc:	00f484b3          	add	s1,s1,a5
    800087c0:	0554e863          	bltu	s1,s5,80008810 <kinit+0xc8>
    800087c4:	0534f663          	bgeu	s1,s3,80008810 <kinit+0xc8>
    800087c8:	00001637          	lui	a2,0x1
    800087cc:	00100593          	li	a1,1
    800087d0:	00048513          	mv	a0,s1
    800087d4:	00000097          	auipc	ra,0x0
    800087d8:	5e4080e7          	jalr	1508(ra) # 80008db8 <__memset>
    800087dc:	00093783          	ld	a5,0(s2)
    800087e0:	00f4b023          	sd	a5,0(s1)
    800087e4:	00993023          	sd	s1,0(s2)
    800087e8:	fd4498e3          	bne	s1,s4,800087b8 <kinit+0x70>
    800087ec:	03813083          	ld	ra,56(sp)
    800087f0:	03013403          	ld	s0,48(sp)
    800087f4:	02813483          	ld	s1,40(sp)
    800087f8:	02013903          	ld	s2,32(sp)
    800087fc:	01813983          	ld	s3,24(sp)
    80008800:	01013a03          	ld	s4,16(sp)
    80008804:	00813a83          	ld	s5,8(sp)
    80008808:	04010113          	addi	sp,sp,64
    8000880c:	00008067          	ret
    80008810:	00002517          	auipc	a0,0x2
    80008814:	f2050513          	addi	a0,a0,-224 # 8000a730 <digits+0x18>
    80008818:	fffff097          	auipc	ra,0xfffff
    8000881c:	4b4080e7          	jalr	1204(ra) # 80007ccc <panic>

0000000080008820 <freerange>:
    80008820:	fc010113          	addi	sp,sp,-64
    80008824:	000017b7          	lui	a5,0x1
    80008828:	02913423          	sd	s1,40(sp)
    8000882c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008830:	009504b3          	add	s1,a0,s1
    80008834:	fffff537          	lui	a0,0xfffff
    80008838:	02813823          	sd	s0,48(sp)
    8000883c:	02113c23          	sd	ra,56(sp)
    80008840:	03213023          	sd	s2,32(sp)
    80008844:	01313c23          	sd	s3,24(sp)
    80008848:	01413823          	sd	s4,16(sp)
    8000884c:	01513423          	sd	s5,8(sp)
    80008850:	01613023          	sd	s6,0(sp)
    80008854:	04010413          	addi	s0,sp,64
    80008858:	00a4f4b3          	and	s1,s1,a0
    8000885c:	00f487b3          	add	a5,s1,a5
    80008860:	06f5e463          	bltu	a1,a5,800088c8 <freerange+0xa8>
    80008864:	00006a97          	auipc	s5,0x6
    80008868:	92ca8a93          	addi	s5,s5,-1748 # 8000e190 <end>
    8000886c:	0954e263          	bltu	s1,s5,800088f0 <freerange+0xd0>
    80008870:	01100993          	li	s3,17
    80008874:	01b99993          	slli	s3,s3,0x1b
    80008878:	0734fc63          	bgeu	s1,s3,800088f0 <freerange+0xd0>
    8000887c:	00058a13          	mv	s4,a1
    80008880:	00004917          	auipc	s2,0x4
    80008884:	57090913          	addi	s2,s2,1392 # 8000cdf0 <kmem>
    80008888:	00002b37          	lui	s6,0x2
    8000888c:	0140006f          	j	800088a0 <freerange+0x80>
    80008890:	000017b7          	lui	a5,0x1
    80008894:	00f484b3          	add	s1,s1,a5
    80008898:	0554ec63          	bltu	s1,s5,800088f0 <freerange+0xd0>
    8000889c:	0534fa63          	bgeu	s1,s3,800088f0 <freerange+0xd0>
    800088a0:	00001637          	lui	a2,0x1
    800088a4:	00100593          	li	a1,1
    800088a8:	00048513          	mv	a0,s1
    800088ac:	00000097          	auipc	ra,0x0
    800088b0:	50c080e7          	jalr	1292(ra) # 80008db8 <__memset>
    800088b4:	00093703          	ld	a4,0(s2)
    800088b8:	016487b3          	add	a5,s1,s6
    800088bc:	00e4b023          	sd	a4,0(s1)
    800088c0:	00993023          	sd	s1,0(s2)
    800088c4:	fcfa76e3          	bgeu	s4,a5,80008890 <freerange+0x70>
    800088c8:	03813083          	ld	ra,56(sp)
    800088cc:	03013403          	ld	s0,48(sp)
    800088d0:	02813483          	ld	s1,40(sp)
    800088d4:	02013903          	ld	s2,32(sp)
    800088d8:	01813983          	ld	s3,24(sp)
    800088dc:	01013a03          	ld	s4,16(sp)
    800088e0:	00813a83          	ld	s5,8(sp)
    800088e4:	00013b03          	ld	s6,0(sp)
    800088e8:	04010113          	addi	sp,sp,64
    800088ec:	00008067          	ret
    800088f0:	00002517          	auipc	a0,0x2
    800088f4:	e4050513          	addi	a0,a0,-448 # 8000a730 <digits+0x18>
    800088f8:	fffff097          	auipc	ra,0xfffff
    800088fc:	3d4080e7          	jalr	980(ra) # 80007ccc <panic>

0000000080008900 <kfree>:
    80008900:	fe010113          	addi	sp,sp,-32
    80008904:	00813823          	sd	s0,16(sp)
    80008908:	00113c23          	sd	ra,24(sp)
    8000890c:	00913423          	sd	s1,8(sp)
    80008910:	02010413          	addi	s0,sp,32
    80008914:	03451793          	slli	a5,a0,0x34
    80008918:	04079c63          	bnez	a5,80008970 <kfree+0x70>
    8000891c:	00006797          	auipc	a5,0x6
    80008920:	87478793          	addi	a5,a5,-1932 # 8000e190 <end>
    80008924:	00050493          	mv	s1,a0
    80008928:	04f56463          	bltu	a0,a5,80008970 <kfree+0x70>
    8000892c:	01100793          	li	a5,17
    80008930:	01b79793          	slli	a5,a5,0x1b
    80008934:	02f57e63          	bgeu	a0,a5,80008970 <kfree+0x70>
    80008938:	00001637          	lui	a2,0x1
    8000893c:	00100593          	li	a1,1
    80008940:	00000097          	auipc	ra,0x0
    80008944:	478080e7          	jalr	1144(ra) # 80008db8 <__memset>
    80008948:	00004797          	auipc	a5,0x4
    8000894c:	4a878793          	addi	a5,a5,1192 # 8000cdf0 <kmem>
    80008950:	0007b703          	ld	a4,0(a5)
    80008954:	01813083          	ld	ra,24(sp)
    80008958:	01013403          	ld	s0,16(sp)
    8000895c:	00e4b023          	sd	a4,0(s1)
    80008960:	0097b023          	sd	s1,0(a5)
    80008964:	00813483          	ld	s1,8(sp)
    80008968:	02010113          	addi	sp,sp,32
    8000896c:	00008067          	ret
    80008970:	00002517          	auipc	a0,0x2
    80008974:	dc050513          	addi	a0,a0,-576 # 8000a730 <digits+0x18>
    80008978:	fffff097          	auipc	ra,0xfffff
    8000897c:	354080e7          	jalr	852(ra) # 80007ccc <panic>

0000000080008980 <kalloc>:
    80008980:	fe010113          	addi	sp,sp,-32
    80008984:	00813823          	sd	s0,16(sp)
    80008988:	00913423          	sd	s1,8(sp)
    8000898c:	00113c23          	sd	ra,24(sp)
    80008990:	02010413          	addi	s0,sp,32
    80008994:	00004797          	auipc	a5,0x4
    80008998:	45c78793          	addi	a5,a5,1116 # 8000cdf0 <kmem>
    8000899c:	0007b483          	ld	s1,0(a5)
    800089a0:	02048063          	beqz	s1,800089c0 <kalloc+0x40>
    800089a4:	0004b703          	ld	a4,0(s1)
    800089a8:	00001637          	lui	a2,0x1
    800089ac:	00500593          	li	a1,5
    800089b0:	00048513          	mv	a0,s1
    800089b4:	00e7b023          	sd	a4,0(a5)
    800089b8:	00000097          	auipc	ra,0x0
    800089bc:	400080e7          	jalr	1024(ra) # 80008db8 <__memset>
    800089c0:	01813083          	ld	ra,24(sp)
    800089c4:	01013403          	ld	s0,16(sp)
    800089c8:	00048513          	mv	a0,s1
    800089cc:	00813483          	ld	s1,8(sp)
    800089d0:	02010113          	addi	sp,sp,32
    800089d4:	00008067          	ret

00000000800089d8 <initlock>:
    800089d8:	ff010113          	addi	sp,sp,-16
    800089dc:	00813423          	sd	s0,8(sp)
    800089e0:	01010413          	addi	s0,sp,16
    800089e4:	00813403          	ld	s0,8(sp)
    800089e8:	00b53423          	sd	a1,8(a0)
    800089ec:	00052023          	sw	zero,0(a0)
    800089f0:	00053823          	sd	zero,16(a0)
    800089f4:	01010113          	addi	sp,sp,16
    800089f8:	00008067          	ret

00000000800089fc <acquire>:
    800089fc:	fe010113          	addi	sp,sp,-32
    80008a00:	00813823          	sd	s0,16(sp)
    80008a04:	00913423          	sd	s1,8(sp)
    80008a08:	00113c23          	sd	ra,24(sp)
    80008a0c:	01213023          	sd	s2,0(sp)
    80008a10:	02010413          	addi	s0,sp,32
    80008a14:	00050493          	mv	s1,a0
    80008a18:	10002973          	csrr	s2,sstatus
    80008a1c:	100027f3          	csrr	a5,sstatus
    80008a20:	ffd7f793          	andi	a5,a5,-3
    80008a24:	10079073          	csrw	sstatus,a5
    80008a28:	fffff097          	auipc	ra,0xfffff
    80008a2c:	8ec080e7          	jalr	-1812(ra) # 80007314 <mycpu>
    80008a30:	07852783          	lw	a5,120(a0)
    80008a34:	06078e63          	beqz	a5,80008ab0 <acquire+0xb4>
    80008a38:	fffff097          	auipc	ra,0xfffff
    80008a3c:	8dc080e7          	jalr	-1828(ra) # 80007314 <mycpu>
    80008a40:	07852783          	lw	a5,120(a0)
    80008a44:	0004a703          	lw	a4,0(s1)
    80008a48:	0017879b          	addiw	a5,a5,1
    80008a4c:	06f52c23          	sw	a5,120(a0)
    80008a50:	04071063          	bnez	a4,80008a90 <acquire+0x94>
    80008a54:	00100713          	li	a4,1
    80008a58:	00070793          	mv	a5,a4
    80008a5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008a60:	0007879b          	sext.w	a5,a5
    80008a64:	fe079ae3          	bnez	a5,80008a58 <acquire+0x5c>
    80008a68:	0ff0000f          	fence
    80008a6c:	fffff097          	auipc	ra,0xfffff
    80008a70:	8a8080e7          	jalr	-1880(ra) # 80007314 <mycpu>
    80008a74:	01813083          	ld	ra,24(sp)
    80008a78:	01013403          	ld	s0,16(sp)
    80008a7c:	00a4b823          	sd	a0,16(s1)
    80008a80:	00013903          	ld	s2,0(sp)
    80008a84:	00813483          	ld	s1,8(sp)
    80008a88:	02010113          	addi	sp,sp,32
    80008a8c:	00008067          	ret
    80008a90:	0104b903          	ld	s2,16(s1)
    80008a94:	fffff097          	auipc	ra,0xfffff
    80008a98:	880080e7          	jalr	-1920(ra) # 80007314 <mycpu>
    80008a9c:	faa91ce3          	bne	s2,a0,80008a54 <acquire+0x58>
    80008aa0:	00002517          	auipc	a0,0x2
    80008aa4:	c9850513          	addi	a0,a0,-872 # 8000a738 <digits+0x20>
    80008aa8:	fffff097          	auipc	ra,0xfffff
    80008aac:	224080e7          	jalr	548(ra) # 80007ccc <panic>
    80008ab0:	00195913          	srli	s2,s2,0x1
    80008ab4:	fffff097          	auipc	ra,0xfffff
    80008ab8:	860080e7          	jalr	-1952(ra) # 80007314 <mycpu>
    80008abc:	00197913          	andi	s2,s2,1
    80008ac0:	07252e23          	sw	s2,124(a0)
    80008ac4:	f75ff06f          	j	80008a38 <acquire+0x3c>

0000000080008ac8 <release>:
    80008ac8:	fe010113          	addi	sp,sp,-32
    80008acc:	00813823          	sd	s0,16(sp)
    80008ad0:	00113c23          	sd	ra,24(sp)
    80008ad4:	00913423          	sd	s1,8(sp)
    80008ad8:	01213023          	sd	s2,0(sp)
    80008adc:	02010413          	addi	s0,sp,32
    80008ae0:	00052783          	lw	a5,0(a0)
    80008ae4:	00079a63          	bnez	a5,80008af8 <release+0x30>
    80008ae8:	00002517          	auipc	a0,0x2
    80008aec:	c5850513          	addi	a0,a0,-936 # 8000a740 <digits+0x28>
    80008af0:	fffff097          	auipc	ra,0xfffff
    80008af4:	1dc080e7          	jalr	476(ra) # 80007ccc <panic>
    80008af8:	01053903          	ld	s2,16(a0)
    80008afc:	00050493          	mv	s1,a0
    80008b00:	fffff097          	auipc	ra,0xfffff
    80008b04:	814080e7          	jalr	-2028(ra) # 80007314 <mycpu>
    80008b08:	fea910e3          	bne	s2,a0,80008ae8 <release+0x20>
    80008b0c:	0004b823          	sd	zero,16(s1)
    80008b10:	0ff0000f          	fence
    80008b14:	0f50000f          	fence	iorw,ow
    80008b18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008b1c:	ffffe097          	auipc	ra,0xffffe
    80008b20:	7f8080e7          	jalr	2040(ra) # 80007314 <mycpu>
    80008b24:	100027f3          	csrr	a5,sstatus
    80008b28:	0027f793          	andi	a5,a5,2
    80008b2c:	04079a63          	bnez	a5,80008b80 <release+0xb8>
    80008b30:	07852783          	lw	a5,120(a0)
    80008b34:	02f05e63          	blez	a5,80008b70 <release+0xa8>
    80008b38:	fff7871b          	addiw	a4,a5,-1
    80008b3c:	06e52c23          	sw	a4,120(a0)
    80008b40:	00071c63          	bnez	a4,80008b58 <release+0x90>
    80008b44:	07c52783          	lw	a5,124(a0)
    80008b48:	00078863          	beqz	a5,80008b58 <release+0x90>
    80008b4c:	100027f3          	csrr	a5,sstatus
    80008b50:	0027e793          	ori	a5,a5,2
    80008b54:	10079073          	csrw	sstatus,a5
    80008b58:	01813083          	ld	ra,24(sp)
    80008b5c:	01013403          	ld	s0,16(sp)
    80008b60:	00813483          	ld	s1,8(sp)
    80008b64:	00013903          	ld	s2,0(sp)
    80008b68:	02010113          	addi	sp,sp,32
    80008b6c:	00008067          	ret
    80008b70:	00002517          	auipc	a0,0x2
    80008b74:	bf050513          	addi	a0,a0,-1040 # 8000a760 <digits+0x48>
    80008b78:	fffff097          	auipc	ra,0xfffff
    80008b7c:	154080e7          	jalr	340(ra) # 80007ccc <panic>
    80008b80:	00002517          	auipc	a0,0x2
    80008b84:	bc850513          	addi	a0,a0,-1080 # 8000a748 <digits+0x30>
    80008b88:	fffff097          	auipc	ra,0xfffff
    80008b8c:	144080e7          	jalr	324(ra) # 80007ccc <panic>

0000000080008b90 <holding>:
    80008b90:	00052783          	lw	a5,0(a0)
    80008b94:	00079663          	bnez	a5,80008ba0 <holding+0x10>
    80008b98:	00000513          	li	a0,0
    80008b9c:	00008067          	ret
    80008ba0:	fe010113          	addi	sp,sp,-32
    80008ba4:	00813823          	sd	s0,16(sp)
    80008ba8:	00913423          	sd	s1,8(sp)
    80008bac:	00113c23          	sd	ra,24(sp)
    80008bb0:	02010413          	addi	s0,sp,32
    80008bb4:	01053483          	ld	s1,16(a0)
    80008bb8:	ffffe097          	auipc	ra,0xffffe
    80008bbc:	75c080e7          	jalr	1884(ra) # 80007314 <mycpu>
    80008bc0:	01813083          	ld	ra,24(sp)
    80008bc4:	01013403          	ld	s0,16(sp)
    80008bc8:	40a48533          	sub	a0,s1,a0
    80008bcc:	00153513          	seqz	a0,a0
    80008bd0:	00813483          	ld	s1,8(sp)
    80008bd4:	02010113          	addi	sp,sp,32
    80008bd8:	00008067          	ret

0000000080008bdc <push_off>:
    80008bdc:	fe010113          	addi	sp,sp,-32
    80008be0:	00813823          	sd	s0,16(sp)
    80008be4:	00113c23          	sd	ra,24(sp)
    80008be8:	00913423          	sd	s1,8(sp)
    80008bec:	02010413          	addi	s0,sp,32
    80008bf0:	100024f3          	csrr	s1,sstatus
    80008bf4:	100027f3          	csrr	a5,sstatus
    80008bf8:	ffd7f793          	andi	a5,a5,-3
    80008bfc:	10079073          	csrw	sstatus,a5
    80008c00:	ffffe097          	auipc	ra,0xffffe
    80008c04:	714080e7          	jalr	1812(ra) # 80007314 <mycpu>
    80008c08:	07852783          	lw	a5,120(a0)
    80008c0c:	02078663          	beqz	a5,80008c38 <push_off+0x5c>
    80008c10:	ffffe097          	auipc	ra,0xffffe
    80008c14:	704080e7          	jalr	1796(ra) # 80007314 <mycpu>
    80008c18:	07852783          	lw	a5,120(a0)
    80008c1c:	01813083          	ld	ra,24(sp)
    80008c20:	01013403          	ld	s0,16(sp)
    80008c24:	0017879b          	addiw	a5,a5,1
    80008c28:	06f52c23          	sw	a5,120(a0)
    80008c2c:	00813483          	ld	s1,8(sp)
    80008c30:	02010113          	addi	sp,sp,32
    80008c34:	00008067          	ret
    80008c38:	0014d493          	srli	s1,s1,0x1
    80008c3c:	ffffe097          	auipc	ra,0xffffe
    80008c40:	6d8080e7          	jalr	1752(ra) # 80007314 <mycpu>
    80008c44:	0014f493          	andi	s1,s1,1
    80008c48:	06952e23          	sw	s1,124(a0)
    80008c4c:	fc5ff06f          	j	80008c10 <push_off+0x34>

0000000080008c50 <pop_off>:
    80008c50:	ff010113          	addi	sp,sp,-16
    80008c54:	00813023          	sd	s0,0(sp)
    80008c58:	00113423          	sd	ra,8(sp)
    80008c5c:	01010413          	addi	s0,sp,16
    80008c60:	ffffe097          	auipc	ra,0xffffe
    80008c64:	6b4080e7          	jalr	1716(ra) # 80007314 <mycpu>
    80008c68:	100027f3          	csrr	a5,sstatus
    80008c6c:	0027f793          	andi	a5,a5,2
    80008c70:	04079663          	bnez	a5,80008cbc <pop_off+0x6c>
    80008c74:	07852783          	lw	a5,120(a0)
    80008c78:	02f05a63          	blez	a5,80008cac <pop_off+0x5c>
    80008c7c:	fff7871b          	addiw	a4,a5,-1
    80008c80:	06e52c23          	sw	a4,120(a0)
    80008c84:	00071c63          	bnez	a4,80008c9c <pop_off+0x4c>
    80008c88:	07c52783          	lw	a5,124(a0)
    80008c8c:	00078863          	beqz	a5,80008c9c <pop_off+0x4c>
    80008c90:	100027f3          	csrr	a5,sstatus
    80008c94:	0027e793          	ori	a5,a5,2
    80008c98:	10079073          	csrw	sstatus,a5
    80008c9c:	00813083          	ld	ra,8(sp)
    80008ca0:	00013403          	ld	s0,0(sp)
    80008ca4:	01010113          	addi	sp,sp,16
    80008ca8:	00008067          	ret
    80008cac:	00002517          	auipc	a0,0x2
    80008cb0:	ab450513          	addi	a0,a0,-1356 # 8000a760 <digits+0x48>
    80008cb4:	fffff097          	auipc	ra,0xfffff
    80008cb8:	018080e7          	jalr	24(ra) # 80007ccc <panic>
    80008cbc:	00002517          	auipc	a0,0x2
    80008cc0:	a8c50513          	addi	a0,a0,-1396 # 8000a748 <digits+0x30>
    80008cc4:	fffff097          	auipc	ra,0xfffff
    80008cc8:	008080e7          	jalr	8(ra) # 80007ccc <panic>

0000000080008ccc <push_on>:
    80008ccc:	fe010113          	addi	sp,sp,-32
    80008cd0:	00813823          	sd	s0,16(sp)
    80008cd4:	00113c23          	sd	ra,24(sp)
    80008cd8:	00913423          	sd	s1,8(sp)
    80008cdc:	02010413          	addi	s0,sp,32
    80008ce0:	100024f3          	csrr	s1,sstatus
    80008ce4:	100027f3          	csrr	a5,sstatus
    80008ce8:	0027e793          	ori	a5,a5,2
    80008cec:	10079073          	csrw	sstatus,a5
    80008cf0:	ffffe097          	auipc	ra,0xffffe
    80008cf4:	624080e7          	jalr	1572(ra) # 80007314 <mycpu>
    80008cf8:	07852783          	lw	a5,120(a0)
    80008cfc:	02078663          	beqz	a5,80008d28 <push_on+0x5c>
    80008d00:	ffffe097          	auipc	ra,0xffffe
    80008d04:	614080e7          	jalr	1556(ra) # 80007314 <mycpu>
    80008d08:	07852783          	lw	a5,120(a0)
    80008d0c:	01813083          	ld	ra,24(sp)
    80008d10:	01013403          	ld	s0,16(sp)
    80008d14:	0017879b          	addiw	a5,a5,1
    80008d18:	06f52c23          	sw	a5,120(a0)
    80008d1c:	00813483          	ld	s1,8(sp)
    80008d20:	02010113          	addi	sp,sp,32
    80008d24:	00008067          	ret
    80008d28:	0014d493          	srli	s1,s1,0x1
    80008d2c:	ffffe097          	auipc	ra,0xffffe
    80008d30:	5e8080e7          	jalr	1512(ra) # 80007314 <mycpu>
    80008d34:	0014f493          	andi	s1,s1,1
    80008d38:	06952e23          	sw	s1,124(a0)
    80008d3c:	fc5ff06f          	j	80008d00 <push_on+0x34>

0000000080008d40 <pop_on>:
    80008d40:	ff010113          	addi	sp,sp,-16
    80008d44:	00813023          	sd	s0,0(sp)
    80008d48:	00113423          	sd	ra,8(sp)
    80008d4c:	01010413          	addi	s0,sp,16
    80008d50:	ffffe097          	auipc	ra,0xffffe
    80008d54:	5c4080e7          	jalr	1476(ra) # 80007314 <mycpu>
    80008d58:	100027f3          	csrr	a5,sstatus
    80008d5c:	0027f793          	andi	a5,a5,2
    80008d60:	04078463          	beqz	a5,80008da8 <pop_on+0x68>
    80008d64:	07852783          	lw	a5,120(a0)
    80008d68:	02f05863          	blez	a5,80008d98 <pop_on+0x58>
    80008d6c:	fff7879b          	addiw	a5,a5,-1
    80008d70:	06f52c23          	sw	a5,120(a0)
    80008d74:	07853783          	ld	a5,120(a0)
    80008d78:	00079863          	bnez	a5,80008d88 <pop_on+0x48>
    80008d7c:	100027f3          	csrr	a5,sstatus
    80008d80:	ffd7f793          	andi	a5,a5,-3
    80008d84:	10079073          	csrw	sstatus,a5
    80008d88:	00813083          	ld	ra,8(sp)
    80008d8c:	00013403          	ld	s0,0(sp)
    80008d90:	01010113          	addi	sp,sp,16
    80008d94:	00008067          	ret
    80008d98:	00002517          	auipc	a0,0x2
    80008d9c:	9f050513          	addi	a0,a0,-1552 # 8000a788 <digits+0x70>
    80008da0:	fffff097          	auipc	ra,0xfffff
    80008da4:	f2c080e7          	jalr	-212(ra) # 80007ccc <panic>
    80008da8:	00002517          	auipc	a0,0x2
    80008dac:	9c050513          	addi	a0,a0,-1600 # 8000a768 <digits+0x50>
    80008db0:	fffff097          	auipc	ra,0xfffff
    80008db4:	f1c080e7          	jalr	-228(ra) # 80007ccc <panic>

0000000080008db8 <__memset>:
    80008db8:	ff010113          	addi	sp,sp,-16
    80008dbc:	00813423          	sd	s0,8(sp)
    80008dc0:	01010413          	addi	s0,sp,16
    80008dc4:	1a060e63          	beqz	a2,80008f80 <__memset+0x1c8>
    80008dc8:	40a007b3          	neg	a5,a0
    80008dcc:	0077f793          	andi	a5,a5,7
    80008dd0:	00778693          	addi	a3,a5,7
    80008dd4:	00b00813          	li	a6,11
    80008dd8:	0ff5f593          	andi	a1,a1,255
    80008ddc:	fff6071b          	addiw	a4,a2,-1
    80008de0:	1b06e663          	bltu	a3,a6,80008f8c <__memset+0x1d4>
    80008de4:	1cd76463          	bltu	a4,a3,80008fac <__memset+0x1f4>
    80008de8:	1a078e63          	beqz	a5,80008fa4 <__memset+0x1ec>
    80008dec:	00b50023          	sb	a1,0(a0)
    80008df0:	00100713          	li	a4,1
    80008df4:	1ae78463          	beq	a5,a4,80008f9c <__memset+0x1e4>
    80008df8:	00b500a3          	sb	a1,1(a0)
    80008dfc:	00200713          	li	a4,2
    80008e00:	1ae78a63          	beq	a5,a4,80008fb4 <__memset+0x1fc>
    80008e04:	00b50123          	sb	a1,2(a0)
    80008e08:	00300713          	li	a4,3
    80008e0c:	18e78463          	beq	a5,a4,80008f94 <__memset+0x1dc>
    80008e10:	00b501a3          	sb	a1,3(a0)
    80008e14:	00400713          	li	a4,4
    80008e18:	1ae78263          	beq	a5,a4,80008fbc <__memset+0x204>
    80008e1c:	00b50223          	sb	a1,4(a0)
    80008e20:	00500713          	li	a4,5
    80008e24:	1ae78063          	beq	a5,a4,80008fc4 <__memset+0x20c>
    80008e28:	00b502a3          	sb	a1,5(a0)
    80008e2c:	00700713          	li	a4,7
    80008e30:	18e79e63          	bne	a5,a4,80008fcc <__memset+0x214>
    80008e34:	00b50323          	sb	a1,6(a0)
    80008e38:	00700e93          	li	t4,7
    80008e3c:	00859713          	slli	a4,a1,0x8
    80008e40:	00e5e733          	or	a4,a1,a4
    80008e44:	01059e13          	slli	t3,a1,0x10
    80008e48:	01c76e33          	or	t3,a4,t3
    80008e4c:	01859313          	slli	t1,a1,0x18
    80008e50:	006e6333          	or	t1,t3,t1
    80008e54:	02059893          	slli	a7,a1,0x20
    80008e58:	40f60e3b          	subw	t3,a2,a5
    80008e5c:	011368b3          	or	a7,t1,a7
    80008e60:	02859813          	slli	a6,a1,0x28
    80008e64:	0108e833          	or	a6,a7,a6
    80008e68:	03059693          	slli	a3,a1,0x30
    80008e6c:	003e589b          	srliw	a7,t3,0x3
    80008e70:	00d866b3          	or	a3,a6,a3
    80008e74:	03859713          	slli	a4,a1,0x38
    80008e78:	00389813          	slli	a6,a7,0x3
    80008e7c:	00f507b3          	add	a5,a0,a5
    80008e80:	00e6e733          	or	a4,a3,a4
    80008e84:	000e089b          	sext.w	a7,t3
    80008e88:	00f806b3          	add	a3,a6,a5
    80008e8c:	00e7b023          	sd	a4,0(a5)
    80008e90:	00878793          	addi	a5,a5,8
    80008e94:	fed79ce3          	bne	a5,a3,80008e8c <__memset+0xd4>
    80008e98:	ff8e7793          	andi	a5,t3,-8
    80008e9c:	0007871b          	sext.w	a4,a5
    80008ea0:	01d787bb          	addw	a5,a5,t4
    80008ea4:	0ce88e63          	beq	a7,a4,80008f80 <__memset+0x1c8>
    80008ea8:	00f50733          	add	a4,a0,a5
    80008eac:	00b70023          	sb	a1,0(a4)
    80008eb0:	0017871b          	addiw	a4,a5,1
    80008eb4:	0cc77663          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008eb8:	00e50733          	add	a4,a0,a4
    80008ebc:	00b70023          	sb	a1,0(a4)
    80008ec0:	0027871b          	addiw	a4,a5,2
    80008ec4:	0ac77e63          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008ec8:	00e50733          	add	a4,a0,a4
    80008ecc:	00b70023          	sb	a1,0(a4)
    80008ed0:	0037871b          	addiw	a4,a5,3
    80008ed4:	0ac77663          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008ed8:	00e50733          	add	a4,a0,a4
    80008edc:	00b70023          	sb	a1,0(a4)
    80008ee0:	0047871b          	addiw	a4,a5,4
    80008ee4:	08c77e63          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008ee8:	00e50733          	add	a4,a0,a4
    80008eec:	00b70023          	sb	a1,0(a4)
    80008ef0:	0057871b          	addiw	a4,a5,5
    80008ef4:	08c77663          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008ef8:	00e50733          	add	a4,a0,a4
    80008efc:	00b70023          	sb	a1,0(a4)
    80008f00:	0067871b          	addiw	a4,a5,6
    80008f04:	06c77e63          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f08:	00e50733          	add	a4,a0,a4
    80008f0c:	00b70023          	sb	a1,0(a4)
    80008f10:	0077871b          	addiw	a4,a5,7
    80008f14:	06c77663          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f18:	00e50733          	add	a4,a0,a4
    80008f1c:	00b70023          	sb	a1,0(a4)
    80008f20:	0087871b          	addiw	a4,a5,8
    80008f24:	04c77e63          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f28:	00e50733          	add	a4,a0,a4
    80008f2c:	00b70023          	sb	a1,0(a4)
    80008f30:	0097871b          	addiw	a4,a5,9
    80008f34:	04c77663          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f38:	00e50733          	add	a4,a0,a4
    80008f3c:	00b70023          	sb	a1,0(a4)
    80008f40:	00a7871b          	addiw	a4,a5,10
    80008f44:	02c77e63          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f48:	00e50733          	add	a4,a0,a4
    80008f4c:	00b70023          	sb	a1,0(a4)
    80008f50:	00b7871b          	addiw	a4,a5,11
    80008f54:	02c77663          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f58:	00e50733          	add	a4,a0,a4
    80008f5c:	00b70023          	sb	a1,0(a4)
    80008f60:	00c7871b          	addiw	a4,a5,12
    80008f64:	00c77e63          	bgeu	a4,a2,80008f80 <__memset+0x1c8>
    80008f68:	00e50733          	add	a4,a0,a4
    80008f6c:	00b70023          	sb	a1,0(a4)
    80008f70:	00d7879b          	addiw	a5,a5,13
    80008f74:	00c7f663          	bgeu	a5,a2,80008f80 <__memset+0x1c8>
    80008f78:	00f507b3          	add	a5,a0,a5
    80008f7c:	00b78023          	sb	a1,0(a5)
    80008f80:	00813403          	ld	s0,8(sp)
    80008f84:	01010113          	addi	sp,sp,16
    80008f88:	00008067          	ret
    80008f8c:	00b00693          	li	a3,11
    80008f90:	e55ff06f          	j	80008de4 <__memset+0x2c>
    80008f94:	00300e93          	li	t4,3
    80008f98:	ea5ff06f          	j	80008e3c <__memset+0x84>
    80008f9c:	00100e93          	li	t4,1
    80008fa0:	e9dff06f          	j	80008e3c <__memset+0x84>
    80008fa4:	00000e93          	li	t4,0
    80008fa8:	e95ff06f          	j	80008e3c <__memset+0x84>
    80008fac:	00000793          	li	a5,0
    80008fb0:	ef9ff06f          	j	80008ea8 <__memset+0xf0>
    80008fb4:	00200e93          	li	t4,2
    80008fb8:	e85ff06f          	j	80008e3c <__memset+0x84>
    80008fbc:	00400e93          	li	t4,4
    80008fc0:	e7dff06f          	j	80008e3c <__memset+0x84>
    80008fc4:	00500e93          	li	t4,5
    80008fc8:	e75ff06f          	j	80008e3c <__memset+0x84>
    80008fcc:	00600e93          	li	t4,6
    80008fd0:	e6dff06f          	j	80008e3c <__memset+0x84>

0000000080008fd4 <__memmove>:
    80008fd4:	ff010113          	addi	sp,sp,-16
    80008fd8:	00813423          	sd	s0,8(sp)
    80008fdc:	01010413          	addi	s0,sp,16
    80008fe0:	0e060863          	beqz	a2,800090d0 <__memmove+0xfc>
    80008fe4:	fff6069b          	addiw	a3,a2,-1
    80008fe8:	0006881b          	sext.w	a6,a3
    80008fec:	0ea5e863          	bltu	a1,a0,800090dc <__memmove+0x108>
    80008ff0:	00758713          	addi	a4,a1,7
    80008ff4:	00a5e7b3          	or	a5,a1,a0
    80008ff8:	40a70733          	sub	a4,a4,a0
    80008ffc:	0077f793          	andi	a5,a5,7
    80009000:	00f73713          	sltiu	a4,a4,15
    80009004:	00174713          	xori	a4,a4,1
    80009008:	0017b793          	seqz	a5,a5
    8000900c:	00e7f7b3          	and	a5,a5,a4
    80009010:	10078863          	beqz	a5,80009120 <__memmove+0x14c>
    80009014:	00900793          	li	a5,9
    80009018:	1107f463          	bgeu	a5,a6,80009120 <__memmove+0x14c>
    8000901c:	0036581b          	srliw	a6,a2,0x3
    80009020:	fff8081b          	addiw	a6,a6,-1
    80009024:	02081813          	slli	a6,a6,0x20
    80009028:	01d85893          	srli	a7,a6,0x1d
    8000902c:	00858813          	addi	a6,a1,8
    80009030:	00058793          	mv	a5,a1
    80009034:	00050713          	mv	a4,a0
    80009038:	01088833          	add	a6,a7,a6
    8000903c:	0007b883          	ld	a7,0(a5)
    80009040:	00878793          	addi	a5,a5,8
    80009044:	00870713          	addi	a4,a4,8
    80009048:	ff173c23          	sd	a7,-8(a4)
    8000904c:	ff0798e3          	bne	a5,a6,8000903c <__memmove+0x68>
    80009050:	ff867713          	andi	a4,a2,-8
    80009054:	02071793          	slli	a5,a4,0x20
    80009058:	0207d793          	srli	a5,a5,0x20
    8000905c:	00f585b3          	add	a1,a1,a5
    80009060:	40e686bb          	subw	a3,a3,a4
    80009064:	00f507b3          	add	a5,a0,a5
    80009068:	06e60463          	beq	a2,a4,800090d0 <__memmove+0xfc>
    8000906c:	0005c703          	lbu	a4,0(a1)
    80009070:	00e78023          	sb	a4,0(a5)
    80009074:	04068e63          	beqz	a3,800090d0 <__memmove+0xfc>
    80009078:	0015c603          	lbu	a2,1(a1)
    8000907c:	00100713          	li	a4,1
    80009080:	00c780a3          	sb	a2,1(a5)
    80009084:	04e68663          	beq	a3,a4,800090d0 <__memmove+0xfc>
    80009088:	0025c603          	lbu	a2,2(a1)
    8000908c:	00200713          	li	a4,2
    80009090:	00c78123          	sb	a2,2(a5)
    80009094:	02e68e63          	beq	a3,a4,800090d0 <__memmove+0xfc>
    80009098:	0035c603          	lbu	a2,3(a1)
    8000909c:	00300713          	li	a4,3
    800090a0:	00c781a3          	sb	a2,3(a5)
    800090a4:	02e68663          	beq	a3,a4,800090d0 <__memmove+0xfc>
    800090a8:	0045c603          	lbu	a2,4(a1)
    800090ac:	00400713          	li	a4,4
    800090b0:	00c78223          	sb	a2,4(a5)
    800090b4:	00e68e63          	beq	a3,a4,800090d0 <__memmove+0xfc>
    800090b8:	0055c603          	lbu	a2,5(a1)
    800090bc:	00500713          	li	a4,5
    800090c0:	00c782a3          	sb	a2,5(a5)
    800090c4:	00e68663          	beq	a3,a4,800090d0 <__memmove+0xfc>
    800090c8:	0065c703          	lbu	a4,6(a1)
    800090cc:	00e78323          	sb	a4,6(a5)
    800090d0:	00813403          	ld	s0,8(sp)
    800090d4:	01010113          	addi	sp,sp,16
    800090d8:	00008067          	ret
    800090dc:	02061713          	slli	a4,a2,0x20
    800090e0:	02075713          	srli	a4,a4,0x20
    800090e4:	00e587b3          	add	a5,a1,a4
    800090e8:	f0f574e3          	bgeu	a0,a5,80008ff0 <__memmove+0x1c>
    800090ec:	02069613          	slli	a2,a3,0x20
    800090f0:	02065613          	srli	a2,a2,0x20
    800090f4:	fff64613          	not	a2,a2
    800090f8:	00e50733          	add	a4,a0,a4
    800090fc:	00c78633          	add	a2,a5,a2
    80009100:	fff7c683          	lbu	a3,-1(a5)
    80009104:	fff78793          	addi	a5,a5,-1
    80009108:	fff70713          	addi	a4,a4,-1
    8000910c:	00d70023          	sb	a3,0(a4)
    80009110:	fec798e3          	bne	a5,a2,80009100 <__memmove+0x12c>
    80009114:	00813403          	ld	s0,8(sp)
    80009118:	01010113          	addi	sp,sp,16
    8000911c:	00008067          	ret
    80009120:	02069713          	slli	a4,a3,0x20
    80009124:	02075713          	srli	a4,a4,0x20
    80009128:	00170713          	addi	a4,a4,1
    8000912c:	00e50733          	add	a4,a0,a4
    80009130:	00050793          	mv	a5,a0
    80009134:	0005c683          	lbu	a3,0(a1)
    80009138:	00178793          	addi	a5,a5,1
    8000913c:	00158593          	addi	a1,a1,1
    80009140:	fed78fa3          	sb	a3,-1(a5)
    80009144:	fee798e3          	bne	a5,a4,80009134 <__memmove+0x160>
    80009148:	f89ff06f          	j	800090d0 <__memmove+0xfc>

000000008000914c <__putc>:
    8000914c:	fe010113          	addi	sp,sp,-32
    80009150:	00813823          	sd	s0,16(sp)
    80009154:	00113c23          	sd	ra,24(sp)
    80009158:	02010413          	addi	s0,sp,32
    8000915c:	00050793          	mv	a5,a0
    80009160:	fef40593          	addi	a1,s0,-17
    80009164:	00100613          	li	a2,1
    80009168:	00000513          	li	a0,0
    8000916c:	fef407a3          	sb	a5,-17(s0)
    80009170:	fffff097          	auipc	ra,0xfffff
    80009174:	b3c080e7          	jalr	-1220(ra) # 80007cac <console_write>
    80009178:	01813083          	ld	ra,24(sp)
    8000917c:	01013403          	ld	s0,16(sp)
    80009180:	02010113          	addi	sp,sp,32
    80009184:	00008067          	ret

0000000080009188 <__getc>:
    80009188:	fe010113          	addi	sp,sp,-32
    8000918c:	00813823          	sd	s0,16(sp)
    80009190:	00113c23          	sd	ra,24(sp)
    80009194:	02010413          	addi	s0,sp,32
    80009198:	fe840593          	addi	a1,s0,-24
    8000919c:	00100613          	li	a2,1
    800091a0:	00000513          	li	a0,0
    800091a4:	fffff097          	auipc	ra,0xfffff
    800091a8:	ae8080e7          	jalr	-1304(ra) # 80007c8c <console_read>
    800091ac:	fe844503          	lbu	a0,-24(s0)
    800091b0:	01813083          	ld	ra,24(sp)
    800091b4:	01013403          	ld	s0,16(sp)
    800091b8:	02010113          	addi	sp,sp,32
    800091bc:	00008067          	ret

00000000800091c0 <console_handler>:
    800091c0:	fe010113          	addi	sp,sp,-32
    800091c4:	00813823          	sd	s0,16(sp)
    800091c8:	00113c23          	sd	ra,24(sp)
    800091cc:	00913423          	sd	s1,8(sp)
    800091d0:	02010413          	addi	s0,sp,32
    800091d4:	14202773          	csrr	a4,scause
    800091d8:	100027f3          	csrr	a5,sstatus
    800091dc:	0027f793          	andi	a5,a5,2
    800091e0:	06079e63          	bnez	a5,8000925c <console_handler+0x9c>
    800091e4:	00074c63          	bltz	a4,800091fc <console_handler+0x3c>
    800091e8:	01813083          	ld	ra,24(sp)
    800091ec:	01013403          	ld	s0,16(sp)
    800091f0:	00813483          	ld	s1,8(sp)
    800091f4:	02010113          	addi	sp,sp,32
    800091f8:	00008067          	ret
    800091fc:	0ff77713          	andi	a4,a4,255
    80009200:	00900793          	li	a5,9
    80009204:	fef712e3          	bne	a4,a5,800091e8 <console_handler+0x28>
    80009208:	ffffe097          	auipc	ra,0xffffe
    8000920c:	6dc080e7          	jalr	1756(ra) # 800078e4 <plic_claim>
    80009210:	00a00793          	li	a5,10
    80009214:	00050493          	mv	s1,a0
    80009218:	02f50c63          	beq	a0,a5,80009250 <console_handler+0x90>
    8000921c:	fc0506e3          	beqz	a0,800091e8 <console_handler+0x28>
    80009220:	00050593          	mv	a1,a0
    80009224:	00001517          	auipc	a0,0x1
    80009228:	46c50513          	addi	a0,a0,1132 # 8000a690 <CONSOLE_STATUS+0x680>
    8000922c:	fffff097          	auipc	ra,0xfffff
    80009230:	afc080e7          	jalr	-1284(ra) # 80007d28 <__printf>
    80009234:	01013403          	ld	s0,16(sp)
    80009238:	01813083          	ld	ra,24(sp)
    8000923c:	00048513          	mv	a0,s1
    80009240:	00813483          	ld	s1,8(sp)
    80009244:	02010113          	addi	sp,sp,32
    80009248:	ffffe317          	auipc	t1,0xffffe
    8000924c:	6d430067          	jr	1748(t1) # 8000791c <plic_complete>
    80009250:	fffff097          	auipc	ra,0xfffff
    80009254:	3e0080e7          	jalr	992(ra) # 80008630 <uartintr>
    80009258:	fddff06f          	j	80009234 <console_handler+0x74>
    8000925c:	00001517          	auipc	a0,0x1
    80009260:	53450513          	addi	a0,a0,1332 # 8000a790 <digits+0x78>
    80009264:	fffff097          	auipc	ra,0xfffff
    80009268:	a68080e7          	jalr	-1432(ra) # 80007ccc <panic>
	...
