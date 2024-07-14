
program2:     file format elf64-x86-64


Disassembly of section .interp:

00000000004002a8 <.interp>:
  4002a8:	2f                   	(bad)  
  4002a9:	6c                   	ins    BYTE PTR es:[rdi],dx
  4002aa:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  4002b1:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  4002b6:	78 2d                	js     4002e5 <_init-0xd1b>
  4002b8:	78 38                	js     4002f2 <_init-0xd0e>
  4002ba:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
  4002c0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4002c1:	2e 32 00             	cs xor al,BYTE PTR [rax]

Disassembly of section .note.ABI-tag:

00000000004002c4 <.note.ABI-tag>:
  4002c4:	04 00                	add    al,0x0
  4002c6:	00 00                	add    BYTE PTR [rax],al
  4002c8:	10 00                	adc    BYTE PTR [rax],al
  4002ca:	00 00                	add    BYTE PTR [rax],al
  4002cc:	01 00                	add    DWORD PTR [rax],eax
  4002ce:	00 00                	add    BYTE PTR [rax],al
  4002d0:	47                   	rex.RXB
  4002d1:	4e 55                	rex.WRX push rbp
  4002d3:	00 00                	add    BYTE PTR [rax],al
  4002d5:	00 00                	add    BYTE PTR [rax],al
  4002d7:	00 03                	add    BYTE PTR [rbx],al
  4002d9:	00 00                	add    BYTE PTR [rax],al
  4002db:	00 02                	add    BYTE PTR [rdx],al
  4002dd:	00 00                	add    BYTE PTR [rax],al
  4002df:	00 00                	add    BYTE PTR [rax],al
  4002e1:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .hash:

00000000004002e8 <.hash>:
  4002e8:	03 00                	add    eax,DWORD PTR [rax]
  4002ea:	00 00                	add    BYTE PTR [rax],al
  4002ec:	05 00 00 00 04       	add    eax,0x4000000
  4002f1:	00 00                	add    BYTE PTR [rax],al
  4002f3:	00 02                	add    BYTE PTR [rdx],al
  4002f5:	00 00                	add    BYTE PTR [rax],al
  4002f7:	00 01                	add    BYTE PTR [rcx],al
	...
  400309:	00 00                	add    BYTE PTR [rax],al
  40030b:	00 03                	add    BYTE PTR [rbx],al
  40030d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gnu.hash:

0000000000400310 <.gnu.hash>:
  400310:	01 00                	add    DWORD PTR [rax],eax
  400312:	00 00                	add    BYTE PTR [rax],al
  400314:	01 00                	add    DWORD PTR [rax],eax
  400316:	00 00                	add    BYTE PTR [rax],al
  400318:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .dynsym:

0000000000400330 <.dynsym>:
	...
  400348:	1a 00                	sbb    al,BYTE PTR [rax]
  40034a:	00 00                	add    BYTE PTR [rax],al
  40034c:	12 00                	adc    al,BYTE PTR [rax]
	...
  40035e:	00 00                	add    BYTE PTR [rax],al
  400360:	21 00                	and    DWORD PTR [rax],eax
  400362:	00 00                	add    BYTE PTR [rax],al
  400364:	12 00                	adc    al,BYTE PTR [rax]
	...
  400376:	00 00                	add    BYTE PTR [rax],al
  400378:	49 00 00             	rex.WB add BYTE PTR [r8],al
  40037b:	00 20                	add    BYTE PTR [rax],ah
	...
  40038d:	00 00                	add    BYTE PTR [rax],al
  40038f:	00 0b                	add    BYTE PTR [rbx],cl
  400391:	00 00                	add    BYTE PTR [rax],al
  400393:	00 12                	add    BYTE PTR [rdx],dl
	...

Disassembly of section .dynstr:

00000000004003a8 <.dynstr>:
  4003a8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  4003ac:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4003ae:	73 6f                	jae    40041f <_init-0xbe1>
  4003b0:	2e 36 00 5f 5f       	cs ss add BYTE PTR [rdi+0x5f],bl
  4003b5:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [rbx+0x6f],0x5f393963
  4003bc:	73 63                	jae    400421 <_init-0xbdf>
  4003be:	61                   	(bad)  
  4003bf:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4003c0:	66 00 70 72          	data16 add BYTE PTR [rax+0x72],dh
  4003c4:	69 6e 74 66 00 5f 5f 	imul   ebp,DWORD PTR [rsi+0x74],0x5f5f0066
  4003cb:	6c                   	ins    BYTE PTR es:[rdi],dx
  4003cc:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4003d3:	72 74                	jb     400449 <_init-0xbb7>
  4003d5:	5f                   	pop    rdi
  4003d6:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003d7:	61                   	(bad)  
  4003d8:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
  4003df:	43 5f                	rex.XB pop r15
  4003e1:	32 2e                	xor    ch,BYTE PTR [rsi]
  4003e3:	37                   	(bad)  
  4003e4:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
  4003e7:	49                   	rex.WB
  4003e8:	42                   	rex.X
  4003e9:	43 5f                	rex.XB pop r15
  4003eb:	32 2e                	xor    ch,BYTE PTR [rsi]
  4003ed:	32 2e                	xor    ch,BYTE PTR [rsi]
  4003ef:	35 00 5f 5f 67       	xor    eax,0x675f5f00
  4003f4:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003f5:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4003f6:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4003f7:	5f                   	pop    rdi
  4003f8:	73 74                	jae    40046e <_init-0xb92>
  4003fa:	61                   	(bad)  
  4003fb:	72 74                	jb     400471 <_init-0xb8f>
  4003fd:	5f                   	pop    rdi
  4003fe:	5f                   	pop    rdi
	...

