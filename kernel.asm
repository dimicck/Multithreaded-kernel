
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	37013103          	ld	sp,880(sp) # 80004370 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	490010ef          	jal	ra,800014ac <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <main>:

#include "../h/Memoryallocator.hpp"
#include "../lib/console.h"

int main() {
    80001000:	ff010113          	addi	sp,sp,-16
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00813023          	sd	s0,0(sp)
    8000100c:	01010413          	addi	s0,sp,16
    __putc('\n');
    80001010:	00a00513          	li	a0,10
    80001014:	00002097          	auipc	ra,0x2
    80001018:	558080e7          	jalr	1368(ra) # 8000356c <__putc>
    MemoryAllocator::getAllocator();
    8000101c:	00000097          	auipc	ra,0x0
    80001020:	178080e7          	jalr	376(ra) # 80001194 <_ZN15MemoryAllocator12getAllocatorEv>
    MemoryAllocator::mem_alloc(15);
    80001024:	00f00513          	li	a0,15
    80001028:	00000097          	auipc	ra,0x0
    8000102c:	044080e7          	jalr	68(ra) # 8000106c <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::printfree();
    80001030:	00000097          	auipc	ra,0x0
    80001034:	3e0080e7          	jalr	992(ra) # 80001410 <_ZN15MemoryAllocator9printfreeEv>
    MemoryAllocator::mem_free((void*)(1*MEM_BLOCK_SIZE+ sizeof(MemoryAllocator::MemoryBlock)+(char*)HEAP_START_ADDR));
    80001038:	00003797          	auipc	a5,0x3
    8000103c:	3307b783          	ld	a5,816(a5) # 80004368 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001040:	0007b503          	ld	a0,0(a5)
    80001044:	05850513          	addi	a0,a0,88 # 1058 <_entry-0x7fffefa8>
    80001048:	00000097          	auipc	ra,0x0
    8000104c:	24c080e7          	jalr	588(ra) # 80001294 <_ZN15MemoryAllocator8mem_freeEPKv>
    MemoryAllocator::printfree();
    80001050:	00000097          	auipc	ra,0x0
    80001054:	3c0080e7          	jalr	960(ra) # 80001410 <_ZN15MemoryAllocator9printfreeEv>

    return 0;
}
    80001058:	00000513          	li	a0,0
    8000105c:	00813083          	ld	ra,8(sp)
    80001060:	00013403          	ld	s0,0(sp)
    80001064:	01010113          	addi	sp,sp,16
    80001068:	00008067          	ret

