
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	be013103          	ld	sp,-1056(sp) # 8000bbe0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	489060ef          	jal	ra,80006ca4 <start>

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
    80001180:	035010ef          	jal	ra,800029b4 <_ZN5RISCV16handle_interruptEv>

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
    8000171c:	8f8080e7          	jalr	-1800(ra) # 80003010 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	688080e7          	jalr	1672(ra) # 80002dd0 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001788:	0000a797          	auipc	a5,0xa
    8000178c:	4d87b783          	ld	a5,1240(a5) # 8000bc60 <_ZN3Sem5firstE>
    80001790:	02078263          	beqz	a5,800017b4 <_ZN3Sem7sem_addEPS_+0x38>
    else last = last -> next = toAdd;
    80001794:	0000a797          	auipc	a5,0xa
    80001798:	4cc78793          	addi	a5,a5,1228 # 8000bc60 <_ZN3Sem5firstE>
    8000179c:	0087b703          	ld	a4,8(a5)
    800017a0:	00a73423          	sd	a0,8(a4)
    800017a4:	00a7b423          	sd	a0,8(a5)

}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret
    if (!first) first = last = toAdd;
    800017b4:	0000a797          	auipc	a5,0xa
    800017b8:	4ac78793          	addi	a5,a5,1196 # 8000bc60 <_ZN3Sem5firstE>
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
    8000184c:	0000a797          	auipc	a5,0xa
    80001850:	4147b783          	ld	a5,1044(a5) # 8000bc60 <_ZN3Sem5firstE>
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
    80001888:	0000a717          	auipc	a4,0xa
    8000188c:	3d870713          	addi	a4,a4,984 # 8000bc60 <_ZN3Sem5firstE>
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
    800018b4:	0000a917          	auipc	s2,0xa
    800018b8:	34493903          	ld	s2,836(s2) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800018bc:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::BLOCKED;
    800018c0:	00400793          	li	a5,4
    800018c4:	06f4a423          	sw	a5,104(s1)
    blocked.add(oldRunning);
    800018c8:	00048593          	mv	a1,s1
    800018cc:	01050513          	addi	a0,a0,16
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	264080e7          	jalr	612(ra) # 80001b34 <_ZN4ListI3TCBE3addEPS0_>
    TCB::running = Scheduler::get();
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	348080e7          	jalr	840(ra) # 80001c20 <_ZN9Scheduler3getEv>
    800018e0:	00050593          	mv	a1,a0
    800018e4:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	a80080e7          	jalr	-1408(ra) # 8000336c <_ZN3TCB5yieldEPS_S0_>
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
    80001960:	08050063          	beqz	a0,800019e0 <_ZN3Sem9timedwaitEPS_m+0x80>
    if (--(handle->value) < 0) {
    80001964:	00052783          	lw	a5,0(a0)
    80001968:	fff7879b          	addiw	a5,a5,-1
    8000196c:	00f52023          	sw	a5,0(a0)
    80001970:	02079713          	slli	a4,a5,0x20
    80001974:	00074663          	bltz	a4,80001980 <_ZN3Sem9timedwaitEPS_m+0x20>
    return 0;
    80001978:	00000513          	li	a0,0
}
    8000197c:	00008067          	ret
int Sem::timedwait(sem_t handle, time_t time) {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	02010413          	addi	s0,sp,32
        TCB::running->time_on_sem = time;
    80001994:	0000a497          	auipc	s1,0xa
    80001998:	2644b483          	ld	s1,612(s1) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000199c:	0004b783          	ld	a5,0(s1)
    800019a0:	00b7bc23          	sd	a1,24(a5)
        handle->timedBlock++;
    800019a4:	02852783          	lw	a5,40(a0)
    800019a8:	0017879b          	addiw	a5,a5,1
    800019ac:	02f52423          	sw	a5,40(a0)
        handle->block();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	eec080e7          	jalr	-276(ra) # 8000189c <_ZN3Sem5blockEv>
        if (!TCB::running->time_on_sem) return TIMEOUT;
    800019b8:	0004b783          	ld	a5,0(s1)
    800019bc:	0187b703          	ld	a4,24(a5)
    800019c0:	02070463          	beqz	a4,800019e8 <_ZN3Sem9timedwaitEPS_m+0x88>
        else TCB::running->time_on_sem = 0;
    800019c4:	0007bc23          	sd	zero,24(a5)
    return 0;
    800019c8:	00000513          	li	a0,0
}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	02010113          	addi	sp,sp,32
    800019dc:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    800019e0:	ffc00513          	li	a0,-4
    800019e4:	00008067          	ret
        if (!TCB::running->time_on_sem) return TIMEOUT;
    800019e8:	ffe00513          	li	a0,-2
    800019ec:	fe1ff06f          	j	800019cc <_ZN3Sem9timedwaitEPS_m+0x6c>

00000000800019f0 <_ZN3Sem7deblockEv>:
void Sem::deblock() {
    800019f0:	fe010113          	addi	sp,sp,-32
    800019f4:	00113c23          	sd	ra,24(sp)
    800019f8:	00813823          	sd	s0,16(sp)
    800019fc:	00913423          	sd	s1,8(sp)
    80001a00:	02010413          	addi	s0,sp,32
    80001a04:	00050493          	mv	s1,a0
    TCB* tcb = blocked.get();
    80001a08:	01050513          	addi	a0,a0,16
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	1a0080e7          	jalr	416(ra) # 80001bac <_ZN4ListI3TCBE3getEv>
    if (!tcb) return; // should not happen
    80001a14:	02050263          	beqz	a0,80001a38 <_ZN3Sem7deblockEv+0x48>
    if (tcb->time_on_sem > 0) {
    80001a18:	01853783          	ld	a5,24(a0)
    80001a1c:	00078863          	beqz	a5,80001a2c <_ZN3Sem7deblockEv+0x3c>
        timedBlock--;
    80001a20:	0284a783          	lw	a5,40(s1)
    80001a24:	fff7879b          	addiw	a5,a5,-1
    80001a28:	02f4a423          	sw	a5,40(s1)
    tcb->current_state = TCB::RUNNABLE;
    80001a2c:	06052423          	sw	zero,104(a0)
    Scheduler::put(tcb);
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	234080e7          	jalr	564(ra) # 80001c64 <_ZN9Scheduler3putEP3TCB>
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret

0000000080001a4c <_ZN3Sem7s_closeEPS_>:
    if (!handle) return -1;
    80001a4c:	06050463          	beqz	a0,80001ab4 <_ZN3Sem7s_closeEPS_+0x68>
int Sem::s_close(sem_t handle) {
    80001a50:	fe010113          	addi	sp,sp,-32
    80001a54:	00113c23          	sd	ra,24(sp)
    80001a58:	00813823          	sd	s0,16(sp)
    80001a5c:	00913423          	sd	s1,8(sp)
    80001a60:	02010413          	addi	s0,sp,32
    80001a64:	00050493          	mv	s1,a0
    sem_remove(handle); // remove from semaphores list
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	dd8080e7          	jalr	-552(ra) # 80001840 <_ZN3Sem10sem_removeEPS_>
    while (handle->blocked.peek()) {
    80001a70:	01048513          	addi	a0,s1,16
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	09c080e7          	jalr	156(ra) # 80001b10 <_ZN4ListI3TCBE4peekEv>
    80001a7c:	00050a63          	beqz	a0,80001a90 <_ZN3Sem7s_closeEPS_+0x44>
        handle->deblock();
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	f6c080e7          	jalr	-148(ra) # 800019f0 <_ZN3Sem7deblockEv>
    while (handle->blocked.peek()) {
    80001a8c:	fe5ff06f          	j	80001a70 <_ZN3Sem7s_closeEPS_+0x24>
    delete handle;
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	c74080e7          	jalr	-908(ra) # 80001708 <_ZN3SemdlEPv>
    return 0;
    80001a9c:	00000513          	li	a0,0
}
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret
    if (!handle) return -1;
    80001ab4:	fff00513          	li	a0,-1
}
    80001ab8:	00008067          	ret

0000000080001abc <_ZN3Sem6signalEPS_>:
    if (!handle) return SEM_CLOSED;
    80001abc:	04050663          	beqz	a0,80001b08 <_ZN3Sem6signalEPS_+0x4c>
    if (++handle->value<= 0) handle->deblock();
    80001ac0:	00052783          	lw	a5,0(a0)
    80001ac4:	0017879b          	addiw	a5,a5,1
    80001ac8:	0007871b          	sext.w	a4,a5
    80001acc:	00f52023          	sw	a5,0(a0)
    80001ad0:	00e05663          	blez	a4,80001adc <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001ad4:	00000513          	li	a0,0
}
    80001ad8:	00008067          	ret
int Sem::signal(sem_t handle) {
    80001adc:	ff010113          	addi	sp,sp,-16
    80001ae0:	00113423          	sd	ra,8(sp)
    80001ae4:	00813023          	sd	s0,0(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    if (++handle->value<= 0) handle->deblock();
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	f04080e7          	jalr	-252(ra) # 800019f0 <_ZN3Sem7deblockEv>
    return 0;
    80001af4:	00000513          	li	a0,0
}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret
    if (!handle) return SEM_CLOSED;
    80001b08:	ffc00513          	li	a0,-4
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN4ListI3TCBE4peekEv>:
    count--;
    return t;
}

template <typename T>
T* List<T>::peek() {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00813423          	sd	s0,8(sp)
    80001b18:	01010413          	addi	s0,sp,16
    if (head) return head->data;
    80001b1c:	00053503          	ld	a0,0(a0)
    80001b20:	00050463          	beqz	a0,80001b28 <_ZN4ListI3TCBE4peekEv+0x18>
    80001b24:	00053503          	ld	a0,0(a0)
    else return nullptr;
}
    80001b28:	00813403          	ld	s0,8(sp)
    80001b2c:	01010113          	addi	sp,sp,16
    80001b30:	00008067          	ret

0000000080001b34 <_ZN4ListI3TCBE3addEPS0_>:
void List<T>::add(T *t) {
    80001b34:	fe010113          	addi	sp,sp,-32
    80001b38:	00113c23          	sd	ra,24(sp)
    80001b3c:	00813823          	sd	s0,16(sp)
    80001b40:	00913423          	sd	s1,8(sp)
    80001b44:	01213023          	sd	s2,0(sp)
    80001b48:	02010413          	addi	s0,sp,32
    80001b4c:	00050493          	mv	s1,a0
    80001b50:	00058913          	mv	s2,a1
    Elem* toAdd = new Elem(t);
    80001b54:	01000513          	li	a0,16
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	6f0080e7          	jalr	1776(ra) # 80002248 <_Znwm>
        explicit Elem(T* data) : data(data), next(nullptr) {}
    80001b60:	01253023          	sd	s2,0(a0)
    80001b64:	00053423          	sd	zero,8(a0)
    if (!head) head = tail = toAdd;
    80001b68:	0004b783          	ld	a5,0(s1)
    80001b6c:	02078a63          	beqz	a5,80001ba0 <_ZN4ListI3TCBE3addEPS0_+0x6c>
    else tail = tail -> next = toAdd;
    80001b70:	0084b783          	ld	a5,8(s1)
    80001b74:	00a7b423          	sd	a0,8(a5)
    80001b78:	00a4b423          	sd	a0,8(s1)
    count++;
    80001b7c:	0104a783          	lw	a5,16(s1)
    80001b80:	0017879b          	addiw	a5,a5,1
    80001b84:	00f4a823          	sw	a5,16(s1)
}
    80001b88:	01813083          	ld	ra,24(sp)
    80001b8c:	01013403          	ld	s0,16(sp)
    80001b90:	00813483          	ld	s1,8(sp)
    80001b94:	00013903          	ld	s2,0(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00008067          	ret
    if (!head) head = tail = toAdd;
    80001ba0:	00a4b423          	sd	a0,8(s1)
    80001ba4:	00a4b023          	sd	a0,0(s1)
    80001ba8:	fd5ff06f          	j	80001b7c <_ZN4ListI3TCBE3addEPS0_+0x48>

0000000080001bac <_ZN4ListI3TCBE3getEv>:
T* List<T>::get() {
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	01213023          	sd	s2,0(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    80001bc4:	00050493          	mv	s1,a0
    if (!head) return nullptr;
    80001bc8:	00053503          	ld	a0,0(a0)
    80001bcc:	04050663          	beqz	a0,80001c18 <_ZN4ListI3TCBE3getEv+0x6c>
    T* t = head -> data;
    80001bd0:	00053903          	ld	s2,0(a0)
    head = head -> next;
    80001bd4:	00853783          	ld	a5,8(a0)
    80001bd8:	00f4b023          	sd	a5,0(s1)
    if (!head) tail = nullptr;
    80001bdc:	02078a63          	beqz	a5,80001c10 <_ZN4ListI3TCBE3getEv+0x64>
    delete oldHead;
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	6e0080e7          	jalr	1760(ra) # 800022c0 <_ZdlPv>
    count--;
    80001be8:	0104a783          	lw	a5,16(s1)
    80001bec:	fff7879b          	addiw	a5,a5,-1
    80001bf0:	00f4a823          	sw	a5,16(s1)
}
    80001bf4:	00090513          	mv	a0,s2
    80001bf8:	01813083          	ld	ra,24(sp)
    80001bfc:	01013403          	ld	s0,16(sp)
    80001c00:	00813483          	ld	s1,8(sp)
    80001c04:	00013903          	ld	s2,0(sp)
    80001c08:	02010113          	addi	sp,sp,32
    80001c0c:	00008067          	ret
    if (!head) tail = nullptr;
    80001c10:	0004b423          	sd	zero,8(s1)
    80001c14:	fcdff06f          	j	80001be0 <_ZN4ListI3TCBE3getEv+0x34>
    if (!head) return nullptr;
    80001c18:	00050913          	mv	s2,a0
    80001c1c:	fd9ff06f          	j	80001bf4 <_ZN4ListI3TCBE3getEv+0x48>

0000000080001c20 <_ZN9Scheduler3getEv>:

TCB* Scheduler::first = nullptr;
TCB* Scheduler::last  = nullptr;
TCB* Scheduler::first_sleepy = nullptr;

TCB *Scheduler::get() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16

    if (!first) return nullptr;
    80001c2c:	0000a517          	auipc	a0,0xa
    80001c30:	04453503          	ld	a0,68(a0) # 8000bc70 <_ZN9Scheduler5firstE>
    80001c34:	00050c63          	beqz	a0,80001c4c <_ZN9Scheduler3getEv+0x2c>
    TCB* tcb = first;

    first = first -> next_ready;
    80001c38:	00853783          	ld	a5,8(a0)
    80001c3c:	0000a717          	auipc	a4,0xa
    80001c40:	02f73a23          	sd	a5,52(a4) # 8000bc70 <_ZN9Scheduler5firstE>
    if (!first) last = nullptr;
    80001c44:	00078a63          	beqz	a5,80001c58 <_ZN9Scheduler3getEv+0x38>
    tcb -> next_ready = nullptr;
    80001c48:	00053423          	sd	zero,8(a0)

    return tcb;
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
    if (!first) last = nullptr;
    80001c58:	0000a797          	auipc	a5,0xa
    80001c5c:	0207b023          	sd	zero,32(a5) # 8000bc78 <_ZN9Scheduler4lastE>
    80001c60:	fe9ff06f          	j	80001c48 <_ZN9Scheduler3getEv+0x28>

0000000080001c64 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *newTCB) {
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00813423          	sd	s0,8(sp)
    80001c6c:	01010413          	addi	s0,sp,16

    if (!first) first = last = newTCB;
    80001c70:	0000a797          	auipc	a5,0xa
    80001c74:	0007b783          	ld	a5,0(a5) # 8000bc70 <_ZN9Scheduler5firstE>
    80001c78:	02078263          	beqz	a5,80001c9c <_ZN9Scheduler3putEP3TCB+0x38>
    else last = last -> next_ready = newTCB;
    80001c7c:	0000a797          	auipc	a5,0xa
    80001c80:	ff478793          	addi	a5,a5,-12 # 8000bc70 <_ZN9Scheduler5firstE>
    80001c84:	0087b703          	ld	a4,8(a5)
    80001c88:	00a73423          	sd	a0,8(a4)
    80001c8c:	00a7b423          	sd	a0,8(a5)
}
    80001c90:	00813403          	ld	s0,8(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret
    if (!first) first = last = newTCB;
    80001c9c:	0000a797          	auipc	a5,0xa
    80001ca0:	fd478793          	addi	a5,a5,-44 # 8000bc70 <_ZN9Scheduler5firstE>
    80001ca4:	00a7b423          	sd	a0,8(a5)
    80001ca8:	00a7b023          	sd	a0,0(a5)
    80001cac:	fe5ff06f          	j	80001c90 <_ZN9Scheduler3putEP3TCB+0x2c>

0000000080001cb0 <_ZN9Scheduler4peekEv>:

TCB* Scheduler::peek() {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    if (!first) return nullptr;
    return first;
}
    80001cbc:	0000a517          	auipc	a0,0xa
    80001cc0:	fb453503          	ld	a0,-76(a0) # 8000bc70 <_ZN9Scheduler5firstE>
    80001cc4:	00813403          	ld	s0,8(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN9Scheduler5emptyEv>:

bool Scheduler::empty() {
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    return first != nullptr;
}
    80001cdc:	0000a517          	auipc	a0,0xa
    80001ce0:	f9453503          	ld	a0,-108(a0) # 8000bc70 <_ZN9Scheduler5firstE>
    80001ce4:	00a03533          	snez	a0,a0
    80001ce8:	00813403          	ld	s0,8(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN9SchedulernwEm>:
    return 0;


}

void *Scheduler::operator new(size_t size) {
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00113423          	sd	ra,8(sp)
    80001cfc:	00813023          	sd	s0,0(sp)
    80001d00:	01010413          	addi	s0,sp,16
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001d04:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    80001d08:	00655513          	srli	a0,a0,0x6
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	0c4080e7          	jalr	196(ra) # 80002dd0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d14:	00813083          	ld	ra,8(sp)
    80001d18:	00013403          	ld	s0,0(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *ptr) {
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00113423          	sd	ra,8(sp)
    80001d2c:	00813023          	sd	s0,0(sp)
    80001d30:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	2dc080e7          	jalr	732(ra) # 80003010 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d3c:	00813083          	ld	ra,8(sp)
    80001d40:	00013403          	ld	s0,0(sp)
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <_ZN9Scheduler7s_yieldEv>:

void Scheduler::s_yield() {
    80001d4c:	fe010113          	addi	sp,sp,-32
    80001d50:	00113c23          	sd	ra,24(sp)
    80001d54:	00813823          	sd	s0,16(sp)
    80001d58:	00913423          	sd	s1,8(sp)
    80001d5c:	01213023          	sd	s2,0(sp)
    80001d60:	02010413          	addi	s0,sp,32

    TCB* oldRunning = TCB::running;
    80001d64:	0000a917          	auipc	s2,0xa
    80001d68:	e9493903          	ld	s2,-364(s2) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d6c:	00093483          	ld	s1,0(s2)
    oldRunning -> current_state = TCB::SLEEPING;
    80001d70:	00100793          	li	a5,1
    80001d74:	06f4a423          	sw	a5,104(s1)

    TCB::running = get(); // Scheduler::get
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	ea8080e7          	jalr	-344(ra) # 80001c20 <_ZN9Scheduler3getEv>
    80001d80:	00050593          	mv	a1,a0
    80001d84:	00a93023          	sd	a0,0(s2)
    TCB::yield(oldRunning, TCB::running);
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	5e0080e7          	jalr	1504(ra) # 8000336c <_ZN3TCB5yieldEPS_S0_>

}
    80001d94:	01813083          	ld	ra,24(sp)
    80001d98:	01013403          	ld	s0,16(sp)
    80001d9c:	00813483          	ld	s1,8(sp)
    80001da0:	00013903          	ld	s2,0(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret

0000000080001dac <_ZN9Scheduler10time_sleepEP3TCBm>:
    if (time == 0) return -1;
    80001dac:	0c058663          	beqz	a1,80001e78 <_ZN9Scheduler10time_sleepEP3TCBm+0xcc>
int Scheduler::time_sleep(TCB *tcb, time_t time) {
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    if (!first_sleepy) {
    80001dc0:	0000a797          	auipc	a5,0xa
    80001dc4:	ec07b783          	ld	a5,-320(a5) # 8000bc80 <_ZN9Scheduler12first_sleepyE>
    80001dc8:	02078663          	beqz	a5,80001df4 <_ZN9Scheduler10time_sleepEP3TCBm+0x48>
    time_t time_sum = 0;
    80001dcc:	00000693          	li	a3,0
    TCB* prev = nullptr, *curr = first_sleepy; // insert between
    80001dd0:	00000613          	li	a2,0
    while (curr) {
    80001dd4:	06078c63          	beqz	a5,80001e4c <_ZN9Scheduler10time_sleepEP3TCBm+0xa0>
        if (time_sum + curr->sleeping_time > time) {
    80001dd8:	0207b703          	ld	a4,32(a5)
    80001ddc:	00d70733          	add	a4,a4,a3
    80001de0:	02e5e863          	bltu	a1,a4,80001e10 <_ZN9Scheduler10time_sleepEP3TCBm+0x64>
        time_sum += curr -> sleeping_time;
    80001de4:	00070693          	mv	a3,a4
        prev = curr;
    80001de8:	00078613          	mv	a2,a5
        curr = curr -> next_sleepy;
    80001dec:	0107b783          	ld	a5,16(a5)
    while (curr) {
    80001df0:	fe5ff06f          	j	80001dd4 <_ZN9Scheduler10time_sleepEP3TCBm+0x28>
        first_sleepy = tcb;
    80001df4:	0000a797          	auipc	a5,0xa
    80001df8:	e8a7b623          	sd	a0,-372(a5) # 8000bc80 <_ZN9Scheduler12first_sleepyE>
        tcb -> sleeping_time = time;
    80001dfc:	02b53023          	sd	a1,32(a0)
        s_yield();
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	f4c080e7          	jalr	-180(ra) # 80001d4c <_ZN9Scheduler7s_yieldEv>
        return 0;
    80001e08:	00000513          	li	a0,0
    80001e0c:	05c0006f          	j	80001e68 <_ZN9Scheduler10time_sleepEP3TCBm+0xbc>
            if (prev) prev -> next_sleepy = tcb;
    80001e10:	02060863          	beqz	a2,80001e40 <_ZN9Scheduler10time_sleepEP3TCBm+0x94>
    80001e14:	00a63823          	sd	a0,16(a2)
            tcb -> next_sleepy = curr;
    80001e18:	00f53823          	sd	a5,16(a0)
            tcb -> sleeping_time = time - time_sum;
    80001e1c:	40d586b3          	sub	a3,a1,a3
    80001e20:	02d53023          	sd	a3,32(a0)
            curr -> sleeping_time -= tcb -> sleeping_time;
    80001e24:	0207b583          	ld	a1,32(a5)
    80001e28:	40d586b3          	sub	a3,a1,a3
    80001e2c:	02d7b023          	sd	a3,32(a5)
            s_yield();
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	f1c080e7          	jalr	-228(ra) # 80001d4c <_ZN9Scheduler7s_yieldEv>
            return 0;
    80001e38:	00000513          	li	a0,0
    80001e3c:	02c0006f          	j	80001e68 <_ZN9Scheduler10time_sleepEP3TCBm+0xbc>
            else first_sleepy = tcb;
    80001e40:	0000a717          	auipc	a4,0xa
    80001e44:	e4a73023          	sd	a0,-448(a4) # 8000bc80 <_ZN9Scheduler12first_sleepyE>
    80001e48:	fd1ff06f          	j	80001e18 <_ZN9Scheduler10time_sleepEP3TCBm+0x6c>
    tcb -> sleeping_time = time - time_sum;
    80001e4c:	40d586b3          	sub	a3,a1,a3
    80001e50:	02d53023          	sd	a3,32(a0)
    if (prev) prev -> next_sleepy = tcb;
    80001e54:	00060463          	beqz	a2,80001e5c <_ZN9Scheduler10time_sleepEP3TCBm+0xb0>
    80001e58:	00a63823          	sd	a0,16(a2)
    s_yield();
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	ef0080e7          	jalr	-272(ra) # 80001d4c <_ZN9Scheduler7s_yieldEv>
    return 0;
    80001e64:	00000513          	li	a0,0
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret
    if (time == 0) return -1;
    80001e78:	fff00513          	li	a0,-1
}
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN9myConsole14init_myconsoleEv>:
#include "../h/Console.hpp"

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;

void myConsole::init_myconsole() {
    80001e80:	fe010113          	addi	sp,sp,-32
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00813823          	sd	s0,16(sp)
    80001e8c:	00913423          	sd	s1,8(sp)
    80001e90:	01213023          	sd	s2,0(sp)
    80001e94:	02010413          	addi	s0,sp,32
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001e98:	14800513          	li	a0,328
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	a0c080e7          	jalr	-1524(ra) # 800028a8 <_ZN13BoundedBuffernwEm>
    80001ea4:	00050493          	mv	s1,a0
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	884080e7          	jalr	-1916(ra) # 8000272c <_ZN13BoundedBufferC1Ev>
    80001eb0:	0000a797          	auipc	a5,0xa
    80001eb4:	dc97bc23          	sd	s1,-552(a5) # 8000bc88 <_ZN9myConsole11inputBufferE>
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001eb8:	14800513          	li	a0,328
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	9ec080e7          	jalr	-1556(ra) # 800028a8 <_ZN13BoundedBuffernwEm>
    80001ec4:	00050493          	mv	s1,a0
    80001ec8:	00001097          	auipc	ra,0x1
    80001ecc:	864080e7          	jalr	-1948(ra) # 8000272c <_ZN13BoundedBufferC1Ev>
    80001ed0:	0000a797          	auipc	a5,0xa
    80001ed4:	dc97b023          	sd	s1,-576(a5) # 8000bc90 <_ZN9myConsole12outputBufferE>
}
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	00813483          	ld	s1,8(sp)
    80001ee4:	00013903          	ld	s2,0(sp)
    80001ee8:	02010113          	addi	sp,sp,32
    80001eec:	00008067          	ret
    80001ef0:	00050913          	mv	s2,a0
    inputBuffer = new BoundedBuffer();   // from controller to getc
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	9e0080e7          	jalr	-1568(ra) # 800028d8 <_ZN13BoundedBufferdlEPv>
    80001f00:	00090513          	mv	a0,s2
    80001f04:	0000b097          	auipc	ra,0xb
    80001f08:	ef4080e7          	jalr	-268(ra) # 8000cdf8 <_Unwind_Resume>
    80001f0c:	00050913          	mv	s2,a0
    outputBuffer = new BoundedBuffer();  // from putc to controller
    80001f10:	00048513          	mv	a0,s1
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	9c4080e7          	jalr	-1596(ra) # 800028d8 <_ZN13BoundedBufferdlEPv>
    80001f1c:	00090513          	mv	a0,s2
    80001f20:	0000b097          	auipc	ra,0xb
    80001f24:	ed8080e7          	jalr	-296(ra) # 8000cdf8 <_Unwind_Resume>

0000000080001f28 <_ZN9myConsole10input_getcEv>:

char myConsole::input_getc() {
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	00813023          	sd	s0,0(sp)
    80001f34:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80001f38:	0000a517          	auipc	a0,0xa
    80001f3c:	d5053503          	ld	a0,-688(a0) # 8000bc88 <_ZN9myConsole11inputBufferE>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	8f0080e7          	jalr	-1808(ra) # 80002830 <_ZN13BoundedBuffer3getEv>
}
    80001f48:	00813083          	ld	ra,8(sp)
    80001f4c:	00013403          	ld	s0,0(sp)
    80001f50:	01010113          	addi	sp,sp,16
    80001f54:	00008067          	ret

0000000080001f58 <_ZN9myConsole11output_putcEc>:

void myConsole::output_putc(char c) {
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00113423          	sd	ra,8(sp)
    80001f60:	00813023          	sd	s0,0(sp)
    80001f64:	01010413          	addi	s0,sp,16
    80001f68:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    80001f6c:	0000a517          	auipc	a0,0xa
    80001f70:	d2453503          	ld	a0,-732(a0) # 8000bc90 <_ZN9myConsole12outputBufferE>
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	850080e7          	jalr	-1968(ra) # 800027c4 <_ZN13BoundedBuffer3putEc>
}
    80001f7c:	00813083          	ld	ra,8(sp)
    80001f80:	00013403          	ld	s0,0(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_ZN9myConsole11output_getcEv>:

char myConsole::output_getc() {
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00113423          	sd	ra,8(sp)
    80001f94:	00813023          	sd	s0,0(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return outputBuffer->get();
    80001f9c:	0000a517          	auipc	a0,0xa
    80001fa0:	cf453503          	ld	a0,-780(a0) # 8000bc90 <_ZN9myConsole12outputBufferE>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	88c080e7          	jalr	-1908(ra) # 80002830 <_ZN13BoundedBuffer3getEv>
}
    80001fac:	00813083          	ld	ra,8(sp)
    80001fb0:	00013403          	ld	s0,0(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN9myConsole10input_putcEc>:

void myConsole::input_putc(char c) {
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    80001fcc:	00050593          	mv	a1,a0
    inputBuffer->put(c);
    80001fd0:	0000a517          	auipc	a0,0xa
    80001fd4:	cb853503          	ld	a0,-840(a0) # 8000bc88 <_ZN9myConsole11inputBufferE>
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	7ec080e7          	jalr	2028(ra) # 800027c4 <_ZN13BoundedBuffer3putEc>
}
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN9myConsole15no_work_for_conEv>:

bool myConsole::no_work_for_con() {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    return outputBuffer->empty();
    80002000:	0000a517          	auipc	a0,0xa
    80002004:	c9053503          	ld	a0,-880(a0) # 8000bc90 <_ZN9myConsole12outputBufferE>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	8f8080e7          	jalr	-1800(ra) # 80002900 <_ZNK13BoundedBuffer5emptyEv>
}
    80002010:	00813083          	ld	ra,8(sp)
    80002014:	00013403          	ld	s0,0(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_Z14handleNewCharsPv>:

thread_t mainThread;
thread_t consoleThread;
thread_t userMainThread;

void handleNewChars(void * args) {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    80002030:	01c0006f          	j	8000204c <_Z14handleNewCharsPv+0x2c>

    while (true) {
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            // console controller is ready for new char
            char c = myConsole::output_getc();
    80002034:	00000097          	auipc	ra,0x0
    80002038:	f58080e7          	jalr	-168(ra) # 80001f8c <_ZN9myConsole11output_getcEv>
//            if (c == '\r') continue;
            *(char *) CONSOLE_TX_DATA = c;
    8000203c:	0000a797          	auipc	a5,0xa
    80002040:	b9c7b783          	ld	a5,-1124(a5) # 8000bbd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002044:	0007b783          	ld	a5,0(a5)
    80002048:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    8000204c:	0000a797          	auipc	a5,0xa
    80002050:	b747b783          	ld	a5,-1164(a5) # 8000bbc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002054:	0007b783          	ld	a5,0(a5)
    80002058:	0007c783          	lbu	a5,0(a5)
    8000205c:	0207f793          	andi	a5,a5,32
    80002060:	fc079ae3          	bnez	a5,80002034 <_Z14handleNewCharsPv+0x14>
            // pop from output buffer and wr to TX DATA
        }

        // no more work to do, move on
        thread_dispatch();
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	378080e7          	jalr	888(ra) # 800013dc <_Z15thread_dispatchv>
    }
    8000206c:	fe1ff06f          	j	8000204c <_Z14handleNewCharsPv+0x2c>

0000000080002070 <_Z11userWrapperPv>:
}

extern void userMain();

void userWrapper(void*) {
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00113423          	sd	ra,8(sp)
    80002078:	00813023          	sd	s0,0(sp)
    8000207c:	01010413          	addi	s0,sp,16
    userMain();
    80002080:	00004097          	auipc	ra,0x4
    80002084:	09c080e7          	jalr	156(ra) # 8000611c <_Z8userMainv>
}
    80002088:	00813083          	ld	ra,8(sp)
    8000208c:	00013403          	ld	s0,0(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <main>:

int main() {
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	00813823          	sd	s0,16(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    800020ac:	0000a797          	auipc	a5,0xa
    800020b0:	b247b783          	ld	a5,-1244(a5) # 8000bbd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    800020b4:	10579073          	csrw	stvec,a5

    MemoryAllocator::init_allocator();
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	e58080e7          	jalr	-424(ra) # 80002f10 <_ZN15MemoryAllocator14init_allocatorEv>
    myConsole::init_myconsole();
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	dc0080e7          	jalr	-576(ra) # 80001e80 <_ZN9myConsole14init_myconsoleEv>

    thread_create(&mainThread, nullptr, nullptr); // main
    800020c8:	0000a497          	auipc	s1,0xa
    800020cc:	bd048493          	addi	s1,s1,-1072 # 8000bc98 <mainThread>
    800020d0:	00000613          	li	a2,0
    800020d4:	00000593          	li	a1,0
    800020d8:	00048513          	mv	a0,s1
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	220080e7          	jalr	544(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = mainThread;
    800020e4:	0004b703          	ld	a4,0(s1)
    800020e8:	0000a797          	auipc	a5,0xa
    800020ec:	b107b783          	ld	a5,-1264(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800020f0:	00e7b023          	sd	a4,0(a5)
inline void RISCV::mask_status(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline void RISCV::set_status(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    800020f4:	00200793          	li	a5,2
    800020f8:	1007a073          	csrs	sstatus,a5

    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&consoleThread, handleNewChars, nullptr);
    800020fc:	00000613          	li	a2,0
    80002100:	00000597          	auipc	a1,0x0
    80002104:	f2058593          	addi	a1,a1,-224 # 80002020 <_Z14handleNewCharsPv>
    80002108:	0000a517          	auipc	a0,0xa
    8000210c:	b9850513          	addi	a0,a0,-1128 # 8000bca0 <consoleThread>
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	1ec080e7          	jalr	492(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

    thread_create(&userMainThread, userWrapper, nullptr);
    80002118:	00000613          	li	a2,0
    8000211c:	00000597          	auipc	a1,0x0
    80002120:	f5458593          	addi	a1,a1,-172 # 80002070 <_Z11userWrapperPv>
    80002124:	0000a517          	auipc	a0,0xa
    80002128:	b8450513          	addi	a0,a0,-1148 # 8000bca8 <userMainThread>
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	1d0080e7          	jalr	464(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>

     while (!userMainThread->isFinished()) thread_dispatch();
    80002134:	0000a797          	auipc	a5,0xa
    80002138:	b747b783          	ld	a5,-1164(a5) # 8000bca8 <userMainThread>

    time_t getTimeSlice() const {return time_slice;}

    static bool isRunnable();

    bool isFinished() {return current_state == state::FINISHED;}
    8000213c:	0687a703          	lw	a4,104(a5)
    80002140:	00300793          	li	a5,3
    80002144:	00f70863          	beq	a4,a5,80002154 <main+0xbc>
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	294080e7          	jalr	660(ra) # 800013dc <_Z15thread_dispatchv>
    80002150:	fe5ff06f          	j	80002134 <main+0x9c>
     while (!myConsole::no_work_for_con()) thread_dispatch();
    80002154:	00000097          	auipc	ra,0x0
    80002158:	e9c080e7          	jalr	-356(ra) # 80001ff0 <_ZN9myConsole15no_work_for_conEv>
    8000215c:	00051863          	bnez	a0,8000216c <main+0xd4>
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	27c080e7          	jalr	636(ra) # 800013dc <_Z15thread_dispatchv>
    80002168:	fedff06f          	j	80002154 <main+0xbc>

     return 0;
}
    8000216c:	00000513          	li	a0,0
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00813483          	ld	s1,8(sp)
    8000217c:	02010113          	addi	sp,sp,32
    80002180:	00008067          	ret

0000000080002184 <_ZN6Thread7wrapperEPv>:

int Thread::start() {
    return thread_create(&myHandle, this->body, this->arg);
}

void Thread::wrapper(void *arg) {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00113423          	sd	ra,8(sp)
    8000218c:	00813023          	sd	s0,0(sp)
    80002190:	01010413          	addi	s0,sp,16
    auto* t = (Thread*) arg;
    t->run();
    80002194:	00053783          	ld	a5,0(a0)
    80002198:	0107b783          	ld	a5,16(a5)
    8000219c:	000780e7          	jalr	a5
}
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00013403          	ld	s0,0(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::terminate() {
    period = time_t(-1); // max uint64, invalid value
}

void PeriodicThread::run() {
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	02010413          	addi	s0,sp,32
    800021c4:	00050493          	mv	s1,a0
    while (period != time_t(-1)) {
    800021c8:	0204b703          	ld	a4,32(s1)
    800021cc:	fff00793          	li	a5,-1
    800021d0:	02f70263          	beq	a4,a5,800021f4 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    800021d4:	0004b783          	ld	a5,0(s1)
    800021d8:	0187b783          	ld	a5,24(a5)
    800021dc:	00048513          	mv	a0,s1
    800021e0:	000780e7          	jalr	a5
        time_sleep(period);
    800021e4:	0204b503          	ld	a0,32(s1)
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	408080e7          	jalr	1032(ra) # 800015f0 <_Z10time_sleepm>
    while (period != time_t(-1)) {
    800021f0:	fd9ff06f          	j	800021c8 <_ZN14PeriodicThread3runEv+0x18>
    }
    800021f4:	01813083          	ld	ra,24(sp)
    800021f8:	01013403          	ld	s0,16(sp)
    800021fc:	00813483          	ld	s1,8(sp)
    80002200:	02010113          	addi	sp,sp,32
    80002204:	00008067          	ret

0000000080002208 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002208:	00009797          	auipc	a5,0x9
    8000220c:	7b878793          	addi	a5,a5,1976 # 8000b9c0 <_ZTV9Semaphore+0x10>
    80002210:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002214:	00853503          	ld	a0,8(a0)
    80002218:	02050663          	beqz	a0,80002244 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00113423          	sd	ra,8(sp)
    80002224:	00813023          	sd	s0,0(sp)
    80002228:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	23c080e7          	jalr	572(ra) # 80001468 <_Z9sem_closeP3Sem>
}
    80002234:	00813083          	ld	ra,8(sp)
    80002238:	00013403          	ld	s0,0(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret
    80002244:	00008067          	ret

0000000080002248 <_Znwm>:
void* operator new (size_t size) {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00113423          	sd	ra,8(sp)
    80002250:	00813023          	sd	s0,0(sp)
    80002254:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	008080e7          	jalr	8(ra) # 80001260 <_Z9mem_allocm>
}
    80002260:	00813083          	ld	ra,8(sp)
    80002264:	00013403          	ld	s0,0(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <_Znam>:
void* operator new[](size_t size) {
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00113423          	sd	ra,8(sp)
    80002278:	00813023          	sd	s0,0(sp)
    8000227c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	fe0080e7          	jalr	-32(ra) # 80001260 <_Z9mem_allocm>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZdaPv>:
void operator delete[](void* ptr) noexcept {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00113423          	sd	ra,8(sp)
    800022a0:	00813023          	sd	s0,0(sp)
    800022a4:	01010413          	addi	s0,sp,16
     mem_free(ptr);
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	008080e7          	jalr	8(ra) # 800012b0 <_Z8mem_freePv>
}
    800022b0:	00813083          	ld	ra,8(sp)
    800022b4:	00013403          	ld	s0,0(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret

00000000800022c0 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00113423          	sd	ra,8(sp)
    800022c8:	00813023          	sd	s0,0(sp)
    800022cc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	fe0080e7          	jalr	-32(ra) # 800012b0 <_Z8mem_freePv>
}
    800022d8:	00813083          	ld	ra,8(sp)
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800022e8:	00009797          	auipc	a5,0x9
    800022ec:	6b078793          	addi	a5,a5,1712 # 8000b998 <_ZTV6Thread+0x10>
    800022f0:	00f53023          	sd	a5,0(a0)
    delete &this->myHandle;
    800022f4:	00850513          	addi	a0,a0,8
    800022f8:	02050663          	beqz	a0,80002324 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00113423          	sd	ra,8(sp)
    80002304:	00813023          	sd	s0,0(sp)
    80002308:	01010413          	addi	s0,sp,16
    delete &this->myHandle;
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	fb4080e7          	jalr	-76(ra) # 800022c0 <_ZdlPv>
}
    80002314:	00813083          	ld	ra,8(sp)
    80002318:	00013403          	ld	s0,0(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret
    80002324:	00008067          	ret

0000000080002328 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002328:	fe010113          	addi	sp,sp,-32
    8000232c:	00113c23          	sd	ra,24(sp)
    80002330:	00813823          	sd	s0,16(sp)
    80002334:	00913423          	sd	s1,8(sp)
    80002338:	02010413          	addi	s0,sp,32
    8000233c:	00050493          	mv	s1,a0
}
    80002340:	00000097          	auipc	ra,0x0
    80002344:	fa8080e7          	jalr	-88(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80002348:	00048513          	mv	a0,s1
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	f74080e7          	jalr	-140(ra) # 800022c0 <_ZdlPv>
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	01013403          	ld	s0,16(sp)
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00008067          	ret

0000000080002368 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002368:	fe010113          	addi	sp,sp,-32
    8000236c:	00113c23          	sd	ra,24(sp)
    80002370:	00813823          	sd	s0,16(sp)
    80002374:	00913423          	sd	s1,8(sp)
    80002378:	02010413          	addi	s0,sp,32
    8000237c:	00050493          	mv	s1,a0
}
    80002380:	00000097          	auipc	ra,0x0
    80002384:	e88080e7          	jalr	-376(ra) # 80002208 <_ZN9SemaphoreD1Ev>
    80002388:	00048513          	mv	a0,s1
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	f34080e7          	jalr	-204(ra) # 800022c0 <_ZdlPv>
    80002394:	01813083          	ld	ra,24(sp)
    80002398:	01013403          	ld	s0,16(sp)
    8000239c:	00813483          	ld	s1,8(sp)
    800023a0:	02010113          	addi	sp,sp,32
    800023a4:	00008067          	ret

00000000800023a8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00813423          	sd	s0,8(sp)
    800023b0:	01010413          	addi	s0,sp,16
    800023b4:	00009797          	auipc	a5,0x9
    800023b8:	5e478793          	addi	a5,a5,1508 # 8000b998 <_ZTV6Thread+0x10>
    800023bc:	00f53023          	sd	a5,0(a0)
    800023c0:	00053423          	sd	zero,8(a0)
    this->body = body;
    800023c4:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800023c8:	00c53c23          	sd	a2,24(a0)
}
    800023cc:	00813403          	ld	s0,8(sp)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00813423          	sd	s0,8(sp)
    800023e0:	01010413          	addi	s0,sp,16
    800023e4:	00009797          	auipc	a5,0x9
    800023e8:	5b478793          	addi	a5,a5,1460 # 8000b998 <_ZTV6Thread+0x10>
    800023ec:	00f53023          	sd	a5,0(a0)
    800023f0:	00053423          	sd	zero,8(a0)
    this->body = wrapper;
    800023f4:	00000797          	auipc	a5,0x0
    800023f8:	d9078793          	addi	a5,a5,-624 # 80002184 <_ZN6Thread7wrapperEPv>
    800023fc:	00f53823          	sd	a5,16(a0)
    this->arg  = (void*) this;
    80002400:	00a53c23          	sd	a0,24(a0)
}
    80002404:	00813403          	ld	s0,8(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	1d0080e7          	jalr	464(ra) # 800015f0 <_Z10time_sleepm>
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	f94080e7          	jalr	-108(ra) # 800013dc <_Z15thread_dispatchv>
}
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_ZN6Thread5startEv>:
int Thread::start() {
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00113423          	sd	ra,8(sp)
    80002468:	00813023          	sd	s0,0(sp)
    8000246c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    80002470:	01853603          	ld	a2,24(a0)
    80002474:	01053583          	ld	a1,16(a0)
    80002478:	00850513          	addi	a0,a0,8
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	e80080e7          	jalr	-384(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002484:	00813083          	ld	ra,8(sp)
    80002488:	00013403          	ld	s0,0(sp)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002494:	ff010113          	addi	sp,sp,-16
    80002498:	00113423          	sd	ra,8(sp)
    8000249c:	00813023          	sd	s0,0(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00009797          	auipc	a5,0x9
    800024a8:	51c78793          	addi	a5,a5,1308 # 8000b9c0 <_ZTV9Semaphore+0x10>
    800024ac:	00f53023          	sd	a5,0(a0)
    800024b0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800024b4:	00850513          	addi	a0,a0,8
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	f60080e7          	jalr	-160(ra) # 80001418 <_Z8sem_openPP3Semj>
}
    800024c0:	00813083          	ld	ra,8(sp)
    800024c4:	00013403          	ld	s0,0(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    800024d0:	00853503          	ld	a0,8(a0)
    800024d4:	02050663          	beqz	a0,80002500 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800024d8:	ff010113          	addi	sp,sp,-16
    800024dc:	00113423          	sd	ra,8(sp)
    800024e0:	00813023          	sd	s0,0(sp)
    800024e4:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	fd8080e7          	jalr	-40(ra) # 800014c0 <_Z8sem_waitP3Sem>
}
    800024f0:	00813083          	ld	ra,8(sp)
    800024f4:	00013403          	ld	s0,0(sp)
    800024f8:	01010113          	addi	sp,sp,16
    800024fc:	00008067          	ret
    return -1;
    80002500:	fff00513          	li	a0,-1
}
    80002504:	00008067          	ret

0000000080002508 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    80002508:	00853503          	ld	a0,8(a0)
    8000250c:	02050663          	beqz	a0,80002538 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	084080e7          	jalr	132(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret
    return -1;
    80002538:	fff00513          	li	a0,-1
}
    8000253c:	00008067          	ret

0000000080002540 <_ZN9Semaphore9timedWaitEm>:
    if (myHandle && time) return sem_timedwait(myHandle, time);
    80002540:	00853503          	ld	a0,8(a0)
    80002544:	02050863          	beqz	a0,80002574 <_ZN9Semaphore9timedWaitEm+0x34>
    80002548:	02058a63          	beqz	a1,8000257c <_ZN9Semaphore9timedWaitEm+0x3c>
int Semaphore::timedWait(time_t time) {
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00113423          	sd	ra,8(sp)
    80002554:	00813023          	sd	s0,0(sp)
    80002558:	01010413          	addi	s0,sp,16
    if (myHandle && time) return sem_timedwait(myHandle, time);
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	fb0080e7          	jalr	-80(ra) # 8000150c <_Z13sem_timedwaitP3Semm>
}
    80002564:	00813083          	ld	ra,8(sp)
    80002568:	00013403          	ld	s0,0(sp)
    8000256c:	01010113          	addi	sp,sp,16
    80002570:	00008067          	ret
    return -1;
    80002574:	fff00513          	li	a0,-1
    80002578:	00008067          	ret
    8000257c:	fff00513          	li	a0,-1
}
    80002580:	00008067          	ret

0000000080002584 <_ZN9Semaphore7tryWaitEv>:
    if (myHandle) return sem_trywait(myHandle);
    80002584:	00853503          	ld	a0,8(a0)
    80002588:	02050663          	beqz	a0,800025b4 <_ZN9Semaphore7tryWaitEv+0x30>
int Semaphore::tryWait() {
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00113423          	sd	ra,8(sp)
    80002594:	00813023          	sd	s0,0(sp)
    80002598:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_trywait(myHandle);
    8000259c:	fffff097          	auipc	ra,0xfffff
    800025a0:	fbc080e7          	jalr	-68(ra) # 80001558 <_Z11sem_trywaitP3Sem>
}
    800025a4:	00813083          	ld	ra,8(sp)
    800025a8:	00013403          	ld	s0,0(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret
    return -1;
    800025b4:	fff00513          	li	a0,-1
}
    800025b8:	00008067          	ret

00000000800025bc <_ZN7Console4getcEv>:
char Console::getc() {
    800025bc:	ff010113          	addi	sp,sp,-16
    800025c0:	00113423          	sd	ra,8(sp)
    800025c4:	00813023          	sd	s0,0(sp)
    800025c8:	01010413          	addi	s0,sp,16
    return ::getc();
    800025cc:	fffff097          	auipc	ra,0xfffff
    800025d0:	070080e7          	jalr	112(ra) # 8000163c <_Z4getcv>
}
    800025d4:	00813083          	ld	ra,8(sp)
    800025d8:	00013403          	ld	s0,0(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	094080e7          	jalr	148(ra) # 80001688 <_Z4putcc>
}
    800025fc:	00813083          	ld	ra,8(sp)
    80002600:	00013403          	ld	s0,0(sp)
    80002604:	01010113          	addi	sp,sp,16
    80002608:	00008067          	ret

000000008000260c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	01213023          	sd	s2,0(sp)
    80002620:	02010413          	addi	s0,sp,32
    80002624:	00050493          	mv	s1,a0
    80002628:	00058913          	mv	s2,a1
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	dac080e7          	jalr	-596(ra) # 800023d8 <_ZN6ThreadC1Ev>
    80002634:	00009797          	auipc	a5,0x9
    80002638:	3ac78793          	addi	a5,a5,940 # 8000b9e0 <_ZTV14PeriodicThread+0x10>
    8000263c:	00f4b023          	sd	a5,0(s1)
    80002640:	0324b023          	sd	s2,32(s1)
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	00013903          	ld	s2,0(sp)
    80002654:	02010113          	addi	sp,sp,32
    80002658:	00008067          	ret

000000008000265c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00813423          	sd	s0,8(sp)
    80002664:	01010413          	addi	s0,sp,16
    period = time_t(-1); // max uint64, invalid value
    80002668:	fff00793          	li	a5,-1
    8000266c:	02f53023          	sd	a5,32(a0)
}
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00813423          	sd	s0,8(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	00813403          	ld	s0,8(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813423          	sd	s0,8(sp)
    8000269c:	01010413          	addi	s0,sp,16
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    800026bc:	00009797          	auipc	a5,0x9
    800026c0:	32478793          	addi	a5,a5,804 # 8000b9e0 <_ZTV14PeriodicThread+0x10>
    800026c4:	00f53023          	sd	a5,0(a0)
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	c20080e7          	jalr	-992(ra) # 800022e8 <_ZN6ThreadD1Ev>
    800026d0:	00813083          	ld	ra,8(sp)
    800026d4:	00013403          	ld	s0,0(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret

00000000800026e0 <_ZN14PeriodicThreadD0Ev>:
    800026e0:	fe010113          	addi	sp,sp,-32
    800026e4:	00113c23          	sd	ra,24(sp)
    800026e8:	00813823          	sd	s0,16(sp)
    800026ec:	00913423          	sd	s1,8(sp)
    800026f0:	02010413          	addi	s0,sp,32
    800026f4:	00050493          	mv	s1,a0
    800026f8:	00009797          	auipc	a5,0x9
    800026fc:	2e878793          	addi	a5,a5,744 # 8000b9e0 <_ZTV14PeriodicThread+0x10>
    80002700:	00f53023          	sd	a5,0(a0)
    80002704:	00000097          	auipc	ra,0x0
    80002708:	be4080e7          	jalr	-1052(ra) # 800022e8 <_ZN6ThreadD1Ev>
    8000270c:	00048513          	mv	a0,s1
    80002710:	00000097          	auipc	ra,0x0
    80002714:	bb0080e7          	jalr	-1104(ra) # 800022c0 <_ZdlPv>
    80002718:	01813083          	ld	ra,24(sp)
    8000271c:	01013403          	ld	s0,16(sp)
    80002720:	00813483          	ld	s1,8(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret

000000008000272c <_ZN13BoundedBufferC1Ev>:
#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	02010413          	addi	s0,sp,32
    80002740:	00050493          	mv	s1,a0
    head = tail = 0;
    80002744:	00052223          	sw	zero,4(a0)
    80002748:	00052023          	sw	zero,0(a0)
    Sem::open(&space_available, bufferSize);
    8000274c:	12c00593          	li	a1,300
    80002750:	00850513          	addi	a0,a0,8
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	074080e7          	jalr	116(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
    Sem::open(&item_available, 0);
    8000275c:	00000593          	li	a1,0
    80002760:	01048513          	addi	a0,s1,16
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	064080e7          	jalr	100(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
}
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	02010113          	addi	sp,sp,32
    8000277c:	00008067          	ret

0000000080002780 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002780:	fe010113          	addi	sp,sp,-32
    80002784:	00113c23          	sd	ra,24(sp)
    80002788:	00813823          	sd	s0,16(sp)
    8000278c:	00913423          	sd	s1,8(sp)
    80002790:	02010413          	addi	s0,sp,32
    80002794:	00050493          	mv	s1,a0
    Sem::s_close(space_available);
    80002798:	00853503          	ld	a0,8(a0)
    8000279c:	fffff097          	auipc	ra,0xfffff
    800027a0:	2b0080e7          	jalr	688(ra) # 80001a4c <_ZN3Sem7s_closeEPS_>
    Sem::s_close(item_available);
    800027a4:	0104b503          	ld	a0,16(s1)
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	2a4080e7          	jalr	676(ra) # 80001a4c <_ZN3Sem7s_closeEPS_>
}
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	01013403          	ld	s0,16(sp)
    800027b8:	00813483          	ld	s1,8(sp)
    800027bc:	02010113          	addi	sp,sp,32
    800027c0:	00008067          	ret

00000000800027c4 <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char c) {
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00113c23          	sd	ra,24(sp)
    800027cc:	00813823          	sd	s0,16(sp)
    800027d0:	00913423          	sd	s1,8(sp)
    800027d4:	01213023          	sd	s2,0(sp)
    800027d8:	02010413          	addi	s0,sp,32
    800027dc:	00050493          	mv	s1,a0
    800027e0:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800027e4:	00853503          	ld	a0,8(a0)
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	124080e7          	jalr	292(ra) # 8000190c <_ZN3Sem4waitEPS_>
    buffer[tail++] = c;
    800027f0:	0044a783          	lw	a5,4(s1)
    800027f4:	0017871b          	addiw	a4,a5,1
    800027f8:	00f487b3          	add	a5,s1,a5
    800027fc:	01278c23          	sb	s2,24(a5)
    tail %= bufferSize;
    80002800:	12c00793          	li	a5,300
    80002804:	02f767bb          	remw	a5,a4,a5
    80002808:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    8000280c:	0104b503          	ld	a0,16(s1)
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	2ac080e7          	jalr	684(ra) # 80001abc <_ZN3Sem6signalEPS_>
}
    80002818:	01813083          	ld	ra,24(sp)
    8000281c:	01013403          	ld	s0,16(sp)
    80002820:	00813483          	ld	s1,8(sp)
    80002824:	00013903          	ld	s2,0(sp)
    80002828:	02010113          	addi	sp,sp,32
    8000282c:	00008067          	ret

0000000080002830 <_ZN13BoundedBuffer3getEv>:

char BoundedBuffer::get() {
    80002830:	fe010113          	addi	sp,sp,-32
    80002834:	00113c23          	sd	ra,24(sp)
    80002838:	00813823          	sd	s0,16(sp)
    8000283c:	00913423          	sd	s1,8(sp)
    80002840:	01213023          	sd	s2,0(sp)
    80002844:	02010413          	addi	s0,sp,32
    80002848:	00050493          	mv	s1,a0
    int ret = Sem::wait(item_available);
    8000284c:	01053503          	ld	a0,16(a0)
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	0bc080e7          	jalr	188(ra) # 8000190c <_ZN3Sem4waitEPS_>
    if (ret != 0) return EOF; // unsuccessful
    80002858:	04051463          	bnez	a0,800028a0 <_ZN13BoundedBuffer3getEv+0x70>
    char  c = buffer[head++];
    8000285c:	0004a783          	lw	a5,0(s1)
    80002860:	0017871b          	addiw	a4,a5,1
    80002864:	00f487b3          	add	a5,s1,a5
    80002868:	0187c903          	lbu	s2,24(a5)
    head %= bufferSize;
    8000286c:	12c00793          	li	a5,300
    80002870:	02f767bb          	remw	a5,a4,a5
    80002874:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002878:	0084b503          	ld	a0,8(s1)
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	240080e7          	jalr	576(ra) # 80001abc <_ZN3Sem6signalEPS_>
    return c;
}
    80002884:	00090513          	mv	a0,s2
    80002888:	01813083          	ld	ra,24(sp)
    8000288c:	01013403          	ld	s0,16(sp)
    80002890:	00813483          	ld	s1,8(sp)
    80002894:	00013903          	ld	s2,0(sp)
    80002898:	02010113          	addi	sp,sp,32
    8000289c:	00008067          	ret
    if (ret != 0) return EOF; // unsuccessful
    800028a0:	0ff00913          	li	s2,255
    800028a4:	fe1ff06f          	j	80002884 <_ZN13BoundedBuffer3getEv+0x54>

00000000800028a8 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
    800028b8:	05750513          	addi	a0,a0,87
    800028bc:	00655513          	srli	a0,a0,0x6
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	510080e7          	jalr	1296(ra) # 80002dd0 <_ZN15MemoryAllocator9mem_allocEm>
}
    800028c8:	00813083          	ld	ra,8(sp)
    800028cc:	00013403          	ld	s0,0(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	728080e7          	jalr	1832(ra) # 80003010 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800028f0:	00813083          	ld	ra,8(sp)
    800028f4:	00013403          	ld	s0,0(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret

0000000080002900 <_ZNK13BoundedBuffer5emptyEv>:

bool BoundedBuffer::empty() const {
    80002900:	ff010113          	addi	sp,sp,-16
    80002904:	00813423          	sd	s0,8(sp)
    80002908:	01010413          	addi	s0,sp,16
    return tail == head;
    8000290c:	00452783          	lw	a5,4(a0)
    80002910:	00052503          	lw	a0,0(a0)
    80002914:	40f50533          	sub	a0,a0,a5
}
    80002918:	00153513          	seqz	a0,a0
    8000291c:	00813403          	ld	s0,8(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret

0000000080002928 <_ZNK13BoundedBuffer4fullEv>:

bool BoundedBuffer::full() const {
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00113423          	sd	ra,8(sp)
    80002930:	00813023          	sd	s0,0(sp)
    80002934:	01010413          	addi	s0,sp,16
    return !space_available->get_value();
    80002938:	00853503          	ld	a0,8(a0)
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	e24080e7          	jalr	-476(ra) # 80001760 <_ZNK3Sem9get_valueEv>
};
    80002944:	00153513          	seqz	a0,a0
    80002948:	00813083          	ld	ra,8(sp)
    8000294c:	00013403          	ld	s0,0(sp)
    80002950:	01010113          	addi	sp,sp,16
    80002954:	00008067          	ret

0000000080002958 <_ZN5RISCV10popSppSpieEv>:
extern void printString(char*);
extern void handleNewChars(void*);

// first time running a thread, sepc inside of wrapper

void RISCV::popSppSpie() {
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00813423          	sd	s0,8(sp)
    80002960:	01010413          	addi	s0,sp,16

    // not inline ( ra reg )

    if (TCB::running->routine != handleNewChars) RISCV::mask_status(SPP);
    80002964:	00009797          	auipc	a5,0x9
    80002968:	2947b783          	ld	a5,660(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000296c:	0007b783          	ld	a5,0(a5)
    80002970:	0307b703          	ld	a4,48(a5)
    80002974:	00009797          	auipc	a5,0x9
    80002978:	2947b783          	ld	a5,660(a5) # 8000bc08 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000297c:	00f70663          	beq	a4,a5,80002988 <_ZN5RISCV10popSppSpieEv+0x30>
inline void RISCV::set_sip(uint64 mask) {
    __asm__ volatile("csrs sip, %0" : : "r"(mask));
}

inline void RISCV::mask_status(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80002980:	10000793          	li	a5,256
    80002984:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    80002988:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000298c:	10200073          	sret

    // => pop spp and spie !
    // exit from supervisor mode
}
    80002990:	00813403          	ld	s0,8(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret

000000008000299c <_ZN5RISCV12return_valueEm>:

uint64 RISCV::return_value(uint64 value) {
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00813423          	sd	s0,8(sp)
    800029a4:	01010413          	addi	s0,sp,16
    return value; // move to a0 reg
}
    800029a8:	00813403          	ld	s0,8(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN5RISCV16handle_interruptEv>:

void RISCV::handle_interrupt() {
    800029b4:	f9010113          	addi	sp,sp,-112
    800029b8:	06113423          	sd	ra,104(sp)
    800029bc:	06813023          	sd	s0,96(sp)
    800029c0:	04913c23          	sd	s1,88(sp)
    800029c4:	05213823          	sd	s2,80(sp)
    800029c8:	05313423          	sd	s3,72(sp)
    800029cc:	05413023          	sd	s4,64(sp)
    800029d0:	07010413          	addi	s0,sp,112

    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    800029d4:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    800029d8:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    800029dc:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    800029e0:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    800029e4:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    800029e8:	142027f3          	csrr	a5,scause
    800029ec:	f8f43c23          	sd	a5,-104(s0)
    return value;
    800029f0:	f9843703          	ld	a4,-104(s0)

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
    800029f4:	fff00793          	li	a5,-1
    800029f8:	03f79793          	slli	a5,a5,0x3f
    800029fc:	00178793          	addi	a5,a5,1
    80002a00:	06f70063          	beq	a4,a5,80002a60 <_ZN5RISCV16handle_interruptEv+0xac>

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }

    } else if (scause == EXTERNAL) {
    80002a04:	fff00793          	li	a5,-1
    80002a08:	03f79793          	slli	a5,a5,0x3f
    80002a0c:	00978793          	addi	a5,a5,9
    80002a10:	18f70c63          	beq	a4,a5,80002ba8 <_ZN5RISCV16handle_interruptEv+0x1f4>
        wr_sstatus(sstatus);
        clear_sip(SE);

    }

     else if (scause == U_ECALL || scause == S_ECALL){
    80002a14:	ff870713          	addi	a4,a4,-8
    80002a18:	00100793          	li	a5,1
    80002a1c:	30e7ec63          	bltu	a5,a4,80002d34 <_ZN5RISCV16handle_interruptEv+0x380>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002a20:	141027f3          	csrr	a5,sepc
    80002a24:	fcf43423          	sd	a5,-56(s0)
    return value;
    80002a28:	fc843483          	ld	s1,-56(s0)
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
    80002a2c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002a30:	100027f3          	csrr	a5,sstatus
    80002a34:	fcf43023          	sd	a5,-64(s0)
    return value;
    80002a38:	fc043903          	ld	s2,-64(s0)
        uint64 sstatus = rd_sstatus();

        switch (op) {
    80002a3c:	04200793          	li	a5,66
    80002a40:	2107e663          	bltu	a5,a6,80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
    80002a44:	00281793          	slli	a5,a6,0x2
    80002a48:	00006717          	auipc	a4,0x6
    80002a4c:	5e070713          	addi	a4,a4,1504 # 80009028 <CONSOLE_STATUS+0x18>
    80002a50:	00e787b3          	add	a5,a5,a4
    80002a54:	0007a783          	lw	a5,0(a5)
    80002a58:	00e787b3          	add	a5,a5,a4
    80002a5c:	00078067          	jr	a5
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002a60:	00200793          	li	a5,2
    80002a64:	1447b073          	csrc	sip,a5

    Scheduler(const Scheduler&) = delete;

private:

    static bool hasSleeping() {return  first_sleepy != nullptr;}
    80002a68:	00009797          	auipc	a5,0x9
    80002a6c:	1887b783          	ld	a5,392(a5) # 8000bbf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a70:	0007b483          	ld	s1,0(a5)
        if (Scheduler::hasSleeping()) {
    80002a74:	04048463          	beqz	s1,80002abc <_ZN5RISCV16handle_interruptEv+0x108>
            Scheduler::first_sleepy -> sleeping_time --;
    80002a78:	0204b783          	ld	a5,32(s1)
    80002a7c:	fff78793          	addi	a5,a5,-1
    80002a80:	02f4b023          	sd	a5,32(s1)
            while (tcb) {
    80002a84:	02048663          	beqz	s1,80002ab0 <_ZN5RISCV16handle_interruptEv+0xfc>
                if (tcb -> sleeping_time > 0) break;
    80002a88:	0204b783          	ld	a5,32(s1)
    80002a8c:	02079263          	bnez	a5,80002ab0 <_ZN5RISCV16handle_interruptEv+0xfc>
                tcb->current_state = TCB::RUNNABLE;
    80002a90:	0604a423          	sw	zero,104(s1)
                Scheduler::put(tcb);
    80002a94:	00048513          	mv	a0,s1
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	1cc080e7          	jalr	460(ra) # 80001c64 <_ZN9Scheduler3putEP3TCB>
                TCB* next = tcb -> next_sleepy;
    80002aa0:	0104b783          	ld	a5,16(s1)
                tcb -> next_sleepy = nullptr;
    80002aa4:	0004b823          	sd	zero,16(s1)
                tcb = next;
    80002aa8:	00078493          	mv	s1,a5
            while (tcb) {
    80002aac:	fd9ff06f          	j	80002a84 <_ZN5RISCV16handle_interruptEv+0xd0>
            Scheduler::first_sleepy = tcb;
    80002ab0:	00009797          	auipc	a5,0x9
    80002ab4:	1407b783          	ld	a5,320(a5) # 8000bbf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002ab8:	0097b023          	sd	s1,0(a5)
        for (Sem* s = Sem::first; s; s = s->next) {
    80002abc:	00009797          	auipc	a5,0x9
    80002ac0:	12c7b783          	ld	a5,300(a5) # 8000bbe8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002ac4:	0007ba03          	ld	s4,0(a5)
    80002ac8:	0700006f          	j	80002b38 <_ZN5RISCV16handle_interruptEv+0x184>
                e = e->next;
    80002acc:	0084b483          	ld	s1,8(s1)
            for (List<TCB>::Elem* e = s->blocked.head ; e && count > 0; ) {
    80002ad0:	06048263          	beqz	s1,80002b34 <_ZN5RISCV16handle_interruptEv+0x180>
    80002ad4:	07305063          	blez	s3,80002b34 <_ZN5RISCV16handle_interruptEv+0x180>
                TCB* t = e->data;
    80002ad8:	0004b903          	ld	s2,0(s1)
                if (t->time_on_sem > 0) { // if timed waiting
    80002adc:	01893783          	ld	a5,24(s2)
    80002ae0:	fe0786e3          	beqz	a5,80002acc <_ZN5RISCV16handle_interruptEv+0x118>
                    count--;
    80002ae4:	fff9899b          	addiw	s3,s3,-1
                    if ( --t->time_on_sem <= 0) {
    80002ae8:	fff78793          	addi	a5,a5,-1
    80002aec:	00f93c23          	sd	a5,24(s2)
    80002af0:	fc079ee3          	bnez	a5,80002acc <_ZN5RISCV16handle_interruptEv+0x118>
                        e = e -> next;
    80002af4:	0084b483          	ld	s1,8(s1)
                        s->blocked.remove(t);
    80002af8:	00090593          	mv	a1,s2
    80002afc:	010a0513          	addi	a0,s4,16
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	248080e7          	jalr	584(ra) # 80002d48 <_ZN4ListI3TCBE6removeEPS0_>
                        s->value++;
    80002b08:	000a2783          	lw	a5,0(s4)
    80002b0c:	0017879b          	addiw	a5,a5,1
    80002b10:	00fa2023          	sw	a5,0(s4)
                        s->timedBlock--;
    80002b14:	028a2783          	lw	a5,40(s4)
    80002b18:	fff7879b          	addiw	a5,a5,-1
    80002b1c:	02fa2423          	sw	a5,40(s4)
                        t->current_state = TCB::RUNNABLE;
    80002b20:	06092423          	sw	zero,104(s2)
                        Scheduler::put(t);
    80002b24:	00090513          	mv	a0,s2
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	13c080e7          	jalr	316(ra) # 80001c64 <_ZN9Scheduler3putEP3TCB>
                        continue;
    80002b30:	fa1ff06f          	j	80002ad0 <_ZN5RISCV16handle_interruptEv+0x11c>
        for (Sem* s = Sem::first; s; s = s->next) {
    80002b34:	008a3a03          	ld	s4,8(s4)
    80002b38:	000a0863          	beqz	s4,80002b48 <_ZN5RISCV16handle_interruptEv+0x194>
            int count = s->timedBlock;
    80002b3c:	028a2983          	lw	s3,40(s4)
            for (List<TCB>::Elem* e = s->blocked.head ; e && count > 0; ) {
    80002b40:	010a3483          	ld	s1,16(s4)
    80002b44:	f8dff06f          	j	80002ad0 <_ZN5RISCV16handle_interruptEv+0x11c>
        TCB::time_slice_count ++;
    80002b48:	00009717          	auipc	a4,0x9
    80002b4c:	0c873703          	ld	a4,200(a4) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b50:	00073783          	ld	a5,0(a4)
    80002b54:	00178793          	addi	a5,a5,1
    80002b58:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
    80002b5c:	00009717          	auipc	a4,0x9
    80002b60:	09c73703          	ld	a4,156(a4) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002b64:	00073703          	ld	a4,0(a4)
    time_t getTimeSlice() const {return time_slice;}
    80002b68:	02873703          	ld	a4,40(a4)
    80002b6c:	0ee7e463          	bltu	a5,a4,80002c54 <_ZN5RISCV16handle_interruptEv+0x2a0>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002b70:	141027f3          	csrr	a5,sepc
    80002b74:	faf43423          	sd	a5,-88(s0)
    return value;
    80002b78:	fa843903          	ld	s2,-88(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002b7c:	100027f3          	csrr	a5,sstatus
    80002b80:	faf43023          	sd	a5,-96(s0)
    return value;
    80002b84:	fa043483          	ld	s1,-96(s0)
            TCB::time_slice_count = 0; // new running thread
    80002b88:	00009797          	auipc	a5,0x9
    80002b8c:	0887b783          	ld	a5,136(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b90:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002b94:	00001097          	auipc	ra,0x1
    80002b98:	9b0080e7          	jalr	-1616(ra) # 80003544 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002b9c:	14191073          	csrw	sepc,s2
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002ba0:	10049073          	csrw	sstatus,s1
}
    80002ba4:	0b00006f          	j	80002c54 <_ZN5RISCV16handle_interruptEv+0x2a0>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002ba8:	141027f3          	csrr	a5,sepc
    80002bac:	faf43c23          	sd	a5,-72(s0)
    return value;
    80002bb0:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002bb4:	100027f3          	csrr	a5,sstatus
    80002bb8:	faf43823          	sd	a5,-80(s0)
    return value;
    80002bbc:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002bc0:	00005097          	auipc	ra,0x5
    80002bc4:	944080e7          	jalr	-1724(ra) # 80007504 <plic_claim>
    80002bc8:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002bcc:	00a00793          	li	a5,10
    80002bd0:	00f50c63          	beq	a0,a5,80002be8 <_ZN5RISCV16handle_interruptEv+0x234>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002bd4:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002bd8:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002bdc:	20000793          	li	a5,512
    80002be0:	1447b073          	csrc	sip,a5
}
    80002be4:	0700006f          	j	80002c54 <_ZN5RISCV16handle_interruptEv+0x2a0>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002be8:	00009797          	auipc	a5,0x9
    80002bec:	fd87b783          	ld	a5,-40(a5) # 8000bbc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002bf0:	0007b783          	ld	a5,0(a5)
    80002bf4:	0007c783          	lbu	a5,0(a5)
    80002bf8:	0017f793          	andi	a5,a5,1
    80002bfc:	02078c63          	beqz	a5,80002c34 <_ZN5RISCV16handle_interruptEv+0x280>
    80002c00:	00009797          	auipc	a5,0x9
    80002c04:	fb87b783          	ld	a5,-72(a5) # 8000bbb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c08:	0007b503          	ld	a0,0(a5)
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	d1c080e7          	jalr	-740(ra) # 80002928 <_ZNK13BoundedBuffer4fullEv>
    80002c14:	02051063          	bnez	a0,80002c34 <_ZN5RISCV16handle_interruptEv+0x280>
                char c = *(char *) CONSOLE_RX_DATA;
    80002c18:	00009797          	auipc	a5,0x9
    80002c1c:	f987b783          	ld	a5,-104(a5) # 8000bbb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c20:	0007b783          	ld	a5,0(a5)
                myConsole::input_putc(c);
    80002c24:	0007c503          	lbu	a0,0(a5)
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	394080e7          	jalr	916(ra) # 80001fbc <_ZN9myConsole10input_putcEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT && !myConsole::inputBuffer->full()) {
    80002c30:	fb9ff06f          	j	80002be8 <_ZN5RISCV16handle_interruptEv+0x234>
            plic_complete(irq);
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00005097          	auipc	ra,0x5
    80002c3c:	904080e7          	jalr	-1788(ra) # 8000753c <plic_complete>
    80002c40:	f95ff06f          	j	80002bd4 <_ZN5RISCV16handle_interruptEv+0x220>
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	18c080e7          	jalr	396(ra) # 80002dd0 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002c4c:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002c50:	10091073          	csrw	sstatus,s2

    } else {
        // INVALID INTERRUPT CODE
        myPrintString("Error");
    }
}
    80002c54:	06813083          	ld	ra,104(sp)
    80002c58:	06013403          	ld	s0,96(sp)
    80002c5c:	05813483          	ld	s1,88(sp)
    80002c60:	05013903          	ld	s2,80(sp)
    80002c64:	04813983          	ld	s3,72(sp)
    80002c68:	04013a03          	ld	s4,64(sp)
    80002c6c:	07010113          	addi	sp,sp,112
    80002c70:	00008067          	ret
                MemoryAllocator::mem_free((void *)a1);
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	39c080e7          	jalr	924(ra) # 80003010 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002c7c:	fd1ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	774080e7          	jalr	1908(ra) # 800033f4 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>
                break;
    80002c88:	fc5ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                TCB::_threadExit();
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	95c080e7          	jalr	-1700(ra) # 800035e8 <_ZN3TCB11_threadExitEv>
                break;
    80002c94:	fb9ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                TCB::time_slice_count = 0;
    80002c98:	00009797          	auipc	a5,0x9
    80002c9c:	f787b783          	ld	a5,-136(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ca0:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	8a0080e7          	jalr	-1888(ra) # 80003544 <_ZN3TCB8dispatchEv>
                break;
    80002cac:	fa1ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Sem::open((sem_t*)a1, (unsigned int)a2);
    80002cb0:	0005859b          	sext.w	a1,a1
    80002cb4:	fffff097          	auipc	ra,0xfffff
    80002cb8:	b14080e7          	jalr	-1260(ra) # 800017c8 <_ZN3Sem4openEPPS_j>
                break;
    80002cbc:	f91ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Sem::s_close((sem_t)a1); // a1 == handle
    80002cc0:	fffff097          	auipc	ra,0xfffff
    80002cc4:	d8c080e7          	jalr	-628(ra) # 80001a4c <_ZN3Sem7s_closeEPS_>
                break;
    80002cc8:	f85ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Sem::wait(((sem_t)a1)); // a1 <=> handle
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	c40080e7          	jalr	-960(ra) # 8000190c <_ZN3Sem4waitEPS_>
                break;
    80002cd4:	f79ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Sem::signal((sem_t)a1); // a1 <=> handle
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	de4080e7          	jalr	-540(ra) # 80001abc <_ZN3Sem6signalEPS_>
                break;
    80002ce0:	f6dff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Sem::timedwait((sem_t)a1,(time_t)a2);
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	c7c080e7          	jalr	-900(ra) # 80001960 <_ZN3Sem9timedwaitEPS_m>
                break;
    80002cec:	f61ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Sem::trywait((sem_t)a1);
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	9d4080e7          	jalr	-1580(ra) # 800016c4 <_ZN3Sem7trywaitEPS_>
                break;
    80002cf8:	f55ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                Scheduler::time_sleep((thread_t)TCB::running, (time_t)a1);
    80002cfc:	00050593          	mv	a1,a0
    80002d00:	00009797          	auipc	a5,0x9
    80002d04:	ef87b783          	ld	a5,-264(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d08:	0007b503          	ld	a0,0(a5)
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	0a0080e7          	jalr	160(ra) # 80001dac <_ZN9Scheduler10time_sleepEP3TCBm>
                break;
    80002d14:	f39ff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                myConsole::input_getc();
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	210080e7          	jalr	528(ra) # 80001f28 <_ZN9myConsole10input_getcEv>
                break;
    80002d20:	f2dff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
                myConsole::output_putc((char) a1);
    80002d24:	0ff57513          	andi	a0,a0,255
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	230080e7          	jalr	560(ra) # 80001f58 <_ZN9myConsole11output_putcEc>
                break;
    80002d30:	f1dff06f          	j	80002c4c <_ZN5RISCV16handle_interruptEv+0x298>
        myPrintString("Error");
    80002d34:	00006517          	auipc	a0,0x6
    80002d38:	2ec50513          	addi	a0,a0,748 # 80009020 <CONSOLE_STATUS+0x10>
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	44c080e7          	jalr	1100(ra) # 80003188 <_Z13myPrintStringPKc>
}
    80002d44:	f11ff06f          	j	80002c54 <_ZN5RISCV16handle_interruptEv+0x2a0>

0000000080002d48 <_ZN4ListI3TCBE6removeEPS0_>:

template <typename T>
void List<T>::remove(T* t) {
    80002d48:	00050693          	mv	a3,a0
    Elem* prev = nullptr, *elem = head;
    80002d4c:	00053503          	ld	a0,0(a0)
    80002d50:	00000713          	li	a4,0
    while (elem) {
    80002d54:	06050c63          	beqz	a0,80002dcc <_ZN4ListI3TCBE6removeEPS0_+0x84>
        if (elem->data == t) {
    80002d58:	00053783          	ld	a5,0(a0)
    80002d5c:	00b78863          	beq	a5,a1,80002d6c <_ZN4ListI3TCBE6removeEPS0_+0x24>

            delete elem;
            return;

        }
        prev = elem;
    80002d60:	00050713          	mv	a4,a0
        elem = elem -> next;
    80002d64:	00853503          	ld	a0,8(a0)
    while (elem) {
    80002d68:	fedff06f          	j	80002d54 <_ZN4ListI3TCBE6removeEPS0_+0xc>
void List<T>::remove(T* t) {
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00113423          	sd	ra,8(sp)
    80002d74:	00813023          	sd	s0,0(sp)
    80002d78:	01010413          	addi	s0,sp,16
            if (prev) {
    80002d7c:	02070e63          	beqz	a4,80002db8 <_ZN4ListI3TCBE6removeEPS0_+0x70>
                prev->next = elem->next;
    80002d80:	00853783          	ld	a5,8(a0)
    80002d84:	00f73423          	sd	a5,8(a4)
                if (tail == elem) tail = prev;
    80002d88:	0086b783          	ld	a5,8(a3)
    80002d8c:	02a78263          	beq	a5,a0,80002db0 <_ZN4ListI3TCBE6removeEPS0_+0x68>
            if (!head) tail = nullptr;
    80002d90:	0006b783          	ld	a5,0(a3)
    80002d94:	02078863          	beqz	a5,80002dc4 <_ZN4ListI3TCBE6removeEPS0_+0x7c>
            delete elem;
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	528080e7          	jalr	1320(ra) # 800022c0 <_ZdlPv>
    }
}
    80002da0:	00813083          	ld	ra,8(sp)
    80002da4:	00013403          	ld	s0,0(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret
                if (tail == elem) tail = prev;
    80002db0:	00e6b423          	sd	a4,8(a3)
    80002db4:	fddff06f          	j	80002d90 <_ZN4ListI3TCBE6removeEPS0_+0x48>
            else head = elem -> next;
    80002db8:	00853783          	ld	a5,8(a0)
    80002dbc:	00f6b023          	sd	a5,0(a3)
    80002dc0:	fd1ff06f          	j	80002d90 <_ZN4ListI3TCBE6removeEPS0_+0x48>
            if (!head) tail = nullptr;
    80002dc4:	0006b423          	sd	zero,8(a3)
    80002dc8:	fd1ff06f          	j	80002d98 <_ZN4ListI3TCBE6removeEPS0_+0x50>
    80002dcc:	00008067          	ret

0000000080002dd0 <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16

    //size = block number

    if (size <= 0) return nullptr;
    80002ddc:	12050663          	beqz	a0,80002f08 <_ZN15MemoryAllocator9mem_allocEm+0x138>

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;
    80002de0:	00651793          	slli	a5,a0,0x6

    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002de4:	00009517          	auipc	a0,0x9
    80002de8:	ecc53503          	ld	a0,-308(a0) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
    80002dec:	0e050e63          	beqz	a0,80002ee8 <_ZN15MemoryAllocator9mem_allocEm+0x118>

        if (curr->size >= byte_size) {
    80002df0:	01053703          	ld	a4,16(a0)
    80002df4:	00f77663          	bgeu	a4,a5,80002e00 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    for (curr = free_mem_head; curr; curr = curr -> next) {
    80002df8:	00053503          	ld	a0,0(a0)
    80002dfc:	ff1ff06f          	j	80002dec <_ZN15MemoryAllocator9mem_allocEm+0x1c>

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    80002e00:	40f70733          	sub	a4,a4,a5
    80002e04:	01700693          	li	a3,23
    80002e08:	06e6e463          	bltu	a3,a4,80002e70 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                if (curr->next) curr->next->prev = curr->prev;
    80002e0c:	00053703          	ld	a4,0(a0)
    80002e10:	00070663          	beqz	a4,80002e1c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002e14:	00853683          	ld	a3,8(a0)
    80002e18:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    80002e1c:	00853703          	ld	a4,8(a0)
    80002e20:	04070063          	beqz	a4,80002e60 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    80002e24:	00053683          	ld	a3,0(a0)
    80002e28:	00d73023          	sd	a3,0(a4)
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80002e2c:	00009717          	auipc	a4,0x9
    80002e30:	e8c73703          	ld	a4,-372(a4) # 8000bcb8 <_ZN15MemoryAllocator13used_mem_headE>
    80002e34:	08e56263          	bltu	a0,a4,80002eb8 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002e38:	0a070e63          	beqz	a4,80002ef4 <_ZN15MemoryAllocator9mem_allocEm+0x124>
            else for (prev = used_mem_head; prev->next && (char*)curr >= (char *) prev + prev->size; prev = prev->next) {
    80002e3c:	00070693          	mv	a3,a4
    80002e40:	00073703          	ld	a4,0(a4)
    80002e44:	06070c63          	beqz	a4,80002ebc <_ZN15MemoryAllocator9mem_allocEm+0xec>
    80002e48:	0106b603          	ld	a2,16(a3)
    80002e4c:	00c68633          	add	a2,a3,a2
    80002e50:	06c56663          	bltu	a0,a2,80002ebc <_ZN15MemoryAllocator9mem_allocEm+0xec>
                // prev addr < addr and prev-next addr > addr + size
                if ((char*)prev->next >= (char*)curr + byte_size) break;
    80002e54:	00f50633          	add	a2,a0,a5
    80002e58:	fec762e3          	bltu	a4,a2,80002e3c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    80002e5c:	0600006f          	j	80002ebc <_ZN15MemoryAllocator9mem_allocEm+0xec>
                else free_mem_head = curr->next;
    80002e60:	00053703          	ld	a4,0(a0)
    80002e64:	00009697          	auipc	a3,0x9
    80002e68:	e4e6b623          	sd	a4,-436(a3) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
    80002e6c:	fc1ff06f          	j	80002e2c <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    80002e70:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    80002e74:	00053683          	ld	a3,0(a0)
    80002e78:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    80002e7c:	00853683          	ld	a3,8(a0)
    80002e80:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    80002e84:	01053683          	ld	a3,16(a0)
    80002e88:	40f686b3          	sub	a3,a3,a5
    80002e8c:	00d73823          	sd	a3,16(a4)
                if (curr->next) curr->next->prev = remaining;
    80002e90:	00053683          	ld	a3,0(a0)
    80002e94:	00068463          	beqz	a3,80002e9c <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002e98:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    80002e9c:	00853683          	ld	a3,8(a0)
    80002ea0:	00068663          	beqz	a3,80002eac <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    80002ea4:	00e6b023          	sd	a4,0(a3)
    80002ea8:	f85ff06f          	j	80002e2c <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                else free_mem_head = remaining;
    80002eac:	00009697          	auipc	a3,0x9
    80002eb0:	e0e6b223          	sd	a4,-508(a3) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
    80002eb4:	f79ff06f          	j	80002e2c <_ZN15MemoryAllocator9mem_allocEm+0x5c>
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80002eb8:	00000693          	li	a3,0
            }

            // dodavanje na kraj?

            curr->size = byte_size - mem_h_size;
    80002ebc:	fe878793          	addi	a5,a5,-24
    80002ec0:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80002ec4:	00d53423          	sd	a3,8(a0)

            if (prev) {
    80002ec8:	02068a63          	beqz	a3,80002efc <_ZN15MemoryAllocator9mem_allocEm+0x12c>
                curr->next = prev->next;
    80002ecc:	0006b783          	ld	a5,0(a3)
    80002ed0:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80002ed4:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    80002ed8:	00053783          	ld	a5,0(a0)
    80002edc:	00078463          	beqz	a5,80002ee4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002ee0:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80002ee4:	01850513          	addi	a0,a0,24
        }
    }

    // free memory not found :(
    return nullptr;
}
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret
            if (curr < used_mem_head || !used_mem_head) prev = nullptr;
    80002ef4:	00070693          	mv	a3,a4
    80002ef8:	fc5ff06f          	j	80002ebc <_ZN15MemoryAllocator9mem_allocEm+0xec>
            else used_mem_head = curr;
    80002efc:	00009797          	auipc	a5,0x9
    80002f00:	daa7be23          	sd	a0,-580(a5) # 8000bcb8 <_ZN15MemoryAllocator13used_mem_headE>
    80002f04:	fd5ff06f          	j	80002ed8 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    if (size <= 0) return nullptr;
    80002f08:	00000513          	li	a0,0
    80002f0c:	fddff06f          	j	80002ee8 <_ZN15MemoryAllocator9mem_allocEm+0x118>

0000000080002f10 <_ZN15MemoryAllocator14init_allocatorEv>:
    if (!allocator) {
    80002f10:	00009797          	auipc	a5,0x9
    80002f14:	db07b783          	ld	a5,-592(a5) # 8000bcc0 <_ZN15MemoryAllocator9allocatorE>
    80002f18:	00078863          	beqz	a5,80002f28 <_ZN15MemoryAllocator14init_allocatorEv+0x18>
}
    80002f1c:	00009517          	auipc	a0,0x9
    80002f20:	da453503          	ld	a0,-604(a0) # 8000bcc0 <_ZN15MemoryAllocator9allocatorE>
    80002f24:	00008067          	ret
MemoryAllocator* MemoryAllocator::init_allocator() {
    80002f28:	fe010113          	addi	sp,sp,-32
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    80002f3c:	00009697          	auipc	a3,0x9
    80002f40:	c8c6b683          	ld	a3,-884(a3) # 8000bbc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002f44:	0006b783          	ld	a5,0(a3)
    80002f48:	00009497          	auipc	s1,0x9
    80002f4c:	d6848493          	addi	s1,s1,-664 # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
    80002f50:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    80002f54:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    80002f58:	0004b703          	ld	a4,0(s1)
    80002f5c:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80002f60:	00009797          	auipc	a5,0x9
    80002f64:	ca07b783          	ld	a5,-864(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002f68:	0007b783          	ld	a5,0(a5)
    80002f6c:	0006b683          	ld	a3,0(a3)
    80002f70:	40d787b3          	sub	a5,a5,a3
    80002f74:	00178793          	addi	a5,a5,1
    80002f78:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + mem_h_size + MEM_BLOCK_SIZE - 1 )/ MEM_BLOCK_SIZE);
    80002f7c:	00100513          	li	a0,1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	e50080e7          	jalr	-432(ra) # 80002dd0 <_ZN15MemoryAllocator9mem_allocEm>
    80002f88:	00a4b823          	sd	a0,16(s1)
}
    80002f8c:	00009517          	auipc	a0,0x9
    80002f90:	d3453503          	ld	a0,-716(a0) # 8000bcc0 <_ZN15MemoryAllocator9allocatorE>
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00813483          	ld	s1,8(sp)
    80002fa0:	02010113          	addi	sp,sp,32
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    80002fa8:	ff010113          	addi	sp,sp,-16
    80002fac:	00813423          	sd	s0,8(sp)
    80002fb0:	01010413          	addi	s0,sp,16
    if (!curr) return 0;
    80002fb4:	04050663          	beqz	a0,80003000 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    80002fb8:	00053783          	ld	a5,0(a0)
    80002fbc:	04078663          	beqz	a5,80003008 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80002fc0:	01053703          	ld	a4,16(a0)
    80002fc4:	00e506b3          	add	a3,a0,a4
    80002fc8:	00d78a63          	beq	a5,a3,80002fdc <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
    80002fcc:	00000513          	li	a0,0
}
    80002fd0:	00813403          	ld	s0,8(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret
        curr->size += curr->next->size;
    80002fdc:	0107b683          	ld	a3,16(a5)
    80002fe0:	00d70733          	add	a4,a4,a3
    80002fe4:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    80002fe8:	0007b783          	ld	a5,0(a5)
    80002fec:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80002ff0:	00078463          	beqz	a5,80002ff8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80002ff4:	00a7b423          	sd	a0,8(a5)
        return 1; // success status
    80002ff8:	00100513          	li	a0,1
    80002ffc:	fd5ff06f          	j	80002fd0 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (!curr) return 0;
    80003000:	00000513          	li	a0,0
    80003004:	fcdff06f          	j	80002fd0 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    80003008:	00000513          	li	a0,0
    8000300c:	fc5ff06f          	j	80002fd0 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080003010 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80003010:	14050863          	beqz	a0,80003160 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    80003014:	00009797          	auipc	a5,0x9
    80003018:	bec7b783          	ld	a5,-1044(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000301c:	0007b783          	ld	a5,0(a5)
    80003020:	14a7e463          	bltu	a5,a0,80003168 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80003024:	00009797          	auipc	a5,0x9
    80003028:	ba47b783          	ld	a5,-1116(a5) # 8000bbc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000302c:	0007b783          	ld	a5,0(a5)
    80003030:	14f56063          	bltu	a0,a5,80003170 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
int MemoryAllocator::mem_free(void* addr) {
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	01213023          	sd	s2,0(sp)
    80003048:	02010413          	addi	s0,sp,32
    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    8000304c:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    80003050:	00009797          	auipc	a5,0x9
    80003054:	c687b783          	ld	a5,-920(a5) # 8000bcb8 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    80003058:	00078863          	beqz	a5,80003068 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    8000305c:	0097f663          	bgeu	a5,s1,80003068 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80003060:	0007b783          	ld	a5,0(a5)
    80003064:	ff5ff06f          	j	80003058 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    if (block != tmp || !tmp) return -1;
    80003068:	10979863          	bne	a5,s1,80003178 <_ZN15MemoryAllocator8mem_freeEPv+0x168>
    8000306c:	10078a63          	beqz	a5,80003180 <_ZN15MemoryAllocator8mem_freeEPv+0x170>
    if (tmp->prev) tmp->prev->next = tmp->next;
    80003070:	0087b703          	ld	a4,8(a5)
    80003074:	06070c63          	beqz	a4,800030ec <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80003078:	0007b683          	ld	a3,0(a5)
    8000307c:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    80003080:	0007b703          	ld	a4,0(a5)
    80003084:	00070663          	beqz	a4,80003090 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
    80003088:	0087b783          	ld	a5,8(a5)
    8000308c:	00f73423          	sd	a5,8(a4)
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80003090:	00009797          	auipc	a5,0x9
    80003094:	c207b783          	ld	a5,-992(a5) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
    80003098:	06078263          	beqz	a5,800030fc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    8000309c:	06f4e063          	bltu	s1,a5,800030fc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    else for (tmp = free_mem_head; tmp->next && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    800030a0:	00078913          	mv	s2,a5
    800030a4:	0007b783          	ld	a5,0(a5)
    800030a8:	00078463          	beqz	a5,800030b0 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800030ac:	fe97eae3          	bltu	a5,s1,800030a0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    if (tmp == nullptr) {
    800030b0:	04090663          	beqz	s2,800030fc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        block->next = tmp->next;
    800030b4:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    800030b8:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    800030bc:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    800030c0:	fe853783          	ld	a5,-24(a0)
    800030c4:	00078463          	beqz	a5,800030cc <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800030c8:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    800030cc:	00048513          	mv	a0,s1
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	ed8080e7          	jalr	-296(ra) # 80002fa8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    800030d8:	00090513          	mv	a0,s2
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	ecc080e7          	jalr	-308(ra) # 80002fa8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    800030e4:	00000513          	li	a0,0
    800030e8:	0580006f          	j	80003140 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    else used_mem_head = tmp->next;
    800030ec:	0007b703          	ld	a4,0(a5)
    800030f0:	00009697          	auipc	a3,0x9
    800030f4:	bce6b423          	sd	a4,-1080(a3) # 8000bcb8 <_ZN15MemoryAllocator13used_mem_headE>
    800030f8:	f89ff06f          	j	80003080 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
        block -> prev = nullptr;
    800030fc:	fe053823          	sd	zero,-16(a0)
        if (free_mem_head) {
    80003100:	00009797          	auipc	a5,0x9
    80003104:	bb07b783          	ld	a5,-1104(a5) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
    80003108:	04078863          	beqz	a5,80003158 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
            free_mem_head->prev = block;
    8000310c:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    80003110:	fef53423          	sd	a5,-24(a0)
            free_mem_head = block;
    80003114:	00009797          	auipc	a5,0x9
    80003118:	b897be23          	sd	s1,-1124(a5) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
            tryToJoin(block);
    8000311c:	00048513          	mv	a0,s1
    80003120:	00000097          	auipc	ra,0x0
    80003124:	e88080e7          	jalr	-376(ra) # 80002fa8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    80003128:	00009797          	auipc	a5,0x9
    8000312c:	b897b423          	sd	s1,-1144(a5) # 8000bcb0 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    80003130:	00048513          	mv	a0,s1
    80003134:	00000097          	auipc	ra,0x0
    80003138:	e74080e7          	jalr	-396(ra) # 80002fa8 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    8000313c:	00000513          	li	a0,0
}
    80003140:	01813083          	ld	ra,24(sp)
    80003144:	01013403          	ld	s0,16(sp)
    80003148:	00813483          	ld	s1,8(sp)
    8000314c:	00013903          	ld	s2,0(sp)
    80003150:	02010113          	addi	sp,sp,32
    80003154:	00008067          	ret
        else block -> next = nullptr;
    80003158:	fe053423          	sd	zero,-24(a0)
    8000315c:	fcdff06f          	j	80003128 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80003160:	fff00513          	li	a0,-1
    80003164:	00008067          	ret
    80003168:	fff00513          	li	a0,-1
    8000316c:	00008067          	ret
    80003170:	fff00513          	li	a0,-1
}
    80003174:	00008067          	ret
    if (block != tmp || !tmp) return -1;
    80003178:	fff00513          	li	a0,-1
    8000317c:	fc5ff06f          	j	80003140 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80003180:	fff00513          	li	a0,-1
    80003184:	fbdff06f          	j	80003140 <_ZN15MemoryAllocator8mem_freeEPv+0x130>

0000000080003188 <_Z13myPrintStringPKc>:

#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void myPrintString(char const* string) {
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	02010413          	addi	s0,sp,32
    8000319c:	00050493          	mv	s1,a0
    while (*string != '\0') {
    800031a0:	0004c503          	lbu	a0,0(s1)
    800031a4:	00050a63          	beqz	a0,800031b8 <_Z13myPrintStringPKc+0x30>
        putc(*string);
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	4e0080e7          	jalr	1248(ra) # 80001688 <_Z4putcc>
        string++;
    800031b0:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800031b4:	fedff06f          	j	800031a0 <_Z13myPrintStringPKc+0x18>
    }
}
    800031b8:	01813083          	ld	ra,24(sp)
    800031bc:	01013403          	ld	s0,16(sp)
    800031c0:	00813483          	ld	s1,8(sp)
    800031c4:	02010113          	addi	sp,sp,32
    800031c8:	00008067          	ret

00000000800031cc <_Z12printIntegerm>:

void printInteger(uint64 num) {
    800031cc:	fd010113          	addi	sp,sp,-48
    800031d0:	02113423          	sd	ra,40(sp)
    800031d4:	02813023          	sd	s0,32(sp)
    800031d8:	00913c23          	sd	s1,24(sp)
    800031dc:	01213823          	sd	s2,16(sp)
    800031e0:	01313423          	sd	s3,8(sp)
    800031e4:	03010413          	addi	s0,sp,48
    800031e8:	00050913          	mv	s2,a0
    putc('\n');
    800031ec:	00a00513          	li	a0,10
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	498080e7          	jalr	1176(ra) # 80001688 <_Z4putcc>
    if (!num) putc('0');
    800031f8:	00090863          	beqz	s2,80003208 <_Z12printIntegerm+0x3c>
    uint64 num2 = 0, zero_count = 0;
    800031fc:	00000993          	li	s3,0
    80003200:	00000493          	li	s1,0
    80003204:	01c0006f          	j	80003220 <_Z12printIntegerm+0x54>
    if (!num) putc('0');
    80003208:	03000513          	li	a0,48
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	47c080e7          	jalr	1148(ra) # 80001688 <_Z4putcc>
    80003214:	fe9ff06f          	j	800031fc <_Z12printIntegerm+0x30>
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    80003218:	00a00793          	li	a5,10
    8000321c:	02f95933          	divu	s2,s2,a5
    while (num) {
    80003220:	02090463          	beqz	s2,80003248 <_Z12printIntegerm+0x7c>
        num2 *= 10;
    80003224:	00249793          	slli	a5,s1,0x2
    80003228:	009784b3          	add	s1,a5,s1
    8000322c:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80003230:	00a00493          	li	s1,10
    80003234:	029974b3          	remu	s1,s2,s1
    80003238:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    8000323c:	fc049ee3          	bnez	s1,80003218 <_Z12printIntegerm+0x4c>
    80003240:	00198993          	addi	s3,s3,1
    80003244:	fd5ff06f          	j	80003218 <_Z12printIntegerm+0x4c>
    }
    while (num2) {
    80003248:	02048063          	beqz	s1,80003268 <_Z12printIntegerm+0x9c>
        putc(num2 % 10 + '0');
    8000324c:	00a00913          	li	s2,10
    80003250:	0324f533          	remu	a0,s1,s2
    80003254:	03050513          	addi	a0,a0,48
    80003258:	ffffe097          	auipc	ra,0xffffe
    8000325c:	430080e7          	jalr	1072(ra) # 80001688 <_Z4putcc>
        num2 /= 10;
    80003260:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80003264:	fe5ff06f          	j	80003248 <_Z12printIntegerm+0x7c>
    }
    while (zero_count--) putc('0');
    80003268:	fff98493          	addi	s1,s3,-1
    8000326c:	00098c63          	beqz	s3,80003284 <_Z12printIntegerm+0xb8>
    80003270:	03000513          	li	a0,48
    80003274:	ffffe097          	auipc	ra,0xffffe
    80003278:	414080e7          	jalr	1044(ra) # 80001688 <_Z4putcc>
    8000327c:	00048993          	mv	s3,s1
    80003280:	fe9ff06f          	j	80003268 <_Z12printIntegerm+0x9c>
    80003284:	02813083          	ld	ra,40(sp)
    80003288:	02013403          	ld	s0,32(sp)
    8000328c:	01813483          	ld	s1,24(sp)
    80003290:	01013903          	ld	s2,16(sp)
    80003294:	00813983          	ld	s3,8(sp)
    80003298:	03010113          	addi	sp,sp,48
    8000329c:	00008067          	ret

00000000800032a0 <_ZN3TCB7wrapperEv>:
    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return 0;
}

void TCB::wrapper() {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00113423          	sd	ra,8(sp)
    800032a8:	00813023          	sd	s0,0(sp)
    800032ac:	01010413          	addi	s0,sp,16

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    // came from supervisor trap (s mode)
    if ( running->routine ) {
    800032b0:	00009797          	auipc	a5,0x9
    800032b4:	a187b783          	ld	a5,-1512(a5) # 8000bcc8 <_ZN3TCB7runningE>
    800032b8:	0307b783          	ld	a5,48(a5)
    800032bc:	02078063          	beqz	a5,800032dc <_ZN3TCB7wrapperEv+0x3c>
        RISCV::popSppSpie();
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	698080e7          	jalr	1688(ra) # 80002958 <_ZN5RISCV10popSppSpieEv>
        running->routine(running->args);
    800032c8:	00009797          	auipc	a5,0x9
    800032cc:	a007b783          	ld	a5,-1536(a5) # 8000bcc8 <_ZN3TCB7runningE>
    800032d0:	0307b703          	ld	a4,48(a5)
    800032d4:	0387b503          	ld	a0,56(a5)
    800032d8:	000700e7          	jalr	a4
        // in user mode IF not char-handler
    }

    ::thread_exit();
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	0b4080e7          	jalr	180(ra) # 80001390 <_Z11thread_exitv>
    // no return address from wrapper
}
    800032e4:	00813083          	ld	ra,8(sp)
    800032e8:	00013403          	ld	s0,0(sp)
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret

00000000800032f4 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00813423          	sd	s0,8(sp)
    800032fc:	01010413          	addi	s0,sp,16
    80003300:	00073303          	ld	t1,0(a4)
    80003304:	00873883          	ld	a7,8(a4)
    80003308:	01073803          	ld	a6,16(a4)
    8000330c:	01873783          	ld	a5,24(a4)
    80003310:	04653423          	sd	t1,72(a0)
    80003314:	05153823          	sd	a7,80(a0)
    80003318:	05053c23          	sd	a6,88(a0)
    8000331c:	06f53023          	sd	a5,96(a0)
    id = id_count++;
    80003320:	00009717          	auipc	a4,0x9
    80003324:	9a870713          	addi	a4,a4,-1624 # 8000bcc8 <_ZN3TCB7runningE>
    80003328:	00872783          	lw	a5,8(a4)
    8000332c:	0017881b          	addiw	a6,a5,1
    80003330:	01072423          	sw	a6,8(a4)
    80003334:	00f52023          	sw	a5,0(a0)
    routine = fun;
    80003338:	02b53823          	sd	a1,48(a0)
    this->args = args;
    8000333c:	02c53c23          	sd	a2,56(a0)
    this->stack = (uint64*)stack; // stack start address (allocated)
    80003340:	04d53023          	sd	a3,64(a0)
    this->current_state = RUNNABLE;
    80003344:	06052423          	sw	zero,104(a0)
    this->next_ready = nullptr;
    80003348:	00053423          	sd	zero,8(a0)
    this->next_sleepy= nullptr;
    8000334c:	00053823          	sd	zero,16(a0)
    this->time_on_sem = 0;
    80003350:	00053c23          	sd	zero,24(a0)
    this->sleeping_time = 0;
    80003354:	02053023          	sd	zero,32(a0)
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
    80003358:	00200793          	li	a5,2
    8000335c:	02f53423          	sd	a5,40(a0)
}
    80003360:	00813403          	ld	s0,8(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00113c23          	sd	ra,24(sp)
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	01213023          	sd	s2,0(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	00050493          	mv	s1,a0
    80003388:	00058913          	mv	s2,a1
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	c74080e7          	jalr	-908(ra) # 80001000 <_ZN5RISCV9push_regsEv>
    contextSwitch(&oldRunning->context, &newRunning->context);
    80003394:	04890593          	addi	a1,s2,72
    80003398:	04848513          	addi	a0,s1,72
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	e74080e7          	jalr	-396(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    RISCV::pop_regs();
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	cdc080e7          	jalr	-804(ra) # 80001080 <_ZN5RISCV8pop_regsEv>
}
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	00013903          	ld	s2,0(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <_ZN3TCBnwEm>:
    running = Scheduler::get();

    if (oldRunning != running) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00113423          	sd	ra,8(sp)
    800033cc:	00813023          	sd	s0,0(sp)
    800033d0:	01010413          	addi	s0,sp,16
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800033d4:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(blocks);
    800033d8:	00655513          	srli	a0,a0,0x6
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	9f4080e7          	jalr	-1548(ra) # 80002dd0 <_ZN15MemoryAllocator9mem_allocEm>
}
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_>:
int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    800033f4:	f6010113          	addi	sp,sp,-160
    800033f8:	08113c23          	sd	ra,152(sp)
    800033fc:	08813823          	sd	s0,144(sp)
    80003400:	08913423          	sd	s1,136(sp)
    80003404:	09213023          	sd	s2,128(sp)
    80003408:	07313c23          	sd	s3,120(sp)
    8000340c:	07413823          	sd	s4,112(sp)
    80003410:	07513423          	sd	s5,104(sp)
    80003414:	0a010413          	addi	s0,sp,160
    80003418:	00050a13          	mv	s4,a0
    8000341c:	00058493          	mv	s1,a1
    80003420:	00060a93          	mv	s5,a2
    80003424:	00068913          	mv	s2,a3
    Context context = {
    80003428:	fa043823          	sd	zero,-80(s0)
    8000342c:	fa043c23          	sd	zero,-72(s0)
    80003430:	00000797          	auipc	a5,0x0
    80003434:	e7078793          	addi	a5,a5,-400 # 800032a0 <_ZN3TCB7wrapperEv>
    80003438:	faf43023          	sd	a5,-96(s0)
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    8000343c:	0a058863          	beqz	a1,800034ec <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xf8>
    80003440:	000017b7          	lui	a5,0x1
    80003444:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003448:	00f687b3          	add	a5,a3,a5
    *handle = new TCB (routine, args, stack_space, context);
    8000344c:	fa043703          	ld	a4,-96(s0)
    80003450:	f8e43023          	sd	a4,-128(s0)
    80003454:	f8f43423          	sd	a5,-120(s0)
    80003458:	fb043783          	ld	a5,-80(s0)
    8000345c:	f8f43823          	sd	a5,-112(s0)
    80003460:	fb843783          	ld	a5,-72(s0)
    80003464:	f8f43c23          	sd	a5,-104(s0)
    80003468:	07000513          	li	a0,112
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	f58080e7          	jalr	-168(ra) # 800033c4 <_ZN3TCBnwEm>
    80003474:	00050993          	mv	s3,a0
    80003478:	f8043783          	ld	a5,-128(s0)
    8000347c:	f6f43023          	sd	a5,-160(s0)
    80003480:	f8843783          	ld	a5,-120(s0)
    80003484:	f6f43423          	sd	a5,-152(s0)
    80003488:	f9043783          	ld	a5,-112(s0)
    8000348c:	f6f43823          	sd	a5,-144(s0)
    80003490:	f9843783          	ld	a5,-104(s0)
    80003494:	f6f43c23          	sd	a5,-136(s0)
    80003498:	f6040713          	addi	a4,s0,-160
    8000349c:	00090693          	mv	a3,s2
    800034a0:	000a8613          	mv	a2,s5
    800034a4:	00048593          	mv	a1,s1
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	e4c080e7          	jalr	-436(ra) # 800032f4 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    800034b0:	013a3023          	sd	s3,0(s4)
    if (routine) Scheduler::put(*handle);
    800034b4:	00048863          	beqz	s1,800034c4 <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0xd0>
    800034b8:	00098513          	mv	a0,s3
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	7a8080e7          	jalr	1960(ra) # 80001c64 <_ZN9Scheduler3putEP3TCB>
}
    800034c4:	00000513          	li	a0,0
    800034c8:	09813083          	ld	ra,152(sp)
    800034cc:	09013403          	ld	s0,144(sp)
    800034d0:	08813483          	ld	s1,136(sp)
    800034d4:	08013903          	ld	s2,128(sp)
    800034d8:	07813983          	ld	s3,120(sp)
    800034dc:	07013a03          	ld	s4,112(sp)
    800034e0:	06813a83          	ld	s5,104(sp)
    800034e4:	0a010113          	addi	sp,sp,160
    800034e8:	00008067          	ret
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)
    800034ec:	00000793          	li	a5,0
    800034f0:	f5dff06f          	j	8000344c <_ZN3TCB13_threadCreateEPPS_PFvPvES2_S2_+0x58>

00000000800034f4 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    800034f4:	ff010113          	addi	sp,sp,-16
    800034f8:	00113423          	sd	ra,8(sp)
    800034fc:	00813023          	sd	s0,0(sp)
    80003500:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80003504:	00000097          	auipc	ra,0x0
    80003508:	b0c080e7          	jalr	-1268(ra) # 80003010 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000350c:	00813083          	ld	ra,8(sp)
    80003510:	00013403          	ld	s0,0(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <_ZN3TCB10isRunnableEv>:

bool TCB::isRunnable() {
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00813423          	sd	s0,8(sp)
    80003524:	01010413          	addi	s0,sp,16
    return running->current_state == RUNNABLE; }
    80003528:	00008797          	auipc	a5,0x8
    8000352c:	7a07b783          	ld	a5,1952(a5) # 8000bcc8 <_ZN3TCB7runningE>
    80003530:	0687a503          	lw	a0,104(a5)
    80003534:	00153513          	seqz	a0,a0
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	01010113          	addi	sp,sp,16
    80003540:	00008067          	ret

0000000080003544 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80003544:	fe010113          	addi	sp,sp,-32
    80003548:	00113c23          	sd	ra,24(sp)
    8000354c:	00813823          	sd	s0,16(sp)
    80003550:	00913423          	sd	s1,8(sp)
    80003554:	01213023          	sd	s2,0(sp)
    80003558:	02010413          	addi	s0,sp,32
    TCB *oldRunning = TCB::running;
    8000355c:	00008917          	auipc	s2,0x8
    80003560:	76c93903          	ld	s2,1900(s2) # 8000bcc8 <_ZN3TCB7runningE>
    if ( isRunnable() ) Scheduler::put(oldRunning);
    80003564:	00000097          	auipc	ra,0x0
    80003568:	fb8080e7          	jalr	-72(ra) # 8000351c <_ZN3TCB10isRunnableEv>
    8000356c:	04051e63          	bnez	a0,800035c8 <_ZN3TCB8dispatchEv+0x84>
    if ( running->isFinished() ) {
    80003570:	00008797          	auipc	a5,0x8
    80003574:	7587b783          	ld	a5,1880(a5) # 8000bcc8 <_ZN3TCB7runningE>
    bool isFinished() {return current_state == state::FINISHED;}
    80003578:	0687a683          	lw	a3,104(a5)
    8000357c:	00300713          	li	a4,3
    80003580:	04e68c63          	beq	a3,a4,800035d8 <_ZN3TCB8dispatchEv+0x94>
    time_slice_count = 0;
    80003584:	00008497          	auipc	s1,0x8
    80003588:	74448493          	addi	s1,s1,1860 # 8000bcc8 <_ZN3TCB7runningE>
    8000358c:	0004b823          	sd	zero,16(s1)
    running = Scheduler::get();
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	690080e7          	jalr	1680(ra) # 80001c20 <_ZN9Scheduler3getEv>
    80003598:	00050593          	mv	a1,a0
    8000359c:	00a4b023          	sd	a0,0(s1)
    if (oldRunning != running) yield(oldRunning, running);
    800035a0:	00a90863          	beq	s2,a0,800035b0 <_ZN3TCB8dispatchEv+0x6c>
    800035a4:	00090513          	mv	a0,s2
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	dc4080e7          	jalr	-572(ra) # 8000336c <_ZN3TCB5yieldEPS_S0_>
}
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	01013403          	ld	s0,16(sp)
    800035b8:	00813483          	ld	s1,8(sp)
    800035bc:	00013903          	ld	s2,0(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret
    if ( isRunnable() ) Scheduler::put(oldRunning);
    800035c8:	00090513          	mv	a0,s2
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	698080e7          	jalr	1688(ra) # 80001c64 <_ZN9Scheduler3putEP3TCB>
    800035d4:	f9dff06f          	j	80003570 <_ZN3TCB8dispatchEv+0x2c>
        MemoryAllocator::mem_free(TCB::running->stack);
    800035d8:	0407b503          	ld	a0,64(a5)
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	a34080e7          	jalr	-1484(ra) # 80003010 <_ZN15MemoryAllocator8mem_freeEPv>
    800035e4:	fa1ff06f          	j	80003584 <_ZN3TCB8dispatchEv+0x40>

00000000800035e8 <_ZN3TCB11_threadExitEv>:

int TCB::_threadExit() {

    if (TCB::running == nullptr) return -1; // error
    800035e8:	00008797          	auipc	a5,0x8
    800035ec:	6e07b783          	ld	a5,1760(a5) # 8000bcc8 <_ZN3TCB7runningE>
    800035f0:	02078c63          	beqz	a5,80003628 <_ZN3TCB11_threadExitEv+0x40>
int TCB::_threadExit() {
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00113423          	sd	ra,8(sp)
    800035fc:	00813023          	sd	s0,0(sp)
    80003600:	01010413          	addi	s0,sp,16

    void finish() { current_state = state::FINISHED; }
    80003604:	00300713          	li	a4,3
    80003608:	06e7a423          	sw	a4,104(a5)

    TCB::running -> finish();
    thread_dispatch();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	dd0080e7          	jalr	-560(ra) # 800013dc <_Z15thread_dispatchv>
    return 0;
    80003614:	00000513          	li	a0,0
}
    80003618:	00813083          	ld	ra,8(sp)
    8000361c:	00013403          	ld	s0,0(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret
    if (TCB::running == nullptr) return -1; // error
    80003628:	fff00513          	li	a0,-1
}
    8000362c:	00008067          	ret

0000000080003630 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00113c23          	sd	ra,24(sp)
    80003638:	00813823          	sd	s0,16(sp)
    8000363c:	00913423          	sd	s1,8(sp)
    80003640:	01213023          	sd	s2,0(sp)
    80003644:	02010413          	addi	s0,sp,32
    80003648:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000364c:	00000913          	li	s2,0
    80003650:	00c0006f          	j	8000365c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	d88080e7          	jalr	-632(ra) # 800013dc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	fe0080e7          	jalr	-32(ra) # 8000163c <_Z4getcv>
    80003664:	0005059b          	sext.w	a1,a0
    80003668:	01b00793          	li	a5,27
    8000366c:	02f58a63          	beq	a1,a5,800036a0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003670:	0084b503          	ld	a0,8(s1)
    80003674:	00003097          	auipc	ra,0x3
    80003678:	3ac080e7          	jalr	940(ra) # 80006a20 <_ZN6Buffer3putEi>
        i++;
    8000367c:	0019071b          	addiw	a4,s2,1
    80003680:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003684:	0004a683          	lw	a3,0(s1)
    80003688:	0026979b          	slliw	a5,a3,0x2
    8000368c:	00d787bb          	addw	a5,a5,a3
    80003690:	0017979b          	slliw	a5,a5,0x1
    80003694:	02f767bb          	remw	a5,a4,a5
    80003698:	fc0792e3          	bnez	a5,8000365c <_ZL16producerKeyboardPv+0x2c>
    8000369c:	fb9ff06f          	j	80003654 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800036a0:	00100793          	li	a5,1
    800036a4:	00008717          	auipc	a4,0x8
    800036a8:	62f72e23          	sw	a5,1596(a4) # 8000bce0 <_ZL9threadEnd>
    data->buffer->put('!');
    800036ac:	02100593          	li	a1,33
    800036b0:	0084b503          	ld	a0,8(s1)
    800036b4:	00003097          	auipc	ra,0x3
    800036b8:	36c080e7          	jalr	876(ra) # 80006a20 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800036bc:	0104b503          	ld	a0,16(s1)
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	ee4080e7          	jalr	-284(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	01013403          	ld	s0,16(sp)
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	00013903          	ld	s2,0(sp)
    800036d8:	02010113          	addi	sp,sp,32
    800036dc:	00008067          	ret

00000000800036e0 <_ZL8producerPv>:

static void producer(void *arg) {
    800036e0:	fe010113          	addi	sp,sp,-32
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	00813823          	sd	s0,16(sp)
    800036ec:	00913423          	sd	s1,8(sp)
    800036f0:	01213023          	sd	s2,0(sp)
    800036f4:	02010413          	addi	s0,sp,32
    800036f8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800036fc:	00000913          	li	s2,0
    80003700:	00c0006f          	j	8000370c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	cd8080e7          	jalr	-808(ra) # 800013dc <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000370c:	00008797          	auipc	a5,0x8
    80003710:	5d47a783          	lw	a5,1492(a5) # 8000bce0 <_ZL9threadEnd>
    80003714:	02079e63          	bnez	a5,80003750 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003718:	0004a583          	lw	a1,0(s1)
    8000371c:	0305859b          	addiw	a1,a1,48
    80003720:	0084b503          	ld	a0,8(s1)
    80003724:	00003097          	auipc	ra,0x3
    80003728:	2fc080e7          	jalr	764(ra) # 80006a20 <_ZN6Buffer3putEi>
        i++;
    8000372c:	0019071b          	addiw	a4,s2,1
    80003730:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003734:	0004a683          	lw	a3,0(s1)
    80003738:	0026979b          	slliw	a5,a3,0x2
    8000373c:	00d787bb          	addw	a5,a5,a3
    80003740:	0017979b          	slliw	a5,a5,0x1
    80003744:	02f767bb          	remw	a5,a4,a5
    80003748:	fc0792e3          	bnez	a5,8000370c <_ZL8producerPv+0x2c>
    8000374c:	fb9ff06f          	j	80003704 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003750:	0104b503          	ld	a0,16(s1)
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	e50080e7          	jalr	-432(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	00813483          	ld	s1,8(sp)
    80003768:	00013903          	ld	s2,0(sp)
    8000376c:	02010113          	addi	sp,sp,32
    80003770:	00008067          	ret

0000000080003774 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003774:	fd010113          	addi	sp,sp,-48
    80003778:	02113423          	sd	ra,40(sp)
    8000377c:	02813023          	sd	s0,32(sp)
    80003780:	00913c23          	sd	s1,24(sp)
    80003784:	01213823          	sd	s2,16(sp)
    80003788:	01313423          	sd	s3,8(sp)
    8000378c:	03010413          	addi	s0,sp,48
    80003790:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003794:	00000993          	li	s3,0
    80003798:	01c0006f          	j	800037b4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	c40080e7          	jalr	-960(ra) # 800013dc <_Z15thread_dispatchv>
    800037a4:	0500006f          	j	800037f4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800037a8:	00a00513          	li	a0,10
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	edc080e7          	jalr	-292(ra) # 80001688 <_Z4putcc>
    while (!threadEnd) {
    800037b4:	00008797          	auipc	a5,0x8
    800037b8:	52c7a783          	lw	a5,1324(a5) # 8000bce0 <_ZL9threadEnd>
    800037bc:	06079063          	bnez	a5,8000381c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800037c0:	00893503          	ld	a0,8(s2)
    800037c4:	00003097          	auipc	ra,0x3
    800037c8:	2ec080e7          	jalr	748(ra) # 80006ab0 <_ZN6Buffer3getEv>
        i++;
    800037cc:	0019849b          	addiw	s1,s3,1
    800037d0:	0004899b          	sext.w	s3,s1
        putc(key);
    800037d4:	0ff57513          	andi	a0,a0,255
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	eb0080e7          	jalr	-336(ra) # 80001688 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800037e0:	00092703          	lw	a4,0(s2)
    800037e4:	0027179b          	slliw	a5,a4,0x2
    800037e8:	00e787bb          	addw	a5,a5,a4
    800037ec:	02f4e7bb          	remw	a5,s1,a5
    800037f0:	fa0786e3          	beqz	a5,8000379c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800037f4:	05000793          	li	a5,80
    800037f8:	02f4e4bb          	remw	s1,s1,a5
    800037fc:	fa049ce3          	bnez	s1,800037b4 <_ZL8consumerPv+0x40>
    80003800:	fa9ff06f          	j	800037a8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003804:	00893503          	ld	a0,8(s2)
    80003808:	00003097          	auipc	ra,0x3
    8000380c:	2a8080e7          	jalr	680(ra) # 80006ab0 <_ZN6Buffer3getEv>
        putc(key);
    80003810:	0ff57513          	andi	a0,a0,255
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	e74080e7          	jalr	-396(ra) # 80001688 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000381c:	00893503          	ld	a0,8(s2)
    80003820:	00003097          	auipc	ra,0x3
    80003824:	31c080e7          	jalr	796(ra) # 80006b3c <_ZN6Buffer6getCntEv>
    80003828:	fca04ee3          	bgtz	a0,80003804 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000382c:	01093503          	ld	a0,16(s2)
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	d74080e7          	jalr	-652(ra) # 800015a4 <_Z10sem_signalP3Sem>
}
    80003838:	02813083          	ld	ra,40(sp)
    8000383c:	02013403          	ld	s0,32(sp)
    80003840:	01813483          	ld	s1,24(sp)
    80003844:	01013903          	ld	s2,16(sp)
    80003848:	00813983          	ld	s3,8(sp)
    8000384c:	03010113          	addi	sp,sp,48
    80003850:	00008067          	ret

0000000080003854 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003854:	f9010113          	addi	sp,sp,-112
    80003858:	06113423          	sd	ra,104(sp)
    8000385c:	06813023          	sd	s0,96(sp)
    80003860:	04913c23          	sd	s1,88(sp)
    80003864:	05213823          	sd	s2,80(sp)
    80003868:	05313423          	sd	s3,72(sp)
    8000386c:	05413023          	sd	s4,64(sp)
    80003870:	03513c23          	sd	s5,56(sp)
    80003874:	03613823          	sd	s6,48(sp)
    80003878:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000387c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003880:	00006517          	auipc	a0,0x6
    80003884:	8b850513          	addi	a0,a0,-1864 # 80009138 <CONSOLE_STATUS+0x128>
    80003888:	00002097          	auipc	ra,0x2
    8000388c:	1cc080e7          	jalr	460(ra) # 80005a54 <_Z11printStringPKc>
    getString(input, 30);
    80003890:	01e00593          	li	a1,30
    80003894:	fa040493          	addi	s1,s0,-96
    80003898:	00048513          	mv	a0,s1
    8000389c:	00002097          	auipc	ra,0x2
    800038a0:	240080e7          	jalr	576(ra) # 80005adc <_Z9getStringPci>
    threadNum = stringToInt(input);
    800038a4:	00048513          	mv	a0,s1
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	30c080e7          	jalr	780(ra) # 80005bb4 <_Z11stringToIntPKc>
    800038b0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800038b4:	00006517          	auipc	a0,0x6
    800038b8:	8a450513          	addi	a0,a0,-1884 # 80009158 <CONSOLE_STATUS+0x148>
    800038bc:	00002097          	auipc	ra,0x2
    800038c0:	198080e7          	jalr	408(ra) # 80005a54 <_Z11printStringPKc>
    getString(input, 30);
    800038c4:	01e00593          	li	a1,30
    800038c8:	00048513          	mv	a0,s1
    800038cc:	00002097          	auipc	ra,0x2
    800038d0:	210080e7          	jalr	528(ra) # 80005adc <_Z9getStringPci>
    n = stringToInt(input);
    800038d4:	00048513          	mv	a0,s1
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	2dc080e7          	jalr	732(ra) # 80005bb4 <_Z11stringToIntPKc>
    800038e0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800038e4:	00006517          	auipc	a0,0x6
    800038e8:	89450513          	addi	a0,a0,-1900 # 80009178 <CONSOLE_STATUS+0x168>
    800038ec:	00002097          	auipc	ra,0x2
    800038f0:	168080e7          	jalr	360(ra) # 80005a54 <_Z11printStringPKc>
    800038f4:	00000613          	li	a2,0
    800038f8:	00a00593          	li	a1,10
    800038fc:	00090513          	mv	a0,s2
    80003900:	00002097          	auipc	ra,0x2
    80003904:	304080e7          	jalr	772(ra) # 80005c04 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	88850513          	addi	a0,a0,-1912 # 80009190 <CONSOLE_STATUS+0x180>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	144080e7          	jalr	324(ra) # 80005a54 <_Z11printStringPKc>
    80003918:	00000613          	li	a2,0
    8000391c:	00a00593          	li	a1,10
    80003920:	00048513          	mv	a0,s1
    80003924:	00002097          	auipc	ra,0x2
    80003928:	2e0080e7          	jalr	736(ra) # 80005c04 <_Z8printIntiii>
    printString(".\n");
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	87c50513          	addi	a0,a0,-1924 # 800091a8 <CONSOLE_STATUS+0x198>
    80003934:	00002097          	auipc	ra,0x2
    80003938:	120080e7          	jalr	288(ra) # 80005a54 <_Z11printStringPKc>
    if(threadNum > n) {
    8000393c:	0324c463          	blt	s1,s2,80003964 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003940:	03205c63          	blez	s2,80003978 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003944:	03800513          	li	a0,56
    80003948:	fffff097          	auipc	ra,0xfffff
    8000394c:	900080e7          	jalr	-1792(ra) # 80002248 <_Znwm>
    80003950:	00050a13          	mv	s4,a0
    80003954:	00048593          	mv	a1,s1
    80003958:	00003097          	auipc	ra,0x3
    8000395c:	02c080e7          	jalr	44(ra) # 80006984 <_ZN6BufferC1Ei>
    80003960:	0300006f          	j	80003990 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003964:	00006517          	auipc	a0,0x6
    80003968:	84c50513          	addi	a0,a0,-1972 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000396c:	00002097          	auipc	ra,0x2
    80003970:	0e8080e7          	jalr	232(ra) # 80005a54 <_Z11printStringPKc>
        return;
    80003974:	0140006f          	j	80003988 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	87850513          	addi	a0,a0,-1928 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	0d4080e7          	jalr	212(ra) # 80005a54 <_Z11printStringPKc>
        return;
    80003988:	000b0113          	mv	sp,s6
    8000398c:	1500006f          	j	80003adc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003990:	00000593          	li	a1,0
    80003994:	00008517          	auipc	a0,0x8
    80003998:	35450513          	addi	a0,a0,852 # 8000bce8 <_ZL10waitForAll>
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	a7c080e7          	jalr	-1412(ra) # 80001418 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800039a4:	00391793          	slli	a5,s2,0x3
    800039a8:	00f78793          	addi	a5,a5,15
    800039ac:	ff07f793          	andi	a5,a5,-16
    800039b0:	40f10133          	sub	sp,sp,a5
    800039b4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800039b8:	0019071b          	addiw	a4,s2,1
    800039bc:	00171793          	slli	a5,a4,0x1
    800039c0:	00e787b3          	add	a5,a5,a4
    800039c4:	00379793          	slli	a5,a5,0x3
    800039c8:	00f78793          	addi	a5,a5,15
    800039cc:	ff07f793          	andi	a5,a5,-16
    800039d0:	40f10133          	sub	sp,sp,a5
    800039d4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800039d8:	00191613          	slli	a2,s2,0x1
    800039dc:	012607b3          	add	a5,a2,s2
    800039e0:	00379793          	slli	a5,a5,0x3
    800039e4:	00f987b3          	add	a5,s3,a5
    800039e8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800039ec:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800039f0:	00008717          	auipc	a4,0x8
    800039f4:	2f873703          	ld	a4,760(a4) # 8000bce8 <_ZL10waitForAll>
    800039f8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800039fc:	00078613          	mv	a2,a5
    80003a00:	00000597          	auipc	a1,0x0
    80003a04:	d7458593          	addi	a1,a1,-652 # 80003774 <_ZL8consumerPv>
    80003a08:	f9840513          	addi	a0,s0,-104
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	8f0080e7          	jalr	-1808(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003a14:	00000493          	li	s1,0
    80003a18:	0280006f          	j	80003a40 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003a1c:	00000597          	auipc	a1,0x0
    80003a20:	c1458593          	addi	a1,a1,-1004 # 80003630 <_ZL16producerKeyboardPv>
                      data + i);
    80003a24:	00179613          	slli	a2,a5,0x1
    80003a28:	00f60633          	add	a2,a2,a5
    80003a2c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003a30:	00c98633          	add	a2,s3,a2
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	8c8080e7          	jalr	-1848(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003a3c:	0014849b          	addiw	s1,s1,1
    80003a40:	0524d263          	bge	s1,s2,80003a84 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003a44:	00149793          	slli	a5,s1,0x1
    80003a48:	009787b3          	add	a5,a5,s1
    80003a4c:	00379793          	slli	a5,a5,0x3
    80003a50:	00f987b3          	add	a5,s3,a5
    80003a54:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003a58:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003a5c:	00008717          	auipc	a4,0x8
    80003a60:	28c73703          	ld	a4,652(a4) # 8000bce8 <_ZL10waitForAll>
    80003a64:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003a68:	00048793          	mv	a5,s1
    80003a6c:	00349513          	slli	a0,s1,0x3
    80003a70:	00aa8533          	add	a0,s5,a0
    80003a74:	fa9054e3          	blez	s1,80003a1c <_Z22producerConsumer_C_APIv+0x1c8>
    80003a78:	00000597          	auipc	a1,0x0
    80003a7c:	c6858593          	addi	a1,a1,-920 # 800036e0 <_ZL8producerPv>
    80003a80:	fa5ff06f          	j	80003a24 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	958080e7          	jalr	-1704(ra) # 800013dc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003a8c:	00000493          	li	s1,0
    80003a90:	00994e63          	blt	s2,s1,80003aac <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003a94:	00008517          	auipc	a0,0x8
    80003a98:	25453503          	ld	a0,596(a0) # 8000bce8 <_ZL10waitForAll>
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	a24080e7          	jalr	-1500(ra) # 800014c0 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003aa4:	0014849b          	addiw	s1,s1,1
    80003aa8:	fe9ff06f          	j	80003a90 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003aac:	00008517          	auipc	a0,0x8
    80003ab0:	23c53503          	ld	a0,572(a0) # 8000bce8 <_ZL10waitForAll>
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	9b4080e7          	jalr	-1612(ra) # 80001468 <_Z9sem_closeP3Sem>
    delete buffer;
    80003abc:	000a0e63          	beqz	s4,80003ad8 <_Z22producerConsumer_C_APIv+0x284>
    80003ac0:	000a0513          	mv	a0,s4
    80003ac4:	00003097          	auipc	ra,0x3
    80003ac8:	100080e7          	jalr	256(ra) # 80006bc4 <_ZN6BufferD1Ev>
    80003acc:	000a0513          	mv	a0,s4
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	7f0080e7          	jalr	2032(ra) # 800022c0 <_ZdlPv>
    80003ad8:	000b0113          	mv	sp,s6

}
    80003adc:	f9040113          	addi	sp,s0,-112
    80003ae0:	06813083          	ld	ra,104(sp)
    80003ae4:	06013403          	ld	s0,96(sp)
    80003ae8:	05813483          	ld	s1,88(sp)
    80003aec:	05013903          	ld	s2,80(sp)
    80003af0:	04813983          	ld	s3,72(sp)
    80003af4:	04013a03          	ld	s4,64(sp)
    80003af8:	03813a83          	ld	s5,56(sp)
    80003afc:	03013b03          	ld	s6,48(sp)
    80003b00:	07010113          	addi	sp,sp,112
    80003b04:	00008067          	ret
    80003b08:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003b0c:	000a0513          	mv	a0,s4
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	7b0080e7          	jalr	1968(ra) # 800022c0 <_ZdlPv>
    80003b18:	00048513          	mv	a0,s1
    80003b1c:	00009097          	auipc	ra,0x9
    80003b20:	2dc080e7          	jalr	732(ra) # 8000cdf8 <_Unwind_Resume>

0000000080003b24 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b24:	fe010113          	addi	sp,sp,-32
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	00813823          	sd	s0,16(sp)
    80003b30:	00913423          	sd	s1,8(sp)
    80003b34:	01213023          	sd	s2,0(sp)
    80003b38:	02010413          	addi	s0,sp,32
    80003b3c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b40:	00100793          	li	a5,1
    80003b44:	02a7f863          	bgeu	a5,a0,80003b74 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b48:	00a00793          	li	a5,10
    80003b4c:	02f577b3          	remu	a5,a0,a5
    80003b50:	02078e63          	beqz	a5,80003b8c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b54:	fff48513          	addi	a0,s1,-1
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	fcc080e7          	jalr	-52(ra) # 80003b24 <_ZL9fibonaccim>
    80003b60:	00050913          	mv	s2,a0
    80003b64:	ffe48513          	addi	a0,s1,-2
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	fbc080e7          	jalr	-68(ra) # 80003b24 <_ZL9fibonaccim>
    80003b70:	00a90533          	add	a0,s2,a0
}
    80003b74:	01813083          	ld	ra,24(sp)
    80003b78:	01013403          	ld	s0,16(sp)
    80003b7c:	00813483          	ld	s1,8(sp)
    80003b80:	00013903          	ld	s2,0(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b8c:	ffffe097          	auipc	ra,0xffffe
    80003b90:	850080e7          	jalr	-1968(ra) # 800013dc <_Z15thread_dispatchv>
    80003b94:	fc1ff06f          	j	80003b54 <_ZL9fibonaccim+0x30>

0000000080003b98 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003b98:	fe010113          	addi	sp,sp,-32
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00913423          	sd	s1,8(sp)
    80003ba8:	01213023          	sd	s2,0(sp)
    80003bac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003bb0:	00000913          	li	s2,0
    80003bb4:	0380006f          	j	80003bec <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bb8:	ffffe097          	auipc	ra,0xffffe
    80003bbc:	824080e7          	jalr	-2012(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003bc0:	00148493          	addi	s1,s1,1
    80003bc4:	000027b7          	lui	a5,0x2
    80003bc8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003bcc:	0097ee63          	bltu	a5,s1,80003be8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003bd0:	00000713          	li	a4,0
    80003bd4:	000077b7          	lui	a5,0x7
    80003bd8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003bdc:	fce7eee3          	bltu	a5,a4,80003bb8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003be0:	00170713          	addi	a4,a4,1
    80003be4:	ff1ff06f          	j	80003bd4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003be8:	00190913          	addi	s2,s2,1
    80003bec:	00900793          	li	a5,9
    80003bf0:	0527e063          	bltu	a5,s2,80003c30 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003bf4:	00005517          	auipc	a0,0x5
    80003bf8:	62c50513          	addi	a0,a0,1580 # 80009220 <CONSOLE_STATUS+0x210>
    80003bfc:	00002097          	auipc	ra,0x2
    80003c00:	e58080e7          	jalr	-424(ra) # 80005a54 <_Z11printStringPKc>
    80003c04:	00000613          	li	a2,0
    80003c08:	00a00593          	li	a1,10
    80003c0c:	0009051b          	sext.w	a0,s2
    80003c10:	00002097          	auipc	ra,0x2
    80003c14:	ff4080e7          	jalr	-12(ra) # 80005c04 <_Z8printIntiii>
    80003c18:	00006517          	auipc	a0,0x6
    80003c1c:	86850513          	addi	a0,a0,-1944 # 80009480 <CONSOLE_STATUS+0x470>
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	e34080e7          	jalr	-460(ra) # 80005a54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c28:	00000493          	li	s1,0
    80003c2c:	f99ff06f          	j	80003bc4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	5f850513          	addi	a0,a0,1528 # 80009228 <CONSOLE_STATUS+0x218>
    80003c38:	00002097          	auipc	ra,0x2
    80003c3c:	e1c080e7          	jalr	-484(ra) # 80005a54 <_Z11printStringPKc>
    finishedA = true;
    80003c40:	00100793          	li	a5,1
    80003c44:	00008717          	auipc	a4,0x8
    80003c48:	0af70623          	sb	a5,172(a4) # 8000bcf0 <_ZL9finishedA>
}
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	00013903          	ld	s2,0(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret

0000000080003c64 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c64:	fe010113          	addi	sp,sp,-32
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00913423          	sd	s1,8(sp)
    80003c74:	01213023          	sd	s2,0(sp)
    80003c78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c7c:	00000913          	li	s2,0
    80003c80:	0380006f          	j	80003cb8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c84:	ffffd097          	auipc	ra,0xffffd
    80003c88:	758080e7          	jalr	1880(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c8c:	00148493          	addi	s1,s1,1
    80003c90:	000027b7          	lui	a5,0x2
    80003c94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c98:	0097ee63          	bltu	a5,s1,80003cb4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c9c:	00000713          	li	a4,0
    80003ca0:	000077b7          	lui	a5,0x7
    80003ca4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ca8:	fce7eee3          	bltu	a5,a4,80003c84 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003cac:	00170713          	addi	a4,a4,1
    80003cb0:	ff1ff06f          	j	80003ca0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003cb4:	00190913          	addi	s2,s2,1
    80003cb8:	00f00793          	li	a5,15
    80003cbc:	0527e063          	bltu	a5,s2,80003cfc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	57850513          	addi	a0,a0,1400 # 80009238 <CONSOLE_STATUS+0x228>
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	d8c080e7          	jalr	-628(ra) # 80005a54 <_Z11printStringPKc>
    80003cd0:	00000613          	li	a2,0
    80003cd4:	00a00593          	li	a1,10
    80003cd8:	0009051b          	sext.w	a0,s2
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	f28080e7          	jalr	-216(ra) # 80005c04 <_Z8printIntiii>
    80003ce4:	00005517          	auipc	a0,0x5
    80003ce8:	79c50513          	addi	a0,a0,1948 # 80009480 <CONSOLE_STATUS+0x470>
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	d68080e7          	jalr	-664(ra) # 80005a54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003cf4:	00000493          	li	s1,0
    80003cf8:	f99ff06f          	j	80003c90 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003cfc:	00005517          	auipc	a0,0x5
    80003d00:	54450513          	addi	a0,a0,1348 # 80009240 <CONSOLE_STATUS+0x230>
    80003d04:	00002097          	auipc	ra,0x2
    80003d08:	d50080e7          	jalr	-688(ra) # 80005a54 <_Z11printStringPKc>
    finishedB = true;
    80003d0c:	00100793          	li	a5,1
    80003d10:	00008717          	auipc	a4,0x8
    80003d14:	fef700a3          	sb	a5,-31(a4) # 8000bcf1 <_ZL9finishedB>
    thread_dispatch();
    80003d18:	ffffd097          	auipc	ra,0xffffd
    80003d1c:	6c4080e7          	jalr	1732(ra) # 800013dc <_Z15thread_dispatchv>
}
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00813483          	ld	s1,8(sp)
    80003d2c:	00013903          	ld	s2,0(sp)
    80003d30:	02010113          	addi	sp,sp,32
    80003d34:	00008067          	ret

0000000080003d38 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003d38:	fe010113          	addi	sp,sp,-32
    80003d3c:	00113c23          	sd	ra,24(sp)
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00913423          	sd	s1,8(sp)
    80003d48:	01213023          	sd	s2,0(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d50:	00000493          	li	s1,0
    80003d54:	0400006f          	j	80003d94 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d58:	00005517          	auipc	a0,0x5
    80003d5c:	4f850513          	addi	a0,a0,1272 # 80009250 <CONSOLE_STATUS+0x240>
    80003d60:	00002097          	auipc	ra,0x2
    80003d64:	cf4080e7          	jalr	-780(ra) # 80005a54 <_Z11printStringPKc>
    80003d68:	00000613          	li	a2,0
    80003d6c:	00a00593          	li	a1,10
    80003d70:	00048513          	mv	a0,s1
    80003d74:	00002097          	auipc	ra,0x2
    80003d78:	e90080e7          	jalr	-368(ra) # 80005c04 <_Z8printIntiii>
    80003d7c:	00005517          	auipc	a0,0x5
    80003d80:	70450513          	addi	a0,a0,1796 # 80009480 <CONSOLE_STATUS+0x470>
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	cd0080e7          	jalr	-816(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d8c:	0014849b          	addiw	s1,s1,1
    80003d90:	0ff4f493          	andi	s1,s1,255
    80003d94:	00200793          	li	a5,2
    80003d98:	fc97f0e3          	bgeu	a5,s1,80003d58 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003d9c:	00005517          	auipc	a0,0x5
    80003da0:	4bc50513          	addi	a0,a0,1212 # 80009258 <CONSOLE_STATUS+0x248>
    80003da4:	00002097          	auipc	ra,0x2
    80003da8:	cb0080e7          	jalr	-848(ra) # 80005a54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003dac:	00700313          	li	t1,7
    thread_dispatch();
    80003db0:	ffffd097          	auipc	ra,0xffffd
    80003db4:	62c080e7          	jalr	1580(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003db8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003dbc:	00005517          	auipc	a0,0x5
    80003dc0:	4ac50513          	addi	a0,a0,1196 # 80009268 <CONSOLE_STATUS+0x258>
    80003dc4:	00002097          	auipc	ra,0x2
    80003dc8:	c90080e7          	jalr	-880(ra) # 80005a54 <_Z11printStringPKc>
    80003dcc:	00000613          	li	a2,0
    80003dd0:	00a00593          	li	a1,10
    80003dd4:	0009051b          	sext.w	a0,s2
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	e2c080e7          	jalr	-468(ra) # 80005c04 <_Z8printIntiii>
    80003de0:	00005517          	auipc	a0,0x5
    80003de4:	6a050513          	addi	a0,a0,1696 # 80009480 <CONSOLE_STATUS+0x470>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	c6c080e7          	jalr	-916(ra) # 80005a54 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003df0:	00c00513          	li	a0,12
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	d30080e7          	jalr	-720(ra) # 80003b24 <_ZL9fibonaccim>
    80003dfc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	47050513          	addi	a0,a0,1136 # 80009270 <CONSOLE_STATUS+0x260>
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	c4c080e7          	jalr	-948(ra) # 80005a54 <_Z11printStringPKc>
    80003e10:	00000613          	li	a2,0
    80003e14:	00a00593          	li	a1,10
    80003e18:	0009051b          	sext.w	a0,s2
    80003e1c:	00002097          	auipc	ra,0x2
    80003e20:	de8080e7          	jalr	-536(ra) # 80005c04 <_Z8printIntiii>
    80003e24:	00005517          	auipc	a0,0x5
    80003e28:	65c50513          	addi	a0,a0,1628 # 80009480 <CONSOLE_STATUS+0x470>
    80003e2c:	00002097          	auipc	ra,0x2
    80003e30:	c28080e7          	jalr	-984(ra) # 80005a54 <_Z11printStringPKc>
    80003e34:	0400006f          	j	80003e74 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003e38:	00005517          	auipc	a0,0x5
    80003e3c:	41850513          	addi	a0,a0,1048 # 80009250 <CONSOLE_STATUS+0x240>
    80003e40:	00002097          	auipc	ra,0x2
    80003e44:	c14080e7          	jalr	-1004(ra) # 80005a54 <_Z11printStringPKc>
    80003e48:	00000613          	li	a2,0
    80003e4c:	00a00593          	li	a1,10
    80003e50:	00048513          	mv	a0,s1
    80003e54:	00002097          	auipc	ra,0x2
    80003e58:	db0080e7          	jalr	-592(ra) # 80005c04 <_Z8printIntiii>
    80003e5c:	00005517          	auipc	a0,0x5
    80003e60:	62450513          	addi	a0,a0,1572 # 80009480 <CONSOLE_STATUS+0x470>
    80003e64:	00002097          	auipc	ra,0x2
    80003e68:	bf0080e7          	jalr	-1040(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e6c:	0014849b          	addiw	s1,s1,1
    80003e70:	0ff4f493          	andi	s1,s1,255
    80003e74:	00500793          	li	a5,5
    80003e78:	fc97f0e3          	bgeu	a5,s1,80003e38 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003e7c:	00005517          	auipc	a0,0x5
    80003e80:	3ac50513          	addi	a0,a0,940 # 80009228 <CONSOLE_STATUS+0x218>
    80003e84:	00002097          	auipc	ra,0x2
    80003e88:	bd0080e7          	jalr	-1072(ra) # 80005a54 <_Z11printStringPKc>
    finishedC = true;
    80003e8c:	00100793          	li	a5,1
    80003e90:	00008717          	auipc	a4,0x8
    80003e94:	e6f70123          	sb	a5,-414(a4) # 8000bcf2 <_ZL9finishedC>
    thread_dispatch();
    80003e98:	ffffd097          	auipc	ra,0xffffd
    80003e9c:	544080e7          	jalr	1348(ra) # 800013dc <_Z15thread_dispatchv>
}
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	00013903          	ld	s2,0(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret

0000000080003eb8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003eb8:	fe010113          	addi	sp,sp,-32
    80003ebc:	00113c23          	sd	ra,24(sp)
    80003ec0:	00813823          	sd	s0,16(sp)
    80003ec4:	00913423          	sd	s1,8(sp)
    80003ec8:	01213023          	sd	s2,0(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ed0:	00a00493          	li	s1,10
    80003ed4:	0400006f          	j	80003f14 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	3a850513          	addi	a0,a0,936 # 80009280 <CONSOLE_STATUS+0x270>
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	b74080e7          	jalr	-1164(ra) # 80005a54 <_Z11printStringPKc>
    80003ee8:	00000613          	li	a2,0
    80003eec:	00a00593          	li	a1,10
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00002097          	auipc	ra,0x2
    80003ef8:	d10080e7          	jalr	-752(ra) # 80005c04 <_Z8printIntiii>
    80003efc:	00005517          	auipc	a0,0x5
    80003f00:	58450513          	addi	a0,a0,1412 # 80009480 <CONSOLE_STATUS+0x470>
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	b50080e7          	jalr	-1200(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003f0c:	0014849b          	addiw	s1,s1,1
    80003f10:	0ff4f493          	andi	s1,s1,255
    80003f14:	00c00793          	li	a5,12
    80003f18:	fc97f0e3          	bgeu	a5,s1,80003ed8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003f1c:	00005517          	auipc	a0,0x5
    80003f20:	36c50513          	addi	a0,a0,876 # 80009288 <CONSOLE_STATUS+0x278>
    80003f24:	00002097          	auipc	ra,0x2
    80003f28:	b30080e7          	jalr	-1232(ra) # 80005a54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003f2c:	00500313          	li	t1,5
    thread_dispatch();
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	4ac080e7          	jalr	1196(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003f38:	01000513          	li	a0,16
    80003f3c:	00000097          	auipc	ra,0x0
    80003f40:	be8080e7          	jalr	-1048(ra) # 80003b24 <_ZL9fibonaccim>
    80003f44:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003f48:	00005517          	auipc	a0,0x5
    80003f4c:	35050513          	addi	a0,a0,848 # 80009298 <CONSOLE_STATUS+0x288>
    80003f50:	00002097          	auipc	ra,0x2
    80003f54:	b04080e7          	jalr	-1276(ra) # 80005a54 <_Z11printStringPKc>
    80003f58:	00000613          	li	a2,0
    80003f5c:	00a00593          	li	a1,10
    80003f60:	0009051b          	sext.w	a0,s2
    80003f64:	00002097          	auipc	ra,0x2
    80003f68:	ca0080e7          	jalr	-864(ra) # 80005c04 <_Z8printIntiii>
    80003f6c:	00005517          	auipc	a0,0x5
    80003f70:	51450513          	addi	a0,a0,1300 # 80009480 <CONSOLE_STATUS+0x470>
    80003f74:	00002097          	auipc	ra,0x2
    80003f78:	ae0080e7          	jalr	-1312(ra) # 80005a54 <_Z11printStringPKc>
    80003f7c:	0400006f          	j	80003fbc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f80:	00005517          	auipc	a0,0x5
    80003f84:	30050513          	addi	a0,a0,768 # 80009280 <CONSOLE_STATUS+0x270>
    80003f88:	00002097          	auipc	ra,0x2
    80003f8c:	acc080e7          	jalr	-1332(ra) # 80005a54 <_Z11printStringPKc>
    80003f90:	00000613          	li	a2,0
    80003f94:	00a00593          	li	a1,10
    80003f98:	00048513          	mv	a0,s1
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	c68080e7          	jalr	-920(ra) # 80005c04 <_Z8printIntiii>
    80003fa4:	00005517          	auipc	a0,0x5
    80003fa8:	4dc50513          	addi	a0,a0,1244 # 80009480 <CONSOLE_STATUS+0x470>
    80003fac:	00002097          	auipc	ra,0x2
    80003fb0:	aa8080e7          	jalr	-1368(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003fb4:	0014849b          	addiw	s1,s1,1
    80003fb8:	0ff4f493          	andi	s1,s1,255
    80003fbc:	00f00793          	li	a5,15
    80003fc0:	fc97f0e3          	bgeu	a5,s1,80003f80 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003fc4:	00005517          	auipc	a0,0x5
    80003fc8:	2e450513          	addi	a0,a0,740 # 800092a8 <CONSOLE_STATUS+0x298>
    80003fcc:	00002097          	auipc	ra,0x2
    80003fd0:	a88080e7          	jalr	-1400(ra) # 80005a54 <_Z11printStringPKc>
    finishedD = true;
    80003fd4:	00100793          	li	a5,1
    80003fd8:	00008717          	auipc	a4,0x8
    80003fdc:	d0f70da3          	sb	a5,-741(a4) # 8000bcf3 <_ZL9finishedD>
    thread_dispatch();
    80003fe0:	ffffd097          	auipc	ra,0xffffd
    80003fe4:	3fc080e7          	jalr	1020(ra) # 800013dc <_Z15thread_dispatchv>
}
    80003fe8:	01813083          	ld	ra,24(sp)
    80003fec:	01013403          	ld	s0,16(sp)
    80003ff0:	00813483          	ld	s1,8(sp)
    80003ff4:	00013903          	ld	s2,0(sp)
    80003ff8:	02010113          	addi	sp,sp,32
    80003ffc:	00008067          	ret

0000000080004000 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004000:	fc010113          	addi	sp,sp,-64
    80004004:	02113c23          	sd	ra,56(sp)
    80004008:	02813823          	sd	s0,48(sp)
    8000400c:	02913423          	sd	s1,40(sp)
    80004010:	03213023          	sd	s2,32(sp)
    80004014:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004018:	02000513          	li	a0,32
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	22c080e7          	jalr	556(ra) # 80002248 <_Znwm>
    80004024:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	3b0080e7          	jalr	944(ra) # 800023d8 <_ZN6ThreadC1Ev>
    80004030:	00008797          	auipc	a5,0x8
    80004034:	9e078793          	addi	a5,a5,-1568 # 8000ba10 <_ZTV7WorkerA+0x10>
    80004038:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000403c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004040:	00005517          	auipc	a0,0x5
    80004044:	27850513          	addi	a0,a0,632 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	a0c080e7          	jalr	-1524(ra) # 80005a54 <_Z11printStringPKc>
    threads[1] = new WorkerB();
    80004050:	02000513          	li	a0,32
    80004054:	ffffe097          	auipc	ra,0xffffe
    80004058:	1f4080e7          	jalr	500(ra) # 80002248 <_Znwm>
    8000405c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	378080e7          	jalr	888(ra) # 800023d8 <_ZN6ThreadC1Ev>
    80004068:	00008797          	auipc	a5,0x8
    8000406c:	9d078793          	addi	a5,a5,-1584 # 8000ba38 <_ZTV7WorkerB+0x10>
    80004070:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004074:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004078:	00005517          	auipc	a0,0x5
    8000407c:	25850513          	addi	a0,a0,600 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004080:	00002097          	auipc	ra,0x2
    80004084:	9d4080e7          	jalr	-1580(ra) # 80005a54 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004088:	02000513          	li	a0,32
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	1bc080e7          	jalr	444(ra) # 80002248 <_Znwm>
    80004094:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	340080e7          	jalr	832(ra) # 800023d8 <_ZN6ThreadC1Ev>
    800040a0:	00008797          	auipc	a5,0x8
    800040a4:	9c078793          	addi	a5,a5,-1600 # 8000ba60 <_ZTV7WorkerC+0x10>
    800040a8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800040ac:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800040b0:	00005517          	auipc	a0,0x5
    800040b4:	23850513          	addi	a0,a0,568 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800040b8:	00002097          	auipc	ra,0x2
    800040bc:	99c080e7          	jalr	-1636(ra) # 80005a54 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800040c0:	02000513          	li	a0,32
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	184080e7          	jalr	388(ra) # 80002248 <_Znwm>
    800040cc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	308080e7          	jalr	776(ra) # 800023d8 <_ZN6ThreadC1Ev>
    800040d8:	00008797          	auipc	a5,0x8
    800040dc:	9b078793          	addi	a5,a5,-1616 # 8000ba88 <_ZTV7WorkerD+0x10>
    800040e0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800040e4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800040e8:	00005517          	auipc	a0,0x5
    800040ec:	21850513          	addi	a0,a0,536 # 80009300 <CONSOLE_STATUS+0x2f0>
    800040f0:	00002097          	auipc	ra,0x2
    800040f4:	964080e7          	jalr	-1692(ra) # 80005a54 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800040f8:	00000493          	li	s1,0
    800040fc:	00300793          	li	a5,3
    80004100:	0297c263          	blt	a5,s1,80004124 <_Z20Threads_CPP_API_testv+0x124>
        threads[i]->start();
    80004104:	00349793          	slli	a5,s1,0x3
    80004108:	fe040713          	addi	a4,s0,-32
    8000410c:	00f707b3          	add	a5,a4,a5
    80004110:	fe07b503          	ld	a0,-32(a5)
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	34c080e7          	jalr	844(ra) # 80002460 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000411c:	0014849b          	addiw	s1,s1,1
    80004120:	fddff06f          	j	800040fc <_Z20Threads_CPP_API_testv+0xfc>
    }

    printString("threads started");
    80004124:	00005517          	auipc	a0,0x5
    80004128:	1f450513          	addi	a0,a0,500 # 80009318 <CONSOLE_STATUS+0x308>
    8000412c:	00002097          	auipc	ra,0x2
    80004130:	928080e7          	jalr	-1752(ra) # 80005a54 <_Z11printStringPKc>
    80004134:	00c0006f          	j	80004140 <_Z20Threads_CPP_API_testv+0x140>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	300080e7          	jalr	768(ra) # 80002438 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004140:	00008797          	auipc	a5,0x8
    80004144:	bb07c783          	lbu	a5,-1104(a5) # 8000bcf0 <_ZL9finishedA>
    80004148:	fe0788e3          	beqz	a5,80004138 <_Z20Threads_CPP_API_testv+0x138>
    8000414c:	00008797          	auipc	a5,0x8
    80004150:	ba57c783          	lbu	a5,-1115(a5) # 8000bcf1 <_ZL9finishedB>
    80004154:	fe0782e3          	beqz	a5,80004138 <_Z20Threads_CPP_API_testv+0x138>
    80004158:	00008797          	auipc	a5,0x8
    8000415c:	b9a7c783          	lbu	a5,-1126(a5) # 8000bcf2 <_ZL9finishedC>
    80004160:	fc078ce3          	beqz	a5,80004138 <_Z20Threads_CPP_API_testv+0x138>
    80004164:	00008797          	auipc	a5,0x8
    80004168:	b8f7c783          	lbu	a5,-1137(a5) # 8000bcf3 <_ZL9finishedD>
    8000416c:	fc0786e3          	beqz	a5,80004138 <_Z20Threads_CPP_API_testv+0x138>
    80004170:	fc040493          	addi	s1,s0,-64
    80004174:	0080006f          	j	8000417c <_Z20Threads_CPP_API_testv+0x17c>
    }

    for (auto thread: threads) { delete thread; }
    80004178:	00848493          	addi	s1,s1,8
    8000417c:	fe040793          	addi	a5,s0,-32
    80004180:	08f48663          	beq	s1,a5,8000420c <_Z20Threads_CPP_API_testv+0x20c>
    80004184:	0004b503          	ld	a0,0(s1)
    80004188:	fe0508e3          	beqz	a0,80004178 <_Z20Threads_CPP_API_testv+0x178>
    8000418c:	00053783          	ld	a5,0(a0)
    80004190:	0087b783          	ld	a5,8(a5)
    80004194:	000780e7          	jalr	a5
    80004198:	fe1ff06f          	j	80004178 <_Z20Threads_CPP_API_testv+0x178>
    8000419c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800041a0:	00048513          	mv	a0,s1
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	11c080e7          	jalr	284(ra) # 800022c0 <_ZdlPv>
    800041ac:	00090513          	mv	a0,s2
    800041b0:	00009097          	auipc	ra,0x9
    800041b4:	c48080e7          	jalr	-952(ra) # 8000cdf8 <_Unwind_Resume>
    800041b8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800041bc:	00048513          	mv	a0,s1
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	100080e7          	jalr	256(ra) # 800022c0 <_ZdlPv>
    800041c8:	00090513          	mv	a0,s2
    800041cc:	00009097          	auipc	ra,0x9
    800041d0:	c2c080e7          	jalr	-980(ra) # 8000cdf8 <_Unwind_Resume>
    800041d4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800041d8:	00048513          	mv	a0,s1
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	0e4080e7          	jalr	228(ra) # 800022c0 <_ZdlPv>
    800041e4:	00090513          	mv	a0,s2
    800041e8:	00009097          	auipc	ra,0x9
    800041ec:	c10080e7          	jalr	-1008(ra) # 8000cdf8 <_Unwind_Resume>
    800041f0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800041f4:	00048513          	mv	a0,s1
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	0c8080e7          	jalr	200(ra) # 800022c0 <_ZdlPv>
    80004200:	00090513          	mv	a0,s2
    80004204:	00009097          	auipc	ra,0x9
    80004208:	bf4080e7          	jalr	-1036(ra) # 8000cdf8 <_Unwind_Resume>
}
    8000420c:	03813083          	ld	ra,56(sp)
    80004210:	03013403          	ld	s0,48(sp)
    80004214:	02813483          	ld	s1,40(sp)
    80004218:	02013903          	ld	s2,32(sp)
    8000421c:	04010113          	addi	sp,sp,64
    80004220:	00008067          	ret

0000000080004224 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
    80004234:	00007797          	auipc	a5,0x7
    80004238:	7dc78793          	addi	a5,a5,2012 # 8000ba10 <_ZTV7WorkerA+0x10>
    8000423c:	00f53023          	sd	a5,0(a0)
    80004240:	ffffe097          	auipc	ra,0xffffe
    80004244:	0a8080e7          	jalr	168(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004248:	00813083          	ld	ra,8(sp)
    8000424c:	00013403          	ld	s0,0(sp)
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret

0000000080004258 <_ZN7WorkerAD0Ev>:
    80004258:	fe010113          	addi	sp,sp,-32
    8000425c:	00113c23          	sd	ra,24(sp)
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00913423          	sd	s1,8(sp)
    80004268:	02010413          	addi	s0,sp,32
    8000426c:	00050493          	mv	s1,a0
    80004270:	00007797          	auipc	a5,0x7
    80004274:	7a078793          	addi	a5,a5,1952 # 8000ba10 <_ZTV7WorkerA+0x10>
    80004278:	00f53023          	sd	a5,0(a0)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	06c080e7          	jalr	108(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004284:	00048513          	mv	a0,s1
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	038080e7          	jalr	56(ra) # 800022c0 <_ZdlPv>
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	00813483          	ld	s1,8(sp)
    8000429c:	02010113          	addi	sp,sp,32
    800042a0:	00008067          	ret

00000000800042a4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800042a4:	ff010113          	addi	sp,sp,-16
    800042a8:	00113423          	sd	ra,8(sp)
    800042ac:	00813023          	sd	s0,0(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	00007797          	auipc	a5,0x7
    800042b8:	78478793          	addi	a5,a5,1924 # 8000ba38 <_ZTV7WorkerB+0x10>
    800042bc:	00f53023          	sd	a5,0(a0)
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	028080e7          	jalr	40(ra) # 800022e8 <_ZN6ThreadD1Ev>
    800042c8:	00813083          	ld	ra,8(sp)
    800042cc:	00013403          	ld	s0,0(sp)
    800042d0:	01010113          	addi	sp,sp,16
    800042d4:	00008067          	ret

00000000800042d8 <_ZN7WorkerBD0Ev>:
    800042d8:	fe010113          	addi	sp,sp,-32
    800042dc:	00113c23          	sd	ra,24(sp)
    800042e0:	00813823          	sd	s0,16(sp)
    800042e4:	00913423          	sd	s1,8(sp)
    800042e8:	02010413          	addi	s0,sp,32
    800042ec:	00050493          	mv	s1,a0
    800042f0:	00007797          	auipc	a5,0x7
    800042f4:	74878793          	addi	a5,a5,1864 # 8000ba38 <_ZTV7WorkerB+0x10>
    800042f8:	00f53023          	sd	a5,0(a0)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	fec080e7          	jalr	-20(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004304:	00048513          	mv	a0,s1
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	fb8080e7          	jalr	-72(ra) # 800022c0 <_ZdlPv>
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret

0000000080004324 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00113423          	sd	ra,8(sp)
    8000432c:	00813023          	sd	s0,0(sp)
    80004330:	01010413          	addi	s0,sp,16
    80004334:	00007797          	auipc	a5,0x7
    80004338:	72c78793          	addi	a5,a5,1836 # 8000ba60 <_ZTV7WorkerC+0x10>
    8000433c:	00f53023          	sd	a5,0(a0)
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	fa8080e7          	jalr	-88(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004348:	00813083          	ld	ra,8(sp)
    8000434c:	00013403          	ld	s0,0(sp)
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret

0000000080004358 <_ZN7WorkerCD0Ev>:
    80004358:	fe010113          	addi	sp,sp,-32
    8000435c:	00113c23          	sd	ra,24(sp)
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00913423          	sd	s1,8(sp)
    80004368:	02010413          	addi	s0,sp,32
    8000436c:	00050493          	mv	s1,a0
    80004370:	00007797          	auipc	a5,0x7
    80004374:	6f078793          	addi	a5,a5,1776 # 8000ba60 <_ZTV7WorkerC+0x10>
    80004378:	00f53023          	sd	a5,0(a0)
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	f6c080e7          	jalr	-148(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004384:	00048513          	mv	a0,s1
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	f38080e7          	jalr	-200(ra) # 800022c0 <_ZdlPv>
    80004390:	01813083          	ld	ra,24(sp)
    80004394:	01013403          	ld	s0,16(sp)
    80004398:	00813483          	ld	s1,8(sp)
    8000439c:	02010113          	addi	sp,sp,32
    800043a0:	00008067          	ret

00000000800043a4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800043a4:	ff010113          	addi	sp,sp,-16
    800043a8:	00113423          	sd	ra,8(sp)
    800043ac:	00813023          	sd	s0,0(sp)
    800043b0:	01010413          	addi	s0,sp,16
    800043b4:	00007797          	auipc	a5,0x7
    800043b8:	6d478793          	addi	a5,a5,1748 # 8000ba88 <_ZTV7WorkerD+0x10>
    800043bc:	00f53023          	sd	a5,0(a0)
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	f28080e7          	jalr	-216(ra) # 800022e8 <_ZN6ThreadD1Ev>
    800043c8:	00813083          	ld	ra,8(sp)
    800043cc:	00013403          	ld	s0,0(sp)
    800043d0:	01010113          	addi	sp,sp,16
    800043d4:	00008067          	ret

00000000800043d8 <_ZN7WorkerDD0Ev>:
    800043d8:	fe010113          	addi	sp,sp,-32
    800043dc:	00113c23          	sd	ra,24(sp)
    800043e0:	00813823          	sd	s0,16(sp)
    800043e4:	00913423          	sd	s1,8(sp)
    800043e8:	02010413          	addi	s0,sp,32
    800043ec:	00050493          	mv	s1,a0
    800043f0:	00007797          	auipc	a5,0x7
    800043f4:	69878793          	addi	a5,a5,1688 # 8000ba88 <_ZTV7WorkerD+0x10>
    800043f8:	00f53023          	sd	a5,0(a0)
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	eec080e7          	jalr	-276(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004404:	00048513          	mv	a0,s1
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	eb8080e7          	jalr	-328(ra) # 800022c0 <_ZdlPv>
    80004410:	01813083          	ld	ra,24(sp)
    80004414:	01013403          	ld	s0,16(sp)
    80004418:	00813483          	ld	s1,8(sp)
    8000441c:	02010113          	addi	sp,sp,32
    80004420:	00008067          	ret

0000000080004424 <_ZN7WorkerA3runEv>:
    void run() override {
    80004424:	ff010113          	addi	sp,sp,-16
    80004428:	00113423          	sd	ra,8(sp)
    8000442c:	00813023          	sd	s0,0(sp)
    80004430:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004434:	00000593          	li	a1,0
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	760080e7          	jalr	1888(ra) # 80003b98 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004440:	00813083          	ld	ra,8(sp)
    80004444:	00013403          	ld	s0,0(sp)
    80004448:	01010113          	addi	sp,sp,16
    8000444c:	00008067          	ret

0000000080004450 <_ZN7WorkerB3runEv>:
    void run() override {
    80004450:	ff010113          	addi	sp,sp,-16
    80004454:	00113423          	sd	ra,8(sp)
    80004458:	00813023          	sd	s0,0(sp)
    8000445c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004460:	00000593          	li	a1,0
    80004464:	00000097          	auipc	ra,0x0
    80004468:	800080e7          	jalr	-2048(ra) # 80003c64 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000446c:	00813083          	ld	ra,8(sp)
    80004470:	00013403          	ld	s0,0(sp)
    80004474:	01010113          	addi	sp,sp,16
    80004478:	00008067          	ret

000000008000447c <_ZN7WorkerC3runEv>:
    void run() override {
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00113423          	sd	ra,8(sp)
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000448c:	00000593          	li	a1,0
    80004490:	00000097          	auipc	ra,0x0
    80004494:	8a8080e7          	jalr	-1880(ra) # 80003d38 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004498:	00813083          	ld	ra,8(sp)
    8000449c:	00013403          	ld	s0,0(sp)
    800044a0:	01010113          	addi	sp,sp,16
    800044a4:	00008067          	ret

00000000800044a8 <_ZN7WorkerD3runEv>:
    void run() override {
    800044a8:	ff010113          	addi	sp,sp,-16
    800044ac:	00113423          	sd	ra,8(sp)
    800044b0:	00813023          	sd	s0,0(sp)
    800044b4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800044b8:	00000593          	li	a1,0
    800044bc:	00000097          	auipc	ra,0x0
    800044c0:	9fc080e7          	jalr	-1540(ra) # 80003eb8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800044c4:	00813083          	ld	ra,8(sp)
    800044c8:	00013403          	ld	s0,0(sp)
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00008067          	ret

00000000800044d4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800044d4:	f8010113          	addi	sp,sp,-128
    800044d8:	06113c23          	sd	ra,120(sp)
    800044dc:	06813823          	sd	s0,112(sp)
    800044e0:	06913423          	sd	s1,104(sp)
    800044e4:	07213023          	sd	s2,96(sp)
    800044e8:	05313c23          	sd	s3,88(sp)
    800044ec:	05413823          	sd	s4,80(sp)
    800044f0:	05513423          	sd	s5,72(sp)
    800044f4:	05613023          	sd	s6,64(sp)
    800044f8:	03713c23          	sd	s7,56(sp)
    800044fc:	03813823          	sd	s8,48(sp)
    80004500:	03913423          	sd	s9,40(sp)
    80004504:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004508:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000450c:	00005517          	auipc	a0,0x5
    80004510:	c2c50513          	addi	a0,a0,-980 # 80009138 <CONSOLE_STATUS+0x128>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	540080e7          	jalr	1344(ra) # 80005a54 <_Z11printStringPKc>
    getString(input, 30);
    8000451c:	01e00593          	li	a1,30
    80004520:	f8040493          	addi	s1,s0,-128
    80004524:	00048513          	mv	a0,s1
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	5b4080e7          	jalr	1460(ra) # 80005adc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004530:	00048513          	mv	a0,s1
    80004534:	00001097          	auipc	ra,0x1
    80004538:	680080e7          	jalr	1664(ra) # 80005bb4 <_Z11stringToIntPKc>
    8000453c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004540:	00005517          	auipc	a0,0x5
    80004544:	c1850513          	addi	a0,a0,-1000 # 80009158 <CONSOLE_STATUS+0x148>
    80004548:	00001097          	auipc	ra,0x1
    8000454c:	50c080e7          	jalr	1292(ra) # 80005a54 <_Z11printStringPKc>
    getString(input, 30);
    80004550:	01e00593          	li	a1,30
    80004554:	00048513          	mv	a0,s1
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	584080e7          	jalr	1412(ra) # 80005adc <_Z9getStringPci>
    n = stringToInt(input);
    80004560:	00048513          	mv	a0,s1
    80004564:	00001097          	auipc	ra,0x1
    80004568:	650080e7          	jalr	1616(ra) # 80005bb4 <_Z11stringToIntPKc>
    8000456c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004570:	00005517          	auipc	a0,0x5
    80004574:	c0850513          	addi	a0,a0,-1016 # 80009178 <CONSOLE_STATUS+0x168>
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	4dc080e7          	jalr	1244(ra) # 80005a54 <_Z11printStringPKc>
    printInt(threadNum);
    80004580:	00000613          	li	a2,0
    80004584:	00a00593          	li	a1,10
    80004588:	00098513          	mv	a0,s3
    8000458c:	00001097          	auipc	ra,0x1
    80004590:	678080e7          	jalr	1656(ra) # 80005c04 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004594:	00005517          	auipc	a0,0x5
    80004598:	bfc50513          	addi	a0,a0,-1028 # 80009190 <CONSOLE_STATUS+0x180>
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	4b8080e7          	jalr	1208(ra) # 80005a54 <_Z11printStringPKc>
    printInt(n);
    800045a4:	00000613          	li	a2,0
    800045a8:	00a00593          	li	a1,10
    800045ac:	00048513          	mv	a0,s1
    800045b0:	00001097          	auipc	ra,0x1
    800045b4:	654080e7          	jalr	1620(ra) # 80005c04 <_Z8printIntiii>
    printString(".\n");
    800045b8:	00005517          	auipc	a0,0x5
    800045bc:	bf050513          	addi	a0,a0,-1040 # 800091a8 <CONSOLE_STATUS+0x198>
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	494080e7          	jalr	1172(ra) # 80005a54 <_Z11printStringPKc>
    if (threadNum > n) {
    800045c8:	0334c463          	blt	s1,s3,800045f0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800045cc:	03305c63          	blez	s3,80004604 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800045d0:	03800513          	li	a0,56
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	c74080e7          	jalr	-908(ra) # 80002248 <_Znwm>
    800045dc:	00050a93          	mv	s5,a0
    800045e0:	00048593          	mv	a1,s1
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	740080e7          	jalr	1856(ra) # 80005d24 <_ZN9BufferCPPC1Ei>
    800045ec:	0300006f          	j	8000461c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800045f0:	00005517          	auipc	a0,0x5
    800045f4:	bc050513          	addi	a0,a0,-1088 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	45c080e7          	jalr	1116(ra) # 80005a54 <_Z11printStringPKc>
        return;
    80004600:	0140006f          	j	80004614 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004604:	00005517          	auipc	a0,0x5
    80004608:	bec50513          	addi	a0,a0,-1044 # 800091f0 <CONSOLE_STATUS+0x1e0>
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	448080e7          	jalr	1096(ra) # 80005a54 <_Z11printStringPKc>
        return;
    80004614:	000c0113          	mv	sp,s8
    80004618:	2140006f          	j	8000482c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000461c:	01000513          	li	a0,16
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	c28080e7          	jalr	-984(ra) # 80002248 <_Znwm>
    80004628:	00050913          	mv	s2,a0
    8000462c:	00000593          	li	a1,0
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	e64080e7          	jalr	-412(ra) # 80002494 <_ZN9SemaphoreC1Ej>
    80004638:	00007797          	auipc	a5,0x7
    8000463c:	6d27b423          	sd	s2,1736(a5) # 8000bd00 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004640:	00399793          	slli	a5,s3,0x3
    80004644:	00f78793          	addi	a5,a5,15
    80004648:	ff07f793          	andi	a5,a5,-16
    8000464c:	40f10133          	sub	sp,sp,a5
    80004650:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004654:	0019871b          	addiw	a4,s3,1
    80004658:	00171793          	slli	a5,a4,0x1
    8000465c:	00e787b3          	add	a5,a5,a4
    80004660:	00379793          	slli	a5,a5,0x3
    80004664:	00f78793          	addi	a5,a5,15
    80004668:	ff07f793          	andi	a5,a5,-16
    8000466c:	40f10133          	sub	sp,sp,a5
    80004670:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004674:	00199493          	slli	s1,s3,0x1
    80004678:	013484b3          	add	s1,s1,s3
    8000467c:	00349493          	slli	s1,s1,0x3
    80004680:	009b04b3          	add	s1,s6,s1
    80004684:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004688:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000468c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004690:	02800513          	li	a0,40
    80004694:	ffffe097          	auipc	ra,0xffffe
    80004698:	bb4080e7          	jalr	-1100(ra) # 80002248 <_Znwm>
    8000469c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800046a0:	ffffe097          	auipc	ra,0xffffe
    800046a4:	d38080e7          	jalr	-712(ra) # 800023d8 <_ZN6ThreadC1Ev>
    800046a8:	00007797          	auipc	a5,0x7
    800046ac:	45878793          	addi	a5,a5,1112 # 8000bb00 <_ZTV8Consumer+0x10>
    800046b0:	00fbb023          	sd	a5,0(s7)
    800046b4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800046b8:	000b8513          	mv	a0,s7
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	da4080e7          	jalr	-604(ra) # 80002460 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800046c4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800046c8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800046cc:	00007797          	auipc	a5,0x7
    800046d0:	6347b783          	ld	a5,1588(a5) # 8000bd00 <_ZL10waitForAll>
    800046d4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046d8:	02800513          	li	a0,40
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	b6c080e7          	jalr	-1172(ra) # 80002248 <_Znwm>
    800046e4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800046e8:	ffffe097          	auipc	ra,0xffffe
    800046ec:	cf0080e7          	jalr	-784(ra) # 800023d8 <_ZN6ThreadC1Ev>
    800046f0:	00007797          	auipc	a5,0x7
    800046f4:	3c078793          	addi	a5,a5,960 # 8000bab0 <_ZTV16ProducerKeyborad+0x10>
    800046f8:	00f4b023          	sd	a5,0(s1)
    800046fc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004700:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004704:	00048513          	mv	a0,s1
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	d58080e7          	jalr	-680(ra) # 80002460 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004710:	00100913          	li	s2,1
    80004714:	0300006f          	j	80004744 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004718:	00007797          	auipc	a5,0x7
    8000471c:	3c078793          	addi	a5,a5,960 # 8000bad8 <_ZTV8Producer+0x10>
    80004720:	00fcb023          	sd	a5,0(s9)
    80004724:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004728:	00391793          	slli	a5,s2,0x3
    8000472c:	00fa07b3          	add	a5,s4,a5
    80004730:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004734:	000c8513          	mv	a0,s9
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	d28080e7          	jalr	-728(ra) # 80002460 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004740:	0019091b          	addiw	s2,s2,1
    80004744:	05395263          	bge	s2,s3,80004788 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004748:	00191493          	slli	s1,s2,0x1
    8000474c:	012484b3          	add	s1,s1,s2
    80004750:	00349493          	slli	s1,s1,0x3
    80004754:	009b04b3          	add	s1,s6,s1
    80004758:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000475c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004760:	00007797          	auipc	a5,0x7
    80004764:	5a07b783          	ld	a5,1440(a5) # 8000bd00 <_ZL10waitForAll>
    80004768:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000476c:	02800513          	li	a0,40
    80004770:	ffffe097          	auipc	ra,0xffffe
    80004774:	ad8080e7          	jalr	-1320(ra) # 80002248 <_Znwm>
    80004778:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000477c:	ffffe097          	auipc	ra,0xffffe
    80004780:	c5c080e7          	jalr	-932(ra) # 800023d8 <_ZN6ThreadC1Ev>
    80004784:	f95ff06f          	j	80004718 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004788:	ffffe097          	auipc	ra,0xffffe
    8000478c:	cb0080e7          	jalr	-848(ra) # 80002438 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004790:	00000493          	li	s1,0
    80004794:	0099ce63          	blt	s3,s1,800047b0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004798:	00007517          	auipc	a0,0x7
    8000479c:	56853503          	ld	a0,1384(a0) # 8000bd00 <_ZL10waitForAll>
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	d30080e7          	jalr	-720(ra) # 800024d0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800047a8:	0014849b          	addiw	s1,s1,1
    800047ac:	fe9ff06f          	j	80004794 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800047b0:	00007517          	auipc	a0,0x7
    800047b4:	55053503          	ld	a0,1360(a0) # 8000bd00 <_ZL10waitForAll>
    800047b8:	00050863          	beqz	a0,800047c8 <_Z20testConsumerProducerv+0x2f4>
    800047bc:	00053783          	ld	a5,0(a0)
    800047c0:	0087b783          	ld	a5,8(a5)
    800047c4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800047c8:	00000493          	li	s1,0
    800047cc:	0080006f          	j	800047d4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800047d0:	0014849b          	addiw	s1,s1,1
    800047d4:	0334d263          	bge	s1,s3,800047f8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800047d8:	00349793          	slli	a5,s1,0x3
    800047dc:	00fa07b3          	add	a5,s4,a5
    800047e0:	0007b503          	ld	a0,0(a5)
    800047e4:	fe0506e3          	beqz	a0,800047d0 <_Z20testConsumerProducerv+0x2fc>
    800047e8:	00053783          	ld	a5,0(a0)
    800047ec:	0087b783          	ld	a5,8(a5)
    800047f0:	000780e7          	jalr	a5
    800047f4:	fddff06f          	j	800047d0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800047f8:	000b8a63          	beqz	s7,8000480c <_Z20testConsumerProducerv+0x338>
    800047fc:	000bb783          	ld	a5,0(s7)
    80004800:	0087b783          	ld	a5,8(a5)
    80004804:	000b8513          	mv	a0,s7
    80004808:	000780e7          	jalr	a5
    delete buffer;
    8000480c:	000a8e63          	beqz	s5,80004828 <_Z20testConsumerProducerv+0x354>
    80004810:	000a8513          	mv	a0,s5
    80004814:	00002097          	auipc	ra,0x2
    80004818:	808080e7          	jalr	-2040(ra) # 8000601c <_ZN9BufferCPPD1Ev>
    8000481c:	000a8513          	mv	a0,s5
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	aa0080e7          	jalr	-1376(ra) # 800022c0 <_ZdlPv>
    80004828:	000c0113          	mv	sp,s8
}
    8000482c:	f8040113          	addi	sp,s0,-128
    80004830:	07813083          	ld	ra,120(sp)
    80004834:	07013403          	ld	s0,112(sp)
    80004838:	06813483          	ld	s1,104(sp)
    8000483c:	06013903          	ld	s2,96(sp)
    80004840:	05813983          	ld	s3,88(sp)
    80004844:	05013a03          	ld	s4,80(sp)
    80004848:	04813a83          	ld	s5,72(sp)
    8000484c:	04013b03          	ld	s6,64(sp)
    80004850:	03813b83          	ld	s7,56(sp)
    80004854:	03013c03          	ld	s8,48(sp)
    80004858:	02813c83          	ld	s9,40(sp)
    8000485c:	08010113          	addi	sp,sp,128
    80004860:	00008067          	ret
    80004864:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004868:	000a8513          	mv	a0,s5
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	a54080e7          	jalr	-1452(ra) # 800022c0 <_ZdlPv>
    80004874:	00048513          	mv	a0,s1
    80004878:	00008097          	auipc	ra,0x8
    8000487c:	580080e7          	jalr	1408(ra) # 8000cdf8 <_Unwind_Resume>
    80004880:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004884:	00090513          	mv	a0,s2
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	a38080e7          	jalr	-1480(ra) # 800022c0 <_ZdlPv>
    80004890:	00048513          	mv	a0,s1
    80004894:	00008097          	auipc	ra,0x8
    80004898:	564080e7          	jalr	1380(ra) # 8000cdf8 <_Unwind_Resume>
    8000489c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800048a0:	000b8513          	mv	a0,s7
    800048a4:	ffffe097          	auipc	ra,0xffffe
    800048a8:	a1c080e7          	jalr	-1508(ra) # 800022c0 <_ZdlPv>
    800048ac:	00048513          	mv	a0,s1
    800048b0:	00008097          	auipc	ra,0x8
    800048b4:	548080e7          	jalr	1352(ra) # 8000cdf8 <_Unwind_Resume>
    800048b8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048bc:	00048513          	mv	a0,s1
    800048c0:	ffffe097          	auipc	ra,0xffffe
    800048c4:	a00080e7          	jalr	-1536(ra) # 800022c0 <_ZdlPv>
    800048c8:	00090513          	mv	a0,s2
    800048cc:	00008097          	auipc	ra,0x8
    800048d0:	52c080e7          	jalr	1324(ra) # 8000cdf8 <_Unwind_Resume>
    800048d4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800048d8:	000c8513          	mv	a0,s9
    800048dc:	ffffe097          	auipc	ra,0xffffe
    800048e0:	9e4080e7          	jalr	-1564(ra) # 800022c0 <_ZdlPv>
    800048e4:	00048513          	mv	a0,s1
    800048e8:	00008097          	auipc	ra,0x8
    800048ec:	510080e7          	jalr	1296(ra) # 8000cdf8 <_Unwind_Resume>

00000000800048f0 <_ZN8Consumer3runEv>:
    void run() override {
    800048f0:	fd010113          	addi	sp,sp,-48
    800048f4:	02113423          	sd	ra,40(sp)
    800048f8:	02813023          	sd	s0,32(sp)
    800048fc:	00913c23          	sd	s1,24(sp)
    80004900:	01213823          	sd	s2,16(sp)
    80004904:	01313423          	sd	s3,8(sp)
    80004908:	03010413          	addi	s0,sp,48
    8000490c:	00050913          	mv	s2,a0
        int i = 0;
    80004910:	00000993          	li	s3,0
    80004914:	0100006f          	j	80004924 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004918:	00a00513          	li	a0,10
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	cc8080e7          	jalr	-824(ra) # 800025e4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004924:	00007797          	auipc	a5,0x7
    80004928:	3d47a783          	lw	a5,980(a5) # 8000bcf8 <_ZL9threadEnd>
    8000492c:	04079a63          	bnez	a5,80004980 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004930:	02093783          	ld	a5,32(s2)
    80004934:	0087b503          	ld	a0,8(a5)
    80004938:	00001097          	auipc	ra,0x1
    8000493c:	5d0080e7          	jalr	1488(ra) # 80005f08 <_ZN9BufferCPP3getEv>
            i++;
    80004940:	0019849b          	addiw	s1,s3,1
    80004944:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004948:	0ff57513          	andi	a0,a0,255
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	c98080e7          	jalr	-872(ra) # 800025e4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004954:	05000793          	li	a5,80
    80004958:	02f4e4bb          	remw	s1,s1,a5
    8000495c:	fc0494e3          	bnez	s1,80004924 <_ZN8Consumer3runEv+0x34>
    80004960:	fb9ff06f          	j	80004918 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004964:	02093783          	ld	a5,32(s2)
    80004968:	0087b503          	ld	a0,8(a5)
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	59c080e7          	jalr	1436(ra) # 80005f08 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004974:	0ff57513          	andi	a0,a0,255
    80004978:	ffffe097          	auipc	ra,0xffffe
    8000497c:	c6c080e7          	jalr	-916(ra) # 800025e4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004980:	02093783          	ld	a5,32(s2)
    80004984:	0087b503          	ld	a0,8(a5)
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	60c080e7          	jalr	1548(ra) # 80005f94 <_ZN9BufferCPP6getCntEv>
    80004990:	fca04ae3          	bgtz	a0,80004964 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004994:	02093783          	ld	a5,32(s2)
    80004998:	0107b503          	ld	a0,16(a5)
    8000499c:	ffffe097          	auipc	ra,0xffffe
    800049a0:	b6c080e7          	jalr	-1172(ra) # 80002508 <_ZN9Semaphore6signalEv>
    }
    800049a4:	02813083          	ld	ra,40(sp)
    800049a8:	02013403          	ld	s0,32(sp)
    800049ac:	01813483          	ld	s1,24(sp)
    800049b0:	01013903          	ld	s2,16(sp)
    800049b4:	00813983          	ld	s3,8(sp)
    800049b8:	03010113          	addi	sp,sp,48
    800049bc:	00008067          	ret

00000000800049c0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800049c0:	ff010113          	addi	sp,sp,-16
    800049c4:	00113423          	sd	ra,8(sp)
    800049c8:	00813023          	sd	s0,0(sp)
    800049cc:	01010413          	addi	s0,sp,16
    800049d0:	00007797          	auipc	a5,0x7
    800049d4:	13078793          	addi	a5,a5,304 # 8000bb00 <_ZTV8Consumer+0x10>
    800049d8:	00f53023          	sd	a5,0(a0)
    800049dc:	ffffe097          	auipc	ra,0xffffe
    800049e0:	90c080e7          	jalr	-1780(ra) # 800022e8 <_ZN6ThreadD1Ev>
    800049e4:	00813083          	ld	ra,8(sp)
    800049e8:	00013403          	ld	s0,0(sp)
    800049ec:	01010113          	addi	sp,sp,16
    800049f0:	00008067          	ret

00000000800049f4 <_ZN8ConsumerD0Ev>:
    800049f4:	fe010113          	addi	sp,sp,-32
    800049f8:	00113c23          	sd	ra,24(sp)
    800049fc:	00813823          	sd	s0,16(sp)
    80004a00:	00913423          	sd	s1,8(sp)
    80004a04:	02010413          	addi	s0,sp,32
    80004a08:	00050493          	mv	s1,a0
    80004a0c:	00007797          	auipc	a5,0x7
    80004a10:	0f478793          	addi	a5,a5,244 # 8000bb00 <_ZTV8Consumer+0x10>
    80004a14:	00f53023          	sd	a5,0(a0)
    80004a18:	ffffe097          	auipc	ra,0xffffe
    80004a1c:	8d0080e7          	jalr	-1840(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004a20:	00048513          	mv	a0,s1
    80004a24:	ffffe097          	auipc	ra,0xffffe
    80004a28:	89c080e7          	jalr	-1892(ra) # 800022c0 <_ZdlPv>
    80004a2c:	01813083          	ld	ra,24(sp)
    80004a30:	01013403          	ld	s0,16(sp)
    80004a34:	00813483          	ld	s1,8(sp)
    80004a38:	02010113          	addi	sp,sp,32
    80004a3c:	00008067          	ret

0000000080004a40 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004a40:	ff010113          	addi	sp,sp,-16
    80004a44:	00113423          	sd	ra,8(sp)
    80004a48:	00813023          	sd	s0,0(sp)
    80004a4c:	01010413          	addi	s0,sp,16
    80004a50:	00007797          	auipc	a5,0x7
    80004a54:	06078793          	addi	a5,a5,96 # 8000bab0 <_ZTV16ProducerKeyborad+0x10>
    80004a58:	00f53023          	sd	a5,0(a0)
    80004a5c:	ffffe097          	auipc	ra,0xffffe
    80004a60:	88c080e7          	jalr	-1908(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004a64:	00813083          	ld	ra,8(sp)
    80004a68:	00013403          	ld	s0,0(sp)
    80004a6c:	01010113          	addi	sp,sp,16
    80004a70:	00008067          	ret

0000000080004a74 <_ZN16ProducerKeyboradD0Ev>:
    80004a74:	fe010113          	addi	sp,sp,-32
    80004a78:	00113c23          	sd	ra,24(sp)
    80004a7c:	00813823          	sd	s0,16(sp)
    80004a80:	00913423          	sd	s1,8(sp)
    80004a84:	02010413          	addi	s0,sp,32
    80004a88:	00050493          	mv	s1,a0
    80004a8c:	00007797          	auipc	a5,0x7
    80004a90:	02478793          	addi	a5,a5,36 # 8000bab0 <_ZTV16ProducerKeyborad+0x10>
    80004a94:	00f53023          	sd	a5,0(a0)
    80004a98:	ffffe097          	auipc	ra,0xffffe
    80004a9c:	850080e7          	jalr	-1968(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004aa0:	00048513          	mv	a0,s1
    80004aa4:	ffffe097          	auipc	ra,0xffffe
    80004aa8:	81c080e7          	jalr	-2020(ra) # 800022c0 <_ZdlPv>
    80004aac:	01813083          	ld	ra,24(sp)
    80004ab0:	01013403          	ld	s0,16(sp)
    80004ab4:	00813483          	ld	s1,8(sp)
    80004ab8:	02010113          	addi	sp,sp,32
    80004abc:	00008067          	ret

0000000080004ac0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004ac0:	ff010113          	addi	sp,sp,-16
    80004ac4:	00113423          	sd	ra,8(sp)
    80004ac8:	00813023          	sd	s0,0(sp)
    80004acc:	01010413          	addi	s0,sp,16
    80004ad0:	00007797          	auipc	a5,0x7
    80004ad4:	00878793          	addi	a5,a5,8 # 8000bad8 <_ZTV8Producer+0x10>
    80004ad8:	00f53023          	sd	a5,0(a0)
    80004adc:	ffffe097          	auipc	ra,0xffffe
    80004ae0:	80c080e7          	jalr	-2036(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004ae4:	00813083          	ld	ra,8(sp)
    80004ae8:	00013403          	ld	s0,0(sp)
    80004aec:	01010113          	addi	sp,sp,16
    80004af0:	00008067          	ret

0000000080004af4 <_ZN8ProducerD0Ev>:
    80004af4:	fe010113          	addi	sp,sp,-32
    80004af8:	00113c23          	sd	ra,24(sp)
    80004afc:	00813823          	sd	s0,16(sp)
    80004b00:	00913423          	sd	s1,8(sp)
    80004b04:	02010413          	addi	s0,sp,32
    80004b08:	00050493          	mv	s1,a0
    80004b0c:	00007797          	auipc	a5,0x7
    80004b10:	fcc78793          	addi	a5,a5,-52 # 8000bad8 <_ZTV8Producer+0x10>
    80004b14:	00f53023          	sd	a5,0(a0)
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	7d0080e7          	jalr	2000(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80004b20:	00048513          	mv	a0,s1
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	79c080e7          	jalr	1948(ra) # 800022c0 <_ZdlPv>
    80004b2c:	01813083          	ld	ra,24(sp)
    80004b30:	01013403          	ld	s0,16(sp)
    80004b34:	00813483          	ld	s1,8(sp)
    80004b38:	02010113          	addi	sp,sp,32
    80004b3c:	00008067          	ret

0000000080004b40 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004b40:	fe010113          	addi	sp,sp,-32
    80004b44:	00113c23          	sd	ra,24(sp)
    80004b48:	00813823          	sd	s0,16(sp)
    80004b4c:	00913423          	sd	s1,8(sp)
    80004b50:	02010413          	addi	s0,sp,32
    80004b54:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x31) {
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	ae4080e7          	jalr	-1308(ra) # 8000163c <_Z4getcv>
    80004b60:	0005059b          	sext.w	a1,a0
    80004b64:	03100793          	li	a5,49
    80004b68:	00f58c63          	beq	a1,a5,80004b80 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004b6c:	0204b783          	ld	a5,32(s1)
    80004b70:	0087b503          	ld	a0,8(a5)
    80004b74:	00001097          	auipc	ra,0x1
    80004b78:	304080e7          	jalr	772(ra) # 80005e78 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x31) {
    80004b7c:	fddff06f          	j	80004b58 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004b80:	00100793          	li	a5,1
    80004b84:	00007717          	auipc	a4,0x7
    80004b88:	16f72a23          	sw	a5,372(a4) # 8000bcf8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004b8c:	0204b783          	ld	a5,32(s1)
    80004b90:	02100593          	li	a1,33
    80004b94:	0087b503          	ld	a0,8(a5)
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	2e0080e7          	jalr	736(ra) # 80005e78 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004ba0:	0204b783          	ld	a5,32(s1)
    80004ba4:	0107b503          	ld	a0,16(a5)
    80004ba8:	ffffe097          	auipc	ra,0xffffe
    80004bac:	960080e7          	jalr	-1696(ra) # 80002508 <_ZN9Semaphore6signalEv>
    }
    80004bb0:	01813083          	ld	ra,24(sp)
    80004bb4:	01013403          	ld	s0,16(sp)
    80004bb8:	00813483          	ld	s1,8(sp)
    80004bbc:	02010113          	addi	sp,sp,32
    80004bc0:	00008067          	ret

0000000080004bc4 <_ZN8Producer3runEv>:
    void run() override {
    80004bc4:	fe010113          	addi	sp,sp,-32
    80004bc8:	00113c23          	sd	ra,24(sp)
    80004bcc:	00813823          	sd	s0,16(sp)
    80004bd0:	00913423          	sd	s1,8(sp)
    80004bd4:	01213023          	sd	s2,0(sp)
    80004bd8:	02010413          	addi	s0,sp,32
    80004bdc:	00050493          	mv	s1,a0
        int i = 0;
    80004be0:	00000913          	li	s2,0
        while (!threadEnd) {
    80004be4:	00007797          	auipc	a5,0x7
    80004be8:	1147a783          	lw	a5,276(a5) # 8000bcf8 <_ZL9threadEnd>
    80004bec:	04079263          	bnez	a5,80004c30 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004bf0:	0204b783          	ld	a5,32(s1)
    80004bf4:	0007a583          	lw	a1,0(a5)
    80004bf8:	0305859b          	addiw	a1,a1,48
    80004bfc:	0087b503          	ld	a0,8(a5)
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	278080e7          	jalr	632(ra) # 80005e78 <_ZN9BufferCPP3putEi>
            i++;
    80004c08:	0019071b          	addiw	a4,s2,1
    80004c0c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004c10:	0204b783          	ld	a5,32(s1)
    80004c14:	0007a783          	lw	a5,0(a5)
    80004c18:	00e787bb          	addw	a5,a5,a4
    80004c1c:	00500513          	li	a0,5
    80004c20:	02a7e53b          	remw	a0,a5,a0
    80004c24:	ffffd097          	auipc	ra,0xffffd
    80004c28:	7ec080e7          	jalr	2028(ra) # 80002410 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004c2c:	fb9ff06f          	j	80004be4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004c30:	0204b783          	ld	a5,32(s1)
    80004c34:	0107b503          	ld	a0,16(a5)
    80004c38:	ffffe097          	auipc	ra,0xffffe
    80004c3c:	8d0080e7          	jalr	-1840(ra) # 80002508 <_ZN9Semaphore6signalEv>
    }
    80004c40:	01813083          	ld	ra,24(sp)
    80004c44:	01013403          	ld	s0,16(sp)
    80004c48:	00813483          	ld	s1,8(sp)
    80004c4c:	00013903          	ld	s2,0(sp)
    80004c50:	02010113          	addi	sp,sp,32
    80004c54:	00008067          	ret

0000000080004c58 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004c58:	fe010113          	addi	sp,sp,-32
    80004c5c:	00113c23          	sd	ra,24(sp)
    80004c60:	00813823          	sd	s0,16(sp)
    80004c64:	00913423          	sd	s1,8(sp)
    80004c68:	01213023          	sd	s2,0(sp)
    80004c6c:	02010413          	addi	s0,sp,32
    80004c70:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c74:	00100793          	li	a5,1
    80004c78:	02a7f863          	bgeu	a5,a0,80004ca8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c7c:	00a00793          	li	a5,10
    80004c80:	02f577b3          	remu	a5,a0,a5
    80004c84:	02078e63          	beqz	a5,80004cc0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c88:	fff48513          	addi	a0,s1,-1
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	fcc080e7          	jalr	-52(ra) # 80004c58 <_ZL9fibonaccim>
    80004c94:	00050913          	mv	s2,a0
    80004c98:	ffe48513          	addi	a0,s1,-2
    80004c9c:	00000097          	auipc	ra,0x0
    80004ca0:	fbc080e7          	jalr	-68(ra) # 80004c58 <_ZL9fibonaccim>
    80004ca4:	00a90533          	add	a0,s2,a0
}
    80004ca8:	01813083          	ld	ra,24(sp)
    80004cac:	01013403          	ld	s0,16(sp)
    80004cb0:	00813483          	ld	s1,8(sp)
    80004cb4:	00013903          	ld	s2,0(sp)
    80004cb8:	02010113          	addi	sp,sp,32
    80004cbc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004cc0:	ffffc097          	auipc	ra,0xffffc
    80004cc4:	71c080e7          	jalr	1820(ra) # 800013dc <_Z15thread_dispatchv>
    80004cc8:	fc1ff06f          	j	80004c88 <_ZL9fibonaccim+0x30>

0000000080004ccc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00113c23          	sd	ra,24(sp)
    80004cd4:	00813823          	sd	s0,16(sp)
    80004cd8:	00913423          	sd	s1,8(sp)
    80004cdc:	01213023          	sd	s2,0(sp)
    80004ce0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ce4:	00a00493          	li	s1,10
    80004ce8:	0400006f          	j	80004d28 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	59450513          	addi	a0,a0,1428 # 80009280 <CONSOLE_STATUS+0x270>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	d60080e7          	jalr	-672(ra) # 80005a54 <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	00048513          	mv	a0,s1
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	efc080e7          	jalr	-260(ra) # 80005c04 <_Z8printIntiii>
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	77050513          	addi	a0,a0,1904 # 80009480 <CONSOLE_STATUS+0x470>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	d3c080e7          	jalr	-708(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004d20:	0014849b          	addiw	s1,s1,1
    80004d24:	0ff4f493          	andi	s1,s1,255
    80004d28:	00c00793          	li	a5,12
    80004d2c:	fc97f0e3          	bgeu	a5,s1,80004cec <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004d30:	00004517          	auipc	a0,0x4
    80004d34:	55850513          	addi	a0,a0,1368 # 80009288 <CONSOLE_STATUS+0x278>
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	d1c080e7          	jalr	-740(ra) # 80005a54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004d40:	00500313          	li	t1,5
    thread_dispatch();
    80004d44:	ffffc097          	auipc	ra,0xffffc
    80004d48:	698080e7          	jalr	1688(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004d4c:	01000513          	li	a0,16
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	f08080e7          	jalr	-248(ra) # 80004c58 <_ZL9fibonaccim>
    80004d58:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004d5c:	00004517          	auipc	a0,0x4
    80004d60:	53c50513          	addi	a0,a0,1340 # 80009298 <CONSOLE_STATUS+0x288>
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	cf0080e7          	jalr	-784(ra) # 80005a54 <_Z11printStringPKc>
    80004d6c:	00000613          	li	a2,0
    80004d70:	00a00593          	li	a1,10
    80004d74:	0009051b          	sext.w	a0,s2
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	e8c080e7          	jalr	-372(ra) # 80005c04 <_Z8printIntiii>
    80004d80:	00004517          	auipc	a0,0x4
    80004d84:	70050513          	addi	a0,a0,1792 # 80009480 <CONSOLE_STATUS+0x470>
    80004d88:	00001097          	auipc	ra,0x1
    80004d8c:	ccc080e7          	jalr	-820(ra) # 80005a54 <_Z11printStringPKc>
    80004d90:	0400006f          	j	80004dd0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	4ec50513          	addi	a0,a0,1260 # 80009280 <CONSOLE_STATUS+0x270>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	cb8080e7          	jalr	-840(ra) # 80005a54 <_Z11printStringPKc>
    80004da4:	00000613          	li	a2,0
    80004da8:	00a00593          	li	a1,10
    80004dac:	00048513          	mv	a0,s1
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	e54080e7          	jalr	-428(ra) # 80005c04 <_Z8printIntiii>
    80004db8:	00004517          	auipc	a0,0x4
    80004dbc:	6c850513          	addi	a0,a0,1736 # 80009480 <CONSOLE_STATUS+0x470>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	c94080e7          	jalr	-876(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004dc8:	0014849b          	addiw	s1,s1,1
    80004dcc:	0ff4f493          	andi	s1,s1,255
    80004dd0:	00f00793          	li	a5,15
    80004dd4:	fc97f0e3          	bgeu	a5,s1,80004d94 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004dd8:	00004517          	auipc	a0,0x4
    80004ddc:	4d050513          	addi	a0,a0,1232 # 800092a8 <CONSOLE_STATUS+0x298>
    80004de0:	00001097          	auipc	ra,0x1
    80004de4:	c74080e7          	jalr	-908(ra) # 80005a54 <_Z11printStringPKc>
    finishedD = true;
    80004de8:	00100793          	li	a5,1
    80004dec:	00007717          	auipc	a4,0x7
    80004df0:	f0f70e23          	sb	a5,-228(a4) # 8000bd08 <_ZL9finishedD>
    thread_dispatch();
    80004df4:	ffffc097          	auipc	ra,0xffffc
    80004df8:	5e8080e7          	jalr	1512(ra) # 800013dc <_Z15thread_dispatchv>
}
    80004dfc:	01813083          	ld	ra,24(sp)
    80004e00:	01013403          	ld	s0,16(sp)
    80004e04:	00813483          	ld	s1,8(sp)
    80004e08:	00013903          	ld	s2,0(sp)
    80004e0c:	02010113          	addi	sp,sp,32
    80004e10:	00008067          	ret

0000000080004e14 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004e14:	fe010113          	addi	sp,sp,-32
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	00813823          	sd	s0,16(sp)
    80004e20:	00913423          	sd	s1,8(sp)
    80004e24:	01213023          	sd	s2,0(sp)
    80004e28:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004e2c:	00000493          	li	s1,0
    80004e30:	0400006f          	j	80004e70 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004e34:	00004517          	auipc	a0,0x4
    80004e38:	41c50513          	addi	a0,a0,1052 # 80009250 <CONSOLE_STATUS+0x240>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	c18080e7          	jalr	-1000(ra) # 80005a54 <_Z11printStringPKc>
    80004e44:	00000613          	li	a2,0
    80004e48:	00a00593          	li	a1,10
    80004e4c:	00048513          	mv	a0,s1
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	db4080e7          	jalr	-588(ra) # 80005c04 <_Z8printIntiii>
    80004e58:	00004517          	auipc	a0,0x4
    80004e5c:	62850513          	addi	a0,a0,1576 # 80009480 <CONSOLE_STATUS+0x470>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	bf4080e7          	jalr	-1036(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e68:	0014849b          	addiw	s1,s1,1
    80004e6c:	0ff4f493          	andi	s1,s1,255
    80004e70:	00200793          	li	a5,2
    80004e74:	fc97f0e3          	bgeu	a5,s1,80004e34 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004e78:	00004517          	auipc	a0,0x4
    80004e7c:	3e050513          	addi	a0,a0,992 # 80009258 <CONSOLE_STATUS+0x248>
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	bd4080e7          	jalr	-1068(ra) # 80005a54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e88:	00700313          	li	t1,7
    thread_dispatch();
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	550080e7          	jalr	1360(ra) # 800013dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e94:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	3d050513          	addi	a0,a0,976 # 80009268 <CONSOLE_STATUS+0x258>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	bb4080e7          	jalr	-1100(ra) # 80005a54 <_Z11printStringPKc>
    80004ea8:	00000613          	li	a2,0
    80004eac:	00a00593          	li	a1,10
    80004eb0:	0009051b          	sext.w	a0,s2
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	d50080e7          	jalr	-688(ra) # 80005c04 <_Z8printIntiii>
    80004ebc:	00004517          	auipc	a0,0x4
    80004ec0:	5c450513          	addi	a0,a0,1476 # 80009480 <CONSOLE_STATUS+0x470>
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	b90080e7          	jalr	-1136(ra) # 80005a54 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004ecc:	00c00513          	li	a0,12
    80004ed0:	00000097          	auipc	ra,0x0
    80004ed4:	d88080e7          	jalr	-632(ra) # 80004c58 <_ZL9fibonaccim>
    80004ed8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	39450513          	addi	a0,a0,916 # 80009270 <CONSOLE_STATUS+0x260>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	b70080e7          	jalr	-1168(ra) # 80005a54 <_Z11printStringPKc>
    80004eec:	00000613          	li	a2,0
    80004ef0:	00a00593          	li	a1,10
    80004ef4:	0009051b          	sext.w	a0,s2
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	d0c080e7          	jalr	-756(ra) # 80005c04 <_Z8printIntiii>
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	58050513          	addi	a0,a0,1408 # 80009480 <CONSOLE_STATUS+0x470>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	b4c080e7          	jalr	-1204(ra) # 80005a54 <_Z11printStringPKc>
    80004f10:	0400006f          	j	80004f50 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004f14:	00004517          	auipc	a0,0x4
    80004f18:	33c50513          	addi	a0,a0,828 # 80009250 <CONSOLE_STATUS+0x240>
    80004f1c:	00001097          	auipc	ra,0x1
    80004f20:	b38080e7          	jalr	-1224(ra) # 80005a54 <_Z11printStringPKc>
    80004f24:	00000613          	li	a2,0
    80004f28:	00a00593          	li	a1,10
    80004f2c:	00048513          	mv	a0,s1
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	cd4080e7          	jalr	-812(ra) # 80005c04 <_Z8printIntiii>
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	54850513          	addi	a0,a0,1352 # 80009480 <CONSOLE_STATUS+0x470>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	b14080e7          	jalr	-1260(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004f48:	0014849b          	addiw	s1,s1,1
    80004f4c:	0ff4f493          	andi	s1,s1,255
    80004f50:	00500793          	li	a5,5
    80004f54:	fc97f0e3          	bgeu	a5,s1,80004f14 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	2d050513          	addi	a0,a0,720 # 80009228 <CONSOLE_STATUS+0x218>
    80004f60:	00001097          	auipc	ra,0x1
    80004f64:	af4080e7          	jalr	-1292(ra) # 80005a54 <_Z11printStringPKc>
    finishedC = true;
    80004f68:	00100793          	li	a5,1
    80004f6c:	00007717          	auipc	a4,0x7
    80004f70:	d8f70ea3          	sb	a5,-611(a4) # 8000bd09 <_ZL9finishedC>
    thread_dispatch();
    80004f74:	ffffc097          	auipc	ra,0xffffc
    80004f78:	468080e7          	jalr	1128(ra) # 800013dc <_Z15thread_dispatchv>
}
    80004f7c:	01813083          	ld	ra,24(sp)
    80004f80:	01013403          	ld	s0,16(sp)
    80004f84:	00813483          	ld	s1,8(sp)
    80004f88:	00013903          	ld	s2,0(sp)
    80004f8c:	02010113          	addi	sp,sp,32
    80004f90:	00008067          	ret

0000000080004f94 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004f94:	fe010113          	addi	sp,sp,-32
    80004f98:	00113c23          	sd	ra,24(sp)
    80004f9c:	00813823          	sd	s0,16(sp)
    80004fa0:	00913423          	sd	s1,8(sp)
    80004fa4:	01213023          	sd	s2,0(sp)
    80004fa8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004fac:	00000913          	li	s2,0
    80004fb0:	0380006f          	j	80004fe8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004fb4:	ffffc097          	auipc	ra,0xffffc
    80004fb8:	428080e7          	jalr	1064(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004fbc:	00148493          	addi	s1,s1,1
    80004fc0:	000027b7          	lui	a5,0x2
    80004fc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004fc8:	0097ee63          	bltu	a5,s1,80004fe4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004fcc:	00000713          	li	a4,0
    80004fd0:	000077b7          	lui	a5,0x7
    80004fd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004fd8:	fce7eee3          	bltu	a5,a4,80004fb4 <_ZL11workerBodyBPv+0x20>
    80004fdc:	00170713          	addi	a4,a4,1
    80004fe0:	ff1ff06f          	j	80004fd0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004fe4:	00190913          	addi	s2,s2,1
    80004fe8:	00f00793          	li	a5,15
    80004fec:	0527e063          	bltu	a5,s2,8000502c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004ff0:	00004517          	auipc	a0,0x4
    80004ff4:	24850513          	addi	a0,a0,584 # 80009238 <CONSOLE_STATUS+0x228>
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	a5c080e7          	jalr	-1444(ra) # 80005a54 <_Z11printStringPKc>
    80005000:	00000613          	li	a2,0
    80005004:	00a00593          	li	a1,10
    80005008:	0009051b          	sext.w	a0,s2
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	bf8080e7          	jalr	-1032(ra) # 80005c04 <_Z8printIntiii>
    80005014:	00004517          	auipc	a0,0x4
    80005018:	46c50513          	addi	a0,a0,1132 # 80009480 <CONSOLE_STATUS+0x470>
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	a38080e7          	jalr	-1480(ra) # 80005a54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005024:	00000493          	li	s1,0
    80005028:	f99ff06f          	j	80004fc0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000502c:	00004517          	auipc	a0,0x4
    80005030:	21450513          	addi	a0,a0,532 # 80009240 <CONSOLE_STATUS+0x230>
    80005034:	00001097          	auipc	ra,0x1
    80005038:	a20080e7          	jalr	-1504(ra) # 80005a54 <_Z11printStringPKc>
    finishedB = true;
    8000503c:	00100793          	li	a5,1
    80005040:	00007717          	auipc	a4,0x7
    80005044:	ccf70523          	sb	a5,-822(a4) # 8000bd0a <_ZL9finishedB>
    thread_dispatch();
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	394080e7          	jalr	916(ra) # 800013dc <_Z15thread_dispatchv>
}
    80005050:	01813083          	ld	ra,24(sp)
    80005054:	01013403          	ld	s0,16(sp)
    80005058:	00813483          	ld	s1,8(sp)
    8000505c:	00013903          	ld	s2,0(sp)
    80005060:	02010113          	addi	sp,sp,32
    80005064:	00008067          	ret

0000000080005068 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	01213023          	sd	s2,0(sp)
    8000507c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005080:	00000913          	li	s2,0
    80005084:	0380006f          	j	800050bc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	354080e7          	jalr	852(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005090:	00148493          	addi	s1,s1,1
    80005094:	000027b7          	lui	a5,0x2
    80005098:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000509c:	0097ee63          	bltu	a5,s1,800050b8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050a0:	00000713          	li	a4,0
    800050a4:	000077b7          	lui	a5,0x7
    800050a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050ac:	fce7eee3          	bltu	a5,a4,80005088 <_ZL11workerBodyAPv+0x20>
    800050b0:	00170713          	addi	a4,a4,1
    800050b4:	ff1ff06f          	j	800050a4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800050b8:	00190913          	addi	s2,s2,1
    800050bc:	00900793          	li	a5,9
    800050c0:	0527e063          	bltu	a5,s2,80005100 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800050c4:	00004517          	auipc	a0,0x4
    800050c8:	15c50513          	addi	a0,a0,348 # 80009220 <CONSOLE_STATUS+0x210>
    800050cc:	00001097          	auipc	ra,0x1
    800050d0:	988080e7          	jalr	-1656(ra) # 80005a54 <_Z11printStringPKc>
    800050d4:	00000613          	li	a2,0
    800050d8:	00a00593          	li	a1,10
    800050dc:	0009051b          	sext.w	a0,s2
    800050e0:	00001097          	auipc	ra,0x1
    800050e4:	b24080e7          	jalr	-1244(ra) # 80005c04 <_Z8printIntiii>
    800050e8:	00004517          	auipc	a0,0x4
    800050ec:	39850513          	addi	a0,a0,920 # 80009480 <CONSOLE_STATUS+0x470>
    800050f0:	00001097          	auipc	ra,0x1
    800050f4:	964080e7          	jalr	-1692(ra) # 80005a54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050f8:	00000493          	li	s1,0
    800050fc:	f99ff06f          	j	80005094 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005100:	00004517          	auipc	a0,0x4
    80005104:	12850513          	addi	a0,a0,296 # 80009228 <CONSOLE_STATUS+0x218>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	94c080e7          	jalr	-1716(ra) # 80005a54 <_Z11printStringPKc>
    finishedA = true;
    80005110:	00100793          	li	a5,1
    80005114:	00007717          	auipc	a4,0x7
    80005118:	bef70ba3          	sb	a5,-1033(a4) # 8000bd0b <_ZL9finishedA>
}
    8000511c:	01813083          	ld	ra,24(sp)
    80005120:	01013403          	ld	s0,16(sp)
    80005124:	00813483          	ld	s1,8(sp)
    80005128:	00013903          	ld	s2,0(sp)
    8000512c:	02010113          	addi	sp,sp,32
    80005130:	00008067          	ret

0000000080005134 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005134:	fd010113          	addi	sp,sp,-48
    80005138:	02113423          	sd	ra,40(sp)
    8000513c:	02813023          	sd	s0,32(sp)
    80005140:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005144:	00000613          	li	a2,0
    80005148:	00000597          	auipc	a1,0x0
    8000514c:	f2058593          	addi	a1,a1,-224 # 80005068 <_ZL11workerBodyAPv>
    80005150:	fd040513          	addi	a0,s0,-48
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	1a8080e7          	jalr	424(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000515c:	00004517          	auipc	a0,0x4
    80005160:	15c50513          	addi	a0,a0,348 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005164:	00001097          	auipc	ra,0x1
    80005168:	8f0080e7          	jalr	-1808(ra) # 80005a54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000516c:	00000613          	li	a2,0
    80005170:	00000597          	auipc	a1,0x0
    80005174:	e2458593          	addi	a1,a1,-476 # 80004f94 <_ZL11workerBodyBPv>
    80005178:	fd840513          	addi	a0,s0,-40
    8000517c:	ffffc097          	auipc	ra,0xffffc
    80005180:	180080e7          	jalr	384(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005184:	00004517          	auipc	a0,0x4
    80005188:	14c50513          	addi	a0,a0,332 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	8c8080e7          	jalr	-1848(ra) # 80005a54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005194:	00000613          	li	a2,0
    80005198:	00000597          	auipc	a1,0x0
    8000519c:	c7c58593          	addi	a1,a1,-900 # 80004e14 <_ZL11workerBodyCPv>
    800051a0:	fe040513          	addi	a0,s0,-32
    800051a4:	ffffc097          	auipc	ra,0xffffc
    800051a8:	158080e7          	jalr	344(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	13c50513          	addi	a0,a0,316 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	8a0080e7          	jalr	-1888(ra) # 80005a54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800051bc:	00000613          	li	a2,0
    800051c0:	00000597          	auipc	a1,0x0
    800051c4:	b0c58593          	addi	a1,a1,-1268 # 80004ccc <_ZL11workerBodyDPv>
    800051c8:	fe840513          	addi	a0,s0,-24
    800051cc:	ffffc097          	auipc	ra,0xffffc
    800051d0:	130080e7          	jalr	304(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800051d4:	00004517          	auipc	a0,0x4
    800051d8:	12c50513          	addi	a0,a0,300 # 80009300 <CONSOLE_STATUS+0x2f0>
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	878080e7          	jalr	-1928(ra) # 80005a54 <_Z11printStringPKc>
    800051e4:	00c0006f          	j	800051f0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	1f4080e7          	jalr	500(ra) # 800013dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800051f0:	00007797          	auipc	a5,0x7
    800051f4:	b1b7c783          	lbu	a5,-1253(a5) # 8000bd0b <_ZL9finishedA>
    800051f8:	fe0788e3          	beqz	a5,800051e8 <_Z18Threads_C_API_testv+0xb4>
    800051fc:	00007797          	auipc	a5,0x7
    80005200:	b0e7c783          	lbu	a5,-1266(a5) # 8000bd0a <_ZL9finishedB>
    80005204:	fe0782e3          	beqz	a5,800051e8 <_Z18Threads_C_API_testv+0xb4>
    80005208:	00007797          	auipc	a5,0x7
    8000520c:	b017c783          	lbu	a5,-1279(a5) # 8000bd09 <_ZL9finishedC>
    80005210:	fc078ce3          	beqz	a5,800051e8 <_Z18Threads_C_API_testv+0xb4>
    80005214:	00007797          	auipc	a5,0x7
    80005218:	af47c783          	lbu	a5,-1292(a5) # 8000bd08 <_ZL9finishedD>
    8000521c:	fc0786e3          	beqz	a5,800051e8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005220:	02813083          	ld	ra,40(sp)
    80005224:	02013403          	ld	s0,32(sp)
    80005228:	03010113          	addi	sp,sp,48
    8000522c:	00008067          	ret

0000000080005230 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005230:	fe010113          	addi	sp,sp,-32
    80005234:	00113c23          	sd	ra,24(sp)
    80005238:	00813823          	sd	s0,16(sp)
    8000523c:	00913423          	sd	s1,8(sp)
    80005240:	01213023          	sd	s2,0(sp)
    80005244:	02010413          	addi	s0,sp,32
    80005248:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000524c:	00000913          	li	s2,0
    80005250:	00c0006f          	j	8000525c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
    while ((key = getc()) != 0x31b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	1e4080e7          	jalr	484(ra) # 80002438 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x31b) {
    8000525c:	ffffc097          	auipc	ra,0xffffc
    80005260:	3e0080e7          	jalr	992(ra) # 8000163c <_Z4getcv>
        data->buffer->put(key);
    80005264:	0005059b          	sext.w	a1,a0
    80005268:	0084b503          	ld	a0,8(s1)
    8000526c:	00001097          	auipc	ra,0x1
    80005270:	c0c080e7          	jalr	-1012(ra) # 80005e78 <_ZN9BufferCPP3putEi>
        i++;
    80005274:	0019071b          	addiw	a4,s2,1
    80005278:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000527c:	0004a683          	lw	a3,0(s1)
    80005280:	0026979b          	slliw	a5,a3,0x2
    80005284:	00d787bb          	addw	a5,a5,a3
    80005288:	0017979b          	slliw	a5,a5,0x1
    8000528c:	02f767bb          	remw	a5,a4,a5
    80005290:	fc0796e3          	bnez	a5,8000525c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
    80005294:	fc1ff06f          	j	80005254 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x24>

0000000080005298 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005298:	fe010113          	addi	sp,sp,-32
    8000529c:	00113c23          	sd	ra,24(sp)
    800052a0:	00813823          	sd	s0,16(sp)
    800052a4:	00913423          	sd	s1,8(sp)
    800052a8:	01213023          	sd	s2,0(sp)
    800052ac:	02010413          	addi	s0,sp,32
    800052b0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800052b4:	00000913          	li	s2,0
    800052b8:	00c0006f          	j	800052c4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	17c080e7          	jalr	380(ra) # 80002438 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800052c4:	00007797          	auipc	a5,0x7
    800052c8:	a4c7a783          	lw	a5,-1460(a5) # 8000bd10 <_ZL9threadEnd>
    800052cc:	02079e63          	bnez	a5,80005308 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800052d0:	0004a583          	lw	a1,0(s1)
    800052d4:	0305859b          	addiw	a1,a1,48
    800052d8:	0084b503          	ld	a0,8(s1)
    800052dc:	00001097          	auipc	ra,0x1
    800052e0:	b9c080e7          	jalr	-1124(ra) # 80005e78 <_ZN9BufferCPP3putEi>
        i++;
    800052e4:	0019071b          	addiw	a4,s2,1
    800052e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800052ec:	0004a683          	lw	a3,0(s1)
    800052f0:	0026979b          	slliw	a5,a3,0x2
    800052f4:	00d787bb          	addw	a5,a5,a3
    800052f8:	0017979b          	slliw	a5,a5,0x1
    800052fc:	02f767bb          	remw	a5,a4,a5
    80005300:	fc0792e3          	bnez	a5,800052c4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005304:	fb9ff06f          	j	800052bc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005308:	0104b503          	ld	a0,16(s1)
    8000530c:	ffffd097          	auipc	ra,0xffffd
    80005310:	1fc080e7          	jalr	508(ra) # 80002508 <_ZN9Semaphore6signalEv>
}
    80005314:	01813083          	ld	ra,24(sp)
    80005318:	01013403          	ld	s0,16(sp)
    8000531c:	00813483          	ld	s1,8(sp)
    80005320:	00013903          	ld	s2,0(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret

000000008000532c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000532c:	fd010113          	addi	sp,sp,-48
    80005330:	02113423          	sd	ra,40(sp)
    80005334:	02813023          	sd	s0,32(sp)
    80005338:	00913c23          	sd	s1,24(sp)
    8000533c:	01213823          	sd	s2,16(sp)
    80005340:	01313423          	sd	s3,8(sp)
    80005344:	01413023          	sd	s4,0(sp)
    80005348:	03010413          	addi	s0,sp,48
    8000534c:	00050993          	mv	s3,a0
    80005350:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005354:	00000a13          	li	s4,0
    80005358:	01c0006f          	j	80005374 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	0dc080e7          	jalr	220(ra) # 80002438 <_ZN6Thread8dispatchEv>
    80005364:	0500006f          	j	800053b4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005368:	00a00513          	li	a0,10
    8000536c:	ffffc097          	auipc	ra,0xffffc
    80005370:	31c080e7          	jalr	796(ra) # 80001688 <_Z4putcc>
    while (!threadEnd) {
    80005374:	00007797          	auipc	a5,0x7
    80005378:	99c7a783          	lw	a5,-1636(a5) # 8000bd10 <_ZL9threadEnd>
    8000537c:	06079263          	bnez	a5,800053e0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005380:	00893503          	ld	a0,8(s2)
    80005384:	00001097          	auipc	ra,0x1
    80005388:	b84080e7          	jalr	-1148(ra) # 80005f08 <_ZN9BufferCPP3getEv>
        i++;
    8000538c:	001a049b          	addiw	s1,s4,1
    80005390:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005394:	0ff57513          	andi	a0,a0,255
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	2f0080e7          	jalr	752(ra) # 80001688 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800053a0:	00092703          	lw	a4,0(s2)
    800053a4:	0027179b          	slliw	a5,a4,0x2
    800053a8:	00e787bb          	addw	a5,a5,a4
    800053ac:	02f4e7bb          	remw	a5,s1,a5
    800053b0:	fa0786e3          	beqz	a5,8000535c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800053b4:	05000793          	li	a5,80
    800053b8:	02f4e4bb          	remw	s1,s1,a5
    800053bc:	fa049ce3          	bnez	s1,80005374 <_ZN12ConsumerSync8consumerEPv+0x48>
    800053c0:	fa9ff06f          	j	80005368 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800053c4:	0209b783          	ld	a5,32(s3)
    800053c8:	0087b503          	ld	a0,8(a5)
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	b3c080e7          	jalr	-1220(ra) # 80005f08 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800053d4:	0ff57513          	andi	a0,a0,255
    800053d8:	ffffd097          	auipc	ra,0xffffd
    800053dc:	20c080e7          	jalr	524(ra) # 800025e4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800053e0:	0209b783          	ld	a5,32(s3)
    800053e4:	0087b503          	ld	a0,8(a5)
    800053e8:	00001097          	auipc	ra,0x1
    800053ec:	bac080e7          	jalr	-1108(ra) # 80005f94 <_ZN9BufferCPP6getCntEv>
    800053f0:	fca04ae3          	bgtz	a0,800053c4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800053f4:	01093503          	ld	a0,16(s2)
    800053f8:	ffffd097          	auipc	ra,0xffffd
    800053fc:	110080e7          	jalr	272(ra) # 80002508 <_ZN9Semaphore6signalEv>
}
    80005400:	02813083          	ld	ra,40(sp)
    80005404:	02013403          	ld	s0,32(sp)
    80005408:	01813483          	ld	s1,24(sp)
    8000540c:	01013903          	ld	s2,16(sp)
    80005410:	00813983          	ld	s3,8(sp)
    80005414:	00013a03          	ld	s4,0(sp)
    80005418:	03010113          	addi	sp,sp,48
    8000541c:	00008067          	ret

0000000080005420 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005420:	f8010113          	addi	sp,sp,-128
    80005424:	06113c23          	sd	ra,120(sp)
    80005428:	06813823          	sd	s0,112(sp)
    8000542c:	06913423          	sd	s1,104(sp)
    80005430:	07213023          	sd	s2,96(sp)
    80005434:	05313c23          	sd	s3,88(sp)
    80005438:	05413823          	sd	s4,80(sp)
    8000543c:	05513423          	sd	s5,72(sp)
    80005440:	05613023          	sd	s6,64(sp)
    80005444:	03713c23          	sd	s7,56(sp)
    80005448:	03813823          	sd	s8,48(sp)
    8000544c:	03913423          	sd	s9,40(sp)
    80005450:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005454:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005458:	00004517          	auipc	a0,0x4
    8000545c:	ce050513          	addi	a0,a0,-800 # 80009138 <CONSOLE_STATUS+0x128>
    80005460:	00000097          	auipc	ra,0x0
    80005464:	5f4080e7          	jalr	1524(ra) # 80005a54 <_Z11printStringPKc>
    getString(input, 30);
    80005468:	01e00593          	li	a1,30
    8000546c:	f8040493          	addi	s1,s0,-128
    80005470:	00048513          	mv	a0,s1
    80005474:	00000097          	auipc	ra,0x0
    80005478:	668080e7          	jalr	1640(ra) # 80005adc <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000547c:	00048513          	mv	a0,s1
    80005480:	00000097          	auipc	ra,0x0
    80005484:	734080e7          	jalr	1844(ra) # 80005bb4 <_Z11stringToIntPKc>
    80005488:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000548c:	00004517          	auipc	a0,0x4
    80005490:	ccc50513          	addi	a0,a0,-820 # 80009158 <CONSOLE_STATUS+0x148>
    80005494:	00000097          	auipc	ra,0x0
    80005498:	5c0080e7          	jalr	1472(ra) # 80005a54 <_Z11printStringPKc>
    getString(input, 30);
    8000549c:	01e00593          	li	a1,30
    800054a0:	00048513          	mv	a0,s1
    800054a4:	00000097          	auipc	ra,0x0
    800054a8:	638080e7          	jalr	1592(ra) # 80005adc <_Z9getStringPci>
    n = stringToInt(input);
    800054ac:	00048513          	mv	a0,s1
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	704080e7          	jalr	1796(ra) # 80005bb4 <_Z11stringToIntPKc>
    800054b8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054bc:	00004517          	auipc	a0,0x4
    800054c0:	cbc50513          	addi	a0,a0,-836 # 80009178 <CONSOLE_STATUS+0x168>
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	590080e7          	jalr	1424(ra) # 80005a54 <_Z11printStringPKc>
    800054cc:	00000613          	li	a2,0
    800054d0:	00a00593          	li	a1,10
    800054d4:	00090513          	mv	a0,s2
    800054d8:	00000097          	auipc	ra,0x0
    800054dc:	72c080e7          	jalr	1836(ra) # 80005c04 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800054e0:	00004517          	auipc	a0,0x4
    800054e4:	cb050513          	addi	a0,a0,-848 # 80009190 <CONSOLE_STATUS+0x180>
    800054e8:	00000097          	auipc	ra,0x0
    800054ec:	56c080e7          	jalr	1388(ra) # 80005a54 <_Z11printStringPKc>
    800054f0:	00000613          	li	a2,0
    800054f4:	00a00593          	li	a1,10
    800054f8:	00048513          	mv	a0,s1
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	708080e7          	jalr	1800(ra) # 80005c04 <_Z8printIntiii>
    printString(".\n");
    80005504:	00004517          	auipc	a0,0x4
    80005508:	ca450513          	addi	a0,a0,-860 # 800091a8 <CONSOLE_STATUS+0x198>
    8000550c:	00000097          	auipc	ra,0x0
    80005510:	548080e7          	jalr	1352(ra) # 80005a54 <_Z11printStringPKc>
    if(threadNum > n) {
    80005514:	0324c463          	blt	s1,s2,8000553c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005518:	03205c63          	blez	s2,80005550 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000551c:	03800513          	li	a0,56
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	d28080e7          	jalr	-728(ra) # 80002248 <_Znwm>
    80005528:	00050a93          	mv	s5,a0
    8000552c:	00048593          	mv	a1,s1
    80005530:	00000097          	auipc	ra,0x0
    80005534:	7f4080e7          	jalr	2036(ra) # 80005d24 <_ZN9BufferCPPC1Ei>
    80005538:	0300006f          	j	80005568 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000553c:	00004517          	auipc	a0,0x4
    80005540:	c7450513          	addi	a0,a0,-908 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80005544:	00000097          	auipc	ra,0x0
    80005548:	510080e7          	jalr	1296(ra) # 80005a54 <_Z11printStringPKc>
        return;
    8000554c:	0140006f          	j	80005560 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005550:	00004517          	auipc	a0,0x4
    80005554:	ca050513          	addi	a0,a0,-864 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80005558:	00000097          	auipc	ra,0x0
    8000555c:	4fc080e7          	jalr	1276(ra) # 80005a54 <_Z11printStringPKc>
        return;
    80005560:	000b8113          	mv	sp,s7
    80005564:	2380006f          	j	8000579c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005568:	01000513          	li	a0,16
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	cdc080e7          	jalr	-804(ra) # 80002248 <_Znwm>
    80005574:	00050493          	mv	s1,a0
    80005578:	00000593          	li	a1,0
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	f18080e7          	jalr	-232(ra) # 80002494 <_ZN9SemaphoreC1Ej>
    80005584:	00006797          	auipc	a5,0x6
    80005588:	7897ba23          	sd	s1,1940(a5) # 8000bd18 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000558c:	00391793          	slli	a5,s2,0x3
    80005590:	00f78793          	addi	a5,a5,15
    80005594:	ff07f793          	andi	a5,a5,-16
    80005598:	40f10133          	sub	sp,sp,a5
    8000559c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800055a0:	0019071b          	addiw	a4,s2,1
    800055a4:	00171793          	slli	a5,a4,0x1
    800055a8:	00e787b3          	add	a5,a5,a4
    800055ac:	00379793          	slli	a5,a5,0x3
    800055b0:	00f78793          	addi	a5,a5,15
    800055b4:	ff07f793          	andi	a5,a5,-16
    800055b8:	40f10133          	sub	sp,sp,a5
    800055bc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800055c0:	00191c13          	slli	s8,s2,0x1
    800055c4:	012c07b3          	add	a5,s8,s2
    800055c8:	00379793          	slli	a5,a5,0x3
    800055cc:	00fa07b3          	add	a5,s4,a5
    800055d0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800055d4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800055d8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800055dc:	02800513          	li	a0,40
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	c68080e7          	jalr	-920(ra) # 80002248 <_Znwm>
    800055e8:	00050b13          	mv	s6,a0
    800055ec:	012c0c33          	add	s8,s8,s2
    800055f0:	003c1c13          	slli	s8,s8,0x3
    800055f4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800055f8:	ffffd097          	auipc	ra,0xffffd
    800055fc:	de0080e7          	jalr	-544(ra) # 800023d8 <_ZN6ThreadC1Ev>
    80005600:	00006797          	auipc	a5,0x6
    80005604:	57878793          	addi	a5,a5,1400 # 8000bb78 <_ZTV12ConsumerSync+0x10>
    80005608:	00fb3023          	sd	a5,0(s6)
    8000560c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005610:	000b0513          	mv	a0,s6
    80005614:	ffffd097          	auipc	ra,0xffffd
    80005618:	e4c080e7          	jalr	-436(ra) # 80002460 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000561c:	00000493          	li	s1,0
    80005620:	0380006f          	j	80005658 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005624:	00006797          	auipc	a5,0x6
    80005628:	52c78793          	addi	a5,a5,1324 # 8000bb50 <_ZTV12ProducerSync+0x10>
    8000562c:	00fcb023          	sd	a5,0(s9)
    80005630:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005634:	00349793          	slli	a5,s1,0x3
    80005638:	00f987b3          	add	a5,s3,a5
    8000563c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005640:	00349793          	slli	a5,s1,0x3
    80005644:	00f987b3          	add	a5,s3,a5
    80005648:	0007b503          	ld	a0,0(a5)
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	e14080e7          	jalr	-492(ra) # 80002460 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005654:	0014849b          	addiw	s1,s1,1
    80005658:	0b24d063          	bge	s1,s2,800056f8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000565c:	00149793          	slli	a5,s1,0x1
    80005660:	009787b3          	add	a5,a5,s1
    80005664:	00379793          	slli	a5,a5,0x3
    80005668:	00fa07b3          	add	a5,s4,a5
    8000566c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005670:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005674:	00006717          	auipc	a4,0x6
    80005678:	6a473703          	ld	a4,1700(a4) # 8000bd18 <_ZL10waitForAll>
    8000567c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005680:	02905863          	blez	s1,800056b0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005684:	02800513          	li	a0,40
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	bc0080e7          	jalr	-1088(ra) # 80002248 <_Znwm>
    80005690:	00050c93          	mv	s9,a0
    80005694:	00149c13          	slli	s8,s1,0x1
    80005698:	009c0c33          	add	s8,s8,s1
    8000569c:	003c1c13          	slli	s8,s8,0x3
    800056a0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800056a4:	ffffd097          	auipc	ra,0xffffd
    800056a8:	d34080e7          	jalr	-716(ra) # 800023d8 <_ZN6ThreadC1Ev>
    800056ac:	f79ff06f          	j	80005624 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800056b0:	02800513          	li	a0,40
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	b94080e7          	jalr	-1132(ra) # 80002248 <_Znwm>
    800056bc:	00050c93          	mv	s9,a0
    800056c0:	00149c13          	slli	s8,s1,0x1
    800056c4:	009c0c33          	add	s8,s8,s1
    800056c8:	003c1c13          	slli	s8,s8,0x3
    800056cc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	d08080e7          	jalr	-760(ra) # 800023d8 <_ZN6ThreadC1Ev>
    800056d8:	00006797          	auipc	a5,0x6
    800056dc:	45078793          	addi	a5,a5,1104 # 8000bb28 <_ZTV16ProducerKeyboard+0x10>
    800056e0:	00fcb023          	sd	a5,0(s9)
    800056e4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800056e8:	00349793          	slli	a5,s1,0x3
    800056ec:	00f987b3          	add	a5,s3,a5
    800056f0:	0197b023          	sd	s9,0(a5)
    800056f4:	f4dff06f          	j	80005640 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	d40080e7          	jalr	-704(ra) # 80002438 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005700:	00000493          	li	s1,0
    80005704:	00994e63          	blt	s2,s1,80005720 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005708:	00006517          	auipc	a0,0x6
    8000570c:	61053503          	ld	a0,1552(a0) # 8000bd18 <_ZL10waitForAll>
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	dc0080e7          	jalr	-576(ra) # 800024d0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005718:	0014849b          	addiw	s1,s1,1
    8000571c:	fe9ff06f          	j	80005704 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005720:	00000493          	li	s1,0
    80005724:	0080006f          	j	8000572c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005728:	0014849b          	addiw	s1,s1,1
    8000572c:	0324d263          	bge	s1,s2,80005750 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005730:	00349793          	slli	a5,s1,0x3
    80005734:	00f987b3          	add	a5,s3,a5
    80005738:	0007b503          	ld	a0,0(a5)
    8000573c:	fe0506e3          	beqz	a0,80005728 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005740:	00053783          	ld	a5,0(a0)
    80005744:	0087b783          	ld	a5,8(a5)
    80005748:	000780e7          	jalr	a5
    8000574c:	fddff06f          	j	80005728 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005750:	000b0a63          	beqz	s6,80005764 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005754:	000b3783          	ld	a5,0(s6)
    80005758:	0087b783          	ld	a5,8(a5)
    8000575c:	000b0513          	mv	a0,s6
    80005760:	000780e7          	jalr	a5
    delete waitForAll;
    80005764:	00006517          	auipc	a0,0x6
    80005768:	5b453503          	ld	a0,1460(a0) # 8000bd18 <_ZL10waitForAll>
    8000576c:	00050863          	beqz	a0,8000577c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005770:	00053783          	ld	a5,0(a0)
    80005774:	0087b783          	ld	a5,8(a5)
    80005778:	000780e7          	jalr	a5
    delete buffer;
    8000577c:	000a8e63          	beqz	s5,80005798 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005780:	000a8513          	mv	a0,s5
    80005784:	00001097          	auipc	ra,0x1
    80005788:	898080e7          	jalr	-1896(ra) # 8000601c <_ZN9BufferCPPD1Ev>
    8000578c:	000a8513          	mv	a0,s5
    80005790:	ffffd097          	auipc	ra,0xffffd
    80005794:	b30080e7          	jalr	-1232(ra) # 800022c0 <_ZdlPv>
    80005798:	000b8113          	mv	sp,s7

}
    8000579c:	f8040113          	addi	sp,s0,-128
    800057a0:	07813083          	ld	ra,120(sp)
    800057a4:	07013403          	ld	s0,112(sp)
    800057a8:	06813483          	ld	s1,104(sp)
    800057ac:	06013903          	ld	s2,96(sp)
    800057b0:	05813983          	ld	s3,88(sp)
    800057b4:	05013a03          	ld	s4,80(sp)
    800057b8:	04813a83          	ld	s5,72(sp)
    800057bc:	04013b03          	ld	s6,64(sp)
    800057c0:	03813b83          	ld	s7,56(sp)
    800057c4:	03013c03          	ld	s8,48(sp)
    800057c8:	02813c83          	ld	s9,40(sp)
    800057cc:	08010113          	addi	sp,sp,128
    800057d0:	00008067          	ret
    800057d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800057d8:	000a8513          	mv	a0,s5
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	ae4080e7          	jalr	-1308(ra) # 800022c0 <_ZdlPv>
    800057e4:	00048513          	mv	a0,s1
    800057e8:	00007097          	auipc	ra,0x7
    800057ec:	610080e7          	jalr	1552(ra) # 8000cdf8 <_Unwind_Resume>
    800057f0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800057f4:	00048513          	mv	a0,s1
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	ac8080e7          	jalr	-1336(ra) # 800022c0 <_ZdlPv>
    80005800:	00090513          	mv	a0,s2
    80005804:	00007097          	auipc	ra,0x7
    80005808:	5f4080e7          	jalr	1524(ra) # 8000cdf8 <_Unwind_Resume>
    8000580c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005810:	000b0513          	mv	a0,s6
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	aac080e7          	jalr	-1364(ra) # 800022c0 <_ZdlPv>
    8000581c:	00048513          	mv	a0,s1
    80005820:	00007097          	auipc	ra,0x7
    80005824:	5d8080e7          	jalr	1496(ra) # 8000cdf8 <_Unwind_Resume>
    80005828:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000582c:	000c8513          	mv	a0,s9
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	a90080e7          	jalr	-1392(ra) # 800022c0 <_ZdlPv>
    80005838:	00048513          	mv	a0,s1
    8000583c:	00007097          	auipc	ra,0x7
    80005840:	5bc080e7          	jalr	1468(ra) # 8000cdf8 <_Unwind_Resume>
    80005844:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005848:	000c8513          	mv	a0,s9
    8000584c:	ffffd097          	auipc	ra,0xffffd
    80005850:	a74080e7          	jalr	-1420(ra) # 800022c0 <_ZdlPv>
    80005854:	00048513          	mv	a0,s1
    80005858:	00007097          	auipc	ra,0x7
    8000585c:	5a0080e7          	jalr	1440(ra) # 8000cdf8 <_Unwind_Resume>

0000000080005860 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005860:	ff010113          	addi	sp,sp,-16
    80005864:	00113423          	sd	ra,8(sp)
    80005868:	00813023          	sd	s0,0(sp)
    8000586c:	01010413          	addi	s0,sp,16
    80005870:	00006797          	auipc	a5,0x6
    80005874:	30878793          	addi	a5,a5,776 # 8000bb78 <_ZTV12ConsumerSync+0x10>
    80005878:	00f53023          	sd	a5,0(a0)
    8000587c:	ffffd097          	auipc	ra,0xffffd
    80005880:	a6c080e7          	jalr	-1428(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80005884:	00813083          	ld	ra,8(sp)
    80005888:	00013403          	ld	s0,0(sp)
    8000588c:	01010113          	addi	sp,sp,16
    80005890:	00008067          	ret

0000000080005894 <_ZN12ConsumerSyncD0Ev>:
    80005894:	fe010113          	addi	sp,sp,-32
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00813823          	sd	s0,16(sp)
    800058a0:	00913423          	sd	s1,8(sp)
    800058a4:	02010413          	addi	s0,sp,32
    800058a8:	00050493          	mv	s1,a0
    800058ac:	00006797          	auipc	a5,0x6
    800058b0:	2cc78793          	addi	a5,a5,716 # 8000bb78 <_ZTV12ConsumerSync+0x10>
    800058b4:	00f53023          	sd	a5,0(a0)
    800058b8:	ffffd097          	auipc	ra,0xffffd
    800058bc:	a30080e7          	jalr	-1488(ra) # 800022e8 <_ZN6ThreadD1Ev>
    800058c0:	00048513          	mv	a0,s1
    800058c4:	ffffd097          	auipc	ra,0xffffd
    800058c8:	9fc080e7          	jalr	-1540(ra) # 800022c0 <_ZdlPv>
    800058cc:	01813083          	ld	ra,24(sp)
    800058d0:	01013403          	ld	s0,16(sp)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	02010113          	addi	sp,sp,32
    800058dc:	00008067          	ret

00000000800058e0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800058e0:	ff010113          	addi	sp,sp,-16
    800058e4:	00113423          	sd	ra,8(sp)
    800058e8:	00813023          	sd	s0,0(sp)
    800058ec:	01010413          	addi	s0,sp,16
    800058f0:	00006797          	auipc	a5,0x6
    800058f4:	26078793          	addi	a5,a5,608 # 8000bb50 <_ZTV12ProducerSync+0x10>
    800058f8:	00f53023          	sd	a5,0(a0)
    800058fc:	ffffd097          	auipc	ra,0xffffd
    80005900:	9ec080e7          	jalr	-1556(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80005904:	00813083          	ld	ra,8(sp)
    80005908:	00013403          	ld	s0,0(sp)
    8000590c:	01010113          	addi	sp,sp,16
    80005910:	00008067          	ret

0000000080005914 <_ZN12ProducerSyncD0Ev>:
    80005914:	fe010113          	addi	sp,sp,-32
    80005918:	00113c23          	sd	ra,24(sp)
    8000591c:	00813823          	sd	s0,16(sp)
    80005920:	00913423          	sd	s1,8(sp)
    80005924:	02010413          	addi	s0,sp,32
    80005928:	00050493          	mv	s1,a0
    8000592c:	00006797          	auipc	a5,0x6
    80005930:	22478793          	addi	a5,a5,548 # 8000bb50 <_ZTV12ProducerSync+0x10>
    80005934:	00f53023          	sd	a5,0(a0)
    80005938:	ffffd097          	auipc	ra,0xffffd
    8000593c:	9b0080e7          	jalr	-1616(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80005940:	00048513          	mv	a0,s1
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	97c080e7          	jalr	-1668(ra) # 800022c0 <_ZdlPv>
    8000594c:	01813083          	ld	ra,24(sp)
    80005950:	01013403          	ld	s0,16(sp)
    80005954:	00813483          	ld	s1,8(sp)
    80005958:	02010113          	addi	sp,sp,32
    8000595c:	00008067          	ret

0000000080005960 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005960:	ff010113          	addi	sp,sp,-16
    80005964:	00113423          	sd	ra,8(sp)
    80005968:	00813023          	sd	s0,0(sp)
    8000596c:	01010413          	addi	s0,sp,16
    80005970:	00006797          	auipc	a5,0x6
    80005974:	1b878793          	addi	a5,a5,440 # 8000bb28 <_ZTV16ProducerKeyboard+0x10>
    80005978:	00f53023          	sd	a5,0(a0)
    8000597c:	ffffd097          	auipc	ra,0xffffd
    80005980:	96c080e7          	jalr	-1684(ra) # 800022e8 <_ZN6ThreadD1Ev>
    80005984:	00813083          	ld	ra,8(sp)
    80005988:	00013403          	ld	s0,0(sp)
    8000598c:	01010113          	addi	sp,sp,16
    80005990:	00008067          	ret

0000000080005994 <_ZN16ProducerKeyboardD0Ev>:
    80005994:	fe010113          	addi	sp,sp,-32
    80005998:	00113c23          	sd	ra,24(sp)
    8000599c:	00813823          	sd	s0,16(sp)
    800059a0:	00913423          	sd	s1,8(sp)
    800059a4:	02010413          	addi	s0,sp,32
    800059a8:	00050493          	mv	s1,a0
    800059ac:	00006797          	auipc	a5,0x6
    800059b0:	17c78793          	addi	a5,a5,380 # 8000bb28 <_ZTV16ProducerKeyboard+0x10>
    800059b4:	00f53023          	sd	a5,0(a0)
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	930080e7          	jalr	-1744(ra) # 800022e8 <_ZN6ThreadD1Ev>
    800059c0:	00048513          	mv	a0,s1
    800059c4:	ffffd097          	auipc	ra,0xffffd
    800059c8:	8fc080e7          	jalr	-1796(ra) # 800022c0 <_ZdlPv>
    800059cc:	01813083          	ld	ra,24(sp)
    800059d0:	01013403          	ld	s0,16(sp)
    800059d4:	00813483          	ld	s1,8(sp)
    800059d8:	02010113          	addi	sp,sp,32
    800059dc:	00008067          	ret

00000000800059e0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800059e0:	ff010113          	addi	sp,sp,-16
    800059e4:	00113423          	sd	ra,8(sp)
    800059e8:	00813023          	sd	s0,0(sp)
    800059ec:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800059f0:	02053583          	ld	a1,32(a0)
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	83c080e7          	jalr	-1988(ra) # 80005230 <_ZN16ProducerKeyboard16producerKeyboardEPv>

00000000800059fc <_ZN12ProducerSync3runEv>:
    void run() override {
    800059fc:	ff010113          	addi	sp,sp,-16
    80005a00:	00113423          	sd	ra,8(sp)
    80005a04:	00813023          	sd	s0,0(sp)
    80005a08:	01010413          	addi	s0,sp,16
        producer(td);
    80005a0c:	02053583          	ld	a1,32(a0)
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	888080e7          	jalr	-1912(ra) # 80005298 <_ZN12ProducerSync8producerEPv>
    }
    80005a18:	00813083          	ld	ra,8(sp)
    80005a1c:	00013403          	ld	s0,0(sp)
    80005a20:	01010113          	addi	sp,sp,16
    80005a24:	00008067          	ret

0000000080005a28 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a28:	ff010113          	addi	sp,sp,-16
    80005a2c:	00113423          	sd	ra,8(sp)
    80005a30:	00813023          	sd	s0,0(sp)
    80005a34:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a38:	02053583          	ld	a1,32(a0)
    80005a3c:	00000097          	auipc	ra,0x0
    80005a40:	8f0080e7          	jalr	-1808(ra) # 8000532c <_ZN12ConsumerSync8consumerEPv>
    }
    80005a44:	00813083          	ld	ra,8(sp)
    80005a48:	00013403          	ld	s0,0(sp)
    80005a4c:	01010113          	addi	sp,sp,16
    80005a50:	00008067          	ret

0000000080005a54 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00113c23          	sd	ra,24(sp)
    80005a5c:	00813823          	sd	s0,16(sp)
    80005a60:	00913423          	sd	s1,8(sp)
    80005a64:	02010413          	addi	s0,sp,32
    80005a68:	00050493          	mv	s1,a0
    LOCK();
    80005a6c:	00100613          	li	a2,1
    80005a70:	00000593          	li	a1,0
    80005a74:	00006517          	auipc	a0,0x6
    80005a78:	2ac50513          	addi	a0,a0,684 # 8000bd20 <lockPrint>
    80005a7c:	ffffb097          	auipc	ra,0xffffb
    80005a80:	7a8080e7          	jalr	1960(ra) # 80001224 <copy_and_swap>
    80005a84:	00050863          	beqz	a0,80005a94 <_Z11printStringPKc+0x40>
    80005a88:	ffffc097          	auipc	ra,0xffffc
    80005a8c:	954080e7          	jalr	-1708(ra) # 800013dc <_Z15thread_dispatchv>
    80005a90:	fddff06f          	j	80005a6c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005a94:	0004c503          	lbu	a0,0(s1)
    80005a98:	00050a63          	beqz	a0,80005aac <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	bec080e7          	jalr	-1044(ra) # 80001688 <_Z4putcc>
        string++;
    80005aa4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005aa8:	fedff06f          	j	80005a94 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005aac:	00000613          	li	a2,0
    80005ab0:	00100593          	li	a1,1
    80005ab4:	00006517          	auipc	a0,0x6
    80005ab8:	26c50513          	addi	a0,a0,620 # 8000bd20 <lockPrint>
    80005abc:	ffffb097          	auipc	ra,0xffffb
    80005ac0:	768080e7          	jalr	1896(ra) # 80001224 <copy_and_swap>
    80005ac4:	fe0514e3          	bnez	a0,80005aac <_Z11printStringPKc+0x58>
}
    80005ac8:	01813083          	ld	ra,24(sp)
    80005acc:	01013403          	ld	s0,16(sp)
    80005ad0:	00813483          	ld	s1,8(sp)
    80005ad4:	02010113          	addi	sp,sp,32
    80005ad8:	00008067          	ret

0000000080005adc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005adc:	fd010113          	addi	sp,sp,-48
    80005ae0:	02113423          	sd	ra,40(sp)
    80005ae4:	02813023          	sd	s0,32(sp)
    80005ae8:	00913c23          	sd	s1,24(sp)
    80005aec:	01213823          	sd	s2,16(sp)
    80005af0:	01313423          	sd	s3,8(sp)
    80005af4:	01413023          	sd	s4,0(sp)
    80005af8:	03010413          	addi	s0,sp,48
    80005afc:	00050993          	mv	s3,a0
    80005b00:	00058a13          	mv	s4,a1
    LOCK();
    80005b04:	00100613          	li	a2,1
    80005b08:	00000593          	li	a1,0
    80005b0c:	00006517          	auipc	a0,0x6
    80005b10:	21450513          	addi	a0,a0,532 # 8000bd20 <lockPrint>
    80005b14:	ffffb097          	auipc	ra,0xffffb
    80005b18:	710080e7          	jalr	1808(ra) # 80001224 <copy_and_swap>
    80005b1c:	00050863          	beqz	a0,80005b2c <_Z9getStringPci+0x50>
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	8bc080e7          	jalr	-1860(ra) # 800013dc <_Z15thread_dispatchv>
    80005b28:	fddff06f          	j	80005b04 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b2c:	00000913          	li	s2,0
    80005b30:	00090493          	mv	s1,s2
    80005b34:	0019091b          	addiw	s2,s2,1
    80005b38:	03495a63          	bge	s2,s4,80005b6c <_Z9getStringPci+0x90>
        cc = getc();
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	b00080e7          	jalr	-1280(ra) # 8000163c <_Z4getcv>
        if(cc < 1)
    80005b44:	02050463          	beqz	a0,80005b6c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b48:	009984b3          	add	s1,s3,s1
    80005b4c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b50:	00a00793          	li	a5,10
    80005b54:	00f50a63          	beq	a0,a5,80005b68 <_Z9getStringPci+0x8c>
    80005b58:	00d00793          	li	a5,13
    80005b5c:	fcf51ae3          	bne	a0,a5,80005b30 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005b60:	00090493          	mv	s1,s2
    80005b64:	0080006f          	j	80005b6c <_Z9getStringPci+0x90>
    80005b68:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005b6c:	009984b3          	add	s1,s3,s1
    80005b70:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005b74:	00000613          	li	a2,0
    80005b78:	00100593          	li	a1,1
    80005b7c:	00006517          	auipc	a0,0x6
    80005b80:	1a450513          	addi	a0,a0,420 # 8000bd20 <lockPrint>
    80005b84:	ffffb097          	auipc	ra,0xffffb
    80005b88:	6a0080e7          	jalr	1696(ra) # 80001224 <copy_and_swap>
    80005b8c:	fe0514e3          	bnez	a0,80005b74 <_Z9getStringPci+0x98>
    return buf;
}
    80005b90:	00098513          	mv	a0,s3
    80005b94:	02813083          	ld	ra,40(sp)
    80005b98:	02013403          	ld	s0,32(sp)
    80005b9c:	01813483          	ld	s1,24(sp)
    80005ba0:	01013903          	ld	s2,16(sp)
    80005ba4:	00813983          	ld	s3,8(sp)
    80005ba8:	00013a03          	ld	s4,0(sp)
    80005bac:	03010113          	addi	sp,sp,48
    80005bb0:	00008067          	ret

0000000080005bb4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005bb4:	ff010113          	addi	sp,sp,-16
    80005bb8:	00813423          	sd	s0,8(sp)
    80005bbc:	01010413          	addi	s0,sp,16
    80005bc0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005bc4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005bc8:	0006c603          	lbu	a2,0(a3)
    80005bcc:	fd06071b          	addiw	a4,a2,-48
    80005bd0:	0ff77713          	andi	a4,a4,255
    80005bd4:	00900793          	li	a5,9
    80005bd8:	02e7e063          	bltu	a5,a4,80005bf8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005bdc:	0025179b          	slliw	a5,a0,0x2
    80005be0:	00a787bb          	addw	a5,a5,a0
    80005be4:	0017979b          	slliw	a5,a5,0x1
    80005be8:	00168693          	addi	a3,a3,1
    80005bec:	00c787bb          	addw	a5,a5,a2
    80005bf0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005bf4:	fd5ff06f          	j	80005bc8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005bf8:	00813403          	ld	s0,8(sp)
    80005bfc:	01010113          	addi	sp,sp,16
    80005c00:	00008067          	ret

0000000080005c04 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005c04:	fc010113          	addi	sp,sp,-64
    80005c08:	02113c23          	sd	ra,56(sp)
    80005c0c:	02813823          	sd	s0,48(sp)
    80005c10:	02913423          	sd	s1,40(sp)
    80005c14:	03213023          	sd	s2,32(sp)
    80005c18:	01313c23          	sd	s3,24(sp)
    80005c1c:	04010413          	addi	s0,sp,64
    80005c20:	00050493          	mv	s1,a0
    80005c24:	00058913          	mv	s2,a1
    80005c28:	00060993          	mv	s3,a2
    LOCK();
    80005c2c:	00100613          	li	a2,1
    80005c30:	00000593          	li	a1,0
    80005c34:	00006517          	auipc	a0,0x6
    80005c38:	0ec50513          	addi	a0,a0,236 # 8000bd20 <lockPrint>
    80005c3c:	ffffb097          	auipc	ra,0xffffb
    80005c40:	5e8080e7          	jalr	1512(ra) # 80001224 <copy_and_swap>
    80005c44:	00050863          	beqz	a0,80005c54 <_Z8printIntiii+0x50>
    80005c48:	ffffb097          	auipc	ra,0xffffb
    80005c4c:	794080e7          	jalr	1940(ra) # 800013dc <_Z15thread_dispatchv>
    80005c50:	fddff06f          	j	80005c2c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005c54:	00098463          	beqz	s3,80005c5c <_Z8printIntiii+0x58>
    80005c58:	0804c463          	bltz	s1,80005ce0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005c5c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005c60:	00000593          	li	a1,0
    }

    i = 0;
    80005c64:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005c68:	0009079b          	sext.w	a5,s2
    80005c6c:	0325773b          	remuw	a4,a0,s2
    80005c70:	00048613          	mv	a2,s1
    80005c74:	0014849b          	addiw	s1,s1,1
    80005c78:	02071693          	slli	a3,a4,0x20
    80005c7c:	0206d693          	srli	a3,a3,0x20
    80005c80:	00006717          	auipc	a4,0x6
    80005c84:	f1070713          	addi	a4,a4,-240 # 8000bb90 <digits>
    80005c88:	00d70733          	add	a4,a4,a3
    80005c8c:	00074683          	lbu	a3,0(a4)
    80005c90:	fd040713          	addi	a4,s0,-48
    80005c94:	00c70733          	add	a4,a4,a2
    80005c98:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005c9c:	0005071b          	sext.w	a4,a0
    80005ca0:	0325553b          	divuw	a0,a0,s2
    80005ca4:	fcf772e3          	bgeu	a4,a5,80005c68 <_Z8printIntiii+0x64>
    if(neg)
    80005ca8:	00058c63          	beqz	a1,80005cc0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005cac:	fd040793          	addi	a5,s0,-48
    80005cb0:	009784b3          	add	s1,a5,s1
    80005cb4:	02d00793          	li	a5,45
    80005cb8:	fef48823          	sb	a5,-16(s1)
    80005cbc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005cc0:	fff4849b          	addiw	s1,s1,-1
    80005cc4:	0204c463          	bltz	s1,80005cec <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005cc8:	fd040793          	addi	a5,s0,-48
    80005ccc:	009787b3          	add	a5,a5,s1
    80005cd0:	ff07c503          	lbu	a0,-16(a5)
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	9b4080e7          	jalr	-1612(ra) # 80001688 <_Z4putcc>
    80005cdc:	fe5ff06f          	j	80005cc0 <_Z8printIntiii+0xbc>
        x = -xx;
    80005ce0:	4090053b          	negw	a0,s1
        neg = 1;
    80005ce4:	00100593          	li	a1,1
        x = -xx;
    80005ce8:	f7dff06f          	j	80005c64 <_Z8printIntiii+0x60>

    UNLOCK();
    80005cec:	00000613          	li	a2,0
    80005cf0:	00100593          	li	a1,1
    80005cf4:	00006517          	auipc	a0,0x6
    80005cf8:	02c50513          	addi	a0,a0,44 # 8000bd20 <lockPrint>
    80005cfc:	ffffb097          	auipc	ra,0xffffb
    80005d00:	528080e7          	jalr	1320(ra) # 80001224 <copy_and_swap>
    80005d04:	fe0514e3          	bnez	a0,80005cec <_Z8printIntiii+0xe8>
    80005d08:	03813083          	ld	ra,56(sp)
    80005d0c:	03013403          	ld	s0,48(sp)
    80005d10:	02813483          	ld	s1,40(sp)
    80005d14:	02013903          	ld	s2,32(sp)
    80005d18:	01813983          	ld	s3,24(sp)
    80005d1c:	04010113          	addi	sp,sp,64
    80005d20:	00008067          	ret

0000000080005d24 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d24:	fd010113          	addi	sp,sp,-48
    80005d28:	02113423          	sd	ra,40(sp)
    80005d2c:	02813023          	sd	s0,32(sp)
    80005d30:	00913c23          	sd	s1,24(sp)
    80005d34:	01213823          	sd	s2,16(sp)
    80005d38:	01313423          	sd	s3,8(sp)
    80005d3c:	03010413          	addi	s0,sp,48
    80005d40:	00050493          	mv	s1,a0
    80005d44:	00058913          	mv	s2,a1
    80005d48:	0015879b          	addiw	a5,a1,1
    80005d4c:	0007851b          	sext.w	a0,a5
    80005d50:	00f4a023          	sw	a5,0(s1)
    80005d54:	0004a823          	sw	zero,16(s1)
    80005d58:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d5c:	00251513          	slli	a0,a0,0x2
    80005d60:	ffffb097          	auipc	ra,0xffffb
    80005d64:	500080e7          	jalr	1280(ra) # 80001260 <_Z9mem_allocm>
    80005d68:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005d6c:	01000513          	li	a0,16
    80005d70:	ffffc097          	auipc	ra,0xffffc
    80005d74:	4d8080e7          	jalr	1240(ra) # 80002248 <_Znwm>
    80005d78:	00050993          	mv	s3,a0
    80005d7c:	00000593          	li	a1,0
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	714080e7          	jalr	1812(ra) # 80002494 <_ZN9SemaphoreC1Ej>
    80005d88:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005d8c:	01000513          	li	a0,16
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	4b8080e7          	jalr	1208(ra) # 80002248 <_Znwm>
    80005d98:	00050993          	mv	s3,a0
    80005d9c:	00090593          	mv	a1,s2
    80005da0:	ffffc097          	auipc	ra,0xffffc
    80005da4:	6f4080e7          	jalr	1780(ra) # 80002494 <_ZN9SemaphoreC1Ej>
    80005da8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005dac:	01000513          	li	a0,16
    80005db0:	ffffc097          	auipc	ra,0xffffc
    80005db4:	498080e7          	jalr	1176(ra) # 80002248 <_Znwm>
    80005db8:	00050913          	mv	s2,a0
    80005dbc:	00100593          	li	a1,1
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	6d4080e7          	jalr	1748(ra) # 80002494 <_ZN9SemaphoreC1Ej>
    80005dc8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005dcc:	01000513          	li	a0,16
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	478080e7          	jalr	1144(ra) # 80002248 <_Znwm>
    80005dd8:	00050913          	mv	s2,a0
    80005ddc:	00100593          	li	a1,1
    80005de0:	ffffc097          	auipc	ra,0xffffc
    80005de4:	6b4080e7          	jalr	1716(ra) # 80002494 <_ZN9SemaphoreC1Ej>
    80005de8:	0324b823          	sd	s2,48(s1)
}
    80005dec:	02813083          	ld	ra,40(sp)
    80005df0:	02013403          	ld	s0,32(sp)
    80005df4:	01813483          	ld	s1,24(sp)
    80005df8:	01013903          	ld	s2,16(sp)
    80005dfc:	00813983          	ld	s3,8(sp)
    80005e00:	03010113          	addi	sp,sp,48
    80005e04:	00008067          	ret
    80005e08:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e0c:	00098513          	mv	a0,s3
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	4b0080e7          	jalr	1200(ra) # 800022c0 <_ZdlPv>
    80005e18:	00048513          	mv	a0,s1
    80005e1c:	00007097          	auipc	ra,0x7
    80005e20:	fdc080e7          	jalr	-36(ra) # 8000cdf8 <_Unwind_Resume>
    80005e24:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e28:	00098513          	mv	a0,s3
    80005e2c:	ffffc097          	auipc	ra,0xffffc
    80005e30:	494080e7          	jalr	1172(ra) # 800022c0 <_ZdlPv>
    80005e34:	00048513          	mv	a0,s1
    80005e38:	00007097          	auipc	ra,0x7
    80005e3c:	fc0080e7          	jalr	-64(ra) # 8000cdf8 <_Unwind_Resume>
    80005e40:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e44:	00090513          	mv	a0,s2
    80005e48:	ffffc097          	auipc	ra,0xffffc
    80005e4c:	478080e7          	jalr	1144(ra) # 800022c0 <_ZdlPv>
    80005e50:	00048513          	mv	a0,s1
    80005e54:	00007097          	auipc	ra,0x7
    80005e58:	fa4080e7          	jalr	-92(ra) # 8000cdf8 <_Unwind_Resume>
    80005e5c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e60:	00090513          	mv	a0,s2
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	45c080e7          	jalr	1116(ra) # 800022c0 <_ZdlPv>
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	00007097          	auipc	ra,0x7
    80005e74:	f88080e7          	jalr	-120(ra) # 8000cdf8 <_Unwind_Resume>

0000000080005e78 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e78:	fe010113          	addi	sp,sp,-32
    80005e7c:	00113c23          	sd	ra,24(sp)
    80005e80:	00813823          	sd	s0,16(sp)
    80005e84:	00913423          	sd	s1,8(sp)
    80005e88:	01213023          	sd	s2,0(sp)
    80005e8c:	02010413          	addi	s0,sp,32
    80005e90:	00050493          	mv	s1,a0
    80005e94:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005e98:	01853503          	ld	a0,24(a0)
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	634080e7          	jalr	1588(ra) # 800024d0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005ea4:	0304b503          	ld	a0,48(s1)
    80005ea8:	ffffc097          	auipc	ra,0xffffc
    80005eac:	628080e7          	jalr	1576(ra) # 800024d0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005eb0:	0084b783          	ld	a5,8(s1)
    80005eb4:	0144a703          	lw	a4,20(s1)
    80005eb8:	00271713          	slli	a4,a4,0x2
    80005ebc:	00e787b3          	add	a5,a5,a4
    80005ec0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ec4:	0144a783          	lw	a5,20(s1)
    80005ec8:	0017879b          	addiw	a5,a5,1
    80005ecc:	0004a703          	lw	a4,0(s1)
    80005ed0:	02e7e7bb          	remw	a5,a5,a4
    80005ed4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ed8:	0304b503          	ld	a0,48(s1)
    80005edc:	ffffc097          	auipc	ra,0xffffc
    80005ee0:	62c080e7          	jalr	1580(ra) # 80002508 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ee4:	0204b503          	ld	a0,32(s1)
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	620080e7          	jalr	1568(ra) # 80002508 <_ZN9Semaphore6signalEv>

}
    80005ef0:	01813083          	ld	ra,24(sp)
    80005ef4:	01013403          	ld	s0,16(sp)
    80005ef8:	00813483          	ld	s1,8(sp)
    80005efc:	00013903          	ld	s2,0(sp)
    80005f00:	02010113          	addi	sp,sp,32
    80005f04:	00008067          	ret

0000000080005f08 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005f08:	fe010113          	addi	sp,sp,-32
    80005f0c:	00113c23          	sd	ra,24(sp)
    80005f10:	00813823          	sd	s0,16(sp)
    80005f14:	00913423          	sd	s1,8(sp)
    80005f18:	01213023          	sd	s2,0(sp)
    80005f1c:	02010413          	addi	s0,sp,32
    80005f20:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f24:	02053503          	ld	a0,32(a0)
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	5a8080e7          	jalr	1448(ra) # 800024d0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f30:	0284b503          	ld	a0,40(s1)
    80005f34:	ffffc097          	auipc	ra,0xffffc
    80005f38:	59c080e7          	jalr	1436(ra) # 800024d0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f3c:	0084b703          	ld	a4,8(s1)
    80005f40:	0104a783          	lw	a5,16(s1)
    80005f44:	00279693          	slli	a3,a5,0x2
    80005f48:	00d70733          	add	a4,a4,a3
    80005f4c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f50:	0017879b          	addiw	a5,a5,1
    80005f54:	0004a703          	lw	a4,0(s1)
    80005f58:	02e7e7bb          	remw	a5,a5,a4
    80005f5c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f60:	0284b503          	ld	a0,40(s1)
    80005f64:	ffffc097          	auipc	ra,0xffffc
    80005f68:	5a4080e7          	jalr	1444(ra) # 80002508 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005f6c:	0184b503          	ld	a0,24(s1)
    80005f70:	ffffc097          	auipc	ra,0xffffc
    80005f74:	598080e7          	jalr	1432(ra) # 80002508 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f78:	00090513          	mv	a0,s2
    80005f7c:	01813083          	ld	ra,24(sp)
    80005f80:	01013403          	ld	s0,16(sp)
    80005f84:	00813483          	ld	s1,8(sp)
    80005f88:	00013903          	ld	s2,0(sp)
    80005f8c:	02010113          	addi	sp,sp,32
    80005f90:	00008067          	ret

0000000080005f94 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005f94:	fe010113          	addi	sp,sp,-32
    80005f98:	00113c23          	sd	ra,24(sp)
    80005f9c:	00813823          	sd	s0,16(sp)
    80005fa0:	00913423          	sd	s1,8(sp)
    80005fa4:	01213023          	sd	s2,0(sp)
    80005fa8:	02010413          	addi	s0,sp,32
    80005fac:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fb0:	02853503          	ld	a0,40(a0)
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	51c080e7          	jalr	1308(ra) # 800024d0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005fbc:	0304b503          	ld	a0,48(s1)
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	510080e7          	jalr	1296(ra) # 800024d0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005fc8:	0144a783          	lw	a5,20(s1)
    80005fcc:	0104a903          	lw	s2,16(s1)
    80005fd0:	0327ce63          	blt	a5,s2,8000600c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005fd4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005fd8:	0304b503          	ld	a0,48(s1)
    80005fdc:	ffffc097          	auipc	ra,0xffffc
    80005fe0:	52c080e7          	jalr	1324(ra) # 80002508 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005fe4:	0284b503          	ld	a0,40(s1)
    80005fe8:	ffffc097          	auipc	ra,0xffffc
    80005fec:	520080e7          	jalr	1312(ra) # 80002508 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ff0:	00090513          	mv	a0,s2
    80005ff4:	01813083          	ld	ra,24(sp)
    80005ff8:	01013403          	ld	s0,16(sp)
    80005ffc:	00813483          	ld	s1,8(sp)
    80006000:	00013903          	ld	s2,0(sp)
    80006004:	02010113          	addi	sp,sp,32
    80006008:	00008067          	ret
        ret = cap - head + tail;
    8000600c:	0004a703          	lw	a4,0(s1)
    80006010:	4127093b          	subw	s2,a4,s2
    80006014:	00f9093b          	addw	s2,s2,a5
    80006018:	fc1ff06f          	j	80005fd8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000601c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000601c:	fe010113          	addi	sp,sp,-32
    80006020:	00113c23          	sd	ra,24(sp)
    80006024:	00813823          	sd	s0,16(sp)
    80006028:	00913423          	sd	s1,8(sp)
    8000602c:	02010413          	addi	s0,sp,32
    80006030:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006034:	00a00513          	li	a0,10
    80006038:	ffffc097          	auipc	ra,0xffffc
    8000603c:	5ac080e7          	jalr	1452(ra) # 800025e4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006040:	00003517          	auipc	a0,0x3
    80006044:	2e850513          	addi	a0,a0,744 # 80009328 <CONSOLE_STATUS+0x318>
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	a0c080e7          	jalr	-1524(ra) # 80005a54 <_Z11printStringPKc>
    while (getCnt()) {
    80006050:	00048513          	mv	a0,s1
    80006054:	00000097          	auipc	ra,0x0
    80006058:	f40080e7          	jalr	-192(ra) # 80005f94 <_ZN9BufferCPP6getCntEv>
    8000605c:	02050c63          	beqz	a0,80006094 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006060:	0084b783          	ld	a5,8(s1)
    80006064:	0104a703          	lw	a4,16(s1)
    80006068:	00271713          	slli	a4,a4,0x2
    8000606c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006070:	0007c503          	lbu	a0,0(a5)
    80006074:	ffffc097          	auipc	ra,0xffffc
    80006078:	570080e7          	jalr	1392(ra) # 800025e4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000607c:	0104a783          	lw	a5,16(s1)
    80006080:	0017879b          	addiw	a5,a5,1
    80006084:	0004a703          	lw	a4,0(s1)
    80006088:	02e7e7bb          	remw	a5,a5,a4
    8000608c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006090:	fc1ff06f          	j	80006050 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006094:	02100513          	li	a0,33
    80006098:	ffffc097          	auipc	ra,0xffffc
    8000609c:	54c080e7          	jalr	1356(ra) # 800025e4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800060a0:	00a00513          	li	a0,10
    800060a4:	ffffc097          	auipc	ra,0xffffc
    800060a8:	540080e7          	jalr	1344(ra) # 800025e4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800060ac:	0084b503          	ld	a0,8(s1)
    800060b0:	ffffb097          	auipc	ra,0xffffb
    800060b4:	200080e7          	jalr	512(ra) # 800012b0 <_Z8mem_freePv>
    delete itemAvailable;
    800060b8:	0204b503          	ld	a0,32(s1)
    800060bc:	00050863          	beqz	a0,800060cc <_ZN9BufferCPPD1Ev+0xb0>
    800060c0:	00053783          	ld	a5,0(a0)
    800060c4:	0087b783          	ld	a5,8(a5)
    800060c8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060cc:	0184b503          	ld	a0,24(s1)
    800060d0:	00050863          	beqz	a0,800060e0 <_ZN9BufferCPPD1Ev+0xc4>
    800060d4:	00053783          	ld	a5,0(a0)
    800060d8:	0087b783          	ld	a5,8(a5)
    800060dc:	000780e7          	jalr	a5
    delete mutexTail;
    800060e0:	0304b503          	ld	a0,48(s1)
    800060e4:	00050863          	beqz	a0,800060f4 <_ZN9BufferCPPD1Ev+0xd8>
    800060e8:	00053783          	ld	a5,0(a0)
    800060ec:	0087b783          	ld	a5,8(a5)
    800060f0:	000780e7          	jalr	a5
    delete mutexHead;
    800060f4:	0284b503          	ld	a0,40(s1)
    800060f8:	00050863          	beqz	a0,80006108 <_ZN9BufferCPPD1Ev+0xec>
    800060fc:	00053783          	ld	a5,0(a0)
    80006100:	0087b783          	ld	a5,8(a5)
    80006104:	000780e7          	jalr	a5
}
    80006108:	01813083          	ld	ra,24(sp)
    8000610c:	01013403          	ld	s0,16(sp)
    80006110:	00813483          	ld	s1,8(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000611c:	fe010113          	addi	sp,sp,-32
    80006120:	00113c23          	sd	ra,24(sp)
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006130:	00003517          	auipc	a0,0x3
    80006134:	21050513          	addi	a0,a0,528 # 80009340 <CONSOLE_STATUS+0x330>
    80006138:	00000097          	auipc	ra,0x0
    8000613c:	91c080e7          	jalr	-1764(ra) # 80005a54 <_Z11printStringPKc>
    int test = getc() - '0';
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	4fc080e7          	jalr	1276(ra) # 8000163c <_Z4getcv>
    80006148:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	4f0080e7          	jalr	1264(ra) # 8000163c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006154:	00700793          	li	a5,7
    80006158:	1097e263          	bltu	a5,s1,8000625c <_Z8userMainv+0x140>
    8000615c:	00249493          	slli	s1,s1,0x2
    80006160:	00003717          	auipc	a4,0x3
    80006164:	43870713          	addi	a4,a4,1080 # 80009598 <CONSOLE_STATUS+0x588>
    80006168:	00e484b3          	add	s1,s1,a4
    8000616c:	0004a783          	lw	a5,0(s1)
    80006170:	00e787b3          	add	a5,a5,a4
    80006174:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	fbc080e7          	jalr	-68(ra) # 80005134 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006180:	00003517          	auipc	a0,0x3
    80006184:	1e050513          	addi	a0,a0,480 # 80009360 <CONSOLE_STATUS+0x350>
    80006188:	00000097          	auipc	ra,0x0
    8000618c:	8cc080e7          	jalr	-1844(ra) # 80005a54 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006190:	01813083          	ld	ra,24(sp)
    80006194:	01013403          	ld	s0,16(sp)
    80006198:	00813483          	ld	s1,8(sp)
    8000619c:	02010113          	addi	sp,sp,32
    800061a0:	00008067          	ret
            Threads_CPP_API_test();
    800061a4:	ffffe097          	auipc	ra,0xffffe
    800061a8:	e5c080e7          	jalr	-420(ra) # 80004000 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800061ac:	00003517          	auipc	a0,0x3
    800061b0:	1f450513          	addi	a0,a0,500 # 800093a0 <CONSOLE_STATUS+0x390>
    800061b4:	00000097          	auipc	ra,0x0
    800061b8:	8a0080e7          	jalr	-1888(ra) # 80005a54 <_Z11printStringPKc>
            break;
    800061bc:	fd5ff06f          	j	80006190 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800061c0:	ffffd097          	auipc	ra,0xffffd
    800061c4:	694080e7          	jalr	1684(ra) # 80003854 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	21850513          	addi	a0,a0,536 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	884080e7          	jalr	-1916(ra) # 80005a54 <_Z11printStringPKc>
            break;
    800061d8:	fb9ff06f          	j	80006190 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	244080e7          	jalr	580(ra) # 80005420 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	24c50513          	addi	a0,a0,588 # 80009430 <CONSOLE_STATUS+0x420>
    800061ec:	00000097          	auipc	ra,0x0
    800061f0:	868080e7          	jalr	-1944(ra) # 80005a54 <_Z11printStringPKc>
            break;
    800061f4:	f9dff06f          	j	80006190 <_Z8userMainv+0x74>
            testSleeping();
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	11c080e7          	jalr	284(ra) # 80006314 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006200:	00003517          	auipc	a0,0x3
    80006204:	28850513          	addi	a0,a0,648 # 80009488 <CONSOLE_STATUS+0x478>
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	84c080e7          	jalr	-1972(ra) # 80005a54 <_Z11printStringPKc>
            break;
    80006210:	f81ff06f          	j	80006190 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006214:	ffffe097          	auipc	ra,0xffffe
    80006218:	2c0080e7          	jalr	704(ra) # 800044d4 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	29c50513          	addi	a0,a0,668 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006224:	00000097          	auipc	ra,0x0
    80006228:	830080e7          	jalr	-2000(ra) # 80005a54 <_Z11printStringPKc>
            break;
    8000622c:	f65ff06f          	j	80006190 <_Z8userMainv+0x74>
            System_Mode_test();
    80006230:	00000097          	auipc	ra,0x0
    80006234:	658080e7          	jalr	1624(ra) # 80006888 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006238:	00003517          	auipc	a0,0x3
    8000623c:	2c050513          	addi	a0,a0,704 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80006240:	00000097          	auipc	ra,0x0
    80006244:	814080e7          	jalr	-2028(ra) # 80005a54 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006248:	00003517          	auipc	a0,0x3
    8000624c:	2d050513          	addi	a0,a0,720 # 80009518 <CONSOLE_STATUS+0x508>
    80006250:	00000097          	auipc	ra,0x0
    80006254:	804080e7          	jalr	-2044(ra) # 80005a54 <_Z11printStringPKc>
            break;
    80006258:	f39ff06f          	j	80006190 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000625c:	00003517          	auipc	a0,0x3
    80006260:	31450513          	addi	a0,a0,788 # 80009570 <CONSOLE_STATUS+0x560>
    80006264:	fffff097          	auipc	ra,0xfffff
    80006268:	7f0080e7          	jalr	2032(ra) # 80005a54 <_Z11printStringPKc>
    8000626c:	f25ff06f          	j	80006190 <_Z8userMainv+0x74>

0000000080006270 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006270:	fe010113          	addi	sp,sp,-32
    80006274:	00113c23          	sd	ra,24(sp)
    80006278:	00813823          	sd	s0,16(sp)
    8000627c:	00913423          	sd	s1,8(sp)
    80006280:	01213023          	sd	s2,0(sp)
    80006284:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006288:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000628c:	00600493          	li	s1,6
    while (--i > 0) {
    80006290:	fff4849b          	addiw	s1,s1,-1
    80006294:	04905463          	blez	s1,800062dc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006298:	00003517          	auipc	a0,0x3
    8000629c:	32050513          	addi	a0,a0,800 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	7b4080e7          	jalr	1972(ra) # 80005a54 <_Z11printStringPKc>
        printInt(sleep_time);
    800062a8:	00000613          	li	a2,0
    800062ac:	00a00593          	li	a1,10
    800062b0:	0009051b          	sext.w	a0,s2
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	950080e7          	jalr	-1712(ra) # 80005c04 <_Z8printIntiii>
        printString(" !\n");
    800062bc:	00003517          	auipc	a0,0x3
    800062c0:	30450513          	addi	a0,a0,772 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800062c4:	fffff097          	auipc	ra,0xfffff
    800062c8:	790080e7          	jalr	1936(ra) # 80005a54 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062cc:	00090513          	mv	a0,s2
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	320080e7          	jalr	800(ra) # 800015f0 <_Z10time_sleepm>
    while (--i > 0) {
    800062d8:	fb9ff06f          	j	80006290 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062dc:	00a00793          	li	a5,10
    800062e0:	02f95933          	divu	s2,s2,a5
    800062e4:	fff90913          	addi	s2,s2,-1
    800062e8:	00006797          	auipc	a5,0x6
    800062ec:	a4078793          	addi	a5,a5,-1472 # 8000bd28 <_ZL8finished>
    800062f0:	01278933          	add	s2,a5,s2
    800062f4:	00100793          	li	a5,1
    800062f8:	00f90023          	sb	a5,0(s2)
}
    800062fc:	01813083          	ld	ra,24(sp)
    80006300:	01013403          	ld	s0,16(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	00013903          	ld	s2,0(sp)
    8000630c:	02010113          	addi	sp,sp,32
    80006310:	00008067          	ret

0000000080006314 <_Z12testSleepingv>:

void testSleeping() {
    80006314:	fc010113          	addi	sp,sp,-64
    80006318:	02113c23          	sd	ra,56(sp)
    8000631c:	02813823          	sd	s0,48(sp)
    80006320:	02913423          	sd	s1,40(sp)
    80006324:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006328:	00a00793          	li	a5,10
    8000632c:	fcf43823          	sd	a5,-48(s0)
    80006330:	01400793          	li	a5,20
    80006334:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006338:	00000493          	li	s1,0
    8000633c:	02c0006f          	j	80006368 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006340:	00349793          	slli	a5,s1,0x3
    80006344:	fd040613          	addi	a2,s0,-48
    80006348:	00f60633          	add	a2,a2,a5
    8000634c:	00000597          	auipc	a1,0x0
    80006350:	f2458593          	addi	a1,a1,-220 # 80006270 <_ZL9sleepyRunPv>
    80006354:	fc040513          	addi	a0,s0,-64
    80006358:	00f50533          	add	a0,a0,a5
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	fa0080e7          	jalr	-96(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006364:	0014849b          	addiw	s1,s1,1
    80006368:	00100793          	li	a5,1
    8000636c:	fc97dae3          	bge	a5,s1,80006340 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006370:	00006797          	auipc	a5,0x6
    80006374:	9b87c783          	lbu	a5,-1608(a5) # 8000bd28 <_ZL8finished>
    80006378:	fe078ce3          	beqz	a5,80006370 <_Z12testSleepingv+0x5c>
    8000637c:	00006797          	auipc	a5,0x6
    80006380:	9ad7c783          	lbu	a5,-1619(a5) # 8000bd29 <_ZL8finished+0x1>
    80006384:	fe0786e3          	beqz	a5,80006370 <_Z12testSleepingv+0x5c>
}
    80006388:	03813083          	ld	ra,56(sp)
    8000638c:	03013403          	ld	s0,48(sp)
    80006390:	02813483          	ld	s1,40(sp)
    80006394:	04010113          	addi	sp,sp,64
    80006398:	00008067          	ret

000000008000639c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000639c:	fe010113          	addi	sp,sp,-32
    800063a0:	00113c23          	sd	ra,24(sp)
    800063a4:	00813823          	sd	s0,16(sp)
    800063a8:	00913423          	sd	s1,8(sp)
    800063ac:	01213023          	sd	s2,0(sp)
    800063b0:	02010413          	addi	s0,sp,32
    800063b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063b8:	00100793          	li	a5,1
    800063bc:	02a7f863          	bgeu	a5,a0,800063ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063c0:	00a00793          	li	a5,10
    800063c4:	02f577b3          	remu	a5,a0,a5
    800063c8:	02078e63          	beqz	a5,80006404 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063cc:	fff48513          	addi	a0,s1,-1
    800063d0:	00000097          	auipc	ra,0x0
    800063d4:	fcc080e7          	jalr	-52(ra) # 8000639c <_ZL9fibonaccim>
    800063d8:	00050913          	mv	s2,a0
    800063dc:	ffe48513          	addi	a0,s1,-2
    800063e0:	00000097          	auipc	ra,0x0
    800063e4:	fbc080e7          	jalr	-68(ra) # 8000639c <_ZL9fibonaccim>
    800063e8:	00a90533          	add	a0,s2,a0
}
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	00813483          	ld	s1,8(sp)
    800063f8:	00013903          	ld	s2,0(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	fd8080e7          	jalr	-40(ra) # 800013dc <_Z15thread_dispatchv>
    8000640c:	fc1ff06f          	j	800063cc <_ZL9fibonaccim+0x30>

0000000080006410 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006410:	fe010113          	addi	sp,sp,-32
    80006414:	00113c23          	sd	ra,24(sp)
    80006418:	00813823          	sd	s0,16(sp)
    8000641c:	00913423          	sd	s1,8(sp)
    80006420:	01213023          	sd	s2,0(sp)
    80006424:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006428:	00a00493          	li	s1,10
    8000642c:	0400006f          	j	8000646c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006430:	00003517          	auipc	a0,0x3
    80006434:	e5050513          	addi	a0,a0,-432 # 80009280 <CONSOLE_STATUS+0x270>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	61c080e7          	jalr	1564(ra) # 80005a54 <_Z11printStringPKc>
    80006440:	00000613          	li	a2,0
    80006444:	00a00593          	li	a1,10
    80006448:	00048513          	mv	a0,s1
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	7b8080e7          	jalr	1976(ra) # 80005c04 <_Z8printIntiii>
    80006454:	00003517          	auipc	a0,0x3
    80006458:	02c50513          	addi	a0,a0,44 # 80009480 <CONSOLE_STATUS+0x470>
    8000645c:	fffff097          	auipc	ra,0xfffff
    80006460:	5f8080e7          	jalr	1528(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006464:	0014849b          	addiw	s1,s1,1
    80006468:	0ff4f493          	andi	s1,s1,255
    8000646c:	00c00793          	li	a5,12
    80006470:	fc97f0e3          	bgeu	a5,s1,80006430 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006474:	00003517          	auipc	a0,0x3
    80006478:	e1450513          	addi	a0,a0,-492 # 80009288 <CONSOLE_STATUS+0x278>
    8000647c:	fffff097          	auipc	ra,0xfffff
    80006480:	5d8080e7          	jalr	1496(ra) # 80005a54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006484:	00500313          	li	t1,5
    thread_dispatch();
    80006488:	ffffb097          	auipc	ra,0xffffb
    8000648c:	f54080e7          	jalr	-172(ra) # 800013dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006490:	01000513          	li	a0,16
    80006494:	00000097          	auipc	ra,0x0
    80006498:	f08080e7          	jalr	-248(ra) # 8000639c <_ZL9fibonaccim>
    8000649c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	df850513          	addi	a0,a0,-520 # 80009298 <CONSOLE_STATUS+0x288>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	5ac080e7          	jalr	1452(ra) # 80005a54 <_Z11printStringPKc>
    800064b0:	00000613          	li	a2,0
    800064b4:	00a00593          	li	a1,10
    800064b8:	0009051b          	sext.w	a0,s2
    800064bc:	fffff097          	auipc	ra,0xfffff
    800064c0:	748080e7          	jalr	1864(ra) # 80005c04 <_Z8printIntiii>
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	fbc50513          	addi	a0,a0,-68 # 80009480 <CONSOLE_STATUS+0x470>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	588080e7          	jalr	1416(ra) # 80005a54 <_Z11printStringPKc>
    800064d4:	0400006f          	j	80006514 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	da850513          	addi	a0,a0,-600 # 80009280 <CONSOLE_STATUS+0x270>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	574080e7          	jalr	1396(ra) # 80005a54 <_Z11printStringPKc>
    800064e8:	00000613          	li	a2,0
    800064ec:	00a00593          	li	a1,10
    800064f0:	00048513          	mv	a0,s1
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	710080e7          	jalr	1808(ra) # 80005c04 <_Z8printIntiii>
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	f8450513          	addi	a0,a0,-124 # 80009480 <CONSOLE_STATUS+0x470>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	550080e7          	jalr	1360(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000650c:	0014849b          	addiw	s1,s1,1
    80006510:	0ff4f493          	andi	s1,s1,255
    80006514:	00f00793          	li	a5,15
    80006518:	fc97f0e3          	bgeu	a5,s1,800064d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	d8c50513          	addi	a0,a0,-628 # 800092a8 <CONSOLE_STATUS+0x298>
    80006524:	fffff097          	auipc	ra,0xfffff
    80006528:	530080e7          	jalr	1328(ra) # 80005a54 <_Z11printStringPKc>
    finishedD = true;
    8000652c:	00100793          	li	a5,1
    80006530:	00005717          	auipc	a4,0x5
    80006534:	7ef70d23          	sb	a5,2042(a4) # 8000bd2a <_ZL9finishedD>
    thread_dispatch();
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	ea4080e7          	jalr	-348(ra) # 800013dc <_Z15thread_dispatchv>
}
    80006540:	01813083          	ld	ra,24(sp)
    80006544:	01013403          	ld	s0,16(sp)
    80006548:	00813483          	ld	s1,8(sp)
    8000654c:	00013903          	ld	s2,0(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret

0000000080006558 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006558:	fe010113          	addi	sp,sp,-32
    8000655c:	00113c23          	sd	ra,24(sp)
    80006560:	00813823          	sd	s0,16(sp)
    80006564:	00913423          	sd	s1,8(sp)
    80006568:	01213023          	sd	s2,0(sp)
    8000656c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006570:	00000493          	li	s1,0
    80006574:	0400006f          	j	800065b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	cd850513          	addi	a0,a0,-808 # 80009250 <CONSOLE_STATUS+0x240>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	4d4080e7          	jalr	1236(ra) # 80005a54 <_Z11printStringPKc>
    80006588:	00000613          	li	a2,0
    8000658c:	00a00593          	li	a1,10
    80006590:	00048513          	mv	a0,s1
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	670080e7          	jalr	1648(ra) # 80005c04 <_Z8printIntiii>
    8000659c:	00003517          	auipc	a0,0x3
    800065a0:	ee450513          	addi	a0,a0,-284 # 80009480 <CONSOLE_STATUS+0x470>
    800065a4:	fffff097          	auipc	ra,0xfffff
    800065a8:	4b0080e7          	jalr	1200(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800065ac:	0014849b          	addiw	s1,s1,1
    800065b0:	0ff4f493          	andi	s1,s1,255
    800065b4:	00200793          	li	a5,2
    800065b8:	fc97f0e3          	bgeu	a5,s1,80006578 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065bc:	00003517          	auipc	a0,0x3
    800065c0:	c9c50513          	addi	a0,a0,-868 # 80009258 <CONSOLE_STATUS+0x248>
    800065c4:	fffff097          	auipc	ra,0xfffff
    800065c8:	490080e7          	jalr	1168(ra) # 80005a54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065cc:	00700313          	li	t1,7
    thread_dispatch();
    800065d0:	ffffb097          	auipc	ra,0xffffb
    800065d4:	e0c080e7          	jalr	-500(ra) # 800013dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065dc:	00003517          	auipc	a0,0x3
    800065e0:	c8c50513          	addi	a0,a0,-884 # 80009268 <CONSOLE_STATUS+0x258>
    800065e4:	fffff097          	auipc	ra,0xfffff
    800065e8:	470080e7          	jalr	1136(ra) # 80005a54 <_Z11printStringPKc>
    800065ec:	00000613          	li	a2,0
    800065f0:	00a00593          	li	a1,10
    800065f4:	0009051b          	sext.w	a0,s2
    800065f8:	fffff097          	auipc	ra,0xfffff
    800065fc:	60c080e7          	jalr	1548(ra) # 80005c04 <_Z8printIntiii>
    80006600:	00003517          	auipc	a0,0x3
    80006604:	e8050513          	addi	a0,a0,-384 # 80009480 <CONSOLE_STATUS+0x470>
    80006608:	fffff097          	auipc	ra,0xfffff
    8000660c:	44c080e7          	jalr	1100(ra) # 80005a54 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006610:	00c00513          	li	a0,12
    80006614:	00000097          	auipc	ra,0x0
    80006618:	d88080e7          	jalr	-632(ra) # 8000639c <_ZL9fibonaccim>
    8000661c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006620:	00003517          	auipc	a0,0x3
    80006624:	c5050513          	addi	a0,a0,-944 # 80009270 <CONSOLE_STATUS+0x260>
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	42c080e7          	jalr	1068(ra) # 80005a54 <_Z11printStringPKc>
    80006630:	00000613          	li	a2,0
    80006634:	00a00593          	li	a1,10
    80006638:	0009051b          	sext.w	a0,s2
    8000663c:	fffff097          	auipc	ra,0xfffff
    80006640:	5c8080e7          	jalr	1480(ra) # 80005c04 <_Z8printIntiii>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	e3c50513          	addi	a0,a0,-452 # 80009480 <CONSOLE_STATUS+0x470>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	408080e7          	jalr	1032(ra) # 80005a54 <_Z11printStringPKc>
    80006654:	0400006f          	j	80006694 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	bf850513          	addi	a0,a0,-1032 # 80009250 <CONSOLE_STATUS+0x240>
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	3f4080e7          	jalr	1012(ra) # 80005a54 <_Z11printStringPKc>
    80006668:	00000613          	li	a2,0
    8000666c:	00a00593          	li	a1,10
    80006670:	00048513          	mv	a0,s1
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	590080e7          	jalr	1424(ra) # 80005c04 <_Z8printIntiii>
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	e0450513          	addi	a0,a0,-508 # 80009480 <CONSOLE_STATUS+0x470>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	3d0080e7          	jalr	976(ra) # 80005a54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000668c:	0014849b          	addiw	s1,s1,1
    80006690:	0ff4f493          	andi	s1,s1,255
    80006694:	00500793          	li	a5,5
    80006698:	fc97f0e3          	bgeu	a5,s1,80006658 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	b8c50513          	addi	a0,a0,-1140 # 80009228 <CONSOLE_STATUS+0x218>
    800066a4:	fffff097          	auipc	ra,0xfffff
    800066a8:	3b0080e7          	jalr	944(ra) # 80005a54 <_Z11printStringPKc>
    finishedC = true;
    800066ac:	00100793          	li	a5,1
    800066b0:	00005717          	auipc	a4,0x5
    800066b4:	66f70da3          	sb	a5,1659(a4) # 8000bd2b <_ZL9finishedC>
    thread_dispatch();
    800066b8:	ffffb097          	auipc	ra,0xffffb
    800066bc:	d24080e7          	jalr	-732(ra) # 800013dc <_Z15thread_dispatchv>
}
    800066c0:	01813083          	ld	ra,24(sp)
    800066c4:	01013403          	ld	s0,16(sp)
    800066c8:	00813483          	ld	s1,8(sp)
    800066cc:	00013903          	ld	s2,0(sp)
    800066d0:	02010113          	addi	sp,sp,32
    800066d4:	00008067          	ret

00000000800066d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066d8:	fe010113          	addi	sp,sp,-32
    800066dc:	00113c23          	sd	ra,24(sp)
    800066e0:	00813823          	sd	s0,16(sp)
    800066e4:	00913423          	sd	s1,8(sp)
    800066e8:	01213023          	sd	s2,0(sp)
    800066ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800066f0:	00000913          	li	s2,0
    800066f4:	0400006f          	j	80006734 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800066f8:	ffffb097          	auipc	ra,0xffffb
    800066fc:	ce4080e7          	jalr	-796(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006700:	00148493          	addi	s1,s1,1
    80006704:	000027b7          	lui	a5,0x2
    80006708:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000670c:	0097ee63          	bltu	a5,s1,80006728 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006710:	00000713          	li	a4,0
    80006714:	000077b7          	lui	a5,0x7
    80006718:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000671c:	fce7eee3          	bltu	a5,a4,800066f8 <_ZL11workerBodyBPv+0x20>
    80006720:	00170713          	addi	a4,a4,1
    80006724:	ff1ff06f          	j	80006714 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006728:	00a00793          	li	a5,10
    8000672c:	04f90663          	beq	s2,a5,80006778 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006730:	00190913          	addi	s2,s2,1
    80006734:	00f00793          	li	a5,15
    80006738:	0527e463          	bltu	a5,s2,80006780 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000673c:	00003517          	auipc	a0,0x3
    80006740:	afc50513          	addi	a0,a0,-1284 # 80009238 <CONSOLE_STATUS+0x228>
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	310080e7          	jalr	784(ra) # 80005a54 <_Z11printStringPKc>
    8000674c:	00000613          	li	a2,0
    80006750:	00a00593          	li	a1,10
    80006754:	0009051b          	sext.w	a0,s2
    80006758:	fffff097          	auipc	ra,0xfffff
    8000675c:	4ac080e7          	jalr	1196(ra) # 80005c04 <_Z8printIntiii>
    80006760:	00003517          	auipc	a0,0x3
    80006764:	d2050513          	addi	a0,a0,-736 # 80009480 <CONSOLE_STATUS+0x470>
    80006768:	fffff097          	auipc	ra,0xfffff
    8000676c:	2ec080e7          	jalr	748(ra) # 80005a54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006770:	00000493          	li	s1,0
    80006774:	f91ff06f          	j	80006704 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006778:	14102ff3          	csrr	t6,sepc
    8000677c:	fb5ff06f          	j	80006730 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006780:	00003517          	auipc	a0,0x3
    80006784:	ac050513          	addi	a0,a0,-1344 # 80009240 <CONSOLE_STATUS+0x230>
    80006788:	fffff097          	auipc	ra,0xfffff
    8000678c:	2cc080e7          	jalr	716(ra) # 80005a54 <_Z11printStringPKc>
    finishedB = true;
    80006790:	00100793          	li	a5,1
    80006794:	00005717          	auipc	a4,0x5
    80006798:	58f70c23          	sb	a5,1432(a4) # 8000bd2c <_ZL9finishedB>
    thread_dispatch();
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	c40080e7          	jalr	-960(ra) # 800013dc <_Z15thread_dispatchv>
}
    800067a4:	01813083          	ld	ra,24(sp)
    800067a8:	01013403          	ld	s0,16(sp)
    800067ac:	00813483          	ld	s1,8(sp)
    800067b0:	00013903          	ld	s2,0(sp)
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	00008067          	ret

00000000800067bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067bc:	fe010113          	addi	sp,sp,-32
    800067c0:	00113c23          	sd	ra,24(sp)
    800067c4:	00813823          	sd	s0,16(sp)
    800067c8:	00913423          	sd	s1,8(sp)
    800067cc:	01213023          	sd	s2,0(sp)
    800067d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067d4:	00000913          	li	s2,0
    800067d8:	0380006f          	j	80006810 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	c00080e7          	jalr	-1024(ra) # 800013dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067e4:	00148493          	addi	s1,s1,1
    800067e8:	000027b7          	lui	a5,0x2
    800067ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067f0:	0097ee63          	bltu	a5,s1,8000680c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067f4:	00000713          	li	a4,0
    800067f8:	000077b7          	lui	a5,0x7
    800067fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006800:	fce7eee3          	bltu	a5,a4,800067dc <_ZL11workerBodyAPv+0x20>
    80006804:	00170713          	addi	a4,a4,1
    80006808:	ff1ff06f          	j	800067f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000680c:	00190913          	addi	s2,s2,1
    80006810:	00900793          	li	a5,9
    80006814:	0527e063          	bltu	a5,s2,80006854 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006818:	00003517          	auipc	a0,0x3
    8000681c:	a0850513          	addi	a0,a0,-1528 # 80009220 <CONSOLE_STATUS+0x210>
    80006820:	fffff097          	auipc	ra,0xfffff
    80006824:	234080e7          	jalr	564(ra) # 80005a54 <_Z11printStringPKc>
    80006828:	00000613          	li	a2,0
    8000682c:	00a00593          	li	a1,10
    80006830:	0009051b          	sext.w	a0,s2
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	3d0080e7          	jalr	976(ra) # 80005c04 <_Z8printIntiii>
    8000683c:	00003517          	auipc	a0,0x3
    80006840:	c4450513          	addi	a0,a0,-956 # 80009480 <CONSOLE_STATUS+0x470>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	210080e7          	jalr	528(ra) # 80005a54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000684c:	00000493          	li	s1,0
    80006850:	f99ff06f          	j	800067e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006854:	00003517          	auipc	a0,0x3
    80006858:	9d450513          	addi	a0,a0,-1580 # 80009228 <CONSOLE_STATUS+0x218>
    8000685c:	fffff097          	auipc	ra,0xfffff
    80006860:	1f8080e7          	jalr	504(ra) # 80005a54 <_Z11printStringPKc>
    finishedA = true;
    80006864:	00100793          	li	a5,1
    80006868:	00005717          	auipc	a4,0x5
    8000686c:	4cf702a3          	sb	a5,1221(a4) # 8000bd2d <_ZL9finishedA>
}
    80006870:	01813083          	ld	ra,24(sp)
    80006874:	01013403          	ld	s0,16(sp)
    80006878:	00813483          	ld	s1,8(sp)
    8000687c:	00013903          	ld	s2,0(sp)
    80006880:	02010113          	addi	sp,sp,32
    80006884:	00008067          	ret

0000000080006888 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006888:	fd010113          	addi	sp,sp,-48
    8000688c:	02113423          	sd	ra,40(sp)
    80006890:	02813023          	sd	s0,32(sp)
    80006894:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006898:	00000613          	li	a2,0
    8000689c:	00000597          	auipc	a1,0x0
    800068a0:	f2058593          	addi	a1,a1,-224 # 800067bc <_ZL11workerBodyAPv>
    800068a4:	fd040513          	addi	a0,s0,-48
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	a54080e7          	jalr	-1452(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	a0850513          	addi	a0,a0,-1528 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	19c080e7          	jalr	412(ra) # 80005a54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068c0:	00000613          	li	a2,0
    800068c4:	00000597          	auipc	a1,0x0
    800068c8:	e1458593          	addi	a1,a1,-492 # 800066d8 <_ZL11workerBodyBPv>
    800068cc:	fd840513          	addi	a0,s0,-40
    800068d0:	ffffb097          	auipc	ra,0xffffb
    800068d4:	a2c080e7          	jalr	-1492(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800068d8:	00003517          	auipc	a0,0x3
    800068dc:	9f850513          	addi	a0,a0,-1544 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800068e0:	fffff097          	auipc	ra,0xfffff
    800068e4:	174080e7          	jalr	372(ra) # 80005a54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068e8:	00000613          	li	a2,0
    800068ec:	00000597          	auipc	a1,0x0
    800068f0:	c6c58593          	addi	a1,a1,-916 # 80006558 <_ZL11workerBodyCPv>
    800068f4:	fe040513          	addi	a0,s0,-32
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	a04080e7          	jalr	-1532(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006900:	00003517          	auipc	a0,0x3
    80006904:	9e850513          	addi	a0,a0,-1560 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80006908:	fffff097          	auipc	ra,0xfffff
    8000690c:	14c080e7          	jalr	332(ra) # 80005a54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006910:	00000613          	li	a2,0
    80006914:	00000597          	auipc	a1,0x0
    80006918:	afc58593          	addi	a1,a1,-1284 # 80006410 <_ZL11workerBodyDPv>
    8000691c:	fe840513          	addi	a0,s0,-24
    80006920:	ffffb097          	auipc	ra,0xffffb
    80006924:	9dc080e7          	jalr	-1572(ra) # 800012fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006928:	00003517          	auipc	a0,0x3
    8000692c:	9d850513          	addi	a0,a0,-1576 # 80009300 <CONSOLE_STATUS+0x2f0>
    80006930:	fffff097          	auipc	ra,0xfffff
    80006934:	124080e7          	jalr	292(ra) # 80005a54 <_Z11printStringPKc>
    80006938:	00c0006f          	j	80006944 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000693c:	ffffb097          	auipc	ra,0xffffb
    80006940:	aa0080e7          	jalr	-1376(ra) # 800013dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006944:	00005797          	auipc	a5,0x5
    80006948:	3e97c783          	lbu	a5,1001(a5) # 8000bd2d <_ZL9finishedA>
    8000694c:	fe0788e3          	beqz	a5,8000693c <_Z16System_Mode_testv+0xb4>
    80006950:	00005797          	auipc	a5,0x5
    80006954:	3dc7c783          	lbu	a5,988(a5) # 8000bd2c <_ZL9finishedB>
    80006958:	fe0782e3          	beqz	a5,8000693c <_Z16System_Mode_testv+0xb4>
    8000695c:	00005797          	auipc	a5,0x5
    80006960:	3cf7c783          	lbu	a5,975(a5) # 8000bd2b <_ZL9finishedC>
    80006964:	fc078ce3          	beqz	a5,8000693c <_Z16System_Mode_testv+0xb4>
    80006968:	00005797          	auipc	a5,0x5
    8000696c:	3c27c783          	lbu	a5,962(a5) # 8000bd2a <_ZL9finishedD>
    80006970:	fc0786e3          	beqz	a5,8000693c <_Z16System_Mode_testv+0xb4>
    }

}
    80006974:	02813083          	ld	ra,40(sp)
    80006978:	02013403          	ld	s0,32(sp)
    8000697c:	03010113          	addi	sp,sp,48
    80006980:	00008067          	ret

0000000080006984 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006984:	fe010113          	addi	sp,sp,-32
    80006988:	00113c23          	sd	ra,24(sp)
    8000698c:	00813823          	sd	s0,16(sp)
    80006990:	00913423          	sd	s1,8(sp)
    80006994:	01213023          	sd	s2,0(sp)
    80006998:	02010413          	addi	s0,sp,32
    8000699c:	00050493          	mv	s1,a0
    800069a0:	00058913          	mv	s2,a1
    800069a4:	0015879b          	addiw	a5,a1,1
    800069a8:	0007851b          	sext.w	a0,a5
    800069ac:	00f4a023          	sw	a5,0(s1)
    800069b0:	0004a823          	sw	zero,16(s1)
    800069b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069b8:	00251513          	slli	a0,a0,0x2
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	8a4080e7          	jalr	-1884(ra) # 80001260 <_Z9mem_allocm>
    800069c4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069c8:	00000593          	li	a1,0
    800069cc:	02048513          	addi	a0,s1,32
    800069d0:	ffffb097          	auipc	ra,0xffffb
    800069d4:	a48080e7          	jalr	-1464(ra) # 80001418 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    800069d8:	00090593          	mv	a1,s2
    800069dc:	01848513          	addi	a0,s1,24
    800069e0:	ffffb097          	auipc	ra,0xffffb
    800069e4:	a38080e7          	jalr	-1480(ra) # 80001418 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    800069e8:	00100593          	li	a1,1
    800069ec:	02848513          	addi	a0,s1,40
    800069f0:	ffffb097          	auipc	ra,0xffffb
    800069f4:	a28080e7          	jalr	-1496(ra) # 80001418 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    800069f8:	00100593          	li	a1,1
    800069fc:	03048513          	addi	a0,s1,48
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	a18080e7          	jalr	-1512(ra) # 80001418 <_Z8sem_openPP3Semj>
}
    80006a08:	01813083          	ld	ra,24(sp)
    80006a0c:	01013403          	ld	s0,16(sp)
    80006a10:	00813483          	ld	s1,8(sp)
    80006a14:	00013903          	ld	s2,0(sp)
    80006a18:	02010113          	addi	sp,sp,32
    80006a1c:	00008067          	ret

0000000080006a20 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a20:	fe010113          	addi	sp,sp,-32
    80006a24:	00113c23          	sd	ra,24(sp)
    80006a28:	00813823          	sd	s0,16(sp)
    80006a2c:	00913423          	sd	s1,8(sp)
    80006a30:	01213023          	sd	s2,0(sp)
    80006a34:	02010413          	addi	s0,sp,32
    80006a38:	00050493          	mv	s1,a0
    80006a3c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a40:	01853503          	ld	a0,24(a0)
    80006a44:	ffffb097          	auipc	ra,0xffffb
    80006a48:	a7c080e7          	jalr	-1412(ra) # 800014c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006a4c:	0304b503          	ld	a0,48(s1)
    80006a50:	ffffb097          	auipc	ra,0xffffb
    80006a54:	a70080e7          	jalr	-1424(ra) # 800014c0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006a58:	0084b783          	ld	a5,8(s1)
    80006a5c:	0144a703          	lw	a4,20(s1)
    80006a60:	00271713          	slli	a4,a4,0x2
    80006a64:	00e787b3          	add	a5,a5,a4
    80006a68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a6c:	0144a783          	lw	a5,20(s1)
    80006a70:	0017879b          	addiw	a5,a5,1
    80006a74:	0004a703          	lw	a4,0(s1)
    80006a78:	02e7e7bb          	remw	a5,a5,a4
    80006a7c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a80:	0304b503          	ld	a0,48(s1)
    80006a84:	ffffb097          	auipc	ra,0xffffb
    80006a88:	b20080e7          	jalr	-1248(ra) # 800015a4 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006a8c:	0204b503          	ld	a0,32(s1)
    80006a90:	ffffb097          	auipc	ra,0xffffb
    80006a94:	b14080e7          	jalr	-1260(ra) # 800015a4 <_Z10sem_signalP3Sem>

}
    80006a98:	01813083          	ld	ra,24(sp)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	00013903          	ld	s2,0(sp)
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00008067          	ret

0000000080006ab0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006ab0:	fe010113          	addi	sp,sp,-32
    80006ab4:	00113c23          	sd	ra,24(sp)
    80006ab8:	00813823          	sd	s0,16(sp)
    80006abc:	00913423          	sd	s1,8(sp)
    80006ac0:	01213023          	sd	s2,0(sp)
    80006ac4:	02010413          	addi	s0,sp,32
    80006ac8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006acc:	02053503          	ld	a0,32(a0)
    80006ad0:	ffffb097          	auipc	ra,0xffffb
    80006ad4:	9f0080e7          	jalr	-1552(ra) # 800014c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006ad8:	0284b503          	ld	a0,40(s1)
    80006adc:	ffffb097          	auipc	ra,0xffffb
    80006ae0:	9e4080e7          	jalr	-1564(ra) # 800014c0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006ae4:	0084b703          	ld	a4,8(s1)
    80006ae8:	0104a783          	lw	a5,16(s1)
    80006aec:	00279693          	slli	a3,a5,0x2
    80006af0:	00d70733          	add	a4,a4,a3
    80006af4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006af8:	0017879b          	addiw	a5,a5,1
    80006afc:	0004a703          	lw	a4,0(s1)
    80006b00:	02e7e7bb          	remw	a5,a5,a4
    80006b04:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006b08:	0284b503          	ld	a0,40(s1)
    80006b0c:	ffffb097          	auipc	ra,0xffffb
    80006b10:	a98080e7          	jalr	-1384(ra) # 800015a4 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006b14:	0184b503          	ld	a0,24(s1)
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	a8c080e7          	jalr	-1396(ra) # 800015a4 <_Z10sem_signalP3Sem>

    return ret;
}
    80006b20:	00090513          	mv	a0,s2
    80006b24:	01813083          	ld	ra,24(sp)
    80006b28:	01013403          	ld	s0,16(sp)
    80006b2c:	00813483          	ld	s1,8(sp)
    80006b30:	00013903          	ld	s2,0(sp)
    80006b34:	02010113          	addi	sp,sp,32
    80006b38:	00008067          	ret

0000000080006b3c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b3c:	fe010113          	addi	sp,sp,-32
    80006b40:	00113c23          	sd	ra,24(sp)
    80006b44:	00813823          	sd	s0,16(sp)
    80006b48:	00913423          	sd	s1,8(sp)
    80006b4c:	01213023          	sd	s2,0(sp)
    80006b50:	02010413          	addi	s0,sp,32
    80006b54:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b58:	02853503          	ld	a0,40(a0)
    80006b5c:	ffffb097          	auipc	ra,0xffffb
    80006b60:	964080e7          	jalr	-1692(ra) # 800014c0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006b64:	0304b503          	ld	a0,48(s1)
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	958080e7          	jalr	-1704(ra) # 800014c0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006b70:	0144a783          	lw	a5,20(s1)
    80006b74:	0104a903          	lw	s2,16(s1)
    80006b78:	0327ce63          	blt	a5,s2,80006bb4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b80:	0304b503          	ld	a0,48(s1)
    80006b84:	ffffb097          	auipc	ra,0xffffb
    80006b88:	a20080e7          	jalr	-1504(ra) # 800015a4 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006b8c:	0284b503          	ld	a0,40(s1)
    80006b90:	ffffb097          	auipc	ra,0xffffb
    80006b94:	a14080e7          	jalr	-1516(ra) # 800015a4 <_Z10sem_signalP3Sem>

    return ret;
}
    80006b98:	00090513          	mv	a0,s2
    80006b9c:	01813083          	ld	ra,24(sp)
    80006ba0:	01013403          	ld	s0,16(sp)
    80006ba4:	00813483          	ld	s1,8(sp)
    80006ba8:	00013903          	ld	s2,0(sp)
    80006bac:	02010113          	addi	sp,sp,32
    80006bb0:	00008067          	ret
        ret = cap - head + tail;
    80006bb4:	0004a703          	lw	a4,0(s1)
    80006bb8:	4127093b          	subw	s2,a4,s2
    80006bbc:	00f9093b          	addw	s2,s2,a5
    80006bc0:	fc1ff06f          	j	80006b80 <_ZN6Buffer6getCntEv+0x44>

0000000080006bc4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bc4:	fe010113          	addi	sp,sp,-32
    80006bc8:	00113c23          	sd	ra,24(sp)
    80006bcc:	00813823          	sd	s0,16(sp)
    80006bd0:	00913423          	sd	s1,8(sp)
    80006bd4:	02010413          	addi	s0,sp,32
    80006bd8:	00050493          	mv	s1,a0
    putc('\n');
    80006bdc:	00a00513          	li	a0,10
    80006be0:	ffffb097          	auipc	ra,0xffffb
    80006be4:	aa8080e7          	jalr	-1368(ra) # 80001688 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006be8:	00002517          	auipc	a0,0x2
    80006bec:	74050513          	addi	a0,a0,1856 # 80009328 <CONSOLE_STATUS+0x318>
    80006bf0:	fffff097          	auipc	ra,0xfffff
    80006bf4:	e64080e7          	jalr	-412(ra) # 80005a54 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006bf8:	00048513          	mv	a0,s1
    80006bfc:	00000097          	auipc	ra,0x0
    80006c00:	f40080e7          	jalr	-192(ra) # 80006b3c <_ZN6Buffer6getCntEv>
    80006c04:	02a05c63          	blez	a0,80006c3c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c08:	0084b783          	ld	a5,8(s1)
    80006c0c:	0104a703          	lw	a4,16(s1)
    80006c10:	00271713          	slli	a4,a4,0x2
    80006c14:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c18:	0007c503          	lbu	a0,0(a5)
    80006c1c:	ffffb097          	auipc	ra,0xffffb
    80006c20:	a6c080e7          	jalr	-1428(ra) # 80001688 <_Z4putcc>
        head = (head + 1) % cap;
    80006c24:	0104a783          	lw	a5,16(s1)
    80006c28:	0017879b          	addiw	a5,a5,1
    80006c2c:	0004a703          	lw	a4,0(s1)
    80006c30:	02e7e7bb          	remw	a5,a5,a4
    80006c34:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c38:	fc1ff06f          	j	80006bf8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c3c:	02100513          	li	a0,33
    80006c40:	ffffb097          	auipc	ra,0xffffb
    80006c44:	a48080e7          	jalr	-1464(ra) # 80001688 <_Z4putcc>
    putc('\n');
    80006c48:	00a00513          	li	a0,10
    80006c4c:	ffffb097          	auipc	ra,0xffffb
    80006c50:	a3c080e7          	jalr	-1476(ra) # 80001688 <_Z4putcc>
    mem_free(buffer);
    80006c54:	0084b503          	ld	a0,8(s1)
    80006c58:	ffffa097          	auipc	ra,0xffffa
    80006c5c:	658080e7          	jalr	1624(ra) # 800012b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c60:	0204b503          	ld	a0,32(s1)
    80006c64:	ffffb097          	auipc	ra,0xffffb
    80006c68:	804080e7          	jalr	-2044(ra) # 80001468 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80006c6c:	0184b503          	ld	a0,24(s1)
    80006c70:	ffffa097          	auipc	ra,0xffffa
    80006c74:	7f8080e7          	jalr	2040(ra) # 80001468 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006c78:	0304b503          	ld	a0,48(s1)
    80006c7c:	ffffa097          	auipc	ra,0xffffa
    80006c80:	7ec080e7          	jalr	2028(ra) # 80001468 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006c84:	0284b503          	ld	a0,40(s1)
    80006c88:	ffffa097          	auipc	ra,0xffffa
    80006c8c:	7e0080e7          	jalr	2016(ra) # 80001468 <_Z9sem_closeP3Sem>
}
    80006c90:	01813083          	ld	ra,24(sp)
    80006c94:	01013403          	ld	s0,16(sp)
    80006c98:	00813483          	ld	s1,8(sp)
    80006c9c:	02010113          	addi	sp,sp,32
    80006ca0:	00008067          	ret

0000000080006ca4 <start>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813423          	sd	s0,8(sp)
    80006cac:	01010413          	addi	s0,sp,16
    80006cb0:	300027f3          	csrr	a5,mstatus
    80006cb4:	ffffe737          	lui	a4,0xffffe
    80006cb8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff186f>
    80006cbc:	00e7f7b3          	and	a5,a5,a4
    80006cc0:	00001737          	lui	a4,0x1
    80006cc4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cc8:	00e7e7b3          	or	a5,a5,a4
    80006ccc:	30079073          	csrw	mstatus,a5
    80006cd0:	00000797          	auipc	a5,0x0
    80006cd4:	16078793          	addi	a5,a5,352 # 80006e30 <system_main>
    80006cd8:	34179073          	csrw	mepc,a5
    80006cdc:	00000793          	li	a5,0
    80006ce0:	18079073          	csrw	satp,a5
    80006ce4:	000107b7          	lui	a5,0x10
    80006ce8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006cec:	30279073          	csrw	medeleg,a5
    80006cf0:	30379073          	csrw	mideleg,a5
    80006cf4:	104027f3          	csrr	a5,sie
    80006cf8:	2227e793          	ori	a5,a5,546
    80006cfc:	10479073          	csrw	sie,a5
    80006d00:	fff00793          	li	a5,-1
    80006d04:	00a7d793          	srli	a5,a5,0xa
    80006d08:	3b079073          	csrw	pmpaddr0,a5
    80006d0c:	00f00793          	li	a5,15
    80006d10:	3a079073          	csrw	pmpcfg0,a5
    80006d14:	f14027f3          	csrr	a5,mhartid
    80006d18:	0200c737          	lui	a4,0x200c
    80006d1c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d20:	0007869b          	sext.w	a3,a5
    80006d24:	00269713          	slli	a4,a3,0x2
    80006d28:	000f4637          	lui	a2,0xf4
    80006d2c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d30:	00d70733          	add	a4,a4,a3
    80006d34:	0037979b          	slliw	a5,a5,0x3
    80006d38:	020046b7          	lui	a3,0x2004
    80006d3c:	00d787b3          	add	a5,a5,a3
    80006d40:	00c585b3          	add	a1,a1,a2
    80006d44:	00371693          	slli	a3,a4,0x3
    80006d48:	00005717          	auipc	a4,0x5
    80006d4c:	fe870713          	addi	a4,a4,-24 # 8000bd30 <timer_scratch>
    80006d50:	00b7b023          	sd	a1,0(a5)
    80006d54:	00d70733          	add	a4,a4,a3
    80006d58:	00f73c23          	sd	a5,24(a4)
    80006d5c:	02c73023          	sd	a2,32(a4)
    80006d60:	34071073          	csrw	mscratch,a4
    80006d64:	00000797          	auipc	a5,0x0
    80006d68:	6ec78793          	addi	a5,a5,1772 # 80007450 <timervec>
    80006d6c:	30579073          	csrw	mtvec,a5
    80006d70:	300027f3          	csrr	a5,mstatus
    80006d74:	0087e793          	ori	a5,a5,8
    80006d78:	30079073          	csrw	mstatus,a5
    80006d7c:	304027f3          	csrr	a5,mie
    80006d80:	0807e793          	ori	a5,a5,128
    80006d84:	30479073          	csrw	mie,a5
    80006d88:	f14027f3          	csrr	a5,mhartid
    80006d8c:	0007879b          	sext.w	a5,a5
    80006d90:	00078213          	mv	tp,a5
    80006d94:	30200073          	mret
    80006d98:	00813403          	ld	s0,8(sp)
    80006d9c:	01010113          	addi	sp,sp,16
    80006da0:	00008067          	ret

0000000080006da4 <timerinit>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813423          	sd	s0,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	f14027f3          	csrr	a5,mhartid
    80006db4:	0200c737          	lui	a4,0x200c
    80006db8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006dbc:	0007869b          	sext.w	a3,a5
    80006dc0:	00269713          	slli	a4,a3,0x2
    80006dc4:	000f4637          	lui	a2,0xf4
    80006dc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006dcc:	00d70733          	add	a4,a4,a3
    80006dd0:	0037979b          	slliw	a5,a5,0x3
    80006dd4:	020046b7          	lui	a3,0x2004
    80006dd8:	00d787b3          	add	a5,a5,a3
    80006ddc:	00c585b3          	add	a1,a1,a2
    80006de0:	00371693          	slli	a3,a4,0x3
    80006de4:	00005717          	auipc	a4,0x5
    80006de8:	f4c70713          	addi	a4,a4,-180 # 8000bd30 <timer_scratch>
    80006dec:	00b7b023          	sd	a1,0(a5)
    80006df0:	00d70733          	add	a4,a4,a3
    80006df4:	00f73c23          	sd	a5,24(a4)
    80006df8:	02c73023          	sd	a2,32(a4)
    80006dfc:	34071073          	csrw	mscratch,a4
    80006e00:	00000797          	auipc	a5,0x0
    80006e04:	65078793          	addi	a5,a5,1616 # 80007450 <timervec>
    80006e08:	30579073          	csrw	mtvec,a5
    80006e0c:	300027f3          	csrr	a5,mstatus
    80006e10:	0087e793          	ori	a5,a5,8
    80006e14:	30079073          	csrw	mstatus,a5
    80006e18:	304027f3          	csrr	a5,mie
    80006e1c:	0807e793          	ori	a5,a5,128
    80006e20:	30479073          	csrw	mie,a5
    80006e24:	00813403          	ld	s0,8(sp)
    80006e28:	01010113          	addi	sp,sp,16
    80006e2c:	00008067          	ret

0000000080006e30 <system_main>:
    80006e30:	fe010113          	addi	sp,sp,-32
    80006e34:	00813823          	sd	s0,16(sp)
    80006e38:	00913423          	sd	s1,8(sp)
    80006e3c:	00113c23          	sd	ra,24(sp)
    80006e40:	02010413          	addi	s0,sp,32
    80006e44:	00000097          	auipc	ra,0x0
    80006e48:	0c4080e7          	jalr	196(ra) # 80006f08 <cpuid>
    80006e4c:	00005497          	auipc	s1,0x5
    80006e50:	de448493          	addi	s1,s1,-540 # 8000bc30 <started>
    80006e54:	02050263          	beqz	a0,80006e78 <system_main+0x48>
    80006e58:	0004a783          	lw	a5,0(s1)
    80006e5c:	0007879b          	sext.w	a5,a5
    80006e60:	fe078ce3          	beqz	a5,80006e58 <system_main+0x28>
    80006e64:	0ff0000f          	fence
    80006e68:	00002517          	auipc	a0,0x2
    80006e6c:	79050513          	addi	a0,a0,1936 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006e70:	00001097          	auipc	ra,0x1
    80006e74:	a7c080e7          	jalr	-1412(ra) # 800078ec <panic>
    80006e78:	00001097          	auipc	ra,0x1
    80006e7c:	9d0080e7          	jalr	-1584(ra) # 80007848 <consoleinit>
    80006e80:	00001097          	auipc	ra,0x1
    80006e84:	15c080e7          	jalr	348(ra) # 80007fdc <printfinit>
    80006e88:	00002517          	auipc	a0,0x2
    80006e8c:	5f850513          	addi	a0,a0,1528 # 80009480 <CONSOLE_STATUS+0x470>
    80006e90:	00001097          	auipc	ra,0x1
    80006e94:	ab8080e7          	jalr	-1352(ra) # 80007948 <__printf>
    80006e98:	00002517          	auipc	a0,0x2
    80006e9c:	73050513          	addi	a0,a0,1840 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006ea0:	00001097          	auipc	ra,0x1
    80006ea4:	aa8080e7          	jalr	-1368(ra) # 80007948 <__printf>
    80006ea8:	00002517          	auipc	a0,0x2
    80006eac:	5d850513          	addi	a0,a0,1496 # 80009480 <CONSOLE_STATUS+0x470>
    80006eb0:	00001097          	auipc	ra,0x1
    80006eb4:	a98080e7          	jalr	-1384(ra) # 80007948 <__printf>
    80006eb8:	00001097          	auipc	ra,0x1
    80006ebc:	4b0080e7          	jalr	1200(ra) # 80008368 <kinit>
    80006ec0:	00000097          	auipc	ra,0x0
    80006ec4:	148080e7          	jalr	328(ra) # 80007008 <trapinit>
    80006ec8:	00000097          	auipc	ra,0x0
    80006ecc:	16c080e7          	jalr	364(ra) # 80007034 <trapinithart>
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	5c0080e7          	jalr	1472(ra) # 80007490 <plicinit>
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	5e0080e7          	jalr	1504(ra) # 800074b8 <plicinithart>
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	078080e7          	jalr	120(ra) # 80006f58 <userinit>
    80006ee8:	0ff0000f          	fence
    80006eec:	00100793          	li	a5,1
    80006ef0:	00002517          	auipc	a0,0x2
    80006ef4:	6f050513          	addi	a0,a0,1776 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006ef8:	00f4a023          	sw	a5,0(s1)
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	a4c080e7          	jalr	-1460(ra) # 80007948 <__printf>
    80006f04:	0000006f          	j	80006f04 <system_main+0xd4>

0000000080006f08 <cpuid>:
    80006f08:	ff010113          	addi	sp,sp,-16
    80006f0c:	00813423          	sd	s0,8(sp)
    80006f10:	01010413          	addi	s0,sp,16
    80006f14:	00020513          	mv	a0,tp
    80006f18:	00813403          	ld	s0,8(sp)
    80006f1c:	0005051b          	sext.w	a0,a0
    80006f20:	01010113          	addi	sp,sp,16
    80006f24:	00008067          	ret

0000000080006f28 <mycpu>:
    80006f28:	ff010113          	addi	sp,sp,-16
    80006f2c:	00813423          	sd	s0,8(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	00020793          	mv	a5,tp
    80006f38:	00813403          	ld	s0,8(sp)
    80006f3c:	0007879b          	sext.w	a5,a5
    80006f40:	00779793          	slli	a5,a5,0x7
    80006f44:	00006517          	auipc	a0,0x6
    80006f48:	e1c50513          	addi	a0,a0,-484 # 8000cd60 <cpus>
    80006f4c:	00f50533          	add	a0,a0,a5
    80006f50:	01010113          	addi	sp,sp,16
    80006f54:	00008067          	ret

0000000080006f58 <userinit>:
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00813423          	sd	s0,8(sp)
    80006f60:	01010413          	addi	s0,sp,16
    80006f64:	00813403          	ld	s0,8(sp)
    80006f68:	01010113          	addi	sp,sp,16
    80006f6c:	ffffb317          	auipc	t1,0xffffb
    80006f70:	12c30067          	jr	300(t1) # 80002098 <main>

0000000080006f74 <either_copyout>:
    80006f74:	ff010113          	addi	sp,sp,-16
    80006f78:	00813023          	sd	s0,0(sp)
    80006f7c:	00113423          	sd	ra,8(sp)
    80006f80:	01010413          	addi	s0,sp,16
    80006f84:	02051663          	bnez	a0,80006fb0 <either_copyout+0x3c>
    80006f88:	00058513          	mv	a0,a1
    80006f8c:	00060593          	mv	a1,a2
    80006f90:	0006861b          	sext.w	a2,a3
    80006f94:	00002097          	auipc	ra,0x2
    80006f98:	c60080e7          	jalr	-928(ra) # 80008bf4 <__memmove>
    80006f9c:	00813083          	ld	ra,8(sp)
    80006fa0:	00013403          	ld	s0,0(sp)
    80006fa4:	00000513          	li	a0,0
    80006fa8:	01010113          	addi	sp,sp,16
    80006fac:	00008067          	ret
    80006fb0:	00002517          	auipc	a0,0x2
    80006fb4:	67050513          	addi	a0,a0,1648 # 80009620 <CONSOLE_STATUS+0x610>
    80006fb8:	00001097          	auipc	ra,0x1
    80006fbc:	934080e7          	jalr	-1740(ra) # 800078ec <panic>

0000000080006fc0 <either_copyin>:
    80006fc0:	ff010113          	addi	sp,sp,-16
    80006fc4:	00813023          	sd	s0,0(sp)
    80006fc8:	00113423          	sd	ra,8(sp)
    80006fcc:	01010413          	addi	s0,sp,16
    80006fd0:	02059463          	bnez	a1,80006ff8 <either_copyin+0x38>
    80006fd4:	00060593          	mv	a1,a2
    80006fd8:	0006861b          	sext.w	a2,a3
    80006fdc:	00002097          	auipc	ra,0x2
    80006fe0:	c18080e7          	jalr	-1000(ra) # 80008bf4 <__memmove>
    80006fe4:	00813083          	ld	ra,8(sp)
    80006fe8:	00013403          	ld	s0,0(sp)
    80006fec:	00000513          	li	a0,0
    80006ff0:	01010113          	addi	sp,sp,16
    80006ff4:	00008067          	ret
    80006ff8:	00002517          	auipc	a0,0x2
    80006ffc:	65050513          	addi	a0,a0,1616 # 80009648 <CONSOLE_STATUS+0x638>
    80007000:	00001097          	auipc	ra,0x1
    80007004:	8ec080e7          	jalr	-1812(ra) # 800078ec <panic>

0000000080007008 <trapinit>:
    80007008:	ff010113          	addi	sp,sp,-16
    8000700c:	00813423          	sd	s0,8(sp)
    80007010:	01010413          	addi	s0,sp,16
    80007014:	00813403          	ld	s0,8(sp)
    80007018:	00002597          	auipc	a1,0x2
    8000701c:	65858593          	addi	a1,a1,1624 # 80009670 <CONSOLE_STATUS+0x660>
    80007020:	00006517          	auipc	a0,0x6
    80007024:	dc050513          	addi	a0,a0,-576 # 8000cde0 <tickslock>
    80007028:	01010113          	addi	sp,sp,16
    8000702c:	00001317          	auipc	t1,0x1
    80007030:	5cc30067          	jr	1484(t1) # 800085f8 <initlock>

0000000080007034 <trapinithart>:
    80007034:	ff010113          	addi	sp,sp,-16
    80007038:	00813423          	sd	s0,8(sp)
    8000703c:	01010413          	addi	s0,sp,16
    80007040:	00000797          	auipc	a5,0x0
    80007044:	30078793          	addi	a5,a5,768 # 80007340 <kernelvec>
    80007048:	10579073          	csrw	stvec,a5
    8000704c:	00813403          	ld	s0,8(sp)
    80007050:	01010113          	addi	sp,sp,16
    80007054:	00008067          	ret

0000000080007058 <usertrap>:
    80007058:	ff010113          	addi	sp,sp,-16
    8000705c:	00813423          	sd	s0,8(sp)
    80007060:	01010413          	addi	s0,sp,16
    80007064:	00813403          	ld	s0,8(sp)
    80007068:	01010113          	addi	sp,sp,16
    8000706c:	00008067          	ret

0000000080007070 <usertrapret>:
    80007070:	ff010113          	addi	sp,sp,-16
    80007074:	00813423          	sd	s0,8(sp)
    80007078:	01010413          	addi	s0,sp,16
    8000707c:	00813403          	ld	s0,8(sp)
    80007080:	01010113          	addi	sp,sp,16
    80007084:	00008067          	ret

0000000080007088 <kerneltrap>:
    80007088:	fe010113          	addi	sp,sp,-32
    8000708c:	00813823          	sd	s0,16(sp)
    80007090:	00113c23          	sd	ra,24(sp)
    80007094:	00913423          	sd	s1,8(sp)
    80007098:	02010413          	addi	s0,sp,32
    8000709c:	142025f3          	csrr	a1,scause
    800070a0:	100027f3          	csrr	a5,sstatus
    800070a4:	0027f793          	andi	a5,a5,2
    800070a8:	10079c63          	bnez	a5,800071c0 <kerneltrap+0x138>
    800070ac:	142027f3          	csrr	a5,scause
    800070b0:	0207ce63          	bltz	a5,800070ec <kerneltrap+0x64>
    800070b4:	00002517          	auipc	a0,0x2
    800070b8:	60450513          	addi	a0,a0,1540 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800070bc:	00001097          	auipc	ra,0x1
    800070c0:	88c080e7          	jalr	-1908(ra) # 80007948 <__printf>
    800070c4:	141025f3          	csrr	a1,sepc
    800070c8:	14302673          	csrr	a2,stval
    800070cc:	00002517          	auipc	a0,0x2
    800070d0:	5fc50513          	addi	a0,a0,1532 # 800096c8 <CONSOLE_STATUS+0x6b8>
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	874080e7          	jalr	-1932(ra) # 80007948 <__printf>
    800070dc:	00002517          	auipc	a0,0x2
    800070e0:	60450513          	addi	a0,a0,1540 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	808080e7          	jalr	-2040(ra) # 800078ec <panic>
    800070ec:	0ff7f713          	andi	a4,a5,255
    800070f0:	00900693          	li	a3,9
    800070f4:	04d70063          	beq	a4,a3,80007134 <kerneltrap+0xac>
    800070f8:	fff00713          	li	a4,-1
    800070fc:	03f71713          	slli	a4,a4,0x3f
    80007100:	00170713          	addi	a4,a4,1
    80007104:	fae798e3          	bne	a5,a4,800070b4 <kerneltrap+0x2c>
    80007108:	00000097          	auipc	ra,0x0
    8000710c:	e00080e7          	jalr	-512(ra) # 80006f08 <cpuid>
    80007110:	06050663          	beqz	a0,8000717c <kerneltrap+0xf4>
    80007114:	144027f3          	csrr	a5,sip
    80007118:	ffd7f793          	andi	a5,a5,-3
    8000711c:	14479073          	csrw	sip,a5
    80007120:	01813083          	ld	ra,24(sp)
    80007124:	01013403          	ld	s0,16(sp)
    80007128:	00813483          	ld	s1,8(sp)
    8000712c:	02010113          	addi	sp,sp,32
    80007130:	00008067          	ret
    80007134:	00000097          	auipc	ra,0x0
    80007138:	3d0080e7          	jalr	976(ra) # 80007504 <plic_claim>
    8000713c:	00a00793          	li	a5,10
    80007140:	00050493          	mv	s1,a0
    80007144:	06f50863          	beq	a0,a5,800071b4 <kerneltrap+0x12c>
    80007148:	fc050ce3          	beqz	a0,80007120 <kerneltrap+0x98>
    8000714c:	00050593          	mv	a1,a0
    80007150:	00002517          	auipc	a0,0x2
    80007154:	54850513          	addi	a0,a0,1352 # 80009698 <CONSOLE_STATUS+0x688>
    80007158:	00000097          	auipc	ra,0x0
    8000715c:	7f0080e7          	jalr	2032(ra) # 80007948 <__printf>
    80007160:	01013403          	ld	s0,16(sp)
    80007164:	01813083          	ld	ra,24(sp)
    80007168:	00048513          	mv	a0,s1
    8000716c:	00813483          	ld	s1,8(sp)
    80007170:	02010113          	addi	sp,sp,32
    80007174:	00000317          	auipc	t1,0x0
    80007178:	3c830067          	jr	968(t1) # 8000753c <plic_complete>
    8000717c:	00006517          	auipc	a0,0x6
    80007180:	c6450513          	addi	a0,a0,-924 # 8000cde0 <tickslock>
    80007184:	00001097          	auipc	ra,0x1
    80007188:	498080e7          	jalr	1176(ra) # 8000861c <acquire>
    8000718c:	00005717          	auipc	a4,0x5
    80007190:	aa870713          	addi	a4,a4,-1368 # 8000bc34 <ticks>
    80007194:	00072783          	lw	a5,0(a4)
    80007198:	00006517          	auipc	a0,0x6
    8000719c:	c4850513          	addi	a0,a0,-952 # 8000cde0 <tickslock>
    800071a0:	0017879b          	addiw	a5,a5,1
    800071a4:	00f72023          	sw	a5,0(a4)
    800071a8:	00001097          	auipc	ra,0x1
    800071ac:	540080e7          	jalr	1344(ra) # 800086e8 <release>
    800071b0:	f65ff06f          	j	80007114 <kerneltrap+0x8c>
    800071b4:	00001097          	auipc	ra,0x1
    800071b8:	09c080e7          	jalr	156(ra) # 80008250 <uartintr>
    800071bc:	fa5ff06f          	j	80007160 <kerneltrap+0xd8>
    800071c0:	00002517          	auipc	a0,0x2
    800071c4:	4b850513          	addi	a0,a0,1208 # 80009678 <CONSOLE_STATUS+0x668>
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	724080e7          	jalr	1828(ra) # 800078ec <panic>

00000000800071d0 <clockintr>:
    800071d0:	fe010113          	addi	sp,sp,-32
    800071d4:	00813823          	sd	s0,16(sp)
    800071d8:	00913423          	sd	s1,8(sp)
    800071dc:	00113c23          	sd	ra,24(sp)
    800071e0:	02010413          	addi	s0,sp,32
    800071e4:	00006497          	auipc	s1,0x6
    800071e8:	bfc48493          	addi	s1,s1,-1028 # 8000cde0 <tickslock>
    800071ec:	00048513          	mv	a0,s1
    800071f0:	00001097          	auipc	ra,0x1
    800071f4:	42c080e7          	jalr	1068(ra) # 8000861c <acquire>
    800071f8:	00005717          	auipc	a4,0x5
    800071fc:	a3c70713          	addi	a4,a4,-1476 # 8000bc34 <ticks>
    80007200:	00072783          	lw	a5,0(a4)
    80007204:	01013403          	ld	s0,16(sp)
    80007208:	01813083          	ld	ra,24(sp)
    8000720c:	00048513          	mv	a0,s1
    80007210:	0017879b          	addiw	a5,a5,1
    80007214:	00813483          	ld	s1,8(sp)
    80007218:	00f72023          	sw	a5,0(a4)
    8000721c:	02010113          	addi	sp,sp,32
    80007220:	00001317          	auipc	t1,0x1
    80007224:	4c830067          	jr	1224(t1) # 800086e8 <release>

0000000080007228 <devintr>:
    80007228:	142027f3          	csrr	a5,scause
    8000722c:	00000513          	li	a0,0
    80007230:	0007c463          	bltz	a5,80007238 <devintr+0x10>
    80007234:	00008067          	ret
    80007238:	fe010113          	addi	sp,sp,-32
    8000723c:	00813823          	sd	s0,16(sp)
    80007240:	00113c23          	sd	ra,24(sp)
    80007244:	00913423          	sd	s1,8(sp)
    80007248:	02010413          	addi	s0,sp,32
    8000724c:	0ff7f713          	andi	a4,a5,255
    80007250:	00900693          	li	a3,9
    80007254:	04d70c63          	beq	a4,a3,800072ac <devintr+0x84>
    80007258:	fff00713          	li	a4,-1
    8000725c:	03f71713          	slli	a4,a4,0x3f
    80007260:	00170713          	addi	a4,a4,1
    80007264:	00e78c63          	beq	a5,a4,8000727c <devintr+0x54>
    80007268:	01813083          	ld	ra,24(sp)
    8000726c:	01013403          	ld	s0,16(sp)
    80007270:	00813483          	ld	s1,8(sp)
    80007274:	02010113          	addi	sp,sp,32
    80007278:	00008067          	ret
    8000727c:	00000097          	auipc	ra,0x0
    80007280:	c8c080e7          	jalr	-884(ra) # 80006f08 <cpuid>
    80007284:	06050663          	beqz	a0,800072f0 <devintr+0xc8>
    80007288:	144027f3          	csrr	a5,sip
    8000728c:	ffd7f793          	andi	a5,a5,-3
    80007290:	14479073          	csrw	sip,a5
    80007294:	01813083          	ld	ra,24(sp)
    80007298:	01013403          	ld	s0,16(sp)
    8000729c:	00813483          	ld	s1,8(sp)
    800072a0:	00200513          	li	a0,2
    800072a4:	02010113          	addi	sp,sp,32
    800072a8:	00008067          	ret
    800072ac:	00000097          	auipc	ra,0x0
    800072b0:	258080e7          	jalr	600(ra) # 80007504 <plic_claim>
    800072b4:	00a00793          	li	a5,10
    800072b8:	00050493          	mv	s1,a0
    800072bc:	06f50663          	beq	a0,a5,80007328 <devintr+0x100>
    800072c0:	00100513          	li	a0,1
    800072c4:	fa0482e3          	beqz	s1,80007268 <devintr+0x40>
    800072c8:	00048593          	mv	a1,s1
    800072cc:	00002517          	auipc	a0,0x2
    800072d0:	3cc50513          	addi	a0,a0,972 # 80009698 <CONSOLE_STATUS+0x688>
    800072d4:	00000097          	auipc	ra,0x0
    800072d8:	674080e7          	jalr	1652(ra) # 80007948 <__printf>
    800072dc:	00048513          	mv	a0,s1
    800072e0:	00000097          	auipc	ra,0x0
    800072e4:	25c080e7          	jalr	604(ra) # 8000753c <plic_complete>
    800072e8:	00100513          	li	a0,1
    800072ec:	f7dff06f          	j	80007268 <devintr+0x40>
    800072f0:	00006517          	auipc	a0,0x6
    800072f4:	af050513          	addi	a0,a0,-1296 # 8000cde0 <tickslock>
    800072f8:	00001097          	auipc	ra,0x1
    800072fc:	324080e7          	jalr	804(ra) # 8000861c <acquire>
    80007300:	00005717          	auipc	a4,0x5
    80007304:	93470713          	addi	a4,a4,-1740 # 8000bc34 <ticks>
    80007308:	00072783          	lw	a5,0(a4)
    8000730c:	00006517          	auipc	a0,0x6
    80007310:	ad450513          	addi	a0,a0,-1324 # 8000cde0 <tickslock>
    80007314:	0017879b          	addiw	a5,a5,1
    80007318:	00f72023          	sw	a5,0(a4)
    8000731c:	00001097          	auipc	ra,0x1
    80007320:	3cc080e7          	jalr	972(ra) # 800086e8 <release>
    80007324:	f65ff06f          	j	80007288 <devintr+0x60>
    80007328:	00001097          	auipc	ra,0x1
    8000732c:	f28080e7          	jalr	-216(ra) # 80008250 <uartintr>
    80007330:	fadff06f          	j	800072dc <devintr+0xb4>
	...

0000000080007340 <kernelvec>:
    80007340:	f0010113          	addi	sp,sp,-256
    80007344:	00113023          	sd	ra,0(sp)
    80007348:	00213423          	sd	sp,8(sp)
    8000734c:	00313823          	sd	gp,16(sp)
    80007350:	00413c23          	sd	tp,24(sp)
    80007354:	02513023          	sd	t0,32(sp)
    80007358:	02613423          	sd	t1,40(sp)
    8000735c:	02713823          	sd	t2,48(sp)
    80007360:	02813c23          	sd	s0,56(sp)
    80007364:	04913023          	sd	s1,64(sp)
    80007368:	04a13423          	sd	a0,72(sp)
    8000736c:	04b13823          	sd	a1,80(sp)
    80007370:	04c13c23          	sd	a2,88(sp)
    80007374:	06d13023          	sd	a3,96(sp)
    80007378:	06e13423          	sd	a4,104(sp)
    8000737c:	06f13823          	sd	a5,112(sp)
    80007380:	07013c23          	sd	a6,120(sp)
    80007384:	09113023          	sd	a7,128(sp)
    80007388:	09213423          	sd	s2,136(sp)
    8000738c:	09313823          	sd	s3,144(sp)
    80007390:	09413c23          	sd	s4,152(sp)
    80007394:	0b513023          	sd	s5,160(sp)
    80007398:	0b613423          	sd	s6,168(sp)
    8000739c:	0b713823          	sd	s7,176(sp)
    800073a0:	0b813c23          	sd	s8,184(sp)
    800073a4:	0d913023          	sd	s9,192(sp)
    800073a8:	0da13423          	sd	s10,200(sp)
    800073ac:	0db13823          	sd	s11,208(sp)
    800073b0:	0dc13c23          	sd	t3,216(sp)
    800073b4:	0fd13023          	sd	t4,224(sp)
    800073b8:	0fe13423          	sd	t5,232(sp)
    800073bc:	0ff13823          	sd	t6,240(sp)
    800073c0:	cc9ff0ef          	jal	ra,80007088 <kerneltrap>
    800073c4:	00013083          	ld	ra,0(sp)
    800073c8:	00813103          	ld	sp,8(sp)
    800073cc:	01013183          	ld	gp,16(sp)
    800073d0:	02013283          	ld	t0,32(sp)
    800073d4:	02813303          	ld	t1,40(sp)
    800073d8:	03013383          	ld	t2,48(sp)
    800073dc:	03813403          	ld	s0,56(sp)
    800073e0:	04013483          	ld	s1,64(sp)
    800073e4:	04813503          	ld	a0,72(sp)
    800073e8:	05013583          	ld	a1,80(sp)
    800073ec:	05813603          	ld	a2,88(sp)
    800073f0:	06013683          	ld	a3,96(sp)
    800073f4:	06813703          	ld	a4,104(sp)
    800073f8:	07013783          	ld	a5,112(sp)
    800073fc:	07813803          	ld	a6,120(sp)
    80007400:	08013883          	ld	a7,128(sp)
    80007404:	08813903          	ld	s2,136(sp)
    80007408:	09013983          	ld	s3,144(sp)
    8000740c:	09813a03          	ld	s4,152(sp)
    80007410:	0a013a83          	ld	s5,160(sp)
    80007414:	0a813b03          	ld	s6,168(sp)
    80007418:	0b013b83          	ld	s7,176(sp)
    8000741c:	0b813c03          	ld	s8,184(sp)
    80007420:	0c013c83          	ld	s9,192(sp)
    80007424:	0c813d03          	ld	s10,200(sp)
    80007428:	0d013d83          	ld	s11,208(sp)
    8000742c:	0d813e03          	ld	t3,216(sp)
    80007430:	0e013e83          	ld	t4,224(sp)
    80007434:	0e813f03          	ld	t5,232(sp)
    80007438:	0f013f83          	ld	t6,240(sp)
    8000743c:	10010113          	addi	sp,sp,256
    80007440:	10200073          	sret
    80007444:	00000013          	nop
    80007448:	00000013          	nop
    8000744c:	00000013          	nop

0000000080007450 <timervec>:
    80007450:	34051573          	csrrw	a0,mscratch,a0
    80007454:	00b53023          	sd	a1,0(a0)
    80007458:	00c53423          	sd	a2,8(a0)
    8000745c:	00d53823          	sd	a3,16(a0)
    80007460:	01853583          	ld	a1,24(a0)
    80007464:	02053603          	ld	a2,32(a0)
    80007468:	0005b683          	ld	a3,0(a1)
    8000746c:	00c686b3          	add	a3,a3,a2
    80007470:	00d5b023          	sd	a3,0(a1)
    80007474:	00200593          	li	a1,2
    80007478:	14459073          	csrw	sip,a1
    8000747c:	01053683          	ld	a3,16(a0)
    80007480:	00853603          	ld	a2,8(a0)
    80007484:	00053583          	ld	a1,0(a0)
    80007488:	34051573          	csrrw	a0,mscratch,a0
    8000748c:	30200073          	mret

0000000080007490 <plicinit>:
    80007490:	ff010113          	addi	sp,sp,-16
    80007494:	00813423          	sd	s0,8(sp)
    80007498:	01010413          	addi	s0,sp,16
    8000749c:	00813403          	ld	s0,8(sp)
    800074a0:	0c0007b7          	lui	a5,0xc000
    800074a4:	00100713          	li	a4,1
    800074a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800074ac:	00e7a223          	sw	a4,4(a5)
    800074b0:	01010113          	addi	sp,sp,16
    800074b4:	00008067          	ret

00000000800074b8 <plicinithart>:
    800074b8:	ff010113          	addi	sp,sp,-16
    800074bc:	00813023          	sd	s0,0(sp)
    800074c0:	00113423          	sd	ra,8(sp)
    800074c4:	01010413          	addi	s0,sp,16
    800074c8:	00000097          	auipc	ra,0x0
    800074cc:	a40080e7          	jalr	-1472(ra) # 80006f08 <cpuid>
    800074d0:	0085171b          	slliw	a4,a0,0x8
    800074d4:	0c0027b7          	lui	a5,0xc002
    800074d8:	00e787b3          	add	a5,a5,a4
    800074dc:	40200713          	li	a4,1026
    800074e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074e4:	00813083          	ld	ra,8(sp)
    800074e8:	00013403          	ld	s0,0(sp)
    800074ec:	00d5151b          	slliw	a0,a0,0xd
    800074f0:	0c2017b7          	lui	a5,0xc201
    800074f4:	00a78533          	add	a0,a5,a0
    800074f8:	00052023          	sw	zero,0(a0)
    800074fc:	01010113          	addi	sp,sp,16
    80007500:	00008067          	ret

0000000080007504 <plic_claim>:
    80007504:	ff010113          	addi	sp,sp,-16
    80007508:	00813023          	sd	s0,0(sp)
    8000750c:	00113423          	sd	ra,8(sp)
    80007510:	01010413          	addi	s0,sp,16
    80007514:	00000097          	auipc	ra,0x0
    80007518:	9f4080e7          	jalr	-1548(ra) # 80006f08 <cpuid>
    8000751c:	00813083          	ld	ra,8(sp)
    80007520:	00013403          	ld	s0,0(sp)
    80007524:	00d5151b          	slliw	a0,a0,0xd
    80007528:	0c2017b7          	lui	a5,0xc201
    8000752c:	00a78533          	add	a0,a5,a0
    80007530:	00452503          	lw	a0,4(a0)
    80007534:	01010113          	addi	sp,sp,16
    80007538:	00008067          	ret

000000008000753c <plic_complete>:
    8000753c:	fe010113          	addi	sp,sp,-32
    80007540:	00813823          	sd	s0,16(sp)
    80007544:	00913423          	sd	s1,8(sp)
    80007548:	00113c23          	sd	ra,24(sp)
    8000754c:	02010413          	addi	s0,sp,32
    80007550:	00050493          	mv	s1,a0
    80007554:	00000097          	auipc	ra,0x0
    80007558:	9b4080e7          	jalr	-1612(ra) # 80006f08 <cpuid>
    8000755c:	01813083          	ld	ra,24(sp)
    80007560:	01013403          	ld	s0,16(sp)
    80007564:	00d5179b          	slliw	a5,a0,0xd
    80007568:	0c201737          	lui	a4,0xc201
    8000756c:	00f707b3          	add	a5,a4,a5
    80007570:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007574:	00813483          	ld	s1,8(sp)
    80007578:	02010113          	addi	sp,sp,32
    8000757c:	00008067          	ret

0000000080007580 <consolewrite>:
    80007580:	fb010113          	addi	sp,sp,-80
    80007584:	04813023          	sd	s0,64(sp)
    80007588:	04113423          	sd	ra,72(sp)
    8000758c:	02913c23          	sd	s1,56(sp)
    80007590:	03213823          	sd	s2,48(sp)
    80007594:	03313423          	sd	s3,40(sp)
    80007598:	03413023          	sd	s4,32(sp)
    8000759c:	01513c23          	sd	s5,24(sp)
    800075a0:	05010413          	addi	s0,sp,80
    800075a4:	06c05c63          	blez	a2,8000761c <consolewrite+0x9c>
    800075a8:	00060993          	mv	s3,a2
    800075ac:	00050a13          	mv	s4,a0
    800075b0:	00058493          	mv	s1,a1
    800075b4:	00000913          	li	s2,0
    800075b8:	fff00a93          	li	s5,-1
    800075bc:	01c0006f          	j	800075d8 <consolewrite+0x58>
    800075c0:	fbf44503          	lbu	a0,-65(s0)
    800075c4:	0019091b          	addiw	s2,s2,1
    800075c8:	00148493          	addi	s1,s1,1
    800075cc:	00001097          	auipc	ra,0x1
    800075d0:	a9c080e7          	jalr	-1380(ra) # 80008068 <uartputc>
    800075d4:	03298063          	beq	s3,s2,800075f4 <consolewrite+0x74>
    800075d8:	00048613          	mv	a2,s1
    800075dc:	00100693          	li	a3,1
    800075e0:	000a0593          	mv	a1,s4
    800075e4:	fbf40513          	addi	a0,s0,-65
    800075e8:	00000097          	auipc	ra,0x0
    800075ec:	9d8080e7          	jalr	-1576(ra) # 80006fc0 <either_copyin>
    800075f0:	fd5518e3          	bne	a0,s5,800075c0 <consolewrite+0x40>
    800075f4:	04813083          	ld	ra,72(sp)
    800075f8:	04013403          	ld	s0,64(sp)
    800075fc:	03813483          	ld	s1,56(sp)
    80007600:	02813983          	ld	s3,40(sp)
    80007604:	02013a03          	ld	s4,32(sp)
    80007608:	01813a83          	ld	s5,24(sp)
    8000760c:	00090513          	mv	a0,s2
    80007610:	03013903          	ld	s2,48(sp)
    80007614:	05010113          	addi	sp,sp,80
    80007618:	00008067          	ret
    8000761c:	00000913          	li	s2,0
    80007620:	fd5ff06f          	j	800075f4 <consolewrite+0x74>

0000000080007624 <consoleread>:
    80007624:	f9010113          	addi	sp,sp,-112
    80007628:	06813023          	sd	s0,96(sp)
    8000762c:	04913c23          	sd	s1,88(sp)
    80007630:	05213823          	sd	s2,80(sp)
    80007634:	05313423          	sd	s3,72(sp)
    80007638:	05413023          	sd	s4,64(sp)
    8000763c:	03513c23          	sd	s5,56(sp)
    80007640:	03613823          	sd	s6,48(sp)
    80007644:	03713423          	sd	s7,40(sp)
    80007648:	03813023          	sd	s8,32(sp)
    8000764c:	06113423          	sd	ra,104(sp)
    80007650:	01913c23          	sd	s9,24(sp)
    80007654:	07010413          	addi	s0,sp,112
    80007658:	00060b93          	mv	s7,a2
    8000765c:	00050913          	mv	s2,a0
    80007660:	00058c13          	mv	s8,a1
    80007664:	00060b1b          	sext.w	s6,a2
    80007668:	00005497          	auipc	s1,0x5
    8000766c:	7a048493          	addi	s1,s1,1952 # 8000ce08 <cons>
    80007670:	00400993          	li	s3,4
    80007674:	fff00a13          	li	s4,-1
    80007678:	00a00a93          	li	s5,10
    8000767c:	05705e63          	blez	s7,800076d8 <consoleread+0xb4>
    80007680:	09c4a703          	lw	a4,156(s1)
    80007684:	0984a783          	lw	a5,152(s1)
    80007688:	0007071b          	sext.w	a4,a4
    8000768c:	08e78463          	beq	a5,a4,80007714 <consoleread+0xf0>
    80007690:	07f7f713          	andi	a4,a5,127
    80007694:	00e48733          	add	a4,s1,a4
    80007698:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000769c:	0017869b          	addiw	a3,a5,1
    800076a0:	08d4ac23          	sw	a3,152(s1)
    800076a4:	00070c9b          	sext.w	s9,a4
    800076a8:	0b370663          	beq	a4,s3,80007754 <consoleread+0x130>
    800076ac:	00100693          	li	a3,1
    800076b0:	f9f40613          	addi	a2,s0,-97
    800076b4:	000c0593          	mv	a1,s8
    800076b8:	00090513          	mv	a0,s2
    800076bc:	f8e40fa3          	sb	a4,-97(s0)
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	8b4080e7          	jalr	-1868(ra) # 80006f74 <either_copyout>
    800076c8:	01450863          	beq	a0,s4,800076d8 <consoleread+0xb4>
    800076cc:	001c0c13          	addi	s8,s8,1
    800076d0:	fffb8b9b          	addiw	s7,s7,-1
    800076d4:	fb5c94e3          	bne	s9,s5,8000767c <consoleread+0x58>
    800076d8:	000b851b          	sext.w	a0,s7
    800076dc:	06813083          	ld	ra,104(sp)
    800076e0:	06013403          	ld	s0,96(sp)
    800076e4:	05813483          	ld	s1,88(sp)
    800076e8:	05013903          	ld	s2,80(sp)
    800076ec:	04813983          	ld	s3,72(sp)
    800076f0:	04013a03          	ld	s4,64(sp)
    800076f4:	03813a83          	ld	s5,56(sp)
    800076f8:	02813b83          	ld	s7,40(sp)
    800076fc:	02013c03          	ld	s8,32(sp)
    80007700:	01813c83          	ld	s9,24(sp)
    80007704:	40ab053b          	subw	a0,s6,a0
    80007708:	03013b03          	ld	s6,48(sp)
    8000770c:	07010113          	addi	sp,sp,112
    80007710:	00008067          	ret
    80007714:	00001097          	auipc	ra,0x1
    80007718:	1d8080e7          	jalr	472(ra) # 800088ec <push_on>
    8000771c:	0984a703          	lw	a4,152(s1)
    80007720:	09c4a783          	lw	a5,156(s1)
    80007724:	0007879b          	sext.w	a5,a5
    80007728:	fef70ce3          	beq	a4,a5,80007720 <consoleread+0xfc>
    8000772c:	00001097          	auipc	ra,0x1
    80007730:	234080e7          	jalr	564(ra) # 80008960 <pop_on>
    80007734:	0984a783          	lw	a5,152(s1)
    80007738:	07f7f713          	andi	a4,a5,127
    8000773c:	00e48733          	add	a4,s1,a4
    80007740:	01874703          	lbu	a4,24(a4)
    80007744:	0017869b          	addiw	a3,a5,1
    80007748:	08d4ac23          	sw	a3,152(s1)
    8000774c:	00070c9b          	sext.w	s9,a4
    80007750:	f5371ee3          	bne	a4,s3,800076ac <consoleread+0x88>
    80007754:	000b851b          	sext.w	a0,s7
    80007758:	f96bf2e3          	bgeu	s7,s6,800076dc <consoleread+0xb8>
    8000775c:	08f4ac23          	sw	a5,152(s1)
    80007760:	f7dff06f          	j	800076dc <consoleread+0xb8>

0000000080007764 <consputc>:
    80007764:	10000793          	li	a5,256
    80007768:	00f50663          	beq	a0,a5,80007774 <consputc+0x10>
    8000776c:	00001317          	auipc	t1,0x1
    80007770:	9f430067          	jr	-1548(t1) # 80008160 <uartputc_sync>
    80007774:	ff010113          	addi	sp,sp,-16
    80007778:	00113423          	sd	ra,8(sp)
    8000777c:	00813023          	sd	s0,0(sp)
    80007780:	01010413          	addi	s0,sp,16
    80007784:	00800513          	li	a0,8
    80007788:	00001097          	auipc	ra,0x1
    8000778c:	9d8080e7          	jalr	-1576(ra) # 80008160 <uartputc_sync>
    80007790:	02000513          	li	a0,32
    80007794:	00001097          	auipc	ra,0x1
    80007798:	9cc080e7          	jalr	-1588(ra) # 80008160 <uartputc_sync>
    8000779c:	00013403          	ld	s0,0(sp)
    800077a0:	00813083          	ld	ra,8(sp)
    800077a4:	00800513          	li	a0,8
    800077a8:	01010113          	addi	sp,sp,16
    800077ac:	00001317          	auipc	t1,0x1
    800077b0:	9b430067          	jr	-1612(t1) # 80008160 <uartputc_sync>

00000000800077b4 <consoleintr>:
    800077b4:	fe010113          	addi	sp,sp,-32
    800077b8:	00813823          	sd	s0,16(sp)
    800077bc:	00913423          	sd	s1,8(sp)
    800077c0:	01213023          	sd	s2,0(sp)
    800077c4:	00113c23          	sd	ra,24(sp)
    800077c8:	02010413          	addi	s0,sp,32
    800077cc:	00005917          	auipc	s2,0x5
    800077d0:	63c90913          	addi	s2,s2,1596 # 8000ce08 <cons>
    800077d4:	00050493          	mv	s1,a0
    800077d8:	00090513          	mv	a0,s2
    800077dc:	00001097          	auipc	ra,0x1
    800077e0:	e40080e7          	jalr	-448(ra) # 8000861c <acquire>
    800077e4:	02048c63          	beqz	s1,8000781c <consoleintr+0x68>
    800077e8:	0a092783          	lw	a5,160(s2)
    800077ec:	09892703          	lw	a4,152(s2)
    800077f0:	07f00693          	li	a3,127
    800077f4:	40e7873b          	subw	a4,a5,a4
    800077f8:	02e6e263          	bltu	a3,a4,8000781c <consoleintr+0x68>
    800077fc:	00d00713          	li	a4,13
    80007800:	04e48063          	beq	s1,a4,80007840 <consoleintr+0x8c>
    80007804:	07f7f713          	andi	a4,a5,127
    80007808:	00e90733          	add	a4,s2,a4
    8000780c:	0017879b          	addiw	a5,a5,1
    80007810:	0af92023          	sw	a5,160(s2)
    80007814:	00970c23          	sb	s1,24(a4)
    80007818:	08f92e23          	sw	a5,156(s2)
    8000781c:	01013403          	ld	s0,16(sp)
    80007820:	01813083          	ld	ra,24(sp)
    80007824:	00813483          	ld	s1,8(sp)
    80007828:	00013903          	ld	s2,0(sp)
    8000782c:	00005517          	auipc	a0,0x5
    80007830:	5dc50513          	addi	a0,a0,1500 # 8000ce08 <cons>
    80007834:	02010113          	addi	sp,sp,32
    80007838:	00001317          	auipc	t1,0x1
    8000783c:	eb030067          	jr	-336(t1) # 800086e8 <release>
    80007840:	00a00493          	li	s1,10
    80007844:	fc1ff06f          	j	80007804 <consoleintr+0x50>

0000000080007848 <consoleinit>:
    80007848:	fe010113          	addi	sp,sp,-32
    8000784c:	00113c23          	sd	ra,24(sp)
    80007850:	00813823          	sd	s0,16(sp)
    80007854:	00913423          	sd	s1,8(sp)
    80007858:	02010413          	addi	s0,sp,32
    8000785c:	00005497          	auipc	s1,0x5
    80007860:	5ac48493          	addi	s1,s1,1452 # 8000ce08 <cons>
    80007864:	00048513          	mv	a0,s1
    80007868:	00002597          	auipc	a1,0x2
    8000786c:	e8858593          	addi	a1,a1,-376 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007870:	00001097          	auipc	ra,0x1
    80007874:	d88080e7          	jalr	-632(ra) # 800085f8 <initlock>
    80007878:	00000097          	auipc	ra,0x0
    8000787c:	7ac080e7          	jalr	1964(ra) # 80008024 <uartinit>
    80007880:	01813083          	ld	ra,24(sp)
    80007884:	01013403          	ld	s0,16(sp)
    80007888:	00000797          	auipc	a5,0x0
    8000788c:	d9c78793          	addi	a5,a5,-612 # 80007624 <consoleread>
    80007890:	0af4bc23          	sd	a5,184(s1)
    80007894:	00000797          	auipc	a5,0x0
    80007898:	cec78793          	addi	a5,a5,-788 # 80007580 <consolewrite>
    8000789c:	0cf4b023          	sd	a5,192(s1)
    800078a0:	00813483          	ld	s1,8(sp)
    800078a4:	02010113          	addi	sp,sp,32
    800078a8:	00008067          	ret

00000000800078ac <console_read>:
    800078ac:	ff010113          	addi	sp,sp,-16
    800078b0:	00813423          	sd	s0,8(sp)
    800078b4:	01010413          	addi	s0,sp,16
    800078b8:	00813403          	ld	s0,8(sp)
    800078bc:	00005317          	auipc	t1,0x5
    800078c0:	60433303          	ld	t1,1540(t1) # 8000cec0 <devsw+0x10>
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00030067          	jr	t1

00000000800078cc <console_write>:
    800078cc:	ff010113          	addi	sp,sp,-16
    800078d0:	00813423          	sd	s0,8(sp)
    800078d4:	01010413          	addi	s0,sp,16
    800078d8:	00813403          	ld	s0,8(sp)
    800078dc:	00005317          	auipc	t1,0x5
    800078e0:	5ec33303          	ld	t1,1516(t1) # 8000cec8 <devsw+0x18>
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00030067          	jr	t1

00000000800078ec <panic>:
    800078ec:	fe010113          	addi	sp,sp,-32
    800078f0:	00113c23          	sd	ra,24(sp)
    800078f4:	00813823          	sd	s0,16(sp)
    800078f8:	00913423          	sd	s1,8(sp)
    800078fc:	02010413          	addi	s0,sp,32
    80007900:	00050493          	mv	s1,a0
    80007904:	00002517          	auipc	a0,0x2
    80007908:	df450513          	addi	a0,a0,-524 # 800096f8 <CONSOLE_STATUS+0x6e8>
    8000790c:	00005797          	auipc	a5,0x5
    80007910:	6407ae23          	sw	zero,1628(a5) # 8000cf68 <pr+0x18>
    80007914:	00000097          	auipc	ra,0x0
    80007918:	034080e7          	jalr	52(ra) # 80007948 <__printf>
    8000791c:	00048513          	mv	a0,s1
    80007920:	00000097          	auipc	ra,0x0
    80007924:	028080e7          	jalr	40(ra) # 80007948 <__printf>
    80007928:	00002517          	auipc	a0,0x2
    8000792c:	b5850513          	addi	a0,a0,-1192 # 80009480 <CONSOLE_STATUS+0x470>
    80007930:	00000097          	auipc	ra,0x0
    80007934:	018080e7          	jalr	24(ra) # 80007948 <__printf>
    80007938:	00100793          	li	a5,1
    8000793c:	00004717          	auipc	a4,0x4
    80007940:	2ef72e23          	sw	a5,764(a4) # 8000bc38 <panicked>
    80007944:	0000006f          	j	80007944 <panic+0x58>

0000000080007948 <__printf>:
    80007948:	f3010113          	addi	sp,sp,-208
    8000794c:	08813023          	sd	s0,128(sp)
    80007950:	07313423          	sd	s3,104(sp)
    80007954:	09010413          	addi	s0,sp,144
    80007958:	05813023          	sd	s8,64(sp)
    8000795c:	08113423          	sd	ra,136(sp)
    80007960:	06913c23          	sd	s1,120(sp)
    80007964:	07213823          	sd	s2,112(sp)
    80007968:	07413023          	sd	s4,96(sp)
    8000796c:	05513c23          	sd	s5,88(sp)
    80007970:	05613823          	sd	s6,80(sp)
    80007974:	05713423          	sd	s7,72(sp)
    80007978:	03913c23          	sd	s9,56(sp)
    8000797c:	03a13823          	sd	s10,48(sp)
    80007980:	03b13423          	sd	s11,40(sp)
    80007984:	00005317          	auipc	t1,0x5
    80007988:	5cc30313          	addi	t1,t1,1484 # 8000cf50 <pr>
    8000798c:	01832c03          	lw	s8,24(t1)
    80007990:	00b43423          	sd	a1,8(s0)
    80007994:	00c43823          	sd	a2,16(s0)
    80007998:	00d43c23          	sd	a3,24(s0)
    8000799c:	02e43023          	sd	a4,32(s0)
    800079a0:	02f43423          	sd	a5,40(s0)
    800079a4:	03043823          	sd	a6,48(s0)
    800079a8:	03143c23          	sd	a7,56(s0)
    800079ac:	00050993          	mv	s3,a0
    800079b0:	4a0c1663          	bnez	s8,80007e5c <__printf+0x514>
    800079b4:	60098c63          	beqz	s3,80007fcc <__printf+0x684>
    800079b8:	0009c503          	lbu	a0,0(s3)
    800079bc:	00840793          	addi	a5,s0,8
    800079c0:	f6f43c23          	sd	a5,-136(s0)
    800079c4:	00000493          	li	s1,0
    800079c8:	22050063          	beqz	a0,80007be8 <__printf+0x2a0>
    800079cc:	00002a37          	lui	s4,0x2
    800079d0:	00018ab7          	lui	s5,0x18
    800079d4:	000f4b37          	lui	s6,0xf4
    800079d8:	00989bb7          	lui	s7,0x989
    800079dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079ec:	00148c9b          	addiw	s9,s1,1
    800079f0:	02500793          	li	a5,37
    800079f4:	01998933          	add	s2,s3,s9
    800079f8:	38f51263          	bne	a0,a5,80007d7c <__printf+0x434>
    800079fc:	00094783          	lbu	a5,0(s2)
    80007a00:	00078c9b          	sext.w	s9,a5
    80007a04:	1e078263          	beqz	a5,80007be8 <__printf+0x2a0>
    80007a08:	0024849b          	addiw	s1,s1,2
    80007a0c:	07000713          	li	a4,112
    80007a10:	00998933          	add	s2,s3,s1
    80007a14:	38e78a63          	beq	a5,a4,80007da8 <__printf+0x460>
    80007a18:	20f76863          	bltu	a4,a5,80007c28 <__printf+0x2e0>
    80007a1c:	42a78863          	beq	a5,a0,80007e4c <__printf+0x504>
    80007a20:	06400713          	li	a4,100
    80007a24:	40e79663          	bne	a5,a4,80007e30 <__printf+0x4e8>
    80007a28:	f7843783          	ld	a5,-136(s0)
    80007a2c:	0007a603          	lw	a2,0(a5)
    80007a30:	00878793          	addi	a5,a5,8
    80007a34:	f6f43c23          	sd	a5,-136(s0)
    80007a38:	42064a63          	bltz	a2,80007e6c <__printf+0x524>
    80007a3c:	00a00713          	li	a4,10
    80007a40:	02e677bb          	remuw	a5,a2,a4
    80007a44:	00002d97          	auipc	s11,0x2
    80007a48:	cdcd8d93          	addi	s11,s11,-804 # 80009720 <digits>
    80007a4c:	00900593          	li	a1,9
    80007a50:	0006051b          	sext.w	a0,a2
    80007a54:	00000c93          	li	s9,0
    80007a58:	02079793          	slli	a5,a5,0x20
    80007a5c:	0207d793          	srli	a5,a5,0x20
    80007a60:	00fd87b3          	add	a5,s11,a5
    80007a64:	0007c783          	lbu	a5,0(a5)
    80007a68:	02e656bb          	divuw	a3,a2,a4
    80007a6c:	f8f40023          	sb	a5,-128(s0)
    80007a70:	14c5d863          	bge	a1,a2,80007bc0 <__printf+0x278>
    80007a74:	06300593          	li	a1,99
    80007a78:	00100c93          	li	s9,1
    80007a7c:	02e6f7bb          	remuw	a5,a3,a4
    80007a80:	02079793          	slli	a5,a5,0x20
    80007a84:	0207d793          	srli	a5,a5,0x20
    80007a88:	00fd87b3          	add	a5,s11,a5
    80007a8c:	0007c783          	lbu	a5,0(a5)
    80007a90:	02e6d73b          	divuw	a4,a3,a4
    80007a94:	f8f400a3          	sb	a5,-127(s0)
    80007a98:	12a5f463          	bgeu	a1,a0,80007bc0 <__printf+0x278>
    80007a9c:	00a00693          	li	a3,10
    80007aa0:	00900593          	li	a1,9
    80007aa4:	02d777bb          	remuw	a5,a4,a3
    80007aa8:	02079793          	slli	a5,a5,0x20
    80007aac:	0207d793          	srli	a5,a5,0x20
    80007ab0:	00fd87b3          	add	a5,s11,a5
    80007ab4:	0007c503          	lbu	a0,0(a5)
    80007ab8:	02d757bb          	divuw	a5,a4,a3
    80007abc:	f8a40123          	sb	a0,-126(s0)
    80007ac0:	48e5f263          	bgeu	a1,a4,80007f44 <__printf+0x5fc>
    80007ac4:	06300513          	li	a0,99
    80007ac8:	02d7f5bb          	remuw	a1,a5,a3
    80007acc:	02059593          	slli	a1,a1,0x20
    80007ad0:	0205d593          	srli	a1,a1,0x20
    80007ad4:	00bd85b3          	add	a1,s11,a1
    80007ad8:	0005c583          	lbu	a1,0(a1)
    80007adc:	02d7d7bb          	divuw	a5,a5,a3
    80007ae0:	f8b401a3          	sb	a1,-125(s0)
    80007ae4:	48e57263          	bgeu	a0,a4,80007f68 <__printf+0x620>
    80007ae8:	3e700513          	li	a0,999
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b40223          	sb	a1,-124(s0)
    80007b08:	46e57663          	bgeu	a0,a4,80007f74 <__printf+0x62c>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b402a3          	sb	a1,-123(s0)
    80007b28:	46ea7863          	bgeu	s4,a4,80007f98 <__printf+0x650>
    80007b2c:	02d7f5bb          	remuw	a1,a5,a3
    80007b30:	02059593          	slli	a1,a1,0x20
    80007b34:	0205d593          	srli	a1,a1,0x20
    80007b38:	00bd85b3          	add	a1,s11,a1
    80007b3c:	0005c583          	lbu	a1,0(a1)
    80007b40:	02d7d7bb          	divuw	a5,a5,a3
    80007b44:	f8b40323          	sb	a1,-122(s0)
    80007b48:	3eeaf863          	bgeu	s5,a4,80007f38 <__printf+0x5f0>
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b403a3          	sb	a1,-121(s0)
    80007b68:	42eb7e63          	bgeu	s6,a4,80007fa4 <__printf+0x65c>
    80007b6c:	02d7f5bb          	remuw	a1,a5,a3
    80007b70:	02059593          	slli	a1,a1,0x20
    80007b74:	0205d593          	srli	a1,a1,0x20
    80007b78:	00bd85b3          	add	a1,s11,a1
    80007b7c:	0005c583          	lbu	a1,0(a1)
    80007b80:	02d7d7bb          	divuw	a5,a5,a3
    80007b84:	f8b40423          	sb	a1,-120(s0)
    80007b88:	42ebfc63          	bgeu	s7,a4,80007fc0 <__printf+0x678>
    80007b8c:	02079793          	slli	a5,a5,0x20
    80007b90:	0207d793          	srli	a5,a5,0x20
    80007b94:	00fd8db3          	add	s11,s11,a5
    80007b98:	000dc703          	lbu	a4,0(s11)
    80007b9c:	00a00793          	li	a5,10
    80007ba0:	00900c93          	li	s9,9
    80007ba4:	f8e404a3          	sb	a4,-119(s0)
    80007ba8:	00065c63          	bgez	a2,80007bc0 <__printf+0x278>
    80007bac:	f9040713          	addi	a4,s0,-112
    80007bb0:	00f70733          	add	a4,a4,a5
    80007bb4:	02d00693          	li	a3,45
    80007bb8:	fed70823          	sb	a3,-16(a4)
    80007bbc:	00078c93          	mv	s9,a5
    80007bc0:	f8040793          	addi	a5,s0,-128
    80007bc4:	01978cb3          	add	s9,a5,s9
    80007bc8:	f7f40d13          	addi	s10,s0,-129
    80007bcc:	000cc503          	lbu	a0,0(s9)
    80007bd0:	fffc8c93          	addi	s9,s9,-1
    80007bd4:	00000097          	auipc	ra,0x0
    80007bd8:	b90080e7          	jalr	-1136(ra) # 80007764 <consputc>
    80007bdc:	ffac98e3          	bne	s9,s10,80007bcc <__printf+0x284>
    80007be0:	00094503          	lbu	a0,0(s2)
    80007be4:	e00514e3          	bnez	a0,800079ec <__printf+0xa4>
    80007be8:	1a0c1663          	bnez	s8,80007d94 <__printf+0x44c>
    80007bec:	08813083          	ld	ra,136(sp)
    80007bf0:	08013403          	ld	s0,128(sp)
    80007bf4:	07813483          	ld	s1,120(sp)
    80007bf8:	07013903          	ld	s2,112(sp)
    80007bfc:	06813983          	ld	s3,104(sp)
    80007c00:	06013a03          	ld	s4,96(sp)
    80007c04:	05813a83          	ld	s5,88(sp)
    80007c08:	05013b03          	ld	s6,80(sp)
    80007c0c:	04813b83          	ld	s7,72(sp)
    80007c10:	04013c03          	ld	s8,64(sp)
    80007c14:	03813c83          	ld	s9,56(sp)
    80007c18:	03013d03          	ld	s10,48(sp)
    80007c1c:	02813d83          	ld	s11,40(sp)
    80007c20:	0d010113          	addi	sp,sp,208
    80007c24:	00008067          	ret
    80007c28:	07300713          	li	a4,115
    80007c2c:	1ce78a63          	beq	a5,a4,80007e00 <__printf+0x4b8>
    80007c30:	07800713          	li	a4,120
    80007c34:	1ee79e63          	bne	a5,a4,80007e30 <__printf+0x4e8>
    80007c38:	f7843783          	ld	a5,-136(s0)
    80007c3c:	0007a703          	lw	a4,0(a5)
    80007c40:	00878793          	addi	a5,a5,8
    80007c44:	f6f43c23          	sd	a5,-136(s0)
    80007c48:	28074263          	bltz	a4,80007ecc <__printf+0x584>
    80007c4c:	00002d97          	auipc	s11,0x2
    80007c50:	ad4d8d93          	addi	s11,s11,-1324 # 80009720 <digits>
    80007c54:	00f77793          	andi	a5,a4,15
    80007c58:	00fd87b3          	add	a5,s11,a5
    80007c5c:	0007c683          	lbu	a3,0(a5)
    80007c60:	00f00613          	li	a2,15
    80007c64:	0007079b          	sext.w	a5,a4
    80007c68:	f8d40023          	sb	a3,-128(s0)
    80007c6c:	0047559b          	srliw	a1,a4,0x4
    80007c70:	0047569b          	srliw	a3,a4,0x4
    80007c74:	00000c93          	li	s9,0
    80007c78:	0ee65063          	bge	a2,a4,80007d58 <__printf+0x410>
    80007c7c:	00f6f693          	andi	a3,a3,15
    80007c80:	00dd86b3          	add	a3,s11,a3
    80007c84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c88:	0087d79b          	srliw	a5,a5,0x8
    80007c8c:	00100c93          	li	s9,1
    80007c90:	f8d400a3          	sb	a3,-127(s0)
    80007c94:	0cb67263          	bgeu	a2,a1,80007d58 <__printf+0x410>
    80007c98:	00f7f693          	andi	a3,a5,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c583          	lbu	a1,0(a3)
    80007ca4:	00f00613          	li	a2,15
    80007ca8:	0047d69b          	srliw	a3,a5,0x4
    80007cac:	f8b40123          	sb	a1,-126(s0)
    80007cb0:	0047d593          	srli	a1,a5,0x4
    80007cb4:	28f67e63          	bgeu	a2,a5,80007f50 <__printf+0x608>
    80007cb8:	00f6f693          	andi	a3,a3,15
    80007cbc:	00dd86b3          	add	a3,s11,a3
    80007cc0:	0006c503          	lbu	a0,0(a3)
    80007cc4:	0087d813          	srli	a6,a5,0x8
    80007cc8:	0087d69b          	srliw	a3,a5,0x8
    80007ccc:	f8a401a3          	sb	a0,-125(s0)
    80007cd0:	28b67663          	bgeu	a2,a1,80007f5c <__printf+0x614>
    80007cd4:	00f6f693          	andi	a3,a3,15
    80007cd8:	00dd86b3          	add	a3,s11,a3
    80007cdc:	0006c583          	lbu	a1,0(a3)
    80007ce0:	00c7d513          	srli	a0,a5,0xc
    80007ce4:	00c7d69b          	srliw	a3,a5,0xc
    80007ce8:	f8b40223          	sb	a1,-124(s0)
    80007cec:	29067a63          	bgeu	a2,a6,80007f80 <__printf+0x638>
    80007cf0:	00f6f693          	andi	a3,a3,15
    80007cf4:	00dd86b3          	add	a3,s11,a3
    80007cf8:	0006c583          	lbu	a1,0(a3)
    80007cfc:	0107d813          	srli	a6,a5,0x10
    80007d00:	0107d69b          	srliw	a3,a5,0x10
    80007d04:	f8b402a3          	sb	a1,-123(s0)
    80007d08:	28a67263          	bgeu	a2,a0,80007f8c <__printf+0x644>
    80007d0c:	00f6f693          	andi	a3,a3,15
    80007d10:	00dd86b3          	add	a3,s11,a3
    80007d14:	0006c683          	lbu	a3,0(a3)
    80007d18:	0147d79b          	srliw	a5,a5,0x14
    80007d1c:	f8d40323          	sb	a3,-122(s0)
    80007d20:	21067663          	bgeu	a2,a6,80007f2c <__printf+0x5e4>
    80007d24:	02079793          	slli	a5,a5,0x20
    80007d28:	0207d793          	srli	a5,a5,0x20
    80007d2c:	00fd8db3          	add	s11,s11,a5
    80007d30:	000dc683          	lbu	a3,0(s11)
    80007d34:	00800793          	li	a5,8
    80007d38:	00700c93          	li	s9,7
    80007d3c:	f8d403a3          	sb	a3,-121(s0)
    80007d40:	00075c63          	bgez	a4,80007d58 <__printf+0x410>
    80007d44:	f9040713          	addi	a4,s0,-112
    80007d48:	00f70733          	add	a4,a4,a5
    80007d4c:	02d00693          	li	a3,45
    80007d50:	fed70823          	sb	a3,-16(a4)
    80007d54:	00078c93          	mv	s9,a5
    80007d58:	f8040793          	addi	a5,s0,-128
    80007d5c:	01978cb3          	add	s9,a5,s9
    80007d60:	f7f40d13          	addi	s10,s0,-129
    80007d64:	000cc503          	lbu	a0,0(s9)
    80007d68:	fffc8c93          	addi	s9,s9,-1
    80007d6c:	00000097          	auipc	ra,0x0
    80007d70:	9f8080e7          	jalr	-1544(ra) # 80007764 <consputc>
    80007d74:	ff9d18e3          	bne	s10,s9,80007d64 <__printf+0x41c>
    80007d78:	0100006f          	j	80007d88 <__printf+0x440>
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	9e8080e7          	jalr	-1560(ra) # 80007764 <consputc>
    80007d84:	000c8493          	mv	s1,s9
    80007d88:	00094503          	lbu	a0,0(s2)
    80007d8c:	c60510e3          	bnez	a0,800079ec <__printf+0xa4>
    80007d90:	e40c0ee3          	beqz	s8,80007bec <__printf+0x2a4>
    80007d94:	00005517          	auipc	a0,0x5
    80007d98:	1bc50513          	addi	a0,a0,444 # 8000cf50 <pr>
    80007d9c:	00001097          	auipc	ra,0x1
    80007da0:	94c080e7          	jalr	-1716(ra) # 800086e8 <release>
    80007da4:	e49ff06f          	j	80007bec <__printf+0x2a4>
    80007da8:	f7843783          	ld	a5,-136(s0)
    80007dac:	03000513          	li	a0,48
    80007db0:	01000d13          	li	s10,16
    80007db4:	00878713          	addi	a4,a5,8
    80007db8:	0007bc83          	ld	s9,0(a5)
    80007dbc:	f6e43c23          	sd	a4,-136(s0)
    80007dc0:	00000097          	auipc	ra,0x0
    80007dc4:	9a4080e7          	jalr	-1628(ra) # 80007764 <consputc>
    80007dc8:	07800513          	li	a0,120
    80007dcc:	00000097          	auipc	ra,0x0
    80007dd0:	998080e7          	jalr	-1640(ra) # 80007764 <consputc>
    80007dd4:	00002d97          	auipc	s11,0x2
    80007dd8:	94cd8d93          	addi	s11,s11,-1716 # 80009720 <digits>
    80007ddc:	03ccd793          	srli	a5,s9,0x3c
    80007de0:	00fd87b3          	add	a5,s11,a5
    80007de4:	0007c503          	lbu	a0,0(a5)
    80007de8:	fffd0d1b          	addiw	s10,s10,-1
    80007dec:	004c9c93          	slli	s9,s9,0x4
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	974080e7          	jalr	-1676(ra) # 80007764 <consputc>
    80007df8:	fe0d12e3          	bnez	s10,80007ddc <__printf+0x494>
    80007dfc:	f8dff06f          	j	80007d88 <__printf+0x440>
    80007e00:	f7843783          	ld	a5,-136(s0)
    80007e04:	0007bc83          	ld	s9,0(a5)
    80007e08:	00878793          	addi	a5,a5,8
    80007e0c:	f6f43c23          	sd	a5,-136(s0)
    80007e10:	000c9a63          	bnez	s9,80007e24 <__printf+0x4dc>
    80007e14:	1080006f          	j	80007f1c <__printf+0x5d4>
    80007e18:	001c8c93          	addi	s9,s9,1
    80007e1c:	00000097          	auipc	ra,0x0
    80007e20:	948080e7          	jalr	-1720(ra) # 80007764 <consputc>
    80007e24:	000cc503          	lbu	a0,0(s9)
    80007e28:	fe0518e3          	bnez	a0,80007e18 <__printf+0x4d0>
    80007e2c:	f5dff06f          	j	80007d88 <__printf+0x440>
    80007e30:	02500513          	li	a0,37
    80007e34:	00000097          	auipc	ra,0x0
    80007e38:	930080e7          	jalr	-1744(ra) # 80007764 <consputc>
    80007e3c:	000c8513          	mv	a0,s9
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	924080e7          	jalr	-1756(ra) # 80007764 <consputc>
    80007e48:	f41ff06f          	j	80007d88 <__printf+0x440>
    80007e4c:	02500513          	li	a0,37
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	914080e7          	jalr	-1772(ra) # 80007764 <consputc>
    80007e58:	f31ff06f          	j	80007d88 <__printf+0x440>
    80007e5c:	00030513          	mv	a0,t1
    80007e60:	00000097          	auipc	ra,0x0
    80007e64:	7bc080e7          	jalr	1980(ra) # 8000861c <acquire>
    80007e68:	b4dff06f          	j	800079b4 <__printf+0x6c>
    80007e6c:	40c0053b          	negw	a0,a2
    80007e70:	00a00713          	li	a4,10
    80007e74:	02e576bb          	remuw	a3,a0,a4
    80007e78:	00002d97          	auipc	s11,0x2
    80007e7c:	8a8d8d93          	addi	s11,s11,-1880 # 80009720 <digits>
    80007e80:	ff700593          	li	a1,-9
    80007e84:	02069693          	slli	a3,a3,0x20
    80007e88:	0206d693          	srli	a3,a3,0x20
    80007e8c:	00dd86b3          	add	a3,s11,a3
    80007e90:	0006c683          	lbu	a3,0(a3)
    80007e94:	02e557bb          	divuw	a5,a0,a4
    80007e98:	f8d40023          	sb	a3,-128(s0)
    80007e9c:	10b65e63          	bge	a2,a1,80007fb8 <__printf+0x670>
    80007ea0:	06300593          	li	a1,99
    80007ea4:	02e7f6bb          	remuw	a3,a5,a4
    80007ea8:	02069693          	slli	a3,a3,0x20
    80007eac:	0206d693          	srli	a3,a3,0x20
    80007eb0:	00dd86b3          	add	a3,s11,a3
    80007eb4:	0006c683          	lbu	a3,0(a3)
    80007eb8:	02e7d73b          	divuw	a4,a5,a4
    80007ebc:	00200793          	li	a5,2
    80007ec0:	f8d400a3          	sb	a3,-127(s0)
    80007ec4:	bca5ece3          	bltu	a1,a0,80007a9c <__printf+0x154>
    80007ec8:	ce5ff06f          	j	80007bac <__printf+0x264>
    80007ecc:	40e007bb          	negw	a5,a4
    80007ed0:	00002d97          	auipc	s11,0x2
    80007ed4:	850d8d93          	addi	s11,s11,-1968 # 80009720 <digits>
    80007ed8:	00f7f693          	andi	a3,a5,15
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c583          	lbu	a1,0(a3)
    80007ee4:	ff100613          	li	a2,-15
    80007ee8:	0047d69b          	srliw	a3,a5,0x4
    80007eec:	f8b40023          	sb	a1,-128(s0)
    80007ef0:	0047d59b          	srliw	a1,a5,0x4
    80007ef4:	0ac75e63          	bge	a4,a2,80007fb0 <__printf+0x668>
    80007ef8:	00f6f693          	andi	a3,a3,15
    80007efc:	00dd86b3          	add	a3,s11,a3
    80007f00:	0006c603          	lbu	a2,0(a3)
    80007f04:	00f00693          	li	a3,15
    80007f08:	0087d79b          	srliw	a5,a5,0x8
    80007f0c:	f8c400a3          	sb	a2,-127(s0)
    80007f10:	d8b6e4e3          	bltu	a3,a1,80007c98 <__printf+0x350>
    80007f14:	00200793          	li	a5,2
    80007f18:	e2dff06f          	j	80007d44 <__printf+0x3fc>
    80007f1c:	00001c97          	auipc	s9,0x1
    80007f20:	7e4c8c93          	addi	s9,s9,2020 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007f24:	02800513          	li	a0,40
    80007f28:	ef1ff06f          	j	80007e18 <__printf+0x4d0>
    80007f2c:	00700793          	li	a5,7
    80007f30:	00600c93          	li	s9,6
    80007f34:	e0dff06f          	j	80007d40 <__printf+0x3f8>
    80007f38:	00700793          	li	a5,7
    80007f3c:	00600c93          	li	s9,6
    80007f40:	c69ff06f          	j	80007ba8 <__printf+0x260>
    80007f44:	00300793          	li	a5,3
    80007f48:	00200c93          	li	s9,2
    80007f4c:	c5dff06f          	j	80007ba8 <__printf+0x260>
    80007f50:	00300793          	li	a5,3
    80007f54:	00200c93          	li	s9,2
    80007f58:	de9ff06f          	j	80007d40 <__printf+0x3f8>
    80007f5c:	00400793          	li	a5,4
    80007f60:	00300c93          	li	s9,3
    80007f64:	dddff06f          	j	80007d40 <__printf+0x3f8>
    80007f68:	00400793          	li	a5,4
    80007f6c:	00300c93          	li	s9,3
    80007f70:	c39ff06f          	j	80007ba8 <__printf+0x260>
    80007f74:	00500793          	li	a5,5
    80007f78:	00400c93          	li	s9,4
    80007f7c:	c2dff06f          	j	80007ba8 <__printf+0x260>
    80007f80:	00500793          	li	a5,5
    80007f84:	00400c93          	li	s9,4
    80007f88:	db9ff06f          	j	80007d40 <__printf+0x3f8>
    80007f8c:	00600793          	li	a5,6
    80007f90:	00500c93          	li	s9,5
    80007f94:	dadff06f          	j	80007d40 <__printf+0x3f8>
    80007f98:	00600793          	li	a5,6
    80007f9c:	00500c93          	li	s9,5
    80007fa0:	c09ff06f          	j	80007ba8 <__printf+0x260>
    80007fa4:	00800793          	li	a5,8
    80007fa8:	00700c93          	li	s9,7
    80007fac:	bfdff06f          	j	80007ba8 <__printf+0x260>
    80007fb0:	00100793          	li	a5,1
    80007fb4:	d91ff06f          	j	80007d44 <__printf+0x3fc>
    80007fb8:	00100793          	li	a5,1
    80007fbc:	bf1ff06f          	j	80007bac <__printf+0x264>
    80007fc0:	00900793          	li	a5,9
    80007fc4:	00800c93          	li	s9,8
    80007fc8:	be1ff06f          	j	80007ba8 <__printf+0x260>
    80007fcc:	00001517          	auipc	a0,0x1
    80007fd0:	73c50513          	addi	a0,a0,1852 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007fd4:	00000097          	auipc	ra,0x0
    80007fd8:	918080e7          	jalr	-1768(ra) # 800078ec <panic>

0000000080007fdc <printfinit>:
    80007fdc:	fe010113          	addi	sp,sp,-32
    80007fe0:	00813823          	sd	s0,16(sp)
    80007fe4:	00913423          	sd	s1,8(sp)
    80007fe8:	00113c23          	sd	ra,24(sp)
    80007fec:	02010413          	addi	s0,sp,32
    80007ff0:	00005497          	auipc	s1,0x5
    80007ff4:	f6048493          	addi	s1,s1,-160 # 8000cf50 <pr>
    80007ff8:	00048513          	mv	a0,s1
    80007ffc:	00001597          	auipc	a1,0x1
    80008000:	71c58593          	addi	a1,a1,1820 # 80009718 <CONSOLE_STATUS+0x708>
    80008004:	00000097          	auipc	ra,0x0
    80008008:	5f4080e7          	jalr	1524(ra) # 800085f8 <initlock>
    8000800c:	01813083          	ld	ra,24(sp)
    80008010:	01013403          	ld	s0,16(sp)
    80008014:	0004ac23          	sw	zero,24(s1)
    80008018:	00813483          	ld	s1,8(sp)
    8000801c:	02010113          	addi	sp,sp,32
    80008020:	00008067          	ret

0000000080008024 <uartinit>:
    80008024:	ff010113          	addi	sp,sp,-16
    80008028:	00813423          	sd	s0,8(sp)
    8000802c:	01010413          	addi	s0,sp,16
    80008030:	100007b7          	lui	a5,0x10000
    80008034:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008038:	f8000713          	li	a4,-128
    8000803c:	00e781a3          	sb	a4,3(a5)
    80008040:	00300713          	li	a4,3
    80008044:	00e78023          	sb	a4,0(a5)
    80008048:	000780a3          	sb	zero,1(a5)
    8000804c:	00e781a3          	sb	a4,3(a5)
    80008050:	00700693          	li	a3,7
    80008054:	00d78123          	sb	a3,2(a5)
    80008058:	00e780a3          	sb	a4,1(a5)
    8000805c:	00813403          	ld	s0,8(sp)
    80008060:	01010113          	addi	sp,sp,16
    80008064:	00008067          	ret

0000000080008068 <uartputc>:
    80008068:	00004797          	auipc	a5,0x4
    8000806c:	bd07a783          	lw	a5,-1072(a5) # 8000bc38 <panicked>
    80008070:	00078463          	beqz	a5,80008078 <uartputc+0x10>
    80008074:	0000006f          	j	80008074 <uartputc+0xc>
    80008078:	fd010113          	addi	sp,sp,-48
    8000807c:	02813023          	sd	s0,32(sp)
    80008080:	00913c23          	sd	s1,24(sp)
    80008084:	01213823          	sd	s2,16(sp)
    80008088:	01313423          	sd	s3,8(sp)
    8000808c:	02113423          	sd	ra,40(sp)
    80008090:	03010413          	addi	s0,sp,48
    80008094:	00004917          	auipc	s2,0x4
    80008098:	bac90913          	addi	s2,s2,-1108 # 8000bc40 <uart_tx_r>
    8000809c:	00093783          	ld	a5,0(s2)
    800080a0:	00004497          	auipc	s1,0x4
    800080a4:	ba848493          	addi	s1,s1,-1112 # 8000bc48 <uart_tx_w>
    800080a8:	0004b703          	ld	a4,0(s1)
    800080ac:	02078693          	addi	a3,a5,32
    800080b0:	00050993          	mv	s3,a0
    800080b4:	02e69c63          	bne	a3,a4,800080ec <uartputc+0x84>
    800080b8:	00001097          	auipc	ra,0x1
    800080bc:	834080e7          	jalr	-1996(ra) # 800088ec <push_on>
    800080c0:	00093783          	ld	a5,0(s2)
    800080c4:	0004b703          	ld	a4,0(s1)
    800080c8:	02078793          	addi	a5,a5,32
    800080cc:	00e79463          	bne	a5,a4,800080d4 <uartputc+0x6c>
    800080d0:	0000006f          	j	800080d0 <uartputc+0x68>
    800080d4:	00001097          	auipc	ra,0x1
    800080d8:	88c080e7          	jalr	-1908(ra) # 80008960 <pop_on>
    800080dc:	00093783          	ld	a5,0(s2)
    800080e0:	0004b703          	ld	a4,0(s1)
    800080e4:	02078693          	addi	a3,a5,32
    800080e8:	fce688e3          	beq	a3,a4,800080b8 <uartputc+0x50>
    800080ec:	01f77693          	andi	a3,a4,31
    800080f0:	00005597          	auipc	a1,0x5
    800080f4:	e8058593          	addi	a1,a1,-384 # 8000cf70 <uart_tx_buf>
    800080f8:	00d586b3          	add	a3,a1,a3
    800080fc:	00170713          	addi	a4,a4,1
    80008100:	01368023          	sb	s3,0(a3)
    80008104:	00e4b023          	sd	a4,0(s1)
    80008108:	10000637          	lui	a2,0x10000
    8000810c:	02f71063          	bne	a4,a5,8000812c <uartputc+0xc4>
    80008110:	0340006f          	j	80008144 <uartputc+0xdc>
    80008114:	00074703          	lbu	a4,0(a4)
    80008118:	00f93023          	sd	a5,0(s2)
    8000811c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008120:	00093783          	ld	a5,0(s2)
    80008124:	0004b703          	ld	a4,0(s1)
    80008128:	00f70e63          	beq	a4,a5,80008144 <uartputc+0xdc>
    8000812c:	00564683          	lbu	a3,5(a2)
    80008130:	01f7f713          	andi	a4,a5,31
    80008134:	00e58733          	add	a4,a1,a4
    80008138:	0206f693          	andi	a3,a3,32
    8000813c:	00178793          	addi	a5,a5,1
    80008140:	fc069ae3          	bnez	a3,80008114 <uartputc+0xac>
    80008144:	02813083          	ld	ra,40(sp)
    80008148:	02013403          	ld	s0,32(sp)
    8000814c:	01813483          	ld	s1,24(sp)
    80008150:	01013903          	ld	s2,16(sp)
    80008154:	00813983          	ld	s3,8(sp)
    80008158:	03010113          	addi	sp,sp,48
    8000815c:	00008067          	ret

0000000080008160 <uartputc_sync>:
    80008160:	ff010113          	addi	sp,sp,-16
    80008164:	00813423          	sd	s0,8(sp)
    80008168:	01010413          	addi	s0,sp,16
    8000816c:	00004717          	auipc	a4,0x4
    80008170:	acc72703          	lw	a4,-1332(a4) # 8000bc38 <panicked>
    80008174:	02071663          	bnez	a4,800081a0 <uartputc_sync+0x40>
    80008178:	00050793          	mv	a5,a0
    8000817c:	100006b7          	lui	a3,0x10000
    80008180:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008184:	02077713          	andi	a4,a4,32
    80008188:	fe070ce3          	beqz	a4,80008180 <uartputc_sync+0x20>
    8000818c:	0ff7f793          	andi	a5,a5,255
    80008190:	00f68023          	sb	a5,0(a3)
    80008194:	00813403          	ld	s0,8(sp)
    80008198:	01010113          	addi	sp,sp,16
    8000819c:	00008067          	ret
    800081a0:	0000006f          	j	800081a0 <uartputc_sync+0x40>

00000000800081a4 <uartstart>:
    800081a4:	ff010113          	addi	sp,sp,-16
    800081a8:	00813423          	sd	s0,8(sp)
    800081ac:	01010413          	addi	s0,sp,16
    800081b0:	00004617          	auipc	a2,0x4
    800081b4:	a9060613          	addi	a2,a2,-1392 # 8000bc40 <uart_tx_r>
    800081b8:	00004517          	auipc	a0,0x4
    800081bc:	a9050513          	addi	a0,a0,-1392 # 8000bc48 <uart_tx_w>
    800081c0:	00063783          	ld	a5,0(a2)
    800081c4:	00053703          	ld	a4,0(a0)
    800081c8:	04f70263          	beq	a4,a5,8000820c <uartstart+0x68>
    800081cc:	100005b7          	lui	a1,0x10000
    800081d0:	00005817          	auipc	a6,0x5
    800081d4:	da080813          	addi	a6,a6,-608 # 8000cf70 <uart_tx_buf>
    800081d8:	01c0006f          	j	800081f4 <uartstart+0x50>
    800081dc:	0006c703          	lbu	a4,0(a3)
    800081e0:	00f63023          	sd	a5,0(a2)
    800081e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081e8:	00063783          	ld	a5,0(a2)
    800081ec:	00053703          	ld	a4,0(a0)
    800081f0:	00f70e63          	beq	a4,a5,8000820c <uartstart+0x68>
    800081f4:	01f7f713          	andi	a4,a5,31
    800081f8:	00e806b3          	add	a3,a6,a4
    800081fc:	0055c703          	lbu	a4,5(a1)
    80008200:	00178793          	addi	a5,a5,1
    80008204:	02077713          	andi	a4,a4,32
    80008208:	fc071ae3          	bnez	a4,800081dc <uartstart+0x38>
    8000820c:	00813403          	ld	s0,8(sp)
    80008210:	01010113          	addi	sp,sp,16
    80008214:	00008067          	ret

0000000080008218 <uartgetc>:
    80008218:	ff010113          	addi	sp,sp,-16
    8000821c:	00813423          	sd	s0,8(sp)
    80008220:	01010413          	addi	s0,sp,16
    80008224:	10000737          	lui	a4,0x10000
    80008228:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000822c:	0017f793          	andi	a5,a5,1
    80008230:	00078c63          	beqz	a5,80008248 <uartgetc+0x30>
    80008234:	00074503          	lbu	a0,0(a4)
    80008238:	0ff57513          	andi	a0,a0,255
    8000823c:	00813403          	ld	s0,8(sp)
    80008240:	01010113          	addi	sp,sp,16
    80008244:	00008067          	ret
    80008248:	fff00513          	li	a0,-1
    8000824c:	ff1ff06f          	j	8000823c <uartgetc+0x24>

0000000080008250 <uartintr>:
    80008250:	100007b7          	lui	a5,0x10000
    80008254:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008258:	0017f793          	andi	a5,a5,1
    8000825c:	0a078463          	beqz	a5,80008304 <uartintr+0xb4>
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	00113c23          	sd	ra,24(sp)
    80008270:	02010413          	addi	s0,sp,32
    80008274:	100004b7          	lui	s1,0x10000
    80008278:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000827c:	0ff57513          	andi	a0,a0,255
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	534080e7          	jalr	1332(ra) # 800077b4 <consoleintr>
    80008288:	0054c783          	lbu	a5,5(s1)
    8000828c:	0017f793          	andi	a5,a5,1
    80008290:	fe0794e3          	bnez	a5,80008278 <uartintr+0x28>
    80008294:	00004617          	auipc	a2,0x4
    80008298:	9ac60613          	addi	a2,a2,-1620 # 8000bc40 <uart_tx_r>
    8000829c:	00004517          	auipc	a0,0x4
    800082a0:	9ac50513          	addi	a0,a0,-1620 # 8000bc48 <uart_tx_w>
    800082a4:	00063783          	ld	a5,0(a2)
    800082a8:	00053703          	ld	a4,0(a0)
    800082ac:	04f70263          	beq	a4,a5,800082f0 <uartintr+0xa0>
    800082b0:	100005b7          	lui	a1,0x10000
    800082b4:	00005817          	auipc	a6,0x5
    800082b8:	cbc80813          	addi	a6,a6,-836 # 8000cf70 <uart_tx_buf>
    800082bc:	01c0006f          	j	800082d8 <uartintr+0x88>
    800082c0:	0006c703          	lbu	a4,0(a3)
    800082c4:	00f63023          	sd	a5,0(a2)
    800082c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082cc:	00063783          	ld	a5,0(a2)
    800082d0:	00053703          	ld	a4,0(a0)
    800082d4:	00f70e63          	beq	a4,a5,800082f0 <uartintr+0xa0>
    800082d8:	01f7f713          	andi	a4,a5,31
    800082dc:	00e806b3          	add	a3,a6,a4
    800082e0:	0055c703          	lbu	a4,5(a1)
    800082e4:	00178793          	addi	a5,a5,1
    800082e8:	02077713          	andi	a4,a4,32
    800082ec:	fc071ae3          	bnez	a4,800082c0 <uartintr+0x70>
    800082f0:	01813083          	ld	ra,24(sp)
    800082f4:	01013403          	ld	s0,16(sp)
    800082f8:	00813483          	ld	s1,8(sp)
    800082fc:	02010113          	addi	sp,sp,32
    80008300:	00008067          	ret
    80008304:	00004617          	auipc	a2,0x4
    80008308:	93c60613          	addi	a2,a2,-1732 # 8000bc40 <uart_tx_r>
    8000830c:	00004517          	auipc	a0,0x4
    80008310:	93c50513          	addi	a0,a0,-1732 # 8000bc48 <uart_tx_w>
    80008314:	00063783          	ld	a5,0(a2)
    80008318:	00053703          	ld	a4,0(a0)
    8000831c:	04f70263          	beq	a4,a5,80008360 <uartintr+0x110>
    80008320:	100005b7          	lui	a1,0x10000
    80008324:	00005817          	auipc	a6,0x5
    80008328:	c4c80813          	addi	a6,a6,-948 # 8000cf70 <uart_tx_buf>
    8000832c:	01c0006f          	j	80008348 <uartintr+0xf8>
    80008330:	0006c703          	lbu	a4,0(a3)
    80008334:	00f63023          	sd	a5,0(a2)
    80008338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000833c:	00063783          	ld	a5,0(a2)
    80008340:	00053703          	ld	a4,0(a0)
    80008344:	02f70063          	beq	a4,a5,80008364 <uartintr+0x114>
    80008348:	01f7f713          	andi	a4,a5,31
    8000834c:	00e806b3          	add	a3,a6,a4
    80008350:	0055c703          	lbu	a4,5(a1)
    80008354:	00178793          	addi	a5,a5,1
    80008358:	02077713          	andi	a4,a4,32
    8000835c:	fc071ae3          	bnez	a4,80008330 <uartintr+0xe0>
    80008360:	00008067          	ret
    80008364:	00008067          	ret

0000000080008368 <kinit>:
    80008368:	fc010113          	addi	sp,sp,-64
    8000836c:	02913423          	sd	s1,40(sp)
    80008370:	fffff7b7          	lui	a5,0xfffff
    80008374:	00006497          	auipc	s1,0x6
    80008378:	c1b48493          	addi	s1,s1,-997 # 8000df8f <end+0xfff>
    8000837c:	02813823          	sd	s0,48(sp)
    80008380:	01313c23          	sd	s3,24(sp)
    80008384:	00f4f4b3          	and	s1,s1,a5
    80008388:	02113c23          	sd	ra,56(sp)
    8000838c:	03213023          	sd	s2,32(sp)
    80008390:	01413823          	sd	s4,16(sp)
    80008394:	01513423          	sd	s5,8(sp)
    80008398:	04010413          	addi	s0,sp,64
    8000839c:	000017b7          	lui	a5,0x1
    800083a0:	01100993          	li	s3,17
    800083a4:	00f487b3          	add	a5,s1,a5
    800083a8:	01b99993          	slli	s3,s3,0x1b
    800083ac:	06f9e063          	bltu	s3,a5,8000840c <kinit+0xa4>
    800083b0:	00005a97          	auipc	s5,0x5
    800083b4:	be0a8a93          	addi	s5,s5,-1056 # 8000cf90 <end>
    800083b8:	0754ec63          	bltu	s1,s5,80008430 <kinit+0xc8>
    800083bc:	0734fa63          	bgeu	s1,s3,80008430 <kinit+0xc8>
    800083c0:	00088a37          	lui	s4,0x88
    800083c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083c8:	00004917          	auipc	s2,0x4
    800083cc:	88890913          	addi	s2,s2,-1912 # 8000bc50 <kmem>
    800083d0:	00ca1a13          	slli	s4,s4,0xc
    800083d4:	0140006f          	j	800083e8 <kinit+0x80>
    800083d8:	000017b7          	lui	a5,0x1
    800083dc:	00f484b3          	add	s1,s1,a5
    800083e0:	0554e863          	bltu	s1,s5,80008430 <kinit+0xc8>
    800083e4:	0534f663          	bgeu	s1,s3,80008430 <kinit+0xc8>
    800083e8:	00001637          	lui	a2,0x1
    800083ec:	00100593          	li	a1,1
    800083f0:	00048513          	mv	a0,s1
    800083f4:	00000097          	auipc	ra,0x0
    800083f8:	5e4080e7          	jalr	1508(ra) # 800089d8 <__memset>
    800083fc:	00093783          	ld	a5,0(s2)
    80008400:	00f4b023          	sd	a5,0(s1)
    80008404:	00993023          	sd	s1,0(s2)
    80008408:	fd4498e3          	bne	s1,s4,800083d8 <kinit+0x70>
    8000840c:	03813083          	ld	ra,56(sp)
    80008410:	03013403          	ld	s0,48(sp)
    80008414:	02813483          	ld	s1,40(sp)
    80008418:	02013903          	ld	s2,32(sp)
    8000841c:	01813983          	ld	s3,24(sp)
    80008420:	01013a03          	ld	s4,16(sp)
    80008424:	00813a83          	ld	s5,8(sp)
    80008428:	04010113          	addi	sp,sp,64
    8000842c:	00008067          	ret
    80008430:	00001517          	auipc	a0,0x1
    80008434:	30850513          	addi	a0,a0,776 # 80009738 <digits+0x18>
    80008438:	fffff097          	auipc	ra,0xfffff
    8000843c:	4b4080e7          	jalr	1204(ra) # 800078ec <panic>

0000000080008440 <freerange>:
    80008440:	fc010113          	addi	sp,sp,-64
    80008444:	000017b7          	lui	a5,0x1
    80008448:	02913423          	sd	s1,40(sp)
    8000844c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008450:	009504b3          	add	s1,a0,s1
    80008454:	fffff537          	lui	a0,0xfffff
    80008458:	02813823          	sd	s0,48(sp)
    8000845c:	02113c23          	sd	ra,56(sp)
    80008460:	03213023          	sd	s2,32(sp)
    80008464:	01313c23          	sd	s3,24(sp)
    80008468:	01413823          	sd	s4,16(sp)
    8000846c:	01513423          	sd	s5,8(sp)
    80008470:	01613023          	sd	s6,0(sp)
    80008474:	04010413          	addi	s0,sp,64
    80008478:	00a4f4b3          	and	s1,s1,a0
    8000847c:	00f487b3          	add	a5,s1,a5
    80008480:	06f5e463          	bltu	a1,a5,800084e8 <freerange+0xa8>
    80008484:	00005a97          	auipc	s5,0x5
    80008488:	b0ca8a93          	addi	s5,s5,-1268 # 8000cf90 <end>
    8000848c:	0954e263          	bltu	s1,s5,80008510 <freerange+0xd0>
    80008490:	01100993          	li	s3,17
    80008494:	01b99993          	slli	s3,s3,0x1b
    80008498:	0734fc63          	bgeu	s1,s3,80008510 <freerange+0xd0>
    8000849c:	00058a13          	mv	s4,a1
    800084a0:	00003917          	auipc	s2,0x3
    800084a4:	7b090913          	addi	s2,s2,1968 # 8000bc50 <kmem>
    800084a8:	00002b37          	lui	s6,0x2
    800084ac:	0140006f          	j	800084c0 <freerange+0x80>
    800084b0:	000017b7          	lui	a5,0x1
    800084b4:	00f484b3          	add	s1,s1,a5
    800084b8:	0554ec63          	bltu	s1,s5,80008510 <freerange+0xd0>
    800084bc:	0534fa63          	bgeu	s1,s3,80008510 <freerange+0xd0>
    800084c0:	00001637          	lui	a2,0x1
    800084c4:	00100593          	li	a1,1
    800084c8:	00048513          	mv	a0,s1
    800084cc:	00000097          	auipc	ra,0x0
    800084d0:	50c080e7          	jalr	1292(ra) # 800089d8 <__memset>
    800084d4:	00093703          	ld	a4,0(s2)
    800084d8:	016487b3          	add	a5,s1,s6
    800084dc:	00e4b023          	sd	a4,0(s1)
    800084e0:	00993023          	sd	s1,0(s2)
    800084e4:	fcfa76e3          	bgeu	s4,a5,800084b0 <freerange+0x70>
    800084e8:	03813083          	ld	ra,56(sp)
    800084ec:	03013403          	ld	s0,48(sp)
    800084f0:	02813483          	ld	s1,40(sp)
    800084f4:	02013903          	ld	s2,32(sp)
    800084f8:	01813983          	ld	s3,24(sp)
    800084fc:	01013a03          	ld	s4,16(sp)
    80008500:	00813a83          	ld	s5,8(sp)
    80008504:	00013b03          	ld	s6,0(sp)
    80008508:	04010113          	addi	sp,sp,64
    8000850c:	00008067          	ret
    80008510:	00001517          	auipc	a0,0x1
    80008514:	22850513          	addi	a0,a0,552 # 80009738 <digits+0x18>
    80008518:	fffff097          	auipc	ra,0xfffff
    8000851c:	3d4080e7          	jalr	980(ra) # 800078ec <panic>

0000000080008520 <kfree>:
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00113c23          	sd	ra,24(sp)
    8000852c:	00913423          	sd	s1,8(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	03451793          	slli	a5,a0,0x34
    80008538:	04079c63          	bnez	a5,80008590 <kfree+0x70>
    8000853c:	00005797          	auipc	a5,0x5
    80008540:	a5478793          	addi	a5,a5,-1452 # 8000cf90 <end>
    80008544:	00050493          	mv	s1,a0
    80008548:	04f56463          	bltu	a0,a5,80008590 <kfree+0x70>
    8000854c:	01100793          	li	a5,17
    80008550:	01b79793          	slli	a5,a5,0x1b
    80008554:	02f57e63          	bgeu	a0,a5,80008590 <kfree+0x70>
    80008558:	00001637          	lui	a2,0x1
    8000855c:	00100593          	li	a1,1
    80008560:	00000097          	auipc	ra,0x0
    80008564:	478080e7          	jalr	1144(ra) # 800089d8 <__memset>
    80008568:	00003797          	auipc	a5,0x3
    8000856c:	6e878793          	addi	a5,a5,1768 # 8000bc50 <kmem>
    80008570:	0007b703          	ld	a4,0(a5)
    80008574:	01813083          	ld	ra,24(sp)
    80008578:	01013403          	ld	s0,16(sp)
    8000857c:	00e4b023          	sd	a4,0(s1)
    80008580:	0097b023          	sd	s1,0(a5)
    80008584:	00813483          	ld	s1,8(sp)
    80008588:	02010113          	addi	sp,sp,32
    8000858c:	00008067          	ret
    80008590:	00001517          	auipc	a0,0x1
    80008594:	1a850513          	addi	a0,a0,424 # 80009738 <digits+0x18>
    80008598:	fffff097          	auipc	ra,0xfffff
    8000859c:	354080e7          	jalr	852(ra) # 800078ec <panic>

00000000800085a0 <kalloc>:
    800085a0:	fe010113          	addi	sp,sp,-32
    800085a4:	00813823          	sd	s0,16(sp)
    800085a8:	00913423          	sd	s1,8(sp)
    800085ac:	00113c23          	sd	ra,24(sp)
    800085b0:	02010413          	addi	s0,sp,32
    800085b4:	00003797          	auipc	a5,0x3
    800085b8:	69c78793          	addi	a5,a5,1692 # 8000bc50 <kmem>
    800085bc:	0007b483          	ld	s1,0(a5)
    800085c0:	02048063          	beqz	s1,800085e0 <kalloc+0x40>
    800085c4:	0004b703          	ld	a4,0(s1)
    800085c8:	00001637          	lui	a2,0x1
    800085cc:	00500593          	li	a1,5
    800085d0:	00048513          	mv	a0,s1
    800085d4:	00e7b023          	sd	a4,0(a5)
    800085d8:	00000097          	auipc	ra,0x0
    800085dc:	400080e7          	jalr	1024(ra) # 800089d8 <__memset>
    800085e0:	01813083          	ld	ra,24(sp)
    800085e4:	01013403          	ld	s0,16(sp)
    800085e8:	00048513          	mv	a0,s1
    800085ec:	00813483          	ld	s1,8(sp)
    800085f0:	02010113          	addi	sp,sp,32
    800085f4:	00008067          	ret

00000000800085f8 <initlock>:
    800085f8:	ff010113          	addi	sp,sp,-16
    800085fc:	00813423          	sd	s0,8(sp)
    80008600:	01010413          	addi	s0,sp,16
    80008604:	00813403          	ld	s0,8(sp)
    80008608:	00b53423          	sd	a1,8(a0)
    8000860c:	00052023          	sw	zero,0(a0)
    80008610:	00053823          	sd	zero,16(a0)
    80008614:	01010113          	addi	sp,sp,16
    80008618:	00008067          	ret

000000008000861c <acquire>:
    8000861c:	fe010113          	addi	sp,sp,-32
    80008620:	00813823          	sd	s0,16(sp)
    80008624:	00913423          	sd	s1,8(sp)
    80008628:	00113c23          	sd	ra,24(sp)
    8000862c:	01213023          	sd	s2,0(sp)
    80008630:	02010413          	addi	s0,sp,32
    80008634:	00050493          	mv	s1,a0
    80008638:	10002973          	csrr	s2,sstatus
    8000863c:	100027f3          	csrr	a5,sstatus
    80008640:	ffd7f793          	andi	a5,a5,-3
    80008644:	10079073          	csrw	sstatus,a5
    80008648:	fffff097          	auipc	ra,0xfffff
    8000864c:	8e0080e7          	jalr	-1824(ra) # 80006f28 <mycpu>
    80008650:	07852783          	lw	a5,120(a0)
    80008654:	06078e63          	beqz	a5,800086d0 <acquire+0xb4>
    80008658:	fffff097          	auipc	ra,0xfffff
    8000865c:	8d0080e7          	jalr	-1840(ra) # 80006f28 <mycpu>
    80008660:	07852783          	lw	a5,120(a0)
    80008664:	0004a703          	lw	a4,0(s1)
    80008668:	0017879b          	addiw	a5,a5,1
    8000866c:	06f52c23          	sw	a5,120(a0)
    80008670:	04071063          	bnez	a4,800086b0 <acquire+0x94>
    80008674:	00100713          	li	a4,1
    80008678:	00070793          	mv	a5,a4
    8000867c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008680:	0007879b          	sext.w	a5,a5
    80008684:	fe079ae3          	bnez	a5,80008678 <acquire+0x5c>
    80008688:	0ff0000f          	fence
    8000868c:	fffff097          	auipc	ra,0xfffff
    80008690:	89c080e7          	jalr	-1892(ra) # 80006f28 <mycpu>
    80008694:	01813083          	ld	ra,24(sp)
    80008698:	01013403          	ld	s0,16(sp)
    8000869c:	00a4b823          	sd	a0,16(s1)
    800086a0:	00013903          	ld	s2,0(sp)
    800086a4:	00813483          	ld	s1,8(sp)
    800086a8:	02010113          	addi	sp,sp,32
    800086ac:	00008067          	ret
    800086b0:	0104b903          	ld	s2,16(s1)
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	874080e7          	jalr	-1932(ra) # 80006f28 <mycpu>
    800086bc:	faa91ce3          	bne	s2,a0,80008674 <acquire+0x58>
    800086c0:	00001517          	auipc	a0,0x1
    800086c4:	08050513          	addi	a0,a0,128 # 80009740 <digits+0x20>
    800086c8:	fffff097          	auipc	ra,0xfffff
    800086cc:	224080e7          	jalr	548(ra) # 800078ec <panic>
    800086d0:	00195913          	srli	s2,s2,0x1
    800086d4:	fffff097          	auipc	ra,0xfffff
    800086d8:	854080e7          	jalr	-1964(ra) # 80006f28 <mycpu>
    800086dc:	00197913          	andi	s2,s2,1
    800086e0:	07252e23          	sw	s2,124(a0)
    800086e4:	f75ff06f          	j	80008658 <acquire+0x3c>

00000000800086e8 <release>:
    800086e8:	fe010113          	addi	sp,sp,-32
    800086ec:	00813823          	sd	s0,16(sp)
    800086f0:	00113c23          	sd	ra,24(sp)
    800086f4:	00913423          	sd	s1,8(sp)
    800086f8:	01213023          	sd	s2,0(sp)
    800086fc:	02010413          	addi	s0,sp,32
    80008700:	00052783          	lw	a5,0(a0)
    80008704:	00079a63          	bnez	a5,80008718 <release+0x30>
    80008708:	00001517          	auipc	a0,0x1
    8000870c:	04050513          	addi	a0,a0,64 # 80009748 <digits+0x28>
    80008710:	fffff097          	auipc	ra,0xfffff
    80008714:	1dc080e7          	jalr	476(ra) # 800078ec <panic>
    80008718:	01053903          	ld	s2,16(a0)
    8000871c:	00050493          	mv	s1,a0
    80008720:	fffff097          	auipc	ra,0xfffff
    80008724:	808080e7          	jalr	-2040(ra) # 80006f28 <mycpu>
    80008728:	fea910e3          	bne	s2,a0,80008708 <release+0x20>
    8000872c:	0004b823          	sd	zero,16(s1)
    80008730:	0ff0000f          	fence
    80008734:	0f50000f          	fence	iorw,ow
    80008738:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000873c:	ffffe097          	auipc	ra,0xffffe
    80008740:	7ec080e7          	jalr	2028(ra) # 80006f28 <mycpu>
    80008744:	100027f3          	csrr	a5,sstatus
    80008748:	0027f793          	andi	a5,a5,2
    8000874c:	04079a63          	bnez	a5,800087a0 <release+0xb8>
    80008750:	07852783          	lw	a5,120(a0)
    80008754:	02f05e63          	blez	a5,80008790 <release+0xa8>
    80008758:	fff7871b          	addiw	a4,a5,-1
    8000875c:	06e52c23          	sw	a4,120(a0)
    80008760:	00071c63          	bnez	a4,80008778 <release+0x90>
    80008764:	07c52783          	lw	a5,124(a0)
    80008768:	00078863          	beqz	a5,80008778 <release+0x90>
    8000876c:	100027f3          	csrr	a5,sstatus
    80008770:	0027e793          	ori	a5,a5,2
    80008774:	10079073          	csrw	sstatus,a5
    80008778:	01813083          	ld	ra,24(sp)
    8000877c:	01013403          	ld	s0,16(sp)
    80008780:	00813483          	ld	s1,8(sp)
    80008784:	00013903          	ld	s2,0(sp)
    80008788:	02010113          	addi	sp,sp,32
    8000878c:	00008067          	ret
    80008790:	00001517          	auipc	a0,0x1
    80008794:	fd850513          	addi	a0,a0,-40 # 80009768 <digits+0x48>
    80008798:	fffff097          	auipc	ra,0xfffff
    8000879c:	154080e7          	jalr	340(ra) # 800078ec <panic>
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	fb050513          	addi	a0,a0,-80 # 80009750 <digits+0x30>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	144080e7          	jalr	324(ra) # 800078ec <panic>

00000000800087b0 <holding>:
    800087b0:	00052783          	lw	a5,0(a0)
    800087b4:	00079663          	bnez	a5,800087c0 <holding+0x10>
    800087b8:	00000513          	li	a0,0
    800087bc:	00008067          	ret
    800087c0:	fe010113          	addi	sp,sp,-32
    800087c4:	00813823          	sd	s0,16(sp)
    800087c8:	00913423          	sd	s1,8(sp)
    800087cc:	00113c23          	sd	ra,24(sp)
    800087d0:	02010413          	addi	s0,sp,32
    800087d4:	01053483          	ld	s1,16(a0)
    800087d8:	ffffe097          	auipc	ra,0xffffe
    800087dc:	750080e7          	jalr	1872(ra) # 80006f28 <mycpu>
    800087e0:	01813083          	ld	ra,24(sp)
    800087e4:	01013403          	ld	s0,16(sp)
    800087e8:	40a48533          	sub	a0,s1,a0
    800087ec:	00153513          	seqz	a0,a0
    800087f0:	00813483          	ld	s1,8(sp)
    800087f4:	02010113          	addi	sp,sp,32
    800087f8:	00008067          	ret

00000000800087fc <push_off>:
    800087fc:	fe010113          	addi	sp,sp,-32
    80008800:	00813823          	sd	s0,16(sp)
    80008804:	00113c23          	sd	ra,24(sp)
    80008808:	00913423          	sd	s1,8(sp)
    8000880c:	02010413          	addi	s0,sp,32
    80008810:	100024f3          	csrr	s1,sstatus
    80008814:	100027f3          	csrr	a5,sstatus
    80008818:	ffd7f793          	andi	a5,a5,-3
    8000881c:	10079073          	csrw	sstatus,a5
    80008820:	ffffe097          	auipc	ra,0xffffe
    80008824:	708080e7          	jalr	1800(ra) # 80006f28 <mycpu>
    80008828:	07852783          	lw	a5,120(a0)
    8000882c:	02078663          	beqz	a5,80008858 <push_off+0x5c>
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	6f8080e7          	jalr	1784(ra) # 80006f28 <mycpu>
    80008838:	07852783          	lw	a5,120(a0)
    8000883c:	01813083          	ld	ra,24(sp)
    80008840:	01013403          	ld	s0,16(sp)
    80008844:	0017879b          	addiw	a5,a5,1
    80008848:	06f52c23          	sw	a5,120(a0)
    8000884c:	00813483          	ld	s1,8(sp)
    80008850:	02010113          	addi	sp,sp,32
    80008854:	00008067          	ret
    80008858:	0014d493          	srli	s1,s1,0x1
    8000885c:	ffffe097          	auipc	ra,0xffffe
    80008860:	6cc080e7          	jalr	1740(ra) # 80006f28 <mycpu>
    80008864:	0014f493          	andi	s1,s1,1
    80008868:	06952e23          	sw	s1,124(a0)
    8000886c:	fc5ff06f          	j	80008830 <push_off+0x34>

0000000080008870 <pop_off>:
    80008870:	ff010113          	addi	sp,sp,-16
    80008874:	00813023          	sd	s0,0(sp)
    80008878:	00113423          	sd	ra,8(sp)
    8000887c:	01010413          	addi	s0,sp,16
    80008880:	ffffe097          	auipc	ra,0xffffe
    80008884:	6a8080e7          	jalr	1704(ra) # 80006f28 <mycpu>
    80008888:	100027f3          	csrr	a5,sstatus
    8000888c:	0027f793          	andi	a5,a5,2
    80008890:	04079663          	bnez	a5,800088dc <pop_off+0x6c>
    80008894:	07852783          	lw	a5,120(a0)
    80008898:	02f05a63          	blez	a5,800088cc <pop_off+0x5c>
    8000889c:	fff7871b          	addiw	a4,a5,-1
    800088a0:	06e52c23          	sw	a4,120(a0)
    800088a4:	00071c63          	bnez	a4,800088bc <pop_off+0x4c>
    800088a8:	07c52783          	lw	a5,124(a0)
    800088ac:	00078863          	beqz	a5,800088bc <pop_off+0x4c>
    800088b0:	100027f3          	csrr	a5,sstatus
    800088b4:	0027e793          	ori	a5,a5,2
    800088b8:	10079073          	csrw	sstatus,a5
    800088bc:	00813083          	ld	ra,8(sp)
    800088c0:	00013403          	ld	s0,0(sp)
    800088c4:	01010113          	addi	sp,sp,16
    800088c8:	00008067          	ret
    800088cc:	00001517          	auipc	a0,0x1
    800088d0:	e9c50513          	addi	a0,a0,-356 # 80009768 <digits+0x48>
    800088d4:	fffff097          	auipc	ra,0xfffff
    800088d8:	018080e7          	jalr	24(ra) # 800078ec <panic>
    800088dc:	00001517          	auipc	a0,0x1
    800088e0:	e7450513          	addi	a0,a0,-396 # 80009750 <digits+0x30>
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	008080e7          	jalr	8(ra) # 800078ec <panic>

00000000800088ec <push_on>:
    800088ec:	fe010113          	addi	sp,sp,-32
    800088f0:	00813823          	sd	s0,16(sp)
    800088f4:	00113c23          	sd	ra,24(sp)
    800088f8:	00913423          	sd	s1,8(sp)
    800088fc:	02010413          	addi	s0,sp,32
    80008900:	100024f3          	csrr	s1,sstatus
    80008904:	100027f3          	csrr	a5,sstatus
    80008908:	0027e793          	ori	a5,a5,2
    8000890c:	10079073          	csrw	sstatus,a5
    80008910:	ffffe097          	auipc	ra,0xffffe
    80008914:	618080e7          	jalr	1560(ra) # 80006f28 <mycpu>
    80008918:	07852783          	lw	a5,120(a0)
    8000891c:	02078663          	beqz	a5,80008948 <push_on+0x5c>
    80008920:	ffffe097          	auipc	ra,0xffffe
    80008924:	608080e7          	jalr	1544(ra) # 80006f28 <mycpu>
    80008928:	07852783          	lw	a5,120(a0)
    8000892c:	01813083          	ld	ra,24(sp)
    80008930:	01013403          	ld	s0,16(sp)
    80008934:	0017879b          	addiw	a5,a5,1
    80008938:	06f52c23          	sw	a5,120(a0)
    8000893c:	00813483          	ld	s1,8(sp)
    80008940:	02010113          	addi	sp,sp,32
    80008944:	00008067          	ret
    80008948:	0014d493          	srli	s1,s1,0x1
    8000894c:	ffffe097          	auipc	ra,0xffffe
    80008950:	5dc080e7          	jalr	1500(ra) # 80006f28 <mycpu>
    80008954:	0014f493          	andi	s1,s1,1
    80008958:	06952e23          	sw	s1,124(a0)
    8000895c:	fc5ff06f          	j	80008920 <push_on+0x34>

0000000080008960 <pop_on>:
    80008960:	ff010113          	addi	sp,sp,-16
    80008964:	00813023          	sd	s0,0(sp)
    80008968:	00113423          	sd	ra,8(sp)
    8000896c:	01010413          	addi	s0,sp,16
    80008970:	ffffe097          	auipc	ra,0xffffe
    80008974:	5b8080e7          	jalr	1464(ra) # 80006f28 <mycpu>
    80008978:	100027f3          	csrr	a5,sstatus
    8000897c:	0027f793          	andi	a5,a5,2
    80008980:	04078463          	beqz	a5,800089c8 <pop_on+0x68>
    80008984:	07852783          	lw	a5,120(a0)
    80008988:	02f05863          	blez	a5,800089b8 <pop_on+0x58>
    8000898c:	fff7879b          	addiw	a5,a5,-1
    80008990:	06f52c23          	sw	a5,120(a0)
    80008994:	07853783          	ld	a5,120(a0)
    80008998:	00079863          	bnez	a5,800089a8 <pop_on+0x48>
    8000899c:	100027f3          	csrr	a5,sstatus
    800089a0:	ffd7f793          	andi	a5,a5,-3
    800089a4:	10079073          	csrw	sstatus,a5
    800089a8:	00813083          	ld	ra,8(sp)
    800089ac:	00013403          	ld	s0,0(sp)
    800089b0:	01010113          	addi	sp,sp,16
    800089b4:	00008067          	ret
    800089b8:	00001517          	auipc	a0,0x1
    800089bc:	dd850513          	addi	a0,a0,-552 # 80009790 <digits+0x70>
    800089c0:	fffff097          	auipc	ra,0xfffff
    800089c4:	f2c080e7          	jalr	-212(ra) # 800078ec <panic>
    800089c8:	00001517          	auipc	a0,0x1
    800089cc:	da850513          	addi	a0,a0,-600 # 80009770 <digits+0x50>
    800089d0:	fffff097          	auipc	ra,0xfffff
    800089d4:	f1c080e7          	jalr	-228(ra) # 800078ec <panic>

00000000800089d8 <__memset>:
    800089d8:	ff010113          	addi	sp,sp,-16
    800089dc:	00813423          	sd	s0,8(sp)
    800089e0:	01010413          	addi	s0,sp,16
    800089e4:	1a060e63          	beqz	a2,80008ba0 <__memset+0x1c8>
    800089e8:	40a007b3          	neg	a5,a0
    800089ec:	0077f793          	andi	a5,a5,7
    800089f0:	00778693          	addi	a3,a5,7
    800089f4:	00b00813          	li	a6,11
    800089f8:	0ff5f593          	andi	a1,a1,255
    800089fc:	fff6071b          	addiw	a4,a2,-1
    80008a00:	1b06e663          	bltu	a3,a6,80008bac <__memset+0x1d4>
    80008a04:	1cd76463          	bltu	a4,a3,80008bcc <__memset+0x1f4>
    80008a08:	1a078e63          	beqz	a5,80008bc4 <__memset+0x1ec>
    80008a0c:	00b50023          	sb	a1,0(a0)
    80008a10:	00100713          	li	a4,1
    80008a14:	1ae78463          	beq	a5,a4,80008bbc <__memset+0x1e4>
    80008a18:	00b500a3          	sb	a1,1(a0)
    80008a1c:	00200713          	li	a4,2
    80008a20:	1ae78a63          	beq	a5,a4,80008bd4 <__memset+0x1fc>
    80008a24:	00b50123          	sb	a1,2(a0)
    80008a28:	00300713          	li	a4,3
    80008a2c:	18e78463          	beq	a5,a4,80008bb4 <__memset+0x1dc>
    80008a30:	00b501a3          	sb	a1,3(a0)
    80008a34:	00400713          	li	a4,4
    80008a38:	1ae78263          	beq	a5,a4,80008bdc <__memset+0x204>
    80008a3c:	00b50223          	sb	a1,4(a0)
    80008a40:	00500713          	li	a4,5
    80008a44:	1ae78063          	beq	a5,a4,80008be4 <__memset+0x20c>
    80008a48:	00b502a3          	sb	a1,5(a0)
    80008a4c:	00700713          	li	a4,7
    80008a50:	18e79e63          	bne	a5,a4,80008bec <__memset+0x214>
    80008a54:	00b50323          	sb	a1,6(a0)
    80008a58:	00700e93          	li	t4,7
    80008a5c:	00859713          	slli	a4,a1,0x8
    80008a60:	00e5e733          	or	a4,a1,a4
    80008a64:	01059e13          	slli	t3,a1,0x10
    80008a68:	01c76e33          	or	t3,a4,t3
    80008a6c:	01859313          	slli	t1,a1,0x18
    80008a70:	006e6333          	or	t1,t3,t1
    80008a74:	02059893          	slli	a7,a1,0x20
    80008a78:	40f60e3b          	subw	t3,a2,a5
    80008a7c:	011368b3          	or	a7,t1,a7
    80008a80:	02859813          	slli	a6,a1,0x28
    80008a84:	0108e833          	or	a6,a7,a6
    80008a88:	03059693          	slli	a3,a1,0x30
    80008a8c:	003e589b          	srliw	a7,t3,0x3
    80008a90:	00d866b3          	or	a3,a6,a3
    80008a94:	03859713          	slli	a4,a1,0x38
    80008a98:	00389813          	slli	a6,a7,0x3
    80008a9c:	00f507b3          	add	a5,a0,a5
    80008aa0:	00e6e733          	or	a4,a3,a4
    80008aa4:	000e089b          	sext.w	a7,t3
    80008aa8:	00f806b3          	add	a3,a6,a5
    80008aac:	00e7b023          	sd	a4,0(a5)
    80008ab0:	00878793          	addi	a5,a5,8
    80008ab4:	fed79ce3          	bne	a5,a3,80008aac <__memset+0xd4>
    80008ab8:	ff8e7793          	andi	a5,t3,-8
    80008abc:	0007871b          	sext.w	a4,a5
    80008ac0:	01d787bb          	addw	a5,a5,t4
    80008ac4:	0ce88e63          	beq	a7,a4,80008ba0 <__memset+0x1c8>
    80008ac8:	00f50733          	add	a4,a0,a5
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0017871b          	addiw	a4,a5,1
    80008ad4:	0cc77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0027871b          	addiw	a4,a5,2
    80008ae4:	0ac77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0037871b          	addiw	a4,a5,3
    80008af4:	0ac77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0047871b          	addiw	a4,a5,4
    80008b04:	08c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0057871b          	addiw	a4,a5,5
    80008b14:	08c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0067871b          	addiw	a4,a5,6
    80008b24:	06c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0077871b          	addiw	a4,a5,7
    80008b34:	06c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0087871b          	addiw	a4,a5,8
    80008b44:	04c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0097871b          	addiw	a4,a5,9
    80008b54:	04c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	00a7871b          	addiw	a4,a5,10
    80008b64:	02c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00b7871b          	addiw	a4,a5,11
    80008b74:	02c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	00c7871b          	addiw	a4,a5,12
    80008b84:	00c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	00d7879b          	addiw	a5,a5,13
    80008b94:	00c7f663          	bgeu	a5,a2,80008ba0 <__memset+0x1c8>
    80008b98:	00f507b3          	add	a5,a0,a5
    80008b9c:	00b78023          	sb	a1,0(a5)
    80008ba0:	00813403          	ld	s0,8(sp)
    80008ba4:	01010113          	addi	sp,sp,16
    80008ba8:	00008067          	ret
    80008bac:	00b00693          	li	a3,11
    80008bb0:	e55ff06f          	j	80008a04 <__memset+0x2c>
    80008bb4:	00300e93          	li	t4,3
    80008bb8:	ea5ff06f          	j	80008a5c <__memset+0x84>
    80008bbc:	00100e93          	li	t4,1
    80008bc0:	e9dff06f          	j	80008a5c <__memset+0x84>
    80008bc4:	00000e93          	li	t4,0
    80008bc8:	e95ff06f          	j	80008a5c <__memset+0x84>
    80008bcc:	00000793          	li	a5,0
    80008bd0:	ef9ff06f          	j	80008ac8 <__memset+0xf0>
    80008bd4:	00200e93          	li	t4,2
    80008bd8:	e85ff06f          	j	80008a5c <__memset+0x84>
    80008bdc:	00400e93          	li	t4,4
    80008be0:	e7dff06f          	j	80008a5c <__memset+0x84>
    80008be4:	00500e93          	li	t4,5
    80008be8:	e75ff06f          	j	80008a5c <__memset+0x84>
    80008bec:	00600e93          	li	t4,6
    80008bf0:	e6dff06f          	j	80008a5c <__memset+0x84>

0000000080008bf4 <__memmove>:
    80008bf4:	ff010113          	addi	sp,sp,-16
    80008bf8:	00813423          	sd	s0,8(sp)
    80008bfc:	01010413          	addi	s0,sp,16
    80008c00:	0e060863          	beqz	a2,80008cf0 <__memmove+0xfc>
    80008c04:	fff6069b          	addiw	a3,a2,-1
    80008c08:	0006881b          	sext.w	a6,a3
    80008c0c:	0ea5e863          	bltu	a1,a0,80008cfc <__memmove+0x108>
    80008c10:	00758713          	addi	a4,a1,7
    80008c14:	00a5e7b3          	or	a5,a1,a0
    80008c18:	40a70733          	sub	a4,a4,a0
    80008c1c:	0077f793          	andi	a5,a5,7
    80008c20:	00f73713          	sltiu	a4,a4,15
    80008c24:	00174713          	xori	a4,a4,1
    80008c28:	0017b793          	seqz	a5,a5
    80008c2c:	00e7f7b3          	and	a5,a5,a4
    80008c30:	10078863          	beqz	a5,80008d40 <__memmove+0x14c>
    80008c34:	00900793          	li	a5,9
    80008c38:	1107f463          	bgeu	a5,a6,80008d40 <__memmove+0x14c>
    80008c3c:	0036581b          	srliw	a6,a2,0x3
    80008c40:	fff8081b          	addiw	a6,a6,-1
    80008c44:	02081813          	slli	a6,a6,0x20
    80008c48:	01d85893          	srli	a7,a6,0x1d
    80008c4c:	00858813          	addi	a6,a1,8
    80008c50:	00058793          	mv	a5,a1
    80008c54:	00050713          	mv	a4,a0
    80008c58:	01088833          	add	a6,a7,a6
    80008c5c:	0007b883          	ld	a7,0(a5)
    80008c60:	00878793          	addi	a5,a5,8
    80008c64:	00870713          	addi	a4,a4,8
    80008c68:	ff173c23          	sd	a7,-8(a4)
    80008c6c:	ff0798e3          	bne	a5,a6,80008c5c <__memmove+0x68>
    80008c70:	ff867713          	andi	a4,a2,-8
    80008c74:	02071793          	slli	a5,a4,0x20
    80008c78:	0207d793          	srli	a5,a5,0x20
    80008c7c:	00f585b3          	add	a1,a1,a5
    80008c80:	40e686bb          	subw	a3,a3,a4
    80008c84:	00f507b3          	add	a5,a0,a5
    80008c88:	06e60463          	beq	a2,a4,80008cf0 <__memmove+0xfc>
    80008c8c:	0005c703          	lbu	a4,0(a1)
    80008c90:	00e78023          	sb	a4,0(a5)
    80008c94:	04068e63          	beqz	a3,80008cf0 <__memmove+0xfc>
    80008c98:	0015c603          	lbu	a2,1(a1)
    80008c9c:	00100713          	li	a4,1
    80008ca0:	00c780a3          	sb	a2,1(a5)
    80008ca4:	04e68663          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008ca8:	0025c603          	lbu	a2,2(a1)
    80008cac:	00200713          	li	a4,2
    80008cb0:	00c78123          	sb	a2,2(a5)
    80008cb4:	02e68e63          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008cb8:	0035c603          	lbu	a2,3(a1)
    80008cbc:	00300713          	li	a4,3
    80008cc0:	00c781a3          	sb	a2,3(a5)
    80008cc4:	02e68663          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008cc8:	0045c603          	lbu	a2,4(a1)
    80008ccc:	00400713          	li	a4,4
    80008cd0:	00c78223          	sb	a2,4(a5)
    80008cd4:	00e68e63          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008cd8:	0055c603          	lbu	a2,5(a1)
    80008cdc:	00500713          	li	a4,5
    80008ce0:	00c782a3          	sb	a2,5(a5)
    80008ce4:	00e68663          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008ce8:	0065c703          	lbu	a4,6(a1)
    80008cec:	00e78323          	sb	a4,6(a5)
    80008cf0:	00813403          	ld	s0,8(sp)
    80008cf4:	01010113          	addi	sp,sp,16
    80008cf8:	00008067          	ret
    80008cfc:	02061713          	slli	a4,a2,0x20
    80008d00:	02075713          	srli	a4,a4,0x20
    80008d04:	00e587b3          	add	a5,a1,a4
    80008d08:	f0f574e3          	bgeu	a0,a5,80008c10 <__memmove+0x1c>
    80008d0c:	02069613          	slli	a2,a3,0x20
    80008d10:	02065613          	srli	a2,a2,0x20
    80008d14:	fff64613          	not	a2,a2
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00c78633          	add	a2,a5,a2
    80008d20:	fff7c683          	lbu	a3,-1(a5)
    80008d24:	fff78793          	addi	a5,a5,-1
    80008d28:	fff70713          	addi	a4,a4,-1
    80008d2c:	00d70023          	sb	a3,0(a4)
    80008d30:	fec798e3          	bne	a5,a2,80008d20 <__memmove+0x12c>
    80008d34:	00813403          	ld	s0,8(sp)
    80008d38:	01010113          	addi	sp,sp,16
    80008d3c:	00008067          	ret
    80008d40:	02069713          	slli	a4,a3,0x20
    80008d44:	02075713          	srli	a4,a4,0x20
    80008d48:	00170713          	addi	a4,a4,1
    80008d4c:	00e50733          	add	a4,a0,a4
    80008d50:	00050793          	mv	a5,a0
    80008d54:	0005c683          	lbu	a3,0(a1)
    80008d58:	00178793          	addi	a5,a5,1
    80008d5c:	00158593          	addi	a1,a1,1
    80008d60:	fed78fa3          	sb	a3,-1(a5)
    80008d64:	fee798e3          	bne	a5,a4,80008d54 <__memmove+0x160>
    80008d68:	f89ff06f          	j	80008cf0 <__memmove+0xfc>
	...