Disassembly of section .gnu.version:

0000000000400400 <.gnu.version>:
  400400:	00 00                	add    BYTE PTR [rax],al
  400402:	02 00                	add    al,BYTE PTR [rax]
  400404:	02 00                	add    al,BYTE PTR [rax]
  400406:	00 00                	add    BYTE PTR [rax],al
  400408:	03 00                	add    eax,DWORD PTR [rax]

Disassembly of section .gnu.version_r:

0000000000400410 <.gnu.version_r>:
  400410:	01 00                	add    DWORD PTR [rax],eax
  400412:	02 00                	add    al,BYTE PTR [rax]
  400414:	01 00                	add    DWORD PTR [rax],eax
  400416:	00 00                	add    BYTE PTR [rax],al
  400418:	10 00                	adc    BYTE PTR [rax],al
  40041a:	00 00                	add    BYTE PTR [rax],al
  40041c:	00 00                	add    BYTE PTR [rax],al
  40041e:	00 00                	add    BYTE PTR [rax],al
  400420:	17                   	(bad)  
  400421:	69 69 0d 00 00 03 00 	imul   ebp,DWORD PTR [rcx+0xd],0x30000
  400428:	33 00                	xor    eax,DWORD PTR [rax]
  40042a:	00 00                	add    BYTE PTR [rax],al
  40042c:	10 00                	adc    BYTE PTR [rax],al
  40042e:	00 00                	add    BYTE PTR [rax],al
  400430:	75 1a                	jne    40044c <_init-0xbb4>
  400432:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400438:	3d 00 00 00 00       	cmp    eax,0x0
  40043d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400440 <.rela.dyn>:
  400440:	f0 3f                	lock (bad) 
  400442:	40 00 00             	rex add BYTE PTR [rax],al
  400445:	00 00                	add    BYTE PTR [rax],al
  400447:	00 06                	add    BYTE PTR [rsi],al
  400449:	00 00                	add    BYTE PTR [rax],al
  40044b:	00 02                	add    BYTE PTR [rdx],al
	...
  400455:	00 00                	add    BYTE PTR [rax],al
  400457:	00 f8                	add    al,bh
  400459:	3f                   	(bad)  
  40045a:	40 00 00             	rex add BYTE PTR [rax],al
  40045d:	00 00                	add    BYTE PTR [rax],al
  40045f:	00 06                	add    BYTE PTR [rsi],al
  400461:	00 00                	add    BYTE PTR [rax],al
  400463:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .rela.plt:

0000000000400470 <.rela.plt>:
  400470:	18 40 40             	sbb    BYTE PTR [rax+0x40],al
  400473:	00 00                	add    BYTE PTR [rax],al
  400475:	00 00                	add    BYTE PTR [rax],al
  400477:	00 07                	add    BYTE PTR [rdi],al
  400479:	00 00                	add    BYTE PTR [rax],al
  40047b:	00 01                	add    BYTE PTR [rcx],al
	...
  400485:	00 00                	add    BYTE PTR [rax],al
  400487:	00 20                	add    BYTE PTR [rax],ah
  400489:	40                   	rex
  40048a:	40 00 00             	rex add BYTE PTR [rax],al
  40048d:	00 00                	add    BYTE PTR [rax],al
  40048f:	00 07                	add    BYTE PTR [rdi],al
  400491:	00 00                	add    BYTE PTR [rax],al
  400493:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...

Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe9]        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <printf@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <printf@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <__isoc99_scanf@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <__isoc99_scanf@GLIBC_2.7>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

Disassembly of section .text:

0000000000401050 <_start>:
  401050:	f3 0f 1e fa          	endbr64 
  401054:	31 ed                	xor    ebp,ebp
  401056:	49 89 d1             	mov    r9,rdx
  401059:	5e                   	pop    rsi
  40105a:	48 89 e2             	mov    rdx,rsp
  40105d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401061:	50                   	push   rax
  401062:	54                   	push   rsp
  401063:	49 c7 c0 70 12 40 00 	mov    r8,0x401270
  40106a:	48 c7 c1 00 12 40 00 	mov    rcx,0x401200
  401071:	48 c7 c7 a7 11 40 00 	mov    rdi,0x4011a7
  401078:	ff 15 72 2f 00 00    	call   QWORD PTR [rip+0x2f72]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40107e:	f4                   	hlt    
  40107f:	90                   	nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	c3                   	ret    
  401085:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40108c:	00 00 00 
  40108f:	90                   	nop

