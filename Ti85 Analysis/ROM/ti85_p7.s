; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p7.rom

	org 04000h

	ram:4000 21 58 40       ld hl,l4058h         	;! X @
	ram:4003 cd 5b 06       call 0065bh          	;. [ .
	ram:4006 fd cb 01 e6    set 4,(iy+001h)      	;. . . .
	ram:400a cd 84 41       call sub_4184h       	;. . A
	ram:400d cd b4 26       call 026b4h          	;. . &
	ram:4010 11 64 00       ld de,00064h         	;. d .
	ram:4013 cd 8e 00       call 0008eh          	;. . .
	ram:4016 38 1a          jr c,l4032h          	;8 .
	ram:4018 3a 37 83       ld a,(08337h)        	;: 7 .
	ram:401b 17             rla                  	;.
	ram:401c 30 14          jr nc,l4032h         	;0 .
	ram:401e cd e8 40       call sub_40e8h       	;. . @
	ram:4021 20 0b          jr nz,l402eh         	;.
	ram:4023 2a a3 81       ld hl,(081a3h)       	;* . .
	ram:4026 11 b4 0a       ld de,00ab4h         	;. . .
	ram:4029 cd 8e 00       call 0008eh          	;. . .
	ram:402c 28 04          jr z,l4032h          	;( .
l402eh:
	ram:402e 3e 50          ld a,050h            	;> P
	ram:4030 18 02          jr l4034h            	;. .
l4032h:
	ram:4032 3e 51          ld a,051h            	;> Q
l4034h:
	ram:4034 cd 85 3d       call 03d85h          	;. . =
	ram:4037 cd 5d 35       call 0355dh          	;. ] 5
	ram:403a 3a a8 81       ld a,(081a8h)        	;: . .
	ram:403d fe 15          cp 015h              	;. .
	ram:403f 28 08          jr z,l4049h          	;( .
	ram:4041 fe 02          cp 002h              	;. .
	ram:4043 28 04          jr z,l4049h          	;( .
	ram:4045 fe 03          cp 003h              	;. .
	ram:4047 20 08          jr nz,l4051h         	;.
l4049h:
	ram:4049 ed 5b e9 8b    ld de,(08be9h)       	;. [ . .
	ram:404d cd 3f 38       call 0383fh          	;. ? 8
	ram:4050 c9             ret                  	;.
l4051h:
	ram:4051 fd cb 0c b6    res 6,(iy+00ch)      	;. . . .
	ram:4055 c3 1f 28       jp 0281fh            	;. . (
l4058h:
	ram:4058 65             ld h,l               	;e
	ram:4059 40             ld b,b               	;@
	ram:405a d5             push de              	;.
	ram:405b 41             ld b,c               	;A
	ram:405c d5             push de              	;.
	ram:405d 41             ld b,c               	;A
	ram:405e d5             push de              	;.
	ram:405f 41             ld b,c               	;A
	ram:4060 d5             push de              	;.
	ram:4061 41             ld b,c               	;A
	ram:4062 d5             push de              	;.
	ram:4063 41             ld b,c               	;A
	ram:4064 90             sub b                	;.
	ram:4065 fe 08          cp 008h              	;. .
	ram:4067 28 02          jr z,l406bh          	;( .
	ram:4069 fe 07          cp 007h              	;. .
l406bh:
	ram:406b ca 64 04       jp z,00464h          	;. d .
	ram:406e fe 98          cp 098h              	;. .
	ram:4070 c0             ret nz               	;.
	ram:4071 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:4075 cd 23 00       call 00023h          	;. # .
	ram:4078 28 5b          jr z,l40d5h          	;( [
	ram:407a cd 21 20       call 02021h          	;. !  
	ram:407d 21 55 8a       ld hl,08a55h         	;! U .
	ram:4080 e7             rst 20h              	;.
	ram:4081 d7             rst 10h              	;.
	ram:4082 cd 60 20       call 02060h          	;. `  
	ram:4085 38 4e          jr c,l40d5h          	;8 N
	ram:4087 e6 1f          and 01fh             	;. .
	ram:4089 47             ld b,a               	;G
	ram:408a 3a 57 8a       ld a,(08a57h)        	;: W .
	ram:408d fe 41          cp 041h              	;. A
	ram:408f 78             ld a,b               	;x
	ram:4090 38 43          jr c,l40d5h          	;8 C
	ram:4092 fe 12          cp 012h              	;. .
	ram:4094 20 10          jr nz,l40a6h         	;.
	ram:4096 fd cb 01 a6    res 4,(iy+001h)      	;. . . .
	ram:409a 21 56 8a       ld hl,08a56h         	;! V .
	ram:409d cd d3 34       call 034d3h          	;. . 4
	ram:40a0 21 27 08       ld hl,00827h         	;! ' .
	ram:40a3 c3 96 04       jp 00496h            	;. . .
l40a6h:
	ram:40a6 fe 0a          cp 00ah              	;. .
	ram:40a8 20 2b          jr nz,l40d5h         	;+
	ram:40aa cd 1b 04       call 0041bh          	;. . .
	ram:40ad 3a 56 8a       ld a,(08a56h)        	;: V .
	ram:40b0 f5             push af              	;.
	ram:40b1 cd 6e 05       call 0056eh          	;. n .
	ram:40b4 f1             pop af               	;.
	ram:40b5 32 56 8a       ld (08a56h),a        	;2 V .
	ram:40b8 ed 7b bc 81    ld sp,(081bch)       	;. { . .
	ram:40bc cd 76 04       call 00476h          	;. v .
	ram:40bf cd c3 3e       call 03ec3h          	;. . >
	ram:40c2 3e 01          ld a,001h            	;> .
	ram:40c4 32 9a 81       ld (0819ah),a        	;2 . .
	ram:40c7 fd cb 08 8e    res 1,(iy+008h)      	;. . . .
	ram:40cb fd cb 0c fe    set 7,(iy+00ch)      	;. . . .
	ram:40cf cd d5 3e       call 03ed5h          	;. . >
	ram:40d2 c3 fa 01       jp 001fah            	;. . .
l40d5h:
	ram:40d5 fd cb 01 a6    res 4,(iy+001h)      	;. . . .
	ram:40d9 cd c3 3e       call 03ec3h          	;. . >
	ram:40dc cd 1b 04       call 0041bh          	;. . .
	ram:40df cd bd 3e       call 03ebdh          	;. . >
	ram:40e2 cd 92 05       call 00592h          	;. . .
	ram:40e5 c3 2b 00       jp 0002bh            	;. + .
sub_40e8h:
	ram:40e8 cd 23 00       call 00023h          	;. # .
	ram:40eb c8             ret z                	;.
	ram:40ec cd 21 20       call 02021h          	;. !  
	ram:40ef 21 55 8a       ld hl,08a55h         	;! U .
	ram:40f2 e7             rst 20h              	;.
	ram:40f3 2a 61 8a       ld hl,(08a61h)       	;* a .
	ram:40f6 ed 5b 5f 8a    ld de,(08a5fh)       	;. [ _ .
	ram:40fa b7             or a                 	;.
	ram:40fb ed 52          sbc hl,de            	;. R
l40fdh:
	ram:40fd 22 3a 83       ld (0833ah),hl       	;" : .
	ram:4100 3a 84 80       ld a,(08084h)        	;: . .
sub_4103h:
	ram:4103 fe 24          cp 024h              	;. $
	ram:4105 20 21          jr nz,l4128h         	;!
	ram:4107 d7             rst 10h              	;.
	ram:4108 eb             ex de,hl             	;.
	ram:4109 23             inc hl               	;#
	ram:410a 23             inc hl               	;#
	ram:410b 7e             ld a,(hl)            	;~
	ram:410c b7             or a                 	;.
	ram:410d 28 12          jr z,l4121h          	;( .
	ram:410f e5             push hl              	;.
	ram:4110 dd e1          pop ix               	;. .
	ram:4112 cd dc 0c       call 00cdch          	;. . .
	ram:4115 dd 5e 00       ld e,(ix+000h)       	;. ^ .
	ram:4118 dd 56 01       ld d,(ix+001h)       	;. V .
	ram:411b 2a 3a 83       ld hl,(0833ah)       	;* : .
	ram:411e 19             add hl,de            	;.
	ram:411f 18 dc          jr l40fdh            	;. .
l4121h:
	ram:4121 cd 60 20       call 02060h          	;. `  
	ram:4124 cd 2b 00       call 0002bh          	;. + .
	ram:4127 c9             ret                  	;.
l4128h:
	ram:4128 e5             push hl              	;.
	ram:4129 11 55 8a       ld de,08a55h         	;. U .
	ram:412c cd 11 21       call 02111h          	;. . !
	ram:412f d7             rst 10h              	;.
	ram:4130 13             inc de               	;.
	ram:4131 13             inc de               	;.
	ram:4132 e1             pop hl               	;.
	ram:4133 19             add hl,de            	;.
	ram:4134 22 3a 83       ld (0833ah),hl       	;" : .
	ram:4137 21 00 00       ld hl,00000h         	;! . .
	ram:413a e5             push hl              	;.
	ram:413b eb             ex de,hl             	;.
	ram:413c fd cb 13 8e    res 1,(iy+013h)      	;. . . .
l4140h:
	ram:4140 ed 5b 3a 83    ld de,(0833ah)       	;. [ : .
	ram:4144 cd 8e 00       call 0008eh          	;. . .
	ram:4147 30 0a          jr nc,l4153h         	;0 .
	ram:4149 cd 0b 6a       call sub_6a0bh       	;. . j
	ram:414c eb             ex de,hl             	;.
	ram:414d e1             pop hl               	;.
	ram:414e 09             add hl,bc            	;.
	ram:414f e5             push hl              	;.
	ram:4150 eb             ex de,hl             	;.
	ram:4151 18 ed          jr l4140h            	;. .
l4153h:
	ram:4153 cd 60 20       call 02060h          	;. `  
	ram:4156 e1             pop hl               	;.
	ram:4157 22 3a 83       ld (0833ah),hl       	;" : .
	ram:415a 97             sub a                	;.
	ram:415b 3c             inc a                	;<
	ram:415c c9             ret                  	;.
	ram:415d fd cb 0a 56    bit 2,(iy+00ah)      	;. . . V
	ram:4161 20 0b          jr nz,l416eh         	;.
	ram:4163 fd cb 0a 5e    bit 3,(iy+00ah)      	;. . . ^
	ram:4167 20 05          jr nz,l416eh         	;.
	ram:4169 fd cb 0a 66    bit 4,(iy+00ah)      	;. . . f
	ram:416d c8             ret z                	;.
l416eh:
	ram:416e 3e 08          ld a,008h            	;> .
l4170h:
	ram:4170 21 b3 05       ld hl,005b3h         	;! . .
l4173h:
	ram:4173 22 8f 81       ld (0818fh),hl       	;" . .
	ram:4176 22 91 81       ld (08191h),hl       	;" . .
	ram:4179 c3 87 0a       jp 00a87h            	;. . .
	ram:417c cd 9d 28       call 0289dh          	;. . (
	ram:417f d0             ret nc               	;.
	ram:4180 3e 0f          ld a,00fh            	;> .
	ram:4182 18 ec          jr l4170h            	;. .
sub_4184h:
	ram:4184 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:4188 cd d3 3d       call 03dd3h          	;. . =
	ram:418b 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:418e e5             push hl              	;.
	ram:418f 21 00 00       ld hl,00000h         	;! . .
	ram:4192 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4195 21 3f 31       ld hl,0313fh         	;! ? 1
	ram:4198 cd 45 3e       call 03e45h          	;. E >
	ram:419b 3a 37 83       ld a,(08337h)        	;: 7 .
	ram:419e cd d6 41       call sub_41d6h       	;. . A
	ram:41a1 21 0d 80       ld hl,0800dh         	;! . .
	ram:41a4 34             inc (hl)             	;4
	ram:41a5 3a 37 83       ld a,(08337h)        	;: 7 .
	ram:41a8 e6 7f          and 07fh             	;. .
	ram:41aa fe 22          cp 022h              	;. "
	ram:41ac 38 0b          jr c,l41b9h          	;8 .
	ram:41ae fe 26          cp 026h              	;. &
	ram:41b0 38 05          jr c,l41b7h          	;8 .
	ram:41b2 21 66 43       ld hl,l4366h         	;! f C
	ram:41b5 18 0e          jr l41c5h            	;. .
l41b7h:
	ram:41b7 3e 22          ld a,022h            	;> "
l41b9h:
	ram:41b9 3d             dec a                	;=
	ram:41ba 87             add a,a              	;.
	ram:41bb 6f             ld l,a               	;o
	ram:41bc 26 00          ld h,000h            	;& .
	ram:41be 11 e5 41       ld de,l41e5h         	;. . A
	ram:41c1 19             add hl,de            	;.
	ram:41c2 cd 33 00       call 00033h          	;. 3 .
l41c5h:
	ram:41c5 11 7c 82       ld de,0827ch         	;. | .
	ram:41c8 cd 42 30       call 03042h          	;. B 0
	ram:41cb 21 7c 82       ld hl,0827ch         	;! | .
	ram:41ce cd 45 3e       call 03e45h          	;. E >
	ram:41d1 e1             pop hl               	;.
	ram:41d2 22 0c 80       ld (0800ch),hl       	;" . .
	ram:41d5 c9             ret                  	;.
sub_41d6h:
	ram:41d6 e6 7f          and 07fh             	;. .
	ram:41d8 cd 69 35       call 03569h          	;. i 5
	ram:41db cd df 41       call sub_41dfh       	;. . A
	ram:41de 78             ld a,b               	;x
sub_41dfh:
	ram:41df c6 30          add a,030h           	;. 0
	ram:41e1 cd c5 3f       call 03fc5h          	;. . ?
	ram:41e4 c9             ret                  	;.
l41e5h:
	ram:41e5 2b             dec hl               	;+
	ram:41e6 42             ld b,d               	;B
	ram:41e7 34             inc (hl)             	;4
	ram:41e8 42             ld b,d               	;B
	ram:41e9 40             ld b,b               	;@
	ram:41ea 42             ld b,d               	;B
	ram:41eb 4d             ld c,l               	;M
	ram:41ec 42             ld b,d               	;B
	ram:41ed 54             ld d,h               	;T
	ram:41ee 42             ld b,d               	;B
	ram:41ef 5e             ld e,(hl)            	;^
	ram:41f0 42             ld b,d               	;B
	ram:41f1 64             ld h,h               	;d
	ram:41f2 42             ld b,d               	;B
	ram:41f3 6b             ld l,e               	;k
	ram:41f4 42             ld b,d               	;B
	ram:41f5 77             ld (hl),a            	;w
	ram:41f6 42             ld b,d               	;B
	ram:41f7 7c             ld a,h               	;|
	ram:41f8 42             ld b,d               	;B
	ram:41f9 86             add a,(hl)           	;.
	ram:41fa 42             ld b,d               	;B
	ram:41fb 8f             adc a,a              	;.
	ram:41fc 42             ld b,d               	;B
	ram:41fd 9c             sbc a,h              	;.
	ram:41fe 42             ld b,d               	;B
	ram:41ff a6             and (hl)             	;.
	ram:4200 42             ld b,d               	;B
	ram:4201 b0             or b                 	;.
	ram:4202 42             ld b,d               	;B
	ram:4203 b7             or a                 	;.
	ram:4204 42             ld b,d               	;B
	ram:4205 c0             ret nz               	;.
	ram:4206 42             ld b,d               	;B
	ram:4207 c8             ret z                	;.
	ram:4208 42             ld b,d               	;B
	ram:4209 d5             push de              	;.
	ram:420a 42             ld b,d               	;B
	ram:420b db 42          in a,(042h)          	;. B
	ram:420d e7             rst 20h              	;.
	ram:420e 42             ld b,d               	;B
	ram:420f ec 42 f2       call pe,0f242h       	;. B .
	ram:4212 42             ld b,d               	;B
	ram:4213 f7             rst 30h              	;.
	ram:4214 42             ld b,d               	;B
	ram:4215 02             ld (bc),a            	;.
	ram:4216 43             ld b,e               	;C
	ram:4217 09             add hl,bc            	;.
	ram:4218 43             ld b,e               	;C
	ram:4219 15             dec d                	;.
	ram:421a 43             ld b,e               	;C
	ram:421b 22 43 2d       ld (02d43h),hl       	;" C -
	ram:421e 43             ld b,e               	;C
	ram:421f 37             scf                  	;7
	ram:4220 43             ld b,e               	;C
	ram:4221 44             ld b,h               	;D
	ram:4222 43             ld b,e               	;C
	ram:4223 50             ld d,b               	;P
	ram:4224 43             ld b,e               	;C
	ram:4225 55             ld d,l               	;U
	ram:4226 43             ld b,e               	;C
	ram:4227 61             ld h,c               	;a
	ram:4228 43             ld b,e               	;C
	ram:4229 66             ld h,(hl)            	;f
	ram:422a 43             ld b,e               	;C
	ram:422b 4f             ld c,a               	;O
	ram:422c 56             ld d,(hl)            	;V
	ram:422d 45             ld b,l               	;E
	ram:422e 52             ld d,d               	;R
	ram:422f 46             ld b,(hl)            	;F
	ram:4230 4c             ld c,h               	;L
	ram:4231 4f             ld c,a               	;O
	ram:4232 57             ld d,a               	;W
	ram:4233 00             nop                  	;.
	ram:4234 44             ld b,h               	;D
	ram:4235 49             ld c,c               	;I
	ram:4236 56             ld d,(hl)            	;V
	ram:4237 20 42          jr nz,l427bh         	;B
	ram:4239 59             ld e,c               	;Y
	ram:423a 20 5a          jr nz,l4296h         	;Z
	ram:423c 45             ld b,l               	;E
	ram:423d 52             ld d,d               	;R
	ram:423e 4f             ld c,a               	;O
	ram:423f 00             nop                  	;.
	ram:4240 53             ld d,e               	;S
	ram:4241 49             ld c,c               	;I
	ram:4242 4e             ld c,(hl)            	;N
	ram:4243 47             ld b,a               	;G
	ram:4244 55             ld d,l               	;U
	ram:4245 4c             ld c,h               	;L
	ram:4246 41             ld b,c               	;A
	ram:4247 52             ld d,d               	;R
	ram:4248 20 4d          jr nz,l4297h         	;M
	ram:424a 41             ld b,c               	;A
	ram:424b 54             ld d,h               	;T
	ram:424c 00             nop                  	;.
	ram:424d 44             ld b,h               	;D
	ram:424e 4f             ld c,a               	;O
	ram:424f 4d             ld c,l               	;M
	ram:4250 41             ld b,c               	;A
	ram:4251 49             ld c,c               	;I
	ram:4252 4e             ld c,(hl)            	;N
	ram:4253 00             nop                  	;.
	ram:4254 49             ld c,c               	;I
	ram:4255 4e             ld c,(hl)            	;N
	ram:4256 43             ld b,e               	;C
	ram:4257 52             ld d,d               	;R
	ram:4258 45             ld b,l               	;E
	ram:4259 4d             ld c,l               	;M
	ram:425a 45             ld b,l               	;E
	ram:425b 4e             ld c,(hl)            	;N
	ram:425c 54             ld d,h               	;T
	ram:425d 00             nop                  	;.
	ram:425e 42             ld b,d               	;B
	ram:425f 52             ld d,d               	;R
	ram:4260 45             ld b,l               	;E
	ram:4261 41             ld b,c               	;A
	ram:4262 4b             ld c,e               	;K
	ram:4263 00             nop                  	;.
	ram:4264 53             ld d,e               	;S
	ram:4265 59             ld e,c               	;Y
	ram:4266 4e             ld c,(hl)            	;N
	ram:4267 54             ld d,h               	;T
	ram:4268 41             ld b,c               	;A
	ram:4269 58             ld e,b               	;X
	ram:426a 00             nop                  	;.
	ram:426b 4e             ld c,(hl)            	;N
	ram:426c 55             ld d,l               	;U
	ram:426d 4d             ld c,l               	;M
	ram:426e 42             ld b,d               	;B
	ram:426f 45             ld b,l               	;E
	ram:4270 52             ld d,d               	;R
	ram:4271 20 42          jr nz,l42b5h         	;B
	ram:4273 41             ld b,c               	;A
	ram:4274 53             ld d,e               	;S
	ram:4275 45             ld b,l               	;E
	ram:4276 00             nop                  	;.
l4277h:
	ram:4277 4d             ld c,l               	;M
	ram:4278 4f             ld c,a               	;O
	ram:4279 44             ld b,h               	;D
	ram:427a 45             ld b,l               	;E
l427bh:
	ram:427b 00             nop                  	;.
	ram:427c 44             ld b,h               	;D
	ram:427d 41             ld b,c               	;A
	ram:427e 54             ld d,h               	;T
	ram:427f 41             ld b,c               	;A
	ram:4280 20 54          jr nz,l42d6h         	;T
	ram:4282 59             ld e,c               	;Y
	ram:4283 50             ld d,b               	;P
	ram:4284 45             ld b,l               	;E
	ram:4285 00             nop                  	;.
	ram:4286 41             ld b,c               	;A
	ram:4287 52             ld d,d               	;R
	ram:4288 47             ld b,a               	;G
	ram:4289 55             ld d,l               	;U
	ram:428a 4d             ld c,l               	;M
	ram:428b 45             ld b,l               	;E
	ram:428c 4e             ld c,(hl)            	;N
	ram:428d 54             ld d,h               	;T
	ram:428e 00             nop                  	;.
	ram:428f 44             ld b,h               	;D
	ram:4290 49             ld c,c               	;I
	ram:4291 4d             ld c,l               	;M
	ram:4292 20 4d          jr nz,79             	;M
	ram:4294 49             ld c,c               	;I
	ram:4295 53             ld d,e               	;S
l4296h:
	ram:4296 4d             ld c,l               	;M
l4297h:
	ram:4297 41             ld b,c               	;A
	ram:4298 54             ld d,h               	;T
	ram:4299 43             ld b,e               	;C
	ram:429a 48             ld c,b               	;H
	ram:429b 00             nop                  	;.
	ram:429c 44             ld b,h               	;D
	ram:429d 49             ld c,c               	;I
	ram:429e 4d             ld c,l               	;M
	ram:429f 45             ld b,l               	;E
	ram:42a0 4e             ld c,(hl)            	;N
	ram:42a1 53             ld d,e               	;S
	ram:42a2 49             ld c,c               	;I
	ram:42a3 4f             ld c,a               	;O
	ram:42a4 4e             ld c,(hl)            	;N
	ram:42a5 00             nop                  	;.
	ram:42a6 55             ld d,l               	;U
	ram:42a7 4e             ld c,(hl)            	;N
	ram:42a8 44             ld b,h               	;D
	ram:42a9 45             ld b,l               	;E
	ram:42aa 46             ld b,(hl)            	;F
	ram:42ab 49             ld c,c               	;I
	ram:42ac 4e             ld c,(hl)            	;N
	ram:42ad 45             ld b,l               	;E
	ram:42ae 44             ld b,h               	;D
	ram:42af 00             nop                  	;.
	ram:42b0 4d             ld c,l               	;M
	ram:42b1 45             ld b,l               	;E
	ram:42b2 4d             ld c,l               	;M
	ram:42b3 4f             ld c,a               	;O
	ram:42b4 52             ld d,d               	;R
l42b5h:
	ram:42b5 59             ld e,c               	;Y
	ram:42b6 00             nop                  	;.
	ram:42b7 52             ld d,d               	;R
	ram:42b8 45             ld b,l               	;E
	ram:42b9 53             ld d,e               	;S
	ram:42ba 45             ld b,l               	;E
	ram:42bb 52             ld d,d               	;R
	ram:42bc 56             ld d,(hl)            	;V
	ram:42bd 45             ld b,l               	;E
	ram:42be 44             ld b,h               	;D
	ram:42bf 00             nop                  	;.
	ram:42c0 49             ld c,c               	;I
	ram:42c1 4e             ld c,(hl)            	;N
	ram:42c2 56             ld d,(hl)            	;V
	ram:42c3 41             ld b,c               	;A
	ram:42c4 4c             ld c,h               	;L
	ram:42c5 49             ld c,c               	;I
	ram:42c6 44             ld b,h               	;D
	ram:42c7 00             nop                  	;.
	ram:42c8 49             ld c,c               	;I
	ram:42c9 4c             ld c,h               	;L
	ram:42ca 4c             ld c,h               	;L
	ram:42cb 45             ld b,l               	;E
	ram:42cc 47             ld b,a               	;G
	ram:42cd 41             ld b,c               	;A
	ram:42ce 4c             ld c,h               	;L
	ram:42cf 20 4e          jr nz,l431fh         	;N
	ram:42d1 45             ld b,l               	;E
	ram:42d2 53             ld d,e               	;S
	ram:42d3 54             ld d,h               	;T
	ram:42d4 00             nop                  	;.
	ram:42d5 42             ld b,d               	;B
l42d6h:
	ram:42d6 4f             ld c,a               	;O
	ram:42d7 55             ld d,l               	;U
	ram:42d8 4e             ld c,(hl)            	;N
	ram:42d9 44             ld b,h               	;D
	ram:42da 00             nop                  	;.
	ram:42db 47             ld b,a               	;G
	ram:42dc 52             ld d,d               	;R
	ram:42dd 41             ld b,c               	;A
	ram:42de 50             ld d,b               	;P
	ram:42df 48             ld c,b               	;H
	ram:42e0 20 52          jr nz,l4334h         	;R
	ram:42e2 41             ld b,c               	;A
	ram:42e3 4e             ld c,(hl)            	;N
	ram:42e4 47             ld b,a               	;G
	ram:42e5 45             ld b,l               	;E
	ram:42e6 00             nop                  	;.
	ram:42e7 5a             ld e,d               	;Z
	ram:42e8 4f             ld c,a               	;O
	ram:42e9 4f             ld c,a               	;O
	ram:42ea 4d             ld c,l               	;M
	ram:42eb 00             nop                  	;.
	ram:42ec 4c             ld c,h               	;L
	ram:42ed 41             ld b,c               	;A
	ram:42ee 42             ld b,d               	;B
	ram:42ef 45             ld b,l               	;E
	ram:42f0 4c             ld c,h               	;L
	ram:42f1 00             nop                  	;.
	ram:42f2 53             ld d,e               	;S
	ram:42f3 54             ld d,h               	;T
	ram:42f4 41             ld b,c               	;A
	ram:42f5 54             ld d,h               	;T
	ram:42f6 00             nop                  	;.
	ram:42f7 43             ld b,e               	;C
	ram:42f8 4f             ld c,a               	;O
	ram:42f9 4e             ld c,(hl)            	;N
	ram:42fa 56             ld d,(hl)            	;V
	ram:42fb 45             ld b,l               	;E
	ram:42fc 52             ld d,d               	;R
	ram:42fd 53             ld d,e               	;S
	ram:42fe 49             ld c,c               	;I
	ram:42ff 4f             ld c,a               	;O
	ram:4300 4e             ld c,(hl)            	;N
	ram:4301 00             nop                  	;.
	ram:4302 53             ld d,e               	;S
	ram:4303 4f             ld c,a               	;O
	ram:4304 4c             ld c,h               	;L
	ram:4305 56             ld d,(hl)            	;V
	ram:4306 45             ld b,l               	;E
	ram:4307 52             ld d,d               	;R
	ram:4308 00             nop                  	;.
	ram:4309 53             ld d,e               	;S
	ram:430a 49             ld c,c               	;I
	ram:430b 4e             ld c,(hl)            	;N
	ram:430c 47             ld b,a               	;G
	ram:430d 55             ld d,l               	;U
	ram:430e 4c             ld c,h               	;L
	ram:430f 41             ld b,c               	;A
	ram:4310 52             ld d,d               	;R
	ram:4311 49             ld c,c               	;I
	ram:4312 54             ld d,h               	;T
	ram:4313 59             ld e,c               	;Y
	ram:4314 00             nop                  	;.
	ram:4315 4e             ld c,(hl)            	;N
	ram:4316 4f             ld c,a               	;O
	ram:4317 20 53          jr nz,85             	;S
	ram:4319 49             ld c,c               	;I
	ram:431a 47             ld b,a               	;G
	ram:431b 4e             ld c,(hl)            	;N
	ram:431c 20 43          jr nz,l4361h         	;C
	ram:431e 48             ld c,b               	;H
l431fh:
	ram:431f 4e             ld c,(hl)            	;N
	ram:4320 47             ld b,a               	;G
	ram:4321 00             nop                  	;.
	ram:4322 49             ld c,c               	;I
	ram:4323 54             ld d,h               	;T
	ram:4324 45             ld b,l               	;E
	ram:4325 52             ld d,d               	;R
	ram:4326 41             ld b,c               	;A
	ram:4327 54             ld d,h               	;T
	ram:4328 49             ld c,c               	;I
	ram:4329 4f             ld c,a               	;O
	ram:432a 4e             ld c,(hl)            	;N
	ram:432b 53             ld d,e               	;S
	ram:432c 00             nop                  	;.
	ram:432d 42             ld b,d               	;B
	ram:432e 41             ld b,c               	;A
	ram:432f 44             ld b,h               	;D
	ram:4330 20 47          jr nz,l4379h         	;G
	ram:4332 55             ld d,l               	;U
	ram:4333 45             ld b,l               	;E
l4334h:
	ram:4334 53             ld d,e               	;S
	ram:4335 53             ld d,e               	;S
	ram:4336 00             nop                  	;.
	ram:4337 44             ld b,h               	;D
	ram:4338 49             ld c,c               	;I
	ram:4339 46             ld b,(hl)            	;F
	ram:433a 20 45          jr nz,l4381h         	;E
	ram:433c 51             ld d,c               	;Q
	ram:433d 20 53          jr nz,l4392h         	;S
	ram:433f 45             ld b,l               	;E
	ram:4340 54             ld d,h               	;T
	ram:4341 55             ld d,l               	;U
	ram:4342 50             ld d,b               	;P
	ram:4343 00             nop                  	;.
	ram:4344 44             ld b,h               	;D
	ram:4345 49             ld c,c               	;I
	ram:4346 46             ld b,(hl)            	;F
	ram:4347 20 45          jr nz,l438eh         	;E
	ram:4349 51             ld d,c               	;Q
	ram:434a 20 4d          jr nz,79             	;M
	ram:434c 41             ld b,c               	;A
	ram:434d 54             ld d,h               	;T
	ram:434e 48             ld c,b               	;H
	ram:434f 00             nop                  	;.
	ram:4350 50             ld d,b               	;P
	ram:4351 4f             ld c,a               	;O
	ram:4352 4c             ld c,h               	;L
	ram:4353 59             ld e,c               	;Y
	ram:4354 00             nop                  	;.
	ram:4355 54             ld d,h               	;T
	ram:4356 4f             ld c,a               	;O
	ram:4357 4c             ld c,h               	;L
	ram:4358 20 4e          jr nz,80             	;N
	ram:435a 4f             ld c,a               	;O
	ram:435b 54             ld d,h               	;T
	ram:435c 20 4d          jr nz,l43abh         	;M
	ram:435e 45             ld b,l               	;E
	ram:435f 54             ld d,h               	;T
	ram:4360 00             nop                  	;.
l4361h:
	ram:4361 4c             ld c,h               	;L
	ram:4362 49             ld c,c               	;I
	ram:4363 4e             ld c,(hl)            	;N
	ram:4364 4b             ld c,e               	;K
	ram:4365 00             nop                  	;.
l4366h:
	ram:4366 3f             ccf                  	;?
	ram:4367 00             nop                  	;.
l4368h:
	ram:4368 cd d7 33       call 033d7h          	;. . 3
	ram:436b 18 03          jr l4370h            	;. .
l436dh:
	ram:436d cd e5 49       call sub_49e5h       	;. . I
l4370h:
	ram:4370 21 88 43       ld hl,l4388h         	;! . C
	ram:4373 cd 50 06       call 00650h          	;. P .
	ram:4376 cd 95 43       call sub_4395h       	;. . C
l4379h:
	ram:4379 3e 23          ld a,023h            	;> #
	ram:437b cd 85 3d       call 03d85h          	;. . =
	ram:437e 21 cc 31       ld hl,031cch         	;! . 1
l4381h:
	ram:4381 cd 7f 3d       call 03d7fh          	;. . =
	ram:4384 cd 85 34       call 03485h          	;. . 4
	ram:4387 c9             ret                  	;.
l4388h:
	ram:4388 e6 43          and 043h             	;. C
	ram:438a d9             exx                  	;.
	ram:438b 34             inc (hl)             	;4
	ram:438c d7             rst 10h              	;.
	ram:438d 33             inc sp               	;3
l438eh:
	ram:438e b5             or l                 	;.
	ram:438f 34             inc (hl)             	;4
	ram:4390 8b             adc a,e              	;.
	ram:4391 34             inc (hl)             	;4
l4392h:
	ram:4392 9b             sbc a,e              	;.
	ram:4393 43             ld b,e               	;C
	ram:4394 0a             ld a,(bc)            	;.
sub_4395h:
	ram:4395 cd 39 3e       call 03e39h          	;. 9 >
	ram:4398 cd c3 3e       call 03ec3h          	;. . >
	ram:439b c9             ret                  	;.
sub_439ch:
	ram:439c f5             push af              	;.
	ram:439d 3e 06          ld a,006h            	;> .
	ram:439f cd 9d 34       call 0349dh          	;. . 4
	ram:43a2 38 0d          jr c,l43b1h          	;8 .
	ram:43a4 cd 49 3a       call 03a49h          	;. I :
	ram:43a7 e6 1e          and 01eh             	;. .
	ram:43a9 c1             pop bc               	;.
	ram:43aa b8             cp b                 	;.
l43abh:
	ram:43ab 28 1c          jr z,l43c9h          	;( .
	ram:43ad c5             push bc              	;.
	ram:43ae cd 0b 2c       call 02c0bh          	;. . ,
l43b1h:
	ram:43b1 21 01 01       ld hl,00101h         	;! . .
	ram:43b4 f1             pop af               	;.
	ram:43b5 fe 02          cp 002h              	;. .
	ram:43b7 20 05          jr nz,l43beh         	;.
	ram:43b9 cd a4 29       call 029a4h          	;. . )
	ram:43bc 18 03          jr l43c1h            	;. .
l43beh:
	ram:43be cd 01 2a       call 02a01h          	;. . *
l43c1h:
	ram:43c1 13             inc de               	;.
	ram:43c2 13             inc de               	;.
	ram:43c3 cd 27 1f       call 01f27h          	;. ' .
	ram:43c6 cd 56 20       call 02056h          	;. V  
l43c9h:
	ram:43c9 cd 4a 2e       call 02e4ah          	;. J .
	ram:43cc cd d2 01       call 001d2h          	;. . .
	ram:43cf cd 5a 05       call 0055ah          	;. Z .
	ram:43d2 dd 21 01 01    ld ix,00101h         	;. ! . .
	ram:43d6 dd 22 21 8b    ld (08b21h),ix       	;. " ! .
	ram:43da cd 24 2f       call 02f24h          	;. $ /
	ram:43dd d7             rst 10h              	;.
	ram:43de eb             ex de,hl             	;.
	ram:43df cd 33 00       call 00033h          	;. 3 .
	ram:43e2 22 23 8b       ld (08b23h),hl       	;" # .
	ram:43e5 c9             ret                  	;.
	ram:43e6 fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:43ea ca 91 34       jp z,03491h          	;. . 4
	ram:43ed fe c1          cp 0c1h              	;. .
	ram:43ef ca 68 43       jp z,l4368h          	;. h C
	ram:43f2 cd 97 34       call 03497h          	;. . 4
	ram:43f5 d0             ret nc               	;.
	ram:43f6 3e 06          ld a,006h            	;> .
	ram:43f8 cd 9c 43       call sub_439ch       	;. . C
	ram:43fb cd 95 43       call sub_4395h       	;. . C
	ram:43fe 3e 22          ld a,022h            	;> "
	ram:4400 cd 85 3d       call 03d85h          	;. . =
l4403h:
	ram:4403 cd 8b 3d       call 03d8bh          	;. . =
	ram:4406 cd 55 49       call sub_4955h       	;. U I
	ram:4409 cd cc 44       call sub_44cch       	;. . D
	ram:440c cd 6e 49       call sub_496eh       	;. n I
	ram:440f cd cc 48       call sub_48cch       	;. . H
	ram:4412 cd cc 44       call sub_44cch       	;. . D
	ram:4415 21 31 45       ld hl,l4531h         	;! 1 E
	ram:4418 3e 0f          ld a,00fh            	;> .
	ram:441a 18 02          jr l441eh            	;. .
l441ch:
	ram:441c 3e 10          ld a,010h            	;> .
l441eh:
	ram:441e 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4421 22 8d 81       ld (0818dh),hl       	;" . .
	ram:4424 21 e1 49       ld hl,l49e1h         	;! . I
	ram:4427 22 97 81       ld (08197h),hl       	;" . .
	ram:442a 21 94 44       ld hl,l4494h         	;! . D
	ram:442d 22 95 81       ld (08195h),hl       	;" . .
	ram:4430 21 e5 49       ld hl,sub_49e5h      	;! . I
	ram:4433 22 91 81       ld (08191h),hl       	;" . .
	ram:4436 3e 00          ld a,000h            	;> .
	ram:4438 32 0c 80       ld (0800ch),a        	;2 . .
	ram:443b cd 4a 46       call sub_464ah       	;. J F
	ram:443e 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:4441 fe 03          cp 003h              	;. .
	ram:4443 20 01          jr nz,l4446h         	;.
	ram:4445 23             inc hl               	;#
l4446h:
	ram:4446 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:4449 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:444c cd 67 46       call sub_4667h       	;. g F
l444fh:
	ram:444f 21 98 80       ld hl,08098h         	;! . .
l4452h:
	ram:4452 7e             ld a,(hl)            	;~
	ram:4453 23             inc hl               	;#
	ram:4454 b7             or a                 	;.
	ram:4455 28 0a          jr z,l4461h          	;( .
	ram:4457 e5             push hl              	;.
	ram:4458 cd ad 3c       call 03cadh          	;. . <
	ram:445b e1             pop hl               	;.
	ram:445c 20 f4          jr nz,l4452h         	;.
	ram:445e c3 3c 0a       jp 00a3ch            	;. < .
l4461h:
	ram:4461 cd a7 3c       call 03ca7h          	;. . <
	ram:4464 fd cb 05 ae    res 5,(iy+005h)      	;. . . .
	ram:4468 c9             ret                  	;.
sub_4469h:
	ram:4469 3e 11          ld a,011h            	;> .
	ram:446b 32 0d 80       ld (0800dh),a        	;2 . .
	ram:446e 21 0d 80       ld hl,0800dh         	;! . .
	ram:4471 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:4474 fe 0a          cp 00ah              	;. .
	ram:4476 38 06          jr c,l447eh          	;8 .
	ram:4478 34             inc (hl)             	;4
	ram:4479 fe 64          cp 064h              	;. d
	ram:447b 38 01          jr c,l447eh          	;8 .
	ram:447d 34             inc (hl)             	;4
l447eh:
	ram:447e cd 4a 46       call sub_464ah       	;. J F
	ram:4481 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:4484 fe 13          cp 013h              	;. .
	ram:4486 30 01          jr nc,l4489h         	;0 .
	ram:4488 23             inc hl               	;#
l4489h:
	ram:4489 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:448c 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:448f cd 62 46       call sub_4662h       	;. b F
	ram:4492 18 bb          jr l444fh            	;. .
l4494h:
	ram:4494 cd 95 3c       call 03c95h          	;. . <
	ram:4497 cd 33 26       call 02633h          	;. 3 &
	ram:449a cd 81 35       call 03581h          	;. . 5
	ram:449d 21 c3 44       ld hl,l44c3h         	;! . D
	ram:44a0 cd b5 0a       call 00ab5h          	;. . .
	ram:44a3 cd c8 6c       call sub_6cc8h       	;. . l
	ram:44a6 cd db 0a       call 00adbh          	;. . .
	ram:44a9 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:44ac 23             inc hl               	;#
	ram:44ad 23             inc hl               	;#
	ram:44ae 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:44b1 fe 03          cp 003h              	;. .
	ram:44b3 20 01          jr nz,l44b6h         	;.
	ram:44b5 23             inc hl               	;#
l44b6h:
	ram:44b6 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:44b9 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:44bc cd a7 3c       call 03ca7h          	;. . <
	ram:44bf cd 31 34       call 03431h          	;. 1 4
	ram:44c2 c9             ret                  	;.
l44c3h:
	ram:44c3 cd 09 35       call 03509h          	;. . 5
	ram:44c6 c3 45 0a       jp 00a45h            	;. E .
l44c9h:
	ram:44c9 c3 13 34       jp 03413h            	;. . 4
sub_44cch:
	ram:44cc 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:44cf fe 64          cp 064h              	;. d
	ram:44d1 3e 02          ld a,002h            	;> .
	ram:44d3 30 01          jr nc,l44d6h         	;0 .
	ram:44d5 3c             inc a                	;<
l44d6h:
	ram:44d6 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:44d9 c9             ret                  	;.
sub_44dah:
	ram:44da 21 89 04       ld hl,00489h         	;! . .
	ram:44dd cd b5 0a       call 00ab5h          	;. . .
	ram:44e0 cd e7 44       call sub_44e7h       	;. . D
	ram:44e3 cd db 0a       call 00adbh          	;. . .
	ram:44e6 c9             ret                  	;.
sub_44e7h:
	ram:44e7 cd 7c 46       call sub_467ch       	;. | F
	ram:44ea 2a 8d 81       ld hl,(0818dh)       	;* . .
	ram:44ed 01 05 46       ld bc,l4605h         	;. . F
	ram:44f0 97             sub a                	;.
	ram:44f1 ed 42          sbc hl,bc            	;. B
	ram:44f3 28 12          jr z,l4507h          	;( .
	ram:44f5 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:44f8 bb             cp e                 	;.
	ram:44f9 c8             ret z                	;.
	ram:44fa 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:44fd 53             ld d,e               	;S
	ram:44fe 5f             ld e,a               	;_
	ram:44ff cd 1f 45       call sub_451fh       	;. . E
	ram:4502 7c             ld a,h               	;|
	ram:4503 32 24 8b       ld (08b24h),a        	;2 $ .
	ram:4506 c9             ret                  	;.
l4507h:
	ram:4507 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:450a bb             cp e                 	;.
	ram:450b 28 0b          jr z,l4518h          	;( .
	ram:450d 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:4510 57             ld d,a               	;W
	ram:4511 cd 1f 45       call sub_451fh       	;. . E
	ram:4514 7d             ld a,l               	;}
	ram:4515 32 23 8b       ld (08b23h),a        	;2 # .
l4518h:
	ram:4518 3e 01          ld a,001h            	;> .
	ram:451a 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:451d b7             or a                 	;.
	ram:451e c9             ret                  	;.
sub_451fh:
	ram:451f d5             push de              	;.
	ram:4520 cd 24 2f       call 02f24h          	;. $ /
	ram:4523 d7             rst 10h              	;.
	ram:4524 e1             pop hl               	;.
	ram:4525 e5             push hl              	;.
	ram:4526 cd f7 37       call 037f7h          	;. . 7
	ram:4529 cd 24 2f       call 02f24h          	;. $ /
	ram:452c cd 71 26       call 02671h          	;. q &
	ram:452f e1             pop hl               	;.
	ram:4530 c9             ret                  	;.
l4531h:
	ram:4531 fe c1          cp 0c1h              	;. .
	ram:4533 ca 6d 43       jp z,l436dh          	;. m C
	ram:4536 fe 06          cp 006h              	;. .
	ram:4538 28 08          jr z,l4542h          	;( .
	ram:453a fe 04          cp 004h              	;. .
	ram:453c 28 04          jr z,l4542h          	;( .
l453eh:
	ram:453e fe 03          cp 003h              	;. .
	ram:4540 20 3c          jr nz,l457eh         	;<
l4542h:
	ram:4542 cd bf 3c       call 03cbfh          	;. . <
	ram:4545 c8             ret z                	;.
	ram:4546 cd da 44       call sub_44dah       	;. . D
	ram:4549 3a 05 80       ld a,(08005h)        	;: . .
	ram:454c fe 03          cp 003h              	;. .
	ram:454e ca 03 44       jp z,l4403h          	;. . D
	ram:4551 cd c6 49       call sub_49c6h       	;. . I
l4554h:
	ram:4554 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:4557 fe 64          cp 064h              	;. d
	ram:4559 3e 02          ld a,002h            	;> .
	ram:455b 30 01          jr nc,l455eh         	;0 .
	ram:455d 3c             inc a                	;<
l455eh:
	ram:455e 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:4561 97             sub a                	;.
	ram:4562 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4565 21 05 46       ld hl,l4605h         	;! . F
	ram:4568 22 8d 81       ld (0818dh),hl       	;" . .
	ram:456b 21 94 44       ld hl,l4494h         	;! . D
	ram:456e 22 95 81       ld (08195h),hl       	;" . .
	ram:4571 21 e5 49       ld hl,sub_49e5h      	;! . I
	ram:4574 22 91 81       ld (08191h),hl       	;" . .
	ram:4577 cd 69 44       call sub_4469h       	;. i D
	ram:457a cd 87 3b       call 03b87h          	;. . ;
	ram:457d c9             ret                  	;.
l457eh:
	ram:457e fe 09          cp 009h              	;. .
	ram:4580 20 05          jr nz,l4587h         	;.
	ram:4582 cd fb 33       call 033fbh          	;. . 3
	ram:4585 18 52          jr l45d9h            	;. R
l4587h:
	ram:4587 fe 08          cp 008h              	;. .
	ram:4589 20 05          jr nz,l4590h         	;.
	ram:458b cd 1b 35       call 0351bh          	;. . 5
	ram:458e 18 49          jr l45d9h            	;. I
l4590h:
	ram:4590 fe 16          cp 016h              	;. .
	ram:4592 c8             ret z                	;.
	ram:4593 fe 17          cp 017h              	;. .
	ram:4595 c8             ret z                	;.
	ram:4596 fe 0a          cp 00ah              	;. .
	ram:4598 20 04          jr nz,l459eh         	;.
	ram:459a cd 67 34       call 03467h          	;. g 4
	ram:459d c9             ret                  	;.
l459eh:
	ram:459e fe 77          cp 077h              	;. w
	ram:45a0 c8             ret z                	;.
	ram:45a1 fe 02          cp 002h              	;. .
	ram:45a3 20 07          jr nz,l45ach         	;.
	ram:45a5 cd 5b 34       call 0345bh          	;. [ 4
	ram:45a8 cd 1f 34       call 0341fh          	;. . 4
	ram:45ab c9             ret                  	;.
l45ach:
	ram:45ac fe 01          cp 001h              	;. .
	ram:45ae 20 12          jr nz,l45c2h         	;.
	ram:45b0 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:45b4 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:45b7 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:45bb cd 8e 00       call 0008eh          	;. . .
	ram:45be c8             ret z                	;.
	ram:45bf 7e             ld a,(hl)            	;~
	ram:45c0 18 05          jr l45c7h            	;. .
l45c2h:
	ram:45c2 b7             or a                 	;.
	ram:45c3 c8             ret z                	;.
	ram:45c4 79             ld a,c               	;y
	ram:45c5 b7             or a                 	;.
	ram:45c6 c8             ret z                	;.
l45c7h:
	ram:45c7 fe 3a          cp 03ah              	;. :
	ram:45c9 d0             ret nc               	;.
	ram:45ca fe 30          cp 030h              	;. 0
	ram:45cc d8             ret c                	;.
	ram:45cd fd cb 05 ee    set 5,(iy+005h)      	;. . . .
	ram:45d1 cd 25 34       call 03425h          	;. % 4
	ram:45d4 fd cb 05 66    bit 4,(iy+005h)      	;. . . f
	ram:45d8 c8             ret z                	;.
l45d9h:
	ram:45d9 11 31 45       ld de,l4531h         	;. 1 E
	ram:45dc 2a 8d 81       ld hl,(0818dh)       	;* . .
	ram:45df 97             sub a                	;.
	ram:45e0 ed 52          sbc hl,de            	;. R
	ram:45e2 c0             ret nz               	;.
	ram:45e3 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:45e6 e5             push hl              	;.
	ram:45e7 3e 11          ld a,011h            	;> .
	ram:45e9 32 0d 80       ld (0800dh),a        	;2 . .
	ram:45ec cd 77 3c       call 03c77h          	;. w <
	ram:45ef 7e             ld a,(hl)            	;~
	ram:45f0 fe 20          cp 020h              	;.  
	ram:45f2 20 05          jr nz,l45f9h         	;.
	ram:45f4 cd 8c 49       call sub_498ch       	;. . I
	ram:45f7 18 07          jr l4600h            	;. .
l45f9h:
	ram:45f9 21 0d 80       ld hl,0800dh         	;! . .
	ram:45fc 34             inc (hl)             	;4
	ram:45fd cd 98 49       call sub_4998h       	;. . I
l4600h:
	ram:4600 e1             pop hl               	;.
	ram:4601 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4604 c9             ret                  	;.
l4605h:
	ram:4605 fe c1          cp 0c1h              	;. .
	ram:4607 ca 6d 43       jp z,l436dh          	;. m C
	ram:460a fe 06          cp 006h              	;. .
	ram:460c 28 05          jr z,l4613h          	;( .
	ram:460e fe 04          cp 004h              	;. .
	ram:4610 c2 3e 45       jp nz,l453eh         	;. > E
l4613h:
	ram:4613 cd bf 3c       call 03cbfh          	;. . <
	ram:4616 c8             ret z                	;.
	ram:4617 21 89 04       ld hl,00489h         	;! . .
	ram:461a cd b5 0a       call 00ab5h          	;. . .
	ram:461d cd e7 44       call sub_44e7h       	;. . D
	ram:4620 cd db 0a       call 00adbh          	;. . .
l4623h:
	ram:4623 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:4626 fe 07          cp 007h              	;. .
	ram:4628 20 08          jr nz,l4632h         	;.
	ram:462a cd cb 49       call sub_49cbh       	;. . I
	ram:462d 21 9d 46       ld hl,l469dh         	;! . F
	ram:4630 18 06          jr l4638h            	;. .
l4632h:
	ram:4632 cd ee 7f       call sub_7feeh       	;. . .
	ram:4635 21 ab 7f       ld hl,l7fabh         	;! . .
l4638h:
	ram:4638 22 8d 81       ld (0818dh),hl       	;" . .
	ram:463b 21 9b 33       ld hl,0339bh         	;! . 3
	ram:463e 22 91 81       ld (08191h),hl       	;" . .
	ram:4641 21 c9 44       ld hl,l44c9h         	;! . D
	ram:4644 22 95 81       ld (08195h),hl       	;" . .
	ram:4647 c3 0d 47       jp l470dh            	;. . G
sub_464ah:
	ram:464a 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:464d 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:4650 cd 51 35       call 03551h          	;. Q 5
	ram:4653 22 25 8b       ld (08b25h),hl       	;" % .
	ram:4656 cd 33 26       call 02633h          	;. 3 &
	ram:4659 cd d7 3c       call 03cd7h          	;. . <
	ram:465c 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:465f 23             inc hl               	;#
	ram:4660 23             inc hl               	;#
	ram:4661 c9             ret                  	;.
sub_4662h:
	ram:4662 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:4665 18 03          jr l466ah            	;. .
sub_4667h:
	ram:4667 3a 24 8b       ld a,(08b24h)        	;: $ .
l466ah:
	ram:466a 6f             ld l,a               	;o
	ram:466b 26 00          ld h,000h            	;& .
	ram:466d cd ef 39       call 039efh          	;. . 9
	ram:4670 cd 95 20       call 02095h          	;. .  
	ram:4673 3e 03          ld a,003h            	;> .
	ram:4675 cd 3a 4f       call sub_4f3ah       	;. : O
	ram:4678 21 98 80       ld hl,08098h         	;! . .
	ram:467b c9             ret                  	;.
sub_467ch:
	ram:467c cd 4f 34       call 0344fh          	;. O 4
	ram:467f 2a ca 80       ld hl,(080cah)       	;* . .
	ram:4682 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:4685 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:4688 cd 21 35       call 03521h          	;. ! 5
	ram:468b cd 22 26       call 02622h          	;. " &
	ram:468e cd db 23       call 023dbh          	;. . #
	ram:4691 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:4694 cd 95 39       call 03995h          	;. . 9
	ram:4697 97             sub a                	;.
	ram:4698 ba             cp d                 	;.
	ram:4699 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:469c c9             ret                  	;.
l469dh:
	ram:469d fe 06          cp 006h              	;. .
	ram:469f 20 37          jr nz,l46d8h         	;7
	ram:46a1 cd b4 48       call sub_48b4h       	;. . H
	ram:46a4 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:46a7 21 23 8b       ld hl,08b23h         	;! # .
	ram:46aa be             cp (hl)              	;.
	ram:46ab da c0 47       jp c,l47c0h          	;. . G
	ram:46ae 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:46b1 fe 07          cp 007h              	;. .
	ram:46b3 20 52          jr nz,l4707h         	;R
	ram:46b5 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:46b8 21 24 8b       ld hl,08b24h         	;! $ .
	ram:46bb be             cp (hl)              	;.
	ram:46bc d2 07 47       jp nc,l4707h         	;. . G
	ram:46bf 3c             inc a                	;<
	ram:46c0 32 22 8b       ld (08b22h),a        	;2 " .
	ram:46c3 3e 01          ld a,001h            	;> .
	ram:46c5 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:46c8 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:46cb 3c             inc a                	;<
	ram:46cc 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:46cf be             cp (hl)              	;.
	ram:46d0 30 03          jr nc,l46d5h         	;0 .
	ram:46d2 32 0c 80       ld (0800ch),a        	;2 . .
l46d5h:
	ram:46d5 c3 a6 47       jp l47a6h            	;. . G
l46d8h:
	ram:46d8 fe 04          cp 004h              	;. .
	ram:46da 20 66          jr nz,l4742h         	;f
l46dch:
	ram:46dc cd b4 48       call sub_48b4h       	;. . H
	ram:46df 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:46e2 21 22 8b       ld hl,08b22h         	;! " .
	ram:46e5 be             cp (hl)              	;.
	ram:46e6 38 33          jr c,l471bh          	;8 3
	ram:46e8 28 31          jr z,l471bh          	;( 1
	ram:46ea 34             inc (hl)             	;4
	ram:46eb cd 6d 34       call 0346dh          	;. m 4
	ram:46ee 38 14          jr c,l4704h          	;8 .
	ram:46f0 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:46f3 21 22 8b       ld hl,08b22h         	;! " .
	ram:46f6 be             cp (hl)              	;.
	ram:46f7 38 03          jr c,l46fch          	;8 .
	ram:46f9 c4 73 34       call nz,03473h       	;. s 4
l46fch:
	ram:46fc cd 1e 49       call sub_491eh       	;. . I
	ram:46ff cd bf 33       call 033bfh          	;. . 3
	ram:4702 18 03          jr l4707h            	;. .
l4704h:
	ram:4704 32 0c 80       ld (0800ch),a        	;2 . .
l4707h:
	ram:4707 cd 11 47       call sub_4711h       	;. . G
	ram:470a c2 ef 47       jp nz,l47efh         	;. . G
l470dh:
	ram:470d cd b3 33       call 033b3h          	;. . 3
	ram:4710 c9             ret                  	;.
sub_4711h:
	ram:4711 fd cb 01 46    bit 0,(iy+001h)      	;. . . F
	ram:4715 c8             ret z                	;.
	ram:4716 fd cb 01 86    res 0,(iy+001h)      	;. . . .
	ram:471a c9             ret                  	;.
l471bh:
	ram:471b 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:471e fe 07          cp 007h              	;. .
	ram:4720 20 e5          jr nz,l4707h         	;.
	ram:4722 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:4725 21 23 8b       ld hl,08b23h         	;! # .
	ram:4728 be             cp (hl)              	;.
	ram:4729 d2 07 47       jp nc,l4707h         	;. . G
	ram:472c 47             ld b,a               	;G
	ram:472d 3e 01          ld a,001h            	;> .
	ram:472f 32 22 8b       ld (08b22h),a        	;2 " .
	ram:4732 32 0c 80       ld (0800ch),a        	;2 . .
	ram:4735 78             ld a,b               	;x
	ram:4736 c3 c0 47       jp l47c0h            	;. . G
l4739h:
	ram:4739 cd 11 47       call sub_4711h       	;. . G
	ram:473c c4 c6 49       call nz,sub_49c6h    	;. . I
	ram:473f c3 54 45       jp l4554h            	;. T E
l4742h:
	ram:4742 fe 03          cp 003h              	;. .
	ram:4744 20 4e          jr nz,l4794h         	;N
	ram:4746 cd b4 48       call sub_48b4h       	;. . H
	ram:4749 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:474c fe 02          cp 002h              	;. .
	ram:474e 30 21          jr nc,l4771h         	;0 !
	ram:4750 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:4753 fe 02          cp 002h              	;. .
	ram:4755 38 e2          jr c,l4739h          	;8 .
	ram:4757 3d             dec a                	;=
	ram:4758 32 21 8b       ld (08b21h),a        	;2 ! .
	ram:475b 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:475e 32 22 8b       ld (08b22h),a        	;2 " .
	ram:4761 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:4764 be             cp (hl)              	;.
	ram:4765 38 05          jr c,l476ch          	;8 .
	ram:4767 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:476a d6 01          sub 001h             	;. .
l476ch:
	ram:476c 32 0c 80       ld (0800ch),a        	;2 . .
	ram:476f 18 35          jr l47a6h            	;. 5
l4771h:
	ram:4771 3d             dec a                	;=
	ram:4772 32 22 8b       ld (08b22h),a        	;2 " .
	ram:4775 cd 79 34       call 03479h          	;. y 4
	ram:4778 30 8a          jr nc,l4704h         	;0 .
	ram:477a 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:477d 21 22 8b       ld hl,08b22h         	;! " .
	ram:4780 96             sub (hl)             	;.
	ram:4781 3c             inc a                	;<
	ram:4782 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:4785 be             cp (hl)              	;.
	ram:4786 dc 01 34       call c,03401h        	;. . 4
	ram:4789 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:478c fe 02          cp 002h              	;. .
	ram:478e d4 7f 34       call nc,0347fh       	;. . 4
	ram:4791 c3 fc 46       jp l46fch            	;. . F
l4794h:
	ram:4794 fe 8f          cp 08fh              	;. .
	ram:4796 20 17          jr nz,l47afh         	;.
	ram:4798 cd b4 48       call sub_48b4h       	;. . H
	ram:479b 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:479e d6 01          sub 001h             	;. .
	ram:47a0 ca 07 47       jp z,l4707h          	;. . G
l47a3h:
	ram:47a3 32 21 8b       ld (08b21h),a        	;2 ! .
l47a6h:
	ram:47a6 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:47a9 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:47ac c3 23 46       jp l4623h            	;. # F
l47afh:
	ram:47af fe 91          cp 091h              	;. .
	ram:47b1 20 10          jr nz,l47c3h         	;.
	ram:47b3 cd b4 48       call sub_48b4h       	;. . H
	ram:47b6 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:47b9 21 23 8b       ld hl,08b23h         	;! # .
	ram:47bc be             cp (hl)              	;.
	ram:47bd d2 07 47       jp nc,l4707h         	;. . G
l47c0h:
	ram:47c0 3c             inc a                	;<
	ram:47c1 18 e0          jr l47a3h            	;. .
l47c3h:
	ram:47c3 fe 9b          cp 09bh              	;. .
	ram:47c5 20 2a          jr nz,l47f1h         	;*
l47c7h:
	ram:47c7 cd b4 48       call sub_48b4h       	;. . H
	ram:47ca 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:47cd 3c             inc a                	;<
	ram:47ce ca 07 47       jp z,l4707h          	;. . G
	ram:47d1 21 89 04       ld hl,00489h         	;! . .
	ram:47d4 cd b5 0a       call 00ab5h          	;. . .
	ram:47d7 cd 9d 48       call sub_489dh       	;. . H
	ram:47da 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:47dd 3d             dec a                	;=
	ram:47de 4f             ld c,a               	;O
	ram:47df cd 09 38       call 03809h          	;. . 8
	ram:47e2 21 24 8b       ld hl,08b24h         	;! $ .
l47e5h:
	ram:47e5 34             inc (hl)             	;4
l47e6h:
	ram:47e6 cd 24 2f       call 02f24h          	;. $ /
	ram:47e9 cd 71 26       call 02671h          	;. q &
	ram:47ec cd db 0a       call 00adbh          	;. . .
l47efh:
	ram:47ef 18 b5          jr l47a6h            	;. .
l47f1h:
	ram:47f1 fe 97          cp 097h              	;. .
	ram:47f3 20 2f          jr nz,l4824h         	;/
l47f5h:
	ram:47f5 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:47f8 3d             dec a                	;=
	ram:47f9 c8             ret z                	;.
	ram:47fa cd 09 35       call 03509h          	;. . 5
	ram:47fd 21 89 04       ld hl,00489h         	;! . .
	ram:4800 cd b5 0a       call 00ab5h          	;. . .
	ram:4803 cd 9d 48       call sub_489dh       	;. . H
	ram:4806 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4809 4f             ld c,a               	;O
	ram:480a cd 0f 38       call 0380fh          	;. . 8
	ram:480d 21 24 8b       ld hl,08b24h         	;! $ .
	ram:4810 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4813 be             cp (hl)              	;.
	ram:4814 38 0b          jr c,l4821h          	;8 .
	ram:4816 3d             dec a                	;=
	ram:4817 32 22 8b       ld (08b22h),a        	;2 " .
	ram:481a 35             dec (hl)             	;5
	ram:481b 21 0c 80       ld hl,0800ch         	;! . .
	ram:481e be             cp (hl)              	;.
	ram:481f 30 c5          jr nc,l47e6h         	;0 .
l4821h:
	ram:4821 35             dec (hl)             	;5
	ram:4822 18 c2          jr l47e6h            	;. .
l4824h:
	ram:4824 fe 99          cp 099h              	;. .
	ram:4826 20 20          jr nz,l4848h         	;
	ram:4828 cd b4 48       call sub_48b4h       	;. . H
	ram:482b 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:482e 3c             inc a                	;<
	ram:482f ca 07 47       jp z,l4707h          	;. . G
	ram:4832 21 89 04       ld hl,00489h         	;! . .
	ram:4835 cd b5 0a       call 00ab5h          	;. . .
	ram:4838 cd 9d 48       call sub_489dh       	;. . H
	ram:483b 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:483e 3d             dec a                	;=
	ram:483f 4f             ld c,a               	;O
	ram:4840 cd 03 38       call 03803h          	;. . 8
	ram:4843 21 23 8b       ld hl,08b23h         	;! # .
	ram:4846 18 9d          jr l47e5h            	;. .
l4848h:
	ram:4848 fe 94          cp 094h              	;. .
	ram:484a 20 27          jr nz,l4873h         	;'
	ram:484c 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:484f 3d             dec a                	;=
	ram:4850 c8             ret z                	;.
	ram:4851 cd 09 35       call 03509h          	;. . 5
	ram:4854 21 89 04       ld hl,00489h         	;! . .
	ram:4857 cd b5 0a       call 00ab5h          	;. . .
	ram:485a cd 9d 48       call sub_489dh       	;. . H
	ram:485d 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:4860 4f             ld c,a               	;O
	ram:4861 cd fd 37       call 037fdh          	;. . 7
	ram:4864 21 23 8b       ld hl,08b23h         	;! # .
	ram:4867 3a 21 8b       ld a,(08b21h)        	;: ! .
	ram:486a be             cp (hl)              	;.
	ram:486b 38 04          jr c,l4871h          	;8 .
	ram:486d 3d             dec a                	;=
	ram:486e 32 21 8b       ld (08b21h),a        	;2 ! .
l4871h:
	ram:4871 18 ae          jr l4821h            	;. .
l4873h:
	ram:4873 fe 16          cp 016h              	;. .
	ram:4875 c8             ret z                	;.
	ram:4876 fe 92          cp 092h              	;. .
	ram:4878 28 0b          jr z,l4885h          	;( .
	ram:487a fe c1          cp 0c1h              	;. .
	ram:487c c2 15 35       jp nz,03515h         	;. . 5
	ram:487f cd 9b 33       call 0339bh          	;. . 3
	ram:4882 c3 70 43       jp l4370h            	;. p C
l4885h:
	ram:4885 cd b4 48       call sub_48b4h       	;. . H
	ram:4888 cd 24 2f       call 02f24h          	;. $ /
	ram:488b d7             rst 10h              	;.
	ram:488c cb 47          bit 0,a              	;. G
	ram:488e ca 0d 47       jp z,l470dh          	;. . G
	ram:4891 21 89 04       ld hl,00489h         	;! . .
	ram:4894 cd b5 0a       call 00ab5h          	;. . .
	ram:4897 cd 01 3a       call 03a01h          	;. . :
	ram:489a c3 e6 47       jp l47e6h            	;. . G
sub_489dh:
	ram:489d cd 24 2f       call 02f24h          	;. $ /
	ram:48a0 d7             rst 10h              	;.
	ram:48a1 fd cb 00 86    res 0,(iy+000h)      	;. . . .
	ram:48a5 cb 47          bit 0,a              	;. G
	ram:48a7 28 04          jr z,l48adh          	;( .
	ram:48a9 fd cb 00 c6    set 0,(iy+000h)      	;. . . .
l48adh:
	ram:48ad ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:48b1 06 01          ld b,001h            	;. .
	ram:48b3 c9             ret                  	;.
sub_48b4h:
	ram:48b4 cd bf 3c       call 03cbfh          	;. . <
	ram:48b7 20 03          jr nz,l48bch         	;.
	ram:48b9 33             inc sp               	;3
	ram:48ba 33             inc sp               	;3
	ram:48bb c9             ret                  	;.
l48bch:
	ram:48bc 21 89 04       ld hl,00489h         	;! . .
	ram:48bf cd b5 0a       call 00ab5h          	;. . .
	ram:48c2 cd b9 33       call 033b9h          	;. . 3
	ram:48c5 cd bf 33       call 033bfh          	;. . 3
	ram:48c8 cd db 0a       call 00adbh          	;. . .
	ram:48cb c9             ret                  	;.
sub_48cch:
	ram:48cc 3e 01          ld a,001h            	;> .
	ram:48ce 32 9e 8b       ld (08b9eh),a        	;2 . .
sub_48d1h:
	ram:48d1 2a 21 8b       ld hl,(08b21h)       	;* ! .
	ram:48d4 e5             push hl              	;.
	ram:48d5 7c             ld a,h               	;|
	ram:48d6 3c             inc a                	;<
	ram:48d7 21 9e 8b       ld hl,08b9eh         	;! . .
	ram:48da 96             sub (hl)             	;.
	ram:48db 32 22 8b       ld (08b22h),a        	;2 " .
	ram:48de cd db 49       call sub_49dbh       	;. . I
l48e1h:
	ram:48e1 32 0c 80       ld (0800ch),a        	;2 . .
	ram:48e4 cd 1e 49       call sub_491eh       	;. . I
	ram:48e7 cd bf 33       call 033bfh          	;. . 3
	ram:48ea 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:48ed fe 02          cp 002h              	;. .
	ram:48ef 30 08          jr nc,l48f9h         	;0 .
	ram:48f1 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:48f4 fe 02          cp 002h              	;. .
	ram:48f6 d4 7f 34       call nc,0347fh       	;. . 4
l48f9h:
	ram:48f9 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:48fc 21 24 8b       ld hl,08b24h         	;! $ .
	ram:48ff be             cp (hl)              	;.
	ram:4900 30 11          jr nc,l4913h         	;0 .
	ram:4902 3c             inc a                	;<
	ram:4903 32 22 8b       ld (08b22h),a        	;2 " .
	ram:4906 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4909 3c             inc a                	;<
	ram:490a 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:490d be             cp (hl)              	;.
	ram:490e 38 d1          jr c,l48e1h          	;8 .
	ram:4910 cd 73 34       call 03473h          	;. s 4
l4913h:
	ram:4913 e1             pop hl               	;.
	ram:4914 22 21 8b       ld (08b21h),hl       	;" ! .
	ram:4917 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:491a 32 0c 80       ld (0800ch),a        	;2 . .
	ram:491d c9             ret                  	;.
sub_491eh:
	ram:491e 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:4921 fe 07          cp 007h              	;. .
	ram:4923 28 0f          jr z,l4934h          	;( .
	ram:4925 3e 01          ld a,001h            	;> .
	ram:4927 32 0d 80       ld (0800dh),a        	;2 . .
	ram:492a 3e 65          ld a,065h            	;> e
	ram:492c cd c5 3f       call 03fc5h          	;. . ?
	ram:492f 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:4932 18 13          jr l4947h            	;. .
l4934h:
	ram:4934 3e 01          ld a,001h            	;> .
	ram:4936 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4939 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:493c cd f5 33       call 033f5h          	;. . 3
	ram:493f 3e 2c          ld a,02ch            	;> ,
	ram:4941 cd c5 3f       call 03fc5h          	;. . ?
	ram:4944 3a 21 8b       ld a,(08b21h)        	;: ! .
l4947h:
	ram:4947 cd f5 33       call 033f5h          	;. . 3
	ram:494a 3e 3d          ld a,03dh            	;> =
	ram:494c cd c5 3f       call 03fc5h          	;. . ?
	ram:494f c9             ret                  	;.
sub_4950h:
	ram:4950 21 d1 32       ld hl,032d1h         	;! . 2
	ram:4953 18 03          jr l4958h            	;. .
sub_4955h:
	ram:4955 21 cc 31       ld hl,031cch         	;! . 1
l4958h:
	ram:4958 97             sub a                	;.
	ram:4959 32 0c 80       ld (0800ch),a        	;2 . .
	ram:495c 32 0d 80       ld (0800dh),a        	;2 . .
	ram:495f cd 45 3e       call 03e45h          	;. E >
	ram:4962 3e 3a          ld a,03ah            	;> :
	ram:4964 cd c5 3f       call 03fc5h          	;. . ?
	ram:4967 cd 24 2f       call 02f24h          	;. $ /
	ram:496a cd a9 34       call 034a9h          	;. . 4
	ram:496d c9             ret                  	;.
sub_496eh:
	ram:496e 3e 0f          ld a,00fh            	;> .
	ram:4970 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4973 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:4976 cd c0 49       call sub_49c0h       	;. . I
	ram:4979 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:497c fe 10          cp 010h              	;. .
	ram:497e 20 08          jr nz,l4988h         	;.
	ram:4980 3e 20          ld a,020h            	;>  
	ram:4982 cd c5 3f       call 03fc5h          	;. . ?
	ram:4985 3a 0d 80       ld a,(0800dh)        	;: . .
l4988h:
	ram:4988 fe 11          cp 011h              	;. .
	ram:498a 20 0c          jr nz,sub_4998h      	;.
sub_498ch:
	ram:498c 3a 9e 8b       ld a,(08b9eh)        	;: . .
	ram:498f fe 03          cp 003h              	;. .
	ram:4991 20 05          jr nz,sub_4998h      	;.
	ram:4993 3e 20          ld a,020h            	;>  
	ram:4995 cd c5 3f       call 03fc5h          	;. . ?
sub_4998h:
	ram:4998 3e 09          ld a,009h            	;> .
	ram:499a cd c5 3f       call 03fc5h          	;. . ?
	ram:499d 3a 23 8b       ld a,(08b23h)        	;: # .
	ram:49a0 c3 c0 49       jp sub_49c0h         	;. . I
sub_49a3h:
	ram:49a3 3e 10          ld a,010h            	;> .
	ram:49a5 32 0d 80       ld (0800dh),a        	;2 . .
	ram:49a8 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:49ab 18 13          jr sub_49c0h         	;. .
sub_49adh:
	ram:49ad 3e 0f          ld a,00fh            	;> .
	ram:49af 32 0d 80       ld (0800dh),a        	;2 . .
	ram:49b2 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:49b5 cd c0 49       call sub_49c0h       	;. . I
	ram:49b8 3e 09          ld a,009h            	;> .
	ram:49ba cd c5 3f       call 03fc5h          	;. . ?
	ram:49bd 3a 23 8b       ld a,(08b23h)        	;: # .
sub_49c0h:
	ram:49c0 06 30          ld b,030h            	;. 0
	ram:49c2 cd e9 33       call 033e9h          	;. . 3
	ram:49c5 c9             ret                  	;.
sub_49c6h:
	ram:49c6 3e 01          ld a,001h            	;> .
	ram:49c8 32 9e 8b       ld (08b9eh),a        	;2 . .
sub_49cbh:
	ram:49cb 97             sub a                	;.
	ram:49cc 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:49cf cd 8b 3d       call 03d8bh          	;. . =
	ram:49d2 cd 55 49       call sub_4955h       	;. U I
	ram:49d5 cd ad 49       call sub_49adh       	;. . I
l49d8h:
	ram:49d8 cd d1 48       call sub_48d1h       	;. . H
sub_49dbh:
	ram:49db 3e 01          ld a,001h            	;> .
	ram:49dd 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:49e0 c9             ret                  	;.
l49e1h:
	ram:49e1 cd c5 33       call 033c5h          	;. . 3
	ram:49e4 c9             ret                  	;.
sub_49e5h:
	ram:49e5 21 fb 49       ld hl,l49fbh         	;! . I
	ram:49e8 cd b5 0a       call 00ab5h          	;. . .
	ram:49eb cd bf 3c       call 03cbfh          	;. . <
	ram:49ee c4 e7 44       call nz,sub_44e7h    	;. . D
	ram:49f1 cd 09 35       call 03509h          	;. . 5
	ram:49f4 cd db 0a       call 00adbh          	;. . .
l49f7h:
	ram:49f7 cd a1 33       call 033a1h          	;. . 3
	ram:49fa c9             ret                  	;.
l49fbh:
	ram:49fb cd 27 35       call 03527h          	;. ' 5
	ram:49fe 18 f7          jr l49f7h            	;. .
	ram:4a00 97             sub a                	;.
	ram:4a01 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:4a04 3a 82 80       ld a,(08082h)        	;: . .
	ram:4a07 e6 1f          and 01fh             	;. .
	ram:4a09 20 1a          jr nz,l4a25h         	;.
	ram:4a0b 3e 13          ld a,013h            	;> .
	ram:4a0d cd 46 4f       call sub_4f46h       	;. F O
	ram:4a10 79             ld a,c               	;y
	ram:4a11 fe 16          cp 016h              	;. .
	ram:4a13 30 0a          jr nc,l4a1fh         	;0 .
	ram:4a15 cd b2 57       call sub_57b2h       	;. . W
	ram:4a18 21 98 80       ld hl,08098h         	;! . .
	ram:4a1b cd 45 3e       call 03e45h          	;. E >
	ram:4a1e c9             ret                  	;.
l4a1fh:
	ram:4a1f cd 3c 58       call sub_583ch       	;. < X
	ram:4a22 c3 32 4b       jp l4b32h            	;. 2 K
l4a25h:
	ram:4a25 fe 01          cp 001h              	;. .
	ram:4a27 20 18          jr nz,l4a41h         	;.
	ram:4a29 cd 60 54       call sub_5460h       	;. ` T
	ram:4a2c 79             ld a,c               	;y
	ram:4a2d fe 16          cp 016h              	;. .
	ram:4a2f 30 0a          jr nc,l4a3bh         	;0 .
	ram:4a31 cd b2 57       call sub_57b2h       	;. . W
	ram:4a34 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:4a37 cd 45 3e       call 03e45h          	;. E >
	ram:4a3a c9             ret                  	;.
l4a3bh:
	ram:4a3b cd 3c 58       call sub_583ch       	;. < X
	ram:4a3e c3 40 4b       jp l4b40h            	;. @ K
l4a41h:
	ram:4a41 fe 02          cp 002h              	;. .
	ram:4a43 20 0c          jr nz,l4a51h         	;.
	ram:4a45 cd 3c 58       call sub_583ch       	;. < X
	ram:4a48 cd d6 54       call sub_54d6h       	;. . T
	ram:4a4b cd bf 57       call sub_57bfh       	;. . W
	ram:4a4e c3 4e 4b       jp l4b4eh            	;. N K
l4a51h:
	ram:4a51 fe 03          cp 003h              	;. .
	ram:4a53 20 0c          jr nz,l4a61h         	;.
	ram:4a55 cd 3c 58       call sub_583ch       	;. < X
	ram:4a58 cd f9 55       call sub_55f9h       	;. . U
	ram:4a5b cd bf 57       call sub_57bfh       	;. . W
	ram:4a5e c3 b9 4b       jp l4bb9h            	;. . K
l4a61h:
	ram:4a61 fe 04          cp 004h              	;. .
	ram:4a63 20 14          jr nz,l4a79h         	;.
	ram:4a65 cd 3c 58       call sub_583ch       	;. < X
	ram:4a68 cd 39 56       call sub_5639h       	;. 9 V
	ram:4a6b 79             ld a,c               	;y
	ram:4a6c fe 16          cp 016h              	;. .
	ram:4a6e 30 06          jr nc,l4a76h         	;0 .
	ram:4a70 3e 15          ld a,015h            	;> .
	ram:4a72 91             sub c                	;.
	ram:4a73 32 38 8b       ld (08b38h),a        	;2 8 .
l4a76h:
	ram:4a76 c3 20 4c       jp l4c20h            	;.   L
l4a79h:
	ram:4a79 fe 05          cp 005h              	;. .
	ram:4a7b 20 14          jr nz,l4a91h         	;.
	ram:4a7d cd 3c 58       call sub_583ch       	;. < X
	ram:4a80 cd 6f 56       call sub_566fh       	;. o V
	ram:4a83 79             ld a,c               	;y
	ram:4a84 fe 16          cp 016h              	;. .
	ram:4a86 30 06          jr nc,l4a8eh         	;0 .
	ram:4a88 3e 15          ld a,015h            	;> .
	ram:4a8a 91             sub c                	;.
	ram:4a8b 32 38 8b       ld (08b38h),a        	;2 8 .
l4a8eh:
	ram:4a8e c3 c7 4c       jp l4cc7h            	;. . L
l4a91h:
	ram:4a91 fe 06          cp 006h              	;. .
	ram:4a93 20 0c          jr nz,l4aa1h         	;.
	ram:4a95 cd 59 58       call sub_5859h       	;. Y X
	ram:4a98 cd c4 56       call sub_56c4h       	;. . V
	ram:4a9b cd bf 57       call sub_57bfh       	;. . W
	ram:4a9e c3 6e 4d       jp l4d6eh            	;. n M
l4aa1h:
	ram:4aa1 fe 07          cp 007h              	;. .
	ram:4aa3 20 0c          jr nz,l4ab1h         	;.
	ram:4aa5 cd 59 58       call sub_5859h       	;. Y X
	ram:4aa8 cd 15 57       call sub_5715h       	;. . W
	ram:4aab cd bf 57       call sub_57bfh       	;. . W
	ram:4aae c3 34 4e       jp l4e34h            	;. 4 N
l4ab1h:
	ram:4ab1 fe 0c          cp 00ch              	;. .
	ram:4ab3 20 0b          jr nz,l4ac0h         	;.
	ram:4ab5 cd 3c 58       call sub_583ch       	;. < X
	ram:4ab8 d7             rst 10h              	;.
	ram:4ab9 eb             ex de,hl             	;.
	ram:4aba 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4abd c3 f9 4e       jp l4ef9h            	;. . N
l4ac0h:
	ram:4ac0 21 0d 80       ld hl,0800dh         	;! . .
	ram:4ac3 36 11          ld (hl),011h         	;6 .
	ram:4ac5 21 0f 31       ld hl,0310fh         	;! . 1
	ram:4ac8 cd 45 3e       call 03e45h          	;. E >
	ram:4acb c9             ret                  	;.
	ram:4acc fd cb 01 5e    bit 3,(iy+001h)      	;. . . ^
	ram:4ad0 c8             ret z                	;.
	ram:4ad1 fd cb 0e 56    bit 2,(iy+00eh)      	;. . . V
	ram:4ad5 28 09          jr z,l4ae0h          	;( .
	ram:4ad7 2a 34 8b       ld hl,(08b34h)       	;* 4 .
	ram:4ada 2b             dec hl               	;+
	ram:4adb 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:4ade 18 05          jr l4ae5h            	;. .
l4ae0h:
	ram:4ae0 fd cb 0e 5e    bit 3,(iy+00eh)      	;. . . ^
	ram:4ae4 c8             ret z                	;.
l4ae5h:
	ram:4ae5 21 0c 80       ld hl,0800ch         	;! . .
	ram:4ae8 34             inc (hl)             	;4
	ram:4ae9 18 36          jr l4b21h            	;. 6
	ram:4aeb fd cb 0e 66    bit 4,(iy+00eh)      	;. . . f
	ram:4aef c8             ret z                	;.
	ram:4af0 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4af3 2b             dec hl               	;+
	ram:4af4 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:4af7 18 28          jr l4b21h            	;. (
	ram:4af9 fd cb 0e 56    bit 2,(iy+00eh)      	;. . . V
	ram:4afd c8             ret z                	;.
	ram:4afe 2a 34 8b       ld hl,(08b34h)       	;* 4 .
	ram:4b01 2b             dec hl               	;+
	ram:4b02 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:4b05 18 1a          jr l4b21h            	;. .
	ram:4b07 fd cb 0e 5e    bit 3,(iy+00eh)      	;. . . ^
	ram:4b0b c8             ret z                	;.
	ram:4b0c 2a 34 8b       ld hl,(08b34h)       	;* 4 .
	ram:4b0f 23             inc hl               	;#
	ram:4b10 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:4b13 18 0c          jr l4b21h            	;. .
	ram:4b15 fd cb 0e 6e    bit 5,(iy+00eh)      	;. . . n
	ram:4b19 c8             ret z                	;.
	ram:4b1a 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4b1d 23             inc hl               	;#
	ram:4b1e 22 32 8b       ld (08b32h),hl       	;" 2 .
l4b21h:
	ram:4b21 97             sub a                	;.
	ram:4b22 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:4b25 cd 81 3b       call 03b81h          	;. . ;
	ram:4b28 cd 83 36       call 03683h          	;. . 6
	ram:4b2b 3a 82 80       ld a,(08082h)        	;: . .
	ram:4b2e e6 1f          and 01fh             	;. .
	ram:4b30 20 0a          jr nz,l4b3ch         	;.
l4b32h:
	ram:4b32 cd 66 57       call sub_5766h       	;. f W
	ram:4b35 21 98 80       ld hl,08098h         	;! . .
	ram:4b38 cd 6f 3b       call 03b6fh          	;. o ;
	ram:4b3b c9             ret                  	;.
l4b3ch:
	ram:4b3c fe 01          cp 001h              	;. .
	ram:4b3e 20 0a          jr nz,l4b4ah         	;.
l4b40h:
	ram:4b40 cd 66 57       call sub_5766h       	;. f W
l4b43h:
	ram:4b43 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:4b46 cd 6f 3b       call 03b6fh          	;. o ;
	ram:4b49 c9             ret                  	;.
l4b4ah:
	ram:4b4a fe 02          cp 002h              	;. .
	ram:4b4c 20 67          jr nz,l4bb5h         	;g
l4b4eh:
	ram:4b4e cd 66 57       call sub_5766h       	;. f W
	ram:4b51 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4b54 23             inc hl               	;#
	ram:4b55 7e             ld a,(hl)            	;~
	ram:4b56 fe 04          cp 004h              	;. .
	ram:4b58 38 e9          jr c,l4b43h          	;8 .
	ram:4b5a dd e5          push ix              	;. .
	ram:4b5c dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4b60 dd 39          add ix,sp            	;. 9
	ram:4b62 e5             push hl              	;.
	ram:4b63 47             ld b,a               	;G
	ram:4b64 ed 5b 0c 80    ld de,(0800ch)       	;. [ . .
	ram:4b68 d5             push de              	;.
	ram:4b69 cd 90 58       call sub_5890h       	;. . X
	ram:4b6c 3e 5b          ld a,05bh            	;> [
	ram:4b6e cd 69 3b       call 03b69h          	;. i ;
	ram:4b71 23             inc hl               	;#
	ram:4b72 18 05          jr l4b79h            	;. .
l4b74h:
	ram:4b74 cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4b77 38 33          jr c,l4bach          	;8 3
l4b79h:
	ram:4b79 c5             push bc              	;.
	ram:4b7a e7             rst 20h              	;.
	ram:4b7b e5             push hl              	;.
	ram:4b7c cd aa 58       call sub_58aah       	;. . X
	ram:4b7f 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:4b82 09             add hl,bc            	;.
	ram:4b83 eb             ex de,hl             	;.
	ram:4b84 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4b87 23             inc hl               	;#
	ram:4b88 cd 8e 00       call 0008eh          	;. . .
	ram:4b8b fa 96 4b       jp m,l4b96h          	;. . K
	ram:4b8e ed 53 38 8b    ld (08b38h),de       	;. S 8 .
	ram:4b92 e1             pop hl               	;.
	ram:4b93 c1             pop bc               	;.
	ram:4b94 18 0f          jr l4ba5h            	;. .
l4b96h:
	ram:4b96 3e 13          ld a,013h            	;> .
	ram:4b98 cd 46 4f       call sub_4f46h       	;. F O
	ram:4b9b 21 98 80       ld hl,08098h         	;! . .
	ram:4b9e cd 6f 3b       call 03b6fh          	;. o ;
	ram:4ba1 e1             pop hl               	;.
	ram:4ba2 c1             pop bc               	;.
	ram:4ba3 38 07          jr c,l4bach          	;8 .
l4ba5h:
	ram:4ba5 10 cd          djnz l4b74h          	;. .
	ram:4ba7 3e 5d          ld a,05dh            	;> ]
	ram:4ba9 cd 69 3b       call 03b69h          	;. i ;
l4bach:
	ram:4bac e1             pop hl               	;.
	ram:4bad 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4bb0 dd f9          ld sp,ix             	;. .
	ram:4bb2 dd e1          pop ix               	;. .
	ram:4bb4 c9             ret                  	;.
l4bb5h:
	ram:4bb5 fe 03          cp 003h              	;. .
	ram:4bb7 20 62          jr nz,l4c1bh         	;b
l4bb9h:
	ram:4bb9 dd e5          push ix              	;. .
	ram:4bbb dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4bbf dd 39          add ix,sp            	;. 9
	ram:4bc1 e5             push hl              	;.
	ram:4bc2 cd 66 57       call sub_5766h       	;. f W
	ram:4bc5 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4bc8 23             inc hl               	;#
	ram:4bc9 46             ld b,(hl)            	;F
	ram:4bca ed 5b 0c 80    ld de,(0800ch)       	;. [ . .
	ram:4bce d5             push de              	;.
	ram:4bcf cd 90 58       call sub_5890h       	;. . X
	ram:4bd2 3e 5b          ld a,05bh            	;> [
	ram:4bd4 cd 69 3b       call 03b69h          	;. i ;
	ram:4bd7 23             inc hl               	;#
	ram:4bd8 18 05          jr l4bdfh            	;. .
l4bdah:
	ram:4bda cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4bdd 38 33          jr c,l4c12h          	;8 3
l4bdfh:
	ram:4bdf c5             push bc              	;.
	ram:4be0 cd 0a 21       call 0210ah          	;. . !
	ram:4be3 e5             push hl              	;.
	ram:4be4 cd aa 58       call sub_58aah       	;. . X
	ram:4be7 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:4bea 09             add hl,bc            	;.
	ram:4beb eb             ex de,hl             	;.
	ram:4bec 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4bef 23             inc hl               	;#
	ram:4bf0 cd 8e 00       call 0008eh          	;. . .
	ram:4bf3 fa fe 4b       jp m,l4bfeh          	;. . K
	ram:4bf6 ed 53 38 8b    ld (08b38h),de       	;. S 8 .
	ram:4bfa e1             pop hl               	;.
	ram:4bfb c1             pop bc               	;.
	ram:4bfc 18 0d          jr l4c0bh            	;. .
l4bfeh:
	ram:4bfe cd 60 54       call sub_5460h       	;. ` T
	ram:4c01 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:4c04 cd 6f 3b       call 03b6fh          	;. o ;
	ram:4c07 e1             pop hl               	;.
	ram:4c08 c1             pop bc               	;.
	ram:4c09 38 07          jr c,l4c12h          	;8 .
l4c0bh:
	ram:4c0b 10 cd          djnz l4bdah          	;. .
	ram:4c0d 3e 5d          ld a,05dh            	;> ]
	ram:4c0f cd 69 3b       call 03b69h          	;. i ;
l4c12h:
	ram:4c12 e1             pop hl               	;.
	ram:4c13 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4c16 dd f9          ld sp,ix             	;. .
	ram:4c18 dd e1          pop ix               	;. .
	ram:4c1a c9             ret                  	;.
l4c1bh:
	ram:4c1b fe 04          cp 004h              	;. .
	ram:4c1d c2 c2 4c       jp nz,l4cc2h         	;. . L
l4c20h:
	ram:4c20 cd 66 57       call sub_5766h       	;. f W
	ram:4c23 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4c26 ed 5b 90 8b    ld de,(08b90h)       	;. [ . .
	ram:4c2a cd 8e 00       call 0008eh          	;. . .
	ram:4c2d f2 53 4c       jp p,l4c53h          	;. S L
	ram:4c30 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4c33 11 f6 ff       ld de,0fff6h         	;. . .
	ram:4c36 19             add hl,de            	;.
	ram:4c37 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4c3a e7             rst 20h              	;.
	ram:4c3b 3e 13          ld a,013h            	;> .
	ram:4c3d cd 46 4f       call sub_4f46h       	;. F O
	ram:4c40 0c             inc c                	;.
	ram:4c41 2a 90 8b       ld hl,(08b90h)       	;* . .
	ram:4c44 b7             or a                 	;.
	ram:4c45 ed 42          sbc hl,bc            	;. B
	ram:4c47 22 90 8b       ld (08b90h),hl       	;" . .
	ram:4c4a 2a 92 8b       ld hl,(08b92h)       	;* . .
	ram:4c4d 23             inc hl               	;#
	ram:4c4e 22 92 8b       ld (08b92h),hl       	;" . .
	ram:4c51 18 2c          jr l4c7fh            	;. ,
l4c53h:
	ram:4c53 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4c56 e7             rst 20h              	;.
	ram:4c57 3e 13          ld a,013h            	;> .
	ram:4c59 cd 46 4f       call sub_4f46h       	;. F O
	ram:4c5c 0c             inc c                	;.
	ram:4c5d 2a 90 8b       ld hl,(08b90h)       	;* . .
	ram:4c60 09             add hl,bc            	;.
	ram:4c61 ed 5b 32 8b    ld de,(08b32h)       	;. [ 2 .
	ram:4c65 cd 8e 00       call 0008eh          	;. . .
	ram:4c68 f2 7f 4c       jp p,l4c7fh          	;. . L
	ram:4c6b 22 90 8b       ld (08b90h),hl       	;" . .
	ram:4c6e 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4c71 11 0a 00       ld de,0000ah         	;. . .
	ram:4c74 19             add hl,de            	;.
	ram:4c75 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4c78 2a 92 8b       ld hl,(08b92h)       	;* . .
	ram:4c7b 2b             dec hl               	;+
	ram:4c7c 22 92 8b       ld (08b92h),hl       	;" . .
l4c7fh:
	ram:4c7f 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4c82 e5             push hl              	;.
	ram:4c83 3e 7b          ld a,07bh            	;> {
	ram:4c85 cd 69 3b       call 03b69h          	;. i ;
	ram:4c88 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:4c8b ed 5b 90 8b    ld de,(08b90h)       	;. [ . .
	ram:4c8f 19             add hl,de            	;.
	ram:4c90 22 38 8b       ld (08b38h),hl       	;" 8 .
	ram:4c93 ed 4b 92 8b    ld bc,(08b92h)       	;. K . .
	ram:4c97 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4c9a 18 05          jr l4ca1h            	;. .
l4c9ch:
	ram:4c9c cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4c9f 38 1c          jr c,l4cbdh          	;8 .
l4ca1h:
	ram:4ca1 c5             push bc              	;.
	ram:4ca2 e7             rst 20h              	;.
	ram:4ca3 e5             push hl              	;.
	ram:4ca4 3e 13          ld a,013h            	;> .
	ram:4ca6 cd 46 4f       call sub_4f46h       	;. F O
	ram:4ca9 21 98 80       ld hl,08098h         	;! . .
	ram:4cac cd 6f 3b       call 03b6fh          	;. o ;
	ram:4caf e1             pop hl               	;.
	ram:4cb0 c1             pop bc               	;.
	ram:4cb1 38 0a          jr c,l4cbdh          	;8 .
	ram:4cb3 0b             dec bc               	;.
	ram:4cb4 79             ld a,c               	;y
	ram:4cb5 b0             or b                 	;.
	ram:4cb6 20 e4          jr nz,l4c9ch         	;.
	ram:4cb8 3e 7d          ld a,07dh            	;> }
	ram:4cba cd 69 3b       call 03b69h          	;. i ;
l4cbdh:
	ram:4cbd e1             pop hl               	;.
	ram:4cbe 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4cc1 c9             ret                  	;.
l4cc2h:
	ram:4cc2 fe 05          cp 005h              	;. .
	ram:4cc4 c2 69 4d       jp nz,l4d69h         	;. i M
l4cc7h:
	ram:4cc7 cd 66 57       call sub_5766h       	;. f W
	ram:4cca 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4ccd ed 5b 90 8b    ld de,(08b90h)       	;. [ . .
	ram:4cd1 cd 8e 00       call 0008eh          	;. . .
	ram:4cd4 f2 fa 4c       jp p,l4cfah          	;. . L
	ram:4cd7 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4cda 11 ec ff       ld de,0ffech         	;. . .
	ram:4cdd 19             add hl,de            	;.
	ram:4cde 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4ce1 cd 0a 21       call 0210ah          	;. . !
	ram:4ce4 cd 60 54       call sub_5460h       	;. ` T
	ram:4ce7 0c             inc c                	;.
	ram:4ce8 2a 90 8b       ld hl,(08b90h)       	;* . .
	ram:4ceb b7             or a                 	;.
	ram:4cec ed 42          sbc hl,bc            	;. B
	ram:4cee 22 90 8b       ld (08b90h),hl       	;" . .
	ram:4cf1 2a 92 8b       ld hl,(08b92h)       	;* . .
	ram:4cf4 23             inc hl               	;#
	ram:4cf5 22 92 8b       ld (08b92h),hl       	;" . .
	ram:4cf8 18 2c          jr l4d26h            	;. ,
l4cfah:
	ram:4cfa 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4cfd cd 0a 21       call 0210ah          	;. . !
	ram:4d00 cd 60 54       call sub_5460h       	;. ` T
	ram:4d03 0c             inc c                	;.
	ram:4d04 2a 90 8b       ld hl,(08b90h)       	;* . .
	ram:4d07 09             add hl,bc            	;.
	ram:4d08 ed 5b 32 8b    ld de,(08b32h)       	;. [ 2 .
	ram:4d0c cd 8e 00       call 0008eh          	;. . .
	ram:4d0f f2 26 4d       jp p,l4d26h          	;. & M
	ram:4d12 22 90 8b       ld (08b90h),hl       	;" . .
	ram:4d15 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4d18 11 14 00       ld de,00014h         	;. . .
	ram:4d1b 19             add hl,de            	;.
	ram:4d1c 22 d0 80       ld (080d0h),hl       	;" . .
	ram:4d1f 2a 92 8b       ld hl,(08b92h)       	;* . .
	ram:4d22 2b             dec hl               	;+
	ram:4d23 22 92 8b       ld (08b92h),hl       	;" . .
l4d26h:
	ram:4d26 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4d29 e5             push hl              	;.
	ram:4d2a 3e 7b          ld a,07bh            	;> {
	ram:4d2c cd 69 3b       call 03b69h          	;. i ;
	ram:4d2f 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:4d32 ed 5b 90 8b    ld de,(08b90h)       	;. [ . .
	ram:4d36 19             add hl,de            	;.
	ram:4d37 22 38 8b       ld (08b38h),hl       	;" 8 .
	ram:4d3a ed 4b 92 8b    ld bc,(08b92h)       	;. K . .
	ram:4d3e 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4d41 18 05          jr l4d48h            	;. .
l4d43h:
	ram:4d43 cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4d46 38 1c          jr c,l4d64h          	;8 .
l4d48h:
	ram:4d48 c5             push bc              	;.
	ram:4d49 cd 0a 21       call 0210ah          	;. . !
	ram:4d4c e5             push hl              	;.
	ram:4d4d cd 60 54       call sub_5460h       	;. ` T
	ram:4d50 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:4d53 cd 6f 3b       call 03b6fh          	;. o ;
	ram:4d56 e1             pop hl               	;.
	ram:4d57 c1             pop bc               	;.
	ram:4d58 38 0a          jr c,l4d64h          	;8 .
	ram:4d5a 0b             dec bc               	;.
	ram:4d5b 79             ld a,c               	;y
	ram:4d5c b0             or b                 	;.
	ram:4d5d 20 e4          jr nz,l4d43h         	;.
	ram:4d5f 3e 7d          ld a,07dh            	;> }
	ram:4d61 cd 69 3b       call 03b69h          	;. i ;
l4d64h:
	ram:4d64 e1             pop hl               	;.
	ram:4d65 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4d68 c9             ret                  	;.
l4d69h:
	ram:4d69 fe 06          cp 006h              	;. .
	ram:4d6b c2 2f 4e       jp nz,l4e2fh         	;. / N
l4d6eh:
	ram:4d6e dd e5          push ix              	;. .
	ram:4d70 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4d74 dd 39          add ix,sp            	;. 9
	ram:4d76 e5             push hl              	;.
	ram:4d77 e5             push hl              	;.
	ram:4d78 e5             push hl              	;.
	ram:4d79 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4d7c e5             push hl              	;.
	ram:4d7d cd 1a 4f       call sub_4f1ah       	;. . O
	ram:4d80 18 1a          jr l4d9ch            	;. .
l4d82h:
	ram:4d82 cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4d85 2a 36 8b       ld hl,(08b36h)       	;* 6 .
	ram:4d88 23             inc hl               	;#
	ram:4d89 22 36 8b       ld (08b36h),hl       	;" 6 .
	ram:4d8c 21 00 00       ld hl,00000h         	;! . .
	ram:4d8f 22 38 8b       ld (08b38h),hl       	;" 8 .
	ram:4d92 fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
	ram:4d96 fd cb 0e 8e    res 1,(iy+00eh)      	;. . . .
	ram:4d9a 3e 20          ld a,020h            	;>  
l4d9ch:
	ram:4d9c cd 69 3b       call 03b69h          	;. i ;
	ram:4d9f 38 67          jr c,l4e08h          	;8 g
	ram:4da1 cd 90 58       call sub_5890h       	;. . X
	ld b,(ix-003h)		;4da4	dd 46 fd	. F .
	ram:4da7 0e 01          ld c,001h            	;. .
	ld (ix-005h),c		;4da9	dd 71 fb	. q .
	ram:4dac ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:4db0 cd 99 38       call 03899h          	;. . 8
	ram:4db3 3e 5b          ld a,05bh            	;> [
	ram:4db5 cd 69 3b       call 03b69h          	;. i ;
	ram:4db8 18 05          jr l4dbfh            	;. .
l4dbah:
	ram:4dba cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4dbd 38 49          jr c,l4e08h          	;8 I
l4dbfh:
	ram:4dbf e7             rst 20h              	;.
	ram:4dc0 e5             push hl              	;.
	ram:4dc1 cd aa 58       call sub_58aah       	;. . X
	ram:4dc4 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:4dc7 09             add hl,bc            	;.
	ram:4dc8 eb             ex de,hl             	;.
	ram:4dc9 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4dcc 23             inc hl               	;#
	ram:4dcd cd 8e 00       call 0008eh          	;. . .
	ram:4dd0 fa da 4d       jp m,l4ddah          	;. . M
	ram:4dd3 ed 53 38 8b    ld (08b38h),de       	;. S 8 .
	ram:4dd7 e1             pop hl               	;.
	ram:4dd8 18 1c          jr l4df6h            	;. .
l4ddah:
	ram:4dda c5             push bc              	;.
	ram:4ddb 3e 13          ld a,013h            	;> .
	ram:4ddd cd 46 4f       call sub_4f46h       	;. F O
	ram:4de0 21 98 80       ld hl,08098h         	;! . .
	ram:4de3 cd 6f 3b       call 03b6fh          	;. o ;
	ram:4de6 d1             pop de               	;.
	ram:4de7 e1             pop hl               	;.
	ram:4de8 38 1e          jr c,l4e08h          	;8 .
	ram:4dea 7b             ld a,e               	;{
	ram:4deb 91             sub c                	;.
	ram:4dec 28 08          jr z,l4df6h          	;( .
	ram:4dee 47             ld b,a               	;G
l4defh:
	ram:4def cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4df2 38 14          jr c,l4e08h          	;8 .
	ram:4df4 10 f9          djnz l4defh          	;. .
l4df6h:
	ld a,(ix-005h)		;4df6	dd 7e fb	. ~ .
	cp (ix-006h)		;4df9	dd be fa	. . .
	ram:4dfc 28 05          jr z,l4e03h          	;( .
	inc (ix-005h)		;4dfe	dd 34 fb	. 4 .
	ram:4e01 18 b7          jr l4dbah            	;. .
l4e03h:
	ram:4e03 3e 5d          ld a,05dh            	;> ]
	ram:4e05 cd 69 3b       call 03b69h          	;. i ;
l4e08h:
	ld a,(ix-003h)		;4e08	dd 7e fd	. ~ .
	cp (ix-004h)		;4e0b	dd be fc	. . .
	ram:4e0e 28 06          jr z,l4e16h          	;( .
	inc (ix-003h)		;4e10	dd 34 fd	. 4 .
	ram:4e13 c3 82 4d       jp l4d82h            	;. . M
l4e16h:
	ram:4e16 3e 5d          ld a,05dh            	;> ]
	ram:4e18 cd 69 3b       call 03b69h          	;. i ;
	ram:4e1b cd 19 58       call sub_5819h       	;. . X
	ram:4e1e 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:4e21 34             inc (hl)             	;4
	ram:4e22 fd cb 0d d6    set 2,(iy+00dh)      	;. . . .
	ram:4e26 e1             pop hl               	;.
	ram:4e27 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4e2a dd f9          ld sp,ix             	;. .
	ram:4e2c dd e1          pop ix               	;. .
	ram:4e2e c9             ret                  	;.
l4e2fh:
	ram:4e2f fe 07          cp 007h              	;. .
	ram:4e31 c2 f5 4e       jp nz,l4ef5h         	;. . N
l4e34h:
	ram:4e34 dd e5          push ix              	;. .
	ram:4e36 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4e3a dd 39          add ix,sp            	;. 9
	ram:4e3c e5             push hl              	;.
	ram:4e3d e5             push hl              	;.
	ram:4e3e e5             push hl              	;.
	ram:4e3f 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4e42 e5             push hl              	;.
	ram:4e43 cd 1a 4f       call sub_4f1ah       	;. . O
	ram:4e46 18 1a          jr l4e62h            	;. .
l4e48h:
	ram:4e48 cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4e4b 2a 36 8b       ld hl,(08b36h)       	;* 6 .
	ram:4e4e 23             inc hl               	;#
	ram:4e4f 22 36 8b       ld (08b36h),hl       	;" 6 .
	ram:4e52 21 00 00       ld hl,00000h         	;! . .
	ram:4e55 22 38 8b       ld (08b38h),hl       	;" 8 .
	ram:4e58 fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
	ram:4e5c fd cb 0e 8e    res 1,(iy+00eh)      	;. . . .
	ram:4e60 3e 20          ld a,020h            	;>  
l4e62h:
	ram:4e62 cd 69 3b       call 03b69h          	;. i ;
	ram:4e65 38 67          jr c,l4eceh          	;8 g
	ram:4e67 cd 90 58       call sub_5890h       	;. . X
	ld b,(ix-003h)		;4e6a	dd 46 fd	. F .
	ram:4e6d 0e 01          ld c,001h            	;. .
	ld (ix-005h),c		;4e6f	dd 71 fb	. q .
	ram:4e72 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:4e76 cd 99 38       call 03899h          	;. . 8
	ram:4e79 3e 5b          ld a,05bh            	;> [
	ram:4e7b cd 69 3b       call 03b69h          	;. i ;
	ram:4e7e 18 05          jr l4e85h            	;. .
l4e80h:
	ram:4e80 cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4e83 38 49          jr c,l4eceh          	;8 I
l4e85h:
	ram:4e85 cd 0a 21       call 0210ah          	;. . !
	ram:4e88 e5             push hl              	;.
	ram:4e89 cd aa 58       call sub_58aah       	;. . X
	ram:4e8c 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:4e8f 09             add hl,bc            	;.
	ram:4e90 eb             ex de,hl             	;.
	ram:4e91 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:4e94 23             inc hl               	;#
	ram:4e95 cd 8e 00       call 0008eh          	;. . .
	ram:4e98 fa a2 4e       jp m,l4ea2h          	;. . N
	ram:4e9b ed 53 38 8b    ld (08b38h),de       	;. S 8 .
	ram:4e9f e1             pop hl               	;.
	ram:4ea0 18 1a          jr l4ebch            	;. .
l4ea2h:
	ram:4ea2 c5             push bc              	;.
	ram:4ea3 cd 60 54       call sub_5460h       	;. ` T
	ram:4ea6 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:4ea9 cd 6f 3b       call 03b6fh          	;. o ;
	ram:4eac d1             pop de               	;.
	ram:4ead e1             pop hl               	;.
	ram:4eae 38 1e          jr c,l4eceh          	;8 .
	ram:4eb0 7b             ld a,e               	;{
	ram:4eb1 91             sub c                	;.
	ram:4eb2 28 08          jr z,l4ebch          	;( .
	ram:4eb4 47             ld b,a               	;G
l4eb5h:
	ram:4eb5 cd 0d 5c       call sub_5c0dh       	;. . \
	ram:4eb8 38 14          jr c,l4eceh          	;8 .
	ram:4eba 10 f9          djnz l4eb5h          	;. .
l4ebch:
	ld a,(ix-005h)		;4ebc	dd 7e fb	. ~ .
	cp (ix-006h)		;4ebf	dd be fa	. . .
	ram:4ec2 28 05          jr z,l4ec9h          	;( .
	inc (ix-005h)		;4ec4	dd 34 fb	. 4 .
	ram:4ec7 18 b7          jr l4e80h            	;. .
l4ec9h:
	ram:4ec9 3e 5d          ld a,05dh            	;> ]
	ram:4ecb cd 69 3b       call 03b69h          	;. i ;
l4eceh:
	ld a,(ix-003h)		;4ece	dd 7e fd	. ~ .
	cp (ix-004h)		;4ed1	dd be fc	. . .
	ram:4ed4 28 06          jr z,l4edch          	;( .
	inc (ix-003h)		;4ed6	dd 34 fd	. 4 .
	ram:4ed9 c3 48 4e       jp l4e48h            	;. H N
l4edch:
	ram:4edc 3e 5d          ld a,05dh            	;> ]
	ram:4ede cd 69 3b       call 03b69h          	;. i ;
	ram:4ee1 cd 19 58       call sub_5819h       	;. . X
	ram:4ee4 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:4ee7 34             inc (hl)             	;4
	ram:4ee8 fd cb 0d d6    set 2,(iy+00dh)      	;. . . .
	ram:4eec e1             pop hl               	;.
	ram:4eed 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4ef0 dd f9          ld sp,ix             	;. .
	ram:4ef2 dd e1          pop ix               	;. .
	ram:4ef4 c9             ret                  	;.
l4ef5h:
	ram:4ef5 fe 0c          cp 00ch              	;. .
	ram:4ef7 20 20          jr nz,l4f19h         	;
l4ef9h:
	ram:4ef9 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4efc e5             push hl              	;.
	ram:4efd cd 66 57       call sub_5766h       	;. f W
	ram:4f00 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4f03 4e             ld c,(hl)            	;N
	ram:4f04 23             inc hl               	;#
	ram:4f05 46             ld b,(hl)            	;F
	ram:4f06 23             inc hl               	;#
l4f07h:
	ram:4f07 79             ld a,c               	;y
	ram:4f08 b0             or b                 	;.
	ram:4f09 28 0a          jr z,l4f15h          	;( .
	ram:4f0b 7e             ld a,(hl)            	;~
	ram:4f0c 23             inc hl               	;#
	ram:4f0d cd 69 3b       call 03b69h          	;. i ;
	ram:4f10 38 03          jr c,l4f15h          	;8 .
	ram:4f12 0b             dec bc               	;.
	ram:4f13 18 f2          jr l4f07h            	;. .
l4f15h:
	ram:4f15 e1             pop hl               	;.
	ram:4f16 22 0c 80       ld (0800ch),hl       	;" . .
l4f19h:
	ram:4f19 c9             ret                  	;.
sub_4f1ah:
	ram:4f1a cd 66 57       call sub_5766h       	;. f W
	ram:4f1d 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:4f20 35             dec (hl)             	;5
	ram:4f21 fd cb 0d 96    res 2,(iy+00dh)      	;. . . .
	ram:4f25 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:4f28 7e             ld a,(hl)            	;~
	ram:4f29 23             inc hl               	;#
	ld (ix-006h),a		;4f2a	dd 77 fa	. w .
	ram:4f2d 7e             ld a,(hl)            	;~
	ram:4f2e 23             inc hl               	;#
	ld (ix-004h),a		;4f2f	dd 77 fc	. w .
	ram:4f32 3e 01          ld a,001h            	;> .
	ld (ix-003h),a		;4f34	dd 77 fd	. w .
	ram:4f37 3e 5b          ld a,05bh            	;> [
	ram:4f39 c9             ret                  	;.
sub_4f3ah:
	ram:4f3a fd cb 0c c6    set 0,(iy+00ch)      	;. . . .
	ram:4f3e cd 22 52       call sub_5222h       	;. " R
	ram:4f41 fd cb 0c 86    res 0,(iy+00ch)      	;. . . .
	ram:4f45 c9             ret                  	;.
sub_4f46h:
	ram:4f46 dd e5          push ix              	;. .
	ram:4f48 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4f4c dd 39          add ix,sp            	;. 9
	ram:4f4e e5             push hl              	;.
	ram:4f4f 21 cf ff       ld hl,0ffcfh         	;! . .
	ram:4f52 39             add hl,sp            	;9
	ram:4f53 f9             ld sp,hl             	;.
	ld l,(ix-002h)		;4f54	dd 6e fe	. n .
	ld h,(ix-001h)		;4f57	dd 66 ff	. f .
	ld (ix-017h),a		;4f5a	dd 77 e9	. w .
	ram:4f5d fd 46 0a       ld b,(iy+00ah)       	;. F .
	ram:4f60 cd 49 54       call sub_5449h       	;. I T
	ld (ix-015h),a		;4f63	dd 77 eb	. w .
	ram:4f66 fd 46 0b       ld b,(iy+00bh)       	;. F .
	ram:4f69 cd 49 54       call sub_5449h       	;. I T
l4f6ch:
	ld (ix-016h),a		;4f6c	dd 77 ea	. w .
	ram:4f6f b7             or a                 	;.
	ram:4f70 20 3d          jr nz,l4fafh         	;=
	cp (ix-015h)		;4f72	dd be eb	. . .
	ram:4f75 20 08          jr nz,l4f7fh         	;.
	ld a,(ix-017h)		;4f77	dd 7e e9	. ~ .
	ram:4f7a cd 22 52       call sub_5222h       	;. " R
	ram:4f7d 18 2b          jr l4faah            	;. +
l4f7fh:
	ram:4f7f 3e ff          ld a,0ffh            	;> .
	ram:4f81 cd c1 51       call sub_51c1h       	;. . Q
	ld a,(ix-017h)		;4f84	dd 7e e9	. ~ .
	ram:4f87 cd 22 52       call sub_5222h       	;. " R
	ram:4f8a cd d4 51       call sub_51d4h       	;. . Q
l4f8dh:
	ld a,(ix-016h)		;4f8d	dd 7e ea	. ~ .
	ram:4f90 1e 03          ld e,003h            	;. .
	ram:4f92 b7             or a                 	;.
	ram:4f93 28 0c          jr z,l4fa1h          	;( .
	ram:4f95 1e 04          ld e,004h            	;. .
	ram:4f97 3d             dec a                	;=
	ram:4f98 28 07          jr z,l4fa1h          	;( .
	ram:4f9a 1e 02          ld e,002h            	;. .
	ram:4f9c 3d             dec a                	;=
	ram:4f9d 28 02          jr z,l4fa1h          	;( .
	ram:4f9f 1e 01          ld e,001h            	;. .
l4fa1h:
	ram:4fa1 21 98 80       ld hl,08098h         	;! . .
	ram:4fa4 09             add hl,bc            	;.
	ram:4fa5 73             ld (hl),e            	;s
	ram:4fa6 23             inc hl               	;#
	ram:4fa7 36 00          ld (hl),000h         	;6 .
	ram:4fa9 03             inc bc               	;.
l4faah:
	ram:4faa dd f9          ld sp,ix             	;. .
	ram:4fac dd e1          pop ix               	;. .
	ram:4fae c9             ret                  	;.
l4fafh:
	ram:4faf fe 04          cp 004h              	;. .
	ram:4fb1 30 28          jr nc,l4fdbh         	;0 (
	ram:4fb3 cd 93 51       call sub_5193h       	;. . Q
	ram:4fb6 21 cd 4f       ld hl,l4fcdh         	;! . O
	ram:4fb9 cd b5 0a       call 00ab5h          	;. . .
	ld a,(ix-016h)		;4fbc	dd 7e ea	. ~ .
	ram:4fbf cd f5 39       call 039f5h          	;. . 9
	ram:4fc2 cd db 0a       call 00adbh          	;. . .
	ram:4fc5 cd b0 51       call sub_51b0h       	;. . Q
	ram:4fc8 cd e1 51       call sub_51e1h       	;. . Q
	ram:4fcb 18 c0          jr l4f8dh            	;. .
l4fcdh:
	ram:4fcd cd aa 51       call sub_51aah       	;. . Q
	ld a,(ix-015h)		;4fd0	dd 7e eb	. ~ .
	cp (ix-016h)		;4fd3	dd be ea	. . .
	ram:4fd6 20 94          jr nz,l4f6ch         	;.
l4fd8h:
	ram:4fd8 97             sub a                	;.
	ram:4fd9 18 91          jr l4f6ch            	;. .
l4fdbh:
	ram:4fdb cd 93 51       call sub_5193h       	;. . Q
	ram:4fde fe 04          cp 004h              	;. .
	ram:4fe0 20 69          jr nz,l504bh         	;i
	ram:4fe2 cd d1 39       call 039d1h          	;. . 9
	ram:4fe5 38 10          jr c,l4ff7h          	;8 .
	ram:4fe7 11 8e 80       ld de,0808eh         	;. . .
	ram:4fea 21 f6 1e       ld hl,01ef6h         	;! . .
	ram:4fed 06 09          ld b,009h            	;. .
l4fefh:
	ram:4fef 1a             ld a,(de)            	;.
	ram:4ff0 be             cp (hl)              	;.
	ram:4ff1 20 09          jr nz,l4ffch         	;.
	ram:4ff3 13             inc de               	;.
	ram:4ff4 23             inc hl               	;#
	ram:4ff5 10 f8          djnz l4fefh          	;. .
l4ff7h:
	ram:4ff7 cd aa 51       call sub_51aah       	;. . Q
	ram:4ffa 18 dc          jr l4fd8h            	;. .
l4ffch:
	ram:4ffc 97             sub a                	;.
	ram:4ffd cd c1 51       call sub_51c1h       	;. . Q
	ram:5000 2e dc          ld l,0dch            	;. .
	ram:5002 cd ba 51       call sub_51bah       	;. . Q
	ram:5005 11 82 80       ld de,08082h         	;. . .
	ram:5008 cd a6 51       call sub_51a6h       	;. . Q
	ram:500b cd 95 20       call 02095h          	;. .  
	ram:500e 3e 15          ld a,015h            	;> .
	ram:5010 cd 22 52       call sub_5222h       	;. " R
	ram:5013 cd b8 51       call sub_51b8h       	;. . Q
	ram:5016 eb             ex de,hl             	;.
	ram:5017 21 98 80       ld hl,08098h         	;! . .
	ram:501a cd 42 30       call 03042h          	;. B 0
	ram:501d 2e dc          ld l,0dch            	;. .
	ram:501f cd ba 51       call sub_51bah       	;. . Q
	ram:5022 e7             rst 20h              	;.
	ram:5023 3e 15          ld a,015h            	;> .
	ram:5025 cd 22 52       call sub_5222h       	;. " R
	ram:5028 cd d4 51       call sub_51d4h       	;. . Q
	ram:502b 21 98 80       ld hl,08098h         	;! . .
	ram:502e 09             add hl,bc            	;.
	ram:502f 36 2f          ld (hl),02fh         	;6 /
	ram:5031 23             inc hl               	;#
	ram:5032 36 00          ld (hl),000h         	;6 .
	ram:5034 cd b8 51       call sub_51b8h       	;. . Q
	ram:5037 11 98 80       ld de,08098h         	;. . .
	ram:503a cd 4a 30       call 0304ah          	;. J 0
	ram:503d cd aa 51       call sub_51aah       	;. . Q
	ram:5040 21 98 80       ld hl,08098h         	;! . .
	ram:5043 cd 2f 30       call 0302fh          	;. / 0
	ram:5046 dd f9          ld sp,ix             	;. .
	ram:5048 dd e1          pop ix               	;. .
	ram:504a c9             ret                  	;.
l504bh:
	ram:504b cd 73 25       call 02573h          	;. s %
	ram:504e cf             rst 8                	;.
	ram:504f cd c3 0f       call 00fc3h          	;. . .
	ram:5052 cd f5 1f       call 01ff5h          	;. . .
	ram:5055 cd 61 0d       call 00d61h          	;. a .
	ram:5058 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:505c 21 fa 03       ld hl,003fah         	;! . .
	ram:505f 19             add hl,de            	;.
	ram:5060 da 8c 51       jp c,l518ch          	;. . Q
	ram:5063 3e 0c          ld a,00ch            	;> .
	ram:5065 93             sub e                	;.
	ram:5066 f5             push af              	;.
	ram:5067 2e dc          ld l,0dch            	;. .
	ram:5069 cd ba 51       call sub_51bah       	;. . Q
	ram:506c 11 82 80       ld de,08082h         	;. . .
	ram:506f cd a6 51       call sub_51a6h       	;. . Q
	ram:5072 cd 56 20       call 02056h          	;. V  
	ram:5075 cd 05 36       call 03605h          	;. . 6
	ram:5078 ef             rst 28h              	;.
	ram:5079 cf             rst 8                	;.
	ram:507a cd c3 0f       call 00fc3h          	;. . .
	ram:507d cd f5 1f       call 01ff5h          	;. . .
	ram:5080 cd 61 0d       call 00d61h          	;. a .
	ram:5083 e1             pop hl               	;.
	ram:5084 25             dec h                	;%
	ram:5085 25             dec h                	;%
	ram:5086 3a 83 80       ld a,(08083h)        	;: . .
	ram:5089 b7             or a                 	;.
	ram:508a 3a 85 80       ld a,(08085h)        	;: . .
	ram:508d 20 04          jr nz,l5093h         	;.
	ram:508f cd bf 21       call 021bfh          	;. . !
	ram:5092 24             inc h                	;$
l5093h:
	ram:5093 e5             push hl              	;.
	ld (ix-031h),a		;5094	dd 77 cf	. w .
	ram:5097 cd 56 20       call 02056h          	;. V  
	ram:509a cd 05 36       call 03605h          	;. . 6
	ram:509d ef             rst 28h              	;.
	ram:509e 3e ff          ld a,0ffh            	;> .
	ram:50a0 cd c1 51       call sub_51c1h       	;. . Q
	ram:50a3 2a 83 80       ld hl,(08083h)       	;* . .
	ram:50a6 3e fc          ld a,0fch            	;> .
	ram:50a8 bc             cp h                 	;.
	ram:50a9 28 24          jr z,l50cfh          	;( $
	ram:50ab 01 04 04       ld bc,00404h         	;. . .
	ram:50ae 09             add hl,bc            	;.
	ram:50af 30 1b          jr nc,l50cch         	;0 .
	ram:50b1 7d             ld a,l               	;}
	ram:50b2 b4             or h                 	;.
	ram:50b3 20 13          jr nz,l50c8h         	;.
	ram:50b5 3a 85 80       ld a,(08085h)        	;: . .
	ram:50b8 c6 50          add a,050h           	;. P
	ram:50ba 27             daa                  	;'
	ram:50bb 30 0f          jr nc,l50cch         	;0 .
	ram:50bd 21 10 00       ld hl,00010h         	;! . .
	ram:50c0 22 85 80       ld (08085h),hl       	;" . .
	ram:50c3 3e fd          ld a,0fdh            	;> .
	ram:50c5 32 83 80       ld (08083h),a        	;2 . .
l50c8h:
	ram:50c8 3e 04          ld a,004h            	;> .
	ram:50ca 18 08          jr l50d4h            	;. .
l50cch:
	ram:50cc cd 98 21       call 02198h          	;. . !
l50cfh:
	ram:50cf 3a 83 80       ld a,(08083h)        	;: . .
	ram:50d2 c6 05          add a,005h           	;. .
l50d4h:
	ram:50d4 d1             pop de               	;.
	ram:50d5 ba             cp d                 	;.
	ram:50d6 38 01          jr c,l50d9h          	;8 .
	ram:50d8 7a             ld a,d               	;z
l50d9h:
	ram:50d9 cd 22 52       call sub_5222h       	;. " R
	ram:50dc 2a 98 80       ld hl,(08098h)       	;* . .
	ram:50df 11 36 30       ld de,03036h         	;. 6 0
	ram:50e2 b7             or a                 	;.
	ram:50e3 ed 52          sbc hl,de            	;. R
	ld a,(ix-031h)		;50e5	dd 7e cf	. ~ .
	ram:50e8 20 0b          jr nz,l50f5h         	;.
	ram:50ea 21 98 80       ld hl,08098h         	;! . .
	ram:50ed 36 30          ld (hl),030h         	;6 0
	ram:50ef 01 01 00       ld bc,00001h         	;. . .
	ram:50f2 c6 01          add a,001h           	;. .
	ram:50f4 27             daa                  	;'
l50f5h:
	ram:50f5 21 98 80       ld hl,08098h         	;! . .
	ram:50f8 09             add hl,bc            	;.
	ram:50f9 36 22          ld (hl),022h         	;6 "
	ram:50fb 23             inc hl               	;#
	ram:50fc 36 00          ld (hl),000h         	;6 .
	ram:50fe fe 60          cp 060h              	;. `
	ram:5100 f5             push af              	;.
	ram:5101 20 01          jr nz,l5104h         	;.
	ram:5103 af             xor a                	;.
l5104h:
	ram:5104 21 8d 80       ld hl,0808dh         	;! . .
	ram:5107 fe 10          cp 010h              	;. .
	ram:5109 38 09          jr c,l5114h          	;8 .
	ram:510b f5             push af              	;.
	ram:510c cd bf 21       call 021bfh          	;. . !
	ram:510f c6 30          add a,030h           	;. 0
	ram:5111 77             ld (hl),a            	;w
	ram:5112 23             inc hl               	;#
	ram:5113 f1             pop af               	;.
l5114h:
	ram:5114 e6 0f          and 00fh             	;. .
	ram:5116 c6 30          add a,030h           	;. 0
	ram:5118 77             ld (hl),a            	;w
	ram:5119 23             inc hl               	;#
	ram:511a 36 27          ld (hl),027h         	;6 '
	ram:511c 3a 98 80       ld a,(08098h)        	;: . .
	ram:511f fe 2e          cp 02eh              	;. .
	ram:5121 20 04          jr nz,l5127h         	;.
	ram:5123 23             inc hl               	;#
	ram:5124 3e 30          ld a,030h            	;> 0
	ram:5126 77             ld (hl),a            	;w
l5127h:
	ram:5127 23             inc hl               	;#
	ram:5128 eb             ex de,hl             	;.
	ram:5129 21 98 80       ld hl,08098h         	;! . .
	ram:512c cd 42 30       call 03042h          	;. B 0
	ram:512f 2e dc          ld l,0dch            	;. .
	ram:5131 cd ba 51       call sub_51bah       	;. . Q
	ram:5134 e5             push hl              	;.
	ram:5135 e7             rst 20h              	;.
	ram:5136 d1             pop de               	;.
	ram:5137 21 8d 80       ld hl,0808dh         	;! . .
	ram:513a cd 42 30       call 03042h          	;. B 0
	ram:513d f1             pop af               	;.
	ram:513e 20 0a          jr nz,l514ah         	;.
	ram:5140 cd 69 0d       call 00d69h          	;. i .
	ram:5143 3a 83 80       ld a,(08083h)        	;: . .
	ram:5146 fe 08          cp 008h              	;. .
	ram:5148 28 3f          jr z,l5189h          	;( ?
l514ah:
	ram:514a 3e 08          ld a,008h            	;> .
	ram:514c cd 22 52       call sub_5222h       	;. " R
	ram:514f 21 98 80       ld hl,08098h         	;! . .
	ram:5152 09             add hl,bc            	;.
	ram:5153 36 14          ld (hl),014h         	;6 .
	ram:5155 23             inc hl               	;#
	ram:5156 36 00          ld (hl),000h         	;6 .
	ram:5158 2e dc          ld l,0dch            	;. .
	ram:515a cd ba 51       call sub_51bah       	;. . Q
	ram:515d 11 98 80       ld de,08098h         	;. . .
	ram:5160 cd 4a 30       call 0304ah          	;. J 0
	ram:5163 cd aa 51       call sub_51aah       	;. . Q
	ram:5166 cd 68 25       call 02568h          	;. h %
	ram:5169 28 10          jr z,l517bh          	;( .
	ram:516b 21 ab 80       ld hl,080abh         	;! . .
	ram:516e 11 ac 80       ld de,080ach         	;. . .
	ram:5171 01 14 00       ld bc,00014h         	;. . .
	ram:5174 ed b8          lddr                 	;. .
	ram:5176 3e 1a          ld a,01ah            	;> .
	ram:5178 32 98 80       ld (08098h),a        	;2 . .
l517bh:
	ram:517b cd d4 51       call sub_51d4h       	;. . Q
	ram:517e 21 98 80       ld hl,08098h         	;! . .
	ram:5181 cd 2f 30       call 0302fh          	;. / 0
	ram:5184 dd f9          ld sp,ix             	;. .
	ram:5186 dd e1          pop ix               	;. .
	ram:5188 c9             ret                  	;.
l5189h:
	ram:5189 cd d4 51       call sub_51d4h       	;. . Q
l518ch:
	ram:518c cd aa 51       call sub_51aah       	;. . Q
	ram:518f 97             sub a                	;.
	ram:5190 c3 6c 4f       jp l4f6ch            	;. l O
sub_5193h:
	ram:5193 2e f6          ld l,0f6h            	;. .
	ram:5195 cd ba 51       call sub_51bah       	;. . Q
	ram:5198 11 82 80       ld de,08082h         	;. . .
	ram:519b cd a6 51       call sub_51a6h       	;. . Q
	ram:519e 2e ec          ld l,0ech            	;. .
	ram:51a0 cd ba 51       call sub_51bah       	;. . Q
	ram:51a3 11 8d 80       ld de,0808dh         	;. . .
sub_51a6h:
	ram:51a6 eb             ex de,hl             	;.
	ram:51a7 c3 9d 20       jp 0209dh            	;. .  
sub_51aah:
	ram:51aa 2e f6          ld l,0f6h            	;. .
	ram:51ac cd ba 51       call sub_51bah       	;. . Q
	ram:51af e7             rst 20h              	;.
sub_51b0h:
	ram:51b0 2e ec          ld l,0ech            	;. .
	ram:51b2 cd ba 51       call sub_51bah       	;. . Q
	ram:51b5 c3 0b 21       jp 0210bh            	;. . !
sub_51b8h:
	ram:51b8 2e cf          ld l,0cfh            	;. .
sub_51bah:
	ram:51ba dd e5          push ix              	;. .
	ram:51bc d1             pop de               	;.
	ram:51bd 26 ff          ld h,0ffh            	;& .
	ram:51bf 19             add hl,de            	;.
	ram:51c0 c9             ret                  	;.
sub_51c1h:
	ram:51c1 21 3a 8b       ld hl,08b3ah         	;! : .
	ram:51c4 46             ld b,(hl)            	;F
	ld (ix-032h),b		;51c5	dd 70 ce	. p .
	ram:51c8 77             ld (hl),a            	;w
	ram:51c9 3a 50 83       ld a,(08350h)        	;: P .
	ld (ix-033h),a		;51cc	dd 77 cd	. w .
	ram:51cf fd 36 0a 00    ld (iy+00ah),000h    	;. 6 . .
	ram:51d3 c9             ret                  	;.
sub_51d4h:
	ld a,(ix-032h)		;51d4	dd 7e ce	. ~ .
	ram:51d7 32 3a 8b       ld (08b3ah),a        	;2 : .
	ld a,(ix-033h)		;51da	dd 7e cd	. ~ .
	ram:51dd 32 50 83       ld (08350h),a        	;2 P .
	ram:51e0 c9             ret                  	;.
sub_51e1h:
	ram:51e1 11 98 80       ld de,08098h         	;. . .
	ram:51e4 06 08          ld b,008h            	;. .
	ram:51e6 21 85 80       ld hl,08085h         	;! . .
	ram:51e9 cb 81          res 0,c              	;. .
l51ebh:
	ram:51eb 7e             ld a,(hl)            	;~
	ram:51ec 07             rlca                 	;.
	ram:51ed 07             rlca                 	;.
	ram:51ee 07             rlca                 	;.
	ram:51ef 07             rlca                 	;.
	ram:51f0 e6 0f          and 00fh             	;. .
	ram:51f2 cd 12 52       call sub_5212h       	;. . R
	ram:51f5 7e             ld a,(hl)            	;~
	ram:51f6 e6 0f          and 00fh             	;. .
	ram:51f8 cd 12 52       call sub_5212h       	;. . R
	ram:51fb 23             inc hl               	;#
	ram:51fc 10 ed          djnz l51ebh          	;. .
	ram:51fe cb 41          bit 0,c              	;. A
	ram:5200 20 04          jr nz,l5206h         	;.
	ram:5202 3e 30          ld a,030h            	;> 0
	ram:5204 12             ld (de),a            	;.
	ram:5205 13             inc de               	;.
l5206h:
	ram:5206 21 98 80       ld hl,08098h         	;! . .
	ram:5209 eb             ex de,hl             	;.
	ram:520a 36 00          ld (hl),000h         	;6 .
	ram:520c b7             or a                 	;.
	ram:520d ed 52          sbc hl,de            	;. R
	ram:520f 4d             ld c,l               	;M
	ram:5210 44             ld b,h               	;D
	ram:5211 c9             ret                  	;.
sub_5212h:
	ram:5212 20 03          jr nz,l5217h         	;.
	ram:5214 cb 41          bit 0,c              	;. A
	ram:5216 c8             ret z                	;.
l5217h:
	ram:5217 fe 0a          cp 00ah              	;. .
	ram:5219 30 02          jr nc,l521dh         	;0 .
	ram:521b c6 30          add a,030h           	;. 0
l521dh:
	ram:521d 12             ld (de),a            	;.
	ram:521e 13             inc de               	;.
	ram:521f cb c1          set 0,c              	;. .
	ram:5221 c9             ret                  	;.
sub_5222h:
	ram:5222 dd e5          push ix              	;. .
	ram:5224 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:5228 dd 39          add ix,sp            	;. 9
	ram:522a e5             push hl              	;.
	ram:522b e5             push hl              	;.
	ram:522c 3b             dec sp               	;;
	ram:522d fd cb 0c 8e    res 1,(iy+00ch)      	;. . . .
	ld (ix-003h),a		;5231	dd 77 fd	. w .
	ld (ix-002h),a		;5234	dd 77 fe	. w .
	ram:5237 97             sub a                	;.
	ram:5238 32 8c 80       ld (0808ch),a        	;2 . .
	ram:523b cd d1 23       call 023d1h          	;. . #
	ram:523e 20 0c          jr nz,l524ch         	;.
	ram:5240 11 82 80       ld de,08082h         	;. . .
	ram:5243 1a             ld a,(de)            	;.
	ram:5244 e6 1f          and 01fh             	;. .
	ram:5246 47             ld b,a               	;G
	ram:5247 cd 98 21       call 02198h          	;. . !
	ram:524a 78             ld a,b               	;x
	ram:524b 12             ld (de),a            	;.
l524ch:
	ram:524c cd 8d 20       call 0208dh          	;. .  
l524fh:
	ram:524f 97             sub a                	;.
	ram:5250 fd cb 0c 46    bit 0,(iy+00ch)      	;. . . F
	ram:5254 20 03          jr nz,l5259h         	;.
	ram:5256 3a 50 83       ld a,(08350h)        	;: P .
l5259h:
	ld (ix-001h),a		;5259	dd 77 ff	. w .
	ram:525c 3a 82 80       ld a,(08082h)        	;: . .
	ram:525f b7             or a                 	;.
	ram:5260 f2 66 52       jp p,l5266h          	;. f R
	dec (ix-003h)		;5263	dd 35 fd	. 5 .
l5266h:
	bit 0,(ix-001h)		;5266	dd cb ff 46	. . . F
	ram:526a 20 28          jr nz,l5294h         	;(
	ram:526c 2a 83 80       ld hl,(08083h)       	;* . .
	ram:526f cb 54          bit 2,h              	;. T
	ram:5271 c2 12 53       jp nz,l5312h         	;. . S
	ram:5274 11 fd fb       ld de,0fbfdh         	;. . .
	ram:5277 cd 8e 00       call 0008eh          	;. . .
	ram:527a 38 14          jr c,l5290h          	;8 .
	ram:527c 13             inc de               	;.
	ram:527d 13             inc de               	;.
l527eh:
	ram:527e cd 8e 00       call 0008eh          	;. . .
	ram:5281 ca 12 53       jp z,l5312h          	;. . S
	ram:5284 cd e0 21       call 021e0h          	;. . !
	ram:5287 2a 83 80       ld hl,(08083h)       	;* . .
	ram:528a 23             inc hl               	;#
	ram:528b 22 83 80       ld (08083h),hl       	;" . .
	ram:528e 18 ee          jr l527eh            	;. .
l5290h:
	set 0,(ix-001h)		;5290	dd cb ff c6	. . . .
l5294h:
	bit 1,(ix-001h)		;5294	dd cb ff 4e	. . . N
	ram:5298 28 30          jr z,l52cah          	;( 0
	ram:529a 2a 83 80       ld hl,(08083h)       	;* . .
	ram:529d 3e 03          ld a,003h            	;> .
	ram:529f cd 9c 00       call 0009ch          	;. . .
	ram:52a2 2a 83 80       ld hl,(08083h)       	;* . .
	ram:52a5 5f             ld e,a               	;_
	ram:52a6 16 00          ld d,000h            	;. .
	ram:52a8 b7             or a                 	;.
	ram:52a9 ed 52          sbc hl,de            	;. R
	ram:52ab 16 fc          ld d,0fch            	;. .
	ram:52ad ed 53 83 80    ld (08083h),de       	;. S . .
	ram:52b1 18 21          jr l52d4h            	;. !
l52b3h:
	ld a,(ix-002h)		;52b3	dd 7e fe	. ~ .
	ld (ix-003h),a		;52b6	dd 77 fd	. w .
	ram:52b9 fd cb 0c 46    bit 0,(iy+00ch)      	;. . . F
	ram:52bd 20 07          jr nz,l52c6h         	;.
	ram:52bf fd cb 0a 4e    bit 1,(iy+00ah)      	;. . . N
	ram:52c3 c4 5b 20       call nz,0205bh       	;. [  
l52c6h:
	ram:52c6 3e 01          ld a,001h            	;> .
	ram:52c8 18 8f          jr l5259h            	;. .
l52cah:
	ram:52ca 2a 83 80       ld hl,(08083h)       	;* . .
	ram:52cd 11 00 fc       ld de,0fc00h         	;. . .
	ram:52d0 ed 53 83 80    ld (08083h),de       	;. S . .
l52d4h:
	dec (ix-003h)		;52d4	dd 35 fd	. 5 .
	ram:52d7 97             sub a                	;.
	ram:52d8 11 00 04       ld de,00400h         	;. . .
	ram:52db 19             add hl,de            	;.
	ram:52dc 38 0b          jr c,l52e9h          	;8 .
	ram:52de 3e 1a          ld a,01ah            	;> .
	ram:52e0 eb             ex de,hl             	;.
	ram:52e1 21 00 00       ld hl,00000h         	;! . .
	ram:52e4 ed 52          sbc hl,de            	;. R
	dec (ix-003h)		;52e6	dd 35 fd	. 5 .
l52e9h:
	ld (ix-004h),a		;52e9	dd 77 fc	. w .
	ram:52ec 97             sub a                	;.
	ram:52ed f5             push af              	;.
l52eeh:
	ram:52ee cd 9a 00       call 0009ah          	;. . .
	ram:52f1 c6 30          add a,030h           	;. 0
	ram:52f3 f5             push af              	;.
	dec (ix-003h)		;52f4	dd 35 fd	. 5 .
	ram:52f7 fa 08 0a       jp m,00a08h          	;. . .
	ram:52fa 7d             ld a,l               	;}
	ram:52fb b4             or h                 	;.
	ram:52fc 20 f0          jr nz,l52eeh         	;.
	ram:52fe 21 b9 80       ld hl,080b9h         	;! . .
	ram:5301 36 1b          ld (hl),01bh         	;6 .
	ram:5303 23             inc hl               	;#
	ld a,(ix-004h)		;5304	dd 7e fc	. ~ .
	ram:5307 b7             or a                 	;.
	ram:5308 28 02          jr z,l530ch          	;( .
	ram:530a 77             ld (hl),a            	;w
	ram:530b 23             inc hl               	;#
l530ch:
	ram:530c f1             pop af               	;.
	ram:530d 77             ld (hl),a            	;w
	ram:530e 23             inc hl               	;#
	ram:530f b7             or a                 	;.
	ram:5310 20 fa          jr nz,l530ch         	;.
l5312h:
	ram:5312 2a 83 80       ld hl,(08083h)       	;* . .
	ram:5315 11 01 04       ld de,00401h         	;. . .
	ram:5318 19             add hl,de            	;.
	ld (ix-005h),l		;5319	dd 75 fb	. u .
	ram:531c fd cb 0c 46    bit 0,(iy+00ch)      	;. . . F
	ram:5320 28 18          jr z,l533ah          	;( .
	ram:5322 11 0f 00       ld de,0000fh         	;. . .
	ram:5325 cd 8e 00       call 0008eh          	;. . .
	ram:5328 30 89          jr nc,l52b3h         	;0 .
	ram:532a 7d             ld a,l               	;}
	cp (ix-003h)		;532b	dd be fd	. . .
	ram:532e 28 7c          jr z,l53ach          	;( |
	ram:5330 d2 b3 52       jp nc,l52b3h         	;. . R
	dec (ix-003h)		;5333	dd 35 fd	. 5 .
	ram:5336 2e 10          ld l,010h            	;. .
	ram:5338 18 2a          jr l5364h            	;. *
l533ah:
	ram:533a 11 0d 00       ld de,0000dh         	;. . .
	ram:533d cd 8e 00       call 0008eh          	;. . .
	ram:5340 d2 b3 52       jp nc,l52b3h         	;. . R
	ram:5343 7d             ld a,l               	;}
	cp (ix-003h)		;5344	dd be fd	. . .
	ram:5347 28 10          jr z,l5359h          	;( .
	ram:5349 d2 b3 52       jp nc,l52b3h         	;. . R
	dec (ix-003h)		;534c	dd 35 fd	. 5 .
	ram:534f 3e 0c          ld a,00ch            	;> .
	cp (ix-003h)		;5351	dd be fd	. . .
	ram:5354 30 03          jr nc,l5359h         	;0 .
	ld (ix-003h),a		;5356	dd 77 fd	. w .
l5359h:
	ram:5359 3a 3a 8b       ld a,(08b3ah)        	;: : .
	ram:535c b7             or a                 	;.
	ram:535d fa 73 53       jp m,l5373h          	;. s S
	add a,(ix-005h)		;5360	dd 86 fb	. . .
	ram:5363 6f             ld l,a               	;o
l5364h:
	ld a,(ix-003h)		;5364	dd 7e fd	. ~ .
	ram:5367 bd             cp l                 	;.
	ram:5368 38 09          jr c,l5373h          	;8 .
	ld (ix-003h),l		;536a	dd 75 fd	. u .
	ram:536d fd cb 0c 46    bit 0,(iy+00ch)      	;. . . F
	ram:5371 20 39          jr nz,l53ach         	;9
l5373h:
	ram:5373 3e 05          ld a,005h            	;> .
	ld c,(ix-003h)		;5375	dd 4e fd	. N .
l5378h:
	ram:5378 cb 29          sra c                	;. )
	ram:537a 38 02          jr c,l537eh          	;8 .
	ram:537c 3e 50          ld a,050h            	;> P
l537eh:
	ram:537e 21 85 80       ld hl,08085h         	;! . .
	ram:5381 06 00          ld b,000h            	;. .
	ram:5383 09             add hl,bc            	;.
	ram:5384 41             ld b,c               	;A
	ram:5385 04             inc b                	;.
	ram:5386 cd 8a 22       call 0228ah          	;. . "
	ram:5389 30 21          jr nc,l53ach         	;0 !
	ram:538b cd d7 20       call 020d7h          	;. .  
	ram:538e 2a af 80       ld hl,(080afh)       	;* . .
	ram:5391 11 e7 ff       ld de,0ffe7h         	;. . .
	ram:5394 cd 8e 00       call 0008eh          	;. . .
	ram:5397 28 13          jr z,l53ach          	;( .
	ram:5399 23             inc hl               	;#
	ram:539a 22 83 80       ld (08083h),hl       	;" . .
	ram:539d 21 85 80       ld hl,08085h         	;! . .
	ram:53a0 cd 62 21       call 02162h          	;. b !
	ld a,(ix-002h)		;53a3	dd 7e fe	. ~ .
	ld (ix-003h),a		;53a6	dd 77 fd	. w .
	ram:53a9 c3 4f 52       jp l524fh            	;. O R
l53ach:
	ld c,(ix-005h)		;53ac	dd 4e fb	. N .
	ram:53af 21 85 80       ld hl,08085h         	;! . .
	ram:53b2 11 98 80       ld de,08098h         	;. . .
	ram:53b5 3a ae 80       ld a,(080aeh)        	;: . .
	ram:53b8 b7             or a                 	;.
	ram:53b9 f2 c0 53       jp p,l53c0h          	;. . S
	ram:53bc 3e 1a          ld a,01ah            	;> .
	ram:53be 12             ld (de),a            	;.
	ram:53bf 13             inc de               	;.
l53c0h:
	ld a,(ix-003h)		;53c0	dd 7e fd	. ~ .
	ram:53c3 b7             or a                 	;.
	ram:53c4 20 05          jr nz,l53cbh         	;.
	ram:53c6 cd 27 54       call sub_5427h       	;. ' T
	ram:53c9 18 21          jr l53ech            	;. !
l53cbh:
	ram:53cb cd 16 54       call sub_5416h       	;. . T
	ram:53ce 7e             ld a,(hl)            	;~
	ram:53cf 1f             rra                  	;.
	ram:53d0 1f             rra                  	;.
	ram:53d1 1f             rra                  	;.
	ram:53d2 1f             rra                  	;.
	ram:53d3 e6 0f          and 00fh             	;. .
	ram:53d5 cd 27 54       call sub_5427h       	;. ' T
	dec (ix-003h)		;53d8	dd 35 fd	. 5 .
	ram:53db 28 0f          jr z,l53ech          	;( .
	ram:53dd cd 16 54       call sub_5416h       	;. . T
	ram:53e0 7e             ld a,(hl)            	;~
	ram:53e1 23             inc hl               	;#
	ram:53e2 e6 0f          and 00fh             	;. .
	ram:53e4 cd 27 54       call sub_5427h       	;. ' T
	dec (ix-003h)		;53e7	dd 35 fd	. 5 .
	ram:53ea 20 df          jr nz,l53cbh         	;.
l53ech:
	ram:53ec ed 5b c1 80    ld de,(080c1h)       	;. [ . .
	bit 0,(ix-001h)		;53f0	dd cb ff 46	. . . F
	ram:53f4 28 0c          jr z,l5402h          	;( .
	ram:53f6 21 b9 80       ld hl,080b9h         	;! . .
l53f9h:
	ram:53f9 7e             ld a,(hl)            	;~
	ram:53fa 23             inc hl               	;#
	ram:53fb b7             or a                 	;.
	ram:53fc 28 04          jr z,l5402h          	;( .
	ram:53fe 12             ld (de),a            	;.
	ram:53ff 13             inc de               	;.
	ram:5400 18 f7          jr l53f9h            	;. .
l5402h:
	ram:5402 97             sub a                	;.
	ram:5403 12             ld (de),a            	;.
	ram:5404 eb             ex de,hl             	;.
	ram:5405 11 98 80       ld de,08098h         	;. . .
	ram:5408 ed 52          sbc hl,de            	;. R
	ram:540a 4d             ld c,l               	;M
	ram:540b 44             ld b,h               	;D
	ram:540c c5             push bc              	;.
	ram:540d cd 5b 20       call 0205bh          	;. [  
	ram:5410 c1             pop bc               	;.
	ram:5411 dd f9          ld sp,ix             	;. .
	ram:5413 dd e1          pop ix               	;. .
	ram:5415 c9             ret                  	;.
sub_5416h:
	ram:5416 79             ld a,c               	;y
	ram:5417 0d             dec c                	;.
	ram:5418 b7             or a                 	;.
	ram:5419 c0             ret nz               	;.
	ram:541a 3e 2e          ld a,02eh            	;> .
	ram:541c 12             ld (de),a            	;.
	ram:541d ed 53 c1 80    ld (080c1h),de       	;. S . .
	ram:5421 13             inc de               	;.
	ram:5422 fd cb 0c ce    set 1,(iy+00ch)      	;. . . .
	ram:5426 c9             ret                  	;.
sub_5427h:
	ram:5427 fe 0a          cp 00ah              	;. .
	ram:5429 30 02          jr nc,l542dh         	;0 .
	ram:542b c6 30          add a,030h           	;. 0
l542dh:
	ram:542d 12             ld (de),a            	;.
	ram:542e 13             inc de               	;.
	ram:542f fd cb 0c 4e    bit 1,(iy+00ch)      	;. . . N
	ram:5433 28 0f          jr z,l5444h          	;( .
	ram:5435 fe 30          cp 030h              	;. 0
	ram:5437 20 0b          jr nz,l5444h         	;.
	ram:5439 fd cb 0c 46    bit 0,(iy+00ch)      	;. . . F
	ram:543d c0             ret nz               	;.
	ram:543e 3a 3a 8b       ld a,(08b3ah)        	;: : .
	ram:5441 fe ff          cp 0ffh              	;. .
	ram:5443 c8             ret z                	;.
l5444h:
	ram:5444 ed 53 c1 80    ld (080c1h),de       	;. S . .
	ram:5448 c9             ret                  	;.
sub_5449h:
	ram:5449 78             ld a,b               	;x
	ram:544a e6 1c          and 01ch             	;. .
	ram:544c 0f             rrca                 	;.
	ram:544d 0f             rrca                 	;.
	ram:544e 5f             ld e,a               	;_
	ram:544f 16 00          ld d,000h            	;. .
	ram:5451 21 58 54       ld hl,l5458h         	;! X T
	ram:5454 19             add hl,de            	;.
	ram:5455 7e             ld a,(hl)            	;~
	ram:5456 b7             or a                 	;.
	ram:5457 c9             ret                  	;.
l5458h:
	ram:5458 00             nop                  	;.
	ram:5459 01 02 04       ld bc,00402h         	;. . .
	ram:545c 03             inc bc               	;.
	ram:545d 00             nop                  	;.
	ram:545e 00             nop                  	;.
	ram:545f 05             dec b                	;.
sub_5460h:
	ram:5460 dd e5          push ix              	;. .
	ram:5462 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:5466 dd 39          add ix,sp            	;. 9
	ram:5468 3b             dec sp               	;;
	ld (ix-001h),02ch	;5469	dd 36 ff 2c	. 6 . ,
	ram:546d fd cb 0b 6e    bit 5,(iy+00bh)      	;. . . n
	ram:5471 28 1d          jr z,l5490h          	;( .
	ram:5473 21 82 80       ld hl,08082h         	;! . .
	ram:5476 11 7c 8b       ld de,08b7ch         	;. | .
	ram:5479 cd 9d 20       call 0209dh          	;. .  
	ram:547c 23             inc hl               	;#
	ram:547d cd 9d 20       call 0209dh          	;. .  
	ram:5480 21 ce 54       ld hl,l54ceh         	;! . T
	ram:5483 cd b5 0a       call 00ab5h          	;. . .
	ram:5486 cd e3 5b       call sub_5be3h       	;. . [
	ram:5489 cd db 0a       call 00adbh          	;. . .
	ld (ix-001h),013h	;548c	dd 36 ff 13	. 6 . .
l5490h:
	ram:5490 21 28 00       ld hl,00028h         	;! ( .
	ram:5493 22 3b 8b       ld (08b3bh),hl       	;" ; .
	ram:5496 3e 15          ld a,015h            	;> .
	ram:5498 cd 46 4f       call sub_4f46h       	;. F O
	ram:549b 21 98 80       ld hl,08098h         	;! . .
	ram:549e 11 3b 8b       ld de,08b3bh         	;. ; .
	ram:54a1 cd 4a 30       call 0304ah          	;. J 0
	ld a,(ix-001h)		;54a4	dd 7e ff	. ~ .
	ram:54a7 cd 06 58       call sub_5806h       	;. . X
	ram:54aa cd ba 23       call 023bah          	;. . #
	ram:54ad 3e 15          ld a,015h            	;> .
	ram:54af cd 46 4f       call sub_4f46h       	;. F O
	ram:54b2 cd ba 23       call 023bah          	;. . #
	ram:54b5 21 98 80       ld hl,08098h         	;! . .
	ram:54b8 11 3b 8b       ld de,08b3bh         	;. ; .
	ram:54bb cd 4a 30       call 0304ah          	;. J 0
	ram:54be 3e 29          ld a,029h            	;> )
	ram:54c0 cd 06 58       call sub_5806h       	;. . X
	ram:54c3 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:54c6 cd 2f 30       call 0302fh          	;. / 0
	ram:54c9 dd f9          ld sp,ix             	;. .
	ram:54cb dd e1          pop ix               	;. .
	ram:54cd c9             ret                  	;.
l54ceh:
	ram:54ce 21 7c 8b       ld hl,08b7ch         	;! | .
	ram:54d1 cd 0a 21       call 0210ah          	;. . !
	ram:54d4 18 ba          jr l5490h            	;. .
sub_54d6h:
	ram:54d6 dd e5          push ix              	;. .
	ram:54d8 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:54dc dd 39          add ix,sp            	;. 9
	ram:54de e5             push hl              	;.
	ram:54df e5             push hl              	;.
	ram:54e0 3b             dec sp               	;;
	ram:54e1 d7             rst 10h              	;.
	ram:54e2 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:54e6 13             inc de               	;.
	ram:54e7 1a             ld a,(de)            	;.
	ld (ix-005h),a		;54e8	dd 77 fb	. w .
	ram:54eb fe 04          cp 004h              	;. .
	ram:54ed d2 ce 55       jp nc,l55ceh         	;. . U
	ram:54f0 fe 02          cp 002h              	;. .
	ram:54f2 da ad 55       jp c,l55adh          	;. . U
	ram:54f5 20 31          jr nz,l5528h         	;1
	ram:54f7 fd cb 0b 76    bit 6,(iy+00bh)      	;. . . v
	ram:54fb ca ad 55       jp z,l55adh          	;. . U
	ram:54fe eb             ex de,hl             	;.
	ram:54ff 23             inc hl               	;#
l5500h:
	ram:5500 cd 0a 21       call 0210ah          	;. . !
	ram:5503 21 ad 55       ld hl,l55adh         	;! . U
	ram:5506 cd b5 0a       call 00ab5h          	;. . .
	ram:5509 cd e3 5b       call sub_5be3h       	;. . [
	ram:550c cd db 0a       call 00adbh          	;. . .
	ram:550f cd f4 57       call sub_57f4h       	;. . W
	ram:5512 cd 0b 58       call sub_580bh       	;. . X
	ram:5515 3e 13          ld a,013h            	;> .
	ram:5517 cd 06 58       call sub_5806h       	;. . X
	ram:551a cd 95 20       call 02095h          	;. .  
	ram:551d cd 0b 58       call sub_580bh       	;. . X
	ram:5520 cd fb 57       call sub_57fbh       	;. . W
	ram:5523 dd f9          ld sp,ix             	;. .
	ram:5525 dd e1          pop ix               	;. .
	ram:5527 c9             ret                  	;.
l5528h:
	ram:5528 fd cb 0b 76    bit 6,(iy+00bh)      	;. . . v
	ram:552c ca ad 55       jp z,l55adh          	;. . U
	ram:552f eb             ex de,hl             	;.
	ram:5530 23             inc hl               	;#
	ram:5531 cd 0a 21       call 0210ah          	;. . !
	ram:5534 22 d2 80       ld (080d2h),hl       	;" . .
	ram:5537 21 ad 55       ld hl,l55adh         	;! . U
	ram:553a cd b5 0a       call 00ab5h          	;. . .
	ram:553d cd e3 5b       call sub_5be3h       	;. . [
	ram:5540 cd db 0a       call 00adbh          	;. . .
	ram:5543 fd cb 0b 7e    bit 7,(iy+00bh)      	;. . . ~
	ram:5547 28 3f          jr z,l5588h          	;( ?
	ram:5549 21 8d 80       ld hl,0808dh         	;! . .
	ram:554c 11 7c 8b       ld de,08b7ch         	;. | .
	ram:554f cd 9d 20       call 0209dh          	;. .  
	ram:5552 cf             rst 8                	;.
	ram:5553 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:5556 e7             rst 20h              	;.
	ram:5557 21 ad 55       ld hl,l55adh         	;! . U
	ram:555a cd b5 0a       call 00ab5h          	;. . .
	ram:555d cd e3 5b       call sub_5be3h       	;. . [
	ram:5560 cd db 0a       call 00adbh          	;. . .
	ram:5563 cd f4 57       call sub_57f4h       	;. . W
	ram:5566 cd 0b 58       call sub_580bh       	;. . X
	ram:5569 3e 13          ld a,013h            	;> .
	ram:556b cd 06 58       call sub_5806h       	;. . X
	ram:556e 21 7c 8b       ld hl,08b7ch         	;! | .
	ram:5571 e7             rst 20h              	;.
	ram:5572 cd 0b 58       call sub_580bh       	;. . X
	ram:5575 3e 13          ld a,013h            	;> .
	ram:5577 cd 06 58       call sub_5806h       	;. . X
	ram:557a cd 95 20       call 02095h          	;. .  
	ram:557d cd 0b 58       call sub_580bh       	;. . X
	ram:5580 cd fb 57       call sub_57fbh       	;. . W
	ram:5583 dd f9          ld sp,ix             	;. .
	ram:5585 dd e1          pop ix               	;. .
	ram:5587 c9             ret                  	;.
l5588h:
	ram:5588 cd f4 57       call sub_57f4h       	;. . W
	ram:558b cd 0b 58       call sub_580bh       	;. . X
	ram:558e 3e 13          ld a,013h            	;> .
	ram:5590 cd 06 58       call sub_5806h       	;. . X
	ram:5593 cd 95 20       call 02095h          	;. .  
	ram:5596 cd 0b 58       call sub_580bh       	;. . X
	ram:5599 3e 20          ld a,020h            	;>  
	ram:559b cd 06 58       call sub_5806h       	;. . X
	ram:559e 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:55a1 e7             rst 20h              	;.
	ram:55a2 cd 0b 58       call sub_580bh       	;. . X
	ram:55a5 cd fb 57       call sub_57fbh       	;. . W
	ram:55a8 dd f9          ld sp,ix             	;. .
	ram:55aa dd e1          pop ix               	;. .
	ram:55ac c9             ret                  	;.
l55adh:
	ram:55ad cd f4 57       call sub_57f4h       	;. . W
	ram:55b0 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:55b3 23             inc hl               	;#
	ram:55b4 23             inc hl               	;#
l55b5h:
	ram:55b5 e7             rst 20h              	;.
	ram:55b6 e5             push hl              	;.
	ram:55b7 cd 0b 58       call sub_580bh       	;. . X
	ram:55ba 3e 20          ld a,020h            	;>  
	ram:55bc cd 06 58       call sub_5806h       	;. . X
	ram:55bf e1             pop hl               	;.
	dec (ix-005h)		;55c0	dd 35 fb	. 5 .
	ram:55c3 20 f0          jr nz,l55b5h         	;.
	ram:55c5 1b             dec de               	;.
	ram:55c6 cd fb 57       call sub_57fbh       	;. . W
	ram:55c9 dd f9          ld sp,ix             	;. .
	ram:55cb dd e1          pop ix               	;. .
	ram:55cd c9             ret                  	;.
l55ceh:
	ram:55ce cd c8 57       call sub_57c8h       	;. . W
	ram:55d1 cd 88 58       call sub_5888h       	;. . X
	ram:55d4 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:55d7 23             inc hl               	;#
	ram:55d8 23             inc hl               	;#
l55d9h:
	ram:55d9 e7             rst 20h              	;.
	ram:55da e5             push hl              	;.
	ram:55db 3e 13          ld a,013h            	;> .
	ram:55dd cd 46 4f       call sub_4f46h       	;. F O
	ram:55e0 cd 9b 58       call sub_589bh       	;. . X
	ram:55e3 0c             inc c                	;.
	ram:55e4 cd bb 58       call sub_58bbh       	;. . X
	ram:55e7 e1             pop hl               	;.
	dec (ix-005h)		;55e8	dd 35 fb	. 5 .
	ram:55eb 20 ec          jr nz,l55d9h         	;.
	ld c,(ix-004h)		;55ed	dd 4e fc	. N .
	ld b,(ix-003h)		;55f0	dd 46 fd	. F .
	ram:55f3 0b             dec bc               	;.
	ram:55f4 dd f9          ld sp,ix             	;. .
	ram:55f6 dd e1          pop ix               	;. .
	ram:55f8 c9             ret                  	;.
sub_55f9h:
	ram:55f9 dd e5          push ix              	;. .
	ram:55fb dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:55ff dd 39          add ix,sp            	;. 9
	ram:5601 e5             push hl              	;.
	ram:5602 e5             push hl              	;.
	ram:5603 3b             dec sp               	;;
	ram:5604 d7             rst 10h              	;.
	ram:5605 eb             ex de,hl             	;.
	ram:5606 22 d0 80       ld (080d0h),hl       	;" . .
	ram:5609 23             inc hl               	;#
	ram:560a 7e             ld a,(hl)            	;~
	ld (ix-005h),a		;560b	dd 77 fb	. w .
	ram:560e cd c8 57       call sub_57c8h       	;. . W
	ram:5611 cd 88 58       call sub_5888h       	;. . X
	ram:5614 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:5617 23             inc hl               	;#
	ram:5618 23             inc hl               	;#
l5619h:
	ram:5619 cd 0a 21       call 0210ah          	;. . !
	ram:561c e5             push hl              	;.
	ram:561d cd 60 54       call sub_5460h       	;. ` T
	ram:5620 cd 9b 58       call sub_589bh       	;. . X
	ram:5623 0c             inc c                	;.
	ram:5624 cd bb 58       call sub_58bbh       	;. . X
	ram:5627 e1             pop hl               	;.
	dec (ix-005h)		;5628	dd 35 fb	. 5 .
	ram:562b 20 ec          jr nz,l5619h         	;.
	ld c,(ix-004h)		;562d	dd 4e fc	. N .
	ld b,(ix-003h)		;5630	dd 46 fd	. F .
	ram:5633 0b             dec bc               	;.
	ram:5634 dd f9          ld sp,ix             	;. .
	ram:5636 dd e1          pop ix               	;. .
	ram:5638 c9             ret                  	;.
sub_5639h:
	ram:5639 cd a5 56       call sub_56a5h       	;. . V
	ram:563c dd e5          push ix              	;. .
	ram:563e dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:5642 dd 39          add ix,sp            	;. 9
	ram:5644 3b             dec sp               	;;
	ld (ix-001h),002h	;5645	dd 36 ff 02	. 6 . .
l5649h:
	ram:5649 c5             push bc              	;.
	ram:564a e7             rst 20h              	;.
	ram:564b e5             push hl              	;.
	ram:564c 3e 13          ld a,013h            	;> .
	ram:564e cd 46 4f       call sub_4f46h       	;. F O
	ram:5651 e1             pop hl               	;.
	ram:5652 0c             inc c                	;.
	ld a,(ix-001h)		;5653	dd 7e ff	. ~ .
	ram:5656 81             add a,c              	;.
	ld (ix-001h),a		;5657	dd 77 ff	. w .
	ram:565a c1             pop bc               	;.
	ram:565b fe 16          cp 016h              	;. .
	ram:565d 30 05          jr nc,l5664h         	;0 .
	ram:565f 0b             dec bc               	;.
	ram:5660 79             ld a,c               	;y
	ram:5661 b0             or b                 	;.
	ram:5662 20 e5          jr nz,l5649h         	;.
l5664h:
	ld c,(ix-001h)		;5664	dd 4e ff	. N .
	ram:5667 06 00          ld b,000h            	;. .
	ram:5669 0d             dec c                	;.
	ram:566a dd f9          ld sp,ix             	;. .
	ram:566c dd e1          pop ix               	;. .
	ram:566e c9             ret                  	;.
sub_566fh:
	ram:566f cd a5 56       call sub_56a5h       	;. . V
	ram:5672 dd e5          push ix              	;. .
	ram:5674 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:5678 dd 39          add ix,sp            	;. 9
	ram:567a 3b             dec sp               	;;
	ld (ix-001h),002h	;567b	dd 36 ff 02	. 6 . .
l567fh:
	ram:567f c5             push bc              	;.
	ram:5680 cd 0a 21       call 0210ah          	;. . !
	ram:5683 e5             push hl              	;.
	ram:5684 cd 60 54       call sub_5460h       	;. ` T
	ram:5687 e1             pop hl               	;.
	ram:5688 0c             inc c                	;.
	ld a,(ix-001h)		;5689	dd 7e ff	. ~ .
	ram:568c 81             add a,c              	;.
	ld (ix-001h),a		;568d	dd 77 ff	. w .
	ram:5690 c1             pop bc               	;.
	ram:5691 fe 16          cp 016h              	;. .
	ram:5693 30 05          jr nc,l569ah         	;0 .
	ram:5695 0b             dec bc               	;.
	ram:5696 79             ld a,c               	;y
	ram:5697 b0             or b                 	;.
	ram:5698 20 e5          jr nz,l567fh         	;.
l569ah:
	ld c,(ix-001h)		;569a	dd 4e ff	. N .
	ram:569d 06 00          ld b,000h            	;. .
	ram:569f 0b             dec bc               	;.
	ram:56a0 dd f9          ld sp,ix             	;. .
	ram:56a2 dd e1          pop ix               	;. .
	ram:56a4 c9             ret                  	;.
sub_56a5h:
	ram:56a5 21 00 00       ld hl,00000h         	;! . .
	ram:56a8 22 90 8b       ld (08b90h),hl       	;" . .
	ram:56ab d7             rst 10h              	;.
	ram:56ac eb             ex de,hl             	;.
	ram:56ad 4e             ld c,(hl)            	;N
	ram:56ae 23             inc hl               	;#
	ram:56af 46             ld b,(hl)            	;F
	ram:56b0 23             inc hl               	;#
	ram:56b1 ed 43 92 8b    ld (08b92h),bc       	;. C . .
	ram:56b5 22 d0 80       ld (080d0h),hl       	;" . .
	ram:56b8 79             ld a,c               	;y
	ram:56b9 b0             or b                 	;.
	ram:56ba c0             ret nz               	;.
	ram:56bb 21 ff ff       ld hl,0ffffh         	;! . .
	ram:56be 22 3a 83       ld (0833ah),hl       	;" : .
	ram:56c1 c3 34 0a       jp 00a34h            	;. 4 .
sub_56c4h:
	ram:56c4 dd e5          push ix              	;. .
	ram:56c6 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:56ca dd 39          add ix,sp            	;. 9
	ram:56cc 3b             dec sp               	;;
	ram:56cd cd ce 57       call sub_57ceh       	;. . W
	ram:56d0 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:56d3 23             inc hl               	;#
	ram:56d4 7e             ld a,(hl)            	;~
	ram:56d5 23             inc hl               	;#
	ld (ix-001h),a		;56d6	dd 77 ff	. w .
l56d9h:
	ram:56d9 ed 5b 96 8b    ld de,(08b96h)       	;. [ . .
	ram:56dd 41             ld b,c               	;A
l56deh:
	ram:56de c5             push bc              	;.
	ram:56df d5             push de              	;.
	ram:56e0 e7             rst 20h              	;.
	ram:56e1 e5             push hl              	;.
	ram:56e2 3e 13          ld a,013h            	;> .
	ram:56e4 cd 46 4f       call sub_4f46h       	;. F O
	ram:56e7 e1             pop hl               	;.
	ram:56e8 d1             pop de               	;.
	ram:56e9 1a             ld a,(de)            	;.
	ram:56ea b9             cp c                 	;.
	ram:56eb 30 02          jr nc,l56efh         	;0 .
	ram:56ed 79             ld a,c               	;y
	ram:56ee 12             ld (de),a            	;.
l56efh:
	ram:56ef 13             inc de               	;.
	ram:56f0 c1             pop bc               	;.
	ram:56f1 10 eb          djnz l56deh          	;. .
	dec (ix-001h)		;56f3	dd 35 ff	. 5 .
	ram:56f6 20 e1          jr nz,l56d9h         	;.
	ld (ix-001h),c		;56f8	dd 71 ff	. q .
	ram:56fb 21 03 00       ld hl,00003h         	;! . .
	ram:56fe ed 4b 96 8b    ld bc,(08b96h)       	;. K . .
	ram:5702 16 00          ld d,000h            	;. .
l5704h:
	ram:5704 0a             ld a,(bc)            	;.
	ram:5705 03             inc bc               	;.
	ram:5706 3c             inc a                	;<
	ram:5707 5f             ld e,a               	;_
	ram:5708 19             add hl,de            	;.
	dec (ix-001h)		;5709	dd 35 ff	. 5 .
	ram:570c 20 f6          jr nz,l5704h         	;.
	ram:570e 4d             ld c,l               	;M
	ram:570f 44             ld b,h               	;D
	ram:5710 dd f9          ld sp,ix             	;. .
	ram:5712 dd e1          pop ix               	;. .
	ram:5714 c9             ret                  	;.
sub_5715h:
	ram:5715 dd e5          push ix              	;. .
	ram:5717 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:571b dd 39          add ix,sp            	;. 9
	ram:571d 3b             dec sp               	;;
	ram:571e cd ce 57       call sub_57ceh       	;. . W
	ram:5721 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:5724 23             inc hl               	;#
	ram:5725 7e             ld a,(hl)            	;~
	ram:5726 23             inc hl               	;#
	ld (ix-001h),a		;5727	dd 77 ff	. w .
l572ah:
	ram:572a ed 5b 96 8b    ld de,(08b96h)       	;. [ . .
	ram:572e 41             ld b,c               	;A
l572fh:
	ram:572f c5             push bc              	;.
	ram:5730 d5             push de              	;.
	ram:5731 cd 0a 21       call 0210ah          	;. . !
	ram:5734 e5             push hl              	;.
	ram:5735 cd 60 54       call sub_5460h       	;. ` T
	ram:5738 e1             pop hl               	;.
	ram:5739 d1             pop de               	;.
	ram:573a 1a             ld a,(de)            	;.
	ram:573b b9             cp c                 	;.
	ram:573c 30 02          jr nc,l5740h         	;0 .
	ram:573e 79             ld a,c               	;y
	ram:573f 12             ld (de),a            	;.
l5740h:
	ram:5740 13             inc de               	;.
	ram:5741 c1             pop bc               	;.
	ram:5742 10 eb          djnz l572fh          	;. .
	dec (ix-001h)		;5744	dd 35 ff	. 5 .
	ram:5747 20 e1          jr nz,l572ah         	;.
	ld (ix-001h),c		;5749	dd 71 ff	. q .
	ram:574c 21 03 00       ld hl,00003h         	;! . .
	ram:574f ed 4b 96 8b    ld bc,(08b96h)       	;. K . .
	ram:5753 16 00          ld d,000h            	;. .
l5755h:
	ram:5755 0a             ld a,(bc)            	;.
	ram:5756 03             inc bc               	;.
	ram:5757 3c             inc a                	;<
	ram:5758 5f             ld e,a               	;_
	ram:5759 19             add hl,de            	;.
	dec (ix-001h)		;575a	dd 35 ff	. 5 .
	ram:575d 20 f6          jr nz,l5755h         	;.
	ram:575f 4d             ld c,l               	;M
	ram:5760 44             ld b,h               	;D
	ram:5761 dd f9          ld sp,ix             	;. .
	ram:5763 dd e1          pop ix               	;. .
	ram:5765 c9             ret                  	;.
sub_5766h:
	ram:5766 3a 54 83       ld a,(08354h)        	;: T .
	ram:5769 e6 c0          and 0c0h             	;. .
	ram:576b 32 54 83       ld (08354h),a        	;2 T .
	ram:576e c9             ret                  	;.
	ram:576f c5             push bc              	;.
	ram:5770 d5             push de              	;.
	ram:5771 e5             push hl              	;.
	ram:5772 cd 83 36       call 03683h          	;. . 6
	ram:5775 3a 82 80       ld a,(08082h)        	;: . .
	ram:5778 e6 1f          and 01fh             	;. .
	ram:577a 28 32          jr z,l57aeh          	;( 2
	ram:577c fe 08          cp 008h              	;. .
	ram:577e 38 04          jr c,l5784h          	;8 .
	ram:5780 fe 0c          cp 00ch              	;. .
	ram:5782 20 2a          jr nz,l57aeh         	;*
l5784h:
	ram:5784 2a 34 8b       ld hl,(08b34h)       	;* 4 .
	ram:5787 23             inc hl               	;#
	ram:5788 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:578b eb             ex de,hl             	;.
	ram:578c 21 00 00       ld hl,00000h         	;! . .
	ram:578f cd 8e 00       call 0008eh          	;. . .
	ram:5792 f2 ae 57       jp p,l57aeh          	;. . W
	ram:5795 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:5798 e5             push hl              	;.
	ram:5799 fd cb 0e d6    set 2,(iy+00eh)      	;. . . .
	ram:579d 2a 2f 8b       ld hl,(08b2fh)       	;* / .
	ram:57a0 26 14          ld h,014h            	;& .
	ram:57a2 22 0c 80       ld (0800ch),hl       	;" . .
	ram:57a5 3e 1e          ld a,01eh            	;> .
	ram:57a7 cd cd 3d       call 03dcdh          	;. . =
	ram:57aa e1             pop hl               	;.
	ram:57ab 22 0c 80       ld (0800ch),hl       	;" . .
l57aeh:
	ram:57ae e1             pop hl               	;.
	ram:57af d1             pop de               	;.
	ram:57b0 c1             pop bc               	;.
	ram:57b1 c9             ret                  	;.
sub_57b2h:
	ram:57b2 3e 15          ld a,015h            	;> .
	ram:57b4 91             sub c                	;.
	ram:57b5 c8             ret z                	;.
	ram:57b6 47             ld b,a               	;G
	ram:57b7 3e 20          ld a,020h            	;>  
l57b9h:
	ram:57b9 cd c5 3f       call 03fc5h          	;. . ?
	ram:57bc 10 fb          djnz l57b9h          	;. .
	ram:57be c9             ret                  	;.
sub_57bfh:
	ram:57bf 21 eb ff       ld hl,0ffebh         	;! . .
	ram:57c2 09             add hl,bc            	;.
	ram:57c3 d8             ret c                	;.
	ram:57c4 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:57c7 c9             ret                  	;.
sub_57c8h:
	ram:57c8 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:57cb 23             inc hl               	;#
	ram:57cc 18 03          jr l57d1h            	;. .
sub_57ceh:
	ram:57ce 2a d0 80       ld hl,(080d0h)       	;* . .
l57d1h:
	ram:57d1 6e             ld l,(hl)            	;n
	ram:57d2 e5             push hl              	;.
	ram:57d3 26 00          ld h,000h            	;& .
	ram:57d5 11 01 25       ld de,02501h         	;. . %
	ram:57d8 ed 53 83 80    ld (08083h),de       	;. S . .
	ram:57dc cd 1c 2a       call 02a1ch          	;. . *
	ram:57df 22 94 8b       ld (08b94h),hl       	;" . .
	ram:57e2 13             inc de               	;.
	ram:57e3 13             inc de               	;.
	ram:57e4 ed 53 96 8b    ld (08b96h),de       	;. S . .
	ram:57e8 fd cb 05 fe    set 7,(iy+005h)      	;. . . .
	ram:57ec c1             pop bc               	;.
	ram:57ed 41             ld b,c               	;A
	ram:57ee 97             sub a                	;.
l57efh:
	ram:57ef 12             ld (de),a            	;.
	ram:57f0 13             inc de               	;.
	ram:57f1 10 fc          djnz l57efh          	;. .
	ram:57f3 c9             ret                  	;.
sub_57f4h:
	ram:57f4 21 5b 00       ld hl,0005bh         	;! [ .
	ram:57f7 22 3b 8b       ld (08b3bh),hl       	;" ; .
	ram:57fa c9             ret                  	;.
sub_57fbh:
	ram:57fb 3e 5d          ld a,05dh            	;> ]
	ram:57fd cd 06 58       call sub_5806h       	;. . X
	ram:5800 21 3b 8b       ld hl,08b3bh         	;! ; .
	ram:5803 c3 2f 30       jp 0302fh            	;. / 0
sub_5806h:
	ram:5806 12             ld (de),a            	;.
	ram:5807 13             inc de               	;.
	ram:5808 97             sub a                	;.
	ram:5809 12             ld (de),a            	;.
	ram:580a c9             ret                  	;.
sub_580bh:
	ram:580b 3e 13          ld a,013h            	;> .
	ram:580d cd 46 4f       call sub_4f46h       	;. F O
	ram:5810 21 98 80       ld hl,08098h         	;! . .
	ram:5813 11 3b 8b       ld de,08b3bh         	;. ; .
	ram:5816 c3 4a 30       jp 0304ah            	;. J 0
sub_5819h:
	ram:5819 fd cb 0e 56    bit 2,(iy+00eh)      	;. . . V
	ram:581d 28 08          jr z,l5827h          	;( .
	ram:581f 2a 2f 8b       ld hl,(08b2fh)       	;* / .
	ram:5822 3e 1e          ld a,01eh            	;> .
	ram:5824 cd 33 58       call sub_5833h       	;. 3 X
l5827h:
	ram:5827 fd cb 0e 5e    bit 3,(iy+00eh)      	;. . . ^
	ram:582b c8             ret z                	;.
	ram:582c 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:582f 3d             dec a                	;=
	ram:5830 6f             ld l,a               	;o
	ram:5831 3e 1f          ld a,01fh            	;> .
sub_5833h:
	ram:5833 26 14          ld h,014h            	;& .
	ram:5835 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5838 cd cd 3d       call 03dcdh          	;. . =
	ram:583b c9             ret                  	;.
sub_583ch:
	ram:583c fd cb 01 de    set 3,(iy+001h)      	;. . . .
	ram:5840 cd a9 3d       call 03da9h          	;. . =
	ram:5843 cd 81 3b       call 03b81h          	;. . ;
	ram:5846 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:5849 97             sub a                	;.
	ram:584a 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:584d 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5850 3d             dec a                	;=
	ram:5851 5f             ld e,a               	;_
	ram:5852 54             ld d,h               	;T
	ram:5853 ed 52          sbc hl,de            	;. R
	ram:5855 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:5858 c9             ret                  	;.
sub_5859h:
	ram:5859 d7             rst 10h              	;.
	ram:585a eb             ex de,hl             	;.
	ram:585b 22 d0 80       ld (080d0h),hl       	;" . .
	ram:585e 23             inc hl               	;#
	ram:585f 46             ld b,(hl)            	;F
	ram:5860 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:5863 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:5866 96             sub (hl)             	;.
	ram:5867 3d             dec a                	;=
	ram:5868 b8             cp b                 	;.
	ram:5869 30 01          jr nc,l586ch         	;0 .
	ram:586b 47             ld b,a               	;G
l586ch:
	ram:586c 48             ld c,b               	;H
l586dh:
	ram:586d cd a9 3d       call 03da9h          	;. . =
	ram:5870 10 fb          djnz l586dh          	;. .
	ram:5872 cd 81 3b       call 03b81h          	;. . ;
	ram:5875 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:5878 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:587b 91             sub c                	;.
	ram:587c 5f             ld e,a               	;_
	ram:587d 54             ld d,h               	;T
	ram:587e ed 52          sbc hl,de            	;. R
	ram:5880 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:5883 fd cb 01 de    set 3,(iy+001h)      	;. . . .
	ram:5887 c9             ret                  	;.
sub_5888h:
	ld (ix-004h),002h	;5888	dd 36 fc 02	. 6 . .
	ld (ix-003h),000h	;588c	dd 36 fd 00	. 6 . .
sub_5890h:
	ram:5890 ed 5b 96 8b    ld de,(08b96h)       	;. [ . .
	ld (ix-002h),e		;5894	dd 73 fe	. s .
	ld (ix-001h),d		;5897	dd 72 ff	. r .
	ram:589a c9             ret                  	;.
sub_589bh:
	ld l,(ix-002h)		;589b	dd 6e fe	. n .
	ld h,(ix-001h)		;589e	dd 66 ff	. f .
	ram:58a1 71             ld (hl),c            	;q
	ram:58a2 23             inc hl               	;#
	ld (ix-002h),l		;58a3	dd 75 fe	. u .
	ld (ix-001h),h		;58a6	dd 74 ff	. t .
	ram:58a9 c9             ret                  	;.
sub_58aah:
	ld l,(ix-002h)		;58aa	dd 6e fe	. n .
	ld h,(ix-001h)		;58ad	dd 66 ff	. f .
	ram:58b0 4e             ld c,(hl)            	;N
	ram:58b1 06 00          ld b,000h            	;. .
	ram:58b3 23             inc hl               	;#
	ld (ix-002h),l		;58b4	dd 75 fe	. u .
	ld (ix-001h),h		;58b7	dd 74 ff	. t .
	ram:58ba c9             ret                  	;.
sub_58bbh:
	ld l,(ix-004h)		;58bb	dd 6e fc	. n .
	ld h,(ix-003h)		;58be	dd 66 fd	. f .
	ram:58c1 09             add hl,bc            	;.
	ld (ix-004h),l		;58c2	dd 75 fc	. u .
	ld (ix-003h),h		;58c5	dd 74 fd	. t .
	ram:58c8 c9             ret                  	;.
	ram:58c9 fd cb 01 9e    res 3,(iy+001h)      	;. . . .
	ram:58cd fd cb 05 7e    bit 7,(iy+005h)      	;. . . ~
	ram:58d1 c8             ret z                	;.
	ram:58d2 2a 94 8b       ld hl,(08b94h)       	;* . .
	ram:58d5 ed 5b 96 8b    ld de,(08b96h)       	;. [ . .
	ram:58d9 1b             dec de               	;.
	ram:58da 1b             dec de               	;.
	ram:58db cd 0b 2c       call 02c0bh          	;. . ,
	ram:58de fd cb 05 be    res 7,(iy+005h)      	;. . . .
	ram:58e2 c9             ret                  	;.
	ram:58e3 cd 43 3d       call 03d43h          	;. C =
	ram:58e6 fd cb 0c c6    set 0,(iy+00ch)      	;. . . .
	ram:58ea 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:58ed 22 35 83       ld (08335h),hl       	;" 5 .
	ram:58f0 3a 50 83       ld a,(08350h)        	;: P .
	ram:58f3 32 51 83       ld (08351h),a        	;2 Q .
	ram:58f6 3a 82 80       ld a,(08082h)        	;: . .
	ram:58f9 e6 1f          and 01fh             	;. .
	ram:58fb 28 04          jr z,l5901h          	;( .
	ram:58fd fe 08          cp 008h              	;. .
	ram:58ff 20 05          jr nz,l5906h         	;.
l5901h:
	ram:5901 cd f2 5b       call sub_5bf2h       	;. . [
	ram:5904 18 0e          jr l5914h            	;. .
l5906h:
	ram:5906 fe 01          cp 001h              	;. .
	ram:5908 28 04          jr z,l590eh          	;( .
	ram:590a fe 09          cp 009h              	;. .
	ram:590c 20 05          jr nz,l5913h         	;.
l590eh:
	ram:590e cd ea 5b       call sub_5beah       	;. . [
	ram:5911 18 01          jr l5914h            	;. .
l5913h:
	ram:5913 37             scf                  	;7
l5914h:
	ram:5914 fd cb 0c 86    res 0,(iy+00ch)      	;. . . .
	ram:5918 d8             ret c                	;.
	ram:5919 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:591c 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:591f c9             ret                  	;.
	ram:5920 d7             rst 10h              	;.
	ram:5921 eb             ex de,hl             	;.
sub_5922h:
	ram:5922 eb             ex de,hl             	;.
	ram:5923 cd 43 3d       call 03d43h          	;. C =
	ram:5926 eb             ex de,hl             	;.
	ram:5927 fd cb 0c c6    set 0,(iy+00ch)      	;. . . .
	ram:592b cd 3a 59       call sub_593ah       	;. : Y
	ram:592e fd cb 0c 86    res 0,(iy+00ch)      	;. . . .
	ram:5932 d8             ret c                	;.
	ram:5933 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:5936 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:5939 c9             ret                  	;.
sub_593ah:
	ram:593a f5             push af              	;.
	ram:593b ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:593f ed 53 35 83    ld (08335h),de       	;. S 5 .
	ram:5943 3a 50 83       ld a,(08350h)        	;: P .
	ram:5946 32 51 83       ld (08351h),a        	;2 Q .
	ram:5949 f1             pop af               	;.
	ram:594a 22 d0 80       ld (080d0h),hl       	;" . .
	ram:594d e6 1f          and 01fh             	;. .
	ram:594f 28 04          jr z,l5955h          	;( .
	ram:5951 fe 08          cp 008h              	;. .
	ram:5953 20 04          jr nz,l5959h         	;.
l5955h:
	ram:5955 e7             rst 20h              	;.
	ram:5956 c3 f2 5b       jp sub_5bf2h         	;. . [
l5959h:
	ram:5959 fe 01          cp 001h              	;. .
	ram:595b 28 04          jr z,l5961h          	;( .
	ram:595d fe 09          cp 009h              	;. .
	ram:595f 20 06          jr nz,l5967h         	;.
l5961h:
	ram:5961 cd 0a 21       call 0210ah          	;. . !
	ram:5964 c3 ea 5b       jp sub_5beah         	;. . [
l5967h:
	ram:5967 fe 02          cp 002h              	;. .
	ram:5969 c2 47 5a       jp nz,l5a47h         	;. G Z
	ram:596c 23             inc hl               	;#
	ram:596d 7e             ld a,(hl)            	;~
	ram:596e fe 04          cp 004h              	;. .
	ram:5970 d2 28 5a       jp nc,l5a28h         	;. ( Z
	ram:5973 fe 02          cp 002h              	;. .
	ram:5975 da 28 5a       jp c,l5a28h          	;. ( Z
	ram:5978 20 2e          jr nz,l59a8h         	;.
	ram:597a fd cb 0a 76    bit 6,(iy+00ah)      	;. . . v
	ram:597e ca 28 5a       jp z,l5a28h          	;. ( Z
	ram:5981 23             inc hl               	;#
	ram:5982 cd 0a 21       call 0210ah          	;. . !
	ram:5985 21 28 5a       ld hl,l5a28h         	;! ( Z
	ram:5988 cd b5 0a       call 00ab5h          	;. . .
	ram:598b cd e3 5b       call sub_5be3h       	;. . [
	ram:598e cd db 0a       call 00adbh          	;. . .
	ram:5991 cd 07 5c       call sub_5c07h       	;. . \
	ram:5994 cd f2 5b       call sub_5bf2h       	;. . [
	ram:5997 3e 13          ld a,013h            	;> .
	ram:5999 cd bb 34       call 034bbh          	;. . 4
	ram:599c cd 95 20       call 02095h          	;. .  
	ram:599f cd f2 5b       call sub_5bf2h       	;. . [
	ram:59a2 3e 5d          ld a,05dh            	;> ]
	ram:59a4 cd bb 34       call 034bbh          	;. . 4
	ram:59a7 c9             ret                  	;.
l59a8h:
	ram:59a8 fd cb 0a 76    bit 6,(iy+00ah)      	;. . . v
	ram:59ac ca 28 5a       jp z,l5a28h          	;. ( Z
	ram:59af 23             inc hl               	;#
	ram:59b0 cd 0a 21       call 0210ah          	;. . !
	ram:59b3 22 d2 80       ld (080d2h),hl       	;" . .
	ram:59b6 21 28 5a       ld hl,l5a28h         	;! ( Z
	ram:59b9 cd b5 0a       call 00ab5h          	;. . .
	ram:59bc cd e3 5b       call sub_5be3h       	;. . [
	ram:59bf cd db 0a       call 00adbh          	;. . .
	ram:59c2 fd cb 0a 7e    bit 7,(iy+00ah)      	;. . . ~
	ram:59c6 28 3d          jr z,l5a05h          	;( =
	ram:59c8 21 8d 80       ld hl,0808dh         	;! . .
	ram:59cb 11 7c 8b       ld de,08b7ch         	;. | .
	ram:59ce cd 9d 20       call 0209dh          	;. .  
	ram:59d1 cf             rst 8                	;.
	ram:59d2 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:59d5 e7             rst 20h              	;.
	ram:59d6 21 28 5a       ld hl,l5a28h         	;! ( Z
	ram:59d9 cd b5 0a       call 00ab5h          	;. . .
	ram:59dc cd e3 5b       call sub_5be3h       	;. . [
	ram:59df cd db 0a       call 00adbh          	;. . .
	ram:59e2 cd 07 5c       call sub_5c07h       	;. . \
	ram:59e5 cd f2 5b       call sub_5bf2h       	;. . [
	ram:59e8 3e 13          ld a,013h            	;> .
	ram:59ea cd bb 34       call 034bbh          	;. . 4
	ram:59ed 21 7c 8b       ld hl,08b7ch         	;! | .
	ram:59f0 e7             rst 20h              	;.
	ram:59f1 cd f2 5b       call sub_5bf2h       	;. . [
	ram:59f4 3e 13          ld a,013h            	;> .
	ram:59f6 cd bb 34       call 034bbh          	;. . 4
	ram:59f9 cd 95 20       call 02095h          	;. .  
	ram:59fc cd f2 5b       call sub_5bf2h       	;. . [
	ram:59ff 3e 5d          ld a,05dh            	;> ]
	ram:5a01 cd bb 34       call 034bbh          	;. . 4
	ram:5a04 c9             ret                  	;.
l5a05h:
	ram:5a05 cd 07 5c       call sub_5c07h       	;. . \
	ram:5a08 cd f2 5b       call sub_5bf2h       	;. . [
	ram:5a0b 3e 13          ld a,013h            	;> .
	ram:5a0d cd bb 34       call 034bbh          	;. . 4
	ram:5a10 cd 95 20       call 02095h          	;. .  
	ram:5a13 cd f2 5b       call sub_5bf2h       	;. . [
	ram:5a16 3e 2c          ld a,02ch            	;> ,
	ram:5a18 cd bb 34       call 034bbh          	;. . 4
	ram:5a1b 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:5a1e e7             rst 20h              	;.
	ram:5a1f cd f2 5b       call sub_5bf2h       	;. . [
	ram:5a22 3e 5d          ld a,05dh            	;> ]
	ram:5a24 cd bb 34       call 034bbh          	;. . 4
	ram:5a27 c9             ret                  	;.
l5a28h:
	ram:5a28 cd 07 5c       call sub_5c07h       	;. . \
	ram:5a2b d8             ret c                	;.
	ram:5a2c 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:5a2f 23             inc hl               	;#
	ram:5a30 46             ld b,(hl)            	;F
	ram:5a31 23             inc hl               	;#
l5a32h:
	ram:5a32 c5             push bc              	;.
	ram:5a33 e7             rst 20h              	;.
	ram:5a34 e5             push hl              	;.
	ram:5a35 cd f2 5b       call sub_5bf2h       	;. . [
	ram:5a38 3e 2c          ld a,02ch            	;> ,
	ram:5a3a cd bb 34       call 034bbh          	;. . 4
	ram:5a3d e1             pop hl               	;.
	ram:5a3e c1             pop bc               	;.
	ram:5a3f d8             ret c                	;.
	ram:5a40 10 f0          djnz l5a32h          	;. .
	ram:5a42 3e 5d          ld a,05dh            	;> ]
	ram:5a44 c3 fe 5b       jp l5bfeh            	;. . [
l5a47h:
	ram:5a47 fe 03          cp 003h              	;. .
	ram:5a49 20 1e          jr nz,l5a69h         	;.
	ram:5a4b cd 07 5c       call sub_5c07h       	;. . \
	ram:5a4e d8             ret c                	;.
	ram:5a4f 23             inc hl               	;#
	ram:5a50 46             ld b,(hl)            	;F
	ram:5a51 23             inc hl               	;#
l5a52h:
	ram:5a52 c5             push bc              	;.
	ram:5a53 cd 0a 21       call 0210ah          	;. . !
	ram:5a56 e5             push hl              	;.
	ram:5a57 cd ea 5b       call sub_5beah       	;. . [
	ram:5a5a 3e 2c          ld a,02ch            	;> ,
	ram:5a5c cd bb 34       call 034bbh          	;. . 4
	ram:5a5f e1             pop hl               	;.
	ram:5a60 c1             pop bc               	;.
	ram:5a61 d8             ret c                	;.
	ram:5a62 10 ee          djnz l5a52h          	;. .
	ram:5a64 3e 5d          ld a,05dh            	;> ]
	ram:5a66 c3 fe 5b       jp l5bfeh            	;. . [
l5a69h:
	ram:5a69 fe 04          cp 004h              	;. .
	ram:5a6b 20 2c          jr nz,l5a99h         	;,
	ram:5a6d 3e 7b          ld a,07bh            	;> {
	ram:5a6f cd bb 34       call 034bbh          	;. . 4
	ram:5a72 d8             ret c                	;.
	ram:5a73 4e             ld c,(hl)            	;N
	ram:5a74 23             inc hl               	;#
	ram:5a75 46             ld b,(hl)            	;F
	ram:5a76 23             inc hl               	;#
	ram:5a77 79             ld a,c               	;y
	ram:5a78 b0             or b                 	;.
	ram:5a79 28 18          jr z,l5a93h          	;( .
l5a7bh:
	ram:5a7b c5             push bc              	;.
	ram:5a7c e7             rst 20h              	;.
	ram:5a7d e5             push hl              	;.
	ram:5a7e cd f2 5b       call sub_5bf2h       	;. . [
	ram:5a81 3e 2c          ld a,02ch            	;> ,
	ram:5a83 cd bb 34       call 034bbh          	;. . 4
	ram:5a86 e1             pop hl               	;.
	ram:5a87 c1             pop bc               	;.
	ram:5a88 d8             ret c                	;.
	ram:5a89 0b             dec bc               	;.
	ram:5a8a 79             ld a,c               	;y
	ram:5a8b b0             or b                 	;.
	ram:5a8c 20 ed          jr nz,l5a7bh         	;.
	ram:5a8e 3e 7d          ld a,07dh            	;> }
	ram:5a90 c3 fe 5b       jp l5bfeh            	;. . [
l5a93h:
	ram:5a93 3e 7d          ld a,07dh            	;> }
	ram:5a95 cd bb 34       call 034bbh          	;. . 4
	ram:5a98 c9             ret                  	;.
l5a99h:
	ram:5a99 fe 05          cp 005h              	;. .
	ram:5a9b 20 28          jr nz,l5ac5h         	;(
	ram:5a9d 3e 7b          ld a,07bh            	;> {
	ram:5a9f cd bb 34       call 034bbh          	;. . 4
	ram:5aa2 d8             ret c                	;.
	ram:5aa3 4e             ld c,(hl)            	;N
	ram:5aa4 23             inc hl               	;#
	ram:5aa5 46             ld b,(hl)            	;F
	ram:5aa6 23             inc hl               	;#
	ram:5aa7 79             ld a,c               	;y
	ram:5aa8 b0             or b                 	;.
	ram:5aa9 28 e8          jr z,l5a93h          	;( .
l5aabh:
	ram:5aab c5             push bc              	;.
	ram:5aac cd 0a 21       call 0210ah          	;. . !
	ram:5aaf e5             push hl              	;.
	ram:5ab0 cd ea 5b       call sub_5beah       	;. . [
	ram:5ab3 3e 2c          ld a,02ch            	;> ,
	ram:5ab5 cd bb 34       call 034bbh          	;. . 4
	ram:5ab8 e1             pop hl               	;.
	ram:5ab9 c1             pop bc               	;.
	ram:5aba d8             ret c                	;.
	ram:5abb 0b             dec bc               	;.
	ram:5abc 79             ld a,c               	;y
	ram:5abd b0             or b                 	;.
	ram:5abe 20 eb          jr nz,l5aabh         	;.
	ram:5ac0 3e 7d          ld a,07dh            	;> }
	ram:5ac2 c3 fe 5b       jp l5bfeh            	;. . [
l5ac5h:
	ram:5ac5 fe 06          cp 006h              	;. .
	ram:5ac7 20 3d          jr nz,l5b06h         	;=
	ram:5ac9 cd 07 5c       call sub_5c07h       	;. . \
	ram:5acc d8             ret c                	;.
	ram:5acd dd e5          push ix              	;. .
	ram:5acf dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:5ad3 dd 39          add ix,sp            	;. 9
	ram:5ad5 3b             dec sp               	;;
	ram:5ad6 4e             ld c,(hl)            	;N
	ram:5ad7 23             inc hl               	;#
	ld (ix-001h),c		;5ad8	dd 71 ff	. q .
	ram:5adb 46             ld b,(hl)            	;F
	ram:5adc 23             inc hl               	;#
l5addh:
	ram:5add cd 07 5c       call sub_5c07h       	;. . \
l5ae0h:
	ram:5ae0 c5             push bc              	;.
	ram:5ae1 e7             rst 20h              	;.
	ram:5ae2 e5             push hl              	;.
	ram:5ae3 cd f2 5b       call sub_5bf2h       	;. . [
	ram:5ae6 3e 2c          ld a,02ch            	;> ,
	ram:5ae8 cd bb 34       call 034bbh          	;. . 4
	ram:5aeb e1             pop hl               	;.
	ram:5aec c1             pop bc               	;.
	ram:5aed 38 12          jr c,l5b01h          	;8 .
	ram:5aef 0d             dec c                	;.
	ram:5af0 20 ee          jr nz,l5ae0h         	;.
	ram:5af2 3e 5d          ld a,05dh            	;> ]
	ram:5af4 cd fe 5b       call l5bfeh          	;. . [
	ld c,(ix-001h)		;5af7	dd 4e ff	. N .
	ram:5afa 10 e1          djnz l5addh          	;. .
	ram:5afc 3e 5d          ld a,05dh            	;> ]
	ram:5afe cd bb 34       call 034bbh          	;. . 4
l5b01h:
	ram:5b01 dd f9          ld sp,ix             	;. .
	ram:5b03 dd e1          pop ix               	;. .
	ram:5b05 c9             ret                  	;.
l5b06h:
	ram:5b06 fe 07          cp 007h              	;. .
	ram:5b08 20 3f          jr nz,l5b49h         	;?
	ram:5b0a cd 07 5c       call sub_5c07h       	;. . \
	ram:5b0d d8             ret c                	;.
	ram:5b0e dd e5          push ix              	;. .
	ram:5b10 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:5b14 dd 39          add ix,sp            	;. 9
	ram:5b16 3b             dec sp               	;;
	ram:5b17 4e             ld c,(hl)            	;N
	ram:5b18 23             inc hl               	;#
	ld (ix-001h),c		;5b19	dd 71 ff	. q .
	ram:5b1c 46             ld b,(hl)            	;F
	ram:5b1d 23             inc hl               	;#
l5b1eh:
	ram:5b1e cd 07 5c       call sub_5c07h       	;. . \
l5b21h:
	ram:5b21 c5             push bc              	;.
	ram:5b22 cd 0a 21       call 0210ah          	;. . !
	ram:5b25 e5             push hl              	;.
	ram:5b26 cd ea 5b       call sub_5beah       	;. . [
	ram:5b29 3e 2c          ld a,02ch            	;> ,
	ram:5b2b cd bb 34       call 034bbh          	;. . 4
	ram:5b2e e1             pop hl               	;.
	ram:5b2f c1             pop bc               	;.
	ram:5b30 38 12          jr c,l5b44h          	;8 .
	ram:5b32 0d             dec c                	;.
	ram:5b33 20 ec          jr nz,l5b21h         	;.
	ram:5b35 3e 5d          ld a,05dh            	;> ]
	ram:5b37 cd fe 5b       call l5bfeh          	;. . [
	ld c,(ix-001h)		;5b3a	dd 4e ff	. N .
	ram:5b3d 10 df          djnz l5b1eh          	;. .
	ram:5b3f 3e 5d          ld a,05dh            	;> ]
	ram:5b41 cd bb 34       call 034bbh          	;. . 4
l5b44h:
	ram:5b44 dd f9          ld sp,ix             	;. .
	ram:5b46 dd e1          pop ix               	;. .
	ram:5b48 c9             ret                  	;.
l5b49h:
	ram:5b49 fe 0a          cp 00ah              	;. .
	ram:5b4b 28 05          jr z,l5b52h          	;( .
	ram:5b4d fe 12          cp 012h              	;. .
	ram:5b4f c2 bb 5b       jp nz,l5bbbh         	;. . [
l5b52h:
	ram:5b52 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:5b55 e5             push hl              	;.
	ram:5b56 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:5b59 e5             push hl              	;.
	ram:5b5a 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:5b5d e5             push hl              	;.
	ram:5b5e 22 19 8b       ld (08b19h),hl       	;" . .
	ram:5b61 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:5b64 e5             push hl              	;.
	ram:5b65 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:5b68 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:5b6b 4e             ld c,(hl)            	;N
	ram:5b6c 23             inc hl               	;#
	ram:5b6d 46             ld b,(hl)            	;F
	ram:5b6e 23             inc hl               	;#
l5b6fh:
	ram:5b6f 79             ld a,c               	;y
	ram:5b70 b0             or b                 	;.
	ram:5b71 28 0e          jr z,l5b81h          	;( .
	ram:5b73 7e             ld a,(hl)            	;~
	ram:5b74 23             inc hl               	;#
	ram:5b75 c5             push bc              	;.
	ram:5b76 e5             push hl              	;.
	ram:5b77 cd ad 3c       call 03cadh          	;. . <
	ram:5b7a e1             pop hl               	;.
	ram:5b7b c1             pop bc               	;.
	ram:5b7c 28 3a          jr z,l5bb8h          	;( :
	ram:5b7e 0b             dec bc               	;.
	ram:5b7f 18 ee          jr l5b6fh            	;. .
l5b81h:
	ram:5b81 cd a7 3c       call 03ca7h          	;. . <
	ram:5b84 cd 49 34       call 03449h          	;. I 4
	ram:5b87 28 17          jr z,l5ba0h          	;( .
	ram:5b89 b7             or a                 	;.
	ram:5b8a 20 08          jr nz,l5b94h         	;.
	ram:5b8c cd 31 3d       call 03d31h          	;. 1 =
	ram:5b8f cd 4f 34       call 0344fh          	;. O 4
	ram:5b92 18 0c          jr l5ba0h            	;. .
l5b94h:
	ram:5b94 21 b8 5b       ld hl,l5bb8h         	;! . [
	ram:5b97 cd b5 0a       call 00ab5h          	;. . .
	ram:5b9a cd c8 6c       call sub_6cc8h       	;. . l
	ram:5b9d cd db 0a       call 00adbh          	;. . .
l5ba0h:
	ram:5ba0 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:5ba3 22 35 83       ld (08335h),hl       	;" 5 .
	ram:5ba6 b7             or a                 	;.
l5ba7h:
	ram:5ba7 e1             pop hl               	;.
	ram:5ba8 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:5bab e1             pop hl               	;.
	ram:5bac 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:5baf e1             pop hl               	;.
	ram:5bb0 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:5bb3 e1             pop hl               	;.
	ram:5bb4 22 19 8b       ld (08b19h),hl       	;" . .
	ram:5bb7 c9             ret                  	;.
l5bb8h:
	ram:5bb8 37             scf                  	;7
	ram:5bb9 18 ec          jr l5ba7h            	;. .
l5bbbh:
	ram:5bbb fe 0c          cp 00ch              	;. .
	ram:5bbd 20 23          jr nz,l5be2h         	;#
	ram:5bbf 3e 22          ld a,022h            	;> "
	ram:5bc1 fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:5bc5 cc bb 34       call z,034bbh        	;. . 4
	ram:5bc8 4e             ld c,(hl)            	;N
	ram:5bc9 23             inc hl               	;#
	ram:5bca 46             ld b,(hl)            	;F
	ram:5bcb 23             inc hl               	;#
l5bcch:
	ram:5bcc 79             ld a,c               	;y
	ram:5bcd b0             or b                 	;.
	ram:5bce 28 09          jr z,l5bd9h          	;( .
	ram:5bd0 7e             ld a,(hl)            	;~
	ram:5bd1 23             inc hl               	;#
	ram:5bd2 cd bb 34       call 034bbh          	;. . 4
	ram:5bd5 d8             ret c                	;.
	ram:5bd6 0b             dec bc               	;.
	ram:5bd7 18 f3          jr l5bcch            	;. .
l5bd9h:
	ram:5bd9 3e 22          ld a,022h            	;> "
	ram:5bdb fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:5bdf cc bb 34       call z,034bbh        	;. . 4
l5be2h:
	ram:5be2 c9             ret                  	;.
sub_5be3h:
	ram:5be3 cd a5 1e       call 01ea5h          	;. . .
	ram:5be6 cd 9b 25       call 0259bh          	;. . %
	ram:5be9 c9             ret                  	;.
sub_5beah:
	ram:5bea cd 60 54       call sub_5460h       	;. ` T
	ram:5bed 01 3b 8b       ld bc,08b3bh         	;. ; .
	ram:5bf0 18 08          jr l5bfah            	;. .
sub_5bf2h:
	ram:5bf2 3e 15          ld a,015h            	;> .
	ram:5bf4 cd 46 4f       call sub_4f46h       	;. F O
	ram:5bf7 01 98 80       ld bc,08098h         	;. . .
l5bfah:
	ram:5bfa cd 43 34       call 03443h          	;. C 4
	ram:5bfd c9             ret                  	;.
l5bfeh:
	ram:5bfe e5             push hl              	;.
	ram:5bff 2a 35 83       ld hl,(08335h)       	;* 5 .
	ram:5c02 2b             dec hl               	;+
	ram:5c03 77             ld (hl),a            	;w
	ram:5c04 e1             pop hl               	;.
	ram:5c05 b7             or a                 	;.
	ram:5c06 c9             ret                  	;.
sub_5c07h:
	ram:5c07 3e 5b          ld a,05bh            	;> [
	ram:5c09 cd bb 34       call 034bbh          	;. . 4
	ram:5c0c c9             ret                  	;.
sub_5c0dh:
	ram:5c0d 3e 20          ld a,020h            	;>  
	ram:5c0f cd 69 3b       call 03b69h          	;. i ;
	ram:5c12 c9             ret                  	;.
	ram:5c13 21 98 5c       ld hl,05c98h         	;! . \
	ram:5c16 cd 5b 06       call 0065bh          	;. [ .
	ram:5c19 cd 1f 28       call 0281fh          	;. . (
	ram:5c1c 3e 6b          ld a,06bh            	;> k
	ram:5c1e cd 11 3c       call 03c11h          	;. . <
l5c21h:
	ram:5c21 97             sub a                	;.
	ram:5c22 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:5c25 cd 8b 3d       call 03d8bh          	;. . =
	ram:5c28 21 de 31       ld hl,031deh         	;! . 1
	ram:5c2b cd 45 3e       call 03e45h          	;. E >
	ram:5c2e cd b4 26       call 026b4h          	;. . &
	ram:5c31 cd d9 3d       call 03dd9h          	;. . =
	ram:5c34 cd a9 3d       call 03da9h          	;. . =
	ram:5c37 cd b6 5c       call sub_5cb6h       	;. . \
	ram:5c3a 06 0b          ld b,00bh            	;. .
	ram:5c3c 21 77 5c       ld hl,l5c77h         	;! w \
l5c3fh:
	ram:5c3f cb 40          bit 0,b              	;. @
	ram:5c41 20 05          jr nz,l5c48h         	;.
	ram:5c43 3e 0b          ld a,00bh            	;> .
	ram:5c45 32 0d 80       ld (0800dh),a        	;2 . .
l5c48h:
	ram:5c48 e5             push hl              	;.
	ram:5c49 cd 33 00       call 00033h          	;. 3 .
	ram:5c4c cd 45 3e       call 03e45h          	;. E >
	ram:5c4f 3e 20          ld a,020h            	;>  
	ram:5c51 cd c5 3f       call 03fc5h          	;. . ?
	ram:5c54 e1             pop hl               	;.
	ram:5c55 23             inc hl               	;#
	ram:5c56 23             inc hl               	;#
	ram:5c57 5e             ld e,(hl)            	;^
	ram:5c58 23             inc hl               	;#
	ram:5c59 e5             push hl              	;.
	ram:5c5a 21 a3 80       ld hl,080a3h         	;! . .
	ram:5c5d 16 00          ld d,000h            	;. .
	ram:5c5f 19             add hl,de            	;.
	ram:5c60 cd 33 00       call 00033h          	;. 3 .
	ram:5c63 cd d9 3d       call 03dd9h          	;. . =
l5c66h:
	ram:5c66 e1             pop hl               	;.
	ram:5c67 10 d6          djnz l5c3fh          	;. .
	ram:5c69 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:5c6d c9             ret                  	;.
	ram:5c6e d0             ret nc               	;.
	ram:5c6f 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:5c72 fe 08          cp 008h              	;. .
	ram:5c74 c8             ret z                	;.
	ram:5c75 18 aa          jr l5c21h            	;. .
l5c77h:
	ram:5c77 4d             ld c,l               	;M
	ram:5c78 32 00 e9       ld (0e900h),a        	;2 . .
	ram:5c7b 30 02          jr nc,4              	;0 .
	ram:5c7d a9             xor c                	;.
	ram:5c7e 31 08 cc       ld sp,0cc08h         	;1 . .
	ram:5c81 32 04 c7       ld (0c704h),a        	;2 . .
	ram:5c84 31 0c 86       ld sp,0860ch         	;1 . .
	ram:5c87 32 18 35       ld (03518h),a        	;2 . 5
	ram:5c8a 31 14 db       ld sp,0db14h         	;1 . .
	ram:5c8d 30 10          jr nc,l5c9fh         	;0 .
	ram:5c8f 27             daa                  	;'
	ram:5c90 32 1e 6b       ld (06b1eh),a        	;2 . k
	ram:5c93 31 1a 1c       ld sp,01c1ah         	;1 . .
	ram:5c96 32 1c ad       ld (0ad1ch),a        	;2 . .
	ram:5c99 5c             ld e,h               	;\
	ram:5c9a d9             exx                  	;.
	ram:5c9b 34             inc (hl)             	;4
	ram:5c9c a5             and l                	;.
	ram:5c9d 5c             ld e,h               	;\
	ram:5c9e a9             xor c                	;.
l5c9fh:
	ram:5c9f 5c             ld e,h               	;\
	ram:5ca0 aa             xor d                	;.
	ram:5ca1 5c             ld e,h               	;\
	ram:5ca2 6e             ld l,(hl)            	;n
	ram:5ca3 5c             ld e,h               	;\
	ram:5ca4 0a             ld a,(bc)            	;.
	ram:5ca5 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:5ca9 c9             ret                  	;.
	ram:5caa c3 62 04       jp 00462h            	;. b .
	ram:5cad fe 08          cp 008h              	;. .
	ram:5caf c0             ret nz               	;.
	ram:5cb0 cd c3 3e       call 03ec3h          	;. . >
	ram:5cb3 c3 c5 05       jp 005c5h            	;. . .
sub_5cb6h:
	ram:5cb6 cd a3 21       call 021a3h          	;. . !
	ram:5cb9 cd f5 1f       call 01ff5h          	;. . .
	ram:5cbc cd 8d 20       call 0208dh          	;. .  
	ram:5cbf cd 85 20       call 02085h          	;. .  
	ram:5cc2 21 6f fa       ld hl,0fa6fh         	;! o .
l5cc5h:
	ram:5cc5 ed 4b eb 8b    ld bc,(08bebh)       	;. K . .
	ram:5cc9 b7             or a                 	;.
	ram:5cca ed 42          sbc hl,bc            	;. B
	ram:5ccc d8             ret c                	;.
	ram:5ccd c8             ret z                	;.
	ram:5cce 09             add hl,bc            	;.
	ram:5ccf 7e             ld a,(hl)            	;~
	ram:5cd0 e6 1f          and 01fh             	;. .
	ram:5cd2 2b             dec hl               	;+
	ram:5cd3 5e             ld e,(hl)            	;^
	ram:5cd4 2b             dec hl               	;+
	ram:5cd5 56             ld d,(hl)            	;V
	ram:5cd6 2b             dec hl               	;+
	ram:5cd7 f5             push af              	;.
	ram:5cd8 e5             push hl              	;.
	ram:5cd9 eb             ex de,hl             	;.
	ram:5cda cd 3f 2d       call 02d3fh          	;. ? -
	ram:5cdd c1             pop bc               	;.
	ram:5cde 0a             ld a,(bc)            	;.
	ram:5cdf c6 04          add a,004h           	;. .
	ram:5ce1 6f             ld l,a               	;o
	ram:5ce2 26 00          ld h,000h            	;& .
	ram:5ce4 19             add hl,de            	;.
	ram:5ce5 eb             ex de,hl             	;.
	ram:5ce6 d6 03          sub 003h             	;. .
	ram:5ce8 6f             ld l,a               	;o
	ram:5ce9 26 00          ld h,000h            	;& .
	ram:5ceb f1             pop af               	;.
	ram:5cec e5             push hl              	;.
	ram:5ced c5             push bc              	;.
	ram:5cee e1             pop hl               	;.
	ram:5cef c1             pop bc               	;.
	ram:5cf0 b7             or a                 	;.
	ram:5cf1 ed 42          sbc hl,bc            	;. B
	ram:5cf3 e5             push hl              	;.
	ram:5cf4 cd 4d 3c       call 03c4dh          	;. M <
	ram:5cf7 87             add a,a              	;.
	ram:5cf8 fe 22          cp 022h              	;. "
	ram:5cfa 38 02          jr c,l5cfeh          	;8 .
	ram:5cfc d6 06          sub 006h             	;. .
l5cfeh:
	ram:5cfe 21 a3 80       ld hl,080a3h         	;! . .
	ram:5d01 4f             ld c,a               	;O
	ram:5d02 06 00          ld b,000h            	;. .
	ram:5d04 09             add hl,bc            	;.
	ram:5d05 4e             ld c,(hl)            	;N
	ram:5d06 23             inc hl               	;#
	ram:5d07 46             ld b,(hl)            	;F
	ram:5d08 eb             ex de,hl             	;.
	ram:5d09 09             add hl,bc            	;.
	ram:5d0a eb             ex de,hl             	;.
	ram:5d0b 72             ld (hl),d            	;r
	ram:5d0c 2b             dec hl               	;+
	ram:5d0d 73             ld (hl),e            	;s
	ram:5d0e e1             pop hl               	;.
	ram:5d0f c3 c5 5c       jp l5cc5h            	;. . \
	ram:5d12 fd cb 09 a6    res 4,(iy+009h)      	;. . . .
	ram:5d16 3e ff          ld a,0ffh            	;> .
	ram:5d18 cd a9 5d       call sub_5da9h       	;. . ]
	ram:5d1b 97             sub a                	;.
	ram:5d1c cd a9 5d       call sub_5da9h       	;. . ]
	ram:5d1f 21 00 fc       ld hl,0fc00h         	;! . .
	ram:5d22 0e 20          ld c,020h            	;.  
l5d24h:
	ram:5d24 3e 55          ld a,055h            	;> U
	ram:5d26 cd a2 5d       call sub_5da2h       	;. . ]
	ram:5d29 3e aa          ld a,0aah            	;> .
	ram:5d2b cd a2 5d       call sub_5da2h       	;. . ]
	ram:5d2e 0d             dec c                	;.
	ram:5d2f 20 f3          jr nz,l5d24h         	;.
	ram:5d31 cd 87 3e       call 03e87h          	;. . >
	ram:5d34 b7             or a                 	;.
	ram:5d35 28 29          jr z,l5d60h          	;( )
	ram:5d37 21 00 fc       ld hl,0fc00h         	;! . .
	ram:5d3a 0e 20          ld c,020h            	;.  
l5d3ch:
	ram:5d3c 97             sub a                	;.
	ram:5d3d cd a2 5d       call sub_5da2h       	;. . ]
	ram:5d40 3d             dec a                	;=
	ram:5d41 cd a2 5d       call sub_5da2h       	;. . ]
	ram:5d44 0d             dec c                	;.
	ram:5d45 20 f5          jr nz,l5d3ch         	;.
	ram:5d47 cd 87 3e       call 03e87h          	;. . >
	ram:5d4a b7             or a                 	;.
	ram:5d4b 28 13          jr z,l5d60h          	;( .
	ram:5d4d 3e aa          ld a,0aah            	;> .
	ram:5d4f cd a9 5d       call sub_5da9h       	;. . ]
	ram:5d52 0e 1f          ld c,01fh            	;. .
l5d54h:
	ram:5d54 79             ld a,c               	;y
	ram:5d55 d3 02          out (002h),a         	;. .
	ram:5d57 cd 87 3e       call 03e87h          	;. . >
	ram:5d5a b7             or a                 	;.
	ram:5d5b 28 03          jr z,l5d60h          	;( .
	ram:5d5d 0d             dec c                	;.
	ram:5d5e 20 f4          jr nz,l5d54h         	;.
l5d60h:
	ram:5d60 fd cb 09 a6    res 4,(iy+009h)      	;. . . .
	ram:5d64 cd 39 3e       call 03e39h          	;. 9 >
	ram:5d67 3a 07 80       ld a,(08007h)        	;: . .
	ram:5d6a d3 02          out (002h),a         	;. .
	ram:5d6c dd 21 d7 5d    ld ix,l5dd7h         	;. ! . ]
	ram:5d70 06 31          ld b,031h            	;. 1
l5d72h:
	ram:5d72 21 03 07       ld hl,00703h         	;! . .
	ram:5d75 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5d78 dd 6e 01       ld l,(ix+001h)       	;. n .
	ram:5d7b 26 00          ld h,000h            	;& .
	ram:5d7d cd d9 3d       call 03dd9h          	;. . =
l5d80h:
	ram:5d80 cd be 01       call 001beh          	;. . .
	ram:5d83 cd 75 00       call 00075h          	;. u .
	ram:5d86 c2 d4 0b       jp nz,00bd4h         	;. . .
	ram:5d89 dd be 00       cp (ix+000h)         	;. . .
	ram:5d8c 20 f2          jr nz,l5d80h         	;.
	ram:5d8e dd 23          inc ix               	;. #
	ram:5d90 dd 23          inc ix               	;. #
	ram:5d92 10 de          djnz l5d72h          	;. .
	ram:5d94 cd 39 3e       call 03e39h          	;. 9 >
	ram:5d97 21 03 09       ld hl,00903h         	;! . .
	ram:5d9a 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5d9d 21 fc 31       ld hl,031fch         	;! . 1
	ram:5da0 18 2c          jr l5dceh            	;. ,
sub_5da2h:
	ram:5da2 06 10          ld b,010h            	;. .
l5da4h:
	ram:5da4 77             ld (hl),a            	;w
	ram:5da5 23             inc hl               	;#
	ram:5da6 10 fc          djnz l5da4h          	;. .
	ram:5da8 c9             ret                  	;.
sub_5da9h:
	ram:5da9 21 00 fc       ld hl,0fc00h         	;! . .
	ram:5dac 11 01 fc       ld de,0fc01h         	;. . .
	ram:5daf 01 ff 03       ld bc,003ffh         	;. . .
	ram:5db2 77             ld (hl),a            	;w
	ram:5db3 ed b0          ldir                 	;. .
	ram:5db5 cd 87 3e       call 03e87h          	;. . >
	ram:5db8 e1             pop hl               	;.
	ram:5db9 b7             or a                 	;.
	ram:5dba 28 a4          jr z,l5d60h          	;( .
	ram:5dbc e9             jp (hl)              	;.
	ram:5dbd e5             push hl              	;.
	ram:5dbe cd 39 3e       call 03e39h          	;. 9 >
	ram:5dc1 21 03 07       ld hl,00703h         	;! . .
	ram:5dc4 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5dc7 e1             pop hl               	;.
	ram:5dc8 cd 45 3e       call 03e45h          	;. E >
	ram:5dcb 21 51 31       ld hl,03151h         	;! Q 1
l5dceh:
	ram:5dce cd 45 3e       call 03e45h          	;. E >
	ram:5dd1 cd 87 3e       call 03e87h          	;. . >
	ram:5dd4 c3 d4 0b       jp 00bd4h            	;. . .
l5dd7h:
	ram:5dd7 35             dec (hl)             	;5
	ram:5dd8 0b             dec bc               	;.
	ram:5dd9 34             inc (hl)             	;4
	ram:5dda 0c             inc c                	;.
	ram:5ddb 33             inc sp               	;3
	ram:5ddc 0d             dec c                	;.
	ram:5ddd 32 0e 31       ld (0310eh),a        	;2 . 1
	ram:5de0 0f             rrca                 	;.
	ram:5de1 36 15          ld (hl),015h         	;6 .
	ram:5de3 37             scf                  	;7
	ram:5de4 16 38          ld d,038h            	;. 8
	ram:5de6 17             rla                  	;.
	ram:5de7 02             ld (bc),a            	;.
	ram:5de8 18 04          jr 6                 	;. .
	ram:5dea 19             add hl,de            	;.
	ram:5deb 03             inc bc               	;.
	ram:5dec 1a             ld a,(de)            	;.
	ram:5ded 30 1f          jr nc,l5e0eh         	;0 .
	ram:5def 28 20          jr z,l5e11h          	;(  
	ram:5df1 20 21          jr nz,l5e14h         	;!
	ram:5df3 01 22 2f       ld bc,02f22h         	;. " /
	ram:5df6 29             add hl,hl            	;)
	ram:5df7 27             daa                  	;'
	ram:5df8 2a 1f 2b       ld hl,(02b1fh)       	;* . +
	ram:5dfb 17             rla                  	;.
	ram:5dfc 2c             inc l                	;,
	ram:5dfd 0f             rrca                 	;.
	ram:5dfe 2d             dec l                	;-
	ram:5dff 2e 33          ld l,033h            	;. 3
	ram:5e01 26 34          ld h,034h            	;& 4
	ram:5e03 1e 35          ld e,035h            	;. 5
	ram:5e05 16 36          ld d,036h            	;. 6
	ram:5e07 0e 37          ld c,037h            	;. 7
	ram:5e09 2d             dec l                	;-
	ram:5e0a 3d             dec a                	;=
	ram:5e0b 25             dec h                	;%
	ram:5e0c 3e 1d          ld a,01dh            	;> .
l5e0eh:
	ram:5e0e 3f             ccf                  	;?
	ram:5e0f 15             dec d                	;.
	ram:5e10 40             ld b,b               	;@
l5e11h:
	ram:5e11 0d             dec c                	;.
	ram:5e12 41             ld b,c               	;A
	ram:5e13 2c             inc l                	;,
l5e14h:
	ram:5e14 47             ld b,a               	;G
	ram:5e15 24             inc h                	;$
	ram:5e16 48             ld c,b               	;H
	ram:5e17 1c             inc e                	;.
	ram:5e18 49             ld c,c               	;I
	ram:5e19 14             inc d                	;.
	ram:5e1a 4a             ld c,d               	;J
	ram:5e1b 0c             inc c                	;.
	ram:5e1c 4b             ld c,e               	;K
	ram:5e1d 2b             dec hl               	;+
	ram:5e1e 51             ld d,c               	;Q
	ram:5e1f 23             inc hl               	;#
	ram:5e20 52             ld d,d               	;R
	ram:5e21 1b             dec de               	;.
	ram:5e22 53             ld d,e               	;S
	ram:5e23 13             inc de               	;.
	ram:5e24 54             ld d,h               	;T
	ram:5e25 0b             dec bc               	;.
	ram:5e26 55             ld d,l               	;U
	ram:5e27 2a 5b 22       ld hl,(0225bh)       	;* [ "
	ram:5e2a 5c             ld e,h               	;\
	ram:5e2b 1a             ld a,(de)            	;.
	ram:5e2c 5d             ld e,l               	;]
	ram:5e2d 12             ld (de),a            	;.
	ram:5e2e 5e             ld e,(hl)            	;^
	ram:5e2f 0a             ld a,(bc)            	;.
	ram:5e30 5f             ld e,a               	;_
	ram:5e31 21 66 19       ld hl,01966h         	;! f .
	ram:5e34 67             ld h,a               	;g
	ram:5e35 11 68 09       ld de,00968h         	;. h .
	ram:5e38 69             ld l,c               	;i
	ram:5e39 21 06 80       ld hl,08006h         	;! . .
	ram:5e3c 7e             ld a,(hl)            	;~
	ram:5e3d b7             or a                 	;.
	ram:5e3e 20 04          jr nz,l5e44h         	;.
	ram:5e40 67             ld h,a               	;g
	ram:5e41 6f             ld l,a               	;o
	ram:5e42 18 0a          jr l5e4eh            	;. .
l5e44h:
	ram:5e44 5f             ld e,a               	;_
	ram:5e45 16 00          ld d,000h            	;. .
	ram:5e47 72             ld (hl),d            	;r
	ram:5e48 21 53 5e       ld hl,05e53h         	;! S ^
	ram:5e4b 19             add hl,de            	;.
	ram:5e4c 6e             ld l,(hl)            	;n
	ram:5e4d 62             ld h,d               	;b
l5e4eh:
	ram:5e4e cd ef 39       call 039efh          	;. . 9
	ram:5e51 c3 be 01       jp 001beh            	;. . .
	ram:5e54 22 18 1a       ld (01a18h),hl       	;" . .
	ram:5e57 19             add hl,de            	;.
	ram:5e58 00             nop                  	;.
	ram:5e59 00             nop                  	;.
	ram:5e5a 00             nop                  	;.
	ram:5e5b 00             nop                  	;.
	ram:5e5c 69             ld l,c               	;i
	ram:5e5d 5f             ld e,a               	;_
	ram:5e5e 55             ld d,l               	;U
	ram:5e5f 4b             ld c,e               	;K
	ram:5e60 41             ld b,c               	;A
	ram:5e61 37             scf                  	;7
	ram:5e62 2d             dec l                	;-
	ram:5e63 00             nop                  	;.
	ram:5e64 68             ld l,b               	;h
	ram:5e65 5e             ld e,(hl)            	;^
	ram:5e66 54             ld d,h               	;T
	ram:5e67 4a             ld c,d               	;J
	ram:5e68 40             ld b,b               	;@
	ram:5e69 36 2c          ld (hl),02ch         	;6 ,
	ram:5e6b 00             nop                  	;.
	ram:5e6c 67             ld h,a               	;g
	ram:5e6d 5d             ld e,l               	;]
	ram:5e6e 53             ld d,e               	;S
	ram:5e6f 49             ld c,c               	;I
	ram:5e70 3f             ccf                  	;?
	ram:5e71 35             dec (hl)             	;5
	ram:5e72 2b             dec hl               	;+
	ram:5e73 21 66 5c       ld hl,l5c66h         	;! f \
	ram:5e76 52             ld d,d               	;R
	ram:5e77 48             ld c,b               	;H
	ram:5e78 3e 34          ld a,034h            	;> 4
	ram:5e7a 2a 20 00       ld hl,(00020h)       	;*   .
	ram:5e7d 5b             ld e,e               	;[
	ram:5e7e 51             ld d,c               	;Q
	ram:5e7f 47             ld b,a               	;G
	ram:5e80 3d             dec a                	;=
	ram:5e81 33             inc sp               	;3
	ram:5e82 29             add hl,hl            	;)
	ram:5e83 1f             rra                  	;.
	ram:5e84 0f             rrca                 	;.
	ram:5e85 0e 0d          ld c,00dh            	;. .
	ram:5e87 0c             inc c                	;.
	ram:5e88 0b             dec bc               	;.
	ram:5e89 15             dec d                	;.
	ram:5e8a 16 17          ld d,017h            	;. .
	ram:5e8c 21 2c 8b       ld hl,08b2ch         	;! , .
	ram:5e8f 73             ld (hl),e            	;s
	ram:5e90 21 17 5f       ld hl,l5f17h         	;! . _
	ram:5e93 cd 50 06       call 00650h          	;. P .
l5e96h:
	ram:5e96 3a 05 80       ld a,(08005h)        	;: . .
	ram:5e99 fe 85          cp 085h              	;. .
	ram:5e9b 20 04          jr nz,l5ea1h         	;.
	ram:5e9d fd cb 08 8e    res 1,(iy+008h)      	;. . . .
l5ea1h:
	ram:5ea1 cd 1a 62       call sub_621ah       	;. . b
	ram:5ea4 fd cb 00 b6    res 6,(iy+000h)      	;. . . .
	ram:5ea8 cd 39 3e       call 03e39h          	;. 9 >
	ram:5eab cd 13 00       call 00013h          	;. . .
	ram:5eae c2 56 63       jp nz,l6356h         	;. V c
	ram:5eb1 cd 3e 63       call sub_633eh       	;. > c
	ram:5eb4 fd cb 00 fe    set 7,(iy+000h)      	;. . . .
	ram:5eb8 21 30 31       ld hl,03130h         	;! 0 1
	ram:5ebb cd 7f 3d       call 03d7fh          	;. . =
	ram:5ebe 97             sub a                	;.
	ram:5ebf 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:5ec2 cd f1 34       call 034f1h          	;. . 4
	ram:5ec5 d7             rst 10h              	;.
	ram:5ec6 38 09          jr c,l5ed1h          	;8 .
	ram:5ec8 e6 1f          and 01fh             	;. .
	ram:5eca fe 0a          cp 00ah              	;. .
	ram:5ecc 28 12          jr z,l5ee0h          	;( .
	ram:5ece cd 0b 2c       call 02c0bh          	;. . ,
l5ed1h:
	ram:5ed1 21 45 0a       ld hl,00a45h         	;! E .
	ram:5ed4 cd b5 0a       call 00ab5h          	;. . .
	ram:5ed7 21 00 00       ld hl,00000h         	;! . .
	ram:5eda cd 2f 2a       call 02a2fh          	;. / *
	ram:5edd cd db 0a       call 00adbh          	;. . .
l5ee0h:
	ram:5ee0 22 25 8b       ld (08b25h),hl       	;" % .
	ram:5ee3 ed 53 27 8b    ld (08b27h),de       	;. S ' .
	ram:5ee7 cd 72 26       call 02672h          	;. r &
	ram:5eea cd 61 34       call 03461h          	;. a 4
	ram:5eed cd a3 34       call 034a3h          	;. . 4
	ram:5ef0 cd 87 3b       call 03b87h          	;. . ;
	ram:5ef3 cd 7b 3b       call 03b7bh          	;. { ;
	ram:5ef6 fd cb 05 b6    res 6,(iy+005h)      	;. . . .
l5efah:
	ram:5efa 3e 64          ld a,064h            	;> d
	ram:5efc cd 11 3c       call 03c11h          	;. . <
	ram:5eff c9             ret                  	;.
	ram:5f00 cd 33 26       call 02633h          	;. 3 &
	ram:5f03 d7             rst 10h              	;.
	ram:5f04 d2 13 34       jp nc,03413h         	;. . 4
	ram:5f07 cd 95 3c       call 03c95h          	;. . <
	ram:5f0a cd af 60       call sub_60afh       	;. . `
	ram:5f0d cd 87 3b       call 03b87h          	;. . ;
	ram:5f10 cd 7b 3b       call 03b7bh          	;. { ;
	ram:5f13 c9             ret                  	;.
	ram:5f14 c3 a5 3b       jp 03ba5h            	;. . ;
l5f17h:
	ram:5f17 24             inc h                	;$
	ram:5f18 5f             ld e,a               	;_
	ram:5f19 14             inc d                	;.
	ram:5f1a 5f             ld e,a               	;_
	ram:5f1b 67             ld h,a               	;g
	ram:5f1c 65             ld h,l               	;e
	ram:5f1d a7             and a                	;.
	ram:5f1e 60             ld h,b               	;`
	ram:5f1f 00             nop                  	;.
	ram:5f20 5f             ld e,a               	;_
	ram:5f21 d9             exx                  	;.
	ram:5f22 64             ld h,h               	;d
	ram:5f23 0a             ld a,(bc)            	;.
	ram:5f24 fe 06          cp 006h              	;. .
	ram:5f26 28 04          jr z,l5f2ch          	;( .
	ram:5f28 fe 04          cp 004h              	;. .
	ram:5f2a 20 33          jr nz,l5f5fh         	;3
l5f2ch:
	ram:5f2c fd cb 00 7e    bit 7,(iy+000h)      	;. . . ~
	ram:5f30 c2 5c 63       jp nz,l635ch         	;. \ c
	ram:5f33 cd d3 60       call sub_60d3h       	;. . `
	ram:5f36 cd 2a 61       call sub_612ah       	;. * a
	ram:5f39 cd cc 61       call sub_61cch       	;. . a
	ram:5f3c 20 1c          jr nz,l5f5ah         	;.
	ram:5f3e cd 38 26       call 02638h          	;. 8 &
	ram:5f41 d7             rst 10h              	;.
	ram:5f42 38 3d          jr c,l5f81h          	;8 =
	ram:5f44 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:5f47 3c             inc a                	;<
	ram:5f48 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:5f4b be             cp (hl)              	;.
	ram:5f4c 38 07          jr c,l5f55h          	;8 .
	ram:5f4e cd 67 3d       call 03d67h          	;. g =
	ram:5f51 21 0c 80       ld hl,0800ch         	;! . .
	ram:5f54 35             dec (hl)             	;5
l5f55h:
	ram:5f55 cd d8 62       call sub_62d8h       	;. . b
	ram:5f58 18 27          jr l5f81h            	;. '
l5f5ah:
	ram:5f5a cd 9d 3d       call 03d9dh          	;. . =
	ram:5f5d 18 18          jr l5f77h            	;. .
l5f5fh:
	ram:5f5f fe 03          cp 003h              	;. .
	ram:5f61 20 21          jr nz,l5f84h         	;!
	ram:5f63 fd cb 00 7e    bit 7,(iy+000h)      	;. . . ~
	ram:5f67 c0             ret nz               	;.
	ram:5f68 cd d3 60       call sub_60d3h       	;. . `
	ram:5f6b cd 2a 61       call sub_612ah       	;. * a
	ram:5f6e cd b4 61       call sub_61b4h       	;. . a
	ram:5f71 ca 5b 60       jp z,l605bh          	;. [ `
	ram:5f74 cd 97 3d       call 03d97h          	;. . =
l5f77h:
	ram:5f77 97             sub a                	;.
	ram:5f78 32 0d 80       ld (0800dh),a        	;2 . .
	ram:5f7b 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:5f7e cd 51 62       call sub_6251h       	;. Q b
l5f81h:
	ram:5f81 c3 af 60       jp sub_60afh         	;. . `
l5f84h:
	ram:5f84 fe a6          cp 0a6h              	;. .
	ram:5f86 c2 4d 60       jp nz,l604dh         	;. M `
	ram:5f89 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:5f8c cd 0b 62       call sub_620bh       	;. . b
	ram:5f8f c8             ret z                	;.
	ram:5f90 cd 79 60       call sub_6079h       	;. y `
	ram:5f93 cd d3 60       call sub_60d3h       	;. . `
l5f96h:
	ram:5f96 cd a5 64       call sub_64a5h       	;. . d
	ram:5f99 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:5f9c 7e             ld a,(hl)            	;~
	ram:5f9d e6 1f          and 01fh             	;. .
	ram:5f9f fe 14          cp 014h              	;. .
	ram:5fa1 20 1a          jr nz,l5fbdh         	;.
	ram:5fa3 21 9f 84       ld hl,0849fh         	;! . .
	ram:5fa6 e7             rst 20h              	;.
	ram:5fa7 cd 3a 0d       call 00d3ah          	;. : .
	ram:5faa cd 52 0e       call 00e52h          	;. R .
	ram:5fad ed 5b 27 8b    ld de,(08b27h)       	;. [ ' .
	ram:5fb1 21 82 80       ld hl,08082h         	;! . .
	ram:5fb4 cd 9d 20       call 0209dh          	;. .  
	ram:5fb7 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:5fba 3e 00          ld a,000h            	;> .
	ram:5fbc 77             ld (hl),a            	;w
l5fbdh:
	ram:5fbd 2a 27 8b       ld hl,(08b27h)       	;* ' .
	ram:5fc0 fe 00          cp 000h              	;. .
	ram:5fc2 28 17          jr z,l5fdbh          	;( .
	ram:5fc4 fe 04          cp 004h              	;. .
	ram:5fc6 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:5fc9 5e             ld e,(hl)            	;^
	ram:5fca 23             inc hl               	;#
	ram:5fcb 56             ld d,(hl)            	;V
	ram:5fcc 23             inc hl               	;#
	ram:5fcd e5             push hl              	;.
	ram:5fce 21 02 00       ld hl,00002h         	;! . .
	ram:5fd1 cd 8e 00       call 0008eh          	;. . .
	ram:5fd4 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:5fd7 e1             pop hl               	;.
	ram:5fd8 cd 98 61       call sub_6198h       	;. . a
l5fdbh:
	ram:5fdb cd 98 61       call sub_6198h       	;. . a
	ram:5fde cd f1 34       call 034f1h          	;. . 4
	ram:5fe1 df             rst 18h              	;.
	ram:5fe2 cd 07 34       call 03407h          	;. . 4
	ram:5fe5 df             rst 18h              	;.
	ram:5fe6 97             sub a                	;.
	ram:5fe7 32 37 83       ld (08337h),a        	;2 7 .
	ram:5fea cd df 61       call sub_61dfh       	;. . a
	ram:5fed cd 1a 64       call sub_641ah       	;. . d
	ram:5ff0 21 15 60       ld hl,l6015h         	;! . `
	ram:5ff3 cd b5 0a       call 00ab5h          	;. . .
	ram:5ff6 cd c9 38       call 038c9h          	;. . 8
	ram:5ff9 cd 1f 28       call 0281fh          	;. . (
	ram:5ffc cd 48 63       call sub_6348h       	;. H c
	ram:5fff fd cb 00 f6    set 6,(iy+000h)      	;. . . .
	ram:6003 cd db 0a       call 00adbh          	;. . .
	ram:6006 cd f1 61       call sub_61f1h       	;. . a
	ram:6009 cd f8 61       call sub_61f8h       	;. . a
	ram:600c cd d8 62       call sub_62d8h       	;. . b
	ram:600f cd 2a 61       call sub_612ah       	;. * a
	ram:6012 c3 af 60       jp sub_60afh         	;. . `
l6015h:
	ram:6015 fd cb 09 a6    res 4,(iy+009h)      	;. . . .
	ram:6019 f5             push af              	;.
	ram:601a cd f1 61       call sub_61f1h       	;. . a
	ram:601d cd f8 61       call sub_61f8h       	;. . a
	ram:6020 f1             pop af               	;.
	ram:6021 fe 86          cp 086h              	;. .
	ram:6023 28 1f          jr z,l6044h          	;( .
	ram:6025 fe 9b          cp 09bh              	;. .
	ram:6027 28 0c          jr z,l6035h          	;( .
	ram:6029 fe 9d          cp 09dh              	;. .
	ram:602b 28 17          jr z,l6044h          	;( .
	ram:602d fe 9a          cp 09ah              	;. .
	ram:602f 28 13          jr z,l6044h          	;( .
	ram:6031 fe 9c          cp 09ch              	;. .
	ram:6033 20 15          jr nz,l604ah         	;.
l6035h:
	ram:6035 21 15 60       ld hl,l6015h         	;! . `
	ram:6038 cd b5 0a       call 00ab5h          	;. . .
	ram:603b cd 48 63       call sub_6348h       	;. H c
	ram:603e cd db 0a       call 00adbh          	;. . .
	ram:6041 cd d8 62       call sub_62d8h       	;. . b
l6044h:
	ram:6044 cd 2b 00       call 0002bh          	;. + .
	ram:6047 cd 2a 61       call sub_612ah       	;. * a
l604ah:
	ram:604a c3 8a 0a       jp 00a8ah            	;. . .
l604dh:
	ram:604d fe c1          cp 0c1h              	;. .
	ram:604f 20 17          jr nz,l6068h         	;.
	ram:6051 fd cb 00 7e    bit 7,(iy+000h)      	;. . . ~
	ram:6055 c2 fa 5e       jp nz,l5efah         	;. . ^
	ram:6058 cd d3 60       call sub_60d3h       	;. . `
l605bh:
	ram:605b cd a1 65       call sub_65a1h       	;. . e
	ram:605e fd cb 08 8e    res 1,(iy+008h)      	;. . . .
	ram:6062 cd c3 3e       call 03ec3h          	;. . >
	ram:6065 c3 96 5e       jp l5e96h            	;. . ^
l6068h:
	ram:6068 fe 16          cp 016h              	;. .
	ram:606a c8             ret z                	;.
	ram:606b cd 19 34       call 03419h          	;. . 4
	ram:606e fe 08          cp 008h              	;. .
	ram:6070 28 07          jr z,sub_6079h       	;( .
	ram:6072 fe 09          cp 009h              	;. .
	ram:6074 28 03          jr z,sub_6079h       	;( .
	ram:6076 79             ld a,c               	;y
	ram:6077 b7             or a                 	;.
	ram:6078 c8             ret z                	;.
sub_6079h:
	ram:6079 fd cb 00 76    bit 6,(iy+000h)      	;. . . v
	ram:607d c8             ret z                	;.
	ram:607e fd cb 00 b6    res 6,(iy+000h)      	;. . . .
	ram:6082 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:6085 e5             push hl              	;.
	ram:6086 21 01 00       ld hl,00001h         	;! . .
	ram:6089 22 0c 80       ld (0800ch),hl       	;" . .
	ram:608c 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:608f 3d             dec a                	;=
	ram:6090 47             ld b,a               	;G
l6091h:
	ram:6091 cd 77 3c       call 03c77h          	;. w <
	ram:6094 7e             ld a,(hl)            	;~
	ram:6095 fe d0          cp 0d0h              	;. .
	ram:6097 3e 20          ld a,020h            	;>  
	ram:6099 cc cd 3d       call z,03dcdh        	;. . =
	ram:609c 21 0c 80       ld hl,0800ch         	;! . .
	ram:609f 34             inc (hl)             	;4
	ram:60a0 10 ef          djnz l6091h          	;. .
	ram:60a2 e1             pop hl               	;.
	ram:60a3 22 0c 80       ld (0800ch),hl       	;" . .
	ram:60a6 c9             ret                  	;.
	ram:60a7 cd 95 3c       call 03c95h          	;. . <
	ram:60aa fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:60ae c0             ret nz               	;.
sub_60afh:
	ram:60af cd a3 34       call 034a3h          	;. . 4
	ram:60b2 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:60b6 2a 25 8b       ld hl,(08b25h)       	;* % .
sub_60b9h:
	ram:60b9 7e             ld a,(hl)            	;~
	ram:60ba f5             push af              	;.
	ram:60bb 2b             dec hl               	;+
	ram:60bc 5e             ld e,(hl)            	;^
	ram:60bd 2b             dec hl               	;+
	ram:60be 56             ld d,(hl)            	;V
	ram:60bf ed 53 27 8b    ld (08b27h),de       	;. S ' .
	ram:60c3 d5             push de              	;.
	ram:60c4 cd 51 35       call 03551h          	;. Q 5
	ram:60c7 cd 7b 35       call 0357bh          	;. { 5
	ram:60ca e1             pop hl               	;.
	ram:60cb f1             pop af               	;.
	ram:60cc cd 22 59       call sub_5922h       	;. " Y
	ram:60cf cd a7 3c       call 03ca7h          	;. . <
	ram:60d2 c9             ret                  	;.
sub_60d3h:
	ram:60d3 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:60d7 cd d2 01       call 001d2h          	;. . .
	ram:60da cd e1 60       call sub_60e1h       	;. . `
	ram:60dd cd 27 35       call 03527h          	;. ' 5
	ram:60e0 c9             ret                  	;.
sub_60e1h:
	ram:60e1 cd bf 3c       call 03cbfh          	;. . <
	ram:60e4 28 23          jr z,l6109h          	;( #
	ram:60e6 cd b5 65       call sub_65b5h       	;. . e
	ram:60e9 cd cb 3c       call 03ccbh          	;. . <
	ram:60ec cd 40 0a       call 00a40h          	;. @ .
	ram:60ef cd 33 26       call 02633h          	;. 3 &
	ram:60f2 cd f3 35       call 035f3h          	;. . 5
	ram:60f5 df             rst 18h              	;.
	ram:60f6 cd 07 34       call 03407h          	;. . 4
	ram:60f9 cd af 3a       call 03aafh          	;. . :
	ram:60fc cd 1f 28       call 0281fh          	;. . (
	ram:60ff 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:6102 cd 0b 62       call sub_620bh       	;. . b
	ram:6105 c0             ret nz               	;.
	ram:6106 c3 7a 64       jp l647ah            	;. z d
l6109h:
	ram:6109 cd cb 3c       call 03ccbh          	;. . <
	ram:610c cd 07 34       call 03407h          	;. . 4
	ram:610f d7             rst 10h              	;.
	ram:6110 e6 1f          and 01fh             	;. .
	ram:6112 fe 14          cp 014h              	;. .
	ram:6114 c8             ret z                	;.
	ram:6115 e5             push hl              	;.
	ram:6116 cd 98 21       call 02198h          	;. . !
	ram:6119 df             rst 18h              	;.
	ram:611a cd 07 34       call 03407h          	;. . 4
	ram:611d cd af 3a       call 03aafh          	;. . :
	ram:6120 e1             pop hl               	;.
	ram:6121 36 14          ld (hl),014h         	;6 .
	ram:6123 cd 0b 62       call sub_620bh       	;. . b
	ram:6126 c8             ret z                	;.
	ram:6127 cb fe          set 7,(hl)           	;. .
	ram:6129 c9             ret                  	;.
sub_612ah:
	ram:612a cd 31 34       call 03431h          	;. 1 4
	ram:612d 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:6130 c3 7e 62       jp l627eh            	;. ~ b
sub_6133h:
	ram:6133 d5             push de              	;.
	ram:6134 2b             dec hl               	;+
	ram:6135 2b             dec hl               	;+
	ram:6136 2b             dec hl               	;+
	ram:6137 5e             ld e,(hl)            	;^
	ram:6138 16 00          ld d,000h            	;. .
	ram:613a 37             scf                  	;7
	ram:613b ed 52          sbc hl,de            	;. R
	ram:613d ed 5b eb 8b    ld de,(08bebh)       	;. [ . .
	ram:6141 cd 8e 00       call 0008eh          	;. . .
	ram:6144 d1             pop de               	;.
	ram:6145 c9             ret                  	;.
l6146h:
	ram:6146 cd 33 61       call sub_6133h       	;. 3 a
	ram:6149 c8             ret z                	;.
	ram:614a cb 7e          bit 7,(hl)           	;. ~
	ram:614c 28 f8          jr z,l6146h          	;( .
l614eh:
	ram:614e c9             ret                  	;.
sub_614fh:
	ram:614f c5             push bc              	;.
	ram:6150 d5             push de              	;.
	ram:6151 01 00 00       ld bc,00000h         	;. . .
	ram:6154 eb             ex de,hl             	;.
	ram:6155 cd 6d 61       call sub_616dh       	;. m a
l6158h:
	ram:6158 cd 8e 00       call 0008eh          	;. . .
	ram:615b 38 09          jr c,l6166h          	;8 .
	ram:615d 28 07          jr z,l6166h          	;( .
	ram:615f 4d             ld c,l               	;M
	ram:6160 44             ld b,h               	;D
	ram:6161 cd 46 61       call l6146h          	;. F a
	ram:6164 20 f2          jr nz,l6158h         	;.
l6166h:
	ram:6166 79             ld a,c               	;y
	ram:6167 b0             or b                 	;.
	ram:6168 69             ld l,c               	;i
	ram:6169 60             ld h,b               	;`
	ram:616a d1             pop de               	;.
	ram:616b c1             pop bc               	;.
	ram:616c c9             ret                  	;.
sub_616dh:
	ram:616d 21 6f fa       ld hl,0fa6fh         	;! o .
l6170h:
	ram:6170 cb 7e          bit 7,(hl)           	;. ~
l6172h:
	ram:6172 c0             ret nz               	;.
	ram:6173 cd 33 61       call sub_6133h       	;. 3 a
	ram:6176 20 f8          jr nz,l6170h         	;.
	ram:6178 c9             ret                  	;.
sub_6179h:
	ram:6179 cd 4b 3e       call 03e4bh          	;. K >
	ram:617c 21 6f fa       ld hl,0fa6fh         	;! o .
l617fh:
	ram:617f cb 7e          bit 7,(hl)           	;. ~
	ram:6181 28 0a          jr z,l618dh          	;( .
	ram:6183 cd 51 62       call sub_6251h       	;. Q b
	ram:6186 cd a9 3d       call 03da9h          	;. . =
	ram:6189 cd af 3d       call 03dafh          	;. . =
	ram:618c d0             ret nc               	;.
l618dh:
	ram:618d cd 33 61       call sub_6133h       	;. 3 a
	ram:6190 20 ed          jr nz,l617fh         	;.
	ram:6192 cd 4a 62       call sub_624ah       	;. J b
	ram:6195 c3 d8 62       jp sub_62d8h         	;. . b
sub_6198h:
	ram:6198 e5             push hl              	;.
	ram:6199 e7             rst 20h              	;.
	ram:619a 21 9f 84       ld hl,0849fh         	;! . .
	ram:619d cd 83 1f       call 01f83h          	;. . .
	ram:61a0 da 75 0a       jp c,00a75h          	;. u .
	ram:61a3 21 a9 84       ld hl,084a9h         	;! . .
	ram:61a6 e7             rst 20h              	;.
	ram:61a7 e1             pop hl               	;.
	ram:61a8 cd 0b 21       call 0210bh          	;. . !
	ram:61ab e5             push hl              	;.
	ram:61ac cd 8e 1f       call 01f8eh          	;. . .
	ram:61af da 75 0a       jp c,00a75h          	;. u .
	ram:61b2 e1             pop hl               	;.
	ram:61b3 c9             ret                  	;.
sub_61b4h:
	ram:61b4 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:61b7 cd 0b 62       call sub_620bh       	;. . b
	ram:61ba 20 03          jr nz,l61bfh         	;.
	ram:61bc 2a eb 8b       ld hl,(08bebh)       	;* . .
l61bfh:
	ram:61bf cd 4f 61       call sub_614fh       	;. O a
	ram:61c2 c8             ret z                	;.
	ram:61c3 cd 0b 62       call sub_620bh       	;. . b
	ram:61c6 28 f7          jr z,l61bfh          	;( .
	ram:61c8 22 25 8b       ld (08b25h),hl       	;" % .
	ram:61cb c9             ret                  	;.
sub_61cch:
	ram:61cc 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:61cf cd 0b 62       call sub_620bh       	;. . b
	ram:61d2 c8             ret z                	;.
	ram:61d3 cd 46 61       call l6146h          	;. F a
	ram:61d6 cc 42 62       call z,sub_6242h     	;. B b
	ram:61d9 22 25 8b       ld (08b25h),hl       	;" % .
	ram:61dc 97             sub a                	;.
	ram:61dd 3c             inc a                	;<
	ram:61de c9             ret                  	;.
sub_61dfh:
	ram:61df 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:61e2 2b             dec hl               	;+
	ram:61e3 2b             dec hl               	;+
	ram:61e4 2b             dec hl               	;+
	ram:61e5 46             ld b,(hl)            	;F
	ram:61e6 04             inc b                	;.
	ram:61e7 11 36 86       ld de,08636h         	;. 6 .
l61eah:
	ram:61ea 7e             ld a,(hl)            	;~
	ram:61eb 12             ld (de),a            	;.
	ram:61ec 13             inc de               	;.
	ram:61ed 2b             dec hl               	;+
	ram:61ee 10 fa          djnz l61eah          	;. .
	ram:61f0 c9             ret                  	;.
sub_61f1h:
	ram:61f1 cd f1 34       call 034f1h          	;. . 4
	ram:61f4 cd ff 35       call 035ffh          	;. . 5
	ram:61f7 c9             ret                  	;.
sub_61f8h:
	ram:61f8 21 35 86       ld hl,08635h         	;! 5 .
	ram:61fb e7             rst 20h              	;.
	ram:61fc d7             rst 10h              	;.
	ram:61fd dc 42 62       call c,sub_6242h     	;. B b
	ram:6200 22 25 8b       ld (08b25h),hl       	;" % .
	ram:6203 22 e1 85       ld (085e1h),hl       	;" . .
	ram:6206 ed 53 27 8b    ld (08b27h),de       	;. S ' .
	ram:620a c9             ret                  	;.
sub_620bh:
	ram:620b e5             push hl              	;.
	ram:620c dd e1          pop ix               	;. .
	ld a,(ix-003h)		;620e	dd 7e fd	. ~ .
	ram:6211 fe 01          cp 001h              	;. .
	ram:6213 c0             ret nz               	;.
	ld a,(ix-004h)		;6214	dd 7e fc	. ~ .
	ram:6217 fe 2f          cp 02fh              	;. /
	ram:6219 c9             ret                  	;.
sub_621ah:
	ram:621a 21 01 2f       ld hl,02f01h         	;! . /
	ram:621d 22 83 80       ld (08083h),hl       	;" . .
	ram:6220 21 45 0a       ld hl,00a45h         	;! E .
	ram:6223 cd b5 0a       call 00ab5h          	;. . .
	ram:6226 21 02 00       ld hl,00002h         	;! . .
	ram:6229 cd d9 29       call 029d9h          	;. . )
	ram:622c cd db 0a       call 00adbh          	;. . .
	ram:622f 13             inc de               	;.
	ram:6230 13             inc de               	;.
	ram:6231 21 9f 84       ld hl,0849fh         	;! . .
	ram:6234 cd 13 00       call 00013h          	;. . .
	ram:6237 20 03          jr nz,l623ch         	;.
	ram:6239 21 c5 64       ld hl,l64c5h         	;! . d
l623ch:
	ram:623c cd 9d 20       call 0209dh          	;. .  
	ram:623f c3 9d 20       jp 0209dh            	;. .  
sub_6242h:
	ram:6242 21 01 2f       ld hl,02f01h         	;! . /
	ram:6245 22 83 80       ld (08083h),hl       	;" . .
	ram:6248 d7             rst 10h              	;.
	ram:6249 c9             ret                  	;.
sub_624ah:
	ram:624a cd 42 62       call sub_6242h       	;. B b
	ram:624d 97             sub a                	;.
	ram:624e 32 0d 80       ld (0800dh),a        	;2 . .
sub_6251h:
	ram:6251 d5             push de              	;.
	ram:6252 e5             push hl              	;.
	ram:6253 3e 20          ld a,020h            	;>  
	ram:6255 cd c5 3f       call 03fc5h          	;. . ?
	ram:6258 cd 0b 62       call sub_620bh       	;. . b
	ram:625b 20 05          jr nz,l6262h         	;.
	ram:625d 21 c8 30       ld hl,030c8h         	;! . 0
	ram:6260 18 12          jr l6274h            	;. .
l6262h:
	ram:6262 cd c9 62       call sub_62c9h       	;. . b
	ram:6265 20 05          jr nz,l626ch         	;.
	ram:6267 21 9b 31       ld hl,0319bh         	;! . 1
	ram:626a 18 08          jr l6274h            	;. .
l626ch:
	ram:626c cd 0d 34       call 0340dh          	;. . 4
	ram:626f 97             sub a                	;.
	ram:6270 12             ld (de),a            	;.
	ram:6271 21 84 80       ld hl,08084h         	;! . .
l6274h:
	ram:6274 cd 45 3e       call 03e45h          	;. E >
	ram:6277 3e 3d          ld a,03dh            	;> =
	ram:6279 cd c5 3f       call 03fc5h          	;. . ?
	ram:627c e1             pop hl               	;.
	ram:627d d1             pop de               	;.
l627eh:
	ram:627e 7e             ld a,(hl)            	;~
	ram:627f e6 1f          and 01fh             	;. .
	ram:6281 fe 14          cp 014h              	;. .
	ram:6283 c8             ret z                	;.
	ram:6284 d5             push de              	;.
	ram:6285 e5             push hl              	;.
	ram:6286 2b             dec hl               	;+
	ram:6287 cd ef 6c       call sub_6cefh       	;. . l
	ram:628a 5e             ld e,(hl)            	;^
	ram:628b 2b             dec hl               	;+
	ram:628c 66             ld h,(hl)            	;f
	ram:628d 6b             ld l,e               	;k
	ram:628e cd 22 59       call sub_5922h       	;. " Y
	ram:6291 da 45 0a       jp c,00a45h          	;. E .
	ram:6294 cd 87 3b       call 03b87h          	;. . ;
	ram:6297 cd a7 3c       call 03ca7h          	;. . <
	ram:629a cd 7b 3b       call 03b7bh          	;. { ;
	ram:629d e1             pop hl               	;.
	ram:629e fd cb 00 76    bit 6,(iy+000h)      	;. . . v
	ram:62a2 28 1c          jr z,l62c0h          	;( .
	ram:62a4 ed 5b e1 85    ld de,(085e1h)       	;. [ . .
	ram:62a8 cd 8e 00       call 0008eh          	;. . .
	ram:62ab 20 13          jr nz,l62c0h         	;.
	ram:62ad e5             push hl              	;.
	ram:62ae 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:62b1 e5             push hl              	;.
	ram:62b2 97             sub a                	;.
	ram:62b3 32 0d 80       ld (0800dh),a        	;2 . .
	ram:62b6 3e d0          ld a,0d0h            	;> .
	ram:62b8 cd c5 3f       call 03fc5h          	;. . ?
	ram:62bb e1             pop hl               	;.
	ram:62bc 22 0c 80       ld (0800ch),hl       	;" . .
	ram:62bf e1             pop hl               	;.
l62c0h:
	ram:62c0 d1             pop de               	;.
	ram:62c1 c9             ret                  	;.
sub_62c2h:
	ram:62c2 cd 42 62       call sub_6242h       	;. B b
	ram:62c5 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:62c8 c9             ret                  	;.
sub_62c9h:
	ram:62c9 e5             push hl              	;.
	ram:62ca dd e1          pop ix               	;. .
	ld a,(ix-003h)		;62cc	dd 7e fd	. ~ .
	ram:62cf fe 01          cp 001h              	;. .
	ram:62d1 c0             ret nz               	;.
	ld a,(ix-004h)		;62d2	dd 7e fc	. ~ .
	ram:62d5 fe 2a          cp 02ah              	;. *
	ram:62d7 c9             ret                  	;.
sub_62d8h:
	ram:62d8 cd 38 26       call 02638h          	;. 8 &
	ram:62db d7             rst 10h              	;.
	ram:62dc d8             ret c                	;.
	ram:62dd d5             push de              	;.
	ram:62de 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:62e1 e3             ex (sp),hl           	;.
	ram:62e2 e5             push hl              	;.
	ram:62e3 cd 13 63       call sub_6313h       	;. . c
	ram:62e6 28 03          jr z,l62ebh          	;( .
	ram:62e8 e1             pop hl               	;.
	ram:62e9 18 23          jr l630eh            	;. #
l62ebh:
	ram:62eb 3e 20          ld a,020h            	;>  
	ram:62ed fd cb 00 76    bit 6,(iy+000h)      	;. . . v
	ram:62f1 28 02          jr z,l62f5h          	;( .
	ram:62f3 3e d0          ld a,0d0h            	;> .
l62f5h:
	ram:62f5 cd c5 3f       call 03fc5h          	;. . ?
	ram:62f8 21 9b 31       ld hl,0319bh         	;! . 1
	ram:62fb cd 45 3e       call 03e45h          	;. E >
	ram:62fe e1             pop hl               	;.
	ram:62ff e7             rst 20h              	;.
	ram:6300 3e 0c          ld a,00ch            	;> .
	ram:6302 cd 3a 4f       call sub_4f3ah       	;. : O
	ram:6305 21 98 80       ld hl,08098h         	;! . .
	ram:6308 cd 45 3e       call 03e45h          	;. E >
	ram:630b cd c7 3d       call 03dc7h          	;. . =
l630eh:
	ram:630e e1             pop hl               	;.
	ram:630f 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6312 c9             ret                  	;.
sub_6313h:
	ram:6313 21 01 01       ld hl,00101h         	;! . .
	ram:6316 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6319 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:631c 3d             dec a                	;=
	ram:631d 47             ld b,a               	;G
l631eh:
	ram:631e cd 77 3c       call 03c77h          	;. w <
	ram:6321 7e             ld a,(hl)            	;~
	ram:6322 fe 20          cp 020h              	;.  
	ram:6324 28 13          jr z,l6339h          	;( .
	ram:6326 11 9b 31       ld de,0319bh         	;. . 1
l6329h:
	ram:6329 1a             ld a,(de)            	;.
	ram:632a 13             inc de               	;.
	ram:632b b7             or a                 	;.
	ram:632c 28 0b          jr z,l6339h          	;( .
	ram:632e be             cp (hl)              	;.
	ram:632f 23             inc hl               	;#
	ram:6330 28 f7          jr z,l6329h          	;( .
	ram:6332 21 0c 80       ld hl,0800ch         	;! . .
	ram:6335 34             inc (hl)             	;4
	ram:6336 10 e6          djnz l631eh          	;. .
	ram:6338 c9             ret                  	;.
l6339h:
	ram:6339 97             sub a                	;.
	ram:633a 32 0d 80       ld (0800dh),a        	;2 . .
	ram:633d c9             ret                  	;.
sub_633eh:
	ram:633e e5             push hl              	;.
	ram:633f cd 38 26       call 02638h          	;. 8 &
	ram:6342 d7             rst 10h              	;.
	ram:6343 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:6346 e1             pop hl               	;.
	ram:6347 c9             ret                  	;.
sub_6348h:
	ram:6348 cd f1 34       call 034f1h          	;. . 4
	ram:634b cd f3 35       call 035f3h          	;. . 5
	ram:634e df             rst 18h              	;.
	ram:634f cd 38 26       call 02638h          	;. 8 &
	ram:6352 cd af 3a       call 03aafh          	;. . :
	ram:6355 c9             ret                  	;.
l6356h:
	ram:6356 97             sub a                	;.
	ram:6357 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:635a 18 4f          jr l63abh            	;. O
l635ch:
	ram:635c cd bf 3c       call 03cbfh          	;. . <
	ram:635f c8             ret z                	;.
	ram:6360 cd 37 34       call 03437h          	;. 7 4
	ram:6363 cd f1 61       call sub_61f1h       	;. . a
sub_6366h:
	ram:6366 cd 0e 64       call sub_640eh       	;. . d
	ram:6369 3a b9 80       ld a,(080b9h)        	;: . .
	ram:636c b7             or a                 	;.
	ram:636d 20 42          jr nz,l63b1h         	;B
	ram:636f cd 55 34       call 03455h          	;. U 4
	ram:6372 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:6375 ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:6379 b7             or a                 	;.
	ram:637a ed 52          sbc hl,de            	;. R
	ram:637c 11 06 00       ld de,00006h         	;. . .
	ram:637f cd 8e 00       call 0008eh          	;. . .
	ram:6382 30 06          jr nc,l638ah         	;0 .
	ram:6384 cd cb 3c       call 03ccbh          	;. . <
	ram:6387 c3 45 0a       jp 00a45h            	;. E .
l638ah:
	ram:638a 21 ba 64       ld hl,l64bah         	;! . d
	ram:638d ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:6391 01 06 00       ld bc,00006h         	;. . .
	ram:6394 ed b0          ldir                 	;. .
	ram:6396 ed 53 1b 8b    ld (08b1bh),de       	;. S . .
	ram:639a cd cb 3c       call 03ccbh          	;. . <
	ram:639d 21 c0 64       ld hl,l64c0h         	;! . d
	ram:63a0 e7             rst 20h              	;.
	ram:63a1 d7             rst 10h              	;.
	ram:63a2 38 07          jr c,l63abh          	;8 .
	ram:63a4 e6 1f          and 01fh             	;. .
	ram:63a6 fe 0a          cp 00ah              	;. .
	ram:63a8 cc 0b 2c       call z,02c0bh        	;. . ,
l63abh:
	ram:63ab cd f1 61       call sub_61f1h       	;. . a
	ram:63ae cd 0e 64       call sub_640eh       	;. . d
l63b1h:
	ram:63b1 cd ef 6c       call sub_6cefh       	;. . l
	ram:63b4 2a 27 8b       ld hl,(08b27h)       	;* ' .
	ram:63b7 3e 0a          ld a,00ah            	;> .
	ram:63b9 cd 22 59       call sub_5922h       	;. " Y
	ram:63bc da 45 0a       jp c,00a45h          	;. E .
	ram:63bf cd 4b 3e       call 03e4bh          	;. K >
	ram:63c2 cd 87 3b       call 03b87h          	;. . ;
	ram:63c5 cd a7 3c       call 03ca7h          	;. . <
	ram:63c8 cd 7b 3b       call 03b7bh          	;. { ;
	ram:63cb 3e 01          ld a,001h            	;> .
	ram:63cd 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:63d0 fd cb 00 be    res 7,(iy+000h)      	;. . . .
	ram:63d4 3e 65          ld a,065h            	;> e
	ram:63d6 cd 11 3c       call 03c11h          	;. . <
	ram:63d9 cd 79 61       call sub_6179h       	;. y a
	ram:63dc cd 13 00       call 00013h          	;. . .
	ram:63df 28 10          jr z,l63f1h          	;( .
	ram:63e1 cd 46 64       call sub_6446h       	;. F d
	ram:63e4 3a 2c 8b       ld a,(08b2ch)        	;: , .
	ram:63e7 b7             or a                 	;.
	ram:63e8 ca af 60       jp z,sub_60afh       	;. . `
	ram:63eb cd a3 34       call 034a3h          	;. . 4
	ram:63ee c3 96 5f       jp l5f96h            	;. . _
l63f1h:
	ram:63f1 fd cb 08 ce    set 1,(iy+008h)      	;. . . .
	ram:63f5 3e 01          ld a,001h            	;> .
	ram:63f7 32 0c 80       ld (0800ch),a        	;2 . .
	ram:63fa cd a3 34       call 034a3h          	;. . 4
	ram:63fd cd 6d 61       call sub_616dh       	;. m a
	ram:6400 cc 42 62       call z,sub_6242h     	;. B b
	ram:6403 22 25 8b       ld (08b25h),hl       	;" % .
	ram:6406 cd b9 60       call sub_60b9h       	;. . `
	ram:6409 fd cb 05 f6    set 6,(iy+005h)      	;. . . .
	ram:640d c9             ret                  	;.
sub_640eh:
	ram:640e cd f1 34       call 034f1h          	;. . 4
	ram:6411 d7             rst 10h              	;.
	ram:6412 22 25 8b       ld (08b25h),hl       	;" % .
	ram:6415 ed 53 27 8b    ld (08b27h),de       	;. S ' .
	ram:6419 c9             ret                  	;.
sub_641ah:
	ram:641a 21 6f fa       ld hl,0fa6fh         	;! o .
l641dh:
	ram:641d 7e             ld a,(hl)            	;~
	ram:641e e6 1f          and 01fh             	;. .
	ram:6420 fe 14          cp 014h              	;. .
	ram:6422 20 1c          jr nz,l6440h         	;.
	ram:6424 cd 0b 62       call sub_620bh       	;. . b
	ram:6427 28 17          jr z,l6440h          	;( .
	ram:6429 36 00          ld (hl),000h         	;6 .
	ram:642b e5             push hl              	;.
	ram:642c 2b             dec hl               	;+
	ram:642d 5e             ld e,(hl)            	;^
	ram:642e 2b             dec hl               	;+
	ram:642f 56             ld d,(hl)            	;V
	ram:6430 23             inc hl               	;#
	ram:6431 23             inc hl               	;#
	ram:6432 cd 0b 2c       call 02c0bh          	;. . ,
	ram:6435 e1             pop hl               	;.
	ram:6436 ed 5b eb 8b    ld de,(08bebh)       	;. [ . .
	ram:643a cd 8e 00       call 0008eh          	;. . .
	ram:643d 20 de          jr nz,l641dh         	;.
	ram:643f c9             ret                  	;.
l6440h:
	ram:6440 cd 33 61       call sub_6133h       	;. 3 a
	ram:6443 20 d8          jr nz,l641dh         	;.
	ram:6445 c9             ret                  	;.
sub_6446h:
	ram:6446 cd f8 61       call sub_61f8h       	;. . a
	ram:6449 eb             ex de,hl             	;.
	ram:644a 3e 01          ld a,001h            	;> .
	ram:644c 32 0c 80       ld (0800ch),a        	;2 . .
	ram:644f cd 6d 61       call sub_616dh       	;. m a
	ram:6452 c8             ret z                	;.
l6453h:
	ram:6453 cd 8e 00       call 0008eh          	;. . .
	ram:6456 c8             ret z                	;.
	ram:6457 cd 46 61       call l6146h          	;. F a
	ram:645a 20 02          jr nz,l645eh         	;.
	ram:645c 6b             ld l,e               	;k
	ram:645d 62             ld h,d               	;b
l645eh:
	ram:645e 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6461 47             ld b,a               	;G
	ram:6462 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6465 3c             inc a                	;<
	ram:6466 b8             cp b                 	;.
	ram:6467 30 05          jr nc,l646eh         	;0 .
	ram:6469 32 0c 80       ld (0800ch),a        	;2 . .
	ram:646c 18 e5          jr l6453h            	;. .
l646eh:
	ram:646e cd 67 3d       call 03d67h          	;. g =
	ram:6471 97             sub a                	;.
	ram:6472 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6475 cd 51 62       call sub_6251h       	;. Q b
	ram:6478 18 d9          jr l6453h            	;. .
l647ah:
	ram:647a cd 42 62       call sub_6242h       	;. B b
	ram:647d 3f             ccf                  	;?
	ram:647e d0             ret nc               	;.
	ram:647f e6 1f          and 01fh             	;. .
	ram:6481 fe 04          cp 004h              	;. .
	ram:6483 20 1a          jr nz,l649fh         	;.
	ram:6485 eb             ex de,hl             	;.
	ram:6486 5e             ld e,(hl)            	;^
	ram:6487 23             inc hl               	;#
	ram:6488 56             ld d,(hl)            	;V
	ram:6489 e5             push hl              	;.
	ram:648a 21 02 00       ld hl,00002h         	;! . .
	ram:648d cd 8e 00       call 0008eh          	;. . .
	ram:6490 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6493 e1             pop hl               	;.
	ram:6494 23             inc hl               	;#
	ram:6495 e5             push hl              	;.
	ram:6496 e7             rst 20h              	;.
	ram:6497 cd 83 1f       call 01f83h          	;. . .
	ram:649a d2 55 0a       jp nc,00a55h         	;. U .
	ram:649d e1             pop hl               	;.
	ram:649e c9             ret                  	;.
l649fh:
	ram:649f fe 14          cp 014h              	;. .
	ram:64a1 c8             ret z                	;.
	ram:64a2 c3 28 0a       jp 00a28h            	;. ( .
sub_64a5h:
	ram:64a5 cd 7a 64       call l647ah          	;. z d
	ram:64a8 38 03          jr c,l64adh          	;8 .
	ram:64aa 21 c5 64       ld hl,l64c5h         	;! . d
l64adh:
	ram:64ad 11 9f 84       ld de,0849fh         	;. . .
	ram:64b0 cd 9d 20       call 0209dh          	;. .  
	ram:64b3 c3 9d 20       jp 0209dh            	;. .  
	ram:64b6 03             inc bc               	;.
	ram:64b7 65             ld h,l               	;e
	ram:64b8 71             ld (hl),c            	;q
	ram:64b9 6e             ld l,(hl)            	;n
l64bah:
	ram:64ba 32 03 65       ld (l6503h),a        	;2 . e
	ram:64bd 78             ld a,b               	;x
	ram:64be 70             ld (hl),b            	;p
	ram:64bf 3f             ccf                  	;?
l64c0h:
	ram:64c0 00             nop                  	;.
	ram:64c1 03             inc bc               	;.
	ram:64c2 65             ld h,l               	;e
	ram:64c3 78             ld a,b               	;x
	ram:64c4 70             ld (hl),b            	;p
l64c5h:
	ram:64c5 80             add a,b              	;.
	ram:64c6 63             ld h,e               	;c
	ram:64c7 fc 10 00       call m,00010h        	;. . .
	ram:64ca 00             nop                  	;.
	ram:64cb 00             nop                  	;.
	ram:64cc 00             nop                  	;.
	ram:64cd 00             nop                  	;.
	ram:64ce 00             nop                  	;.
	ram:64cf 00             nop                  	;.
	ram:64d0 63             ld h,e               	;c
	ram:64d1 fc 10 00       call m,00010h        	;. . .
	ram:64d4 00             nop                  	;.
	ram:64d5 00             nop                  	;.
	ram:64d6 00             nop                  	;.
	ram:64d7 00             nop                  	;.
	ram:64d8 00             nop                  	;.
	ram:64d9 d2 8d 3b       jp nc,03b8dh         	;. . ;
	ram:64dc fd cb 00 7e    bit 7,(iy+000h)      	;. . . ~
	ram:64e0 c0             ret nz               	;.
	ram:64e1 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:64e5 28 35          jr z,l651ch          	;( 5
	ram:64e7 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:64ea ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:64ee b7             or a                 	;.
	ram:64ef ed 52          sbc hl,de            	;. R
	ram:64f1 e5             push hl              	;.
	ram:64f2 cd cb 3c       call 03ccbh          	;. . <
	ram:64f5 cd 1c 65       call l651ch          	;. . e
	ram:64f8 cd 33 26       call 02633h          	;. 3 &
	ram:64fb cd 81 35       call 03581h          	;. . 5
	ram:64fe e1             pop hl               	;.
	ram:64ff 7d             ld a,l               	;}
l6500h:
	ram:6500 b4             or h                 	;.
	ram:6501 c8             ret z                	;.
	ram:6502 4d             ld c,l               	;M
l6503h:
	ram:6503 44             ld b,h               	;D
	ram:6504 e5             push hl              	;.
	ram:6505 2a 19 8b       ld hl,(08b19h)       	;* . .
	ram:6508 5d             ld e,l               	;]
	ram:6509 54             ld d,h               	;T
	ram:650a 09             add hl,bc            	;.
	ram:650b 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:650e 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:6511 ed b0          ldir                 	;. .
	ram:6513 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:6516 d1             pop de               	;.
	ram:6517 19             add hl,de            	;.
	ram:6518 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:651b c9             ret                  	;.
l651ch:
	ram:651c 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:651f e5             push hl              	;.
	ram:6520 3a 54 83       ld a,(08354h)        	;: T .
	ram:6523 f5             push af              	;.
	ram:6524 21 f7 ff       ld hl,0fff7h         	;! . .
	ram:6527 39             add hl,sp            	;9
	ram:6528 f9             ld sp,hl             	;.
	ram:6529 eb             ex de,hl             	;.
	ram:652a 21 31 8b       ld hl,08b31h         	;! 1 .
	ram:652d cd 9f 20       call 0209fh          	;. .  
	ram:6530 cd a9 3d       call 03da9h          	;. . =
	ram:6533 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:6536 cd 0b 62       call sub_620bh       	;. . b
	ram:6539 28 15          jr z,l6550h          	;( .
l653bh:
	ram:653b cd 46 61       call l6146h          	;. F a
	ram:653e 28 0d          jr z,l654dh          	;( .
	ram:6540 cd 51 62       call sub_6251h       	;. Q b
	ram:6543 cd a9 3d       call 03da9h          	;. . =
	ram:6546 cd af 3d       call 03dafh          	;. . =
	ram:6549 38 f0          jr c,l653bh          	;8 .
	ram:654b 18 06          jr l6553h            	;. .
l654dh:
	ram:654d cd 4a 62       call sub_624ah       	;. J b
l6550h:
	ram:6550 cd d8 62       call sub_62d8h       	;. . b
l6553h:
	ram:6553 21 00 00       ld hl,00000h         	;! . .
	ram:6556 39             add hl,sp            	;9
	ram:6557 11 31 8b       ld de,08b31h         	;. 1 .
	ram:655a cd 9f 20       call 0209fh          	;. .  
	ram:655d f9             ld sp,hl             	;.
	ram:655e f1             pop af               	;.
	ram:655f 32 54 83       ld (08354h),a        	;2 T .
	ram:6562 e1             pop hl               	;.
	ram:6563 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6566 c9             ret                  	;.
	ram:6567 fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:656b 28 14          jr z,l6581h          	;( .
	ram:656d fd cb 00 7e    bit 7,(iy+000h)      	;. . . ~
	ram:6571 20 37          jr nz,l65aah         	;7
	ram:6573 21 81 65       ld hl,l6581h         	;! . e
	ram:6576 cd b5 0a       call 00ab5h          	;. . .
	ram:6579 cd d3 60       call sub_60d3h       	;. . `
	ram:657c cd db 0a       call 00adbh          	;. . .
	ram:657f 18 00          jr l6581h            	;. .
l6581h:
	ram:6581 cd 27 35       call 03527h          	;. ' 5
	ram:6584 2a 25 8b       ld hl,(08b25h)       	;* % .
	ram:6587 cd 0b 62       call sub_620bh       	;. . b
	ram:658a 20 06          jr nz,l6592h         	;.
	ram:658c 97             sub a                	;.
	ram:658d 32 36 86       ld (08636h),a        	;2 6 .
	ram:6590 18 03          jr l6595h            	;. .
l6592h:
	ram:6592 cd df 61       call sub_61dfh       	;. . a
l6595h:
	ram:6595 21 a1 65       ld hl,sub_65a1h      	;! . e
	ram:6598 cd b5 0a       call 00ab5h          	;. . .
	ram:659b cd a5 64       call sub_64a5h       	;. . d
	ram:659e cd db 0a       call 00adbh          	;. . .
sub_65a1h:
	ram:65a1 cd c2 62       call sub_62c2h       	;. . b
	ram:65a4 cd 3e 63       call sub_633eh       	;. > c
	ram:65a7 c3 1a 64       jp sub_641ah         	;. . d
l65aah:
	ram:65aa cd 37 34       call 03437h          	;. 7 4
	ram:65ad cd c2 62       call sub_62c2h       	;. . b
	ram:65b0 fd cb 00 be    res 7,(iy+000h)      	;. . . .
	ram:65b4 c9             ret                  	;.
sub_65b5h:
	ram:65b5 fd cb 13 96    res 2,(iy+013h)      	;. . . .
	ram:65b9 cd 4f 34       call 0344fh          	;. O 4
	ram:65bc 3e ff          ld a,0ffh            	;> .
	ram:65be cd ad 3c       call 03cadh          	;. . <
	ram:65c1 20 09          jr nz,l65cch         	;.
	ram:65c3 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:65c6 36 ff          ld (hl),0ffh         	;6 .
	ram:65c8 23             inc hl               	;#
	ram:65c9 22 1f 8b       ld (08b1fh),hl       	;" . .
l65cch:
	ram:65cc cd a7 3c       call 03ca7h          	;. . <
	ram:65cf 21 00 00       ld hl,00000h         	;! . .
	ram:65d2 22 74 80       ld (08074h),hl       	;" t .
	ram:65d5 fd cb 13 86    res 0,(iy+013h)      	;. . . .
l65d9h:
	ram:65d9 cd 49 34       call 03449h          	;. I 4
	ram:65dc c8             ret z                	;.
	ram:65dd 3c             inc a                	;<
	ram:65de 28 05          jr z,l65e5h          	;( .
	ram:65e0 cd e9 65       call sub_65e9h       	;. . e
	ram:65e3 18 f4          jr l65d9h            	;. .
l65e5h:
	ram:65e5 cd 31 3d       call 03d31h          	;. 1 =
	ram:65e8 c9             ret                  	;.
sub_65e9h:
	ram:65e9 ed 4b 1d 8b    ld bc,(08b1dh)       	;. K . .
	ram:65ed c5             push bc              	;.
	ram:65ee cd e1 67       call sub_67e1h       	;. . g
	ram:65f1 c1             pop bc               	;.
	ram:65f2 b7             or a                 	;.
	ram:65f3 ed 42          sbc hl,bc            	;. B
	ram:65f5 22 76 80       ld (08076h),hl       	;" v .
	ram:65f8 fe 44          cp 044h              	;. D
	ram:65fa 20 1b          jr nz,l6617h         	;.
	ram:65fc fd cb 13 46    bit 0,(iy+013h)      	;. . . F
	ram:6600 c2 47 67       jp nz,l6747h         	;. G g
	ram:6603 1e 02          ld e,002h            	;. .
	ram:6605 cd 76 67       call sub_6776h       	;. v g
	ram:6608 cd ad 3c       call 03cadh          	;. . <
	ram:660b cd b4 67       call sub_67b4h       	;. . g
	ram:660e 97             sub a                	;.
	ram:660f cd ad 3c       call 03cadh          	;. . <
	ram:6612 fd cb 13 c6    set 0,(iy+013h)      	;. . . .
	ram:6616 c9             ret                  	;.
l6617h:
	ram:6617 b7             or a                 	;.
	ram:6618 20 04          jr nz,l661eh         	;.
	ram:661a cc d5 67       call z,sub_67d5h     	;. . g
	ram:661d c9             ret                  	;.
l661eh:
	ram:661e fd cb 13 86    res 0,(iy+013h)      	;. . . .
	ram:6622 fe 33          cp 033h              	;. 3
	ram:6624 c2 c8 66       jp nz,l66c8h         	;. . f
	ram:6627 cd c1 67       call sub_67c1h       	;. . g
	ram:662a da 55 67       jp c,l6755h          	;. U g
	ram:662d cd fa 68       call sub_68fah       	;. . h
	ram:6630 38 6d          jr c,l669fh          	;8 m
	ram:6632 cd d5 67       call sub_67d5h       	;. . g
	ram:6635 cd ad 3c       call 03cadh          	;. . <
	ram:6638 79             ld a,c               	;y
	ram:6639 fe e0          cp 0e0h              	;. .
	ram:663b 28 0b          jr z,l6648h          	;( .
	ram:663d fe e1          cp 0e1h              	;. .
	ram:663f c0             ret nz               	;.
	ram:6640 97             sub a                	;.
	ram:6641 cd ad 3c       call 03cadh          	;. . <
	ram:6644 97             sub a                	;.
	ram:6645 cd ad 3c       call 03cadh          	;. . <
l6648h:
	ram:6648 ed 4b 1d 8b    ld bc,(08b1dh)       	;. K . .
l664ch:
	ram:664c 0a             ld a,(bc)            	;.
	ram:664d 03             inc bc               	;.
	ram:664e fe 20          cp 020h              	;.  
	ram:6650 28 fa          jr z,l664ch          	;( .
	ram:6652 0b             dec bc               	;.
	ram:6653 ed 43 1d 8b    ld (08b1dh),bc       	;. C . .
	ram:6657 cd e1 67       call sub_67e1h       	;. . g
	ram:665a fe 33          cp 033h              	;. 3
	ram:665c c2 55 67       jp nz,l6755h         	;. U g
	ram:665f 7e             ld a,(hl)            	;~
	ram:6660 ed 42          sbc hl,bc            	;. B
	ram:6662 22 76 80       ld (08076h),hl       	;" v .
	ram:6665 fe 20          cp 020h              	;.  
	ram:6667 20 0c          jr nz,l6675h         	;.
	ram:6669 2a 1d 8b       ld hl,(08b1dh)       	;* . .
l666ch:
	ram:666c 23             inc hl               	;#
	ram:666d 7e             ld a,(hl)            	;~
	ram:666e fe 20          cp 020h              	;.  
	ram:6670 28 fa          jr z,l666ch          	;( .
	ram:6672 2a 76 80       ld hl,(08076h)       	;* v .
l6675h:
	ram:6675 fe 3a          cp 03ah              	;. :
	ram:6677 28 08          jr z,l6681h          	;( .
	ram:6679 fe d6          cp 0d6h              	;. .
	ram:667b 28 04          jr z,l6681h          	;( .
	ram:667d 3c             inc a                	;<
	ram:667e c2 55 67       jp nz,l6755h         	;. U g
l6681h:
	ram:6681 7d             ld a,l               	;}
	ram:6682 b4             or h                 	;.
	ram:6683 ca 55 67       jp z,l6755h          	;. U g
	ram:6686 cd c1 67       call sub_67c1h       	;. . g
	ram:6689 da 55 67       jp c,l6755h          	;. U g
	ram:668c cd fa 68       call sub_68fah       	;. . h
	ram:668f d2 55 67       jp nc,l6755h         	;. U g
	ram:6692 cd 36 69       call sub_6936h       	;. 6 i
	ram:6695 d2 55 67       jp nc,l6755h         	;. U g
	ram:6698 cd b4 67       call sub_67b4h       	;. . g
	ram:669b cd ad 3c       call 03cadh          	;. . <
	ram:669e c9             ret                  	;.
l669fh:
	ram:669f 1e 01          ld e,001h            	;. .
	ram:66a1 cd 76 67       call sub_6776h       	;. v g
	ram:66a4 cd 36 69       call sub_6936h       	;. 6 i
	ram:66a7 38 0e          jr c,l66b7h          	;8 .
	ram:66a9 cd d5 67       call sub_67d5h       	;. . g
	ram:66ac 47             ld b,a               	;G
	ram:66ad 3e 3d          ld a,03dh            	;> =
	ram:66af cd ad 3c       call 03cadh          	;. . <
	ram:66b2 78             ld a,b               	;x
	ram:66b3 cd ad 3c       call 03cadh          	;. . <
	ram:66b6 c9             ret                  	;.
l66b7h:
	ram:66b7 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:66ba 22 74 80       ld (08074h),hl       	;" t .
	ram:66bd 3a 76 80       ld a,(08076h)        	;: v .
	ram:66c0 c6 32          add a,032h           	;. 2
	ram:66c2 cd ad 3c       call 03cadh          	;. . <
	ram:66c5 c3 b4 67       jp sub_67b4h         	;. . g
l66c8h:
	ram:66c8 fe 32          cp 032h              	;. 2
	ram:66ca 28 08          jr z,l66d4h          	;( .
	ram:66cc fe 3c          cp 03ch              	;. <
	ram:66ce 28 04          jr z,l66d4h          	;( .
	ram:66d0 fe 3b          cp 03bh              	;. ;
	ram:66d2 20 11          jr nz,l66e5h         	;.
l66d4h:
	ram:66d4 1e 02          ld e,002h            	;. .
	ram:66d6 cd 76 67       call sub_6776h       	;. v g
	ram:66d9 cd ad 3c       call 03cadh          	;. . <
	ram:66dc 3a 76 80       ld a,(08076h)        	;: v .
	ram:66df cd ad 3c       call 03cadh          	;. . <
	ram:66e2 c3 b4 67       jp sub_67b4h         	;. . g
l66e5h:
	ram:66e5 fe 2d          cp 02dh              	;. -
	ram:66e7 20 2d          jr nz,l6716h         	;-
	ram:66e9 1e 02          ld e,002h            	;. .
	ram:66eb cd 76 67       call sub_6776h       	;. v g
	ram:66ee cd 31 3d       call 03d31h          	;. 1 =
	ram:66f1 3e 2d          ld a,02dh            	;> -
	ram:66f3 cd ad 3c       call 03cadh          	;. . <
l66f6h:
	ram:66f6 cd 49 34       call 03449h          	;. I 4
	ram:66f9 fe ff          cp 0ffh              	;. .
	ram:66fb 28 14          jr z,l6711h          	;( .
	ram:66fd fe 22          cp 022h              	;. "
	ram:66ff 28 0d          jr z,l670eh          	;( .
	ram:6701 fe 1c          cp 01ch              	;. .
	ram:6703 28 0c          jr z,l6711h          	;( .
	ram:6705 fe d6          cp 0d6h              	;. .
	ram:6707 28 08          jr z,l6711h          	;( .
	ram:6709 cd 3d 34       call 0343dh          	;. = 4
	ram:670c 18 e8          jr l66f6h            	;. .
l670eh:
	ram:670e cd 31 3d       call 03d31h          	;. 1 =
l6711h:
	ram:6711 97             sub a                	;.
	ram:6712 cd ad 3c       call 03cadh          	;. . <
	ram:6715 c9             ret                  	;.
l6716h:
	ram:6716 fe ff          cp 0ffh              	;. .
	ram:6718 28 3b          jr z,l6755h          	;( ;
	ram:671a fe 3e          cp 03eh              	;. >
	ram:671c 20 22          jr nz,l6740h         	;"
	ram:671e 2a 74 80       ld hl,(08074h)       	;* t .
	ram:6721 7e             ld a,(hl)            	;~
	ram:6722 d6 31          sub 031h             	;. 1
	ram:6724 4f             ld c,a               	;O
	ram:6725 06 00          ld b,000h            	;. .
	ram:6727 09             add hl,bc            	;.
	ram:6728 ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:672c cd 8e 00       call 0008eh          	;. . .
	ram:672f 20 24          jr nz,l6755h         	;$
	ram:6731 d5             push de              	;.
	ram:6732 2b             dec hl               	;+
	ram:6733 ed b8          lddr                 	;. .
	ram:6735 3e 3e          ld a,03eh            	;> >
	ram:6737 12             ld (de),a            	;.
	ram:6738 e1             pop hl               	;.
	ram:6739 23             inc hl               	;#
	ram:673a 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:673d c3 d5 67       jp sub_67d5h         	;. . g
l6740h:
	ram:6740 cd d5 67       call sub_67d5h       	;. . g
	ram:6743 cd ad 3c       call 03cadh          	;. . <
	ram:6746 c9             ret                  	;.
l6747h:
	ram:6747 3e ff          ld a,0ffh            	;> .
	ram:6749 cd ad 3c       call 03cadh          	;. . <
	ram:674c 28 38          jr z,l6786h          	;( 8
	ram:674e 3e 20          ld a,020h            	;>  
	ram:6750 cd ad 3c       call 03cadh          	;. . <
	ram:6753 18 07          jr l675ch            	;. .
l6755h:
	ram:6755 3e ff          ld a,0ffh            	;> .
	ram:6757 cd ad 3c       call 03cadh          	;. . <
	ram:675a 28 2a          jr z,l6786h          	;( *
l675ch:
	ram:675c cd 49 34       call 03449h          	;. I 4
	ram:675f fe d6          cp 0d6h              	;. .
	ram:6761 28 0c          jr z,l676fh          	;( .
	ram:6763 fe 3a          cp 03ah              	;. :
	ram:6765 28 08          jr z,l676fh          	;( .
	ram:6767 3c             inc a                	;<
	ram:6768 28 05          jr z,l676fh          	;( .
	ram:676a cd 3d 34       call 0343dh          	;. = 4
	ram:676d 20 ed          jr nz,l675ch         	;.
l676fh:
	ram:676f 97             sub a                	;.
	ram:6770 cd ad 3c       call 03cadh          	;. . <
	ram:6773 c0             ret nz               	;.
	ram:6774 18 28          jr l679eh            	;. (
sub_6776h:
	ram:6776 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:6779 16 00          ld d,000h            	;. .
	ram:677b b7             or a                 	;.
	ram:677c ed 52          sbc hl,de            	;. R
	ram:677e ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:6782 ed 52          sbc hl,de            	;. R
	ram:6784 f0             ret p                	;.
	ram:6785 e1             pop hl               	;.
l6786h:
	ram:6786 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:6789 ed 5b 1d 8b    ld de,(08b1dh)       	;. [ . .
	ram:678d 37             scf                  	;7
	ram:678e ed 52          sbc hl,de            	;. R
	ram:6790 4d             ld c,l               	;M
	ram:6791 44             ld b,h               	;D
	ram:6792 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:6795 2b             dec hl               	;+
	ram:6796 5d             ld e,l               	;]
	ram:6797 54             ld d,h               	;T
	ram:6798 2b             dec hl               	;+
	ram:6799 ed b8          lddr                 	;. .
	ram:679b 3e ff          ld a,0ffh            	;> .
	ram:679d 12             ld (de),a            	;.
l679eh:
	ram:679e cd 4f 34       call 0344fh          	;. O 4
	ram:67a1 2a 1f 8b       ld hl,(08b1fh)       	;* . .
	ram:67a4 23             inc hl               	;#
	ram:67a5 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:67a8 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:67ab 97             sub a                	;.
	ram:67ac cd ad 3c       call 03cadh          	;. . <
	ram:67af fd cb 13 d6    set 2,(iy+013h)      	;. . . .
	ram:67b3 c9             ret                  	;.
sub_67b4h:
	ram:67b4 ed 4b 76 80    ld bc,(08076h)       	;. K v .
l67b8h:
	ram:67b8 cd 3d 34       call 0343dh          	;. = 4
	ram:67bb 0b             dec bc               	;.
	ram:67bc 79             ld a,c               	;y
	ram:67bd b0             or b                 	;.
	ram:67be 20 f8          jr nz,l67b8h         	;.
	ram:67c0 c9             ret                  	;.
sub_67c1h:
	ram:67c1 ed 4b 76 80    ld bc,(08076h)       	;. K v .
	ram:67c5 21 f7 ff       ld hl,0fff7h         	;! . .
	ram:67c8 09             add hl,bc            	;.
	ram:67c9 d8             ret c                	;.
	ram:67ca 11 84 80       ld de,08084h         	;. . .
	ram:67cd 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:67d0 ed b0          ldir                 	;. .
	ram:67d2 97             sub a                	;.
	ram:67d3 12             ld (de),a            	;.
	ram:67d4 c9             ret                  	;.
sub_67d5h:
	ram:67d5 ed 5b 76 80    ld de,(08076h)       	;. [ v .
	ram:67d9 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:67dc 19             add hl,de            	;.
	ram:67dd 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:67e0 c9             ret                  	;.
sub_67e1h:
	ram:67e1 dd e5          push ix              	;. .
	ram:67e3 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:67e7 dd 39          add ix,sp            	;. 9
	ram:67e9 e5             push hl              	;.
	ram:67ea e5             push hl              	;.
	ram:67eb e5             push hl              	;.
	ram:67ec 3b             dec sp               	;;
	ld (ix-002h),c		;67ed	dd 71 fe	. q .
	ld (ix-001h),b		;67f0	dd 70 ff	. p .
	ram:67f3 21 ff ff       ld hl,0ffffh         	;! . .
	ram:67f6 e5             push hl              	;.
	ram:67f7 21 db 7a       ld hl,l7adbh         	;! . z
l67fah:
	ram:67fa e3             ex (sp),hl           	;.
	ld (ix-007h),l		;67fb	dd 75 f9	. u .
	ld (ix-006h),h		;67fe	dd 74 fa	. t .
	ram:6801 e3             ex (sp),hl           	;.
	ld a,(ix-006h)		;6802	dd 7e fa	. ~ .
	ram:6805 bc             cp h                 	;.
	ram:6806 38 08          jr c,l6810h          	;8 .
	ram:6808 20 0a          jr nz,l6814h         	;.
	ld a,(ix-007h)		;680a	dd 7e f9	. ~ .
	ram:680d bd             cp l                 	;.
	ram:680e 30 04          jr nc,l6814h         	;0 .
l6810h:
	ram:6810 f1             pop af               	;.
	ram:6811 f1             pop af               	;.
	ram:6812 18 e6          jr l67fah            	;. .
l6814h:
	ram:6814 5e             ld e,(hl)            	;^
	ram:6815 23             inc hl               	;#
	ram:6816 56             ld d,(hl)            	;V
	ram:6817 23             inc hl               	;#
	ram:6818 7b             ld a,e               	;{
	ram:6819 e6 0f          and 00fh             	;. .
	ram:681b 28 19          jr z,l6836h          	;( .
	ram:681d 3d             dec a                	;=
	ram:681e 28 2b          jr z,l684bh          	;( +
	ram:6820 3d             dec a                	;=
	ram:6821 28 4c          jr z,l686fh          	;( L
	ram:6823 3d             dec a                	;=
	ram:6824 28 10          jr z,l6836h          	;( .
	ram:6826 3d             dec a                	;=
	ram:6827 28 4b          jr z,l6874h          	;( K
	ram:6829 3d             dec a                	;=
	ram:682a 28 66          jr z,l6892h          	;( f
	ram:682c 3d             dec a                	;=
	ram:682d ca b8 68       jp z,l68b8h          	;. . h
	ram:6830 3d             dec a                	;=
	ram:6831 28 7e          jr z,l68b1h          	;( ~
	ram:6833 03             inc bc               	;.
	ram:6834 18 c4          jr l67fah            	;. .
l6836h:
	ld e,(ix-003h)		;6836	dd 5e fd	. ^ .
	ram:6839 16 00          ld d,000h            	;. .
	ram:683b 21 81 79       ld hl,l7981h         	;! . y
	ram:683e 19             add hl,de            	;.
	ram:683f 7e             ld a,(hl)            	;~
	ld l,(ix-002h)		;6840	dd 6e fe	. n .
	ld h,(ix-001h)		;6843	dd 66 ff	. f .
	ram:6846 dd f9          ld sp,ix             	;. .
	ram:6848 dd e1          pop ix               	;. .
	ram:684a c9             ret                  	;.
l684bh:
	ram:684b fd cb 13 9e    res 3,(iy+013h)      	;. . . .
	ram:684f 7a             ld a,d               	;z
	ram:6850 3c             inc a                	;<
	ram:6851 28 08          jr z,l685bh          	;( .
	ram:6853 c5             push bc              	;.
	ram:6854 e5             push hl              	;.
	ram:6855 cd e9 68       call sub_68e9h       	;. . h
	ram:6858 e3             ex (sp),hl           	;.
	ram:6859 18 b9          jr l6814h            	;. .
l685bh:
	ram:685b e5             push hl              	;.
	ld l,(ix-005h)		;685c	dd 6e fb	. n .
	ld h,(ix-004h)		;685f	dd 66 fc	. f .
l6862h:
	ram:6862 0a             ld a,(bc)            	;.
	ram:6863 03             inc bc               	;.
	ram:6864 e5             push hl              	;.
	ram:6865 cd 77 30       call 03077h          	;. w 0
	ram:6868 e1             pop hl               	;.
	ram:6869 20 f7          jr nz,l6862h         	;.
	ram:686b 0b             dec bc               	;.
	ram:686c e1             pop hl               	;.
	ram:686d 18 8b          jr l67fah            	;. .
l686fh:
	ram:686f cd e9 68       call sub_68e9h       	;. . h
	ram:6872 18 86          jr l67fah            	;. .
l6874h:
	ld a,(ix-001h)		;6874	dd 7e ff	. ~ .
	ram:6877 b8             cp b                 	;.
	ram:6878 38 08          jr c,l6882h          	;8 .
	ram:687a 20 12          jr nz,l688eh         	;.
	ld a,(ix-002h)		;687c	dd 7e fe	. ~ .
	ram:687f b9             cp c                 	;.
	ram:6880 30 0c          jr nc,l688eh         	;0 .
l6882h:
	ram:6882 cd d8 68       call sub_68d8h       	;. . h
	ld (ix-003h),a		;6885	dd 77 fd	. w .
	ld (ix-002h),c		;6888	dd 71 fe	. q .
	ld (ix-001h),b		;688b	dd 70 ff	. p .
l688eh:
	ram:688e e1             pop hl               	;.
	ram:688f c1             pop bc               	;.
	ram:6890 18 82          jr l6814h            	;. .
l6892h:
	ram:6892 cd d8 68       call sub_68d8h       	;. . h
	ram:6895 0a             ld a,(bc)            	;.
	ram:6896 03             inc bc               	;.
	ram:6897 bb             cp e                 	;.
	ram:6898 ca fa 67       jp z,l67fah          	;. . g
	ram:689b fd cb 13 5e    bit 3,(iy+013h)      	;. . . ^
	ram:689f 28 32          jr z,l68d3h          	;( 2
	ram:68a1 fe 61          cp 061h              	;. a
	ram:68a3 38 2e          jr c,l68d3h          	;8 .
	ram:68a5 fe 7b          cp 07bh              	;. {
	ram:68a7 30 2a          jr nc,l68d3h         	;0 *
	ram:68a9 d6 20          sub 020h             	;.  
	ram:68ab bb             cp e                 	;.
	ram:68ac 20 25          jr nz,l68d3h         	;%
	ram:68ae c3 fa 67       jp l67fah            	;. . g
l68b1h:
	ram:68b1 fd cb 13 de    set 3,(iy+013h)      	;. . . .
	ram:68b5 c3 fa 67       jp l67fah            	;. . g
l68b8h:
	ram:68b8 7b             ld a,e               	;{
	ram:68b9 e6 f0          and 0f0h             	;. .
	ram:68bb 87             add a,a              	;.
	ram:68bc cb 12          rl d                 	;. .
	ram:68be 5f             ld e,a               	;_
	ram:68bf e5             push hl              	;.
	ram:68c0 21 db 79       ld hl,l79dbh         	;! . y
	ram:68c3 19             add hl,de            	;.
	ld (ix-005h),l		;68c4	dd 75 fb	. u .
	ld (ix-004h),h		;68c7	dd 74 fc	. t .
	ram:68ca 0a             ld a,(bc)            	;.
	ram:68cb 03             inc bc               	;.
	ram:68cc cd 77 30       call 03077h          	;. w 0
	ram:68cf e1             pop hl               	;.
	ram:68d0 c2 fa 67       jp nz,l67fah         	;. . g
l68d3h:
	ram:68d3 e1             pop hl               	;.
	ram:68d4 c1             pop bc               	;.
	ram:68d5 c3 fa 67       jp l67fah            	;. . g
sub_68d8h:
	ram:68d8 7b             ld a,e               	;{
	ram:68d9 e6 f0          and 0f0h             	;. .
	ram:68db cb 2a          sra d                	;. *
	ram:68dd 1f             rra                  	;.
	ram:68de cb 2a          sra d                	;. *
	ram:68e0 1f             rra                  	;.
	ram:68e1 cb 2a          sra d                	;. *
	ram:68e3 1f             rra                  	;.
	ram:68e4 cb 2a          sra d                	;. *
	ram:68e6 1f             rra                  	;.
	ram:68e7 5f             ld e,a               	;_
	ram:68e8 c9             ret                  	;.
sub_68e9h:
	ram:68e9 7b             ld a,e               	;{
	ram:68ea e6 f0          and 0f0h             	;. .
	ram:68ec cb 2a          sra d                	;. *
	ram:68ee 1f             rra                  	;.
	ram:68ef cb 2a          sra d                	;. *
	ram:68f1 1f             rra                  	;.
	ram:68f2 cb 2a          sra d                	;. *
	ram:68f4 1f             rra                  	;.
	ram:68f5 5f             ld e,a               	;_
	ram:68f6 1b             dec de               	;.
	ram:68f7 1b             dec de               	;.
	ram:68f8 19             add hl,de            	;.
	ram:68f9 c9             ret                  	;.
sub_68fah:
	ram:68fa dd e5          push ix              	;. .
	ram:68fc dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:6900 dd 39          add ix,sp            	;. 9
	ram:6902 3b             dec sp               	;;
	ram:6903 06 01          ld b,001h            	;. .
	ram:6905 0e b6          ld c,0b6h            	;. .
l6907h:
	ram:6907 78             ld a,b               	;x
	ram:6908 81             add a,c              	;.
	ram:6909 1f             rra                  	;.
	ld (ix-001h),a		;690a	dd 77 ff	. w .
	ram:690d 6f             ld l,a               	;o
	ram:690e 26 00          ld h,000h            	;& .
	ram:6910 29             add hl,hl            	;)
	ram:6911 11 2a 70       ld de,l702ah         	;. * p
	ram:6914 19             add hl,de            	;.
	ram:6915 7e             ld a,(hl)            	;~
	ram:6916 23             inc hl               	;#
	ram:6917 66             ld h,(hl)            	;f
	ram:6918 6f             ld l,a               	;o
	ram:6919 11 84 80       ld de,08084h         	;. . .
	ram:691c cd 7c 69       call sub_697ch       	;. | i
	ram:691f 28 10          jr z,l6931h          	;( .
	ram:6921 38 06          jr c,l6929h          	;8 .
	ld b,(ix-001h)		;6923	dd 46 ff	. F .
	ram:6926 04             inc b                	;.
	ram:6927 18 04          jr l692dh            	;. .
l6929h:
	ld c,(ix-001h)		;6929	dd 4e ff	. N .
	ram:692c 0d             dec c                	;.
l692dh:
	ram:692d 79             ld a,c               	;y
	ram:692e b8             cp b                 	;.
	ram:692f 30 d6          jr nc,l6907h         	;0 .
l6931h:
	ram:6931 dd f9          ld sp,ix             	;. .
	ram:6933 dd e1          pop ix               	;. .
	ram:6935 c9             ret                  	;.
sub_6936h:
	ram:6936 dd e5          push ix              	;. .
	ram:6938 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:693c dd 39          add ix,sp            	;. 9
	ram:693e 3b             dec sp               	;;
	ram:693f 06 01          ld b,001h            	;. .
	ram:6941 0e 36          ld c,036h            	;. 6
l6943h:
	ram:6943 78             ld a,b               	;x
	ram:6944 81             add a,c              	;.
	ram:6945 1f             rra                  	;.
	ld (ix-001h),a		;6946	dd 77 ff	. w .
	ram:6949 6f             ld l,a               	;o
	ram:694a 26 00          ld h,000h            	;& .
	ram:694c 29             add hl,hl            	;)
	ram:694d 11 16 79       ld de,l7916h         	;. . y
	ram:6950 19             add hl,de            	;.
	ram:6951 7e             ld a,(hl)            	;~
	ram:6952 23             inc hl               	;#
	ram:6953 66             ld h,(hl)            	;f
	ram:6954 6f             ld l,a               	;o
	ram:6955 11 84 80       ld de,08084h         	;. . .
	ram:6958 cd 72 69       call sub_6972h       	;. r i
	ram:695b 28 10          jr z,l696dh          	;( .
	ram:695d 38 06          jr c,l6965h          	;8 .
	ld b,(ix-001h)		;695f	dd 46 ff	. F .
	ram:6962 04             inc b                	;.
	ram:6963 18 04          jr l6969h            	;. .
l6965h:
	ld c,(ix-001h)		;6965	dd 4e ff	. N .
	ram:6968 0d             dec c                	;.
l6969h:
	ram:6969 79             ld a,c               	;y
	ram:696a b8             cp b                 	;.
	ram:696b 30 d6          jr nc,l6943h         	;0 .
l696dh:
	ram:696d dd f9          ld sp,ix             	;. .
	ram:696f dd e1          pop ix               	;. .
	ram:6971 c9             ret                  	;.
sub_6972h:
	ram:6972 1a             ld a,(de)            	;.
	ram:6973 13             inc de               	;.
	ram:6974 be             cp (hl)              	;.
	ram:6975 c0             ret nz               	;.
	ram:6976 23             inc hl               	;#
	ram:6977 b7             or a                 	;.
	ram:6978 20 f8          jr nz,sub_6972h      	;.
	ram:697a 7e             ld a,(hl)            	;~
	ram:697b c9             ret                  	;.
sub_697ch:
	ram:697c c5             push bc              	;.
l697dh:
	ram:697d 7e             ld a,(hl)            	;~
	ram:697e 23             inc hl               	;#
	ram:697f fe 20          cp 020h              	;.  
	ram:6981 28 fa          jr z,l697dh          	;( .
	ram:6983 cd 95 69       call sub_6995h       	;. . i
	ram:6986 47             ld b,a               	;G
	ram:6987 1a             ld a,(de)            	;.
	ram:6988 13             inc de               	;.
	ram:6989 cd 95 69       call sub_6995h       	;. . i
	ram:698c b8             cp b                 	;.
	ram:698d 20 04          jr nz,l6993h         	;.
	ram:698f b7             or a                 	;.
	ram:6990 20 eb          jr nz,l697dh         	;.
	ram:6992 7e             ld a,(hl)            	;~
l6993h:
	ram:6993 c1             pop bc               	;.
	ram:6994 c9             ret                  	;.
sub_6995h:
	ram:6995 fe 61          cp 061h              	;. a
	ram:6997 d8             ret c                	;.
	ram:6998 fe 7b          cp 07bh              	;. {
	ram:699a d0             ret nc               	;.
	ram:699b d6 20          sub 020h             	;.  
	ram:699d c9             ret                  	;.
l699eh:
	ram:699e 97             sub a                	;.
l699fh:
	ram:699f be             cp (hl)              	;.
	ram:69a0 23             inc hl               	;#
	ram:69a1 03             inc bc               	;.
	ram:69a2 20 fb          jr nz,l699fh         	;.
	ram:69a4 c9             ret                  	;.
l69a5h:
	ram:69a5 7e             ld a,(hl)            	;~
	ram:69a6 23             inc hl               	;#
	ram:69a7 b7             or a                 	;.
	ram:69a8 c8             ret z                	;.
	ram:69a9 12             ld (de),a            	;.
	ram:69aa 13             inc de               	;.
	ram:69ab 18 f8          jr l69a5h            	;. .
sub_69adh:
	ram:69ad d5             push de              	;.
	ram:69ae e5             push hl              	;.
	ram:69af 5f             ld e,a               	;_
	ram:69b0 16 00          ld d,000h            	;. .
	ram:69b2 21 2e 6d       ld hl,06d2eh         	;! . m
	ram:69b5 19             add hl,de            	;.
	ram:69b6 7e             ld a,(hl)            	;~
	ram:69b7 5f             ld e,a               	;_
	ram:69b8 e6 0f          and 00fh             	;. .
	ram:69ba cb 13          rl e                 	;. .
	ram:69bc e1             pop hl               	;.
	ram:69bd d1             pop de               	;.
	ram:69be c9             ret                  	;.
sub_69bfh:
	ram:69bf 01 01 00       ld bc,00001h         	;. . .
	ram:69c2 7e             ld a,(hl)            	;~
	ram:69c3 23             inc hl               	;#
	ram:69c4 fe 44          cp 044h              	;. D
	ram:69c6 28 d6          jr z,l699eh          	;( .
	ram:69c8 fe 2d          cp 02dh              	;. -
	ram:69ca 28 d2          jr z,l699eh          	;( .
	ram:69cc fe 3b          cp 03bh              	;. ;
	ram:69ce 30 09          jr nc,l69d9h         	;0 .
	ram:69d0 fe 33          cp 033h              	;. 3
	ram:69d2 38 05          jr c,l69d9h          	;8 .
	ram:69d4 d6 32          sub 032h             	;. 2
	ram:69d6 5f             ld e,a               	;_
	ram:69d7 18 16          jr l69efh            	;. .
l69d9h:
	ram:69d9 fe 3d          cp 03dh              	;. =
	ram:69db 20 03          jr nz,l69e0h         	;.
	ram:69dd 03             inc bc               	;.
	ram:69de 23             inc hl               	;#
	ram:69df c9             ret                  	;.
l69e0h:
	ram:69e0 fe 3b          cp 03bh              	;. ;
	ram:69e2 28 08          jr z,l69ech          	;( .
	ram:69e4 fe 32          cp 032h              	;. 2
	ram:69e6 28 04          jr z,l69ech          	;( .
	ram:69e8 fe 3c          cp 03ch              	;. <
	ram:69ea 20 0c          jr nz,l69f8h         	;.
l69ech:
	ram:69ec 5e             ld e,(hl)            	;^
	ram:69ed 23             inc hl               	;#
	ram:69ee 1c             inc e                	;.
l69efh:
	ram:69ef 16 00          ld d,000h            	;. .
	ram:69f1 19             add hl,de            	;.
	ram:69f2 eb             ex de,hl             	;.
	ram:69f3 09             add hl,bc            	;.
	ram:69f4 4d             ld c,l               	;M
	ram:69f5 44             ld b,h               	;D
	ram:69f6 eb             ex de,hl             	;.
	ram:69f7 c9             ret                  	;.
l69f8h:
	ram:69f8 fe e1          cp 0e1h              	;. .
	ram:69fa 20 06          jr nz,l6a02h         	;.
	ram:69fc 03             inc bc               	;.
	ram:69fd 03             inc bc               	;.
	ram:69fe 23             inc hl               	;#
	ram:69ff 23             inc hl               	;#
	ram:6a00 18 9c          jr l699eh            	;. .
l6a02h:
	ram:6a02 fe e0          cp 0e0h              	;. .
	ram:6a04 28 98          jr z,l699eh          	;( .
	ram:6a06 fe ff          cp 0ffh              	;. .
	ram:6a08 28 94          jr z,l699eh          	;( .
	ram:6a0a c9             ret                  	;.
sub_6a0bh:
	ram:6a0b 01 00 00       ld bc,00000h         	;. . .
	ram:6a0e 7e             ld a,(hl)            	;~
	ram:6a0f 23             inc hl               	;#
	ram:6a10 fe 44          cp 044h              	;. D
	ram:6a12 20 0a          jr nz,l6a1eh         	;.
	ram:6a14 cd 99 6a       call sub_6a99h       	;. . j
	ram:6a17 cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6a1a 0b             dec bc               	;.
	ram:6a1b c3 9e 69       jp l699eh            	;. . i
l6a1eh:
	ram:6a1e fe 2d          cp 02dh              	;. -
	ram:6a20 20 07          jr nz,l6a29h         	;.
	ram:6a22 cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6a25 03             inc bc               	;.
	ram:6a26 c3 9e 69       jp l699eh            	;. . i
l6a29h:
	ram:6a29 fe 3b          cp 03bh              	;. ;
	ram:6a2b 30 09          jr nc,l6a36h         	;0 .
	ram:6a2d fe 33          cp 033h              	;. 3
	ram:6a2f 38 05          jr c,l6a36h          	;8 .
	ram:6a31 d6 32          sub 032h             	;. 2
	ram:6a33 4f             ld c,a               	;O
	ram:6a34 18 1f          jr l6a55h            	;. .
l6a36h:
	ram:6a36 fe 3d          cp 03dh              	;. =
	ram:6a38 20 0d          jr nz,l6a47h         	;.
	ram:6a3a 7e             ld a,(hl)            	;~
	ram:6a3b 23             inc hl               	;#
	ram:6a3c e5             push hl              	;.
	ram:6a3d 5f             ld e,a               	;_
	ram:6a3e 50             ld d,b               	;P
	ram:6a3f 21 4e 77       ld hl,0774eh         	;! N w
	ram:6a42 19             add hl,de            	;.
	ram:6a43 4e             ld c,(hl)            	;N
	ram:6a44 e1             pop hl               	;.
	ram:6a45 18 0f          jr l6a56h            	;. .
l6a47h:
	ram:6a47 fe 3b          cp 03bh              	;. ;
	ram:6a49 28 08          jr z,l6a53h          	;( .
	ram:6a4b fe 32          cp 032h              	;. 2
	ram:6a4d 28 04          jr z,l6a53h          	;( .
	ram:6a4f fe 3c          cp 03ch              	;. <
	ram:6a51 20 0b          jr nz,l6a5eh         	;.
l6a53h:
	ram:6a53 4e             ld c,(hl)            	;N
	ram:6a54 23             inc hl               	;#
l6a55h:
	ram:6a55 09             add hl,bc            	;.
l6a56h:
	ram:6a56 cd 99 6a       call sub_6a99h       	;. . j
sub_6a59h:
	ram:6a59 fd cb 13 ce    set 1,(iy+013h)      	;. . . .
	ram:6a5d c9             ret                  	;.
l6a5eh:
	ram:6a5e fe e1          cp 0e1h              	;. .
	ram:6a60 20 05          jr nz,l6a67h         	;.
	ram:6a62 03             inc bc               	;.
	ram:6a63 23             inc hl               	;#
	ram:6a64 23             inc hl               	;#
	ram:6a65 18 04          jr l6a6bh            	;. .
l6a67h:
	ram:6a67 fe e0          cp 0e0h              	;. .
	ram:6a69 20 0b          jr nz,l6a76h         	;.
l6a6bh:
	ram:6a6b 03             inc bc               	;.
	ram:6a6c 03             inc bc               	;.
	ram:6a6d 03             inc bc               	;.
	ram:6a6e 7e             ld a,(hl)            	;~
	ram:6a6f 3c             inc a                	;<
	ram:6a70 20 01          jr nz,l6a73h         	;.
	ram:6a72 23             inc hl               	;#
l6a73h:
	ram:6a73 c3 9e 69       jp l699eh            	;. . i
l6a76h:
	ram:6a76 fe ff          cp 0ffh              	;. .
	ram:6a78 ca 9e 69       jp z,l699eh          	;. . i
	ram:6a7b fe 3e          cp 03eh              	;. >
	ram:6a7d 20 04          jr nz,l6a83h         	;.
	ram:6a7f 03             inc bc               	;.
	ram:6a80 c3 6f 6c       jp sub_6c6fh         	;. o l
l6a83h:
	ram:6a83 e5             push hl              	;.
	ram:6a84 cd ad 69       call sub_69adh       	;. . i
	ram:6a87 f5             push af              	;.
	ram:6a88 dc 99 6a       call c,sub_6a99h     	;. . j
	ram:6a8b f1             pop af               	;.
	ram:6a8c cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6a8f fc 59 6a       call m,sub_6a59h     	;. Y j
	ram:6a92 6f             ld l,a               	;o
	ram:6a93 60             ld h,b               	;`
	ram:6a94 09             add hl,bc            	;.
	ram:6a95 4d             ld c,l               	;M
	ram:6a96 44             ld b,h               	;D
	ram:6a97 e1             pop hl               	;.
	ram:6a98 c9             ret                  	;.
sub_6a99h:
	ram:6a99 fd cb 13 4e    bit 1,(iy+013h)      	;. . . N
	ram:6a9d c8             ret z                	;.
	ram:6a9e 03             inc bc               	;.
	ram:6a9f c9             ret                  	;.
sub_6aa0h:
	ram:6aa0 cd a7 3c       call 03ca7h          	;. . <
	ram:6aa3 cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6aa6 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:6aa9 e5             push hl              	;.
	ram:6aaa ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:6aae b7             or a                 	;.
	ram:6aaf ed 52          sbc hl,de            	;. R
	ram:6ab1 e3             ex (sp),hl           	;.
l6ab2h:
	ram:6ab2 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:6ab6 cd 8e 00       call 0008eh          	;. . .
	ram:6ab9 28 15          jr z,l6ad0h          	;( .
	ram:6abb e5             push hl              	;.
	ram:6abc cd bf 69       call sub_69bfh       	;. . i
	ram:6abf e1             pop hl               	;.
	ram:6ac0 e3             ex (sp),hl           	;.
	ram:6ac1 09             add hl,bc            	;.
	ram:6ac2 e3             ex (sp),hl           	;.
	ram:6ac3 cd 0b 6a       call sub_6a0bh       	;. . j
	ram:6ac6 e3             ex (sp),hl           	;.
	ram:6ac7 b7             or a                 	;.
	ram:6ac8 ed 42          sbc hl,bc            	;. B
	ram:6aca fa 45 0a       jp m,00a45h          	;. E .
	ram:6acd e3             ex (sp),hl           	;.
	ram:6ace 18 e2          jr l6ab2h            	;. .
l6ad0h:
	ram:6ad0 e1             pop hl               	;.
	ram:6ad1 c9             ret                  	;.
sub_6ad2h:
	ram:6ad2 dd e5          push ix              	;. .
	ram:6ad4 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:6ad8 dd 39          add ix,sp            	;. 9
	ram:6ada e5             push hl              	;.
	ram:6adb d5             push de              	;.
	ram:6adc 97             sub a                	;.
	ld (ix-002h),a		;6add	dd 77 fe	. w .
	ld (ix-001h),a		;6ae0	dd 77 ff	. w .
	ram:6ae3 5e             ld e,(hl)            	;^
	ram:6ae4 23             inc hl               	;#
	ram:6ae5 56             ld d,(hl)            	;V
	ram:6ae6 23             inc hl               	;#
	ram:6ae7 e5             push hl              	;.
	ram:6ae8 19             add hl,de            	;.
	ram:6ae9 e3             ex (sp),hl           	;.
	ram:6aea cd 6f 6c       call sub_6c6fh       	;. o l
l6aedh:
	ram:6aed d1             pop de               	;.
	ram:6aee cd 8e 00       call 0008eh          	;. . .
	ram:6af1 28 15          jr z,l6b08h          	;( .
	ram:6af3 d5             push de              	;.
	ram:6af4 cd 0b 6a       call sub_6a0bh       	;. . j
	ram:6af7 e5             push hl              	;.
	ld l,(ix-002h)		;6af8	dd 6e fe	. n .
	ld h,(ix-001h)		;6afb	dd 66 ff	. f .
	ram:6afe 09             add hl,bc            	;.
	ld (ix-002h),l		;6aff	dd 75 fe	. u .
	ld (ix-001h),h		;6b02	dd 74 ff	. t .
	ram:6b05 e1             pop hl               	;.
	ram:6b06 18 e5          jr l6aedh            	;. .
l6b08h:
	ld l,(ix-002h)		;6b08	dd 6e fe	. n .
	ld h,(ix-001h)		;6b0b	dd 66 ff	. f .
	ram:6b0e dd f9          ld sp,ix             	;. .
	ram:6b10 dd e1          pop ix               	;. .
	ram:6b12 c9             ret                  	;.
	ram:6b13 d7             rst 10h              	;.
	ram:6b14 eb             ex de,hl             	;.
	ram:6b15 22 d2 80       ld (080d2h),hl       	;" . .
	ram:6b18 cd d2 6a       call sub_6ad2h       	;. . j
	ram:6b1b e5             push hl              	;.
	ram:6b1c cd 95 20       call 02095h          	;. .  
	ram:6b1f d7             rst 10h              	;.
	ram:6b20 38 22          jr c,l6b44h          	;8 "
	ram:6b22 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:6b25 ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:6b29 7e             ld a,(hl)            	;~
	ram:6b2a 32 a3 80       ld (080a3h),a        	;2 . .
	ram:6b2d d1             pop de               	;.
	ram:6b2e d5             push de              	;.
	ram:6b2f 13             inc de               	;.
	ram:6b30 13             inc de               	;.
	ram:6b31 3e 0c          ld a,00ch            	;> .
	ram:6b33 32 82 80       ld (08082h),a        	;2 . .
	ram:6b36 cd 57 2a       call 02a57h          	;. W *
	ram:6b39 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:6b3c d1             pop de               	;.
	ram:6b3d 73             ld (hl),e            	;s
	ram:6b3e 23             inc hl               	;#
	ram:6b3f 72             ld (hl),d            	;r
	ram:6b40 23             inc hl               	;#
	ram:6b41 eb             ex de,hl             	;.
	ram:6b42 18 06          jr l6b4ah            	;. .
l6b44h:
	ram:6b44 e1             pop hl               	;.
	ram:6b45 cd 1c 2a       call 02a1ch          	;. . *
	ram:6b48 13             inc de               	;.
	ram:6b49 13             inc de               	;.
l6b4ah:
	ram:6b4a 2a d2 80       ld hl,(080d2h)       	;* . .
	ram:6b4d fd cb 13 a6    res 4,(iy+013h)      	;. . . .
	ram:6b51 cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6b54 4e             ld c,(hl)            	;N
	ram:6b55 23             inc hl               	;#
	ram:6b56 46             ld b,(hl)            	;F
	ram:6b57 23             inc hl               	;#
	ram:6b58 e5             push hl              	;.
	ram:6b59 09             add hl,bc            	;.
	ram:6b5a 4d             ld c,l               	;M
	ram:6b5b 44             ld b,h               	;D
	ram:6b5c e1             pop hl               	;.
l6b5dh:
	ram:6b5d 7d             ld a,l               	;}
	ram:6b5e b9             cp c                 	;.
	ram:6b5f 20 03          jr nz,l6b64h         	;.
	ram:6b61 7c             ld a,h               	;|
	ram:6b62 b8             cp b                 	;.
	ram:6b63 c8             ret z                	;.
l6b64h:
	ram:6b64 c5             push bc              	;.
	ram:6b65 cd ea 6b       call sub_6beah       	;. . k
	ram:6b68 c1             pop bc               	;.
	ram:6b69 18 f2          jr l6b5dh            	;. .
	ram:6b6b cd 8d 20       call 0208dh          	;. .  
	ram:6b6e cd 7d 20       call 0207dh          	;. }  
	ram:6b71 21 01 2f       ld hl,02f01h         	;! . /
	ram:6b74 22 83 80       ld (08083h),hl       	;" . .
	ram:6b77 21 02 00       ld hl,00002h         	;! . .
	ram:6b7a cd 2f 2a       call 02a2fh          	;. / *
	ram:6b7d cd 7b 35       call 0357bh          	;. { 5
	ram:6b80 b7             or a                 	;.
	ram:6b81 ed 52          sbc hl,de            	;. R
	ram:6b83 e5             push hl              	;.
	ram:6b84 cd 51 20       call 02051h          	;. Q  
	ram:6b87 d7             rst 10h              	;.
	ram:6b88 eb             ex de,hl             	;.
	ram:6b89 5e             ld e,(hl)            	;^
	ram:6b8a 23             inc hl               	;#
	ram:6b8b 56             ld d,(hl)            	;V
	ram:6b8c 23             inc hl               	;#
	ram:6b8d e3             ex (sp),hl           	;.
	ram:6b8e cd 8e 00       call 0008eh          	;. . .
	ram:6b91 38 3c          jr c,l6bcfh          	;8 <
	ram:6b93 4b             ld c,e               	;K
	ram:6b94 42             ld b,d               	;B
	ram:6b95 e1             pop hl               	;.
	ram:6b96 ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:6b9a 79             ld a,c               	;y
	ram:6b9b b0             or b                 	;.
	ram:6b9c 28 02          jr z,l6ba0h          	;( .
	ram:6b9e ed b0          ldir                 	;. .
l6ba0h:
	ram:6ba0 ed 53 1b 8b    ld (08b1bh),de       	;. S . .
	ram:6ba4 cd b5 65       call sub_65b5h       	;. . e
	ram:6ba7 cd cb 3c       call 03ccbh          	;. . <
	ram:6baa fd cb 13 56    bit 2,(iy+013h)      	;. . . V
	ram:6bae 20 23          jr nz,l6bd3h         	;#
	ram:6bb0 cd 5b 20       call 0205bh          	;. [  
	ram:6bb3 21 01 2f       ld hl,02f01h         	;! . /
	ram:6bb6 22 af 80       ld (080afh),hl       	;" . .
	ram:6bb9 3e 0a          ld a,00ah            	;> .
	ram:6bbb 32 ae 80       ld (080aeh),a        	;2 . .
	ram:6bbe cd 36 2e       call 02e36h          	;. 6 .
	ram:6bc1 21 d9 6b       ld hl,l6bd9h         	;! . k
	ram:6bc4 cd b5 0a       call 00ab5h          	;. . .
	ram:6bc7 cd af 3a       call 03aafh          	;. . :
	ram:6bca cd db 0a       call 00adbh          	;. . .
	ram:6bcd 18 10          jr l6bdfh            	;. .
l6bcfh:
	ram:6bcf e1             pop hl               	;.
	ram:6bd0 cd cb 3c       call 03ccbh          	;. . <
l6bd3h:
	ram:6bd3 cd df 6b       call l6bdfh          	;. . k
	ram:6bd6 c3 3c 0a       jp 00a3ch            	;. < .
l6bd9h:
	ram:6bd9 cd df 6b       call l6bdfh          	;. . k
	ram:6bdc c3 8a 0a       jp 00a8ah            	;. . .
l6bdfh:
	ram:6bdf 21 01 2f       ld hl,02f01h         	;! . /
	ram:6be2 22 83 80       ld (08083h),hl       	;" . .
	ram:6be5 d7             rst 10h              	;.
	ram:6be6 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:6be9 c9             ret                  	;.
sub_6beah:
	ram:6bea 7e             ld a,(hl)            	;~
	ram:6beb 23             inc hl               	;#
	ram:6bec fe 44          cp 044h              	;. D
	ram:6bee 20 09          jr nz,l6bf9h         	;.
	ram:6bf0 cd bd 6c       call sub_6cbdh       	;. . l
	ram:6bf3 cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6bf6 c3 a5 69       jp l69a5h            	;. . i
l6bf9h:
	ram:6bf9 fe 2d          cp 02dh              	;. -
	ram:6bfb 20 0f          jr nz,l6c0ch         	;.
	ram:6bfd cd 6f 6c       call sub_6c6fh       	;. o l
l6c00h:
	ram:6c00 3e 22          ld a,022h            	;> "
	ram:6c02 12             ld (de),a            	;.
	ram:6c03 13             inc de               	;.
	ram:6c04 cd a5 69       call l69a5h          	;. . i
	ram:6c07 3e 22          ld a,022h            	;> "
	ram:6c09 12             ld (de),a            	;.
	ram:6c0a 13             inc de               	;.
	ram:6c0b c9             ret                  	;.
l6c0ch:
	ram:6c0c fe 3b          cp 03bh              	;. ;
	ram:6c0e 30 1f          jr nc,l6c2fh         	;0 .
	ram:6c10 fe 33          cp 033h              	;. 3
	ram:6c12 38 1b          jr c,l6c2fh          	;8 .
	ram:6c14 d6 32          sub 032h             	;. 2
	ram:6c16 47             ld b,a               	;G
	ram:6c17 cd bd 6c       call sub_6cbdh       	;. . l
	ram:6c1a cd 59 6a       call sub_6a59h       	;. Y j
	ram:6c1d cd 58 6c       call sub_6c58h       	;. X l
	ram:6c20 fd cb 13 66    bit 4,(iy+013h)      	;. . . f
	ram:6c24 c8             ret z                	;.
	ram:6c25 3e 05          ld a,005h            	;> .
	ram:6c27 12             ld (de),a            	;.
	ram:6c28 13             inc de               	;.
	ram:6c29 fd cb 13 a6    res 4,(iy+013h)      	;. . . .
	ram:6c2d 18 40          jr sub_6c6fh         	;. @
l6c2fh:
	ram:6c2f fe 3d          cp 03dh              	;. =
	ram:6c31 20 11          jr nz,l6c44h         	;.
	ram:6c33 cd bd 6c       call sub_6cbdh       	;. . l
	ram:6c36 cd 59 6a       call sub_6a59h       	;. Y j
	ram:6c39 7e             ld a,(hl)            	;~
	ram:6c3a 23             inc hl               	;#
	ram:6c3b e5             push hl              	;.
	ram:6c3c cd b2 6c       call sub_6cb2h       	;. . l
	ram:6c3f cd a5 69       call l69a5h          	;. . i
	ram:6c42 e1             pop hl               	;.
	ram:6c43 c9             ret                  	;.
l6c44h:
	ram:6c44 fe 3b          cp 03bh              	;. ;
	ram:6c46 28 08          jr z,l6c50h          	;( .
	ram:6c48 fe 32          cp 032h              	;. 2
	ram:6c4a 28 04          jr z,l6c50h          	;( .
	ram:6c4c fe 3c          cp 03ch              	;. <
	ram:6c4e 20 0f          jr nz,l6c5fh         	;.
l6c50h:
	ram:6c50 cd bd 6c       call sub_6cbdh       	;. . l
	ram:6c53 cd 59 6a       call sub_6a59h       	;. Y j
	ram:6c56 46             ld b,(hl)            	;F
	ram:6c57 23             inc hl               	;#
sub_6c58h:
	ram:6c58 7e             ld a,(hl)            	;~
	ram:6c59 23             inc hl               	;#
	ram:6c5a 12             ld (de),a            	;.
	ram:6c5b 13             inc de               	;.
	ram:6c5c 10 fa          djnz sub_6c58h       	;. .
	ram:6c5e c9             ret                  	;.
l6c5fh:
	ram:6c5f fe ff          cp 0ffh              	;. .
	ram:6c61 ca a5 69       jp z,l69a5h          	;. . i
	ram:6c64 fe 3e          cp 03eh              	;. >
	ram:6c66 20 0c          jr nz,l6c74h         	;.
	ram:6c68 fd cb 13 e6    set 4,(iy+013h)      	;. . . .
	ram:6c6c cd c2 6c       call sub_6cc2h       	;. . l
sub_6c6fh:
	ram:6c6f fd cb 13 8e    res 1,(iy+013h)      	;. . . .
	ram:6c73 c9             ret                  	;.
l6c74h:
	ram:6c74 f5             push af              	;.
	ram:6c75 cd ad 69       call sub_69adh       	;. . i
	ram:6c78 f5             push af              	;.
	ram:6c79 dc bd 6c       call c,sub_6cbdh     	;. . l
	ram:6c7c f1             pop af               	;.
	ram:6c7d cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6c80 fc 59 6a       call m,sub_6a59h     	;. Y j
	ram:6c83 f1             pop af               	;.
	ram:6c84 e5             push hl              	;.
	ram:6c85 6f             ld l,a               	;o
	ram:6c86 26 00          ld h,000h            	;& .
	ram:6c88 29             add hl,hl            	;)
	ram:6c89 01 2c 6e       ld bc,l6e2ch         	;. , n
	ram:6c8c 09             add hl,bc            	;.
	ram:6c8d 4f             ld c,a               	;O
	ram:6c8e cd 33 00       call 00033h          	;. 3 .
	ram:6c91 cd a5 69       call l69a5h          	;. . i
	ram:6c94 e1             pop hl               	;.
	ram:6c95 79             ld a,c               	;y
	ram:6c96 fe e1          cp 0e1h              	;. .
	ram:6c98 20 04          jr nz,l6c9eh         	;.
	ram:6c9a 23             inc hl               	;#
	ram:6c9b 23             inc hl               	;#
	ram:6c9c 18 03          jr l6ca1h            	;. .
l6c9eh:
	ram:6c9e fe e0          cp 0e0h              	;. .
	ram:6ca0 c0             ret nz               	;.
l6ca1h:
	ram:6ca1 7e             ld a,(hl)            	;~
	ram:6ca2 3c             inc a                	;<
	ram:6ca3 20 01          jr nz,l6ca6h         	;.
	ram:6ca5 23             inc hl               	;#
l6ca6h:
	ram:6ca6 c3 a5 69       jp l69a5h            	;. . i
	ram:6ca9 cd b2 6c       call sub_6cb2h       	;. . l
	ram:6cac 11 fc 82       ld de,082fch         	;. . .
	ram:6caf c3 42 30       jp 03042h            	;. B 0
sub_6cb2h:
	ram:6cb2 6f             ld l,a               	;o
	ram:6cb3 26 00          ld h,000h            	;& .
	ram:6cb5 29             add hl,hl            	;)
	ram:6cb6 01 83 77       ld bc,l7783h         	;. . w
	ram:6cb9 09             add hl,bc            	;.
	ram:6cba c3 33 00       jp 00033h            	;. 3 .
sub_6cbdh:
	ram:6cbd fd cb 13 4e    bit 1,(iy+013h)      	;. . . N
	ram:6cc1 c8             ret z                	;.
sub_6cc2h:
	ram:6cc2 3e 20          ld a,020h            	;>  
	ram:6cc4 12             ld (de),a            	;.
	ram:6cc5 13             inc de               	;.
	ram:6cc6 18 a7          jr sub_6c6fh         	;. .
sub_6cc8h:
	ram:6cc8 cd a0 6a       call sub_6aa0h       	;. . j
	ram:6ccb fd cb 13 a6    res 4,(iy+013h)      	;. . . .
	ram:6ccf cd 6f 6c       call sub_6c6fh       	;. o l
	ram:6cd2 2a 1d 8b       ld hl,(08b1dh)       	;* . .
l6cd5h:
	ram:6cd5 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:6cd9 cd 8e 00       call 0008eh          	;. . .
	ram:6cdc 28 0d          jr z,l6cebh          	;( .
	ram:6cde ed 5b 1b 8b    ld de,(08b1bh)       	;. [ . .
	ram:6ce2 cd ea 6b       call sub_6beah       	;. . k
	ram:6ce5 ed 53 1b 8b    ld (08b1bh),de       	;. S . .
	ram:6ce9 18 ea          jr l6cd5h            	;. .
l6cebh:
	ram:6ceb 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:6cee c9             ret                  	;.
sub_6cefh:
	ram:6cef d5             push de              	;.
	ram:6cf0 e5             push hl              	;.
	ram:6cf1 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:6cf4 22 19 8b       ld (08b19h),hl       	;" . .
	ram:6cf7 22 1b 8b       ld (08b1bh),hl       	;" . .
	ram:6cfa eb             ex de,hl             	;.
	ram:6cfb 2a e5 8b       ld hl,(08be5h)       	;* . .
	ram:6cfe 22 1d 8b       ld (08b1dh),hl       	;" . .
	ram:6d01 22 1f 8b       ld (08b1fh),hl       	;" . .
	ram:6d04 cd 8e 00       call 0008eh          	;. . .
	ram:6d07 da 45 0a       jp c,00a45h          	;. E .
	ram:6d0a e1             pop hl               	;.
	ram:6d0b d1             pop de               	;.
	ram:6d0c c9             ret                  	;.
	ram:6d0d eb             ex de,hl             	;.
	ram:6d0e 7e             ld a,(hl)            	;~
	ram:6d0f 23             inc hl               	;#
	ram:6d10 b6             or (hl)              	;.
	ram:6d11 c8             ret z                	;.
	ram:6d12 23             inc hl               	;#
	ram:6d13 7e             ld a,(hl)            	;~
	ram:6d14 b7             or a                 	;.
	ram:6d15 c0             ret nz               	;.
	ram:6d16 cd 21 20       call 02021h          	;. !  
	ram:6d19 cd 81 35       call 03581h          	;. . 5
	ram:6d1c cd 31 3d       call 03d31h          	;. 1 =
	ram:6d1f cd b5 65       call sub_65b5h       	;. . e
	ram:6d22 cd cb 3c       call 03ccbh          	;. . <
	ram:6d25 fd cb 13 56    bit 2,(iy+013h)      	;. . . V
	ram:6d29 c2 3c 0a       jp nz,00a3ch         	;. < .
	ram:6d2c c3 60 20       jp 02060h            	;. `  
	ram:6d2f 44             ld b,h               	;D
	ram:6d30 44             ld b,h               	;D
	ram:6d31 44             ld b,h               	;D
	ram:6d32 44             ld b,h               	;D
	ram:6d33 44             ld b,h               	;D
	ram:6d34 44             ld b,h               	;D
	ram:6d35 44             ld b,h               	;D
	ram:6d36 44             ld b,h               	;D
	ram:6d37 44             ld b,h               	;D
	ram:6d38 45             ld b,l               	;E
	ram:6d39 01 01 01       ld bc,00101h         	;. . .
	ram:6d3c 01 01 01       ld bc,00101h         	;. . .
	ram:6d3f 01 c5 c3       ld bc,0c3c5h         	;. . .
	ram:6d42 c3 c3 c5       jp 0c5c3h            	;. . .
	ram:6d45 c3 c3 c5       jp 0c5c3h            	;. . .
	ram:6d48 c4 c5 c5       call nz,0c5c5h       	;. . .
	ram:6d4b c3 c3 c3       jp 0c3c3h            	;. . .
	ram:6d4e c6 c5          add a,0c5h           	;. .
	ram:6d50 c5             push bc              	;.
	ram:6d51 c5             push bc              	;.
	ram:6d52 c3 c5 c5       jp 0c5c5h            	;. . .
	ram:6d55 c3 c4 c4       jp 0c4c4h            	;. . .
	ram:6d58 c4 c4 c4       call nz,0c4c4h       	;. . .
	ram:6d5b 00             nop                  	;.
	ram:6d5c 01 01 04       ld bc,00401h         	;. . .
	ram:6d5f 05             dec b                	;.
	ram:6d60 00             nop                  	;.
	ram:6d61 00             nop                  	;.
	ram:6d62 00             nop                  	;.
	ram:6d63 00             nop                  	;.
	ram:6d64 00             nop                  	;.
	ram:6d65 00             nop                  	;.
	ram:6d66 00             nop                  	;.
	ram:6d67 00             nop                  	;.
	ram:6d68 00             nop                  	;.
	ram:6d69 00             nop                  	;.
	ram:6d6a 00             nop                  	;.
	ram:6d6b 00             nop                  	;.
	ram:6d6c 02             ld (bc),a            	;.
	ram:6d6d 01 05 c4       ld bc,0c405h         	;. . .
	ram:6d70 01 c5 00       ld bc,000c5h         	;. . .
	ram:6d73 01 01 01       ld bc,00101h         	;. . .
	ram:6d76 01 01 01       ld bc,00101h         	;. . .
	ram:6d79 01 c4 86       ld bc,086c4h         	;. . .
	ram:6d7c 86             add a,(hl)           	;.
	ram:6d7d 86             add a,(hl)           	;.
	ram:6d7e 02             ld (bc),a            	;.
	ram:6d7f 01 01 01       ld bc,00101h         	;. . .
	ram:6d82 01 01 c6       ld bc,0c601h         	;. . .
	ram:6d85 c6 c6          add a,0c6h           	;. .
	ram:6d87 c3 c3 c5       jp 0c5c3h            	;. . .
	ram:6d8a 84             add a,h              	;.
	ram:6d8b c5             push bc              	;.
	ram:6d8c c4 c7 01       call nz,001c7h       	;. . .
	ram:6d8f 01 c4 c5       ld bc,0c5c4h         	;. . .
	ram:6d92 c3 c5 c3       jp 0c3c5h            	;. . .
	ram:6d95 c3 c3 c3       jp 0c3c3h            	;. . .
	ram:6d98 c5             push bc              	;.
	ram:6d99 c6 c6          add a,0c6h           	;. .
	ram:6d9b c6 01          add a,001h           	;. .
	ram:6d9d 01 01 01       ld bc,00101h         	;. . .
	ram:6da0 c4 c6 c7       call nz,0c7c6h       	;. . .
	ram:6da3 c6 c7          add a,0c7h           	;. .
	ram:6da5 c8             ret z                	;.
	ram:6da6 c8             ret z                	;.
	ram:6da7 c7             rst 0                	;.
	ram:6da8 c6 c7          add a,0c7h           	;. .
	ram:6daa c6 c7          add a,0c7h           	;. .
	ram:6dac c7             rst 0                	;.
	ram:6dad c8             ret z                	;.
	ram:6dae 05             dec b                	;.
	ram:6daf 05             dec b                	;.
	ram:6db0 c5             push bc              	;.
	ram:6db1 c5             push bc              	;.
	ram:6db2 c4 c5 c4       call nz,0c4c5h       	;. . .
	ram:6db5 c3 c4 c4       jp 0c4c4h            	;. . .
	ram:6db8 c4 c5 c5       call nz,0c5c5h       	;. . .
	ram:6dbb c4 c7 86       call nz,086c7h       	;. . .
	ram:6dbe 85             add a,l              	;.
	ram:6dbf 86             add a,(hl)           	;.
	ram:6dc0 86             add a,(hl)           	;.
	ram:6dc1 86             add a,(hl)           	;.
	ram:6dc2 86             add a,(hl)           	;.
	ram:6dc3 86             add a,(hl)           	;.
	ram:6dc4 c4 85 c4       call nz,0c485h       	;. . .
	ram:6dc7 c5             push bc              	;.
	ram:6dc8 c5             push bc              	;.
	ram:6dc9 c5             push bc              	;.
	ram:6dca c5             push bc              	;.
	ram:6dcb c4 c5 86       call nz,086c5h       	;. . .
	ram:6dce 01 01 84       ld bc,08401h         	;. . .
	ram:6dd1 86             add a,(hl)           	;.
	ram:6dd2 86             add a,(hl)           	;.
	ram:6dd3 84             add a,h              	;.
	ram:6dd4 83             add a,e              	;.
	ram:6dd5 82             add a,d              	;.
	ram:6dd6 84             add a,h              	;.
	ram:6dd7 02             ld (bc),a            	;.
	ram:6dd8 84             add a,h              	;.
	ram:6dd9 85             add a,l              	;.
	ram:6dda 84             add a,h              	;.
	ram:6ddb 85             add a,l              	;.
	ram:6ddc 84             add a,h              	;.
	ram:6ddd 85             add a,l              	;.
	ram:6dde 85             add a,l              	;.
	ram:6ddf 86             add a,(hl)           	;.
	ram:6de0 85             add a,l              	;.
	ram:6de1 86             add a,(hl)           	;.
	ram:6de2 85             add a,l              	;.
	ram:6de3 86             add a,(hl)           	;.
	ram:6de4 85             add a,l              	;.
	ram:6de5 84             add a,h              	;.
	ram:6de6 86             add a,(hl)           	;.
	ram:6de7 86             add a,(hl)           	;.
	ram:6de8 85             add a,l              	;.
	ram:6de9 86             add a,(hl)           	;.
	ram:6dea 86             add a,(hl)           	;.
	ram:6deb 84             add a,h              	;.
	ram:6dec 85             add a,l              	;.
	ram:6ded 84             add a,h              	;.
	ram:6dee 85             add a,l              	;.
	ram:6def 84             add a,h              	;.
	ram:6df0 85             add a,l              	;.
	ram:6df1 86             add a,(hl)           	;.
	ram:6df2 86             add a,(hl)           	;.
	ram:6df3 86             add a,(hl)           	;.
	ram:6df4 86             add a,(hl)           	;.
	ram:6df5 86             add a,(hl)           	;.
	ram:6df6 85             add a,l              	;.
	ram:6df7 85             add a,l              	;.
	ram:6df8 85             add a,l              	;.
	ram:6df9 86             add a,(hl)           	;.
	ram:6dfa 84             add a,h              	;.
	ram:6dfb 85             add a,l              	;.
	ram:6dfc 85             add a,l              	;.
	ram:6dfd 86             add a,(hl)           	;.
	ram:6dfe 86             add a,(hl)           	;.
	ram:6dff 86             add a,(hl)           	;.
	ram:6e00 86             add a,(hl)           	;.
	ram:6e01 85             add a,l              	;.
	ram:6e02 85             add a,l              	;.
	ram:6e03 86             add a,(hl)           	;.
	ram:6e04 86             add a,(hl)           	;.
	ram:6e05 85             add a,l              	;.
	ram:6e06 83             add a,e              	;.
	ram:6e07 c4 c4 86       call nz,086c4h       	;. . .
	ram:6e0a 87             add a,a              	;.
	ram:6e0b c3 c3 c6       jp 0c6c3h            	;. . .
	ram:6e0e 84             add a,h              	;.
	ram:6e0f 85             add a,l              	;.
	ram:6e10 86             add a,(hl)           	;.
	ram:6e11 c4 83 83       call nz,08383h       	;. . .
	ram:6e14 86             add a,(hl)           	;.
	ram:6e15 87             add a,a              	;.
	ram:6e16 86             add a,(hl)           	;.
	ram:6e17 85             add a,l              	;.
	ram:6e18 c5             push bc              	;.
	ram:6e19 c5             push bc              	;.
	ram:6e1a c5             push bc              	;.
	ram:6e1b c5             push bc              	;.
	ram:6e1c c5             push bc              	;.
	ram:6e1d c4 01 02       call nz,00201h       	;. . .
	ram:6e20 c6 87          add a,087h           	;. .
	ram:6e22 85             add a,l              	;.
	ram:6e23 85             add a,l              	;.
	ram:6e24 84             add a,h              	;.
	ram:6e25 85             add a,l              	;.
	ram:6e26 c5             push bc              	;.
	ram:6e27 85             add a,l              	;.
	ram:6e28 87             add a,a              	;.
	ram:6e29 88             adc a,b              	;.
	ram:6e2a 86             add a,(hl)           	;.
	ram:6e2b 86             add a,(hl)           	;.
l6e2ch:
	ram:6e2c c2 00 96       jp nz,09600h         	;. . .
	ram:6e2f 71             ld (hl),c            	;q
	ram:6e30 9b             sbc a,e              	;.
	ram:6e31 71             ld (hl),c            	;q
	ram:6e32 a0             and b                	;.
	ram:6e33 71             ld (hl),c            	;q
	ram:6e34 a5             and l                	;.
	ram:6e35 71             ld (hl),c            	;q
	ram:6e36 aa             xor d                	;.
	ram:6e37 71             ld (hl),c            	;q
	ram:6e38 af             xor a                	;.
	ram:6e39 71             ld (hl),c            	;q
	ram:6e3a b4             or h                 	;.
	ram:6e3b 71             ld (hl),c            	;q
	ram:6e3c b9             cp c                 	;.
	ram:6e3d 71             ld (hl),c            	;q
	ram:6e3e be             cp (hl)              	;.
	ram:6e3f 71             ld (hl),c            	;q
	ram:6e40 c3 71 c9       jp 0c971h            	;. q .
	ram:6e43 71             ld (hl),c            	;q
	ram:6e44 cb 71          bit 6,c              	;. q
	ram:6e46 cd 71 cf       call 0cf71h          	;. q .
	ram:6e49 71             ld (hl),c            	;q
	ram:6e4a d1             pop de               	;.
	ram:6e4b 71             ld (hl),c            	;q
	ram:6e4c d3 71          out (071h),a         	;. q
	ram:6e4e d5             push de              	;.
l6e4fh:
	ram:6e4f 71             ld (hl),c            	;q
	ram:6e50 d7             rst 10h              	;.
	ram:6e51 71             ld (hl),c            	;q
	ram:6e52 de 71          sbc a,071h           	;. q
	ram:6e54 e3             ex (sp),hl           	;.
	ram:6e55 71             ld (hl),c            	;q
	ram:6e56 e8             ret pe               	;.
	ram:6e57 71             ld (hl),c            	;q
	ram:out                 defb 0edh,071h       	;(c),0	;6e58	ed 71		. q
	ram:6e5a f4 71 f9       call p,0f971h        	;. q .
	ram:6e5d 71             ld (hl),c            	;q
	ram:6e5e fe 71          cp 071h              	;. q
	ram:6e60 05             dec b                	;.
l6e61h:
	ram:6e61 72             ld (hl),d            	;r
	ram:6e62 0b             dec bc               	;.
	ram:6e63 72             ld (hl),d            	;r
	ram:6e64 12             ld (de),a            	;.
	ram:6e65 72             ld (hl),d            	;r
	ram:6e66 19             add hl,de            	;.
	ram:6e67 72             ld (hl),d            	;r
	ram:6e68 1e 72          ld e,072h            	;. r
	ram:6e6a 23             inc hl               	;#
	ram:6e6b 72             ld (hl),d            	;r
	ram:6e6c 28 72          jr z,l6ee0h          	;( r
	ram:6e6e 30 72          jr nc,116            	;0 r
	ram:6e70 37             scf                  	;7
	ram:6e71 72             ld (hl),d            	;r
	ram:6e72 3e 72          ld a,072h            	;> r
	ram:6e74 45             ld b,l               	;E
	ram:6e75 72             ld (hl),d            	;r
	ram:6e76 4a             ld c,d               	;J
	ram:6e77 72             ld (hl),d            	;r
	ram:6e78 51             ld d,c               	;Q
	ram:6e79 72             ld (hl),d            	;r
	ram:6e7a 58             ld e,b               	;X
	ram:6e7b 72             ld (hl),d            	;r
	ram:6e7c 5d             ld e,l               	;]
	ram:6e7d 72             ld (hl),d            	;r
	ram:6e7e 63             ld h,e               	;c
	ram:6e7f 72             ld (hl),d            	;r
	ram:6e80 69             ld l,c               	;i
	ram:6e81 72             ld (hl),d            	;r
	ram:6e82 6f             ld l,a               	;o
	ram:6e83 72             ld (hl),d            	;r
	ram:6e84 75             ld (hl),l            	;u
	ram:6e85 72             ld (hl),d            	;r
	ram:6e86 00             nop                  	;.
	ram:6e87 00             nop                  	;.
	ram:6e88 7b             ld a,e               	;{
	ram:6e89 72             ld (hl),d            	;r
	ram:6e8a 7d             ld a,l               	;}
	ram:6e8b 72             ld (hl),d            	;r
	ram:6e8c 7f             ld a,a               	;.
	ram:6e8d 72             ld (hl),d            	;r
	ram:6e8e 85             add a,l              	;.
	ram:6e8f 72             ld (hl),d            	;r
	ram:6e90 00             nop                  	;.
	ram:6e91 00             nop                  	;.
	ram:6e92 00             nop                  	;.
	ram:6e93 00             nop                  	;.
	ram:6e94 00             nop                  	;.
	ram:6e95 00             nop                  	;.
	ram:6e96 00             nop                  	;.
	ram:6e97 00             nop                  	;.
	ram:6e98 00             nop                  	;.
	ram:6e99 00             nop                  	;.
	ram:6e9a 00             nop                  	;.
	ram:6e9b 00             nop                  	;.
	ram:6e9c 00             nop                  	;.
	ram:6e9d 00             nop                  	;.
	ram:6e9e 00             nop                  	;.
	ram:6e9f 00             nop                  	;.
	ram:6ea0 00             nop                  	;.
	ram:6ea1 00             nop                  	;.
	ram:6ea2 00             nop                  	;.
	ram:6ea3 00             nop                  	;.
	ram:6ea4 00             nop                  	;.
	ram:6ea5 00             nop                  	;.
	ram:6ea6 00             nop                  	;.
	ram:6ea7 00             nop                  	;.
	ram:6ea8 8c             adc a,h              	;.
	ram:6ea9 72             ld (hl),d            	;r
	ram:6eaa 8e             adc a,(hl)           	;.
	ram:6eab 72             ld (hl),d            	;r
	ram:6eac 90             sub b                	;.
	ram:6ead 72             ld (hl),d            	;r
	ram:6eae 97             sub a                	;.
	ram:6eaf 72             ld (hl),d            	;r
	ram:6eb0 9d             sbc a,l              	;.
	ram:6eb1 72             ld (hl),d            	;r
	ram:6eb2 9f             sbc a,a              	;.
	ram:6eb3 72             ld (hl),d            	;r
	ram:6eb4 00             nop                  	;.
	ram:6eb5 00             nop                  	;.
	ram:6eb6 a6             and (hl)             	;.
	ram:6eb7 72             ld (hl),d            	;r
	ram:6eb8 a8             xor b                	;.
	ram:6eb9 72             ld (hl),d            	;r
	ram:6eba aa             xor d                	;.
	ram:6ebb 72             ld (hl),d            	;r
	ram:6ebc ac             xor h                	;.
	ram:6ebd 72             ld (hl),d            	;r
	ram:6ebe ae             xor (hl)             	;.
	ram:6ebf 72             ld (hl),d            	;r
	ram:6ec0 b0             or b                 	;.
	ram:6ec1 72             ld (hl),d            	;r
	ram:6ec2 b2             or d                 	;.
	ram:6ec3 72             ld (hl),d            	;r
	ram:6ec4 b4             or h                 	;.
	ram:6ec5 72             ld (hl),d            	;r
	ram:6ec6 ba             cp d                 	;.
	ram:6ec7 72             ld (hl),d            	;r
	ram:6ec8 c2 72 ca       jp nz,0ca72h         	;. r .
	ram:6ecb 72             ld (hl),d            	;r
	ram:6ecc d2 72 d5       jp nc,0d572h         	;. r .
	ram:6ecf 72             ld (hl),d            	;r
	ram:6ed0 d7             rst 10h              	;.
	ram:6ed1 72             ld (hl),d            	;r
	ram:6ed2 d9             exx                  	;.
	ram:6ed3 72             ld (hl),d            	;r
	ram:6ed4 db 72          in a,(072h)          	;. r
	ld (ix-021h),d		;6ed6	dd 72 df	. r .
	ram:6ed9 72             ld (hl),d            	;r
	ram:6eda e7             rst 20h              	;.
	ram:6edb 72             ld (hl),d            	;r
	ram:6edc ef             rst 28h              	;.
	ram:6edd 72             ld (hl),d            	;r
	ram:6ede f7             rst 30h              	;.
	ram:6edf 72             ld (hl),d            	;r
l6ee0h:
	ram:6ee0 fc 72 01       call m,00172h        	;. r .
	ram:6ee3 73             ld (hl),e            	;s
	ram:6ee4 08             ex af,af'            	;.
	ram:6ee5 73             ld (hl),e            	;s
	ram:6ee6 0e 73          ld c,073h            	;. s
	ram:6ee8 15             dec d                	;.
	ram:6ee9 73             ld (hl),e            	;s
	ram:6eea 1b             dec de               	;.
	ram:6eeb 73             ld (hl),e            	;s
	ram:6eec 24             inc h                	;$
	ram:6eed 73             ld (hl),e            	;s
	ram:6eee 26 73          ld h,073h            	;& s
	ram:6ef0 28 73          jr z,l6f65h          	;( s
	ram:6ef2 2e 73          ld l,073h            	;. s
	ram:6ef4 35             dec (hl)             	;5
	ram:6ef5 73             ld (hl),e            	;s
	ram:6ef6 3a 73 41       ld a,(l4173h)        	;: s A
	ram:6ef9 73             ld (hl),e            	;s
	ram:6efa 46             ld b,(hl)            	;F
	ram:6efb 73             ld (hl),e            	;s
	ram:6efc 4b             ld c,e               	;K
	ram:6efd 73             ld (hl),e            	;s
	ram:6efe 50             ld d,b               	;P
	ram:6eff 73             ld (hl),e            	;s
	ram:6f00 55             ld d,l               	;U
	ram:6f01 73             ld (hl),e            	;s
	ram:6f02 5c             ld e,h               	;\
	ram:6f03 73             ld (hl),e            	;s
	ram:6f04 64             ld h,h               	;d
	ram:6f05 73             ld (hl),e            	;s
	ram:6f06 6c             ld l,h               	;l
	ram:6f07 73             ld (hl),e            	;s
	ram:6f08 74             ld (hl),h            	;t
	ram:6f09 73             ld (hl),e            	;s
	ram:6f0a 76             halt                 	;v
	ram:6f0b 73             ld (hl),e            	;s
	ram:6f0c 78             ld a,b               	;x
	ram:6f0d 73             ld (hl),e            	;s
	ram:6f0e 7a             ld a,d               	;z
	ram:6f0f 73             ld (hl),e            	;s
	ram:6f10 7c             ld a,h               	;|
	ram:6f11 73             ld (hl),e            	;s
	ram:6f12 82             add a,d              	;.
	ram:6f13 73             ld (hl),e            	;s
	ram:6f14 8a             adc a,d              	;.
	ram:6f15 73             ld (hl),e            	;s
	ram:6f16 93             sub e                	;.
	ram:6f17 73             ld (hl),e            	;s
	ram:6f18 9b             sbc a,e              	;.
	ram:6f19 73             ld (hl),e            	;s
	ram:6f1a a4             and h                	;.
	ram:6f1b 73             ld (hl),e            	;s
	ram:6f1c ae             xor (hl)             	;.
	ram:6f1d 73             ld (hl),e            	;s
	ram:6f1e b8             cp b                 	;.
	ram:6f1f 73             ld (hl),e            	;s
	ram:6f20 c1             pop bc               	;.
	ram:6f21 73             ld (hl),e            	;s
	ram:6f22 c9             ret                  	;.
	ram:6f23 73             ld (hl),e            	;s
	ram:6f24 d2 73 da       jp nc,0da73h         	;. s .
	ram:6f27 73             ld (hl),e            	;s
	ram:6f28 e3             ex (sp),hl           	;.
	ram:6f29 73             ld (hl),e            	;s
	ram:6f2a ec 73 f6       call pe,0f673h       	;. s .
	ram:6f2d 73             ld (hl),e            	;s
	ram:6f2e fd 73 04       ld (iy+004h),e       	;. s .
	ram:6f31 74             ld (hl),h            	;t
	ram:6f32 0b             dec bc               	;.
	ram:6f33 74             ld (hl),h            	;t
	ram:6f34 12             ld (de),a            	;.
	ram:6f35 74             ld (hl),h            	;t
	ram:6f36 18 74          jr l6fach            	;. t
	ram:6f38 1f             rra                  	;.
	ram:6f39 74             ld (hl),h            	;t
	ram:6f3a 25             dec h                	;%
	ram:6f3b 74             ld (hl),h            	;t
	ram:6f3c 2a 74 30       ld hl,(03074h)       	;* t 0
	ram:6f3f 74             ld (hl),h            	;t
	ram:6f40 36 74          ld (hl),074h         	;6 t
	ram:6f42 3c             inc a                	;<
	ram:6f43 74             ld (hl),h            	;t
	ram:6f44 43             ld b,e               	;C
	ram:6f45 74             ld (hl),h            	;t
sub_6f46h:
	ram:6f46 4a             ld c,d               	;J
	ram:6f47 74             ld (hl),h            	;t
	ram:6f48 50             ld d,b               	;P
	ram:6f49 74             ld (hl),h            	;t
	ram:6f4a 59             ld e,c               	;Y
	ram:6f4b 74             ld (hl),h            	;t
	ram:6f4c 61             ld h,c               	;a
	ram:6f4d 74             ld (hl),h            	;t
	ram:6f4e 68             ld l,b               	;h
	ram:6f4f 74             ld (hl),h            	;t
	ram:6f50 70             ld (hl),b            	;p
	ram:6f51 74             ld (hl),h            	;t
	ram:6f52 78             ld a,b               	;x
sub_6f53h:
	ram:6f53 74             ld (hl),h            	;t
	ram:6f54 80             add a,b              	;.
	ram:6f55 74             ld (hl),h            	;t
	ram:6f56 88             adc a,b              	;.
	ram:6f57 74             ld (hl),h            	;t
	ram:6f58 90             sub b                	;.
	ram:6f59 74             ld (hl),h            	;t
	ram:6f5a 96             sub (hl)             	;.
	ram:6f5b 74             ld (hl),h            	;t
	ram:6f5c 9d             sbc a,l              	;.
	ram:6f5d 74             ld (hl),h            	;t
	ram:6f5e a3             and e                	;.
	ram:6f5f 74             ld (hl),h            	;t
	ram:6f60 aa             xor d                	;.
	ram:6f61 74             ld (hl),h            	;t
	ram:6f62 b1             or c                 	;.
l6f63h:
	ram:6f63 74             ld (hl),h            	;t
	ram:6f64 b8             cp b                 	;.
l6f65h:
	ram:6f65 74             ld (hl),h            	;t
	ram:6f66 bf             cp a                 	;.
	ram:6f67 74             ld (hl),h            	;t
	ram:6f68 c5             push bc              	;.
	ram:6f69 74             ld (hl),h            	;t
	ram:6f6a cc 74 d4       call z,0d474h        	;. t .
	ram:6f6d 74             ld (hl),h            	;t
	ram:6f6e d6 74          sub 074h             	;. t
	ram:6f70 d8             ret c                	;.
	ram:6f71 74             ld (hl),h            	;t
sub_6f72h:
	ram:6f72 de 74          sbc a,074h           	;. t
	ram:6f74 e6 74          and 074h             	;. t
	ram:6f76 ee 74          xor 074h             	;. t
	ram:6f78 f4 74 f9       call p,0f974h        	;. t .
	ram:6f7b 74             ld (hl),h            	;t
	ram:6f7c fc 74 02       call m,00274h        	;. t .
	ram:6f7f 75             ld (hl),l            	;u
	ram:6f80 05             dec b                	;.
	ram:6f81 75             ld (hl),l            	;u
	ram:6f82 0b             dec bc               	;.
	ram:6f83 75             ld (hl),l            	;u
	ram:6f84 11 75 17       ld de,01775h         	;. u .
	ram:6f87 75             ld (hl),l            	;u
	ram:6f88 1d             dec e                	;.
	ram:6f89 75             ld (hl),l            	;u
	ram:6f8a 23             inc hl               	;#
	ram:6f8b 75             ld (hl),l            	;u
	ram:6f8c 29             add hl,hl            	;)
	ram:6f8d 75             ld (hl),l            	;u
	ram:6f8e 30 75          jr nc,l7005h         	;0 u
	ram:6f90 37             scf                  	;7
	ram:6f91 75             ld (hl),l            	;u
	ram:6f92 3e 75          ld a,075h            	;> u
	ram:6f94 45             ld b,l               	;E
	ram:6f95 75             ld (hl),l            	;u
	ram:6f96 4c             ld c,h               	;L
	ram:6f97 75             ld (hl),l            	;u
	ram:6f98 53             ld d,e               	;S
	ram:6f99 75             ld (hl),l            	;u
	ram:6f9a 5a             ld e,d               	;Z
	ram:6f9b 75             ld (hl),l            	;u
	ram:6f9c 60             ld h,b               	;`
	ram:6f9d 75             ld (hl),l            	;u
	ram:6f9e 68             ld l,b               	;h
	ram:6f9f 75             ld (hl),l            	;u
	ram:6fa0 70             ld (hl),b            	;p
	ram:6fa1 75             ld (hl),l            	;u
	ram:6fa2 77             ld (hl),a            	;w
	ram:6fa3 75             ld (hl),l            	;u
	ram:6fa4 7f             ld a,a               	;.
	ram:6fa5 75             ld (hl),l            	;u
	ram:6fa6 87             add a,a              	;.
	ram:6fa7 75             ld (hl),l            	;u
	ram:6fa8 8d             adc a,l              	;.
	ram:6fa9 75             ld (hl),l            	;u
	ram:6faa 94             sub h                	;.
	ram:6fab 75             ld (hl),l            	;u
l6fach:
	ram:6fac 9a             sbc a,d              	;.
	ram:6fad 75             ld (hl),l            	;u
	ram:6fae a1             and c                	;.
	ram:6faf 75             ld (hl),l            	;u
	ram:6fb0 a7             and a                	;.
	ram:6fb1 75             ld (hl),l            	;u
	ram:6fb2 ae             xor (hl)             	;.
	ram:6fb3 75             ld (hl),l            	;u
	ram:6fb4 b6             or (hl)              	;.
	ram:6fb5 75             ld (hl),l            	;u
	ram:6fb6 be             cp (hl)              	;.
	ram:6fb7 75             ld (hl),l            	;u
	ram:6fb8 c5             push bc              	;.
	ram:6fb9 75             ld (hl),l            	;u
	ram:6fba cc 75 d4       call z,0d475h        	;. u .
	ram:6fbd 75             ld (hl),l            	;u
	ram:6fbe db 75          in a,(075h)          	;. u
	ram:6fc0 e2 75 e9       jp po,0e975h         	;. u .
	ram:6fc3 75             ld (hl),l            	;u
	ram:6fc4 f1             pop af               	;.
	ram:6fc5 75             ld (hl),l            	;u
	ram:6fc6 f7             rst 30h              	;.
	ram:6fc7 75             ld (hl),l            	;u
	ram:6fc8 fe 75          cp 075h              	;. u
	ram:6fca 05             dec b                	;.
	ram:6fcb 76             halt                 	;v
	ram:6fcc 0d             dec c                	;.
	ram:6fcd 76             halt                 	;v
	ram:6fce 15             dec d                	;.
	ram:6fcf 76             halt                 	;v
	ram:6fd0 1d             dec e                	;.
	ram:6fd1 76             halt                 	;v
	ram:6fd2 25             dec h                	;%
	ram:6fd3 76             halt                 	;v
	ram:6fd4 2c             inc l                	;,
	ram:6fd5 76             halt                 	;v
	ram:6fd6 33             inc sp               	;3
	ram:6fd7 76             halt                 	;v
	ram:6fd8 3b             dec sp               	;;
	ram:6fd9 76             halt                 	;v
	ram:6fda 43             ld b,e               	;C
	ram:6fdb 76             halt                 	;v
	ram:6fdc 4a             ld c,d               	;J
	ram:6fdd 76             halt                 	;v
	ram:6fde 4f             ld c,a               	;O
	ram:6fdf 76             halt                 	;v
	ram:6fe0 55             ld d,l               	;U
	ram:6fe1 76             halt                 	;v
	ram:6fe2 5b             ld e,e               	;[
	ram:6fe3 76             halt                 	;v
	ram:6fe4 63             ld h,e               	;c
	ram:6fe5 76             halt                 	;v
	ram:6fe6 6c             ld l,h               	;l
	ram:6fe7 76             halt                 	;v
	ram:6fe8 71             ld (hl),c            	;q
	ram:6fe9 76             halt                 	;v
	ram:6fea 76             halt                 	;v
	ram:6feb 76             halt                 	;v
	ram:6fec 7e             ld a,(hl)            	;~
	ram:6fed 76             halt                 	;v
	ram:6fee 84             add a,h              	;.
	ram:6fef 76             halt                 	;v
	ram:6ff0 8b             adc a,e              	;.
	ram:6ff1 76             halt                 	;v
	ram:6ff2 93             sub e                	;.
	ram:6ff3 76             halt                 	;v
	ram:6ff4 99             sbc a,c              	;.
	ram:6ff5 76             halt                 	;v
	ram:6ff6 9d             sbc a,l              	;.
	ram:6ff7 76             halt                 	;v
	ram:6ff8 a1             and c                	;.
	ram:6ff9 76             halt                 	;v
	ram:6ffa a9             xor c                	;.
	ram:6ffb 76             halt                 	;v
	ram:6ffc b2             or d                 	;.
	ram:6ffd 76             halt                 	;v
	ram:6ffe ba             cp d                 	;.
	ram:6fff 76             halt                 	;v
	ram:7000 c1             pop bc               	;.
	ram:7001 76             halt                 	;v
	ram:7002 c8             ret z                	;.
	ram:7003 76             halt                 	;v
	ram:7004 cf             rst 8                	;.
l7005h:
	ram:7005 76             halt                 	;v
	ram:7006 d6 76          sub 076h             	;. v
	ram:7008 dc 76 e2       call c,0e276h        	;. v .
	ram:700b 76             halt                 	;v
	ram:700c e8             ret pe               	;.
	ram:700d 76             halt                 	;v
	ram:700e ea 76 ed       jp pe,0ed76h         	;. v .
	ram:7011 76             halt                 	;v
	ram:7012 f5             push af              	;.
	ram:7013 76             halt                 	;v
	ram:7014 fe 76          cp 076h              	;. v
	ram:7016 05             dec b                	;.
	ram:7017 77             ld (hl),a            	;w
	ram:7018 0c             inc c                	;.
	ram:7019 77             ld (hl),a            	;w
	ram:701a 12             ld (de),a            	;.
	ram:701b 77             ld (hl),a            	;w
	ram:701c 19             add hl,de            	;.
	ram:701d 77             ld (hl),a            	;w
	ram:701e 20 77          jr nz,l7097h         	;w
	ram:7020 27             daa                  	;'
	ram:7021 77             ld (hl),a            	;w
	ram:7022 30 77          jr nc,l709bh         	;0 w
	ram:7024 3a 77 42       ld a,(l4277h)        	;: w B
	ram:7027 77             ld (hl),a            	;w
	ram:7028 4a             ld c,d               	;J
	ram:7029 77             ld (hl),a            	;w
l702ah:
	ram:702a 00             nop                  	;.
	ram:702b 00             nop                  	;.
	ram:702c d8             ret c                	;.
	ram:702d 74             ld (hl),h            	;t
	ram:702e 90             sub b                	;.
	ram:702f 72             ld (hl),d            	;r
	ram:7030 e9             jp (hl)              	;.
	ram:7031 75             ld (hl),l            	;u
	ram:7032 58             ld e,b               	;X
	ram:7033 72             ld (hl),d            	;r
	ram:7034 f9             ld sp,hl             	;.
	ram:7035 71             ld (hl),c            	;q
	ram:7036 bf             cp a                 	;.
	ram:7037 74             ld (hl),h            	;t
	ram:7038 c9             ret                  	;.
	ram:7039 73             ld (hl),e            	;s
	ram:703a c1             pop bc               	;.
	ram:703b 73             ld (hl),e            	;s
	ram:703c 41             ld b,c               	;A
	ram:703d 73             ld (hl),e            	;s
	ram:703e b8             cp b                 	;.
	ram:703f 74             ld (hl),h            	;t
	ram:7040 0b             dec bc               	;.
	ram:7041 74             ld (hl),h            	;t
	ram:7042 cf             rst 8                	;.
	ram:7043 76             halt                 	;v
	ram:7044 7f             ld a,a               	;.
	ram:7045 75             ld (hl),l            	;u
	ram:7046 25             dec h                	;%
	ram:7047 76             halt                 	;v
	ram:7048 d4 75 a4       call nc,0a475h       	;. u .
	ram:704b 73             ld (hl),e            	;s
	ram:704c 9b             sbc a,e              	;.
l704dh:
	ram:704d 73             ld (hl),e            	;s
	ram:704e 11 75 37       ld de,03775h         	;. u 7
	ram:7051 75             ld (hl),l            	;u
	ram:out                 defb 0edh,071h       	;(c),0	;7052	ed 71		. q
	ram:7054 15             dec d                	;.
	ram:7055 73             ld (hl),e            	;s
	ram:7056 4b             ld c,e               	;K
	ram:7057 73             ld (hl),e            	;s
	ram:7058 e7             rst 20h              	;.
	ram:7059 72             ld (hl),d            	;r
	ram:705a 69             ld l,c               	;i
	ram:705b 72             ld (hl),d            	;r
	ram:705c 6f             ld l,a               	;o
	ram:705d 72             ld (hl),d            	;r
	ram:705e 5a             ld e,d               	;Z
	ram:705f 75             ld (hl),l            	;u
	ram:7060 3a 73 94       ld a,(09473h)        	;: s .
	ram:7063 75             ld (hl),l            	;u
	ram:7064 9a             sbc a,d              	;.
	ram:7065 75             ld (hl),l            	;u
	ram:7066 ba             cp d                 	;.
	ram:7067 76             halt                 	;v
	ram:7068 c1             pop bc               	;.
	ram:7069 76             halt                 	;v
	ram:706a f4 71 b8       call p,0b871h        	;. q .
	ram:706d 73             ld (hl),e            	;s
	ram:706e 59             ld e,c               	;Y
	ram:706f 74             ld (hl),h            	;t
	ram:7070 ae             xor (hl)             	;.
	ram:7071 73             ld (hl),e            	;s
	ram:7072 cc 74 64       call z,06474h        	;. t d
	ram:7075 73             ld (hl),e            	;s
	ram:7076 6c             ld l,h               	;l
	ram:7077 73             ld (hl),e            	;s
	ram:7078 1d             dec e                	;.
	ram:7079 76             halt                 	;v
	ram:707a 15             dec d                	;.
	ram:707b 76             halt                 	;v
	ram:707c 55             ld d,l               	;U
	ram:707d 76             halt                 	;v
	ram:707e 71             ld (hl),c            	;q
	ram:707f 76             halt                 	;v
	ram:7080 fc 72 43       call m,l4370h+2      	;. r C
	ram:7083 76             halt                 	;v
	ram:7084 4a             ld c,d               	;J
	ram:7085 72             ld (hl),d            	;r
	ram:7086 05             dec b                	;.
	ram:7087 77             ld (hl),a            	;w
	ram:7088 33             inc sp               	;3
	ram:7089 76             halt                 	;v
	ram:708a 3b             dec sp               	;;
	ram:708b 76             halt                 	;v
	ram:708c e2 76 08       jp po,00876h         	;. v .
	ram:708f 73             ld (hl),e            	;s
	ram:7090 01 73 63       ld bc,06373h         	;. s c
	ram:7093 72             ld (hl),d            	;r
	ram:7094 5d             ld e,l               	;]
	ram:7095 72             ld (hl),d            	;r
	ram:7096 51             ld d,c               	;Q
l7097h:
	ram:7097 72             ld (hl),d            	;r
	ram:7098 68             ld l,b               	;h
	ram:7099 74             ld (hl),h            	;t
	ram:709a 61             ld h,c               	;a
l709bh:
	ram:709b 74             ld (hl),h            	;t
	ram:709c 6c             ld l,h               	;l
	ram:709d 76             halt                 	;v
	ram:709e e6 74          and 074h             	;. t
	ram:70a0 28 73          jr z,l7115h          	;( s
	ram:70a2 23             inc hl               	;#
	ram:70a3 72             ld (hl),d            	;r
	ram:70a4 9f             sbc a,a              	;.
	ram:70a5 72             ld (hl),d            	;r
	ram:70a6 84             add a,h              	;.
	ram:70a7 76             halt                 	;v
	ram:70a8 da 73 d2       jp c,0d273h          	;. s .
	ram:70ab 73             ld (hl),e            	;s
	ram:70ac 50             ld d,b               	;P
	ram:70ad 73             ld (hl),e            	;s
	ram:70ae 20 77          jr nz,l7127h         	;w
	ram:70b0 60             ld h,b               	;`
	ram:70b1 75             ld (hl),l            	;u
	ram:70b2 4a             ld c,d               	;J
	ram:70b3 76             halt                 	;v
	ram:70b4 e2 75 b2       jp po,0b275h         	;. u .
	ram:70b7 76             halt                 	;v
	ram:70b8 a1             and c                	;.
	ram:70b9 76             halt                 	;v
	ram:70ba ee 74          xor 074h             	;. t
	ram:70bc 30 72          jr nc,l7130h         	;0 r
	ram:70be de 74          sbc a,074h           	;. t
	ram:70c0 ec 73 e3       call pe,0e373h       	;. s .
	ram:70c3 73             ld (hl),e            	;s
	ram:70c4 7e             ld a,(hl)            	;~
	ram:70c5 76             halt                 	;v
	ram:70c6 1e 72          ld e,072h            	;. r
	ram:70c8 90             sub b                	;.
	ram:70c9 74             ld (hl),h            	;t
	ram:70ca fe 76          cp 076h              	;. v
	ram:70cc f4 74 cc       call p,0cc74h        	;. t .
	ram:70cf 75             ld (hl),l            	;u
	ram:70d0 0c             inc c                	;.
	ram:70d1 77             ld (hl),a            	;w
	ram:70d2 fc 74 4a       call m,04a74h        	;. t J
	ram:70d5 77             ld (hl),a            	;w
	ram:70d6 de 71          sbc a,071h           	;. q
	ram:70d8 b4             or h                 	;.
	ram:70d9 72             ld (hl),d            	;r
	ram:70da e3             ex (sp),hl           	;.
	ram:70db 71             ld (hl),c            	;q
	ram:70dc e8             ret pe               	;.
	ram:70dd 71             ld (hl),c            	;q
	ram:70de 12             ld (de),a            	;.
	ram:70df 72             ld (hl),d            	;r
	ram:70e0 0b             dec bc               	;.
	ram:70e1 72             ld (hl),d            	;r
	ram:70e2 fd 73 75       ld (iy+075h),e       	;. s u
	ram:70e5 72             ld (hl),d            	;r
	ram:70e6 70             ld (hl),b            	;p
	ram:70e7 75             ld (hl),l            	;u
	ram:70e8 ef             rst 28h              	;.
	ram:70e9 72             ld (hl),d            	;r
	ram:70ea f1             pop af               	;.
	ram:70eb 75             ld (hl),l            	;u
	ram:70ec f6 73          or 073h              	;. s
	ram:70ee 46             ld b,(hl)            	;F
	ram:70ef 73             ld (hl),e            	;s
	ram:70f0 f5             push af              	;.
	ram:70f1 76             halt                 	;v
	ram:70f2 7f             ld a,a               	;.
	ram:70f3 72             ld (hl),d            	;r
	ram:70f4 c8             ret z                	;.
	ram:70f5 76             halt                 	;v
	ram:70f6 ba             cp d                 	;.
	ram:70f7 72             ld (hl),d            	;r
	ram:70f8 c2 72 ca       jp nz,0ca72h         	;. r .
	ram:70fb 72             ld (hl),d            	;r
	ram:70fc 2e 73          ld l,073h            	;. s
	ram:70fe 8b             adc a,e              	;.
	ram:70ff 76             halt                 	;v
	ram:7100 37             scf                  	;7
sub_7101h:
	ram:7101 72             ld (hl),d            	;r
	ram:7102 35             dec (hl)             	;5
	ram:7103 73             ld (hl),e            	;s
	ram:7104 5c             ld e,h               	;\
	ram:7105 73             ld (hl),e            	;s
	ram:7106 8a             adc a,d              	;.
	ram:7107 73             ld (hl),e            	;s
	ram:7108 2c             inc l                	;,
	ram:7109 76             halt                 	;v
	ram:710a a7             and a                	;.
	ram:710b 75             ld (hl),l            	;u
	ram:710c a9             xor c                	;.
	ram:710d 76             halt                 	;v
	ram:710e 50             ld d,b               	;P
	ram:710f 74             ld (hl),h            	;t
	ram:7110 aa             xor d                	;.
	ram:7111 74             ld (hl),h            	;t
	ram:7112 a3             and e                	;.
	ram:7113 74             ld (hl),h            	;t
	ram:7114 9d             sbc a,l              	;.
l7115h:
	ram:7115 74             ld (hl),h            	;t
	ram:7116 12             ld (de),a            	;.
	ram:7117 77             ld (hl),a            	;w
	ram:7118 05             dec b                	;.
	ram:7119 72             ld (hl),d            	;r
	ram:711a df             rst 18h              	;.
	ram:711b 72             ld (hl),d            	;r
	ram:711c 97             sub a                	;.
	ram:711d 72             ld (hl),d            	;r
	ram:711e 3e 72          ld a,072h            	;> r
	ram:7120 88             adc a,b              	;.
	ram:7121 74             ld (hl),h            	;t
	ram:7122 78             ld a,b               	;x
	ram:7123 74             ld (hl),h            	;t
	ram:7124 db 75          in a,(075h)          	;. u
	ram:7126 55             ld d,l               	;U
l7127h:
	ram:7127 73             ld (hl),e            	;s
	ram:7128 93             sub e                	;.
	ram:7129 73             ld (hl),e            	;s
	ram:712a 0e 73          ld c,073h            	;. s
	ram:712c 87             add a,a              	;.
	ram:712d 75             ld (hl),l            	;u
	ram:712e 63             ld h,e               	;c
	ram:712f 76             halt                 	;v
l7130h:
	ram:7130 76             halt                 	;v
	ram:7131 76             halt                 	;v
	ram:7132 77             ld (hl),a            	;w
	ram:7133 75             ld (hl),l            	;u
	ram:7134 fe 75          cp 075h              	;. u
	ram:7136 f7             rst 30h              	;.
	ram:7137 75             ld (hl),l            	;u
	ram:7138 d7             rst 10h              	;.
	ram:7139 71             ld (hl),c            	;q
	ram:713a 8d             adc a,l              	;.
	ram:713b 75             ld (hl),l            	;u
	ram:713c fe 71          cp 071h              	;. q
	ram:713e 30 77          jr nc,l71b7h         	;0 w
	ram:7140 f7             rst 30h              	;.
	ram:7141 72             ld (hl),d            	;r
	ram:7142 45             ld b,l               	;E
	ram:7143 72             ld (hl),d            	;r
	ram:7144 7c             ld a,h               	;|
sub_7145h:
	ram:7145 73             ld (hl),e            	;s
	ram:7146 b1             or c                 	;.
	ram:7147 74             ld (hl),h            	;t
	ram:7148 0d             dec c                	;.
	ram:7149 76             halt                 	;v
	ram:714a 05             dec b                	;.
	ram:714b 76             halt                 	;v
	ram:714c 19             add hl,de            	;.
	ram:714d 77             ld (hl),a            	;w
	ram:714e 53             ld d,e               	;S
	ram:714f 75             ld (hl),l            	;u
	ram:7150 82             add a,d              	;.
	ram:7151 73             ld (hl),e            	;s
	ram:7152 28 72          jr z,l71c6h          	;( r
	ram:7154 05             dec b                	;.
	ram:7155 75             ld (hl),l            	;u
	ram:7156 29             add hl,hl            	;)
	ram:7157 75             ld (hl),l            	;u
	ram:next byte illegal after ed                defb 0edh            	;;7158	ed		.
	ram:7159 76             halt                 	;v
	ram:715a ae             xor (hl)             	;.
	ram:715b 75             ld (hl),l            	;u
	ram:715c b6             or (hl)              	;.
	ram:715d 75             ld (hl),l            	;u
	ram:715e 3a 77 42       ld a,(l4277h)        	;: w B
	ram:7161 77             ld (hl),a            	;w
	ram:7162 1b             dec de               	;.
	ram:7163 73             ld (hl),e            	;s
	ram:7164 80             add a,b              	;.
	ram:7165 74             ld (hl),h            	;t
	ram:7166 93             sub e                	;.
	ram:7167 76             halt                 	;v
	ram:7168 70             ld (hl),b            	;p
	ram:7169 74             ld (hl),h            	;t
	ram:716a 19             add hl,de            	;.
	ram:716b 72             ld (hl),d            	;r
	ram:716c a1             and c                	;.
	ram:716d 75             ld (hl),l            	;u
	ram:716e 1d             dec e                	;.
	ram:716f 75             ld (hl),l            	;u
	ram:7170 45             ld b,l               	;E
	ram:7171 75             ld (hl),l            	;u
	ram:7172 c5             push bc              	;.
	ram:7173 74             ld (hl),h            	;t
	ram:7174 4f             ld c,a               	;O
	ram:7175 76             halt                 	;v
	ram:7176 04             inc b                	;.
	ram:7177 74             ld (hl),h            	;t
	ram:7178 68             ld l,b               	;h
	ram:7179 75             ld (hl),l            	;u
	ram:717a 96             sub (hl)             	;.
	ram:717b 74             ld (hl),h            	;t
	ram:717c 5b             ld e,e               	;[
	ram:717d 76             halt                 	;v
	ram:717e 85             add a,l              	;.
	ram:717f 72             ld (hl),d            	;r
	ram:7180 27             daa                  	;'
	ram:7181 77             ld (hl),a            	;w
	ram:7182 43             ld b,e               	;C
	ram:7183 74             ld (hl),h            	;t
	ram:7184 1f             rra                  	;.
	ram:7185 74             ld (hl),h            	;t
	ram:7186 25             dec h                	;%
	ram:7187 74             ld (hl),h            	;t
	ram:7188 36 74          ld (hl),074h         	;6 t
	ram:718a 2a 74 3c       ld hl,(03c74h)       	;* t <
	ram:718d 74             ld (hl),h            	;t
	ram:718e 4a             ld c,d               	;J
	ram:718f 74             ld (hl),h            	;t
	ram:7190 30 74          jr nc,l7206h         	;0 t
	ram:7192 12             ld (de),a            	;.
	ram:7193 74             ld (hl),h            	;t
	ram:7194 18 74          jr l720ah            	;. t
	ram:7196 05             dec b                	;.
	ram:7197 52             ld d,d               	;R
	ram:7198 65             ld h,l               	;e
	ram:7199 63             ld h,e               	;c
	ram:719a 00             nop                  	;.
	ram:719b 05             dec b                	;.
	ram:719c 50             ld d,b               	;P
	ram:719d 6f             ld l,a               	;o
	ram:719e 6c             ld l,h               	;l
	ram:719f 00             nop                  	;.
	ram:71a0 05             dec b                	;.
	ram:71a1 43             ld b,e               	;C
	ram:71a2 79             ld a,c               	;y
	ram:71a3 6c             ld l,h               	;l
	ram:71a4 00             nop                  	;.
	ram:71a5 05             dec b                	;.
	ram:71a6 53             ld d,e               	;S
	ram:71a7 70             ld (hl),b            	;p
	ram:71a8 68             ld l,b               	;h
	ram:71a9 00             nop                  	;.
	ram:71aa 05             dec b                	;.
	ram:71ab 44             ld b,h               	;D
	ram:71ac 4d             ld c,l               	;M
	ram:71ad 53             ld d,e               	;S
	ram:71ae 00             nop                  	;.
	ram:71af 05             dec b                	;.
	ram:71b0 42             ld b,d               	;B
	ram:71b1 69             ld l,c               	;i
	ram:71b2 6e             ld l,(hl)            	;n
	ram:71b3 00             nop                  	;.
	ram:71b4 05             dec b                	;.
	ram:71b5 48             ld c,b               	;H
	ram:71b6 65             ld h,l               	;e
l71b7h:
	ram:71b7 78             ld a,b               	;x
	ram:71b8 00             nop                  	;.
	ram:71b9 05             dec b                	;.
	ram:71ba 4f             ld c,a               	;O
	ram:71bb 63             ld h,e               	;c
	ram:71bc 74             ld (hl),h            	;t
	ram:71bd 00             nop                  	;.
	ram:71be 05             dec b                	;.
	ram:71bf 44             ld b,h               	;D
	ram:71c0 65             ld h,l               	;e
	ram:71c1 63             ld h,e               	;c
	ram:71c2 00             nop                  	;.
	ram:71c3 05             dec b                	;.
	ram:71c4 46             ld b,(hl)            	;F
	ram:71c5 72             ld (hl),d            	;r
l71c6h:
	ram:71c6 61             ld h,c               	;a
	ram:71c7 63             ld h,e               	;c
	ram:71c8 00             nop                  	;.
	ram:71c9 1c             inc e                	;.
	ram:71ca 00             nop                  	;.
	ram:71cb 5b             ld e,e               	;[
	ram:71cc 00             nop                  	;.
	ram:71cd 5d             ld e,l               	;]
	ram:71ce 00             nop                  	;.
	ram:71cf 7b             ld a,e               	;{
	ram:71d0 00             nop                  	;.
	ram:71d1 7d             ld a,l               	;}
	ram:71d2 00             nop                  	;.
	ram:71d3 28 00          jr z,l71d5h          	;( .
l71d5h:
	ram:71d5 29             add hl,hl            	;)
	ram:71d6 00             nop                  	;.
	ram:71d7 72             ld (hl),d            	;r
	ram:71d8 6f             ld l,a               	;o
	ram:71d9 75             ld (hl),l            	;u
	ram:71da 6e             ld l,(hl)            	;n
	ram:71db 64             ld h,h               	;d
	ram:71dc 00             nop                  	;.
	ram:71dd 12             ld (de),a            	;.
	ram:71de 6d             ld l,l               	;m
	ram:71df 61             ld h,c               	;a
	ram:71e0 78             ld a,b               	;x
	ram:71e1 00             nop                  	;.
	ram:71e2 13             inc de               	;.
	ram:71e3 6d             ld l,l               	;m
	ram:71e4 69             ld l,c               	;i
	ram:71e5 6e             ld l,(hl)            	;n
	ram:71e6 00             nop                  	;.
	ram:71e7 14             inc d                	;.
	ram:71e8 6d             ld l,l               	;m
	ram:71e9 6f             ld l,a               	;o
	ram:71ea 64             ld h,h               	;d
	ram:71eb 00             nop                  	;.
	ram:71ec 15             dec d                	;.
	ram:71ed 63             ld h,e               	;c
	ram:71ee 72             ld (hl),d            	;r
	ram:71ef 6f             ld l,a               	;o
	ram:71f0 73             ld (hl),e            	;s
	ram:71f1 73             ld (hl),e            	;s
	ram:71f2 00             nop                  	;.
	ram:71f3 16 64          ld d,064h            	;. d
	ram:71f5 6f             ld l,a               	;o
	ram:71f6 74             ld (hl),h            	;t
	ram:71f7 00             nop                  	;.
	ram:71f8 17             rla                  	;.
	ram:71f9 61             ld h,c               	;a
	ram:71fa 75             ld (hl),l            	;u
	ram:71fb 67             ld h,a               	;g
	ram:71fc 00             nop                  	;.
	ram:71fd 18 72          jr l7271h            	;. r
	ram:71ff 53             ld d,e               	;S
	ram:7200 77             ld (hl),a            	;w
	ram:7201 61             ld h,c               	;a
	ram:7202 70             ld (hl),b            	;p
	ram:7203 00             nop                  	;.
	ram:7204 19             add hl,de            	;.
	ram:7205 72             ld (hl),d            	;r
l7206h:
	ram:7206 41             ld b,c               	;A
	ram:7207 64             ld h,h               	;d
	ram:7208 64             ld h,h               	;d
	ram:7209 00             nop                  	;.
l720ah:
	ram:720a 1a             ld a,(de)            	;.
	ram:720b 6d             ld l,l               	;m
	ram:720c 75             ld (hl),l            	;u
	ram:720d 6c             ld l,h               	;l
	ram:720e 74             ld (hl),h            	;t
	ram:720f 52             ld d,d               	;R
	ram:7210 00             nop                  	;.
	ram:7211 1b             dec de               	;.
	ram:7212 6d             ld l,l               	;m
	ram:7213 52             ld d,d               	;R
	ram:7214 41             ld b,c               	;A
	ram:7215 64             ld h,h               	;d
	ram:7216 64             ld h,h               	;d
	ram:7217 00             nop                  	;.
	ram:7218 1c             inc e                	;.
	ram:7219 73             ld (hl),e            	;s
	ram:721a 75             ld (hl),l            	;u
	ram:721b 62             ld h,d               	;b
	ram:721c 00             nop                  	;.
	ram:721d 1d             dec e                	;.
	ram:721e 6c             ld l,h               	;l
	ram:721f 63             ld h,e               	;c
	ram:7220 6d             ld l,l               	;m
	ram:7221 00             nop                  	;.
	ram:7222 1e 67          ld e,067h            	;. g
	ram:7224 63             ld h,e               	;c
	ram:7225 64             ld h,h               	;d
	ram:7226 00             nop                  	;.
	ram:7227 1f             rra                  	;.
	ram:7228 73             ld (hl),e            	;s
	ram:7229 69             ld l,c               	;i
	ram:722a 6d             ld l,l               	;m
	ram:722b 75             ld (hl),l            	;u
	ram:722c 6c             ld l,h               	;l
	ram:722d 74             ld (hl),h            	;t
	ram:722e 00             nop                  	;.
	ram:722f 20 69          jr nz,l729ah         	;i
	ram:7231 6e             ld l,(hl)            	;n
	ram:7232 74             ld (hl),h            	;t
	ram:7233 65             ld h,l               	;e
	ram:7234 72             ld (hl),d            	;r
	ram:7235 00             nop                  	;.
	ram:7236 21 70 45       ld hl,04570h         	;! p E
	ram:7239 76             halt                 	;v
	ram:723a 61             ld h,c               	;a
	ram:723b 6c             ld l,h               	;l
	ram:723c 00             nop                  	;.
	ram:723d 22 72 61       ld (l6172h),hl       	;" r a
	ram:7240 6e             ld l,(hl)            	;n
	ram:7241 64             ld h,h               	;d
	ram:7242 4d             ld c,l               	;M
	ram:7243 00             nop                  	;.
	ram:7244 23             inc hl               	;#
	ram:7245 73             ld (hl),e            	;s
	ram:7246 65             ld h,l               	;e
	ram:7247 71             ld (hl),c            	;q
	ram:7248 00             nop                  	;.
	ram:7249 24             inc h                	;$
	ram:724a 65             ld h,l               	;e
	ram:724b 76             halt                 	;v
	ram:724c 61             ld h,c               	;a
	ram:724d 6c             ld l,h               	;l
	ram:724e 46             ld b,(hl)            	;F
	ram:724f 00             nop                  	;.
	ram:7250 25             dec h                	;%
	ram:7251 66             ld h,(hl)            	;f
	ram:7252 6e             ld l,(hl)            	;n
	ram:7253 49             ld c,c               	;I
	ram:7254 6e             ld l,(hl)            	;n
	ram:7255 74             ld (hl),h            	;t
	ram:7256 00             nop                  	;.
	ram:7257 26 61          ld h,061h            	;& a
	ram:7259 72             ld (hl),d            	;r
	ram:725a 63             ld h,e               	;c
	ram:725b 00             nop                  	;.
	ram:725c 27             daa                  	;'
	ram:725d 66             ld h,(hl)            	;f
	ram:725e 4d             ld c,l               	;M
	ram:725f 69             ld l,c               	;i
	ram:7260 6e             ld l,(hl)            	;n
	ram:7261 00             nop                  	;.
	ram:7262 28 66          jr z,l72cah          	;( f
	ram:7264 4d             ld c,l               	;M
	ram:7265 61             ld h,c               	;a
	ram:7266 78             ld a,b               	;x
	ram:7267 00             nop                  	;.
	ram:7268 29             add hl,hl            	;)
	ram:7269 64             ld h,h               	;d
	ram:726a 65             ld h,l               	;e
	ram:726b 72             ld (hl),d            	;r
	ram:726c 31 00 2a       ld sp,02a00h         	;1 . *
	ram:726f 64             ld h,h               	;d
	ram:7270 65             ld h,l               	;e
l7271h:
	ram:7271 72             ld (hl),d            	;r
	ram:7272 32 00 2b       ld (02b00h),a        	;2 . +
	ram:7275 6e             ld l,(hl)            	;n
	ram:7276 44             ld b,h               	;D
	ram:7277 65             ld h,l               	;e
	ram:7278 72             ld (hl),d            	;r
	ram:7279 00             nop                  	;.
	ram:727a 2c             inc l                	;,
	ram:727b 13             inc de               	;.
	ram:727c 00             nop                  	;.
	ram:727d 2c             inc l                	;,
	ram:727e 00             nop                  	;.
	ram:727f 20 6f          jr nz,l72f0h         	;o
	ram:7281 72             ld (hl),d            	;r
	ram:7282 20 00          jr nz,l7284h         	;.
l7284h:
	ram:7284 30 20          jr nc,l72a6h         	;0  
	ram:7286 78             ld a,b               	;x
	ram:7287 6f             ld l,a               	;o
	ram:7288 72             ld (hl),d            	;r
	ram:7289 20 00          jr nz,l728bh         	;.
l728bh:
	ram:728b 31 05 00       ld sp,00005h         	;1 . .
	ram:728e 3d             dec a                	;=
	ram:728f 00             nop                  	;.
	ram:7290 20 61          jr nz,l72f3h         	;a
	ram:7292 6e             ld l,(hl)            	;n
	ram:7293 64             ld h,h               	;d
	ram:7294 20 00          jr nz,l7296h         	;.
l7296h:
	ram:7296 40             ld b,b               	;@
	ram:7297 72             ld (hl),d            	;r
	ram:7298 61             ld h,c               	;a
	ram:7299 6e             ld l,(hl)            	;n
l729ah:
	ram:729a 64             ld h,h               	;d
	ram:729b 00             nop                  	;.
	ram:729c 41             ld b,c               	;A
	ram:729d c4 00 67       call nz,06700h       	;. . g
	ram:72a0 65             ld h,l               	;e
	ram:72a1 74             ld (hl),h            	;t
	ram:72a2 4b             ld c,e               	;K
	ram:72a3 79             ld a,c               	;y
	ram:72a4 00             nop                  	;.
	ram:72a5 43             ld b,e               	;C
l72a6h:
	ram:72a6 25             dec h                	;%
	ram:72a7 00             nop                  	;.
	ram:72a8 21 00 15       ld hl,01500h         	;! . .
	ram:72ab 00             nop                  	;.
	ram:72ac 14             inc d                	;.
	ram:72ad 00             nop                  	;.
	ram:72ae 11 00 12       ld de,01200h         	;. . .
	ram:72b1 00             nop                  	;.
	ram:72b2 16 00          ld d,000h            	;. .
	ram:72b4 4d             ld c,l               	;M
	ram:72b5 65             ld h,l               	;e
	ram:72b6 6e             ld l,(hl)            	;n
	ram:72b7 75             ld (hl),l            	;u
	ram:72b8 00             nop                  	;.
	ram:72b9 4c             ld c,h               	;L
	ram:72ba 50             ld d,b               	;P
	ram:72bb 32 52 65       ld (l6550h+2),a      	;2 R e
	ram:72be 67             ld h,a               	;g
	ram:72bf 20 00          jr nz,l72c1h         	;.
l72c1h:
	ram:72c1 4d             ld c,l               	;M
	ram:72c2 50             ld d,b               	;P
	ram:72c3 33             inc sp               	;3
	ram:72c4 52             ld d,d               	;R
	ram:72c5 65             ld h,l               	;e
	ram:72c6 67             ld h,a               	;g
	ram:72c7 20 00          jr nz,l72c9h         	;.
l72c9h:
	ram:72c9 4e             ld c,(hl)            	;N
l72cah:
	ram:72ca 50             ld d,b               	;P
	ram:72cb 34             inc (hl)             	;4
	ram:72cc 52             ld d,d               	;R
	ram:72cd 65             ld h,l               	;e
	ram:72ce 67             ld h,a               	;g
	ram:72cf 20 00          jr nz,l72d1h         	;.
l72d1h:
	ram:72d1 4f             ld c,a               	;O
	ram:72d2 3d             dec a                	;=
	ram:72d3 3d             dec a                	;=
	ram:72d4 00             nop                  	;.
	ram:72d5 3c             inc a                	;<
	ram:72d6 00             nop                  	;.
	ram:72d7 3e 00          ld a,000h            	;> .
	ram:72d9 17             rla                  	;.
	ram:72da 00             nop                  	;.
	ram:72db 19             add hl,de            	;.
	ram:72dc 00             nop                  	;.
	ram:72dd 18 00          jr l72dfh            	;. .
l72dfh:
	ram:72df 52             ld d,d               	;R
	ram:72e0 61             ld h,c               	;a
	ram:72e1 64             ld h,h               	;d
	ram:72e2 69             ld l,c               	;i
	ram:72e3 61             ld h,c               	;a
	ram:72e4 6e             ld l,(hl)            	;n
	ram:72e5 00             nop                  	;.
	ram:72e6 56             ld d,(hl)            	;V
	ram:72e7 44             ld b,h               	;D
	ram:72e8 65             ld h,l               	;e
	ram:72e9 67             ld h,a               	;g
	ram:72ea 72             ld (hl),d            	;r
	ram:72eb 65             ld h,l               	;e
	ram:72ec 65             ld h,l               	;e
	ram:72ed 00             nop                  	;.
	ram:72ee 57             ld d,a               	;W
	ram:72ef 4e             ld c,(hl)            	;N
l72f0h:
	ram:72f0 6f             ld l,a               	;o
	ram:72f1 72             ld (hl),d            	;r
	ram:72f2 6d             ld l,l               	;m
l72f3h:
	ram:72f3 61             ld h,c               	;a
	ram:72f4 6c             ld l,h               	;l
	ram:72f5 00             nop                  	;.
	ram:72f6 58             ld e,b               	;X
	ram:72f7 53             ld d,e               	;S
	ram:72f8 63             ld h,e               	;c
	ram:72f9 69             ld l,c               	;i
	ram:72fa 00             nop                  	;.
	ram:72fb 59             ld e,c               	;Y
	ram:72fc 45             ld b,l               	;E
	ram:72fd 6e             ld l,(hl)            	;n
	ram:72fe 67             ld h,a               	;g
	ram:72ff 00             nop                  	;.
	ram:7300 5a             ld e,d               	;Z
	ram:7301 46             ld b,(hl)            	;F
	ram:7302 6c             ld l,h               	;l
	ram:7303 6f             ld l,a               	;o
	ram:7304 61             ld h,c               	;a
	ram:7305 74             ld (hl),h            	;t
	ram:7306 00             nop                  	;.
	ram:7307 5b             ld e,e               	;[
	ram:7308 46             ld b,(hl)            	;F
	ram:7309 69             ld l,c               	;i
	ram:730a 78             ld a,b               	;x
	ram:730b 20 00          jr nz,l730dh         	;.
l730dh:
	ram:730d 5c             ld e,h               	;\
	ram:730e 52             ld d,d               	;R
	ram:730f 65             ld h,l               	;e
	ram:7310 63             ld h,e               	;c
	ram:7311 74             ld (hl),h            	;t
	ram:7312 56             ld d,(hl)            	;V
	ram:7313 00             nop                  	;.
	ram:7314 5d             ld e,l               	;]
	ram:7315 43             ld b,e               	;C
	ram:7316 79             ld a,c               	;y
	ram:7317 6c             ld l,h               	;l
	ram:7318 56             ld d,(hl)            	;V
	ram:7319 00             nop                  	;.
	ram:731a 5e             ld e,(hl)            	;^
	ram:731b 53             ld d,e               	;S
	ram:731c 70             ld (hl),b            	;p
	ram:731d 68             ld l,b               	;h
	ram:731e 65             ld h,l               	;e
	ram:731f 72             ld (hl),d            	;r
	ram:7320 65             ld h,l               	;e
	ram:7321 56             ld d,(hl)            	;V
	ram:7322 00             nop                  	;.
	ram:7323 5f             ld e,a               	;_
	ram:7324 2b             dec hl               	;+
	ram:7325 00             nop                  	;.
	ram:7326 2d             dec l                	;-
	ram:7327 00             nop                  	;.
	ram:7328 46             ld b,(hl)            	;F
	ram:7329 75             ld (hl),l            	;u
	ram:732a 6e             ld l,(hl)            	;n
	ram:732b 63             ld h,e               	;c
	ram:732c 00             nop                  	;.
	ram:732d 62             ld h,d               	;b
	ram:732e 50             ld d,b               	;P
	ram:732f 61             ld h,c               	;a
	ram:7330 72             ld (hl),d            	;r
	ram:7331 61             ld h,c               	;a
	ram:7332 6d             ld l,l               	;m
	ram:7333 00             nop                  	;.
	ram:7334 63             ld h,e               	;c
	ram:7335 50             ld d,b               	;P
	ram:7336 6f             ld l,a               	;o
	ram:7337 6c             ld l,h               	;l
	ram:7338 00             nop                  	;.
	ram:7339 64             ld h,h               	;d
	ram:733a 44             ld b,h               	;D
	ram:733b 69             ld l,c               	;i
	ram:733c 66             ld h,(hl)            	;f
	ram:733d 45             ld b,l               	;E
	ram:733e 71             ld (hl),c            	;q
	ram:733f 00             nop                  	;.
	ram:7340 65             ld h,l               	;e
	ram:7341 42             ld b,d               	;B
	ram:7342 69             ld l,c               	;i
	ram:7343 6e             ld l,(hl)            	;n
	ram:7344 00             nop                  	;.
	ram:7345 66             ld h,(hl)            	;f
	ram:7346 4f             ld c,a               	;O
	ram:7347 63             ld h,e               	;c
	ram:7348 74             ld (hl),h            	;t
	ram:7349 00             nop                  	;.
	ram:734a 67             ld h,a               	;g
	ram:734b 44             ld b,h               	;D
	ram:734c 65             ld h,l               	;e
	ram:734d 63             ld h,e               	;c
	ram:734e 00             nop                  	;.
	ram:734f 68             ld l,b               	;h
	ram:7350 48             ld c,b               	;H
	ram:7351 65             ld h,l               	;e
	ram:7352 78             ld a,b               	;x
	ram:7353 00             nop                  	;.
	ram:7354 69             ld l,c               	;i
	ram:7355 52             ld d,d               	;R
	ram:7356 65             ld h,l               	;e
	ram:7357 63             ld h,e               	;c
	ram:7358 74             ld (hl),h            	;t
	ram:7359 43             ld b,e               	;C
	ram:735a 00             nop                  	;.
	ram:735b 6a             ld l,d               	;j
	ram:735c 50             ld d,b               	;P
	ram:735d 6f             ld l,a               	;o
	ram:735e 6c             ld l,h               	;l
	ram:735f 61             ld h,c               	;a
	ram:7360 72             ld (hl),d            	;r
	ram:7361 43             ld b,e               	;C
	ram:7362 00             nop                  	;.
	ram:7363 6b             ld l,e               	;k
	ram:7364 64             ld h,h               	;d
	ram:7365 78             ld a,b               	;x
	ram:7366 44             ld b,h               	;D
	ram:7367 65             ld h,l               	;e
	ram:7368 72             ld (hl),d            	;r
	ram:7369 31 00 6c       ld sp,l6c00h         	;1 . l
	ram:736c 64             ld h,h               	;d
	ram:736d 78             ld a,b               	;x
	ram:736e 4e             ld c,(hl)            	;N
	ram:736f 44             ld b,h               	;D
	ram:7370 65             ld h,l               	;e
	ram:7371 72             ld (hl),d            	;r
	ram:7372 00             nop                  	;.
	ram:7373 6d             ld l,l               	;m
	ram:7374 3a 00 d6       ld a,(0d600h)        	;: . .
	ram:7377 00             nop                  	;.
	ram:7378 2a 00 2f       ld hl,(02f00h)       	;* . /
	ram:737b 00             nop                  	;.
	ram:737c 53             ld d,e               	;S
	ram:737d 65             ld h,l               	;e
	ram:737e 71             ld (hl),c            	;q
	ram:737f 47             ld b,a               	;G
	ram:7380 00             nop                  	;.
	ram:7381 72             ld (hl),d            	;r
	ram:7382 53             ld d,e               	;S
	ram:7383 69             ld l,c               	;i
	ram:7384 6d             ld l,l               	;m
	ram:7385 75             ld (hl),l            	;u
	ram:7386 6c             ld l,h               	;l
	ram:7387 47             ld b,a               	;G
	ram:7388 00             nop                  	;.
	ram:7389 73             ld (hl),e            	;s
	ram:738a 50             ld d,b               	;P
	ram:738b 6f             ld l,a               	;o
	ram:738c 6c             ld l,h               	;l
	ram:738d 61             ld h,c               	;a
	ram:738e 72             ld (hl),d            	;r
	ram:738f 47             ld b,a               	;G
	ram:7390 43             ld b,e               	;C
	ram:7391 00             nop                  	;.
	ram:7392 74             ld (hl),h            	;t
	ram:7393 52             ld d,d               	;R
	ram:7394 65             ld h,l               	;e
	ram:7395 63             ld h,e               	;c
	ram:7396 74             ld (hl),h            	;t
	ram:7397 47             ld b,a               	;G
	ram:7398 43             ld b,e               	;C
	ram:7399 00             nop                  	;.
	ram:739a 75             ld (hl),l            	;u
	ram:739b 43             ld b,e               	;C
	ram:739c 6f             ld l,a               	;o
	ram:739d 6f             ld l,a               	;o
	ram:739e 72             ld (hl),d            	;r
	ram:739f 64             ld h,h               	;d
	ram:73a0 4f             ld c,a               	;O
	ram:73a1 6e             ld l,(hl)            	;n
	ram:73a2 00             nop                  	;.
	ram:73a3 76             halt                 	;v
	ram:73a4 43             ld b,e               	;C
	ram:73a5 6f             ld l,a               	;o
	ram:73a6 6f             ld l,a               	;o
	ram:73a7 72             ld (hl),d            	;r
	ram:73a8 64             ld h,h               	;d
	ram:73a9 4f             ld c,a               	;O
	ram:73aa 66             ld h,(hl)            	;f
	ram:73ab 66             ld h,(hl)            	;f
	ram:73ac 00             nop                  	;.
	ram:73ad 77             ld (hl),a            	;w
	ram:73ae 44             ld b,h               	;D
	ram:73af 72             ld (hl),d            	;r
	ram:73b0 61             ld h,c               	;a
	ram:73b1 77             ld (hl),a            	;w
	ram:73b2 4c             ld c,h               	;L
	ram:73b3 69             ld l,c               	;i
	ram:73b4 6e             ld l,(hl)            	;n
	ram:73b5 65             ld h,l               	;e
	ram:73b6 00             nop                  	;.
	ram:73b7 78             ld a,b               	;x
	ram:73b8 44             ld b,h               	;D
	ram:73b9 72             ld (hl),d            	;r
	ram:73ba 61             ld h,c               	;a
	ram:73bb 77             ld (hl),a            	;w
	ram:73bc 44             ld b,h               	;D
	ram:73bd 6f             ld l,a               	;o
	ram:73be 74             ld (hl),h            	;t
	ram:73bf 00             nop                  	;.
	ram:73c0 79             ld a,c               	;y
	ram:73c1 41             ld b,c               	;A
	ram:73c2 78             ld a,b               	;x
	ram:73c3 65             ld h,l               	;e
	ram:73c4 73             ld (hl),e            	;s
	ram:73c5 4f             ld c,a               	;O
	ram:73c6 6e             ld l,(hl)            	;n
	ram:73c7 00             nop                  	;.
	ram:73c8 7a             ld a,d               	;z
	ram:73c9 41             ld b,c               	;A
	ram:73ca 78             ld a,b               	;x
	ram:73cb 65             ld h,l               	;e
	ram:73cc 73             ld (hl),e            	;s
	ram:73cd 4f             ld c,a               	;O
	ram:73ce 66             ld h,(hl)            	;f
	ram:73cf 66             ld h,(hl)            	;f
	ram:73d0 00             nop                  	;.
	ram:73d1 7b             ld a,e               	;{
	ram:73d2 47             ld b,a               	;G
	ram:73d3 72             ld (hl),d            	;r
	ram:73d4 69             ld l,c               	;i
	ram:73d5 64             ld h,h               	;d
	ram:73d6 4f             ld c,a               	;O
	ram:73d7 6e             ld l,(hl)            	;n
	ram:73d8 00             nop                  	;.
	ram:73d9 7c             ld a,h               	;|
	ram:73da 47             ld b,a               	;G
	ram:73db 72             ld (hl),d            	;r
	ram:73dc 69             ld l,c               	;i
	ram:73dd 64             ld h,h               	;d
	ram:73de 4f             ld c,a               	;O
	ram:73df 66             ld h,(hl)            	;f
	ram:73e0 66             ld h,(hl)            	;f
	ram:73e1 00             nop                  	;.
	ram:73e2 7d             ld a,l               	;}
	ram:73e3 4c             ld c,h               	;L
	ram:73e4 61             ld h,c               	;a
	ram:73e5 62             ld h,d               	;b
	ram:73e6 65             ld h,l               	;e
	ram:73e7 6c             ld l,h               	;l
	ram:73e8 4f             ld c,a               	;O
	ram:73e9 6e             ld l,(hl)            	;n
	ram:73ea 00             nop                  	;.
	ram:73eb 7e             ld a,(hl)            	;~
	ram:73ec 4c             ld c,h               	;L
	ram:73ed 61             ld h,c               	;a
	ram:73ee 62             ld h,d               	;b
	ram:73ef 65             ld h,l               	;e
	ram:73f0 6c             ld l,h               	;l
	ram:73f1 4f             ld c,a               	;O
	ram:73f2 66             ld h,(hl)            	;f
	ram:73f3 66             ld h,(hl)            	;f
	ram:73f4 00             nop                  	;.
	ram:73f5 7f             ld a,a               	;.
	ram:73f6 20 6e          jr nz,112            	;n
	ram:73f8 50             ld d,b               	;P
	ram:73f9 72             ld (hl),d            	;r
	ram:73fa 20 00          jr nz,l73fch         	;.
l73fch:
	ram:73fc 80             add a,b              	;.
	ram:73fd 20 6e          jr nz,l746dh         	;n
	ram:73ff 43             ld b,e               	;C
	ram:7400 72             ld (hl),d            	;r
	ram:7401 20 00          jr nz,l7403h         	;.
l7403h:
	ram:7403 81             add a,c              	;.
	ram:7404 54             ld d,h               	;T
	ram:7405 72             ld (hl),d            	;r
	ram:7406 61             ld h,c               	;a
	ram:7407 63             ld h,e               	;c
	ram:7408 65             ld h,l               	;e
	ram:7409 00             nop                  	;.
	ram:740a 82             add a,d              	;.
	ram:740b 43             ld b,e               	;C
	ram:740c 6c             ld l,h               	;l
	ram:740d 44             ld b,h               	;D
	ram:740e 72             ld (hl),d            	;r
	ram:740f 77             ld (hl),a            	;w
	ram:7410 00             nop                  	;.
	ram:7411 83             add a,e              	;.
	ram:7412 5a             ld e,d               	;Z
	ram:7413 53             ld d,e               	;S
	ram:7414 74             ld (hl),h            	;t
	ram:7415 64             ld h,h               	;d
	ram:7416 00             nop                  	;.
	ram:7417 84             add a,h              	;.
	ram:7418 5a             ld e,d               	;Z
	ram:7419 54             ld d,h               	;T
	ram:741a 72             ld (hl),d            	;r
	ram:741b 69             ld l,c               	;i
	ram:741c 67             ld h,a               	;g
	ram:741d 00             nop                  	;.
	ram:741e 85             add a,l              	;.
	ram:741f 5a             ld e,d               	;Z
	ram:7420 46             ld b,(hl)            	;F
	ram:7421 69             ld l,c               	;i
	ram:7422 74             ld (hl),h            	;t
	ram:7423 00             nop                  	;.
	ram:7424 86             add a,(hl)           	;.
	ram:7425 5a             ld e,d               	;Z
	ram:7426 49             ld c,c               	;I
	ram:7427 6e             ld l,(hl)            	;n
	ram:7428 00             nop                  	;.
	ram:7429 87             add a,a              	;.
	ram:742a 5a             ld e,d               	;Z
	ram:742b 4f             ld c,a               	;O
	ram:742c 75             ld (hl),l            	;u
	ram:742d 74             ld (hl),h            	;t
	ram:742e 00             nop                  	;.
	ram:742f 88             adc a,b              	;.
	ram:7430 5a             ld e,d               	;Z
	ram:7431 53             ld d,e               	;S
	ram:7432 71             ld (hl),c            	;q
	ram:7433 72             ld (hl),d            	;r
	ram:7434 00             nop                  	;.
	ram:7435 89             adc a,c              	;.
	ram:7436 5a             ld e,d               	;Z
	ram:7437 49             ld c,c               	;I
	ram:7438 6e             ld l,(hl)            	;n
	ram:7439 74             ld (hl),h            	;t
	ram:743a 00             nop                  	;.
	ram:743b 8a             adc a,d              	;.
	ram:743c 5a             ld e,d               	;Z
	ram:743d 50             ld d,b               	;P
	ram:743e 72             ld (hl),d            	;r
	ram:743f 65             ld h,l               	;e
	ram:7440 76             halt                 	;v
	ram:7441 00             nop                  	;.
	ram:7442 8b             adc a,e              	;.
	ram:7443 5a             ld e,d               	;Z
	ram:7444 44             ld b,h               	;D
	ram:7445 65             ld h,l               	;e
	ram:7446 63             ld h,e               	;c
	ram:7447 6d             ld l,l               	;m
	ram:7448 00             nop                  	;.
	ram:7449 8c             adc a,h              	;.
	ram:744a 5a             ld e,d               	;Z
	ram:744b 52             ld d,d               	;R
	ram:744c 63             ld h,e               	;c
	ram:744d 6c             ld l,h               	;l
	ram:744e 00             nop                  	;.
	ram:744f 8d             adc a,l              	;.
	ram:7450 50             ld d,b               	;P
	ram:7451 72             ld (hl),d            	;r
	ram:7452 74             ld (hl),h            	;t
l7453h:
	ram:7453 53             ld d,e               	;S
	ram:7454 63             ld h,e               	;c
	ram:7455 72             ld (hl),d            	;r
	ram:7456 6e             ld l,(hl)            	;n
	ram:7457 00             nop                  	;.
	ram:7458 8e             adc a,(hl)           	;.
	ram:7459 44             ld b,h               	;D
	ram:745a 72             ld (hl),d            	;r
	ram:745b 61             ld h,c               	;a
	ram:745c 77             ld (hl),a            	;w
	ram:745d 46             ld b,(hl)            	;F
	ram:745e 20 00          jr nz,l7460h         	;.
l7460h:
	ram:7460 8f             adc a,a              	;.
	ram:7461 46             ld b,(hl)            	;F
	ram:7462 6e             ld l,(hl)            	;n
	ram:7463 4f             ld c,a               	;O
	ram:7464 6e             ld l,(hl)            	;n
	ram:7465 20 00          jr nz,l7467h         	;.
l7467h:
	ram:7467 90             sub b                	;.
	ram:7468 46             ld b,(hl)            	;F
	ram:7469 6e             ld l,(hl)            	;n
	ram:746a 4f             ld c,a               	;O
	ram:746b 66             ld h,(hl)            	;f
	ram:746c 66             ld h,(hl)            	;f
l746dh:
	ram:746d 20 00          jr nz,l746fh         	;.
l746fh:
	ram:746f 91             sub c                	;.
	ram:7470 53             ld d,e               	;S
	ram:7471 74             ld (hl),h            	;t
	ram:7472 50             ld d,b               	;P
	ram:7473 69             ld l,c               	;i
	ram:7474 63             ld h,e               	;c
	ram:7475 20 00          jr nz,l7477h         	;.
l7477h:
	ram:7477 92             sub d                	;.
	ram:7478 52             ld d,d               	;R
	ram:7479 63             ld h,e               	;c
	ram:747a 50             ld d,b               	;P
	ram:747b 69             ld l,c               	;i
	ram:747c 63             ld h,e               	;c
	ram:747d 20 00          jr nz,l747fh         	;.
l747fh:
	ram:747f 93             sub e                	;.
	ram:7480 53             ld d,e               	;S
	ram:7481 74             ld (hl),h            	;t
	ram:7482 47             ld b,a               	;G
	ram:7483 44             ld b,h               	;D
	ram:7484 42             ld b,d               	;B
	ram:7485 20 00          jr nz,l7487h         	;.
l7487h:
	ram:7487 94             sub h                	;.
	ram:7488 52             ld d,d               	;R
	ram:7489 63             ld h,e               	;c
	ram:748a 47             ld b,a               	;G
	ram:748b 44             ld b,h               	;D
	ram:748c 42             ld b,d               	;B
	ram:748d 20 00          jr nz,l748fh         	;.
l748fh:
	ram:748f 95             sub l                	;.
	ram:7490 4c             ld c,h               	;L
	ram:7491 69             ld l,c               	;i
	ram:7492 6e             ld l,(hl)            	;n
	ram:7493 65             ld h,l               	;e
	ram:7494 00             nop                  	;.
	ram:7495 96             sub (hl)             	;.
	ram:7496 56             ld d,(hl)            	;V
	ram:7497 65             ld h,l               	;e
	ram:7498 72             ld (hl),d            	;r
	ram:7499 74             ld (hl),h            	;t
	ram:749a 20 00          jr nz,l749ch         	;.
l749ch:
	ram:749c 97             sub a                	;.
	ram:749d 50             ld d,b               	;P
	ram:749e 74             ld (hl),h            	;t
	ram:749f 4f             ld c,a               	;O
	ram:74a0 6e             ld l,(hl)            	;n
	ram:74a1 00             nop                  	;.
	ram:74a2 98             sbc a,b              	;.
	ram:74a3 50             ld d,b               	;P
	ram:74a4 74             ld (hl),h            	;t
	ram:74a5 4f             ld c,a               	;O
	ram:74a6 66             ld h,(hl)            	;f
	ram:74a7 66             ld h,(hl)            	;f
	ram:74a8 00             nop                  	;.
	ram:74a9 99             sbc a,c              	;.
	ram:74aa 50             ld d,b               	;P
	ram:74ab 74             ld (hl),h            	;t
	ram:74ac 43             ld b,e               	;C
	ram:74ad 68             ld l,b               	;h
	ram:74ae 67             ld h,a               	;g
	ram:74af 00             nop                  	;.
	ram:74b0 9a             sbc a,d              	;.
	ram:74b1 53             ld d,e               	;S
	ram:74b2 68             ld l,b               	;h
	ram:74b3 61             ld h,c               	;a
	ram:74b4 64             ld h,h               	;d
	ram:74b5 65             ld h,l               	;e
	ram:74b6 00             nop                  	;.
	ram:74b7 9b             sbc a,e              	;.
	ram:74b8 43             ld b,e               	;C
	ram:74b9 69             ld l,c               	;i
	ram:74ba 72             ld (hl),d            	;r
	ram:74bb 63             ld h,e               	;c
	ram:74bc 6c             ld l,h               	;l
	ram:74bd 00             nop                  	;.
	ram:74be 9c             sbc a,h              	;.
	ram:74bf 41             ld b,c               	;A
	ram:74c0 78             ld a,b               	;x
	ram:74c1 65             ld h,l               	;e
	ram:74c2 73             ld (hl),e            	;s
	ram:74c3 00             nop                  	;.
	ram:74c4 9d             sbc a,l              	;.
	ram:74c5 54             ld d,h               	;T
	ram:74c6 61             ld h,c               	;a
	ram:74c7 6e             ld l,(hl)            	;n
	ram:74c8 4c             ld c,h               	;L
	ram:74c9 6e             ld l,(hl)            	;n
	ram:74ca 00             nop                  	;.
	ram:74cb 9e             sbc a,(hl)           	;.
	ram:74cc 44             ld b,h               	;D
	ram:74cd 72             ld (hl),d            	;r
	ram:74ce 49             ld c,c               	;I
	ram:74cf 6e             ld l,(hl)            	;n
	ram:74d0 76             halt                 	;v
	ram:74d1 20 00          jr nz,l74d3h         	;.
l74d3h:
	ram:74d3 9f             sbc a,a              	;.
	ram:74d4 10 00          djnz l74d6h          	;. .
l74d6h:
	ram:74d6 1a             ld a,(de)            	;.
	ram:74d7 00             nop                  	;.
	ram:74d8 61             ld h,c               	;a
	ram:74d9 62             ld h,d               	;b
	ram:74da 73             ld (hl),e            	;s
	ram:74db 20 00          jr nz,l74ddh         	;.
l74ddh:
	ram:74dd a2             and d                	;.
	ram:74de 69             ld l,c               	;i
	ram:74df 50             ld d,b               	;P
	ram:74e0 61             ld h,c               	;a
	ram:74e1 72             ld (hl),d            	;r
	ram:74e2 74             ld (hl),h            	;t
	ram:74e3 20 00          jr nz,l74e5h         	;.
l74e5h:
	ram:74e5 a3             and e                	;.
	ram:74e6 66             ld h,(hl)            	;f
	ram:74e7 50             ld d,b               	;P
	ram:74e8 61             ld h,c               	;a
	ram:74e9 72             ld (hl),d            	;r
	ram:74ea 74             ld (hl),h            	;t
	ram:74eb 20 00          jr nz,l74edh         	;.
l74edh:
	ram:74ed a4             and h                	;.
	ram:74ee 69             ld l,c               	;i
	ram:74ef 6e             ld l,(hl)            	;n
	ram:74f0 74             ld (hl),h            	;t
	ram:74f1 20 00          jr nz,l74f3h         	;.
l74f3h:
	ram:74f3 a5             and l                	;.
	ram:74f4 6c             ld l,h               	;l
	ram:74f5 6e             ld l,(hl)            	;n
	ram:74f6 20 00          jr nz,l74f8h         	;.
l74f8h:
	ram:74f8 a6             and (hl)             	;.
	ram:74f9 65             ld h,l               	;e
	ram:74fa 5e             ld e,(hl)            	;^
	ram:74fb 00             nop                  	;.
	ram:74fc 6c             ld l,h               	;l
	ram:74fd 6f             ld l,a               	;o
	ram:74fe 67             ld h,a               	;g
	ram:74ff 20 00          jr nz,l7501h         	;.
l7501h:
	ram:7501 a8             xor b                	;.
	ram:7502 1d             dec e                	;.
	ram:7503 5e             ld e,(hl)            	;^
	ram:7504 00             nop                  	;.
	ram:7505 73             ld (hl),e            	;s
	ram:7506 69             ld l,c               	;i
	ram:7507 6e             ld l,(hl)            	;n
	ram:7508 20 00          jr nz,l750ah         	;.
l750ah:
	ram:750a aa             xor d                	;.
	ram:750b 73             ld (hl),e            	;s
	ram:750c 69             ld l,c               	;i
	ram:750d 6e             ld l,(hl)            	;n
	ram:750e 11 20 00       ld de,00020h         	;.   .
	ram:7511 63             ld h,e               	;c
	ram:7512 6f             ld l,a               	;o
	ram:7513 73             ld (hl),e            	;s
	ram:7514 20 00          jr nz,l7516h         	;.
l7516h:
	ram:7516 ac             xor h                	;.
	ram:7517 63             ld h,e               	;c
	ram:7518 6f             ld l,a               	;o
	ram:7519 73             ld (hl),e            	;s
	ram:751a 11 20 00       ld de,00020h         	;.   .
	ram:751d 74             ld (hl),h            	;t
	ram:751e 61             ld h,c               	;a
	ram:751f 6e             ld l,(hl)            	;n
	ram:7520 20 00          jr nz,l7522h         	;.
l7522h:
	ram:7522 ae             xor (hl)             	;.
	ram:7523 74             ld (hl),h            	;t
	ram:7524 61             ld h,c               	;a
	ram:7525 6e             ld l,(hl)            	;n
	ram:7526 11 20 00       ld de,00020h         	;.   .
	ram:7529 73             ld (hl),e            	;s
	ram:752a 69             ld l,c               	;i
	ram:752b 6e             ld l,(hl)            	;n
	ram:752c 68             ld l,b               	;h
	ram:752d 20 00          jr nz,l752fh         	;.
l752fh:
	ram:752f b0             or b                 	;.
	ram:7530 73             ld (hl),e            	;s
	ram:7531 69             ld l,c               	;i
	ram:7532 6e             ld l,(hl)            	;n
	ram:7533 68             ld l,b               	;h
	ram:7534 11 20 00       ld de,00020h         	;.   .
	ram:7537 63             ld h,e               	;c
	ram:7538 6f             ld l,a               	;o
	ram:7539 73             ld (hl),e            	;s
	ram:753a 68             ld l,b               	;h
	ram:753b 20 00          jr nz,l753dh         	;.
l753dh:
	ram:753d b2             or d                 	;.
	ram:753e 63             ld h,e               	;c
	ram:753f 6f             ld l,a               	;o
	ram:7540 73             ld (hl),e            	;s
	ram:7541 68             ld l,b               	;h
	ram:7542 11 20 00       ld de,00020h         	;.   .
	ram:7545 74             ld (hl),h            	;t
	ram:7546 61             ld h,c               	;a
	ram:7547 6e             ld l,(hl)            	;n
	ram:7548 68             ld l,b               	;h
	ram:7549 20 00          jr nz,l754bh         	;.
l754bh:
	ram:754b b4             or h                 	;.
	ram:754c 74             ld (hl),h            	;t
	ram:754d 61             ld h,c               	;a
	ram:754e 6e             ld l,(hl)            	;n
l754fh:
	ram:754f 68             ld l,b               	;h
	ram:7550 11 20 00       ld de,00020h         	;.   .
	ram:7553 73             ld (hl),e            	;s
	ram:7554 69             ld l,c               	;i
	ram:7555 67             ld h,a               	;g
	ram:7556 6e             ld l,(hl)            	;n
	ram:7557 20 00          jr nz,l7559h         	;.
l7559h:
	ram:7559 b6             or (hl)              	;.
	ram:755a 64             ld h,h               	;d
	ram:755b 65             ld h,l               	;e
	ram:755c 74             ld (hl),h            	;t
	ram:755d 20 00          jr nz,l755fh         	;.
l755fh:
	ram:755f b7             or a                 	;.
	ram:7560 69             ld l,c               	;i
	ram:7561 64             ld h,h               	;d
	ram:7562 65             ld h,l               	;e
	ram:7563 6e             ld l,(hl)            	;n
	ram:7564 74             ld (hl),h            	;t
	ram:7565 20 00          jr nz,l7567h         	;.
l7567h:
	ram:7567 b8             cp b                 	;.
	ram:7568 75             ld (hl),l            	;u
	ram:7569 6e             ld l,(hl)            	;n
	ram:756a 69             ld l,c               	;i
	ram:756b 74             ld (hl),h            	;t
	ram:756c 56             ld d,(hl)            	;V
	ram:756d 20 00          jr nz,l756fh         	;.
l756fh:
	ram:756f b9             cp c                 	;.
	ram:7570 6e             ld l,(hl)            	;n
	ram:7571 6f             ld l,a               	;o
	ram:7572 72             ld (hl),d            	;r
	ram:7573 6d             ld l,l               	;m
	ram:7574 20 00          jr nz,l7576h         	;.
l7576h:
	ram:7576 ba             cp d                 	;.
	ram:7577 72             ld (hl),d            	;r
	ram:7578 6e             ld l,(hl)            	;n
	ram:7579 6f             ld l,a               	;o
	ram:757a 72             ld (hl),d            	;r
	ram:757b 6d             ld l,l               	;m
	ram:757c 20 00          jr nz,l757eh         	;.
l757eh:
	ram:757e bb             cp e                 	;.
	ram:757f 63             ld h,e               	;c
	ram:7580 6e             ld l,(hl)            	;n
	ram:7581 6f             ld l,a               	;o
	ram:7582 72             ld (hl),d            	;r
	ram:7583 6d             ld l,l               	;m
	ram:7584 20 00          jr nz,l7586h         	;.
l7586h:
	ram:7586 bc             cp h                 	;.
	ram:7587 72             ld (hl),d            	;r
	ram:7588 65             ld h,l               	;e
	ram:7589 66             ld h,(hl)            	;f
	ram:758a 20 00          jr nz,l758ch         	;.
l758ch:
	ram:758c bd             cp l                 	;.
	ram:758d 72             ld (hl),d            	;r
	ram:758e 72             ld (hl),d            	;r
	ram:758f 65             ld h,l               	;e
	ram:7590 66             ld h,(hl)            	;f
	ram:7591 20 00          jr nz,l7593h         	;.
l7593h:
	ram:7593 be             cp (hl)              	;.
	ram:7594 64             ld h,h               	;d
	ram:7595 69             ld l,c               	;i
	ram:7596 6d             ld l,l               	;m
	ram:7597 20 00          jr nz,l7599h         	;.
l7599h:
	ram:7599 bf             cp a                 	;.
	ram:759a 64             ld h,h               	;d
	ram:759b 69             ld l,c               	;i
	ram:759c 6d             ld l,l               	;m
	ram:759d 4c             ld c,h               	;L
	ram:759e 20 00          jr nz,l75a0h         	;.
l75a0h:
	ram:75a0 c0             ret nz               	;.
	ram:75a1 73             ld (hl),e            	;s
	ram:75a2 75             ld (hl),l            	;u
	ram:75a3 6d             ld l,l               	;m
	ram:75a4 20 00          jr nz,l75a6h         	;.
l75a6h:
	ram:75a6 c1             pop bc               	;.
	ram:75a7 70             ld (hl),b            	;p
	ram:75a8 72             ld (hl),d            	;r
	ram:75a9 6f             ld l,a               	;o
	ram:75aa 64             ld h,h               	;d
	ram:75ab 20 00          jr nz,l75adh         	;.
l75adh:
	ram:75ad c2 73 6f       jp nz,sub_6f72h+1    	;. s o
	ram:75b0 72             ld (hl),d            	;r
	ram:75b1 74             ld (hl),h            	;t
	ram:75b2 41             ld b,c               	;A
	ram:75b3 20 00          jr nz,l75b5h         	;.
l75b5h:
	ram:75b5 c3 73 6f       jp sub_6f72h+1       	;. s o
	ram:75b8 72             ld (hl),d            	;r
	ram:75b9 74             ld (hl),h            	;t
	ram:75ba 44             ld b,h               	;D
	ram:75bb 20 00          jr nz,l75bdh         	;.
l75bdh:
	ram:75bd c4 6c 69       call nz,0696ch       	;. l i
	ram:75c0 05             dec b                	;.
	ram:75c1 76             halt                 	;v
	ram:75c2 63             ld h,e               	;c
	ram:75c3 20 00          jr nz,l75c5h         	;.
l75c5h:
	ram:75c5 76             halt                 	;v
	ram:75c6 63             ld h,e               	;c
	ram:75c7 05             dec b                	;.
	ram:75c8 6c             ld l,h               	;l
	ram:75c9 69             ld l,c               	;i
	ram:75ca 20 00          jr nz,l75cch         	;.
l75cch:
	ram:75cc 6c             ld l,h               	;l
	ram:75cd 6e             ld l,(hl)            	;n
	ram:75ce 67             ld h,a               	;g
	ram:75cf 74             ld (hl),h            	;t
	ram:75d0 68             ld l,b               	;h
	ram:75d1 20 00          jr nz,l75d3h         	;.
l75d3h:
	ram:75d3 c7             rst 0                	;.
	ram:75d4 63             ld h,e               	;c
	ram:75d5 6f             ld l,a               	;o
	ram:75d6 6e             ld l,(hl)            	;n
	ram:75d7 6a             ld l,d               	;j
	ram:75d8 20 00          jr nz,l75dah         	;.
l75dah:
	ram:75da c8             ret z                	;.
	ram:75db 72             ld (hl),d            	;r
	ram:75dc 65             ld h,l               	;e
	ram:75dd 61             ld h,c               	;a
	ram:75de 6c             ld l,h               	;l
	ram:75df 20 00          jr nz,l75e1h         	;.
l75e1h:
	ram:75e1 c9             ret                  	;.
	ram:75e2 69             ld l,c               	;i
	ram:75e3 6d             ld l,l               	;m
	ram:75e4 61             ld h,c               	;a
	ram:75e5 67             ld h,a               	;g
	ram:75e6 20 00          jr nz,l75e8h         	;.
l75e8h:
	ram:75e8 ca 61 6e       jp z,l6e61h          	;. a n
	ram:75eb 67             ld h,a               	;g
	ram:75ec 6c             ld l,h               	;l
	ram:75ed 65             ld h,l               	;e
	ram:75ee 20 00          jr nz,l75f0h         	;.
l75f0h:
	ram:75f0 cb 6e          bit 5,(hl)           	;. n
	ram:75f2 6f             ld l,a               	;o
	ram:75f3 74             ld (hl),h            	;t
	ram:75f4 20 00          jr nz,l75f6h         	;.
l75f6h:
	ram:75f6 cc 72 6f       call z,sub_6f72h     	;. r o
	ram:75f9 74             ld (hl),h            	;t
	ram:75fa 52             ld d,d               	;R
	ram:75fb 20 00          jr nz,l75fdh         	;.
l75fdh:
	ram:75fd cd 72 6f       call sub_6f72h       	;. r o
l7600h:
	ram:7600 74             ld (hl),h            	;t
	ram:7601 4c             ld c,h               	;L
	ram:7602 20 00          jr nz,l7604h         	;.
l7604h:
	ram:7604 ce 73          adc a,073h           	;. s
	ram:7606 68             ld l,b               	;h
	ram:7607 66             ld h,(hl)            	;f
	ram:7608 74             ld (hl),h            	;t
	ram:7609 52             ld d,d               	;R
	ram:760a 20 00          jr nz,l760ch         	;.
l760ch:
	ram:760c cf             rst 8                	;.
	ram:760d 73             ld (hl),e            	;s
	ram:760e 68             ld l,b               	;h
	ram:760f 66             ld h,(hl)            	;f
	ram:7610 74             ld (hl),h            	;t
	ram:7611 4c             ld c,h               	;L
	ram:7612 20 00          jr nz,l7614h         	;.
l7614h:
	ram:7614 d0             ret nc               	;.
	ram:7615 65             ld h,l               	;e
	ram:7616 69             ld l,c               	;i
	ram:7617 67             ld h,a               	;g
	ram:7618 56             ld d,(hl)            	;V
	ram:7619 6c             ld l,h               	;l
	ram:761a 20 00          jr nz,l761ch         	;.
l761ch:
	ram:761c d1             pop de               	;.
	ram:761d 65             ld h,l               	;e
	ram:761e 69             ld l,c               	;i
	ram:761f 67             ld h,a               	;g
	ram:7620 56             ld d,(hl)            	;V
	ram:7621 63             ld h,e               	;c
	ram:7622 20 00          jr nz,l7624h         	;.
l7624h:
	ram:7624 d2 63 6f       jp nc,l6f63h         	;. c o
	ram:7627 6e             ld l,(hl)            	;n
	ram:7628 64             ld h,h               	;d
	ram:7629 20 00          jr nz,l762bh         	;.
l762bh:
	ram:762b d3 70          out (070h),a         	;. p
	ram:762d 6f             ld l,a               	;o
	ram:762e 6c             ld l,h               	;l
	ram:762f 79             ld a,c               	;y
	ram:7630 20 00          jr nz,l7632h         	;.
l7632h:
	ram:7632 d4 66 63       call nc,sub_6366h    	;. f c
	ram:7635 73             ld (hl),e            	;s
	ram:7636 74             ld (hl),h            	;t
	ram:7637 78             ld a,b               	;x
	ram:7638 20 00          jr nz,l763ah         	;.
l763ah:
	ram:763a d5             push de              	;.
	ram:763b 66             ld h,(hl)            	;f
	ram:763c 63             ld h,e               	;c
	ram:763d 73             ld (hl),e            	;s
	ram:763e 74             ld (hl),h            	;t
	ram:763f 79             ld a,c               	;y
	ram:7640 20 00          jr nz,l7642h         	;.
l7642h:
	ram:7642 d6 65          sub 065h             	;. e
	ram:7644 76             halt                 	;v
	ram:7645 61             ld h,c               	;a
	ram:7646 6c             ld l,h               	;l
	ram:7647 20 00          jr nz,l7649h         	;.
l7649h:
	ram:7649 d7             rst 10h              	;.
	ram:764a 49             ld c,c               	;I
	ram:764b 66             ld h,(hl)            	;f
	ram:764c 20 00          jr nz,l764eh         	;.
l764eh:
	ram:764e d8             ret c                	;.
	ram:764f 54             ld d,h               	;T
	ram:7650 68             ld l,b               	;h
	ram:7651 65             ld h,l               	;e
	ram:7652 6e             ld l,(hl)            	;n
	ram:7653 00             nop                  	;.
	ram:7654 d9             exx                  	;.
	ram:7655 45             ld b,l               	;E
	ram:7656 6c             ld l,h               	;l
	ram:7657 73             ld (hl),e            	;s
	ram:7658 65             ld h,l               	;e
	ram:7659 00             nop                  	;.
	ram:765a da 57 68       jp c,06857h          	;. W h
	ram:765d 69             ld l,c               	;i
	ram:765e 6c             ld l,h               	;l
	ram:765f 65             ld h,l               	;e
	ram:7660 20 00          jr nz,l7662h         	;.
l7662h:
	ram:7662 db 52          in a,(052h)          	;. R
	ram:7664 65             ld h,l               	;e
	ram:7665 70             ld (hl),b            	;p
	ram:7666 65             ld h,l               	;e
	ram:7667 61             ld h,c               	;a
	ram:7668 74             ld (hl),h            	;t
	ram:7669 20 00          jr nz,l766bh         	;.
l766bh:
	ram:766b dc 46 6f       call c,sub_6f46h     	;. F o
	ram:766e 72             ld (hl),d            	;r
	ram:766f 00             nop                  	;.
	ram:ld b,ixl                defb 0ddh,045h       	;;7670	dd 45		. E
	ram:7672 6e             ld l,(hl)            	;n
	ram:7673 64             ld h,h               	;d
	ram:7674 00             nop                  	;.
	ram:7675 de 52          sbc a,052h           	;. R
	ram:7677 65             ld h,l               	;e
	ram:7678 74             ld (hl),h            	;t
	ram:7679 75             ld (hl),l            	;u
	ram:767a 72             ld (hl),d            	;r
	ram:767b 6e             ld l,(hl)            	;n
	ram:767c 00             nop                  	;.
	ram:767d df             rst 18h              	;.
	ram:767e 4c             ld c,h               	;L
	ram:767f 62             ld h,d               	;b
	ram:7680 6c             ld l,h               	;l
	ram:7681 20 00          jr nz,l7683h         	;.
l7683h:
	ram:7683 e0             ret po               	;.
	ram:7684 47             ld b,a               	;G
	ram:7685 6f             ld l,a               	;o
	ram:7686 74             ld (hl),h            	;t
	ram:7687 6f             ld l,a               	;o
	ram:7688 20 00          jr nz,l768ah         	;.
l768ah:
	ram:768a e1             pop hl               	;.
	ram:768b 50             ld d,b               	;P
	ram:768c 61             ld h,c               	;a
	ram:768d 75             ld (hl),l            	;u
	ram:768e 73             ld (hl),e            	;s
	ram:768f 65             ld h,l               	;e
	ram:7690 20 00          jr nz,l7692h         	;.
l7692h:
	ram:7692 e2 53 74       jp po,l7453h         	;. S t
	ram:7695 6f             ld l,a               	;o
	ram:7696 70             ld (hl),b            	;p
	ram:7697 00             nop                  	;.
	ram:7698 e3             ex (sp),hl           	;.
	ram:7699 49             ld c,c               	;I
	ram:769a 53             ld d,e               	;S
	ram:769b 3e 00          ld a,000h            	;> .
	ram:769d 44             ld b,h               	;D
	ram:769e 53             ld d,e               	;S
	ram:769f 3c             inc a                	;<
	ram:76a0 00             nop                  	;.
	ram:76a1 49             ld c,c               	;I
	ram:76a2 6e             ld l,(hl)            	;n
	ram:76a3 70             ld (hl),b            	;p
	ram:76a4 75             ld (hl),l            	;u
	ram:76a5 74             ld (hl),h            	;t
	ram:76a6 20 00          jr nz,l76a8h         	;.
l76a8h:
	ram:76a8 e6 50          and 050h             	;. P
	ram:76aa 72             ld (hl),d            	;r
	ram:76ab 6f             ld l,a               	;o
	ram:76ac 6d             ld l,l               	;m
	ram:76ad 70             ld (hl),b            	;p
	ram:76ae 74             ld (hl),h            	;t
	ram:76af 20 00          jr nz,l76b1h         	;.
l76b1h:
	ram:76b1 e7             rst 20h              	;.
	ram:76b2 49             ld c,c               	;I
	ram:76b3 6e             ld l,(hl)            	;n
	ram:76b4 70             ld (hl),b            	;p
	ram:76b5 53             ld d,e               	;S
	ram:76b6 74             ld (hl),h            	;t
	ram:76b7 20 00          jr nz,l76b9h         	;.
l76b9h:
	ram:76b9 e8             ret pe               	;.
	ram:76ba 44             ld b,h               	;D
	ram:76bb 69             ld l,c               	;i
	ram:76bc 73             ld (hl),e            	;s
	ram:76bd 70             ld (hl),b            	;p
	ram:76be 20 00          jr nz,l76c0h         	;.
l76c0h:
	ram:76c0 e9             jp (hl)              	;.
	ram:76c1 44             ld b,h               	;D
	ram:76c2 69             ld l,c               	;i
	ram:76c3 73             ld (hl),e            	;s
	ram:76c4 70             ld (hl),b            	;p
	ram:76c5 47             ld b,a               	;G
	ram:76c6 00             nop                  	;.
	ram:76c7 ea 4f 75       jp pe,l754fh         	;. O u
	ram:76ca 74             ld (hl),h            	;t
	ram:76cb 70             ld (hl),b            	;p
	ram:76cc 74             ld (hl),h            	;t
	ram:76cd 00             nop                  	;.
	ram:76ce eb             ex de,hl             	;.
	ram:76cf 43             ld b,e               	;C
	ram:76d0 6c             ld l,h               	;l
	ram:76d1 4c             ld c,h               	;L
	ram:76d2 43             ld b,e               	;C
	ram:76d3 44             ld b,h               	;D
	ram:76d4 00             nop                  	;.
	ram:76d5 ec 45 71       call pe,sub_7145h    	;. E q
	ram:76d8 05             dec b                	;.
	ram:76d9 53             ld d,e               	;S
	ram:76da 74             ld (hl),h            	;t
	ram:76db 00             nop                  	;.
	ram:76dc 53             ld d,e               	;S
	ram:76dd 74             ld (hl),h            	;t
	ram:76de 05             dec b                	;.
	ram:76df 45             ld b,l               	;E
	ram:76e0 71             ld (hl),c            	;q
	ram:76e1 00             nop                  	;.
	ram:76e2 46             ld b,(hl)            	;F
	ram:76e3 69             ld l,c               	;i
	ram:76e4 6c             ld l,h               	;l
	ram:76e5 6c             ld l,h               	;l
	ram:76e6 00             nop                  	;.
	ram:76e7 ef             rst 28h              	;.
	ram:76e8 5e             ld e,(hl)            	;^
	ram:76e9 00             nop                  	;.
	ram:76ea cd 10 00       call 00010h          	;. . .
	ram:76ed 53             ld d,e               	;S
	ram:76ee 6f             ld l,a               	;o
	ram:76ef 6c             ld l,h               	;l
	ram:76f0 76             halt                 	;v
	ram:76f1 65             ld h,l               	;e
	ram:76f2 72             ld (hl),d            	;r
	ram:76f3 00             nop                  	;.
	ram:76f4 f2 4f 6e       jp p,l6e4fh          	;. O n
	ram:76f7 65             ld h,l               	;e
	ram:76f8 56             ld d,(hl)            	;V
	ram:76f9 61             ld h,c               	;a
	ram:76fa 72             ld (hl),d            	;r
	ram:76fb 20 00          jr nz,l76fdh         	;.
l76fdh:
	ram:76fd f3             di                   	;.
	ram:76fe 4c             ld c,h               	;L
	ram:76ff 69             ld l,c               	;i
	ram:7700 6e             ld l,(hl)            	;n
	ram:7701 52             ld d,d               	;R
	ram:7702 20 00          jr nz,l7704h         	;.
l7704h:
	ram:7704 f4 45 78       call p,sub_7845h     	;. E x
	ram:7707 70             ld (hl),b            	;p
	ram:7708 52             ld d,d               	;R
	ram:7709 20 00          jr nz,l770bh         	;.
l770bh:
	ram:770b f5             push af              	;.
	ram:770c 4c             ld c,h               	;L
	ram:770d 6e             ld l,(hl)            	;n
	ram:770e 52             ld d,d               	;R
	ram:770f 20 00          jr nz,l7711h         	;.
l7711h:
	ram:7711 f6 50          or 050h              	;. P
	ram:7713 77             ld (hl),a            	;w
	ram:7714 72             ld (hl),d            	;r
	ram:7715 52             ld d,d               	;R
	ram:7716 20 00          jr nz,l7718h         	;.
l7718h:
	ram:7718 f7             rst 30h              	;.
	ram:7719 53             ld d,e               	;S
	ram:771a 68             ld l,b               	;h
	ram:771b 77             ld (hl),a            	;w
	ram:771c 53             ld d,e               	;S
	ram:771d 74             ld (hl),h            	;t
	ram:771e 00             nop                  	;.
	ram:771f f8             ret m                	;.
	ram:7720 48             ld c,b               	;H
	ram:7721 69             ld l,c               	;i
	ram:7722 73             ld (hl),e            	;s
	ram:7723 74             ld (hl),h            	;t
	ram:7724 20 00          jr nz,l7726h         	;.
l7726h:
	ram:7726 f9             ld sp,hl             	;.
	ram:7727 78             ld a,b               	;x
	ram:7728 79             ld a,c               	;y
	ram:7729 6c             ld l,h               	;l
	ram:772a 69             ld l,c               	;i
	ram:772b 6e             ld l,(hl)            	;n
	ram:772c 65             ld h,l               	;e
	ram:772d 20 00          jr nz,l772fh         	;.
l772fh:
	ram:772f fa 53 63       jp m,06353h          	;. S c
	ram:7732 61             ld h,c               	;a
	ram:7733 74             ld (hl),h            	;t
	ram:7734 74             ld (hl),h            	;t
	ram:7735 65             ld h,l               	;e
	ram:7736 72             ld (hl),d            	;r
	ram:7737 20 00          jr nz,l7739h         	;.
l7739h:
	ram:7739 fb             ei                   	;.
	ram:773a 53             ld d,e               	;S
	ram:773b 6f             ld l,a               	;o
	ram:773c 72             ld (hl),d            	;r
	ram:773d 74             ld (hl),h            	;t
	ram:773e 78             ld a,b               	;x
	ram:773f 20 00          jr nz,l7741h         	;.
l7741h:
	ram:7741 fc 53 6f       call m,sub_6f53h     	;. S o
	ram:7744 72             ld (hl),d            	;r
	ram:7745 74             ld (hl),h            	;t
	ram:7746 79             ld a,c               	;y
	ram:7747 20 00          jr nz,l7749h         	;.
l7749h:
	ram:ld c,iyh                defb 0fdh,04ch       	;;7749	fd 4c		. L
	ram:774b 55             ld d,l               	;U
	ram:774c 00             nop                  	;.
	ram:774d fe 05          cp 005h              	;. .
	ram:774f 05             dec b                	;.
	ram:7750 04             inc b                	;.
	ram:7751 04             inc b                	;.
	ram:7752 04             inc b                	;.
	ram:7753 04             inc b                	;.
	ram:7754 04             inc b                	;.
	ram:7755 04             inc b                	;.
	ram:7756 04             inc b                	;.
	ram:7757 04             inc b                	;.
	ram:7758 05             dec b                	;.
	ram:7759 05             dec b                	;.
	ram:775a 06 06          ld b,006h            	;. .
	ram:775c 05             dec b                	;.
	ram:775d 04             inc b                	;.
	ram:775e 04             inc b                	;.
	ram:775f 05             dec b                	;.
	ram:7760 05             dec b                	;.
	ram:7761 05             dec b                	;.
	ram:7762 05             dec b                	;.
	ram:7763 06 05          ld b,005h            	;. .
	ram:7765 05             dec b                	;.
	ram:7766 05             dec b                	;.
	ram:7767 05             dec b                	;.
	ram:7768 05             dec b                	;.
	ram:7769 05             dec b                	;.
	ram:776a 02             ld (bc),a            	;.
	ram:776b 02             ld (bc),a            	;.
	ram:776c 05             dec b                	;.
	ram:776d 05             dec b                	;.
	ram:776e 06 03          ld b,003h            	;. .
	ram:7770 01 02 01       ld bc,00102h         	;. . .
	ram:7773 02             ld (bc),a            	;.
	ram:7774 02             ld (bc),a            	;.
	ram:7775 02             ld (bc),a            	;.
	ram:7776 02             ld (bc),a            	;.
	ram:7777 01 02 02       ld bc,00202h         	;. . .
	ram:777a 02             ld (bc),a            	;.
	ram:777b 02             ld (bc),a            	;.
	ram:777c 02             ld (bc),a            	;.
	ram:777d 01 01 01       ld bc,00101h         	;. . .
	ram:7780 01 05 05       ld bc,00505h         	;. . .
l7783h:
	ram:next byte illegal after ed                defb 0edh            	;;7783	ed		.
	ram:7784 77             ld (hl),a            	;w
	ram:7785 f4 77 fb       call p,0fb77h        	;. w .
	ram:7788 77             ld (hl),a            	;w
	ram:7789 01 78 07       ld bc,00778h         	;. x .
	ram:778c 78             ld a,b               	;x
	ram:778d 0d             dec c                	;.
	ram:778e 78             ld a,b               	;x
	ram:778f 13             inc de               	;.
	ram:7790 78             ld a,b               	;x
	ram:7791 19             add hl,de            	;.
	ram:7792 78             ld a,b               	;x
	ram:7793 1f             rra                  	;.
	ram:7794 78             ld a,b               	;x
	ram:7795 25             dec h                	;%
	ram:7796 78             ld a,b               	;x
	ram:7797 2b             dec hl               	;+
	ram:7798 78             ld a,b               	;x
	ram:7799 32 78 39       ld (03978h),a        	;2 x 9
	ram:779c 78             ld a,b               	;x
	ram:779d 41             ld b,c               	;A
	ram:779e 78             ld a,b               	;x
	ram:779f 49             ld c,c               	;I
	ram:77a0 78             ld a,b               	;x
	ram:77a1 50             ld d,b               	;P
	ram:77a2 78             ld a,b               	;x
	ram:77a3 56             ld d,(hl)            	;V
	ram:77a4 78             ld a,b               	;x
	ram:77a5 5c             ld e,h               	;\
	ram:77a6 78             ld a,b               	;x
	ram:77a7 63             ld h,e               	;c
	ram:77a8 78             ld a,b               	;x
	ram:77a9 6a             ld l,d               	;j
	ram:77aa 78             ld a,b               	;x
	ram:77ab 71             ld (hl),c            	;q
	ram:77ac 78             ld a,b               	;x
	ram:77ad 78             ld a,b               	;x
	ram:77ae 78             ld a,b               	;x
	ram:77af 80             add a,b              	;.
	ram:77b0 78             ld a,b               	;x
	ram:77b1 87             add a,a              	;.
	ram:77b2 78             ld a,b               	;x
	ram:77b3 8e             adc a,(hl)           	;.
	ram:77b4 78             ld a,b               	;x
	ram:77b5 95             sub l                	;.
	ram:77b6 78             ld a,b               	;x
	ram:77b7 9c             sbc a,h              	;.
	ram:77b8 78             ld a,b               	;x
	ram:77b9 a3             and e                	;.
	ram:77ba 78             ld a,b               	;x
	ram:77bb aa             xor d                	;.
	ram:77bc 78             ld a,b               	;x
	ram:77bd ae             xor (hl)             	;.
	ram:77be 78             ld a,b               	;x
	ram:77bf b2             or d                 	;.
	ram:77c0 78             ld a,b               	;x
	ram:77c1 b9             cp c                 	;.
	ram:77c2 78             ld a,b               	;x
	ram:77c3 c0             ret nz               	;.
	ram:77c4 78             ld a,b               	;x
	ram:77c5 c8             ret z                	;.
	ram:77c6 78             ld a,b               	;x
	ram:77c7 cd 78 d0       call 0d078h          	;. x .
	ram:77ca 78             ld a,b               	;x
	ram:77cb d4 78 d7       call nc,0d778h       	;. x .
	ram:77ce 78             ld a,b               	;x
	ram:77cf db 78          in a,(078h)          	;. x
	ram:77d1 df             rst 18h              	;.
	ram:77d2 78             ld a,b               	;x
	ram:77d3 e3             ex (sp),hl           	;.
	ram:77d4 78             ld a,b               	;x
	ram:77d5 e7             rst 20h              	;.
	ram:77d6 78             ld a,b               	;x
	ram:77d7 ea 78 ee       jp pe,0ee78h         	;. x .
	ram:77da 78             ld a,b               	;x
	ram:77db f2 78 f6       jp p,0f678h          	;. x .
	ram:77de 78             ld a,b               	;x
	ram:77df fa 78 fe       jp m,0fe78h          	;. x .
	ram:77e2 78             ld a,b               	;x
	ram:77e3 01 79 04       ld bc,00479h         	;. y .
	ram:77e6 79             ld a,c               	;y
	ram:77e7 07             rlca                 	;.
	ram:77e8 79             ld a,c               	;y
	ram:77e9 0a             ld a,(bc)            	;.
	ram:77ea 79             ld a,c               	;y
	ram:77eb 11 79 7a       ld de,l7a79h         	;. y z
	ram:77ee 78             ld a,b               	;x
	ram:77ef 53             ld d,e               	;S
	ram:77f0 63             ld h,e               	;c
	ram:77f1 6c             ld l,h               	;l
	ram:77f2 00             nop                  	;.
	ram:77f3 00             nop                  	;.
	ram:77f4 7a             ld a,d               	;z
	ram:77f5 79             ld a,c               	;y
	ram:77f6 53             ld d,e               	;S
	ram:77f7 63             ld h,e               	;c
	ram:77f8 6c             ld l,h               	;l
	ram:77f9 00             nop                  	;.
	ram:77fa 01 78 53       ld bc,l5378h         	;. x S
	ram:77fd 63             ld h,e               	;c
	ram:77fe 6c             ld l,h               	;l
	ram:77ff 00             nop                  	;.
	ram:7800 02             ld (bc),a            	;.
	ram:7801 79             ld a,c               	;y
	ram:7802 53             ld d,e               	;S
	ram:7803 63             ld h,e               	;c
	ram:7804 6c             ld l,h               	;l
	ram:7805 00             nop                  	;.
	ram:7806 03             inc bc               	;.
	ram:7807 78             ld a,b               	;x
	ram:7808 4d             ld c,l               	;M
	ram:7809 69             ld l,c               	;i
	ram:780a 6e             ld l,(hl)            	;n
	ram:780b 00             nop                  	;.
	ram:780c 04             inc b                	;.
	ram:780d 78             ld a,b               	;x
	ram:780e 4d             ld c,l               	;M
	ram:780f 61             ld h,c               	;a
	ram:7810 78             ld a,b               	;x
	ram:7811 00             nop                  	;.
	ram:7812 05             dec b                	;.
	ram:7813 79             ld a,c               	;y
	ram:7814 4d             ld c,l               	;M
	ram:7815 69             ld l,c               	;i
	ram:7816 6e             ld l,(hl)            	;n
	ram:7817 00             nop                  	;.
	ram:7818 06 79          ld b,079h            	;. y
	ram:781a 4d             ld c,l               	;M
	ram:781b 61             ld h,c               	;a
	ram:781c 78             ld a,b               	;x
	ram:781d 00             nop                  	;.
	ram:781e 07             rlca                 	;.
	ram:781f 74             ld (hl),h            	;t
	ram:7820 4d             ld c,l               	;M
	ram:7821 69             ld l,c               	;i
	ram:7822 6e             ld l,(hl)            	;n
	ram:7823 00             nop                  	;.
	ram:7824 08             ex af,af'            	;.
	ram:7825 74             ld (hl),h            	;t
	ram:7826 4d             ld c,l               	;M
	ram:7827 61             ld h,c               	;a
	ram:7828 78             ld a,b               	;x
	ram:7829 00             nop                  	;.
	ram:782a 09             add hl,bc            	;.
	ram:782b 74             ld (hl),h            	;t
	ram:782c 53             ld d,e               	;S
	ram:782d 74             ld (hl),h            	;t
	ram:782e 65             ld h,l               	;e
	ram:782f 70             ld (hl),b            	;p
	ram:7830 00             nop                  	;.
	ram:7831 0a             ld a,(bc)            	;.
	ram:7832 c1             pop bc               	;.
	ram:7833 53             ld d,e               	;S
	ram:7834 74             ld (hl),h            	;t
	ram:7835 65             ld h,l               	;e
	ram:7836 70             ld (hl),b            	;p
	ram:7837 00             nop                  	;.
	ram:7838 0b             dec bc               	;.
	ram:7839 7a             ld a,d               	;z
	ram:783a 74             ld (hl),h            	;t
	ram:783b 53             ld d,e               	;S
	ram:783c 74             ld (hl),h            	;t
	ram:783d 65             ld h,l               	;e
	ram:783e 70             ld (hl),b            	;p
	ram:783f 00             nop                  	;.
	ram:7840 0c             inc c                	;.
	ram:7841 7a             ld a,d               	;z
	ram:7842 c1             pop bc               	;.
	ram:7843 53             ld d,e               	;S
	ram:7844 74             ld (hl),h            	;t
sub_7845h:
	ram:7845 65             ld h,l               	;e
	ram:7846 70             ld (hl),b            	;p
	ram:7847 00             nop                  	;.
	ram:7848 0d             dec c                	;.
	ram:7849 74             ld (hl),h            	;t
	ram:784a 50             ld d,b               	;P
	ram:784b 6c             ld l,h               	;l
	ram:784c 6f             ld l,a               	;o
	ram:784d 74             ld (hl),h            	;t
	ram:784e 00             nop                  	;.
	ram:784f 0e c1          ld c,0c1h            	;. .
	ram:7851 4d             ld c,l               	;M
	ram:7852 69             ld l,c               	;i
	ram:7853 6e             ld l,(hl)            	;n
	ram:7854 00             nop                  	;.
	ram:7855 0f             rrca                 	;.
	ram:7856 c1             pop bc               	;.
	ram:7857 4d             ld c,l               	;M
	ram:7858 61             ld h,c               	;a
	ram:7859 78             ld a,b               	;x
	ram:785a 00             nop                  	;.
	ram:785b 10 7a          djnz l78d7h          	;. z
	ram:785d 78             ld a,b               	;x
	ram:785e 4d             ld c,l               	;M
	ram:785f 69             ld l,c               	;i
	ram:7860 6e             ld l,(hl)            	;n
	ram:7861 00             nop                  	;.
	ram:7862 11 7a 78       ld de,l787ah         	;. z x
	ram:7865 4d             ld c,l               	;M
	ram:7866 61             ld h,c               	;a
	ram:7867 78             ld a,b               	;x
	ram:7868 00             nop                  	;.
	ram:7869 12             ld (de),a            	;.
	ram:786a 7a             ld a,d               	;z
	ram:786b 79             ld a,c               	;y
	ram:786c 4d             ld c,l               	;M
	ram:786d 69             ld l,c               	;i
	ram:786e 6e             ld l,(hl)            	;n
	ram:786f 00             nop                  	;.
	ram:7870 13             inc de               	;.
	ram:7871 7a             ld a,d               	;z
	ram:7872 79             ld a,c               	;y
	ram:7873 4d             ld c,l               	;M
	ram:7874 61             ld h,c               	;a
	ram:7875 78             ld a,b               	;x
	ram:7876 00             nop                  	;.
	ram:7877 14             inc d                	;.
	ram:7878 7a             ld a,d               	;z
	ram:7879 74             ld (hl),h            	;t
l787ah:
	ram:787a 50             ld d,b               	;P
	ram:787b 6c             ld l,h               	;l
	ram:787c 6f             ld l,a               	;o
	ram:787d 74             ld (hl),h            	;t
	ram:787e 00             nop                  	;.
	ram:787f 15             dec d                	;.
	ram:7880 7a             ld a,d               	;z
	ram:7881 c1             pop bc               	;.
	ram:7882 4d             ld c,l               	;M
	ram:7883 69             ld l,c               	;i
	ram:7884 6e             ld l,(hl)            	;n
	ram:7885 00             nop                  	;.
	ram:7886 16 7a          ld d,07ah            	;. z
	ram:7888 c1             pop bc               	;.
	ram:7889 4d             ld c,l               	;M
	ram:788a 61             ld h,c               	;a
	ram:788b 78             ld a,b               	;x
	ram:788c 00             nop                  	;.
	ram:788d 17             rla                  	;.
	ram:788e 7a             ld a,d               	;z
	ram:788f 74             ld (hl),h            	;t
	ram:7890 4d             ld c,l               	;M
	ram:7891 69             ld l,c               	;i
	ram:7892 6e             ld l,(hl)            	;n
	ram:7893 00             nop                  	;.
	ram:7894 18 7a          jr l7910h            	;. z
	ram:7896 74             ld (hl),h            	;t
	ram:7897 4d             ld c,l               	;M
	ram:7898 61             ld h,c               	;a
	ram:7899 78             ld a,b               	;x
	ram:789a 00             nop                  	;.
	ram:789b 19             add hl,de            	;.
	ram:789c 6c             ld l,h               	;l
	ram:789d 6f             ld l,a               	;o
	ram:789e 77             ld (hl),a            	;w
	ram:789f 65             ld h,l               	;e
	ram:78a0 72             ld (hl),d            	;r
	ram:78a1 00             nop                  	;.
	ram:78a2 1a             ld a,(de)            	;.
	ram:78a3 75             ld (hl),l            	;u
	ram:78a4 70             ld (hl),b            	;p
	ram:78a5 70             ld (hl),b            	;p
	ram:78a6 65             ld h,l               	;e
	ram:78a7 72             ld (hl),d            	;r
	ram:78a8 00             nop                  	;.
	ram:78a9 1b             dec de               	;.
	ram:78aa be             cp (hl)              	;.
	ram:78ab 78             ld a,b               	;x
	ram:78ac 00             nop                  	;.
	ram:78ad 1c             inc e                	;.
	ram:78ae be             cp (hl)              	;.
	ram:78af 79             ld a,c               	;y
	ram:78b0 00             nop                  	;.
	ram:78b1 1d             dec e                	;.
	ram:78b2 78             ld a,b               	;x
	ram:78b3 46             ld b,(hl)            	;F
	ram:78b4 61             ld h,c               	;a
	ram:78b5 63             ld h,e               	;c
	ram:78b6 74             ld (hl),h            	;t
	ram:78b7 00             nop                  	;.
	ram:78b8 1e 79          ld e,079h            	;. y
	ram:78ba 46             ld b,(hl)            	;F
	ram:78bb 61             ld h,c               	;a
	ram:78bc 63             ld h,e               	;c
	ram:78bd 74             ld (hl),h            	;t
	ram:78be 00             nop                  	;.
	ram:78bf 1f             rra                  	;.
	ram:78c0 64             ld h,h               	;d
	ram:78c1 69             ld l,c               	;i
	ram:78c2 66             ld h,(hl)            	;f
	ram:78c3 54             ld d,h               	;T
	ram:78c4 6f             ld l,a               	;o
	ram:78c5 6c             ld l,h               	;l
	ram:78c6 00             nop                  	;.
	ram:78c7 20 74          jr nz,l793dh         	;t
	ram:78c9 6f             ld l,a               	;o
	ram:78ca 6c             ld l,h               	;l
	ram:78cb 00             nop                  	;.
	ram:78cc 21 bf 00       ld hl,000bfh         	;! . .
	ram:78cf 22 4e 61       ld (l614eh),hl       	;" N a
	ram:78d2 00             nop                  	;.
	ram:78d3 23             inc hl               	;#
	ram:78d4 6b             ld l,e               	;k
	ram:78d5 00             nop                  	;.
	ram:78d6 24             inc h                	;$
l78d7h:
	ram:78d7 43             ld b,e               	;C
	ram:78d8 63             ld h,e               	;c
	ram:78d9 00             nop                  	;.
	ram:78da 25             dec h                	;%
	ram:78db 65             ld h,l               	;e
	ram:78dc 63             ld h,e               	;c
	ram:78dd 00             nop                  	;.
	ram:78de 26 52          ld h,052h            	;& R
	ram:78e0 63             ld h,e               	;c
	ram:78e1 00             nop                  	;.
	ram:78e2 27             daa                  	;'
	ram:78e3 47             ld b,a               	;G
	ram:78e4 63             ld h,e               	;c
	ram:78e5 00             nop                  	;.
	ram:78e6 28 67          jr z,l794fh          	;( g
	ram:78e8 00             nop                  	;.
	ram:78e9 29             add hl,hl            	;)
	ram:78ea 4d             ld c,l               	;M
	ram:78eb 65             ld h,l               	;e
	ram:78ec 00             nop                  	;.
	ram:78ed 2a 4d 70       ld hl,(l704dh)       	;* M p
	ram:78f0 00             nop                  	;.
	ram:78f1 2b             dec hl               	;+
	ram:78f2 4d             ld c,l               	;M
	ram:78f3 6e             ld l,(hl)            	;n
	ram:78f4 00             nop                  	;.
	ram:78f5 2c             inc l                	;,
	ram:78f6 c3 30 00       jp 00030h            	;. 0 .
	ram:78f9 2d             dec l                	;-
	ram:78fa c0             ret nz               	;.
	ram:78fb 30 00          jr nc,l78fdh         	;0 .
l78fdh:
	ram:78fd 2e 68          ld l,068h            	;. h
	ram:78ff 00             nop                  	;.
	ram:7900 2f             cpl                  	;/
	ram:7901 63             ld h,e               	;c
	ram:7902 00             nop                  	;.
	ram:7903 30 75          jr nc,l797ah         	;0 u
	ram:7905 00             nop                  	;.
	ram:7906 31 65 00       ld sp,00065h         	;1 e .
	ram:7909 32 78 53       ld (l5378h),a        	;2 x S
	ram:790c 74             ld (hl),h            	;t
	ram:790d 61             ld h,c               	;a
	ram:790e 74             ld (hl),h            	;t
	ram:790f 00             nop                  	;.
l7910h:
	ram:7910 33             inc sp               	;3
	ram:7911 79             ld a,c               	;y
	ram:7912 53             ld d,e               	;S
	ram:7913 74             ld (hl),h            	;t
	ram:7914 61             ld h,c               	;a
	ram:7915 74             ld (hl),h            	;t
l7916h:
	ram:7916 00             nop                  	;.
	ram:7917 34             inc (hl)             	;4
	ram:7918 d7             rst 10h              	;.
	ram:7919 78             ld a,b               	;x
	ram:791a e3             ex (sp),hl           	;.
	ram:791b 78             ld a,b               	;x
	ram:791c ea 78 f2       jp pe,0f278h         	;. x .
	ram:791f 78             ld a,b               	;x
	ram:7920 ee 78          xor 078h             	;. x
	ram:7922 d0             ret nc               	;.
	ram:7923 78             ld a,b               	;x
	ram:7924 df             rst 18h              	;.
	ram:7925 78             ld a,b               	;x
	ram:7926 01 79 c0       ld bc,0c079h         	;. y .
	ram:7929 78             ld a,b               	;x
	ram:792a 07             rlca                 	;.
	ram:792b 79             ld a,c               	;y
	ram:792c db 78          in a,(078h)          	;. x
	ram:792e e7             rst 20h              	;.
	ram:792f 78             ld a,b               	;x
	ram:7930 fe 78          cp 078h              	;. x
	ram:7932 d4 78 9c       call nc,09c78h       	;. x .
	ram:7935 78             ld a,b               	;x
	ram:7936 25             dec h                	;%
	ram:7937 78             ld a,b               	;x
	ram:7938 1f             rra                  	;.
	ram:7939 78             ld a,b               	;x
	ram:793a 49             ld c,c               	;I
	ram:793b 78             ld a,b               	;x
	ram:793c 2b             dec hl               	;+
l793dh:
	ram:793d 78             ld a,b               	;x
	ram:793e c8             ret z                	;.
	ram:793f 78             ld a,b               	;x
	ram:7940 04             inc b                	;.
	ram:7941 79             ld a,c               	;y
	ram:7942 a3             and e                	;.
	ram:7943 78             ld a,b               	;x
	ram:7944 b2             or d                 	;.
	ram:7945 78             ld a,b               	;x
	ram:7946 0d             dec c                	;.
	ram:7947 78             ld a,b               	;x
	ram:7948 07             rlca                 	;.
	ram:7949 78             ld a,b               	;x
	ram:794a fb             ei                   	;.
	ram:794b 77             ld (hl),a            	;w
	ram:794c 0a             ld a,(bc)            	;.
	ram:794d 79             ld a,c               	;y
	ram:794e b9             cp c                 	;.
l794fh:
	ram:794f 78             ld a,b               	;x
	ram:7950 19             add hl,de            	;.
	ram:7951 78             ld a,b               	;x
	ram:7952 13             inc de               	;.
	ram:7953 78             ld a,b               	;x
	ram:7954 01 78 11       ld bc,01178h         	;. x .
	ram:7957 79             ld a,c               	;y
	ram:7958 95             sub l                	;.
	ram:7959 78             ld a,b               	;x
	ram:795a 8e             adc a,(hl)           	;.
	ram:795b 78             ld a,b               	;x
	ram:795c 78             ld a,b               	;x
	ram:795d 78             ld a,b               	;x
	ram:795e 39             add hl,sp            	;9
	ram:795f 78             ld a,b               	;x
	ram:7960 63             ld h,e               	;c
	ram:7961 78             ld a,b               	;x
	ram:7962 5c             ld e,h               	;\
	ram:7963 78             ld a,b               	;x
	ram:next byte illegal after ed                defb 0edh            	;;7964	ed		.
	ram:7965 77             ld (hl),a            	;w
	ram:7966 71             ld (hl),c            	;q
	ram:7967 78             ld a,b               	;x
	ram:7968 6a             ld l,d               	;j
	ram:7969 78             ld a,b               	;x
	ram:796a f4 77 87       call p,08777h        	;. w .
	ram:796d 78             ld a,b               	;x
	ram:796e 80             add a,b              	;.
	ram:796f 78             ld a,b               	;x
	ram:7970 41             ld b,c               	;A
	ram:7971 78             ld a,b               	;x
	ram:7972 aa             xor d                	;.
	ram:7973 78             ld a,b               	;x
	ram:7974 ae             xor (hl)             	;.
	ram:7975 78             ld a,b               	;x
	ram:7976 cd 78 fa       call 0fa78h          	;. x .
	ram:7979 78             ld a,b               	;x
l797ah:
	ram:797a 56             ld d,(hl)            	;V
	ram:797b 78             ld a,b               	;x
	ram:797c 50             ld d,b               	;P
	ram:797d 78             ld a,b               	;x
	ram:797e 32 78 f6       ld (0f678h),a        	;2 x .
l7981h:
	ram:7981 78             ld a,b               	;x
	ram:7982 44             ld b,h               	;D
	ram:7983 44             ld b,h               	;D
	ram:7984 44             ld b,h               	;D
	ram:7985 44             ld b,h               	;D
	ram:7986 44             ld b,h               	;D
	ram:7987 44             ld b,h               	;D
	ram:7988 44             ld b,h               	;D
	ram:7989 44             ld b,h               	;D
	ram:798a 44             ld b,h               	;D
	ram:798b 32 3b 3b       ld (03b3bh),a        	;2 ; ;
	ram:798e 3c             inc a                	;<
	ram:798f 3c             inc a                	;<
	ram:7990 3c             inc a                	;<
	ram:7991 3c             inc a                	;<
	ram:7992 3c             inc a                	;<
	ram:7993 3c             inc a                	;<
	ram:7994 3c             inc a                	;<
	ram:7995 3c             inc a                	;<
	ram:7996 3c             inc a                	;<
	ram:7997 3c             inc a                	;<
	ram:7998 3c             inc a                	;<
	ram:7999 3c             inc a                	;<
	ram:799a 2d             dec l                	;-
	ram:799b 06 03          ld b,003h            	;. .
	ram:799d 09             add hl,bc            	;.
	ram:799e 05             dec b                	;.
	ram:799f 0a             ld a,(bc)            	;.
	ram:79a0 07             rlca                 	;.
	ram:79a1 08             ex af,af'            	;.
	ram:79a2 02             ld (bc),a            	;.
	ram:79a3 01 04 3e       ld bc,03e04h         	;. . >
	ram:79a6 a0             and b                	;.
	ram:79a7 49             ld c,c               	;I
	ram:79a8 4a             ld c,d               	;J
	ram:79a9 2e 48          ld l,048h            	;. H
	ram:79ab 47             ld b,a               	;G
	ram:79ac 4b             ld c,e               	;K
	ram:79ad 53             ld d,e               	;S
	ram:79ae 55             ld d,l               	;U
	ram:79af 54             ld d,h               	;T
	ram:79b0 a1             and c                	;.
	ram:79b1 0b             dec bc               	;.
	ram:79b2 a9             xor c                	;.
	ram:79b3 a7             and a                	;.
	ram:79b4 46             ld b,(hl)            	;F
	ram:79b5 45             ld b,l               	;E
	ram:79b6 10 11          djnz l79c9h          	;. .
	ram:79b8 70             ld (hl),b            	;p
	ram:79b9 60             ld h,b               	;`
	ram:79ba 2f             cpl                  	;/
	ram:79bb 61             ld h,c               	;a
	ram:79bc 71             ld (hl),c            	;q
	ram:79bd 6e             ld l,(hl)            	;n
	ram:79be 51             ld d,c               	;Q
	ram:79bf 50             ld d,b               	;P
	ram:79c0 3f             ccf                  	;?
	ram:79c1 52             ld d,d               	;R
	ram:79c2 ad             xor l                	;.
	ram:79c3 b3             or e                 	;.
	ram:79c4 e5             push hl              	;.
	ram:next byte illegal after ed                defb 0edh            	;;79c5	ed		.
	ram:79c6 e4 c5 c6       call po,0c6c5h       	;. . .
l79c9h:
	ram:79c9 ab             xor e                	;.
	ram:79ca b1             or c                 	;.
	ram:79cb ee af          xor 0afh             	;. .
	ram:79cd b5             or l                 	;.
	ram:79ce 0c             inc c                	;.
	ram:79cf 0d             dec c                	;.
	ram:79d0 f0             ret p                	;.
	ram:79d1 0e 0f          ld c,00fh            	;. .
	ram:79d3 42             ld b,d               	;B
	ram:79d4 f1             pop af               	;.
	ram:79d5 33             inc sp               	;3
	ram:79d6 33             inc sp               	;3
	ram:79d7 6f             ld l,a               	;o
	ram:79d8 00             nop                  	;.
	ram:79d9 ff             rst 38h              	;.
	ram:79da ff             rst 38h              	;.
l79dbh:
	ram:79db 00             nop                  	;.
	ram:79dc 00             nop                  	;.
	ram:79dd 00             nop                  	;.
	ram:79de 00             nop                  	;.
	ram:79df 00             nop                  	;.
	ram:79e0 00             nop                  	;.
	ram:79e1 03             inc bc               	;.
	ram:79e2 00             nop                  	;.
	ram:79e3 00             nop                  	;.
	ram:79e4 00             nop                  	;.
	ram:79e5 00             nop                  	;.
	ram:79e6 00             nop                  	;.
	ram:79e7 00             nop                  	;.
	ram:79e8 00             nop                  	;.
	ram:79e9 00             nop                  	;.
	ram:79ea 00             nop                  	;.
	ram:79eb 00             nop                  	;.
	ram:79ec 00             nop                  	;.
	ram:79ed 00             nop                  	;.
	ram:79ee 00             nop                  	;.
	ram:79ef 00             nop                  	;.
	ram:79f0 00             nop                  	;.
	ram:79f1 00             nop                  	;.
	ram:79f2 00             nop                  	;.
	ram:79f3 00             nop                  	;.
	ram:79f4 00             nop                  	;.
	ram:79f5 00             nop                  	;.
	ram:79f6 00             nop                  	;.
	ram:79f7 00             nop                  	;.
	ram:79f8 00             nop                  	;.
	ram:79f9 00             nop                  	;.
	ram:79fa 00             nop                  	;.
	ram:79fb 00             nop                  	;.
	ram:79fc 00             nop                  	;.
	ram:79fd 00             nop                  	;.
	ram:79fe 00             nop                  	;.
	ram:79ff 00             nop                  	;.
	ram:7a00 00             nop                  	;.
	ram:7a01 ff             rst 38h              	;.
	ram:7a02 00             nop                  	;.
	ram:7a03 00             nop                  	;.
	ram:7a04 00             nop                  	;.
	ram:7a05 00             nop                  	;.
	ram:7a06 00             nop                  	;.
	ram:7a07 00             nop                  	;.
	ram:7a08 00             nop                  	;.
	ram:7a09 00             nop                  	;.
	ram:7a0a 00             nop                  	;.
	ram:7a0b 00             nop                  	;.
	ram:7a0c 00             nop                  	;.
	ram:7a0d 00             nop                  	;.
	ram:7a0e 00             nop                  	;.
	ram:7a0f 00             nop                  	;.
	ram:7a10 00             nop                  	;.
	ram:7a11 00             nop                  	;.
	ram:7a12 00             nop                  	;.
	ram:7a13 00             nop                  	;.
	ram:7a14 00             nop                  	;.
	ram:7a15 00             nop                  	;.
	ram:7a16 00             nop                  	;.
	ram:7a17 00             nop                  	;.
	ram:7a18 00             nop                  	;.
	ram:7a19 00             nop                  	;.
	ram:7a1a 00             nop                  	;.
	ram:7a1b 00             nop                  	;.
	ram:7a1c 00             nop                  	;.
	ram:7a1d 00             nop                  	;.
	ram:7a1e 00             nop                  	;.
	ram:7a1f 00             nop                  	;.
	ram:7a20 00             nop                  	;.
	ram:7a21 ff             rst 38h              	;.
	ram:7a22 03             inc bc               	;.
	ram:7a23 00             nop                  	;.
	ram:7a24 00             nop                  	;.
	ram:7a25 00             nop                  	;.
	ram:7a26 00             nop                  	;.
	ram:7a27 00             nop                  	;.
	ram:7a28 00             nop                  	;.
	ram:7a29 00             nop                  	;.
	ram:7a2a 00             nop                  	;.
	ram:7a2b 00             nop                  	;.
	ram:7a2c 00             nop                  	;.
	ram:7a2d 00             nop                  	;.
	ram:7a2e 00             nop                  	;.
	ram:7a2f 00             nop                  	;.
	ram:7a30 00             nop                  	;.
	ram:7a31 00             nop                  	;.
	ram:7a32 00             nop                  	;.
	ram:7a33 00             nop                  	;.
	ram:7a34 00             nop                  	;.
	ram:7a35 00             nop                  	;.
	ram:7a36 00             nop                  	;.
	ram:7a37 00             nop                  	;.
	ram:7a38 00             nop                  	;.
	ram:7a39 00             nop                  	;.
	ram:7a3a 00             nop                  	;.
	ram:7a3b 00             nop                  	;.
	ram:7a3c fc 00 00       call m,00000h        	;. . .
	ram:7a3f 00             nop                  	;.
	ram:7a40 00             nop                  	;.
	ram:7a41 ff             rst 38h              	;.
	ram:7a42 03             inc bc               	;.
	ram:7a43 00             nop                  	;.
	ram:7a44 00             nop                  	;.
	ram:7a45 00             nop                  	;.
	ram:7a46 00             nop                  	;.
	ram:7a47 00             nop                  	;.
	ram:7a48 00             nop                  	;.
	ram:7a49 00             nop                  	;.
	ram:7a4a 00             nop                  	;.
	ram:7a4b 00             nop                  	;.
	ram:7a4c 00             nop                  	;.
	ram:7a4d 00             nop                  	;.
	ram:7a4e 00             nop                  	;.
	ram:7a4f 00             nop                  	;.
	ram:7a50 00             nop                  	;.
	ram:7a51 00             nop                  	;.
	ram:7a52 00             nop                  	;.
	ram:7a53 00             nop                  	;.
	ram:7a54 00             nop                  	;.
	ram:7a55 00             nop                  	;.
	ram:7a56 00             nop                  	;.
	ram:7a57 00             nop                  	;.
	ram:7a58 00             nop                  	;.
	ram:7a59 00             nop                  	;.
	ram:7a5a 00             nop                  	;.
	ram:7a5b 00             nop                  	;.
	ram:7a5c 00             nop                  	;.
	ram:7a5d 00             nop                  	;.
	ram:7a5e 00             nop                  	;.
	ram:7a5f 00             nop                  	;.
	ram:7a60 00             nop                  	;.
	ram:7a61 00             nop                  	;.
	ram:7a62 00             nop                  	;.
	ram:7a63 fe ff          cp 0ffh              	;. .
	ram:7a65 ff             rst 38h              	;.
	ram:7a66 07             rlca                 	;.
	ram:7a67 fe ff          cp 0ffh              	;. .
	ram:7a69 ff             rst 38h              	;.
	ram:7a6a 07             rlca                 	;.
	ram:7a6b 00             nop                  	;.
	ram:7a6c fc ff ff       call m,0ffffh        	;. . .
	ram:7a6f ff             rst 38h              	;.
	ram:7a70 ff             rst 38h              	;.
	ram:7a71 3f             ccf                  	;?
	ram:7a72 f8             ret m                	;.
	ram:7a73 ef             rst 28h              	;.
	ram:7a74 07             rlca                 	;.
	ram:7a75 10 00          djnz l7a77h          	;. .
l7a77h:
	ram:7a77 00             nop                  	;.
	ram:7a78 00             nop                  	;.
l7a79h:
	ram:7a79 00             nop                  	;.
	ram:7a7a 00             nop                  	;.
	ram:7a7b 00             nop                  	;.
	ram:7a7c fc 00 00       call m,00000h        	;. . .
	ram:7a7f 00             nop                  	;.
	ram:7a80 00             nop                  	;.
	ram:7a81 ff             rst 38h              	;.
	ram:7a82 03             inc bc               	;.
	ram:7a83 fe ff          cp 0ffh              	;. .
	ram:7a85 ff             rst 38h              	;.
	ram:7a86 07             rlca                 	;.
	ram:7a87 fe ff          cp 0ffh              	;. .
	ram:7a89 ff             rst 38h              	;.
	ram:7a8a 07             rlca                 	;.
	ram:7a8b 04             inc b                	;.
	ram:7a8c fc ff ff       call m,0ffffh        	;. . .
	ram:7a8f ff             rst 38h              	;.
	ram:7a90 ff             rst 38h              	;.
	ram:7a91 3f             ccf                  	;?
	ram:7a92 f8             ret m                	;.
	ram:7a93 ef             rst 28h              	;.
	ram:7a94 07             rlca                 	;.
	ram:7a95 3e 00          ld a,000h            	;> .
	ram:7a97 00             nop                  	;.
	ram:7a98 00             nop                  	;.
	ram:7a99 00             nop                  	;.
	ram:7a9a 00             nop                  	;.
	ram:7a9b 00             nop                  	;.
	ram:7a9c 00             nop                  	;.
	ram:7a9d 00             nop                  	;.
	ram:7a9e 00             nop                  	;.
	ram:7a9f 00             nop                  	;.
	ram:7aa0 00             nop                  	;.
	ram:7aa1 fe 03          cp 003h              	;. .
	ram:7aa3 00             nop                  	;.
	ram:7aa4 00             nop                  	;.
	ram:7aa5 00             nop                  	;.
	ram:7aa6 00             nop                  	;.
	ram:7aa7 00             nop                  	;.
	ram:7aa8 00             nop                  	;.
	ram:7aa9 00             nop                  	;.
	ram:7aaa 00             nop                  	;.
	ram:7aab 00             nop                  	;.
	ram:7aac 00             nop                  	;.
	ram:7aad 00             nop                  	;.
	ram:7aae 00             nop                  	;.
	ram:7aaf 00             nop                  	;.
	ram:7ab0 00             nop                  	;.
	ram:7ab1 00             nop                  	;.
	ram:7ab2 00             nop                  	;.
	ram:7ab3 00             nop                  	;.
	ram:7ab4 00             nop                  	;.
	ram:7ab5 00             nop                  	;.
	ram:7ab6 00             nop                  	;.
	ram:7ab7 00             nop                  	;.
	ram:7ab8 00             nop                  	;.
	ram:7ab9 00             nop                  	;.
	ram:7aba 00             nop                  	;.
	ram:7abb 00             nop                  	;.
	ram:7abc 00             nop                  	;.
	ram:7abd 00             nop                  	;.
	ram:7abe 00             nop                  	;.
	ram:7abf 00             nop                  	;.
	ram:7ac0 00             nop                  	;.
	ram:7ac1 3f             ccf                  	;?
	ram:7ac2 00             nop                  	;.
	ram:7ac3 00             nop                  	;.
	ram:7ac4 00             nop                  	;.
	ram:7ac5 00             nop                  	;.
	ram:7ac6 00             nop                  	;.
	ram:7ac7 00             nop                  	;.
	ram:7ac8 00             nop                  	;.
	ram:7ac9 00             nop                  	;.
	ram:7aca 00             nop                  	;.
	ram:7acb 00             nop                  	;.
	ram:7acc 00             nop                  	;.
	ram:7acd 00             nop                  	;.
	ram:7ace 00             nop                  	;.
	ram:7acf 00             nop                  	;.
	ram:7ad0 00             nop                  	;.
	ram:7ad1 00             nop                  	;.
	ram:7ad2 00             nop                  	;.
	ram:7ad3 00             nop                  	;.
	ram:7ad4 00             nop                  	;.
	ram:7ad5 00             nop                  	;.
	ram:7ad6 00             nop                  	;.
	ram:7ad7 00             nop                  	;.
	ram:7ad8 00             nop                  	;.
	ram:7ad9 00             nop                  	;.
	ram:7ada 00             nop                  	;.
l7adbh:
	ram:7adb 61             ld h,c               	;a
	ram:7adc 00             nop                  	;.
	ram:7add 06 00          ld b,000h            	;. .
	ram:7adf f1             pop af               	;.
	ram:7ae0 ff             rst 38h              	;.
	ram:7ae1 21 00 15       ld hl,01500h         	;! . .
	ram:7ae4 00             nop                  	;.
	ram:7ae5 14             inc d                	;.
	ram:7ae6 00             nop                  	;.
	ram:7ae7 61             ld h,c               	;a
	ram:7ae8 00             nop                  	;.
	ram:7ae9 16 00          ld d,000h            	;. .
	ram:7aeb f1             pop af               	;.
	ram:7aec ff             rst 38h              	;.
	ram:7aed 21 00 25       ld hl,02500h         	;! . %
	ram:7af0 00             nop                  	;.
	ram:7af1 24             inc h                	;$
	ram:7af2 00             nop                  	;.
	ram:7af3 c1             pop bc               	;.
	ram:7af4 00             nop                  	;.
	ram:7af5 26 00          ld h,000h            	;& .
	ram:7af7 f1             pop af               	;.
	ram:7af8 ff             rst 38h              	;.
	ram:7af9 61             ld h,c               	;a
	ram:7afa 00             nop                  	;.
	ram:7afb b5             or l                 	;.
	ram:7afc 01 21 00       ld bc,00021h         	;. ! .
	ram:7aff a5             and l                	;.
	ram:7b00 01 26 00       ld bc,00026h         	;. & .
	ram:7b03 f1             pop af               	;.
	ram:7b04 ff             rst 38h              	;.
	ram:7b05 21 00 35       ld hl,03500h         	;! . 5
	ram:7b08 00             nop                  	;.
	ram:7b09 34             inc (hl)             	;4
	ram:7b0a 00             nop                  	;.
	ram:7b0b 91             sub c                	;.
	ram:7b0c 00             nop                  	;.
	ram:7b0d b5             or l                 	;.
	ram:7b0e 01 21 00       ld bc,00021h         	;. ! .
	ram:7b11 a5             and l                	;.
	ram:7b12 01 26 00       ld bc,00026h         	;. & .
	ram:7b15 f1             pop af               	;.
	ram:7b16 ff             rst 38h              	;.
	ram:7b17 21 00 35       ld hl,03500h         	;! . 5
	ram:7b1a 00             nop                  	;.
	ram:7b1b 44             ld b,h               	;D
	ram:7b1c 00             nop                  	;.
	ram:7b1d 61             ld h,c               	;a
	ram:7b1e 00             nop                  	;.
	ram:7b1f 36 00          ld (hl),000h         	;6 .
	ram:7b21 f1             pop af               	;.
	ram:7b22 ff             rst 38h              	;.
	ram:7b23 21 00 45       ld hl,04500h         	;! . E
	ram:7b26 00             nop                  	;.
	ram:7b27 54             ld d,h               	;T
	ram:7b28 00             nop                  	;.
	ram:7b29 d1             pop de               	;.
	ram:7b2a 00             nop                  	;.
	ram:7b2b 26 00          ld h,000h            	;& .
	ram:7b2d f1             pop af               	;.
	ram:7b2e ff             rst 38h              	;.
	ram:7b2f e5             push hl              	;.
	ram:7b30 02             ld (bc),a            	;.
	ram:7b31 61             ld h,c               	;a
	ram:7b32 00             nop                  	;.
	ram:7b33 b5             or l                 	;.
	ram:7b34 01 21 00       ld bc,00021h         	;. ! .
	ram:7b37 a5             and l                	;.
	ram:7b38 01 26 00       ld bc,00026h         	;. & .
	ram:7b3b f1             pop af               	;.
	ram:7b3c ff             rst 38h              	;.
	ram:7b3d 21 00 35       ld hl,03500h         	;! . 5
	ram:7b40 00             nop                  	;.
	ram:7b41 64             ld h,h               	;d
	ram:7b42 00             nop                  	;.
	ram:7b43 d1             pop de               	;.
	ram:7b44 00             nop                  	;.
	ram:7b45 e5             push hl              	;.
	ram:7b46 02             ld (bc),a            	;.
	ram:7b47 26 00          ld h,000h            	;& .
	ram:7b49 f1             pop af               	;.
	ram:7b4a ff             rst 38h              	;.
	ram:7b4b 61             ld h,c               	;a
	ram:7b4c 00             nop                  	;.
	ram:7b4d b5             or l                 	;.
	ram:7b4e 01 21 00       ld bc,00021h         	;. ! .
	ram:7b51 a5             and l                	;.
	ram:7b52 01 26 00       ld bc,00026h         	;. & .
	ram:7b55 f1             pop af               	;.
	ram:7b56 ff             rst 38h              	;.
	ram:7b57 21 00 35       ld hl,03500h         	;! . 5
	ram:7b5a 00             nop                  	;.
	ram:7b5b 74             ld (hl),h            	;t
	ram:7b5c 00             nop                  	;.
	ram:7b5d f1             pop af               	;.
	ram:7b5e 00             nop                  	;.
	ram:7b5f 26 00          ld h,000h            	;& .
	ram:7b61 f1             pop af               	;.
	ram:7b62 ff             rst 38h              	;.
	ram:7b63 e5             push hl              	;.
	ram:7b64 02             ld (bc),a            	;.
	ram:7b65 26 00          ld h,000h            	;& .
	ram:7b67 f1             pop af               	;.
	ram:7b68 ff             rst 38h              	;.
	ram:7b69 61             ld h,c               	;a
	ram:7b6a 00             nop                  	;.
	ram:7b6b b5             or l                 	;.
	ram:7b6c 01 21 00       ld bc,00021h         	;. ! .
	ram:7b6f a5             and l                	;.
	ram:7b70 01 26 00       ld bc,00026h         	;. & .
	ram:7b73 f1             pop af               	;.
	ram:7b74 ff             rst 38h              	;.
	ram:7b75 21 00 35       ld hl,03500h         	;! . 5
	ram:7b78 00             nop                  	;.
	ram:7b79 84             add a,h              	;.
	ram:7b7a 00             nop                  	;.
	ram:7b7b 21 02 26       ld hl,02602h         	;! . &
	ram:7b7e 00             nop                  	;.
	ram:7b7f a1             and c                	;.
	ram:7b80 00             nop                  	;.
	ram:7b81 26 00          ld h,000h            	;& .
	ram:7b83 81             add a,c              	;.
	ram:7b84 00             nop                  	;.
	ram:7b85 26 00          ld h,000h            	;& .
	ram:7b87 61             ld h,c               	;a
	ram:7b88 00             nop                  	;.
	ram:7b89 26 00          ld h,000h            	;& .
	ram:7b8b 41             ld b,c               	;A
	ram:7b8c 00             nop                  	;.
	ram:7b8d 26 00          ld h,000h            	;& .
	ram:7b8f 21 00 26       ld hl,02600h         	;! . &
	ram:7b92 00             nop                  	;.
	ram:7b93 75             ld (hl),l            	;u
	ram:7b94 02             ld (bc),a            	;.
	ram:7b95 41             ld b,c               	;A
	ram:7b96 01 21 00       ld bc,00021h         	;. ! .
	ram:7b99 76             halt                 	;v
	ram:7b9a 00             nop                  	;.
	ram:7b9b 26 00          ld h,000h            	;& .
	ram:7b9d 75             ld (hl),l            	;u
	ram:7b9e 02             ld (bc),a            	;.
	ram:7b9f f1             pop af               	;.
	ram:7ba0 00             nop                  	;.
	ram:7ba1 a1             and c                	;.
	ram:7ba2 00             nop                  	;.
	ram:7ba3 21 00 76       ld hl,l7600h         	;! . v
	ram:7ba6 00             nop                  	;.
	ram:7ba7 26 00          ld h,000h            	;& .
	ram:7ba9 51             ld d,c               	;Q
	ram:7baa 00             nop                  	;.
	ram:7bab e5             push hl              	;.
	ram:7bac 02             ld (bc),a            	;.
	ram:7bad 31 00 26       ld sp,02600h         	;1 . &
	ram:7bb0 00             nop                  	;.
	ram:7bb1 f1             pop af               	;.
	ram:7bb2 ff             rst 38h              	;.
	ram:7bb3 42             ld b,d               	;B
	ram:7bb4 00             nop                  	;.
	ram:7bb5 e5             push hl              	;.
	ram:7bb6 02             ld (bc),a            	;.
	ram:7bb7 26 00          ld h,000h            	;& .
	ram:7bb9 f1             pop af               	;.
	ram:7bba ff             rst 38h              	;.
	ram:7bbb 75             ld (hl),l            	;u
	ram:7bbc 02             ld (bc),a            	;.
	ram:7bbd 94             sub h                	;.
	ram:7bbe 00             nop                  	;.
	ram:7bbf f1             pop af               	;.
	ram:7bc0 01 31 00       ld bc,00031h         	;. 1 .
	ram:7bc3 25             dec h                	;%
	ram:7bc4 07             rlca                 	;.
	ram:7bc5 b2             or d                 	;.
	ram:7bc6 01 31 00       ld bc,00031h         	;. 1 .
	ram:7bc9 45             ld b,l               	;E
	ram:7bca 07             rlca                 	;.
	ram:7bcb 82             add a,d              	;.
	ram:7bcc 01 31 00       ld bc,00031h         	;. 1 .
	ram:7bcf 85             add a,l              	;.
	ram:7bd0 07             rlca                 	;.
	ram:7bd1 52             ld d,d               	;R
	ram:7bd2 01 31 00       ld bc,00031h         	;. 1 .
	ram:7bd5 95             sub l                	;.
	ram:7bd6 07             rlca                 	;.
	ram:7bd7 22 01 31       ld (03101h),hl       	;" . 1
	ram:7bda 00             nop                  	;.
	ram:7bdb 15             dec d                	;.
	ram:7bdc 0c             inc c                	;.
	ram:7bdd f2 00 61       jp p,06100h          	;. . a
	ram:7be0 00             nop                  	;.
	ram:7be1 15             dec d                	;.
	ram:7be2 05             dec b                	;.
	ram:7be3 21 00 95       ld hl,09500h         	;! . .
	ram:7be6 04             inc b                	;.
	ram:7be7 66             ld h,(hl)            	;f
	ram:7be8 00             nop                  	;.
	ram:7be9 92             sub d                	;.
	ram:7bea 00             nop                  	;.
	ram:7beb 51             ld d,c               	;Q
	ram:7bec 00             nop                  	;.
	ram:7bed 55             ld d,l               	;U
	ram:7bee 06 15          ld b,015h            	;. .
	ram:7bf0 07             rlca                 	;.
	ram:7bf1 e5             push hl              	;.
	ram:7bf2 06 42          ld b,042h            	;. B
	ram:7bf4 00             nop                  	;.
	ram:7bf5 55             ld d,l               	;U
	ram:7bf6 06 85          ld b,085h            	;. .
	ram:7bf8 07             rlca                 	;.
	ram:7bf9 05             dec b                	;.
	ram:7bfa 07             rlca                 	;.
	ram:7bfb a4             and h                	;.
	ram:7bfc 00             nop                  	;.
	ram:7bfd f1             pop af               	;.
	ram:7bfe 00             nop                  	;.
	ram:7bff 41             ld b,c               	;A
	ram:7c00 00             nop                  	;.
	ram:7c01 85             add a,l              	;.
	ram:7c02 07             rlca                 	;.
	ram:7c03 45             ld b,l               	;E
	ram:7c04 07             rlca                 	;.
	ram:7c05 72             ld (hl),d            	;r
	ram:7c06 00             nop                  	;.
	ram:7c07 51             ld d,c               	;Q
	ram:7c08 00             nop                  	;.
	ram:7c09 95             sub l                	;.
	ram:7c0a 07             rlca                 	;.
	ram:7c0b 21 00 45       ld hl,04500h         	;! . E
	ram:7c0e 07             rlca                 	;.
	ram:7c0f 22 00 25       ld (02500h),hl       	;" . %
	ram:7c12 07             rlca                 	;.
	ram:7c13 66             ld h,(hl)            	;f
	ram:7c14 00             nop                  	;.
	ram:7c15 21 00 26       ld hl,02600h         	;! . &
	ram:7c18 00             nop                  	;.
	ram:7c19 b4             or h                 	;.
	ram:7c1a 00             nop                  	;.
	ram:7c1b 51             ld d,c               	;Q
	ram:7c1c 00             nop                  	;.
	ram:7c1d 15             dec d                	;.
	ram:7c1e 05             dec b                	;.
	ram:7c1f 75             ld (hl),l            	;u
	ram:7c20 02             ld (bc),a            	;.
	ram:7c21 66             ld h,(hl)            	;f
	ram:7c22 00             nop                  	;.
	ram:7c23 c4 00 d1       call nz,0d100h       	;. . .
	ram:7c26 00             nop                  	;.
	ram:7c27 65             ld h,l               	;e
	ram:7c28 0c             inc c                	;.
	ram:7c29 41             ld b,c               	;A
	ram:7c2a 00             nop                  	;.
	ram:7c2b 85             add a,l              	;.
	ram:7c2c 07             rlca                 	;.
	ram:7c2d 95             sub l                	;.
	ram:7c2e 07             rlca                 	;.
	ram:7c2f 72             ld (hl),d            	;r
	ram:7c30 00             nop                  	;.
	ram:7c31 31 00 85       ld sp,08500h         	;1 . .
	ram:7c34 07             rlca                 	;.
	ram:7c35 22 00 95       ld (09500h),hl       	;" . .
	ram:7c38 07             rlca                 	;.
	ram:7c39 21 00 25       ld hl,02500h         	;! . %
	ram:7c3c 01 d4 00       ld bc,000d4h         	;. . .
	ram:7c3f a1             and c                	;.
	ram:7c40 00             nop                  	;.
	ram:7c41 31 00 75       ld sp,07500h         	;1 . u
	ram:7c44 0c             inc c                	;.
	ram:7c45 22 00 35       ld (03500h),hl       	;" . 5
	ram:7c48 05             dec b                	;.
	ram:7c49 31 00 85       ld sp,08500h         	;1 . .
	ram:7c4c 07             rlca                 	;.
	ram:7c4d 22 00 95       ld (09500h),hl       	;" . .
	ram:7c50 07             rlca                 	;.
	ram:7c51 e4 00 31       call po,03100h       	;. . 1
	ram:7c54 00             nop                  	;.
	ram:7c55 b5             or l                 	;.
	ram:7c56 0c             inc c                	;.
	ram:7c57 f4 00 31       call p,03100h        	;. . 1
	ram:7c5a 00             nop                  	;.
	ram:7c5b c5             push bc              	;.
	ram:7c5c 0c             inc c                	;.
	ram:7c5d 04             inc b                	;.
	ram:7c5e 01 51 00       ld bc,00051h         	;. Q .
	ram:7c61 15             dec d                	;.
	ram:7c62 04             inc b                	;.
	ram:7c63 e5             push hl              	;.
	ram:7c64 06 35          ld b,035h            	;. 5
	ram:7c66 07             rlca                 	;.
	ram:7c67 14             inc d                	;.
	ram:7c68 01 31 00       ld bc,00031h         	;. 1 .
	ram:7c6b 15             dec d                	;.
	ram:7c6c 06 24          ld b,024h            	;. $
	ram:7c6e 01 31 00       ld bc,00031h         	;. 1 .
	ram:7c71 25             dec h                	;%
	ram:7c72 06 34          ld b,034h            	;. 4
	ram:7c74 01 61 00       ld bc,00061h         	;. a .
	ram:7c77 35             dec (hl)             	;5
	ram:7c78 06 f5          ld b,0f5h            	;. .
	ram:7c7a 06 25          ld b,025h            	;. %
	ram:7c7c 07             rlca                 	;.
	ram:7c7d 25             dec h                	;%
	ram:7c7e 07             rlca                 	;.
	ram:7c7f 44             ld b,h               	;D
	ram:7c80 01 31 00       ld bc,00031h         	;. 1 .
	ram:7c83 e5             push hl              	;.
	ram:7c84 06 54          ld b,054h            	;. T
	ram:7c86 01 71 00       ld bc,00071h         	;. q .
	ram:7c89 25             dec h                	;%
	ram:7c8a 05             dec b                	;.
	ram:7c8b 55             ld d,l               	;U
	ram:7c8c 06 75          ld b,075h            	;. u
	ram:7c8e 06 55          ld b,055h            	;. U
	ram:7c90 04             inc b                	;.
	ram:7c91 15             dec d                	;.
	ram:7c92 07             rlca                 	;.
	ram:7c93 64             ld h,h               	;d
	ram:7c94 01 71 00       ld bc,00071h         	;. q .
	ram:7c97 05             dec b                	;.
	ram:7c98 05             dec b                	;.
	ram:7c99 25             dec h                	;%
	ram:7c9a 05             dec b                	;.
	ram:7c9b 55             ld d,l               	;U
	ram:7c9c 06 75          ld b,075h            	;. u
	ram:7c9e 06 35          ld b,035h            	;. 5
	ram:7ca0 04             inc b                	;.
	ram:7ca1 74             ld (hl),h            	;t
	ram:7ca2 01 a1 00       ld bc,000a1h         	;. . .
	ram:7ca5 65             ld h,l               	;e
	ram:7ca6 06 e5          ld b,0e5h            	;. .
	ram:7ca8 06 95          ld b,095h            	;. .
	ram:7caa 04             inc b                	;.
	ram:7cab e5             push hl              	;.
	ram:7cac 06 45          ld b,045h            	;. E
	ram:7cae 07             rlca                 	;.
	ram:7caf 55             ld d,l               	;U
	ram:7cb0 04             inc b                	;.
	ram:7cb1 25             dec h                	;%
	ram:7cb2 07             rlca                 	;.
	ram:7cb3 25             dec h                	;%
	ram:7cb4 07             rlca                 	;.
	ram:7cb5 84             add a,h              	;.
	ram:7cb6 01 31 00       ld bc,00031h         	;. 1 .
	ram:7cb9 25             dec h                	;%
	ram:7cba 02             ld (bc),a            	;.
	ram:7cbb 94             sub h                	;.
	ram:7cbc 01 71 00       ld bc,00071h         	;. q .
	ram:7cbf 07             rlca                 	;.
	ram:7cc0 00             nop                  	;.
	ram:7cc1 55             ld d,l               	;U
	ram:7cc2 00             nop                  	;.
	ram:7cc3 25             dec h                	;%
	ram:7cc4 04             inc b                	;.
	ram:7cc5 95             sub l                	;.
	ram:7cc6 04             inc b                	;.
	ram:7cc7 e5             push hl              	;.
	ram:7cc8 04             inc b                	;.
	ram:7cc9 a4             and h                	;.
	ram:7cca 01 71 00       ld bc,00071h         	;. q .
	ram:7ccd 07             rlca                 	;.
	ram:7cce 00             nop                  	;.
	ram:7ccf 55             ld d,l               	;U
	ram:7cd0 00             nop                  	;.
	ram:7cd1 35             dec (hl)             	;5
	ram:7cd2 04             inc b                	;.
	ram:7cd3 95             sub l                	;.
	ram:7cd4 05             dec b                	;.
	ram:7cd5 c5             push bc              	;.
	ram:7cd6 04             inc b                	;.
	ram:7cd7 b4             or h                 	;.
	ram:7cd8 01 71 00       ld bc,00071h         	;. q .
	ram:7cdb 07             rlca                 	;.
	ram:7cdc 00             nop                  	;.
	ram:7cdd 55             ld d,l               	;U
	ram:7cde 00             nop                  	;.
	ram:7cdf 45             ld b,l               	;E
	ram:7ce0 04             inc b                	;.
	ram:7ce1 55             ld d,l               	;U
	ram:7ce2 04             inc b                	;.
	ram:7ce3 35             dec (hl)             	;5
	ram:7ce4 04             inc b                	;.
	ram:7ce5 c4 01 71       call nz,sub_7101h    	;. . q
	ram:7ce8 00             nop                  	;.
	ram:7ce9 07             rlca                 	;.
	ram:7cea 00             nop                  	;.
	ram:7ceb 55             ld d,l               	;U
	ram:7cec 00             nop                  	;.
	ram:7ced 45             ld b,l               	;E
	ram:7cee 04             inc b                	;.
	ram:7cef d5             push de              	;.
	ram:7cf0 04             inc b                	;.
	ram:7cf1 35             dec (hl)             	;5
	ram:7cf2 05             dec b                	;.
	ram:7cf3 d4 01 81       call nc,08101h       	;. . .
	ram:7cf6 00             nop                  	;.
	ram:7cf7 07             rlca                 	;.
	ram:7cf8 00             nop                  	;.
	ram:7cf9 55             ld d,l               	;U
	ram:7cfa 00             nop                  	;.
	ram:7cfb 65             ld h,l               	;e
	ram:7cfc 04             inc b                	;.
	ram:7cfd 25             dec h                	;%
	ram:7cfe 05             dec b                	;.
	ram:7cff 15             dec d                	;.
	ram:7d00 04             inc b                	;.
	ram:7d01 35             dec (hl)             	;5
	ram:7d02 04             inc b                	;.
	ram:7d03 e4 01 71       call po,sub_7101h    	;. . q
	ram:7d06 00             nop                  	;.
	ram:7d07 07             rlca                 	;.
	ram:7d08 00             nop                  	;.
	ram:7d09 55             ld d,l               	;U
	ram:7d0a 00             nop                  	;.
	ram:7d0b 85             add a,l              	;.
	ram:7d0c 04             inc b                	;.
	ram:7d0d 55             ld d,l               	;U
	ram:7d0e 04             inc b                	;.
	ram:7d0f 85             add a,l              	;.
	ram:7d10 05             dec b                	;.
	ram:7d11 f4 01 71       call p,sub_7101h     	;. . q
	ram:7d14 00             nop                  	;.
	ram:7d15 07             rlca                 	;.
	ram:7d16 00             nop                  	;.
	ram:7d17 55             ld d,l               	;U
	ram:7d18 00             nop                  	;.
	ram:7d19 f5             push af              	;.
	ram:7d1a 04             inc b                	;.
	ram:7d1b 35             dec (hl)             	;5
	ram:7d1c 04             inc b                	;.
	ram:7d1d 45             ld b,l               	;E
	ram:7d1e 05             dec b                	;.
	ram:7d1f 04             inc b                	;.
	ram:7d20 02             ld (bc),a            	;.
	ram:7d21 71             ld (hl),c            	;q
	ram:7d22 00             nop                  	;.
	ram:7d23 07             rlca                 	;.
	ram:7d24 00             nop                  	;.
	ram:7d25 55             ld d,l               	;U
	ram:7d26 00             nop                  	;.
	ram:7d27 05             dec b                	;.
	ram:7d28 05             dec b                	;.
	ram:7d29 f5             push af              	;.
	ram:7d2a 04             inc b                	;.
	ram:7d2b c5             push bc              	;.
	ram:7d2c 04             inc b                	;.
	ram:7d2d 14             inc d                	;.
	ram:7d2e 02             ld (bc),a            	;.
	ram:7d2f 71             ld (hl),c            	;q
	ram:7d30 00             nop                  	;.
	ram:7d31 07             rlca                 	;.
	ram:7d32 00             nop                  	;.
	ram:7d33 55             ld d,l               	;U
	ram:7d34 00             nop                  	;.
	ram:7d35 25             dec h                	;%
	ram:7d36 05             dec b                	;.
	ram:7d37 55             ld d,l               	;U
	ram:7d38 04             inc b                	;.
	ram:7d39 35             dec (hl)             	;5
	ram:7d3a 04             inc b                	;.
	ram:7d3b 24             inc h                	;$
	ram:7d3c 02             ld (bc),a            	;.
	ram:7d3d 71             ld (hl),c            	;q
	ram:7d3e 00             nop                  	;.
	ram:7d3f 07             rlca                 	;.
	ram:7d40 00             nop                  	;.
	ram:7d41 55             ld d,l               	;U
	ram:7d42 00             nop                  	;.
	ram:7d43 35             dec (hl)             	;5
	ram:7d44 05             dec b                	;.
	ram:7d45 05             dec b                	;.
	ram:7d46 05             dec b                	;.
	ram:7d47 85             add a,l              	;.
	ram:7d48 04             inc b                	;.
	ram:7d49 34             inc (hl)             	;4
	ram:7d4a 02             ld (bc),a            	;.
	ram:7d4b 31 00 55       ld sp,l5500h         	;1 . U
	ram:7d4e 00             nop                  	;.
	ram:7d4f 44             ld b,h               	;D
	ram:7d50 02             ld (bc),a            	;.
	ram:7d51 31 00 05       ld sp,00500h         	;1 . .
	ram:7d54 01 54 02       ld bc,00254h         	;. T .
	ram:7d57 31 00 15       ld sp,01500h         	;1 . .
	ram:7d5a 01 64 02       ld bc,00264h         	;. d .
	ram:7d5d 31 00 25       ld sp,02500h         	;1 . %
	ram:7d60 01 74 02       ld bc,00274h         	;. t .
	ram:7d63 31 00 35       ld sp,03500h         	;1 . 5
	ram:7d66 01 84 02       ld bc,00284h         	;. . .
	ram:7d69 31 00 45       ld sp,04500h         	;1 . E
	ram:7d6c 01 94 02       ld bc,00294h         	;. . .
	ram:7d6f 31 00 55       ld sp,l5500h         	;1 . U
	ram:7d72 01 a4 02       ld bc,002a4h         	;. . .
	ram:7d75 31 00 65       ld sp,l6500h         	;1 . e
	ram:7d78 01 b4 02       ld bc,002b4h         	;. . .
	ram:7d7b 31 00 75       ld sp,07500h         	;1 . u
	ram:7d7e 01 c4 02       ld bc,002c4h         	;. . .
	ram:7d81 31 00 85       ld sp,08500h         	;1 . .
	ram:7d84 01 d4 02       ld bc,002d4h         	;. . .
	ram:7d87 31 00 95       ld sp,09500h         	;1 . .
	ram:7d8a 01 e4 02       ld bc,002e4h         	;. . .
	ram:7d8d 31 00 a5       ld sp,0a500h         	;1 . .
	ram:7d90 01 f4 02       ld bc,002f4h         	;. . .
	ram:7d93 31 00 c5       ld sp,0c500h         	;1 . .
	ram:7d96 01 04 03       ld bc,00304h         	;. . .
	ram:7d99 41             ld b,c               	;A
	ram:7d9a 00             nop                  	;.
	ram:7d9b d5             push de              	;.
	ram:7d9c 01 e5 05       ld bc,005e5h         	;. . .
	ram:7d9f 14             inc d                	;.
	ram:7da0 03             inc bc               	;.
	ram:7da1 41             ld b,c               	;A
	ram:7da2 00             nop                  	;.
	ram:7da3 55             ld d,l               	;U
	ram:7da4 06 e5          ld b,0e5h            	;. .
	ram:7da6 05             dec b                	;.
	ram:7da7 24             inc h                	;$
	ram:7da8 03             inc bc               	;.
	ram:7da9 31 00 15       ld sp,01500h         	;1 . .
	ram:7dac 02             ld (bc),a            	;.
	ram:7dad 34             inc (hl)             	;4
	ram:7dae 03             inc bc               	;.
	ram:7daf 31 00 55       ld sp,l5500h         	;1 . U
	ram:7db2 02             ld (bc),a            	;.
	ram:7db3 44             ld b,h               	;D
	ram:7db4 03             inc bc               	;.
	ram:7db5 31 00 85       ld sp,08500h         	;1 . .
	ram:7db8 02             ld (bc),a            	;.
	ram:7db9 54             ld d,h               	;T
	ram:7dba 03             inc bc               	;.
	ram:7dbb 31 00 95       ld sp,09500h         	;1 . .
	ram:7dbe 02             ld (bc),a            	;.
	ram:7dbf 64             ld h,h               	;d
	ram:7dc0 03             inc bc               	;.
	ram:7dc1 31 00 a5       ld sp,0a500h         	;1 . .
	ram:7dc4 02             ld (bc),a            	;.
	ram:7dc5 74             ld (hl),h            	;t
	ram:7dc6 03             inc bc               	;.
	ram:7dc7 31 00 b5       ld sp,0b500h         	;1 . .
	ram:7dca 02             ld (bc),a            	;.
	ram:7dcb 84             add a,h              	;.
	ram:7dcc 03             inc bc               	;.
	ram:7dcd 31 00 c5       ld sp,0c500h         	;1 . .
	ram:7dd0 02             ld (bc),a            	;.
	ram:7dd1 94             sub h                	;.
	ram:7dd2 03             inc bc               	;.
	ram:7dd3 31 00 d5       ld sp,0d500h         	;1 . .
	ram:7dd6 02             ld (bc),a            	;.
	ram:7dd7 a4             and h                	;.
	ram:7dd8 03             inc bc               	;.
	ram:7dd9 31 00 f5       ld sp,0f500h         	;1 . .
	ram:7ddc 02             ld (bc),a            	;.
	ram:7ddd b4             or h                 	;.
	ram:7dde 03             inc bc               	;.
	ram:7ddf 31 00 a5       ld sp,0a500h         	;1 . .
	ram:7de2 03             inc bc               	;.
	ram:7de3 c4 03 31       call nz,03103h       	;. . 1
	ram:7de6 00             nop                  	;.
	ram:7de7 c5             push bc              	;.
	ram:7de8 03             inc bc               	;.
	ram:7de9 d4 03 41       call nc,sub_4103h    	;. . A
	ram:7dec 00             nop                  	;.
	ram:7ded d5             push de              	;.
	ram:7dee 03             inc bc               	;.
	ram:7def d5             push de              	;.
	ram:7df0 03             inc bc               	;.
	ram:7df1 e4 03 31       call po,03103h       	;. . 1
	ram:7df4 00             nop                  	;.
	ram:7df5 d5             push de              	;.
	ram:7df6 03             inc bc               	;.
	ram:7df7 f4 03 31       call p,03103h        	;. . 1
	ram:7dfa 00             nop                  	;.
	ram:7dfb e5             push hl              	;.
	ram:7dfc 03             inc bc               	;.
	ram:7dfd 04             inc b                	;.
	ram:7dfe 04             inc b                	;.
	ram:7dff 71             ld (hl),c            	;q
	ram:7e00 00             nop                  	;.
	ram:7e01 07             rlca                 	;.
	ram:7e02 00             nop                  	;.
	ram:7e03 35             dec (hl)             	;5
	ram:7e04 04             inc b                	;.
	ram:7e05 f5             push af              	;.
	ram:7e06 04             inc b                	;.
	ram:7e07 35             dec (hl)             	;5
	ram:7e08 05             dec b                	;.
	ram:7e09 15             dec d                	;.
	ram:7e0a 01 14 04       ld bc,00414h         	;. . .
	ram:7e0d 81             add a,c              	;.
	ram:7e0e 00             nop                  	;.
	ram:7e0f 07             rlca                 	;.
	ram:7e10 00             nop                  	;.
	ram:7e11 35             dec (hl)             	;5
	ram:7e12 04             inc b                	;.
	ram:7e13 f5             push af              	;.
	ram:7e14 04             inc b                	;.
	ram:7e15 35             dec (hl)             	;5
	ram:7e16 05             dec b                	;.
	ram:7e17 85             add a,l              	;.
	ram:7e18 04             inc b                	;.
	ram:7e19 15             dec d                	;.
	ram:7e1a 01 24 04       ld bc,00424h         	;. $ .
	ram:7e1d 61             ld h,c               	;a
	ram:7e1e 00             nop                  	;.
	ram:7e1f 07             rlca                 	;.
	ram:7e20 00             nop                  	;.
	ram:7e21 45             ld b,l               	;E
	ram:7e22 04             inc b                	;.
	ram:7e23 35             dec (hl)             	;5
	ram:7e24 05             dec b                	;.
	ram:7e25 c5             push bc              	;.
	ram:7e26 03             inc bc               	;.
	ram:7e27 34             inc (hl)             	;4
	ram:7e28 04             inc b                	;.
	ram:7e29 81             add a,c              	;.
	ram:7e2a 00             nop                  	;.
	ram:7e2b 07             rlca                 	;.
	ram:7e2c 00             nop                  	;.
	ram:7e2d 55             ld d,l               	;U
	ram:7e2e 04             inc b                	;.
	ram:7e2f 15             dec d                	;.
	ram:7e30 05             dec b                	;.
	ram:7e31 55             ld d,l               	;U
	ram:7e32 00             nop                  	;.
	ram:7e33 35             dec (hl)             	;5
	ram:7e34 05             dec b                	;.
	ram:7e35 45             ld b,l               	;E
	ram:7e36 05             dec b                	;.
	ram:7e37 44             ld b,h               	;D
	ram:7e38 04             inc b                	;.
	ram:7e39 61             ld h,c               	;a
	ram:7e3a 00             nop                  	;.
	ram:7e3b 07             rlca                 	;.
	ram:7e3c 00             nop                  	;.
	ram:7e3d 95             sub l                	;.
	ram:7e3e 04             inc b                	;.
	ram:7e3f 35             dec (hl)             	;5
	ram:7e40 05             dec b                	;.
	ram:7e41 e5             push hl              	;.
	ram:7e42 03             inc bc               	;.
	ram:7e43 54             ld d,h               	;T
	ram:7e44 04             inc b                	;.
	ram:7e45 81             add a,c              	;.
	ram:7e46 00             nop                  	;.
	ram:7e47 07             rlca                 	;.
	ram:7e48 00             nop                  	;.
	ram:7e49 c5             push bc              	;.
	ram:7e4a 04             inc b                	;.
	ram:7e4b 95             sub l                	;.
	ram:7e4c 04             inc b                	;.
	ram:7e4d 55             ld d,l               	;U
	ram:7e4e 00             nop                  	;.
	ram:7e4f 65             ld h,l               	;e
	ram:7e50 05             dec b                	;.
	ram:7e51 35             dec (hl)             	;5
	ram:7e52 04             inc b                	;.
	ram:7e53 64             ld h,h               	;d
	ram:7e54 04             inc b                	;.
	ram:7e55 81             add a,c              	;.
	ram:7e56 00             nop                  	;.
	ram:7e57 07             rlca                 	;.
	ram:7e58 00             nop                  	;.
	ram:7e59 65             ld h,l               	;e
	ram:7e5a 05             dec b                	;.
	ram:7e5b 35             dec (hl)             	;5
	ram:7e5c 04             inc b                	;.
	ram:7e5d 55             ld d,l               	;U
	ram:7e5e 00             nop                  	;.
	ram:7e5f c5             push bc              	;.
	ram:7e60 04             inc b                	;.
	ram:7e61 95             sub l                	;.
	ram:7e62 04             inc b                	;.
	ram:7e63 74             ld (hl),h            	;t
	ram:7e64 04             inc b                	;.
	ram:7e65 71             ld (hl),c            	;q
	ram:7e66 00             nop                  	;.
	ram:7e67 07             rlca                 	;.
	ram:7e68 00             nop                  	;.
	ram:7e69 35             dec (hl)             	;5
	ram:7e6a 05             dec b                	;.
	ram:7e6b 95             sub l                	;.
	ram:7e6c 04             inc b                	;.
	ram:7e6d e5             push hl              	;.
	ram:7e6e 04             inc b                	;.
	ram:7e6f 15             dec d                	;.
	ram:7e70 01 84 04       ld bc,00484h         	;. . .
	ram:7e73 81             add a,c              	;.
	ram:7e74 00             nop                  	;.
	ram:7e75 07             rlca                 	;.
	ram:7e76 00             nop                  	;.
	ram:7e77 35             dec (hl)             	;5
	ram:7e78 05             dec b                	;.
	ram:7e79 95             sub l                	;.
	ram:7e7a 04             inc b                	;.
	ram:7e7b e5             push hl              	;.
	ram:7e7c 04             inc b                	;.
	ram:7e7d 85             add a,l              	;.
	ram:7e7e 04             inc b                	;.
	ram:7e7f 15             dec d                	;.
	ram:7e80 01 94 04       ld bc,00494h         	;. . .
	ram:7e83 81             add a,c              	;.
	ram:7e84 00             nop                  	;.
	ram:7e85 07             rlca                 	;.
	ram:7e86 00             nop                  	;.
	ram:7e87 35             dec (hl)             	;5
	ram:7e88 05             dec b                	;.
	ram:7e89 45             ld b,l               	;E
	ram:7e8a 05             dec b                	;.
	ram:7e8b 55             ld d,l               	;U
	ram:7e8c 00             nop                  	;.
	ram:7e8d 55             ld d,l               	;U
	ram:7e8e 04             inc b                	;.
	ram:7e8f 15             dec d                	;.
	ram:7e90 05             dec b                	;.
	ram:7e91 a4             and h                	;.
	ram:7e92 04             inc b                	;.
	ram:7e93 71             ld (hl),c            	;q
	ram:7e94 00             nop                  	;.
	ram:7e95 07             rlca                 	;.
	ram:7e96 00             nop                  	;.
	ram:7e97 45             ld b,l               	;E
	ram:7e98 05             dec b                	;.
	ram:7e99 15             dec d                	;.
	ram:7e9a 04             inc b                	;.
	ram:7e9b e5             push hl              	;.
	ram:7e9c 04             inc b                	;.
	ram:7e9d 15             dec d                	;.
	ram:7e9e 01 b4 04       ld bc,004b4h         	;. . .
	ram:7ea1 81             add a,c              	;.
	ram:7ea2 00             nop                  	;.
	ram:7ea3 07             rlca                 	;.
	ram:7ea4 00             nop                  	;.
	ram:7ea5 45             ld b,l               	;E
	ram:7ea6 05             dec b                	;.
	ram:7ea7 15             dec d                	;.
	ram:7ea8 04             inc b                	;.
	ram:7ea9 e5             push hl              	;.
	ram:7eaa 04             inc b                	;.
	ram:7eab 85             add a,l              	;.
	ram:7eac 04             inc b                	;.
	ram:7ead 15             dec d                	;.
	ram:7eae 01 c4 04       ld bc,004c4h         	;. . .
	ram:7eb1 31 00 b5       ld sp,0b500h         	;1 . .
	ram:7eb4 05             dec b                	;.
	ram:7eb5 d4 04 31       call nc,03104h       	;. . 1
	ram:7eb8 00             nop                  	;.
	ram:7eb9 d5             push de              	;.
	ram:7eba 05             dec b                	;.
	ram:7ebb e4 04 31       call po,03104h       	;. . 1
	ram:7ebe 00             nop                  	;.
	ram:7ebf e5             push hl              	;.
	ram:7ec0 05             dec b                	;.
	ram:7ec1 f4 04 31       call p,03104h        	;. . 1
	ram:7ec4 00             nop                  	;.
	ram:7ec5 b5             or l                 	;.
	ram:7ec6 07             rlca                 	;.
	ram:7ec7 04             inc b                	;.
	ram:7ec8 05             dec b                	;.
	ram:7ec9 31 00 d5       ld sp,0d500h         	;1 . .
	ram:7ecc 07             rlca                 	;.
	ram:7ecd 14             inc d                	;.
	ram:7ece 05             dec b                	;.
	ram:7ecf 31 00 45       ld sp,04500h         	;1 . E
	ram:7ed2 0c             inc c                	;.
	ram:7ed3 24             inc h                	;$
	ram:7ed4 05             dec b                	;.
	ram:7ed5 41             ld b,c               	;A
	ram:7ed6 00             nop                  	;.
	ram:7ed7 d5             push de              	;.
	ram:7ed8 0c             inc c                	;.
	ram:7ed9 05             dec b                	;.
	ram:7eda 01 34 05       ld bc,00534h         	;. 4 .
	ram:7edd 61             ld h,c               	;a
	ram:7ede 00             nop                  	;.
	ram:7edf 46             ld b,(hl)            	;F
	ram:7ee0 00             nop                  	;.
	ram:7ee1 31 00 56       ld sp,05600h         	;1 . V
	ram:7ee4 00             nop                  	;.
	ram:7ee5 f1             pop af               	;.
	ram:7ee6 ff             rst 38h              	;.
	ram:7ee7 44             ld b,h               	;D
	ram:7ee8 05             dec b                	;.
	ram:7ee9 41             ld b,c               	;A
	ram:7eea 00             nop                  	;.
	ram:7eeb 15             dec d                	;.
	ram:7eec 05             dec b                	;.
	ram:7eed 75             ld (hl),l            	;u
	ram:7eee 02             ld (bc),a            	;.
	ram:7eef 54             ld d,h               	;T
	ram:7ef0 05             dec b                	;.
	ram:7ef1 31 00 65       ld sp,l6500h         	;1 . e
	ram:7ef4 0d             dec c                	;.
	ram:7ef5 64             ld h,h               	;d
	ram:7ef6 05             dec b                	;.
	ram:7ef7 31 00 05       ld sp,00500h         	;1 . .
	ram:7efa 02             ld (bc),a            	;.
	ram:7efb 74             ld (hl),h            	;t
	ram:7efc 05             dec b                	;.
	ram:7efd 61             ld h,c               	;a
	ram:7efe 00             nop                  	;.
	ram:7eff 15             dec d                	;.
	ram:7f00 05             dec b                	;.
	ram:7f01 75             ld (hl),l            	;u
	ram:7f02 02             ld (bc),a            	;.
	ram:7f03 56             ld d,(hl)            	;V
	ram:7f04 00             nop                  	;.
	ram:7f05 f1             pop af               	;.
	ram:7f06 ff             rst 38h              	;.
	ram:7f07 84             add a,h              	;.
	ram:7f08 05             dec b                	;.
	ram:7f09 31 00 e9       ld sp,0e900h         	;1 . .
	ram:7f0c 02             ld (bc),a            	;.
	ram:7f0d 94             sub h                	;.
	ram:7f0e 05             dec b                	;.
	ram:7f0f 00             nop                  	;.
	ram:7f10 00             nop                  	;.
l7f11h:
	ram:7f11 cd d7 33       call 033d7h          	;. . 3
l7f14h:
	ram:7f14 21 28 7f       ld hl,l7f28h         	;! ( .
	ram:7f17 cd 50 06       call 00650h          	;. P .
	ram:7f1a cd 35 7f       call sub_7f35h       	;. 5 .
	ram:7f1d 3e 1d          ld a,01dh            	;> .
	ram:7f1f cd 85 3d       call 03d85h          	;. . =
	ram:7f22 21 d1 32       ld hl,032d1h         	;! . 2
	ram:7f25 c3 81 43       jp l4381h            	;. . C
l7f28h:
	ram:7f28 3c             inc a                	;<
	ram:7f29 7f             ld a,a               	;.
	ram:7f2a d9             exx                  	;.
	ram:7f2b 34             inc (hl)             	;4
	ram:7f2c d7             rst 10h              	;.
	ram:7f2d 33             inc sp               	;3
	ram:7f2e b5             or l                 	;.
	ram:7f2f 34             inc (hl)             	;4
	ram:7f30 8b             adc a,e              	;.
	ram:7f31 34             inc (hl)             	;4
	ram:7f32 3b             dec sp               	;;
	ram:7f33 7f             ld a,a               	;.
	ram:7f34 0a             ld a,(bc)            	;.
sub_7f35h:
	ram:7f35 cd 39 3e       call 03e39h          	;. 9 >
	ram:7f38 cd c3 3e       call 03ec3h          	;. . >
	ram:7f3b c9             ret                  	;.
	ram:7f3c fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:7f40 ca 91 34       jp z,03491h          	;. . 4
	ram:7f43 fe c1          cp 0c1h              	;. .
	ram:7f45 28 ca          jr z,l7f11h          	;( .
	ram:7f47 cd 97 34       call 03497h          	;. . 4
	ram:7f4a d0             ret nc               	;.
	ram:7f4b 3e 02          ld a,002h            	;> .
	ram:7f4d cd 9c 43       call sub_439ch       	;. . C
	ram:7f50 cd 35 7f       call sub_7f35h       	;. 5 .
	ram:7f53 3e 58          ld a,058h            	;> X
	ram:7f55 cd 85 3d       call 03d85h          	;. . =
	ram:7f58 cd 50 49       call sub_4950h       	;. P I
	ram:7f5b cd a3 49       call sub_49a3h       	;. . I
	ram:7f5e cd cc 48       call sub_48cch       	;. . H
l7f61h:
	ram:7f61 3e 03          ld a,003h            	;> .
	ram:7f63 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:7f66 21 6c 7f       ld hl,l7f6ch         	;! l .
	ram:7f69 c3 1c 44       jp l441ch            	;. . D
l7f6ch:
	ram:7f6c fe c1          cp 0c1h              	;. .
	ram:7f6e 20 06          jr nz,l7f76h         	;.
	ram:7f70 cd e5 49       call sub_49e5h       	;. . I
	ram:7f73 c3 14 7f       jp l7f14h            	;. . .
l7f76h:
	ram:7f76 fe 03          cp 003h              	;. .
	ram:7f78 28 09          jr z,l7f83h          	;( .
	ram:7f7a fe 06          cp 006h              	;. .
	ram:7f7c 28 05          jr z,l7f83h          	;( .
	ram:7f7e fe 04          cp 004h              	;. .
	ram:7f80 c2 7e 45       jp nz,l457eh         	;. ~ E
l7f83h:
	ram:7f83 cd bf 3c       call 03cbfh          	;. . <
	ram:7f86 c8             ret z                	;.
	ram:7f87 cd da 44       call sub_44dah       	;. . D
	ram:7f8a 3a 05 80       ld a,(08005h)        	;: . .
	ram:7f8d fe 03          cp 003h              	;. .
	ram:7f8f 28 08          jr z,l7f99h          	;( .
	ram:7f91 3e 01          ld a,001h            	;> .
l7f93h:
	ram:7f93 32 9e 8b       ld (08b9eh),a        	;2 . .
	ram:7f96 c3 32 46       jp l4632h            	;. 2 F
l7f99h:
	ram:7f99 3a 24 8b       ld a,(08b24h)        	;: $ .
	ram:7f9c 32 22 8b       ld (08b22h),a        	;2 " .
	ram:7f9f 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:7fa2 be             cp (hl)              	;.
	ram:7fa3 38 ee          jr c,l7f93h          	;8 .
	ram:7fa5 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:7fa8 3d             dec a                	;=
	ram:7fa9 18 e8          jr l7f93h            	;. .
l7fabh:
	ram:7fab fe 06          cp 006h              	;. .
	ram:7fad 28 02          jr z,l7fb1h          	;( .
	ram:7faf fe 04          cp 004h              	;. .
l7fb1h:
	ram:7fb1 ca dc 46       jp z,l46dch          	;. . F
	ram:7fb4 fe 03          cp 003h              	;. .
	ram:7fb6 20 19          jr nz,l7fd1h         	;.
	ram:7fb8 cd b4 48       call sub_48b4h       	;. . H
	ram:7fbb 3a 22 8b       ld a,(08b22h)        	;: " .
	ram:7fbe fe 02          cp 002h              	;. .
	ram:7fc0 d2 71 47       jp nc,l4771h         	;. q G
	ram:7fc3 cd 11 47       call sub_4711h       	;. . G
	ram:7fc6 c4 e8 7f       call nz,sub_7fe8h    	;. . .
	ram:7fc9 3e 8c          ld a,08ch            	;> .
	ram:7fcb 32 03 80       ld (08003h),a        	;2 . .
	ram:7fce c3 61 7f       jp l7f61h            	;. a .
l7fd1h:
	ram:7fd1 fe c1          cp 0c1h              	;. .
	ram:7fd3 20 06          jr nz,l7fdbh         	;.
	ram:7fd5 cd 9b 33       call 0339bh          	;. . 3
	ram:7fd8 c3 14 7f       jp l7f14h            	;. . .
l7fdbh:
	ram:7fdb fe 9a          cp 09ah              	;. .
	ram:7fdd ca c7 47       jp z,l47c7h          	;. . G
	ram:7fe0 fe 96          cp 096h              	;. .
	ram:7fe2 ca f5 47       jp z,l47f5h          	;. . G
	ram:7fe5 c3 73 48       jp l4873h            	;. s H
sub_7fe8h:
	ram:7fe8 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7feb 32 9e 8b       ld (08b9eh),a        	;2 . .
sub_7feeh:
	ram:7fee 97             sub a                	;.
	ram:7fef 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:7ff2 cd 8b 3d       call 03d8bh          	;. . =
	ram:7ff5 cd 50 49       call sub_4950h       	;. P I
	ram:7ff8 cd a3 49       call sub_49a3h       	;. . I
	ram:7ffb c3 d8 49       jp l49d8h            	;. . I
	ram:7ffe ff             rst 38h              	;.
	ram:7fff 91             sub c                	;.
