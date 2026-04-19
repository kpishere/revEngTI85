; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p6.rom

	org 04000h

l4000h:
	ram:4000 21 2b 40       ld hl,l402bh         	;! + @
	ram:4003 cd 58 06       call 00658h          	;. X .
	ram:4006 21 c1 30       ld hl,030c1h         	;! . 0
	ram:4009 cd 76 53       call sub_5376h       	;. v S
	ram:400c cd 0b 3c       call 03c0bh          	;. . <
	ram:400f 3e 4c          ld a,04ch            	;> L
	ram:4011 cd 85 3d       call 03d85h          	;. . =
	ram:4014 dd 21 01 02    ld ix,00201h         	;. ! . .
	ram:4018 dd 22 21 8b    ld (08b21h),ix       	;. " ! .
	ram:401c cd 8b 3d       call 03d8bh          	;. . =
	ram:401f cd 45 41       call sub_4145h       	;. E A
l4022h:
	ram:4022 cd 2d 54       call sub_542dh       	;. - T
	ram:4025 cd 4c 40       call sub_404ch       	;. L @
	ram:4028 c3 1d 54       jp l541dh            	;. . T
l402bh:
	ram:402b 00             nop                  	;.
	ram:402c 41             ld b,c               	;A
	ram:402d d9             exx                  	;.
	ram:402e 34             inc (hl)             	;4
	ram:402f 36 7d          ld (hl),07dh         	;6 }
	ram:4031 b5             or l                 	;.
	ram:4032 34             inc (hl)             	;4
	ram:4033 b2             or d                 	;.
	ram:4034 58             ld e,b               	;X
	ram:4035 4b             ld c,e               	;K
	ram:4036 40             ld b,b               	;@
	ram:4037 0a             ld a,(bc)            	;.
l4038h:
	ram:4038 78             ld a,b               	;x
	ram:4039 00             nop                  	;.
	ram:403a 79             ld a,c               	;y
	ram:403b 00             nop                  	;.
sub_403ch:
	ram:403c cd 8f 57       call sub_578fh       	;. . W
	ram:403f cd 33 26       call 02633h          	;. 3 &
	ram:4042 cd c3 40       call sub_40c3h       	;. . @
	ram:4045 cd f9 35       call 035f9h          	;. . 5
	ram:4048 cd be 57       call sub_57beh       	;. . W
	ram:404b c9             ret                  	;.
sub_404ch:
	ram:404c cd c3 40       call sub_40c3h       	;. . @
	ram:404f 7e             ld a,(hl)            	;~
	ram:4050 cd 81 40       call sub_4081h       	;. . @
	ram:4053 cd 38 46       call sub_4638h       	;. 8 F
	ram:4056 fd cb 0c c6    set 0,(iy+00ch)      	;. . . .
	ram:405a 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:405d 22 35 83       ld (08335h),hl       	;" 5 .
	ram:4060 3a 50 83       ld a,(08350h)        	;: P .
	ram:4063 32 51 83       ld (08351h),a        	;2 Q .
	ram:4066 21 82 80       ld hl,08082h         	;! . .
l4069h:
	ram:4069 7e             ld a,(hl)            	;~
	ram:406a b7             or a                 	;.
	ram:406b 28 08          jr z,l4075h          	;( .
	ram:406d cd 65 45       call sub_4565h       	;. e E
	ram:4070 38 03          jr c,l4075h          	;8 .
	ram:4072 23             inc hl               	;#
	ram:4073 18 f4          jr l4069h            	;. .
l4075h:
	ram:4075 fd cb 0c 86    res 0,(iy+00ch)      	;. . . .
	ram:4079 d8             ret c                	;.
	ram:407a 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:407d 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:4080 c9             ret                  	;.
sub_4081h:
	ram:4081 11 82 80       ld de,08082h         	;. . .
	ram:4084 fe 2a          cp 02ah              	;. *
	ram:4086 d2 79 0a       jp nc,00a79h         	;. y .
	ram:4089 fe 00          cp 000h              	;. .
	ram:408b 20 04          jr nz,l4091h         	;.
	ram:408d 3e 74          ld a,074h            	;> t
	ram:408f 18 2a          jr l40bbh            	;. *
l4091h:
	ram:4091 fe 10          cp 010h              	;. .
	ram:4093 da 79 0a       jp c,00a79h          	;. y .
	ram:4096 20 04          jr nz,l409ch         	;.
	ram:4098 3e 51          ld a,051h            	;> Q
	ram:409a 18 1f          jr l40bbh            	;. .
l409ch:
	ram:409c 3e 51          ld a,051h            	;> Q
	ram:409e cd bf 40       call sub_40bfh       	;. . @
	ram:40a1 fe 1a          cp 01ah              	;. .
	ram:40a3 38 14          jr c,l40b9h          	;8 .
	ram:40a5 fe 20          cp 020h              	;.  
	ram:40a7 da 79 0a       jp c,00a79h          	;. y .
	ram:40aa 20 04          jr nz,l40b0h         	;.
	ram:40ac 3e 27          ld a,027h            	;> '
	ram:40ae 18 0b          jr l40bbh            	;. .
l40b0h:
	ram:40b0 3e 27          ld a,027h            	;> '
	ram:40b2 cd bf 40       call sub_40bfh       	;. . @
	ram:40b5 c6 10          add a,010h           	;. .
	ram:40b7 18 02          jr l40bbh            	;. .
l40b9h:
	ram:40b9 c6 20          add a,020h           	;.  
l40bbh:
	ram:40bb cd bf 40       call sub_40bfh       	;. . @
	ram:40be 97             sub a                	;.
sub_40bfh:
	ram:40bf 12             ld (de),a            	;.
	ram:40c0 13             inc de               	;.
	ram:40c1 7e             ld a,(hl)            	;~
	ram:40c2 c9             ret                  	;.
sub_40c3h:
	ram:40c3 21 de 85       ld hl,085deh         	;! . .
	ram:40c6 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:40c9 fe 03          cp 003h              	;. .
	ram:40cb d2 79 0a       jp nc,00a79h         	;. y .
	ram:40ce fe 01          cp 001h              	;. .
	ram:40d0 da 79 0a       jp c,00a79h          	;. y .
	ram:40d3 c8             ret z                	;.
	ram:40d4 23             inc hl               	;#
	ram:40d5 c9             ret                  	;.
sub_40d6h:
	ram:40d6 cd 72 7a       call sub_7a72h       	;. r z
	ram:40d9 21 98 80       ld hl,08098h         	;! . .
	ram:40dc 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:40df 22 19 8b       ld (08b19h),hl       	;" . .
	ram:40e2 cd 4c 40       call sub_404ch       	;. L @
	ram:40e5 c3 d5 77       jp l77d5h            	;. . w
sub_40e8h:
	ram:40e8 cd 3c 40       call sub_403ch       	;. < @
	ram:40eb cd d6 40       call sub_40d6h       	;. . @
	ram:40ee 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:40f1 21 22 8b       ld hl,08b22h         	;! " .
	ram:40f4 be             cp (hl)              	;.
	ram:40f5 38 03          jr c,l40fah          	;8 .
	ram:40f7 32 22 8b       ld (08b22h),a        	;2 " .
l40fah:
	ram:40fa 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:40fd fe 02          cp 002h              	;. .
	ram:40ff c9             ret                  	;.
	ram:4100 fe 06          cp 006h              	;. .
	ram:4102 28 04          jr z,l4108h          	;( .
	ram:4104 fe 04          cp 004h              	;. .
	ram:4106 20 13          jr nz,l411bh         	;.
l4108h:
	ram:4108 cd 20 46       call sub_4620h       	;.   F
	ram:410b c8             ret z                	;.
	ram:410c cd e8 40       call sub_40e8h       	;. . @
	ram:410f 30 07          jr nc,l4118h         	;0 .
	ram:4111 3c             inc a                	;<
l4112h:
	ram:4112 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:4115 32 0c 80       ld (0800ch),a        	;2 . .
l4118h:
	ram:4118 c3 22 40       jp l4022h            	;. " @
l411bh:
	ram:411b fe 03          cp 003h              	;. .
	ram:411d 20 0c          jr nz,l412bh         	;.
	ram:411f cd 20 46       call sub_4620h       	;.   F
	ram:4122 c8             ret z                	;.
	ram:4123 cd e8 40       call sub_40e8h       	;. . @
	ram:4126 38 f0          jr c,l4118h          	;8 .
	ram:4128 3d             dec a                	;=
	ram:4129 18 e7          jr l4112h            	;. .
l412bh:
	ram:412b fe c1          cp 0c1h              	;. .
	ram:412d 20 09          jr nz,l4138h         	;.
	ram:412f cd 36 7d       call sub_7d36h       	;. 6 }
	ram:4132 cd 39 3e       call 03e39h          	;. 9 >
	ram:4135 c3 00 40       jp l4000h            	;. . @
l4138h:
	ram:4138 fe 16          cp 016h              	;. .
	ram:413a c8             ret z                	;.
	ram:413b fd cb 10 a6    res 4,(iy+010h)      	;. . . .
	ram:413f c3 c0 54       jp l54c0h            	;. . T
l4142h:
	ram:4142 32 0c 80       ld (0800ch),a        	;2 . .
sub_4145h:
	ram:4145 cd 63 41       call sub_4163h       	;. c A
	ram:4148 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:414b fe 00          cp 000h              	;. .
	ram:414d 28 03          jr z,l4152h          	;( .
	ram:414f cd d6 40       call sub_40d6h       	;. . @
l4152h:
	ram:4152 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4155 fe 02          cp 002h              	;. .
	ram:4157 30 03          jr nc,l415ch         	;0 .
	ram:4159 3c             inc a                	;<
	ram:415a 18 e6          jr l4142h            	;. .
l415ch:
	ram:415c 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:415f 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4162 c9             ret                  	;.
sub_4163h:
	ram:4163 3e 01          ld a,001h            	;> .
	ram:4165 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4168 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:416b d6 01          sub 001h             	;. .
	ram:416d 07             rlca                 	;.
	ram:416e 5f             ld e,a               	;_
	ram:416f 16 00          ld d,000h            	;. .
	ram:4171 21 38 40       ld hl,l4038h         	;! 8 @
	ram:4174 19             add hl,de            	;.
	ram:4175 7e             ld a,(hl)            	;~
	ram:4176 cd c5 3f       call 03fc5h          	;. . ?
	ram:4179 23             inc hl               	;#
	ram:417a 7e             ld a,(hl)            	;~
	ram:417b b7             or a                 	;.
	ram:417c 28 03          jr z,l4181h          	;( .
	ram:417e cd c5 3f       call 03fc5h          	;. . ?
l4181h:
	ram:4181 3e 3d          ld a,03dh            	;> =
	ram:4183 cd c5 3f       call 03fc5h          	;. . ?
	ram:4186 c9             ret                  	;.
l4187h:
	ram:4187 21 b1 41       ld hl,l41b1h         	;! . A
	ram:418a cd 50 06       call 00650h          	;. P .
	ram:418d cd c3 3e       call 03ec3h          	;. . >
	ram:4190 3e 1a          ld a,01ah            	;> .
	ram:4192 cd 85 3d       call 03d85h          	;. . =
	ram:4195 21 e0 30       ld hl,030e0h         	;! . 0
	ram:4198 cd 76 53       call sub_5376h       	;. v S
	ram:419b cd 8b 3d       call 03d8bh          	;. . =
	ram:419e 3e 02          ld a,002h            	;> .
	ram:41a0 32 0c 80       ld (0800ch),a        	;2 . .
	ram:41a3 97             sub a                	;.
	ram:41a4 32 0d 80       ld (0800dh),a        	;2 . .
	ram:41a7 21 bb 32       ld hl,032bbh         	;! . 2
	ram:41aa cd 45 3e       call 03e45h          	;. E >
	ram:41ad cd 6f 65       call sub_656fh       	;. o e
	ram:41b0 c9             ret                  	;.
l41b1h:
	ram:41b1 bf             cp a                 	;.
	ram:41b2 41             ld b,c               	;A
	ram:41b3 d9             exx                  	;.
	ram:41b4 34             inc (hl)             	;4
	ram:41b5 25             dec h                	;%
	ram:41b6 7d             ld a,l               	;}
	ram:41b7 b5             or l                 	;.
	ram:41b8 34             inc (hl)             	;4
	ram:41b9 8b             adc a,e              	;.
	ram:41ba 34             inc (hl)             	;4
	ram:41bb be             cp (hl)              	;.
	ram:41bc 41             ld b,c               	;A
	ram:41bd 0a             ld a,(bc)            	;.
	ram:41be c9             ret                  	;.
	ram:41bf fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:41c3 ca 8f 5b       jp z,l5b8fh          	;. . [
	ram:41c6 fe c1          cp 0c1h              	;. .
	ram:41c8 20 06          jr nz,l41d0h         	;.
	ram:41ca cd 25 7d       call sub_7d25h       	;. % }
	ram:41cd c3 87 41       jp l4187h            	;. . A
l41d0h:
	ram:41d0 fe 04          cp 004h              	;. .
	ram:41d2 20 05          jr nz,l41d9h         	;.
	ram:41d4 3e 06          ld a,006h            	;> .
	ram:41d6 32 05 80       ld (08005h),a        	;2 . .
l41d9h:
	ram:41d9 cd 87 65       call sub_6587h       	;. . e
	ram:41dc d0             ret nc               	;.
	ram:41dd 3e 08          ld a,008h            	;> .
	ram:41df cd c5 7d       call sub_7dc5h       	;. . }
	ram:41e2 38 0c          jr c,l41f0h          	;8 .
	ram:41e4 cd 5f 36       call 0365fh          	;. _ 6
	ram:41e7 e6 1e          and 01eh             	;. .
	ram:41e9 fe 08          cp 008h              	;. .
	ram:41eb 28 0c          jr z,l41f9h          	;( .
	ram:41ed cd 0b 2c       call 02c0bh          	;. . ,
l41f0h:
	ram:41f0 cd 8c 29       call 0298ch          	;. . )
	ram:41f3 cd 27 1f       call 01f27h          	;. ' .
	ram:41f6 cd 56 20       call 02056h          	;. V  
l41f9h:
	ram:41f9 cd 82 6f       call sub_6f82h       	;. . o
	ram:41fc 21 b2 58       ld hl,l58b2h         	;! . X
	ram:41ff 22 95 81       ld (08195h),hl       	;" . .
	ram:4202 3e 5b          ld a,05bh            	;> [
	ram:4204 cd 85 3d       call 03d85h          	;. . =
l4207h:
	ram:4207 3e 02          ld a,002h            	;> .
	ram:4209 32 0c 80       ld (0800ch),a        	;2 . .
	ram:420c 97             sub a                	;.
	ram:420d 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4210 cb e7          set 4,a              	;. .
	ram:4212 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:4215 cd ab 42       call sub_42abh       	;. . B
	ram:4218 21 27 42       ld hl,l4227h         	;! ' B
	ram:421b 22 8d 81       ld (0818dh),hl       	;" . .
l421eh:
	ram:421e cd 2d 54       call sub_542dh       	;. - T
	ram:4221 cd c7 42       call sub_42c7h       	;. . B
	ram:4224 c3 1d 54       jp l541dh            	;. . T
l4227h:
	ram:4227 fe 06          cp 006h              	;. .
	ram:4229 28 04          jr z,l422fh          	;( .
	ram:422b fe 04          cp 004h              	;. .
	ram:422d 20 05          jr nz,l4234h         	;.
l422fh:
	ram:422f cd d1 42       call sub_42d1h       	;. . B
	ram:4232 18 ea          jr l421eh            	;. .
l4234h:
	ram:4234 fe 03          cp 003h              	;. .
	ram:4236 20 09          jr nz,l4241h         	;.
	ram:4238 cd d1 42       call sub_42d1h       	;. . B
l423bh:
	ram:423b cd cf 2d       call 02dcfh          	;. . -
	ram:423e c3 87 41       jp l4187h            	;. . A
l4241h:
	ram:4241 fe a9          cp 0a9h              	;. .
	ram:4243 28 2d          jr z,l4272h          	;( -
	ram:4245 fe a5          cp 0a5h              	;. .
	ram:4247 28 38          jr z,l4281h          	;( 8
	ram:4249 fe 95          cp 095h              	;. .
	ram:424b 28 13          jr z,l4260h          	;( .
	ram:424d fe c1          cp 0c1h              	;. .
	ram:424f 20 09          jr nz,l425ah         	;.
	ram:4251 cd 25 7d       call sub_7d25h       	;. % }
	ram:4254 cd 39 3e       call 03e39h          	;. 9 >
	ram:4257 c3 87 41       jp l4187h            	;. . A
l425ah:
	ram:425a fe 16          cp 016h              	;. .
	ram:425c c2 c0 54       jp nz,l54c0h         	;. . T
	ram:425f c9             ret                  	;.
l4260h:
	ram:4260 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:4263 cd 24 2f       call 02f24h          	;. $ /
	ram:4266 d7             rst 10h              	;.
	ram:4267 da 84 42       jp c,l4284h          	;. . B
	ram:426a cd 5f 36       call 0365fh          	;. _ 6
	ram:426d cd 0b 2c       call 02c0bh          	;. . ,
	ram:4270 18 12          jr l4284h            	;. .
l4272h:
	ram:4272 cd d1 42       call sub_42d1h       	;. . B
	ram:4275 cd 24 2f       call 02f24h          	;. $ /
	ram:4278 f6 01          or 001h              	;. .
	ram:427a 3e 00          ld a,000h            	;> .
	ram:427c cd 47 3c       call 03c47h          	;. G <
	ram:427f 18 0d          jr l428eh            	;. .
l4281h:
	ram:4281 cd d1 42       call sub_42d1h       	;. . B
l4284h:
	ram:4284 cd 24 2f       call 02f24h          	;. $ /
	ram:4287 f6 01          or 001h              	;. .
	ram:4289 3e 00          ld a,000h            	;> .
	ram:428b cd 41 3c       call 03c41h          	;. A <
l428eh:
	ram:428e 38 ab          jr c,l423bh          	;8 .
	ram:4290 cd f7 2d       call 02df7h          	;. . -
	ram:4293 cd 60 20       call 02060h          	;. `  
	ram:4296 cd 4a 2e       call 02e4ah          	;. J .
	ram:4299 3e 01          ld a,001h            	;> .
	ram:429b 32 0c 80       ld (0800ch),a        	;2 . .
	ram:429e 97             sub a                	;.
	ram:429f 32 0d 80       ld (0800dh),a        	;2 . .
	ram:42a2 cd c4 56       call sub_56c4h       	;. . V
	ram:42a5 cd 28 77       call sub_7728h       	;. ( w
	ram:42a8 c3 07 42       jp l4207h            	;. . B
sub_42abh:
	ram:42ab 3e 02          ld a,002h            	;> .
	ram:42ad 32 0c 80       ld (0800ch),a        	;2 . .
	ram:42b0 97             sub a                	;.
	ram:42b1 32 0d 80       ld (0800dh),a        	;2 . .
	ram:42b4 21 bb 32       ld hl,032bbh         	;! . 2
	ram:42b7 cd 45 3e       call 03e45h          	;. E >
l42bah:
	ram:42ba cd c4 56       call sub_56c4h       	;. . V
	ram:42bd cd e0 77       call sub_77e0h       	;. . w
	ram:42c0 cd c7 42       call sub_42c7h       	;. . B
	ram:42c3 cd d5 77       call l77d5h          	;. . w
	ram:42c6 c9             ret                  	;.
sub_42c7h:
	ram:42c7 cd 24 2f       call 02f24h          	;. $ /
	ram:42ca cd c1 3a       call 03ac1h          	;. . :
	ram:42cd cd af 34       call 034afh          	;. . 4
	ram:42d0 c9             ret                  	;.
sub_42d1h:
	ram:42d1 cd 20 46       call sub_4620h       	;.   F
	ram:42d4 20 03          jr nz,l42d9h         	;.
	ram:42d6 33             inc sp               	;3
	ram:42d7 33             inc sp               	;3
	ram:42d8 c9             ret                  	;.
l42d9h:
	ram:42d9 21 89 04       ld hl,00489h         	;! . .
	ram:42dc cd b5 0a       call 00ab5h          	;. . .
	ram:42df cd e7 42       call sub_42e7h       	;. . B
	ram:42e2 cd db 0a       call 00adbh          	;. . .
	ram:42e5 18 d3          jr l42bah            	;. .
sub_42e7h:
	ram:42e7 cd da 7d       call sub_7ddah       	;. . }
	ram:42ea cd 1a 2f       call 02f1ah          	;. . /
	ram:42ed fd cb 05 6e    bit 5,(iy+005h)      	;. . . n
	ram:42f1 28 07          jr z,l42fah          	;( .
	ram:42f3 df             rst 18h              	;.
	ram:42f4 cd 60 20       call 02060h          	;. `  
	ram:42f7 cd 29 36       call 03629h          	;. ) 6
l42fah:
	ram:42fa cd bb 57       call sub_57bbh       	;. . W
	ram:42fd c9             ret                  	;.
l42feh:
	ram:42fe cd ad 7d       call sub_7dadh       	;. . }
	ram:4301 cd 39 3e       call 03e39h          	;. 9 >
	ram:4304 21 45 43       ld hl,l4345h         	;! E C
	ram:4307 cd 58 06       call 00658h          	;. X .
	ram:430a 21 76 31       ld hl,03176h         	;! v 1
	ram:430d cd 76 53       call sub_5376h       	;. v S
	ram:4310 cd 0b 3c       call 03c0bh          	;. . <
	ram:4313 cd ae 43       call sub_43aeh       	;. . C
	ram:4316 cd 8b 3d       call 03d8bh          	;. . =
	ram:4319 cd 3b 43       call sub_433bh       	;. ; C
	ram:431c cd 65 44       call sub_4465h       	;. e D
	ram:431f cd ae 43       call sub_43aeh       	;. . C
	ram:4322 21 dc 43       ld hl,l43dch         	;! . C
	ram:4325 22 8d 81       ld (0818dh),hl       	;" . .
l4328h:
	ram:4328 cd 2d 54       call sub_542dh       	;. - T
	ram:432b cd 01 5d       call sub_5d01h       	;. . ]
l432eh:
	ram:432e da 25 54       jp c,l5425h          	;. % T
	ram:4331 cd 6b 43       call sub_436bh       	;. k C
	ram:4334 38 f8          jr c,l432eh          	;8 .
	ram:4336 eb             ex de,hl             	;.
	ram:4337 e7             rst 20h              	;.
	ram:4338 c3 1a 54       jp l541ah            	;. . T
sub_433bh:
	ram:433b cd cc 43       call sub_43cch       	;. . C
	ram:433e 21 24 8b       ld hl,08b24h         	;! $ .
	ram:4341 be             cp (hl)              	;.
	ram:4342 d8             ret c                	;.
	ram:4343 77             ld (hl),a            	;w
	ram:4344 c9             ret                  	;.
l4345h:
	ram:4345 dc 43 d9       call c,0d943h        	;. C .
	ram:4348 34             inc (hl)             	;4
	ram:4349 ad             xor l                	;.
	ram:434a 7d             ld a,l               	;}
	ram:434b b5             or l                 	;.
	ram:434c 34             inc (hl)             	;4
	ram:434d b2             or d                 	;.
	ram:434e 58             ld e,b               	;X
	ram:434f 36 6f          ld (hl),06fh         	;6 o
	ram:4351 0a             ld a,(bc)            	;.
sub_4352h:
	ram:4352 cd da 7d       call sub_7ddah       	;. . }
	ram:4355 fd cb 05 6e    bit 5,(iy+005h)      	;. . . n
	ram:4359 c8             ret z                	;.
	ram:435a cd 22 26       call 02622h          	;. " &
	ram:435d df             rst 18h              	;.
	ram:435e 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4361 cd 31 37       call 03731h          	;. 1 7
	ram:4364 cd af 3a       call 03aafh          	;. . :
	ram:4367 cd 1f 28       call 0281fh          	;. . (
	ram:436a c9             ret                  	;.
sub_436bh:
	ram:436b 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:436e cd 31 37       call 03731h          	;. 1 7
	ram:4371 d7             rst 10h              	;.
	ram:4372 d8             ret c                	;.
	ram:4373 e6 1f          and 01fh             	;. .
	ram:4375 fe 00          cp 000h              	;. .
	ram:4377 c8             ret z                	;.
	ram:4378 cd 0b 2c       call 02c0bh          	;. . ,
	ram:437b 37             scf                  	;7
	ram:437c c9             ret                  	;.
sub_437dh:
	ram:437d cd 72 7a       call sub_7a72h       	;. r z
	ram:4380 cd 6b 43       call sub_436bh       	;. k C
	ram:4383 d8             ret c                	;.
	ram:4384 eb             ex de,hl             	;.
	ram:4385 e7             rst 20h              	;.
	ram:4386 cd a0 7a       call sub_7aa0h       	;. . z
	ram:4389 cd 5a 7a       call sub_7a5ah       	;. Z z
	ram:438c 97             sub a                	;.
	ram:438d c9             ret                  	;.
sub_438eh:
	ram:438e 21 89 04       ld hl,00489h         	;! . .
	ram:4391 cd b5 0a       call 00ab5h          	;. . .
	ram:4394 cd 52 43       call sub_4352h       	;. R C
	ram:4397 cd db 0a       call 00adbh          	;. . .
	ram:439a cd be 57       call sub_57beh       	;. . W
	ram:439d cd 7d 43       call sub_437dh       	;. } C
	ram:43a0 cd f9 5c       call sub_5cf9h       	;. . \
	ram:43a3 d8             ret c                	;.
	ram:43a4 c8             ret z                	;.
	ram:43a5 f5             push af              	;.
	ram:43a6 cd b3 43       call sub_43b3h       	;. . C
	ram:43a9 f1             pop af               	;.
	ram:43aa 32 22 8b       ld (08b22h),a        	;2 " .
	ram:43ad c9             ret                  	;.
sub_43aeh:
	ram:43ae 3e 01          ld a,001h            	;> .
l43b0h:
	ram:43b0 32 22 8b       ld (08b22h),a        	;2 " .
sub_43b3h:
	ram:43b3 cd 6b 43       call sub_436bh       	;. k C
	ram:43b6 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:43b9 38 07          jr c,l43c2h          	;8 .
	ram:43bb fe 09          cp 009h              	;. .
	ram:43bd 28 04          jr z,l43c3h          	;( .
	ram:43bf 3c             inc a                	;<
	ram:43c0 18 ee          jr l43b0h            	;. .
l43c2h:
	ram:43c2 3d             dec a                	;=
l43c3h:
	ram:43c3 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:43c6 3e 01          ld a,001h            	;> .
	ram:43c8 32 22 8b       ld (08b22h),a        	;2 " .
	ram:43cb c9             ret                  	;.
sub_43cch:
	ram:43cc 3e 09          ld a,009h            	;> .
l43ceh:
	ram:43ce f5             push af              	;.
	ram:43cf cd b7 35       call 035b7h          	;. . 5
	ram:43d2 d7             rst 10h              	;.
	ram:43d3 38 02          jr c,l43d7h          	;8 .
	ram:43d5 f1             pop af               	;.
	ram:43d6 c9             ret                  	;.
l43d7h:
	ram:43d7 f1             pop af               	;.
	ram:43d8 3d             dec a                	;=
	ram:43d9 c8             ret z                	;.
	ram:43da 18 f2          jr l43ceh            	;. .
l43dch:
	ram:43dc fe 06          cp 006h              	;. .
	ram:43de 28 04          jr z,l43e4h          	;( .
	ram:43e0 fe 04          cp 004h              	;. .
	ram:43e2 20 38          jr nz,l441ch         	;8
l43e4h:
	ram:43e4 cd 20 46       call sub_4620h       	;.   F
	ram:43e7 c8             ret z                	;.
	ram:43e8 cd 8e 43       call sub_438eh       	;. . C
	ram:43eb fe 09          cp 009h              	;. .
	ram:43ed 30 2a          jr nc,l4419h         	;0 *
	ram:43ef 3c             inc a                	;<
	ram:43f0 32 22 8b       ld (08b22h),a        	;2 " .
	ram:43f3 cd 3d 55       call sub_553dh       	;. = U
	ram:43f6 38 15          jr c,l440dh          	;8 .
	ram:43f8 cd f9 5c       call sub_5cf9h       	;. . \
	ram:43fb 38 0b          jr c,l4408h          	;8 .
	ram:43fd cd cc 43       call sub_43cch       	;. . C
	ram:4400 21 22 8b       ld hl,08b22h         	;! " .
	ram:4403 be             cp (hl)              	;.
	ram:4404 38 0a          jr c,l4410h          	;8 .
	ram:4406 28 08          jr z,l4410h          	;( .
l4408h:
	ram:4408 cd f5 56       call sub_56f5h       	;. . V
	ram:440b 18 03          jr l4410h            	;. .
l440dh:
	ram:440d 32 0c 80       ld (0800ch),a        	;2 . .
l4410h:
	ram:4410 cd 07 45       call sub_4507h       	;. . E
	ram:4413 cd 7d 43       call sub_437dh       	;. } C
l4416h:
	ram:4416 cd 8d 44       call sub_448dh       	;. . D
l4419h:
	ram:4419 c3 28 43       jp l4328h            	;. ( C
l441ch:
	ram:441c fe 03          cp 003h              	;. .
	ram:441e 20 3a          jr nz,l445ah         	;:
	ram:4420 cd 20 46       call sub_4620h       	;.   F
	ram:4423 20 09          jr nz,l442eh         	;.
	ram:4425 cd 01 5d       call sub_5d01h       	;. . ]
	ram:4428 d0             ret nc               	;.
	ram:4429 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:442c 18 03          jr l4431h            	;. .
l442eh:
	ram:442e cd 8e 43       call sub_438eh       	;. . C
l4431h:
	ram:4431 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4434 fe 01          cp 001h              	;. .
	ram:4436 28 de          jr z,l4416h          	;( .
	ram:4438 38 dc          jr c,l4416h          	;8 .
	ram:443a 3d             dec a                	;=
	ram:443b 32 22 8b       ld (08b22h),a        	;2 " .
	ram:443e cd 51 55       call sub_5551h       	;. Q U
	ram:4441 30 12          jr nc,l4455h         	;0 .
	ram:4443 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4446 fe 02          cp 002h              	;. .
	ram:4448 38 03          jr c,l444dh          	;8 .
	ram:444a cd ee 56       call sub_56eeh       	;. . V
l444dh:
	ram:444d cd 07 45       call sub_4507h       	;. . E
	ram:4450 cd 7d 43       call sub_437dh       	;. } C
	ram:4453 18 03          jr l4458h            	;. .
l4455h:
	ram:4455 32 0c 80       ld (0800ch),a        	;2 . .
l4458h:
	ram:4458 18 bc          jr l4416h            	;. .
l445ah:
	ram:445a fe c1          cp 0c1h              	;. .
	ram:445c ca fe 42       jp z,l42feh          	;. . B
	ram:445f fe 16          cp 016h              	;. .
	ram:4461 c8             ret z                	;.
	ram:4462 c3 c0 54       jp l54c0h            	;. . T
sub_4465h:
	ram:4465 3e 01          ld a,001h            	;> .
l4467h:
	ram:4467 32 0c 80       ld (0800ch),a        	;2 . .
	ram:446a 32 22 8b       ld (08b22h),a        	;2 " .
	ram:446d cd 07 45       call sub_4507h       	;. . E
	ram:4470 cd 7d 43       call sub_437dh       	;. } C
	ram:4473 cd f9 5c       call sub_5cf9h       	;. . \
	ram:4476 30 0d          jr nc,l4485h         	;0 .
	ram:4478 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:447b 3c             inc a                	;<
	ram:447c 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:447f be             cp (hl)              	;.
	ram:4480 38 e5          jr c,l4467h          	;8 .
	ram:4482 cd f5 56       call sub_56f5h       	;. . V
l4485h:
	ram:4485 3e 01          ld a,001h            	;> .
	ram:4487 32 22 8b       ld (08b22h),a        	;2 " .
	ram:448a 32 0c 80       ld (0800ch),a        	;2 . .
sub_448dh:
	ram:448d 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4490 e5             push hl              	;.
	ram:4491 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:4494 e5             push hl              	;.
	ram:4495 7c             ld a,h               	;|
	ram:4496 3c             inc a                	;<
	ram:4497 21 0c 80       ld hl,0800ch         	;! . .
	ram:449a 96             sub (hl)             	;.
	ram:449b 32 22 8b       ld (08b22h),a        	;2 " .
	ram:449e 21 01 00       ld hl,00001h         	;! . .
	ram:44a1 22 0c 80       ld (0800ch),hl       	;" . .
	ram:44a4 cd 22 45       call sub_4522h       	;. " E
	ram:44a7 38 15          jr c,l44beh          	;8 .
	ram:44a9 cd 77 3c       call 03c77h          	;. w <
	ram:44ac 7e             ld a,(hl)            	;~
	ram:44ad fe 1e          cp 01eh              	;. .
	ram:44af 28 08          jr z,l44b9h          	;( .
	ram:44b1 fe 06          cp 006h              	;. .
	ram:44b3 28 04          jr z,l44b9h          	;( .
	ram:44b5 3e d0          ld a,0d0h            	;> .
	ram:44b7 18 02          jr l44bbh            	;. .
l44b9h:
	ram:44b9 3e 06          ld a,006h            	;> .
l44bbh:
	ram:44bb cd c5 3f       call 03fc5h          	;. . ?
l44beh:
	ram:44be cd 01 5d       call sub_5d01h       	;. . ]
	ram:44c1 38 3b          jr c,l44feh          	;8 ;
	ram:44c3 34             inc (hl)             	;4
	ram:44c4 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:44c7 3c             inc a                	;<
	ram:44c8 32 0c 80       ld (0800ch),a        	;2 . .
	ram:44cb 3c             inc a                	;<
	ram:44cc 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:44cf be             cp (hl)              	;.
	ram:44d0 28 0c          jr z,l44deh          	;( .
	ram:44d2 cd 22 45       call sub_4522h       	;. " E
	ram:44d5 38 e7          jr c,l44beh          	;8 .
	ram:44d7 3e d0          ld a,0d0h            	;> .
	ram:44d9 cd c5 3f       call 03fc5h          	;. . ?
	ram:44dc 18 e0          jr l44beh            	;. .
l44deh:
	ram:44de cd 22 45       call sub_4522h       	;. " E
	ram:44e1 38 1b          jr c,l44feh          	;8 .
	ram:44e3 21 00 00       ld hl,00000h         	;! . .
	ram:44e6 22 0d 80       ld (0800dh),hl       	;" . .
	ram:44e9 cd 77 3c       call 03c77h          	;. w <
	ram:44ec 7e             ld a,(hl)            	;~
	ram:44ed fe 1f          cp 01fh              	;. .
	ram:44ef 28 08          jr z,l44f9h          	;( .
	ram:44f1 fe 07          cp 007h              	;. .
	ram:44f3 28 04          jr z,l44f9h          	;( .
	ram:44f5 3e d0          ld a,0d0h            	;> .
	ram:44f7 18 02          jr l44fbh            	;. .
l44f9h:
	ram:44f9 3e 07          ld a,007h            	;> .
l44fbh:
	ram:44fb cd c5 3f       call 03fc5h          	;. . ?
l44feh:
	ram:44fe e1             pop hl               	;.
	ram:44ff 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:4502 e1             pop hl               	;.
	ram:4503 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4506 c9             ret                  	;.
sub_4507h:
	ram:4507 3e 01          ld a,001h            	;> .
	ram:4509 32 0d 80       ld (0800dh),a        	;2 . .
	ram:450c 3e 51          ld a,051h            	;> Q
	ram:450e cd c5 3f       call 03fc5h          	;. . ?
	ram:4511 3e 49          ld a,049h            	;> I
	ram:4513 cd c5 3f       call 03fc5h          	;. . ?
	ram:4516 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4519 c6 30          add a,030h           	;. 0
	ram:451b cd c5 3f       call 03fc5h          	;. . ?
	ram:451e cd a6 74       call sub_74a6h       	;. . t
	ram:4521 c9             ret                  	;.
sub_4522h:
	ram:4522 3e 00          ld a,000h            	;> .
	ram:4524 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4527 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:452a cd b7 35       call 035b7h          	;. . 5
	ram:452d d7             rst 10h              	;.
	ram:452e c9             ret                  	;.
sub_452fh:
	ram:452f cd 24 46       call sub_4624h       	;. $ F
	ram:4532 c8             ret z                	;.
	ram:4533 2b             dec hl               	;+
	ram:4534 7e             ld a,(hl)            	;~
	ram:4535 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:4538 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:453b 2b             dec hl               	;+
	ram:453c 77             ld (hl),a            	;w
	ram:453d 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4540 c9             ret                  	;.
sub_4541h:
	ram:4541 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:4544 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:4548 cd 8e 00       call 0008eh          	;. . .
	ram:454b c8             ret z                	;.
	ram:454c 7e             ld a,(hl)            	;~
	ram:454d 23             inc hl               	;#
	ram:454e 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4551 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4554 77             ld (hl),a            	;w
	ram:4555 23             inc hl               	;#
	ram:4556 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:4559 c9             ret                  	;.
sub_455ah:
	ram:455a 4f             ld c,a               	;O
	ram:455b cd 16 46       call sub_4616h       	;. . F
	ram:455e c8             ret z                	;.
	ram:455f 71             ld (hl),c            	;q
	ram:4560 23             inc hl               	;#
	ram:4561 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:4564 c9             ret                  	;.
sub_4565h:
	ram:4565 d5             push de              	;.
	ram:4566 e5             push hl              	;.
	ram:4567 f5             push af              	;.
	ram:4568 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:456b ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:456f cd 8e 00       call 0008eh          	;. . .
	ram:4572 d1             pop de               	;.
	ram:4573 28 08          jr z,l457dh          	;( .
	ram:4575 72             ld (hl),d            	;r
	ram:4576 23             inc hl               	;#
	ram:4577 22 35 83       ld (08335h),hl       	;" 5 .
	ram:457a b7             or a                 	;.
	ram:457b 18 01          jr l457eh            	;. .
l457dh:
	ram:457d 37             scf                  	;7
l457eh:
	ram:457e e1             pop hl               	;.
	ram:457f d1             pop de               	;.
	ram:4580 c9             ret                  	;.
sub_4581h:
	ram:4581 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:4584 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
l4588h:
	ram:4588 cd 8e 00       call 0008eh          	;. . .
	ram:458b 28 09          jr z,l4596h          	;( .
	ram:458d 0a             ld a,(bc)            	;.
	ram:458e 03             inc bc               	;.
	ram:458f b7             or a                 	;.
	ram:4590 28 05          jr z,l4597h          	;( .
	ram:4592 77             ld (hl),a            	;w
	ram:4593 23             inc hl               	;#
	ram:4594 18 f2          jr l4588h            	;. .
l4596h:
	ram:4596 37             scf                  	;7
l4597h:
	ram:4597 22 35 83       ld (08335h),hl       	;" 5 .
	ram:459a c9             ret                  	;.
sub_459bh:
	ram:459b 4f             ld c,a               	;O
	ram:459c 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:459f ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:45a3 cd 8e 00       call 0008eh          	;. . .
	ram:45a6 c8             ret z                	;.
	ram:45a7 71             ld (hl),c            	;q
	ram:45a8 23             inc hl               	;#
	ram:45a9 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:45ac cd b2 45       call sub_45b2h       	;. . E
	ram:45af f6 01          or 001h              	;. .
	ram:45b1 c9             ret                  	;.
sub_45b2h:
	ram:45b2 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:45b5 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:45b9 cd 8e 00       call 0008eh          	;. . .
	ram:45bc c8             ret z                	;.
	ram:45bd 23             inc hl               	;#
	ram:45be 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:45c1 c9             ret                  	;.
sub_45c2h:
	ram:45c2 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:45c5 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:45c9 cd 8e 00       call 0008eh          	;. . .
	ram:45cc c8             ret z                	;.
	ram:45cd 7e             ld a,(hl)            	;~
	ram:45ce c9             ret                  	;.
sub_45cfh:
	ram:45cf 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:45d2 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:45d6 b7             or a                 	;.
	ram:45d7 ed 52          sbc hl,de            	;. R
	ram:45d9 c8             ret z                	;.
	ram:45da 4d             ld c,l               	;M
	ram:45db 44             ld b,h               	;D
	ram:45dc 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:45df eb             ex de,hl             	;.
	ram:45e0 ed b0          ldir                 	;. .
	ram:45e2 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:45e5 ed 53 1b 8b    ld (08b1bh),de       	;. S . .
	ram:45e9 c9             ret                  	;.
sub_45eah:
	ram:45ea d7             rst 10h              	;.
sub_45ebh:
	ram:45eb cd 18 49       call sub_4918h       	;. . I
	ram:45ee 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:45f1 cd 2c 49       call sub_492ch       	;. , I
sub_45f4h:
	ram:45f4 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:45f7 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:45fb b7             or a                 	;.
	ram:45fc ed 52          sbc hl,de            	;. R
	ram:45fe c8             ret z                	;.
	ram:45ff 4d             ld c,l               	;M
	ram:4600 44             ld b,h               	;D
	ram:4601 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4604 2b             dec hl               	;+
	ram:4605 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:4609 1b             dec de               	;.
	ram:460a ed b8          lddr                 	;. .
	ram:460c 23             inc hl               	;#
	ram:460d 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:4610 13             inc de               	;.
	ram:4611 ed 53 1d 8b    ld (08b1dh),de       	;. S . .
	ram:4615 c9             ret                  	;.
sub_4616h:
	ram:4616 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4619 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:461d c3 8e 00       jp 0008eh            	;. . .
sub_4620h:
	ram:4620 cd 2e 46       call sub_462eh       	;. . F
	ram:4623 c0             ret nz               	;.
sub_4624h:
	ram:4624 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:4628 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:462b c3 8e 00       jp 0008eh            	;. . .
sub_462eh:
	ram:462e ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:4632 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:4635 c3 8e 00       jp 0008eh            	;. . .
sub_4638h:
	ram:4638 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:463b 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:463e 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:4641 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4644 c9             ret                  	;.
l4645h:
	ram:4645 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:4649 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
l464dh:
	ram:464d cd 77 46       call sub_4677h       	;. w F
	ram:4650 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4653 2b             dec hl               	;+
	ram:4654 7e             ld a,(hl)            	;~
	ram:4655 fe d6          cp 0d6h              	;. .
	ram:4657 c8             ret z                	;.
	ram:4658 23             inc hl               	;#
	ram:4659 cd 8e 00       call 0008eh          	;. . .
	ram:465c 20 ef          jr nz,l464dh         	;.
	ram:465e c9             ret                  	;.
l465fh:
	ram:465f fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:4663 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
l4667h:
	ram:4667 cd 93 46       call sub_4693h       	;. . F
	ram:466a 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:466d 7e             ld a,(hl)            	;~
	ram:466e fe d6          cp 0d6h              	;. .
	ram:4670 c8             ret z                	;.
	ram:4671 cd 8e 00       call 0008eh          	;. . .
	ram:4674 20 f1          jr nz,l4667h         	;.
	ram:4676 c9             ret                  	;.
sub_4677h:
	ram:4677 c5             push bc              	;.
	ram:4678 d5             push de              	;.
	ram:4679 e5             push hl              	;.
	ram:467a fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:467e cd 2f 45       call sub_452fh       	;. / E
	ram:4681 28 1d          jr z,l46a0h          	;( .
	ram:4683 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:4687 cd 57 3b       call 03b57h          	;. W ;
	ram:468a fd cb 05 56    bit 2,(iy+005h)      	;. . . V
	ram:468e c4 11 48       call nz,sub_4811h    	;. . H
	ram:4691 18 0d          jr l46a0h            	;. .
sub_4693h:
	ram:4693 c5             push bc              	;.
	ram:4694 d5             push de              	;.
	ram:4695 e5             push hl              	;.
	ram:4696 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:469a cd 41 45       call sub_4541h       	;. A E
	ram:469d c4 e1 47       call nz,sub_47e1h    	;. . G
l46a0h:
	ram:46a0 e1             pop hl               	;.
	ram:46a1 d1             pop de               	;.
	ram:46a2 c1             pop bc               	;.
	ram:46a3 c9             ret                  	;.
l46a4h:
	ram:46a4 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:46a8 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:46ac ed 4b 0c 80    ld bc,(0800ch)       	;. K . .
	ram:46b0 04             inc b                	;.
l46b1h:
	ram:46b1 cd 77 46       call sub_4677h       	;. w F
	ram:46b4 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:46b7 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:46ba b9             cp c                 	;.
	ram:46bb 38 07          jr c,l46c4h          	;8 .
	ram:46bd fd cb 05 56    bit 2,(iy+005h)      	;. . . V
	ram:46c1 28 0c          jr z,l46cfh          	;( .
	ram:46c3 0c             inc c                	;.
l46c4h:
	ram:46c4 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:46c7 b8             cp b                 	;.
	ram:46c8 d8             ret c                	;.
	ram:46c9 2b             dec hl               	;+
	ram:46ca 7e             ld a,(hl)            	;~
	ram:46cb fe d6          cp 0d6h              	;. .
	ram:46cd c8             ret z                	;.
	ram:46ce 23             inc hl               	;#
l46cfh:
	ram:46cf cd 8e 00       call 0008eh          	;. . .
	ram:46d2 20 dd          jr nz,l46b1h         	;.
	ram:46d4 c9             ret                  	;.
l46d5h:
	ram:46d5 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:46d9 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:46dd ed 4b 0c 80    ld bc,(0800ch)       	;. K . .
	ram:46e1 0c             inc c                	;.
l46e2h:
	ram:46e2 cd 93 46       call sub_4693h       	;. . F
	ram:46e5 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:46e8 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:46eb b9             cp c                 	;.
	ram:46ec 30 07          jr nc,l46f5h         	;0 .
	ram:46ee fd cb 05 56    bit 2,(iy+005h)      	;. . . V
	ram:46f2 28 0a          jr z,l46feh          	;( .
	ram:46f4 0d             dec c                	;.
l46f5h:
	ram:46f5 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:46f8 b8             cp b                 	;.
	ram:46f9 d0             ret nc               	;.
	ram:46fa 7e             ld a,(hl)            	;~
	ram:46fb fe d6          cp 0d6h              	;. .
	ram:46fd c8             ret z                	;.
l46feh:
	ram:46fe cd 8e 00       call 0008eh          	;. . .
	ram:4701 20 df          jr nz,l46e2h         	;.
	ram:4703 c9             ret                  	;.
sub_4704h:
	ram:4704 cd f4 45       call sub_45f4h       	;. . E
	ram:4707 ed 4b 3a 83    ld bc,(0833ah)       	;. K : .
l470bh:
	ram:470b 79             ld a,c               	;y
	ram:470c b0             or b                 	;.
	ram:470d 28 0b          jr z,l471ah          	;( .
	ram:470f cd 41 45       call sub_4541h       	;. A E
	ram:4712 28 06          jr z,l471ah          	;( .
	ram:4714 cd c5 3f       call 03fc5h          	;. . ?
	ram:4717 0b             dec bc               	;.
	ram:4718 18 f1          jr l470bh            	;. .
l471ah:
	ram:471a c3 55 48       jp l4855h            	;. U H
	ram:471d f5             push af              	;.
l471eh:
	ram:471e 7e             ld a,(hl)            	;~
	ram:471f 23             inc hl               	;#
	ram:4720 b7             or a                 	;.
	ram:4721 28 0d          jr z,l4730h          	;( .
	ram:4723 e5             push hl              	;.
	ram:4724 cd 5a 45       call sub_455ah       	;. Z E
	ram:4727 e1             pop hl               	;.
	ram:4728 28 06          jr z,l4730h          	;( .
	ram:472a 79             ld a,c               	;y
	ram:472b cd c5 3f       call 03fc5h          	;. . ?
	ram:472e 18 ee          jr l471eh            	;. .
l4730h:
	ram:4730 f1             pop af               	;.
	ram:4731 c9             ret                  	;.
sub_4732h:
	ram:4732 21 56 83       ld hl,08356h         	;! V .
	ram:4735 cb 66          bit 4,(hl)           	;. f
	ram:4737 c8             ret z                	;.
	ram:4738 cb 5e          bit 3,(hl)           	;. ^
	ram:473a 28 0f          jr z,l474bh          	;( .
	ram:473c fd cb 10 a6    res 4,(iy+010h)      	;. . . .
	ram:4740 cd 24 46       call sub_4624h       	;. $ F
	ram:4743 c8             ret z                	;.
	ram:4744 2b             dec hl               	;+
	ram:4745 7e             ld a,(hl)            	;~
	ram:4746 fe 05          cp 005h              	;. .
	ram:4748 20 16          jr nz,l4760h         	;.
	ram:474a c9             ret                  	;.
l474bh:
	ram:474b cb a6          res 4,(hl)           	;. .
	ram:474d cb 6e          bit 5,(hl)           	;. n
	ram:474f 20 09          jr nz,l475ah         	;.
	ram:4751 cb 76          bit 6,(hl)           	;. v
	ram:4753 28 05          jr z,l475ah          	;( .
	ram:4755 cb b6          res 6,(hl)           	;. .
	ram:4757 cb ee          set 5,(hl)           	;. .
	ram:4759 c9             ret                  	;.
l475ah:
	ram:475a cd 24 46       call sub_4624h       	;. $ F
	ram:475d c8             ret z                	;.
	ram:475e 2b             dec hl               	;+
	ram:475f 7e             ld a,(hl)            	;~
l4760h:
	ram:4760 fe 01          cp 001h              	;. .
	ram:4762 38 3b          jr c,l479fh          	;8 ;
	ram:4764 fe 04          cp 004h              	;. .
	ram:4766 d8             ret c                	;.
	ram:4767 fe 0a          cp 00ah              	;. .
	ram:4769 38 34          jr c,l479fh          	;8 4
	ram:476b fe 10          cp 010h              	;. .
	ram:476d d8             ret c                	;.
	ram:476e fe 30          cp 030h              	;. 0
	ram:4770 38 2d          jr c,l479fh          	;8 -
	ram:4772 fe 3a          cp 03ah              	;. :
	ram:4774 d8             ret c                	;.
	ram:4775 fe 41          cp 041h              	;. A
	ram:4777 38 26          jr c,l479fh          	;8 &
	ram:4779 fe 5b          cp 05bh              	;. [
	ram:477b d8             ret c                	;.
	ram:477c fe 61          cp 061h              	;. a
	ram:477e 38 1f          jr c,l479fh          	;8 .
	ram:4780 fe 7b          cp 07bh              	;. {
	ram:4782 d8             ret c                	;.
	ram:4783 fe 8a          cp 08ah              	;. .
	ram:4785 38 18          jr c,l479fh          	;8 .
	ram:4787 fe b5          cp 0b5h              	;. .
	ram:4789 d8             ret c                	;.
	ram:478a fe bb          cp 0bbh              	;. .
	ram:478c 38 11          jr c,l479fh          	;8 .
	ram:478e fe c4          cp 0c4h              	;. .
	ram:4790 d8             ret c                	;.
	ram:4791 fe c5          cp 0c5h              	;. .
	ram:4793 38 0a          jr c,l479fh          	;8 .
	ram:4795 fe cb          cp 0cbh              	;. .
	ram:4797 d8             ret c                	;.
	ram:4798 fe d3          cp 0d3h              	;. .
	ram:479a 38 03          jr c,l479fh          	;8 .
	ram:479c fe d6          cp 0d6h              	;. .
	ram:479e d8             ret c                	;.
l479fh:
	ram:479f 97             sub a                	;.
	ram:47a0 c9             ret                  	;.
sub_47a1h:
	ram:47a1 f5             push af              	;.
	ram:47a2 cd 32 47       call sub_4732h       	;. 2 G
	ram:47a5 28 22          jr z,l47c9h          	;( "
	ram:47a7 0e 20          ld c,020h            	;.  
	ram:47a9 cd c2 45       call sub_45c2h       	;. . E
	ram:47ac 28 08          jr z,l47b6h          	;( .
	ram:47ae b9             cp c                 	;.
	ram:47af 20 05          jr nz,l47b6h         	;.
	ram:47b1 cd 41 45       call sub_4541h       	;. A E
	ram:47b4 18 0f          jr l47c5h            	;. .
l47b6h:
	ram:47b6 79             ld a,c               	;y
	ram:47b7 cd 5a 45       call sub_455ah       	;. Z E
	ram:47ba 28 0d          jr z,l47c9h          	;( .
	ram:47bc 79             ld a,c               	;y
	ram:47bd cd c5 3f       call 03fc5h          	;. . ?
	ram:47c0 cd 55 48       call l4855h          	;. U H
	ram:47c3 f1             pop af               	;.
	ram:47c4 c9             ret                  	;.
l47c5h:
	ram:47c5 79             ld a,c               	;y
	ram:47c6 cd c5 3f       call 03fc5h          	;. . ?
l47c9h:
	ram:47c9 f1             pop af               	;.
	ram:47ca c9             ret                  	;.
l47cbh:
	ram:47cb 4f             ld c,a               	;O
	ram:47cc fd cb 05 66    bit 4,(iy+005h)      	;. . . f
	ram:47d0 20 1d          jr nz,l47efh         	;.
	ram:47d2 cd c2 45       call sub_45c2h       	;. . E
	ram:47d5 28 04          jr z,l47dbh          	;( .
	ram:47d7 fe d6          cp 0d6h              	;. .
	ram:47d9 28 14          jr z,l47efh          	;( .
l47dbh:
	ram:47db 79             ld a,c               	;y
	ram:47dc cd 9b 45       call sub_459bh       	;. . E
	ram:47df c8             ret z                	;.
	ram:47e0 79             ld a,c               	;y
sub_47e1h:
	ram:47e1 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:47e5 cd c5 3f       call 03fc5h          	;. . ?
	ram:47e8 fd cb 05 56    bit 2,(iy+005h)      	;. . . V
	ram:47ec 20 67          jr nz,l4855h         	;g
	ram:47ee c9             ret                  	;.
l47efh:
	ram:47ef 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:47f2 e5             push hl              	;.
	ram:47f3 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:47f6 e5             push hl              	;.
l47f7h:
	ram:47f7 79             ld a,c               	;y
	ram:47f8 cd 5a 45       call sub_455ah       	;. Z E
	ram:47fb 28 11          jr z,l480eh          	;( .
	ram:47fd 79             ld a,c               	;y
	ram:47fe cd c5 3f       call 03fc5h          	;. . ?
	ram:4801 cd af 03       call 003afh          	;. . .
	ram:4804 38 f1          jr c,l47f7h          	;8 .
	ram:4806 d1             pop de               	;.
	ram:4807 e1             pop hl               	;.
	ram:4808 cd 8e 00       call 0008eh          	;. . .
	ram:480b 20 48          jr nz,l4855h         	;H
	ram:480d c9             ret                  	;.
l480eh:
	ram:480e e1             pop hl               	;.
	ram:480f e1             pop hl               	;.
	ram:4810 c9             ret                  	;.
sub_4811h:
	ram:4811 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4814 e5             push hl              	;.
	ram:4815 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4818 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:481c 3a 53 83       ld a,(08353h)        	;: S .
	ram:481f f5             push af              	;.
	ram:4820 fd cb 0d 96    res 2,(iy+00dh)      	;. . . .
l4824h:
	ram:4824 cd 8e 00       call 0008eh          	;. . .
	ram:4827 20 1c          jr nz,l4845h         	;.
	ram:4829 97             sub a                	;.
	ram:482a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:482d 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:4830 fe 08          cp 008h              	;. .
	ram:4832 20 05          jr nz,l4839h         	;.
	ram:4834 cd 94 00       call 00094h          	;. . .
	ram:4837 18 13          jr l484ch            	;. .
l4839h:
	ram:4839 fe 15          cp 015h              	;. .
	ram:483b 20 0f          jr nz,l484ch         	;.
	ram:483d 21 fc 82       ld hl,082fch         	;! . .
	ram:4840 cd 45 3e       call 03e45h          	;. E >
	ram:4843 18 07          jr l484ch            	;. .
l4845h:
	ram:4845 2b             dec hl               	;+
	ram:4846 7e             ld a,(hl)            	;~
	ram:4847 cd 57 3b       call 03b57h          	;. W ;
	ram:484a 38 d8          jr c,l4824h          	;8 .
l484ch:
	ram:484c f1             pop af               	;.
	ram:484d 32 53 83       ld (08353h),a        	;2 S .
	ram:4850 e1             pop hl               	;.
	ram:4851 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4854 c9             ret                  	;.
l4855h:
	ram:4855 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4858 e5             push hl              	;.
	ram:4859 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:485c 4f             ld c,a               	;O
	ram:485d 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:4860 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:4864 3a 53 83       ld a,(08353h)        	;: S .
	ram:4867 f5             push af              	;.
	ram:4868 fd cb 0d 96    res 2,(iy+00dh)      	;. . . .
l486ch:
	ram:486c cd 8e 00       call 0008eh          	;. . .
	ram:486f 28 0d          jr z,l487eh          	;( .
	ram:4871 1a             ld a,(de)            	;.
	ram:4872 13             inc de               	;.
	ram:4873 cd c5 3f       call 03fc5h          	;. . ?
	ram:4876 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4879 b9             cp c                 	;.
	ram:487a 38 f0          jr c,l486ch          	;8 .
	ram:487c 18 04          jr l4882h            	;. .
l487eh:
	ram:487e cd c7 3d       call 03dc7h          	;. . =
	ram:4881 37             scf                  	;7
l4882h:
	ram:4882 d1             pop de               	;.
	ram:4883 fd 72 0d       ld (iy+00dh),d       	;. r .
	ram:4886 e1             pop hl               	;.
	ram:4887 22 0c 80       ld (0800ch),hl       	;" . .
	ram:488a c9             ret                  	;.
sub_488bh:
	ram:488b 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:488e f5             push af              	;.
	ram:488f 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:4892 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
l4896h:
	ram:4896 cd 8e 00       call 0008eh          	;. . .
	ram:4899 28 13          jr z,l48aeh          	;( .
	ram:489b 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:489e fe 14          cp 014h              	;. .
	ram:48a0 28 07          jr z,l48a9h          	;( .
	ram:48a2 1a             ld a,(de)            	;.
	ram:48a3 13             inc de               	;.
	ram:48a4 cd c5 3f       call 03fc5h          	;. . ?
	ram:48a7 18 ed          jr l4896h            	;. .
l48a9h:
	ram:48a9 cd cd 3d       call 03dcdh          	;. . =
	ram:48ac 18 03          jr l48b1h            	;. .
l48aeh:
	ram:48ae cd c1 3d       call 03dc1h          	;. . =
l48b1h:
	ram:48b1 f1             pop af               	;.
	ram:48b2 32 0d 80       ld (0800dh),a        	;2 . .
	ram:48b5 c9             ret                  	;.
l48b6h:
	ram:48b6 cd 2f 45       call sub_452fh       	;. / E
	ram:48b9 c8             ret z                	;.
	ram:48ba cd 57 3b       call 03b57h          	;. W ;
	ram:48bd 18 f7          jr l48b6h            	;. .
l48bfh:
	ram:48bf cd 41 45       call sub_4541h       	;. A E
	ram:48c2 c8             ret z                	;.
	ram:48c3 cd c5 3f       call 03fc5h          	;. . ?
	ram:48c6 18 f7          jr l48bfh            	;. .
	ram:48c8 cd 29 26       call 02629h          	;. ) &
	ram:48cb cd ea 45       call sub_45eah       	;. . E
	ram:48ce 2a ca 80       ld hl,(080cah)       	;* . .
	ram:48d1 2b             dec hl               	;+
	ram:48d2 2b             dec hl               	;+
	ram:48d3 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:48d7 cd 8e 00       call 0008eh          	;. . .
	ram:48da 30 24          jr nc,l4900h         	;0 $
	ram:48dc 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:48df cd 8e 00       call 0008eh          	;. . .
	ram:48e2 28 1c          jr z,l4900h          	;( .
	ram:48e4 cd 00 49       call l4900h          	;. . I
	ram:48e7 cd b6 48       call l48b6h          	;. . H
	ram:48ea cd c7 3d       call 03dc7h          	;. . =
	ram:48ed cd 38 46       call sub_4638h       	;. 8 F
	ram:48f0 fd cb 0c ee    set 5,(iy+00ch)      	;. . . .
	ram:48f4 cd d2 01       call 001d2h          	;. . .
	ram:48f7 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:48fa cd 2c 49       call sub_492ch       	;. , I
	ram:48fd c3 45 0a       jp 00a45h            	;. E .
l4900h:
	ram:4900 ed 4b 17 8b    ld bc,(08b17h)       	;. K . .
	ram:4904 79             ld a,c               	;y
	ram:4905 b0             or b                 	;.
	ram:4906 c8             ret z                	;.
	ram:4907 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:490a ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:490e ed b0          ldir                 	;. .
	ram:4910 ed 53 1b 8b    ld (08b1bh),de       	;. S . .
	ram:4914 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4917 c9             ret                  	;.
sub_4918h:
	ram:4918 cd 2d 38       call 0382dh          	;. - 8
	ram:491b fd cb 01 d6    set 2,(iy+001h)      	;. . . .
	ram:491f 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:4922 23             inc hl               	;#
	ram:4923 23             inc hl               	;#
	ram:4924 22 19 8b       ld (08b19h),hl       	;" . .
	ram:4927 c9             ret                  	;.
	ram:4928 d7             rst 10h              	;.
sub_4929h:
	ram:4929 cd 18 49       call sub_4918h       	;. . I
sub_492ch:
	ram:492c 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:492f eb             ex de,hl             	;.
	ram:4930 2a ca 80       ld hl,(080cah)       	;* . .
	ram:4933 2b             dec hl               	;+
	ram:4934 2b             dec hl               	;+
	ram:4935 cd 8e 00       call 0008eh          	;. . .
	ram:4938 30 01          jr nc,l493bh         	;0 .
	ram:493a eb             ex de,hl             	;.
l493bh:
	ram:493b 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:493e 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4941 c9             ret                  	;.
sub_4942h:
	ram:4942 cd eb 45       call sub_45ebh       	;. . E
	ram:4945 cd c2 45       call sub_45c2h       	;. . E
	ram:4948 28 24          jr z,l496eh          	;( $
	ram:494a b7             or a                 	;.
	ram:494b 20 12          jr nz,l495fh         	;.
	ram:494d cd b2 45       call sub_45b2h       	;. . E
	ram:4950 cd cf 45       call sub_45cfh       	;. . E
	ram:4953 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:4956 2b             dec hl               	;+
	ram:4957 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:495a 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:495d 18 0c          jr l496bh            	;. .
l495fh:
	ram:495f 21 78 49       ld hl,l4978h         	;! x I
	ram:4962 cd b5 0a       call 00ab5h          	;. . .
	ram:4965 cd 87 35       call 03587h          	;. . 5
	ram:4968 cd db 0a       call 00adbh          	;. . .
l496bh:
	ram:496b cd f4 45       call sub_45f4h       	;. . E
l496eh:
	ram:496e 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:4971 7e             ld a,(hl)            	;~
	ram:4972 e6 e0          and 0e0h             	;. .
	ram:4974 f6 14          or 014h              	;. .
	ram:4976 77             ld (hl),a            	;w
	ram:4977 c9             ret                  	;.
l4978h:
	ram:4978 cd 7e 49       call sub_497eh       	;. ~ I
	ram:497b c3 45 0a       jp 00a45h            	;. E .
sub_497eh:
	ram:497e fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:4982 c8             ret z                	;.
	ram:4983 cd cf 45       call sub_45cfh       	;. . E
	ram:4986 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4989 22 c8 80       ld (080c8h),hl       	;" . .
	ram:498c ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:4990 b7             or a                 	;.
	ram:4991 ed 52          sbc hl,de            	;. R
	ram:4993 eb             ex de,hl             	;.
	ram:4994 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:4997 73             ld (hl),e            	;s
	ram:4998 23             inc hl               	;#
	ram:4999 72             ld (hl),d            	;r
	ram:499a cd 33 38       call 03833h          	;. 3 8
	ram:499d fd cb 01 96    res 2,(iy+001h)      	;. . . .
	ram:49a1 c9             ret                  	;.
l49a2h:
	ram:49a2 3a 4b 83       ld a,(0834bh)        	;: K .
	ram:49a5 ee 10          xor 010h             	;. .
	ram:49a7 32 4b 83       ld (0834bh),a        	;2 K .
	ram:49aa c9             ret                  	;.
	ram:49ab 21 32 00       ld hl,00032h         	;! 2 .
	ram:49ae cd e1 3e       call 03ee1h          	;. . >
	ram:49b1 21 e8 49       ld hl,l49e8h         	;! . I
	ram:49b4 cd 5b 06       call 0065bh          	;. [ .
	ram:49b7 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:49ba 36 00          ld (hl),000h         	;6 .
	ram:49bc cd 0b 3c       call 03c0bh          	;. . <
	ram:49bf cd 13 4e       call sub_4e13h       	;. . N
	ram:49c2 cd d8 4c       call sub_4cd8h       	;. . L
	ram:49c5 cd ae 4d       call sub_4daeh       	;. . M
	ram:49c8 38 17          jr c,l49e1h          	;8 .
l49cah:
	ram:49ca cd 9f 4d       call sub_4d9fh       	;. . M
	ram:49cd cd 6b 4e       call sub_4e6bh       	;. k N
	ram:49d0 cd 0c 4d       call sub_4d0ch       	;. . M
	ram:49d3 cd 84 00       call 00084h          	;. . .
	ram:49d6 28 09          jr z,l49e1h          	;( .
	ram:49d8 cd 20 50       call sub_5020h       	;.   P
	ram:49db cd 0c 4d       call sub_4d0ch       	;. . M
	ram:49de cd 28 50       call sub_5028h       	;. ( P
l49e1h:
	ram:49e1 97             sub a                	;.
	ram:49e2 32 0c 80       ld (0800ch),a        	;2 . .
	ram:49e5 c3 39 4e       jp l4e39h            	;. 9 N
l49e8h:
	ram:49e8 f5             push af              	;.
	ram:49e9 49             ld c,c               	;I
	ram:49ea eb             ex de,hl             	;.
	ram:49eb 4b             ld c,e               	;K
	ram:49ec ee 4b          xor 04bh             	;. K
	ram:49ee 3f             ccf                  	;?
	ram:49ef 4c             ld c,h               	;L
	ram:49f0 3e 4c          ld a,04ch            	;> L
	ram:49f2 42             ld b,d               	;B
	ram:49f3 4c             ld c,h               	;L
	ram:49f4 0a             ld a,(bc)            	;.
	ram:49f5 fe 06          cp 006h              	;. .
	ram:49f7 28 04          jr z,l49fdh          	;( .
	ram:49f9 fe 04          cp 004h              	;. .
	ram:49fb 20 56          jr nz,l4a53h         	;V
l49fdh:
	ram:49fd cd 20 46       call sub_4620h       	;.   F
	ram:4a00 f5             push af              	;.
	ram:4a01 cd 58 4e       call sub_4e58h       	;. X N
	ram:4a04 cd 43 4e       call sub_4e43h       	;. C N
	ram:4a07 cd b6 4d       call sub_4db6h       	;. . M
	ram:4a0a 38 14          jr c,l4a20h          	;8 .
	ram:4a0c f1             pop af               	;.
	ram:4a0d 28 41          jr z,l4a50h          	;( A
	ram:4a0f 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:4a12 7c             ld a,h               	;|
	ram:4a13 e6 7f          and 07fh             	;. .
	ram:4a15 3c             inc a                	;<
	ram:4a16 bd             cp l                 	;.
	ram:4a17 30 37          jr nc,l4a50h         	;0 7
	ram:4a19 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4a1c cd 6b 4e       call sub_4e6bh       	;. k N
	ram:4a1f f5             push af              	;.
l4a20h:
	ram:4a20 f1             pop af               	;.
	ram:4a21 fd cb 0d d6    set 2,(iy+00dh)      	;. . . .
	ram:4a25 cd a9 3d       call 03da9h          	;. . =
	ram:4a28 fd cb 0d 96    res 2,(iy+00dh)      	;. . . .
	ram:4a2c 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4a2f e5             push hl              	;.
	ram:4a30 cd 0c 4d       call sub_4d0ch       	;. . M
	ram:4a33 cd 84 00       call 00084h          	;. . .
	ram:4a36 28 14          jr z,l4a4ch          	;( .
	ram:4a38 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4a3b 17             rla                  	;.
	ram:4a3c 38 0e          jr c,l4a4ch          	;8 .
	ram:4a3e cd af 3d       call 03dafh          	;. . =
	ram:4a41 30 09          jr nc,l4a4ch         	;0 .
	ram:4a43 cd 20 50       call sub_5020h       	;.   P
	ram:4a46 cd 0c 4d       call sub_4d0ch       	;. . M
	ram:4a49 cd 28 50       call sub_5028h       	;. ( P
l4a4ch:
	ram:4a4c e1             pop hl               	;.
	ram:4a4d 22 0c 80       ld (0800ch),hl       	;" . .
l4a50h:
	ram:4a50 c3 39 4e       jp l4e39h            	;. 9 N
l4a53h:
	ram:4a53 fe 02          cp 002h              	;. .
	ram:4a55 20 07          jr nz,l4a5eh         	;.
	ram:4a57 cd 77 46       call sub_4677h       	;. w F
	ram:4a5a cd b3 55       call sub_55b3h       	;. . U
	ram:4a5d c9             ret                  	;.
l4a5eh:
	ram:4a5e fe 01          cp 001h              	;. .
	ram:4a60 20 07          jr nz,l4a69h         	;.
	ram:4a62 cd 93 46       call sub_4693h       	;. . F
	ram:4a65 cd b3 55       call sub_55b3h       	;. . U
	ram:4a68 c9             ret                  	;.
l4a69h:
	ram:4a69 fe 03          cp 003h              	;. .
	ram:4a6b 20 3f          jr nz,l4aach         	;?
	ram:4a6d cd 58 4e       call sub_4e58h       	;. X N
	ram:4a70 cd 43 4e       call sub_4e43h       	;. C N
	ram:4a73 cd e5 4d       call sub_4de5h       	;. . M
	ram:4a76 30 10          jr nc,l4a88h         	;0 .
	ram:4a78 cd 30 50       call sub_5030h       	;. 0 P
	ram:4a7b 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4a7e f5             push af              	;.
	ram:4a7f cd 11 4d       call sub_4d11h       	;. . M
	ram:4a82 f1             pop af               	;.
	ram:4a83 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4a86 18 21          jr l4aa9h            	;. !
l4a88h:
	ram:4a88 3a 9a 8b       ld a,(08b9ah)        	;: . .
	ram:4a8b 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4a8e cd e5 4d       call sub_4de5h       	;. . M
	ram:4a91 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:4a94 3d             dec a                	;=
	ram:4a95 47             ld b,a               	;G
l4a96h:
	ram:4a96 c5             push bc              	;.
	ram:4a97 cd e5 4d       call sub_4de5h       	;. . M
	ram:4a9a c1             pop bc               	;.
	ram:4a9b 30 02          jr nc,l4a9fh         	;0 .
	ram:4a9d 10 f7          djnz l4a96h          	;. .
l4a9fh:
	ram:4a9f cd 0c 4d       call sub_4d0ch       	;. . M
	ram:4aa2 cd e6 4c       call sub_4ce6h       	;. . L
	ram:4aa5 21 0c 80       ld hl,0800ch         	;! . .
	ram:4aa8 35             dec (hl)             	;5
l4aa9h:
	ram:4aa9 c3 39 4e       jp l4e39h            	;. 9 N
l4aach:
	ram:4aac fe 87          cp 087h              	;. .
	ram:4aae ca e5 57       jp z,l57e5h          	;. . W
	ram:4ab1 fe 88          cp 088h              	;. .
	ram:4ab3 ca f3 57       jp z,l57f3h          	;. . W
	ram:4ab6 fe 0a          cp 00ah              	;. .
	ram:4ab8 ca a2 49       jp z,l49a2h          	;. . I
	ram:4abb fe 09          cp 009h              	;. .
	ram:4abd 20 1b          jr nz,l4adah         	;.
	ram:4abf fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:4ac3 cd b2 45       call sub_45b2h       	;. . E
	ram:4ac6 c4 1b 00       call nz,0001bh       	;. . .
	ram:4ac9 cd 3f 57       call sub_573fh       	;. ? W
	ram:4acc cd b3 55       call sub_55b3h       	;. . U
	ram:4acf cd 20 46       call sub_4620h       	;.   F
	ram:4ad2 cc f4 4a       call z,sub_4af4h     	;. . J
	ram:4ad5 0e 01          ld c,001h            	;. .
	ram:4ad7 c3 b1 4e       jp l4eb1h            	;. . N
l4adah:
	ram:4ada fe 08          cp 008h              	;. .
	ram:4adc 20 1f          jr nz,l4afdh         	;.
	ram:4ade cd d2 01       call 001d2h          	;. . .
	ram:4ae1 cd 20 46       call sub_4620h       	;.   F
	ram:4ae4 28 09          jr z,l4aefh          	;( .
	ram:4ae6 cd 1b 00       call 0001bh          	;. . .
	ram:4ae9 cd 6b 55       call sub_556bh       	;. k U
	ram:4aec cd f4 4a       call sub_4af4h       	;. . J
l4aefh:
	ram:4aef 0e 00          ld c,000h            	;. .
	ram:4af1 c3 b1 4e       jp l4eb1h            	;. . N
sub_4af4h:
	ram:4af4 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:4af7 97             sub a                	;.
	ram:4af8 2b             dec hl               	;+
	ram:4af9 77             ld (hl),a            	;w
	ram:4afa 2b             dec hl               	;+
	ram:4afb 77             ld (hl),a            	;w
	ram:4afc c9             ret                  	;.
l4afdh:
	ram:4afd fe 9a          cp 09ah              	;. .
	ram:4aff 20 40          jr nz,l4b41h         	;@
	ram:4b01 cd d2 01       call 001d2h          	;. . .
	ram:4b04 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4b07 f5             push af              	;.
	ram:4b08 e6 7f          and 07fh             	;. .
	ram:4b0a fe 02          cp 002h              	;. .
	ram:4b0c 30 02          jr nc,l4b10h         	;0 .
	ram:4b0e f1             pop af               	;.
	ram:4b0f c9             ret                  	;.
l4b10h:
	ram:4b10 3d             dec a                	;=
	ram:4b11 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4b14 cd 42 4d       call sub_4d42h       	;. B M
	ram:4b17 d7             rst 10h              	;.
	ram:4b18 38 05          jr c,l4b1fh          	;8 .
	ram:4b1a f1             pop af               	;.
	ram:4b1b 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4b1e c9             ret                  	;.
l4b1fh:
	ram:4b1f f1             pop af               	;.
	ram:4b20 cd 84 00       call 00084h          	;. . .
	ram:4b23 28 05          jr z,l4b2ah          	;( .
	ram:4b25 e6 80          and 080h             	;. .
	ram:4b27 c4 30 50       call nz,sub_5030h    	;. 0 P
l4b2ah:
	ram:4b2a cd 43 4e       call sub_4e43h       	;. C N
	ram:4b2d cd 6b 4e       call sub_4e6bh       	;. k N
	ram:4b30 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4b33 f5             push af              	;.
	ram:4b34 cd 0c 4d       call sub_4d0ch       	;. . M
	ram:4b37 cd ec 4c       call sub_4cech       	;. . L
	ram:4b3a f1             pop af               	;.
	ram:4b3b 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4b3e c3 39 4e       jp l4e39h            	;. 9 N
l4b41h:
	ram:4b41 fe 96          cp 096h              	;. .
	ram:4b43 20 6b          jr nz,l4bb0h         	;k
	ram:4b45 cd d2 01       call 001d2h          	;. . .
	ram:4b48 cd 7e 49       call sub_497eh       	;. ~ I
	ram:4b4b cd 42 4d       call sub_4d42h       	;. B M
	ram:4b4e d7             rst 10h              	;.
	ram:4b4f cb 6e          bit 5,(hl)           	;. n
	ram:4b51 c4 1b 00       call nz,0001bh       	;. . .
	ram:4b54 cd 0b 2c       call 02c0bh          	;. . ,
	ram:4b57 cd 84 00       call 00084h          	;. . .
	ram:4b5a 28 15          jr z,l4b71h          	;( .
	ram:4b5c 21 9b 8b       ld hl,08b9bh         	;! . .
	ram:4b5f 7e             ld a,(hl)            	;~
	ram:4b60 f5             push af              	;.
	ram:4b61 ee 80          xor 080h             	;. .
	ram:4b63 77             ld (hl),a            	;w
	ram:4b64 cd 42 4d       call sub_4d42h       	;. B M
	ram:4b67 d7             rst 10h              	;.
	ram:4b68 cd 0b 2c       call 02c0bh          	;. . ,
	ram:4b6b f1             pop af               	;.
	ram:4b6c e6 80          and 080h             	;. .
	ram:4b6e c4 30 50       call nz,sub_5030h    	;. 0 P
l4b71h:
	ram:4b71 97             sub a                	;.
	ram:4b72 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4b75 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4b78 e5             push hl              	;.
	ram:4b79 cd ec 4c       call sub_4cech       	;. . L
	ram:4b7c cd c7 3d       call 03dc7h          	;. . =
	ram:4b7f e1             pop hl               	;.
	ram:4b80 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4b83 cd b6 4d       call sub_4db6h       	;. . M
	ram:4b86 38 25          jr c,l4badh          	;8 %
	ram:4b88 cd e5 4d       call sub_4de5h       	;. . M
	ram:4b8b d2 ca 49       jp nc,l49cah         	;. . I
	ram:4b8e 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4b91 b7             or a                 	;.
	ram:4b92 28 10          jr z,l4ba4h          	;( .
	ram:4b94 cd 30 50       call sub_5030h       	;. 0 P
	ram:4b97 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4b9a f5             push af              	;.
	ram:4b9b cd 0c 4d       call sub_4d0ch       	;. . M
	ram:4b9e f1             pop af               	;.
	ram:4b9f 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4ba2 18 09          jr l4badh            	;. .
l4ba4h:
	ram:4ba4 cd 0c 4d       call sub_4d0ch       	;. . M
	ram:4ba7 cd ec 4c       call sub_4cech       	;. . L
	ram:4baa cd 4b 3e       call 03e4bh          	;. K >
l4badh:
	ram:4bad c3 39 4e       jp l4e39h            	;. 9 N
l4bb0h:
	ram:4bb0 fe 17          cp 017h              	;. .
	ram:4bb2 ca 9d 64       jp z,l649dh          	;. . d
	ram:4bb5 fe 16          cp 016h              	;. .
	ram:4bb7 c8             ret z                	;.
	ram:4bb8 fe a2          cp 0a2h              	;. .
	ram:4bba ca a7 4e       jp z,l4ea7h          	;. . N
	ram:4bbd fe 8a          cp 08ah              	;. .
	ram:4bbf ca 52 4f       jp z,l4f52h          	;. R O
	ram:4bc2 fe 89          cp 089h              	;. .
	ram:4bc4 ca 99 4f       jp z,l4f99h          	;. . O
	ram:4bc7 fe c1          cp 0c1h              	;. .
	ram:4bc9 20 06          jr nz,l4bd1h         	;.
	ram:4bcb cd 0b 3c       call 03c0bh          	;. . <
	ram:4bce c3 13 4e       jp sub_4e13h         	;. . N
l4bd1h:
	ram:4bd1 79             ld a,c               	;y
	ram:4bd2 b7             or a                 	;.
	ram:4bd3 c8             ret z                	;.
	ram:4bd4 fe 3a          cp 03ah              	;. :
	ram:4bd6 20 05          jr nz,l4bddh         	;.
	ram:4bd8 fd cb 0e 7e    bit 7,(iy+00eh)      	;. . . ~
	ram:4bdc c8             ret z                	;.
l4bddh:
	ram:4bdd cd 7d 55       call sub_557dh       	;. } U
	ram:4be0 cd 96 55       call sub_5596h       	;. . U
	ram:4be3 0e 01          ld c,001h            	;. .
	ram:4be5 cd b1 4e       call l4eb1h          	;. . N
	ram:4be8 c3 1b 00       jp 0001bh            	;. . .
	ram:4beb c3 a5 3b       jp 03ba5h            	;. . ;
	ram:4bee 21 fe 4b       ld hl,l4bfeh         	;! . K
	ram:4bf1 cd b5 0a       call 00ab5h          	;. . .
	ram:4bf4 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:4bf8 c4 43 4e       call nz,sub_4e43h    	;. C N
	ram:4bfb cd db 0a       call 00adbh          	;. . .
l4bfeh:
	ram:4bfe cd ae 4d       call sub_4daeh       	;. . M
	ram:4c01 d0             ret nc               	;.
l4c02h:
	ram:4c02 cd 84 00       call 00084h          	;. . .
	ram:4c05 28 2c          jr z,l4c33h          	;( ,
	ram:4c07 cd 19 50       call sub_5019h       	;. . P
	ram:4c0a 28 05          jr z,l4c11h          	;( .
	ram:4c0c cd 20 50       call sub_5020h       	;.   P
	ram:4c0f 18 28          jr l4c39h            	;. (
l4c11h:
	ram:4c11 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4c15 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:4c18 cd 20 50       call sub_5020h       	;.   P
	ram:4c1b cd 42 4d       call sub_4d42h       	;. B M
	ram:4c1e d7             rst 10h              	;.
	ram:4c1f cd 19 50       call sub_5019h       	;. . P
	ram:4c22 20 15          jr nz,l4c39h         	;.
	ram:4c24 cd 0b 2c       call 02c0bh          	;. . ,
	ram:4c27 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:4c2b 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4c2e cd 0b 2c       call 02c0bh          	;. . ,
	ram:4c31 18 06          jr l4c39h            	;. .
l4c33h:
	ram:4c33 cd 19 50       call sub_5019h       	;. . P
	ram:4c36 cc 0b 2c       call z,02c0bh        	;. . ,
l4c39h:
	ram:4c39 cd b6 4d       call sub_4db6h       	;. . M
	ram:4c3c 38 c4          jr c,l4c02h          	;8 .
	ram:4c3e c9             ret                  	;.
	ram:4c3f c3 b1 3b       jp 03bb1h            	;. . ;
	ram:4c42 c0             ret nz               	;.
	ram:4c43 38 1b          jr c,l4c60h          	;8 .
	ram:4c45 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4c48 80             add a,b              	;.
	ram:4c49 d6 07          sub 007h             	;. .
	ram:4c4b fe 01          cp 001h              	;. .
	ram:4c4d f8             ret m                	;.
	ram:4c4e 47             ld b,a               	;G
l4c4fh:
	ram:4c4f cd 67 3d       call 03d67h          	;. g =
	ram:4c52 2a 34 8b       ld hl,(08b34h)       	;* 4 .
	ram:4c55 23             inc hl               	;#
	ram:4c56 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:4c59 21 0c 80       ld hl,0800ch         	;! . .
	ram:4c5c 35             dec (hl)             	;5
	ram:4c5d 10 f0          djnz l4c4fh          	;. .
	ram:4c5f c9             ret                  	;.
l4c60h:
	ram:4c60 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4c63 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:4c67 b7             or a                 	;.
	ram:4c68 ed 52          sbc hl,de            	;. R
	ram:4c6a 22 ee 82       ld (082eeh),hl       	;" . .
	ram:4c6d 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4c70 22 f0 82       ld (082f0h),hl       	;" . .
	ram:4c73 3a 54 83       ld a,(08354h)        	;: T .
	ram:4c76 32 f2 82       ld (082f2h),a        	;2 . .
	ram:4c79 11 f3 82       ld de,082f3h         	;. . .
	ram:4c7c 21 31 8b       ld hl,08b31h         	;! 1 .
	ram:4c7f cd 9f 20       call 0209fh          	;. .  
	ram:4c82 cd 7e 49       call sub_497eh       	;. ~ I
	ram:4c85 cd a9 3d       call 03da9h          	;. . =
	ram:4c88 21 d2 4c       ld hl,l4cd2h         	;! . L
	ram:4c8b cd b5 0a       call 00ab5h          	;. . .
	ram:4c8e cd ec 4c       call sub_4cech       	;. . L
	ram:4c91 cd db 0a       call 00adbh          	;. . .
	ram:4c94 cd c7 3d       call 03dc7h          	;. . =
sub_4c97h:
	ram:4c97 21 f3 82       ld hl,082f3h         	;! . .
	ram:4c9a 11 31 8b       ld de,08b31h         	;. 1 .
	ram:4c9d cd 9f 20       call 0209fh          	;. .  
	ram:4ca0 3a f2 82       ld a,(082f2h)        	;: . .
	ram:4ca3 32 54 83       ld (08354h),a        	;2 T .
	ram:4ca6 2a f0 82       ld hl,(082f0h)       	;* . .
	ram:4ca9 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4cac cd 42 4d       call sub_4d42h       	;. B M
	ram:4caf cd ea 45       call sub_45eah       	;. . E
	ram:4cb2 2a ee 82       ld hl,(082eeh)       	;* . .
	ram:4cb5 7d             ld a,l               	;}
	ram:4cb6 b4             or h                 	;.
	ram:4cb7 c8             ret z                	;.
	ram:4cb8 4d             ld c,l               	;M
	ram:4cb9 44             ld b,h               	;D
	ram:4cba e5             push hl              	;.
	ram:4cbb 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:4cbe 5d             ld e,l               	;]
	ram:4cbf 54             ld d,h               	;T
	ram:4cc0 09             add hl,bc            	;.
	ram:4cc1 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:4cc4 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:4cc7 ed b0          ldir                 	;. .
	ram:4cc9 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:4ccc d1             pop de               	;.
	ram:4ccd 19             add hl,de            	;.
	ram:4cce 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4cd1 c9             ret                  	;.
l4cd2h:
	ram:4cd2 cd 97 4c       call sub_4c97h       	;. . L
	ram:4cd5 c3 8a 0a       jp 00a8ah            	;. . .
sub_4cd8h:
	ram:4cd8 cd 8b 3d       call 03d8bh          	;. . =
	ram:4cdb cd ae 4d       call sub_4daeh       	;. . M
	ram:4cde d0             ret nc               	;.
l4cdfh:
	ram:4cdf cd 11 4d       call sub_4d11h       	;. . M
	ram:4ce2 cd af 3d       call 03dafh          	;. . =
	ram:4ce5 d0             ret nc               	;.
sub_4ce6h:
	ram:4ce6 cd b6 4d       call sub_4db6h       	;. . M
	ram:4ce9 38 f4          jr c,l4cdfh          	;8 .
	ram:4ceb c9             ret                  	;.
sub_4cech:
	ram:4cec cd af 3d       call 03dafh          	;. . =
	ram:4cef d0             ret nc               	;.
	ram:4cf0 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4cf3 f5             push af              	;.
	ram:4cf4 21 05 4d       ld hl,l4d05h         	;! . M
	ram:4cf7 cd b5 0a       call 00ab5h          	;. . .
	ram:4cfa cd e6 4c       call sub_4ce6h       	;. . L
	ram:4cfd cd db 0a       call 00adbh          	;. . .
	ram:4d00 f1             pop af               	;.
	ram:4d01 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4d04 c9             ret                  	;.
l4d05h:
	ram:4d05 f1             pop af               	;.
	ram:4d06 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4d09 c3 8a 0a       jp 00a8ah            	;. . .
sub_4d0ch:
	ram:4d0c cd 42 4d       call sub_4d42h       	;. B M
	ram:4d0f d7             rst 10h              	;.
	ram:4d10 d8             ret c                	;.
sub_4d11h:
	ram:4d11 97             sub a                	;.
	ram:4d12 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4d15 d5             push de              	;.
	ram:4d16 eb             ex de,hl             	;.
	ram:4d17 21 84 80       ld hl,08084h         	;! . .
	ram:4d1a cd 45 3e       call 03e45h          	;. E >
	ram:4d1d eb             ex de,hl             	;.
	ram:4d1e 3e 3d          ld a,03dh            	;> =
	ram:4d20 cb 6e          bit 5,(hl)           	;. n
	ram:4d22 28 02          jr z,l4d26h          	;( .
	ram:4d24 3e 7f          ld a,07fh            	;> .
l4d26h:
	ram:4d26 cd c5 3f       call 03fc5h          	;. . ?
	ram:4d29 cd ab 35       call 035abh          	;. . 5
	ram:4d2c e1             pop hl               	;.
	ram:4d2d 3e 0a          ld a,00ah            	;> .
	ram:4d2f cd 2b 34       call 0342bh          	;. + 4
	ram:4d32 da 45 0a       jp c,00a45h          	;. E .
	ram:4d35 cd 87 3b       call 03b87h          	;. . ;
	ram:4d38 cd f4 45       call sub_45f4h       	;. . E
	ram:4d3b cd 7b 3b       call 03b7bh          	;. { ;
	ram:4d3e cd a9 3d       call 03da9h          	;. . =
	ram:4d41 c9             ret                  	;.
sub_4d42h:
	ram:4d42 cd 7a 00       call 0007ah          	;. z .
	ram:4d45 28 05          jr z,l4d4ch          	;( .
	ram:4d47 21 92 4d       ld hl,l4d92h         	;! . M
	ram:4d4a 18 21          jr l4d6dh            	;. !
l4d4ch:
	ram:4d4c cd 7f 00       call 0007fh          	;. . .
	ram:4d4f 28 05          jr z,l4d56h          	;( .
	ram:4d51 21 94 4d       ld hl,l4d94h         	;! . M
	ram:4d54 18 17          jr l4d6dh            	;. .
l4d56h:
	ram:4d56 cd 84 00       call 00084h          	;. . .
	ram:4d59 28 0f          jr z,l4d6ah          	;( .
	ram:4d5b 21 99 4d       ld hl,l4d99h         	;! . M
	ram:4d5e 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4d61 e6 80          and 080h             	;. .
	ram:4d63 28 08          jr z,l4d6dh          	;( .
	ram:4d65 21 96 4d       ld hl,l4d96h         	;! . M
	ram:4d68 18 03          jr l4d6dh            	;. .
l4d6ah:
	ram:4d6a 21 9c 4d       ld hl,l4d9ch         	;! . M
l4d6dh:
	ram:4d6d 11 84 80       ld de,08084h         	;. . .
	ram:4d70 d5             push de              	;.
	ram:4d71 cd 42 30       call 03042h          	;. B 0
	ram:4d74 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4d77 e6 7f          and 07fh             	;. .
	ram:4d79 cd 69 35       call 03569h          	;. i 5
	ram:4d7c 28 04          jr z,l4d82h          	;( .
	ram:4d7e c6 30          add a,030h           	;. 0
	ram:4d80 12             ld (de),a            	;.
	ram:4d81 13             inc de               	;.
l4d82h:
	ram:4d82 78             ld a,b               	;x
	ram:4d83 c6 30          add a,030h           	;. 0
	ram:4d85 12             ld (de),a            	;.
	ram:4d86 13             inc de               	;.
	ram:4d87 97             sub a                	;.
	ram:4d88 12             ld (de),a            	;.
	ram:4d89 eb             ex de,hl             	;.
	ram:4d8a d1             pop de               	;.
	ram:4d8b ed 52          sbc hl,de            	;. R
	ram:4d8d 7d             ld a,l               	;}
	ram:4d8e 32 83 80       ld (08083h),a        	;2 . .
	ram:4d91 c9             ret                  	;.
l4d92h:
	ram:4d92 79             ld a,c               	;y
	ram:4d93 00             nop                  	;.
l4d94h:
	ram:4d94 72             ld (hl),d            	;r
	ram:4d95 00             nop                  	;.
l4d96h:
	ram:4d96 79             ld a,c               	;y
	ram:4d97 74             ld (hl),h            	;t
	ram:4d98 00             nop                  	;.
l4d99h:
	ram:4d99 78             ld a,b               	;x
	ram:4d9a 74             ld (hl),h            	;t
	ram:4d9b 00             nop                  	;.
l4d9ch:
	ram:4d9c 51             ld d,c               	;Q
	ram:4d9d 27             daa                  	;'
	ram:4d9e 00             nop                  	;.
sub_4d9fh:
	ram:4d9f 01 64 01       ld bc,00164h         	;. d .
	ram:4da2 cd 89 00       call 00089h          	;. . .
	ram:4da5 28 02          jr z,l4da9h          	;( .
	ram:4da7 0e 0a          ld c,00ah            	;. .
l4da9h:
	ram:4da9 ed 43 9a 8b    ld (08b9ah),bc       	;. C . .
	ram:4dad c9             ret                  	;.
sub_4daeh:
	ram:4dae cd 9f 4d       call sub_4d9fh       	;. . M
	ram:4db1 3e 80          ld a,080h            	;> .
	ram:4db3 32 9b 8b       ld (08b9bh),a        	;2 . .
sub_4db6h:
	ram:4db6 ed 4b 9a 8b    ld bc,(08b9ah)       	;. K . .
	ram:4dba c5             push bc              	;.
l4dbbh:
	ram:4dbb cd 84 00       call 00084h          	;. . .
	ram:4dbe 28 0a          jr z,l4dcah          	;( .
	ram:4dc0 cb 78          bit 7,b              	;. x
	ram:4dc2 20 04          jr nz,l4dc8h         	;.
	ram:4dc4 cb f8          set 7,b              	;. .
	ram:4dc6 18 03          jr l4dcbh            	;. .
l4dc8h:
	ram:4dc8 cb b8          res 7,b              	;. .
l4dcah:
	ram:4dca 04             inc b                	;.
l4dcbh:
	ram:4dcb 78             ld a,b               	;x
	ram:4dcc 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4dcf e6 7f          and 07fh             	;. .
	ram:4dd1 b9             cp c                 	;.
	ram:4dd2 30 0b          jr nc,l4ddfh         	;0 .
	ram:4dd4 c5             push bc              	;.
	ram:4dd5 cd 42 4d       call sub_4d42h       	;. B M
	ram:4dd8 d7             rst 10h              	;.
	ram:4dd9 c1             pop bc               	;.
	ram:4dda 38 df          jr c,l4dbbh          	;8 .
	ram:4ddc c1             pop bc               	;.
	ram:4ddd 37             scf                  	;7
	ram:4dde c9             ret                  	;.
l4ddfh:
	ram:4ddf c1             pop bc               	;.
	ram:4de0 ed 43 9a 8b    ld (08b9ah),bc       	;. C . .
	ram:4de4 c9             ret                  	;.
sub_4de5h:
	ram:4de5 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4de8 f5             push af              	;.
	ram:4de9 47             ld b,a               	;G
l4deah:
	ram:4dea cd 84 00       call 00084h          	;. . .
	ram:4ded 28 0a          jr z,l4df9h          	;( .
	ram:4def cb 78          bit 7,b              	;. x
	ram:4df1 28 04          jr z,l4df7h          	;( .
	ram:4df3 cb b8          res 7,b              	;. .
	ram:4df5 18 03          jr l4dfah            	;. .
l4df7h:
	ram:4df7 cb f8          set 7,b              	;. .
l4df9h:
	ram:4df9 05             dec b                	;.
l4dfah:
	ram:4dfa 78             ld a,b               	;x
	ram:4dfb 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4dfe e6 7f          and 07fh             	;. .
	ram:4e00 28 0b          jr z,l4e0dh          	;( .
	ram:4e02 c5             push bc              	;.
	ram:4e03 cd 42 4d       call sub_4d42h       	;. B M
	ram:4e06 d7             rst 10h              	;.
	ram:4e07 c1             pop bc               	;.
	ram:4e08 38 e0          jr c,l4deah          	;8 .
	ram:4e0a f1             pop af               	;.
	ram:4e0b 37             scf                  	;7
	ram:4e0c c9             ret                  	;.
l4e0dh:
	ram:4e0d f1             pop af               	;.
	ram:4e0e 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4e11 b7             or a                 	;.
	ram:4e12 c9             ret                  	;.
sub_4e13h:
	ram:4e13 3e 54          ld a,054h            	;> T
	ram:4e15 cd 7a 00       call 0007ah          	;. z .
	ram:4e18 20 10          jr nz,l4e2ah         	;.
	ram:4e1a 3e 55          ld a,055h            	;> U
	ram:4e1c cd 7f 00       call 0007fh          	;. . .
	ram:4e1f 20 09          jr nz,l4e2ah         	;.
	ram:4e21 3e 56          ld a,056h            	;> V
	ram:4e23 cd 84 00       call 00084h          	;. . .
	ram:4e26 20 02          jr nz,l4e2ah         	;.
	ram:4e28 3e 57          ld a,057h            	;> W
l4e2ah:
	ram:4e2a cd 85 3d       call 03d85h          	;. . =
	ram:4e2d c9             ret                  	;.
sub_4e2eh:
	ram:4e2e cd 42 4d       call sub_4d42h       	;. B M
	ram:4e31 d7             rst 10h              	;.
	ram:4e32 22 25 8b       ld (08b25h),hl       	;" % .
	ram:4e35 cd 42 49       call sub_4942h       	;. B I
	ram:4e38 c9             ret                  	;.
l4e39h:
	ram:4e39 cd 2e 4e       call sub_4e2eh       	;. . N
	ram:4e3c cd c4 56       call sub_56c4h       	;. . V
	ram:4e3f cd 87 3b       call 03b87h          	;. . ;
	ram:4e42 c9             ret                  	;.
sub_4e43h:
	ram:4e43 cd d2 01       call 001d2h          	;. . .
	ram:4e46 cd c5 3c       call 03cc5h          	;. . <
	ram:4e49 cd 7e 49       call sub_497eh       	;. ~ I
	ram:4e4c 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:4e4f 7e             ld a,(hl)            	;~
	ram:4e50 e6 e0          and 0e0h             	;. .
	ram:4e52 f6 0a          or 00ah              	;. .
	ram:4e54 77             ld (hl),a            	;w
	ram:4e55 c3 40 0a       jp 00a40h            	;. @ .
sub_4e58h:
	ram:4e58 fd cb 0e 46    bit 0,(iy+00eh)      	;. . . F
	ram:4e5c c8             ret z                	;.
	ram:4e5d fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
	ram:4e61 cd f4 45       call sub_45f4h       	;. . E
	ram:4e64 cd 7f 56       call sub_567fh       	;. . V
	ram:4e67 cd 7b 3b       call 03b7bh          	;. { ;
	ram:4e6a c9             ret                  	;.
sub_4e6bh:
	ram:4e6b cd 20 50       call sub_5020h       	;.   P
	ram:4e6e cd 42 4d       call sub_4d42h       	;. B M
	ram:4e71 21 45 0a       ld hl,00a45h         	;! E .
	ram:4e74 cd b5 0a       call 00ab5h          	;. . .
	ram:4e77 21 00 00       ld hl,00000h         	;! . .
	ram:4e7a cd 2f 2a       call 02a2fh          	;. / *
	ram:4e7d cd db 0a       call 00adbh          	;. . .
	ram:4e80 cd 84 00       call 00084h          	;. . .
	ram:4e83 c8             ret z                	;.
	ram:4e84 cd 28 50       call sub_5028h       	;. ( P
	ram:4e87 cd 42 4d       call sub_4d42h       	;. B M
	ram:4e8a 21 9a 4e       ld hl,l4e9ah         	;! . N
	ram:4e8d cd b5 0a       call 00ab5h          	;. . .
	ram:4e90 21 00 00       ld hl,00000h         	;! . .
	ram:4e93 cd 2f 2a       call 02a2fh          	;. / *
	ram:4e96 cd db 0a       call 00adbh          	;. . .
	ram:4e99 c9             ret                  	;.
l4e9ah:
	ram:4e9a cd 20 50       call sub_5020h       	;.   P
	ram:4e9d cd 42 4d       call sub_4d42h       	;. B M
	ram:4ea0 d7             rst 10h              	;.
	ram:4ea1 cd 0b 2c       call 02c0bh          	;. . ,
	ram:4ea4 c3 45 0a       jp 00a45h            	;. E .
l4ea7h:
	ram:4ea7 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:4eaa 0e 01          ld c,001h            	;. .
	ram:4eac cb 6e          bit 5,(hl)           	;. n
	ram:4eae 28 01          jr z,l4eb1h          	;( .
	ram:4eb0 0d             dec c                	;.
l4eb1h:
	ram:4eb1 cd fa 4e       call sub_4efah       	;. . N
	ram:4eb4 cd 27 4f       call sub_4f27h       	;. ' O
	ram:4eb7 b9             cp c                 	;.
	ram:4eb8 c8             ret z                	;.
	ram:4eb9 cd 30 4f       call sub_4f30h       	;. 0 O
	ram:4ebc 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4ebf e5             push hl              	;.
	ram:4ec0 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:4ec3 3d             dec a                	;=
	ram:4ec4 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4ec7 3e 7f          ld a,07fh            	;> .
	ram:4ec9 cb 41          bit 0,c              	;. A
	ram:4ecb 20 02          jr nz,l4ecfh         	;.
	ram:4ecd 3e 3d          ld a,03dh            	;> =
l4ecfh:
	ram:4ecf 4f             ld c,a               	;O
	ram:4ed0 cd cd 3d       call 03dcdh          	;. . =
	ram:4ed3 cd 84 00       call 00084h          	;. . .
	ram:4ed6 28 17          jr z,l4eefh          	;( .
	ram:4ed8 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4edb 17             rla                  	;.
	ram:4edc 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4edf 38 13          jr c,l4ef4h          	;8 .
	ram:4ee1 3c             inc a                	;<
	ram:4ee2 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:4ee5 be             cp (hl)              	;.
	ram:4ee6 30 07          jr nc,l4eefh         	;0 .
l4ee8h:
	ram:4ee8 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4eeb 79             ld a,c               	;y
	ram:4eec cd cd 3d       call 03dcdh          	;. . =
l4eefh:
	ram:4eef e1             pop hl               	;.
	ram:4ef0 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4ef3 c9             ret                  	;.
l4ef4h:
	ram:4ef4 3d             dec a                	;=
	ram:4ef5 fa ef 4e       jp m,l4eefh          	;. . N
	ram:4ef8 18 ee          jr l4ee8h            	;. .
sub_4efah:
	ram:4efa cd 84 00       call 00084h          	;. . .
	ram:4efd 20 07          jr nz,l4f06h         	;.
	ram:4eff cd 20 46       call sub_4620h       	;.   F
	ram:4f02 c0             ret nz               	;.
l4f03h:
	ram:4f03 0e 00          ld c,000h            	;. .
	ram:4f05 c9             ret                  	;.
l4f06h:
	ram:4f06 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4f09 f5             push af              	;.
	ram:4f0a c5             push bc              	;.
	ram:4f0b ee 80          xor 080h             	;. .
	ram:4f0d 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4f10 cd 42 4d       call sub_4d42h       	;. B M
	ram:4f13 d7             rst 10h              	;.
	ram:4f14 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:4f17 c1             pop bc               	;.
	ram:4f18 f1             pop af               	;.
	ram:4f19 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4f1c cd 19 50       call sub_5019h       	;. . P
	ram:4f1f 28 e2          jr z,l4f03h          	;( .
	ram:4f21 cd 20 46       call sub_4620h       	;.   F
	ram:4f24 28 dd          jr z,l4f03h          	;( .
	ram:4f26 c9             ret                  	;.
sub_4f27h:
	ram:4f27 97             sub a                	;.
	ram:4f28 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:4f2b cb 6e          bit 5,(hl)           	;. n
	ram:4f2d c8             ret z                	;.
	ram:4f2e 3c             inc a                	;<
	ram:4f2f c9             ret                  	;.
sub_4f30h:
	ram:4f30 cd 1b 00       call 0001bh          	;. . .
	ram:4f33 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:4f36 cb 41          bit 0,c              	;. A
	ram:4f38 20 0c          jr nz,l4f46h         	;.
	ram:4f3a cb ae          res 5,(hl)           	;. .
	ram:4f3c cd 84 00       call 00084h          	;. . .
	ram:4f3f c8             ret z                	;.
	ram:4f40 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4f43 cb ae          res 5,(hl)           	;. .
	ram:4f45 c9             ret                  	;.
l4f46h:
	ram:4f46 cb ee          set 5,(hl)           	;. .
	ram:4f48 cd 84 00       call 00084h          	;. . .
	ram:4f4b c8             ret z                	;.
	ram:4f4c 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4f4f cb ee          set 5,(hl)           	;. .
	ram:4f51 c9             ret                  	;.
l4f52h:
	ram:4f52 0e 01          ld c,001h            	;. .
	ram:4f54 cd b1 4e       call l4eb1h          	;. . N
	ram:4f57 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4f5a f5             push af              	;.
	ram:4f5b cd ae 4d       call sub_4daeh       	;. . M
l4f5eh:
	ram:4f5e cd 84 00       call 00084h          	;. . .
	ram:4f61 28 20          jr z,l4f83h          	;(  
	ram:4f63 cd 19 50       call sub_5019h       	;. . P
	ram:4f66 20 05          jr nz,l4f6dh         	;.
	ram:4f68 cd 20 50       call sub_5020h       	;.   P
	ram:4f6b 18 20          jr l4f8dh            	;.  
l4f6dh:
	ram:4f6d 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:4f70 cd 20 50       call sub_5020h       	;.   P
	ram:4f73 cd 42 4d       call sub_4d42h       	;. B M
	ram:4f76 d7             rst 10h              	;.
	ram:4f77 cd 19 50       call sub_5019h       	;. . P
	ram:4f7a 28 11          jr z,l4f8dh          	;( .
	ram:4f7c cb ee          set 5,(hl)           	;. .
	ram:4f7e 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4f81 18 05          jr l4f88h            	;. .
l4f83h:
	ram:4f83 cd 19 50       call sub_5019h       	;. . P
	ram:4f86 28 05          jr z,l4f8dh          	;( .
l4f88h:
	ram:4f88 cb ee          set 5,(hl)           	;. .
	ram:4f8a cd 1b 00       call 0001bh          	;. . .
l4f8dh:
	ram:4f8d cd b6 4d       call sub_4db6h       	;. . M
	ram:4f90 38 cc          jr c,l4f5eh          	;8 .
	ram:4f92 f1             pop af               	;.
	ram:4f93 32 9b 8b       ld (08b9bh),a        	;2 . .
	ram:4f96 c3 cb 4f       jp l4fcbh            	;. . O
l4f99h:
	ram:4f99 0e 00          ld c,000h            	;. .
	ram:4f9b cd b1 4e       call l4eb1h          	;. . N
	ram:4f9e 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:4fa1 f5             push af              	;.
	ram:4fa2 cd ae 4d       call sub_4daeh       	;. . M
l4fa5h:
	ram:4fa5 cd 84 00       call 00084h          	;. . .
	ram:4fa8 28 13          jr z,l4fbdh          	;( .
	ram:4faa cd 19 50       call sub_5019h       	;. . P
	ram:4fad 20 05          jr nz,l4fb4h         	;.
	ram:4faf cd 20 50       call sub_5020h       	;.   P
	ram:4fb2 18 0e          jr l4fc2h            	;. .
l4fb4h:
	ram:4fb4 cb ae          res 5,(hl)           	;. .
	ram:4fb6 cd 20 50       call sub_5020h       	;.   P
	ram:4fb9 cd 42 4d       call sub_4d42h       	;. B M
	ram:4fbc d7             rst 10h              	;.
l4fbdh:
	ram:4fbd cb ae          res 5,(hl)           	;. .
	ram:4fbf cd 1b 00       call 0001bh          	;. . .
l4fc2h:
	ram:4fc2 cd b6 4d       call sub_4db6h       	;. . M
	ram:4fc5 38 de          jr c,l4fa5h          	;8 .
	ram:4fc7 f1             pop af               	;.
	ram:4fc8 32 9b 8b       ld (08b9bh),a        	;2 . .
l4fcbh:
	ram:4fcb 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4fce e5             push hl              	;.
	ram:4fcf 97             sub a                	;.
	ram:4fd0 32 0c 80       ld (0800ch),a        	;2 . .
l4fd3h:
	ram:4fd3 97             sub a                	;.
	ram:4fd4 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4fd7 cd 77 3c       call 03c77h          	;. w <
	ram:4fda 7e             ld a,(hl)            	;~
	ram:4fdb 23             inc hl               	;#
	ram:4fdc fe 20          cp 020h              	;.  
	ram:4fde 28 34          jr z,l5014h          	;( 4
	ram:4fe0 0e 00          ld c,000h            	;. .
	ram:4fe2 11 84 80       ld de,08084h         	;. . .
l4fe5h:
	ram:4fe5 12             ld (de),a            	;.
	ram:4fe6 13             inc de               	;.
	ram:4fe7 0c             inc c                	;.
	ram:4fe8 7e             ld a,(hl)            	;~
	ram:4fe9 23             inc hl               	;#
	ram:4fea fe 3d          cp 03dh              	;. =
	ram:4fec 28 04          jr z,l4ff2h          	;( .
	ram:4fee fe 7f          cp 07fh              	;. .
	ram:4ff0 20 f3          jr nz,l4fe5h         	;.
l4ff2h:
	ram:4ff2 79             ld a,c               	;y
	ram:4ff3 32 83 80       ld (08083h),a        	;2 . .
	ram:4ff6 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4ff9 d7             rst 10h              	;.
	ram:4ffa 3e 7f          ld a,07fh            	;> .
	ram:4ffc cb 6e          bit 5,(hl)           	;. n
	ram:4ffe 20 02          jr nz,l5002h         	;.
	ram:5000 3e 3d          ld a,03dh            	;> =
l5002h:
	ram:5002 cd cd 3d       call 03dcdh          	;. . =
	ram:5005 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5008 3c             inc a                	;<
	ram:5009 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:500c be             cp (hl)              	;.
	ram:500d 30 05          jr nc,l5014h         	;0 .
	ram:500f 32 0c 80       ld (0800ch),a        	;2 . .
	ram:5012 18 bf          jr l4fd3h            	;. .
l5014h:
	ram:5014 e1             pop hl               	;.
	ram:5015 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5018 c9             ret                  	;.
sub_5019h:
	ram:5019 eb             ex de,hl             	;.
	ram:501a 7e             ld a,(hl)            	;~
	ram:501b 23             inc hl               	;#
	ram:501c b6             or (hl)              	;.
	ram:501d 2b             dec hl               	;+
	ram:501e eb             ex de,hl             	;.
	ram:501f c9             ret                  	;.
sub_5020h:
	ram:5020 e5             push hl              	;.
	ram:5021 21 9b 8b       ld hl,08b9bh         	;! . .
	ram:5024 cb fe          set 7,(hl)           	;. .
	ram:5026 e1             pop hl               	;.
	ram:5027 c9             ret                  	;.
sub_5028h:
	ram:5028 e5             push hl              	;.
	ram:5029 21 9b 8b       ld hl,08b9bh         	;! . .
	ram:502c cb be          res 7,(hl)           	;. .
	ram:502e e1             pop hl               	;.
	ram:502f c9             ret                  	;.
sub_5030h:
	ram:5030 fd cb 0d d6    set 2,(iy+00dh)      	;. . . .
	ram:5034 cd a3 3d       call 03da3h          	;. . =
	ram:5037 fd cb 0d 96    res 2,(iy+00dh)      	;. . . .
	ram:503b c9             ret                  	;.
l503ch:
	ram:503c cd 17 7d       call sub_7d17h       	;. . }
	ram:503f 21 ba 50       ld hl,l50bah         	;! . P
	ram:5042 cd 4a 06       call 0064ah          	;. J .
	ram:5045 21 3c 00       ld hl,0003ch         	;! < .
	ram:5048 cd 28 2e       call 02e28h          	;. ( .
	ram:504b 21 89 31       ld hl,03189h         	;! . 1
	ram:504e cd 76 53       call sub_5376h       	;. v S
	ram:5051 cd 72 50       call sub_5072h       	;. r P
	ram:5054 21 38 51       ld hl,l5138h         	;! 8 Q
	ram:5057 22 8d 81       ld (0818dh),hl       	;" . .
sub_505ah:
	ram:505a cd 2d 54       call sub_542dh       	;. - T
	ram:505d cd 01 5d       call sub_5d01h       	;. . ]
	ram:5060 da 25 54       jp c,l5425h          	;. % T
	ram:5063 cd 04 53       call sub_5304h       	;. . S
	ram:5066 ca 25 54       jp z,l5425h          	;. % T
	ram:5069 cd e9 50       call sub_50e9h       	;. . P
	ram:506c cd 2c 2f       call 02f2ch          	;. , /
	ram:506f c3 1a 54       jp l541ah            	;. . T
sub_5072h:
	ram:5072 3e 59          ld a,059h            	;> Y
	ram:5074 cd 85 3d       call 03d85h          	;. . =
	ram:5077 97             sub a                	;.
	ram:5078 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:507b 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:507e 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:5081 3c             inc a                	;<
	ram:5082 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5085 cd 8b 3d       call 03d8bh          	;. . =
	ram:5088 3e 01          ld a,001h            	;> .
l508ah:
	ram:508a 32 0c 80       ld (0800ch),a        	;2 . .
	ram:508d 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5090 cd d9 52       call sub_52d9h       	;. . R
	ram:5093 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:5096 fe 00          cp 000h              	;. .
	ram:5098 c4 12 51       call nz,sub_5112h    	;. . Q
	ram:509b 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:509e fe 06          cp 006h              	;. .
	ram:50a0 30 0f          jr nc,l50b1h         	;0 .
	ram:50a2 cd e3 50       call sub_50e3h       	;. . P
	ram:50a5 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:50a8 28 04          jr z,l50aeh          	;( .
	ram:50aa fe 02          cp 002h              	;. .
	ram:50ac 30 03          jr nc,l50b1h         	;0 .
l50aeh:
	ram:50ae 3c             inc a                	;<
	ram:50af 18 d9          jr l508ah            	;. .
l50b1h:
	ram:50b1 3e 01          ld a,001h            	;> .
	ram:50b3 32 22 8b       ld (08b22h),a        	;2 " .
	ram:50b6 32 0c 80       ld (0800ch),a        	;2 . .
	ram:50b9 c9             ret                  	;.
l50bah:
	ram:50ba 38 51          jr c,83              	;8 Q
	ram:50bc d9             exx                  	;.
	ram:50bd 34             inc (hl)             	;4
	ram:50be 17             rla                  	;.
	ram:50bf 7d             ld a,l               	;}
	ram:50c0 b5             or l                 	;.
	ram:50c1 34             inc (hl)             	;4
	ram:50c2 b2             or d                 	;.
	ram:50c3 58             ld e,b               	;X
	ram:50c4 29             add hl,hl            	;)
	ram:50c5 6f             ld l,a               	;o
	ram:50c6 0a             ld a,(bc)            	;.
l50c7h:
	ram:50c7 78             ld a,b               	;x
	ram:50c8 81             add a,c              	;.
	ram:50c9 79             ld a,c               	;y
	ram:50ca 81             add a,c              	;.
	ram:50cb 78             ld a,b               	;x
	ram:50cc 82             add a,d              	;.
	ram:50cd 79             ld a,c               	;y
	ram:50ce 82             add a,d              	;.
l50cfh:
	ram:50cf 78             ld a,b               	;x
	ram:50d0 00             nop                  	;.
	ram:50d1 79             ld a,c               	;y
	ram:50d2 00             nop                  	;.
sub_50d3h:
	ram:50d3 cd da 7d       call sub_7ddah       	;. . }
sub_50d6h:
	ram:50d6 cd 22 26       call 02622h          	;. " &
	ram:50d9 cd e9 50       call sub_50e9h       	;. . P
	ram:50dc cd 73 2f       call 02f73h          	;. s /
	ram:50df cd 1f 28       call 0281fh          	;. . (
	ram:50e2 c9             ret                  	;.
sub_50e3h:
	ram:50e3 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:50e6 fe 0f          cp 00fh              	;. .
	ram:50e8 c9             ret                  	;.
sub_50e9h:
	ram:50e9 cd e3 50       call sub_50e3h       	;. . P
	ram:50ec 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:50ef 28 0b          jr z,l50fch          	;( .
	ram:50f1 fe 03          cp 003h              	;. .
	ram:50f3 d2 0f 7e       jp nc,l7e0fh         	;. . ~
	ram:50f6 a7             and a                	;.
	ram:50f7 ca 0f 7e       jp z,l7e0fh          	;. . ~
	ram:50fa 18 09          jr l5105h            	;. .
l50fch:
	ram:50fc fe 07          cp 007h              	;. .
	ram:50fe d2 3c 50       jp nc,l503ch         	;. < P
	ram:5101 a7             and a                	;.
	ram:5102 ca 3c 50       jp z,l503ch          	;. < P
l5105h:
	ram:5105 07             rlca                 	;.
	ram:5106 4f             ld c,a               	;O
	ram:5107 07             rlca                 	;.
	ram:5108 07             rlca                 	;.
	ram:5109 81             add a,c              	;.
	ram:510a 4f             ld c,a               	;O
	ram:510b 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:510e 11 82 80       ld de,08082h         	;. . .
	ram:5111 c9             ret                  	;.
sub_5112h:
	ram:5112 cd 72 7a       call sub_7a72h       	;. r z
	ram:5115 cd e9 50       call sub_50e9h       	;. . P
	ram:5118 cd 2c 2f       call 02f2ch          	;. , /
	ram:511b cd a0 7a       call sub_7aa0h       	;. . z
	ram:511e c3 5a 7a       jp sub_7a5ah         	;. Z z
sub_5121h:
	ram:5121 21 89 04       ld hl,00489h         	;! . .
	ram:5124 cd b5 0a       call 00ab5h          	;. . .
	ram:5127 cd d3 50       call sub_50d3h       	;. . P
	ram:512a cd 12 51       call sub_5112h       	;. . Q
	ram:512d cd db 0a       call 00adbh          	;. . .
sub_5130h:
	ram:5130 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5133 d8             ret c                	;.
	ram:5134 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:5137 c9             ret                  	;.
l5138h:
	ram:5138 f5             push af              	;.
	ram:5139 c5             push bc              	;.
	ram:513a fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:513e cc 5a 50       call z,sub_505ah     	;. Z P
	ram:5141 c1             pop bc               	;.
	ram:5142 f1             pop af               	;.
	ram:5143 fe 06          cp 006h              	;. .
	ram:5145 28 04          jr z,l514bh          	;( .
	ram:5147 fe 04          cp 004h              	;. .
	ram:5149 20 75          jr nz,l51c0h         	;u
l514bh:
	ram:514b cd 20 46       call sub_4620h       	;.   F
	ram:514e 20 11          jr nz,l5161h         	;.
	ram:5150 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5153 fe 05          cp 005h              	;. .
	ram:5155 c0             ret nz               	;.
	ram:5156 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:5159 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:515c 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:515f 18 0a          jr l516bh            	;. .
l5161h:
	ram:5161 cd 21 51       call sub_5121h       	;. ! Q
	ram:5164 cd 56 52       call sub_5256h       	;. V R
	ram:5167 fe 06          cp 006h              	;. .
	ram:5169 30 52          jr nc,l51bdh         	;0 R
l516bh:
	ram:516b 3c             inc a                	;<
	ram:516c 32 22 8b       ld (08b22h),a        	;2 " .
	ram:516f cd 3d 55       call sub_553dh       	;. = U
	ram:5172 38 46          jr c,l51bah          	;8 F
	ram:5174 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5177 30 12          jr nc,l518bh         	;0 .
	ram:5179 cd f5 56       call sub_56f5h       	;. . V
	ram:517c 97             sub a                	;.
	ram:517d 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5180 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5183 fe 05          cp 005h              	;. .
	ram:5185 20 24          jr nz,l51abh         	;$
	ram:5187 3e 07          ld a,007h            	;> .
	ram:5189 18 1d          jr l51a8h            	;. .
l518bh:
	ram:518b 97             sub a                	;.
	ram:518c 32 0d 80       ld (0800dh),a        	;2 . .
	ram:518f 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5192 fe 05          cp 005h              	;. .
	ram:5194 20 0c          jr nz,l51a2h         	;.
	ram:5196 21 0c 80       ld hl,0800ch         	;! . .
	ram:5199 35             dec (hl)             	;5
	ram:519a 3e d0          ld a,0d0h            	;> .
	ram:519c cd c5 3f       call 03fc5h          	;. . ?
	ram:519f 34             inc (hl)             	;4
	ram:51a0 18 09          jr l51abh            	;. .
l51a2h:
	ram:51a2 fe 06          cp 006h              	;. .
	ram:51a4 20 05          jr nz,l51abh         	;.
	ram:51a6 3e d0          ld a,0d0h            	;> .
l51a8h:
	ram:51a8 cd c5 3f       call 03fc5h          	;. . ?
l51abh:
	ram:51ab cd d9 52       call sub_52d9h       	;. . R
	ram:51ae cd f9 5c       call sub_5cf9h       	;. . \
	ram:51b1 28 02          jr z,l51b5h          	;( .
	ram:51b3 30 08          jr nc,l51bdh         	;0 .
l51b5h:
	ram:51b5 cd 12 51       call sub_5112h       	;. . Q
	ram:51b8 18 03          jr l51bdh            	;. .
l51bah:
	ram:51ba 32 0c 80       ld (0800ch),a        	;2 . .
l51bdh:
	ram:51bd c3 5a 50       jp sub_505ah         	;. Z P
l51c0h:
	ram:51c0 fe 03          cp 003h              	;. .
	ram:51c2 20 62          jr nz,l5226h         	;b
l51c4h:
	ram:51c4 cd 20 46       call sub_4620h       	;.   F
	ram:51c7 20 0c          jr nz,l51d5h         	;.
	ram:51c9 cd f9 5c       call sub_5cf9h       	;. . \
	ram:51cc d8             ret c                	;.
	ram:51cd cc 0c 53       call z,sub_530ch     	;. . S
	ram:51d0 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:51d3 18 03          jr l51d8h            	;. .
l51d5h:
	ram:51d5 cd 21 51       call sub_5121h       	;. ! Q
l51d8h:
	ram:51d8 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:51db fe 02          cp 002h              	;. .
	ram:51dd 38 de          jr c,l51bdh          	;8 .
	ram:51df 3d             dec a                	;=
	ram:51e0 32 22 8b       ld (08b22h),a        	;2 " .
	ram:51e3 fe 04          cp 004h              	;. .
	ram:51e5 20 04          jr nz,l51ebh         	;.
	ram:51e7 97             sub a                	;.
	ram:51e8 32 21 8b       ld (08b21h),a        	;2 ! .
l51ebh:
	ram:51eb cd 51 55       call sub_5551h       	;. Q U
	ram:51ee 30 31          jr nc,l5221h         	;0 1
	ram:51f0 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:51f3 fe 05          cp 005h              	;. .
	ram:51f5 20 18          jr nz,l520fh         	;.
	ram:51f7 97             sub a                	;.
	ram:51f8 32 0d 80       ld (0800dh),a        	;2 . .
	ram:51fb 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:51fe f5             push af              	;.
	ram:51ff 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:5202 3d             dec a                	;=
	ram:5203 32 0c 80       ld (0800ch),a        	;2 . .
	ram:5206 3e 07          ld a,007h            	;> .
	ram:5208 cd c5 3f       call 03fc5h          	;. . ?
	ram:520b f1             pop af               	;.
	ram:520c 32 0c 80       ld (0800ch),a        	;2 . .
l520fh:
	ram:520f 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5212 fe 02          cp 002h              	;. .
	ram:5214 38 03          jr c,l5219h          	;8 .
	ram:5216 cd ee 56       call sub_56eeh       	;. . V
l5219h:
	ram:5219 cd d9 52       call sub_52d9h       	;. . R
	ram:521c cd 12 51       call sub_5112h       	;. . Q
	ram:521f 18 03          jr l5224h            	;. .
l5221h:
	ram:5221 32 0c 80       ld (0800ch),a        	;2 . .
l5224h:
	ram:5224 18 97          jr l51bdh            	;. .
l5226h:
	ram:5226 fe c1          cp 0c1h              	;. .
	ram:5228 ca 3c 50       jp z,l503ch          	;. < P
	ram:522b fe 16          cp 016h              	;. .
	ram:522d 20 18          jr nz,l5247h         	;.
l522fh:
	ram:522f cd 20 46       call sub_4620h       	;.   F
	ram:5232 c8             ret z                	;.
	ram:5233 cd 21 51       call sub_5121h       	;. ! Q
	ram:5236 cd 56 52       call sub_5256h       	;. V R
	ram:5239 cd a2 62       call sub_62a2h       	;. . b
l523ch:
	ram:523c cd a1 6b       call sub_6ba1h       	;. . k
	ram:523f d2 bd 51       jp nc,l51bdh         	;. . Q
	ram:5242 cd 21 63       call sub_6321h       	;. ! c
	ram:5245 18 f5          jr l523ch            	;. .
l5247h:
	ram:5247 fe a6          cp 0a6h              	;. .
	ram:5249 28 15          jr z,l5260h          	;( .
l524bh:
	ram:524b cd b8 54       call sub_54b8h       	;. . T
	ram:524e fd cb 05 6e    bit 5,(iy+005h)      	;. . . n
	ram:5252 c4 2e 53       call nz,sub_532eh    	;. . S
	ram:5255 c9             ret                  	;.
sub_5256h:
	ram:5256 cd 04 53       call sub_5304h       	;. . S
	ram:5259 c0             ret nz               	;.
	ram:525a 97             sub a                	;.
	ram:525b 77             ld (hl),a            	;w
	ram:525c 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:525f c9             ret                  	;.
l5260h:
	ram:5260 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5263 fe 05          cp 005h              	;. .
	ram:5265 30 0d          jr nc,l5274h         	;0 .
l5267h:
	ram:5267 cd 20 46       call sub_4620h       	;.   F
	ram:526a c8             ret z                	;.
	ram:526b cd 21 51       call sub_5121h       	;. ! Q
	ram:526e cd 56 52       call sub_5256h       	;. V R
	ram:5271 c3 5a 50       jp sub_505ah         	;. Z P
l5274h:
	ram:5274 20 04          jr nz,l527ah         	;.
	ram:5276 3e 05          ld a,005h            	;> .
	ram:5278 18 08          jr l5282h            	;. .
l527ah:
	ram:527a 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:527d a7             and a                	;.
	ram:527e 20 e7          jr nz,l5267h         	;.
	ram:5280 3e 04          ld a,004h            	;> .
l5282h:
	ram:5282 21 24 8b       ld hl,08b24h         	;! $ .
	ram:5285 be             cp (hl)              	;.
	ram:5286 30 df          jr nc,l5267h         	;0 .
	ram:5288 cd 2e 53       call sub_532eh       	;. . S
	ram:528b 21 89 04       ld hl,00489h         	;! . .
	ram:528e cd b5 0a       call 00ab5h          	;. . .
	ram:5291 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:5294 21 ca 52       ld hl,l52cah         	;! . R
	ram:5297 22 95 81       ld (08195h),hl       	;" . .
	ram:529a 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:529d fe 05          cp 005h              	;. .
	ram:529f 28 01          jr z,l52a2h          	;( .
	ram:52a1 37             scf                  	;7
l52a2h:
	ram:52a2 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:52a5 22 29 86       ld (08629h),hl       	;" ) .
	ram:52a8 cd 5b 3a       call 03a5bh          	;. [ :
	ram:52ab 21 b2 58       ld hl,l58b2h         	;! . X
	ram:52ae 22 95 81       ld (08195h),hl       	;" . .
	ram:52b1 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:52b4 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:52b7 97             sub a                	;.
	ram:52b8 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:52bb cd 30 51       call sub_5130h       	;. 0 Q
	ram:52be cd 12 53       call sub_5312h       	;. . S
l52c1h:
	ram:52c1 cd 12 51       call sub_5112h       	;. . Q
	ram:52c4 cd db 0a       call 00adbh          	;. . .
	ram:52c7 c3 5a 50       jp sub_505ah         	;. Z P
l52cah:
	ram:52ca 21 b2 58       ld hl,l58b2h         	;! . X
	ram:52cd 22 95 81       ld (08195h),hl       	;" . .
	ram:52d0 cd 95 3c       call 03c95h          	;. . <
	ram:52d3 cd 5a 50       call sub_505ah       	;. Z P
	ram:52d6 c3 68 55       jp l5568h            	;. h U
sub_52d9h:
	ram:52d9 3e 01          ld a,001h            	;> .
	ram:52db 32 0d 80       ld (0800dh),a        	;2 . .
	ram:52de 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:52e1 d6 01          sub 001h             	;. .
	ram:52e3 07             rlca                 	;.
	ram:52e4 5f             ld e,a               	;_
	ram:52e5 16 00          ld d,000h            	;. .
	ram:52e7 cd e3 50       call sub_50e3h       	;. . P
	ram:52ea 28 05          jr z,l52f1h          	;( .
	ram:52ec 21 cf 50       ld hl,l50cfh         	;! . P
	ram:52ef 18 03          jr l52f4h            	;. .
l52f1h:
	ram:52f1 21 c7 50       ld hl,l50c7h         	;! . P
l52f4h:
	ram:52f4 19             add hl,de            	;.
	ram:52f5 7e             ld a,(hl)            	;~
	ram:52f6 cd c5 3f       call 03fc5h          	;. . ?
	ram:52f9 23             inc hl               	;#
	ram:52fa 7e             ld a,(hl)            	;~
	ram:52fb b7             or a                 	;.
	ram:52fc 28 03          jr z,l5301h          	;( .
	ram:52fe cd c5 3f       call 03fc5h          	;. . ?
l5301h:
	ram:5301 c3 a6 74       jp sub_74a6h         	;. . t
sub_5304h:
	ram:5304 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5307 21 21 8b       ld hl,08b21h         	;! ! .
	ram:530a be             cp (hl)              	;.
	ram:530b c9             ret                  	;.
sub_530ch:
	ram:530c 35             dec (hl)             	;5
	ram:530d f2 11 53       jp p,l5311h          	;. . S
	ram:5310 34             inc (hl)             	;4
l5311h:
	ram:5311 c9             ret                  	;.
sub_5312h:
	ram:5312 97             sub a                	;.
	ram:5313 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5316 cd 77 3c       call 03c77h          	;. w <
	ram:5319 7e             ld a,(hl)            	;~
	ram:531a fe 07          cp 007h              	;. .
	ram:531c c8             ret z                	;.
	ram:531d fe d0          cp 0d0h              	;. .
	ram:531f c8             ret z                	;.
	ram:5320 fe 1f          cp 01fh              	;. .
	ram:5322 20 04          jr nz,l5328h         	;.
	ram:5324 3e 07          ld a,007h            	;> .
	ram:5326 18 02          jr l532ah            	;. .
l5328h:
	ram:5328 3e d0          ld a,0d0h            	;> .
l532ah:
	ram:532a cd c5 3f       call 03fc5h          	;. . ?
	ram:532d c9             ret                  	;.
sub_532eh:
	ram:532e f5             push af              	;.
	ram:532f 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:5332 f5             push af              	;.
	ram:5333 ed 5b 0c 80    ld de,(0800ch)       	;. [ . .
	ram:5337 3a 2f 8b       ld a,(08b2fh)        	;: / .
l533ah:
	ram:533a 32 0c 80       ld (0800ch),a        	;2 . .
	ram:533d 97             sub a                	;.
	ram:533e 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5341 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:5344 cd 77 3c       call 03c77h          	;. w <
	ram:5347 7e             ld a,(hl)            	;~
	ram:5348 fe 06          cp 006h              	;. .
	ram:534a 28 0c          jr z,l5358h          	;( .
	ram:534c fe 07          cp 007h              	;. .
	ram:534e 28 0c          jr z,l535ch          	;( .
	ram:5350 fe d0          cp 0d0h              	;. .
	ram:5352 20 0d          jr nz,l5361h         	;.
	ram:5354 3e 20          ld a,020h            	;>  
	ram:5356 18 06          jr l535eh            	;. .
l5358h:
	ram:5358 3e 1e          ld a,01eh            	;> .
	ram:535a 18 02          jr l535eh            	;. .
l535ch:
	ram:535c 3e 1f          ld a,01fh            	;> .
l535eh:
	ram:535e cd c5 3f       call 03fc5h          	;. . ?
l5361h:
	ram:5361 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5364 3c             inc a                	;<
	ram:5365 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:5368 be             cp (hl)              	;.
	ram:5369 da 3a 53       jp c,l533ah          	;. : S
	ram:536c ed 53 0c 80    ld (0800ch),de       	;. S . .
	ram:5370 f1             pop af               	;.
	ram:5371 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:5374 f1             pop af               	;.
	ram:5375 c9             ret                  	;.
sub_5376h:
	ram:5376 3e 01          ld a,001h            	;> .
	ram:5378 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:537b 11 00 00       ld de,00000h         	;. . .
	ram:537e ed 53 0c 80    ld (0800ch),de       	;. S . .
	ram:5382 cd 45 3e       call 03e45h          	;. E >
	ram:5385 cd c1 3d       call 03dc1h          	;. . =
	ram:5388 c9             ret                  	;.
sub_5389h:
	ram:5389 dd e5          push ix              	;. .
	ram:538b dd 2a 21 8b    ld ix,(08b21h)       	;. * ! .
	ram:538f 3e 01          ld a,001h            	;> .
	ram:5391 32 0c 80       ld (0800ch),a        	;2 . .
l5394h:
	ram:5394 97             sub a                	;.
	ram:5395 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5398 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:539b 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:539e be             cp (hl)              	;.
	ram:539f 30 17          jr nc,l53b8h         	;0 .
	ram:53a1 dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:53a4 3c             inc a                	;<
	ram:53a5 28 0e          jr z,l53b5h          	;( .
	ram:53a7 cd bb 53       call sub_53bbh       	;. . S
	ram:53aa 11 03 00       ld de,00003h         	;. . .
	ram:53ad dd 19          add ix,de            	;. .
	ram:53af 21 0c 80       ld hl,0800ch         	;! . .
	ram:53b2 34             inc (hl)             	;4
	ram:53b3 18 df          jr l5394h            	;. .
l53b5h:
	ram:53b5 cd c7 3d       call 03dc7h          	;. . =
l53b8h:
	ram:53b8 dd e1          pop ix               	;. .
	ram:53ba c9             ret                  	;.
sub_53bbh:
	ram:53bb 97             sub a                	;.
	ram:53bc 32 0d 80       ld (0800dh),a        	;2 . .
	ram:53bf 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:53c2 3d             dec a                	;=
	ram:53c3 21 0c 80       ld hl,0800ch         	;! . .
	ram:53c6 be             cp (hl)              	;.
	ram:53c7 20 0a          jr nz,l53d3h         	;.
	ram:53c9 dd 7e 03       ld a,(ix+003h)       	;. ~ .
	ram:53cc 3c             inc a                	;<
	ram:53cd 28 14          jr z,l53e3h          	;( .
	ram:53cf 3e 1f          ld a,01fh            	;> .
	ram:53d1 18 12          jr l53e5h            	;. .
l53d3h:
	ram:53d3 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:53d6 be             cp (hl)              	;.
	ram:53d7 20 0a          jr nz,l53e3h         	;.
	ld a,(ix-003h)		;53d9	dd 7e fd	. ~ .
	ram:53dc 3c             inc a                	;<
	ram:53dd 28 04          jr z,l53e3h          	;( .
	ram:53df 3e 1e          ld a,01eh            	;> .
	ram:53e1 18 02          jr l53e5h            	;. .
l53e3h:
	ram:53e3 3e 20          ld a,020h            	;>  
l53e5h:
	ram:53e5 cd c5 3f       call 03fc5h          	;. . ?
	ram:53e8 dd 6e 01       ld l,(ix+001h)       	;. n .
	ram:53eb dd 66 02       ld h,(ix+002h)       	;. f .
	ram:53ee cd 45 3e       call 03e45h          	;. E >
	ram:53f1 3e 3d          ld a,03dh            	;> =
	ram:53f3 cd c5 3f       call 03fc5h          	;. . ?
	ram:53f6 cd 87 3b       call 03b87h          	;. . ;
l53f9h:
	ram:53f9 dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:53fc cd c7 3a       call 03ac7h          	;. . :
	ram:53ff 3e 15          ld a,015h            	;> .
	ram:5401 cd 97 37       call 03797h          	;. . 7
	ram:5404 21 98 80       ld hl,08098h         	;! . .
	ram:5407 cd 75 3b       call 03b75h          	;. u ;
	ram:540a c9             ret                  	;.
sub_540bh:
	ram:540b 3e 01          ld a,001h            	;> .
	ram:540d 32 0c 80       ld (0800ch),a        	;2 . .
l5410h:
	ram:5410 cd 2d 54       call sub_542dh       	;. - T
	ram:5413 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:5416 7e             ld a,(hl)            	;~
	ram:5417 cd c7 3a       call 03ac7h          	;. . :
l541ah:
	ram:541a cd af 34       call 034afh          	;. . 4
l541dh:
	ram:541d 30 06          jr nc,l5425h         	;0 .
	ram:541f cd be 57       call sub_57beh       	;. . W
	ram:5422 c3 45 0a       jp 00a45h            	;. E .
l5425h:
	ram:5425 cd f4 45       call sub_45f4h       	;. . E
	ram:5428 fd cb 05 ae    res 5,(iy+005h)      	;. . . .
	ram:542c c9             ret                  	;.
sub_542dh:
	ram:542d cd c4 56       call sub_56c4h       	;. . V
	ram:5430 cd 7f 56       call sub_567fh       	;. . V
	ram:5433 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:5437 cd 41 54       call sub_5441h       	;. A T
	ram:543a 22 25 8b       ld (08b25h),hl       	;" % .
	ram:543d cd 29 49       call sub_4929h       	;. ) I
	ram:5440 c9             ret                  	;.
sub_5441h:
	ram:5441 cd be 57       call sub_57beh       	;. . W
	ram:5444 21 45 0a       ld hl,00a45h         	;! E .
	ram:5447 cd b5 0a       call 00ab5h          	;. . .
	ram:544a 21 14 00       ld hl,00014h         	;! . .
	ram:544d cd 2f 2a       call 02a2fh          	;. / *
	ram:5450 cd db 0a       call 00adbh          	;. . .
	ram:5453 c9             ret                  	;.
	ram:5454 fe 06          cp 006h              	;. .
	ram:5456 28 04          jr z,l545ch          	;( .
	ram:5458 fe 04          cp 004h              	;. .
	ram:545a 20 2c          jr nz,l5488h         	;,
l545ch:
	ram:545c cd 20 46       call sub_4620h       	;.   F
	ram:545f c8             ret z                	;.
	ram:5460 cd a1 57       call sub_57a1h       	;. . W
	ram:5463 cd c6 57       call sub_57c6h       	;. . W
	ram:5466 dd 7e 03       ld a,(ix+003h)       	;. ~ .
	ram:5469 3c             inc a                	;<
	ram:546a 28 19          jr z,l5485h          	;( .
	ram:546c 11 03 00       ld de,00003h         	;. . .
	ram:546f dd 19          add ix,de            	;. .
	ram:5471 dd 22 21 8b    ld (08b21h),ix       	;. " ! .
	ram:5475 cd 3d 55       call sub_553dh       	;. = U
	ram:5478 38 08          jr c,l5482h          	;8 .
	ram:547a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:547d cd bb 53       call sub_53bbh       	;. . S
	ram:5480 18 03          jr l5485h            	;. .
l5482h:
	ram:5482 32 0c 80       ld (0800ch),a        	;2 . .
l5485h:
	ram:5485 c3 10 54       jp l5410h            	;. . T
l5488h:
	ram:5488 fe 03          cp 003h              	;. .
	ram:548a 20 29          jr nz,l54b5h         	;)
	ram:548c cd 20 46       call sub_4620h       	;.   F
	ram:548f c8             ret z                	;.
	ram:5490 cd a1 57       call sub_57a1h       	;. . W
	ram:5493 cd c6 57       call sub_57c6h       	;. . W
	ld a,(ix-003h)		;5496	dd 7e fd	. ~ .
	ram:5499 3c             inc a                	;<
	ram:549a 28 16          jr z,l54b2h          	;( .
	ram:549c 11 fd ff       ld de,0fffdh         	;. . .
	ram:549f dd 19          add ix,de            	;. .
	ram:54a1 dd 22 21 8b    ld (08b21h),ix       	;. " ! .
	ram:54a5 cd 51 55       call sub_5551h       	;. Q U
	ram:54a8 30 05          jr nc,l54afh         	;0 .
	ram:54aa cd bb 53       call sub_53bbh       	;. . S
	ram:54ad 18 03          jr l54b2h            	;. .
l54afh:
	ram:54af 32 0c 80       ld (0800ch),a        	;2 . .
l54b2h:
	ram:54b2 c3 10 54       jp l5410h            	;. . T
l54b5h:
	ram:54b5 fe 16          cp 016h              	;. .
	ram:54b7 c8             ret z                	;.
sub_54b8h:
	ram:54b8 f5             push af              	;.
	ram:54b9 c5             push bc              	;.
	ram:54ba cd c0 54       call l54c0h          	;. . T
	ram:54bd c1             pop bc               	;.
	ram:54be f1             pop af               	;.
	ram:54bf c9             ret                  	;.
l54c0h:
	ram:54c0 fe 08          cp 008h              	;. .
	ram:54c2 20 0a          jr nz,l54ceh         	;.
	ram:54c4 fd cb 05 ee    set 5,(iy+005h)      	;. . . .
	ram:54c8 cd d2 01       call 001d2h          	;. . .
	ram:54cb c3 68 55       jp l5568h            	;. h U
l54ceh:
	ram:54ce fe 02          cp 002h              	;. .
	ram:54d0 20 05          jr nz,l54d7h         	;.
	ram:54d2 cd 77 46       call sub_4677h       	;. w F
	ram:54d5 18 07          jr l54deh            	;. .
l54d7h:
	ram:54d7 fe 01          cp 001h              	;. .
	ram:54d9 20 0b          jr nz,l54e6h         	;.
	ram:54db cd 93 46       call sub_4693h       	;. . F
l54deh:
	ram:54de cd b3 55       call sub_55b3h       	;. . U
l54e1h:
	ram:54e1 fd cb 05 b6    res 6,(iy+005h)      	;. . . .
	ram:54e5 c9             ret                  	;.
l54e6h:
	ram:54e6 fe 87          cp 087h              	;. .
	ram:54e8 20 05          jr nz,l54efh         	;.
	ram:54ea cd e5 57       call l57e5h          	;. . W
	ram:54ed 18 f2          jr l54e1h            	;. .
l54efh:
	ram:54ef fe 88          cp 088h              	;. .
	ram:54f1 20 05          jr nz,l54f8h         	;.
	ram:54f3 cd f3 57       call l57f3h          	;. . W
	ram:54f6 18 e9          jr l54e1h            	;. .
l54f8h:
	ram:54f8 fe 0a          cp 00ah              	;. .
	ram:54fa 20 06          jr nz,l5502h         	;.
	ram:54fc cd e1 54       call l54e1h          	;. . T
	ram:54ff c3 a2 49       jp l49a2h            	;. . I
l5502h:
	ram:5502 fe 09          cp 009h              	;. .
	ram:5504 20 15          jr nz,l551bh         	;.
	ram:5506 cd e1 54       call l54e1h          	;. . T
	ram:5509 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:550d cd b2 45       call sub_45b2h       	;. . E
	ram:5510 c8             ret z                	;.
	ram:5511 fd cb 05 ee    set 5,(iy+005h)      	;. . . .
	ram:5515 cd 3f 57       call sub_573fh       	;. ? W
	ram:5518 c3 b3 55       jp sub_55b3h         	;. . U
l551bh:
	ram:551b fe 17          cp 017h              	;. .
	ram:551d ca 9d 64       jp z,l649dh          	;. . d
	ram:5520 79             ld a,c               	;y
	ram:5521 b7             or a                 	;.
	ram:5522 c8             ret z                	;.
	ram:5523 fe 3a          cp 03ah              	;. :
	ram:5525 20 05          jr nz,l552ch         	;.
	ram:5527 fd cb 0e 7e    bit 7,(iy+00eh)      	;. . . ~
	ram:552b c8             ret z                	;.
l552ch:
	ram:552c fd cb 05 ee    set 5,(iy+005h)      	;. . . .
	ram:5530 fd cb 05 76    bit 6,(iy+005h)      	;. . . v
	ram:5534 c4 68 55       call nz,l5568h       	;. h U
	ram:5537 cd 7d 55       call sub_557dh       	;. } U
	ram:553a c3 96 55       jp sub_5596h         	;. . U
sub_553dh:
	ram:553d 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5540 3c             inc a                	;<
	ram:5541 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:5544 be             cp (hl)              	;.
	ram:5545 d8             ret c                	;.
	ram:5546 cd 01 57       call sub_5701h       	;. . W
	ram:5549 cd 67 3d       call 03d67h          	;. g =
	ram:554c cd ee 56       call sub_56eeh       	;. . V
	ram:554f 97             sub a                	;.
	ram:5550 c9             ret                  	;.
sub_5551h:
	ram:5551 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5554 b7             or a                 	;.
	ram:5555 28 06          jr z,l555dh          	;( .
	ram:5557 3d             dec a                	;=
	ram:5558 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:555b be             cp (hl)              	;.
	ram:555c d0             ret nc               	;.
l555dh:
	ram:555d cd 01 57       call sub_5701h       	;. . W
	ram:5560 cd 93 3b       call 03b93h          	;. . ;
	ram:5563 cd f5 56       call sub_56f5h       	;. . V
	ram:5566 37             scf                  	;7
	ram:5567 c9             ret                  	;.
l5568h:
	ram:5568 cd e1 54       call l54e1h          	;. . T
sub_556bh:
	ram:556b cd 38 46       call sub_4638h       	;. 8 F
	ram:556e cd 7f 56       call sub_567fh       	;. . V
	ram:5571 cd c1 3d       call 03dc1h          	;. . =
sub_5574h:
	ram:5574 fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
sub_5578h:
	ram:5578 fd cb 0e 8e    res 1,(iy+00eh)      	;. . . .
	ram:557c c9             ret                  	;.
sub_557dh:
	ram:557d f5             push af              	;.
	ram:557e cd 32 47       call sub_4732h       	;. 2 G
	ram:5581 28 11          jr z,l5594h          	;( .
	ram:5583 3a 4b 83       ld a,(0834bh)        	;: K .
	ram:5586 f5             push af              	;.
	ram:5587 fd cb 05 e6    set 4,(iy+005h)      	;. . . .
	ram:558b 3e 20          ld a,020h            	;>  
	ram:558d cd 96 55       call sub_5596h       	;. . U
	ram:5590 f1             pop af               	;.
	ram:5591 32 4b 83       ld (0834bh),a        	;2 K .
l5594h:
	ram:5594 f1             pop af               	;.
	ram:5595 c9             ret                  	;.
sub_5596h:
	ram:5596 4f             ld c,a               	;O
	ram:5597 fd cb 05 66    bit 4,(iy+005h)      	;. . . f
	ram:559b 20 0b          jr nz,l55a8h         	;.
	ram:559d cd 9b 45       call sub_459bh       	;. . E
	ram:55a0 c8             ret z                	;.
	ram:55a1 79             ld a,c               	;y
	ram:55a2 cd 63 3b       call 03b63h          	;. c ;
	ram:55a5 c3 b3 55       jp sub_55b3h         	;. . U
l55a8h:
	ram:55a8 cd 5a 45       call sub_455ah       	;. Z E
	ram:55ab c8             ret z                	;.
	ram:55ac 79             ld a,c               	;y
	ram:55ad cd 63 3b       call 03b63h          	;. c ;
	ram:55b0 cd 3f 57       call sub_573fh       	;. ? W
sub_55b3h:
	ram:55b3 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:55b6 b7             or a                 	;.
	ram:55b7 20 3d          jr nz,l55f6h         	;=
	ram:55b9 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:55bc 2d             dec l                	;-
	ram:55bd 26 14          ld h,014h            	;& .
	ram:55bf 22 0c 80       ld (0800ch),hl       	;" . .
	ram:55c2 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:55c5 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:55c9 cd 8e 00       call 0008eh          	;. . .
	ram:55cc 28 03          jr z,l55d1h          	;( .
	ram:55ce 7e             ld a,(hl)            	;~
	ram:55cf 18 02          jr l55d3h            	;. .
l55d1h:
	ram:55d1 3e 20          ld a,020h            	;>  
l55d3h:
	ram:55d3 cd cd 3d       call 03dcdh          	;. . =
	ram:55d6 3e 13          ld a,013h            	;> .
	ram:55d8 21 31 8b       ld hl,08b31h         	;! 1 .
	ram:55db 96             sub (hl)             	;.
	ram:55dc 47             ld b,a               	;G
	ram:55dd 2a 1b 8b       ld hl,(08b1bh)       	;* . .
l55e0h:
	ram:55e0 2b             dec hl               	;+
	ram:55e1 7e             ld a,(hl)            	;~
	ram:55e2 cd 57 3b       call 03b57h          	;. W ;
	ram:55e5 10 f9          djnz l55e0h          	;. .
	ram:55e7 3e ce          ld a,0ceh            	;> .
	ram:55e9 cd 57 3b       call 03b57h          	;. W ;
	ram:55ec fd cb 0e c6    set 0,(iy+00eh)      	;. . . .
	ram:55f0 3e 14          ld a,014h            	;> .
	ram:55f2 32 0d 80       ld (0800dh),a        	;2 . .
	ram:55f5 c9             ret                  	;.
l55f6h:
	ram:55f6 fe 14          cp 014h              	;. .
	ram:55f8 20 49          jr nz,l5643h         	;I
	ram:55fa 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:55fd ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:5601 b7             or a                 	;.
	ram:5602 ed 52          sbc hl,de            	;. R
	ram:5604 11 02 00       ld de,00002h         	;. . .
	ram:5607 cd 8e 00       call 0008eh          	;. . .
	ram:560a d8             ret c                	;.
	ram:560b f5             push af              	;.
	ram:560c cd 7f 56       call sub_567fh       	;. . V
	ram:560f 3e ce          ld a,0ceh            	;> .
	ram:5611 cd c5 3f       call 03fc5h          	;. . ?
	ram:5614 fd cb 0e c6    set 0,(iy+00eh)      	;. . . .
	ram:5618 cd 77 3c       call 03c77h          	;. w <
	ram:561b 23             inc hl               	;#
	ram:561c 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:561f d6 13          sub 013h             	;. .
	ram:5621 ed 44          neg                  	;. D
	ram:5623 47             ld b,a               	;G
l5624h:
	ram:5624 7e             ld a,(hl)            	;~
	ram:5625 23             inc hl               	;#
	ram:5626 cd c5 3f       call 03fc5h          	;. . ?
	ram:5629 10 f9          djnz l5624h          	;. .
	ram:562b 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:562e 7e             ld a,(hl)            	;~
	ram:562f cd c5 3f       call 03fc5h          	;. . ?
	ram:5632 f1             pop af               	;.
	ram:5633 20 08          jr nz,l563dh         	;.
	ram:5635 23             inc hl               	;#
	ram:5636 7e             ld a,(hl)            	;~
	ram:5637 cd cd 3d       call 03dcdh          	;. . =
	ram:563a cd 78 55       call sub_5578h       	;. x U
l563dh:
	ram:563d 3e 13          ld a,013h            	;> .
	ram:563f 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5642 c9             ret                  	;.
l5643h:
	ram:5643 fe 13          cp 013h              	;. .
	ram:5645 20 1e          jr nz,l5665h         	;.
	ram:5647 fd cb 0e 4e    bit 1,(iy+00eh)      	;. . . N
	ram:564b c0             ret nz               	;.
	ram:564c fd cb 0e 46    bit 0,(iy+00eh)      	;. . . F
	ram:5650 c8             ret z                	;.
	ram:5651 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:5654 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:5658 b7             or a                 	;.
	ram:5659 ed 52          sbc hl,de            	;. R
	ram:565b 11 02 00       ld de,00002h         	;. . .
	ram:565e cd 8e 00       call 0008eh          	;. . .
	ram:5661 dc 88 56       call c,sub_5688h     	;. . V
	ram:5664 c9             ret                  	;.
l5665h:
	ram:5665 fe 12          cp 012h              	;. .
	ram:5667 c0             ret nz               	;.
	ram:5668 fd cb 0e 46    bit 0,(iy+00eh)      	;. . . F
	ram:566c c8             ret z                	;.
	ram:566d cd 88 56       call sub_5688h       	;. . V
	ram:5670 21 0d 80       ld hl,0800dh         	;! . .
	ram:5673 34             inc (hl)             	;4
	ram:5674 3e ce          ld a,0ceh            	;> .
	ram:5676 cd cd 3d       call 03dcdh          	;. . =
	ram:5679 fd cb 0e ce    set 1,(iy+00eh)      	;. . . .
	ram:567d 35             dec (hl)             	;5
	ram:567e c9             ret                  	;.
sub_567fh:
	ram:567f f5             push af              	;.
	ram:5680 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:5683 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5686 f1             pop af               	;.
	ram:5687 c9             ret                  	;.
sub_5688h:
	ram:5688 21 0d 80       ld hl,0800dh         	;! . .
	ram:568b 7e             ld a,(hl)            	;~
	ram:568c f5             push af              	;.
	ram:568d 34             inc (hl)             	;4
	ram:568e 21 31 8b       ld hl,08b31h         	;! 1 .
	ram:5691 96             sub (hl)             	;.
	ram:5692 47             ld b,a               	;G
	ram:5693 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:5696 7e             ld a,(hl)            	;~
	ram:5697 cd cd 3d       call 03dcdh          	;. . =
	ram:569a 2a 1b 8b       ld hl,(08b1bh)       	;* . .
l569dh:
	ram:569d 2b             dec hl               	;+
	ram:569e 7e             ld a,(hl)            	;~
	ram:569f cd 57 3b       call 03b57h          	;. W ;
	ram:56a2 10 f9          djnz l569dh          	;. .
	ram:56a4 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:56a8 b7             or a                 	;.
	ram:56a9 ed 52          sbc hl,de            	;. R
	ram:56ab 11 02 00       ld de,00002h         	;. . .
	ram:56ae cd 8e 00       call 0008eh          	;. . .
	ram:56b1 30 0b          jr nc,l56beh         	;0 .
	ram:56b3 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:56b6 7e             ld a,(hl)            	;~
	ram:56b7 cd 57 3b       call 03b57h          	;. W ;
	ram:56ba fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
l56beh:
	ram:56be f1             pop af               	;.
	ram:56bf 3c             inc a                	;<
	ram:56c0 32 0d 80       ld (0800dh),a        	;2 . .
	ram:56c3 c9             ret                  	;.
sub_56c4h:
	ram:56c4 3e 01          ld a,001h            	;> .
	ram:56c6 32 0d 80       ld (0800dh),a        	;2 . .
	ram:56c9 4f             ld c,a               	;O
	ram:56ca cd 77 3c       call 03c77h          	;. w <
	ram:56cd 06 13          ld b,013h            	;. .
l56cfh:
	ram:56cf 7e             ld a,(hl)            	;~
	ram:56d0 23             inc hl               	;#
	ram:56d1 0c             inc c                	;.
	ram:56d2 fe 3d          cp 03dh              	;. =
	ram:56d4 28 10          jr z,l56e6h          	;( .
	ram:56d6 fe 3a          cp 03ah              	;. :
	ram:56d8 28 0c          jr z,l56e6h          	;( .
	ram:56da fe 3f          cp 03fh              	;. ?
	ram:56dc 28 08          jr z,l56e6h          	;( .
	ram:56de fe 7f          cp 07fh              	;. .
	ram:56e0 28 04          jr z,l56e6h          	;( .
	ram:56e2 10 eb          djnz l56cfh          	;. .
	ram:56e4 97             sub a                	;.
	ram:56e5 c9             ret                  	;.
l56e6h:
	ram:56e6 79             ld a,c               	;y
	ram:56e7 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:56ea 32 0d 80       ld (0800dh),a        	;2 . .
	ram:56ed c9             ret                  	;.
sub_56eeh:
	ram:56ee 0e 1e          ld c,01eh            	;. .
	ram:56f0 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:56f3 18 11          jr l5706h            	;. .
sub_56f5h:
	ram:56f5 0e 1f          ld c,01fh            	;. .
	ram:56f7 18 02          jr l56fbh            	;. .
sub_56f9h:
	ram:56f9 0e 20          ld c,020h            	;.  
l56fbh:
	ram:56fb 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:56fe 3d             dec a                	;=
	ram:56ff 18 05          jr l5706h            	;. .
sub_5701h:
	ram:5701 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5704 0e 20          ld c,020h            	;.  
l5706h:
	ram:5706 47             ld b,a               	;G
	ram:5707 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:570a f5             push af              	;.
	ram:570b 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:570e e5             push hl              	;.
	ram:570f 21 0c 80       ld hl,0800ch         	;! . .
	ram:5712 70             ld (hl),b            	;p
	ram:5713 97             sub a                	;.
	ram:5714 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5717 79             ld a,c               	;y
	ram:5718 cd c5 3f       call 03fc5h          	;. . ?
	ram:571b e1             pop hl               	;.
	ram:571c 22 0c 80       ld (0800ch),hl       	;" . .
	ram:571f f1             pop af               	;.
	ram:5720 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:5723 c9             ret                  	;.
l5724h:
	ram:5724 cd e1 54       call l54e1h          	;. . T
	ram:5727 ed 4b 3a 83    ld bc,(0833ah)       	;. K : .
l572bh:
	ram:572b 79             ld a,c               	;y
	ram:572c b0             or b                 	;.
	ram:572d 28 10          jr z,sub_573fh       	;( .
	ram:572f cd 41 45       call sub_4541h       	;. A E
	ram:5732 28 0b          jr z,sub_573fh       	;( .
	ram:5734 cd c5 3f       call 03fc5h          	;. . ?
	ram:5737 c5             push bc              	;.
	ram:5738 cd b3 55       call sub_55b3h       	;. . U
	ram:573b c1             pop bc               	;.
	ram:573c 0b             dec bc               	;.
	ram:573d 18 ec          jr l572bh            	;. .
sub_573fh:
	ram:573f 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:5742 b7             or a                 	;.
	ram:5743 c8             ret z                	;.
	ram:5744 f5             push af              	;.
	ram:5745 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:5749 2a 1d 8b       ld hl,(08b1dh)       	;* . .
l574ch:
	ram:574c 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:574f fe 14          cp 014h              	;. .
	ram:5751 28 0c          jr z,l575fh          	;( .
	ram:5753 cd 8e 00       call 0008eh          	;. . .
	ram:5756 28 2c          jr z,l5784h          	;( ,
	ram:5758 7e             ld a,(hl)            	;~
	ram:5759 23             inc hl               	;#
	ram:575a cd c5 3f       call 03fc5h          	;. . ?
	ram:575d 18 ed          jr l574ch            	;. .
l575fh:
	ram:575f 4e             ld c,(hl)            	;N
	ram:5760 eb             ex de,hl             	;.
	ram:5761 b7             or a                 	;.
	ram:5762 ed 52          sbc hl,de            	;. R
	ram:5764 11 02 00       ld de,00002h         	;. . .
	ram:5767 cd 8e 00       call 0008eh          	;. . .
	ram:576a 38 08          jr c,l5774h          	;8 .
	ram:576c fd cb 0e ce    set 1,(iy+00eh)      	;. . . .
	ram:5770 3e ce          ld a,0ceh            	;> .
	ram:5772 18 08          jr l577ch            	;. .
l5774h:
	ram:5774 7d             ld a,l               	;}
	ram:5775 b4             or h                 	;.
	ram:5776 28 0c          jr z,l5784h          	;( .
	ram:5778 79             ld a,c               	;y
	ram:5779 cd 78 55       call sub_5578h       	;. x U
l577ch:
	ram:577c cd cd 3d       call 03dcdh          	;. . =
	ram:577f f1             pop af               	;.
	ram:5780 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5783 c9             ret                  	;.
l5784h:
	ram:5784 cd c1 3d       call 03dc1h          	;. . =
	ram:5787 cd 78 55       call sub_5578h       	;. x U
	ram:578a f1             pop af               	;.
	ram:578b 32 0d 80       ld (0800dh),a        	;2 . .
	ram:578e c9             ret                  	;.
sub_578fh:
	ram:578f cd d2 01       call 001d2h          	;. . .
	ram:5792 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:5796 c8             ret z                	;.
	ram:5797 cd c5 3c       call 03cc5h          	;. . <
	ram:579a cd 7e 49       call sub_497eh       	;. ~ I
	ram:579d cd 40 0a       call 00a40h          	;. @ .
	ram:57a0 c9             ret                  	;.
sub_57a1h:
	ram:57a1 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:57a5 cd 8f 57       call sub_578fh       	;. . W
	ram:57a8 fd cb 01 66    bit 4,(iy+001h)      	;. . . f
	ram:57ac 20 0d          jr nz,sub_57bbh      	;.
	ram:57ae cd 33 26       call 02633h          	;. 3 &
	ram:57b1 cd f3 35       call 035f3h          	;. . 5
	ram:57b4 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:57b7 7e             ld a,(hl)            	;~
	ram:57b8 cd 23 36       call 03623h          	;. # 6
sub_57bbh:
	ram:57bb cd 1f 28       call 0281fh          	;. . (
sub_57beh:
	ram:57be cd 33 26       call 02633h          	;. 3 &
	ram:57c1 d7             rst 10h              	;.
	ram:57c2 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:57c5 c9             ret                  	;.
sub_57c6h:
	ram:57c6 cd 7f 56       call sub_567fh       	;. . V
	ram:57c9 cd 87 3b       call 03b87h          	;. . ;
	ram:57cc dd 2a 21 8b    ld ix,(08b21h)       	;. * ! .
	ram:57d0 c3 f9 53       jp l53f9h            	;. . S
sub_57d3h:
	ram:57d3 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:57d6 2b             dec hl               	;+
	ram:57d7 2b             dec hl               	;+
	ram:57d8 2b             dec hl               	;+
	ram:57d9 46             ld b,(hl)            	;F
	ram:57da 04             inc b                	;.
	ram:57db 11 83 80       ld de,08083h         	;. . .
l57deh:
	ram:57de 7e             ld a,(hl)            	;~
	ram:57df 2b             dec hl               	;+
	ram:57e0 12             ld (de),a            	;.
	ram:57e1 13             inc de               	;.
	ram:57e2 10 fa          djnz l57deh          	;. .
	ram:57e4 c9             ret                  	;.
l57e5h:
	ram:57e5 fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
	ram:57e9 cd f4 45       call sub_45f4h       	;. . E
	ram:57ec cd 7f 56       call sub_567fh       	;. . V
	ram:57ef cd 3f 57       call sub_573fh       	;. ? W
	ram:57f2 c9             ret                  	;.
l57f3h:
	ram:57f3 cd 41 45       call sub_4541h       	;. A E
	ram:57f6 c8             ret z                	;.
	ram:57f7 cd c5 3f       call 03fc5h          	;. . ?
	ram:57fa cd b3 55       call sub_55b3h       	;. . U
	ram:57fd 18 f4          jr l57f3h            	;. .
	ram:57ff c3 a5 3b       jp 03ba5h            	;. . ;
	ram:5802 21 be 57       ld hl,sub_57beh      	;! . W
	ram:5805 cd b5 0a       call 00ab5h          	;. . .
	ram:5808 cd a1 57       call sub_57a1h       	;. . W
	ram:580b cd db 0a       call 00adbh          	;. . .
	ram:580e c9             ret                  	;.
	ram:580f 38 25          jr c,l5836h          	;8 %
	ram:5811 cd bb 3d       call 03dbbh          	;. . =
	ram:5814 f2 ee 56       jp p,sub_56eeh       	;. . V
	ram:5817 3e 07          ld a,007h            	;> .
	ram:5819 90             sub b                	;.
	ram:581a 47             ld b,a               	;G
	ram:581b 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:581e 4f             ld c,a               	;O
	ram:581f 11 03 00       ld de,00003h         	;. . .
	ram:5822 2a 21 8b       ld hl,(08b21h)       	;* ! .
l5825h:
	ram:5825 78             ld a,b               	;x
	ram:5826 b9             cp c                 	;.
	ram:5827 38 07          jr c,l5830h          	;8 .
	ram:5829 19             add hl,de            	;.
	ram:582a 7e             ld a,(hl)            	;~
	ram:582b 3c             inc a                	;<
	ram:582c c8             ret z                	;.
	ram:582d 0c             inc c                	;.
	ram:582e 18 f5          jr l5825h            	;. .
l5830h:
	ram:5830 0e 1f          ld c,01fh            	;. .
	ram:5832 78             ld a,b               	;x
	ram:5833 c3 06 57       jp l5706h            	;. . W
l5836h:
	ram:5836 3e 07          ld a,007h            	;> .
	ram:5838 90             sub b                	;.
	ram:5839 47             ld b,a               	;G
	ram:583a dd 2a 21 8b    ld ix,(08b21h)       	;. * ! .
	ram:583e 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5841 4f             ld c,a               	;O
	ram:5842 11 03 00       ld de,00003h         	;. . .
l5845h:
	ram:5845 0c             inc c                	;.
	ram:5846 dd 19          add ix,de            	;. .
	ram:5848 dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:584b 3c             inc a                	;<
	ram:584c 28 19          jr z,l5867h          	;( .
	ram:584e 79             ld a,c               	;y
	ram:584f b8             cp b                 	;.
	ram:5850 20 f3          jr nz,l5845h         	;.
	ram:5852 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:5855 e5             push hl              	;.
	ram:5856 3d             dec a                	;=
	ram:5857 32 0c 80       ld (0800ch),a        	;2 . .
	ram:585a cd 01 57       call sub_5701h       	;. . W
	ram:585d 21 0c 80       ld hl,0800ch         	;! . .
	ram:5860 34             inc (hl)             	;4
	ram:5861 cd bb 53       call sub_53bbh       	;. . S
	ram:5864 e1             pop hl               	;.
	ram:5865 18 37          jr l589eh            	;. 7
l5867h:
	ram:5867 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:586a 3d             dec a                	;=
	ram:586b 47             ld b,a               	;G
	ram:586c dd 2a 21 8b    ld ix,(08b21h)       	;. * ! .
	ram:5870 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5873 4f             ld c,a               	;O
	ram:5874 11 fd ff       ld de,0fffdh         	;. . .
l5877h:
	ram:5877 0d             dec c                	;.
	ram:5878 dd 19          add ix,de            	;. .
	ram:587a dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:587d 3c             inc a                	;<
	ram:587e c8             ret z                	;.
	ram:587f 79             ld a,c               	;y
	ram:5880 b8             cp b                 	;.
	ram:5881 20 f4          jr nz,l5877h         	;.
	ram:5883 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:5886 e5             push hl              	;.
	ram:5887 3c             inc a                	;<
	ram:5888 32 0c 80       ld (0800ch),a        	;2 . .
	ram:588b 3a 54 83       ld a,(08354h)        	;: T .
	ram:588e f5             push af              	;.
	ram:588f cd 01 57       call sub_5701h       	;. . W
	ram:5892 cd 93 3b       call 03b93h          	;. . ;
	ram:5895 cd bb 53       call sub_53bbh       	;. . S
	ram:5898 f1             pop af               	;.
	ram:5899 32 54 83       ld (08354h),a        	;2 T .
	ram:589c e1             pop hl               	;.
	ram:589d 2c             inc l                	;,
l589eh:
	ram:589e 22 0c 80       ld (0800ch),hl       	;" . .
	ram:58a1 7c             ld a,h               	;|
	ram:58a2 f5             push af              	;.
	ram:58a3 cd c4 56       call sub_56c4h       	;. . V
	ram:58a6 f1             pop af               	;.
	ram:58a7 32 0d 80       ld (0800dh),a        	;2 . .
	ram:58aa c9             ret                  	;.
l58abh:
	ram:58ab fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:58af c3 b1 3b       jp 03bb1h            	;. . ;
l58b2h:
	ram:58b2 cd 95 3c       call 03c95h          	;. . <
	ram:58b5 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:58b9 20 12          jr nz,l58cdh         	;.
	ram:58bb cd 33 26       call 02633h          	;. 3 &
	ram:58be cd ea 45       call sub_45eah       	;. . E
	ram:58c1 21 df 58       ld hl,l58dfh         	;! . X
	ram:58c4 cd b5 0a       call 00ab5h          	;. . .
	ram:58c7 cd 87 35       call 03587h          	;. . 5
	ram:58ca cd db 0a       call 00adbh          	;. . .
l58cdh:
	ram:58cd cd f4 45       call sub_45f4h       	;. . E
	ram:58d0 cd 74 55       call sub_5574h       	;. t U
	ram:58d3 cd 7f 56       call sub_567fh       	;. . V
	ram:58d6 cd 23 00       call 00023h          	;. # .
	ram:58d9 c2 24 57       jp nz,l5724h         	;. $ W
	ram:58dc c3 3f 57       jp sub_573fh         	;. ? W
l58dfh:
	ram:58df cd 7e 49       call sub_497eh       	;. ~ I
	ram:58e2 cd be 57       call sub_57beh       	;. . W
	ram:58e5 c3 45 0a       jp 00a45h            	;. E .
sub_58e8h:
	ram:58e8 af             xor a                	;.
	ram:58e9 32 d4 8b       ld (08bd4h),a        	;2 . .
	ram:58ec cd af 26       call 026afh          	;. . &
	ram:58ef 3a 82 80       ld a,(08082h)        	;: . .
	ram:58f2 e6 01          and 001h             	;. .
	ram:58f4 28 03          jr z,l58f9h          	;( .
	ram:58f6 cd 7d 26       call 0267dh          	;. } &
l58f9h:
	ram:58f9 cd df 3a       call 03adfh          	;. . :
	ram:58fc e5             push hl              	;.
	ram:58fd 21 01 00       ld hl,00001h         	;! . .
	ram:5900 cd e5 3a       call 03ae5h          	;. . :
	ram:5903 cd d9 3a       call 03ad9h          	;. . :
	ram:5906 ca 7d 0a       jp z,00a7dh          	;. } .
	ram:5909 e1             pop hl               	;.
	ram:590a e5             push hl              	;.
l590bh:
	ram:590b 22 b9 80       ld (080b9h),hl       	;" . .
	ram:590e cd 71 39       call 03971h          	;. q 9
	ram:5911 cd d9 3a       call 03ad9h          	;. . :
	ram:5914 20 06          jr nz,l591ch         	;.
	ram:5916 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5919 2b             dec hl               	;+
	ram:591a 18 ef          jr l590bh            	;. .
l591ch:
	ram:591c 3a b9 80       ld a,(080b9h)        	;: . .
	ram:591f 3d             dec a                	;=
	ram:5920 20 35          jr nz,l5957h         	;5
	ram:5922 cd 85 3a       call 03a85h          	;. . :
	ram:5925 e1             pop hl               	;.
	ram:5926 cd 2b 59       call sub_592bh       	;. + Y
	ram:5929 18 63          jr l598eh            	;. c
sub_592bh:
	ram:592b 2d             dec l                	;-
	ram:592c 4d             ld c,l               	;M
	ram:592d 41             ld b,c               	;A
	ram:592e c5             push bc              	;.
	ram:592f cd 7f 3a       call 03a7fh          	;. . :
	ram:5932 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5936 cd 3b 2e       call 02e3bh          	;. ; .
	ram:5939 c1             pop bc               	;.
sub_593ah:
	ram:593a c5             push bc              	;.
	ram:593b cd 98 21       call 02198h          	;. . !
	ram:593e cd 78 26       call 02678h          	;. x &
	ram:5941 c4 60 1f       call nz,01f60h       	;. ` .
	ram:5944 21 01 00       ld hl,00001h         	;! . .
	ram:5947 22 c1 80       ld (080c1h),hl       	;" . .
	ram:594a c1             pop bc               	;.
l594bh:
	ram:594b c5             push bc              	;.
	ram:594c cd 7d 39       call 0397dh          	;. } 9
	ram:594f c1             pop bc               	;.
	ram:5950 21 c1 80       ld hl,080c1h         	;! . .
	ram:5953 34             inc (hl)             	;4
	ram:5954 10 f5          djnz l594bh          	;. .
	ram:5956 c9             ret                  	;.
l5957h:
	ram:5957 fe 01          cp 001h              	;. .
	ram:5959 20 40          jr nz,l599bh         	;@
	ram:595b e1             pop hl               	;.
	ram:595c cd 2b 59       call sub_592bh       	;. + Y
	ram:595f c5             push bc              	;.
	ram:5960 21 02 00       ld hl,00002h         	;! . .
	ram:5963 cd e5 3a       call 03ae5h          	;. . :
	ram:5966 cd b1 38       call 038b1h          	;. . 8
	ram:5969 cd 78 26       call 02678h          	;. x &
	ram:596c 20 0b          jr nz,l5979h         	;.
	ram:596e 21 01 00       ld hl,00001h         	;! . .
	ram:5971 cd 3b 39       call 0393bh          	;. ; 9
	ram:5974 cd 23 10       call 01023h          	;. # .
	ram:5977 18 0c          jr l5985h            	;. .
l5979h:
	ram:5979 cd 91 2e       call 02e91h          	;. . .
	ram:597c 21 01 00       ld hl,00001h         	;! . .
	ram:597f cd e5 3a       call 03ae5h          	;. . :
	ram:5982 cd 39 3b       call 03b39h          	;. 9 ;
l5985h:
	ram:5985 e1             pop hl               	;.
	ram:5986 26 00          ld h,000h            	;& .
	ram:5988 cd 19 3a       call 03a19h          	;. . :
	ram:598b cd 85 3a       call 03a85h          	;. . :
l598eh:
	ram:598e cd f4 2d       call 02df4h          	;. . -
	ram:5991 cd 78 26       call 02678h          	;. x &
	ram:5994 c0             ret nz               	;.
	ram:5995 3e c9          ld a,0c9h            	;> .
	ram:5997 cd 9d 3a       call 03a9dh          	;. . :
	ram:599a c9             ret                  	;.
l599bh:
	ram:599b 6f             ld l,a               	;o
	ram:599c e5             push hl              	;.
	ram:599d 65             ld h,l               	;e
	ram:599e cd 79 3a       call 03a79h          	;. y :
	ram:59a1 e1             pop hl               	;.
	ram:59a2 e5             push hl              	;.
	ram:59a3 7d             ld a,l               	;}
l59a4h:
	ram:59a4 32 bb 80       ld (080bbh),a        	;2 . .
	ram:59a7 26 00          ld h,000h            	;& .
	ram:59a9 6f             ld l,a               	;o
	ram:59aa 2c             inc l                	;,
	ram:59ab cd e5 3a       call 03ae5h          	;. . :
	ram:59ae cd 3f 1f       call 01f3fh          	;. ? .
	ram:59b1 28 4e          jr z,l5a01h          	;( N
	ram:59b3 cd 9b 0f       call 00f9bh          	;. . .
	ram:59b6 21 01 00       ld hl,00001h         	;! . .
	ram:59b9 cd 3b 39       call 0393bh          	;. ; 9
	ram:59bc cd 23 10       call 01023h          	;. # .
l59bfh:
	ram:59bf 3a bb 80       ld a,(080bbh)        	;: . .
	ram:59c2 06 01          ld b,001h            	;. .
	ram:59c4 4f             ld c,a               	;O
	ram:59c5 cd 4f 3a       call 03a4fh          	;. O :
	ram:59c8 cd 93 21       call 02193h          	;. . !
	ram:59cb 3e 01          ld a,001h            	;> .
l59cdh:
	ram:59cd e1             pop hl               	;.
	ram:59ce e5             push hl              	;.
	ram:59cf bd             cp l                 	;.
	ram:59d0 20 0a          jr nz,l59dch         	;.
	ram:59d2 3a bb 80       ld a,(080bbh)        	;: . .
	ram:59d5 fe 01          cp 001h              	;. .
	ram:59d7 28 39          jr z,l5a12h          	;( 9
	ram:59d9 3d             dec a                	;=
	ram:59da 18 c8          jr l59a4h            	;. .
l59dch:
	ram:59dc 3c             inc a                	;<
	ram:59dd 32 ba 80       ld (080bah),a        	;2 . .
	ram:59e0 47             ld b,a               	;G
	ram:59e1 3a bb 80       ld a,(080bbh)        	;: . .
	ram:59e4 4f             ld c,a               	;O
	ram:59e5 c5             push bc              	;.
	ram:59e6 3c             inc a                	;<
	ram:59e7 b8             cp b                 	;.
	ram:59e8 28 05          jr z,l59efh          	;( .
	ram:59ea cd 43 3a       call 03a43h          	;. C :
	ram:59ed 18 09          jr l59f8h            	;. .
l59efh:
	ram:59ef cd 3e 21       call 0213eh          	;. > !
	ram:59f2 cd 78 26       call 02678h          	;. x &
	ram:59f5 c4 66 1f       call nz,01f66h       	;. f .
l59f8h:
	ram:59f8 c1             pop bc               	;.
	ram:59f9 cd 4f 3a       call 03a4fh          	;. O :
	ram:59fc 3a ba 80       ld a,(080bah)        	;: . .
	ram:59ff 18 cc          jr l59cdh            	;. .
l5a01h:
	ram:5a01 cd 98 0f       call 00f98h          	;. . .
	ram:5a04 cd 91 2e       call 02e91h          	;. . .
	ram:5a07 21 01 00       ld hl,00001h         	;! . .
	ram:5a0a cd e5 3a       call 03ae5h          	;. . :
	ram:5a0d cd 39 3b       call 03b39h          	;. 9 ;
	ram:5a10 18 ad          jr l59bfh            	;. .
l5a12h:
	ram:5a12 cd 85 3a       call 03a85h          	;. . :
	ram:5a15 cd f4 2d       call 02df4h          	;. . -
	ram:5a18 3e d1          ld a,0d1h            	;> .
	ram:5a1a cd 9d 3a       call 03a9dh          	;. . :
	ram:5a1d cf             rst 8                	;.
	ram:5a1e e1             pop hl               	;.
	ram:5a1f d1             pop de               	;.
	ram:5a20 7b             ld a,e               	;{
	ram:5a21 3d             dec a                	;=
	ram:5a22 95             sub l                	;.
	ram:5a23 ca 95 20       jp z,02095h          	;. .  
	ram:5a26 67             ld h,a               	;g
	ram:5a27 cd af 26       call 026afh          	;. . &
	ram:5a2a 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:5a2d e6 01          and 001h             	;. .
	ram:5a2f c4 7d 26       call nz,0267dh       	;. } &
	ram:5a32 e5             push hl              	;.
	ram:5a33 6b             ld l,e               	;k
	ram:5a34 2d             dec l                	;-
	ram:5a35 26 00          ld h,000h            	;& .
	ram:5a37 cd 7f 3a       call 03a7fh          	;. . :
	ram:5a3a ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5a3e cd 3b 2e       call 02e3bh          	;. ; .
	ram:5a41 cd 45 2e       call 02e45h          	;. E .
	ram:5a44 c1             pop bc               	;.
	ram:5a45 cd 3a 59       call sub_593ah       	;. : Y
	ram:5a48 c5             push bc              	;.
	ram:5a49 21 01 00       ld hl,00001h         	;! . .
	ram:5a4c 22 bd 80       ld (080bdh),hl       	;" . .
l5a4fh:
	ram:5a4f cd 77 39       call 03977h          	;. w 9
	ram:5a52 cd 7d 39       call 0397dh          	;. } 9
	ram:5a55 c1             pop bc               	;.
	ram:5a56 0d             dec c                	;.
	ram:5a57 28 0b          jr z,l5a64h          	;( .
	ram:5a59 c5             push bc              	;.
	ram:5a5a 21 bd 80       ld hl,080bdh         	;! . .
	ram:5a5d 34             inc (hl)             	;4
	ram:5a5e 21 c1 80       ld hl,080c1h         	;! . .
	ram:5a61 34             inc (hl)             	;4
	ram:5a62 18 eb          jr l5a4fh            	;. .
l5a64h:
	ram:5a64 cd f4 2d       call 02df4h          	;. . -
	ram:5a67 cd 60 26       call 02660h          	;. ` &
	ram:5a6a c3 f4 2d       jp 02df4h            	;. . -
	ram:5a6d cd 93 21       call 02193h          	;. . !
	ram:5a70 cd 98 21       call 02198h          	;. . !
	ram:5a73 cd 78 26       call 02678h          	;. x &
	ram:5a76 c4 66 1f       call nz,01f66h       	;. f .
	ram:5a79 df             rst 18h              	;.
	ram:5a7a 3e 10          ld a,010h            	;> .
	ram:5a7c 32 85 80       ld (08085h),a        	;2 . .
	ram:5a7f df             rst 18h              	;.
l5a80h:
	ram:5a80 cd 78 26       call 02678h          	;. x &
	ram:5a83 20 26          jr nz,l5aabh         	;&
	ram:5a85 cd 35 39       call 03935h          	;. 5 9
	ram:5a88 ef             rst 28h              	;.
	ram:5a89 cd 3b 2f       call 02f3bh          	;. ; /
	ram:5a8c f7             rst 30h              	;.
	ram:5a8d 11 1e 00       ld de,0001eh         	;. . .
	ram:5a90 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5a93 2b             dec hl               	;+
	ram:5a94 7c             ld a,h               	;|
	ram:5a95 b5             or l                 	;.
	ram:5a96 ca 1b 2e       jp z,02e1bh          	;. . .
	ram:5a99 22 b9 80       ld (080b9h),hl       	;" . .
	ram:5a9c cd 83 2f       call 02f83h          	;. . /
	ram:5a9f cd 24 2f       call 02f24h          	;. $ /
	ram:5aa2 cd 4d 2f       call 02f4dh          	;. M /
	ram:5aa5 ef             rst 28h              	;.
	ram:5aa6 cd 6b 2f       call 02f6bh          	;. k /
	ram:5aa9 18 d5          jr l5a80h            	;. .
l5aabh:
	ram:5aab df             rst 18h              	;.
	ram:5aac cd 71 39       call 03971h          	;. q 9
	ram:5aaf 3e 70          ld a,070h            	;> p
	ram:5ab1 cd 67 3a       call 03a67h          	;. g :
	ram:5ab4 cd 91 2e       call 02e91h          	;. . .
	ram:5ab7 cd d1 2e       call 02ed1h          	;. . .
	ram:5aba cd 27 3b       call 03b27h          	;. ' ;
	ram:5abd 11 3c 00       ld de,0003ch         	;. < .
	ram:5ac0 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5ac3 2b             dec hl               	;+
	ram:5ac4 7c             ld a,h               	;|
	ram:5ac5 b5             or l                 	;.
	ram:5ac6 ca 1b 2e       jp z,02e1bh          	;. . .
	ram:5ac9 22 b9 80       ld (080b9h),hl       	;" . .
	ram:5acc cd ab 2f       call 02fabh          	;. . /
	ram:5acf cd d1 2e       call 02ed1h          	;. . .
	ram:5ad2 cd 91 2e       call 02e91h          	;. . .
	ram:5ad5 cd f2 2e       call 02ef2h          	;. . .
	ram:5ad8 cd 33 3b       call 03b33h          	;. 3 ;
	ram:5adb cd 80 2f       call 02f80h          	;. . /
	ram:5ade 18 a0          jr l5a80h            	;. .
l5ae0h:
	ram:5ae0 cd 78 7d       call sub_7d78h       	;. x }
	ram:5ae3 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:5ae6 fe 03          cp 003h              	;. .
	ram:5ae8 ca d5 66       jp z,l66d5h          	;. . f
l5aebh:
	ram:5aeb 21 04 5b       ld hl,l5b04h         	;! . [
	ram:5aee cd 4a 06       call 0064ah          	;. J .
	ram:5af1 fd cb 03 be    res 7,(iy+003h)      	;. . . .
	ram:5af5 cd 39 3e       call 03e39h          	;. 9 >
	ram:5af8 21 05 32       ld hl,03205h         	;! . 2
	ram:5afb cd 76 53       call sub_5376h       	;. v S
	ram:5afe 21 ff 31       ld hl,031ffh         	;! . 1
	ram:5b01 c3 ee 66       jp l66eeh            	;. . f
l5b04h:
	ram:5b04 27             daa                  	;'
	ram:5b05 5b             ld e,e               	;[
	ram:5b06 d9             exx                  	;.
	ram:5b07 34             inc (hl)             	;4
	ram:5b08 d7             rst 10h              	;.
	ram:5b09 33             inc sp               	;3
	ram:5b0a b5             or l                 	;.
	ram:5b0b 34             inc (hl)             	;4
	ram:5b0c b2             or d                 	;.
	ram:5b0d 58             ld e,b               	;X
	ram:5b0e 26 5b          ld h,05bh            	;& [
	ram:5b10 0a             ld a,(bc)            	;.
sub_5b11h:
	ram:5b11 21 ea 31       ld hl,031eah         	;! . 1
sub_5b14h:
	ram:5b14 3e 01          ld a,001h            	;> .
	ram:5b16 32 0c 80       ld (0800ch),a        	;2 . .
	ram:5b19 97             sub a                	;.
	ram:5b1a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5b1d cd 45 3e       call 03e45h          	;. E >
	ram:5b20 cd a6 74       call sub_74a6h       	;. . t
	ram:5b23 cd 87 3b       call 03b87h          	;. . ;
	ram:5b26 c9             ret                  	;.
	ram:5b27 fe c1          cp 0c1h              	;. .
	ram:5b29 ca e0 5a       jp z,l5ae0h          	;. . Z
	ram:5b2c fe 06          cp 006h              	;. .
	ram:5b2e 28 04          jr z,l5b34h          	;( .
	ram:5b30 fe 04          cp 004h              	;. .
	ram:5b32 20 5b          jr nz,l5b8fh         	;[
l5b34h:
	ram:5b34 cd 20 46       call sub_4620h       	;.   F
	ram:5b37 c8             ret z                	;.
	ram:5b38 cd 98 5b       call sub_5b98h       	;. . [
	ram:5b3b 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:5b3e fe 03          cp 003h              	;. .
	ram:5b40 ca 18 67       jp z,l6718h          	;. . g
	ram:5b43 1c             inc e                	;.
	ram:5b44 d5             push de              	;.
	ram:5b45 cd 1f 28       call 0281fh          	;. . (
	ram:5b48 e1             pop hl               	;.
	ram:5b49 cd d4 29       call 029d4h          	;. . )
	ram:5b4c 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5b4f 22 e9 8b       ld (08be9h),hl       	;" . .
	ram:5b52 cd 3b 2e       call 02e3bh          	;. ; .
	ram:5b55 cd 01 67       call sub_6701h       	;. . g
l5b58h:
	ram:5b58 cd da 68       call sub_68dah       	;. . h
	ram:5b5b cd 39 3e       call 03e39h          	;. 9 >
	ram:5b5e 3e 4e          ld a,04eh            	;> N
	ram:5b60 cd 11 3c       call 03c11h          	;. . <
l5b63h:
	ram:5b63 cd a3 5d       call sub_5da3h       	;. . ]
	ram:5b66 21 c4 5b       ld hl,l5bc4h         	;! . [
	ram:5b69 22 8d 81       ld (0818dh),hl       	;" . .
	ram:5b6c 21 09 6f       ld hl,l6f09h         	;! . o
	ram:5b6f 22 97 81       ld (08197h),hl       	;" . .
	ram:5b72 3e 01          ld a,001h            	;> .
	ram:5b74 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5b77 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:5b7a 32 0c 80       ld (0800ch),a        	;2 . .
l5b7dh:
	ram:5b7d cd db 5d       call sub_5ddbh       	;. . ]
l5b80h:
	ram:5b80 cd 2d 54       call sub_542dh       	;. - T
	ram:5b83 cd 01 5d       call sub_5d01h       	;. . ]
	ram:5b86 da 25 54       jp c,l5425h          	;. % T
	ram:5b89 cd 96 5d       call sub_5d96h       	;. . ]
	ram:5b8c c3 1a 54       jp l541ah            	;. . T
l5b8fh:
	ram:5b8f fe 03          cp 003h              	;. .
	ram:5b91 c8             ret z                	;.
	ram:5b92 fe 16          cp 016h              	;. .
	ram:5b94 c2 c0 54       jp nz,l54c0h         	;. . T
	ram:5b97 c9             ret                  	;.
sub_5b98h:
	ram:5b98 cd da 7d       call sub_7ddah       	;. . }
	ram:5b9b cd 22 26       call 02622h          	;. " &
	ram:5b9e cd db 23       call 023dbh          	;. . #
	ram:5ba1 20 1e          jr nz,l5bc1h         	;.
	ram:5ba3 cd 5b 21       call 0215bh          	;. [ !
	ram:5ba6 cd 8e 1f       call 01f8eh          	;. . .
	ram:5ba9 38 16          jr c,l5bc1h          	;8 .
	ram:5bab ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:5baf 21 01 fc       ld hl,0fc01h         	;! . .
	ram:5bb2 b7             or a                 	;.
	ram:5bb3 ed 52          sbc hl,de            	;. R
	ram:5bb5 38 0a          jr c,l5bc1h          	;8 .
	ram:5bb7 cd 95 39       call 03995h          	;. . 9
	ram:5bba 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:5bbd 3e 1e          ld a,01eh            	;> .
	ram:5bbf bb             cp e                 	;.
	ram:5bc0 d0             ret nc               	;.
l5bc1h:
	ram:5bc1 c3 14 0a       jp 00a14h            	;. . .
l5bc4h:
	ram:5bc4 f5             push af              	;.
	ram:5bc5 c5             push bc              	;.
	ram:5bc6 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:5bca cc 11 5c       call z,sub_5c11h     	;. . \
	ram:5bcd c1             pop bc               	;.
	ram:5bce f1             pop af               	;.
	ram:5bcf fe 06          cp 006h              	;. .
	ram:5bd1 28 04          jr z,l5bd7h          	;( .
	ram:5bd3 fe 04          cp 004h              	;. .
	ram:5bd5 20 42          jr nz,l5c19h         	;B
l5bd7h:
	ram:5bd7 cd 20 46       call sub_4620h       	;.   F
	ram:5bda c8             ret z                	;.
	ram:5bdb cd 09 5d       call sub_5d09h       	;. . ]
	ram:5bde 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:5be1 be             cp (hl)              	;.
	ram:5be2 28 02          jr z,l5be6h          	;( .
	ram:5be4 30 2b          jr nc,sub_5c11h      	;0 +
l5be6h:
	ram:5be6 3c             inc a                	;<
	ram:5be7 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5bea cd 3d 55       call sub_553dh       	;. = U
	ram:5bed 38 1f          jr c,l5c0eh          	;8 .
	ram:5bef cd 08 69       call sub_6908h       	;. . i
	ram:5bf2 20 22          jr nz,l5c16h         	;"
	ram:5bf4 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5bf7 21 22 8b       ld hl,08b22h         	;! " .
	ram:5bfa be             cp (hl)              	;.
	ram:5bfb d4 f5 56       call nc,sub_56f5h    	;. . V
	ram:5bfe cd 3a 5e       call sub_5e3ah       	;. : ^
	ram:5c01 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:5c04 21 22 8b       ld hl,08b22h         	;! " .
	ram:5c07 be             cp (hl)              	;.
	ram:5c08 d4 55 5d       call nc,sub_5d55h    	;. U ]
l5c0bh:
	ram:5c0b c3 80 5b       jp l5b80h            	;. . [
l5c0eh:
	ram:5c0e 32 0c 80       ld (0800ch),a        	;2 . .
sub_5c11h:
	ram:5c11 cd 08 69       call sub_6908h       	;. . i
	ram:5c14 28 f5          jr z,l5c0bh          	;( .
l5c16h:
	ram:5c16 c3 7d 5b       jp l5b7dh            	;. } [
l5c19h:
	ram:5c19 fe 03          cp 003h              	;. .
	ram:5c1b 20 37          jr nz,l5c54h         	;7
	ram:5c1d cd 20 46       call sub_4620h       	;.   F
	ram:5c20 20 0a          jr nz,l5c2ch         	;.
	ram:5c22 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5c25 d8             ret c                	;.
	ram:5c26 c8             ret z                	;.
	ram:5c27 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:5c2a 18 03          jr l5c2fh            	;. .
l5c2ch:
	ram:5c2c cd 09 5d       call sub_5d09h       	;. . ]
l5c2fh:
	ram:5c2f 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5c32 fe 01          cp 001h              	;. .
	ram:5c34 28 db          jr z,sub_5c11h       	;( .
	ram:5c36 3d             dec a                	;=
	ram:5c37 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5c3a cd 51 55       call sub_5551h       	;. Q U
	ram:5c3d 30 cf          jr nc,l5c0eh         	;0 .
	ram:5c3f cd 08 69       call sub_6908h       	;. . i
	ram:5c42 20 d2          jr nz,l5c16h         	;.
	ram:5c44 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5c47 fe 02          cp 002h              	;. .
	ram:5c49 d4 ee 56       call nc,sub_56eeh    	;. . V
	ram:5c4c cd 3a 5e       call sub_5e3ah       	;. : ^
	ram:5c4f cd 55 5d       call sub_5d55h       	;. U ]
	ram:5c52 18 b7          jr l5c0bh            	;. .
l5c54h:
	ram:5c54 fe 16          cp 016h              	;. .
	ram:5c56 20 14          jr nz,l5c6ch         	;.
	ram:5c58 cd 20 46       call sub_4620h       	;.   F
	ram:5c5b c8             ret z                	;.
	ram:5c5c cd 09 5d       call sub_5d09h       	;. . ]
	ram:5c5f cd a2 62       call sub_62a2h       	;. . b
l5c62h:
	ram:5c62 cd a1 6b       call sub_6ba1h       	;. . k
	ram:5c65 30 aa          jr nc,sub_5c11h      	;0 .
	ram:5c67 cd 21 63       call sub_6321h       	;. ! c
	ram:5c6a 18 f6          jr l5c62h            	;. .
l5c6ch:
	ram:5c6c fe c1          cp 0c1h              	;. .
	ram:5c6e ca e0 5a       jp z,l5ae0h          	;. . Z
	ram:5c71 fe 8c          cp 08ch              	;. .
	ram:5c73 ca 61 5e       jp z,l5e61h          	;. a ^
	ram:5c76 fe a6          cp 0a6h              	;. .
	ram:5c78 c2 c0 54       jp nz,l54c0h         	;. . T
	ram:5c7b cd 20 46       call sub_4620h       	;.   F
	ram:5c7e c8             ret z                	;.
	ram:5c7f cd 09 5d       call sub_5d09h       	;. . ]
	ram:5c82 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5c85 21 24 8b       ld hl,08b24h         	;! $ .
	ram:5c88 be             cp (hl)              	;.
	ram:5c89 d2 11 5c       jp nc,sub_5c11h      	;. . \
	ram:5c8c cd be 57       call sub_57beh       	;. . W
	ram:5c8f fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:5c93 28 05          jr z,l5c9ah          	;( .
	ram:5c95 cd 8b 5f       call sub_5f8bh       	;. . _
	ram:5c98 18 1f          jr l5cb9h            	;. .
l5c9ah:
	ram:5c9a 21 56 5f       ld hl,l5f56h         	;! V _
	ram:5c9d 22 95 81       ld (08195h),hl       	;" . .
	ram:5ca0 21 89 04       ld hl,00489h         	;! . .
	ram:5ca3 cd b5 0a       call 00ab5h          	;. . .
	ram:5ca6 cd 24 2f       call 02f24h          	;. $ /
	ram:5ca9 d7             rst 10h              	;.
	ram:5caa cd e8 58       call sub_58e8h       	;. . X
	ram:5cad cd 4a 2e       call 02e4ah          	;. J .
	ram:5cb0 cd db 0a       call 00adbh          	;. . .
	ram:5cb3 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5cb6 22 e9 8b       ld (08be9h),hl       	;" . .
l5cb9h:
	ram:5cb9 21 a4 7d       ld hl,l7da4h         	;! . }
	ram:5cbc 22 91 81       ld (08191h),hl       	;" . .
	ram:5cbf 21 1c 6f       ld hl,l6f1ch         	;! . o
	ram:5cc2 22 97 81       ld (08197h),hl       	;" . .
	ram:5cc5 21 ab 58       ld hl,l58abh         	;! . X
	ram:5cc8 22 93 81       ld (08193h),hl       	;" . .
	ram:5ccb cd df 68       call sub_68dfh       	;. . h
	ram:5cce cd 39 3e       call 03e39h          	;. 9 >
	ram:5cd1 3e 4f          ld a,04fh            	;> O
	ram:5cd3 cd 11 3c       call 03c11h          	;. . <
	ram:5cd6 cd a3 5d       call sub_5da3h       	;. . ]
	ram:5cd9 cd 24 2f       call 02f24h          	;. $ /
	ram:5cdc d7             rst 10h              	;.
	ram:5cdd 1a             ld a,(de)            	;.
	ram:5cde 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:5ce1 cd 79 5e       call sub_5e79h       	;. y ^
	ram:5ce4 fd cb 03 fe    set 7,(iy+003h)      	;. . . .
	ram:5ce8 21 a6 5e       ld hl,l5ea6h         	;! . ^
	ram:5ceb 22 8d 81       ld (0818dh),hl       	;" . .
	ram:5cee 3e 01          ld a,001h            	;> .
	ram:5cf0 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5cf3 32 0c 80       ld (0800ch),a        	;2 . .
	ram:5cf6 c3 d4 5e       jp l5ed4h            	;. . ^
sub_5cf9h:
	ram:5cf9 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5cfc 21 24 8b       ld hl,08b24h         	;! $ .
	ram:5cff be             cp (hl)              	;.
	ram:5d00 c9             ret                  	;.
sub_5d01h:
	ram:5d01 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:5d04 21 22 8b       ld hl,08b22h         	;! " .
	ram:5d07 be             cp (hl)              	;.
	ram:5d08 c9             ret                  	;.
sub_5d09h:
	ram:5d09 21 89 04       ld hl,00489h         	;! . .
	ram:5d0c cd b5 0a       call 00ab5h          	;. . .
	ram:5d0f cd 1e 5d       call sub_5d1eh       	;. . ]
	ram:5d12 cd 55 5d       call sub_5d55h       	;. U ]
	ram:5d15 cd db 0a       call 00adbh          	;. . .
	ram:5d18 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5d1b d8             ret c                	;.
	ram:5d1c 77             ld (hl),a            	;w
	ram:5d1d c9             ret                  	;.
sub_5d1eh:
	ram:5d1e cd da 7d       call sub_7ddah       	;. . }
	ram:5d21 fd cb 05 6e    bit 5,(iy+005h)      	;. . . n
	ram:5d25 c8             ret z                	;.
	ram:5d26 cd 3d 5d       call sub_5d3dh       	;. = ]
	ram:5d29 cd e9 68       call sub_68e9h       	;. . h
	ram:5d2c 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5d2f 06 00          ld b,000h            	;. .
	ram:5d31 4f             ld c,a               	;O
	ram:5d32 cd af 37       call 037afh          	;. . 7
	ram:5d35 ed 5b e9 8b    ld de,(08be9h)       	;. [ . .
	ram:5d39 cd 3f 38       call 0383fh          	;. ? 8
	ram:5d3c c9             ret                  	;.
sub_5d3dh:
	ram:5d3d fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:5d41 c8             ret z                	;.
	ram:5d42 fd cb 03 be    res 7,(iy+003h)      	;. . . .
	ram:5d46 21 01 00       ld hl,00001h         	;! . .
	ram:5d49 22 e9 8b       ld (08be9h),hl       	;" . .
	ram:5d4c cd ea 2d       call 02deah          	;. . -
	ram:5d4f cd e5 2d       call 02de5h          	;. . -
	ram:5d52 c3 40 2e       jp 02e40h            	;. @ .
sub_5d55h:
	ram:5d55 cd 72 7a       call sub_7a72h       	;. r z
	ram:5d58 cd 96 5d       call sub_5d96h       	;. . ]
	ram:5d5b cd a0 7a       call sub_7aa0h       	;. . z
	ram:5d5e c3 5a 7a       jp sub_7a5ah         	;. Z z
sub_5d61h:
	ram:5d61 cd 68 69       call sub_6968h       	;. h i
	ram:5d64 18 03          jr l5d69h            	;. .
sub_5d66h:
	ram:5d66 cd 96 5d       call sub_5d96h       	;. . ]
l5d69h:
	ram:5d69 cd 72 7a       call sub_7a72h       	;. r z
	ram:5d6c cd a6 72       call sub_72a6h       	;. . r
	ram:5d6f 21 82 80       ld hl,08082h         	;! . .
	ram:5d72 11 7c 8b       ld de,08b7ch         	;. | .
	ram:5d75 cd 9d 20       call 0209dh          	;. .  
	ram:5d78 23             inc hl               	;#
	ram:5d79 cd 9d 20       call 0209dh          	;. .  
	ram:5d7c 3e 13          ld a,013h            	;> .
l5d7eh:
	ram:5d7e 21 82 80       ld hl,08082h         	;! . .
	ram:5d81 cb 46          bit 0,(hl)           	;. F
	ram:5d83 20 08          jr nz,l5d8dh         	;.
	ram:5d85 cd dd 33       call 033ddh          	;. . 3
	ram:5d88 21 98 80       ld hl,08098h         	;! . .
	ram:5d8b 18 06          jr l5d93h            	;. .
l5d8dh:
	ram:5d8d cd e3 33       call 033e3h          	;. . 3
	ram:5d90 21 3b 8b       ld hl,08b3bh         	;! ; .
l5d93h:
	ram:5d93 c3 5a 7a       jp sub_7a5ah         	;. Z z
sub_5d96h:
	ram:5d96 cd 24 2f       call 02f24h          	;. $ /
	ram:5d99 d7             rst 10h              	;.
	ram:5d9a 2a 22 8b       ld hl,(08b22h)       	;* " .
	ram:5d9d 26 00          ld h,000h            	;& .
	ram:5d9f cd 2f 39       call 0392fh          	;. / 9
	ram:5da2 c9             ret                  	;.
sub_5da3h:
	ram:5da3 21 00 00       ld hl,00000h         	;! . .
	ram:5da6 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5da9 3e 61          ld a,061h            	;> a
	ram:5dab cd d0 5d       call sub_5dd0h       	;. . ]
	ram:5dae 3e 78          ld a,078h            	;> x
	ram:5db0 cd c5 3f       call 03fc5h          	;. . ?
	ram:5db3 3e 5e          ld a,05eh            	;> ^
	ram:5db5 cd d0 5d       call sub_5dd0h       	;. . ]
	ram:5db8 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5dbb fe 03          cp 003h              	;. .
	ram:5dbd 38 0a          jr c,l5dc9h          	;8 .
	ram:5dbf 3e 2b          ld a,02bh            	;> +
	ram:5dc1 cd c5 3f       call 03fc5h          	;. . ?
	ram:5dc4 3e ce          ld a,0ceh            	;> .
	ram:5dc6 cd c5 3f       call 03fc5h          	;. . ?
l5dc9h:
	ram:5dc9 21 9a 30       ld hl,0309ah         	;! . 0
	ram:5dcc cd 45 3e       call 03e45h          	;. E >
	ram:5dcf c9             ret                  	;.
sub_5dd0h:
	ram:5dd0 cd c5 3f       call 03fc5h          	;. . ?
	ram:5dd3 3a 9e 8b       ld a,(08b9eh)        	;: . .
sub_5dd6h:
	ram:5dd6 06 80          ld b,080h            	;. .
	ram:5dd8 c3 5f 77       jp l775fh            	;. _ w
sub_5ddbh:
	ram:5ddb 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:5dde e5             push hl              	;.
	ram:5ddf 7c             ld a,h               	;|
	ram:5de0 3c             inc a                	;<
	ram:5de1 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:5de4 e5             push hl              	;.
	ram:5de5 95             sub l                	;.
	ram:5de6 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5de9 3e 01          ld a,001h            	;> .
l5debh:
	ram:5deb 32 0c 80       ld (0800ch),a        	;2 . .
	ram:5dee cd 25 5e       call sub_5e25h       	;. % ^
	ram:5df1 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5df4 fe 02          cp 002h              	;. .
	ram:5df6 30 08          jr nc,l5e00h         	;0 .
	ram:5df8 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5dfb fe 02          cp 002h              	;. .
	ram:5dfd d4 ee 56       call nc,sub_56eeh    	;. . V
l5e00h:
	ram:5e00 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5e03 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:5e06 be             cp (hl)              	;.
	ram:5e07 28 02          jr z,l5e0bh          	;( .
	ram:5e09 30 11          jr nc,l5e1ch         	;0 .
l5e0bh:
	ram:5e0b 3c             inc a                	;<
	ram:5e0c 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5e0f 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5e12 3c             inc a                	;<
	ram:5e13 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:5e16 be             cp (hl)              	;.
	ram:5e17 38 d2          jr c,l5debh          	;8 .
	ram:5e19 cd f5 56       call sub_56f5h       	;. . V
l5e1ch:
	ram:5e1c e1             pop hl               	;.
	ram:5e1d 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5e20 e1             pop hl               	;.
	ram:5e21 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:5e24 c9             ret                  	;.
sub_5e25h:
	ram:5e25 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:5e28 fe 03          cp 003h              	;. .
	ram:5e2a ca c3 69       jp z,l69c3h          	;. . i
	ram:5e2d cd 3a 5e       call sub_5e3ah       	;. : ^
	ram:5e30 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5e33 28 01          jr z,l5e36h          	;( .
	ram:5e35 d0             ret nc               	;.
l5e36h:
	ram:5e36 cd 55 5d       call sub_5d55h       	;. U ]
	ram:5e39 c9             ret                  	;.
sub_5e3ah:
	ram:5e3a 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5e3d 3c             inc a                	;<
	ram:5e3e 21 22 8b       ld hl,08b22h         	;! " .
	ram:5e41 96             sub (hl)             	;.
	ram:5e42 5f             ld e,a               	;_
	ram:5e43 3e 01          ld a,001h            	;> .
	ram:5e45 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5e48 3e 61          ld a,061h            	;> a
l5e4ah:
	ram:5e4a cd c5 3f       call 03fc5h          	;. . ?
	ram:5e4d 7b             ld a,e               	;{
	ram:5e4e cd d6 5d       call sub_5dd6h       	;. . ]
	ram:5e51 c3 a6 74       jp sub_74a6h         	;. . t
sub_5e54h:
	ram:5e54 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5e57 5f             ld e,a               	;_
	ram:5e58 3e 01          ld a,001h            	;> .
	ram:5e5a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5e5d 3e 78          ld a,078h            	;> x
	ram:5e5f 18 e9          jr l5e4ah            	;. .
l5e61h:
	ram:5e61 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:5e64 cd 3d 5d       call sub_5d3dh       	;. = ]
	ram:5e67 cd 24 2f       call 02f24h          	;. $ /
	ram:5e6a d7             rst 10h              	;.
	ram:5e6b fe 05          cp 005h              	;. .
	ram:5e6d cc 01 3a       call z,03a01h        	;. . :
	ram:5e70 cd 01 67       call sub_6701h       	;. . g
	ram:5e73 cd 8b 3d       call 03d8bh          	;. . =
	ram:5e76 c3 63 5b       jp l5b63h            	;. c [
sub_5e79h:
	ram:5e79 3e 01          ld a,001h            	;> .
	ram:5e7b 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5e7e 32 2f 8b       ld (08b2fh),a        	;2 / .
l5e81h:
	ram:5e81 32 0c 80       ld (0800ch),a        	;2 . .
	ram:5e84 cd 54 5e       call sub_5e54h       	;. T ^
	ram:5e87 cd 66 5d       call sub_5d66h       	;. f ]
	ram:5e8a cd 24 2f       call 02f24h          	;. $ /
	ram:5e8d d7             rst 10h              	;.
	ram:5e8e 1a             ld a,(de)            	;.
	ram:5e8f 21 22 8b       ld hl,08b22h         	;! " .
	ram:5e92 be             cp (hl)              	;.
	ram:5e93 28 10          jr z,l5ea5h          	;( .
	ram:5e95 34             inc (hl)             	;4
	ram:5e96 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5e99 3c             inc a                	;<
	ram:5e9a 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:5e9d be             cp (hl)              	;.
	ram:5e9e 28 02          jr z,l5ea2h          	;( .
	ram:5ea0 18 df          jr l5e81h            	;. .
l5ea2h:
	ram:5ea2 cd f5 56       call sub_56f5h       	;. . V
l5ea5h:
	ram:5ea5 c9             ret                  	;.
l5ea6h:
	ram:5ea6 fe 06          cp 006h              	;. .
	ram:5ea8 28 04          jr z,l5eaeh          	;( .
	ram:5eaa fe 04          cp 004h              	;. .
	ram:5eac 20 3a          jr nz,l5ee8h         	;:
l5eaeh:
	ram:5eae cd 6c 6c       call sub_6c6ch       	;. l l
	ram:5eb1 cd 66 5d       call sub_5d66h       	;. f ]
	ram:5eb4 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5eb7 30 1b          jr nc,l5ed4h         	;0 .
	ram:5eb9 3c             inc a                	;<
	ram:5eba 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5ebd cd 3d 55       call sub_553dh       	;. = U
	ram:5ec0 38 0f          jr c,l5ed1h          	;8 .
	ram:5ec2 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5ec5 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:5ec8 be             cp (hl)              	;.
	ram:5ec9 dc f5 56       call c,sub_56f5h     	;. . V
	ram:5ecc cd 54 5e       call sub_5e54h       	;. T ^
	ram:5ecf 18 03          jr l5ed4h            	;. .
l5ed1h:
	ram:5ed1 32 0c 80       ld (0800ch),a        	;2 . .
l5ed4h:
	ram:5ed4 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:5ed8 cd 66 5d       call sub_5d66h       	;. f ]
	ram:5edb cd 58 6c       call sub_6c58h       	;. X l
	ram:5ede cd c4 56       call sub_56c4h       	;. . V
	ram:5ee1 cd 87 3b       call 03b87h          	;. . ;
	ram:5ee4 cd 81 3b       call 03b81h          	;. . ;
	ram:5ee7 c9             ret                  	;.
l5ee8h:
	ram:5ee8 fe 03          cp 003h              	;. .
	ram:5eea 20 31          jr nz,l5f1dh         	;1
	ram:5eec cd 6c 6c       call sub_6c6ch       	;. l l
	ram:5eef cd 66 5d       call sub_5d66h       	;. f ]
	ram:5ef2 cd f9 5c       call sub_5cf9h       	;. . \
	ram:5ef5 38 03          jr c,l5efah          	;8 .
	ram:5ef7 32 24 8b       ld (08b24h),a        	;2 $ .
l5efah:
	ram:5efa 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5efd fe 01          cp 001h              	;. .
	ram:5eff 28 19          jr z,l5f1ah          	;( .
	ram:5f01 3d             dec a                	;=
	ram:5f02 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5f05 cd 51 55       call sub_5551h       	;. Q U
	ram:5f08 30 0d          jr nc,l5f17h         	;0 .
	ram:5f0a 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:5f0d fe 02          cp 002h              	;. .
	ram:5f0f d4 ee 56       call nc,sub_56eeh    	;. . V
	ram:5f12 cd 54 5e       call sub_5e54h       	;. T ^
	ram:5f15 18 03          jr l5f1ah            	;. .
l5f17h:
	ram:5f17 32 0c 80       ld (0800ch),a        	;2 . .
l5f1ah:
	ram:5f1a c3 d4 5e       jp l5ed4h            	;. . ^
l5f1dh:
	ram:5f1d fe 16          cp 016h              	;. .
	ram:5f1f 20 0d          jr nz,l5f2eh         	;.
	ram:5f21 cd a2 62       call sub_62a2h       	;. . b
l5f24h:
	ram:5f24 cd a1 6b       call sub_6ba1h       	;. . k
	ram:5f27 30 ab          jr nc,l5ed4h         	;0 .
	ram:5f29 cd 21 63       call sub_6321h       	;. ! c
	ram:5f2c 18 f6          jr l5f24h            	;. .
l5f2eh:
	ram:5f2e fe c1          cp 0c1h              	;. .
	ram:5f30 20 06          jr nz,l5f38h         	;.
	ram:5f32 cd a4 7d       call l7da4h          	;. . }
	ram:5f35 c3 eb 5a       jp l5aebh            	;. . Z
l5f38h:
	ram:5f38 fe aa          cp 0aah              	;. .
	ram:5f3a 20 13          jr nz,l5f4fh         	;.
	ram:5f3c cd 66 5d       call sub_5d66h       	;. f ]
	ram:5f3f cd 48 6c       call sub_6c48h       	;. H l
	ram:5f42 cd ad 62       call sub_62adh       	;. . b
l5f45h:
	ram:5f45 cd bd 5f       call sub_5fbdh       	;. . _
	ram:5f48 30 8a          jr nc,l5ed4h         	;0 .
	ram:5f4a cd 21 63       call sub_6321h       	;. ! c
	ram:5f4d 18 f6          jr l5f45h            	;. .
l5f4fh:
	ram:5f4f fe 8e          cp 08eh              	;. .
	ram:5f51 20 44          jr nz,l5f97h         	;D
	ram:5f53 cd 8b 5f       call sub_5f8bh       	;. . _
l5f56h:
	ram:5f56 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:5f59 3c             inc a                	;<
	ram:5f5a 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:5f5d 3e 01          ld a,001h            	;> .
	ram:5f5f 32 22 8b       ld (08b22h),a        	;2 " .
	ram:5f62 cd 35 3c       call 03c35h          	;. 5 <
	ram:5f65 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:5f69 cd d2 01       call 001d2h          	;. . .
	ram:5f6c fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:5f70 21 d7 33       ld hl,033d7h         	;! . 3
	ram:5f73 22 91 81       ld (08191h),hl       	;" . .
	ram:5f76 21 b5 34       ld hl,034b5h         	;! . 4
	ram:5f79 22 93 81       ld (08193h),hl       	;" . .
	ram:5f7c 21 09 6f       ld hl,l6f09h         	;! . o
	ram:5f7f 22 97 81       ld (08197h),hl       	;" . .
	ram:5f82 21 b2 58       ld hl,l58b2h         	;! . X
	ram:5f85 22 95 81       ld (08195h),hl       	;" . .
	ram:5f88 c3 58 5b       jp l5b58h            	;. X [
sub_5f8bh:
	ram:5f8b cd f4 2d       call 02df4h          	;. . -
	ram:5f8e cd ef 2d       call 02defh          	;. . -
	ram:5f91 cd 4a 2e       call 02e4ah          	;. J .
	ram:5f94 c3 45 2e       jp 02e45h            	;. E .
l5f97h:
	ram:5f97 fe 02          cp 002h              	;. .
	ram:5f99 20 05          jr nz,l5fa0h         	;.
	ram:5f9b cd f7 5f       call sub_5ff7h       	;. . _
	ram:5f9e 18 07          jr l5fa7h            	;. .
l5fa0h:
	ram:5fa0 fe 01          cp 001h              	;. .
	ram:5fa2 20 08          jr nz,l5fach         	;.
	ram:5fa4 cd 02 60       call sub_6002h       	;. . `
l5fa7h:
	ram:5fa7 fd cb 05 b6    res 6,(iy+005h)      	;. . . .
	ram:5fab c9             ret                  	;.
l5fach:
	ram:5fac fe 87          cp 087h              	;. .
	ram:5fae 20 05          jr nz,l5fb5h         	;.
	ram:5fb0 cd 1b 60       call sub_601bh       	;. . `
	ram:5fb3 18 f2          jr l5fa7h            	;. .
l5fb5h:
	ram:5fb5 fe 88          cp 088h              	;. .
	ram:5fb7 c0             ret nz               	;.
	ram:5fb8 cd 2d 60       call sub_602dh       	;. - `
	ram:5fbb 18 ea          jr l5fa7h            	;. .
sub_5fbdh:
	ram:5fbd 38 08          jr c,l5fc7h          	;8 .
	ram:5fbf cd 62 7c       call sub_7c62h       	;. b |
	ram:5fc2 cd 3f 63       call sub_633fh       	;. ? c
	ram:5fc5 18 14          jr l5fdbh            	;. .
l5fc7h:
	ram:5fc7 21 b9 6b       ld hl,l6bb9h         	;! . k
	ram:5fca cd b5 0a       call 00ab5h          	;. . .
	ram:5fcd cd f5 1f       call 01ff5h          	;. . .
	ram:5fd0 3e 04          ld a,004h            	;> .
	ram:5fd2 cd 36 7f       call sub_7f36h       	;. 6 .
	ram:5fd5 cd dd 5f       call sub_5fddh       	;. . _
	ram:5fd8 cd db 0a       call 00adbh          	;. . .
l5fdbh:
	ram:5fdb 97             sub a                	;.
	ram:5fdc c9             ret                  	;.
sub_5fddh:
	ram:5fdd cf             rst 8                	;.
	ram:5fde cd 43 2f       call 02f43h          	;. C /
	ram:5fe1 cd 87 2e       call 02e87h          	;. . .
	ram:5fe4 d7             rst 10h              	;.
	ram:5fe5 e6 1f          and 01fh             	;. .
	ram:5fe7 fe 04          cp 004h              	;. .
	ram:5fe9 28 06          jr z,l5ff1h          	;( .
	ram:5feb cd 69 26       call 02669h          	;. i &
	ram:5fee ca 28 0a       jp z,00a28h          	;. ( .
l5ff1h:
	ram:5ff1 cd 95 20       call 02095h          	;. .  
	ram:5ff4 c3 3b 6c       jp l6c3bh            	;. ; l
sub_5ff7h:
	ram:5ff7 fd cb 0e 66    bit 4,(iy+00eh)      	;. . . f
	ram:5ffb c8             ret z                	;.
	ram:5ffc 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:5fff 2b             dec hl               	;+
	ram:6000 18 09          jr l600bh            	;. .
sub_6002h:
	ram:6002 fd cb 0e 6e    bit 5,(iy+00eh)      	;. . . n
	ram:6006 c8             ret z                	;.
	ram:6007 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:600a 23             inc hl               	;#
l600bh:
	ram:600b 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:600e cd c4 56       call sub_56c4h       	;. . V
	ram:6011 cd 81 3b       call 03b81h          	;. . ;
	ram:6014 cd 96 5d       call sub_5d96h       	;. . ]
	ram:6017 cd ef 33       call 033efh          	;. . 3
	ram:601a c9             ret                  	;.
sub_601bh:
	ram:601b fd cb 0e 66    bit 4,(iy+00eh)      	;. . . f
	ram:601f c8             ret z                	;.
	ram:6020 cd c4 56       call sub_56c4h       	;. . V
	ram:6023 21 00 00       ld hl,00000h         	;! . .
	ram:6026 5f             ld e,a               	;_
	ram:6027 97             sub a                	;.
	ram:6028 57             ld d,a               	;W
	ram:6029 ed 52          sbc hl,de            	;. R
	ram:602b 18 de          jr l600bh            	;. .
sub_602dh:
	ram:602d fd cb 0e 6e    bit 5,(iy+00eh)      	;. . . n
	ram:6031 c8             ret z                	;.
	ram:6032 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:6035 23             inc hl               	;#
	ram:6036 cd 0b 60       call l600bh          	;. . `
	ram:6039 18 f2          jr sub_602dh         	;. .
	ram:603b 21 32 00       ld hl,00032h         	;! 2 .
	ram:603e cd e1 3e       call 03ee1h          	;. . >
	ram:6041 21 77 60       ld hl,l6077h         	;! w `
	ram:6044 cd 5b 06       call 0065bh          	;. [ .
	ram:6047 fd cb 09 c6    set 0,(iy+009h)      	;. . . .
	ram:604b cd 39 3e       call 03e39h          	;. 9 >
	ram:604e 21 2c 32       ld hl,0322ch         	;! , 2
	ram:6051 cd 76 53       call sub_5376h       	;. v S
	ram:6054 cd af 03       call 003afh          	;. . .
	ram:6057 30 15          jr nc,l606eh         	;0 .
	ram:6059 06 00          ld b,000h            	;. .
	ram:605b 21 84 80       ld hl,08084h         	;! . .
l605eh:
	ram:605e 71             ld (hl),c            	;q
	ram:605f 23             inc hl               	;#
	ram:6060 04             inc b                	;.
	ram:6061 e5             push hl              	;.
	ram:6062 cd af 03       call 003afh          	;. . .
	ram:6065 e1             pop hl               	;.
	ram:6066 38 f6          jr c,l605eh          	;8 .
	ram:6068 78             ld a,b               	;x
	ram:6069 32 83 80       ld (08083h),a        	;2 . .
	ram:606c 18 40          jr l60aeh            	;. @
l606eh:
	ram:606e 3e 2a          ld a,02ah            	;> *
	ram:6070 cd 85 3d       call 03d85h          	;. . =
	ram:6073 cd 6f 65       call sub_656fh       	;. o e
	ram:6076 c9             ret                  	;.
l6077h:
	ram:6077 84             add a,h              	;.
	ram:6078 60             ld h,b               	;`
	ram:6079 7c             ld a,h               	;|
	ram:607a 62             ld h,d               	;b
	ram:607b 4b             ld c,e               	;K
	ram:607c 62             ld h,d               	;b
	ram:607d 79             ld a,c               	;y
	ram:607e 62             ld h,d               	;b
	ram:607f 79             ld a,c               	;y
	ram:6080 62             ld h,d               	;b
	ram:6081 7f             ld a,a               	;.
	ram:6082 62             ld h,d               	;b
	ram:6083 0e fd          ld c,0fdh            	;. .
	ram:6085 cb 11          rl c                 	;. .
	ram:6087 46             ld b,(hl)            	;F
	ram:6088 28 5e          jr z,l60e8h          	;( ^
	ram:608a cd 87 65       call sub_6587h       	;. . e
	ram:608d d0             ret nc               	;.
	ram:608e cd 2e 65       call sub_652eh       	;. . e
	ram:6091 da 1c 0a       jp c,00a1ch          	;. . .
	ram:6094 fe 12          cp 012h              	;. .
	ram:6096 28 16          jr z,l60aeh          	;( .
	ram:6098 fe 14          cp 014h              	;. .
	ram:609a c2 28 0a       jp nz,00a28h         	;. ( .
	ram:609d 21 45 0a       ld hl,00a45h         	;! E .
	ram:60a0 cd b5 0a       call 00ab5h          	;. . .
	ram:60a3 21 00 00       ld hl,00000h         	;! . .
	ram:60a6 cd 4a 2a       call 02a4ah          	;. J *
	ram:60a9 cd db 0a       call 00adbh          	;. . .
	ram:60ac 18 01          jr l60afh            	;. .
l60aeh:
	ram:60ae d7             rst 10h              	;.
l60afh:
	ram:60af cd d2 01       call 001d2h          	;. . .
	ram:60b2 22 25 8b       ld (08b25h),hl       	;" % .
	ram:60b5 cd 42 49       call sub_4942h       	;. B I
	ram:60b8 3e 2b          ld a,02bh            	;> +
	ram:60ba cd 11 3c       call 03c11h          	;. . <
	ram:60bd cd 8b 3d       call 03d8bh          	;. . =
	ram:60c0 21 00 07       ld hl,00700h         	;! . .
	ram:60c3 22 0c 80       ld (0800ch),hl       	;" . .
	ram:60c6 cd 94 00       call 00094h          	;. . .
	ram:60c9 cd d3 57       call sub_57d3h       	;. . W
	ram:60cc 21 83 80       ld hl,08083h         	;! . .
	ram:60cf cd 5d 3b       call 03b5dh          	;. ] ;
	ram:60d2 cd 4b 3e       call 03e4bh          	;. K >
	ram:60d5 cd 94 00       call 00094h          	;. . .
	ram:60d8 fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:60dc 20 04          jr nz,l60e2h         	;.
	ram:60de cd 04 47       call sub_4704h       	;. . G
	ram:60e1 c9             ret                  	;.
l60e2h:
	ram:60e2 cd 5a 05       call 0055ah          	;. Z .
	ram:60e5 c3 55 48       jp l4855h            	;. U H
l60e8h:
	ram:60e8 fe 06          cp 006h              	;. .
	ram:60ea 20 1d          jr nz,l6109h         	;.
	ram:60ec cd d6 01       call 001d6h          	;. . .
	ram:60ef fd cb 05 66    bit 4,(iy+005h)      	;. . . f
	ram:60f3 20 0f          jr nz,l6104h         	;.
l60f5h:
	ram:60f5 cd 41 45       call sub_4541h       	;. A E
	ram:60f8 28 0a          jr z,l6104h          	;( .
	ram:60fa cd c5 3f       call 03fc5h          	;. . ?
	ram:60fd fe d6          cp 0d6h              	;. .
	ram:60ff 20 f4          jr nz,l60f5h         	;.
	ram:6101 c3 55 48       jp l4855h            	;. U H
l6104h:
	ram:6104 3e d6          ld a,0d6h            	;> .
	ram:6106 c3 cb 47       jp l47cbh            	;. . G
l6109h:
	ram:6109 fe 02          cp 002h              	;. .
	ram:610b ca 77 46       jp z,sub_4677h       	;. w F
	ram:610e fe 01          cp 001h              	;. .
	ram:6110 ca 93 46       jp z,sub_4693h       	;. . F
	ram:6113 fe 03          cp 003h              	;. .
	ram:6115 ca a4 46       jp z,l46a4h          	;. . F
	ram:6118 fe 04          cp 004h              	;. .
	ram:611a ca d5 46       jp z,l46d5h          	;. . F
	ram:611d fe 87          cp 087h              	;. .
	ram:611f ca 45 46       jp z,l4645h          	;. E F
	ram:6122 fe 88          cp 088h              	;. .
	ram:6124 ca 5f 46       jp z,l465fh          	;. _ F
	ram:6127 fe 9f          cp 09fh              	;. .
	ram:6129 20 0d          jr nz,l6138h         	;.
	ram:612b 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:612e 3d             dec a                	;=
	ram:612f 47             ld b,a               	;G
l6130h:
	ram:6130 c5             push bc              	;.
	ram:6131 cd a4 46       call l46a4h          	;. . F
	ram:6134 c1             pop bc               	;.
	ram:6135 10 f9          djnz l6130h          	;. .
	ram:6137 c9             ret                  	;.
l6138h:
	ram:6138 fe 9e          cp 09eh              	;. .
	ram:613a 20 0d          jr nz,l6149h         	;.
	ram:613c 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:613f 3d             dec a                	;=
	ram:6140 47             ld b,a               	;G
l6141h:
	ram:6141 c5             push bc              	;.
	ram:6142 cd d5 46       call l46d5h          	;. . F
	ram:6145 c1             pop bc               	;.
	ram:6146 10 f9          djnz l6141h          	;. .
	ram:6148 c9             ret                  	;.
l6149h:
	ram:6149 fe 0a          cp 00ah              	;. .
	ram:614b ca a2 49       jp z,l49a2h          	;. . I
	ram:614e fe 09          cp 009h              	;. .
	ram:6150 20 0a          jr nz,l615ch         	;.
	ram:6152 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:6156 cd b2 45       call sub_45b2h       	;. . E
	ram:6159 c3 55 48       jp l4855h            	;. U H
l615ch:
	ram:615c fe 08          cp 008h              	;. .
	ram:615e 20 13          jr nz,l6173h         	;.
	ram:6160 cd 32 62       call sub_6232h       	;. 2 b
l6163h:
	ram:6163 cd c2 45       call sub_45c2h       	;. . E
	ram:6166 ca 55 48       jp z,l4855h          	;. U H
	ram:6169 fe d6          cp 0d6h              	;. .
	ram:616b ca 55 48       jp z,l4855h          	;. U H
	ram:616e cd b2 45       call sub_45b2h       	;. . E
	ram:6171 18 f0          jr l6163h            	;. .
l6173h:
	ram:6173 fe 99          cp 099h              	;. .
	ram:6175 20 15          jr nz,l618ch         	;.
	ram:6177 cd d2 01       call 001d2h          	;. . .
	ram:617a cd 16 46       call sub_4616h       	;. . F
	ram:617d c8             ret z                	;.
	ram:617e cd 32 62       call sub_6232h       	;. 2 b
	ram:6181 3e d6          ld a,0d6h            	;> .
	ram:6183 cd 5a 45       call sub_455ah       	;. Z E
	ram:6186 cd 2f 45       call sub_452fh       	;. / E
	ram:6189 c3 55 48       jp l4855h            	;. U H
l618ch:
	ram:618c fe 94          cp 094h              	;. .
	ram:618e 20 40          jr nz,l61d0h         	;@
l6190h:
	ram:6190 cd 2f 45       call sub_452fh       	;. / E
	ram:6193 28 0c          jr z,l61a1h          	;( .
	ram:6195 fe d6          cp 0d6h              	;. .
	ram:6197 28 05          jr z,l619eh          	;( .
	ram:6199 cd 57 3b       call 03b57h          	;. W ;
	ram:619c 18 f2          jr l6190h            	;. .
l619eh:
	ram:619e cd 41 45       call sub_4541h       	;. A E
l61a1h:
	ram:61a1 21 0d 80       ld hl,0800dh         	;! . .
	ram:61a4 35             dec (hl)             	;5
	ram:61a5 3e 3a          ld a,03ah            	;> :
	ram:61a7 cd c5 3f       call 03fc5h          	;. . ?
	ram:61aa dd 21 10 80    ld ix,08010h         	;. ! . .
	ram:61ae 06 00          ld b,000h            	;. .
l61b0h:
	ram:61b0 cd c2 45       call sub_45c2h       	;. . E
	ram:61b3 28 14          jr z,l61c9h          	;( .
	ram:61b5 4f             ld c,a               	;O
	ram:61b6 78             ld a,b               	;x
	ram:61b7 fe 64          cp 064h              	;. d
	ram:61b9 30 0e          jr nc,l61c9h         	;0 .
	ram:61bb dd 71 00       ld (ix+000h),c       	;. q .
	ram:61be dd 23          inc ix               	;. #
	ram:61c0 04             inc b                	;.
	ram:61c1 cd b2 45       call sub_45b2h       	;. . E
	ram:61c4 79             ld a,c               	;y
	ram:61c5 fe d6          cp 0d6h              	;. .
	ram:61c7 20 e7          jr nz,l61b0h         	;.
l61c9h:
	ram:61c9 78             ld a,b               	;x
	ram:61ca 32 0f 80       ld (0800fh),a        	;2 . .
	ram:61cd c3 55 48       jp l4855h            	;. U H
l61d0h:
	ram:61d0 fe ae          cp 0aeh              	;. .
	ram:61d2 20 1c          jr nz,l61f0h         	;.
	ram:61d4 3a 0f 80       ld a,(0800fh)        	;: . .
	ram:61d7 b7             or a                 	;.
	ram:61d8 c8             ret z                	;.
	ram:61d9 47             ld b,a               	;G
	ram:61da dd 21 10 80    ld ix,08010h         	;. ! . .
l61deh:
	ram:61de dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:61e1 dd 23          inc ix               	;. #
	ram:61e3 cd 5a 45       call sub_455ah       	;. Z E
	ram:61e6 28 05          jr z,l61edh          	;( .
	ram:61e8 cd c5 3f       call 03fc5h          	;. . ?
	ram:61eb 10 f1          djnz l61deh          	;. .
l61edh:
	ram:61ed c3 55 48       jp l4855h            	;. U H
l61f0h:
	ram:61f0 fe 17          cp 017h              	;. .
	ram:61f2 ca 9d 64       jp z,l649dh          	;. . d
	ram:61f5 fe 16          cp 016h              	;. .
	ram:61f7 cc ea 01       call z,001eah        	;. . .
	ram:61fa 79             ld a,c               	;y
	ram:61fb b7             or a                 	;.
	ram:61fc c8             ret z                	;.
	ram:61fd cd a1 47       call sub_47a1h       	;. . G
	ram:6200 cd cb 47       call l47cbh          	;. . G
	ram:6203 fd cb 0e 7e    bit 7,(iy+00eh)      	;. . . ~
	ram:6207 c8             ret z                	;.
	ram:6208 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:620b ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:620f b7             or a                 	;.
	ram:6210 ed 52          sbc hl,de            	;. R
	ram:6212 c8             ret z                	;.
	ram:6213 4d             ld c,l               	;M
	ram:6214 44             ld b,h               	;D
	ram:6215 c5             push bc              	;.
	ram:6216 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:6219 2b             dec hl               	;+
	ram:621a ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:621e 1b             dec de               	;.
	ram:621f ed b8          lddr                 	;. .
	ram:6221 13             inc de               	;.
	ram:6222 ed 53 1d 8b    ld (08b1dh),de       	;. S . .
	ram:6226 c1             pop bc               	;.
l6227h:
	ram:6227 cd 93 46       call sub_4693h       	;. . F
	ram:622a 0b             dec bc               	;.
	ram:622b 79             ld a,c               	;y
	ram:622c b0             or b                 	;.
	ram:622d 20 f8          jr nz,l6227h         	;.
	ram:622f c3 55 48       jp l4855h            	;. U H
sub_6232h:
	ram:6232 cd 2f 45       call sub_452fh       	;. / E
	ram:6235 28 0c          jr z,l6243h          	;( .
	ram:6237 fe d6          cp 0d6h              	;. .
	ram:6239 28 05          jr z,l6240h          	;( .
	ram:623b cd 57 3b       call 03b57h          	;. W ;
	ram:623e 18 f2          jr sub_6232h         	;. .
l6240h:
	ram:6240 cd 41 45       call sub_4541h       	;. A E
l6243h:
	ram:6243 21 0d 80       ld hl,0800dh         	;! . .
	ram:6246 35             dec (hl)             	;5
	ram:6247 cd 94 00       call 00094h          	;. . .
	ram:624a c9             ret                  	;.
	ram:624b fd cb 09 86    res 0,(iy+009h)      	;. . . .
	ram:624f cd d2 01       call 001d2h          	;. . .
	ram:6252 fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:6256 c0             ret nz               	;.
	ram:6257 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:625b c8             ret z                	;.
	ram:625c cd cf 45       call sub_45cfh       	;. . E
	ram:625f 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:6262 23             inc hl               	;#
	ram:6263 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:6266 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:6269 cd f4 45       call sub_45f4h       	;. . E
	ram:626c 97             sub a                	;.
	ram:626d cd 5a 45       call sub_455ah       	;. Z E
	ram:6270 cd 7e 49       call sub_497eh       	;. ~ I
	ram:6273 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:6276 36 12          ld (hl),012h         	;6 .
	ram:6278 c9             ret                  	;.
	ram:6279 c3 b1 3b       jp 03bb1h            	;. . ;
	ram:627c c3 a5 3b       jp 03ba5h            	;. . ;
	ram:627f d2 8d 3b       jp nc,03b8dh         	;. . ;
	ram:6282 cd 79 3d       call 03d79h          	;. y =
	ram:6285 c3 55 48       jp l4855h            	;. U H
	ram:6288 cd 99 62       call sub_6299h       	;. . b
l628bh:
	ram:628b c3 57 35       jp 03557h            	;. W 5
	ram:628e cd 21 63       call sub_6321h       	;. ! c
	ram:6291 18 f8          jr l628bh            	;. .
	ram:6293 cd 99 62       call sub_6299h       	;. . b
	ram:6296 c3 cd 34       jp 034cdh            	;. . 4
sub_6299h:
	ram:6299 fd cb 11 fe    set 7,(iy+011h)      	;. . . .
	ram:629d 11 ef 31       ld de,031efh         	;. . 1
	ram:62a0 18 03          jr l62a5h            	;. .
sub_62a2h:
	ram:62a2 11 81 32       ld de,03281h         	;. . 2
l62a5h:
	ram:62a5 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:62a9 21 ce 00       ld hl,000ceh         	;! . .
	ram:62ac 37             scf                  	;7
sub_62adh:
	ram:62ad 22 c6 81       ld (081c6h),hl       	;" . .
	ram:62b0 e1             pop hl               	;.
	ram:62b1 f5             push af              	;.
	ram:62b2 d5             push de              	;.
	ram:62b3 cd d1 62       call sub_62d1h       	;. . b
	ram:62b6 cd 0e 63       call sub_630eh       	;. . c
	ram:62b9 21 a3 63       ld hl,l63a3h         	;! . c
	ram:62bc cd 5b 06       call 0065bh          	;. [ .
	ram:62bf cd 99 63       call sub_6399h       	;. . c
	ram:62c2 e1             pop hl               	;.
	ram:62c3 cd 45 3e       call 03e45h          	;. E >
	ram:62c6 cd c1 3d       call 03dc1h          	;. . =
	ram:62c9 cd d2 01       call 001d2h          	;. . .
	ram:62cc f1             pop af               	;.
	ram:62cd dc ea 01       call c,001eah        	;. . .
	ram:62d0 c9             ret                  	;.
sub_62d1h:
	ram:62d1 22 c4 81       ld (081c4h),hl       	;" . .
	ram:62d4 21 dd 81       ld hl,081ddh         	;! . .
	ram:62d7 34             inc (hl)             	;4
	ram:62d8 b7             or a                 	;.
	ram:62d9 cd 81 05       call 00581h          	;. . .
	ram:62dc 21 dd 81       ld hl,081ddh         	;! . .
	ram:62df 35             dec (hl)             	;5
	ram:62e0 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:62e3 22 c0 81       ld (081c0h),hl       	;" . .
	ram:62e6 3a 4b 83       ld a,(0834bh)        	;: K .
	ram:62e9 e6 10          and 010h             	;. .
	ram:62eb 32 c2 81       ld (081c2h),a        	;2 . .
	ram:62ee 3a 58 83       ld a,(08358h)        	;: X .
	ram:62f1 e6 70          and 070h             	;. p
	ram:62f3 32 c3 81       ld (081c3h),a        	;2 . .
	ram:62f6 21 8d 81       ld hl,0818dh         	;! . .
	ram:62f9 11 9b 81       ld de,0819bh         	;. . .
	ram:62fc 01 0e 00       ld bc,0000eh         	;. . .
	ram:62ff ed b0          ldir                 	;. .
	ram:6301 3a 53 83       ld a,(08353h)        	;: S .
	ram:6304 12             ld (de),a            	;.
	ram:6305 21 19 8b       ld hl,08b19h         	;! . .
	ram:6308 11 c8 81       ld de,081c8h         	;. . .
	ram:630b c3 a1 20       jp 020a1h            	;. .  
sub_630eh:
	ram:630e 21 84 80       ld hl,08084h         	;! . .
	ram:6311 22 19 8b       ld (08b19h),hl       	;" . .
	ram:6314 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:6317 21 8c 80       ld hl,0808ch         	;! . .
	ram:631a 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:631d 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:6320 c9             ret                  	;.
sub_6321h:
	ram:6321 e1             pop hl               	;.
	ram:6322 22 c4 81       ld (081c4h),hl       	;" . .
	ram:6325 f5             push af              	;.
	ram:6326 cd a4 46       call l46a4h          	;. . F
	ram:6329 f1             pop af               	;.
	ram:632a 21 0d 80       ld hl,0800dh         	;! . .
	ram:632d 46             ld b,(hl)            	;F
	ram:632e c5             push bc              	;.
	ram:632f 36 0e          ld (hl),00eh         	;6 .
	ram:6331 21 3a 31       ld hl,0313ah         	;! : 1
	ram:6334 cd 45 3e       call 03e45h          	;. E >
	ram:6337 cd cb 33       call 033cbh          	;. . 3
	ram:633a f1             pop af               	;.
	ram:633b 32 0d 80       ld (0800dh),a        	;2 . .
	ram:633e c9             ret                  	;.
sub_633fh:
	ram:633f f5             push af              	;.
	ram:6340 e5             push hl              	;.
	ram:6341 cd 99 63       call sub_6399h       	;. . c
	ram:6344 cd c1 3d       call 03dc1h          	;. . =
	ram:6347 21 4b 83       ld hl,0834bh         	;! K .
	ram:634a 3a c2 81       ld a,(081c2h)        	;: . .
	ram:634d cb a6          res 4,(hl)           	;. .
	ram:634f b6             or (hl)              	;.
	ram:6350 77             ld (hl),a            	;w
	ram:6351 3a 58 83       ld a,(08358h)        	;: X .
	ram:6354 e6 8f          and 08fh             	;. .
	ram:6356 21 c3 81       ld hl,081c3h         	;! . .
	ram:6359 b6             or (hl)              	;.
	ram:635a 32 58 83       ld (08358h),a        	;2 X .
	ram:635d 2a c0 81       ld hl,(081c0h)       	;* . .
	ram:6360 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6363 21 c8 81       ld hl,081c8h         	;! . .
	ram:6366 11 19 8b       ld de,08b19h         	;. . .
	ram:6369 cd a1 20       call 020a1h          	;. .  
	ram:636c 21 9b 81       ld hl,0819bh         	;! . .
	ram:636f 11 8d 81       ld de,0818dh         	;. . .
	ram:6372 01 0e 00       ld bc,0000eh         	;. . .
	ram:6375 ed b0          ldir                 	;. .
	ram:6377 7e             ld a,(hl)            	;~
	ram:6378 32 53 83       ld (08353h),a        	;2 S .
	ram:637b 21 82 80       ld hl,08082h         	;! . .
	ram:637e 06 0b          ld b,00bh            	;. .
l6380h:
	ram:6380 5e             ld e,(hl)            	;^
	ram:6381 23             inc hl               	;#
	ram:6382 56             ld d,(hl)            	;V
	ram:6383 23             inc hl               	;#
	ram:6384 d5             push de              	;.
	ram:6385 10 f9          djnz l6380h          	;. .
	ram:6387 e5             push hl              	;.
	ram:6388 37             scf                  	;7
	ram:6389 cd 81 05       call 00581h          	;. . .
	ram:638c e1             pop hl               	;.
	ram:638d 06 0b          ld b,00bh            	;. .
l638fh:
	ram:638f d1             pop de               	;.
	ram:6390 2b             dec hl               	;+
	ram:6391 72             ld (hl),d            	;r
	ram:6392 2b             dec hl               	;+
	ram:6393 73             ld (hl),e            	;s
	ram:6394 10 f9          djnz l638fh          	;. .
	ram:6396 e1             pop hl               	;.
	ram:6397 f1             pop af               	;.
	ram:6398 c9             ret                  	;.
sub_6399h:
	ram:6399 2a 30 8b       ld hl,(08b30h)       	;* 0 .
	ram:639c 2d             dec l                	;-
	ram:639d 26 00          ld h,000h            	;& .
	ram:639f 22 0c 80       ld (0800ch),hl       	;" . .
	ram:63a2 c9             ret                  	;.
l63a3h:
	ram:63a3 b6             or (hl)              	;.
	ram:63a4 63             ld h,e               	;c
	ram:63a5 b0             or b                 	;.
	ram:63a6 63             ld h,e               	;c
	ram:63a7 d0             ret nc               	;.
	ram:63a8 62             ld h,d               	;b
	ram:63a9 d0             ret nc               	;.
	ram:63aa 62             ld h,d               	;b
	ram:63ab d0             ret nc               	;.
	ram:63ac 62             ld h,d               	;b
	ram:63ad 11 64 0a       ld de,00a64h         	;. d .
	ram:63b0 cd 3f 63       call sub_633fh       	;. ? c
	ram:63b3 c3 63 05       jp 00563h            	;. c .
	ram:63b6 21 0d 80       ld hl,0800dh         	;! . .
	ram:63b9 46             ld b,(hl)            	;F
	ram:63ba c5             push bc              	;.
	ram:63bb 36 0e          ld (hl),00eh         	;6 .
	ram:63bd cd c1 3d       call 03dc1h          	;. . =
	ram:63c0 c1             pop bc               	;.
	ram:63c1 70             ld (hl),b            	;p
	ram:63c2 fe 06          cp 006h              	;. .
	ram:63c4 20 18          jr nz,l63deh         	;.
	ram:63c6 cd d5 46       call l46d5h          	;. . F
	ram:63c9 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:63cc 97             sub a                	;.
	ram:63cd 77             ld (hl),a            	;w
	ram:63ce 11 84 80       ld de,08084h         	;. . .
	ram:63d1 ed 52          sbc hl,de            	;. R
	ram:63d3 28 05          jr z,l63dah          	;( .
	ram:63d5 7d             ld a,l               	;}
	ram:63d6 32 83 80       ld (08083h),a        	;2 . .
	ram:63d9 37             scf                  	;7
l63dah:
	ram:63da 2a c4 81       ld hl,(081c4h)       	;* . .
	ram:63dd e9             jp (hl)              	;.
l63deh:
	ram:63de fe 08          cp 008h              	;. .
	ram:63e0 c2 b1 65       jp nz,l65b1h         	;. . e
	ram:63e3 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:63e6 ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:63ea cd 8e 00       call 0008eh          	;. . .
	ram:63ed 20 14          jr nz,l6403h         	;.
	ram:63ef 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:63f2 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:63f6 cd 8e 00       call 0008eh          	;. . .
	ram:63f9 20 0b          jr nz,l6406h         	;.
	ram:63fb 3e 06          ld a,006h            	;> .
	ram:63fd 32 05 80       ld (08005h),a        	;2 . .
	ram:6400 b7             or a                 	;.
	ram:6401 18 d7          jr l63dah            	;. .
l6403h:
	ram:6403 cd b6 48       call l48b6h          	;. . H
l6406h:
	ram:6406 cd c1 3d       call 03dc1h          	;. . =
	ram:6409 cd 38 46       call sub_4638h       	;. 8 F
	ram:640c fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:6410 c9             ret                  	;.
l6411h:
	ram:6411 38 12          jr c,l6425h          	;8 .
	ram:6413 cd 2c 64       call sub_642ch       	;. , d
	ram:6416 21 0c 80       ld hl,0800ch         	;! . .
	ram:6419 35             dec (hl)             	;5
	ram:641a 46             ld b,(hl)            	;F
	ram:641b 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:641e 4e             ld c,(hl)            	;N
	ram:641f 70             ld (hl),b            	;p
	ram:6420 cd 67 3d       call 03d67h          	;. g =
	ram:6423 71             ld (hl),c            	;q
	ram:6424 c9             ret                  	;.
l6425h:
	ram:6425 cd 79 3d       call 03d79h          	;. y =
	ram:6428 cd 8c 64       call sub_648ch       	;. . d
	ram:642b 37             scf                  	;7
sub_642ch:
	ram:642c 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:642f e5             push hl              	;.
	ram:6430 f5             push af              	;.
	ram:6431 7d             ld a,l               	;}
	ram:6432 2a c0 81       ld hl,(081c0h)       	;* . .
	ram:6435 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6438 21 dd 81       ld hl,081ddh         	;! . .
	ram:643b 34             inc (hl)             	;4
	ram:643c 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:643f 2a a5 81       ld hl,(081a5h)       	;* . .
	ram:6442 22 97 81       ld (08197h),hl       	;" . .
	ram:6445 3a a7 81       ld a,(081a7h)        	;: . .
	ram:6448 32 99 81       ld (08199h),a        	;2 . .
	ram:644b 21 19 8b       ld hl,08b19h         	;! . .
	ram:644e 11 7d 82       ld de,0827dh         	;. } .
	ram:6451 cd a1 20       call 020a1h          	;. .  
	ram:6454 cd 11 21       call 02111h          	;. . !
	ram:6457 21 c8 81       ld hl,081c8h         	;! . .
	ram:645a 11 19 8b       ld de,08b19h         	;. . .
	ram:645d cd a1 20       call 020a1h          	;. .  
	ram:6460 f1             pop af               	;.
	ram:6461 cd 81 05       call 00581h          	;. . .
	ram:6464 21 7d 82       ld hl,0827dh         	;! } .
	ram:6467 11 19 8b       ld de,08b19h         	;. . .
	ram:646a cd a1 20       call 020a1h          	;. .  
	ram:646d e7             rst 20h              	;.
	ram:646e db 05          in a,(005h)          	;. .
	ram:6470 32 99 81       ld (08199h),a        	;2 . .
	ram:6473 21 11 64       ld hl,l6411h         	;! . d
	ram:6476 22 97 81       ld (08197h),hl       	;" . .
	ram:6479 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:647c 22 c0 81       ld (081c0h),hl       	;" . .
	ram:647f 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:6482 34             inc (hl)             	;4
	ram:6483 21 dd 81       ld hl,081ddh         	;! . .
	ram:6486 35             dec (hl)             	;5
	ram:6487 e1             pop hl               	;.
	ram:6488 22 0c 80       ld (0800ch),hl       	;" . .
	ram:648b c9             ret                  	;.
sub_648ch:
	ram:648c 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:648f 4e             ld c,(hl)            	;N
	ram:6490 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6493 77             ld (hl),a            	;w
	ram:6494 cd 93 3b       call 03b93h          	;. . ;
	ram:6497 71             ld (hl),c            	;q
	ram:6498 21 0c 80       ld hl,0800ch         	;! . .
	ram:649b 34             inc (hl)             	;4
	ram:649c c9             ret                  	;.
l649dh:
	ram:649d 11 48 32       ld de,03248h         	;. H 2
	ram:64a0 21 ce 00       ld hl,000ceh         	;! . .
	ram:64a3 37             scf                  	;7
	ram:64a4 cd ad 62       call sub_62adh       	;. . b
	ram:64a7 30 0a          jr nc,l64b3h         	;0 .
l64a9h:
	ram:64a9 cd cd 64       call sub_64cdh       	;. . d
	ram:64ac 30 08          jr nc,l64b6h         	;0 .
	ram:64ae cd 21 63       call sub_6321h       	;. ! c
	ram:64b1 38 f6          jr c,l64a9h          	;8 .
l64b3h:
	ram:64b3 c3 3f 63       jp sub_633fh         	;. ? c
l64b6h:
	ram:64b6 cd 3f 63       call sub_633fh       	;. ? c
	ram:64b9 cd b1 35       call 035b1h          	;. . 5
	ram:64bc fd cb 05 e6    set 4,(iy+005h)      	;. . . .
	ram:64c0 fd cb 0e fe    set 7,(iy+00eh)      	;. . . .
	ram:64c4 fd cb 05 ee    set 5,(iy+005h)      	;. . . .
	ram:64c8 fd cb 05 b6    res 6,(iy+005h)      	;. . . .
	ram:64cc c9             ret                  	;.
sub_64cdh:
	ram:64cd d7             rst 10h              	;.
	ram:64ce 30 47          jr nc,l6517h         	;0 G
	ram:64d0 2a 83 80       ld hl,(08083h)       	;* . .
	ram:64d3 e5             push hl              	;.
	ram:64d4 21 e3 64       ld hl,l64e3h         	;! . d
	ram:64d7 cd b5 0a       call 00ab5h          	;. . .
	ram:64da cd 0b 36       call 0360bh          	;. . 6
	ram:64dd cd db 0a       call 00adbh          	;. . .
	ram:64e0 e1             pop hl               	;.
	ram:64e1 18 13          jr l64f6h            	;. .
l64e3h:
	ram:64e3 e1             pop hl               	;.
	ram:64e4 22 83 80       ld (08083h),hl       	;" . .
	ram:64e7 cd d1 33       call 033d1h          	;. . 3
	ram:64ea 47             ld b,a               	;G
	ram:64eb 3e 8e          ld a,08eh            	;> .
	ram:64ed d8             ret c                	;.
	ram:64ee 78             ld a,b               	;x
	ram:64ef fe 23          cp 023h              	;. #
	ram:64f1 38 08          jr c,l64fbh          	;8 .
	ram:64f3 cd 11 36       call 03611h          	;. . 6
l64f6h:
	ram:64f6 21 82 80       ld hl,08082h         	;! . .
	ram:64f9 97             sub a                	;.
	ram:64fa c9             ret                  	;.
l64fbh:
	ram:64fb 21 84 80       ld hl,08084h         	;! . .
	ram:64fe 7e             ld a,(hl)            	;~
	ram:64ff f5             push af              	;.
	ram:6500 70             ld (hl),b            	;p
	ram:6501 cd 17 36       call 03617h          	;. . 6
	ram:6504 20 08          jr nz,l650eh         	;.
	ram:6506 f1             pop af               	;.
	ram:6507 32 84 80       ld (08084h),a        	;2 . .
	ram:650a 3e 89          ld a,089h            	;> .
	ram:650c 37             scf                  	;7
	ram:650d c9             ret                  	;.
l650eh:
	ram:650e f1             pop af               	;.
	ram:650f 3a 84 80       ld a,(08084h)        	;: . .
	ram:6512 cd 1d 36       call 0361dh          	;. . 6
	ram:6515 97             sub a                	;.
	ram:6516 c9             ret                  	;.
l6517h:
	ram:6517 eb             ex de,hl             	;.
	ram:6518 1a             ld a,(de)            	;.
	ram:6519 e6 1f          and 01fh             	;. .
	ram:651b fe 12          cp 012h              	;. .
	ram:651d 20 08          jr nz,l6527h         	;.
	ram:651f 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:6522 fe 08          cp 008h              	;. .
	ram:6524 3e 12          ld a,012h            	;> .
	ram:6526 c8             ret z                	;.
l6527h:
	ram:6527 fe 0d          cp 00dh              	;. .
	ram:6529 3f             ccf                  	;?
	ram:652a d0             ret nc               	;.
	ram:652b 3e 8a          ld a,08ah            	;> .
	ram:652d c9             ret                  	;.
sub_652eh:
	ram:652e d7             rst 10h              	;.
	ram:652f eb             ex de,hl             	;.
	ram:6530 d0             ret nc               	;.
	ram:6531 cd 21 20       call 02021h          	;. !  
	ram:6534 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:6537 e5             push hl              	;.
	ram:6538 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:653b e5             push hl              	;.
	ram:653c 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:653f e5             push hl              	;.
	ram:6540 21 8f 80       ld hl,0808fh         	;! . .
	ram:6543 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:6546 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:6549 cd c5 3c       call 03cc5h          	;. . <
	ram:654c 3a 84 80       ld a,(08084h)        	;: . .
	ram:654f cd 60 20       call 02060h          	;. `  
	ram:6552 e1             pop hl               	;.
	ram:6553 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:6556 e1             pop hl               	;.
	ram:6557 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:655a e1             pop hl               	;.
	ram:655b 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:655e d6 33          sub 033h             	;. 3
	ram:6560 d8             ret c                	;.
	ram:6561 3c             inc a                	;<
	ram:6562 fe 09          cp 009h              	;. .
	ram:6564 30 07          jr nc,l656dh         	;0 .
	ram:6566 21 83 80       ld hl,08083h         	;! . .
	ram:6569 be             cp (hl)              	;.
	ram:656a 3e 14          ld a,014h            	;> .
	ram:656c c8             ret z                	;.
l656dh:
	ram:656d 37             scf                  	;7
	ram:656e c9             ret                  	;.
sub_656fh:
	ram:656f cd 11 5b       call sub_5b11h       	;. . [
	ram:6572 cd 0e 63       call sub_630eh       	;. . c
	ram:6575 cd ea 01       call 001eah          	;. . .
	ram:6578 21 ce 00       ld hl,000ceh         	;! . .
	ram:657b 22 c6 81       ld (081c6h),hl       	;" . .
	ram:657e fd cb 11 fe    set 7,(iy+011h)      	;. . . .
	ram:6582 fd cb 11 c6    set 0,(iy+011h)      	;. . . .
	ram:6586 c9             ret                  	;.
sub_6587h:
	ram:6587 fe 06          cp 006h              	;. .
	ram:6589 20 13          jr nz,l659eh         	;.
	ram:658b cd d5 46       call l46d5h          	;. . F
	ram:658e 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:6591 11 84 80       ld de,08084h         	;. . .
	ram:6594 b7             or a                 	;.
	ram:6595 ed 52          sbc hl,de            	;. R
	ram:6597 c8             ret z                	;.
	ram:6598 7d             ld a,l               	;}
	ram:6599 32 83 80       ld (08083h),a        	;2 . .
	ram:659c 37             scf                  	;7
	ram:659d c9             ret                  	;.
l659eh:
	ram:659e fe 08          cp 008h              	;. .
	ram:65a0 20 0f          jr nz,l65b1h         	;.
	ram:65a2 cd b6 48       call l48b6h          	;. . H
	ram:65a5 cd c1 3d       call 03dc1h          	;. . =
	ram:65a8 cd 38 46       call sub_4638h       	;. 8 F
	ram:65ab fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:65af b7             or a                 	;.
	ram:65b0 c9             ret                  	;.
l65b1h:
	ram:65b1 fe 02          cp 002h              	;. .
	ram:65b3 20 05          jr nz,l65bah         	;.
	ram:65b5 cd 77 46       call sub_4677h       	;. w F
	ram:65b8 b7             or a                 	;.
	ram:65b9 c9             ret                  	;.
l65bah:
	ram:65ba fe 01          cp 001h              	;. .
	ram:65bc 20 05          jr nz,l65c3h         	;.
	ram:65be cd 93 46       call sub_4693h       	;. . F
	ram:65c1 b7             or a                 	;.
	ram:65c2 c9             ret                  	;.
l65c3h:
	ram:65c3 fe 87          cp 087h              	;. .
	ram:65c5 28 04          jr z,l65cbh          	;( .
	ram:65c7 fe 03          cp 003h              	;. .
	ram:65c9 20 05          jr nz,l65d0h         	;.
l65cbh:
	ram:65cb cd a4 46       call l46a4h          	;. . F
	ram:65ce b7             or a                 	;.
	ram:65cf c9             ret                  	;.
l65d0h:
	ram:65d0 fe 88          cp 088h              	;. .
	ram:65d2 28 04          jr z,l65d8h          	;( .
	ram:65d4 fe 04          cp 004h              	;. .
	ram:65d6 20 05          jr nz,l65ddh         	;.
l65d8h:
	ram:65d8 cd d5 46       call l46d5h          	;. . F
	ram:65db b7             or a                 	;.
	ram:65dc c9             ret                  	;.
l65ddh:
	ram:65dd fe 0a          cp 00ah              	;. .
	ram:65df 20 05          jr nz,l65e6h         	;.
	ram:65e1 cd a2 49       call l49a2h          	;. . I
	ram:65e4 b7             or a                 	;.
	ram:65e5 c9             ret                  	;.
l65e6h:
	ram:65e6 fe 09          cp 009h              	;. .
	ram:65e8 20 0c          jr nz,l65f6h         	;.
	ram:65ea fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:65ee cd b2 45       call sub_45b2h       	;. . E
	ram:65f1 cd 8b 48       call sub_488bh       	;. . H
	ram:65f4 b7             or a                 	;.
	ram:65f5 c9             ret                  	;.
l65f6h:
	ram:65f6 79             ld a,c               	;y
	ram:65f7 b7             or a                 	;.
	ram:65f8 c8             ret z                	;.
	ram:65f9 2a c6 81       ld hl,(081c6h)       	;* . .
	ram:65fc 24             inc h                	;$
	ram:65fd 28 05          jr z,l6604h          	;( .
	ram:65ff 25             dec h                	;%
	ram:6600 cd 77 30       call 03077h          	;. w 0
	ram:6603 c8             ret z                	;.
l6604h:
	ram:6604 79             ld a,c               	;y
	ram:6605 cd cb 47       call l47cbh          	;. . G
	ram:6608 b7             or a                 	;.
	ram:6609 c9             ret                  	;.
	ram:660a 21 4f 66       ld hl,l664fh         	;! O f
	ram:660d cd 58 06       call 00658h          	;. X .
	ram:6610 21 42 32       ld hl,03242h         	;! B 2
	ram:6613 cd 76 53       call sub_5376h       	;. v S
	ram:6616 21 5f 66       ld hl,l665fh         	;! _ f
	ram:6619 cd 13 00       call 00013h          	;. . .
	ram:661c 20 18          jr nz,l6636h         	;.
	ram:661e cd 7a 00       call 0007ah          	;. z .
	ram:6621 20 13          jr nz,l6636h         	;.
	ram:6623 21 74 66       ld hl,l6674h         	;! t f
	ram:6626 cd 7f 00       call 0007fh          	;. . .
	ram:6629 20 0b          jr nz,l6636h         	;.
	ram:662b 21 b6 66       ld hl,l66b6h         	;! . f
	ram:662e cd 84 00       call 00084h          	;. . .
	ram:6631 20 03          jr nz,l6636h         	;.
	ram:6633 21 92 66       ld hl,l6692h         	;! . f
l6636h:
	ram:6636 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:6639 cd 13 00       call 00013h          	;. . .
	ram:663c 28 07          jr z,l6645h          	;( .
	ram:663e 3e 68          ld a,068h            	;> h
	ram:6640 cd 85 3d       call 03d85h          	;. . =
	ram:6643 18 03          jr l6648h            	;. .
l6645h:
	ram:6645 cd 0b 3c       call 03c0bh          	;. . <
l6648h:
	ram:6648 cd 89 53       call sub_5389h       	;. . S
	ram:664b cd 0b 54       call sub_540bh       	;. . T
	ram:664e c9             ret                  	;.
l664fh:
	ram:664f 54             ld d,h               	;T
	ram:6650 54             ld d,h               	;T
	ram:6651 d9             exx                  	;.
	ram:6652 34             inc (hl)             	;4
	ram:6653 02             ld (bc),a            	;.
	ram:6654 58             ld e,b               	;X
	ram:6655 b5             or l                 	;.
	ram:6656 34             inc (hl)             	;4
	ram:6657 b2             or d                 	;.
	ram:6658 58             ld e,b               	;X
	ram:6659 0f             rrca                 	;.
	ram:665a 58             ld e,b               	;X
	ram:665b 0a             ld a,(bc)            	;.
	ram:665c ff             rst 38h              	;.
	ram:665d 00             nop                  	;.
	ram:665e 00             nop                  	;.
l665fh:
	ram:665f 04             inc b                	;.
	ram:6660 fa 32 05       jp m,00532h          	;. 2 .
	ram:6663 f5             push af              	;.
	ram:6664 32 02 ff       ld (0ff02h),a        	;2 . .
	ram:6667 32 06 1d       ld (01d06h),a        	;2 . .
	ram:666a 33             inc sp               	;3
	ram:666b 07             rlca                 	;.
	ram:666c 18 33          jr 53                	;. 3
	ram:666e 03             inc bc               	;.
	ram:666f 22 33 ff       ld (0ff33h),hl       	;" 3 .
	ram:6672 00             nop                  	;.
	ram:6673 00             nop                  	;.
l6674h:
	ram:6674 0f             rrca                 	;.
	ram:6675 3c             inc a                	;<
	ram:6676 33             inc sp               	;3
	ram:6677 10 37          djnz 57              	;. 7
	ram:6679 33             inc sp               	;3
	ram:667a 0b             dec bc               	;.
	ram:667b 41             ld b,c               	;A
	ram:667c 33             inc sp               	;3
	ram:667d 04             inc b                	;.
	ram:667e fa 32 05       jp m,00532h          	;. 2 .
	ram:6681 f5             push af              	;.
	ram:6682 32 02 ff       ld (0ff02h),a        	;2 . .
	ram:6685 32 06 1d       ld (01d06h),a        	;2 . .
	ram:6688 33             inc sp               	;3
	ram:6689 07             rlca                 	;.
	ram:668a 18 33          jr 53                	;. 3
	ram:668c 03             inc bc               	;.
	ram:668d 22 33 ff       ld (0ff33h),hl       	;" 3 .
	ram:6690 00             nop                  	;.
	ram:6691 00             nop                  	;.
l6692h:
	ram:6692 08             ex af,af'            	;.
	ram:6693 9c             sbc a,h              	;.
	ram:6694 32 09 97       ld (09709h),a        	;2 . .
	ram:6697 32 0a b5       ld (0b50ah),a        	;2 . .
	ram:669a 32 0e af       ld (0af0eh),a        	;2 . .
	ram:669d 32 04 fa       ld (0fa04h),a        	;2 . .
	ram:66a0 32 05 f5       ld (0f505h),a        	;2 . .
	ram:66a3 32 02 ff       ld (0ff02h),a        	;2 . .
	ram:66a6 32 06 1d       ld (01d06h),a        	;2 . .
	ram:66a9 33             inc sp               	;3
	ram:66aa 07             rlca                 	;.
	ram:66ab 18 33          jr 53                	;. 3
	ram:66ad 03             inc bc               	;.
	ram:66ae 22 33 20       ld (02033h),hl       	;" 3  
	ram:66b1 02             ld (bc),a            	;.
	ram:66b2 31 ff 00       ld sp,000ffh         	;1 . .
	ram:66b5 00             nop                  	;.
l66b6h:
	ram:66b6 08             ex af,af'            	;.
	ram:66b7 9c             sbc a,h              	;.
	ram:66b8 32 09 97       ld (09709h),a        	;2 . .
	ram:66bb 32 0a b5       ld (0b50ah),a        	;2 . .
	ram:66be 32 04 fa       ld (0fa04h),a        	;2 . .
	ram:66c1 32 05 f5       ld (0f505h),a        	;2 . .
	ram:66c4 32 02 ff       ld (0ff02h),a        	;2 . .
	ram:66c7 32 06 1d       ld (01d06h),a        	;2 . .
	ram:66ca 33             inc sp               	;3
	ram:66cb 07             rlca                 	;.
	ram:66cc 18 33          jr sub_6701h         	;. 3
	ram:66ce 03             inc bc               	;.
	ram:66cf 22 33 ff       ld (0ff33h),hl       	;" 3 .
l66d2h:
	ram:66d2 cd 80 6c       call sub_6c80h       	;. . l
l66d5h:
	ram:66d5 cd 79 6c       call sub_6c79h       	;. y l
	ram:66d8 d7             rst 10h              	;.
	ram:66d9 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:66dc 21 04 5b       ld hl,l5b04h         	;! . [
	ram:66df cd 4a 06       call 0064ah          	;. J .
	ram:66e2 cd 39 3e       call 03e39h          	;. 9 >
	ram:66e5 21 75 32       ld hl,03275h         	;! u 2
	ram:66e8 cd 76 53       call sub_5376h       	;. v S
	ram:66eb 21 f5 31       ld hl,031f5h         	;! . 1
l66eeh:
	ram:66ee cd 14 5b       call sub_5b14h       	;. . [
	ram:66f1 c3 2d 54       jp sub_542dh         	;. - T
l66f4h:
	ram:66f4 80             add a,b              	;.
	ram:66f5 67             ld h,a               	;g
	ram:66f6 d9             exx                  	;.
	ram:66f7 34             inc (hl)             	;4
	ram:66f8 80             add a,b              	;.
	ram:66f9 6c             ld l,h               	;l
	ram:66fa b5             or l                 	;.
	ram:66fb 34             inc (hl)             	;4
	ram:66fc b2             or d                 	;.
	ram:66fd 58             ld e,b               	;X
	ram:66fe fa 6c 0a       jp m,00a6ch          	;. l .
sub_6701h:
	ram:6701 21 00 00       ld hl,00000h         	;! . .
	ram:6704 22 23 8b       ld (08b23h),hl       	;" # .
sub_6707h:
	ram:6707 21 01 01       ld hl,00101h         	;! . .
	ram:670a 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:670d c9             ret                  	;.
l670eh:
	ram:670e cd 79 6c       call sub_6c79h       	;. y l
	ram:6711 d7             rst 10h              	;.
	ram:6712 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:6715 c3 89 04       jp 00489h            	;. . .
l6718h:
	ram:6718 53             ld d,e               	;S
	ram:6719 1c             inc e                	;.
	ram:671a cd 79 6c       call sub_6c79h       	;. y l
	ram:671d eb             ex de,hl             	;.
	ram:671e e5             push hl              	;.
	ram:671f cd 01 2a       call 02a01h          	;. . *
	ram:6722 e1             pop hl               	;.
	ram:6723 22 b9 80       ld (080b9h),hl       	;" . .
	ram:6726 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:672a cd 98 21       call 02198h          	;. . !
	ram:672d fd cb 00 86    res 0,(iy+000h)      	;. . . .
	ram:6731 cd 9b 39       call 0399bh          	;. . 9
	ram:6734 21 0e 67       ld hl,l670eh         	;! . g
	ram:6737 cd b5 0a       call 00ab5h          	;. . .
	ram:673a cd 3b 2e       call 02e3bh          	;. ; .
	ram:673d cd db 0a       call 00adbh          	;. . .
	ram:6740 cd 01 67       call sub_6701h       	;. . g
l6743h:
	ram:6743 21 f4 66       ld hl,l66f4h         	;! . f
	ram:6746 cd 5b 06       call 0065bh          	;. [ .
	ram:6749 cd da 68       call sub_68dah       	;. . h
	ram:674c cd 39 3e       call 03e39h          	;. 9 >
	ram:674f 3e 52          ld a,052h            	;> R
	ram:6751 cd 11 3c       call 03c11h          	;. . <
l6754h:
	ram:6754 cd 74 69       call sub_6974h       	;. t i
	ram:6757 cd c1 3d       call 03dc1h          	;. . =
	ram:675a 3e 01          ld a,001h            	;> .
	ram:675c 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:675f 32 0c 80       ld (0800ch),a        	;2 . .
l6762h:
	ram:6762 cd bb 69       call sub_69bbh       	;. . i
l6765h:
	ram:6765 cd 2d 54       call sub_542dh       	;. - T
	ram:6768 cd a5 6c       call sub_6ca5h       	;. . l
	ram:676b 28 02          jr z,l676fh          	;( .
	ram:676d 38 06          jr c,l6775h          	;8 .
l676fh:
	ram:676f cd 68 69       call sub_6968h       	;. h i
	ram:6772 c3 1a 54       jp l541ah            	;. . T
l6775h:
	ram:6775 c3 25 54       jp l5425h            	;. % T
sub_6778h:
	ram:6778 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:677b 21 21 8b       ld hl,08b21h         	;! ! .
	ram:677e be             cp (hl)              	;.
	ram:677f c9             ret                  	;.
	ram:6780 f5             push af              	;.
	ram:6781 c5             push bc              	;.
	ram:6782 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:6786 cc bc 67       call z,sub_67bch     	;. . g
	ram:6789 c1             pop bc               	;.
	ram:678a f1             pop af               	;.
	ram:678b fe 06          cp 006h              	;. .
	ram:678d 28 04          jr z,l6793h          	;( .
	ram:678f fe 04          cp 004h              	;. .
	ram:6791 20 31          jr nz,l67c4h         	;1
l6793h:
	ram:6793 cd 44 69       call sub_6944h       	;. D i
	ram:6796 cd 78 67       call sub_6778h       	;. x g
	ram:6799 da b1 68       jp c,l68b1h          	;. . h
	ram:679c 34             inc (hl)             	;4
	ram:679d cd 3d 55       call sub_553dh       	;. = U
	ram:67a0 38 17          jr c,l67b9h          	;8 .
	ram:67a2 cd 08 69       call sub_6908h       	;. . i
	ram:67a5 20 1a          jr nz,l67c1h         	;.
	ram:67a7 cd 78 67       call sub_6778h       	;. x g
	ram:67aa d4 f5 56       call nc,sub_56f5h    	;. . V
	ram:67ad cd e1 69       call sub_69e1h       	;. . i
	ram:67b0 cd a5 6c       call sub_6ca5h       	;. . l
	ram:67b3 d4 5c 69       call nc,sub_695ch    	;. \ i
l67b6h:
	ram:67b6 c3 65 67       jp l6765h            	;. e g
l67b9h:
	ram:67b9 32 0c 80       ld (0800ch),a        	;2 . .
sub_67bch:
	ram:67bc cd 08 69       call sub_6908h       	;. . i
	ram:67bf 28 f5          jr z,l67b6h          	;( .
l67c1h:
	ram:67c1 c3 62 67       jp l6762h            	;. b g
l67c4h:
	ram:67c4 fe 03          cp 003h              	;. .
	ram:67c6 c2 3c 68       jp nz,l683ch         	;. < h
	ram:67c9 cd 20 46       call sub_4620h       	;.   F
	ram:67cc 20 09          jr nz,l67d7h         	;.
	ram:67ce cd a5 6c       call sub_6ca5h       	;. . l
	ram:67d1 d0             ret nc               	;.
	ram:67d2 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:67d5 18 03          jr l67dah            	;. .
l67d7h:
	ram:67d7 cd 4c 69       call sub_694ch       	;. L i
l67dah:
	ram:67da 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:67dd fe 02          cp 002h              	;. .
	ram:67df d2 25 68       jp nc,l6825h         	;. % h
	ram:67e2 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:67e5 fe 02          cp 002h              	;. .
	ram:67e7 38 d3          jr c,sub_67bch       	;8 .
	ram:67e9 3d             dec a                	;=
	ram:67ea 32 22 8b       ld (08b22h),a        	;2 " .
	ram:67ed 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:67f0 3c             inc a                	;<
	ram:67f1 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:67f4 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:67f7 be             cp (hl)              	;.
	ram:67f8 38 05          jr c,l67ffh          	;8 .
	ram:67fa 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:67fd d6 01          sub 001h             	;. .
l67ffh:
	ram:67ff 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6802 cd 07 68       call sub_6807h       	;. . h
	ram:6805 18 ba          jr l67c1h            	;. .
sub_6807h:
	ram:6807 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:680a e5             push hl              	;.
	ram:680b cd 8b 3d       call 03d8bh          	;. . =
	ram:680e cd 74 69       call sub_6974h       	;. t i
	ram:6811 18 0a          jr l681dh            	;. .
sub_6813h:
	ram:6813 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:6816 e5             push hl              	;.
	ram:6817 68             ld l,b               	;h
	ram:6818 26 00          ld h,000h            	;& .
	ram:681a 22 0c 80       ld (0800ch),hl       	;" . .
l681dh:
	ram:681d cd c1 3d       call 03dc1h          	;. . =
	ram:6820 e1             pop hl               	;.
	ram:6821 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6824 c9             ret                  	;.
l6825h:
	ram:6825 3d             dec a                	;=
	ram:6826 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:6829 cd 51 55       call sub_5551h       	;. Q U
	ram:682c 30 8b          jr nc,l67b9h         	;0 .
	ram:682e 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:6831 cd f3 6e       call sub_6ef3h       	;. . n
	ram:6834 cd e1 69       call sub_69e1h       	;. . i
	ram:6837 cd 5c 69       call sub_695ch       	;. \ i
l683ah:
	ram:683a 18 80          jr sub_67bch         	;. .
l683ch:
	ram:683c fe 16          cp 016h              	;. .
	ram:683e 20 20          jr nz,l6860h         	;
	ram:6840 cd 44 69       call sub_6944h       	;. D i
	ram:6843 cd a2 62       call sub_62a2h       	;. . b
l6846h:
	ram:6846 cd a1 6b       call sub_6ba1h       	;. . k
	ram:6849 30 ef          jr nc,l683ah         	;0 .
	ram:684b cd 21 63       call sub_6321h       	;. ! c
	ram:684e 18 f6          jr l6846h            	;. .
sub_6850h:
	ram:6850 21 7c 8b       ld hl,08b7ch         	;! | .
	ram:6853 cd 0a 21       call 0210ah          	;. . !
	ram:6856 df             rst 18h              	;.
	ram:6857 cd 56 20       call 02056h          	;. V  
	ram:685a cd af 3a       call 03aafh          	;. . :
	ram:685d c3 0c 6c       jp l6c0ch            	;. . l
l6860h:
	ram:6860 fe c1          cp 0c1h              	;. .
	ram:6862 ca d2 66       jp z,l66d2h          	;. . f
	ram:6865 fe a6          cp 0a6h              	;. .
	ram:6867 ca 25 6a       jp z,l6a25h          	;. % j
	ram:686a fe a9          cp 0a9h              	;. .
	ram:686c 28 1e          jr z,l688ch          	;( .
	ram:686e fe a5          cp 0a5h              	;. .
	ram:6870 28 3c          jr z,l68aeh          	;( <
	ram:6872 fe 8c          cp 08ch              	;. .
	ram:6874 c2 c0 54       jp nz,l54c0h         	;. . T
	ram:6877 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:687a cd 79 6c       call sub_6c79h       	;. y l
	ram:687d d7             rst 10h              	;.
	ram:687e cb 47          bit 0,a              	;. G
	ram:6880 c4 01 3a       call nz,03a01h       	;. . :
	ram:6883 cd 01 67       call sub_6701h       	;. . g
l6886h:
	ram:6886 cd 8b 3d       call 03d8bh          	;. . =
	ram:6889 c3 54 67       jp l6754h            	;. T g
l688ch:
	ram:688c cd 20 46       call sub_4620h       	;.   F
	ram:688f 20 09          jr nz,l689ah         	;.
	ram:6891 cd a5 6c       call sub_6ca5h       	;. . l
	ram:6894 d0             ret nc               	;.
	ram:6895 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:6898 18 03          jr l689dh            	;. .
l689ah:
	ram:689a cd 4c 69       call sub_694ch       	;. L i
l689dh:
	ram:689d 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:68a0 fe 02          cp 002h              	;. .
	ram:68a2 da bc 67       jp c,sub_67bch       	;. . g
	ram:68a5 3d             dec a                	;=
l68a6h:
	ram:68a6 67             ld h,a               	;g
	ram:68a7 2e 01          ld l,001h            	;. .
	ram:68a9 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:68ac 18 d8          jr l6886h            	;. .
l68aeh:
	ram:68ae cd 44 69       call sub_6944h       	;. D i
l68b1h:
	ram:68b1 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:68b4 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:68b7 be             cp (hl)              	;.
	ram:68b8 d2 bc 67       jp nc,sub_67bch      	;. . g
	ram:68bb 21 24 8b       ld hl,08b24h         	;! $ .
	ram:68be be             cp (hl)              	;.
	ram:68bf 28 06          jr z,l68c7h          	;( .
	ram:68c1 d2 bc 67       jp nc,sub_67bch      	;. . g
l68c4h:
	ram:68c4 3c             inc a                	;<
	ram:68c5 18 df          jr l68a6h            	;. .
l68c7h:
	ram:68c7 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:68ca 2b             dec hl               	;+
	ram:68cb be             cp (hl)              	;.
	ram:68cc d2 bc 67       jp nc,sub_67bch      	;. . g
	ram:68cf 97             sub a                	;.
	ram:68d0 77             ld (hl),a            	;w
	ram:68d1 23             inc hl               	;#
	ram:68d2 7e             ld a,(hl)            	;~
	ram:68d3 3c             inc a                	;<
	ram:68d4 77             ld (hl),a            	;w
	ram:68d5 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:68d8 18 ea          jr l68c4h            	;. .
sub_68dah:
	ram:68da fd cb 01 8e    res 1,(iy+001h)      	;. . . .
	ram:68de c9             ret                  	;.
sub_68dfh:
	ram:68df fd cb 01 ce    set 1,(iy+001h)      	;. . . .
	ram:68e3 c9             ret                  	;.
sub_68e4h:
	ram:68e4 fd cb 01 4e    bit 1,(iy+001h)      	;. . . N
	ram:68e8 c9             ret                  	;.
sub_68e9h:
	ram:68e9 cd 1a 2f       call 02f1ah          	;. . /
sub_68ech:
	ram:68ec fd cb 01 86    res 0,(iy+001h)      	;. . . .
	ram:68f0 3a 82 80       ld a,(08082h)        	;: . .
	ram:68f3 f5             push af              	;.
	ram:68f4 df             rst 18h              	;.
	ram:68f5 cd 60 20       call 02060h          	;. `  
	ram:68f8 f1             pop af               	;.
	ram:68f9 e6 01          and 001h             	;. .
	ram:68fb 28 09          jr z,l6906h          	;( .
	ram:68fd d7             rst 10h              	;.
	ram:68fe cb 47          bit 0,a              	;. G
	ram:6900 c0             ret nz               	;.
	ram:6901 fd cb 01 c6    set 0,(iy+001h)      	;. . . .
	ram:6905 c9             ret                  	;.
l6906h:
	ram:6906 d7             rst 10h              	;.
	ram:6907 c9             ret                  	;.
sub_6908h:
	ram:6908 fd cb 01 46    bit 0,(iy+001h)      	;. . . F
	ram:690c c8             ret z                	;.
	ram:690d fd cb 01 86    res 0,(iy+001h)      	;. . . .
	ram:6911 c9             ret                  	;.
sub_6912h:
	ram:6912 cd da 7d       call sub_7ddah       	;. . }
	ram:6915 fd cb 05 6e    bit 5,(iy+005h)      	;. . . n
	ram:6919 28 1e          jr z,l6939h          	;( .
	ram:691b cd e9 68       call sub_68e9h       	;. . h
	ram:691e 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:6921 16 00          ld d,000h            	;. .
	ram:6923 5c             ld e,h               	;\
	ram:6924 42             ld b,d               	;B
	ram:6925 4d             ld c,l               	;M
	ram:6926 e6 1e          and 01eh             	;. .
	ram:6928 fe 06          cp 006h              	;. .
	ram:692a 20 05          jr nz,l6931h         	;.
	ram:692c cd a9 37       call 037a9h          	;. . 7
	ram:692f 18 05          jr l6936h            	;. .
l6931h:
	ram:6931 4b             ld c,e               	;K
	ram:6932 42             ld b,d               	;B
	ram:6933 cd af 37       call 037afh          	;. . 7
l6936h:
	ram:6936 cd 1f 28       call 0281fh          	;. . (
l6939h:
	ram:6939 cd a5 6c       call sub_6ca5h       	;. . l
	ram:693c d0             ret nc               	;.
	ram:693d 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:6940 22 23 8b       ld (08b23h),hl       	;" # .
	ram:6943 c9             ret                  	;.
sub_6944h:
	ram:6944 cd 20 46       call sub_4620h       	;.   F
	ram:6947 20 03          jr nz,sub_694ch      	;.
	ram:6949 33             inc sp               	;3
	ram:694a 33             inc sp               	;3
	ram:694b c9             ret                  	;.
sub_694ch:
	ram:694c 21 89 04       ld hl,00489h         	;! . .
	ram:694f cd b5 0a       call 00ab5h          	;. . .
	ram:6952 cd 12 69       call sub_6912h       	;. . i
	ram:6955 cd 5c 69       call sub_695ch       	;. \ i
	ram:6958 cd db 0a       call 00adbh          	;. . .
	ram:695b c9             ret                  	;.
sub_695ch:
	ram:695c cd 72 7a       call sub_7a72h       	;. r z
	ram:695f cd 68 69       call sub_6968h       	;. h i
	ram:6962 cd a0 7a       call sub_7aa0h       	;. . z
	ram:6965 c3 5a 7a       jp sub_7a5ah         	;. Z z
sub_6968h:
	ram:6968 cd 24 2f       call 02f24h          	;. $ /
	ram:696b d7             rst 10h              	;.
	ram:696c ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:6970 cd 8f 39       call 0398fh          	;. . 9
	ram:6973 c9             ret                  	;.
sub_6974h:
	ram:6974 21 00 00       ld hl,00000h         	;! . .
	ram:6977 22 0c 80       ld (0800ch),hl       	;" . .
	ram:697a 3e 61          ld a,061h            	;> a
	ram:697c cd c5 3f       call 03fc5h          	;. . ?
	ram:697f cd b5 69       call sub_69b5h       	;. . i
	ram:6982 21 58 33       ld hl,03358h         	;! X 3
	ram:6985 cd 45 3e       call 03e45h          	;. E >
	ram:6988 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:698b fe 03          cp 003h              	;. .
	ram:698d 38 07          jr c,l6996h          	;8 .
	ram:698f 3e ce          ld a,0ceh            	;> .
	ram:6991 cd c5 3f       call 03fc5h          	;. . ?
	ram:6994 18 05          jr l699bh            	;. .
l6996h:
	ram:6996 3e 2b          ld a,02bh            	;> +
	ram:6998 cd c5 3f       call 03fc5h          	;. . ?
l699bh:
	ram:699b 3e 61          ld a,061h            	;> a
	ram:699d cd c5 3f       call 03fc5h          	;. . ?
	ram:69a0 cd b5 69       call sub_69b5h       	;. . i
	ram:69a3 3e 2c          ld a,02ch            	;> ,
	ram:69a5 cd d0 5d       call sub_5dd0h       	;. . ]
	ram:69a8 3e 78          ld a,078h            	;> x
	ram:69aa cd d0 5d       call sub_5dd0h       	;. . ]
	ram:69ad cd a6 74       call sub_74a6h       	;. . t
	ram:69b0 3e 62          ld a,062h            	;> b
	ram:69b2 cd c5 3f       call 03fc5h          	;. . ?
sub_69b5h:
	ram:69b5 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:69b8 c3 d6 5d       jp sub_5dd6h         	;. . ]
sub_69bbh:
	ram:69bb cd 0f 6d       call sub_6d0fh       	;. . m
	ram:69be cd db 5d       call sub_5ddbh       	;. . ]
	ram:69c1 18 0c          jr l69cfh            	;. .
l69c3h:
	ram:69c3 cd 0f 6d       call sub_6d0fh       	;. . m
	ram:69c6 cd e1 69       call sub_69e1h       	;. . i
	ram:69c9 cd a5 6c       call sub_6ca5h       	;. . l
	ram:69cc d4 5c 69       call nc,sub_695ch    	;. \ i
l69cfh:
	ram:69cf c3 0f 6d       jp sub_6d0fh         	;. . m
sub_69d2h:
	ram:69d2 3e 01          ld a,001h            	;> .
	ram:69d4 32 0d 80       ld (0800dh),a        	;2 . .
	ram:69d7 3e 78          ld a,078h            	;> x
	ram:69d9 cd c5 3f       call 03fc5h          	;. . ?
	ram:69dc 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:69df 18 1f          jr l6a00h            	;. .
sub_69e1h:
	ram:69e1 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:69e4 4f             ld c,a               	;O
	ram:69e5 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:69e8 be             cp (hl)              	;.
	ram:69e9 28 02          jr z,l69edh          	;( .
	ram:69eb 30 19          jr nc,l6a06h         	;0 .
l69edh:
	ram:69ed 3e 01          ld a,001h            	;> .
	ram:69ef 32 0d 80       ld (0800dh),a        	;2 . .
	ram:69f2 3e 61          ld a,061h            	;> a
	ram:69f4 cd c5 3f       call 03fc5h          	;. . ?
	ram:69f7 cd b5 69       call sub_69b5h       	;. . i
	ram:69fa 3e 2c          ld a,02ch            	;> ,
	ram:69fc cd c5 3f       call 03fc5h          	;. . ?
l69ffh:
	ram:69ff 79             ld a,c               	;y
l6a00h:
	ram:6a00 cd d6 5d       call sub_5dd6h       	;. . ]
	ram:6a03 c3 a6 74       jp sub_74a6h         	;. . t
l6a06h:
	ram:6a06 3e 01          ld a,001h            	;> .
	ram:6a08 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6a0b 3e 62          ld a,062h            	;> b
	ram:6a0d cd c5 3f       call 03fc5h          	;. . ?
	ram:6a10 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:6a13 18 eb          jr l6a00h            	;. .
sub_6a15h:
	ram:6a15 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:6a18 4f             ld c,a               	;O
	ram:6a19 3e 01          ld a,001h            	;> .
	ram:6a1b 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6a1e 3e 78          ld a,078h            	;> x
	ram:6a20 cd c5 3f       call 03fc5h          	;. . ?
	ram:6a23 18 da          jr l69ffh            	;. .
l6a25h:
	ram:6a25 cd 44 69       call sub_6944h       	;. D i
	ram:6a28 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6a2b 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:6a2e be             cp (hl)              	;.
	ram:6a2f da bc 67       jp c,sub_67bch       	;. . g
	ram:6a32 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:6a35 be             cp (hl)              	;.
	ram:6a36 da bc 67       jp c,sub_67bch       	;. . g
	ram:6a39 ca bc 67       jp z,sub_67bch       	;. . g
	ram:6a3c cd be 57       call sub_57beh       	;. . W
	ram:6a3f 21 62 6b       ld hl,l6b62h         	;! b k
	ram:6a42 22 95 81       ld (08195h),hl       	;" . .
	ram:6a45 fd cb 00 86    res 0,(iy+000h)      	;. . . .
	ram:6a49 cd 24 2f       call 02f24h          	;. $ /
	ram:6a4c d7             rst 10h              	;.
	ram:6a4d e6 1f          and 01fh             	;. .
	ram:6a4f fe 07          cp 007h              	;. .
	ram:6a51 20 04          jr nz,l6a57h         	;.
	ram:6a53 fd cb 00 c6    set 0,(iy+000h)      	;. . . .
l6a57h:
	ram:6a57 97             sub a                	;.
	ram:6a58 32 d4 8b       ld (08bd4h),a        	;2 . .
	ram:6a5b 21 89 04       ld hl,00489h         	;! . .
	ram:6a5e cd b5 0a       call 00ab5h          	;. . .
	ram:6a61 cd 73 3a       call 03a73h          	;. s :
	ram:6a64 cd db 0a       call 00adbh          	;. . .
	ram:6a67 cd 4a 2e       call 02e4ah          	;. J .
	ram:6a6a 21 8c 6c       ld hl,l6c8ch         	;! . l
	ram:6a6d 22 91 81       ld (08191h),hl       	;" . .
	ram:6a70 21 ab 58       ld hl,l58abh         	;! . X
	ram:6a73 22 93 81       ld (08193h),hl       	;" . .
	ram:6a76 cd df 68       call sub_68dfh       	;. . h
	ram:6a79 cd 39 3e       call 03e39h          	;. 9 >
	ram:6a7c 3e 53          ld a,053h            	;> S
	ram:6a7e cd 11 3c       call 03c11h          	;. . <
	ram:6a81 cd 24 2f       call 02f24h          	;. $ /
	ram:6a84 d7             rst 10h              	;.
	ram:6a85 eb             ex de,hl             	;.
	ram:6a86 cd 33 00       call 00033h          	;. 3 .
	ram:6a89 22 23 8b       ld (08b23h),hl       	;" # .
	ram:6a8c cd a6 6a       call sub_6aa6h       	;. . j
	ram:6a8f 21 23 6f       ld hl,l6f23h         	;! # o
	ram:6a92 22 97 81       ld (08197h),hl       	;" . .
	ram:6a95 21 cc 6a       ld hl,l6acch         	;! . j
	ram:6a98 22 8d 81       ld (0818dh),hl       	;" . .
	ram:6a9b cd 54 6c       call sub_6c54h       	;. T l
	ram:6a9e 3e 01          ld a,001h            	;> .
	ram:6aa0 32 22 8b       ld (08b22h),a        	;2 " .
	ram:6aa3 c3 fc 6a       jp l6afch            	;. . j
sub_6aa6h:
	ram:6aa6 cd 07 67       call sub_6707h       	;. . g
	ram:6aa9 97             sub a                	;.
	ram:6aaa 32 2f 8b       ld (08b2fh),a        	;2 / .
l6aadh:
	ram:6aad 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6ab0 cd d2 69       call sub_69d2h       	;. . i
	ram:6ab3 cd 61 5d       call sub_5d61h       	;. a ]
	ram:6ab6 cd 01 5d       call sub_5d01h       	;. . ]
	ram:6ab9 c8             ret z                	;.
	ram:6aba d8             ret c                	;.
	ram:6abb 34             inc (hl)             	;4
	ram:6abc 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6abf 3c             inc a                	;<
	ram:6ac0 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:6ac3 be             cp (hl)              	;.
	ram:6ac4 28 02          jr z,l6ac8h          	;( .
	ram:6ac6 18 e5          jr l6aadh            	;. .
l6ac8h:
	ram:6ac8 cd f5 56       call sub_56f5h       	;. . V
	ram:6acb c9             ret                  	;.
l6acch:
	ram:6acc fe 06          cp 006h              	;. .
	ram:6ace 28 04          jr z,l6ad4h          	;( .
	ram:6ad0 fe 04          cp 004h              	;. .
	ram:6ad2 20 3c          jr nz,l6b10h         	;<
l6ad4h:
	ram:6ad4 cd 6c 6c       call sub_6c6ch       	;. l l
	ram:6ad7 cd 61 5d       call sub_5d61h       	;. a ]
	ram:6ada cd f9 5c       call sub_5cf9h       	;. . \
	ram:6add 30 1d          jr nc,l6afch         	;0 .
	ram:6adf 3c             inc a                	;<
	ram:6ae0 32 22 8b       ld (08b22h),a        	;2 " .
	ram:6ae3 cd 3d 55       call sub_553dh       	;. = U
	ram:6ae6 38 11          jr c,l6af9h          	;8 .
	ram:6ae8 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6aeb 21 22 8b       ld hl,08b22h         	;! " .
	ram:6aee be             cp (hl)              	;.
	ram:6aef 28 03          jr z,l6af4h          	;( .
	ram:6af1 d4 f5 56       call nc,sub_56f5h    	;. . V
l6af4h:
	ram:6af4 cd 15 6a       call sub_6a15h       	;. . j
	ram:6af7 18 03          jr l6afch            	;. .
l6af9h:
	ram:6af9 32 0c 80       ld (0800ch),a        	;2 . .
l6afch:
	ram:6afc cd 61 5d       call sub_5d61h       	;. a ]
	ram:6aff fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:6b03 cd 58 6c       call sub_6c58h       	;. X l
	ram:6b06 cd c4 56       call sub_56c4h       	;. . V
	ram:6b09 cd 87 3b       call 03b87h          	;. . ;
	ram:6b0c cd 81 3b       call 03b81h          	;. . ;
	ram:6b0f c9             ret                  	;.
l6b10h:
	ram:6b10 fe 03          cp 003h              	;. .
	ram:6b12 20 24          jr nz,l6b38h         	;$
	ram:6b14 cd 6c 6c       call sub_6c6ch       	;. l l
	ram:6b17 cd 61 5d       call sub_5d61h       	;. a ]
	ram:6b1a 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:6b1d fe 01          cp 001h              	;. .
	ram:6b1f 28 14          jr z,l6b35h          	;( .
	ram:6b21 3d             dec a                	;=
	ram:6b22 32 22 8b       ld (08b22h),a        	;2 " .
	ram:6b25 cd 51 55       call sub_5551h       	;. Q U
	ram:6b28 30 08          jr nc,l6b32h         	;0 .
	ram:6b2a cd f0 6e       call sub_6ef0h       	;. . n
	ram:6b2d cd 15 6a       call sub_6a15h       	;. . j
	ram:6b30 18 03          jr l6b35h            	;. .
l6b32h:
	ram:6b32 32 0c 80       ld (0800ch),a        	;2 . .
l6b35h:
	ram:6b35 c3 fc 6a       jp l6afch            	;. . j
l6b38h:
	ram:6b38 fe 16          cp 016h              	;. .
	ram:6b3a 20 15          jr nz,l6b51h         	;.
	ram:6b3c fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:6b40 cd 61 5d       call sub_5d61h       	;. a ]
	ram:6b43 cd a2 62       call sub_62a2h       	;. . b
l6b46h:
	ram:6b46 cd a1 6b       call sub_6ba1h       	;. . k
	ram:6b49 d2 fc 6a       jp nc,l6afch         	;. . j
	ram:6b4c cd 21 63       call sub_6321h       	;. ! c
	ram:6b4f 18 f5          jr l6b46h            	;. .
l6b51h:
	ram:6b51 fe c1          cp 0c1h              	;. .
	ram:6b53 20 06          jr nz,l6b5bh         	;.
	ram:6b55 cd 8c 6c       call l6c8ch          	;. . l
	ram:6b58 c3 d5 66       jp l66d5h            	;. . f
l6b5bh:
	ram:6b5b fe 8e          cp 08eh              	;. .
	ram:6b5d 20 21          jr nz,l6b80h         	;!
	ram:6b5f cd f4 2d       call 02df4h          	;. . -
l6b62h:
	ram:6b62 cd 1f 28       call 0281fh          	;. . (
	ram:6b65 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6b68 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:6b6b 3c             inc a                	;<
	ram:6b6c 32 23 8b       ld (08b23h),a        	;2 # .
	ram:6b6f cd 07 67       call sub_6707h       	;. . g
	ram:6b72 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:6b76 cd d2 01       call 001d2h          	;. . .
	ram:6b79 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:6b7d c3 43 67       jp l6743h            	;. C g
l6b80h:
	ram:6b80 fe aa          cp 0aah              	;. .
	ram:6b82 28 09          jr z,l6b8dh          	;( .
	ram:6b84 fe ab          cp 0abh              	;. .
	ram:6b86 28 05          jr z,l6b8dh          	;( .
	ram:6b88 fe ac          cp 0ach              	;. .
	ram:6b8a c2 97 5f       jp nz,l5f97h         	;. . _
l6b8dh:
	ram:6b8d 32 23 8b       ld (08b23h),a        	;2 # .
	ram:6b90 cd 45 6c       call sub_6c45h       	;. E l
	ram:6b93 cd ad 62       call sub_62adh       	;. . b
l6b96h:
	ram:6b96 cd c6 6b       call sub_6bc6h       	;. . k
	ram:6b99 d2 fc 6a       jp nc,l6afch         	;. . j
	ram:6b9c cd 21 63       call sub_6321h       	;. ! c
	ram:6b9f 18 f5          jr l6b96h            	;. .
sub_6ba1h:
	ram:6ba1 30 1b          jr nc,l6bbeh         	;0 .
	ram:6ba3 21 b9 6b       ld hl,l6bb9h         	;! . k
	ram:6ba6 cd b5 0a       call 00ab5h          	;. . .
	ram:6ba9 cd f5 1f       call 01ff5h          	;. . .
	ram:6bac 3e 06          ld a,006h            	;> .
	ram:6bae cd 36 7f       call sub_7f36h       	;. 6 .
	ram:6bb1 cd 50 68       call sub_6850h       	;. P h
l6bb4h:
	ram:6bb4 cd db 0a       call 00adbh          	;. . .
	ram:6bb7 97             sub a                	;.
	ram:6bb8 c9             ret                  	;.
l6bb9h:
	ram:6bb9 cd 56 20       call 02056h          	;. V  
	ram:6bbc 37             scf                  	;7
	ram:6bbd c9             ret                  	;.
l6bbeh:
	ram:6bbe cd 62 7c       call sub_7c62h       	;. b |
	ram:6bc1 cd 3f 63       call sub_633fh       	;. ? c
	ram:6bc4 97             sub a                	;.
	ram:6bc5 c9             ret                  	;.
sub_6bc6h:
	ram:6bc6 30 f6          jr nc,l6bbeh         	;0 .
	ram:6bc8 21 b9 6b       ld hl,l6bb9h         	;! . k
	ram:6bcb cd b5 0a       call 00ab5h          	;. . .
	ram:6bce cd f5 1f       call 01ff5h          	;. . .
	ram:6bd1 3e 06          ld a,006h            	;> .
	ram:6bd3 cd 36 7f       call sub_7f36h       	;. 6 .
	ram:6bd6 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:6bd9 fe aa          cp 0aah              	;. .
	ram:6bdb 20 05          jr nz,l6be2h         	;.
	ram:6bdd cd f0 6b       call sub_6bf0h       	;. . k
	ram:6be0 18 d2          jr l6bb4h            	;. .
l6be2h:
	ram:6be2 fe ab          cp 0abh              	;. .
	ram:6be4 20 05          jr nz,l6bebh         	;.
	ram:6be6 cd 0e 6c       call sub_6c0eh       	;. . l
	ram:6be9 18 c9          jr l6bb4h            	;. .
l6bebh:
	ram:6beb cd 35 6c       call sub_6c35h       	;. 5 l
	ram:6bee 18 c4          jr l6bb4h            	;. .
sub_6bf0h:
	ram:6bf0 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6bf3 67             ld h,a               	;g
	ram:6bf4 6f             ld l,a               	;o
	ram:6bf5 cd b5 6c       call sub_6cb5h       	;. . l
	ram:6bf8 cd e3 6c       call sub_6ce3h       	;. . l
	ram:6bfb 32 b9 80       ld (080b9h),a        	;2 . .
	ram:6bfe 32 c1 80       ld (080c1h),a        	;2 . .
l6c01h:
	ram:6c01 cd 89 39       call 03989h          	;. . 9
	ram:6c04 cd ad 39       call 039adh          	;. . 9
	ram:6c07 20 f8          jr nz,l6c01h         	;.
l6c09h:
	ram:6c09 cd f4 2d       call 02df4h          	;. . -
l6c0ch:
	ram:6c0c 18 b0          jr l6bbeh            	;. .
sub_6c0eh:
	ram:6c0e cd af 6c       call sub_6cafh       	;. . l
	ram:6c11 cd e3 6c       call sub_6ce3h       	;. . l
	ram:6c14 32 c2 80       ld (080c2h),a        	;2 . .
	ram:6c17 3c             inc a                	;<
	ram:6c18 32 b9 80       ld (080b9h),a        	;2 . .
	ram:6c1b 3e 01          ld a,001h            	;> .
	ram:6c1d 32 c1 80       ld (080c1h),a        	;2 . .
l6c20h:
	ram:6c20 cd 89 39       call 03989h          	;. . 9
	ram:6c23 cd a5 38       call 038a5h          	;. . 8
	ram:6c26 3a ba 80       ld a,(080bah)        	;: . .
	ram:6c29 d6 01          sub 001h             	;. .
	ram:6c2b 28 dc          jr z,l6c09h          	;( .
	ram:6c2d 32 ba 80       ld (080bah),a        	;2 . .
	ram:6c30 32 c2 80       ld (080c2h),a        	;2 . .
	ram:6c33 18 eb          jr l6c20h            	;. .
sub_6c35h:
	ram:6c35 cd 1a 2f       call 02f1ah          	;. . /
	ram:6c38 cd 6f 2e       call 02e6fh          	;. o .
l6c3bh:
	ram:6c3b cd af 3a       call 03aafh          	;. . :
	ram:6c3e 2a db 8b       ld hl,(08bdbh)       	;* . .
	ram:6c41 cb be          res 7,(hl)           	;. .
	ram:6c43 18 c7          jr l6c0ch            	;. .
sub_6c45h:
	ram:6c45 cd 61 5d       call sub_5d61h       	;. a ]
sub_6c48h:
	ram:6c48 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:6c4c 11 ef 31       ld de,031efh         	;. . 1
	ram:6c4f 21 ce 00       ld hl,000ceh         	;! . .
	ram:6c52 37             scf                  	;7
	ram:6c53 c9             ret                  	;.
sub_6c54h:
	ram:6c54 97             sub a                	;.
	ram:6c55 32 0c 80       ld (0800ch),a        	;2 . .
sub_6c58h:
	ram:6c58 cd c4 56       call sub_56c4h       	;. . V
	ram:6c5b 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:6c5e d6 01          sub 001h             	;. .
	ram:6c60 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6c63 3e 7f          ld a,07fh            	;> .
	ram:6c65 cd c5 3f       call 03fc5h          	;. . ?
	ram:6c68 cd 8d 3e       call 03e8dh          	;. . >
	ram:6c6b c9             ret                  	;.
sub_6c6ch:
	ram:6c6c cd c4 56       call sub_56c4h       	;. . V
	ram:6c6f 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:6c72 3d             dec a                	;=
	ram:6c73 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6c76 c3 a6 74       jp sub_74a6h         	;. . t
sub_6c79h:
	ram:6c79 21 01 26       ld hl,02601h         	;! . &
	ram:6c7c 22 83 80       ld (08083h),hl       	;" . .
	ram:6c7f c9             ret                  	;.
sub_6c80h:
	ram:6c80 21 8c 6c       ld hl,l6c8ch         	;! . l
	ram:6c83 cd b5 0a       call 00ab5h          	;. . .
	ram:6c86 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:6c89 cd db 0a       call 00adbh          	;. . .
l6c8ch:
	ram:6c8c 21 9f 6c       ld hl,l6c9fh         	;! . l
	ram:6c8f cd b5 0a       call 00ab5h          	;. . .
	ram:6c92 cd 1f 28       call 0281fh          	;. . (
	ram:6c95 cd 79 6c       call sub_6c79h       	;. y l
	ram:6c98 d7             rst 10h              	;.
	ram:6c99 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:6c9c cd db 0a       call 00adbh          	;. . .
l6c9fh:
	ram:6c9f cd c3 3e       call 03ec3h          	;. . >
	ram:6ca2 c3 8e 7d       jp l7d8eh            	;. . }
sub_6ca5h:
	ram:6ca5 cd 01 5d       call sub_5d01h       	;. . ]
	ram:6ca8 c0             ret nz               	;.
	ram:6ca9 2b             dec hl               	;+
	ram:6caa 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:6cad be             cp (hl)              	;.
	ram:6cae c9             ret                  	;.
sub_6cafh:
	ram:6caf 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6cb2 6f             ld l,a               	;o
	ram:6cb3 26 01          ld h,001h            	;& .
sub_6cb5h:
	ram:6cb5 e5             push hl              	;.
	ram:6cb6 d7             rst 10h              	;.
	ram:6cb7 38 06          jr c,l6cbfh          	;8 .
	ram:6cb9 cd 49 3a       call 03a49h          	;. I :
	ram:6cbc cd 0b 2c       call 02c0bh          	;. . ,
l6cbfh:
	ram:6cbf e1             pop hl               	;.
	ram:6cc0 3e 01          ld a,001h            	;> .
	ram:6cc2 fd cb 00 46    bit 0,(iy+000h)      	;. . . F
	ram:6cc6 28 0d          jr z,l6cd5h          	;( .
	ram:6cc8 bc             cp h                 	;.
	ram:6cc9 30 05          jr nc,l6cd0h         	;0 .
	ram:6ccb cd 0e 2a       call 02a0eh          	;. . *
	ram:6cce 18 10          jr l6ce0h            	;. .
l6cd0h:
	ram:6cd0 cd cc 29       call 029cch          	;. . )
	ram:6cd3 18 0b          jr l6ce0h            	;. .
l6cd5h:
	ram:6cd5 bc             cp h                 	;.
	ram:6cd6 30 05          jr nc,l6cddh         	;0 .
	ram:6cd8 cd 01 2a       call 02a01h          	;. . *
	ram:6cdb 18 03          jr l6ce0h            	;. .
l6cddh:
	ram:6cdd cd a4 29       call 029a4h          	;. . )
l6ce0h:
	ram:6ce0 c3 3b 2e       jp 02e3bh            	;. ; .
sub_6ce3h:
	ram:6ce3 cd 52 2f       call 02f52h          	;. R /
	ram:6ce6 d7             rst 10h              	;.
	ram:6ce7 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:6ceb cd 24 2f       call 02f24h          	;. $ /
	ram:6cee d7             rst 10h              	;.
	ram:6cef ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:6cf3 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6cf6 32 ba 80       ld (080bah),a        	;2 . .
	ram:6cf9 c9             ret                  	;.
	ram:6cfa cd 0f 6d       call sub_6d0fh       	;. . m
	ram:6cfd 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6d00 32 2a 86       ld (0862ah),a        	;2 * .
	ram:6d03 cd 14 6f       call sub_6f14h       	;. . o
	ram:6d06 cd 26 6d       call sub_6d26h       	;. & m
	ram:6d09 3a 2a 86       ld a,(0862ah)        	;: * .
	ram:6d0c 32 24 8b       ld (08b24h),a        	;2 $ .
sub_6d0fh:
	ram:6d0f ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:6d13 7b             ld a,e               	;{
	ram:6d14 5a             ld e,d               	;Z
	ram:6d15 57             ld d,a               	;W
	ram:6d16 ed 53 21 8b    ld (08b21h),de       	;. S ! .
	ram:6d1a ed 5b 23 8b    ld de,(08b23h)       	;. [ # .
	ram:6d1e 7b             ld a,e               	;{
	ram:6d1f 5a             ld e,d               	;Z
	ram:6d20 57             ld d,a               	;W
	ram:6d21 ed 53 23 8b    ld (08b23h),de       	;. S # .
	ram:6d25 c9             ret                  	;.
sub_6d26h:
	ram:6d26 38 66          jr c,l6d8eh          	;8 f
	ram:6d28 cd bb 3d       call 03dbbh          	;. . =
	ram:6d2b fa 33 6d       jp m,l6d33h          	;. 3 m
	ram:6d2e cd ee 56       call sub_56eeh       	;. . V
	ram:6d31 18 2d          jr l6d60h            	;. -
l6d33h:
	ram:6d33 3e 07          ld a,007h            	;> .
	ram:6d35 90             sub b                	;.
	ram:6d36 47             ld b,a               	;G
	ram:6d37 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6d3a 21 22 8b       ld hl,08b22h         	;! " .
	ram:6d3d 96             sub (hl)             	;.
	ram:6d3e d8             ret c                	;.
	ram:6d3f 21 0c 80       ld hl,0800ch         	;! . .
	ram:6d42 86             add a,(hl)           	;.
	ram:6d43 38 0c          jr c,l6d51h          	;8 .
	ram:6d45 b8             cp b                 	;.
	ram:6d46 d8             ret c                	;.
	ram:6d47 20 08          jr nz,l6d51h         	;.
	ram:6d49 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6d4c 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:6d4f be             cp (hl)              	;.
	ram:6d50 d0             ret nc               	;.
l6d51h:
	ram:6d51 0e 1f          ld c,01fh            	;. .
	ram:6d53 78             ld a,b               	;x
	ram:6d54 c5             push bc              	;.
	ram:6d55 cd 06 57       call l5706h          	;. . W
	ram:6d58 c1             pop bc               	;.
	ram:6d59 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:6d5c fe 0f          cp 00fh              	;. .
	ram:6d5e 28 14          jr z,l6d74h          	;( .
l6d60h:
	ram:6d60 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:6d63 fe 53          cp 053h              	;. S
	ram:6d65 c0             ret nz               	;.
	ram:6d66 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:6d69 7e             ld a,(hl)            	;~
	ram:6d6a f5             push af              	;.
	ram:6d6b 35             dec (hl)             	;5
	ram:6d6c cd 8d 44       call sub_448dh       	;. . D
	ram:6d6f f1             pop af               	;.
	ram:6d70 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:6d73 c9             ret                  	;.
l6d74h:
	ram:6d74 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6d77 fe 05          cp 005h              	;. .
	ram:6d79 c0             ret nz               	;.
	ram:6d7a 0e 07          ld c,007h            	;. .
	ram:6d7c 78             ld a,b               	;x
	ram:6d7d fe 04          cp 004h              	;. .
	ram:6d7f 20 09          jr nz,l6d8ah         	;.
	ram:6d81 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6d84 21 22 8b       ld hl,08b22h         	;! " .
	ram:6d87 be             cp (hl)              	;.
	ram:6d88 c8             ret z                	;.
	ram:6d89 78             ld a,b               	;x
l6d8ah:
	ram:6d8a cd 06 57       call l5706h          	;. . W
	ram:6d8d c9             ret                  	;.
l6d8eh:
	ram:6d8e 3e 07          ld a,007h            	;> .
	ram:6d90 90             sub b                	;.
	ram:6d91 47             ld b,a               	;G
	ram:6d92 cd 13 68       call sub_6813h       	;. . h
	ram:6d95 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:6d98 6f             ld l,a               	;o
	ram:6d99 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6d9c 4f             ld c,a               	;O
	ram:6d9d 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:6da0 b9             cp c                 	;.
	ram:6da1 38 01          jr c,l6da4h          	;8 .
	ram:6da3 4f             ld c,a               	;O
l6da4h:
	ram:6da4 0c             inc c                	;.
	ram:6da5 2c             inc l                	;,
	ram:6da6 28 2c          jr z,l6dd4h          	;( ,
	ram:6da8 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6dab bd             cp l                 	;.
	ram:6dac 38 26          jr c,l6dd4h          	;8 &
	ram:6dae 79             ld a,c               	;y
	ram:6daf b8             cp b                 	;.
	ram:6db0 20 f2          jr nz,l6da4h         	;.
l6db2h:
	ram:6db2 e5             push hl              	;.
	ram:6db3 dd e1          pop ix               	;. .
	ram:6db5 2a 31 8b       ld hl,(08b31h)       	;* 1 .
	ram:6db8 e5             push hl              	;.
	ram:6db9 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:6dbc e5             push hl              	;.
	ram:6dbd 3d             dec a                	;=
	ram:6dbe 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6dc1 cd 01 57       call sub_5701h       	;. . W
	ram:6dc4 21 0c 80       ld hl,0800ch         	;! . .
	ram:6dc7 34             inc (hl)             	;4
	ram:6dc8 cd 06 6e       call sub_6e06h       	;. . n
	ram:6dcb e1             pop hl               	;.
l6dcch:
	ram:6dcc 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6dcf e1             pop hl               	;.
	ram:6dd0 22 31 8b       ld (08b31h),hl       	;" 1 .
	ram:6dd3 c9             ret                  	;.
l6dd4h:
	ram:6dd4 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:6dd7 3d             dec a                	;=
	ram:6dd8 47             ld b,a               	;G
	ram:6dd9 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:6ddc 6f             ld l,a               	;o
	ram:6ddd 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6de0 4f             ld c,a               	;O
	ram:6de1 1e 00          ld e,000h            	;. .
l6de3h:
	ram:6de3 0d             dec c                	;.
	ram:6de4 2d             dec l                	;-
	ram:6de5 c8             ret z                	;.
	ram:6de6 e5             push hl              	;.
	ram:6de7 dd e1          pop ix               	;. .
	ram:6de9 79             ld a,c               	;y
	ram:6dea b8             cp b                 	;.
	ram:6deb 20 f6          jr nz,l6de3h         	;.
l6dedh:
	ram:6ded 2a 31 8b       ld hl,(08b31h)       	;* 1 .
	ram:6df0 e5             push hl              	;.
	ram:6df1 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:6df4 e5             push hl              	;.
	ram:6df5 3c             inc a                	;<
	ram:6df6 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6df9 cd 01 57       call sub_5701h       	;. . W
	ram:6dfc cd 93 3b       call 03b93h          	;. . ;
	ram:6dff cd 06 6e       call sub_6e06h       	;. . n
	ram:6e02 e1             pop hl               	;.
	ram:6e03 2c             inc l                	;,
	ram:6e04 18 c6          jr l6dcch            	;. .
sub_6e06h:
	ram:6e06 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:6e09 fe 10          cp 010h              	;. .
	ram:6e0b ca c2 71       jp z,l71c2h          	;. . q
	ram:6e0e 2a 22 8b       ld hl,(08b22h)       	;* " .
	ram:6e11 e5             push hl              	;.
	ram:6e12 dd e5          push ix              	;. .
	ram:6e14 e1             pop hl               	;.
	ram:6e15 7d             ld a,l               	;}
	ram:6e16 32 22 8b       ld (08b22h),a        	;2 " .
	ram:6e19 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:6e1c fe 0f          cp 00fh              	;. .
	ram:6e1e 28 16          jr z,l6e36h          	;( .
	ram:6e20 fe 53          cp 053h              	;. S
	ram:6e22 28 5f          jr z,l6e83h          	;( _
	ram:6e24 fe 02          cp 002h              	;. .
	ram:6e26 28 6c          jr z,l6e94h          	;( l
	ram:6e28 fe 03          cp 003h              	;. .
	ram:6e2a ca b0 6e       jp z,l6eb0h          	;. . n
	ram:6e2d cd ad 33       call 033adh          	;. . 3
	ram:6e30 cd 5c 69       call sub_695ch       	;. \ i
	ram:6e33 c3 dd 6e       jp l6eddh            	;. . n
l6e36h:
	ram:6e36 cd f9 6e       call sub_6ef9h       	;. . n
	ram:6e39 97             sub a                	;.
	ram:6e3a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6e3d 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6e40 fe 05          cp 005h              	;. .
	ram:6e42 38 2c          jr c,l6e70h          	;8 ,
	ram:6e44 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6e47 fe 05          cp 005h              	;. .
	ram:6e49 20 16          jr nz,l6e61h         	;.
	ram:6e4b 21 22 8b       ld hl,08b22h         	;! " .
	ram:6e4e be             cp (hl)              	;.
	ram:6e4f 20 04          jr nz,l6e55h         	;.
	ram:6e51 3e 07          ld a,007h            	;> .
	ram:6e53 18 18          jr l6e6dh            	;. .
l6e55h:
	ram:6e55 21 0c 80       ld hl,0800ch         	;! . .
	ram:6e58 35             dec (hl)             	;5
	ram:6e59 3e d0          ld a,0d0h            	;> .
	ram:6e5b cd c5 3f       call 03fc5h          	;. . ?
	ram:6e5e 34             inc (hl)             	;4
	ram:6e5f 18 0f          jr l6e70h            	;. .
l6e61h:
	ram:6e61 fe 06          cp 006h              	;. .
	ram:6e63 20 0b          jr nz,l6e70h         	;.
	ram:6e65 21 22 8b       ld hl,08b22h         	;! " .
	ram:6e68 be             cp (hl)              	;.
	ram:6e69 20 05          jr nz,l6e70h         	;.
	ram:6e6b 3e d0          ld a,0d0h            	;> .
l6e6dh:
	ram:6e6d cd c5 3f       call 03fc5h          	;. . ?
l6e70h:
	ram:6e70 cd d9 52       call sub_52d9h       	;. . R
	ram:6e73 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:6e76 21 22 8b       ld hl,08b22h         	;! " .
	ram:6e79 be             cp (hl)              	;.
	ram:6e7a d4 12 51       call nc,sub_5112h    	;. . Q
	ram:6e7d cd e8 6e       call sub_6ee8h       	;. . n
	ram:6e80 c3 e3 6e       jp l6ee3h            	;. . n
l6e83h:
	ram:6e83 cd 07 45       call sub_4507h       	;. . E
	ram:6e86 cd 7d 43       call sub_437dh       	;. } C
	ram:6e89 cd e8 6e       call sub_6ee8h       	;. . n
	ram:6e8c cd f9 6e       call sub_6ef9h       	;. . n
	ram:6e8f cd 8d 44       call sub_448dh       	;. . D
	ram:6e92 18 4f          jr l6ee3h            	;. O
l6e94h:
	ram:6e94 cd e4 68       call sub_68e4h       	;. . h
	ram:6e97 28 08          jr z,l6ea1h          	;( .
	ram:6e99 cd 54 5e       call sub_5e54h       	;. T ^
	ram:6e9c cd 66 5d       call sub_5d66h       	;. f ]
	ram:6e9f 18 3c          jr l6eddh            	;. <
l6ea1h:
	ram:6ea1 cd 3a 5e       call sub_5e3ah       	;. : ^
	ram:6ea4 21 22 8b       ld hl,08b22h         	;! " .
	ram:6ea7 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:6eaa be             cp (hl)              	;.
	ram:6eab d4 55 5d       call nc,sub_5d55h    	;. U ]
	ram:6eae 18 2d          jr l6eddh            	;. -
l6eb0h:
	ram:6eb0 cd e4 68       call sub_68e4h       	;. . h
	ram:6eb3 28 0e          jr z,l6ec3h          	;( .
	ram:6eb5 cd d2 69       call sub_69d2h       	;. . i
	ram:6eb8 cd 0f 6d       call sub_6d0fh       	;. . m
	ram:6ebb cd 61 5d       call sub_5d61h       	;. a ]
	ram:6ebe cd 0f 6d       call sub_6d0fh       	;. . m
	ram:6ec1 18 1a          jr l6eddh            	;. .
l6ec3h:
	ram:6ec3 cd 0f 6d       call sub_6d0fh       	;. . m
	ram:6ec6 cd e1 69       call sub_69e1h       	;. . i
	ram:6ec9 3a 2a 86       ld a,(0862ah)        	;: * .
	ram:6ecc 32 23 8b       ld (08b23h),a        	;2 # .
	ram:6ecf cd a5 6c       call sub_6ca5h       	;. . l
	ram:6ed2 38 03          jr c,l6ed7h          	;8 .
	ram:6ed4 cd 5c 69       call sub_695ch       	;. \ i
l6ed7h:
	ram:6ed7 cd 0f 6d       call sub_6d0fh       	;. . m
	ram:6eda cd 14 6f       call sub_6f14h       	;. . o
l6eddh:
	ram:6edd cd e8 6e       call sub_6ee8h       	;. . n
	ram:6ee0 cd f9 6e       call sub_6ef9h       	;. . n
l6ee3h:
	ram:6ee3 e1             pop hl               	;.
	ram:6ee4 22 22 8b       ld (08b22h),hl       	;" " .
	ram:6ee7 c9             ret                  	;.
sub_6ee8h:
	ram:6ee8 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6eeb 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:6eee be             cp (hl)              	;.
	ram:6eef c0             ret nz               	;.
sub_6ef0h:
	ram:6ef0 3a 22 8b       ld a,(08b22h)        	;: " .
sub_6ef3h:
	ram:6ef3 fe 02          cp 002h              	;. .
	ram:6ef5 d4 ee 56       call nc,sub_56eeh    	;. . V
	ram:6ef8 c9             ret                  	;.
sub_6ef9h:
	ram:6ef9 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6efc 3c             inc a                	;<
	ram:6efd 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:6f00 be             cp (hl)              	;.
	ram:6f01 c0             ret nz               	;.
	ram:6f02 cd f9 5c       call sub_5cf9h       	;. . \
	ram:6f05 dc f5 56       call c,sub_56f5h     	;. . V
	ram:6f08 c9             ret                  	;.
l6f09h:
	ram:6f09 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6f0c 32 23 8b       ld (08b23h),a        	;2 # .
	ram:6f0f cd 14 6f       call sub_6f14h       	;. . o
	ram:6f12 18 2f          jr l6f43h            	;. /
sub_6f14h:
	ram:6f14 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:6f17 3c             inc a                	;<
	ram:6f18 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:6f1b c9             ret                  	;.
l6f1ch:
	ram:6f1c cd 26 6d       call sub_6d26h       	;. & m
	ram:6f1f cd 66 5d       call sub_5d66h       	;. f ]
	ram:6f22 c9             ret                  	;.
l6f23h:
	ram:6f23 cd 26 6d       call sub_6d26h       	;. & m
	ram:6f26 c3 61 5d       jp sub_5d61h         	;. a ]
	ram:6f29 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6f2c 32 23 8b       ld (08b23h),a        	;2 # .
	ram:6f2f 3e 06          ld a,006h            	;> .
	ram:6f31 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:6f34 18 0d          jr l6f43h            	;. .
	ram:6f36 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:6f39 32 23 8b       ld (08b23h),a        	;2 # .
	ram:6f3c f5             push af              	;.
	ram:6f3d c5             push bc              	;.
	ram:6f3e cd 3b 43       call sub_433bh       	;. ; C
	ram:6f41 c1             pop bc               	;.
	ram:6f42 f1             pop af               	;.
l6f43h:
	ram:6f43 cd 26 6d       call sub_6d26h       	;. & m
	ram:6f46 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:6f49 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:6f4c c9             ret                  	;.
l6f4dh:
	ram:6f4d cd 78 7d       call sub_7d78h       	;. x }
l6f50h:
	ram:6f50 21 68 6f       ld hl,l6f68h         	;! h o
	ram:6f53 cd 50 06       call 00650h          	;. P .
	ram:6f56 cd 39 3e       call 03e39h          	;. 9 >
	ram:6f59 cd c3 3e       call 03ec3h          	;. . >
	ram:6f5c 3e 5a          ld a,05ah            	;> Z
	ram:6f5e cd 85 3d       call 03d85h          	;. . =
	ram:6f61 21 a9 31       ld hl,031a9h         	;! . 1
	ram:6f64 cd a7 33       call 033a7h          	;. . 3
	ram:6f67 c9             ret                  	;.
l6f68h:
	ram:6f68 8b             adc a,e              	;.
	ram:6f69 6f             ld l,a               	;o
	ram:6f6a d9             exx                  	;.
	ram:6f6b 34             inc (hl)             	;4
	ram:6f6c d7             rst 10h              	;.
	ram:6f6d 33             inc sp               	;3
	ram:6f6e b5             or l                 	;.
	ram:6f6f 34             inc (hl)             	;4
	ram:6f70 8b             adc a,e              	;.
	ram:6f71 34             inc (hl)             	;4
	ram:6f72 67             ld h,a               	;g
	ram:6f73 6f             ld l,a               	;o
	ram:6f74 0a             ld a,(bc)            	;.
l6f75h:
	ram:6f75 f8             ret m                	;.
	ram:6f76 6f             ld l,a               	;o
	ram:6f77 d9             exx                  	;.
	ram:6f78 34             inc (hl)             	;4
	ram:6f79 5c             ld e,h               	;\
	ram:6f7a 7d             ld a,l               	;}
	ram:6f7b b5             or l                 	;.
	ram:6f7c 34             inc (hl)             	;4
	ram:6f7d b2             or d                 	;.
	ram:6f7e 58             ld e,b               	;X
	ram:6f7f 4b             ld c,e               	;K
	ram:6f80 71             ld (hl),c            	;q
	ram:6f81 0a             ld a,(bc)            	;.
sub_6f82h:
	ram:6f82 cd 4a 2e       call 02e4ah          	;. J .
sub_6f85h:
	ram:6f85 cd d2 01       call 001d2h          	;. . .
	ram:6f88 c3 5a 05       jp 0055ah            	;. Z .
	ram:6f8b fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:6f8f ca 8f 5b       jp z,l5b8fh          	;. . [
	ram:6f92 fe c1          cp 0c1h              	;. .
	ram:6f94 28 b7          jr z,l6f4dh          	;( .
	ram:6f96 cd 87 65       call sub_6587h       	;. . e
	ram:6f99 d0             ret nc               	;.
	ram:6f9a 3e 1e          ld a,01eh            	;> .
	ram:6f9c cd 92 75       call sub_7592h       	;. . u
	ram:6f9f cd 82 6f       call sub_6f82h       	;. . o
	ram:6fa2 cd c3 3e       call 03ec3h          	;. . >
	ram:6fa5 3e 58          ld a,058h            	;> X
	ram:6fa7 cd 85 3d       call 03d85h          	;. . =
	ram:6faa cd 8b 3d       call 03d8bh          	;. . =
	ram:6fad 3e 10          ld a,010h            	;> .
	ram:6faf 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:6fb2 21 a9 31       ld hl,031a9h         	;! . 1
	ram:6fb5 cd 76 53       call sub_5376h       	;. v S
	ram:6fb8 3e 3a          ld a,03ah            	;> :
	ram:6fba cd c5 3f       call 03fc5h          	;. . ?
	ram:6fbd cd 24 2f       call 02f24h          	;. $ /
	ram:6fc0 cd 28 77       call sub_7728h       	;. ( w
	ram:6fc3 21 01 00       ld hl,00001h         	;! . .
	ram:6fc6 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:6fc9 7d             ld a,l               	;}
l6fcah:
	ram:6fca 32 0c 80       ld (0800ch),a        	;2 . .
l6fcdh:
	ram:6fcd cd f8 70       call sub_70f8h       	;. . p
	ram:6fd0 21 75 6f       ld hl,l6f75h         	;! u o
	ram:6fd3 cd 5b 06       call 0065bh          	;. [ .
	ram:6fd6 cd 5d 7b       call sub_7b5dh       	;. ] {
	ram:6fd9 c9             ret                  	;.
l6fdah:
	ram:6fda cd 33 7c       call sub_7c33h       	;. 3 |
	ram:6fdd 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:6fe0 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6fe3 5f             ld e,a               	;_
	ram:6fe4 16 00          ld d,000h            	;. .
	ram:6fe6 cd 8e 00       call 0008eh          	;. . .
	ram:6fe9 30 03          jr nc,l6feeh         	;0 .
	ram:6feb 7d             ld a,l               	;}
	ram:6fec 18 02          jr l6ff0h            	;. .
l6feeh:
	ram:6fee 7b             ld a,e               	;{
	ram:6fef 3d             dec a                	;=
l6ff0h:
	ram:6ff0 18 d8          jr l6fcah            	;. .
sub_6ff2h:
	ram:6ff2 3e 8c          ld a,08ch            	;> .
	ram:6ff4 32 03 80       ld (08003h),a        	;2 . .
	ram:6ff7 c9             ret                  	;.
	ram:6ff8 fe 06          cp 006h              	;. .
	ram:6ffa 28 04          jr z,l7000h          	;( .
	ram:6ffc fe 04          cp 004h              	;. .
	ram:6ffe 20 2e          jr nz,l702eh         	;.
l7000h:
	ram:7000 cd 99 7b       call sub_7b99h       	;. . {
	ram:7003 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7006 23             inc hl               	;#
	ram:7007 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:700a cd 3d 55       call sub_553dh       	;. = U
	ram:700d 38 0a          jr c,l7019h          	;8 .
	ram:700f cd 28 7c       call sub_7c28h       	;. ( |
	ram:7012 28 08          jr z,l701ch          	;( .
	ram:7014 d4 f5 56       call nc,sub_56f5h    	;. . V
	ram:7017 18 03          jr l701ch            	;. .
l7019h:
	ram:7019 32 0c 80       ld (0800ch),a        	;2 . .
l701ch:
	ram:701c cd 08 69       call sub_6908h       	;. . i
	ram:701f 20 ac          jr nz,l6fcdh         	;.
	ram:7021 cd 4c 77       call sub_774ch       	;. L w
	ram:7024 cd 28 7c       call sub_7c28h       	;. ( |
	ram:7027 d4 54 7a       call nc,sub_7a54h    	;. T z
l702ah:
	ram:702a cd 5d 7b       call sub_7b5dh       	;. ] {
	ram:702d c9             ret                  	;.
l702eh:
	ram:702e fe 03          cp 003h              	;. .
	ram:7030 20 50          jr nz,l7082h         	;P
	ram:7032 cd 20 46       call sub_4620h       	;.   F
	ram:7035 20 0d          jr nz,l7044h         	;.
	ram:7037 cd e6 71       call sub_71e6h       	;. . q
	ram:703a d8             ret c                	;.
	ram:703b cd 28 7c       call sub_7c28h       	;. ( |
	ram:703e d0             ret nc               	;.
	ram:703f cd 8f 7b       call sub_7b8fh       	;. . {
	ram:7042 18 03          jr l7047h            	;. .
l7044h:
	ram:7044 cd 99 7b       call sub_7b99h       	;. . {
l7047h:
	ram:7047 cd e6 71       call sub_71e6h       	;. . q
	ram:704a da da 6f       jp c,l6fdah          	;. . o
	ram:704d cc f2 6f       call z,sub_6ff2h     	;. . o
	ram:7050 2b             dec hl               	;+
	ram:7051 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:7054 cd 51 55       call sub_5551h       	;. Q U
	ram:7057 30 1e          jr nc,l7077h         	;0 .
	ram:7059 cd 33 7c       call sub_7c33h       	;. 3 |
	ram:705c ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:7060 97             sub a                	;.
	ram:7061 ed 52          sbc hl,de            	;. R
	ram:7063 bc             cp h                 	;.
	ram:7064 20 09          jr nz,l706fh         	;.
	ram:7066 7d             ld a,l               	;}
	ram:7067 3c             inc a                	;<
	ram:7068 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:706b be             cp (hl)              	;.
	ram:706c dc f9 56       call c,sub_56f9h     	;. . V
l706fh:
	ram:706f cd e6 71       call sub_71e6h       	;. . q
	ram:7072 d4 ee 56       call nc,sub_56eeh    	;. . V
	ram:7075 18 a5          jr l701ch            	;. .
l7077h:
	ram:7077 32 0c 80       ld (0800ch),a        	;2 . .
	ram:707a cd 08 69       call sub_6908h       	;. . i
	ram:707d c2 cd 6f       jp nz,l6fcdh         	;. . o
	ram:7080 18 a8          jr l702ah            	;. .
l7082h:
	ram:7082 fe 16          cp 016h              	;. .
	ram:7084 c8             ret z                	;.
	ram:7085 fe 96          cp 096h              	;. .
	ram:7087 20 1f          jr nz,l70a8h         	;.
	ram:7089 cd 28 7c       call sub_7c28h       	;. ( |
	ram:708c da 4c 79       jp c,l794ch          	;. L y
	ram:708f cd 8f 7b       call sub_7b8fh       	;. . {
	ram:7092 cd f9 56       call sub_56f9h       	;. . V
	ram:7095 cd 24 2f       call 02f24h          	;. $ /
	ram:7098 cd 71 26       call 02671h          	;. q &
	ram:709b ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:709f 21 01 00       ld hl,00001h         	;! . .
	ram:70a2 cd 27 38       call 03827h          	;. ' 8
	ram:70a5 c3 cd 6f       jp l6fcdh            	;. . o
l70a8h:
	ram:70a8 fe 9a          cp 09ah              	;. .
	ram:70aa c2 ce 70       jp nz,l70ceh         	;. . p
	ram:70ad cd 99 7b       call sub_7b99h       	;. . {
	ram:70b0 21 89 04       ld hl,00489h         	;! . .
	ram:70b3 cd b5 0a       call 00ab5h          	;. . .
	ram:70b6 cd 24 2f       call 02f24h          	;. $ /
	ram:70b9 cd 71 26       call 02671h          	;. q &
	ram:70bc ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:70c0 0b             dec bc               	;.
	ram:70c1 21 01 00       ld hl,00001h         	;! . .
	ram:70c4 b7             or a                 	;.
	ram:70c5 cd 21 38       call 03821h          	;. ! 8
l70c8h:
	ram:70c8 cd db 0a       call 00adbh          	;. . .
	ram:70cb c3 cd 6f       jp l6fcdh            	;. . o
l70ceh:
	ram:70ce fe 92          cp 092h              	;. .
	ram:70d0 c2 ed 70       jp nz,l70edh         	;. . p
	ram:70d3 cd 99 7b       call sub_7b99h       	;. . {
	ram:70d6 cd 24 2f       call 02f24h          	;. $ /
	ram:70d9 d7             rst 10h              	;.
	ram:70da cb 47          bit 0,a              	;. G
	ram:70dc ca 2a 70       jp z,l702ah          	;. * p
	ram:70df cd 72 26       call 02672h          	;. r &
	ram:70e2 21 89 04       ld hl,00489h         	;! . .
	ram:70e5 cd b5 0a       call 00ab5h          	;. . .
	ram:70e8 cd 01 3a       call 03a01h          	;. . :
	ram:70eb 18 db          jr l70c8h            	;. .
l70edh:
	ram:70ed fe c1          cp 0c1h              	;. .
	ram:70ef c2 c0 54       jp nz,l54c0h         	;. . T
	ram:70f2 cd 5c 7d       call sub_7d5ch       	;. \ }
	ram:70f5 c3 50 6f       jp l6f50h            	;. P o
sub_70f8h:
	ram:70f8 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:70fb f5             push af              	;.
	ram:70fc cd 8b 3d       call 03d8bh          	;. . =
	ram:70ff f1             pop af               	;.
	ram:7100 f5             push af              	;.
	ram:7101 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7104 e5             push hl              	;.
	ram:7105 3d             dec a                	;=
	ram:7106 5f             ld e,a               	;_
	ram:7107 16 00          ld d,000h            	;. .
	ram:7109 97             sub a                	;.
	ram:710a ed 52          sbc hl,de            	;. R
	ram:710c 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:710f 3e 01          ld a,001h            	;> .
l7111h:
	ram:7111 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7114 cd 4c 77       call sub_774ch       	;. L w
	ram:7117 cd 28 7c       call sub_7c28h       	;. ( |
	ram:711a d4 54 7a       call nc,sub_7a54h    	;. T z
	ram:711d cd f0 71       call sub_71f0h       	;. . q
	ram:7120 cd 28 7c       call sub_7c28h       	;. ( |
	ram:7123 38 1d          jr c,l7142h          	;8 .
	ram:7125 20 09          jr nz,l7130h         	;.
	ram:7127 e1             pop hl               	;.
	ram:7128 e5             push hl              	;.
	ram:7129 cd 8e 00       call 0008eh          	;. . .
	ram:712c 38 14          jr c,l7142h          	;8 .
	ram:712e 28 12          jr z,l7142h          	;( .
l7130h:
	ram:7130 13             inc de               	;.
	ram:7131 ed 53 21 8b    ld (08b21h),de       	;. S ! .
	ram:7135 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7138 3c             inc a                	;<
	ram:7139 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:713c be             cp (hl)              	;.
	ram:713d 38 d2          jr c,l7111h          	;8 .
	ram:713f cd f5 56       call sub_56f5h       	;. . V
l7142h:
	ram:7142 e1             pop hl               	;.
	ram:7143 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:7146 f1             pop af               	;.
	ram:7147 32 0c 80       ld (0800ch),a        	;2 . .
	ram:714a c9             ret                  	;.
	ram:714b 38 30          jr c,l717dh          	;8 0
	ram:714d cd bb 3d       call 03dbbh          	;. . =
	ram:7150 fa 57 71       jp m,l7157h          	;. W q
	ram:7153 cd ee 56       call sub_56eeh       	;. . V
	ram:7156 c9             ret                  	;.
l7157h:
	ram:7157 3e 07          ld a,007h            	;> .
	ram:7159 90             sub b                	;.
	ram:715a 47             ld b,a               	;G
	ram:715b 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:715e 4f             ld c,a               	;O
	ram:715f 2a 21 8b       ld hl,(08b21h)       	;* ! .
l7162h:
	ram:7162 78             ld a,b               	;x
	ram:7163 b9             cp c                 	;.
	ram:7164 38 10          jr c,l7176h          	;8 .
	ram:7166 23             inc hl               	;#
	ram:7167 c5             push bc              	;.
	ram:7168 e5             push hl              	;.
	ram:7169 cd 33 7c       call sub_7c33h       	;. 3 |
	ram:716c d1             pop de               	;.
	ram:716d c1             pop bc               	;.
	ram:716e cd 8e 00       call 0008eh          	;. . .
	ram:7171 d8             ret c                	;.
	ram:7172 eb             ex de,hl             	;.
	ram:7173 0c             inc c                	;.
	ram:7174 18 ec          jr l7162h            	;. .
l7176h:
	ram:7176 0e 1f          ld c,01fh            	;. .
	ram:7178 78             ld a,b               	;x
	ram:7179 cd 06 57       call l5706h          	;. . W
	ram:717c c9             ret                  	;.
l717dh:
	ram:717d 3e 07          ld a,007h            	;> .
	ram:717f 90             sub b                	;.
	ram:7180 47             ld b,a               	;G
	ram:7181 cd 13 68       call sub_6813h       	;. . h
	ram:7184 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7187 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:718a 4f             ld c,a               	;O
l718bh:
	ram:718b 0c             inc c                	;.
	ram:718c 23             inc hl               	;#
	ram:718d c5             push bc              	;.
	ram:718e e5             push hl              	;.
	ram:718f cd 33 7c       call sub_7c33h       	;. 3 |
	ram:7192 d1             pop de               	;.
	ram:7193 eb             ex de,hl             	;.
	ram:7194 c1             pop bc               	;.
	ram:7195 cd 8e 00       call 0008eh          	;. . .
	ram:7198 28 02          jr z,l719ch          	;( .
	ram:719a 30 07          jr nc,l71a3h         	;0 .
l719ch:
	ram:719c 79             ld a,c               	;y
	ram:719d b8             cp b                 	;.
	ram:719e 20 eb          jr nz,l718bh         	;.
	ram:71a0 c3 b2 6d       jp l6db2h            	;. . m
l71a3h:
	ram:71a3 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:71a6 3d             dec a                	;=
	ram:71a7 47             ld b,a               	;G
	ram:71a8 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:71ab 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:71ae 4f             ld c,a               	;O
	ram:71af 11 00 00       ld de,00000h         	;. . .
l71b2h:
	ram:71b2 0d             dec c                	;.
	ram:71b3 2b             dec hl               	;+
	ram:71b4 cd 8e 00       call 0008eh          	;. . .
	ram:71b7 c8             ret z                	;.
	ram:71b8 e5             push hl              	;.
	ram:71b9 dd e1          pop ix               	;. .
	ram:71bb 79             ld a,c               	;y
	ram:71bc b8             cp b                 	;.
	ram:71bd 20 f3          jr nz,l71b2h         	;.
	ram:71bf c3 ed 6d       jp l6dedh            	;. . m
l71c2h:
	ram:71c2 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:71c5 e5             push hl              	;.
	ram:71c6 dd 22 21 8b    ld (08b21h),ix       	;. " ! .
	ram:71ca cd 4c 77       call sub_774ch       	;. L w
	ram:71cd cd 33 7c       call sub_7c33h       	;. 3 |
	ram:71d0 dd e5          push ix              	;. .
	ram:71d2 d1             pop de               	;.
	ram:71d3 cd 8e 00       call 0008eh          	;. . .
	ram:71d6 38 09          jr c,l71e1h          	;8 .
	ram:71d8 cd 54 7a       call sub_7a54h       	;. T z
	ram:71db cd f0 71       call sub_71f0h       	;. . q
	ram:71de cd fe 71       call sub_71feh       	;. . q
l71e1h:
	ram:71e1 e1             pop hl               	;.
	ram:71e2 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:71e5 c9             ret                  	;.
sub_71e6h:
	ram:71e6 11 02 00       ld de,00002h         	;. . .
	ram:71e9 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:71ec cd 8e 00       call 0008eh          	;. . .
	ram:71ef c9             ret                  	;.
sub_71f0h:
	ram:71f0 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:71f3 fe 01          cp 001h              	;. .
	ram:71f5 c0             ret nz               	;.
	ram:71f6 cd e6 71       call sub_71e6h       	;. . q
	ram:71f9 d8             ret c                	;.
	ram:71fa cd ee 56       call sub_56eeh       	;. . V
	ram:71fd c9             ret                  	;.
sub_71feh:
	ram:71fe 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7201 3c             inc a                	;<
	ram:7202 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:7205 be             cp (hl)              	;.
	ram:7206 c0             ret nz               	;.
	ram:7207 cd 28 7c       call sub_7c28h       	;. ( |
	ram:720a d8             ret c                	;.
	ram:720b c8             ret z                	;.
	ram:720c cd f5 56       call sub_56f5h       	;. . V
	ram:720f c9             ret                  	;.
l7210h:
	ram:7210 cd 78 7d       call sub_7d78h       	;. x }
l7213h:
	ram:7213 21 32 72       ld hl,l7232h         	;! 2 r
	ram:7216 cd 50 06       call 00650h          	;. P .
	ram:7219 3e 00          ld a,000h            	;> .
	ram:721b 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:721e cd 24 72       call sub_7224h       	;. $ r
	ram:7221 c3 00 75       jp l7500h            	;. . u
sub_7224h:
	ram:7224 cd 39 3e       call 03e39h          	;. 9 >
	ram:7227 3e 35          ld a,035h            	;> 5
	ram:7229 cd 85 3d       call 03d85h          	;. . =
	ram:722c 3e 01          ld a,001h            	;> .
	ram:722e 32 de 81       ld (081deh),a        	;2 . .
l7231h:
	ram:7231 c9             ret                  	;.
l7232h:
	ram:7232 3f             ccf                  	;?
	ram:7233 72             ld (hl),d            	;r
	ram:7234 d9             exx                  	;.
	ram:7235 34             inc (hl)             	;4
	ram:7236 d7             rst 10h              	;.
	ram:7237 33             inc sp               	;3
	ram:7238 b5             or l                 	;.
	ram:7239 34             inc (hl)             	;4
	ram:723a 8b             adc a,e              	;.
	ram:723b 34             inc (hl)             	;4
	ram:723c 31 72 0a       ld sp,00a72h         	;1 r .
	ram:723f fe 03          cp 003h              	;. .
	ram:7241 28 09          jr z,l724ch          	;( .
	ram:7243 fe 06          cp 006h              	;. .
	ram:7245 28 05          jr z,l724ch          	;( .
	ram:7247 fe 04          cp 004h              	;. .
	ram:7249 c2 af 72       jp nz,l72afh         	;. . r
l724ch:
	ram:724c cd fc 7d       call sub_7dfch       	;. . }
	ram:724f c8             ret z                	;.
	ram:7250 3e 04          ld a,004h            	;> .
	ram:7252 cd c5 7d       call sub_7dc5h       	;. . }
	ram:7255 21 89 04       ld hl,00489h         	;! . .
	ram:7258 cd b5 0a       call 00ab5h          	;. . .
	ram:725b d7             rst 10h              	;.
	ram:725c da 38 0a       jp c,00a38h          	;. 8 .
	ram:725f e6 1f          and 01fh             	;. .
	ram:7261 cd 49 3a       call 03a49h          	;. I :
	ram:7264 fe 04          cp 004h              	;. .
	ram:7266 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:7269 cf             rst 8                	;.
	ram:726a cd d1 7c       call sub_7cd1h       	;. . |
	ram:726d cd 95 20       call 02095h          	;. .  
	ram:7270 cd db 0a       call 00adbh          	;. . .
	ram:7273 c3 eb 75       jp l75ebh            	;. . u
l7276h:
	ram:7276 cd f0 7c       call sub_7cf0h       	;. . |
	ram:7279 ca 10 72       jp z,l7210h          	;. . r
	ram:727c cd fa 7c       call sub_7cfah       	;. . |
	ram:727f cd 24 72       call sub_7224h       	;. $ r
	ram:7282 3e 37          ld a,037h            	;> 7
	ram:7284 cd 85 3d       call 03d85h          	;. . =
	ram:7287 cd 00 77       call sub_7700h       	;. . w
	ram:728a 21 bd 72       ld hl,l72bdh         	;! . r
	ram:728d 22 8d 81       ld (0818dh),hl       	;" . .
	ram:7290 21 a4 7d       ld hl,l7da4h         	;! . }
	ram:7293 22 91 81       ld (08191h),hl       	;" . .
	ram:7296 21 31 72       ld hl,l7231h         	;! 1 r
	ram:7299 22 97 81       ld (08197h),hl       	;" . .
	ram:729c 21 b4 72       ld hl,l72b4h         	;! . r
	ram:729f 22 95 81       ld (08195h),hl       	;" . .
	ram:72a2 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
sub_72a6h:
	ram:72a6 3a 54 83       ld a,(08354h)        	;: T .
	ram:72a9 e6 c0          and 0c0h             	;. .
	ram:72ab 32 54 83       ld (08354h),a        	;2 T .
	ram:72ae c9             ret                  	;.
l72afh:
	ram:72af fe c1          cp 0c1h              	;. .
	ram:72b1 c2 00 78       jp nz,l7800h         	;. . x
l72b4h:
	ram:72b4 cd 8f 7b       call sub_7b8fh       	;. . {
l72b7h:
	ram:72b7 cd 84 7d       call sub_7d84h       	;. . }
	ram:72ba c3 13 72       jp l7213h            	;. . r
l72bdh:
	ram:72bd fe 02          cp 002h              	;. .
	ram:72bf 20 0e          jr nz,l72cfh         	;.
	ram:72c1 fd cb 0e 66    bit 4,(iy+00eh)      	;. . . f
	ram:72c5 c8             ret z                	;.
	ram:72c6 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:72c9 2b             dec hl               	;+
	ram:72ca 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:72cd 18 10          jr l72dfh            	;. .
l72cfh:
	ram:72cf fe 01          cp 001h              	;. .
	ram:72d1 20 1b          jr nz,l72eeh         	;.
	ram:72d3 fd cb 0e 6e    bit 5,(iy+00eh)      	;. . . n
	ram:72d7 c8             ret z                	;.
	ram:72d8 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:72db 23             inc hl               	;#
	ram:72dc 22 32 8b       ld (08b32h),hl       	;" 2 .
l72dfh:
	ram:72df 97             sub a                	;.
	ram:72e0 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:72e3 cd 81 3b       call 03b81h          	;. . ;
	ram:72e6 cd 12 26       call 02612h          	;. . &
	ram:72e9 d7             rst 10h              	;.
	ram:72ea cd ef 33       call 033efh          	;. . 3
	ram:72ed c9             ret                  	;.
l72eeh:
	ram:72ee fe ad          cp 0adh              	;. .
	ram:72f0 20 4c          jr nz,l733eh         	;L
	ram:72f2 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:72f6 c8             ret z                	;.
	ram:72f7 cd aa 26       call 026aah          	;. . &
	ram:72fa c0             ret nz               	;.
	ram:72fb cd 91 37       call 03791h          	;. . 7
	ram:72fe d7             rst 10h              	;.
	ram:72ff d8             ret c                	;.
	ram:7300 cd ed 73       call sub_73edh       	;. . s
	ram:7303 cd 48 6c       call sub_6c48h       	;. H l
	ram:7306 cd ad 62       call sub_62adh       	;. . b
l7309h:
	ram:7309 cd 17 73       call sub_7317h       	;. . s
	ram:730c 30 05          jr nc,l7313h         	;0 .
	ram:730e cd 21 63       call sub_6321h       	;. ! c
	ram:7311 18 f6          jr l7309h            	;. .
l7313h:
	ram:7313 cd ed 73       call sub_73edh       	;. . s
	ram:7316 c9             ret                  	;.
sub_7317h:
	ram:7317 30 1e          jr nc,l7337h         	;0 .
	ram:7319 21 b9 6b       ld hl,l6bb9h         	;! . k
	ram:731c cd b5 0a       call 00ab5h          	;. . .
	ram:731f cd f5 1f       call 01ff5h          	;. . .
	ram:7322 3e 0a          ld a,00ah            	;> .
	ram:7324 cd 36 7f       call sub_7f36h       	;. 6 .
	ram:7327 cf             rst 8                	;.
	ram:7328 cd 91 37       call 03791h          	;. . 7
	ram:732b cd 4a 2e       call 02e4ah          	;. J .
	ram:732e cd 95 20       call 02095h          	;. .  
	ram:7331 cd af 3a       call 03aafh          	;. . :
	ram:7334 cd db 0a       call 00adbh          	;. . .
l7337h:
	ram:7337 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:733b c3 be 6b       jp l6bbeh            	;. . k
l733eh:
	ram:733e fe c1          cp 0c1h              	;. .
	ram:7340 c0             ret nz               	;.
	ram:7341 7b             ld a,e               	;{
	ram:7342 fe 09          cp 009h              	;. .
	ram:7344 d0             ret nc               	;.
	ram:7345 b7             or a                 	;.
	ram:7346 ca b7 72       jp z,l72b7h          	;. . r
	ram:7349 3d             dec a                	;=
	ram:734a 20 35          jr nz,l7381h         	;5
	ram:734c fd cb 09 ee    set 5,(iy+009h)      	;. . . .
	ram:7350 cd 43 2f       call 02f43h          	;. C /
	ram:7353 cd 4a 2e       call 02e4ah          	;. J .
	ram:7356 cd 43 2f       call 02f43h          	;. C /
	ram:7359 3e 02          ld a,002h            	;> .
	ram:735b 06 00          ld b,000h            	;. .
	ram:735d cd 5d 38       call 0385dh          	;. ] 8
	ram:7360 cd 0a 74       call sub_740ah       	;. . t
l7363h:
	ram:7363 cd 70 74       call sub_7470h       	;. p t
	ram:7366 cd a6 74       call sub_74a6h       	;. . t
	ram:7369 cd d5 74       call sub_74d5h       	;. . t
	ram:736c 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:736f fe 01          cp 001h              	;. .
	ram:7371 c8             ret z                	;.
	ram:7372 fe 06          cp 006h              	;. .
	ram:7374 20 01          jr nz,l7377h         	;.
	ram:7376 97             sub a                	;.
l7377h:
	ram:7377 3c             inc a                	;<
	ram:7378 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:737b cd 93 74       call sub_7493h       	;. . t
	ram:737e c3 63 73       jp l7363h            	;. c s
l7381h:
	ram:7381 fd cb 09 ae    res 5,(iy+009h)      	;. . . .
	ram:7385 3d             dec a                	;=
	ram:7386 32 de 80       ld (080deh),a        	;2 . .
	ram:7389 cd 43 2f       call 02f43h          	;. C /
	ram:738c cd 4a 2e       call 02e4ah          	;. J .
	ram:738f cd 43 2f       call 02f43h          	;. C /
	ram:7392 3a de 80       ld a,(080deh)        	;: . .
	ram:7395 47             ld b,a               	;G
	ram:7396 3e 02          ld a,002h            	;> .
	ram:7398 cd 5d 38       call 0385dh          	;. ] 8
	ram:739b cd fa 73       call sub_73fah       	;. . s
	ram:739e 3a de 80       ld a,(080deh)        	;: . .
	ram:73a1 fe 04          cp 004h              	;. .
	ram:73a3 30 31          jr nc,l73d6h         	;0 1
sub_73a5h:
	ram:73a5 3e 07          ld a,007h            	;> .
	ram:73a7 cd a3 74       call sub_74a3h       	;. . t
	ram:73aa 3e 0e          ld a,00eh            	;> .
	ram:73ac cd d2 74       call sub_74d2h       	;. . t
	ram:73af cd 93 74       call sub_7493h       	;. . t
	ram:73b2 3e 08          ld a,008h            	;> .
	ram:73b4 cd a3 74       call sub_74a3h       	;. . t
	ram:73b7 3e 0f          ld a,00fh            	;> .
	ram:73b9 cd d2 74       call sub_74d2h       	;. . t
	ram:73bc cd 93 74       call sub_7493h       	;. . t
	ram:73bf 3e 09          ld a,009h            	;> .
	ram:73c1 cd a3 74       call sub_74a3h       	;. . t
	ram:73c4 3e 0d          ld a,00dh            	;> .
	ram:73c6 cd d2 74       call sub_74d2h       	;. . t
	ram:73c9 cd 93 74       call sub_7493h       	;. . t
	ram:73cc 3e 01          ld a,001h            	;> .
	ram:73ce cd a3 74       call sub_74a3h       	;. . t
	ram:73d1 3e 01          ld a,001h            	;> .
	ram:73d3 c3 d2 74       jp sub_74d2h         	;. . t
l73d6h:
	ram:73d6 cd 89 74       call sub_7489h       	;. . t
	ram:73d9 cd 9d 74       call sub_749dh       	;. . t
	ram:73dc 3e 10          ld a,010h            	;> .
	ram:73de 32 9e 8b       ld (08b9eh),a        	;2 . .
l73e1h:
	ram:73e1 cd 03 74       call sub_7403h       	;. . t
	ram:73e4 cd 12 26       call 02612h          	;. . &
	ram:73e7 d7             rst 10h              	;.
	ram:73e8 d8             ret c                	;.
	ram:73e9 cd e3 3c       call 03ce3h          	;. . <
	ram:73ec c9             ret                  	;.
sub_73edh:
	ram:73ed 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:73f0 fe 10          cp 010h              	;. .
	ram:73f2 c0             ret nz               	;.
	ram:73f3 3e 02          ld a,002h            	;> .
	ram:73f5 32 0c 80       ld (0800ch),a        	;2 . .
	ram:73f8 18 e7          jr l73e1h            	;. .
sub_73fah:
	ram:73fa cd 0a 74       call sub_740ah       	;. . t
sub_73fdh:
	ram:73fd 3a de 80       ld a,(080deh)        	;: . .
	ram:7400 cd 68 74       call sub_7468h       	;. h t
sub_7403h:
	ram:7403 cd 1b 74       call sub_741bh       	;. . t
	ram:7406 30 0e          jr nc,l7416h         	;0 .
	ram:7408 18 09          jr l7413h            	;. .
sub_740ah:
	ram:740a cd 8b 3d       call 03d8bh          	;. . =
	ram:740d 3e 02          ld a,002h            	;> .
	ram:740f 32 21 8b       ld (08b21h),a        	;2 ! .
sub_7412h:
	ram:7412 97             sub a                	;.
l7413h:
	ram:7413 32 0c 80       ld (0800ch),a        	;2 . .
l7416h:
	ram:7416 97             sub a                	;.
	ram:7417 32 0d 80       ld (0800dh),a        	;2 . .
	ram:741a c9             ret                  	;.
sub_741bh:
	ram:741b 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:741e 3c             inc a                	;<
	ram:741f 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:7422 be             cp (hl)              	;.
	ram:7423 d8             ret c                	;.
	ram:7424 cd 67 3d       call 03d67h          	;. g =
	ram:7427 97             sub a                	;.
	ram:7428 c9             ret                  	;.
	ram:7429 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:742d 28 37          jr z,l7466h          	;( 7
	ram:742f cd 0d 26       call 0260dh          	;. . &
	ram:7432 d7             rst 10h              	;.
	ram:7433 d8             ret c                	;.
	ram:7434 cd 6f 3e       call 03e6fh          	;. o >
	ram:7437 3e 02          ld a,002h            	;> .
	ram:7439 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:743c cd aa 26       call 026aah          	;. . &
	ram:743f 20 20          jr nz,l7461h         	;
	ram:7441 cd fd 73       call sub_73fdh       	;. . s
	ram:7444 3a de 80       ld a,(080deh)        	;: . .
	ram:7447 fe 04          cp 004h              	;. .
	ram:7449 38 11          jr c,l745ch          	;8 .
	ram:744b cd 89 74       call sub_7489h       	;. . t
	ram:744e cd a1 74       call sub_74a1h       	;. . t
	ram:7451 21 21 32       ld hl,03221h         	;! ! 2
	ram:7454 cd 45 3e       call 03e45h          	;. E >
l7457h:
	ram:7457 cd 03 74       call sub_7403h       	;. . t
	ram:745a 97             sub a                	;.
	ram:745b c9             ret                  	;.
l745ch:
	ram:745c cd a5 73       call sub_73a5h       	;. . s
	ram:745f 18 f6          jr l7457h            	;. .
l7461h:
	ram:7461 cd 63 73       call l7363h          	;. c s
	ram:7464 18 f1          jr l7457h            	;. .
l7466h:
	ram:7466 37             scf                  	;7
	ram:7467 c9             ret                  	;.
sub_7468h:
	ram:7468 21 c4 74       ld hl,074c4h         	;! . t
	ram:746b 18 10          jr l747dh            	;. .
sub_746dh:
	ram:746d 32 21 8b       ld (08b21h),a        	;2 ! .
sub_7470h:
	ram:7470 21 ac 74       ld hl,l74ach         	;! . t
	ram:7473 3e 20          ld a,020h            	;>  
	ram:7475 cd c5 3f       call 03fc5h          	;. . ?
	ram:7478 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:747b d6 01          sub 001h             	;. .
l747dh:
	ram:747d 87             add a,a              	;.
	ram:747e 16 00          ld d,000h            	;. .
	ram:7480 5f             ld e,a               	;_
l7481h:
	ram:7481 19             add hl,de            	;.
	ram:7482 cd 33 00       call 00033h          	;. 3 .
	ram:7485 cd 45 3e       call 03e45h          	;. E >
	ram:7488 c9             ret                  	;.
sub_7489h:
	ram:7489 3e 01          ld a,001h            	;> .
	ram:748b cd a3 74       call sub_74a3h       	;. . t
	ram:748e 3e 01          ld a,001h            	;> .
	ram:7490 cd d2 74       call sub_74d2h       	;. . t
sub_7493h:
	ram:7493 fd cb 05 56    bit 2,(iy+005h)      	;. . . V
	ram:7497 c2 16 74       jp nz,l7416h         	;. . t
	ram:749a c3 03 74       jp sub_7403h         	;. . t
sub_749dh:
	ram:749d 3e 0a          ld a,00ah            	;> .
	ram:749f 18 02          jr sub_74a3h         	;. .
sub_74a1h:
	ram:74a1 3e 0b          ld a,00bh            	;> .
sub_74a3h:
	ram:74a3 cd 6d 74       call sub_746dh       	;. m t
sub_74a6h:
	ram:74a6 3e 3d          ld a,03dh            	;> =
	ram:74a8 cd c5 3f       call 03fc5h          	;. . ?
	ram:74ab c9             ret                  	;.
l74ach:
	ram:74ac e8             ret pe               	;.
	ram:74ad 31 04 33       ld sp,03304h         	;1 . 3
	ram:74b0 47             ld b,a               	;G
	ram:74b1 33             inc sp               	;3
	ram:74b2 4a             ld c,d               	;J
	ram:74b3 33             inc sp               	;3
	ram:74b4 91             sub c                	;.
	ram:74b5 32 4e 33       ld (0334eh),a        	;2 N 3
	ram:74b8 a4             and h                	;.
	ram:74b9 30 c6          jr nc,l7481h         	;0 .
	ram:74bb 30 39          jr nc,59             	;0 9
	ram:74bd 32 21 32       ld (03221h),a        	;2 ! 2
	ram:74c0 d6 30          sub 030h             	;. 0
	ram:74c2 ea 31 a4       jp pe,0a431h         	;. 1 .
	ram:74c5 31 4c 31       ld sp,0314ch         	;1 L 1
	ram:74c8 c3 31 34       jp 03431h            	;. 1 4
	ram:74cb 32 0a 32       ld (0320ah),a        	;2 . 2
	ram:74ce 10 32          djnz l7502h          	;. 2
	ram:74d0 16 32          ld d,032h            	;. 2
sub_74d2h:
	ram:74d2 32 21 8b       ld (08b21h),a        	;2 ! .
sub_74d5h:
	ram:74d5 cd 0d 26       call 0260dh          	;. . &
	ram:74d8 d7             rst 10h              	;.
	ram:74d9 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:74dc 26 00          ld h,000h            	;& .
	ram:74de cd 2f 39       call 0392fh          	;. / 9
	ram:74e1 cd 72 7a       call sub_7a72h       	;. r z
	ram:74e4 cd a6 72       call sub_72a6h       	;. . r
	ram:74e7 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:74eb 3e 15          ld a,015h            	;> .
	ram:74ed 21 31 8b       ld hl,08b31h         	;! 1 .
	ram:74f0 96             sub (hl)             	;.
	ram:74f1 c3 7e 5d       jp l5d7eh            	;. ~ ]
l74f4h:
	ram:74f4 cd 78 7d       call sub_7d78h       	;. x }
l74f7h:
	ram:74f7 21 7d 75       ld hl,l757dh         	;! } u
	ram:74fa cd 50 06       call 00650h          	;. P .
	ram:74fd cd e0 76       call sub_76e0h       	;. . v
l7500h:
	ram:7500 3e 36          ld a,036h            	;> 6
l7502h:
	ram:7502 cd 85 3d       call 03d85h          	;. . =
l7505h:
	ram:7505 cd 76 04       call 00476h          	;. v .
	ram:7508 cd 12 74       call sub_7412h       	;. . t
	ram:750b 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:750e cd 72 7c       call sub_7c72h       	;. r |
	ram:7511 38 f2          jr c,l7505h          	;8 .
	ram:7513 21 ef 32       ld hl,032efh         	;! . 2
	ram:7516 cd 36 77       call sub_7736h       	;. 6 w
	ram:7519 cd 03 74       call sub_7403h       	;. . t
	ram:751c cd 6a 7c       call sub_7c6ah       	;. j |
	ram:751f 38 e4          jr c,l7505h          	;8 .
	ram:7521 21 12 33       ld hl,03312h         	;! . 3
	ram:7524 cd 36 77       call sub_7736h       	;. 6 w
l7527h:
	ram:7527 cd 12 74       call sub_7412h       	;. . t
	ram:752a 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:752d cb 87          res 0,a              	;. .
	ram:752f 32 9e 8b       ld (08b9eh),a        	;2 . .
l7532h:
	ram:7532 cd ea 01       call 001eah          	;. . .
	ram:7535 cd e2 7c       call sub_7ce2h       	;. . |
	ram:7538 28 05          jr z,l753fh          	;( .
	ram:753a cd 24 2f       call 02f24h          	;. $ /
	ram:753d 18 03          jr l7542h            	;. .
l753fh:
	ram:753f cd 43 2f       call 02f43h          	;. C /
l7542h:
	ram:7542 cd 0e 63       call sub_630eh       	;. . c
	ram:7545 fd cb 0c c6    set 0,(iy+00ch)      	;. . . .
	ram:7549 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:754c 22 35 83       ld (08335h),hl       	;" 5 .
	ram:754f 3a 50 83       ld a,(08350h)        	;: P .
	ram:7552 32 51 83       ld (08351h),a        	;2 Q .
	ram:7555 21 83 80       ld hl,08083h         	;! . .
	ram:7558 5e             ld e,(hl)            	;^
	ram:7559 23             inc hl               	;#
	ram:755a 44             ld b,h               	;D
	ram:755b 4d             ld c,l               	;M
	ram:755c 16 00          ld d,000h            	;. .
	ram:755e 19             add hl,de            	;.
	ram:755f 36 00          ld (hl),000h         	;6 .
	ram:7561 cd 81 45       call sub_4581h       	;. . E
	ram:7564 fd cb 0c 86    res 0,(iy+00ch)      	;. . . .
	ram:7568 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:756b 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:756e cd f4 45       call sub_45f4h       	;. . E
	ram:7571 cd c4 56       call sub_56c4h       	;. . V
	ram:7574 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:7578 fd cb 11 fe    set 7,(iy+011h)      	;. . . .
	ram:757c c9             ret                  	;.
l757dh:
	ram:757d ac             xor h                	;.
	ram:757e 75             ld (hl),l            	;u
	ram:757f d9             exx                  	;.
	ram:7580 34             inc (hl)             	;4
	ram:7581 78             ld a,b               	;x
	ram:7582 7d             ld a,l               	;}
	ram:7583 b5             or l                 	;.
	ram:7584 34             inc (hl)             	;4
	ram:7585 e9             jp (hl)              	;.
	ram:7586 7d             ld a,l               	;}
	ram:7587 8a             adc a,d              	;.
	ram:7588 75             ld (hl),l            	;u
	ram:7589 0a             ld a,(bc)            	;.
	ram:758a c9             ret                  	;.
sub_758bh:
	ram:758b d7             rst 10h              	;.
	ram:758c 38 15          jr c,l75a3h          	;8 .
	ram:758e 06 1f          ld b,01fh            	;. .
	ram:7590 18 0a          jr l759ch            	;. .
sub_7592h:
	ram:7592 f5             push af              	;.
	ram:7593 cd c3 7d       call sub_7dc3h       	;. . }
	ram:7596 c1             pop bc               	;.
	ram:7597 38 0a          jr c,l75a3h          	;8 .
	ram:7599 cd 49 3a       call 03a49h          	;. I :
l759ch:
	ram:759c a0             and b                	;.
	ram:759d fe 04          cp 004h              	;. .
	ram:759f c8             ret z                	;.
	ram:75a0 cd 0b 2c       call 02c0bh          	;. . ,
l75a3h:
	ram:75a3 21 00 00       ld hl,00000h         	;! . .
	ram:75a6 cd d9 29       call 029d9h          	;. . )
	ram:75a9 c3 56 20       jp 02056h            	;. V  
	ram:75ac fd cb 09 7e    bit 7,(iy+009h)      	;. . . ~
	ram:75b0 28 17          jr z,l75c9h          	;( .
	ram:75b2 fe be          cp 0beh              	;. .
	ram:75b4 ca 62 04       jp z,00462h          	;. b .
	ram:75b7 fe 90          cp 090h              	;. .
	ram:75b9 c0             ret nz               	;.
	ram:75ba fd cb 0d de    set 3,(iy+00dh)      	;. . . .
	ram:75be fd cb 0d a6    res 4,(iy+00dh)      	;. . . .
	ram:75c2 fd cb 11 be    res 7,(iy+011h)      	;. . . .
	ram:75c6 c3 77 76       jp l7677h            	;. w v
l75c9h:
	ram:75c9 fe 03          cp 003h              	;. .
	ram:75cb 28 09          jr z,l75d6h          	;( .
	ram:75cd fe 06          cp 006h              	;. .
	ram:75cf 28 05          jr z,l75d6h          	;( .
	ram:75d1 fe 04          cp 004h              	;. .
	ram:75d3 c2 fb 77       jp nz,l77fbh         	;. . w
l75d6h:
	ram:75d6 cd fc 7d       call sub_7dfch       	;. . }
	ram:75d9 c8             ret z                	;.
	ram:75da cd c3 7d       call sub_7dc3h       	;. . }
	ram:75dd 38 0c          jr c,l75ebh          	;8 .
	ram:75df 21 89 04       ld hl,00489h         	;! . .
	ram:75e2 cd b5 0a       call 00ab5h          	;. . .
	ram:75e5 cd 49 3a       call 03a49h          	;. I :
	ram:75e8 cd db 0a       call 00adbh          	;. . .
l75ebh:
	ram:75eb cd 85 6f       call sub_6f85h       	;. . o
	ram:75ee cd e2 7c       call sub_7ce2h       	;. . |
	ram:75f1 28 05          jr z,l75f8h          	;( .
	ram:75f3 cd 6b 2f       call 02f6bh          	;. k /
	ram:75f6 18 03          jr l75fbh            	;. .
l75f8h:
	ram:75f8 cd 83 2f       call 02f83h          	;. . /
l75fbh:
	ram:75fb 3a 05 80       ld a,(08005h)        	;: . .
	ram:75fe fe 03          cp 003h              	;. .
	ram:7600 ca 27 75       jp z,l7527h          	;. ' u
	ram:7603 cd e2 7c       call sub_7ce2h       	;. . |
	ram:7606 20 0b          jr nz,l7613h         	;.
	ram:7608 cb c7          set 0,a              	;. .
	ram:760a 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:760d cd 03 74       call sub_7403h       	;. . t
	ram:7610 c3 32 75       jp l7532h            	;. 2 u
l7613h:
	ram:7613 cd 3b 2f       call 02f3bh          	;. ; /
	ram:7616 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:7619 fe 1a          cp 01ah              	;. .
	ram:761b ca 76 72       jp z,l7276h          	;. v r
	ram:761e cd f0 7c       call sub_7cf0h       	;. . |
	ram:7621 ca f4 74       jp z,l74f4h          	;. . t
	ram:7624 21 89 04       ld hl,00489h         	;! . .
	ram:7627 cd b5 0a       call 00ab5h          	;. . .
	ram:762a cd 43 2f       call 02f43h          	;. C /
	ram:762d cd 8b 75       call sub_758bh       	;. . u
	ram:7630 cd 24 2f       call 02f24h          	;. $ /
	ram:7633 cd 8b 75       call sub_758bh       	;. . u
	ram:7636 cd db 0a       call 00adbh          	;. . .
	ram:7639 cd 1b 7a       call sub_7a1bh       	;. . z
	ram:763c 28 6e          jr z,l76ach          	;( n
	ram:763e cd 39 3e       call 03e39h          	;. 9 >
	ram:7641 cd c3 3e       call 03ec3h          	;. . >
	ram:7644 3e 60          ld a,060h            	;> `
	ram:7646 cd 85 3d       call 03d85h          	;. . =
	ram:7649 fd cb 0d 9e    res 3,(iy+00dh)      	;. . . .
	ram:764d fd cb 0d e6    set 4,(iy+00dh)      	;. . . .
	ram:7651 fd cb 11 fe    set 7,(iy+011h)      	;. . . .
	ram:7655 c8             ret z                	;.
	ram:7656 21 00 00       ld hl,00000h         	;! . .
	ram:7659 22 0c 80       ld (0800ch),hl       	;" . .
	ram:765c 21 de 32       ld hl,032deh         	;! . 2
	ram:765f cd 45 3e       call 03e45h          	;. E >
	ram:7662 21 01 00       ld hl,00001h         	;! . .
	ram:7665 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7668 21 ae 31       ld hl,031aeh         	;! . 1
	ram:766b cd 45 3e       call 03e45h          	;. E >
	ram:766e fd cb 09 fe    set 7,(iy+009h)      	;. . . .
	ram:7672 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:7676 c9             ret                  	;.
l7677h:
	ram:7677 fd cb 09 be    res 7,(iy+009h)      	;. . . .
	ram:767b fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:767f 21 45 0a       ld hl,00a45h         	;! E .
	ram:7682 cd b5 0a       call 00ab5h          	;. . .
	ram:7685 cd 1b 7a       call sub_7a1bh       	;. . z
	ram:7688 38 0a          jr c,l7694h          	;8 .
	ram:768a af             xor a                	;.
	ram:768b ed 52          sbc hl,de            	;. R
	ram:768d e5             push hl              	;.
	ram:768e cd 38 7c       call sub_7c38h       	;. 8 |
	ram:7691 b7             or a                 	;.
	ram:7692 18 09          jr l769dh            	;. .
l7694h:
	ram:7694 eb             ex de,hl             	;.
	ram:7695 af             xor a                	;.
	ram:7696 ed 52          sbc hl,de            	;. R
	ram:7698 e5             push hl              	;.
	ram:7699 cd 33 7c       call sub_7c33h       	;. 3 |
	ram:769c 37             scf                  	;7
l769dh:
	ram:769d 44             ld b,h               	;D
	ram:769e 4d             ld c,l               	;M
	ram:769f e1             pop hl               	;.
	ram:76a0 3a 82 80       ld a,(08082h)        	;: . .
	ram:76a3 cd 21 38       call 03821h          	;. ! 8
	ram:76a6 cd db 0a       call 00adbh          	;. . .
	ram:76a9 cd ae 7c       call sub_7caeh       	;. . |
l76ach:
	ram:76ac cd fa 7c       call sub_7cfah       	;. . |
l76afh:
	ram:76af cd e0 76       call sub_76e0h       	;. . v
	ram:76b2 3e 38          ld a,038h            	;> 8
	ram:76b4 cd 85 3d       call 03d85h          	;. . =
	ram:76b7 cd 00 77       call sub_7700h       	;. . w
	ram:76ba 21 01 00       ld hl,00001h         	;! . .
	ram:76bd 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:76c0 7d             ld a,l               	;}
	ram:76c1 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:76c4 cd d4 7a       call sub_7ad4h       	;. . z
	ram:76c7 cd 04 7b       call sub_7b04h       	;. . {
	ram:76ca cd 63 7b       call sub_7b63h       	;. c {
	ram:76cd 21 57 78       ld hl,l7857h         	;! W x
	ram:76d0 22 8d 81       ld (0818dh),hl       	;" . .
	ram:76d3 21 5c 7d       ld hl,sub_7d5ch      	;! \ }
	ram:76d6 22 91 81       ld (08191h),hl       	;" . .
	ram:76d9 21 b2 58       ld hl,l58b2h         	;! . X
	ram:76dc 22 95 81       ld (08195h),hl       	;" . .
	ram:76df c9             ret                  	;.
sub_76e0h:
	ram:76e0 cd 39 3e       call 03e39h          	;. 9 >
	ram:76e3 3e 35          ld a,035h            	;> 5
	ram:76e5 cd 85 3d       call 03d85h          	;. . =
	ram:76e8 3e 02          ld a,002h            	;> .
	ram:76ea 32 de 81       ld (081deh),a        	;2 . .
	ram:76ed c9             ret                  	;.
sub_76eeh:
	ram:76ee 3e 01          ld a,001h            	;> .
sub_76f0h:
	ram:76f0 32 0d 80       ld (0800dh),a        	;2 . .
	ram:76f3 3e 78          ld a,078h            	;> x
	ram:76f5 18 64          jr l775bh            	;. d
sub_76f7h:
	ram:76f7 3e 01          ld a,001h            	;> .
sub_76f9h:
	ram:76f9 32 0d 80       ld (0800dh),a        	;2 . .
	ram:76fc 3e 79          ld a,079h            	;> y
	ram:76fe 18 5b          jr l775bh            	;. [
sub_7700h:
	ram:7700 97             sub a                	;.
	ram:7701 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7704 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7707 cd f0 76       call sub_76f0h       	;. . v
	ram:770a cd 59 77       call sub_7759h       	;. Y w
	ram:770d cd 43 2f       call 02f43h          	;. C /
	ram:7710 d7             rst 10h              	;.
	ram:7711 eb             ex de,hl             	;.
	ram:7712 22 c6 80       ld (080c6h),hl       	;" . .
	ram:7715 cd 28 77       call sub_7728h       	;. ( w
	ram:7718 3e 0b          ld a,00bh            	;> .
	ram:771a cd f9 76       call sub_76f9h       	;. . v
	ram:771d cd 59 77       call sub_7759h       	;. Y w
	ram:7720 cd 24 2f       call 02f24h          	;. $ /
	ram:7723 d7             rst 10h              	;.
	ram:7724 eb             ex de,hl             	;.
	ram:7725 22 c8 80       ld (080c8h),hl       	;" . .
sub_7728h:
	ram:7728 21 83 80       ld hl,08083h         	;! . .
	ram:772b 46             ld b,(hl)            	;F
l772ch:
	ram:772c 23             inc hl               	;#
	ram:772d 7e             ld a,(hl)            	;~
	ram:772e cd c5 3f       call 03fc5h          	;. . ?
	ram:7731 10 f9          djnz l772ch          	;. .
	ram:7733 c3 66 7c       jp l7c66h            	;. f |
sub_7736h:
	ram:7736 cd 45 3e       call 03e45h          	;. E >
	ram:7739 3e 0c          ld a,00ch            	;> .
	ram:773b cd a3 74       call sub_74a3h       	;. . t
	ram:773e 21 45 0a       ld hl,00a45h         	;! E .
	ram:7741 cd b5 0a       call 00ab5h          	;. . .
	ram:7744 cd 4a 2e       call 02e4ah          	;. J .
	ram:7747 cd db 0a       call 00adbh          	;. . .
	ram:774a 18 dc          jr sub_7728h         	;. .
sub_774ch:
	ram:774c 3e 01          ld a,001h            	;> .
	ram:774e 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7751 3e 65          ld a,065h            	;> e
	ram:7753 cd c5 3f       call 03fc5h          	;. . ?
	ram:7756 cd 64 77       call sub_7764h       	;. d w
sub_7759h:
	ram:7759 3e 3d          ld a,03dh            	;> =
l775bh:
	ram:775b cd c5 3f       call 03fc5h          	;. . ?
	ram:775e c9             ret                  	;.
l775fh:
	ram:775f 6f             ld l,a               	;o
	ram:7760 26 00          ld h,000h            	;& .
	ram:7762 18 05          jr l7769h            	;. .
sub_7764h:
	ram:7764 2a 21 8b       ld hl,(08b21h)       	;* ! .
sub_7767h:
	ram:7767 06 80          ld b,080h            	;. .
l7769h:
	ram:7769 11 e8 03       ld de,003e8h         	;. . .
	ram:776c cd 8e 00       call 0008eh          	;. . .
	ram:776f 38 12          jr c,l7783h          	;8 .
	ram:7771 cd 95 77       call sub_7795h       	;. . w
	ram:7774 11 64 00       ld de,00064h         	;. d .
l7777h:
	ram:7777 cd 95 77       call sub_7795h       	;. . w
	ram:777a 11 0a 00       ld de,0000ah         	;. . .
l777dh:
	ram:777d cd 95 77       call sub_7795h       	;. . w
l7780h:
	ram:7780 7d             ld a,l               	;}
	ram:7781 18 1b          jr l779eh            	;. .
l7783h:
	ram:7783 11 64 00       ld de,00064h         	;. d .
	ram:7786 cd 8e 00       call 0008eh          	;. . .
	ram:7789 30 ec          jr nc,l7777h         	;0 .
	ram:778b 11 0a 00       ld de,0000ah         	;. . .
	ram:778e cd 8e 00       call 0008eh          	;. . .
	ram:7791 30 ea          jr nc,l777dh         	;0 .
	ram:7793 18 eb          jr l7780h            	;. .
sub_7795h:
	ram:7795 97             sub a                	;.
	ram:7796 18 01          jr l7799h            	;. .
l7798h:
	ram:7798 3c             inc a                	;<
l7799h:
	ram:7799 ed 52          sbc hl,de            	;. R
	ram:779b 30 fb          jr nc,l7798h         	;0 .
	ram:779d 19             add hl,de            	;.
l779eh:
	ram:779e 80             add a,b              	;.
	ram:779f 18 ba          jr l775bh            	;. .
sub_77a1h:
	ram:77a1 cd 1e 7c       call sub_7c1eh       	;. . |
	ram:77a4 d8             ret c                	;.
	ram:77a5 c3 6a 7a       jp l7a6ah            	;. j z
sub_77a8h:
	ram:77a8 cd 23 7c       call sub_7c23h       	;. # |
	ram:77ab da 66 7c       jp c,l7c66h          	;. f |
	ram:77ae c3 62 7a       jp l7a62h            	;. b z
sub_77b1h:
	ram:77b1 cd 1e 7c       call sub_7c1eh       	;. . |
	ram:77b4 38 03          jr c,l77b9h          	;8 .
	ram:77b6 c3 6a 7a       jp l7a6ah            	;. j z
l77b9h:
	ram:77b9 cd e0 77       call sub_77e0h       	;. . w
	ram:77bc cd 24 2f       call 02f24h          	;. $ /
	ram:77bf d7             rst 10h              	;.
	ram:77c0 cb 47          bit 0,a              	;. G
	ram:77c2 20 05          jr nz,l77c9h         	;.
	ram:77c4 cd 3e 21       call 0213eh          	;. > !
	ram:77c7 18 09          jr l77d2h            	;. .
l77c9h:
	ram:77c9 cd 3e 21       call 0213eh          	;. > !
	ram:77cc cd 93 21       call 02193h          	;. . !
	ram:77cf cd 66 1f       call 01f66h          	;. f .
l77d2h:
	ram:77d2 cd af 34       call 034afh          	;. . 4
l77d5h:
	ram:77d5 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:77d8 97             sub a                	;.
	ram:77d9 77             ld (hl),a            	;w
	ram:77da 21 98 80       ld hl,08098h         	;! . .
	ram:77dd c3 5a 7a       jp sub_7a5ah         	;. Z z
sub_77e0h:
	ram:77e0 cd 7f 56       call sub_567fh       	;. . V
	ram:77e3 cd 87 3b       call 03b87h          	;. . ;
	ram:77e6 21 98 80       ld hl,08098h         	;! . .
	ram:77e9 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:77ec 22 19 8b       ld (08b19h),hl       	;" . .
	ram:77ef c9             ret                  	;.
sub_77f0h:
	ram:77f0 0e 1f          ld c,01fh            	;. .
	ram:77f2 18 02          jr l77f6h            	;. .
sub_77f4h:
	ram:77f4 0e 20          ld c,020h            	;.  
l77f6h:
	ram:77f6 3e 04          ld a,004h            	;> .
	ram:77f8 c3 06 57       jp l5706h            	;. . W
l77fbh:
	ram:77fb fe c1          cp 0c1h              	;. .
	ram:77fd ca f4 74       jp z,l74f4h          	;. . t
l7800h:
	ram:7800 fe 03          cp 003h              	;. .
	ram:7802 c8             ret z                	;.
	ram:7803 fe 16          cp 016h              	;. .
	ram:7805 c8             ret z                	;.
	ram:7806 fe 17          cp 017h              	;. .
	ram:7808 c8             ret z                	;.
	ram:7809 57             ld d,a               	;W
	ram:780a 3e 20          ld a,020h            	;>  
	ram:780c b9             cp c                 	;.
	ram:780d c8             ret z                	;.
	ram:780e 7a             ld a,d               	;z
	ram:780f fd cb 10 a6    res 4,(iy+010h)      	;. . . .
	ram:7813 c3 c0 54       jp l54c0h            	;. . T
l7816h:
	ram:7816 cd 3d 7c       call sub_7c3dh       	;. = |
	ram:7819 11 02 00       ld de,00002h         	;. . .
	ram:781c cd 8e 00       call 0008eh          	;. . .
	ram:781f 38 41          jr c,l7862h          	;8 A
	ram:7821 2b             dec hl               	;+
	ram:7822 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:7825 3e 01          ld a,001h            	;> .
	ram:7827 cd d4 7a       call sub_7ad4h       	;. . z
	ram:782a cd 04 7b       call sub_7b04h       	;. . {
	ram:782d cd d1 79       call sub_79d1h       	;. . y
	ram:7830 cd f4 77       call sub_77f4h       	;. . w
	ram:7833 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7836 23             inc hl               	;#
	ram:7837 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:783a 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:783d ee 10          xor 010h             	;. .
	ram:783f 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:7842 3e 04          ld a,004h            	;> .
	ram:7844 18 68          jr l78aeh            	;. h
sub_7846h:
	ram:7846 ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:784a 21 01 00       ld hl,00001h         	;! . .
	ram:784d cd 8e 00       call 0008eh          	;. . .
	ram:7850 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7853 d8             ret c                	;.
	ram:7854 cb 67          bit 4,a              	;. g
	ram:7856 c9             ret                  	;.
l7857h:
	ram:7857 fe 06          cp 006h              	;. .
	ram:7859 28 04          jr z,l785fh          	;( .
	ram:785b fe 04          cp 004h              	;. .
	ram:785d 20 55          jr nz,l78b4h         	;U
l785fh:
	ram:785f cd 99 7b       call sub_7b99h       	;. . {
l7862h:
	ram:7862 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7865 ee 10          xor 010h             	;. .
	ram:7867 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:786a cb 67          bit 4,a              	;. g
	ram:786c 20 3c          jr nz,l78aah         	;<
	ram:786e ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:7872 13             inc de               	;.
	ram:7873 ed 53 21 8b    ld (08b21h),de       	;. S ! .
	ram:7877 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:787a fe 03          cp 003h              	;. .
	ram:787c 38 23          jr c,l78a1h          	;8 #
	ram:787e cd f4 77       call sub_77f4h       	;. . w
	ram:7881 cd 67 3d       call 03d67h          	;. g =
	ram:7884 cd 67 3d       call 03d67h          	;. g =
	ram:7887 cd ee 56       call sub_56eeh       	;. . V
	ram:788a cd 28 7c       call sub_7c28h       	;. ( |
	ram:788d 38 05          jr c,l7894h          	;8 .
	ram:788f 28 03          jr z,l7894h          	;( .
	ram:7891 cd f0 77       call sub_77f0h       	;. . w
l7894h:
	ram:7894 cd d2 7a       call sub_7ad2h       	;. . z
	ram:7897 cd 28 7c       call sub_7c28h       	;. ( |
	ram:789a 38 15          jr c,l78b1h          	;8 .
	ram:789c cd 54 7a       call sub_7a54h       	;. T z
	ram:789f 18 10          jr l78b1h            	;. .
l78a1h:
	ram:78a1 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:78a4 3c             inc a                	;<
	ram:78a5 cd d4 7a       call sub_7ad4h       	;. . z
	ram:78a8 18 07          jr l78b1h            	;. .
l78aah:
	ram:78aa 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:78ad 3c             inc a                	;<
l78aeh:
	ram:78ae 32 0c 80       ld (0800ch),a        	;2 . .
l78b1h:
	ram:78b1 c3 63 7b       jp sub_7b63h         	;. c {
l78b4h:
	ram:78b4 fe 03          cp 003h              	;. .
	ram:78b6 c2 15 79       jp nz,l7915h         	;. . y
	ram:78b9 cd 72 7b       call sub_7b72h       	;. r {
	ram:78bc cd 46 78       call sub_7846h       	;. F x
	ram:78bf ca 16 78       jp z,l7816h          	;. . x
	ram:78c2 ee 10          xor 010h             	;. .
	ram:78c4 cb 67          bit 4,a              	;. g
	ram:78c6 28 05          jr z,l78cdh          	;( .
	ram:78c8 1b             dec de               	;.
	ram:78c9 ed 53 21 8b    ld (08b21h),de       	;. S ! .
l78cdh:
	ram:78cd 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:78d0 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:78d3 3d             dec a                	;=
	ram:78d4 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:78d7 be             cp (hl)              	;.
	ram:78d8 30 2d          jr nc,l7907h         	;0 -
	ram:78da cd 01 57       call sub_5701h       	;. . W
	ram:78dd cd 59 7c       call sub_7c59h       	;. Y |
	ram:78e0 cd 5d 7c       call sub_7c5dh       	;. ] |
	ram:78e3 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:78e6 32 0c 80       ld (0800ch),a        	;2 . .
	ram:78e9 cd 93 3b       call 03b93h          	;. . ;
	ram:78ec cd 93 3b       call 03b93h          	;. . ;
	ram:78ef cd 3d 7c       call sub_7c3dh       	;. = |
	ram:78f2 2b             dec hl               	;+
	ram:78f3 cd 2b 7c       call sub_7c2bh       	;. + |
	ram:78f6 38 05          jr c,l78fdh          	;8 .
	ram:78f8 28 03          jr z,l78fdh          	;( .
	ram:78fa cd f0 77       call sub_77f0h       	;. . w
l78fdh:
	ram:78fd cd d1 79       call sub_79d1h       	;. . y
	ram:7900 cd d7 7a       call sub_7ad7h       	;. . z
	ram:7903 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7906 3c             inc a                	;<
l7907h:
	ram:7907 32 0c 80       ld (0800ch),a        	;2 . .
	ram:790a cd 46 78       call sub_7846h       	;. F x
	ram:790d 28 03          jr z,l7912h          	;( .
	ram:790f d4 f2 6f       call nc,sub_6ff2h    	;. . o
l7912h:
	ram:7912 c3 63 7b       jp sub_7b63h         	;. c {
l7915h:
	ram:7915 fe 16          cp 016h              	;. .
	ram:7917 c8             ret z                	;.
	ram:7918 fe 96          cp 096h              	;. .
	ram:791a 20 38          jr nz,l7954h         	;8
	ram:791c cd 28 7c       call sub_7c28h       	;. ( |
	ram:791f 38 2b          jr c,l794ch          	;8 +
	ram:7921 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:7924 cd f4 77       call sub_77f4h       	;. . w
	ram:7927 cd ae 7c       call sub_7caeh       	;. . |
	ram:792a cd 24 2f       call 02f24h          	;. $ /
	ram:792d cd 71 26       call 02671h          	;. q &
	ram:7930 ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:7934 21 01 00       ld hl,00001h         	;! . .
	ram:7937 cd 27 38       call 03827h          	;. ' 8
	ram:793a cd 43 2f       call 02f43h          	;. C /
	ram:793d cd 71 26       call 02671h          	;. q &
	ram:7940 ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:7944 21 01 00       ld hl,00001h         	;! . .
	ram:7947 cd 27 38       call 03827h          	;. ' 8
	ram:794a 18 4a          jr l7996h            	;. J
l794ch:
	ram:794c fd cb 05 ee    set 5,(iy+005h)      	;. . . .
	ram:7950 cd 68 55       call l5568h          	;. h U
	ram:7953 c9             ret                  	;.
l7954h:
	ram:7954 fe 9a          cp 09ah              	;. .
	ram:7956 c2 f0 79       jp nz,l79f0h         	;. . y
	ram:7959 cd 99 7b       call sub_7b99h       	;. . {
	ram:795c cd ae 7c       call sub_7caeh       	;. . |
	ram:795f cd e0 79       call sub_79e0h       	;. . y
	ram:7962 cd 24 2f       call 02f24h          	;. $ /
	ram:7965 cd 71 26       call 02671h          	;. q &
	ram:7968 ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:796c 0b             dec bc               	;.
	ram:796d 21 01 00       ld hl,00001h         	;! . .
	ram:7970 cd 21 38       call 03821h          	;. ! 8
	ram:7973 cd 3e 21       call 0213eh          	;. > !
	ram:7976 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7979 cd 47 39       call 03947h          	;. G 9
	ram:797c cd 43 2f       call 02f43h          	;. C /
	ram:797f cd 71 26       call 02671h          	;. q &
	ram:7982 ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:7986 0b             dec bc               	;.
	ram:7987 21 01 00       ld hl,00001h         	;! . .
	ram:798a cd 21 38       call 03821h          	;. ! 8
	ram:798d cd 98 21       call 02198h          	;. . !
	ram:7990 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7993 cd 47 39       call 03947h          	;. G 9
l7996h:
	ram:7996 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7999 cb 67          bit 4,a              	;. g
	ram:799b 28 0c          jr z,l79a9h          	;( .
	ram:799d cb a7          res 4,a              	;. .
	ram:799f 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:79a2 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:79a5 3d             dec a                	;=
	ram:79a6 32 0c 80       ld (0800ch),a        	;2 . .
l79a9h:
	ram:79a9 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:79ac f5             push af              	;.
	ram:79ad cd 59 7c       call sub_7c59h       	;. Y |
	ram:79b0 cd 5d 7c       call sub_7c5dh       	;. ] |
	ram:79b3 f1             pop af               	;.
	ram:79b4 32 0c 80       ld (0800ch),a        	;2 . .
	ram:79b7 cd bd 79       call sub_79bdh       	;. . y
	ram:79ba c3 63 7b       jp sub_7b63h         	;. c {
sub_79bdh:
	ram:79bd cd d7 7a       call sub_7ad7h       	;. . z
	ram:79c0 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:79c3 fe 03          cp 003h              	;. .
	ram:79c5 da 04 7b       jp c,sub_7b04h       	;. . {
	ram:79c8 cd 28 7c       call sub_7c28h       	;. ( |
	ram:79cb d8             ret c                	;.
	ram:79cc c8             ret z                	;.
	ram:79cd cd f0 77       call sub_77f0h       	;. . w
	ram:79d0 c9             ret                  	;.
sub_79d1h:
	ram:79d1 ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:79d5 21 01 00       ld hl,00001h         	;! . .
	ram:79d8 cd 8e 00       call 0008eh          	;. . .
	ram:79db d0             ret nc               	;.
	ram:79dc cd ee 56       call sub_56eeh       	;. . V
	ram:79df c9             ret                  	;.
sub_79e0h:
	ram:79e0 21 89 04       ld hl,00489h         	;! . .
	ram:79e3 cd b5 0a       call 00ab5h          	;. . .
	ram:79e6 21 28 00       ld hl,00028h         	;! ( .
	ram:79e9 cd b8 2f       call 02fb8h          	;. . /
	ram:79ec cd db 0a       call 00adbh          	;. . .
	ram:79ef c9             ret                  	;.
l79f0h:
	ram:79f0 fe a7          cp 0a7h              	;. .
	ram:79f2 20 0b          jr nz,l79ffh         	;.
	ram:79f4 cd 72 7b       call sub_7b72h       	;. r {
	ram:79f7 cd 36 2f       call 02f36h          	;. 6 /
	ram:79fa cd 24 2f       call 02f24h          	;. $ /
	ram:79fd 18 17          jr l7a16h            	;. .
l79ffh:
	ram:79ff fe c1          cp 0c1h              	;. .
	ram:7a01 20 06          jr nz,l7a09h         	;.
	ram:7a03 cd 5c 7d       call sub_7d5ch       	;. \ }
	ram:7a06 c3 f7 74       jp l74f7h            	;. . t
l7a09h:
	ram:7a09 fe a8          cp 0a8h              	;. .
	ram:7a0b 20 1a          jr nz,l7a27h         	;.
	ram:7a0d cd 72 7b       call sub_7b72h       	;. r {
	ram:7a10 cd 43 2f       call 02f43h          	;. C /
	ram:7a13 cd 1a 2f       call 02f1ah          	;. . /
l7a16h:
	ram:7a16 cd 6d 3a       call 03a6dh          	;. m :
	ram:7a19 18 23          jr l7a3eh            	;. #
sub_7a1bh:
	ram:7a1b cd 38 7c       call sub_7c38h       	;. 8 |
	ram:7a1e e5             push hl              	;.
	ram:7a1f cd 33 7c       call sub_7c33h       	;. 3 |
	ram:7a22 d1             pop de               	;.
	ram:7a23 cd 8e 00       call 0008eh          	;. . .
	ram:7a26 c9             ret                  	;.
l7a27h:
	ram:7a27 fe 8d          cp 08dh              	;. .
	ram:7a29 c2 c0 54       jp nz,l54c0h         	;. . T
	ram:7a2c cd 8f 7b       call sub_7b8fh       	;. . {
	ram:7a2f cd ae 7c       call sub_7caeh       	;. . |
	ram:7a32 cd 43 2f       call 02f43h          	;. C /
	ram:7a35 cd 49 7a       call sub_7a49h       	;. I z
	ram:7a38 cd 24 2f       call 02f24h          	;. $ /
	ram:7a3b cd 49 7a       call sub_7a49h       	;. I z
l7a3eh:
	ram:7a3e 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7a41 cb a7          res 4,a              	;. .
	ram:7a43 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:7a46 c3 af 76       jp l76afh            	;. . v
sub_7a49h:
	ram:7a49 d7             rst 10h              	;.
	ram:7a4a cd 0b 2c       call 02c0bh          	;. . ,
	ram:7a4d 21 00 00       ld hl,00000h         	;! . .
	ram:7a50 cd d9 29       call 029d9h          	;. . )
	ram:7a53 c9             ret                  	;.
sub_7a54h:
	ram:7a54 cd 72 7a       call sub_7a72h       	;. r z
	ram:7a57 cd 93 7a       call sub_7a93h       	;. . z
sub_7a5ah:
	ram:7a5a fd cb 0e 8e    res 1,(iy+00eh)      	;. . . .
	ram:7a5e cd 75 3b       call 03b75h          	;. u ;
	ram:7a61 c9             ret                  	;.
l7a62h:
	ram:7a62 cd 72 7a       call sub_7a72h       	;. r z
	ram:7a65 cd 9d 7a       call sub_7a9dh       	;. . z
	ram:7a68 18 f0          jr sub_7a5ah         	;. .
l7a6ah:
	ram:7a6a cd 72 7a       call sub_7a72h       	;. r z
	ram:7a6d cd 98 7a       call sub_7a98h       	;. . z
	ram:7a70 18 e8          jr sub_7a5ah         	;. .
sub_7a72h:
	ram:7a72 cd c4 56       call sub_56c4h       	;. . V
	ram:7a75 cd 7f 56       call sub_567fh       	;. . V
	ram:7a78 cd 87 3b       call 03b87h          	;. . ;
	ram:7a7b c9             ret                  	;.
sub_7a7ch:
	ram:7a7c 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7a7f cb 67          bit 4,a              	;. g
	ram:7a81 28 05          jr z,l7a88h          	;( .
sub_7a83h:
	ram:7a83 cd 24 2f       call 02f24h          	;. $ /
	ram:7a86 18 03          jr l7a8bh            	;. .
l7a88h:
	ram:7a88 cd 43 2f       call 02f43h          	;. C /
l7a8bh:
	ram:7a8b d7             rst 10h              	;.
	ram:7a8c 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7a8f cd 2f 39       call 0392fh          	;. / 9
	ram:7a92 c9             ret                  	;.
sub_7a93h:
	ram:7a93 cd 7c 7a       call sub_7a7ch       	;. | z
	ram:7a96 18 08          jr sub_7aa0h         	;. .
sub_7a98h:
	ram:7a98 cd 83 7a       call sub_7a83h       	;. . z
	ram:7a9b 18 03          jr sub_7aa0h         	;. .
sub_7a9dh:
	ram:7a9d cd 88 7a       call l7a88h          	;. . z
sub_7aa0h:
	ram:7aa0 21 82 80       ld hl,08082h         	;! . .
	ram:7aa3 11 7c 8b       ld de,08b7ch         	;. | .
	ram:7aa6 cd 9d 20       call 0209dh          	;. .  
	ram:7aa9 23             inc hl               	;#
	ram:7aaa cd 9d 20       call 0209dh          	;. .  
	ram:7aad 21 82 80       ld hl,08082h         	;! . .
	ram:7ab0 3e 15          ld a,015h            	;> .
	ram:7ab2 cb 46          bit 0,(hl)           	;. F
	ram:7ab4 20 07          jr nz,l7abdh         	;.
	ram:7ab6 cd 97 37       call 03797h          	;. . 7
	ram:7ab9 21 98 80       ld hl,08098h         	;! . .
	ram:7abc c9             ret                  	;.
l7abdh:
	ram:7abd fd cb 0c c6    set 0,(iy+00ch)      	;. . . .
	ram:7ac1 3a 50 83       ld a,(08350h)        	;: P .
	ram:7ac4 32 51 83       ld (08351h),a        	;2 Q .
	ram:7ac7 cd e3 33       call 033e3h          	;. . 3
	ram:7aca fd cb 0c 86    res 0,(iy+00ch)      	;. . . .
	ram:7ace 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:7ad1 c9             ret                  	;.
sub_7ad2h:
	ram:7ad2 3e 03          ld a,003h            	;> .
sub_7ad4h:
	ram:7ad4 32 0c 80       ld (0800ch),a        	;2 . .
sub_7ad7h:
	ram:7ad7 cd ee 76       call sub_76eeh       	;. . v
	ram:7ada cd 64 77       call sub_7764h       	;. d w
	ram:7add cd 59 77       call sub_7759h       	;. Y w
	ram:7ae0 cd 87 3b       call 03b87h          	;. . ;
	ram:7ae3 cd a8 77       call sub_77a8h       	;. . w
	ram:7ae6 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7ae9 3c             inc a                	;<
	ram:7aea 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7aed cd f7 76       call sub_76f7h       	;. . v
	ram:7af0 cd 64 77       call sub_7764h       	;. d w
	ram:7af3 cd 59 77       call sub_7759h       	;. Y w
	ram:7af6 cd 87 3b       call 03b87h          	;. . ;
	ram:7af9 cd b1 77       call sub_77b1h       	;. . w
	ram:7afc 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7aff 3d             dec a                	;=
	ram:7b00 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7b03 c9             ret                  	;.
sub_7b04h:
	ram:7b04 cd 38 7c       call sub_7c38h       	;. 8 |
	ram:7b07 cd 52 7c       call sub_7c52h       	;. R |
	ram:7b0a 30 09          jr nc,l7b15h         	;0 .
	ram:7b0c e5             push hl              	;.
	ram:7b0d cd 33 7c       call sub_7c33h       	;. 3 |
	ram:7b10 cd 52 7c       call sub_7c52h       	;. R |
	ram:7b13 e1             pop hl               	;.
	ram:7b14 d8             ret c                	;.
l7b15h:
	ram:7b15 3e 03          ld a,003h            	;> .
	ram:7b17 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7b1a cd ee 76       call sub_76eeh       	;. . v
	ram:7b1d 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7b20 23             inc hl               	;#
	ram:7b21 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:7b24 cd 67 77       call sub_7767h       	;. g w
	ram:7b27 cd 59 77       call sub_7759h       	;. Y w
	ram:7b2a cd 87 3b       call 03b87h          	;. . ;
	ram:7b2d cd a8 77       call sub_77a8h       	;. . w
	ram:7b30 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7b33 3c             inc a                	;<
	ram:7b34 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7b37 cd f7 76       call sub_76f7h       	;. . v
	ram:7b3a cd 64 77       call sub_7764h       	;. d w
	ram:7b3d cd 59 77       call sub_7759h       	;. Y w
	ram:7b40 cd 87 3b       call 03b87h          	;. . ;
	ram:7b43 cd a1 77       call sub_77a1h       	;. . w
	ram:7b46 cd 28 7c       call sub_7c28h       	;. ( |
	ram:7b49 38 05          jr c,l7b50h          	;8 .
	ram:7b4b 28 03          jr z,l7b50h          	;( .
	ram:7b4d cd f0 77       call sub_77f0h       	;. . w
l7b50h:
	ram:7b50 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:7b53 2b             dec hl               	;+
	ram:7b54 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:7b57 3e 01          ld a,001h            	;> .
	ram:7b59 32 0c 80       ld (0800ch),a        	;2 . .
	ram:7b5c c9             ret                  	;.
sub_7b5dh:
	ram:7b5d 97             sub a                	;.
	ram:7b5e cb e7          set 4,a              	;. .
	ram:7b60 32 9e 8b       ld (08b9eh),a        	;2 . .
sub_7b63h:
	ram:7b63 cd 2d 54       call sub_542dh       	;. - T
	ram:7b66 cd 28 7c       call sub_7c28h       	;. ( |
	ram:7b69 da 25 54       jp c,l5425h          	;. % T
	ram:7b6c cd 7c 7a       call sub_7a7ch       	;. | z
	ram:7b6f c3 1a 54       jp l541ah            	;. . T
sub_7b72h:
	ram:7b72 cd 20 46       call sub_4620h       	;.   F
	ram:7b75 20 22          jr nz,sub_7b99h      	;"
	ram:7b77 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7b7a cb 67          bit 4,a              	;. g
	ram:7b7c 20 20          jr nz,l7b9eh         	;
	ram:7b7e ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:7b82 21 01 00       ld hl,00001h         	;! . .
	ram:7b85 cd 8e 00       call 0008eh          	;. . .
	ram:7b88 30 14          jr nc,l7b9eh         	;0 .
	ram:7b8a cd 28 7c       call sub_7c28h       	;. ( |
	ram:7b8d 30 0f          jr nc,l7b9eh         	;0 .
sub_7b8fh:
	ram:7b8f cd d2 01       call 001d2h          	;. . .
	ram:7b92 cd 7e 49       call sub_497eh       	;. ~ I
	ram:7b95 cd be 57       call sub_57beh       	;. . W
	ram:7b98 c9             ret                  	;.
sub_7b99h:
	ram:7b99 cd 20 46       call sub_4620h       	;.   F
	ram:7b9c 20 03          jr nz,l7ba1h         	;.
l7b9eh:
	ram:7b9e 33             inc sp               	;3
	ram:7b9f 33             inc sp               	;3
	ram:7ba0 c9             ret                  	;.
l7ba1h:
	ram:7ba1 21 89 04       ld hl,00489h         	;! . .
	ram:7ba4 cd b5 0a       call 00ab5h          	;. . .
	ram:7ba7 cd b1 7b       call sub_7bb1h       	;. . {
	ram:7baa cd 54 7a       call sub_7a54h       	;. T z
	ram:7bad cd db 0a       call 00adbh          	;. . .
	ram:7bb0 c9             ret                  	;.
sub_7bb1h:
	ram:7bb1 cd da 7d       call sub_7ddah       	;. . }
	ram:7bb4 fd cb 05 6e    bit 5,(iy+005h)      	;. . . n
	ram:7bb8 c8             ret z                	;.
	ram:7bb9 cd 47 1f       call 01f47h          	;. G .
	ram:7bbc 28 17          jr z,l7bd5h          	;( .
	ram:7bbe 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:7bc1 fe 10          cp 010h              	;. .
	ram:7bc3 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:7bc6 df             rst 18h              	;.
	ram:7bc7 cd 52 2f       call 02f52h          	;. R /
	ram:7bca cd 68 26       call 02668h          	;. h &
	ram:7bcd f5             push af              	;.
	ram:7bce cd cf 2d       call 02dcfh          	;. . -
	ram:7bd1 f1             pop af               	;.
	ram:7bd2 ca 28 0a       jp z,00a28h          	;. ( .
l7bd5h:
	ram:7bd5 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7bd8 cb 67          bit 4,a              	;. g
	ram:7bda 28 05          jr z,l7be1h          	;( .
	ram:7bdc cd 1a 2f       call 02f1ah          	;. . /
	ram:7bdf 18 09          jr l7beah            	;. .
l7be1h:
	ram:7be1 cd 36 2f       call 02f36h          	;. 6 /
	ram:7be4 21 28 00       ld hl,00028h         	;! ( .
	ram:7be7 cd b8 2f       call 02fb8h          	;. . /
l7beah:
	ram:7bea cd ec 68       call sub_68ech       	;. . h
	ram:7bed cd 71 26       call 02671h          	;. q &
	ram:7bf0 cd 14 7c       call sub_7c14h       	;. . |
	ram:7bf3 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:7bf6 fe 10          cp 010h              	;. .
	ram:7bf8 c4 ae 7c       call nz,sub_7caeh    	;. . |
	ram:7bfb 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7bfe cb 67          bit 4,a              	;. g
	ram:7c00 c0             ret nz               	;.
	ram:7c01 cd 1e 7c       call sub_7c1eh       	;. . |
	ram:7c04 d0             ret nc               	;.
	ram:7c05 cd 24 2f       call 02f24h          	;. $ /
	ram:7c08 d7             rst 10h              	;.
	ram:7c09 cd 6f 38       call 0386fh          	;. o 8
	ram:7c0c cd 3e 21       call 0213eh          	;. > !
	ram:7c0f df             rst 18h              	;.
	ram:7c10 cd 43 2f       call 02f43h          	;. C /
	ram:7c13 d7             rst 10h              	;.
sub_7c14h:
	ram:7c14 ed 4b 21 8b    ld bc,(08b21h)       	;. K ! .
	ram:7c18 cd af 37       call 037afh          	;. . 7
	ram:7c1b c3 1f 28       jp 0281fh            	;. . (
sub_7c1eh:
	ram:7c1e cd 33 7c       call sub_7c33h       	;. 3 |
	ram:7c21 18 08          jr sub_7c2bh         	;. .
sub_7c23h:
	ram:7c23 cd 38 7c       call sub_7c38h       	;. 8 |
	ram:7c26 18 03          jr sub_7c2bh         	;. .
sub_7c28h:
	ram:7c28 cd 3d 7c       call sub_7c3dh       	;. = |
sub_7c2bh:
	ram:7c2b ed 5b 21 8b    ld de,(08b21h)       	;. [ ! .
	ram:7c2f cd 8e 00       call 0008eh          	;. . .
	ram:7c32 c9             ret                  	;.
sub_7c33h:
	ram:7c33 cd 24 2f       call 02f24h          	;. $ /
	ram:7c36 18 08          jr l7c40h            	;. .
sub_7c38h:
	ram:7c38 cd 43 2f       call 02f43h          	;. C /
	ram:7c3b 18 03          jr l7c40h            	;. .
sub_7c3dh:
	ram:7c3d cd 47 7c       call sub_7c47h       	;. G |
l7c40h:
	ram:7c40 d7             rst 10h              	;.
	ram:7c41 62             ld h,d               	;b
	ram:7c42 6b             ld l,e               	;k
	ram:7c43 cd 33 00       call 00033h          	;. 3 .
	ram:7c46 c9             ret                  	;.
sub_7c47h:
	ram:7c47 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7c4a cb 67          bit 4,a              	;. g
	ram:7c4c ca 43 2f       jp z,02f43h          	;. C /
	ram:7c4f c3 24 2f       jp 02f24h            	;. $ /
sub_7c52h:
	ram:7c52 11 02 00       ld de,00002h         	;. . .
	ram:7c55 cd 8e 00       call 0008eh          	;. . .
	ram:7c58 c9             ret                  	;.
sub_7c59h:
	ram:7c59 3e 03          ld a,003h            	;> .
	ram:7c5b 18 02          jr l7c5fh            	;. .
sub_7c5dh:
	ram:7c5d 3e 04          ld a,004h            	;> .
l7c5fh:
	ram:7c5f 32 0c 80       ld (0800ch),a        	;2 . .
sub_7c62h:
	ram:7c62 97             sub a                	;.
	ram:7c63 32 0d 80       ld (0800dh),a        	;2 . .
l7c66h:
	ram:7c66 cd c1 3d       call 03dc1h          	;. . =
	ram:7c69 c9             ret                  	;.
sub_7c6ah:
	ram:7c6a cd a3 21       call 021a3h          	;. . !
	ram:7c6d 21 a8 8b       ld hl,08ba8h         	;! . .
	ram:7c70 18 06          jr l7c78h            	;. .
sub_7c72h:
	ram:7c72 cd a3 21       call 021a3h          	;. . !
	ram:7c75 21 9f 8b       ld hl,08b9fh         	;! . .
l7c78h:
	ram:7c78 11 82 80       ld de,08082h         	;. . .
	ram:7c7b 3e 04          ld a,004h            	;> .
	ram:7c7d 12             ld (de),a            	;.
	ram:7c7e 13             inc de               	;.
	ram:7c7f 7e             ld a,(hl)            	;~
	ram:7c80 fe 00          cp 000h              	;. .
	ram:7c82 28 0c          jr z,l7c90h          	;( .
	ram:7c84 fe 09          cp 009h              	;. .
	ram:7c86 30 08          jr nc,l7c90h         	;0 .
	ram:7c88 3c             inc a                	;<
	ram:7c89 4f             ld c,a               	;O
	ram:7c8a 06 00          ld b,000h            	;. .
	ram:7c8c ed b0          ldir                 	;. .
	ram:7c8e d7             rst 10h              	;.
	ram:7c8f d0             ret nc               	;.
l7c90h:
	ram:7c90 cd 95 7c       call sub_7c95h       	;. . |
	ram:7c93 37             scf                  	;7
	ram:7c94 c9             ret                  	;.
sub_7c95h:
	ram:7c95 cd a3 21       call 021a3h          	;. . !
	ram:7c98 cd f3 3b       call 03bf3h          	;. . ;
	ram:7c9b cd 06 7d       call sub_7d06h       	;. . }
	ram:7c9e cd e7 3b       call 03be7h          	;. . ;
	ram:7ca1 18 68          jr l7d0bh            	;. h
	ram:7ca3 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:7ca7 c8             ret z                	;.
	ram:7ca8 cd 69 26       call 02669h          	;. i &
	ram:7cab c0             ret nz               	;.
	ram:7cac 18 05          jr l7cb3h            	;. .
sub_7caeh:
	ram:7cae fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:7cb2 c8             ret z                	;.
l7cb3h:
	ram:7cb3 fd cb 09 b6    res 6,(iy+009h)      	;. . . .
	ram:7cb7 cd 0d 26       call 0260dh          	;. . &
	ram:7cba d7             rst 10h              	;.
	ram:7cbb 38 03          jr c,l7cc0h          	;8 .
	ram:7cbd cd 0b 2c       call 02c0bh          	;. . ,
l7cc0h:
	ram:7cc0 cd 12 26       call 02612h          	;. . &
	ram:7cc3 d7             rst 10h              	;.
	ram:7cc4 38 03          jr c,l7cc9h          	;8 .
	ram:7cc6 cd 0b 2c       call 02c0bh          	;. . ,
l7cc9h:
	ram:7cc9 cd 91 37       call 03791h          	;. . 7
	ram:7ccc d7             rst 10h              	;.
	ram:7ccd d8             ret c                	;.
	ram:7cce c3 0b 2c       jp 02c0bh            	;. . ,
sub_7cd1h:
	ram:7cd1 cd e2 7c       call sub_7ce2h       	;. . |
	ram:7cd4 28 05          jr z,l7cdbh          	;( .
	ram:7cd6 cd ed 7c       call sub_7cedh       	;. . |
	ram:7cd9 18 03          jr l7cdeh            	;. .
l7cdbh:
	ram:7cdb cd e8 7c       call sub_7ce8h       	;. . |
l7cdeh:
	ram:7cde c0             ret nz               	;.
	ram:7cdf c3 4d 0a       jp 00a4dh            	;. M .
sub_7ce2h:
	ram:7ce2 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:7ce5 cb 47          bit 0,a              	;. G
	ram:7ce7 c9             ret                  	;.
sub_7ce8h:
	ram:7ce8 cd e7 3b       call 03be7h          	;. . ;
	ram:7ceb 18 03          jr sub_7cf0h         	;. .
sub_7cedh:
	ram:7ced cd f3 3b       call 03bf3h          	;. . ;
sub_7cf0h:
	ram:7cf0 11 83 80       ld de,08083h         	;. . .
	ram:7cf3 21 8e 80       ld hl,0808eh         	;! . .
	ram:7cf6 cd 51 30       call 03051h          	;. Q 0
	ram:7cf9 c9             ret                  	;.
sub_7cfah:
	ram:7cfa cd 9b 7d       call sub_7d9bh       	;. . }
	ram:7cfd cd 24 2f       call 02f24h          	;. $ /
	ram:7d00 cd 0b 7d       call l7d0bh          	;. . }
	ram:7d03 cd 43 2f       call 02f43h          	;. C /
sub_7d06h:
	ram:7d06 11 9f 8b       ld de,08b9fh         	;. . .
	ram:7d09 18 03          jr l7d0eh            	;. .
l7d0bh:
	ram:7d0b 11 a8 8b       ld de,08ba8h         	;. . .
l7d0eh:
	ram:7d0e 21 83 80       ld hl,08083h         	;! . .
	ram:7d11 01 09 00       ld bc,00009h         	;. . .
	ram:7d14 ed b0          ldir                 	;. .
	ram:7d16 c9             ret                  	;.
sub_7d17h:
	ram:7d17 cd c3 3e       call 03ec3h          	;. . >
	ram:7d1a 21 57 7d       ld hl,l7d57h         	;! W }
	ram:7d1d cd b5 0a       call 00ab5h          	;. . .
	ram:7d20 cd d3 50       call sub_50d3h       	;. . P
	ram:7d23 18 4e          jr l7d73h            	;. N
sub_7d25h:
	ram:7d25 21 57 7d       ld hl,l7d57h         	;! W }
	ram:7d28 cd b5 0a       call 00ab5h          	;. . .
	ram:7d2b fd cb 01 66    bit 4,(iy+001h)      	;. . . f
	ram:7d2f 20 4d          jr nz,l7d7eh         	;M
	ram:7d31 cd e7 42       call sub_42e7h       	;. . B
	ram:7d34 18 3d          jr l7d73h            	;. =
sub_7d36h:
	ram:7d36 21 57 7d       ld hl,l7d57h         	;! W }
	ram:7d39 cd b5 0a       call 00ab5h          	;. . .
	ram:7d3c cd 3c 40       call sub_403ch       	;. < @
	ram:7d3f 18 32          jr l7d73h            	;. 2
	ram:7d41 21 57 7d       ld hl,l7d57h         	;! W }
	ram:7d44 cd b5 0a       call 00ab5h          	;. . .
	ram:7d47 cd 20 46       call sub_4620h       	;.   F
	ram:7d4a 28 32          jr z,l7d7eh          	;( 2
	ram:7d4c fd cb 01 66    bit 4,(iy+001h)      	;. . . f
	ram:7d50 20 2c          jr nz,l7d7eh         	;,
	ram:7d52 cd 12 69       call sub_6912h       	;. . i
	ram:7d55 18 1c          jr l7d73h            	;. .
l7d57h:
	ram:7d57 cd be 57       call sub_57beh       	;. . W
	ram:7d5a 18 28          jr sub_7d84h         	;. (
sub_7d5ch:
	ram:7d5c cd 9b 7d       call sub_7d9bh       	;. . }
	ram:7d5f 21 57 7d       ld hl,l7d57h         	;! W }
	ram:7d62 cd b5 0a       call 00ab5h          	;. . .
	ram:7d65 cd 20 46       call sub_4620h       	;.   F
	ram:7d68 28 14          jr z,l7d7eh          	;( .
	ram:7d6a fd cb 01 66    bit 4,(iy+001h)      	;. . . f
	ram:7d6e 20 0e          jr nz,l7d7eh         	;.
	ram:7d70 cd b1 7b       call sub_7bb1h       	;. . {
l7d73h:
	ram:7d73 cd be 57       call sub_57beh       	;. . W
	ram:7d76 18 09          jr l7d81h            	;. .
sub_7d78h:
	ram:7d78 21 84 7d       ld hl,sub_7d84h      	;! . }
	ram:7d7b cd b5 0a       call 00ab5h          	;. . .
l7d7eh:
	ram:7d7e cd 8f 7b       call sub_7b8fh       	;. . {
l7d81h:
	ram:7d81 cd db 0a       call 00adbh          	;. . .
sub_7d84h:
	ram:7d84 fd cb 09 be    res 7,(iy+009h)      	;. . . .
	ram:7d88 cd 9b 7d       call sub_7d9bh       	;. . }
l7d8bh:
	ram:7d8b cd c3 3e       call 03ec3h          	;. . >
l7d8eh:
	ram:7d8e cd 5a 05       call 0055ah          	;. Z .
	ram:7d91 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:7d95 cd 76 04       call 00476h          	;. v .
	ram:7d98 c3 1f 28       jp 0281fh            	;. . (
sub_7d9bh:
	ram:7d9b fd cb 08 b6    res 6,(iy+008h)      	;. . . .
	ram:7d9f fd cb 08 ae    res 5,(iy+008h)      	;. . . .
	ram:7da3 c9             ret                  	;.
l7da4h:
	ram:7da4 cd da 68       call sub_68dah       	;. . h
	ram:7da7 fd cb 01 9e    res 3,(iy+001h)      	;. . . .
	ram:7dab 18 de          jr l7d8bh            	;. .
sub_7dadh:
	ram:7dad 21 57 7d       ld hl,l7d57h         	;! W }
	ram:7db0 cd b5 0a       call 00ab5h          	;. . .
	ram:7db3 cd 20 46       call sub_4620h       	;.   F
	ram:7db6 28 c6          jr z,l7d7eh          	;( .
	ram:7db8 fd cb 01 66    bit 4,(iy+001h)      	;. . . f
	ram:7dbc 20 c0          jr nz,l7d7eh         	;.
	ram:7dbe cd 52 43       call sub_4352h       	;. R C
	ram:7dc1 18 b0          jr l7d73h            	;. .
sub_7dc3h:
	ram:7dc3 3e 04          ld a,004h            	;> .
sub_7dc5h:
	ram:7dc5 21 89 04       ld hl,00489h         	;! . .
	ram:7dc8 cd b5 0a       call 00ab5h          	;. . .
	ram:7dcb cd 36 7f       call sub_7f36h       	;. 6 .
	ram:7dce cd db 0a       call 00adbh          	;. . .
	ram:7dd1 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:7dd5 d7             rst 10h              	;.
	ram:7dd6 d8             ret c                	;.
	ram:7dd7 e6 1f          and 01fh             	;. .
	ram:7dd9 c9             ret                  	;.
sub_7ddah:
	ram:7dda cd 8f 57       call sub_578fh       	;. . W
	ram:7ddd cd 33 26       call 02633h          	;. 3 &
	ram:7de0 cd f3 35       call 035f3h          	;. . 5
	ram:7de3 cd 9c 26       call 0269ch          	;. . &
	ram:7de6 c3 1e 26       jp 0261eh            	;. . &
	ram:7de9 cd 95 3c       call 03c95h          	;. . <
	ram:7dec cd f4 45       call sub_45f4h       	;. . E
	ram:7def cd 7f 56       call sub_567fh       	;. . V
	ram:7df2 3a 56 8a       ld a,(08a56h)        	;: V .
	ram:7df5 b7             or a                 	;.
	ram:7df6 c2 24 57       jp nz,l5724h         	;. $ W
	ram:7df9 c3 3f 57       jp sub_573fh         	;. ? W
sub_7dfch:
	ram:7dfc cd d5 46       call l46d5h          	;. . F
	ram:7dff 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:7e02 11 84 80       ld de,08084h         	;. . .
	ram:7e05 b7             or a                 	;.
	ram:7e06 ed 52          sbc hl,de            	;. R
	ram:7e08 c8             ret z                	;.
	ram:7e09 7d             ld a,l               	;}
	ram:7e0a 32 83 80       ld (08083h),a        	;2 . .
	ram:7e0d 37             scf                  	;7
	ram:7e0e c9             ret                  	;.
l7e0fh:
	ram:7e0f cd 17 7d       call sub_7d17h       	;. . }
	ram:7e12 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:7e16 28 05          jr z,l7e1dh          	;( .
	ram:7e18 cd aa 26       call 026aah          	;. . &
	ram:7e1b 28 05          jr z,l7e22h          	;( .
l7e1dh:
	ram:7e1d 3e 17          ld a,017h            	;> .
	ram:7e1f c3 87 0a       jp 00a87h            	;. . .
l7e22h:
	ram:7e22 21 4d 7e       ld hl,l7e4dh         	;! M ~
	ram:7e25 cd 50 06       call 00650h          	;. P .
	ram:7e28 21 14 00       ld hl,00014h         	;! . .
	ram:7e2b cd 28 2e       call 02e28h          	;. ( .
	ram:7e2e cd 39 3e       call 03e39h          	;. 9 >
	ram:7e31 cd 0a 74       call sub_740ah       	;. . t
	ram:7e34 21 61 31       ld hl,03161h         	;! a 1
	ram:7e37 cd 45 3e       call 03e45h          	;. E >
	ram:7e3a cd fd 73       call sub_73fdh       	;. . s
	ram:7e3d 3e 01          ld a,001h            	;> .
	ram:7e3f 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:7e42 3e 35          ld a,035h            	;> 5
	ram:7e44 cd 85 3d       call 03d85h          	;. . =
	ram:7e47 cd 72 50       call sub_5072h       	;. r P
	ram:7e4a c3 5a 50       jp sub_505ah         	;. Z P
l7e4dh:
	ram:7e4d 5b             ld e,e               	;[
	ram:7e4e 7e             ld a,(hl)            	;~
	ram:7e4f d9             exx                  	;.
	ram:7e50 34             inc (hl)             	;4
	ram:7e51 17             rla                  	;.
	ram:7e52 7d             ld a,l               	;}
	ram:7e53 b5             or l                 	;.
	ram:7e54 34             inc (hl)             	;4
	ram:7e55 b2             or d                 	;.
	ram:7e56 58             ld e,b               	;X
	ram:7e57 5a             ld e,d               	;Z
	ram:7e58 7e             ld a,(hl)            	;~
	ram:7e59 0a             ld a,(bc)            	;.
	ram:7e5a c9             ret                  	;.
	ram:7e5b f5             push af              	;.
	ram:7e5c c5             push bc              	;.
	ram:7e5d fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:7e61 cc 5a 50       call z,sub_505ah     	;. Z P
	ram:7e64 c1             pop bc               	;.
	ram:7e65 f1             pop af               	;.
	ram:7e66 fe c1          cp 0c1h              	;. .
	ram:7e68 ca 0f 7e       jp z,l7e0fh          	;. . ~
	ram:7e6b fe 06          cp 006h              	;. .
	ram:7e6d 28 04          jr z,l7e73h          	;( .
	ram:7e6f fe 04          cp 004h              	;. .
	ram:7e71 20 34          jr nz,l7ea7h         	;4
l7e73h:
	ram:7e73 cd 20 46       call sub_4620h       	;.   F
	ram:7e76 20 10          jr nz,l7e88h         	;.
	ram:7e78 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:7e7b fe 01          cp 001h              	;. .
	ram:7e7d c0             ret nz               	;.
	ram:7e7e 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:7e81 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:7e84 3e 01          ld a,001h            	;> .
	ram:7e86 18 15          jr l7e9dh            	;. .
l7e88h:
	ram:7e88 cd 21 51       call sub_5121h       	;. ! Q
	ram:7e8b 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:7e8e 21 21 8b       ld hl,08b21h         	;! ! .
	ram:7e91 be             cp (hl)              	;.
	ram:7e92 20 05          jr nz,l7e99h         	;.
	ram:7e94 97             sub a                	;.
	ram:7e95 77             ld (hl),a            	;w
	ram:7e96 3a 22 8b       ld a,(08b22h)        	;: " .
l7e99h:
	ram:7e99 fe 02          cp 002h              	;. .
	ram:7e9b 30 07          jr nc,l7ea4h         	;0 .
l7e9dh:
	ram:7e9d 3c             inc a                	;<
	ram:7e9e 32 22 8b       ld (08b22h),a        	;2 " .
	ram:7ea1 32 0c 80       ld (0800ch),a        	;2 . .
l7ea4h:
	ram:7ea4 c3 5a 50       jp sub_505ah         	;. Z P
l7ea7h:
	ram:7ea7 fe 03          cp 003h              	;. .
	ram:7ea9 20 0a          jr nz,l7eb5h         	;.
	ram:7eab 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:7eae fe 01          cp 001h              	;. .
	ram:7eb0 28 c1          jr z,l7e73h          	;( .
	ram:7eb2 c3 c4 51       jp l51c4h            	;. . Q
l7eb5h:
	ram:7eb5 fe 16          cp 016h              	;. .
	ram:7eb7 ca 2f 52       jp z,l522fh          	;. / R
	ram:7eba fe a6          cp 0a6h              	;. .
	ram:7ebc c2 4b 52       jp nz,l524bh         	;. K R
	ram:7ebf 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7ec2 fe 01          cp 001h              	;. .
	ram:7ec4 30 03          jr nc,l7ec9h         	;0 .
l7ec6h:
	ram:7ec6 c3 67 52       jp l5267h            	;. g R
l7ec9h:
	ram:7ec9 20 22          jr nz,l7eedh         	;"
	ram:7ecb 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:7ece fe 02          cp 002h              	;. .
	ram:7ed0 20 f4          jr nz,l7ec6h         	;.
	ram:7ed2 3a de 80       ld a,(080deh)        	;: . .
	ram:7ed5 fe 04          cp 004h              	;. .
	ram:7ed7 30 ed          jr nc,l7ec6h         	;0 .
	ram:7ed9 21 89 04       ld hl,00489h         	;! . .
	ram:7edc cd b5 0a       call 00ab5h          	;. . .
	ram:7edf cd 29 7f       call sub_7f29h       	;. ) .
	ram:7ee2 cd 43 2f       call 02f43h          	;. C /
	ram:7ee5 cd 0d 3a       call 03a0dh          	;. . :
	ram:7ee8 cd 9b 25       call 0259bh          	;. . %
	ram:7eeb 18 23          jr l7f10h            	;. #
l7eedh:
	ram:7eed 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:7ef0 a7             and a                	;.
	ram:7ef1 28 d3          jr z,l7ec6h          	;( .
	ram:7ef3 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:7ef6 a7             and a                	;.
	ram:7ef7 20 cd          jr nz,l7ec6h         	;.
	ram:7ef9 21 89 04       ld hl,00489h         	;! . .
	ram:7efc cd b5 0a       call 00ab5h          	;. . .
	ram:7eff cd 29 7f       call sub_7f29h       	;. ) .
	ram:7f02 cd 24 2f       call 02f24h          	;. $ /
	ram:7f05 cd 13 3a       call 03a13h          	;. . :
	ram:7f08 cd 9b 25       call 0259bh          	;. . %
	ram:7f0b 3e 02          ld a,002h            	;> .
	ram:7f0d 32 24 8b       ld (08b24h),a        	;2 $ .
l7f10h:
	ram:7f10 21 b2 58       ld hl,l58b2h         	;! . X
	ram:7f13 22 95 81       ld (08195h),hl       	;" . .
	ram:7f16 97             sub a                	;.
	ram:7f17 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:7f1a cd d6 50       call sub_50d6h       	;. . P
	ram:7f1d 97             sub a                	;.
	ram:7f1e 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7f21 3e d0          ld a,0d0h            	;> .
	ram:7f23 cd c5 3f       call 03fc5h          	;. . ?
	ram:7f26 c3 c1 52       jp l52c1h            	;. . R
sub_7f29h:
	ram:7f29 cd 8f 7b       call sub_7b8fh       	;. . {
	ram:7f2c cd 2e 53       call sub_532eh       	;. . S
	ram:7f2f 21 ca 52       ld hl,l52cah         	;! . R
	ram:7f32 22 95 81       ld (08195h),hl       	;" . .
	ram:7f35 c9             ret                  	;.
sub_7f36h:
	ram:7f36 e6 1f          and 01fh             	;. .
	ram:7f38 f5             push af              	;.
	ram:7f39 cd 21 20       call 02021h          	;. !  
	ram:7f3c 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:7f3f e5             push hl              	;.
	ram:7f40 21 8f 80       ld hl,0808fh         	;! . .
	ram:7f43 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:7f46 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:7f49 cd c5 3c       call 03cc5h          	;. . <
	ram:7f4c 21 8c 80       ld hl,0808ch         	;! . .
	ram:7f4f 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:7f52 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:7f55 e1             pop hl               	;.
	ram:7f56 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:7f59 2a 84 80       ld hl,(08084h)       	;* . .
	ram:7f5c e5             push hl              	;.
	ram:7f5d cd 60 20       call 02060h          	;. `  
	ram:7f60 e1             pop hl               	;.
	ram:7f61 7d             ld a,l               	;}
	ram:7f62 fe 3d          cp 03dh              	;. =
	ram:7f64 20 13          jr nz,l7f79h         	;.
	ram:7f66 7c             ld a,h               	;|
	ram:7f67 fe 33          cp 033h              	;. 3
	ram:7f69 38 0b          jr c,l7f76h          	;8 .
	ram:7f6b 3a 83 80       ld a,(08083h)        	;: . .
	ram:7f6e fe 05          cp 005h              	;. .
	ram:7f70 20 04          jr nz,l7f76h         	;.
	ram:7f72 f1             pop af               	;.
	ram:7f73 fe 04          cp 004h              	;. .
	ram:7f75 c8             ret z                	;.
l7f76h:
	ram:7f76 c3 1c 0a       jp 00a1ch            	;. . .
l7f79h:
	ram:7f79 fe 3b          cp 03bh              	;. ;
	ram:7f7b 20 0c          jr nz,l7f89h         	;.
	ram:7f7d f1             pop af               	;.
	ram:7f7e fe 0a          cp 00ah              	;. .
	ram:7f80 20 f4          jr nz,l7f76h         	;.
l7f82h:
	ram:7f82 3a 83 80       ld a,(08083h)        	;: . .
	ram:7f85 bc             cp h                 	;.
	ram:7f86 c8             ret z                	;.
	ram:7f87 18 ed          jr l7f76h            	;. .
l7f89h:
	ram:7f89 d6 32          sub 032h             	;. 2
	ram:7f8b 38 e9          jr c,l7f76h          	;8 .
	ram:7f8d 20 13          jr nz,l7fa2h         	;.
	ram:7f8f f1             pop af               	;.
	ram:7f90 fe 08          cp 008h              	;. .
	ram:7f92 28 e2          jr z,l7f76h          	;( .
	ram:7f94 fe 09          cp 009h              	;. .
	ram:7f96 28 de          jr z,l7f76h          	;( .
	ram:7f98 fe 0d          cp 00dh              	;. .
	ram:7f9a 38 e6          jr c,l7f82h          	;8 .
	ram:7f9c fe 13          cp 013h              	;. .
	ram:7f9e 30 e2          jr nc,l7f82h         	;0 .
	ram:7fa0 18 d4          jr l7f76h            	;. .
l7fa2h:
	ram:7fa2 fe 09          cp 009h              	;. .
	ram:7fa4 30 d0          jr nc,l7f76h         	;0 .
	ram:7fa6 67             ld h,a               	;g
	ram:7fa7 f1             pop af               	;.
	ram:7fa8 18 d8          jr l7f82h            	;. .
	ram:7faa 21 bf 7f       ld hl,l7fbfh         	;! . .
	ram:7fad cd 58 06       call 00658h          	;. X .
	ram:7fb0 21 a5 32       ld hl,032a5h         	;! . 2
	ram:7fb3 cd 76 53       call sub_5376h       	;. v S
	ram:7fb6 21 cf 7f       ld hl,l7fcfh         	;! . .
	ram:7fb9 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:7fbc c3 48 66       jp l6648h            	;. H f
l7fbfh:
	ram:7fbf 54             ld d,h               	;T
	ram:7fc0 54             ld d,h               	;T
	ram:7fc1 d9             exx                  	;.
	ram:7fc2 34             inc (hl)             	;4
	ram:7fc3 02             ld (bc),a            	;.
	ram:7fc4 58             ld e,b               	;X
	ram:7fc5 b5             or l                 	;.
	ram:7fc6 34             inc (hl)             	;4
	ram:7fc7 b2             or d                 	;.
	ram:7fc8 58             ld e,b               	;X
	ram:7fc9 0f             rrca                 	;.
	ram:7fca 58             ld e,b               	;X
	ram:7fcb 0a             ld a,(bc)            	;.
	ram:7fcc ff             rst 38h              	;.
	ram:7fcd 00             nop                  	;.
	ram:7fce 00             nop                  	;.
l7fcfh:
	ram:7fcf 21 a1 32       ld hl,032a1h         	;! . 2
	ram:7fd2 22 5d 33       ld (0335dh),hl       	;" ] 3
	ram:7fd5 ff             rst 38h              	;.
	ram:7fd6 21 e8 7f       ld hl,l7fe8h         	;! . .
	ram:7fd9 cd 58 06       call 00658h          	;. X .
	ram:7fdc 21 27 33       ld hl,03327h         	;! ' 3
	ram:7fdf cd 76 53       call sub_5376h       	;. v S
	ram:7fe2 21 f8 7f       ld hl,l7ff8h         	;! . .
	ram:7fe5 c3 36 66       jp l6636h            	;. 6 f
l7fe8h:
	ram:7fe8 54             ld d,h               	;T
	ram:7fe9 54             ld d,h               	;T
	ram:7fea d9             exx                  	;.
	ram:7feb 34             inc (hl)             	;4
	ram:7fec 02             ld (bc),a            	;.
	ram:7fed 58             ld e,b               	;X
	ram:7fee b5             or l                 	;.
	ram:7fef 34             inc (hl)             	;4
	ram:7ff0 b2             or d                 	;.
	ram:7ff1 58             ld e,b               	;X
	ram:7ff2 0f             rrca                 	;.
	ram:7ff3 58             ld e,b               	;X
	ram:7ff4 0a             ld a,(bc)            	;.
	ram:7ff5 ff             rst 38h              	;.
	ram:7ff6 00             nop                  	;.
	ram:7ff7 00             nop                  	;.
l7ff8h:
	ram:7ff8 1e e9          ld e,0e9h            	;. .
	ram:7ffa 32 1f 06       ld (0061fh),a        	;2 . .
	ram:7ffd 33             inc sp               	;3
	ram:7ffe ff             rst 38h              	;.
	ram:7fff ff             rst 38h              	;.