0000000000401090 <deregister_tm_clones>:
  401090:	b8 38 40 40 00       	mov    eax,0x404038
  401095:	48 3d 38 40 40 00    	cmp    rax,0x404038
  40109b:	74 13                	je     4010b0 <deregister_tm_clones+0x20>
  40109d:	b8 00 00 00 00       	mov    eax,0x0
  4010a2:	48 85 c0             	test   rax,rax
  4010a5:	74 09                	je     4010b0 <deregister_tm_clones+0x20>
  4010a7:	bf 38 40 40 00       	mov    edi,0x404038
  4010ac:	ff e0                	jmp    rax
  4010ae:	66 90                	xchg   ax,ax
  4010b0:	c3                   	ret    
  4010b1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010b8:	00 00 00 00 
  4010bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004010c0 <register_tm_clones>:
  4010c0:	be 38 40 40 00       	mov    esi,0x404038
  4010c5:	48 81 ee 38 40 40 00 	sub    rsi,0x404038
  4010cc:	48 89 f0             	mov    rax,rsi
  4010cf:	48 c1 ee 3f          	shr    rsi,0x3f
  4010d3:	48 c1 f8 03          	sar    rax,0x3
  4010d7:	48 01 c6             	add    rsi,rax
  4010da:	48 d1 fe             	sar    rsi,1
  4010dd:	74 11                	je     4010f0 <register_tm_clones+0x30>
  4010df:	b8 00 00 00 00       	mov    eax,0x0
  4010e4:	48 85 c0             	test   rax,rax
  4010e7:	74 07                	je     4010f0 <register_tm_clones+0x30>
  4010e9:	bf 38 40 40 00       	mov    edi,0x404038
  4010ee:	ff e0                	jmp    rax
  4010f0:	c3                   	ret    
  4010f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401100 <__do_global_dtors_aux>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	80 3d 2d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f2d],0x0        # 404038 <__TMC_END__>
  40110b:	75 13                	jne    401120 <__do_global_dtors_aux+0x20>
  40110d:	55                   	push   rbp
  40110e:	48 89 e5             	mov    rbp,rsp
  401111:	e8 7a ff ff ff       	call   401090 <deregister_tm_clones>
  401116:	c6 05 1b 2f 00 00 01 	mov    BYTE PTR [rip+0x2f1b],0x1        # 404038 <__TMC_END__>
  40111d:	5d                   	pop    rbp
  40111e:	c3                   	ret    
  40111f:	90                   	nop
  401120:	c3                   	ret    
  401121:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401128:	00 00 00 00 
  40112c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401130 <frame_dummy>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	eb 8a                	jmp    4010c0 <register_tm_clones>

0000000000401136 <func>:
  401136:	55                   	push   rbp
  401137:	48 89 e5             	mov    rbp,rsp
  40113a:	53                   	push   rbx
  40113b:	48 83 ec 28          	sub    rsp,0x28
  40113f:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401143:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  401148:	75 07                	jne    401151 <func+0x1b>
  40114a:	b8 01 00 00 00       	mov    eax,0x1
  40114f:	eb 50                	jmp    4011a1 <func+0x6b>
  401151:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  401158:	00 
  401159:	48 c7 45 e0 01 00 00 	mov    QWORD PTR [rbp-0x20],0x1
  401160:	00 
  401161:	eb 30                	jmp    401193 <func+0x5d>
  401163:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401167:	48 83 e8 01          	sub    rax,0x1
  40116b:	48 89 c7             	mov    rdi,rax
  40116e:	e8 c3 ff ff ff       	call   401136 <func>
  401173:	48 89 c3             	mov    rbx,rax
  401176:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40117a:	48 2b 45 e0          	sub    rax,QWORD PTR [rbp-0x20]
  40117e:	48 89 c7             	mov    rdi,rax
  401181:	e8 b0 ff ff ff       	call   401136 <func>
  401186:	48 0f af c3          	imul   rax,rbx
  40118a:	48 01 45 e8          	add    QWORD PTR [rbp-0x18],rax
  40118e:	48 83 45 e0 01       	add    QWORD PTR [rbp-0x20],0x1
  401193:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401197:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  40119b:	73 c6                	jae    401163 <func+0x2d>
  40119d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4011a1:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  4011a5:	c9                   	leave  
  4011a6:	c3                   	ret    

