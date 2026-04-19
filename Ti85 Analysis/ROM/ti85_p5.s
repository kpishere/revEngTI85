; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p5.rom

	org 04000h

	ram:4000 37             scf                  	;7
l4001h:
	ram:4001 18 01          jr l4004h            	;. .
	ram:4003 af             xor a                	;.
l4004h:
	ram:4004 06 00          ld b,000h            	;. .
	ram:4006 f5             push af              	;.
	ram:4007 c5             push bc              	;.
	ram:4008 cd 8d 20       call 0208dh          	;. .  
	ram:400b cd 48 26       call 02648h          	;. H &
	ram:400e cd f5 1f       call 01ff5h          	;. . .
	ram:4011 18 05          jr l4018h            	;. .
	ram:4013 f5             push af              	;.
	ram:4014 c5             push bc              	;.
	ram:4015 cd 8d 20       call 0208dh          	;. .  
l4018h:
	ram:4018 fd cb 07 6e    bit 5,(iy+007h)      	;. . . n
	ram:401c c2 51 0a       jp nz,00a51h         	;. Q .
	ram:401f cd 63 38       call 03863h          	;. c 8
	ram:4022 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4025 21 96 00       ld hl,00096h         	;! . .
	ram:4028 cd 28 2e       call 02e28h          	;. ( .
	ram:402b cd 36 2e       call 02e36h          	;. 6 .
	ram:402e cd 59 26       call 02659h          	;. Y &
	ram:4031 f1             pop af               	;.
	ram:4032 b7             or a                 	;.
	ram:4033 28 05          jr z,l403ah          	;( .
	ram:4035 cd 60 20       call 02060h          	;. `  
	ram:4038 18 0a          jr l4044h            	;. .
l403ah:
	ram:403a 21 a9 84       ld hl,084a9h         	;! . .
	ram:403d e7             rst 20h              	;.
	ram:403e 21 9f 84       ld hl,0849fh         	;! . .
	ram:4041 cd 0b 21       call 0210bh          	;. . !
l4044h:
	ram:4044 cd f1 61       call sub_61f1h       	;. . a
	ram:4047 cd 0f 62       call sub_620fh       	;. . b
	ram:404a cd 71 0d       call 00d71h          	;. q .
	ram:404d cd 68 25       call 02568h          	;. h %
	ram:4050 c2 55 0a       jp nz,00a55h         	;. U .
	ram:4053 cd d1 23       call 023d1h          	;. . #
	ram:4056 ca 55 0a       jp z,00a55h          	;. U .
	ram:4059 21 3e 43       ld hl,l433eh         	;! > C
	ram:405c cd 55 0e       call 00e55h          	;. U .
	ram:405f cd f8 60       call sub_60f8h       	;. . `
	ram:4062 f7             rst 30h              	;.
	ram:4063 cd 79 62       call sub_6279h       	;. y b
	ram:4066 cd 7d 62       call sub_627dh       	;. } b
	ram:4069 cd 81 62       call sub_6281h       	;. . b
	ram:406c cd b8 61       call sub_61b8h       	;. . a
	ram:406f cd a9 3a       call 03aa9h          	;. . :
	ram:4072 e1             pop hl               	;.
	ram:4073 22 98 80       ld (08098h),hl       	;" . .
	ram:4076 fd cb 07 ee    set 5,(iy+007h)      	;. . . .
	ram:407a 21 0b 43       ld hl,l430bh         	;! . C
	ram:407d cd b5 0a       call 00ab5h          	;. . .
	ram:4080 cd 93 21       call 02193h          	;. . !
	ram:4083 cd 45 2e       call 02e45h          	;. E .
	ram:4086 cd af 3a       call 03aafh          	;. . :
	ram:4089 cd aa 61       call sub_61aah       	;. . a
	ram:408c 2a 98 80       ld hl,(08098h)       	;* . .
	ram:408f e5             push hl              	;.
	ram:4090 f1             pop af               	;.
	ram:4091 f5             push af              	;.
	ram:4092 cd e2 42       call sub_42e2h       	;. . B
	ram:4095 cd 65 62       call sub_6265h       	;. e b
	ram:4098 cd 69 62       call sub_6269h       	;. i b
	ram:409b cd 6d 62       call sub_626dh       	;. m b
	ram:409e cd 98 21       call 02198h          	;. . !
	ram:40a1 cd 30 62       call sub_6230h       	;. 0 b
l40a4h:
	ram:40a4 cd aa 61       call sub_61aah       	;. . a
	ram:40a7 cd 73 25       call 02573h          	;. s %
	ram:40aa 21 9d 7e       ld hl,l7e9dh         	;! . ~
	ram:40ad cd 55 0e       call 00e55h          	;. U .
	ram:40b0 cd f5 1f       call 01ff5h          	;. . .
	ram:40b3 3e 21          ld a,021h            	;> !
	ram:40b5 cd c7 3a       call 03ac7h          	;. . :
	ram:40b8 3e 33          ld a,033h            	;> 3
	ram:40ba cd eb 48       call sub_48ebh       	;. . H
	ram:40bd cd 07 20       call 02007h          	;. .  
	ram:40c0 f7             rst 30h              	;.
	ram:40c1 cd 28 62       call sub_6228h       	;. ( b
	ram:40c4 cd 66 0d       call 00d66h          	;. f .
	ram:40c7 cd 1f 62       call sub_621fh       	;. . b
	ram:40ca cd ea 60       call sub_60eah       	;. . `
	ram:40cd cd f8 60       call sub_60f8h       	;. . `
	ram:40d0 f7             rst 30h              	;.
	ram:40d1 cd 52 0e       call 00e52h          	;. R .
	ram:40d4 cd 16 62       call sub_6216h       	;. . b
	ram:40d7 cd a5 61       call sub_61a5h       	;. . a
	ram:40da cd 61 0d       call 00d61h          	;. a .
	ram:40dd cd 73 25       call 02573h          	;. s %
	ram:40e0 cd f5 1f       call 01ff5h          	;. . .
	ram:40e3 cd ea 60       call sub_60eah       	;. . `
	ram:40e6 cd f8 60       call sub_60f8h       	;. . `
	ram:40e9 cd 71 0d       call 00d71h          	;. q .
	ram:40ec cd 52 0e       call 00e52h          	;. R .
	ram:40ef cd 23 61       call sub_6123h       	;. # a
	ram:40f2 cd 61 0d       call 00d61h          	;. a .
	ram:40f5 cd 07 20       call 02007h          	;. .  
	ram:40f8 cd 8e 1f       call 01f8eh          	;. . .
	ram:40fb d2 1b 43       jp nc,l431bh         	;. . C
	ram:40fe cd 37 61       call sub_6137h       	;. 7 a
	ram:4101 cd 58 61       call sub_6158h       	;. X a
	ram:4104 cd 88 1f       call 01f88h          	;. . .
	ram:4107 da fb 41       jp c,l41fbh          	;. . A
l410ah:
	ram:410a cd aa 61       call sub_61aah       	;. . a
	ram:410d cd 0b 61       call sub_610bh       	;. . a
	ram:4110 cd 8e 1f       call 01f8eh          	;. . .
	ram:4113 f5             push af              	;.
	ram:4114 dc ea 60       call c,sub_60eah     	;. . `
	ram:4117 f1             pop af               	;.
	ram:4118 d4 fd 60       call nc,sub_60fdh    	;. . `
	ram:411b cd a5 61       call sub_61a5h       	;. . a
	ram:411e cd 71 0d       call 00d71h          	;. q .
	ram:4121 cd 30 62       call sub_6230h       	;. 0 b
	ram:4124 21 3e 43       ld hl,l433eh         	;! > C
	ram:4127 cd 55 0e       call 00e55h          	;. U .
	ram:412a cd 2c 62       call sub_622ch       	;. , b
l412dh:
	ram:412d 3a 82 80       ld a,(08082h)        	;: . .
	ram:4130 f5             push af              	;.
	ram:4131 cd 2f 61       call sub_612fh       	;. / a
	ram:4134 cd 88 1f       call 01f88h          	;. . .
	ram:4137 38 06          jr c,l413fh          	;8 .
	ram:4139 f1             pop af               	;.
	ram:413a cd 51 61       call sub_6151h       	;. Q a
	ram:413d 18 07          jr l4146h            	;. .
l413fh:
	ram:413f cd 37 61       call sub_6137h       	;. 7 a
	ram:4142 f1             pop af               	;.
	ram:4143 32 82 80       ld (08082h),a        	;2 . .
l4146h:
	ram:4146 cd a5 61       call sub_61a5h       	;. . a
	ram:4149 f7             rst 30h              	;.
	ram:414a cd 71 62       call sub_6271h       	;. q b
	ram:414d cd a5 61       call sub_61a5h       	;. . a
	ram:4150 cd 8e 1f       call 01f8eh          	;. . .
	ram:4153 f5             push af              	;.
	ram:4154 cd 9e 61       call sub_619eh       	;. . a
	ram:4157 c1             pop bc               	;.
	ram:4158 f1             pop af               	;.
	ram:4159 f5             push af              	;.
	ram:415a c5             push bc              	;.
	ram:415b cd e2 42       call sub_42e2h       	;. . B
	ram:415e cd 5c 62       call sub_625ch       	;. \ b
	ram:4161 cd 75 61       call sub_6175h       	;. u a
	ram:4164 cd 8e 1f       call 01f8eh          	;. . .
	ram:4167 da db 41       jp c,l41dbh          	;. . A
	ram:416a ca db 41       jp z,l41dbh          	;. . A
	ram:416d cd 9e 61       call sub_619eh       	;. . a
	ram:4170 f1             pop af               	;.
	ram:4171 f5             push af              	;.
	ram:4172 dc 08 62       call c,sub_6208h     	;. . b
	ram:4175 f1             pop af               	;.
	ram:4176 d4 f1 61       call nc,sub_61f1h    	;. . a
	ram:4179 cd 86 61       call sub_6186h       	;. . a
	ram:417c cd 64 61       call sub_6164h       	;. d a
	ram:417f cd 8e 1f       call 01f8eh          	;. . .
	ram:4182 30 2d          jr nc,l41b1h         	;0 -
	ram:4184 cd b1 61       call sub_61b1h       	;. . a
	ram:4187 cd a5 61       call sub_61a5h       	;. . a
	ram:418a cd 8e 1f       call 01f8eh          	;. . .
	ram:418d 28 22          jr z,l41b1h          	;( "
	ram:418f cd 92 61       call sub_6192h       	;. . a
	ram:4192 cd 64 61       call sub_6164h       	;. d a
	ram:4195 cd 8e 1f       call 01f8eh          	;. . .
	ram:4198 30 32          jr nc,l41cch         	;0 2
	ram:419a cd d4 61       call sub_61d4h       	;. . a
	ram:419d cd a5 61       call sub_61a5h       	;. . a
	ram:41a0 cd 8e 1f       call 01f8eh          	;. . .
	ram:41a3 28 27          jr z,l41cch          	;( '
	ram:41a5 cd b1 61       call sub_61b1h       	;. . a
	ram:41a8 cd db 61       call sub_61dbh       	;. . a
	ram:41ab cd 8e 1f       call 01f8eh          	;. . .
	ram:41ae c2 a4 40       jp nz,l40a4h         	;. . @
l41b1h:
	ram:41b1 cd b1 61       call sub_61b1h       	;. . a
	ram:41b4 cd 81 62       call sub_6281h       	;. . b
	ram:41b7 cd 86 61       call sub_6186h       	;. . a
	ram:41ba cd 6d 62       call sub_626dh       	;. m b
	ram:41bd cd 9e 61       call sub_619eh       	;. . a
	ram:41c0 cd 7d 62       call sub_627dh       	;. } b
	ram:41c3 cd 69 61       call sub_6169h       	;. i a
	ram:41c6 cd 69 62       call sub_6269h       	;. i b
	ram:41c9 c3 a4 40       jp l40a4h            	;. . @
l41cch:
	ram:41cc cd 9e 61       call sub_619eh       	;. . a
	ram:41cf cd 81 62       call sub_6281h       	;. . b
	ram:41d2 cd 69 61       call sub_6169h       	;. i a
	ram:41d5 cd 6d 62       call sub_626dh       	;. m b
	ram:41d8 c3 a4 40       jp l40a4h            	;. . @
l41dbh:
	ram:41db cd aa 61       call sub_61aah       	;. . a
	ram:41de f1             pop af               	;.
	ram:41df f5             push af              	;.
	ram:41e0 dc f1 61       call c,sub_61f1h     	;. . a
	ram:41e3 f1             pop af               	;.
	ram:41e4 d4 08 62       call nc,sub_6208h    	;. . b
	ram:41e7 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:41ea 11 60 ff       ld de,0ff60h         	;. ` .
	ram:41ed 19             add hl,de            	;.
	ram:41ee eb             ex de,hl             	;.
	ram:41ef 21 0a 00       ld hl,0000ah         	;! . .
	ram:41f2 19             add hl,de            	;.
	ram:41f3 01 46 00       ld bc,00046h         	;. F .
	ram:41f6 ed b0          ldir                 	;. .
	ram:41f8 c3 a4 40       jp l40a4h            	;. . @
l41fbh:
	ram:41fb cd d4 61       call sub_61d4h       	;. . a
	ram:41fe cd a5 61       call sub_61a5h       	;. . a
	ram:4201 cd 61 0d       call 00d61h          	;. a .
	ram:4204 cd 21 20       call 02021h          	;. !  
	ram:4207 cd 70 61       call sub_6170h       	;. p a
	ram:420a cd 81 61       call sub_6181h       	;. . a
	ram:420d cd 71 0d       call 00d71h          	;. q .
	ram:4210 cd 19 20       call 02019h          	;. .  
	ram:4213 ef             rst 28h              	;.
	ram:4214 cd 85 20       call 02085h          	;. .  
	ram:4217 ef             rst 28h              	;.
	ram:4218 cd 8d 20       call 0208dh          	;. .  
	ram:421b cd ea 60       call sub_60eah       	;. . `
	ram:421e cd a5 61       call sub_61a5h       	;. . a
	ram:4221 cd 61 0d       call 00d61h          	;. a .
	ram:4224 cd 21 20       call 02021h          	;. !  
	ram:4227 cd 70 61       call sub_6170h       	;. p a
	ram:422a cd 8d 61       call sub_618dh       	;. . a
	ram:422d cd 71 0d       call 00d71h          	;. q .
	ram:4230 cd 19 20       call 02019h          	;. .  
	ram:4233 ef             rst 28h              	;.
	ram:4234 cd f5 1f       call 01ff5h          	;. . .
	ram:4237 ef             rst 28h              	;.
	ram:4238 cd 29 20       call 02029h          	;. )  
	ram:423b cd 61 0d       call 00d61h          	;. a .
	ram:423e cd 8d 20       call 0208dh          	;. .  
	ram:4241 cd 51 20       call 02051h          	;. Q  
	ram:4244 cd 07 20       call 02007h          	;. .  
	ram:4247 cd 71 0d       call 00d71h          	;. q .
	ram:424a cd 66 0d       call 00d66h          	;. f .
	ram:424d cd d1 23       call 023d1h          	;. . #
	ram:4250 28 0d          jr z,l425fh          	;( .
	ram:4252 cd 68 25       call 02568h          	;. h %
	ram:4255 20 08          jr nz,l425fh         	;.
	ram:4257 3a b9 80       ld a,(080b9h)        	;: . .
	ram:425a ee 80          xor 080h             	;. .
	ram:425c 32 b9 80       ld (080b9h),a        	;2 . .
l425fh:
	ram:425f cd 73 25       call 02573h          	;. s %
	ram:4262 cd 85 20       call 02085h          	;. .  
	ram:4265 cd 5d 61       call sub_615dh       	;. ] a
	ram:4268 cd 4c 61       call sub_614ch       	;. L a
	ram:426b cd 48 62       call sub_6248h       	;. H b
	ram:426e cd 49 20       call 02049h          	;. I  
	ram:4271 ef             rst 28h              	;.
	ram:4272 cd 52 0e       call 00e52h          	;. R .
	ram:4275 cd 29 20       call 02029h          	;. )  
	ram:4278 cd 88 1f       call 01f88h          	;. . .
	ram:427b da 0a 41       jp c,l410ah          	;. . A
	ram:427e ca 0a 41       jp z,l410ah          	;. . A
	ram:4281 cd fd 60       call sub_60fdh       	;. . `
	ram:4284 cd 48 43       call 04348h          	;. H C
	ram:4287 d2 0a 41       jp nc,l410ah         	;. . A
	ram:428a cd ea 60       call sub_60eah       	;. . `
	ram:428d cd 48 43       call 04348h          	;. H C
	ram:4290 d2 0a 41       jp nc,l410ah         	;. . A
	ram:4293 cd 5b 20       call 0205bh          	;. [  
	ram:4296 cd 49 20       call 02049h          	;. I  
	ram:4299 cd 23 10       call 01023h          	;. # .
	ram:429c cd 2c 62       call sub_622ch       	;. , b
	ram:429f cd a5 61       call sub_61a5h       	;. . a
	ram:42a2 f7             rst 30h              	;.
	ram:42a3 cd 71 62       call sub_6271h       	;. q b
	ram:42a6 cd f8 60       call sub_60f8h       	;. . `
	ram:42a9 cd 71 0d       call 00d71h          	;. q .
	ram:42ac cd 23 61       call sub_6123h       	;. # a
	ram:42af cd 8e 1f       call 01f8eh          	;. . .
	ram:42b2 38 11          jr c,l42c5h          	;8 .
	ram:42b4 cd ea 60       call sub_60eah       	;. . `
	ram:42b7 cd 99 61       call sub_6199h       	;. . a
	ram:42ba cd 71 0d       call 00d71h          	;. q .
	ram:42bd cd 23 61       call sub_6123h       	;. # a
	ram:42c0 cd 8e 1f       call 01f8eh          	;. . .
	ram:42c3 30 17          jr nc,l42dch         	;0 .
l42c5h:
	ram:42c5 cd 13 61       call sub_6113h       	;. . a
	ram:42c8 cd a5 61       call sub_61a5h       	;. . a
	ram:42cb cd 71 0d       call 00d71h          	;. q .
	ram:42ce 3a 82 80       ld a,(08082h)        	;: . .
	ram:42d1 f5             push af              	;.
	ram:42d2 cd 37 61       call sub_6137h       	;. 7 a
	ram:42d5 f1             pop af               	;.
	ram:42d6 32 82 80       ld (08082h),a        	;2 . .
	ram:42d9 c3 2d 41       jp l412dh            	;. - A
l42dch:
	ram:42dc cd 51 61       call sub_6151h       	;. Q a
	ram:42df c3 2d 41       jp l412dh            	;. - A
sub_42e2h:
	ram:42e2 f5             push af              	;.
	ram:42e3 cf             rst 8                	;.
	ram:42e4 cd b8 61       call sub_61b8h       	;. . a
	ram:42e7 d7             rst 10h              	;.
	ram:42e8 21 8d 80       ld hl,0808dh         	;! . .
	ram:42eb cd 9d 20       call 0209dh          	;. .  
	ram:42ee cd 43 61       call sub_6143h       	;. C a
	ram:42f1 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:42f4 e5             push hl              	;.
	ram:42f5 cd d3 3a       call 03ad3h          	;. . :
	ram:42f8 e1             pop hl               	;.
	ram:42f9 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:42fc cd 9c 26       call 0269ch          	;. . &
	ram:42ff cd 59 26       call 02659h          	;. Y &
	ram:4302 f1             pop af               	;.
	ram:4303 30 03          jr nc,l4308h         	;0 .
	ram:4305 cd 9b 0f       call 00f9bh          	;. . .
l4308h:
	ram:4308 c3 22 26       jp 02622h            	;. " &
l430bh:
	ram:430b fd cb 07 ae    res 5,(iy+007h)      	;. . . .
	ram:430f cd 59 26       call 02659h          	;. Y &
	ram:4312 cd b8 61       call sub_61b8h       	;. . a
	ram:4315 cd 2b 3a       call 03a2bh          	;. + :
	ram:4318 c3 8a 0a       jp 00a8ah            	;. . .
l431bh:
	ram:431b fd cb 07 ae    res 5,(iy+007h)      	;. . . .
	ram:431f f1             pop af               	;.
	ram:4320 cd db 0a       call 00adbh          	;. . .
	ram:4323 cd bf 61       call sub_61bfh       	;. . a
	ram:4326 cd 7b 38       call 0387bh          	;. { 8
	ram:4329 cd b8 61       call sub_61b8h       	;. . a
	ram:432c cd 2b 3a       call 03a2bh          	;. + :
	ram:432f cd 43 61       call sub_6143h       	;. C a
	ram:4332 cd f7 3a       call 03af7h          	;. . :
	ram:4335 cd aa 61       call sub_61aah       	;. . a
	ram:4338 11 b4 00       ld de,000b4h         	;. . .
	ram:433b c3 1b 2e       jp 02e1bh            	;. . .
l433eh:
	ram:433e 00             nop                  	;.
	ram:433f ff             rst 38h              	;.
	ram:4340 fb             ei                   	;.
	ram:4341 38 19          jr c,l435ch          	;8 .
	ram:4343 66             ld h,(hl)            	;f
	ram:4344 01 12 50       ld bc,05012h         	;. . P
	djnz -49		;4347	10 cd		. .
	ram:4349 a5             and l                	;.
	ram:434a 61             ld h,c               	;a
	ram:434b cd 71 0d       call 00d71h          	;. q .
	ram:434e cd 49 20       call 02049h          	;. I  
	ram:4351 ef             rst 28h              	;.
	ram:4352 cd 29 20       call 02029h          	;. )  
	ram:4355 c3 8e 1f       jp 01f8eh            	;. . .
	ram:4358 af             xor a                	;.
	ram:4359 fd 77 0f       ld (iy+00fh),a       	;. w .
l435ch:
	ram:435c 06 07          ld b,007h            	;. .
l435eh:
	ram:435e c5             push bc              	;.
	ram:435f 3a e0 85       ld a,(085e0h)        	;: . .
	ram:4362 47             ld b,a               	;G
l4363h:
	ram:4363 c5             push bc              	;.
	ram:4364 cd 4a 2e       call 02e4ah          	;. J .
	ram:4367 c1             pop bc               	;.
	ram:4368 10 f9          djnz l4363h          	;. .
	ram:436a c1             pop bc               	;.
	ram:436b 10 f1          djnz l435eh          	;. .
	ram:436d cd 66 48       call sub_4866h       	;. f H
	ram:4370 cd 4a 2e       call 02e4ah          	;. J .
	ram:4373 21 84 85       ld hl,08584h         	;! . .
	ram:4376 e7             rst 20h              	;.
	ram:4377 cd 4a 2e       call 02e4ah          	;. J .
	ram:437a cd 6b 48       call sub_486bh       	;. k H
	ram:437d 21 8e 85       ld hl,0858eh         	;! . .
	ram:4380 cd 0b 21       call 0210bh          	;. . !
	ram:4383 cd 61 0d       call 00d61h          	;. a .
	ram:4386 cd d1 23       call 023d1h          	;. . #
	ram:4389 ca 79 0a       jp z,00a79h          	;. y .
	ram:438c cd 4a 2e       call 02e4ah          	;. J .
	ram:438f cd 73 25       call 02573h          	;. s %
	ram:4392 cf             rst 8                	;.
	ram:4393 21 a6 47       ld hl,l47a6h         	;! . G
	ram:4396 e7             rst 20h              	;.
	ram:4397 ef             rst 28h              	;.
	ram:4398 cd 4a 2e       call 02e4ah          	;. J .
	ram:439b 21 ba 47       ld hl,l47bah         	;! . G
	ram:439e e7             rst 20h              	;.
	ram:439f ef             rst 28h              	;.
	ram:43a0 cd 4a 2e       call 02e4ah          	;. J .
	ram:43a3 cd 52 2f       call 02f52h          	;. R /
	ram:43a6 cd 7a 25       call 0257ah          	;. z %
	ram:43a9 cd 4a 2e       call 02e4ah          	;. J .
	ram:43ac cd 98 21       call 02198h          	;. . !
	ram:43af cd 4a 2e       call 02e4ah          	;. J .
	ram:43b2 cd 59 26       call 02659h          	;. Y &
	ram:43b5 22 32 86       ld (08632h),hl       	;" 2 .
	ram:43b8 21 8f 48       ld hl,l488fh         	;! . H
	ram:43bb cd b5 0a       call 00ab5h          	;. . .
	ram:43be 3a e0 85       ld a,(085e0h)        	;: . .
l43c1h:
	ram:43c1 cd 71 36       call 03671h          	;. q 6
	ram:43c4 47             ld b,a               	;G
	ram:43c5 cd 47 1f       call 01f47h          	;. G .
	ram:43c8 c2 79 0a       jp nz,00a79h         	;. y .
	ram:43cb 78             ld a,b               	;x
	ram:43cc cd 2f 36       call 0362fh          	;. / 6
	ram:43cf cd e2 46       call sub_46e2h       	;. . F
	ram:43d2 3d             dec a                	;=
	ram:43d3 20 ec          jr nz,l43c1h         	;.
	ram:43d5 cd db 0a       call 00adbh          	;. . .
	ram:43d8 3a e0 85       ld a,(085e0h)        	;: . .
l43dbh:
	ram:43db f5             push af              	;.
	ram:43dc cd ed 35       call 035edh          	;. . 5
	ram:43df cd 22 26       call 02622h          	;. " &
	ram:43e2 f1             pop af               	;.
	ram:43e3 2a 32 86       ld hl,(08632h)       	;* 2 .
	ram:43e6 22 29 86       ld (08629h),hl       	;" ) .
	ram:43e9 cd dd 46       call sub_46ddh       	;. . F
	ram:43ec 3d             dec a                	;=
	ram:43ed 20 ec          jr nz,l43dbh         	;.
	ram:43ef cd 4c 61       call sub_614ch       	;. L a
	ram:43f2 cd 37 61       call sub_6137h       	;. 7 a
	ram:43f5 cd 8e 1f       call 01f8eh          	;. . .
	ram:43f8 20 67          jr nz,l4461h         	;g
	ram:43fa 3a e0 85       ld a,(085e0h)        	;: . .
l43fdh:
	ram:43fd cd 77 36       call 03677h          	;. w 6
	ram:4400 cd e8 46       call sub_46e8h       	;. . F
	ram:4403 cd 2b 47       call sub_472bh       	;. + G
	ram:4406 f5             push af              	;.
	ram:4407 0e 03          ld c,003h            	;. .
	ram:4409 cd 1a 47       call sub_471ah       	;. . G
	ram:440c cd 98 21       call 02198h          	;. . !
	ram:440f f1             pop af               	;.
	ram:4410 f5             push af              	;.
	ram:4411 cd 18 47       call sub_4718h       	;. . G
	ram:4414 f1             pop af               	;.
	ram:4415 f5             push af              	;.
	ram:4416 0e 02          ld c,002h            	;. .
	ram:4418 cd 1a 47       call sub_471ah       	;. . G
	ram:441b f1             pop af               	;.
	ram:441c 3d             dec a                	;=
	ram:441d 20 de          jr nz,l43fdh         	;.
	ram:441f cd ea 60       call sub_60eah       	;. . `
	ram:4422 cd e5 61       call sub_61e5h       	;. . a
	ram:4425 c9             ret                  	;.
	ram:4426 fd cb 0f 4e    bit 1,(iy+00fh)      	;. . . N
	ram:442a c0             ret nz               	;.
	ram:442b 2a 32 86       ld hl,(08632h)       	;* 2 .
	ram:442e 22 29 86       ld (08629h),hl       	;" ) .
	ram:4431 cd ea 60       call sub_60eah       	;. . `
	ram:4434 cd 68 25       call 02568h          	;. h %
	ram:4437 f5             push af              	;.
	ram:4438 cd 66 48       call sub_4866h       	;. f H
	ram:443b cd 2f 61       call sub_612fh       	;. / a
	ram:443e f1             pop af               	;.
	ram:443f c4 ba 23       call nz,023bah       	;. . #
	ram:4442 cd 8e 1f       call 01f8eh          	;. . .
	ram:4445 d8             ret c                	;.
	ram:4446 c8             ret z                	;.
	ram:4447 cd 66 48       call sub_4866h       	;. f H
	ram:444a cd 2c 62       call sub_622ch       	;. , b
	ram:444d 3a e0 85       ld a,(085e0h)        	;: . .
l4450h:
	ram:4450 cd 36 47       call sub_4736h       	;. 6 G
	ram:4453 cd e2 46       call sub_46e2h       	;. . F
	ram:4456 f5             push af              	;.
	ram:4457 cd 61 47       call sub_4761h       	;. a G
	ram:445a f1             pop af               	;.
	ram:445b cd dd 46       call sub_46ddh       	;. . F
	ram:445e 3d             dec a                	;=
	ram:445f 20 ef          jr nz,l4450h         	;.
l4461h:
	ram:4461 21 97 48       ld hl,l4897h         	;! . H
	ram:4464 cd b5 0a       call 00ab5h          	;. . .
	ram:4467 cd 37 61       call sub_6137h       	;. 7 a
	ram:446a cd 6b 48       call sub_486bh       	;. k H
l446dh:
	ram:446d cd ea 60       call sub_60eah       	;. . `
	ram:4470 cd f8 60       call sub_60f8h       	;. . `
	ram:4473 cd 88 1f       call 01f88h          	;. . .
	ram:4476 30 07          jr nc,l447fh         	;0 .
	ram:4478 fd cb 0f d6    set 2,(iy+00fh)      	;. . . .
	ram:447c c3 14 0a       jp 00a14h            	;. . .
l447fh:
	ram:447f cd 37 61       call sub_6137h       	;. 7 a
	ram:4482 cd dd 60       call sub_60ddh       	;. . `
	ram:4485 cd 62 25       call 02562h          	;. b %
	ram:4488 f5             push af              	;.
	ram:4489 f7             rst 30h              	;.
	ram:448a 21 8e 85       ld hl,0858eh         	;! . .
	ram:448d cd 0b 21       call 0210bh          	;. . !
	ram:4490 f1             pop af               	;.
	ram:4491 c4 ba 23       call nz,023bah       	;. . #
	ram:4494 cd 8e 1f       call 01f8eh          	;. . .
	ram:4497 38 0d          jr c,l44a6h          	;8 .
	ram:4499 21 8e 85       ld hl,0858eh         	;! . .
	ram:449c e7             rst 20h              	;.
	ram:449d cd 2f 61       call sub_612fh       	;. / a
	ram:44a0 cd 71 0d       call 00d71h          	;. q .
	ram:44a3 cd f1 61       call sub_61f1h       	;. . a
l44a6h:
	ram:44a6 cd ea 60       call sub_60eah       	;. . `
	ram:44a9 cd 52 0e       call 00e52h          	;. R .
	ram:44ac cd 4a 2e       call 02e4ah          	;. J .
	ram:44af cd 2f 61       call sub_612fh       	;. / a
	ram:44b2 f7             rst 30h              	;.
	ram:44b3 cd 6b 48       call sub_486bh       	;. k H
	ram:44b6 3a e0 85       ld a,(085e0h)        	;: . .
l44b9h:
	ram:44b9 cd 2b 47       call sub_472bh       	;. + G
	ram:44bc cd cc 46       call sub_46cch       	;. . F
	ram:44bf 3d             dec a                	;=
	ram:44c0 20 f7          jr nz,l44b9h         	;.
	ram:44c2 0e 01          ld c,001h            	;. .
	ram:44c4 cd 30 48       call sub_4830h       	;. 0 H
	ram:44c7 cd ea 60       call sub_60eah       	;. . `
	ram:44ca 21 ee 5d       ld hl,l5deeh         	;! . ]
	ram:44cd cd 55 0e       call 00e55h          	;. U .
	ram:44d0 cd 6b 2f       call 02f6bh          	;. k /
	ram:44d3 cd 2f 61       call sub_612fh       	;. / a
	ram:44d6 f7             rst 30h              	;.
	ram:44d7 cd 6b 48       call sub_486bh       	;. k H
	ram:44da 3a e0 85       ld a,(085e0h)        	;: . .
l44ddh:
	ram:44dd f5             push af              	;.
	ram:44de cd 69 47       call sub_4769h       	;. i G
	ram:44e1 f1             pop af               	;.
	ram:44e2 cd cc 46       call sub_46cch       	;. . F
	ram:44e5 3d             dec a                	;=
	ram:44e6 20 f5          jr nz,l44ddh         	;.
	ram:44e8 0e 02          ld c,002h            	;. .
	ram:44ea cd 30 48       call sub_4830h       	;. 0 H
	ram:44ed cd 0c 2e       call 02e0ch          	;. . .
	ram:44f0 cd ea 60       call sub_60eah       	;. . `
	ram:44f3 cd 2f 61       call sub_612fh       	;. / a
	ram:44f6 f7             rst 30h              	;.
	ram:44f7 cd 6b 48       call sub_486bh       	;. k H
	ram:44fa 3a e0 85       ld a,(085e0h)        	;: . .
l44fdh:
	ram:44fd f5             push af              	;.
	ram:44fe cd 2b 47       call sub_472bh       	;. + G
	ram:4501 3e 22          ld a,022h            	;> "
	ram:4503 cd eb 48       call sub_48ebh       	;. . H
	ram:4506 cd 8d 20       call 0208dh          	;. .  
	ram:4509 f1             pop af               	;.
	ram:450a f5             push af              	;.
	ram:450b 0e 01          ld c,001h            	;. .
	ram:450d 26 33          ld h,033h            	;& 3
	ram:450f cd de 48       call sub_48deh       	;. . H
	ram:4512 cd 8d 20       call 0208dh          	;. .  
	ram:4515 f1             pop af               	;.
	ram:4516 f5             push af              	;.
	ram:4517 26 44          ld h,044h            	;& D
	ram:4519 cd dc 48       call sub_48dch       	;. . H
	ram:451c cd dd 60       call sub_60ddh       	;. . `
	ram:451f ef             rst 28h              	;.
	ram:4520 cf             rst 8                	;.
	ram:4521 f1             pop af               	;.
	ram:4522 cd d3 46       call sub_46d3h       	;. . F
	ram:4525 3d             dec a                	;=
	ram:4526 20 d5          jr nz,l44fdh         	;.
	ram:4528 0e 03          ld c,003h            	;. .
	ram:452a cd 30 48       call sub_4830h       	;. 0 H
	ram:452d cd db 0a       call 00adbh          	;. . .
	ram:4530 fd cb 0f 96    res 2,(iy+00fh)      	;. . . .
	ram:4534 3a e0 85       ld a,(085e0h)        	;: . .
l4537h:
	ram:4537 f5             push af              	;.
	ram:4538 cd 2b 47       call sub_472bh       	;. + G
	ram:453b 21 88 47       ld hl,l4788h         	;! . G
	ram:453e cd 55 0e       call 00e55h          	;. U .
	ram:4541 cd 8d 20       call 0208dh          	;. .  
	ram:4544 f1             pop af               	;.
	ram:4545 f5             push af              	;.
	ram:4546 0e 01          ld c,001h            	;. .
	ram:4548 21 92 47       ld hl,l4792h         	;! . G
	ram:454b cd 5b 48       call sub_485bh       	;. [ H
	ram:454e cd 71 0d       call 00d71h          	;. q .
	ram:4551 cd 8d 20       call 0208dh          	;. .  
	ram:4554 f1             pop af               	;.
	ram:4555 f5             push af              	;.
	ram:4556 26 11          ld h,011h            	;& .
	ram:4558 cd dc 48       call sub_48dch       	;. . H
	ram:455b cd 8d 20       call 0208dh          	;. .  
	ram:455e f1             pop af               	;.
	ram:455f f5             push af              	;.
	ram:4560 0e 03          ld c,003h            	;. .
	ram:4562 21 9c 47       ld hl,l479ch         	;! . G
	ram:4565 cd 5b 48       call sub_485bh       	;. [ H
	ram:4568 cd 61 0d       call 00d61h          	;. a .
	ram:456b cd dd 60       call sub_60ddh       	;. . `
	ram:456e ef             rst 28h              	;.
	ram:456f cd 73 25       call 02573h          	;. s %
	ram:4572 f1             pop af               	;.
	ram:4573 f5             push af              	;.
	ram:4574 cd 18 47       call sub_4718h       	;. . G
	ram:4577 f1             pop af               	;.
	ram:4578 3d             dec a                	;=
	ram:4579 20 bc          jr nz,l4537h         	;.
	ram:457b 3a e0 85       ld a,(085e0h)        	;: . .
l457eh:
	ram:457e f5             push af              	;.
	ram:457f cd 30 47       call sub_4730h       	;. 0 G
	ram:4582 cd 73 25       call 02573h          	;. s %
	ram:4585 cd f5 1f       call 01ff5h          	;. . .
	ram:4588 cd 66 21       call 02166h          	;. f !
	ram:458b cd 88 1f       call 01f88h          	;. . .
	ram:458e dc 17 21       call c,02117h        	;. . !
	ram:4591 cd 56 20       call 02056h          	;. V  
	ram:4594 21 70 85       ld hl,08570h         	;! p .
	ram:4597 cd 55 0e       call 00e55h          	;. U .
	ram:459a f1             pop af               	;.
	ram:459b f5             push af              	;.
	ram:459c 0e 02          ld c,002h            	;. .
	ram:459e cd 1a 47       call sub_471ah       	;. . G
	ram:45a1 f1             pop af               	;.
	ram:45a2 3d             dec a                	;=
	ram:45a3 20 d9          jr nz,l457eh         	;.
	ram:45a5 fd cb 0f c6    set 0,(iy+00fh)      	;. . . .
	ram:45a9 3a e0 85       ld a,(085e0h)        	;: . .
l45ach:
	ram:45ac f5             push af              	;.
	ram:45ad cd 69 47       call sub_4769h       	;. i G
	ram:45b0 cf             rst 8                	;.
	ram:45b1 f1             pop af               	;.
	ram:45b2 f5             push af              	;.
	ram:45b3 0e 02          ld c,002h            	;. .
	ram:45b5 cd 6b 47       call sub_476bh       	;. k G
	ram:45b8 cd 8e 1f       call 01f8eh          	;. . .
	ram:45bb 38 16          jr c,l45d3h          	;8 .
	ram:45bd f1             pop af               	;.
	ram:45be 3d             dec a                	;=
	ram:45bf 20 eb          jr nz,l45ach         	;.
	ram:45c1 fd cb 0f 86    res 0,(iy+00fh)      	;. . . .
	ram:45c5 cd 66 48       call sub_4866h       	;. f H
	ram:45c8 cd 28 62       call sub_6228h       	;. ( b
	ram:45cb cd ea 60       call sub_60eah       	;. . `
	ram:45ce cd e5 61       call sub_61e5h       	;. . a
	ram:45d1 18 01          jr l45d4h            	;. .
l45d3h:
	ram:45d3 f1             pop af               	;.
l45d4h:
	ram:45d4 cd ea 60       call sub_60eah       	;. . `
	ram:45d7 cd 28 21       call 02128h          	;. ( !
	ram:45da ef             rst 28h              	;.
	ram:45db cd 73 25       call 02573h          	;. s %
	ram:45de cd 0b 61       call sub_610bh       	;. . a
	ram:45e1 cd 2b 0d       call 00d2bh          	;. + .
	ram:45e4 cd 4a 2e       call 02e4ah          	;. J .
	ram:45e7 3a e0 85       ld a,(085e0h)        	;: . .
l45eah:
	ram:45ea f5             push af              	;.
	ram:45eb cd 69 47       call sub_4769h       	;. i G
	ram:45ee cd d1 23       call 023d1h          	;. . #
	ram:45f1 28 27          jr z,l461ah          	;( '
	ram:45f3 cf             rst 8                	;.
	ram:45f4 f1             pop af               	;.
	ram:45f5 f5             push af              	;.
	ram:45f6 0e 02          ld c,002h            	;. .
	ram:45f8 cd 6b 47       call sub_476bh       	;. k G
	ram:45fb cd 23 10       call 01023h          	;. # .
	ram:45fe cd f7 10       call 010f7h          	;. . .
	ram:4601 cd f7 10       call 010f7h          	;. . .
	ram:4604 cd dd 60       call sub_60ddh       	;. . `
	ram:4607 ef             rst 28h              	;.
	ram:4608 21 b0 47       ld hl,l47b0h         	;! . G
	ram:460b cd 55 0e       call 00e55h          	;. U .
	ram:460e cd 73 25       call 02573h          	;. s %
	ram:4611 cd 1f 2f       call 02f1fh          	;. . /
	ram:4614 cd 1c 0d       call 00d1ch          	;. . .
	ram:4617 cd 6b 2f       call 02f6bh          	;. k /
l461ah:
	ram:461a f1             pop af               	;.
	ram:461b 3d             dec a                	;=
	ram:461c 20 cc          jr nz,l45eah         	;.
	ram:461e cd ea 60       call sub_60eah       	;. . `
	ram:4621 cd 73 25       call 02573h          	;. s %
	ram:4624 f5             push af              	;.
	ram:4625 cd 7d 25       call 0257dh          	;. } %
	ram:4628 cd ef 2d       call 02defh          	;. . -
	ram:462b cd 2b 0d       call 00d2bh          	;. + .
	ram:462e cd 0b 61       call sub_610bh       	;. . a
	ram:4631 cd 1c 0d       call 00d1ch          	;. . .
	ram:4634 f1             pop af               	;.
	ram:4635 32 82 80       ld (08082h),a        	;2 . .
	ram:4638 f5             push af              	;.
	ram:4639 cd f1 61       call sub_61f1h       	;. . a
	ram:463c fd cb 0f 46    bit 0,(iy+00fh)      	;. . . F
	ram:4640 ca 47 46       jp z,l4647h          	;. G F
	ram:4643 f1             pop af               	;.
	ram:4644 c3 61 44       jp l4461h            	;. a D
l4647h:
	ram:4647 cd 37 61       call sub_6137h       	;. 7 a
	ram:464a cd 4c 61       call sub_614ch       	;. L a
	ram:464d f1             pop af               	;.
	ram:464e e6 80          and 080h             	;. .
	ram:4650 c4 ba 23       call nz,023bah       	;. . #
	ram:4653 cd 8e 1f       call 01f8eh          	;. . .
	ram:4656 30 1d          jr nc,l4675h         	;0 .
	ram:4658 3a e0 85       ld a,(085e0h)        	;: . .
l465bh:
	ram:465b f5             push af              	;.
	ram:465c cd 61 47       call sub_4761h       	;. a G
	ram:465f f1             pop af               	;.
	ram:4660 cd dd 46       call sub_46ddh       	;. . F
	ram:4663 cd 77 36       call 03677h          	;. w 6
	ram:4666 cd e2 46       call sub_46e2h       	;. . F
	ram:4669 3d             dec a                	;=
	ram:466a 20 ef          jr nz,l465bh         	;.
	ram:466c 21 97 48       ld hl,l4897h         	;! . H
	ram:466f cd b5 0a       call 00ab5h          	;. . .
	ram:4672 c3 6d 44       jp l446dh            	;. m D
l4675h:
	ram:4675 3a e0 85       ld a,(085e0h)        	;: . .
l4678h:
	ram:4678 cd 30 47       call sub_4730h       	;. 0 G
	ram:467b cf             rst 8                	;.
	ram:467c cd 77 36       call 03677h          	;. w 6
	ram:467f cd e8 46       call sub_46e8h       	;. . F
	ram:4682 f5             push af              	;.
	ram:4683 cd 71 0d       call 00d71h          	;. q .
	ram:4686 cd f5 1f       call 01ff5h          	;. . .
	ram:4689 f1             pop af               	;.
	ram:468a f5             push af              	;.
	ram:468b cd 61 47       call sub_4761h       	;. a G
	ram:468e cd 3e 61       call sub_613eh       	;. > a
	ram:4691 ef             rst 28h              	;.
	ram:4692 cd 07 20       call 02007h          	;. .  
	ram:4695 cd 71 0d       call 00d71h          	;. q .
	ram:4698 cd 8d 20       call 0208dh          	;. .  
	ram:469b f1             pop af               	;.
	ram:469c f5             push af              	;.
	ram:469d cd 2b 47       call sub_472bh       	;. + G
	ram:46a0 cd 3e 61       call sub_613eh       	;. > a
	ram:46a3 ef             rst 28h              	;.
	ram:46a4 cd 07 20       call 02007h          	;. .  
	ram:46a7 cd 61 0d       call 00d61h          	;. a .
	ram:46aa cd 29 20       call 02029h          	;. )  
	ram:46ad cd 61 0d       call 00d61h          	;. a .
	ram:46b0 f1             pop af               	;.
	ram:46b1 f5             push af              	;.
	ram:46b2 0e 02          ld c,002h            	;. .
	ram:46b4 cd 1a 47       call sub_471ah       	;. . G
	ram:46b7 cd 29 20       call 02029h          	;. )  
	ram:46ba f7             rst 30h              	;.
	ram:46bb f1             pop af               	;.
	ram:46bc f5             push af              	;.
	ram:46bd cd 18 47       call sub_4718h       	;. . G
	ram:46c0 f1             pop af               	;.
	ram:46c1 3d             dec a                	;=
	ram:46c2 20 b4          jr nz,l4678h         	;.
	ram:46c4 ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:46c8 cd 54 61       call sub_6154h       	;. T a
	ram:46cb c9             ret                  	;.
sub_46cch:
	ram:46cc f5             push af              	;.
	ram:46cd cd 1f 2f       call 02f1fh          	;. . /
	ram:46d0 ef             rst 28h              	;.
	ram:46d1 cf             rst 8                	;.
	ram:46d2 f1             pop af               	;.
sub_46d3h:
	ram:46d3 f5             push af              	;.
	ram:46d4 cd 30 47       call sub_4730h       	;. 0 G
	ram:46d7 f7             rst 30h              	;.
	ram:46d8 f1             pop af               	;.
	ram:46d9 cd 2f 36       call 0362fh          	;. / 6
	ram:46dc c9             ret                  	;.
sub_46ddh:
	ram:46dd 21 00 00       ld hl,00000h         	;! . .
	ram:46e0 18 12          jr l46f4h            	;. .
sub_46e2h:
	ram:46e2 f5             push af              	;.
	ram:46e3 3a e0 85       ld a,(085e0h)        	;: . .
	ram:46e6 18 05          jr l46edh            	;. .
sub_46e8h:
	ram:46e8 f5             push af              	;.
	ram:46e9 3a e0 85       ld a,(085e0h)        	;: . .
	ram:46ec 87             add a,a              	;.
l46edh:
	ram:46ed 6f             ld l,a               	;o
	ram:46ee 26 00          ld h,000h            	;& .
	ram:46f0 cd 33 1f       call 01f33h          	;. 3 .
	ram:46f3 f1             pop af               	;.
l46f4h:
	ram:46f4 f5             push af              	;.
	ram:46f5 47             ld b,a               	;G
	ram:46f6 87             add a,a              	;.
	ram:46f7 87             add a,a              	;.
	ram:46f8 87             add a,a              	;.
	ram:46f9 80             add a,b              	;.
	ram:46fa 80             add a,b              	;.
	ram:46fb 30 01          jr nc,l46feh         	;0 .
	ram:46fd 24             inc h                	;$
l46feh:
	ram:46fe 85             add a,l              	;.
	ram:46ff 30 01          jr nc,l4702h         	;0 .
	ram:4701 24             inc h                	;$
l4702h:
	ram:4702 c6 46          add a,046h           	;. F
	ram:4704 30 01          jr nc,l4707h         	;0 .
	ram:4706 24             inc h                	;$
l4707h:
	ram:4707 6f             ld l,a               	;o
	ram:4708 ed 5b 29 86    ld de,(08629h)       	;. [ ) .
	ram:470c eb             ex de,hl             	;.
	ram:470d b7             or a                 	;.
	ram:470e ed 52          sbc hl,de            	;. R
	ram:4710 11 82 80       ld de,08082h         	;. . .
	ram:4713 eb             ex de,hl             	;.
	ram:4714 f1             pop af               	;.
	ram:4715 c3 9d 20       jp 0209dh            	;. .  
sub_4718h:
	ram:4718 0e 01          ld c,001h            	;. .
sub_471ah:
	ram:471a f5             push af              	;.
	ram:471b 06 00          ld b,000h            	;. .
	ram:471d cd 7c 47       call sub_477ch       	;. | G
	ram:4720 c1             pop bc               	;.
	ram:4721 80             add a,b              	;.
	ram:4722 f5             push af              	;.
	ram:4723 3a e0 85       ld a,(085e0h)        	;: . .
	ram:4726 47             ld b,a               	;G
	ram:4727 87             add a,a              	;.
	ram:4728 80             add a,b              	;.
	ram:4729 18 c2          jr l46edh            	;. .
sub_472bh:
	ram:472b 21 00 00       ld hl,00000h         	;! . .
	ram:472e 18 12          jr l4742h            	;. .
sub_4730h:
	ram:4730 f5             push af              	;.
	ram:4731 3a e0 85       ld a,(085e0h)        	;: . .
	ram:4734 18 05          jr l473bh            	;. .
sub_4736h:
	ram:4736 f5             push af              	;.
	ram:4737 3a e0 85       ld a,(085e0h)        	;: . .
	ram:473a 87             add a,a              	;.
l473bh:
	ram:473b 6f             ld l,a               	;o
	ram:473c 26 00          ld h,000h            	;& .
	ram:473e cd 33 1f       call 01f33h          	;. 3 .
	ram:4741 f1             pop af               	;.
l4742h:
	ram:4742 f5             push af              	;.
	ram:4743 47             ld b,a               	;G
	ram:4744 87             add a,a              	;.
	ram:4745 87             add a,a              	;.
	ram:4746 87             add a,a              	;.
	ram:4747 80             add a,b              	;.
	ram:4748 80             add a,b              	;.
	ram:4749 30 01          jr nc,l474ch         	;0 .
	ram:474b 24             inc h                	;$
l474ch:
	ram:474c 85             add a,l              	;.
	ram:474d 30 01          jr nc,l4750h         	;0 .
	ram:474f 24             inc h                	;$
l4750h:
	ram:4750 c6 46          add a,046h           	;. F
	ram:4752 30 01          jr nc,l4755h         	;0 .
	ram:4754 24             inc h                	;$
l4755h:
	ram:4755 6f             ld l,a               	;o
	ram:4756 ed 5b 29 86    ld de,(08629h)       	;. [ ) .
	ram:475a eb             ex de,hl             	;.
	ram:475b b7             or a                 	;.
	ram:475c ed 52          sbc hl,de            	;. R
	ram:475e f1             pop af               	;.
	ram:475f e7             rst 20h              	;.
	ram:4760 c9             ret                  	;.
sub_4761h:
	ram:4761 47             ld b,a               	;G
	ram:4762 3a e0 85       ld a,(085e0h)        	;: . .
	ram:4765 87             add a,a              	;.
	ram:4766 80             add a,b              	;.
	ram:4767 18 0a          jr l4773h            	;. .
sub_4769h:
	ram:4769 0e 01          ld c,001h            	;. .
sub_476bh:
	ram:476b f5             push af              	;.
	ram:476c 06 00          ld b,000h            	;. .
	ram:476e cd 7c 47       call sub_477ch       	;. | G
	ram:4771 c1             pop bc               	;.
	ram:4772 80             add a,b              	;.
l4773h:
	ram:4773 f5             push af              	;.
	ram:4774 3a e0 85       ld a,(085e0h)        	;: . .
	ram:4777 47             ld b,a               	;G
	ram:4778 87             add a,a              	;.
	ram:4779 80             add a,b              	;.
	ram:477a 18 bf          jr l473bh            	;. .
sub_477ch:
	ram:477c 3a e0 85       ld a,(085e0h)        	;: . .
	ram:477f 57             ld d,a               	;W
	ram:4780 78             ld a,b               	;x
	ram:4781 41             ld b,c               	;A
	ram:4782 18 01          jr l4785h            	;. .
l4784h:
	ram:4784 82             add a,d              	;.
l4785h:
	ram:4785 10 fd          djnz l4784h          	;. .
	ram:4787 c9             ret                  	;.
; BEGIN looks like data table
l4788h:
	ram:4788 00             nop                  	;.
	ram:4789 fe fb          cp 0fbh              	;. .
	ram:478b 69             ld l,c               	;i
	ram:478c 44             ld b,h               	;D
	ram:478d 44             ld b,h               	;D
	ram:478e 44             ld b,h               	;D
	ram:478f 44             ld b,h               	;D
	ram:4790 44             ld b,h               	;D
	ram:4791 44             ld b,h               	;D
l4792h:
	ram:4792 00             nop                  	;.
	ram:4793 fe fb          cp 0fbh              	;. .
	ram:4795 83             add a,e              	;.
	ram:4796 33             inc sp               	;3
	ram:4797 33             inc sp               	;3
	ram:4798 33             inc sp               	;3
	ram:4799 33             inc sp               	;3
	ram:479a 33             inc sp               	;3
	ram:479b 33             inc sp               	;3
l479ch:
	ram:479c 00             nop                  	;.
	ram:479d ff             rst 38h              	;.
	ram:479e fb             ei                   	;.
	ram:479f 12             ld (de),a            	;.
	ram:47a0 50             ld d,b               	;P
	ram:47a1 00             nop                  	;.
	ram:47a2 00             nop                  	;.
	ram:47a3 00             nop                  	;.
	ram:47a4 00             nop                  	;.
	ram:47a5 00             nop                  	;.
l47a6h:
	ram:47a6 00             nop                  	;.
	ram:47a7 ff             rst 38h              	;.
	ram:47a8 fb             ei                   	;.
	ram:47a9 20 00          jr nz,l47abh         	;.
l47abh:
	ram:47ab 00             nop                  	;.
	ram:47ac 00             nop                  	;.
	ram:47ad 00             nop                  	;.
	ram:47ae 00             nop                  	;.
	ram:47af 00             nop                  	;.
l47b0h:
	ram:47b0 00             nop                  	;.
	ram:47b1 ff             rst 38h              	;.
	ram:47b2 fb             ei                   	;.
	ram:47b3 90             sub b                	;.
	ram:47b4 00             nop                  	;.
	ram:47b5 00             nop                  	;.
	ram:47b6 00             nop                  	;.
	ram:47b7 00             nop                  	;.
	ram:47b8 00             nop                  	;.
	ram:47b9 00             nop                  	;.
l47bah:
	ram:47ba 00             nop                  	;.
	ram:47bb fb             ei                   	;.
	ram:47bc fb             ei                   	;.
	ram:47bd 50             ld d,b               	;P
	ram:47be 00             nop                  	;.
	ram:47bf 00             nop                  	;.
	ram:47c0 00             nop                  	;.
	ram:47c1 00             nop                  	;.
	ram:47c2 00             nop                  	;.
	ram:47c3 00             nop                  	;.
 ; END looks like data table
	ram:47c4 fd cb 0f 4e    bit 1,(iy+00fh)      	;. . . N
	ram:47c8 c2 60 1f       jp nz,01f60h         	;. ` .
	ram:47cb cd 72 48       call sub_4872h       	;. r H
	ram:47ce f5             push af              	;.
	ram:47cf cf             rst 8                	;.
	ram:47d0 f1             pop af               	;.
	ram:47d1 f5             push af              	;.
	ram:47d2 cd 69 47       call sub_4769h       	;. i G
	ram:47d5 f7             rst 30h              	;.
	ram:47d6 cd 07 20       call 02007h          	;. .  
	ram:47d9 ef             rst 28h              	;.
	ram:47da cd 8d 20       call 0208dh          	;. .  
	ram:47dd f1             pop af               	;.
	ram:47de f5             push af              	;.
	ram:47df cd 61 47       call sub_4761h       	;. a G
	ram:47e2 cd 3e 61       call sub_613eh       	;. > a
	ram:47e5 ef             rst 28h              	;.
	ram:47e6 cd 29 20       call 02029h          	;. )  
	ram:47e9 f7             rst 30h              	;.
	ram:47ea cd 07 20       call 02007h          	;. .  
	ram:47ed ef             rst 28h              	;.
	ram:47ee cf             rst 8                	;.
	ram:47ef f1             pop af               	;.
	ram:47f0 cd 36 47       call sub_4736h       	;. 6 G
	ram:47f3 f7             rst 30h              	;.
	ram:47f4 18 37          jr l482dh            	;. 7
	ram:47f6 fd cb 0f 4e    bit 1,(iy+00fh)      	;. . . N
	ram:47fa c2 60 1f       jp nz,01f60h         	;. ` .
	ram:47fd cd 72 48       call sub_4872h       	;. r H
	ram:4800 f5             push af              	;.
	ram:4801 cd 36 21       call 02136h          	;. 6 !
	ram:4804 ef             rst 28h              	;.
	ram:4805 cd 8d 20       call 0208dh          	;. .  
	ram:4808 f1             pop af               	;.
	ram:4809 f5             push af              	;.
	ram:480a cd 69 47       call sub_4769h       	;. i G
	ram:480d cd 66 0d       call 00d66h          	;. f .
	ram:4810 cd 29 20       call 02029h          	;. )  
	ram:4813 f7             rst 30h              	;.
	ram:4814 cd 07 20       call 02007h          	;. .  
	ram:4817 ef             rst 28h              	;.
	ram:4818 cd f5 1f       call 01ff5h          	;. . .
	ram:481b f1             pop af               	;.
	ram:481c cd 61 47       call sub_4761h       	;. a G
	ram:481f cd 3e 61       call sub_613eh       	;. > a
	ram:4822 ef             rst 28h              	;.
	ram:4823 cd 07 20       call 02007h          	;. .  
	ram:4826 f7             rst 30h              	;.
	ram:4827 cd 3e 61       call sub_613eh       	;. > a
	ram:482a cd 23 10       call 01023h          	;. # .
l482dh:
	ram:482d c3 9b 25       jp 0259bh            	;. . %
sub_4830h:
	ram:4830 c5             push bc              	;.
	ram:4831 3a e0 85       ld a,(085e0h)        	;: . .
l4834h:
	ram:4834 f5             push af              	;.
	ram:4835 ed 5b 29 86    ld de,(08629h)       	;. [ ) .
	ram:4839 ed 53 32 86    ld (08632h),de       	;. S 2 .
	ram:483d cd ed 35       call 035edh          	;. . 5
	ram:4840 ed 5b 32 86    ld de,(08632h)       	;. [ 2 .
	ram:4844 ed 53 29 86    ld (08629h),de       	;. S ) .
	ram:4848 cd 47 1f       call 01f47h          	;. G .
	ram:484b c2 08 0a       jp nz,00a08h         	;. . .
	ram:484e f1             pop af               	;.
	ram:484f c1             pop bc               	;.
	ram:4850 c5             push bc              	;.
	ram:4851 f5             push af              	;.
	ram:4852 cd 1a 47       call sub_471ah       	;. . G
	ram:4855 f1             pop af               	;.
	ram:4856 3d             dec a                	;=
	ram:4857 20 db          jr nz,l4834h         	;.
	ram:4859 c1             pop bc               	;.
	ram:485a c9             ret                  	;.
sub_485bh:
	ram:485b e5             push hl              	;.
	ram:485c cd 6b 47       call sub_476bh       	;. k G
	ram:485f e1             pop hl               	;.
	ram:4860 cd 55 0e       call 00e55h          	;. U .
	ram:4863 c3 29 20       jp 02029h            	;. )  
sub_4866h:
	ram:4866 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4869 e7             rst 20h              	;.
	ram:486a c9             ret                  	;.
sub_486bh:
	ram:486b ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:486f c3 11 21       jp 02111h            	;. . !
sub_4872h:
	ram:4872 f5             push af              	;.
	ram:4873 cd 2f 61       call sub_612fh       	;. / a
	ram:4876 cd 66 48       call sub_4866h       	;. f H
	ram:4879 cd 71 0d       call 00d71h          	;. q .
	ram:487c cd 3e 61       call sub_613eh       	;. > a
	ram:487f cd 23 10       call 01023h          	;. # .
	ram:4882 cf             rst 8                	;.
	ram:4883 f1             pop af               	;.
	ram:4884 f5             push af              	;.
	ram:4885 0e 02          ld c,002h            	;. .
	ram:4887 cd 6b 47       call sub_476bh       	;. k G
	ram:488a ef             rst 28h              	;.
	ram:488b f1             pop af               	;.
	ram:488c c3 fe 1f       jp 01ffeh            	;. . .
l488fh:
	ram:488f fe 8e          cp 08eh              	;. .
	ram:4891 ca 79 0a       jp z,00a79h          	;. y .
l4894h:
	ram:4894 c3 8a 0a       jp 00a8ah            	;. . .
l4897h:
	ram:4897 fe 86          cp 086h              	;. .
	ram:4899 30 f9          jr nc,l4894h         	;0 .
	ram:489b fd cb 0f 56    bit 2,(iy+00fh)      	;. . . V
	ram:489f 20 2f          jr nz,l48d0h         	;/
	ram:48a1 cd ea 60       call sub_60eah       	;. . `
	ram:48a4 cd 68 25       call 02568h          	;. h %
	ram:48a7 f5             push af              	;.
	ram:48a8 cd 66 48       call sub_4866h       	;. f H
	ram:48ab cd 4c 61       call sub_614ch       	;. L a
	ram:48ae f1             pop af               	;.
	ram:48af f5             push af              	;.
	ram:48b0 cc ba 23       call z,023bah        	;. . #
	ram:48b3 cd 8e 1f       call 01f8eh          	;. . .
	ram:48b6 30 17          jr nc,l48cfh         	;0 .
	ram:48b8 cd 51 61       call sub_6151h       	;. Q a
	ram:48bb cd 2f 61       call sub_612fh       	;. / a
	ram:48be f1             pop af               	;.
	ram:48bf c4 ba 23       call nz,023bah       	;. . #
	ram:48c2 cd 71 0d       call 00d71h          	;. q .
	ram:48c5 fd cb 0f d6    set 2,(iy+00fh)      	;. . . .
	ram:48c9 cd f1 61       call sub_61f1h       	;. . a
	ram:48cc c3 61 44       jp l4461h            	;. a D
l48cfh:
	ram:48cf f1             pop af               	;.
l48d0h:
	ram:48d0 ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:48d4 cd 54 61       call sub_6154h       	;. T a
	ram:48d7 fd cb 0f ce    set 1,(iy+00fh)      	;. . . .
	ram:48db c9             ret                  	;.
sub_48dch:
	ram:48dc 0e 02          ld c,002h            	;. .
sub_48deh:
	ram:48de e5             push hl              	;.
	ram:48df cd 6b 47       call sub_476bh       	;. k G
	ram:48e2 f1             pop af               	;.
	ram:48e3 cd eb 48       call sub_48ebh       	;. . H
	ram:48e6 cd 29 20       call 02029h          	;. )  
	ram:48e9 f7             rst 30h              	;.
	ram:48ea c9             ret                  	;.
sub_48ebh:
	ram:48eb 21 90 80       ld hl,08090h         	;! . .
	ram:48ee cd 7b 21       call 0217bh          	;. { !
	ram:48f1 fe 55          cp 055h              	;. U
	ram:48f3 38 01          jr c,l48f6h          	;8 .
	ram:48f5 34             inc (hl)             	;4
l48f6h:
	ram:48f6 21 ff fb       ld hl,0fbffh         	;! . .
	ram:48f9 22 8e 80       ld (0808eh),hl       	;" . .
	ram:48fc af             xor a                	;.
	ram:48fd 32 8d 80       ld (0808dh),a        	;2 . .
	ram:4900 ef             rst 28h              	;.
	ram:4901 c9             ret                  	;.
	ram:4902 3a b9 80       ld a,(080b9h)        	;: . .
	ram:4905 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:4908 20 11          jr nz,l491bh         	;.
	ram:490a 47             ld b,a               	;G
	ram:490b cd 3e 21       call 0213eh          	;. > !
l490eh:
	ram:490e c5             push bc              	;.
	ram:490f cd 4a 2e       call 02e4ah          	;. J .
	ram:4912 c1             pop bc               	;.
	ram:4913 10 f9          djnz l490eh          	;. .
	ram:4915 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:4918 22 cc 80       ld (080cch),hl       	;" . .
l491bh:
	ram:491b 21 be 80       ld hl,080beh         	;! . .
	ram:491e 36 01          ld (hl),001h         	;6 .
	ram:4920 3a b9 80       ld a,(080b9h)        	;: . .
	ram:4923 23             inc hl               	;#
	ram:4924 77             ld (hl),a            	;w
l4925h:
	ram:4925 32 ba 80       ld (080bah),a        	;2 . .
l4928h:
	ram:4928 21 bb 80       ld hl,080bbh         	;! . .
	ram:492b 36 01          ld (hl),001h         	;6 .
l492dh:
	ram:492d 3a ba 80       ld a,(080bah)        	;: . .
	ram:4930 be             cp (hl)              	;.
	ram:4931 28 08          jr z,l493bh          	;( .
	ram:4933 cd 0c 5f       call sub_5f0ch       	;. . _
	ram:4936 cd d9 3a       call 03ad9h          	;. . :
	ram:4939 20 14          jr nz,l494fh         	;.
l493bh:
	ram:493b cd 5d 50       call sub_505dh       	;. ] P
	ram:493e 30 ed          jr nc,l492dh         	;0 .
	ram:4940 cd a1 4a       call sub_4aa1h       	;. . J
	ram:4943 3a bf 80       ld a,(080bfh)        	;: . .
	ram:4946 3d             dec a                	;=
	ram:4947 ca 1a 4b       jp z,l4b1ah          	;. . K
	ram:494a 32 bf 80       ld (080bfh),a        	;2 . .
	ram:494d 18 d6          jr l4925h            	;. .
l494fh:
	ram:494f 21 ba 80       ld hl,080bah         	;! . .
	ram:4952 35             dec (hl)             	;5
	ram:4953 20 d3          jr nz,l4928h         	;.
l4955h:
	ram:4955 3a be 80       ld a,(080beh)        	;: . .
	ram:4958 77             ld (hl),a            	;w
l4959h:
	ram:4959 3a bf 80       ld a,(080bfh)        	;: . .
	ram:495c be             cp (hl)              	;.
	ram:495d 38 34          jr c,l4993h          	;8 4
	ram:495f 23             inc hl               	;#
	ram:4960 3a be 80       ld a,(080beh)        	;: . .
	ram:4963 77             ld (hl),a            	;w
l4964h:
	ram:4964 3a bf 80       ld a,(080bfh)        	;: . .
	ram:4967 be             cp (hl)              	;.
	ram:4968 38 14          jr c,l497eh          	;8 .
	ram:496a 3a ba 80       ld a,(080bah)        	;: . .
	ram:496d be             cp (hl)              	;.
	ram:496e 28 08          jr z,l4978h          	;( .
	ram:4970 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:4973 cd d9 3a       call 03ad9h          	;. . :
	ram:4976 20 15          jr nz,l498dh         	;.
l4978h:
	ram:4978 21 bb 80       ld hl,080bbh         	;! . .
	ram:497b 34             inc (hl)             	;4
	ram:497c 18 e6          jr l4964h            	;. .
l497eh:
	ram:497e 3a be 80       ld a,(080beh)        	;: . .
	ram:4981 cd a1 4a       call sub_4aa1h       	;. . J
	ram:4984 21 be 80       ld hl,080beh         	;! . .
	ram:4987 34             inc (hl)             	;4
	ram:4988 21 ba 80       ld hl,080bah         	;! . .
	ram:498b 18 c8          jr l4955h            	;. .
l498dh:
	ram:498d 21 ba 80       ld hl,080bah         	;! . .
	ram:4990 34             inc (hl)             	;4
	ram:4991 18 c6          jr l4959h            	;. .
l4993h:
	ram:4993 af             xor a                	;.
	ram:4994 f5             push af              	;.
	ram:4995 21 bb 80       ld hl,080bbh         	;! . .
	ram:4998 3a be 80       ld a,(080beh)        	;: . .
	ram:499b 77             ld (hl),a            	;w
l499ch:
	ram:499c 3a bf 80       ld a,(080bfh)        	;: . .
	ram:499f be             cp (hl)              	;.
	ram:49a0 da 15 4b       jp c,l4b15h          	;. . K
	ram:49a3 cd 8e 21       call 0218eh          	;. . !
	ram:49a6 cd ec 1f       call 01fech          	;. . .
	ram:49a9 3a be 80       ld a,(080beh)        	;: . .
	ram:49ac 21 ba 80       ld hl,080bah         	;! . .
	ram:49af 77             ld (hl),a            	;w
l49b0h:
	ram:49b0 3a bf 80       ld a,(080bfh)        	;: . .
	ram:49b3 be             cp (hl)              	;.
	ram:49b4 38 22          jr c,l49d8h          	;8 "
	ram:49b6 3a bb 80       ld a,(080bbh)        	;: . .
	ram:49b9 be             cp (hl)              	;.
	ram:49ba 28 16          jr z,l49d2h          	;( .
	ram:49bc cd 94 4a       call sub_4a94h       	;. . J
	ram:49bf cd a3 50       call sub_50a3h       	;. . P
	ram:49c2 cd f5 1f       call 01ff5h          	;. . .
	ram:49c5 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:49c8 cd 97 4a       call sub_4a97h       	;. . J
	ram:49cb cd 19 20       call 02019h          	;. .  
	ram:49ce f7             rst 30h              	;.
	ram:49cf cd 21 20       call 02021h          	;. !  
l49d2h:
	ram:49d2 21 ba 80       ld hl,080bah         	;! . .
	ram:49d5 34             inc (hl)             	;4
	ram:49d6 18 d8          jr l49b0h            	;. .
l49d8h:
	ram:49d8 3a 9b 80       ld a,(0809bh)        	;: . .
	ram:49db b7             or a                 	;.
	ram:49dc ca 8d 4a       jp z,l4a8dh          	;. . J
	ram:49df 3a a6 80       ld a,(080a6h)        	;: . .
	ram:49e2 b7             or a                 	;.
	ram:49e3 ca 8d 4a       jp z,l4a8dh          	;. . J
	ram:49e6 cd 60 20       call 02060h          	;. `  
	ram:49e9 cd a3 50       call sub_50a3h       	;. . P
	ram:49ec cd 4a 2e       call 02e4ah          	;. J .
	ram:49ef cd 40 2e       call 02e40h          	;. @ .
	ram:49f2 21 00 00       ld hl,00000h         	;! . .
	ram:49f5 22 ae 80       ld (080aeh),hl       	;" . .
	ram:49f8 2a 99 80       ld hl,(08099h)       	;* . .
	ram:49fb 2b             dec hl               	;+
	ram:49fc 22 99 80       ld (08099h),hl       	;" . .
l49ffh:
	ram:49ff cd 7b 1f       call 01f7bh          	;. { .
	ram:4a02 30 11          jr nc,l4a15h         	;0 .
	ram:4a04 2a ae 80       ld hl,(080aeh)       	;* . .
	ram:4a07 23             inc hl               	;#
	ram:4a08 22 ae 80       ld (080aeh),hl       	;" . .
	ram:4a0b 2a a4 80       ld hl,(080a4h)       	;* . .
	ram:4a0e 23             inc hl               	;#
	ram:4a0f 23             inc hl               	;#
	ram:4a10 22 a4 80       ld (080a4h),hl       	;" . .
	ram:4a13 18 ea          jr l49ffh            	;. .
l4a15h:
	ram:4a15 cd 1a 2f       call 02f1ah          	;. . /
	ram:4a18 2a 99 80       ld hl,(08099h)       	;* . .
	ram:4a1b 23             inc hl               	;#
	ram:4a1c 22 99 80       ld (08099h),hl       	;" . .
l4a1fh:
	ram:4a1f cd 7b 1f       call 01f7bh          	;. { .
	ram:4a22 38 11          jr c,l4a35h          	;8 .
	ram:4a24 2a ae 80       ld hl,(080aeh)       	;* . .
	ram:4a27 2b             dec hl               	;+
	ram:4a28 22 ae 80       ld (080aeh),hl       	;" . .
	ram:4a2b 2a a4 80       ld hl,(080a4h)       	;* . .
	ram:4a2e 2b             dec hl               	;+
	ram:4a2f 2b             dec hl               	;+
	ram:4a30 22 a4 80       ld (080a4h),hl       	;" . .
	ram:4a33 18 ea          jr l4a1fh            	;. .
l4a35h:
	ram:4a35 cd f4 2d       call 02df4h          	;. . -
	ram:4a38 cd a3 50       call sub_50a3h       	;. . P
	ram:4a3b cd 21 63       call sub_6321h       	;. ! c
	ram:4a3e cd f5 1f       call 01ff5h          	;. . .
	ram:4a41 cd f4 2d       call 02df4h          	;. . -
	ram:4a44 21 e4 5d       ld hl,l5de4h         	;! . ]
	ram:4a47 cd 55 0e       call 00e55h          	;. U .
	ram:4a4a cd 0d 51       call sub_510dh       	;. . Q
	ram:4a4d 38 3e          jr c,l4a8dh          	;8 >
	ram:4a4f cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:4a52 20 09          jr nz,l4a5dh         	;.
	ram:4a54 cd a2 62       call sub_62a2h       	;. . b
	ram:4a57 cd 41 63       call sub_6341h       	;. A c
	ram:4a5a cd b9 62       call sub_62b9h       	;. . b
l4a5dh:
	ram:4a5d f1             pop af               	;.
	ram:4a5e 3c             inc a                	;<
	ram:4a5f f5             push af              	;.
	ram:4a60 cd 11 5e       call sub_5e11h       	;. . ^
l4a63h:
	ram:4a63 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:4a66 cd 21 63       call sub_6321h       	;. ! c
	ram:4a69 cd 78 26       call 02678h          	;. x &
	ram:4a6c c4 30 63       call nz,sub_6330h    	;. 0 c
	ram:4a6f cd 79 5f       call sub_5f79h       	;. y _
	ram:4a72 cd 4f 50       call sub_504fh       	;. O P
	ram:4a75 30 ec          jr nc,l4a63h         	;0 .
	ram:4a77 36 01          ld (hl),001h         	;6 .
l4a79h:
	ram:4a79 cd 0c 5f       call sub_5f0ch       	;. . _
	ram:4a7c cd 41 63       call sub_6341h       	;. A c
	ram:4a7f cd 78 26       call 02678h          	;. x &
	ram:4a82 c4 51 63       call nz,sub_6351h    	;. Q c
	ram:4a85 cd 61 60       call sub_6061h       	;. a `
	ram:4a88 cd 4a 50       call sub_504ah       	;. J P
	ram:4a8b 30 ec          jr nc,l4a79h         	;0 .
l4a8dh:
	ram:4a8d 21 bb 80       ld hl,080bbh         	;! . .
	ram:4a90 34             inc (hl)             	;4
	ram:4a91 c3 9c 49       jp l499ch            	;. . I
sub_4a94h:
	ram:4a94 cd 0c 5f       call sub_5f0ch       	;. . _
sub_4a97h:
	ram:4a97 cd 73 25       call 02573h          	;. s %
	ram:4a9a cd 78 26       call 02678h          	;. x &
	ram:4a9d c8             ret z                	;.
	ram:4a9e c3 3f 0d       jp 00d3fh            	;. ? .
sub_4aa1h:
	ram:4aa1 32 b0 80       ld (080b0h),a        	;2 . .
	ram:4aa4 f5             push af              	;.
	ram:4aa5 3a ba 80       ld a,(080bah)        	;: . .
	ram:4aa8 26 00          ld h,000h            	;& .
	ram:4aaa 6f             ld l,a               	;o
	ram:4aab cd ef 39       call 039efh          	;. . 9
	ram:4aae cd 95 20       call 02095h          	;. .  
	ram:4ab1 f1             pop af               	;.
	ram:4ab2 f5             push af              	;.
	ram:4ab3 6f             ld l,a               	;o
	ram:4ab4 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:4ab7 cc 9b 62       call z,sub_629bh     	;. . b
	ram:4aba 3a ba 80       ld a,(080bah)        	;: . .
	ram:4abd d1             pop de               	;.
	ram:4abe ba             cp d                 	;.
	ram:4abf c8             ret z                	;.
	ram:4ac0 47             ld b,a               	;G
	ram:4ac1 3a be 80       ld a,(080beh)        	;: . .
sub_4ac4h:
	ram:4ac4 2a ba 80       ld hl,(080bah)       	;* . .
	ram:4ac7 e5             push hl              	;.
	ram:4ac8 21 ba 80       ld hl,080bah         	;! . .
	ram:4acb 77             ld (hl),a            	;w
	ram:4acc 23             inc hl               	;#
	ram:4acd 70             ld (hl),b            	;p
	ram:4ace cd 3b 2e       call 02e3bh          	;. ; .
l4ad1h:
	ram:4ad1 cd 8f 5e       call sub_5e8fh       	;. . ^
	ram:4ad4 cd 21 20       call 02021h          	;. !  
	ram:4ad7 cd fe 1f       call 01ffeh          	;. . .
	ram:4ada cd 39 5f       call sub_5f39h       	;. 9 _
	ram:4add cd e5 5f       call sub_5fe5h       	;. . _
	ram:4ae0 cd 60 20       call 02060h          	;. `  
	ram:4ae3 cd 07 20       call 02007h          	;. .  
	ram:4ae6 cd 79 5f       call sub_5f79h       	;. y _
	ram:4ae9 cd 4f 50       call sub_504fh       	;. O P
	ram:4aec 30 e3          jr nc,l4ad1h         	;0 .
	ram:4aee cd 18 5e       call sub_5e18h       	;. . ^
l4af1h:
	ram:4af1 cd 16 5f       call sub_5f16h       	;. . _
	ram:4af4 cd 21 20       call 02021h          	;. !  
	ram:4af7 cd fe 1f       call 01ffeh          	;. . .
	ram:4afa cd 0c 5f       call sub_5f0ch       	;. . _
	ram:4afd cd 88 60       call sub_6088h       	;. . `
	ram:4b00 cd 60 20       call 02060h          	;. `  
	ram:4b03 cd 07 20       call 02007h          	;. .  
	ram:4b06 cd 61 60       call sub_6061h       	;. a `
	ram:4b09 cd 4a 50       call sub_504ah       	;. J P
	ram:4b0c 30 e3          jr nc,l4af1h         	;0 .
	ram:4b0e e1             pop hl               	;.
	ram:4b0f 22 ba 80       ld (080bah),hl       	;" . .
	ram:4b12 c3 e5 2d       jp 02de5h            	;. . -
l4b15h:
	ram:4b15 f1             pop af               	;.
	ram:4b16 b7             or a                 	;.
	ram:4b17 c2 93 49       jp nz,l4993h         	;. . I
l4b1ah:
	ram:4b1a cd 78 26       call 02678h          	;. x &
	ram:4b1d 28 09          jr z,l4b28h          	;( .
	ram:4b1f 21 32 00       ld hl,00032h         	;! 2 .
	ram:4b22 cd 28 2e       call 02e28h          	;. ( .
	ram:4b25 22 29 86       ld (08629h),hl       	;" ) .
l4b28h:
	ram:4b28 ed 4b be 80    ld bc,(080beh)       	;. K . .
	ram:4b2c 05             dec b                	;.
	ram:4b2d 21 b0 80       ld hl,080b0h         	;! . .
	ram:4b30 71             ld (hl),c            	;q
	ram:4b31 78             ld a,b               	;x
l4b32h:
	ram:4b32 21 b0 80       ld hl,080b0h         	;! . .
	ram:4b35 34             inc (hl)             	;4
	ram:4b36 be             cp (hl)              	;.
	ram:4b37 f5             push af              	;.
	ram:4b38 7e             ld a,(hl)            	;~
	ram:4b39 32 bb 80       ld (080bbh),a        	;2 . .
	ram:4b3c 3d             dec a                	;=
	ram:4b3d 23             inc hl               	;#
	ram:4b3e 77             ld (hl),a            	;w
	ram:4b3f cd 78 26       call 02678h          	;. x &
	ram:4b42 c2 43 57       jp nz,l5743h         	;. C W
	ram:4b45 da e0 4b       jp c,l4be0h          	;. . K
	ram:4b48 cd 89 21       call 02189h          	;. . !
	ram:4b4b cd 1c 5e       call sub_5e1ch       	;. . ^
l4b4eh:
	ram:4b4e cd d3 60       call sub_60d3h       	;. . `
	ram:4b51 cd f4 20       call 020f4h          	;. .  
	ram:4b54 cd 56 20       call 02056h          	;. V  
	ram:4b57 cd 88 1f       call 01f88h          	;. . .
	ram:4b5a 30 09          jr nc,l4b65h         	;0 .
	ram:4b5c cd ec 1f       call 01fech          	;. . .
	ram:4b5f 3a ba 80       ld a,(080bah)        	;: . .
	ram:4b62 32 bb 80       ld (080bbh),a        	;2 . .
l4b65h:
	ram:4b65 cd 4a 50       call sub_504ah       	;. J P
	ram:4b68 30 e4          jr nc,l4b4eh         	;0 .
	ram:4b6a 23             inc hl               	;#
	ram:4b6b 7e             ld a,(hl)            	;~
	ram:4b6c cd 61 63       call sub_6361h       	;. a c
	ram:4b6f 3a b0 80       ld a,(080b0h)        	;: . .
	ram:4b72 be             cp (hl)              	;.
	ram:4b73 28 07          jr z,l4b7ch          	;( .
	ram:4b75 46             ld b,(hl)            	;F
	ram:4b76 3a b1 80       ld a,(080b1h)        	;: . .
	ram:4b79 cd c4 4a       call sub_4ac4h       	;. . J
l4b7ch:
	ram:4b7c 3a a6 80       ld a,(080a6h)        	;: . .
	ram:4b7f b7             or a                 	;.
	ram:4b80 28 5a          jr z,l4bdch          	;( Z
	ram:4b82 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4b85 cd 31 5e       call sub_5e31h       	;. 1 ^
l4b88h:
	ram:4b88 cd 5d 50       call sub_505dh       	;. ] P
	ram:4b8b 38 4c          jr c,l4bd9h          	;8 L
	ram:4b8d cd bc 5e       call sub_5ebch       	;. . ^
	ram:4b90 cd d1 23       call 023d1h          	;. . #
	ram:4b93 28 f3          jr z,l4b88h          	;( .
	ram:4b95 cd 1f 2f       call 02f1fh          	;. . /
	ram:4b98 cd 23 10       call 01023h          	;. # .
	ram:4b9b cd 82 5f       call sub_5f82h       	;. . _
	ram:4b9e cd f5 1f       call 01ff5h          	;. . .
	ram:4ba1 3a b1 80       ld a,(080b1h)        	;: . .
	ram:4ba4 32 ba 80       ld (080bah),a        	;2 . .
l4ba7h:
	ram:4ba7 cd 4f 50       call sub_504fh       	;. O P
	ram:4baa 38 13          jr c,l4bbfh          	;8 .
	ram:4bac cd 8f 5e       call sub_5e8fh       	;. . ^
	ram:4baf cd 07 20       call 02007h          	;. .  
	ram:4bb2 ef             rst 28h              	;.
	ram:4bb3 cf             rst 8                	;.
	ram:4bb4 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:4bb7 cd 71 0d       call 00d71h          	;. q .
	ram:4bba cd 79 5f       call sub_5f79h       	;. y _
	ram:4bbd 18 e8          jr l4ba7h            	;. .
l4bbfh:
	ram:4bbf af             xor a                	;.
	ram:4bc0 32 ba 80       ld (080bah),a        	;2 . .
l4bc3h:
	ram:4bc3 cd 4a 50       call sub_504ah       	;. J P
	ram:4bc6 38 c0          jr c,l4b88h          	;8 .
	ram:4bc8 cd 0c 5f       call sub_5f0ch       	;. . _
	ram:4bcb cd 07 20       call 02007h          	;. .  
	ram:4bce ef             rst 28h              	;.
	ram:4bcf cf             rst 8                	;.
	ram:4bd0 cd 16 5f       call sub_5f16h       	;. . _
	ram:4bd3 f7             rst 30h              	;.
	ram:4bd4 cd 88 60       call sub_6088h       	;. . `
	ram:4bd7 18 ea          jr l4bc3h            	;. .
l4bd9h:
	ram:4bd9 cd e5 2d       call 02de5h          	;. . -
l4bdch:
	ram:4bdc f1             pop af               	;.
	ram:4bdd c3 32 4b       jp l4b32h            	;. 2 K
l4be0h:
	ram:4be0 f1             pop af               	;.
	ram:4be1 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:4be4 20 54          jr nz,l4c3ah         	;T
	ram:4be6 cd 3e 4e       call sub_4e3eh       	;. > N
	ram:4be9 21 b0 80       ld hl,080b0h         	;! . .
	ram:4bec 3a bf 80       ld a,(080bfh)        	;: . .
	ram:4bef 77             ld (hl),a            	;w
l4bf0h:
	ram:4bf0 35             dec (hl)             	;5
	ram:4bf1 3a be 80       ld a,(080beh)        	;: . .
	ram:4bf4 be             cp (hl)              	;.
	ram:4bf5 30 43          jr nc,l4c3ah         	;0 C
	ram:4bf7 7e             ld a,(hl)            	;~
	ram:4bf8 23             inc hl               	;#
	ram:4bf9 77             ld (hl),a            	;w
	ram:4bfa 35             dec (hl)             	;5
	ram:4bfb 32 bb 80       ld (080bbh),a        	;2 . .
l4bfeh:
	ram:4bfe cd 5d 50       call sub_505dh       	;. ] P
	ram:4c01 38 08          jr c,l4c0bh          	;8 .
	ram:4c03 cd bc 5e       call sub_5ebch       	;. . ^
	ram:4c06 cd 87 5f       call sub_5f87h       	;. . _
	ram:4c09 18 f3          jr l4bfeh            	;. .
l4c0bh:
	ram:4c0b cd 73 63       call sub_6373h       	;. s c
	ram:4c0e 32 bb 80       ld (080bbh),a        	;2 . .
	ram:4c11 21 b0 80       ld hl,080b0h         	;! . .
	ram:4c14 be             cp (hl)              	;.
	ram:4c15 28 d9          jr z,l4bf0h          	;( .
	ram:4c17 7e             ld a,(hl)            	;~
	ram:4c18 32 ba 80       ld (080bah),a        	;2 . .
l4c1bh:
	ram:4c1b cd 40 5f       call sub_5f40h       	;. @ _
	ram:4c1e cd eb 5f       call sub_5febh       	;. . _
	ram:4c21 cd 60 1f       call 01f60h          	;. ` .
	ram:4c24 cd 7c 5f       call sub_5f7ch       	;. | _
	ram:4c27 cd 4a 50       call sub_504ah       	;. J P
	ram:4c2a 30 ef          jr nc,l4c1bh         	;0 .
	ram:4c2c cd 3e 21       call 0213eh          	;. > !
	ram:4c2f cd 93 21       call 02193h          	;. . !
	ram:4c32 cd 87 5f       call sub_5f87h       	;. . _
	ram:4c35 21 b0 80       ld hl,080b0h         	;! . .
	ram:4c38 18 b6          jr l4bf0h            	;. .
l4c3ah:
	ram:4c3a cd 89 21       call 02189h          	;. . !
	ram:4c3d cd 2d 5e       call sub_5e2dh       	;. - ^
l4c40h:
	ram:4c40 32 ba 80       ld (080bah),a        	;2 . .
l4c43h:
	ram:4c43 cd 07 20       call 02007h          	;. .  
	ram:4c46 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:4c49 cd 3f 0d       call 00d3fh          	;. ? .
	ram:4c4c cd f5 1f       call 01ff5h          	;. . .
	ram:4c4f cd 4f 50       call sub_504fh       	;. O P
	ram:4c52 30 ef          jr nc,l4c43h         	;0 .
	ram:4c54 cd 06 50       call sub_5006h       	;. . P
	ram:4c57 30 09          jr nc,l4c62h         	;0 .
	ram:4c59 cd 3b 5e       call sub_5e3bh       	;. ; ^
	ram:4c5c cd 93 21       call 02193h          	;. . !
	ram:4c5f cd 01 63       call sub_6301h       	;. . c
l4c62h:
	ram:4c62 cd 67 50       call sub_5067h       	;. g P
	ram:4c65 38 07          jr c,l4c6eh          	;8 .
	ram:4c67 7e             ld a,(hl)            	;~
	ram:4c68 3d             dec a                	;=
	ram:4c69 32 ae 80       ld (080aeh),a        	;2 . .
	ram:4c6c 18 d2          jr l4c40h            	;. .
l4c6eh:
	ram:4c6e cd ab 4f       call sub_4fabh       	;. . O
	ram:4c71 e5             push hl              	;.
	ram:4c72 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:4c75 20 06          jr nz,l4c7dh         	;.
	ram:4c77 21 32 00       ld hl,00032h         	;! 2 .
	ram:4c7a cd 28 2e       call 02e28h          	;. ( .
l4c7dh:
	ram:4c7d cd 3b 2e       call 02e3bh          	;. ; .
	ram:4c80 cd 98 21       call 02198h          	;. . !
	ram:4c83 cd 4a 2e       call 02e4ah          	;. J .
	ram:4c86 21 46 00       ld hl,00046h         	;! F .
	ram:4c89 cd 28 2e       call 02e28h          	;. ( .
	ram:4c8c 22 29 86       ld (08629h),hl       	;" ) .
	ram:4c8f 3a bf 80       ld a,(080bfh)        	;: . .
l4c92h:
	ram:4c92 21 b5 80       ld hl,080b5h         	;! . .
	ram:4c95 77             ld (hl),a            	;w
	ram:4c96 21 be 80       ld hl,080beh         	;! . .
	ram:4c99 be             cp (hl)              	;.
	ram:4c9a da 60 52       jp c,l5260h          	;. ` R
	ram:4c9d cd f3 50       call sub_50f3h       	;. . P
l4ca0h:
	ram:4ca0 cd a3 26       call 026a3h          	;. . &
	ram:4ca3 3a b5 80       ld a,(080b5h)        	;: . .
	ram:4ca6 3c             inc a                	;<
	ram:4ca7 32 af 80       ld (080afh),a        	;2 . .
l4caah:
	ram:4caa 21 af 80       ld hl,080afh         	;! . .
	ram:4cad 35             dec (hl)             	;5
	ram:4cae 3a be 80       ld a,(080beh)        	;: . .
	ram:4cb1 be             cp (hl)              	;.
	ram:4cb2 28 1f          jr z,l4cd3h          	;( .
	ram:4cb4 cd 40 5e       call sub_5e40h       	;. @ ^
	ram:4cb7 cf             rst 8                	;.
	ram:4cb8 cd 61 5e       call sub_5e61h       	;. a ^
	ram:4cbb cd 3f 0d       call 00d3fh          	;. ? .
	ram:4cbe cd d1 23       call 023d1h          	;. . #
	ram:4cc1 cc 69 61       call z,sub_6169h     	;. i a
	ram:4cc4 cd f5 1f       call 01ff5h          	;. . .
	ram:4cc7 cf             rst 8                	;.
	ram:4cc8 cd 66 5e       call sub_5e66h       	;. f ^
	ram:4ccb cd 3f 0d       call 00d3fh          	;. ? .
	ram:4cce cd 0d 51       call sub_510dh       	;. . Q
	ram:4cd1 20 d7          jr nz,l4caah         	;.
l4cd3h:
	ram:4cd3 cd 46 5e       call sub_5e46h       	;. F ^
	ram:4cd6 cd 28 62       call sub_6228h       	;. ( b
	ram:4cd9 3a b5 80       ld a,(080b5h)        	;: . .
	ram:4cdc 21 af 80       ld hl,080afh         	;! . .
	ram:4cdf be             cp (hl)              	;.
	ram:4ce0 20 11          jr nz,l4cf3h         	;.
	ram:4ce2 cd 3e 50       call sub_503eh       	;. > P
	ram:4ce5 cd c9 5f       call sub_5fc9h       	;. . _
	ram:4ce8 cd 93 21       call 02193h          	;. . !
	ram:4ceb cd de 62       call sub_62deh       	;. . b
	ram:4cee 3a b4 80       ld a,(080b4h)        	;: . .
	ram:4cf1 18 9f          jr l4c92h            	;. .
l4cf3h:
	ram:4cf3 3d             dec a                	;=
	ram:4cf4 be             cp (hl)              	;.
	ram:4cf5 f5             push af              	;.
	ram:4cf6 cd 43 5f       call sub_5f43h       	;. C _
	ram:4cf9 cd b0 60       call sub_60b0h       	;. . `
	ram:4cfc ef             rst 28h              	;.
	ram:4cfd cd 2c 62       call sub_622ch       	;. , b
	ram:4d00 cd 4b 5e       call sub_5e4bh       	;. K ^
	ram:4d03 f1             pop af               	;.
	ram:4d04 ca 53 51       jp z,l5153h          	;. S Q
	ram:4d07 e1             pop hl               	;.
	ram:4d08 7c             ld a,h               	;|
	ram:4d09 b5             or l                 	;.
	ram:4d0a ca 71 0a       jp z,00a71h          	;. q .
	ram:4d0d 2b             dec hl               	;+
	ram:4d0e e5             push hl              	;.
	ram:4d0f cd a0 4f       call sub_4fa0h       	;. . O
	ram:4d12 20 48          jr nz,l4d5ch         	;H
	ram:4d14 af             xor a                	;.
	ram:4d15 32 b2 80       ld (080b2h),a        	;2 . .
	ram:4d18 cd 3e 50       call sub_503eh       	;. > P
	ram:4d1b cd 30 62       call sub_6230h       	;. 0 b
	ram:4d1e 3a be 80       ld a,(080beh)        	;: . .
	ram:4d21 3d             dec a                	;=
	ram:4d22 32 bb 80       ld (080bbh),a        	;2 . .
l4d25h:
	ram:4d25 cd 62 50       call sub_5062h       	;. b P
	ram:4d28 38 0e          jr c,l4d38h          	;8 .
	ram:4d2a cd 3b 5e       call sub_5e3bh       	;. ; ^
	ram:4d2d cd 2f 61       call sub_612fh       	;. / a
	ram:4d30 cd 71 0d       call 00d71h          	;. q .
	ram:4d33 cd ce 5f       call sub_5fceh       	;. . _
	ram:4d36 18 ed          jr l4d25h            	;. .
l4d38h:
	ram:4d38 cd 2f 5f       call sub_5f2fh       	;. / _
	ram:4d3b cd bd 60       call sub_60bdh       	;. . `
	ram:4d3e cd 3f 0d       call 00d3fh          	;. ? .
	ram:4d41 cd f5 1f       call 01ff5h          	;. . .
	ram:4d44 cd 5a 0e       call 00e5ah          	;. Z .
	ram:4d47 21 f8 5d       ld hl,l5df8h         	;! . ]
	ram:4d4a cd 55 0e       call 00e55h          	;. U .
	ram:4d4d cd 2c 62       call sub_622ch       	;. , b
	ram:4d50 cd 56 20       call 02056h          	;. V  
	ram:4d53 21 ee 5d       ld hl,l5deeh         	;! . ]
	ram:4d56 cd 55 0e       call 00e55h          	;. U .
	ram:4d59 cd 28 62       call sub_6228h       	;. ( b
l4d5ch:
	ram:4d5c cd 1f 62       call sub_621fh       	;. . b
	ram:4d5f 3a b4 80       ld a,(080b4h)        	;: . .
	ram:4d62 32 b0 80       ld (080b0h),a        	;2 . .
l4d65h:
	ram:4d65 21 b0 80       ld hl,080b0h         	;! . .
	ram:4d68 35             dec (hl)             	;5
	ram:4d69 7e             ld a,(hl)            	;~
	ram:4d6a 23             inc hl               	;#
	ram:4d6b 3d             dec a                	;=
	ram:4d6c 77             ld (hl),a            	;w
	ram:4d6d cd 50 5e       call sub_5e50h       	;. P ^
	ram:4d70 cd 16 62       call sub_6216h       	;. . b
	ram:4d73 cd 23 61       call sub_6123h       	;. # a
	ram:4d76 cd 61 0d       call 00d61h          	;. a .
	ram:4d79 cd f5 1f       call 01ff5h          	;. . .
	ram:4d7c cd 37 61       call sub_6137h       	;. 7 a
	ram:4d7f cd 0b 61       call sub_610bh       	;. . a
	ram:4d82 cd 71 0d       call 00d71h          	;. q .
	ram:4d85 cd e5 61       call sub_61e5h       	;. . a
	ram:4d88 cd 0b 61       call sub_610bh       	;. . a
	ram:4d8b cd 55 5e       call sub_5e55h       	;. U ^
	ram:4d8e cd 71 0d       call 00d71h          	;. q .
	ram:4d91 cd 3e 61       call sub_613eh       	;. > a
	ram:4d94 cd 71 0d       call 00d71h          	;. q .
	ram:4d97 cd 07 20       call 02007h          	;. .  
	ram:4d9a cd 71 0d       call 00d71h          	;. q .
	ram:4d9d cd 08 62       call sub_6208h       	;. . b
	ram:4da0 cd 56 20       call 02056h          	;. V  
	ram:4da3 cd 23 50       call sub_5023h       	;. # P
	ram:4da6 cd 4c 61       call sub_614ch       	;. L a
	ram:4da9 cd 71 0d       call 00d71h          	;. q .
	ram:4dac cd cc 60       call sub_60cch       	;. . `
	ram:4daf cd 23 10       call 01023h          	;. # .
	ram:4db2 cf             rst 8                	;.
	ram:4db3 cd 5f 5f       call sub_5f5fh       	;. _ _
	ram:4db6 cd e5 61       call sub_61e5h       	;. . a
	ram:4db9 cd 58 5f       call sub_5f58h       	;. X _
	ram:4dbc f7             rst 30h              	;.
	ram:4dbd cd 2f 4e       call sub_4e2fh       	;. / N
	ram:4dc0 cd 4f 4e       call sub_4e4fh       	;. O N
	ram:4dc3 21 af 80       ld hl,080afh         	;! . .
	ram:4dc6 7e             ld a,(hl)            	;~
	ram:4dc7 23             inc hl               	;#
	ram:4dc8 be             cp (hl)              	;.
	ram:4dc9 28 33          jr z,l4dfeh          	;( 3
	ram:4dcb cd 55 5e       call sub_5e55h       	;. U ^
	ram:4dce cd 0b 61       call sub_610bh       	;. . a
	ram:4dd1 cd 3f 0d       call 00d3fh          	;. ? .
	ram:4dd4 cf             rst 8                	;.
	ram:4dd5 cd 5b 5e       call sub_5e5bh       	;. [ ^
	ram:4dd8 cd 3f 0d       call 00d3fh          	;. ? .
	ram:4ddb cd 2b 50       call sub_502bh       	;. + P
	ram:4dde cd 73 25       call 02573h          	;. s %
	ram:4de1 cd f5 1f       call 01ff5h          	;. . .
	ram:4de4 cd fd 60       call sub_60fdh       	;. . `
	ram:4de7 cd 3e 61       call sub_613eh       	;. > a
	ram:4dea cd 3f 0d       call 00d3fh          	;. ? .
	ram:4ded cf             rst 8                	;.
	ram:4dee cd 77 5e       call sub_5e77h       	;. w ^
	ram:4df1 ef             rst 28h              	;.
	ram:4df2 cd 07 20       call 02007h          	;. .  
	ram:4df5 cd 3f 0d       call 00d3fh          	;. ? .
	ram:4df8 cd 0d 51       call sub_510dh       	;. . Q
	ram:4dfb c2 65 4d       jp nz,l4d65h         	;. e M
l4dfeh:
	ram:4dfe cd 98 21       call 02198h          	;. . !
	ram:4e01 3a b0 80       ld a,(080b0h)        	;: . .
	ram:4e04 3c             inc a                	;<
	ram:4e05 32 bb 80       ld (080bbh),a        	;2 . .
l4e08h:
	ram:4e08 cd 62 50       call sub_5062h       	;. b P
	ram:4e0b 38 0e          jr c,l4e1bh          	;8 .
	ram:4e0d 3a b0 80       ld a,(080b0h)        	;: . .
	ram:4e10 c6 02          add a,002h           	;. .
	ram:4e12 be             cp (hl)              	;.
	ram:4e13 c4 b1 5f       call nz,sub_5fb1h    	;. . _
	ram:4e16 cd 8d 5f       call sub_5f8dh       	;. . _
	ram:4e19 18 ed          jr l4e08h            	;. .
l4e1bh:
	ram:4e1b 3a b1 80       ld a,(080b1h)        	;: . .
	ram:4e1e 32 ae 80       ld (080aeh),a        	;2 . .
l4e21h:
	ram:4e21 21 ae 80       ld hl,080aeh         	;! . .
	ram:4e24 34             inc (hl)             	;4
	ram:4e25 3a b4 80       ld a,(080b4h)        	;: . .
	ram:4e28 96             sub (hl)             	;.
	ram:4e29 d2 92 4e       jp nc,l4e92h         	;. . N
	ram:4e2c c3 a0 4c       jp l4ca0h            	;. . L
sub_4e2fh:
	ram:4e2f cd f1 61       call sub_61f1h       	;. . a
	ram:4e32 cd 3e 61       call sub_613eh       	;. > a
sub_4e35h:
	ram:4e35 cd 3f 0d       call 00d3fh          	;. ? .
sub_4e38h:
	ram:4e38 cd f8 60       call sub_60f8h       	;. . `
	ram:4e3b c3 3f 0d       jp 00d3fh            	;. ? .
sub_4e3eh:
	ram:4e3e cd 31 2e       call 02e31h          	;. 1 .
	ram:4e41 3a b9 80       ld a,(080b9h)        	;: . .
	ram:4e44 67             ld h,a               	;g
	ram:4e45 6f             ld l,a               	;o
	ram:4e46 22 c1 80       ld (080c1h),hl       	;" . .
	ram:4e49 cd cb 39       call 039cbh          	;. . 9
	ram:4e4c c3 db 2d       jp 02ddbh            	;. . -
sub_4e4fh:
	ram:4e4f cf             rst 8                	;.
	ram:4e50 cd ea 60       call sub_60eah       	;. . `
	ram:4e53 cd 23 10       call 01023h          	;. # .
	ram:4e56 cd f1 61       call sub_61f1h       	;. . a
sub_4e59h:
	ram:4e59 cd 43 61       call sub_6143h       	;. C a
	ram:4e5c cd 23 10       call 01023h          	;. # .
	ram:4e5f cd e5 61       call sub_61e5h       	;. . a
	ram:4e62 cd fd 60       call sub_60fdh       	;. . `
	ram:4e65 cd 23 10       call 01023h          	;. # .
	ram:4e68 c3 08 62       jp sub_6208h         	;. . b
sub_4e6bh:
	ram:4e6b cd f5 1f       call 01ff5h          	;. . .
	ram:4e6e cd 23 50       call sub_5023h       	;. # P
	ram:4e71 cd 30 50       call sub_5030h       	;. 0 P
	ram:4e74 cd f1 61       call sub_61f1h       	;. . a
sub_4e77h:
	ram:4e77 cd 28 50       call sub_5028h       	;. ( P
l4e7ah:
	ram:4e7a cd 07 20       call 02007h          	;. .  
	ram:4e7d c3 61 0d       jp 00d61h            	;. a .
sub_4e80h:
	ram:4e80 cd f5 1f       call 01ff5h          	;. . .
	ram:4e83 cd 0b 61       call sub_610bh       	;. . a
	ram:4e86 ef             rst 28h              	;.
	ram:4e87 cd 30 50       call sub_5030h       	;. 0 P
	ram:4e8a cd f1 61       call sub_61f1h       	;. . a
	ram:4e8d cd 23 50       call sub_5023h       	;. # P
	ram:4e90 18 e8          jr l4e7ah            	;. .
l4e92h:
	ram:4e92 f5             push af              	;.
	ram:4e93 32 b6 80       ld (080b6h),a        	;2 . .
	ram:4e96 3a b0 80       ld a,(080b0h)        	;: . .
	ram:4e99 be             cp (hl)              	;.
	ram:4e9a 28 23          jr z,l4ebfh          	;( #
	ram:4e9c cd 49 5f       call sub_5f49h       	;. I _
	ram:4e9f cd 08 62       call sub_6208h       	;. . b
	ram:4ea2 cd 98 21       call 02198h          	;. . !
	ram:4ea5 f1             pop af               	;.
	ram:4ea6 f5             push af              	;.
	ram:4ea7 c4 69 5f       call nz,sub_5f69h    	;. i _
	ram:4eaa cd e5 61       call sub_61e5h       	;. . a
	ram:4ead cd 72 5e       call sub_5e72h       	;. r ^
	ram:4eb0 cd 2f 4e       call sub_4e2fh       	;. / N
	ram:4eb3 cd 28 62       call sub_6228h       	;. ( b
	ram:4eb6 cd d1 23       call 023d1h          	;. . #
	ram:4eb9 ca 9c 4f       jp z,l4f9ch          	;. . O
	ram:4ebc cd 4f 4e       call sub_4e4fh       	;. O N
l4ebfh:
	ram:4ebf cd 43 61       call sub_6143h       	;. C a
	ram:4ec2 cd 5a 0e       call 00e5ah          	;. Z .
	ram:4ec5 cd f5 1f       call 01ff5h          	;. . .
	ram:4ec8 cd ea 60       call sub_60eah       	;. . `
	ram:4ecb 3a 82 80       ld a,(08082h)        	;: . .
	ram:4ece f5             push af              	;.
	ram:4ecf cd 5a 0e       call 00e5ah          	;. Z .
	ram:4ed2 cd a3 50       call sub_50a3h       	;. . P
	ram:4ed5 cd f5 1f       call 01ff5h          	;. . .
	ram:4ed8 cd fd 60       call sub_60fdh       	;. . `
	ram:4edb cd 5a 0e       call 00e5ah          	;. Z .
	ram:4ede cd a3 50       call sub_50a3h       	;. . P
	ram:4ee1 cd f7 10       call 010f7h          	;. . .
	ram:4ee4 f1             pop af               	;.
	ram:4ee5 32 82 80       ld (08082h),a        	;2 . .
	ram:4ee8 cd f5 1f       call 01ff5h          	;. . .
	ram:4eeb 21 b0 80       ld hl,080b0h         	;! . .
	ram:4eee 3a ae 80       ld a,(080aeh)        	;: . .
	ram:4ef1 be             cp (hl)              	;.
	ram:4ef2 20 09          jr nz,l4efdh         	;.
	ram:4ef4 2b             dec hl               	;+
	ram:4ef5 be             cp (hl)              	;.
	ram:4ef6 28 0f          jr z,l4f07h          	;( .
	ram:4ef8 cd 72 5e       call sub_5e72h       	;. r ^
	ram:4efb 18 04          jr l4f01h            	;. .
l4efdh:
	ram:4efd cd 2f 61       call sub_612fh       	;. / a
	ram:4f00 ef             rst 28h              	;.
l4f01h:
	ram:4f01 cd 9b 0f       call 00f9bh          	;. . .
	ram:4f04 cd 0f 60       call sub_600fh       	;. . `
l4f07h:
	ram:4f07 cd 56 20       call 02056h          	;. V  
	ram:4f0a cd 30 50       call sub_5030h       	;. 0 P
	ram:4f0d cd f1 61       call sub_61f1h       	;. . a
	ram:4f10 cd 07 20       call 02007h          	;. .  
	ram:4f13 cd 23 10       call 01023h          	;. # .
	ram:4f16 cd 28 62       call sub_6228h       	;. ( b
	ram:4f19 cd fd 60       call sub_60fdh       	;. . `
	ram:4f1c cd 23 10       call 01023h          	;. # .
	ram:4f1f cd 1f 62       call sub_621fh       	;. . b
	ram:4f22 cd 43 61       call sub_6143h       	;. C a
	ram:4f25 cd 23 10       call 01023h          	;. # .
	ram:4f28 cd 16 62       call sub_6216h       	;. . b
	ram:4f2b cd dd 60       call sub_60ddh       	;. . `
	ram:4f2e cd 59 4e       call sub_4e59h       	;. Y N
	ram:4f31 3a ae 80       ld a,(080aeh)        	;: . .
	ram:4f34 3d             dec a                	;=
	ram:4f35 32 ba 80       ld (080bah),a        	;2 . .
l4f38h:
	ram:4f38 cd 4f 50       call sub_504fh       	;. O P
	ram:4f3b 38 3a          jr c,l4f77h          	;8 :
	ram:4f3d cd 9f 5e       call sub_5e9fh       	;. . ^
	ram:4f40 cd 1e 50       call sub_501eh       	;. . P
	ram:4f43 cf             rst 8                	;.
	ram:4f44 cd 94 5e       call sub_5e94h       	;. . ^
	ram:4f47 f7             rst 30h              	;.
	ram:4f48 cd f1 61       call sub_61f1h       	;. . a
	ram:4f4b cd a5 5e       call sub_5ea5h       	;. . ^
	ram:4f4e f1             pop af               	;.
	ram:4f4f f5             push af              	;.
	ram:4f50 28 06          jr z,l4f58h          	;( .
	ram:4f52 cd 6b 4e       call sub_4e6bh       	;. k N
	ram:4f55 cd 02 60       call sub_6002h       	;. . `
l4f58h:
	ram:4f58 cd 16 50       call sub_5016h       	;. . P
	ram:4f5b cf             rst 8                	;.
	ram:4f5c cd 9f 5e       call sub_5e9fh       	;. . ^
	ram:4f5f cd 71 0d       call 00d71h          	;. q .
	ram:4f62 cd fd 5f       call sub_5ffdh       	;. . _
	ram:4f65 cd 37 61       call sub_6137h       	;. 7 a
	ram:4f68 cd 2b 50       call sub_502bh       	;. + P
	ram:4f6b cf             rst 8                	;.
	ram:4f6c cd 94 5e       call sub_5e94h       	;. . ^
	ram:4f6f cd 71 0d       call 00d71h          	;. q .
	ram:4f72 cd e8 5f       call sub_5fe8h       	;. . _
	ram:4f75 18 c1          jr l4f38h            	;. .
l4f77h:
	ram:4f77 3a ae 80       ld a,(080aeh)        	;: . .
	ram:4f7a c6 03          add a,003h           	;. .
	ram:4f7c 21 b5 80       ld hl,080b5h         	;! . .
	ram:4f7f be             cp (hl)              	;.
	ram:4f80 38 01          jr c,l4f83h          	;8 .
	ram:4f82 7e             ld a,(hl)            	;~
l4f83h:
	ram:4f83 47             ld b,a               	;G
	ram:4f84 0e 00          ld c,000h            	;. .
	ram:4f86 cd b8 4f       call sub_4fb8h       	;. . O
	ram:4f89 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:4f8c 20 0e          jr nz,l4f9ch         	;.
	ram:4f8e cd 02 5e       call sub_5e02h       	;. . ^
	ram:4f91 ed 4b be 80    ld bc,(080beh)       	;. K . .
	ram:4f95 0d             dec c                	;.
	ram:4f96 cd b8 4f       call sub_4fb8h       	;. . O
	ram:4f99 cd 02 5e       call sub_5e02h       	;. . ^
l4f9ch:
	ram:4f9c f1             pop af               	;.
	ram:4f9d c3 21 4e       jp l4e21h            	;. ! N
sub_4fa0h:
	ram:4fa0 21 b2 80       ld hl,080b2h         	;! . .
	ram:4fa3 7e             ld a,(hl)            	;~
	ram:4fa4 34             inc (hl)             	;4
	ram:4fa5 fe 14          cp 014h              	;. .
	ram:4fa7 c8             ret z                	;.
	ram:4fa8 fe 0a          cp 00ah              	;. .
	ram:4faa c9             ret                  	;.
sub_4fabh:
	ram:4fab ed 5b b9 80    ld de,(080b9h)       	;. [ . .
	ram:4faf 16 00          ld d,000h            	;. .
	ram:4fb1 62             ld h,d               	;b
	ram:4fb2 6b             ld l,e               	;k
	ram:4fb3 19             add hl,de            	;.
	ram:4fb4 19             add hl,de            	;.
	ram:4fb5 c3 33 1f       jp 01f33h            	;. 3 .
sub_4fb8h:
	ram:4fb8 21 bb 80       ld hl,080bbh         	;! . .
	ram:4fbb 71             ld (hl),c            	;q
	ram:4fbc 2b             dec hl               	;+
	ram:4fbd 70             ld (hl),b            	;p
l4fbeh:
	ram:4fbe 21 ba 80       ld hl,080bah         	;! . .
	ram:4fc1 7e             ld a,(hl)            	;~
	ram:4fc2 23             inc hl               	;#
	ram:4fc3 34             inc (hl)             	;4
	ram:4fc4 be             cp (hl)              	;.
	ram:4fc5 d8             ret c                	;.
	ram:4fc6 cd ca 5e       call sub_5ecah       	;. . ^
	ram:4fc9 cd 19 50       call sub_5019h       	;. . P
	ram:4fcc cd f5 1f       call 01ff5h          	;. . .
	ram:4fcf cd 37 61       call sub_6137h       	;. 7 a
	ram:4fd2 cd a6 60       call sub_60a6h       	;. . `
	ram:4fd5 ef             rst 28h              	;.
	ram:4fd6 cd a3 50       call sub_50a3h       	;. . P
	ram:4fd9 cd f1 61       call sub_61f1h       	;. . a
	ram:4fdc cd cf 5e       call sub_5ecfh       	;. . ^
	ram:4fdf 3a b6 80       ld a,(080b6h)        	;: . .
	ram:4fe2 b7             or a                 	;.
	ram:4fe3 28 06          jr z,l4febh          	;( .
	ram:4fe5 cd 80 4e       call sub_4e80h       	;. . N
	ram:4fe8 cd 9c 5f       call sub_5f9ch       	;. . _
l4febh:
	ram:4feb cd ea 60       call sub_60eah       	;. . `
	ram:4fee cd 1e 50       call sub_501eh       	;. . P
	ram:4ff1 cf             rst 8                	;.
	ram:4ff2 cd ca 5e       call sub_5ecah       	;. . ^
	ram:4ff5 cd 71 0d       call 00d71h          	;. q .
	ram:4ff8 cd 97 5f       call sub_5f97h       	;. . _
	ram:4ffb cd c1 5e       call sub_5ec1h       	;. . ^
	ram:4ffe cd 38 50       call sub_5038h       	;. 8 P
	ram:5001 cd 74 5f       call sub_5f74h       	;. t _
	ram:5004 18 b8          jr l4fbeh            	;. .
sub_5006h:
	ram:5006 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5009 21 be 80       ld hl,080beh         	;! . .
	ram:500c be             cp (hl)              	;.
	ram:500d d8             ret c                	;.
	ram:500e 21 bb 80       ld hl,080bbh         	;! . .
	ram:5011 3a bf 80       ld a,(080bfh)        	;: . .
	ram:5014 be             cp (hl)              	;.
	ram:5015 c9             ret                  	;.
sub_5016h:
	ram:5016 cd ea 60       call sub_60eah       	;. . `
sub_5019h:
	ram:5019 cd 23 61       call sub_6123h       	;. # a
	ram:501c ef             rst 28h              	;.
	ram:501d c9             ret                  	;.
sub_501eh:
	ram:501e cd f8 60       call sub_60f8h       	;. . `
	ram:5021 ef             rst 28h              	;.
	ram:5022 c9             ret                  	;.
sub_5023h:
	ram:5023 cd 3e 61       call sub_613eh       	;. > a
	ram:5026 ef             rst 28h              	;.
	ram:5027 c9             ret                  	;.
sub_5028h:
	ram:5028 cd 13 61       call sub_6113h       	;. . a
sub_502bh:
	ram:502b cd dd 60       call sub_60ddh       	;. . `
	ram:502e ef             rst 28h              	;.
	ram:502f c9             ret                  	;.
sub_5030h:
	ram:5030 cd dd 60       call sub_60ddh       	;. . `
	ram:5033 f7             rst 30h              	;.
	ram:5034 c9             ret                  	;.
sub_5035h:
	ram:5035 cd 3b 5e       call sub_5e3bh       	;. ; ^
sub_5038h:
	ram:5038 cd dd 60       call sub_60ddh       	;. . `
	ram:503b c3 71 0d       jp 00d71h            	;. q .
sub_503eh:
	ram:503e cd 37 61       call sub_6137h       	;. 7 a
sub_5041h:
	ram:5041 cd 58 61       call sub_6158h       	;. X a
	ram:5044 f7             rst 30h              	;.
sub_5045h:
	ram:5045 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5048 18 08          jr l5052h            	;. .
sub_504ah:
	ram:504a 3a bf 80       ld a,(080bfh)        	;: . .
	ram:504d 18 03          jr l5052h            	;. .
sub_504fh:
	ram:504f 3a b9 80       ld a,(080b9h)        	;: . .
l5052h:
	ram:5052 21 ba 80       ld hl,080bah         	;! . .
	ram:5055 34             inc (hl)             	;4
	ram:5056 be             cp (hl)              	;.
	ram:5057 c9             ret                  	;.
sub_5058h:
	ram:5058 3a ba 80       ld a,(080bah)        	;: . .
	ram:505b 18 0d          jr l506ah            	;. .
sub_505dh:
	ram:505d 3a bf 80       ld a,(080bfh)        	;: . .
	ram:5060 18 08          jr l506ah            	;. .
sub_5062h:
	ram:5062 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5065 18 03          jr l506ah            	;. .
sub_5067h:
	ram:5067 3a b9 80       ld a,(080b9h)        	;: . .
l506ah:
	ram:506a 21 bb 80       ld hl,080bbh         	;! . .
	ram:506d 34             inc (hl)             	;4
	ram:506e be             cp (hl)              	;.
	ram:506f c9             ret                  	;.
sub_5070h:
	ram:5070 cd 1e 50       call sub_501eh       	;. . P
	ram:5073 cd 1f 2f       call 02f1fh          	;. . /
	ram:5076 cd 71 0d       call 00d71h          	;. q .
	ram:5079 cd a3 50       call sub_50a3h       	;. . P
	ram:507c c3 6b 2f       jp 02f6bh            	;. k /
sub_507fh:
	ram:507f cd 39 3b       call 03b39h          	;. 9 ;
	ram:5082 cd a3 5f       call sub_5fa3h       	;. . _
	ram:5085 cd 95 20       call 02095h          	;. .  
	ram:5088 c3 a8 5f       jp l5fa8h            	;. . _
sub_508bh:
	ram:508b cd ac 0f       call 00fach          	;. . .
	ram:508e cd fe 1f       call 01ffeh          	;. . .
	ram:5091 cd 1e 50       call sub_501eh       	;. . P
	ram:5094 cd ef 2d       call 02defh          	;. . -
	ram:5097 cd 71 0d       call 00d71h          	;. q .
	ram:509a cd a3 50       call sub_50a3h       	;. . P
	ram:509d cd 2f 61       call sub_612fh       	;. / a
	ram:50a0 c3 23 10       jp 01023h            	;. # .
sub_50a3h:
	ram:50a3 cd 07 20       call 02007h          	;. .  
	ram:50a6 f7             rst 30h              	;.
	ram:50a7 c9             ret                  	;.
sub_50a8h:
	ram:50a8 cd 9b 0f       call 00f9bh          	;. . .
	ram:50ab cd 71 0d       call 00d71h          	;. q .
	ram:50ae c3 4a 2e       jp 02e4ah            	;. J .
sub_50b1h:
	ram:50b1 cd 1b 5f       call sub_5f1bh       	;. . _
sub_50b4h:
	ram:50b4 cd 91 60       call sub_6091h       	;. . `
	ram:50b7 ef             rst 28h              	;.
	ram:50b8 c9             ret                  	;.
sub_50b9h:
	ram:50b9 cd 37 61       call sub_6137h       	;. 7 a
	ram:50bc cd a5 61       call sub_61a5h       	;. . a
	ram:50bf ef             rst 28h              	;.
	ram:50c0 c3 f5 1f       jp 01ff5h            	;. . .
sub_50c3h:
	ram:50c3 cd f3 5e       call sub_5ef3h       	;. . ^
	ram:50c6 cd 28 62       call sub_6228h       	;. ( b
	ram:50c9 cd dc 5e       call sub_5edch       	;. . ^
	ram:50cc cd 1f 62       call sub_621fh       	;. . b
	ram:50cf cd 0b 63       call sub_630bh       	;. . c
	ram:50d2 cd fe 1f       call 01ffeh          	;. . .
	ram:50d5 cd 38 50       call sub_5038h       	;. 8 P
	ram:50d8 cd 5a 0e       call 00e5ah          	;. Z .
	ram:50db cd 4a 2e       call 02e4ah          	;. J .
	ram:50de cd 56 20       call 02056h          	;. V  
	ram:50e1 cd 5a 0e       call 00e5ah          	;. Z .
	ram:50e4 cd 1f 2f       call 02f1fh          	;. . /
	ram:50e7 cd 78 0d       call 00d78h          	;. x .
	ram:50ea cd 6b 2f       call 02f6bh          	;. k /
	ram:50ed cd 0b 63       call sub_630bh       	;. . c
	ram:50f0 c3 38 50       jp sub_5038h         	;. 8 P
sub_50f3h:
	ram:50f3 21 b5 80       ld hl,080b5h         	;! . .
	ram:50f6 3d             dec a                	;=
	ram:50f7 2b             dec hl               	;+
	ram:50f8 77             ld (hl),a            	;w
	ram:50f9 3d             dec a                	;=
	ram:50fa 2b             dec hl               	;+
l50fbh:
	ram:50fb 77             ld (hl),a            	;w
	ram:50fc af             xor a                	;.
	ram:50fd 2b             dec hl               	;+
	ram:50fe 77             ld (hl),a            	;w
	ram:50ff c9             ret                  	;.
sub_5100h:
	ram:5100 cd 21 5e       call sub_5e21h       	;. ! ^
	ram:5103 cd 73 25       call 02573h          	;. s %
sub_5106h:
	ram:5106 cd f5 1f       call 01ff5h          	;. . .
	ram:5109 cd 1f 10       call 0101fh          	;. . .
sub_510ch:
	ram:510c f7             rst 30h              	;.
sub_510dh:
	ram:510d cd 07 20       call 02007h          	;. .  
	ram:5110 c3 8e 1f       jp 01f8eh            	;. . .
sub_5113h:
	ram:5113 cd 1b 5f       call sub_5f1bh       	;. . _
	ram:5116 cd 23 10       call 01023h          	;. # .
	ram:5119 c3 7f 60       jp l607fh            	;. . `
sub_511ch:
	ram:511c cd f8 5e       call sub_5ef8h       	;. . ^
	ram:511f cd a1 60       call sub_60a1h       	;. . `
	ram:5122 af             xor a                	;.
sub_5123h:
	ram:5123 f5             push af              	;.
	ram:5124 cd 16 62       call sub_6216h       	;. . b
	ram:5127 cd ea 60       call sub_60eah       	;. . `
	ram:512a ef             rst 28h              	;.
	ram:512b cd 4a 2e       call 02e4ah          	;. J .
	ram:512e cd 95 20       call 02095h          	;. .  
	ram:5131 cd 1e 50       call sub_501eh       	;. . P
	ram:5134 cd f5 1f       call 01ff5h          	;. . .
	ram:5137 cd 13 61       call sub_6113h       	;. . a
	ram:513a cd 1e 50       call sub_501eh       	;. . P
	ram:513d cd 1f 2f       call 02f1fh          	;. . /
	ram:5140 f7             rst 30h              	;.
	ram:5141 cd 6b 2f       call 02f6bh          	;. k /
	ram:5144 cd 77 4e       call sub_4e77h       	;. w N
	ram:5147 f1             pop af               	;.
	ram:5148 b7             or a                 	;.
	ram:5149 c0             ret nz               	;.
	ram:514a cd a8 5f       call l5fa8h          	;. . _
	ram:514d cd f4 2d       call 02df4h          	;. . -
	ram:5150 c3 a3 5f       jp sub_5fa3h         	;. . _
l5153h:
	ram:5153 cd 1f 62       call sub_621fh       	;. . b
	ram:5156 cd 2f 61       call sub_612fh       	;. / a
	ram:5159 cd 71 0d       call 00d71h          	;. q .
	ram:515c cd 52 0e       call 00e52h          	;. R .
	ram:515f cd f1 61       call sub_61f1h       	;. . a
	ram:5162 cd 5a 0e       call 00e5ah          	;. Z .
	ram:5165 cd 4c 61       call sub_614ch       	;. L a
	ram:5168 f7             rst 30h              	;.
	ram:5169 21 82 80       ld hl,08082h         	;! . .
	ram:516c 7e             ld a,(hl)            	;~
	ram:516d f5             push af              	;.
	ram:516e 36 00          ld (hl),000h         	;6 .
	ram:5170 cd f7 10       call 010f7h          	;. . .
	ram:5173 cd 16 62       call sub_6216h       	;. . b
	ram:5176 cd 3e 50       call sub_503eh       	;. > P
	ram:5179 cd 28 62       call sub_6228h       	;. ( b
	ram:517c cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:517f 20 0c          jr nz,l518dh         	;.
	ram:5181 cd c9 5f       call sub_5fc9h       	;. . _
	ram:5184 cd 28 61       call sub_6128h       	;. ( a
	ram:5187 cd 41 50       call sub_5041h       	;. A P
	ram:518a cd d3 5f       call sub_5fd3h       	;. . _
l518dh:
	ram:518d f1             pop af               	;.
	ram:518e b7             or a                 	;.
	ram:518f fa 48 52       jp m,l5248h          	;. H R
	ram:5192 cd ea 60       call sub_60eah       	;. . `
	ram:5195 cd 0b 61       call sub_610bh       	;. . a
	ram:5198 cd 68 25       call 02568h          	;. h %
	ram:519b c4 ac 0f       call nz,00fach       	;. . .
	ram:519e f7             rst 30h              	;.
	ram:519f cd 16 62       call sub_6216h       	;. . b
	ram:51a2 cd d1 23       call 023d1h          	;. . #
	ram:51a5 f5             push af              	;.
	ram:51a6 cd 2f 61       call sub_612fh       	;. / a
	ram:51a9 f7             rst 30h              	;.
	ram:51aa cd 93 21       call 02193h          	;. . !
	ram:51ad cd fc 62       call sub_62fch       	;. . b
	ram:51b0 f1             pop af               	;.
	ram:51b1 28 12          jr z,l51c5h          	;( .
	ram:51b3 cd 51 61       call sub_6151h       	;. Q a
	ram:51b6 cd 0b 61       call sub_610bh       	;. . a
	ram:51b9 cd 23 10       call 01023h          	;. # .
	ram:51bc cd 2f 61       call sub_612fh       	;. / a
	ram:51bf cd 61 0d       call 00d61h          	;. a .
	ram:51c2 cd 93 21       call 02193h          	;. . !
l51c5h:
	ram:51c5 cd de 62       call sub_62deh       	;. . b
	ram:51c8 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:51cb c2 5a 52       jp nz,l525ah         	;. Z R
	ram:51ce cd 43 5f       call sub_5f43h       	;. C _
	ram:51d1 cd 28 62       call sub_6228h       	;. ( b
	ram:51d4 cd 0b 61       call sub_610bh       	;. . a
	ram:51d7 cd 3f 0d       call 00d3fh          	;. ? .
	ram:51da cf             rst 8                	;.
	ram:51db cd 37 61       call sub_6137h       	;. 7 a
	ram:51de cd 23 10       call 01023h          	;. # .
	ram:51e1 cd f1 61       call sub_61f1h       	;. . a
	ram:51e4 cd fe 1f       call 01ffeh          	;. . .
	ram:51e7 cd 5a 0e       call 00e5ah          	;. Z .
	ram:51ea cd 07 20       call 02007h          	;. .  
	ram:51ed cd f5 1f       call 01ff5h          	;. . .
	ram:51f0 cd 13 61       call sub_6113h       	;. . a
	ram:51f3 cd 23 10       call 01023h          	;. # .
	ram:51f6 cd 08 62       call sub_6208h       	;. . b
	ram:51f9 cd 5a 0e       call 00e5ah          	;. Z .
	ram:51fc cd a3 50       call sub_50a3h       	;. . P
	ram:51ff cd f7 10       call 010f7h          	;. . .
	ram:5202 cd e5 61       call sub_61e5h       	;. . a
	ram:5205 cd 4f 4e       call sub_4e4fh       	;. O N
	ram:5208 3a b4 80       ld a,(080b4h)        	;: . .
	ram:520b 32 bb 80       ld (080bbh),a        	;2 . .
l520eh:
	ram:520e cd 25 5f       call sub_5f25h       	;. % _
	ram:5211 cd c3 60       call sub_60c3h       	;. . `
	ram:5214 3e 01          ld a,001h            	;> .
	ram:5216 cd 23 51       call sub_5123h       	;. # Q
	ram:5219 cd 66 60       call sub_6066h       	;. f `
	ram:521c cd f4 2d       call 02df4h          	;. . -
	ram:521f cd 6b 60       call sub_606bh       	;. k `
	ram:5222 cd 67 50       call sub_5067h       	;. g P
	ram:5225 30 e7          jr nc,l520eh         	;0 .
	ram:5227 cd 2d 5e       call sub_5e2dh       	;. - ^
l522ah:
	ram:522a cd 1c 51       call sub_511ch       	;. . Q
	ram:522d cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5230 c2 41 52       jp nz,l5241h         	;. A R
	ram:5233 cd 06 50       call sub_5006h       	;. . P
	ram:5236 38 09          jr c,l5241h          	;8 .
	ram:5238 cd 02 5e       call sub_5e02h       	;. . ^
	ram:523b cd 1c 51       call sub_511ch       	;. . Q
	ram:523e cd 02 5e       call sub_5e02h       	;. . ^
l5241h:
	ram:5241 cd 67 50       call sub_5067h       	;. g P
	ram:5244 30 e4          jr nc,l522ah         	;0 .
	ram:5246 18 12          jr l525ah            	;. .
l5248h:
	ram:5248 cd 37 61       call sub_6137h       	;. 7 a
	ram:524b cd 30 50       call sub_5030h       	;. 0 P
	ram:524e cd 0b 61       call sub_610bh       	;. . a
	ram:5251 cd fc 62       call sub_62fch       	;. . b
	ram:5254 cd ac 0f       call 00fach          	;. . .
	ram:5257 cd de 62       call sub_62deh       	;. . b
l525ah:
	ram:525a 3a b3 80       ld a,(080b3h)        	;: . .
	ram:525d c3 92 4c       jp l4c92h            	;. . L
l5260h:
	ram:5260 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5263 c2 fb 55       jp nz,l55fbh         	;. . U
	ram:5266 cd 69 61       call sub_6169h       	;. i a
	ram:5269 cd d1 23       call 023d1h          	;. . #
	ram:526c ca fb 55       jp z,l55fbh          	;. . U
	ram:526f 3a b9 80       ld a,(080b9h)        	;: . .
	ram:5272 3c             inc a                	;<
	ram:5273 32 b5 80       ld (080b5h),a        	;2 . .
l5276h:
	ram:5276 21 b5 80       ld hl,080b5h         	;! . .
	ram:5279 35             dec (hl)             	;5
	ram:527a ca 98 55       jp z,l5598h          	;. . U
	ram:527d 7e             ld a,(hl)            	;~
	ram:527e 3d             dec a                	;=
	ram:527f 32 b4 80       ld (080b4h),a        	;2 . .
	ram:5282 cd be 62       call sub_62beh       	;. . b
	ram:5285 cd f1 61       call sub_61f1h       	;. . a
	ram:5288 cd 0f 62       call sub_620fh       	;. . b
	ram:528b cd d6 23       call 023d6h          	;. . #
	ram:528e ca 9a 54       jp z,l549ah          	;. . T
	ram:5291 cd 62 25       call 02562h          	;. b %
	ram:5294 28 e0          jr z,l5276h          	;( .
	ram:5296 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5299 32 b0 80       ld (080b0h),a        	;2 . .
	ram:529c cd 34 5f       call sub_5f34h       	;. 4 _
	ram:529f cd bd 60       call sub_60bdh       	;. . `
	ram:52a2 cd 88 1f       call 01f88h          	;. . .
	ram:52a5 30 1d          jr nc,l52c4h         	;0 .
	ram:52a7 cd fd 60       call sub_60fdh       	;. . `
	ram:52aa cd bd 60       call sub_60bdh       	;. . `
	ram:52ad cd 23 10       call 01023h          	;. # .
	ram:52b0 cd d3 5f       call sub_5fd3h       	;. . _
	ram:52b3 cd 46 5e       call sub_5e46h       	;. F ^
	ram:52b6 cd 38 50       call sub_5038h       	;. 8 P
	ram:52b9 cd bd 60       call sub_60bdh       	;. . `
	ram:52bc cd 23 10       call 01023h          	;. # .
	ram:52bf cd 9b 0f       call 00f9bh          	;. . .
	ram:52c2 18 1e          jr l52e2h            	;. .
l52c4h:
	ram:52c4 cd 98 21       call 02198h          	;. . !
	ram:52c7 cd b0 60       call sub_60b0h       	;. . `
	ram:52ca cd ac 0f       call 00fach          	;. . .
	ram:52cd cd 91 2e       call 02e91h          	;. . .
	ram:52d0 cd 4b 5e       call sub_5e4bh       	;. K ^
	ram:52d3 cd 38 50       call sub_5038h       	;. 8 P
	ram:52d6 cd f8 60       call sub_60f8h       	;. . `
	ram:52d9 cd 39 3b       call 03b39h          	;. 9 ;
	ram:52dc cd d3 5f       call sub_5fd3h       	;. . _
	ram:52df cd 95 20       call 02095h          	;. .  
l52e2h:
	ram:52e2 cd 74 60       call sub_6074h       	;. t `
	ram:52e5 cd 98 21       call 02198h          	;. . !
	ram:52e8 cd 4b 60       call sub_604bh       	;. K `
	ram:52eb cd 3e 21       call 0213eh          	;. > !
	ram:52ee cd c9 5f       call sub_5fc9h       	;. . _
	ram:52f1 3a b4 80       ld a,(080b4h)        	;: . .
	ram:52f4 3d             dec a                	;=
	ram:52f5 32 bb 80       ld (080bbh),a        	;2 . .
	ram:52f8 ca 76 52       jp z,l5276h          	;. v R
l52fbh:
	ram:52fb cd 35 50       call sub_5035h       	;. 5 P
	ram:52fe cd 2c 62       call sub_622ch       	;. , b
	ram:5301 cd 98 21       call 02198h          	;. . !
	ram:5304 cd 6d 62       call sub_626dh       	;. m b
	ram:5307 3a b0 80       ld a,(080b0h)        	;: . .
	ram:530a 3d             dec a                	;=
	ram:530b 32 ba 80       ld (080bah),a        	;2 . .
l530eh:
	ram:530e cd 71 62       call sub_6271h       	;. q b
	ram:5311 cd 45 50       call sub_5045h       	;. E P
	ram:5314 38 16          jr c,l532ch          	;8 .
	ram:5316 cd 20 5f       call sub_5f20h       	;.   _
	ram:5319 cd b4 50       call sub_50b4h       	;. . P
	ram:531c cd 8d 61       call sub_618dh       	;. . a
	ram:531f f7             rst 30h              	;.
	ram:5320 cd 6d 62       call sub_626dh       	;. m b
	ram:5323 cd b1 50       call sub_50b1h       	;. . P
	ram:5326 cd 99 61       call sub_6199h       	;. . a
	ram:5329 f7             rst 30h              	;.
	ram:532a 18 e2          jr l530eh            	;. .
l532ch:
	ram:532c cd 0b 63       call sub_630bh       	;. . c
	ram:532f cd 62 25       call 02562h          	;. b %
	ram:5332 3a 90 80       ld a,(08090h)        	;: . .
	ram:5335 f5             push af              	;.
	ram:5336 cd 99 61       call sub_6199h       	;. . a
	ram:5339 cd 92 61       call sub_6192h       	;. . a
	ram:533c f1             pop af               	;.
	ram:533d 28 15          jr z,l5354h          	;( .
	ram:533f cd e5 61       call sub_61e5h       	;. . a
	ram:5342 cd 51 61       call sub_6151h       	;. Q a
	ram:5345 cd 16 62       call sub_6216h       	;. . b
	ram:5348 cd 75 62       call sub_6275h       	;. u b
l534bh:
	ram:534b 21 bb 80       ld hl,080bbh         	;! . .
	ram:534e 35             dec (hl)             	;5
	ram:534f 20 aa          jr nz,l52fbh         	;.
	ram:5351 c3 76 52       jp l5276h            	;. v R
l5354h:
	ram:5354 b7             or a                 	;.
	ram:5355 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5358 32 b0 80       ld (080b0h),a        	;2 . .
	ram:535b 20 12          jr nz,l536fh         	;.
	ram:535d cd 98 0f       call 00f98h          	;. . .
	ram:5360 cd 91 2e       call 02e91h          	;. . .
	ram:5363 cd 51 61       call sub_6151h       	;. Q a
	ram:5366 cd f8 60       call sub_60f8h       	;. . `
	ram:5369 cd 7f 50       call sub_507fh       	;. . P
	ram:536c c3 66 54       jp l5466h            	;. f T
l536fh:
	ram:536f cd c3 50       call sub_50c3h       	;. . P
	ram:5372 cd 66 0d       call 00d66h          	;. f .
	ram:5375 cd 1e 50       call sub_501eh       	;. . P
	ram:5378 cd 65 62       call sub_6265h       	;. e b
	ram:537b cd d1 23       call 023d1h          	;. . #
	ram:537e f5             push af              	;.
	ram:537f cd 95 20       call 02095h          	;. .  
	ram:5382 ef             rst 28h              	;.
	ram:5383 cd ef 2d       call 02defh          	;. . -
	ram:5386 cd 61 0d       call 00d61h          	;. a .
	ram:5389 cd 69 62       call sub_6269h       	;. i b
	ram:538c 3a 85 80       ld a,(08085h)        	;: . .
	ram:538f c1             pop bc               	;.
	ram:5390 b0             or b                 	;.
	ram:5391 20 32          jr nz,l53c5h         	;2
	ram:5393 cd 51 61       call sub_6151h       	;. Q a
	ram:5396 cd 23 61       call sub_6123h       	;. # a
	ram:5399 cd 35 4e       call sub_4e35h       	;. 5 N
	ram:539c cd 2f 61       call sub_612fh       	;. / a
	ram:539f cd 3f 0d       call 00d3fh          	;. ? .
	ram:53a2 cd 0b 61       call sub_610bh       	;. . a
	ram:53a5 cd 3f 0d       call 00d3fh          	;. ? .
	ram:53a8 cd 64 61       call sub_6164h       	;. d a
	ram:53ab ef             rst 28h              	;.
	ram:53ac cd f5 1f       call 01ff5h          	;. . .
	ram:53af cd 69 62       call sub_6269h       	;. i b
l53b2h:
	ram:53b2 cd 86 61       call sub_6186h       	;. . a
	ram:53b5 cd 1c 63       call sub_631ch       	;. . c
	ram:53b8 cd 69 62       call sub_6269h       	;. i b
	ram:53bb cd 07 20       call 02007h          	;. .  
	ram:53be cd 0c 51       call sub_510ch       	;. . Q
	ram:53c1 38 02          jr c,l53c5h          	;8 .
	ram:53c3 20 ed          jr nz,l53b2h         	;.
l53c5h:
	ram:53c5 cd 37 61       call sub_6137h       	;. 7 a
	ram:53c8 cd 23 50       call sub_5023h       	;. # P
	ram:53cb cd f5 1f       call 01ff5h          	;. . .
	ram:53ce cd 92 61       call sub_6192h       	;. . a
	ram:53d1 cd 0b 61       call sub_610bh       	;. . a
	ram:53d4 ef             rst 28h              	;.
	ram:53d5 cd 4a 2e       call 02e4ah          	;. J .
	ram:53d8 cd 9e 61       call sub_619eh       	;. . a
	ram:53db cd 70 50       call sub_5070h       	;. p P
	ram:53de cd b9 50       call sub_50b9h       	;. . P
	ram:53e1 cd 9e 61       call sub_619eh       	;. . a
	ram:53e4 cd 0b 61       call sub_610bh       	;. . a
	ram:53e7 ef             rst 28h              	;.
	ram:53e8 cd 4a 2e       call 02e4ah          	;. J .
	ram:53eb cd 92 61       call sub_6192h       	;. . a
	ram:53ee cd 9b 0f       call 00f9bh          	;. . .
	ram:53f1 cd 70 50       call sub_5070h       	;. p P
	ram:53f4 cd 86 61       call sub_6186h       	;. . a
	ram:53f7 cd 75 61       call sub_6175h       	;. u a
	ram:53fa cd 7f 50       call sub_507fh       	;. . P
	ram:53fd cd 13 61       call sub_6113h       	;. . a
	ram:5400 cd 38 4e       call sub_4e38h       	;. 8 N
	ram:5403 cd 2f 61       call sub_612fh       	;. / a
	ram:5406 cd 88 1f       call 01f88h          	;. . .
	ram:5409 30 31          jr nc,l543ch         	;0 1
	ram:540b cd f8 5e       call sub_5ef8h       	;. . ^
	ram:540e cd 4c 61       call sub_614ch       	;. L a
	ram:5411 ef             rst 28h              	;.
	ram:5412 cd 4a 2e       call 02e4ah          	;. J .
	ram:5415 cd 8d 61       call sub_618dh       	;. . a
	ram:5418 cd fd 5e       call sub_5efdh       	;. . ^
	ram:541b cd 8b 50       call sub_508bh       	;. . P
	ram:541e cd 50 60       call sub_6050h       	;. P `
	ram:5421 cd fd 5e       call sub_5efdh       	;. . ^
	ram:5424 cd 4c 61       call sub_614ch       	;. L a
	ram:5427 ef             rst 28h              	;.
	ram:5428 cd 4a 2e       call 02e4ah          	;. J .
	ram:542b cd 99 61       call sub_6199h       	;. . a
	ram:542e cd f8 5e       call sub_5ef8h       	;. . ^
	ram:5431 cd 9b 0f       call 00f9bh          	;. . .
	ram:5434 cd 8b 50       call sub_508bh       	;. . P
	ram:5437 cd 79 60       call sub_6079h       	;. y `
	ram:543a 18 2a          jr l5466h            	;. *
l543ch:
	ram:543c cd f8 5e       call sub_5ef8h       	;. . ^
	ram:543f cd 19 50       call sub_5019h       	;. . P
	ram:5442 cd 3e 61       call sub_613eh       	;. > a
	ram:5445 cd a8 50       call sub_50a8h       	;. . P
	ram:5448 cd fd 5e       call sub_5efdh       	;. . ^
	ram:544b cd 19 50       call sub_5019h       	;. . P
	ram:544e cd a5 61       call sub_61a5h       	;. . a
	ram:5451 cd a8 50       call sub_50a8h       	;. . P
	ram:5454 cd 13 61       call sub_6113h       	;. . a
	ram:5457 cd f8 60       call sub_60f8h       	;. . `
	ram:545a cd 39 3b       call 03b39h          	;. 9 ;
	ram:545d cd 50 60       call sub_6050h       	;. P `
	ram:5460 cd 95 20       call 02095h          	;. .  
	ram:5463 cd 79 60       call sub_6079h       	;. y `
l5466h:
	ram:5466 cd fd 5e       call sub_5efdh       	;. . ^
	ram:5469 cd ab 60       call sub_60abh       	;. . `
	ram:546c cd 88 1f       call 01f88h          	;. . .
	ram:546f 38 05          jr c,l5476h          	;8 .
	ram:5471 cd fd 5e       call sub_5efdh       	;. . ^
	ram:5474 18 03          jr l5479h            	;. .
l5476h:
	ram:5476 cd f8 5e       call sub_5ef8h       	;. . ^
l5479h:
	ram:5479 cd d1 23       call 023d1h          	;. . #
	ram:547c 28 19          jr z,l5497h          	;( .
	ram:547e cd 00 51       call sub_5100h       	;. . Q
	ram:5481 20 14          jr nz,l5497h         	;.
	ram:5483 cd 07 20       call 02007h          	;. .  
l5486h:
	ram:5486 cd 13 51       call sub_5113h       	;. . Q
	ram:5489 cd 20 5f       call sub_5f20h       	;.   _
	ram:548c cd 23 10       call 01023h          	;. # .
	ram:548f cd 56 60       call sub_6056h       	;. V `
	ram:5492 cd 45 50       call sub_5045h       	;. E P
	ram:5495 30 ef          jr nc,l5486h         	;0 .
l5497h:
	ram:5497 c3 4b 53       jp l534bh            	;. K S
l549ah:
	ram:549a 3a b5 80       ld a,(080b5h)        	;: . .
	ram:549d 32 b0 80       ld (080b0h),a        	;2 . .
	ram:54a0 cd 3e 21       call 0213eh          	;. > !
	ram:54a3 cd c9 5f       call sub_5fc9h       	;. . _
	ram:54a6 3a b4 80       ld a,(080b4h)        	;: . .
	ram:54a9 b7             or a                 	;.
	ram:54aa ca 76 52       jp z,l5276h          	;. v R
	ram:54ad 32 bb 80       ld (080bbh),a        	;2 . .
l54b0h:
	ram:54b0 cd 35 50       call sub_5035h       	;. 5 P
	ram:54b3 cd 2c 62       call sub_622ch       	;. , b
	ram:54b6 cd 98 21       call 02198h          	;. . !
	ram:54b9 cd 1c 5e       call sub_5e1ch       	;. . ^
	ram:54bc cd e5 61       call sub_61e5h       	;. . a
l54bfh:
	ram:54bf cd b1 50       call sub_50b1h       	;. . P
	ram:54c2 cd 3e 61       call sub_613eh       	;. > a
	ram:54c5 f7             rst 30h              	;.
	ram:54c6 cd e5 61       call sub_61e5h       	;. . a
	ram:54c9 cd 45 50       call sub_5045h       	;. E P
	ram:54cc 30 f1          jr nc,l54bfh         	;0 .
	ram:54ce cd 0b 63       call sub_630bh       	;. . c
	ram:54d1 cd 51 61       call sub_6151h       	;. Q a
	ram:54d4 cd 62 25       call 02562h          	;. b %
	ram:54d7 28 12          jr z,l54ebh          	;( .
	ram:54d9 cd 16 62       call sub_6216h       	;. . b
	ram:54dc cd 43 61       call sub_6143h       	;. C a
	ram:54df cd 79 62       call sub_6279h       	;. y b
l54e2h:
	ram:54e2 21 bb 80       ld hl,080bbh         	;! . .
	ram:54e5 35             dec (hl)             	;5
	ram:54e6 20 c8          jr nz,l54b0h         	;.
	ram:54e8 c3 76 52       jp l5276h            	;. v R
l54ebh:
	ram:54eb 3a bb 80       ld a,(080bbh)        	;: . .
	ram:54ee 32 b0 80       ld (080b0h),a        	;2 . .
	ram:54f1 cd d6 23       call 023d6h          	;. . #
	ram:54f4 20 35          jr nz,l552bh         	;5
	ram:54f6 cd 30 62       call sub_6230h       	;. 0 b
	ram:54f9 cd d1 23       call 023d1h          	;. . #
	ram:54fc 20 1c          jr nz,l551ah         	;.
	ram:54fe cd 69 61       call sub_6169h       	;. i a
	ram:5501 cd 30 62       call sub_6230h       	;. 0 b
l5504h:
	ram:5504 cd 5d 61       call sub_615dh       	;. ] a
	ram:5507 cd 1c 63       call sub_631ch       	;. . c
	ram:550a cd 30 62       call sub_6230h       	;. 0 b
	ram:550d cd 64 61       call sub_6164h       	;. d a
	ram:5510 f7             rst 30h              	;.
	ram:5511 cf             rst 8                	;.
	ram:5512 cd 69 61       call sub_6169h       	;. i a
	ram:5515 cd 8e 1f       call 01f8eh          	;. . .
	ram:5518 38 ea          jr c,l5504h          	;8 .
l551ah:
	ram:551a cd 43 61       call sub_6143h       	;. C a
	ram:551d cd 9b 0f       call 00f9bh          	;. . .
	ram:5520 cd 58 61       call sub_6158h       	;. X a
	ram:5523 cd 23 10       call 01023h          	;. # .
	ram:5526 cd a8 5f       call l5fa8h          	;. . _
	ram:5529 18 55          jr l5580h            	;. U
l552bh:
	ram:552b cd c3 50       call sub_50c3h       	;. . P
	ram:552e cd b9 50       call sub_50b9h       	;. . P
	ram:5531 cd 13 61       call sub_6113h       	;. . a
	ram:5534 cd 23 50       call sub_5023h       	;. # P
	ram:5537 cd 7a 4e       call l4e7ah          	;. z N
	ram:553a cd ef 2d       call 02defh          	;. . -
	ram:553d cd 23 10       call 01023h          	;. # .
	ram:5540 cd a8 5f       call l5fa8h          	;. . _
	ram:5543 cd 30 62       call sub_6230h       	;. 0 b
	ram:5546 cd 2f 61       call sub_612fh       	;. / a
	ram:5549 cd 13 61       call sub_6113h       	;. . a
	ram:554c cd 88 1f       call 01f88h          	;. . .
	ram:554f f5             push af              	;.
	ram:5550 cd 5d 61       call sub_615dh       	;. ] a
	ram:5553 f1             pop af               	;.
	ram:5554 38 11          jr c,l5567h          	;8 .
	ram:5556 cd 19 50       call sub_5019h       	;. . P
	ram:5559 cd 9b 0f       call 00f9bh          	;. . .
	ram:555c cd a5 61       call sub_61a5h       	;. . a
	ram:555f cd 71 0d       call 00d71h          	;. q .
	ram:5562 cd 0b 61       call sub_610bh       	;. . a
	ram:5565 18 10          jr l5577h            	;. .
l5567h:
	ram:5567 cd 4c 61       call sub_614ch       	;. L a
	ram:556a ef             rst 28h              	;.
	ram:556b cd 9b 0f       call 00f9bh          	;. . .
	ram:556e cd 3e 61       call sub_613eh       	;. > a
	ram:5571 cd 71 0d       call 00d71h          	;. q .
	ram:5574 cd 2f 61       call sub_612fh       	;. / a
l5577h:
	ram:5577 cd 23 10       call 01023h          	;. # .
	ram:557a cd 79 60       call sub_6079h       	;. y `
	ram:557d cd fd 5e       call sub_5efdh       	;. . ^
l5580h:
	ram:5580 cd d1 23       call 023d1h          	;. . #
	ram:5583 28 10          jr z,l5595h          	;( .
	ram:5585 cd 00 51       call sub_5100h       	;. . Q
	ram:5588 20 0b          jr nz,l5595h         	;.
	ram:558a cd 07 20       call 02007h          	;. .  
l558dh:
	ram:558d cd 13 51       call sub_5113h       	;. . Q
	ram:5590 cd 45 50       call sub_5045h       	;. E P
	ram:5593 30 f8          jr nc,l558dh         	;0 .
l5595h:
	ram:5595 c3 e2 54       jp l54e2h            	;. . T
l5598h:
	ram:5598 cd 2d 5e       call sub_5e2dh       	;. - ^
l559bh:
	ram:559b cd 06 50       call sub_5006h       	;. . P
	ram:559e 30 0e          jr nc,l55aeh         	;0 .
	ram:55a0 cd 21 5e       call sub_5e21h       	;. ! ^
l55a3h:
	ram:55a3 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:55a6 cd 7c 5f       call sub_5f7ch       	;. | _
	ram:55a9 cd 4f 50       call sub_504fh       	;. O P
	ram:55ac 30 f5          jr nc,l55a3h         	;0 .
l55aeh:
	ram:55ae cd 67 50       call sub_5067h       	;. g P
	ram:55b1 30 e8          jr nc,l559bh         	;0 .
	ram:55b3 3c             inc a                	;<
	ram:55b4 32 ba 80       ld (080bah),a        	;2 . .
l55b7h:
	ram:55b7 21 ba 80       ld hl,080bah         	;! . .
	ram:55ba 35             dec (hl)             	;5
	ram:55bb 3a be 80       ld a,(080beh)        	;: . .
	ram:55be be             cp (hl)              	;.
	ram:55bf 38 02          jr c,l55c3h          	;8 .
	ram:55c1 20 38          jr nz,l55fbh         	;8
l55c3h:
	ram:55c3 3a bf 80       ld a,(080bfh)        	;: . .
	ram:55c6 be             cp (hl)              	;.
	ram:55c7 38 01          jr c,l55cah          	;8 .
	ram:55c9 7e             ld a,(hl)            	;~
l55cah:
	ram:55ca 32 b0 80       ld (080b0h),a        	;2 . .
	ram:55cd cd 26 5e       call sub_5e26h       	;. & ^
l55d0h:
	ram:55d0 3a be 80       ld a,(080beh)        	;: . .
	ram:55d3 32 ae 80       ld (080aeh),a        	;2 . .
	ram:55d6 cd 98 21       call 02198h          	;. . !
l55d9h:
	ram:55d9 cd f5 1f       call 01ff5h          	;. . .
	ram:55dc cd c4 5e       call sub_5ec4h       	;. . ^
	ram:55df cf             rst 8                	;.
	ram:55e0 cd 94 5e       call sub_5e94h       	;. . ^
	ram:55e3 ef             rst 28h              	;.
	ram:55e4 cd a3 50       call sub_50a3h       	;. . P
	ram:55e7 21 ae 80       ld hl,080aeh         	;! . .
	ram:55ea 34             inc (hl)             	;4
	ram:55eb 3a b0 80       ld a,(080b0h)        	;: . .
	ram:55ee be             cp (hl)              	;.
	ram:55ef 30 e8          jr nc,l55d9h         	;0 .
	ram:55f1 cd 7c 5f       call sub_5f7ch       	;. | _
	ram:55f4 cd 5d 50       call sub_505dh       	;. ] P
	ram:55f7 38 be          jr c,l55b7h          	;8 .
	ram:55f9 18 d5          jr l55d0h            	;. .
l55fbh:
	ram:55fb 11 5a 00       ld de,0005ah         	;. Z .
	ram:55fe cd 1b 2e       call 02e1bh          	;. . .
	ram:5601 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5604 28 04          jr z,l560ah          	;( .
	ram:5606 e1             pop hl               	;.
	ram:5607 c3 91 56       jp l5691h            	;. . V
l560ah:
	ram:560a 11 32 00       ld de,00032h         	;. 2 .
	ram:560d cd 1b 2e       call 02e1bh          	;. . .
l5610h:
	ram:5610 cd 26 5e       call sub_5e26h       	;. & ^
	ram:5613 21 bf 80       ld hl,080bfh         	;! . .
	ram:5616 be             cp (hl)              	;.
	ram:5617 28 25          jr z,l563eh          	;( %
l5619h:
	ram:5619 cd a2 62       call sub_62a2h       	;. . b
	ram:561c cf             rst 8                	;.
	ram:561d cd 21 20       call 02021h          	;. !  
	ram:5620 cd 18 5e       call sub_5e18h       	;. . ^
l5623h:
	ram:5623 cd 40 5f       call sub_5f40h       	;. @ _
	ram:5626 cd 78 26       call 02678h          	;. x &
	ram:5629 28 05          jr z,l5630h          	;( .
	ram:562b cd 45 3b       call 03b45h          	;. E ;
	ram:562e 18 01          jr l5631h            	;. .
l5630h:
	ram:5630 ef             rst 28h              	;.
l5631h:
	ram:5631 cd 7c 5f       call sub_5f7ch       	;. | _
	ram:5634 cd 4f 50       call sub_504fh       	;. O P
	ram:5637 30 ea          jr nc,l5623h         	;0 .
	ram:5639 cd 5d 50       call sub_505dh       	;. ] P
	ram:563c 30 db          jr nc,l5619h         	;0 .
l563eh:
	ram:563e cd 26 5e       call sub_5e26h       	;. & ^
l5641h:
	ram:5641 21 bb 80       ld hl,080bbh         	;! . .
	ram:5644 3a be 80       ld a,(080beh)        	;: . .
	ram:5647 be             cp (hl)              	;.
	ram:5648 38 09          jr c,l5653h          	;8 .
	ram:564a 35             dec (hl)             	;5
	ram:564b 20 0d          jr nz,l565ah         	;.
	ram:564d 3a bf 80       ld a,(080bfh)        	;: . .
	ram:5650 32 bb 80       ld (080bbh),a        	;2 . .
l5653h:
	ram:5653 3a b9 80       ld a,(080b9h)        	;: . .
	ram:5656 be             cp (hl)              	;.
	ram:5657 28 2a          jr z,l5683h          	;( *
	ram:5659 34             inc (hl)             	;4
l565ah:
	ram:565a cd a2 62       call sub_62a2h       	;. . b
	ram:565d cd 95 39       call 03995h          	;. . 9
	ram:5660 21 bb 80       ld hl,080bbh         	;! . .
	ram:5663 be             cp (hl)              	;.
	ram:5664 28 db          jr z,l5641h          	;( .
	ram:5666 32 ae 80       ld (080aeh),a        	;2 . .
	ram:5669 cd 18 5e       call sub_5e18h       	;. . ^
l566ch:
	ram:566c cd 99 5e       call sub_5e99h       	;. . ^
	ram:566f df             rst 18h              	;.
	ram:5670 cd 40 5f       call sub_5f40h       	;. @ _
	ram:5673 cd f1 5f       call sub_5ff1h       	;. . _
	ram:5676 cd cf 2d       call 02dcfh          	;. . -
	ram:5679 cd 7c 5f       call sub_5f7ch       	;. | _
	ram:567c cd 4f 50       call sub_504fh       	;. O P
	ram:567f 30 eb          jr nc,l566ch         	;0 .
	ram:5681 18 be          jr l5641h            	;. .
l5683h:
	ram:5683 e1             pop hl               	;.
	ram:5684 3a b9 80       ld a,(080b9h)        	;: . .
	ram:5687 6f             ld l,a               	;o
	ram:5688 26 00          ld h,000h            	;& .
	ram:568a cd 17 2e       call 02e17h          	;. . .
	ram:568d cd 78 26       call 02678h          	;. x &
	ram:5690 c0             ret nz               	;.
l5691h:
	ram:5691 cd 2d 5e       call sub_5e2dh       	;. - ^
l5694h:
	ram:5694 cd 0b 63       call sub_630bh       	;. . c
	ram:5697 cd d6 23       call 023d6h          	;. . #
	ram:569a 20 08          jr nz,l56a4h         	;.
	ram:569c cd 67 50       call sub_5067h       	;. g P
	ram:569f 30 f3          jr nc,l5694h         	;0 .
	ram:56a1 06 00          ld b,000h            	;. .
	ram:56a3 c9             ret                  	;.
l56a4h:
	ram:56a4 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:56a7 28 03          jr z,l56ach          	;( .
	ram:56a9 06 01          ld b,001h            	;. .
	ram:56ab c9             ret                  	;.
l56ach:
	ram:56ac 2a ca 80       ld hl,(080cah)       	;* . .
	ram:56af 22 c6 80       ld (080c6h),hl       	;" . .
	ram:56b2 3a b9 80       ld a,(080b9h)        	;: . .
	ram:56b5 67             ld h,a               	;g
	ram:56b6 6f             ld l,a               	;o
	ram:56b7 cd 09 2a       call 02a09h          	;. . *
	ram:56ba ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:56be cd f4 2d       call 02df4h          	;. . -
	ram:56c1 cd ef 2d       call 02defh          	;. . -
	ram:56c4 cd 3b 2e       call 02e3bh          	;. ; .
	ram:56c7 cd 4a 2e       call 02e4ah          	;. J .
	ram:56ca cd 45 2e       call 02e45h          	;. E .
	ram:56cd cd 7d 26       call 0267dh          	;. } &
	ram:56d0 cd 2d 5e       call sub_5e2dh       	;. - ^
l56d3h:
	ram:56d3 cd 18 5e       call sub_5e18h       	;. . ^
	ram:56d6 cd 0b 63       call sub_630bh       	;. . c
	ram:56d9 cd d6 23       call 023d6h          	;. . #
	ram:56dc 20 1a          jr nz,l56f8h         	;.
l56deh:
	ram:56de cd 0c 5f       call sub_5f0ch       	;. . _
	ram:56e1 cd 93 21       call 02193h          	;. . !
	ram:56e4 cd 3b 60       call sub_603bh       	;. ; `
	ram:56e7 cd 4f 50       call sub_504fh       	;. O P
	ram:56ea 30 f2          jr nc,l56deh         	;0 .
l56ech:
	ram:56ec cd 67 50       call sub_5067h       	;. g P
	ram:56ef 30 e2          jr nc,l56d3h         	;0 .
	ram:56f1 cd f4 2d       call 02df4h          	;. . -
	ram:56f4 d7             rst 10h              	;.
	ram:56f5 cb fe          set 7,(hl)           	;. .
	ram:56f7 c9             ret                  	;.
l56f8h:
	ram:56f8 cd 06 5f       call sub_5f06h       	;. . _
	ram:56fb cf             rst 8                	;.
	ram:56fc cd 0c 5f       call sub_5f0ch       	;. . _
	ram:56ff cd 3b 60       call sub_603bh       	;. ; `
	ram:5702 cd ac 0f       call 00fach          	;. . .
	ram:5705 cd 45 60       call sub_6045h       	;. E `
	ram:5708 cd 4f 50       call sub_504fh       	;. O P
	ram:570b 30 eb          jr nc,l56f8h         	;0 .
	ram:570d cd 67 50       call sub_5067h       	;. g P
	ram:5710 18 da          jr l56ech            	;. .
sub_5712h:
	ram:5712 cd ee 61       call sub_61eeh       	;. . a
	ram:5715 cd d0 62       call sub_62d0h       	;. . b
	ram:5718 cd ac 0f       call 00fach          	;. . .
sub_571bh:
	ram:571b cd 8d 59       call sub_598dh       	;. . Y
	ram:571e cd 91 2e       call 02e91h          	;. . .
	ram:5721 cd e7 60       call sub_60e7h       	;. . `
l5724h:
	ram:5724 cd 27 3b       call 03b27h          	;. ' ;
	ram:5727 c9             ret                  	;.
sub_5728h:
	ram:5728 37             scf                  	;7
sub_5729h:
	ram:5729 f5             push af              	;.
	ram:572a cd 91 2e       call 02e91h          	;. . .
	ram:572d cd e7 60       call sub_60e7h       	;. . `
	ram:5730 cd 33 3b       call 03b33h          	;. 3 ;
	ram:5733 f1             pop af               	;.
	ram:5734 d4 98 0f       call nc,00f98h       	;. . .
	ram:5737 cd 91 2e       call 02e91h          	;. . .
	ram:573a cd 39 5f       call sub_5f39h       	;. 9 _
	ram:573d cd 27 3b       call 03b27h          	;. ' ;
	ram:5740 c3 79 5f       jp sub_5f79h         	;. y _
l5743h:
	ram:5743 da 72 58       jp c,l5872h          	;. r X
	ram:5746 cd 60 1f       call 01f60h          	;. ` .
	ram:5749 cd ee 62       call sub_62eeh       	;. . b
	ram:574c cd 1a 62       call sub_621ah       	;. . b
l574fh:
	ram:574f cd bc 5e       call sub_5ebch       	;. . ^
	ram:5752 cd 3f 0d       call 00d3fh          	;. ? .
	ram:5755 cd 23 61       call sub_6123h       	;. # a
	ram:5758 f7             rst 30h              	;.
	ram:5759 cd 1f 62       call sub_621fh       	;. . b
	ram:575c cd 5d 50       call sub_505dh       	;. ] P
	ram:575f 30 ee          jr nc,l574fh         	;0 .
	ram:5761 32 bb 80       ld (080bbh),a        	;2 . .
	ram:5764 cd d1 23       call 023d1h          	;. . #
	ram:5767 ca dc 4b       jp z,l4bdch          	;. . K
l576ah:
	ram:576a cd bc 5e       call sub_5ebch       	;. . ^
	ram:576d cd 1e 61       call sub_611eh       	;. . a
	ram:5770 cd 4b 3b       call 03b4bh          	;. K ;
	ram:5773 cd f3 62       call sub_62f3h       	;. . b
	ram:5776 cd fe 1f       call 01ffeh          	;. . .
	ram:5779 cd 5a 0e       call 00e5ah          	;. Z .
	ram:577c cd b5 23       call 023b5h          	;. . #
	ram:577f cd 5a 0e       call 00e5ah          	;. Z .
	ram:5782 cd a3 50       call sub_50a3h       	;. . P
	ram:5785 cd 0b 61       call sub_610bh       	;. . a
	ram:5788 f7             rst 30h              	;.
	ram:5789 cd 16 62       call sub_6216h       	;. . b
	ram:578c 21 bb 80       ld hl,080bbh         	;! . .
	ram:578f 7e             ld a,(hl)            	;~
	ram:5790 35             dec (hl)             	;5
	ram:5791 21 b0 80       ld hl,080b0h         	;! . .
	ram:5794 be             cp (hl)              	;.
	ram:5795 20 d3          jr nz,l576ah         	;.
	ram:5797 cd f7 10       call 010f7h          	;. . .
	ram:579a cd 08 62       call sub_6208h       	;. . b
	ram:579d cd d5 62       call sub_62d5h       	;. . b
	ram:57a0 cd 27 3e       call 03e27h          	;. ' >
	ram:57a3 cd d1 23       call 023d1h          	;. . #
	ram:57a6 28 28          jr z,l57d0h          	;( (
	ram:57a8 cd f5 1f       call 01ff5h          	;. . .
	ram:57ab cd f8 60       call sub_60f8h       	;. . `
	ram:57ae ef             rst 28h              	;.
	ram:57af cd 0b 61       call sub_610bh       	;. . a
	ram:57b2 f7             rst 30h              	;.
	ram:57b3 cd 16 62       call sub_6216h       	;. . b
	ram:57b6 cd fd 60       call sub_60fdh       	;. . `
	ram:57b9 cd 07 20       call 02007h          	;. .  
	ram:57bc cd 23 10       call 01023h          	;. # .
	ram:57bf cd 08 62       call sub_6208h       	;. . b
	ram:57c2 cd 69 0d       call 00d69h          	;. i .
	ram:57c5 cd 21 20       call 02021h          	;. !  
	ram:57c8 cd d5 62       call sub_62d5h       	;. . b
	ram:57cb cd 45 3b       call 03b45h          	;. E ;
	ram:57ce 18 0f          jr l57dfh            	;. .
l57d0h:
	ram:57d0 cd 77 5e       call sub_5e77h       	;. w ^
	ram:57d3 cd 28 61       call sub_6128h       	;. ( a
	ram:57d6 cd 19 60       call sub_6019h       	;. . `
	ram:57d9 cd d5 62       call sub_62d5h       	;. . b
	ram:57dc cd fd 60       call sub_60fdh       	;. . `
l57dfh:
	ram:57df cd ee 62       call sub_62eeh       	;. . b
	ram:57e2 cd 1c 5e       call sub_5e1ch       	;. . ^
l57e5h:
	ram:57e5 cd 60 1f       call 01f60h          	;. ` .
	ram:57e8 3a bf 80       ld a,(080bfh)        	;: . .
	ram:57eb 32 bb 80       ld (080bbh),a        	;2 . .
l57eeh:
	ram:57ee cd 12 57       call sub_5712h       	;. . W
	ram:57f1 21 bb 80       ld hl,080bbh         	;! . .
	ram:57f4 46             ld b,(hl)            	;F
	ram:57f5 35             dec (hl)             	;5
	ram:57f6 3a b0 80       ld a,(080b0h)        	;: . .
	ram:57f9 b8             cp b                 	;.
	ram:57fa 20 f2          jr nz,l57eeh         	;.
	ram:57fc 77             ld (hl),a            	;w
	ram:57fd cd 06 61       call sub_6106h       	;. . a
	ram:5800 cd 4b 3b       call 03b4bh          	;. K ;
	ram:5803 cd ee 61       call sub_61eeh       	;. . a
l5806h:
	ram:5806 cd d0 62       call sub_62d0h       	;. . b
	ram:5809 af             xor a                	;.
	ram:580a cd 29 57       call sub_5729h       	;. ) W
	ram:580d cd 5d 50       call sub_505dh       	;. ] P
	ram:5810 30 f4          jr nc,l5806h         	;0 .
	ram:5812 cd 4f 50       call sub_504fh       	;. O P
	ram:5815 30 ce          jr nc,l57e5h         	;0 .
	ram:5817 cd 2d 5e       call sub_5e2dh       	;. - ^
l581ah:
	ram:581a cd 60 1f       call 01f60h          	;. ` .
	ram:581d 3a bf 80       ld a,(080bfh)        	;: . .
	ram:5820 32 ba 80       ld (080bah),a        	;2 . .
l5823h:
	ram:5823 cd ee 61       call sub_61eeh       	;. . a
	ram:5826 cd cb 62       call sub_62cbh       	;. . b
	ram:5829 cd 1b 57       call sub_571bh       	;. . W
	ram:582c 21 ba 80       ld hl,080bah         	;! . .
	ram:582f 46             ld b,(hl)            	;F
	ram:5830 35             dec (hl)             	;5
	ram:5831 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5834 b8             cp b                 	;.
	ram:5835 20 ec          jr nz,l5823h         	;.
	ram:5837 77             ld (hl),a            	;w
	ram:5838 cd 06 61       call sub_6106h       	;. . a
	ram:583b cd 4b 3b       call 03b4bh          	;. K ;
	ram:583e cd ee 61       call sub_61eeh       	;. . a
l5841h:
	ram:5841 cd cb 62       call sub_62cbh       	;. . b
	ram:5844 cd 9b 0f       call 00f9bh          	;. . .
	ram:5847 cd 28 57       call sub_5728h       	;. ( W
	ram:584a cd 4a 50       call sub_504ah       	;. J P
	ram:584d 30 f2          jr nc,l5841h         	;0 .
	ram:584f cd 5d 50       call sub_505dh       	;. ] P
	ram:5852 30 c6          jr nc,l581ah         	;0 .
	ram:5854 cd d5 62       call sub_62d5h       	;. . b
	ram:5857 cd 1e 61       call sub_611eh       	;. . a
	ram:585a cd 45 3b       call 03b45h          	;. E ;
	ram:585d cd ee 62       call sub_62eeh       	;. . b
	ram:5860 cd 77 5e       call sub_5e77h       	;. w ^
	ram:5863 cd 98 0f       call 00f98h          	;. . .
	ram:5866 cd f3 60       call sub_60f3h       	;. . `
	ram:5869 cd 45 3b       call 03b45h          	;. E ;
	ram:586c cd 19 60       call sub_6019h       	;. . `
	ram:586f c3 dc 4b       jp l4bdch            	;. . K
l5872h:
	ram:5872 f1             pop af               	;.
	ram:5873 21 3c 00       ld hl,0003ch         	;! < .
	ram:5876 cd 28 2e       call 02e28h          	;. ( .
	ram:5879 22 29 86       ld (08629h),hl       	;" ) .
	ram:587c cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:587f c2 08 59       jp nz,l5908h         	;. . Y
	ram:5882 cd 3e 4e       call sub_4e3eh       	;. > N
	ram:5885 3a bf 80       ld a,(080bfh)        	;: . .
	ram:5888 32 b0 80       ld (080b0h),a        	;2 . .
l588bh:
	ram:588b 21 b0 80       ld hl,080b0h         	;! . .
	ram:588e 3a be 80       ld a,(080beh)        	;: . .
	ram:5891 3c             inc a                	;<
	ram:5892 be             cp (hl)              	;.
	ram:5893 ca 08 59       jp z,l5908h          	;. . Y
	ram:5896 d2 be 59       jp nc,l59beh         	;. . Y
	ram:5899 35             dec (hl)             	;5
	ram:589a 7e             ld a,(hl)            	;~
	ram:589b 23             inc hl               	;#
	ram:589c 3d             dec a                	;=
	ram:589d 77             ld (hl),a            	;w
	ram:589e cd d5 62       call sub_62d5h       	;. . b
	ram:58a1 cd cc 23       call 023cch          	;. . #
	ram:58a4 28 e5          jr z,l588bh          	;( .
	ram:58a6 cd 91 2e       call 02e91h          	;. . .
	ram:58a9 cd 77 5e       call sub_5e77h       	;. w ^
	ram:58ac cd f5 1f       call 01ff5h          	;. . .
	ram:58af cd f4 2d       call 02df4h          	;. . -
	ram:58b2 ef             rst 28h              	;.
	ram:58b3 cd b5 23       call 023b5h          	;. . #
	ram:58b6 cd ef 2d       call 02defh          	;. . -
	ram:58b9 ef             rst 28h              	;.
	ram:58ba cd a3 50       call sub_50a3h       	;. . P
	ram:58bd cd 69 62       call sub_6269h       	;. i b
	ram:58c0 3a b0 80       ld a,(080b0h)        	;: . .
	ram:58c3 3c             inc a                	;<
	ram:58c4 32 bb 80       ld (080bbh),a        	;2 . .
l58c7h:
	ram:58c7 cd bc 5e       call sub_5ebch       	;. . ^
	ram:58ca cd f3 62       call sub_62f3h       	;. . b
	ram:58cd cd 5d 50       call sub_505dh       	;. ] P
	ram:58d0 30 f5          jr nc,l58c7h         	;0 .
	ram:58d2 cd 02 5e       call sub_5e02h       	;. . ^
	ram:58d5 cd 1c 5e       call sub_5e1ch       	;. . ^
l58d8h:
	ram:58d8 cd 60 1f       call 01f60h          	;. ` .
	ram:58db cd 31 5e       call sub_5e31h       	;. 1 ^
l58deh:
	ram:58de cd 12 57       call sub_5712h       	;. . W
	ram:58e1 cd 5d 50       call sub_505dh       	;. ] P
	ram:58e4 30 f8          jr nc,l58deh         	;0 .
	ram:58e6 cd 7c 61       call sub_617ch       	;. | a
	ram:58e9 cd 4b 3b       call 03b4bh          	;. K ;
	ram:58ec cd ee 61       call sub_61eeh       	;. . a
	ram:58ef cd 31 5e       call sub_5e31h       	;. 1 ^
l58f2h:
	ram:58f2 cd d0 62       call sub_62d0h       	;. . b
	ram:58f5 cd 28 57       call sub_5728h       	;. ( W
	ram:58f8 cd 5d 50       call sub_505dh       	;. ] P
	ram:58fb 30 f5          jr nc,l58f2h         	;0 .
	ram:58fd cd 4a 50       call sub_504ah       	;. J P
	ram:5900 30 d6          jr nc,l58d8h         	;0 .
	ram:5902 cd 02 5e       call sub_5e02h       	;. . ^
	ram:5905 c3 8b 58       jp l588bh            	;. . X
l5908h:
	ram:5908 cd 26 5e       call sub_5e26h       	;. & ^
l590bh:
	ram:590b cd 5d 50       call sub_505dh       	;. ] P
	ram:590e da be 59       jp c,l59beh          	;. . Y
	ram:5911 cd 7c 5e       call sub_5e7ch       	;. | ^
	ram:5914 cd d6 23       call 023d6h          	;. . #
	ram:5917 28 f2          jr z,l590bh          	;( .
	ram:5919 cd ee 61       call sub_61eeh       	;. . a
	ram:591c cd 27 3e       call 03e27h          	;. ' >
	ram:591f cd 93 21       call 02193h          	;. . !
	ram:5922 cd 14 60       call sub_6014h       	;. . `
	ram:5925 cd 21 20       call 02021h          	;. !  
	ram:5928 cd e7 60       call sub_60e7h       	;. . `
	ram:592b cd 4b 3b       call 03b4bh          	;. K ;
	ram:592e cd ac 0f       call 00fach          	;. . .
	ram:5931 cd 60 62       call sub_6260h       	;. ` b
	ram:5934 cd 21 5e       call sub_5e21h       	;. ! ^
l5937h:
	ram:5937 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:593a cd b5 59       call sub_59b5h       	;. . Y
	ram:593d cd 79 5f       call sub_5f79h       	;. y _
	ram:5940 cd 4f 50       call sub_504fh       	;. O P
	ram:5943 30 f2          jr nc,l5937h         	;0 .
	ram:5945 cd 69 61       call sub_6169h       	;. i a
	ram:5948 cd 9b 0f       call 00f9bh          	;. . .
	ram:594b cd 5c 62       call sub_625ch       	;. \ b
	ram:594e cd 18 5e       call sub_5e18h       	;. . ^
	ram:5951 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5954 3c             inc a                	;<
	ram:5955 21 b5 80       ld hl,080b5h         	;! . .
	ram:5958 77             ld (hl),a            	;w
	ram:5959 3a bf 80       ld a,(080bfh)        	;: . .
	ram:595c be             cp (hl)              	;.
	ram:595d 30 01          jr nc,l5960h         	;0 .
	ram:595f 77             ld (hl),a            	;w
l5960h:
	ram:5960 cd b2 59       call sub_59b2h       	;. . Y
	ram:5963 cd 61 60       call sub_6061h       	;. a `
	ram:5966 cd 45 50       call sub_5045h       	;. E P
	ram:5969 30 f5          jr nc,l5960h         	;0 .
	ram:596b cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:596e 20 9b          jr nz,l590bh         	;.
	ram:5970 cd 02 5e       call sub_5e02h       	;. . ^
	ram:5973 cd 11 5e       call sub_5e11h       	;. . ^
l5976h:
	ram:5976 cd b2 59       call sub_59b2h       	;. . Y
	ram:5979 cd 61 60       call sub_6061h       	;. a `
	ram:597c cd 4a 50       call sub_504ah       	;. J P
	ram:597f 30 f5          jr nc,l5976h         	;0 .
	ram:5981 cd 02 5e       call sub_5e02h       	;. . ^
	ram:5984 c3 0b 59       jp l590bh            	;. . Y
sub_5987h:
	ram:5987 cd 92 62       call sub_6292h       	;. . b
	ram:598a cd ac 0f       call 00fach          	;. . .
sub_598dh:
	ram:598d cd 91 2e       call 02e91h          	;. . .
	ram:5990 cd 39 5f       call sub_5f39h       	;. 9 _
l5993h:
	ram:5993 cd 33 3b       call 03b33h          	;. 3 ;
	ram:5996 c9             ret                  	;.
sub_5997h:
	ram:5997 cd f4 20       call 020f4h          	;. .  
	ram:599a cd 89 62       call sub_6289h       	;. . b
	ram:599d cd 45 3b       call 03b45h          	;. E ;
	ram:59a0 cd 21 3b       call 03b21h          	;. ! ;
	ram:59a3 c3 79 5f       jp sub_5f79h         	;. y _
sub_59a6h:
	ram:59a6 cd f4 20       call 020f4h          	;. .  
	ram:59a9 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:59ac cd 45 3b       call 03b45h          	;. E ;
	ram:59af c3 24 57       jp l5724h            	;. $ W
sub_59b2h:
	ram:59b2 cd 0c 5f       call sub_5f0ch       	;. . _
sub_59b5h:
	ram:59b5 cd 91 2e       call 02e91h          	;. . .
	ram:59b8 cd 89 62       call sub_6289h       	;. . b
	ram:59bb c3 93 59       jp l5993h            	;. . Y
l59beh:
	ram:59be cd 2d 5e       call sub_5e2dh       	;. - ^
l59c1h:
	ram:59c1 cd 06 50       call sub_5006h       	;. . P
	ram:59c4 30 06          jr nc,l59cch         	;0 .
	ram:59c6 cd 3b 5e       call sub_5e3bh       	;. ; ^
	ram:59c9 cd 01 63       call sub_6301h       	;. . c
l59cch:
	ram:59cc cd 67 50       call sub_5067h       	;. g P
	ram:59cf 30 f0          jr nc,l59c1h         	;0 .
	ram:59d1 cd ab 4f       call sub_4fabh       	;. . O
	ram:59d4 e5             push hl              	;.
	ram:59d5 3a bf 80       ld a,(080bfh)        	;: . .
	ram:59d8 32 b5 80       ld (080b5h),a        	;2 . .
	ram:59db cd 60 1f       call 01f60h          	;. ` .
	ram:59de cd 0c 62       call sub_620ch       	;. . b
l59e1h:
	ram:59e1 3a b5 80       ld a,(080b5h)        	;: . .
	ram:59e4 21 be 80       ld hl,080beh         	;! . .
	ram:59e7 be             cp (hl)              	;.
	ram:59e8 da a3 5c       jp c,l5ca3h          	;. . \
	ram:59eb cd f3 50       call sub_50f3h       	;. . P
	ram:59ee cd a3 26       call 026a3h          	;. . &
l59f1h:
	ram:59f1 3a b5 80       ld a,(080b5h)        	;: . .
	ram:59f4 3c             inc a                	;<
	ram:59f5 32 af 80       ld (080afh),a        	;2 . .
l59f8h:
	ram:59f8 21 af 80       ld hl,080afh         	;! . .
	ram:59fb 35             dec (hl)             	;5
	ram:59fc 3a be 80       ld a,(080beh)        	;: . .
	ram:59ff be             cp (hl)              	;.
	ram:5a00 ca 26 5a       jp z,l5a26h          	;. & Z
	ram:5a03 cd 40 5e       call sub_5e40h       	;. @ ^
	ram:5a06 cd 3f 0d       call 00d3fh          	;. ? .
	ram:5a09 cd f5 1f       call 01ff5h          	;. . .
	ram:5a0c cd 61 5e       call sub_5e61h       	;. a ^
	ram:5a0f cd 3f 0d       call 00d3fh          	;. ? .
	ram:5a12 cd a3 50       call sub_50a3h       	;. . P
	ram:5a15 cd f5 1f       call 01ff5h          	;. . .
	ram:5a18 cd 66 5e       call sub_5e66h       	;. f ^
	ram:5a1b cd 07 20       call 02007h          	;. .  
	ram:5a1e cd 3f 0d       call 00d3fh          	;. ? .
	ram:5a21 cd 0d 51       call sub_510dh       	;. . Q
	ram:5a24 20 d2          jr nz,l59f8h         	;.
l5a26h:
	ram:5a26 21 b5 80       ld hl,080b5h         	;! . .
	ram:5a29 3a af 80       ld a,(080afh)        	;: . .
	ram:5a2c be             cp (hl)              	;.
	ram:5a2d 20 1d          jr nz,l5a4ch         	;.
	ram:5a2f cd 46 5e       call sub_5e46h       	;. F ^
	ram:5a32 cd 91 2e       call 02e91h          	;. . .
	ram:5a35 cd 10 61       call sub_6110h       	;. . a
	ram:5a38 cd 27 3b       call 03b27h          	;. ' ;
	ram:5a3b cd de 62       call sub_62deh       	;. . b
	ram:5a3e cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5a41 cc c9 5f       call z,sub_5fc9h     	;. . _
	ram:5a44 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5a47 32 b5 80       ld (080b5h),a        	;2 . .
	ram:5a4a 18 95          jr l59e1h            	;. .
l5a4ch:
	ram:5a4c e1             pop hl               	;.
	ram:5a4d 7c             ld a,h               	;|
	ram:5a4e b5             or l                 	;.
	ram:5a4f ca 71 0a       jp z,00a71h          	;. q .
	ram:5a52 2b             dec hl               	;+
	ram:5a53 e5             push hl              	;.
	ram:5a54 cd a0 4f       call sub_4fa0h       	;. . O
	ram:5a57 ca e1 5a       jp z,l5ae1h          	;. . Z
	ram:5a5a cd 46 5e       call sub_5e46h       	;. F ^
	ram:5a5d cd ee 61       call sub_61eeh       	;. . a
	ram:5a60 cd 34 5f       call sub_5f34h       	;. 4 _
	ram:5a63 cd 91 2e       call 02e91h          	;. . .
	ram:5a66 cd 43 5f       call sub_5f43h       	;. C _
	ram:5a69 cd 93 21       call 02193h          	;. . !
	ram:5a6c cd 33 3b       call 03b33h          	;. 3 ;
	ram:5a6f cd cc 23       call 023cch          	;. . #
	ram:5a72 ca f6 5a       jp z,l5af6h          	;. . Z
	ram:5a75 cd 91 2e       call 02e91h          	;. . .
	ram:5a78 cd 4b 5e       call sub_5e4bh       	;. K ^
	ram:5a7b cd 91 2e       call 02e91h          	;. . .
	ram:5a7e cd e7 60       call sub_60e7h       	;. . `
	ram:5a81 cd 21 3b       call 03b21h          	;. ! ;
	ram:5a84 cd 51 21       call 02151h          	;. Q !
	ram:5a87 cd 4b 3b       call 03b4bh          	;. K ;
	ram:5a8a cd 60 62       call sub_6260h       	;. ` b
	ram:5a8d cd 2d 3b       call 03b2dh          	;. - ;
	ram:5a90 cd 91 2e       call 02e91h          	;. . .
	ram:5a93 cd f2 2e       call 02ef2h          	;. . .
	ram:5a96 cd 27 3b       call 03b27h          	;. ' ;
	ram:5a99 cd 36 2e       call 02e36h          	;. 6 .
	ram:5a9c cd 31 2e       call 02e31h          	;. 1 .
	ram:5a9f cd 3f 3b       call 03b3fh          	;. ? ;
	ram:5aa2 cd db 2d       call 02ddbh          	;. . -
	ram:5aa5 cd e0 2d       call 02de0h          	;. . -
	ram:5aa8 cd 23 62       call sub_6223h       	;. # b
	ram:5aab cd 75 61       call sub_6175h       	;. u a
	ram:5aae ef             rst 28h              	;.
	ram:5aaf cd f5 1f       call 01ff5h          	;. . .
	ram:5ab2 cd 69 61       call sub_6169h       	;. i a
	ram:5ab5 cd 23 61       call sub_6123h       	;. # a
	ram:5ab8 ef             rst 28h              	;.
	ram:5ab9 cd a3 50       call sub_50a3h       	;. . P
	ram:5abc cd 68 25       call 02568h          	;. h %
	ram:5abf f5             push af              	;.
	ram:5ac0 cd 34 61       call sub_6134h       	;. 4 a
	ram:5ac3 f1             pop af               	;.
	ram:5ac4 c4 98 0f       call nz,00f98h       	;. . .
	ram:5ac7 cd 91 2e       call 02e91h          	;. . .
	ram:5aca cd 89 62       call sub_6289h       	;. . b
	ram:5acd cd 27 3b       call 03b27h          	;. ' ;
	ram:5ad0 cd 39 3b       call 03b39h          	;. 9 ;
	ram:5ad3 cd 98 0f       call 00f98h          	;. . .
	ram:5ad6 cd 91 2e       call 02e91h          	;. . .
	ram:5ad9 cd e7 60       call sub_60e7h       	;. . `
	ram:5adc cd 27 3b       call 03b27h          	;. ' ;
	ram:5adf 18 12          jr l5af3h            	;. .
l5ae1h:
	ram:5ae1 cd 43 5f       call sub_5f43h       	;. C _
	ram:5ae4 cd 21 20       call 02021h          	;. !  
	ram:5ae7 cd 2f 5f       call sub_5f2fh       	;. / _
	ram:5aea cd 19 20       call 02019h          	;. .  
	ram:5aed cd 3f 0d       call 00d3fh          	;. ? .
	ram:5af0 cd 93 21       call 02193h          	;. . !
l5af3h:
	ram:5af3 cd ee 61       call sub_61eeh       	;. . a
l5af6h:
	ram:5af6 cd 26 5e       call sub_5e26h       	;. & ^
l5af9h:
	ram:5af9 cd 3b 5e       call sub_5e3bh       	;. ; ^
	ram:5afc cd 91 2e       call 02e91h          	;. . .
	ram:5aff cd e7 60       call sub_60e7h       	;. . `
	ram:5b02 cd 21 3b       call 03b21h          	;. ! ;
	ram:5b05 cd ce 5f       call sub_5fceh       	;. . _
	ram:5b08 cd 62 50       call sub_5062h       	;. b P
	ram:5b0b 30 ec          jr nc,l5af9h         	;0 .
	ram:5b0d cd e7 60       call sub_60e7h       	;. . `
	ram:5b10 cd 91 2e       call 02e91h          	;. . .
	ram:5b13 cd 10 61       call sub_6110h       	;. . a
	ram:5b16 cd 27 3b       call 03b27h          	;. ' ;
	ram:5b19 cd 0c 62       call sub_620ch       	;. . b
	ram:5b1c e1             pop hl               	;.
	ram:5b1d 2b             dec hl               	;+
	ram:5b1e e5             push hl              	;.
	ram:5b1f 21 b2 80       ld hl,080b2h         	;! . .
	ram:5b22 34             inc (hl)             	;4
	ram:5b23 3a af 80       ld a,(080afh)        	;: . .
	ram:5b26 32 bb 80       ld (080bbh),a        	;2 . .
l5b29h:
	ram:5b29 cd 62 50       call sub_5062h       	;. b P
	ram:5b2c 38 6f          jr c,l5b9dh          	;8 o
	ram:5b2e cd 6b 5e       call sub_5e6bh       	;. k ^
	ram:5b31 cd 27 3e       call 03e27h          	;. ' >
	ram:5b34 cd 21 20       call 02021h          	;. !  
	ram:5b37 cd 7c 5e       call sub_5e7ch       	;. | ^
	ram:5b3a cd 19 20       call 02019h          	;. .  
	ram:5b3d cd 27 3e       call 03e27h          	;. ' >
	ram:5b40 cd 69 62       call sub_6269h       	;. i b
	ram:5b43 cd 21 20       call 02021h          	;. !  
	ram:5b46 cd 6b 5e       call sub_5e6bh       	;. k ^
	ram:5b49 cd 4b 3b       call 03b4bh          	;. K ;
	ram:5b4c cd 16 63       call sub_6316h       	;. . c
	ram:5b4f cd 86 61       call sub_6186h       	;. . a
	ram:5b52 cd 93 21       call 02193h          	;. . !
	ram:5b55 cd d8 5f       call sub_5fd8h       	;. . _
	ram:5b58 cd 7c 5e       call sub_5e7ch       	;. | ^
	ram:5b5b cd 81 61       call sub_6181h       	;. . a
	ram:5b5e cd 23 10       call 01023h          	;. # .
	ram:5b61 cf             rst 8                	;.
	ram:5b62 cd 98 21       call 02198h          	;. . !
	ram:5b65 cd 14 60       call sub_6014h       	;. . `
	ram:5b68 cd 21 5e       call sub_5e21h       	;. ! ^
l5b6bh:
	ram:5b6b cd ac 5e       call sub_5each       	;. . ^
	ram:5b6e cd 60 62       call sub_6260h       	;. ` b
	ram:5b71 cd 10 63       call sub_6310h       	;. . c
	ram:5b74 cd ac 0f       call 00fach          	;. . .
	ram:5b77 cd b5 59       call sub_59b5h       	;. . Y
	ram:5b7a cd 91 2e       call 02e91h          	;. . .
	ram:5b7d cd 7c 5e       call sub_5e7ch       	;. | ^
	ram:5b80 cd a6 59       call sub_59a6h       	;. . Y
	ram:5b83 cd f7 5f       call sub_5ff7h       	;. . _
	ram:5b86 cd 10 63       call sub_6310h       	;. . c
	ram:5b89 cd 8d 59       call sub_598dh       	;. . Y
	ram:5b8c cd 91 2e       call 02e91h          	;. . .
	ram:5b8f cd 7c 5e       call sub_5e7ch       	;. | ^
	ram:5b92 cd 97 59       call sub_5997h       	;. . Y
	ram:5b95 cd 4f 50       call sub_504fh       	;. O P
	ram:5b98 da 29 5b       jp c,l5b29h          	;. ) [
	ram:5b9b 18 ce          jr l5b6bh            	;. .
l5b9dh:
	ram:5b9d cd 46 5e       call sub_5e46h       	;. F ^
	ram:5ba0 cd ee 61       call sub_61eeh       	;. . a
	ram:5ba3 cd d6 23       call 023d6h          	;. . #
	ram:5ba6 28 3f          jr z,l5be7h          	;( ?
	ram:5ba8 cd 27 3e       call 03e27h          	;. ' >
	ram:5bab cd 93 21       call 02193h          	;. . !
	ram:5bae cd c9 5f       call sub_5fc9h       	;. . _
	ram:5bb1 cd 21 20       call 02021h          	;. !  
	ram:5bb4 cd e7 60       call sub_60e7h       	;. . `
	ram:5bb7 cd 4b 3b       call 03b4bh          	;. K ;
	ram:5bba cd ee 61       call sub_61eeh       	;. . a
	ram:5bbd cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5bc0 20 25          jr nz,l5be7h         	;%
	ram:5bc2 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5bc5 21 b9 80       ld hl,080b9h         	;! . .
	ram:5bc8 be             cp (hl)              	;.
	ram:5bc9 28 1c          jr z,l5be7h          	;( .
	ram:5bcb cd ac 0f       call 00fach          	;. . .
	ram:5bce cd 60 62       call sub_6260h       	;. ` b
	ram:5bd1 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5bd4 32 ba 80       ld (080bah),a        	;2 . .
l5bd7h:
	ram:5bd7 cd 4f 50       call sub_504fh       	;. O P
	ram:5bda 38 0b          jr c,l5be7h          	;8 .
	ram:5bdc cd b2 5e       call sub_5eb2h       	;. . ^
	ram:5bdf cd b5 59       call sub_59b5h       	;. . Y
	ram:5be2 cd e0 5f       call sub_5fe0h       	;. . _
	ram:5be5 18 f0          jr l5bd7h            	;. .
l5be7h:
	ram:5be7 3a af 80       ld a,(080afh)        	;: . .
	ram:5bea 32 ba 80       ld (080bah),a        	;2 . .
l5bedh:
	ram:5bed cd 45 50       call sub_5045h       	;. E P
	ram:5bf0 da 6c 5c       jp c,l5c6ch          	;. l \
	ram:5bf3 cd 2d 5e       call sub_5e2dh       	;. - ^
l5bf6h:
	ram:5bf6 cd 51 5f       call sub_5f51h       	;. Q _
	ram:5bf9 cd 45 2e       call 02e45h          	;. E .
	ram:5bfc 2a ba 80       ld hl,(080bah)       	;* . .
	ram:5bff 7c             ld a,h               	;|
	ram:5c00 bd             cp l                 	;.
	ram:5c01 f5             push af              	;.
	ram:5c02 cc 93 21       call z,02193h        	;. . !
	ram:5c05 cd 60 62       call sub_6260h       	;. ` b
	ram:5c08 cd 92 62       call sub_6292h       	;. . b
	ram:5c0b cd b5 59       call sub_59b5h       	;. . Y
	ram:5c0e cd 91 2e       call 02e91h          	;. . .
	ram:5c11 cd 81 5e       call sub_5e81h       	;. . ^
	ram:5c14 cd a6 59       call sub_59a6h       	;. . Y
	ram:5c17 cd ea 2d       call 02deah          	;. . -
	ram:5c1a f1             pop af               	;.
	ram:5c1b cc 19 20       call z,02019h        	;. .  
	ram:5c1e cd 92 5f       call sub_5f92h       	;. . _
	ram:5c21 cd 87 59       call sub_5987h       	;. . Y
	ram:5c24 cd 91 2e       call 02e91h          	;. . .
	ram:5c27 cd 81 5e       call sub_5e81h       	;. . ^
	ram:5c2a cd 97 59       call sub_5997h       	;. . Y
	ram:5c2d cd 58 50       call sub_5058h       	;. X P
	ram:5c30 30 c4          jr nc,l5bf6h         	;0 .
	ram:5c32 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5c35 20 b6          jr nz,l5bedh         	;.
	ram:5c37 cd 26 5e       call sub_5e26h       	;. & ^
	ram:5c3a cd 02 5e       call sub_5e02h       	;. . ^
l5c3dh:
	ram:5c3d cd 51 5f       call sub_5f51h       	;. Q _
	ram:5c40 cd 60 62       call sub_6260h       	;. ` b
	ram:5c43 cd 92 62       call sub_6292h       	;. . b
	ram:5c46 cd b5 59       call sub_59b5h       	;. . Y
	ram:5c49 cd 91 2e       call 02e91h          	;. . .
	ram:5c4c cd 89 5e       call sub_5e89h       	;. . ^
	ram:5c4f cd a6 59       call sub_59a6h       	;. . Y
	ram:5c52 cd 92 5f       call sub_5f92h       	;. . _
	ram:5c55 cd 87 59       call sub_5987h       	;. . Y
	ram:5c58 cd 91 2e       call 02e91h          	;. . .
	ram:5c5b cd 89 5e       call sub_5e89h       	;. . ^
	ram:5c5e cd 97 59       call sub_5997h       	;. . Y
	ram:5c61 cd 5d 50       call sub_505dh       	;. ] P
	ram:5c64 30 d7          jr nc,l5c3dh         	;0 .
	ram:5c66 cd 02 5e       call sub_5e02h       	;. . ^
	ram:5c69 c3 ed 5b       jp l5bedh            	;. . [
l5c6ch:
	ram:5c6c cd e7 60       call sub_60e7h       	;. . `
	ram:5c6f cd d6 23       call 023d6h          	;. . #
	ram:5c72 ca f1 59       jp z,l59f1h          	;. . Y
	ram:5c75 cd 60 62       call sub_6260h       	;. ` b
	ram:5c78 cd 2d 5e       call sub_5e2dh       	;. - ^
l5c7bh:
	ram:5c7b cd fd 5e       call sub_5efdh       	;. . ^
	ram:5c7e cd b5 59       call sub_59b5h       	;. . Y
	ram:5c81 cd a8 5f       call l5fa8h          	;. . _
	ram:5c84 cd 62 50       call sub_5062h       	;. b P
	ram:5c87 30 f2          jr nc,l5c7bh         	;0 .
	ram:5c89 cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5c8c c2 f1 59       jp nz,l59f1h         	;. . Y
	ram:5c8f cd 26 5e       call sub_5e26h       	;. & ^
l5c92h:
	ram:5c92 cd 00 5f       call sub_5f00h       	;. . _
	ram:5c95 cd b5 59       call sub_59b5h       	;. . Y
	ram:5c98 cd ab 5f       call sub_5fabh       	;. . _
	ram:5c9b cd 5d 50       call sub_505dh       	;. ] P
	ram:5c9e 30 f2          jr nc,l5c92h         	;0 .
	ram:5ca0 c3 f1 59       jp l59f1h            	;. . Y
l5ca3h:
	ram:5ca3 11 6e 00       ld de,0006eh         	;. n .
	ram:5ca6 cd 1b 2e       call 02e1bh          	;. . .
	ram:5ca9 e1             pop hl               	;.
	ram:5caa cd 36 5e       call sub_5e36h       	;. 6 ^
	ram:5cad c0             ret nz               	;.
	ram:5cae e5             push hl              	;.
	ram:5caf cd 89 21       call 02189h          	;. . !
	ram:5cb2 cd 2d 5e       call sub_5e2dh       	;. - ^
l5cb5h:
	ram:5cb5 cd 18 5e       call sub_5e18h       	;. . ^
l5cb8h:
	ram:5cb8 cd 39 5f       call sub_5f39h       	;. 9 _
	ram:5cbb cd 3f 0d       call 00d3fh          	;. ? .
	ram:5cbe cd 21 20       call 02021h          	;. !  
	ram:5cc1 cd 0d 51       call sub_510dh       	;. . Q
	ram:5cc4 d4 ec 1f       call nc,01fech       	;. . .
	ram:5cc7 cd 4f 50       call sub_504fh       	;. O P
	ram:5cca 30 ec          jr nc,l5cb8h         	;0 .
	ram:5ccc cd 67 50       call sub_5067h       	;. g P
	ram:5ccf 30 e4          jr nc,l5cb5h         	;0 .
	ram:5cd1 fe 01          cp 001h              	;. .
	ram:5cd3 28 04          jr z,l5cd9h          	;( .
	ram:5cd5 3a a6 80       ld a,(080a6h)        	;: . .
	ram:5cd8 b7             or a                 	;.
l5cd9h:
	ram:5cd9 ca 10 56       jp z,l5610h          	;. . V
	ram:5cdc cd 3b 2e       call 02e3bh          	;. ; .
	ram:5cdf 3a b9 80       ld a,(080b9h)        	;: . .
l5ce2h:
	ram:5ce2 32 b5 80       ld (080b5h),a        	;2 . .
	ram:5ce5 3d             dec a                	;=
	ram:5ce6 32 b4 80       ld (080b4h),a        	;2 . .
	ram:5ce9 cd 3e 21       call 0213eh          	;. > !
	ram:5cec cd 93 21       call 02193h          	;. . !
	ram:5cef cd c9 5f       call sub_5fc9h       	;. . _
	ram:5cf2 3a b4 80       ld a,(080b4h)        	;: . .
l5cf5h:
	ram:5cf5 32 bb 80       ld (080bbh),a        	;2 . .
	ram:5cf8 32 ba 80       ld (080bah),a        	;2 . .
	ram:5cfb cd 60 1f       call 01f60h          	;. ` .
l5cfeh:
	ram:5cfe cd 91 2e       call 02e91h          	;. . .
	ram:5d01 cd 45 50       call sub_5045h       	;. E P
	ram:5d04 38 0b          jr c,l5d11h          	;8 .
	ram:5d06 cd 1b 5f       call sub_5f1bh       	;. . _
	ram:5d09 cd 8d 59       call sub_598dh       	;. . Y
	ram:5d0c cd 27 3b       call 03b27h          	;. ' ;
	ram:5d0f 18 ed          jr l5cfeh            	;. .
l5d11h:
	ram:5d11 cd be 62       call sub_62beh       	;. . b
	ram:5d14 cd 91 2e       call 02e91h          	;. . .
	ram:5d17 cd 0b 63       call sub_630bh       	;. . c
	ram:5d1a cd 21 3b       call 03b21h          	;. ! ;
	ram:5d1d cd cc 23       call 023cch          	;. . #
	ram:5d20 20 1d          jr nz,l5d3fh         	;.
	ram:5d22 cd 52 2f       call 02f52h          	;. R /
l5d25h:
	ram:5d25 cd 7a 25       call 0257ah          	;. z %
	ram:5d28 cd f5 1f       call 01ff5h          	;. . .
	ram:5d2b cd 4d 2f       call 02f4dh          	;. M /
	ram:5d2e f7             rst 30h              	;.
	ram:5d2f cd 4d 2f       call 02f4dh          	;. M /
	ram:5d32 cd 8e 1f       call 01f8eh          	;. . .
	ram:5d35 cd 56 20       call 02056h          	;. V  
	ram:5d38 38 02          jr c,l5d3ch          	;8 .
	ram:5d3a 20 e9          jr nz,l5d25h         	;.
l5d3ch:
	ram:5d3c cd 93 21       call 02193h          	;. . !
l5d3fh:
	ram:5d3f cd 39 3b       call 03b39h          	;. 9 ;
	ram:5d42 cd a8 5f       call l5fa8h          	;. . _
	ram:5d45 cd 3f 0d       call 00d3fh          	;. ? .
	ram:5d48 cd d1 23       call 023d1h          	;. . #
	ram:5d4b 28 28          jr z,l5d75h          	;( (
	ram:5d4d cd 06 51       call sub_5106h       	;. . Q
	ram:5d50 38 02          jr c,l5d54h          	;8 .
	ram:5d52 20 1a          jr nz,l5d6eh         	;.
l5d54h:
	ram:5d54 cd 21 5e       call sub_5e21h       	;. ! ^
	ram:5d57 cd 3b 2e       call 02e3bh          	;. ; .
l5d5ah:
	ram:5d5a cd 1b 5f       call sub_5f1bh       	;. . _
	ram:5d5d cd 1a 2f       call 02f1ah          	;. . /
	ram:5d60 cd 4b 3b       call 03b4bh          	;. K ;
	ram:5d63 cd 7f 60       call l607fh          	;. . `
	ram:5d66 cd 45 50       call sub_5045h       	;. E P
	ram:5d69 30 ef          jr nc,l5d5ah         	;0 .
	ram:5d6b cd 0c 2e       call 02e0ch          	;. . .
l5d6eh:
	ram:5d6e 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5d71 3d             dec a                	;=
	ram:5d72 c2 f5 5c       jp nz,l5cf5h         	;. . \
l5d75h:
	ram:5d75 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5d78 3d             dec a                	;=
	ram:5d79 fe 01          cp 001h              	;. .
	ram:5d7b c2 e2 5c       jp nz,l5ce2h         	;. . \
	ram:5d7e cd 0c 2e       call 02e0ch          	;. . .
	ram:5d81 cd 2d 5e       call sub_5e2dh       	;. - ^
l5d84h:
	ram:5d84 cd 06 50       call sub_5006h       	;. . P
	ram:5d87 30 0e          jr nc,l5d97h         	;0 .
	ram:5d89 cd 21 5e       call sub_5e21h       	;. ! ^
l5d8ch:
	ram:5d8c cd 39 5f       call sub_5f39h       	;. 9 _
	ram:5d8f cd 7c 5f       call sub_5f7ch       	;. | _
	ram:5d92 cd 4f 50       call sub_504fh       	;. O P
	ram:5d95 30 f5          jr nc,l5d8ch         	;0 .
l5d97h:
	ram:5d97 cd 67 50       call sub_5067h       	;. g P
	ram:5d9a 30 e8          jr nc,l5d84h         	;0 .
	ram:5d9c 32 b5 80       ld (080b5h),a        	;2 . .
l5d9fh:
	ram:5d9f 21 bf 80       ld hl,080bfh         	;! . .
	ram:5da2 be             cp (hl)              	;.
	ram:5da3 38 01          jr c,l5da6h          	;8 .
	ram:5da5 7e             ld a,(hl)            	;~
l5da6h:
	ram:5da6 32 b0 80       ld (080b0h),a        	;2 . .
	ram:5da9 2b             dec hl               	;+
	ram:5daa 7e             ld a,(hl)            	;~
	ram:5dab 32 bb 80       ld (080bbh),a        	;2 . .
l5daeh:
	ram:5dae cd 60 1f       call 01f60h          	;. ` .
	ram:5db1 cd 11 5e       call sub_5e11h       	;. . ^
l5db4h:
	ram:5db4 cd 91 2e       call 02e91h          	;. . .
	ram:5db7 cd 40 5f       call sub_5f40h       	;. @ _
	ram:5dba cd 91 2e       call 02e91h          	;. . .
	ram:5dbd cd 1b 5f       call sub_5f1bh       	;. . _
	ram:5dc0 cd 33 3b       call 03b33h          	;. 3 ;
	ram:5dc3 cd 27 3b       call 03b27h          	;. ' ;
	ram:5dc6 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5dc9 cd 52 50       call l5052h          	;. R P
	ram:5dcc 30 e6          jr nc,l5db4h         	;0 .
	ram:5dce cd ab 5f       call sub_5fabh       	;. . _
	ram:5dd1 cd 5d 50       call sub_505dh       	;. ] P
	ram:5dd4 30 d8          jr nc,l5daeh         	;0 .
	ram:5dd6 21 b5 80       ld hl,080b5h         	;! . .
	ram:5dd9 3a be 80       ld a,(080beh)        	;: . .
	ram:5ddc be             cp (hl)              	;.
	ram:5ddd ca 10 56       jp z,l5610h          	;. . V
	ram:5de0 35             dec (hl)             	;5
	ram:5de1 7e             ld a,(hl)            	;~
	ram:5de2 18 bb          jr l5d9fh            	;. .
l5de4h:
	ram:5de4 00             nop                  	;.
	ram:5de5 ff             rst 38h              	;.
	ram:5de6 fb             ei                   	;.
	ram:5de7 95             sub l                	;.
	ram:5de8 00             nop                  	;.
	ram:5de9 00             nop                  	;.
	ram:5dea 00             nop                  	;.
	ram:5deb 00             nop                  	;.
	ram:5dec 00             nop                  	;.
	ram:5ded 00             nop                  	;.
l5deeh:
	ram:5dee 00             nop                  	;.
	ram:5def ff             rst 38h              	;.
	ram:5df0 fb             ei                   	;.
	ram:5df1 75             ld (hl),l            	;u
	ram:5df2 00             nop                  	;.
	ram:5df3 00             nop                  	;.
	ram:5df4 00             nop                  	;.
	ram:5df5 00             nop                  	;.
	ram:5df6 00             nop                  	;.
	ram:5df7 00             nop                  	;.
l5df8h:
	ram:5df8 80             add a,b              	;.
	ram:5df9 ff             rst 38h              	;.
	ram:5dfa fb             ei                   	;.
	ram:5dfb 43             ld b,e               	;C
	ram:5dfc 75             ld (hl),l            	;u
	ram:5dfd 00             nop                  	;.
	ram:5dfe 00             nop                  	;.
	ram:5dff 00             nop                  	;.
	ram:5e00 00             nop                  	;.
	ram:5e01 00             nop                  	;.
sub_5e02h:
	ram:5e02 2a ca 80       ld hl,(080cah)       	;* . .
	ram:5e05 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:5e09 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5e0d 22 c6 80       ld (080c6h),hl       	;" . .
	ram:5e10 c9             ret                  	;.
sub_5e11h:
	ram:5e11 3a be 80       ld a,(080beh)        	;: . .
l5e14h:
	ram:5e14 32 ba 80       ld (080bah),a        	;2 . .
	ram:5e17 c9             ret                  	;.
sub_5e18h:
	ram:5e18 3e 01          ld a,001h            	;> .
	ram:5e1a 18 f8          jr l5e14h            	;. .
sub_5e1ch:
	ram:5e1c 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e1f 18 f3          jr l5e14h            	;. .
sub_5e21h:
	ram:5e21 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5e24 18 ee          jr l5e14h            	;. .
sub_5e26h:
	ram:5e26 3a be 80       ld a,(080beh)        	;: . .
l5e29h:
	ram:5e29 32 bb 80       ld (080bbh),a        	;2 . .
	ram:5e2c c9             ret                  	;.
sub_5e2dh:
	ram:5e2d 3e 01          ld a,001h            	;> .
	ram:5e2f 18 f8          jr l5e29h            	;. .
sub_5e31h:
	ram:5e31 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e34 18 f3          jr l5e29h            	;. .
sub_5e36h:
	ram:5e36 fd cb 00 4e    bit 1,(iy+000h)      	;. . . N
	ram:5e3a c9             ret                  	;.
sub_5e3bh:
	ram:5e3b 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5e3e 18 2f          jr l5e6fh            	;. /
sub_5e40h:
	ram:5e40 3a af 80       ld a,(080afh)        	;: . .
	ram:5e43 3d             dec a                	;=
	ram:5e44 18 29          jr l5e6fh            	;. )
sub_5e46h:
	ram:5e46 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5e49 18 24          jr l5e6fh            	;. $
sub_5e4bh:
	ram:5e4b 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5e4e 18 1f          jr l5e6fh            	;. .
sub_5e50h:
	ram:5e50 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e53 18 1a          jr l5e6fh            	;. .
sub_5e55h:
	ram:5e55 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e58 3c             inc a                	;<
	ram:5e59 18 14          jr l5e6fh            	;. .
sub_5e5bh:
	ram:5e5b 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e5e 3d             dec a                	;=
	ram:5e5f 18 0e          jr l5e6fh            	;. .
sub_5e61h:
	ram:5e61 3a af 80       ld a,(080afh)        	;: . .
	ram:5e64 18 09          jr l5e6fh            	;. .
sub_5e66h:
	ram:5e66 3a af 80       ld a,(080afh)        	;: . .
	ram:5e69 18 19          jr l5e84h            	;. .
sub_5e6bh:
	ram:5e6b 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5e6e 3d             dec a                	;=
l5e6fh:
	ram:5e6f 47             ld b,a               	;G
	ram:5e70 18 6f          jr l5ee1h            	;. o
sub_5e72h:
	ram:5e72 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5e75 18 0d          jr l5e84h            	;. .
sub_5e77h:
	ram:5e77 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e7a 18 08          jr l5e84h            	;. .
sub_5e7ch:
	ram:5e7c 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5e7f 18 03          jr l5e84h            	;. .
sub_5e81h:
	ram:5e81 3a ba 80       ld a,(080bah)        	;: . .
l5e84h:
	ram:5e84 b7             or a                 	;.
l5e85h:
	ram:5e85 47             ld b,a               	;G
	ram:5e86 3d             dec a                	;=
	ram:5e87 18 59          jr l5ee2h            	;. Y
sub_5e89h:
	ram:5e89 3a ba 80       ld a,(080bah)        	;: . .
	ram:5e8c 37             scf                  	;7
	ram:5e8d 18 f6          jr l5e85h            	;. .
sub_5e8fh:
	ram:5e8f 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5e92 18 21          jr l5eb5h            	;. !
sub_5e94h:
	ram:5e94 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5e97 18 1c          jr l5eb5h            	;. .
sub_5e99h:
	ram:5e99 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5e9c 37             scf                  	;7
	ram:5e9d 18 17          jr l5eb6h            	;. .
sub_5e9fh:
	ram:5e9f 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5ea2 3c             inc a                	;<
	ram:5ea3 18 10          jr l5eb5h            	;. .
sub_5ea5h:
	ram:5ea5 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5ea8 3c             inc a                	;<
	ram:5ea9 3c             inc a                	;<
	ram:5eaa 18 09          jr l5eb5h            	;. .
sub_5each:
	ram:5eac 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5eaf 3d             dec a                	;=
	ram:5eb0 18 03          jr l5eb5h            	;. .
sub_5eb2h:
	ram:5eb2 3a b5 80       ld a,(080b5h)        	;: . .
l5eb5h:
	ram:5eb5 b7             or a                 	;.
l5eb6h:
	ram:5eb6 47             ld b,a               	;G
	ram:5eb7 3a ba 80       ld a,(080bah)        	;: . .
	ram:5eba 18 26          jr l5ee2h            	;. &
sub_5ebch:
	ram:5ebc 3a b1 80       ld a,(080b1h)        	;: . .
	ram:5ebf 18 13          jr l5ed4h            	;. .
sub_5ec1h:
	ram:5ec1 b7             or a                 	;.
	ram:5ec2 18 01          jr l5ec5h            	;. .
sub_5ec4h:
	ram:5ec4 37             scf                  	;7
l5ec5h:
	ram:5ec5 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5ec8 18 0b          jr l5ed5h            	;. .
sub_5ecah:
	ram:5eca 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5ecd 18 04          jr l5ed3h            	;. .
sub_5ecfh:
	ram:5ecf 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5ed2 3c             inc a                	;<
l5ed3h:
	ram:5ed3 3c             inc a                	;<
l5ed4h:
	ram:5ed4 b7             or a                 	;.
l5ed5h:
	ram:5ed5 4f             ld c,a               	;O
	ram:5ed6 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5ed9 47             ld b,a               	;G
	ram:5eda 18 07          jr l5ee3h            	;. .
sub_5edch:
	ram:5edc 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5edf 47             ld b,a               	;G
	ram:5ee0 04             inc b                	;.
l5ee1h:
	ram:5ee1 b7             or a                 	;.
l5ee2h:
	ram:5ee2 4f             ld c,a               	;O
l5ee3h:
	ram:5ee3 38 08          jr c,l5eedh          	;8 .
l5ee5h:
	ram:5ee5 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
l5ee9h:
	ram:5ee9 cd 8f 39       call 0398fh          	;. . 9
	ram:5eec c9             ret                  	;.
l5eedh:
	ram:5eed ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:5ef1 18 f6          jr l5ee9h            	;. .
sub_5ef3h:
	ram:5ef3 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5ef6 18 db          jr l5ed3h            	;. .
sub_5ef8h:
	ram:5ef8 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5efb 18 d7          jr l5ed4h            	;. .
sub_5efdh:
	ram:5efd b7             or a                 	;.
	ram:5efe 18 01          jr l5f01h            	;. .
sub_5f00h:
	ram:5f00 37             scf                  	;7
l5f01h:
	ram:5f01 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5f04 18 cf          jr l5ed5h            	;. .
sub_5f06h:
	ram:5f06 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5f09 3c             inc a                	;<
	ram:5f0a 18 03          jr l5f0fh            	;. .
sub_5f0ch:
	ram:5f0c 3a bb 80       ld a,(080bbh)        	;: . .
l5f0fh:
	ram:5f0f 4f             ld c,a               	;O
	ram:5f10 3a ba 80       ld a,(080bah)        	;: . .
	ram:5f13 47             ld b,a               	;G
	ram:5f14 18 cf          jr l5ee5h            	;. .
sub_5f16h:
	ram:5f16 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5f19 18 f4          jr l5f0fh            	;. .
sub_5f1bh:
	ram:5f1b 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5f1e 18 ef          jr l5f0fh            	;. .
sub_5f20h:
	ram:5f20 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5f23 18 ea          jr l5f0fh            	;. .
sub_5f25h:
	ram:5f25 3a bb 80       ld a,(080bbh)        	;: . .
l5f28h:
	ram:5f28 4f             ld c,a               	;O
	ram:5f29 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5f2c 47             ld b,a               	;G
	ram:5f2d 18 b6          jr l5ee5h            	;. .
sub_5f2fh:
	ram:5f2f 3a b3 80       ld a,(080b3h)        	;: . .
	ram:5f32 18 f4          jr l5f28h            	;. .
sub_5f34h:
	ram:5f34 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5f37 18 ef          jr l5f28h            	;. .
sub_5f39h:
	ram:5f39 b7             or a                 	;.
l5f3ah:
	ram:5f3a ed 4b ba 80    ld bc,(080bah)       	;. K . .
	ram:5f3e 18 a3          jr l5ee3h            	;. .
sub_5f40h:
	ram:5f40 37             scf                  	;7
	ram:5f41 18 f7          jr l5f3ah            	;. .
sub_5f43h:
	ram:5f43 ed 4b b4 80    ld bc,(080b4h)       	;. K . .
	ram:5f47 18 9c          jr l5ee5h            	;. .
sub_5f49h:
	ram:5f49 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5f4c 47             ld b,a               	;G
	ram:5f4d 04             inc b                	;.
	ram:5f4e 3d             dec a                	;=
	ram:5f4f 18 90          jr l5ee1h            	;. .
sub_5f51h:
	ram:5f51 ed 4b ba 80    ld bc,(080bah)       	;. K . .
	ram:5f55 0d             dec c                	;.
	ram:5f56 18 8d          jr l5ee5h            	;. .
sub_5f58h:
	ram:5f58 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5f5b 47             ld b,a               	;G
	ram:5f5c 3c             inc a                	;<
	ram:5f5d 18 82          jr l5ee1h            	;. .
sub_5f5fh:
	ram:5f5f 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5f62 c6 02          add a,002h           	;. .
	ram:5f64 47             ld b,a               	;G
	ram:5f65 3d             dec a                	;=
	ram:5f66 c3 e1 5e       jp l5ee1h            	;. . ^
sub_5f69h:
	ram:5f69 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5f6c c6 02          add a,002h           	;. .
	ram:5f6e 47             ld b,a               	;G
	ram:5f6f d6 03          sub 003h             	;. .
	ram:5f71 c3 e1 5e       jp l5ee1h            	;. . ^
sub_5f74h:
	ram:5f74 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5f77 18 3e          jr l5fb7h            	;. >
sub_5f79h:
	ram:5f79 b7             or a                 	;.
	ram:5f7a 18 01          jr l5f7dh            	;. .
sub_5f7ch:
	ram:5f7c 37             scf                  	;7
l5f7dh:
	ram:5f7d 3a ba 80       ld a,(080bah)        	;: . .
	ram:5f80 18 36          jr l5fb8h            	;. 6
sub_5f82h:
	ram:5f82 3a b1 80       ld a,(080b1h)        	;: . .
	ram:5f85 18 30          jr l5fb7h            	;. 0
sub_5f87h:
	ram:5f87 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5f8a 37             scf                  	;7
	ram:5f8b 18 2b          jr l5fb8h            	;. +
sub_5f8dh:
	ram:5f8d 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5f90 18 23          jr l5fb5h            	;. #
sub_5f92h:
	ram:5f92 3a ba 80       ld a,(080bah)        	;: . .
	ram:5f95 18 1f          jr l5fb6h            	;. .
sub_5f97h:
	ram:5f97 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5f9a 18 04          jr l5fa0h            	;. .
sub_5f9ch:
	ram:5f9c 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5f9f 3c             inc a                	;<
l5fa0h:
	ram:5fa0 3c             inc a                	;<
	ram:5fa1 18 14          jr l5fb7h            	;. .
sub_5fa3h:
	ram:5fa3 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5fa6 18 0f          jr l5fb7h            	;. .
l5fa8h:
	ram:5fa8 b7             or a                 	;.
	ram:5fa9 18 01          jr l5fach            	;. .
sub_5fabh:
	ram:5fab 37             scf                  	;7
l5fach:
	ram:5fac 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5faf 18 07          jr l5fb8h            	;. .
sub_5fb1h:
	ram:5fb1 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5fb4 3d             dec a                	;=
l5fb5h:
	ram:5fb5 3d             dec a                	;=
l5fb6h:
	ram:5fb6 3d             dec a                	;=
l5fb7h:
	ram:5fb7 b7             or a                 	;.
l5fb8h:
	ram:5fb8 4f             ld c,a               	;O
	ram:5fb9 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5fbc 18 61          jr l601fh            	;. a
	ram:5fbe 3a ba 80       ld a,(080bah)        	;: . .
	ram:5fc1 37             scf                  	;7
	ram:5fc2 18 19          jr l5fddh            	;. .
	ram:5fc4 3a ba 80       ld a,(080bah)        	;: . .
	ram:5fc7 18 13          jr l5fdch            	;. .
sub_5fc9h:
	ram:5fc9 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5fcc 18 0e          jr l5fdch            	;. .
sub_5fceh:
	ram:5fce 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5fd1 18 09          jr l5fdch            	;. .
sub_5fd3h:
	ram:5fd3 3a b4 80       ld a,(080b4h)        	;: . .
	ram:5fd6 18 04          jr l5fdch            	;. .
sub_5fd8h:
	ram:5fd8 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5fdb 3d             dec a                	;=
l5fdch:
	ram:5fdc b7             or a                 	;.
l5fddh:
	ram:5fdd 4f             ld c,a               	;O
	ram:5fde 18 3f          jr l601fh            	;. ?
sub_5fe0h:
	ram:5fe0 3a b5 80       ld a,(080b5h)        	;: . .
	ram:5fe3 18 22          jr l6007h            	;. "
sub_5fe5h:
	ram:5fe5 b7             or a                 	;.
	ram:5fe6 18 04          jr l5fech            	;. .
sub_5fe8h:
	ram:5fe8 b7             or a                 	;.
	ram:5fe9 18 07          jr l5ff2h            	;. .
sub_5febh:
	ram:5feb 37             scf                  	;7
l5fech:
	ram:5fec 3a b0 80       ld a,(080b0h)        	;: . .
	ram:5fef 18 17          jr l6008h            	;. .
sub_5ff1h:
	ram:5ff1 37             scf                  	;7
l5ff2h:
	ram:5ff2 3a ae 80       ld a,(080aeh)        	;: . .
	ram:5ff5 18 11          jr l6008h            	;. .
sub_5ff7h:
	ram:5ff7 3a bb 80       ld a,(080bbh)        	;: . .
	ram:5ffa 3d             dec a                	;=
	ram:5ffb 18 0a          jr l6007h            	;. .
sub_5ffdh:
	ram:5ffd 3a ae 80       ld a,(080aeh)        	;: . .
	ram:6000 18 04          jr l6006h            	;. .
sub_6002h:
	ram:6002 3a ae 80       ld a,(080aeh)        	;: . .
	ram:6005 3c             inc a                	;<
l6006h:
	ram:6006 3c             inc a                	;<
l6007h:
	ram:6007 b7             or a                 	;.
l6008h:
	ram:6008 47             ld b,a               	;G
	ram:6009 3a ba 80       ld a,(080bah)        	;: . .
	ram:600c 4f             ld c,a               	;O
	ram:600d 18 11          jr l6020h            	;. .
sub_600fh:
	ram:600f 3a ae 80       ld a,(080aeh)        	;: . .
	ram:6012 18 08          jr l601ch            	;. .
sub_6014h:
	ram:6014 3a bb 80       ld a,(080bbh)        	;: . .
	ram:6017 18 03          jr l601ch            	;. .
sub_6019h:
	ram:6019 3a b0 80       ld a,(080b0h)        	;: . .
l601ch:
	ram:601c 4f             ld c,a               	;O
	ram:601d 0d             dec c                	;.
	ram:601e b7             or a                 	;.
l601fh:
	ram:601f 47             ld b,a               	;G
l6020h:
	ram:6020 c5             push bc              	;.
	ram:6021 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:6025 30 04          jr nc,l602bh         	;0 .
	ram:6027 ed 5b ca 80    ld de,(080cah)       	;. [ . .
l602bh:
	ram:602b cd 78 26       call 02678h          	;. x &
	ram:602e f5             push af              	;.
	ram:602f c4 66 1f       call nz,01f66h       	;. f .
	ram:6032 f1             pop af               	;.
	ram:6033 cc 58 1f       call z,01f58h        	;. X .
	ram:6036 c1             pop bc               	;.
	ram:6037 cd ab 38       call 038abh          	;. . 8
	ram:603a c9             ret                  	;.
sub_603bh:
	ram:603b 3a bb 80       ld a,(080bbh)        	;: . .
l603eh:
	ram:603e 4f             ld c,a               	;O
	ram:603f 3a ba 80       ld a,(080bah)        	;: . .
	ram:6042 37             scf                  	;7
	ram:6043 18 da          jr l601fh            	;. .
sub_6045h:
	ram:6045 3a bb 80       ld a,(080bbh)        	;: . .
	ram:6048 3c             inc a                	;<
	ram:6049 18 f3          jr l603eh            	;. .
sub_604bh:
	ram:604b 3a b5 80       ld a,(080b5h)        	;: . .
	ram:604e 18 09          jr l6059h            	;. .
sub_6050h:
	ram:6050 3a bb 80       ld a,(080bbh)        	;: . .
	ram:6053 3c             inc a                	;<
	ram:6054 18 03          jr l6059h            	;. .
sub_6056h:
	ram:6056 3a ba 80       ld a,(080bah)        	;: . .
l6059h:
	ram:6059 47             ld b,a               	;G
	ram:605a 3a b4 80       ld a,(080b4h)        	;: . .
l605dh:
	ram:605d 4f             ld c,a               	;O
	ram:605e b7             or a                 	;.
	ram:605f 18 bf          jr l6020h            	;. .
sub_6061h:
	ram:6061 3a ba 80       ld a,(080bah)        	;: . .
	ram:6064 18 08          jr l606eh            	;. .
sub_6066h:
	ram:6066 3a b5 80       ld a,(080b5h)        	;: . .
	ram:6069 18 03          jr l606eh            	;. .
sub_606bh:
	ram:606b 3a b4 80       ld a,(080b4h)        	;: . .
l606eh:
	ram:606e 47             ld b,a               	;G
	ram:606f 3a bb 80       ld a,(080bbh)        	;: . .
	ram:6072 18 e9          jr l605dh            	;. .
sub_6074h:
	ram:6074 3a b4 80       ld a,(080b4h)        	;: . .
	ram:6077 18 09          jr l6082h            	;. .
sub_6079h:
	ram:6079 3a bb 80       ld a,(080bbh)        	;: . .
	ram:607c 3c             inc a                	;<
	ram:607d 18 03          jr l6082h            	;. .
l607fh:
	ram:607f 3a ba 80       ld a,(080bah)        	;: . .
l6082h:
	ram:6082 47             ld b,a               	;G
	ram:6083 3a b5 80       ld a,(080b5h)        	;: . .
	ram:6086 18 d5          jr l605dh            	;. .
sub_6088h:
	ram:6088 3a ba 80       ld a,(080bah)        	;: . .
	ram:608b 47             ld b,a               	;G
	ram:608c 3a b0 80       ld a,(080b0h)        	;: . .
	ram:608f 18 cc          jr l605dh            	;. .
sub_6091h:
	ram:6091 3a ba 80       ld a,(080bah)        	;: . .
l6094h:
	ram:6094 4f             ld c,a               	;O
	ram:6095 3a bb 80       ld a,(080bbh)        	;: . .
l6098h:
	ram:6098 47             ld b,a               	;G
l6099h:
	ram:6099 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:609d cd 9f 38       call 0389fh          	;. . 8
	ram:60a0 c9             ret                  	;.
sub_60a1h:
	ram:60a1 3a b5 80       ld a,(080b5h)        	;: . .
	ram:60a4 18 ee          jr l6094h            	;. .
sub_60a6h:
	ram:60a6 3a ae 80       ld a,(080aeh)        	;: . .
	ram:60a9 18 e9          jr l6094h            	;. .
sub_60abh:
	ram:60ab 3a b4 80       ld a,(080b4h)        	;: . .
	ram:60ae 18 e4          jr l6094h            	;. .
sub_60b0h:
	ram:60b0 2a b4 80       ld hl,(080b4h)       	;* . .
	ram:60b3 45             ld b,l               	;E
	ram:60b4 4c             ld c,h               	;L
	ram:60b5 18 e2          jr l6099h            	;. .
	ram:60b7 ed 4b b3 80    ld bc,(080b3h)       	;. K . .
	ram:60bb 18 dc          jr l6099h            	;. .
sub_60bdh:
	ram:60bd ed 4b b4 80    ld bc,(080b4h)       	;. K . .
	ram:60c1 18 d6          jr l6099h            	;. .
sub_60c3h:
	ram:60c3 3a bb 80       ld a,(080bbh)        	;: . .
	ram:60c6 4f             ld c,a               	;O
	ram:60c7 3a b5 80       ld a,(080b5h)        	;: . .
	ram:60ca 18 cc          jr l6098h            	;. .
sub_60cch:
	ram:60cc 3a b0 80       ld a,(080b0h)        	;: . .
	ram:60cf 4f             ld c,a               	;O
	ram:60d0 3c             inc a                	;<
	ram:60d1 18 c5          jr l6098h            	;. .
sub_60d3h:
	ram:60d3 3a b0 80       ld a,(080b0h)        	;: . .
	ram:60d6 3d             dec a                	;=
	ram:60d7 4f             ld c,a               	;O
	ram:60d8 3a ba 80       ld a,(080bah)        	;: . .
	ram:60db 18 bb          jr l6098h            	;. .
sub_60ddh:
	ram:60dd 11 8d 80       ld de,0808dh         	;. . .
	ram:60e0 18 0b          jr l60edh            	;. .
sub_60e2h:
	ram:60e2 11 b9 80       ld de,080b9h         	;. . .
	ram:60e5 18 06          jr l60edh            	;. .
sub_60e7h:
	ram:60e7 cd 3e 61       call sub_613eh       	;. > a
sub_60eah:
	ram:60ea 11 82 80       ld de,08082h         	;. . .
l60edh:
	ram:60ed 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:60f0 c3 49 2f       jp 02f49h            	;. I /
sub_60f3h:
	ram:60f3 11 98 80       ld de,08098h         	;. . .
	ram:60f6 18 08          jr l6100h            	;. .
sub_60f8h:
	ram:60f8 11 8d 80       ld de,0808dh         	;. . .
	ram:60fb 18 03          jr l6100h            	;. .
sub_60fdh:
	ram:60fd 11 82 80       ld de,08082h         	;. . .
l6100h:
	ram:6100 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:6103 c3 58 2f       jp 02f58h            	;. X /
sub_6106h:
	ram:6106 11 98 80       ld de,08098h         	;. . .
	ram:6109 18 0b          jr l6116h            	;. .
sub_610bh:
	ram:610b 11 8d 80       ld de,0808dh         	;. . .
	ram:610e 18 06          jr l6116h            	;. .
sub_6110h:
	ram:6110 cd f8 60       call sub_60f8h       	;. . `
sub_6113h:
	ram:6113 11 82 80       ld de,08082h         	;. . .
l6116h:
	ram:6116 0e 28          ld c,028h            	;. (
l6118h:
	ram:6118 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:611b c3 2c 2f       jp 02f2ch            	;. , /
sub_611eh:
	ram:611e 11 98 80       ld de,08098h         	;. . .
	ram:6121 18 08          jr l612bh            	;. .
sub_6123h:
	ram:6123 11 8d 80       ld de,0808dh         	;. . .
	ram:6126 18 03          jr l612bh            	;. .
sub_6128h:
	ram:6128 11 82 80       ld de,08082h         	;. . .
l612bh:
	ram:612b 0e 32          ld c,032h            	;. 2
	ram:612d 18 e9          jr l6118h            	;. .
sub_612fh:
	ram:612f 11 8d 80       ld de,0808dh         	;. . .
	ram:6132 18 06          jr l613ah            	;. .
sub_6134h:
	ram:6134 cd 23 61       call sub_6123h       	;. # a
sub_6137h:
	ram:6137 11 82 80       ld de,08082h         	;. . .
l613ah:
	ram:613a 0e 3c          ld c,03ch            	;. <
	ram:613c 18 da          jr l6118h            	;. .
sub_613eh:
	ram:613e 11 8d 80       ld de,0808dh         	;. . .
	ram:6141 18 03          jr l6146h            	;. .
sub_6143h:
	ram:6143 11 82 80       ld de,08082h         	;. . .
l6146h:
	ram:6146 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:6149 c3 2a 2f       jp 02f2ah            	;. * /
sub_614ch:
	ram:614c 11 8d 80       ld de,0808dh         	;. . .
	ram:614f 18 03          jr sub_6154h         	;. .
sub_6151h:
	ram:6151 11 82 80       ld de,08082h         	;. . .
sub_6154h:
	ram:6154 0e 46          ld c,046h            	;. F
	ram:6156 18 c0          jr l6118h            	;. .
sub_6158h:
	ram:6158 11 8d 80       ld de,0808dh         	;. . .
	ram:615b 18 03          jr l6160h            	;. .
sub_615dh:
	ram:615d 11 82 80       ld de,08082h         	;. . .
l6160h:
	ram:6160 0e 50          ld c,050h            	;. P
	ram:6162 18 b4          jr l6118h            	;. .
sub_6164h:
	ram:6164 11 8d 80       ld de,0808dh         	;. . .
	ram:6167 18 03          jr l616ch            	;. .
sub_6169h:
	ram:6169 11 82 80       ld de,08082h         	;. . .
l616ch:
	ram:616c 0e 5a          ld c,05ah            	;. Z
	ram:616e 18 a8          jr l6118h            	;. .
sub_6170h:
	ram:6170 11 82 80       ld de,08082h         	;. . .
	ram:6173 18 03          jr l6178h            	;. .
sub_6175h:
	ram:6175 11 8d 80       ld de,0808dh         	;. . .
l6178h:
	ram:6178 0e 64          ld c,064h            	;. d
	ram:617a 18 9c          jr l6118h            	;. .
sub_617ch:
	ram:617c 11 98 80       ld de,08098h         	;. . .
	ram:617f 18 08          jr l6189h            	;. .
sub_6181h:
	ram:6181 11 8d 80       ld de,0808dh         	;. . .
	ram:6184 18 03          jr l6189h            	;. .
sub_6186h:
	ram:6186 11 82 80       ld de,08082h         	;. . .
l6189h:
	ram:6189 0e 6e          ld c,06eh            	;. n
l618bh:
	ram:618b 18 8b          jr l6118h            	;. .
sub_618dh:
	ram:618d 11 8d 80       ld de,0808dh         	;. . .
	ram:6190 18 03          jr l6195h            	;. .
sub_6192h:
	ram:6192 11 82 80       ld de,08082h         	;. . .
l6195h:
	ram:6195 0e 78          ld c,078h            	;. x
	ram:6197 18 f2          jr l618bh            	;. .
sub_6199h:
	ram:6199 11 8d 80       ld de,0808dh         	;. . .
	ram:619c 18 03          jr l61a1h            	;. .
sub_619eh:
	ram:619e 11 82 80       ld de,08082h         	;. . .
l61a1h:
	ram:61a1 0e 82          ld c,082h            	;. .
	ram:61a3 18 e6          jr l618bh            	;. .
sub_61a5h:
	ram:61a5 11 8d 80       ld de,0808dh         	;. . .
	ram:61a8 18 03          jr l61adh            	;. .
sub_61aah:
	ram:61aa 11 82 80       ld de,08082h         	;. . .
l61adh:
	ram:61ad 0e 8c          ld c,08ch            	;. .
	ram:61af 18 da          jr l618bh            	;. .
sub_61b1h:
	ram:61b1 11 82 80       ld de,08082h         	;. . .
	ram:61b4 0e 96          ld c,096h            	;. .
	ram:61b6 18 d3          jr l618bh            	;. .
sub_61b8h:
	ram:61b8 11 82 80       ld de,08082h         	;. . .
	ram:61bb 0e aa          ld c,0aah            	;. .
	ram:61bd 18 cc          jr l618bh            	;. .
sub_61bfh:
	ram:61bf 11 82 80       ld de,08082h         	;. . .
	ram:61c2 0e b4          ld c,0b4h            	;. .
	ram:61c4 18 c5          jr l618bh            	;. .
	ram:61c6 11 82 80       ld de,08082h         	;. . .
	ram:61c9 0e be          ld c,0beh            	;. .
	ram:61cb 18 be          jr l618bh            	;. .
	ram:61cd 11 82 80       ld de,08082h         	;. . .
	ram:61d0 0e c8          ld c,0c8h            	;. .
	ram:61d2 18 b7          jr l618bh            	;. .
sub_61d4h:
	ram:61d4 11 82 80       ld de,08082h         	;. . .
l61d7h:
	ram:61d7 0e a0          ld c,0a0h            	;. .
	ram:61d9 18 b0          jr l618bh            	;. .
sub_61dbh:
	ram:61db 11 8d 80       ld de,0808dh         	;. . .
	ram:61de 18 f7          jr l61d7h            	;. .
sub_61e0h:
	ram:61e0 11 8d 80       ld de,0808dh         	;. . .
	ram:61e3 18 03          jr l61e8h            	;. .
sub_61e5h:
	ram:61e5 11 82 80       ld de,08082h         	;. . .
l61e8h:
	ram:61e8 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:61eb c3 71 2f       jp 02f71h            	;. q /
sub_61eeh:
	ram:61ee cd e0 61       call sub_61e0h       	;. . a
sub_61f1h:
	ram:61f1 0e 14          ld c,014h            	;. .
l61f3h:
	ram:61f3 11 82 80       ld de,08082h         	;. . .
l61f6h:
	ram:61f6 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:61f9 c3 73 2f       jp 02f73h            	;. s /
	ram:61fc 11 98 80       ld de,08098h         	;. . .
l61ffh:
	ram:61ff 0e 14          ld c,014h            	;. .
	ram:6201 18 f3          jr l61f6h            	;. .
sub_6203h:
	ram:6203 11 b9 80       ld de,080b9h         	;. . .
	ram:6206 18 f7          jr l61ffh            	;. .
sub_6208h:
	ram:6208 0e 1e          ld c,01eh            	;. .
	ram:620a 18 e7          jr l61f3h            	;. .
sub_620ch:
	ram:620c cd 16 62       call sub_6216h       	;. . b
sub_620fh:
	ram:620f 0e 1e          ld c,01eh            	;. .
sub_6211h:
	ram:6211 11 8d 80       ld de,0808dh         	;. . .
	ram:6214 18 e0          jr l61f6h            	;. .
sub_6216h:
	ram:6216 0e 28          ld c,028h            	;. (
	ram:6218 18 d9          jr l61f3h            	;. .
sub_621ah:
	ram:621a 0e 28          ld c,028h            	;. (
	ram:621c cd 11 62       call sub_6211h       	;. . b
sub_621fh:
	ram:621f 0e 32          ld c,032h            	;. 2
	ram:6221 18 d0          jr l61f3h            	;. .
sub_6223h:
	ram:6223 0e 32          ld c,032h            	;. 2
	ram:6225 cd 11 62       call sub_6211h       	;. . b
sub_6228h:
	ram:6228 0e 3c          ld c,03ch            	;. <
	ram:622a 18 c7          jr l61f3h            	;. .
sub_622ch:
	ram:622c 0e 46          ld c,046h            	;. F
	ram:622e 18 c3          jr l61f3h            	;. .
sub_6230h:
	ram:6230 0e 50          ld c,050h            	;. P
	ram:6232 18 bf          jr l61f3h            	;. .
	ram:6234 0e 14          ld c,014h            	;. .
	ram:6236 18 d9          jr sub_6211h         	;. .
	ram:6238 0e 28          ld c,028h            	;. (
	ram:623a 18 d5          jr sub_6211h         	;. .
sub_623ch:
	ram:623c 0e 32          ld c,032h            	;. 2
	ram:623e 18 d1          jr sub_6211h         	;. .
sub_6240h:
	ram:6240 0e 3c          ld c,03ch            	;. <
	ram:6242 18 cd          jr sub_6211h         	;. .
sub_6244h:
	ram:6244 0e 46          ld c,046h            	;. F
	ram:6246 18 c9          jr sub_6211h         	;. .
sub_6248h:
	ram:6248 0e 50          ld c,050h            	;. P
	ram:624a 18 c5          jr sub_6211h         	;. .
sub_624ch:
	ram:624c 0e 5a          ld c,05ah            	;. Z
	ram:624e 18 c1          jr sub_6211h         	;. .
sub_6250h:
	ram:6250 0e 64          ld c,064h            	;. d
	ram:6252 18 bd          jr sub_6211h         	;. .
	ram:6254 0e 6e          ld c,06eh            	;. n
	ram:6256 18 b9          jr sub_6211h         	;. .
	ram:6258 0e 78          ld c,078h            	;. x
l625ah:
	ram:625a 18 b5          jr sub_6211h         	;. .
sub_625ch:
	ram:625c 0e 5a          ld c,05ah            	;. Z
	ram:625e 18 93          jr l61f3h            	;. .
sub_6260h:
	ram:6260 0e 5a          ld c,05ah            	;. Z
	ram:6262 cd 11 62       call sub_6211h       	;. . b
sub_6265h:
	ram:6265 0e 64          ld c,064h            	;. d
	ram:6267 18 8a          jr l61f3h            	;. .
sub_6269h:
	ram:6269 0e 6e          ld c,06eh            	;. n
	ram:626b 18 86          jr l61f3h            	;. .
sub_626dh:
	ram:626d 0e 78          ld c,078h            	;. x
l626fh:
	ram:626f 18 82          jr l61f3h            	;. .
sub_6271h:
	ram:6271 0e 82          ld c,082h            	;. .
	ram:6273 18 fa          jr l626fh            	;. .
sub_6275h:
	ram:6275 0e 8c          ld c,08ch            	;. .
	ram:6277 18 e1          jr l625ah            	;. .
sub_6279h:
	ram:6279 0e 8c          ld c,08ch            	;. .
	ram:627b 18 f2          jr l626fh            	;. .
sub_627dh:
	ram:627d 0e 96          ld c,096h            	;. .
	ram:627f 18 ee          jr l626fh            	;. .
sub_6281h:
	ram:6281 0e a0          ld c,0a0h            	;. .
	ram:6283 18 ea          jr l626fh            	;. .
	ram:6285 0e a0          ld c,0a0h            	;. .
	ram:6287 18 88          jr sub_6211h         	;. .
sub_6289h:
	ram:6289 cd 64 61       call sub_6164h       	;. d a
	ram:628c 11 82 80       ld de,08082h         	;. . .
	ram:628f c3 78 61       jp l6178h            	;. x a
sub_6292h:
	ram:6292 2a ba 80       ld hl,(080bah)       	;* . .
	ram:6295 2d             dec l                	;-
	ram:6296 18 29          jr l62c1h            	;. )
	ram:6298 2a ba 80       ld hl,(080bah)       	;* . .
sub_629bh:
	ram:629b cd ab 62       call sub_62abh       	;. . b
	ram:629e eb             ex de,hl             	;.
	ram:629f c3 11 21       jp 02111h            	;. . !
sub_62a2h:
	ram:62a2 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:62a5 cd ab 62       call sub_62abh       	;. . b
	ram:62a8 c3 04 21       jp 02104h            	;. . !
sub_62abh:
	ram:62ab 26 00          ld h,000h            	;& .
	ram:62ad cd 33 1f       call 01f33h          	;. 3 .
	ram:62b0 ed 5b cc 80    ld de,(080cch)       	;. [ . .
	ram:62b4 eb             ex de,hl             	;.
	ram:62b5 b7             or a                 	;.
	ram:62b6 ed 52          sbc hl,de            	;. R
	ram:62b8 c9             ret                  	;.
sub_62b9h:
	ram:62b9 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:62bc 18 dd          jr sub_629bh         	;. .
sub_62beh:
	ram:62be 2a b5 80       ld hl,(080b5h)       	;* . .
l62c1h:
	ram:62c1 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
l62c5h:
	ram:62c5 26 00          ld h,000h            	;& .
	ram:62c7 cd 2f 39       call 0392fh          	;. / 9
	ram:62ca c9             ret                  	;.
sub_62cbh:
	ram:62cb 2a ba 80       ld hl,(080bah)       	;* . .
	ram:62ce 18 08          jr l62d8h            	;. .
sub_62d0h:
	ram:62d0 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:62d3 18 03          jr l62d8h            	;. .
sub_62d5h:
	ram:62d5 2a b0 80       ld hl,(080b0h)       	;* . .
l62d8h:
	ram:62d8 ed 5b ce 80    ld de,(080ceh)       	;. [ . .
	ram:62dc 18 e7          jr l62c5h            	;. .
sub_62deh:
	ram:62de 2a b5 80       ld hl,(080b5h)       	;* . .
l62e1h:
	ram:62e1 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
l62e5h:
	ram:62e5 cd 66 1f       call 01f66h          	;. f .
	ram:62e8 26 00          ld h,000h            	;& .
	ram:62ea cd 47 39       call 03947h          	;. G 9
	ram:62ed c9             ret                  	;.
sub_62eeh:
	ram:62ee 2a b0 80       ld hl,(080b0h)       	;* . .
	ram:62f1 18 03          jr l62f6h            	;. .
sub_62f3h:
	ram:62f3 2a bb 80       ld hl,(080bbh)       	;* . .
l62f6h:
	ram:62f6 ed 5b ce 80    ld de,(080ceh)       	;. [ . .
	ram:62fa 18 e9          jr l62e5h            	;. .
sub_62fch:
	ram:62fc 2a b4 80       ld hl,(080b4h)       	;* . .
	ram:62ff 18 e0          jr l62e1h            	;. .
sub_6301h:
	ram:6301 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:6304 18 db          jr l62e1h            	;. .
	ram:6306 2a ba 80       ld hl,(080bah)       	;* . .
	ram:6309 18 b6          jr l62c1h            	;. .
sub_630bh:
	ram:630b 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:630e 18 b1          jr l62c1h            	;. .
sub_6310h:
	ram:6310 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:6313 2d             dec l                	;-
	ram:6314 18 ab          jr l62c1h            	;. .
sub_6316h:
	ram:6316 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:6319 2d             dec l                	;-
	ram:631a 18 c5          jr l62e1h            	;. .
sub_631ch:
	ram:631c 11 02 00       ld de,00002h         	;. . .
	ram:631f 18 04          jr l6325h            	;. .
sub_6321h:
	ram:6321 ed 5b ae 80    ld de,(080aeh)       	;. [ . .
l6325h:
	ram:6325 cd d1 23       call 023d1h          	;. . #
	ram:6328 c8             ret z                	;.
	ram:6329 cd 8b 26       call 0268bh          	;. . &
	ram:632c 22 83 80       ld (08083h),hl       	;" . .
	ram:632f c9             ret                  	;.
sub_6330h:
	ram:6330 cd d6 23       call 023d6h          	;. . #
	ram:6333 c8             ret z                	;.
	ram:6334 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:6337 ed 5b ae 80    ld de,(080aeh)       	;. [ . .
	ram:633b ed 52          sbc hl,de            	;. R
	ram:633d 22 8e 80       ld (0808eh),hl       	;" . .
	ram:6340 c9             ret                  	;.
sub_6341h:
	ram:6341 cd d1 23       call 023d1h          	;. . #
	ram:6344 c8             ret z                	;.
	ram:6345 2a 83 80       ld hl,(08083h)       	;* . .
	ram:6348 ed 5b ae 80    ld de,(080aeh)       	;. [ . .
	ram:634c 19             add hl,de            	;.
	ram:634d 22 83 80       ld (08083h),hl       	;" . .
	ram:6350 c9             ret                  	;.
sub_6351h:
	ram:6351 cd d6 23       call 023d6h          	;. . #
	ram:6354 c8             ret z                	;.
	ram:6355 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:6358 ed 5b ae 80    ld de,(080aeh)       	;. [ . .
	ram:635c 19             add hl,de            	;.
	ram:635d 22 8e 80       ld (0808eh),hl       	;" . .
	ram:6360 c9             ret                  	;.
sub_6361h:
	ram:6361 cd 66 63       call sub_6366h       	;. f c
	ram:6364 77             ld (hl),a            	;w
	ram:6365 c9             ret                  	;.
sub_6366h:
	ram:6366 2a ce 80       ld hl,(080ceh)       	;* . .
	ram:6369 ed 4b b0 80    ld bc,(080b0h)       	;. K . .
	ram:636d 06 00          ld b,000h            	;. .
	ram:636f 09             add hl,bc            	;.
	ram:6370 23             inc hl               	;#
	ram:6371 23             inc hl               	;#
	ram:6372 c9             ret                  	;.
sub_6373h:
	ram:6373 cd 66 63       call sub_6366h       	;. f c
	ram:6376 7e             ld a,(hl)            	;~
	ram:6377 c9             ret                  	;.
sub_6378h:
	ram:6378 3e 06          ld a,006h            	;> .
sub_637ah:
	ram:637a ed 53 1e 83    ld (0831eh),de       	;. S . .
	ram:637e 11 20 83       ld de,08320h         	;.   .
	ram:6381 cd 11 21       call 02111h          	;. . !
	ram:6384 21 0c 00       ld hl,0000ch         	;! . .
	ram:6387 18 02          jr l638bh            	;. .
sub_6389h:
	ram:6389 3e 06          ld a,006h            	;> .
l638bh:
	ram:638b 11 1e 83       ld de,0831eh         	;. . .
	ram:638e eb             ex de,hl             	;.
	ram:638f 18 16          jr l63a7h            	;. .
sub_6391h:
	ram:6391 11 01 00       ld de,00001h         	;. . .
sub_6394h:
	ram:6394 21 1d 83       ld hl,0831dh         	;! . .
	ram:6397 77             ld (hl),a            	;w
	ram:6398 3e 36          ld a,036h            	;> 6
	ram:639a 18 0b          jr l63a7h            	;. .
sub_639ch:
	ram:639c cd 08 65       call sub_6508h       	;. . e
	ram:639f 11 00 04       ld de,00400h         	;. . .
	ram:63a2 21 00 fc       ld hl,0fc00h         	;! . .
sub_63a5h:
	ram:63a5 3e 15          ld a,015h            	;> .
l63a7h:
	ram:63a7 22 ce 80       ld (080ceh),hl       	;" . .
	ram:63aa ed 53 17 83    ld (08317h),de       	;. S . .
	ram:63ae 67             ld h,a               	;g
	ram:63af fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:63b3 2e 85          ld l,085h            	;. .
	ram:63b5 22 15 83       ld (08315h),hl       	;" . .
	ram:63b8 cd 1d 64       call sub_641dh       	;. . d
	ram:63bb ed 5b 17 83    ld de,(08317h)       	;. [ . .
	ram:63bf 2a ce 80       ld hl,(080ceh)       	;* . .
	ram:63c2 01 00 00       ld bc,00000h         	;. . .
	ram:63c5 ed 43 19 83    ld (08319h),bc       	;. C . .
	ram:63c9 18 16          jr l63e1h            	;. .
l63cbh:
	ram:63cb cd a3 26       call 026a3h          	;. . &
	ram:63ce d5             push de              	;.
	ram:63cf 4e             ld c,(hl)            	;N
	ram:63d0 06 00          ld b,000h            	;. .
	ram:63d2 eb             ex de,hl             	;.
	ram:63d3 2a 19 83       ld hl,(08319h)       	;* . .
	ram:63d6 09             add hl,bc            	;.
	ram:63d7 22 19 83       ld (08319h),hl       	;" . .
	ram:63da eb             ex de,hl             	;.
	ram:63db cd 4d 64       call sub_644dh       	;. M d
	ram:63de d1             pop de               	;.
	ram:63df 1b             dec de               	;.
	ram:63e0 23             inc hl               	;#
l63e1h:
	ram:63e1 7a             ld a,d               	;z
	ram:63e2 b3             or e                 	;.
	ram:63e3 20 e6          jr nz,l63cbh         	;.
	ram:63e5 2a 19 83       ld hl,(08319h)       	;* . .
	ram:63e8 7d             ld a,l               	;}
	ram:63e9 e5             push hl              	;.
	ram:63ea cd 4c 64       call sub_644ch       	;. L d
	ram:63ed f1             pop af               	;.
	ram:63ee cd 4c 64       call sub_644ch       	;. L d
l63f1h:
	ram:63f1 cd 1d 65       call sub_651dh       	;. . e
	ram:63f4 cd 25 65       call sub_6525h       	;. % e
	ram:63f7 3a 16 83       ld a,(08316h)        	;: . .
	ram:63fa f5             push af              	;.
	ram:63fb 3a 15 83       ld a,(08315h)        	;: . .
	ram:63fe cd 14 65       call sub_6514h       	;. . e
	ram:6401 47             ld b,a               	;G
	ram:6402 f1             pop af               	;.
	ram:6403 fe 56          cp 056h              	;. V
	ram:6405 c8             ret z                	;.
l6406h:
	ram:6406 c3 87 0a       jp 00a87h            	;. . .
sub_6409h:
	ram:6409 26 92          ld h,092h            	;& .
	ram:640b 18 02          jr l640fh            	;. .
sub_640dh:
	ram:640d 26 09          ld h,009h            	;& .
l640fh:
	ram:640f fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:6413 2e 85          ld l,085h            	;. .
	ram:6415 22 15 83       ld (08315h),hl       	;" . .
	ram:6418 cd 1d 64       call sub_641dh       	;. . d
	ram:641b 18 d4          jr l63f1h            	;. .
sub_641dh:
	ram:641d 21 fa 00       ld hl,000fah         	;! . .
l6420h:
	ram:6420 2b             dec hl               	;+
	ram:6421 7c             ld a,h               	;|
	ram:6422 b5             or l                 	;.
	ram:6423 20 fb          jr nz,l6420h         	;.
	ram:6425 3e c0          ld a,0c0h            	;> .
	ram:6427 d3 07          out (007h),a         	;. .
	ram:6429 db 07          in a,(007h)          	;. .
	ram:642b e6 03          and 003h             	;. .
	ram:642d fe 03          cp 003h              	;. .
	ram:642f 20 d5          jr nz,l6406h         	;.
	ram:6431 21 00 00       ld hl,00000h         	;! . .
	ram:6434 22 19 83       ld (08319h),hl       	;" . .
	ram:6437 3a 15 83       ld a,(08315h)        	;: . .
	ram:643a cd 4c 64       call sub_644ch       	;. L d
	ram:643d 3a 16 83       ld a,(08316h)        	;: . .
	ram:6440 cd 4c 64       call sub_644ch       	;. L d
	ram:6443 3a 17 83       ld a,(08317h)        	;: . .
	ram:6446 cd 4c 64       call sub_644ch       	;. L d
	ram:6449 3a 18 83       ld a,(08318h)        	;: . .
sub_644ch:
	ram:644c 4f             ld c,a               	;O
sub_644dh:
	ram:644d 06 08          ld b,008h            	;. .
l644fh:
	ram:644f 11 ff ff       ld de,0ffffh         	;. . .
	ram:6452 cb 19          rr c                 	;. .
	ram:6454 30 05          jr nc,l645bh         	;0 .
	ram:6456 3e e8          ld a,0e8h            	;> .
	ram:6458 c3 5d 64       jp l645dh            	;. ] d
l645bh:
	ram:645b 3e d4          ld a,0d4h            	;> .
l645dh:
	ram:645d d3 07          out (007h),a         	;. .
l645fh:
	ram:645f db 07          in a,(007h)          	;. .
	ram:6461 e6 03          and 003h             	;. .
	ram:6463 ca 76 64       jp z,l6476h          	;. v d
	ram:6466 db 07          in a,(007h)          	;. .
	ram:6468 e6 03          and 003h             	;. .
	ram:646a ca 76 64       jp z,l6476h          	;. v d
	ram:646d 1b             dec de               	;.
	ram:646e 7a             ld a,d               	;z
	ram:646f b3             or e                 	;.
	ram:6470 c2 5f 64       jp nz,l645fh         	;. _ d
l6473h:
	ram:6473 c3 87 0a       jp 00a87h            	;. . .
l6476h:
	ram:6476 3e c0          ld a,0c0h            	;> .
	ram:6478 d3 07          out (007h),a         	;. .
	ram:647a 11 ff ff       ld de,0ffffh         	;. . .
l647dh:
	ram:647d 1b             dec de               	;.
	ram:647e 7a             ld a,d               	;z
	ram:647f b3             or e                 	;.
	ram:6480 28 f1          jr z,l6473h          	;( .
	ram:6482 db 07          in a,(007h)          	;. .
	ram:6484 e6 03          and 003h             	;. .
	ram:6486 fe 03          cp 003h              	;. .
	ram:6488 c2 7d 64       jp nz,l647dh         	;. } d
	ram:648b 10 c2          djnz l644fh          	;. .
	ram:648d c9             ret                  	;.
sub_648eh:
	ram:648e 21 1e 83       ld hl,0831eh         	;! . .
	ram:6491 22 ce 80       ld (080ceh),hl       	;" . .
	ram:6494 18 23          jr l64b9h            	;. #
sub_6496h:
	ram:6496 ed 53 ce 80    ld (080ceh),de       	;. S . .
	ram:649a c5             push bc              	;.
	ram:649b cd 25 65       call sub_6525h       	;. % e
	ram:649e c1             pop bc               	;.
	ram:649f 21 c5 80       ld hl,080c5h         	;! . .
	ram:64a2 3a 16 83       ld a,(08316h)        	;: . .
	ram:64a5 fe 15          cp 015h              	;. .
	ram:64a7 20 ca          jr nz,l6473h         	;.
	ram:64a9 2a 17 83       ld hl,(08317h)       	;* . .
	ram:64ac b7             or a                 	;.
	ram:64ad ed 42          sbc hl,bc            	;. B
	ram:64af 20 c2          jr nz,l6473h         	;.
	ram:64b1 18 06          jr l64b9h            	;. .
sub_64b3h:
	ram:64b3 21 1d 83       ld hl,0831dh         	;! . .
	ram:64b6 22 ce 80       ld (080ceh),hl       	;" . .
l64b9h:
	ram:64b9 ed 4b 17 83    ld bc,(08317h)       	;. K . .
	ram:64bd 11 00 00       ld de,00000h         	;. . .
	ram:64c0 ed 53 19 83    ld (08319h),de       	;. S . .
	ram:64c4 79             ld a,c               	;y
	ram:64c5 b0             or b                 	;.
	ram:64c6 28 23          jr z,l64ebh          	;( #
	ram:64c8 2a ce 80       ld hl,(080ceh)       	;* . .
l64cbh:
	ram:64cb cd a3 26       call 026a3h          	;. . &
	ram:64ce 28 03          jr z,l64d3h          	;( .
l64d0h:
	ram:64d0 c3 87 0a       jp 00a87h            	;. . .
l64d3h:
	ram:64d3 c5             push bc              	;.
	ram:64d4 cd 70 65       call sub_6570h       	;. p e
	ram:64d7 77             ld (hl),a            	;w
	ram:64d8 23             inc hl               	;#
	ram:64d9 eb             ex de,hl             	;.
	ram:64da 06 00          ld b,000h            	;. .
	ram:64dc 2a 19 83       ld hl,(08319h)       	;* . .
	ram:64df 09             add hl,bc            	;.
	ram:64e0 22 19 83       ld (08319h),hl       	;" . .
	ram:64e3 eb             ex de,hl             	;.
	ram:64e4 c1             pop bc               	;.
	ram:64e5 0b             dec bc               	;.
	ram:64e6 78             ld a,b               	;x
	ram:64e7 b1             or c                 	;.
	ram:64e8 c2 cb 64       jp nz,l64cbh         	;. . d
l64ebh:
	ram:64eb cd 70 65       call sub_6570h       	;. p e
	ram:64ee f5             push af              	;.
	ram:64ef cd 70 65       call sub_6570h       	;. p e
	ram:64f2 47             ld b,a               	;G
	ram:64f3 f1             pop af               	;.
	ram:64f4 4f             ld c,a               	;O
	ram:64f5 2a 19 83       ld hl,(08319h)       	;* . .
	ram:64f8 b7             or a                 	;.
	ram:64f9 ed 42          sbc hl,bc            	;. B
	ram:64fb 28 0b          jr z,sub_6508h       	;( .
	ram:64fd 2a 17 83       ld hl,(08317h)       	;* . .
	ram:6500 e5             push hl              	;.
	ram:6501 26 5a          ld h,05ah            	;& Z
	ram:6503 cd 0f 64       call l640fh          	;. . d
l6506h:
	ram:6506 18 c8          jr l64d0h            	;. .
sub_6508h:
	ram:6508 cd 1d 65       call sub_651dh       	;. . e
	ram:650b 21 85 56       ld hl,05685h         	;! . V
	ram:650e 22 15 83       ld (08315h),hl       	;" . .
	ram:6511 cd 1d 64       call sub_641dh       	;. . d
sub_6514h:
	ram:6514 21 2a 83       ld hl,0832ah         	;! * .
	ram:6517 11 15 83       ld de,08315h         	;. . .
l651ah:
	ram:651a c3 9f 20       jp 0209fh            	;. .  
sub_651dh:
	ram:651d 21 15 83       ld hl,08315h         	;! . .
	ram:6520 11 2a 83       ld de,0832ah         	;. * .
	ram:6523 18 f5          jr l651ah            	;. .
sub_6525h:
	ram:6525 cd 70 65       call sub_6570h       	;. p e
sub_6528h:
	ram:6528 32 15 83       ld (08315h),a        	;2 . .
	ram:652b fe 85          cp 085h              	;. .
	ram:652d 28 0e          jr z,l653dh          	;( .
	ram:652f fe 05          cp 005h              	;. .
	ram:6531 28 0a          jr z,l653dh          	;( .
	ram:6533 fe 15          cp 015h              	;. .
	ram:6535 28 06          jr z,l653dh          	;( .
	ram:6537 e6 e0          and 0e0h             	;. .
	ram:6539 fe 20          cp 020h              	;.  
	ram:653b 20 c9          jr nz,l6506h         	;.
l653dh:
	ram:653d cd 70 65       call sub_6570h       	;. p e
	ram:6540 32 16 83       ld (08316h),a        	;2 . .
	ram:6543 cd 70 65       call sub_6570h       	;. p e
	ram:6546 32 17 83       ld (08317h),a        	;2 . .
	ram:6549 cd 70 65       call sub_6570h       	;. p e
	ram:654c 32 18 83       ld (08318h),a        	;2 . .
	ram:654f c9             ret                  	;.
sub_6550h:
	ram:6550 cd 89 3c       call 03c89h          	;. . <
	ram:6553 fd cb 08 de    set 3,(iy+008h)      	;. . . .
	ram:6557 cd e3 6a       call sub_6ae3h       	;. . j
l655ah:
	ram:655a cd a3 26       call 026a3h          	;. . &
	ram:655d cd 0e 01       call 0010eh          	;. . .
	ram:6560 db 07          in a,(007h)          	;. .
	ram:6562 e6 03          and 003h             	;. .
	ram:6564 fe 03          cp 003h              	;. .
	ram:6566 28 f2          jr z,l655ah          	;( .
sub_6568h:
	ram:6568 fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:656c 06 08          ld b,008h            	;. .
	ram:656e 18 26          jr l6596h            	;. &
sub_6570h:
	ram:6570 06 08          ld b,008h            	;. .
l6572h:
	ram:6572 11 ff ff       ld de,0ffffh         	;. . .
	ram:6575 18 16          jr l658dh            	;. .
l6577h:
	ram:6577 db 07          in a,(007h)          	;. .
	ram:6579 e6 03          and 003h             	;. .
	ram:657b 28 65          jr z,l65e2h          	;( e
	ram:657d fe 03          cp 003h              	;. .
	ram:657f c2 96 65       jp nz,l6596h         	;. . e
	ram:6582 db 07          in a,(007h)          	;. .
	ram:6584 e6 03          and 003h             	;. .
	ram:6586 28 5a          jr z,l65e2h          	;( Z
	ram:6588 fe 03          cp 003h              	;. .
	ram:658a c2 96 65       jp nz,l6596h         	;. . e
l658dh:
	ram:658d 1b             dec de               	;.
	ram:658e 7a             ld a,d               	;z
	ram:658f b3             or e                 	;.
	ram:6590 c2 77 65       jp nz,l6577h         	;. w e
	ram:6593 c3 85 0a       jp 00a85h            	;. . .
l6596h:
	ram:6596 d6 02          sub 002h             	;. .
	ram:6598 d2 ca 65       jp nc,l65cah         	;. . e
	ram:659b 3e d4          ld a,0d4h            	;> .
	ram:659d d3 07          out (007h),a         	;. .
	ram:659f cb 19          rr c                 	;. .
	ram:65a1 11 ff ff       ld de,0ffffh         	;. . .
l65a4h:
	ram:65a4 db 07          in a,(007h)          	;. .
	ram:65a6 e6 03          and 003h             	;. .
	ram:65a8 fe 02          cp 002h              	;. .
	ram:65aa ca b5 65       jp z,l65b5h          	;. . e
	ram:65ad 1b             dec de               	;.
	ram:65ae 7a             ld a,d               	;z
	ram:65af b3             or e                 	;.
	ram:65b0 c2 a4 65       jp nz,l65a4h         	;. . e
	ram:65b3 18 2d          jr l65e2h            	;. -
l65b5h:
	ram:65b5 3e c0          ld a,0c0h            	;> .
	ram:65b7 d3 07          out (007h),a         	;. .
	ram:65b9 16 04          ld d,004h            	;. .
l65bbh:
	ram:65bb 15             dec d                	;.
	ram:65bc 28 08          jr z,l65c6h          	;( .
	ram:65be db 07          in a,(007h)          	;. .
	ram:65c0 e6 03          and 003h             	;. .
	ram:65c2 fe 03          cp 003h              	;. .
	ram:65c4 20 f5          jr nz,l65bbh         	;.
l65c6h:
	ram:65c6 10 aa          djnz l6572h          	;. .
	ram:65c8 79             ld a,c               	;y
	ram:65c9 c9             ret                  	;.
l65cah:
	ram:65ca 3e e8          ld a,0e8h            	;> .
	ram:65cc d3 07          out (007h),a         	;. .
	ram:65ce cb 19          rr c                 	;. .
	ram:65d0 11 ff ff       ld de,0ffffh         	;. . .
l65d3h:
	ram:65d3 db 07          in a,(007h)          	;. .
	ram:65d5 e6 03          and 003h             	;. .
	ram:65d7 fe 01          cp 001h              	;. .
	ram:65d9 ca b5 65       jp z,l65b5h          	;. . e
	ram:65dc 1b             dec de               	;.
	ram:65dd 7a             ld a,d               	;z
	ram:65de b3             or e                 	;.
	ram:65df c2 d3 65       jp nz,l65d3h         	;. . e
l65e2h:
	ram:65e2 18 36          jr l661ah            	;. 6
l65e4h:
	ram:65e4 21 28 72       ld hl,l7228h         	;! ( r
	ram:65e7 cd b5 0a       call 00ab5h          	;. . .
	ram:65ea fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:65ee 3e 10          ld a,010h            	;> .
	ram:65f0 32 13 83       ld (08313h),a        	;2 . .
	ram:65f3 cd ef 6b       call sub_6befh       	;. . k
	ram:65f6 fd cb 0d ce    set 1,(iy+00dh)      	;. . . .
	ram:65fa cd 8b 3d       call 03d8bh          	;. . =
	ram:65fd 21 d7 6e       ld hl,l6ed7h         	;! . n
	ram:6600 cd 52 6f       call sub_6f52h       	;. R o
	ram:6603 af             xor a                	;.
	ram:6604 32 c5 80       ld (080c5h),a        	;2 . .
	ram:6607 cd a4 72       call sub_72a4h       	;. . r
	ram:660a fe 06          cp 006h              	;. .
	ram:660c 28 0f          jr z,l661dh          	;( .
	ram:660e fe 68          cp 068h              	;. h
	ram:6610 20 08          jr nz,l661ah         	;.
	ram:6612 cd 08 65       call sub_6508h       	;. . e
	ram:6615 cd db 0a       call 00adbh          	;. . .
	ram:6618 18 ca          jr l65e4h            	;. .
l661ah:
	ram:661a c3 87 0a       jp 00a87h            	;. . .
l661dh:
	ram:661d cd 8e 64       call sub_648eh       	;. . d
	ram:6620 3a 20 83       ld a,(08320h)        	;:   .
	ram:6623 fe 1d          cp 01dh              	;. .
	ram:6625 c2 cf 66       jp nz,l66cfh         	;. . f
	ram:6628 cd db 0a       call 00adbh          	;. . .
	ram:662b cd e3 6a       call sub_6ae3h       	;. . j
	ram:662e 2a 25 83       ld hl,(08325h)       	;* % .
	ram:6631 22 9e 80       ld (0809eh),hl       	;" . .
	ram:6634 2a 1e 83       ld hl,(0831eh)       	;* . .
	ram:6637 22 98 80       ld (08098h),hl       	;" . .
	ram:663a 2a 21 83       ld hl,(08321h)       	;* ! .
	ram:663d 22 9a 80       ld (0809ah),hl       	;" . .
	ram:6640 ed 5b 23 83    ld de,(08323h)       	;. [ # .
	ram:6644 ed 53 9c 80    ld (0809ch),de       	;. S . .
	ram:6648 19             add hl,de            	;.
	ram:6649 11 79 6e       ld de,06e79h         	;. y n
	ram:664c b7             or a                 	;.
	ram:664d ed 52          sbc hl,de            	;. R
	ram:664f 28 02          jr z,l6653h          	;( .
	ram:6651 30 16          jr nc,l6669h         	;0 .
l6653h:
	ram:6653 3e 13          ld a,013h            	;> .
	ram:6655 32 13 83       ld (08313h),a        	;2 . .
	ram:6658 3e 60          ld a,060h            	;> `
	ram:665a cd a1 6c       call sub_6ca1h       	;. . l
	ram:665d 21 ed 6e       ld hl,l6eedh         	;! . n
	ram:6660 cd 52 6f       call sub_6f52h       	;. R o
	ram:6663 11 01 01       ld de,00101h         	;. . .
	ram:6666 c3 60 6f       jp l6f60h            	;. ` o
l6669h:
	ram:6669 22 1e 83       ld (0831eh),hl       	;" . .
	ram:666c 21 28 72       ld hl,l7228h         	;! ( r
	ram:666f cd b5 0a       call 00ab5h          	;. . .
	ram:6672 3e 03          ld a,003h            	;> .
	ram:6674 11 03 00       ld de,00003h         	;. . .
	ram:6677 cd 94 63       call sub_6394h       	;. . c
	ram:667a cd db 0a       call 00adbh          	;. . .
	ram:667d c3 e4 65       jp l65e4h            	;. . e
l6680h:
	ram:6680 c3 87 0a       jp 00a87h            	;. . .
l6683h:
	ram:6683 21 28 72       ld hl,l7228h         	;! ( r
	ram:6686 cd b5 0a       call 00ab5h          	;. . .
	ram:6689 3e 14          ld a,014h            	;> .
	ram:668b 32 13 83       ld (08313h),a        	;2 . .
	ram:668e cd 0d 64       call sub_640dh       	;. . d
	ram:6691 21 c5 80       ld hl,080c5h         	;! . .
	ram:6694 cb ce          set 1,(hl)           	;. .
	ram:6696 ed 4b 98 80    ld bc,(08098h)       	;. K . .
	ram:669a 11 46 83       ld de,08346h         	;. F .
	ram:669d cd 96 64       call sub_6496h       	;. . d
	ram:66a0 ed 4b 9a 80    ld bc,(0809ah)       	;. K . .
	ram:66a4 11 f7 8b       ld de,08bf7h         	;. . .
	ram:66a7 cd 96 64       call sub_6496h       	;. . d
	ram:66aa 21 6f fa       ld hl,0fa6fh         	;! o .
	ram:66ad ed 4b 9c 80    ld bc,(0809ch)       	;. K . .
	ram:66b1 b7             or a                 	;.
	ram:66b2 ed 42          sbc hl,bc            	;. B
	ram:66b4 eb             ex de,hl             	;.
	ram:66b5 13             inc de               	;.
	ram:66b6 cd 96 64       call sub_6496h       	;. . d
	ram:66b9 2a 9e 80       ld hl,(0809eh)       	;* . .
	ram:66bc 11 f7 8b       ld de,08bf7h         	;. . .
	ram:66bf b7             or a                 	;.
	ram:66c0 ed 52          sbc hl,de            	;. R
	ram:66c2 28 08          jr z,l66cch          	;( .
	ram:66c4 44             ld b,h               	;D
	ram:66c5 4d             ld c,l               	;M
	ram:66c6 11 01 00       ld de,00001h         	;. . .
	ram:66c9 cd 4c 2c       call 02c4ch          	;. L ,
l66cch:
	ram:66cc c3 9c 69       jp l699ch            	;. . i
l66cfh:
	ram:66cf fe 14          cp 014h              	;. .
	ram:66d1 28 ad          jr z,l6680h          	;( .
	ram:66d3 cd db 0a       call 00adbh          	;. . .
	ram:66d6 fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:66da 3e 11          ld a,011h            	;> .
	ram:66dc 21 13 83       ld hl,08313h         	;! . .
	ram:66df be             cp (hl)              	;.
	ram:66e0 28 11          jr z,l66f3h          	;( .
	ram:66e2 77             ld (hl),a            	;w
	ram:66e3 21 01 ff       ld hl,0ff01h         	;! . .
	ram:66e6 22 d1 81       ld (081d1h),hl       	;" . .
	ram:66e9 cd 8b 3d       call 03d8bh          	;. . =
	ram:66ec cd 4b 3e       call 03e4bh          	;. K >
	ram:66ef af             xor a                	;.
	ram:66f0 32 c5 80       ld (080c5h),a        	;2 . .
l66f3h:
	ram:66f3 21 20 83       ld hl,08320h         	;!   .
	ram:66f6 e7             rst 20h              	;.
	ram:66f7 cd 47 1f       call 01f47h          	;. G .
	ram:66fa fe 17          cp 017h              	;. .
	ram:66fc 38 38          jr c,l6736h          	;8 8
	ram:66fe fe 1b          cp 01bh              	;. .
	ram:6700 28 0e          jr z,l6710h          	;( .
	ram:6702 d2 85 0a       jp nc,00a85h         	;. . .
	ram:6705 cd b1 72       call sub_72b1h       	;. . r
	ram:6708 47             ld b,a               	;G
	ram:6709 fd 7e 02       ld a,(iy+002h)       	;. ~ .
	ram:670c a0             and b                	;.
	ram:670d c4 1b 00       call nz,0001bh       	;. . .
l6710h:
	ram:6710 cd 47 1f       call 01f47h          	;. G .
	ram:6713 cd 88 72       call sub_7288h       	;. . r
	ram:6716 cb fe          set 7,(hl)           	;. .
	ram:6718 d6 17          sub 017h             	;. .
	ram:671a cd 49 70       call sub_7049h       	;. I p
	ram:671d 22 a0 80       ld (080a0h),hl       	;" . .
	ram:6720 e5             push hl              	;.
	ram:6721 21 04 72       ld hl,l7204h         	;! . r
	ram:6724 cd b5 0a       call 00ab5h          	;. . .
	ram:6727 cd f5 1f       call 01ff5h          	;. . .
	ram:672a ed 4b 1e 83    ld bc,(0831eh)       	;. K . .
	ram:672e c5             push bc              	;.
	ram:672f ed 5b a0 80    ld de,(080a0h)       	;. [ . .
	ram:6733 c3 1a 68       jp l681ah            	;. . h
l6736h:
	ram:6736 32 a0 80       ld (080a0h),a        	;2 . .
	ram:6739 d7             rst 10h              	;.
	ram:673a 38 69          jr c,l67a5h          	;8 i
	ram:673c cd e3 6a       call sub_6ae3h       	;. . j
	ram:673f 3a a0 80       ld a,(080a0h)        	;: . .
	ram:6742 32 82 80       ld (08082h),a        	;2 . .
	ram:6745 2a 1e 83       ld hl,(0831eh)       	;* . .
	ram:6748 22 98 80       ld (08098h),hl       	;" . .
	ram:674b cd 4a 2e       call 02e4ah          	;. J .
	ram:674e cd f5 1f       call 01ff5h          	;. . .
	ram:6751 3a 13 83       ld a,(08313h)        	;: . .
	ram:6754 fe 15          cp 015h              	;. .
	ram:6756 28 12          jr z,l676ah          	;( .
	ram:6758 06 02          ld b,002h            	;. .
	ram:675a 3e 24          ld a,024h            	;> $
	ram:675c 16 61          ld d,061h            	;. a
	ram:675e cd d8 71       call sub_71d8h       	;. . q
	ram:6761 01 0f 00       ld bc,0000fh         	;. . .
	ram:6764 21 2f 6f       ld hl,l6f2fh         	;! / o
	ram:6767 c3 f1 67       jp l67f1h            	;. . g
l676ah:
	ram:676a cd 24 2f       call 02f24h          	;. $ /
	ram:676d d7             rst 10h              	;.
	ram:676e eb             ex de,hl             	;.
	ram:676f cd 3f 2d       call 02d3fh          	;. ? -
	ram:6772 2a 98 80       ld hl,(08098h)       	;* . .
	ram:6775 22 1e 83       ld (0831eh),hl       	;" . .
	ram:6778 ed 52          sbc hl,de            	;. R
	ram:677a 38 0c          jr c,l6788h          	;8 .
	ram:677c 28 0a          jr z,l6788h          	;( .
	ram:677e cd 9d 28       call 0289dh          	;. . (
	ram:6781 30 05          jr nc,l6788h         	;0 .
	ram:6783 cd 0c 2e       call 02e0ch          	;. . .
	ram:6786 18 54          jr l67dch            	;. T
l6788h:
	ram:6788 cd 68 26       call 02668h          	;. h &
	ram:678b 20 09          jr nz,l6796h         	;.
	ram:678d cd fe 1f       call 01ffeh          	;. . .
	ram:6790 cd b3 39       call 039b3h          	;. . 9
	ram:6793 cd 07 20       call 02007h          	;. .  
l6796h:
	ram:6796 cd 95 20       call 02095h          	;. .  
	ram:6799 cd 71 26       call 02671h          	;. q &
	ram:679c cd 0b 2c       call 02c0bh          	;. . ,
	ram:679f cd f4 2d       call 02df4h          	;. . -
	ram:67a2 af             xor a                	;.
	ram:67a3 18 03          jr l67a8h            	;. .
l67a5h:
	ram:67a5 cd 65 36       call 03665h          	;. e 6
l67a8h:
	ram:67a8 2a 1e 83       ld hl,(0831eh)       	;* . .
	ram:67ab 30 2a          jr nc,l67d7h         	;0 *
	ram:67ad 3a 85 80       ld a,(08085h)        	;: . .
	ram:67b0 fe 74          cp 074h              	;. t
	ram:67b2 20 23          jr nz,l67d7h         	;#
	ram:67b4 3a 83 80       ld a,(08083h)        	;: . .
	ram:67b7 c6 06          add a,006h           	;. .
	ram:67b9 5f             ld e,a               	;_
	ram:67ba 16 00          ld d,000h            	;. .
	ram:67bc 19             add hl,de            	;.
	ram:67bd cd 3f 29       call 0293fh          	;. ? )
	ram:67c0 38 1a          jr c,l67dch          	;8 .
	ram:67c2 cd 20 73       call sub_7320h       	;.   s
	ram:67c5 21 00 00       ld hl,00000h         	;! . .
	ram:67c8 cd 2f 2a       call 02a2fh          	;. / *
	ram:67cb cd 56 20       call 02056h          	;. V  
	ram:67ce cd 20 73       call sub_7320h       	;.   s
	ram:67d1 ed 4b 1e 83    ld bc,(0831eh)       	;. K . .
	ram:67d5 18 23          jr l67fah            	;. #
l67d7h:
	ram:67d7 cd 3f 29       call 0293fh          	;. ? )
	ram:67da 30 1e          jr nc,l67fah         	;0 .
l67dch:
	ram:67dc cd e3 6a       call sub_6ae3h       	;. . j
	ram:67df cd f5 1f       call 01ff5h          	;. . .
	ram:67e2 3e 22          ld a,022h            	;> "
	ram:67e4 06 03          ld b,003h            	;. .
	ram:67e6 16 63          ld d,063h            	;. c
	ram:67e8 cd d8 71       call sub_71d8h       	;. . q
	ram:67eb 01 0c 00       ld bc,0000ch         	;. . .
	ram:67ee 21 10 6f       ld hl,l6f10h         	;! . o
l67f1h:
	ram:67f1 cd 66 6f       call sub_6f66h       	;. f o
	ram:67f4 cd 9d 3d       call 03d9dh          	;. . =
	ram:67f7 c3 ce 70       jp l70ceh            	;. . p
l67fah:
	ram:67fa ed 43 a0 80    ld (080a0h),bc       	;. C . .
	ram:67fe c5             push bc              	;.
	ram:67ff 21 04 72       ld hl,l7204h         	;! . r
	ram:6802 cd b5 0a       call 00ab5h          	;. . .
	ram:6805 fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:6809 ed 4b a0 80    ld bc,(080a0h)       	;. K . .
	ram:680d c5             push bc              	;.
	ram:680e cd 62 29       call 02962h          	;. b )
	ram:6811 3a 13 83       ld a,(08313h)        	;: . .
	ram:6814 fe 15          cp 015h              	;. .
	ram:6816 28 02          jr z,l681ah          	;( .
	ram:6818 cb fe          set 7,(hl)           	;. .
l681ah:
	ram:681a d5             push de              	;.
	ram:681b cd 56 20       call 02056h          	;. V  
	ram:681e cd b8 70       call sub_70b8h       	;. . p
	ram:6821 21 c5 80       ld hl,080c5h         	;! . .
	ram:6824 cb ce          set 1,(hl)           	;. .
	ram:6826 cd 0d 64       call sub_640dh       	;. . d
	ram:6829 d1             pop de               	;.
	ram:682a c1             pop bc               	;.
	ram:682b cd 96 64       call sub_6496h       	;. . d
	ram:682e cd c1 70       call sub_70c1h       	;. . p
	ram:6831 cd 65 36       call 03665h          	;. e 6
	ram:6834 30 0b          jr nc,l6841h         	;0 .
	ram:6836 d7             rst 10h              	;.
	ram:6837 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:683b 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:683e cd 6b 36       call 0366bh          	;. k 6
l6841h:
	ram:6841 21 c5 80       ld hl,080c5h         	;! . .
	ram:6844 cb 8e          res 1,(hl)           	;. .
	ram:6846 3a 13 83       ld a,(08313h)        	;: . .
	ram:6849 fe 15          cp 015h              	;. .
	ram:684b c4 0c 70       call nz,sub_700ch    	;. . p
	ram:684e cd db 0a       call 00adbh          	;. . .
	ram:6851 c1             pop bc               	;.
	ram:6852 3a 13 83       ld a,(08313h)        	;: . .
	ram:6855 fe 15          cp 015h              	;. .
	ram:6857 ca e3 6a       jp z,sub_6ae3h       	;. . j
l685ah:
	ram:685a 21 28 72       ld hl,l7228h         	;! ( r
	ram:685d cd b5 0a       call 00ab5h          	;. . .
	ram:6860 cd a4 72       call sub_72a4h       	;. . r
	ram:6863 fe 06          cp 006h              	;. .
	ram:6865 20 09          jr nz,l6870h         	;.
	ram:6867 cd 8e 64       call sub_648eh       	;. . d
	ram:686a 3a 20 83       ld a,(08320h)        	;:   .
	ram:686d c3 cf 66       jp l66cfh            	;. . f
l6870h:
	ram:6870 fe 92          cp 092h              	;. .
	ram:6872 20 75          jr nz,l68e9h         	;u
	ram:6874 cd 08 65       call sub_6508h       	;. . e
	ram:6877 cd db 0a       call 00adbh          	;. . .
l687ah:
	ram:687a cd e3 6a       call sub_6ae3h       	;. . j
	ram:687d 3a c5 80       ld a,(080c5h)        	;: . .
	ram:6880 cb 67          bit 4,a              	;. g
	ram:6882 ca 8b 6a       jp z,l6a8bh          	;. . j
	ram:6885 cb 6f          bit 5,a              	;. o
	ram:6887 ca a6 6a       jp z,l6aa6h          	;. . j
	ram:688a af             xor a                	;.
	ram:688b 32 c5 80       ld (080c5h),a        	;2 . .
	ram:688e cd c1 70       call sub_70c1h       	;. . p
	ram:6891 cd 47 1f       call 01f47h          	;. G .
	ram:6894 fe 17          cp 017h              	;. .
	ram:6896 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6899 47             ld b,a               	;G
	ram:689a 30 06          jr nc,l68a2h         	;0 .
	ram:689c 3e ff          ld a,0ffh            	;> .
	ram:689e 32 84 80       ld (08084h),a        	;2 . .
	ram:68a1 04             inc b                	;.
l68a2h:
	ram:68a2 c5             push bc              	;.
l68a3h:
	ram:68a3 cd 59 3c       call 03c59h          	;. Y <
	ram:68a6 30 06          jr nc,l68aeh         	;0 .
	ram:68a8 c1             pop bc               	;.
	ram:68a9 cd c1 70       call sub_70c1h       	;. . p
	ram:68ac 18 0a          jr l68b8h            	;. .
l68aeh:
	ram:68ae cb 7e          bit 7,(hl)           	;. ~
	ram:68b0 28 f1          jr z,l68a3h          	;( .
	ram:68b2 cd d7 70       call sub_70d7h       	;. . p
	ram:68b5 c1             pop bc               	;.
	ram:68b6 10 ea          djnz l68a2h          	;. .
l68b8h:
	ram:68b8 cd 39 3e       call 03e39h          	;. 9 >
	ram:68bb cd 4b 3e       call 03e4bh          	;. K >
	ram:68be 18 03          jr l68c3h            	;. .
l68c0h:
	ram:68c0 cd 9d 3d       call 03d9dh          	;. . =
l68c3h:
	ram:68c3 cd d7 70       call sub_70d7h       	;. . p
	ram:68c6 cd 19 70       call sub_7019h       	;. . p
	ram:68c9 cd c1 70       call sub_70c1h       	;. . p
l68cch:
	ram:68cc cd 53 3c       call 03c53h          	;. S <
	ram:68cf da a6 6a       jp c,l6aa6h          	;. . j
	ram:68d2 cb 7e          bit 7,(hl)           	;. ~
	ram:68d4 28 f6          jr z,l68cch          	;( .
	ram:68d6 18 e8          jr l68c0h            	;. .
l68d8h:
	ram:68d8 3e 5f          ld a,05fh            	;> _
	ram:68da cd a1 6c       call sub_6ca1h       	;. . l
	ram:68dd 11 00 01       ld de,00100h         	;. . .
	ram:68e0 cd 60 6f       call l6f60h          	;. ` o
	ram:68e3 3e 05          ld a,005h            	;> .
	ram:68e5 32 13 83       ld (08313h),a        	;2 . .
	ram:68e8 c9             ret                  	;.
l68e9h:
	ram:68e9 c3 87 0a       jp 00a87h            	;. . .
l68ech:
	ram:68ec 21 28 72       ld hl,l7228h         	;! ( r
	ram:68ef cd b5 0a       call 00ab5h          	;. . .
	ram:68f2 fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:68f6 3e 1d          ld a,01dh            	;> .
	ram:68f8 32 20 83       ld (08320h),a        	;2   .
	ram:68fb 21 b1 08       ld hl,008b1h         	;! . .
	ram:68fe 22 1e 83       ld (0831eh),hl       	;" . .
	ram:6901 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:6904 11 f7 8b       ld de,08bf7h         	;. . .
	ram:6907 b7             or a                 	;.
	ram:6908 ed 52          sbc hl,de            	;. R
	ram:690a 22 21 83       ld (08321h),hl       	;" ! .
	ram:690d 22 98 80       ld (08098h),hl       	;" . .
	ram:6910 21 6f fa       ld hl,0fa6fh         	;! o .
	ram:6913 ed 5b e5 8b    ld de,(08be5h)       	;. [ . .
	ram:6917 ed 52          sbc hl,de            	;. R
	ram:6919 22 23 83       ld (08323h),hl       	;" # .
	ram:691c 22 9a 80       ld (0809ah),hl       	;" . .
	ram:691f 21 f7 8b       ld hl,08bf7h         	;! . .
	ram:6922 22 25 83       ld (08325h),hl       	;" % .
	ram:6925 21 09 00       ld hl,00009h         	;! . .
	ram:6928 cd 89 63       call sub_6389h       	;. . c
	ram:692b cd a4 72       call sub_72a4h       	;. . r
	ram:692e fe 09          cp 009h              	;. .
	ram:6930 28 44          jr z,l6976h          	;( D
	ram:6932 fe 36          cp 036h              	;. 6
	ram:6934 20 b3          jr nz,l68e9h         	;.
	ram:6936 cd b3 64       call sub_64b3h       	;. . d
	ram:6939 cd db 0a       call 00adbh          	;. . .
	ram:693c cd e3 6a       call sub_6ae3h       	;. . j
	ram:693f 3a 1d 83       ld a,(0831dh)        	;: . .
	ram:6942 fe 01          cp 001h              	;. .
	ram:6944 ca 73 6c       jp z,l6c73h          	;. s l
	ram:6947 fe 03          cp 003h              	;. .
	ram:6949 20 9e          jr nz,l68e9h         	;.
	ram:694b 3e 25          ld a,025h            	;> %
	ram:694d 06 04          ld b,004h            	;. .
	ram:694f 16 62          ld d,062h            	;. b
	ram:6951 cd d8 71       call sub_71d8h       	;. . q
	ram:6954 01 0c 00       ld bc,0000ch         	;. . .
	ram:6957 21 10 6f       ld hl,l6f10h         	;! . o
	ram:695a cd 66 6f       call sub_6f66h       	;. f o
	ram:695d 11 03 00       ld de,00003h         	;. . .
	ram:6960 21 3e 6f       ld hl,l6f3eh         	;! > o
	ram:6963 01 15 00       ld bc,00015h         	;. . .
	ram:6966 cd 66 6f       call sub_6f66h       	;. f o
	ram:6969 21 03 07       ld hl,00703h         	;! . .
	ram:696c 22 0c 80       ld (0800ch),hl       	;" . .
	ram:696f 2a 1e 83       ld hl,(0831eh)       	;* . .
	ram:6972 cd d9 3d       call 03dd9h          	;. . =
	ram:6975 c9             ret                  	;.
l6976h:
	ram:6976 cd 08 65       call sub_6508h       	;. . e
	ram:6979 3e 02          ld a,002h            	;> .
	ram:697b 32 c5 80       ld (080c5h),a        	;2 . .
	ram:697e 21 46 83       ld hl,08346h         	;! F .
	ram:6981 11 b1 08       ld de,008b1h         	;. . .
	ram:6984 cd a5 63       call sub_63a5h       	;. . c
	ram:6987 21 f7 8b       ld hl,08bf7h         	;! . .
	ram:698a ed 5b 98 80    ld de,(08098h)       	;. [ . .
	ram:698e cd a5 63       call sub_63a5h       	;. . c
	ram:6991 2a e5 8b       ld hl,(08be5h)       	;* . .
	ram:6994 23             inc hl               	;#
	ram:6995 ed 5b 9a 80    ld de,(0809ah)       	;. [ . .
	ram:6999 cd a5 63       call sub_63a5h       	;. . c
l699ch:
	ram:699c cd db 0a       call 00adbh          	;. . .
	ram:699f cd e3 6a       call sub_6ae3h       	;. . j
	ram:69a2 cd 73 6c       call l6c73h          	;. s l
	ram:69a5 21 f5 6e       ld hl,l6ef5h         	;! . n
	ram:69a8 e7             rst 20h              	;.
	ram:69a9 21 e5 6e       ld hl,l6ee5h         	;! . n
	ram:69ac 11 88 80       ld de,08088h         	;. . .
	ram:69af cd 9d 20       call 0209dh          	;. .  
	ram:69b2 cd 53 6f       call sub_6f53h       	;. S o
l69b5h:
	ram:69b5 cd 9d 3d       call 03d9dh          	;. . =
	ram:69b8 cd e9 3c       call 03ce9h          	;. . <
	ram:69bb cd 97 3d       call 03d97h          	;. . =
	ram:69be cd 97 3d       call 03d97h          	;. . =
	ram:69c1 c9             ret                  	;.
l69c2h:
	ram:69c2 21 01 ff       ld hl,0ff01h         	;! . .
	ram:69c5 22 d1 81       ld (081d1h),hl       	;" . .
	ram:69c8 3a 13 83       ld a,(08313h)        	;: . .
	ram:69cb fe 05          cp 005h              	;. .
	ram:69cd ca ec 68       jp z,l68ech          	;. . h
	ram:69d0 3e 08          ld a,008h            	;> .
	ram:69d2 32 13 83       ld (08313h),a        	;2 . .
	ram:69d5 3e 5c          ld a,05ch            	;> \
	ram:69d7 cd a1 6c       call sub_6ca1h       	;. . l
	ram:69da cd 4b 3e       call 03e4bh          	;. K >
	ram:69dd af             xor a                	;.
	ram:69de 32 c5 80       ld (080c5h),a        	;2 . .
	ram:69e1 3e 12          ld a,012h            	;> .
	ram:69e3 32 82 80       ld (08082h),a        	;2 . .
	ram:69e6 21 01 00       ld hl,00001h         	;! . .
	ram:69e9 22 83 80       ld (08083h),hl       	;" . .
l69ech:
	ram:69ec cd 53 3c       call 03c53h          	;. S <
	ram:69ef da 81 6a       jp c,l6a81h          	;. . j
	ram:69f2 cb 7e          bit 7,(hl)           	;. ~
	ram:69f4 28 f6          jr z,l69ech          	;( .
	ram:69f6 22 a0 80       ld (080a0h),hl       	;" . .
	ram:69f9 21 1d 72       ld hl,l721dh         	;! . r
	ram:69fc cd b5 0a       call 00ab5h          	;. . .
	ram:69ff fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:6a03 2a a0 80       ld hl,(080a0h)       	;* . .
	ram:6a06 e5             push hl              	;.
	ram:6a07 cd d7 70       call sub_70d7h       	;. . p
	ram:6a0a cd 0c 70       call sub_700ch       	;. . p
	ram:6a0d e1             pop hl               	;.
	ram:6a0e cd 47 1f       call 01f47h          	;. G .
	ram:6a11 d6 17          sub 017h             	;. .
	ram:6a13 38 05          jr c,l6a1ah          	;8 .
	ram:6a15 cd 49 70       call sub_7049h       	;. I p
	ram:6a18 18 05          jr l6a1fh            	;. .
l6a1ah:
	ram:6a1a 2b             dec hl               	;+
	ram:6a1b 5e             ld e,(hl)            	;^
	ram:6a1c 2b             dec hl               	;+
	ram:6a1d 56             ld d,(hl)            	;V
	ram:6a1e eb             ex de,hl             	;.
l6a1fh:
	ram:6a1f e5             push hl              	;.
	ram:6a20 cd 47 1f       call 01f47h          	;. G .
	ram:6a23 cd 3f 2d       call 02d3fh          	;. ? -
	ram:6a26 d5             push de              	;.
	ram:6a27 ed 53 1e 83    ld (0831eh),de       	;. S . .
	ram:6a2b 11 20 83       ld de,08320h         	;.   .
	ram:6a2e cd 11 21       call 02111h          	;. . !
	ram:6a31 3a 83 80       ld a,(08083h)        	;: . .
	ram:6a34 c6 04          add a,004h           	;. .
	ram:6a36 26 00          ld h,000h            	;& .
	ram:6a38 6f             ld l,a               	;o
	ram:6a39 cd 89 63       call sub_6389h       	;. . c
	ram:6a3c cd a4 72       call sub_72a4h       	;. . r
	ram:6a3f fe 09          cp 009h              	;. .
	ram:6a41 28 30          jr z,l6a73h          	;( 0
	ram:6a43 fe 36          cp 036h              	;. 6
	ram:6a45 20 29          jr nz,l6a70h         	;)
	ram:6a47 cd b3 64       call sub_64b3h       	;. . d
	ram:6a4a f1             pop af               	;.
	ram:6a4b f1             pop af               	;.
	ram:6a4c 3a 1d 83       ld a,(0831dh)        	;: . .
	ram:6a4f fe 01          cp 001h              	;. .
	ram:6a51 20 19          jr nz,l6a6ch         	;.
	ram:6a53 cd db 0a       call 00adbh          	;. . .
	ram:6a56 cd e3 6a       call sub_6ae3h       	;. . j
l6a59h:
	ram:6a59 cd 53 3c       call 03c53h          	;. S <
	ram:6a5c da 63 6a       jp c,l6a63h          	;. c j
	ram:6a5f cb be          res 7,(hl)           	;. .
	ram:6a61 18 f6          jr l6a59h            	;. .
l6a63h:
	ram:6a63 3a c5 80       ld a,(080c5h)        	;: . .
	ram:6a66 e6 10          and 010h             	;. .
	ram:6a68 20 3c          jr nz,l6aa6h         	;<
	ram:6a6a 18 1f          jr l6a8bh            	;. .
l6a6ch:
	ram:6a6c fe 02          cp 002h              	;. .
	ram:6a6e 28 0b          jr z,l6a7bh          	;( .
l6a70h:
	ram:6a70 c3 87 0a       jp 00a87h            	;. . .
l6a73h:
	ram:6a73 cd 08 65       call sub_6508h       	;. . e
	ram:6a76 d1             pop de               	;.
	ram:6a77 e1             pop hl               	;.
	ram:6a78 cd a5 63       call sub_63a5h       	;. . c
l6a7bh:
	ram:6a7b cd db 0a       call 00adbh          	;. . .
	ram:6a7e c3 ec 69       jp l69ech            	;. . i
l6a81h:
	ram:6a81 cd e3 6a       call sub_6ae3h       	;. . j
	ram:6a84 3a c5 80       ld a,(080c5h)        	;: . .
	ram:6a87 e6 10          and 010h             	;. .
	ram:6a89 20 0f          jr nz,l6a9ah         	;.
l6a8bh:
	ram:6a8b af             xor a                	;.
	ram:6a8c 32 c5 80       ld (080c5h),a        	;2 . .
	ram:6a8f cd 91 6e       call sub_6e91h       	;. . n
	ram:6a92 3e 5c          ld a,05ch            	;> \
	ram:6a94 cd ad 6c       call sub_6cadh       	;. . l
	ram:6a97 c3 b5 69       jp l69b5h            	;. . i
l6a9ah:
	ram:6a9a 21 28 72       ld hl,l7228h         	;! ( r
	ram:6a9d cd b5 0a       call 00ab5h          	;. . .
	ram:6aa0 cd 09 64       call sub_6409h       	;. . d
	ram:6aa3 cd db 0a       call 00adbh          	;. . .
l6aa6h:
	ram:6aa6 cd e3 6a       call sub_6ae3h       	;. . j
	ram:6aa9 3e 02          ld a,002h            	;> .
	ram:6aab 32 13 83       ld (08313h),a        	;2 . .
	ram:6aae 3e 5c          ld a,05ch            	;> \
	ram:6ab0 cd ad 6c       call sub_6cadh       	;. . l
	ram:6ab3 cd b5 69       call l69b5h          	;. . i
	ram:6ab6 cd 72 71       call sub_7172h       	;. r q
	ram:6ab9 c9             ret                  	;.
	ram:6aba 21 e3 6a       ld hl,sub_6ae3h      	;! . j
	ram:6abd cd b5 0a       call 00ab5h          	;. . .
	ram:6ac0 21 00 04       ld hl,00400h         	;! . .
	ram:6ac3 22 1e 83       ld (0831eh),hl       	;" . .
	ram:6ac6 3e 14          ld a,014h            	;> .
	ram:6ac8 32 20 83       ld (08320h),a        	;2   .
	ram:6acb 21 03 00       ld hl,00003h         	;! . .
	ram:6ace cd 89 63       call sub_6389h       	;. . c
	ram:6ad1 78             ld a,b               	;x
	ram:6ad2 fe 85          cp 085h              	;. .
	ram:6ad4 28 9a          jr z,l6a70h          	;( .
	ram:6ad6 cd a4 72       call sub_72a4h       	;. . r
	ram:6ad9 fe 09          cp 009h              	;. .
	ram:6adb 20 93          jr nz,l6a70h         	;.
	ram:6add cd 9c 63       call sub_639ch       	;. . c
l6ae0h:
	ram:6ae0 cd db 0a       call 00adbh          	;. . .
sub_6ae3h:
	ram:6ae3 fd cb 12 96    res 2,(iy+012h)      	;. . . .
l6ae7h:
	ram:6ae7 c9             ret                  	;.
	ram:6ae8 21 1e 83       ld hl,0831eh         	;! . .
	ram:6aeb 77             ld (hl),a            	;w
	ram:6aec 01 0f 00       ld bc,0000fh         	;. . .
l6aefh:
	ram:6aef db 07          in a,(007h)          	;. .
	ram:6af1 e6 03          and 003h             	;. .
	ram:6af3 be             cp (hl)              	;.
	ram:6af4 20 f1          jr nz,l6ae7h         	;.
	ram:6af6 0b             dec bc               	;.
	ram:6af7 79             ld a,c               	;y
	ram:6af8 b0             or b                 	;.
	ram:6af9 20 f4          jr nz,l6aefh         	;.
	ram:6afb cd 15 01       call 00115h          	;. . .
	ram:6afe 3a 14 83       ld a,(08314h)        	;: . .
	ram:6b01 f5             push af              	;.
	ram:6b02 3a 13 83       ld a,(08313h)        	;: . .
	ram:6b05 f5             push af              	;.
	ram:6b06 3a c5 80       ld a,(080c5h)        	;: . .
	ram:6b09 f5             push af              	;.
	ram:6b0a 11 ed 8b       ld de,08bedh         	;. . .
	ram:6b0d cd 11 21       call 02111h          	;. . !
	ram:6b10 3e 07          ld a,007h            	;> .
	ram:6b12 32 13 83       ld (08313h),a        	;2 . .
	ram:6b15 21 c3 6b       ld hl,l6bc3h         	;! . k
	ram:6b18 cd b5 0a       call 00ab5h          	;. . .
	ram:6b1b fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:6b1f 3a 1e 83       ld a,(0831eh)        	;: . .
	ram:6b22 cd 68 65       call sub_6568h       	;. h e
	ram:6b25 cd 28 65       call sub_6528h       	;. ( e
	ram:6b28 3a 16 83       ld a,(08316h)        	;: . .
	ram:6b2b fe 6d          cp 06dh              	;. m
	ram:6b2d 20 05          jr nz,l6b34h         	;.
	ram:6b2f cd 9c 63       call sub_639ch       	;. . c
	ram:6b32 18 15          jr l6b49h            	;. .
l6b34h:
	ram:6b34 fe a2          cp 0a2h              	;. .
	ram:6b36 20 13          jr nz,l6b4bh         	;.
	ram:6b38 cd 8e 64       call sub_648eh       	;. . d
	ram:6b3b 21 20 83       ld hl,08320h         	;!   .
	ram:6b3e e7             rst 20h              	;.
	ram:6b3f 3e 0a          ld a,00ah            	;> .
	ram:6b41 32 13 83       ld (08313h),a        	;2 . .
	ram:6b44 3e 06          ld a,006h            	;> .
	ram:6b46 cd 9e 73       call sub_739eh       	;. . s
l6b49h:
	ram:6b49 18 75          jr l6bc0h            	;. u
l6b4bh:
	ram:6b4b fe b7          cp 0b7h              	;. .
	ram:6b4d 20 71          jr nz,l6bc0h         	;q
	ram:6b4f cd 8e 64       call sub_648eh       	;. . d
	ram:6b52 21 20 83       ld hl,08320h         	;!   .
	ram:6b55 e7             rst 20h              	;.
	ram:6b56 d7             rst 10h              	;.
	ram:6b57 38 62          jr c,l6bbbh          	;8 b
	ram:6b59 d5             push de              	;.
	ram:6b5a eb             ex de,hl             	;.
	ram:6b5b cd 33 00       call 00033h          	;. 3 .
	ram:6b5e ed 5b 1e 83    ld de,(0831eh)       	;. [ . .
	ram:6b62 3a 82 80       ld a,(08082h)        	;: . .
	ram:6b65 e6 1e          and 01eh             	;. .
	ram:6b67 47             ld b,a               	;G
	ram:6b68 3a 20 83       ld a,(08320h)        	;:   .
	ram:6b6b e6 1e          and 01eh             	;. .
	ram:6b6d b8             cp b                 	;.
	ram:6b6e 20 4a          jr nz,l6bbah         	;J
	ram:6b70 fe 04          cp 004h              	;. .
	ram:6b72 20 36          jr nz,l6baah         	;6
	ram:6b74 ed 52          sbc hl,de            	;. R
	ram:6b76 38 42          jr c,l6bbah          	;8 B
	ram:6b78 eb             ex de,hl             	;.
	ram:6b79 d1             pop de               	;.
	ram:6b7a cd 2f 39       call 0392fh          	;. / 9
l6b7dh:
	ram:6b7d 11 0a 00       ld de,0000ah         	;. . .
	ram:6b80 3a 82 80       ld a,(08082h)        	;: . .
	ram:6b83 cb 47          bit 0,a              	;. G
	ram:6b85 28 03          jr z,l6b8ah          	;( .
	ram:6b87 11 15 00       ld de,00015h         	;. . .
l6b8ah:
	ram:6b8a cd 78 63       call sub_6378h       	;. x c
	ram:6b8d cd a4 72       call sub_72a4h       	;. . r
	ram:6b90 fe 09          cp 009h              	;. .
	ram:6b92 c2 87 0a       jp nz,00a87h         	;. . .
	ram:6b95 cd 08 65       call sub_6508h       	;. . e
	ram:6b98 21 82 80       ld hl,08082h         	;! . .
	ram:6b9b 11 0a 00       ld de,0000ah         	;. . .
	ram:6b9e cb 46          bit 0,(hl)           	;. F
	ram:6ba0 28 03          jr z,l6ba5h          	;( .
	ram:6ba2 11 15 00       ld de,00015h         	;. . .
l6ba5h:
	ram:6ba5 cd a5 63       call sub_63a5h       	;. . c
	ram:6ba8 18 16          jr l6bc0h            	;. .
l6baah:
	ram:6baa 7c             ld a,h               	;|
	ram:6bab 92             sub d                	;.
	ram:6bac 38 0c          jr c,l6bbah          	;8 .
	ram:6bae 7d             ld a,l               	;}
	ram:6baf bb             cp e                 	;.
	ram:6bb0 38 08          jr c,l6bbah          	;8 .
	ram:6bb2 42             ld b,d               	;B
	ram:6bb3 4b             ld c,e               	;K
	ram:6bb4 d1             pop de               	;.
	ram:6bb5 cd 8f 39       call 0398fh          	;. . 9
	ram:6bb8 18 c3          jr l6b7dh            	;. .
l6bbah:
	ram:6bba d1             pop de               	;.
l6bbbh:
	ram:6bbb 3e 01          ld a,001h            	;> .
	ram:6bbd cd 91 63       call sub_6391h       	;. . c
l6bc0h:
	ram:6bc0 cd db 0a       call 00adbh          	;. . .
l6bc3h:
	ram:6bc3 cd e3 6a       call sub_6ae3h       	;. . j
	ram:6bc6 21 ed 8b       ld hl,08bedh         	;! . .
	ram:6bc9 cd 04 21       call 02104h          	;. . !
	ram:6bcc f1             pop af               	;.
	ram:6bcd 32 c5 80       ld (080c5h),a        	;2 . .
	ram:6bd0 f1             pop af               	;.
	ram:6bd1 32 13 83       ld (08313h),a        	;2 . .
	ram:6bd4 f1             pop af               	;.
	ram:6bd5 32 14 83       ld (08314h),a        	;2 . .
	ram:6bd8 fd cb 08 de    set 3,(iy+008h)      	;. . . .
	ram:6bdc c9             ret                  	;.
sub_6bddh:
	ram:6bdd 3a 12 83       ld a,(08312h)        	;: . .
	ram:6be0 fe 17          cp 017h              	;. .
	ram:6be2 20 0d          jr nz,l6bf1h         	;.
sub_6be4h:
	ram:6be4 21 d8 80       ld hl,080d8h         	;! . .
	ram:6be7 06 05          ld b,005h            	;. .
l6be9h:
	ram:6be9 cb be          res 7,(hl)           	;. .
	ram:6beb 23             inc hl               	;#
	ram:6bec 10 fb          djnz l6be9h          	;. .
	ram:6bee c9             ret                  	;.
sub_6befh:
	ram:6bef 3e 1f          ld a,01fh            	;> .
l6bf1h:
	ram:6bf1 fe 1f          cp 01fh              	;. .
	ram:6bf3 cc e4 6b       call z,sub_6be4h     	;. . k
	ram:6bf6 21 6f fa       ld hl,0fa6fh         	;! o .
	ram:6bf9 16 00          ld d,000h            	;. .
l6bfbh:
	ram:6bfb ed 4b eb 8b    ld bc,(08bebh)       	;. K . .
	ram:6bff b7             or a                 	;.
	ram:6c00 ed 42          sbc hl,bc            	;. B
	ram:6c02 d8             ret c                	;.
	ram:6c03 c8             ret z                	;.
	ram:6c04 09             add hl,bc            	;.
	ram:6c05 47             ld b,a               	;G
	ram:6c06 fe 1f          cp 01fh              	;. .
	ram:6c08 28 09          jr z,l6c13h          	;( .
	ram:6c0a 7e             ld a,(hl)            	;~
	ram:6c0b e6 1f          and 01fh             	;. .
	ram:6c0d cd 4d 3c       call 03c4dh          	;. M <
	ram:6c10 b8             cp b                 	;.
	ram:6c11 20 02          jr nz,l6c15h         	;.
l6c13h:
	ram:6c13 cb be          res 7,(hl)           	;. .
l6c15h:
	ram:6c15 2b             dec hl               	;+
	ram:6c16 2b             dec hl               	;+
	ram:6c17 2b             dec hl               	;+
	ram:6c18 5e             ld e,(hl)            	;^
	ram:6c19 1c             inc e                	;.
	ram:6c1a b7             or a                 	;.
	ram:6c1b ed 52          sbc hl,de            	;. R
	ram:6c1d 78             ld a,b               	;x
	ram:6c1e 18 db          jr l6bfbh            	;. .
sub_6c20h:
	ram:6c20 3a 12 83       ld a,(08312h)        	;: . .
	ram:6c23 fe 17          cp 017h              	;. .
	ram:6c25 20 0b          jr nz,l6c32h         	;.
sub_6c27h:
	ram:6c27 21 d8 80       ld hl,080d8h         	;! . .
	ram:6c2a 06 05          ld b,005h            	;. .
l6c2ch:
	ram:6c2c cb fe          set 7,(hl)           	;. .
	ram:6c2e 23             inc hl               	;#
	ram:6c2f 10 fb          djnz l6c2ch          	;. .
	ram:6c31 c9             ret                  	;.
l6c32h:
	ram:6c32 fe 1f          cp 01fh              	;. .
	ram:6c34 cc 27 6c       call z,sub_6c27h     	;. ' l
	ram:6c37 21 6f fa       ld hl,0fa6fh         	;! o .
	ram:6c3a 16 00          ld d,000h            	;. .
l6c3ch:
	ram:6c3c ed 4b eb 8b    ld bc,(08bebh)       	;. K . .
	ram:6c40 b7             or a                 	;.
	ram:6c41 ed 42          sbc hl,bc            	;. B
	ram:6c43 38 1e          jr c,l6c63h          	;8 .
	ram:6c45 28 1c          jr z,l6c63h          	;( .
	ram:6c47 09             add hl,bc            	;.
	ram:6c48 47             ld b,a               	;G
	ram:6c49 fe 1f          cp 01fh              	;. .
	ram:6c4b 28 09          jr z,l6c56h          	;( .
	ram:6c4d 7e             ld a,(hl)            	;~
	ram:6c4e e6 1f          and 01fh             	;. .
	ram:6c50 cd 4d 3c       call 03c4dh          	;. M <
	ram:6c53 b8             cp b                 	;.
	ram:6c54 20 02          jr nz,l6c58h         	;.
l6c56h:
	ram:6c56 cb fe          set 7,(hl)           	;. .
l6c58h:
	ram:6c58 2b             dec hl               	;+
	ram:6c59 2b             dec hl               	;+
	ram:6c5a 2b             dec hl               	;+
	ram:6c5b 5e             ld e,(hl)            	;^
	ram:6c5c 1c             inc e                	;.
	ram:6c5d b7             or a                 	;.
	ram:6c5e ed 52          sbc hl,de            	;. R
	ram:6c60 78             ld a,b               	;x
	ram:6c61 18 d9          jr l6c3ch            	;. .
l6c63h:
	ram:6c63 cd 12 26       call 02612h          	;. . &
	ram:6c66 d7             rst 10h              	;.
	ram:6c67 38 02          jr c,l6c6bh          	;8 .
	ram:6c69 cb be          res 7,(hl)           	;. .
l6c6bh:
	ram:6c6b cd 91 37       call 03791h          	;. . 7
	ram:6c6e d7             rst 10h              	;.
	ram:6c6f d8             ret c                	;.
	ram:6c70 cb be          res 7,(hl)           	;. .
	ram:6c72 c9             ret                  	;.
l6c73h:
	ram:6c73 cd 91 6e       call sub_6e91h       	;. . n
	ram:6c76 cd ef 6b       call sub_6befh       	;. . k
	ram:6c79 fd cb 0d ce    set 1,(iy+00dh)      	;. . . .
	ram:6c7d fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:6c81 cd d1 71       call sub_71d1h       	;. . q
	ram:6c84 af             xor a                	;.
	ram:6c85 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:6c88 21 97 6e       ld hl,l6e97h         	;! . n
	ram:6c8b cd 5b 06       call 0065bh          	;. [ .
	ram:6c8e 3e 5c          ld a,05ch            	;> \
	ram:6c90 cd a1 6c       call sub_6ca1h       	;. . l
	ram:6c93 c3 e3 6a       jp sub_6ae3h         	;. . j
	ram:6c96 fe a3          cp 0a3h              	;. .
	ram:6c98 20 16          jr nz,l6cb0h         	;.
	ram:6c9a 3e 03          ld a,003h            	;> .
	ram:6c9c 32 13 83       ld (08313h),a        	;2 . .
	ram:6c9f 3e 5d          ld a,05dh            	;> ]
sub_6ca1h:
	ram:6ca1 f5             push af              	;.
	ram:6ca2 cd 39 3e       call 03e39h          	;. 9 >
l6ca5h:
	ram:6ca5 cd c3 3e       call 03ec3h          	;. . >
	ram:6ca8 f1             pop af               	;.
	ram:6ca9 cd 85 3d       call 03d85h          	;. . =
	ram:6cac c9             ret                  	;.
sub_6cadh:
	ram:6cad f5             push af              	;.
	ram:6cae 18 f5          jr l6ca5h            	;. .
l6cb0h:
	ram:6cb0 fe a0          cp 0a0h              	;. .
	ram:6cb2 ca e4 65       jp z,l65e4h          	;. . e
	ram:6cb5 fe a2          cp 0a2h              	;. .
	ram:6cb7 20 0d          jr nz,l6cc6h         	;.
	ram:6cb9 cd c1 70       call sub_70c1h       	;. . p
	ram:6cbc cd 80 72       call sub_7280h       	;. . r
	ram:6cbf 7e             ld a,(hl)            	;~
	ram:6cc0 ee 80          xor 080h             	;. .
	ram:6cc2 77             ld (hl),a            	;w
	ram:6cc3 c3 72 71       jp sub_7172h         	;. r q
l6cc6h:
	ram:6cc6 fe 8a          cp 08ah              	;. .
	ram:6cc8 20 05          jr nz,l6ccfh         	;.
	ram:6cca cd 20 6c       call sub_6c20h       	;.   l
	ram:6ccd 18 07          jr l6cd6h            	;. .
l6ccfh:
	ram:6ccf fe 89          cp 089h              	;. .
	ram:6cd1 20 06          jr nz,l6cd9h         	;.
	ram:6cd3 cd dd 6b       call sub_6bddh       	;. . k
l6cd6h:
	ram:6cd6 c3 ce 6d       jp l6dceh            	;. . m
l6cd9h:
	ram:6cd9 fe bf          cp 0bfh              	;. .
	ram:6cdb ca c2 69       jp z,l69c2h          	;. . i
	ram:6cde fe 04          cp 004h              	;. .
	ram:6ce0 ca b6 6f       jp z,l6fb6h          	;. . o
	ram:6ce3 fe 03          cp 003h              	;. .
	ram:6ce5 ca 7a 6f       jp z,l6f7ah          	;. z o
	ram:6ce8 fe 90          cp 090h              	;. .
	ram:6cea ca 83 66       jp z,l6683h          	;. . f
	ram:6ced fe c1          cp 0c1h              	;. .
	ram:6cef 20 07          jr nz,l6cf8h         	;.
	ram:6cf1 3a 14 83       ld a,(08314h)        	;: . .
	ram:6cf4 b7             or a                 	;.
	ram:6cf5 28 60          jr z,l6d57h          	;( `
	ram:6cf7 c9             ret                  	;.
l6cf8h:
	ram:6cf8 fe a4          cp 0a4h              	;. .
	ram:6cfa 20 19          jr nz,l6d15h         	;.
	ram:6cfc cd ca 71       call sub_71cah       	;. . q
	ram:6cff fe 02          cp 002h              	;. .
	ram:6d01 cc 0c 2e       call z,02e0ch        	;. . .
	ram:6d04 21 28 72       ld hl,l7228h         	;! ( r
	ram:6d07 cd b5 0a       call 00ab5h          	;. . .
	ram:6d0a 3e 02          ld a,002h            	;> .
	ram:6d0c cd 91 63       call sub_6391h       	;. . c
	ram:6d0f cd db 0a       call 00adbh          	;. . .
	ram:6d12 c3 5a 68       jp l685ah            	;. Z h
l6d15h:
	ram:6d15 fe be          cp 0beh              	;. .
	ram:6d17 c2 dd 6d       jp nz,l6dddh         	;. . m
	ram:6d1a 3a 13 83       ld a,(08313h)        	;: . .
	ram:6d1d fe 13          cp 013h              	;. .
	ram:6d1f 20 08          jr nz,l6d29h         	;.
	ram:6d21 cd 91 6e       call sub_6e91h       	;. . n
	ram:6d24 cd 02 73       call sub_7302h       	;. . s
	ram:6d27 18 2e          jr l6d57h            	;. .
l6d29h:
	ram:6d29 cd ca 71       call sub_71cah       	;. . q
	ram:6d2c fe 02          cp 002h              	;. .
	ram:6d2e 20 05          jr nz,l6d35h         	;.
	ram:6d30 cd 0c 2e       call 02e0ch          	;. . .
	ram:6d33 18 04          jr l6d39h            	;. .
l6d35h:
	ram:6d35 fe 03          cp 003h              	;. .
	ram:6d37 20 06          jr nz,l6d3fh         	;.
l6d39h:
	ram:6d39 cd 02 73       call sub_7302h       	;. . s
l6d3ch:
	ram:6d3c c3 7a 68       jp l687ah            	;. z h
l6d3fh:
	ram:6d3f fe 04          cp 004h              	;. .
	ram:6d41 28 14          jr z,l6d57h          	;( .
	ram:6d43 3a 13 83       ld a,(08313h)        	;: . .
	ram:6d46 fe 05          cp 005h              	;. .
	ram:6d48 ca d8 68       jp z,l68d8h          	;. . h
	ram:6d4b 21 c5 80       ld hl,080c5h         	;! . .
	ram:6d4e fe 14          cp 014h              	;. .
	ram:6d50 20 08          jr nz,l6d5ah         	;.
	ram:6d52 cb 4e          bit 1,(hl)           	;. N
	ram:6d54 c2 d4 0b       jp nz,00bd4h         	;. . .
l6d57h:
	ram:6d57 c3 73 6c       jp l6c73h            	;. s l
l6d5ah:
	ram:6d5a fe 11          cp 011h              	;. .
	ram:6d5c c2 c9 6d       jp nz,l6dc9h         	;. . m
	ram:6d5f cd c1 70       call sub_70c1h       	;. . p
l6d62h:
	ram:6d62 cd 59 3c       call 03c59h          	;. Y <
	ram:6d65 38 5f          jr c,l6dc6h          	;8 _
	ram:6d67 cb 7e          bit 7,(hl)           	;. ~
	ram:6d69 28 f7          jr z,l6d62h          	;( .
	ram:6d6b cd d7 70       call sub_70d7h       	;. . p
	ram:6d6e 18 cc          jr l6d3ch            	;. .
sub_6d70h:
	ram:6d70 cd 47 1f       call 01f47h          	;. G .
	ram:6d73 fe 17          cp 017h              	;. .
	ram:6d75 38 1a          jr c,l6d91h          	;8 .
	ram:6d77 fe 1b          cp 01bh              	;. .
	ram:6d79 20 04          jr nz,l6d7fh         	;.
	ram:6d7b cd 63 35       call 03563h          	;. c 5
	ram:6d7e c9             ret                  	;.
l6d7fh:
	ram:6d7f fd 46 02       ld b,(iy+002h)       	;. F .
	ram:6d82 c5             push bc              	;.
	ram:6d83 cd b1 72       call sub_72b1h       	;. . r
	ram:6d86 cd c5 72       call sub_72c5h       	;. . r
	ram:6d89 cd dd 36       call 036ddh          	;. . 6
	ram:6d8c f1             pop af               	;.
	ram:6d8d cd c5 72       call sub_72c5h       	;. . r
	ram:6d90 c9             ret                  	;.
l6d91h:
	ram:6d91 cd 65 36       call 03665h          	;. e 6
	ram:6d94 3e 01          ld a,001h            	;> .
	ram:6d96 30 05          jr nc,l6d9dh         	;0 .
	ram:6d98 3a 85 80       ld a,(08085h)        	;: . .
	ram:6d9b d6 74          sub 074h             	;. t
l6d9dh:
	ram:6d9d b7             or a                 	;.
	ram:6d9e f5             push af              	;.
	ram:6d9f d7             rst 10h              	;.
	ram:6da0 eb             ex de,hl             	;.
	ram:6da1 ed 4b d2 8b    ld bc,(08bd2h)       	;. K . .
	ram:6da5 0b             dec bc               	;.
	ram:6da6 0b             dec bc               	;.
	ram:6da7 71             ld (hl),c            	;q
	ram:6da8 23             inc hl               	;#
	ram:6da9 70             ld (hl),b            	;p
	ram:6daa 2b             dec hl               	;+
	ram:6dab eb             ex de,hl             	;.
	ram:6dac f1             pop af               	;.
	ram:6dad 20 04          jr nz,l6db3h         	;.
	ram:6daf cd 11 73       call sub_7311h       	;. . s
	ram:6db2 c9             ret                  	;.
l6db3h:
	ram:6db3 3e 0a          ld a,00ah            	;> .
	ram:6db5 cd 0c 2c       call 02c0ch          	;. . ,
	ram:6db8 cd 68 26       call 02668h          	;. h &
	ram:6dbb c0             ret nz               	;.
	ram:6dbc cd 95 20       call 02095h          	;. .  
	ram:6dbf 21 00 00       ld hl,00000h         	;! . .
	ram:6dc2 cd d9 29       call 029d9h          	;. . )
	ram:6dc5 c9             ret                  	;.
l6dc6h:
	ram:6dc6 c3 3c 6d       jp l6d3ch            	;. < m
l6dc9h:
	ram:6dc9 fe 08          cp 008h              	;. .
	ram:6dcb c3 73 6c       jp l6c73h            	;. s l
l6dceh:
	ram:6dce 3a 12 83       ld a,(08312h)        	;: . .
	ram:6dd1 fe 1f          cp 01fh              	;. .
	ram:6dd3 20 05          jr nz,l6ddah         	;.
	ram:6dd5 3e 12          ld a,012h            	;> .
	ram:6dd7 32 d0 81       ld (081d0h),a        	;2 . .
l6ddah:
	ram:6dda c3 5e 6e       jp l6e5eh            	;. ^ n
l6dddh:
	ram:6ddd fe 9d          cp 09dh              	;. .
	ram:6ddf 20 06          jr nz,l6de7h         	;.
	ram:6de1 cd ca 71       call sub_71cah       	;. . q
	ram:6de4 c3 6a 67       jp l676ah            	;. j g
l6de7h:
	ram:6de7 fe a1          cp 0a1h              	;. .
	ram:6de9 20 51          jr nz,l6e3ch         	;Q
l6debh:
	ram:6deb 21 c5 80       ld hl,080c5h         	;! . .
	ram:6dee cb ee          set 5,(hl)           	;. .
	ram:6df0 c3 c1 34       jp 034c1h            	;. . 4
l6df3h:
	ram:6df3 e1             pop hl               	;.
	ram:6df4 22 98 80       ld (08098h),hl       	;" . .
l6df7h:
	ram:6df7 cd 4b 35       call 0354bh          	;. K 5
	ram:6dfa 18 ef          jr l6debh            	;. .
	ram:6dfc fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:6e00 38 04          jr c,l6e06h          	;8 .
	ram:6e02 cd 4b 35       call 0354bh          	;. K 5
	ram:6e05 c9             ret                  	;.
l6e06h:
	ram:6e06 cd c8 26       call 026c8h          	;. . &
	ram:6e09 30 ec          jr nc,l6df7h         	;0 .
	ram:6e0b 2a 98 80       ld hl,(08098h)       	;* . .
	ram:6e0e e5             push hl              	;.
	ram:6e0f 21 f3 6d       ld hl,l6df3h         	;! . m
	ram:6e12 cd b5 0a       call 00ab5h          	;. . .
	ram:6e15 cd 1f 2f       call 02f1fh          	;. . /
	ram:6e18 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:6e1b e6 1f          and 01fh             	;. .
	ram:6e1d cd 45 35       call 03545h          	;. E 5
	ram:6e20 cd 4b 35       call 0354bh          	;. K 5
	ram:6e23 cd db 0a       call 00adbh          	;. . .
	ram:6e26 cd 5a 05       call 0055ah          	;. Z .
	ram:6e29 e1             pop hl               	;.
	ram:6e2a 22 1e 83       ld (0831eh),hl       	;" . .
	ram:6e2d cd ca 71       call sub_71cah       	;. . q
	ram:6e30 cd ef 2d       call 02defh          	;. . -
	ram:6e33 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:6e36 32 82 80       ld (08082h),a        	;2 . .
	ram:6e39 c3 a5 67       jp l67a5h            	;. . g
l6e3ch:
	ram:6e3c fe be          cp 0beh              	;. .
	ram:6e3e d0             ret nc               	;.
	ram:6e3f d6 af          sub 0afh             	;. .
	ram:6e41 d8             ret c                	;.
	ram:6e42 fe 01          cp 001h              	;. .
	ram:6e44 ca d8 68       jp z,l68d8h          	;. . h
	ram:6e47 4f             ld c,a               	;O
	ram:6e48 06 00          ld b,000h            	;. .
	ram:6e4a 21 c8 6e       ld hl,l6ec8h         	;! . n
	ram:6e4d 09             add hl,bc            	;.
	ram:6e4e 7e             ld a,(hl)            	;~
	ram:6e4f 32 12 83       ld (08312h),a        	;2 . .
	ram:6e52 fe 1f          cp 01fh              	;. .
	ram:6e54 20 02          jr nz,l6e58h         	;.
	ram:6e56 3e 12          ld a,012h            	;> .
l6e58h:
	ram:6e58 32 d0 81       ld (081d0h),a        	;2 . .
	ram:6e5b c4 ef 6b       call nz,sub_6befh    	;. . k
l6e5eh:
	ram:6e5e 3a 12 83       ld a,(08312h)        	;: . .
	ram:6e61 fe 17          cp 017h              	;. .
	ram:6e63 20 05          jr nz,l6e6ah         	;.
	ram:6e65 3e 16          ld a,016h            	;> .
	ram:6e67 32 d0 81       ld (081d0h),a        	;2 . .
l6e6ah:
	ram:6e6a 3e 5e          ld a,05eh            	;> ^
	ram:6e6c cd a1 6c       call sub_6ca1h       	;. . l
	ram:6e6f 3e 04          ld a,004h            	;> .
	ram:6e71 32 13 83       ld (08313h),a        	;2 . .
	ram:6e74 cd 95 70       call sub_7095h       	;. . p
	ram:6e77 cd e5 70       call sub_70e5h       	;. . p
	ram:6e7a c2 6b 71       jp nz,l716bh         	;. k q
	ram:6e7d 3e 5d          ld a,05dh            	;> ]
	ram:6e7f cd a1 6c       call sub_6ca1h       	;. . l
	ram:6e82 cd 91 6e       call sub_6e91h       	;. . n
	ram:6e85 01 15 00       ld bc,00015h         	;. . .
	ram:6e88 21 fb 6e       ld hl,l6efbh         	;! . n
	ram:6e8b 11 00 00       ld de,00000h         	;. . .
	ram:6e8e c3 66 6f       jp sub_6f66h         	;. f o
sub_6e91h:
	ram:6e91 3e 01          ld a,001h            	;> .
	ram:6e93 32 13 83       ld (08313h),a        	;2 . .
	ram:6e96 c9             ret                  	;.
l6e97h:
	ram:6e97 96             sub (hl)             	;.
	ram:6e98 6c             ld l,h               	;l
	ram:6e99 a4             and h                	;.
	ram:6e9a 6e             ld l,(hl)            	;n
	ram:6e9b a4             and h                	;.
	ram:6e9c 6e             ld l,(hl)            	;n
	ram:6e9d a4             and h                	;.
	ram:6e9e 6e             ld l,(hl)            	;n
	ram:6e9f 73             ld (hl),e            	;s
	ram:6ea0 6c             ld l,h               	;l
	ram:6ea1 c7             rst 0                	;.
	ram:6ea2 6e             ld l,(hl)            	;n
	ram:6ea3 12             ld (de),a            	;.
	ram:6ea4 21 c5 80       ld hl,080c5h         	;! . .
	ram:6ea7 3a 13 83       ld a,(08313h)        	;: . .
	ram:6eaa fe 14          cp 014h              	;. .
	ram:6eac 20 05          jr nz,l6eb3h         	;.
	ram:6eae cb 4e          bit 1,(hl)           	;. N
	ram:6eb0 c2 d4 0b       jp nz,00bd4h         	;. . .
l6eb3h:
	ram:6eb3 3a e1 8b       ld a,(08be1h)        	;: . .
	ram:6eb6 32 df 8b       ld (08bdfh),a        	;2 . .
	ram:6eb9 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:6ebd af             xor a                	;.
	ram:6ebe 32 13 83       ld (08313h),a        	;2 . .
	ram:6ec1 cd e3 6a       call sub_6ae3h       	;. . j
	ram:6ec4 c3 ef 6b       jp sub_6befh         	;. . k
	ram:6ec7 c9             ret                  	;.
; BEGIN looks like data table
l6ec8h:
	ram:6ec8 1f             rra                  	;.
	ram:6ec9 00             nop                  	;.
	ram:6eca 08             ex af,af'            	;.
	ram:6ecb 01 0a 0d       ld bc,00d0ah         	;. . .
	ram:6ece 04             inc b                	;.
	ram:6ecf 06 11          ld b,011h            	;. .
	ram:6ed1 12             ld (de),a            	;.
	ram:6ed2 17             rla                  	;.
	ram:6ed3 00             nop                  	;.
	ram:6ed4 00             nop                  	;.
	ram:6ed5 0c             inc c                	;.
	ram:6ed6 02             ld (bc),a            	;.
l6ed7h:
	ram:6ed7 57             ld d,a               	;W
	ram:6ed8 61             ld h,c               	;a
	ram:6ed9 69             ld l,c               	;i
	ram:6eda 74             ld (hl),h            	;t
	ram:6edb 69             ld l,c               	;i
	ram:6edc 6e             ld l,(hl)            	;n
	ram:6edd 67             ld h,a               	;g
	ram:6ede 00             nop                  	;.
l6edfh:
	ram:6edf 4d             ld c,l               	;M
	ram:6ee0 65             ld h,l               	;e
	ram:6ee1 6d             ld l,l               	;m
	ram:6ee2 6f             ld l,a               	;o
	ram:6ee3 72             ld (hl),d            	;r
	ram:6ee4 79             ld a,c               	;y
l6ee5h:
	ram:6ee5 20 42          jr nz,68             	;B
	ram:6ee7 61             ld h,c               	;a
	ram:6ee8 63             ld h,e               	;c
	ram:6ee9 6b             ld l,e               	;k
	ram:6eea 75             ld (hl),l            	;u
	ram:6eeb 70             ld (hl),b            	;p
	ram:6eec 00             nop                  	;.
l6eedh:
	ram:6eed 57             ld d,a               	;W
	ram:6eee 41             ld b,c               	;A
	ram:6eef 52             ld d,d               	;R
	ram:6ef0 4e             ld c,(hl)            	;N
	ram:6ef1 49             ld c,c               	;I
	ram:6ef2 4e             ld c,(hl)            	;N
	ram:6ef3 47             ld b,a               	;G
	ram:6ef4 00             nop                  	;.
l6ef5h:
	ram:6ef5 53             ld d,e               	;S
	ram:6ef6 59             ld e,c               	;Y
	ram:6ef7 53             ld d,e               	;S
	ram:6ef8 54             ld d,h               	;T
	ram:6ef9 45             ld b,l               	;E
	ram:6efa 4d             ld c,l               	;M
l6efbh:
	ram:6efb 4e             ld c,(hl)            	;N
	ram:6efc 4f             ld c,a               	;O
	ram:6efd 20 56          jr nz,88             	;V
	ram:6eff 41             ld b,c               	;A
	ram:6f00 52             ld d,d               	;R
	ram:6f01 53             ld d,e               	;S
	ram:6f02 20 4f          jr nz,sub_6f53h      	;O
	ram:6f04 46             ld b,(hl)            	;F
	ram:6f05 20 54          jr nz,86             	;T
	ram:6f07 48             ld c,b               	;H
	ram:6f08 49             ld c,c               	;I
	ram:6f09 53             ld d,e               	;S
	ram:6f0a 20 54          jr nz,l6f60h         	;T
	ram:6f0c 59             ld e,c               	;Y
	ram:6f0d 50             ld d,b               	;P
	ram:6f0e 45             ld b,l               	;E
	ram:6f0f 00             nop                  	;.
l6f10h:
	ram:6f10 4d             ld c,l               	;M
	ram:6f11 45             ld b,l               	;E
	ram:6f12 4d             ld c,l               	;M
	ram:6f13 4f             ld c,a               	;O
	ram:6f14 52             ld d,d               	;R
	ram:6f15 59             ld e,c               	;Y
	ram:6f16 20 46          jr nz,72             	;F
	ram:6f18 55             ld d,l               	;U
	ram:6f19 4c             ld c,h               	;L
	ram:6f1a 4c             ld c,h               	;L
	ram:6f1b 00             nop                  	;.
l6f1ch:
	ram:6f1c 54             ld d,h               	;T
	ram:6f1d 52             ld d,d               	;R
	ram:6f1e 41             ld b,c               	;A
	ram:6f1f 4e             ld c,(hl)            	;N
	ram:6f20 53             ld d,e               	;S
	ram:6f21 4d             ld c,l               	;M
	ram:6f22 49             ld c,c               	;I
	ram:6f23 53             ld d,e               	;S
	ram:6f24 53             ld d,e               	;S
	ram:6f25 49             ld c,c               	;I
	ram:6f26 4f             ld c,a               	;O
	ram:6f27 4e             ld c,(hl)            	;N
	ram:6f28 20 45          jr nz,l6f6fh         	;E
	ram:6f2a 52             ld d,d               	;R
	ram:6f2b 52             ld d,d               	;R
	ram:6f2c 4f             ld c,a               	;O
	ram:6f2d 52             ld d,d               	;R
	ram:6f2e 00             nop                  	;.
l6f2fh:
	ram:6f2f 44             ld b,h               	;D
	ram:6f30 55             ld d,l               	;U
	ram:6f31 50             ld d,b               	;P
	ram:6f32 4c             ld c,h               	;L
	ram:6f33 49             ld c,c               	;I
	ram:6f34 43             ld b,e               	;C
	ram:6f35 41             ld b,c               	;A
	ram:6f36 54             ld d,h               	;T
	ram:6f37 45             ld b,l               	;E
	ram:6f38 20 4e          jr nz,80             	;N
	ram:6f3a 41             ld b,c               	;A
	ram:6f3b 4d             ld c,l               	;M
	ram:6f3c 45             ld b,l               	;E
	ram:6f3d 00             nop                  	;.
l6f3eh:
	ram:6f3e 44             ld b,h               	;D
	ram:6f3f 45             ld b,l               	;E
	ram:6f40 4c             ld c,h               	;L
	ram:6f41 45             ld b,l               	;E
	ram:6f42 54             ld d,h               	;T
	ram:6f43 45             ld b,l               	;E
	ram:6f44 20 20          jr nz,sub_6f66h      	;
	ram:6f46 20 20          jr nz,34             	;
	ram:6f48 20 20          jr nz,l6f6ah         	;
	ram:6f4a 20 20          jr nz,34             	;
	ram:6f4c 42             ld b,d               	;B
	ram:6f4d 59             ld e,c               	;Y
	ram:6f4e 54             ld d,h               	;T
	ram:6f4f 45             ld b,l               	;E
	ram:6f50 53             ld d,e               	;S
	ram:6f51 00             nop                  	;.
; END looks like data table
sub_6f52h:
	ram:6f52 e7             rst 20h              	;.
sub_6f53h:
	ram:6f53 21 00 01       ld hl,00100h         	;! . .
	ram:6f56 22 0c 80       ld (0800ch),hl       	;" . .
l6f59h:
	ram:6f59 21 82 80       ld hl,08082h         	;! . .
	ram:6f5c cd 45 3e       call 03e45h          	;. E >
	ram:6f5f c9             ret                  	;.
l6f60h:
	ram:6f60 21 df 6e       ld hl,l6edfh         	;! . n
	ram:6f63 01 0e 00       ld bc,0000eh         	;. . .
sub_6f66h:
	ram:6f66 ed 53 0c 80    ld (0800ch),de       	;. S . .
l6f6ah:
	ram:6f6a 11 82 80       ld de,08082h         	;. . .
	ram:6f6d ed b0          ldir                 	;. .
l6f6fh:
	ram:6f6f 18 e8          jr l6f59h            	;. .
sub_6f71h:
	ram:6f71 3a 13 83       ld a,(08313h)        	;: . .
	ram:6f74 fe 04          cp 004h              	;. .
	ram:6f76 c8             ret z                	;.
	ram:6f77 fe 02          cp 002h              	;. .
	ram:6f79 c9             ret                  	;.
l6f7ah:
	ram:6f7a cd 71 6f       call sub_6f71h       	;. q o
	ram:6f7d c0             ret nz               	;.
	ram:6f7e cd e5 70       call sub_70e5h       	;. . p
	ram:6f81 c8             ret z                	;.
	ram:6f82 cd a8 6f       call sub_6fa8h       	;. . o
	ram:6f85 20 0f          jr nz,l6f96h         	;.
l6f87h:
	ram:6f87 cd 59 3c       call 03c59h          	;. Y <
	ram:6f8a da b8 70       jp c,sub_70b8h       	;. . p
	ram:6f8d cb 7e          bit 7,(hl)           	;. ~
	ram:6f8f 28 f6          jr z,l6f87h          	;( .
	ram:6f91 cd d7 70       call sub_70d7h       	;. . p
	ram:6f94 18 06          jr l6f9ch            	;. .
l6f96h:
	ram:6f96 cd 22 71       call sub_7122h       	;. " q
	ram:6f99 ca b8 70       jp z,sub_70b8h       	;. . p
l6f9ch:
	ram:6f9c cd e4 6f       call sub_6fe4h       	;. . o
	ram:6f9f cd 97 3d       call 03d97h          	;. . =
	ram:6fa2 fc 19 70       call m,sub_7019h     	;. . p
	ram:6fa5 c3 72 71       jp sub_7172h         	;. r q
sub_6fa8h:
	ram:6fa8 cd c6 70       call sub_70c6h       	;. . p
	ram:6fab 3a 13 83       ld a,(08313h)        	;: . .
	ram:6fae fe 02          cp 002h              	;. .
	ram:6fb0 c0             ret nz               	;.
	ram:6fb1 cd 56 20       call 02056h          	;. V  
	ram:6fb4 af             xor a                	;.
	ram:6fb5 c9             ret                  	;.
l6fb6h:
	ram:6fb6 cd 71 6f       call sub_6f71h       	;. q o
	ram:6fb9 c0             ret nz               	;.
	ram:6fba cd e5 70       call sub_70e5h       	;. . p
	ram:6fbd c8             ret z                	;.
	ram:6fbe cd a8 6f       call sub_6fa8h       	;. . o
	ram:6fc1 20 0f          jr nz,l6fd2h         	;.
l6fc3h:
	ram:6fc3 cd 53 3c       call 03c53h          	;. S <
	ram:6fc6 da b8 70       jp c,sub_70b8h       	;. . p
	ram:6fc9 cb 7e          bit 7,(hl)           	;. ~
	ram:6fcb 28 f6          jr z,l6fc3h          	;( .
	ram:6fcd cd d7 70       call sub_70d7h       	;. . p
	ram:6fd0 18 06          jr l6fd8h            	;. .
l6fd2h:
	ram:6fd2 cd dc 70       call sub_70dch       	;. . p
	ram:6fd5 ca b8 70       jp z,sub_70b8h       	;. . p
l6fd8h:
	ram:6fd8 cd e4 6f       call sub_6fe4h       	;. . o
	ram:6fdb cd 9d 3d       call 03d9dh          	;. . =
	ram:6fde d4 19 70       call nc,sub_7019h    	;. . p
	ram:6fe1 c3 72 71       jp sub_7172h         	;. r q
sub_6fe4h:
	ram:6fe4 af             xor a                	;.
	ram:6fe5 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6fe8 3e 20          ld a,020h            	;>  
	ram:6fea cd cd 3d       call 03dcdh          	;. . =
	ram:6fed cd 56 20       call 02056h          	;. V  
sub_6ff0h:
	ram:6ff0 3e d0          ld a,0d0h            	;> .
l6ff2h:
	ram:6ff2 f5             push af              	;.
	ram:6ff3 3a 13 83       ld a,(08313h)        	;: . .
	ram:6ff6 fe 04          cp 004h              	;. .
	ram:6ff8 28 02          jr z,l6ffch          	;( .
l6ffah:
	ram:6ffa f1             pop af               	;.
	ram:6ffb c9             ret                  	;.
l6ffch:
	ram:6ffc cd 80 72       call sub_7280h       	;. . r
	ram:6fff cb 7e          bit 7,(hl)           	;. ~
	ram:7001 28 f7          jr z,l6ffah          	;( .
	ram:7003 af             xor a                	;.
	ram:7004 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7007 f1             pop af               	;.
	ram:7008 cd cd 3d       call 03dcdh          	;. . =
	ram:700b c9             ret                  	;.
sub_700ch:
	ram:700c 21 c5 80       ld hl,080c5h         	;! . .
	ram:700f 7e             ld a,(hl)            	;~
	ram:7010 cb e6          set 4,(hl)           	;. .
	ram:7012 cb 67          bit 4,a              	;. g
	ram:7014 28 03          jr z,sub_7019h       	;( .
	ram:7016 cd 9d 3d       call 03d9dh          	;. . =
sub_7019h:
	ram:7019 af             xor a                	;.
	ram:701a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:701d 3e 20          ld a,020h            	;>  
	ram:701f cd c5 3f       call 03fc5h          	;. . ?
	ram:7022 21 d0 81       ld hl,081d0h         	;! . .
	ram:7025 7e             ld a,(hl)            	;~
	ram:7026 d6 17          sub 017h             	;. .
	ram:7028 30 2c          jr nc,l7056h         	;0 ,
	ram:702a 23             inc hl               	;#
l702bh:
	ram:702b cd 5d 3b       call 03b5dh          	;. ] ;
	ram:702e cd c1 3d       call 03dc1h          	;. . =
	ram:7031 3e 0c          ld a,00ch            	;> .
	ram:7033 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7036 3a d0 81       ld a,(081d0h)        	;: . .
	ram:7039 cd 4d 3c       call 03c4dh          	;. M <
	ram:703c cd 64 70       call sub_7064h       	;. d p
	ram:703f cd 0b 21       call 0210bh          	;. . !
	ram:7042 21 8d 80       ld hl,0808dh         	;! . .
	ram:7045 cd 45 3e       call 03e45h          	;. E >
	ram:7048 c9             ret                  	;.
sub_7049h:
	ram:7049 21 57 72       ld hl,l7257h         	;! W r
sub_704ch:
	ram:704c 87             add a,a              	;.
l704dh:
	ram:704d 16 00          ld d,000h            	;. .
	ram:704f 5f             ld e,a               	;_
	ram:7050 19             add hl,de            	;.
	ram:7051 5e             ld e,(hl)            	;^
	ram:7052 23             inc hl               	;#
	ram:7053 56             ld d,(hl)            	;V
	ram:7054 eb             ex de,hl             	;.
	ram:7055 c9             ret                  	;.
l7056h:
	ram:7056 21 4d 72       ld hl,l724dh         	;! M r
	ram:7059 cd 4c 70       call sub_704ch       	;. L p
	ram:705c cd 0b 21       call 0210bh          	;. . !
	ram:705f 21 8d 80       ld hl,0808dh         	;! . .
	ram:7062 18 c7          jr l702bh            	;. .
sub_7064h:
	ram:7064 21 b9 71       ld hl,l71b9h         	;! . q
	ram:7067 e6 1f          and 01fh             	;. .
	ram:7069 c8             ret z                	;.
	ram:706a 21 97 71       ld hl,l7197h         	;! . q
	ram:706d fe 0a          cp 00ah              	;. .
	ram:706f c8             ret z                	;.
	ram:7070 30 07          jr nc,l7079h         	;0 .
	ram:7072 e6 1e          and 01eh             	;. .
	ram:7074 21 83 71       ld hl,l7183h         	;! . q
	ram:7077 18 d4          jr l704dh            	;. .
l7079h:
	ram:7079 21 be 71       ld hl,l71beh         	;! . q
	ram:707c fe 0c          cp 00ch              	;. .
	ram:707e c8             ret z                	;.
	ram:707f 21 9b 71       ld hl,l719bh         	;! . q
	ram:7082 fe 0d          cp 00dh              	;. .
	ram:7084 c8             ret z                	;.
	ram:7085 21 aa 71       ld hl,l71aah         	;! . q
	ram:7088 fe 11          cp 011h              	;. .
	ram:708a c8             ret z                	;.
	ram:708b 21 ae 71       ld hl,l71aeh         	;! . q
	ram:708e fe 12          cp 012h              	;. .
	ram:7090 c8             ret z                	;.
	ram:7091 21 b3 71       ld hl,l71b3h         	;! . q
	ram:7094 c9             ret                  	;.
sub_7095h:
	ram:7095 21 01 40       ld hl,l4001h         	;! . @
	ram:7098 22 d1 81       ld (081d1h),hl       	;" . .
	ram:709b cd 4b 3e       call 03e4bh          	;. K >
	ram:709e cd dc 70       call sub_70dch       	;. . p
	ram:70a1 c8             ret z                	;.
	ram:70a2 cd c6 70       call sub_70c6h       	;. . p
l70a5h:
	ram:70a5 cd 19 70       call sub_7019h       	;. . p
	ram:70a8 cd f0 6f       call sub_6ff0h       	;. . o
	ram:70ab cd a9 3d       call 03da9h          	;. . =
	ram:70ae cd af 3d       call 03dafh          	;. . =
	ram:70b1 30 05          jr nc,sub_70b8h      	;0 .
	ram:70b3 cd dc 70       call sub_70dch       	;. . p
	ram:70b6 20 ed          jr nz,l70a5h         	;.
sub_70b8h:
	ram:70b8 21 a3 80       ld hl,080a3h         	;! . .
l70bbh:
	ram:70bb 11 d0 81       ld de,081d0h         	;. . .
l70beh:
	ram:70be c3 9d 20       jp 0209dh            	;. .  
sub_70c1h:
	ram:70c1 11 82 80       ld de,08082h         	;. . .
	ram:70c4 18 03          jr l70c9h            	;. .
sub_70c6h:
	ram:70c6 11 a3 80       ld de,080a3h         	;. . .
l70c9h:
	ram:70c9 21 d0 81       ld hl,081d0h         	;! . .
	ram:70cc 18 f0          jr l70beh            	;. .
l70ceh:
	ram:70ce cd c1 70       call sub_70c1h       	;. . p
	ram:70d1 cd b8 70       call sub_70b8h       	;. . p
	ram:70d4 cd 19 70       call sub_7019h       	;. . p
sub_70d7h:
	ram:70d7 21 82 80       ld hl,08082h         	;! . .
	ram:70da 18 df          jr l70bbh            	;. .
sub_70dch:
	ram:70dc cd c1 70       call sub_70c1h       	;. . p
	ram:70df cd ea 70       call sub_70eah       	;. . p
	ram:70e2 cd d7 70       call sub_70d7h       	;. . p
sub_70e5h:
	ram:70e5 3a d2 81       ld a,(081d2h)        	;: . .
	ram:70e8 3c             inc a                	;<
	ram:70e9 c9             ret                  	;.
sub_70eah:
	ram:70ea 3a 12 83       ld a,(08312h)        	;: . .
	ram:70ed fe 1f          cp 01fh              	;. .
	ram:70ef 20 0b          jr nz,l70fch         	;.
l70f1h:
	ram:70f1 cd 53 3c       call 03c53h          	;. S <
	ram:70f4 38 22          jr c,l7118h          	;8 "
	ram:70f6 cd 90 72       call sub_7290h       	;. . r
	ram:70f9 c0             ret nz               	;.
	ram:70fa 18 f5          jr l70f1h            	;. .
l70fch:
	ram:70fc fe 17          cp 017h              	;. .
	ram:70fe 20 0a          jr nz,l710ah         	;.
	ram:7100 cd 47 1f       call 01f47h          	;. G .
	ram:7103 fe 1b          cp 01bh              	;. .
	ram:7105 28 11          jr z,l7118h          	;( .
	ram:7107 3c             inc a                	;<
	ram:7108 18 45          jr l714fh            	;. E
l710ah:
	ram:710a af             xor a                	;.
	ram:710b fe 01          cp 001h              	;. .
	ram:710d cd 41 3c       call 03c41h          	;. A <
	ram:7110 38 06          jr c,l7118h          	;8 .
	ram:7112 cd 90 72       call sub_7290h       	;. . r
	ram:7115 c0             ret nz               	;.
	ram:7116 18 f2          jr l710ah            	;. .
l7118h:
	ram:7118 cd c1 70       call sub_70c1h       	;. . p
	ram:711b 21 01 ff       ld hl,0ff01h         	;! . .
	ram:711e 22 83 80       ld (08083h),hl       	;" . .
	ram:7121 c9             ret                  	;.
sub_7122h:
	ram:7122 cd c1 70       call sub_70c1h       	;. . p
	ram:7125 cd 31 71       call sub_7131h       	;. 1 q
	ram:7128 cd d7 70       call sub_70d7h       	;. . p
	ram:712b 3a d2 81       ld a,(081d2h)        	;: . .
	ram:712e fe 40          cp 040h              	;. @
	ram:7130 c9             ret                  	;.
sub_7131h:
	ram:7131 3a 12 83       ld a,(08312h)        	;: . .
	ram:7134 fe 1f          cp 01fh              	;. .
	ram:7136 20 0b          jr nz,l7143h         	;.
l7138h:
	ram:7138 cd 59 3c       call 03c59h          	;. Y <
	ram:713b 38 2a          jr c,l7167h          	;8 *
	ram:713d cd 90 72       call sub_7290h       	;. . r
	ram:7140 c0             ret nz               	;.
	ram:7141 18 f5          jr l7138h            	;. .
l7143h:
	ram:7143 fe 17          cp 017h              	;. .
	ram:7145 20 12          jr nz,l7159h         	;.
	ram:7147 cd 47 1f       call 01f47h          	;. G .
	ram:714a fe 17          cp 017h              	;. .
	ram:714c 28 19          jr z,l7167h          	;( .
	ram:714e 3d             dec a                	;=
l714fh:
	ram:714f 32 82 80       ld (08082h),a        	;2 . .
	ram:7152 21 01 00       ld hl,00001h         	;! . .
	ram:7155 22 83 80       ld (08083h),hl       	;" . .
	ram:7158 c9             ret                  	;.
l7159h:
	ram:7159 af             xor a                	;.
	ram:715a fe 01          cp 001h              	;. .
	ram:715c cd 47 3c       call 03c47h          	;. G <
	ram:715f 38 06          jr c,l7167h          	;8 .
	ram:7161 cd 90 72       call sub_7290h       	;. . r
	ram:7164 c0             ret nz               	;.
	ram:7165 18 f2          jr l7159h            	;. .
l7167h:
	ram:7167 cd 33 26       call 02633h          	;. 3 &
	ram:716a c9             ret                  	;.
l716bh:
	ram:716b cd e5 70       call sub_70e5h       	;. . p
	ram:716e c8             ret z                	;.
 ; BEGIN Looks like data table
	ram:716f cd 4b 3e       call 03e4bh          	;. K >
sub_7172h:
	ram:7172 af             xor a                	;.
	ram:7173 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7176 3e 05          ld a,005h            	;> .
	ram:7178 cd cd 3d       call 03dcdh          	;. . =
	ram:717b cd c1 70       call sub_70c1h       	;. . p
	ram:717e 3e d7          ld a,0d7h            	;> .
	ram:7180 c3 f2 6f       jp l6ff2h            	;. . o
l7183h:
	ram:7183 92             sub d                	;.
	ram:7184 71             ld (hl),c            	;q
	ram:7185 c4 71 9f       call nz,09f71h       	;. q .
	ram:7188 71             ld (hl),c            	;q
	ram:7189 a4             and h                	;.
	ram:718a 71             ld (hl),c            	;q
	ram:718b 8d             adc a,l              	;.
	ram:718c 71             ld (hl),c            	;q
	ram:718d 43             ld b,e               	;C
	ram:718e 4f             ld c,a               	;O
	ram:718f 4e             ld c,(hl)            	;N
	ram:7190 53             ld d,e               	;S
	ram:7191 00             nop                  	;.
	ram:7192 43             ld b,e               	;C
	ram:7193 50             ld d,b               	;P
	ram:7194 4c             ld c,h               	;L
	ram:7195 58             ld e,b               	;X
	ram:7196 00             nop                  	;.
l7197h:
	ram:7197 45             ld b,l               	;E
	ram:7198 51             ld d,c               	;Q
	ram:7199 55             ld d,l               	;U
	ram:719a 00             nop                  	;.
l719bh:
	ram:719b 47             ld b,a               	;G
	ram:719c 44             ld b,h               	;D
	ram:719d 42             ld b,d               	;B
	ram:719e 00             nop                  	;.
	ram:719f 4c             ld c,h               	;L
	ram:71a0 49             ld c,c               	;I
	ram:71a1 53             ld d,e               	;S
	ram:71a2 54             ld d,h               	;T
	ram:71a3 00             nop                  	;.
	ram:71a4 4d             ld c,l               	;M
	ram:71a5 41             ld b,c               	;A
	ram:71a6 54             ld d,h               	;T
	ram:71a7 52             ld d,d               	;R
	ram:71a8 58             ld e,b               	;X
	ram:71a9 00             nop                  	;.
l71aah:
	ram:71aa 50             ld d,b               	;P
	ram:71ab 49             ld c,c               	;I
	ram:71ac 43             ld b,e               	;C
	ram:71ad 00             nop                  	;.
l71aeh:
	ram:71ae 50             ld d,b               	;P
	ram:71af 52             ld d,d               	;R
	ram:71b0 47             ld b,a               	;G
	ram:71b1 4d             ld c,l               	;M
	ram:71b2 00             nop                  	;.
l71b3h:
	ram:71b3 52             ld d,d               	;R
	ram:71b4 41             ld b,c               	;A
	ram:71b5 4e             ld c,(hl)            	;N
	ram:71b6 47             ld b,a               	;G
	ram:71b7 45             ld b,l               	;E
	ram:71b8 00             nop                  	;.
l71b9h:
	ram:71b9 52             ld d,d               	;R
	ram:71ba 45             ld b,l               	;E
	ram:71bb 41             ld b,c               	;A
	ram:71bc 4c             ld c,h               	;L
	ram:71bd 00             nop                  	;.
l71beh:
	ram:71be 53             ld d,e               	;S
	ram:71bf 54             ld d,h               	;T
	ram:71c0 52             ld d,d               	;R
	ram:71c1 4e             ld c,(hl)            	;N
	ram:71c2 47             ld b,a               	;G
	ram:71c3 00             nop                  	;.
	ram:71c4 56             ld d,(hl)            	;V
	ram:71c5 45             ld b,l               	;E
	ram:71c6 43             ld b,e               	;C
	ram:71c7 54             ld d,h               	;T
	ram:71c8 52             ld d,d               	;R
	ram:71c9 00             nop                  	;.
; END Looks like data table
sub_71cah:
	ram:71ca cd 95 3c       call 03c95h          	;. . <
	ram:71cd fd cb 0d ce    set 1,(iy+00dh)      	;. . . .
sub_71d1h:
	ram:71d1 21 14 83       ld hl,08314h         	;! . .
	ram:71d4 7e             ld a,(hl)            	;~
	ram:71d5 36 00          ld (hl),000h         	;6 .
	ram:71d7 c9             ret                  	;.
sub_71d8h:
	ram:71d8 32 37 83       ld (08337h),a        	;2 7 .
	ram:71db 3a 13 83       ld a,(08313h)        	;: . .
	ram:71de fe 15          cp 015h              	;. .
	ram:71e0 ca 8a 0a       jp z,00a8ah          	;. . .
	ram:71e3 fe 0a          cp 00ah              	;. .
	ram:71e5 ca e3 6a       jp z,sub_6ae3h       	;. . j
	ram:71e8 fe 0b          cp 00bh              	;. .
	ram:71ea ca e3 6a       jp z,sub_6ae3h       	;. . j
	ram:71ed 78             ld a,b               	;x
	ram:71ee 32 14 83       ld (08314h),a        	;2 . .
	ram:71f1 d5             push de              	;.
	ram:71f2 fd cb 0d 8e    res 1,(iy+00dh)      	;. . . .
	ram:71f6 cd ab 3b       call 03babh          	;. . ;
	ram:71f9 cd c7 34       call 034c7h          	;. . 4
	ram:71fc f1             pop af               	;.
	ram:71fd cd ad 6c       call sub_6cadh       	;. . l
	ram:7200 11 01 00       ld de,00001h         	;. . .
	ram:7203 c9             ret                  	;.
l7204h:
	ram:7204 e1             pop hl               	;.
	ram:7205 22 d2 8b       ld (08bd2h),hl       	;" . .
	ram:7208 3a 13 83       ld a,(08313h)        	;: . .
	ram:720b fe 15          cp 015h              	;. .
	ram:720d 28 04          jr z,l7213h          	;( .
	ram:720f fe 11          cp 011h              	;. .
	ram:7211 20 0a          jr nz,l721dh         	;.
l7213h:
	ram:7213 21 c5 80       ld hl,080c5h         	;! . .
	ram:7216 cb 4e          bit 1,(hl)           	;. N
	ram:7218 28 03          jr z,l721dh          	;( .
	ram:721a cd 70 6d       call sub_6d70h       	;. p m
l721dh:
	ram:721d 3a 13 83       ld a,(08313h)        	;: . .
	ram:7220 fe 15          cp 015h              	;. .
	ram:7222 ca 8a 0a       jp z,00a8ah          	;. . .
	ram:7225 37             scf                  	;7
	ram:7226 18 01          jr l7229h            	;. .
l7228h:
	ram:7228 af             xor a                	;.
l7229h:
	ram:7229 f5             push af              	;.
	ram:722a cd e1 72       call sub_72e1h       	;. . r
	ram:722d cd e3 6a       call sub_6ae3h       	;. . j
	ram:7230 06 01          ld b,001h            	;. .
	ram:7232 16 62          ld d,062h            	;. b
	ram:7234 3e 23          ld a,023h            	;> #
	ram:7236 cd d8 71       call sub_71d8h       	;. . q
	ram:7239 01 13 00       ld bc,00013h         	;. . .
	ram:723c 21 1c 6f       ld hl,l6f1ch         	;! . o
	ram:723f cd 66 6f       call sub_6f66h       	;. f o
	ram:7242 cd 9d 3d       call 03d9dh          	;. . =
	ram:7245 f1             pop af               	;.
	ram:7246 d0             ret nc               	;.
	ram:7247 cd c6 70       call sub_70c6h       	;. . p
	ram:724a c3 ce 70       jp l70ceh            	;. . p
l724dh:
	ram:724d 61             ld h,c               	;a
	ram:724e 72             ld (hl),d            	;r
	ram:724f 67             ld h,a               	;g
	ram:7250 72             ld (hl),d            	;r
	ram:7251 6c             ld l,h               	;l
	ram:7252 72             ld (hl),d            	;r
	ram:7253 73             ld (hl),e            	;s
	ram:7254 72             ld (hl),d            	;r
	ram:7255 7a             ld a,d               	;z
	ram:7256 72             ld (hl),d            	;r
l7257h:
	ram:7257 60             ld h,b               	;`
	ram:7258 84             add a,h              	;.
	ram:7259 b3             or e                 	;.
	ram:725a 84             add a,h              	;.
	djnz -121		;725b	10 85		. .
	ram:725d 6d             ld l,l               	;m
	ram:725e 85             add a,l              	;.
	ram:725f 8c             adc a,h              	;.
	ram:7260 83             add a,e              	;.
	ram:7261 04             inc b                	;.
	ram:7262 46             ld b,(hl)            	;F
	ram:7263 75             ld (hl),l            	;u
	ram:7264 6e             ld l,(hl)            	;n
	ram:7265 63             ld h,e               	;c
	ram:7266 00             nop                  	;.
	ram:7267 03             inc bc               	;.
	ram:7268 50             ld d,b               	;P
	ram:7269 6f             ld l,a               	;o
	ram:726a 6c             ld l,h               	;l
	ram:726b 00             nop                  	;.
	ram:726c 05             dec b                	;.
	ram:726d 50             ld d,b               	;P
	ram:726e 61             ld h,c               	;a
	ram:726f 72             ld (hl),d            	;r
	ram:7270 61             ld h,c               	;a
	ram:7271 6d             ld l,l               	;m
	ram:7272 00             nop                  	;.
	ram:7273 05             dec b                	;.
	ram:7274 44             ld b,h               	;D
	ram:7275 69             ld l,c               	;i
	ram:7276 66             ld h,(hl)            	;f
	ram:7277 45             ld b,l               	;E
	ram:7278 71             ld (hl),c            	;q
	ram:7279 00             nop                  	;.
	ram:727a 04             inc b                	;.
	ram:727b 5a             ld e,d               	;Z
	ram:727c 52             ld d,d               	;R
	ram:727d 43             ld b,e               	;C
	ram:727e 4c             ld c,h               	;L
	ram:727f 00             nop                  	;.
sub_7280h:
	ram:7280 cd 47 1f       call 01f47h          	;. G .
	ram:7283 fe 17          cp 017h              	;. .
	ram:7285 da c8 26       jp c,026c8h          	;. . &
sub_7288h:
	ram:7288 21 c1 80       ld hl,080c1h         	;! . .
	ram:728b 5f             ld e,a               	;_
	ram:728c 16 00          ld d,000h            	;. .
	ram:728e 19             add hl,de            	;.
	ram:728f c9             ret                  	;.
sub_7290h:
	ram:7290 cf             rst 8                	;.
	ram:7291 cd 12 26       call 02612h          	;. . &
	ram:7294 cd ed 3b       call 03bedh          	;. . ;
	ram:7297 c8             ret z                	;.
	ram:7298 cd 91 37       call 03791h          	;. . 7
	ram:729b cd ed 3b       call 03bedh          	;. . ;
	ram:729e f5             push af              	;.
	ram:729f cd 95 20       call 02095h          	;. .  
	ram:72a2 f1             pop af               	;.
	ram:72a3 c9             ret                  	;.
sub_72a4h:
	ram:72a4 cd 15 01       call 00115h          	;. . .
	ram:72a7 cd 50 65       call sub_6550h       	;. P e
	ram:72aa cd 28 65       call sub_6528h       	;. ( e
	ram:72ad 3a 16 83       ld a,(08316h)        	;: . .
	ram:72b0 c9             ret                  	;.
sub_72b1h:
	ram:72b1 06 10          ld b,010h            	;. .
	ram:72b3 fe 17          cp 017h              	;. .
	ram:72b5 28 0c          jr z,l72c3h          	;( .
	ram:72b7 fe 19          cp 019h              	;. .
	ram:72b9 38 06          jr c,l72c1h          	;8 .
	ram:72bb 28 02          jr z,l72bfh          	;( .
	ram:72bd cb 20          sla b                	;.  
l72bfh:
	ram:72bf cb 20          sla b                	;.  
l72c1h:
	ram:72c1 cb 20          sla b                	;.  
l72c3h:
	ram:72c3 78             ld a,b               	;x
	ram:72c4 c9             ret                  	;.
sub_72c5h:
	ram:72c5 e6 f0          and 0f0h             	;. .
	ram:72c7 fe 20          cp 020h              	;.  
	ram:72c9 30 04          jr nc,l72cfh         	;0 .
	ram:72cb cd c9 3b       call 03bc9h          	;. . ;
	ram:72ce c9             ret                  	;.
l72cfh:
	ram:72cf 20 04          jr nz,l72d5h         	;.
	ram:72d1 cd cf 3b       call 03bcfh          	;. . ;
	ram:72d4 c9             ret                  	;.
l72d5h:
	ram:72d5 fe 40          cp 040h              	;. @
	ram:72d7 20 04          jr nz,l72ddh         	;.
	ram:72d9 cd d5 3b       call 03bd5h          	;. . ;
	ram:72dc c9             ret                  	;.
l72ddh:
	ram:72dd cd db 3b       call 03bdbh          	;. . ;
	ram:72e0 c9             ret                  	;.
sub_72e1h:
	ram:72e1 fd cb 12 d6    set 2,(iy+012h)      	;. . . .
	ram:72e5 3e fc          ld a,0fch            	;> .
	ram:72e7 d3 07          out (007h),a         	;. .
	ram:72e9 21 ff ff       ld hl,0ffffh         	;! . .
l72ech:
	ram:72ec 3e 04          ld a,004h            	;> .
l72eeh:
	ram:72ee 00             nop                  	;.
	ram:72ef 00             nop                  	;.
	ram:72f0 00             nop                  	;.
	ram:72f1 00             nop                  	;.
	ram:72f2 3d             dec a                	;=
	ram:72f3 20 f9          jr nz,l72eeh         	;.
	ram:72f5 2b             dec hl               	;+
	ram:72f6 7c             ld a,h               	;|
	ram:72f7 b5             or l                 	;.
	ram:72f8 20 f2          jr nz,l72ech         	;.
	ram:72fa 3e c0          ld a,0c0h            	;> .
	ram:72fc d3 07          out (007h),a         	;. .
	ram:72fe cd e3 6a       call sub_6ae3h       	;. . j
	ram:7301 c9             ret                  	;.
sub_7302h:
	ram:7302 21 10 73       ld hl,l7310h         	;! . s
	ram:7305 cd b5 0a       call 00ab5h          	;. . .
	ram:7308 3e 01          ld a,001h            	;> .
	ram:730a cd 91 63       call sub_6391h       	;. . c
	ram:730d cd db 0a       call 00adbh          	;. . .
l7310h:
	ram:7310 c9             ret                  	;.
sub_7311h:
	ram:7311 cd 0b 2c       call 02c0bh          	;. . ,
	ram:7314 3a 84 80       ld a,(08084h)        	;: . .
	ram:7317 ee 01          xor 001h             	;. .
	ram:7319 32 84 80       ld (08084h),a        	;2 . .
	ram:731c d7             rst 10h              	;.
	ram:731d cd 0b 2c       call 02c0bh          	;. . ,
sub_7320h:
	ram:7320 3a 84 80       ld a,(08084h)        	;: . .
	ram:7323 ee 01          xor 001h             	;. .
	ram:7325 32 84 80       ld (08084h),a        	;2 . .
	ram:7328 c9             ret                  	;.
	ram:7329 3e 15          ld a,015h            	;> .
	ram:732b 32 13 83       ld (08313h),a        	;2 . .
	ram:732e 21 e3 6a       ld hl,sub_6ae3h      	;! . j
	ram:7331 cd b5 0a       call 00ab5h          	;. . .
	ram:7334 11 20 83       ld de,08320h         	;.   .
	ram:7337 cd 11 21       call 02111h          	;. . !
	ram:733a 3a 13 83       ld a,(08313h)        	;: . .
	ram:733d fe 15          cp 015h              	;. .
	ram:733f 3e a2          ld a,0a2h            	;> .
	ram:7341 28 02          jr z,l7345h          	;( .
	ram:7343 3e b7          ld a,0b7h            	;> .
l7345h:
	ram:7345 21 0c 00       ld hl,0000ch         	;! . .
	ram:7348 cd 8b 63       call l638bh          	;. . c
	ram:734b cd a4 72       call sub_72a4h       	;. . r
	ram:734e fe 36          cp 036h              	;. 6
	ram:7350 20 06          jr nz,l7358h         	;.
	ram:7352 cd b3 64       call sub_64b3h       	;. . d
l7355h:
	ram:7355 c3 87 0a       jp 00a87h            	;. . .
l7358h:
	ram:7358 fe 06          cp 006h              	;. .
	ram:735a 20 f9          jr nz,l7355h         	;.
	ram:735c cd 8e 64       call sub_648eh       	;. . d
	ram:735f cd db 0a       call 00adbh          	;. . .
	ram:7362 3a 13 83       ld a,(08313h)        	;: . .
	ram:7365 fe 15          cp 015h              	;. .
	ram:7367 ca f3 66       jp z,l66f3h          	;. . f
	ram:736a 21 e3 6a       ld hl,sub_6ae3h      	;! . j
	ram:736d cd b5 0a       call 00ab5h          	;. . .
	ram:7370 cd 60 1f       call 01f60h          	;. ` .
	ram:7373 3e ff          ld a,0ffh            	;> .
	ram:7375 32 97 80       ld (08097h),a        	;2 . .
	ram:7378 cd 0d 64       call sub_640dh       	;. . d
	ram:737b 11 82 80       ld de,08082h         	;. . .
	ram:737e ed 4b 1e 83    ld bc,(0831eh)       	;. K . .
	ram:7382 cd 96 64       call sub_6496h       	;. . d
	ram:7385 af             xor a                	;.
	ram:7386 32 97 80       ld (08097h),a        	;2 . .
l7389h:
	ram:7389 c3 e0 6a       jp l6ae0h            	;. . j
	ram:738c 21 e3 6a       ld hl,sub_6ae3h      	;! . j
	ram:738f cd b5 0a       call 00ab5h          	;. . .
	ram:7392 3e 0b          ld a,00bh            	;> .
	ram:7394 32 13 83       ld (08313h),a        	;2 . .
	ram:7397 3e c9          ld a,0c9h            	;> .
	ram:7399 cd 9e 73       call sub_739eh       	;. . s
	ram:739c 18 eb          jr l7389h            	;. .
sub_739eh:
	ram:739e f5             push af              	;.
	ram:739f d7             rst 10h              	;.
	ram:73a0 30 07          jr nc,l73a9h         	;0 .
l73a2h:
	ram:73a2 f1             pop af               	;.
	ram:73a3 3e 01          ld a,001h            	;> .
	ram:73a5 cd 91 63       call sub_6391h       	;. . c
	ram:73a8 c9             ret                  	;.
l73a9h:
	ram:73a9 e6 1f          and 01fh             	;. .
	ram:73ab fe 14          cp 014h              	;. .
	ram:73ad 28 f3          jr z,l73a2h          	;( .
	ram:73af 32 82 80       ld (08082h),a        	;2 . .
	ram:73b2 eb             ex de,hl             	;.
	ram:73b3 cd 3f 2d       call 02d3fh          	;. ? -
	ram:73b6 f1             pop af               	;.
	ram:73b7 cd 7a 63       call sub_637ah       	;. z c
	ram:73ba 3a 13 83       ld a,(08313h)        	;: . .
	ram:73bd fe 0a          cp 00ah              	;. .
	ram:73bf 28 06          jr z,l73c7h          	;( .
	ram:73c1 78             ld a,b               	;x
	ram:73c2 fe 85          cp 085h              	;. .
	ram:73c4 ca 87 0a       jp z,00a87h          	;. . .
l73c7h:
	ram:73c7 cd a4 72       call sub_72a4h       	;. . r
	ram:73ca fe 09          cp 009h              	;. .
	ram:73cc c2 87 0a       jp nz,00a87h         	;. . .
	ram:73cf cd 08 65       call sub_6508h       	;. . e
	ram:73d2 d7             rst 10h              	;.
	ram:73d3 30 06          jr nc,l73dbh         	;0 .
	ram:73d5 3e 01          ld a,001h            	;> .
	ram:73d7 cd 91 63       call sub_6391h       	;. . c
	ram:73da c9             ret                  	;.
l73dbh:
	ram:73db eb             ex de,hl             	;.
	ram:73dc cd 3f 2d       call 02d3fh          	;. ? -
	ram:73df cd a5 63       call sub_63a5h       	;. . c
	ram:73e2 3a 13 83       ld a,(08313h)        	;: . .
	ram:73e5 fe 0b          cp 00bh              	;. .
	ram:73e7 ca 09 64       jp z,sub_6409h       	;. . d
	ram:73ea c9             ret                  	;.
	ram:73eb fd cb 07 4e    bit 1,(iy+007h)      	;. . . N
	ram:73ef c2 51 0a       jp nz,00a51h         	;. Q .
	ram:73f2 cd 1f 2f       call 02f1fh          	;. . /
	ram:73f5 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:73f8 e6 1f          and 01fh             	;. .
	ram:73fa c2 28 0a       jp nz,00a28h         	;. ( .
	ram:73fd cd 22 26       call 02622h          	;. " &
	ram:7400 cd f5 1f       call 01ff5h          	;. . .
	ram:7403 cd 88 1f       call 01f88h          	;. . .
	ram:7406 f5             push af              	;.
	ram:7407 cd 56 20       call 02056h          	;. V  
	ram:740a cd 1f 2f       call 02f1fh          	;. . /
	ram:740d 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:7410 f1             pop af               	;.
	ram:7411 38 03          jr c,l7416h          	;8 .
	ram:7413 2a 83 80       ld hl,(08083h)       	;* . .
l7416h:
	ram:7416 e5             push hl              	;.
	ram:7417 cd 71 0d       call 00d71h          	;. q .
	ram:741a cd 63 38       call 03863h          	;. c 8
	ram:741d cd 4a 2e       call 02e4ah          	;. J .
	ram:7420 cd 98 21       call 02198h          	;. . !
	ram:7423 06 0c          ld b,00ch            	;. .
l7425h:
	ram:7425 c5             push bc              	;.
	ram:7426 cd 4a 2e       call 02e4ah          	;. J .
	ram:7429 c1             pop bc               	;.
	ram:742a 10 f9          djnz l7425h          	;. .
	ram:742c ed 53 29 86    ld (08629h),de       	;. S ) .
	ram:7430 ed 53 3f 86    ld (0863fh),de       	;. S ? .
	ram:7434 cd 9e 61       call sub_619eh       	;. . a
	ram:7437 cd 52 0e       call 00e52h          	;. R .
	ram:743a cd 30 62       call sub_6230h       	;. 0 b
	ram:743d cd 3e 21       call 0213eh          	;. > !
	ram:7440 cd 65 62       call sub_6265h       	;. e b
	ram:7443 cd a3 21       call 021a3h          	;. . !
	ram:7446 e1             pop hl               	;.
	ram:7447 22 8b 80       ld (0808bh),hl       	;" . .
	ram:744a 21 01 00       ld hl,00001h         	;! . .
	ram:744d 22 82 80       ld (08082h),hl       	;" . .
	ram:7450 cd f1 61       call sub_61f1h       	;. . a
	ram:7453 cd 85 20       call 02085h          	;. .  
	ram:7456 cd d4 61       call sub_61d4h       	;. . a
	ram:7459 cd a9 3a       call 03aa9h          	;. . :
	ram:745c fd cb 07 ce    set 1,(iy+007h)      	;. . . .
	ram:7460 21 60 77       ld hl,l7760h         	;! ` w
	ram:7463 cd b5 0a       call 00ab5h          	;. . .
	ram:7466 cd 93 21       call 02193h          	;. . !
	ram:7469 cd 45 2e       call 02e45h          	;. E .
	ram:746c cd af 3a       call 03aafh          	;. . :
	ram:746f cd 98 21       call 02198h          	;. . !
	ram:7472 cd 4a 2e       call 02e4ah          	;. J .
	ram:7475 cd 4a 2e       call 02e4ah          	;. J .
	ram:7478 cd 4a 2e       call 02e4ah          	;. J .
	ram:747b cd 25 78       call sub_7825h       	;. % x
	ram:747e cd 60 20       call 02060h          	;. `  
	ram:7481 cd 83 2f       call 02f83h          	;. . /
	ram:7484 cd fd 60       call sub_60fdh       	;. . `
	ram:7487 cd 01 78       call sub_7801h       	;. . x
l748ah:
	ram:748a cd 13 61       call sub_6113h       	;. . a
	ram:748d cd c9 77       call sub_77c9h       	;. . w
	ram:7490 cd e5 61       call sub_61e5h       	;. . a
	ram:7493 cd f8 60       call sub_60f8h       	;. . `
	ram:7496 cd 88 1f       call 01f88h          	;. . .
	ram:7499 d2 f9 75       jp nc,l75f9h         	;. . u
	ram:749c 3a b9 80       ld a,(080b9h)        	;: . .
	ram:749f b7             or a                 	;.
	ram:74a0 c2 ad 74       jp nz,l74adh         	;. . t
	ram:74a3 3a c0 80       ld a,(080c0h)        	;: . .
	ram:74a6 b7             or a                 	;.
	ram:74a7 c2 3c 0a       jp nz,00a3ch         	;. < .
	ram:74aa c3 81 0a       jp 00a81h            	;. . .
l74adh:
	ram:74ad 47             ld b,a               	;G
	ram:74ae 3a bb 80       ld a,(080bbh)        	;: . .
	ram:74b1 b7             or a                 	;.
	ram:74b2 20 41          jr nz,l74f5h         	;A
	ram:74b4 78             ld a,b               	;x
	ram:74b5 32 bb 80       ld (080bbh),a        	;2 . .
	ram:74b8 cd 70 61       call sub_6170h       	;. p a
	ram:74bb cd 66 0d       call 00d66h          	;. f .
	ram:74be cd 65 62       call sub_6265h       	;. e b
	ram:74c1 3a 85 80       ld a,(08085h)        	;: . .
	ram:74c4 fe 35          cp 035h              	;. 5
	ram:74c6 cc c3 77       call z,sub_77c3h     	;. . w
	ram:74c9 cd 66 0d       call 00d66h          	;. f .
	ram:74cc cf             rst 8                	;.
	ram:74cd cd 9e 61       call sub_619eh       	;. . a
	ram:74d0 cd 23 10       call 01023h          	;. # .
	ram:74d3 cd 30 62       call sub_6230h       	;. 0 b
	ram:74d6 3a bd 80       ld a,(080bdh)        	;: . .
	ram:74d9 b7             or a                 	;.
	ram:74da 20 19          jr nz,l74f5h         	;.
	ram:74dc cd d1 23       call 023d1h          	;. . #
	ram:74df 28 11          jr z,l74f2h          	;( .
	ram:74e1 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:74e5 2a c2 80       ld hl,(080c2h)       	;* . .
	ram:74e8 b7             or a                 	;.
	ram:74e9 ed 52          sbc hl,de            	;. R
	ram:74eb 38 08          jr c,l74f5h          	;8 .
	ram:74ed 11 0c 00       ld de,0000ch         	;. . .
	ram:74f0 ed 52          sbc hl,de            	;. R
l74f2h:
	ram:74f2 d4 c3 77       call nc,sub_77c3h    	;. . w
l74f5h:
	ram:74f5 cd fd 60       call sub_60fdh       	;. . `
	ram:74f8 cd 8d 61       call sub_618dh       	;. . a
	ram:74fb cd 71 0d       call 00d71h          	;. q .
	ram:74fe cd 73 25       call 02573h          	;. s %
	ram:7501 cf             rst 8                	;.
	ram:7502 cd 43 61       call sub_6143h       	;. C a
	ram:7505 cd 71 0d       call 00d71h          	;. q .
	ram:7508 cd 21 20       call 02021h          	;. !  
	ram:750b 2a bb 80       ld hl,(080bbh)       	;* . .
	ram:750e cd ef 39       call 039efh          	;. . 9
	ram:7511 cd 95 20       call 02095h          	;. .  
	ram:7514 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:7517 cd ef 39       call 039efh          	;. . 9
	ram:751a f7             rst 30h              	;.
	ram:751b cf             rst 8                	;.
	ram:751c cd 60 20       call 02060h          	;. `  
	ram:751f cd 23 10       call 01023h          	;. # .
	ram:7522 cd 8d 20       call 0208dh          	;. .  
	ram:7525 cd 43 61       call sub_6143h       	;. C a
	ram:7528 cd 75 61       call sub_6175h       	;. u a
	ram:752b cd 23 10       call 01023h          	;. # .
	ram:752e cd 29 20       call 02029h          	;. )  
	ram:7531 cd 2b 0d       call 00d2bh          	;. + .
	ram:7534 cd e5 61       call sub_61e5h       	;. . a
	ram:7537 cd 52 2f       call 02f52h          	;. R /
	ram:753a cd 9b 0f       call 00f9bh          	;. . .
	ram:753d cd de 77       call sub_77deh       	;. . w
	ram:7540 cd 43 2f       call 02f43h          	;. C /
	ram:7543 cd 9b 0f       call 00f9bh          	;. . .
	ram:7546 cd 21 20       call 02021h          	;. !  
	ram:7549 cd 33 77       call sub_7733h       	;. 3 w
	ram:754c cd 60 20       call 02060h          	;. `  
	ram:754f cd 01 78       call sub_7801h       	;. . x
	ram:7552 3a b9 80       ld a,(080b9h)        	;: . .
	ram:7555 3d             dec a                	;=
	ram:7556 32 b9 80       ld (080b9h),a        	;2 . .
	ram:7559 fe 7f          cp 07fh              	;. .
	ram:755b cc c3 77       call z,sub_77c3h     	;. . w
	ram:755e 21 bb 80       ld hl,080bbh         	;! . .
	ram:7561 35             dec (hl)             	;5
	ram:7562 cd 24 2f       call 02f24h          	;. $ /
	ram:7565 cd 66 0d       call 00d66h          	;. f .
	ram:7568 cd 69 62       call sub_6269h       	;. i b
	ram:756b cd 25 78       call sub_7825h       	;. % x
	ram:756e cd 86 61       call sub_6186h       	;. . a
	ram:7571 cd 69 0d       call 00d69h          	;. i .
	ram:7574 cd 30 76       call sub_7630h       	;. 0 v
	ram:7577 cd 6d 20       call 0206dh          	;. m  
	ram:757a 3a bd 80       ld a,(080bdh)        	;: . .
	ram:757d b7             or a                 	;.
	ram:757e c2 9b 75       jp nz,l759bh         	;. . u
	ram:7581 cd 6d 20       call 0206dh          	;. m  
	ram:7584 cd 3b 2f       call 02f3bh          	;. ; /
	ram:7587 cd 43 61       call sub_6143h       	;. C a
	ram:758a cd 88 1f       call 01f88h          	;. . .
	ram:758d 38 14          jr c,l75a3h          	;8 .
	ram:758f cd 43 61       call sub_6143h       	;. C a
	ram:7592 cd 29 20       call 02029h          	;. )  
	ram:7595 cd 88 1f       call 01f88h          	;. . .
	ram:7598 da d0 75       jp c,l75d0h          	;. . u
l759bh:
	ram:759b 11 1e 00       ld de,0001eh         	;. . .
	ram:759e cd 1b 2e       call 02e1bh          	;. . .
	ram:75a1 18 41          jr l75e4h            	;. A
l75a3h:
	ram:75a3 cd 52 2f       call 02f52h          	;. R /
	ram:75a6 cd 3b 2f       call 02f3bh          	;. ; /
	ram:75a9 cd e6 77       call sub_77e6h       	;. . w
	ram:75ac cd 89 61       call l6189h          	;. . a
	ram:75af cd 43 61       call sub_6143h       	;. C a
	ram:75b2 cd 29 20       call 02029h          	;. )  
	ram:75b5 cd 88 1f       call 01f88h          	;. . .
	ram:75b8 30 2a          jr nc,l75e4h         	;0 *
	ram:75ba 21 1e 00       ld hl,0001eh         	;! . .
	ram:75bd cd 9d 28       call 0289dh          	;. . (
	ram:75c0 30 0a          jr nc,l75cch         	;0 .
	ram:75c2 cd c3 77       call sub_77c3h       	;. . w
	ram:75c5 3e 01          ld a,001h            	;> .
	ram:75c7 32 c0 80       ld (080c0h),a        	;2 . .
	ram:75ca 18 18          jr l75e4h            	;. .
l75cch:
	ram:75cc eb             ex de,hl             	;.
	ram:75cd cd 28 2e       call 02e28h          	;. ( .
l75d0h:
	ram:75d0 cd 28 61       call sub_6128h       	;. ( a
	ram:75d3 cd 29 20       call 02029h          	;. )  
	ram:75d6 cd e6 77       call sub_77e6h       	;. . w
	ram:75d9 d5             push de              	;.
	ram:75da cd 86 61       call sub_6186h       	;. . a
	ram:75dd cd 69 0d       call 00d69h          	;. i .
	ram:75e0 d1             pop de               	;.
	ram:75e1 cd 11 21       call 02111h          	;. . !
l75e4h:
	ram:75e4 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:75e7 29             add hl,hl            	;)
	ram:75e8 ed 4b be 80    ld bc,(080beh)       	;. K . .
	ram:75ec 09             add hl,bc            	;.
	ram:75ed 11 ff 01       ld de,001ffh         	;. . .
	ram:75f0 af             xor a                	;.
	ram:75f1 ed 52          sbc hl,de            	;. R
	ram:75f3 d4 c3 77       call nc,sub_77c3h    	;. . w
	ram:75f6 c3 8a 74       jp l748ah            	;. . t
l75f9h:
	ram:75f9 cd db 0a       call 00adbh          	;. . .
	ram:75fc cd d4 61       call sub_61d4h       	;. . a
	ram:75ff cd 2b 3a       call 03a2bh          	;. + :
	ram:7602 cd fd 60       call sub_60fdh       	;. . `
	ram:7605 cd 4a 2e       call 02e4ah          	;. J .
	ram:7608 21 34 78       ld hl,l7834h         	;! 4 x
	ram:760b cd 04 21       call 02104h          	;. . !
	ram:760e cd af 3a       call 03aafh          	;. . :
	ram:7611 2a 29 86       ld hl,(08629h)       	;* ) .
	ram:7614 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:7617 cd aa 61       call sub_61aah       	;. . a
	ram:761a cd 7b 38       call 0387bh          	;. { 8
	ram:761d cd b8 61       call sub_61b8h       	;. . a
	ram:7620 cd 60 26       call 02660h          	;. ` &
	ram:7623 cd 13 61       call sub_6113h       	;. . a
	ram:7626 fd cb 07 8e    res 1,(iy+007h)      	;. . . .
	ram:762a 11 aa 00       ld de,000aah         	;. . .
	ram:762d c3 1b 2e       jp 02e1bh            	;. . .
sub_7630h:
	ram:7630 cd 03 62       call sub_6203h       	;. . b
	ram:7633 cd 66 0d       call 00d66h          	;. f .
	ram:7636 cd 69 0d       call 00d69h          	;. i .
	ram:7639 cd 58 61       call sub_6158h       	;. X a
	ram:763c ef             rst 28h              	;.
	ram:763d cf             rst 8                	;.
	ram:763e cd b1 61       call sub_61b1h       	;. . a
	ram:7641 f7             rst 30h              	;.
	ram:7642 cd 28 62       call sub_6228h       	;. ( b
	ram:7645 cd 5d 61       call sub_615dh       	;. ] a
	ram:7648 21 9b 77       ld hl,l779bh         	;! . w
	ram:764b cd 55 0e       call 00e55h          	;. U .
	ram:764e cd 1f 62       call sub_621fh       	;. . b
	ram:7651 cd 2f 61       call sub_612fh       	;. / a
	ram:7654 cd 61 0d       call 00d61h          	;. a .
	ram:7657 cd 3b 77       call sub_773bh       	;. ; w
	ram:765a cd 2c 62       call sub_622ch       	;. , b
	ram:765d cd 28 61       call sub_6128h       	;. ( a
	ram:7660 cd 2f 61       call sub_612fh       	;. / a
	ram:7663 f7             rst 30h              	;.
	ram:7664 cd 3b 77       call sub_773bh       	;. ; w
	ram:7667 cd 4c 61       call sub_614ch       	;. L a
	ram:766a f7             rst 30h              	;.
	ram:766b cd 2c 62       call sub_622ch       	;. , b
	ram:766e cd 37 61       call sub_6137h       	;. 7 a
	ram:7671 cd 3b 77       call sub_773bh       	;. ; w
	ram:7674 cd 85 20       call 02085h          	;. .  
	ram:7677 3e 88          ld a,088h            	;> .
	ram:7679 cd eb 48       call sub_48ebh       	;. . H
	ram:767c cd f5 1f       call 01ff5h          	;. . .
	ram:767f cd 51 61       call sub_6151h       	;. Q a
	ram:7682 3e 55          ld a,055h            	;> U
	ram:7684 cd eb 48       call sub_48ebh       	;. . H
	ram:7687 cd 07 20       call 02007h          	;. .  
	ram:768a f7             rst 30h              	;.
	ram:768b cd 58 61       call sub_6158h       	;. X a
	ram:768e ef             rst 28h              	;.
	ram:768f cd 1f 62       call sub_621fh       	;. . b
	ram:7692 cd 4c 61       call sub_614ch       	;. L a
	ram:7695 21 73 77       ld hl,l7773h         	;! s w
	ram:7698 e7             rst 20h              	;.
	ram:7699 ef             rst 28h              	;.
	ram:769a cd f5 1f       call 01ff5h          	;. . .
	ram:769d cd 51 20       call 02051h          	;. Q  
	ram:76a0 21 91 77       ld hl,l7791h         	;! . w
	ram:76a3 cd 55 0e       call 00e55h          	;. U .
	ram:76a6 cd 07 20       call 02007h          	;. .  
	ram:76a9 f7             rst 30h              	;.
	ram:76aa cd 2c 62       call sub_622ch       	;. , b
	ram:76ad cd 5d 61       call sub_615dh       	;. ] a
	ram:76b0 21 a5 77       ld hl,l77a5h         	;! . w
	ram:76b3 cd 55 0e       call 00e55h          	;. U .
	ram:76b6 cd 5c 62       call sub_625ch       	;. \ b
	ram:76b9 cd 2f 61       call sub_612fh       	;. / a
	ram:76bc cd 61 0d       call 00d61h          	;. a .
	ram:76bf cd 3b 77       call sub_773bh       	;. ; w
	ram:76c2 cd 64 61       call sub_6164h       	;. d a
	ram:76c5 cd 5c 62       call sub_625ch       	;. \ b
	ram:76c8 cd 37 61       call sub_6137h       	;. 7 a
	ram:76cb f7             rst 30h              	;.
	ram:76cc cd 3b 77       call sub_773bh       	;. ; w
	ram:76cf cd 64 61       call sub_6164h       	;. d a
	ram:76d2 f7             rst 30h              	;.
	ram:76d3 21 7d 77       ld hl,l777dh         	;! } w
	ram:76d6 cd 55 0e       call 00e55h          	;. U .
	ram:76d9 cd 4c 61       call sub_614ch       	;. L a
	ram:76dc f7             rst 30h              	;.
	ram:76dd cd 2c 62       call sub_622ch       	;. , b
	ram:76e0 cd 5d 61       call sub_615dh       	;. ] a
	ram:76e3 21 af 77       ld hl,l77afh         	;! . w
	ram:76e6 cd 55 0e       call 00e55h          	;. U .
	ram:76e9 cd 5c 62       call sub_625ch       	;. \ b
	ram:76ec cd 2f 61       call sub_612fh       	;. / a
	ram:76ef cd 61 0d       call 00d61h          	;. a .
	ram:76f2 cd 3b 77       call sub_773bh       	;. ; w
	ram:76f5 cd 64 61       call sub_6164h       	;. d a
	ram:76f8 cd 5c 62       call sub_625ch       	;. \ b
	ram:76fb cd 37 61       call sub_6137h       	;. 7 a
	ram:76fe f7             rst 30h              	;.
	ram:76ff cd 3b 77       call sub_773bh       	;. ; w
	ram:7702 cd 64 61       call sub_6164h       	;. d a
	ram:7705 f7             rst 30h              	;.
	ram:7706 21 87 77       ld hl,l7787h         	;! . w
	ram:7709 cd 55 0e       call 00e55h          	;. U .
	ram:770c cd 4c 61       call sub_614ch       	;. L a
	ram:770f f7             rst 30h              	;.
	ram:7710 cd 58 61       call sub_6158h       	;. X a
	ram:7713 ef             rst 28h              	;.
	ram:7714 cd 23 61       call sub_6123h       	;. # a
	ram:7717 cd 1f 62       call sub_621fh       	;. . b
	ram:771a cd 61 0d       call 00d61h          	;. a .
	ram:771d cd 21 20       call 02021h          	;. !  
	ram:7720 cd 28 61       call sub_6128h       	;. ( a
	ram:7723 cd de 77       call sub_77deh       	;. . w
	ram:7726 cd 60 20       call 02060h          	;. `  
	ram:7729 cd e2 60       call sub_60e2h       	;. . `
	ram:772c 2a be 80       ld hl,(080beh)       	;* . .
	ram:772f 23             inc hl               	;#
	ram:7730 22 be 80       ld (080beh),hl       	;" . .
sub_7733h:
	ram:7733 cd f8 60       call sub_60f8h       	;. . `
	ram:7736 f7             rst 30h              	;.
	ram:7737 cd 08 62       call sub_6208h       	;. . b
	ram:773a c9             ret                  	;.
sub_773bh:
	ram:773b cf             rst 8                	;.
	ram:773c cd d4 61       call sub_61d4h       	;. . a
	ram:773f d7             rst 10h              	;.
	ram:7740 21 8d 80       ld hl,0808dh         	;! . .
	ram:7743 cd 9d 20       call 0209dh          	;. .  
	ram:7746 cd b8 61       call sub_61b8h       	;. . a
	ram:7749 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:774c e5             push hl              	;.
	ram:774d cd d3 3a       call 03ad3h          	;. . :
	ram:7750 e1             pop hl               	;.
	ram:7751 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:7754 cd 9c 26       call 0269ch          	;. . &
	ram:7757 2a 3f 86       ld hl,(0863fh)       	;* ? .
	ram:775a 22 29 86       ld (08629h),hl       	;" ) .
	ram:775d c3 22 26       jp 02622h            	;. " &
l7760h:
	ram:7760 fd cb 07 8e    res 1,(iy+007h)      	;. . . .
	ram:7764 2a 3f 86       ld hl,(0863fh)       	;* ? .
	ram:7767 22 29 86       ld (08629h),hl       	;" ) .
	ram:776a cd d4 61       call sub_61d4h       	;. . a
	ram:776d cd 2b 3a       call 03a2bh          	;. + :
	ram:7770 c3 8a 0a       jp 00a8ah            	;. . .
l7773h:
	ram:7773 00             nop                  	;.
	ram:7774 ff             rst 38h              	;.
	ram:7775 fb             ei                   	;.
	ram:7776 26 84          ld h,084h            	;& .
	ram:7778 88             adc a,b              	;.
	ram:7779 08             ex af,af'            	;.
	ram:777a 98             sbc a,b              	;.
	ram:777b 68             ld l,b               	;h
	ram:777c 33             inc sp               	;3
l777dh:
	ram:777d 00             nop                  	;.
	ram:777e ff             rst 38h              	;.
	ram:777f fb             ei                   	;.
	ram:7780 10 46          djnz l77c8h          	;. F
	ram:7782 56             ld d,(hl)            	;V
	ram:7783 22 60 26       ld (02660h),hl       	;" ` &
	ram:7786 47             ld b,a               	;G
l7787h:
	ram:7787 00             nop                  	;.
	ram:7788 ff             rst 38h              	;.
	ram:7789 fb             ei                   	;.
	ram:778a 40             ld b,b               	;@
	ram:778b 13             inc de               	;.
	ram:778c 97             sub a                	;.
	ram:778d 41             ld b,c               	;A
	ram:778e 47             ld b,a               	;G
	ram:778f 75             ld (hl),l            	;u
	ram:7790 96             sub (hl)             	;.
l7791h:
	ram:7791 00             nop                  	;.
	ram:7792 ff             rst 38h              	;.
	ram:7793 fb             ei                   	;.
	ram:7794 45             ld b,l               	;E
	ram:7795 09             add hl,bc            	;.
	ram:7796 16 53          ld d,053h            	;. S
	ram:7798 86             add a,(hl)           	;.
	ram:7799 58             ld e,b               	;X
	ram:779a 47             ld b,a               	;G
l779bh:
	ram:779b 00             nop                  	;.
	ram:779c ff             rst 38h              	;.
	ram:779d fb             ei                   	;.
	ram:779e 77             ld (hl),a            	;w
	ram:779f 45             ld b,l               	;E
	ram:77a0 96             sub (hl)             	;.
	ram:77a1 66             ld h,(hl)            	;f
	ram:77a2 92             sub d                	;.
	ram:77a3 41             ld b,c               	;A
	ram:77a4 48             ld c,b               	;H
l77a5h:
	ram:77a5 00             nop                  	;.
	ram:77a6 ff             rst 38h              	;.
	ram:77a7 fb             ei                   	;.
	ram:77a8 96             sub (hl)             	;.
	ram:77a9 04             inc b                	;.
	ram:77aa 91             sub c                	;.
	ram:77ab 26 87          ld h,087h            	;& .
	ram:77ad 08             ex af,af'            	;.
	ram:77ae 02             ld (bc),a            	;.
l77afh:
	ram:77af 00             nop                  	;.
	ram:77b0 ff             rst 38h              	;.
	ram:77b1 fb             ei                   	;.
	ram:77b2 43             ld b,e               	;C
	ram:77b3 42             ld b,d               	;B
	ram:77b4 43             ld b,e               	;C
	ram:77b5 74             ld (hl),h            	;t
	ram:77b6 93             sub e                	;.
	ram:77b7 46             ld b,(hl)            	;F
	ram:77b8 80             add a,b              	;.
l77b9h:
	ram:77b9 00             nop                  	;.
	ram:77ba f4 fb 10       call p,010fbh        	;. . .
	ram:77bd 00             nop                  	;.
	ram:77be 00             nop                  	;.
	ram:77bf 00             nop                  	;.
	ram:77c0 00             nop                  	;.
	ram:77c1 00             nop                  	;.
	ram:77c2 00             nop                  	;.
sub_77c3h:
	ram:77c3 21 bd 80       ld hl,080bdh         	;! . .
	ram:77c6 cb c6          set 0,(hl)           	;. .
l77c8h:
	ram:77c8 c9             ret                  	;.
sub_77c9h:
	ram:77c9 cd 73 25       call 02573h          	;. s %
	ram:77cc 21 b9 77       ld hl,l77b9h         	;! . w
	ram:77cf cd 55 0e       call 00e55h          	;. U .
	ram:77d2 cd 41 20       call 02041h          	;. A  
	ram:77d5 3e 21          ld a,021h            	;> !
	ram:77d7 cd c7 3a       call 03ac7h          	;. . :
	ram:77da cd 2b 0d       call 00d2bh          	;. + .
	ram:77dd c9             ret                  	;.
sub_77deh:
	ram:77de cd 0b 61       call sub_610bh       	;. . a
	ram:77e1 f7             rst 30h              	;.
	ram:77e2 cd 16 62       call sub_6216h       	;. . b
	ram:77e5 c9             ret                  	;.
sub_77e6h:
	ram:77e6 21 b9 80       ld hl,080b9h         	;! . .
	ram:77e9 34             inc (hl)             	;4
	ram:77ea cd 09 78       call sub_7809h       	;. . x
	ram:77ed ed 5b 29 86    ld de,(08629h)       	;. [ ) .
	ram:77f1 cd 11 21       call 02111h          	;. . !
	ram:77f4 23             inc hl               	;#
	ram:77f5 cd 9d 20       call 0209dh          	;. .  
	ram:77f8 d5             push de              	;.
	ram:77f9 cd 95 20       call 02095h          	;. .  
	ram:77fc cd 01 78       call sub_7801h       	;. . x
	ram:77ff d1             pop de               	;.
	ram:7800 c9             ret                  	;.
sub_7801h:
	ram:7801 cd 8d 61       call sub_618dh       	;. . a
	ram:7804 f7             rst 30h              	;.
	ram:7805 cd 6d 62       call sub_626dh       	;. m b
	ram:7808 c9             ret                  	;.
sub_7809h:
	ram:7809 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:780c 11 1e 00       ld de,0001eh         	;. . .
	ram:780f b7             or a                 	;.
	ram:7810 ed 52          sbc hl,de            	;. R
	ram:7812 ed 5b 29 86    ld de,(08629h)       	;. [ ) .
	ram:7816 ed 52          sbc hl,de            	;. R
	ram:7818 c8             ret z                	;.
	ram:7819 44             ld b,h               	;D
	ram:781a 4d             ld c,l               	;M
	ram:781b 19             add hl,de            	;.
	ram:781c 2b             dec hl               	;+
	ram:781d ed 5b e1 8b    ld de,(08be1h)       	;. [ . .
	ram:7821 1b             dec de               	;.
	ram:7822 ed b8          lddr                 	;. .
	ram:7824 c9             ret                  	;.
sub_7825h:
	ram:7825 cd 30 76       call sub_7630h       	;. 0 v
	ram:7828 cd 60 20       call 02060h          	;. `  
	ram:782b cd 83 2f       call 02f83h          	;. . /
	ram:782e cd 28 61       call sub_6128h       	;. ( a
	ram:7831 cd 9c 2f       call 02f9ch          	;. . /
l7834h:
	ram:7834 c9             ret                  	;.
	ram:7835 08             ex af,af'            	;.
	ram:7836 66             ld h,(hl)            	;f
	ram:7837 6e             ld l,(hl)            	;n
	ram:7838 49             ld c,c               	;I
	ram:7839 6e             ld l,(hl)            	;n
	ram:783a 74             ld (hl),h            	;t
	ram:783b 45             ld b,l               	;E
	ram:783c 72             ld (hl),d            	;r
	ram:783d 72             ld (hl),d            	;r
	ram:783e 00             nop                  	;.
	ram:783f cd 63 38       call 03863h          	;. c 8
	ram:7842 cd a7 7e       call sub_7ea7h       	;. . ~
	ram:7845 e5             push hl              	;.
	ram:7846 21 9f 84       ld hl,0849fh         	;! . .
	ram:7849 e7             rst 20h              	;.
	ram:784a 21 a9 84       ld hl,084a9h         	;! . .
	ram:784d cd 0b 21       call 0210bh          	;. . !
	ram:7850 18 28          jr l787ah            	;. (
	ram:7852 cd ea 2d       call 02deah          	;. . -
	ram:7855 cd 63 38       call 03863h          	;. c 8
	ram:7858 cd a7 7e       call sub_7ea7h       	;. . ~
	ram:785b e5             push hl              	;.
	ram:785c cd 60 20       call 02060h          	;. `  
	ram:785f d7             rst 10h              	;.
	ram:7860 eb             ex de,hl             	;.
	ram:7861 cd b4 7e       call sub_7eb4h       	;. . ~
	ram:7864 18 14          jr l787ah            	;. .
	ram:7866 cd 63 38       call 03863h          	;. c 8
	ram:7869 cd a7 7e       call sub_7ea7h       	;. . ~
	ram:786c e5             push hl              	;.
	ram:786d cd 3e 21       call 0213eh          	;. > !
	ram:7870 21 63 fc       ld hl,0fc63h         	;! c .
	ram:7873 22 83 80       ld (08083h),hl       	;" . .
	ram:7876 cf             rst 8                	;.
	ram:7877 cd 9b 0f       call 00f9bh          	;. . .
l787ah:
	ram:787a cd 69 62       call sub_6269h       	;. i b
	ram:787d cd 50 62       call sub_6250h       	;. P b
	ram:7880 cd 8e 1f       call 01f8eh          	;. . .
	ram:7883 3e 93          ld a,093h            	;> .
	ram:7885 d2 53 7d       jp nc,l7d53h         	;. S }
	ram:7888 cd 9e 61       call sub_619eh       	;. . a
	ram:788b cd 71 26       call 02671h          	;. q &
	ram:788e ed 53 34 86    ld (08634h),de       	;. S 4 .
	ram:7892 eb             ex de,hl             	;.
	ram:7893 e6 1f          and 01fh             	;. .
	ram:7895 28 2e          jr z,l78c5h          	;( .
	ram:7897 f1             pop af               	;.
	ram:7898 cb df          set 3,a              	;. .
	ram:789a f5             push af              	;.
	ram:789b cd b4 7e       call sub_7eb4h       	;. . ~
	ram:789e cd 28 62       call sub_6228h       	;. ( b
	ram:78a1 cd 44 62       call sub_6244h       	;. D b
	ram:78a4 cd 8e 1f       call 01f8eh          	;. . .
	ram:78a7 f5             push af              	;.
	ram:78a8 cd 4a 2e       call 02e4ah          	;. J .
	ram:78ab cd 9e 61       call sub_619eh       	;. . a
	ram:78ae cd af 3a       call 03aafh          	;. . :
	ram:78b1 cd 4c 61       call sub_614ch       	;. L a
	ram:78b4 f1             pop af               	;.
	ram:78b5 ca 62 7d       jp z,l7d62h          	;. b }
	ram:78b8 30 39          jr nc,l78f3h         	;0 9
	ram:78ba cd 37 61       call sub_6137h       	;. 7 a
	ram:78bd cd 2c 62       call sub_622ch       	;. , b
	ram:78c0 cd 40 62       call sub_6240h       	;. @ b
	ram:78c3 18 2e          jr l78f3h            	;. .
l78c5h:
	ram:78c5 e7             rst 20h              	;.
	ram:78c6 cd 2c 62       call sub_622ch       	;. , b
	ram:78c9 cd 28 62       call sub_6228h       	;. ( b
	ram:78cc cd 75 61       call sub_6175h       	;. u a
	ram:78cf cd 8e 1f       call 01f8eh          	;. . .
	ram:78d2 20 05          jr nz,l78d9h         	;.
	ram:78d4 cd ab 7f       call sub_7fabh       	;. . .
	ram:78d7 18 1a          jr l78f3h            	;. .
l78d9h:
	ram:78d9 cd 4c 61       call sub_614ch       	;. L a
	ram:78dc 21 9d 7e       ld hl,l7e9dh         	;! . ~
	ram:78df e7             rst 20h              	;.
	ram:78e0 cd d6 23       call 023d6h          	;. . #
	ram:78e3 28 05          jr z,l78eah          	;( .
	ram:78e5 ef             rst 28h              	;.
	ram:78e6 cd 73 25       call 02573h          	;. s %
	ram:78e9 f7             rst 30h              	;.
l78eah:
	ram:78ea cd 75 61       call sub_6175h       	;. u a
	ram:78ed cd 1c 0d       call 00d1ch          	;. . .
	ram:78f0 cd 28 62       call sub_6228h       	;. ( b
l78f3h:
	ram:78f3 cd 51 61       call sub_6151h       	;. Q a
	ram:78f6 cd 49 7f       call sub_7f49h       	;. I .
	ram:78f9 cd 37 61       call sub_6137h       	;. 7 a
	ram:78fc cd 49 7f       call sub_7f49h       	;. I .
	ram:78ff cd 51 61       call sub_6151h       	;. Q a
	ram:7902 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7905 30 16          jr nc,l791dh         	;0 .
	ram:7907 cd ab 7f       call sub_7fabh       	;. . .
	ram:790a cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:790d 30 0e          jr nc,l791dh         	;0 .
	ram:790f cd 86 61       call sub_6186h       	;. . a
	ram:7912 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7915 38 0d          jr c,l7924h          	;8 .
	ram:7917 cd 81 61       call sub_6181h       	;. . a
	ram:791a cd 44 62       call sub_6244h       	;. D b
l791dh:
	ram:791d cd 1f 62       call sub_621fh       	;. . b
	ram:7920 f1             pop af               	;.
	ram:7921 cb cf          set 1,a              	;. .
	ram:7923 f5             push af              	;.
l7924h:
	ram:7924 cd 37 61       call sub_6137h       	;. 7 a
	ram:7927 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:792a 30 1d          jr nc,l7949h         	;0 .
	ram:792c cd 70 61       call sub_6170h       	;. p a
	ram:792f cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7932 30 0f          jr nc,l7943h         	;0 .
	ram:7934 f1             pop af               	;.
	ram:7935 cb 4f          bit 1,a              	;. O
	ram:7937 ca 62 7d       jp z,l7d62h          	;. b }
	ram:793a f5             push af              	;.
	ram:793b cd 37 61       call sub_6137h       	;. 7 a
	ram:793e cd 65 62       call sub_6265h       	;. e b
	ram:7941 18 18          jr l795bh            	;. .
l7943h:
	ram:7943 cd 75 61       call sub_6175h       	;. u a
	ram:7946 cd 40 62       call sub_6240h       	;. @ b
l7949h:
	ram:7949 cd 16 62       call sub_6216h       	;. . b
	ram:794c f1             pop af               	;.
	ram:794d cb d7          set 2,a              	;. .
	ram:794f f5             push af              	;.
	ram:7950 cb 4f          bit 1,a              	;. O
	ram:7952 c2 c9 79       jp nz,l79c9h         	;. . y
	ram:7955 cd 51 61       call sub_6151h       	;. Q a
	ram:7958 cd 69 62       call sub_6269h       	;. i b
l795bh:
	ram:795b cd e3 7d       call sub_7de3h       	;. . }
	ram:795e 38 2c          jr c,l798ch          	;8 ,
	ram:7960 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7963 30 14          jr nc,l7979h         	;0 .
	ram:7965 f1             pop af               	;.
	ram:7966 f5             push af              	;.
	ram:7967 cd 6c 79       call sub_796ch       	;. l y
	ram:796a 18 ef          jr l795bh            	;. .
sub_796ch:
	ram:796c cb 4f          bit 1,a              	;. O
	ram:796e f5             push af              	;.
	ram:796f cd ea 60       call sub_60eah       	;. . `
	ram:7972 f1             pop af               	;.
	ram:7973 ca 2c 62       jp z,sub_622ch       	;. , b
	ram:7976 c3 28 62       jp sub_6228h         	;. ( b
l7979h:
	ram:7979 f1             pop af               	;.
	ram:797a f5             push af              	;.
	ram:797b cb 4f          bit 1,a              	;. O
	ram:797d f5             push af              	;.
	ram:797e cc 1f 62       call z,sub_621fh     	;. . b
	ram:7981 f1             pop af               	;.
	ram:7982 c4 16 62       call nz,sub_6216h    	;. . b
	ram:7985 f1             pop af               	;.
	ram:7986 f5             push af              	;.
	ram:7987 cd 6c 79       call sub_796ch       	;. l y
	ram:798a 18 3d          jr l79c9h            	;. =
l798ch:
	ram:798c f1             pop af               	;.
	ram:798d f5             push af              	;.
	ram:798e cb 4f          bit 1,a              	;. O
	ram:7990 28 1a          jr z,l79ach          	;( .
	ram:7992 cd 28 61       call sub_6128h       	;. ( a
	ram:7995 cd 16 62       call sub_6216h       	;. . b
	ram:7998 cd 4c 61       call sub_614ch       	;. L a
	ram:799b cd 40 62       call sub_6240h       	;. @ b
	ram:799e cd c7 7e       call sub_7ec7h       	;. . ~
	ram:79a1 cd 2d 7e       call sub_7e2dh       	;. - ~
	ram:79a4 da 62 7d       jp c,l7d62h          	;. b }
	ram:79a7 cd 1f 62       call sub_621fh       	;. . b
	ram:79aa 18 20          jr l79cch            	;.  
l79ach:
	ram:79ac cd 13 61       call sub_6113h       	;. . a
	ram:79af cd 1f 62       call sub_621fh       	;. . b
	ram:79b2 cd 2f 61       call sub_612fh       	;. / a
	ram:79b5 cd c7 7e       call sub_7ec7h       	;. . ~
	ram:79b8 cd 28 62       call sub_6228h       	;. ( b
	ram:79bb cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:79be da 62 7d       jp c,l7d62h          	;. b }
	ram:79c1 cd 16 62       call sub_6216h       	;. . b
	ram:79c4 cd 23 61       call sub_6123h       	;. # a
	ram:79c7 18 06          jr l79cfh            	;. .
l79c9h:
	ram:79c9 cd 28 61       call sub_6128h       	;. ( a
l79cch:
	ram:79cc cd 0b 61       call sub_610bh       	;. . a
l79cfh:
	ram:79cf cd d1 23       call 023d1h          	;. . #
	ram:79d2 28 0b          jr z,l79dfh          	;( .
	ram:79d4 cd d6 23       call 023d6h          	;. . #
	ram:79d7 20 09          jr nz,l79e2h         	;.
	ram:79d9 cd 37 61       call sub_6137h       	;. 7 a
	ram:79dc cd 2c 62       call sub_622ch       	;. , b
l79dfh:
	ram:79df c3 c0 7d       jp l7dc0h            	;. . }
l79e2h:
	ram:79e2 cd 8e 1f       call 01f8eh          	;. . .
	ram:79e5 c2 e2 7a       jp nz,l7ae2h         	;. . z
	ram:79e8 cd 51 61       call sub_6151h       	;. Q a
	ram:79eb cd 30 62       call sub_6230h       	;. 0 b
l79eeh:
	ram:79ee cd e3 7d       call sub_7de3h       	;. . }
	ram:79f1 38 15          jr c,l7a08h          	;8 .
	ram:79f3 cd 2d 7e       call sub_7e2dh       	;. - ~
	ram:79f6 38 f6          jr c,l79eeh          	;8 .
	ram:79f8 cd 0b 61       call sub_610bh       	;. . a
	ram:79fb cd 21 20       call 02021h          	;. !  
	ram:79fe cd 8e 1f       call 01f8eh          	;. . .
	ram:7a01 28 eb          jr z,l79eeh          	;( .
	ram:7a03 cd 95 20       call 02095h          	;. .  
	ram:7a06 18 06          jr l7a0eh            	;. .
l7a08h:
	ram:7a08 cd 5d 61       call sub_615dh       	;. ] a
	ram:7a0b cd 2d 7e       call sub_7e2dh       	;. - ~
l7a0eh:
	ram:7a0e cd 1f 62       call sub_621fh       	;. . b
	ram:7a11 cd 0b 61       call sub_610bh       	;. . a
	ram:7a14 cd 8e 1f       call 01f8eh          	;. . .
	ram:7a17 c2 e2 7a       jp nz,l7ae2h         	;. . z
l7a1ah:
	ram:7a1a cd 37 61       call sub_6137h       	;. 7 a
	ram:7a1d cd d1 23       call 023d1h          	;. . #
	ram:7a20 cc 3e 21       call z,0213eh        	;. > !
	ram:7a23 cd 68 25       call 02568h          	;. h %
	ram:7a26 28 06          jr z,l7a2eh          	;( .
	ram:7a28 cd ee 25       call 025eeh          	;. . %
	ram:7a2b d4 52 0e       call nc,00e52h       	;. R .
l7a2eh:
	ram:7a2e cd 2f 61       call sub_612fh       	;. / a
	ram:7a31 cd 73 25       call 02573h          	;. s %
	ram:7a34 f7             rst 30h              	;.
	ram:7a35 cd f9 7e       call sub_7ef9h       	;. . ~
	ram:7a38 38 43          jr c,l7a7dh          	;8 C
	ram:7a3a cd f1 61       call sub_61f1h       	;. . a
	ram:7a3d cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7a40 38 14          jr c,l7a56h          	;8 .
	ram:7a42 cd 16 62       call sub_6216h       	;. . b
	ram:7a45 cd dd 60       call sub_60ddh       	;. . `
	ram:7a48 cd 40 62       call sub_6240h       	;. @ b
	ram:7a4b cd 23 61       call sub_6123h       	;. # a
	ram:7a4e cd 8e 1f       call 01f8eh          	;. . .
	ram:7a51 28 c7          jr z,l7a1ah          	;( .
	ram:7a53 c3 e2 7a       jp l7ae2h            	;. . z
l7a56h:
	ram:7a56 cd 37 61       call sub_6137h       	;. 7 a
	ram:7a59 cd dd 60       call sub_60ddh       	;. . `
	ram:7a5c cd e6 7d       call sub_7de6h       	;. . }
	ram:7a5f 38 10          jr c,l7a71h          	;8 .
	ram:7a61 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7a64 38 f0          jr c,l7a56h          	;8 .
	ram:7a66 cd 16 62       call sub_6216h       	;. . b
	ram:7a69 cd dd 60       call sub_60ddh       	;. . `
	ram:7a6c cd 40 62       call sub_6240h       	;. @ b
	ram:7a6f 18 03          jr l7a74h            	;. .
l7a71h:
	ram:7a71 cd 13 61       call sub_6113h       	;. . a
l7a74h:
	ram:7a74 cd 23 61       call sub_6123h       	;. # a
	ram:7a77 cd 8e 1f       call 01f8eh          	;. . .
	ram:7a7a c2 e2 7a       jp nz,l7ae2h         	;. . z
l7a7dh:
	ram:7a7d cd 51 61       call sub_6151h       	;. Q a
	ram:7a80 cd d1 23       call 023d1h          	;. . #
	ram:7a83 cc 56 21       call z,02156h        	;. V !
	ram:7a86 cd 68 25       call 02568h          	;. h %
	ram:7a89 20 06          jr nz,l7a91h         	;.
	ram:7a8b cd ee 25       call 025eeh          	;. . %
	ram:7a8e d4 52 0e       call nc,00e52h       	;. R .
l7a91h:
	ram:7a91 cd 4c 61       call sub_614ch       	;. L a
	ram:7a94 cd 73 25       call 02573h          	;. s %
	ram:7a97 cd 61 0d       call 00d61h          	;. a .
	ram:7a9a cd f9 7e       call sub_7ef9h       	;. . ~
	ram:7a9d da d6 7a       jp c,l7ad6h          	;. . z
	ram:7aa0 cd f1 61       call sub_61f1h       	;. . a
	ram:7aa3 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7aa6 38 13          jr c,l7abbh          	;8 .
	ram:7aa8 cd 1f 62       call sub_621fh       	;. . b
	ram:7aab cd dd 60       call sub_60ddh       	;. . `
	ram:7aae cd 44 62       call sub_6244h       	;. D b
	ram:7ab1 cd 0b 61       call sub_610bh       	;. . a
	ram:7ab4 cd 8e 1f       call 01f8eh          	;. . .
	ram:7ab7 28 c4          jr z,l7a7dh          	;( .
	ram:7ab9 18 27          jr l7ae2h            	;. '
l7abbh:
	ram:7abb cd ea 60       call sub_60eah       	;. . `
	ram:7abe cd 4c 61       call sub_614ch       	;. L a
	ram:7ac1 cd e6 7d       call sub_7de6h       	;. . }
	ram:7ac4 38 10          jr c,l7ad6h          	;8 .
	ram:7ac6 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7ac9 38 f0          jr c,l7abbh          	;8 .
	ram:7acb cd 1f 62       call sub_621fh       	;. . b
	ram:7ace cd dd 60       call sub_60ddh       	;. . `
	ram:7ad1 cd 44 62       call sub_6244h       	;. D b
	ram:7ad4 18 03          jr l7ad9h            	;. .
l7ad6h:
	ram:7ad6 cd 28 61       call sub_6128h       	;. ( a
l7ad9h:
	ram:7ad9 cd 0b 61       call sub_610bh       	;. . a
	ram:7adc cd 8e 1f       call 01f8eh          	;. . .
	ram:7adf ca 5e 7d       jp z,l7d5eh          	;. ^ }
l7ae2h:
	ram:7ae2 f1             pop af               	;.
	ram:7ae3 f5             push af              	;.
	ram:7ae4 cb 5f          bit 3,a              	;. _
	ram:7ae6 c2 b8 7b       jp nz,l7bb8h         	;. . {
	ram:7ae9 cd d0 7d       call sub_7dd0h       	;. . }
	ram:7aec c2 b8 7b       jp nz,l7bb8h         	;. . {
	ram:7aef cd 88 1f       call 01f88h          	;. . .
	ram:7af2 30 15          jr nc,l7b09h         	;0 .
	ram:7af4 cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7af7 cd 28 62       call sub_6228h       	;. ( b
	ram:7afa cd 44 62       call sub_6244h       	;. D b
	ram:7afd cd 28 61       call sub_6128h       	;. ( a
	ram:7b00 cd 0b 61       call sub_610bh       	;. . a
	ram:7b03 cd 16 62       call sub_6216h       	;. . b
	ram:7b06 cd 3c 62       call sub_623ch       	;. < b
l7b09h:
	ram:7b09 cd d8 7e       call sub_7ed8h       	;. . ~
	ram:7b0c 21 07 0a       ld hl,00a07h         	;! . .
	ram:7b0f e5             push hl              	;.
l7b10h:
	ram:7b10 cd 2f 61       call sub_612fh       	;. / a
	ram:7b13 cd 71 0d       call 00d71h          	;. q .
	ram:7b16 cd 66 0d       call 00d66h          	;. f .
	ram:7b19 cd 2f 61       call sub_612fh       	;. / a
l7b1ch:
	ram:7b1c f7             rst 30h              	;.
	ram:7b1d cd f1 61       call sub_61f1h       	;. . a
	ram:7b20 cd f9 7e       call sub_7ef9h       	;. . ~
	ram:7b23 30 09          jr nc,l7b2eh         	;0 .
l7b25h:
	ram:7b25 e1             pop hl               	;.
l7b26h:
	ram:7b26 2d             dec l                	;-
	ram:7b27 ca b8 7b       jp z,l7bb8h          	;. . {
	ram:7b2a 26 0a          ld h,00ah            	;& .
	ram:7b2c 18 3a          jr l7b68h            	;. :
l7b2eh:
	ram:7b2e cd ea 60       call sub_60eah       	;. . `
	ram:7b31 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7b34 30 15          jr nc,l7b4bh         	;0 .
	ram:7b36 cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7b39 cd 8e 1f       call 01f8eh          	;. . .
	ram:7b3c f5             push af              	;.
	ram:7b3d cd ea 60       call sub_60eah       	;. . `
	ram:7b40 f1             pop af               	;.
	ram:7b41 f5             push af              	;.
	ram:7b42 dc 69 62       call c,sub_6269h     	;. i b
	ram:7b45 f1             pop af               	;.
	ram:7b46 d4 65 62       call nc,sub_6265h    	;. e b
	ram:7b49 18 da          jr l7b25h            	;. .
l7b4bh:
	ram:7b4b cd 08 62       call sub_6208h       	;. . b
	ram:7b4e cd 23 61       call sub_6123h       	;. # a
	ram:7b51 cd 68 25       call 02568h          	;. h %
	ram:7b54 47             ld b,a               	;G
	ram:7b55 cd 62 25       call 02562h          	;. b %
	ram:7b58 a8             xor b                	;.
	ram:7b59 20 4d          jr nz,l7ba8h         	;M
	ram:7b5b cd 88 1f       call 01f88h          	;. . .
	ram:7b5e 38 2f          jr c,l7b8fh          	;8 /
	ram:7b60 28 2d          jr z,l7b8fh          	;( -
	ram:7b62 e1             pop hl               	;.
	ram:7b63 7c             ld a,h               	;|
	ram:7b64 fe 0a          cp 00ah              	;. .
	ram:7b66 20 1a          jr nz,l7b82h         	;.
l7b68h:
	ram:7b68 e5             push hl              	;.
	ram:7b69 cd 43 61       call sub_6143h       	;. C a
	ram:7b6c cd 64 61       call sub_6164h       	;. d a
	ram:7b6f cd f2 7e       call sub_7ef2h       	;. . ~
	ram:7b72 cd dd 60       call sub_60ddh       	;. . `
	ram:7b75 cd f1 61       call sub_61f1h       	;. . a
	ram:7b78 cd 61 0d       call 00d61h          	;. a .
	ram:7b7b cd 7d 25       call 0257dh          	;. } %
	ram:7b7e cd 30 62       call sub_6230h       	;. 0 b
	ram:7b81 e1             pop hl               	;.
l7b82h:
	ram:7b82 25             dec h                	;%
	ram:7b83 28 a1          jr z,l7b26h          	;( .
	ram:7b85 e5             push hl              	;.
	ram:7b86 cd 5d 61       call sub_615dh       	;. ] a
	ram:7b89 cd dd 60       call sub_60ddh       	;. . `
	ram:7b8c c3 1c 7b       jp l7b1ch            	;. . {
l7b8fh:
	ram:7b8f cd d8 7e       call sub_7ed8h       	;. . ~
	ram:7b92 cd fd 60       call sub_60fdh       	;. . `
	ram:7b95 cd 1f 62       call sub_621fh       	;. . b
	ram:7b98 cd ea 60       call sub_60eah       	;. . `
	ram:7b9b cd 2c 62       call sub_622ch       	;. , b
	ram:7b9e e1             pop hl               	;.
	ram:7b9f 7c             ld a,h               	;|
	ram:7ba0 fe 0a          cp 00ah              	;. .
	ram:7ba2 20 de          jr nz,l7b82h         	;.
	ram:7ba4 e5             push hl              	;.
	ram:7ba5 c3 10 7b       jp l7b10h            	;. . {
l7ba8h:
	ram:7ba8 c1             pop bc               	;.
	ram:7ba9 cd 28 61       call sub_6128h       	;. ( a
	ram:7bac cd 16 62       call sub_6216h       	;. . b
	ram:7baf cd 51 61       call sub_6151h       	;. Q a
	ram:7bb2 cd 28 62       call sub_6228h       	;. ( b
	ram:7bb5 cd ec 7e       call sub_7eech       	;. . ~
l7bb8h:
	ram:7bb8 f1             pop af               	;.
	ram:7bb9 21 00 00       ld hl,00000h         	;! . .
	ram:7bbc e5             push hl              	;.
	ram:7bbd e5             push hl              	;.
	ram:7bbe cb cf          set 1,a              	;. .
	ram:7bc0 f5             push af              	;.
	ram:7bc1 cd d0 7d       call sub_7dd0h       	;. . }
	ram:7bc4 20 17          jr nz,l7bddh         	;.
	ram:7bc6 cd 5f 7f       call sub_7f5fh       	;. _ .
	ram:7bc9 cd 70 61       call sub_6170h       	;. p a
	ram:7bcc cd 82 7f       call sub_7f82h       	;. . .
	ram:7bcf 30 0c          jr nc,l7bddh         	;0 .
	ram:7bd1 cd 86 61       call sub_6186h       	;. . a
	ram:7bd4 cd 82 7f       call sub_7f82h       	;. . .
	ram:7bd7 30 04          jr nc,l7bddh         	;0 .
	ram:7bd9 f1             pop af               	;.
	ram:7bda ee 02          xor 002h             	;. .
	ram:7bdc f5             push af              	;.
l7bddh:
	ram:7bdd cd 0b 61       call sub_610bh       	;. . a
	ram:7be0 cd 37 61       call sub_6137h       	;. 7 a
	ram:7be3 cd de 7e       call sub_7edeh       	;. . ~
	ram:7be6 cd 4c 61       call sub_614ch       	;. L a
	ram:7be9 cd 61 0d       call 00d61h          	;. a .
	ram:7bec cd 73 25       call 02573h          	;. s %
	ram:7bef cd 08 62       call sub_6208h       	;. . b
	ram:7bf2 cd 13 61       call sub_6113h       	;. . a
	ram:7bf5 cd 23 61       call sub_6123h       	;. # a
	ram:7bf8 cd 73 25       call 02573h          	;. s %
	ram:7bfb cd 6e 25       call 0256eh          	;. n %
	ram:7bfe cd 2b 0d       call 00d2bh          	;. + .
	ram:7c01 cd f1 61       call sub_61f1h       	;. . a
l7c04h:
	ram:7c04 cd 5f 7f       call sub_7f5fh       	;. _ .
	ram:7c07 f1             pop af               	;.
	ram:7c08 e1             pop hl               	;.
	ram:7c09 e5             push hl              	;.
	ram:7c0a f5             push af              	;.
	ram:7c0b 11 15 00       ld de,00015h         	;. . .
	ram:7c0e b7             or a                 	;.
	ram:7c0f ed 52          sbc hl,de            	;. R
	ram:7c11 38 13          jr c,l7c26h          	;8 .
	ram:7c13 cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7c16 cd 8e 1f       call 01f8eh          	;. . .
	ram:7c19 f5             push af              	;.
	ram:7c1a cd 37 61       call sub_6137h       	;. 7 a
	ram:7c1d f1             pop af               	;.
	ram:7c1e f5             push af              	;.
	ram:7c1f dc 65 62       call c,sub_6265h     	;. e b
	ram:7c22 f1             pop af               	;.
	ram:7c23 d4 69 62       call nc,sub_6269h    	;. i b
l7c26h:
	ram:7c26 cd d0 7d       call sub_7dd0h       	;. . }
	ram:7c29 f5             push af              	;.
	ram:7c2a cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7c2d cd 61 0d       call 00d61h          	;. a .
	ram:7c30 cd 52 0e       call 00e52h          	;. R .
	ram:7c33 cd 30 62       call sub_6230h       	;. 0 b
	ram:7c36 f1             pop af               	;.
	ram:7c37 28 15          jr z,l7c4eh          	;( .
	ram:7c39 f1             pop af               	;.
	ram:7c3a cb cf          set 1,a              	;. .
	ram:7c3c f5             push af              	;.
	ram:7c3d cd 68 25       call 02568h          	;. h %
	ram:7c40 f5             push af              	;.
	ram:7c41 cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7c44 f1             pop af               	;.
	ram:7c45 c4 ba 23       call nz,023bah       	;. . #
	ram:7c48 cd 50 62       call sub_6250h       	;. P b
	ram:7c4b cd 69 62       call sub_6269h       	;. i b
l7c4eh:
	ram:7c4e cd 28 61       call sub_6128h       	;. ( a
	ram:7c51 cd d1 23       call 023d1h          	;. . #
	ram:7c54 ca be 7d       jp z,l7dbeh          	;. . }
	ram:7c57 cd 12 7f       call sub_7f12h       	;. . .
	ram:7c5a cd f5 1f       call 01ff5h          	;. . .
	ram:7c5d cd 58 61       call sub_6158h       	;. X a
	ram:7c60 cd 88 1f       call 01f88h          	;. . .
	ram:7c63 d2 a8 7d       jp nc,l7da8h         	;. . }
	ram:7c66 f1             pop af               	;.
	ram:7c67 d1             pop de               	;.
	ram:7c68 d5             push de              	;.
	ram:7c69 f5             push af              	;.
	ram:7c6a 21 f3 01       ld hl,001f3h         	;! . .
	ram:7c6d b7             or a                 	;.
	ram:7c6e ed 52          sbc hl,de            	;. R
	ram:7c70 da 51 7d       jp c,l7d51h          	;. Q }
	ram:7c73 cd 28 61       call sub_6128h       	;. ( a
	ram:7c76 cd 64 61       call sub_6164h       	;. d a
	ram:7c79 cd 61 0d       call 00d61h          	;. a .
	ram:7c7c cd 85 20       call 02085h          	;. .  
	ram:7c7f cd 51 61       call sub_6151h       	;. Q a
	ram:7c82 cd 3e 61       call sub_613eh       	;. > a
	ram:7c85 cd 71 0d       call 00d71h          	;. q .
	ram:7c88 cd 23 61       call sub_6123h       	;. # a
	ram:7c8b ef             rst 28h              	;.
	ram:7c8c cd 68 25       call 02568h          	;. h %
	ram:7c8f 28 0b          jr z,l7c9ch          	;( .
	ram:7c91 cd 9b 0f       call 00f9bh          	;. . .
	ram:7c94 3a b9 80       ld a,(080b9h)        	;: . .
	ram:7c97 ee 80          xor 080h             	;. .
	ram:7c99 32 b9 80       ld (080b9h),a        	;2 . .
l7c9ch:
	ram:7c9c cd 8d 20       call 0208dh          	;. .  
	ram:7c9f cd d8 7e       call sub_7ed8h       	;. . ~
	ram:7ca2 c1             pop bc               	;.
	ram:7ca3 d1             pop de               	;.
	ram:7ca4 f1             pop af               	;.
	ram:7ca5 3c             inc a                	;<
	ram:7ca6 f5             push af              	;.
	ram:7ca7 d5             push de              	;.
	ram:7ca8 c5             push bc              	;.
	ram:7ca9 fe 04          cp 004h              	;. .
	ram:7cab 38 23          jr c,l7cd0h          	;8 #
	ram:7cad cb 48          bit 1,b              	;. H
	ram:7caf 28 0f          jr z,l7cc0h          	;( .
	ram:7cb1 cd 5d 61       call sub_615dh       	;. ] a
	ram:7cb4 cd 21 21       call 02121h          	;. ! !
	ram:7cb7 ef             rst 28h              	;.
	ram:7cb8 cd f8 60       call sub_60f8h       	;. . `
	ram:7cbb cd 88 1f       call 01f88h          	;. . .
	ram:7cbe 30 59          jr nc,l7d19h         	;0 Y
l7cc0h:
	ram:7cc0 c1             pop bc               	;.
	ram:7cc1 e1             pop hl               	;.
	ram:7cc2 f1             pop af               	;.
	ram:7cc3 af             xor a                	;.
	ram:7cc4 f5             push af              	;.
	ram:7cc5 e5             push hl              	;.
	ram:7cc6 c5             push bc              	;.
	ram:7cc7 cd 5d 61       call sub_615dh       	;. ] a
	ram:7cca cd 73 25       call 02573h          	;. s %
	ram:7ccd cd 08 62       call sub_6208h       	;. . b
l7cd0h:
	ram:7cd0 cd 51 20       call 02051h          	;. Q  
	ram:7cd3 cd 07 20       call 02007h          	;. .  
	ram:7cd6 ef             rst 28h              	;.
	ram:7cd7 cd 29 20       call 02029h          	;. )  
	ram:7cda cd 88 1f       call 01f88h          	;. . .
	ram:7cdd 38 0e          jr c,l7cedh          	;8 .
	ram:7cdf cd 56 20       call 02056h          	;. V  
	ram:7ce2 cd 58 61       call sub_6158h       	;. X a
	ram:7ce5 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:7ce8 32 82 80       ld (08082h),a        	;2 . .
	ram:7ceb 18 41          jr l7d2eh            	;. A
l7cedh:
	ram:7ced f1             pop af               	;.
	ram:7cee f5             push af              	;.
	ram:7cef cb 4f          bit 1,a              	;. O
	ram:7cf1 28 05          jr z,l7cf8h          	;( .
	ram:7cf3 cd 5d 61       call sub_615dh       	;. ] a
	ram:7cf6 18 13          jr l7d0bh            	;. .
l7cf8h:
	ram:7cf8 cd 4c 61       call sub_614ch       	;. L a
	ram:7cfb 3a b9 80       ld a,(080b9h)        	;: . .
	ram:7cfe e6 80          and 080h             	;. .
	ram:7d00 f5             push af              	;.
	ram:7d01 cc 70 61       call z,sub_6170h     	;. p a
	ram:7d04 f1             pop af               	;.
	ram:7d05 c4 86 61       call nz,sub_6186h    	;. . a
	ram:7d08 cd 71 0d       call 00d71h          	;. q .
l7d0bh:
	ram:7d0b cd 49 20       call 02049h          	;. I  
	ram:7d0e ef             rst 28h              	;.
	ram:7d0f cd 29 20       call 02029h          	;. )  
	ram:7d12 cd 8e 1f       call 01f8eh          	;. . .
	ram:7d15 38 02          jr c,l7d19h          	;8 .
	ram:7d17 20 0c          jr nz,l7d25h         	;.
l7d19h:
	ram:7d19 cd 51 61       call sub_6151h       	;. Q a
	ram:7d1c cd 2f 61       call sub_612fh       	;. / a
	ram:7d1f f7             rst 30h              	;.
	ram:7d20 cd 52 0e       call 00e52h          	;. R .
	ram:7d23 18 0d          jr l7d32h            	;. .
l7d25h:
	ram:7d25 cd 5b 20       call 0205bh          	;. [  
	ram:7d28 cd 49 20       call 02049h          	;. I  
	ram:7d2b cd 23 10       call 01023h          	;. # .
l7d2eh:
	ram:7d2e cd 4c 61       call sub_614ch       	;. L a
	ram:7d31 f7             rst 30h              	;.
l7d32h:
	ram:7d32 cd 2c 62       call sub_622ch       	;. , b
	ram:7d35 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7d38 d1             pop de               	;.
	ram:7d39 e1             pop hl               	;.
	ram:7d3a 23             inc hl               	;#
	ram:7d3b e5             push hl              	;.
	ram:7d3c d5             push de              	;.
	ram:7d3d 30 5a          jr nc,l7d99h         	;0 Z
	ram:7d3f 01 f3 01       ld bc,001f3h         	;. . .
	ram:7d42 b7             or a                 	;.
	ram:7d43 ed 42          sbc hl,bc            	;. B
	ram:7d45 38 1f          jr c,l7d66h          	;8 .
	ram:7d47 cd 37 61       call sub_6137h       	;. 7 a
	ram:7d4a ed 5b 34 86    ld de,(08634h)       	;. [ 4 .
	ram:7d4e cd 11 21       call 02111h          	;. . !
l7d51h:
	ram:7d51 3e 9c          ld a,09ch            	;> .
l7d53h:
	ram:7d53 f5             push af              	;.
	ram:7d54 cd 92 61       call sub_6192h       	;. . a
	ram:7d57 cd 7b 38       call 0387bh          	;. { 8
	ram:7d5a f1             pop af               	;.
	ram:7d5b c3 87 0a       jp 00a87h            	;. . .
l7d5eh:
	ram:7d5e 3e 9b          ld a,09bh            	;> .
	ram:7d60 18 f1          jr l7d53h            	;. .
l7d62h:
	ram:7d62 3e 9d          ld a,09dh            	;> .
	ram:7d64 18 ed          jr l7d53h            	;. .
l7d66h:
	ram:7d66 cd 75 7f       call sub_7f75h       	;. u .
	ram:7d69 cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7d6c cd 8e 1f       call 01f8eh          	;. . .
	ram:7d6f f5             push af              	;.
	ram:7d70 cd e5 7e       call sub_7ee5h       	;. . ~
	ram:7d73 f1             pop af               	;.
	ram:7d74 f5             push af              	;.
	ram:7d75 dc 69 62       call c,sub_6269h     	;. i b
	ram:7d78 f1             pop af               	;.
	ram:7d79 d4 65 62       call nc,sub_6265h    	;. e b
	ram:7d7c cd 71 0d       call 00d71h          	;. q .
	ram:7d7f cd f5 1f       call 01ff5h          	;. . .
	ram:7d82 cd 12 7f       call sub_7f12h       	;. . .
	ram:7d85 cd 07 20       call 02007h          	;. .  
	ram:7d88 cd 88 1f       call 01f88h          	;. . .
	ram:7d8b 38 8c          jr c,l7d19h          	;8 .
	ram:7d8d cd 37 61       call sub_6137h       	;. 7 a
	ram:7d90 ed 5b 34 86    ld de,(08634h)       	;. [ 4 .
	ram:7d94 cd 11 21       call 02111h          	;. . !
	ram:7d97 18 c5          jr l7d5eh            	;. .
l7d99h:
	ram:7d99 cd 1f 62       call sub_621fh       	;. . b
	ram:7d9c cd d0 7d       call sub_7dd0h       	;. . }
	ram:7d9f c2 04 7c       jp nz,l7c04h         	;. . |
	ram:7da2 cd 75 7f       call sub_7f75h       	;. u .
	ram:7da5 c3 04 7c       jp l7c04h            	;. . |
l7da8h:
	ram:7da8 cd 3c 7f       call sub_7f3ch       	;. < .
	ram:7dab cd d0 7d       call sub_7dd0h       	;. . }
	ram:7dae 28 ae          jr z,l7d5eh          	;( .
	ram:7db0 cd ea 60       call sub_60eah       	;. . `
	ram:7db3 cd 23 61       call sub_6123h       	;. # a
	ram:7db6 cd 88 1f       call 01f88h          	;. . .
	ram:7db9 3e 9a          ld a,09ah            	;> .
	ram:7dbb da 53 7d       jp c,l7d53h          	;. S }
l7dbeh:
	ram:7dbe f1             pop af               	;.
	ram:7dbf f1             pop af               	;.
l7dc0h:
	ram:7dc0 f1             pop af               	;.
	ram:7dc1 cd 92 61       call sub_6192h       	;. . a
	ram:7dc4 cd 7b 38       call 0387bh          	;. { 8
	ram:7dc7 cd 3c 7f       call sub_7f3ch       	;. < .
	ram:7dca 11 8c 00       ld de,0008ch         	;. . .
	ram:7dcd c3 1b 2e       jp 02e1bh            	;. . .
sub_7dd0h:
	ram:7dd0 cd 13 61       call sub_6113h       	;. . a
	ram:7dd3 cd 23 61       call sub_6123h       	;. # a
sub_7dd6h:
	ram:7dd6 3a 82 80       ld a,(08082h)        	;: . .
	ram:7dd9 e6 80          and 080h             	;. .
	ram:7ddb 47             ld b,a               	;G
	ram:7ddc 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:7ddf e6 80          and 080h             	;. .
	ram:7de1 a8             xor b                	;.
	ram:7de2 c9             ret                  	;.
sub_7de3h:
	ram:7de3 cd e5 7e       call sub_7ee5h       	;. . ~
sub_7de6h:
	ram:7de6 cd f5 1f       call 01ff5h          	;. . .
	ram:7de9 cd 45 2e       call 02e45h          	;. E .
	ram:7dec cd 61 0d       call 00d61h          	;. a .
	ram:7def cd 8d 20       call 0208dh          	;. .  
	ram:7df2 cd 73 25       call 02573h          	;. s %
	ram:7df5 3a a3 80       ld a,(080a3h)        	;: . .
	ram:7df8 b7             or a                 	;.
	ram:7df9 20 0f          jr nz,l7e0ah         	;.
	ram:7dfb 21 7f 7e       ld hl,l7e7fh         	;! . ~
	ram:7dfe cd 83 1f       call 01f83h          	;. . .
	ram:7e01 38 02          jr c,l7e05h          	;8 .
	ram:7e03 20 05          jr nz,l7e0ah         	;.
l7e05h:
	ram:7e05 cd 0c 2e       call 02e0ch          	;. . .
	ram:7e08 37             scf                  	;7
	ram:7e09 c9             ret                  	;.
l7e0ah:
	ram:7e0a cd 56 20       call 02056h          	;. V  
	ram:7e0d 21 93 7e       ld hl,l7e93h         	;! . ~
	ram:7e10 cd 55 0e       call 00e55h          	;. U .
	ram:7e13 cf             rst 8                	;.
	ram:7e14 cd 5b 20       call 0205bh          	;. [  
	ram:7e17 cd 88 1f       call 01f88h          	;. . .
	ram:7e1a 38 e9          jr c,l7e05h          	;8 .
	ram:7e1c 28 e7          jr z,l7e05h          	;( .
	ram:7e1e cd 56 20       call 02056h          	;. V  
	ram:7e21 cd ef 2d       call 02defh          	;. . -
	ram:7e24 f7             rst 30h              	;.
	ram:7e25 cd 52 0e       call 00e52h          	;. R .
	ram:7e28 cd f1 61       call sub_61f1h       	;. . a
	ram:7e2b af             xor a                	;.
	ram:7e2c c9             ret                  	;.
sub_7e2dh:
	ram:7e2d cd 2c 62       call sub_622ch       	;. , b
sub_7e30h:
	ram:7e30 cd d1 23       call 023d1h          	;. . #
	ram:7e33 28 08          jr z,l7e3dh          	;( .
	ram:7e35 cd 9b 25       call 0259bh          	;. . %
	ram:7e38 cd d1 23       call 023d1h          	;. . #
	ram:7e3b 28 30          jr z,l7e6dh          	;( 0
l7e3dh:
	ram:7e3d ed 5b 34 86    ld de,(08634h)       	;. [ 4 .
	ram:7e41 cd 11 21       call 02111h          	;. . !
	ram:7e44 cd aa 61       call sub_61aah       	;. . a
	ram:7e47 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:7e4a e5             push hl              	;.
	ram:7e4b 21 72 7e       ld hl,l7e72h         	;! r ~
	ram:7e4e cd b5 0a       call 00ab5h          	;. . .
	ram:7e51 cd f3 35       call 035f3h          	;. . 5
	ram:7e54 cd 9c 26       call 0269ch          	;. . &
	ram:7e57 cd db 0a       call 00adbh          	;. . .
	ram:7e5a e1             pop hl               	;.
	ram:7e5b 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:7e5e cd 60 26       call 02660h          	;. ` &
	ram:7e61 3a 82 80       ld a,(08082h)        	;: . .
l7e64h:
	ram:7e64 cd a3 26       call 026a3h          	;. . &
	ram:7e67 e6 1f          and 01fh             	;. .
	ram:7e69 cd 59 26       call 02659h          	;. Y &
	ram:7e6c c8             ret z                	;.
l7e6dh:
	ram:7e6d cd 59 26       call 02659h          	;. Y &
	ram:7e70 37             scf                  	;7
	ram:7e71 c9             ret                  	;.
l7e72h:
	ram:7e72 d1             pop de               	;.
	ram:7e73 fe 86          cp 086h              	;. .
	ram:7e75 d2 8a 0a       jp nc,00a8ah         	;. . .
	ram:7e78 cd 3f 38       call 0383fh          	;. ? 8
	ram:7e7b 3e 01          ld a,001h            	;> .
	ram:7e7d 18 e5          jr l7e64h            	;. .
l7e7fh:
	ram:7e7f 00             nop                  	;.
	ram:7e80 9d             sbc a,l              	;.
	ram:7e81 fb             ei                   	;.
	ram:7e82 10 00          djnz l7e84h          	;. .
l7e84h:
	ram:7e84 00             nop                  	;.
	ram:7e85 00             nop                  	;.
	ram:7e86 00             nop                  	;.
	ram:7e87 00             nop                  	;.
	ram:7e88 00             nop                  	;.
	ram:7e89 00             nop                  	;.
	ram:7e8a f2 fb 50       jp p,l50fbh          	;. . P
	ram:7e8d 00             nop                  	;.
	ram:7e8e 00             nop                  	;.
	ram:7e8f 00             nop                  	;.
	ram:7e90 00             nop                  	;.
	ram:7e91 00             nop                  	;.
	ram:7e92 00             nop                  	;.
l7e93h:
	ram:7e93 00             nop                  	;.
	ram:7e94 f3             di                   	;.
	ram:7e95 fb             ei                   	;.
	ram:7e96 10 00          djnz l7e98h          	;. .
l7e98h:
	ram:7e98 00             nop                  	;.
	ram:7e99 00             nop                  	;.
	ram:7e9a 00             nop                  	;.
	ram:7e9b 00             nop                  	;.
	ram:7e9c 00             nop                  	;.
l7e9dh:
	ram:7e9d 00             nop                  	;.
	ram:7e9e f9             ld sp,hl             	;.
	ram:7e9f fb             ei                   	;.
	ram:7ea0 10 00          djnz l7ea2h          	;. .
l7ea2h:
	ram:7ea2 00             nop                  	;.
	ram:7ea3 00             nop                  	;.
	ram:7ea4 00             nop                  	;.
	ram:7ea5 00             nop                  	;.
	ram:7ea6 00             nop                  	;.
sub_7ea7h:
	ram:7ea7 21 6e 00       ld hl,0006eh         	;! n .
	ram:7eaa cd 28 2e       call 02e28h          	;. ( .
	ram:7ead 22 29 86       ld (08629h),hl       	;" ) .
	ram:7eb0 21 00 00       ld hl,00000h         	;! . .
	ram:7eb3 c9             ret                  	;.
sub_7eb4h:
	ram:7eb4 7e             ld a,(hl)            	;~
	ram:7eb5 fe 02          cp 002h              	;. .
l7eb7h:
	ram:7eb7 3e 8d          ld a,08dh            	;> .
	ram:7eb9 c2 53 7d       jp nz,l7d53h         	;. S }
	ram:7ebc 23             inc hl               	;#
	ram:7ebd 7e             ld a,(hl)            	;~
	ram:7ebe b7             or a                 	;.
	ram:7ebf 20 f6          jr nz,l7eb7h         	;.
	ram:7ec1 23             inc hl               	;#
	ram:7ec2 e7             rst 20h              	;.
	ram:7ec3 13             inc de               	;.
	ram:7ec4 c3 9d 20       jp 0209dh            	;. .  
sub_7ec7h:
	ram:7ec7 21 93 7e       ld hl,l7e93h         	;! . ~
	ram:7eca e7             rst 20h              	;.
	ram:7ecb cd d6 23       call 023d6h          	;. . #
	ram:7ece ca 9b 0f       jp z,00f9bh          	;. . .
	ram:7ed1 ef             rst 28h              	;.
	ram:7ed2 cd 73 25       call 02573h          	;. s %
	ram:7ed5 c3 61 0d       jp 00d61h            	;. a .
sub_7ed8h:
	ram:7ed8 cd 51 61       call sub_6151h       	;. Q a
	ram:7edb cd 23 61       call sub_6123h       	;. # a
sub_7edeh:
	ram:7ede cd 4c 62       call sub_624ch       	;. L b
	ram:7ee1 cd e5 61       call sub_61e5h       	;. . a
	ram:7ee4 c9             ret                  	;.
sub_7ee5h:
	ram:7ee5 cd 51 61       call sub_6151h       	;. Q a
	ram:7ee8 cd 2f 61       call sub_612fh       	;. / a
	ram:7eeb c9             ret                  	;.
sub_7eech:
	ram:7eec cd f8 60       call sub_60f8h       	;. . `
	ram:7eef cd ea 60       call sub_60eah       	;. . `
sub_7ef2h:
	ram:7ef2 cd 2c 62       call sub_622ch       	;. , b
	ram:7ef5 cd 3c 62       call sub_623ch       	;. < b
	ram:7ef8 c9             ret                  	;.
sub_7ef9h:
	ram:7ef9 cd 21 20       call 02021h          	;. !  
	ram:7efc cd 81 61       call sub_6181h       	;. . a
	ram:7eff cd 8e 1f       call 01f8eh          	;. . .
	ram:7f02 d8             ret c                	;.
	ram:7f03 cd 19 20       call 02019h          	;. .  
	ram:7f06 cd 70 61       call sub_6170h       	;. p a
	ram:7f09 cd 8e 1f       call 01f8eh          	;. . .
	ram:7f0c d8             ret c                	;.
	ram:7f0d cd 60 20       call 02060h          	;. `  
	ram:7f10 af             xor a                	;.
	ram:7f11 c9             ret                  	;.
sub_7f12h:
	ram:7f12 cd 51 61       call sub_6151h       	;. Q a
	ram:7f15 cd d1 23       call 023d1h          	;. . #
	ram:7f18 28 18          jr z,l7f32h          	;( .
	ram:7f1a 2a 83 80       ld hl,(08083h)       	;* . .
	ram:7f1d 11 0d 00       ld de,0000dh         	;. . .
	ram:7f20 b7             or a                 	;.
	ram:7f21 ed 52          sbc hl,de            	;. R
	ram:7f23 eb             ex de,hl             	;.
	ram:7f24 21 19 f8       ld hl,0f819h         	;! . .
	ram:7f27 b7             or a                 	;.
	ram:7f28 ed 52          sbc hl,de            	;. R
	ram:7f2a 30 06          jr nc,l7f32h         	;0 .
	ram:7f2c cd 3e 21       call 0213eh          	;. > !
	ram:7f2f eb             ex de,hl             	;.
	ram:7f30 18 06          jr l7f38h            	;. .
l7f32h:
	ram:7f32 cd 3e 21       call 0213eh          	;. > !
	ram:7f35 21 19 f8       ld hl,0f819h         	;! . .
l7f38h:
	ram:7f38 22 83 80       ld (08083h),hl       	;" . .
	ram:7f3b c9             ret                  	;.
sub_7f3ch:
	ram:7f3c cd 51 61       call sub_6151h       	;. Q a
	ram:7f3f cd 9b 25       call 0259bh          	;. . %
	ram:7f42 ed 5b 34 86    ld de,(08634h)       	;. [ 4 .
	ram:7f46 c3 11 21       jp 02111h            	;. . !
sub_7f49h:
	ram:7f49 cd 21 20       call 02021h          	;. !  
	ram:7f4c cd 81 61       call sub_6181h       	;. . a
	ram:7f4f cd 58 7f       call sub_7f58h       	;. X .
	ram:7f52 cd 19 20       call 02019h          	;. .  
	ram:7f55 cd 70 61       call sub_6170h       	;. p a
sub_7f58h:
	ram:7f58 cd 8e 1f       call 01f8eh          	;. . .
	ram:7f5b da 62 7d       jp c,l7d62h          	;. b }
	ram:7f5e c9             ret                  	;.
sub_7f5fh:
	ram:7f5f cd 13 61       call sub_6113h       	;. . a
	ram:7f62 cd 23 61       call sub_6123h       	;. # a
	ram:7f65 cd 88 1f       call 01f88h          	;. . .
	ram:7f68 d0             ret nc               	;.
	ram:7f69 cd d8 7e       call sub_7ed8h       	;. . ~
	ram:7f6c cd 37 61       call sub_6137h       	;. 7 a
	ram:7f6f cd 0b 61       call sub_610bh       	;. . a
	ram:7f72 cd f2 7e       call sub_7ef2h       	;. . ~
sub_7f75h:
	ram:7f75 cd 43 61       call sub_6143h       	;. C a
	ram:7f78 cd 28 62       call sub_6228h       	;. ( b
	ram:7f7b cd 69 61       call sub_6169h       	;. i a
	ram:7f7e cd 16 62       call sub_6216h       	;. . b
	ram:7f81 c9             ret                  	;.
sub_7f82h:
	ram:7f82 cd 4a 2e       call 02e4ah          	;. J .
	ram:7f85 cd 30 7e       call sub_7e30h       	;. 0 ~
	ram:7f88 f5             push af              	;.
	ram:7f89 11 f6 ff       ld de,0fff6h         	;. . .
	ram:7f8c 19             add hl,de            	;.
	ram:7f8d 22 29 86       ld (08629h),hl       	;" ) .
	ram:7f90 f1             pop af               	;.
l7f91h:
	ram:7f91 f5             push af              	;.
	ram:7f92 dc 0c 2e       call c,02e0ch        	;. . .
	ram:7f95 f1             pop af               	;.
	ram:7f96 d8             ret c                	;.
	ram:7f97 cd 23 61       call sub_6123h       	;. # a
	ram:7f9a cd d6 7d       call sub_7dd6h       	;. . }
	ram:7f9d 37             scf                  	;7
	ram:7f9e 28 f1          jr z,l7f91h          	;( .
	ram:7fa0 cd 16 62       call sub_6216h       	;. . b
	ram:7fa3 cd f4 2d       call 02df4h          	;. . -
	ram:7fa6 cd 28 62       call sub_6228h       	;. ( b
	ram:7fa9 af             xor a                	;.
	ram:7faa c9             ret                  	;.
sub_7fabh:
	ram:7fab cd 4c 61       call sub_614ch       	;. L a
	ram:7fae 21 9d 7e       ld hl,l7e9dh         	;! . ~
	ram:7fb1 e7             rst 20h              	;.
	ram:7fb2 cd d6 23       call 023d6h          	;. . #
	ram:7fb5 28 04          jr z,l7fbbh          	;( .
	ram:7fb7 ef             rst 28h              	;.
	ram:7fb8 cd 73 25       call 02573h          	;. s %
l7fbbh:
	ram:7fbb cd 61 0d       call 00d61h          	;. a .
	ram:7fbe cd 81 61       call sub_6181h       	;. . a
	ram:7fc1 cd 2b 0d       call 00d2bh          	;. + .
	ram:7fc4 cd 2c 62       call sub_622ch       	;. , b
	ram:7fc7 c9             ret                  	;.
 ; Unused bytes fill in 16k block
	ram:7fc8 ff             rst 38h              	;.
	ram:7fc9 ff             rst 38h              	;.
	ram:7fca ff             rst 38h              	;.
	ram:7fcb ff             rst 38h              	;.
	ram:7fcc ff             rst 38h              	;.
	ram:7fcd ff             rst 38h              	;.
	ram:7fce ff             rst 38h              	;.
	ram:7fcf ff             rst 38h              	;.
	ram:7fd0 ff             rst 38h              	;.
	ram:7fd1 ff             rst 38h              	;.
	ram:7fd2 ff             rst 38h              	;.
	ram:7fd3 ff             rst 38h              	;.
	ram:7fd4 ff             rst 38h              	;.
	ram:7fd5 ff             rst 38h              	;.
	ram:7fd6 ff             rst 38h              	;.
	ram:7fd7 ff             rst 38h              	;.
	ram:7fd8 ff             rst 38h              	;.
	ram:7fd9 ff             rst 38h              	;.
	ram:7fda ff             rst 38h              	;.
	ram:7fdb ff             rst 38h              	;.
	ram:7fdc ff             rst 38h              	;.
	ram:7fdd ff             rst 38h              	;.
	ram:7fde ff             rst 38h              	;.
	ram:7fdf ff             rst 38h              	;.
	ram:7fe0 ff             rst 38h              	;.
	ram:7fe1 ff             rst 38h              	;.
	ram:7fe2 ff             rst 38h              	;.
	ram:7fe3 ff             rst 38h              	;.
	ram:7fe4 ff             rst 38h              	;.
	ram:7fe5 ff             rst 38h              	;.
	ram:7fe6 ff             rst 38h              	;.
	ram:7fe7 ff             rst 38h              	;.
	ram:7fe8 ff             rst 38h              	;.
	ram:7fe9 ff             rst 38h              	;.
	ram:7fea ff             rst 38h              	;.
	ram:7feb ff             rst 38h              	;.
	ram:7fec ff             rst 38h              	;.
	ram:7fed ff             rst 38h              	;.
	ram:7fee ff             rst 38h              	;.
	ram:7fef ff             rst 38h              	;.
	ram:7ff0 ff             rst 38h              	;.
	ram:7ff1 ff             rst 38h              	;.
	ram:7ff2 ff             rst 38h              	;.
	ram:7ff3 ff             rst 38h              	;.
	ram:7ff4 ff             rst 38h              	;.
	ram:7ff5 ff             rst 38h              	;.
	ram:7ff6 ff             rst 38h              	;.
	ram:7ff7 ff             rst 38h              	;.
	ram:7ff8 ff             rst 38h              	;.
	ram:7ff9 ff             rst 38h              	;.
	ram:7ffa ff             rst 38h              	;.
	ram:7ffb ff             rst 38h              	;.
	ram:7ffc ff             rst 38h              	;.
	ram:7ffd ff             rst 38h              	;.
	ram:7ffe ff             rst 38h              	;.
	ram:7fff ff             rst 38h              	;.
