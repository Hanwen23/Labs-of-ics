
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 c2 3e 00 00    	push   0x3ec2(%rip)        # 4ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 c4 3e 00 00    	jmp    *0x3ec4(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   %ax,%ax
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	e9 32 ff ff ff       	jmp    1020 <_init+0x20>
    10ee:	66 90                	xchg   %ax,%ax
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	e9 22 ff ff ff       	jmp    1020 <_init+0x20>
    10fe:	66 90                	xchg   %ax,%ax
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	e9 12 ff ff ff       	jmp    1020 <_init+0x20>
    110e:	66 90                	xchg   %ax,%ax
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	e9 02 ff ff ff       	jmp    1020 <_init+0x20>
    111e:	66 90                	xchg   %ax,%ax
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	e9 f2 fe ff ff       	jmp    1020 <_init+0x20>
    112e:	66 90                	xchg   %ax,%ax
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	e9 e2 fe ff ff       	jmp    1020 <_init+0x20>
    113e:	66 90                	xchg   %ax,%ax
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	e9 d2 fe ff ff       	jmp    1020 <_init+0x20>
    114e:	66 90                	xchg   %ax,%ax
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	e9 c2 fe ff ff       	jmp    1020 <_init+0x20>
    115e:	66 90                	xchg   %ax,%ax
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	e9 b2 fe ff ff       	jmp    1020 <_init+0x20>
    116e:	66 90                	xchg   %ax,%ax
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	e9 a2 fe ff ff       	jmp    1020 <_init+0x20>
    117e:	66 90                	xchg   %ax,%ax
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	e9 92 fe ff ff       	jmp    1020 <_init+0x20>
    118e:	66 90                	xchg   %ax,%ax
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	e9 82 fe ff ff       	jmp    1020 <_init+0x20>
    119e:	66 90                	xchg   %ax,%ax
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	e9 72 fe ff ff       	jmp    1020 <_init+0x20>
    11ae:	66 90                	xchg   %ax,%ax
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	e9 62 fe ff ff       	jmp    1020 <_init+0x20>
    11be:	66 90                	xchg   %ax,%ax
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	e9 52 fe ff ff       	jmp    1020 <_init+0x20>
    11ce:	66 90                	xchg   %ax,%ax
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	e9 42 fe ff ff       	jmp    1020 <_init+0x20>
    11de:	66 90                	xchg   %ax,%ax
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	e9 32 fe ff ff       	jmp    1020 <_init+0x20>
    11ee:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000011f0 <.plt.got>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	ff 25 fe 3d 00 00    	jmp    *0x3dfe(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001200 <.plt.sec>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	ff 25 ee 3c 00 00    	jmp    *0x3cee(%rip)        # 4ef8 <getenv@GLIBC_2.2.5>
    120a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1210:	f3 0f 1e fa          	endbr64 
    1214:	ff 25 e6 3c 00 00    	jmp    *0x3ce6(%rip)        # 4f00 <__errno_location@GLIBC_2.2.5>
    121a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1220:	f3 0f 1e fa          	endbr64 
    1224:	ff 25 de 3c 00 00    	jmp    *0x3cde(%rip)        # 4f08 <strcpy@GLIBC_2.2.5>
    122a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1230:	f3 0f 1e fa          	endbr64 
    1234:	ff 25 d6 3c 00 00    	jmp    *0x3cd6(%rip)        # 4f10 <puts@GLIBC_2.2.5>
    123a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1240:	f3 0f 1e fa          	endbr64 
    1244:	ff 25 ce 3c 00 00    	jmp    *0x3cce(%rip)        # 4f18 <write@GLIBC_2.2.5>
    124a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1250:	f3 0f 1e fa          	endbr64 
    1254:	ff 25 c6 3c 00 00    	jmp    *0x3cc6(%rip)        # 4f20 <strlen@GLIBC_2.2.5>
    125a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1260:	f3 0f 1e fa          	endbr64 
    1264:	ff 25 be 3c 00 00    	jmp    *0x3cbe(%rip)        # 4f28 <__stack_chk_fail@GLIBC_2.4>
    126a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1270:	f3 0f 1e fa          	endbr64 
    1274:	ff 25 b6 3c 00 00    	jmp    *0x3cb6(%rip)        # 4f30 <alarm@GLIBC_2.2.5>
    127a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1280:	f3 0f 1e fa          	endbr64 
    1284:	ff 25 ae 3c 00 00    	jmp    *0x3cae(%rip)        # 4f38 <close@GLIBC_2.2.5>
    128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1290:	f3 0f 1e fa          	endbr64 
    1294:	ff 25 a6 3c 00 00    	jmp    *0x3ca6(%rip)        # 4f40 <read@GLIBC_2.2.5>
    129a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	ff 25 9e 3c 00 00    	jmp    *0x3c9e(%rip)        # 4f48 <strcmp@GLIBC_2.2.5>
    12aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	ff 25 96 3c 00 00    	jmp    *0x3c96(%rip)        # 4f50 <signal@GLIBC_2.2.5>
    12ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	ff 25 8e 3c 00 00    	jmp    *0x3c8e(%rip)        # 4f58 <gethostbyname@GLIBC_2.2.5>
    12ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	ff 25 86 3c 00 00    	jmp    *0x3c86(%rip)        # 4f60 <__memmove_chk@GLIBC_2.3.4>
    12da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	ff 25 7e 3c 00 00    	jmp    *0x3c7e(%rip)        # 4f68 <__memcpy_chk@GLIBC_2.3.4>
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	ff 25 76 3c 00 00    	jmp    *0x3c76(%rip)        # 4f70 <strtol@GLIBC_2.2.5>
    12fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1300:	f3 0f 1e fa          	endbr64 
    1304:	ff 25 6e 3c 00 00    	jmp    *0x3c6e(%rip)        # 4f78 <fflush@GLIBC_2.2.5>
    130a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1310:	f3 0f 1e fa          	endbr64 
    1314:	ff 25 66 3c 00 00    	jmp    *0x3c66(%rip)        # 4f80 <__isoc99_sscanf@GLIBC_2.7>
    131a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1320:	f3 0f 1e fa          	endbr64 
    1324:	ff 25 5e 3c 00 00    	jmp    *0x3c5e(%rip)        # 4f88 <__fgets_chk@GLIBC_2.4>
    132a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1330:	f3 0f 1e fa          	endbr64 
    1334:	ff 25 56 3c 00 00    	jmp    *0x3c56(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1340:	f3 0f 1e fa          	endbr64 
    1344:	ff 25 4e 3c 00 00    	jmp    *0x3c4e(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1350:	f3 0f 1e fa          	endbr64 
    1354:	ff 25 46 3c 00 00    	jmp    *0x3c46(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    135a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1360:	f3 0f 1e fa          	endbr64 
    1364:	ff 25 3e 3c 00 00    	jmp    *0x3c3e(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    136a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1370:	f3 0f 1e fa          	endbr64 
    1374:	ff 25 36 3c 00 00    	jmp    *0x3c36(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    137a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1380:	f3 0f 1e fa          	endbr64 
    1384:	ff 25 2e 3c 00 00    	jmp    *0x3c2e(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    138a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1390:	f3 0f 1e fa          	endbr64 
    1394:	ff 25 26 3c 00 00    	jmp    *0x3c26(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    139a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	ff 25 1e 3c 00 00    	jmp    *0x3c1e(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    13aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	ff 25 16 3c 00 00    	jmp    *0x3c16(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    13ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013c0 <_start>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	31 ed                	xor    %ebp,%ebp
    13c6:	49 89 d1             	mov    %rdx,%r9
    13c9:	5e                   	pop    %rsi
    13ca:	48 89 e2             	mov    %rsp,%rdx
    13cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13d1:	50                   	push   %rax
    13d2:	54                   	push   %rsp
    13d3:	45 31 c0             	xor    %r8d,%r8d
    13d6:	31 c9                	xor    %ecx,%ecx
    13d8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14a9 <main>
    13df:	ff 15 f3 3b 00 00    	call   *0x3bf3(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13e5:	f4                   	hlt    
    13e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ed:	00 00 00 

00000000000013f0 <deregister_tm_clones>:
    13f0:	48 8d 3d 69 42 00 00 	lea    0x4269(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    13f7:	48 8d 05 62 42 00 00 	lea    0x4262(%rip),%rax        # 5660 <stdout@GLIBC_2.2.5>
    13fe:	48 39 f8             	cmp    %rdi,%rax
    1401:	74 15                	je     1418 <deregister_tm_clones+0x28>
    1403:	48 8b 05 d6 3b 00 00 	mov    0x3bd6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    140a:	48 85 c0             	test   %rax,%rax
    140d:	74 09                	je     1418 <deregister_tm_clones+0x28>
    140f:	ff e0                	jmp    *%rax
    1411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1418:	c3                   	ret    
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <register_tm_clones>:
    1420:	48 8d 3d 39 42 00 00 	lea    0x4239(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1427:	48 8d 35 32 42 00 00 	lea    0x4232(%rip),%rsi        # 5660 <stdout@GLIBC_2.2.5>
    142e:	48 29 fe             	sub    %rdi,%rsi
    1431:	48 89 f0             	mov    %rsi,%rax
    1434:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1438:	48 c1 f8 03          	sar    $0x3,%rax
    143c:	48 01 c6             	add    %rax,%rsi
    143f:	48 d1 fe             	sar    %rsi
    1442:	74 14                	je     1458 <register_tm_clones+0x38>
    1444:	48 8b 05 a5 3b 00 00 	mov    0x3ba5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    144b:	48 85 c0             	test   %rax,%rax
    144e:	74 08                	je     1458 <register_tm_clones+0x38>
    1450:	ff e0                	jmp    *%rax
    1452:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <__do_global_dtors_aux>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	80 3d 1d 42 00 00 00 	cmpb   $0x0,0x421d(%rip)        # 5688 <completed.0>
    146b:	75 2b                	jne    1498 <__do_global_dtors_aux+0x38>
    146d:	55                   	push   %rbp
    146e:	48 83 3d 82 3b 00 00 	cmpq   $0x0,0x3b82(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1475:	00 
    1476:	48 89 e5             	mov    %rsp,%rbp
    1479:	74 0c                	je     1487 <__do_global_dtors_aux+0x27>
    147b:	48 8b 3d 86 3b 00 00 	mov    0x3b86(%rip),%rdi        # 5008 <__dso_handle>
    1482:	e8 69 fd ff ff       	call   11f0 <_init+0x1f0>
    1487:	e8 64 ff ff ff       	call   13f0 <deregister_tm_clones>
    148c:	c6 05 f5 41 00 00 01 	movb   $0x1,0x41f5(%rip)        # 5688 <completed.0>
    1493:	5d                   	pop    %rbp
    1494:	c3                   	ret    
    1495:	0f 1f 00             	nopl   (%rax)
    1498:	c3                   	ret    
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <frame_dummy>:
    14a0:	f3 0f 1e fa          	endbr64 
    14a4:	e9 77 ff ff ff       	jmp    1420 <register_tm_clones>

00000000000014a9 <main>:
    14a9:	f3 0f 1e fa          	endbr64 
    14ad:	53                   	push   %rbx
    14ae:	83 ff 01             	cmp    $0x1,%edi
    14b1:	0f 84 f8 00 00 00    	je     15af <main+0x106>
    14b7:	48 89 f3             	mov    %rsi,%rbx
    14ba:	83 ff 02             	cmp    $0x2,%edi
    14bd:	0f 85 21 01 00 00    	jne    15e4 <main+0x13b>
    14c3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14c7:	48 8d 35 36 1b 00 00 	lea    0x1b36(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ce:	e8 6d fe ff ff       	call   1340 <_init+0x340>
    14d3:	48 89 05 b6 41 00 00 	mov    %rax,0x41b6(%rip)        # 5690 <infile>
    14da:	48 85 c0             	test   %rax,%rax
    14dd:	0f 84 df 00 00 00    	je     15c2 <main+0x119>
    14e3:	e8 6c 06 00 00       	call   1b54 <initialize_bomb>
    14e8:	48 8d 3d 19 1d 00 00 	lea    0x1d19(%rip),%rdi        # 3208 <_IO_stdin_used+0x208>
    14ef:	e8 3c fd ff ff       	call   1230 <_init+0x230>
    14f4:	48 8d 3d 4d 1d 00 00 	lea    0x1d4d(%rip),%rdi        # 3248 <_IO_stdin_used+0x248>
    14fb:	e8 30 fd ff ff       	call   1230 <_init+0x230>
    1500:	e8 83 07 00 00       	call   1c88 <read_line>
    1505:	48 89 c7             	mov    %rax,%rdi
    1508:	e8 fa 00 00 00       	call   1607 <phase_1>
    150d:	e8 b8 08 00 00       	call   1dca <phase_defused>
    1512:	48 8d 3d 5f 1d 00 00 	lea    0x1d5f(%rip),%rdi        # 3278 <_IO_stdin_used+0x278>
    1519:	e8 12 fd ff ff       	call   1230 <_init+0x230>
    151e:	e8 65 07 00 00       	call   1c88 <read_line>
    1523:	48 89 c7             	mov    %rax,%rdi
    1526:	e8 00 01 00 00       	call   162b <phase_2>
    152b:	e8 9a 08 00 00       	call   1dca <phase_defused>
    1530:	48 8d 3d 06 1b 00 00 	lea    0x1b06(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1537:	e8 f4 fc ff ff       	call   1230 <_init+0x230>
    153c:	e8 47 07 00 00       	call   1c88 <read_line>
    1541:	48 89 c7             	mov    %rax,%rdi
    1544:	e8 54 01 00 00       	call   169d <phase_3>
    1549:	e8 7c 08 00 00       	call   1dca <phase_defused>
    154e:	48 8d 3d 06 1b 00 00 	lea    0x1b06(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1555:	e8 d6 fc ff ff       	call   1230 <_init+0x230>
    155a:	e8 29 07 00 00       	call   1c88 <read_line>
    155f:	48 89 c7             	mov    %rax,%rdi
    1562:	e8 27 02 00 00       	call   178e <phase_4>
    1567:	e8 5e 08 00 00       	call   1dca <phase_defused>
    156c:	48 8d 3d 35 1d 00 00 	lea    0x1d35(%rip),%rdi        # 32a8 <_IO_stdin_used+0x2a8>
    1573:	e8 b8 fc ff ff       	call   1230 <_init+0x230>
    1578:	e8 0b 07 00 00       	call   1c88 <read_line>
    157d:	48 89 c7             	mov    %rax,%rdi
    1580:	e8 82 02 00 00       	call   1807 <phase_5>
    1585:	e8 40 08 00 00       	call   1dca <phase_defused>
    158a:	48 8d 3d d9 1a 00 00 	lea    0x1ad9(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1591:	e8 9a fc ff ff       	call   1230 <_init+0x230>
    1596:	e8 ed 06 00 00       	call   1c88 <read_line>
    159b:	48 89 c7             	mov    %rax,%rdi
    159e:	e8 b0 02 00 00       	call   1853 <phase_6>
    15a3:	e8 22 08 00 00       	call   1dca <phase_defused>
    15a8:	b8 00 00 00 00       	mov    $0x0,%eax
    15ad:	5b                   	pop    %rbx
    15ae:	c3                   	ret    
    15af:	48 8b 05 ba 40 00 00 	mov    0x40ba(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    15b6:	48 89 05 d3 40 00 00 	mov    %rax,0x40d3(%rip)        # 5690 <infile>
    15bd:	e9 21 ff ff ff       	jmp    14e3 <main+0x3a>
    15c2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    15c6:	48 8b 13             	mov    (%rbx),%rdx
    15c9:	48 8d 35 36 1a 00 00 	lea    0x1a36(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    15d0:	bf 02 00 00 00       	mov    $0x2,%edi
    15d5:	e8 56 fd ff ff       	call   1330 <_init+0x330>
    15da:	bf 08 00 00 00       	mov    $0x8,%edi
    15df:	e8 6c fd ff ff       	call   1350 <_init+0x350>
    15e4:	48 8b 16             	mov    (%rsi),%rdx
    15e7:	48 8d 35 35 1a 00 00 	lea    0x1a35(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ee:	bf 02 00 00 00       	mov    $0x2,%edi
    15f3:	b8 00 00 00 00       	mov    $0x0,%eax
    15f8:	e8 33 fd ff ff       	call   1330 <_init+0x330>
    15fd:	bf 08 00 00 00       	mov    $0x8,%edi
    1602:	e8 49 fd ff ff       	call   1350 <_init+0x350>

0000000000001607 <phase_1>:
    1607:	f3 0f 1e fa          	endbr64 
    160b:	48 83 ec 08          	sub    $0x8,%rsp
    160f:	48 8d 35 ba 1c 00 00 	lea    0x1cba(%rip),%rsi        # 32d0 <_IO_stdin_used+0x2d0>
    1616:	e8 d9 04 00 00       	call   1af4 <strings_not_equal>
    161b:	85 c0                	test   %eax,%eax
    161d:	75 05                	jne    1624 <phase_1+0x1d>
    161f:	48 83 c4 08          	add    $0x8,%rsp
    1623:	c3                   	ret    
    1624:	e8 ee 05 00 00       	call   1c17 <explode_bomb>
    1629:	eb f4                	jmp    161f <phase_1+0x18>

000000000000162b <phase_2>:
    162b:	f3 0f 1e fa          	endbr64 
    162f:	55                   	push   %rbp
    1630:	53                   	push   %rbx
    1631:	48 83 ec 28          	sub    $0x28,%rsp
    1635:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    163c:	00 00 
    163e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1643:	31 c0                	xor    %eax,%eax
    1645:	48 89 e6             	mov    %rsp,%rsi
    1648:	e8 f6 05 00 00       	call   1c43 <read_six_numbers>
    164d:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1651:	78 0a                	js     165d <phase_2+0x32>
    1653:	48 89 e5             	mov    %rsp,%rbp
    1656:	bb 01 00 00 00       	mov    $0x1,%ebx
    165b:	eb 13                	jmp    1670 <phase_2+0x45>
    165d:	e8 b5 05 00 00       	call   1c17 <explode_bomb>
    1662:	eb ef                	jmp    1653 <phase_2+0x28>
    1664:	83 c3 01             	add    $0x1,%ebx
    1667:	48 83 c5 04          	add    $0x4,%rbp
    166b:	83 fb 06             	cmp    $0x6,%ebx
    166e:	74 11                	je     1681 <phase_2+0x56>
    1670:	89 d8                	mov    %ebx,%eax
    1672:	03 45 00             	add    0x0(%rbp),%eax
    1675:	39 45 04             	cmp    %eax,0x4(%rbp)
    1678:	74 ea                	je     1664 <phase_2+0x39>
    167a:	e8 98 05 00 00       	call   1c17 <explode_bomb>
    167f:	eb e3                	jmp    1664 <phase_2+0x39>
    1681:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1686:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    168d:	00 00 
    168f:	75 07                	jne    1698 <phase_2+0x6d>
    1691:	48 83 c4 28          	add    $0x28,%rsp
    1695:	5b                   	pop    %rbx
    1696:	5d                   	pop    %rbp
    1697:	c3                   	ret    
    1698:	e8 c3 fb ff ff       	call   1260 <_init+0x260>

000000000000169d <phase_3>:
    169d:	f3 0f 1e fa          	endbr64 
    16a1:	48 83 ec 18          	sub    $0x18,%rsp
    16a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16ac:	00 00 
    16ae:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    16b3:	31 c0                	xor    %eax,%eax
    16b5:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    16ba:	48 89 e2             	mov    %rsp,%rdx
    16bd:	48 8d 35 11 1a 00 00 	lea    0x1a11(%rip),%rsi        # 30d5 <_IO_stdin_used+0xd5>
    16c4:	e8 47 fc ff ff       	call   1310 <_init+0x310>
    16c9:	83 f8 01             	cmp    $0x1,%eax
    16cc:	7e 1a                	jle    16e8 <phase_3+0x4b>
    16ce:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    16d2:	77 65                	ja     1739 <phase_3+0x9c>
    16d4:	8b 04 24             	mov    (%rsp),%eax
    16d7:	48 8d 15 e2 1d 00 00 	lea    0x1de2(%rip),%rdx        # 34c0 <_IO_stdin_used+0x4c0>
    16de:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    16e2:	48 01 d0             	add    %rdx,%rax
    16e5:	3e ff e0             	notrack jmp *%rax
    16e8:	e8 2a 05 00 00       	call   1c17 <explode_bomb>
    16ed:	eb df                	jmp    16ce <phase_3+0x31>
    16ef:	b8 d8 00 00 00       	mov    $0xd8,%eax
    16f4:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    16f8:	75 52                	jne    174c <phase_3+0xaf>
    16fa:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    16ff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1706:	00 00 
    1708:	75 49                	jne    1753 <phase_3+0xb6>
    170a:	48 83 c4 18          	add    $0x18,%rsp
    170e:	c3                   	ret    
    170f:	b8 a2 02 00 00       	mov    $0x2a2,%eax
    1714:	eb de                	jmp    16f4 <phase_3+0x57>
    1716:	b8 dc 03 00 00       	mov    $0x3dc,%eax
    171b:	eb d7                	jmp    16f4 <phase_3+0x57>
    171d:	b8 df 03 00 00       	mov    $0x3df,%eax
    1722:	eb d0                	jmp    16f4 <phase_3+0x57>
    1724:	b8 ab 01 00 00       	mov    $0x1ab,%eax
    1729:	eb c9                	jmp    16f4 <phase_3+0x57>
    172b:	b8 77 01 00 00       	mov    $0x177,%eax
    1730:	eb c2                	jmp    16f4 <phase_3+0x57>
    1732:	b8 5d 03 00 00       	mov    $0x35d,%eax
    1737:	eb bb                	jmp    16f4 <phase_3+0x57>
    1739:	e8 d9 04 00 00       	call   1c17 <explode_bomb>
    173e:	b8 00 00 00 00       	mov    $0x0,%eax
    1743:	eb af                	jmp    16f4 <phase_3+0x57>
    1745:	b8 9b 01 00 00       	mov    $0x19b,%eax
    174a:	eb a8                	jmp    16f4 <phase_3+0x57>
    174c:	e8 c6 04 00 00       	call   1c17 <explode_bomb>
    1751:	eb a7                	jmp    16fa <phase_3+0x5d>
    1753:	e8 08 fb ff ff       	call   1260 <_init+0x260>

0000000000001758 <func4>:
    1758:	f3 0f 1e fa          	endbr64 
    175c:	53                   	push   %rbx
    175d:	89 d0                	mov    %edx,%eax
    175f:	29 f0                	sub    %esi,%eax
    1761:	89 c3                	mov    %eax,%ebx
    1763:	c1 eb 1f             	shr    $0x1f,%ebx
    1766:	01 c3                	add    %eax,%ebx
    1768:	d1 fb                	sar    %ebx
    176a:	01 f3                	add    %esi,%ebx
    176c:	39 fb                	cmp    %edi,%ebx
    176e:	7f 06                	jg     1776 <func4+0x1e>
    1770:	7c 10                	jl     1782 <func4+0x2a>
    1772:	89 d8                	mov    %ebx,%eax
    1774:	5b                   	pop    %rbx
    1775:	c3                   	ret    
    1776:	8d 53 ff             	lea    -0x1(%rbx),%edx
    1779:	e8 da ff ff ff       	call   1758 <func4>
    177e:	01 c3                	add    %eax,%ebx
    1780:	eb f0                	jmp    1772 <func4+0x1a>
    1782:	8d 73 01             	lea    0x1(%rbx),%esi
    1785:	e8 ce ff ff ff       	call   1758 <func4>
    178a:	01 c3                	add    %eax,%ebx
    178c:	eb e4                	jmp    1772 <func4+0x1a>

000000000000178e <phase_4>:
    178e:	f3 0f 1e fa          	endbr64 
    1792:	48 83 ec 18          	sub    $0x18,%rsp
    1796:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    179d:	00 00 
    179f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    17a4:	31 c0                	xor    %eax,%eax
    17a6:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    17ab:	48 89 e2             	mov    %rsp,%rdx
    17ae:	48 8d 35 20 19 00 00 	lea    0x1920(%rip),%rsi        # 30d5 <_IO_stdin_used+0xd5>
    17b5:	e8 56 fb ff ff       	call   1310 <_init+0x310>
    17ba:	83 f8 02             	cmp    $0x2,%eax
    17bd:	75 06                	jne    17c5 <phase_4+0x37>
    17bf:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    17c3:	76 05                	jbe    17ca <phase_4+0x3c>
    17c5:	e8 4d 04 00 00       	call   1c17 <explode_bomb>
    17ca:	ba 0e 00 00 00       	mov    $0xe,%edx
    17cf:	be 00 00 00 00       	mov    $0x0,%esi
    17d4:	8b 3c 24             	mov    (%rsp),%edi
    17d7:	e8 7c ff ff ff       	call   1758 <func4>
    17dc:	83 f8 0d             	cmp    $0xd,%eax
    17df:	75 07                	jne    17e8 <phase_4+0x5a>
    17e1:	83 7c 24 04 0d       	cmpl   $0xd,0x4(%rsp)
    17e6:	74 05                	je     17ed <phase_4+0x5f>
    17e8:	e8 2a 04 00 00       	call   1c17 <explode_bomb>
    17ed:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    17f2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17f9:	00 00 
    17fb:	75 05                	jne    1802 <phase_4+0x74>
    17fd:	48 83 c4 18          	add    $0x18,%rsp
    1801:	c3                   	ret    
    1802:	e8 59 fa ff ff       	call   1260 <_init+0x260>

0000000000001807 <phase_5>:
    1807:	f3 0f 1e fa          	endbr64 
    180b:	53                   	push   %rbx
    180c:	48 89 fb             	mov    %rdi,%rbx
    180f:	e8 bf 02 00 00       	call   1ad3 <string_length>
    1814:	83 f8 06             	cmp    $0x6,%eax
    1817:	75 2c                	jne    1845 <phase_5+0x3e>
    1819:	48 89 d8             	mov    %rbx,%rax
    181c:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1820:	b9 00 00 00 00       	mov    $0x0,%ecx
    1825:	48 8d 35 b4 1c 00 00 	lea    0x1cb4(%rip),%rsi        # 34e0 <array.0>
    182c:	0f b6 10             	movzbl (%rax),%edx
    182f:	83 e2 0f             	and    $0xf,%edx
    1832:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1835:	48 83 c0 01          	add    $0x1,%rax
    1839:	48 39 f8             	cmp    %rdi,%rax
    183c:	75 ee                	jne    182c <phase_5+0x25>
    183e:	83 f9 3a             	cmp    $0x3a,%ecx
    1841:	75 09                	jne    184c <phase_5+0x45>
    1843:	5b                   	pop    %rbx
    1844:	c3                   	ret    
    1845:	e8 cd 03 00 00       	call   1c17 <explode_bomb>
    184a:	eb cd                	jmp    1819 <phase_5+0x12>
    184c:	e8 c6 03 00 00       	call   1c17 <explode_bomb>
    1851:	eb f0                	jmp    1843 <phase_5+0x3c>

0000000000001853 <phase_6>:
    1853:	f3 0f 1e fa          	endbr64 
    1857:	41 56                	push   %r14
    1859:	41 55                	push   %r13
    185b:	41 54                	push   %r12
    185d:	55                   	push   %rbp
    185e:	53                   	push   %rbx
    185f:	48 83 ec 60          	sub    $0x60,%rsp
    1863:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    186a:	00 00 
    186c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1871:	31 c0                	xor    %eax,%eax
    1873:	49 89 e5             	mov    %rsp,%r13
    1876:	4c 89 ee             	mov    %r13,%rsi
    1879:	e8 c5 03 00 00       	call   1c43 <read_six_numbers>
    187e:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1884:	49 89 e4             	mov    %rsp,%r12
    1887:	e9 d4 00 00 00       	jmp    1960 <phase_6+0x10d>
    188c:	e8 86 03 00 00       	call   1c17 <explode_bomb>
    1891:	41 83 fe 05          	cmp    $0x5,%r14d
    1895:	0f 8e e2 00 00 00    	jle    197d <phase_6+0x12a>
    189b:	eb 27                	jmp    18c4 <phase_6+0x71>
    189d:	48 83 c3 01          	add    $0x1,%rbx
    18a1:	83 fb 05             	cmp    $0x5,%ebx
    18a4:	0f 8f ae 00 00 00    	jg     1958 <phase_6+0x105>
    18aa:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    18ae:	39 45 00             	cmp    %eax,0x0(%rbp)
    18b1:	75 ea                	jne    189d <phase_6+0x4a>
    18b3:	e8 5f 03 00 00       	call   1c17 <explode_bomb>
    18b8:	eb e3                	jmp    189d <phase_6+0x4a>
    18ba:	49 83 c6 01          	add    $0x1,%r14
    18be:	49 83 fe 07          	cmp    $0x7,%r14
    18c2:	75 74                	jne    1938 <phase_6+0xe5>
    18c4:	be 00 00 00 00       	mov    $0x0,%esi
    18c9:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    18cc:	b8 01 00 00 00       	mov    $0x1,%eax
    18d1:	48 8d 15 38 39 00 00 	lea    0x3938(%rip),%rdx        # 5210 <node1>
    18d8:	83 f9 01             	cmp    $0x1,%ecx
    18db:	7e 0b                	jle    18e8 <phase_6+0x95>
    18dd:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    18e1:	83 c0 01             	add    $0x1,%eax
    18e4:	39 c8                	cmp    %ecx,%eax
    18e6:	75 f5                	jne    18dd <phase_6+0x8a>
    18e8:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    18ed:	48 83 c6 01          	add    $0x1,%rsi
    18f1:	48 83 fe 06          	cmp    $0x6,%rsi
    18f5:	75 d2                	jne    18c9 <phase_6+0x76>
    18f7:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    18fc:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1901:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1905:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    190a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    190e:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1913:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1917:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    191c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1920:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1925:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1929:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1930:	00 
    1931:	bd 05 00 00 00       	mov    $0x5,%ebp
    1936:	eb 0f                	jmp    1947 <phase_6+0xf4>
    1938:	49 83 c5 04          	add    $0x4,%r13
    193c:	eb 22                	jmp    1960 <phase_6+0x10d>
    193e:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1942:	83 ed 01             	sub    $0x1,%ebp
    1945:	74 3e                	je     1985 <phase_6+0x132>
    1947:	48 8b 43 08          	mov    0x8(%rbx),%rax
    194b:	8b 00                	mov    (%rax),%eax
    194d:	39 03                	cmp    %eax,(%rbx)
    194f:	7e ed                	jle    193e <phase_6+0xeb>
    1951:	e8 c1 02 00 00       	call   1c17 <explode_bomb>
    1956:	eb e6                	jmp    193e <phase_6+0xeb>
    1958:	49 83 c5 04          	add    $0x4,%r13
    195c:	49 83 c6 01          	add    $0x1,%r14
    1960:	4c 89 ed             	mov    %r13,%rbp
    1963:	41 8b 45 00          	mov    0x0(%r13),%eax
    1967:	83 e8 01             	sub    $0x1,%eax
    196a:	83 f8 05             	cmp    $0x5,%eax
    196d:	0f 87 19 ff ff ff    	ja     188c <phase_6+0x39>
    1973:	41 83 fe 05          	cmp    $0x5,%r14d
    1977:	0f 8f 3d ff ff ff    	jg     18ba <phase_6+0x67>
    197d:	4c 89 f3             	mov    %r14,%rbx
    1980:	e9 25 ff ff ff       	jmp    18aa <phase_6+0x57>
    1985:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    198a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1991:	00 00 
    1993:	75 0d                	jne    19a2 <phase_6+0x14f>
    1995:	48 83 c4 60          	add    $0x60,%rsp
    1999:	5b                   	pop    %rbx
    199a:	5d                   	pop    %rbp
    199b:	41 5c                	pop    %r12
    199d:	41 5d                	pop    %r13
    199f:	41 5e                	pop    %r14
    19a1:	c3                   	ret    
    19a2:	e8 b9 f8 ff ff       	call   1260 <_init+0x260>

00000000000019a7 <fun7>:
    19a7:	f3 0f 1e fa          	endbr64 
    19ab:	48 85 ff             	test   %rdi,%rdi
    19ae:	74 32                	je     19e2 <fun7+0x3b>
    19b0:	48 83 ec 08          	sub    $0x8,%rsp
    19b4:	8b 17                	mov    (%rdi),%edx
    19b6:	39 f2                	cmp    %esi,%edx
    19b8:	7f 0c                	jg     19c6 <fun7+0x1f>
    19ba:	b8 00 00 00 00       	mov    $0x0,%eax
    19bf:	75 12                	jne    19d3 <fun7+0x2c>
    19c1:	48 83 c4 08          	add    $0x8,%rsp
    19c5:	c3                   	ret    
    19c6:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    19ca:	e8 d8 ff ff ff       	call   19a7 <fun7>
    19cf:	01 c0                	add    %eax,%eax
    19d1:	eb ee                	jmp    19c1 <fun7+0x1a>
    19d3:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    19d7:	e8 cb ff ff ff       	call   19a7 <fun7>
    19dc:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    19e0:	eb df                	jmp    19c1 <fun7+0x1a>
    19e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    19e7:	c3                   	ret    

00000000000019e8 <secret_phase>:
    19e8:	f3 0f 1e fa          	endbr64 
    19ec:	53                   	push   %rbx
    19ed:	e8 96 02 00 00       	call   1c88 <read_line>
    19f2:	48 89 c7             	mov    %rax,%rdi
    19f5:	ba 0a 00 00 00       	mov    $0xa,%edx
    19fa:	be 00 00 00 00       	mov    $0x0,%esi
    19ff:	e8 ec f8 ff ff       	call   12f0 <_init+0x2f0>
    1a04:	89 c3                	mov    %eax,%ebx
    1a06:	83 e8 01             	sub    $0x1,%eax
    1a09:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1a0e:	77 26                	ja     1a36 <secret_phase+0x4e>
    1a10:	89 de                	mov    %ebx,%esi
    1a12:	48 8d 3d 17 37 00 00 	lea    0x3717(%rip),%rdi        # 5130 <n1>
    1a19:	e8 89 ff ff ff       	call   19a7 <fun7>
    1a1e:	83 f8 06             	cmp    $0x6,%eax
    1a21:	75 1a                	jne    1a3d <secret_phase+0x55>
    1a23:	48 8d 3d ce 18 00 00 	lea    0x18ce(%rip),%rdi        # 32f8 <_IO_stdin_used+0x2f8>
    1a2a:	e8 01 f8 ff ff       	call   1230 <_init+0x230>
    1a2f:	e8 96 03 00 00       	call   1dca <phase_defused>
    1a34:	5b                   	pop    %rbx
    1a35:	c3                   	ret    
    1a36:	e8 dc 01 00 00       	call   1c17 <explode_bomb>
    1a3b:	eb d3                	jmp    1a10 <secret_phase+0x28>
    1a3d:	e8 d5 01 00 00       	call   1c17 <explode_bomb>
    1a42:	eb df                	jmp    1a23 <secret_phase+0x3b>

0000000000001a44 <sig_handler>:
    1a44:	f3 0f 1e fa          	endbr64 
    1a48:	50                   	push   %rax
    1a49:	58                   	pop    %rax
    1a4a:	48 83 ec 08          	sub    $0x8,%rsp
    1a4e:	48 8d 3d cb 18 00 00 	lea    0x18cb(%rip),%rdi        # 3320 <_IO_stdin_used+0x320>
    1a55:	e8 d6 f7 ff ff       	call   1230 <_init+0x230>
    1a5a:	bf 03 00 00 00       	mov    $0x3,%edi
    1a5f:	e8 1c f9 ff ff       	call   1380 <_init+0x380>
    1a64:	48 8d 35 1d 16 00 00 	lea    0x161d(%rip),%rsi        # 3088 <_IO_stdin_used+0x88>
    1a6b:	bf 02 00 00 00       	mov    $0x2,%edi
    1a70:	b8 00 00 00 00       	mov    $0x0,%eax
    1a75:	e8 b6 f8 ff ff       	call   1330 <_init+0x330>
    1a7a:	48 8b 3d df 3b 00 00 	mov    0x3bdf(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1a81:	e8 7a f8 ff ff       	call   1300 <_init+0x300>
    1a86:	bf 01 00 00 00       	mov    $0x1,%edi
    1a8b:	e8 f0 f8 ff ff       	call   1380 <_init+0x380>
    1a90:	48 8d 3d f9 15 00 00 	lea    0x15f9(%rip),%rdi        # 3090 <_IO_stdin_used+0x90>
    1a97:	e8 94 f7 ff ff       	call   1230 <_init+0x230>
    1a9c:	bf 10 00 00 00       	mov    $0x10,%edi
    1aa1:	e8 aa f8 ff ff       	call   1350 <_init+0x350>

0000000000001aa6 <invalid_phase>:
    1aa6:	f3 0f 1e fa          	endbr64 
    1aaa:	50                   	push   %rax
    1aab:	58                   	pop    %rax
    1aac:	48 83 ec 08          	sub    $0x8,%rsp
    1ab0:	48 89 fa             	mov    %rdi,%rdx
    1ab3:	48 8d 35 de 15 00 00 	lea    0x15de(%rip),%rsi        # 3098 <_IO_stdin_used+0x98>
    1aba:	bf 02 00 00 00       	mov    $0x2,%edi
    1abf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ac4:	e8 67 f8 ff ff       	call   1330 <_init+0x330>
    1ac9:	bf 08 00 00 00       	mov    $0x8,%edi
    1ace:	e8 7d f8 ff ff       	call   1350 <_init+0x350>

0000000000001ad3 <string_length>:
    1ad3:	f3 0f 1e fa          	endbr64 
    1ad7:	80 3f 00             	cmpb   $0x0,(%rdi)
    1ada:	74 12                	je     1aee <string_length+0x1b>
    1adc:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae1:	48 83 c7 01          	add    $0x1,%rdi
    1ae5:	83 c0 01             	add    $0x1,%eax
    1ae8:	80 3f 00             	cmpb   $0x0,(%rdi)
    1aeb:	75 f4                	jne    1ae1 <string_length+0xe>
    1aed:	c3                   	ret    
    1aee:	b8 00 00 00 00       	mov    $0x0,%eax
    1af3:	c3                   	ret    

0000000000001af4 <strings_not_equal>:
    1af4:	f3 0f 1e fa          	endbr64 
    1af8:	41 54                	push   %r12
    1afa:	55                   	push   %rbp
    1afb:	53                   	push   %rbx
    1afc:	48 89 fb             	mov    %rdi,%rbx
    1aff:	48 89 f5             	mov    %rsi,%rbp
    1b02:	e8 cc ff ff ff       	call   1ad3 <string_length>
    1b07:	41 89 c4             	mov    %eax,%r12d
    1b0a:	48 89 ef             	mov    %rbp,%rdi
    1b0d:	e8 c1 ff ff ff       	call   1ad3 <string_length>
    1b12:	89 c2                	mov    %eax,%edx
    1b14:	b8 01 00 00 00       	mov    $0x1,%eax
    1b19:	41 39 d4             	cmp    %edx,%r12d
    1b1c:	75 31                	jne    1b4f <strings_not_equal+0x5b>
    1b1e:	0f b6 13             	movzbl (%rbx),%edx
    1b21:	84 d2                	test   %dl,%dl
    1b23:	74 1e                	je     1b43 <strings_not_equal+0x4f>
    1b25:	b8 00 00 00 00       	mov    $0x0,%eax
    1b2a:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1b2e:	75 1a                	jne    1b4a <strings_not_equal+0x56>
    1b30:	48 83 c0 01          	add    $0x1,%rax
    1b34:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1b38:	84 d2                	test   %dl,%dl
    1b3a:	75 ee                	jne    1b2a <strings_not_equal+0x36>
    1b3c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b41:	eb 0c                	jmp    1b4f <strings_not_equal+0x5b>
    1b43:	b8 00 00 00 00       	mov    $0x0,%eax
    1b48:	eb 05                	jmp    1b4f <strings_not_equal+0x5b>
    1b4a:	b8 01 00 00 00       	mov    $0x1,%eax
    1b4f:	5b                   	pop    %rbx
    1b50:	5d                   	pop    %rbp
    1b51:	41 5c                	pop    %r12
    1b53:	c3                   	ret    

0000000000001b54 <initialize_bomb>:
    1b54:	f3 0f 1e fa          	endbr64 
    1b58:	48 83 ec 08          	sub    $0x8,%rsp
    1b5c:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 1a44 <sig_handler>
    1b63:	bf 02 00 00 00       	mov    $0x2,%edi
    1b68:	e8 43 f7 ff ff       	call   12b0 <_init+0x2b0>
    1b6d:	48 83 c4 08          	add    $0x8,%rsp
    1b71:	c3                   	ret    

0000000000001b72 <initialize_bomb_solve>:
    1b72:	f3 0f 1e fa          	endbr64 
    1b76:	c3                   	ret    

0000000000001b77 <blank_line>:
    1b77:	f3 0f 1e fa          	endbr64 
    1b7b:	55                   	push   %rbp
    1b7c:	53                   	push   %rbx
    1b7d:	48 83 ec 08          	sub    $0x8,%rsp
    1b81:	48 89 fd             	mov    %rdi,%rbp
    1b84:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b88:	84 db                	test   %bl,%bl
    1b8a:	74 1e                	je     1baa <blank_line+0x33>
    1b8c:	e8 ff f7 ff ff       	call   1390 <_init+0x390>
    1b91:	48 83 c5 01          	add    $0x1,%rbp
    1b95:	48 0f be db          	movsbq %bl,%rbx
    1b99:	48 8b 00             	mov    (%rax),%rax
    1b9c:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1ba1:	75 e1                	jne    1b84 <blank_line+0xd>
    1ba3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba8:	eb 05                	jmp    1baf <blank_line+0x38>
    1baa:	b8 01 00 00 00       	mov    $0x1,%eax
    1baf:	48 83 c4 08          	add    $0x8,%rsp
    1bb3:	5b                   	pop    %rbx
    1bb4:	5d                   	pop    %rbp
    1bb5:	c3                   	ret    

0000000000001bb6 <skip>:
    1bb6:	f3 0f 1e fa          	endbr64 
    1bba:	55                   	push   %rbp
    1bbb:	53                   	push   %rbx
    1bbc:	48 83 ec 08          	sub    $0x8,%rsp
    1bc0:	48 8d 1d 39 3b 00 00 	lea    0x3b39(%rip),%rbx        # 5700 <input_strings>
    1bc7:	48 63 05 22 3b 00 00 	movslq 0x3b22(%rip),%rax        # 56f0 <num_input_strings>
    1bce:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1bd2:	48 c1 e7 04          	shl    $0x4,%rdi
    1bd6:	be 40 06 00 00       	mov    $0x640,%esi
    1bdb:	48 39 f7             	cmp    %rsi,%rdi
    1bde:	48 0f 43 f7          	cmovae %rdi,%rsi
    1be2:	48 29 fe             	sub    %rdi,%rsi
    1be5:	48 01 df             	add    %rbx,%rdi
    1be8:	48 8b 0d a1 3a 00 00 	mov    0x3aa1(%rip),%rcx        # 5690 <infile>
    1bef:	ba 50 00 00 00       	mov    $0x50,%edx
    1bf4:	e8 27 f7 ff ff       	call   1320 <_init+0x320>
    1bf9:	48 89 c5             	mov    %rax,%rbp
    1bfc:	48 85 c0             	test   %rax,%rax
    1bff:	74 0c                	je     1c0d <skip+0x57>
    1c01:	48 89 c7             	mov    %rax,%rdi
    1c04:	e8 6e ff ff ff       	call   1b77 <blank_line>
    1c09:	85 c0                	test   %eax,%eax
    1c0b:	75 ba                	jne    1bc7 <skip+0x11>
    1c0d:	48 89 e8             	mov    %rbp,%rax
    1c10:	48 83 c4 08          	add    $0x8,%rsp
    1c14:	5b                   	pop    %rbx
    1c15:	5d                   	pop    %rbp
    1c16:	c3                   	ret    

0000000000001c17 <explode_bomb>:
    1c17:	f3 0f 1e fa          	endbr64 
    1c1b:	50                   	push   %rax
    1c1c:	58                   	pop    %rax
    1c1d:	48 83 ec 08          	sub    $0x8,%rsp
    1c21:	48 8d 3d 81 14 00 00 	lea    0x1481(%rip),%rdi        # 30a9 <_IO_stdin_used+0xa9>
    1c28:	e8 03 f6 ff ff       	call   1230 <_init+0x230>
    1c2d:	48 8d 3d 7e 14 00 00 	lea    0x147e(%rip),%rdi        # 30b2 <_IO_stdin_used+0xb2>
    1c34:	e8 f7 f5 ff ff       	call   1230 <_init+0x230>
    1c39:	bf 08 00 00 00       	mov    $0x8,%edi
    1c3e:	e8 0d f7 ff ff       	call   1350 <_init+0x350>

0000000000001c43 <read_six_numbers>:
    1c43:	f3 0f 1e fa          	endbr64 
    1c47:	48 83 ec 08          	sub    $0x8,%rsp
    1c4b:	48 89 f2             	mov    %rsi,%rdx
    1c4e:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c52:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c56:	50                   	push   %rax
    1c57:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c5b:	50                   	push   %rax
    1c5c:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c60:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c64:	48 8d 35 5e 14 00 00 	lea    0x145e(%rip),%rsi        # 30c9 <_IO_stdin_used+0xc9>
    1c6b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c70:	e8 9b f6 ff ff       	call   1310 <_init+0x310>
    1c75:	48 83 c4 10          	add    $0x10,%rsp
    1c79:	83 f8 05             	cmp    $0x5,%eax
    1c7c:	7e 05                	jle    1c83 <read_six_numbers+0x40>
    1c7e:	48 83 c4 08          	add    $0x8,%rsp
    1c82:	c3                   	ret    
    1c83:	e8 8f ff ff ff       	call   1c17 <explode_bomb>

0000000000001c88 <read_line>:
    1c88:	f3 0f 1e fa          	endbr64 
    1c8c:	55                   	push   %rbp
    1c8d:	53                   	push   %rbx
    1c8e:	48 83 ec 08          	sub    $0x8,%rsp
    1c92:	b8 00 00 00 00       	mov    $0x0,%eax
    1c97:	e8 1a ff ff ff       	call   1bb6 <skip>
    1c9c:	48 85 c0             	test   %rax,%rax
    1c9f:	74 5d                	je     1cfe <read_line+0x76>
    1ca1:	8b 2d 49 3a 00 00    	mov    0x3a49(%rip),%ebp        # 56f0 <num_input_strings>
    1ca7:	48 63 c5             	movslq %ebp,%rax
    1caa:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1cae:	48 c1 e3 04          	shl    $0x4,%rbx
    1cb2:	48 8d 05 47 3a 00 00 	lea    0x3a47(%rip),%rax        # 5700 <input_strings>
    1cb9:	48 01 c3             	add    %rax,%rbx
    1cbc:	48 89 df             	mov    %rbx,%rdi
    1cbf:	e8 8c f5 ff ff       	call   1250 <_init+0x250>
    1cc4:	83 f8 4e             	cmp    $0x4e,%eax
    1cc7:	0f 8f a9 00 00 00    	jg     1d76 <read_line+0xee>
    1ccd:	83 e8 01             	sub    $0x1,%eax
    1cd0:	48 98                	cltq   
    1cd2:	48 63 d5             	movslq %ebp,%rdx
    1cd5:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1cd9:	48 c1 e1 04          	shl    $0x4,%rcx
    1cdd:	48 8d 15 1c 3a 00 00 	lea    0x3a1c(%rip),%rdx        # 5700 <input_strings>
    1ce4:	48 01 ca             	add    %rcx,%rdx
    1ce7:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1ceb:	83 c5 01             	add    $0x1,%ebp
    1cee:	89 2d fc 39 00 00    	mov    %ebp,0x39fc(%rip)        # 56f0 <num_input_strings>
    1cf4:	48 89 d8             	mov    %rbx,%rax
    1cf7:	48 83 c4 08          	add    $0x8,%rsp
    1cfb:	5b                   	pop    %rbx
    1cfc:	5d                   	pop    %rbp
    1cfd:	c3                   	ret    
    1cfe:	48 8b 05 6b 39 00 00 	mov    0x396b(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1d05:	48 39 05 84 39 00 00 	cmp    %rax,0x3984(%rip)        # 5690 <infile>
    1d0c:	74 1b                	je     1d29 <read_line+0xa1>
    1d0e:	48 8d 3d e4 13 00 00 	lea    0x13e4(%rip),%rdi        # 30f9 <_IO_stdin_used+0xf9>
    1d15:	e8 e6 f4 ff ff       	call   1200 <_init+0x200>
    1d1a:	48 85 c0             	test   %rax,%rax
    1d1d:	74 20                	je     1d3f <read_line+0xb7>
    1d1f:	bf 00 00 00 00       	mov    $0x0,%edi
    1d24:	e8 27 f6 ff ff       	call   1350 <_init+0x350>
    1d29:	48 8d 3d ab 13 00 00 	lea    0x13ab(%rip),%rdi        # 30db <_IO_stdin_used+0xdb>
    1d30:	e8 fb f4 ff ff       	call   1230 <_init+0x230>
    1d35:	bf 08 00 00 00       	mov    $0x8,%edi
    1d3a:	e8 11 f6 ff ff       	call   1350 <_init+0x350>
    1d3f:	48 8b 05 2a 39 00 00 	mov    0x392a(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1d46:	48 89 05 43 39 00 00 	mov    %rax,0x3943(%rip)        # 5690 <infile>
    1d4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d52:	e8 5f fe ff ff       	call   1bb6 <skip>
    1d57:	48 85 c0             	test   %rax,%rax
    1d5a:	0f 85 41 ff ff ff    	jne    1ca1 <read_line+0x19>
    1d60:	48 8d 3d 74 13 00 00 	lea    0x1374(%rip),%rdi        # 30db <_IO_stdin_used+0xdb>
    1d67:	e8 c4 f4 ff ff       	call   1230 <_init+0x230>
    1d6c:	bf 00 00 00 00       	mov    $0x0,%edi
    1d71:	e8 da f5 ff ff       	call   1350 <_init+0x350>
    1d76:	48 8d 3d 87 13 00 00 	lea    0x1387(%rip),%rdi        # 3104 <_IO_stdin_used+0x104>
    1d7d:	e8 ae f4 ff ff       	call   1230 <_init+0x230>
    1d82:	8b 05 68 39 00 00    	mov    0x3968(%rip),%eax        # 56f0 <num_input_strings>
    1d88:	8d 50 01             	lea    0x1(%rax),%edx
    1d8b:	89 15 5f 39 00 00    	mov    %edx,0x395f(%rip)        # 56f0 <num_input_strings>
    1d91:	48 98                	cltq   
    1d93:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d97:	ba 40 06 00 00       	mov    $0x640,%edx
    1d9c:	48 39 d0             	cmp    %rdx,%rax
    1d9f:	48 0f 43 d0          	cmovae %rax,%rdx
    1da3:	48 89 d1             	mov    %rdx,%rcx
    1da6:	48 29 c1             	sub    %rax,%rcx
    1da9:	48 8d 15 50 39 00 00 	lea    0x3950(%rip),%rdx        # 5700 <input_strings>
    1db0:	48 8d 3c 10          	lea    (%rax,%rdx,1),%rdi
    1db4:	ba 10 00 00 00       	mov    $0x10,%edx
    1db9:	48 8d 35 5f 13 00 00 	lea    0x135f(%rip),%rsi        # 311f <_IO_stdin_used+0x11f>
    1dc0:	e8 1b f5 ff ff       	call   12e0 <_init+0x2e0>
    1dc5:	e8 4d fe ff ff       	call   1c17 <explode_bomb>

0000000000001dca <phase_defused>:
    1dca:	f3 0f 1e fa          	endbr64 
    1dce:	48 83 ec 78          	sub    $0x78,%rsp
    1dd2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dd9:	00 00 
    1ddb:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1de0:	31 c0                	xor    %eax,%eax
    1de2:	83 3d 07 39 00 00 06 	cmpl   $0x6,0x3907(%rip)        # 56f0 <num_input_strings>
    1de9:	74 15                	je     1e00 <phase_defused+0x36>
    1deb:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1df0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1df7:	00 00 
    1df9:	75 73                	jne    1e6e <phase_defused+0xa4>
    1dfb:	48 83 c4 78          	add    $0x78,%rsp
    1dff:	c3                   	ret    
    1e00:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1e05:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e0a:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e0f:	48 8d 35 19 13 00 00 	lea    0x1319(%rip),%rsi        # 312f <_IO_stdin_used+0x12f>
    1e16:	48 8d 3d d3 39 00 00 	lea    0x39d3(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1e1d:	e8 ee f4 ff ff       	call   1310 <_init+0x310>
    1e22:	83 f8 03             	cmp    $0x3,%eax
    1e25:	74 0e                	je     1e35 <phase_defused+0x6b>
    1e27:	48 8d 3d 8a 15 00 00 	lea    0x158a(%rip),%rdi        # 33b8 <_IO_stdin_used+0x3b8>
    1e2e:	e8 fd f3 ff ff       	call   1230 <_init+0x230>
    1e33:	eb b6                	jmp    1deb <phase_defused+0x21>
    1e35:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e3a:	48 8d 35 f7 12 00 00 	lea    0x12f7(%rip),%rsi        # 3138 <_IO_stdin_used+0x138>
    1e41:	e8 ae fc ff ff       	call   1af4 <strings_not_equal>
    1e46:	85 c0                	test   %eax,%eax
    1e48:	75 dd                	jne    1e27 <phase_defused+0x5d>
    1e4a:	48 8d 3d 07 15 00 00 	lea    0x1507(%rip),%rdi        # 3358 <_IO_stdin_used+0x358>
    1e51:	e8 da f3 ff ff       	call   1230 <_init+0x230>
    1e56:	48 8d 3d 23 15 00 00 	lea    0x1523(%rip),%rdi        # 3380 <_IO_stdin_used+0x380>
    1e5d:	e8 ce f3 ff ff       	call   1230 <_init+0x230>
    1e62:	b8 00 00 00 00       	mov    $0x0,%eax
    1e67:	e8 7c fb ff ff       	call   19e8 <secret_phase>
    1e6c:	eb b9                	jmp    1e27 <phase_defused+0x5d>
    1e6e:	e8 ed f3 ff ff       	call   1260 <_init+0x260>

0000000000001e73 <sigalrm_handler>:
    1e73:	f3 0f 1e fa          	endbr64 
    1e77:	50                   	push   %rax
    1e78:	58                   	pop    %rax
    1e79:	48 83 ec 08          	sub    $0x8,%rsp
    1e7d:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e82:	48 8d 15 5f 15 00 00 	lea    0x155f(%rip),%rdx        # 33e8 <_IO_stdin_used+0x3e8>
    1e89:	be 02 00 00 00       	mov    $0x2,%esi
    1e8e:	48 8b 3d eb 37 00 00 	mov    0x37eb(%rip),%rdi        # 5680 <stderr@GLIBC_2.2.5>
    1e95:	b8 00 00 00 00       	mov    $0x0,%eax
    1e9a:	e8 d1 f4 ff ff       	call   1370 <_init+0x370>
    1e9f:	bf 01 00 00 00       	mov    $0x1,%edi
    1ea4:	e8 a7 f4 ff ff       	call   1350 <_init+0x350>

0000000000001ea9 <rio_readlineb>:
    1ea9:	41 56                	push   %r14
    1eab:	41 55                	push   %r13
    1ead:	41 54                	push   %r12
    1eaf:	55                   	push   %rbp
    1eb0:	53                   	push   %rbx
    1eb1:	49 89 f4             	mov    %rsi,%r12
    1eb4:	48 83 fa 01          	cmp    $0x1,%rdx
    1eb8:	0f 86 90 00 00 00    	jbe    1f4e <rio_readlineb+0xa5>
    1ebe:	48 89 fb             	mov    %rdi,%rbx
    1ec1:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1ec6:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1ecc:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1ed0:	eb 54                	jmp    1f26 <rio_readlineb+0x7d>
    1ed2:	e8 39 f3 ff ff       	call   1210 <_init+0x210>
    1ed7:	83 38 04             	cmpl   $0x4,(%rax)
    1eda:	75 53                	jne    1f2f <rio_readlineb+0x86>
    1edc:	8b 3b                	mov    (%rbx),%edi
    1ede:	ba 00 20 00 00       	mov    $0x2000,%edx
    1ee3:	48 89 ee             	mov    %rbp,%rsi
    1ee6:	e8 a5 f3 ff ff       	call   1290 <_init+0x290>
    1eeb:	89 c2                	mov    %eax,%edx
    1eed:	89 43 04             	mov    %eax,0x4(%rbx)
    1ef0:	85 c0                	test   %eax,%eax
    1ef2:	78 de                	js     1ed2 <rio_readlineb+0x29>
    1ef4:	74 42                	je     1f38 <rio_readlineb+0x8f>
    1ef6:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1efa:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1efe:	0f b6 08             	movzbl (%rax),%ecx
    1f01:	48 83 c0 01          	add    $0x1,%rax
    1f05:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1f09:	83 ea 01             	sub    $0x1,%edx
    1f0c:	89 53 04             	mov    %edx,0x4(%rbx)
    1f0f:	49 83 c4 01          	add    $0x1,%r12
    1f13:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f18:	80 f9 0a             	cmp    $0xa,%cl
    1f1b:	74 3c                	je     1f59 <rio_readlineb+0xb0>
    1f1d:	41 83 c5 01          	add    $0x1,%r13d
    1f21:	4d 39 f4             	cmp    %r14,%r12
    1f24:	74 30                	je     1f56 <rio_readlineb+0xad>
    1f26:	8b 53 04             	mov    0x4(%rbx),%edx
    1f29:	85 d2                	test   %edx,%edx
    1f2b:	7e af                	jle    1edc <rio_readlineb+0x33>
    1f2d:	eb cb                	jmp    1efa <rio_readlineb+0x51>
    1f2f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f36:	eb 05                	jmp    1f3d <rio_readlineb+0x94>
    1f38:	b8 00 00 00 00       	mov    $0x0,%eax
    1f3d:	85 c0                	test   %eax,%eax
    1f3f:	75 29                	jne    1f6a <rio_readlineb+0xc1>
    1f41:	b8 00 00 00 00       	mov    $0x0,%eax
    1f46:	41 83 fd 01          	cmp    $0x1,%r13d
    1f4a:	75 0d                	jne    1f59 <rio_readlineb+0xb0>
    1f4c:	eb 13                	jmp    1f61 <rio_readlineb+0xb8>
    1f4e:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f54:	eb 03                	jmp    1f59 <rio_readlineb+0xb0>
    1f56:	4d 89 f4             	mov    %r14,%r12
    1f59:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1f5e:	49 63 c5             	movslq %r13d,%rax
    1f61:	5b                   	pop    %rbx
    1f62:	5d                   	pop    %rbp
    1f63:	41 5c                	pop    %r12
    1f65:	41 5d                	pop    %r13
    1f67:	41 5e                	pop    %r14
    1f69:	c3                   	ret    
    1f6a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f71:	eb ee                	jmp    1f61 <rio_readlineb+0xb8>

0000000000001f73 <submitr>:
    1f73:	f3 0f 1e fa          	endbr64 
    1f77:	41 57                	push   %r15
    1f79:	41 56                	push   %r14
    1f7b:	41 55                	push   %r13
    1f7d:	41 54                	push   %r12
    1f7f:	55                   	push   %rbp
    1f80:	53                   	push   %rbx
    1f81:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    1f88:	ff 
    1f89:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1f90:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1f95:	4c 39 dc             	cmp    %r11,%rsp
    1f98:	75 ef                	jne    1f89 <submitr+0x16>
    1f9a:	48 83 ec 68          	sub    $0x68,%rsp
    1f9e:	49 89 fd             	mov    %rdi,%r13
    1fa1:	89 f5                	mov    %esi,%ebp
    1fa3:	48 89 14 24          	mov    %rdx,(%rsp)
    1fa7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1fac:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1fb1:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    1fb6:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    1fbd:	00 
    1fbe:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    1fc5:	00 
    1fc6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1fcd:	00 00 
    1fcf:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    1fd6:	00 
    1fd7:	31 c0                	xor    %eax,%eax
    1fd9:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    1fe0:	00 
    1fe1:	ba 00 00 00 00       	mov    $0x0,%edx
    1fe6:	be 01 00 00 00       	mov    $0x1,%esi
    1feb:	bf 02 00 00 00       	mov    $0x2,%edi
    1ff0:	e8 bb f3 ff ff       	call   13b0 <_init+0x3b0>
    1ff5:	85 c0                	test   %eax,%eax
    1ff7:	0f 88 04 01 00 00    	js     2101 <submitr+0x18e>
    1ffd:	41 89 c4             	mov    %eax,%r12d
    2000:	4c 89 ef             	mov    %r13,%rdi
    2003:	e8 b8 f2 ff ff       	call   12c0 <_init+0x2c0>
    2008:	48 85 c0             	test   %rax,%rax
    200b:	0f 84 3f 01 00 00    	je     2150 <submitr+0x1dd>
    2011:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    2016:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    201d:	00 00 
    201f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    2026:	00 00 
    2028:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    202f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2033:	48 8b 40 18          	mov    0x18(%rax),%rax
    2037:	48 8b 30             	mov    (%rax),%rsi
    203a:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    203f:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2044:	e8 87 f2 ff ff       	call   12d0 <_init+0x2d0>
    2049:	66 c1 c5 08          	rol    $0x8,%bp
    204d:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    2052:	ba 10 00 00 00       	mov    $0x10,%edx
    2057:	4c 89 ee             	mov    %r13,%rsi
    205a:	44 89 e7             	mov    %r12d,%edi
    205d:	e8 fe f2 ff ff       	call   1360 <_init+0x360>
    2062:	85 c0                	test   %eax,%eax
    2064:	0f 88 4b 01 00 00    	js     21b5 <submitr+0x242>
    206a:	48 89 df             	mov    %rbx,%rdi
    206d:	e8 de f1 ff ff       	call   1250 <_init+0x250>
    2072:	48 89 c5             	mov    %rax,%rbp
    2075:	48 8b 3c 24          	mov    (%rsp),%rdi
    2079:	e8 d2 f1 ff ff       	call   1250 <_init+0x250>
    207e:	49 89 c6             	mov    %rax,%r14
    2081:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2086:	e8 c5 f1 ff ff       	call   1250 <_init+0x250>
    208b:	49 89 c5             	mov    %rax,%r13
    208e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2093:	e8 b8 f1 ff ff       	call   1250 <_init+0x250>
    2098:	48 89 c2             	mov    %rax,%rdx
    209b:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    20a2:	00 
    20a3:	48 01 d0             	add    %rdx,%rax
    20a6:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    20ab:	48 01 d0             	add    %rdx,%rax
    20ae:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    20b4:	0f 87 52 01 00 00    	ja     220c <submitr+0x299>
    20ba:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    20c1:	00 
    20c2:	b9 00 04 00 00       	mov    $0x400,%ecx
    20c7:	b8 00 00 00 00       	mov    $0x0,%eax
    20cc:	48 89 d7             	mov    %rdx,%rdi
    20cf:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    20d2:	48 89 df             	mov    %rbx,%rdi
    20d5:	e8 76 f1 ff ff       	call   1250 <_init+0x250>
    20da:	85 c0                	test   %eax,%eax
    20dc:	0f 84 47 02 00 00    	je     2329 <submitr+0x3b6>
    20e2:	8d 40 ff             	lea    -0x1(%rax),%eax
    20e5:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    20ea:	48 8d ac 24 50 40 00 	lea    0x4050(%rsp),%rbp
    20f1:	00 
    20f2:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    20f9:	00 20 00 
    20fc:	e9 99 01 00 00       	jmp    229a <submitr+0x327>
    2101:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2108:	3a 20 43 
    210b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2112:	20 75 6e 
    2115:	49 89 07             	mov    %rax,(%r15)
    2118:	49 89 57 08          	mov    %rdx,0x8(%r15)
    211c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2123:	74 6f 20 
    2126:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    212d:	65 20 73 
    2130:	49 89 47 10          	mov    %rax,0x10(%r15)
    2134:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2138:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
    213f:	65 74 00 
    2142:	49 89 47 1e          	mov    %rax,0x1e(%r15)
    2146:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    214b:	e9 d4 04 00 00       	jmp    2624 <submitr+0x6b1>
    2150:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2157:	3a 20 44 
    215a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2161:	20 75 6e 
    2164:	49 89 07             	mov    %rax,(%r15)
    2167:	49 89 57 08          	mov    %rdx,0x8(%r15)
    216b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2172:	74 6f 20 
    2175:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    217c:	76 65 20 
    217f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2183:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2187:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
    218e:	65 72 20 
    2191:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
    2198:	73 73 00 
    219b:	49 89 47 1f          	mov    %rax,0x1f(%r15)
    219f:	49 89 57 27          	mov    %rdx,0x27(%r15)
    21a3:	44 89 e7             	mov    %r12d,%edi
    21a6:	e8 d5 f0 ff ff       	call   1280 <_init+0x280>
    21ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21b0:	e9 6f 04 00 00       	jmp    2624 <submitr+0x6b1>
    21b5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    21bc:	3a 20 55 
    21bf:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    21c6:	20 74 6f 
    21c9:	49 89 07             	mov    %rax,(%r15)
    21cc:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21d0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    21d7:	65 63 74 
    21da:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    21e1:	68 65 20 
    21e4:	49 89 47 10          	mov    %rax,0x10(%r15)
    21e8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21ec:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    21f3:	65 72 00 
    21f6:	49 89 47 1f          	mov    %rax,0x1f(%r15)
    21fa:	44 89 e7             	mov    %r12d,%edi
    21fd:	e8 7e f0 ff ff       	call   1280 <_init+0x280>
    2202:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2207:	e9 18 04 00 00       	jmp    2624 <submitr+0x6b1>
    220c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2213:	3a 20 52 
    2216:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    221d:	20 73 74 
    2220:	49 89 07             	mov    %rax,(%r15)
    2223:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2227:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    222e:	74 6f 6f 
    2231:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2238:	65 2e 20 
    223b:	49 89 47 10          	mov    %rax,0x10(%r15)
    223f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2243:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    224a:	61 73 65 
    224d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2254:	49 54 52 
    2257:	49 89 47 20          	mov    %rax,0x20(%r15)
    225b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    225f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2266:	55 46 00 
    2269:	49 89 47 30          	mov    %rax,0x30(%r15)
    226d:	44 89 e7             	mov    %r12d,%edi
    2270:	e8 0b f0 ff ff       	call   1280 <_init+0x280>
    2275:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    227a:	e9 a5 03 00 00       	jmp    2624 <submitr+0x6b1>
    227f:	49 0f a3 c6          	bt     %rax,%r14
    2283:	73 21                	jae    22a6 <submitr+0x333>
    2285:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2289:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    228d:	48 83 c3 01          	add    $0x1,%rbx
    2291:	49 39 dd             	cmp    %rbx,%r13
    2294:	0f 84 8f 00 00 00    	je     2329 <submitr+0x3b6>
    229a:	44 0f b6 03          	movzbl (%rbx),%r8d
    229e:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    22a2:	3c 35                	cmp    $0x35,%al
    22a4:	76 d9                	jbe    227f <submitr+0x30c>
    22a6:	44 89 c0             	mov    %r8d,%eax
    22a9:	83 e0 df             	and    $0xffffffdf,%eax
    22ac:	83 e8 41             	sub    $0x41,%eax
    22af:	3c 19                	cmp    $0x19,%al
    22b1:	76 d2                	jbe    2285 <submitr+0x312>
    22b3:	41 80 f8 20          	cmp    $0x20,%r8b
    22b7:	74 63                	je     231c <submitr+0x3a9>
    22b9:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    22bd:	3c 5f                	cmp    $0x5f,%al
    22bf:	76 0a                	jbe    22cb <submitr+0x358>
    22c1:	41 80 f8 09          	cmp    $0x9,%r8b
    22c5:	0f 85 f5 03 00 00    	jne    26c0 <submitr+0x74d>
    22cb:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    22d2:	00 
    22d3:	45 0f b6 c0          	movzbl %r8b,%r8d
    22d7:	48 8d 0d c8 0e 00 00 	lea    0xec8(%rip),%rcx        # 31a6 <_IO_stdin_used+0x1a6>
    22de:	ba 08 00 00 00       	mov    $0x8,%edx
    22e3:	be 02 00 00 00       	mov    $0x2,%esi
    22e8:	b8 00 00 00 00       	mov    $0x0,%eax
    22ed:	e8 ae f0 ff ff       	call   13a0 <_init+0x3a0>
    22f2:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    22f9:	00 
    22fa:	88 45 00             	mov    %al,0x0(%rbp)
    22fd:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    2304:	00 
    2305:	88 45 01             	mov    %al,0x1(%rbp)
    2308:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    230f:	00 
    2310:	88 45 02             	mov    %al,0x2(%rbp)
    2313:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2317:	e9 71 ff ff ff       	jmp    228d <submitr+0x31a>
    231c:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2320:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2324:	e9 64 ff ff ff       	jmp    228d <submitr+0x31a>
    2329:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
    2330:	00 
    2331:	48 83 ec 08          	sub    $0x8,%rsp
    2335:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    233c:	00 
    233d:	50                   	push   %rax
    233e:	ff 74 24 20          	push   0x20(%rsp)
    2342:	ff 74 24 30          	push   0x30(%rsp)
    2346:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    234b:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    2350:	48 8d 0d b9 10 00 00 	lea    0x10b9(%rip),%rcx        # 3410 <_IO_stdin_used+0x410>
    2357:	ba 00 20 00 00       	mov    $0x2000,%edx
    235c:	be 02 00 00 00       	mov    $0x2,%esi
    2361:	48 89 df             	mov    %rbx,%rdi
    2364:	b8 00 00 00 00       	mov    $0x0,%eax
    2369:	e8 32 f0 ff ff       	call   13a0 <_init+0x3a0>
    236e:	48 83 c4 20          	add    $0x20,%rsp
    2372:	48 89 df             	mov    %rbx,%rdi
    2375:	e8 d6 ee ff ff       	call   1250 <_init+0x250>
    237a:	48 89 c3             	mov    %rax,%rbx
    237d:	48 85 c0             	test   %rax,%rax
    2380:	74 33                	je     23b5 <submitr+0x442>
    2382:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    2389:	00 
    238a:	eb 0e                	jmp    239a <submitr+0x427>
    238c:	e8 7f ee ff ff       	call   1210 <_init+0x210>
    2391:	83 38 04             	cmpl   $0x4,(%rax)
    2394:	0f 85 37 01 00 00    	jne    24d1 <submitr+0x55e>
    239a:	48 89 da             	mov    %rbx,%rdx
    239d:	48 89 ee             	mov    %rbp,%rsi
    23a0:	44 89 e7             	mov    %r12d,%edi
    23a3:	e8 98 ee ff ff       	call   1240 <_init+0x240>
    23a8:	48 85 c0             	test   %rax,%rax
    23ab:	7e df                	jle    238c <submitr+0x419>
    23ad:	48 01 c5             	add    %rax,%rbp
    23b0:	48 29 c3             	sub    %rax,%rbx
    23b3:	75 e5                	jne    239a <submitr+0x427>
    23b5:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    23ba:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    23c1:	00 
    23c2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    23c7:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    23cc:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    23d1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    23d8:	00 
    23d9:	ba 00 20 00 00       	mov    $0x2000,%edx
    23de:	e8 c6 fa ff ff       	call   1ea9 <rio_readlineb>
    23e3:	48 85 c0             	test   %rax,%rax
    23e6:	0f 8e 4a 01 00 00    	jle    2536 <submitr+0x5c3>
    23ec:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    23f1:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    23f8:	00 
    23f9:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2400:	00 
    2401:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2408:	00 
    2409:	48 8d 35 9d 0d 00 00 	lea    0xd9d(%rip),%rsi        # 31ad <_IO_stdin_used+0x1ad>
    2410:	b8 00 00 00 00       	mov    $0x0,%eax
    2415:	e8 f6 ee ff ff       	call   1310 <_init+0x310>
    241a:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    241f:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2426:	0f 85 7a 01 00 00    	jne    25a6 <submitr+0x633>
    242c:	48 8d 1d 8b 0d 00 00 	lea    0xd8b(%rip),%rbx        # 31be <_IO_stdin_used+0x1be>
    2433:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    243a:	00 
    243b:	48 89 de             	mov    %rbx,%rsi
    243e:	e8 5d ee ff ff       	call   12a0 <_init+0x2a0>
    2443:	85 c0                	test   %eax,%eax
    2445:	0f 84 92 01 00 00    	je     25dd <submitr+0x66a>
    244b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2452:	00 
    2453:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2458:	ba 00 20 00 00       	mov    $0x2000,%edx
    245d:	e8 47 fa ff ff       	call   1ea9 <rio_readlineb>
    2462:	48 85 c0             	test   %rax,%rax
    2465:	7f cc                	jg     2433 <submitr+0x4c0>
    2467:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    246e:	3a 20 43 
    2471:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2478:	20 75 6e 
    247b:	49 89 07             	mov    %rax,(%r15)
    247e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2482:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2489:	74 6f 20 
    248c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2493:	68 65 61 
    2496:	49 89 47 10          	mov    %rax,0x10(%r15)
    249a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    249e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    24a5:	66 72 6f 
    24a8:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    24af:	76 65 72 
    24b2:	49 89 47 20          	mov    %rax,0x20(%r15)
    24b6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24ba:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    24bf:	44 89 e7             	mov    %r12d,%edi
    24c2:	e8 b9 ed ff ff       	call   1280 <_init+0x280>
    24c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24cc:	e9 53 01 00 00       	jmp    2624 <submitr+0x6b1>
    24d1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24d8:	3a 20 43 
    24db:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24e2:	20 75 6e 
    24e5:	49 89 07             	mov    %rax,(%r15)
    24e8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24ec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24f3:	74 6f 20 
    24f6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    24fd:	20 74 6f 
    2500:	49 89 47 10          	mov    %rax,0x10(%r15)
    2504:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2508:	48 b8 65 20 74 6f 20 	movabs $0x656874206f742065,%rax
    250f:	74 68 65 
    2512:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2519:	65 72 00 
    251c:	49 89 47 1c          	mov    %rax,0x1c(%r15)
    2520:	49 89 57 24          	mov    %rdx,0x24(%r15)
    2524:	44 89 e7             	mov    %r12d,%edi
    2527:	e8 54 ed ff ff       	call   1280 <_init+0x280>
    252c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2531:	e9 ee 00 00 00       	jmp    2624 <submitr+0x6b1>
    2536:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    253d:	3a 20 43 
    2540:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2547:	20 75 6e 
    254a:	49 89 07             	mov    %rax,(%r15)
    254d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2551:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2558:	74 6f 20 
    255b:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2562:	66 69 72 
    2565:	49 89 47 10          	mov    %rax,0x10(%r15)
    2569:	49 89 57 18          	mov    %rdx,0x18(%r15)
    256d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2574:	61 64 65 
    2577:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    257e:	6d 20 73 
    2581:	49 89 47 20          	mov    %rax,0x20(%r15)
    2585:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2589:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2590:	65 72 00 
    2593:	49 89 47 2e          	mov    %rax,0x2e(%r15)
    2597:	44 89 e7             	mov    %r12d,%edi
    259a:	e8 e1 ec ff ff       	call   1280 <_init+0x280>
    259f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25a4:	eb 7e                	jmp    2624 <submitr+0x6b1>
    25a6:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    25ad:	00 
    25ae:	48 8d 0d b3 0e 00 00 	lea    0xeb3(%rip),%rcx        # 3468 <_IO_stdin_used+0x468>
    25b5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    25bc:	be 02 00 00 00       	mov    $0x2,%esi
    25c1:	4c 89 ff             	mov    %r15,%rdi
    25c4:	b8 00 00 00 00       	mov    $0x0,%eax
    25c9:	e8 d2 ed ff ff       	call   13a0 <_init+0x3a0>
    25ce:	44 89 e7             	mov    %r12d,%edi
    25d1:	e8 aa ec ff ff       	call   1280 <_init+0x280>
    25d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25db:	eb 47                	jmp    2624 <submitr+0x6b1>
    25dd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    25e4:	00 
    25e5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    25ea:	ba 00 20 00 00       	mov    $0x2000,%edx
    25ef:	e8 b5 f8 ff ff       	call   1ea9 <rio_readlineb>
    25f4:	48 85 c0             	test   %rax,%rax
    25f7:	7e 54                	jle    264d <submitr+0x6da>
    25f9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2600:	00 
    2601:	4c 89 ff             	mov    %r15,%rdi
    2604:	e8 17 ec ff ff       	call   1220 <_init+0x220>
    2609:	44 89 e7             	mov    %r12d,%edi
    260c:	e8 6f ec ff ff       	call   1280 <_init+0x280>
    2611:	48 8d 35 a9 0b 00 00 	lea    0xba9(%rip),%rsi        # 31c1 <_IO_stdin_used+0x1c1>
    2618:	4c 89 ff             	mov    %r15,%rdi
    261b:	e8 80 ec ff ff       	call   12a0 <_init+0x2a0>
    2620:	f7 d8                	neg    %eax
    2622:	19 c0                	sbb    %eax,%eax
    2624:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    262b:	00 
    262c:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2633:	00 00 
    2635:	0f 85 0e 01 00 00    	jne    2749 <submitr+0x7d6>
    263b:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2642:	5b                   	pop    %rbx
    2643:	5d                   	pop    %rbp
    2644:	41 5c                	pop    %r12
    2646:	41 5d                	pop    %r13
    2648:	41 5e                	pop    %r14
    264a:	41 5f                	pop    %r15
    264c:	c3                   	ret    
    264d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2654:	3a 20 43 
    2657:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    265e:	20 75 6e 
    2661:	49 89 07             	mov    %rax,(%r15)
    2664:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2668:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    266f:	74 6f 20 
    2672:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2679:	73 74 61 
    267c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2680:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2684:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    268b:	65 73 73 
    268e:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2695:	72 6f 6d 
    2698:	49 89 47 20          	mov    %rax,0x20(%r15)
    269c:	49 89 57 28          	mov    %rdx,0x28(%r15)
    26a0:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    26a7:	65 72 00 
    26aa:	49 89 47 30          	mov    %rax,0x30(%r15)
    26ae:	44 89 e7             	mov    %r12d,%edi
    26b1:	e8 ca eb ff ff       	call   1280 <_init+0x280>
    26b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26bb:	e9 64 ff ff ff       	jmp    2624 <submitr+0x6b1>
    26c0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    26c7:	3a 20 52 
    26ca:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    26d1:	20 73 74 
    26d4:	49 89 07             	mov    %rax,(%r15)
    26d7:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26db:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    26e2:	63 6f 6e 
    26e5:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    26ec:	20 61 6e 
    26ef:	49 89 47 10          	mov    %rax,0x10(%r15)
    26f3:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26f7:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    26fe:	67 61 6c 
    2701:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2708:	6e 70 72 
    270b:	49 89 47 20          	mov    %rax,0x20(%r15)
    270f:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2713:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    271a:	6c 65 20 
    271d:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2724:	63 74 65 
    2727:	49 89 47 30          	mov    %rax,0x30(%r15)
    272b:	49 89 57 38          	mov    %rdx,0x38(%r15)
    272f:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
    2736:	00 
    2737:	44 89 e7             	mov    %r12d,%edi
    273a:	e8 41 eb ff ff       	call   1280 <_init+0x280>
    273f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2744:	e9 db fe ff ff       	jmp    2624 <submitr+0x6b1>
    2749:	e8 12 eb ff ff       	call   1260 <_init+0x260>

000000000000274e <init_timeout>:
    274e:	f3 0f 1e fa          	endbr64 
    2752:	85 ff                	test   %edi,%edi
    2754:	75 01                	jne    2757 <init_timeout+0x9>
    2756:	c3                   	ret    
    2757:	53                   	push   %rbx
    2758:	89 fb                	mov    %edi,%ebx
    275a:	48 8d 35 12 f7 ff ff 	lea    -0x8ee(%rip),%rsi        # 1e73 <sigalrm_handler>
    2761:	bf 0e 00 00 00       	mov    $0xe,%edi
    2766:	e8 45 eb ff ff       	call   12b0 <_init+0x2b0>
    276b:	85 db                	test   %ebx,%ebx
    276d:	b8 00 00 00 00       	mov    $0x0,%eax
    2772:	0f 49 c3             	cmovns %ebx,%eax
    2775:	89 c7                	mov    %eax,%edi
    2777:	e8 f4 ea ff ff       	call   1270 <_init+0x270>
    277c:	5b                   	pop    %rbx
    277d:	c3                   	ret    

000000000000277e <init_driver>:
    277e:	f3 0f 1e fa          	endbr64 
    2782:	41 54                	push   %r12
    2784:	55                   	push   %rbp
    2785:	53                   	push   %rbx
    2786:	48 83 ec 20          	sub    $0x20,%rsp
    278a:	48 89 fd             	mov    %rdi,%rbp
    278d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2794:	00 00 
    2796:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    279b:	31 c0                	xor    %eax,%eax
    279d:	be 01 00 00 00       	mov    $0x1,%esi
    27a2:	bf 0d 00 00 00       	mov    $0xd,%edi
    27a7:	e8 04 eb ff ff       	call   12b0 <_init+0x2b0>
    27ac:	be 01 00 00 00       	mov    $0x1,%esi
    27b1:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27b6:	e8 f5 ea ff ff       	call   12b0 <_init+0x2b0>
    27bb:	be 01 00 00 00       	mov    $0x1,%esi
    27c0:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27c5:	e8 e6 ea ff ff       	call   12b0 <_init+0x2b0>
    27ca:	ba 00 00 00 00       	mov    $0x0,%edx
    27cf:	be 01 00 00 00       	mov    $0x1,%esi
    27d4:	bf 02 00 00 00       	mov    $0x2,%edi
    27d9:	e8 d2 eb ff ff       	call   13b0 <_init+0x3b0>
    27de:	85 c0                	test   %eax,%eax
    27e0:	0f 88 9d 00 00 00    	js     2883 <init_driver+0x105>
    27e6:	89 c3                	mov    %eax,%ebx
    27e8:	48 8d 3d d5 09 00 00 	lea    0x9d5(%rip),%rdi        # 31c4 <_IO_stdin_used+0x1c4>
    27ef:	e8 cc ea ff ff       	call   12c0 <_init+0x2c0>
    27f4:	48 85 c0             	test   %rax,%rax
    27f7:	0f 84 d3 00 00 00    	je     28d0 <init_driver+0x152>
    27fd:	49 89 e4             	mov    %rsp,%r12
    2800:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2807:	00 00 
    2809:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2810:	00 00 
    2812:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2818:	48 63 50 14          	movslq 0x14(%rax),%rdx
    281c:	48 8b 40 18          	mov    0x18(%rax),%rax
    2820:	48 8b 30             	mov    (%rax),%rsi
    2823:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2828:	b9 0c 00 00 00       	mov    $0xc,%ecx
    282d:	e8 9e ea ff ff       	call   12d0 <_init+0x2d0>
    2832:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2839:	ba 10 00 00 00       	mov    $0x10,%edx
    283e:	4c 89 e6             	mov    %r12,%rsi
    2841:	89 df                	mov    %ebx,%edi
    2843:	e8 18 eb ff ff       	call   1360 <_init+0x360>
    2848:	85 c0                	test   %eax,%eax
    284a:	0f 88 e5 00 00 00    	js     2935 <init_driver+0x1b7>
    2850:	89 df                	mov    %ebx,%edi
    2852:	e8 29 ea ff ff       	call   1280 <_init+0x280>
    2857:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    285d:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2861:	b8 00 00 00 00       	mov    $0x0,%eax
    2866:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    286b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2872:	00 00 
    2874:	0f 85 f3 00 00 00    	jne    296d <init_driver+0x1ef>
    287a:	48 83 c4 20          	add    $0x20,%rsp
    287e:	5b                   	pop    %rbx
    287f:	5d                   	pop    %rbp
    2880:	41 5c                	pop    %r12
    2882:	c3                   	ret    
    2883:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    288a:	3a 20 43 
    288d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2894:	20 75 6e 
    2897:	48 89 45 00          	mov    %rax,0x0(%rbp)
    289b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    289f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28a6:	74 6f 20 
    28a9:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    28b0:	65 20 73 
    28b3:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28b7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28bb:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
    28c2:	65 74 00 
    28c5:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
    28c9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28ce:	eb 96                	jmp    2866 <init_driver+0xe8>
    28d0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    28d7:	3a 20 44 
    28da:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    28e1:	20 75 6e 
    28e4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28e8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28ec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28f3:	74 6f 20 
    28f6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    28fd:	76 65 20 
    2900:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2904:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2908:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
    290f:	65 72 20 
    2912:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
    2919:	73 73 00 
    291c:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
    2920:	48 89 55 27          	mov    %rdx,0x27(%rbp)
    2924:	89 df                	mov    %ebx,%edi
    2926:	e8 55 e9 ff ff       	call   1280 <_init+0x280>
    292b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2930:	e9 31 ff ff ff       	jmp    2866 <init_driver+0xe8>
    2935:	4c 8d 05 88 08 00 00 	lea    0x888(%rip),%r8        # 31c4 <_IO_stdin_used+0x1c4>
    293c:	48 8d 0d 55 0b 00 00 	lea    0xb55(%rip),%rcx        # 3498 <_IO_stdin_used+0x498>
    2943:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    294a:	be 02 00 00 00       	mov    $0x2,%esi
    294f:	48 89 ef             	mov    %rbp,%rdi
    2952:	b8 00 00 00 00       	mov    $0x0,%eax
    2957:	e8 44 ea ff ff       	call   13a0 <_init+0x3a0>
    295c:	89 df                	mov    %ebx,%edi
    295e:	e8 1d e9 ff ff       	call   1280 <_init+0x280>
    2963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2968:	e9 f9 fe ff ff       	jmp    2866 <init_driver+0xe8>
    296d:	e8 ee e8 ff ff       	call   1260 <_init+0x260>

0000000000002972 <driver_post>:
    2972:	f3 0f 1e fa          	endbr64 
    2976:	53                   	push   %rbx
    2977:	4c 89 c3             	mov    %r8,%rbx
    297a:	85 c9                	test   %ecx,%ecx
    297c:	75 17                	jne    2995 <driver_post+0x23>
    297e:	48 85 ff             	test   %rdi,%rdi
    2981:	74 05                	je     2988 <driver_post+0x16>
    2983:	80 3f 00             	cmpb   $0x0,(%rdi)
    2986:	75 33                	jne    29bb <driver_post+0x49>
    2988:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    298d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2991:	89 c8                	mov    %ecx,%eax
    2993:	5b                   	pop    %rbx
    2994:	c3                   	ret    
    2995:	48 8d 35 40 08 00 00 	lea    0x840(%rip),%rsi        # 31dc <_IO_stdin_used+0x1dc>
    299c:	bf 02 00 00 00       	mov    $0x2,%edi
    29a1:	b8 00 00 00 00       	mov    $0x0,%eax
    29a6:	e8 85 e9 ff ff       	call   1330 <_init+0x330>
    29ab:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29b0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29b4:	b8 00 00 00 00       	mov    $0x0,%eax
    29b9:	eb d8                	jmp    2993 <driver_post+0x21>
    29bb:	41 50                	push   %r8
    29bd:	52                   	push   %rdx
    29be:	4c 8d 0d 2e 08 00 00 	lea    0x82e(%rip),%r9        # 31f3 <_IO_stdin_used+0x1f3>
    29c5:	49 89 f0             	mov    %rsi,%r8
    29c8:	48 89 f9             	mov    %rdi,%rcx
    29cb:	48 8d 15 29 08 00 00 	lea    0x829(%rip),%rdx        # 31fb <_IO_stdin_used+0x1fb>
    29d2:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    29d7:	48 8d 3d e6 07 00 00 	lea    0x7e6(%rip),%rdi        # 31c4 <_IO_stdin_used+0x1c4>
    29de:	e8 90 f5 ff ff       	call   1f73 <submitr>
    29e3:	48 83 c4 10          	add    $0x10,%rsp
    29e7:	eb aa                	jmp    2993 <driver_post+0x21>

Disassembly of section .fini:

00000000000029ec <_fini>:
    29ec:	f3 0f 1e fa          	endbr64 
    29f0:	48 83 ec 08          	sub    $0x8,%rsp
    29f4:	48 83 c4 08          	add    $0x8,%rsp
    29f8:	c3                   	ret    