00000000004011a7 <main>:
  4011a7:	55                   	push   rbp
  4011a8:	48 89 e5             	mov    rbp,rsp
  4011ab:	48 83 ec 10          	sub    rsp,0x10
  4011af:	bf 08 20 40 00       	mov    edi,0x402008
  4011b4:	b8 00 00 00 00       	mov    eax,0x0
  4011b9:	e8 72 fe ff ff       	call   401030 <printf@plt>
  4011be:	48 8d 45 f8          	lea    rax,[rbp-0x8]
  4011c2:	48 89 c6             	mov    rsi,rax
  4011c5:	bf 27 20 40 00       	mov    edi,0x402027
  4011ca:	b8 00 00 00 00       	mov    eax,0x0
  4011cf:	e8 6c fe ff ff       	call   401040 <__isoc99_scanf@plt>
  4011d4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4011d8:	48 89 c7             	mov    rdi,rax
  4011db:	e8 56 ff ff ff       	call   401136 <func>
  4011e0:	48 89 c6             	mov    rsi,rax
  4011e3:	bf 2c 20 40 00       	mov    edi,0x40202c
  4011e8:	b8 00 00 00 00       	mov    eax,0x0
  4011ed:	e8 3e fe ff ff       	call   401030 <printf@plt>
  4011f2:	b8 00 00 00 00       	mov    eax,0x0
  4011f7:	c9                   	leave  
  4011f8:	c3                   	ret    
  4011f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401200 <__libc_csu_init>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	41 57                	push   r15
  401206:	4c 8d 3d f3 2b 00 00 	lea    r15,[rip+0x2bf3]        # 403e00 <__frame_dummy_init_array_entry>
  40120d:	41 56                	push   r14
  40120f:	49 89 d6             	mov    r14,rdx
  401212:	41 55                	push   r13
  401214:	49 89 f5             	mov    r13,rsi
  401217:	41 54                	push   r12
  401219:	41 89 fc             	mov    r12d,edi
  40121c:	55                   	push   rbp
  40121d:	48 8d 2d e4 2b 00 00 	lea    rbp,[rip+0x2be4]        # 403e08 <__do_global_dtors_aux_fini_array_entry>
  401224:	53                   	push   rbx
  401225:	4c 29 fd             	sub    rbp,r15
  401228:	48 83 ec 08          	sub    rsp,0x8
  40122c:	e8 cf fd ff ff       	call   401000 <_init>
  401231:	48 c1 fd 03          	sar    rbp,0x3
  401235:	74 1f                	je     401256 <__libc_csu_init+0x56>
  401237:	31 db                	xor    ebx,ebx
  401239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401240:	4c 89 f2             	mov    rdx,r14
  401243:	4c 89 ee             	mov    rsi,r13
  401246:	44 89 e7             	mov    edi,r12d
  401249:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40124d:	48 83 c3 01          	add    rbx,0x1
  401251:	48 39 dd             	cmp    rbp,rbx
  401254:	75 ea                	jne    401240 <__libc_csu_init+0x40>
  401256:	48 83 c4 08          	add    rsp,0x8
  40125a:	5b                   	pop    rbx
  40125b:	5d                   	pop    rbp
  40125c:	41 5c                	pop    r12
  40125e:	41 5d                	pop    r13
  401260:	41 5e                	pop    r14
  401262:	41 5f                	pop    r15
  401264:	c3                   	ret    
  401265:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40126c:	00 00 00 00 

0000000000401270 <__libc_csu_fini>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	c3                   	ret    

Disassembly of section .fini:

0000000000401278 <_fini>:
  401278:	f3 0f 1e fa          	endbr64 
  40127c:	48 83 ec 08          	sub    rsp,0x8
  401280:	48 83 c4 08          	add    rsp,0x8
  401284:	c3                   	ret    

Disassembly of section .rodata:

0000000000402000 <_IO_stdin_used>:
  402000:	01 00                	add    DWORD PTR [rax],eax
  402002:	02 00                	add    al,BYTE PTR [rax]
  402004:	00 00                	add    BYTE PTR [rax],al
  402006:	00 00                	add    BYTE PTR [rax],al
  402008:	45 6e                	rex.RB outs dx,BYTE PTR ds:[rsi]
  40200a:	74 65                	je     402071 <__GNU_EH_FRAME_HDR+0x35>
  40200c:	72 20                	jb     40202e <_IO_stdin_used+0x2e>
  40200e:	61                   	(bad)  
  40200f:	20 6e 6f             	and    BYTE PTR [rsi+0x6f],ch
  402012:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  402013:	2d 6e 65 67 61       	sub    eax,0x6167656e
  402018:	74 69                	je     402083 <__GNU_EH_FRAME_HDR+0x47>
  40201a:	76 65                	jbe    402081 <__GNU_EH_FRAME_HDR+0x45>
  40201c:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
  40201f:	74 65                	je     402086 <__GNU_EH_FRAME_HDR+0x4a>
  402021:	67 65 72 3a          	addr32 gs jb 40205f <__GNU_EH_FRAME_HDR+0x23>
  402025:	20 00                	and    BYTE PTR [rax],al
  402027:	25 6c 6c 75 00       	and    eax,0x756c6c
  40202c:	4f 75 74             	rex.WRXB jne 4020a3 <__GNU_EH_FRAME_HDR+0x67>
  40202f:	70 75                	jo     4020a6 <__GNU_EH_FRAME_HDR+0x6a>
  402031:	74 3a                	je     40206d <__GNU_EH_FRAME_HDR+0x31>
  402033:	20 25 6c 6c 75 0a    	and    BYTE PTR [rip+0xa756c6c],ah        # ab58ca5 <_end+0xa754c65>
	...

Disassembly of section .eh_frame_hdr:

