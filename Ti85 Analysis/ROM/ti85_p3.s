; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p3.rom

	org 04000h

sub_4000h:
	ram:4000 3e 01          ld a,001h            	;> .
sub_4002h:
	ram:4002 f5             push af              	;.
	ram:4003 cd 5d 0d       call 00d5dh          	;. ] .
	ram:4006 3a 82 80       ld a,(08082h)        	;: . .
	ram:4009 e6 80          and 080h             	;. .
	ram:400b c1             pop bc               	;.
	ram:400c b0             or b                 	;.
	ram:400d 32 82 80       ld (08082h),a        	;2 . .
	ram:4010 11 0e fc       ld de,0fc0eh         	;. . .
	ram:4013 cd 8b 26       call 0268bh          	;. . &
	ram:4016 30 6b          jr nc,l4083h         	;0 k
	ram:4018 3a 83 80       ld a,(08083h)        	;: . .
	ram:401b c6 f2          add a,0f2h           	;. .
l401dh:
	ram:401d c6 01          add a,001h           	;. .
	ram:401f 38 07          jr c,l4028h          	;8 .
	ram:4021 f5             push af              	;.
	ram:4022 cd cc 21       call 021cch          	;. . !
	ram:4025 f1             pop af               	;.
	ram:4026 18 f5          jr l401dh            	;. .
l4028h:
	ram:4028 cd 21 20       call 02021h          	;. !  
	ram:402b cd 9e 21       call 0219eh          	;. . !
	ram:402e cf             rst 8                	;.
	ram:402f 3e 01          ld a,001h            	;> .
	ram:4031 32 97 80       ld (08097h),a        	;2 . .
	ram:4034 18 1e          jr l4054h            	;. .
l4036h:
	ram:4036 32 99 80       ld (08099h),a        	;2 . .
	ram:4039 cd f5 1f       call 01ff5h          	;. . .
	ram:403c cd 95 20       call 02095h          	;. .  
	ram:403f 06 09          ld b,009h            	;. .
l4041h:
	ram:4041 c5             push bc              	;.
	ram:4042 cd 54 41       call sub_4154h       	;. T A
	ram:4045 cd 0b 41       call sub_410bh       	;. . A
	ram:4048 38 39          jr c,l4083h          	;8 9
	ram:404a c1             pop bc               	;.
	ram:404b 10 f4          djnz l4041h          	;. .
	ram:404d cd 2a 41       call sub_412ah       	;. * A
	ram:4050 cf             rst 8                	;.
	ram:4051 cd 56 20       call 02056h          	;. V  
l4054h:
	ram:4054 21 9b 80       ld hl,0809bh         	;! . .
	ram:4057 cd e7 21       call 021e7h          	;. . !
	ram:405a e6 0f          and 00fh             	;. .
	ram:405c 28 0d          jr z,l406bh          	;( .
	ram:405e 47             ld b,a               	;G
l405fh:
	ram:405f c5             push bc              	;.
	ram:4060 cd 54 41       call sub_4154h       	;. T A
	ram:4063 cd 0b 41       call sub_410bh       	;. . A
	ram:4066 38 1b          jr c,l4083h          	;8 .
	ram:4068 c1             pop bc               	;.
	ram:4069 10 f4          djnz l405fh          	;. .
l406bh:
	ram:406b 3a 99 80       ld a,(08099h)        	;: . .
	ram:406e d6 01          sub 001h             	;. .
	ram:4070 30 c4          jr nc,l4036h         	;0 .
	ram:4072 cd 2a 41       call sub_412ah       	;. * A
	ram:4075 cd 58 41       call sub_4158h       	;. X A
	ram:4078 20 09          jr nz,l4083h         	;.
	ram:407a 3a 82 80       ld a,(08082h)        	;: . .
	ram:407d e6 80          and 080h             	;. .
	ram:407f c8             ret z                	;.
	ram:4080 c3 1c 41       jp l411ch            	;. . A
l4083h:
	ram:4083 c3 08 0a       jp 00a08h            	;. . .
l4086h:
	ram:4086 3e 01          ld a,001h            	;> .
l4088h:
	ram:4088 e6 03          and 003h             	;. .
	ram:408a f5             push af              	;.
	ram:408b 32 82 80       ld (08082h),a        	;2 . .
	ram:408e cd 58 41       call sub_4158h       	;. X A
	ram:4091 28 0d          jr z,l40a0h          	;( .
	ram:4093 cd 1c 41       call l411ch          	;. . A
	ram:4096 cd 58 41       call sub_4158h       	;. X A
	ram:4099 20 e8          jr nz,l4083h         	;.
	ram:409b 3e 80          ld a,080h            	;> .
	ram:409d 32 82 80       ld (08082h),a        	;2 . .
l40a0h:
	ram:40a0 21 82 80       ld hl,08082h         	;! . .
	ram:40a3 7e             ld a,(hl)            	;~
	ram:40a4 e6 80          and 080h             	;. .
	ram:40a6 77             ld (hl),a            	;w
	ram:40a7 cd 21 20       call 02021h          	;. !  
	ram:40aa cd 9e 21       call 0219eh          	;. . !
	ram:40ad cf             rst 8                	;.
	ram:40ae 3e 01          ld a,001h            	;> .
	ram:40b0 32 96 80       ld (08096h),a        	;2 . .
	ram:40b3 3e 10          ld a,010h            	;> .
	ram:40b5 32 99 80       ld (08099h),a        	;2 . .
	ram:40b8 f1             pop af               	;.
	ram:40b9 d6 02          sub 002h             	;. .
	ram:40bb 3e 03          ld a,003h            	;> .
	ram:40bd 38 05          jr c,l40c4h          	;8 .
	ram:40bf 3e 02          ld a,002h            	;> .
	ram:40c1 28 01          jr z,l40c4h          	;( .
	ram:40c3 af             xor a                	;.
l40c4h:
	ram:40c4 32 98 80       ld (08098h),a        	;2 . .
	ram:40c7 18 1a          jr l40e3h            	;. .
l40c9h:
	ram:40c9 3a 98 80       ld a,(08098h)        	;: . .
	ram:40cc fe 05          cp 005h              	;. .
	ram:40ce 28 13          jr z,l40e3h          	;( .
l40d0h:
	ram:40d0 f5             push af              	;.
	ram:40d1 cd ba 22       call 022bah          	;. . "
	ram:40d4 30 08          jr nc,l40deh         	;0 .
	ram:40d6 f1             pop af               	;.
	ram:40d7 3e 05          ld a,005h            	;> .
	ram:40d9 32 98 80       ld (08098h),a        	;2 . .
	ram:40dc 18 05          jr l40e3h            	;. .
l40deh:
	ram:40de f1             pop af               	;.
	ram:40df d6 01          sub 001h             	;. .
	ram:40e1 30 ed          jr nc,l40d0h         	;0 .
l40e3h:
	ram:40e3 21 9b 80       ld hl,0809bh         	;! . .
	ram:40e6 cd e3 21       call 021e3h          	;. . !
	ram:40e9 e6 0f          and 00fh             	;. .
	ram:40eb 28 0f          jr z,l40fch          	;( .
	ram:40ed 47             ld b,a               	;G
	ram:40ee 3a 98 80       ld a,(08098h)        	;: . .
	ram:40f1 fe 05          cp 005h              	;. .
	ram:40f3 28 8e          jr z,l4083h          	;( .
l40f5h:
	ram:40f5 cd bf 22       call 022bfh          	;. . "
	ram:40f8 38 89          jr c,l4083h          	;8 .
	ram:40fa 10 f9          djnz l40f5h          	;. .
l40fch:
	ram:40fc 21 99 80       ld hl,08099h         	;! . .
	ram:40ff 35             dec (hl)             	;5
	ram:4100 20 c7          jr nz,l40c9h         	;.
	ram:4102 21 0d fc       ld hl,0fc0dh         	;! . .
	ram:4105 22 83 80       ld (08083h),hl       	;" . .
	ram:4108 c3 53 0f       jp 00f53h            	;. S .
sub_410bh:
	ram:410b 21 97 80       ld hl,08097h         	;! . .
	ram:410e 11 8c 80       ld de,0808ch         	;. . .
	ram:4111 06 08          ld b,008h            	;. .
	ram:4113 b7             or a                 	;.
l4114h:
	ram:4114 1a             ld a,(de)            	;.
	ram:4115 8e             adc a,(hl)           	;.
	ram:4116 12             ld (de),a            	;.
	ram:4117 1b             dec de               	;.
	ram:4118 2b             dec hl               	;+
	ram:4119 10 f9          djnz l4114h          	;. .
	ram:411b c9             ret                  	;.
l411ch:
	ram:411c cd a4 41       call sub_41a4h       	;. . A
	ram:411f cd a8 21       call 021a8h          	;. . !
	ram:4122 3e 01          ld a,001h            	;> .
	ram:4124 32 97 80       ld (08097h),a        	;2 . .
	ram:4127 cd 0b 41       call sub_410bh       	;. . A
sub_412ah:
	ram:412a 06 01          ld b,001h            	;. .
l412ch:
	ram:412c 3a 82 80       ld a,(08082h)        	;: . .
	ram:412f e6 1f          and 01fh             	;. .
	ram:4131 d6 02          sub 002h             	;. .
	ram:4133 d8             ret c                	;.
	ram:4134 3e 77          ld a,077h            	;> w
	ram:4136 28 02          jr z,l413ah          	;( .
	ram:4138 3e 11          ld a,011h            	;> .
l413ah:
	ram:413a cb 40          bit 0,b              	;. @
	ram:413c 21 85 80       ld hl,08085h         	;! . .
	ram:413f 06 08          ld b,008h            	;. .
	ram:4141 20 09          jr nz,l414ch         	;.
	ram:4143 2f             cpl                  	;/
	ram:4144 4f             ld c,a               	;O
l4145h:
	ram:4145 7e             ld a,(hl)            	;~
	ram:4146 b1             or c                 	;.
	ram:4147 77             ld (hl),a            	;w
	ram:4148 23             inc hl               	;#
	ram:4149 10 fa          djnz l4145h          	;. .
	ram:414b c9             ret                  	;.
l414ch:
	ram:414c 4f             ld c,a               	;O
l414dh:
	ram:414d 7e             ld a,(hl)            	;~
	ram:414e a1             and c                	;.
	ram:414f 77             ld (hl),a            	;w
	ram:4150 23             inc hl               	;#
	ram:4151 10 fa          djnz l414dh          	;. .
	ram:4153 c9             ret                  	;.
sub_4154h:
	ram:4154 06 00          ld b,000h            	;. .
	ram:4156 18 d4          jr l412ch            	;. .
sub_4158h:
	ram:4158 3a 82 80       ld a,(08082h)        	;: . .
	ram:415b e6 03          and 003h             	;. .
	ram:415d 21 85 80       ld hl,08085h         	;! . .
	ram:4160 d6 02          sub 002h             	;. .
	ram:4162 3e 80          ld a,080h            	;> .
	ram:4164 38 06          jr c,l416ch          	;8 .
	ram:4166 3e 40          ld a,040h            	;> @
	ram:4168 28 02          jr z,l416ch          	;( .
	ram:416a 3e 10          ld a,010h            	;> .
l416ch:
	ram:416c a6             and (hl)             	;.
	ram:416d c9             ret                  	;.
	ram:416e 79             ld a,c               	;y
	ram:416f b7             or a                 	;.
	ram:4170 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:4173 e9             jp (hl)              	;.
	ram:4174 cd b0 41       call sub_41b0h       	;. . A
l4177h:
	ram:4177 1a             ld a,(de)            	;.
	ram:4178 a6             and (hl)             	;.
	ram:4179 12             ld (de),a            	;.
	ram:417a 13             inc de               	;.
	ram:417b 23             inc hl               	;#
	ram:417c 10 f9          djnz l4177h          	;. .
	ram:417e c3 86 40       jp l4086h            	;. . @
	ram:4181 cd b0 41       call sub_41b0h       	;. . A
l4184h:
	ram:4184 1a             ld a,(de)            	;.
	ram:4185 b6             or (hl)              	;.
	ram:4186 12             ld (de),a            	;.
	ram:4187 13             inc de               	;.
	ram:4188 23             inc hl               	;#
	ram:4189 10 f9          djnz l4184h          	;. .
	ram:418b c3 86 40       jp l4086h            	;. . @
	ram:418e cd b0 41       call sub_41b0h       	;. . A
l4191h:
	ram:4191 1a             ld a,(de)            	;.
	ram:4192 ae             xor (hl)             	;.
	ram:4193 12             ld (de),a            	;.
	ram:4194 13             inc de               	;.
	ram:4195 23             inc hl               	;#
	ram:4196 10 f9          djnz l4191h          	;. .
	ram:4198 c3 86 40       jp l4086h            	;. . @
	ram:419b cd 00 40       call sub_4000h       	;. . @
	ram:419e cd a4 41       call sub_41a4h       	;. . A
	ram:41a1 c3 86 40       jp l4086h            	;. . @
sub_41a4h:
	ram:41a4 21 85 80       ld hl,08085h         	;! . .
	ram:41a7 06 08          ld b,008h            	;. .
l41a9h:
	ram:41a9 7e             ld a,(hl)            	;~
	ram:41aa 2f             cpl                  	;/
	ram:41ab 77             ld (hl),a            	;w
	ram:41ac 23             inc hl               	;#
	ram:41ad 10 fa          djnz l41a9h          	;. .
	ram:41af c9             ret                  	;.
sub_41b0h:
	ram:41b0 cd 75 20       call 02075h          	;. u  
	ram:41b3 cd 00 40       call sub_4000h       	;. . @
	ram:41b6 cd 99 23       call 02399h          	;. . #
	ram:41b9 cd 00 40       call sub_4000h       	;. . @
	ram:41bc cd 29 20       call 02029h          	;. )  
	ram:41bf 21 90 80       ld hl,08090h         	;! . .
	ram:41c2 11 85 80       ld de,08085h         	;. . .
	ram:41c5 06 08          ld b,008h            	;. .
	ram:41c7 c9             ret                  	;.
	ram:41c8 3e 01          ld a,001h            	;> .
	ram:41ca 18 01          jr l41cdh            	;. .
	ram:41cc af             xor a                	;.
l41cdh:
	ram:41cd f5             push af              	;.
	ram:41ce cd 6a 42       call sub_426ah       	;. j B
	ram:41d1 cd 02 40       call sub_4002h       	;. . @
	ram:41d4 21 85 80       ld hl,08085h         	;! . .
	ram:41d7 3a 82 80       ld a,(08082h)        	;: . .
	ram:41da e6 03          and 003h             	;. .
	ram:41dc fe 03          cp 003h              	;. .
	ram:41de 20 16          jr nz,l41f6h         	;.
	ram:41e0 cd e3 21       call 021e3h          	;. . !
	ram:41e3 cd c7 21       call 021c7h          	;. . !
l41e6h:
	ram:41e6 21 85 80       ld hl,08085h         	;! . .
l41e9h:
	ram:41e9 d1             pop de               	;.
	ram:41ea cb 42          bit 0,d              	;. B
	ram:41ec 28 02          jr z,l41f0h          	;( .
	ram:41ee b6             or (hl)              	;.
	ram:41ef 77             ld (hl),a            	;w
l41f0h:
	ram:41f0 3a 82 80       ld a,(08082h)        	;: . .
	ram:41f3 c3 88 40       jp l4088h            	;. . @
l41f6h:
	ram:41f6 4f             ld c,a               	;O
	ram:41f7 af             xor a                	;.
	ram:41f8 06 08          ld b,008h            	;. .
	ram:41fa f5             push af              	;.
l41fbh:
	ram:41fb f1             pop af               	;.
	ram:41fc cb 1e          rr (hl)              	;. .
	ram:41fe f5             push af              	;.
	ram:41ff cb 41          bit 0,c              	;. A
	ram:4201 20 10          jr nz,l4213h         	;.
	ram:4203 cb 5e          bit 3,(hl)           	;. ^
	ram:4205 28 04          jr z,l420bh          	;( .
	ram:4207 cb 9e          res 3,(hl)           	;. .
	ram:4209 cb d6          set 2,(hl)           	;. .
l420bh:
	ram:420b cb 7e          bit 7,(hl)           	;. ~
	ram:420d 28 04          jr z,l4213h          	;( .
	ram:420f cb be          res 7,(hl)           	;. .
	ram:4211 cb f6          set 6,(hl)           	;. .
l4213h:
	ram:4213 23             inc hl               	;#
	ram:4214 10 e5          djnz l41fbh          	;. .
	ram:4216 f1             pop af               	;.
	ram:4217 30 cd          jr nc,l41e6h         	;0 .
	ram:4219 3e 80          ld a,080h            	;> .
	ram:421b cb 41          bit 0,c              	;. A
	ram:421d 20 c7          jr nz,l41e6h         	;.
	ram:421f 3e 40          ld a,040h            	;> @
	ram:4221 18 c3          jr l41e6h            	;. .
	ram:4223 3e 01          ld a,001h            	;> .
	ram:4225 18 01          jr l4228h            	;. .
	ram:4227 af             xor a                	;.
l4228h:
	ram:4228 f5             push af              	;.
	ram:4229 cd 6a 42       call sub_426ah       	;. j B
	ram:422c cd 02 40       call sub_4002h       	;. . @
	ram:422f 21 8c 80       ld hl,0808ch         	;! . .
	ram:4232 3a 82 80       ld a,(08082h)        	;: . .
	ram:4235 e6 03          and 003h             	;. .
	ram:4237 fe 03          cp 003h              	;. .
	ram:4239 20 08          jr nz,l4243h         	;.
	ram:423b cd 17 22       call 02217h          	;. . "
l423eh:
	ram:423e 21 8c 80       ld hl,0808ch         	;! . .
	ram:4241 18 a6          jr l41e9h            	;. .
l4243h:
	ram:4243 4f             ld c,a               	;O
	ram:4244 af             xor a                	;.
	ram:4245 06 08          ld b,008h            	;. .
	ram:4247 f5             push af              	;.
l4248h:
	ram:4248 f1             pop af               	;.
	ram:4249 cb 16          rl (hl)              	;. .
	ram:424b f5             push af              	;.
	ram:424c cb 41          bit 0,c              	;. A
	ram:424e 20 11          jr nz,l4261h         	;.
	ram:4250 cb 5e          bit 3,(hl)           	;. ^
	ram:4252 28 04          jr z,l4258h          	;( .
	ram:4254 cb 9e          res 3,(hl)           	;. .
	ram:4256 cb e6          set 4,(hl)           	;. .
l4258h:
	ram:4258 cb 7e          bit 7,(hl)           	;. ~
	ram:425a 28 05          jr z,l4261h          	;( .
	ram:425c cb be          res 7,(hl)           	;. .
	ram:425e f1             pop af               	;.
	ram:425f 37             scf                  	;7
	ram:4260 f5             push af              	;.
l4261h:
	ram:4261 2b             dec hl               	;+
	ram:4262 10 e4          djnz l4248h          	;. .
	ram:4264 af             xor a                	;.
	ram:4265 f1             pop af               	;.
	ram:4266 ce 00          adc a,000h           	;. .
	ram:4268 18 d4          jr l423eh            	;. .
sub_426ah:
	ram:426a 3e 01          ld a,001h            	;> .
	ram:426c fd cb 0a 56    bit 2,(iy+00ah)      	;. . . V
	ram:4270 c0             ret nz               	;.
	ram:4271 3c             inc a                	;<
	ram:4272 fd cb 0a 5e    bit 3,(iy+00ah)      	;. . . ^
	ram:4276 c0             ret nz               	;.
	ram:4277 3c             inc a                	;<
	ram:4278 fd cb 0a 66    bit 4,(iy+00ah)      	;. . . f
	ram:427c c0             ret nz               	;.
	ram:427d c3 20 0a       jp 00a20h            	;.   .
	ram:4280 78             ld a,b               	;x
	ram:4281 43             ld b,e               	;C
	ram:4282 1e 48          ld e,048h            	;. H
	ram:4284 f8             ret m                	;.
	ram:4285 43             ld b,e               	;C
	ram:4286 a8             xor b                	;.
	ram:4287 43             ld b,e               	;C
	ram:4288 b5             or l                 	;.
	ram:4289 43             ld b,e               	;C
	ram:428a c2 43 dc       jp nz,0dc43h         	;. C .
	ram:428d 43             ld b,e               	;C
	ram:428e fc 43 4b       call m,04b43h        	;. C K
	ram:4291 48             ld c,b               	;H
	ram:4292 58             ld e,b               	;X
	ram:4293 48             ld c,b               	;H
	ram:4294 21 48 06       ld hl,00648h         	;! H .
	ram:4297 44             ld b,h               	;D
	ram:4298 35             dec (hl)             	;5
	ram:4299 44             ld b,h               	;D
	ram:429a 38 44          jr c,70              	;8 D
	ram:429c 91             sub c                	;.
	ram:429d 46             ld b,(hl)            	;F
	ram:429e 8d             adc a,l              	;.
	ram:429f 47             ld b,a               	;G
	ram:42a0 88             adc a,b              	;.
	ram:42a1 46             ld b,(hl)            	;F
	ram:42a2 ce 47          adc a,047h           	;. G
	ram:42a4 c2 48 cb       jp nz,0cb48h         	;. H .
	ram:42a7 48             ld c,b               	;H
	ram:42a8 44             ld b,h               	;D
	ram:42a9 48             ld c,b               	;H
	ram:42aa b5             or l                 	;.
	ram:42ab 44             ld b,h               	;D
	ram:42ac 29             add hl,hl            	;)
	ram:42ad 45             ld b,l               	;E
	ram:42ae c3 49 94       jp 09449h            	;. I .
	ram:42b1 45             ld b,l               	;E
	ram:42b2 b6             or (hl)              	;.
	ram:42b3 45             ld b,l               	;E
	ram:42b4 bd             cp l                 	;.
	ram:42b5 45             ld b,l               	;E
	ram:42b6 c4 45 cb       call nz,0cb45h       	;. E .
	ram:42b9 45             ld b,l               	;E
	ram:42ba d2 45 aa       jp nc,0aa45h         	;. E .
	ram:42bd 45             ld b,l               	;E
	ram:42be ee 45          xor 045h             	;. E
	ram:42c0 0c             inc c                	;.
	ram:42c1 46             ld b,(hl)            	;F
	ram:42c2 13             inc de               	;.
	ram:42c3 46             ld b,(hl)            	;F
	ram:42c4 1a             ld a,(de)            	;.
	ram:42c5 46             ld b,(hl)            	;F
	ram:42c6 21 46 33       ld hl,03346h         	;! F 3
	ram:42c9 46             ld b,(hl)            	;F
	ram:42ca d9             exx                  	;.
	ram:42cb 45             ld b,l               	;E
	ram:42cc e0             ret po               	;.
	ram:42cd 45             ld b,l               	;E
	ram:42ce e7             rst 20h              	;.
	ram:42cf 45             ld b,l               	;E
sub_42d0h:
	ram:42d0 11 00 00       ld de,00000h         	;. . .
l42d3h:
	ram:42d3 cd 82 74       call sub_7482h       	;. . t
	ram:42d6 d8             ret c                	;.
	ram:42d7 fe da          cp 0dah              	;. .
	ram:42d9 20 10          jr nz,l42ebh         	;.
	ram:42db 7a             ld a,d               	;z
	ram:42dc b3             or e                 	;.
	ram:42dd 20 17          jr nz,l42f6h         	;.
	ram:42df 3e da          ld a,0dah            	;> .
l42e1h:
	ram:42e1 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:42e5 f5             push af              	;.
	ram:42e6 cd da 5d       call sub_5ddah       	;. . ]
	ram:42e9 f1             pop af               	;.
	ram:42ea c9             ret                  	;.
l42ebh:
	ram:42eb fe de          cp 0deh              	;. .
	ram:42ed 20 0e          jr nz,l42fdh         	;.
	ram:42ef 7a             ld a,d               	;z
	ram:42f0 b3             or e                 	;.
	ram:42f1 3e de          ld a,0deh            	;> .
	ram:42f3 28 ec          jr z,l42e1h          	;( .
	ram:42f5 1b             dec de               	;.
l42f6h:
	ram:42f6 d5             push de              	;.
	ram:42f7 cd 20 43       call sub_4320h       	;.   C
	ram:42fa d1             pop de               	;.
	ram:42fb 18 d6          jr l42d3h            	;. .
l42fdh:
	ram:42fd fe dd          cp 0ddh              	;. .
	ram:42ff 20 03          jr nz,l4304h         	;.
l4301h:
	ram:4301 13             inc de               	;.
	ram:4302 18 f2          jr l42f6h            	;. .
l4304h:
	ram:4304 fe db          cp 0dbh              	;. .
	ram:4306 28 f9          jr z,l4301h          	;( .
	ram:4308 fe dc          cp 0dch              	;. .
	ram:430a 28 f5          jr z,l4301h          	;( .
	ram:430c fe d8          cp 0d8h              	;. .
	ram:430e 20 e6          jr nz,l42f6h         	;.
	ram:4310 d5             push de              	;.
	ram:4311 cd 20 43       call sub_4320h       	;.   C
	ram:4314 d1             pop de               	;.
	ram:4315 cd 82 74       call sub_7482h       	;. . t
	ram:4318 d8             ret c                	;.
	ram:4319 fe d9          cp 0d9h              	;. .
	ram:431b 20 b6          jr nz,l42d3h         	;.
	ram:431d 13             inc de               	;.
	ram:431e 18 d6          jr l42f6h            	;. .
sub_4320h:
	ram:4320 cd fa 74       call sub_74fah       	;. . t
	ram:4323 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4327 c8             ret z                	;.
	ram:4328 fe 44          cp 044h              	;. D
	ram:432a 28 16          jr z,l4342h          	;( .
	ram:432c fe e0          cp 0e0h              	;. .
	ram:432e 28 12          jr z,l4342h          	;( .
	ram:4330 fe 2d          cp 02dh              	;. -
	ram:4332 28 0e          jr z,l4342h          	;( .
	ram:4334 fe ff          cp 0ffh              	;. .
	ram:4336 28 0a          jr z,l4342h          	;( .
	ram:4338 fe e1          cp 0e1h              	;. .
	ram:433a 20 0f          jr nz,l434bh         	;.
	ram:433c 03             inc bc               	;.
	ram:433d 03             inc bc               	;.
	ram:433e ed 43 61 8a    ld (08a61h),bc       	;. C a .
l4342h:
	ram:4342 cd 6e 74       call sub_746eh       	;. n t
	ram:4345 d8             ret c                	;.
	ram:4346 b7             or a                 	;.
	ram:4347 20 f9          jr nz,l4342h         	;.
	ram:4349 18 d5          jr sub_4320h         	;. .
l434bh:
	ram:434b fe 32          cp 032h              	;. 2
	ram:434d 28 19          jr z,l4368h          	;( .
	ram:434f fe 33          cp 033h              	;. 3
	ram:4351 38 cd          jr c,sub_4320h       	;8 .
	ram:4353 fe 3b          cp 03bh              	;. ;
	ram:4355 30 0b          jr nc,l4362h         	;0 .
	ram:4357 d6 32          sub 032h             	;. 2
	ram:4359 6f             ld l,a               	;o
l435ah:
	ram:435a 26 00          ld h,000h            	;& .
	ram:435c 09             add hl,bc            	;.
	ram:435d 22 61 8a       ld (08a61h),hl       	;" a .
	ram:4360 18 be          jr sub_4320h         	;. .
l4362h:
	ram:4362 fe 3d          cp 03dh              	;. =
	ram:4364 28 02          jr z,l4368h          	;( .
	ram:4366 30 b8          jr nc,sub_4320h      	;0 .
l4368h:
	ram:4368 f5             push af              	;.
	ram:4369 cd 6e 74       call sub_746eh       	;. n t
	ram:436c 38 08          jr c,l4376h          	;8 .
	ram:436e 6f             ld l,a               	;o
	ram:436f f1             pop af               	;.
	ram:4370 fe 3d          cp 03dh              	;. =
	ram:4372 20 e6          jr nz,l435ah         	;.
	ram:4374 18 aa          jr sub_4320h         	;. .
l4376h:
	ram:4376 e1             pop hl               	;.
	ram:4377 c9             ret                  	;.
	ram:4378 cd 35 74       call sub_7435h       	;. 5 t
	ram:437b ca 2c 0a       jp z,00a2ch          	;. , .
	ram:437e cd ff 73       call sub_73ffh       	;. . s
	ram:4381 cd 6b 74       call sub_746bh       	;. k t
	ram:4384 da 1c 0a       jp c,00a1ch          	;. . .
	ram:4387 cd 82 74       call sub_7482h       	;. . t
	ram:438a da 1c 0a       jp c,00a1ch          	;. . .
	ram:438d fe d9          cp 0d9h              	;. .
	ram:438f 20 0b          jr nz,l439ch         	;.
	ram:4391 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4395 cd da 5d       call sub_5ddah       	;. . ]
	ram:4398 e1             pop hl               	;.
	ram:4399 c3 54 5a       jp l5a54h            	;. T Z
l439ch:
	ram:439c cd 4a 2e       call 02e4ah          	;. J .
	ram:439f cd 83 53       call sub_5383h       	;. . S
	ram:43a2 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:43a5 c3 ac 44       jp l44ach            	;. . D
	ram:43a8 cd 35 74       call sub_7435h       	;. 5 t
	ram:43ab ca 2c 0a       jp z,00a2ch          	;. , .
	ram:43ae cd ff 73       call sub_73ffh       	;. . s
	ram:43b1 e1             pop hl               	;.
	ram:43b2 c3 64 59       jp l5964h            	;. d Y
	ram:43b5 cd 35 74       call sub_7435h       	;. 5 t
	ram:43b8 ca 2c 0a       jp z,00a2ch          	;. , .
	ram:43bb cd ff 73       call sub_73ffh       	;. . s
	ram:43be e1             pop hl               	;.
	ram:43bf c3 9d 59       jp l599dh            	;. . Y
	ram:43c2 06 19          ld b,019h            	;. .
	ram:43c4 0e 01          ld c,001h            	;. .
	ram:43c6 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:43c9 cd 6b 74       call sub_746bh       	;. k t
	ram:43cc fe 10          cp 010h              	;. .
	ram:43ce 20 62          jr nz,l4432h         	;b
	ram:43d0 cd 97 2d       call 02d97h          	;. . -
	ram:43d3 cd ca 74       call sub_74cah       	;. . t
	ram:43d6 cd d9 73       call sub_73d9h       	;. . s
	ram:43d9 c3 25 4a       jp l4a25h            	;. % J
	ram:43dc 3e 01          ld a,001h            	;> .
l43deh:
	ram:43de 32 98 80       ld (08098h),a        	;2 . .
	ram:43e1 cd da 5d       call sub_5ddah       	;. . ]
	ram:43e4 cd a8 2d       call 02da8h          	;. . -
	ram:43e7 cd 8e 2d       call 02d8eh          	;. . -
	ram:43ea e1             pop hl               	;.
	ram:43eb c5             push bc              	;.
	ram:43ec cd 05 75       call sub_7505h       	;. . u
	ram:43ef 28 41          jr z,l4432h          	;( A
	ram:43f1 cd 8e 2d       call 02d8eh          	;. . -
	ram:43f4 3a 98 80       ld a,(08098h)        	;: . .
	ram:43f7 c9             ret                  	;.
	ram:43f8 3e 02          ld a,002h            	;> .
	ram:43fa 18 e2          jr l43deh            	;. .
sub_43fch:
	ram:43fc cd da 5d       call sub_5ddah       	;. . ]
	ram:43ff 2a 63 8a       ld hl,(08a63h)       	;* c .
	ram:4402 22 61 8a       ld (08a61h),hl       	;" a .
	ram:4405 c9             ret                  	;.
	ram:4406 cd fc 43       call sub_43fch       	;. . C
	ram:4409 2a df 8b       ld hl,(08bdfh)       	;* . .
	ram:440c 11 0a 00       ld de,0000ah         	;. . .
	ram:440f 19             add hl,de            	;.
	ram:4410 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:4413 2a e3 8b       ld hl,(08be3h)       	;* . .
	ram:4416 11 f5 ff       ld de,0fff5h         	;. . .
	ram:4419 19             add hl,de            	;.
	ram:441a 22 e5 8b       ld (08be5h),hl       	;" . .
	ram:441d c9             ret                  	;.
sub_441eh:
	ram:441e cd fa 74       call sub_74fah       	;. . t
	ram:4421 c8             ret z                	;.
sub_4422h:
	ram:4422 ed 43 61 8a    ld (08a61h),bc       	;. C a .
sub_4426h:
	ram:4426 fe 11          cp 011h              	;. .
	ram:4428 20 08          jr nz,l4432h         	;.
	ram:442a cd fa 74       call sub_74fah       	;. . t
	ram:442d c8             ret z                	;.
	ram:442e ed 43 61 8a    ld (08a61h),bc       	;. C a .
l4432h:
	ram:4432 c3 1c 0a       jp 00a1ch            	;. . .
	ram:4435 af             xor a                	;.
	ram:4436 18 02          jr l443ah            	;. .
	ram:4438 3e 01          ld a,001h            	;> .
l443ah:
	ram:443a f5             push af              	;.
	ram:443b cd 6b 74       call sub_746bh       	;. k t
	ram:443e fe 10          cp 010h              	;. .
	ram:4440 20 f0          jr nz,l4432h         	;.
	ram:4442 cd ca 74       call sub_74cah       	;. . t
	ram:4445 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4449 cd d9 73       call sub_73d9h       	;. . s
	ram:444c d7             rst 10h              	;.
	ram:444d da 38 0a       jp c,00a38h          	;. 8 .
	ram:4450 ed 53 eb 85    ld (085ebh),de       	;. S . .
	ram:4454 e6 1f          and 01fh             	;. .
	ram:4456 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:4459 cd 85 20       call 02085h          	;. .  
	ram:445c cd c2 77       call sub_77c2h       	;. . w
	ram:445f 0b             dec bc               	;.
	ram:4460 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4464 b7             or a                 	;.
	ram:4465 cd f2 73       call sub_73f2h       	;. . s
	ram:4468 cd 1e 44       call sub_441eh       	;. . D
	ram:446b cd 6b 74       call sub_746bh       	;. k t
	ram:446e 38 c2          jr c,l4432h          	;8 .
	ram:4470 cd 82 74       call sub_7482h       	;. . t
	ram:4473 38 bd          jr c,l4432h          	;8 .
	ram:4475 cd 4a 2e       call 02e4ah          	;. J .
	ram:4478 cd 31 2e       call 02e31h          	;. 1 .
	ram:447b cd 83 53       call sub_5383h       	;. . S
	ram:447e c2 28 0a       jp nz,00a28h         	;. ( .
	ram:4481 cd 85 20       call 02085h          	;. .  
	ram:4484 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4487 e7             rst 20h              	;.
	ram:4488 f1             pop af               	;.
	ram:4489 f5             push af              	;.
	ram:448a b7             or a                 	;.
	ram:448b 28 05          jr z,l4492h          	;( .
	ram:448d cd 6e 0d       call 00d6eh          	;. n .
	ram:4490 18 03          jr l4495h            	;. .
l4492h:
	ram:4492 cd 69 0d       call 00d69h          	;. i .
l4495h:
	ram:4495 cf             rst 8                	;.
	ram:4496 cd f4 2d       call 02df4h          	;. . -
	ram:4499 cd 45 2e       call 02e45h          	;. E .
	ram:449c cd 5b 64       call sub_645bh       	;. [ d
	ram:449f cd 49 20       call 02049h          	;. I  
	ram:44a2 f1             pop af               	;.
	ram:44a3 b7             or a                 	;.
	ram:44a4 f5             push af              	;.
	ram:44a5 cc 65 39       call z,03965h        	;. e 9
	ram:44a8 f1             pop af               	;.
	ram:44a9 c4 6b 39       call nz,0396bh       	;. k 9
l44ach:
	ram:44ac cd d1 23       call 023d1h          	;. . #
	ram:44af cc 20 43       call z,sub_4320h     	;.   C
	ram:44b2 c3 4f 4a       jp l4a4fh            	;. O J
	ram:44b5 cd 6b 74       call sub_746bh       	;. k t
	ram:44b8 fe 10          cp 010h              	;. .
	ram:44ba c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:44bd cd cf 73       call sub_73cfh       	;. . s
	ram:44c0 fe 32          cp 032h              	;. 2
	ram:44c2 da 1c 0a       jp c,00a1ch          	;. . .
	ram:44c5 fe 3c          cp 03ch              	;. <
	ram:44c7 28 03          jr z,l44cch          	;( .
	ram:44c9 d2 1c 0a       jp nc,00a1ch         	;. . .
l44cch:
	ram:44cc f5             push af              	;.
	ram:44cd cd d8 74       call sub_74d8h       	;. . t
	ram:44d0 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:44d4 cd d9 73       call sub_73d9h       	;. . s
	ram:44d7 f1             pop af               	;.
	ram:44d8 20 0b          jr nz,l44e5h         	;.
	ram:44da 3a 84 80       ld a,(08084h)        	;: . .
	ram:44dd fe 41          cp 041h              	;. A
	ram:44df 28 04          jr z,l44e5h          	;( .
	ram:44e1 fe 52          cp 052h              	;. R
	ram:44e3 20 41          jr nz,l4526h         	;A
l44e5h:
	ram:44e5 d7             rst 10h              	;.
	ram:44e6 da 38 0a       jp c,00a38h          	;. 8 .
	ram:44e9 e6 1f          and 01fh             	;. .
	ram:44eb fe 0a          cp 00ah              	;. .
	ram:44ed 20 37          jr nz,l4526h         	;7
	ram:44ef eb             ex de,hl             	;.
	ram:44f0 22 d0 80       ld (080d0h),hl       	;" . .
	ram:44f3 5e             ld e,(hl)            	;^
	ram:44f4 23             inc hl               	;#
	ram:44f5 56             ld d,(hl)            	;V
	ram:44f6 eb             ex de,hl             	;.
	ram:44f7 e5             push hl              	;.
	ram:44f8 cd 2a 2a       call 02a2ah          	;. * *
	ram:44fb 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:44fe c1             pop bc               	;.
	ram:44ff 03             inc bc               	;.
	ram:4500 03             inc bc               	;.
	ram:4501 ed b0          ldir                 	;. .
	ram:4503 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4506 cd ca 74       call sub_74cah       	;. . t
	ram:4509 c4 22 44       call nz,sub_4422h    	;. " D
	ram:450c cd 13 75       call sub_7513h       	;. . u
	ram:450f cf             rst 8                	;.
	ram:4510 cd f4 2d       call 02df4h          	;. . -
	ram:4513 cd 95 36       call 03695h          	;. . 6
	ram:4516 c9             ret                  	;.
sub_4517h:
	ram:4517 01 02 00       ld bc,00002h         	;. . .
sub_451ah:
	ram:451a fd cb 06 8e    res 1,(iy+006h)      	;. . . .
	ram:451e cd 2f 71       call sub_712fh       	;. / q
	ram:4521 fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:4525 c8             ret z                	;.
l4526h:
	ram:4526 c3 28 0a       jp 00a28h            	;. ( .
	ram:4529 cd 6b 74       call sub_746bh       	;. k t
	ram:452c fe 10          cp 010h              	;. .
	ram:452e c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:4531 cd cf 73       call sub_73cfh       	;. . s
	ram:4534 fe 32          cp 032h              	;. 2
	ram:4536 da 1c 0a       jp c,00a1ch          	;. . .
	ram:4539 fe 3c          cp 03ch              	;. <
	ram:453b 28 03          jr z,l4540h          	;( .
	ram:453d d2 1c 0a       jp nc,00a1ch         	;. . .
l4540h:
	ram:4540 f5             push af              	;.
	ram:4541 cd d8 74       call sub_74d8h       	;. . t
	ram:4544 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4548 cd d9 73       call sub_73d9h       	;. . s
	ram:454b f1             pop af               	;.
	ram:454c 20 07          jr nz,l4555h         	;.
	ram:454e 3a 84 80       ld a,(08084h)        	;: . .
	ram:4551 fe 41          cp 041h              	;. A
	ram:4553 20 d1          jr nz,l4526h         	;.
l4555h:
	ram:4555 d7             rst 10h              	;.
	ram:4556 da 38 0a       jp c,00a38h          	;. 8 .
	ram:4559 e6 1f          and 01fh             	;. .
	ram:455b fe 0c          cp 00ch              	;. .
	ram:455d 20 c7          jr nz,l4526h         	;.
	ram:455f eb             ex de,hl             	;.
	ram:4560 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4563 5e             ld e,(hl)            	;^
	ram:4564 23             inc hl               	;#
	ram:4565 56             ld d,(hl)            	;V
	ram:4566 eb             ex de,hl             	;.
	ram:4567 e5             push hl              	;.
	ram:4568 cd 17 2a       call 02a17h          	;. . *
	ram:456b 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:456e c1             pop bc               	;.
	ram:456f 03             inc bc               	;.
	ram:4570 03             inc bc               	;.
	ram:4571 ed b0          ldir                 	;. .
	ram:4573 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4576 cd cf 73       call sub_73cfh       	;. . s
	ram:4579 fe 32          cp 032h              	;. 2
	ram:457b da 1c 0a       jp c,00a1ch          	;. . .
	ram:457e fe 3c          cp 03ch              	;. <
	ram:4580 d2 1c 0a       jp nc,00a1ch         	;. . .
	ram:4583 cd d8 74       call sub_74d8h       	;. . t
	ram:4586 c4 22 44       call nz,sub_4422h    	;. " D
	ram:4589 d7             rst 10h              	;.
	ram:458a d4 9c 66       call nc,sub_669ch    	;. . f
	ram:458d cd ef 2d       call 02defh          	;. . -
	ram:4590 cd 9b 36       call 0369bh          	;. . 6
	ram:4593 c9             ret                  	;.
	ram:4594 06 04          ld b,004h            	;. .
	ram:4596 0e 01          ld c,001h            	;. .
	ram:4598 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:459b cd 6b 74       call sub_746bh       	;. k t
	ram:459e fe 10          cp 010h              	;. .
	ram:45a0 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:45a3 cd 97 2d       call 02d97h          	;. . -
	ram:45a6 e1             pop hl               	;.
	ram:45a7 c3 34 69       jp l6934h            	;. 4 i
	ram:45aa cd da 5d       call sub_5ddah       	;. . ]
	ram:45ad cd a1 36       call 036a1h          	;. . 6
	ram:45b0 da 38 0a       jp c,00a38h          	;. 8 .
	ram:45b3 c3 27 52       jp l5227h            	;. ' R
	ram:45b6 06 0f          ld b,00fh            	;. .
	ram:45b8 11 9d 51       ld de,l519dh         	;. . Q
	ram:45bb 18 36          jr l45f3h            	;. 6
	ram:45bd 06 10          ld b,010h            	;. .
	ram:45bf 11 a6 51       ld de,l51a6h         	;. . Q
	ram:45c2 18 2f          jr l45f3h            	;. /
	ram:45c4 06 11          ld b,011h            	;. .
	ram:45c6 11 b3 51       ld de,l51b3h         	;. . Q
	ram:45c9 18 28          jr l45f3h            	;. (
	ram:45cb 06 12          ld b,012h            	;. .
	ram:45cd 11 b7 51       ld de,l51b7h         	;. . Q
	ram:45d0 18 21          jr l45f3h            	;. !
	ram:45d2 06 13          ld b,013h            	;. .
	ram:45d4 11 bb 51       ld de,l51bbh         	;. . Q
	ram:45d7 18 1a          jr l45f3h            	;. .
	ram:45d9 06 14          ld b,014h            	;. .
	ram:45db 11 bf 51       ld de,l51bfh         	;. . Q
	ram:45de 18 13          jr l45f3h            	;. .
	ram:45e0 06 15          ld b,015h            	;. .
	ram:45e2 11 c3 51       ld de,l51c3h         	;. . Q
	ram:45e5 18 0c          jr l45f3h            	;. .
	ram:45e7 06 16          ld b,016h            	;. .
	ram:45e9 11 c7 51       ld de,l51c7h         	;. . Q
	ram:45ec 18 05          jr l45f3h            	;. .
	ram:45ee 06 0c          ld b,00ch            	;. .
	ram:45f0 11 33 51       ld de,l5133h         	;. 3 Q
l45f3h:
	ram:45f3 c5             push bc              	;.
	ram:45f4 cd b0 73       call sub_73b0h       	;. . s
	ram:45f7 cd fa 74       call sub_74fah       	;. . t
	ram:45fa c1             pop bc               	;.
	ram:45fb c2 f8 49       jp nz,l49f8h         	;. . I
	ram:45fe d5             push de              	;.
	ram:45ff cd f3 3b       call 03bf3h          	;. . ;
	ram:4602 cd 4a 2e       call 02e4ah          	;. J .
	ram:4605 cd e7 3b       call 03be7h          	;. . ;
	ram:4608 3e 02          ld a,002h            	;> .
	ram:460a e1             pop hl               	;.
	ram:460b e9             jp (hl)              	;.
	ram:460c 06 0d          ld b,00dh            	;. .
	ram:460e 11 50 51       ld de,l5150h         	;. P Q
	ram:4611 18 e0          jr l45f3h            	;. .
	ram:4613 06 0e          ld b,00eh            	;. .
	ram:4615 11 5d 51       ld de,l515dh         	;. ] Q
	ram:4618 18 d9          jr l45f3h            	;. .
	ram:461a 11 ee 51       ld de,l51eeh         	;. . Q
	ram:461d 06 17          ld b,017h            	;. .
	ram:461f 18 05          jr l4626h            	;. .
	ram:4621 11 f2 51       ld de,l51f2h         	;. . Q
	ram:4624 06 18          ld b,018h            	;. .
l4626h:
	ram:4626 c5             push bc              	;.
	ram:4627 cd fa 74       call sub_74fah       	;. . t
	ram:462a c1             pop bc               	;.
	ram:462b 20 c6          jr nz,l45f3h         	;.
	ram:462d 21 65 8a       ld hl,08a65h         	;! e .
	ram:4630 34             inc (hl)             	;4
	ram:4631 18 c0          jr l45f3h            	;. .
	ram:4633 cd 6b 74       call sub_746bh       	;. k t
	ram:4636 fe 10          cp 010h              	;. .
	ram:4638 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:463b cd c2 77       call sub_77c2h       	;. . w
	ram:463e cd ea 73       call sub_73eah       	;. . s
	ram:4641 cd 4a 2e       call 02e4ah          	;. J .
	ram:4644 cd 83 53       call sub_5383h       	;. . S
	ram:4647 cd ea 2d       call 02deah          	;. . -
	ram:464a df             rst 18h              	;.
	ram:464b cd 60 20       call 02060h          	;. `  
	ram:464e d7             rst 10h              	;.
	ram:464f cb fe          set 7,(hl)           	;. .
	ram:4651 06 03          ld b,003h            	;. .
l4653h:
	ram:4653 c5             push bc              	;.
	ram:4654 cd 6b 74       call sub_746bh       	;. k t
	ram:4657 cd d9 73       call sub_73d9h       	;. . s
	ram:465a cd ca 74       call sub_74cah       	;. . t
	ram:465d cd 13 75       call sub_7513h       	;. . u
	ram:4660 df             rst 18h              	;.
	ram:4661 c1             pop bc               	;.
	ram:4662 10 ef          djnz l4653h          	;. .
	ram:4664 cd 1e 44       call sub_441eh       	;. . D
	ram:4667 cd f4 2d       call 02df4h          	;. . -
	ram:466a 3e fe          ld a,0feh            	;> .
	ram:466c 21 04 00       ld hl,00004h         	;! . .
	ram:466f cd 41 6b       call sub_6b41h       	;. A k
	ram:4672 c3 27 52       jp l5227h            	;. ' R
l4675h:
	ram:4675 f1             pop af               	;.
	ram:4676 cd a7 36       call 036a7h          	;. . 6
	ram:4679 26 3f          ld h,03fh            	;& ?
	ram:467b 2e 21          ld l,021h            	;. !
	ram:467d 22 65 83       ld (08365h),hl       	;" e .
	ram:4680 3e 04          ld a,004h            	;> .
	ram:4682 cd ad 36       call 036adh          	;. . 6
	ram:4685 c3 fd 4a       jp l4afdh            	;. . J
	ram:4688 cd fa 74       call sub_74fah       	;. . t
	ram:468b ca 2c 0a       jp z,00a2ch          	;. , .
	ram:468e af             xor a                	;.
	ram:468f 18 01          jr l4692h            	;. .
	ram:4691 37             scf                  	;7
l4692h:
	ram:4692 f5             push af              	;.
	ram:4693 af             xor a                	;.
	ram:4694 32 82 80       ld (08082h),a        	;2 . .
	ram:4697 cd fa 74       call sub_74fah       	;. . t
	ram:469a 28 d9          jr z,l4675h          	;( .
	ram:469c fe 10          cp 010h              	;. .
	ram:469e f5             push af              	;.
	ram:469f 20 04          jr nz,l46a5h         	;.
	ram:46a1 ed 43 61 8a    ld (08a61h),bc       	;. C a .
l46a5h:
	ram:46a5 cd c6 77       call sub_77c6h       	;. . w
	ram:46a8 38 22          jr c,l46cch          	;8 "
	ram:46aa cd ed 73       call sub_73edh       	;. . s
	ram:46ad cd 7c 53       call sub_537ch       	;. | S
	ram:46b0 fe 0c          cp 00ch              	;. .
	ram:46b2 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:46b5 cd 85 20       call 02085h          	;. .  
	ram:46b8 21 c9 54       ld hl,l54c9h         	;! . T
	ram:46bb cd b8 54       call sub_54b8h       	;. . T
	ram:46be 20 0f          jr nz,l46cfh         	;.
	ram:46c0 e1             pop hl               	;.
	ram:46c1 f1             pop af               	;.
	ram:46c2 30 04          jr nc,l46c8h         	;0 .
	ram:46c4 e5             push hl              	;.
	ram:46c5 c3 da 54       jp l54dah            	;. . T
l46c8h:
	ram:46c8 f5             push af              	;.
	ram:46c9 e5             push hl              	;.
	ram:46ca 18 03          jr l46cfh            	;. .
l46cch:
	ram:46cc cd 85 20       call 02085h          	;. .  
l46cfh:
	ram:46cf cd 1e 47       call sub_471eh       	;. . G
	ram:46d2 cd fa 74       call sub_74fah       	;. . t
	ram:46d5 28 14          jr z,l46ebh          	;( .
	ram:46d7 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:46db fe 11          cp 011h              	;. .
	ram:46dd c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:46e0 f1             pop af               	;.
	ram:46e1 f5             push af              	;.
	ram:46e2 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:46e5 cd fa 74       call sub_74fah       	;. . t
	ram:46e8 c2 1c 0a       jp nz,00a1ch         	;. . .
l46ebh:
	ram:46eb f1             pop af               	;.
	ram:46ec cd 51 20       call 02051h          	;. Q  
	ram:46ef 3a 82 80       ld a,(08082h)        	;: . .
	ram:46f2 b7             or a                 	;.
	ram:46f3 28 05          jr z,l46fah          	;( .
	ram:46f5 cd de 7b       call sub_7bdeh       	;. . {
	ram:46f8 18 03          jr l46fdh            	;. .
l46fah:
	ram:46fa cd d7 7b       call sub_7bd7h       	;. . {
l46fdh:
	ram:46fd f1             pop af               	;.
	ram:46fe 30 06          jr nc,l4706h         	;0 .
	ram:4700 cd 5c 47       call sub_475ch       	;. \ G
	ram:4703 c3 27 52       jp l5227h            	;. ' R
l4706h:
	ram:4706 2a e9 8b       ld hl,(08be9h)       	;* . .
	ram:4709 e5             push hl              	;.
	ram:470a 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:470d 22 e9 8b       ld (08be9h),hl       	;" . .
	ram:4710 cd 27 7c       call sub_7c27h       	;. ' |
	ram:4713 e1             pop hl               	;.
	ram:4714 fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:4718 cd 76 47       call sub_4776h       	;. v G
	ram:471b c3 27 52       jp l5227h            	;. ' R
sub_471eh:
	ram:471e cd 6b 74       call sub_746bh       	;. k t
sub_4721h:
	ram:4721 f5             push af              	;.
	ram:4722 c5             push bc              	;.
	ram:4723 fe 3d          cp 03dh              	;. =
	ram:4725 f5             push af              	;.
	ram:4726 cc d8 74       call z,sub_74d8h     	;. . t
	ram:4729 f1             pop af               	;.
	ram:472a c4 cd 74       call nz,sub_74cdh    	;. . t
	ram:472d c5             push bc              	;.
	ram:472e cd 8d 20       call 0208dh          	;. .  
	ram:4731 e1             pop hl               	;.
	ram:4732 c1             pop bc               	;.
	ram:4733 b7             or a                 	;.
	ram:4734 ed 42          sbc hl,bc            	;. B
	ram:4736 23             inc hl               	;#
	ram:4737 23             inc hl               	;#
	ram:4738 cd ff 73       call sub_73ffh       	;. . s
	ram:473b cd 4a 2e       call 02e4ah          	;. J .
	ram:473e d7             rst 10h              	;.
	ram:473f 3a 56 8a       ld a,(08a56h)        	;: V .
	ram:4742 c6 05          add a,005h           	;. .
	ram:4744 6f             ld l,a               	;o
	ram:4745 26 00          ld h,000h            	;& .
	ram:4747 19             add hl,de            	;.
	ram:4748 3e 3d          ld a,03dh            	;> =
	ram:474a 77             ld (hl),a            	;w
	ram:474b 23             inc hl               	;#
	ram:474c 3e fd          ld a,0fdh            	;> .
	ram:474e 77             ld (hl),a            	;w
	ram:474f cd 5b 20       call 0205bh          	;. [  
	ram:4752 f1             pop af               	;.
	ram:4753 fe 3d          cp 03dh              	;. =
	ram:4755 c8             ret z                	;.
	ram:4756 d7             rst 10h              	;.
	ram:4757 d4 9c 66       call nc,sub_669ch    	;. . f
	ram:475a af             xor a                	;.
	ram:475b c9             ret                  	;.
sub_475ch:
	ram:475c 2a e9 8b       ld hl,(08be9h)       	;* . .
	ram:475f e5             push hl              	;.
	ram:4760 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4763 22 e9 8b       ld (08be9h),hl       	;" . .
	ram:4766 cd d5 5c       call sub_5cd5h       	;. . \
	ram:4769 cd 2d 7c       call sub_7c2dh       	;. - |
	ram:476c cd 85 20       call 02085h          	;. .  
	ram:476f cd a7 5c       call sub_5ca7h       	;. . \
	ram:4772 cd 51 20       call 02051h          	;. Q  
	ram:4775 e1             pop hl               	;.
sub_4776h:
	ram:4776 22 e9 8b       ld (08be9h),hl       	;" . .
	ram:4779 cd a3 26       call 026a3h          	;. . &
	ram:477c cd 9c 26       call 0269ch          	;. . &
	ram:477f cd ea 2d       call 02deah          	;. . -
	ram:4782 df             rst 18h              	;.
	ram:4783 cd 60 20       call 02060h          	;. `  
	ram:4786 cd 54 5b       call sub_5b54h       	;. T [
	ram:4789 cd 1f 7c       call sub_7c1fh       	;. . |
	ram:478c c9             ret                  	;.
	ram:478d cd fa 74       call sub_74fah       	;. . t
	ram:4790 ca 2c 0a       jp z,00a2ch          	;. , .
	ram:4793 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4796 e5             push hl              	;.
	ram:4797 fe 10          cp 010h              	;. .
	ram:4799 f5             push af              	;.
	ram:479a 20 04          jr nz,l47a0h         	;.
	ram:479c ed 43 61 8a    ld (08a61h),bc       	;. C a .
l47a0h:
	ram:47a0 cd 1e 47       call sub_471eh       	;. . G
	ram:47a3 32 82 80       ld (08082h),a        	;2 . .
	ram:47a6 cd fe 47       call sub_47feh       	;. . G
	ram:47a9 3a 82 80       ld a,(08082h)        	;: . .
	ram:47ac b7             or a                 	;.
	ram:47ad 20 05          jr nz,l47b4h         	;.
	ram:47af cd fe 7b       call sub_7bfeh       	;. . {
	ram:47b2 18 06          jr l47bah            	;. .
l47b4h:
	ram:47b4 3a 84 80       ld a,(08084h)        	;: . .
	ram:47b7 cd 13 7c       call sub_7c13h       	;. . |
l47bah:
	ram:47ba cd 5c 47       call sub_475ch       	;. \ G
	ram:47bd f1             pop af               	;.
	ram:47be e1             pop hl               	;.
	ram:47bf e5             push hl              	;.
	ram:47c0 f5             push af              	;.
	ram:47c1 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:47c4 cd fa 74       call sub_74fah       	;. . t
	ram:47c7 20 d7          jr nz,l47a0h         	;.
	ram:47c9 e1             pop hl               	;.
	ram:47ca e1             pop hl               	;.
	ram:47cb c3 27 52       jp l5227h            	;. ' R
	ram:47ce cd fa 74       call sub_74fah       	;. . t
	ram:47d1 20 06          jr nz,l47d9h         	;.
	ram:47d3 cd 65 7c       call sub_7c65h       	;. e |
	ram:47d6 c3 27 52       jp l5227h            	;. ' R
l47d9h:
	ram:47d9 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:47dc e5             push hl              	;.
	ram:47dd f5             push af              	;.
	ram:47de cd c2 77       call sub_77c2h       	;. . w
l47e1h:
	ram:47e1 cd e4 73       call sub_73e4h       	;. . s
	ram:47e4 cd fe 47       call sub_47feh       	;. . G
	ram:47e7 cd 83 53       call sub_5383h       	;. . S
	ram:47ea cd 7c 7c       call sub_7c7ch       	;. | |
	ram:47ed f1             pop af               	;.
	ram:47ee e1             pop hl               	;.
	ram:47ef e5             push hl              	;.
	ram:47f0 f5             push af              	;.
	ram:47f1 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:47f4 cd fa 74       call sub_74fah       	;. . t
	ram:47f7 20 e8          jr nz,l47e1h         	;.
	ram:47f9 e1             pop hl               	;.
	ram:47fa e1             pop hl               	;.
	ram:47fb c3 27 52       jp l5227h            	;. ' R
sub_47feh:
	ram:47fe cd fa 74       call sub_74fah       	;. . t
	ram:4801 c8             ret z                	;.
	ram:4802 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4806 fe 2f          cp 02fh              	;. /
	ram:4808 20 06          jr nz,l4810h         	;.
	ram:480a cd fa 74       call sub_74fah       	;. . t
	ram:480d c0             ret nz               	;.
	ram:480e 18 0e          jr l481eh            	;. .
l4810h:
	ram:4810 fe 11          cp 011h              	;. .
	ram:4812 20 0a          jr nz,l481eh         	;.
	ram:4814 e1             pop hl               	;.
	ram:4815 f1             pop af               	;.
	ram:4816 f5             push af              	;.
	ram:4817 e5             push hl              	;.
	ram:4818 20 04          jr nz,l481eh         	;.
	ram:481a cd fa 74       call sub_74fah       	;. . t
	ram:481d c8             ret z                	;.
l481eh:
	ram:481e c3 1c 0a       jp 00a1ch            	;. . .
	ram:4821 cd 35 74       call sub_7435h       	;. 5 t
	ram:4824 28 12          jr z,l4838h          	;( .
	ram:4826 cd ff 73       call sub_73ffh       	;. . s
	ram:4829 cd 4a 2e       call 02e4ah          	;. J .
	ram:482c cd 83 53       call sub_5383h       	;. . S
	ram:482f cd 27 64       call sub_6427h       	;. ' d
	ram:4832 cd a7 7c       call sub_7ca7h       	;. . |
	ram:4835 c3 4f 4a       jp l4a4fh            	;. O J
l4838h:
	ram:4838 cd 41 49       call sub_4941h       	;. A I
	ram:483b 18 03          jr l4840h            	;. .
	ram:483d cd b3 36       call 036b3h          	;. . 6
l4840h:
	ram:4840 cd 8a 7c       call sub_7c8ah       	;. . |
	ram:4843 c9             ret                  	;.
	ram:4844 cd da 5d       call sub_5ddah       	;. . ]
	ram:4847 cd 56 7c       call sub_7c56h       	;. V |
	ram:484a c9             ret                  	;.
l484bh:
	ram:484b cd 6e 74       call sub_746eh       	;. n t
	ram:484e 38 ce          jr c,l481eh          	;8 .
	ram:4850 fe ff          cp 0ffh              	;. .
	ram:4852 28 ca          jr z,l481eh          	;( .
	ram:4854 b7             or a                 	;.
	ram:4855 20 f4          jr nz,l484bh         	;.
	ram:4857 c9             ret                  	;.
	ram:4858 cd 6e 74       call sub_746eh       	;. n t
	ram:485b 38 c1          jr c,l481eh          	;8 .
	ram:485d 57             ld d,a               	;W
	ram:485e cd 6e 74       call sub_746eh       	;. n t
	ram:4861 38 bb          jr c,l481eh          	;8 .
	ram:4863 5f             ld e,a               	;_
	ram:4864 b2             or d                 	;.
	ram:4865 20 52          jr nz,l48b9h         	;R
	ram:4867 c5             push bc              	;.
	ram:4868 11 84 80       ld de,08084h         	;. . .
l486bh:
	ram:486b cd 6e 74       call sub_746eh       	;. n t
	ram:486e 38 ae          jr c,l481eh          	;8 .
	ram:4870 fe ff          cp 0ffh              	;. .
	ram:4872 28 aa          jr z,l481eh          	;( .
	ram:4874 12             ld (de),a            	;.
	ram:4875 13             inc de               	;.
	ram:4876 b7             or a                 	;.
	ram:4877 20 f2          jr nz,l486bh         	;.
l4879h:
	ram:4879 c5             push bc              	;.
	ram:487a 2a 5f 8a       ld hl,(08a5fh)       	;* _ .
	ram:487d 2b             dec hl               	;+
	ram:487e 22 61 8a       ld (08a61h),hl       	;" a .
	ram:4881 18 0f          jr l4892h            	;. .
l4883h:
	ram:4883 cd 20 43       call sub_4320h       	;.   C
	ram:4886 b7             or a                 	;.
	ram:4887 20 09          jr nz,l4892h         	;.
	ram:4889 e1             pop hl               	;.
	ram:488a 22 61 8a       ld (08a61h),hl       	;" a .
	ram:488d 3e 96          ld a,096h            	;> .
	ram:488f c3 87 0a       jp 00a87h            	;. . .
l4892h:
	ram:4892 cd 82 74       call sub_7482h       	;. . t
	ram:4895 fe e0          cp 0e0h              	;. .
	ram:4897 20 ea          jr nz,l4883h         	;.
	ram:4899 11 84 80       ld de,08084h         	;. . .
	ram:489c 60             ld h,b               	;`
	ram:489d 69             ld l,c               	;i
l489eh:
	ram:489e 23             inc hl               	;#
	ram:489f 7e             ld a,(hl)            	;~
	ram:48a0 eb             ex de,hl             	;.
	ram:48a1 be             cp (hl)              	;.
	ram:48a2 20 df          jr nz,l4883h         	;.
	ram:48a4 eb             ex de,hl             	;.
	ram:48a5 13             inc de               	;.
	ram:48a6 b7             or a                 	;.
	ram:48a7 20 f5          jr nz,l489eh         	;.
	ram:48a9 ed 5b 5f 8a    ld de,(08a5fh)       	;. [ _ .
	ram:48ad ed 52          sbc hl,de            	;. R
	ram:48af eb             ex de,hl             	;.
	ram:48b0 e1             pop hl               	;.
	ram:48b1 e1             pop hl               	;.
	ram:48b2 7c             ld a,h               	;|
	ram:48b3 b5             or l                 	;.
	ram:48b4 28 03          jr z,l48b9h          	;( .
	ram:48b6 73             ld (hl),e            	;s
	ram:48b7 2b             dec hl               	;+
	ram:48b8 72             ld (hl),d            	;r
l48b9h:
	ram:48b9 2a 5f 8a       ld hl,(08a5fh)       	;* _ .
	ram:48bc 19             add hl,de            	;.
	ram:48bd 22 61 8a       ld (08a61h),hl       	;" a .
	ram:48c0 18 06          jr l48c8h            	;. .
	ram:48c2 cd da 5d       call sub_5ddah       	;. . ]
	ram:48c5 cd a7 36       call 036a7h          	;. . 6
l48c8h:
	ram:48c8 c3 27 52       jp l5227h            	;. ' R
	ram:48cb 16 1a          ld d,01ah            	;. .
	ram:48cd cd ef 49       call sub_49efh       	;. . I
	ram:48d0 cd 97 2d       call 02d97h          	;. . -
	ram:48d3 cd cf 73       call sub_73cfh       	;. . s
	ram:48d6 cd ea 73       call sub_73eah       	;. . s
	ram:48d9 cd 83 53       call sub_5383h       	;. . S
	ram:48dc fe 0c          cp 00ch              	;. .
	ram:48de c2 25 4a       jp nz,l4a25h         	;. % J
	ram:48e1 cd a8 2d       call 02da8h          	;. . -
	ram:48e4 cd 8e 2d       call 02d8eh          	;. . -
	ram:48e7 21 d1 54       ld hl,l54d1h         	;! . T
	ram:48ea cd b8 54       call sub_54b8h       	;. . T
	ram:48ed c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:48f0 cd 6e 74       call sub_746eh       	;. n t
	ram:48f3 cd af 74       call sub_74afh       	;. . t
	ram:48f6 c4 22 44       call nz,sub_4422h    	;. " D
	ram:48f9 d7             rst 10h              	;.
	ram:48fa da 38 0a       jp c,00a38h          	;. 8 .
	ram:48fd cd bf 36       call 036bfh          	;. . 6
	ram:4900 18 c6          jr l48c8h            	;. .
	ram:4902 ea 4a 3e       jp pe,03e4ah         	;. J >
	ram:4905 49             ld c,c               	;I
	ram:4906 7d             ld a,l               	;}
	ram:4907 49             ld c,c               	;I
	ram:4908 8f             adc a,a              	;.
	ram:4909 49             ld c,c               	;I
	ram:490a 94             sub h                	;.
	ram:490b 49             ld c,c               	;I
	ram:490c 57             ld d,a               	;W
	ram:490d 49             ld c,c               	;I
	ram:490e 60             ld h,b               	;`
	ram:490f 49             ld c,c               	;I
	ram:4910 99             sbc a,c              	;.
	ram:4911 49             ld c,c               	;I
	ram:4912 75             ld (hl),l            	;u
	ram:4913 49             ld c,c               	;I
	ram:4914 9e             sbc a,(hl)           	;.
	ram:4915 49             ld c,c               	;I
	ram:4916 a3             and e                	;.
	ram:4917 49             ld c,c               	;I
	ram:4918 a8             xor b                	;.
	ram:4919 49             ld c,c               	;I
	ram:491a 3d             dec a                	;=
	ram:491b 48             ld c,b               	;H
	ram:491c 40             ld b,b               	;@
	ram:491d 4a             ld c,d               	;J
	ram:491e ad             xor l                	;.
	ram:491f 49             ld c,c               	;I
	ram:4920 b8             cp b                 	;.
	ram:4921 49             ld c,c               	;I
	ram:4922 37             scf                  	;7
	ram:4923 4b             ld c,e               	;K
	ram:4924 8a             adc a,d              	;.
	ram:4925 4b             ld c,e               	;K
	ram:4926 cd 4b 01       call 0014bh          	;. K .
	ram:4929 4d             ld c,l               	;M
	ram:492a fe 49          cp 049h              	;. I
	ram:492c 06 4a          ld b,04ah            	;. J
	ram:492e e5             push hl              	;.
	ram:492f 49             ld c,c               	;I
	ram:4930 e9             jp (hl)              	;.
	ram:4931 49             ld c,c               	;I
	ram:4932 ed 49          out (c),c            	;. I
	ram:4934 2a 4a 02       ld hl,(0024ah)       	;* J .
	ram:4937 4a             ld c,d               	;J
	ram:4938 6a             ld l,d               	;j
	ram:4939 4a             ld c,d               	;J
	ram:493a 10 4a          djnz l4986h          	;. J
	ram:493c 5a             ld e,d               	;Z
	ram:493d 4a             ld c,d               	;J
	ram:493e cd 1b 00       call 0001bh          	;. . .
sub_4941h:
	ram:4941 fd cb 02 56    bit 2,(iy+002h)      	;. . . V
	ram:4945 c8             ret z                	;.
	ram:4946 fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:494a c8             ret z                	;.
	ram:494b 18 39          jr l4986h            	;. 9
l494dh:
	ram:494d e6 7f          and 07fh             	;. .
	ram:494f fe 06          cp 006h              	;. .
	ram:4951 d2 8a 0a       jp nc,00a8ah         	;. . .
	ram:4954 c3 5d 0a       jp 00a5dh            	;. ] .
	ram:4957 21 4d 49       ld hl,l494dh         	;! M I
	ram:495a cd b5 0a       call 00ab5h          	;. . .
	ram:495d 37             scf                  	;7
	ram:495e 18 07          jr l4967h            	;. .
	ram:4960 21 4d 49       ld hl,l494dh         	;! M I
	ram:4963 cd b5 0a       call 00ab5h          	;. . .
	ram:4966 b7             or a                 	;.
l4967h:
	ram:4967 21 2e 84       ld hl,0842eh         	;! . .
	ram:496a 11 24 84       ld de,08424h         	;. $ .
	ram:496d cd c5 36       call 036c5h          	;. . 6
	ram:4970 cd db 0a       call 00adbh          	;. . .
	ram:4973 18 0e          jr l4983h            	;. .
	ram:4975 cd cb 36       call 036cbh          	;. . 6
	ram:4978 cd d1 36       call 036d1h          	;. . 6
	ram:497b 18 06          jr l4983h            	;. .
	ram:497d cd d7 36       call 036d7h          	;. . 6
	ram:4980 cd dd 36       call 036ddh          	;. . 6
l4983h:
	ram:4983 cd 1b 00       call 0001bh          	;. . .
l4986h:
	ram:4986 cd e3 36       call 036e3h          	;. . 6
	ram:4989 cd 65 3c       call 03c65h          	;. e <
	ram:498c c3 27 52       jp l5227h            	;. ' R
	ram:498f cd e9 36       call 036e9h          	;. . 6
	ram:4992 18 ef          jr l4983h            	;. .
	ram:4994 cd ef 36       call 036efh          	;. . 6
	ram:4997 18 ea          jr l4983h            	;. .
	ram:4999 cd f5 36       call 036f5h          	;. . 6
	ram:499c 18 e5          jr l4983h            	;. .
	ram:499e cd fb 36       call 036fbh          	;. . 6
	ram:49a1 18 e0          jr l4983h            	;. .
	ram:49a3 cd 01 37       call 03701h          	;. . 7
	ram:49a6 18 db          jr l4983h            	;. .
	ram:49a8 cd 07 37       call 03707h          	;. . 7
	ram:49ab 18 d6          jr l4983h            	;. .
	ram:49ad cd fa 74       call sub_74fah       	;. . t
	ram:49b0 06 02          ld b,002h            	;. .
	ram:49b2 20 44          jr nz,l49f8h         	;D
	ram:49b4 cd 0d 37       call 0370dh          	;. . 7
	ram:49b7 c9             ret                  	;.
	ram:49b8 cd fa 74       call sub_74fah       	;. . t
	ram:49bb 06 03          ld b,003h            	;. .
	ram:49bd 20 39          jr nz,l49f8h         	;9
	ram:49bf cd 13 37       call 03713h          	;. . 7
	ram:49c2 c9             ret                  	;.
	ram:49c3 cd 6e 74       call sub_746eh       	;. n t
	ram:49c6 0b             dec bc               	;.
	ram:49c7 c5             push bc              	;.
	ram:49c8 fe 10          cp 010h              	;. .
	ram:49ca 20 11          jr nz,l49ddh         	;.
	ram:49cc cd c6 77       call sub_77c6h       	;. . w
	ram:49cf 38 0c          jr c,l49ddh          	;8 .
	ram:49d1 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:49d5 cd 6e 74       call sub_746eh       	;. n t
	ram:49d8 fe 3c          cp 03ch              	;. <
	ram:49da ca 49 0a       jp z,00a49h          	;. I .
l49ddh:
	ram:49dd e1             pop hl               	;.
	ram:49de 22 61 8a       ld (08a61h),hl       	;" a .
	ram:49e1 16 0b          ld d,00bh            	;. .
	ram:49e3 18 0a          jr sub_49efh         	;. .
	ram:49e5 16 06          ld d,006h            	;. .
	ram:49e7 18 06          jr sub_49efh         	;. .
	ram:49e9 16 05          ld d,005h            	;. .
	ram:49eb 18 02          jr sub_49efh         	;. .
	ram:49ed 16 07          ld d,007h            	;. .
sub_49efh:
	ram:49ef cd 82 74       call sub_7482h       	;. . t
	ram:49f2 fe 10          cp 010h              	;. .
	ram:49f4 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:49f7 42             ld b,d               	;B
l49f8h:
	ram:49f8 0e 01          ld c,001h            	;. .
	ram:49fa cd 7e 2d       call 02d7eh          	;. ~ -
	ram:49fd c9             ret                  	;.
	ram:49fe 16 08          ld d,008h            	;. .
	ram:4a00 18 ed          jr sub_49efh         	;. .
	ram:4a02 16 0a          ld d,00ah            	;. .
	ram:4a04 18 e9          jr sub_49efh         	;. .
	ram:4a06 cd fa 74       call sub_74fah       	;. . t
	ram:4a09 ca 2c 0a       jp z,00a2ch          	;. , .
	ram:4a0c 06 09          ld b,009h            	;. .
	ram:4a0e 18 e8          jr l49f8h            	;. .
	ram:4a10 06 1b          ld b,01bh            	;. .
sub_4a12h:
	ram:4a12 0e 01          ld c,001h            	;. .
	ram:4a14 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:4a17 cd 6b 74       call sub_746bh       	;. k t
	ram:4a1a fe 10          cp 010h              	;. .
	ram:4a1c c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:4a1f cd 97 2d       call 02d97h          	;. . -
	ram:4a22 cd ea 73       call sub_73eah       	;. . s
l4a25h:
	ram:4a25 fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:4a29 c9             ret                  	;.
	ram:4a2a 06 01          ld b,001h            	;. .
	ram:4a2c cd 12 4a       call sub_4a12h       	;. . J
	ram:4a2f 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:4a32 23             inc hl               	;#
	ram:4a33 22 61 8a       ld (08a61h),hl       	;" a .
	ram:4a36 16 2f          ld d,02fh            	;. /
	ram:4a38 cd 41 6a       call sub_6a41h       	;. A j
	ram:4a3b cd e4 73       call sub_73e4h       	;. . s
	ram:4a3e 18 e5          jr l4a25h            	;. .
	ram:4a40 cd 35 74       call sub_7435h       	;. 5 t
	ram:4a43 ca 1c 0a       jp z,00a1ch          	;. . .
	ram:4a46 cd ff 73       call sub_73ffh       	;. . s
	ram:4a49 cd 4a 2e       call 02e4ah          	;. J .
	ram:4a4c cd 19 37       call 03719h          	;. . 7
l4a4fh:
	ram:4a4f fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:4a53 cd f4 2d       call 02df4h          	;. . -
	ram:4a56 cd 60 26       call 02660h          	;. ` &
	ram:4a59 c9             ret                  	;.
	ram:4a5a cd 35 74       call sub_7435h       	;. 5 t
	ram:4a5d 28 6d          jr z,l4acch          	;( m
	ram:4a5f cd ff 73       call sub_73ffh       	;. . s
	ram:4a62 cd 4a 2e       call 02e4ah          	;. J .
	ram:4a65 cd 1f 37       call 0371fh          	;. . 7
	ram:4a68 18 e5          jr l4a4fh            	;. .
	ram:4a6a cd 6b 74       call sub_746bh       	;. k t
	ram:4a6d fe 10          cp 010h              	;. .
	ram:4a6f 20 5b          jr nz,l4acch         	;[
	ram:4a71 cd 97 4a       call sub_4a97h       	;. . J
	ram:4a74 f5             push af              	;.
	ram:4a75 cd 6b 74       call sub_746bh       	;. k t
	ram:4a78 cd d9 73       call sub_73d9h       	;. . s
	ram:4a7b cd 97 4a       call sub_4a97h       	;. . J
	ram:4a7e f5             push af              	;.
	ram:4a7f cd 1e 44       call sub_441eh       	;. . D
	ram:4a82 f1             pop af               	;.
	ram:4a83 21 df 85       ld hl,085dfh         	;! . .
	ram:4a86 cd 8d 4a       call sub_4a8dh       	;. . J
	ram:4a89 f1             pop af               	;.
	ram:4a8a 21 de 85       ld hl,085deh         	;! . .
sub_4a8dh:
	ram:4a8d be             cp (hl)              	;.
	ram:4a8e c8             ret z                	;.
	ram:4a8f 77             ld (hl),a            	;w
	ram:4a90 cd 89 00       call 00089h          	;. . .
	ram:4a93 c2 1b 00       jp nz,0001bh         	;. . .
	ram:4a96 c9             ret                  	;.
sub_4a97h:
	ram:4a97 cd cf 73       call sub_73cfh       	;. . s
	ram:4a9a fe 3b          cp 03bh              	;. ;
	ram:4a9c 20 10          jr nz,l4aaeh         	;.
	ram:4a9e cd d8 74       call sub_74d8h       	;. . t
	ram:4aa1 3a 84 80       ld a,(08084h)        	;: . .
	ram:4aa4 fe 51          cp 051h              	;. Q
	ram:4aa6 20 24          jr nz,l4acch         	;$
	ram:4aa8 3a 86 80       ld a,(08086h)        	;: . .
	ram:4aab e6 2f          and 02fh             	;. /
	ram:4aad c9             ret                  	;.
l4aaeh:
	ram:4aae 30 1c          jr nc,l4acch         	;0 .
	ram:4ab0 fe 32          cp 032h              	;. 2
	ram:4ab2 38 18          jr c,l4acch          	;8 .
	ram:4ab4 cd d8 74       call sub_74d8h       	;. . t
	ram:4ab7 3a 83 80       ld a,(08083h)        	;: . .
	ram:4aba fe 02          cp 002h              	;. .
	ram:4abc 3a 84 80       ld a,(08084h)        	;: . .
	ram:4abf 28 10          jr z,l4ad1h          	;( .
	ram:4ac1 30 09          jr nc,l4acch         	;0 .
	ram:4ac3 fe 74          cp 074h              	;. t
	ram:4ac5 28 08          jr z,l4acfh          	;( .
	ram:4ac7 fe 51          cp 051h              	;. Q
	ram:4ac9 3e 10          ld a,010h            	;> .
	ram:4acb c8             ret z                	;.
l4acch:
	ram:4acc c3 1c 0a       jp 00a1ch            	;. . .
l4acfh:
	ram:4acf af             xor a                	;.
	ram:4ad0 c9             ret                  	;.
l4ad1h:
	ram:4ad1 fe 51          cp 051h              	;. Q
	ram:4ad3 20 f7          jr nz,l4acch         	;.
	ram:4ad5 3a 85 80       ld a,(08085h)        	;: . .
	ram:4ad8 fe 27          cp 027h              	;. '
	ram:4ada 28 0b          jr z,l4ae7h          	;( .
	ram:4adc fe 31          cp 031h              	;. 1
	ram:4ade 38 ec          jr c,l4acch          	;8 .
	ram:4ae0 fe 3a          cp 03ah              	;. :
	ram:4ae2 30 e8          jr nc,l4acch         	;0 .
	ram:4ae4 e6 1f          and 01fh             	;. .
	ram:4ae6 c9             ret                  	;.
l4ae7h:
	ram:4ae7 3e 20          ld a,020h            	;>  
	ram:4ae9 c9             ret                  	;.
	ram:4aea fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:4aee cc 5f 3c       call z,03c5fh        	;. _ <
	ram:4af1 3e f1          ld a,0f1h            	;> .
	ram:4af3 cd ad 36       call 036adh          	;. . 6
	ram:4af6 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:4afa ca 27 52       jp z,l5227h          	;. ' R
l4afdh:
	ram:4afd fd cb 0d ee    set 5,(iy+00dh)      	;. . . .
	ram:4b01 cd ef 7c       call sub_7cefh       	;. . |
l4b04h:
	ram:4b04 cd 81 3e       call 03e81h          	;. . >
	ram:4b07 cd 87 3e       call 03e87h          	;. . >
	ram:4b0a cd 8d 3e       call 03e8dh          	;. . >
	ram:4b0d cd 75 00       call 00075h          	;. u .
	ram:4b10 20 0e          jr nz,l4b20h         	;.
	ram:4b12 fe 06          cp 006h              	;. .
	ram:4b14 28 0a          jr z,l4b20h          	;( .
	ram:4b16 fe 05          cp 005h              	;. .
	ram:4b18 dc ad 36       call c,036adh        	;. . 6
	ram:4b1b cd 75 3e       call 03e75h          	;. u >
	ram:4b1e 18 e4          jr l4b04h            	;. .
l4b20h:
	ram:4b20 fd cb 0d ae    res 5,(iy+00dh)      	;. . . .
	ram:4b24 97             sub a                	;.
	ram:4b25 32 06 80       ld (08006h),a        	;2 . .
	ram:4b28 3e f0          ld a,0f0h            	;> .
	ram:4b2a 32 81 80       ld (08081h),a        	;2 . .
	ram:4b2d f1             pop af               	;.
	ram:4b2e 32 9a 81       ld (0819ah),a        	;2 . .
	ram:4b31 cd f9 3b       call 03bf9h          	;. . ;
	ram:4b34 c3 27 52       jp l5227h            	;. ' R
	ram:4b37 cd c5 4e       call sub_4ec5h       	;. . N
	ram:4b3a fe 11          cp 011h              	;. .
	ram:4b3c c4 9c 66       call nz,sub_669ch    	;. . f
	ram:4b3f cd 4a 2e       call 02e4ah          	;. J .
	ram:4b42 cd a7 36       call 036a7h          	;. . 6
	ram:4b45 cd f9 3b       call 03bf9h          	;. . ;
	ram:4b48 cd f4 2d       call 02df4h          	;. . -
	ram:4b4b cd 75 00       call 00075h          	;. u .
	ram:4b4e c2 27 52       jp nz,l5227h         	;. ' R
	ram:4b51 cd d3 4e       call sub_4ed3h       	;. . N
	ram:4b54 fe 1f          cp 01fh              	;. .
	ram:4b56 20 0c          jr nz,l4b64h         	;.
	ram:4b58 cd 33 2a       call 02a33h          	;. 3 *
	ram:4b5b ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4b5f 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:4b62 18 13          jr l4b77h            	;. .
l4b64h:
	ram:4b64 3e 11          ld a,011h            	;> .
	ram:4b66 32 82 80       ld (08082h),a        	;2 . .
	ram:4b69 11 f2 03       ld de,003f2h         	;. . .
	ram:4b6c 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4b6f cb 76          bit 6,(hl)           	;. v
	ram:4b71 c4 1b 00       call nz,0001bh       	;. . .
	ram:4b74 cd 57 2a       call 02a57h          	;. W *
l4b77h:
	ram:4b77 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4b7a 01 f0 03       ld bc,003f0h         	;. . .
	ram:4b7d 71             ld (hl),c            	;q
	ram:4b7e 23             inc hl               	;#
	ram:4b7f 70             ld (hl),b            	;p
	ram:4b80 23             inc hl               	;#
	ram:4b81 eb             ex de,hl             	;.
	ram:4b82 21 41 86       ld hl,08641h         	;! A .
	ram:4b85 ed b0          ldir                 	;. .
	ram:4b87 c3 27 52       jp l5227h            	;. ' R
	ram:4b8a cd c5 4e       call sub_4ec5h       	;. . N
	ram:4b8d fe 1f          cp 01fh              	;. .
	ram:4b8f ca 38 0a       jp z,00a38h          	;. 8 .
	ram:4b92 fe 11          cp 011h              	;. .
	ram:4b94 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:4b97 cd 4a 2e       call 02e4ah          	;. J .
	ram:4b9a fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:4b9e c4 e3 36       call nz,036e3h       	;. . 6
	ram:4ba1 cd f4 2d       call 02df4h          	;. . -
	ram:4ba4 cd 75 00       call 00075h          	;. u .
	ram:4ba7 c0             ret nz               	;.
	ram:4ba8 cd d3 4e       call sub_4ed3h       	;. . N
	ram:4bab 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4bae 23             inc hl               	;#
	ram:4baf 23             inc hl               	;#
	ram:4bb0 01 f0 03       ld bc,003f0h         	;. . .
	ram:4bb3 eb             ex de,hl             	;.
	ram:4bb4 21 41 86       ld hl,08641h         	;! A .
l4bb7h:
	ram:4bb7 1a             ld a,(de)            	;.
	ram:4bb8 b6             or (hl)              	;.
	ram:4bb9 77             ld (hl),a            	;w
	ram:4bba 13             inc de               	;.
	ram:4bbb 23             inc hl               	;#
	ram:4bbc 0b             dec bc               	;.
	ram:4bbd 78             ld a,b               	;x
	ram:4bbe b1             or c                 	;.
	ram:4bbf 20 f6          jr nz,l4bb7h         	;.
	ram:4bc1 cd 5f 3c       call 03c5fh          	;. _ <
	ram:4bc4 cd 65 3c       call 03c65h          	;. e <
	ram:4bc7 cd f9 3b       call 03bf9h          	;. . ;
	ram:4bca c3 27 52       jp l5227h            	;. ' R
	ram:4bcd cd c5 4e       call sub_4ec5h       	;. . N
	ram:4bd0 fe 0d          cp 00dh              	;. .
	ram:4bd2 38 04          jr c,l4bd8h          	;8 .
	ram:4bd4 fe 11          cp 011h              	;. .
	ram:4bd6 38 03          jr c,l4bdbh          	;8 .
l4bd8h:
	ram:4bd8 cd 9c 66       call sub_669ch       	;. . f
l4bdbh:
	ram:4bdb cd 25 37       call 03725h          	;. % 7
	ram:4bde cd 56 20       call 02056h          	;. V  
	ram:4be1 3a 9a 80       ld a,(0809ah)        	;: . .
	ram:4be4 5f             ld e,a               	;_
	ram:4be5 16 00          ld d,000h            	;. .
	ram:4be7 2a 98 80       ld hl,(08098h)       	;* . .
	ram:4bea 19             add hl,de            	;.
	ram:4beb 19             add hl,de            	;.
	ram:4bec 19             add hl,de            	;.
	ram:4bed 23             inc hl               	;#
	ram:4bee 23             inc hl               	;#
	ram:4bef d5             push de              	;.
	ram:4bf0 3a 82 80       ld a,(08082h)        	;: . .
	ram:4bf3 cd 7f 00       call 0007fh          	;. . .
	ram:4bf6 28 10          jr z,l4c08h          	;( .
	ram:4bf8 11 5a 00       ld de,0005ah         	;. Z .
	ram:4bfb 19             add hl,de            	;.
	ram:4bfc e5             push hl              	;.
	ram:4bfd fe ff          cp 0ffh              	;. .
	ram:4bff 3e 0e          ld a,00eh            	;> .
	ram:4c01 20 5b          jr nz,l4c5eh         	;[
	ram:4c03 cd 3e 2a       call 02a3eh          	;. > *
	ram:4c06 18 4d          jr l4c55h            	;. M
l4c08h:
	ram:4c08 cd 84 00       call 00084h          	;. . .
	ram:4c0b 28 35          jr z,l4c42h          	;( 5
	ram:4c0d d1             pop de               	;.
	ram:4c0e cb 3a          srl d                	;. :
	ram:4c10 cb 3b          srl e                	;. ;
	ram:4c12 da 1c 0a       jp c,00a1ch          	;. . .
	ram:4c15 d5             push de              	;.
	ram:4c16 ed 52          sbc hl,de            	;. R
	ram:4c18 11 5a 00       ld de,0005ah         	;. Z .
	ram:4c1b 19             add hl,de            	;.
	ram:4c1c e5             push hl              	;.
	ram:4c1d fe ff          cp 0ffh              	;. .
	ram:4c1f 3e 0f          ld a,00fh            	;> .
	ram:4c21 20 3b          jr nz,l4c5eh         	;;
	ram:4c23 cd 42 2a       call 02a42h          	;. B *
	ram:4c26 18 2d          jr l4c55h            	;. -
l4c28h:
	ram:4c28 1c             inc e                	;.
	ram:4c29 43             ld b,e               	;C
	ram:4c2a 11 0a 00       ld de,0000ah         	;. . .
	ram:4c2d 18 01          jr l4c30h            	;. .
l4c2fh:
	ram:4c2f 19             add hl,de            	;.
l4c30h:
	ram:4c30 10 fd          djnz l4c2fh          	;. .
	ram:4c32 11 70 00       ld de,00070h         	;. p .
	ram:4c35 19             add hl,de            	;.
	ram:4c36 e5             push hl              	;.
	ram:4c37 fe ff          cp 0ffh              	;. .
	ram:4c39 3e 10          ld a,010h            	;> .
	ram:4c3b 20 21          jr nz,l4c5eh         	;!
	ram:4c3d cd 46 2a       call 02a46h          	;. F *
	ram:4c40 18 13          jr l4c55h            	;. .
l4c42h:
	ram:4c42 cd 7a 00       call 0007ah          	;. z .
	ram:4c45 28 e1          jr z,l4c28h          	;( .
	ram:4c47 11 3c 00       ld de,0003ch         	;. < .
	ram:4c4a 19             add hl,de            	;.
	ram:4c4b e5             push hl              	;.
	ram:4c4c fe ff          cp 0ffh              	;. .
	ram:4c4e 3e 0d          ld a,00dh            	;> .
	ram:4c50 20 0c          jr nz,l4c5eh         	;.
	ram:4c52 cd 3a 2a       call 02a3ah          	;. : *
l4c55h:
	ram:4c55 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4c59 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:4c5c 18 11          jr l4c6fh            	;. .
l4c5eh:
	ram:4c5e 32 82 80       ld (08082h),a        	;2 . .
	ram:4c61 23             inc hl               	;#
	ram:4c62 23             inc hl               	;#
	ram:4c63 eb             ex de,hl             	;.
	ram:4c64 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4c67 cb 76          bit 6,(hl)           	;. v
	ram:4c69 c4 1b 00       call nz,0001bh       	;. . .
	ram:4c6c cd 57 2a       call 02a57h          	;. W *
l4c6fh:
	ram:4c6f 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4c72 c1             pop bc               	;.
	ram:4c73 71             ld (hl),c            	;q
	ram:4c74 23             inc hl               	;#
	ram:4c75 70             ld (hl),b            	;p
	ram:4c76 23             inc hl               	;#
	ram:4c77 fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:4c7a cb bf          res 7,a              	;. .
	ram:4c7c 77             ld (hl),a            	;w
	ram:4c7d 23             inc hl               	;#
	ram:4c7e cd e9 4e       call sub_4ee9h       	;. . N
	ram:4c81 ed b0          ldir                 	;. .
	ram:4c83 c1             pop bc               	;.
	ram:4c84 79             ld a,c               	;y
	ram:4c85 12             ld (de),a            	;.
	ram:4c86 13             inc de               	;.
	ram:4c87 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4c8b af             xor a                	;.
l4c8ch:
	ram:4c8c cd 2b 37       call 0372bh          	;. + 7
	ram:4c8f b7             or a                 	;.
	ram:4c90 ca 09 2e       jp z,02e09h          	;. . .
	ram:4c93 f5             push af              	;.
	ram:4c94 d7             rst 10h              	;.
	ram:4c95 38 5b          jr c,l4cf2h          	;8 [
	ram:4c97 f1             pop af               	;.
	ram:4c98 f5             push af              	;.
	ram:4c99 cb 6e          bit 5,(hl)           	;. n
	ram:4c9b 28 02          jr z,l4c9fh          	;( .
	ram:4c9d cb ff          set 7,a              	;. .
l4c9fh:
	ram:4c9f 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4ca2 77             ld (hl),a            	;w
	ram:4ca3 23             inc hl               	;#
l4ca4h:
	ram:4ca4 eb             ex de,hl             	;.
	ram:4ca5 4e             ld c,(hl)            	;N
	ram:4ca6 23             inc hl               	;#
	ram:4ca7 46             ld b,(hl)            	;F
	ram:4ca8 2b             dec hl               	;+
	ram:4ca9 03             inc bc               	;.
	ram:4caa 03             inc bc               	;.
	ram:4cab ed b0          ldir                 	;. .
	ram:4cad ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4cb1 cd 89 00       call 00089h          	;. . .
	ram:4cb4 28 21          jr z,l4cd7h          	;( !
	ram:4cb6 f1             pop af               	;.
	ram:4cb7 f5             push af              	;.
	ram:4cb8 cd 31 37       call 03731h          	;. 1 7
	ram:4cbb d7             rst 10h              	;.
	ram:4cbc 38 04          jr c,l4cc2h          	;8 .
	ram:4cbe e6 1f          and 01fh             	;. .
	ram:4cc0 28 08          jr z,l4ccah          	;( .
l4cc2h:
	ram:4cc2 3e ff          ld a,0ffh            	;> .
	ram:4cc4 32 82 80       ld (08082h),a        	;2 . .
	ram:4cc7 11 82 80       ld de,08082h         	;. . .
l4ccah:
	ram:4cca 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4ccd eb             ex de,hl             	;.
	ram:4cce cd 9d 20       call 0209dh          	;. .  
	ram:4cd1 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4cd5 18 18          jr l4cefh            	;. .
l4cd7h:
	ram:4cd7 cd 84 00       call 00084h          	;. . .
	ram:4cda 28 13          jr z,l4cefh          	;( .
	ram:4cdc 3a 84 80       ld a,(08084h)        	;: . .
	ram:4cdf fe 79          cp 079h              	;. y
	ram:4ce1 28 0c          jr z,l4cefh          	;( .
	ram:4ce3 3c             inc a                	;<
	ram:4ce4 32 84 80       ld (08084h),a        	;2 . .
	ram:4ce7 d7             rst 10h              	;.
	ram:4ce8 38 08          jr c,l4cf2h          	;8 .
	ram:4cea 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4ced 18 b5          jr l4ca4h            	;. .
l4cefh:
	ram:4cef f1             pop af               	;.
	ram:4cf0 18 9a          jr l4c8ch            	;. .
l4cf2h:
	ram:4cf2 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:4cf5 23             inc hl               	;#
	ram:4cf6 5e             ld e,(hl)            	;^
	ram:4cf7 23             inc hl               	;#
	ram:4cf8 56             ld d,(hl)            	;V
	ram:4cf9 2b             dec hl               	;+
	ram:4cfa 2b             dec hl               	;+
	ram:4cfb cd 0b 2c       call 02c0bh          	;. . ,
	ram:4cfe c3 1c 0a       jp 00a1ch            	;. . .
	ram:4d01 cd c5 4e       call sub_4ec5h       	;. . N
	ram:4d04 fe 1f          cp 01fh              	;. .
	ram:4d06 ca 38 0a       jp z,00a38h          	;. 8 .
	ram:4d09 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4d0c 5e             ld e,(hl)            	;^
	ram:4d0d 23             inc hl               	;#
	ram:4d0e 56             ld d,(hl)            	;V
	ram:4d0f 06 10          ld b,010h            	;. .
	ram:4d11 0e 3e          ld c,03eh            	;. >
	ram:4d13 fe 0d          cp 00dh              	;. .
	ram:4d15 da 28 0a       jp c,00a28h          	;. ( .
	ram:4d18 28 08          jr z,l4d22h          	;( .
	ram:4d1a 06 20          ld b,020h            	;.  
	ram:4d1c 0e 5c          ld c,05ch            	;. \
	ram:4d1e fe 0e          cp 00eh              	;. .
	ram:4d20 20 43          jr nz,l4d65h         	;C
l4d22h:
	ram:4d22 c5             push bc              	;.
	ram:4d23 06 00          ld b,000h            	;. .
	ram:4d25 09             add hl,bc            	;.
	ram:4d26 eb             ex de,hl             	;.
	ram:4d27 ed 42          sbc hl,bc            	;. B
	ram:4d29 1a             ld a,(de)            	;.
	ram:4d2a 3c             inc a                	;<
	ram:4d2b c1             pop bc               	;.
	ram:4d2c c5             push bc              	;.
	ram:4d2d cb 70          bit 6,b              	;. p
	ram:4d2f 01 06 00       ld bc,00006h         	;. . .
	ram:4d32 28 03          jr z,l4d37h          	;( .
	ram:4d34 01 0f 00       ld bc,0000fh         	;. . .
l4d37h:
	ram:4d37 3d             dec a                	;=
	ram:4d38 28 03          jr z,l4d3dh          	;( .
	ram:4d3a 09             add hl,bc            	;.
	ram:4d3b 18 fa          jr l4d37h            	;. .
l4d3dh:
	ram:4d3d eb             ex de,hl             	;.
	ram:4d3e 46             ld b,(hl)            	;F
	ram:4d3f 04             inc b                	;.
	ram:4d40 18 1e          jr l4d60h            	;. .
l4d42h:
	ram:4d42 23             inc hl               	;#
	ram:4d43 7e             ld a,(hl)            	;~
	ram:4d44 e6 7f          and 07fh             	;. .
	ram:4d46 fe 0a          cp 00ah              	;. .
	ram:4d48 30 18          jr nc,l4d62h         	;0 .
	ram:4d4a 1b             dec de               	;.
	ram:4d4b d5             push de              	;.
	ram:4d4c 23             inc hl               	;#
	ram:4d4d 5e             ld e,(hl)            	;^
	ram:4d4e 23             inc hl               	;#
	ram:4d4f 56             ld d,(hl)            	;V
	ram:4d50 19             add hl,de            	;.
	ram:4d51 d1             pop de               	;.
	ram:4d52 f1             pop af               	;.
	ram:4d53 f5             push af              	;.
	ram:4d54 cb 77          bit 6,a              	;. w
	ram:4d56 28 08          jr z,l4d60h          	;( .
	ram:4d58 1b             dec de               	;.
	ram:4d59 d5             push de              	;.
	ram:4d5a 23             inc hl               	;#
	ram:4d5b 5e             ld e,(hl)            	;^
	ram:4d5c 23             inc hl               	;#
	ram:4d5d 56             ld d,(hl)            	;V
	ram:4d5e 19             add hl,de            	;.
	ram:4d5f d1             pop de               	;.
l4d60h:
	ram:4d60 10 e0          djnz l4d42h          	;. .
l4d62h:
	ram:4d62 c1             pop bc               	;.
	ram:4d63 18 37          jr l4d9ch            	;. 7
l4d65h:
	ram:4d65 06 40          ld b,040h            	;. @
	ram:4d67 0e 5c          ld c,05ch            	;. \
	ram:4d69 fe 0f          cp 00fh              	;. .
	ram:4d6b 28 b5          jr z,l4d22h          	;( .
	ram:4d6d fe 10          cp 010h              	;. .
	ram:4d6f c2 28 0a       jp nz,00a28h         	;. ( .
	ram:4d72 01 72 00       ld bc,00072h         	;. r .
	ram:4d75 09             add hl,bc            	;.
	ram:4d76 eb             ex de,hl             	;.
	ram:4d77 ed 42          sbc hl,bc            	;. B
	ram:4d79 eb             ex de,hl             	;.
	ram:4d7a 46             ld b,(hl)            	;F
	ram:4d7b 04             inc b                	;.
	ram:4d7c 23             inc hl               	;#
	ram:4d7d 18 19          jr l4d98h            	;. .
l4d7fh:
	ram:4d7f c5             push bc              	;.
	ram:4d80 23             inc hl               	;#
	ram:4d81 4e             ld c,(hl)            	;N
	ram:4d82 23             inc hl               	;#
	ram:4d83 46             ld b,(hl)            	;F
	ram:4d84 09             add hl,bc            	;.
	ram:4d85 23             inc hl               	;#
	ram:4d86 7e             ld a,(hl)            	;~
	ram:4d87 01 0d 00       ld bc,0000dh         	;. . .
	ram:4d8a 3c             inc a                	;<
	ram:4d8b 20 03          jr nz,l4d90h         	;.
	ram:4d8d 01 fc ff       ld bc,0fffch         	;. . .
l4d90h:
	ram:4d90 eb             ex de,hl             	;.
	ram:4d91 09             add hl,bc            	;.
	ram:4d92 eb             ex de,hl             	;.
	ram:4d93 01 0a 00       ld bc,0000ah         	;. . .
	ram:4d96 09             add hl,bc            	;.
	ram:4d97 c1             pop bc               	;.
l4d98h:
	ram:4d98 10 e5          djnz l4d7fh          	;. .
	ram:4d9a 06 80          ld b,080h            	;. .
l4d9ch:
	ram:4d9c d5             push de              	;.
	ram:4d9d fd 7e 02       ld a,(iy+002h)       	;. ~ .
	ram:4da0 4f             ld c,a               	;O
	ram:4da1 c5             push bc              	;.
	ram:4da2 e6 0f          and 00fh             	;. .
	ram:4da4 b0             or b                 	;.
	ram:4da5 fd 77 02       ld (iy+002h),a       	;. w .
	ram:4da8 21 be 4e       ld hl,l4ebeh         	;! . N
	ram:4dab cd b5 0a       call 00ab5h          	;. . .
	ram:4dae cd 25 37       call 03725h          	;. % 7
	ram:4db1 3a 9a 80       ld a,(0809ah)        	;: . .
	ram:4db4 47             ld b,a               	;G
	ram:4db5 2a 98 80       ld hl,(08098h)       	;* . .
	ram:4db8 11 09 00       ld de,00009h         	;. . .
	ram:4dbb cd 84 00       call 00084h          	;. . .
	ram:4dbe 28 05          jr z,l4dc5h          	;( .
	ram:4dc0 11 14 00       ld de,00014h         	;. . .
	ram:4dc3 cb 38          srl b                	;. 8
l4dc5h:
	ram:4dc5 04             inc b                	;.
	ram:4dc6 af             xor a                	;.
	ram:4dc7 18 1a          jr l4de3h            	;. .
l4dc9h:
	ram:4dc9 19             add hl,de            	;.
	ram:4dca cd 89 00       call 00089h          	;. . .
	ram:4dcd 20 14          jr nz,l4de3h         	;.
	ram:4dcf c5             push bc              	;.
	ram:4dd0 d5             push de              	;.
	ram:4dd1 e5             push hl              	;.
	ram:4dd2 cd 2b 37       call 0372bh          	;. + 7
	ram:4dd5 e1             pop hl               	;.
	ram:4dd6 d1             pop de               	;.
	ram:4dd7 c1             pop bc               	;.
	ram:4dd8 fe 0a          cp 00ah              	;. .
	ram:4dda 30 07          jr nc,l4de3h         	;0 .
	ram:4ddc 2b             dec hl               	;+
	ram:4ddd cd 84 00       call 00084h          	;. . .
	ram:4de0 28 01          jr z,l4de3h          	;( .
	ram:4de2 2b             dec hl               	;+
l4de3h:
	ram:4de3 10 e4          djnz l4dc9h          	;. .
	ram:4de5 eb             ex de,hl             	;.
	ram:4de6 cd db 0a       call 00adbh          	;. . .
	ram:4de9 c1             pop bc               	;.
	ram:4dea c5             push bc              	;.
	ram:4deb fd 71 02       ld (iy+002h),c       	;. q .
	ram:4dee d5             push de              	;.
	ram:4def cb 78          bit 7,b              	;. x
	ram:4df1 28 1e          jr z,l4e11h          	;( .
	ram:4df3 3e 09          ld a,009h            	;> .
l4df5h:
	ram:4df5 f5             push af              	;.
	ram:4df6 cd 31 37       call 03731h          	;. 1 7
	ram:4df9 d7             rst 10h              	;.
	ram:4dfa 38 11          jr c,l4e0dh          	;8 .
	ram:4dfc cd 9c 66       call sub_669ch       	;. . f
	ram:4dff eb             ex de,hl             	;.
	ram:4e00 cd 3f 2d       call 02d3fh          	;. ? -
	ram:4e03 f1             pop af               	;.
	ram:4e04 e1             pop hl               	;.
	ram:4e05 19             add hl,de            	;.
	ram:4e06 11 07 00       ld de,00007h         	;. . .
	ram:4e09 19             add hl,de            	;.
	ram:4e0a e5             push hl              	;.
	ram:4e0b 18 01          jr l4e0eh            	;. .
l4e0dh:
	ram:4e0d f1             pop af               	;.
l4e0eh:
	ram:4e0e 3d             dec a                	;=
	ram:4e0f 20 e4          jr nz,l4df5h         	;.
l4e11h:
	ram:4e11 cd 09 2e       call 02e09h          	;. . .
	ram:4e14 d1             pop de               	;.
	ram:4e15 c1             pop bc               	;.
	ram:4e16 e1             pop hl               	;.
	ram:4e17 b7             or a                 	;.
	ram:4e18 ed 52          sbc hl,de            	;. R
	ram:4e1a 38 07          jr c,l4e23h          	;8 .
	ram:4e1c 28 05          jr z,l4e23h          	;( .
	ram:4e1e c5             push bc              	;.
	ram:4e1f cd b8 2f       call 02fb8h          	;. . /
	ram:4e22 c1             pop bc               	;.
l4e23h:
	ram:4e23 cd 1b 00       call 0001bh          	;. . .
	ram:4e26 cb 60          bit 4,b              	;. `
	ram:4e28 c5             push bc              	;.
	ram:4e29 c4 c9 3b       call nz,03bc9h       	;. . ;
	ram:4e2c c1             pop bc               	;.
	ram:4e2d cb 68          bit 5,b              	;. h
	ram:4e2f c5             push bc              	;.
	ram:4e30 c4 cf 3b       call nz,03bcfh       	;. . ;
	ram:4e33 c1             pop bc               	;.
	ram:4e34 cb 70          bit 6,b              	;. p
	ram:4e36 c5             push bc              	;.
	ram:4e37 c4 d5 3b       call nz,03bd5h       	;. . ;
	ram:4e3a c1             pop bc               	;.
	ram:4e3b cb 78          bit 7,b              	;. x
	ram:4e3d c4 db 3b       call nz,03bdbh       	;. . ;
	ram:4e40 cd 37 37       call 03737h          	;. 7 7
	ram:4e43 cd 89 00       call 00089h          	;. . .
	ram:4e46 28 0e          jr z,l4e56h          	;( .
	ram:4e48 3e 09          ld a,009h            	;> .
l4e4ah:
	ram:4e4a f5             push af              	;.
	ram:4e4b cd 31 37       call 03731h          	;. 1 7
	ram:4e4e d7             rst 10h              	;.
	ram:4e4f d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:4e52 f1             pop af               	;.
	ram:4e53 3d             dec a                	;=
	ram:4e54 20 f4          jr nz,l4e4ah         	;.
l4e56h:
	ram:4e56 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4e59 23             inc hl               	;#
	ram:4e5a 23             inc hl               	;#
	ram:4e5b 7e             ld a,(hl)            	;~
	ram:4e5c fd 77 04       ld (iy+004h),a       	;. w .
	ram:4e5f 23             inc hl               	;#
	ram:4e60 cd e9 4e       call sub_4ee9h       	;. . N
	ram:4e63 eb             ex de,hl             	;.
	ram:4e64 ed b0          ldir                 	;. .
	ram:4e66 46             ld b,(hl)            	;F
	ram:4e67 23             inc hl               	;#
	ram:4e68 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4e6b 04             inc b                	;.
	ram:4e6c 18 4a          jr l4eb8h            	;. J
l4e6eh:
	ram:4e6e c5             push bc              	;.
	ram:4e6f 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4e72 7e             ld a,(hl)            	;~
	ram:4e73 f5             push af              	;.
	ram:4e74 e6 7f          and 07fh             	;. .
	ram:4e76 cd 3d 37       call 0373dh          	;. = 7
	ram:4e79 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4e7c 23             inc hl               	;#
	ram:4e7d cd 0c 4f       call sub_4f0ch       	;. . O
	ram:4e80 cd 89 00       call 00089h          	;. . .
	ram:4e83 28 1c          jr z,l4ea1h          	;( .
	ram:4e85 e6 7f          and 07fh             	;. .
	ram:4e87 cd 31 37       call 03731h          	;. 1 7
	ram:4e8a 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4e8d ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:4e91 7e             ld a,(hl)            	;~
	ram:4e92 3c             inc a                	;<
	ram:4e93 c4 86 29       call nz,02986h       	;. . )
	ram:4e96 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4e99 cd 9d 20       call 0209dh          	;. .  
	ram:4e9c 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4e9f 18 16          jr l4eb7h            	;. .
l4ea1h:
	ram:4ea1 cd 84 00       call 00084h          	;. . .
	ram:4ea4 28 11          jr z,l4eb7h          	;( .
	ram:4ea6 f5             push af              	;.
	ram:4ea7 e6 7f          and 07fh             	;. .
	ram:4ea9 cd 3d 37       call 0373dh          	;. = 7
	ram:4eac 3e 79          ld a,079h            	;> y
	ram:4eae 32 84 80       ld (08084h),a        	;2 . .
	ram:4eb1 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4eb4 cd 0c 4f       call sub_4f0ch       	;. . O
l4eb7h:
	ram:4eb7 c1             pop bc               	;.
l4eb8h:
	ram:4eb8 10 b4          djnz l4e6eh          	;. .
	ram:4eba cd 43 37       call 03743h          	;. C 7
	ram:4ebd c9             ret                  	;.
l4ebeh:
	ram:4ebe c1             pop bc               	;.
	ram:4ebf fd 71 02       ld (iy+002h),c       	;. q .
	ram:4ec2 c3 8a 0a       jp 00a8ah            	;. . .
sub_4ec5h:
	ram:4ec5 cd 6e 74       call sub_746eh       	;. n t
	ram:4ec8 fe 32          cp 032h              	;. 2
	ram:4eca ca 1c 0a       jp z,00a1ch          	;. . .
	ram:4ecd cd cd 74       call sub_74cdh       	;. . t
	ram:4ed0 c2 1c 0a       jp nz,00a1ch         	;. . .
sub_4ed3h:
	ram:4ed3 3e ff          ld a,0ffh            	;> .
	ram:4ed5 32 82 80       ld (08082h),a        	;2 . .
	ram:4ed8 d7             rst 10h              	;.
	ram:4ed9 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:4edc ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:4ee0 cd f5 1f       call 01ff5h          	;. . .
	ram:4ee3 3a 82 80       ld a,(08082h)        	;: . .
	ram:4ee6 e6 1f          and 01fh             	;. .
	ram:4ee8 c9             ret                  	;.
sub_4ee9h:
	ram:4ee9 eb             ex de,hl             	;.
	ram:4eea 21 63 84       ld hl,08463h         	;! c .
	ram:4eed 01 3c 00       ld bc,0003ch         	;. < .
	ram:4ef0 cd 7a 00       call 0007ah          	;. z .
	ram:4ef3 c0             ret nz               	;.
	ram:4ef4 21 b6 84       ld hl,084b6h         	;! . .
	ram:4ef7 01 5a 00       ld bc,0005ah         	;. Z .
	ram:4efa cd 7f 00       call 0007fh          	;. . .
	ram:4efd c0             ret nz               	;.
	ram:4efe 21 13 85       ld hl,08513h         	;! . .
	ram:4f01 cd 84 00       call 00084h          	;. . .
	ram:4f04 c0             ret nz               	;.
	ram:4f05 21 70 85       ld hl,08570h         	;! p .
	ram:4f08 01 70 00       ld bc,00070h         	;. p .
	ram:4f0b c9             ret                  	;.
sub_4f0ch:
	ram:4f0c 5e             ld e,(hl)            	;^
	ram:4f0d 23             inc hl               	;#
	ram:4f0e 56             ld d,(hl)            	;V
	ram:4f0f 23             inc hl               	;#
	ram:4f10 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4f13 eb             ex de,hl             	;.
	ram:4f14 e5             push hl              	;.
	ram:4f15 cd 2f 2a       call 02a2fh          	;. / *
	ram:4f18 13             inc de               	;.
	ram:4f19 13             inc de               	;.
	ram:4f1a c1             pop bc               	;.
	ram:4f1b e5             push hl              	;.
	ram:4f1c 78             ld a,b               	;x
	ram:4f1d b1             or c                 	;.
	ram:4f1e 28 08          jr z,l4f28h          	;( .
	ram:4f20 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4f23 ed b0          ldir                 	;. .
	ram:4f25 22 d0 80       ld (080d0h),hl       	;" . .
l4f28h:
	ram:4f28 e1             pop hl               	;.
	ram:4f29 d1             pop de               	;.
	ram:4f2a f1             pop af               	;.
	ram:4f2b d5             push de              	;.
	ram:4f2c cb 7f          bit 7,a              	;. .
	ram:4f2e c8             ret z                	;.
	ram:4f2f cb ee          set 5,(hl)           	;. .
	ram:4f31 c9             ret                  	;.
	ram:4f32 ae             xor (hl)             	;.
	ram:4f33 4f             ld c,a               	;O
	ram:4f34 b9             cp c                 	;.
	ram:4f35 4f             ld c,a               	;O
	ram:4f36 7a             ld a,d               	;z
	ram:4f37 4f             ld c,a               	;O
	ram:4f38 83             add a,e              	;.
	ram:4f39 4f             ld c,a               	;O
	ram:4f3a 89             adc a,c              	;.
	ram:4f3b 4f             ld c,a               	;O
	ram:4f3c 92             sub d                	;.
	ram:4f3d 4f             ld c,a               	;O
	ram:4f3e 1e 48          ld e,048h            	;. H
	ram:4f40 f2 4f fb       jp p,0fb4fh          	;. O .
	ram:4f43 4f             ld c,a               	;O
	ram:4f44 01 50 14       ld bc,01450h         	;. P .
	ram:4f47 50             ld d,b               	;P
	ram:4f48 18 50          jr 82                	;. P
	ram:4f4a 1c             inc e                	;.
	ram:4f4b 50             ld d,b               	;P
	ram:4f4c 20 50          jr nz,82             	;P
	ram:4f4e e9             jp (hl)              	;.
	ram:4f4f 4f             ld c,a               	;O
	ram:4f50 de 4f          sbc a,04fh           	;. O
	ram:4f52 d7             rst 10h              	;.
	ram:4f53 4f             ld c,a               	;O
	ram:4f54 c4 4f 0f       call nz,00f4fh       	;. O .
	ram:4f57 50             ld d,b               	;P
	ram:4f58 0a             ld a,(bc)            	;.
	ram:4f59 50             ld d,b               	;P
	ram:4f5a 98             sbc a,b              	;.
	ram:4f5b 4f             ld c,a               	;O
	ram:4f5c a3             and e                	;.
	ram:4f5d 4f             ld c,a               	;O
	ram:4f5e 3c             inc a                	;<
	ram:4f5f 50             ld d,b               	;P
	ram:4f60 4a             ld c,d               	;J
	ram:4f61 50             ld d,b               	;P
	ram:4f62 24             inc h                	;$
	ram:4f63 50             ld d,b               	;P
	ram:4f64 2d             dec l                	;-
	ram:4f65 50             ld d,b               	;P
	ram:4f66 32 50 37       ld (03750h),a        	;2 P 7
	ram:4f69 50             ld d,b               	;P
	ram:4f6a 55             ld d,l               	;U
	ram:4f6b 50             ld d,b               	;P
	ram:4f6c 5c             ld e,h               	;\
	ram:4f6d 50             ld d,b               	;P
	ram:4f6e 67             ld h,a               	;g
	ram:4f6f 50             ld d,b               	;P
	ram:4f70 6e             ld l,(hl)            	;n
	ram:4f71 50             ld d,b               	;P
	ram:4f72 75             ld (hl),l            	;u
	ram:4f73 50             ld d,b               	;P
	ram:4f74 7c             ld a,h               	;|
	ram:4f75 50             ld d,b               	;P
	ram:4f76 83             add a,e              	;.
	ram:4f77 50             ld d,b               	;P
	ram:4f78 88             adc a,b              	;.
	ram:4f79 50             ld d,b               	;P
	ram:4f7a fd cb 0a 86    res 0,(iy+00ah)      	;. . . .
l4f7eh:
	ram:4f7e fd cb 0a 8e    res 1,(iy+00ah)      	;. . . .
	ram:4f82 c9             ret                  	;.
	ram:4f83 fd cb 0a c6    set 0,(iy+00ah)      	;. . . .
	ram:4f87 18 f5          jr l4f7eh            	;. .
	ram:4f89 fd cb 0a c6    set 0,(iy+00ah)      	;. . . .
	ram:4f8d fd cb 0a ce    set 1,(iy+00ah)      	;. . . .
	ram:4f91 c9             ret                  	;.
	ram:4f92 3e ff          ld a,0ffh            	;> .
	ram:4f94 32 3a 8b       ld (08b3ah),a        	;2 : .
	ram:4f97 c9             ret                  	;.
	ram:4f98 fd cb 08 46    bit 0,(iy+008h)      	;. . . F
	ram:4f9c c8             ret z                	;.
	ram:4f9d fd cb 08 86    res 0,(iy+008h)      	;. . . .
	ram:4fa1 18 31          jr l4fd4h            	;. 1
	ram:4fa3 fd cb 08 46    bit 0,(iy+008h)      	;. . . F
	ram:4fa7 c0             ret nz               	;.
	ram:4fa8 fd cb 08 c6    set 0,(iy+008h)      	;. . . .
	ram:4fac 18 26          jr l4fd4h            	;. &
	ram:4fae fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:4fb2 c8             ret z                	;.
	ram:4fb3 fd cb 00 96    res 2,(iy+000h)      	;. . . .
	ram:4fb7 18 1b          jr l4fd4h            	;. .
	ram:4fb9 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:4fbd c0             ret nz               	;.
	ram:4fbe fd cb 00 d6    set 2,(iy+000h)      	;. . . .
	ram:4fc2 18 10          jr l4fd4h            	;. .
	ram:4fc4 fd 7e 0a       ld a,(iy+00ah)       	;. ~ .
	ram:4fc7 cb d7          set 2,a              	;. .
l4fc9h:
	ram:4fc9 cb 9f          res 3,a              	;. .
	ram:4fcb cb a7          res 4,a              	;. .
l4fcdh:
	ram:4fcd fd be 0a       cp (iy+00ah)         	;. . .
	ram:4fd0 c8             ret z                	;.
	ram:4fd1 fd 77 0a       ld (iy+00ah),a       	;. w .
l4fd4h:
	ram:4fd4 c3 1b 00       jp 0001bh            	;. . .
	ram:4fd7 fd 7e 0a       ld a,(iy+00ah)       	;. ~ .
	ram:4fda cb 97          res 2,a              	;. .
	ram:4fdc 18 eb          jr l4fc9h            	;. .
	ram:4fde fd 7e 0a       ld a,(iy+00ah)       	;. ~ .
	ram:4fe1 cb df          set 3,a              	;. .
	ram:4fe3 cb a7          res 4,a              	;. .
l4fe5h:
	ram:4fe5 cb 97          res 2,a              	;. .
	ram:4fe7 18 e4          jr l4fcdh            	;. .
	ram:4fe9 fd 7e 0a       ld a,(iy+00ah)       	;. ~ .
	ram:4fec cb e7          set 4,a              	;. .
	ram:4fee cb 9f          res 3,a              	;. .
	ram:4ff0 18 f3          jr l4fe5h            	;. .
	ram:4ff2 fd cb 0a b6    res 6,(iy+00ah)      	;. . . .
l4ff6h:
	ram:4ff6 fd cb 0a be    res 7,(iy+00ah)      	;. . . .
	ram:4ffa c9             ret                  	;.
	ram:4ffb fd cb 0a f6    set 6,(iy+00ah)      	;. . . .
	ram:4fff 18 f5          jr l4ff6h            	;. .
	ram:5001 fd cb 0a f6    set 6,(iy+00ah)      	;. . . .
	ram:5005 fd cb 0a fe    set 7,(iy+00ah)      	;. . . .
	ram:5009 c9             ret                  	;.
	ram:500a fd cb 0a ee    set 5,(iy+00ah)      	;. . . .
	ram:500e c9             ret                  	;.
	ram:500f fd cb 0a ae    res 5,(iy+00ah)      	;. . . .
	ram:5013 c9             ret                  	;.
	ram:5014 cd c9 3b       call 03bc9h          	;. . ;
	ram:5017 c9             ret                  	;.
	ram:5018 cd d5 3b       call 03bd5h          	;. . ;
	ram:501b c9             ret                  	;.
	ram:501c cd cf 3b       call 03bcfh          	;. . ;
	ram:501f c9             ret                  	;.
	ram:5020 cd db 3b       call 03bdbh          	;. . ;
	ram:5023 c9             ret                  	;.
	ram:5024 cd 89 00       call 00089h          	;. . .
	ram:5027 c0             ret nz               	;.
	ram:5028 fd cb 04 de    set 3,(iy+004h)      	;. . . .
	ram:502c c9             ret                  	;.
	ram:502d fd cb 04 9e    res 3,(iy+004h)      	;. . . .
	ram:5031 c9             ret                  	;.
	ram:5032 fd cb 04 a6    res 4,(iy+004h)      	;. . . .
	ram:5036 c9             ret                  	;.
	ram:5037 fd cb 04 e6    set 4,(iy+004h)      	;. . . .
	ram:503b c9             ret                  	;.
	ram:503c fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:503f cb 8f          res 1,a              	;. .
l5041h:
	ram:5041 fd be 04       cp (iy+004h)         	;. . .
	ram:5044 c8             ret z                	;.
	ram:5045 fd 77 04       ld (iy+004h),a       	;. w .
	ram:5048 18 8a          jr l4fd4h            	;. .
	ram:504a cd 89 00       call 00089h          	;. . .
	ram:504d c0             ret nz               	;.
	ram:504e fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:5051 cb cf          set 1,a              	;. .
	ram:5053 18 ec          jr l5041h            	;. .
	ram:5055 fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:5058 cb 87          res 0,a              	;. .
	ram:505a 18 e5          jr l5041h            	;. .
	ram:505c cd 89 00       call 00089h          	;. . .
	ram:505f c0             ret nz               	;.
	ram:5060 fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:5063 cb c7          set 0,a              	;. .
	ram:5065 18 da          jr l5041h            	;. .
	ram:5067 fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:506a cb af          res 5,a              	;. .
	ram:506c 18 d3          jr l5041h            	;. .
	ram:506e fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:5071 cb ef          set 5,a              	;. .
	ram:5073 18 cc          jr l5041h            	;. .
	ram:5075 fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:5078 cb d7          set 2,a              	;. .
	ram:507a 18 c5          jr l5041h            	;. .
	ram:507c fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:507f cb 97          res 2,a              	;. .
	ram:5081 18 be          jr l5041h            	;. .
	ram:5083 fd cb 04 f6    set 6,(iy+004h)      	;. . . .
	ram:5087 c9             ret                  	;.
	ram:5088 fd cb 04 b6    res 6,(iy+004h)      	;. . . .
	ram:508c c9             ret                  	;.
l508dh:
	ram:508d 17             rla                  	;.
	ram:508e 52             ld d,d               	;R
	ram:508f f5             push af              	;.
	ram:5090 50             ld d,b               	;P
	ram:5091 e5             push hl              	;.
	ram:5092 51             ld d,c               	;Q
	ram:5093 e8             ret pe               	;.
	ram:5094 51             ld d,c               	;Q
	ram:5095 fa 51 04       jp m,00451h          	;. Q .
	ram:5098 52             ld d,d               	;R
	ram:5099 04             inc b                	;.
	ram:509a 52             ld d,d               	;R
	ram:509b 04             inc b                	;.
	ram:509c 52             ld d,d               	;R
	ram:509d 52             ld d,d               	;R
	ram:509e 52             ld d,d               	;R
	ram:509f 74             ld (hl),h            	;t
	ram:50a0 52             ld d,d               	;R
	ram:50a1 63             ld h,e               	;c
	ram:50a2 52             ld d,d               	;R
	ram:50a3 f6 51          or 051h              	;. Q
	ram:50a5 2e 51          ld l,051h            	;. Q
	ram:50a7 4b             ld c,e               	;K
	ram:50a8 51             ld d,c               	;Q
	ram:50a9 58             ld e,b               	;X
	ram:50aa 51             ld d,c               	;Q
	ram:50ab 9d             sbc a,l              	;.
	ram:50ac 51             ld d,c               	;Q
	ram:50ad a6             and (hl)             	;.
	ram:50ae 51             ld d,c               	;Q
	ram:50af b3             or e                 	;.
	ram:50b0 51             ld d,c               	;Q
	ram:50b1 b7             or a                 	;.
	ram:50b2 51             ld d,c               	;Q
	ram:50b3 bb             cp e                 	;.
	ram:50b4 51             ld d,c               	;Q
	ram:50b5 bf             cp a                 	;.
	ram:50b6 51             ld d,c               	;Q
	ram:50b7 c3 51 c7       jp 0c751h            	;. Q .
	ram:50ba 51             ld d,c               	;Q
	ram:50bb ee 51          xor 051h             	;. Q
	ram:50bd f2 51 e1       jp p,0e151h          	;. Q .
	ram:50c0 51             ld d,c               	;Q
	ram:50c1 84             add a,h              	;.
	ram:50c2 52             ld d,d               	;R
	ram:50c3 c5             push bc              	;.
	ram:50c4 50             ld d,b               	;P
	ram:50c5 fe 02          cp 002h              	;. .
	ram:50c7 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:50ca cd 47 1f       call 01f47h          	;. G .
	ram:50cd c2 28 0a       jp nz,00a28h         	;. ( .
	ram:50d0 cd 1f 2f       call 02f1fh          	;. . /
	ram:50d3 cd 6b 2f       call 02f6bh          	;. k /
	ram:50d6 cd 45 2e       call 02e45h          	;. E .
	ram:50d9 cd 19 37       call 03719h          	;. . 7
	ram:50dc cd 43 2f       call 02f43h          	;. C /
	ram:50df ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:50e3 cd 11 21       call 02111h          	;. . !
	ram:50e6 cd 24 2f       call 02f24h          	;. $ /
	ram:50e9 cd 83 53       call sub_5383h       	;. . S
	ram:50ec c2 28 0a       jp nz,00a28h         	;. ( .
	ram:50ef cd 49 37       call 03749h          	;. I 7
	ram:50f2 c3 0c 2e       jp 02e0ch            	;. . .
	ram:50f5 f5             push af              	;.
	ram:50f6 df             rst 18h              	;.
	ram:50f7 f1             pop af               	;.
	ram:50f8 fe 05          cp 005h              	;. .
	ram:50fa d2 2c 0a       jp nc,00a2ch         	;. , .
	ram:50fd fe 03          cp 003h              	;. .
	ram:50ff 28 10          jr z,l5111h          	;( .
	ram:5101 30 1c          jr nc,l511fh         	;0 .
	ram:5103 2a 69 83       ld hl,(08369h)       	;* i .
	ram:5106 cd 7a 00       call 0007ah          	;. z .
	ram:5109 28 03          jr z,l510eh          	;( .
	ram:510b 21 9f 84       ld hl,0849fh         	;! . .
l510eh:
	ram:510e cd 4d 2e       call 02e4dh          	;. M .
l5111h:
	ram:5111 2a 6b 83       ld hl,(0836bh)       	;* k .
	ram:5114 cd 7a 00       call 0007ah          	;. z .
	ram:5117 28 03          jr z,l511ch          	;( .
	ram:5119 21 a9 84       ld hl,084a9h         	;! . .
l511ch:
	ram:511c cd 4d 2e       call 02e4dh          	;. M .
l511fh:
	ram:511f cd 17 45       call sub_4517h       	;. . E
	ram:5122 cd 4f 37       call 0374fh          	;. O 7
	ram:5125 cd 09 2e       call 02e09h          	;. . .
l5128h:
	ram:5128 cd 4f 4a       call l4a4fh          	;. O J
	ram:512b c3 4f 4a       jp l4a4fh            	;. O J
	ram:512e fe 03          cp 003h              	;. .
	ram:5130 d2 2c 0a       jp nc,00a2ch         	;. , .
l5133h:
	ram:5133 f5             push af              	;.
	ram:5134 fe 01          cp 001h              	;. .
	ram:5136 cc 87 2e       call z,02e87h        	;. . .
	ram:5139 cd 65 51       call sub_5165h       	;. e Q
	ram:513c f1             pop af               	;.
	ram:513d fe 01          cp 001h              	;. .
	ram:513f 20 05          jr nz,l5146h         	;.
	ram:5141 cd c7 2f       call 02fc7h          	;. . /
	ram:5144 af             xor a                	;.
	ram:5145 77             ld (hl),a            	;w
l5146h:
	ram:5146 cd 55 37       call 03755h          	;. U 7
	ram:5149 18 dd          jr l5128h            	;. .
	ram:514b fe 02          cp 002h              	;. .
	ram:514d c2 2c 0a       jp nz,00a2ch         	;. , .
l5150h:
	ram:5150 cd 65 51       call sub_5165h       	;. e Q
	ram:5153 cd 5b 37       call 0375bh          	;. [ 7
	ram:5156 18 d0          jr l5128h            	;. .
	ram:5158 fe 02          cp 002h              	;. .
	ram:515a c2 2c 0a       jp nz,00a2ch         	;. , .
l515dh:
	ram:515d cd 65 51       call sub_5165h       	;. e Q
	ram:5160 cd 61 37       call 03761h          	;. a 7
	ram:5163 18 c3          jr l5128h            	;. .
sub_5165h:
	ram:5165 df             rst 18h              	;.
	ram:5166 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:5169 06 02          ld b,002h            	;. .
l516bh:
	ram:516b c5             push bc              	;.
	ram:516c 11 f6 ff       ld de,0fff6h         	;. . .
	ram:516f 19             add hl,de            	;.
	ram:5170 e5             push hl              	;.
	ram:5171 e7             rst 20h              	;.
	ram:5172 cd 47 1f       call 01f47h          	;. G .
	ram:5175 fe 02          cp 002h              	;. .
	ram:5177 da 28 0a       jp c,00a28h          	;. ( .
	ram:517a d7             rst 10h              	;.
	ram:517b da 38 0a       jp c,00a38h          	;. 8 .
	ram:517e e6 1f          and 01fh             	;. .
	ram:5180 fe 04          cp 004h              	;. .
	ram:5182 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:5185 eb             ex de,hl             	;.
	ram:5186 7e             ld a,(hl)            	;~
	ram:5187 23             inc hl               	;#
	ram:5188 56             ld d,(hl)            	;V
	ram:5189 5f             ld e,a               	;_
	ram:518a e1             pop hl               	;.
	ram:518b c1             pop bc               	;.
	ram:518c d5             push de              	;.
	ram:518d 10 dc          djnz l516bh          	;. .
	ram:518f d1             pop de               	;.
	ram:5190 e1             pop hl               	;.
	ram:5191 b7             or a                 	;.
	ram:5192 ed 52          sbc hl,de            	;. R
	ram:5194 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:5197 7a             ld a,d               	;z
	ram:5198 b3             or e                 	;.
	ram:5199 c0             ret nz               	;.
	ram:519a c3 34 0a       jp 00a34h            	;. 4 .
l519dh:
	ram:519d cd cb 51       call sub_51cbh       	;. . Q
	ram:51a0 cd 57 38       call 03857h          	;. W 8
	ram:51a3 c3 27 52       jp l5227h            	;. ' R
l51a6h:
	ram:51a6 06 00          ld b,000h            	;. .
l51a8h:
	ram:51a8 c5             push bc              	;.
	ram:51a9 cd cb 51       call sub_51cbh       	;. . Q
	ram:51ac c1             pop bc               	;.
	ram:51ad cd 51 38       call 03851h          	;. Q 8
	ram:51b0 c3 27 52       jp l5227h            	;. ' R
l51b3h:
	ram:51b3 06 01          ld b,001h            	;. .
	ram:51b5 18 f1          jr l51a8h            	;. .
l51b7h:
	ram:51b7 06 02          ld b,002h            	;. .
	ram:51b9 18 ed          jr l51a8h            	;. .
l51bbh:
	ram:51bb 06 03          ld b,003h            	;. .
	ram:51bd 18 e9          jr l51a8h            	;. .
l51bfh:
	ram:51bf 06 04          ld b,004h            	;. .
	ram:51c1 18 e5          jr l51a8h            	;. .
l51c3h:
	ram:51c3 06 05          ld b,005h            	;. .
	ram:51c5 18 e1          jr l51a8h            	;. .
l51c7h:
	ram:51c7 06 06          ld b,006h            	;. .
	ram:51c9 18 dd          jr l51a8h            	;. .
sub_51cbh:
	ram:51cb cd f5 1f       call 01ff5h          	;. . .
	ram:51ce cf             rst 8                	;.
	ram:51cf f5             push af              	;.
	ram:51d0 3d             dec a                	;=
	ram:51d1 28 06          jr z,l51d9h          	;( .
	ram:51d3 cd 67 37       call 03767h          	;. g 7
	ram:51d6 cd 1f 2f       call 02f1fh          	;. . /
l51d9h:
	ram:51d9 cd 6d 37       call 0376dh          	;. m 7
	ram:51dc cd 56 20       call 02056h          	;. V  
	ram:51df f1             pop af               	;.
	ram:51e0 c9             ret                  	;.
	ram:51e1 e1             pop hl               	;.
	ram:51e2 c3 bb 59       jp l59bbh            	;. . Y
	ram:51e5 37             scf                  	;7
	ram:51e6 18 01          jr l51e9h            	;. .
	ram:51e8 b7             or a                 	;.
l51e9h:
	ram:51e9 cd 73 37       call 03773h          	;. s 7
	ram:51ec 18 39          jr l5227h            	;. 9
l51eeh:
	ram:51ee 3e fc          ld a,0fch            	;> .
	ram:51f0 18 0a          jr l51fch            	;. .
l51f2h:
	ram:51f2 3e fd          ld a,0fdh            	;> .
	ram:51f4 18 06          jr l51fch            	;. .
	ram:51f6 3e ef          ld a,0efh            	;> .
	ram:51f8 18 02          jr l51fch            	;. .
	ram:51fa 3e f2          ld a,0f2h            	;> .
l51fch:
	ram:51fc 2a 65 8a       ld hl,(08a65h)       	;* e .
	ram:51ff cd 41 6b       call sub_6b41h       	;. A k
	ram:5202 18 23          jr l5227h            	;. #
	ram:5204 fe 02          cp 002h              	;. .
	ram:5206 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5209 3e fb          ld a,0fbh            	;> .
	ram:520b 83             add a,e              	;.
	ram:520c f5             push af              	;.
	ram:520d df             rst 18h              	;.
	ram:520e cd 17 45       call sub_4517h       	;. . E
	ram:5211 f1             pop af               	;.
	ram:5212 cd 79 37       call 03779h          	;. y 7
	ram:5215 18 10          jr l5227h            	;. .
	ram:5217 fe 01          cp 001h              	;. .
	ram:5219 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:521c cd 2c 52       call sub_522ch       	;. , R
	ram:521f fe 0c          cp 00ch              	;. .
	ram:5221 d2 14 0a       jp nc,00a14h         	;. . .
	ram:5224 32 3a 8b       ld (08b3ah),a        	;2 : .
l5227h:
	ram:5227 fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:522b c9             ret                  	;.
sub_522ch:
	ram:522c 3a 82 80       ld a,(08082h)        	;: . .
	ram:522f e6 1f          and 01fh             	;. .
	ram:5231 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:5234 32 8c 80       ld (0808ch),a        	;2 . .
	ram:5237 3a 85 80       ld a,(08085h)        	;: . .
	ram:523a b7             or a                 	;.
	ram:523b c8             ret z                	;.
	ram:523c ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:5240 21 01 fc       ld hl,0fc01h         	;! . .
	ram:5243 ed 52          sbc hl,de            	;. R
	ram:5245 da 14 0a       jp c,00a14h          	;. . .
	ram:5248 cd e7 23       call 023e7h          	;. . #
	ram:524b c2 14 0a       jp nz,00a14h         	;. . .
	ram:524e cd 9c 77       call sub_779ch       	;. . w
	ram:5251 c9             ret                  	;.
	ram:5252 fe 04          cp 004h              	;. .
	ram:5254 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5257 df             rst 18h              	;.
	ram:5258 01 04 00       ld bc,00004h         	;. . .
	ram:525b cd 1a 45       call sub_451ah       	;. . E
	ram:525e cd 7f 37       call 0377fh          	;. . 7
	ram:5261 18 c4          jr l5227h            	;. .
	ram:5263 fe 03          cp 003h              	;. .
	ram:5265 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5268 df             rst 18h              	;.
	ram:5269 01 03 00       ld bc,00003h         	;. . .
	ram:526c cd 1a 45       call sub_451ah       	;. . E
	ram:526f cd 85 37       call 03785h          	;. . 7
	ram:5272 18 b3          jr l5227h            	;. .
	ram:5274 fe 01          cp 001h              	;. .
	ram:5276 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5279 cd 47 1f       call 01f47h          	;. G .
	ram:527c c2 28 0a       jp nz,00a28h         	;. ( .
	ram:527f cd 8b 37       call 0378bh          	;. . 7
	ram:5282 18 a3          jr l5227h            	;. .
	ram:5284 fe 03          cp 003h              	;. .
	ram:5286 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5289 cd 21 20       call 02021h          	;. !  
	ram:528c cd f4 2d       call 02df4h          	;. . -
	ram:528f cd 2c 52       call sub_522ch       	;. , R
	ram:5292 f5             push af              	;.
	ram:5293 cd f4 2d       call 02df4h          	;. . -
	ram:5296 cd 2c 52       call sub_522ch       	;. , R
	ram:5299 e1             pop hl               	;.
	ram:529a 6f             ld l,a               	;o
	ram:529b e5             push hl              	;.
	ram:529c cd 60 20       call 02060h          	;. `  
	ram:529f e1             pop hl               	;.
	ram:52a0 cd fd 7c       call sub_7cfdh       	;. . |
	ram:52a3 c3 27 52       jp l5227h            	;. ' R
sub_52a6h:
	ram:52a6 cd 6b 74       call sub_746bh       	;. k t
	ram:52a9 fe 10          cp 010h              	;. .
	ram:52ab c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:52ae cd c2 77       call sub_77c2h       	;. . w
	ram:52b1 cd f8 7e       call sub_7ef8h       	;. . ~
	ram:52b4 21 05 00       ld hl,00005h         	;! . .
	ram:52b7 cd d4 29       call 029d4h          	;. . )
	ram:52ba ed 53 eb 85    ld (085ebh),de       	;. S . .
	ram:52be 13             inc de               	;.
	ram:52bf 13             inc de               	;.
	ram:52c0 21 05 00       ld hl,00005h         	;! . .
	ram:52c3 cd d5 1f       call 01fd5h          	;. . .
	ram:52c6 21 76 53       ld hl,l5376h         	;! v S
	ram:52c9 cd b5 0a       call 00ab5h          	;. . .
	ram:52cc 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:52cf e5             push hl              	;.
l52d0h:
	ram:52d0 cd ea 73       call sub_73eah       	;. . s
	ram:52d3 cd 7c 53       call sub_537ch       	;. | S
	ram:52d6 af             xor a                	;.
	ram:52d7 32 8c 80       ld (0808ch),a        	;2 . .
	ram:52da cd 22 26       call 02622h          	;. " &
	ram:52dd cd db 23       call 023dbh          	;. . #
	ram:52e0 c2 14 0a       jp nz,00a14h         	;. . .
	ram:52e3 e1             pop hl               	;.
	ram:52e4 e5             push hl              	;.
	ram:52e5 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:52e8 2a 83 80       ld hl,(08083h)       	;* . .
	ram:52eb 11 00 fc       ld de,0fc00h         	;. . .
	ram:52ee ed 52          sbc hl,de            	;. R
	ram:52f0 c2 14 0a       jp nz,00a14h         	;. . .
	ram:52f3 3a 85 80       ld a,(08085h)        	;: . .
	ram:52f6 cd bf 21       call 021bfh          	;. . !
	ram:52f9 fe 06          cp 006h              	;. .
	ram:52fb d2 14 0a       jp nc,00a14h         	;. . .
	ram:52fe f5             push af              	;.
	ram:52ff 87             add a,a              	;.
	ram:5300 87             add a,a              	;.
	ram:5301 87             add a,a              	;.
	ram:5302 16 00          ld d,000h            	;. .
	ram:5304 5f             ld e,a               	;_
	ram:5305 21 4c 82       ld hl,0824ch         	;! L .
	ram:5308 19             add hl,de            	;.
	ram:5309 7e             ld a,(hl)            	;~
	ram:530a b7             or a                 	;.
	ram:530b c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:530e cd ea 73       call sub_73eah       	;. . s
	ram:5311 cd 7c 53       call sub_537ch       	;. | S
	ram:5314 fe 0c          cp 00ch              	;. .
	ram:5316 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:5319 d7             rst 10h              	;.
	ram:531a eb             ex de,hl             	;.
	ram:531b f1             pop af               	;.
	ram:531c 32 b9 80       ld (080b9h),a        	;2 . .
	ram:531f cd 2a 7f       call sub_7f2ah       	;. * .
	ram:5322 e1             pop hl               	;.
	ram:5323 e5             push hl              	;.
	ram:5324 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:5327 cd 6e 74       call sub_746eh       	;. n t
	ram:532a fe 32          cp 032h              	;. 2
	ram:532c ca 1c 0a       jp z,00a1ch          	;. . .
	ram:532f cd cd 74       call sub_74cdh       	;. . t
	ram:5332 ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:5336 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5339 26 00          ld h,000h            	;& .
	ram:533b cd 29 39       call 03929h          	;. ) 9
	ram:533e eb             ex de,hl             	;.
	ram:533f cd 11 21       call 02111h          	;. . !
	ram:5342 cd fa 74       call sub_74fah       	;. . t
	ram:5345 28 0b          jr z,l5352h          	;( .
	ram:5347 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:534b fe 2f          cp 02fh              	;. /
	ram:534d 28 81          jr z,l52d0h          	;( .
	ram:534f cd 26 44       call sub_4426h       	;. & D
l5352h:
	ram:5352 cd 70 7f       call sub_7f70h       	;. p .
	ram:5355 b7             or a                 	;.
	ram:5356 ca 61 0a       jp z,00a61h          	;. a .
	ram:5359 6f             ld l,a               	;o
	ram:535a 26 00          ld h,000h            	;& .
	ram:535c ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:5360 cd 2f 39       call 0392fh          	;. / 9
	ram:5363 d1             pop de               	;.
	ram:5364 1b             dec de               	;.
	ram:5365 cd 3f 38       call 0383fh          	;. ? 8
	ram:5368 cd db 0a       call 00adbh          	;. . .
	ram:536b 21 00 00       ld hl,00000h         	;! . .
	ram:536e e5             push hl              	;.
	ram:536f ed 4b 61 8a    ld bc,(08a61h)       	;. K a .
	ram:5373 c3 79 48       jp l4879h            	;. y H
l5376h:
	ram:5376 cd b2 7f       call sub_7fb2h       	;. . .
	ram:5379 c3 8a 0a       jp 00a8ah            	;. . .
sub_537ch:
	ram:537c 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:537f 23             inc hl               	;#
	ram:5380 22 61 8a       ld (08a61h),hl       	;" a .
sub_5383h:
	ram:5383 cd 54 5b       call sub_5b54h       	;. T [
	ram:5386 cd 9c 26       call 0269ch          	;. . &
	ram:5389 c3 47 1f       jp 01f47h            	;. G .
	ram:538c fd cb 09 6e    bit 5,(iy+009h)      	;. . . n
	ram:5390 c0             ret nz               	;.
	ram:5391 21 80 54       ld hl,l5480h         	;! . T
	ram:5394 cd b5 0a       call 00ab5h          	;. . .
	ram:5397 3a de 80       ld a,(080deh)        	;: . .
	ram:539a fe 04          cp 004h              	;. .
	ram:539c 30 76          jr nc,l5414h         	;0 v
	ram:539e 21 0e 00       ld hl,0000eh         	;! . .
	ram:53a1 cd 86 54       call sub_5486h       	;. . T
	ram:53a4 c5             push bc              	;.
	ram:53a5 21 0f 00       ld hl,0000fh         	;! . .
	ram:53a8 cd 86 54       call sub_5486h       	;. . T
	ram:53ab e1             pop hl               	;.
	ram:53ac 09             add hl,bc            	;.
	ram:53ad 01 08 00       ld bc,00008h         	;. . .
	ram:53b0 3a de 80       ld a,(080deh)        	;: . .
	ram:53b3 b7             or a                 	;.
	ram:53b4 28 05          jr z,l53bbh          	;( .
	ram:53b6 fe 03          cp 003h              	;. .
	ram:53b8 28 01          jr z,l53bbh          	;( .
	ram:53ba 03             inc bc               	;.
l53bbh:
	ram:53bb 09             add hl,bc            	;.
	ram:53bc e5             push hl              	;.
	ram:53bd cd 91 37       call 03791h          	;. . 7
	ram:53c0 e1             pop hl               	;.
	ram:53c1 cd 2f 2a       call 02a2fh          	;. / *
	ram:53c4 13             inc de               	;.
	ram:53c5 13             inc de               	;.
	ram:53c6 d5             push de              	;.
	ram:53c7 21 0e 00       ld hl,0000eh         	;! . .
	ram:53ca cd 86 54       call sub_5486h       	;. . T
	ram:53cd d1             pop de               	;.
	ram:53ce cd a5 54       call sub_54a5h       	;. . T
	ram:53d1 d5             push de              	;.
	ram:53d2 21 0f 00       ld hl,0000fh         	;! . .
	ram:53d5 cd 86 54       call sub_5486h       	;. . T
	ram:53d8 d1             pop de               	;.
	ram:53d9 3a de 80       ld a,(080deh)        	;: . .
	ram:53dc fe 03          cp 003h              	;. .
	ram:53de 20 0c          jr nz,l53ech         	;.
	ram:53e0 cd 98 54       call sub_5498h       	;. . T
	ram:53e3 3e f0          ld a,0f0h            	;> .
	ram:53e5 12             ld (de),a            	;.
	ram:53e6 13             inc de               	;.
	ram:53e7 cd a5 54       call sub_54a5h       	;. . T
	ram:53ea 18 24          jr l5410h            	;. $
l53ech:
	ram:53ec fe 01          cp 001h              	;. .
	ram:53ee 3e 60          ld a,060h            	;> `
	ram:53f0 20 02          jr nz,l53f4h         	;.
	ram:53f2 3e 70          ld a,070h            	;> p
l53f4h:
	ram:53f4 12             ld (de),a            	;.
	ram:53f5 13             inc de               	;.
	ram:53f6 cd a5 54       call sub_54a5h       	;. . T
	ram:53f9 3a de 80       ld a,(080deh)        	;: . .
	ram:53fc b7             or a                 	;.
	ram:53fd 20 05          jr nz,l5404h         	;.
	ram:53ff cd 98 54       call sub_5498h       	;. . T
	ram:5402 18 0c          jr l5410h            	;. .
l5404h:
	ram:5404 3d             dec a                	;=
	ram:5405 3e a6          ld a,0a6h            	;> .
	ram:5407 20 02          jr nz,l540bh         	;.
	ram:5409 3e f0          ld a,0f0h            	;> .
l540bh:
	ram:540b 12             ld (de),a            	;.
	ram:540c 13             inc de               	;.
	ram:540d cd 98 54       call sub_5498h       	;. . T
l5410h:
	ram:5410 cd db 0a       call 00adbh          	;. . .
	ram:5413 c9             ret                  	;.
l5414h:
	ram:5414 cd 12 26       call 02612h          	;. . &
	ram:5417 d7             rst 10h              	;.
	ram:5418 da 38 0a       jp c,00a38h          	;. 8 .
	ram:541b ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:541f 1a             ld a,(de)            	;.
	ram:5420 13             inc de               	;.
	ram:5421 13             inc de               	;.
	ram:5422 21 00 00       ld hl,00000h         	;! . .
l5425h:
	ram:5425 eb             ex de,hl             	;.
	ram:5426 f5             push af              	;.
	ram:5427 d5             push de              	;.
	ram:5428 e7             rst 20h              	;.
	ram:5429 e5             push hl              	;.
	ram:542a 3e 16          ld a,016h            	;> .
	ram:542c cd 97 37       call 03797h          	;. . 7
	ram:542f d1             pop de               	;.
	ram:5430 e1             pop hl               	;.
	ram:5431 09             add hl,bc            	;.
	ram:5432 01 0a 00       ld bc,0000ah         	;. . .
	ram:5435 09             add hl,bc            	;.
	ram:5436 f1             pop af               	;.
	ram:5437 3d             dec a                	;=
	ram:5438 20 eb          jr nz,l5425h         	;.
	ram:543a 01 f4 ff       ld bc,0fff4h         	;. . .
	ram:543d 09             add hl,bc            	;.
	ram:543e e5             push hl              	;.
	ram:543f cd 91 37       call 03791h          	;. . 7
	ram:5442 e1             pop hl               	;.
	ram:5443 cd 2f 2a       call 02a2fh          	;. / *
	ram:5446 13             inc de               	;.
	ram:5447 13             inc de               	;.
	ram:5448 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:544b 7e             ld a,(hl)            	;~
	ram:544c 23             inc hl               	;#
	ram:544d 23             inc hl               	;#
	ram:544e f5             push af              	;.
l544fh:
	ram:544f d5             push de              	;.
	ram:5450 e7             rst 20h              	;.
	ram:5451 e5             push hl              	;.
	ram:5452 3e 16          ld a,016h            	;> .
	ram:5454 cd 97 37       call 03797h          	;. . 7
	ram:5457 e1             pop hl               	;.
	ram:5458 d1             pop de               	;.
	ram:5459 e5             push hl              	;.
	ram:545a cd a5 54       call sub_54a5h       	;. . T
	ram:545d e1             pop hl               	;.
	ram:545e c1             pop bc               	;.
	ram:545f 05             dec b                	;.
	ram:5460 28 ae          jr z,l5410h          	;( .
	ram:5462 cd 98 54       call sub_5498h       	;. . T
	ram:5465 78             ld a,b               	;x
	ram:5466 3d             dec a                	;=
	ram:5467 28 10          jr z,l5479h          	;( .
	ram:5469 3e f0          ld a,0f0h            	;> .
	ram:546b 12             ld (de),a            	;.
	ram:546c 13             inc de               	;.
	ram:546d 3e 44          ld a,044h            	;> D
	ram:546f 12             ld (de),a            	;.
	ram:5470 13             inc de               	;.
	ram:5471 78             ld a,b               	;x
	ram:5472 c6 30          add a,030h           	;. 0
	ram:5474 12             ld (de),a            	;.
	ram:5475 13             inc de               	;.
	ram:5476 af             xor a                	;.
	ram:5477 12             ld (de),a            	;.
	ram:5478 13             inc de               	;.
l5479h:
	ram:5479 3e 60          ld a,060h            	;> `
	ram:547b 12             ld (de),a            	;.
	ram:547c 13             inc de               	;.
	ram:547d c5             push bc              	;.
	ram:547e 18 cf          jr l544fh            	;. .
l5480h:
	ram:5480 cd b3 39       call 039b3h          	;. . 9
	ram:5483 c3 8a 0a       jp 00a8ah            	;. . .
sub_5486h:
	ram:5486 e5             push hl              	;.
	ram:5487 cd 0d 26       call 0260dh          	;. . &
	ram:548a d7             rst 10h              	;.
	ram:548b da 38 0a       jp c,00a38h          	;. 8 .
	ram:548e e1             pop hl               	;.
	ram:548f cd 2f 39       call 0392fh          	;. / 9
	ram:5492 3e 16          ld a,016h            	;> .
	ram:5494 cd 97 37       call 03797h          	;. . 7
	ram:5497 c9             ret                  	;.
sub_5498h:
	ram:5498 3e 32          ld a,032h            	;> 2
	ram:549a 12             ld (de),a            	;.
	ram:549b 13             inc de               	;.
	ram:549c 3e 01          ld a,001h            	;> .
	ram:549e 12             ld (de),a            	;.
	ram:549f 13             inc de               	;.
	ram:54a0 3e 78          ld a,078h            	;> x
	ram:54a2 12             ld (de),a            	;.
	ram:54a3 13             inc de               	;.
	ram:54a4 c9             ret                  	;.
sub_54a5h:
	ram:54a5 21 98 80       ld hl,08098h         	;! . .
	ram:54a8 7e             ld a,(hl)            	;~
	ram:54a9 fe 1a          cp 01ah              	;. .
	ram:54ab 3e 44          ld a,044h            	;> D
	ram:54ad 20 03          jr nz,l54b2h         	;.
	ram:54af 77             ld (hl),a            	;w
	ram:54b0 3e a1          ld a,0a1h            	;> .
l54b2h:
	ram:54b2 12             ld (de),a            	;.
	ram:54b3 13             inc de               	;.
	ram:54b4 03             inc bc               	;.
	ram:54b5 ed b0          ldir                 	;. .
	ram:54b7 c9             ret                  	;.
sub_54b8h:
	ram:54b8 e5             push hl              	;.
	ram:54b9 d7             rst 10h              	;.
	ram:54ba e1             pop hl               	;.
	ram:54bb d8             ret c                	;.
	ram:54bc 46             ld b,(hl)            	;F
	ram:54bd 04             inc b                	;.
	ram:54be 04             inc b                	;.
l54bfh:
	ram:54bf 1a             ld a,(de)            	;.
	ram:54c0 e6 df          and 0dfh             	;. .
	ram:54c2 be             cp (hl)              	;.
	ram:54c3 c0             ret nz               	;.
	ram:54c4 23             inc hl               	;#
	ram:54c5 13             inc de               	;.
	ram:54c6 10 f7          djnz l54bfh          	;. .
	ram:54c8 c9             ret                  	;.
l54c9h:
	ram:54c9 06 00          ld b,000h            	;. .
	ram:54cb 43             ld b,e               	;C
	ram:54cc 42             ld b,d               	;B
	ram:54cd 4c             ld c,h               	;L
	ram:54ce 47             ld b,a               	;G
	ram:54cf 45             ld b,l               	;E
	ram:54d0 54             ld d,h               	;T
l54d1h:
	ram:54d1 07             rlca                 	;.
	ram:54d2 00             nop                  	;.
	ram:54d3 43             ld b,e               	;C
	ram:54d4 42             ld b,d               	;B
	ram:54d5 4c             ld c,h               	;L
	ram:54d6 53             ld d,e               	;S
	ram:54d7 45             ld b,l               	;E
	ram:54d8 4e             ld c,(hl)            	;N
	ram:54d9 44             ld b,h               	;D
l54dah:
	ram:54da cd af 74       call sub_74afh       	;. . t
	ram:54dd f5             push af              	;.
	ram:54de d7             rst 10h              	;.
	ram:54df 38 14          jr c,l54f5h          	;8 .
	ram:54e1 e6 1e          and 01eh             	;. .
	ram:54e3 28 0d          jr z,l54f2h          	;( .
	ram:54e5 fe 08          cp 008h              	;. .
	ram:54e7 38 4b          jr c,l5534h          	;8 K
	ram:54e9 28 04          jr z,l54efh          	;( .
	ram:54eb fe 12          cp 012h              	;. .
	ram:54ed 38 03          jr c,l54f2h          	;8 .
l54efh:
	ram:54ef c3 28 0a       jp 00a28h            	;. ( .
l54f2h:
	ram:54f2 f1             pop af               	;.
	ram:54f3 18 0b          jr l5500h            	;. .
l54f5h:
	ram:54f5 3e 1e          ld a,01eh            	;> .
	ram:54f7 32 82 80       ld (08082h),a        	;2 . .
	ram:54fa f1             pop af               	;.
	ram:54fb fe 10          cp 010h              	;. .
	ram:54fd ca 38 0a       jp z,00a38h          	;. 8 .
l5500h:
	ram:5500 f1             pop af               	;.
	ram:5501 20 05          jr nz,l5508h         	;.
	ram:5503 cd 1e 44       call sub_441eh       	;. . D
	ram:5506 18 06          jr l550eh            	;. .
l5508h:
	ram:5508 cd fa 74       call sub_74fah       	;. . t
	ram:550b c2 1c 0a       jp nz,00a1ch         	;. . .
l550eh:
	ram:550e 21 1d 55       ld hl,l551dh         	;! . U
	ram:5511 cd b5 0a       call 00ab5h          	;. . .
	ram:5514 cd 9d 37       call 0379dh          	;. . 7
	ram:5517 cd db 0a       call 00adbh          	;. . .
	ram:551a c3 27 52       jp l5227h            	;. ' R
l551dh:
	ram:551d 21 2b 55       ld hl,l552bh         	;! + U
	ram:5520 cd b5 0a       call 00ab5h          	;. . .
	ram:5523 3e 01          ld a,001h            	;> .
	ram:5525 cd a3 37       call 037a3h          	;. . 7
	ram:5528 cd db 0a       call 00adbh          	;. . .
l552bh:
	ram:552b f3             di                   	;.
	ram:552c fd cb 12 96    res 2,(iy+012h)      	;. . . .
	ram:5530 fb             ei                   	;.
	ram:5531 c3 27 52       jp l5227h            	;. ' R
l5534h:
	ram:5534 47             ld b,a               	;G
	ram:5535 f1             pop af               	;.
	ram:5536 fe 10          cp 010h              	;. .
	ram:5538 20 c6          jr nz,l5500h         	;.
	ram:553a c5             push bc              	;.
	ram:553b cd 4a 2e       call 02e4ah          	;. J .
	ram:553e cd 6e 74       call sub_746eh       	;. n t
	ram:5541 f1             pop af               	;.
	ram:5542 f5             push af              	;.
	ram:5543 cd f1 55       call sub_55f1h       	;. . U
	ram:5546 f1             pop af               	;.
	ram:5547 d5             push de              	;.
	ram:5548 fe 04          cp 004h              	;. .
	ram:554a 28 4a          jr z,l5596h          	;( J
	ram:554c fe 06          cp 006h              	;. .
	ram:554e 28 05          jr z,l5555h          	;( .
	ram:5550 11 01 00       ld de,00001h         	;. . .
	ram:5553 18 17          jr l556ch            	;. .
l5555h:
	ram:5555 cd fa 74       call sub_74fah       	;. . t
l5558h:
	ram:5558 ca 2c 0a       jp z,00a2ch          	;. , .
	ram:555b fe 2f          cp 02fh              	;. /
	ram:555d c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:5560 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:5564 cd fa 74       call sub_74fah       	;. . t
	ram:5567 28 ef          jr z,l5558h          	;( .
	ram:5569 cd f1 55       call sub_55f1h       	;. . U
l556ch:
	ram:556c c1             pop bc               	;.
	ram:556d 51             ld d,c               	;Q
	ram:556e f1             pop af               	;.
	ram:556f cd cf 55       call sub_55cfh       	;. . U
	ram:5572 7c             ld a,h               	;|
	ram:5573 ba             cp d                 	;.
	ram:5574 da 34 0a       jp c,00a34h          	;. 4 .
	ram:5577 7d             ld a,l               	;}
	ram:5578 bb             cp e                 	;.
	ram:5579 da 34 0a       jp c,00a34h          	;. 4 .
	ram:557c cd aa 55       call sub_55aah       	;. . U
	ram:557f 3a 82 80       ld a,(08082h)        	;: . .
	ram:5582 e6 1e          and 01eh             	;. .
	ram:5584 fe 02          cp 002h              	;. .
	ram:5586 20 05          jr nz,l558dh         	;.
	ram:5588 48             ld c,b               	;H
	ram:5589 06 00          ld b,000h            	;. .
	ram:558b 18 17          jr l55a4h            	;. .
l558dh:
	ram:558d 58             ld e,b               	;X
	ram:558e af             xor a                	;.
	ram:558f 47             ld b,a               	;G
	ram:5590 57             ld d,a               	;W
	ram:5591 cd 42 6e       call sub_6e42h       	;. B n
	ram:5594 18 11          jr l55a7h            	;. .
l5596h:
	ram:5596 d1             pop de               	;.
	ram:5597 f1             pop af               	;.
	ram:5598 cd cf 55       call sub_55cfh       	;. . U
	ram:559b b7             or a                 	;.
	ram:559c ed 52          sbc hl,de            	;. R
	ram:559e da 34 0a       jp c,00a34h          	;. 4 .
	ram:55a1 cd aa 55       call sub_55aah       	;. . U
l55a4h:
	ram:55a4 cd 4b 6e       call sub_6e4bh       	;. K n
l55a7h:
	ram:55a7 c3 27 52       jp l5227h            	;. ' R
sub_55aah:
	ram:55aa d5             push de              	;.
	ram:55ab ed 53 1e 83    ld (0831eh),de       	;. S . .
	ram:55af 3e 16          ld a,016h            	;> .
	ram:55b1 32 13 83       ld (08313h),a        	;2 . .
	ram:55b4 3e ff          ld a,0ffh            	;> .
	ram:55b6 32 97 80       ld (08097h),a        	;2 . .
	ram:55b9 cd b5 37       call 037b5h          	;. . 7
	ram:55bc cd ea 2d       call 02deah          	;. . -
	ram:55bf 3a 97 80       ld a,(08097h)        	;: . .
	ram:55c2 b7             or a                 	;.
	ram:55c3 20 06          jr nz,l55cbh         	;.
	ram:55c5 df             rst 18h              	;.
	ram:55c6 cd 60 20       call 02060h          	;. `  
	ram:55c9 c1             pop bc               	;.
	ram:55ca c9             ret                  	;.
l55cbh:
	ram:55cb f1             pop af               	;.
	ram:55cc f1             pop af               	;.
	ram:55cd 18 d8          jr l55a7h            	;. .
sub_55cfh:
	ram:55cf d5             push de              	;.
	ram:55d0 20 0e          jr nz,l55e0h         	;.
	ram:55d2 cd fa 74       call sub_74fah       	;. . t
	ram:55d5 28 0c          jr z,l55e3h          	;( .
	ram:55d7 fe 11          cp 011h              	;. .
	ram:55d9 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:55dc ed 43 61 8a    ld (08a61h),bc       	;. C a .
l55e0h:
	ram:55e0 cd 1e 44       call sub_441eh       	;. . D
l55e3h:
	ram:55e3 cd 24 2f       call 02f24h          	;. $ /
	ram:55e6 d7             rst 10h              	;.
	ram:55e7 ed 53 3f 86    ld (0863fh),de       	;. S ? .
	ram:55eb eb             ex de,hl             	;.
	ram:55ec cd 33 00       call 00033h          	;. 3 .
	ram:55ef d1             pop de               	;.
	ram:55f0 c9             ret                  	;.
sub_55f1h:
	ram:55f1 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:55f4 e5             push hl              	;.
	ram:55f5 f5             push af              	;.
	ram:55f6 cd e4 73       call sub_73e4h       	;. . s
	ram:55f9 cd 83 53       call sub_5383h       	;. . S
	ram:55fc c2 28 0a       jp nz,00a28h         	;. ( .
	ram:55ff f1             pop af               	;.
l5600h:
	ram:5600 fe 04          cp 004h              	;. .
	ram:5602 20 0f          jr nz,l5613h         	;.
	ram:5604 af             xor a                	;.
	ram:5605 32 8c 80       ld (0808ch),a        	;2 . .
	ram:5608 cd db 23       call 023dbh          	;. . #
	ram:560b c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:560e cd 9c 77       call sub_779ch       	;. . w
	ram:5611 18 04          jr l5617h            	;. .
l5613h:
	ram:5613 af             xor a                	;.
	ram:5614 cd 8b 77       call sub_778bh       	;. . w
l5617h:
	ram:5617 e1             pop hl               	;.
	ram:5618 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:561b c9             ret                  	;.
l561ch:
	ram:561c 00             nop                  	;.
	ram:561d 17             rla                  	;.
	ram:561e fc 60 22       call m,02260h        	;. ` "
	ram:5621 13             inc de               	;.
	ram:5622 67             ld h,a               	;g
	ram:5623 00             nop                  	;.
	ram:5624 00             nop                  	;.
	ram:5625 00             nop                  	;.
	ram:5626 00             nop                  	;.
	ram:5627 e9             jp (hl)              	;.
	ram:5628 fb             ei                   	;.
	ram:5629 13             inc de               	;.
	ram:562a 80             add a,b              	;.
	ram:562b 65             ld h,l               	;e
	ram:562c 80             add a,b              	;.
	ram:562d 00             nop                  	;.
	ram:562e 00             nop                  	;.
	ram:562f 00             nop                  	;.
	ram:5630 00             nop                  	;.
	ram:5631 09             add hl,bc            	;.
	ram:5632 fc 89 87       call m,08789h        	;. . .
	ram:5635 55             ld d,l               	;U
	ram:5636 17             rla                  	;.
	ram:5637 87             add a,a              	;.
	ram:5638 36 82          ld (hl),082h         	;6 .
	ram:563a 00             nop                  	;.
	ram:next byte illegal after ed                defb 0edh            	;;563b	ed		.
	ram:563c fb             ei                   	;.
	ram:563d 16 02          ld d,002h            	;. .
	ram:563f 17             rla                  	;.
	ram:5640 73             ld (hl),e            	;s
	ram:5641 30 00          jr nc,l5643h         	;0 .
l5643h:
	ram:5643 00             nop                  	;.
	ram:5644 00             nop                  	;.
	ram:5645 00             nop                  	;.
	ram:5646 fc 83 14       call m,01483h        	;. . .
	ram:5649 51             ld d,c               	;Q
	ram:564a 00             nop                  	;.
	ram:564b 00             nop                  	;.
	ram:564c 00             nop                  	;.
	ram:564d 00             nop                  	;.
	ram:564e 00             nop                  	;.
	ram:564f f5             push af              	;.
	ram:5650 fb             ei                   	;.
	ram:5651 66             ld h,(hl)            	;f
	ram:5652 72             ld (hl),d            	;r
	ram:5653 59             ld e,c               	;Y
	ram:5654 00             nop                  	;.
	ram:5655 00             nop                  	;.
	ram:5656 00             nop                  	;.
	ram:5657 00             nop                  	;.
	ram:5658 00             nop                  	;.
	ram:5659 00             nop                  	;.
	ram:565a fc 98 06       call m,00698h        	;. . .
	ram:565d 65             ld h,l               	;e
	ram:565e 00             nop                  	;.
	ram:565f 00             nop                  	;.
	ram:5660 00             nop                  	;.
	ram:5661 00             nop                  	;.
	ram:5662 00             nop                  	;.
	ram:5663 e1             pop hl               	;.
	ram:5664 fb             ei                   	;.
	ram:5665 91             sub c                	;.
	ram:5666 09             add hl,bc            	;.
	ram:5667 38 97          jr c,l5600h          	;8 .
	ram:5669 00             nop                  	;.
	ram:566a 00             nop                  	;.
	ram:566b 00             nop                  	;.
	ram:566c 00             nop                  	;.
	ram:566d e5             push hl              	;.
	ram:566e fb             ei                   	;.
	ram:566f 16 72          ld d,072h            	;. r
	ram:5671 62             ld h,d               	;b
	ram:5672 31 00 00       ld sp,00000h         	;1 . .
	ram:5675 00             nop                  	;.
	ram:5676 00             nop                  	;.
	ram:5677 e5             push hl              	;.
	ram:5678 fb             ei                   	;.
	ram:5679 16 74          ld d,074h            	;. t
	ram:567b 92             sub d                	;.
	ram:567c 86             add a,(hl)           	;.
	ram:567d 00             nop                  	;.
	ram:567e 00             nop                  	;.
	ram:567f 00             nop                  	;.
	ram:5680 00             nop                  	;.
	ram:5681 fa fb 12       jp m,012fbh          	;. . .
	ram:5684 56             ld d,(hl)            	;V
	ram:5685 63             ld h,e               	;c
	ram:5686 70             ld (hl),b            	;p
	ram:5687 61             ld h,c               	;a
	ram:5688 43             ld b,e               	;C
	ram:5689 59             ld e,c               	;Y
	ram:568a 00             nop                  	;.
	ram:568b f4 fb 88       call p,088fbh        	;. . .
	ram:568e 54             ld d,h               	;T
	ram:568f 18 78          jr 122               	;. x
	ram:5691 17             rla                  	;.
	ram:5692 62             ld h,d               	;b
	ram:5693 04             inc b                	;.
	ram:5694 00             nop                  	;.
	ram:5695 de fb          sbc a,0fbh           	;. .
	ram:5697 66             ld h,(hl)            	;f
	ram:5698 26 07          ld h,007h            	;& .
	ram:569a 55             ld d,l               	;U
	ram:569b 00             nop                  	;.
	ram:569c 00             nop                  	;.
	ram:569d 00             nop                  	;.
	ram:569e 00             nop                  	;.
	ram:569f 08             ex af,af'            	;.
	ram:56a0 fc 29 97       call m,09729h        	;. ) .
	ram:56a3 92             sub d                	;.
	ram:56a4 45             ld b,l               	;E
	ram:56a5 80             add a,b              	;.
	ram:56a6 00             nop                  	;.
	ram:56a7 00             nop                  	;.
	ram:56a8 00             nop                  	;.
	ram:56a9 e5             push hl              	;.
	ram:56aa fb             ei                   	;.
	ram:56ab 16 60          ld d,060h            	;. `
	ram:56ad 54             ld d,h               	;T
	ram:56ae 02             ld (bc),a            	;.
	ram:56af 00             nop                  	;.
	ram:56b0 00             nop                  	;.
	ram:56b1 00             nop                  	;.
	ram:56b2 00             nop                  	;.
	ram:56b3 00             nop                  	;.
	ram:56b4 fc 27 18       call m,01827h        	;. ' .
	ram:56b7 28 18          jr z,26              	;( .
	ram:56b9 28 45          jr z,71              	;( E
	ram:56bb 90             sub b                	;.
sub_56bch:
	ram:56bc 7c             ld a,h               	;|
	ram:56bd bd             cp l                 	;.
	ram:56be c8             ret z                	;.
	ram:56bf e6 f0          and 0f0h             	;. .
	ram:56c1 47             ld b,a               	;G
	ram:56c2 7d             ld a,l               	;}
	ram:56c3 e6 f0          and 0f0h             	;. .
	ram:56c5 b8             cp b                 	;.
	ram:56c6 c2 69 0a       jp nz,00a69h         	;. i .
	ram:56c9 e5             push hl              	;.
	ram:56ca fe 40          cp 040h              	;. @
	ram:56cc 7c             ld a,h               	;|
	ram:56cd 28 0e          jr z,l56ddh          	;( .
	ram:56cf cd 4d 57       call sub_574dh       	;. M W
	ram:56d2 cd 5b 0e       call 00e5bh          	;. [ .
	ram:56d5 e1             pop hl               	;.
	ram:56d6 7d             ld a,l               	;}
	ram:56d7 cd 4d 57       call sub_574dh       	;. M W
	ram:56da c3 23 10       jp 01023h            	;. # .
l56ddh:
	ram:56dd 11 a3 80       ld de,080a3h         	;. . .
	ram:56e0 21 06 58       ld hl,l5805h+1       	;! . X
	ram:56e3 cd 9d 20       call 0209dh          	;. .  
	ram:56e6 13             inc de               	;.
	ram:56e7 cd 9d 20       call 0209dh          	;. .  
	ram:56ea 13             inc de               	;.
	ram:56eb cd 9d 20       call 0209dh          	;. .  
	ram:56ee fe 43          cp 043h              	;. C
	ram:56f0 28 22          jr z,l5714h          	;( "
	ram:56f2 fe 40          cp 040h              	;. @
	ram:56f4 20 0e          jr nz,l5704h         	;.
	ram:56f6 cd 49 20       call 02049h          	;. I  
	ram:56f9 cd 71 0d       call 00d71h          	;. q .
	ram:56fc cd 07 20       call 02007h          	;. .  
	ram:56ff cd 23 10       call 01023h          	;. # .
	ram:5702 18 10          jr l5714h            	;. .
l5704h:
	ram:5704 fe 41          cp 041h              	;. A
	ram:5706 28 06          jr z,l570eh          	;( .
	ram:5708 cd 07 20       call 02007h          	;. .  
	ram:570b cd 23 10       call 01023h          	;. # .
l570eh:
	ram:570e cd 29 20       call 02029h          	;. )  
	ram:5711 cd 71 0d       call 00d71h          	;. q .
l5714h:
	ram:5714 e1             pop hl               	;.
	ram:5715 7d             ld a,l               	;}
	ram:5716 fe 43          cp 043h              	;. C
	ram:5718 c8             ret z                	;.
	ram:5719 fe 40          cp 040h              	;. @
	ram:571b 20 09          jr nz,l5726h         	;.
	ram:571d cd 07 20       call 02007h          	;. .  
	ram:5720 ef             rst 28h              	;.
	ram:5721 cd 49 20       call 02049h          	;. I  
	ram:5724 f7             rst 30h              	;.
	ram:5725 c9             ret                  	;.
l5726h:
	ram:5726 cd 29 20       call 02029h          	;. )  
	ram:5729 fe 41          cp 041h              	;. A
	ram:572b ca 78 0d       jp z,00d78h          	;. x .
	ram:572e f7             rst 30h              	;.
	ram:572f cd 07 20       call 02007h          	;. .  
	ram:5732 ef             rst 28h              	;.
	ram:5733 c9             ret                  	;.
sub_5734h:
	ram:5734 4f             ld c,a               	;O
	ram:5735 cd bf 21       call 021bfh          	;. . !
	ram:5738 87             add a,a              	;.
	ram:5739 5f             ld e,a               	;_
	ram:573a 16 00          ld d,000h            	;. .
	ram:573c 19             add hl,de            	;.
	ram:573d 5e             ld e,(hl)            	;^
	ram:573e 23             inc hl               	;#
	ram:573f 56             ld d,(hl)            	;V
	ram:5740 79             ld a,c               	;y
	ram:5741 e6 0f          and 00fh             	;. .
	ram:5743 4f             ld c,a               	;O
	ram:5744 af             xor a                	;.
l5745h:
	ram:5745 81             add a,c              	;.
	ram:5746 10 fd          djnz l5745h          	;. .
	ram:5748 6f             ld l,a               	;o
	ram:5749 26 00          ld h,000h            	;& .
	ram:574b 19             add hl,de            	;.
	ram:574c c9             ret                  	;.
sub_574dh:
	ram:574d f5             push af              	;.
	ram:574e cd a8 21       call 021a8h          	;. . !
	ram:5751 f1             pop af               	;.
	ram:5752 21 80 57       ld hl,l5780h         	;! . W
	ram:5755 06 02          ld b,002h            	;. .
	ram:5757 cd 34 57       call sub_5734h       	;. 4 W
	ram:575a 7e             ld a,(hl)            	;~
	ram:575b 32 8e 80       ld (0808eh),a        	;2 . .
	ram:575e fe 50          cp 050h              	;. P
	ram:5760 3e fc          ld a,0fch            	;> .
	ram:5762 38 01          jr c,l5765h          	;8 .
	ram:5764 3d             dec a                	;=
l5765h:
	ram:5765 32 8f 80       ld (0808fh),a        	;2 . .
	ram:5768 23             inc hl               	;#
	ram:5769 7e             ld a,(hl)            	;~
	ram:576a cd bf 21       call 021bfh          	;. . !
	ram:576d f5             push af              	;.
	ram:576e 47             ld b,a               	;G
	ram:576f 7e             ld a,(hl)            	;~
	ram:5770 21 96 57       ld hl,l5796h         	;! . W
	ram:5773 cd 34 57       call sub_5734h       	;. 4 W
	ram:5776 f1             pop af               	;.
	ram:5777 11 90 80       ld de,08090h         	;. . .
l577ah:
	ram:577a ed a0          ldi                  	;. .
	ram:577c 3d             dec a                	;=
	ram:577d 20 fb          jr nz,l577ah         	;.
	ram:577f c9             ret                  	;.
l5780h:
	ram:5780 a6             and (hl)             	;.
	ram:5781 57             ld d,a               	;W
	ram:5782 c4 57 d6       call nz,0d657h       	;. W .
	ram:5785 57             ld d,a               	;W
	ram:5786 f4 57 00       call p,00057h        	;. W .
	ram:5789 00             nop                  	;.
	ram:578a 24             inc h                	;$
	ram:578b 58             ld e,b               	;X
	ram:578c 2e 58          ld l,058h            	;. X
	ram:578e 3c             inc a                	;<
	ram:578f 58             ld e,b               	;X
	ram:5790 46             ld b,(hl)            	;F
	ram:5791 58             ld e,b               	;X
	ram:5792 56             ld d,(hl)            	;V
	ram:5793 58             ld e,b               	;X
	ram:5794 66             ld h,(hl)            	;f
	ram:5795 58             ld e,b               	;X
l5796h:
	ram:5796 00             nop                  	;.
	ram:5797 00             nop                  	;.
	ram:5798 70             ld (hl),b            	;p
	ram:5799 58             ld e,b               	;X
	ram:579a 73             ld (hl),e            	;s
	ram:579b 58             ld e,b               	;X
	ram:579c 7f             ld a,a               	;.
	ram:579d 58             ld e,b               	;X
	ram:579e 97             sub a                	;.
	ram:579f 58             ld e,b               	;X
	ram:57a0 bb             cp e                 	;.
	ram:57a1 58             ld e,b               	;X
	ram:57a2 de 58          sbc a,058h           	;. X
	ram:57a4 02             ld (bc),a            	;.
	ram:57a5 59             ld e,c               	;Y
	ram:illegal sequence                defb 0fdh,010h,0feh  	;;57a6	fd 10 fe	. . .
l57a9h:
	ram:57a9 10 fe          djnz l57a9h          	;. .
	ram:57ab 20 ff          jr nz,1              	;.
	ram:57ad 21 ff 22       ld hl,022ffh         	;! . "
	ram:57b0 03             inc bc               	;.
l57b1h:
	ram:57b1 10 03          djnz l57b6h          	;. .
	ram:57b3 40             ld b,b               	;@
	ram:57b4 03             inc bc               	;.
	ram:57b5 23             inc hl               	;#
l57b6h:
	ram:57b6 0f             rrca                 	;.
	ram:57b7 72             ld (hl),d            	;r
	ram:57b8 fb             ei                   	;.
	ram:57b9 20 f6          jr nz,l57b1h         	;.
	djnz -13		;57bb	10 f1		. .
	ram:57bd 10 00          djnz l57bfh          	;. .
l57bfh:
	ram:57bf 31 00 30       ld sp,03000h         	;1 . 0
	ram:57c2 00             nop                  	;.
l57c3h:
	ram:57c3 10 fe          djnz l57c3h          	;. .
	ram:57c5 41             ld b,c               	;A
	ram:57c6 06 73          ld b,073h            	;. s
	ram:57c8 06 10          ld b,010h            	;. .
	ram:57ca fc 32 fc       call m,0fc32h        	;. 2 .
	ram:57cd 10 ff          djnz 1               	;. .
	ram:57cf 42             ld b,d               	;B
	ram:57d0 03             inc bc               	;.
	ram:57d1 60             ld h,b               	;`
	ram:57d2 04             inc b                	;.
	ram:57d3 10 00          djnz l57d5h          	;. .
l57d5h:
	ram:57d5 10 00          djnz l57d7h          	;. .
l57d7h:
	ram:57d7 51             ld d,c               	;Q
	ram:57d8 ff             rst 38h              	;.
	ram:57d9 52             ld d,d               	;R
	ram:57da ff             rst 38h              	;.
	ram:57db 53             ld d,e               	;S
	ram:57dc fe 61          cp 061h              	;. a
	ram:illegal sequence                defb 0fdh,010h,0feh  	;;57de	fd 10 fe	. . .
	ram:57e1 43             ld b,e               	;C
	ram:57e2 01 62 03       ld bc,00362h         	;. b .
	ram:57e5 10 ff          djnz 1               	;. .
	ram:57e7 55             ld d,l               	;U
	ram:ld iyh,e                defb 0fdh,063h       	;;57e8	fd 63		. c
	ram:57ea fe 74          cp 074h              	;. t
	ram:illegal sequence                defb 0fdh,010h,000h  	;;57ec	fd 10 00	. . .
	ram:57ef 37             scf                  	;7
	ram:57f0 fe 50          cp 050h              	;. P
	ram:57f2 00             nop                  	;.
	ram:57f3 10 01          djnz l57f6h          	;. .
	ram:57f5 12             ld (de),a            	;.
l57f6h:
	ram:57f6 03             inc bc               	;.
	ram:57f7 11 04 24       ld de,02404h         	;. . $
l57fah:
	ram:57fa 07             rlca                 	;.
	ram:57fb 64             ld h,h               	;d
	ram:57fc 05             dec b                	;.
	ram:57fd 25             dec h                	;%
	ram:illegal sequence                defb 0fdh,010h,0fah  	;;57fe	fd 10 fa	. . .
	ram:5801 10 f7          djnz l57fah          	;. .
	ram:5803 10 00          djnz l5805h          	;. .
l5805h:
	ram:5805 10 00          djnz l5807h          	;. .
l5807h:
	ram:5807 00             nop                  	;.
	ram:5808 fc 18 00       call m,00018h        	;. . .
	ram:580b 00             nop                  	;.
	ram:580c 00             nop                  	;.
	ram:580d 00             nop                  	;.
	ram:580e 00             nop                  	;.
	ram:580f 00             nop                  	;.
	ram:5810 00             nop                  	;.
	ram:5811 02             ld (bc),a            	;.
	ram:5812 fc 27 31       call m,03127h        	;. ' 1
	ram:5815 50             ld d,b               	;P
	ram:5816 00             nop                  	;.
	ram:5817 00             nop                  	;.
	ram:5818 00             nop                  	;.
	ram:5819 00             nop                  	;.
	ram:581a 00             nop                  	;.
	ram:581b 01 fc 32       ld bc,032fch         	;. . 2
	ram:581e 00             nop                  	;.
	ram:581f 00             nop                  	;.
	ram:5820 00             nop                  	;.
	ram:5821 00             nop                  	;.
	ram:5822 00             nop                  	;.
	ram:5823 00             nop                  	;.
	ram:5824 ff             rst 38h              	;.
	ram:5825 21 ff 34       ld hl,034ffh         	;! . 4
	ram:5828 ff             rst 38h              	;.
	ram:5829 70             ld (hl),b            	;p
	ram:582a ff             rst 38h              	;.
	ram:582b 71             ld (hl),c            	;q
l582ch:
	ram:582c 00             nop                  	;.
	ram:582d 10 fd          djnz l582ch          	;. .
	ram:582f 10 ff          djnz 1               	;. .
	ram:5831 45             ld b,l               	;E
	ram:5832 e5             push hl              	;.
	ram:5833 46             ld b,(hl)            	;F
	ram:5834 01 75 02       ld bc,00275h         	;. u .
	ram:5837 47             ld b,a               	;G
l5838h:
	ram:5838 03             inc bc               	;.
	ram:5839 10 00          djnz l583bh          	;. .
l583bh:
	ram:583b 10 fb          djnz l5838h          	;. .
	ram:583d 10 03          djnz l5842h          	;. .
	ram:583f 76             halt                 	;v
	ram:5840 00             nop                  	;.
	ram:5841 33             inc sp               	;3
l5842h:
	ram:5842 00             nop                  	;.
	ram:5843 77             ld (hl),a            	;w
l5844h:
	ram:5844 00             nop                  	;.
	ram:5845 10 00          djnz l5847h          	;. .
l5847h:
	ram:5847 10 fb          djnz l5844h          	;. .
l5849h:
	ram:5849 10 fe          djnz l5849h          	;. .
	ram:584b 78             ld a,b               	;x
	ram:illegal sequence                defb 0fdh,079h,0fbh  	;;584c	fd 79 fb	. y .
	ram:584f 33             inc sp               	;3
	ram:5850 fe 7a          cp 07ah              	;. z
	ram:illegal sequence                defb 0fdh,048h,000h  	;;5852	fd 48 00	. H .
	ram:5855 35             dec (hl)             	;5
	ram:5856 00             nop                  	;.
	ram:5857 36 03          ld (hl),003h         	;6 .
	ram:5859 65             ld h,l               	;e
	ram:585a 00             nop                  	;.
	ram:585b 7b             ld a,e               	;{
	ram:585c 06 11          ld b,011h            	;. .
	ram:585e ed 56          im 1                 	;. V
	ram:5860 f9             ld sp,hl             	;.
	ram:5861 10 02          djnz l5865h          	;. .
	ram:5863 35             dec (hl)             	;5
	ram:5864 00             nop                  	;.
l5865h:
	ram:5865 10 00          djnz l5867h          	;. .
l5867h:
	ram:5867 10 00          djnz l5869h          	;. .
l5869h:
	ram:5869 7b             ld a,e               	;{
	ram:586a 00             nop                  	;.
	ram:586b 36 01          ld (hl),001h         	;6 .
	ram:586d 7d             ld a,l               	;}
	ram:586e 02             ld (bc),a            	;.
	ram:586f 7c             ld a,h               	;|
	ram:5870 10 36          djnz l58a8h          	;. 6
	ram:5872 60             ld h,b               	;`
	ram:5873 25             dec h                	;%
	ram:5874 40             ld b,b               	;@
	ram:5875 30 48          jr nc,l58bfh         	;0 H
	ram:5877 91             sub c                	;.
	ram:5878 44             ld b,h               	;D
	ram:5879 18 52          jr 84                	;. R
	ram:587b 86             add a,(hl)           	;.
	ram:587c 40             ld b,b               	;@
	ram:587d 60             ld h,b               	;`
	ram:587e 48             ld c,b               	;H
	ram:587f 18 28          jr 42                	;. (
	ram:5881 80             add a,b              	;.
	ram:5882 50             ld d,b               	;P
	ram:5883 29             add hl,hl            	;)
	ram:5884 20 64          jr nz,l58eah         	;d
	ram:5886 51             ld d,c               	;Q
	ram:5887 60             ld h,b               	;`
	ram:5888 98             sbc a,b              	;.
	ram:5889 06 65          ld b,065h            	;. e
	ram:588b 44             ld b,h               	;D
	ram:588c 70             ld (hl),b            	;p
	ram:588d 40             ld b,b               	;@
	ram:588e 10 13          djnz 21              	;. .
	ram:5890 25             dec h                	;%
	ram:5891 41             ld b,c               	;A
	ram:5892 86             add a,(hl)           	;.
	ram:5893 80             add a,b              	;.
	ram:5894 45             ld b,l               	;E
	ram:5895 46             ld b,(hl)            	;F
	ram:5896 09             add hl,bc            	;.
	ram:5897 16 09          ld d,009h            	;. .
	ram:5899 34             inc (hl)             	;4
	ram:589a 40             ld b,b               	;@
	ram:589b 92             sub d                	;.
	ram:589c 90             sub b                	;.
	ram:589d 30 40          jr nc,l58dfh         	;0 @
	ram:589f 83             add a,e              	;.
	ram:58a0 61             ld h,c               	;a
	ram:58a1 27             daa                  	;'
	ram:58a2 36 16          ld (hl),016h         	;6 .
	ram:58a4 38 70          jr c,l5916h          	;8 p
	ram:58a6 64             ld h,h               	;d
	ram:58a7 49             ld c,c               	;I
l58a8h:
	jr z,-108		;58a8	28 92		( .
	ram:58aa 20 45          jr nz,l58f1h         	;E
	ram:58ac 35             dec (hl)             	;5
	ram:58ad 92             sub d                	;.
	ram:58ae 37             scf                  	;7
	ram:58af 16 60          ld d,060h            	;. `
	ram:58b1 54             ld d,h               	;T
	ram:58b2 02             ld (bc),a            	;.
	ram:58b3 90             sub b                	;.
	ram:58b4 71             ld (hl),c            	;q
	ram:58b5 84             add a,h              	;.
	ram:58b6 74             ld (hl),h            	;t
	ram:58b7 24             inc h                	;$
	ram:58b8 90             sub b                	;.
	ram:58b9 88             adc a,b              	;.
	ram:58ba 91             sub c                	;.
	ram:58bb 28 41          jr z,l58feh          	;( A
	ram:58bd 30 62          jr nc,l5921h         	;0 b
l58bfh:
	ram:58bf 50             ld d,b               	;P
	ram:58c0 37             scf                  	;7
	ram:58c1 85             add a,l              	;.
	ram:58c2 41             ld b,c               	;A
	ram:58c3 17             rla                  	;.
	ram:58c4 84             add a,h              	;.
	ram:58c5 94             sub h                	;.
	ram:58c6 63             ld h,e               	;c
	ram:58c7 52             ld d,d               	;R
	ram:58c8 94             sub h                	;.
	ram:58c9 60             ld h,b               	;`
	ram:58ca 47             ld b,a               	;G
	ram:58cb 31 76 47       ld sp,sub_4776h      	;1 v G
	ram:58ce 30 28          jr nc,42             	;0 (
	ram:58d0 31 68 43       ld sp,l4368h         	;1 h C
	ram:58d3 96             sub (hl)             	;.
	ram:58d4 23             inc hl               	;#
	ram:58d5 65             ld h,l               	;e
	ram:58d6 88             adc a,b              	;.
	ram:58d7 23             inc hl               	;#
	ram:58d8 65             ld h,l               	;e
	ram:58d9 16 02          ld d,002h            	;. .
	ram:58db 17             rla                  	;.
	ram:58dc 73             ld (hl),e            	;s
	ram:58dd 30 40          jr nc,l591fh         	;0 @
l58dfh:
	ram:58df 46             ld b,(hl)            	;F
	ram:58e0 85             add a,l              	;.
	ram:58e1 64             ld h,h               	;d
	ram:58e2 22 40 29       ld (02940h),hl       	;" @ )
	ram:58e5 57             ld d,a               	;W
	ram:58e6 35             dec (hl)             	;5
	ram:58e7 29             add hl,hl            	;)
	ram:58e8 56             ld d,(hl)            	;V
	ram:58e9 25             dec h                	;%
l58eah:
	ram:58ea 28 31          jr z,l591dh          	;( 1
	ram:58ec 68             ld l,b               	;h
	ram:58ed 46             ld b,(hl)            	;F
	ram:58ee 59             ld e,c               	;Y
	ram:58ef 20 49          jr nz,l593ah         	;I
l58f1h:
	jr z,-108		;58f1	28 92		( .
	ram:58f3 15             dec d                	;.
	ram:58f4 93             sub e                	;.
	ram:58f5 75             ld (hl),l            	;u
	ram:58f6 31 55 69       ld sp,06955h         	;1 U i
	ram:58f9 25             dec h                	;%
	ram:58fa 97             sub a                	;.
	ram:58fb 47             ld b,a               	;G
	ram:58fc 10 55          djnz l5953h          	;. U
l58feh:
	ram:58fe 05             dec b                	;.
	ram:58ff 58             ld e,b               	;X
	ram:5900 52             ld d,d               	;R
	ram:5901 62             ld h,d               	;b
	ram:5902 27             daa                  	;'
	ram:5903 77             ld (hl),a            	;w
	ram:5904 77             ld (hl),a            	;w
	ram:5905 77             ld (hl),a            	;w
	ram:5906 77             ld (hl),a            	;w
	ram:5907 77             ld (hl),a            	;w
	ram:5908 78             ld a,b               	;x
	ram:5909 51             ld d,c               	;Q
	ram:590a 44             ld b,h               	;D
	ram:590b 44             ld b,h               	;D
	ram:590c 44             ld b,h               	;D
	ram:590d 44             ld b,h               	;D
	ram:590e 44             ld b,h               	;D
	ram:590f 44             ld b,h               	;D
	ram:5910 94             sub h                	;.
	ram:5911 60             ld h,b               	;`
	ram:5912 52             ld d,d               	;R
	ram:5913 84             add a,h              	;.
	ram:5914 04             inc b                	;.
	ram:5915 87             add a,a              	;.
l5916h:
	ram:5916 94             sub h                	;.
	ram:5917 25             dec h                	;%
	ram:5918 89             adc a,c              	;.
	ram:5919 98             sbc a,b              	;.
	ram:591a 81             add a,c              	;.
	ram:591b 10 33          djnz l5950h          	;. 3
l591dh:
	ram:591d 60             ld h,b               	;`
	ram:591e 14             inc d                	;.
l591fh:
	ram:591f 78             ld a,b               	;x
	ram:5920 67             ld h,a               	;g
l5921h:
	ram:5921 64             ld h,h               	;d
	ram:5922 78             ld a,b               	;x
	ram:5923 12             ld (de),a            	;.
	ram:5924 50             ld d,b               	;P
	ram:5925 14             inc d                	;.
	ram:5926 59             ld e,c               	;Y
	ram:5927 39             add hl,sp            	;9
	ram:5928 02             ld (bc),a            	;.
	ram:5929 93             sub e                	;.
	ram:592a 72             ld (hl),d            	;r
	ram:592b 06 88          ld b,088h            	;. .
	ram:592d 96             sub (hl)             	;.
	ram:592e 44             ld b,h               	;D
	ram:592f 32 30 52       ld (05230h),a        	;2 0 R
	ram:5932 10 44          djnz 70              	;. D
	ram:5934 48             ld c,b               	;H
	ram:5935 22 16 15       ld (01516h),hl       	;" . .
	ram:5938 26 05          ld h,005h            	;& .
l593ah:
	ram:593a 68             ld l,b               	;h
	ram:593b 94             sub h                	;.
	ram:593c 75             ld (hl),l            	;u
	ram:593d 72             ld (hl),d            	;r
	ram:593e 93             sub e                	;.
	ram:593f 16 84          ld d,084h            	;. .
	ram:5941 13             inc de               	;.
	ram:5942 33             inc sp               	;3
	ram:5943 22 36 84       ld (08436h),hl       	;" 6 .
	ram:5946 21 05 33       ld hl,03305h         	;! . 3
	ram:5949 86             add a,(hl)           	;.
	jr c,-125		;594a	38 81		8 .
	ram:594c 57             ld d,a               	;W
	ram:594d 89             adc a,c              	;.
	ram:594e 47             ld b,a               	;G
	ram:594f 13             inc de               	;.
l5950h:
	ram:5950 55             ld d,l               	;U
	ram:5951 81             add a,c              	;.
	ram:5952 79             ld a,c               	;y
l5953h:
	ram:5953 48             ld c,b               	;H
	ram:5954 33             inc sp               	;3
	ram:5955 14             inc d                	;.
	ram:5956 74             ld (hl),h            	;t
	ram:5957 56             ld d,(hl)            	;V
	ram:5958 99             sbc a,c              	;.
	ram:5959 87             add a,a              	;.
	ram:595a 15             dec d                	;.
	ram:595b 82             add a,d              	;.
	ram:595c 27             daa                  	;'
	ram:595d 17             rla                  	;.
	ram:595e 58             ld e,b               	;X
	ram:595f 42             ld b,d               	;B
	ram:5960 64             ld h,h               	;d
	ram:5961 21 03 33       ld hl,03303h         	;! . 3
l5964h:
	ram:5964 cd 87 5a       call sub_5a87h       	;. . Z
	ram:5967 cd a6 5a       call sub_5aa6h       	;. . Z
	ram:596a 20 10          jr nz,l597ch         	;.
l596ch:
	ram:596c cd d0 42       call sub_42d0h       	;. . B
	ram:596f fe da          cp 0dah              	;. .
	ram:5971 28 f9          jr z,l596ch          	;( .
l5973h:
	ram:5973 cd 0c 2e       call 02e0ch          	;. . .
l5976h:
	ram:5976 cd 98 5a       call sub_5a98h       	;. . Z
	ram:5979 c3 ba 69       jp l69bah            	;. . i
l597ch:
	ram:597c cd 2a 5b       call sub_5b2ah       	;. * [
l597fh:
	ram:597f fe 01          cp 001h              	;. .
	ram:5981 30 06          jr nc,l5989h         	;0 .
l5983h:
	ram:5983 cd 0c 2e       call 02e0ch          	;. . .
	ram:5986 c3 98 5a       jp sub_5a98h         	;. . Z
l5989h:
	ram:5989 28 03          jr z,l598eh          	;( .
	ram:598b c3 1c 0a       jp 00a1ch            	;. . .
l598eh:
	ram:598e c5             push bc              	;.
	ram:598f cd 24 2f       call 02f24h          	;. $ /
	ram:5992 cd a6 5a       call sub_5aa6h       	;. . Z
	ram:5995 e1             pop hl               	;.
	ram:5996 28 db          jr z,l5973h          	;( .
	ram:5998 cd 35 5b       call sub_5b35h       	;. 5 [
	ram:599b 18 e2          jr l597fh            	;. .
l599dh:
	ram:599d cd 87 5a       call sub_5a87h       	;. . Z
	ram:59a0 cd 2a 5b       call sub_5b2ah       	;. * [
l59a3h:
	ram:59a3 fe 01          cp 001h              	;. .
	ram:59a5 38 dc          jr c,l5983h          	;8 .
	ram:59a7 28 03          jr z,l59ach          	;( .
	ram:59a9 c3 1c 0a       jp 00a1ch            	;. . .
l59ach:
	ram:59ac c5             push bc              	;.
	ram:59ad cd 24 2f       call 02f24h          	;. $ /
	ram:59b0 cd a6 5a       call sub_5aa6h       	;. . Z
	ram:59b3 e1             pop hl               	;.
	ram:59b4 20 bd          jr nz,l5973h         	;.
	ram:59b6 cd 35 5b       call sub_5b35h       	;. 5 [
	ram:59b9 18 e8          jr l59a3h            	;. .
l59bbh:
	ram:59bb fe 04          cp 004h              	;. .
	ram:59bd 28 09          jr z,l59c8h          	;( .
	ram:59bf fe 03          cp 003h              	;. .
	ram:59c1 c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:59c4 df             rst 18h              	;.
	ram:59c5 cd 3e 21       call 0213eh          	;. > !
l59c8h:
	ram:59c8 cd 81 38       call 03881h          	;. . 8
	ram:59cb cd 8a 5a       call sub_5a8ah       	;. . Z
	ram:59ce cd f5 2e       call 02ef5h          	;. . .
	ram:59d1 cd 4d 2f       call 02f4dh          	;. M /
	ram:59d4 cd 45 2e       call 02e45h          	;. E .
	ram:59d7 cd 5b 64       call sub_645bh       	;. [ d
	ram:59da cd 38 5a       call sub_5a38h       	;. 8 Z
	ram:59dd 38 10          jr c,l59efh          	;8 .
l59dfh:
	ram:59df cd d0 42       call sub_42d0h       	;. . B
	ram:59e2 fe da          cp 0dah              	;. .
	ram:59e4 28 f9          jr z,l59dfh          	;( .
l59e6h:
	ram:59e6 11 28 00       ld de,00028h         	;. ( .
	ram:59e9 cd 1b 2e       call 02e1bh          	;. . .
	ram:59ec c3 76 59       jp l5976h            	;. v Y
l59efh:
	ram:59ef cd 2a 5b       call sub_5b2ah       	;. * [
l59f2h:
	ram:59f2 fe 01          cp 001h              	;. .
	ram:59f4 30 09          jr nc,l59ffh         	;0 .
	ram:59f6 11 28 00       ld de,00028h         	;. ( .
	ram:59f9 cd 1b 2e       call 02e1bh          	;. . .
	ram:59fc c3 98 5a       jp sub_5a98h         	;. . Z
l59ffh:
	ram:59ff 28 03          jr z,l5a04h          	;( .
	ram:5a01 c3 1c 0a       jp 00a1ch            	;. . .
l5a04h:
	ram:5a04 c5             push bc              	;.
	ram:5a05 cd 1f 2f       call 02f1fh          	;. . /
	ram:5a08 cd f5 2e       call 02ef5h          	;. . .
	ram:5a0b cd 71 26       call 02671h          	;. q &
	ram:5a0e cd 22 26       call 02622h          	;. " &
	ram:5a11 d5             push de              	;.
	ram:5a12 eb             ex de,hl             	;.
	ram:5a13 e7             rst 20h              	;.
	ram:5a14 cd f5 1f       call 01ff5h          	;. . .
	ram:5a17 f7             rst 30h              	;.
	ram:5a18 cd 8d 20       call 0208dh          	;. .  
	ram:5a1b d1             pop de               	;.
	ram:5a1c cd 11 21       call 02111h          	;. . !
	ram:5a1f cd 38 5a       call sub_5a38h       	;. 8 Z
	ram:5a22 e1             pop hl               	;.
	ram:5a23 30 c1          jr nc,l59e6h         	;0 .
	ram:5a25 e5             push hl              	;.
	ram:5a26 cd 07 20       call 02007h          	;. .  
	ram:5a29 cd 5b 20       call 0205bh          	;. [  
	ram:5a2c cd 8e 1f       call 01f8eh          	;. . .
	ram:5a2f ca 18 0a       jp z,00a18h          	;. . .
	ram:5a32 e1             pop hl               	;.
	ram:5a33 cd 35 5b       call sub_5b35h       	;. 5 [
	ram:5a36 18 ba          jr l59f2h            	;. .
sub_5a38h:
	ram:5a38 cd 1f 2f       call 02f1fh          	;. . /
	ram:5a3b cd 62 25       call 02562h          	;. b %
	ram:5a3e 37             scf                  	;7
	ram:5a3f f5             push af              	;.
	ram:5a40 cd 3b 2f       call 02f3bh          	;. ; /
	ram:5a43 cd 8e 1f       call 01f8eh          	;. . .
	ram:5a46 20 02          jr nz,l5a4ah         	;.
	ram:5a48 f1             pop af               	;.
	ram:5a49 c9             ret                  	;.
l5a4ah:
	ram:5a4a 38 04          jr c,l5a50h          	;8 .
	ram:5a4c f1             pop af               	;.
	ram:5a4d 28 03          jr z,l5a52h          	;( .
	ram:5a4f c9             ret                  	;.
l5a50h:
	ram:5a50 f1             pop af               	;.
	ram:5a51 c8             ret z                	;.
l5a52h:
	ram:5a52 af             xor a                	;.
	ram:5a53 c9             ret                  	;.
l5a54h:
	ram:5a54 cd 87 5a       call sub_5a87h       	;. . Z
	ram:5a57 cd a6 5a       call sub_5aa6h       	;. . Z
	ram:5a5a 20 15          jr nz,l5a71h         	;.
	ram:5a5c cd d0 42       call sub_42d0h       	;. . B
	ram:5a5f fe da          cp 0dah              	;. .
	ram:5a61 c2 73 59       jp nz,l5973h         	;. s Y
	ram:5a64 cd 2a 5b       call sub_5b2ah       	;. * [
	ram:5a67 fe 01          cp 001h              	;. .
	ram:5a69 da 83 59       jp c,l5983h          	;. . Y
	ram:5a6c ca 73 59       jp z,l5973h          	;. s Y
	ram:5a6f 18 13          jr l5a84h            	;. .
l5a71h:
	ram:5a71 cd 2a 5b       call sub_5b2ah       	;. * [
	ram:5a74 fe 01          cp 001h              	;. .
	ram:5a76 da 83 59       jp c,l5983h          	;. . Y
	ram:5a79 ca 73 59       jp z,l5973h          	;. s Y
	ram:5a7c cd d0 42       call sub_42d0h       	;. . B
	ram:5a7f fe da          cp 0dah              	;. .
	ram:5a81 c2 73 59       jp nz,l5973h         	;. s Y
l5a84h:
	ram:5a84 c3 1c 0a       jp 00a1ch            	;. . .
sub_5a87h:
	ram:5a87 cd 4a 2e       call 02e4ah          	;. J .
sub_5a8ah:
	ram:5a8a ed 4b e9 8b    ld bc,(08be9h)       	;. K . .
	ram:5a8e cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5a91 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5a94 22 e9 8b       ld (08be9h),hl       	;" . .
	ram:5a97 c9             ret                  	;.
sub_5a98h:
	ram:5a98 2a e9 8b       ld hl,(08be9h)       	;* . .
	ram:5a9b 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:5a9e cd 8e 2d       call 02d8eh          	;. . -
	ram:5aa1 ed 43 e9 8b    ld (08be9h),bc       	;. C . .
	ram:5aa5 c9             ret                  	;.
sub_5aa6h:
	ram:5aa6 cd 54 5b       call sub_5b54h       	;. T [
	ram:5aa9 cd 9c 26       call 0269ch          	;. . &
	ram:5aac cd 22 26       call 02622h          	;. " &
	ram:5aaf c3 d1 23       jp 023d1h            	;. . #
	ram:5ab2 3a 68 83       ld a,(08368h)        	;: h .
	ram:5ab5 cd 3d 37       call 0373dh          	;. = 7
	ram:5ab8 21 00 00       ld hl,00000h         	;! . .
	ram:5abb 22 69 8a       ld (08a69h),hl       	;" i .
	ram:5abe 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5ac1 e5             push hl              	;.
	ram:5ac2 cd d5 5c       call sub_5cd5h       	;. . \
	ram:5ac5 21 e8 5a       ld hl,l5ae8h         	;! . Z
	ram:5ac8 cd b5 0a       call 00ab5h          	;. . .
	ram:5acb cd 54 5b       call sub_5b54h       	;. T [
	ram:5ace cd db 0a       call 00adbh          	;. . .
	ram:5ad1 cd 0c 2e       call 02e0ch          	;. . .
	ram:5ad4 cd 8e 2d       call 02d8eh          	;. . -
	ram:5ad7 e1             pop hl               	;.
	ram:5ad8 21 82 80       ld hl,08082h         	;! . .
	ram:5adb cb ae          res 5,(hl)           	;. .
	ram:5add cd 0b 00       call 0000bh          	;. . .
	ram:5ae0 28 13          jr z,l5af5h          	;( .
	ram:5ae2 cd 47 1f       call 01f47h          	;. G .
	ram:5ae5 c8             ret z                	;.
	ram:5ae6 18 0d          jr l5af5h            	;. .
l5ae8h:
	ram:5ae8 e6 7f          and 07fh             	;. .
	ram:5aea fe 07          cp 007h              	;. .
	ram:5aec 30 39          jr nc,l5b27h         	;0 9
	ram:5aee cd a7 5c       call sub_5ca7h       	;. . \
	ram:5af1 d1             pop de               	;.
	ram:5af2 cd 3f 38       call 0383fh          	;. ? 8
l5af5h:
	ram:5af5 21 82 80       ld hl,08082h         	;! . .
	ram:5af8 cb ee          set 5,(hl)           	;. .
	ram:5afa fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:5afe c9             ret                  	;.
	ram:5aff cd d5 5c       call sub_5cd5h       	;. . \
	ram:5b02 21 20 5b       ld hl,l5b20h         	;!   [
	ram:5b05 cd b5 0a       call 00ab5h          	;. . .
	ram:5b08 cd b7 35       call 035b7h          	;. . 5
	ram:5b0b 21 00 00       ld hl,00000h         	;! . .
	ram:5b0e 22 69 8a       ld (08a69h),hl       	;" i .
	ram:5b11 cd 48 5b       call sub_5b48h       	;. H [
	ram:5b14 cd db 0a       call 00adbh          	;. . .
	ram:5b17 cd 0c 2e       call 02e0ch          	;. . .
	ram:5b1a cd 8e 2d       call 02d8eh          	;. . -
	ram:5b1d c3 9c 26       jp 0269ch            	;. . &
l5b20h:
	ram:5b20 e6 7f          and 07fh             	;. .
	ram:5b22 fe 06          cp 006h              	;. .
	ram:5b24 cc a7 5c       call z,sub_5ca7h     	;. . \
l5b27h:
	ram:5b27 c3 8a 0a       jp 00a8ah            	;. . .
sub_5b2ah:
	ram:5b2a 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:5b2d ed 5b 5f 8a    ld de,(08a5fh)       	;. [ _ .
	ram:5b31 b7             or a                 	;.
	ram:5b32 ed 52          sbc hl,de            	;. R
	ram:5b34 23             inc hl               	;#
sub_5b35h:
	ram:5b35 e5             push hl              	;.
	ram:5b36 ed 5b 5f 8a    ld de,(08a5fh)       	;. [ _ .
	ram:5b3a 19             add hl,de            	;.
	ram:5b3b 22 61 8a       ld (08a61h),hl       	;" a .
	ram:5b3e cd a3 26       call 026a3h          	;. . &
	ram:5b41 c1             pop bc               	;.
	ram:5b42 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5b45 c1             pop bc               	;.
	ram:5b46 18 33          jr l5b7bh            	;. 3
sub_5b48h:
	ram:5b48 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:5b4c 28 06          jr z,sub_5b54h       	;( .
	ram:5b4e 3a 64 83       ld a,(08364h)        	;: d .
	ram:5b51 b7             or a                 	;.
	ram:5b52 28 03          jr z,l5b57h          	;( .
sub_5b54h:
	ram:5b54 cd 39 5d       call sub_5d39h       	;. 9 ]
l5b57h:
	ram:5b57 cd ea 5c       call sub_5ceah       	;. . \
	ram:5b5a c1             pop bc               	;.
	ram:5b5b cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5b5e 01 34 5c       ld bc,l5c34h         	;. 4 \
	ram:5b61 18 18          jr l5b7bh            	;. .
	ram:5b63 cd 2e 26       call 0262eh          	;. . &
	ram:5b66 cd 39 5d       call sub_5d39h       	;. 9 ]
	ram:5b69 cd ea 5c       call sub_5ceah       	;. . \
	ram:5b6c c1             pop bc               	;.
	ram:5b6d cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5b70 c1             pop bc               	;.
	ram:5b71 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5b74 c1             pop bc               	;.
	ram:5b75 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5b78 01 2c 5c       ld bc,l5c2ch         	;. , \
l5b7bh:
	ram:5b7b cd 7e 2d       call 02d7eh          	;. ~ -
l5b7eh:
	ram:5b7e fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:5b82 3e 00          ld a,000h            	;> .
	ram:5b84 cd 97 2d       call 02d97h          	;. . -
	ram:5b87 21 01 00       ld hl,00001h         	;! . .
	ram:5b8a 22 65 8a       ld (08a65h),hl       	;" e .
	ram:5b8d cd 75 74       call sub_7475h       	;. u t
l5b90h:
	ram:5b90 cd 00 75       call sub_7500h       	;. . u
	ram:5b93 ca a4 68       jp z,l68a4h          	;. . h
	ram:5b96 fe 44          cp 044h              	;. D
	ram:5b98 ca 48 5d       jp z,l5d48h          	;. H ]
	ram:5b9b fe 0b          cp 00bh              	;. .
	ram:5b9d ca 5d 69       jp z,l695dh          	;. ] i
	ram:5ba0 da ef 72       jp c,l72efh          	;. . r
	ram:5ba3 fe 0d          cp 00dh              	;. .
	ram:5ba5 ca f0 5f       jp z,l5ff0h          	;. . _
	ram:5ba8 da 9f 5f       jp c,l5f9fh          	;. . _
	ram:5bab fe 0f          cp 00fh              	;. .
	ram:5bad ca 15 60       jp z,l6015h          	;. . `
	ram:5bb0 da 01 60       jp c,l6001h          	;. . `
	ram:5bb3 fe 11          cp 011h              	;. .
	ram:5bb5 ca 6a 69       jp z,l696ah          	;. j i
	ram:5bb8 da 73 69       jp c,l6973h          	;. s i
	ram:5bbb fe 2d          cp 02dh              	;. -
	ram:5bbd ca 6a 5f       jp z,l5f6ah          	;. j _
	ram:5bc0 da 19 69       jp c,l6919h          	;. . i
	ram:5bc3 fe 32          cp 032h              	;. 2
	ram:5bc5 da 6a 69       jp c,l696ah          	;. j i
	ram:5bc8 fe 3e          cp 03eh              	;. >
	ram:5bca ca de 68       jp z,l68deh          	;. . h
	ram:5bcd da 4c 60       jp c,l604ch          	;. L `
	ram:5bd0 fe 40          cp 040h              	;. @
	ram:5bd2 ca 6a 69       jp z,l696ah          	;. j i
	ram:5bd5 da 91 69       jp c,l6991h          	;. . i
	ram:5bd8 fe 44          cp 044h              	;. D
	ram:5bda da a6 5d       jp c,l5da6h          	;. . ]
	ram:5bdd fe 4c          cp 04ch              	;. L
	ram:5bdf ca 8d 72       jp z,l728dh          	;. . r
	ram:5be2 da 07 69       jp c,l6907h          	;. . i
	ram:5be5 fe 50          cp 050h              	;. P
	ram:5be7 da 95 72       jp c,l7295h          	;. . r
	ram:5bea fe 56          cp 056h              	;. V
	ram:5bec da 6a 69       jp c,l696ah          	;. j i
	ram:5bef fe 60          cp 060h              	;. `
	ram:5bf1 da c6 72       jp c,l72c6h          	;. . r
	ram:5bf4 fe 62          cp 062h              	;. b
	ram:5bf6 da 6a 69       jp c,l696ah          	;. j i
	ram:5bf9 fe 6e          cp 06eh              	;. n
	ram:5bfb ca 9e 68       jp z,l689eh          	;. . h
	ram:5bfe da c4 72       jp c,l72c4h          	;. . r
	ram:5c01 fe 72          cp 072h              	;. r
	ram:5c03 da 6a 69       jp c,l696ah          	;. j i
	ram:5c06 fe 80          cp 080h              	;. .
	ram:5c08 da bd 72       jp c,l72bdh          	;. . r
	ram:5c0b fe 82          cp 082h              	;. .
	ram:5c0d da 6a 69       jp c,l696ah          	;. j i
	ram:5c10 fe a0          cp 0a0h              	;. .
	ram:5c12 da a5 72       jp c,l72a5h          	;. . r
	ram:5c15 fe d8          cp 0d8h              	;. .
	ram:5c17 da c0 69       jp c,l69c0h          	;. . i
	ram:5c1a fe f0          cp 0f0h              	;. .
	ram:5c1c da 9b 72       jp c,l729bh          	;. . r
	ram:5c1f fe f2          cp 0f2h              	;. .
	ram:5c21 da 6a 69       jp c,l696ah          	;. j i
	ram:5c24 fe ff          cp 0ffh              	;. .
	ram:5c26 da 99 72       jp c,l7299h          	;. . r
l5c29h:
	ram:5c29 c3 1c 0a       jp 00a1ch            	;. . .
l5c2ch:
	ram:5c2c cd 8e 2d       call 02d8eh          	;. . -
	ram:5c2f c5             push bc              	;.
	ram:5c30 cd 8e 2d       call 02d8eh          	;. . -
	ram:5c33 c5             push bc              	;.
l5c34h:
	ram:5c34 cd 8e 2d       call 02d8eh          	;. . -
	ram:5c37 c5             push bc              	;.
	ram:5c38 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:5c3c 28 24          jr z,l5c62h          	;( $
	ram:5c3e cd 52 7a       call sub_7a52h       	;. R z
	ram:5c41 20 1f          jr nz,l5c62h         	;.
	ram:5c43 cd cf 2d       call 02dcfh          	;. . -
	ram:5c46 cd 03 3b       call 03b03h          	;. . ;
	ram:5c49 cd cf 2d       call 02dcfh          	;. . -
	ram:5c4c fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:5c50 28 06          jr z,l5c58h          	;( .
	ram:5c52 cd 09 3b       call 03b09h          	;. . ;
	ram:5c55 cd cf 2d       call 02dcfh          	;. . -
l5c58h:
	ram:5c58 cd fd 3a       call 03afdh          	;. . :
	ram:5c5b 37             scf                  	;7
	ram:5c5c f5             push af              	;.
	ram:5c5d cd f4 2d       call 02df4h          	;. . -
	ram:5c60 18 09          jr l5c6bh            	;. .
l5c62h:
	ram:5c62 af             xor a                	;.
	ram:5c63 f5             push af              	;.
	ram:5c64 cd ea 2d       call 02deah          	;. . -
	ram:5c67 df             rst 18h              	;.
	ram:5c68 cd 60 20       call 02060h          	;. `  
l5c6bh:
	ram:5c6b cd aa 5c       call sub_5caah       	;. . \
	ram:5c6e f1             pop af               	;.
	ram:5c6f d2 cf 2d       jp nc,02dcfh         	;. . -
	ram:5c72 cd 0f 3b       call 03b0fh          	;. . ;
	ram:5c75 df             rst 18h              	;.
	ram:5c76 fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:5c7a 28 04          jr z,l5c80h          	;( .
	ram:5c7c cd 1b 3b       call 03b1bh          	;. . ;
	ram:5c7f df             rst 18h              	;.
l5c80h:
	ram:5c80 cd 15 3b       call 03b15h          	;. . ;
	ram:5c83 df             rst 18h              	;.
	ram:5c84 c9             ret                  	;.
	ram:5c85 e5             push hl              	;.
	ram:5c86 cd ea 5c       call sub_5ceah       	;. . \
	ram:5c89 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:5c8c 2b             dec hl               	;+
	ram:5c8d 22 61 8a       ld (08a61h),hl       	;" a .
	ram:5c90 cd 97 4a       call sub_4a97h       	;. . J
	ram:5c93 f5             push af              	;.
	ram:5c94 cd 6e 74       call sub_746eh       	;. n t
	ram:5c97 b7             or a                 	;.
	ram:5c98 20 8f          jr nz,l5c29h         	;.
	ram:5c9a f1             pop af               	;.
	ram:5c9b e1             pop hl               	;.
	ram:5c9c cd 8d 4a       call sub_4a8dh       	;. . J
	ram:5c9f 18 06          jr sub_5ca7h         	;. .
	ram:5ca1 cd ea 5c       call sub_5ceah       	;. . \
	ram:5ca4 cd 8c 78       call sub_788ch       	;. . x
sub_5ca7h:
	ram:5ca7 cd f4 2d       call 02df4h          	;. . -
sub_5caah:
	ram:5caa cd 8e 2d       call 02d8eh          	;. . -
	ram:5cad 3a 83 80       ld a,(08083h)        	;: . .
	ram:5cb0 b7             or a                 	;.
	ram:5cb1 28 1c          jr z,l5ccfh          	;( .
	ram:5cb3 c5             push bc              	;.
	ram:5cb4 d7             rst 10h              	;.
	ram:5cb5 eb             ex de,hl             	;.
	ram:5cb6 d1             pop de               	;.
	ram:5cb7 30 06          jr nc,l5cbfh         	;0 .
	ram:5cb9 af             xor a                	;.
	ram:5cba 32 83 80       ld (08083h),a        	;2 . .
	ram:5cbd 18 10          jr l5ccfh            	;. .
l5cbfh:
	ram:5cbf cd 1a 5d       call sub_5d1ah       	;. . ]
	ram:5cc2 22 5f 8a       ld (08a5fh),hl       	;" _ .
	ram:5cc5 eb             ex de,hl             	;.
	ram:5cc6 19             add hl,de            	;.
	ram:5cc7 22 61 8a       ld (08a61h),hl       	;" a .
	ram:5cca eb             ex de,hl             	;.
	ram:5ccb 09             add hl,bc            	;.
	ram:5ccc 22 63 8a       ld (08a63h),hl       	;" c .
l5ccfh:
	ram:5ccf 11 55 8a       ld de,08a55h         	;. U .
	ram:5cd2 c3 11 21       jp 02111h            	;. . !
sub_5cd5h:
	ram:5cd5 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:5cd8 ed 4b 5f 8a    ld bc,(08a5fh)       	;. K _ .
	ram:5cdc b7             or a                 	;.
	ram:5cdd ed 42          sbc hl,bc            	;. B
	ram:5cdf 44             ld b,h               	;D
	ram:5ce0 4d             ld c,l               	;M
	ram:5ce1 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:5ce4 21 55 8a       ld hl,08a55h         	;! U .
	ram:5ce7 c3 4d 2e       jp 02e4dh            	;. M .
sub_5ceah:
	ram:5cea d7             rst 10h              	;.
	ram:5ceb da 38 0a       jp c,00a38h          	;. 8 .
	ram:5cee e6 1f          and 01fh             	;. .
	ram:5cf0 fe 0a          cp 00ah              	;. .
	ram:5cf2 28 09          jr z,l5cfdh          	;( .
	ram:5cf4 fe 12          cp 012h              	;. .
	ram:5cf6 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:5cf9 cd bd 35       call 035bdh          	;. . 5
	ram:5cfc d7             rst 10h              	;.
l5cfdh:
	ram:5cfd ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:5d01 cd d5 5c       call sub_5cd5h       	;. . \
	ram:5d04 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:5d07 cd 1a 5d       call sub_5d1ah       	;. . ]
	ram:5d0a 22 5f 8a       ld (08a5fh),hl       	;" _ .
	ram:5d0d 22 61 8a       ld (08a61h),hl       	;" a .
	ram:5d10 09             add hl,bc            	;.
	ram:5d11 22 63 8a       ld (08a63h),hl       	;" c .
	ram:5d14 11 55 8a       ld de,08a55h         	;. U .
	ram:5d17 c3 11 21       jp 02111h            	;. . !
sub_5d1ah:
	ram:5d1a 4e             ld c,(hl)            	;N
	ram:5d1b 23             inc hl               	;#
	ram:5d1c 46             ld b,(hl)            	;F
	ram:5d1d 0b             dec bc               	;.
	ram:5d1e 23             inc hl               	;#
	ram:5d1f e6 1f          and 01fh             	;. .
	ram:5d21 fe 12          cp 012h              	;. .
	ram:5d23 c8             ret z                	;.
	ram:5d24 3a 84 80       ld a,(08084h)        	;: . .
	ram:5d27 fe 24          cp 024h              	;. $
	ram:5d29 c0             ret nz               	;.
	ram:5d2a 7e             ld a,(hl)            	;~
	ram:5d2b b7             or a                 	;.
	ram:5d2c 28 08          jr z,l5d36h          	;( .
	ram:5d2e c6 03          add a,003h           	;. .
l5d30h:
	ram:5d30 23             inc hl               	;#
	ram:5d31 0b             dec bc               	;.
	ram:5d32 3d             dec a                	;=
	ram:5d33 20 fb          jr nz,l5d30h         	;.
	ram:5d35 c9             ret                  	;.
l5d36h:
	ram:5d36 23             inc hl               	;#
	ram:5d37 0b             dec bc               	;.
	ram:5d38 c9             ret                  	;.
sub_5d39h:
	ram:5d39 fd 36 06 00    ld (iy+006h),000h    	;. 6 . .
	ram:5d3d fd 36 07 00    ld (iy+007h),000h    	;. 6 . .
sub_5d41h:
	ram:5d41 fd 7e 0a       ld a,(iy+00ah)       	;. ~ .
	ram:5d44 fd 77 0b       ld (iy+00bh),a       	;. w .
	ram:5d47 c9             ret                  	;.
l5d48h:
	ram:5d48 cd 1a 6a       call sub_6a1ah       	;. . j
	ram:5d4b cd e5 5d       call sub_5de5h       	;. . ]
	ram:5d4e cd 75 74       call sub_7475h       	;. u t
	ram:5d51 fe 27          cp 027h              	;. '
	ram:5d53 20 3d          jr nz,l5d92h         	;=
	ram:5d55 cd 82 74       call sub_7482h       	;. . t
	ram:5d58 b7             or a                 	;.
	ram:5d59 28 33          jr z,l5d8eh          	;( 3
	ram:5d5b cd 85 20       call 02085h          	;. .  
	ram:5d5e cd e5 5d       call sub_5de5h       	;. . ]
	ram:5d61 cd f8 5e       call sub_5ef8h       	;. . ^
	ram:5d64 cd 23 10       call 01023h          	;. # .
	ram:5d67 cd 49 20       call 02049h          	;. I  
	ram:5d6a f7             rst 30h              	;.
	ram:5d6b cd 82 74       call sub_7482h       	;. . t
	ram:5d6e b7             or a                 	;.
	ram:5d6f 28 1d          jr z,l5d8eh          	;( .
	ram:5d71 cd 85 20       call 02085h          	;. .  
	ram:5d74 cd e5 5d       call sub_5de5h       	;. . ]
	ram:5d77 cd f8 5e       call sub_5ef8h       	;. . ^
	ram:5d7a 34             inc (hl)             	;4
	ram:5d7b 34             inc (hl)             	;4
	ram:5d7c 3e 36          ld a,036h            	;> 6
	ram:5d7e 32 90 80       ld (08090h),a        	;2 . .
	ram:5d81 cd 23 10       call 01023h          	;. # .
	ram:5d84 cd 49 20       call 02049h          	;. I  
	ram:5d87 f7             rst 30h              	;.
	ram:5d88 cd 82 74       call sub_7482h       	;. . t
	ram:5d8b b7             or a                 	;.
	ram:5d8c 20 54          jr nz,l5de2h         	;T
l5d8eh:
	ram:5d8e ed 43 61 8a    ld (08a61h),bc       	;. C a .
l5d92h:
	ram:5d92 fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:5d96 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:5d9a ca 6d 69       jp z,l696dh          	;. m i
	ram:5d9d cd 52 7a       call sub_7a52h       	;. R z
	ram:5da0 cc 2c 6c       call z,sub_6c2ch     	;. , l
	ram:5da3 c3 6d 69       jp l696dh            	;. m i
l5da6h:
	ram:5da6 f5             push af              	;.
	ram:5da7 cd 1a 6a       call sub_6a1ah       	;. . j
	ram:5daa f1             pop af               	;.
	ram:5dab fe 42          cp 042h              	;. B
	ram:5dad 28 0a          jr z,l5db9h          	;( .
	ram:5daf 38 0f          jr c,l5dc0h          	;8 .
	ram:5db1 cd c3 35       call 035c3h          	;. . 5
	ram:5db4 cd 95 20       call 02095h          	;. .  
	ram:5db7 18 d9          jr l5d92h            	;. .
l5db9h:
	ram:5db9 3e 04          ld a,004h            	;> .
	ram:5dbb cd 81 24       call 02481h          	;. . $
	ram:5dbe 18 d2          jr l5d92h            	;. .
l5dc0h:
	ram:5dc0 cd 89 74       call sub_7489h       	;. . t
	ram:5dc3 fe 0b          cp 00bh              	;. .
	ram:5dc5 28 05          jr z,l5dcch          	;( .
	ram:5dc7 cd 83 7d       call sub_7d83h       	;. . }
	ram:5dca 18 c6          jr l5d92h            	;. .
l5dcch:
	ram:5dcc cd da 5d       call sub_5ddah       	;. . ]
	ram:5dcf cd a8 2d       call 02da8h          	;. . -
	ram:5dd2 cd cf 2d       call 02dcfh          	;. . -
	ram:5dd5 cd c0 7d       call sub_7dc0h       	;. . }
	ram:5dd8 18 b8          jr l5d92h            	;. .
sub_5ddah:
	ram:5dda cd fa 74       call sub_74fah       	;. . t
	ram:5ddd c8             ret z                	;.
l5ddeh:
	ram:5dde ed 43 61 8a    ld (08a61h),bc       	;. C a .
l5de2h:
	ram:5de2 c3 1c 0a       jp 00a1ch            	;. . .
sub_5de5h:
	ram:5de5 cd 98 21       call 02198h          	;. . !
	ram:5de8 21 ff fb       ld hl,0fbffh         	;! . .
	ram:5deb 22 83 80       ld (08083h),hl       	;" . .
	ram:5dee cd 6e 74       call sub_746eh       	;. n t
	ram:5df1 fe 1b          cp 01bh              	;. .
	ram:5df3 28 59          jr z,l5e4eh          	;( Y
l5df5h:
	ram:5df5 21 82 80       ld hl,08082h         	;! . .
	ram:5df8 b7             or a                 	;.
	ram:5df9 ca a2 5e       jp z,l5ea2h          	;. . ^
	ram:5dfc fe 05          cp 005h              	;. .
	ram:5dfe 38 76          jr c,l5e76h          	;8 v
	ram:5e00 fe 0a          cp 00ah              	;. .
	ram:5e02 38 de          jr c,l5de2h          	;8 .
	ram:5e04 fe 10          cp 010h              	;. .
	ram:5e06 38 1f          jr c,l5e27h          	;8 .
	ram:5e08 fe 1a          cp 01ah              	;. .
	ram:5e0a 28 66          jr z,l5e72h          	;( f
	ram:5e0c fe 1b          cp 01bh              	;. .
	ram:5e0e 28 41          jr z,l5e51h          	;( A
	ram:5e10 fe 27          cp 027h              	;. '
	ram:5e12 ca b4 5e       jp z,l5eb4h          	;. . ^
	ram:5e15 fe 2e          cp 02eh              	;. .
	ram:5e17 28 31          jr z,l5e4ah          	;( 1
	ram:5e19 fe 30          cp 030h              	;. 0
	ram:5e1b 28 12          jr z,l5e2fh          	;( .
	ram:5e1d 38 28          jr c,l5e47h          	;8 (
	ram:5e1f fe 3a          cp 03ah              	;. :
	ram:5e21 30 24          jr nc,l5e47h         	;0 $
	ram:5e23 cb 76          bit 6,(hl)           	;. v
	ram:5e25 20 37          jr nz,l5e5eh         	;7
l5e27h:
	ram:5e27 cd 07 5f       call sub_5f07h       	;. . _
l5e2ah:
	ram:5e2a cd 6b 74       call sub_746bh       	;. k t
	ram:5e2d 18 c6          jr l5df5h            	;. .
l5e2fh:
	ram:5e2f cb 76          bit 6,(hl)           	;. v
	ram:5e31 20 2b          jr nz,l5e5eh         	;+
	ram:5e33 3a 85 80       ld a,(08085h)        	;: . .
	ram:5e36 e6 f0          and 0f0h             	;. .
	ram:5e38 3e 30          ld a,030h            	;> 0
	ram:5e3a 20 eb          jr nz,l5e27h         	;.
	ram:5e3c cb 7e          bit 7,(hl)           	;. ~
	ram:5e3e 28 ea          jr z,l5e2ah          	;( .
	ram:5e40 cd 88 25       call 02588h          	;. . %
	ram:5e43 cb 5c          bit 3,h              	;. \
	ram:5e45 20 e3          jr nz,l5e2ah         	;.
l5e47h:
	ram:5e47 c3 1c 0a       jp 00a1ch            	;. . .
l5e4ah:
	ram:5e4a cb fe          set 7,(hl)           	;. .
	ram:5e4c 18 dc          jr l5e2ah            	;. .
l5e4eh:
	ram:5e4e cd 05 5f       call sub_5f05h       	;. . _
l5e51h:
	ram:5e51 21 00 00       ld hl,00000h         	;! . .
	ram:5e54 22 8d 80       ld (0808dh),hl       	;" . .
	ram:5e57 3e 40          ld a,040h            	;> @
	ram:5e59 32 82 80       ld (08082h),a        	;2 . .
	ram:5e5c 18 cc          jr l5e2ah            	;. .
l5e5eh:
	ram:5e5e 34             inc (hl)             	;4
	ram:5e5f 21 8e 80       ld hl,0808eh         	;! . .
	ram:5e62 ed 6f          rld                  	;. o
	ram:5e64 2b             dec hl               	;+
	ram:5e65 ed 6f          rld                  	;. o
	ram:5e67 3a 82 80       ld a,(08082h)        	;: . .
	ram:5e6a e6 0f          and 00fh             	;. .
	ram:5e6c fe 04          cp 004h              	;. .
	ram:5e6e 28 d7          jr z,l5e47h          	;( .
	ram:5e70 18 b8          jr l5e2ah            	;. .
l5e72h:
	ram:5e72 cb ee          set 5,(hl)           	;. .
	ram:5e74 18 b4          jr l5e2ah            	;. .
l5e76h:
	ram:5e76 f5             push af              	;.
	ram:5e77 cd 6e 74       call sub_746eh       	;. n t
	ram:5e7a b7             or a                 	;.
	ram:5e7b 20 ca          jr nz,l5e47h         	;.
	ram:5e7d 21 82 80       ld hl,08082h         	;! . .
	ram:5e80 f1             pop af               	;.
	ram:5e81 fe 04          cp 004h              	;. .
	ram:5e83 28 17          jr z,l5e9ch          	;( .
	ram:5e85 fe 02          cp 002h              	;. .
	ram:5e87 28 0d          jr z,l5e96h          	;( .
	ram:5e89 fe 01          cp 001h              	;. .
	ram:5e8b 20 27          jr nz,l5eb4h         	;'
l5e8dh:
	ram:5e8d 16 11          ld d,011h            	;. .
	ram:5e8f 1e 03          ld e,003h            	;. .
l5e91h:
	ram:5e91 cd 2d 5f       call sub_5f2dh       	;. - _
	ram:5e94 18 4d          jr l5ee3h            	;. M
l5e96h:
	ram:5e96 16 77          ld d,077h            	;. w
	ram:5e98 1e 02          ld e,002h            	;. .
	ram:5e9a 18 f5          jr l5e91h            	;. .
l5e9ch:
	ram:5e9c 16 ff          ld d,0ffh            	;. .
	ram:5e9e 1e 01          ld e,001h            	;. .
	ram:5ea0 18 ef          jr l5e91h            	;. .
l5ea2h:
	ram:5ea2 fd cb 0a 56    bit 2,(iy+00ah)      	;. . . V
	ram:5ea6 20 f4          jr nz,l5e9ch         	;.
	ram:5ea8 fd cb 0a 5e    bit 3,(iy+00ah)      	;. . . ^
	ram:5eac 20 e8          jr nz,l5e96h         	;.
	ram:5eae fd cb 0a 66    bit 4,(iy+00ah)      	;. . . f
	ram:5eb2 20 d9          jr nz,l5e8dh         	;.
l5eb4h:
	ram:5eb4 11 00 99       ld de,09900h         	;. . .
	ram:5eb7 cd 33 5f       call sub_5f33h       	;. 3 _
	ram:5eba 21 82 80       ld hl,08082h         	;! . .
	ram:5ebd cb 76          bit 6,(hl)           	;. v
	ram:5ebf 28 1e          jr z,l5edfh          	;( .
	ram:5ec1 3a 85 80       ld a,(08085h)        	;: . .
	ram:5ec4 e6 f0          and 0f0h             	;. .
	ram:5ec6 28 17          jr z,l5edfh          	;( .
	ram:5ec8 21 8e 80       ld hl,0808eh         	;! . .
	ram:5ecb cd 37 25       call 02537h          	;. 7 %
	ram:5ece 21 82 80       ld hl,08082h         	;! . .
	ram:5ed1 cb 6e          bit 5,(hl)           	;. n
	ram:5ed3 2a 83 80       ld hl,(08083h)       	;* . .
	ram:5ed6 20 16          jr nz,l5eeeh         	;.
	ram:5ed8 19             add hl,de            	;.
	ram:5ed9 da 08 0a       jp c,00a08h          	;. . .
l5edch:
	ram:5edc 22 83 80       ld (08083h),hl       	;" . .
l5edfh:
	ram:5edf af             xor a                	;.
	ram:5ee0 32 82 80       ld (08082h),a        	;2 . .
l5ee3h:
	ram:5ee3 3a 85 80       ld a,(08085h)        	;: . .
	ram:5ee6 e6 f0          and 0f0h             	;. .
	ram:5ee8 cc 98 21       call z,02198h        	;. . !
	ram:5eeb c3 9b 25       jp 0259bh            	;. . %
l5eeeh:
	ram:5eee af             xor a                	;.
	ram:5eef ed 52          sbc hl,de            	;. R
	ram:5ef1 30 e9          jr nc,l5edch         	;0 .
	ram:5ef3 32 85 80       ld (08085h),a        	;2 . .
	ram:5ef6 18 e7          jr l5edfh            	;. .
sub_5ef8h:
	ram:5ef8 cd 93 21       call 02193h          	;. . !
	ram:5efb 3e 60          ld a,060h            	;> `
	ram:5efd 32 90 80       ld (08090h),a        	;2 . .
	ram:5f00 21 8e 80       ld hl,0808eh         	;! . .
	ram:5f03 34             inc (hl)             	;4
	ram:5f04 c9             ret                  	;.
sub_5f05h:
	ram:5f05 3e 01          ld a,001h            	;> .
sub_5f07h:
	ram:5f07 e6 0f          and 00fh             	;. .
	ram:5f09 47             ld b,a               	;G
	ram:5f0a 21 82 80       ld hl,08082h         	;! . .
	ram:5f0d 7e             ld a,(hl)            	;~
	ram:5f0e cb 67          bit 4,a              	;. g
	ram:5f10 20 12          jr nz,l5f24h         	;.
	ram:5f12 e6 0f          and 00fh             	;. .
	ram:5f14 34             inc (hl)             	;4
	ram:5f15 4f             ld c,a               	;O
	ram:5f16 78             ld a,b               	;x
	ram:5f17 06 00          ld b,000h            	;. .
	ram:5f19 21 85 80       ld hl,08085h         	;! . .
	ram:5f1c cb 39          srl c                	;. 9
	ram:5f1e d4 c7 21       call nc,021c7h       	;. . !
	ram:5f21 09             add hl,bc            	;.
	ram:5f22 86             add a,(hl)           	;.
	ram:5f23 77             ld (hl),a            	;w
l5f24h:
	ram:5f24 21 82 80       ld hl,08082h         	;! . .
	ram:5f27 cb 7e          bit 7,(hl)           	;. ~
	ram:5f29 c0             ret nz               	;.
	ram:5f2a c3 90 25       jp 02590h            	;. . %
sub_5f2dh:
	ram:5f2d 7e             ld a,(hl)            	;~
	ram:5f2e fe 40          cp 040h              	;. @
	ram:5f30 d2 1c 0a       jp nc,00a1ch         	;. . .
sub_5f33h:
	ram:5f33 21 85 80       ld hl,08085h         	;! . .
	ram:5f36 06 08          ld b,008h            	;. .
l5f38h:
	ram:5f38 7e             ld a,(hl)            	;~
	ram:5f39 ba             cp d                 	;.
	ram:5f3a 28 0b          jr z,l5f47h          	;( .
	ram:5f3c d2 20 0a       jp nc,00a20h         	;.   .
	ram:5f3f 0f             rrca                 	;.
	ram:5f40 0f             rrca                 	;.
	ram:5f41 0f             rrca                 	;.
	ram:5f42 0f             rrca                 	;.
	ram:5f43 ba             cp d                 	;.
	ram:5f44 d2 20 0a       jp nc,00a20h         	;.   .
l5f47h:
	ram:5f47 23             inc hl               	;#
	ram:5f48 10 ee          djnz l5f38h          	;. .
	ram:5f4a 7b             ld a,e               	;{
	ram:5f4b b7             or a                 	;.
	ram:5f4c c8             ret z                	;.
	ram:5f4d ed 4b 83 80    ld bc,(08083h)       	;. K . .
l5f51h:
	ram:5f51 21 0f fc       ld hl,0fc0fh         	;! . .
	ram:5f54 af             xor a                	;.
	ram:5f55 ed 42          sbc hl,bc            	;. B
	ram:5f57 28 09          jr z,l5f62h          	;( .
	ram:5f59 da 08 0a       jp c,00a08h          	;. . .
	ram:5f5c cd e0 21       call 021e0h          	;. . !
	ram:5f5f 03             inc bc               	;.
	ram:5f60 18 ef          jr l5f51h            	;. .
l5f62h:
	ram:5f62 32 82 80       ld (08082h),a        	;2 . .
	ram:5f65 7b             ld a,e               	;{
	ram:5f66 cd 88 40       call l4088h          	;. . @
	ram:5f69 c9             ret                  	;.
l5f6ah:
	ram:5f6a fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:5f6e c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:5f71 cd 0b 00       call 0000bh          	;. . .
	ram:5f74 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:5f77 11 00 00       ld de,00000h         	;. . .
l5f7ah:
	ram:5f7a cd 6e 74       call sub_746eh       	;. n t
	ram:5f7d da 1c 0a       jp c,00a1ch          	;. . .
	ram:5f80 b7             or a                 	;.
	ram:5f81 28 03          jr z,l5f86h          	;( .
	ram:5f83 13             inc de               	;.
	ram:5f84 18 f4          jr l5f7ah            	;. .
l5f86h:
	ram:5f86 eb             ex de,hl             	;.
	ram:5f87 e5             push hl              	;.
	ram:5f88 cd 17 2a       call 02a17h          	;. . *
	ram:5f8b 13             inc de               	;.
	ram:5f8c 13             inc de               	;.
	ram:5f8d c1             pop bc               	;.
	ram:5f8e 79             ld a,c               	;y
	ram:5f8f b0             or b                 	;.
	ram:5f90 28 07          jr z,l5f99h          	;( .
	ram:5f92 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:5f95 ed 42          sbc hl,bc            	;. B
	ram:5f97 ed b0          ldir                 	;. .
l5f99h:
	ram:5f99 cd 56 20       call 02056h          	;. V  
	ram:5f9c c3 92 5d       jp l5d92h            	;. . ]
l5f9fh:
	ram:5f9f fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:5fa3 c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:5fa6 fd cb 06 6e    bit 5,(iy+006h)      	;. . . n
	ram:5faa 20 52          jr nz,l5ffeh         	;R
	ram:5fac f5             push af              	;.
	ram:5fad fd cb 06 7e    bit 7,(iy+006h)      	;. . . ~
	ram:5fb1 20 31          jr nz,l5fe4h         	;1
	ram:5fb3 fd cb 06 76    bit 6,(iy+006h)      	;. . . v
	ram:5fb7 28 1a          jr z,l5fd3h          	;( .
	ram:5fb9 fd cb 06 fe    set 7,(iy+006h)      	;. . . .
l5fbdh:
	ram:5fbd cd 0b 00       call 0000bh          	;. . .
	ram:5fc0 20 3c          jr nz,l5ffeh         	;<
	ram:5fc2 cd 89 74       call sub_7489h       	;. . t
	ram:5fc5 fe 0c          cp 00ch              	;. .
	ram:5fc7 20 35          jr nz,l5ffeh         	;5
	ram:5fc9 21 68 8a       ld hl,08a68h         	;! h .
	ram:5fcc 34             inc (hl)             	;4
	ram:5fcd c2 b6 69       jp nz,l69b6h         	;. . i
	ram:5fd0 c3 34 0a       jp 00a34h            	;. 4 .
l5fd3h:
	ram:5fd3 21 00 00       ld hl,00000h         	;! . .
	ram:5fd6 22 67 8a       ld (08a67h),hl       	;" g .
	ram:5fd9 fd 74 06       ld (iy+006h),h       	;. t .
	ram:5fdc fd cb 06 f6    set 6,(iy+006h)      	;. . . .
	ram:5fe0 f1             pop af               	;.
	ram:5fe1 c3 b2 69       jp l69b2h            	;. . i
l5fe4h:
	ram:5fe4 fd cb 06 76    bit 6,(iy+006h)      	;. . . v
	ram:5fe8 20 14          jr nz,l5ffeh         	;.
	ram:5fea fd cb 06 f6    set 6,(iy+006h)      	;. . . .
	ram:5fee 18 cd          jr l5fbdh            	;. .
l5ff0h:
	ram:5ff0 fd cb 06 76    bit 6,(iy+006h)      	;. . . v
	ram:5ff4 c2 6a 69       jp nz,l696ah         	;. j i
	ram:5ff7 fd cb 06 7e    bit 7,(iy+006h)      	;. . . ~
	ram:5ffb c2 6a 69       jp nz,l696ah         	;. j i
l5ffeh:
	ram:5ffe c3 1c 0a       jp 00a1ch            	;. . .
l6001h:
	ram:6001 fd 7e 06       ld a,(iy+006h)       	;. ~ .
	ram:6004 e6 e0          and 0e0h             	;. .
	ram:6006 20 f6          jr nz,l5ffeh         	;.
	ram:6008 fd 36 06 00    ld (iy+006h),000h    	;. 6 . .
	ram:600c fd cb 06 ee    set 5,(iy+006h)      	;. . . .
	ram:6010 3e 0e          ld a,00eh            	;> .
	ram:6012 c3 84 69       jp l6984h            	;. . i
l6015h:
	ram:6015 fd cb 06 6e    bit 5,(iy+006h)      	;. . . n
	ram:6019 28 e3          jr z,l5ffeh          	;( .
	ram:601b c3 6a 69       jp l696ah            	;. j i
l601eh:
	ram:601e f1             pop af               	;.
	ram:601f 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:6022 11 82 80       ld de,08082h         	;. . .
	ram:6025 cd a7 20       call 020a7h          	;. .  
	ram:6028 2b             dec hl               	;+
	ram:6029 22 61 8a       ld (08a61h),hl       	;" a .
	ram:602c 2a 83 80       ld hl,(08083h)       	;* . .
	ram:602f 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:6032 2a 85 80       ld hl,(08085h)       	;* . .
	ram:6035 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:6038 18 0f          jr l6049h            	;. .
l603ah:
	ram:603a f1             pop af               	;.
	ram:603b cd ea 2d       call 02deah          	;. . -
	ram:603e cd cf 2d       call 02dcfh          	;. . -
	ram:6041 cd 40 2e       call 02e40h          	;. @ .
	ram:6044 16 0b          ld d,00bh            	;. .
	ram:6046 cd 41 6a       call sub_6a41h       	;. A j
l6049h:
	ram:6049 c3 6d 69       jp l696dh            	;. m i
l604ch:
	ram:604c f5             push af              	;.
	ram:604d cd 1a 6a       call sub_6a1ah       	;. . j
	ram:6050 f1             pop af               	;.
	ram:6051 f5             push af              	;.
	ram:6052 cd d8 74       call sub_74d8h       	;. . t
	ram:6055 f1             pop af               	;.
	ram:6056 f5             push af              	;.
	ram:6057 fe 3c          cp 03ch              	;. <
	ram:6059 38 5b          jr c,l60b6h          	;8 [
	ram:605b 20 09          jr nz,l6066h         	;.
	ram:605d fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:6061 c4 aa 79       call nz,sub_79aah    	;. . y
	ram:6064 18 50          jr l60b6h            	;. P
l6066h:
	ram:6066 3a 84 80       ld a,(08084h)        	;: . .
	ram:6069 fe fe          cp 0feh              	;. .
	ram:606b 28 b1          jr z,l601eh          	;( .
	ram:606d fe fd          cp 0fdh              	;. .
	ram:606f 28 c9          jr z,l603ah          	;( .
	ram:6071 fe 33          cp 033h              	;. 3
	ram:6073 30 3e          jr nc,l60b3h         	;0 >
	ram:6075 fe 23          cp 023h              	;. #
	ram:6077 38 22          jr c,l609bh          	;8 "
	ram:6079 f1             pop af               	;.
	ram:607a cd 89 74       call sub_7489h       	;. . t
	ram:607d fe 0b          cp 00bh              	;. .
	ram:607f ca 28 0a       jp z,00a28h          	;. ( .
	ram:6082 b7             or a                 	;.
	ram:6083 20 0d          jr nz,l6092h         	;.
	ram:6085 cd a7 74       call sub_74a7h       	;. . t
	ram:6088 20 08          jr nz,l6092h         	;.
	ram:608a cd 82 74       call sub_7482h       	;. . t
	ram:608d fe 3f          cp 03fh              	;. ?
	ram:608f ca 28 0a       jp z,00a28h          	;. ( .
l6092h:
	ram:6092 3a 84 80       ld a,(08084h)        	;: . .
	ram:6095 cd 2b 63       call sub_632bh       	;. + c
	ram:6098 c3 92 5d       jp l5d92h            	;. . ]
l609bh:
	ram:609b fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:609f c4 b7 79       call nz,sub_79b7h    	;. . y
	ram:60a2 cd 7f 63       call sub_637fh       	;. . c
	ram:60a5 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:60a8 22 d0 80       ld (080d0h),hl       	;" . .
	ram:60ab cd 4a 63       call sub_634ah       	;. J c
	ram:60ae ca 24 0a       jp z,00a24h          	;. $ .
	ram:60b1 18 21          jr l60d4h            	;. !
l60b3h:
	ram:60b3 cd 4b 38       call 0384bh          	;. K 8
l60b6h:
	ram:60b6 f1             pop af               	;.
	ram:60b7 f5             push af              	;.
	ram:60b8 fe 32          cp 032h              	;. 2
	ram:60ba cc cb 79       call z,sub_79cbh     	;. . y
	ram:60bd 3e ff          ld a,0ffh            	;> .
	ram:60bf 32 82 80       ld (08082h),a        	;2 . .
	ram:60c2 d7             rst 10h              	;.
	ram:60c3 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:60c6 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:60ca cd f5 1f       call 01ff5h          	;. . .
	ram:60cd fd cb 03 5e    bit 3,(iy+003h)      	;. . . ^
	ram:60d1 c4 f2 79       call nz,sub_79f2h    	;. . y
l60d4h:
	ram:60d4 cd 89 74       call sub_7489h       	;. . t
	ram:60d7 fe 0b          cp 00bh              	;. .
	ram:60d9 ca 71 62       jp z,l6271h          	;. q b
	ram:60dc b7             or a                 	;.
	ram:60dd c2 64 61       jp nz,l6164h         	;. d a
	ram:60e0 cd a7 74       call sub_74a7h       	;. . t
	ram:60e3 c2 64 61       jp nz,l6164h         	;. d a
	ram:60e6 cd 47 1f       call 01f47h          	;. G .
	ram:60e9 fe 12          cp 012h              	;. .
	ram:60eb ca 4b 62       jp z,l624bh          	;. K b
	ram:60ee cd 82 74       call sub_7482h       	;. . t
	ram:60f1 fe 3f          cp 03fh              	;. ?
	ram:60f3 c2 64 61       jp nz,l6164h         	;. d a
	ram:60f6 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:60fa f1             pop af               	;.
	ram:60fb f5             push af              	;.
	ram:60fc fe 3c          cp 03ch              	;. <
	ram:60fe d2 49 0a       jp nc,00a49h         	;. I .
	ram:6101 3a 82 80       ld a,(08082h)        	;: . .
	ram:6104 cd 9c 66       call sub_669ch       	;. . f
	ram:6107 cd 35 74       call sub_7435h       	;. 5 t
	ram:610a 3a 82 80       ld a,(08082h)        	;: . .
	ram:610d fe ff          cp 0ffh              	;. .
	ram:610f 28 35          jr z,l6146h          	;( 5
	ram:6111 e5             push hl              	;.
	ram:6112 23             inc hl               	;#
	ram:6113 23             inc hl               	;#
	ram:6114 eb             ex de,hl             	;.
	ram:6115 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:6118 cb 76          bit 6,(hl)           	;. v
	ram:611a c4 1b 00       call nz,0001bh       	;. . .
	ram:611d cd 3c 63       call sub_633ch       	;. < c
	ram:6120 3e 0a          ld a,00ah            	;> .
	ram:6122 32 82 80       ld (08082h),a        	;2 . .
	ram:6125 cd 57 2a       call 02a57h          	;. W *
l6128h:
	ram:6128 c1             pop bc               	;.
	ram:6129 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:612c 71             ld (hl),c            	;q
	ram:612d 23             inc hl               	;#
	ram:612e 70             ld (hl),b            	;p
	ram:612f 23             inc hl               	;#
	ram:6130 eb             ex de,hl             	;.
	ram:6131 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:6134 78             ld a,b               	;x
	ram:6135 b1             or c                 	;.
	ram:6136 28 05          jr z,l613dh          	;( .
	ram:6138 ed 42          sbc hl,bc            	;. B
	ram:613a 23             inc hl               	;#
	ram:613b ed b0          ldir                 	;. .
l613dh:
	ram:613d f1             pop af               	;.
	ram:613e fe 3b          cp 03bh              	;. ;
	ram:6140 cc 07 67       call z,sub_6707h     	;. . g
	ram:6143 c3 92 5d       jp l5d92h            	;. . ]
l6146h:
	ram:6146 f1             pop af               	;.
	ram:6147 f5             push af              	;.
	ram:6148 fe 3b          cp 03bh              	;. ;
	ram:614a 20 08          jr nz,l6154h         	;.
	ram:614c 3a 85 80       ld a,(08085h)        	;: . .
	ram:614f fe 74          cp 074h              	;. t
	ram:6151 cc 84 67       call z,sub_6784h     	;. . g
l6154h:
	ram:6154 e5             push hl              	;.
	ram:6155 cd 2f 2a       call 02a2fh          	;. / *
	ram:6158 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:615c 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:615f cd 56 20       call 02056h          	;. V  
	ram:6162 18 c4          jr l6128h            	;. .
l6164h:
	ram:6164 3a 82 80       ld a,(08082h)        	;: . .
	ram:6167 fe ff          cp 0ffh              	;. .
	ram:6169 ca aa 62       jp z,l62aah          	;. . b
	ram:616c e6 1f          and 01fh             	;. .
	ram:616e fe 12          cp 012h              	;. .
	ram:6170 28 41          jr z,l61b3h          	;( A
	ram:6172 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:6176 28 05          jr z,l617dh          	;( .
	ram:6178 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:617b cb f6          set 6,(hl)           	;. .
l617dh:
	ram:617d fe 0a          cp 00ah              	;. .
	ram:617f e1             pop hl               	;.
	ram:6180 ca 65 62       jp z,l6265h          	;. e b
	ram:6183 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:6187 28 0b          jr z,l6194h          	;( .
	ram:6189 cd 52 7a       call sub_7a52h       	;. R z
	ram:618c 28 06          jr z,l6194h          	;( .
	ram:618e cd 58 7a       call sub_7a58h       	;. X z
	ram:6191 ca 4d 0a       jp z,00a4dh          	;. M .
l6194h:
	ram:6194 fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:6198 cd 47 1f       call 01f47h          	;. G .
	ram:619b fe 02          cp 002h              	;. .
	ram:619d 38 17          jr c,l61b6h          	;8 .
	ram:619f fe 08          cp 008h              	;. .
	ram:61a1 da f1 61       jp c,l61f1h          	;. . a
	ram:61a4 fe 0a          cp 00ah              	;. .
	ram:61a6 38 0e          jr c,l61b6h          	;8 .
	ram:61a8 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:61ac c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:61af fe 0c          cp 00ch              	;. .
	ram:61b1 28 3b          jr z,l61eeh          	;( ;
l61b3h:
	ram:61b3 c3 28 0a       jp 00a28h            	;. ( .
l61b6h:
	ram:61b6 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:61ba 28 28          jr z,l61e4h          	;( (
	ram:61bc cd 52 7a       call sub_7a52h       	;. R z
	ram:61bf 20 23          jr nz,l61e4h         	;#
	ram:61c1 cd 58 7a       call sub_7a58h       	;. X z
	ram:61c4 28 0f          jr z,l61d5h          	;( .
	ram:61c6 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:61c9 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:61cd cd cd 67       call sub_67cdh       	;. . g
	ram:61d0 cd 2c 6c       call sub_6c2ch       	;. , l
	ram:61d3 18 19          jr l61eeh            	;. .
l61d5h:
	ram:61d5 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:61d8 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:61dc cd cd 67       call sub_67cdh       	;. . g
	ram:61df cd 5b 6c       call sub_6c5bh       	;. [ l
	ram:61e2 18 0a          jr l61eeh            	;. .
l61e4h:
	ram:61e4 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:61e7 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:61eb cd cd 67       call sub_67cdh       	;. . g
l61eeh:
	ram:61ee c3 6d 69       jp l696dh            	;. m i
l61f1h:
	ram:61f1 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:61f5 28 3c          jr z,l6233h          	;( <
	ram:61f7 cd 52 7a       call sub_7a52h       	;. R z
	ram:61fa 20 37          jr nz,l6233h         	;7
	ram:61fc cd 58 7a       call sub_7a58h       	;. X z
	ram:61ff 20 13          jr nz,l6214h         	;.
	ram:6201 cd 82 74       call sub_7482h       	;. . t
	ram:6204 fe 10          cp 010h              	;. .
	ram:6206 28 09          jr z,l6211h          	;( .
	ram:6208 3a 82 80       ld a,(08082h)        	;: . .
	ram:620b e6 1e          and 01eh             	;. .
	ram:620d fe 04          cp 004h              	;. .
	ram:620f 28 0a          jr z,l621bh          	;( .
l6211h:
	ram:6211 c3 4d 0a       jp 00a4dh            	;. M .
l6214h:
	ram:6214 cd 82 74       call sub_7482h       	;. . t
	ram:6217 fe 10          cp 010h              	;. .
	ram:6219 28 1f          jr z,l623ah          	;( .
l621bh:
	ram:621b cd 58 7a       call sub_7a58h       	;. X z
	ram:621e 20 05          jr nz,l6225h         	;.
	ram:6220 cd 5b 6c       call sub_6c5bh       	;. [ l
	ram:6223 18 c9          jr l61eeh            	;. .
l6225h:
	ram:6225 3a 82 80       ld a,(08082h)        	;: . .
	ram:6228 e6 1e          and 01eh             	;. .
	ram:622a fe 04          cp 004h              	;. .
	ram:622c 20 e3          jr nz,l6211h         	;.
	ram:622e cd 2c 6c       call sub_6c2ch       	;. , l
	ram:6231 18 bb          jr l61eeh            	;. .
l6233h:
	ram:6233 cd 82 74       call sub_7482h       	;. . t
	ram:6236 fe 10          cp 010h              	;. .
	ram:6238 20 68          jr nz,l62a2h         	;h
l623ah:
	ram:623a 2a 2f 86       ld hl,(0862fh)       	;* / .
	ram:623d 23             inc hl               	;#
	ram:623e 22 2f 86       ld (0862fh),hl       	;" / .
	ram:6241 cd 6e 74       call sub_746eh       	;. n t
l6244h:
	ram:6244 16 2d          ld d,02dh            	;. -
	ram:6246 cd 41 6a       call sub_6a41h       	;. A j
	ram:6249 18 a3          jr l61eeh            	;. .
l624bh:
	ram:624b e1             pop hl               	;.
	ram:624c cd fa 74       call sub_74fah       	;. . t
	ram:624f c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:6252 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6255 fe 08          cp 008h              	;. .
	ram:6257 28 06          jr z,l625fh          	;( .
	ram:6259 cd c3 3e       call 03ec3h          	;. . >
	ram:625c cd c7 3d       call 03dc7h          	;. . =
l625fh:
	ram:625f cd 54 5b       call sub_5b54h       	;. T [
	ram:6262 c3 6d 69       jp l696dh            	;. m i
l6265h:
	ram:6265 cd 57 5b       call l5b57h          	;. W [
	ram:6268 cd 9c 26       call 0269ch          	;. . &
	ram:626b cd 41 5d       call sub_5d41h       	;. A ]
	ram:626e c3 6d 69       jp l696dh            	;. m i
l6271h:
	ram:6271 cd fa 74       call sub_74fah       	;. . t
	ram:6274 28 22          jr z,l6298h          	;( "
	ram:6276 cd 6e 74       call sub_746eh       	;. n t
	ram:6279 fe 10          cp 010h              	;. .
	ram:627b c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:627e 3a 82 80       ld a,(08082h)        	;: . .
	ram:6281 cd 9c 66       call sub_669ch       	;. . f
	ram:6284 47             ld b,a               	;G
	ram:6285 f1             pop af               	;.
	ram:6286 32 82 80       ld (08082h),a        	;2 . .
	ram:6289 fe 3b          cp 03bh              	;. ;
	ram:628b 38 b7          jr c,l6244h          	;8 .
	ram:628d fe 3d          cp 03dh              	;. =
	ram:628f 20 04          jr nz,l6295h         	;.
	ram:6291 cb 00          rlc b                	;. .
	ram:6293 20 af          jr nz,l6244h         	;.
l6295h:
	ram:6295 c3 49 0a       jp 00a49h            	;. I .
l6298h:
	ram:6298 cd a8 2d       call 02da8h          	;. . -
	ram:629b f1             pop af               	;.
	ram:629c cd 6a 64       call sub_646ah       	;. j d
	ram:629f c3 92 5d       jp l5d92h            	;. . ]
l62a2h:
	ram:62a2 06 00          ld b,000h            	;. .
	ram:62a4 cd fb 67       call sub_67fbh       	;. . g
	ram:62a7 c3 6d 69       jp l696dh            	;. m i
l62aah:
	ram:62aa f1             pop af               	;.
	ram:62ab fe 3c          cp 03ch              	;. <
	ram:62ad 20 3d          jr nz,l62ech         	;=
	ram:62af cd b5 62       call sub_62b5h       	;. . b
	ram:62b2 c3 92 5d       jp l5d92h            	;. . ]
sub_62b5h:
	ram:62b5 06 0f          ld b,00fh            	;. .
	ram:62b7 21 ef 62       ld hl,l62efh         	;! . b
l62bah:
	ram:62ba 11 83 80       ld de,08083h         	;. . .
	ram:62bd c5             push bc              	;.
	ram:62be 46             ld b,(hl)            	;F
	ram:62bf 04             inc b                	;.
l62c0h:
	ram:62c0 1a             ld a,(de)            	;.
	ram:62c1 be             cp (hl)              	;.
	ram:62c2 13             inc de               	;.
	ram:62c3 23             inc hl               	;#
	ram:62c4 20 1f          jr nz,l62e5h         	;.
	ram:62c6 10 f8          djnz l62c0h          	;. .
	ram:62c8 c1             pop bc               	;.
	ram:62c9 6e             ld l,(hl)            	;n
	ram:62ca e5             push hl              	;.
	ram:62cb cd 0d 26       call 0260dh          	;. . &
	ram:62ce d7             rst 10h              	;.
	ram:62cf 38 1b          jr c,l62ech          	;8 .
	ram:62d1 1a             ld a,(de)            	;.
	ram:62d2 c1             pop bc               	;.
	ram:62d3 b9             cp c                 	;.
	ram:62d4 38 16          jr c,l62ech          	;8 .
	ram:62d6 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:62da 28 02          jr z,l62deh          	;( .
	ram:62dc cb f6          set 6,(hl)           	;. .
l62deh:
	ram:62de 69             ld l,c               	;i
	ram:62df 26 00          ld h,000h            	;& .
	ram:62e1 cd 2f 39       call 0392fh          	;. / 9
	ram:62e4 c9             ret                  	;.
l62e5h:
	ram:62e5 48             ld c,b               	;H
	ram:62e6 06 00          ld b,000h            	;. .
	ram:62e8 09             add hl,bc            	;.
	ram:62e9 c1             pop bc               	;.
	ram:62ea 10 ce          djnz l62bah          	;. .
l62ech:
	ram:62ec c3 38 0a       jp 00a38h            	;. 8 .
l62efh:
	ram:62ef 01 cb 02       ld bc,002cbh         	;. . .
	ram:62f2 02             ld (bc),a            	;.
	ram:62f3 c6 78          add a,078h           	;. x
	ram:62f5 03             inc bc               	;.
	ram:62f6 03             inc bc               	;.
	ram:62f7 c6 78          add a,078h           	;. x
	ram:62f9 12             ld (de),a            	;.
	ram:62fa 04             inc b                	;.
	ram:62fb 02             ld (bc),a            	;.
	ram:62fc 53             ld d,e               	;S
	ram:62fd 78             ld a,b               	;x
	ram:62fe 05             dec b                	;.
	ram:62ff 02             ld (bc),a            	;.
	ram:6300 c7             rst 0                	;.
	ram:6301 78             ld a,b               	;x
	ram:6302 06 01          ld b,001h            	;. .
	ram:6304 6e             ld l,(hl)            	;n
	ram:6305 01 01 cc       ld bc,0cc01h         	;. . .
	ram:6308 07             rlca                 	;.
	ram:6309 02             ld (bc),a            	;.
	ram:630a c6 79          add a,079h           	;. y
	ram:630c 08             ex af,af'            	;.
	ram:630d 03             inc bc               	;.
	ram:630e c6 79          add a,079h           	;. y
	ram:6310 12             ld (de),a            	;.
	ram:6311 09             add hl,bc            	;.
	ram:6312 03             inc bc               	;.
	ram:6313 c6 78          add a,078h           	;. x
	ram:6315 79             ld a,c               	;y
	ram:6316 0a             ld a,(bc)            	;.
	ram:6317 02             ld (bc),a            	;.
	ram:6318 53             ld d,e               	;S
	ram:6319 79             ld a,c               	;y
	ram:631a 0b             dec bc               	;.
	ram:631b 02             ld (bc),a            	;.
	ram:631c c7             rst 0                	;.
	ram:631d 79             ld a,c               	;y
	ram:631e 0c             inc c                	;.
	ram:631f 04             inc b                	;.
	ram:6320 63             ld h,e               	;c
	ram:6321 6f             ld l,a               	;o
	ram:6322 72             ld (hl),d            	;r
	ram:6323 72             ld (hl),d            	;r
	ram:6324 0d             dec c                	;.
	ram:6325 01 61 0e       ld bc,00e61h         	;. a .
	ram:6328 01 62 0f       ld bc,00f62h         	;. b .
sub_632bh:
	ram:632b d6 23          sub 023h             	;. #
	ram:632d 6f             ld l,a               	;o
	ram:632e 26 00          ld h,000h            	;& .
	ram:6330 cd 33 1f       call 01f33h          	;. 3 .
	ram:6333 11 1c 56       ld de,l561ch         	;. . V
	ram:6336 19             add hl,de            	;.
	ram:6337 e7             rst 20h              	;.
	ram:6338 c9             ret                  	;.
sub_6339h:
	ram:6339 2a d9 8b       ld hl,(08bd9h)       	;* . .
sub_633ch:
	ram:633c 7e             ld a,(hl)            	;~
	ram:633d e6 1f          and 01fh             	;. .
	ram:633f fe 14          cp 014h              	;. .
	ram:6341 c0             ret nz               	;.
	ram:6342 7e             ld a,(hl)            	;~
	ram:6343 e6 e0          and 0e0h             	;. .
	ram:6345 77             ld (hl),a            	;w
	ram:6346 32 a3 80       ld (080a3h),a        	;2 . .
	ram:6349 c9             ret                  	;.
sub_634ah:
	ram:634a 3a 84 80       ld a,(08084h)        	;: . .
	ram:634d 01 08 00       ld bc,00008h         	;. . .
	ram:6350 21 74 63       ld hl,l6374h         	;! t c
	ram:6353 cd 7a 00       call 0007ah          	;. z .
	ram:6356 20 19          jr nz,l6371h         	;.
	ram:6358 21 77 63       ld hl,l6377h         	;! w c
	ram:635b 01 05 00       ld bc,00005h         	;. . .
	ram:635e cd 7f 00       call 0007fh          	;. . .
	ram:6361 20 0e          jr nz,l6371h         	;.
	ram:6363 21 7a 63       ld hl,l637ah         	;! z c
l6366h:
	ram:6366 cd 84 00       call 00084h          	;. . .
	ram:6369 20 06          jr nz,l6371h         	;.
	ram:636b 21 74 63       ld hl,l6374h         	;! t c
	ram:636e 01 03 00       ld bc,00003h         	;. . .
l6371h:
	ram:6371 ed b1          cpir                 	;. .
	ram:6373 c9             ret                  	;.
l6374h:
	ram:6374 0f             rrca                 	;.
	ram:6375 10 0b          djnz 13              	;. .
l6377h:
	ram:6377 08             ex af,af'            	;.
	ram:6378 09             add hl,bc            	;.
	ram:6379 0a             ld a,(bc)            	;.
l637ah:
	ram:637a 20 0e          jr nz,16             	;.
	ram:637c 0f             rrca                 	;.
	ram:637d 10 0b          djnz 13              	;. .
sub_637fh:
	ram:637f f5             push af              	;.
	ram:6380 21 a8 63       ld hl,l63a8h         	;! . c
	ram:6383 87             add a,a              	;.
	ram:6384 5f             ld e,a               	;_
	ram:6385 16 00          ld d,000h            	;. .
	ram:6387 19             add hl,de            	;.
	ram:6388 cd 33 00       call 00033h          	;. 3 .
	ram:638b f1             pop af               	;.
	ram:638c fe 02          cp 002h              	;. .
	ram:638e d8             ret c                	;.
	ram:638f fe 08          cp 008h              	;. .
	ram:6391 da 33 00       jp c,00033h          	;. 3 .
	ram:6394 fe 0b          cp 00bh              	;. .
	ram:6396 d0             ret nc               	;.
	ram:6397 cd 89 00       call 00089h          	;. . .
	ram:639a c8             ret z                	;.
	ram:639b d6 07          sub 007h             	;. .
	ram:639d 21 7a 85       ld hl,0857ah         	;! z .
	ram:63a0 11 0a 00       ld de,0000ah         	;. . .
l63a3h:
	ram:63a3 19             add hl,de            	;.
	ram:63a4 3d             dec a                	;=
	ram:63a5 20 fc          jr nz,l63a3h         	;.
	ram:63a7 c9             ret                  	;.
l63a8h:
	ram:63a8 e8             ret pe               	;.
	ram:63a9 83             add a,e              	;.
	ram:63aa 06 84          ld b,084h            	;. .
	ram:63ac 6d             ld l,l               	;m
	ram:63ad 83             add a,e              	;.
	ram:63ae 73             ld (hl),e            	;s
	ram:63af 83             add a,e              	;.
	ram:63b0 69             ld l,c               	;i
	ram:63b1 83             add a,e              	;.
	ram:63b2 6b             ld l,e               	;k
	ram:63b3 83             add a,e              	;.
	ram:63b4 6f             ld l,a               	;o
	ram:63b5 83             add a,e              	;.
	ram:63b6 71             ld (hl),c            	;q
	ram:63b7 83             add a,e              	;.
	ram:63b8 13             inc de               	;.
	ram:63b9 85             add a,l              	;.
	ram:63ba 1d             dec e                	;.
	ram:63bb 85             add a,l              	;.
	ram:63bc 27             daa                  	;'
	ram:63bd 85             add a,l              	;.
	ram:63be ca 84 ca       jp z,0ca84h          	;. . .
	ram:63c1 83             add a,e              	;.
	ram:63c2 a2             and d                	;.
	ram:63c3 83             add a,e              	;.
	ram:63c4 7a             ld a,d               	;z
	ram:63c5 85             add a,l              	;.
	ram:63c6 b6             or (hl)              	;.
	ram:63c7 84             add a,h              	;.
	ram:63c8 c0             ret nz               	;.
	ram:63c9 84             add a,h              	;.
	ram:63ca d4 83 de       call nc,0de83h       	;. . .
	ram:63cd 83             add a,e              	;.
	ram:63ce f2 83 fc       jp p,0fc83h          	;. . .
	ram:63d1 83             add a,e              	;.
	ram:63d2 ac             xor h                	;.
	ram:63d3 83             add a,e              	;.
	ram:63d4 8e             adc a,(hl)           	;.
	ram:63d5 83             add a,e              	;.
	ram:63d6 98             sbc a,b              	;.
	ram:63d7 83             add a,e              	;.
	ram:63d8 b6             or (hl)              	;.
	ram:63d9 83             add a,e              	;.
	ram:63da c0             ret nz               	;.
	ram:63db 83             add a,e              	;.
	ram:63dc 9f             sbc a,a              	;.
	ram:63dd 84             add a,h              	;.
	ram:63de a9             xor c                	;.
	ram:63df 84             add a,h              	;.
	ram:63e0 38 84          jr c,l6366h          	;8 .
	ram:63e2 42             ld b,d               	;B
	ram:63e3 84             add a,h              	;.
	ram:63e4 24             inc h                	;$
	ram:63e5 84             add a,h              	;.
	ram:63e6 2e 84          ld l,084h            	;. .
	ram:63e8 70             ld (hl),b            	;p
	ram:63e9 85             add a,l              	;.
	ram:63ea 1a             ld a,(de)            	;.
	ram:63eb 84             add a,h              	;.
	djnz -122		;63ec	10 84		. .
	ram:63ee f5             push af              	;.
	ram:63ef df             rst 18h              	;.
	ram:63f0 3e 01          ld a,001h            	;> .
	ram:63f2 32 a4 80       ld (080a4h),a        	;2 . .
	ram:63f5 f1             pop af               	;.
	ram:63f6 32 a5 80       ld (080a5h),a        	;2 . .
	ram:63f9 cd 7f 63       call sub_637fh       	;. . c
	ram:63fc 22 d0 80       ld (080d0h),hl       	;" . .
	ram:63ff cd 82 64       call sub_6482h       	;. . d
	ram:6402 c9             ret                  	;.
	ram:6403 3e ff          ld a,0ffh            	;> .
	ram:6405 32 82 80       ld (08082h),a        	;2 . .
	ram:6408 d7             rst 10h              	;.
	ram:6409 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:640c ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6410 3a 82 80       ld a,(08082h)        	;: . .
	ram:6413 cd af 66       call sub_66afh       	;. . f
	ram:6416 cd f5 1f       call 01ff5h          	;. . .
	ram:6419 cd 24 2f       call 02f24h          	;. $ /
	ram:641c 3a 82 80       ld a,(08082h)        	;: . .
	ram:641f f6 08          or 008h              	;. .
	ram:6421 32 82 80       ld (08082h),a        	;2 . .
	ram:6424 c3 93 65       jp l6593h            	;. . e
sub_6427h:
	ram:6427 df             rst 18h              	;.
	ram:6428 cd 45 7a       call sub_7a45h       	;. E z
	ram:642b 18 2e          jr sub_645bh         	;. .
	ram:642d f5             push af              	;.
	ram:642e df             rst 18h              	;.
	ram:642f f1             pop af               	;.
	ram:6430 f5             push af              	;.
	ram:6431 cd c9 35       call 035c9h          	;. . 5
	ram:6434 cd 5b 64       call sub_645bh       	;. [ d
	ram:6437 f1             pop af               	;.
	ram:6438 c9             ret                  	;.
	ram:6439 df             rst 18h              	;.
	ram:643a cd 38 26       call 02638h          	;. 8 &
	ram:643d 18 1c          jr sub_645bh         	;. .
	ram:643f df             rst 18h              	;.
	ram:6440 cd 3d 26       call 0263dh          	;. = &
	ram:6443 18 16          jr sub_645bh         	;. .
	ram:6445 df             rst 18h              	;.
	ram:6446 cd 43 26       call 02643h          	;. C &
	ram:6449 18 10          jr sub_645bh         	;. .
	ram:644b df             rst 18h              	;.
	ram:644c cd 4f 26       call 0264fh          	;. O &
	ram:644f 18 0a          jr sub_645bh         	;. .
	ram:6451 df             rst 18h              	;.
	ram:6452 cd 54 26       call 02654h          	;. T &
	ram:6455 18 04          jr sub_645bh         	;. .
	ram:6457 df             rst 18h              	;.
	ram:6458 cd 48 26       call 02648h          	;. H &
sub_645bh:
	ram:645b 3e ff          ld a,0ffh            	;> .
	ram:645d 32 82 80       ld (08082h),a        	;2 . .
	ram:6460 d7             rst 10h              	;.
	ram:6461 3e 33          ld a,033h            	;> 3
	ram:6463 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:6466 ed 53 d0 80    ld (080d0h),de       	;. S . .
sub_646ah:
	ram:646a f5             push af              	;.
	ram:646b 3a 82 80       ld a,(08082h)        	;: . .
	ram:646e cd 9c 66       call sub_669ch       	;. . f
	ram:6471 cd f5 1f       call 01ff5h          	;. . .
	ram:6474 cd 24 2f       call 02f24h          	;. $ /
	ram:6477 f1             pop af               	;.
	ram:6478 fe 3b          cp 03bh              	;. ;
	ram:647a da 7c 65       jp c,l657ch          	;. | e
	ram:647d fe 3d          cp 03dh              	;. =
	ram:647f c2 49 0a       jp nz,00a49h         	;. I .
sub_6482h:
	ram:6482 3a a4 80       ld a,(080a4h)        	;: . .
	ram:6485 fe 05          cp 005h              	;. .
	ram:6487 3a 82 80       ld a,(08082h)        	;: . .
	ram:648a ca 75 65       jp z,l6575h          	;. u e
	ram:648d e6 1f          and 01fh             	;. .
	ram:648f c2 28 0a       jp nz,00a28h         	;. ( .
	ram:6492 3a a5 80       ld a,(080a5h)        	;: . .
	ram:6495 f5             push af              	;.
	ram:6496 fe 23          cp 023h              	;. #
	ram:6498 d2 49 0a       jp nc,00a49h         	;. I .
	ram:649b fe 04          cp 004h              	;. .
	ram:649d da 3e 65       jp c,l653eh          	;. > e
	ram:64a0 fe 0a          cp 00ah              	;. .
	ram:64a2 38 15          jr c,l64b9h          	;8 .
	ram:64a4 fe 0e          cp 00eh              	;. .
	ram:64a6 30 0d          jr nc,l64b5h         	;0 .
	ram:64a8 cd d1 23       call 023d1h          	;. . #
	ram:64ab 28 1c          jr z,l64c9h          	;( .
	ram:64ad c3 3e 65       jp l653eh            	;. > e
	ram:64b0 3e ff          ld a,0ffh            	;> .
sub_64b2h:
	ram:64b2 f5             push af              	;.
	ram:64b3 18 07          jr l64bch            	;. .
l64b5h:
	ram:64b5 fe 1c          cp 01ch              	;. .
	ram:64b7 30 13          jr nc,l64cch         	;0 .
l64b9h:
	ram:64b9 cd f4 2d       call 02df4h          	;. . -
l64bch:
	ram:64bc cd e0 11       call 011e0h          	;. . .
	ram:64bf 2a 83 80       ld hl,(08083h)       	;* . .
	ram:64c2 11 18 00       ld de,00018h         	;. . .
	ram:64c5 19             add hl,de            	;.
	ram:64c6 d2 41 65       jp nc,l6541h         	;. A e
l64c9h:
	ram:64c9 c3 14 0a       jp 00a14h            	;. . .
l64cch:
	ram:64cc 21 7e 00       ld hl,0007eh         	;! ~ .
	ram:64cf ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:64d3 06 05          ld b,005h            	;. .
	ram:64d5 28 0d          jr z,l64e4h          	;( .
	ram:64d7 fe 1d          cp 01dh              	;. .
	ram:64d9 20 3e          jr nz,l6519h         	;>
	ram:64db 21 3e 00       ld hl,0003eh         	;! > .
	ram:64de ed 5b 6f 83    ld de,(0836fh)       	;. [ o .
	ram:64e2 06 07          ld b,007h            	;. .
l64e4h:
	ram:64e4 c5             push bc              	;.
	ram:64e5 d5             push de              	;.
	ram:64e6 cd ef 39       call 039efh          	;. . 9
	ram:64e9 cd d1 23       call 023d1h          	;. . #
	ram:64ec 28 db          jr z,l64c9h          	;( .
	ram:64ee cd 68 25       call 02568h          	;. h %
	ram:64f1 20 d6          jr nz,l64c9h         	;.
	ram:64f3 ef             rst 28h              	;.
	ram:64f4 e1             pop hl               	;.
	ram:64f5 cd 0b 21       call 0210bh          	;. . !
	ram:64f8 e5             push hl              	;.
	ram:64f9 f7             rst 30h              	;.
	ram:64fa 2a 83 80       ld hl,(08083h)       	;* . .
	ram:64fd 11 18 00       ld de,00018h         	;. . .
	ram:6500 19             add hl,de            	;.
	ram:6501 38 c6          jr c,l64c9h          	;8 .
	ram:6503 cd 9b 25       call 0259bh          	;. . %
	ram:6506 e1             pop hl               	;.
	ram:6507 f1             pop af               	;.
	ram:6508 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:650c d5             push de              	;.
	ram:650d 22 d0 80       ld (080d0h),hl       	;" . .
	ram:6510 cd b2 64       call sub_64b2h       	;. . d
	ram:6513 e1             pop hl               	;.
	ram:6514 22 d0 80       ld (080d0h),hl       	;" . .
	ram:6517 18 25          jr l653eh            	;. %
l6519h:
	ram:6519 fe 20          cp 020h              	;.  
	ram:651b 28 0c          jr z,l6529h          	;( .
	ram:651d 30 15          jr nc,l6534h         	;0 .
	ram:651f cd 66 21       call 02166h          	;. f !
l6522h:
	ram:6522 cd 8e 1f       call 01f8eh          	;. . .
	ram:6525 38 a2          jr c,l64c9h          	;8 .
	ram:6527 18 15          jr l653eh            	;. .
l6529h:
	ram:6529 cd 66 21       call 02166h          	;. f !
	ram:652c 21 f4 fb       ld hl,0fbf4h         	;! . .
	ram:652f 22 8e 80       ld (0808eh),hl       	;" . .
	ram:6532 18 ee          jr l6522h            	;. .
l6534h:
	ram:6534 cd 68 25       call 02568h          	;. h %
	ram:6537 20 90          jr nz,l64c9h         	;.
	ram:6539 cd d1 23       call 023d1h          	;. . #
	ram:653c 28 8b          jr z,l64c9h          	;( .
l653eh:
	ram:653e cd f4 2d       call 02df4h          	;. . -
l6541h:
	ram:6541 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:6544 cd 38 75       call sub_7538h       	;. 8 u
	ram:6547 f5             push af              	;.
	ram:6548 7e             ld a,(hl)            	;~
	ram:6549 f5             push af              	;.
	ram:654a eb             ex de,hl             	;.
	ram:654b cd 11 21       call 02111h          	;. . !
	ram:654e 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:6551 cb b6          res 6,(hl)           	;. .
	ram:6553 f1             pop af               	;.
	ram:6554 e6 40          and 040h             	;. @
	ram:6556 28 0a          jr z,l6562h          	;( .
	ram:6558 cb f6          set 6,(hl)           	;. .
	ram:655a f1             pop af               	;.
	ram:655b 28 08          jr z,l6565h          	;( .
	ram:655d cd 1b 00       call 0001bh          	;. . .
	ram:6560 18 05          jr l6567h            	;. .
l6562h:
	ram:6562 f1             pop af               	;.
	ram:6563 20 02          jr nz,l6567h         	;.
l6565h:
	ram:6565 f1             pop af               	;.
	ram:6566 c9             ret                  	;.
l6567h:
	ram:6567 f1             pop af               	;.
	ram:6568 f5             push af              	;.
	ram:6569 fe 04          cp 004h              	;. .
	ram:656b cc 43 37       call z,03743h        	;. C 7
	ram:656e f1             pop af               	;.
	ram:656f fe 05          cp 005h              	;. .
	ram:6571 cc 43 37       call z,03743h        	;. C 7
	ram:6574 c9             ret                  	;.
l6575h:
	ram:6575 e6 1f          and 01fh             	;. .
	ram:6577 fe 04          cp 004h              	;. .
	ram:6579 c2 28 0a       jp nz,00a28h         	;. ( .
l657ch:
	ram:657c cd 47 1f       call 01f47h          	;. G .
	ram:657f fe 02          cp 002h              	;. .
	ram:6581 38 10          jr c,l6593h          	;8 .
	ram:6583 fe 0d          cp 00dh              	;. .
	ram:6585 d2 1c 0a       jp nc,00a1ch         	;. . .
	ram:6588 d7             rst 10h              	;.
	ram:6589 da 38 0a       jp c,00a38h          	;. 8 .
	ram:658c 22 db 8b       ld (08bdbh),hl       	;" . .
	ram:658f ed 53 d2 80    ld (080d2h),de       	;. S . .
l6593h:
	ram:6593 3a a3 80       ld a,(080a3h)        	;: . .
	ram:6596 fe ff          cp 0ffh              	;. .
	ram:6598 28 13          jr z,l65adh          	;( .
	ram:659a 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:659d 7e             ld a,(hl)            	;~
	ram:659e f5             push af              	;.
	ram:659f cd 3c 63       call sub_633ch       	;. < c
	ram:65a2 cd 4e 2a       call 02a4eh          	;. N *
	ram:65a5 cd 07 20       call 02007h          	;. .  
	ram:65a8 cd cf 35       call 035cfh          	;. . 5
	ram:65ab 18 6b          jr l6618h            	;. k
l65adh:
	ram:65ad cd 47 1f       call 01f47h          	;. G .
	ram:65b0 21 82 66       ld hl,l6682h         	;! . f
	ram:65b3 87             add a,a              	;.
	ram:65b4 4f             ld c,a               	;O
	ram:65b5 06 00          ld b,000h            	;. .
	ram:65b7 09             add hl,bc            	;.
	ram:65b8 cd 33 00       call 00033h          	;. 3 .
	ram:65bb e5             push hl              	;.
	ram:65bc cd 56 20       call 02056h          	;. V  
	ram:65bf 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:65c2 c3 33 00       jp 00033h            	;. 3 .
	ram:65c5 cd 8c 29       call 0298ch          	;. . )
	ram:65c8 18 03          jr l65cdh            	;. .
	ram:65ca cd 86 29       call 02986h          	;. . )
l65cdh:
	ram:65cd 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:65d0 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:65d4 af             xor a                	;.
	ram:65d5 f5             push af              	;.
	ram:65d6 cd f4 2d       call 02df4h          	;. . -
l65d9h:
	ram:65d9 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:65dc cd 38 75       call sub_7538h       	;. 8 u
	ram:65df f5             push af              	;.
	ram:65e0 eb             ex de,hl             	;.
	ram:65e1 cd 11 21       call 02111h          	;. . !
l65e4h:
	ram:65e4 f1             pop af               	;.
	ram:65e5 e1             pop hl               	;.
	ram:65e6 c8             ret z                	;.
l65e7h:
	ram:65e7 cb 74          bit 6,h              	;. t
	ram:65e9 c8             ret z                	;.
	ram:65ea c3 1b 00       jp 0001bh            	;. . .
	ram:65ed cd 90 29       call 02990h          	;. . )
	ram:65f0 18 03          jr l65f5h            	;. .
	ram:65f2 cd 94 29       call 02994h          	;. . )
l65f5h:
	ram:65f5 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:65f9 af             xor a                	;.
	ram:65fa f5             push af              	;.
	ram:65fb cd fc 2d       call 02dfch          	;. . -
l65feh:
	ram:65fe 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:6601 cd 38 75       call sub_7538h       	;. 8 u
	ram:6604 f5             push af              	;.
	ram:6605 eb             ex de,hl             	;.
	ram:6606 cd e5 1f       call 01fe5h          	;. . .
	ram:6609 18 d9          jr l65e4h            	;. .
	ram:660b 6c             ld l,h               	;l
	ram:660c cd a4 29       call 029a4h          	;. . )
l660fh:
	ram:660f ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6613 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:6616 af             xor a                	;.
	ram:6617 f5             push af              	;.
l6618h:
	ram:6618 cd cf 2d       call 02dcfh          	;. . -
	ram:661b 3a 82 80       ld a,(08082h)        	;: . .
	ram:661e 32 a3 80       ld (080a3h),a        	;2 . .
	ram:6621 e6 1f          and 01fh             	;. .
	ram:6623 28 b4          jr z,l65d9h          	;( .
	ram:6625 fe 01          cp 001h              	;. .
	ram:6627 28 d5          jr z,l65feh          	;( .
	ram:6629 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:662c cd 3f 2d       call 02d3fh          	;. ? -
	ram:662f 42             ld b,d               	;B
	ram:6630 4b             ld c,e               	;K
	ram:6631 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:6635 ed b0          ldir                 	;. .
	ram:6637 3a 84 80       ld a,(08084h)        	;: . .
	ram:663a fe 24          cp 024h              	;. $
	ram:663c 20 05          jr nz,l6643h         	;.
	ram:663e 2a db 8b       ld hl,(08bdbh)       	;* . .
	ram:6641 cb fe          set 7,(hl)           	;. .
l6643h:
	ram:6643 cd 56 20       call 02056h          	;. V  
	ram:6646 cd b3 66       call sub_66b3h       	;. . f
	ram:6649 dc 07 67       call c,sub_6707h     	;. . g
	ram:664c e1             pop hl               	;.
	ram:664d 18 98          jr l65e7h            	;. .
	ram:664f 6c             ld l,h               	;l
	ram:6650 cd cc 29       call 029cch          	;. . )
sub_6653h:
	ram:6653 18 ba          jr l660fh            	;. .
	ram:6655 cd d9 29       call 029d9h          	;. . )
	ram:6658 18 b5          jr l660fh            	;. .
	ram:665a cd f6 29       call 029f6h          	;. . )
	ram:665d 18 b0          jr l660fh            	;. .
	ram:665f cd 01 2a       call 02a01h          	;. . *
	ram:6662 18 ab          jr l660fh            	;. .
	ram:6664 cd 0e 2a       call 02a0eh          	;. . *
	ram:6667 18 a6          jr l660fh            	;. .
	ram:6669 e5             push hl              	;.
	ram:666a cd b3 66       call sub_66b3h       	;. . f
	ram:666d e1             pop hl               	;.
	ram:666e 30 08          jr nc,l6678h         	;0 .
	ram:6670 3a 85 80       ld a,(08085h)        	;: . .
	ram:6673 fe 74          cp 074h              	;. t
	ram:6675 cc 84 67       call z,sub_6784h     	;. . g
l6678h:
	ram:6678 cd 2f 2a       call 02a2fh          	;. / *
	ram:667b 18 92          jr l660fh            	;. .
	ram:667d cd 1c 2a       call 02a1ch          	;. . *
	ram:6680 18 8d          jr l660fh            	;. .
l6682h:
	ram:6682 ca 65 f2       jp z,0f265h          	;. e .
	ram:6685 65             ld h,l               	;e
	ram:6686 0b             dec bc               	;.
	ram:6687 66             ld h,(hl)            	;f
	ram:6688 4f             ld c,a               	;O
	ram:6689 66             ld h,(hl)            	;f
	ram:668a 55             ld d,l               	;U
	ram:668b 66             ld h,(hl)            	;f
	ram:668c 5a             ld e,d               	;Z
	ram:668d 66             ld h,(hl)            	;f
	ram:668e 5f             ld e,a               	;_
	ram:668f 66             ld h,(hl)            	;f
	ram:6690 64             ld h,h               	;d
	ram:6691 66             ld h,(hl)            	;f
	ram:6692 c5             push bc              	;.
	ram:6693 65             ld h,l               	;e
	ram:next byte illegal after ed                defb 0edh            	;;6694	ed		.
	ram:6695 65             ld h,l               	;e
	ram:6696 69             ld l,c               	;i
	ram:6697 66             ld h,(hl)            	;f
	ram:6698 29             add hl,hl            	;)
	ram:6699 5c             ld e,h               	;\
	ram:669a 7d             ld a,l               	;}
	ram:669b 66             ld h,(hl)            	;f
sub_669ch:
	ram:669c e6 1f          and 01fh             	;. .
	ram:669e fe 08          cp 008h              	;. .
	ram:66a0 28 0a          jr z,l66ach          	;( .
	ram:66a2 fe 09          cp 009h              	;. .
	ram:66a4 28 06          jr z,l66ach          	;( .
l66a6h:
	ram:66a6 fe 0d          cp 00dh              	;. .
	ram:66a8 d8             ret c                	;.
	ram:66a9 fe 13          cp 013h              	;. .
	ram:66ab d0             ret nc               	;.
l66ach:
	ram:66ac c3 28 0a       jp 00a28h            	;. ( .
sub_66afh:
	ram:66af e6 1f          and 01fh             	;. .
	ram:66b1 18 f3          jr l66a6h            	;. .
sub_66b3h:
	ram:66b3 3a 84 80       ld a,(08084h)        	;: . .
	ram:66b6 fe 72          cp 072h              	;. r
	ram:66b8 28 13          jr z,l66cdh          	;( .
	ram:66ba fe 51          cp 051h              	;. Q
	ram:66bc 28 2e          jr z,l66ech          	;( .
	ram:66be fe 78          cp 078h              	;. x
	ram:66c0 28 3c          jr z,l66feh          	;( <
	ram:66c2 fe 79          cp 079h              	;. y
	ram:66c4 20 36          jr nz,l66fch         	;6
	ram:66c6 3a 85 80       ld a,(08085h)        	;: . .
	ram:66c9 fe 74          cp 074h              	;. t
	ram:66cb 28 31          jr z,l66feh          	;( 1
l66cdh:
	ram:66cd 21 85 80       ld hl,08085h         	;! . .
	ram:66d0 3a 83 80       ld a,(08083h)        	;: . .
l66d3h:
	ram:66d3 3d             dec a                	;=
	ram:66d4 28 26          jr z,l66fch          	;( &
	ram:66d6 fe 03          cp 003h              	;. .
	ram:66d8 d0             ret nc               	;.
	ram:66d9 47             ld b,a               	;G
	ram:66da 7e             ld a,(hl)            	;~
	ram:66db fe 30          cp 030h              	;. 0
	ram:66dd 28 1d          jr z,l66fch          	;( .
l66dfh:
	ram:66df fe 30          cp 030h              	;. 0
	ram:66e1 38 19          jr c,l66fch          	;8 .
	ram:66e3 fe 3a          cp 03ah              	;. :
	ram:66e5 d0             ret nc               	;.
	ram:66e6 23             inc hl               	;#
	ram:66e7 7e             ld a,(hl)            	;~
	ram:66e8 10 f5          djnz l66dfh          	;. .
	ram:66ea 37             scf                  	;7
	ram:66eb c9             ret                  	;.
l66ech:
	ram:66ec 3a 85 80       ld a,(08085h)        	;: . .
	ram:66ef fe 27          cp 027h              	;. '
	ram:66f1 20 09          jr nz,l66fch         	;.
l66f3h:
	ram:66f3 21 86 80       ld hl,08086h         	;! . .
	ram:66f6 3a 83 80       ld a,(08083h)        	;: . .
	ram:66f9 3d             dec a                	;=
	ram:66fa 20 d7          jr nz,l66d3h         	;.
l66fch:
	ram:66fc b7             or a                 	;.
	ram:66fd c9             ret                  	;.
l66feh:
	ram:66fe 3a 85 80       ld a,(08085h)        	;: . .
	ram:6701 fe 74          cp 074h              	;. t
	ram:6703 20 f7          jr nz,l66fch         	;.
	ram:6705 18 ec          jr l66f3h            	;. .
sub_6707h:
	ram:6707 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:670a 7e             ld a,(hl)            	;~
	ram:670b 23             inc hl               	;#
	ram:670c b6             or (hl)              	;.
	ram:670d 28 4b          jr z,l675ah          	;( K
	ram:670f 3a 85 80       ld a,(08085h)        	;: . .
	ram:6712 fe 74          cp 074h              	;. t
	ram:6714 20 1c          jr nz,l6732h         	;.
	ram:6716 3a 84 80       ld a,(08084h)        	;: . .
	ram:6719 ee 01          xor 001h             	;. .
	ram:671b 32 84 80       ld (08084h),a        	;2 . .
	ram:671e d7             rst 10h              	;.
	ram:671f da 38 0a       jp c,00a38h          	;. 8 .
	ram:6722 3a 84 80       ld a,(08084h)        	;: . .
	ram:6725 ee 01          xor 001h             	;. .
	ram:6727 32 84 80       ld (08084h),a        	;2 . .
	ram:672a eb             ex de,hl             	;.
	ram:672b 7e             ld a,(hl)            	;~
	ram:672c 23             inc hl               	;#
	ram:672d b6             or (hl)              	;.
	ram:672e c8             ret z                	;.
	ram:672f eb             ex de,hl             	;.
	ram:6730 cb ee          set 5,(hl)           	;. .
l6732h:
	ram:6732 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:6735 cb ee          set 5,(hl)           	;. .
l6737h:
	ram:6737 3a 84 80       ld a,(08084h)        	;: . .
	ram:673a fe 72          cp 072h              	;. r
	ram:673c 20 07          jr nz,l6745h         	;.
	ram:673e cd 7f 00       call 0007fh          	;. . .
l6741h:
	ram:6741 c8             ret z                	;.
	ram:6742 c3 1b 00       jp 0001bh            	;. . .
l6745h:
	ram:6745 fe 51          cp 051h              	;. Q
	ram:6747 20 05          jr nz,l674eh         	;.
	ram:6749 cd 89 00       call 00089h          	;. . .
	ram:674c 18 f3          jr l6741h            	;. .
l674eh:
	ram:674e 3a 85 80       ld a,(08085h)        	;: . .
	ram:6751 fe 74          cp 074h              	;. t
	ram:6753 28 2a          jr z,l677fh          	;( *
	ram:6755 cd 7a 00       call 0007ah          	;. z .
	ram:6758 18 e7          jr l6741h            	;. .
l675ah:
	ram:675a 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:675d cb 6e          bit 5,(hl)           	;. n
	ram:675f c8             ret z                	;.
	ram:6760 cb ae          res 5,(hl)           	;. .
	ram:6762 3a 85 80       ld a,(08085h)        	;: . .
	ram:6765 fe 74          cp 074h              	;. t
	ram:6767 20 ce          jr nz,l6737h         	;.
	ram:6769 3a 84 80       ld a,(08084h)        	;: . .
	ram:676c ee 01          xor 001h             	;. .
	ram:676e 32 84 80       ld (08084h),a        	;2 . .
	ram:6771 d7             rst 10h              	;.
	ram:6772 da 38 0a       jp c,00a38h          	;. 8 .
	ram:6775 3a 84 80       ld a,(08084h)        	;: . .
	ram:6778 ee 01          xor 001h             	;. .
	ram:677a 32 84 80       ld (08084h),a        	;2 . .
	ram:677d cb ae          res 5,(hl)           	;. .
l677fh:
	ram:677f cd 84 00       call 00084h          	;. . .
	ram:6782 18 bd          jr l6741h            	;. .
sub_6784h:
	ram:6784 e5             push hl              	;.
	ram:6785 3a 83 80       ld a,(08083h)        	;: . .
	ram:6788 87             add a,a              	;.
	ram:6789 c6 0c          add a,00ch           	;. .
	ram:678b 5f             ld e,a               	;_
	ram:678c 16 00          ld d,000h            	;. .
	ram:678e 19             add hl,de            	;.
	ram:678f cd b8 2f       call 02fb8h          	;. . /
	ram:6792 cd 4a 2e       call 02e4ah          	;. J .
	ram:6795 3a 84 80       ld a,(08084h)        	;: . .
	ram:6798 ee 01          xor 001h             	;. .
	ram:679a 32 84 80       ld (08084h),a        	;2 . .
	ram:679d 21 00 00       ld hl,00000h         	;! . .
	ram:67a0 cd 2f 2a       call 02a2fh          	;. / *
	ram:67a3 cd f4 2d       call 02df4h          	;. . -
	ram:67a6 e1             pop hl               	;.
	ram:67a7 c9             ret                  	;.
	ram:67a8 f5             push af              	;.
	ram:67a9 cd 31 37       call 03731h          	;. 1 7
	ram:67ac 18 04          jr l67b2h            	;. .
	ram:67ae f5             push af              	;.
	ram:67af cd c9 35       call 035c9h          	;. . 5
l67b2h:
	ram:67b2 cd c9 67       call sub_67c9h       	;. . g
	ram:67b5 f1             pop af               	;.
	ram:67b6 c9             ret                  	;.
	ram:67b7 cd 38 26       call 02638h          	;. 8 &
	ram:67ba 18 0d          jr sub_67c9h         	;. .
	ram:67bc cd 45 7a       call sub_7a45h       	;. E z
	ram:67bf 18 08          jr sub_67c9h         	;. .
	ram:67c1 cd 4f 26       call 0264fh          	;. O &
	ram:67c4 18 03          jr sub_67c9h         	;. .
	ram:67c6 cd 48 26       call 02648h          	;. H &
sub_67c9h:
	ram:67c9 d7             rst 10h              	;.
	ram:67ca da 38 0a       jp c,00a38h          	;. 8 .
sub_67cdh:
	ram:67cd cd 47 1f       call 01f47h          	;. G .
	ram:67d0 28 12          jr z,l67e4h          	;( .
	ram:67d2 fe 01          cp 001h              	;. .
	ram:67d4 28 08          jr z,l67deh          	;( .
	ram:67d6 fe 08          cp 008h              	;. .
	ram:67d8 d8             ret c                	;.
	ram:67d9 28 09          jr z,l67e4h          	;( .
	ram:67db fe 09          cp 009h              	;. .
	ram:67dd c0             ret nz               	;.
l67deh:
	ram:67de eb             ex de,hl             	;.
	ram:67df e7             rst 20h              	;.
	ram:67e0 13             inc de               	;.
	ram:67e1 c3 9d 20       jp 0209dh            	;. .  
l67e4h:
	ram:67e4 eb             ex de,hl             	;.
	ram:67e5 18 0b          jr l67f2h            	;. .
	ram:67e7 cd 7f 63       call sub_637fh       	;. . c
	ram:67ea fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:67ee 28 02          jr z,l67f2h          	;( .
	ram:67f0 cb f6          set 6,(hl)           	;. .
l67f2h:
	ram:67f2 e7             rst 20h              	;.
	ram:67f3 21 82 80       ld hl,08082h         	;! . .
	ram:67f6 cb b6          res 6,(hl)           	;. .
	ram:67f8 c9             ret                  	;.
sub_67f9h:
	ram:67f9 06 01          ld b,001h            	;. .
sub_67fbh:
	ram:67fb fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:67ff 20 05          jr nz,l6806h         	;.
	ram:6801 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:6805 c8             ret z                	;.
l6806h:
	ram:6806 cd 13 00       call 00013h          	;. . .
	ram:6809 c0             ret nz               	;.
	ram:680a cd 89 00       call 00089h          	;. . .
	ram:680d c0             ret nz               	;.
	ram:680e 2a 69 8a       ld hl,(08a69h)       	;* i .
	ram:6811 7c             ld a,h               	;|
	ram:6812 b5             or l                 	;.
	ram:6813 c0             ret nz               	;.
	ram:6814 3a 82 80       ld a,(08082h)        	;: . .
	ram:6817 e6 1e          and 01eh             	;. .
	ram:6819 fe 04          cp 004h              	;. .
	ram:681b c0             ret nz               	;.
	ram:681c cb 00          rlc b                	;. .
	ram:681e 28 08          jr z,l6828h          	;( .
	ram:6820 d7             rst 10h              	;.
	ram:6821 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6825 22 d9 8b       ld (08bd9h),hl       	;" . .
l6828h:
	ram:6828 3a 84 80       ld a,(08084h)        	;: . .
	ram:682b fe 24          cp 024h              	;. $
	ram:682d 20 05          jr nz,l6834h         	;.
	ram:682f 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:6832 cb fe          set 7,(hl)           	;. .
l6834h:
	ram:6834 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:6837 5e             ld e,(hl)            	;^
	ram:6838 23             inc hl               	;#
	ram:6839 56             ld d,(hl)            	;V
	ram:683a 7a             ld a,d               	;z
	ram:683b b3             or e                 	;.
	ram:683c ca 34 0a       jp z,00a34h          	;. 4 .
	ram:683f 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:6842 7d             ld a,l               	;}
	ram:6843 b4             or h                 	;.
	ram:6844 20 16          jr nz,l685ch         	;.
	ram:6846 ed 53 9c 8b    ld (08b9ch),de       	;. S . .
	ram:684a fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:684e 28 12          jr z,l6862h          	;( .
	ram:6850 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6854 28 33          jr z,l6889h          	;( 3
	ram:6856 ed 53 9a 8b    ld (08b9ah),de       	;. S . .
	ram:685a 18 2d          jr l6889h            	;. -
l685ch:
	ram:685c b7             or a                 	;.
	ram:685d ed 52          sbc hl,de            	;. R
	ram:685f c2 30 0a       jp nz,00a30h         	;. 0 .
l6862h:
	ram:6862 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:6866 28 21          jr z,l6889h          	;( !
	ram:6868 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:686c 20 1b          jr nz,l6889h         	;.
	ram:686e 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:6871 b7             or a                 	;.
	ram:6872 ed 52          sbc hl,de            	;. R
	ram:6874 f5             push af              	;.
	ram:6875 3a 68 83       ld a,(08368h)        	;: h .
	ram:6878 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:687b 11 14 00       ld de,00014h         	;. . .
	ram:687e 19             add hl,de            	;.
	ram:687f cd 77 30       call 03077h          	;. w 0
	ram:6882 47             ld b,a               	;G
	ram:6883 f1             pop af               	;.
	ram:6884 78             ld a,b               	;x
	ram:6885 30 0d          jr nc,l6894h         	;0 .
	ram:6887 b6             or (hl)              	;.
	ram:6888 77             ld (hl),a            	;w
l6889h:
	ram:6889 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:688d 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:6890 cd 2f 39       call 0392fh          	;. / 9
	ram:6893 c9             ret                  	;.
l6894h:
	ram:6894 f5             push af              	;.
	ram:6895 2f             cpl                  	;/
	ram:6896 a6             and (hl)             	;.
	ram:6897 77             ld (hl),a            	;w
	ram:6898 f1             pop af               	;.
	ram:6899 28 ee          jr z,l6889h          	;( .
	ram:689b c3 08 0a       jp 00a08h            	;. . .
l689eh:
	ram:689e cd a7 74       call sub_74a7h       	;. . t
	ram:68a1 c2 1c 0a       jp nz,00a1ch         	;. . .
l68a4h:
	ram:68a4 af             xor a                	;.
	ram:68a5 cd 20 6a       call sub_6a20h       	;.   j
	ram:68a8 cd a8 2d       call 02da8h          	;. . -
	ram:68ab cd a7 74       call sub_74a7h       	;. . t
	ram:68ae 20 06          jr nz,l68b6h         	;.
	ram:68b0 cd 0b 00       call 0000bh          	;. . .
	ram:68b3 c4 27 64       call nz,sub_6427h    	;. ' d
l68b6h:
	ram:68b6 cd 6b 74       call sub_746bh       	;. k t
	ram:68b9 b7             or a                 	;.
	ram:68ba 20 15          jr nz,l68d1h         	;.
l68bch:
	ram:68bc cd 8e 2d       call 02d8eh          	;. . -
	ram:68bf c5             push bc              	;.
	ram:68c0 cd 05 75       call sub_7505h       	;. . u
	ram:68c3 c8             ret z                	;.
	ram:68c4 cd 8e 2d       call 02d8eh          	;. . -
	ram:68c7 e1             pop hl               	;.
	ram:68c8 af             xor a                	;.
	ram:68c9 cd 6a 74       call sub_746ah       	;. j t
	ram:68cc cd a8 2d       call 02da8h          	;. . -
	ram:68cf 18 eb          jr l68bch            	;. .
l68d1h:
	ram:68d1 cd 41 5d       call sub_5d41h       	;. A ]
	ram:68d4 ed 5b e9 8b    ld de,(08be9h)       	;. [ . .
	ram:68d8 cd 3f 38       call 0383fh          	;. ? 8
	ram:68db c3 7e 5b       jp l5b7eh            	;. ~ [
l68deh:
	ram:68de cd 0b 00       call 0000bh          	;. . .
	ram:68e1 ca 1c 0a       jp z,00a1ch          	;. . .
	ram:68e4 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:68e8 28 06          jr z,l68f0h          	;( .
	ram:68ea cd 52 7a       call sub_7a52h       	;. R z
	ram:68ed ca 4d 0a       jp z,00a4dh          	;. M .
l68f0h:
	ram:68f0 cd 3b 3c       call 03c3bh          	;. ; <
	ram:68f3 f5             push af              	;.
	ram:68f4 cd 3b 3c       call 03c3bh          	;. ; <
	ram:68f7 e1             pop hl               	;.
	ram:68f8 6f             ld l,a               	;o
	ram:68f9 cd 22 26       call 02622h          	;. " &
	ram:68fc cd bc 56       call sub_56bch       	;. . V
	ram:68ff cd ee 69       call sub_69eeh       	;. . i
	ram:6902 cd 9b 25       call 0259bh          	;. . %
	ram:6905 18 0c          jr l6913h            	;. .
l6907h:
	ram:6907 cd 0b 00       call 0000bh          	;. . .
	ram:690a ca 1c 0a       jp z,00a1ch          	;. . .
	ram:690d 21 01 00       ld hl,00001h         	;! . .
	ram:6910 cd 41 6b       call sub_6b41h       	;. A k
l6913h:
	ram:6913 fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:6917 18 54          jr l696dh            	;. T
l6919h:
	ram:6919 f5             push af              	;.
	ram:691a fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:691e c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:6921 f1             pop af               	;.
	ram:6922 f5             push af              	;.
	ram:6923 cd 0b 6a       call sub_6a0bh       	;. . j
	ram:6926 cd 6b 74       call sub_746bh       	;. k t
	ram:6929 fe 10          cp 010h              	;. .
	ram:692b 20 70          jr nz,l699dh         	;p
	ram:692d f1             pop af               	;.
	ram:692e fe 24          cp 024h              	;. $
	ram:6930 38 3b          jr c,l696dh          	;8 ;
	ram:6932 28 03          jr z,l6937h          	;( .
l6934h:
	ram:6934 cd b0 73       call sub_73b0h       	;. . s
l6937h:
	ram:6937 cd ea 73       call sub_73eah       	;. . s
	ram:693a cd 6b 74       call sub_746bh       	;. k t
	ram:693d 57             ld d,a               	;W
	ram:693e cd 41 6a       call sub_6a41h       	;. A j
	ram:6941 cd ca 74       call sub_74cah       	;. . t
	ram:6944 f5             push af              	;.
	ram:6945 cd 13 75       call sub_7513h       	;. . u
	ram:6948 cd cb 79       call sub_79cbh       	;. . y
	ram:694b f1             pop af               	;.
	ram:694c 28 0c          jr z,l695ah          	;( .
	ram:694e fe 2f          cp 02fh              	;. /
	ram:6950 28 08          jr z,l695ah          	;( .
	ram:6952 fe 11          cp 011h              	;. .
	ram:6954 28 04          jr z,l695ah          	;( .
	ram:6956 fe 0c          cp 00ch              	;. .
	ram:6958 30 43          jr nc,l699dh         	;0 C
l695ah:
	ram:695a c3 92 5d       jp l5d92h            	;. . ]
l695dh:
	ram:695d cd a7 74       call sub_74a7h       	;. . t
	ram:6960 20 3b          jr nz,l699dh         	;;
	ram:6962 cd 82 74       call sub_7482h       	;. . t
	ram:6965 cd 1d 75       call sub_751dh       	;. . u
	ram:6968 3e 0b          ld a,00bh            	;> .
l696ah:
	ram:696a cd 20 6a       call sub_6a20h       	;.   j
l696dh:
	ram:696d cd 6b 74       call sub_746bh       	;. k t
	ram:6970 c3 90 5b       jp l5b90h            	;. . [
l6973h:
	ram:6973 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:6977 28 37          jr z,l69b0h          	;( 7
	ram:6979 cd c6 77       call sub_77c6h       	;. . w
	ram:697c 30 04          jr nc,l6982h         	;0 .
	ram:697e fe 2e          cp 02eh              	;. .
	ram:6980 20 2e          jr nz,l69b0h         	;.
l6982h:
	ram:6982 3e 10          ld a,010h            	;> .
l6984h:
	ram:6984 f5             push af              	;.
	ram:6985 cd 1a 6a       call sub_6a1ah       	;. . j
	ram:6988 2a 2f 86       ld hl,(0862fh)       	;* / .
	ram:698b 23             inc hl               	;#
	ram:698c 22 2f 86       ld (0862fh),hl       	;" / .
	ram:698f 18 25          jr l69b6h            	;. %
l6991h:
	ram:6991 2a e5 8b       ld hl,(08be5h)       	;* . .
l6994h:
	ram:6994 23             inc hl               	;#
	ram:6995 7e             ld a,(hl)            	;~
	ram:6996 b7             or a                 	;.
	ram:6997 28 07          jr z,l69a0h          	;( .
	ram:6999 fe 30          cp 030h              	;. 0
	ram:699b 30 f7          jr nc,l6994h         	;0 .
l699dh:
	ram:699d c3 1c 0a       jp 00a1ch            	;. . .
l69a0h:
	ram:69a0 cd c6 77       call sub_77c6h       	;. . w
	ram:69a3 d2 de 5d       jp nc,l5ddeh         	;. . ]
	ram:69a6 fe 2e          cp 02eh              	;. .
	ram:69a8 ca de 5d       jp z,l5ddeh          	;. . ]
	ram:69ab 3e 61          ld a,061h            	;> a
	ram:69ad cd 20 6a       call sub_6a20h       	;.   j
l69b0h:
	ram:69b0 3e 10          ld a,010h            	;> .
l69b2h:
	ram:69b2 f5             push af              	;.
	ram:69b3 cd 1a 6a       call sub_6a1ah       	;. . j
l69b6h:
	ram:69b6 f1             pop af               	;.
	ram:69b7 cd 97 2d       call 02d97h          	;. . -
l69bah:
	ram:69ba fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:69be 18 ad          jr l696dh            	;. .
l69c0h:
	ram:69c0 fe c0          cp 0c0h              	;. .
	ram:69c2 cc 7a 75       call z,sub_757ah     	;. z u
	ram:69c5 fe bf          cp 0bfh              	;. .
	ram:69c7 cc 78 76       call z,sub_7678h     	;. x v
	ram:69ca cd 0b 6a       call sub_6a0bh       	;. . j
	ram:69cd 18 9e          jr l696dh            	;. .
sub_69cfh:
	ram:69cf 21 e0 69       ld hl,l69e0h         	;! . i
	ram:69d2 01 0a 00       ld bc,0000ah         	;. . .
	ram:69d5 ed b1          cpir                 	;. .
	ram:69d7 c0             ret nz               	;.
	ram:69d8 2a 69 8a       ld hl,(08a69h)       	;* i .
	ram:69db 23             inc hl               	;#
	ram:69dc 22 69 8a       ld (08a69h),hl       	;" i .
	ram:69df c9             ret                  	;.
l69e0h:
	ram:69e0 13             inc de               	;.
	ram:69e1 14             inc d                	;.
	ram:69e2 22 c1 c2       ld (0c2c1h),hl       	;" . .
	ram:69e5 c3 c4 c5       jp 0c5c4h            	;. . .
	ram:69e8 d4 c0 cd       call nc,0cdc0h       	;. . .
	ram:69eb 0b             dec bc               	;.
	ram:69ec 00             nop                  	;.
	ram:69ed c8             ret z                	;.
sub_69eeh:
	ram:69ee fd cb 0a 56    bit 2,(iy+00ah)      	;. . . V
	ram:69f2 20 0b          jr nz,l69ffh         	;.
	ram:69f4 fd cb 0a 5e    bit 3,(iy+00ah)      	;. . . ^
	ram:69f8 20 05          jr nz,l69ffh         	;.
	ram:69fa fd cb 0a 66    bit 4,(iy+00ah)      	;. . . f
	ram:69fe c8             ret z                	;.
l69ffh:
	ram:69ff cd 47 1f       call 01f47h          	;. G .
	ram:6a02 fe 08          cp 008h              	;. .
	ram:6a04 d0             ret nc               	;.
	ram:6a05 3e a3          ld a,0a3h            	;> .
	ram:6a07 cd 9d 3a       call 03a9dh          	;. . :
	ram:6a0a c9             ret                  	;.
sub_6a0bh:
	ram:6a0b f5             push af              	;.
	ram:6a0c cd 16 6a       call sub_6a16h       	;. . j
	ram:6a0f f1             pop af               	;.
	ram:6a10 f5             push af              	;.
	ram:6a11 cd cf 69       call sub_69cfh       	;. . i
	ram:6a14 18 32          jr l6a48h            	;. 2
sub_6a16h:
	ram:6a16 3e 90          ld a,090h            	;> .
	ram:6a18 18 02          jr l6a1ch            	;. .
sub_6a1ah:
	ram:6a1a 3e e0          ld a,0e0h            	;> .
l6a1ch:
	ram:6a1c cd 0b 00       call 0000bh          	;. . .
	ram:6a1f c8             ret z                	;.
sub_6a20h:
	ram:6a20 57             ld d,a               	;W
	ram:6a21 e6 f0          and 0f0h             	;. .
	ram:6a23 5f             ld e,a               	;_
	ram:6a24 cd 89 74       call sub_7489h       	;. . t
	ram:6a27 b7             or a                 	;.
	ram:6a28 20 4a          jr nz,l6a74h         	;J
	ram:6a2a 7a             ld a,d               	;z
	ram:6a2b b7             or a                 	;.
	jr z,-66		;6a2c	28 bc		( .
	ram:6a2e cd 0b 00       call 0000bh          	;. . .
	ram:6a31 ca 1c 0a       jp z,00a1ch          	;. . .
	ram:6a34 fe 0c          cp 00ch              	;. .
	ram:6a36 30 18          jr nc,l6a50h         	;0 .
	ram:6a38 d5             push de              	;.
	ram:6a39 cd ee 69       call sub_69eeh       	;. . i
	ram:6a3c d1             pop de               	;.
	ram:6a3d 7a             ld a,d               	;z
	ram:6a3e fe 0b          cp 00bh              	;. .
	ram:6a40 d8             ret c                	;.
sub_6a41h:
	ram:6a41 3e 11          ld a,011h            	;> .
	ram:6a43 ba             cp d                 	;.
	ram:6a44 28 73          jr z,l6ab9h          	;( s
	ram:6a46 d5             push de              	;.
	ram:6a47 df             rst 18h              	;.
l6a48h:
	ram:6a48 fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:6a4c f1             pop af               	;.
	ram:6a4d c3 97 2d       jp 02d97h            	;. . -
l6a50h:
	ram:6a50 fe 12          cp 012h              	;. .
	ram:6a52 38 65          jr c,l6ab9h          	;8 e
	ram:6a54 fe 2e          cp 02eh              	;. .
	ram:6a56 28 61          jr z,l6ab9h          	;( a
	ram:6a58 fe 2f          cp 02fh              	;. /
	ram:6a5a 28 5d          jr z,l6ab9h          	;( ]
l6a5ch:
	ram:6a5c fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:6a60 28 df          jr z,sub_6a41h       	;( .
	ram:6a62 cd 52 7a       call sub_7a52h       	;. R z
	ram:6a65 20 da          jr nz,sub_6a41h      	;.
	ram:6a67 3e 11          ld a,011h            	;> .
	ram:6a69 ba             cp d                 	;.
	ram:6a6a 28 4d          jr z,l6ab9h          	;( M
	ram:6a6c fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:6a70 7a             ld a,d               	;z
	ram:6a71 c3 97 2d       jp 02d97h            	;. . -
l6a74h:
	ram:6a74 47             ld b,a               	;G
	ram:6a75 fe 0b          cp 00bh              	;. .
	ram:6a77 28 40          jr z,l6ab9h          	;( @
	ram:6a79 cd 0b 00       call 0000bh          	;. . .
	ram:6a7c 20 09          jr nz,l6a87h         	;.
	ram:6a7e fe 0c          cp 00ch              	;. .
	ram:6a80 20 37          jr nz,l6ab9h         	;7
	ram:6a82 7a             ld a,d               	;z
	ram:6a83 fe 0e          cp 00eh              	;. .
	ram:6a85 30 32          jr nc,l6ab9h         	;0 2
l6a87h:
	ram:6a87 7a             ld a,d               	;z
	ram:6a88 fe 2f          cp 02fh              	;. /
	ram:6a8a 20 38          jr nz,l6ac4h         	;8
	ram:6a8c 78             ld a,b               	;x
	ram:6a8d fe 2e          cp 02eh              	;. .
	ram:6a8f 20 11          jr nz,l6aa2h         	;.
	ram:6a91 cd 8f 74       call sub_748fh       	;. . t
	ram:6a94 fe 0c          cp 00ch              	;. .
	ram:6a96 20 21          jr nz,l6ab9h         	;!
	ram:6a98 fd cb 06 96    res 2,(iy+006h)      	;. . . .
	ram:6a9c fd cb 06 de    set 3,(iy+006h)      	;. . . .
	ram:6aa0 18 9f          jr sub_6a41h         	;. .
l6aa2h:
	ram:6aa2 fe 2f          cp 02fh              	;. /
	ram:6aa4 20 16          jr nz,l6abch         	;.
	ram:6aa6 cd 8f 74       call sub_748fh       	;. . t
	ram:6aa9 fe 2e          cp 02eh              	;. .
	ram:6aab 28 0c          jr z,l6ab9h          	;( .
	ram:6aad fe 10          cp 010h              	;. .
	ram:6aaf c2 41 6a       jp nz,sub_6a41h      	;. A j
	ram:6ab2 23             inc hl               	;#
	ram:6ab3 7e             ld a,(hl)            	;~
	ram:6ab4 fe 01          cp 001h              	;. .
	ram:6ab6 ca 41 6a       jp z,sub_6a41h       	;. A j
l6ab9h:
	ram:6ab9 c3 1c 0a       jp 00a1ch            	;. . .
l6abch:
	ram:6abc fe 2e          cp 02eh              	;. .
	ram:6abe da 5c 6a       jp c,l6a5ch          	;. \ j
	ram:6ac1 c3 1a 6b       jp l6b1ah            	;. . k
l6ac4h:
	ram:6ac4 fe 2e          cp 02eh              	;. .
	ram:6ac6 20 3c          jr nz,l6b04h         	;<
	ram:6ac8 78             ld a,b               	;x
	ram:6ac9 fe 10          cp 010h              	;. .
	ram:6acb 20 0a          jr nz,l6ad7h         	;.
	ram:6acd cd 8f 74       call sub_748fh       	;. . t
	ram:6ad0 fe 01          cp 001h              	;. .
	ram:6ad2 c2 5c 6a       jp nz,l6a5ch         	;. \ j
	ram:6ad5 18 e2          jr l6ab9h            	;. .
l6ad7h:
	ram:6ad7 fe 0c          cp 00ch              	;. .
	ram:6ad9 20 0d          jr nz,l6ae8h         	;.
	ram:6adb fd cb 06 7e    bit 7,(iy+006h)      	;. . . ~
	ram:6adf 20 d8          jr nz,l6ab9h         	;.
	ram:6ae1 fd cb 06 d6    set 2,(iy+006h)      	;. . . .
	ram:6ae5 c3 41 6a       jp sub_6a41h         	;. A j
l6ae8h:
	ram:6ae8 fe 2e          cp 02eh              	;. .
	ram:6aea 20 12          jr nz,l6afeh         	;.
	ram:6aec cd 8f 74       call sub_748fh       	;. . t
	ram:6aef fe 0c          cp 00ch              	;. .
	ram:6af1 20 c6          jr nz,l6ab9h         	;.
	ram:6af3 fd cb 06 96    res 2,(iy+006h)      	;. . . .
	ram:6af7 fd cb 06 e6    set 4,(iy+006h)      	;. . . .
	ram:6afb c3 41 6a       jp sub_6a41h         	;. A j
l6afeh:
	ram:6afe fe 30          cp 030h              	;. 0
	ram:6b00 38 b7          jr c,l6ab9h          	;8 .
	ram:6b02 18 16          jr l6b1ah            	;. .
l6b04h:
	ram:6b04 fe 0d          cp 00dh              	;. .
	ram:6b06 28 04          jr z,l6b0ch          	;( .
	ram:6b08 fe 0f          cp 00fh              	;. .
	ram:6b0a 20 09          jr nz,l6b15h         	;.
l6b0ch:
	ram:6b0c 78             ld a,b               	;x
	ram:6b0d fe 10          cp 010h              	;. .
	ram:6b0f 38 04          jr c,l6b15h          	;8 .
	ram:6b11 fe 2e          cp 02eh              	;. .
	ram:6b13 38 a4          jr c,l6ab9h          	;8 .
l6b15h:
	ram:6b15 78             ld a,b               	;x
	ram:6b16 bb             cp e                 	;.
	ram:6b17 da 5c 6a       jp c,l6a5ch          	;. \ j
l6b1ah:
	ram:6b1a 58             ld e,b               	;X
	ram:6b1b d5             push de              	;.
	ram:6b1c cd a8 2d       call 02da8h          	;. . -
	ram:6b1f 2a 65 8a       ld hl,(08a65h)       	;* e .
	ram:6b22 fe 30          cp 030h              	;. 0
	ram:6b24 38 09          jr c,l6b2fh          	;8 .
	ram:6b26 fe 91          cp 091h              	;. .
	ram:6b28 38 04          jr c,l6b2eh          	;8 .
	ram:6b2a fe e0          cp 0e0h              	;. .
	ram:6b2c 38 01          jr c,l6b2fh          	;8 .
l6b2eh:
	ram:6b2e 23             inc hl               	;#
l6b2fh:
	ram:6b2f cd 41 6b       call sub_6b41h       	;. A k
	ram:6b32 d1             pop de               	;.
	ram:6b33 7a             ld a,d               	;z
	ram:6b34 fe 11          cp 011h              	;. .
	ram:6b36 c2 20 6a       jp nz,sub_6a20h      	;.   j
	ram:6b39 7b             ld a,e               	;{
	ram:6b3a fe 2e          cp 02eh              	;. .
	ram:6b3c d8             ret c                	;.
	ram:6b3d 7a             ld a,d               	;z
	ram:6b3e c3 20 6a       jp sub_6a20h         	;.   j
sub_6b41h:
	ram:6b41 fe 0e          cp 00eh              	;. .
	ram:6b43 ca 9e 6d       jp z,l6d9eh          	;. . m
	ram:6b46 fe 0c          cp 00ch              	;. .
	ram:6b48 ca 9e 6c       jp z,l6c9eh          	;. . l
	ram:6b4b cb 04          rlc h                	;. .
	ram:6b4d c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:6b50 fe 01          cp 001h              	;. .
	ram:6b52 ca 4c 74       jp z,l744ch          	;. L t
	ram:6b55 fe 10          cp 010h              	;. .
	ram:6b57 ca 0b 6c       jp z,l6c0bh          	;. . l
	ram:6b5a fe 2d          cp 02dh              	;. -
	ram:6b5c ca de 6d       jp z,l6ddeh          	;. . m
	ram:6b5f fe 2e          cp 02eh              	;. .
	ram:6b61 ca f1 6b       jp z,l6bf1h          	;. . k
	ram:6b64 fe 2f          cp 02fh              	;. /
	ram:6b66 ca eb 6b       jp z,l6bebh          	;. . k
	ram:6b69 fe e0          cp 0e0h              	;. .
	ram:6b6b 28 04          jr z,l6b71h          	;( .
	ram:6b6d fe 90          cp 090h              	;. .
	ram:6b6f 20 02          jr nz,l6b73h         	;.
l6b71h:
	ram:6b71 3e 70          ld a,070h            	;> p
l6b73h:
	ram:6b73 f5             push af              	;.
	ram:6b74 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:6b78 28 35          jr z,l6bafh          	;( 5
	ram:6b7a ed 5b 2f 86    ld de,(0862fh)       	;. [ / .
	ram:6b7e 7a             ld a,d               	;z
	ram:6b7f b3             or e                 	;.
	ram:6b80 20 2d          jr nz,l6bafh         	;-
	ram:6b82 f1             pop af               	;.
	ram:6b83 2d             dec l                	;-
	ram:6b84 20 05          jr nz,l6b8bh         	;.
	ram:6b86 cd eb 3a       call 03aebh          	;. . :
	ram:6b89 18 07          jr l6b92h            	;. .
l6b8bh:
	ram:6b8b 2d             dec l                	;-
	ram:6b8c c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:6b8f cd f1 3a       call 03af1h          	;. . :
l6b92h:
	ram:6b92 cd af 2d       call 02dafh          	;. . -
	ram:6b95 fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:6b99 c4 bf 2d       call nz,02dbfh       	;. . -
	ram:6b9c cd cf 2d       call 02dcfh          	;. . -
	ram:6b9f cd f9 67       call sub_67f9h       	;. . g
	ram:6ba2 df             rst 18h              	;.
	ram:6ba3 fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:6ba7 c4 6f 2e       call nz,02e6fh       	;. o .
	ram:6baa cd 61 2e       call 02e61h          	;. a .
	ram:6bad 18 1d          jr l6bcch            	;. .
l6bafh:
	ram:6baf f1             pop af               	;.
	ram:6bb0 2d             dec l                	;-
	ram:6bb1 28 24          jr z,l6bd7h          	;( $
	ram:6bb3 2d             dec l                	;-
	ram:6bb4 28 26          jr z,l6bdch          	;( &
	ram:6bb6 2d             dec l                	;-
	ram:6bb7 28 28          jr z,l6be1h          	;( (
	ram:6bb9 2d             dec l                	;-
	ram:6bba 28 2a          jr z,l6be6h          	;( *
	ram:6bbc 2d             dec l                	;-
	ram:6bbd c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:6bc0 cd 97 3a       call 03a97h          	;. . :
l6bc3h:
	ram:6bc3 cd ee 69       call sub_69eeh       	;. . i
	ram:6bc6 cd 9b 25       call 0259bh          	;. . %
	ram:6bc9 cd f9 67       call sub_67f9h       	;. . g
l6bcch:
	ram:6bcc fd cb 06 c6    set 0,(iy+006h)      	;. . . .
	ram:6bd0 21 01 00       ld hl,00001h         	;! . .
	ram:6bd3 22 65 8a       ld (08a65h),hl       	;" e .
	ram:6bd6 c9             ret                  	;.
l6bd7h:
	ram:6bd7 cd 9d 3a       call 03a9dh          	;. . :
	ram:6bda 18 e7          jr l6bc3h            	;. .
l6bdch:
	ram:6bdc cd a3 3a       call 03aa3h          	;. . :
	ram:6bdf 18 e2          jr l6bc3h            	;. .
l6be1h:
	ram:6be1 cd 8b 3a       call 03a8bh          	;. . :
	ram:6be4 18 dd          jr l6bc3h            	;. .
l6be6h:
	ram:6be6 cd 91 3a       call 03a91h          	;. . :
	ram:6be9 18 d8          jr l6bc3h            	;. .
l6bebh:
	ram:6beb fd cb 06 86    res 0,(iy+006h)      	;. . . .
	ram:6bef 18 04          jr l6bf5h            	;. .
l6bf1h:
	ram:6bf1 fd cb 06 c6    set 0,(iy+006h)      	;. . . .
l6bf5h:
	ram:6bf5 2a 65 8a       ld hl,(08a65h)       	;* e .
	ram:6bf8 23             inc hl               	;#
	ram:6bf9 22 65 8a       ld (08a65h),hl       	;" e .
	ram:6bfc cd 89 74       call sub_7489h       	;. . t
	ram:6bff fe 2f          cp 02fh              	;. /
	ram:6c01 28 03          jr z,l6c06h          	;( .
	ram:6c03 fe 2e          cp 02eh              	;. .
	ram:6c05 c0             ret nz               	;.
l6c06h:
	ram:6c06 cd a8 2d       call 02da8h          	;. . -
	ram:6c09 18 ea          jr l6bf5h            	;. .
l6c0bh:
	ram:6c0b e5             push hl              	;.
	ram:6c0c cd 89 74       call sub_7489h       	;. . t
	ram:6c0f fe 01          cp 001h              	;. .
	ram:6c11 e1             pop hl               	;.
	ram:6c12 ca 49 74       jp z,l7449h          	;. I t
	ram:6c15 2d             dec l                	;-
	ram:6c16 28 b4          jr z,l6bcch          	;( .
	ram:6c18 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:6c1c 28 69          jr z,l6c87h          	;( i
	ram:6c1e 2a 2f 86       ld hl,(0862fh)       	;* / .
	ram:6c21 2b             dec hl               	;+
	ram:6c22 22 2f 86       ld (0862fh),hl       	;" / .
	ram:6c25 7c             ld a,h               	;|
	ram:6c26 b5             or l                 	;.
	ram:6c27 20 5e          jr nz,l6c87h         	;^
	ram:6c29 cd 87 6c       call l6c87h          	;. . l
sub_6c2ch:
	ram:6c2c cd f9 67       call sub_67f9h       	;. . g
	ram:6c2f df             rst 18h              	;.
	ram:6c30 cd 47 1f       call 01f47h          	;. G .
	ram:6c33 fe 04          cp 004h              	;. .
	ram:6c35 38 18          jr c,l6c4fh          	;8 .
	ram:6c37 cd 45 6c       call sub_6c45h       	;. E l
l6c3ah:
	ram:6c3a fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:6c3e c8             ret z                	;.
	ram:6c3f cd 24 2f       call 02f24h          	;. $ /
	ram:6c42 cd 47 1f       call 01f47h          	;. G .
sub_6c45h:
	ram:6c45 cd 6f 7a       call sub_7a6fh       	;. o z
	ram:6c48 cd 43 3a       call 03a43h          	;. C :
	ram:6c4b cd a1 39       call 039a1h          	;. . 9
	ram:6c4e c9             ret                  	;.
l6c4fh:
	ram:6c4f cd 98 21       call 02198h          	;. . !
	ram:6c52 df             rst 18h              	;.
	ram:6c53 fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:6c57 c2 4a 2e       jp nz,02e4ah         	;. J .
	ram:6c5a c9             ret                  	;.
sub_6c5bh:
	ram:6c5b cd f9 67       call sub_67f9h       	;. . g
	ram:6c5e df             rst 18h              	;.
	ram:6c5f cd 47 1f       call 01f47h          	;. G .
	ram:6c62 fe 04          cp 004h              	;. .
	ram:6c64 38 11          jr c,l6c77h          	;8 .
	ram:6c66 cd 6f 7a       call sub_7a6fh       	;. o z
	ram:6c69 cd 3e 21       call 0213eh          	;. > !
	ram:6c6c cd 78 26       call 02678h          	;. x &
	ram:6c6f c4 63 1f       call nz,01f63h       	;. c .
	ram:6c72 cd a1 39       call 039a1h          	;. . 9
	ram:6c75 18 c3          jr l6c3ah            	;. .
l6c77h:
	ram:6c77 cd 3e 21       call 0213eh          	;. > !
	ram:6c7a df             rst 18h              	;.
	ram:6c7b fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:6c7f c8             ret z                	;.
	ram:6c80 af             xor a                	;.
	ram:6c81 32 85 80       ld (08085h),a        	;2 . .
	ram:6c84 c3 4a 2e       jp 02e4ah            	;. J .
l6c87h:
	ram:6c87 cd 22 26       call 02622h          	;. " &
	ram:6c8a cf             rst 8                	;.
	ram:6c8b cd cf 2d       call 02dcfh          	;. . -
	ram:6c8e cd 22 26       call 02622h          	;. " &
	ram:6c91 fd cb 06 46    bit 0,(iy+006h)      	;. . . F
	ram:6c95 c4 8b 1e       call nz,01e8bh       	;. . .
	ram:6c98 cd 66 1f       call 01f66h          	;. f .
	ram:6c9b c3 cc 6b       jp l6bcch            	;. . k
l6c9eh:
	ram:6c9e cb 04          rlc h                	;. .
	ram:6ca0 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6ca3 fd cb 06 76    bit 6,(iy+006h)      	;. . . v
	ram:6ca7 28 37          jr z,l6ce0h          	;( 7
	ram:6ca9 cd 0b 00       call 0000bh          	;. . .
	ram:6cac ca 1c 0a       jp z,00a1ch          	;. . .
	ram:6caf fd cb 06 b6    res 6,(iy+006h)      	;. . . .
	ram:6cb3 e5             push hl              	;.
	ram:6cb4 df             rst 18h              	;.
	ram:6cb5 c1             pop bc               	;.
	ram:6cb6 cd 47 1f       call 01f47h          	;. G .
	ram:6cb9 fe 02          cp 002h              	;. .
	ram:6cbb 28 44          jr z,l6d01h          	;( D
	ram:6cbd fe 03          cp 003h              	;. .
	ram:6cbf 28 3c          jr z,l6cfdh          	;( <
	ram:6cc1 3a 67 8a       ld a,(08a67h)        	;: g .
	ram:6cc4 b7             or a                 	;.
	ram:6cc5 20 04          jr nz,l6ccbh         	;.
	ram:6cc7 79             ld a,c               	;y
	ram:6cc8 32 67 8a       ld (08a67h),a        	;2 g .
l6ccbh:
	ram:6ccb b9             cp c                 	;.
	ram:6ccc c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6ccf cd 2f 71       call sub_712fh       	;. / q
l6cd2h:
	ram:6cd2 fd cb 06 7e    bit 7,(iy+006h)      	;. . . ~
	ram:6cd6 28 47          jr z,l6d1fh          	;( G
	ram:6cd8 fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:6cdc 3e 0d          ld a,00dh            	;> .
	ram:6cde 18 6e          jr l6d4eh            	;. n
l6ce0h:
	ram:6ce0 cd 0b 00       call 0000bh          	;. . .
	ram:6ce3 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:6ce6 fd cb 06 be    res 7,(iy+006h)      	;. . . .
	ram:6cea 2a 67 8a       ld hl,(08a67h)       	;* g .
	ram:6ced fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:6cf1 28 05          jr z,l6cf8h          	;( .
	ram:6cf3 cd 09 2a       call 02a09h          	;. . *
	ram:6cf6 18 4a          jr l6d42h            	;. J
l6cf8h:
	ram:6cf8 cd fc 29       call 029fch          	;. . )
	ram:6cfb 18 45          jr l6d42h            	;. E
l6cfdh:
	ram:6cfd fd cb 06 ce    set 1,(iy+006h)      	;. . . .
l6d01h:
	ram:6d01 fd cb 06 7e    bit 7,(iy+006h)      	;. . . ~
	ram:6d05 ca 1c 0a       jp z,00a1ch          	;. . .
	ram:6d08 0d             dec c                	;.
	ram:6d09 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:6d0c d7             rst 10h              	;.
	ram:6d0d 13             inc de               	;.
	ram:6d0e eb             ex de,hl             	;.
	ram:6d0f 3a 67 8a       ld a,(08a67h)        	;: g .
	ram:6d12 b7             or a                 	;.
	ram:6d13 20 04          jr nz,l6d19h         	;.
	ram:6d15 7e             ld a,(hl)            	;~
	ram:6d16 32 67 8a       ld (08a67h),a        	;2 g .
l6d19h:
	ram:6d19 be             cp (hl)              	;.
	ram:6d1a c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6d1d 18 b3          jr l6cd2h            	;. .
l6d1fh:
	ram:6d1f 3e 01          ld a,001h            	;> .
	ram:6d21 32 68 8a       ld (08a68h),a        	;2 h .
	ram:6d24 2a 67 8a       ld hl,(08a67h)       	;* g .
	ram:6d27 fd 7e 06       ld a,(iy+006h)       	;. ~ .
	ram:6d2a cb 4f          bit 1,a              	;. O
	ram:6d2c 28 0a          jr z,l6d38h          	;( .
	ram:6d2e e6 1c          and 01ch             	;. .
	ram:6d30 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:6d33 cd c3 29       call 029c3h          	;. . )
	ram:6d36 18 03          jr l6d3bh            	;. .
l6d38h:
	ram:6d38 cd 9b 29       call 0299bh          	;. . )
l6d3bh:
	ram:6d3b fd 7e 06       ld a,(iy+006h)       	;. ~ .
	ram:6d3e e6 1c          and 01ch             	;. .
	ram:6d40 20 28          jr nz,l6d6ah         	;(
l6d42h:
	ram:6d42 cd 4e 71       call sub_714eh       	;. N q
	ram:6d45 cd 56 20       call 02056h          	;. V  
l6d48h:
	ram:6d48 3e 0d          ld a,00dh            	;> .
l6d4ah:
	ram:6d4a fd cb 07 c6    set 0,(iy+007h)      	;. . . .
l6d4eh:
	ram:6d4e f5             push af              	;.
	ram:6d4f fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:6d53 28 06          jr z,l6d5bh          	;( .
	ram:6d55 cd 52 7a       call sub_7a52h       	;. R z
	ram:6d58 cc 2c 6c       call z,sub_6c2ch     	;. , l
l6d5bh:
	ram:6d5b f1             pop af               	;.
	ram:6d5c 21 01 00       ld hl,00001h         	;! . .
	ram:6d5f 22 65 8a       ld (08a65h),hl       	;" e .
	ram:6d62 d1             pop de               	;.
	ram:6d63 d1             pop de               	;.
	ram:6d64 ba             cp d                 	;.
	ram:6d65 c8             ret z                	;.
	ram:6d66 7a             ld a,d               	;z
	ram:6d67 c3 20 6a       jp sub_6a20h         	;.   j
l6d6ah:
	ram:6d6a ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:6d6e cd fc 2d       call 02dfch          	;. . -
	ram:6d71 fd cb 06 56    bit 2,(iy+006h)      	;. . . V
	ram:6d75 20 1f          jr nz,l6d96h         	;.
	ram:6d77 cd ea 2d       call 02deah          	;. . -
	ram:6d7a cd 3b 2e       call 02e3bh          	;. ; .
	ram:6d7d cd 40 2e       call 02e40h          	;. @ .
	ram:6d80 cd 91 2e       call 02e91h          	;. . .
	ram:6d83 fd cb 06 5e    bit 3,(iy+006h)      	;. . . ^
	ram:6d87 c4 b7 38       call nz,038b7h       	;. . 8
	ram:6d8a fd cb 06 66    bit 4,(iy+006h)      	;. . . f
	ram:6d8e c4 c3 38       call nz,038c3h       	;. . 8
l6d91h:
	ram:6d91 cd f4 2d       call 02df4h          	;. . -
	ram:6d94 18 b2          jr l6d48h            	;. .
l6d96h:
	ram:6d96 cd 3b 2e       call 02e3bh          	;. ; .
	ram:6d99 cd bd 38       call 038bdh          	;. . 8
	ram:6d9c 18 f3          jr l6d91h            	;. .
l6d9eh:
	ram:6d9e fd cb 06 ae    res 5,(iy+006h)      	;. . . .
	ram:6da2 ed 5b 2f 86    ld de,(0862fh)       	;. [ / .
	ram:6da6 1b             dec de               	;.
	ram:6da7 ed 53 2f 86    ld (0862fh),de       	;. S / .
	ram:6dab 22 67 8a       ld (08a67h),hl       	;" g .
	ram:6dae df             rst 18h              	;.
	ram:6daf ed 4b 67 8a    ld bc,(08a67h)       	;. K g .
	ram:6db3 cd 2f 71       call sub_712fh       	;. / q
	ram:6db6 2a 67 8a       ld hl,(08a67h)       	;* g .
	ram:6db9 fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:6dbd 28 05          jr z,l6dc4h          	;( .
	ram:6dbf cd f1 29       call 029f1h          	;. . )
	ram:6dc2 18 03          jr l6dc7h            	;. .
l6dc4h:
	ram:6dc4 cd d4 29       call 029d4h          	;. . )
l6dc7h:
	ram:6dc7 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6dcb 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:6dce cd d7 71       call sub_71d7h       	;. . q
	ram:6dd1 cd 56 20       call 02056h          	;. V  
	ram:6dd4 06 00          ld b,000h            	;. .
	ram:6dd6 cd fb 67       call sub_67fbh       	;. . g
	ram:6dd9 3e 0f          ld a,00fh            	;> .
	ram:6ddb c3 4a 6d       jp l6d4ah            	;. J m
l6ddeh:
	ram:6dde 7d             ld a,l               	;}
	ram:6ddf fe 05          cp 005h              	;. .
	ram:6de1 d2 2c 0a       jp nc,00a2ch         	;. , .
	ram:6de4 fe 03          cp 003h              	;. .
	ram:6de6 ca 2c 0a       jp z,00a2ch          	;. , .
	ram:6de9 32 8f 80       ld (0808fh),a        	;2 . .
	ram:6dec f5             push af              	;.
	ram:6ded cd 89 74       call sub_7489h       	;. . t
	ram:6df0 32 8e 80       ld (0808eh),a        	;2 . .
	ram:6df3 18 04          jr l6df9h            	;. .
l6df5h:
	ram:6df5 c5             push bc              	;.
	ram:6df6 cd cf 2d       call 02dcfh          	;. . -
l6df9h:
	ram:6df9 af             xor a                	;.
	ram:6dfa 32 8c 80       ld (0808ch),a        	;2 . .
	ram:6dfd cd db 23       call 023dbh          	;. . #
	ram:6e00 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6e03 cd 9c 77       call sub_779ch       	;. . w
	ram:6e06 42             ld b,d               	;B
	ram:6e07 4b             ld c,e               	;K
	ram:6e08 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:6e0b c1             pop bc               	;.
	ram:6e0c 10 e7          djnz l6df5h          	;. .
	ram:6e0e cd f4 2d       call 02df4h          	;. . -
	ram:6e11 3a 8e 80       ld a,(0808eh)        	;: . .
	ram:6e14 fe 0b          cp 00bh              	;. .
	ram:6e16 c2 14 70       jp nz,l7014h         	;. . p
	ram:6e19 c1             pop bc               	;.
	ram:6e1a d1             pop de               	;.
	ram:6e1b d5             push de              	;.
	ram:6e1c c5             push bc              	;.
	ram:6e1d cb 02          rlc d                	;. .
	ram:6e1f c4 da 5d       call nz,sub_5ddah    	;. . ]
	ram:6e22 3a 82 80       ld a,(08082h)        	;: . .
	ram:6e25 fe 3b          cp 03bh              	;. ;
	ram:6e27 38 09          jr c,l6e32h          	;8 .
	ram:6e29 cd c7 2f       call 02fc7h          	;. . /
	ram:6e2c 7e             ld a,(hl)            	;~
	ram:6e2d e6 1f          and 01fh             	;. .
	ram:6e2f c2 28 0a       jp nz,00a28h         	;. ( .
l6e32h:
	ram:6e32 cd 53 6e       call sub_6e53h       	;. S n
	ram:6e35 fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:6e39 21 01 00       ld hl,00001h         	;! . .
	ram:6e3c 22 65 8a       ld (08a65h),hl       	;" e .
	ram:6e3f c3 a8 2d       jp 02da8h            	;. . -
sub_6e42h:
	ram:6e42 d5             push de              	;.
	ram:6e43 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:6e46 c1             pop bc               	;.
	ram:6e47 3e 02          ld a,002h            	;> .
	ram:6e49 18 02          jr l6e4dh            	;. .
sub_6e4bh:
	ram:6e4b 3e 01          ld a,001h            	;> .
l6e4dh:
	ram:6e4d 32 8f 80       ld (0808fh),a        	;2 . .
	ram:6e50 cd 7e 2d       call 02d7eh          	;. ~ -
sub_6e53h:
	ram:6e53 cd f5 1f       call 01ff5h          	;. . .
	ram:6e56 3e ff          ld a,0ffh            	;> .
	ram:6e58 32 82 80       ld (08082h),a        	;2 . .
	ram:6e5b d7             rst 10h              	;.
	ram:6e5c 32 a3 80       ld (080a3h),a        	;2 . .
	ram:6e5f 7e             ld a,(hl)            	;~
	ram:6e60 f5             push af              	;.
	ram:6e61 38 1c          jr c,l6e7fh          	;8 .
	ram:6e63 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:6e66 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6e6a cd 47 1f       call 01f47h          	;. G .
	ram:6e6d fe 02          cp 002h              	;. .
	ram:6e6f 38 0e          jr c,l6e7fh          	;8 .
	ram:6e71 fe 04          cp 004h              	;. .
	ram:6e73 da 3c 6f       jp c,l6f3ch          	;. < o
	ram:6e76 fe 06          cp 006h              	;. .
	ram:6e78 38 58          jr c,l6ed2h          	;8 X
	ram:6e7a fe 08          cp 008h              	;. .
	ram:6e7c da 46 6f       jp c,l6f46h          	;. F o
l6e7fh:
	ram:6e7f cd 15 71       call sub_7115h       	;. . q
l6e82h:
	ram:6e82 21 01 00       ld hl,00001h         	;! . .
	ram:6e85 b7             or a                 	;.
	ram:6e86 ed 42          sbc hl,bc            	;. B
	ram:6e88 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6e8b fe 02          cp 002h              	;. .
	ram:6e8d d2 28 0a       jp nc,00a28h         	;. ( .
	ram:6e90 f5             push af              	;.
	ram:6e91 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:6e94 c1             pop bc               	;.
	ram:6e95 f1             pop af               	;.
	ram:6e96 c5             push bc              	;.
	ram:6e97 38 26          jr c,l6ebfh          	;8 &
	ram:6e99 f5             push af              	;.
	ram:6e9a cd 39 63       call sub_6339h       	;. 9 c
	ram:6e9d 11 0c 00       ld de,0000ch         	;. . .
	ram:6ea0 78             ld a,b               	;x
	ram:6ea1 b7             or a                 	;.
	ram:6ea2 28 03          jr z,l6ea7h          	;( .
	ram:6ea4 11 16 00       ld de,00016h         	;. . .
l6ea7h:
	ram:6ea7 c6 04          add a,004h           	;. .
	ram:6ea9 32 82 80       ld (08082h),a        	;2 . .
	ram:6eac cd 57 2a       call 02a57h          	;. W *
	ram:6eaf 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:6eb2 36 01          ld (hl),001h         	;6 .
	ram:6eb4 23             inc hl               	;#
	ram:6eb5 36 00          ld (hl),000h         	;6 .
	ram:6eb7 3a 82 80       ld a,(08082h)        	;: . .
	ram:6eba 32 a3 80       ld (080a3h),a        	;2 . .
	ram:6ebd 18 13          jr l6ed2h            	;. .
l6ebfh:
	ram:6ebf 21 01 00       ld hl,00001h         	;! . .
	ram:6ec2 f1             pop af               	;.
	ram:6ec3 b7             or a                 	;.
	ram:6ec4 f5             push af              	;.
	ram:6ec5 cc d9 29       call z,029d9h        	;. . )
	ram:6ec8 f1             pop af               	;.
	ram:6ec9 c4 f6 29       call nz,029f6h       	;. . )
	ram:6ecc ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6ed0 af             xor a                	;.
	ram:6ed1 f5             push af              	;.
l6ed2h:
	ram:6ed2 cd 15 71       call sub_7115h       	;. . q
	ram:6ed5 fe 02          cp 002h              	;. .
	ram:6ed7 d2 28 0a       jp nc,00a28h         	;. ( .
	ram:6eda 23             inc hl               	;#
	ram:6edb b7             or a                 	;.
	ram:6edc ed 42          sbc hl,bc            	;. B
	ram:6ede da 34 0a       jp c,00a34h          	;. 4 .
	ram:6ee1 c5             push bc              	;.
	ram:6ee2 f5             push af              	;.
	ram:6ee3 47             ld b,a               	;G
	ram:6ee4 3a a3 80       ld a,(080a3h)        	;: . .
	ram:6ee7 e6 01          and 001h             	;. .
	ram:6ee9 b8             cp b                 	;.
	ram:6eea 28 1d          jr z,l6f09h          	;( .
	ram:6eec fe 01          cp 001h              	;. .
	ram:6eee 20 08          jr nz,l6ef8h         	;.
	ram:6ef0 cd 24 2f       call 02f24h          	;. $ /
	ram:6ef3 cd 63 1f       call 01f63h          	;. c .
	ram:6ef6 18 15          jr l6f0dh            	;. .
l6ef8h:
	ram:6ef8 cd 3b 2e       call 02e3bh          	;. ; .
	ram:6efb ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:6eff cd 83 39       call 03983h          	;. . 9
	ram:6f02 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6f06 cd e5 2d       call 02de5h          	;. . -
l6f09h:
	ram:6f09 cd cf 2d       call 02dcfh          	;. . -
	ram:6f0c df             rst 18h              	;.
l6f0dh:
	ram:6f0d ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:6f11 f1             pop af               	;.
	ram:6f12 20 14          jr nz,l6f28h         	;.
	ram:6f14 df             rst 18h              	;.
	ram:6f15 3a 82 80       ld a,(08082h)        	;: . .
	ram:6f18 e6 1f          and 01fh             	;. .
	ram:6f1a ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:6f1e cd 6f 38       call 0386fh          	;. o 8
	ram:6f21 cd cf 2d       call 02dcfh          	;. . -
	ram:6f24 ed 5b d4 80    ld de,(080d4h)       	;. [ . .
l6f28h:
	ram:6f28 e1             pop hl               	;.
	ram:6f29 cd 47 39       call 03947h          	;. G 9
	ram:6f2c cd 07 20       call 02007h          	;. .  
	ram:6f2f cd cf 35       call 035cfh          	;. . 5
l6f32h:
	ram:6f32 cd cf 2d       call 02dcfh          	;. . -
	ram:6f35 f1             pop af               	;.
	ram:6f36 cb 77          bit 6,a              	;. w
	ram:6f38 c8             ret z                	;.
	ram:6f39 c3 1b 00       jp 0001bh            	;. . .
l6f3ch:
	ram:6f3c cd 15 71       call sub_7115h       	;. . q
	ram:6f3f fe 02          cp 002h              	;. .
	ram:6f41 d2 28 0a       jp nc,00a28h         	;. ( .
	ram:6f44 18 16          jr l6f5ch            	;. .
l6f46h:
	ram:6f46 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:6f49 fe 02          cp 002h              	;. .
	ram:6f4b 28 36          jr z,l6f83h          	;( 6
	ram:6f4d d2 2c 0a       jp nc,00a2ch         	;. , .
	ram:6f50 cd 1d 71       call sub_711dh       	;. . q
	ram:6f53 fe 02          cp 002h              	;. .
	ram:6f55 28 05          jr z,l6f5ch          	;( .
	ram:6f57 fe 03          cp 003h              	;. .
	ram:6f59 c2 82 6e       jp nz,l6e82h         	;. . n
l6f5ch:
	ram:6f5c e5             push hl              	;.
	ram:6f5d cb 00          rlc b                	;. .
	ram:6f5f c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6f62 41             ld b,c               	;A
	ram:6f63 0e 01          ld c,001h            	;. .
	ram:6f65 18 30          jr l6f97h            	;. 0
l6f67h:
	ram:6f67 13             inc de               	;.
	ram:6f68 1a             ld a,(de)            	;.
	ram:6f69 81             add a,c              	;.
	ram:6f6a 28 03          jr z,l6f6fh          	;( .
	ram:6f6c da 30 0a       jp c,00a30h          	;. 0 .
l6f6fh:
	ram:6f6f 3d             dec a                	;=
	ram:6f70 4f             ld c,a               	;O
	ram:6f71 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:6f74 fe 01          cp 001h              	;. .
	ram:6f76 20 57          jr nz,l6fcfh         	;W
	ram:6f78 f1             pop af               	;.
	ram:6f79 e1             pop hl               	;.
	ram:6f7a e3             ex (sp),hl           	;.
	ram:6f7b f5             push af              	;.
	ram:6f7c 7d             ld a,l               	;}
	ram:6f7d b9             cp c                 	;.
	ram:6f7e c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:6f81 18 55          jr l6fd8h            	;. U
l6f83h:
	ram:6f83 cd 1d 71       call sub_711dh       	;. . q
	ram:6f86 cb 00          rlc b                	;. .
	ram:6f88 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6f8b e5             push hl              	;.
	ram:6f8c c5             push bc              	;.
	ram:6f8d cd 8e 2d       call 02d8eh          	;. . -
	ram:6f90 cb 00          rlc b                	;. .
	ram:6f92 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6f95 e1             pop hl               	;.
	ram:6f96 45             ld b,l               	;E
l6f97h:
	ram:6f97 c5             push bc              	;.
	ram:6f98 fe 02          cp 002h              	;. .
	ram:6f9a 38 34          jr c,l6fd0h          	;8 4
	ram:6f9c fe 04          cp 004h              	;. .
	ram:6f9e 38 0a          jr c,l6faah          	;8 .
	ram:6fa0 fe 06          cp 006h              	;. .
	ram:6fa2 da 28 0a       jp c,00a28h          	;. ( .
	ram:6fa5 fe 08          cp 008h              	;. .
	ram:6fa7 d2 28 0a       jp nc,00a28h         	;. ( .
l6faah:
	ram:6faa e6 01          and 001h             	;. .
	ram:6fac f5             push af              	;.
	ram:6fad c5             push bc              	;.
	ram:6fae cd 24 2f       call 02f24h          	;. $ /
	ram:6fb1 d7             rst 10h              	;.
	ram:6fb2 da 38 0a       jp c,00a38h          	;. 8 .
	ram:6fb5 c1             pop bc               	;.
	ram:6fb6 e6 1f          and 01fh             	;. .
	ram:6fb8 fe 04          cp 004h              	;. .
	ram:6fba 38 ab          jr c,l6f67h          	;8 .
	ram:6fbc 1a             ld a,(de)            	;.
	ram:6fbd 81             add a,c              	;.
	ram:6fbe 28 03          jr z,l6fc3h          	;( .
	ram:6fc0 da 30 0a       jp c,00a30h          	;. 0 .
l6fc3h:
	ram:6fc3 3d             dec a                	;=
	ram:6fc4 4f             ld c,a               	;O
	ram:6fc5 13             inc de               	;.
	ram:6fc6 1a             ld a,(de)            	;.
	ram:6fc7 80             add a,b              	;.
	ram:6fc8 28 03          jr z,l6fcdh          	;( .
	ram:6fca da 30 0a       jp c,00a30h          	;. 0 .
l6fcdh:
	ram:6fcd 3d             dec a                	;=
	ram:6fce 47             ld b,a               	;G
l6fcfh:
	ram:6fcf f1             pop af               	;.
l6fd0h:
	ram:6fd0 e1             pop hl               	;.
	ram:6fd1 e3             ex (sp),hl           	;.
	ram:6fd2 f5             push af              	;.
	ram:6fd3 7d             ld a,l               	;}
	ram:6fd4 b9             cp c                 	;.
	ram:6fd5 da 30 0a       jp c,00a30h          	;. 0 .
l6fd8h:
	ram:6fd8 7c             ld a,h               	;|
	ram:6fd9 b8             cp b                 	;.
	ram:6fda da 30 0a       jp c,00a30h          	;. 0 .
	ram:6fdd c1             pop bc               	;.
	ram:6fde 3a a3 80       ld a,(080a3h)        	;: . .
	ram:6fe1 e6 01          and 001h             	;. .
	ram:6fe3 20 20          jr nz,l7005h         	;
	ram:6fe5 b8             cp b                 	;.
	ram:6fe6 28 1d          jr z,l7005h          	;( .
	ram:6fe8 cd 3b 2e       call 02e3bh          	;. ; .
	ram:6feb ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:6fef 3a a3 80       ld a,(080a3h)        	;: . .
	ram:6ff2 e6 1f          and 01fh             	;. .
	ram:6ff4 fe 06          cp 006h              	;. .
	ram:6ff6 f5             push af              	;.
	ram:6ff7 dc 15 38       call c,03815h        	;. . 8
	ram:6ffa f1             pop af               	;.
	ram:6ffb d4 1b 38       call nc,0381bh       	;. . 8
	ram:6ffe ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:7002 cd 0c 2e       call 02e0ch          	;. . .
l7005h:
	ram:7005 cd cf 2d       call 02dcfh          	;. . -
	ram:7008 df             rst 18h              	;.
	ram:7009 c1             pop bc               	;.
	ram:700a ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:700e cd fa 71       call sub_71fah       	;. . q
	ram:7011 c3 32 6f       jp l6f32h            	;. 2 o
l7014h:
	ram:7014 d7             rst 10h              	;.
	ram:7015 da 38 0a       jp c,00a38h          	;. 8 .
	ram:7018 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:701c fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:7020 28 02          jr z,l7024h          	;( .
	ram:7022 cb f6          set 6,(hl)           	;. .
l7024h:
	ram:7024 e6 1f          and 01fh             	;. .
	ram:7026 fe 04          cp 004h              	;. .
	ram:7028 da b9 70       jp c,l70b9h          	;. . p
	ram:702b fe 06          cp 006h              	;. .
	ram:702d da ea 70       jp c,l70eah          	;. . p
	ram:7030 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:7033 fe 02          cp 002h              	;. .
	ram:7035 28 7d          jr z,l70b4h          	;( }
	ram:7037 38 5c          jr c,l7095h          	;8 \
	ram:7039 cd f8 70       call sub_70f8h       	;. . p
	ram:703c c5             push bc              	;.
	ram:703d cd f8 70       call sub_70f8h       	;. . p
	ram:7040 e1             pop hl               	;.
	ram:7041 e5             push hl              	;.
	ram:7042 78             ld a,b               	;x
	ram:7043 94             sub h                	;.
	ram:7044 da 34 0a       jp c,00a34h          	;. 4 .
	ram:7047 3c             inc a                	;<
	ram:7048 67             ld h,a               	;g
	ram:7049 79             ld a,c               	;y
	ram:704a 95             sub l                	;.
	ram:704b da 34 0a       jp c,00a34h          	;. 4 .
	ram:704e 3c             inc a                	;<
	ram:704f 6f             ld l,a               	;o
	ram:7050 e5             push hl              	;.
	ram:7051 3a 82 80       ld a,(08082h)        	;: . .
	ram:7054 1f             rra                  	;.
	ram:7055 f5             push af              	;.
	ram:7056 d4 fc 29       call nc,029fch       	;. . )
	ram:7059 f1             pop af               	;.
	ram:705a dc 09 2a       call c,02a09h        	;. . *
l705dh:
	ram:705d ed 53 d2 80    ld (080d2h),de       	;. S . .
	ram:7061 e1             pop hl               	;.
	ram:7062 c1             pop bc               	;.
	ram:7063 11 01 01       ld de,00101h         	;. . .
l7066h:
	ram:7066 c5             push bc              	;.
l7067h:
	ram:7067 e5             push hl              	;.
	ram:7068 c5             push bc              	;.
	ram:7069 d5             push de              	;.
	ram:706a ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:706e cd 8f 39       call 0398fh          	;. . 9
	ram:7071 c1             pop bc               	;.
	ram:7072 c5             push bc              	;.
	ram:7073 ed 5b d2 80    ld de,(080d2h)       	;. [ . .
	ram:7077 cd ab 38       call 038abh          	;. . 8
	ram:707a d1             pop de               	;.
	ram:707b c1             pop bc               	;.
	ram:707c e1             pop hl               	;.
	ram:707d 7d             ld a,l               	;}
	ram:707e bb             cp e                 	;.
	ram:707f 28 04          jr z,l7085h          	;( .
	ram:7081 1c             inc e                	;.
	ram:7082 0c             inc c                	;.
	ram:7083 18 e2          jr l7067h            	;. .
l7085h:
	ram:7085 7c             ld a,h               	;|
	ram:7086 ba             cp d                 	;.
	ram:7087 c1             pop bc               	;.
	ram:7088 28 06          jr z,l7090h          	;( .
	ram:708a 04             inc b                	;.
	ram:708b 14             inc d                	;.
	ram:708c 1e 01          ld e,001h            	;. .
	ram:708e 18 d6          jr l7066h            	;. .
l7090h:
	ram:7090 cd 56 20       call 02056h          	;. V  
	ram:7093 18 36          jr l70cbh            	;. 6
l7095h:
	ram:7095 cd 1d 71       call sub_711dh       	;. . q
	ram:7098 cb 00          rlc b                	;. .
	ram:709a 20 76          jr nz,l7112h         	;v
	ram:709c 7c             ld a,h               	;|
	ram:709d b9             cp c                 	;.
	ram:709e 38 72          jr c,l7112h          	;8 r
	ram:70a0 41             ld b,c               	;A
	ram:70a1 0e 01          ld c,001h            	;. .
	ram:70a3 c5             push bc              	;.
	ram:70a4 61             ld h,c               	;a
	ram:70a5 e5             push hl              	;.
	ram:70a6 3a 82 80       ld a,(08082h)        	;: . .
	ram:70a9 1f             rra                  	;.
	ram:70aa f5             push af              	;.
	ram:70ab d4 9b 29       call nc,0299bh       	;. . )
	ram:70ae f1             pop af               	;.
	ram:70af dc c3 29       call c,029c3h        	;. . )
	ram:70b2 18 a9          jr l705dh            	;. .
l70b4h:
	ram:70b4 cd f8 70       call sub_70f8h       	;. . p
	ram:70b7 18 0f          jr l70c8h            	;. .
l70b9h:
	ram:70b9 cd 15 71       call sub_7115h       	;. . q
	ram:70bc cb 00          rlc b                	;. .
	ram:70be 20 52          jr nz,l7112h         	;R
	ram:70c0 41             ld b,c               	;A
	ram:70c1 0e 01          ld c,001h            	;. .
	ram:70c3 b7             or a                 	;.
	ram:70c4 ed 42          sbc hl,bc            	;. B
	ram:70c6 38 4a          jr c,l7112h          	;8 J
l70c8h:
	ram:70c8 cd 8f 39       call 0398fh          	;. . 9
l70cbh:
	ram:70cb fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:70cf 28 16          jr z,l70e7h          	;( .
	ram:70d1 2a 2f 86       ld hl,(0862fh)       	;* / .
	ram:70d4 2b             dec hl               	;+
	ram:70d5 22 2f 86       ld (0862fh),hl       	;" / .
	ram:70d8 7c             ld a,h               	;|
	ram:70d9 b5             or l                 	;.
	ram:70da 20 0b          jr nz,l70e7h         	;.
	ram:70dc 3a 82 80       ld a,(08082h)        	;: . .
	ram:70df e6 1e          and 01eh             	;. .
	ram:70e1 c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:70e4 cd 2c 6c       call sub_6c2ch       	;. , l
l70e7h:
	ram:70e7 c3 cc 6b       jp l6bcch            	;. . k
l70eah:
	ram:70ea cd 15 71       call sub_7115h       	;. . q
	ram:70ed ed 42          sbc hl,bc            	;. B
	ram:70ef 38 21          jr c,l7112h          	;8 !
	ram:70f1 60             ld h,b               	;`
	ram:70f2 69             ld l,c               	;i
	ram:70f3 cd 2f 39       call 0392fh          	;. / 9
	ram:70f6 18 d3          jr l70cbh            	;. .
sub_70f8h:
	ram:70f8 cd 1d 71       call sub_711dh       	;. . q
	ram:70fb cb 00          rlc b                	;. .
	ram:70fd 20 13          jr nz,l7112h         	;.
	ram:70ff e5             push hl              	;.
	ram:7100 c5             push bc              	;.
	ram:7101 cd 8e 2d       call 02d8eh          	;. . -
	ram:7104 cb 00          rlc b                	;. .
	ram:7106 20 0a          jr nz,l7112h         	;.
	ram:7108 e1             pop hl               	;.
	ram:7109 45             ld b,l               	;E
	ram:710a e1             pop hl               	;.
	ram:710b 7d             ld a,l               	;}
	ram:710c b9             cp c                 	;.
	ram:710d 38 03          jr c,l7112h          	;8 .
	ram:710f ed 42          sbc hl,bc            	;. B
	ram:7111 d0             ret nc               	;.
l7112h:
	ram:7112 c3 34 0a       jp 00a34h            	;. 4 .
sub_7115h:
	ram:7115 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:7118 fe 01          cp 001h              	;. .
	ram:711a c2 2c 0a       jp nz,00a2ch         	;. , .
sub_711dh:
	ram:711d cd 8e 2d       call 02d8eh          	;. . -
	ram:7120 cd c7 2f       call 02fc7h          	;. . /
	ram:7123 7e             ld a,(hl)            	;~
	ram:7124 e6 1f          and 01fh             	;. .
	ram:7126 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:7129 5e             ld e,(hl)            	;^
	ram:712a 23             inc hl               	;#
	ram:712b 56             ld d,(hl)            	;V
	ram:712c eb             ex de,hl             	;.
	ram:712d 1b             dec de               	;.
	ram:712e c9             ret                  	;.
sub_712fh:
	ram:712f 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:7132 11 f6 ff       ld de,0fff6h         	;. . .
l7135h:
	ram:7135 19             add hl,de            	;.
	ram:7136 7e             ld a,(hl)            	;~
	ram:7137 e6 1f          and 01fh             	;. .
	ram:7139 28 0a          jr z,l7145h          	;( .
	ram:713b fe 01          cp 001h              	;. .
	ram:713d c2 28 0a       jp nz,00a28h         	;. ( .
	ram:7140 fd cb 06 ce    set 1,(iy+006h)      	;. . . .
	ram:7144 19             add hl,de            	;.
l7145h:
	ram:7145 0b             dec bc               	;.
	ram:7146 79             ld a,c               	;y
	ram:7147 b7             or a                 	;.
	ram:7148 20 eb          jr nz,l7135h         	;.
	ram:714a b8             cp b                 	;.
	ram:714b 20 e8          jr nz,l7135h         	;.
	ram:714d c9             ret                  	;.
sub_714eh:
	ram:714e d5             push de              	;.
	ram:714f ed 4b 67 8a    ld bc,(08a67h)       	;. K g .
	ram:7153 cd 99 38       call 03899h          	;. . 8
	ram:7156 3a 68 8a       ld a,(08a68h)        	;: h .
	ram:7159 f5             push af              	;.
	ram:715a fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:715e 28 04          jr z,l7164h          	;( .
	ram:7160 11 0a 00       ld de,0000ah         	;. . .
	ram:7163 19             add hl,de            	;.
l7164h:
	ram:7164 ed 4b 66 8a    ld bc,(08a66h)       	;. K f .
l7168h:
	ram:7168 c5             push bc              	;.
	ram:7169 e5             push hl              	;.
	ram:716a cd 0c 2e       call 02e0ch          	;. . .
	ram:716d 7e             ld a,(hl)            	;~
	ram:716e e6 1f          and 01fh             	;. .
	ram:7170 28 30          jr z,l71a2h          	;( 0
	ram:7172 fe 01          cp 001h              	;. .
	ram:7174 28 41          jr z,l71b7h          	;( A
	ram:7176 e7             rst 20h              	;.
	ram:7177 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:717a e1             pop hl               	;.
	ram:717b c1             pop bc               	;.
	ram:717c c1             pop bc               	;.
	ram:717d d1             pop de               	;.
	ram:717e d5             push de              	;.
	ram:717f c5             push bc              	;.
	ram:7180 e5             push hl              	;.
	ram:7181 0e 01          ld c,001h            	;. .
	ram:7183 cd fa 71       call sub_71fah       	;. . q
	ram:7186 cd f4 2d       call 02df4h          	;. . -
	ram:7189 cd 60 26       call 02660h          	;. ` &
	ram:718c 2a 67 8a       ld hl,(08a67h)       	;* g .
	ram:718f 26 00          ld h,000h            	;& .
	ram:7191 fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:7195 28 01          jr z,l7198h          	;( .
	ram:7197 29             add hl,hl            	;)
l7198h:
	ram:7198 cd 33 1f       call 01f33h          	;. 3 .
	ram:719b d1             pop de               	;.
	ram:719c eb             ex de,hl             	;.
	ram:719d b7             or a                 	;.
	ram:719e ed 52          sbc hl,de            	;. R
	ram:71a0 18 2c          jr l71ceh            	;. ,
l71a2h:
	ram:71a2 fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:71a6 28 1b          jr z,l71c3h          	;( .
	ram:71a8 e7             rst 20h              	;.
	ram:71a9 d1             pop de               	;.
	ram:71aa 21 f6 ff       ld hl,0fff6h         	;! . .
	ram:71ad 19             add hl,de            	;.
	ram:71ae eb             ex de,hl             	;.
	ram:71af cd 85 72       call sub_7285h       	;. . r
	ram:71b2 21 e2 ff       ld hl,0ffe2h         	;! . .
	ram:71b5 18 13          jr l71cah            	;. .
l71b7h:
	ram:71b7 d1             pop de               	;.
	ram:71b8 cd 9d 20       call 0209dh          	;. .  
	ram:71bb 21 ec ff       ld hl,0ffech         	;! . .
	ram:71be 19             add hl,de            	;.
	ram:71bf e5             push hl              	;.
	ram:71c0 cd 0c 2e       call 02e0ch          	;. . .
l71c3h:
	ram:71c3 d1             pop de               	;.
	ram:71c4 cd 9d 20       call 0209dh          	;. .  
	ram:71c7 21 ec ff       ld hl,0ffech         	;! . .
l71cah:
	ram:71ca 19             add hl,de            	;.
	ram:71cb c1             pop bc               	;.
	ram:71cc 10 9a          djnz l7168h          	;. .
l71ceh:
	ram:71ce f1             pop af               	;.
	ram:71cf 3d             dec a                	;=
	ram:71d0 28 03          jr z,l71d5h          	;( .
	ram:71d2 f5             push af              	;.
	ram:71d3 18 8f          jr l7164h            	;. .
l71d5h:
	ram:71d5 d1             pop de               	;.
	ram:71d6 c9             ret                  	;.
sub_71d7h:
	ram:71d7 d5             push de              	;.
	ram:71d8 2a 67 8a       ld hl,(08a67h)       	;* g .
	ram:71db cd 29 39       call 03929h          	;. ) 9
	ram:71de ed 4b 67 8a    ld bc,(08a67h)       	;. K g .
	ram:71e2 af             xor a                	;.
	ram:71e3 32 67 8a       ld (08a67h),a        	;2 g .
	ram:71e6 b9             cp c                 	;.
	ram:71e7 28 01          jr z,l71eah          	;( .
	ram:71e9 04             inc b                	;.
l71eah:
	ram:71ea c5             push bc              	;.
	ram:71eb 41             ld b,c               	;A
	ram:71ec fd cb 06 4e    bit 1,(iy+006h)      	;. . . N
	ram:71f0 ca 68 71       jp z,l7168h          	;. h q
	ram:71f3 11 0a 00       ld de,0000ah         	;. . .
	ram:71f6 19             add hl,de            	;.
	ram:71f7 c3 68 71       jp l7168h            	;. h q
sub_71fah:
	ram:71fa cd 47 1f       call 01f47h          	;. G .
	ram:71fd fe 02          cp 002h              	;. .
	ram:71ff 28 02          jr z,l7203h          	;( .
l7201h:
	ram:7201 fe 03          cp 003h              	;. .
l7203h:
	ram:7203 3e 01          ld a,001h            	;> .
	ram:7205 28 01          jr z,l7208h          	;( .
	ram:7207 1a             ld a,(de)            	;.
l7208h:
	ram:7208 f5             push af              	;.
	ram:7209 d5             push de              	;.
	ram:720a cd 99 38       call 03899h          	;. . 8
	ram:720d e3             ex (sp),hl           	;.
	ram:720e 23             inc hl               	;#
	ram:720f 23             inc hl               	;#
	ram:7210 cd 47 1f       call 01f47h          	;. G .
	ram:7213 28 69          jr z,l727eh          	;( i
	ram:7215 fe 01          cp 001h              	;. .
	ram:7217 28 60          jr z,l7279h          	;( `
	ram:7219 7e             ld a,(hl)            	;~
	ram:721a e6 01          and 001h             	;. .
	ram:721c f5             push af              	;.
	ram:721d d7             rst 10h              	;.
	ram:721e eb             ex de,hl             	;.
	ram:721f 4e             ld c,(hl)            	;N
	ram:7220 23             inc hl               	;#
	ram:7221 46             ld b,(hl)            	;F
	ram:7222 23             inc hl               	;#
	ram:7223 7e             ld a,(hl)            	;~
	ram:7224 e6 01          and 001h             	;. .
	ram:7226 d1             pop de               	;.
	ram:7227 ba             cp d                 	;.
	ram:7228 d1             pop de               	;.
	ram:7229 20 2b          jr nz,l7256h         	;+
l722bh:
	ram:722b c5             push bc              	;.
	ram:722c e5             push hl              	;.
	ram:722d cb 46          bit 0,(hl)           	;. F
	ram:722f 69             ld l,c               	;i
	ram:7230 26 00          ld h,000h            	;& .
	ram:7232 28 01          jr z,l7235h          	;( .
	ram:7234 29             add hl,hl            	;)
l7235h:
	ram:7235 cd 33 1f       call 01f33h          	;. 3 .
	ram:7238 44             ld b,h               	;D
	ram:7239 4d             ld c,l               	;M
	ram:723a e1             pop hl               	;.
	ram:723b ed b0          ldir                 	;. .
	ram:723d c1             pop bc               	;.
	ram:723e f1             pop af               	;.
	ram:723f 05             dec b                	;.
	ram:7240 c8             ret z                	;.
	ram:7241 f5             push af              	;.
	ram:7242 c5             push bc              	;.
	ram:7243 e5             push hl              	;.
	ram:7244 91             sub c                	;.
	ram:7245 cb 46          bit 0,(hl)           	;. F
	ram:7247 6f             ld l,a               	;o
	ram:7248 26 00          ld h,000h            	;& .
	ram:724a 28 01          jr z,l724dh          	;( .
	ram:724c 29             add hl,hl            	;)
l724dh:
	ram:724d cd 33 1f       call 01f33h          	;. 3 .
	ram:7250 19             add hl,de            	;.
	ram:7251 eb             ex de,hl             	;.
	ram:7252 e1             pop hl               	;.
	ram:7253 c1             pop bc               	;.
	ram:7254 18 d5          jr l722bh            	;. .
l7256h:
	ram:7256 c5             push bc              	;.
l7257h:
	ram:7257 c5             push bc              	;.
	ram:7258 d5             push de              	;.
	ram:7259 e7             rst 20h              	;.
	ram:725a d1             pop de               	;.
	ram:725b e5             push hl              	;.
	ram:725c cd 85 72       call sub_7285h       	;. . r
	ram:725f e1             pop hl               	;.
	ram:7260 c1             pop bc               	;.
	ram:7261 0d             dec c                	;.
	ram:7262 20 f3          jr nz,l7257h         	;.
	ram:7264 c1             pop bc               	;.
	ram:7265 f1             pop af               	;.
	ram:7266 05             dec b                	;.
	ram:7267 c8             ret z                	;.
	ram:7268 f5             push af              	;.
	ram:7269 c5             push bc              	;.
	ram:726a e5             push hl              	;.
	ram:726b 91             sub c                	;.
	ram:726c 6f             ld l,a               	;o
	ram:726d 26 00          ld h,000h            	;& .
	ram:726f 29             add hl,hl            	;)
	ram:7270 cd 33 1f       call 01f33h          	;. 3 .
	ram:7273 19             add hl,de            	;.
	ram:7274 eb             ex de,hl             	;.
	ram:7275 e1             pop hl               	;.
	ram:7276 c1             pop bc               	;.
	ram:7277 18 dd          jr l7256h            	;. .
l7279h:
	ram:7279 d1             pop de               	;.
	ram:727a f1             pop af               	;.
	ram:727b c3 e5 1f       jp 01fe5h            	;. . .
l727eh:
	ram:727e d1             pop de               	;.
	ram:727f f1             pop af               	;.
	ram:7280 cb 46          bit 0,(hl)           	;. F
	ram:7282 ca 11 21       jp z,02111h          	;. . !
sub_7285h:
	ram:7285 d5             push de              	;.
	ram:7286 cd 63 1f       call 01f63h          	;. c .
	ram:7289 d1             pop de               	;.
	ram:728a c3 e5 1f       jp 01fe5h            	;. . .
l728dh:
	ram:728d cd 95 74       call sub_7495h       	;. . t
	ram:7290 cd a6 52       call sub_52a6h       	;. . R
	ram:7293 18 4b          jr l72e0h            	;. K
l7295h:
	ram:7295 c6 b0          add a,0b0h           	;. .
	ram:7297 18 02          jr l729bh            	;. .
l7299h:
	ram:7299 d6 02          sub 002h             	;. .
l729bh:
	ram:729b f5             push af              	;.
	ram:729c cd 95 74       call sub_7495h       	;. . t
	ram:729f f1             pop af               	;.
	ram:72a0 21 d0 40       ld hl,l40d0h         	;! . @
	ram:72a3 18 30          jr l72d5h            	;. 0
l72a5h:
	ram:72a5 f5             push af              	;.
	ram:72a6 fe 8e          cp 08eh              	;. .
	ram:72a8 c4 b0 73       call nz,sub_73b0h    	;. . s
	ram:72ab cd 95 74       call sub_7495h       	;. . t
	ram:72ae f1             pop af               	;.
	ram:72af fe 8f          cp 08fh              	;. .
	ram:72b1 30 05          jr nc,l72b8h         	;0 .
	ram:72b3 f5             push af              	;.
	ram:72b4 cd da 5d       call sub_5ddah       	;. . ]
	ram:72b7 f1             pop af               	;.
l72b8h:
	ram:72b8 21 fe 47       ld hl,sub_47feh      	;! . G
	ram:72bb 18 18          jr l72d5h            	;. .
l72bdh:
	ram:72bd cd b0 73       call sub_73b0h       	;. . s
	ram:72c0 d6 06          sub 006h             	;. .
	ram:72c2 18 02          jr l72c6h            	;. .
l72c4h:
	ram:72c4 d6 02          sub 002h             	;. .
l72c6h:
	ram:72c6 fe 5c          cp 05ch              	;. \
	ram:72c8 28 19          jr z,l72e3h          	;( .
	ram:72ca f5             push af              	;.
	ram:72cb cd 95 74       call sub_7495h       	;. . t
	ram:72ce cd da 5d       call sub_5ddah       	;. . ]
	ram:72d1 f1             pop af               	;.
	ram:72d2 21 86 4e       ld hl,04e86h         	;! . N
l72d5h:
	ram:72d5 5f             ld e,a               	;_
	ram:72d6 16 00          ld d,000h            	;. .
	ram:72d8 19             add hl,de            	;.
	ram:72d9 19             add hl,de            	;.
	ram:72da cd 33 00       call 00033h          	;. 3 .
	ram:72dd cd 6a 74       call sub_746ah       	;. j t
l72e0h:
	ram:72e0 c3 6d 69       jp l696dh            	;. m i
l72e3h:
	ram:72e3 cd 95 74       call sub_7495h       	;. . t
	ram:72e6 06 00          ld b,000h            	;. .
	ram:72e8 0e 01          ld c,001h            	;. .
	ram:72ea cd 7e 2d       call 02d7eh          	;. ~ -
	ram:72ed 18 f1          jr l72e0h            	;. .
l72efh:
	ram:72ef f5             push af              	;.
	ram:72f0 cd fa 74       call sub_74fah       	;. . t
	ram:72f3 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:72f6 f1             pop af               	;.
	ram:72f7 cd 20 6a       call sub_6a20h       	;.   j
	ram:72fa 21 fd 72       ld hl,l72fdh         	;! . r
l72fdh:
	ram:72fd 18 d6          jr l72d5h            	;. .
	ram:72ff 58             ld e,b               	;X
	ram:7300 73             ld (hl),e            	;s
	ram:7301 13             inc de               	;.
	ram:7302 73             ld (hl),e            	;s
	ram:7303 26 73          ld h,073h            	;& s
	ram:7305 2d             dec l                	;-
	ram:7306 73             ld (hl),e            	;s
	ram:7307 78             ld a,b               	;x
	ram:7308 73             ld (hl),e            	;s
	ram:7309 8d             adc a,l              	;.
	ram:730a 73             ld (hl),e            	;s
	ram:730b 91             sub c                	;.
	ram:730c 73             ld (hl),e            	;s
	ram:730d 95             sub l                	;.
	ram:730e 73             ld (hl),e            	;s
	ram:730f 99             sbc a,c              	;.
	ram:7310 73             ld (hl),e            	;s
	ram:7311 7f             ld a,a               	;.
	ram:7312 73             ld (hl),e            	;s
	ram:7313 fd cb 0b ee    set 5,(iy+00bh)      	;. . . .
	ram:7317 cd c4 73       call sub_73c4h       	;. . s
	ram:731a 20 52          jr nz,l736eh         	;R
	ram:731c fe 02          cp 002h              	;. .
	ram:731e c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:7321 fd cb 0b f6    set 6,(iy+00bh)      	;. . . .
	ram:7325 c9             ret                  	;.
	ram:7326 fd 7e 0b       ld a,(iy+00bh)       	;. ~ .
	ram:7329 cb bf          res 7,a              	;. .
	ram:732b 18 05          jr l7332h            	;. .
	ram:732d fd 7e 0b       ld a,(iy+00bh)       	;. ~ .
	ram:7330 cb ff          set 7,a              	;. .
l7332h:
	ram:7332 cb f7          set 6,a              	;. .
	ram:7334 fd 77 0b       ld (iy+00bh),a       	;. w .
	ram:7337 cd c4 73       call sub_73c4h       	;. . s
	ram:733a 20 39          jr nz,l7375h         	;9
	ram:733c fe 03          cp 003h              	;. .
	ram:733e c8             ret z                	;.
	ram:733f fe 02          cp 002h              	;. .
	ram:7341 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:7344 cd 27 64       call sub_6427h       	;. ' d
	ram:7347 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:734a 22 c6 80       ld (080c6h),hl       	;" . .
	ram:734d fd cb 00 86    res 0,(iy+000h)      	;. . . .
	ram:7351 01 02 01       ld bc,00102h         	;. . .
	ram:7354 cd 09 38       call 03809h          	;. . 8
	ram:7357 c9             ret                  	;.
	ram:7358 fd cb 0b ae    res 5,(iy+00bh)      	;. . . .
	ram:735c fd cb 0b b6    res 6,(iy+00bh)      	;. . . .
	ram:7360 cd c4 73       call sub_73c4h       	;. . s
	ram:7363 20 09          jr nz,l736eh         	;.
	ram:7365 fe 02          cp 002h              	;. .
	ram:7367 c8             ret z                	;.
	ram:7368 fe 03          cp 003h              	;. .
	ram:736a c8             ret z                	;.
	ram:736b c3 34 0a       jp 00a34h            	;. 4 .
l736eh:
	ram:736e fe 08          cp 008h              	;. .
	ram:7370 30 03          jr nc,l7375h         	;0 .
	ram:7372 cb 47          bit 0,a              	;. G
	ram:7374 c0             ret nz               	;.
l7375h:
	ram:7375 c3 28 0a       jp 00a28h            	;. ( .
	ram:7378 cd 22 26       call 02622h          	;. " &
	ram:737b 06 10          ld b,010h            	;. .
	ram:737d 18 02          jr l7381h            	;. .
	ram:737f 06 00          ld b,000h            	;. .
l7381h:
	ram:7381 cd b0 73       call sub_73b0h       	;. . s
	ram:7384 fd 7e 0b       ld a,(iy+00bh)       	;. ~ .
	ram:7387 cb d7          set 2,a              	;. .
	ram:7389 cb df          set 3,a              	;. .
	ram:738b 18 15          jr l73a2h            	;. .
	ram:738d 06 10          ld b,010h            	;. .
	ram:738f 18 0a          jr l739bh            	;. .
	ram:7391 06 04          ld b,004h            	;. .
	ram:7393 18 06          jr l739bh            	;. .
	ram:7395 06 08          ld b,008h            	;. .
	ram:7397 18 02          jr l739bh            	;. .
	ram:7399 06 00          ld b,000h            	;. .
l739bh:
	ram:739b fd 7e 0b       ld a,(iy+00bh)       	;. ~ .
	ram:739e cb 97          res 2,a              	;. .
	ram:73a0 cb 9f          res 3,a              	;. .
l73a2h:
	ram:73a2 cb a7          res 4,a              	;. .
	ram:73a4 b0             or b                 	;.
	ram:73a5 fd 77 0b       ld (iy+00bh),a       	;. w .
	ram:73a8 cd 47 1f       call 01f47h          	;. G .
	ram:73ab fe 08          cp 008h              	;. .
	ram:73ad 30 c6          jr nc,l7375h         	;0 .
	ram:73af c9             ret                  	;.
sub_73b0h:
	ram:73b0 fd cb 0a 56    bit 2,(iy+00ah)      	;. . . V
	ram:73b4 20 0b          jr nz,l73c1h         	;.
	ram:73b6 fd cb 0a 5e    bit 3,(iy+00ah)      	;. . . ^
	ram:73ba 20 05          jr nz,l73c1h         	;.
	ram:73bc fd cb 0a 66    bit 4,(iy+00ah)      	;. . . f
	ram:73c0 c8             ret z                	;.
l73c1h:
	ram:73c1 c3 20 0a       jp 00a20h            	;.   .
sub_73c4h:
	ram:73c4 cd 47 1f       call 01f47h          	;. G .
	ram:73c7 fe 02          cp 002h              	;. .
	ram:73c9 c0             ret nz               	;.
	ram:73ca d7             rst 10h              	;.
	ram:73cb 13             inc de               	;.
	ram:73cc 97             sub a                	;.
	ram:73cd 1a             ld a,(de)            	;.
	ram:73ce c9             ret                  	;.
sub_73cfh:
	ram:73cf cd 6b 74       call sub_746bh       	;. k t
sub_73d2h:
	ram:73d2 cd fd 74       call sub_74fdh       	;. . t
	ram:73d5 c0             ret nz               	;.
l73d6h:
	ram:73d6 c3 2c 0a       jp 00a2ch            	;. , .
sub_73d9h:
	ram:73d9 fe 2f          cp 02fh              	;. /
	ram:73db c8             ret z                	;.
	ram:73dc cd fd 74       call sub_74fdh       	;. . t
l73dfh:
	ram:73df 28 f5          jr z,l73d6h          	;( .
l73e1h:
	ram:73e1 c3 1c 0a       jp 00a1ch            	;. . .
sub_73e4h:
	ram:73e4 cd c6 77       call sub_77c6h       	;. . w
	ram:73e7 b7             or a                 	;.
	ram:73e8 18 03          jr sub_73edh         	;. .
sub_73eah:
	ram:73ea cd c6 77       call sub_77c6h       	;. . w
sub_73edh:
	ram:73ed 0b             dec bc               	;.
	ram:73ee ed 43 61 8a    ld (08a61h),bc       	;. C a .
sub_73f2h:
	ram:73f2 30 03          jr nc,l73f7h         	;0 .
	ram:73f4 b7             or a                 	;.
	ram:73f5 18 e8          jr l73dfh            	;. .
l73f7h:
	ram:73f7 eb             ex de,hl             	;.
	ram:73f8 60             ld h,b               	;`
	ram:73f9 69             ld l,c               	;i
	ram:73fa b7             or a                 	;.
	ram:73fb ed 52          sbc hl,de            	;. R
	ram:73fd 28 e2          jr z,l73e1h          	;( .
sub_73ffh:
	ram:73ff e5             push hl              	;.
	ram:7400 3a 56 8a       ld a,(08a56h)        	;: V .
	ram:7403 c6 03          add a,003h           	;. .
	ram:7405 5f             ld e,a               	;_
	ram:7406 16 00          ld d,000h            	;. .
	ram:7408 19             add hl,de            	;.
	ram:7409 cd 2a 2a       call 02a2ah          	;. * *
	ram:740c 13             inc de               	;.
	ram:740d 13             inc de               	;.
	ram:740e 21 56 8a       ld hl,08a56h         	;! V .
	ram:7411 4e             ld c,(hl)            	;N
	ram:7412 06 00          ld b,000h            	;. .
	ram:7414 03             inc bc               	;.
	ram:7415 ed b0          ldir                 	;. .
	ram:7417 c1             pop bc               	;.
	ram:7418 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:741b 23             inc hl               	;#
	ram:741c b7             or a                 	;.
	ram:741d ed 42          sbc hl,bc            	;. B
	ram:741f e5             push hl              	;.
	ram:7420 d5             push de              	;.
	ram:7421 ed 5b 5f 8a    ld de,(08a5fh)       	;. [ _ .
	ram:7425 b7             or a                 	;.
	ram:7426 ed 52          sbc hl,de            	;. R
	ram:7428 eb             ex de,hl             	;.
	ram:7429 e1             pop hl               	;.
	ram:742a 73             ld (hl),e            	;s
	ram:742b 23             inc hl               	;#
	ram:742c 72             ld (hl),d            	;r
	ram:742d 23             inc hl               	;#
	ram:742e eb             ex de,hl             	;.
	ram:742f e1             pop hl               	;.
	ram:7430 ed b0          ldir                 	;. .
	ram:7432 c3 56 20       jp 02056h            	;. V  
sub_7435h:
	ram:7435 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:7438 23             inc hl               	;#
	ram:7439 e5             push hl              	;.
	ram:743a cd 20 43       call sub_4320h       	;.   C
	ram:743d 60             ld h,b               	;`
	ram:743e 69             ld l,c               	;i
	ram:743f 0b             dec bc               	;.
	ram:7440 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:7444 c1             pop bc               	;.
	ram:7445 b7             or a                 	;.
	ram:7446 ed 42          sbc hl,bc            	;. B
	ram:7448 c9             ret                  	;.
l7449h:
	ram:7449 cd a8 2d       call 02da8h          	;. . -
l744ch:
	ram:744c d1             pop de               	;.
	ram:744d f1             pop af               	;.
	ram:744e b7             or a                 	;.
	ram:744f 28 08          jr z,l7459h          	;( .
	ram:7451 fe 11          cp 011h              	;. .
	ram:7453 c2 1c 0a       jp nz,00a1ch         	;. . .
	ram:7456 cd da 5d       call sub_5ddah       	;. . ]
l7459h:
	ram:7459 cd a8 2d       call 02da8h          	;. . -
	ram:745c 21 8d 50       ld hl,l508dh         	;! . P
	ram:745f 5f             ld e,a               	;_
	ram:7460 16 00          ld d,000h            	;. .
	ram:7462 19             add hl,de            	;.
	ram:7463 19             add hl,de            	;.
	ram:7464 cd 33 00       call 00033h          	;. 3 .
	ram:7467 3a 65 8a       ld a,(08a65h)        	;: e .
sub_746ah:
	ram:746a e9             jp (hl)              	;.
sub_746bh:
	ram:746b cd a3 26       call 026a3h          	;. . &
sub_746eh:
	ram:746e 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:7471 23             inc hl               	;#
	ram:7472 22 61 8a       ld (08a61h),hl       	;" a .
sub_7475h:
	ram:7475 ed 4b 61 8a    ld bc,(08a61h)       	;. K a .
l7479h:
	ram:7479 2a 63 8a       ld hl,(08a63h)       	;* c .
	ram:747c af             xor a                	;.
	ram:747d ed 42          sbc hl,bc            	;. B
	ram:747f d8             ret c                	;.
	ram:7480 0a             ld a,(bc)            	;.
	ram:7481 c9             ret                  	;.
sub_7482h:
	ram:7482 ed 4b 61 8a    ld bc,(08a61h)       	;. K a .
	ram:7486 03             inc bc               	;.
	ram:7487 18 f0          jr l7479h            	;. .
sub_7489h:
	ram:7489 2a e5 8b       ld hl,(08be5h)       	;* . .
l748ch:
	ram:748c 23             inc hl               	;#
	ram:748d 7e             ld a,(hl)            	;~
	ram:748e c9             ret                  	;.
sub_748fh:
	ram:748f 2a e5 8b       ld hl,(08be5h)       	;* . .
	ram:7492 23             inc hl               	;#
	ram:7493 18 f7          jr l748ch            	;. .
sub_7495h:
	ram:7495 cd a7 74       call sub_74a7h       	;. . t
	ram:7498 20 0a          jr nz,l74a4h         	;.
	ram:749a cd 0b 00       call 0000bh          	;. . .
	ram:749d 20 05          jr nz,l74a4h         	;.
	ram:749f cd 89 74       call sub_7489h       	;. . t
	ram:74a2 b7             or a                 	;.
	ram:74a3 c8             ret z                	;.
l74a4h:
	ram:74a4 c3 1c 0a       jp 00a1ch            	;. . .
sub_74a7h:
	ram:74a7 3a 55 8a       ld a,(08a55h)        	;: U .
	ram:74aa e6 1f          and 01fh             	;. .
	ram:74ac fe 12          cp 012h              	;. .
	ram:74ae c9             ret                  	;.
sub_74afh:
	ram:74af cd cf 73       call sub_73cfh       	;. . s
	ram:74b2 fe 3c          cp 03ch              	;. <
	ram:74b4 28 ee          jr z,l74a4h          	;( .
	ram:74b6 fe 3d          cp 03dh              	;. =
	ram:74b8 20 18          jr nz,l74d2h         	;.
	ram:74ba cd 6e 74       call sub_746eh       	;. n t
	ram:74bd fe 33          cp 033h              	;. 3
	ram:74bf 28 04          jr z,l74c5h          	;( .
	ram:74c1 fe 34          cp 034h              	;. 4
	ram:74c3 20 df          jr nz,l74a4h         	;.
l74c5h:
	ram:74c5 cd 4b 38       call 0384bh          	;. K 8
	ram:74c8 18 30          jr sub_74fah         	;. 0
sub_74cah:
	ram:74ca cd 6e 74       call sub_746eh       	;. n t
sub_74cdh:
	ram:74cd cd d2 73       call sub_73d2h       	;. . s
	ram:74d0 fe 3b          cp 03bh              	;. ;
l74d2h:
	ram:74d2 30 d0          jr nc,l74a4h         	;0 .
	ram:74d4 fe 32          cp 032h              	;. 2
	ram:74d6 38 cc          jr c,l74a4h          	;8 .
sub_74d8h:
	ram:74d8 f5             push af              	;.
	ram:74d9 cd 98 21       call 02198h          	;. . !
	ram:74dc f1             pop af               	;.
	ram:74dd d6 32          sub 032h             	;. 2
	ram:74df 28 04          jr z,l74e5h          	;( .
	ram:74e1 fe 09          cp 009h              	;. .
	ram:74e3 38 07          jr c,l74ech          	;8 .
l74e5h:
	ram:74e5 fe 0b          cp 00bh              	;. .
	ram:74e7 3e 01          ld a,001h            	;> .
	ram:74e9 c4 6e 74       call nz,sub_746eh    	;. n t
l74ech:
	ram:74ec 47             ld b,a               	;G
	ram:74ed 11 83 80       ld de,08083h         	;. . .
	ram:74f0 12             ld (de),a            	;.
l74f1h:
	ram:74f1 c5             push bc              	;.
	ram:74f2 cd 6e 74       call sub_746eh       	;. n t
	ram:74f5 13             inc de               	;.
	ram:74f6 12             ld (de),a            	;.
	ram:74f7 c1             pop bc               	;.
	ram:74f8 10 f7          djnz l74f1h          	;. .
sub_74fah:
	ram:74fa cd 82 74       call sub_7482h       	;. . t
sub_74fdh:
	ram:74fd fe 6e          cp 06eh              	;. n
	ram:74ff c8             ret z                	;.
sub_7500h:
	ram:7500 b7             or a                 	;.
	ram:7501 c8             ret z                	;.
	ram:7502 fe 6f          cp 06fh              	;. o
	ram:7504 c9             ret                  	;.
sub_7505h:
	ram:7505 21 34 5c       ld hl,l5c34h         	;! 4 \
	ram:7508 b7             or a                 	;.
	ram:7509 ed 42          sbc hl,bc            	;. B
	ram:750b c8             ret z                	;.
	ram:750c 21 2c 5c       ld hl,l5c2ch         	;! , \
	ram:750f b7             or a                 	;.
	ram:7510 ed 42          sbc hl,bc            	;. B
	ram:7512 c9             ret                  	;.
sub_7513h:
	ram:7513 d7             rst 10h              	;.
	ram:7514 d8             ret c                	;.
	ram:7515 cd 9c 66       call sub_669ch       	;. . f
	ram:7518 af             xor a                	;.
	ram:7519 32 82 80       ld (08082h),a        	;2 . .
	ram:751c c9             ret                  	;.
sub_751dh:
	ram:751d fe 32          cp 032h              	;. 2
	ram:751f 38 14          jr c,l7535h          	;8 .
	ram:7521 fe 3b          cp 03bh              	;. ;
	ram:7523 d8             ret c                	;.
	ram:7524 fe 3d          cp 03dh              	;. =
	ram:7526 38 0d          jr c,l7535h          	;8 .
	ram:7528 c8             ret z                	;.
	ram:7529 fe 41          cp 041h              	;. A
	ram:752b 38 08          jr c,l7535h          	;8 .
	ram:752d c8             ret z                	;.
	ram:752e fe bf          cp 0bfh              	;. .
	ram:7530 38 03          jr c,l7535h          	;8 .
	ram:7532 fe c1          cp 0c1h              	;. .
	ram:7534 d8             ret c                	;.
l7535h:
	ram:7535 c3 de 5d       jp l5ddeh            	;. . ]
sub_7538h:
	ram:7538 11 82 80       ld de,08082h         	;. . .
	ram:753b 7e             ld a,(hl)            	;~
	ram:753c e6 1f          and 01fh             	;. .
	ram:753e 3a 85 80       ld a,(08085h)        	;: . .
	ram:7541 20 22          jr nz,l7565h         	;"
sub_7543h:
	ram:7543 e5             push hl              	;.
	ram:7544 b7             or a                 	;.
	ram:7545 20 08          jr nz,l754fh         	;.
	ram:7547 23             inc hl               	;#
	ram:7548 23             inc hl               	;#
	ram:7549 23             inc hl               	;#
	ram:754a be             cp (hl)              	;.
	ram:754b 28 16          jr z,l7563h          	;( .
	ram:754d e1             pop hl               	;.
	ram:754e e5             push hl              	;.
l754fh:
	ram:754f 7e             ld a,(hl)            	;~
	ram:7550 e6 9f          and 09fh             	;. .
	ram:7552 47             ld b,a               	;G
	ram:7553 1a             ld a,(de)            	;.
	ram:7554 e6 9f          and 09fh             	;. .
	ram:7556 b8             cp b                 	;.
	ram:7557 20 0a          jr nz,l7563h         	;.
	ram:7559 06 09          ld b,009h            	;. .
l755bh:
	ram:755b 13             inc de               	;.
	ram:755c 23             inc hl               	;#
	ram:755d 1a             ld a,(de)            	;.
	ram:755e be             cp (hl)              	;.
	ram:755f 20 02          jr nz,l7563h         	;.
	ram:7561 10 f8          djnz l755bh          	;. .
l7563h:
	ram:7563 e1             pop hl               	;.
	ram:7564 c9             ret                  	;.
l7565h:
	ram:7565 e5             push hl              	;.
	ram:7566 cd 43 75       call sub_7543h       	;. C u
	ram:7569 20 f8          jr nz,l7563h         	;.
	ram:756b 11 0a 00       ld de,0000ah         	;. . .
	ram:756e 19             add hl,de            	;.
	ram:756f 3a 90 80       ld a,(08090h)        	;: . .
	ram:7572 11 8d 80       ld de,0808dh         	;. . .
	ram:7575 cd 43 75       call sub_7543h       	;. C u
	ram:7578 18 e9          jr l7563h            	;. .
sub_757ah:
	ram:757a cd 89 74       call sub_7489h       	;. . t
	ram:757d fe 0b          cp 00bh              	;. .
	ram:757f 3e c0          ld a,0c0h            	;> .
	ram:7581 c0             ret nz               	;.
	ram:7582 e1             pop hl               	;.
	ram:7583 cd a8 2d       call 02da8h          	;. . -
	ram:7586 cd 6b 74       call sub_746bh       	;. k t
	ram:7589 fe 10          cp 010h              	;. .
	ram:758b f5             push af              	;.
	ram:758c cc 6b 74       call z,sub_746bh     	;. k t
	ram:758f fe 3d          cp 03dh              	;. =
	ram:7591 28 05          jr z,l7598h          	;( .
	ram:7593 cd cd 74       call sub_74cdh       	;. . t
	ram:7596 18 0e          jr l75a6h            	;. .
l7598h:
	ram:7598 cd d8 74       call sub_74d8h       	;. . t
	ram:759b 3a 84 80       ld a,(08084h)        	;: . .
	ram:759e fe 33          cp 033h              	;. 3
	ram:75a0 da 28 0a       jp c,00a28h          	;. ( .
	ram:75a3 cd 4b 38       call 0384bh          	;. K 8
l75a6h:
	ram:75a6 cd fa 74       call sub_74fah       	;. . t
	ram:75a9 28 13          jr z,l75beh          	;( .
	ram:75ab ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:75af fe 11          cp 011h              	;. .
	ram:75b1 20 08          jr nz,l75bbh         	;.
	ram:75b3 f1             pop af               	;.
	ram:75b4 20 05          jr nz,l75bbh         	;.
	ram:75b6 cd fa 74       call sub_74fah       	;. . t
	ram:75b9 28 04          jr z,l75bfh          	;( .
l75bbh:
	ram:75bb c3 1c 0a       jp 00a1ch            	;. . .
l75beh:
	ram:75be f1             pop af               	;.
l75bfh:
	ram:75bf cd f5 1f       call 01ff5h          	;. . .
	ram:75c2 cd 24 2f       call 02f24h          	;. $ /
	ram:75c5 cd 22 26       call 02622h          	;. " &
	ram:75c8 32 8c 80       ld (0808ch),a        	;2 . .
	ram:75cb cd e7 23       call 023e7h          	;. . #
	ram:75ce c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:75d1 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:75d5 21 03 fc       ld hl,0fc03h         	;! . .
	ram:75d8 b7             or a                 	;.
	ram:75d9 ed 52          sbc hl,de            	;. R
	ram:75db da 3c 0a       jp c,00a3ch          	;. < .
	ram:75de cd 9c 77       call sub_779ch       	;. . w
	ram:75e1 d5             push de              	;.
	ram:75e2 cd 56 20       call 02056h          	;. V  
	ram:75e5 d7             rst 10h              	;.
	ram:75e6 38 40          jr c,l7628h          	;8 @
	ram:75e8 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:75ec 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:75ef cd 9c 66       call sub_669ch       	;. . f
	ram:75f2 e6 1e          and 01eh             	;. .
	ram:75f4 fe 04          cp 004h              	;. .
	ram:75f6 20 49          jr nz,l7641h         	;I
	ram:75f8 eb             ex de,hl             	;.
	ram:75f9 5e             ld e,(hl)            	;^
	ram:75fa 23             inc hl               	;#
	ram:75fb 56             ld d,(hl)            	;V
	ram:75fc eb             ex de,hl             	;.
	ram:75fd d1             pop de               	;.
	ram:75fe cd 8e 00       call 0008eh          	;. . .
	ram:7601 28 1f          jr z,l7622h          	;( .
	ram:7603 38 60          jr c,l7665h          	;8 `
	ram:7605 42             ld b,d               	;B
	ram:7606 4b             ld c,e               	;K
	ram:7607 03             inc bc               	;.
	ram:7608 ed 52          sbc hl,de            	;. R
	ram:760a ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:760e 3a 82 80       ld a,(08082h)        	;: . .
	ram:7611 cd 27 38       call 03827h          	;. ' 8
l7614h:
	ram:7614 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:7617 cb 76          bit 6,(hl)           	;. v
	ram:7619 c4 1b 00       call nz,0001bh       	;. . .
	ram:761c cd 07 20       call 02007h          	;. .  
	ram:761f cd cf 35       call 035cfh          	;. . 5
l7622h:
	ram:7622 cd f4 2d       call 02df4h          	;. . -
	ram:7625 c3 92 5d       jp l5d92h            	;. . ]
l7628h:
	ram:7628 e1             pop hl               	;.
	ram:7629 e5             push hl              	;.
	ram:762a cd d9 29       call 029d9h          	;. . )
l762dh:
	ram:762d ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:7631 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:7634 13             inc de               	;.
l7635h:
	ram:7635 13             inc de               	;.
	ram:7636 cd 98 21       call 02198h          	;. . !
	ram:7639 e1             pop hl               	;.
	ram:763a 7d             ld a,l               	;}
	ram:763b b4             or h                 	;.
	ram:763c c4 da 1f       call nz,01fdah       	;. . .
	ram:763f 18 d3          jr l7614h            	;. .
l7641h:
	ram:7641 cd f5 1f       call 01ff5h          	;. . .
	ram:7644 cd 39 63       call sub_6339h       	;. 9 c
	ram:7647 3e 04          ld a,004h            	;> .
	ram:7649 32 82 80       ld (08082h),a        	;2 . .
	ram:764c e1             pop hl               	;.
	ram:764d e5             push hl              	;.
	ram:764e cd 33 1f       call 01f33h          	;. 3 .
	ram:7651 da 3c 0a       jp c,00a3ch          	;. < .
	ram:7654 23             inc hl               	;#
	ram:7655 23             inc hl               	;#
	ram:7656 eb             ex de,hl             	;.
	ram:7657 cd 57 2a       call 02a57h          	;. W *
	ram:765a d1             pop de               	;.
	ram:765b d5             push de              	;.
	ram:765c 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:765f 73             ld (hl),e            	;s
	ram:7660 23             inc hl               	;#
	ram:7661 72             ld (hl),d            	;r
	ram:7662 eb             ex de,hl             	;.
	ram:7663 18 d0          jr l7635h            	;. .
l7665h:
	ram:7665 eb             ex de,hl             	;.
	ram:7666 b7             or a                 	;.
	ram:7667 ed 52          sbc hl,de            	;. R
	ram:7669 4b             ld c,e               	;K
	ram:766a 42             ld b,d               	;B
	ram:766b ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:766f 3a 82 80       ld a,(08082h)        	;: . .
	ram:7672 b7             or a                 	;.
	ram:7673 cd 21 38       call 03821h          	;. ! 8
	ram:7676 18 9c          jr l7614h            	;. .
sub_7678h:
	ram:7678 cd 89 74       call sub_7489h       	;. . t
	ram:767b fe 0b          cp 00bh              	;. .
	ram:767d 3e bf          ld a,0bfh            	;> .
	ram:767f c0             ret nz               	;.
	ram:7680 e1             pop hl               	;.
	ram:7681 cd a8 2d       call 02da8h          	;. . -
	ram:7684 cd 6b 74       call sub_746bh       	;. k t
	ram:7687 fe 10          cp 010h              	;. .
	ram:7689 f5             push af              	;.
	ram:768a cc 6b 74       call z,sub_746bh     	;. k t
	ram:768d cd cd 74       call sub_74cdh       	;. . t
	ram:7690 28 13          jr z,l76a5h          	;( .
	ram:7692 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:7696 fe 11          cp 011h              	;. .
	ram:7698 20 08          jr nz,l76a2h         	;.
	ram:769a f1             pop af               	;.
	ram:769b 20 05          jr nz,l76a2h         	;.
	ram:769d cd fa 74       call sub_74fah       	;. . t
	ram:76a0 28 04          jr z,l76a6h          	;( .
l76a2h:
	ram:76a2 c3 1c 0a       jp 00a1ch            	;. . .
l76a5h:
	ram:76a5 f1             pop af               	;.
l76a6h:
	ram:76a6 d7             rst 10h              	;.
	ram:76a7 f5             push af              	;.
	ram:76a8 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:76ac 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:76af d4 9c 66       call nc,sub_669ch    	;. . f
	ram:76b2 cd f5 1f       call 01ff5h          	;. . .
	ram:76b5 cd 24 2f       call 02f24h          	;. $ /
	ram:76b8 cd 47 1f       call 01f47h          	;. G .
	ram:76bb ca 5f 77       jp z,l775fh          	;. _ w
	ram:76be fe 04          cp 004h              	;. .
	ram:76c0 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:76c3 d7             rst 10h              	;.
	ram:76c4 da 38 0a       jp c,00a38h          	;. 8 .
	ram:76c7 eb             ex de,hl             	;.
	ram:76c8 22 d2 80       ld (080d2h),hl       	;" . .
	ram:76cb 7e             ld a,(hl)            	;~
	ram:76cc fe 02          cp 002h              	;. .
	ram:76ce c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:76d1 23             inc hl               	;#
	ram:76d2 7e             ld a,(hl)            	;~
	ram:76d3 b7             or a                 	;.
	ram:76d4 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:76d7 cd 65 20       call 02065h          	;. e  
	ram:76da 21 02 00       ld hl,00002h         	;! . .
	ram:76dd cd d4 29       call 029d4h          	;. . )
	ram:76e0 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:76e3 01 16 00       ld bc,00016h         	;. . .
	ram:76e6 ed b0          ldir                 	;. .
	ram:76e8 11 a3 80       ld de,080a3h         	;. . .
	ram:76eb cd 6e 2f       call 02f6eh          	;. n /
	ram:76ee cd 39 20       call 02039h          	;. 9  
	ram:76f1 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:76f4 23             inc hl               	;#
	ram:76f5 23             inc hl               	;#
	ram:76f6 e7             rst 20h              	;.
	ram:76f7 e5             push hl              	;.
	ram:76f8 cd 8b 77       call sub_778bh       	;. . w
	ram:76fb e1             pop hl               	;.
	ram:76fc d5             push de              	;.
	ram:76fd e7             rst 20h              	;.
	ram:76fe cd 8b 77       call sub_778bh       	;. . w
	ram:7701 e1             pop hl               	;.
	ram:7702 55             ld d,l               	;U
	ram:7703 f1             pop af               	;.
	ram:7704 30 10          jr nc,l7716h         	;0 .
	ram:7706 d5             push de              	;.
	ram:7707 cd 56 20       call 02056h          	;. V  
	ram:770a e1             pop hl               	;.
	ram:770b e5             push hl              	;.
	ram:770c cd 01 26       call 02601h          	;. . &
	ram:770f e3             ex (sp),hl           	;.
	ram:7710 cd 01 2a       call 02a01h          	;. . *
	ram:7713 c3 2d 76       jp l762dh            	;. - v
l7716h:
	ram:7716 3e 06          ld a,006h            	;> .
	ram:7718 32 82 80       ld (08082h),a        	;2 . .
	ram:771b 3a a3 80       ld a,(080a3h)        	;: . .
	ram:771e e6 1e          and 01eh             	;. .
	ram:7720 fe 06          cp 006h              	;. .
	ram:7722 20 18          jr nz,l773ch         	;.
	ram:7724 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:7727 7e             ld a,(hl)            	;~
	ram:7728 23             inc hl               	;#
	ram:7729 66             ld h,(hl)            	;f
	ram:772a 6f             ld l,a               	;o
	ram:772b cd 8e 00       call 0008eh          	;. . .
l772eh:
	ram:772e ca 22 76       jp z,l7622h          	;. " v
	ram:7731 d5             push de              	;.
	ram:7732 cd 56 20       call 02056h          	;. V  
	ram:7735 e1             pop hl               	;.
	ram:7736 cd f7 37       call 037f7h          	;. . 7
	ram:7739 c3 14 76       jp l7614h            	;. . v
l773ch:
	ram:773c d5             push de              	;.
	ram:773d cd 39 63       call sub_6339h       	;. 9 c
	ram:7740 e1             pop hl               	;.
	ram:7741 e5             push hl              	;.
	ram:7742 cd 01 26       call 02601h          	;. . &
	ram:7745 d1             pop de               	;.
	ram:7746 e5             push hl              	;.
	ram:7747 d5             push de              	;.
	ram:7748 cd 33 1f       call 01f33h          	;. 3 .
	ram:774b da 3c 0a       jp c,00a3ch          	;. < .
	ram:774e 23             inc hl               	;#
	ram:774f 23             inc hl               	;#
	ram:7750 eb             ex de,hl             	;.
	ram:7751 cd 57 2a       call 02a57h          	;. W *
	ram:7754 d1             pop de               	;.
	ram:7755 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:7758 73             ld (hl),e            	;s
	ram:7759 23             inc hl               	;#
	ram:775a 72             ld (hl),d            	;r
	ram:775b eb             ex de,hl             	;.
	ram:775c c3 35 76       jp l7635h            	;. 5 v
l775fh:
	ram:775f cd 8b 77       call sub_778bh       	;. . w
	ram:7762 f1             pop af               	;.
	ram:7763 30 0c          jr nc,l7771h         	;0 .
	ram:7765 d5             push de              	;.
	ram:7766 cd 56 20       call 02056h          	;. V  
	ram:7769 e1             pop hl               	;.
	ram:776a e5             push hl              	;.
	ram:776b cd a4 29       call 029a4h          	;. . )
	ram:776e c3 2d 76       jp l762dh            	;. - v
l7771h:
	ram:7771 53             ld d,e               	;S
	ram:7772 1e 01          ld e,001h            	;. .
	ram:7774 3e 02          ld a,002h            	;> .
	ram:7776 32 82 80       ld (08082h),a        	;2 . .
	ram:7779 3a a3 80       ld a,(080a3h)        	;: . .
	ram:777c e6 1e          and 01eh             	;. .
	ram:777e fe 02          cp 002h              	;. .
	ram:7780 20 ba          jr nz,l773ch         	;.
	ram:7782 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:7785 23             inc hl               	;#
	ram:7786 7e             ld a,(hl)            	;~
	ram:7787 ba             cp d                 	;.
	ram:7788 c3 2e 77       jp l772eh            	;. . w
sub_778bh:
	ram:778b 32 8c 80       ld (0808ch),a        	;2 . .
	ram:778e cd db 23       call 023dbh          	;. . #
	ram:7791 20 06          jr nz,l7799h         	;.
	ram:7793 cd 9c 77       call sub_779ch       	;. . w
	ram:7796 cb 0a          rrc d                	;. .
	ram:7798 c8             ret z                	;.
l7799h:
	ram:7799 c3 34 0a       jp 00a34h            	;. 4 .
sub_779ch:
	ram:779c 3a 85 80       ld a,(08085h)        	;: . .
	ram:779f b7             or a                 	;.
	ram:77a0 cc 98 21       call z,02198h        	;. . !
	ram:77a3 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:77a7 21 03 fc       ld hl,0fc03h         	;! . .
	ram:77aa b7             or a                 	;.
	ram:77ab ed 52          sbc hl,de            	;. R
	ram:77ad 38 ea          jr c,l7799h          	;8 .
	ram:77af 45             ld b,l               	;E
	ram:77b0 21 86 80       ld hl,08086h         	;! . .
	ram:77b3 28 09          jr z,l77beh          	;( .
l77b5h:
	ram:77b5 af             xor a                	;.
	ram:77b6 2b             dec hl               	;+
	ram:77b7 ed 67          rrd                  	;. g
	ram:77b9 23             inc hl               	;#
	ram:77ba ed 67          rrd                  	;. g
	ram:77bc 10 f7          djnz l77b5h          	;. .
l77beh:
	ram:77be cd 37 25       call 02537h          	;. 7 %
	ram:77c1 c9             ret                  	;.
sub_77c2h:
	ram:77c2 06 ff          ld b,0ffh            	;. .
	ram:77c4 18 02          jr l77c8h            	;. .
sub_77c6h:
	ram:77c6 06 00          ld b,000h            	;. .
l77c8h:
	ram:77c8 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:77cb e5             push hl              	;.
	ram:77cc 11 00 00       ld de,00000h         	;. . .
	ram:77cf c5             push bc              	;.
l77d0h:
	ram:77d0 cd fa 74       call sub_74fah       	;. . t
	ram:77d3 ca 88 78       jp z,l7888h          	;. . x
	ram:77d6 ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:77da fe 10          cp 010h              	;. .
	ram:77dc 20 07          jr nz,l77e5h         	;.
	ram:77de 7b             ld a,e               	;{
	ram:77df b7             or a                 	;.
	ram:77e0 20 ee          jr nz,l77d0h         	;.
	ram:77e2 14             inc d                	;.
	ram:77e3 18 eb          jr l77d0h            	;. .
l77e5h:
	ram:77e5 fe 44          cp 044h              	;. D
	ram:77e7 28 16          jr z,l77ffh          	;( .
	ram:77e9 fe e0          cp 0e0h              	;. .
	ram:77eb 28 12          jr z,l77ffh          	;( .
	ram:77ed fe 2d          cp 02dh              	;. -
	ram:77ef 28 0e          jr z,l77ffh          	;( .
	ram:77f1 fe ff          cp 0ffh              	;. .
	ram:77f3 28 0a          jr z,l77ffh          	;( .
	ram:77f5 fe e1          cp 0e1h              	;. .
	ram:77f7 20 11          jr nz,l780ah         	;.
	ram:77f9 03             inc bc               	;.
	ram:77fa 03             inc bc               	;.
	ram:77fb ed 43 61 8a    ld (08a61h),bc       	;. C a .
l77ffh:
	ram:77ff cd 6e 74       call sub_746eh       	;. n t
	ram:7802 da 89 78       jp c,l7889h          	;. . x
	ram:7805 b7             or a                 	;.
	ram:7806 20 f7          jr nz,l77ffh         	;.
	ram:7808 18 c6          jr l77d0h            	;. .
l780ah:
	ram:780a fe 3f          cp 03fh              	;. ?
	ram:780c 20 07          jr nz,l7815h         	;.
	ram:780e e1             pop hl               	;.
	ram:780f e5             push hl              	;.
	ram:7810 cb 14          rl h                 	;. .
	ram:7812 da de 5d       jp c,l5ddeh          	;. . ]
l7815h:
	ram:7815 fe 32          cp 032h              	;. 2
	ram:7817 28 19          jr z,l7832h          	;( .
	ram:7819 fe 33          cp 033h              	;. 3
	ram:781b 38 23          jr c,l7840h          	;8 #
	ram:781d fe 3b          cp 03bh              	;. ;
	ram:781f 30 0b          jr nc,l782ch         	;0 .
	ram:7821 d6 32          sub 032h             	;. 2
	ram:7823 6f             ld l,a               	;o
l7824h:
	ram:7824 26 00          ld h,000h            	;& .
	ram:7826 09             add hl,bc            	;.
	ram:7827 22 61 8a       ld (08a61h),hl       	;" a .
	ram:782a 18 a4          jr l77d0h            	;. .
l782ch:
	ram:782c fe 3d          cp 03dh              	;. =
	ram:782e 28 02          jr z,l7832h          	;( .
	ram:7830 30 9e          jr nc,l77d0h         	;0 .
l7832h:
	ram:7832 f5             push af              	;.
	ram:7833 cd 6e 74       call sub_746eh       	;. n t
	ram:7836 38 4f          jr c,l7887h          	;8 O
	ram:7838 6f             ld l,a               	;o
	ram:7839 f1             pop af               	;.
	ram:783a fe 3d          cp 03dh              	;. =
	ram:783c 20 e6          jr nz,l7824h         	;.
	ram:783e 18 90          jr l77d0h            	;. .
l7840h:
	ram:7840 fe 11          cp 011h              	;. .
	ram:7842 20 08          jr nz,l784ch         	;.
	ram:7844 7b             ld a,e               	;{
	ram:7845 b7             or a                 	;.
	ram:7846 20 88          jr nz,l77d0h         	;.
	ram:7848 15             dec d                	;.
	ram:7849 fa 89 78       jp m,l7889h          	;. . x
l784ch:
	ram:784c fe 0c          cp 00ch              	;. .
	ram:784e 28 04          jr z,l7854h          	;( .
	ram:7850 fe 0e          cp 00eh              	;. .
	ram:7852 20 03          jr nz,l7857h         	;.
l7854h:
	ram:7854 1c             inc e                	;.
	ram:7855 18 0d          jr l7864h            	;. .
l7857h:
	ram:7857 fe 0d          cp 00dh              	;. .
	ram:7859 28 04          jr z,l785fh          	;( .
	ram:785b fe 0f          cp 00fh              	;. .
	ram:785d 20 14          jr nz,l7873h         	;.
l785fh:
	ram:785f 7b             ld a,e               	;{
	ram:7860 b7             or a                 	;.
	ram:7861 28 01          jr z,l7864h          	;( .
	ram:7863 1d             dec e                	;.
l7864h:
	ram:7864 c3 d0 77       jp l77d0h            	;. . w
l7867h:
	ram:7867 fe 2e          cp 02eh              	;. .
	ram:7869 20 f9          jr nz,l7864h         	;.
	ram:786b 7a             ld a,d               	;z
	ram:786c b3             or e                 	;.
	ram:786d 3e 2e          ld a,02eh            	;> .
	ram:786f 20 f3          jr nz,l7864h         	;.
	ram:7871 18 16          jr l7889h            	;. .
l7873h:
	ram:7873 e1             pop hl               	;.
	ram:7874 e5             push hl              	;.
	ram:7875 cb 14          rl h                 	;. .
	ram:7877 38 eb          jr c,l7864h          	;8 .
	ram:7879 fe 2f          cp 02fh              	;. /
	ram:787b 20 ea          jr nz,l7867h         	;.
	ram:787d 7a             ld a,d               	;z
	ram:787e b3             or e                 	;.
	ram:787f 20 e3          jr nz,l7864h         	;.
l7881h:
	ram:7881 e1             pop hl               	;.
	ram:7882 e1             pop hl               	;.
	ram:7883 22 61 8a       ld (08a61h),hl       	;" a .
	ram:7886 c9             ret                  	;.
l7887h:
	ram:7887 f1             pop af               	;.
l7888h:
	ram:7888 af             xor a                	;.
l7889h:
	ram:7889 37             scf                  	;7
	ram:788a 18 f5          jr l7881h            	;. .
sub_788ch:
	ram:788c cd 1b 00       call 0001bh          	;. . .
	ram:788f cd 39 38       call 03839h          	;. 9 8
	ram:7892 cd d5 35       call 035d5h          	;. . 5
	ram:7895 21 00 00       ld hl,00000h         	;! . .
	ram:7898 22 b9 80       ld (080b9h),hl       	;" . .
	ram:789b 22 ba 80       ld (080bah),hl       	;" . .
l789eh:
	ram:789e 11 00 00       ld de,00000h         	;. . .
	ram:78a1 cd 75 74       call sub_7475h       	;. u t
	ram:78a4 30 17          jr nc,l78bdh         	;0 .
l78a6h:
	ram:78a6 2a ba 80       ld hl,(080bah)       	;* . .
	ram:78a9 7c             ld a,h               	;|
	ram:78aa b5             or l                 	;.
	ram:78ab c8             ret z                	;.
	ram:78ac 2b             dec hl               	;+
	ram:78ad 22 ba 80       ld (080bah),hl       	;" . .
	ram:78b0 cd 8e 2d       call 02d8eh          	;. . -
	ram:78b3 c5             push bc              	;.
	ram:78b4 cd a7 5c       call sub_5ca7h       	;. . \
	ram:78b7 d1             pop de               	;.
l78b8h:
	ram:78b8 cd 6e 74       call sub_746eh       	;. n t
	ram:78bb 38 e9          jr c,l78a6h          	;8 .
l78bdh:
	ram:78bd fe 10          cp 010h              	;. .
	ram:78bf 28 08          jr z,l78c9h          	;( .
	ram:78c1 fe 0c          cp 00ch              	;. .
	ram:78c3 28 04          jr z,l78c9h          	;( .
	ram:78c5 fe 0e          cp 00eh              	;. .
	ram:78c7 20 03          jr nz,l78cch         	;.
l78c9h:
	ram:78c9 13             inc de               	;.
	ram:78ca 18 ec          jr l78b8h            	;. .
l78cch:
	ram:78cc fe 44          cp 044h              	;. D
	ram:78ce 28 14          jr z,l78e4h          	;( .
	ram:78d0 fe e0          cp 0e0h              	;. .
	ram:78d2 28 10          jr z,l78e4h          	;( .
	ram:78d4 fe 2d          cp 02dh              	;. -
	ram:78d6 28 0c          jr z,l78e4h          	;( .
	ram:78d8 fe e1          cp 0e1h              	;. .
	ram:78da 20 11          jr nz,l78edh         	;.
	ram:78dc 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:78df 23             inc hl               	;#
	ram:78e0 23             inc hl               	;#
	ram:78e1 22 61 8a       ld (08a61h),hl       	;" a .
l78e4h:
	ram:78e4 cd 6e 74       call sub_746eh       	;. n t
	ram:78e7 d8             ret c                	;.
	ram:78e8 b7             or a                 	;.
	ram:78e9 20 f9          jr nz,l78e4h         	;.
	ram:78eb 18 cb          jr l78b8h            	;. .
l78edh:
	ram:78ed fe ff          cp 0ffh              	;. .
	ram:78ef ca 1c 0a       jp z,00a1ch          	;. . .
	ram:78f2 fe 32          cp 032h              	;. 2
	ram:78f4 da 6c 79       jp c,l796ch          	;. l y
	ram:78f7 fe 3e          cp 03eh              	;. >
	ram:78f9 30 57          jr nc,l7952h         	;0 W
	ram:78fb d5             push de              	;.
	ram:78fc f5             push af              	;.
	ram:78fd cd d8 74       call sub_74d8h       	;. . t
	ram:7900 f1             pop af               	;.
l7901h:
	ram:7901 fe 3d          cp 03dh              	;. =
	ram:7903 28 62          jr z,l7967h          	;( b
	ram:7905 f5             push af              	;.
	ram:7906 fe 3c          cp 03ch              	;. <
	ram:7908 cc aa 79       call z,sub_79aah     	;. . y
	ram:790b d7             rst 10h              	;.
	ram:790c da 96 79       jp c,l7996h          	;. . y
	ram:790f e6 1f          and 01fh             	;. .
	ram:7911 fe 08          cp 008h              	;. .
	ram:7913 28 29          jr z,l793eh          	;( )
	ram:7915 fe 09          cp 009h              	;. .
	ram:7917 28 25          jr z,l793eh          	;( %
	ram:7919 fe 0d          cp 00dh              	;. .
	ram:791b 38 05          jr c,l7922h          	;8 .
	ram:791d fe 13          cp 013h              	;. .
	ram:791f da 28 0a       jp c,00a28h          	;. ( .
l7922h:
	ram:7922 fe 0a          cp 00ah              	;. .
	ram:7924 20 1b          jr nz,l7941h         	;.
	ram:7926 c1             pop bc               	;.
	ram:7927 cb 76          bit 6,(hl)           	;. v
	ram:7929 20 24          jr nz,l794fh         	;$
	ram:792b cb f6          set 6,(hl)           	;. .
	ram:792d cd fd 5c       call l5cfdh          	;. . \
	ram:7930 c1             pop bc               	;.
	ram:7931 cd 7e 2d       call 02d7eh          	;. ~ -
	ram:7934 2a ba 80       ld hl,(080bah)       	;* . .
	ram:7937 23             inc hl               	;#
	ram:7938 22 ba 80       ld (080bah),hl       	;" . .
	ram:793b c3 9e 78       jp l789eh            	;. . x
l793eh:
	ram:793e f1             pop af               	;.
	ram:793f 18 0e          jr l794fh            	;. .
l7941h:
	ram:7941 f1             pop af               	;.
	ram:7942 fe 3c          cp 03ch              	;. <
	ram:7944 28 09          jr z,l794fh          	;( .
	ram:7946 cb 7e          bit 7,(hl)           	;. ~
	ram:7948 20 05          jr nz,l794fh         	;.
	ram:794a cb fe          set 7,(hl)           	;. .
	ram:794c cd 12 7a       call sub_7a12h       	;. . z
l794fh:
	ram:794f d1             pop de               	;.
	ram:7950 18 23          jr l7975h            	;. #
l7952h:
	ram:7952 fe 3f          cp 03fh              	;. ?
	ram:7954 20 2c          jr nz,l7982h         	;,
	ram:7956 2a ba 80       ld hl,(080bah)       	;* . .
	ram:7959 7c             ld a,h               	;|
	ram:795a b5             or l                 	;.
	ram:795b 20 18          jr nz,l7975h         	;.
	ram:795d 7a             ld a,d               	;z
	ram:795e b3             or e                 	;.
	ram:795f 20 14          jr nz,l7975h         	;.
	ram:7961 3c             inc a                	;<
	ram:7962 32 b9 80       ld (080b9h),a        	;2 . .
	ram:7965 18 0e          jr l7975h            	;. .
l7967h:
	ram:7967 cd b7 79       call sub_79b7h       	;. . y
	ram:796a 18 e3          jr l794fh            	;. .
l796ch:
	ram:796c fe 11          cp 011h              	;. .
	ram:796e 20 08          jr nz,l7978h         	;.
l7970h:
	ram:7970 7a             ld a,d               	;z
	ram:7971 b3             or e                 	;.
	ram:7972 28 01          jr z,l7975h          	;( .
	ram:7974 1b             dec de               	;.
l7975h:
	ram:7975 c3 b8 78       jp l78b8h            	;. . x
l7978h:
	ram:7978 fe 0d          cp 00dh              	;. .
	ram:797a 28 f4          jr z,l7970h          	;( .
	ram:797c fe 0f          cp 00fh              	;. .
	ram:797e 28 f0          jr z,l7970h          	;( .
	ram:7980 18 f3          jr l7975h            	;. .
l7982h:
	ram:7982 fe d7          cp 0d7h              	;. .
	ram:7984 28 2e          jr z,l79b4h          	;( .
	ram:7986 fe 6e          cp 06eh              	;. n
	ram:7988 28 2a          jr z,l79b4h          	;( *
	ram:798a fe 3e          cp 03eh              	;. >
	ram:798c 20 e7          jr nz,l7975h         	;.
	ram:798e cd fe 79       call sub_79feh       	;. . y
	ram:7991 cd fe 79       call sub_79feh       	;. . y
	ram:7994 18 df          jr l7975h            	;. .
l7996h:
	ram:7996 f1             pop af               	;.
	ram:7997 fe 3b          cp 03bh              	;. ;
	ram:7999 ca 38 0a       jp z,00a38h          	;. 8 .
	ram:799c dc a1 79       call c,sub_79a1h     	;. . y
	ram:799f 18 ae          jr l794fh            	;. .
sub_79a1h:
	ram:79a1 cd 86 29       call 02986h          	;. . )
	ram:79a4 3e 94          ld a,094h            	;> .
	ram:79a6 77             ld (hl),a            	;w
	ram:79a7 c3 27 1f       jp 01f27h            	;. ' .
sub_79aah:
	ram:79aa 3a 84 80       ld a,(08084h)        	;: . .
	ram:79ad fe 41          cp 041h              	;. A
	ram:79af 28 03          jr z,l79b4h          	;( .
	ram:79b1 fe 66          cp 066h              	;. f
	ram:79b3 c0             ret nz               	;.
l79b4h:
	ram:79b4 c3 4d 0a       jp 00a4dh            	;. M .
sub_79b7h:
	ram:79b7 3a 84 80       ld a,(08084h)        	;: . .
	ram:79ba fe 04          cp 004h              	;. .
	ram:79bc 28 f6          jr z,l79b4h          	;( .
	ram:79be fe 05          cp 005h              	;. .
	ram:79c0 28 f2          jr z,l79b4h          	;( .
	ram:79c2 fe 1b          cp 01bh              	;. .
	ram:79c4 28 ee          jr z,l79b4h          	;( .
	ram:79c6 fe 1a          cp 01ah              	;. .
	ram:79c8 28 ea          jr z,l79b4h          	;( .
	ram:79ca c9             ret                  	;.
sub_79cbh:
	ram:79cb fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:79cf c8             ret z                	;.
	ram:79d0 cd 13 00       call 00013h          	;. . .
	ram:79d3 c0             ret nz               	;.
	ram:79d4 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:79d8 cd 7a 00       call 0007ah          	;. z .
	ram:79db 20 15          jr nz,sub_79f2h      	;.
	ram:79dd 21 01 78       ld hl,l77ffh+2       	;! . x
	ram:79e0 b7             or a                 	;.
	ram:79e1 ed 52          sbc hl,de            	;. R
	ram:79e3 28 cf          jr z,l79b4h          	;( .
	ram:79e5 cd 7f 00       call 0007fh          	;. . .
	ram:79e8 28 08          jr z,sub_79f2h       	;( .
	ram:79ea 21 01 72       ld hl,l7201h         	;! . r
	ram:79ed b7             or a                 	;.
	ram:79ee ed 52          sbc hl,de            	;. R
	ram:79f0 28 c2          jr z,l79b4h          	;( .
sub_79f2h:
	ram:79f2 2a 83 80       ld hl,(08083h)       	;* . .
	ram:79f5 11 01 79       ld de,l7901h         	;. . y
	ram:79f8 b7             or a                 	;.
	ram:79f9 ed 52          sbc hl,de            	;. R
	ram:79fb c0             ret nz               	;.
	ram:79fc 18 b6          jr l79b4h            	;. .
sub_79feh:
	ram:79fe cd 82 74       call sub_7482h       	;. . t
	ram:7a01 d8             ret c                	;.
	ram:7a02 fe 33          cp 033h              	;. 3
	ram:7a04 d8             ret c                	;.
	ram:7a05 fe 3b          cp 03bh              	;. ;
	ram:7a07 d0             ret nc               	;.
	ram:7a08 d6 32          sub 032h             	;. 2
	ram:7a0a 6f             ld l,a               	;o
	ram:7a0b 26 00          ld h,000h            	;& .
	ram:7a0d 09             add hl,bc            	;.
	ram:7a0e 22 61 8a       ld (08a61h),hl       	;" a .
	ram:7a11 c9             ret                  	;.
sub_7a12h:
	ram:7a12 22 98 80       ld (08098h),hl       	;" . .
	ram:7a15 2b             dec hl               	;+
	ram:7a16 2b             dec hl               	;+
	ram:7a17 2b             dec hl               	;+
	ram:7a18 7e             ld a,(hl)            	;~
	ram:7a19 c6 04          add a,004h           	;. .
	ram:7a1b 4f             ld c,a               	;O
	ram:7a1c 06 00          ld b,000h            	;. .
	ram:7a1e c5             push bc              	;.
	ram:7a1f 11 ad 80       ld de,080adh         	;. . .
	ram:7a22 2a 98 80       ld hl,(08098h)       	;* . .
	ram:7a25 ed b8          lddr                 	;. .
	ram:7a27 13             inc de               	;.
	ram:7a28 d5             push de              	;.
	ram:7a29 23             inc hl               	;#
	ram:7a2a ed 5b eb 8b    ld de,(08bebh)       	;. [ . .
	ram:7a2e 13             inc de               	;.
	ram:7a2f d5             push de              	;.
	ram:7a30 b7             or a                 	;.
	ram:7a31 ed 52          sbc hl,de            	;. R
	ram:7a33 28 0a          jr z,l7a3fh          	;( .
	ram:7a35 44             ld b,h               	;D
	ram:7a36 4d             ld c,l               	;M
	ram:7a37 19             add hl,de            	;.
	ram:7a38 2b             dec hl               	;+
	ram:7a39 ed 5b 98 80    ld de,(08098h)       	;. [ . .
	ram:7a3d ed b8          lddr                 	;. .
l7a3fh:
	ram:7a3f d1             pop de               	;.
	ram:7a40 e1             pop hl               	;.
	ram:7a41 c1             pop bc               	;.
	ram:7a42 ed b0          ldir                 	;. .
	ram:7a44 c9             ret                  	;.
sub_7a45h:
	ram:7a45 21 03 41       ld hl,04103h         	;! . A
	ram:7a48 22 83 80       ld (08083h),hl       	;" . .
	ram:7a4b 21 6e 73       ld hl,l736eh         	;! n s
	ram:7a4e 22 85 80       ld (08085h),hl       	;" . .
	ram:7a51 c9             ret                  	;.
sub_7a52h:
	ram:7a52 2a 2f 86       ld hl,(0862fh)       	;* / .
	ram:7a55 7c             ld a,h               	;|
	ram:7a56 b5             or l                 	;.
	ram:7a57 c9             ret                  	;.
sub_7a58h:
	ram:7a58 2a 2b 86       ld hl,(0862bh)       	;* + .
	ram:7a5b 11 81 00       ld de,00081h         	;. . .
	ram:7a5e b7             or a                 	;.
	ram:7a5f ed 52          sbc hl,de            	;. R
	ram:7a61 7e             ld a,(hl)            	;~
	ram:7a62 47             ld b,a               	;G
	ram:7a63 04             inc b                	;.
	ram:7a64 11 83 80       ld de,08083h         	;. . .
l7a67h:
	ram:7a67 1a             ld a,(de)            	;.
	ram:7a68 be             cp (hl)              	;.
	ram:7a69 c0             ret nz               	;.
	ram:7a6a 23             inc hl               	;#
	ram:7a6b 13             inc de               	;.
	ram:7a6c 10 f9          djnz l7a67h          	;. .
	ram:7a6e c9             ret                  	;.
sub_7a6fh:
	ram:7a6f fd cb 00 86    res 0,(iy+000h)      	;. . . .
	ram:7a73 e6 01          and 001h             	;. .
	ram:7a75 c4 7d 26       call nz,0267dh       	;. } &
	ram:7a78 d7             rst 10h              	;.
	ram:7a79 eb             ex de,hl             	;.
	ram:7a7a 5e             ld e,(hl)            	;^
	ram:7a7b 23             inc hl               	;#
	ram:7a7c 56             ld d,(hl)            	;V
	ram:7a7d eb             ex de,hl             	;.
	ram:7a7e 22 b9 80       ld (080b9h),hl       	;" . .
	ram:7a81 cd 7f 3a       call 03a7fh          	;. . :
	ram:7a84 c3 3b 2e       jp 02e3bh            	;. ; .
	ram:7a87 21 af 7a       ld hl,l7aafh         	;! . z
	ram:7a8a cd 5b 06       call 0065bh          	;. [ .
	ram:7a8d cd 95 3c       call 03c95h          	;. . <
	ram:7a90 cd 18 7c       call sub_7c18h       	;. . |
	ram:7a93 d7             rst 10h              	;.
	ram:7a94 30 06          jr nc,l7a9ch         	;0 .
	ram:7a96 21 00 00       ld hl,00000h         	;! . .
	ram:7a99 cd 2f 2a       call 02a2fh          	;. / *
l7a9ch:
	ram:7a9c 22 25 8b       ld (08b25h),hl       	;" % .
	ram:7a9f 36 0a          ld (hl),00ah         	;6 .
	ram:7aa1 cd 7b 35       call 0357bh          	;. { 5
	ram:7aa4 fd cb 09 c6    set 0,(iy+009h)      	;. . . .
	ram:7aa8 21 fc 82       ld hl,082fch         	;! . .
	ram:7aab cd 45 3e       call 03e45h          	;. E >
	ram:7aae c9             ret                  	;.
l7aafh:
	ram:7aaf bc             cp h                 	;.
	ram:7ab0 7a             ld a,d               	;z
	ram:7ab1 a2             and d                	;.
	ram:7ab2 7b             ld a,e               	;{
	ram:7ab3 8b             adc a,e              	;.
	ram:7ab4 7b             ld a,e               	;{
	ram:7ab5 a6             and (hl)             	;.
	ram:7ab6 7b             ld a,e               	;{
	ram:7ab7 a9             xor c                	;.
	ram:7ab8 7b             ld a,e               	;{
	ram:7ab9 ce 7b          adc a,07bh           	;. {
	ram:7abb 0f             rrca                 	;.
	ram:7abc fe 06          cp 006h              	;. .
	ram:7abe 20 50          jr nz,l7b10h         	;P
	ram:7ac0 97             sub a                	;.
	ram:7ac1 32 06 80       ld (08006h),a        	;2 . .
	ram:7ac4 cd b9 3c       call 03cb9h          	;. . <
	ram:7ac7 cd 75 00       call 00075h          	;. u .
	ram:7aca 20 2a          jr nz,l7af6h         	;*
	ram:7acc cd bf 3c       call 03cbfh          	;. . <
	ram:7acf c8             ret z                	;.
	ram:7ad0 cd d2 01       call 001d2h          	;. . .
	ram:7ad3 cd a9 3d       call 03da9h          	;. . =
	ram:7ad6 fd cb 09 4e    bit 1,(iy+009h)      	;. . . N
	ram:7ada 28 1a          jr z,l7af6h          	;( .
	ram:7adc cd c5 3c       call 03cc5h          	;. . <
	ram:7adf cd cb 3c       call 03ccbh          	;. . <
	ram:7ae2 cd 40 0a       call 00a40h          	;. @ .
	ram:7ae5 cd 18 7c       call sub_7c18h       	;. . |
	ram:7ae8 21 09 7b       ld hl,l7b09h         	;! . {
	ram:7aeb cd b5 0a       call 00ab5h          	;. . .
	ram:7aee cd 54 5b       call sub_5b54h       	;. T [
	ram:7af1 cd db 0a       call 00adbh          	;. . .
	ram:7af4 18 0f          jr l7b05h            	;. .
l7af6h:
	ram:7af6 cd cb 3c       call 03ccbh          	;. . <
	ram:7af9 3e 0c          ld a,00ch            	;> .
	ram:7afb 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:7afe 77             ld (hl),a            	;w
	ram:7aff cd 18 7c       call sub_7c18h       	;. . |
	ram:7b02 32 82 80       ld (08082h),a        	;2 . .
l7b05h:
	ram:7b05 e1             pop hl               	;.
	ram:7b06 e1             pop hl               	;.
	ram:7b07 e1             pop hl               	;.
	ram:7b08 c9             ret                  	;.
l7b09h:
	ram:7b09 21 c9 08       ld hl,008c9h         	;! . .
	ram:7b0c cd 96 04       call 00496h          	;. . .
	ram:7b0f c9             ret                  	;.
l7b10h:
	ram:7b10 fe 02          cp 002h              	;. .
	ram:7b12 ca 07 3d       jp z,03d07h          	;. . =
	ram:7b15 fe 01          cp 001h              	;. .
	ram:7b17 ca 0d 3d       jp z,03d0dh          	;. . =
	ram:7b1a fe 03          cp 003h              	;. .
	ram:7b1c ca 13 3d       jp z,03d13h          	;. . =
	ram:7b1f fe 04          cp 004h              	;. .
	ram:7b21 ca 19 3d       jp z,03d19h          	;. . =
	ram:7b24 fe 87          cp 087h              	;. .
	ram:7b26 ca 1f 3d       jp z,03d1fh          	;. . =
	ram:7b29 fe 88          cp 088h              	;. .
	ram:7b2b ca 25 3d       jp z,03d25h          	;. % =
	ram:7b2e fe 0a          cp 00ah              	;. .
	ram:7b30 ca 2b 3d       jp z,03d2bh          	;. + =
	ram:7b33 fe 09          cp 009h              	;. .
	ram:7b35 20 0a          jr nz,l7b41h         	;.
	ram:7b37 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:7b3b cd 31 3d       call 03d31h          	;. 1 =
	ram:7b3e c3 37 3d       jp 03d37h            	;. 7 =
l7b41h:
	ram:7b41 fe 08          cp 008h              	;. .
	ram:7b43 20 26          jr nz,l7b6bh         	;&
	ram:7b45 cd bf 3c       call 03cbfh          	;. . <
	ram:7b48 20 0b          jr nz,l7b55h         	;.
l7b4ah:
	ram:7b4a cd 8b 3d       call 03d8bh          	;. . =
	ram:7b4d 21 fc 82       ld hl,082fch         	;! . .
	ram:7b50 cd 45 3e       call 03e45h          	;. E >
	ram:7b53 18 10          jr l7b65h            	;. .
l7b55h:
	ram:7b55 fd cb 05 96    res 2,(iy+005h)      	;. . . .
	ram:7b59 cd 3d 3d       call 03d3dh          	;. = =
	ram:7b5c fd cb 05 56    bit 2,(iy+005h)      	;. . . V
	ram:7b60 20 e8          jr nz,l7b4ah         	;.
	ram:7b62 cd c7 3d       call 03dc7h          	;. . =
l7b65h:
	ram:7b65 cd 43 3d       call 03d43h          	;. C =
	ram:7b68 c3 d2 01       jp 001d2h            	;. . .
l7b6bh:
	ram:7b6b fe 17          cp 017h              	;. .
	ram:7b6d ca 49 3d       jp z,03d49h          	;. I =
	ram:7b70 fe 16          cp 016h              	;. .
	ram:7b72 c8             ret z                	;.
	ram:7b73 79             ld a,c               	;y
	ram:7b74 b7             or a                 	;.
	ram:7b75 c8             ret z                	;.
	ram:7b76 fe 22          cp 022h              	;. "
	ram:7b78 20 0b          jr nz,l7b85h         	;.
	ram:7b7a fd cb 0e 7e    bit 7,(iy+00eh)      	;. . . ~
	ram:7b7e 20 05          jr nz,l7b85h         	;.
	ram:7b80 fd cb 09 4e    bit 1,(iy+009h)      	;. . . N
	ram:7b84 c8             ret z                	;.
l7b85h:
	ram:7b85 cd 55 3d       call 03d55h          	;. U =
	ram:7b88 c3 5b 3d       jp 03d5bh            	;. [ =
	ram:7b8b fd cb 09 86    res 0,(iy+009h)      	;. . . .
	ram:7b8f 2a 13 8b       ld hl,(08b13h)       	;* . .
	ram:7b92 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7b95 cd b9 3c       call 03cb9h          	;. . <
	ram:7b98 cd cb 3c       call 03ccbh          	;. . <
	ram:7b9b 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:7b9e b7             or a                 	;.
	ram:7b9f c4 a9 3d       call nz,03da9h       	;. . =
	ram:7ba2 cd 61 3d       call 03d61h          	;. a =
	ram:7ba5 c9             ret                  	;.
	ram:7ba6 c3 b1 3b       jp 03bb1h            	;. . ;
	ram:7ba9 cd 8b 3d       call 03d8bh          	;. . =
	ram:7bac cd 18 7c       call sub_7c18h       	;. . |
	ram:7baf cd 81 35       call 03581h          	;. . 5
	ram:7bb2 21 c8 7b       ld hl,l7bc8h         	;! . {
	ram:7bb5 cd b5 0a       call 00ab5h          	;. . .
	ram:7bb8 cd 87 35       call 03587h          	;. . 5
	ram:7bbb cd db 0a       call 00adbh          	;. . .
	ram:7bbe 21 fc 82       ld hl,082fch         	;! . .
	ram:7bc1 cd 45 3e       call 03e45h          	;. E >
	ram:7bc4 cd b3 3c       call 03cb3h          	;. . <
	ram:7bc7 c9             ret                  	;.
l7bc8h:
	ram:7bc8 cd cb 3c       call 03ccbh          	;. . <
	ram:7bcb c3 45 0a       jp 00a45h            	;. E .
	ram:7bce d2 8d 3b       jp nc,03b8dh         	;. . ;
	ram:7bd1 cd 79 3d       call 03d79h          	;. y =
	ram:7bd4 c3 37 3d       jp 03d37h            	;. 7 =
sub_7bd7h:
	ram:7bd7 21 3f 00       ld hl,0003fh         	;! ? .
	ram:7bda 22 fc 82       ld (082fch),hl       	;" . .
	ram:7bdd c9             ret                  	;.
sub_7bdeh:
	ram:7bde d7             rst 10h              	;.
	ram:7bdf eb             ex de,hl             	;.
	ram:7be0 5e             ld e,(hl)            	;^
	ram:7be1 23             inc hl               	;#
	ram:7be2 56             ld d,(hl)            	;V
	ram:7be3 23             inc hl               	;#
	ram:7be4 e5             push hl              	;.
	ram:7be5 21 15 00       ld hl,00015h         	;! . .
	ram:7be8 cd 8e 00       call 0008eh          	;. . .
	ram:7beb 38 01          jr c,l7beeh          	;8 .
	ram:7bed eb             ex de,hl             	;.
l7beeh:
	ram:7bee 4d             ld c,l               	;M
	ram:7bef 44             ld b,h               	;D
	ram:7bf0 e1             pop hl               	;.
	ram:7bf1 11 fc 82       ld de,082fch         	;. . .
	ram:7bf4 79             ld a,c               	;y
	ram:7bf5 b0             or b                 	;.
	ram:7bf6 28 02          jr z,l7bfah          	;( .
	ram:7bf8 ed b0          ldir                 	;. .
l7bfah:
	ram:7bfa eb             ex de,hl             	;.
	ram:7bfb 36 00          ld (hl),000h         	;6 .
	ram:7bfd c9             ret                  	;.
sub_7bfeh:
	ram:7bfe 21 83 80       ld hl,08083h         	;! . .
	ram:7c01 06 00          ld b,000h            	;. .
	ram:7c03 4e             ld c,(hl)            	;N
	ram:7c04 23             inc hl               	;#
	ram:7c05 11 fc 82       ld de,082fch         	;. . .
	ram:7c08 ed b0          ldir                 	;. .
l7c0ah:
	ram:7c0a 21 10 7c       ld hl,l7c10h         	;! . |
	ram:7c0d c3 42 30       jp 03042h            	;. B 0
l7c10h:
	ram:7c10 3d             dec a                	;=
	ram:7c11 3f             ccf                  	;?
	ram:7c12 00             nop                  	;.
sub_7c13h:
	ram:7c13 cd 8d 35       call 0358dh          	;. . 5
	ram:7c16 18 f2          jr l7c0ah            	;. .
sub_7c18h:
	ram:7c18 21 01 2b       ld hl,02b01h         	;! . +
	ram:7c1b 22 83 80       ld (08083h),hl       	;" . .
	ram:7c1e c9             ret                  	;.
sub_7c1fh:
	ram:7c1f cd 18 7c       call sub_7c18h       	;. . |
	ram:7c22 d7             rst 10h              	;.
	ram:7c23 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:7c26 c9             ret                  	;.
sub_7c27h:
	ram:7c27 fd cb 09 8e    res 1,(iy+009h)      	;. . . .
	ram:7c2b 18 04          jr l7c31h            	;. .
sub_7c2dh:
	ram:7c2d fd cb 09 ce    set 1,(iy+009h)      	;. . . .
l7c31h:
	ram:7c31 3a 56 8a       ld a,(08a56h)        	;: V .
	ram:7c34 f5             push af              	;.
	ram:7c35 21 9e 09       ld hl,0099eh         	;! . .
	ram:7c38 cd 96 04       call 00496h          	;. . .
	ram:7c3b cd fa 01       call 001fah          	;. . .
	ram:7c3e fd cb 00 ee    set 5,(iy+000h)      	;. . . .
	ram:7c42 df             rst 18h              	;.
	ram:7c43 cd c3 3e       call 03ec3h          	;. . >
	ram:7c46 cd c7 3d       call 03dc7h          	;. . =
	ram:7c49 21 cb 07       ld hl,007cbh         	;! . .
	ram:7c4c cd 96 04       call 00496h          	;. . .
	ram:7c4f f1             pop af               	;.
	ram:7c50 32 56 8a       ld (08a56h),a        	;2 V .
	ram:7c53 c3 cf 2d       jp 02dcfh            	;. . -
sub_7c56h:
	ram:7c56 cd c3 3e       call 03ec3h          	;. . >
	ram:7c59 cd 8b 3d       call 03d8bh          	;. . =
	ram:7c5c fd cb 02 96    res 2,(iy+002h)      	;. . . .
	ram:7c60 fd cb 00 ee    set 5,(iy+000h)      	;. . . .
	ram:7c64 c9             ret                  	;.
sub_7c65h:
	ram:7c65 fd cb 02 56    bit 2,(iy+002h)      	;. . . V
	ram:7c69 c8             ret z                	;.
	ram:7c6a 97             sub a                	;.
	ram:7c6b 32 64 83       ld (08364h),a        	;2 d .
	ram:7c6e fd cb 0d ae    res 5,(iy+00dh)      	;. . . .
	ram:7c72 cd c3 3e       call 03ec3h          	;. . >
	ram:7c75 cd ab 3b       call 03babh          	;. . ;
	ram:7c78 cd 95 3c       call 03c95h          	;. . <
	ram:7c7b c9             ret                  	;.
sub_7c7ch:
	ram:7c7c fd cb 00 ee    set 5,(iy+000h)      	;. . . .
	ram:7c80 cd 65 7c       call sub_7c65h       	;. e |
	ram:7c83 cd e3 3c       call 03ce3h          	;. . <
	ram:7c86 cd d1 3c       call 03cd1h          	;. . <
	ram:7c89 c9             ret                  	;.
sub_7c8ah:
	ram:7c8a cd ef 7c       call sub_7cefh       	;. . |
l7c8dh:
	ram:7c8d cd 87 3e       call 03e87h          	;. . >
	ram:7c90 cd 75 00       call 00075h          	;. u .
	ram:7c93 20 04          jr nz,l7c99h         	;.
	ram:7c95 fe 06          cp 006h              	;. .
	ram:7c97 20 f4          jr nz,l7c8dh         	;.
l7c99h:
	ram:7c99 97             sub a                	;.
	ram:7c9a 32 06 80       ld (08006h),a        	;2 . .
	ram:7c9d 3e f0          ld a,0f0h            	;> .
	ram:7c9f 32 81 80       ld (08081h),a        	;2 . .
	ram:7ca2 f1             pop af               	;.
	ram:7ca3 32 9a 81       ld (0819ah),a        	;2 . .
	ram:7ca6 c9             ret                  	;.
sub_7ca7h:
	ram:7ca7 fd cb 00 ee    set 5,(iy+000h)      	;. . . .
	ram:7cab cd 65 7c       call sub_7c65h       	;. e |
	ram:7cae cd e3 3c       call 03ce3h          	;. . <
	ram:7cb1 cd ef 7c       call sub_7cefh       	;. . |
l7cb4h:
	ram:7cb4 cd 87 3e       call 03e87h          	;. . >
	ram:7cb7 cd 75 00       call 00075h          	;. u .
	ram:7cba 20 2e          jr nz,l7ceah         	;.
	ram:7cbc fd cb 01 5e    bit 3,(iy+001h)      	;. . . ^
	ram:7cc0 28 24          jr z,l7ce6h          	;( $
	ram:7cc2 fe 01          cp 001h              	;. .
	ram:7cc4 20 05          jr nz,l7ccbh         	;.
	ram:7cc6 cd 93 35       call 03593h          	;. . 5
	ram:7cc9 18 e9          jr l7cb4h            	;. .
l7ccbh:
	ram:7ccb fe 02          cp 002h              	;. .
	ram:7ccd 20 05          jr nz,l7cd4h         	;.
	ram:7ccf cd 99 35       call 03599h          	;. . 5
	ram:7cd2 18 e0          jr l7cb4h            	;. .
l7cd4h:
	ram:7cd4 fe 03          cp 003h              	;. .
	ram:7cd6 20 05          jr nz,l7cddh         	;.
	ram:7cd8 cd 9f 35       call 0359fh          	;. . 5
	ram:7cdb 18 d7          jr l7cb4h            	;. .
l7cddh:
	ram:7cdd fe 04          cp 004h              	;. .
	ram:7cdf 20 05          jr nz,l7ce6h         	;.
	ram:7ce1 cd a5 35       call 035a5h          	;. . 5
	ram:7ce4 18 ce          jr l7cb4h            	;. .
l7ce6h:
	ram:7ce6 fe 06          cp 006h              	;. .
	ram:7ce8 20 ca          jr nz,l7cb4h         	;.
l7ceah:
	ram:7cea cd d1 3c       call 03cd1h          	;. . <
	ram:7ced 18 aa          jr l7c99h            	;. .
sub_7cefh:
	ram:7cef 21 9a 81       ld hl,0819ah         	;! . .
	ram:7cf2 7e             ld a,(hl)            	;~
	ram:7cf3 36 00          ld (hl),000h         	;6 .
	ram:7cf5 67             ld h,a               	;g
	ram:7cf6 e3             ex (sp),hl           	;.
	ram:7cf7 3e aa          ld a,0aah            	;> .
	ram:7cf9 32 81 80       ld (08081h),a        	;2 . .
	ram:7cfc e9             jp (hl)              	;.
sub_7cfdh:
	ram:7cfd e5             push hl              	;.
	ram:7cfe cd 65 7c       call sub_7c65h       	;. e |
	ram:7d01 e1             pop hl               	;.
	ram:7d02 7c             ld a,h               	;|
	ram:7d03 3d             dec a                	;=
	ram:7d04 fa 14 0a       jp m,00a14h          	;. . .
	ram:7d07 fe 15          cp 015h              	;. .
	ram:7d09 f2 14 0a       jp p,00a14h          	;. . .
	ram:7d0c 67             ld h,a               	;g
	ram:7d0d 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:7d10 47             ld b,a               	;G
	ram:7d11 7d             ld a,l               	;}
	ram:7d12 3d             dec a                	;=
	ram:7d13 fa 14 0a       jp m,00a14h          	;. . .
	ram:7d16 b8             cp b                 	;.
	ram:7d17 f2 14 0a       jp p,00a14h          	;. . .
	ram:7d1a 6f             ld l,a               	;o
	ram:7d1b ed 5b 0c 80    ld de,(0800ch)       	;. [ . .
	ram:7d1f d5             push de              	;.
	ram:7d20 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7d23 21 7c 7d       ld hl,l7d7ch         	;! | }
	ram:7d26 cd b5 0a       call 00ab5h          	;. . .
	ram:7d29 cd ab 35       call 035abh          	;. . 5
	ram:7d2c 11 fc 82       ld de,082fch         	;. . .
	ram:7d2f cd 11 21       call 02111h          	;. . !
	ram:7d32 23             inc hl               	;#
	ram:7d33 cd 9d 20       call 0209dh          	;. .  
	ram:7d36 21 fc 82       ld hl,082fch         	;! . .
	ram:7d39 7e             ld a,(hl)            	;~
	ram:7d3a e6 1f          and 01fh             	;. .
	ram:7d3c 28 0e          jr z,l7d4ch          	;( .
	ram:7d3e fe 01          cp 001h              	;. .
	ram:7d40 28 0a          jr z,l7d4ch          	;( .
	ram:7d42 fe 08          cp 008h              	;. .
	ram:7d44 28 06          jr z,l7d4ch          	;( .
	ram:7d46 fe 09          cp 009h              	;. .
	ram:7d48 28 02          jr z,l7d4ch          	;( .
	ram:7d4a d7             rst 10h              	;.
	ram:7d4b eb             ex de,hl             	;.
l7d4ch:
	ram:7d4c cd b1 35       call 035b1h          	;. . 5
	ram:7d4f da 3c 0a       jp c,00a3ch          	;. < .
	ram:7d52 cd db 0a       call 00adbh          	;. . .
	ram:7d55 fd cb 0d 96    res 2,(iy+00dh)      	;. . . .
	ram:7d59 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:7d5c ed 5b 35 83    ld de,(08335h)       	;. [ 5 .
l7d60h:
	ram:7d60 cd 8e 00       call 0008eh          	;. . .
	ram:7d63 28 0a          jr z,l7d6fh          	;( .
	ram:7d65 7e             ld a,(hl)            	;~
	ram:7d66 23             inc hl               	;#
	ram:7d67 cd c5 3f       call 03fc5h          	;. . ?
	ram:7d6a cd af 3d       call 03dafh          	;. . =
	ram:7d6d 38 f1          jr c,l7d60h          	;8 .
l7d6fh:
	ram:7d6f fd cb 0d d6    set 2,(iy+00dh)      	;. . . .
	ram:7d73 e1             pop hl               	;.
	ram:7d74 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7d77 fd cb 00 ae    res 5,(iy+000h)      	;. . . .
	ram:7d7b c9             ret                  	;.
l7d7ch:
	ram:7d7c e1             pop hl               	;.
	ram:7d7d 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7d80 c3 8a 0a       jp 00a8ah            	;. . .
sub_7d83h:
	ram:7d83 11 41 8a       ld de,08a41h         	;. A .
	ram:7d86 cd ff 7d       call sub_7dffh       	;. . }
	ram:7d89 11 41 8a       ld de,08a41h         	;. A .
	ram:7d8c cd 11 21       call 02111h          	;. . !
	ram:7d8f 21 7c 7e       ld hl,l7e7ch         	;! | ~
	ram:7d92 11 4b 8a       ld de,08a4bh         	;. K .
	ram:7d95 cd 02 7e       call sub_7e02h       	;. . ~
	ram:7d98 11 4b 8a       ld de,08a4bh         	;. K .
	ram:7d9b cd 11 21       call 02111h          	;. . !
	ram:7d9e 21 41 8a       ld hl,08a41h         	;! A .
	ram:7da1 cd 0b 21       call 0210bh          	;. . !
	ram:7da4 cd 61 0d       call 00d61h          	;. a .
	ram:7da7 cd 66 21       call 02166h          	;. f !
	ram:7daa cd 8e 1f       call 01f8eh          	;. . .
	ram:7dad 30 0b          jr nc,l7dbah         	;0 .
	ram:7daf 21 72 7e       ld hl,07e72h         	;! r ~
	ram:7db2 cd 0b 21       call 0210bh          	;. . !
	ram:7db5 21 94 80       ld hl,08094h         	;! . .
	ram:7db8 35             dec (hl)             	;5
	ram:7db9 f7             rst 30h              	;.
l7dbah:
	ram:7dba 21 98 7e       ld hl,l7e98h         	;! . ~
	ram:7dbd c3 55 0e       jp 00e55h            	;. U .
sub_7dc0h:
	ram:7dc0 cd 47 1f       call 01f47h          	;. G .
	ram:7dc3 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:7dc6 cd 85 20       call 02085h          	;. .  
	ram:7dc9 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:7dcd 21 08 fc       ld hl,0fc08h         	;! . .
	ram:7dd0 b7             or a                 	;.
	ram:7dd1 cd 8e 00       call 0008eh          	;. . .
	ram:7dd4 30 03          jr nc,l7dd9h         	;0 .
	ram:7dd6 22 83 80       ld (08083h),hl       	;" . .
l7dd9h:
	ram:7dd9 cd 73 25       call 02573h          	;. s %
	ram:7ddc cd 5d 0d       call 00d5dh          	;. ] .
	ram:7ddf cd d1 23       call 023d1h          	;. . #
	ram:7de2 28 14          jr z,l7df8h          	;( .
	ram:7de4 11 4b 8a       ld de,08a4bh         	;. K .
	ram:7de7 cd 11 21       call 02111h          	;. . !
	ram:7dea 11 4b 8a       ld de,08a4bh         	;. K .
	ram:7ded cd ff 7d       call sub_7dffh       	;. . }
	ram:7df0 11 41 8a       ld de,08a41h         	;. A .
	ram:7df3 cd 11 21       call 02111h          	;. . !
	ram:7df6 18 03          jr l7dfbh            	;. .
l7df8h:
	ram:7df8 cd 46 7e       call sub_7e46h       	;. F ~
l7dfbh:
	ram:7dfb cd 51 20       call 02051h          	;. Q  
	ram:7dfe c9             ret                  	;.
sub_7dffh:
	ram:7dff 21 60 7e       ld hl,l7e60h         	;! ` ~
sub_7e02h:
	ram:7e02 d5             push de              	;.
	ram:7e03 cd 52 7e       call sub_7e52h       	;. R ~
	ram:7e06 e1             pop hl               	;.
	ram:7e07 d5             push de              	;.
	ram:7e08 e5             push hl              	;.
	ram:7e09 e7             rst 20h              	;.
	ram:7e0a cd 23 10       call 01023h          	;. # .
	ram:7e0d cd 75 20       call 02075h          	;. u  
	ram:7e10 cd 5d 0d       call 00d5dh          	;. ] .
	ram:7e13 cd f5 1f       call 01ff5h          	;. . .
	ram:7e16 cd 29 20       call 02029h          	;. )  
	ram:7e19 ef             rst 28h              	;.
	ram:7e1a e1             pop hl               	;.
	ram:7e1b cd 0b 21       call 0210bh          	;. . !
	ram:7e1e cd 61 0d       call 00d61h          	;. a .
	ram:7e21 e1             pop hl               	;.
	ram:7e22 cd 52 7e       call sub_7e52h       	;. R ~
	ram:7e25 d5             push de              	;.
	ram:7e26 ef             rst 28h              	;.
	ram:7e27 cd 8d 20       call 0208dh          	;. .  
	ram:7e2a cd 56 20       call 02056h          	;. V  
	ram:7e2d e1             pop hl               	;.
	ram:7e2e cd 52 7e       call sub_7e52h       	;. R ~
	ram:7e31 d5             push de              	;.
	ram:7e32 ef             rst 28h              	;.
	ram:7e33 cd 29 20       call 02029h          	;. )  
	ram:7e36 cd 61 0d       call 00d61h          	;. a .
	ram:7e39 e1             pop hl               	;.
	ram:7e3a cd d1 23       call 023d1h          	;. . #
	ram:7e3d 28 04          jr z,l7e43h          	;( .
	ram:7e3f cd 68 25       call 02568h          	;. h %
	ram:7e42 c8             ret z                	;.
l7e43h:
	ram:7e43 c3 3a 0d       jp 00d3ah            	;. : .
sub_7e46h:
	ram:7e46 21 a2 7e       ld hl,l7ea2h         	;! . ~
	ram:7e49 11 41 8a       ld de,08a41h         	;. A .
	ram:7e4c 01 14 00       ld bc,00014h         	;. . .
	ram:7e4f ed b0          ldir                 	;. .
	ram:7e51 c9             ret                  	;.
sub_7e52h:
	ram:7e52 11 8d 80       ld de,0808dh         	;. . .
	ram:7e55 01 06 00       ld bc,00006h         	;. . .
	ram:7e58 ed b0          ldir                 	;. .
	ram:7e5a eb             ex de,hl             	;.
	ram:7e5b 06 04          ld b,004h            	;. .
	ram:7e5d c3 b8 21       jp 021b8h            	;. . !
l7e60h:
	ram:7e60 00             nop                  	;.
	ram:7e61 04             inc b                	;.
	ram:7e62 fc 53 66       call m,sub_6653h     	;. S f
	ram:7e65 80             add a,b              	;.
	ram:7e66 00             nop                  	;.
	ram:7e67 04             inc b                	;.
	ram:7e68 fc 40 01       call m,00140h        	;. @ .
	ram:7e6b 40             ld b,b               	;@
	ram:7e6c 00             nop                  	;.
	ram:7e6d 04             inc b                	;.
	ram:7e6e fc 12 21       call m,02112h        	;. . !
	ram:7e71 10 00          djnz l7e73h          	;. .
l7e73h:
	ram:7e73 09             add hl,bc            	;.
	ram:7e74 fc 21 47       call m,sub_4721h     	;. ! G
	ram:7e77 48             ld c,b               	;H
	ram:7e78 35             dec (hl)             	;5
	ram:7e79 63             ld h,e               	;c
	ram:7e7a 00             nop                  	;.
	ram:7e7b 00             nop                  	;.
l7e7ch:
	ram:7e7c 00             nop                  	;.
	ram:7e7d 04             inc b                	;.
	ram:7e7e fc 52 77       call m,07752h        	;. R w
	ram:7e81 40             ld b,b               	;@
	ram:7e82 00             nop                  	;.
	ram:7e83 04             inc b                	;.
	ram:7e84 fc 40 69       call m,06940h        	;. @ i
	ram:7e87 20 00          jr nz,l7e89h         	;.
l7e89h:
	ram:7e89 03             inc bc               	;.
	ram:7e8a fc 37 91       call m,09137h        	;. 7 .
	ram:7e8d 00             nop                  	;.
	ram:7e8e 00             nop                  	;.
	ram:7e8f 09             add hl,bc            	;.
	ram:7e90 fc 21 47       call m,sub_4721h     	;. ! G
	ram:7e93 48             ld c,b               	;H
	ram:7e94 33             inc sp               	;3
	ram:7e95 99             sbc a,c              	;.
	ram:7e96 00             nop                  	;.
	ram:7e97 00             nop                  	;.
l7e98h:
	ram:7e98 00             nop                  	;.
	ram:7e99 f6 fb          or 0fbh              	;. .
	ram:7e9b 46             ld b,(hl)            	;F
	ram:7e9c 56             ld d,(hl)            	;V
	ram:7e9d 61             ld h,c               	;a
	ram:7e9e 30 59          jr nc,91             	;0 Y
	ram:7ea0 55             ld d,l               	;U
	ram:7ea1 50             ld d,b               	;P
l7ea2h:
	ram:7ea2 00             nop                  	;.
	ram:7ea3 04             inc b                	;.
	ram:7ea4 fc 12 34       call m,03412h        	;. . 4
	ram:7ea7 50             ld d,b               	;P
	ram:7ea8 00             nop                  	;.
	ram:7ea9 00             nop                  	;.
	ram:7eaa 00             nop                  	;.
	ram:7eab 00             nop                  	;.
	ram:7eac 00             nop                  	;.
	ram:7ead 04             inc b                	;.
	ram:7eae fc 67 89       call m,08967h        	;. g .
	ram:7eb1 00             nop                  	;.
	ram:7eb2 00             nop                  	;.
	ram:7eb3 00             nop                  	;.
	ram:7eb4 00             nop                  	;.
	ram:7eb5 00             nop                  	;.
	ram:7eb6 21 00 fc       ld hl,0fc00h         	;! . .
	ram:7eb9 11 9c 83       ld de,0839ch         	;. . .
	ram:7ebc b7             or a                 	;.
	ram:7ebd ed 52          sbc hl,de            	;. R
	ram:7ebf eb             ex de,hl             	;.
	ram:7ec0 d5             push de              	;.
	ram:7ec1 e5             push hl              	;.
l7ec2h:
	ram:7ec2 06 00          ld b,000h            	;. .
l7ec4h:
	ram:7ec4 70             ld (hl),b            	;p
	ram:7ec5 23             inc hl               	;#
	ram:7ec6 1b             dec de               	;.
	ram:7ec7 7b             ld a,e               	;{
	ram:7ec8 b2             or d                 	;.
	ram:7ec9 28 08          jr z,l7ed3h          	;( .
	ram:7ecb 04             inc b                	;.
	ram:7ecc 78             ld a,b               	;x
	ram:7ecd fe fb          cp 0fbh              	;. .
	ram:7ecf 38 f3          jr c,l7ec4h          	;8 .
	ram:7ed1 18 ef          jr l7ec2h            	;. .
l7ed3h:
	ram:7ed3 e1             pop hl               	;.
	ram:7ed4 d1             pop de               	;.
l7ed5h:
	ram:7ed5 06 00          ld b,000h            	;. .
l7ed7h:
	ram:7ed7 7e             ld a,(hl)            	;~
	ram:7ed8 b8             cp b                 	;.
	ram:7ed9 20 0e          jr nz,l7ee9h         	;.
	ram:7edb 23             inc hl               	;#
	ram:7edc 1b             dec de               	;.
	ram:7edd 7b             ld a,e               	;{
	ram:7ede b2             or d                 	;.
	ram:7edf 28 0e          jr z,l7eefh          	;( .
	ram:7ee1 04             inc b                	;.
	ram:7ee2 78             ld a,b               	;x
	ram:7ee3 fe fb          cp 0fbh              	;. .
	ram:7ee5 38 f0          jr c,l7ed7h          	;8 .
	ram:7ee7 18 ec          jr l7ed5h            	;. .
l7ee9h:
	ram:7ee9 21 3e 32       ld hl,0323eh         	;! > 2
	ram:7eec c3 e5 3d       jp 03de5h            	;. . =
l7eefh:
	ram:7eef cd 75 00       call 00075h          	;. u .
	ram:7ef2 c2 df 3d       jp nz,03ddfh         	;. . =
	ram:7ef5 c3 f9 2f       jp 02ff9h            	;. . /
sub_7ef8h:
	ram:7ef8 fd cb 11 ae    res 5,(iy+011h)      	;. . . .
	ram:7efc 21 54 82       ld hl,08254h         	;! T .
	ram:7eff 11 08 00       ld de,00008h         	;. . .
	ram:7f02 06 05          ld b,005h            	;. .
	ram:7f04 97             sub a                	;.
l7f05h:
	ram:7f05 77             ld (hl),a            	;w
	ram:7f06 19             add hl,de            	;.
	ram:7f07 10 fc          djnz l7f05h          	;. .
	ram:7f09 3a dd 81       ld a,(081ddh)        	;: . .
	ram:7f0c b7             or a                 	;.
	ram:7f0d c8             ret z                	;.
	ram:7f0e 21 ff ff       ld hl,0ffffh         	;! . .
	ram:7f11 11 fe ff       ld de,0fffeh         	;. . .
	ram:7f14 01 7f 00       ld bc,0007fh         	;. . .
	ram:7f17 3d             dec a                	;=
	ram:7f18 28 03          jr z,l7f1dh          	;( .
	ram:7f1a 01 ff 00       ld bc,000ffh         	;. . .
l7f1dh:
	ram:7f1d 36 00          ld (hl),000h         	;6 .
	ram:7f1f ed b8          lddr                 	;. .
	ram:7f21 cd c3 3e       call 03ec3h          	;. . >
	ram:7f24 3e 08          ld a,008h            	;> .
	ram:7f26 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:7f29 c9             ret                  	;.
sub_7f2ah:
	ram:7f2a e5             push hl              	;.
	ram:7f2b 87             add a,a              	;.
	ram:7f2c 5f             ld e,a               	;_
	ram:7f2d 16 00          ld d,000h            	;. .
	ram:7f2f 21 0c 82       ld hl,0820ch         	;! . .
	ram:7f32 19             add hl,de            	;.
	ram:7f33 22 82 80       ld (08082h),hl       	;" . .
	ram:7f36 87             add a,a              	;.
	ram:7f37 87             add a,a              	;.
	ram:7f38 5f             ld e,a               	;_
	ram:7f39 21 4c 82       ld hl,0824ch         	;! L .
	ram:7f3c 19             add hl,de            	;.
	ram:7f3d 22 84 80       ld (08084h),hl       	;" . .
	ram:7f40 36 80          ld (hl),080h         	;6 .
	ram:7f42 e1             pop hl               	;.
	ram:7f43 fd cb 11 e6    set 4,(iy+011h)      	;. . . .
	ram:7f47 5e             ld e,(hl)            	;^
	ram:7f48 23             inc hl               	;#
	ram:7f49 56             ld d,(hl)            	;V
	ram:7f4a 23             inc hl               	;#
	ram:7f4b 7b             ld a,e               	;{
	ram:7f4c b2             or d                 	;.
	ram:7f4d c8             ret z                	;.
	ram:7f4e e5             push hl              	;.
	ram:7f4f eb             ex de,hl             	;.
	ram:7f50 11 06 00       ld de,00006h         	;. . .
	ram:7f53 cd 8e 00       call 0008eh          	;. . .
	ram:7f56 30 01          jr nc,l7f59h         	;0 .
	ram:7f58 5d             ld e,l               	;]
l7f59h:
	ram:7f59 43             ld b,e               	;C
	ram:7f5a 2a 82 80       ld hl,(08082h)       	;* . .
	ram:7f5d ed 5b 84 80    ld de,(08084h)       	;. [ . .
	ram:7f61 73             ld (hl),e            	;s
	ram:7f62 23             inc hl               	;#
	ram:7f63 72             ld (hl),d            	;r
	ram:7f64 eb             ex de,hl             	;.
	ram:7f65 23             inc hl               	;#
	ram:7f66 d1             pop de               	;.
l7f67h:
	ram:7f67 1a             ld a,(de)            	;.
	ram:7f68 13             inc de               	;.
	ram:7f69 77             ld (hl),a            	;w
	ram:7f6a 23             inc hl               	;#
	ram:7f6b 10 fa          djnz l7f67h          	;. .
	ram:7f6d 70             ld (hl),b            	;p
	ram:7f6e bf             cp a                 	;.
	ram:7f6f c9             ret                  	;.
sub_7f70h:
	ram:7f70 01 80 00       ld bc,00080h         	;. . .
	ram:7f73 11 7c 82       ld de,0827ch         	;. | .
	ram:7f76 21 80 ff       ld hl,0ff80h         	;! . .
	ram:7f79 ed b0          ldir                 	;. .
	ram:7f7b 3e 01          ld a,001h            	;> .
	ram:7f7d 32 dd 81       ld (081ddh),a        	;2 . .
	ram:7f80 cd b5 3d       call 03db5h          	;. . =
	ram:7f83 cd ef 7c       call sub_7cefh       	;. . |
l7f86h:
	ram:7f86 cd 87 3e       call 03e87h          	;. . >
	ram:7f89 47             ld b,a               	;G
	ram:7f8a b7             or a                 	;.
	ram:7f8b 28 20          jr z,l7fadh          	;(  
	ram:7f8d fe c2          cp 0c2h              	;. .
	ram:7f8f 38 f5          jr c,l7f86h          	;8 .
	ram:7f91 06 c1          ld b,0c1h            	;. .
	ram:7f93 fe c7          cp 0c7h              	;. .
	ram:7f95 38 06          jr c,l7f9dh          	;8 .
	ram:7f97 06 c6          ld b,0c6h            	;. .
	ram:7f99 fe cc          cp 0cch              	;. .
	ram:7f9b 30 e9          jr nc,l7f86h         	;0 .
l7f9dh:
	ram:7f9d 90             sub b                	;.
	ram:7f9e 47             ld b,a               	;G
	ram:7f9f 87             add a,a              	;.
	ram:7fa0 87             add a,a              	;.
	ram:7fa1 87             add a,a              	;.
	ram:7fa2 5f             ld e,a               	;_
	ram:7fa3 16 00          ld d,000h            	;. .
	ram:7fa5 21 4c 82       ld hl,0824ch         	;! L .
	ram:7fa8 19             add hl,de            	;.
	ram:7fa9 7e             ld a,(hl)            	;~
	ram:7faa b7             or a                 	;.
	ram:7fab 28 d9          jr z,l7f86h          	;( .
l7fadh:
	ram:7fad f1             pop af               	;.
	ram:7fae 32 9a 81       ld (0819ah),a        	;2 . .
	ram:7fb1 78             ld a,b               	;x
sub_7fb2h:
	ram:7fb2 fd cb 11 66    bit 4,(iy+011h)      	;. . . f
	ram:7fb6 c8             ret z                	;.
	ram:7fb7 f5             push af              	;.
	ram:7fb8 3e f0          ld a,0f0h            	;> .
	ram:7fba 32 81 80       ld (08081h),a        	;2 . .
	ram:7fbd cd c3 3e       call 03ec3h          	;. . >
	ram:7fc0 01 80 00       ld bc,00080h         	;. . .
	ram:7fc3 11 80 ff       ld de,0ff80h         	;. . .
	ram:7fc6 21 7c 82       ld hl,0827ch         	;! | .
	ram:7fc9 ed b0          ldir                 	;. .
	ram:7fcb 97             sub a                	;.
	ram:7fcc 32 06 80       ld (08006h),a        	;2 . .
	ram:7fcf fd cb 11 a6    res 4,(iy+011h)      	;. . . .
	ram:7fd3 f1             pop af               	;.
	ram:7fd4 c9             ret                  	;.
 ; Unused bytes remain to fill 16k block
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