000000008000106c <_ZN15MemoryAllocator9mem_allocEm>:
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    8000106c:	ff010113          	addi	sp,sp,-16
    80001070:	00813423          	sd	s0,8(sp)
    80001074:	01010413          	addi	s0,sp,16
    //size je broj blokova koje zelimo zauzeti
    if (size <= 0) return nullptr;
    80001078:	10050a63          	beqz	a0,8000118c <_ZN15MemoryAllocator9mem_allocEm+0x120>

    MemoryBlock* curr = 0;
    size_t byte_size = ((size + sizeof(MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    8000107c:	05750513          	addi	a0,a0,87
    80001080:	fc057793          	andi	a5,a0,-64
    for (curr = free_mem_head; curr != 0; curr = curr -> next) {
    80001084:	00003517          	auipc	a0,0x3
    80001088:	33c53503          	ld	a0,828(a0) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
    8000108c:	0280006f          	j	800010b4 <_ZN15MemoryAllocator9mem_allocEm+0x48>

        if (curr->size >= byte_size) {

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
                if (curr->next) curr->next->prev = curr->prev;
    80001090:	00053703          	ld	a4,0(a0)
    80001094:	00070663          	beqz	a4,800010a0 <_ZN15MemoryAllocator9mem_allocEm+0x34>
    80001098:	00853683          	ld	a3,8(a0)
    8000109c:	00d73423          	sd	a3,8(a4)
                if (curr->prev) curr->prev->next = curr->next;
    800010a0:	00853703          	ld	a4,8(a0)
    800010a4:	08070063          	beqz	a4,80001124 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800010a8:	00053683          	ld	a3,0(a0)
    800010ac:	00d73023          	sd	a3,0(a4)
    for (curr = free_mem_head; curr != 0; curr = curr -> next) {
    800010b0:	00053503          	ld	a0,0(a0)
    800010b4:	0a050c63          	beqz	a0,8000116c <_ZN15MemoryAllocator9mem_allocEm+0x100>
        if (curr->size >= byte_size) {
    800010b8:	01053703          	ld	a4,16(a0)
    800010bc:	fef76ae3          	bltu	a4,a5,800010b0 <_ZN15MemoryAllocator9mem_allocEm+0x44>
            if (curr->size - byte_size < sizeof(MemoryBlock)) {
    800010c0:	40f70733          	sub	a4,a4,a5
    800010c4:	01700693          	li	a3,23
    800010c8:	fce6f4e3          	bgeu	a3,a4,80001090 <_ZN15MemoryAllocator9mem_allocEm+0x24>
                else free_mem_head = curr->next;
                // zauzima se prvi slobodni fragment
                continue;
            } else {
                // alociranje novog slobodnog segmenta za preostali prostor
                MemoryBlock *remaining = (MemoryBlock *) ((char *) curr + byte_size);
    800010cc:	00f50733          	add	a4,a0,a5
                remaining->next = curr->next;
    800010d0:	00053683          	ld	a3,0(a0)
    800010d4:	00d73023          	sd	a3,0(a4)
                remaining->prev = curr->prev;
    800010d8:	00853683          	ld	a3,8(a0)
    800010dc:	00d73423          	sd	a3,8(a4)
                remaining->size = curr->size - byte_size;
    800010e0:	01053683          	ld	a3,16(a0)
    800010e4:	40f686b3          	sub	a3,a3,a5
    800010e8:	00d73823          	sd	a3,16(a4)
                // pokazivaci susednih
                if (curr->next) curr->next->prev = remaining;
    800010ec:	00053683          	ld	a3,0(a0)
    800010f0:	00068463          	beqz	a3,800010f8 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    800010f4:	00e6b423          	sd	a4,8(a3)
                if (curr->prev) curr->prev->next = remaining;
    800010f8:	00853683          	ld	a3,8(a0)
    800010fc:	02068c63          	beqz	a3,80001134 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    80001100:	00e6b023          	sd	a4,0(a3)
            // dodavanje novog zauzetog segmenta ??
            // curr pokazuje na pocetak zauzetog prostora
            // used blokovi sortirani po start addr

            MemoryBlock* prev; // nakon kog elem liste umecemo novi
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80001104:	00003717          	auipc	a4,0x3
    80001108:	2c473703          	ld	a4,708(a4) # 800043c8 <_ZN15MemoryAllocator13used_mem_headE>
    8000110c:	02e56a63          	bltu	a0,a4,80001140 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    80001110:	06070463          	beqz	a4,80001178 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
            else for (prev = used_mem_head; prev->next != 0; prev = prev->next);
    80001114:	00070693          	mv	a3,a4
    80001118:	00073703          	ld	a4,0(a4)
    8000111c:	fe071ce3          	bnez	a4,80001114 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
    80001120:	0240006f          	j	80001144 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                else free_mem_head = curr->next;
    80001124:	00053703          	ld	a4,0(a0)
    80001128:	00003697          	auipc	a3,0x3
    8000112c:	28e6bc23          	sd	a4,664(a3) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
                continue;
    80001130:	f81ff06f          	j	800010b0 <_ZN15MemoryAllocator9mem_allocEm+0x44>
                else free_mem_head = remaining;
    80001134:	00003697          	auipc	a3,0x3
    80001138:	28e6b623          	sd	a4,652(a3) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
    8000113c:	fc9ff06f          	j	80001104 <_ZN15MemoryAllocator9mem_allocEm+0x98>
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80001140:	00000693          	li	a3,0

            curr->size = byte_size;
    80001144:	00f53823          	sd	a5,16(a0)
            curr->prev = prev;
    80001148:	00d53423          	sd	a3,8(a0)
            if (prev) {
    8000114c:	02068a63          	beqz	a3,80001180 <_ZN15MemoryAllocator9mem_allocEm+0x114>
                curr->next = prev->next;
    80001150:	0006b783          	ld	a5,0(a3)
    80001154:	00f53023          	sd	a5,0(a0)
                prev->next = curr;
    80001158:	00a6b023          	sd	a0,0(a3)
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
    8000115c:	00053783          	ld	a5,0(a0)
    80001160:	00078463          	beqz	a5,80001168 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
    80001164:	00a7b423          	sd	a0,8(a5)
            return (void*)((char*)curr + sizeof(MemoryBlock));
    80001168:	01850513          	addi	a0,a0,24
            // pokazivac na memoriju za alociranje: bez zaglavlja
        }
    }
    // nije pronadjen odgovarajuc blok memorije
    return 0;
}
    8000116c:	00813403          	ld	s0,8(sp)
    80001170:	01010113          	addi	sp,sp,16
    80001174:	00008067          	ret
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
    80001178:	00070693          	mv	a3,a4
    8000117c:	fc9ff06f          	j	80001144 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
            else used_mem_head = curr;
    80001180:	00003797          	auipc	a5,0x3
    80001184:	24a7b423          	sd	a0,584(a5) # 800043c8 <_ZN15MemoryAllocator13used_mem_headE>
    80001188:	fd5ff06f          	j	8000115c <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    if (size <= 0) return nullptr;
    8000118c:	00000513          	li	a0,0
    80001190:	fddff06f          	j	8000116c <_ZN15MemoryAllocator9mem_allocEm+0x100>

0000000080001194 <_ZN15MemoryAllocator12getAllocatorEv>:
    if (allocator == 0) {
    80001194:	00003797          	auipc	a5,0x3
    80001198:	23c7b783          	ld	a5,572(a5) # 800043d0 <_ZN15MemoryAllocator9allocatorE>
    8000119c:	00078863          	beqz	a5,800011ac <_ZN15MemoryAllocator12getAllocatorEv+0x18>
}
    800011a0:	00003517          	auipc	a0,0x3
    800011a4:	23053503          	ld	a0,560(a0) # 800043d0 <_ZN15MemoryAllocator9allocatorE>
    800011a8:	00008067          	ret
MemoryAllocator* MemoryAllocator::getAllocator() {
    800011ac:	fe010113          	addi	sp,sp,-32
    800011b0:	00113c23          	sd	ra,24(sp)
    800011b4:	00813823          	sd	s0,16(sp)
    800011b8:	00913423          	sd	s1,8(sp)
    800011bc:	02010413          	addi	s0,sp,32
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
    800011c0:	00003697          	auipc	a3,0x3
    800011c4:	1a86b683          	ld	a3,424(a3) # 80004368 <_GLOBAL_OFFSET_TABLE_+0x8>
    800011c8:	0006b783          	ld	a5,0(a3)
    800011cc:	00003497          	auipc	s1,0x3
    800011d0:	1f448493          	addi	s1,s1,500 # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
    800011d4:	00f4b023          	sd	a5,0(s1)
        free_mem_head->next = nullptr;
    800011d8:	0007b023          	sd	zero,0(a5)
        free_mem_head->prev = nullptr;
    800011dc:	0004b703          	ld	a4,0(s1)
    800011e0:	00073423          	sd	zero,8(a4)
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800011e4:	00003797          	auipc	a5,0x3
    800011e8:	1947b783          	ld	a5,404(a5) # 80004378 <_GLOBAL_OFFSET_TABLE_+0x18>
    800011ec:	0007b783          	ld	a5,0(a5)
    800011f0:	0006b683          	ld	a3,0(a3)
    800011f4:	40d787b3          	sub	a5,a5,a3
    800011f8:	00178793          	addi	a5,a5,1
    800011fc:	00f73823          	sd	a5,16(a4)
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001200:	00100513          	li	a0,1
    80001204:	00000097          	auipc	ra,0x0
    80001208:	e68080e7          	jalr	-408(ra) # 8000106c <_ZN15MemoryAllocator9mem_allocEm>
    8000120c:	00a4b823          	sd	a0,16(s1)
}
    80001210:	00003517          	auipc	a0,0x3
    80001214:	1c053503          	ld	a0,448(a0) # 800043d0 <_ZN15MemoryAllocator9allocatorE>
    80001218:	01813083          	ld	ra,24(sp)
    8000121c:	01013403          	ld	s0,16(sp)
    80001220:	00813483          	ld	s1,8(sp)
    80001224:	02010113          	addi	sp,sp,32
    80001228:	00008067          	ret

000000008000122c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>:
    }
    return 0;
}

//tryToJoin metoda pokusava spajanje sa narednim elementom
int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    8000122c:	ff010113          	addi	sp,sp,-16
    80001230:	00813423          	sd	s0,8(sp)
    80001234:	01010413          	addi	s0,sp,16
    if (curr == 0) return 0;
    80001238:	04050663          	beqz	a0,80001284 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x58>
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
    8000123c:	00053783          	ld	a5,0(a0)
    80001240:	04078663          	beqz	a5,8000128c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x60>
    80001244:	01053703          	ld	a4,16(a0)
    80001248:	00e506b3          	add	a3,a0,a4
    8000124c:	00d78a63          	beq	a5,a3,80001260 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x34>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    return 0;
    80001250:	00000513          	li	a0,0
}
    80001254:	00813403          	ld	s0,8(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret
        curr->size += curr->next->size;
    80001260:	0107b683          	ld	a3,16(a5)
    80001264:	00d70733          	add	a4,a4,a3
    80001268:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    8000126c:	0007b783          	ld	a5,0(a5)
    80001270:	00f53023          	sd	a5,0(a0)
        if (curr->next) curr->next->prev = curr;
    80001274:	00078463          	beqz	a5,8000127c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x50>
    80001278:	00a7b423          	sd	a0,8(a5)
        return 1;
    8000127c:	00100513          	li	a0,1
    80001280:	fd5ff06f          	j	80001254 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    if (curr == 0) return 0;
    80001284:	00000513          	li	a0,0
    80001288:	fcdff06f          	j	80001254 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>
    return 0;
    8000128c:	00000513          	li	a0,0
    80001290:	fc5ff06f          	j	80001254 <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE+0x28>

0000000080001294 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if (addr == 0 || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    80001294:	14050a63          	beqz	a0,800013e8 <_ZN15MemoryAllocator8mem_freeEPKv+0x154>
    80001298:	00003797          	auipc	a5,0x3
    8000129c:	0e07b783          	ld	a5,224(a5) # 80004378 <_GLOBAL_OFFSET_TABLE_+0x18>
    800012a0:	0007b783          	ld	a5,0(a5)
    800012a4:	14a7e663          	bltu	a5,a0,800013f0 <_ZN15MemoryAllocator8mem_freeEPKv+0x15c>
    800012a8:	00003797          	auipc	a5,0x3
    800012ac:	0c07b783          	ld	a5,192(a5) # 80004368 <_GLOBAL_OFFSET_TABLE_+0x8>
    800012b0:	0007b783          	ld	a5,0(a5)
    800012b4:	14f56263          	bltu	a0,a5,800013f8 <_ZN15MemoryAllocator8mem_freeEPKv+0x164>
int MemoryAllocator::mem_free(const void* addr) {
    800012b8:	fe010113          	addi	sp,sp,-32
    800012bc:	00113c23          	sd	ra,24(sp)
    800012c0:	00813823          	sd	s0,16(sp)
    800012c4:	00913423          	sd	s1,8(sp)
    800012c8:	01213023          	sd	s2,0(sp)
    800012cc:	02010413          	addi	s0,sp,32
    MemoryBlock* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    800012d0:	fe850493          	addi	s1,a0,-24
    MemoryBlock* tmp = used_mem_head;
    800012d4:	00003797          	auipc	a5,0x3
    800012d8:	0f47b783          	ld	a5,244(a5) # 800043c8 <_ZN15MemoryAllocator13used_mem_headE>
    for (; tmp && block > tmp; tmp = tmp->next);
    800012dc:	00078863          	beqz	a5,800012ec <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    800012e0:	0097f663          	bgeu	a5,s1,800012ec <_ZN15MemoryAllocator8mem_freeEPKv+0x58>
    800012e4:	0007b783          	ld	a5,0(a5)
    800012e8:	ff5ff06f          	j	800012dc <_ZN15MemoryAllocator8mem_freeEPKv+0x48>
    if (block != tmp || tmp == 0) return -1;
    800012ec:	10979a63          	bne	a5,s1,80001400 <_ZN15MemoryAllocator8mem_freeEPKv+0x16c>
    800012f0:	10078c63          	beqz	a5,80001408 <_ZN15MemoryAllocator8mem_freeEPKv+0x174>
    if (tmp->prev) tmp->prev->next = tmp->next;
    800012f4:	0087b703          	ld	a4,8(a5)
    800012f8:	06070c63          	beqz	a4,80001370 <_ZN15MemoryAllocator8mem_freeEPKv+0xdc>
    800012fc:	0007b683          	ld	a3,0(a5)
    80001300:	00d73023          	sd	a3,0(a4)
    if (tmp->next) tmp->next->prev = tmp->prev;
    80001304:	0007b703          	ld	a4,0(a5)
    80001308:	00070663          	beqz	a4,80001314 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    8000130c:	0087b783          	ld	a5,8(a5)
    80001310:	00f73423          	sd	a5,8(a4)
    if (free_mem_head == 0 || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80001314:	00003797          	auipc	a5,0x3
    80001318:	0ac7b783          	ld	a5,172(a5) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
    8000131c:	06078863          	beqz	a5,8000138c <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    80001320:	06f4e463          	bltu	s1,a5,80001388 <_ZN15MemoryAllocator8mem_freeEPKv+0xf4>
    else for (tmp = free_mem_head; tmp->next != 0 && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    80001324:	00078913          	mv	s2,a5
    80001328:	0007b783          	ld	a5,0(a5)
    8000132c:	00078463          	beqz	a5,80001334 <_ZN15MemoryAllocator8mem_freeEPKv+0xa0>
    80001330:	fe97eae3          	bltu	a5,s1,80001324 <_ZN15MemoryAllocator8mem_freeEPKv+0x90>
    if (tmp == nullptr) {
    80001334:	04090663          	beqz	s2,80001380 <_ZN15MemoryAllocator8mem_freeEPKv+0xec>
        block->next = tmp->next;
    80001338:	fef53423          	sd	a5,-24(a0)
        block->prev = tmp;
    8000133c:	ff253823          	sd	s2,-16(a0)
        tmp->next = block;
    80001340:	00993023          	sd	s1,0(s2)
        if (block->next) block->next->prev = block;
    80001344:	fe853783          	ld	a5,-24(a0)
    80001348:	00078463          	beqz	a5,80001350 <_ZN15MemoryAllocator8mem_freeEPKv+0xbc>
    8000134c:	0097b423          	sd	s1,8(a5)
        tryToJoin(block);
    80001350:	00048513          	mv	a0,s1
    80001354:	00000097          	auipc	ra,0x0
    80001358:	ed8080e7          	jalr	-296(ra) # 8000122c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        tryToJoin(tmp);
    8000135c:	00090513          	mv	a0,s2
    80001360:	00000097          	auipc	ra,0x0
    80001364:	ecc080e7          	jalr	-308(ra) # 8000122c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    80001368:	00000513          	li	a0,0
    8000136c:	05c0006f          	j	800013c8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    else used_mem_head = tmp->next;
    80001370:	0007b703          	ld	a4,0(a5)
    80001374:	00003697          	auipc	a3,0x3
    80001378:	04e6ba23          	sd	a4,84(a3) # 800043c8 <_ZN15MemoryAllocator13used_mem_headE>
    8000137c:	f89ff06f          	j	80001304 <_ZN15MemoryAllocator8mem_freeEPKv+0x70>
    80001380:	00090793          	mv	a5,s2
    80001384:	0080006f          	j	8000138c <_ZN15MemoryAllocator8mem_freeEPKv+0xf8>
    if (free_mem_head == 0 || (char*)block < (char*)free_mem_head) tmp = nullptr;
    80001388:	00000793          	li	a5,0
        block -> prev = tmp;
    8000138c:	fef53823          	sd	a5,-16(a0)
        if (free_mem_head) {
    80001390:	00003797          	auipc	a5,0x3
    80001394:	0307b783          	ld	a5,48(a5) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
    80001398:	04078463          	beqz	a5,800013e0 <_ZN15MemoryAllocator8mem_freeEPKv+0x14c>
            free_mem_head->prev = block;
    8000139c:	0097b423          	sd	s1,8(a5)
            block->next = free_mem_head;
    800013a0:	fef53423          	sd	a5,-24(a0)
            tryToJoin(block);
    800013a4:	00048513          	mv	a0,s1
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	e84080e7          	jalr	-380(ra) # 8000122c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
        free_mem_head = block;
    800013b0:	00003797          	auipc	a5,0x3
    800013b4:	0097b823          	sd	s1,16(a5) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
        tryToJoin(free_mem_head);
    800013b8:	00048513          	mv	a0,s1
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	e70080e7          	jalr	-400(ra) # 8000122c <_ZN15MemoryAllocator9tryToJoinEPNS_11MemoryBlockE>
    return 0;
    800013c4:	00000513          	li	a0,0
}
    800013c8:	01813083          	ld	ra,24(sp)
    800013cc:	01013403          	ld	s0,16(sp)
    800013d0:	00813483          	ld	s1,8(sp)
    800013d4:	00013903          	ld	s2,0(sp)
    800013d8:	02010113          	addi	sp,sp,32
    800013dc:	00008067          	ret
        else block -> next = nullptr;
    800013e0:	fe053423          	sd	zero,-24(a0)
    800013e4:	fcdff06f          	j	800013b0 <_ZN15MemoryAllocator8mem_freeEPKv+0x11c>
    if (addr == 0 || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error
    800013e8:	fff00513          	li	a0,-1
    800013ec:	00008067          	ret
    800013f0:	fff00513          	li	a0,-1
    800013f4:	00008067          	ret
    800013f8:	fff00513          	li	a0,-1
}
    800013fc:	00008067          	ret
    if (block != tmp || tmp == 0) return -1;
    80001400:	fff00513          	li	a0,-1
    80001404:	fc5ff06f          	j	800013c8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>
    80001408:	fff00513          	li	a0,-1
    8000140c:	fbdff06f          	j	800013c8 <_ZN15MemoryAllocator8mem_freeEPKv+0x134>

0000000080001410 <_ZN15MemoryAllocator9printfreeEv>:

void MemoryAllocator::printfree() {
    80001410:	fe010113          	addi	sp,sp,-32
    80001414:	00113c23          	sd	ra,24(sp)
    80001418:	00813823          	sd	s0,16(sp)
    8000141c:	00913423          	sd	s1,8(sp)
    80001420:	02010413          	addi	s0,sp,32

    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    80001424:	00003497          	auipc	s1,0x3
    80001428:	f9c4b483          	ld	s1,-100(s1) # 800043c0 <_ZN15MemoryAllocator13free_mem_headE>
    8000142c:	02048263          	beqz	s1,80001450 <_ZN15MemoryAllocator9printfreeEv+0x40>
        __putc('f');
    80001430:	06600513          	li	a0,102
    80001434:	00002097          	auipc	ra,0x2
    80001438:	138080e7          	jalr	312(ra) # 8000356c <__putc>
        __putc('\n');
    8000143c:	00a00513          	li	a0,10
    80001440:	00002097          	auipc	ra,0x2
    80001444:	12c080e7          	jalr	300(ra) # 8000356c <__putc>
    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
    80001448:	0004b483          	ld	s1,0(s1)
    8000144c:	fe1ff06f          	j	8000142c <_ZN15MemoryAllocator9printfreeEv+0x1c>
    }

    if (!used_mem_head) __putc('d');
    80001450:	00003797          	auipc	a5,0x3
    80001454:	f787b783          	ld	a5,-136(a5) # 800043c8 <_ZN15MemoryAllocator13used_mem_headE>
    80001458:	02078863          	beqz	a5,80001488 <_ZN15MemoryAllocator9printfreeEv+0x78>

    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    8000145c:	00003497          	auipc	s1,0x3
    80001460:	f6c4b483          	ld	s1,-148(s1) # 800043c8 <_ZN15MemoryAllocator13used_mem_headE>
    80001464:	02048a63          	beqz	s1,80001498 <_ZN15MemoryAllocator9printfreeEv+0x88>
        __putc('u');
    80001468:	07500513          	li	a0,117
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	100080e7          	jalr	256(ra) # 8000356c <__putc>
        __putc('\n');
    80001474:	00a00513          	li	a0,10
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	0f4080e7          	jalr	244(ra) # 8000356c <__putc>
    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
    80001480:	0004b483          	ld	s1,0(s1)
    80001484:	fe1ff06f          	j	80001464 <_ZN15MemoryAllocator9printfreeEv+0x54>
    if (!used_mem_head) __putc('d');
    80001488:	06400513          	li	a0,100
    8000148c:	00002097          	auipc	ra,0x2
    80001490:	0e0080e7          	jalr	224(ra) # 8000356c <__putc>
    80001494:	fc9ff06f          	j	8000145c <_ZN15MemoryAllocator9printfreeEv+0x4c>
    }
}
    80001498:	01813083          	ld	ra,24(sp)
    8000149c:	01013403          	ld	s0,16(sp)
    800014a0:	00813483          	ld	s1,8(sp)
    800014a4:	02010113          	addi	sp,sp,32
    800014a8:	00008067          	ret

00000000800014ac <start>:
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16
    800014b8:	300027f3          	csrr	a5,mstatus
    800014bc:	ffffe737          	lui	a4,0xffffe
    800014c0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff91cf>
    800014c4:	00e7f7b3          	and	a5,a5,a4
    800014c8:	00001737          	lui	a4,0x1
    800014cc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800014d0:	00e7e7b3          	or	a5,a5,a4
    800014d4:	30079073          	csrw	mstatus,a5
    800014d8:	00000797          	auipc	a5,0x0
    800014dc:	16078793          	addi	a5,a5,352 # 80001638 <system_main>
    800014e0:	34179073          	csrw	mepc,a5
    800014e4:	00000793          	li	a5,0
    800014e8:	18079073          	csrw	satp,a5
    800014ec:	000107b7          	lui	a5,0x10
    800014f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014f4:	30279073          	csrw	medeleg,a5
    800014f8:	30379073          	csrw	mideleg,a5
    800014fc:	104027f3          	csrr	a5,sie
    80001500:	2227e793          	ori	a5,a5,546
    80001504:	10479073          	csrw	sie,a5
    80001508:	fff00793          	li	a5,-1
    8000150c:	00a7d793          	srli	a5,a5,0xa
    80001510:	3b079073          	csrw	pmpaddr0,a5
    80001514:	00f00793          	li	a5,15
    80001518:	3a079073          	csrw	pmpcfg0,a5
    8000151c:	f14027f3          	csrr	a5,mhartid
    80001520:	0200c737          	lui	a4,0x200c
    80001524:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001528:	0007869b          	sext.w	a3,a5
    8000152c:	00269713          	slli	a4,a3,0x2
    80001530:	000f4637          	lui	a2,0xf4
    80001534:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001538:	00d70733          	add	a4,a4,a3
    8000153c:	0037979b          	slliw	a5,a5,0x3
    80001540:	020046b7          	lui	a3,0x2004
    80001544:	00d787b3          	add	a5,a5,a3
    80001548:	00c585b3          	add	a1,a1,a2
    8000154c:	00371693          	slli	a3,a4,0x3
    80001550:	00003717          	auipc	a4,0x3
    80001554:	e9070713          	addi	a4,a4,-368 # 800043e0 <timer_scratch>
    80001558:	00b7b023          	sd	a1,0(a5)
    8000155c:	00d70733          	add	a4,a4,a3
    80001560:	00f73c23          	sd	a5,24(a4)
    80001564:	02c73023          	sd	a2,32(a4)
    80001568:	34071073          	csrw	mscratch,a4
    8000156c:	00000797          	auipc	a5,0x0
    80001570:	6e478793          	addi	a5,a5,1764 # 80001c50 <timervec>
    80001574:	30579073          	csrw	mtvec,a5
    80001578:	300027f3          	csrr	a5,mstatus
    8000157c:	0087e793          	ori	a5,a5,8
    80001580:	30079073          	csrw	mstatus,a5
    80001584:	304027f3          	csrr	a5,mie
    80001588:	0807e793          	ori	a5,a5,128
    8000158c:	30479073          	csrw	mie,a5
    80001590:	f14027f3          	csrr	a5,mhartid
    80001594:	0007879b          	sext.w	a5,a5
    80001598:	00078213          	mv	tp,a5
    8000159c:	30200073          	mret
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <timerinit>:
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    800015b8:	f14027f3          	csrr	a5,mhartid
    800015bc:	0200c737          	lui	a4,0x200c
    800015c0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800015c4:	0007869b          	sext.w	a3,a5
    800015c8:	00269713          	slli	a4,a3,0x2
    800015cc:	000f4637          	lui	a2,0xf4
    800015d0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800015d4:	00d70733          	add	a4,a4,a3
    800015d8:	0037979b          	slliw	a5,a5,0x3
    800015dc:	020046b7          	lui	a3,0x2004
    800015e0:	00d787b3          	add	a5,a5,a3
    800015e4:	00c585b3          	add	a1,a1,a2
    800015e8:	00371693          	slli	a3,a4,0x3
    800015ec:	00003717          	auipc	a4,0x3
    800015f0:	df470713          	addi	a4,a4,-524 # 800043e0 <timer_scratch>
    800015f4:	00b7b023          	sd	a1,0(a5)
    800015f8:	00d70733          	add	a4,a4,a3
    800015fc:	00f73c23          	sd	a5,24(a4)
    80001600:	02c73023          	sd	a2,32(a4)
    80001604:	34071073          	csrw	mscratch,a4
    80001608:	00000797          	auipc	a5,0x0
    8000160c:	64878793          	addi	a5,a5,1608 # 80001c50 <timervec>
    80001610:	30579073          	csrw	mtvec,a5
    80001614:	300027f3          	csrr	a5,mstatus
    80001618:	0087e793          	ori	a5,a5,8
    8000161c:	30079073          	csrw	mstatus,a5
    80001620:	304027f3          	csrr	a5,mie
    80001624:	0807e793          	ori	a5,a5,128
    80001628:	30479073          	csrw	mie,a5
    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <system_main>:
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	00913423          	sd	s1,8(sp)
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	02010413          	addi	s0,sp,32
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	0c4080e7          	jalr	196(ra) # 80001710 <cpuid>
    80001654:	00003497          	auipc	s1,0x3
    80001658:	d3c48493          	addi	s1,s1,-708 # 80004390 <started>
    8000165c:	02050263          	beqz	a0,80001680 <system_main+0x48>
    80001660:	0004a783          	lw	a5,0(s1)
    80001664:	0007879b          	sext.w	a5,a5
    80001668:	fe078ce3          	beqz	a5,80001660 <system_main+0x28>
    8000166c:	0ff0000f          	fence
    80001670:	00003517          	auipc	a0,0x3
    80001674:	9e050513          	addi	a0,a0,-1568 # 80004050 <CONSOLE_STATUS+0x40>
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	a74080e7          	jalr	-1420(ra) # 800020ec <panic>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	9c8080e7          	jalr	-1592(ra) # 80002048 <consoleinit>
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	154080e7          	jalr	340(ra) # 800027dc <printfinit>
    80001690:	00003517          	auipc	a0,0x3
    80001694:	aa050513          	addi	a0,a0,-1376 # 80004130 <CONSOLE_STATUS+0x120>
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	ab0080e7          	jalr	-1360(ra) # 80002148 <__printf>
    800016a0:	00003517          	auipc	a0,0x3
    800016a4:	98050513          	addi	a0,a0,-1664 # 80004020 <CONSOLE_STATUS+0x10>
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	aa0080e7          	jalr	-1376(ra) # 80002148 <__printf>
    800016b0:	00003517          	auipc	a0,0x3
    800016b4:	a8050513          	addi	a0,a0,-1408 # 80004130 <CONSOLE_STATUS+0x120>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	a90080e7          	jalr	-1392(ra) # 80002148 <__printf>
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	4a8080e7          	jalr	1192(ra) # 80002b68 <kinit>
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	148080e7          	jalr	328(ra) # 80001810 <trapinit>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	16c080e7          	jalr	364(ra) # 8000183c <trapinithart>
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	5b8080e7          	jalr	1464(ra) # 80001c90 <plicinit>
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	5d8080e7          	jalr	1496(ra) # 80001cb8 <plicinithart>
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	078080e7          	jalr	120(ra) # 80001760 <userinit>
    800016f0:	0ff0000f          	fence
    800016f4:	00100793          	li	a5,1
    800016f8:	00003517          	auipc	a0,0x3
    800016fc:	94050513          	addi	a0,a0,-1728 # 80004038 <CONSOLE_STATUS+0x28>
    80001700:	00f4a023          	sw	a5,0(s1)
    80001704:	00001097          	auipc	ra,0x1
    80001708:	a44080e7          	jalr	-1468(ra) # 80002148 <__printf>
    8000170c:	0000006f          	j	8000170c <system_main+0xd4>

0000000080001710 <cpuid>:
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00813423          	sd	s0,8(sp)
    80001718:	01010413          	addi	s0,sp,16
    8000171c:	00020513          	mv	a0,tp
    80001720:	00813403          	ld	s0,8(sp)
    80001724:	0005051b          	sext.w	a0,a0
    80001728:	01010113          	addi	sp,sp,16
    8000172c:	00008067          	ret

0000000080001730 <mycpu>:
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00813423          	sd	s0,8(sp)
    80001738:	01010413          	addi	s0,sp,16
    8000173c:	00020793          	mv	a5,tp
    80001740:	00813403          	ld	s0,8(sp)
    80001744:	0007879b          	sext.w	a5,a5
    80001748:	00779793          	slli	a5,a5,0x7
    8000174c:	00004517          	auipc	a0,0x4
    80001750:	cc450513          	addi	a0,a0,-828 # 80005410 <cpus>
    80001754:	00f50533          	add	a0,a0,a5
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <userinit>:
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    8000176c:	00813403          	ld	s0,8(sp)
    80001770:	01010113          	addi	sp,sp,16
    80001774:	00000317          	auipc	t1,0x0
    80001778:	88c30067          	jr	-1908(t1) # 80001000 <main>

000000008000177c <either_copyout>:
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00813023          	sd	s0,0(sp)
    80001784:	00113423          	sd	ra,8(sp)
    80001788:	01010413          	addi	s0,sp,16
    8000178c:	02051663          	bnez	a0,800017b8 <either_copyout+0x3c>
    80001790:	00058513          	mv	a0,a1
    80001794:	00060593          	mv	a1,a2
    80001798:	0006861b          	sext.w	a2,a3
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	c58080e7          	jalr	-936(ra) # 800033f4 <__memmove>
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	00000513          	li	a0,0
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret
    800017b8:	00003517          	auipc	a0,0x3
    800017bc:	8c050513          	addi	a0,a0,-1856 # 80004078 <CONSOLE_STATUS+0x68>
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	92c080e7          	jalr	-1748(ra) # 800020ec <panic>

00000000800017c8 <either_copyin>:
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	00113423          	sd	ra,8(sp)
    800017d4:	01010413          	addi	s0,sp,16
    800017d8:	02059463          	bnez	a1,80001800 <either_copyin+0x38>
    800017dc:	00060593          	mv	a1,a2
    800017e0:	0006861b          	sext.w	a2,a3
    800017e4:	00002097          	auipc	ra,0x2
    800017e8:	c10080e7          	jalr	-1008(ra) # 800033f4 <__memmove>
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	00000513          	li	a0,0
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret
    80001800:	00003517          	auipc	a0,0x3
    80001804:	8a050513          	addi	a0,a0,-1888 # 800040a0 <CONSOLE_STATUS+0x90>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	8e4080e7          	jalr	-1820(ra) # 800020ec <panic>

0000000080001810 <trapinit>:
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
    8000181c:	00813403          	ld	s0,8(sp)
    80001820:	00003597          	auipc	a1,0x3
    80001824:	8a858593          	addi	a1,a1,-1880 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001828:	00004517          	auipc	a0,0x4
    8000182c:	c6850513          	addi	a0,a0,-920 # 80005490 <tickslock>
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00001317          	auipc	t1,0x1
    80001838:	5c430067          	jr	1476(t1) # 80002df8 <initlock>

000000008000183c <trapinithart>:
    8000183c:	ff010113          	addi	sp,sp,-16
    80001840:	00813423          	sd	s0,8(sp)
    80001844:	01010413          	addi	s0,sp,16
    80001848:	00000797          	auipc	a5,0x0
    8000184c:	2f878793          	addi	a5,a5,760 # 80001b40 <kernelvec>
    80001850:	10579073          	csrw	stvec,a5
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <usertrap>:
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    8000186c:	00813403          	ld	s0,8(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <usertrapret>:
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00813423          	sd	s0,8(sp)
    80001880:	01010413          	addi	s0,sp,16
    80001884:	00813403          	ld	s0,8(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <kerneltrap>:
    80001890:	fe010113          	addi	sp,sp,-32
    80001894:	00813823          	sd	s0,16(sp)
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00913423          	sd	s1,8(sp)
    800018a0:	02010413          	addi	s0,sp,32
    800018a4:	142025f3          	csrr	a1,scause
    800018a8:	100027f3          	csrr	a5,sstatus
    800018ac:	0027f793          	andi	a5,a5,2
    800018b0:	10079c63          	bnez	a5,800019c8 <kerneltrap+0x138>
    800018b4:	142027f3          	csrr	a5,scause
    800018b8:	0207ce63          	bltz	a5,800018f4 <kerneltrap+0x64>
    800018bc:	00003517          	auipc	a0,0x3
    800018c0:	85450513          	addi	a0,a0,-1964 # 80004110 <CONSOLE_STATUS+0x100>
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	884080e7          	jalr	-1916(ra) # 80002148 <__printf>
    800018cc:	141025f3          	csrr	a1,sepc
    800018d0:	14302673          	csrr	a2,stval
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	84c50513          	addi	a0,a0,-1972 # 80004120 <CONSOLE_STATUS+0x110>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	86c080e7          	jalr	-1940(ra) # 80002148 <__printf>
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	85450513          	addi	a0,a0,-1964 # 80004138 <CONSOLE_STATUS+0x128>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	800080e7          	jalr	-2048(ra) # 800020ec <panic>
    800018f4:	0ff7f713          	andi	a4,a5,255
    800018f8:	00900693          	li	a3,9
    800018fc:	04d70063          	beq	a4,a3,8000193c <kerneltrap+0xac>
    80001900:	fff00713          	li	a4,-1
    80001904:	03f71713          	slli	a4,a4,0x3f
    80001908:	00170713          	addi	a4,a4,1
    8000190c:	fae798e3          	bne	a5,a4,800018bc <kerneltrap+0x2c>
    80001910:	00000097          	auipc	ra,0x0
    80001914:	e00080e7          	jalr	-512(ra) # 80001710 <cpuid>
    80001918:	06050663          	beqz	a0,80001984 <kerneltrap+0xf4>
    8000191c:	144027f3          	csrr	a5,sip
    80001920:	ffd7f793          	andi	a5,a5,-3
    80001924:	14479073          	csrw	sip,a5
    80001928:	01813083          	ld	ra,24(sp)
    8000192c:	01013403          	ld	s0,16(sp)
    80001930:	00813483          	ld	s1,8(sp)
    80001934:	02010113          	addi	sp,sp,32
    80001938:	00008067          	ret
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	3c8080e7          	jalr	968(ra) # 80001d04 <plic_claim>
    80001944:	00a00793          	li	a5,10
    80001948:	00050493          	mv	s1,a0
    8000194c:	06f50863          	beq	a0,a5,800019bc <kerneltrap+0x12c>
    80001950:	fc050ce3          	beqz	a0,80001928 <kerneltrap+0x98>
    80001954:	00050593          	mv	a1,a0
    80001958:	00002517          	auipc	a0,0x2
    8000195c:	79850513          	addi	a0,a0,1944 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001960:	00000097          	auipc	ra,0x0
    80001964:	7e8080e7          	jalr	2024(ra) # 80002148 <__printf>
    80001968:	01013403          	ld	s0,16(sp)
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	00048513          	mv	a0,s1
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00000317          	auipc	t1,0x0
    80001980:	3c030067          	jr	960(t1) # 80001d3c <plic_complete>
    80001984:	00004517          	auipc	a0,0x4
    80001988:	b0c50513          	addi	a0,a0,-1268 # 80005490 <tickslock>
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	490080e7          	jalr	1168(ra) # 80002e1c <acquire>
    80001994:	00003717          	auipc	a4,0x3
    80001998:	a0070713          	addi	a4,a4,-1536 # 80004394 <ticks>
    8000199c:	00072783          	lw	a5,0(a4)
    800019a0:	00004517          	auipc	a0,0x4
    800019a4:	af050513          	addi	a0,a0,-1296 # 80005490 <tickslock>
    800019a8:	0017879b          	addiw	a5,a5,1
    800019ac:	00f72023          	sw	a5,0(a4)
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	538080e7          	jalr	1336(ra) # 80002ee8 <release>
    800019b8:	f65ff06f          	j	8000191c <kerneltrap+0x8c>
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	094080e7          	jalr	148(ra) # 80002a50 <uartintr>
    800019c4:	fa5ff06f          	j	80001968 <kerneltrap+0xd8>
    800019c8:	00002517          	auipc	a0,0x2
    800019cc:	70850513          	addi	a0,a0,1800 # 800040d0 <CONSOLE_STATUS+0xc0>
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	71c080e7          	jalr	1820(ra) # 800020ec <panic>

00000000800019d8 <clockintr>:
    800019d8:	fe010113          	addi	sp,sp,-32
    800019dc:	00813823          	sd	s0,16(sp)
    800019e0:	00913423          	sd	s1,8(sp)
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	02010413          	addi	s0,sp,32
    800019ec:	00004497          	auipc	s1,0x4
    800019f0:	aa448493          	addi	s1,s1,-1372 # 80005490 <tickslock>
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	424080e7          	jalr	1060(ra) # 80002e1c <acquire>
    80001a00:	00003717          	auipc	a4,0x3
    80001a04:	99470713          	addi	a4,a4,-1644 # 80004394 <ticks>
    80001a08:	00072783          	lw	a5,0(a4)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	01813083          	ld	ra,24(sp)
    80001a14:	00048513          	mv	a0,s1
    80001a18:	0017879b          	addiw	a5,a5,1
    80001a1c:	00813483          	ld	s1,8(sp)
    80001a20:	00f72023          	sw	a5,0(a4)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00001317          	auipc	t1,0x1
    80001a2c:	4c030067          	jr	1216(t1) # 80002ee8 <release>

0000000080001a30 <devintr>:
    80001a30:	142027f3          	csrr	a5,scause
    80001a34:	00000513          	li	a0,0
    80001a38:	0007c463          	bltz	a5,80001a40 <devintr+0x10>
    80001a3c:	00008067          	ret
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	02010413          	addi	s0,sp,32
    80001a54:	0ff7f713          	andi	a4,a5,255
    80001a58:	00900693          	li	a3,9
    80001a5c:	04d70c63          	beq	a4,a3,80001ab4 <devintr+0x84>
    80001a60:	fff00713          	li	a4,-1
    80001a64:	03f71713          	slli	a4,a4,0x3f
    80001a68:	00170713          	addi	a4,a4,1
    80001a6c:	00e78c63          	beq	a5,a4,80001a84 <devintr+0x54>
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	02010113          	addi	sp,sp,32
    80001a80:	00008067          	ret
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	c8c080e7          	jalr	-884(ra) # 80001710 <cpuid>
    80001a8c:	06050663          	beqz	a0,80001af8 <devintr+0xc8>
    80001a90:	144027f3          	csrr	a5,sip
    80001a94:	ffd7f793          	andi	a5,a5,-3
    80001a98:	14479073          	csrw	sip,a5
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	00200513          	li	a0,2
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	250080e7          	jalr	592(ra) # 80001d04 <plic_claim>
    80001abc:	00a00793          	li	a5,10
    80001ac0:	00050493          	mv	s1,a0
    80001ac4:	06f50663          	beq	a0,a5,80001b30 <devintr+0x100>
    80001ac8:	00100513          	li	a0,1
    80001acc:	fa0482e3          	beqz	s1,80001a70 <devintr+0x40>
    80001ad0:	00048593          	mv	a1,s1
    80001ad4:	00002517          	auipc	a0,0x2
    80001ad8:	61c50513          	addi	a0,a0,1564 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	66c080e7          	jalr	1644(ra) # 80002148 <__printf>
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	254080e7          	jalr	596(ra) # 80001d3c <plic_complete>
    80001af0:	00100513          	li	a0,1
    80001af4:	f7dff06f          	j	80001a70 <devintr+0x40>
    80001af8:	00004517          	auipc	a0,0x4
    80001afc:	99850513          	addi	a0,a0,-1640 # 80005490 <tickslock>
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	31c080e7          	jalr	796(ra) # 80002e1c <acquire>
    80001b08:	00003717          	auipc	a4,0x3
    80001b0c:	88c70713          	addi	a4,a4,-1908 # 80004394 <ticks>
    80001b10:	00072783          	lw	a5,0(a4)
    80001b14:	00004517          	auipc	a0,0x4
    80001b18:	97c50513          	addi	a0,a0,-1668 # 80005490 <tickslock>
    80001b1c:	0017879b          	addiw	a5,a5,1
    80001b20:	00f72023          	sw	a5,0(a4)
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	3c4080e7          	jalr	964(ra) # 80002ee8 <release>
    80001b2c:	f65ff06f          	j	80001a90 <devintr+0x60>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	f20080e7          	jalr	-224(ra) # 80002a50 <uartintr>
    80001b38:	fadff06f          	j	80001ae4 <devintr+0xb4>
    80001b3c:	0000                	unimp
	...

0000000080001b40 <kernelvec>:
    80001b40:	f0010113          	addi	sp,sp,-256
    80001b44:	00113023          	sd	ra,0(sp)
    80001b48:	00213423          	sd	sp,8(sp)
    80001b4c:	00313823          	sd	gp,16(sp)
    80001b50:	00413c23          	sd	tp,24(sp)
    80001b54:	02513023          	sd	t0,32(sp)
    80001b58:	02613423          	sd	t1,40(sp)
    80001b5c:	02713823          	sd	t2,48(sp)
    80001b60:	02813c23          	sd	s0,56(sp)
    80001b64:	04913023          	sd	s1,64(sp)
    80001b68:	04a13423          	sd	a0,72(sp)
    80001b6c:	04b13823          	sd	a1,80(sp)
    80001b70:	04c13c23          	sd	a2,88(sp)
    80001b74:	06d13023          	sd	a3,96(sp)
    80001b78:	06e13423          	sd	a4,104(sp)
    80001b7c:	06f13823          	sd	a5,112(sp)
    80001b80:	07013c23          	sd	a6,120(sp)
    80001b84:	09113023          	sd	a7,128(sp)
    80001b88:	09213423          	sd	s2,136(sp)
    80001b8c:	09313823          	sd	s3,144(sp)
    80001b90:	09413c23          	sd	s4,152(sp)
    80001b94:	0b513023          	sd	s5,160(sp)
    80001b98:	0b613423          	sd	s6,168(sp)
    80001b9c:	0b713823          	sd	s7,176(sp)
    80001ba0:	0b813c23          	sd	s8,184(sp)
    80001ba4:	0d913023          	sd	s9,192(sp)
    80001ba8:	0da13423          	sd	s10,200(sp)
    80001bac:	0db13823          	sd	s11,208(sp)
    80001bb0:	0dc13c23          	sd	t3,216(sp)
    80001bb4:	0fd13023          	sd	t4,224(sp)
    80001bb8:	0fe13423          	sd	t5,232(sp)
    80001bbc:	0ff13823          	sd	t6,240(sp)
    80001bc0:	cd1ff0ef          	jal	ra,80001890 <kerneltrap>
    80001bc4:	00013083          	ld	ra,0(sp)
    80001bc8:	00813103          	ld	sp,8(sp)
    80001bcc:	01013183          	ld	gp,16(sp)
    80001bd0:	02013283          	ld	t0,32(sp)
    80001bd4:	02813303          	ld	t1,40(sp)
    80001bd8:	03013383          	ld	t2,48(sp)
    80001bdc:	03813403          	ld	s0,56(sp)
    80001be0:	04013483          	ld	s1,64(sp)
    80001be4:	04813503          	ld	a0,72(sp)
    80001be8:	05013583          	ld	a1,80(sp)
    80001bec:	05813603          	ld	a2,88(sp)
    80001bf0:	06013683          	ld	a3,96(sp)
    80001bf4:	06813703          	ld	a4,104(sp)
    80001bf8:	07013783          	ld	a5,112(sp)
    80001bfc:	07813803          	ld	a6,120(sp)
    80001c00:	08013883          	ld	a7,128(sp)
    80001c04:	08813903          	ld	s2,136(sp)
    80001c08:	09013983          	ld	s3,144(sp)
    80001c0c:	09813a03          	ld	s4,152(sp)
    80001c10:	0a013a83          	ld	s5,160(sp)
    80001c14:	0a813b03          	ld	s6,168(sp)
    80001c18:	0b013b83          	ld	s7,176(sp)
    80001c1c:	0b813c03          	ld	s8,184(sp)
    80001c20:	0c013c83          	ld	s9,192(sp)
    80001c24:	0c813d03          	ld	s10,200(sp)
    80001c28:	0d013d83          	ld	s11,208(sp)
    80001c2c:	0d813e03          	ld	t3,216(sp)
    80001c30:	0e013e83          	ld	t4,224(sp)
    80001c34:	0e813f03          	ld	t5,232(sp)
    80001c38:	0f013f83          	ld	t6,240(sp)
    80001c3c:	10010113          	addi	sp,sp,256
    80001c40:	10200073          	sret
    80001c44:	00000013          	nop
    80001c48:	00000013          	nop
    80001c4c:	00000013          	nop

0000000080001c50 <timervec>:
    80001c50:	34051573          	csrrw	a0,mscratch,a0
    80001c54:	00b53023          	sd	a1,0(a0)
    80001c58:	00c53423          	sd	a2,8(a0)
    80001c5c:	00d53823          	sd	a3,16(a0)
    80001c60:	01853583          	ld	a1,24(a0)
    80001c64:	02053603          	ld	a2,32(a0)
    80001c68:	0005b683          	ld	a3,0(a1)
    80001c6c:	00c686b3          	add	a3,a3,a2
    80001c70:	00d5b023          	sd	a3,0(a1)
    80001c74:	00200593          	li	a1,2
    80001c78:	14459073          	csrw	sip,a1
    80001c7c:	01053683          	ld	a3,16(a0)
    80001c80:	00853603          	ld	a2,8(a0)
    80001c84:	00053583          	ld	a1,0(a0)
    80001c88:	34051573          	csrrw	a0,mscratch,a0
    80001c8c:	30200073          	mret

0000000080001c90 <plicinit>:
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00813423          	sd	s0,8(sp)
    80001c98:	01010413          	addi	s0,sp,16
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	0c0007b7          	lui	a5,0xc000
    80001ca4:	00100713          	li	a4,1
    80001ca8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001cac:	00e7a223          	sw	a4,4(a5)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <plicinithart>:
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	a48080e7          	jalr	-1464(ra) # 80001710 <cpuid>
    80001cd0:	0085171b          	slliw	a4,a0,0x8
    80001cd4:	0c0027b7          	lui	a5,0xc002
    80001cd8:	00e787b3          	add	a5,a5,a4
    80001cdc:	40200713          	li	a4,1026
    80001ce0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001ce4:	00813083          	ld	ra,8(sp)
    80001ce8:	00013403          	ld	s0,0(sp)
    80001cec:	00d5151b          	slliw	a0,a0,0xd
    80001cf0:	0c2017b7          	lui	a5,0xc201
    80001cf4:	00a78533          	add	a0,a5,a0
    80001cf8:	00052023          	sw	zero,0(a0)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <plic_claim>:
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	9fc080e7          	jalr	-1540(ra) # 80001710 <cpuid>
    80001d1c:	00813083          	ld	ra,8(sp)
    80001d20:	00013403          	ld	s0,0(sp)
    80001d24:	00d5151b          	slliw	a0,a0,0xd
    80001d28:	0c2017b7          	lui	a5,0xc201
    80001d2c:	00a78533          	add	a0,a5,a0
    80001d30:	00452503          	lw	a0,4(a0)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <plic_complete>:
    80001d3c:	fe010113          	addi	sp,sp,-32
    80001d40:	00813823          	sd	s0,16(sp)
    80001d44:	00913423          	sd	s1,8(sp)
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	02010413          	addi	s0,sp,32
    80001d50:	00050493          	mv	s1,a0
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	9bc080e7          	jalr	-1604(ra) # 80001710 <cpuid>
    80001d5c:	01813083          	ld	ra,24(sp)
    80001d60:	01013403          	ld	s0,16(sp)
    80001d64:	00d5179b          	slliw	a5,a0,0xd
    80001d68:	0c201737          	lui	a4,0xc201
    80001d6c:	00f707b3          	add	a5,a4,a5
    80001d70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001d74:	00813483          	ld	s1,8(sp)
    80001d78:	02010113          	addi	sp,sp,32
    80001d7c:	00008067          	ret

0000000080001d80 <consolewrite>:
    80001d80:	fb010113          	addi	sp,sp,-80
    80001d84:	04813023          	sd	s0,64(sp)
    80001d88:	04113423          	sd	ra,72(sp)
    80001d8c:	02913c23          	sd	s1,56(sp)
    80001d90:	03213823          	sd	s2,48(sp)
    80001d94:	03313423          	sd	s3,40(sp)
    80001d98:	03413023          	sd	s4,32(sp)
    80001d9c:	01513c23          	sd	s5,24(sp)
    80001da0:	05010413          	addi	s0,sp,80
    80001da4:	06c05c63          	blez	a2,80001e1c <consolewrite+0x9c>
    80001da8:	00060993          	mv	s3,a2
    80001dac:	00050a13          	mv	s4,a0
    80001db0:	00058493          	mv	s1,a1
    80001db4:	00000913          	li	s2,0
    80001db8:	fff00a93          	li	s5,-1
    80001dbc:	01c0006f          	j	80001dd8 <consolewrite+0x58>
    80001dc0:	fbf44503          	lbu	a0,-65(s0)
    80001dc4:	0019091b          	addiw	s2,s2,1
    80001dc8:	00148493          	addi	s1,s1,1
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	a9c080e7          	jalr	-1380(ra) # 80002868 <uartputc>
    80001dd4:	03298063          	beq	s3,s2,80001df4 <consolewrite+0x74>
    80001dd8:	00048613          	mv	a2,s1
    80001ddc:	00100693          	li	a3,1
    80001de0:	000a0593          	mv	a1,s4
    80001de4:	fbf40513          	addi	a0,s0,-65
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	9e0080e7          	jalr	-1568(ra) # 800017c8 <either_copyin>
    80001df0:	fd5518e3          	bne	a0,s5,80001dc0 <consolewrite+0x40>
    80001df4:	04813083          	ld	ra,72(sp)
    80001df8:	04013403          	ld	s0,64(sp)
    80001dfc:	03813483          	ld	s1,56(sp)
    80001e00:	02813983          	ld	s3,40(sp)
    80001e04:	02013a03          	ld	s4,32(sp)
    80001e08:	01813a83          	ld	s5,24(sp)
    80001e0c:	00090513          	mv	a0,s2
    80001e10:	03013903          	ld	s2,48(sp)
    80001e14:	05010113          	addi	sp,sp,80
    80001e18:	00008067          	ret
    80001e1c:	00000913          	li	s2,0
    80001e20:	fd5ff06f          	j	80001df4 <consolewrite+0x74>

0000000080001e24 <consoleread>:
    80001e24:	f9010113          	addi	sp,sp,-112
    80001e28:	06813023          	sd	s0,96(sp)
    80001e2c:	04913c23          	sd	s1,88(sp)
    80001e30:	05213823          	sd	s2,80(sp)
    80001e34:	05313423          	sd	s3,72(sp)
    80001e38:	05413023          	sd	s4,64(sp)
    80001e3c:	03513c23          	sd	s5,56(sp)
    80001e40:	03613823          	sd	s6,48(sp)
    80001e44:	03713423          	sd	s7,40(sp)
    80001e48:	03813023          	sd	s8,32(sp)
    80001e4c:	06113423          	sd	ra,104(sp)
    80001e50:	01913c23          	sd	s9,24(sp)
    80001e54:	07010413          	addi	s0,sp,112
    80001e58:	00060b93          	mv	s7,a2
    80001e5c:	00050913          	mv	s2,a0
    80001e60:	00058c13          	mv	s8,a1
    80001e64:	00060b1b          	sext.w	s6,a2
    80001e68:	00003497          	auipc	s1,0x3
    80001e6c:	64048493          	addi	s1,s1,1600 # 800054a8 <cons>
    80001e70:	00400993          	li	s3,4
    80001e74:	fff00a13          	li	s4,-1
    80001e78:	00a00a93          	li	s5,10
    80001e7c:	05705e63          	blez	s7,80001ed8 <consoleread+0xb4>
    80001e80:	09c4a703          	lw	a4,156(s1)
    80001e84:	0984a783          	lw	a5,152(s1)
    80001e88:	0007071b          	sext.w	a4,a4
    80001e8c:	08e78463          	beq	a5,a4,80001f14 <consoleread+0xf0>
    80001e90:	07f7f713          	andi	a4,a5,127
    80001e94:	00e48733          	add	a4,s1,a4
    80001e98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001e9c:	0017869b          	addiw	a3,a5,1
    80001ea0:	08d4ac23          	sw	a3,152(s1)
    80001ea4:	00070c9b          	sext.w	s9,a4
    80001ea8:	0b370663          	beq	a4,s3,80001f54 <consoleread+0x130>
    80001eac:	00100693          	li	a3,1
    80001eb0:	f9f40613          	addi	a2,s0,-97
    80001eb4:	000c0593          	mv	a1,s8
    80001eb8:	00090513          	mv	a0,s2
    80001ebc:	f8e40fa3          	sb	a4,-97(s0)
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	8bc080e7          	jalr	-1860(ra) # 8000177c <either_copyout>
    80001ec8:	01450863          	beq	a0,s4,80001ed8 <consoleread+0xb4>
    80001ecc:	001c0c13          	addi	s8,s8,1
    80001ed0:	fffb8b9b          	addiw	s7,s7,-1
    80001ed4:	fb5c94e3          	bne	s9,s5,80001e7c <consoleread+0x58>
    80001ed8:	000b851b          	sext.w	a0,s7
    80001edc:	06813083          	ld	ra,104(sp)
    80001ee0:	06013403          	ld	s0,96(sp)
    80001ee4:	05813483          	ld	s1,88(sp)
    80001ee8:	05013903          	ld	s2,80(sp)
    80001eec:	04813983          	ld	s3,72(sp)
    80001ef0:	04013a03          	ld	s4,64(sp)
    80001ef4:	03813a83          	ld	s5,56(sp)
    80001ef8:	02813b83          	ld	s7,40(sp)
    80001efc:	02013c03          	ld	s8,32(sp)
    80001f00:	01813c83          	ld	s9,24(sp)
    80001f04:	40ab053b          	subw	a0,s6,a0
    80001f08:	03013b03          	ld	s6,48(sp)
    80001f0c:	07010113          	addi	sp,sp,112
    80001f10:	00008067          	ret
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	1d8080e7          	jalr	472(ra) # 800030ec <push_on>
    80001f1c:	0984a703          	lw	a4,152(s1)
    80001f20:	09c4a783          	lw	a5,156(s1)
    80001f24:	0007879b          	sext.w	a5,a5
    80001f28:	fef70ce3          	beq	a4,a5,80001f20 <consoleread+0xfc>
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	234080e7          	jalr	564(ra) # 80003160 <pop_on>
    80001f34:	0984a783          	lw	a5,152(s1)
    80001f38:	07f7f713          	andi	a4,a5,127
    80001f3c:	00e48733          	add	a4,s1,a4
    80001f40:	01874703          	lbu	a4,24(a4)
    80001f44:	0017869b          	addiw	a3,a5,1
    80001f48:	08d4ac23          	sw	a3,152(s1)
    80001f4c:	00070c9b          	sext.w	s9,a4
    80001f50:	f5371ee3          	bne	a4,s3,80001eac <consoleread+0x88>
    80001f54:	000b851b          	sext.w	a0,s7
    80001f58:	f96bf2e3          	bgeu	s7,s6,80001edc <consoleread+0xb8>
    80001f5c:	08f4ac23          	sw	a5,152(s1)
    80001f60:	f7dff06f          	j	80001edc <consoleread+0xb8>

0000000080001f64 <consputc>:
    80001f64:	10000793          	li	a5,256
    80001f68:	00f50663          	beq	a0,a5,80001f74 <consputc+0x10>
    80001f6c:	00001317          	auipc	t1,0x1
    80001f70:	9f430067          	jr	-1548(t1) # 80002960 <uartputc_sync>
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
    80001f84:	00800513          	li	a0,8
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	9d8080e7          	jalr	-1576(ra) # 80002960 <uartputc_sync>
    80001f90:	02000513          	li	a0,32
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	9cc080e7          	jalr	-1588(ra) # 80002960 <uartputc_sync>
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	00813083          	ld	ra,8(sp)
    80001fa4:	00800513          	li	a0,8
    80001fa8:	01010113          	addi	sp,sp,16
    80001fac:	00001317          	auipc	t1,0x1
    80001fb0:	9b430067          	jr	-1612(t1) # 80002960 <uartputc_sync>

0000000080001fb4 <consoleintr>:
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	01213023          	sd	s2,0(sp)
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    80001fcc:	00003917          	auipc	s2,0x3
    80001fd0:	4dc90913          	addi	s2,s2,1244 # 800054a8 <cons>
    80001fd4:	00050493          	mv	s1,a0
    80001fd8:	00090513          	mv	a0,s2
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	e40080e7          	jalr	-448(ra) # 80002e1c <acquire>
    80001fe4:	02048c63          	beqz	s1,8000201c <consoleintr+0x68>
    80001fe8:	0a092783          	lw	a5,160(s2)
    80001fec:	09892703          	lw	a4,152(s2)
    80001ff0:	07f00693          	li	a3,127
    80001ff4:	40e7873b          	subw	a4,a5,a4
    80001ff8:	02e6e263          	bltu	a3,a4,8000201c <consoleintr+0x68>
    80001ffc:	00d00713          	li	a4,13
    80002000:	04e48063          	beq	s1,a4,80002040 <consoleintr+0x8c>
    80002004:	07f7f713          	andi	a4,a5,127
    80002008:	00e90733          	add	a4,s2,a4
    8000200c:	0017879b          	addiw	a5,a5,1
    80002010:	0af92023          	sw	a5,160(s2)
    80002014:	00970c23          	sb	s1,24(a4)
    80002018:	08f92e23          	sw	a5,156(s2)
    8000201c:	01013403          	ld	s0,16(sp)
    80002020:	01813083          	ld	ra,24(sp)
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	00013903          	ld	s2,0(sp)
    8000202c:	00003517          	auipc	a0,0x3
    80002030:	47c50513          	addi	a0,a0,1148 # 800054a8 <cons>
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00001317          	auipc	t1,0x1
    8000203c:	eb030067          	jr	-336(t1) # 80002ee8 <release>
    80002040:	00a00493          	li	s1,10
    80002044:	fc1ff06f          	j	80002004 <consoleintr+0x50>

0000000080002048 <consoleinit>:
    80002048:	fe010113          	addi	sp,sp,-32
    8000204c:	00113c23          	sd	ra,24(sp)
    80002050:	00813823          	sd	s0,16(sp)
    80002054:	00913423          	sd	s1,8(sp)
    80002058:	02010413          	addi	s0,sp,32
    8000205c:	00003497          	auipc	s1,0x3
    80002060:	44c48493          	addi	s1,s1,1100 # 800054a8 <cons>
    80002064:	00048513          	mv	a0,s1
    80002068:	00002597          	auipc	a1,0x2
    8000206c:	0e058593          	addi	a1,a1,224 # 80004148 <CONSOLE_STATUS+0x138>
    80002070:	00001097          	auipc	ra,0x1
    80002074:	d88080e7          	jalr	-632(ra) # 80002df8 <initlock>
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	7ac080e7          	jalr	1964(ra) # 80002824 <uartinit>
    80002080:	01813083          	ld	ra,24(sp)
    80002084:	01013403          	ld	s0,16(sp)
    80002088:	00000797          	auipc	a5,0x0
    8000208c:	d9c78793          	addi	a5,a5,-612 # 80001e24 <consoleread>
    80002090:	0af4bc23          	sd	a5,184(s1)
    80002094:	00000797          	auipc	a5,0x0
    80002098:	cec78793          	addi	a5,a5,-788 # 80001d80 <consolewrite>
    8000209c:	0cf4b023          	sd	a5,192(s1)
    800020a0:	00813483          	ld	s1,8(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret

00000000800020ac <console_read>:
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00813423          	sd	s0,8(sp)
    800020b4:	01010413          	addi	s0,sp,16
    800020b8:	00813403          	ld	s0,8(sp)
    800020bc:	00003317          	auipc	t1,0x3
    800020c0:	4a433303          	ld	t1,1188(t1) # 80005560 <devsw+0x10>
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00030067          	jr	t1

00000000800020cc <console_write>:
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00813423          	sd	s0,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    800020d8:	00813403          	ld	s0,8(sp)
    800020dc:	00003317          	auipc	t1,0x3
    800020e0:	48c33303          	ld	t1,1164(t1) # 80005568 <devsw+0x18>
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00030067          	jr	t1

00000000800020ec <panic>:
    800020ec:	fe010113          	addi	sp,sp,-32
    800020f0:	00113c23          	sd	ra,24(sp)
    800020f4:	00813823          	sd	s0,16(sp)
    800020f8:	00913423          	sd	s1,8(sp)
    800020fc:	02010413          	addi	s0,sp,32
    80002100:	00050493          	mv	s1,a0
    80002104:	00002517          	auipc	a0,0x2
    80002108:	04c50513          	addi	a0,a0,76 # 80004150 <CONSOLE_STATUS+0x140>
    8000210c:	00003797          	auipc	a5,0x3
    80002110:	4e07ae23          	sw	zero,1276(a5) # 80005608 <pr+0x18>
    80002114:	00000097          	auipc	ra,0x0
    80002118:	034080e7          	jalr	52(ra) # 80002148 <__printf>
    8000211c:	00048513          	mv	a0,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	028080e7          	jalr	40(ra) # 80002148 <__printf>
    80002128:	00002517          	auipc	a0,0x2
    8000212c:	00850513          	addi	a0,a0,8 # 80004130 <CONSOLE_STATUS+0x120>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	018080e7          	jalr	24(ra) # 80002148 <__printf>
    80002138:	00100793          	li	a5,1
    8000213c:	00002717          	auipc	a4,0x2
    80002140:	24f72e23          	sw	a5,604(a4) # 80004398 <panicked>
    80002144:	0000006f          	j	80002144 <panic+0x58>

0000000080002148 <__printf>:
    80002148:	f3010113          	addi	sp,sp,-208
    8000214c:	08813023          	sd	s0,128(sp)
    80002150:	07313423          	sd	s3,104(sp)
    80002154:	09010413          	addi	s0,sp,144
    80002158:	05813023          	sd	s8,64(sp)
    8000215c:	08113423          	sd	ra,136(sp)
    80002160:	06913c23          	sd	s1,120(sp)
    80002164:	07213823          	sd	s2,112(sp)
    80002168:	07413023          	sd	s4,96(sp)
    8000216c:	05513c23          	sd	s5,88(sp)
    80002170:	05613823          	sd	s6,80(sp)
    80002174:	05713423          	sd	s7,72(sp)
    80002178:	03913c23          	sd	s9,56(sp)
    8000217c:	03a13823          	sd	s10,48(sp)
    80002180:	03b13423          	sd	s11,40(sp)
    80002184:	00003317          	auipc	t1,0x3
    80002188:	46c30313          	addi	t1,t1,1132 # 800055f0 <pr>
    8000218c:	01832c03          	lw	s8,24(t1)
    80002190:	00b43423          	sd	a1,8(s0)
    80002194:	00c43823          	sd	a2,16(s0)
    80002198:	00d43c23          	sd	a3,24(s0)
    8000219c:	02e43023          	sd	a4,32(s0)
    800021a0:	02f43423          	sd	a5,40(s0)
    800021a4:	03043823          	sd	a6,48(s0)
    800021a8:	03143c23          	sd	a7,56(s0)
    800021ac:	00050993          	mv	s3,a0
    800021b0:	4a0c1663          	bnez	s8,8000265c <__printf+0x514>
    800021b4:	60098c63          	beqz	s3,800027cc <__printf+0x684>
    800021b8:	0009c503          	lbu	a0,0(s3)
    800021bc:	00840793          	addi	a5,s0,8
    800021c0:	f6f43c23          	sd	a5,-136(s0)
    800021c4:	00000493          	li	s1,0
    800021c8:	22050063          	beqz	a0,800023e8 <__printf+0x2a0>
    800021cc:	00002a37          	lui	s4,0x2
    800021d0:	00018ab7          	lui	s5,0x18
    800021d4:	000f4b37          	lui	s6,0xf4
    800021d8:	00989bb7          	lui	s7,0x989
    800021dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800021e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800021e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800021e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800021ec:	00148c9b          	addiw	s9,s1,1
    800021f0:	02500793          	li	a5,37
    800021f4:	01998933          	add	s2,s3,s9
    800021f8:	38f51263          	bne	a0,a5,8000257c <__printf+0x434>
    800021fc:	00094783          	lbu	a5,0(s2)
    80002200:	00078c9b          	sext.w	s9,a5
    80002204:	1e078263          	beqz	a5,800023e8 <__printf+0x2a0>
    80002208:	0024849b          	addiw	s1,s1,2
    8000220c:	07000713          	li	a4,112
    80002210:	00998933          	add	s2,s3,s1
    80002214:	38e78a63          	beq	a5,a4,800025a8 <__printf+0x460>
    80002218:	20f76863          	bltu	a4,a5,80002428 <__printf+0x2e0>
    8000221c:	42a78863          	beq	a5,a0,8000264c <__printf+0x504>
    80002220:	06400713          	li	a4,100
    80002224:	40e79663          	bne	a5,a4,80002630 <__printf+0x4e8>
    80002228:	f7843783          	ld	a5,-136(s0)
    8000222c:	0007a603          	lw	a2,0(a5)
    80002230:	00878793          	addi	a5,a5,8
    80002234:	f6f43c23          	sd	a5,-136(s0)
    80002238:	42064a63          	bltz	a2,8000266c <__printf+0x524>
    8000223c:	00a00713          	li	a4,10
    80002240:	02e677bb          	remuw	a5,a2,a4
    80002244:	00002d97          	auipc	s11,0x2
    80002248:	f34d8d93          	addi	s11,s11,-204 # 80004178 <digits>
    8000224c:	00900593          	li	a1,9
    80002250:	0006051b          	sext.w	a0,a2
    80002254:	00000c93          	li	s9,0
    80002258:	02079793          	slli	a5,a5,0x20
    8000225c:	0207d793          	srli	a5,a5,0x20
    80002260:	00fd87b3          	add	a5,s11,a5
    80002264:	0007c783          	lbu	a5,0(a5)
    80002268:	02e656bb          	divuw	a3,a2,a4
    8000226c:	f8f40023          	sb	a5,-128(s0)
    80002270:	14c5d863          	bge	a1,a2,800023c0 <__printf+0x278>
    80002274:	06300593          	li	a1,99
    80002278:	00100c93          	li	s9,1
    8000227c:	02e6f7bb          	remuw	a5,a3,a4
    80002280:	02079793          	slli	a5,a5,0x20
    80002284:	0207d793          	srli	a5,a5,0x20
    80002288:	00fd87b3          	add	a5,s11,a5
    8000228c:	0007c783          	lbu	a5,0(a5)
    80002290:	02e6d73b          	divuw	a4,a3,a4
    80002294:	f8f400a3          	sb	a5,-127(s0)
    80002298:	12a5f463          	bgeu	a1,a0,800023c0 <__printf+0x278>
    8000229c:	00a00693          	li	a3,10
    800022a0:	00900593          	li	a1,9
    800022a4:	02d777bb          	remuw	a5,a4,a3
    800022a8:	02079793          	slli	a5,a5,0x20
    800022ac:	0207d793          	srli	a5,a5,0x20
    800022b0:	00fd87b3          	add	a5,s11,a5
    800022b4:	0007c503          	lbu	a0,0(a5)
    800022b8:	02d757bb          	divuw	a5,a4,a3
    800022bc:	f8a40123          	sb	a0,-126(s0)
    800022c0:	48e5f263          	bgeu	a1,a4,80002744 <__printf+0x5fc>
    800022c4:	06300513          	li	a0,99
    800022c8:	02d7f5bb          	remuw	a1,a5,a3
    800022cc:	02059593          	slli	a1,a1,0x20
    800022d0:	0205d593          	srli	a1,a1,0x20
    800022d4:	00bd85b3          	add	a1,s11,a1
    800022d8:	0005c583          	lbu	a1,0(a1)
    800022dc:	02d7d7bb          	divuw	a5,a5,a3
    800022e0:	f8b401a3          	sb	a1,-125(s0)
    800022e4:	48e57263          	bgeu	a0,a4,80002768 <__printf+0x620>
    800022e8:	3e700513          	li	a0,999
    800022ec:	02d7f5bb          	remuw	a1,a5,a3
    800022f0:	02059593          	slli	a1,a1,0x20
    800022f4:	0205d593          	srli	a1,a1,0x20
    800022f8:	00bd85b3          	add	a1,s11,a1
    800022fc:	0005c583          	lbu	a1,0(a1)
    80002300:	02d7d7bb          	divuw	a5,a5,a3
    80002304:	f8b40223          	sb	a1,-124(s0)
    80002308:	46e57663          	bgeu	a0,a4,80002774 <__printf+0x62c>
    8000230c:	02d7f5bb          	remuw	a1,a5,a3
    80002310:	02059593          	slli	a1,a1,0x20
    80002314:	0205d593          	srli	a1,a1,0x20
    80002318:	00bd85b3          	add	a1,s11,a1
    8000231c:	0005c583          	lbu	a1,0(a1)
    80002320:	02d7d7bb          	divuw	a5,a5,a3
    80002324:	f8b402a3          	sb	a1,-123(s0)
    80002328:	46ea7863          	bgeu	s4,a4,80002798 <__printf+0x650>
    8000232c:	02d7f5bb          	remuw	a1,a5,a3
    80002330:	02059593          	slli	a1,a1,0x20
    80002334:	0205d593          	srli	a1,a1,0x20
    80002338:	00bd85b3          	add	a1,s11,a1
    8000233c:	0005c583          	lbu	a1,0(a1)
    80002340:	02d7d7bb          	divuw	a5,a5,a3
    80002344:	f8b40323          	sb	a1,-122(s0)
    80002348:	3eeaf863          	bgeu	s5,a4,80002738 <__printf+0x5f0>
    8000234c:	02d7f5bb          	remuw	a1,a5,a3
    80002350:	02059593          	slli	a1,a1,0x20
    80002354:	0205d593          	srli	a1,a1,0x20
    80002358:	00bd85b3          	add	a1,s11,a1
    8000235c:	0005c583          	lbu	a1,0(a1)
    80002360:	02d7d7bb          	divuw	a5,a5,a3
    80002364:	f8b403a3          	sb	a1,-121(s0)
    80002368:	42eb7e63          	bgeu	s6,a4,800027a4 <__printf+0x65c>
    8000236c:	02d7f5bb          	remuw	a1,a5,a3
    80002370:	02059593          	slli	a1,a1,0x20
    80002374:	0205d593          	srli	a1,a1,0x20
    80002378:	00bd85b3          	add	a1,s11,a1
    8000237c:	0005c583          	lbu	a1,0(a1)
    80002380:	02d7d7bb          	divuw	a5,a5,a3
    80002384:	f8b40423          	sb	a1,-120(s0)
    80002388:	42ebfc63          	bgeu	s7,a4,800027c0 <__printf+0x678>
    8000238c:	02079793          	slli	a5,a5,0x20
    80002390:	0207d793          	srli	a5,a5,0x20
    80002394:	00fd8db3          	add	s11,s11,a5
    80002398:	000dc703          	lbu	a4,0(s11)
    8000239c:	00a00793          	li	a5,10
    800023a0:	00900c93          	li	s9,9
    800023a4:	f8e404a3          	sb	a4,-119(s0)
    800023a8:	00065c63          	bgez	a2,800023c0 <__printf+0x278>
    800023ac:	f9040713          	addi	a4,s0,-112
    800023b0:	00f70733          	add	a4,a4,a5
    800023b4:	02d00693          	li	a3,45
    800023b8:	fed70823          	sb	a3,-16(a4)
    800023bc:	00078c93          	mv	s9,a5
    800023c0:	f8040793          	addi	a5,s0,-128
    800023c4:	01978cb3          	add	s9,a5,s9
    800023c8:	f7f40d13          	addi	s10,s0,-129
    800023cc:	000cc503          	lbu	a0,0(s9)
    800023d0:	fffc8c93          	addi	s9,s9,-1
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	b90080e7          	jalr	-1136(ra) # 80001f64 <consputc>
    800023dc:	ffac98e3          	bne	s9,s10,800023cc <__printf+0x284>
    800023e0:	00094503          	lbu	a0,0(s2)
    800023e4:	e00514e3          	bnez	a0,800021ec <__printf+0xa4>
    800023e8:	1a0c1663          	bnez	s8,80002594 <__printf+0x44c>
    800023ec:	08813083          	ld	ra,136(sp)
    800023f0:	08013403          	ld	s0,128(sp)
    800023f4:	07813483          	ld	s1,120(sp)
    800023f8:	07013903          	ld	s2,112(sp)
    800023fc:	06813983          	ld	s3,104(sp)
    80002400:	06013a03          	ld	s4,96(sp)
    80002404:	05813a83          	ld	s5,88(sp)
    80002408:	05013b03          	ld	s6,80(sp)
    8000240c:	04813b83          	ld	s7,72(sp)
    80002410:	04013c03          	ld	s8,64(sp)
    80002414:	03813c83          	ld	s9,56(sp)
    80002418:	03013d03          	ld	s10,48(sp)
    8000241c:	02813d83          	ld	s11,40(sp)
    80002420:	0d010113          	addi	sp,sp,208
    80002424:	00008067          	ret
    80002428:	07300713          	li	a4,115
    8000242c:	1ce78a63          	beq	a5,a4,80002600 <__printf+0x4b8>
    80002430:	07800713          	li	a4,120
    80002434:	1ee79e63          	bne	a5,a4,80002630 <__printf+0x4e8>
    80002438:	f7843783          	ld	a5,-136(s0)
    8000243c:	0007a703          	lw	a4,0(a5)
    80002440:	00878793          	addi	a5,a5,8
    80002444:	f6f43c23          	sd	a5,-136(s0)
    80002448:	28074263          	bltz	a4,800026cc <__printf+0x584>
    8000244c:	00002d97          	auipc	s11,0x2
    80002450:	d2cd8d93          	addi	s11,s11,-724 # 80004178 <digits>
    80002454:	00f77793          	andi	a5,a4,15
    80002458:	00fd87b3          	add	a5,s11,a5
    8000245c:	0007c683          	lbu	a3,0(a5)
    80002460:	00f00613          	li	a2,15
    80002464:	0007079b          	sext.w	a5,a4
    80002468:	f8d40023          	sb	a3,-128(s0)
    8000246c:	0047559b          	srliw	a1,a4,0x4
    80002470:	0047569b          	srliw	a3,a4,0x4
    80002474:	00000c93          	li	s9,0
    80002478:	0ee65063          	bge	a2,a4,80002558 <__printf+0x410>
    8000247c:	00f6f693          	andi	a3,a3,15
    80002480:	00dd86b3          	add	a3,s11,a3
    80002484:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002488:	0087d79b          	srliw	a5,a5,0x8
    8000248c:	00100c93          	li	s9,1
    80002490:	f8d400a3          	sb	a3,-127(s0)
    80002494:	0cb67263          	bgeu	a2,a1,80002558 <__printf+0x410>
    80002498:	00f7f693          	andi	a3,a5,15
    8000249c:	00dd86b3          	add	a3,s11,a3
    800024a0:	0006c583          	lbu	a1,0(a3)
    800024a4:	00f00613          	li	a2,15
    800024a8:	0047d69b          	srliw	a3,a5,0x4
    800024ac:	f8b40123          	sb	a1,-126(s0)
    800024b0:	0047d593          	srli	a1,a5,0x4
    800024b4:	28f67e63          	bgeu	a2,a5,80002750 <__printf+0x608>
    800024b8:	00f6f693          	andi	a3,a3,15
    800024bc:	00dd86b3          	add	a3,s11,a3
    800024c0:	0006c503          	lbu	a0,0(a3)
    800024c4:	0087d813          	srli	a6,a5,0x8
    800024c8:	0087d69b          	srliw	a3,a5,0x8
    800024cc:	f8a401a3          	sb	a0,-125(s0)
    800024d0:	28b67663          	bgeu	a2,a1,8000275c <__printf+0x614>
    800024d4:	00f6f693          	andi	a3,a3,15
    800024d8:	00dd86b3          	add	a3,s11,a3
    800024dc:	0006c583          	lbu	a1,0(a3)
    800024e0:	00c7d513          	srli	a0,a5,0xc
    800024e4:	00c7d69b          	srliw	a3,a5,0xc
    800024e8:	f8b40223          	sb	a1,-124(s0)
    800024ec:	29067a63          	bgeu	a2,a6,80002780 <__printf+0x638>
    800024f0:	00f6f693          	andi	a3,a3,15
    800024f4:	00dd86b3          	add	a3,s11,a3
    800024f8:	0006c583          	lbu	a1,0(a3)
    800024fc:	0107d813          	srli	a6,a5,0x10
    80002500:	0107d69b          	srliw	a3,a5,0x10
    80002504:	f8b402a3          	sb	a1,-123(s0)
    80002508:	28a67263          	bgeu	a2,a0,8000278c <__printf+0x644>
    8000250c:	00f6f693          	andi	a3,a3,15
    80002510:	00dd86b3          	add	a3,s11,a3
    80002514:	0006c683          	lbu	a3,0(a3)
    80002518:	0147d79b          	srliw	a5,a5,0x14
    8000251c:	f8d40323          	sb	a3,-122(s0)
    80002520:	21067663          	bgeu	a2,a6,8000272c <__printf+0x5e4>
    80002524:	02079793          	slli	a5,a5,0x20
    80002528:	0207d793          	srli	a5,a5,0x20
    8000252c:	00fd8db3          	add	s11,s11,a5
    80002530:	000dc683          	lbu	a3,0(s11)
    80002534:	00800793          	li	a5,8
    80002538:	00700c93          	li	s9,7
    8000253c:	f8d403a3          	sb	a3,-121(s0)
    80002540:	00075c63          	bgez	a4,80002558 <__printf+0x410>
    80002544:	f9040713          	addi	a4,s0,-112
    80002548:	00f70733          	add	a4,a4,a5
    8000254c:	02d00693          	li	a3,45
    80002550:	fed70823          	sb	a3,-16(a4)
    80002554:	00078c93          	mv	s9,a5
    80002558:	f8040793          	addi	a5,s0,-128
    8000255c:	01978cb3          	add	s9,a5,s9
    80002560:	f7f40d13          	addi	s10,s0,-129
    80002564:	000cc503          	lbu	a0,0(s9)
    80002568:	fffc8c93          	addi	s9,s9,-1
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	9f8080e7          	jalr	-1544(ra) # 80001f64 <consputc>
    80002574:	ff9d18e3          	bne	s10,s9,80002564 <__printf+0x41c>
    80002578:	0100006f          	j	80002588 <__printf+0x440>
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	9e8080e7          	jalr	-1560(ra) # 80001f64 <consputc>
    80002584:	000c8493          	mv	s1,s9
    80002588:	00094503          	lbu	a0,0(s2)
    8000258c:	c60510e3          	bnez	a0,800021ec <__printf+0xa4>
    80002590:	e40c0ee3          	beqz	s8,800023ec <__printf+0x2a4>
    80002594:	00003517          	auipc	a0,0x3
    80002598:	05c50513          	addi	a0,a0,92 # 800055f0 <pr>
    8000259c:	00001097          	auipc	ra,0x1
    800025a0:	94c080e7          	jalr	-1716(ra) # 80002ee8 <release>
    800025a4:	e49ff06f          	j	800023ec <__printf+0x2a4>
    800025a8:	f7843783          	ld	a5,-136(s0)
    800025ac:	03000513          	li	a0,48
    800025b0:	01000d13          	li	s10,16
    800025b4:	00878713          	addi	a4,a5,8
    800025b8:	0007bc83          	ld	s9,0(a5)
    800025bc:	f6e43c23          	sd	a4,-136(s0)
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	9a4080e7          	jalr	-1628(ra) # 80001f64 <consputc>
    800025c8:	07800513          	li	a0,120
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	998080e7          	jalr	-1640(ra) # 80001f64 <consputc>
    800025d4:	00002d97          	auipc	s11,0x2
    800025d8:	ba4d8d93          	addi	s11,s11,-1116 # 80004178 <digits>
    800025dc:	03ccd793          	srli	a5,s9,0x3c
    800025e0:	00fd87b3          	add	a5,s11,a5
    800025e4:	0007c503          	lbu	a0,0(a5)
    800025e8:	fffd0d1b          	addiw	s10,s10,-1
    800025ec:	004c9c93          	slli	s9,s9,0x4
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	974080e7          	jalr	-1676(ra) # 80001f64 <consputc>
    800025f8:	fe0d12e3          	bnez	s10,800025dc <__printf+0x494>
    800025fc:	f8dff06f          	j	80002588 <__printf+0x440>
    80002600:	f7843783          	ld	a5,-136(s0)
    80002604:	0007bc83          	ld	s9,0(a5)
    80002608:	00878793          	addi	a5,a5,8
    8000260c:	f6f43c23          	sd	a5,-136(s0)
    80002610:	000c9a63          	bnez	s9,80002624 <__printf+0x4dc>
    80002614:	1080006f          	j	8000271c <__printf+0x5d4>
    80002618:	001c8c93          	addi	s9,s9,1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	948080e7          	jalr	-1720(ra) # 80001f64 <consputc>
    80002624:	000cc503          	lbu	a0,0(s9)
    80002628:	fe0518e3          	bnez	a0,80002618 <__printf+0x4d0>
    8000262c:	f5dff06f          	j	80002588 <__printf+0x440>
    80002630:	02500513          	li	a0,37
    80002634:	00000097          	auipc	ra,0x0
    80002638:	930080e7          	jalr	-1744(ra) # 80001f64 <consputc>
    8000263c:	000c8513          	mv	a0,s9
    80002640:	00000097          	auipc	ra,0x0
    80002644:	924080e7          	jalr	-1756(ra) # 80001f64 <consputc>
    80002648:	f41ff06f          	j	80002588 <__printf+0x440>
    8000264c:	02500513          	li	a0,37
    80002650:	00000097          	auipc	ra,0x0
    80002654:	914080e7          	jalr	-1772(ra) # 80001f64 <consputc>
    80002658:	f31ff06f          	j	80002588 <__printf+0x440>
    8000265c:	00030513          	mv	a0,t1
    80002660:	00000097          	auipc	ra,0x0
    80002664:	7bc080e7          	jalr	1980(ra) # 80002e1c <acquire>
    80002668:	b4dff06f          	j	800021b4 <__printf+0x6c>
    8000266c:	40c0053b          	negw	a0,a2
    80002670:	00a00713          	li	a4,10
    80002674:	02e576bb          	remuw	a3,a0,a4
    80002678:	00002d97          	auipc	s11,0x2
    8000267c:	b00d8d93          	addi	s11,s11,-1280 # 80004178 <digits>
    80002680:	ff700593          	li	a1,-9
    80002684:	02069693          	slli	a3,a3,0x20
    80002688:	0206d693          	srli	a3,a3,0x20
    8000268c:	00dd86b3          	add	a3,s11,a3
    80002690:	0006c683          	lbu	a3,0(a3)
    80002694:	02e557bb          	divuw	a5,a0,a4
    80002698:	f8d40023          	sb	a3,-128(s0)
    8000269c:	10b65e63          	bge	a2,a1,800027b8 <__printf+0x670>
    800026a0:	06300593          	li	a1,99
    800026a4:	02e7f6bb          	remuw	a3,a5,a4
    800026a8:	02069693          	slli	a3,a3,0x20
    800026ac:	0206d693          	srli	a3,a3,0x20
    800026b0:	00dd86b3          	add	a3,s11,a3
    800026b4:	0006c683          	lbu	a3,0(a3)
    800026b8:	02e7d73b          	divuw	a4,a5,a4
    800026bc:	00200793          	li	a5,2
    800026c0:	f8d400a3          	sb	a3,-127(s0)
    800026c4:	bca5ece3          	bltu	a1,a0,8000229c <__printf+0x154>
    800026c8:	ce5ff06f          	j	800023ac <__printf+0x264>
    800026cc:	40e007bb          	negw	a5,a4
    800026d0:	00002d97          	auipc	s11,0x2
    800026d4:	aa8d8d93          	addi	s11,s11,-1368 # 80004178 <digits>
    800026d8:	00f7f693          	andi	a3,a5,15
    800026dc:	00dd86b3          	add	a3,s11,a3
    800026e0:	0006c583          	lbu	a1,0(a3)
    800026e4:	ff100613          	li	a2,-15
    800026e8:	0047d69b          	srliw	a3,a5,0x4
    800026ec:	f8b40023          	sb	a1,-128(s0)
    800026f0:	0047d59b          	srliw	a1,a5,0x4
    800026f4:	0ac75e63          	bge	a4,a2,800027b0 <__printf+0x668>
    800026f8:	00f6f693          	andi	a3,a3,15
    800026fc:	00dd86b3          	add	a3,s11,a3
    80002700:	0006c603          	lbu	a2,0(a3)
    80002704:	00f00693          	li	a3,15
    80002708:	0087d79b          	srliw	a5,a5,0x8
    8000270c:	f8c400a3          	sb	a2,-127(s0)
    80002710:	d8b6e4e3          	bltu	a3,a1,80002498 <__printf+0x350>
    80002714:	00200793          	li	a5,2
    80002718:	e2dff06f          	j	80002544 <__printf+0x3fc>
    8000271c:	00002c97          	auipc	s9,0x2
    80002720:	a3cc8c93          	addi	s9,s9,-1476 # 80004158 <CONSOLE_STATUS+0x148>
    80002724:	02800513          	li	a0,40
    80002728:	ef1ff06f          	j	80002618 <__printf+0x4d0>
    8000272c:	00700793          	li	a5,7
    80002730:	00600c93          	li	s9,6
    80002734:	e0dff06f          	j	80002540 <__printf+0x3f8>
    80002738:	00700793          	li	a5,7
    8000273c:	00600c93          	li	s9,6
    80002740:	c69ff06f          	j	800023a8 <__printf+0x260>
    80002744:	00300793          	li	a5,3
    80002748:	00200c93          	li	s9,2
    8000274c:	c5dff06f          	j	800023a8 <__printf+0x260>
    80002750:	00300793          	li	a5,3
    80002754:	00200c93          	li	s9,2
    80002758:	de9ff06f          	j	80002540 <__printf+0x3f8>
    8000275c:	00400793          	li	a5,4
    80002760:	00300c93          	li	s9,3
    80002764:	dddff06f          	j	80002540 <__printf+0x3f8>
    80002768:	00400793          	li	a5,4
    8000276c:	00300c93          	li	s9,3
    80002770:	c39ff06f          	j	800023a8 <__printf+0x260>
    80002774:	00500793          	li	a5,5
    80002778:	00400c93          	li	s9,4
    8000277c:	c2dff06f          	j	800023a8 <__printf+0x260>
    80002780:	00500793          	li	a5,5
    80002784:	00400c93          	li	s9,4
    80002788:	db9ff06f          	j	80002540 <__printf+0x3f8>
    8000278c:	00600793          	li	a5,6
    80002790:	00500c93          	li	s9,5
    80002794:	dadff06f          	j	80002540 <__printf+0x3f8>
    80002798:	00600793          	li	a5,6
    8000279c:	00500c93          	li	s9,5
    800027a0:	c09ff06f          	j	800023a8 <__printf+0x260>
    800027a4:	00800793          	li	a5,8
    800027a8:	00700c93          	li	s9,7
    800027ac:	bfdff06f          	j	800023a8 <__printf+0x260>
    800027b0:	00100793          	li	a5,1
    800027b4:	d91ff06f          	j	80002544 <__printf+0x3fc>
    800027b8:	00100793          	li	a5,1
    800027bc:	bf1ff06f          	j	800023ac <__printf+0x264>
    800027c0:	00900793          	li	a5,9
    800027c4:	00800c93          	li	s9,8
    800027c8:	be1ff06f          	j	800023a8 <__printf+0x260>
    800027cc:	00002517          	auipc	a0,0x2
    800027d0:	99450513          	addi	a0,a0,-1644 # 80004160 <CONSOLE_STATUS+0x150>
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	918080e7          	jalr	-1768(ra) # 800020ec <panic>

00000000800027dc <printfinit>:
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	00113c23          	sd	ra,24(sp)
    800027ec:	02010413          	addi	s0,sp,32
    800027f0:	00003497          	auipc	s1,0x3
    800027f4:	e0048493          	addi	s1,s1,-512 # 800055f0 <pr>
    800027f8:	00048513          	mv	a0,s1
    800027fc:	00002597          	auipc	a1,0x2
    80002800:	97458593          	addi	a1,a1,-1676 # 80004170 <CONSOLE_STATUS+0x160>
    80002804:	00000097          	auipc	ra,0x0
    80002808:	5f4080e7          	jalr	1524(ra) # 80002df8 <initlock>
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	01013403          	ld	s0,16(sp)
    80002814:	0004ac23          	sw	zero,24(s1)
    80002818:	00813483          	ld	s1,8(sp)
    8000281c:	02010113          	addi	sp,sp,32
    80002820:	00008067          	ret

0000000080002824 <uartinit>:
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00813423          	sd	s0,8(sp)
    8000282c:	01010413          	addi	s0,sp,16
    80002830:	100007b7          	lui	a5,0x10000
    80002834:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002838:	f8000713          	li	a4,-128
    8000283c:	00e781a3          	sb	a4,3(a5)
    80002840:	00300713          	li	a4,3
    80002844:	00e78023          	sb	a4,0(a5)
    80002848:	000780a3          	sb	zero,1(a5)
    8000284c:	00e781a3          	sb	a4,3(a5)
    80002850:	00700693          	li	a3,7
    80002854:	00d78123          	sb	a3,2(a5)
    80002858:	00e780a3          	sb	a4,1(a5)
    8000285c:	00813403          	ld	s0,8(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <uartputc>:
    80002868:	00002797          	auipc	a5,0x2
    8000286c:	b307a783          	lw	a5,-1232(a5) # 80004398 <panicked>
    80002870:	00078463          	beqz	a5,80002878 <uartputc+0x10>
    80002874:	0000006f          	j	80002874 <uartputc+0xc>
    80002878:	fd010113          	addi	sp,sp,-48
    8000287c:	02813023          	sd	s0,32(sp)
    80002880:	00913c23          	sd	s1,24(sp)
    80002884:	01213823          	sd	s2,16(sp)
    80002888:	01313423          	sd	s3,8(sp)
    8000288c:	02113423          	sd	ra,40(sp)
    80002890:	03010413          	addi	s0,sp,48
    80002894:	00002917          	auipc	s2,0x2
    80002898:	b0c90913          	addi	s2,s2,-1268 # 800043a0 <uart_tx_r>
    8000289c:	00093783          	ld	a5,0(s2)
    800028a0:	00002497          	auipc	s1,0x2
    800028a4:	b0848493          	addi	s1,s1,-1272 # 800043a8 <uart_tx_w>
    800028a8:	0004b703          	ld	a4,0(s1)
    800028ac:	02078693          	addi	a3,a5,32
    800028b0:	00050993          	mv	s3,a0
    800028b4:	02e69c63          	bne	a3,a4,800028ec <uartputc+0x84>
    800028b8:	00001097          	auipc	ra,0x1
    800028bc:	834080e7          	jalr	-1996(ra) # 800030ec <push_on>
    800028c0:	00093783          	ld	a5,0(s2)
    800028c4:	0004b703          	ld	a4,0(s1)
    800028c8:	02078793          	addi	a5,a5,32
    800028cc:	00e79463          	bne	a5,a4,800028d4 <uartputc+0x6c>
    800028d0:	0000006f          	j	800028d0 <uartputc+0x68>
    800028d4:	00001097          	auipc	ra,0x1
    800028d8:	88c080e7          	jalr	-1908(ra) # 80003160 <pop_on>
    800028dc:	00093783          	ld	a5,0(s2)
    800028e0:	0004b703          	ld	a4,0(s1)
    800028e4:	02078693          	addi	a3,a5,32
    800028e8:	fce688e3          	beq	a3,a4,800028b8 <uartputc+0x50>
    800028ec:	01f77693          	andi	a3,a4,31
    800028f0:	00003597          	auipc	a1,0x3
    800028f4:	d2058593          	addi	a1,a1,-736 # 80005610 <uart_tx_buf>
    800028f8:	00d586b3          	add	a3,a1,a3
    800028fc:	00170713          	addi	a4,a4,1
    80002900:	01368023          	sb	s3,0(a3)
    80002904:	00e4b023          	sd	a4,0(s1)
    80002908:	10000637          	lui	a2,0x10000
    8000290c:	02f71063          	bne	a4,a5,8000292c <uartputc+0xc4>
    80002910:	0340006f          	j	80002944 <uartputc+0xdc>
    80002914:	00074703          	lbu	a4,0(a4)
    80002918:	00f93023          	sd	a5,0(s2)
    8000291c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002920:	00093783          	ld	a5,0(s2)
    80002924:	0004b703          	ld	a4,0(s1)
    80002928:	00f70e63          	beq	a4,a5,80002944 <uartputc+0xdc>
    8000292c:	00564683          	lbu	a3,5(a2)
    80002930:	01f7f713          	andi	a4,a5,31
    80002934:	00e58733          	add	a4,a1,a4
    80002938:	0206f693          	andi	a3,a3,32
    8000293c:	00178793          	addi	a5,a5,1
    80002940:	fc069ae3          	bnez	a3,80002914 <uartputc+0xac>
    80002944:	02813083          	ld	ra,40(sp)
    80002948:	02013403          	ld	s0,32(sp)
    8000294c:	01813483          	ld	s1,24(sp)
    80002950:	01013903          	ld	s2,16(sp)
    80002954:	00813983          	ld	s3,8(sp)
    80002958:	03010113          	addi	sp,sp,48
    8000295c:	00008067          	ret

0000000080002960 <uartputc_sync>:
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    8000296c:	00002717          	auipc	a4,0x2
    80002970:	a2c72703          	lw	a4,-1492(a4) # 80004398 <panicked>
    80002974:	02071663          	bnez	a4,800029a0 <uartputc_sync+0x40>
    80002978:	00050793          	mv	a5,a0
    8000297c:	100006b7          	lui	a3,0x10000
    80002980:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002984:	02077713          	andi	a4,a4,32
    80002988:	fe070ce3          	beqz	a4,80002980 <uartputc_sync+0x20>
    8000298c:	0ff7f793          	andi	a5,a5,255
    80002990:	00f68023          	sb	a5,0(a3)
    80002994:	00813403          	ld	s0,8(sp)
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00008067          	ret
    800029a0:	0000006f          	j	800029a0 <uartputc_sync+0x40>

00000000800029a4 <uartstart>:
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00813423          	sd	s0,8(sp)
    800029ac:	01010413          	addi	s0,sp,16
    800029b0:	00002617          	auipc	a2,0x2
    800029b4:	9f060613          	addi	a2,a2,-1552 # 800043a0 <uart_tx_r>
    800029b8:	00002517          	auipc	a0,0x2
    800029bc:	9f050513          	addi	a0,a0,-1552 # 800043a8 <uart_tx_w>
    800029c0:	00063783          	ld	a5,0(a2)
    800029c4:	00053703          	ld	a4,0(a0)
    800029c8:	04f70263          	beq	a4,a5,80002a0c <uartstart+0x68>
    800029cc:	100005b7          	lui	a1,0x10000
    800029d0:	00003817          	auipc	a6,0x3
    800029d4:	c4080813          	addi	a6,a6,-960 # 80005610 <uart_tx_buf>
    800029d8:	01c0006f          	j	800029f4 <uartstart+0x50>
    800029dc:	0006c703          	lbu	a4,0(a3)
    800029e0:	00f63023          	sd	a5,0(a2)
    800029e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800029e8:	00063783          	ld	a5,0(a2)
    800029ec:	00053703          	ld	a4,0(a0)
    800029f0:	00f70e63          	beq	a4,a5,80002a0c <uartstart+0x68>
    800029f4:	01f7f713          	andi	a4,a5,31
    800029f8:	00e806b3          	add	a3,a6,a4
    800029fc:	0055c703          	lbu	a4,5(a1)
    80002a00:	00178793          	addi	a5,a5,1
    80002a04:	02077713          	andi	a4,a4,32
    80002a08:	fc071ae3          	bnez	a4,800029dc <uartstart+0x38>
    80002a0c:	00813403          	ld	s0,8(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <uartgetc>:
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00813423          	sd	s0,8(sp)
    80002a20:	01010413          	addi	s0,sp,16
    80002a24:	10000737          	lui	a4,0x10000
    80002a28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002a2c:	0017f793          	andi	a5,a5,1
    80002a30:	00078c63          	beqz	a5,80002a48 <uartgetc+0x30>
    80002a34:	00074503          	lbu	a0,0(a4)
    80002a38:	0ff57513          	andi	a0,a0,255
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret
    80002a48:	fff00513          	li	a0,-1
    80002a4c:	ff1ff06f          	j	80002a3c <uartgetc+0x24>

0000000080002a50 <uartintr>:
    80002a50:	100007b7          	lui	a5,0x10000
    80002a54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002a58:	0017f793          	andi	a5,a5,1
    80002a5c:	0a078463          	beqz	a5,80002b04 <uartintr+0xb4>
    80002a60:	fe010113          	addi	sp,sp,-32
    80002a64:	00813823          	sd	s0,16(sp)
    80002a68:	00913423          	sd	s1,8(sp)
    80002a6c:	00113c23          	sd	ra,24(sp)
    80002a70:	02010413          	addi	s0,sp,32
    80002a74:	100004b7          	lui	s1,0x10000
    80002a78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002a7c:	0ff57513          	andi	a0,a0,255
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	534080e7          	jalr	1332(ra) # 80001fb4 <consoleintr>
    80002a88:	0054c783          	lbu	a5,5(s1)
    80002a8c:	0017f793          	andi	a5,a5,1
    80002a90:	fe0794e3          	bnez	a5,80002a78 <uartintr+0x28>
    80002a94:	00002617          	auipc	a2,0x2
    80002a98:	90c60613          	addi	a2,a2,-1780 # 800043a0 <uart_tx_r>
    80002a9c:	00002517          	auipc	a0,0x2
    80002aa0:	90c50513          	addi	a0,a0,-1780 # 800043a8 <uart_tx_w>
    80002aa4:	00063783          	ld	a5,0(a2)
    80002aa8:	00053703          	ld	a4,0(a0)
    80002aac:	04f70263          	beq	a4,a5,80002af0 <uartintr+0xa0>
    80002ab0:	100005b7          	lui	a1,0x10000
    80002ab4:	00003817          	auipc	a6,0x3
    80002ab8:	b5c80813          	addi	a6,a6,-1188 # 80005610 <uart_tx_buf>
    80002abc:	01c0006f          	j	80002ad8 <uartintr+0x88>
    80002ac0:	0006c703          	lbu	a4,0(a3)
    80002ac4:	00f63023          	sd	a5,0(a2)
    80002ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002acc:	00063783          	ld	a5,0(a2)
    80002ad0:	00053703          	ld	a4,0(a0)
    80002ad4:	00f70e63          	beq	a4,a5,80002af0 <uartintr+0xa0>
    80002ad8:	01f7f713          	andi	a4,a5,31
    80002adc:	00e806b3          	add	a3,a6,a4
    80002ae0:	0055c703          	lbu	a4,5(a1)
    80002ae4:	00178793          	addi	a5,a5,1
    80002ae8:	02077713          	andi	a4,a4,32
    80002aec:	fc071ae3          	bnez	a4,80002ac0 <uartintr+0x70>
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	01013403          	ld	s0,16(sp)
    80002af8:	00813483          	ld	s1,8(sp)
    80002afc:	02010113          	addi	sp,sp,32
    80002b00:	00008067          	ret
    80002b04:	00002617          	auipc	a2,0x2
    80002b08:	89c60613          	addi	a2,a2,-1892 # 800043a0 <uart_tx_r>
    80002b0c:	00002517          	auipc	a0,0x2
    80002b10:	89c50513          	addi	a0,a0,-1892 # 800043a8 <uart_tx_w>
    80002b14:	00063783          	ld	a5,0(a2)
    80002b18:	00053703          	ld	a4,0(a0)
    80002b1c:	04f70263          	beq	a4,a5,80002b60 <uartintr+0x110>
    80002b20:	100005b7          	lui	a1,0x10000
    80002b24:	00003817          	auipc	a6,0x3
    80002b28:	aec80813          	addi	a6,a6,-1300 # 80005610 <uart_tx_buf>
    80002b2c:	01c0006f          	j	80002b48 <uartintr+0xf8>
    80002b30:	0006c703          	lbu	a4,0(a3)
    80002b34:	00f63023          	sd	a5,0(a2)
    80002b38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b3c:	00063783          	ld	a5,0(a2)
    80002b40:	00053703          	ld	a4,0(a0)
    80002b44:	02f70063          	beq	a4,a5,80002b64 <uartintr+0x114>
    80002b48:	01f7f713          	andi	a4,a5,31
    80002b4c:	00e806b3          	add	a3,a6,a4
    80002b50:	0055c703          	lbu	a4,5(a1)
    80002b54:	00178793          	addi	a5,a5,1
    80002b58:	02077713          	andi	a4,a4,32
    80002b5c:	fc071ae3          	bnez	a4,80002b30 <uartintr+0xe0>
    80002b60:	00008067          	ret
    80002b64:	00008067          	ret

0000000080002b68 <kinit>:
    80002b68:	fc010113          	addi	sp,sp,-64
    80002b6c:	02913423          	sd	s1,40(sp)
    80002b70:	fffff7b7          	lui	a5,0xfffff
    80002b74:	00004497          	auipc	s1,0x4
    80002b78:	abb48493          	addi	s1,s1,-1349 # 8000662f <end+0xfff>
    80002b7c:	02813823          	sd	s0,48(sp)
    80002b80:	01313c23          	sd	s3,24(sp)
    80002b84:	00f4f4b3          	and	s1,s1,a5
    80002b88:	02113c23          	sd	ra,56(sp)
    80002b8c:	03213023          	sd	s2,32(sp)
    80002b90:	01413823          	sd	s4,16(sp)
    80002b94:	01513423          	sd	s5,8(sp)
    80002b98:	04010413          	addi	s0,sp,64
    80002b9c:	000017b7          	lui	a5,0x1
    80002ba0:	01100993          	li	s3,17
    80002ba4:	00f487b3          	add	a5,s1,a5
    80002ba8:	01b99993          	slli	s3,s3,0x1b
    80002bac:	06f9e063          	bltu	s3,a5,80002c0c <kinit+0xa4>
    80002bb0:	00003a97          	auipc	s5,0x3
    80002bb4:	a80a8a93          	addi	s5,s5,-1408 # 80005630 <end>
    80002bb8:	0754ec63          	bltu	s1,s5,80002c30 <kinit+0xc8>
    80002bbc:	0734fa63          	bgeu	s1,s3,80002c30 <kinit+0xc8>
    80002bc0:	00088a37          	lui	s4,0x88
    80002bc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002bc8:	00001917          	auipc	s2,0x1
    80002bcc:	7e890913          	addi	s2,s2,2024 # 800043b0 <kmem>
    80002bd0:	00ca1a13          	slli	s4,s4,0xc
    80002bd4:	0140006f          	j	80002be8 <kinit+0x80>
    80002bd8:	000017b7          	lui	a5,0x1
    80002bdc:	00f484b3          	add	s1,s1,a5
    80002be0:	0554e863          	bltu	s1,s5,80002c30 <kinit+0xc8>
    80002be4:	0534f663          	bgeu	s1,s3,80002c30 <kinit+0xc8>
    80002be8:	00001637          	lui	a2,0x1
    80002bec:	00100593          	li	a1,1
    80002bf0:	00048513          	mv	a0,s1
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	5e4080e7          	jalr	1508(ra) # 800031d8 <__memset>
    80002bfc:	00093783          	ld	a5,0(s2)
    80002c00:	00f4b023          	sd	a5,0(s1)
    80002c04:	00993023          	sd	s1,0(s2)
    80002c08:	fd4498e3          	bne	s1,s4,80002bd8 <kinit+0x70>
    80002c0c:	03813083          	ld	ra,56(sp)
    80002c10:	03013403          	ld	s0,48(sp)
    80002c14:	02813483          	ld	s1,40(sp)
    80002c18:	02013903          	ld	s2,32(sp)
    80002c1c:	01813983          	ld	s3,24(sp)
    80002c20:	01013a03          	ld	s4,16(sp)
    80002c24:	00813a83          	ld	s5,8(sp)
    80002c28:	04010113          	addi	sp,sp,64
    80002c2c:	00008067          	ret
    80002c30:	00001517          	auipc	a0,0x1
    80002c34:	56050513          	addi	a0,a0,1376 # 80004190 <digits+0x18>
    80002c38:	fffff097          	auipc	ra,0xfffff
    80002c3c:	4b4080e7          	jalr	1204(ra) # 800020ec <panic>

0000000080002c40 <freerange>:
    80002c40:	fc010113          	addi	sp,sp,-64
    80002c44:	000017b7          	lui	a5,0x1
    80002c48:	02913423          	sd	s1,40(sp)
    80002c4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002c50:	009504b3          	add	s1,a0,s1
    80002c54:	fffff537          	lui	a0,0xfffff
    80002c58:	02813823          	sd	s0,48(sp)
    80002c5c:	02113c23          	sd	ra,56(sp)
    80002c60:	03213023          	sd	s2,32(sp)
    80002c64:	01313c23          	sd	s3,24(sp)
    80002c68:	01413823          	sd	s4,16(sp)
    80002c6c:	01513423          	sd	s5,8(sp)
    80002c70:	01613023          	sd	s6,0(sp)
    80002c74:	04010413          	addi	s0,sp,64
    80002c78:	00a4f4b3          	and	s1,s1,a0
    80002c7c:	00f487b3          	add	a5,s1,a5
    80002c80:	06f5e463          	bltu	a1,a5,80002ce8 <freerange+0xa8>
    80002c84:	00003a97          	auipc	s5,0x3
    80002c88:	9aca8a93          	addi	s5,s5,-1620 # 80005630 <end>
    80002c8c:	0954e263          	bltu	s1,s5,80002d10 <freerange+0xd0>
    80002c90:	01100993          	li	s3,17
    80002c94:	01b99993          	slli	s3,s3,0x1b
    80002c98:	0734fc63          	bgeu	s1,s3,80002d10 <freerange+0xd0>
    80002c9c:	00058a13          	mv	s4,a1
    80002ca0:	00001917          	auipc	s2,0x1
    80002ca4:	71090913          	addi	s2,s2,1808 # 800043b0 <kmem>
    80002ca8:	00002b37          	lui	s6,0x2
    80002cac:	0140006f          	j	80002cc0 <freerange+0x80>
    80002cb0:	000017b7          	lui	a5,0x1
    80002cb4:	00f484b3          	add	s1,s1,a5
    80002cb8:	0554ec63          	bltu	s1,s5,80002d10 <freerange+0xd0>
    80002cbc:	0534fa63          	bgeu	s1,s3,80002d10 <freerange+0xd0>
    80002cc0:	00001637          	lui	a2,0x1
    80002cc4:	00100593          	li	a1,1
    80002cc8:	00048513          	mv	a0,s1
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	50c080e7          	jalr	1292(ra) # 800031d8 <__memset>
    80002cd4:	00093703          	ld	a4,0(s2)
    80002cd8:	016487b3          	add	a5,s1,s6
    80002cdc:	00e4b023          	sd	a4,0(s1)
    80002ce0:	00993023          	sd	s1,0(s2)
    80002ce4:	fcfa76e3          	bgeu	s4,a5,80002cb0 <freerange+0x70>
    80002ce8:	03813083          	ld	ra,56(sp)
    80002cec:	03013403          	ld	s0,48(sp)
    80002cf0:	02813483          	ld	s1,40(sp)
    80002cf4:	02013903          	ld	s2,32(sp)
    80002cf8:	01813983          	ld	s3,24(sp)
    80002cfc:	01013a03          	ld	s4,16(sp)
    80002d00:	00813a83          	ld	s5,8(sp)
    80002d04:	00013b03          	ld	s6,0(sp)
    80002d08:	04010113          	addi	sp,sp,64
    80002d0c:	00008067          	ret
    80002d10:	00001517          	auipc	a0,0x1
    80002d14:	48050513          	addi	a0,a0,1152 # 80004190 <digits+0x18>
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	3d4080e7          	jalr	980(ra) # 800020ec <panic>

0000000080002d20 <kfree>:
    80002d20:	fe010113          	addi	sp,sp,-32
    80002d24:	00813823          	sd	s0,16(sp)
    80002d28:	00113c23          	sd	ra,24(sp)
    80002d2c:	00913423          	sd	s1,8(sp)
    80002d30:	02010413          	addi	s0,sp,32
    80002d34:	03451793          	slli	a5,a0,0x34
    80002d38:	04079c63          	bnez	a5,80002d90 <kfree+0x70>
    80002d3c:	00003797          	auipc	a5,0x3
    80002d40:	8f478793          	addi	a5,a5,-1804 # 80005630 <end>
    80002d44:	00050493          	mv	s1,a0
    80002d48:	04f56463          	bltu	a0,a5,80002d90 <kfree+0x70>
    80002d4c:	01100793          	li	a5,17
    80002d50:	01b79793          	slli	a5,a5,0x1b
    80002d54:	02f57e63          	bgeu	a0,a5,80002d90 <kfree+0x70>
    80002d58:	00001637          	lui	a2,0x1
    80002d5c:	00100593          	li	a1,1
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	478080e7          	jalr	1144(ra) # 800031d8 <__memset>
    80002d68:	00001797          	auipc	a5,0x1
    80002d6c:	64878793          	addi	a5,a5,1608 # 800043b0 <kmem>
    80002d70:	0007b703          	ld	a4,0(a5)
    80002d74:	01813083          	ld	ra,24(sp)
    80002d78:	01013403          	ld	s0,16(sp)
    80002d7c:	00e4b023          	sd	a4,0(s1)
    80002d80:	0097b023          	sd	s1,0(a5)
    80002d84:	00813483          	ld	s1,8(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret
    80002d90:	00001517          	auipc	a0,0x1
    80002d94:	40050513          	addi	a0,a0,1024 # 80004190 <digits+0x18>
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	354080e7          	jalr	852(ra) # 800020ec <panic>

0000000080002da0 <kalloc>:
    80002da0:	fe010113          	addi	sp,sp,-32
    80002da4:	00813823          	sd	s0,16(sp)
    80002da8:	00913423          	sd	s1,8(sp)
    80002dac:	00113c23          	sd	ra,24(sp)
    80002db0:	02010413          	addi	s0,sp,32
    80002db4:	00001797          	auipc	a5,0x1
    80002db8:	5fc78793          	addi	a5,a5,1532 # 800043b0 <kmem>
    80002dbc:	0007b483          	ld	s1,0(a5)
    80002dc0:	02048063          	beqz	s1,80002de0 <kalloc+0x40>
    80002dc4:	0004b703          	ld	a4,0(s1)
    80002dc8:	00001637          	lui	a2,0x1
    80002dcc:	00500593          	li	a1,5
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00e7b023          	sd	a4,0(a5)
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	400080e7          	jalr	1024(ra) # 800031d8 <__memset>
    80002de0:	01813083          	ld	ra,24(sp)
    80002de4:	01013403          	ld	s0,16(sp)
    80002de8:	00048513          	mv	a0,s1
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret

0000000080002df8 <initlock>:
    80002df8:	ff010113          	addi	sp,sp,-16
    80002dfc:	00813423          	sd	s0,8(sp)
    80002e00:	01010413          	addi	s0,sp,16
    80002e04:	00813403          	ld	s0,8(sp)
    80002e08:	00b53423          	sd	a1,8(a0)
    80002e0c:	00052023          	sw	zero,0(a0)
    80002e10:	00053823          	sd	zero,16(a0)
    80002e14:	01010113          	addi	sp,sp,16
    80002e18:	00008067          	ret

0000000080002e1c <acquire>:
    80002e1c:	fe010113          	addi	sp,sp,-32
    80002e20:	00813823          	sd	s0,16(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	00113c23          	sd	ra,24(sp)
    80002e2c:	01213023          	sd	s2,0(sp)
    80002e30:	02010413          	addi	s0,sp,32
    80002e34:	00050493          	mv	s1,a0
    80002e38:	10002973          	csrr	s2,sstatus
    80002e3c:	100027f3          	csrr	a5,sstatus
    80002e40:	ffd7f793          	andi	a5,a5,-3
    80002e44:	10079073          	csrw	sstatus,a5
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	8e8080e7          	jalr	-1816(ra) # 80001730 <mycpu>
    80002e50:	07852783          	lw	a5,120(a0)
    80002e54:	06078e63          	beqz	a5,80002ed0 <acquire+0xb4>
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	8d8080e7          	jalr	-1832(ra) # 80001730 <mycpu>
    80002e60:	07852783          	lw	a5,120(a0)
    80002e64:	0004a703          	lw	a4,0(s1)
    80002e68:	0017879b          	addiw	a5,a5,1
    80002e6c:	06f52c23          	sw	a5,120(a0)
    80002e70:	04071063          	bnez	a4,80002eb0 <acquire+0x94>
    80002e74:	00100713          	li	a4,1
    80002e78:	00070793          	mv	a5,a4
    80002e7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002e80:	0007879b          	sext.w	a5,a5
    80002e84:	fe079ae3          	bnez	a5,80002e78 <acquire+0x5c>
    80002e88:	0ff0000f          	fence
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	8a4080e7          	jalr	-1884(ra) # 80001730 <mycpu>
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00a4b823          	sd	a0,16(s1)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	00813483          	ld	s1,8(sp)
    80002ea8:	02010113          	addi	sp,sp,32
    80002eac:	00008067          	ret
    80002eb0:	0104b903          	ld	s2,16(s1)
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	87c080e7          	jalr	-1924(ra) # 80001730 <mycpu>
    80002ebc:	faa91ce3          	bne	s2,a0,80002e74 <acquire+0x58>
    80002ec0:	00001517          	auipc	a0,0x1
    80002ec4:	2d850513          	addi	a0,a0,728 # 80004198 <digits+0x20>
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	224080e7          	jalr	548(ra) # 800020ec <panic>
    80002ed0:	00195913          	srli	s2,s2,0x1
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	85c080e7          	jalr	-1956(ra) # 80001730 <mycpu>
    80002edc:	00197913          	andi	s2,s2,1
    80002ee0:	07252e23          	sw	s2,124(a0)
    80002ee4:	f75ff06f          	j	80002e58 <acquire+0x3c>

0000000080002ee8 <release>:
    80002ee8:	fe010113          	addi	sp,sp,-32
    80002eec:	00813823          	sd	s0,16(sp)
    80002ef0:	00113c23          	sd	ra,24(sp)
    80002ef4:	00913423          	sd	s1,8(sp)
    80002ef8:	01213023          	sd	s2,0(sp)
    80002efc:	02010413          	addi	s0,sp,32
    80002f00:	00052783          	lw	a5,0(a0)
    80002f04:	00079a63          	bnez	a5,80002f18 <release+0x30>
    80002f08:	00001517          	auipc	a0,0x1
    80002f0c:	29850513          	addi	a0,a0,664 # 800041a0 <digits+0x28>
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	1dc080e7          	jalr	476(ra) # 800020ec <panic>
    80002f18:	01053903          	ld	s2,16(a0)
    80002f1c:	00050493          	mv	s1,a0
    80002f20:	fffff097          	auipc	ra,0xfffff
    80002f24:	810080e7          	jalr	-2032(ra) # 80001730 <mycpu>
    80002f28:	fea910e3          	bne	s2,a0,80002f08 <release+0x20>
    80002f2c:	0004b823          	sd	zero,16(s1)
    80002f30:	0ff0000f          	fence
    80002f34:	0f50000f          	fence	iorw,ow
    80002f38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	7f4080e7          	jalr	2036(ra) # 80001730 <mycpu>
    80002f44:	100027f3          	csrr	a5,sstatus
    80002f48:	0027f793          	andi	a5,a5,2
    80002f4c:	04079a63          	bnez	a5,80002fa0 <release+0xb8>
    80002f50:	07852783          	lw	a5,120(a0)
    80002f54:	02f05e63          	blez	a5,80002f90 <release+0xa8>
    80002f58:	fff7871b          	addiw	a4,a5,-1
    80002f5c:	06e52c23          	sw	a4,120(a0)
    80002f60:	00071c63          	bnez	a4,80002f78 <release+0x90>
    80002f64:	07c52783          	lw	a5,124(a0)
    80002f68:	00078863          	beqz	a5,80002f78 <release+0x90>
    80002f6c:	100027f3          	csrr	a5,sstatus
    80002f70:	0027e793          	ori	a5,a5,2
    80002f74:	10079073          	csrw	sstatus,a5
    80002f78:	01813083          	ld	ra,24(sp)
    80002f7c:	01013403          	ld	s0,16(sp)
    80002f80:	00813483          	ld	s1,8(sp)
    80002f84:	00013903          	ld	s2,0(sp)
    80002f88:	02010113          	addi	sp,sp,32
    80002f8c:	00008067          	ret
    80002f90:	00001517          	auipc	a0,0x1
    80002f94:	23050513          	addi	a0,a0,560 # 800041c0 <digits+0x48>
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	154080e7          	jalr	340(ra) # 800020ec <panic>
    80002fa0:	00001517          	auipc	a0,0x1
    80002fa4:	20850513          	addi	a0,a0,520 # 800041a8 <digits+0x30>
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	144080e7          	jalr	324(ra) # 800020ec <panic>

0000000080002fb0 <holding>:
    80002fb0:	00052783          	lw	a5,0(a0)
    80002fb4:	00079663          	bnez	a5,80002fc0 <holding+0x10>
    80002fb8:	00000513          	li	a0,0
    80002fbc:	00008067          	ret
    80002fc0:	fe010113          	addi	sp,sp,-32
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	00113c23          	sd	ra,24(sp)
    80002fd0:	02010413          	addi	s0,sp,32
    80002fd4:	01053483          	ld	s1,16(a0)
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	758080e7          	jalr	1880(ra) # 80001730 <mycpu>
    80002fe0:	01813083          	ld	ra,24(sp)
    80002fe4:	01013403          	ld	s0,16(sp)
    80002fe8:	40a48533          	sub	a0,s1,a0
    80002fec:	00153513          	seqz	a0,a0
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret

0000000080002ffc <push_off>:
    80002ffc:	fe010113          	addi	sp,sp,-32
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00113c23          	sd	ra,24(sp)
    80003008:	00913423          	sd	s1,8(sp)
    8000300c:	02010413          	addi	s0,sp,32
    80003010:	100024f3          	csrr	s1,sstatus
    80003014:	100027f3          	csrr	a5,sstatus
    80003018:	ffd7f793          	andi	a5,a5,-3
    8000301c:	10079073          	csrw	sstatus,a5
    80003020:	ffffe097          	auipc	ra,0xffffe
    80003024:	710080e7          	jalr	1808(ra) # 80001730 <mycpu>
    80003028:	07852783          	lw	a5,120(a0)
    8000302c:	02078663          	beqz	a5,80003058 <push_off+0x5c>
    80003030:	ffffe097          	auipc	ra,0xffffe
    80003034:	700080e7          	jalr	1792(ra) # 80001730 <mycpu>
    80003038:	07852783          	lw	a5,120(a0)
    8000303c:	01813083          	ld	ra,24(sp)
    80003040:	01013403          	ld	s0,16(sp)
    80003044:	0017879b          	addiw	a5,a5,1
    80003048:	06f52c23          	sw	a5,120(a0)
    8000304c:	00813483          	ld	s1,8(sp)
    80003050:	02010113          	addi	sp,sp,32
    80003054:	00008067          	ret
    80003058:	0014d493          	srli	s1,s1,0x1
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	6d4080e7          	jalr	1748(ra) # 80001730 <mycpu>
    80003064:	0014f493          	andi	s1,s1,1
    80003068:	06952e23          	sw	s1,124(a0)
    8000306c:	fc5ff06f          	j	80003030 <push_off+0x34>

0000000080003070 <pop_off>:
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00813023          	sd	s0,0(sp)
    80003078:	00113423          	sd	ra,8(sp)
    8000307c:	01010413          	addi	s0,sp,16
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	6b0080e7          	jalr	1712(ra) # 80001730 <mycpu>
    80003088:	100027f3          	csrr	a5,sstatus
    8000308c:	0027f793          	andi	a5,a5,2
    80003090:	04079663          	bnez	a5,800030dc <pop_off+0x6c>
    80003094:	07852783          	lw	a5,120(a0)
    80003098:	02f05a63          	blez	a5,800030cc <pop_off+0x5c>
    8000309c:	fff7871b          	addiw	a4,a5,-1
    800030a0:	06e52c23          	sw	a4,120(a0)
    800030a4:	00071c63          	bnez	a4,800030bc <pop_off+0x4c>
    800030a8:	07c52783          	lw	a5,124(a0)
    800030ac:	00078863          	beqz	a5,800030bc <pop_off+0x4c>
    800030b0:	100027f3          	csrr	a5,sstatus
    800030b4:	0027e793          	ori	a5,a5,2
    800030b8:	10079073          	csrw	sstatus,a5
    800030bc:	00813083          	ld	ra,8(sp)
    800030c0:	00013403          	ld	s0,0(sp)
    800030c4:	01010113          	addi	sp,sp,16
    800030c8:	00008067          	ret
    800030cc:	00001517          	auipc	a0,0x1
    800030d0:	0f450513          	addi	a0,a0,244 # 800041c0 <digits+0x48>
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	018080e7          	jalr	24(ra) # 800020ec <panic>
    800030dc:	00001517          	auipc	a0,0x1
    800030e0:	0cc50513          	addi	a0,a0,204 # 800041a8 <digits+0x30>
    800030e4:	fffff097          	auipc	ra,0xfffff
    800030e8:	008080e7          	jalr	8(ra) # 800020ec <panic>

00000000800030ec <push_on>:
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00813823          	sd	s0,16(sp)
    800030f4:	00113c23          	sd	ra,24(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	02010413          	addi	s0,sp,32
    80003100:	100024f3          	csrr	s1,sstatus
    80003104:	100027f3          	csrr	a5,sstatus
    80003108:	0027e793          	ori	a5,a5,2
    8000310c:	10079073          	csrw	sstatus,a5
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	620080e7          	jalr	1568(ra) # 80001730 <mycpu>
    80003118:	07852783          	lw	a5,120(a0)
    8000311c:	02078663          	beqz	a5,80003148 <push_on+0x5c>
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	610080e7          	jalr	1552(ra) # 80001730 <mycpu>
    80003128:	07852783          	lw	a5,120(a0)
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	01013403          	ld	s0,16(sp)
    80003134:	0017879b          	addiw	a5,a5,1
    80003138:	06f52c23          	sw	a5,120(a0)
    8000313c:	00813483          	ld	s1,8(sp)
    80003140:	02010113          	addi	sp,sp,32
    80003144:	00008067          	ret
    80003148:	0014d493          	srli	s1,s1,0x1
    8000314c:	ffffe097          	auipc	ra,0xffffe
    80003150:	5e4080e7          	jalr	1508(ra) # 80001730 <mycpu>
    80003154:	0014f493          	andi	s1,s1,1
    80003158:	06952e23          	sw	s1,124(a0)
    8000315c:	fc5ff06f          	j	80003120 <push_on+0x34>

0000000080003160 <pop_on>:
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00813023          	sd	s0,0(sp)
    80003168:	00113423          	sd	ra,8(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	5c0080e7          	jalr	1472(ra) # 80001730 <mycpu>
    80003178:	100027f3          	csrr	a5,sstatus
    8000317c:	0027f793          	andi	a5,a5,2
    80003180:	04078463          	beqz	a5,800031c8 <pop_on+0x68>
    80003184:	07852783          	lw	a5,120(a0)
    80003188:	02f05863          	blez	a5,800031b8 <pop_on+0x58>
    8000318c:	fff7879b          	addiw	a5,a5,-1
    80003190:	06f52c23          	sw	a5,120(a0)
    80003194:	07853783          	ld	a5,120(a0)
    80003198:	00079863          	bnez	a5,800031a8 <pop_on+0x48>
    8000319c:	100027f3          	csrr	a5,sstatus
    800031a0:	ffd7f793          	andi	a5,a5,-3
    800031a4:	10079073          	csrw	sstatus,a5
    800031a8:	00813083          	ld	ra,8(sp)
    800031ac:	00013403          	ld	s0,0(sp)
    800031b0:	01010113          	addi	sp,sp,16
    800031b4:	00008067          	ret
    800031b8:	00001517          	auipc	a0,0x1
    800031bc:	03050513          	addi	a0,a0,48 # 800041e8 <digits+0x70>
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	f2c080e7          	jalr	-212(ra) # 800020ec <panic>
    800031c8:	00001517          	auipc	a0,0x1
    800031cc:	00050513          	mv	a0,a0
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	f1c080e7          	jalr	-228(ra) # 800020ec <panic>

00000000800031d8 <__memset>:
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00813423          	sd	s0,8(sp)
    800031e0:	01010413          	addi	s0,sp,16
    800031e4:	1a060e63          	beqz	a2,800033a0 <__memset+0x1c8>
    800031e8:	40a007b3          	neg	a5,a0
    800031ec:	0077f793          	andi	a5,a5,7
    800031f0:	00778693          	addi	a3,a5,7
    800031f4:	00b00813          	li	a6,11
    800031f8:	0ff5f593          	andi	a1,a1,255
    800031fc:	fff6071b          	addiw	a4,a2,-1
    80003200:	1b06e663          	bltu	a3,a6,800033ac <__memset+0x1d4>
    80003204:	1cd76463          	bltu	a4,a3,800033cc <__memset+0x1f4>
    80003208:	1a078e63          	beqz	a5,800033c4 <__memset+0x1ec>
    8000320c:	00b50023          	sb	a1,0(a0) # 800041c8 <digits+0x50>
    80003210:	00100713          	li	a4,1
    80003214:	1ae78463          	beq	a5,a4,800033bc <__memset+0x1e4>
    80003218:	00b500a3          	sb	a1,1(a0)
    8000321c:	00200713          	li	a4,2
    80003220:	1ae78a63          	beq	a5,a4,800033d4 <__memset+0x1fc>
    80003224:	00b50123          	sb	a1,2(a0)
    80003228:	00300713          	li	a4,3
    8000322c:	18e78463          	beq	a5,a4,800033b4 <__memset+0x1dc>
    80003230:	00b501a3          	sb	a1,3(a0)
    80003234:	00400713          	li	a4,4
    80003238:	1ae78263          	beq	a5,a4,800033dc <__memset+0x204>
    8000323c:	00b50223          	sb	a1,4(a0)
    80003240:	00500713          	li	a4,5
    80003244:	1ae78063          	beq	a5,a4,800033e4 <__memset+0x20c>
    80003248:	00b502a3          	sb	a1,5(a0)
    8000324c:	00700713          	li	a4,7
    80003250:	18e79e63          	bne	a5,a4,800033ec <__memset+0x214>
    80003254:	00b50323          	sb	a1,6(a0)
    80003258:	00700e93          	li	t4,7
    8000325c:	00859713          	slli	a4,a1,0x8
    80003260:	00e5e733          	or	a4,a1,a4
    80003264:	01059e13          	slli	t3,a1,0x10
    80003268:	01c76e33          	or	t3,a4,t3
    8000326c:	01859313          	slli	t1,a1,0x18
    80003270:	006e6333          	or	t1,t3,t1
    80003274:	02059893          	slli	a7,a1,0x20
    80003278:	40f60e3b          	subw	t3,a2,a5
    8000327c:	011368b3          	or	a7,t1,a7
    80003280:	02859813          	slli	a6,a1,0x28
    80003284:	0108e833          	or	a6,a7,a6
    80003288:	03059693          	slli	a3,a1,0x30
    8000328c:	003e589b          	srliw	a7,t3,0x3
    80003290:	00d866b3          	or	a3,a6,a3
    80003294:	03859713          	slli	a4,a1,0x38
    80003298:	00389813          	slli	a6,a7,0x3
    8000329c:	00f507b3          	add	a5,a0,a5
    800032a0:	00e6e733          	or	a4,a3,a4
    800032a4:	000e089b          	sext.w	a7,t3
    800032a8:	00f806b3          	add	a3,a6,a5
    800032ac:	00e7b023          	sd	a4,0(a5)
    800032b0:	00878793          	addi	a5,a5,8
    800032b4:	fed79ce3          	bne	a5,a3,800032ac <__memset+0xd4>
    800032b8:	ff8e7793          	andi	a5,t3,-8
    800032bc:	0007871b          	sext.w	a4,a5
    800032c0:	01d787bb          	addw	a5,a5,t4
    800032c4:	0ce88e63          	beq	a7,a4,800033a0 <__memset+0x1c8>
    800032c8:	00f50733          	add	a4,a0,a5
    800032cc:	00b70023          	sb	a1,0(a4)
    800032d0:	0017871b          	addiw	a4,a5,1
    800032d4:	0cc77663          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    800032d8:	00e50733          	add	a4,a0,a4
    800032dc:	00b70023          	sb	a1,0(a4)
    800032e0:	0027871b          	addiw	a4,a5,2
    800032e4:	0ac77e63          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    800032e8:	00e50733          	add	a4,a0,a4
    800032ec:	00b70023          	sb	a1,0(a4)
    800032f0:	0037871b          	addiw	a4,a5,3
    800032f4:	0ac77663          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    800032f8:	00e50733          	add	a4,a0,a4
    800032fc:	00b70023          	sb	a1,0(a4)
    80003300:	0047871b          	addiw	a4,a5,4
    80003304:	08c77e63          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003308:	00e50733          	add	a4,a0,a4
    8000330c:	00b70023          	sb	a1,0(a4)
    80003310:	0057871b          	addiw	a4,a5,5
    80003314:	08c77663          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003318:	00e50733          	add	a4,a0,a4
    8000331c:	00b70023          	sb	a1,0(a4)
    80003320:	0067871b          	addiw	a4,a5,6
    80003324:	06c77e63          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003328:	00e50733          	add	a4,a0,a4
    8000332c:	00b70023          	sb	a1,0(a4)
    80003330:	0077871b          	addiw	a4,a5,7
    80003334:	06c77663          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003338:	00e50733          	add	a4,a0,a4
    8000333c:	00b70023          	sb	a1,0(a4)
    80003340:	0087871b          	addiw	a4,a5,8
    80003344:	04c77e63          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003348:	00e50733          	add	a4,a0,a4
    8000334c:	00b70023          	sb	a1,0(a4)
    80003350:	0097871b          	addiw	a4,a5,9
    80003354:	04c77663          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003358:	00e50733          	add	a4,a0,a4
    8000335c:	00b70023          	sb	a1,0(a4)
    80003360:	00a7871b          	addiw	a4,a5,10
    80003364:	02c77e63          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003368:	00e50733          	add	a4,a0,a4
    8000336c:	00b70023          	sb	a1,0(a4)
    80003370:	00b7871b          	addiw	a4,a5,11
    80003374:	02c77663          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003378:	00e50733          	add	a4,a0,a4
    8000337c:	00b70023          	sb	a1,0(a4)
    80003380:	00c7871b          	addiw	a4,a5,12
    80003384:	00c77e63          	bgeu	a4,a2,800033a0 <__memset+0x1c8>
    80003388:	00e50733          	add	a4,a0,a4
    8000338c:	00b70023          	sb	a1,0(a4)
    80003390:	00d7879b          	addiw	a5,a5,13
    80003394:	00c7f663          	bgeu	a5,a2,800033a0 <__memset+0x1c8>
    80003398:	00f507b3          	add	a5,a0,a5
    8000339c:	00b78023          	sb	a1,0(a5)
    800033a0:	00813403          	ld	s0,8(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret
    800033ac:	00b00693          	li	a3,11
    800033b0:	e55ff06f          	j	80003204 <__memset+0x2c>
    800033b4:	00300e93          	li	t4,3
    800033b8:	ea5ff06f          	j	8000325c <__memset+0x84>
    800033bc:	00100e93          	li	t4,1
    800033c0:	e9dff06f          	j	8000325c <__memset+0x84>
    800033c4:	00000e93          	li	t4,0
    800033c8:	e95ff06f          	j	8000325c <__memset+0x84>
    800033cc:	00000793          	li	a5,0
    800033d0:	ef9ff06f          	j	800032c8 <__memset+0xf0>
    800033d4:	00200e93          	li	t4,2
    800033d8:	e85ff06f          	j	8000325c <__memset+0x84>
    800033dc:	00400e93          	li	t4,4
    800033e0:	e7dff06f          	j	8000325c <__memset+0x84>
    800033e4:	00500e93          	li	t4,5
    800033e8:	e75ff06f          	j	8000325c <__memset+0x84>
    800033ec:	00600e93          	li	t4,6
    800033f0:	e6dff06f          	j	8000325c <__memset+0x84>

00000000800033f4 <__memmove>:
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	0e060863          	beqz	a2,800034f0 <__memmove+0xfc>
    80003404:	fff6069b          	addiw	a3,a2,-1
    80003408:	0006881b          	sext.w	a6,a3
    8000340c:	0ea5e863          	bltu	a1,a0,800034fc <__memmove+0x108>
    80003410:	00758713          	addi	a4,a1,7
    80003414:	00a5e7b3          	or	a5,a1,a0
    80003418:	40a70733          	sub	a4,a4,a0
    8000341c:	0077f793          	andi	a5,a5,7
    80003420:	00f73713          	sltiu	a4,a4,15
    80003424:	00174713          	xori	a4,a4,1
    80003428:	0017b793          	seqz	a5,a5
    8000342c:	00e7f7b3          	and	a5,a5,a4
    80003430:	10078863          	beqz	a5,80003540 <__memmove+0x14c>
    80003434:	00900793          	li	a5,9
    80003438:	1107f463          	bgeu	a5,a6,80003540 <__memmove+0x14c>
    8000343c:	0036581b          	srliw	a6,a2,0x3
    80003440:	fff8081b          	addiw	a6,a6,-1
    80003444:	02081813          	slli	a6,a6,0x20
    80003448:	01d85893          	srli	a7,a6,0x1d
    8000344c:	00858813          	addi	a6,a1,8
    80003450:	00058793          	mv	a5,a1
    80003454:	00050713          	mv	a4,a0
    80003458:	01088833          	add	a6,a7,a6
    8000345c:	0007b883          	ld	a7,0(a5)
    80003460:	00878793          	addi	a5,a5,8
    80003464:	00870713          	addi	a4,a4,8
    80003468:	ff173c23          	sd	a7,-8(a4)
    8000346c:	ff0798e3          	bne	a5,a6,8000345c <__memmove+0x68>
    80003470:	ff867713          	andi	a4,a2,-8
    80003474:	02071793          	slli	a5,a4,0x20
    80003478:	0207d793          	srli	a5,a5,0x20
    8000347c:	00f585b3          	add	a1,a1,a5
    80003480:	40e686bb          	subw	a3,a3,a4
    80003484:	00f507b3          	add	a5,a0,a5
    80003488:	06e60463          	beq	a2,a4,800034f0 <__memmove+0xfc>
    8000348c:	0005c703          	lbu	a4,0(a1)
    80003490:	00e78023          	sb	a4,0(a5)
    80003494:	04068e63          	beqz	a3,800034f0 <__memmove+0xfc>
    80003498:	0015c603          	lbu	a2,1(a1)
    8000349c:	00100713          	li	a4,1
    800034a0:	00c780a3          	sb	a2,1(a5)
    800034a4:	04e68663          	beq	a3,a4,800034f0 <__memmove+0xfc>
    800034a8:	0025c603          	lbu	a2,2(a1)
    800034ac:	00200713          	li	a4,2
    800034b0:	00c78123          	sb	a2,2(a5)
    800034b4:	02e68e63          	beq	a3,a4,800034f0 <__memmove+0xfc>
    800034b8:	0035c603          	lbu	a2,3(a1)
    800034bc:	00300713          	li	a4,3
    800034c0:	00c781a3          	sb	a2,3(a5)
    800034c4:	02e68663          	beq	a3,a4,800034f0 <__memmove+0xfc>
    800034c8:	0045c603          	lbu	a2,4(a1)
    800034cc:	00400713          	li	a4,4
    800034d0:	00c78223          	sb	a2,4(a5)
    800034d4:	00e68e63          	beq	a3,a4,800034f0 <__memmove+0xfc>
    800034d8:	0055c603          	lbu	a2,5(a1)
    800034dc:	00500713          	li	a4,5
    800034e0:	00c782a3          	sb	a2,5(a5)
    800034e4:	00e68663          	beq	a3,a4,800034f0 <__memmove+0xfc>
    800034e8:	0065c703          	lbu	a4,6(a1)
    800034ec:	00e78323          	sb	a4,6(a5)
    800034f0:	00813403          	ld	s0,8(sp)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret
    800034fc:	02061713          	slli	a4,a2,0x20
    80003500:	02075713          	srli	a4,a4,0x20
    80003504:	00e587b3          	add	a5,a1,a4
    80003508:	f0f574e3          	bgeu	a0,a5,80003410 <__memmove+0x1c>
    8000350c:	02069613          	slli	a2,a3,0x20
    80003510:	02065613          	srli	a2,a2,0x20
    80003514:	fff64613          	not	a2,a2
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00c78633          	add	a2,a5,a2
    80003520:	fff7c683          	lbu	a3,-1(a5)
    80003524:	fff78793          	addi	a5,a5,-1
    80003528:	fff70713          	addi	a4,a4,-1
    8000352c:	00d70023          	sb	a3,0(a4)
    80003530:	fec798e3          	bne	a5,a2,80003520 <__memmove+0x12c>
    80003534:	00813403          	ld	s0,8(sp)
    80003538:	01010113          	addi	sp,sp,16
    8000353c:	00008067          	ret
    80003540:	02069713          	slli	a4,a3,0x20
    80003544:	02075713          	srli	a4,a4,0x20
    80003548:	00170713          	addi	a4,a4,1
    8000354c:	00e50733          	add	a4,a0,a4
    80003550:	00050793          	mv	a5,a0
    80003554:	0005c683          	lbu	a3,0(a1)
    80003558:	00178793          	addi	a5,a5,1
    8000355c:	00158593          	addi	a1,a1,1
    80003560:	fed78fa3          	sb	a3,-1(a5)
    80003564:	fee798e3          	bne	a5,a4,80003554 <__memmove+0x160>
    80003568:	f89ff06f          	j	800034f0 <__memmove+0xfc>

000000008000356c <__putc>:
    8000356c:	fe010113          	addi	sp,sp,-32
    80003570:	00813823          	sd	s0,16(sp)
    80003574:	00113c23          	sd	ra,24(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00050793          	mv	a5,a0
    80003580:	fef40593          	addi	a1,s0,-17
    80003584:	00100613          	li	a2,1
    80003588:	00000513          	li	a0,0
    8000358c:	fef407a3          	sb	a5,-17(s0)
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	b3c080e7          	jalr	-1220(ra) # 800020cc <console_write>
    80003598:	01813083          	ld	ra,24(sp)
    8000359c:	01013403          	ld	s0,16(sp)
    800035a0:	02010113          	addi	sp,sp,32
    800035a4:	00008067          	ret

00000000800035a8 <__getc>:
    800035a8:	fe010113          	addi	sp,sp,-32
    800035ac:	00813823          	sd	s0,16(sp)
    800035b0:	00113c23          	sd	ra,24(sp)
    800035b4:	02010413          	addi	s0,sp,32
    800035b8:	fe840593          	addi	a1,s0,-24
    800035bc:	00100613          	li	a2,1
    800035c0:	00000513          	li	a0,0
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	ae8080e7          	jalr	-1304(ra) # 800020ac <console_read>
    800035cc:	fe844503          	lbu	a0,-24(s0)
    800035d0:	01813083          	ld	ra,24(sp)
    800035d4:	01013403          	ld	s0,16(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret

00000000800035e0 <console_handler>:
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00813823          	sd	s0,16(sp)
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	00913423          	sd	s1,8(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	14202773          	csrr	a4,scause
    800035f8:	100027f3          	csrr	a5,sstatus
    800035fc:	0027f793          	andi	a5,a5,2
    80003600:	06079e63          	bnez	a5,8000367c <console_handler+0x9c>
    80003604:	00074c63          	bltz	a4,8000361c <console_handler+0x3c>
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	02010113          	addi	sp,sp,32
    80003618:	00008067          	ret
    8000361c:	0ff77713          	andi	a4,a4,255
    80003620:	00900793          	li	a5,9
    80003624:	fef712e3          	bne	a4,a5,80003608 <console_handler+0x28>
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	6dc080e7          	jalr	1756(ra) # 80001d04 <plic_claim>
    80003630:	00a00793          	li	a5,10
    80003634:	00050493          	mv	s1,a0
    80003638:	02f50c63          	beq	a0,a5,80003670 <console_handler+0x90>
    8000363c:	fc0506e3          	beqz	a0,80003608 <console_handler+0x28>
    80003640:	00050593          	mv	a1,a0
    80003644:	00001517          	auipc	a0,0x1
    80003648:	aac50513          	addi	a0,a0,-1364 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000364c:	fffff097          	auipc	ra,0xfffff
    80003650:	afc080e7          	jalr	-1284(ra) # 80002148 <__printf>
    80003654:	01013403          	ld	s0,16(sp)
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	00048513          	mv	a0,s1
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	ffffe317          	auipc	t1,0xffffe
    8000366c:	6d430067          	jr	1748(t1) # 80001d3c <plic_complete>
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	3e0080e7          	jalr	992(ra) # 80002a50 <uartintr>
    80003678:	fddff06f          	j	80003654 <console_handler+0x74>
    8000367c:	00001517          	auipc	a0,0x1
    80003680:	b7450513          	addi	a0,a0,-1164 # 800041f0 <digits+0x78>
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	a68080e7          	jalr	-1432(ra) # 800020ec <panic>
	...