000000000040203c <__GNU_EH_FRAME_HDR>:
  40203c:	01 1b                	add    DWORD PTR [rbx],ebx
  40203e:	03 3b                	add    edi,DWORD PTR [rbx]
  402040:	40 00 00             	rex add BYTE PTR [rax],al
  402043:	00 07                	add    BYTE PTR [rdi],al
  402045:	00 00                	add    BYTE PTR [rax],al
  402047:	00 e4                	add    ah,ah
  402049:	ef                   	out    dx,eax
  40204a:	ff                   	(bad)  
  40204b:	ff 84 00 00 00 14 f0 	inc    DWORD PTR [rax+rax*1-0xfec0000]
  402052:	ff                   	(bad)  
  402053:	ff 5c 00 00          	call   FWORD PTR [rax+rax*1+0x0]
  402057:	00 44 f0 ff          	add    BYTE PTR [rax+rsi*8-0x1],al
  40205b:	ff 70 00             	push   QWORD PTR [rax+0x0]
  40205e:	00 00                	add    BYTE PTR [rax],al
  402060:	fa                   	cli    
  402061:	f0 ff                	lock (bad) 
  402063:	ff ac 00 00 00 6b f1 	jmp    FWORD PTR [rax+rax*1-0xe950000]
  40206a:	ff                   	(bad)  
  40206b:	ff d0                	call   rax
  40206d:	00 00                	add    BYTE PTR [rax],al
  40206f:	00 c4                	add    ah,al
  402071:	f1                   	int1   
  402072:	ff                   	(bad)  
  402073:	ff f4                	push   rsp
  402075:	00 00                	add    BYTE PTR [rax],al
  402077:	00 34 f2             	add    BYTE PTR [rdx+rsi*8],dh
  40207a:	ff                   	(bad)  
  40207b:	ff                   	(bad)  
  40207c:	3c 01                	cmp    al,0x1
	...

Disassembly of section .eh_frame:

0000000000402080 <__FRAME_END__-0x10c>:
  402080:	14 00                	adc    al,0x0
  402082:	00 00                	add    BYTE PTR [rax],al
  402084:	00 00                	add    BYTE PTR [rax],al
  402086:	00 00                	add    BYTE PTR [rax],al
  402088:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  40208b:	00 01                	add    BYTE PTR [rcx],al
  40208d:	78 10                	js     40209f <__GNU_EH_FRAME_HDR+0x63>
  40208f:	01 1b                	add    DWORD PTR [rbx],ebx
  402091:	0c 07                	or     al,0x7
  402093:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  402099:	00 00                	add    BYTE PTR [rax],al
  40209b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  40209e:	00 00                	add    BYTE PTR [rax],al
  4020a0:	b0 ef                	mov    al,0xef
  4020a2:	ff                   	(bad)  
  4020a3:	ff 2f                	jmp    FWORD PTR [rdi]
  4020a5:	00 00                	add    BYTE PTR [rax],al
  4020a7:	00 00                	add    BYTE PTR [rax],al
  4020a9:	44 07                	rex.R (bad) 
  4020ab:	10 10                	adc    BYTE PTR [rax],dl
  4020ad:	00 00                	add    BYTE PTR [rax],al
  4020af:	00 30                	add    BYTE PTR [rax],dh
  4020b1:	00 00                	add    BYTE PTR [rax],al
  4020b3:	00 cc                	add    ah,cl
  4020b5:	ef                   	out    dx,eax
  4020b6:	ff                   	(bad)  
  4020b7:	ff 05 00 00 00 00    	inc    DWORD PTR [rip+0x0]        # 4020bd <__GNU_EH_FRAME_HDR+0x81>
  4020bd:	00 00                	add    BYTE PTR [rax],al
  4020bf:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  4020c2:	00 00                	add    BYTE PTR [rax],al
  4020c4:	44 00 00             	add    BYTE PTR [rax],r8b
  4020c7:	00 58 ef             	add    BYTE PTR [rax-0x11],bl
  4020ca:	ff                   	(bad)  
  4020cb:	ff 30                	push   QWORD PTR [rax]
  4020cd:	00 00                	add    BYTE PTR [rax],al
  4020cf:	00 00                	add    BYTE PTR [rax],al
  4020d1:	0e                   	(bad)  
  4020d2:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  4020d5:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  4020d8:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  4020db:	80 00 3f             	add    BYTE PTR [rax],0x3f
  4020de:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  4020e0:	2a 33                	sub    dh,BYTE PTR [rbx]
  4020e2:	24 22                	and    al,0x22
  4020e4:	00 00                	add    BYTE PTR [rax],al
  4020e6:	00 00                	add    BYTE PTR [rax],al
  4020e8:	20 00                	and    BYTE PTR [rax],al
  4020ea:	00 00                	add    BYTE PTR [rax],al
  4020ec:	6c                   	ins    BYTE PTR es:[rdi],dx
  4020ed:	00 00                	add    BYTE PTR [rax],al
  4020ef:	00 46 f0             	add    BYTE PTR [rsi-0x10],al
  4020f2:	ff                   	(bad)  
  4020f3:	ff 71 00             	push   QWORD PTR [rcx+0x0]
  4020f6:	00 00                	add    BYTE PTR [rax],al
  4020f8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  4020fb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  402101:	45 83 03 02          	rex.RB add DWORD PTR [r11],0x2
  402105:	67 0c 07             	addr32 or al,0x7
  402108:	08 00                	or     BYTE PTR [rax],al
  40210a:	00 00                	add    BYTE PTR [rax],al
  40210c:	20 00                	and    BYTE PTR [rax],al
  40210e:	00 00                	add    BYTE PTR [rax],al
  402110:	90                   	nop
  402111:	00 00                	add    BYTE PTR [rax],al
  402113:	00 93 f0 ff ff 52    	add    BYTE PTR [rbx+0x52fffff0],dl
  402119:	00 00                	add    BYTE PTR [rax],al
  40211b:	00 00                	add    BYTE PTR [rax],al
  40211d:	41 0e                	rex.B (bad) 
  40211f:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  402125:	02 4d 0c             	add    cl,BYTE PTR [rbp+0xc]
  402128:	07                   	(bad)  
  402129:	08 00                	or     BYTE PTR [rax],al
  40212b:	00 00                	add    BYTE PTR [rax],al
  40212d:	00 00                	add    BYTE PTR [rax],al
  40212f:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
  402133:	00 b4 00 00 00 c8 f0 	add    BYTE PTR [rax+rax*1-0xf380000],dh
  40213a:	ff                   	(bad)  
  40213b:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
  40213e:	00 00                	add    BYTE PTR [rax],al
  402140:	00 46 0e             	add    BYTE PTR [rsi+0xe],al
  402143:	10 8f 02 49 0e 18    	adc    BYTE PTR [rdi+0x180e4902],cl
  402149:	8e 03                	mov    es,WORD PTR [rbx]
  40214b:	45 0e                	rex.RB (bad) 
  40214d:	20 8d 04 45 0e 28    	and    BYTE PTR [rbp+0x280e4504],cl
  402153:	8c 05 44 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e44],es        # ffffffff86702f9d <_end+0xffffffff862fef5d>
  402159:	06                   	(bad)  
  40215a:	48 0e                	rex.W (bad) 
  40215c:	38 83 07 47 0e 40    	cmp    BYTE PTR [rbx+0x400e4707],al
  402162:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  402163:	0e                   	(bad)  
  402164:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  402167:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  40216a:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  40216d:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  402170:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  402173:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  402176:	08 00                	or     BYTE PTR [rax],al
  402178:	10 00                	adc    BYTE PTR [rax],al
  40217a:	00 00                	add    BYTE PTR [rax],al
  40217c:	fc                   	cld    
  40217d:	00 00                	add    BYTE PTR [rax],al
  40217f:	00 f0                	add    al,dh
  402181:	f0 ff                	lock (bad) 
  402183:	ff 05 00 00 00 00    	inc    DWORD PTR [rip+0x0]        # 402189 <__GNU_EH_FRAME_HDR+0x14d>
  402189:	00 00                	add    BYTE PTR [rax],al
	...

000000000040218c <__FRAME_END__>:
  40218c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000403e00 <__frame_dummy_init_array_entry>:
  403e00:	30 11                	xor    BYTE PTR [rcx],dl
  403e02:	40 00 00             	rex add BYTE PTR [rax],al
  403e05:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000403e08 <__do_global_dtors_aux_fini_array_entry>:
  403e08:	00 11                	add    BYTE PTR [rcx],dl
  403e0a:	40 00 00             	rex add BYTE PTR [rax],al
  403e0d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000403e10 <_DYNAMIC>:
  403e10:	01 00                	add    DWORD PTR [rax],eax
  403e12:	00 00                	add    BYTE PTR [rax],al
  403e14:	00 00                	add    BYTE PTR [rax],al
  403e16:	00 00                	add    BYTE PTR [rax],al
  403e18:	01 00                	add    DWORD PTR [rax],eax
  403e1a:	00 00                	add    BYTE PTR [rax],al
  403e1c:	00 00                	add    BYTE PTR [rax],al
  403e1e:	00 00                	add    BYTE PTR [rax],al
  403e20:	0c 00                	or     al,0x0
  403e22:	00 00                	add    BYTE PTR [rax],al
  403e24:	00 00                	add    BYTE PTR [rax],al
  403e26:	00 00                	add    BYTE PTR [rax],al
  403e28:	00 10                	add    BYTE PTR [rax],dl
  403e2a:	40 00 00             	rex add BYTE PTR [rax],al
  403e2d:	00 00                	add    BYTE PTR [rax],al
  403e2f:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 403e35 <_DYNAMIC+0x25>
  403e35:	00 00                	add    BYTE PTR [rax],al
  403e37:	00 78 12             	add    BYTE PTR [rax+0x12],bh
  403e3a:	40 00 00             	rex add BYTE PTR [rax],al
  403e3d:	00 00                	add    BYTE PTR [rax],al
  403e3f:	00 19                	add    BYTE PTR [rcx],bl
	...
  403e49:	3e 40 00 00          	ds rex add BYTE PTR [rax],al
  403e4d:	00 00                	add    BYTE PTR [rax],al
  403e4f:	00 1b                	add    BYTE PTR [rbx],bl
  403e51:	00 00                	add    BYTE PTR [rax],al
  403e53:	00 00                	add    BYTE PTR [rax],al
  403e55:	00 00                	add    BYTE PTR [rax],al
  403e57:	00 08                	add    BYTE PTR [rax],cl
  403e59:	00 00                	add    BYTE PTR [rax],al
  403e5b:	00 00                	add    BYTE PTR [rax],al
  403e5d:	00 00                	add    BYTE PTR [rax],al
  403e5f:	00 1a                	add    BYTE PTR [rdx],bl
  403e61:	00 00                	add    BYTE PTR [rax],al
  403e63:	00 00                	add    BYTE PTR [rax],al
  403e65:	00 00                	add    BYTE PTR [rax],al
  403e67:	00 08                	add    BYTE PTR [rax],cl
  403e69:	3e 40 00 00          	ds rex add BYTE PTR [rax],al
  403e6d:	00 00                	add    BYTE PTR [rax],al
  403e6f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  403e72:	00 00                	add    BYTE PTR [rax],al
  403e74:	00 00                	add    BYTE PTR [rax],al
  403e76:	00 00                	add    BYTE PTR [rax],al
  403e78:	08 00                	or     BYTE PTR [rax],al
  403e7a:	00 00                	add    BYTE PTR [rax],al
  403e7c:	00 00                	add    BYTE PTR [rax],al
  403e7e:	00 00                	add    BYTE PTR [rax],al
  403e80:	04 00                	add    al,0x0
  403e82:	00 00                	add    BYTE PTR [rax],al
  403e84:	00 00                	add    BYTE PTR [rax],al
  403e86:	00 00                	add    BYTE PTR [rax],al
  403e88:	e8 02 40 00 00       	call   407e8f <_end+0x3e4f>
  403e8d:	00 00                	add    BYTE PTR [rax],al
  403e8f:	00 f5                	add    ch,dh
  403e91:	fe                   	(bad)  
  403e92:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  403e95:	00 00                	add    BYTE PTR [rax],al
  403e97:	00 10                	add    BYTE PTR [rax],dl
  403e99:	03 40 00             	add    eax,DWORD PTR [rax+0x0]
  403e9c:	00 00                	add    BYTE PTR [rax],al
  403e9e:	00 00                	add    BYTE PTR [rax],al
  403ea0:	05 00 00 00 00       	add    eax,0x0
  403ea5:	00 00                	add    BYTE PTR [rax],al
  403ea7:	00 a8 03 40 00 00    	add    BYTE PTR [rax+0x4003],ch
  403ead:	00 00                	add    BYTE PTR [rax],al
  403eaf:	00 06                	add    BYTE PTR [rsi],al
  403eb1:	00 00                	add    BYTE PTR [rax],al
  403eb3:	00 00                	add    BYTE PTR [rax],al
  403eb5:	00 00                	add    BYTE PTR [rax],al
  403eb7:	00 30                	add    BYTE PTR [rax],dh
  403eb9:	03 40 00             	add    eax,DWORD PTR [rax+0x0]
  403ebc:	00 00                	add    BYTE PTR [rax],al
  403ebe:	00 00                	add    BYTE PTR [rax],al
  403ec0:	0a 00                	or     al,BYTE PTR [rax]
  403ec2:	00 00                	add    BYTE PTR [rax],al
  403ec4:	00 00                	add    BYTE PTR [rax],al
  403ec6:	00 00                	add    BYTE PTR [rax],al
  403ec8:	58                   	pop    rax
  403ec9:	00 00                	add    BYTE PTR [rax],al
  403ecb:	00 00                	add    BYTE PTR [rax],al
  403ecd:	00 00                	add    BYTE PTR [rax],al
  403ecf:	00 0b                	add    BYTE PTR [rbx],cl
  403ed1:	00 00                	add    BYTE PTR [rax],al
  403ed3:	00 00                	add    BYTE PTR [rax],al
  403ed5:	00 00                	add    BYTE PTR [rax],al
  403ed7:	00 18                	add    BYTE PTR [rax],bl
  403ed9:	00 00                	add    BYTE PTR [rax],al
  403edb:	00 00                	add    BYTE PTR [rax],al
  403edd:	00 00                	add    BYTE PTR [rax],al
  403edf:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 403ee5 <_DYNAMIC+0xd5>
	...
  403eed:	00 00                	add    BYTE PTR [rax],al
  403eef:	00 03                	add    BYTE PTR [rbx],al
	...
  403ef9:	40                   	rex
  403efa:	40 00 00             	rex add BYTE PTR [rax],al
  403efd:	00 00                	add    BYTE PTR [rax],al
  403eff:	00 02                	add    BYTE PTR [rdx],al
  403f01:	00 00                	add    BYTE PTR [rax],al
  403f03:	00 00                	add    BYTE PTR [rax],al
  403f05:	00 00                	add    BYTE PTR [rax],al
  403f07:	00 30                	add    BYTE PTR [rax],dh
  403f09:	00 00                	add    BYTE PTR [rax],al
  403f0b:	00 00                	add    BYTE PTR [rax],al
  403f0d:	00 00                	add    BYTE PTR [rax],al
  403f0f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  403f12:	00 00                	add    BYTE PTR [rax],al
  403f14:	00 00                	add    BYTE PTR [rax],al
  403f16:	00 00                	add    BYTE PTR [rax],al
  403f18:	07                   	(bad)  
  403f19:	00 00                	add    BYTE PTR [rax],al
  403f1b:	00 00                	add    BYTE PTR [rax],al
  403f1d:	00 00                	add    BYTE PTR [rax],al
  403f1f:	00 17                	add    BYTE PTR [rdi],dl
  403f21:	00 00                	add    BYTE PTR [rax],al
  403f23:	00 00                	add    BYTE PTR [rax],al
  403f25:	00 00                	add    BYTE PTR [rax],al
  403f27:	00 70 04             	add    BYTE PTR [rax+0x4],dh
  403f2a:	40 00 00             	rex add BYTE PTR [rax],al
  403f2d:	00 00                	add    BYTE PTR [rax],al
  403f2f:	00 07                	add    BYTE PTR [rdi],al
  403f31:	00 00                	add    BYTE PTR [rax],al
  403f33:	00 00                	add    BYTE PTR [rax],al
  403f35:	00 00                	add    BYTE PTR [rax],al
  403f37:	00 40 04             	add    BYTE PTR [rax+0x4],al
  403f3a:	40 00 00             	rex add BYTE PTR [rax],al
  403f3d:	00 00                	add    BYTE PTR [rax],al
  403f3f:	00 08                	add    BYTE PTR [rax],cl
  403f41:	00 00                	add    BYTE PTR [rax],al
  403f43:	00 00                	add    BYTE PTR [rax],al
  403f45:	00 00                	add    BYTE PTR [rax],al
  403f47:	00 30                	add    BYTE PTR [rax],dh
  403f49:	00 00                	add    BYTE PTR [rax],al
  403f4b:	00 00                	add    BYTE PTR [rax],al
  403f4d:	00 00                	add    BYTE PTR [rax],al
  403f4f:	00 09                	add    BYTE PTR [rcx],cl
  403f51:	00 00                	add    BYTE PTR [rax],al
  403f53:	00 00                	add    BYTE PTR [rax],al
  403f55:	00 00                	add    BYTE PTR [rax],al
  403f57:	00 18                	add    BYTE PTR [rax],bl
  403f59:	00 00                	add    BYTE PTR [rax],al
  403f5b:	00 00                	add    BYTE PTR [rax],al
  403f5d:	00 00                	add    BYTE PTR [rax],al
  403f5f:	00 fe                	add    dh,bh
  403f61:	ff                   	(bad)  
  403f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  403f65:	00 00                	add    BYTE PTR [rax],al
  403f67:	00 10                	add    BYTE PTR [rax],dl
  403f69:	04 40                	add    al,0x40
  403f6b:	00 00                	add    BYTE PTR [rax],al
  403f6d:	00 00                	add    BYTE PTR [rax],al
  403f6f:	00 ff                	add    bh,bh
  403f71:	ff                   	(bad)  
  403f72:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  403f75:	00 00                	add    BYTE PTR [rax],al
  403f77:	00 01                	add    BYTE PTR [rcx],al
  403f79:	00 00                	add    BYTE PTR [rax],al
  403f7b:	00 00                	add    BYTE PTR [rax],al
  403f7d:	00 00                	add    BYTE PTR [rax],al
  403f7f:	00 f0                	add    al,dh
  403f81:	ff                   	(bad)  
  403f82:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  403f85:	00 00                	add    BYTE PTR [rax],al
  403f87:	00 00                	add    BYTE PTR [rax],al
  403f89:	04 40                	add    al,0x40
	...

Disassembly of section .got:

0000000000403ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000404000 <_GLOBAL_OFFSET_TABLE_>:
  404000:	10 3e                	adc    BYTE PTR [rsi],bh
  404002:	40 00 00             	rex add BYTE PTR [rax],al
	...
  404015:	00 00                	add    BYTE PTR [rax],al
  404017:	00 36                	add    BYTE PTR [rsi],dh
  404019:	10 40 00             	adc    BYTE PTR [rax+0x0],al
  40401c:	00 00                	add    BYTE PTR [rax],al
  40401e:	00 00                	add    BYTE PTR [rax],al
  404020:	46 10 40 00          	rex.RX adc BYTE PTR [rax+0x0],r8b
  404024:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000404028 <__data_start>:
	...

0000000000404030 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000404038 <completed.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
   8:	55                   	push   rbp
   9:	29 20                	sub    DWORD PTR [rax],esp
   b:	31 33                	xor    DWORD PTR [rbx],esi
   d:	2e 31 2e             	cs xor DWORD PTR [rsi],ebp
  10:	30 00                	xor    BYTE PTR [rax],al
