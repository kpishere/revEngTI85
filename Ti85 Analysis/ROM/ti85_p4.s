; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p4.rom

	org 04000h

sub_4000h:
	ram:4000 cd 82 2e       call 02e82h          	;. . .
	ram:4003 cd 91 2e       call 02e91h          	;. . .
l4006h:
	ram:4006 f5             push af              	;.
	ram:4007 c5             push bc              	;.
	ram:4008 d5             push de              	;.
	ram:4009 e5             push hl              	;.
	ram:400a 0e 01          ld c,001h            	;. .
	ram:400c c5             push bc              	;.
	ram:400d dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4011 dd 39          add ix,sp            	;. 9
	ram:4013 3e 0a          ld a,00ah            	;> .
	ram:4015 f5             push af              	;.
	ram:4016 11 e2 ff       ld de,0ffe2h         	;. . .
	ram:4019 cd 44 42       call sub_4244h       	;. D B
	ram:401c c2 41 41       jp nz,l4141h         	;. A A
	ram:401f 11 f6 ff       ld de,0fff6h         	;. . .
	ram:4022 cd 44 42       call sub_4244h       	;. D B
	ram:4025 c2 37 41       jp nz,l4137h         	;. 7 A
l4028h:
	ram:4028 f1             pop af               	;.
	ram:4029 3d             dec a                	;=
	ram:402a f5             push af              	;.
	ram:402b ca 3b 42       jp z,l423bh          	;. ; B
	ram:402e 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:4031 11 e2 ff       ld de,0ffe2h         	;. . .
	ram:4034 19             add hl,de            	;.
	ram:4035 11 f6 ff       ld de,0fff6h         	;. . .
	ram:4038 cd 72 42       call sub_4272h       	;. r B
	ram:403b f5             push af              	;.
	ram:403c cd 6f 42       call sub_426fh       	;. o B
	ram:403f e1             pop hl               	;.
	ram:4040 6f             ld l,a               	;o
	ram:4041 a4             and h                	;.
	ram:4042 c2 3b 42       jp nz,l423bh         	;. ; B
	ram:4045 7c             ld a,h               	;|
	ram:4046 b5             or l                 	;.
	ram:4047 ca 2a 41       jp z,l412ah          	;. * A
	ram:404a e5             push hl              	;.
	ram:404b 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:404e 11 e2 ff       ld de,0ffe2h         	;. . .
	ram:4051 19             add hl,de            	;.
	ram:4052 22 d2 80       ld (080d2h),hl       	;" . .
	ram:4055 11 f6 ff       ld de,0fff6h         	;. . .
	ram:4058 19             add hl,de            	;.
	ram:4059 22 d0 80       ld (080d0h),hl       	;" . .
	ram:405c dd cb 00 46    bit 0,(ix+000h)      	;. . . F
	ram:4060 28 3c          jr z,l409eh          	;( <
	ram:4062 dd cb 00 86    res 0,(ix+000h)      	;. . . .
	ram:4066 cd 43 2f       call 02f43h          	;. C /
	ram:4069 cd ed 2e       call 02eedh          	;. . .
	ram:406c 06 0c          ld b,00ch            	;. .
	ram:406e cd 03 42       call sub_4203h       	;. . B
	ram:4071 cd 71 0d       call 00d71h          	;. q .
	ram:4074 cd d1 23       call 023d1h          	;. . #
	ram:4077 20 06          jr nz,l407fh         	;.
l4079h:
	ram:4079 dd cb 00 d6    set 2,(ix+000h)      	;. . . .
	ram:407d 18 1f          jr l409eh            	;. .
l407fh:
	ram:407f cd 8d 20       call 0208dh          	;. .  
	ram:4082 cd 24 2f       call 02f24h          	;. $ /
	ram:4085 cd 4d 2f       call 02f4dh          	;. M /
	ram:4088 06 03          ld b,003h            	;. .
	ram:408a cd 03 42       call sub_4203h       	;. . B
	ram:408d cd 71 0d       call 00d71h          	;. q .
	ram:4090 cd d1 23       call 023d1h          	;. . #
	ram:4093 28 e4          jr z,l4079h          	;( .
	ram:4095 cd 29 20       call 02029h          	;. )  
	ram:4098 cd 23 10       call 01023h          	;. # .
	ram:409b cd 85 20       call 02085h          	;. .  
l409eh:
	ram:409e e1             pop hl               	;.
	ram:409f dd cb 00 4e    bit 1,(ix+000h)      	;. . . N
	ram:40a3 20 08          jr nz,l40adh         	;.
	ram:40a5 af             xor a                	;.
	ram:40a6 b4             or h                 	;.
	ram:40a7 20 11          jr nz,l40bah         	;.
	ram:40a9 dd cb 00 ce    set 1,(ix+000h)      	;. . . .
l40adh:
	ram:40ad e5             push hl              	;.
	ram:40ae cd c7 2f       call 02fc7h          	;. . /
	ram:40b1 22 d2 80       ld (080d2h),hl       	;" . .
	ram:40b4 19             add hl,de            	;.
	ram:40b5 22 d0 80       ld (080d0h),hl       	;" . .
	ram:40b8 e1             pop hl               	;.
	ram:40b9 65             ld h,l               	;e
l40bah:
	ram:40ba cb 44          bit 0,h              	;. D
	ram:40bc 28 15          jr z,l40d3h          	;( .
	ram:40be 2a 71 83       ld hl,(08371h)       	;* q .
l40c1h:
	ram:40c1 22 d2 80       ld (080d2h),hl       	;" . .
	ram:40c4 dd cb 00 56    bit 2,(ix+000h)      	;. . . V
	ram:40c8 20 38          jr nz,l4102h         	;8
	ram:40ca 37             scf                  	;7
	ram:40cb cd 4e 41       call sub_414eh       	;. N A
	ram:40ce 11 82 80       ld de,08082h         	;. . .
	ram:40d1 18 33          jr l4106h            	;. 3
l40d3h:
	ram:40d3 cb 4c          bit 1,h              	;. L
	ram:40d5 28 05          jr z,l40dch          	;( .
	ram:40d7 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:40da 18 e5          jr l40c1h            	;. .
l40dch:
	ram:40dc cb 54          bit 2,h              	;. T
	ram:40de 28 06          jr z,l40e6h          	;( .
	ram:40e0 ed 5b 6b 83    ld de,(0836bh)       	;. [ k .
	ram:40e4 18 08          jr l40eeh            	;. .
l40e6h:
	ram:40e6 cb 5c          bit 3,h              	;. \
	ram:40e8 28 18          jr z,l4102h          	;( .
	ram:40ea ed 5b 69 83    ld de,(08369h)       	;. [ i .
l40eeh:
	ram:40ee dd cb 00 56    bit 2,(ix+000h)      	;. . . V
	ram:40f2 20 12          jr nz,l4106h         	;.
	ram:40f4 eb             ex de,hl             	;.
	ram:40f5 22 d0 80       ld (080d0h),hl       	;" . .
	ram:40f8 b7             or a                 	;.
	ram:40f9 cd 4e 41       call sub_414eh       	;. N A
	ram:40fc 21 82 80       ld hl,08082h         	;! . .
	ram:40ff 22 d2 80       ld (080d2h),hl       	;" . .
l4102h:
	ram:4102 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
l4106h:
	ram:4106 dd cb 00 4e    bit 1,(ix+000h)      	;. . . N
	ram:410a 20 11          jr nz,l411dh         	;.
	ram:410c cd b1 2f       call 02fb1h          	;. . /
	ram:410f ed 5b d2 80    ld de,(080d2h)       	;. [ . .
	ram:4113 cd 9f 2f       call 02f9fh          	;. . /
	ram:4116 dd cb 00 de    set 3,(ix+000h)      	;. . . .
	ram:411a c3 28 40       jp l4028h            	;. ( @
l411dh:
	ram:411d cd 86 2f       call 02f86h          	;. . /
	ram:4120 ed 5b d2 80    ld de,(080d2h)       	;. [ . .
	ram:4124 cd 6e 2f       call 02f6eh          	;. n /
	ram:4127 c3 28 40       jp l4028h            	;. ( @
l412ah:
	ram:412a cd d8 42       call sub_42d8h       	;. . B
	ram:412d c5             push bc              	;.
	ram:412e cd d8 42       call sub_42d8h       	;. . B
	ram:4131 d1             pop de               	;.
	ram:4132 cd af 6a       call sub_6aafh       	;. . j
	ram:4135 18 12          jr l4149h            	;. .
l4137h:
	ram:4137 cd 09 2e       call 02e09h          	;. . .
	ram:413a 3e 01          ld a,001h            	;> .
	ram:413c cd ba 42       call sub_42bah       	;. . B
	ram:413f 18 08          jr l4149h            	;. .
l4141h:
	ram:4141 3e 01          ld a,001h            	;> .
	ram:4143 cd ba 42       call sub_42bah       	;. . B
	ram:4146 cd 09 2e       call 02e09h          	;. . .
l4149h:
	ram:4149 e1             pop hl               	;.
	ram:414a e1             pop hl               	;.
	ram:414b c3 1e 6b       jp l6b1eh            	;. . k
sub_414eh:
	ram:414e f5             push af              	;.
	ram:414f e7             rst 20h              	;.
	ram:4150 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:4153 11 d8 ff       ld de,0ffd8h         	;. . .
	ram:4156 19             add hl,de            	;.
	ram:4157 eb             ex de,hl             	;.
	ram:4158 21 0a 00       ld hl,0000ah         	;! . .
	ram:415b 19             add hl,de            	;.
	ram:415c f1             pop af               	;.
	ram:415d f5             push af              	;.
	ram:415e 38 01          jr c,l4161h          	;8 .
	ram:4160 eb             ex de,hl             	;.
l4161h:
	ram:4161 e5             push hl              	;.
	ram:4162 01 14 00       ld bc,00014h         	;. . .
	ram:4165 09             add hl,bc            	;.
	ram:4166 23             inc hl               	;#
	ram:4167 4e             ld c,(hl)            	;N
	ram:4168 23             inc hl               	;#
	ram:4169 46             ld b,(hl)            	;F
	ram:416a 23             inc hl               	;#
	ram:416b 7e             ld a,(hl)            	;~
	ram:416c e1             pop hl               	;.
	ram:416d b7             or a                 	;.
	ram:416e 28 3d          jr z,l41adh          	;( =
	ram:4170 cd d1 23       call 023d1h          	;. . #
	ram:4173 28 3f          jr z,l41b4h          	;( ?
	ram:4175 d5             push de              	;.
	ram:4176 e5             push hl              	;.
	ram:4177 c5             push bc              	;.
	ram:4178 cd 0b 21       call 0210bh          	;. . !
	ram:417b cd d6 23       call 023d6h          	;. . #
	ram:417e 28 28          jr z,l41a8h          	;( (
	ram:4180 2a 83 80       ld hl,(08083h)       	;* . .
	ram:4183 11 0d 00       ld de,0000dh         	;. . .
	ram:4186 19             add hl,de            	;.
	ram:4187 ed 5b 8e 80    ld de,(0808eh)       	;. [ . .
	ram:418b cd 8e 00       call 0008eh          	;. . .
	ram:418e c1             pop bc               	;.
	ram:418f 30 42          jr nc,l41d3h         	;0 B
	ram:4191 b7             or a                 	;.
	ram:4192 ed 42          sbc hl,bc            	;. B
	ram:4194 e1             pop hl               	;.
	ram:4195 d1             pop de               	;.
	ram:4196 30 15          jr nc,l41adh         	;0 .
	ram:4198 f1             pop af               	;.
	ram:4199 e1             pop hl               	;.
	ram:419a dd cb 00 5e    bit 3,(ix+000h)      	;. . . ^
	ram:419e 20 a1          jr nz,l4141h         	;.
	ram:41a0 dd cb 00 4e    bit 1,(ix+000h)      	;. . . N
	ram:41a4 20 91          jr nz,l4137h         	;.
	ram:41a6 18 99          jr l4141h            	;. .
l41a8h:
	ram:41a8 c1             pop bc               	;.
l41a9h:
	ram:41a9 e1             pop hl               	;.
	ram:41aa d1             pop de               	;.
	ram:41ab 18 07          jr l41b4h            	;. .
l41adh:
	ram:41ad 01 14 00       ld bc,00014h         	;. . .
	ram:41b0 09             add hl,bc            	;.
	ram:41b1 eb             ex de,hl             	;.
	ram:41b2 09             add hl,bc            	;.
	ram:41b3 eb             ex de,hl             	;.
l41b4h:
	ram:41b4 f1             pop af               	;.
	ram:41b5 d5             push de              	;.
	ram:41b6 f5             push af              	;.
	ram:41b7 cd 0b 21       call 0210bh          	;. . !
	ram:41ba cd 71 0d       call 00d71h          	;. q .
	ram:41bd cd 49 20       call 02049h          	;. I  
	ram:41c0 f1             pop af               	;.
	ram:41c1 f5             push af              	;.
	ram:41c2 dc 23 10       call c,01023h        	;. # .
	ram:41c5 f1             pop af               	;.
	ram:41c6 d4 5b 0e       call nc,00e5bh       	;. [ .
	ram:41c9 e1             pop hl               	;.
	ram:41ca cd 3a 0d       call 00d3ah          	;. : .
	ram:41cd 21 82 80       ld hl,08082h         	;! . .
	ram:41d0 c3 52 42       jp l4252h            	;. R B
l41d3h:
	ram:41d3 ed 42          sbc hl,bc            	;. B
	ram:41d5 38 d2          jr c,l41a9h          	;8 .
	ram:41d7 01 0d 00       ld bc,0000dh         	;. . .
	ram:41da ed 42          sbc hl,bc            	;. B
	ram:41dc 30 07          jr nc,l41e5h         	;0 .
	ram:41de eb             ex de,hl             	;.
	ram:41df 21 00 00       ld hl,00000h         	;! . .
	ram:41e2 b7             or a                 	;.
	ram:41e3 ed 52          sbc hl,de            	;. R
l41e5h:
	ram:41e5 44             ld b,h               	;D
	ram:41e6 4d             ld c,l               	;M
	ram:41e7 2a 83 80       ld hl,(08083h)       	;* . .
	ram:41ea ed 5b 8e 80    ld de,(0808eh)       	;. [ . .
	ram:41ee b7             or a                 	;.
	ram:41ef ed 52          sbc hl,de            	;. R
	ram:41f1 30 07          jr nc,l41fah         	;0 .
	ram:41f3 eb             ex de,hl             	;.
	ram:41f4 21 00 00       ld hl,00000h         	;! . .
	ram:41f7 b7             or a                 	;.
	ram:41f8 ed 52          sbc hl,de            	;. R
l41fah:
	ram:41fa b7             or a                 	;.
	ram:41fb ed 42          sbc hl,bc            	;. B
	ram:41fd e1             pop hl               	;.
	ram:41fe d1             pop de               	;.
	ram:41ff 38 b3          jr c,l41b4h          	;8 .
	ram:4201 18 aa          jr l41adh            	;. .
sub_4203h:
	ram:4203 cd d1 23       call 023d1h          	;. . #
	ram:4206 c8             ret z                	;.
	ram:4207 cd d6 23       call 023d6h          	;. . #
	ram:420a c8             ret z                	;.
	ram:420b 2a 83 80       ld hl,(08083h)       	;* . .
	ram:420e ed 5b 8e 80    ld de,(0808eh)       	;. [ . .
	ram:4212 b7             or a                 	;.
	ram:4213 ed 52          sbc hl,de            	;. R
	ram:4215 38 1a          jr c,l4231h          	;8 .
	ram:4217 11 0c 00       ld de,0000ch         	;. . .
	ram:421a ed 52          sbc hl,de            	;. R
	ram:421c d8             ret c                	;.
l421dh:
	ram:421d e1             pop hl               	;.
	ram:421e d1             pop de               	;.
	ram:421f f5             push af              	;.
	ram:4220 7a             ld a,d               	;z
	ram:4221 a0             and b                	;.
	ram:4222 28 04          jr z,l4228h          	;( .
	ram:4224 7b             ld a,e               	;{
	ram:4225 a0             and b                	;.
	ram:4226 20 12          jr nz,l423ah         	;.
l4228h:
	ram:4228 f1             pop af               	;.
	ram:4229 d5             push de              	;.
	ram:422a e5             push hl              	;.
	ram:422b d2 93 21       jp nc,02193h         	;. . !
	ram:422e c3 98 21       jp 02198h            	;. . !
l4231h:
	ram:4231 11 f5 ff       ld de,0fff5h         	;. . .
	ram:4234 b7             or a                 	;.
	ram:4235 ed 52          sbc hl,de            	;. R
	ram:4237 d0             ret nc               	;.
	ram:4238 18 e3          jr l421dh            	;. .
l423ah:
	ram:423a f1             pop af               	;.
l423bh:
	ram:423b 11 28 00       ld de,00028h         	;. ( .
	ram:423e cd 1b 2e       call 02e1bh          	;. . .
	ram:4241 c3 49 41       jp l4149h            	;. I A
sub_4244h:
	ram:4244 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:4247 19             add hl,de            	;.
	ram:4248 e5             push hl              	;.
	ram:4249 cd 52 42       call l4252h          	;. R B
	ram:424c e1             pop hl               	;.
	ram:424d c0             ret nz               	;.
	ram:424e 11 f6 ff       ld de,0fff6h         	;. . .
	ram:4251 19             add hl,de            	;.
l4252h:
	ram:4252 cb 6e          bit 5,(hl)           	;. n
	ram:4254 c0             ret nz               	;.
	ram:4255 e5             push hl              	;.
	ram:4256 e7             rst 20h              	;.
	ram:4257 cd e0 11       call 011e0h          	;. . .
	ram:425a ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:425e 21 18 00       ld hl,00018h         	;! . .
	ram:4261 19             add hl,de            	;.
	ram:4262 38 06          jr c,l426ah          	;8 .
	ram:4264 d1             pop de               	;.
	ram:4265 cd 11 21       call 02111h          	;. . !
	ram:4268 af             xor a                	;.
	ram:4269 c9             ret                  	;.
l426ah:
	ram:426a e1             pop hl               	;.
	ram:426b cb ee          set 5,(hl)           	;. .
	ram:426d 24             inc h                	;$
	ram:426e c9             ret                  	;.
sub_426fh:
	ram:426f cd c7 2f       call 02fc7h          	;. . /
sub_4272h:
	ram:4272 eb             ex de,hl             	;.
	ram:4273 19             add hl,de            	;.
	ram:4274 eb             ex de,hl             	;.
sub_4275h:
	ram:4275 d5             push de              	;.
	ram:4276 e5             push hl              	;.
	ram:4277 eb             ex de,hl             	;.
	ram:4278 af             xor a                	;.
	ram:4279 ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:427d cd 8e 42       call sub_428eh       	;. . B
	ram:4280 cb 27          sla a                	;. '
	ram:4282 cb 27          sla a                	;. '
	ram:4284 ed 5b 6f 83    ld de,(0836fh)       	;. [ o .
	ram:4288 e1             pop hl               	;.
	ram:4289 cd 8e 42       call sub_428eh       	;. . B
	ram:428c d1             pop de               	;.
	ram:428d c9             ret                  	;.
sub_428eh:
	ram:428e e5             push hl              	;.
	ram:428f f5             push af              	;.
	ram:4290 d5             push de              	;.
	ram:4291 e7             rst 20h              	;.
	ram:4292 e1             pop hl               	;.
	ram:4293 13             inc de               	;.
	ram:4294 cd 9d 20       call 0209dh          	;. .  
	ram:4297 e5             push hl              	;.
	ram:4298 cd 8e 1f       call 01f8eh          	;. . .
	ram:429b 30 06          jr nc,l42a3h         	;0 .
	ram:429d e1             pop hl               	;.
	ram:429e f1             pop af               	;.
	ram:429f f6 02          or 002h              	;. .
	ram:42a1 18 0e          jr l42b1h            	;. .
l42a3h:
	ram:42a3 cf             rst 8                	;.
	ram:42a4 e1             pop hl               	;.
	ram:42a5 e7             rst 20h              	;.
	ram:42a6 cd 8e 1f       call 01f8eh          	;. . .
	ram:42a9 30 05          jr nc,l42b0h         	;0 .
	ram:42ab f1             pop af               	;.
	ram:42ac f6 01          or 001h              	;. .
	ram:42ae 18 01          jr l42b1h            	;. .
l42b0h:
	ram:42b0 f1             pop af               	;.
l42b1h:
	ram:42b1 e1             pop hl               	;.
	ram:42b2 c9             ret                  	;.
sub_42b3h:
	ram:42b3 3e 01          ld a,001h            	;> .
	ram:42b5 f5             push af              	;.
	ram:42b6 cd 91 2e       call 02e91h          	;. . .
	ram:42b9 f1             pop af               	;.
sub_42bah:
	ram:42ba f5             push af              	;.
	ram:42bb 11 f6 ff       ld de,0fff6h         	;. . .
	ram:42be cd 44 42       call sub_4244h       	;. D B
	ram:42c1 20 11          jr nz,l42d4h         	;.
	ram:42c3 cd 6f 42       call sub_426fh       	;. o B
	ram:42c6 e6 0f          and 00fh             	;. .
	ram:42c8 20 0a          jr nz,l42d4h         	;.
	ram:42ca cd e4 42       call sub_42e4h       	;. . B
	ram:42cd d1             pop de               	;.
	ram:42ce cd 25 6b       call sub_6b25h       	;. % k
	ram:42d1 c3 09 2e       jp 02e09h            	;. . .
l42d4h:
	ram:42d4 e1             pop hl               	;.
	ram:42d5 c3 09 2e       jp 02e09h            	;. . .
sub_42d8h:
	ram:42d8 cd db 2d       call 02ddbh          	;. . -
	ram:42db cd e0 2d       call 02de0h          	;. . -
	ram:42de 11 ae 80       ld de,080aeh         	;. . .
	ram:42e1 21 b9 80       ld hl,080b9h         	;! . .
sub_42e4h:
	ram:42e4 e5             push hl              	;.
	ram:42e5 cd 4d 43       call sub_434dh       	;. M C
	ram:42e8 d1             pop de               	;.
	ram:42e9 f5             push af              	;.
	ram:42ea cd 40 43       call sub_4340h       	;. @ C
	ram:42ed c1             pop bc               	;.
	ram:42ee 4f             ld c,a               	;O
	ram:42ef c9             ret                  	;.
sub_42f0h:
	ram:42f0 21 a3 80       ld hl,080a3h         	;! . .
sub_42f3h:
	ram:42f3 11 82 80       ld de,08082h         	;. . .
sub_42f6h:
	ram:42f6 d5             push de              	;.
	ram:42f7 c5             push bc              	;.
	ram:42f8 79             ld a,c               	;y
	ram:42f9 cd 0a 43       call sub_430ah       	;. . C
	ram:42fc f1             pop af               	;.
	ram:42fd e1             pop hl               	;.
sub_42feh:
	ram:42fe 01 78 83       ld bc,08378h         	;. x .
	ram:4301 11 38 84       ld de,08438h         	;. 8 .
	ram:4304 e5             push hl              	;.
	ram:4305 6f             ld l,a               	;o
	ram:4306 3e ff          ld a,0ffh            	;> .
	ram:4308 18 0a          jr l4314h            	;. .
sub_430ah:
	ram:430a ed 4b 6f 83    ld bc,(0836fh)       	;. K o .
	ram:430e 11 42 84       ld de,08442h         	;. B .
	ram:4311 3d             dec a                	;=
	ram:4312 e5             push hl              	;.
	ram:4313 6f             ld l,a               	;o
l4314h:
	ram:4314 26 00          ld h,000h            	;& .
l4316h:
	ram:4316 c5             push bc              	;.
	ram:4317 f5             push af              	;.
	ram:4318 d5             push de              	;.
	ram:4319 cd 87 66       call sub_6687h       	;. . f
	ram:431c e1             pop hl               	;.
	ram:431d f1             pop af               	;.
	ram:431e 3c             inc a                	;<
	ram:431f 20 08          jr nz,l4329h         	;.
	ram:4321 e5             push hl              	;.
	ram:4322 21 82 83       ld hl,08382h         	;! . .
	ram:4325 e7             rst 20h              	;.
	ram:4326 f7             rst 30h              	;.
	ram:4327 cf             rst 8                	;.
	ram:4328 e1             pop hl               	;.
l4329h:
	ram:4329 e7             rst 20h              	;.
	ram:432a ef             rst 28h              	;.
	ram:432b cd e0 11       call 011e0h          	;. . .
	ram:432e e1             pop hl               	;.
	ram:432f cd 3a 0d       call 00d3ah          	;. : .
	ram:4332 cd 9b 25       call 0259bh          	;. . %
	ram:4335 d1             pop de               	;.
	ram:4336 c3 11 21       jp 02111h            	;. . !
sub_4339h:
	ram:4339 e5             push hl              	;.
	ram:433a 2a 75 83       ld hl,(08375h)       	;* u .
	ram:433d af             xor a                	;.
	ram:433e 18 d6          jr l4316h            	;. .
sub_4340h:
	ram:4340 ed 4b 6f 83    ld bc,(0836fh)       	;. K o .
	ram:4344 21 56 84       ld hl,08456h         	;! V .
	ram:4347 b7             or a                 	;.
	ram:4348 cd 54 43       call sub_4354h       	;. T C
	ram:434b 3c             inc a                	;<
	ram:434c c9             ret                  	;.
sub_434dh:
	ram:434d 01 78 83       ld bc,08378h         	;. x .
	ram:4350 21 4c 84       ld hl,0844ch         	;! L .
	ram:4353 37             scf                  	;7
sub_4354h:
	ram:4354 f5             push af              	;.
	ram:4355 e5             push hl              	;.
	ram:4356 c5             push bc              	;.
	ram:4357 eb             ex de,hl             	;.
	ram:4358 e7             rst 20h              	;.
	ram:4359 e1             pop hl               	;.
	ram:435a cd 0b 21       call 0210bh          	;. . !
	ram:435d cd 71 0d       call 00d71h          	;. q .
	ram:4360 e1             pop hl               	;.
	ram:4361 cd 55 0e       call 00e55h          	;. U .
	ram:4364 f1             pop af               	;.
	ram:4365 30 09          jr nc,l4370h         	;0 .
	ram:4367 21 82 83       ld hl,08382h         	;! . .
	ram:436a cd 0b 21       call 0210bh          	;. . !
	ram:436d cd 71 0d       call 00d71h          	;. q .
l4370h:
	ram:4370 cd 77 43       call sub_4377h       	;. w C
	ram:4373 cd 95 39       call 03995h          	;. . 9
	ram:4376 c9             ret                  	;.
sub_4377h:
	ram:4377 2a 83 80       ld hl,(08083h)       	;* . .
	ram:437a 11 ff fb       ld de,0fbffh         	;. . .
	ram:437d b7             or a                 	;.
	ram:437e ed 52          sbc hl,de            	;. R
	ram:4380 38 2a          jr c,l43ach          	;8 *
	ram:4382 28 21          jr z,l43a5h          	;( !
	ram:4384 7d             ld a,l               	;}
	ram:4385 06 02          ld b,002h            	;. .
	ram:4387 21 86 80       ld hl,08086h         	;! . .
	ram:438a fe 02          cp 002h              	;. .
	ram:438c 3e 50          ld a,050h            	;> P
	ram:438e 28 06          jr z,l4396h          	;( .
	ram:4390 3e 05          ld a,005h            	;> .
	ram:4392 30 02          jr nc,l4396h         	;0 .
	ram:4394 05             dec b                	;.
	ram:4395 2b             dec hl               	;+
l4396h:
	ram:4396 cd 8a 22       call 0228ah          	;. . "
	ram:4399 d0             ret nc               	;.
l439ah:
	ram:439a 21 85 80       ld hl,08085h         	;! . .
	ram:439d 36 10          ld (hl),010h         	;6 .
	ram:439f 23             inc hl               	;#
	ram:43a0 36 00          ld (hl),000h         	;6 .
	ram:43a2 c3 90 25       jp 02590h            	;. . %
l43a5h:
	ram:43a5 3a 85 80       ld a,(08085h)        	;: . .
	ram:43a8 fe 50          cp 050h              	;. P
	ram:43aa 30 ee          jr nc,l439ah         	;0 .
l43ach:
	ram:43ac c3 98 21       jp 02198h            	;. . !
sub_43afh:
	ram:43af fd cb 02 8e    res 1,(iy+002h)      	;. . . .
	ram:43b3 fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:43b7 c4 62 6c       call nz,sub_6c62h    	;. b l
	ram:43ba fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:43be 28 09          jr z,l43c9h          	;( .
	ram:43c0 fd cb 02 56    bit 2,(iy+002h)      	;. . . V
	ram:43c4 20 06          jr nz,l43cch         	;.
	ram:43c6 cd c3 3e       call 03ec3h          	;. . >
l43c9h:
	ram:43c9 cd f8 66       call sub_66f8h       	;. . f
l43cch:
	ram:43cc cd bd 5e       call sub_5ebdh       	;. . ^
	ram:43cf c9             ret                  	;.
sub_43d0h:
	ram:43d0 21 28 00       ld hl,00028h         	;! ( .
	ram:43d3 cd 28 2e       call 02e28h          	;. ( .
	ram:43d6 b7             or a                 	;.
	ram:43d7 ed 52          sbc hl,de            	;. R
	ram:43d9 eb             ex de,hl             	;.
	ram:43da cd 11 21       call 02111h          	;. . !
	ram:43dd 2a 71 83       ld hl,(08371h)       	;* q .
	ram:43e0 cd 9d 20       call 0209dh          	;. .  
	ram:43e3 cd 11 21       call 02111h          	;. . !
	ram:43e6 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:43e9 cd 9d 20       call 0209dh          	;. .  
	ram:43ec cd af 43       call sub_43afh       	;. . C
	ram:43ef cd 75 00       call 00075h          	;. u .
	ram:43f2 ca 06 40       jp z,l4006h          	;. . @
	ram:43f5 11 28 00       ld de,00028h         	;. ( .
	ram:43f8 c3 1b 2e       jp 02e1bh            	;. . .
	ram:43fb f5             push af              	;.
	ram:43fc cd af 43       call sub_43afh       	;. . C
	ram:43ff f1             pop af               	;.
	ram:4400 c3 ba 42       jp sub_42bah         	;. . B
sub_4403h:
	ram:4403 cd 17 6c       call sub_6c17h       	;. . l
	ram:4406 cd 7a 00       call 0007ah          	;. z .
	ram:4409 ca 93 44       jp z,l4493h          	;. . D
	ram:440c cd 4a 2e       call 02e4ah          	;. J .
	ram:440f cd 89 36       call 03689h          	;. . 6
	ram:4412 cf             rst 8                	;.
	ram:4413 cd 24 2f       call 02f24h          	;. $ /
	ram:4416 cd 61 2f       call 02f61h          	;. a /
	ram:4419 cd d5 38       call 038d5h          	;. . 8
	ram:441c cd 47 1f       call 01f47h          	;. G .
	ram:441f c2 14 0a       jp nz,00a14h         	;. . .
l4422h:
	ram:4422 cf             rst 8                	;.
	ram:4423 cd 8f 36       call 0368fh          	;. . 6
	ram:4426 ef             rst 28h              	;.
	ram:4427 cd 1a 2f       call 02f1ah          	;. . /
	ram:442a cd 61 2f       call 02f61h          	;. a /
	ram:442d cd 19 20       call 02019h          	;. .  
	ram:4430 cd 61 0d       call 00d61h          	;. a .
l4433h:
	ram:4433 df             rst 18h              	;.
	ram:4434 3e 16          ld a,016h            	;> .
	ram:4436 cd 97 37       call 03797h          	;. . 7
	ram:4439 c5             push bc              	;.
	ram:443a cd 43 2f       call 02f43h          	;. C /
	ram:443d 3e 16          ld a,016h            	;> .
	ram:443f cd 97 37       call 03797h          	;. . 7
	ram:4442 e1             pop hl               	;.
	ram:4443 09             add hl,bc            	;.
	ram:4444 01 09 00       ld bc,00009h         	;. . .
	ram:4447 09             add hl,bc            	;.
	ram:4448 cd 29 61       call sub_6129h       	;. ) a
	ram:444b ed 53 eb 85    ld (085ebh),de       	;. S . .
	ram:444f cd 3b 2e       call 02e3bh          	;. ; .
	ram:4452 cd 52 2f       call 02f52h          	;. R /
	ram:4455 3e 16          ld a,016h            	;> .
	ram:4457 cd 97 37       call 03797h          	;. . 7
	ram:445a ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:445e cd f1 37       call 037f1h          	;. . 7
	ram:4461 cd eb 37       call 037ebh          	;. . 7
	ram:4464 3e 60          ld a,060h            	;> `
	ram:4466 12             ld (de),a            	;.
	ram:4467 13             inc de               	;.
	ram:4468 d5             push de              	;.
	ram:4469 cd 43 2f       call 02f43h          	;. C /
	ram:446c 3e 16          ld a,016h            	;> .
	ram:446e cd 97 37       call 03797h          	;. . 7
	ram:4471 d1             pop de               	;.
	ram:4472 cd f1 37       call 037f1h          	;. . 7
	ram:4475 cd ef 2d       call 02defh          	;. . -
	ram:4478 cd 0c 2e       call 02e0ch          	;. . .
	ram:447b cd f4 2d       call 02df4h          	;. . -
	ram:447e cd 51 4f       call sub_4f51h       	;. Q O
	ram:4481 cd 91 2e       call 02e91h          	;. . .
	ram:4484 cd 0d 45       call sub_450dh       	;. . E
	ram:4487 cd f4 2d       call 02df4h          	;. . -
	ram:448a cd 60 26       call 02660h          	;. ` &
	ram:448d cd f4 2d       call 02df4h          	;. . -
	ram:4490 c3 96 48       jp l4896h            	;. . H
l4493h:
	ram:4493 cd 84 00       call 00084h          	;. . .
	ram:4496 28 3b          jr z,l44d3h          	;( ;
	ram:4498 cd e1 38       call 038e1h          	;. . 8
	ram:449b df             rst 18h              	;.
	ram:449c cd 17 6c       call sub_6c17h       	;. . l
	ram:449f 3e 79          ld a,079h            	;> y
	ram:44a1 32 84 80       ld (08084h),a        	;2 . .
	ram:44a4 cd e1 38       call 038e1h          	;. . 8
	ram:44a7 cd ef 2d       call 02defh          	;. . -
	ram:44aa cd d6 23       call 023d6h          	;. . #
	ram:44ad 28 10          jr z,l44bfh          	;( .
	ram:44af cd 23 10       call 01023h          	;. # .
	ram:44b2 cd 85 20       call 02085h          	;. .  
	ram:44b5 cd 89 36       call 03689h          	;. . 6
	ram:44b8 df             rst 18h              	;.
	ram:44b9 cd 51 20       call 02051h          	;. Q  
	ram:44bc c3 22 44       jp l4422h            	;. " D
l44bfh:
	ram:44bf cd d1 23       call 023d1h          	;. . #
	ram:44c2 ca 14 0a       jp z,00a14h          	;. . .
	ram:44c5 cd 8f 36       call 0368fh          	;. . 6
	ram:44c8 cd d0 43       call sub_43d0h       	;. . C
	ram:44cb 3e ff          ld a,0ffh            	;> .
	ram:44cd 32 82 80       ld (08082h),a        	;2 . .
	ram:44d0 c3 96 48       jp l4896h            	;. . H
l44d3h:
	ram:44d3 cd e7 38       call 038e7h          	;. . 8
	ram:44d6 cd d6 23       call 023d6h          	;. . #
	ram:44d9 28 e4          jr z,l44bfh          	;( .
	ram:44db cd 23 10       call 01023h          	;. # .
	ram:44de df             rst 18h              	;.
	ram:44df cd 3d 26       call 0263dh          	;. = &
	ram:44e2 cd c1 3a       call 03ac1h          	;. . :
	ram:44e5 cd 69 16       call 01669h          	;. i .
	ram:44e8 cd 8d 20       call 0208dh          	;. .  
	ram:44eb cd 9b 20       call 0209bh          	;. .  
	ram:44ee cd 43 26       call 02643h          	;. C &
	ram:44f1 cd c1 3a       call 03ac1h          	;. . :
	ram:44f4 cf             rst 8                	;.
	ram:44f5 cd 5b 20       call 0205bh          	;. [  
	ram:44f8 ef             rst 28h              	;.
	ram:44f9 cd 8d 20       call 0208dh          	;. .  
	ram:44fc cd 51 20       call 02051h          	;. Q  
	ram:44ff ef             rst 28h              	;.
	ram:4500 cd 1f 2f       call 02f1fh          	;. . /
	ram:4503 ef             rst 28h              	;.
	ram:4504 cd 29 20       call 02029h          	;. )  
	ram:4507 cd 61 0d       call 00d61h          	;. a .
	ram:450a c3 33 44       jp l4433h            	;. 3 D
sub_450dh:
	ram:450d cd af 43       call sub_43afh       	;. . C
	ram:4510 cd 4a 4a       call sub_4a4ah       	;. J J
	ram:4513 fd cb 03 de    set 3,(iy+003h)      	;. . . .
	ram:4517 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:451a e5             push hl              	;.
	ram:451b cd 67 75       call sub_7567h       	;. g u
	ram:451e af             xor a                	;.
	ram:451f 32 75 83       ld (08375h),a        	;2 u .
	ram:4522 2a 69 83       ld hl,(08369h)       	;* i .
	ram:4525 e7             rst 20h              	;.
	ram:4526 cd 91 2e       call 02e91h          	;. . .
	ram:4529 cd 53 36       call 03653h          	;. S 6
	ram:452c 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:452f 22 eb 85       ld (085ebh),hl       	;" . .
	ram:4532 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l4536h:
	ram:4536 cd 52 2f       call 02f52h          	;. R /
	ram:4539 cd e1 35       call 035e1h          	;. . 5
	ram:453c fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:4540 28 07          jr z,l4549h          	;( .
	ram:4542 cd 6b 2f       call 02f6bh          	;. k /
	ram:4545 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
l4549h:
	ram:4549 cd bc 73       call sub_73bch       	;. . s
	ram:454c cd e6 73       call sub_73e6h       	;. . s
	ram:454f cd 68 45       call sub_4568h       	;. h E
	ram:4552 cd 7f 72       call sub_727fh       	;. . r
	ram:4555 3a 75 83       ld a,(08375h)        	;: u .
	ram:4558 3c             inc a                	;<
	ram:4559 fe 7f          cp 07fh              	;. .
	ram:455b 30 10          jr nc,l456dh         	;0 .
	ram:455d 32 75 83       ld (08375h),a        	;2 u .
	ram:4560 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4563 cd fe 42       call sub_42feh       	;. . B
	ram:4566 18 ce          jr l4536h            	;. .
sub_4568h:
	ram:4568 cd 75 00       call 00075h          	;. u .
	ram:456b c8             ret z                	;.
	ram:456c e1             pop hl               	;.
l456dh:
	ram:456d fd cb 03 9e    res 3,(iy+003h)      	;. . . .
	ram:4571 cd 09 2e       call 02e09h          	;. . .
	ram:4574 e1             pop hl               	;.
	ram:4575 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:4578 c3 51 4f       jp sub_4f51h         	;. Q O
	ram:457b cd af 43       call sub_43afh       	;. . C
	ram:457e cd 4a 4a       call sub_4a4ah       	;. J J
	ram:4581 fd cb 03 de    set 3,(iy+003h)      	;. . . .
	ram:4585 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4588 e5             push hl              	;.
	ram:4589 cd 67 75       call sub_7567h       	;. g u
	ram:458c af             xor a                	;.
	ram:458d 32 75 83       ld (08375h),a        	;2 u .
	ram:4590 2a 69 83       ld hl,(08369h)       	;* i .
	ram:4593 e7             rst 20h              	;.
	ram:4594 cd 91 2e       call 02e91h          	;. . .
	ram:4597 cd 4a 2e       call 02e4ah          	;. J .
	ram:459a cd 53 36       call 03653h          	;. S 6
	ram:459d 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:45a0 22 eb 85       ld (085ebh),hl       	;" . .
	ram:45a3 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l45a7h:
	ram:45a7 11 82 80       ld de,08082h         	;. . .
	ram:45aa 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:45ad 0e 46          ld c,046h            	;. F
	ram:45af cd 2c 2f       call 02f2ch          	;. , /
	ram:45b2 cd e1 35       call 035e1h          	;. . 5
	ram:45b5 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:45b9 c4 83 2f       call nz,02f83h       	;. . /
	ram:45bc 11 98 80       ld de,08098h         	;. . .
	ram:45bf cd 55 2f       call 02f55h          	;. U /
	ram:45c2 13             inc de               	;.
	ram:45c3 cd 9d 20       call 0209dh          	;. .  
	ram:45c6 cf             rst 8                	;.
	ram:45c7 cd 83 2f       call 02f83h          	;. . /
	ram:45ca 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:45cd e7             rst 20h              	;.
	ram:45ce cd f8 73       call sub_73f8h       	;. . s
	ram:45d1 cd d4 2e       call 02ed4h          	;. . .
	ram:45d4 cd e1 35       call 035e1h          	;. . 5
	ram:45d7 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:45db c4 6b 2f       call nz,02f6bh       	;. k /
	ram:45de fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:45e2 cd bc 73       call sub_73bch       	;. . s
	ram:45e5 11 98 80       ld de,08098h         	;. . .
	ram:45e8 cd 55 2f       call 02f55h          	;. U /
	ram:45eb 11 a3 80       ld de,080a3h         	;. . .
	ram:45ee cd 27 2f       call 02f27h          	;. ' /
	ram:45f1 cf             rst 8                	;.
	ram:45f2 cd 6b 2f       call 02f6bh          	;. k /
	ram:45f5 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:45f8 e7             rst 20h              	;.
	ram:45f9 cd 9c 2f       call 02f9ch          	;. . /
	ram:45fc cd f8 73       call sub_73f8h       	;. . s
	ram:45ff cd 75 00       call 00075h          	;. u .
	ram:4602 20 4f          jr nz,l4653h         	;O
	ram:4604 cd 7f 72       call sub_727fh       	;. . r
	ram:4607 cd 40 2f       call 02f40h          	;. @ /
	ram:460a cd 8e 1f       call 01f8eh          	;. . .
	ram:460d 30 30          jr nc,l463fh         	;0 0
	ram:460f 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4612 11 98 80       ld de,08098h         	;. . .
	ram:4615 cd 9d 20       call 0209dh          	;. .  
	ram:4618 21 98 80       ld hl,08098h         	;! . .
	ram:461b cd 52 42       call l4252h          	;. R B
	ram:461e 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:4621 11 ce ff       ld de,0ffceh         	;. . .
	ram:4624 19             add hl,de            	;.
	ram:4625 eb             ex de,hl             	;.
	ram:4626 21 98 80       ld hl,08098h         	;! . .
	ram:4629 af             xor a                	;.
	ram:462a cd 8e 42       call sub_428eh       	;. . B
	ram:462d b7             or a                 	;.
	ram:462e 20 0f          jr nz,l463fh         	;.
	ram:4630 cd 60 20       call 02060h          	;. `  
	ram:4633 11 a3 80       ld de,080a3h         	;. . .
	ram:4636 cd 27 2f       call 02f27h          	;. ' /
	ram:4639 cd 3b 2f       call 02f3bh          	;. ; /
	ram:463c cd 00 40       call sub_4000h       	;. . @
l463fh:
	ram:463f 3a 75 83       ld a,(08375h)        	;: u .
	ram:4642 3c             inc a                	;<
	ram:4643 fe 7f          cp 07fh              	;. .
	ram:4645 30 0c          jr nc,l4653h         	;0 .
	ram:4647 32 75 83       ld (08375h),a        	;2 u .
	ram:464a 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:464d cd fe 42       call sub_42feh       	;. . B
	ram:4650 c3 a7 45       jp l45a7h            	;. . E
l4653h:
	ram:4653 cd 0c 2e       call 02e0ch          	;. . .
	ram:4656 c3 6d 45       jp l456dh            	;. m E
	ram:4659 cd 7a 00       call 0007ah          	;. z .
	ram:465c ca 24 0a       jp z,00a24h          	;. $ .
	ram:465f cd fc 61       call sub_61fch       	;. . a
	ram:4662 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:4665 ed 5b 43 84    ld de,(08443h)       	;. [ C .
	ram:4669 cd 6f 62       call sub_626fh       	;. o b
	ram:466c cd af 43       call sub_43afh       	;. . C
	ram:466f cd 4a 4a       call sub_4a4ah       	;. J J
	ram:4672 fd cb 03 de    set 3,(iy+003h)      	;. . . .
	ram:4676 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4679 e5             push hl              	;.
	ram:467a cd 67 75       call sub_7567h       	;. g u
	ram:467d af             xor a                	;.
	ram:467e 32 75 83       ld (08375h),a        	;2 u .
	ram:4681 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:4684 e7             rst 20h              	;.
	ram:4685 cf             rst 8                	;.
	ram:4686 cd 91 2e       call 02e91h          	;. . .
	ram:4689 cd 53 36       call 03653h          	;. S 6
	ram:468c 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:468f 22 eb 85       ld (085ebh),hl       	;" . .
	ram:4692 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l4696h:
	ram:4696 cd 52 2f       call 02f52h          	;. R /
	ram:4699 cd e1 35       call 035e1h          	;. . 5
	ram:469c fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:46a0 28 07          jr z,l46a9h          	;( .
	ram:46a2 cd 83 2f       call 02f83h          	;. . /
	ram:46a5 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
l46a9h:
	ram:46a9 cd bc 73       call sub_73bch       	;. . s
	ram:46ac 11 98 80       ld de,08098h         	;. . .
	ram:46af cd 46 2f       call 02f46h          	;. F /
	ram:46b2 13             inc de               	;.
	ram:46b3 cd 9d 20       call 0209dh          	;. .  
	ram:46b6 cd 83 2f       call 02f83h          	;. . /
	ram:46b9 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:46bc cd 0b 21       call 0210bh          	;. . !
	ram:46bf cd 61 2f       call 02f61h          	;. a /
	ram:46c2 cd f8 73       call sub_73f8h       	;. . s
	ram:46c5 cd 68 45       call sub_4568h       	;. h E
	ram:46c8 cd 7f 72       call sub_727fh       	;. . r
	ram:46cb 3a 75 83       ld a,(08375h)        	;: u .
	ram:46ce 3c             inc a                	;<
	ram:46cf fe 40          cp 040h              	;. @
	ram:46d1 d2 6d 45       jp nc,l456dh         	;. m E
	ram:46d4 32 75 83       ld (08375h),a        	;2 u .
	ram:46d7 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:46da cd 0a 43       call sub_430ah       	;. . C
	ram:46dd 18 b7          jr l4696h            	;. .
	ram:46df cd af 43       call sub_43afh       	;. . C
	ram:46e2 cd 4a 4a       call sub_4a4ah       	;. J J
	ram:46e5 cd eb 46       call sub_46ebh       	;. . F
	ram:46e8 c3 51 4f       jp sub_4f51h         	;. Q O
sub_46ebh:
	ram:46eb 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:46ee 22 eb 85       ld (085ebh),hl       	;" . .
	ram:46f1 cd 98 21       call 02198h          	;. . !
	ram:46f4 df             rst 18h              	;.
	ram:46f5 3e 60          ld a,060h            	;> `
	ram:46f7 32 85 80       ld (08085h),a        	;2 . .
	ram:46fa fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:46fe cc 3b 0e       call z,00e3bh        	;. ; .
	ram:4701 df             rst 18h              	;.
	ram:4702 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
	ram:4706 06 3d          ld b,03dh            	;. =
l4708h:
	ram:4708 c5             push bc              	;.
	ram:4709 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:470c 11 f6 ff       ld de,0fff6h         	;. . .
	ram:470f 19             add hl,de            	;.
	ram:4710 e7             rst 20h              	;.
	ram:4711 13             inc de               	;.
	ram:4712 cd 9d 20       call 0209dh          	;. .  
	ram:4715 21 82 47       ld hl,l4782h         	;! . G
	ram:4718 cd b5 0a       call 00ab5h          	;. . .
	ram:471b cd 8b 1e       call 01e8bh          	;. . .
	ram:471e cd f5 1f       call 01ff5h          	;. . .
	ram:4721 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4724 11 ec ff       ld de,0ffech         	;. . .
	ram:4727 19             add hl,de            	;.
	ram:4728 e7             rst 20h              	;.
	ram:4729 f7             rst 30h              	;.
	ram:472a cd 07 20       call 02007h          	;. .  
	ram:472d cd f5 1f       call 01ff5h          	;. . .
	ram:4730 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4733 11 e2 ff       ld de,0ffe2h         	;. . .
	ram:4736 19             add hl,de            	;.
	ram:4737 e7             rst 20h              	;.
	ram:4738 f7             rst 30h              	;.
	ram:4739 cd 07 20       call 02007h          	;. .  
	ram:473c cd db 0a       call 00adbh          	;. . .
l473fh:
	ram:473f fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:4743 28 09          jr z,l474eh          	;( .
	ram:4745 cd 91 2e       call 02e91h          	;. . .
	ram:4748 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:474c 18 16          jr l4764h            	;. .
l474eh:
	ram:474e 11 98 80       ld de,08098h         	;. . .
	ram:4751 cd 46 2f       call 02f46h          	;. F /
	ram:4754 13             inc de               	;.
	ram:4755 cd 9d 20       call 0209dh          	;. .  
	ram:4758 cd 83 2f       call 02f83h          	;. . /
	ram:475b 11 8d 80       ld de,0808dh         	;. . .
	ram:475e cd 6e 2f       call 02f6eh          	;. n /
	ram:4761 cd 00 40       call sub_4000h       	;. . @
l4764h:
	ram:4764 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4767 e7             rst 20h              	;.
	ram:4768 13             inc de               	;.
	ram:4769 cd 9d 20       call 0209dh          	;. .  
	ram:476c f7             rst 30h              	;.
	ram:476d ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:4771 cd 11 21       call 02111h          	;. . !
	ram:4774 c1             pop bc               	;.
	ram:4775 cd 75 00       call 00075h          	;. u .
	ram:4778 20 02          jr nz,l477ch         	;.
	ram:477a 10 8c          djnz l4708h          	;. .
l477ch:
	ram:477c 11 46 00       ld de,00046h         	;. F .
	ram:477f c3 1b 2e       jp 02e1bh            	;. . .
l4782h:
	ram:4782 3e 20          ld a,020h            	;>  
	ram:4784 32 82 80       ld (08082h),a        	;2 . .
	ram:4787 32 8d 80       ld (0808dh),a        	;2 . .
	ram:478a 18 b3          jr l473fh            	;. .
sub_478ch:
	ram:478c 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:478f 22 98 8b       ld (08b98h),hl       	;" . .
	ram:4792 21 64 00       ld hl,00064h         	;! d .
	ram:4795 cd 28 2e       call 02e28h          	;. ( .
	ram:4798 ed 5b 98 8b    ld de,(08b98h)       	;. [ . .
	ram:479c 21 78 83       ld hl,08378h         	;! x .
	ram:479f cd 3e 48       call sub_483eh       	;. > H
	ram:47a2 2a 69 83       ld hl,(08369h)       	;* i .
	ram:47a5 cd 3e 48       call sub_483eh       	;. > H
	ram:47a8 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:47ab cd 3e 48       call sub_483eh       	;. > H
	ram:47ae 21 38 84       ld hl,08438h         	;! 8 .
	ram:47b1 cd 3b 48       call sub_483bh       	;. ; H
	ram:47b4 21 44 48       ld hl,l4844h         	;! D H
	ram:47b7 cd b5 0a       call 00ab5h          	;. . .
	ram:47ba cd 98 21       call 02198h          	;. . !
	ram:47bd 11 78 83       ld de,08378h         	;. x .
	ram:47c0 cd 11 21       call 02111h          	;. . !
	ram:47c3 cd 11 21       call 02111h          	;. . !
	ram:47c6 ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:47ca cd 11 21       call 02111h          	;. . !
	ram:47cd 21 4a 48       ld hl,l484ah         	;! J H
	ram:47d0 cd 9d 20       call 0209dh          	;. .  
	ram:47d3 ed 5b 6f 83    ld de,(0836fh)       	;. [ o .
	ram:47d7 cd 11 21       call 02111h          	;. . !
	ram:47da 21 54 48       ld hl,l4854h         	;! T H
	ram:47dd cd 9d 20       call 0209dh          	;. .  
	ram:47e0 11 38 84       ld de,08438h         	;. 8 .
	ram:47e3 cd 3b 48       call sub_483bh       	;. ; H
	ram:47e6 ed 4b 67 83    ld bc,(08367h)       	;. K g .
	ram:47ea cd f0 42       call sub_42f0h       	;. . B
	ram:47ed df             rst 18h              	;.
	ram:47ee cd 3b 2e       call 02e3bh          	;. ; .
	ram:47f1 ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:47f5 cd f0 42       call sub_42f0h       	;. . B
	ram:47f8 cd 3b 2f       call 02f3bh          	;. ; /
	ram:47fb cd 71 0d       call 00d71h          	;. q .
	ram:47fe cd 5a 0e       call 00e5ah          	;. Z .
	ram:4801 cd 8d 20       call 0208dh          	;. .  
	ram:4804 cd 56 20       call 02056h          	;. V  
	ram:4807 cd 1f 2f       call 02f1fh          	;. . /
	ram:480a cd 71 0d       call 00d71h          	;. q .
	ram:480d cd 5a 0e       call 00e5ah          	;. Z .
	ram:4810 cd 29 20       call 02029h          	;. )  
	ram:4813 f7             rst 30h              	;.
	ram:4814 cd f7 10       call 010f7h          	;. . .
	ram:4817 df             rst 18h              	;.
	ram:4818 cd eb 46       call sub_46ebh       	;. . F
	ram:481b cd db 0a       call 00adbh          	;. . .
sub_481eh:
	ram:481e 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:4821 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:4824 11 78 83       ld de,08378h         	;. x .
	ram:4827 cd 3e 48       call sub_483eh       	;. > H
	ram:482a ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:482e cd 3e 48       call sub_483eh       	;. > H
	ram:4831 ed 5b 6f 83    ld de,(0836fh)       	;. [ o .
	ram:4835 cd 3e 48       call sub_483eh       	;. > H
	ram:4838 11 38 84       ld de,08438h         	;. 8 .
sub_483bh:
	ram:483b cd 3e 48       call sub_483eh       	;. > H
sub_483eh:
	ram:483e cd 9d 20       call 0209dh          	;. .  
	ram:4841 c3 9d 20       jp 0209dh            	;. .  
l4844h:
	ram:4844 cd 1e 48       call sub_481eh       	;. . H
	ram:4847 c3 8a 0a       jp 00a8ah            	;. . .
l484ah:
	ram:484a 00             nop                  	;.
	ram:484b 01 fc 57       ld bc,l57fch         	;. . W
	ram:484e 96             sub (hl)             	;.
	ram:484f 00             nop                  	;.
	ram:4850 00             nop                  	;.
	ram:4851 00             nop                  	;.
	ram:4852 00             nop                  	;.
	ram:4853 00             nop                  	;.
l4854h:
	ram:4854 00             nop                  	;.
	ram:4855 01 fc 34       ld bc,034fch         	;. . 4
	ram:4858 10 00          djnz l485ah          	;. .
l485ah:
	ram:485a 00             nop                  	;.
	ram:485b 00             nop                  	;.
	ram:485c 00             nop                  	;.
	ram:485d 00             nop                  	;.
	ram:485e 00             nop                  	;.
	ram:485f ff             rst 38h              	;.
	ram:4860 fb             ei                   	;.
	ram:4861 46             ld b,(hl)            	;F
	ram:4862 00             nop                  	;.
	ram:4863 00             nop                  	;.
	ram:4864 00             nop                  	;.
	ram:4865 00             nop                  	;.
	ram:4866 00             nop                  	;.
	ram:4867 00             nop                  	;.
	ram:4868 00             nop                  	;.
	ram:4869 ff             rst 38h              	;.
	ram:486a fb             ei                   	;.
	ram:486b 55             ld d,l               	;U
	ram:486c 00             nop                  	;.
	ram:486d 00             nop                  	;.
	ram:486e 00             nop                  	;.
	ram:486f 00             nop                  	;.
	ram:4870 00             nop                  	;.
	ram:4871 00             nop                  	;.
	ram:4872 00             nop                  	;.
	ram:4873 00             nop                  	;.
	ram:4874 fc 21 73       call m,sub_7321h     	;. ! s
	ram:4877 90             sub b                	;.
	ram:4878 00             nop                  	;.
	ram:4879 00             nop                  	;.
	ram:487a 00             nop                  	;.
	ram:487b 00             nop                  	;.
	ram:487c 00             nop                  	;.
	ram:487d 00             nop                  	;.
	ram:487e fc 18 18       call m,01818h        	;. . .
	ram:4881 20 00          jr nz,l4883h         	;.
l4883h:
	ram:4883 00             nop                  	;.
	ram:4884 00             nop                  	;.
	ram:4885 00             nop                  	;.
sub_4886h:
	ram:4886 cd 55 6c       call sub_6c55h       	;. U l
	ram:4889 d7             rst 10h              	;.
	ram:488a da 38 0a       jp c,00a38h          	;. 8 .
	ram:488d cd 4a 2e       call 02e4ah          	;. J .
	ram:4890 cd 0d 45       call sub_450dh       	;. . E
	ram:4893 cd 0c 2e       call 02e0ch          	;. . .
l4896h:
	ram:4896 fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:489a c3 51 4f       jp sub_4f51h         	;. Q O
	ram:489d cd af 43       call sub_43afh       	;. . C
	ram:48a0 cd 4a 4a       call sub_4a4ah       	;. J J
	ram:48a3 cd 43 2f       call 02f43h          	;. C /
	ram:48a6 d7             rst 10h              	;.
	ram:48a7 ed 53 e3 85    ld (085e3h),de       	;. S . .
	ram:48ab cd 24 2f       call 02f24h          	;. $ /
	ram:48ae 3a 82 80       ld a,(08082h)        	;: . .
	ram:48b1 b7             or a                 	;.
	ram:48b2 c4 c8 26       call nz,026c8h       	;. . &
	ram:48b5 ed 53 e7 85    ld (085e7h),de       	;. S . .
	ram:48b9 2a 6b 83       ld hl,(0836bh)       	;* k .
	ram:48bc e7             rst 20h              	;.
	ram:48bd 2a 69 83       ld hl,(08369h)       	;* i .
	ram:48c0 cd 0b 21       call 0210bh          	;. . !
	ram:48c3 cd 45 2e       call 02e45h          	;. E .
	ram:48c6 cd 91 2e       call 02e91h          	;. . .
	ram:48c9 cd 71 0d       call 00d71h          	;. q .
	ram:48cc 2a 6d 83       ld hl,(0836dh)       	;* m .
	ram:48cf cd 0b 21       call 0210bh          	;. . !
	ram:48d2 cd d6 23       call 023d6h          	;. . #
	ram:48d5 ca 65 0a       jp z,00a65h          	;. e .
	ram:48d8 cd 23 10       call 01023h          	;. # .
	ram:48db cd 73 25       call 02573h          	;. s %
	ram:48de df             rst 18h              	;.
	ram:48df cd 1b 78       call sub_781bh       	;. . x
	ram:48e2 cd d1 23       call 023d1h          	;. . #
	ram:48e5 ca 65 0a       jp z,00a65h          	;. e .
	ram:48e8 3e 40          ld a,040h            	;> @
	ram:48ea cd 6b 66       call sub_666bh       	;. k f
	ram:48ed cd 8e 1f       call 01f8eh          	;. . .
	ram:48f0 d2 65 0a       jp nc,00a65h         	;. e .
	ram:48f3 cd ef 2d       call 02defh          	;. . -
	ram:48f6 cd 8e 1f       call 01f8eh          	;. . .
	ram:48f9 cc 69 0d       call z,00d69h        	;. i .
	ram:48fc cd 95 39       call 03995h          	;. . 9
	ram:48ff f5             push af              	;.
	ram:4900 2a 69 83       ld hl,(08369h)       	;* i .
	ram:4903 e7             rst 20h              	;.
	ram:4904 11 98 80       ld de,08098h         	;. . .
	ram:4907 cd 9d 20       call 0209dh          	;. .  
	ram:490a cd 93 21       call 02193h          	;. . !
	ram:490d cd 89 21       call 02189h          	;. . !
	ram:4910 cd 00 40       call sub_4000h       	;. . @
	ram:4913 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:4916 7e             ld a,(hl)            	;~
	ram:4917 23             inc hl               	;#
	ram:4918 66             ld h,(hl)            	;f
	ram:4919 6f             ld l,a               	;o
	ram:491a c1             pop bc               	;.
	ram:491b 0e 01          ld c,001h            	;. .
l491dh:
	ram:491d cd 75 00       call 00075h          	;. u .
	ram:4920 c2 c0 49       jp nz,l49c0h         	;. . I
	ram:4923 c5             push bc              	;.
	ram:4924 e5             push hl              	;.
	ram:4925 e5             push hl              	;.
	ram:4926 79             ld a,c               	;y
	ram:4927 cd 66 66       call sub_6666h       	;. f f
	ram:492a 2a 6d 83       ld hl,(0836dh)       	;* m .
	ram:492d cd 0b 21       call 0210bh          	;. . !
	ram:4930 21 8d 80       ld hl,0808dh         	;! . .
	ram:4933 cb be          res 7,(hl)           	;. .
	ram:4935 ef             rst 28h              	;.
	ram:4936 2a 69 83       ld hl,(08369h)       	;* i .
	ram:4939 cd 3a 0d       call 00d3ah          	;. : .
	ram:493c cd 83 2f       call 02f83h          	;. . /
	ram:493f cd c7 2f       call 02fc7h          	;. . /
	ram:4942 eb             ex de,hl             	;.
	ram:4943 cd 27 1f       call 01f27h          	;. ' .
	ram:4946 e1             pop hl               	;.
l4947h:
	ram:4947 e5             push hl              	;.
	ram:4948 ed 5b e3 85    ld de,(085e3h)       	;. [ . .
	ram:494c cd 2f 39       call 0392fh          	;. / 9
	ram:494f cd 4d 2f       call 02f4dh          	;. M /
	ram:4952 cd 8e 1f       call 01f8eh          	;. . .
	ram:4955 38 2c          jr c,l4983h          	;8 ,
	ram:4957 cd 3b 2f       call 02f3bh          	;. ; /
	ram:495a cd 8e 1f       call 01f8eh          	;. . .
	ram:495d 30 24          jr nc,l4983h         	;0 $
	ram:495f cd 3e 21       call 0213eh          	;. > !
	ram:4962 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:4965 11 d8 ff       ld de,0ffd8h         	;. . .
	ram:4968 19             add hl,de            	;.
	ram:4969 7e             ld a,(hl)            	;~
	ram:496a b7             or a                 	;.
	ram:496b 28 0f          jr z,l497ch          	;( .
	ram:496d e1             pop hl               	;.
	ram:496e e5             push hl              	;.
	ram:496f ed 5b e7 85    ld de,(085e7h)       	;. [ . .
	ram:4973 cd 2f 39       call 0392fh          	;. / 9
	ram:4976 cd e7 23       call 023e7h          	;. . #
	ram:4979 c2 65 0a       jp nz,00a65h         	;. e .
l497ch:
	ram:497c cd 1f 2f       call 02f1fh          	;. . /
	ram:497f f7             rst 30h              	;.
	ram:4980 cd 6b 2f       call 02f6bh          	;. k /
l4983h:
	ram:4983 e1             pop hl               	;.
	ram:4984 2b             dec hl               	;+
	ram:4985 7c             ld a,h               	;|
	ram:4986 b5             or l                 	;.
	ram:4987 20 be          jr nz,l4947h         	;.
	ram:4989 cd 15 2f       call 02f15h          	;. . /
	ram:498c cd 04 2f       call 02f04h          	;. . /
	ram:498f cd 93 21       call 02193h          	;. . !
	ram:4992 cd 60 20       call 02060h          	;. `  
	ram:4995 cd 00 40       call sub_4000h       	;. . @
	ram:4998 cd 15 2f       call 02f15h          	;. . /
	ram:499b cd 36 2f       call 02f36h          	;. 6 /
	ram:499e cd 07 20       call 02007h          	;. .  
	ram:49a1 cd 52 2f       call 02f52h          	;. R /
	ram:49a4 cd 00 40       call sub_4000h       	;. . @
	ram:49a7 cd 89 21       call 02189h          	;. . !
	ram:49aa cd 36 2f       call 02f36h          	;. 6 /
	ram:49ad cd 1f 2f       call 02f1fh          	;. . /
	ram:49b0 cd 60 20       call 02060h          	;. `  
	ram:49b3 cd 9c 2f       call 02f9ch          	;. . /
	ram:49b6 cd 00 40       call sub_4000h       	;. . @
	ram:49b9 e1             pop hl               	;.
	ram:49ba c1             pop bc               	;.
	ram:49bb 0c             inc c                	;.
	ram:49bc 05             dec b                	;.
	ram:49bd c2 1d 49       jp nz,l491dh         	;. . I
l49c0h:
	ram:49c0 11 1e 00       ld de,0001eh         	;. . .
	ram:49c3 cd 1b 2e       call 02e1bh          	;. . .
	ram:49c6 c3 51 4f       jp sub_4f51h         	;. Q O
	ram:49c9 cd af 43       call sub_43afh       	;. . C
	ram:49cc fd cb 03 e6    set 4,(iy+003h)      	;. . . .
	ram:49d0 18 07          jr l49d9h            	;. .
	ram:49d2 cd af 43       call sub_43afh       	;. . C
	ram:49d5 fd cb 03 a6    res 4,(iy+003h)      	;. . . .
l49d9h:
	ram:49d9 cd 4a 4a       call sub_4a4ah       	;. J J
	ram:49dc cd 43 2f       call 02f43h          	;. C /
	ram:49df d7             rst 10h              	;.
	ram:49e0 ed 53 e3 85    ld (085e3h),de       	;. S . .
	ram:49e4 cd 24 2f       call 02f24h          	;. $ /
	ram:49e7 d7             rst 10h              	;.
	ram:49e8 ed 53 e7 85    ld (085e7h),de       	;. S . .
	ram:49ec eb             ex de,hl             	;.
	ram:49ed 7e             ld a,(hl)            	;~
	ram:49ee 23             inc hl               	;#
	ram:49ef 66             ld h,(hl)            	;f
	ram:49f0 6f             ld l,a               	;o
	ram:49f1 e5             push hl              	;.
	ram:49f2 11 01 00       ld de,00001h         	;. . .
	ram:49f5 d5             push de              	;.
	ram:49f6 b7             or a                 	;.
	ram:49f7 ed 52          sbc hl,de            	;. R
	ram:49f9 20 04          jr nz,l49ffh         	;.
	ram:49fb fd cb 03 a6    res 4,(iy+003h)      	;. . . .
l49ffh:
	ram:49ff cd 91 2e       call 02e91h          	;. . .
l4a02h:
	ram:4a02 cd 75 00       call 00075h          	;. u .
	ram:4a05 20 3b          jr nz,l4a42h         	;;
	ram:4a07 e1             pop hl               	;.
	ram:4a08 e5             push hl              	;.
	ram:4a09 ed 5b e3 85    ld de,(085e3h)       	;. [ . .
	ram:4a0d cd 2f 39       call 0392fh          	;. / 9
	ram:4a10 e1             pop hl               	;.
	ram:4a11 e5             push hl              	;.
	ram:4a12 ed 5b e7 85    ld de,(085e7h)       	;. [ . .
	ram:4a16 cd 41 39       call 03941h          	;. A 9
	ram:4a19 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:4a1d 20 05          jr nz,l4a24h         	;.
	ram:4a1f cd b3 42       call sub_42b3h       	;. . B
	ram:4a22 18 14          jr l4a38h            	;. .
l4a24h:
	ram:4a24 cd 36 2f       call 02f36h          	;. 6 /
	ram:4a27 cd 15 2f       call 02f15h          	;. . /
	ram:4a2a cd 83 2f       call 02f83h          	;. . /
	ram:4a2d cd 61 2f       call 02f61h          	;. a /
	ram:4a30 e1             pop hl               	;.
	ram:4a31 e5             push hl              	;.
	ram:4a32 2b             dec hl               	;+
	ram:4a33 7c             ld a,h               	;|
	ram:4a34 b5             or l                 	;.
	ram:4a35 c4 00 40       call nz,sub_4000h    	;. . @
l4a38h:
	ram:4a38 d1             pop de               	;.
	ram:4a39 e1             pop hl               	;.
	ram:4a3a e5             push hl              	;.
	ram:4a3b 13             inc de               	;.
	ram:4a3c d5             push de              	;.
	ram:4a3d b7             or a                 	;.
	ram:4a3e ed 52          sbc hl,de            	;. R
	ram:4a40 30 c0          jr nc,l4a02h         	;0 .
l4a42h:
	ram:4a42 e1             pop hl               	;.
	ram:4a43 e1             pop hl               	;.
	ram:4a44 cd 09 2e       call 02e09h          	;. . .
	ram:4a47 c3 51 4f       jp sub_4f51h         	;. Q O
sub_4a4ah:
	ram:4a4a cd 75 00       call 00075h          	;. u .
	ram:4a4d c8             ret z                	;.
	ram:4a4e e1             pop hl               	;.
	ram:4a4f c3 51 4f       jp sub_4f51h         	;. Q O
	ram:4a52 cd bf 39       call 039bfh          	;. . 9
	ram:4a55 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:4a59 20 12          jr nz,l4a6dh         	;.
	ram:4a5b fd cb 03 5e    bit 3,(iy+003h)      	;. . . ^
	ram:4a5f 20 0c          jr nz,l4a6dh         	;.
	ram:4a61 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:4a65 20 06          jr nz,l4a6dh         	;.
	ram:4a67 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:4a6b 28 03          jr z,l4a70h          	;( .
l4a6dh:
	ram:4a6d c3 4d 0a       jp 00a4dh            	;. M .
l4a70h:
	ram:4a70 cd 85 20       call 02085h          	;. .  
	ram:4a73 21 00 00       ld hl,00000h         	;! . .
	ram:4a76 22 67 83       ld (08367h),hl       	;" g .
	ram:4a79 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:4a7c 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:4a7f cd d4 29       call 029d4h          	;. . )
	ram:4a82 ed 53 e7 85    ld (085e7h),de       	;. S . .
	ram:4a86 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4a89 cd 6a 4b       call sub_4b6ah       	;. j K
	ram:4a8c cd a9 3a       call 03aa9h          	;. . :
	ram:4a8f 21 36 4b       ld hl,l4b36h         	;! 6 K
	ram:4a92 cd b5 0a       call 00ab5h          	;. . .
	ram:4a95 fd cb 02 c6    set 0,(iy+002h)      	;. . . .
	ram:4a99 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:4a9d cd 11 5e       call sub_5e11h       	;. . ^
	ram:4aa0 28 cb          jr z,l4a6dh          	;( .
	ram:4aa2 cd 51 20       call 02051h          	;. Q  
	ram:4aa5 b7             or a                 	;.
	ram:4aa6 cd 1a 5e       call sub_5e1ah       	;. . ^
	ram:4aa9 cd 89 00       call 00089h          	;. . .
	ram:4aac 28 22          jr z,l4ad0h          	;( "
	ram:4aae cd 8d 71       call sub_718dh       	;. . q
	ram:4ab1 cd 75 35       call 03575h          	;. u 5
l4ab4h:
	ram:4ab4 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4ab7 e5             push hl              	;.
	ram:4ab8 3e 10          ld a,010h            	;> .
	ram:4aba 21 9a 8b       ld hl,08b9ah         	;! . .
	ram:4abd cd de 72       call sub_72deh       	;. . r
	ram:4ac0 e1             pop hl               	;.
	ram:4ac1 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:4ac4 f5             push af              	;.
	ram:4ac5 cd e7 35       call 035e7h          	;. . 5
	ram:4ac8 cd 42 4b       call sub_4b42h       	;. B K
	ram:4acb f1             pop af               	;.
	ram:4acc 20 e6          jr nz,l4ab4h         	;.
	ram:4ace 18 27          jr l4af7h            	;. '
l4ad0h:
	ram:4ad0 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:4ad3 7d             ld a,l               	;}
	ram:4ad4 b4             or h                 	;.
	ram:4ad5 28 10          jr z,l4ae7h          	;( .
	ram:4ad7 ed 5b 9a 8b    ld de,(08b9ah)       	;. [ . .
	ram:4adb b7             or a                 	;.
	ram:4adc ed 52          sbc hl,de            	;. R
	ram:4ade 28 07          jr z,l4ae7h          	;( .
	ram:4ae0 13             inc de               	;.
	ram:4ae1 ed 53 9a 8b    ld (08b9ah),de       	;. S . .
	ram:4ae5 18 23          jr l4b0ah            	;. #
l4ae7h:
	ram:4ae7 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:4aea 23             inc hl               	;#
	ram:4aeb 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:4aee 3a 68 83       ld a,(08368h)        	;: h .
	ram:4af1 cd ef 68       call sub_68efh       	;. . h
	ram:4af4 b7             or a                 	;.
	ram:4af5 20 10          jr nz,l4b07h         	;.
l4af7h:
	ram:4af7 cd 51 4f       call sub_4f51h       	;. Q O
	ram:4afa cd db 0a       call 00adbh          	;. . .
	ram:4afd cd 6a 4b       call sub_4b6ah       	;. j K
	ram:4b00 cd 2b 3a       call 03a2bh          	;. + :
	ram:4b03 cd f4 2d       call 02df4h          	;. . -
	ram:4b06 c9             ret                  	;.
l4b07h:
	ram:4b07 32 68 83       ld (08368h),a        	;2 h .
l4b0ah:
	ram:4b0a 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4b0d e5             push hl              	;.
	ram:4b0e 21 00 00       ld hl,00000h         	;! . .
	ram:4b11 22 69 8a       ld (08a69h),hl       	;" i .
	ram:4b14 cd 17 6c       call sub_6c17h       	;. . l
	ram:4b17 cd d3 3a       call 03ad3h          	;. . :
	ram:4b1a cd 84 00       call 00084h          	;. . .
	ram:4b1d 28 0e          jr z,l4b2dh          	;( .
	ram:4b1f cd 42 4b       call sub_4b42h       	;. B K
	ram:4b22 cd 17 6c       call sub_6c17h       	;. . l
	ram:4b25 3e 79          ld a,079h            	;> y
	ram:4b27 32 84 80       ld (08084h),a        	;2 . .
	ram:4b2a cd d3 3a       call 03ad3h          	;. . :
l4b2dh:
	ram:4b2d e1             pop hl               	;.
	ram:4b2e 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:4b31 cd 42 4b       call sub_4b42h       	;. B K
	ram:4b34 18 9a          jr l4ad0h            	;. .
l4b36h:
	ram:4b36 cd 6a 4b       call sub_4b6ah       	;. j K
	ram:4b39 cd 2b 3a       call 03a2bh          	;. + :
	ram:4b3c cd 51 4f       call sub_4f51h       	;. Q O
	ram:4b3f c3 8a 0a       jp 00a8ah            	;. . .
sub_4b42h:
	ram:4b42 cd a3 26       call 026a3h          	;. . &
	ram:4b45 cd 9c 26       call 0269ch          	;. . &
	ram:4b48 cd 22 26       call 02622h          	;. " &
	ram:4b4b cd 9b 25       call 0259bh          	;. . %
	ram:4b4e cd 4a 2e       call 02e4ah          	;. J .
	ram:4b51 ed 5b e7 85    ld de,(085e7h)       	;. [ . .
	ram:4b55 af             xor a                	;.
	ram:4b56 cd 6f 38       call 0386fh          	;. o 8
	ram:4b59 cd f4 2d       call 02df4h          	;. . -
	ram:4b5c ed 5b e7 85    ld de,(085e7h)       	;. [ . .
	ram:4b60 1a             ld a,(de)            	;.
	ram:4b61 6f             ld l,a               	;o
	ram:4b62 13             inc de               	;.
	ram:4b63 1a             ld a,(de)            	;.
	ram:4b64 67             ld h,a               	;g
	ram:4b65 1b             dec de               	;.
	ram:4b66 cd 47 39       call 03947h          	;. G 9
	ram:4b69 c9             ret                  	;.
sub_4b6ah:
	ram:4b6a cd 7a 00       call 0007ah          	;. z .
	ram:4b6d c2 48 26       jp nz,02648h         	;. H &
	ram:4b70 cd 7f 00       call 0007fh          	;. . .
	ram:4b73 c2 3d 26       jp nz,0263dh         	;. = &
	ram:4b76 c3 54 26       jp 02654h            	;. T &
l4b79h:
	ram:4b79 cd 89 3c       call 03c89h          	;. . <
	ram:4b7c fd cb 08 de    set 3,(iy+008h)      	;. . . .
l4b80h:
	ram:4b80 cd be 01       call 001beh          	;. . .
l4b83h:
	ram:4b83 b7             or a                 	;.
	ram:4b84 20 14          jr nz,l4b9ah         	;.
	ram:4b86 cd 75 00       call 00075h          	;. u .
	ram:4b89 c0             ret nz               	;.
	ram:4b8a cd 0e 01       call 0010eh          	;. . .
	ram:4b8d db 07          in a,(007h)          	;. .
	ram:4b8f e6 03          and 003h             	;. .
	ram:4b91 fe 03          cp 003h              	;. .
	ram:4b93 28 eb          jr z,l4b80h          	;( .
	ram:4b95 cd 6f 35       call 0356fh          	;. o 5
	ram:4b98 18 e6          jr l4b80h            	;. .
l4b9ah:
	ram:4b9a fd cb 00 66    bit 4,(iy+000h)      	;. . . f
	ram:4b9e 28 0b          jr z,l4babh          	;( .
	ram:4ba0 fd cb 08 9e    res 3,(iy+008h)      	;. . . .
	ram:4ba4 fd cb 00 a6    res 4,(iy+000h)      	;. . . .
	ram:4ba8 cd 15 01       call 00115h          	;. . .
l4babh:
	ram:4bab fd cb 12 5e    bit 3,(iy+012h)      	;. . . ^
	ram:4baf 20 2b          jr nz,l4bdch         	;+
	ram:4bb1 fd cb 12 66    bit 4,(iy+012h)      	;. . . f
	ram:4bb5 c2 94 4c       jp nz,l4c94h         	;. . L
	ram:4bb8 fe 36          cp 036h              	;. 6
	ram:4bba 20 06          jr nz,l4bc2h         	;.
	ram:4bbc fd cb 12 de    set 3,(iy+012h)      	;. . . .
	ram:4bc0 18 b7          jr l4b79h            	;. .
l4bc2h:
	ram:4bc2 fe 30          cp 030h              	;. 0
	ram:4bc4 20 0a          jr nz,l4bd0h         	;.
	ram:4bc6 fd cb 12 e6    set 4,(iy+012h)      	;. . . .
	ram:4bca fd cb 12 ae    res 5,(iy+012h)      	;. . . .
	ram:4bce 18 a9          jr l4b79h            	;. .
l4bd0h:
	ram:4bd0 6f             ld l,a               	;o
	ram:4bd1 26 00          ld h,000h            	;& .
	ram:4bd3 11 19 79       ld de,07919h         	;. . y
	ram:4bd6 19             add hl,de            	;.
	ram:4bd7 7e             ld a,(hl)            	;~
	ram:4bd8 b7             or a                 	;.
	ram:4bd9 c0             ret nz               	;.
	ram:4bda 18 9d          jr l4b79h            	;. .
l4bdch:
	ram:4bdc fd cb 12 9e    res 3,(iy+012h)      	;. . . .
	ram:4be0 fe 36          cp 036h              	;. 6
	ram:4be2 28 95          jr z,l4b79h          	;( .
	ram:4be4 fe 30          cp 030h              	;. 0
	ram:4be6 20 27          jr nz,l4c0fh         	;'
	ram:4be8 fd cb 12 76    bit 6,(iy+012h)      	;. . . v
	ram:4bec 28 0c          jr z,l4bfah          	;( .
	ram:4bee fd cb 12 6e    bit 5,(iy+012h)      	;. . . n
	ram:4bf2 28 10          jr z,l4c04h          	;( .
	ram:4bf4 cd d6 01       call 001d6h          	;. . .
	ram:4bf7 c3 79 4b       jp l4b79h            	;. y K
l4bfah:
	ram:4bfa fd cb 12 66    bit 4,(iy+012h)      	;. . . f
	ram:4bfe 28 04          jr z,l4c04h          	;( .
	ram:4c00 fd cb 12 f6    set 6,(iy+012h)      	;. . . .
l4c04h:
	ram:4c04 fd cb 12 ee    set 5,(iy+012h)      	;. . . .
	ram:4c08 fd cb 12 e6    set 4,(iy+012h)      	;. . . .
	ram:4c0c c3 79 4b       jp l4b79h            	;. y K
l4c0fh:
	ram:4c0f 06 46          ld b,046h            	;. F
l4c11h:
	ram:4c11 21 07 80       ld hl,08007h         	;! . .
	ram:4c14 fe 04          cp 004h              	;. .
	ram:4c16 20 08          jr nz,l4c20h         	;.
	ram:4c18 7e             ld a,(hl)            	;~
	ram:4c19 fe 1f          cp 01fh              	;. .
	ram:4c1b 30 13          jr nc,l4c30h         	;0 .
	ram:4c1d 3c             inc a                	;<
	ram:4c1e 18 09          jr l4c29h            	;. .
l4c20h:
	ram:4c20 fe 01          cp 001h              	;. .
	ram:4c22 20 6b          jr nz,l4c8fh         	;k
	ram:4c24 7e             ld a,(hl)            	;~
	ram:4c25 b7             or a                 	;.
	ram:4c26 28 08          jr z,l4c30h          	;( .
	ram:4c28 3d             dec a                	;=
l4c29h:
	ram:4c29 77             ld (hl),a            	;w
	ram:4c2a d3 02          out (002h),a         	;. .
	ram:4c2c 21 03 80       ld hl,08003h         	;! . .
	ram:4c2f 70             ld (hl),b            	;p
l4c30h:
	ram:4c30 fd cb 08 de    set 3,(iy+008h)      	;. . . .
	ram:4c34 cd bd 3b       call 03bbdh          	;. . ;
	ram:4c37 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:4c3a e5             push hl              	;.
	ram:4c3b 21 00 14       ld hl,01400h         	;! . .
	ram:4c3e 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4c41 fd 6e 05       ld l,(iy+005h)       	;. n .
	ram:4c44 fd 66 0d       ld h,(iy+00dh)       	;. f .
	ram:4c47 e5             push hl              	;.
	ram:4c48 3a 48 83       ld a,(08348h)        	;: H .
	ram:4c4b f5             push af              	;.
	ram:4c4c fd cb 05 de    set 3,(iy+005h)      	;. . . .
	ram:4c50 fd cb 0d 8e    res 1,(iy+00dh)      	;. . . .
	ram:4c54 3a 07 80       ld a,(08007h)        	;: . .
	ram:4c57 5f             ld e,a               	;_
	ram:4c58 16 00          ld d,000h            	;. .
	ram:4c5a 21 d4 4c       ld hl,l4cd4h         	;! . L
	ram:4c5d 19             add hl,de            	;.
	ram:4c5e 7e             ld a,(hl)            	;~
	ram:4c5f f3             di                   	;.
	ram:4c60 cd cd 3d       call 03dcdh          	;. . =
	ram:4c63 fb             ei                   	;.
	ram:4c64 f1             pop af               	;.
	ram:4c65 32 48 83       ld (08348h),a        	;2 H .
	ram:4c68 e1             pop hl               	;.
	ram:4c69 fd 74 0d       ld (iy+00dh),h       	;. t .
	ram:4c6c fd 75 05       ld (iy+005h),l       	;. u .
	ram:4c6f e1             pop hl               	;.
	ram:4c70 22 0c 80       ld (0800ch),hl       	;" . .
l4c73h:
	ram:4c73 cd 0e 01       call 0010eh          	;. . .
	ram:4c76 fd cb 00 5e    bit 3,(iy+000h)      	;. . . ^
	ram:4c7a 28 f7          jr z,l4c73h          	;( .
	ram:4c7c cd be 01       call 001beh          	;. . .
	ram:4c7f 06 0e          ld b,00eh            	;. .
	ram:4c81 fe 01          cp 001h              	;. .
	ram:4c83 28 8c          jr z,l4c11h          	;( .
	ram:4c85 fe 04          cp 004h              	;. .
	ram:4c87 28 88          jr z,l4c11h          	;( .
	ram:4c89 cd c3 3b       call 03bc3h          	;. . ;
	ram:4c8c c3 83 4b       jp l4b83h            	;. . K
l4c8fh:
	ram:4c8f c6 38          add a,038h           	;. 8
	ram:4c91 c3 d0 4b       jp l4bd0h            	;. . K
l4c94h:
	ram:4c94 fe 30          cp 030h              	;. 0
	ram:4c96 20 20          jr nz,l4cb8h         	;
	ram:4c98 fd cb 12 76    bit 6,(iy+012h)      	;. . . v
	ram:4c9c 28 13          jr z,l4cb1h          	;( .
	ram:4c9e fd cb 12 6e    bit 5,(iy+012h)      	;. . . n
	ram:4ca2 28 07          jr z,l4cabh          	;( .
	ram:4ca4 fd cb 12 ae    res 5,(iy+012h)      	;. . . .
	ram:4ca8 c3 79 4b       jp l4b79h            	;. y K
l4cabh:
	ram:4cab cd d6 01       call 001d6h          	;. . .
	ram:4cae c3 79 4b       jp l4b79h            	;. y K
l4cb1h:
	ram:4cb1 fd cb 12 f6    set 6,(iy+012h)      	;. . . .
	ram:4cb5 c3 79 4b       jp l4b79h            	;. y K
l4cb8h:
	ram:4cb8 fe 36          cp 036h              	;. 6
	ram:4cba 20 07          jr nz,l4cc3h         	;.
	ram:4cbc fd cb 12 de    set 3,(iy+012h)      	;. . . .
	ram:4cc0 c3 79 4b       jp l4b79h            	;. y K
l4cc3h:
	ram:4cc3 cd cb 01       call 001cbh          	;. . .
	ram:4cc6 c6 70          add a,070h           	;. p
	ram:4cc8 fd cb 12 6e    bit 5,(iy+012h)      	;. . . n
	ram:4ccc ca d0 4b       jp z,l4bd0h          	;. . K
	ram:4ccf c6 38          add a,038h           	;. 8
	ram:4cd1 c3 d0 4b       jp l4bd0h            	;. . K
l4cd4h:
	ram:4cd4 30 30          jr nc,l4d06h         	;0 0
	ram:4cd6 30 31          jr nc,l4d09h         	;0 1
	ram:4cd8 31 31 32       ld sp,03231h         	;1 1 2
	ram:4cdb 32 32 33       ld (03332h),a        	;2 2 3
	ram:4cde 33             inc sp               	;3
	ram:4cdf 33             inc sp               	;3
	ram:4ce0 34             inc (hl)             	;4
	ram:4ce1 34             inc (hl)             	;4
	ram:4ce2 34             inc (hl)             	;4
	ram:4ce3 35             dec (hl)             	;5
	ram:4ce4 35             dec (hl)             	;5
	ram:4ce5 35             dec (hl)             	;5
	ram:4ce6 35             dec (hl)             	;5
	ram:4ce7 36 36          ld (hl),036h         	;6 6
	ram:4ce9 36 36          ld (hl),036h         	;6 6
	ram:4ceb 37             scf                  	;7
	ram:4cec 37             scf                  	;7
	ram:4ced 37             scf                  	;7
	ram:4cee 37             scf                  	;7
	ram:4cef 38 38          jr c,58              	;8 8
	ram:4cf1 38 39          jr c,59              	;8 9
	ram:4cf3 39             add hl,sp            	;9
sub_4cf4h:
	ram:4cf4 97             sub a                	;.
l4cf5h:
	ram:4cf5 32 33 83       ld (08333h),a        	;2 3 .
	ram:4cf8 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:4cfb 87             add a,a              	;.
	ram:4cfc 87             add a,a              	;.
	ram:4cfd 87             add a,a              	;.
	ram:4cfe d6 07          sub 007h             	;. .
	ram:4d00 32 34 83       ld (08334h),a        	;2 4 .
	ram:4d03 c9             ret                  	;.
sub_4d04h:
	ram:4d04 3e 40          ld a,040h            	;> @
l4d06h:
	ram:4d06 18 ed          jr l4cf5h            	;. .
sub_4d08h:
	ram:4d08 97             sub a                	;.
l4d09h:
	ram:4d09 32 33 83       ld (08333h),a        	;2 3 .
	ram:4d0c 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:4d0f 87             add a,a              	;.
	ram:4d10 87             add a,a              	;.
	ram:4d11 87             add a,a              	;.
	ram:4d12 d6 0d          sub 00dh             	;. .
	ram:4d14 32 34 83       ld (08334h),a        	;2 4 .
	ram:4d17 c9             ret                  	;.
sub_4d18h:
	ram:4d18 cd f4 4c       call sub_4cf4h       	;. . L
	ram:4d1b 21 01 72       ld hl,l7201h         	;! . r
	ram:4d1e fd cb 03 76    bit 6,(iy+003h)      	;. . . v
	ram:4d22 18 76          jr l4d9ah            	;. v
l4d24h:
	ram:4d24 cd 08 4d       call sub_4d08h       	;. . M
	ram:4d27 21 01 c1       ld hl,0c101h         	;! . .
	ram:4d2a 97             sub a                	;.
	ram:4d2b 18 6d          jr l4d9ah            	;. m
l4d2dh:
	ram:4d2d cd 04 4d       call sub_4d04h       	;. . M
	ram:4d30 21 01 c1       ld hl,0c101h         	;! . .
	ram:4d33 97             sub a                	;.
	ram:4d34 18 64          jr l4d9ah            	;. d
sub_4d36h:
	ram:4d36 cd 08 4d       call sub_4d08h       	;. . M
	ram:4d39 21 01 74       ld hl,07401h         	;! . t
	ram:4d3c 97             sub a                	;.
	ram:4d3d 18 5b          jr l4d9ah            	;. [
sub_4d3fh:
	ram:4d3f cd f4 4c       call sub_4cf4h       	;. . L
	ram:4d42 21 01 78       ld hl,l7800h+1       	;! . x
	ram:4d45 fd cb 03 76    bit 6,(iy+003h)      	;. . . v
	ram:4d49 18 4f          jr l4d9ah            	;. O
l4d4bh:
	ram:4d4b cd 36 4d       call sub_4d36h       	;. 6 M
l4d4eh:
	ram:4d4e cd 3f 4d       call sub_4d3fh       	;. ? M
sub_4d51h:
	ram:4d51 cd 04 4d       call sub_4d04h       	;. . M
	ram:4d54 21 01 79       ld hl,07901h         	;! . y
	ram:4d57 fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:4d5b 18 3d          jr l4d9ah            	;. =
l4d5dh:
	ram:4d5d cd 3f 4d       call sub_4d3fh       	;. ? M
	ram:4d60 cd 51 4d       call sub_4d51h       	;. Q M
	ram:4d63 18 bf          jr l4d24h            	;. .
l4d65h:
	ram:4d65 cd 36 4d       call sub_4d36h       	;. 6 M
l4d68h:
	ram:4d68 cd 18 4d       call sub_4d18h       	;. . M
	ram:4d6b 18 c0          jr l4d2dh            	;. .
l4d6dh:
	ram:4d6d fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:4d71 cd 08 4d       call sub_4d08h       	;. . M
	ram:4d74 cd aa 4e       call sub_4eaah       	;. . N
	ram:4d77 21 36 86       ld hl,08636h         	;! 6 .
	ram:4d7a 46             ld b,(hl)            	;F
	ram:4d7b 23             inc hl               	;#
	ram:4d7c cd e1 3b       call 03be1h          	;. . ;
	ram:4d7f 3e 3d          ld a,03dh            	;> =
	ram:4d81 cd 99 3b       call 03b99h          	;. . ;
	ram:4d84 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:4d87 fd cb 03 76    bit 6,(iy+003h)      	;. . . v
	ram:4d8b cc 9b 4e       call z,sub_4e9bh     	;. . N
	ram:4d8e cd f4 4c       call sub_4cf4h       	;. . L
	ram:4d91 21 01 2a       ld hl,02a01h         	;! . *
	ram:4d94 fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:4d98 18 00          jr l4d9ah            	;. .
l4d9ah:
	ram:4d9a f5             push af              	;.
	ram:4d9b fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:4d9f cd aa 4e       call sub_4eaah       	;. . N
	ram:4da2 22 83 80       ld (08083h),hl       	;" . .
	ram:4da5 7c             ld a,h               	;|
	ram:4da6 fe 2a          cp 02ah              	;. *
	ram:4da8 20 08          jr nz,l4db2h         	;.
	ram:4daa 21 9b 31       ld hl,0319bh         	;! . 1
	ram:4dad cd 9f 3b       call 03b9fh          	;. . ;
	ram:4db0 18 08          jr l4dbah            	;. .
l4db2h:
	ram:4db2 cd 99 3b       call 03b99h          	;. . ;
	ram:4db5 3e 3d          ld a,03dh            	;> =
	ram:4db7 cd 99 3b       call 03b99h          	;. . ;
l4dbah:
	ram:4dba f1             pop af               	;.
	ram:4dbb 20 05          jr nz,l4dc2h         	;.
	ram:4dbd d7             rst 10h              	;.
	ram:4dbe eb             ex de,hl             	;.
	ram:4dbf cd 9b 4e       call sub_4e9bh       	;. . N
l4dc2h:
	ram:4dc2 fd cb 05 8e    res 1,(iy+005h)      	;. . . .
	ram:4dc6 c9             ret                  	;.
sub_4dc7h:
	ram:4dc7 cd 13 00       call 00013h          	;. . .
	ram:4dca c0             ret nz               	;.
	ram:4dcb 11 00 78       ld de,l7800h         	;. . x
	ram:4dce 3a de 85       ld a,(085deh)        	;: . .
	ram:4dd1 cd da 4d       call sub_4ddah       	;. . M
	ram:4dd4 11 01 79       ld de,07901h         	;. . y
	ram:4dd7 3a df 85       ld a,(085dfh)        	;: . .
sub_4ddah:
	ram:4dda 06 01          ld b,001h            	;. .
	ram:4ddc 26 7a          ld h,07ah            	;& z
	ram:4dde cd 89 00       call 00089h          	;. . .
	ram:4de1 28 24          jr z,l4e07h          	;( $
	ram:4de3 16 74          ld d,074h            	;. t
	ram:4de5 b7             or a                 	;.
	ram:4de6 28 1f          jr z,l4e07h          	;( .
	ram:4de8 fe 10          cp 010h              	;. .
	ram:4dea 28 19          jr z,l4e05h          	;( .
	ram:4dec 04             inc b                	;.
	ram:4ded 26 76          ld h,076h            	;& v
	ram:4def fe 20          cp 020h              	;.  
	ram:4df1 28 0f          jr z,l4e02h          	;( .
	ram:4df3 cb 67          bit 4,a              	;. g
	ram:4df5 f5             push af              	;.
	ram:4df6 e6 0f          and 00fh             	;. .
	ram:4df8 c6 30          add a,030h           	;. 0
	ram:4dfa 57             ld d,a               	;W
	ram:4dfb f1             pop af               	;.
	ram:4dfc 20 06          jr nz,l4e04h         	;.
	ram:4dfe 04             inc b                	;.
	ram:4dff 26 72          ld h,072h            	;& r
	ram:4e01 d5             push de              	;.
l4e02h:
	ram:4e02 16 27          ld d,027h            	;. '
l4e04h:
	ram:4e04 d5             push de              	;.
l4e05h:
	ram:4e05 16 51          ld d,051h            	;. Q
l4e07h:
	ram:4e07 d5             push de              	;.
	ram:4e08 c5             push bc              	;.
	ram:4e09 7c             ld a,h               	;|
	ram:4e0a cb 0b          rrc e                	;. .
	ram:4e0c 20 17          jr nz,l4e25h         	;.
	ram:4e0e cd 09 4d       call l4d09h          	;. . M
	ram:4e11 21 34 83       ld hl,08334h         	;! 4 .
	ram:4e14 35             dec (hl)             	;5
l4e15h:
	ram:4e15 fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:4e19 cd aa 4e       call sub_4eaah       	;. . N
	ram:4e1c c1             pop bc               	;.
l4e1dh:
	ram:4e1d f1             pop af               	;.
	ram:4e1e cd 99 3b       call 03b99h          	;. . ;
	ram:4e21 10 fa          djnz l4e1dh          	;. .
	ram:4e23 18 2d          jr l4e52h            	;. -
l4e25h:
	ram:4e25 21 00 05       ld hl,00500h         	;! . .
	ram:4e28 22 33 83       ld (08333h),hl       	;" 3 .
	ram:4e2b 18 e8          jr l4e15h            	;. .
sub_4e2dh:
	ram:4e2d f5             push af              	;.
	ram:4e2e 21 76 00       ld hl,00076h         	;! v .
	ram:4e31 fe 0a          cp 00ah              	;. .
	ram:4e33 30 02          jr nc,l4e37h         	;0 .
	ram:4e35 2e 7a          ld l,07ah            	;. z
l4e37h:
	ram:4e37 22 33 83       ld (08333h),hl       	;" 3 .
	ram:4e3a fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:4e3e cd aa 4e       call sub_4eaah       	;. . N
	ram:4e41 f1             pop af               	;.
	ram:4e42 cd b0 4e       call sub_4eb0h       	;. . N
	ram:4e45 28 05          jr z,l4e4ch          	;( .
	ram:4e47 c6 30          add a,030h           	;. 0
	ram:4e49 cd 99 3b       call 03b99h          	;. . ;
l4e4ch:
	ram:4e4c 78             ld a,b               	;x
	ram:4e4d c6 30          add a,030h           	;. 0
	ram:4e4f cd 99 3b       call 03b99h          	;. . ;
l4e52h:
	ram:4e52 fd cb 05 8e    res 1,(iy+005h)      	;. . . .
	ram:4e56 c9             ret                  	;.
sub_4e57h:
	ram:4e57 21 29 31       ld hl,03129h         	;! ) 1
l4e5ah:
	ram:4e5a cd f4 4c       call sub_4cf4h       	;. . L
	ram:4e5d fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:4e61 cd aa 4e       call sub_4eaah       	;. . N
	ram:4e64 cd 9f 3b       call 03b9fh          	;. . ;
	ram:4e67 cd 83 36       call 03683h          	;. . 6
	ram:4e6a cd 9c 4e       call sub_4e9ch       	;. . N
	ram:4e6d 18 e3          jr l4e52h            	;. .
l4e6fh:
	ram:4e6f 21 70 31       ld hl,03170h         	;! p 1
	ram:4e72 18 17          jr l4e8bh            	;. .
l4e74h:
	ram:4e74 21 0c 33       ld hl,0330ch         	;! . 3
	ram:4e77 18 12          jr l4e8bh            	;. .
l4e79h:
	ram:4e79 21 95 31       ld hl,03195h         	;! . 1
	ram:4e7c 18 0d          jr l4e8bh            	;. .
l4e7eh:
	ram:4e7e 21 57 31       ld hl,03157h         	;! W 1
	ram:4e81 18 08          jr l4e8bh            	;. .
l4e83h:
	ram:4e83 21 5c 31       ld hl,0315ch         	;! \ 1
	ram:4e86 18 03          jr l4e8bh            	;. .
l4e88h:
	ram:4e88 21 56 32       ld hl,03256h         	;! V 2
l4e8bh:
	ram:4e8b cd 08 4d       call sub_4d08h       	;. . M
	ram:4e8e fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:4e92 cd aa 4e       call sub_4eaah       	;. . N
	ram:4e95 cd 9f 3b       call 03b9fh          	;. . ;
	ram:4e98 c3 4e 4d       jp l4d4eh            	;. N M
sub_4e9bh:
	ram:4e9b e7             rst 20h              	;.
sub_4e9ch:
	ram:4e9c 3e 0c          ld a,00ch            	;> .
	ram:4e9e cd 97 37       call 03797h          	;. . 7
	ram:4ea1 21 98 80       ld hl,08098h         	;! . .
	ram:4ea4 cd 9f 3b       call 03b9fh          	;. . ;
	ram:4ea7 cd aa 4e       call sub_4eaah       	;. . N
sub_4eaah:
	ram:4eaa 3e 20          ld a,020h            	;>  
	ram:4eac cd 99 3b       call 03b99h          	;. . ;
	ram:4eaf c9             ret                  	;.
sub_4eb0h:
	ram:4eb0 4f             ld c,a               	;O
	ram:4eb1 06 08          ld b,008h            	;. .
	ram:4eb3 97             sub a                	;.
l4eb4h:
	ram:4eb4 cb 21          sla c                	;. !
	ram:4eb6 17             rla                  	;.
	ram:4eb7 fe 0a          cp 00ah              	;. .
	ram:4eb9 38 03          jr c,l4ebeh          	;8 .
	ram:4ebb d6 0a          sub 00ah             	;. .
	ram:4ebd 0c             inc c                	;.
l4ebeh:
	ram:4ebe 10 f4          djnz l4eb4h          	;. .
	ram:4ec0 47             ld b,a               	;G
	ram:4ec1 79             ld a,c               	;y
	ram:4ec2 b7             or a                 	;.
	ram:4ec3 c9             ret                  	;.
	ram:4ec4 cd e7 3e       call 03ee7h          	;. . >
	ram:4ec7 cd 13 00       call 00013h          	;. . .
	ram:4eca c4 1b 00       call nz,0001bh       	;. . .
	ram:4ecd fd cb 08 8e    res 1,(iy+008h)      	;. . . .
	ram:4ed1 21 66 4f       ld hl,l4f66h         	;! f O
	ram:4ed4 cd 5b 06       call 0065bh          	;. [ .
	ram:4ed7 fd cb 02 8e    res 1,(iy+002h)      	;. . . .
	ram:4edb fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:4edf cc f8 66       call z,sub_66f8h     	;. . f
	ram:4ee2 3e 35          ld a,035h            	;> 5
	ram:4ee4 cd 1d 3c       call 03c1dh          	;. . <
	ram:4ee7 3e 3a          ld a,03ah            	;> :
	ram:4ee9 cd 23 3c       call 03c23h          	;. # <
	ram:4eec 3e 4c          ld a,04ch            	;> L
	ram:4eee 32 9a 81       ld (0819ah),a        	;2 . .
	ram:4ef1 18 5e          jr sub_4f51h         	;. ^
	ram:4ef3 cd e7 3e       call 03ee7h          	;. . >
	ram:4ef6 f5             push af              	;.
	ram:4ef7 21 66 4f       ld hl,l4f66h         	;! f O
	ram:4efa cd 5b 06       call 0065bh          	;. [ .
	ram:4efd fd cb 02 8e    res 1,(iy+002h)      	;. . . .
	ram:4f01 cd 13 00       call 00013h          	;. . .
	ram:4f04 28 22          jr z,l4f28h          	;( "
	ram:4f06 3a 36 86       ld a,(08636h)        	;: 6 .
	ram:4f09 b7             or a                 	;.
	ram:4f0a ca 6d 0a       jp z,00a6dh          	;. m .
	ram:4f0d 21 35 86       ld hl,08635h         	;! 5 .
	ram:4f10 e7             rst 20h              	;.
	ram:4f11 d7             rst 10h              	;.
	ram:4f12 f5             push af              	;.
	ram:4f13 dc 86 29       call c,02986h        	;. . )
	ram:4f16 22 e9 85       ld (085e9h),hl       	;" . .
	ram:4f19 ed 53 eb 85    ld (085ebh),de       	;. S . .
	ram:4f1d f1             pop af               	;.
	ram:4f1e dc 27 1f       call c,01f27h        	;. ' .
	ram:4f21 3e 66          ld a,066h            	;> f
	ram:4f23 cd 23 3c       call 03c23h          	;. # <
	ram:4f26 18 03          jr l4f2bh            	;. .
l4f28h:
	ram:4f28 cd 17 3c       call 03c17h          	;. . <
l4f2bh:
	ram:4f2b f1             pop af               	;.
	ram:4f2c 21 73 4f       ld hl,l4f73h         	;! s O
	ram:4f2f 01 08 00       ld bc,00008h         	;. . .
	ram:4f32 ed b1          cpir                 	;. .
	ram:4f34 28 1b          jr z,sub_4f51h       	;( .
	ram:4f36 fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:4f3a 28 12          jr z,l4f4eh          	;( .
	ram:4f3c b7             or a                 	;.
	ram:4f3d 28 12          jr z,sub_4f51h       	;( .
	ram:4f3f fe 07          cp 007h              	;. .
	ram:4f41 38 08          jr c,l4f4bh          	;8 .
	ram:4f43 fe ee          cp 0eeh              	;. .
	ram:4f45 28 04          jr z,l4f4bh          	;( .
	ram:4f47 fe e7          cp 0e7h              	;. .
	ram:4f49 20 06          jr nz,sub_4f51h      	;.
l4f4bh:
	ram:4f4b cd 62 6c       call sub_6c62h       	;. b l
l4f4eh:
	ram:4f4e cd bd 3e       call 03ebdh          	;. . >
sub_4f51h:
	ram:4f51 cd 4b 60       call sub_604bh       	;. K `
	ram:4f54 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:4f58 c0             ret nz               	;.
	ram:4f59 e5             push hl              	;.
	ram:4f5a 26 3f          ld h,03fh            	;& ?
	ram:4f5c 2e 20          ld l,020h            	;.  
	ram:4f5e 22 65 83       ld (08365h),hl       	;" e .
	ram:4f61 22 67 83       ld (08367h),hl       	;" g .
	ram:4f64 e1             pop hl               	;.
	ram:4f65 c9             ret                  	;.
l4f66h:
	ram:4f66 f7             rst 30h              	;.
	ram:4f67 4f             ld c,a               	;O
	ram:4f68 2b             dec hl               	;+
	ram:4f69 60             ld h,b               	;`
	ram:4f6a 26 60          ld h,060h            	;& `
	ram:4f6c bd             cp l                 	;.
	ram:4f6d 4f             ld c,a               	;O
	ram:4f6e b4             or h                 	;.
	ram:4f6f 0a             ld a,(bc)            	;.
	ram:4f70 89             adc a,c              	;.
	ram:4f71 4f             ld c,a               	;O
	ram:4f72 aa             xor d                	;.
l4f73h:
	ram:next byte illegal after ed                defb 0edh            	;;4f73	ed		.
	ram:4f74 f4 ec d0       call p,0d0ech        	;. . .
	ram:4f77 cf             rst 8                	;.
	ram:4f78 f2 fc d8       jp p,0d8fch          	;. . .
l4f7bh:
	ram:4f7b fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:4f7f 28 1f          jr z,l4fa0h          	;( .
	ram:4f81 cd f7 34       call 034f7h          	;. . 4
	ram:4f84 f1             pop af               	;.
	ram:4f85 f5             push af              	;.
	ram:4f86 3d             dec a                	;=
	ram:4f87 18 14          jr l4f9dh            	;. .
	ram:4f89 fd cb 02 56    bit 2,(iy+002h)      	;. . . V
	ram:4f8d 20 05          jr nz,l4f94h         	;.
	ram:4f8f fd cb 01 76    bit 6,(iy+001h)      	;. . . v
	ram:4f93 c0             ret nz               	;.
l4f94h:
	ram:4f94 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:4f97 f5             push af              	;.
	ram:4f98 38 e1          jr c,l4f7bh          	;8 .
	ram:4f9a 3e 08          ld a,008h            	;> .
	ram:4f9c 90             sub b                	;.
l4f9dh:
	ram:4f9d 32 30 8b       ld (08b30h),a        	;2 0 .
l4fa0h:
	ram:4fa0 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:4fa3 fe 4d          cp 04dh              	;. M
	ram:4fa5 c4 f8 66       call nz,sub_66f8h    	;. . f
	ram:4fa8 cd e8 50       call sub_50e8h       	;. . P
	ram:4fab f1             pop af               	;.
	ram:4fac 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:4faf f5             push af              	;.
	ram:4fb0 fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:4fb4 28 05          jr z,l4fbbh          	;( .
	ram:4fb6 f1             pop af               	;.
	ram:4fb7 d4 fd 34       call nc,034fdh       	;. . 4
	ram:4fba c9             ret                  	;.
l4fbbh:
	ram:4fbb f1             pop af               	;.
	ram:4fbc c9             ret                  	;.
	ram:4fbd fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:4fc1 20 06          jr nz,l4fc9h         	;.
	ram:4fc3 2a aa 81       ld hl,(081aah)       	;* . .
	ram:4fc6 7c             ld a,h               	;|
	ram:4fc7 bd             cp l                 	;.
	ram:4fc8 c0             ret nz               	;.
l4fc9h:
	ram:4fc9 cd f8 66       call sub_66f8h       	;. . f
	ram:4fcc cd e8 50       call sub_50e8h       	;. . P
	ram:4fcf fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:4fd3 c4 b7 3b       call nz,03bb7h       	;. . ;
	ram:4fd6 c9             ret                  	;.
l4fd7h:
	ram:4fd7 cd f8 66       call sub_66f8h       	;. . f
	ram:4fda cd e8 50       call sub_50e8h       	;. . P
	ram:4fdd cd 49 58       call sub_5849h       	;. I X
	ram:4fe0 c3 03 35       jp 03503h            	;. . 5
sub_4fe3h:
	ram:4fe3 cd 09 35       call 03509h          	;. . 5
sub_4fe6h:
	ram:4fe6 cd 0f 35       call 0350fh          	;. . 5
	ram:4fe9 cd 5a 05       call 0055ah          	;. Z .
	ram:4fec fd cb 0d ee    set 5,(iy+00dh)      	;. . . .
	ram:4ff0 21 b4 0a       ld hl,00ab4h         	;! . .
	ram:4ff3 22 95 81       ld (08195h),hl       	;" . .
	ram:4ff6 c9             ret                  	;.
	ram:4ff7 fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:4ffb 28 61          jr z,l505eh          	;( a
	ram:4ffd fe 07          cp 007h              	;. .
	ram:4fff ca 46 5a       jp z,l5a46h          	;. F Z
	ram:5002 fe 17          cp 017h              	;. .
	ram:5004 c8             ret z                	;.
	ram:5005 fe 16          cp 016h              	;. .
	ram:5007 c8             ret z                	;.
	ram:5008 fe 06          cp 006h              	;. .
	ram:500a ca 1e 50       jp z,l501eh          	;. . P
	ram:500d fe 08          cp 008h              	;. .
	ram:500f c2 15 35       jp nz,03515h         	;. . 5
	ram:5012 cd bf 3c       call 03cbfh          	;. . <
	ram:5015 28 0c          jr z,l5023h          	;( .
	ram:5017 cd d2 01       call 001d2h          	;. . .
	ram:501a cd 1b 35       call 0351bh          	;. . 5
	ram:501d c9             ret                  	;.
l501eh:
	ram:501e cd bf 3c       call 03cbfh          	;. . <
	ram:5021 20 09          jr nz,l502ch         	;.
l5023h:
	ram:5023 cd e3 4f       call sub_4fe3h       	;. . O
	ram:5026 cd f8 66       call sub_66f8h       	;. . f
	ram:5029 c3 cf 5b       jp l5bcfh            	;. . [
l502ch:
	ram:502c cd 2b 00       call 0002bh          	;. + .
	ram:502f cd 21 35       call 03521h          	;. ! 5
	ram:5032 cd 22 26       call 02622h          	;. " &
	ram:5035 cd 4a 2e       call 02e4ah          	;. J .
	ram:5038 cd 27 35       call 03527h          	;. ' 5
	ram:503b cd f4 2d       call 02df4h          	;. . -
	ram:503e cd e6 4f       call sub_4fe6h       	;. . O
	ram:5041 3e 4f          ld a,04fh            	;> O
	ram:5043 32 64 83       ld (08364h),a        	;2 d .
	ram:5046 37             scf                  	;7
	ram:5047 cd 1a 5e       call sub_5e1ah       	;. . ^
	ram:504a 21 00 00       ld hl,00000h         	;! . .
	ram:504d cd 7a 00       call 0007ah          	;. z .
	ram:5050 28 09          jr z,l505bh          	;( .
	ram:5052 11 82 80       ld de,08082h         	;. . .
	ram:5055 cd 4d 43       call sub_434dh       	;. M C
	ram:5058 6f             ld l,a               	;o
	ram:5059 26 00          ld h,000h            	;& .
l505bh:
	ram:505b c3 aa 58       jp l58aah            	;. . X
l505eh:
	ram:505e fe 06          cp 006h              	;. .
	ram:5060 28 06          jr z,l5068h          	;( .
	ram:5062 51             ld d,c               	;Q
	ram:5063 cb 0a          rrc d                	;. .
	ram:5065 c2 64 04       jp nz,00464h         	;. d .
l5068h:
	ram:5068 fe 05          cp 005h              	;. .
	ram:506a d2 aa 51       jp nc,l51aah         	;. . Q
	ram:506d 57             ld d,a               	;W
	ram:506e 3a 64 83       ld a,(08364h)        	;: d .
	ram:5071 fe 4d          cp 04dh              	;. M
	ram:5073 28 15          jr z,l508ah          	;( .
	ram:5075 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:5079 28 12          jr z,l508dh          	;( .
	ram:507b fe 05          cp 005h              	;. .
	ram:507d 28 0b          jr z,l508ah          	;( .
	ram:507f fe 4f          cp 04fh              	;. O
	ram:5081 7a             ld a,d               	;z
	ram:5082 c2 11 59       jp nz,l5911h         	;. . Y
	ram:5085 fe 03          cp 003h              	;. .
	ram:5087 d2 11 59       jp nc,l5911h         	;. . Y
l508ah:
	ram:508a cd 4b 60       call sub_604bh       	;. K `
l508dh:
	ram:508d 3a 64 83       ld a,(08364h)        	;: d .
	ram:5090 b7             or a                 	;.
	ram:5091 20 05          jr nz,l5098h         	;.
	ram:5093 3e 07          ld a,007h            	;> .
	ram:5095 32 64 83       ld (08364h),a        	;2 d .
l5098h:
	ram:5098 7a             ld a,d               	;z
	ram:5099 ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:509d fe 02          cp 002h              	;. .
	ram:509f 28 05          jr z,l50a6h          	;( .
	ram:50a1 30 09          jr nc,l50ach         	;0 .
	ram:50a3 04             inc b                	;.
	ram:50a4 18 0b          jr l50b1h            	;. .
l50a6h:
	ram:50a6 05             dec b                	;.
	ram:50a7 18 08          jr l50b1h            	;. .
l50a9h:
	ram:50a9 0d             dec c                	;.
	ram:50aa 18 05          jr l50b1h            	;. .
l50ach:
	ram:50ac fe 04          cp 004h              	;. .
	ram:50ae 28 f9          jr z,l50a9h          	;( .
	ram:50b0 0c             inc c                	;.
l50b1h:
	ram:50b1 cd 97 6b       call 06b97h          	;. . k
	ram:50b4 38 2f          jr c,l50e5h          	;8 /
	ram:50b6 ed 43 65 83    ld (08365h),bc       	;. C e .
	ram:50ba 3a 64 83       ld a,(08364h)        	;: d .
	ram:50bd fe 2d          cp 02dh              	;. -
	ram:50bf cc 23 6b       call z,sub_6b23h     	;. # k
l50c2h:
	ram:50c2 21 b9 80       ld hl,080b9h         	;! . .
	ram:50c5 cd f3 42       call sub_42f3h       	;. . B
	ram:50c8 cd 13 00       call 00013h          	;. . .
	ram:50cb 28 0f          jr z,l50dch          	;( .
	ram:50cd ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:50d1 cd 11 21       call 02111h          	;. . !
	ram:50d4 cd 51 20       call 02051h          	;. Q  
	ram:50d7 cd 35 36       call 03635h          	;. 5 6
	ram:50da 18 09          jr l50e5h            	;. .
l50dch:
	ram:50dc cd 53 36       call 03653h          	;. S 6
	ram:50df cd 51 20       call 02051h          	;. Q  
	ram:50e2 cd 47 36       call 03647h          	;. G 6
l50e5h:
	ram:50e5 cd f5 5f       call sub_5ff5h       	;. . _
sub_50e8h:
	ram:50e8 cd bd 5e       call sub_5ebdh       	;. . ^
	ram:50eb fd cb 11 56    bit 2,(iy+011h)      	;. . . V
	ram:50ef c0             ret nz               	;.
sub_50f0h:
	ram:50f0 3a 64 83       ld a,(08364h)        	;: d .
	ram:50f3 b7             or a                 	;.
	ram:50f4 c8             ret z                	;.
	ram:50f5 fe 4d          cp 04dh              	;. M
	ram:50f7 c8             ret z                	;.
	ram:50f8 fe 05          cp 005h              	;. .
	ram:50fa ca a7 51       jp z,l51a7h          	;. . Q
	ram:50fd fe 4f          cp 04fh              	;. O
	ram:50ff 28 0b          jr z,l510ch          	;( .
	ram:5101 fd cb 04 66    bit 4,(iy+004h)      	;. . . f
	ram:5105 c0             ret nz               	;.
	ram:5106 cd 13 00       call 00013h          	;. . .
	ram:5109 c2 6d 4d       jp nz,l4d6dh         	;. m M
l510ch:
	ram:510c fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:5110 28 07          jr z,l5119h          	;( .
	ram:5112 3a 68 83       ld a,(08368h)        	;: h .
	ram:5115 b7             or a                 	;.
	ram:5116 c4 2d 4e       call nz,sub_4e2dh    	;. - N
l5119h:
	ram:5119 cd 7f 00       call 0007fh          	;. . .
	ram:511c 28 10          jr z,l512eh          	;( .
	ram:511e fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:5122 28 0a          jr z,l512eh          	;( .
	ram:5124 fd cb 04 5e    bit 3,(iy+004h)      	;. . . ^
	ram:5128 c2 68 4d       jp nz,l4d68h         	;. h M
	ram:512b c3 5d 4d       jp l4d5dh            	;. ] M
l512eh:
	ram:512e fd cb 04 5e    bit 3,(iy+004h)      	;. . . ^
	ram:5132 ca 98 51       jp z,l5198h          	;. . Q
	ram:5135 fd cb 03 76    bit 6,(iy+003h)      	;. . . v
	ram:5139 c2 98 51       jp nz,l5198h         	;. . Q
	ram:513c fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:5140 c2 98 51       jp nz,l5198h         	;. . Q
	ram:5143 21 98 51       ld hl,l5198h         	;! . Q
	ram:5146 cd b5 0a       call 00ab5h          	;. . .
	ram:5149 cd 43 26       call 02643h          	;. C &
	ram:514c d7             rst 10h              	;.
	ram:514d 38 08          jr c,l5157h          	;8 .
	ram:514f cb 76          bit 6,(hl)           	;. v
	ram:5151 c2 08 0a       jp nz,00a08h         	;. . .
	ram:5154 cd 49 3a       call 03a49h          	;. I :
l5157h:
	ram:5157 cd 3d 26       call 0263dh          	;. = &
	ram:515a d7             rst 10h              	;.
	ram:515b 38 08          jr c,l5165h          	;8 .
	ram:515d cb 76          bit 6,(hl)           	;. v
	ram:515f c2 08 0a       jp nz,00a08h         	;. . .
	ram:5162 cd 49 3a       call 03a49h          	;. I :
l5165h:
	ram:5165 cd 89 36       call 03689h          	;. . 6
	ram:5168 cf             rst 8                	;.
	ram:5169 cd 8f 36       call 0368fh          	;. . 6
	ram:516c cd a5 1e       call 01ea5h          	;. . .
	ram:516f cd 9b 25       call 0259bh          	;. . %
	ram:5172 cd db 0a       call 00adbh          	;. . .
	ram:5175 21 82 80       ld hl,08082h         	;! . .
	ram:5178 cb 86          res 0,(hl)           	;. .
	ram:517a 21 8d 80       ld hl,0808dh         	;! . .
	ram:517d cb 86          res 0,(hl)           	;. .
	ram:517f cd 45 2e       call 02e45h          	;. E .
	ram:5182 cd 41 36       call 03641h          	;. A 6
	ram:5185 cd f4 2d       call 02df4h          	;. . -
	ram:5188 cd 3b 36       call 0363bh          	;. ; 6
	ram:518b fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:518f c4 84 00       call nz,00084h       	;. . .
	ram:5192 c2 65 4d       jp nz,l4d65h         	;. e M
	ram:5195 c3 68 4d       jp l4d68h            	;. h M
l5198h:
	ram:5198 fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:519c 28 09          jr z,l51a7h          	;( .
	ram:519e cd 89 00       call 00089h          	;. . .
	ram:51a1 cc 84 00       call z,00084h        	;. . .
	ram:51a4 c2 4b 4d       jp nz,l4d4bh         	;. K M
l51a7h:
	ram:51a7 c3 4e 4d       jp l4d4eh            	;. N M
l51aah:
	ram:51aa fe 06          cp 006h              	;. .
	ram:51ac c2 7e 56       jp nz,l567eh         	;. ~ V
	ram:51af fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:51b3 ca 28 55       jp z,l5528h          	;. ( U
	ram:51b6 3a 64 83       ld a,(08364h)        	;: d .
	ram:51b9 fe 51          cp 051h              	;. Q
	ram:51bb ca f8 54       jp z,l54f8h          	;. . T
	ram:51be fe 65          cp 065h              	;. e
	ram:51c0 20 1f          jr nz,l51e1h         	;.
	ram:51c2 cd 17 60       call sub_6017h       	;. . `
	ram:51c5 3a 68 83       ld a,(08368h)        	;: h .
	ram:51c8 32 89 80       ld (08089h),a        	;2 . .
	ram:51cb 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:51ce 22 87 80       ld (08087h),hl       	;" . .
	ram:51d1 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:51d4 22 85 80       ld (08085h),hl       	;" . .
	ram:51d7 3e 67          ld a,067h            	;> g
	ram:51d9 cd fd 5d       call sub_5dfdh       	;. . ]
	ram:51dc 3e 04          ld a,004h            	;> .
	ram:51de c3 11 59       jp l5911h            	;. . Y
l51e1h:
	ram:51e1 fe 67          cp 067h              	;. g
	ram:51e3 c2 7a 52       jp nz,l527ah         	;. z R
	ram:51e6 cd 17 60       call sub_6017h       	;. . `
	ram:51e9 cd 24 2f       call 02f24h          	;. $ /
	ram:51ec 21 68 83       ld hl,08368h         	;! h .
	ram:51ef 3a 89 80       ld a,(08089h)        	;: . .
	ram:51f2 be             cp (hl)              	;.
	ram:51f3 20 0c          jr nz,l5201h         	;.
	ram:51f5 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:51f8 ed 5b 87 80    ld de,(08087h)       	;. [ . .
	ram:51fc ed 52          sbc hl,de            	;. R
	ram:51fe ca e8 50       jp z,sub_50e8h       	;. . P
l5201h:
	ram:5201 2e 16          ld l,016h            	;. .
	ram:5203 3a 68 83       ld a,(08368h)        	;: h .
	ram:5206 fe 0a          cp 00ah              	;. .
	ram:5208 38 01          jr c,l520bh          	;8 .
	ram:520a 2c             inc l                	;,
l520bh:
	ram:520b 3a 89 80       ld a,(08089h)        	;: . .
	ram:520e cd 22 61       call sub_6122h       	;. " a
	ram:5211 d5             push de              	;.
	ram:5212 cd f4 2d       call 02df4h          	;. . -
	ram:5215 26 fe          ld h,0feh            	;& .
	ram:5217 2e 3d          ld l,03dh            	;. =
	ram:5219 22 83 80       ld (08083h),hl       	;" . .
	ram:521c d1             pop de               	;.
	ram:521d 21 83 80       ld hl,08083h         	;! . .
	ram:5220 cd a5 20       call 020a5h          	;. .  
	ram:5223 7e             ld a,(hl)            	;~
	ram:5224 cd 35 61       call sub_6135h       	;. 5 a
	ram:5227 d5             push de              	;.
	ram:5228 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:522b 22 87 80       ld (08087h),hl       	;" . .
	ram:522e 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:5231 22 85 80       ld (08085h),hl       	;" . .
	ram:5234 26 fe          ld h,0feh            	;& .
	ram:5236 2e 3d          ld l,03dh            	;. =
	ram:5238 22 83 80       ld (08083h),hl       	;" . .
	ram:523b 3e 61          ld a,061h            	;> a
	ram:523d 21 82 80       ld hl,08082h         	;! . .
	ram:5240 77             ld (hl),a            	;w
	ram:5241 d1             pop de               	;.
	ram:5242 cd a3 20       call 020a3h          	;. .  
	ram:5245 cd 32 61       call sub_6132h       	;. 2 a
	ram:5248 cd 56 20       call 02056h          	;. V  
	ram:524b cd 4a 2e       call 02e4ah          	;. J .
	ram:524e cd 4a 2e       call 02e4ah          	;. J .
	ram:5251 cd 0e 61       call sub_610eh       	;. . a
	ram:5254 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5257 e5             push hl              	;.
	ram:5258 3e 05          ld a,005h            	;> .
	ram:525a 32 64 83       ld (08364h),a        	;2 d .
	ram:525d cd f5 5f       call sub_5ff5h       	;. . _
	ram:5260 cd 48 26       call 02648h          	;. H &
	ram:5263 cd 4a 2e       call 02e4ah          	;. J .
	ram:5266 cd c9 38       call 038c9h          	;. . 8
	ram:5269 cd f4 2d       call 02df4h          	;. . -
	ram:526c d7             rst 10h              	;.
	ram:526d 38 02          jr c,l5271h          	;8 .
	ram:526f cb fe          set 7,(hl)           	;. .
l5271h:
	ram:5271 cd 8f 36       call 0368fh          	;. . 6
	ram:5274 cd a2 5e       call sub_5ea2h       	;. . ^
	ram:5277 c3 79 4e       jp l4e79h            	;. y N
l527ah:
	ram:527a fe 69          cp 069h              	;. i
	ram:527c 20 0a          jr nz,l5288h         	;.
	ram:527e cd 17 60       call sub_6017h       	;. . `
	ram:5281 cd 03 5f       call sub_5f03h       	;. . _
	ram:5284 3e 6b          ld a,06bh            	;> k
	ram:5286 18 69          jr l52f1h            	;. i
l5288h:
	ram:5288 fe 6b          cp 06bh              	;. k
	ram:528a 20 54          jr nz,l52e0h         	;T
	ram:528c cd 17 60       call sub_6017h       	;. . `
	ram:528f cd f4 2d       call 02df4h          	;. . -
	ram:5292 2a 8a 80       ld hl,(0808ah)       	;* . .
	ram:5295 e5             push hl              	;.
	ram:5296 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5299 e5             push hl              	;.
	ram:529a cd 7a 00       call 0007ah          	;. z .
	ram:529d 28 2e          jr z,l52cdh          	;( .
	ram:529f cd 1d 61       call sub_611dh       	;. . a
	ram:52a2 cd 32 61       call sub_6132h       	;. 2 a
	ram:52a5 cd ea 2d       call 02deah          	;. . -
	ram:52a8 cd 3b 2e       call 02e3bh          	;. ; .
	ram:52ab cd 48 26       call 02648h          	;. H &
	ram:52ae cd 4a 2e       call 02e4ah          	;. J .
	ram:52b1 cd 40 2e       call 02e40h          	;. @ .
	ram:52b4 cd 8f 36       call 0368fh          	;. . 6
	ram:52b7 cd 3d 3a       call 03a3dh          	;. = :
l52bah:
	ram:52ba fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:52be 20 05          jr nz,l52c5h         	;.
	ram:52c0 21 65 83       ld hl,08365h         	;! e .
	ram:52c3 cb fe          set 7,(hl)           	;. .
l52c5h:
	ram:52c5 21 ae 30       ld hl,030aeh         	;! . 0
	ram:52c8 cd 8a 5e       call sub_5e8ah       	;. . ^
	ram:52cb 18 62          jr l532fh            	;. b
l52cdh:
	ram:52cd cd 03 5f       call sub_5f03h       	;. . _
	ram:52d0 cd 17 6c       call sub_6c17h       	;. . l
	ram:52d3 cd 7f 00       call 0007fh          	;. . .
	ram:52d6 f5             push af              	;.
	ram:52d7 c4 23 39       call nz,03923h       	;. # 9
	ram:52da f1             pop af               	;.
	ram:52db cc 1d 39       call z,0391dh        	;. . 9
	ram:52de 18 da          jr l52bah            	;. .
l52e0h:
	ram:52e0 fe 5b          cp 05bh              	;. [
	ram:52e2 20 13          jr nz,l52f7h         	;.
	ram:52e4 cd 11 60       call sub_6011h       	;. . `
	ram:52e7 cd 8f 36       call 0368fh          	;. . 6
	ram:52ea df             rst 18h              	;.
	ram:52eb cd 89 36       call 03689h          	;. . 6
	ram:52ee df             rst 18h              	;.
	ram:52ef 3e 5d          ld a,05dh            	;> ]
l52f1h:
	ram:52f1 cd fd 5d       call sub_5dfdh       	;. . ]
	ram:52f4 c3 e8 50       jp sub_50e8h         	;. . P
l52f7h:
	ram:52f7 fe 5d          cp 05dh              	;. ]
	ram:52f9 20 4a          jr nz,l5345h         	;J
	ram:52fb cd 11 60       call sub_6011h       	;. . `
	ram:52fe cd f4 2d       call 02df4h          	;. . -
	ram:5301 2a 8a 80       ld hl,(0808ah)       	;* . .
	ram:5304 e5             push hl              	;.
	ram:5305 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5308 e5             push hl              	;.
	ram:5309 cd 89 36       call 03689h          	;. . 6
	ram:530c cd ef 2d       call 02defh          	;. . -
	ram:530f cd 71 0d       call 00d71h          	;. q .
	ram:5312 cd f5 1f       call 01ff5h          	;. . .
	ram:5315 cd 8f 36       call 0368fh          	;. . 6
	ram:5318 cd ef 2d       call 02defh          	;. . -
	ram:531b cd 71 0d       call 00d71h          	;. q .
	ram:531e cd 07 20       call 02007h          	;. .  
	ram:5321 cd 27 3e       call 03e27h          	;. ' >
	ram:5324 21 09 31       ld hl,03109h         	;! . 1
	ram:5327 cd 8a 5e       call sub_5e8ah       	;. . ^
	ram:532a d1             pop de               	;.
	ram:532b d5             push de              	;.
	ram:532c cd 47 69       call sub_6947h       	;. G i
l532fh:
	ram:532f 2a 65 83       ld hl,(08365h)       	;* e .
	ram:5332 e3             ex (sp),hl           	;.
	ram:5333 cd 37 53       call sub_5337h       	;. 7 S
	ram:5336 e1             pop hl               	;.
sub_5337h:
	ram:5337 22 65 83       ld (08365h),hl       	;" e .
	ram:533a 3e 06          ld a,006h            	;> .
	ram:533c cd 05 6a       call sub_6a05h       	;. . j
	ram:533f 21 65 83       ld hl,08365h         	;! e .
	ram:5342 cb be          res 7,(hl)           	;. .
	ram:5344 c9             ret                  	;.
l5345h:
	ram:5345 fe 73          cp 073h              	;. s
	ram:5347 20 3c          jr nz,l5385h         	;<
	ram:5349 cd 17 60       call sub_6017h       	;. . `
	ram:534c fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:5350 f5             push af              	;.
	ram:5351 2a 65 83       ld hl,(08365h)       	;* e .
	ram:5354 e5             push hl              	;.
	ram:5355 cd 03 44       call sub_4403h       	;. . D
	ram:5358 e1             pop hl               	;.
	ram:5359 22 65 83       ld (08365h),hl       	;" e .
	ram:535c cd 47 1f       call 01f47h          	;. G .
	ram:535f 20 0e          jr nz,l536fh         	;.
	ram:5361 cd 9b 25       call 0259bh          	;. . %
	ram:5364 cd 69 3e       call 03e69h          	;. i >
	ram:5367 cd 57 4e       call sub_4e57h       	;. W N
l536ah:
	ram:536a cd bd 5e       call sub_5ebdh       	;. . ^
	ram:536d 18 62          jr l53d1h            	;. b
l536fh:
	ram:536f 21 29 31       ld hl,03129h         	;! ) 1
	ram:5372 cd f4 4c       call sub_4cf4h       	;. . L
	ram:5375 fd cb 05 ce    set 1,(iy+005h)      	;. . . .
	ram:5379 cd aa 4e       call sub_4eaah       	;. . N
	ram:537c cd 9f 3b       call 03b9fh          	;. . ;
	ram:537f fd cb 05 8e    res 1,(iy+005h)      	;. . . .
	ram:5383 18 e5          jr l536ah            	;. .
l5385h:
	ram:5385 fe 6d          cp 06dh              	;. m
	ram:5387 28 0c          jr z,l5395h          	;( .
	ram:5389 fe 71          cp 071h              	;. q
	ram:538b 28 08          jr z,l5395h          	;( .
	ram:538d fe 6f          cp 06fh              	;. o
	ram:538f 28 04          jr z,l5395h          	;( .
	ram:5391 fe 63          cp 063h              	;. c
	ram:5393 20 7a          jr nz,l540fh         	;z
l5395h:
	ram:5395 cd 17 60       call sub_6017h       	;. . `
	ram:5398 fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:539c f5             push af              	;.
	ram:539d 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:53a0 e5             push hl              	;.
	ram:53a1 cd 17 6c       call sub_6c17h       	;. . l
	ram:53a4 3a 64 83       ld a,(08364h)        	;: d .
	ram:53a7 cd 7a 00       call 0007ah          	;. z .
	ram:53aa 20 31          jr nz,l53ddh         	;1
	ram:53ac cd 7f 00       call 0007fh          	;. . .
	ram:53af 20 31          jr nz,l53e2h         	;1
	ram:53b1 fe 63          cp 063h              	;. c
	ram:53b3 20 41          jr nz,l53f6h         	;A
	ram:53b5 3e 79          ld a,079h            	;> y
	ram:53b7 32 84 80       ld (08084h),a        	;2 . .
	ram:53ba cd 4a 2e       call 02e4ah          	;. J .
	ram:53bd 3e 78          ld a,078h            	;> x
	ram:53bf 32 84 80       ld (08084h),a        	;2 . .
	ram:53c2 cd ed 38       call 038edh          	;. . 8
l53c5h:
	ram:53c5 21 29 31       ld hl,03129h         	;! ) 1
l53c8h:
	ram:53c8 cd 47 1f       call 01f47h          	;. G .
	ram:53cb c2 14 0a       jp nz,00a14h         	;. . .
	ram:53ce cd 8a 5e       call sub_5e8ah       	;. . ^
l53d1h:
	ram:53d1 f1             pop af               	;.
	ram:53d2 c8             ret z                	;.
	ram:53d3 fd cb 03 d6    set 2,(iy+003h)      	;. . . .
	ram:53d7 3e 4d          ld a,04dh            	;> M
	ram:53d9 32 64 83       ld (08364h),a        	;2 d .
	ram:53dc c9             ret                  	;.
l53ddh:
	ram:53dd cd d5 38       call 038d5h          	;. . 8
	ram:53e0 18 e3          jr l53c5h            	;. .
l53e2h:
	ram:53e2 fe 6d          cp 06dh              	;. m
	ram:53e4 28 08          jr z,l53eeh          	;( .
	ram:53e6 cd e7 38       call 038e7h          	;. . 8
	ram:53e9 cd 23 10       call 01023h          	;. # .
	ram:53ec 18 d7          jr l53c5h            	;. .
l53eeh:
	ram:53ee cd db 38       call 038dbh          	;. . 8
	ram:53f1 21 14 31       ld hl,03114h         	;! . 1
	ram:53f4 18 d2          jr l53c8h            	;. .
l53f6h:
	ram:53f6 fe 71          cp 071h              	;. q
	ram:53f8 28 0d          jr z,l5407h          	;( .
	ram:53fa 3e 79          ld a,079h            	;> y
	ram:53fc 32 84 80       ld (08084h),a        	;2 . .
	ram:53ff cd e1 38       call 038e1h          	;. . 8
	ram:5402 21 22 31       ld hl,03122h         	;! " 1
	ram:5405 18 c1          jr l53c8h            	;. .
l5407h:
	ram:5407 cd e1 38       call 038e1h          	;. . 8
	ram:540a 21 1b 31       ld hl,0311bh         	;! . 1
	ram:540d 18 b9          jr l53c8h            	;. .
l540fh:
	ram:540f fe 5f          cp 05fh              	;. _
	ram:5411 20 13          jr nz,l5426h         	;.
	ram:5413 cd 8f 36       call 0368fh          	;. . 6
	ram:5416 3e 1a          ld a,01ah            	;> .
	ram:5418 cd 23 36       call 03623h          	;. # 6
	ram:541b 3e 75          ld a,075h            	;> u
	ram:541d 32 64 83       ld (08364h),a        	;2 d .
	ram:5420 cd f8 66       call sub_66f8h       	;. . f
	ram:5423 c3 e8 50       jp sub_50e8h         	;. . P
l5426h:
	ram:5426 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5429 e5             push hl              	;.
	ram:542a 57             ld d,a               	;W
	ram:542b 3e 05          ld a,005h            	;> .
	ram:542d 32 64 83       ld (08364h),a        	;2 d .
	ram:5430 cd f5 5f       call sub_5ff5h       	;. . _
	ram:5433 7a             ld a,d               	;z
	ram:5434 fe 59          cp 059h              	;. Y
	ram:5436 28 5f          jr z,l5497h          	;( _
	ram:5438 fe 57          cp 057h              	;. W
	ram:543a 28 15          jr z,l5451h          	;( .
	ram:543c fe 55          cp 055h              	;. U
	ram:543e 28 20          jr z,l5460h          	;(  
	ram:5440 fe 61          cp 061h              	;. a
	ram:5442 28 2b          jr z,l546fh          	;( +
	ram:5444 fe 53          cp 053h              	;. S
	ram:5446 28 67          jr z,l54afh          	;( g
	ram:5448 fe 75          cp 075h              	;. u
	ram:544a ca ca 54       jp z,l54cah          	;. . T
	ram:544d e1             pop hl               	;.
	ram:544e c3 4b 60       jp sub_604bh         	;. K `
l5451h:
	ram:5451 cd 0e 61       call sub_610eh       	;. . a
	ram:5454 cd 17 6c       call sub_6c17h       	;. . l
	ram:5457 cd 2d 35       call 0352dh          	;. - 5
	ram:545a cd a2 5e       call sub_5ea2h       	;. . ^
	ram:545d c3 83 4e       jp l4e83h            	;. . N
l5460h:
	ram:5460 cd 0e 61       call sub_610eh       	;. . a
	ram:5463 cd 17 6c       call sub_6c17h       	;. . l
	ram:5466 cd 33 35       call 03533h          	;. 3 5
	ram:5469 cd a2 5e       call sub_5ea2h       	;. . ^
	ram:546c c3 7e 4e       jp l4e7eh            	;. ~ N
l546fh:
	ram:546f cd 98 21       call 02198h          	;. . !
	ram:5472 cd 69 5f       call sub_5f69h       	;. i _
	ram:5475 32 75 83       ld (08375h),a        	;2 u .
	ram:5478 cd db 35       call 035dbh          	;. . 5
	ram:547b cd 3d 5a       call sub_5a3dh       	;. = Z
	ram:547e cd 0b 00       call 0000bh          	;. . .
	ram:5481 ca 14 0a       jp z,00a14h          	;. . .
	ram:5484 cd 0c 5f       call sub_5f0ch       	;. . _
	ram:5487 cd 89 36       call 03689h          	;. . 6
	ram:548a cd 69 3e       call 03e69h          	;. i >
	ram:548d e1             pop hl               	;.
	ram:548e 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:5491 cd bd 5e       call sub_5ebdh       	;. . ^
	ram:5494 c3 74 4e       jp l4e74h            	;. t N
l5497h:
	ram:5497 cd 0e 61       call sub_610eh       	;. . a
	ram:549a cd 1d 61       call sub_611dh       	;. . a
	ram:549d cd 32 61       call sub_6132h       	;. 2 a
	ram:54a0 cd 56 20       call 02056h          	;. V  
	ram:54a3 cd cf 38       call 038cfh          	;. . 8
	ram:54a6 cd 8f 36       call 0368fh          	;. . 6
	ram:54a9 cd a2 5e       call sub_5ea2h       	;. . ^
	ram:54ac c3 6f 4e       jp l4e6fh            	;. o N
l54afh:
	ram:54af cd 0e 61       call sub_610eh       	;. . a
	ram:54b2 cd 17 6c       call sub_6c17h       	;. . l
	ram:54b5 cd 4a 2e       call 02e4ah          	;. J .
	ram:54b8 cd 48 26       call 02648h          	;. H &
	ram:54bb cd 4a 2e       call 02e4ah          	;. J .
	ram:54be cd c9 38       call 038c9h          	;. . 8
	ram:54c1 cd 8f 36       call 0368fh          	;. . 6
	ram:54c4 cd a2 5e       call sub_5ea2h       	;. . ^
	ram:54c7 c3 88 4e       jp l4e88h            	;. . N
l54cah:
	ram:54ca cd 8f 36       call 0368fh          	;. . 6
	ram:54cd 3e 1b          ld a,01bh            	;> .
	ram:54cf cd 23 36       call 03623h          	;. # 6
	ram:54d2 cd f8 66       call sub_66f8h       	;. . f
	ram:54d5 cd bd 5e       call sub_5ebdh       	;. . ^
	ram:54d8 cd 17 6c       call sub_6c17h       	;. . l
	ram:54db cd 4a 2e       call 02e4ah          	;. J .
	ram:54de cd 48 26       call 02648h          	;. H &
	ram:54e1 cd 4a 2e       call 02e4ah          	;. J .
	ram:54e4 21 9f 84       ld hl,0849fh         	;! . .
	ram:54e7 cd 4d 2e       call 02e4dh          	;. M .
	ram:54ea 21 a9 84       ld hl,084a9h         	;! . .
	ram:54ed e7             rst 20h              	;.
	ram:54ee cd 31 3a       call 03a31h          	;. 1 :
	ram:54f1 21 51 33       ld hl,03351h         	;! Q 3
	ram:54f4 cd 8a 5e       call sub_5e8ah       	;. . ^
	ram:54f7 c9             ret                  	;.
l54f8h:
	ram:54f8 fd cb 03 76    bit 6,(iy+003h)      	;. . . v
	ram:54fc c2 46 5a       jp nz,l5a46h         	;. F Z
	ram:54ff fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:5503 c2 46 5a       jp nz,l5a46h         	;. F Z
	ram:5506 21 b9 80       ld hl,080b9h         	;! . .
	ram:5509 cd 69 21       call 02169h          	;. i !
	ram:550c 21 ec 64       ld hl,l64ech         	;! . d
	ram:550f cd b5 0a       call 00ab5h          	;. . .
	ram:5512 af             xor a                	;.
	ram:5513 21 b9 80       ld hl,080b9h         	;! . .
	ram:5516 11 b9 80       ld de,080b9h         	;. . .
	ram:5519 cd 6d 61       call sub_616dh       	;. m a
	ram:551c cd db 0a       call 00adbh          	;. . .
	ram:551f cd 51 4f       call sub_4f51h       	;. Q O
l5522h:
	ram:5522 cd eb 5d       call sub_5debh       	;. . ]
	ram:5525 c3 8f 57       jp l578fh            	;. . W
l5528h:
	ram:5528 3a 64 83       ld a,(08364h)        	;: d .
	ram:552b fe 1d          cp 01dh              	;. .
	ram:552d 20 0f          jr nz,l553eh         	;.
	ram:552f ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:5533 ed 5b 67 83    ld de,(08367h)       	;. [ g .
	ram:5537 cd af 6a       call sub_6aafh       	;. . j
	ram:553a 3e 1b          ld a,01bh            	;> .
	ram:553c 18 09          jr l5547h            	;. .
l553eh:
	ram:553e fe 27          cp 027h              	;. '
	ram:5540 20 08          jr nz,l554ah         	;.
	ram:5542 cd 8c 47       call sub_478ch       	;. . G
	ram:5545 3e 25          ld a,025h            	;> %
l5547h:
	ram:5547 c3 c2 5b       jp l5bc2h            	;. . [
l554ah:
	ram:554a fe 0f          cp 00fh              	;. .
	ram:554c 28 04          jr z,l5552h          	;( .
	ram:554e fe 11          cp 011h              	;. .
	ram:5550 20 1c          jr nz,l556eh         	;.
l5552h:
	ram:5552 21 ec 64       ld hl,l64ech         	;! . d
	ram:5555 cd b5 0a       call 00ab5h          	;. . .
	ram:5558 f5             push af              	;.
	ram:5559 21 b9 80       ld hl,080b9h         	;! . .
	ram:555c cd 69 21       call 02169h          	;. i !
	ram:555f f1             pop af               	;.
	ram:5560 21 2e 84       ld hl,0842eh         	;! . .
	ram:5563 11 b9 80       ld de,080b9h         	;. . .
	ram:5566 fe 11          cp 011h              	;. .
	ram:5568 28 22          jr z,l558ch          	;( "
	ram:556a eb             ex de,hl             	;.
	ram:556b b7             or a                 	;.
	ram:556c 18 1b          jr l5589h            	;. .
l556eh:
	ram:556e fe 0b          cp 00bh              	;. .
	ram:5570 20 09          jr nz,l557bh         	;.
	ram:5572 21 ec 64       ld hl,l64ech         	;! . d
	ram:5575 cd b5 0a       call 00ab5h          	;. . .
	ram:5578 37             scf                  	;7
	ram:5579 18 0b          jr l5586h            	;. .
l557bh:
	ram:557b fe 0d          cp 00dh              	;. .
	ram:557d 20 25          jr nz,l55a4h         	;%
	ram:557f 21 ec 64       ld hl,l64ech         	;! . d
	ram:5582 cd b5 0a       call 00ab5h          	;. . .
	ram:5585 b7             or a                 	;.
l5586h:
	ram:5586 21 2e 84       ld hl,0842eh         	;! . .
l5589h:
	ram:5589 11 24 84       ld de,08424h         	;. $ .
l558ch:
	ram:558c cd 6d 61       call sub_616dh       	;. m a
	ram:558f cd db 0a       call 00adbh          	;. . .
	ram:5592 3a 64 83       ld a,(08364h)        	;: d .
	ram:5595 cd 1b 00       call 0001bh          	;. . .
	ram:5598 cd 62 6c       call sub_6c62h       	;. b l
	ram:559b fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:559f 28 a6          jr z,l5547h          	;( .
	ram:55a1 c3 46 5a       jp l5a46h            	;. F Z
l55a4h:
	ram:55a4 fe 29          cp 029h              	;. )
	ram:55a6 20 05          jr nz,l55adh         	;.
	ram:55a8 cd a6 6a       call 06aa6h          	;. . j
	ram:55ab 18 2f          jr l55dch            	;. /
l55adh:
	ram:55ad fe 2b          cp 02bh              	;. +
	ram:55af 20 09          jr nz,l55bah         	;.
	ram:55b1 3e 2d          ld a,02dh            	;> -
	ram:55b3 32 64 83       ld (08364h),a        	;2 d .
	ram:55b6 16 01          ld d,001h            	;. .
	ram:55b8 18 1b          jr l55d5h            	;. .
l55bah:
	ram:55ba fe 2d          cp 02dh              	;. -
	ram:55bc 20 07          jr nz,l55c5h         	;.
	ram:55be 3e 2b          ld a,02bh            	;> +
	ram:55c0 32 64 83       ld (08364h),a        	;2 d .
	ram:55c3 18 17          jr l55dch            	;. .
l55c5h:
	ram:55c5 16 00          ld d,000h            	;. .
	ram:55c7 fe 21          cp 021h              	;. !
	ram:55c9 28 0a          jr z,l55d5h          	;( .
	ram:55cb 14             inc d                	;.
	ram:55cc fe 1f          cp 01fh              	;. .
	ram:55ce 28 05          jr z,l55d5h          	;( .
	ram:55d0 14             inc d                	;.
	ram:55d1 fe 23          cp 023h              	;. #
	ram:55d3 20 0a          jr nz,l55dfh         	;.
l55d5h:
	ram:55d5 ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:55d9 cd 25 6b       call sub_6b25h       	;. % k
l55dch:
	ram:55dc c3 e5 50       jp l50e5h            	;. . P
l55dfh:
	ram:55df fe 15          cp 015h              	;. .
	ram:55e1 20 12          jr nz,l55f5h         	;.
	ram:55e3 cd 4b 60       call sub_604bh       	;. K `
	ram:55e6 cd 8f 36       call 0368fh          	;. . 6
	ram:55e9 cd 8d 20       call 0208dh          	;. .  
	ram:55ec cd 89 36       call 03689h          	;. . 6
	ram:55ef cd 60 63       call sub_6360h       	;. ` c
	ram:55f2 c3 22 55       jp l5522h            	;. " U
l55f5h:
	ram:55f5 fe 17          cp 017h              	;. .
	ram:55f7 20 04          jr nz,l55fdh         	;.
	ram:55f9 3e 1a          ld a,01ah            	;> .
	ram:55fb 18 06          jr l5603h            	;. .
l55fdh:
	ram:55fd fe 19          cp 019h              	;. .
	ram:55ff 20 18          jr nz,l5619h         	;.
	ram:5601 3e 1b          ld a,01bh            	;> .
l5603h:
	ram:5603 f5             push af              	;.
	ram:5604 cd 13 00       call 00013h          	;. . .
	ram:5607 28 06          jr z,l560fh          	;( .
	ram:5609 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:560c e7             rst 20h              	;.
	ram:560d 18 03          jr l5612h            	;. .
l560fh:
	ram:560f cd 8f 36       call 0368fh          	;. . 6
l5612h:
	ram:5612 f1             pop af               	;.
	ram:5613 cd 23 36       call 03623h          	;. # 6
	ram:5616 c3 46 5a       jp l5a46h            	;. F Z
l5619h:
	ram:5619 fe 13          cp 013h              	;. .
	ram:561b 20 05          jr nz,l5622h         	;.
	ram:561d 3e 09          ld a,009h            	;> .
	ram:561f c3 72 56       jp l5672h            	;. r V
l5622h:
	ram:5622 fe 09          cp 009h              	;. .
	ram:5624 20 3d          jr nz,l5663h         	;=
	ram:5626 cd 4b 60       call sub_604bh       	;. K `
	ram:5629 2a 67 83       ld hl,(08367h)       	;* g .
	ram:562c ed 5b 65 83    ld de,(08365h)       	;. [ e .
	ram:5630 7c             ld a,h               	;|
	ram:5631 ba             cp d                 	;.
	ram:5632 ca 5d 0a       jp z,00a5dh          	;. ] .
	ram:5635 38 01          jr c,l5638h          	;8 .
	ram:5637 eb             ex de,hl             	;.
l5638h:
	ram:5638 7d             ld a,l               	;}
	ram:5639 bb             cp e                 	;.
	ram:563a ca 5d 0a       jp z,00a5dh          	;. ] .
	ram:563d 38 02          jr c,l5641h          	;8 .
	ram:563f 6b             ld l,e               	;k
	ram:5640 5f             ld e,a               	;_
l5641h:
	ram:5641 22 67 83       ld (08367h),hl       	;" g .
	ram:5644 ed 53 65 83    ld (08365h),de       	;. S e .
	ram:5648 4d             ld c,l               	;M
	ram:5649 44             ld b,h               	;D
	ram:564a 11 ae 80       ld de,080aeh         	;. . .
	ram:564d 21 b9 80       ld hl,080b9h         	;! . .
	ram:5650 cd f6 42       call sub_42f6h       	;. . B
	ram:5653 ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:5657 cd f0 42       call sub_42f0h       	;. . B
	ram:565a cd e5 5f       call sub_5fe5h       	;. . _
	ram:565d cd a8 63       call sub_63a8h       	;. . c
	ram:5660 c3 22 55       jp l5522h            	;. " U
l5663h:
	ram:5663 fe 25          cp 025h              	;. %
	ram:5665 20 04          jr nz,l566bh         	;.
	ram:5667 3e 27          ld a,027h            	;> '
	ram:5669 18 07          jr l5672h            	;. .
l566bh:
	ram:566b fe 1b          cp 01bh              	;. .
	ram:566d c2 4b 60       jp nz,sub_604bh      	;. K `
	ram:5670 3e 1d          ld a,01dh            	;> .
l5672h:
	ram:5672 32 64 83       ld (08364h),a        	;2 d .
	ram:5675 2a 65 83       ld hl,(08365h)       	;* e .
	ram:5678 22 67 83       ld (08367h),hl       	;" g .
	ram:567b c3 e5 50       jp l50e5h            	;. . P
l567eh:
	ram:567e fe 07          cp 007h              	;. .
	ram:5680 ca 46 5a       jp z,l5a46h          	;. F Z
	ram:5683 fe ee          cp 0eeh              	;. .
	ram:5685 20 5d          jr nz,l56e4h         	;]
	ram:5687 06 08          ld b,008h            	;. .
l5689h:
	ram:5689 3e 6a          ld a,06ah            	;> j
l568bh:
	ram:568b ed 43 65 8a    ld (08a65h),bc       	;. C e .
	ram:568f cd 4b 60       call sub_604bh       	;. K `
	ram:5692 cd 85 3d       call 03d85h          	;. . =
	ram:5695 c3 39 35       jp 03539h            	;. 9 5
l5698h:
	ram:5698 f5             push af              	;.
	ram:5699 cd cf 2d       call 02dcfh          	;. . -
	ram:569c f1             pop af               	;.
	ram:569d c3 3f 35       jp 0353fh            	;. ? 5
	ram:56a0 30 36          jr nc,l56d8h         	;0 6
	ram:56a2 df             rst 18h              	;.
	ram:56a3 21 98 56       ld hl,l5698h         	;! . V
	ram:56a6 cd b5 0a       call 00ab5h          	;. . .
	ram:56a9 3e 11          ld a,011h            	;> .
	ram:56ab cd 45 35       call 03545h          	;. E 5
	ram:56ae cd d3 37       call 037d3h          	;. . 7
	ram:56b1 ed 4b 65 8a    ld bc,(08a65h)       	;. K e .
	ram:56b5 cb 38          srl b                	;. 8
	ram:56b7 da e0 57       jp c,l57e0h          	;. . W
	ram:56ba cb 38          srl b                	;. 8
	ram:56bc da ee 57       jp c,l57eeh          	;. . W
	ram:56bf cb 38          srl b                	;. 8
	ram:56c1 38 29          jr c,l56ech          	;8 )
	ram:56c3 fe 1f          cp 01fh              	;. .
	ram:56c5 28 08          jr z,l56cfh          	;( .
	ram:56c7 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:56ca cb 76          bit 6,(hl)           	;. v
	ram:56cc c2 4d 0a       jp nz,00a4dh         	;. M .
l56cfh:
	ram:56cf cd c7 37       call 037c7h          	;. . 7
l56d2h:
	ram:56d2 cd db 0a       call 00adbh          	;. . .
	ram:56d5 cd cf 2d       call 02dcfh          	;. . -
l56d8h:
	ram:56d8 cd 5a 05       call 0055ah          	;. Z .
	ram:56db cd 4b 35       call 0354bh          	;. K 5
	ram:56de cd dc 5d       call sub_5ddch       	;. . ]
	ram:56e1 c3 cf 5b       jp l5bcfh            	;. . [
l56e4h:
	ram:56e4 fe e7          cp 0e7h              	;. .
	ram:56e6 20 38          jr nz,l5720h         	;8
	ram:56e8 06 04          ld b,004h            	;. .
	ram:56ea 18 9d          jr l5689h            	;. .
l56ech:
	ram:56ec fe 1f          cp 01fh              	;. .
	ram:56ee ca 38 0a       jp z,00a38h          	;. 8 .
	ram:56f1 06 0d          ld b,00dh            	;. .
	ram:56f3 cd 7a 00       call 0007ah          	;. z .
	ram:56f6 20 10          jr nz,l5708h         	;.
	ram:56f8 06 0e          ld b,00eh            	;. .
	ram:56fa cd 7f 00       call 0007fh          	;. . .
	ram:56fd 20 09          jr nz,l5708h         	;.
	ram:56ff 06 0f          ld b,00fh            	;. .
	ram:5701 cd 84 00       call 00084h          	;. . .
	ram:5704 20 02          jr nz,l5708h         	;.
	ram:5706 06 10          ld b,010h            	;. .
l5708h:
	ram:5708 b8             cp b                 	;.
	ram:5709 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:570c cd cd 37       call 037cdh          	;. . 7
	ram:570f cd db 0a       call 00adbh          	;. . .
	ram:5712 cd cf 2d       call 02dcfh          	;. . -
	ram:5715 cd 5a 05       call 0055ah          	;. Z .
	ram:5718 cd 4b 35       call 0354bh          	;. K 5
	ram:571b cd dc 5d       call sub_5ddch       	;. . ]
	ram:571e 18 6f          jr l578fh            	;. o
l5720h:
	ram:5720 fe ed          cp 0edh              	;. .
	ram:5722 20 08          jr nz,l572ch         	;.
	ram:5724 cd e5 5f       call sub_5fe5h       	;. . _
	ram:5727 cd e7 65       call sub_65e7h       	;. . e
	ram:572a 18 63          jr l578fh            	;. c
l572ch:
	ram:572c fe f4          cp 0f4h              	;. .
	ram:572e 20 05          jr nz,l5735h         	;.
	ram:5730 cd 12 64       call sub_6412h       	;. . d
	ram:5733 18 5a          jr l578fh            	;. Z
l5735h:
	ram:5735 fe fc          cp 0fch              	;. .
	ram:5737 20 05          jr nz,l573eh         	;.
	ram:5739 cd f6 63       call sub_63f6h       	;. . c
	ram:573c 18 51          jr l578fh            	;. Q
l573eh:
	ram:573e fe d8          cp 0d8h              	;. .
	ram:5740 20 05          jr nz,l5747h         	;.
	ram:5742 cd 00 65       call sub_6500h       	;. . e
	ram:5745 18 48          jr l578fh            	;. H
l5747h:
	ram:5747 fe ec          cp 0ech              	;. .
	ram:5749 20 05          jr nz,l5750h         	;.
	ram:574b cd 7f 64       call sub_647fh       	;. . d
	ram:574e 18 3f          jr l578fh            	;. ?
l5750h:
	ram:5750 fe d0          cp 0d0h              	;. .
	ram:5752 20 05          jr nz,l5759h         	;.
	ram:5754 cd d2 63       call sub_63d2h       	;. . c
	ram:5757 18 36          jr l578fh            	;. 6
l5759h:
	ram:5759 fe eb          cp 0ebh              	;. .
	ram:575b 20 05          jr nz,l5762h         	;.
	ram:575d cd 7c 64       call sub_647ch       	;. | d
	ram:5760 18 30          jr l5792h            	;. 0
l5762h:
	ram:5762 fe cc          cp 0cch              	;. .
	ram:5764 28 2c          jr z,l5792h          	;( ,
	ram:5766 fe 81          cp 081h              	;. .
	ram:5768 28 28          jr z,l5792h          	;( (
	ram:576a fe cf          cp 0cfh              	;. .
	ram:576c 28 21          jr z,l578fh          	;( !
	ram:576e fe 08          cp 008h              	;. .
	ram:5770 20 16          jr nz,l5788h         	;.
	ram:5772 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:5775 fe 08          cp 008h              	;. .
	ram:5777 28 05          jr z,l577eh          	;( .
	ram:5779 cd 29 3c       call 03c29h          	;. ) <
	ram:577c 18 07          jr l5785h            	;. .
l577eh:
	ram:577e 3a 64 83       ld a,(08364h)        	;: d .
	ram:5781 b7             or a                 	;.
	ram:5782 ca 64 04       jp z,00464h          	;. d .
l5785h:
	ram:5785 c3 cf 5b       jp l5bcfh            	;. . [
l5788h:
	ram:5788 fe f2          cp 0f2h              	;. .
	ram:578a 20 07          jr nz,l5793h         	;.
	ram:578c cd 54 65       call sub_6554h       	;. T e
l578fh:
	ram:578f cd 1b 00       call 0001bh          	;. . .
l5792h:
	ram:5792 af             xor a                	;.
l5793h:
	ram:5793 fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:5797 c4 62 6c       call nz,sub_6c62h    	;. b l
	ram:579a fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:579e 20 e5          jr nz,l5785h         	;.
	ram:57a0 fe d3          cp 0d3h              	;. .
	ram:57a2 20 08          jr nz,l57ach         	;.
	ram:57a4 cd de 5f       call sub_5fdeh       	;. . _
	ram:57a7 cd 86 48       call sub_4886h       	;. . H
	ram:57aa 18 24          jr l57d0h            	;. $
l57ach:
	ram:57ac fe dc          cp 0dch              	;. .
	ram:57ae 20 0a          jr nz,l57bah         	;.
	ram:57b0 cd b3 5f       call sub_5fb3h       	;. . _
	ram:57b3 3e 02          ld a,002h            	;> .
	ram:57b5 cd d9 37       call 037d9h          	;. . 7
	ram:57b8 18 16          jr l57d0h            	;. .
l57bah:
	ram:57ba fe ea          cp 0eah              	;. .
	ram:57bc 20 08          jr nz,l57c6h         	;.
	ram:57be cd b3 5f       call sub_5fb3h       	;. . _
	ram:57c1 cd e5 37       call 037e5h          	;. . 7
	ram:57c4 18 0a          jr l57d0h            	;. .
l57c6h:
	ram:57c6 fe f6          cp 0f6h              	;. .
	ram:57c8 20 0b          jr nz,l57d5h         	;.
	ram:57ca cd b3 5f       call sub_5fb3h       	;. . _
	ram:57cd cd df 37       call 037dfh          	;. . 7
l57d0h:
	ram:57d0 cd c5 05       call 005c5h          	;. . .
	ram:57d3 18 b0          jr l5785h            	;. .
l57d5h:
	ram:57d5 fe e8          cp 0e8h              	;. .
	ram:57d7 20 0d          jr nz,l57e6h         	;.
	ram:57d9 06 01          ld b,001h            	;. .
l57dbh:
	ram:57db 3e 69          ld a,069h            	;> i
	ram:57dd c3 8b 56       jp l568bh            	;. . V
l57e0h:
	ram:57e0 cd c1 37       call 037c1h          	;. . 7
	ram:57e3 c3 d2 56       jp l56d2h            	;. . V
l57e6h:
	ram:57e6 fe ef          cp 0efh              	;. .
	ram:57e8 20 1b          jr nz,l5805h         	;.
	ram:57ea 06 02          ld b,002h            	;. .
	ram:57ec 18 ed          jr l57dbh            	;. .
l57eeh:
	ram:57ee fe 11          cp 011h              	;. .
	ram:57f0 c4 49 3a       call nz,03a49h       	;. I :
	ram:57f3 fe 1f          cp 01fh              	;. .
	ram:57f5 28 08          jr z,l57ffh          	;( .
	ram:57f7 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:57fa cb 76          bit 6,(hl)           	;. v
l57fch:
	ram:57fc c2 4d 0a       jp nz,00a4dh         	;. M .
l57ffh:
	ram:57ff cd bb 37       call 037bbh          	;. . 7
	ram:5802 c3 d2 56       jp l56d2h            	;. . V
l5805h:
	ram:5805 fe d7          cp 0d7h              	;. .
	ram:5807 c2 94 58       jp nz,l5894h         	;. . X
	ram:580a cd 11 5e       call sub_5e11h       	;. . ^
	ram:580d 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:5810 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:5813 20 0c          jr nz,l5821h         	;.
	ram:5815 cd 89 00       call 00089h          	;. . .
	ram:5818 ca cf 5b       jp z,l5bcfh          	;. . [
	ram:581b cd 29 73       call sub_7329h       	;. ) s
	ram:581e da cf 5b       jp c,l5bcfh          	;. . [
l5821h:
	ram:5821 cd cf 5b       call l5bcfh          	;. . [
	ram:5824 cd 49 58       call sub_5849h       	;. I X
	ram:5827 cd 87 3b       call 03b87h          	;. . ;
	ram:582a cd 51 35       call 03551h          	;. Q 5
	ram:582d 22 25 8b       ld (08b25h),hl       	;" % .
	ram:5830 cd 7b 35       call 0357bh          	;. { 5
	ram:5833 cd d2 01       call 001d2h          	;. . .
	ram:5836 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:583a fd cb 11 c6    set 0,(iy+011h)      	;. . . .
	ram:583e fd cb 0d ae    res 5,(iy+00dh)      	;. . . .
	ram:5842 21 d7 4f       ld hl,l4fd7h         	;! . O
	ram:5845 22 95 81       ld (08195h),hl       	;" . .
	ram:5848 c9             ret                  	;.
sub_5849h:
	ram:5849 cd 6c 58       call sub_586ch       	;. l X
	ram:584c 21 46 31       ld hl,03146h         	;! F 1
	ram:584f cd 45 3e       call 03e45h          	;. E >
	ram:5852 21 e6 32       ld hl,032e6h         	;! . 2
	ram:5855 cd 7a 00       call 0007ah          	;. z .
	ram:5858 20 0b          jr nz,l5865h         	;.
	ram:585a 21 34 33       ld hl,03334h         	;! 4 3
	ram:585d cd 7f 00       call 0007fh          	;. . .
	ram:5860 20 03          jr nz,l5865h         	;.
	ram:5862 21 94 32       ld hl,03294h         	;! . 2
l5865h:
	ram:5865 cd 45 3e       call 03e45h          	;. E >
	ram:5868 cd c1 3d       call 03dc1h          	;. . =
	ram:586b c9             ret                  	;.
sub_586ch:
	ram:586c 2a 30 8b       ld hl,(08b30h)       	;* 0 .
	ram:586f 2d             dec l                	;-
	ram:5870 26 00          ld h,000h            	;& .
	ram:5872 22 0c 80       ld (0800ch),hl       	;" . .
	ram:5875 c9             ret                  	;.
l5876h:
	ram:5876 f1             pop af               	;.
	ram:5877 e9             jp (hl)              	;.
	ram:5878 d6 d2          sub 0d2h             	;. .
	ram:587a d5             push de              	;.
	ram:587b d4 de db       call nc,0dbdeh       	;. . .
	ram:587e da dd f7       jp c,0f7ddh          	;. . .
	ram:5881 f0             ret p                	;.
	ram:5882 e0             ret po               	;.
	ram:5883 d1             pop de               	;.
	ram:5884 d9             exx                  	;.
l5885h:
	ram:5885 69             ld l,c               	;i
	ram:5886 5b             ld e,e               	;[
	ram:5887 65             ld h,l               	;e
	ram:5888 73             ld (hl),e            	;s
	ram:5889 61             ld h,c               	;a
	ram:588a 59             ld e,c               	;Y
	ram:588b 55             ld d,l               	;U
	ram:588c 57             ld d,a               	;W
	ram:588d 5f             ld e,a               	;_
	ram:588e 71             ld (hl),c            	;q
	ram:588f 6f             ld l,a               	;o
	ram:5890 6d             ld l,l               	;m
	ram:5891 63             ld h,e               	;c
	ram:5892 53             ld d,e               	;S
	ram:5893 51             ld d,c               	;Q
l5894h:
	ram:5894 21 76 58       ld hl,l5876h         	;! v X
	ram:5897 01 0f 00       ld bc,0000fh         	;. . .
	ram:589a ed b1          cpir                 	;. .
	ram:589c c2 ae 5b       jp nz,l5baeh         	;. . [
	ram:589f 21 85 58       ld hl,l5885h         	;! . X
	ram:58a2 09             add hl,bc            	;.
	ram:58a3 7e             ld a,(hl)            	;~
	ram:58a4 32 64 83       ld (08364h),a        	;2 d .
	ram:58a7 21 3f 00       ld hl,0003fh         	;! ? .
l58aah:
	ram:58aa 22 75 83       ld (08375h),hl       	;" u .
	ram:58ad fd cb 02 c6    set 0,(iy+002h)      	;. . . .
	ram:58b1 21 00 00       ld hl,00000h         	;! . .
	ram:58b4 22 67 83       ld (08367h),hl       	;" g .
	ram:58b7 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:58ba 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:58bd cd c5 67       call sub_67c5h       	;. . g
	ram:58c0 cd 13 00       call 00013h          	;. . .
	ram:58c3 20 35          jr nz,l58fah         	;5
	ram:58c5 cd 89 00       call 00089h          	;. . .
	ram:58c8 28 15          jr z,l58dfh          	;( .
	ram:58ca 3a 64 83       ld a,(08364h)        	;: d .
	ram:58cd fe 4f          cp 04fh              	;. O
	ram:58cf 28 09          jr z,l58dah          	;( .
	ram:58d1 cd 29 73       call sub_7329h       	;. ) s
	ram:58d4 da cf 5b       jp c,l5bcfh          	;. . [
	ram:58d7 cd ec 74       call sub_74ech       	;. . t
l58dah:
	ram:58da cd c0 71       call sub_71c0h       	;. . q
	ram:58dd 18 1b          jr l58fah            	;. .
l58dfh:
	ram:58df af             xor a                	;.
	ram:58e0 cd ef 68       call sub_68efh       	;. . h
	ram:58e3 b7             or a                 	;.
	ram:58e4 ca cf 5b       jp z,l5bcfh          	;. . [
	ram:58e7 3a 64 83       ld a,(08364h)        	;: d .
	ram:58ea fe 4f          cp 04fh              	;. O
	ram:58ec 28 0c          jr z,l58fah          	;( .
	ram:58ee cd 84 00       call 00084h          	;. . .
	ram:58f1 c4 00 75       call nz,sub_7500h    	;. . u
	ram:58f4 cd 7f 00       call 0007fh          	;. . .
	ram:58f7 c4 f1 74       call nz,sub_74f1h    	;. . t
l58fah:
	ram:58fa fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:58fe 20 09          jr nz,l5909h         	;.
	ram:5900 cd de 5f       call sub_5fdeh       	;. . _
	ram:5903 cd f8 66       call sub_66f8h       	;. . f
	ram:5906 cd bd 5e       call sub_5ebdh       	;. . ^
l5909h:
	ram:5909 cd 75 00       call 00075h          	;. u .
	ram:590c c2 46 5a       jp nz,l5a46h         	;. F Z
	ram:590f 3e 04          ld a,004h            	;> .
l5911h:
	ram:5911 fe 02          cp 002h              	;. .
	ram:5913 ca f2 59       jp z,l59f2h          	;. . Y
	ram:5916 da 51 5a       jp c,l5a51h          	;. Q Z
	ram:5919 cd 13 00       call 00013h          	;. . .
	ram:591c c2 b0 59       jp nz,l59b0h         	;. . Y
	ram:591f 47             ld b,a               	;G
	ram:5920 3a 64 83       ld a,(08364h)        	;: d .
	ram:5923 fe 6b          cp 06bh              	;. k
	ram:5925 ca b0 59       jp z,l59b0h          	;. . Y
	ram:5928 fe 75          cp 075h              	;. u
	ram:592a ca b0 59       jp z,l59b0h          	;. . Y
	ram:592d 78             ld a,b               	;x
	ram:592e fe 04          cp 004h              	;. .
	ram:5930 da d8 5a       jp c,l5ad8h          	;. . Z
	ram:5933 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:5937 cd 89 00       call 00089h          	;. . .
	ram:593a 28 4a          jr z,l5986h          	;( J
	ram:593c 3a 9a 8b       ld a,(08b9ah)        	;: . .
	ram:593f b7             or a                 	;.
	ram:5940 20 06          jr nz,l5948h         	;.
	ram:5942 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:5945 b7             or a                 	;.
	ram:5946 28 0c          jr z,l5954h          	;( .
l5948h:
	ram:5948 cd ef 68       call sub_68efh       	;. . h
	ram:594b b7             or a                 	;.
	ram:594c 20 06          jr nz,l5954h         	;.
	ram:594e 32 9a 8b       ld (08b9ah),a        	;2 . .
	ram:5951 32 9b 8b       ld (08b9bh),a        	;2 . .
l5954h:
	ram:5954 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5957 e5             push hl              	;.
	ram:5958 cd f5 5f       call sub_5ff5h       	;. . _
	ram:595b 3a de 85       ld a,(085deh)        	;: . .
	ram:595e 21 9a 8b       ld hl,08b9ah         	;! . .
	ram:5961 cd de 72       call sub_72deh       	;. . r
	ram:5964 cd e7 35       call 035e7h          	;. . 5
	ram:5967 cd 3d 5a       call sub_5a3dh       	;. = Z
	ram:596a cd 64 5f       call sub_5f64h       	;. d _
	ram:596d 3a df 85       ld a,(085dfh)        	;: . .
	ram:5970 21 9b 8b       ld hl,08b9bh         	;! . .
	ram:5973 cd de 72       call sub_72deh       	;. . r
	ram:5976 cd e7 35       call 035e7h          	;. . 5
	ram:5979 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:597c 7c             ld a,h               	;|
	ram:597d b7             or a                 	;.
	ram:597e 20 01          jr nz,l5981h         	;.
	ram:5980 7d             ld a,l               	;}
l5981h:
	ram:5981 32 68 83       ld (08368h),a        	;2 h .
	ram:5984 18 5f          jr l59e5h            	;. _
l5986h:
	ram:5986 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:5989 7d             ld a,l               	;}
	ram:598a b4             or h                 	;.
	ram:598b 28 10          jr z,l599dh          	;( .
	ram:598d ed 5b 9a 8b    ld de,(08b9ah)       	;. [ . .
	ram:5991 b7             or a                 	;.
	ram:5992 ed 52          sbc hl,de            	;. R
	ram:5994 28 07          jr z,l599dh          	;( .
	ram:5996 13             inc de               	;.
	ram:5997 ed 53 9a 8b    ld (08b9ah),de       	;. S . .
	ram:599b 18 13          jr l59b0h            	;. .
l599dh:
	ram:599d 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:59a0 23             inc hl               	;#
	ram:59a1 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:59a4 3a 68 83       ld a,(08368h)        	;: h .
l59a7h:
	ram:59a7 cd ef 68       call sub_68efh       	;. . h
	ram:59aa b7             or a                 	;.
	ram:59ab 28 fa          jr z,l59a7h          	;( .
l59adh:
	ram:59ad 32 68 83       ld (08368h),a        	;2 h .
l59b0h:
	ram:59b0 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:59b3 e5             push hl              	;.
	ram:59b4 cd f5 5f       call sub_5ff5h       	;. . _
	ram:59b7 cd 13 00       call 00013h          	;. . .
	ram:59ba cc 7a 00       call z,0007ah        	;. z .
	ram:59bd ca 35 5b       jp z,l5b35h          	;. 5 [
	ram:59c0 21 8d 80       ld hl,0808dh         	;! . .
	ram:59c3 3a 75 83       ld a,(08375h)        	;: u .
	ram:59c6 32 66 83       ld (08366h),a        	;2 f .
	ram:59c9 cd fe 42       call sub_42feh       	;. . B
	ram:59cc cd 13 00       call 00013h          	;. . .
	ram:59cf 28 09          jr z,l59dah          	;( .
	ram:59d1 ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:59d5 cd 11 21       call 02111h          	;. . !
	ram:59d8 18 08          jr l59e2h            	;. .
l59dah:
	ram:59da 3a 64 83       ld a,(08364h)        	;: d .
	ram:59dd fe 4f          cp 04fh              	;. O
	ram:59df c4 53 36       call nz,03653h       	;. S 6
l59e2h:
	ram:59e2 cd db 35       call 035dbh          	;. . 5
l59e5h:
	ram:59e5 cd 3d 5a       call sub_5a3dh       	;. = Z
	ram:59e8 cd 0c 5f       call sub_5f0ch       	;. . _
l59ebh:
	ram:59eb e1             pop hl               	;.
	ram:59ec 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:59ef c3 e8 50       jp sub_50e8h         	;. . P
l59f2h:
	ram:59f2 fd cb 03 e6    set 4,(iy+003h)      	;. . . .
	ram:59f6 cd 13 00       call 00013h          	;. . .
	ram:59f9 20 0a          jr nz,l5a05h         	;.
	ram:59fb cd 89 00       call 00089h          	;. . .
	ram:59fe 20 2b          jr nz,l5a2bh         	;+
	ram:5a00 cd 7a 00       call 0007ah          	;. z .
	ram:5a03 28 78          jr z,l5a7dh          	;( x
l5a05h:
	ram:5a05 3a 75 83       ld a,(08375h)        	;: u .
	ram:5a08 3d             dec a                	;=
	ram:5a09 32 75 83       ld (08375h),a        	;2 u .
	ram:5a0c f2 b0 59       jp p,l59b0h          	;. . Y
	ram:5a0f cd 02 60       call sub_6002h       	;. . `
	ram:5a12 20 06          jr nz,l5a1ah         	;.
	ram:5a14 af             xor a                	;.
	ram:5a15 32 75 83       ld (08375h),a        	;2 u .
	ram:5a18 18 6c          jr l5a86h            	;. l
l5a1ah:
	ram:5a1a cd df 5b       call sub_5bdfh       	;. . [
	ram:5a1d 21 07 00       ld hl,00007h         	;! . .
l5a20h:
	ram:5a20 22 75 83       ld (08375h),hl       	;" u .
	ram:5a23 ca b0 59       jp z,l59b0h          	;. . Y
	ram:5a26 cd 1b 00       call 0001bh          	;. . .
	ram:5a29 18 1b          jr l5a46h            	;. .
l5a2bh:
	ram:5a2b cd ec 74       call sub_74ech       	;. . t
	ram:5a2e 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:5a31 11 14 00       ld de,00014h         	;. . .
	ram:5a34 19             add hl,de            	;.
	ram:5a35 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:5a38 cd c0 71       call sub_71c0h       	;. . q
	ram:5a3b 18 62          jr l5a9fh            	;. b
sub_5a3dh:
	ram:5a3d cd 75 00       call 00075h          	;. u .
	ram:5a40 c8             ret z                	;.
	ram:5a41 e1             pop hl               	;.
	ram:5a42 e1             pop hl               	;.
	ram:5a43 22 e7 8b       ld (08be7h),hl       	;" . .
l5a46h:
	ram:5a46 cd 4b 60       call sub_604bh       	;. K `
	ram:5a49 fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:5a4d cc c5 05       call z,005c5h        	;. . .
	ram:5a50 c9             ret                  	;.
l5a51h:
	ram:5a51 fd cb 03 a6    res 4,(iy+003h)      	;. . . .
	ram:5a55 cd 13 00       call 00013h          	;. . .
	ram:5a58 cc 7a 00       call z,0007ah        	;. z .
	ram:5a5b 28 2c          jr z,l5a89h          	;( ,
	ram:5a5d 3a 75 83       ld a,(08375h)        	;: u .
	ram:5a60 3c             inc a                	;<
	ram:5a61 32 75 83       ld (08375h),a        	;2 u .
	ram:5a64 fe 7f          cp 07fh              	;. .
	ram:5a66 c2 b0 59       jp nz,l59b0h         	;. . Y
	ram:5a69 cd 02 60       call sub_6002h       	;. . `
	ram:5a6c 20 07          jr nz,l5a75h         	;.
	ram:5a6e 3e 7e          ld a,07eh            	;> ~
	ram:5a70 32 75 83       ld (08375h),a        	;2 u .
	ram:5a73 18 11          jr l5a86h            	;. .
l5a75h:
	ram:5a75 cd df 5b       call sub_5bdfh       	;. . [
	ram:5a78 21 77 00       ld hl,00077h         	;! w .
	ram:5a7b 18 a3          jr l5a20h            	;. .
l5a7dh:
	ram:5a7d 11 ff ff       ld de,0ffffh         	;. . .
	ram:5a80 2a 75 83       ld hl,(08375h)       	;* u .
	ram:5a83 19             add hl,de            	;.
	ram:5a84 38 35          jr c,l5abbh          	;8 5
l5a86h:
	ram:5a86 c3 e8 50       jp sub_50e8h         	;. . P
l5a89h:
	ram:5a89 11 01 00       ld de,00001h         	;. . .
	ram:5a8c 2a 75 83       ld hl,(08375h)       	;* u .
	ram:5a8f 19             add hl,de            	;.
	ram:5a90 38 f4          jr c,l5a86h          	;8 .
	ram:5a92 cd 89 00       call 00089h          	;. . .
	ram:5a95 28 24          jr z,l5abbh          	;( $
	ram:5a97 cd 15 74       call sub_7415h       	;. . t
	ram:5a9a 38 33          jr c,l5acfh          	;8 3
	ram:5a9c cd cb 71       call sub_71cbh       	;. . q
l5a9fh:
	ram:5a9f cd 75 00       call 00075h          	;. u .
	ram:5aa2 20 a2          jr nz,l5a46h         	;.
	ram:5aa4 3a 9a 8b       ld a,(08b9ah)        	;: . .
	ram:5aa7 3d             dec a                	;=
	ram:5aa8 fa ae 5a       jp m,l5aaeh          	;. . Z
	ram:5aab 32 9a 8b       ld (08b9ah),a        	;2 . .
l5aaeh:
	ram:5aae 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:5ab1 3d             dec a                	;=
	ram:5ab2 fa 54 59       jp m,l5954h          	;. T Y
	ram:5ab5 32 9b 8b       ld (08b9bh),a        	;2 . .
l5ab8h:
	ram:5ab8 c3 54 59       jp l5954h            	;. T Y
l5abbh:
	ram:5abb 22 75 83       ld (08375h),hl       	;" u .
	ram:5abe 01 13 85       ld bc,08513h         	;. . .
	ram:5ac1 cd 84 00       call 00084h          	;. . .
	ram:5ac4 20 03          jr nz,l5ac9h         	;.
	ram:5ac6 01 b6 84       ld bc,084b6h         	;. . .
l5ac9h:
	ram:5ac9 cd 2d 74       call sub_742dh       	;. - t
	ram:5acc d2 b0 59       jp nc,l59b0h         	;. . Y
l5acfh:
	ram:5acf 2a 75 83       ld hl,(08375h)       	;* u .
	ram:5ad2 2b             dec hl               	;+
	ram:5ad3 22 75 83       ld (08375h),hl       	;" u .
	ram:5ad6 18 ae          jr l5a86h            	;. .
l5ad8h:
	ram:5ad8 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
	ram:5adc cd 89 00       call 00089h          	;. . .
	ram:5adf 28 29          jr z,l5b0ah          	;( )
	ram:5ae1 3a 9a 8b       ld a,(08b9ah)        	;: . .
	ram:5ae4 b7             or a                 	;.
	ram:5ae5 20 06          jr nz,l5aedh         	;.
	ram:5ae7 3a 9b 8b       ld a,(08b9bh)        	;: . .
	ram:5aea b7             or a                 	;.
	ram:5aeb 28 99          jr z,l5a86h          	;( .
l5aedh:
	ram:5aed cd f3 68       call sub_68f3h       	;. . h
	ram:5af0 3d             dec a                	;=
	ram:5af1 f2 f8 5a       jp p,l5af8h          	;. . Z
	ram:5af4 3e 0a          ld a,00ah            	;> .
	ram:5af6 18 f5          jr l5aedh            	;. .
l5af8h:
	ram:5af8 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:5afb cb 0c          rrc h                	;. .
	ram:5afd 28 01          jr z,l5b00h          	;( .
	ram:5aff 67             ld h,a               	;g
l5b00h:
	ram:5b00 cb 0d          rrc l                	;. .
	ram:5b02 28 01          jr z,l5b05h          	;( .
	ram:5b04 6f             ld l,a               	;o
l5b05h:
	ram:5b05 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:5b08 18 ae          jr l5ab8h            	;. .
l5b0ah:
	ram:5b0a 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:5b0d 7d             ld a,l               	;}
	ram:5b0e b4             or h                 	;.
	ram:5b0f 28 10          jr z,l5b21h          	;( .
	ram:5b11 ed 5b 9a 8b    ld de,(08b9ah)       	;. [ . .
	ram:5b15 1b             dec de               	;.
	ram:5b16 7b             ld a,e               	;{
	ram:5b17 b2             or d                 	;.
	ram:5b18 28 07          jr z,l5b21h          	;( .
	ram:5b1a ed 53 9a 8b    ld (08b9ah),de       	;. S . .
	ram:5b1e c3 b0 59       jp l59b0h            	;. . Y
l5b21h:
	ram:5b21 21 00 00       ld hl,00000h         	;! . .
	ram:5b24 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:5b27 3a 68 83       ld a,(08368h)        	;: h .
l5b2ah:
	ram:5b2a cd f3 68       call sub_68f3h       	;. . h
	ram:5b2d b7             or a                 	;.
	ram:5b2e c2 ad 59       jp nz,l59adh         	;. . Y
	ram:5b31 3e 64          ld a,064h            	;> d
	ram:5b33 18 f5          jr l5b2ah            	;. .
l5b35h:
	ram:5b35 cd 84 00       call 00084h          	;. . .
	ram:5b38 28 17          jr z,l5b51h          	;( .
	ram:5b3a cd db 35       call 035dbh          	;. . 5
	ram:5b3d cd 3d 5a       call sub_5a3dh       	;. = Z
	ram:5b40 cd 64 5f       call sub_5f64h       	;. d _
	ram:5b43 cd 17 6c       call sub_6c17h       	;. . l
	ram:5b46 3e 79          ld a,079h            	;> y
	ram:5b48 32 84 80       ld (08084h),a        	;2 . .
	ram:5b4b cd e1 35       call 035e1h          	;. . 5
	ram:5b4e c3 e5 59       jp l59e5h            	;. . Y
l5b51h:
	ram:5b51 cd db 35       call 035dbh          	;. . 5
	ram:5b54 cd 3d 5a       call sub_5a3dh       	;. = Z
	ram:5b57 cd 0b 00       call 0000bh          	;. . .
	ram:5b5a 28 15          jr z,l5b71h          	;( .
	ram:5b5c cd 41 36       call 03641h          	;. A 6
	ram:5b5f 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:5b62 cd 0b 21       call 0210bh          	;. . !
	ram:5b65 21 7d 5b       ld hl,l5b7dh         	;! } [
	ram:5b68 cd b5 0a       call 00ab5h          	;. . .
	ram:5b6b cd 8b 1e       call 01e8bh          	;. . .
	ram:5b6e cd db 0a       call 00adbh          	;. . .
l5b71h:
	ram:5b71 cd 45 2e       call 02e45h          	;. E .
	ram:5b74 cd 64 5f       call sub_5f64h       	;. d _
	ram:5b77 cd f4 2d       call 02df4h          	;. . -
	ram:5b7a c3 e5 59       jp l59e5h            	;. . Y
l5b7dh:
	ram:5b7d cd a7 5f       call sub_5fa7h       	;. . _
	ram:5b80 cd 58 5f       call sub_5f58h       	;. X _
	ram:5b83 fd cb 04 5e    bit 3,(iy+004h)      	;. . . ^
	ram:5b87 28 04          jr z,l5b8dh          	;( .
	ram:5b89 fd cb 03 b6    res 6,(iy+003h)      	;. . . .
l5b8dh:
	ram:5b8d c3 eb 59       jp l59ebh            	;. . Y
l5b90h:
	ram:5b90 e2 f3 cd       jp po,0cdf3h         	;. . .
	ram:5b93 f8             ret m                	;.
	ram:5b94 fb             ei                   	;.
	ram:5b95 e6 e5          and 0e5h             	;. .
	ram:5b97 e4 f5 ce       call po,0cef5h       	;. . .
	ram:5b9a e3             ex (sp),hl           	;.
	ram:5b9b f9             ld sp,hl             	;.
	ram:5b9c fa df e1       jp m,0e1dfh          	;. . .
l5b9fh:
	ram:5b9f 1b             dec de               	;.
	ram:5ba0 15             dec d                	;.
	ram:5ba1 11 0f 2b       ld de,02b0fh         	;. . +
	ram:5ba4 25             dec h                	;%
	ram:5ba5 29             add hl,hl            	;)
	ram:5ba6 23             inc hl               	;#
	ram:5ba7 21 1f 0d       ld hl,00d1fh         	;! . .
	ram:5baa 0b             dec bc               	;.
	ram:5bab 13             inc de               	;.
	ram:5bac 19             add hl,de            	;.
	ram:5bad 17             rla                  	;.
l5baeh:
	ram:5bae 21 90 5b       ld hl,l5b90h         	;! . [
	ram:5bb1 01 0f 00       ld bc,0000fh         	;. . .
	ram:5bb4 ed b1          cpir                 	;. .
	ram:5bb6 20 14          jr nz,l5bcch         	;.
	ram:5bb8 21 9f 5b       ld hl,l5b9fh         	;! . [
	ram:5bbb 09             add hl,bc            	;.
	ram:5bbc 7e             ld a,(hl)            	;~
	ram:5bbd f5             push af              	;.
	ram:5bbe cd de 5f       call sub_5fdeh       	;. . _
	ram:5bc1 f1             pop af               	;.
l5bc2h:
	ram:5bc2 32 64 83       ld (08364h),a        	;2 d .
	ram:5bc5 ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:5bc9 c3 c2 50       jp l50c2h            	;. . P
l5bcch:
	ram:5bcc b7             or a                 	;.
	ram:5bcd 20 03          jr nz,l5bd2h         	;.
l5bcfh:
	ram:5bcf cd 4b 60       call sub_604bh       	;. K `
l5bd2h:
	ram:5bd2 fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:5bd6 cc bd 3e       call z,03ebdh        	;. . >
	ram:5bd9 c3 e8 50       jp sub_50e8h         	;. . P
l5bdch:
	ram:5bdc c3 59 0a       jp 00a59h            	;. Y .
sub_5bdfh:
	ram:5bdf 21 dc 5b       ld hl,l5bdch         	;! . [
	ram:5be2 cd b5 0a       call 00ab5h          	;. . .
	ram:5be5 21 9f 84       ld hl,0849fh         	;! . .
	ram:5be8 e7             rst 20h              	;.
	ram:5be9 2a 69 83       ld hl,(08369h)       	;* i .
	ram:5bec cd 0b 21       call 0210bh          	;. . !
	ram:5bef cd 8e 1f       call 01f8eh          	;. . .
	ram:5bf2 20 0d          jr nz,l5c01h         	;.
	ram:5bf4 21 a9 84       ld hl,084a9h         	;! . .
	ram:5bf7 cd 0b 21       call 0210bh          	;. . !
	ram:5bfa 2a 6b 83       ld hl,(0836bh)       	;* k .
	ram:5bfd e7             rst 20h              	;.
	ram:5bfe cd 8e 1f       call 01f8eh          	;. . .
l5c01h:
	ram:5c01 3e 01          ld a,001h            	;> .
	ram:5c03 20 01          jr nz,l5c06h         	;.
	ram:5c05 af             xor a                	;.
l5c06h:
	ram:5c06 f5             push af              	;.
	ram:5c07 21 82 83       ld hl,08382h         	;! . .
	ram:5c0a e7             rst 20h              	;.
	ram:5c0b 3e 08          ld a,008h            	;> .
	ram:5c0d cd 6b 66       call sub_666bh       	;. k f
	ram:5c10 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5c14 c4 ac 0f       call nz,00fach       	;. . .
	ram:5c17 f7             rst 30h              	;.
	ram:5c18 3a 83 80       ld a,(08083h)        	;: . .
	ram:5c1b fe 0d          cp 00dh              	;. .
	ram:5c1d 28 bd          jr z,l5bdch          	;( .
	ram:5c1f cd 1b 00       call 0001bh          	;. . .
	ram:5c22 11 82 83       ld de,08382h         	;. . .
	ram:5c25 cd 11 21       call 02111h          	;. . !
	ram:5c28 21 38 84       ld hl,08438h         	;! 8 .
	ram:5c2b cd 55 0e       call 00e55h          	;. U .
	ram:5c2e cd f5 1f       call 01ff5h          	;. . .
	ram:5c31 cd 95 20       call 02095h          	;. .  
	ram:5c34 21 7e 00       ld hl,0007eh         	;! ~ .
	ram:5c37 cd 87 66       call sub_6687h       	;. . f
	ram:5c3a ef             rst 28h              	;.
	ram:5c3b cd 07 20       call 02007h          	;. .  
	ram:5c3e cd f5 1f       call 01ff5h          	;. . .
	ram:5c41 21 78 83       ld hl,08378h         	;! x .
	ram:5c44 e7             rst 20h              	;.
	ram:5c45 f7             rst 30h              	;.
	ram:5c46 cd e0 11       call 011e0h          	;. . .
	ram:5c49 cd 9b 25       call 0259bh          	;. . %
	ram:5c4c cd 8d 20       call 0208dh          	;. .  
	ram:5c4f cd 07 20       call 02007h          	;. .  
	ram:5c52 f7             rst 30h              	;.
	ram:5c53 cd 9b 25       call 0259bh          	;. . %
	ram:5c56 2a 6b 83       ld hl,(0836bh)       	;* k .
	ram:5c59 22 d0 80       ld (080d0h),hl       	;" . .
	ram:5c5c cd 59 36       call 03659h          	;. Y 6
	ram:5c5f 21 ae 80       ld hl,080aeh         	;! . .
	ram:5c62 cb f6          set 6,(hl)           	;. .
	ram:5c64 ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:5c68 cd 9d 20       call 0209dh          	;. .  
	ram:5c6b 21 38 84       ld hl,08438h         	;! 8 .
	ram:5c6e cd 0b 21       call 0210bh          	;. . !
	ram:5c71 21 8e 80       ld hl,0808eh         	;! . .
	ram:5c74 cd 93 25       call 02593h          	;. . %
	ram:5c77 cd ac 0f       call 00fach          	;. . .
	ram:5c7a fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5c7e 28 06          jr z,l5c86h          	;( .
	ram:5c80 cd ac 0f       call 00fach          	;. . .
	ram:5c83 cd 5b 20       call 0205bh          	;. [  
l5c86h:
	ram:5c86 f7             rst 30h              	;.
	ram:5c87 df             rst 18h              	;.
	ram:5c88 cd 68 62       call sub_6268h       	;. h b
	ram:5c8b f1             pop af               	;.
	ram:5c8c cd 93 75       call sub_7593h       	;. . u
	ram:5c8f cd db 2d       call 02ddbh          	;. . -
	ram:5c92 cd db 0a       call 00adbh          	;. . .
	ram:5c95 0e 3f          ld c,03fh            	;. ?
	ram:5c97 06 0f          ld b,00fh            	;. .
	ram:5c99 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5c9d 28 02          jr z,l5ca1h          	;( .
	ram:5c9f 06 77          ld b,077h            	;. w
l5ca1h:
	ram:5ca1 c5             push bc              	;.
	ram:5ca2 cd 6d 6b       call sub_6b6dh       	;. m k
	ram:5ca5 11 41 86       ld de,08641h         	;. A .
	ram:5ca8 19             add hl,de            	;.
	ram:5ca9 01 0f 00       ld bc,0000fh         	;. . .
	ram:5cac 5d             ld e,l               	;]
	ram:5cad 54             ld d,h               	;T
	ram:5cae fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5cb2 28 05          jr z,l5cb9h          	;( .
	ram:5cb4 13             inc de               	;.
	ram:5cb5 ed b8          lddr                 	;. .
	ram:5cb7 18 03          jr l5cbch            	;. .
l5cb9h:
	ram:5cb9 1b             dec de               	;.
	ram:5cba ed b0          ldir                 	;. .
l5cbch:
	ram:5cbc c1             pop bc               	;.
	ram:5cbd 0d             dec c                	;.
	ram:5cbe 20 e1          jr nz,l5ca1h         	;.
	ram:5cc0 0e 3f          ld c,03fh            	;. ?
	ram:5cc2 06 7f          ld b,07fh            	;. .
	ram:5cc4 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5cc8 28 02          jr z,l5ccch          	;( .
	ram:5cca 06 07          ld b,007h            	;. .
l5ccch:
	ram:5ccc cd 6d 6b       call sub_6b6dh       	;. m k
	ram:5ccf 11 41 86       ld de,08641h         	;. A .
	ram:5cd2 06 3f          ld b,03fh            	;. ?
l5cd4h:
	ram:5cd4 19             add hl,de            	;.
	ram:5cd5 36 00          ld (hl),000h         	;6 .
	ram:5cd7 e5             push hl              	;.
	ram:5cd8 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5cdc 20 05          jr nz,l5ce3h         	;.
	ram:5cde 2b             dec hl               	;+
	ram:5cdf 3e f8          ld a,0f8h            	;> .
	ram:5ce1 18 03          jr l5ce6h            	;. .
l5ce3h:
	ram:5ce3 23             inc hl               	;#
	ram:5ce4 3e 3f          ld a,03fh            	;> ?
l5ce6h:
	ram:5ce6 a6             and (hl)             	;.
	ram:5ce7 77             ld (hl),a            	;w
	ram:5ce8 e1             pop hl               	;.
	ram:5ce9 11 10 00       ld de,00010h         	;. . .
	ram:5cec 10 e6          djnz l5cd4h          	;. .
	ram:5cee 21 50 86       ld hl,08650h         	;! P .
	ram:5cf1 11 10 00       ld de,00010h         	;. . .
	ram:5cf4 06 3f          ld b,03fh            	;. ?
l5cf6h:
	ram:5cf6 cb 86          res 0,(hl)           	;. .
	ram:5cf8 19             add hl,de            	;.
	ram:5cf9 10 fb          djnz l5cf6h          	;. .
	ram:5cfb cd f8 66       call sub_66f8h       	;. . f
	ram:5cfe fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:5d02 f5             push af              	;.
	ram:5d03 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
	ram:5d07 2a 67 83       ld hl,(08367h)       	;* g .
	ram:5d0a e5             push hl              	;.
	ram:5d0b 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:5d0e e5             push hl              	;.
	ram:5d0f 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:5d12 e5             push hl              	;.
	ram:5d13 cd 15 76       call sub_7615h       	;. . v
	ram:5d16 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:5d1a 21 00 00       ld hl,00000h         	;! . .
	ram:5d1d 22 67 83       ld (08367h),hl       	;" g .
	ram:5d20 fd cb 03 ce    set 1,(iy+003h)      	;. . . .
	ram:5d24 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:5d27 e5             push hl              	;.
	ram:5d28 cd 13 00       call 00013h          	;. . .
	ram:5d2b 28 14          jr z,l5d41h          	;( .
	ram:5d2d 2a e9 85       ld hl,(085e9h)       	;* . .
	ram:5d30 22 e1 85       ld (085e1h),hl       	;" . .
	ram:5d33 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:5d36 22 e3 85       ld (085e3h),hl       	;" . .
	ram:5d39 cd 4b 75       call sub_754bh       	;. K u
	ram:5d3c cd 91 2e       call 02e91h          	;. . .
	ram:5d3f 18 0b          jr l5d4ch            	;. .
l5d41h:
	ram:5d41 cd 53 75       call sub_7553h       	;. S u
	ram:5d44 cd 91 2e       call 02e91h          	;. . .
l5d47h:
	ram:5d47 cd 0a 74       call sub_740ah       	;. . t
	ram:5d4a 28 66          jr z,l5db2h          	;( f
l5d4ch:
	ram:5d4c 21 00 00       ld hl,00000h         	;! . .
	ram:5d4f 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:5d52 23             inc hl               	;#
	ram:5d53 22 9a 8b       ld (08b9ah),hl       	;" . .
l5d56h:
	ram:5d56 26 0b          ld h,00bh            	;& .
	ram:5d58 2e 0a          ld l,00ah            	;. .
	ram:5d5a fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5d5e 20 02          jr nz,l5d62h         	;.
	ram:5d60 2e 74          ld l,074h            	;. t
l5d62h:
	ram:5d62 22 75 83       ld (08375h),hl       	;" u .
	ram:5d65 7d             ld a,l               	;}
	ram:5d66 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:5d69 cd fe 42       call sub_42feh       	;. . B
	ram:5d6c cd db 35       call 035dbh          	;. . 5
	ram:5d6f cd bc 73       call sub_73bch       	;. . s
	ram:5d72 11 98 80       ld de,08098h         	;. . .
	ram:5d75 cd 46 2f       call 02f46h          	;. F /
	ram:5d78 13             inc de               	;.
	ram:5d79 cd 9d 20       call 0209dh          	;. .  
	ram:5d7c cf             rst 8                	;.
	ram:5d7d cd 6b 2f       call 02f6bh          	;. k /
	ram:5d80 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:5d83 e7             rst 20h              	;.
	ram:5d84 cd 83 2f       call 02f83h          	;. . /
	ram:5d87 3a 76 83       ld a,(08376h)        	;: v .
	ram:5d8a fe 0b          cp 00bh              	;. .
	ram:5d8c c4 f8 73       call nz,sub_73f8h    	;. . s
	ram:5d8f cd 75 00       call 00075h          	;. u .
	ram:5d92 20 1e          jr nz,l5db2h         	;.
	ram:5d94 cd 7f 72       call sub_727fh       	;. . r
	ram:5d97 2a 75 83       ld hl,(08375h)       	;* u .
	ram:5d9a 2d             dec l                	;-
	ram:5d9b fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:5d9f 20 02          jr nz,l5da3h         	;.
	ram:5da1 2c             inc l                	;,
	ram:5da2 2c             inc l                	;,
l5da3h:
	ram:5da3 25             dec h                	;%
	ram:5da4 20 bc          jr nz,l5d62h         	;.
	ram:5da6 cd 13 00       call 00013h          	;. . .
	ram:5da9 20 07          jr nz,l5db2h         	;.
	ram:5dab cd 97 73       call sub_7397h       	;. . s
	ram:5dae 30 97          jr nc,l5d47h         	;0 .
	ram:5db0 18 a4          jr l5d56h            	;. .
l5db2h:
	ram:5db2 fd cb 03 86    res 0,(iy+003h)      	;. . . .
	ram:5db6 fd cb 03 8e    res 1,(iy+003h)      	;. . . .
	ram:5dba e1             pop hl               	;.
	ram:5dbb 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:5dbe e1             pop hl               	;.
	ram:5dbf 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:5dc2 e1             pop hl               	;.
	ram:5dc3 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:5dc6 e1             pop hl               	;.
	ram:5dc7 22 67 83       ld (08367h),hl       	;" g .
	ram:5dca f1             pop af               	;.
	ram:5dcb 28 04          jr z,l5dd1h          	;( .
	ram:5dcd fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l5dd1h:
	ram:5dd1 cd 09 2e       call 02e09h          	;. . .
	ram:5dd4 2a e1 85       ld hl,(085e1h)       	;* . .
	ram:5dd7 cb b6          res 6,(hl)           	;. .
	ram:5dd9 c3 75 00       jp 00075h            	;. u .
sub_5ddch:
	ram:5ddc 3a fe 81       ld a,(081feh)        	;: . .
	ram:5ddf b7             or a                 	;.
	ram:5de0 28 05          jr z,l5de7h          	;( .
	ram:5de2 cd eb 5d       call sub_5debh       	;. . ]
	ram:5de5 18 f5          jr sub_5ddch         	;. .
l5de7h:
	ram:5de7 cd 2f 3c       call 03c2fh          	;. / <
	ram:5dea c8             ret z                	;.
sub_5debh:
	ram:5deb fd cb 11 8e    res 1,(iy+011h)      	;. . . .
	ram:5def 3a fe 81       ld a,(081feh)        	;: . .
	ram:5df2 b7             or a                 	;.
	ram:5df3 28 04          jr z,l5df9h          	;( .
	ram:5df5 cd c9 3e       call 03ec9h          	;. . >
	ram:5df8 c9             ret                  	;.
l5df9h:
	ram:5df9 cd cf 3e       call 03ecfh          	;. . >
	ram:5dfc c9             ret                  	;.
sub_5dfdh:
	ram:5dfd 32 64 83       ld (08364h),a        	;2 d .
	ram:5e00 2a 65 83       ld hl,(08365h)       	;* e .
	ram:5e03 fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:5e07 20 02          jr nz,l5e0bh         	;.
	ram:5e09 cb fd          set 7,l              	;. .
l5e0bh:
	ram:5e0b 22 8a 80       ld (0808ah),hl       	;" . .
	ram:5e0e c3 4a 2e       jp 02e4ah            	;. J .
sub_5e11h:
	ram:5e11 cd c5 67       call sub_67c5h       	;. . g
	ram:5e14 af             xor a                	;.
	ram:5e15 cd ef 68       call sub_68efh       	;. . h
	ram:5e18 b7             or a                 	;.
	ram:5e19 c9             ret                  	;.
sub_5e1ah:
	ram:5e1a f5             push af              	;.
	ram:5e1b cd 22 26       call 02622h          	;. " &
	ram:5e1e cd 89 00       call 00089h          	;. . .
	ram:5e21 28 0e          jr z,l5e31h          	;( .
	ram:5e23 f1             pop af               	;.
	ram:5e24 df             rst 18h              	;.
	ram:5e25 cd 87 74       call sub_7487h       	;. . t
	ram:5e28 cf             rst 8                	;.
	ram:5e29 cd f4 2d       call 02df4h          	;. . -
	ram:5e2c 21 8e 85       ld hl,0858eh         	;! . .
	ram:5e2f 18 19          jr l5e4ah            	;. .
l5e31h:
	ram:5e31 f1             pop af               	;.
	ram:5e32 30 37          jr nc,l5e6bh         	;0 7
	ram:5e34 21 63 84       ld hl,08463h         	;! c .
	ram:5e37 cd 7a 00       call 0007ah          	;. z .
	ram:5e3a 20 0b          jr nz,l5e47h         	;.
	ram:5e3c 21 b6 84       ld hl,084b6h         	;! . .
	ram:5e3f cd 7f 00       call 0007fh          	;. . .
	ram:5e42 20 03          jr nz,l5e47h         	;.
	ram:5e44 21 13 85       ld hl,08513h         	;! . .
l5e47h:
	ram:5e47 cd 0b 21       call 0210bh          	;. . !
l5e4ah:
	ram:5e4a e5             push hl              	;.
	ram:5e4b cd f5 1f       call 01ff5h          	;. . .
	ram:5e4e cd 8e 1f       call 01f8eh          	;. . .
	ram:5e51 e1             pop hl               	;.
	ram:5e52 28 14          jr z,l5e68h          	;( .
	ram:5e54 f5             push af              	;.
	ram:5e55 cd 83 1f       call 01f83h          	;. . .
	ram:5e58 28 0d          jr z,l5e67h          	;( .
	ram:5e5a 38 06          jr c,l5e62h          	;8 .
	ram:5e5c f1             pop af               	;.
	ram:5e5d 38 09          jr c,l5e68h          	;8 .
l5e5fh:
	ram:5e5f c3 14 0a       jp 00a14h            	;. . .
l5e62h:
	ram:5e62 f1             pop af               	;.
	ram:5e63 38 fa          jr c,l5e5fh          	;8 .
	ram:5e65 18 01          jr l5e68h            	;. .
l5e67h:
	ram:5e67 e1             pop hl               	;.
l5e68h:
	ram:5e68 cd 56 20       call 02056h          	;. V  
l5e6bh:
	ram:5e6b cd 7a 00       call 0007ah          	;. z .
	ram:5e6e c4 53 36       call nz,03653h       	;. S 6
	ram:5e71 cd 84 00       call 00084h          	;. . .
	ram:5e74 c4 4d 36       call nz,0364dh       	;. M 6
	ram:5e77 cd 7f 00       call 0007fh          	;. . .
	ram:5e7a c4 3b 36       call nz,0363bh       	;. ; 6
	ram:5e7d cd 89 00       call 00089h          	;. . .
	ram:5e80 c4 4d 36       call nz,0364dh       	;. M 6
	ram:5e83 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:5e86 22 eb 85       ld (085ebh),hl       	;" . .
	ram:5e89 c9             ret                  	;.
sub_5e8ah:
	ram:5e8a e5             push hl              	;.
	ram:5e8b cd 4b 60       call sub_604bh       	;. K `
	ram:5e8e cd 9b 25       call 0259bh          	;. . %
	ram:5e91 cd 69 3e       call 03e69h          	;. i >
	ram:5e94 cd bd 5e       call sub_5ebdh       	;. . ^
	ram:5e97 e1             pop hl               	;.
	ram:5e98 d1             pop de               	;.
	ram:5e99 c1             pop bc               	;.
	ram:5e9a ed 43 e7 8b    ld (08be7h),bc       	;. C . .
	ram:5e9e d5             push de              	;.
	ram:5e9f c3 5a 4e       jp l4e5ah            	;. Z N
sub_5ea2h:
	ram:5ea2 cd 64 5f       call sub_5f64h       	;. d _
	ram:5ea5 32 75 83       ld (08375h),a        	;2 u .
	ram:5ea8 cd 8f 36       call 0368fh          	;. . 6
	ram:5eab cd 69 3e       call 03e69h          	;. i >
	ram:5eae cd db 35       call 035dbh          	;. . 5
	ram:5eb1 c1             pop bc               	;.
	ram:5eb2 cd 3d 5a       call sub_5a3dh       	;. = Z
	ram:5eb5 e1             pop hl               	;.
	ram:5eb6 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:5eb9 c5             push bc              	;.
	ram:5eba cd 0c 5f       call sub_5f0ch       	;. . _
sub_5ebdh:
	ram:5ebd fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:5ec1 c0             ret nz               	;.
	ram:5ec2 f5             push af              	;.
	ram:5ec3 3a 05 80       ld a,(08005h)        	;: . .
	ram:5ec6 fe 08          cp 008h              	;. .
	ram:5ec8 28 1d          jr z,l5ee7h          	;( .
	ram:5eca cd 13 00       call 00013h          	;. . .
	ram:5ecd cc 7a 00       call z,0007ah        	;. z .
	ram:5ed0 28 15          jr z,l5ee7h          	;( .
	ram:5ed2 cd 96 75       call sub_7596h       	;. . u
	ram:5ed5 11 9f 84       ld de,0849fh         	;. . .
	ram:5ed8 21 9c 6a       ld hl,06a9ch         	;! . j
	ram:5edb cd f6 5e       call sub_5ef6h       	;. . ^
	ram:5ede 11 a9 84       ld de,084a9h         	;. . .
	ram:5ee1 21 a1 6a       ld hl,l6aa1h         	;! . j
	ram:5ee4 cd f6 5e       call sub_5ef6h       	;. . ^
l5ee7h:
	ram:5ee7 fd cb 04 6e    bit 5,(iy+004h)      	;. . . n
	ram:5eeb 20 07          jr nz,l5ef4h         	;.
	ram:5eed fd cb 04 76    bit 6,(iy+004h)      	;. . . v
	ram:5ef1 c4 c7 4d       call nz,sub_4dc7h    	;. . M
l5ef4h:
	ram:5ef4 f1             pop af               	;.
	ram:5ef5 c9             ret                  	;.
sub_5ef6h:
	ram:5ef6 e5             push hl              	;.
	ram:5ef7 cd 4d 43       call sub_434dh       	;. M C
	ram:5efa 0e 3d          ld c,03dh            	;. =
	ram:5efc 47             ld b,a               	;G
	ram:5efd e1             pop hl               	;.
	ram:5efe 16 01          ld d,001h            	;. .
	ram:5f00 c3 30 6a       jp l6a30h            	;. 0 j
sub_5f03h:
	ram:5f03 cd 6a 4b       call sub_4b6ah       	;. j K
	ram:5f06 cd c1 3a       call 03ac1h          	;. . :
	ram:5f09 c3 4a 2e       jp 02e4ah            	;. J .
sub_5f0ch:
	ram:5f0c cd 0b 00       call 0000bh          	;. . .
	ram:5f0f 28 47          jr z,sub_5f58h       	;( G
	ram:5f11 21 58 5f       ld hl,sub_5f58h      	;! X _
	ram:5f14 cd b5 0a       call 00ab5h          	;. . .
	ram:5f17 cd 9b 25       call 0259bh          	;. . %
	ram:5f1a cd db 0a       call 00adbh          	;. . .
	ram:5f1d cd 13 00       call 00013h          	;. . .
	ram:5f20 f5             push af              	;.
	ram:5f21 c4 35 36       call nz,03635h       	;. 5 6
	ram:5f24 f1             pop af               	;.
	ram:5f25 cc 47 36       call z,03647h        	;. G 6
	ram:5f28 21 82 80       ld hl,08082h         	;! . .
	ram:5f2b cd 52 42       call l4252h          	;. R B
	ram:5f2e 20 28          jr nz,sub_5f58h      	;(
	ram:5f30 cd 21 20       call 02021h          	;. !  
	ram:5f33 af             xor a                	;.
	ram:5f34 ed 5b 6f 83    ld de,(0836fh)       	;. [ o .
	ram:5f38 21 82 80       ld hl,08082h         	;! . .
	ram:5f3b cd 8e 42       call sub_428eh       	;. . B
	ram:5f3e cd 60 20       call 02060h          	;. `  
	ram:5f41 47             ld b,a               	;G
	ram:5f42 3e 01          ld a,001h            	;> .
	ram:5f44 cb 48          bit 1,b              	;. H
	ram:5f46 20 16          jr nz,l5f5eh         	;.
	ram:5f48 3e 3f          ld a,03fh            	;> ?
	ram:5f4a cb 40          bit 0,b              	;. @
	ram:5f4c 20 10          jr nz,l5f5eh         	;.
	ram:5f4e 11 82 80       ld de,08082h         	;. . .
	ram:5f51 cd 40 43       call sub_4340h       	;. @ C
l5f54h:
	ram:5f54 32 65 83       ld (08365h),a        	;2 e .
	ram:5f57 c9             ret                  	;.
sub_5f58h:
	ram:5f58 3e 20          ld a,020h            	;>  
	ram:5f5a fd cb 03 fe    set 7,(iy+003h)      	;. . . .
l5f5eh:
	ram:5f5e fd cb 03 96    res 2,(iy+003h)      	;. . . .
	ram:5f62 18 f0          jr l5f54h            	;. .
sub_5f64h:
	ram:5f64 cd 0b 00       call 0000bh          	;. . .
	ram:5f67 28 3e          jr z,sub_5fa7h       	;( >
sub_5f69h:
	ram:5f69 21 a7 5f       ld hl,sub_5fa7h      	;! . _
	ram:5f6c cd b5 0a       call 00ab5h          	;. . .
	ram:5f6f cd 9b 25       call 0259bh          	;. . %
	ram:5f72 cd db 0a       call 00adbh          	;. . .
	ram:5f75 cd 53 36       call 03653h          	;. S 6
	ram:5f78 21 82 80       ld hl,08082h         	;! . .
	ram:5f7b cd 52 42       call l4252h          	;. R B
	ram:5f7e 20 27          jr nz,sub_5fa7h      	;'
	ram:5f80 cd 21 20       call 02021h          	;. !  
	ram:5f83 af             xor a                	;.
	ram:5f84 ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:5f88 21 82 80       ld hl,08082h         	;! . .
	ram:5f8b cd 8e 42       call sub_428eh       	;. . B
	ram:5f8e cd 60 20       call 02060h          	;. `  
	ram:5f91 47             ld b,a               	;G
	ram:5f92 af             xor a                	;.
	ram:5f93 cb 48          bit 1,b              	;. H
	ram:5f95 20 16          jr nz,l5fadh         	;.
	ram:5f97 3e 7e          ld a,07eh            	;> ~
	ram:5f99 cb 40          bit 0,b              	;. @
	ram:5f9b 20 10          jr nz,l5fadh         	;.
	ram:5f9d 11 82 80       ld de,08082h         	;. . .
	ram:5fa0 cd 4d 43       call sub_434dh       	;. M C
l5fa3h:
	ram:5fa3 32 66 83       ld (08366h),a        	;2 f .
	ram:5fa6 c9             ret                  	;.
sub_5fa7h:
	ram:5fa7 3e 3f          ld a,03fh            	;> ?
	ram:5fa9 fd cb 03 f6    set 6,(iy+003h)      	;. . . .
l5fadh:
	ram:5fad fd cb 03 96    res 2,(iy+003h)      	;. . . .
	ram:5fb1 18 f0          jr l5fa3h            	;. .
sub_5fb3h:
	ram:5fb3 cd b6 6b       call sub_6bb6h       	;. . k
	ram:5fb6 21 9f 8b       ld hl,08b9fh         	;! . .
	ram:5fb9 11 83 80       ld de,08083h         	;. . .
	ram:5fbc af             xor a                	;.
	ram:5fbd b6             or (hl)              	;.
	ram:5fbe 28 07          jr z,l5fc7h          	;( .
	ram:5fc0 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:5fc4 cc 9f 20       call z,0209fh        	;. .  
l5fc7h:
	ram:5fc7 cd 4a 2e       call 02e4ah          	;. J .
	ram:5fca cd b2 6b       call sub_6bb2h       	;. . k
	ram:5fcd 21 a8 8b       ld hl,08ba8h         	;! . .
	ram:5fd0 11 83 80       ld de,08083h         	;. . .
	ram:5fd3 af             xor a                	;.
	ram:5fd4 b6             or (hl)              	;.
	ram:5fd5 28 07          jr z,sub_5fdeh       	;( .
	ram:5fd7 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:5fdb cc 9f 20       call z,0209fh        	;. .  
sub_5fdeh:
	ram:5fde cd 29 3c       call 03c29h          	;. ) <
	ram:5fe1 cd bd 3e       call 03ebdh          	;. . >
	ram:5fe4 c9             ret                  	;.
sub_5fe5h:
	ram:5fe5 2a 69 83       ld hl,(08369h)       	;* i .
	ram:5fe8 11 ed 85       ld de,085edh         	;. . .
	ram:5feb fd cb 04 fe    set 7,(iy+004h)      	;. . . .
sub_5fefh:
	ram:5fef 01 3c 00       ld bc,0003ch         	;. < .
	ram:5ff2 ed b0          ldir                 	;. .
	ram:5ff4 c9             ret                  	;.
sub_5ff5h:
	ram:5ff5 fd cb 03 d6    set 2,(iy+003h)      	;. . . .
	ram:5ff9 fd cb 03 b6    res 6,(iy+003h)      	;. . . .
	ram:5ffd fd cb 03 be    res 7,(iy+003h)      	;. . . .
	ram:6001 c9             ret                  	;.
sub_6002h:
	ram:6002 3a 64 83       ld a,(08364h)        	;: d .
	ram:6005 fe 75          cp 075h              	;. u
	ram:6007 c8             ret z                	;.
sub_6008h:
	ram:6008 fe 6b          cp 06bh              	;. k
	ram:600a c8             ret z                	;.
	ram:600b fe 5d          cp 05dh              	;. ]
	ram:600d c8             ret z                	;.
	ram:600e fe 67          cp 067h              	;. g
	ram:6010 c9             ret                  	;.
sub_6011h:
	ram:6011 fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:6015 28 0b          jr z,l6022h          	;( .
sub_6017h:
	ram:6017 fd cb 03 76    bit 6,(iy+003h)      	;. . . v
	ram:601b 20 05          jr nz,l6022h         	;.
	ram:601d fd cb 03 7e    bit 7,(iy+003h)      	;. . . ~
	ram:6021 c8             ret z                	;.
l6022h:
	ram:6022 e1             pop hl               	;.
	ram:6023 c3 e8 50       jp sub_50e8h         	;. . P
	ram:6026 cd e3 4f       call sub_4fe3h       	;. . O
	ram:6029 18 07          jr l6032h            	;. .
	ram:602b fd cb 11 46    bit 0,(iy+011h)      	;. . . F
	ram:602f c4 ab 3b       call nz,03babh       	;. . ;
l6032h:
	ram:6032 21 0f fc       ld hl,0fc0fh         	;! . .
	ram:6035 11 10 00       ld de,00010h         	;. . .
	ram:6038 06 40          ld b,040h            	;. @
l603ah:
	ram:603a cb 8e          res 1,(hl)           	;. .
	ram:603c 19             add hl,de            	;.
	ram:603d 10 fb          djnz l603ah          	;. .
	ram:603f fd cb 02 9e    res 3,(iy+002h)      	;. . . .
	ram:6043 fd cb 03 8e    res 1,(iy+003h)      	;. . . .
	ram:6047 fd cb 03 9e    res 3,(iy+003h)      	;. . . .
sub_604bh:
	ram:604b f5             push af              	;.
	ram:604c fd cb 02 46    bit 0,(iy+002h)      	;. . . F
	ram:6050 28 13          jr z,l6065h          	;( .
	ram:6052 e5             push hl              	;.
	ram:6053 d5             push de              	;.
	ram:6054 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:6057 ed 5b e1 8b    ld de,(08be1h)       	;. [ . .
	ram:605b cd 8e 00       call 0008eh          	;. . .
	ram:605e 30 03          jr nc,l6063h         	;0 .
	ram:6060 22 e1 8b       ld (08be1h),hl       	;" . .
l6063h:
	ram:6063 d1             pop de               	;.
	ram:6064 e1             pop hl               	;.
l6065h:
	ram:6065 fd cb 02 86    res 0,(iy+002h)      	;. . . .
	ram:6069 af             xor a                	;.
	ram:606a 32 64 83       ld (08364h),a        	;2 d .
	ram:606d fd cb 03 96    res 2,(iy+003h)      	;. . . .
	ram:6071 f1             pop af               	;.
	ram:6072 c9             ret                  	;.
sub_6073h:
	ram:6073 f5             push af              	;.
	ram:6074 c5             push bc              	;.
	ram:6075 d5             push de              	;.
	ram:6076 e5             push hl              	;.
	ram:6077 af             xor a                	;.
	ram:6078 32 62 84       ld (08462h),a        	;2 b .
	ram:607b 32 b5 84       ld (084b5h),a        	;2 . .
	ram:607e 32 12 85       ld (08512h),a        	;2 . .
	ram:6081 32 6f 85       ld (0856fh),a        	;2 o .
	ram:6084 cd d9 62       call sub_62d9h       	;. . b
	ram:6087 cd e7 65       call sub_65e7h       	;. . e
	ram:608a 11 d4 84       ld de,084d4h         	;. . .
	ram:608d 21 63 84       ld hl,08463h         	;! c .
	ram:6090 cd ef 5f       call sub_5fefh       	;. . _
	ram:6093 11 31 85       ld de,08531h         	;. 1 .
	ram:6096 21 63 84       ld hl,08463h         	;! c .
	ram:6099 cd ef 5f       call sub_5fefh       	;. . _
	ram:609c 11 a2 85       ld de,085a2h         	;. . .
	ram:609f 21 63 84       ld hl,08463h         	;! c .
	ram:60a2 cd ef 5f       call sub_5fefh       	;. . _
	ram:60a5 cd 10 66       call sub_6610h       	;. . f
	ram:60a8 cd 3b 66       call sub_663bh       	;. ; f
	ram:60ab cd 1a 66       call sub_661ah       	;. . f
	ram:60ae 11 ac 83       ld de,083ach         	;. . .
	ram:60b1 21 7a 85       ld hl,0857ah         	;! z .
	ram:60b4 01 64 00       ld bc,00064h         	;. d .
	ram:60b7 ed b0          ldir                 	;. .
	ram:60b9 11 8e 83       ld de,0838eh         	;. . .
	ram:60bc 21 b6 84       ld hl,084b6h         	;! . .
	ram:60bf 01 1e 00       ld bc,0001eh         	;. . .
	ram:60c2 ed b0          ldir                 	;. .
	ram:60c4 cd 3e 21       call 0213eh          	;. > !
	ram:60c7 21 fd fb       ld hl,0fbfdh         	;! . .
	ram:60ca 22 83 80       ld (08083h),hl       	;" . .
	ram:60cd 11 10 84       ld de,08410h         	;. . .
	ram:60d0 cd 11 21       call 02111h          	;. . !
	ram:60d3 21 fb fb       ld hl,0fbfbh         	;! . .
	ram:60d6 22 83 80       ld (08083h),hl       	;" . .
	ram:60d9 cd 11 21       call 02111h          	;. . !
	ram:60dc cd 98 21       call 02198h          	;. . !
	ram:60df 3e 40          ld a,040h            	;> @
	ram:60e1 32 85 80       ld (08085h),a        	;2 . .
	ram:60e4 11 24 84       ld de,08424h         	;. $ .
	ram:60e7 cd 11 21       call 02111h          	;. . !
	ram:60ea cd 11 21       call 02111h          	;. . !
	ram:60ed 21 82 00       ld hl,00082h         	;! . .
	ram:60f0 22 8c 83       ld (0838ch),hl       	;" . .
	ram:60f3 21 51 00       ld hl,00051h         	;! Q .
	ram:60f6 22 60 84       ld (08460h),hl       	;" ` .
	ram:60f9 21 5b 00       ld hl,0005bh         	;! [ .
	ram:60fc 22 b3 84       ld (084b3h),hl       	;" . .
	ram:60ff 21 5b 00       ld hl,0005bh         	;! [ .
	ram:6102 22 10 85       ld (08510h),hl       	;" . .
	ram:6105 21 71 00       ld hl,00071h         	;! q .
	ram:6108 22 6d 85       ld (0856dh),hl       	;" m .
	ram:610b c3 1e 6b       jp l6b1eh            	;. . k
sub_610eh:
	ram:610e 21 9f 84       ld hl,0849fh         	;! . .
	ram:6111 e7             rst 20h              	;.
	ram:6112 13             inc de               	;.
	ram:6113 cd 9d 20       call 0209dh          	;. .  
	ram:6116 cd 8e 1f       call 01f8eh          	;. . .
	ram:6119 d8             ret c                	;.
	ram:611a c3 55 0a       jp 00a55h            	;. U .
sub_611dh:
	ram:611d 2e 05          ld l,005h            	;. .
	ram:611f 3a 68 83       ld a,(08368h)        	;: h .
sub_6122h:
	ram:6122 fe 0a          cp 00ah              	;. .
	ram:6124 38 01          jr c,l6127h          	;8 .
	ram:6126 2c             inc l                	;,
l6127h:
	ram:6127 26 00          ld h,000h            	;& .
sub_6129h:
	ram:6129 cd 2a 2a       call 02a2ah          	;. * *
	ram:612c 13             inc de               	;.
	ram:612d 13             inc de               	;.
	ram:612e af             xor a                	;.
	ram:612f 12             ld (de),a            	;.
	ram:6130 13             inc de               	;.
	ram:6131 c9             ret                  	;.
sub_6132h:
	ram:6132 3a 68 83       ld a,(08368h)        	;: h .
sub_6135h:
	ram:6135 d5             push de              	;.
	ram:6136 cd 07 6c       call sub_6c07h       	;. . l
	ram:6139 d1             pop de               	;.
	ram:613a 21 82 80       ld hl,08082h         	;! . .
	ram:613d 3e 3b          ld a,03bh            	;> ;
	ram:613f 77             ld (hl),a            	;w
	ram:6140 3a 83 80       ld a,(08083h)        	;: . .
	ram:6143 c6 02          add a,002h           	;. .
	ram:6145 4f             ld c,a               	;O
	ram:6146 06 00          ld b,000h            	;. .
	ram:6148 ed b0          ldir                 	;. .
	ram:614a c9             ret                  	;.
sub_614bh:
	ram:614b 2a 69 83       ld hl,(08369h)       	;* i .
	ram:614e e7             rst 20h              	;.
	ram:614f cd 3a 0d       call 00d3ah          	;. : .
	ram:6152 cd 52 0e       call 00e52h          	;. R .
	ram:6155 cd 8d 20       call 0208dh          	;. .  
	ram:6158 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:615b e7             rst 20h              	;.
	ram:615c cd 3a 0d       call 00d3ah          	;. : .
	ram:615f c3 52 0e       jp 00e52h            	;. R .
	ram:6162 d5             push de              	;.
	ram:6163 f5             push af              	;.
	ram:6164 e5             push hl              	;.
	ram:6165 cd 4b 61       call sub_614bh       	;. K a
	ram:6168 cd 36 2e       call 02e36h          	;. 6 .
	ram:616b 18 19          jr l6186h            	;. .
sub_616dh:
	ram:616d d5             push de              	;.
	ram:616e f5             push af              	;.
	ram:616f e5             push hl              	;.
	ram:6170 cd 13 00       call 00013h          	;. . .
	ram:6173 28 0a          jr z,l617fh          	;( .
	ram:6175 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:6178 e7             rst 20h              	;.
	ram:6179 df             rst 18h              	;.
	ram:617a cd 7d 36       call 0367dh          	;. } 6
	ram:617d 18 07          jr l6186h            	;. .
l617fh:
	ram:617f cd 8f 36       call 0368fh          	;. . 6
	ram:6182 df             rst 18h              	;.
	ram:6183 cd 89 36       call 03689h          	;. . 6
l6186h:
	ram:6186 cd 8d 20       call 0208dh          	;. .  
	ram:6189 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:618c d1             pop de               	;.
	ram:618d f1             pop af               	;.
	ram:618e f5             push af              	;.
	ram:618f cd c4 61       call sub_61c4h       	;. . a
	ram:6192 cd 07 20       call 02007h          	;. .  
	ram:6195 cd e0 2d       call 02de0h          	;. . -
	ram:6198 cd 91 2e       call 02e91h          	;. . .
	ram:619b 2a 69 83       ld hl,(08369h)       	;* i .
	ram:619e f1             pop af               	;.
	ram:619f d1             pop de               	;.
	ram:61a0 cd c4 61       call sub_61c4h       	;. . a
sub_61a3h:
	ram:61a3 cd e5 5f       call sub_5fe5h       	;. . _
	ram:61a6 ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:61aa cd 11 21       call 02111h          	;. . !
	ram:61ad 21 a3 80       ld hl,080a3h         	;! . .
	ram:61b0 cd 9d 20       call 0209dh          	;. .  
	ram:61b3 cd 5a 64       call sub_645ah       	;. Z d
	ram:61b6 cd fc 2d       call 02dfch          	;. . -
	ram:61b9 ed 5b 6f 83    ld de,(0836fh)       	;. [ o .
	ram:61bd cd 11 21       call 02111h          	;. . !
	ram:61c0 23             inc hl               	;#
	ram:61c1 c3 9d 20       jp 0209dh            	;. .  
sub_61c4h:
	ram:61c4 f5             push af              	;.
	ram:61c5 d5             push de              	;.
	ram:61c6 cd 0b 21       call 0210bh          	;. . !
	ram:61c9 e7             rst 20h              	;.
	ram:61ca cd 71 0d       call 00d71h          	;. q .
	ram:61cd cd 52 0e       call 00e52h          	;. R .
	ram:61d0 cd f5 1f       call 01ff5h          	;. . .
	ram:61d3 e1             pop hl               	;.
	ram:61d4 e7             rst 20h              	;.
	ram:61d5 f1             pop af               	;.
	ram:61d6 dc 1f 10       call c,0101fh        	;. . .
	ram:61d9 cd 07 20       call 02007h          	;. .  
	ram:61dc ef             rst 28h              	;.
	ram:61dd cd f5 1f       call 01ff5h          	;. . .
	ram:61e0 cd 29 20       call 02029h          	;. )  
sub_61e3h:
	ram:61e3 f7             rst 30h              	;.
	ram:61e4 cd e0 11       call 011e0h          	;. . .
	ram:61e7 cd 9b 25       call 0259bh          	;. . %
	ram:61ea cd 07 20       call 02007h          	;. .  
	ram:61ed cd f5 1f       call 01ff5h          	;. . .
	ram:61f0 cd 5b 20       call 0205bh          	;. [  
	ram:61f3 cd 71 0d       call 00d71h          	;. q .
	ram:61f6 cd e0 11       call 011e0h          	;. . .
	ram:61f9 c3 9b 25       jp 0259bh            	;. . %
sub_61fch:
	ram:61fc 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:61ff 01 3e 00       ld bc,0003eh         	;. > .
	ram:6202 11 42 84       ld de,08442h         	;. B .
sub_6205h:
	ram:6205 d5             push de              	;.
	ram:6206 c5             push bc              	;.
	ram:6207 11 8d 80       ld de,0808dh         	;. . .
	ram:620a cd 9d 20       call 0209dh          	;. .  
	ram:620d cd 98 20       call 02098h          	;. .  
	ram:6210 cd 71 0d       call 00d71h          	;. q .
	ram:6213 cd 68 25       call 02568h          	;. h %
	ram:6216 c2 59 0a       jp nz,00a59h         	;. Y .
	ram:6219 e1             pop hl               	;.
	ram:621a cd 87 66       call sub_6687h       	;. . f
	ram:621d cd 23 10       call 01023h          	;. # .
	ram:6220 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:6224 21 19 00       ld hl,00019h         	;! . .
	ram:6227 19             add hl,de            	;.
	ram:6228 da 59 0a       jp c,00a59h          	;. Y .
	ram:622b cd 9b 25       call 0259bh          	;. . %
	ram:622e cd d1 23       call 023d1h          	;. . #
	ram:6231 ca 59 0a       jp z,00a59h          	;. Y .
	ram:6234 d1             pop de               	;.
	ram:6235 d5             push de              	;.
	ram:6236 cd 11 21       call 02111h          	;. . !
	ram:6239 cd 1f 10       call 0101fh          	;. . .
	ram:623c 21 87 80       ld hl,08087h         	;! . .
	ram:623f 06 03          ld b,003h            	;. .
	ram:6241 3e 05          ld a,005h            	;> .
	ram:6243 cd 96 43       call l4396h          	;. . C
	ram:6246 21 87 80       ld hl,08087h         	;! . .
	ram:6249 7e             ld a,(hl)            	;~
	ram:624a e6 f0          and 0f0h             	;. .
	ram:624c 77             ld (hl),a            	;w
	ram:624d 23             inc hl               	;#
	ram:624e 06 04          ld b,004h            	;. .
	ram:6250 cd b8 21       call 021b8h          	;. . !
	ram:6253 21 14 00       ld hl,00014h         	;! . .
	ram:6256 d1             pop de               	;.
	ram:6257 19             add hl,de            	;.
	ram:6258 eb             ex de,hl             	;.
	ram:6259 c3 11 21       jp 02111h            	;. . !
sub_625ch:
	ram:625c 2a 69 83       ld hl,(08369h)       	;* i .
	ram:625f 01 7e 00       ld bc,0007eh         	;. ~ .
	ram:6262 11 38 84       ld de,08438h         	;. 8 .
	ram:6265 cd 05 62       call sub_6205h       	;. . b
sub_6268h:
	ram:6268 2a 69 83       ld hl,(08369h)       	;* i .
	ram:626b ed 5b 39 84    ld de,(08439h)       	;. [ 9 .
sub_626fh:
	ram:626f d5             push de              	;.
	ram:6270 e7             rst 20h              	;.
	ram:6271 cd 0b 21       call 0210bh          	;. . !
	ram:6274 3a 85 80       ld a,(08085h)        	;: . .
	ram:6277 b7             or a                 	;.
	ram:6278 28 1f          jr z,l6299h          	;( .
	ram:627a 3a 90 80       ld a,(08090h)        	;: . .
	ram:627d b7             or a                 	;.
	ram:627e 28 19          jr z,l6299h          	;( .
	ram:6280 2a 83 80       ld hl,(08083h)       	;* . .
	ram:6283 ed 5b 8e 80    ld de,(0808eh)       	;. [ . .
	ram:6287 cd 8e 00       call 0008eh          	;. . .
	ram:628a 30 01          jr nc,l628dh         	;0 .
	ram:628c eb             ex de,hl             	;.
l628dh:
	ram:628d 11 f4 ff       ld de,0fff4h         	;. . .
	ram:6290 19             add hl,de            	;.
	ram:6291 d1             pop de               	;.
	ram:6292 b7             or a                 	;.
	ram:6293 ed 52          sbc hl,de            	;. R
	ram:6295 d2 59 0a       jp nc,00a59h         	;. Y .
	ram:6298 c9             ret                  	;.
l6299h:
	ram:6299 d1             pop de               	;.
	ram:629a c9             ret                  	;.
sub_629bh:
	ram:629b fd 7e 04       ld a,(iy+004h)       	;. ~ .
	ram:629e cb bf          res 7,a              	;. .
	ram:62a0 cd 7a 00       call 0007ah          	;. z .
	ram:62a3 28 14          jr z,l62b9h          	;( .
	ram:62a5 32 62 84       ld (08462h),a        	;2 b .
l62a8h:
	ram:62a8 fd cb 02 ae    res 5,(iy+002h)      	;. . . .
	ram:62ac fd cb 02 b6    res 6,(iy+002h)      	;. . . .
	ram:62b0 fd cb 02 be    res 7,(iy+002h)      	;. . . .
	ram:62b4 fd cb 02 a6    res 4,(iy+002h)      	;. . . .
	ram:62b8 c9             ret                  	;.
l62b9h:
	ram:62b9 cd 7f 00       call 0007fh          	;. . .
	ram:62bc 28 05          jr z,l62c3h          	;( .
	ram:62be 32 b5 84       ld (084b5h),a        	;2 . .
	ram:62c1 18 e5          jr l62a8h            	;. .
l62c3h:
	ram:62c3 cd 84 00       call 00084h          	;. . .
	ram:62c6 28 05          jr z,l62cdh          	;( .
	ram:62c8 32 12 85       ld (08512h),a        	;2 . .
	ram:62cb 18 db          jr l62a8h            	;. .
l62cdh:
	ram:62cd 32 6f 85       ld (0856fh),a        	;2 o .
	ram:62d0 18 d6          jr l62a8h            	;. .
	ram:62d2 cd 7a 00       call 0007ah          	;. z .
	ram:62d5 c0             ret nz               	;.
	ram:62d6 cd 9b 62       call sub_629bh       	;. . b
sub_62d9h:
	ram:62d9 cd a8 62       call l62a8h          	;. . b
	ram:62dc fd cb 02 e6    set 4,(iy+002h)      	;. . . .
	ram:62e0 21 30 63       ld hl,l6330h         	;! 0 c
	ram:62e3 3a 62 84       ld a,(08462h)        	;: b .
l62e6h:
	ram:62e6 fd 77 04       ld (iy+004h),a       	;. w .
	ram:62e9 01 0c 00       ld bc,0000ch         	;. . .
	ram:62ec 11 69 83       ld de,08369h         	;. i .
	ram:62ef ed b0          ldir                 	;. .
	ram:62f1 cd 05 3c       call 03c05h          	;. . <
	ram:62f4 c3 1b 00       jp 0001bh            	;. . .
	ram:62f7 cd 7f 00       call 0007fh          	;. . .
	ram:62fa c0             ret nz               	;.
	ram:62fb cd 9b 62       call sub_629bh       	;. . b
	ram:62fe fd cb 02 ee    set 5,(iy+002h)      	;. . . .
	ram:6302 21 3c 63       ld hl,l633ch         	;! < c
	ram:6305 3a b5 84       ld a,(084b5h)        	;: . .
	ram:6308 18 dc          jr l62e6h            	;. .
	ram:630a cd 84 00       call 00084h          	;. . .
	ram:630d c0             ret nz               	;.
	ram:630e cd 9b 62       call sub_629bh       	;. . b
	ram:6311 fd cb 02 f6    set 6,(iy+002h)      	;. . . .
	ram:6315 21 48 63       ld hl,l6348h         	;! H c
	ram:6318 3a 12 85       ld a,(08512h)        	;: . .
	ram:631b 18 c9          jr l62e6h            	;. .
	ram:631d cd 89 00       call 00089h          	;. . .
	ram:6320 c0             ret nz               	;.
	ram:6321 cd 9b 62       call sub_629bh       	;. . b
	ram:6324 fd cb 02 fe    set 7,(iy+002h)      	;. . . .
	ram:6328 21 54 63       ld hl,l6354h         	;! T c
	ram:632b 3a 6f 85       ld a,(0856fh)        	;: o .
	ram:632e 18 b6          jr l62e6h            	;. .
l6330h:
	ram:6330 63             ld h,e               	;c
	ram:6331 84             add a,h              	;.
	ram:6332 6d             ld l,l               	;m
	ram:6333 84             add a,h              	;.
	ram:6334 77             ld (hl),a            	;w
	ram:6335 84             add a,h              	;.
	ram:6336 81             add a,c              	;.
	ram:6337 84             add a,h              	;.
	ram:6338 8b             adc a,e              	;.
	ram:6339 84             add a,h              	;.
	ram:633a 95             sub l                	;.
	ram:633b 84             add a,h              	;.
l633ch:
	ram:633c d4 84 de       call nc,0de84h       	;. . .
	ram:633f 84             add a,h              	;.
	ram:6340 e8             ret pe               	;.
	ram:6341 84             add a,h              	;.
	ram:6342 f2 84 fc       jp p,0fc84h          	;. . .
	ram:6345 84             add a,h              	;.
	ram:6346 06 85          ld b,085h            	;. .
l6348h:
	ram:6348 31 85 3b       ld sp,03b85h         	;1 . ;
	ram:634b 85             add a,l              	;.
	ram:634c 45             ld b,l               	;E
	ram:634d 85             add a,l              	;.
	ram:634e 4f             ld c,a               	;O
	ram:634f 85             add a,l              	;.
	ram:6350 59             ld e,c               	;Y
	ram:6351 85             add a,l              	;.
	ram:6352 63             ld h,e               	;c
	ram:6353 85             add a,l              	;.
l6354h:
	ram:6354 a2             and d                	;.
	ram:6355 85             add a,l              	;.
	ram:6356 ac             xor h                	;.
	ram:6357 85             add a,l              	;.
	ram:6358 b6             or (hl)              	;.
	ram:6359 85             add a,l              	;.
	ram:635a c0             ret nz               	;.
	ram:635b 85             add a,l              	;.
	ram:635c ca 85 d4       jp z,0d485h          	;. . .
	ram:635f 85             add a,l              	;.
sub_6360h:
	ram:6360 cd e5 5f       call sub_5fe5h       	;. . _
	ram:6363 cd fc 11       call 011fch          	;. . .
	ram:6366 3e 1f          ld a,01fh            	;> .
	ram:6368 cd 6b 66       call sub_666bh       	;. k f
	ram:636b cd 71 0d       call 00d71h          	;. q .
	ram:636e cd 85 20       call 02085h          	;. .  
	ram:6371 3e 3e          ld a,03eh            	;> >
	ram:6373 cd 6b 66       call sub_666bh       	;. k f
	ram:6376 f7             rst 30h              	;.
	ram:6377 cd f5 1f       call 01ff5h          	;. . .
	ram:637a cd 3e 21       call 0213eh          	;. > !
	ram:637d 3e 01          ld a,001h            	;> .
	ram:637f 32 83 80       ld (08083h),a        	;2 . .
	ram:6382 ed 5b 6d 83    ld de,(0836dh)       	;. [ m .
	ram:6386 cd 11 21       call 02111h          	;. . !
	ram:6389 ed 5b 73 83    ld de,(08373h)       	;. [ s .
	ram:638d cd 11 21       call 02111h          	;. . !
	ram:6390 cd 5b 20       call 0205bh          	;. [  
	ram:6393 cd fc 11       call 011fch          	;. . .
	ram:6396 3e 3f          ld a,03fh            	;> ?
	ram:6398 cd 6b 66       call sub_666bh       	;. k f
	ram:639b cd 71 0d       call 00d71h          	;. q .
	ram:639e cd 8d 20       call 0208dh          	;. .  
	ram:63a1 21 7e 00       ld hl,0007eh         	;! ~ .
	ram:63a4 cd 87 66       call sub_6687h       	;. . f
	ram:63a7 f7             rst 30h              	;.
sub_63a8h:
	ram:63a8 2a 6b 83       ld hl,(0836bh)       	;* k .
	ram:63ab 22 d0 80       ld (080d0h),hl       	;" . .
	ram:63ae cd 59 36       call 03659h          	;. Y 6
	ram:63b1 cd 56 20       call 02056h          	;. V  
	ram:63b4 2a 71 83       ld hl,(08371h)       	;* q .
	ram:63b7 22 d0 80       ld (080d0h),hl       	;" . .
	ram:63ba cd 59 36       call 03659h          	;. Y 6
	ram:63bd cd 5b 20       call 0205bh          	;. [  
	ram:63c0 3e 04          ld a,004h            	;> .
	ram:63c2 cd 23 36       call 03623h          	;. # 6
	ram:63c5 cd 51 20       call 02051h          	;. Q  
	ram:63c8 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:63cb 22 d0 80       ld (080d0h),hl       	;" . .
	ram:63ce cd 59 36       call 03659h          	;. Y 6
	ram:63d1 c9             ret                  	;.
sub_63d2h:
	ram:63d2 cd e5 5f       call sub_5fe5h       	;. . _
	ram:63d5 cd 3e 21       call 0213eh          	;. > !
	ram:63d8 ed 5b 6d 83    ld de,(0836dh)       	;. [ m .
	ram:63dc cd 11 21       call 02111h          	;. . !
	ram:63df ed 5b 73 83    ld de,(08373h)       	;. [ s .
	ram:63e3 cd 11 21       call 02111h          	;. . !
	ram:63e6 3e 63          ld a,063h            	;> c
	ram:63e8 32 85 80       ld (08085h),a        	;2 . .
	ram:63eb cd 96 65       call sub_6596h       	;. . e
	ram:63ee 3e 31          ld a,031h            	;> 1
	ram:63f0 32 85 80       ld (08085h),a        	;2 . .
	ram:63f3 c3 92 65       jp l6592h            	;. . e
sub_63f6h:
	ram:63f6 2a 69 83       ld hl,(08369h)       	;* i .
	ram:63f9 fd cb 04 7e    bit 7,(iy+004h)      	;. . . ~
	ram:63fd 28 03          jr z,l6402h          	;( .
	ram:63ff 21 ed 85       ld hl,085edh         	;! . .
l6402h:
	ram:6402 11 82 80       ld de,08082h         	;. . .
	ram:6405 cd ef 5f       call sub_5fefh       	;. . _
	ram:6408 cd e5 5f       call sub_5fe5h       	;. . _
	ram:640b 11 82 80       ld de,08082h         	;. . .
	ram:640e 37             scf                  	;7
	ram:640f f5             push af              	;.
	ram:6410 18 39          jr l644bh            	;. 9
sub_6412h:
	ram:6412 cd e5 5f       call sub_5fe5h       	;. . _
	ram:6415 37             scf                  	;7
l6416h:
	ram:6416 f5             push af              	;.
	ram:6417 cd 7f 00       call 0007fh          	;. . .
	ram:641a 28 12          jr z,l642eh          	;( .
	ram:641c 21 b6 84       ld hl,084b6h         	;! . .
	ram:641f 11 8e 83       ld de,0838eh         	;. . .
	ram:6422 06 03          ld b,003h            	;. .
	ram:6424 f1             pop af               	;.
	ram:6425 f5             push af              	;.
	ram:6426 38 01          jr c,l6429h          	;8 .
	ram:6428 eb             ex de,hl             	;.
l6429h:
	ram:6429 cd 6a 64       call sub_646ah       	;. j d
	ram:642c 18 1a          jr l6448h            	;. .
l642eh:
	ram:642e 21 13 85       ld hl,08513h         	;! . .
	ram:6431 11 b6 83       ld de,083b6h         	;. . .
	ram:6434 06 09          ld b,009h            	;. .
	ram:6436 cd 84 00       call 00084h          	;. . .
	ram:6439 20 15          jr nz,l6450h         	;.
	ram:643b 21 7a 85       ld hl,0857ah         	;! z .
	ram:643e 11 ac 83       ld de,083ach         	;. . .
	ram:6441 06 0a          ld b,00ah            	;. .
	ram:6443 cd 89 00       call 00089h          	;. . .
	ram:6446 20 08          jr nz,l6450h         	;.
l6448h:
	ram:6448 11 d4 83       ld de,083d4h         	;. . .
l644bh:
	ram:644b 2a 69 83       ld hl,(08369h)       	;* i .
	ram:644e 06 06          ld b,006h            	;. .
l6450h:
	ram:6450 f1             pop af               	;.
	ram:6451 f5             push af              	;.
	ram:6452 38 01          jr c,l6455h          	;8 .
	ram:6454 eb             ex de,hl             	;.
l6455h:
	ram:6455 cd 6a 64       call sub_646ah       	;. j d
	ram:6458 f1             pop af               	;.
	ram:6459 d0             ret nc               	;.
sub_645ah:
	ram:645a cd 7a 00       call 0007ah          	;. z .
	ram:645d cc 13 00       call z,00013h        	;. . .
	ram:6460 c8             ret z                	;.
	ram:6461 ed 5b 69 83    ld de,(08369h)       	;. [ i .
	ram:6465 21 9f 84       ld hl,0849fh         	;! . .
	ram:6468 06 02          ld b,002h            	;. .
sub_646ah:
	ram:646a cd 72 26       call 02672h          	;. r &
	ram:646d eb             ex de,hl             	;.
	ram:646e c5             push bc              	;.
	ram:646f d5             push de              	;.
	ram:6470 cd 9d 20       call 0209dh          	;. .  
	ram:6473 eb             ex de,hl             	;.
	ram:6474 e3             ex (sp),hl           	;.
	ram:6475 cb b6          res 6,(hl)           	;. .
	ram:6477 e1             pop hl               	;.
	ram:6478 c1             pop bc               	;.
	ram:6479 10 ef          djnz sub_646ah       	;. .
	ram:647b c9             ret                  	;.
sub_647ch:
	ram:647c b7             or a                 	;.
	ram:647d 18 97          jr l6416h            	;. .
sub_647fh:
	ram:647f cd 1b 00       call 0001bh          	;. . .
	ram:6482 cd 5c 62       call sub_625ch       	;. \ b
	ram:6485 cd fc 61       call sub_61fch       	;. . a
	ram:6488 21 ec 64       ld hl,l64ech         	;! . d
	ram:648b cd b5 0a       call 00ab5h          	;. . .
	ram:648e 21 f6 64       ld hl,l64f6h         	;! . d
	ram:6491 cd 0b 21       call 0210bh          	;. . !
	ram:6494 21 42 84       ld hl,08442h         	;! B .
	ram:6497 e7             rst 20h              	;.
	ram:6498 ef             rst 28h              	;.
	ram:6499 21 38 84       ld hl,08438h         	;! 8 .
	ram:649c cd 83 1f       call 01f83h          	;. . .
	ram:649f 38 09          jr c,l64aah          	;8 .
	ram:64a1 28 45          jr z,l64e8h          	;( E
	ram:64a3 2a 69 83       ld hl,(08369h)       	;* i .
	ram:64a6 3e 3f          ld a,03fh            	;> ?
	ram:64a8 18 12          jr l64bch            	;. .
l64aah:
	ram:64aa cd 95 20       call 02095h          	;. .  
	ram:64ad 21 f6 64       ld hl,l64f6h         	;! . d
	ram:64b0 cd 0b 21       call 0210bh          	;. . !
	ram:64b3 cd 23 10       call 01023h          	;. # .
	ram:64b6 2a 6f 83       ld hl,(0836fh)       	;* o .
	ram:64b9 3e 1f          ld a,01fh            	;> .
	ram:64bb 37             scf                  	;7
l64bch:
	ram:64bc f5             push af              	;.
	ram:64bd e5             push hl              	;.
	ram:64be cd 6b 66       call sub_666bh       	;. k f
	ram:64c1 ef             rst 28h              	;.
	ram:64c2 cd f5 1f       call 01ff5h          	;. . .
	ram:64c5 e1             pop hl               	;.
	ram:64c6 e5             push hl              	;.
	ram:64c7 cd 0a 21       call 0210ah          	;. . !
	ram:64ca f7             rst 30h              	;.
	ram:64cb cd 52 0e       call 00e52h          	;. R .
	ram:64ce cd 8d 20       call 0208dh          	;. .  
	ram:64d1 cd 07 20       call 02007h          	;. .  
	ram:64d4 cd e3 61       call sub_61e3h       	;. . a
	ram:64d7 cd e5 5f       call sub_5fe5h       	;. . _
	ram:64da d1             pop de               	;.
	ram:64db cd 11 21       call 02111h          	;. . !
	ram:64de 21 a3 80       ld hl,080a3h         	;! . .
	ram:64e1 cd 9d 20       call 0209dh          	;. .  
	ram:64e4 f1             pop af               	;.
	ram:64e5 d4 5a 64       call nc,sub_645ah    	;. Z d
l64e8h:
	ram:64e8 cd db 0a       call 00adbh          	;. . .
	ram:64eb c9             ret                  	;.
l64ech:
	ram:64ec e6 7f          and 07fh             	;. .
	ram:64ee fe 06          cp 006h              	;. .
	ram:64f0 d2 8a 0a       jp nc,00a8ah         	;. . .
	ram:64f3 c3 5d 0a       jp 00a5dh            	;. ] .
l64f6h:
	ram:64f6 00             nop                  	;.
	ram:64f7 ff             rst 38h              	;.
	ram:64f8 fb             ei                   	;.
	ram:64f9 83             add a,e              	;.
	ram:64fa 63             ld h,e               	;c
	ram:64fb 63             ld h,e               	;c
	ram:64fc 63             ld h,e               	;c
	ram:64fd 63             ld h,e               	;c
	ram:64fe 63             ld h,e               	;c
	ram:64ff 64             ld h,h               	;d
sub_6500h:
	ram:6500 21 ec 64       ld hl,l64ech         	;! . d
l6503h:
	ram:6503 cd b5 0a       call 00ab5h          	;. . .
	ram:6506 cd 1b 00       call 0001bh          	;. . .
	ram:6509 fd cb 02 de    set 3,(iy+002h)      	;. . . .
	ram:650d cd 62 6c       call sub_6c62h       	;. b l
	ram:6510 fd cb 02 9e    res 3,(iy+002h)      	;. . . .
	ram:6514 cd 52 2f       call 02f52h          	;. R /
	ram:6517 3a 82 80       ld a,(08082h)        	;: . .
	ram:651a 3c             inc a                	;<
	ram:651b 28 2d          jr z,l654ah          	;( -
	ram:651d cd e0 11       call 011e0h          	;. . .
	ram:6520 cd 9b 25       call 0259bh          	;. . %
	ram:6523 cd 9c 2f       call 02f9ch          	;. . /
	ram:6526 cd f5 2e       call 02ef5h          	;. . .
	ram:6529 cd e0 11       call 011e0h          	;. . .
	ram:652c cd 9b 25       call 0259bh          	;. . %
	ram:652f cd ae 2f       call 02faeh          	;. . /
	ram:6532 cd f4 2d       call 02df4h          	;. . -
	ram:6535 cd e0 11       call 011e0h          	;. . .
	ram:6538 cd 9b 25       call 0259bh          	;. . %
	ram:653b cd f5 1f       call 01ff5h          	;. . .
	ram:653e cd f4 2d       call 02df4h          	;. . -
	ram:6541 cd e0 11       call 011e0h          	;. . .
	ram:6544 cd 9b 25       call 0259bh          	;. . %
	ram:6547 cd a3 61       call sub_61a3h       	;. . a
l654ah:
	ram:654a 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:654d 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:6550 cd db 0a       call 00adbh          	;. . .
	ram:6553 c9             ret                  	;.
sub_6554h:
	ram:6554 cd e5 5f       call sub_5fe5h       	;. . _
	ram:6557 3e 5a          ld a,05ah            	;> Z
	ram:6559 cd 66 66       call sub_6666h       	;. f f
	ram:655c fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:6560 cc 3b 0e       call z,00e3bh        	;. ; .
	ram:6563 ed 5b 6d 83    ld de,(0836dh)       	;. [ m .
	ram:6567 cd 11 21       call 02111h          	;. . !
	ram:656a 3e 2f          ld a,02fh            	;> /
	ram:656c cd 66 66       call sub_6666h       	;. f f
	ram:656f 3e 02          ld a,002h            	;> .
	ram:6571 32 83 80       ld (08083h),a        	;2 . .
	ram:6574 3e 25          ld a,025h            	;> %
	ram:6576 32 86 80       ld (08086h),a        	;2 . .
	ram:6579 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:657d cc 3b 0e       call z,00e3bh        	;. ; .
	ram:6580 cd 96 65       call sub_6596h       	;. . e
	ram:6583 cd 3e 21       call 0213eh          	;. > !
	ram:6586 ed 5b 73 83    ld de,(08373h)       	;. [ s .
	ram:658a cd 11 21       call 02111h          	;. . !
	ram:658d 3e 40          ld a,040h            	;> @
	ram:658f 32 85 80       ld (08085h),a        	;2 . .
l6592h:
	ram:6592 3e 06          ld a,006h            	;> .
	ram:6594 18 02          jr l6598h            	;. .
sub_6596h:
	ram:6596 3e 04          ld a,004h            	;> .
l6598h:
	ram:6598 f5             push af              	;.
	ram:6599 cd 8d 20       call 0208dh          	;. .  
	ram:659c cd 9b 0f       call 00f9bh          	;. . .
	ram:659f f1             pop af               	;.
	ram:65a0 f5             push af              	;.
	ram:65a1 cd 23 36       call 03623h          	;. # 6
	ram:65a4 cd 5b 20       call 0205bh          	;. [  
	ram:65a7 f1             pop af               	;.
	ram:65a8 3c             inc a                	;<
	ram:65a9 cd 23 36       call 03623h          	;. # 6
	ram:65ac c3 5b 20       jp 0205bh            	;. [  
	ram:65af cd 3e 21       call 0213eh          	;. > !
	ram:65b2 11 e8 83       ld de,083e8h         	;. . .
	ram:65b5 cd 11 21       call 02111h          	;. . !
	ram:65b8 21 83 80       ld hl,08083h         	;! . .
	ram:65bb 34             inc (hl)             	;4
	ram:65bc 11 de 83       ld de,083deh         	;. . .
	ram:65bf cd 11 21       call 02111h          	;. . !
	ram:65c2 cd 9b 0f       call 00f9bh          	;. . .
	ram:65c5 11 d4 83       ld de,083d4h         	;. . .
	ram:65c8 cd 11 21       call 02111h          	;. . !
	ram:65cb 21 d4 83       ld hl,083d4h         	;! . .
	ram:65ce 11 f2 83       ld de,083f2h         	;. . .
	ram:65d1 01 1e 00       ld bc,0001eh         	;. . .
	ram:65d4 ed b0          ldir                 	;. .
	ram:65d6 21 b6 83       ld hl,083b6h         	;! . .
	ram:65d9 cd 3e 66       call sub_663eh       	;. > f
	ram:65dc 11 ac 83       ld de,083ach         	;. . .
	ram:65df cd 27 1f       call 01f27h          	;. ' .
	ram:65e2 21 8e 83       ld hl,0838eh         	;! . .
	ram:65e5 18 57          jr sub_663eh         	;. W
sub_65e7h:
	ram:65e7 cd 3e 21       call 0213eh          	;. > !
	ram:65ea 3e 02          ld a,002h            	;> .
	ram:65ec cd 23 36       call 03623h          	;. # 6
	ram:65ef 3e 03          ld a,003h            	;> .
	ram:65f1 cd 23 36       call 03623h          	;. # 6
	ram:65f4 21 83 80       ld hl,08083h         	;! . .
	ram:65f7 34             inc (hl)             	;4
	ram:65f8 cd 92 65       call l6592h          	;. . e
	ram:65fb cd 96 65       call sub_6596h       	;. . e
	ram:65fe cd 5c 62       call sub_625ch       	;. \ b
	ram:6601 cd fc 61       call sub_61fch       	;. . a
	ram:6604 cd 13 00       call 00013h          	;. . .
	ram:6607 cc 7a 00       call z,0007ah        	;. z .
	ram:660a c0             ret nz               	;.
	ram:660b cd 7f 00       call 0007fh          	;. . .
	ram:660e 28 05          jr z,l6615h          	;( .
sub_6610h:
	ram:6610 21 b6 84       ld hl,084b6h         	;! . .
	ram:6613 18 29          jr sub_663eh         	;. )
l6615h:
	ram:6615 cd 84 00       call 00084h          	;. . .
	ram:6618 20 21          jr nz,sub_663bh      	;!
sub_661ah:
	ram:661a 21 00 10       ld hl,01000h         	;! . .
	ram:661d 22 de 85       ld (085deh),hl       	;" . .
	ram:6620 21 84 85       ld hl,08584h         	;! . .
	ram:6623 cd 3e 66       call sub_663eh       	;. > f
	ram:6626 11 7a 85       ld de,0857ah         	;. z .
	ram:6629 cd 27 1f       call 01f27h          	;. ' .
	ram:662c cd 3e 21       call 0213eh          	;. > !
	ram:662f 21 fd fb       ld hl,0fbfdh         	;! . .
	ram:6632 22 83 80       ld (08083h),hl       	;" . .
	ram:6635 11 70 85       ld de,08570h         	;. p .
	ram:6638 c3 11 21       jp 02111h            	;. . !
sub_663bh:
	ram:663b 21 13 85       ld hl,08513h         	;! . .
sub_663eh:
	ram:663e cd 9b 21       call 0219bh          	;. . !
	ram:6641 22 d0 80       ld (080d0h),hl       	;" . .
	ram:6644 11 0a 00       ld de,0000ah         	;. . .
	ram:6647 19             add hl,de            	;.
	ram:6648 e5             push hl              	;.
	ram:6649 cd 98 21       call 02198h          	;. . !
	ram:664c 3e 75          ld a,075h            	;> u
	ram:664e 32 85 80       ld (08085h),a        	;2 . .
	ram:6651 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:6655 cc 3b 0e       call z,00e3bh        	;. ; .
	ram:6658 d1             pop de               	;.
	ram:6659 cd 11 21       call 02111h          	;. . !
	ram:665c 3e 30          ld a,030h            	;> 0
	ram:665e cd 6b 66       call sub_666bh       	;. k f
	ram:6661 ef             rst 28h              	;.
	ram:6662 cd 59 36       call 03659h          	;. Y 6
	ram:6665 c9             ret                  	;.
sub_6666h:
	ram:6666 21 82 80       ld hl,08082h         	;! . .
	ram:6669 18 03          jr l666eh            	;. .
sub_666bh:
	ram:666b 21 8d 80       ld hl,0808dh         	;! . .
l666eh:
	ram:666e e5             push hl              	;.
	ram:666f f5             push af              	;.
	ram:6670 cd 9b 21       call 0219bh          	;. . !
	ram:6673 f1             pop af               	;.
	ram:6674 cd 20 69       call sub_6920h       	;.   i
	ram:6677 e1             pop hl               	;.
	ram:6678 23             inc hl               	;#
	ram:6679 fe 10          cp 010h              	;. .
	ram:667b 30 05          jr nc,l6682h         	;0 .
	ram:667d cd c7 21       call 021c7h          	;. . !
	ram:6680 18 01          jr l6683h            	;. .
l6682h:
	ram:6682 34             inc (hl)             	;4
l6683h:
	ram:6683 23             inc hl               	;#
	ram:6684 23             inc hl               	;#
	ram:6685 77             ld (hl),a            	;w
	ram:6686 c9             ret                  	;.
sub_6687h:
	ram:6687 e5             push hl              	;.
	ram:6688 cd 93 21       call 02193h          	;. . !
	ram:668b e1             pop hl               	;.
	ram:668c 7c             ld a,h               	;|
	ram:668d b5             or l                 	;.
	ram:668e c8             ret z                	;.
	ram:668f 7d             ld a,l               	;}
	ram:6690 e6 0f          and 00fh             	;. .
	ram:6692 c6 00          add a,000h           	;. .
	ram:6694 27             daa                  	;'
	ram:6695 32 92 80       ld (08092h),a        	;2 . .
	ram:6698 7c             ld a,h               	;|
	ram:6699 cd bf 21       call 021bfh          	;. . !
	ram:669c 11 96 40       ld de,04096h         	;. . @
	ram:669f cd d1 66       call sub_66d1h       	;. . f
	ram:66a2 7c             ld a,h               	;|
	ram:66a3 e6 0f          and 00fh             	;. .
	ram:66a5 11 56 02       ld de,00256h         	;. V .
	ram:66a8 cd d1 66       call sub_66d1h       	;. . f
	ram:66ab 7d             ld a,l               	;}
	ram:66ac cd bf 21       call 021bfh          	;. . !
	ram:66af 11 16 00       ld de,00016h         	;. . .
	ram:66b2 cd d1 66       call sub_66d1h       	;. . f
	ram:66b5 21 8e 80       ld hl,0808eh         	;! . .
	ram:66b8 36 05          ld (hl),005h         	;6 .
l66bah:
	ram:66ba 3a 90 80       ld a,(08090h)        	;: . .
	ram:66bd fe 10          cp 010h              	;. .
	ram:66bf d0             ret nc               	;.
	ram:66c0 21 92 80       ld hl,08092h         	;! . .
	ram:66c3 af             xor a                	;.
	ram:66c4 ed 6f          rld                  	;. o
	ram:66c6 2b             dec hl               	;+
	ram:66c7 ed 6f          rld                  	;. o
	ram:66c9 2b             dec hl               	;+
	ram:66ca ed 6f          rld                  	;. o
	ram:66cc 2b             dec hl               	;+
	ram:66cd 2b             dec hl               	;+
	ram:66ce 35             dec (hl)             	;5
	ram:66cf 18 e9          jr l66bah            	;. .
sub_66d1h:
	ram:66d1 c8             ret z                	;.
	ram:66d2 e5             push hl              	;.
	ram:66d3 47             ld b,a               	;G
l66d4h:
	ram:66d4 21 92 80       ld hl,08092h         	;! . .
	ram:66d7 7e             ld a,(hl)            	;~
	ram:66d8 83             add a,e              	;.
	ram:66d9 27             daa                  	;'
	ram:66da 77             ld (hl),a            	;w
	ram:66db 2b             dec hl               	;+
	ram:66dc 7e             ld a,(hl)            	;~
	ram:66dd 8a             adc a,d              	;.
	ram:66de 27             daa                  	;'
	ram:66df 77             ld (hl),a            	;w
	ram:66e0 2b             dec hl               	;+
	ram:66e1 7e             ld a,(hl)            	;~
	ram:66e2 ce 00          adc a,000h           	;. .
	ram:66e4 27             daa                  	;'
	ram:66e5 77             ld (hl),a            	;w
	ram:66e6 10 ec          djnz l66d4h          	;. .
	ram:66e8 e1             pop hl               	;.
	ram:66e9 c9             ret                  	;.
sub_66eah:
	ram:66ea 11 42 86       ld de,08642h         	;. B .
	ram:66ed 01 ff 03       ld bc,003ffh         	;. . .
	ram:66f0 21 41 86       ld hl,08641h         	;! A .
	ram:66f3 36 00          ld (hl),000h         	;6 .
	ram:66f5 ed b0          ldir                 	;. .
	ram:66f7 c9             ret                  	;.
sub_66f8h:
	ram:66f8 fd cb 02 d6    set 2,(iy+002h)      	;. . . .
	ram:66fc 11 00 fc       ld de,0fc00h         	;. . .
	ram:66ff 01 80 03       ld bc,00380h         	;. . .
	ram:6702 21 41 86       ld hl,08641h         	;! A .
	ram:6705 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6708 fe 07          cp 007h              	;. .
	ram:670a 28 08          jr z,l6714h          	;( .
	ram:670c 01 00 04       ld bc,00400h         	;. . .
	ram:670f 30 03          jr nc,l6714h         	;0 .
	ram:6711 01 00 03       ld bc,00300h         	;. . .
l6714h:
	ram:6714 ed b0          ldir                 	;. .
	ram:6716 c9             ret                  	;.
	ram:6717 f5             push af              	;.
	ram:6718 df             rst 18h              	;.
	ram:6719 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:671c 3a 65 8a       ld a,(08a65h)        	;: e .
	ram:671f 47             ld b,a               	;G
l6720h:
	ram:6720 c5             push bc              	;.
	ram:6721 11 f6 ff       ld de,0fff6h         	;. . .
	ram:6724 19             add hl,de            	;.
	ram:6725 e5             push hl              	;.
	ram:6726 e7             rst 20h              	;.
	ram:6727 cd 22 26       call 02622h          	;. " &
	ram:672a 32 8c 80       ld (0808ch),a        	;2 . .
	ram:672d cd d1 23       call 023d1h          	;. . #
	ram:6730 ca 14 0a       jp z,00a14h          	;. . .
	ram:6733 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:6737 21 01 fc       ld hl,0fc01h         	;! . .
	ram:673a ed 52          sbc hl,de            	;. R
	ram:673c da 14 0a       jp c,00a14h          	;. . .
	ram:673f cd e7 23       call 023e7h          	;. . #
	ram:6742 c2 14 0a       jp nz,00a14h         	;. . .
	ram:6745 cd 95 39       call 03995h          	;. . 9
	ram:6748 e1             pop hl               	;.
	ram:6749 77             ld (hl),a            	;w
	ram:674a c1             pop bc               	;.
	ram:674b 10 d3          djnz l6720h          	;. .
	ram:674d 3a 65 8a       ld a,(08a65h)        	;: e .
	ram:6750 47             ld b,a               	;G
l6751h:
	ram:6751 c5             push bc              	;.
	ram:6752 cd 0c 2e       call 02e0ch          	;. . .
	ram:6755 7e             ld a,(hl)            	;~
	ram:6756 cd 1a 6c       call sub_6c1ah       	;. . l
	ram:6759 d7             rst 10h              	;.
	ram:675a 38 33          jr c,l678fh          	;8 3
	ram:675c eb             ex de,hl             	;.
	ram:675d 7e             ld a,(hl)            	;~
	ram:675e 23             inc hl               	;#
	ram:675f b6             or (hl)              	;.
	ram:6760 28 2d          jr z,l678fh          	;( -
	ram:6762 cd 84 00       call 00084h          	;. . .
	ram:6765 28 20          jr z,l6787h          	;(  
	ram:6767 d5             push de              	;.
	ram:6768 3e 79          ld a,079h            	;> y
	ram:676a 32 84 80       ld (08084h),a        	;2 . .
	ram:676d d7             rst 10h              	;.
	ram:676e 30 09          jr nc,l6779h         	;0 .
	ram:6770 21 00 00       ld hl,00000h         	;! . .
	ram:6773 cd 2f 2a       call 02a2fh          	;. / *
	ram:6776 e1             pop hl               	;.
	ram:6777 18 16          jr l678fh            	;. .
l6779h:
	ram:6779 eb             ex de,hl             	;.
	ram:677a 7e             ld a,(hl)            	;~
	ram:677b 23             inc hl               	;#
	ram:677c b6             or (hl)              	;.
	ram:677d e1             pop hl               	;.
	ram:677e 28 0f          jr z,l678fh          	;( .
	ram:6780 c1             pop bc               	;.
	ram:6781 f1             pop af               	;.
	ram:6782 f5             push af              	;.
	ram:6783 c5             push bc              	;.
	ram:6784 cd 94 67       call sub_6794h       	;. . g
l6787h:
	ram:6787 eb             ex de,hl             	;.
	ram:6788 c1             pop bc               	;.
	ram:6789 f1             pop af               	;.
	ram:678a f5             push af              	;.
	ram:678b c5             push bc              	;.
	ram:678c cd 94 67       call sub_6794h       	;. . g
l678fh:
	ram:678f c1             pop bc               	;.
	ram:6790 10 bf          djnz l6751h          	;. .
	ram:6792 f1             pop af               	;.
	ram:6793 c9             ret                  	;.
sub_6794h:
	ram:6794 38 07          jr c,l679dh          	;8 .
	ram:6796 cb 6e          bit 5,(hl)           	;. n
	ram:6798 c8             ret z                	;.
	ram:6799 cb ae          res 5,(hl)           	;. .
	ram:679b 18 05          jr l67a2h            	;. .
l679dh:
	ram:679d cb 6e          bit 5,(hl)           	;. n
	ram:679f c0             ret nz               	;.
	ram:67a0 cb ee          set 5,(hl)           	;. .
l67a2h:
	ram:67a2 c3 1b 00       jp 0001bh            	;. . .
	ram:67a5 21 00 00       ld hl,00000h         	;! . .
	ram:67a8 22 98 80       ld (08098h),hl       	;" . .
	ram:67ab 22 9a 80       ld (0809ah),hl       	;" . .
	ram:67ae 3e 02          ld a,002h            	;> .
	ram:67b0 18 14          jr l67c6h            	;. .
	ram:67b2 3e 05          ld a,005h            	;> .
	ram:67b4 18 02          jr l67b8h            	;. .
	ram:67b6 3e 03          ld a,003h            	;> .
l67b8h:
	ram:67b8 32 8f 80       ld (0808fh),a        	;2 . .
	ram:67bb 18 1b          jr l67d8h            	;. .
	ram:67bd 3e 04          ld a,004h            	;> .
	ram:67bf 18 f7          jr l67b8h            	;. .
sub_67c1h:
	ram:67c1 3e 01          ld a,001h            	;> .
	ram:67c3 18 01          jr l67c6h            	;. .
sub_67c5h:
	ram:67c5 af             xor a                	;.
l67c6h:
	ram:67c6 32 8f 80       ld (0808fh),a        	;2 . .
	ram:67c9 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:67cc 22 98 8b       ld (08b98h),hl       	;" . .
	ram:67cf cd a3 21       call 021a3h          	;. . !
	ram:67d2 cd 4a 2e       call 02e4ah          	;. J .
	ram:67d5 cd 4a 2e       call 02e4ah          	;. J .
l67d8h:
	ram:67d8 3e 01          ld a,001h            	;> .
	ram:67da cd 1a 6c       call sub_6c1ah       	;. . l
	ram:67dd 21 6f fa       ld hl,0fa6fh         	;! o .
l67e0h:
	ram:67e0 eb             ex de,hl             	;.
	ram:67e1 2a eb 8b       ld hl,(08bebh)       	;* . .
	ram:67e4 b7             or a                 	;.
	ram:67e5 ed 52          sbc hl,de            	;. R
	ram:67e7 c8             ret z                	;.
	ram:67e8 eb             ex de,hl             	;.
	ram:67e9 e5             push hl              	;.
	ram:67ea 7e             ld a,(hl)            	;~
	ram:67eb e6 1f          and 01fh             	;. .
	ram:67ed fe 0a          cp 00ah              	;. .
	ram:67ef 20 31          jr nz,l6822h         	;1
	ram:67f1 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:67f4 b7             or a                 	;.
	ram:67f5 20 04          jr nz,l67fbh         	;.
	ram:67f7 cb 6e          bit 5,(hl)           	;. n
	ram:67f9 28 7f          jr z,l687ah          	;( .
l67fbh:
	ram:67fb 2b             dec hl               	;+
	ram:67fc 2b             dec hl               	;+
	ram:67fd 2b             dec hl               	;+
	ram:67fe 3a 83 80       ld a,(08083h)        	;: . .
	ram:6801 47             ld b,a               	;G
	ram:6802 be             cp (hl)              	;.
	ram:6803 28 0a          jr z,l680fh          	;( .
	ram:6805 fd cb 02 7e    bit 7,(iy+002h)      	;. . . ~
	ram:6809 20 6f          jr nz,l687ah         	;o
	ram:680b 3c             inc a                	;<
	ram:680c 96             sub (hl)             	;.
	ram:680d 20 6b          jr nz,l687ah         	;k
l680fh:
	ram:680f 11 84 80       ld de,08084h         	;. . .
	ram:6812 4f             ld c,a               	;O
	ram:6813 05             dec b                	;.
	ram:6814 2b             dec hl               	;+
	ram:6815 fd cb 02 76    bit 6,(iy+002h)      	;. . . v
	ram:6819 28 05          jr z,l6820h          	;( .
	ram:681b 3e 79          ld a,079h            	;> y
	ram:681d be             cp (hl)              	;.
	ram:681e 28 04          jr z,l6824h          	;( .
l6820h:
	ram:6820 1a             ld a,(de)            	;.
	ram:6821 be             cp (hl)              	;.
l6822h:
	ram:6822 20 56          jr nz,l687ah         	;V
l6824h:
	ram:6824 2b             dec hl               	;+
	ram:6825 13             inc de               	;.
	ram:6826 10 f8          djnz l6820h          	;. .
	ram:6828 7e             ld a,(hl)            	;~
	ram:6829 fe 30          cp 030h              	;. 0
	ram:682b 38 4d          jr c,l687ah          	;8 M
	ram:682d fe 3a          cp 03ah              	;. :
	ram:682f 30 49          jr nc,l687ah         	;0 I
	ram:6831 e6 0f          and 00fh             	;. .
	ram:6833 28 45          jr z,l687ah          	;( E
	ram:6835 cb 01          rlc c                	;. .
	ram:6837 20 11          jr nz,l684ah         	;.
	ram:6839 cd c7 21       call 021c7h          	;. . !
	ram:683c 57             ld d,a               	;W
	ram:683d 2b             dec hl               	;+
	ram:683e 7e             ld a,(hl)            	;~
	ram:683f fe 30          cp 030h              	;. 0
	ram:6841 38 37          jr c,l687ah          	;8 7
	ram:6843 fe 3a          cp 03ah              	;. :
	ram:6845 30 33          jr nc,l687ah         	;0 3
	ram:6847 e6 0f          and 00fh             	;. .
	ram:6849 82             add a,d              	;.
l684ah:
	ram:684a 47             ld b,a               	;G
	ram:684b 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:684e fe 03          cp 003h              	;. .
	ram:6850 30 35          jr nc,l6887h         	;0 5
	ram:6852 78             ld a,b               	;x
	ram:6853 cd 10 69       call sub_6910h       	;. . i
	ram:6856 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:6859 cd 77 30       call 03077h          	;. w 0
	ram:685c b6             or (hl)              	;.
	ram:685d 77             ld (hl),a            	;w
	ram:685e 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:6861 fe 02          cp 002h              	;. .
	ram:6863 20 15          jr nz,l687ah         	;.
	ram:6865 e1             pop hl               	;.
	ram:6866 e5             push hl              	;.
	ram:6867 2b             dec hl               	;+
	ram:6868 5e             ld e,(hl)            	;^
	ram:6869 2b             dec hl               	;+
	ram:686a 56             ld d,(hl)            	;V
	ram:686b eb             ex de,hl             	;.
	ram:686c 4e             ld c,(hl)            	;N
	ram:686d 23             inc hl               	;#
	ram:686e 46             ld b,(hl)            	;F
	ram:686f 2a 98 80       ld hl,(08098h)       	;* . .
	ram:6872 09             add hl,bc            	;.
	ram:6873 22 98 80       ld (08098h),hl       	;" . .
	ram:6876 21 9a 80       ld hl,0809ah         	;! . .
	ram:6879 34             inc (hl)             	;4
l687ah:
	ram:687a e1             pop hl               	;.
l687bh:
	ram:687b 2b             dec hl               	;+
	ram:687c 2b             dec hl               	;+
	ram:687d 2b             dec hl               	;+
	ram:687e 5e             ld e,(hl)            	;^
	ram:687f 16 00          ld d,000h            	;. .
	ram:6881 37             scf                  	;7
	ram:6882 ed 52          sbc hl,de            	;. R
	ram:6884 c3 e0 67       jp l67e0h            	;. . g
l6887h:
	ram:6887 e1             pop hl               	;.
	ram:6888 20 4b          jr nz,l68d5h         	;K
	ram:688a cb 6e          bit 5,(hl)           	;. n
	ram:688c 20 ed          jr nz,l687bh         	;.
	ram:688e e5             push hl              	;.
	ram:688f 2b             dec hl               	;+
	ram:6890 5e             ld e,(hl)            	;^
	ram:6891 2b             dec hl               	;+
	ram:6892 56             ld d,(hl)            	;V
	ram:6893 eb             ex de,hl             	;.
	ram:6894 7e             ld a,(hl)            	;~
	ram:6895 23             inc hl               	;#
	ram:6896 b6             or (hl)              	;.
	ram:6897 28 e1          jr z,l687ah          	;( .
	ram:6899 cd 84 00       call 00084h          	;. . .
	ram:689c 28 27          jr z,l68c5h          	;( '
	ram:689e eb             ex de,hl             	;.
	ram:689f 2b             dec hl               	;+
	ram:68a0 7e             ld a,(hl)            	;~
	ram:68a1 11 83 80       ld de,08083h         	;. . .
	ram:68a4 47             ld b,a               	;G
	ram:68a5 04             inc b                	;.
l68a6h:
	ram:68a6 12             ld (de),a            	;.
	ram:68a7 13             inc de               	;.
	ram:68a8 2b             dec hl               	;+
	ram:68a9 7e             ld a,(hl)            	;~
	ram:68aa 10 fa          djnz l68a6h          	;. .
	ram:68ac 3a 84 80       ld a,(08084h)        	;: . .
	ram:68af ee 01          xor 001h             	;. .
	ram:68b1 32 84 80       ld (08084h),a        	;2 . .
	ram:68b4 d7             rst 10h              	;.
	ram:68b5 38 16          jr c,l68cdh          	;8 .
	ram:68b7 eb             ex de,hl             	;.
	ram:68b8 7e             ld a,(hl)            	;~
	ram:68b9 23             inc hl               	;#
	ram:68ba b6             or (hl)              	;.
	ram:68bb 28 10          jr z,l68cdh          	;( .
	ram:68bd eb             ex de,hl             	;.
	ram:68be cb ee          set 5,(hl)           	;. .
	ram:68c0 3e 01          ld a,001h            	;> .
	ram:68c2 cd 1a 6c       call sub_6c1ah       	;. . l
l68c5h:
	ram:68c5 e1             pop hl               	;.
	ram:68c6 cb ee          set 5,(hl)           	;. .
l68c8h:
	ram:68c8 cd 1b 00       call 0001bh          	;. . .
	ram:68cb 18 ae          jr l687bh            	;. .
l68cdh:
	ram:68cd 3e 01          ld a,001h            	;> .
	ram:68cf cd 1a 6c       call sub_6c1ah       	;. . l
	ram:68d2 e1             pop hl               	;.
	ram:68d3 18 a6          jr l687bh            	;. .
l68d5h:
	ram:68d5 fe 05          cp 005h              	;. .
	ram:68d7 28 08          jr z,l68e1h          	;( .
	ram:68d9 cb 6e          bit 5,(hl)           	;. n
	ram:68db 28 9e          jr z,l687bh          	;( .
	ram:68dd cb ae          res 5,(hl)           	;. .
	ram:68df 18 e7          jr l68c8h            	;. .
l68e1h:
	ram:68e1 e5             push hl              	;.
	ram:68e2 2b             dec hl               	;+
	ram:68e3 5e             ld e,(hl)            	;^
	ram:68e4 2b             dec hl               	;+
	ram:68e5 56             ld d,(hl)            	;V
	ram:68e6 23             inc hl               	;#
	ram:68e7 23             inc hl               	;#
	ram:68e8 cd 0b 2c       call 02c0bh          	;. . ,
	ram:68eb e1             pop hl               	;.
	ram:68ec c3 e0 67       jp l67e0h            	;. . g
sub_68efh:
	ram:68ef 06 01          ld b,001h            	;. .
	ram:68f1 18 02          jr l68f5h            	;. .
sub_68f3h:
	ram:68f3 06 ff          ld b,0ffh            	;. .
l68f5h:
	ram:68f5 80             add a,b              	;.
	ram:68f6 c8             ret z                	;.
	ram:68f7 fe 64          cp 064h              	;. d
	ram:68f9 20 02          jr nz,l68fdh         	;.
	ram:68fb af             xor a                	;.
	ram:68fc c9             ret                  	;.
l68fdh:
	ram:68fd f5             push af              	;.
	ram:68fe 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:6901 cd 77 30       call 03077h          	;. w 0
	ram:6904 20 03          jr nz,l6909h         	;.
	ram:6906 f1             pop af               	;.
	ram:6907 18 ec          jr l68f5h            	;. .
l6909h:
	ram:6909 f1             pop af               	;.
	ram:690a f5             push af              	;.
	ram:690b cd 1a 6c       call sub_6c1ah       	;. . l
	ram:690e f1             pop af               	;.
	ram:690f c9             ret                  	;.
sub_6910h:
	ram:6910 67             ld h,a               	;g
	ram:6911 cd bf 21       call 021bfh          	;. . !
	ram:6914 47             ld b,a               	;G
	ram:6915 7c             ld a,h               	;|
	ram:6916 e6 0f          and 00fh             	;. .
	ram:6918 04             inc b                	;.
	ram:6919 18 02          jr l691dh            	;. .
l691bh:
	ram:691b c6 0a          add a,00ah           	;. .
l691dh:
	ram:691d 10 fc          djnz l691bh          	;. .
	ram:691f c9             ret                  	;.
sub_6920h:
	ram:6920 f5             push af              	;.
	ram:6921 cd bf 21       call 021bfh          	;. . !
	ram:6924 47             ld b,a               	;G
	ram:6925 f1             pop af               	;.
	ram:6926 e6 0f          and 00fh             	;. .
	ram:6928 04             inc b                	;.
	ram:6929 c6 00          add a,000h           	;. .
	ram:692b 27             daa                  	;'
	ram:692c 18 03          jr l6931h            	;. .
l692eh:
	ram:692e c6 16          add a,016h           	;. .
	ram:6930 27             daa                  	;'
l6931h:
	ram:6931 10 fb          djnz l692eh          	;. .
	ram:6933 c9             ret                  	;.
sub_6934h:
	ram:6934 fd cb 02 ce    set 1,(iy+002h)      	;. . . .
	ram:6938 3a 66 83       ld a,(08366h)        	;: f .
	ram:693b 32 68 83       ld (08368h),a        	;2 h .
	ram:693e cd a6 6a       call 06aa6h          	;. . j
	ram:6941 18 40          jr l6983h            	;. @
sub_6943h:
	ram:6943 ed 5b 67 83    ld de,(08367h)       	;. [ g .
sub_6947h:
	ram:6947 fd cb 02 ce    set 1,(iy+002h)      	;. . . .
	ram:694b 26 01          ld h,001h            	;& .
	ram:694d ed 4b 65 83    ld bc,(08365h)       	;. K e .
	ram:6951 18 2d          jr l6980h            	;. -
sub_6953h:
	ram:6953 fd cb 02 ce    set 1,(iy+002h)      	;. . . .
	ram:6957 26 01          ld h,001h            	;& .
	ram:6959 ed 5b 65 83    ld de,(08365h)       	;. [ e .
	ram:695d ed 4b 67 83    ld bc,(08367h)       	;. K g .
	ram:6961 7a             ld a,d               	;z
	ram:6962 6b             ld l,e               	;k
	ram:6963 59             ld e,c               	;Y
	ram:6964 b8             cp b                 	;.
	ram:6965 28 17          jr z,l697eh          	;( .
	ram:6967 cd b1 6a       call sub_6ab1h       	;. . j
	ram:696a 7d             ld a,l               	;}
	ram:696b b9             cp c                 	;.
	ram:696c 28 15          jr z,l6983h          	;( .
	ram:696e 4d             ld c,l               	;M
	ram:696f 6b             ld l,e               	;k
	ram:6970 59             ld e,c               	;Y
	ram:6971 cd b1 6a       call sub_6ab1h       	;. . j
	ram:6974 5d             ld e,l               	;]
	ram:6975 6a             ld l,d               	;j
	ram:6976 50             ld d,b               	;P
	ram:6977 cd b1 6a       call sub_6ab1h       	;. . j
	ram:697a 45             ld b,l               	;E
	ram:697b 55             ld d,l               	;U
	ram:697c 18 02          jr l6980h            	;. .
l697eh:
	ram:697e 42             ld b,d               	;B
	ram:697f 4d             ld c,l               	;M
l6980h:
	ram:6980 cd b1 6a       call sub_6ab1h       	;. . j
l6983h:
	ram:6983 fd cb 02 8e    res 1,(iy+002h)      	;. . . .
	ram:6987 c9             ret                  	;.
	ram:6988 fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:698c c8             ret z                	;.
	ram:698d 3a 64 83       ld a,(08364h)        	;: d .
	ram:6990 16 02          ld d,002h            	;. .
	ram:6992 18 71          jr sub_6a05h         	;. q
	ram:6994 cd f0 50       call sub_50f0h       	;. . P
	ram:6997 3a 64 83       ld a,(08364h)        	;: d .
	ram:699a cd 08 60       call sub_6008h       	;. . `
	ram:699d 20 1c          jr nz,l69bbh         	;.
	ram:699f 2a 65 83       ld hl,(08365h)       	;* e .
	ram:69a2 e5             push hl              	;.
	ram:69a3 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:69a6 2b             dec hl               	;+
	ram:69a7 56             ld d,(hl)            	;V
	ram:69a8 2b             dec hl               	;+
	ram:69a9 5e             ld e,(hl)            	;^
	ram:69aa ed 53 65 83    ld (08365h),de       	;. S e .
	ram:69ae 3e 06          ld a,006h            	;> .
	ram:69b0 cd 05 6a       call sub_6a05h       	;. . j
	ram:69b3 ed 5b 65 83    ld de,(08365h)       	;. [ e .
	ram:69b7 e1             pop hl               	;.
	ram:69b8 22 65 83       ld (08365h),hl       	;" e .
l69bbh:
	ram:69bb fd cb 03 56    bit 2,(iy+003h)      	;. . . V
	ram:69bf c8             ret z                	;.
	ram:69c0 3a 64 83       ld a,(08364h)        	;: d .
	ram:69c3 fe 5d          cp 05dh              	;. ]
	ram:69c5 20 05          jr nz,l69cch         	;.
	ram:69c7 cd 47 69       call sub_6947h       	;. G i
	ram:69ca 18 34          jr l6a00h            	;. 4
l69cch:
	ram:69cc fe 1d          cp 01dh              	;. .
	ram:69ce 20 05          jr nz,l69d5h         	;.
	ram:69d0 cd 43 69       call sub_6943h       	;. C i
	ram:69d3 18 18          jr l69edh            	;. .
l69d5h:
	ram:69d5 fe 29          cp 029h              	;. )
	ram:69d7 20 05          jr nz,l69deh         	;.
	ram:69d9 cd 34 69       call sub_6934h       	;. 4 i
	ram:69dc 18 22          jr l6a00h            	;. "
l69deh:
	ram:69de fe 27          cp 027h              	;. '
	ram:69e0 20 04          jr nz,l69e6h         	;.
	ram:69e2 e6 fe          and 0feh             	;. .
	ram:69e4 18 09          jr l69efh            	;. .
l69e6h:
	ram:69e6 fe 09          cp 009h              	;. .
	ram:69e8 20 16          jr nz,l6a00h         	;.
	ram:69ea cd 53 69       call sub_6953h       	;. S i
l69edh:
	ram:69ed 3e 02          ld a,002h            	;> .
l69efh:
	ram:69ef 2a 65 83       ld hl,(08365h)       	;* e .
	ram:69f2 e5             push hl              	;.
	ram:69f3 2a 67 83       ld hl,(08367h)       	;* g .
	ram:69f6 22 65 83       ld (08365h),hl       	;" e .
	ram:69f9 cd 05 6a       call sub_6a05h       	;. . j
	ram:69fc e1             pop hl               	;.
	ram:69fd 22 65 83       ld (08365h),hl       	;" e .
l6a00h:
	ram:6a00 3a 64 83       ld a,(08364h)        	;: d .
	ram:6a03 e6 fe          and 0feh             	;. .
sub_6a05h:
	ram:6a05 cb 3f          srl a                	;. ?
	ram:6a07 38 59          jr c,l6a62h          	;8 Y
	ram:6a09 16 01          ld d,001h            	;. .
	ram:6a0b 3d             dec a                	;=
	ram:6a0c 38 4f          jr c,l6a5dh          	;8 O
	ram:6a0e fe 04          cp 004h              	;. .
	ram:6a10 38 0f          jr c,l6a21h          	;8 .
	ram:6a12 fe 25          cp 025h              	;. %
	ram:6a14 28 02          jr z,l6a18h          	;( .
	ram:6a16 fe 26          cp 026h              	;. &
l6a18h:
	ram:6a18 3e 01          ld a,001h            	;> .
	ram:6a1a 28 05          jr z,l6a21h          	;( .
	ram:6a1c 3e 04          ld a,004h            	;> .
	ram:6a1e 38 01          jr c,l6a21h          	;8 .
	ram:6a20 3c             inc a                	;<
l6a21h:
	ram:6a21 67             ld h,a               	;g
	ram:6a22 87             add a,a              	;.
	ram:6a23 87             add a,a              	;.
	ram:6a24 84             add a,h              	;.
	ram:6a25 21 74 6a       ld hl,l6a74h         	;! t j
	ram:6a28 4f             ld c,a               	;O
	ram:6a29 06 00          ld b,000h            	;. .
	ram:6a2b 09             add hl,bc            	;.
	ram:6a2c ed 4b 65 83    ld bc,(08365h)       	;. K e .
l6a30h:
	ram:6a30 04             inc b                	;.
	ram:6a31 04             inc b                	;.
	ram:6a32 0c             inc c                	;.
	ram:6a33 0c             inc c                	;.
	ram:6a34 1e 05          ld e,005h            	;. .
	ram:6a36 fd cb 02 ce    set 1,(iy+002h)      	;. . . .
l6a3ah:
	ram:6a3a e5             push hl              	;.
	ram:6a3b 21 6b 6a       ld hl,l6a6bh         	;! k j
	ram:6a3e 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6a41 85             add a,l              	;.
	ram:6a42 6f             ld l,a               	;o
	ram:6a43 30 01          jr nc,l6a46h         	;0 .
	ram:6a45 24             inc h                	;$
l6a46h:
	ram:6a46 7e             ld a,(hl)            	;~
	ram:6a47 b9             cp c                 	;.
	ram:6a48 e1             pop hl               	;.
	ram:6a49 30 12          jr nc,l6a5dh         	;0 .
	ram:6a4b c5             push bc              	;.
	ram:6a4c 7e             ld a,(hl)            	;~
l6a4dh:
	ram:6a4d cb 3f          srl a                	;. ?
	ram:6a4f dc 25 6b       call c,sub_6b25h     	;. % k
	ram:6a52 28 03          jr z,l6a57h          	;( .
	ram:6a54 05             dec b                	;.
	ram:6a55 18 f6          jr l6a4dh            	;. .
l6a57h:
	ram:6a57 c1             pop bc               	;.
	ram:6a58 0d             dec c                	;.
	ram:6a59 23             inc hl               	;#
	ram:6a5a 1d             dec e                	;.
	ram:6a5b 20 dd          jr nz,l6a3ah         	;.
l6a5dh:
	ram:6a5d fd cb 02 8e    res 1,(iy+002h)      	;. . . .
	ram:6a61 c9             ret                  	;.
l6a62h:
	ram:6a62 fe 28          cp 028h              	;. (
	ram:6a64 3e 06          ld a,006h            	;> .
	ram:6a66 38 b9          jr c,l6a21h          	;8 .
	ram:6a68 3c             inc a                	;<
	ram:6a69 18 b6          jr l6a21h            	;. .
l6a6bh:
	ram:6a6b 3f             ccf                  	;?
	ram:6a6c 37             scf                  	;7
	ram:6a6d 2f             cpl                  	;/
	ram:6a6e 27             daa                  	;'
	ram:6a6f 1f             rra                  	;.
	ram:6a70 17             rla                  	;.
	ram:6a71 0f             rrca                 	;.
	ram:6a72 07             rlca                 	;.
	ram:6a73 00             nop                  	;.
l6a74h:
	ram:6a74 00             nop                  	;.
	ram:6a75 0e 0e          ld c,00eh            	;. .
	ram:6a77 0e 00          ld c,000h            	;. .
	ram:6a79 11 0a 00       ld de,0000ah         	;. . .
	ram:6a7c 0a             ld a,(bc)            	;.
	ram:6a7d 11 04 04       ld de,00404h         	;. . .
	ram:6a80 1b             dec de               	;.
	ram:6a81 04             inc b                	;.
	ram:6a82 04             inc b                	;.
	ram:6a83 00             nop                  	;.
	ram:6a84 0e 0a          ld c,00ah            	;. .
	ram:6a86 0e 00          ld c,000h            	;. .
	ram:6a88 00             nop                  	;.
	ram:6a89 04             inc b                	;.
	ram:6a8a 0e 04          ld c,004h            	;. .
	ram:6a8c 00             nop                  	;.
	ram:6a8d 11 0e 0a       ld de,00a0eh         	;. . .
	ram:6a90 0e 11          ld c,011h            	;. .
	ram:6a92 00             nop                  	;.
	ram:6a93 00             nop                  	;.
	ram:6a94 04             inc b                	;.
	ram:6a95 00             nop                  	;.
	ram:6a96 00             nop                  	;.
	ram:6a97 11 00 04       ld de,00400h         	;. . .
	ram:6a9a 00             nop                  	;.
	ram:6a9b 11 10 18       ld de,01810h         	;. . .
	ram:6a9e 1c             inc e                	;.
	ram:6a9f 18 10          jr sub_6ab1h         	;. .
l6aa1h:
	ram:6aa1 01 03 07       ld bc,00703h         	;. . .
	ram:6aa4 03             inc bc               	;.
	ram:6aa5 01 ed 4b       ld bc,04bedh         	;. . K
	ram:6aa8 67             ld h,a               	;g
	ram:6aa9 83             add a,e              	;.
	ram:6aaa 50             ld d,b               	;P
	ram:6aab 1e 3f          ld e,03fh            	;. ?
	ram:6aad 0e 01          ld c,001h            	;. .
sub_6aafh:
	ram:6aaf 26 01          ld h,001h            	;& .
sub_6ab1h:
	ram:6ab1 f5             push af              	;.
	ram:6ab2 c5             push bc              	;.
	ram:6ab3 dd e1          pop ix               	;. .
	ram:6ab5 c5             push bc              	;.
	ram:6ab6 d5             push de              	;.
	ram:6ab7 e5             push hl              	;.
	ram:6ab8 7b             ld a,e               	;{
	ram:6ab9 91             sub c                	;.
	ram:6aba 30 04          jr nc,l6ac0h         	;0 .
	ram:6abc ed 44          neg                  	;. D
	ram:6abe cb e4          set 4,h              	;. .
l6ac0h:
	ram:6ac0 6f             ld l,a               	;o
	ram:6ac1 7a             ld a,d               	;z
	ram:6ac2 90             sub b                	;.
	ram:6ac3 30 04          jr nc,l6ac9h         	;0 .
	ram:6ac5 ed 44          neg                  	;. D
	ram:6ac7 cb ec          set 5,h              	;. .
l6ac9h:
	ram:6ac9 5f             ld e,a               	;_
	ram:6aca 44             ld b,h               	;D
	ram:6acb 7d             ld a,l               	;}
	ram:6acc bb             cp e                 	;.
	ram:6acd 38 04          jr c,l6ad3h          	;8 .
	ram:6acf cb f0          set 6,b              	;. .
	ram:6ad1 6b             ld l,e               	;k
	ram:6ad2 5f             ld e,a               	;_
l6ad3h:
	ram:6ad3 af             xor a                	;.
	ram:6ad4 57             ld d,a               	;W
	ram:6ad5 67             ld h,a               	;g
	ram:6ad6 e5             push hl              	;.
	ram:6ad7 ed 52          sbc hl,de            	;. R
	ram:6ad9 29             add hl,hl            	;)
	ram:6ada e3             ex (sp),hl           	;.
	ram:6adb 29             add hl,hl            	;)
	ram:6adc e5             push hl              	;.
	ram:6add ed 52          sbc hl,de            	;. R
	ram:6adf dd e5          push ix              	;. .
	ram:6ae1 1c             inc e                	;.
	ram:6ae2 78             ld a,b               	;x
	ram:6ae3 e6 0f          and 00fh             	;. .
	ram:6ae5 57             ld d,a               	;W
	ram:6ae6 78             ld a,b               	;x
	ram:6ae7 c1             pop bc               	;.
	ram:6ae8 dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:6aec dd 39          add ix,sp            	;. 9
l6aeeh:
	ram:6aee cd 25 6b       call sub_6b25h       	;. % k
	ram:6af1 c5             push bc              	;.
	ram:6af2 cb 7c          bit 7,h              	;. |
	ram:6af4 28 11          jr z,l6b07h          	;( .
	ram:6af6 dd 4e 00       ld c,(ix+000h)       	;. N .
	ram:6af9 dd 46 01       ld b,(ix+001h)       	;. F .
	ram:6afc 09             add hl,bc            	;.
	ram:6afd c1             pop bc               	;.
	ram:6afe cb 77          bit 6,a              	;. w
	ram:6b00 20 10          jr nz,l6b12h         	;.
	ram:6b02 cd ab 6b       call sub_6babh       	;. . k
	ram:6b05 18 12          jr l6b19h            	;. .
l6b07h:
	ram:6b07 dd 4e 02       ld c,(ix+002h)       	;. N .
	ram:6b0a dd 46 03       ld b,(ix+003h)       	;. F .
	ram:6b0d 09             add hl,bc            	;.
	ram:6b0e c1             pop bc               	;.
	ram:6b0f cd ab 6b       call sub_6babh       	;. . k
l6b12h:
	ram:6b12 0c             inc c                	;.
	ram:6b13 cb 67          bit 4,a              	;. g
	ram:6b15 28 02          jr z,l6b19h          	;( .
	ram:6b17 0d             dec c                	;.
	ram:6b18 0d             dec c                	;.
l6b19h:
	ram:6b19 1d             dec e                	;.
	ram:6b1a 20 d2          jr nz,l6aeeh         	;.
	ram:6b1c e1             pop hl               	;.
	ram:6b1d e1             pop hl               	;.
l6b1eh:
	ram:6b1e e1             pop hl               	;.
	ram:6b1f d1             pop de               	;.
	ram:6b20 c1             pop bc               	;.
	ram:6b21 f1             pop af               	;.
	ram:6b22 c9             ret                  	;.
sub_6b23h:
	ram:6b23 16 01          ld d,001h            	;. .
sub_6b25h:
	ram:6b25 f5             push af              	;.
	ram:6b26 c5             push bc              	;.
	ram:6b27 d5             push de              	;.
	ram:6b28 e5             push hl              	;.
	ram:6b29 cd 97 6b       call 06b97h          	;. . k
	ram:6b2c 38 f0          jr c,l6b1eh          	;8 .
	ram:6b2e cd 6d 6b       call sub_6b6dh       	;. m k
	ram:6b31 42             ld b,d               	;B
	ram:6b32 4f             ld c,a               	;O
	ram:6b33 eb             ex de,hl             	;.
	ram:6b34 21 41 86       ld hl,08641h         	;! A .
	ram:6b37 19             add hl,de            	;.
	ram:6b38 e5             push hl              	;.
	ram:6b39 21 00 fc       ld hl,0fc00h         	;! . .
	ram:6b3c 19             add hl,de            	;.
	ram:6b3d fd cb 02 4e    bit 1,(iy+002h)      	;. . . N
	ram:6b41 20 01          jr nz,l6b44h         	;.
	ram:6b43 e3             ex (sp),hl           	;.
l6b44h:
	ram:6b44 7e             ld a,(hl)            	;~
	ram:6b45 04             inc b                	;.
	ram:6b46 10 03          djnz l6b4bh          	;. .
	ram:6b48 b1             or c                 	;.
	ram:6b49 18 07          jr l6b52h            	;. .
l6b4bh:
	ram:6b4b 10 03          djnz l6b50h          	;. .
	ram:6b4d b1             or c                 	;.
	ram:6b4e 18 03          jr l6b53h            	;. .
l6b50h:
	ram:6b50 10 0b          djnz l6b5dh          	;. .
l6b52h:
	ram:6b52 a9             xor c                	;.
l6b53h:
	ram:6b53 77             ld (hl),a            	;w
	ram:6b54 e1             pop hl               	;.
	ram:6b55 fd cb 02 4e    bit 1,(iy+002h)      	;. . . N
	ram:6b59 20 c3          jr nz,l6b1eh         	;.
	ram:6b5b 18 0d          jr l6b6ah            	;. .
l6b5dh:
	ram:6b5d e1             pop hl               	;.
	ram:6b5e 05             dec b                	;.
	ram:6b5f 05             dec b                	;.
	ram:6b60 20 bc          jr nz,l6b1eh         	;.
	ram:6b62 a1             and c                	;.
	ram:6b63 47             ld b,a               	;G
	ram:6b64 79             ld a,c               	;y
	ram:6b65 2f             cpl                  	;/
	ram:6b66 4f             ld c,a               	;O
	ram:6b67 7e             ld a,(hl)            	;~
	ram:6b68 a1             and c                	;.
	ram:6b69 b0             or b                 	;.
l6b6ah:
	ram:6b6a 77             ld (hl),a            	;w
	ram:6b6b 18 b1          jr l6b1eh            	;. .
sub_6b6dh:
	ram:6b6d d5             push de              	;.
	ram:6b6e c5             push bc              	;.
	ram:6b6f 21 8f 6b       ld hl,l6b8fh         	;! . k
	ram:6b72 16 00          ld d,000h            	;. .
	ram:6b74 78             ld a,b               	;x
	ram:6b75 e6 07          and 007h             	;. .
	ram:6b77 5f             ld e,a               	;_
	ram:6b78 19             add hl,de            	;.
	ram:6b79 5e             ld e,(hl)            	;^
	ram:6b7a 62             ld h,d               	;b
	ram:6b7b cb 38          srl b                	;. 8
	ram:6b7d cb 38          srl b                	;. 8
	ram:6b7f cb 38          srl b                	;. 8
	ram:6b81 3e 3f          ld a,03fh            	;> ?
	ram:6b83 91             sub c                	;.
	ram:6b84 87             add a,a              	;.
	ram:6b85 87             add a,a              	;.
	ram:6b86 6f             ld l,a               	;o
	ram:6b87 29             add hl,hl            	;)
	ram:6b88 29             add hl,hl            	;)
	ram:6b89 7b             ld a,e               	;{
	ram:6b8a 58             ld e,b               	;X
	ram:6b8b 19             add hl,de            	;.
	ram:6b8c c1             pop bc               	;.
	ram:6b8d d1             pop de               	;.
	ram:6b8e c9             ret                  	;.
l6b8fh:
	ram:6b8f 80             add a,b              	;.
	ram:6b90 40             ld b,b               	;@
	ram:6b91 20 10          jr nz,l6ba3h         	;.
	ram:6b93 08             ex af,af'            	;.
	ram:6b94 04             inc b                	;.
	ram:6b95 02             ld (bc),a            	;.
	ram:6b96 01 f5 78       ld bc,l78f5h         	;. . x
	ram:6b99 fe 7f          cp 07fh              	;. .
	ram:6b9b 30 0b          jr nc,l6ba8h         	;0 .
	ram:6b9d 79             ld a,c               	;y
	ram:6b9e fe 40          cp 040h              	;. @
	ram:6ba0 30 06          jr nc,l6ba8h         	;0 .
	ram:6ba2 b7             or a                 	;.
l6ba3h:
	ram:6ba3 28 03          jr z,l6ba8h          	;( .
	ram:6ba5 f1             pop af               	;.
	ram:6ba6 b7             or a                 	;.
	ram:6ba7 c9             ret                  	;.
l6ba8h:
	ram:6ba8 f1             pop af               	;.
	ram:6ba9 37             scf                  	;7
	ram:6baa c9             ret                  	;.
sub_6babh:
	ram:6bab 04             inc b                	;.
	ram:6bac cb 6f          bit 5,a              	;. o
	ram:6bae c8             ret z                	;.
	ram:6baf 05             dec b                	;.
	ram:6bb0 05             dec b                	;.
	ram:6bb1 c9             ret                  	;.
sub_6bb2h:
	ram:6bb2 3e 34          ld a,034h            	;> 4
	ram:6bb4 18 02          jr l6bb8h            	;. .
sub_6bb6h:
	ram:6bb6 3e 33          ld a,033h            	;> 3
l6bb8h:
	ram:6bb8 2e 05          ld l,005h            	;. .
	ram:6bba c6 45          add a,045h           	;. E
	ram:6bbc 67             ld h,a               	;g
	ram:6bbd 22 83 80       ld (08083h),hl       	;" . .
	ram:6bc0 21 53 74       ld hl,07453h         	;! S t
	ram:6bc3 22 85 80       ld (08085h),hl       	;" . .
	ram:6bc6 2e 61          ld l,061h            	;. a
	ram:6bc8 22 87 80       ld (08087h),hl       	;" . .
	ram:6bcb 3e 04          ld a,004h            	;> .
	ram:6bcd 32 82 80       ld (08082h),a        	;2 . .
	ram:6bd0 c9             ret                  	;.
l6bd1h:
	ram:6bd1 21 03 65       ld hl,l6503h         	;! . e
	ram:6bd4 22 83 80       ld (08083h),hl       	;" . .
	ram:6bd7 21 71 6e       ld hl,06e71h         	;! q n
	ram:6bda 22 85 80       ld (08085h),hl       	;" . .
	ram:6bdd c9             ret                  	;.
l6bdeh:
	ram:6bde 21 03 78       ld hl,l7803h         	;! . x
	ram:6be1 22 83 80       ld (08083h),hl       	;" . .
	ram:6be4 2e 74          ld l,074h            	;. t
	ram:6be6 22 85 80       ld (08085h),hl       	;" . .
	ram:6be9 21 86 80       ld hl,08086h         	;! . .
l6bech:
	ram:6bec cd 20 69       call sub_6920h       	;.   i
	ram:6bef f5             push af              	;.
	ram:6bf0 cd bf 21       call 021bfh          	;. . !
	ram:6bf3 28 0b          jr z,l6c00h          	;( .
	ram:6bf5 c6 30          add a,030h           	;. 0
	ram:6bf7 77             ld (hl),a            	;w
	ram:6bf8 23             inc hl               	;#
	ram:6bf9 3a 83 80       ld a,(08083h)        	;: . .
	ram:6bfc 3c             inc a                	;<
	ram:6bfd 32 83 80       ld (08083h),a        	;2 . .
l6c00h:
	ram:6c00 f1             pop af               	;.
	ram:6c01 e6 0f          and 00fh             	;. .
	ram:6c03 c6 30          add a,030h           	;. 0
	ram:6c05 77             ld (hl),a            	;w
	ram:6c06 c9             ret                  	;.
sub_6c07h:
	ram:6c07 21 02 79       ld hl,l7902h         	;! . y
l6c0ah:
	ram:6c0a 22 83 80       ld (08083h),hl       	;" . .
	ram:6c0d 21 85 80       ld hl,08085h         	;! . .
	ram:6c10 18 da          jr l6bech            	;. .
l6c12h:
	ram:6c12 21 02 72       ld hl,l7201h+1       	;! . r
	ram:6c15 18 f3          jr l6c0ah            	;. .
sub_6c17h:
	ram:6c17 3a 68 83       ld a,(08368h)        	;: h .
sub_6c1ah:
	ram:6c1a f5             push af              	;.
	ram:6c1b 3e 0a          ld a,00ah            	;> .
	ram:6c1d 32 82 80       ld (08082h),a        	;2 . .
	ram:6c20 f1             pop af               	;.
	ram:6c21 cd 13 00       call 00013h          	;. . .
	ram:6c24 20 ab          jr nz,l6bd1h         	;.
	ram:6c26 cd 7a 00       call 0007ah          	;. z .
	ram:6c29 20 dc          jr nz,sub_6c07h      	;.
	ram:6c2b cd 84 00       call 00084h          	;. . .
	ram:6c2e 20 ae          jr nz,l6bdeh         	;.
	ram:6c30 fd cb 02 7e    bit 7,(iy+002h)      	;. . . ~
	ram:6c34 28 dc          jr z,l6c12h          	;( .
sub_6c36h:
	ram:6c36 2e 27          ld l,027h            	;. '
	ram:6c38 18 02          jr l6c3ch            	;. .
sub_6c3ah:
	ram:6c3a 2e 49          ld l,049h            	;. I
l6c3ch:
	ram:6c3c c6 30          add a,030h           	;. 0
	ram:6c3e 67             ld h,a               	;g
	ram:6c3f 22 85 80       ld (08085h),hl       	;" . .
	ram:6c42 21 03 51       ld hl,05103h         	;! . Q
	ram:6c45 22 83 80       ld (08083h),hl       	;" . .
	ram:6c48 c9             ret                  	;.
sub_6c49h:
	ram:6c49 21 02 51       ld hl,05102h         	;! . Q
	ram:6c4c 22 83 80       ld (08083h),hl       	;" . .
	ram:6c4f c6 30          add a,030h           	;. 0
	ram:6c51 32 85 80       ld (08085h),a        	;2 . .
	ram:6c54 c9             ret                  	;.
sub_6c55h:
	ram:6c55 21 5b 6c       ld hl,l6c5bh         	;! [ l
	ram:6c58 c3 04 21       jp 02104h            	;. . !
l6c5bh:
	ram:6c5b 0a             ld a,(bc)            	;.
	ram:6c5c 05             dec b                	;.
	ram:6c5d 52             ld d,d               	;R
	ram:6c5e 65             ld h,l               	;e
	ram:6c5f 67             ld h,a               	;g
	ram:6c60 45             ld b,l               	;E
	ram:6c61 71             ld (hl),c            	;q
sub_6c62h:
	ram:6c62 f5             push af              	;.
	ram:6c63 cd bf 39       call 039bfh          	;. . 9
	ram:6c66 cd 51 4f       call sub_4f51h       	;. Q O
	ram:6c69 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6c6d 28 07          jr z,l6c76h          	;( .
	ram:6c6f cd 7a 00       call 0007ah          	;. z .
	ram:6c72 28 08          jr z,l6c7ch          	;( .
	ram:6c74 18 03          jr l6c79h            	;. .
l6c76h:
	ram:6c76 cd fc 61       call sub_61fch       	;. . a
l6c79h:
	ram:6c79 cd 5c 62       call sub_625ch       	;. \ b
l6c7ch:
	ram:6c7c 2a 69 83       ld hl,(08369h)       	;* i .
	ram:6c7f 11 78 83       ld de,08378h         	;. x .
	ram:6c82 cd 9d 20       call 0209dh          	;. .  
	ram:6c85 cd 98 21       call 02198h          	;. . !
	ram:6c88 11 82 83       ld de,08382h         	;. . .
	ram:6c8b cd 11 21       call 02111h          	;. . !
	ram:6c8e fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:6c92 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6c96 20 43          jr nz,l6cdbh         	;C
	ram:6c98 fd cb 02 d6    set 2,(iy+002h)      	;. . . .
	ram:6c9c cd 13 00       call 00013h          	;. . .
	ram:6c9f cc 7a 00       call z,0007ah        	;. z .
	ram:6ca2 c4 96 75       call nz,sub_7596h    	;. . u
	ram:6ca5 cd ea 66       call sub_66eah       	;. . f
	ram:6ca8 cd d3 3d       call 03dd3h          	;. . =
	ram:6cab cd 15 76       call sub_7615h       	;. . v
	ram:6cae cd 75 00       call 00075h          	;. u .
	ram:6cb1 c2 0b 6e       jp nz,l6e0bh         	;. . n
	ram:6cb4 cd 39 38       call 03839h          	;. 9 8
	ram:6cb7 21 8e 83       ld hl,0838eh         	;! . .
	ram:6cba 06 13          ld b,013h            	;. .
	ram:6cbc cd 8a 75       call sub_758ah       	;. . u
	ram:6cbf 21 63 84       ld hl,08463h         	;! c .
	ram:6cc2 06 08          ld b,008h            	;. .
	ram:6cc4 cd 8a 75       call sub_758ah       	;. . u
	ram:6cc7 21 b6 84       ld hl,084b6h         	;! . .
	ram:6cca cd 88 75       call sub_7588h       	;. . u
	ram:6ccd 21 13 85       ld hl,08513h         	;! . .
	ram:6cd0 cd 88 75       call sub_7588h       	;. . u
	ram:6cd3 21 70 85       ld hl,08570h         	;! p .
	ram:6cd6 06 0b          ld b,00bh            	;. .
	ram:6cd8 cd 8a 75       call sub_758ah       	;. . u
l6cdbh:
	ram:6cdb 21 00 00       ld hl,00000h         	;! . .
	ram:6cde 22 67 83       ld (08367h),hl       	;" g .
	ram:6ce1 fd cb 03 ce    set 1,(iy+003h)      	;. . . .
	ram:6ce5 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:6ce8 e5             push hl              	;.
	ram:6ce9 cd c5 67       call sub_67c5h       	;. . g
	ram:6cec cd a3 21       call 021a3h          	;. . !
	ram:6cef cd 4a 2e       call 02e4ah          	;. J .
	ram:6cf2 cd 4a 2e       call 02e4ah          	;. J .
	ram:6cf5 cd 13 00       call 00013h          	;. . .
	ram:6cf8 28 0e          jr z,l6d08h          	;( .
	ram:6cfa cd 9c 2f       call 02f9ch          	;. . /
	ram:6cfd cd ae 2f       call 02faeh          	;. . /
	ram:6d00 cd 4b 75       call sub_754bh       	;. K u
	ram:6d03 cd 91 2e       call 02e91h          	;. . .
	ram:6d06 18 32          jr l6d3ah            	;. 2
l6d08h:
	ram:6d08 cd 7a 00       call 0007ah          	;. z .
	ram:6d0b ca 8c 6e       jp z,l6e8ch          	;. . n
	ram:6d0e cd 67 75       call sub_7567h       	;. g u
	ram:6d11 df             rst 18h              	;.
	ram:6d12 3e ff          ld a,0ffh            	;> .
	ram:6d14 32 82 80       ld (08082h),a        	;2 . .
	ram:6d17 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6d1b 28 0e          jr z,l6d2bh          	;( .
	ram:6d1d cd 4a 2e       call 02e4ah          	;. J .
	ram:6d20 2a 69 83       ld hl,(08369h)       	;* i .
	ram:6d23 cd 4d 2e       call 02e4dh          	;. M .
	ram:6d26 cd 4d 2e       call 02e4dh          	;. M .
	ram:6d29 18 0a          jr l6d35h            	;. .
l6d2bh:
	ram:6d2b fd cb 04 4e    bit 1,(iy+004h)      	;. . . N
	ram:6d2f c2 13 6e       jp nz,l6e13h         	;. . n
	ram:6d32 cd 4a 2e       call 02e4ah          	;. J .
l6d35h:
	ram:6d35 cd 0a 74       call sub_740ah       	;. . t
	ram:6d38 28 4b          jr z,l6d85h          	;( K
l6d3ah:
	ram:6d3a cd 91 72       call sub_7291h       	;. . r
l6d3dh:
	ram:6d3d cd 0f 75       call sub_750fh       	;. . u
	ram:6d40 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l6d44h:
	ram:6d44 cd db 35       call 035dbh          	;. . 5
	ram:6d47 cd bc 73       call sub_73bch       	;. . s
	ram:6d4a fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6d4e 28 05          jr z,l6d55h          	;( .
	ram:6d50 cd 11 72       call sub_7211h       	;. . r
	ram:6d53 18 10          jr l6d65h            	;. .
l6d55h:
	ram:6d55 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6d59 28 07          jr z,l6d62h          	;( .
	ram:6d5b cd 6b 2f       call 02f6bh          	;. k /
	ram:6d5e fd cb 03 ae    res 5,(iy+003h)      	;. . . .
l6d62h:
	ram:6d62 cd e6 73       call sub_73e6h       	;. . s
l6d65h:
	ram:6d65 cd 42 72       call sub_7242h       	;. B r
	ram:6d68 cd 7f 72       call sub_727fh       	;. . r
	ram:6d6b 3a 75 83       ld a,(08375h)        	;: u .
	ram:6d6e 3c             inc a                	;<
	ram:6d6f fe 7f          cp 07fh              	;. .
	ram:6d71 30 0b          jr nc,l6d7eh         	;0 .
	ram:6d73 32 75 83       ld (08375h),a        	;2 u .
	ram:6d76 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:6d79 cd fe 42       call sub_42feh       	;. . B
	ram:6d7c 18 c6          jr l6d44h            	;. .
l6d7eh:
	ram:6d7e cd 97 73       call sub_7397h       	;. . s
	ram:6d81 30 b2          jr nc,l6d35h         	;0 .
	ram:6d83 18 b8          jr l6d3dh            	;. .
l6d85h:
	ram:6d85 fd cb 03 86    res 0,(iy+003h)      	;. . . .
	ram:6d89 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6d8d 20 78          jr nz,l6e07h         	;x
l6d8fh:
	ram:6d8f 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:6d92 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:6d95 cd 48 26       call 02648h          	;. H &
	ram:6d98 2a 69 83       ld hl,(08369h)       	;* i .
	ram:6d9b 06 06          ld b,006h            	;. .
	ram:6d9d cd 7a 00       call 0007ah          	;. z .
	ram:6da0 cc 13 00       call z,00013h        	;. . .
	ram:6da3 20 1d          jr nz,l6dc2h         	;.
	ram:6da5 cd 3d 26       call 0263dh          	;. = &
	ram:6da8 21 b6 84       ld hl,084b6h         	;! . .
	ram:6dab 06 09          ld b,009h            	;. .
	ram:6dad cd 7f 00       call 0007fh          	;. . .
	ram:6db0 20 10          jr nz,l6dc2h         	;.
	ram:6db2 cd 54 26       call 02654h          	;. T &
	ram:6db5 21 13 85       ld hl,08513h         	;! . .
	ram:6db8 cd 84 00       call 00084h          	;. . .
	ram:6dbb 20 05          jr nz,l6dc2h         	;.
	ram:6dbd 21 70 85       ld hl,08570h         	;! p .
	ram:6dc0 06 0b          ld b,00bh            	;. .
l6dc2h:
	ram:6dc2 11 0a 00       ld de,0000ah         	;. . .
l6dc5h:
	ram:6dc5 cb f6          set 6,(hl)           	;. .
	ram:6dc7 19             add hl,de            	;.
	ram:6dc8 10 fb          djnz l6dc5h          	;. .
	ram:6dca cd 13 00       call 00013h          	;. . .
	ram:6dcd 28 07          jr z,l6dd6h          	;( .
	ram:6dcf 2a e9 85       ld hl,(085e9h)       	;* . .
	ram:6dd2 cb b6          res 6,(hl)           	;. .
	ram:6dd4 18 31          jr l6e07h            	;. 1
l6dd6h:
	ram:6dd6 d7             rst 10h              	;.
	ram:6dd7 38 02          jr c,l6ddbh          	;8 .
	ram:6dd9 cb b6          res 6,(hl)           	;. .
l6ddbh:
	ram:6ddb cd 89 00       call 00089h          	;. . .
	ram:6dde 28 27          jr z,l6e07h          	;( '
	ram:6de0 3a e0 85       ld a,(085e0h)        	;: . .
	ram:6de3 b7             or a                 	;.
	ram:6de4 28 21          jr z,l6e07h          	;( !
l6de6h:
	ram:6de6 f5             push af              	;.
	ram:6de7 cd 49 6c       call sub_6c49h       	;. I l
	ram:6dea d7             rst 10h              	;.
	ram:6deb 38 02          jr c,l6defh          	;8 .
	ram:6ded cb b6          res 6,(hl)           	;. .
l6defh:
	ram:6def f1             pop af               	;.
	ram:6df0 f5             push af              	;.
	ram:6df1 cd 3a 6c       call sub_6c3ah       	;. : l
	ram:6df4 d7             rst 10h              	;.
	ram:6df5 38 02          jr c,l6df9h          	;8 .
	ram:6df7 cb f6          set 6,(hl)           	;. .
l6df9h:
	ram:6df9 f1             pop af               	;.
	ram:6dfa f5             push af              	;.
	ram:6dfb cd 36 6c       call sub_6c36h       	;. 6 l
	ram:6dfe d7             rst 10h              	;.
	ram:6dff 38 02          jr c,l6e03h          	;8 .
	ram:6e01 cb f6          set 6,(hl)           	;. .
l6e03h:
	ram:6e03 f1             pop af               	;.
	ram:6e04 3d             dec a                	;=
	ram:6e05 20 df          jr nz,l6de6h         	;.
l6e07h:
	ram:6e07 e1             pop hl               	;.
	ram:6e08 22 e7 8b       ld (08be7h),hl       	;" . .
l6e0bh:
	ram:6e0b fd cb 03 8e    res 1,(iy+003h)      	;. . . .
	ram:6e0f f1             pop af               	;.
	ram:6e10 c3 51 4f       jp sub_4f51h         	;. Q O
l6e13h:
	ram:6e13 21 01 00       ld hl,00001h         	;! . .
l6e16h:
	ram:6e16 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:6e19 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l6e1dh:
	ram:6e1d cd 66 72       call sub_7266h       	;. f r
	ram:6e20 20 34          jr nz,l6e56h         	;4
	ram:6e22 3a 75 83       ld a,(08375h)        	;: u .
	ram:6e25 3c             inc a                	;<
	ram:6e26 fe 7f          cp 07fh              	;. .
	ram:6e28 30 14          jr nc,l6e3eh         	;0 .
	ram:6e2a 32 75 83       ld (08375h),a        	;2 u .
	ram:6e2d cd ab 73       call sub_73abh       	;. . s
	ram:6e30 eb             ex de,hl             	;.
	ram:6e31 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:6e34 e5             push hl              	;.
	ram:6e35 cd 9d 20       call 0209dh          	;. .  
	ram:6e38 e1             pop hl               	;.
	ram:6e39 cd fe 42       call sub_42feh       	;. . B
	ram:6e3c 18 df          jr l6e1dh            	;. .
l6e3eh:
	ram:6e3e ed 5b 98 8b    ld de,(08b98h)       	;. [ . .
	ram:6e42 21 14 00       ld hl,00014h         	;! . .
	ram:6e45 19             add hl,de            	;.
	ram:6e46 cd 3e 48       call sub_483eh       	;. > H
	ram:6e49 11 0a 00       ld de,0000ah         	;. . .
	ram:6e4c 19             add hl,de            	;.
	ram:6e4d 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:6e50 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:6e53 23             inc hl               	;#
	ram:6e54 18 c0          jr l6e16h            	;. .
l6e56h:
	ram:6e56 3a 67 83       ld a,(08367h)        	;: g .
	ram:6e59 3d             dec a                	;=
	ram:6e5a 20 07          jr nz,l6e63h         	;.
	ram:6e5c fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6e60 c4 0f 75       call nz,sub_750fh    	;. . u
l6e63h:
	ram:6e63 cd db 35       call 035dbh          	;. . 5
	ram:6e66 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6e6a c4 4a 2e       call nz,02e4ah       	;. J .
	ram:6e6d cd bc 73       call sub_73bch       	;. . s
	ram:6e70 cd cd 73       call sub_73cdh       	;. . s
	ram:6e73 cd 11 21       call 02111h          	;. . !
	ram:6e76 cd ab 73       call sub_73abh       	;. . s
	ram:6e79 11 98 80       ld de,08098h         	;. . .
	ram:6e7c cd 9d 20       call 0209dh          	;. .  
	ram:6e7f cf             rst 8                	;.
	ram:6e80 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:6e83 e7             rst 20h              	;.
	ram:6e84 cd f8 73       call sub_73f8h       	;. . s
	ram:6e87 cd 42 72       call sub_7242h       	;. B r
	ram:6e8a 18 91          jr l6e1dh            	;. .
l6e8ch:
	ram:6e8c cd 84 00       call 00084h          	;. . .
	ram:6e8f ca c0 6f       jp z,l6fc0h          	;. . o
	ram:6e92 21 13 85       ld hl,08513h         	;! . .
	ram:6e95 cd 48 73       call sub_7348h       	;. H s
	ram:6e98 cd 53 75       call sub_7553h       	;. S u
	ram:6e9b 3e ff          ld a,0ffh            	;> .
	ram:6e9d 32 8d 80       ld (0808dh),a        	;2 . .
	ram:6ea0 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6ea4 28 05          jr z,l6eabh          	;( .
	ram:6ea6 cd 91 2e       call 02e91h          	;. . .
	ram:6ea9 18 07          jr l6eb2h            	;. .
l6eabh:
	ram:6eab fd cb 04 4e    bit 1,(iy+004h)      	;. . . N
	ram:6eaf c2 35 6f       jp nz,l6f35h         	;. 5 o
l6eb2h:
	ram:6eb2 cd 91 2e       call 02e91h          	;. . .
l6eb5h:
	ram:6eb5 cd 8c 72       call sub_728ch       	;. . r
l6eb8h:
	ram:6eb8 cd 00 75       call sub_7500h       	;. . u
	ram:6ebb fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6ebf 20 04          jr nz,l6ec5h         	;.
	ram:6ec1 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l6ec5h:
	ram:6ec5 cd db 35       call 035dbh          	;. . 5
	ram:6ec8 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6ecc c4 83 2f       call nz,02f83h       	;. . /
	ram:6ecf cd c7 73       call sub_73c7h       	;. . s
	ram:6ed2 cd 0b 00       call 0000bh          	;. . .
	ram:6ed5 f5             push af              	;.
	ram:6ed6 cd 17 6c       call sub_6c17h       	;. . l
	ram:6ed9 3e 79          ld a,079h            	;> y
	ram:6edb 32 84 80       ld (08084h),a        	;2 . .
	ram:6ede cd e1 35       call 035e1h          	;. . 5
	ram:6ee1 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6ee5 28 07          jr z,l6eeeh          	;( .
	ram:6ee7 cd 6b 2f       call 02f6bh          	;. k /
	ram:6eea fd cb 03 ae    res 5,(iy+003h)      	;. . . .
l6eeeh:
	ram:6eee cd bc 73       call sub_73bch       	;. . s
	ram:6ef1 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6ef5 28 0f          jr z,l6f06h          	;( .
	ram:6ef7 f1             pop af               	;.
	ram:6ef8 28 29          jr z,l6f23h          	;( )
	ram:6efa cd 11 72       call sub_7211h       	;. . r
	ram:6efd 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:6f00 e7             rst 20h              	;.
	ram:6f01 cd e0 71       call sub_71e0h       	;. . q
	ram:6f04 18 1d          jr l6f23h            	;. .
l6f06h:
	ram:6f06 cd 36 2f       call 02f36h          	;. 6 /
	ram:6f09 13             inc de               	;.
	ram:6f0a cd 9d 20       call 0209dh          	;. .  
	ram:6f0d cf             rst 8                	;.
	ram:6f0e cd 6b 2f       call 02f6bh          	;. k /
	ram:6f11 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:6f14 e7             rst 20h              	;.
	ram:6f15 f1             pop af               	;.
	ram:6f16 20 05          jr nz,l6f1dh         	;.
	ram:6f18 21 82 80       ld hl,08082h         	;! . .
	ram:6f1b cb ee          set 5,(hl)           	;. .
l6f1dh:
	ram:6f1d cd 83 2f       call 02f83h          	;. . /
	ram:6f20 cd f8 73       call sub_73f8h       	;. . s
l6f23h:
	ram:6f23 cd 42 72       call sub_7242h       	;. B r
	ram:6f26 cd 7f 72       call sub_727fh       	;. . r
	ram:6f29 cd 1f 74       call sub_741fh       	;. . t
	ram:6f2c 30 97          jr nc,l6ec5h         	;0 .
	ram:6f2e cd 97 73       call sub_7397h       	;. . s
	ram:6f31 30 82          jr nc,l6eb5h         	;0 .
	ram:6f33 18 83          jr l6eb8h            	;. .
l6f35h:
	ram:6f35 21 01 00       ld hl,00001h         	;! . .
l6f38h:
	ram:6f38 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:6f3b fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l6f3fh:
	ram:6f3f cd 66 72       call sub_7266h       	;. f r
	ram:6f42 20 19          jr nz,l6f5dh         	;.
	ram:6f44 cd 1f 74       call sub_741fh       	;. . t
	ram:6f47 30 f6          jr nc,l6f3fh         	;0 .
	ram:6f49 ed 5b 98 8b    ld de,(08b98h)       	;. [ . .
	ram:6f4d 21 14 00       ld hl,00014h         	;! . .
	ram:6f50 19             add hl,de            	;.
	ram:6f51 cd 3e 48       call sub_483eh       	;. > H
	ram:6f54 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:6f57 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:6f5a 23             inc hl               	;#
	ram:6f5b 18 db          jr l6f38h            	;. .
l6f5dh:
	ram:6f5d 3a 67 83       ld a,(08367h)        	;: g .
	ram:6f60 3d             dec a                	;=
	ram:6f61 20 07          jr nz,l6f6ah         	;.
	ram:6f63 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6f67 c4 00 75       call nz,sub_7500h    	;. . u
l6f6ah:
	ram:6f6a cd db 35       call 035dbh          	;. . 5
	ram:6f6d fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6f71 c4 4a 2e       call nz,02e4ah       	;. J .
	ram:6f74 cd c7 73       call sub_73c7h       	;. . s
	ram:6f77 cd 0b 00       call 0000bh          	;. . .
	ram:6f7a f5             push af              	;.
	ram:6f7b cd 17 6c       call sub_6c17h       	;. . l
	ram:6f7e 3e 79          ld a,079h            	;> y
	ram:6f80 32 84 80       ld (08084h),a        	;2 . .
	ram:6f83 cd e1 35       call 035e1h          	;. . 5
	ram:6f86 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:6f8a c4 4a 2e       call nz,02e4ah       	;. J .
	ram:6f8d cd bc 73       call sub_73bch       	;. . s
	ram:6f90 3a 67 83       ld a,(08367h)        	;: g .
	ram:6f93 3d             dec a                	;=
	ram:6f94 87             add a,a              	;.
	ram:6f95 11 98 80       ld de,08098h         	;. . .
	ram:6f98 cd d3 73       call sub_73d3h       	;. . s
	ram:6f9b d5             push de              	;.
	ram:6f9c 11 a3 80       ld de,080a3h         	;. . .
	ram:6f9f cd 9d 20       call 0209dh          	;. .  
	ram:6fa2 cf             rst 8                	;.
	ram:6fa3 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:6fa6 e7             rst 20h              	;.
	ram:6fa7 d1             pop de               	;.
	ram:6fa8 f1             pop af               	;.
	ram:6fa9 20 05          jr nz,l6fb0h         	;.
	ram:6fab 21 82 80       ld hl,08082h         	;! . .
	ram:6fae cb ee          set 5,(hl)           	;. .
l6fb0h:
	ram:6fb0 cd 11 21       call 02111h          	;. . !
	ram:6fb3 23             inc hl               	;#
	ram:6fb4 cd 9d 20       call 0209dh          	;. .  
	ram:6fb7 cd f8 73       call sub_73f8h       	;. . s
	ram:6fba cd 42 72       call sub_7242h       	;. B r
	ram:6fbd c3 3f 6f       jp l6f3fh            	;. ? o
l6fc0h:
	ram:6fc0 cd 7f 00       call 0007fh          	;. . .
	ram:6fc3 ca 99 70       jp z,l7099h          	;. . p
	ram:6fc6 21 b6 84       ld hl,084b6h         	;! . .
	ram:6fc9 cd 48 73       call sub_7348h       	;. H s
	ram:6fcc cd 53 75       call sub_7553h       	;. S u
	ram:6fcf cd 7c 75       call sub_757ch       	;. | u
	ram:6fd2 3e ff          ld a,0ffh            	;> .
	ram:6fd4 32 8d 80       ld (0808dh),a        	;2 . .
	ram:6fd7 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6fdb 28 05          jr z,l6fe2h          	;( .
	ram:6fdd cd 91 2e       call 02e91h          	;. . .
	ram:6fe0 18 06          jr l6fe8h            	;. .
l6fe2h:
	ram:6fe2 fd cb 04 4e    bit 1,(iy+004h)      	;. . . N
	ram:6fe6 20 4c          jr nz,l7034h         	;L
l6fe8h:
	ram:6fe8 cd 91 2e       call 02e91h          	;. . .
l6febh:
	ram:6feb cd 8c 72       call sub_728ch       	;. . r
l6feeh:
	ram:6fee cd f1 74       call sub_74f1h       	;. . t
	ram:6ff1 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l6ff5h:
	ram:6ff5 cd db 35       call 035dbh          	;. . 5
	ram:6ff8 cd 9c 72       call sub_729ch       	;. . r
	ram:6ffb fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:6fff 28 0e          jr z,l700fh          	;( .
	ram:7001 cd fe 1f       call 01ffeh          	;. . .
	ram:7004 cd e0 71       call sub_71e0h       	;. . q
	ram:7007 cd 56 20       call 02056h          	;. V  
	ram:700a cd 11 72       call sub_7211h       	;. . r
	ram:700d 18 13          jr l7022h            	;. .
l700fh:
	ram:700f fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7013 28 0a          jr z,l701fh          	;( .
	ram:7015 cd 83 2f       call 02f83h          	;. . /
	ram:7018 cd 61 2f       call 02f61h          	;. a /
	ram:701b fd cb 03 ae    res 5,(iy+003h)      	;. . . .
l701fh:
	ram:701f cd eb 73       call sub_73ebh       	;. . s
l7022h:
	ram:7022 cd 42 72       call sub_7242h       	;. B r
	ram:7025 cd 7f 72       call sub_727fh       	;. . r
	ram:7028 cd 1a 74       call sub_741ah       	;. . t
	ram:702b 30 c8          jr nc,l6ff5h         	;0 .
	ram:702d cd 97 73       call sub_7397h       	;. . s
	ram:7030 30 b9          jr nc,l6febh         	;0 .
	ram:7032 18 ba          jr l6feeh            	;. .
l7034h:
	ram:7034 21 01 00       ld hl,00001h         	;! . .
l7037h:
	ram:7037 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:703a fd cb 03 ee    set 5,(iy+003h)      	;. . . .
l703eh:
	ram:703e cd 66 72       call sub_7266h       	;. f r
	ram:7041 20 19          jr nz,l705ch         	;.
	ram:7043 cd 1a 74       call sub_741ah       	;. . t
	ram:7046 30 f6          jr nc,l703eh         	;0 .
	ram:7048 ed 5b 98 8b    ld de,(08b98h)       	;. [ . .
	ram:704c 21 14 00       ld hl,00014h         	;! . .
	ram:704f 19             add hl,de            	;.
	ram:7050 cd 3e 48       call sub_483eh       	;. > H
	ram:7053 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:7056 2a 9a 8b       ld hl,(08b9ah)       	;* . .
	ram:7059 23             inc hl               	;#
	ram:705a 18 db          jr l7037h            	;. .
l705ch:
	ram:705c 3a 67 83       ld a,(08367h)        	;: g .
	ram:705f fe 01          cp 001h              	;. .
	ram:7061 20 07          jr nz,l706ah         	;.
	ram:7063 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7067 c4 f1 74       call nz,sub_74f1h    	;. . t
l706ah:
	ram:706a cd db 35       call 035dbh          	;. . 5
	ram:706d cd 9c 72       call sub_729ch       	;. . r
	ram:7070 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7074 c4 91 2e       call nz,02e91h       	;. . .
	ram:7077 3a 67 83       ld a,(08367h)        	;: g .
	ram:707a 3d             dec a                	;=
	ram:707b 87             add a,a              	;.
	ram:707c 11 98 80       ld de,08098h         	;. . .
	ram:707f cd d3 73       call sub_73d3h       	;. . s
	ram:7082 d5             push de              	;.
	ram:7083 11 a3 80       ld de,080a3h         	;. . .
	ram:7086 cd 9d 20       call 0209dh          	;. .  
	ram:7089 d1             pop de               	;.
	ram:708a cd 11 21       call 02111h          	;. . !
	ram:708d 23             inc hl               	;#
	ram:708e cd 9d 20       call 0209dh          	;. .  
	ram:7091 cd f8 73       call sub_73f8h       	;. . s
	ram:7094 cd 42 72       call sub_7242h       	;. B r
	ram:7097 18 a5          jr l703eh            	;. .
l7099h:
	ram:7099 cd 09 2e       call 02e09h          	;. . .
	ram:709c cd 8d 71       call sub_718dh       	;. . q
	ram:709f 47             ld b,a               	;G
	ram:70a0 b7             or a                 	;.
	ram:70a1 28 2b          jr z,l70ceh          	;( +
	ram:70a3 3a de 85       ld a,(085deh)        	;: . .
	ram:70a6 e6 0f          and 00fh             	;. .
	ram:70a8 28 05          jr z,l70afh          	;( .
	ram:70aa 3d             dec a                	;=
	ram:70ab b8             cp b                 	;.
	ram:70ac d2 38 0a       jp nc,00a38h         	;. 8 .
l70afh:
	ram:70af 3a df 85       ld a,(085dfh)        	;: . .
	ram:70b2 e6 0f          and 00fh             	;. .
	ram:70b4 28 05          jr z,l70bbh          	;( .
	ram:70b6 3d             dec a                	;=
	ram:70b7 b8             cp b                 	;.
	ram:70b8 d2 38 0a       jp nc,00a38h         	;. 8 .
l70bbh:
	ram:70bb 21 84 85       ld hl,08584h         	;! . .
	ram:70be cd 48 73       call sub_7348h       	;. H s
	ram:70c1 cd ec 74       call sub_74ech       	;. . t
	ram:70c4 cd 53 75       call sub_7553h       	;. S u
	ram:70c7 fd cb 03 ee    set 5,(iy+003h)      	;. . . .
	ram:70cb cd c0 71       call sub_71c0h       	;. . q
l70ceh:
	ram:70ce fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:70d2 28 0f          jr z,l70e3h          	;( .
	ram:70d4 fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:70d8 3e ff          ld a,0ffh            	;> .
	ram:70da 32 8d 80       ld (0808dh),a        	;2 . .
	ram:70dd cd 91 2e       call 02e91h          	;. . .
	ram:70e0 cd 91 2e       call 02e91h          	;. . .
l70e3h:
	ram:70e3 cd 29 73       call sub_7329h       	;. ) s
	ram:70e6 da 85 6d       jp c,l6d85h          	;. . m
l70e9h:
	ram:70e9 21 00 00       ld hl,00000h         	;! . .
	ram:70ec 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:70ef 22 67 83       ld (08367h),hl       	;" g .
l70f2h:
	ram:70f2 cd 42 72       call sub_7242h       	;. B r
	ram:70f5 21 9a 8b       ld hl,08b9ah         	;! . .
	ram:70f8 3a de 85       ld a,(085deh)        	;: . .
	ram:70fb cd de 72       call sub_72deh       	;. . r
	ram:70fe f5             push af              	;.
	ram:70ff cd e7 35       call 035e7h          	;. . 5
	ram:7102 3a 82 80       ld a,(08082h)        	;: . .
	ram:7105 f5             push af              	;.
	ram:7106 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:710a c4 4a 2e       call nz,02e4ah       	;. J .
	ram:710d cd c7 73       call sub_73c7h       	;. . s
	ram:7110 21 9b 8b       ld hl,08b9bh         	;! . .
	ram:7113 3a df 85       ld a,(085dfh)        	;: . .
	ram:7116 cd de 72       call sub_72deh       	;. . r
	ram:7119 c1             pop bc               	;.
	ram:711a f5             push af              	;.
	ram:711b c5             push bc              	;.
	ram:711c cd e7 35       call 035e7h          	;. . 5
	ram:711f fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7123 c4 4a 2e       call nz,02e4ah       	;. J .
	ram:7126 cd bc 73       call sub_73bch       	;. . s
	ram:7129 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:712d 28 14          jr z,l7143h          	;( .
	ram:712f f1             pop af               	;.
	ram:7130 cb 6f          bit 5,a              	;. o
	ram:7132 20 3f          jr nz,l7173h         	;?
	ram:7134 cd 11 72       call sub_7211h       	;. . r
	ram:7137 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:713a e7             rst 20h              	;.
	ram:713b cd e0 71       call sub_71e0h       	;. . q
	ram:713e 18 33          jr l7173h            	;. 3
l7140h:
	ram:7140 f1             pop af               	;.
	ram:7141 18 af          jr l70f2h            	;. .
l7143h:
	ram:7143 21 67 83       ld hl,08367h         	;! g .
	ram:7146 7e             ld a,(hl)            	;~
	ram:7147 34             inc (hl)             	;4
	ram:7148 87             add a,a              	;.
	ram:7149 6f             ld l,a               	;o
	ram:714a 26 00          ld h,000h            	;& .
	ram:714c cd 33 1f       call 01f33h          	;. 3 .
	ram:714f ed 4b 32 86    ld bc,(08632h)       	;. K 2 .
	ram:7153 09             add hl,bc            	;.
	ram:7154 e5             push hl              	;.
	ram:7155 11 98 80       ld de,08098h         	;. . .
	ram:7158 cd 9d 20       call 0209dh          	;. .  
	ram:715b 13             inc de               	;.
	ram:715c cd 9d 20       call 0209dh          	;. .  
	ram:715f cf             rst 8                	;.
	ram:7160 2a e3 85       ld hl,(085e3h)       	;* . .
	ram:7163 e7             rst 20h              	;.
	ram:7164 d1             pop de               	;.
	ram:7165 f1             pop af               	;.
	ram:7166 32 82 80       ld (08082h),a        	;2 . .
	ram:7169 cd 11 21       call 02111h          	;. . !
	ram:716c 23             inc hl               	;#
	ram:716d cd 9d 20       call 0209dh          	;. .  
	ram:7170 cd 00 40       call sub_4000h       	;. . @
l7173h:
	ram:7173 f1             pop af               	;.
	ram:7174 20 ca          jr nz,l7140h         	;.
	ram:7176 f1             pop af               	;.
	ram:7177 c2 f2 70       jp nz,l70f2h         	;. . p
	ram:717a fd cb 03 ae    res 5,(iy+003h)      	;. . . .
	ram:717e cd 15 74       call sub_7415h       	;. . t
	ram:7181 da 85 6d       jp c,l6d85h          	;. . m
	ram:7184 cd 7f 72       call sub_727fh       	;. . r
	ram:7187 cd cb 71       call sub_71cbh       	;. . q
	ram:718a c3 e9 70       jp l70e9h            	;. . p
sub_718dh:
	ram:718d cd c1 67       call sub_67c1h       	;. . g
	ram:7190 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:7193 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:7196 4e             ld c,(hl)            	;N
	ram:7197 23             inc hl               	;#
	ram:7198 46             ld b,(hl)            	;F
	ram:7199 11 eb ff       ld de,0ffebh         	;. . .
	ram:719c 19             add hl,de            	;.
	ram:719d 22 98 8b       ld (08b98h),hl       	;" . .
	ram:71a0 cb 38          srl b                	;. 8
	ram:71a2 cb 19          rr c                 	;. .
	ram:71a4 3e 09          ld a,009h            	;> .
	ram:71a6 cb 40          bit 0,b              	;. @
	ram:71a8 20 07          jr nz,l71b1h         	;.
l71aah:
	ram:71aa 3d             dec a                	;=
	ram:71ab 28 0f          jr z,l71bch          	;( .
	ram:71ad cb 21          sla c                	;. !
	ram:71af 30 f9          jr nc,l71aah         	;0 .
l71b1h:
	ram:71b1 47             ld b,a               	;G
l71b2h:
	ram:71b2 05             dec b                	;.
	ram:71b3 28 07          jr z,l71bch          	;( .
	ram:71b5 cb 21          sla c                	;. !
	ram:71b7 38 f9          jr c,l71b2h          	;8 .
	ram:71b9 c3 79 0a       jp 00a79h            	;. y .
l71bch:
	ram:71bc 32 e0 85       ld (085e0h),a        	;2 . .
	ram:71bf c9             ret                  	;.
sub_71c0h:
	ram:71c0 21 d8 71       ld hl,l71d8h         	;! . q
	ram:71c3 cd b5 0a       call 00ab5h          	;. . .
	ram:71c6 cd 75 35       call 03575h          	;. u 5
	ram:71c9 18 09          jr l71d4h            	;. .
sub_71cbh:
	ram:71cb 21 d8 71       ld hl,l71d8h         	;! . q
	ram:71ce cd b5 0a       call 00ab5h          	;. . .
	ram:71d1 cd df 34       call 034dfh          	;. . 4
l71d4h:
	ram:71d4 cd db 0a       call 00adbh          	;. . .
	ram:71d7 c9             ret                  	;.
l71d8h:
	ram:71d8 e6 7f          and 07fh             	;. .
	ram:71da fe 06          cp 006h              	;. .
	ram:71dc c2 8a 0a       jp nz,00a8ah         	;. . .
	ram:71df c9             ret                  	;.
sub_71e0h:
	ram:71e0 cd 0b 00       call 0000bh          	;. . .
	ram:71e3 c8             ret z                	;.
	ram:71e4 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:71e7 11 f6 ff       ld de,0fff6h         	;. . .
	ram:71ea 19             add hl,de            	;.
	ram:71eb 7e             ld a,(hl)            	;~
	ram:71ec 3c             inc a                	;<
	ram:71ed 20 06          jr nz,l71f5h         	;.
	ram:71ef cd 83 2f       call 02f83h          	;. . /
	ram:71f2 c3 6b 2f       jp 02f6bh            	;. k /
l71f5h:
	ram:71f5 cd 8d 20       call 0208dh          	;. .  
	ram:71f8 cd 3b 2f       call 02f3bh          	;. ; /
	ram:71fb cd 8e 1f       call 01f8eh          	;. . .
	ram:71fe da 7b 2f       jp c,02f7bh          	;. { /
l7201h:
	ram:7201 cd 29 20       call 02029h          	;. )  
	ram:7204 cd 24 2f       call 02f24h          	;. $ /
	ram:7207 cd 8e 1f       call 01f8eh          	;. . .
	ram:720a d0             ret nc               	;.
	ram:720b cd 5b 20       call 0205bh          	;. [  
	ram:720e c3 6b 2f       jp 02f6bh            	;. k /
sub_7211h:
	ram:7211 cd 0b 00       call 0000bh          	;. . .
	ram:7214 c8             ret z                	;.
	ram:7215 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:7218 11 e2 ff       ld de,0ffe2h         	;. . .
	ram:721b 19             add hl,de            	;.
	ram:721c 7e             ld a,(hl)            	;~
	ram:721d 3c             inc a                	;<
	ram:721e 20 06          jr nz,l7226h         	;.
	ram:7220 cd ae 2f       call 02faeh          	;. . /
	ram:7223 c3 9c 2f       jp 02f9ch            	;. . /
l7226h:
	ram:7226 cd 8d 20       call 0208dh          	;. .  
	ram:7229 cd ed 2e       call 02eedh          	;. . .
	ram:722c cd 8e 1f       call 01f8eh          	;. . .
	ram:722f da a6 2f       jp c,02fa6h          	;. . /
	ram:7232 cd 29 20       call 02029h          	;. )  
	ram:7235 cd 52 2f       call 02f52h          	;. R /
	ram:7238 cd 8e 1f       call 01f8eh          	;. . .
	ram:723b d0             ret nc               	;.
	ram:723c cd 5b 20       call 0205bh          	;. [  
	ram:723f c3 9c 2f       jp 02f9ch            	;. . /
sub_7242h:
	ram:7242 cd 75 00       call 00075h          	;. u .
	ram:7245 28 0b          jr z,l7252h          	;( .
	ram:7247 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:724b c2 61 0a       jp nz,00a61h         	;. a .
l724eh:
	ram:724e e1             pop hl               	;.
	ram:724f c3 8f 6d       jp l6d8fh            	;. . m
l7252h:
	ram:7252 fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:7256 c0             ret nz               	;.
	ram:7257 cd be 01       call 001beh          	;. . .
	ram:725a fe 09          cp 009h              	;. .
	ram:725c c0             ret nz               	;.
	ram:725d cd b9 36       call 036b9h          	;. . 6
	ram:7260 cd 75 00       call 00075h          	;. u .
	ram:7263 20 e9          jr nz,l724eh         	;.
	ram:7265 c9             ret                  	;.
sub_7266h:
	ram:7266 21 00 00       ld hl,00000h         	;! . .
	ram:7269 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:726c cd 06 74       call sub_7406h       	;. . t
	ram:726f c0             ret nz               	;.
	ram:7270 3a 67 83       ld a,(08367h)        	;: g .
	ram:7273 fe 01          cp 001h              	;. .
	ram:7275 28 11          jr z,l7288h          	;( .
	ram:7277 af             xor a                	;.
	ram:7278 32 67 83       ld (08367h),a        	;2 g .
	ram:727b fd cb 03 ae    res 5,(iy+003h)      	;. . . .
sub_727fh:
	ram:727f dd e1          pop ix               	;. .
	ram:7281 e1             pop hl               	;.
	ram:7282 e5             push hl              	;.
	ram:7283 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:7286 dd e9          jp (ix)              	;. .
l7288h:
	ram:7288 e1             pop hl               	;.
	ram:7289 c3 85 6d       jp l6d85h            	;. . m
sub_728ch:
	ram:728c cd 0a 74       call sub_740ah       	;. . t
	ram:728f 28 f7          jr z,l7288h          	;( .
sub_7291h:
	ram:7291 21 00 00       ld hl,00000h         	;! . .
	ram:7294 22 9c 8b       ld (08b9ch),hl       	;" . .
	ram:7297 23             inc hl               	;#
	ram:7298 22 9a 8b       ld (08b9ah),hl       	;" . .
	ram:729b c9             ret                  	;.
sub_729ch:
	ram:729c cd b3 73       call sub_73b3h       	;. . s
	ram:729f 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:72a2 cd 0b 21       call 0210bh          	;. . !
	ram:72a5 cd 0b 00       call 0000bh          	;. . .
	ram:72a8 28 27          jr z,l72d1h          	;( '
	ram:72aa 21 d1 72       ld hl,l72d1h         	;! . r
	ram:72ad cd b5 0a       call 00ab5h          	;. . .
	ram:72b0 cd 8b 1e       call 01e8bh          	;. . .
	ram:72b3 cd 9b 25       call 0259bh          	;. . %
	ram:72b6 ed 5b e3 85    ld de,(085e3h)       	;. [ . .
	ram:72ba cd 11 21       call 02111h          	;. . !
	ram:72bd cd ba 23       call 023bah          	;. . #
	ram:72c0 cd 9b 25       call 0259bh          	;. . %
	ram:72c3 ed 5b e7 85    ld de,(085e7h)       	;. [ . .
	ram:72c7 cd 11 21       call 02111h          	;. . !
	ram:72ca cd ba 23       call 023bah          	;. . #
	ram:72cd cd db 0a       call 00adbh          	;. . .
	ram:72d0 c9             ret                  	;.
l72d1h:
	ram:72d1 fd cb 07 86    res 0,(iy+007h)      	;. . . .
	ram:72d5 3e 20          ld a,020h            	;>  
	ram:72d7 32 82 80       ld (08082h),a        	;2 . .
	ram:72da 32 8d 80       ld (0808dh),a        	;2 . .
	ram:72dd c9             ret                  	;.
sub_72deh:
	ram:72de fd cb 07 c6    set 0,(iy+007h)      	;. . . .
	ram:72e2 b7             or a                 	;.
	ram:72e3 20 06          jr nz,l72ebh         	;.
	ram:72e5 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:72e8 e7             rst 20h              	;.
	ram:72e9 97             sub a                	;.
	ram:72ea c9             ret                  	;.
l72ebh:
	ram:72eb fe 20          cp 020h              	;.  
	ram:72ed 38 24          jr c,l7313h          	;8 $
	ram:72ef 28 07          jr z,l72f8h          	;( .
	ram:72f1 e6 0f          and 00fh             	;. .
	ram:72f3 cd e5 34       call 034e5h          	;. . 4
	ram:72f6 97             sub a                	;.
	ram:72f7 c9             ret                  	;.
l72f8h:
	ram:72f8 7e             ld a,(hl)            	;~
	ram:72f9 e5             push hl              	;.
	ram:72fa cd ef 68       call sub_68efh       	;. . h
	ram:72fd e1             pop hl               	;.
	ram:72fe 77             ld (hl),a            	;w
	ram:72ff f5             push af              	;.
	ram:7300 cd e5 34       call 034e5h          	;. . 4
l7303h:
	ram:7303 f1             pop af               	;.
	ram:7304 fe 09          cp 009h              	;. .
	ram:7306 c8             ret z                	;.
	ram:7307 3c             inc a                	;<
	ram:7308 f5             push af              	;.
	ram:7309 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:730c cd 77 30       call 03077h          	;. w 0
	ram:730f 28 f2          jr z,l7303h          	;( .
	ram:7311 e1             pop hl               	;.
	ram:7312 c9             ret                  	;.
l7313h:
	ram:7313 e6 0f          and 00fh             	;. .
	ram:7315 28 05          jr z,l731ch          	;( .
	ram:7317 cd eb 34       call 034ebh          	;. . 4
	ram:731a 97             sub a                	;.
	ram:731b c9             ret                  	;.
l731ch:
	ram:731c 7e             ld a,(hl)            	;~
	ram:731d e5             push hl              	;.
	ram:731e cd ef 68       call sub_68efh       	;. . h
sub_7321h:
	ram:7321 e1             pop hl               	;.
	ram:7322 77             ld (hl),a            	;w
	ram:7323 f5             push af              	;.
	ram:7324 cd eb 34       call 034ebh          	;. . 4
	ram:7327 18 da          jr l7303h            	;. .
sub_7329h:
	ram:7329 3a e0 85       ld a,(085e0h)        	;: . .
	ram:732c b7             or a                 	;.
	ram:732d 28 17          jr z,l7346h          	;( .
	ram:732f 3a de 85       ld a,(085deh)        	;: . .
	ram:7332 b7             or a                 	;.
	ram:7333 28 04          jr z,l7339h          	;( .
	ram:7335 e6 0f          and 00fh             	;. .
	ram:7337 28 08          jr z,l7341h          	;( .
l7339h:
	ram:7339 3a df 85       ld a,(085dfh)        	;: . .
	ram:733c b7             or a                 	;.
	ram:733d c8             ret z                	;.
	ram:733e e6 0f          and 00fh             	;. .
	ram:7340 c0             ret nz               	;.
l7341h:
	ram:7341 cd ef 68       call sub_68efh       	;. . h
	ram:7344 b7             or a                 	;.
	ram:7345 c0             ret nz               	;.
l7346h:
	ram:7346 37             scf                  	;7
	ram:7347 c9             ret                  	;.
sub_7348h:
	ram:7348 22 82 80       ld (08082h),hl       	;" . .
	ram:734b 21 8a 73       ld hl,l738ah         	;! . s
	ram:734e cd b5 0a       call 00ab5h          	;. . .
	ram:7351 2a 82 80       ld hl,(08082h)       	;* . .
	ram:7354 e5             push hl              	;.
	ram:7355 cd 0b 21       call 0210bh          	;. . !
	ram:7358 e7             rst 20h              	;.
	ram:7359 e5             push hl              	;.
	ram:735a cd 71 0d       call 00d71h          	;. q .
	ram:735d e1             pop hl               	;.
	ram:735e cd 0b 21       call 0210bh          	;. . !
	ram:7361 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:7364 e5             push hl              	;.
	ram:7365 3a 82 80       ld a,(08082h)        	;: . .
	ram:7368 e6 80          and 080h             	;. .
	ram:736a 47             ld b,a               	;G
	ram:736b 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:736e e6 80          and 080h             	;. .
	ram:7370 a8             xor b                	;.
	ram:7371 20 17          jr nz,l738ah         	;.
	ram:7373 cd 23 10       call 01023h          	;. # .
	ram:7376 cd fc 11       call 011fch          	;. . .
	ram:7379 21 8d 73       ld hl,l738dh         	;! . s
	ram:737c cd 83 1f       call 01f83h          	;. . .
	ram:737f 30 09          jr nc,l738ah         	;0 .
	ram:7381 d1             pop de               	;.
	ram:7382 e1             pop hl               	;.
	ram:7383 cd 6f 62       call sub_626fh       	;. o b
	ram:7386 cd db 0a       call 00adbh          	;. . .
	ram:7389 c9             ret                  	;.
l738ah:
	ram:738a c3 59 0a       jp 00a59h            	;. Y .
l738dh:
	ram:738d 00             nop                  	;.
	ram:738e 04             inc b                	;.
	ram:738f fc 65 53       call m,05365h        	;. e S
	ram:7392 60             ld h,b               	;`
	ram:7393 00             nop                  	;.
	ram:7394 00             nop                  	;.
	ram:7395 00             nop                  	;.
	ram:7396 00             nop                  	;.
sub_7397h:
	ram:7397 2a 9c 8b       ld hl,(08b9ch)       	;* . .
	ram:739a 7c             ld a,h               	;|
	ram:739b b5             or l                 	;.
	ram:739c c8             ret z                	;.
	ram:739d ed 5b 9a 8b    ld de,(08b9ah)       	;. [ . .
	ram:73a1 ed 52          sbc hl,de            	;. R
	ram:73a3 c8             ret z                	;.
	ram:73a4 13             inc de               	;.
	ram:73a5 ed 53 9a 8b    ld (08b9ah),de       	;. S . .
	ram:73a9 37             scf                  	;7
	ram:73aa c9             ret                  	;.
sub_73abh:
	ram:73ab 2a 98 8b       ld hl,(08b98h)       	;* . .
	ram:73ae 11 28 00       ld de,00028h         	;. ( .
	ram:73b1 19             add hl,de            	;.
	ram:73b2 c9             ret                  	;.
sub_73b3h:
	ram:73b3 2a e9 85       ld hl,(085e9h)       	;* . .
	ram:73b6 2b             dec hl               	;+
	ram:73b7 5e             ld e,(hl)            	;^
	ram:73b8 2b             dec hl               	;+
	ram:73b9 56             ld d,(hl)            	;V
	ram:73ba 18 04          jr l73c0h            	;. .
sub_73bch:
	ram:73bc ed 5b e7 85    ld de,(085e7h)       	;. [ . .
l73c0h:
	ram:73c0 cd 0b 00       call 0000bh          	;. . .
	ram:73c3 c2 11 21       jp nz,02111h         	;. . !
	ram:73c6 c9             ret                  	;.
sub_73c7h:
	ram:73c7 ed 5b e3 85    ld de,(085e3h)       	;. [ . .
	ram:73cb 18 f3          jr l73c0h            	;. .
sub_73cdh:
	ram:73cd 3a 67 83       ld a,(08367h)        	;: g .
	ram:73d0 11 a3 80       ld de,080a3h         	;. . .
sub_73d3h:
	ram:73d3 c6 04          add a,004h           	;. .
	ram:73d5 6f             ld l,a               	;o
	ram:73d6 26 00          ld h,000h            	;& .
	ram:73d8 cd 33 1f       call 01f33h          	;. 3 .
	ram:73db ed 4b 98 8b    ld bc,(08b98h)       	;. K . .
	ram:73df 09             add hl,bc            	;.
	ram:73e0 e5             push hl              	;.
	ram:73e1 cd 9d 20       call 0209dh          	;. .  
	ram:73e4 d1             pop de               	;.
	ram:73e5 c9             ret                  	;.
sub_73e6h:
	ram:73e6 cf             rst 8                	;.
	ram:73e7 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:73ea e7             rst 20h              	;.
sub_73ebh:
	ram:73eb cd 36 2f       call 02f36h          	;. 6 /
	ram:73ee 13             inc de               	;.
	ram:73ef cd 9d 20       call 0209dh          	;. .  
	ram:73f2 cd 83 2f       call 02f83h          	;. . /
	ram:73f5 cd 61 2f       call 02f61h          	;. a /
sub_73f8h:
	ram:73f8 cd 0b 00       call 0000bh          	;. . .
	ram:73fb c8             ret z                	;.
	ram:73fc fd cb 04 46    bit 0,(iy+004h)      	;. . . F
	ram:7400 c2 b3 42       jp nz,sub_42b3h      	;. . B
	ram:7403 c3 00 40       jp sub_4000h         	;. . @
sub_7406h:
	ram:7406 21 67 83       ld hl,08367h         	;! g .
	ram:7409 34             inc (hl)             	;4
sub_740ah:
	ram:740a 3a 68 83       ld a,(08368h)        	;: h .
	ram:740d cd ef 68       call sub_68efh       	;. . h
	ram:7410 32 68 83       ld (08368h),a        	;2 h .
	ram:7413 b7             or a                 	;.
	ram:7414 c9             ret                  	;.
sub_7415h:
	ram:7415 01 84 85       ld bc,08584h         	;. . .
	ram:7418 18 08          jr l7422h            	;. .
sub_741ah:
	ram:741a 01 b6 84       ld bc,084b6h         	;. . .
	ram:741d 18 03          jr l7422h            	;. .
sub_741fh:
	ram:741f 01 13 85       ld bc,08513h         	;. . .
l7422h:
	ram:7422 2a 75 83       ld hl,(08375h)       	;* u .
	ram:7425 11 01 00       ld de,00001h         	;. . .
	ram:7428 19             add hl,de            	;.
	ram:7429 d8             ret c                	;.
	ram:742a 22 75 83       ld (08375h),hl       	;" u .
sub_742dh:
	ram:742d 21 0a 00       ld hl,0000ah         	;! . .
	ram:7430 09             add hl,bc            	;.
	ram:7431 e5             push hl              	;.
	ram:7432 11 0a 00       ld de,0000ah         	;. . .
	ram:7435 19             add hl,de            	;.
	ram:7436 7e             ld a,(hl)            	;~
	ram:7437 f5             push af              	;.
	ram:7438 eb             ex de,hl             	;.
	ram:7439 21 a3 80       ld hl,080a3h         	;! . .
	ram:743c cd 39 43       call sub_4339h       	;. 9 C
	ram:743f cd e0 11       call 011e0h          	;. . .
	ram:7442 f1             pop af               	;.
	ram:7443 e1             pop hl               	;.
	ram:7444 cd 0b 21       call 0210bh          	;. . !
	ram:7447 17             rla                  	;.
	ram:7448 30 2c          jr nc,l7476h         	;0 ,
	ram:744a cd 8e 1f       call 01f8eh          	;. . .
	ram:744d 20 17          jr nz,l7466h         	;.
	ram:744f cd 56 20       call 02056h          	;. V  
	ram:7452 cd 8e 1f       call 01f8eh          	;. . .
l7455h:
	ram:7455 30 0f          jr nc,l7466h         	;0 .
	ram:7457 cd d6 23       call 023d6h          	;. . #
	ram:745a cc 93 21       call z,02193h        	;. . !
	ram:745d cd fe 1f       call 01ffeh          	;. . .
	ram:7460 21 a3 80       ld hl,080a3h         	;! . .
	ram:7463 cb b6          res 6,(hl)           	;. .
	ram:7465 af             xor a                	;.
l7466h:
	ram:7466 d8             ret c                	;.
	ram:7467 cd 56 20       call 02056h          	;. V  
	ram:746a cd 9b 25       call 0259bh          	;. . %
	ram:746d ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:7471 cd 11 21       call 02111h          	;. . !
	ram:7474 b7             or a                 	;.
	ram:7475 c9             ret                  	;.
l7476h:
	ram:7476 cd 8e 1f       call 01f8eh          	;. . .
	ram:7479 28 03          jr z,l747eh          	;( .
	ram:747b 3f             ccf                  	;?
	ram:747c 18 e8          jr l7466h            	;. .
l747eh:
	ram:747e cd 56 20       call 02056h          	;. V  
	ram:7481 cd 8e 1f       call 01f8eh          	;. . .
	ram:7484 3f             ccf                  	;?
	ram:7485 18 ce          jr l7455h            	;. .
sub_7487h:
	ram:7487 21 00 00       ld hl,00000h         	;! . .
	ram:748a 22 75 83       ld (08375h),hl       	;" u .
	ram:748d 2a de 85       ld hl,(085deh)       	;* . .
	ram:7490 cb 0c          rrc h                	;. .
	ram:7492 28 04          jr z,l7498h          	;( .
	ram:7494 cb 0d          rrc l                	;. .
	ram:7496 20 05          jr nz,l749dh         	;.
l7498h:
	ram:7498 21 84 85       ld hl,08584h         	;! . .
	ram:749b e7             rst 20h              	;.
	ram:749c c9             ret                  	;.
l749dh:
	ram:749d 21 7a 85       ld hl,0857ah         	;! z .
	ram:74a0 e7             rst 20h              	;.
	ram:74a1 cd 83 1f       call 01f83h          	;. . .
	ram:74a4 28 f2          jr z,l7498h          	;( .
	ram:74a6 f5             push af              	;.
	ram:74a7 21 8e 85       ld hl,0858eh         	;! . .
	ram:74aa cd 83 1f       call 01f83h          	;. . .
	ram:74ad 28 0d          jr z,l74bch          	;( .
	ram:74af 38 06          jr c,l74b7h          	;8 .
	ram:74b1 f1             pop af               	;.
	ram:74b2 38 09          jr c,l74bdh          	;8 .
l74b4h:
	ram:74b4 c3 59 0a       jp 00a59h            	;. Y .
l74b7h:
	ram:74b7 f1             pop af               	;.
	ram:74b8 38 fa          jr c,l74b4h          	;8 .
	ram:74ba 18 01          jr l74bdh            	;. .
l74bch:
	ram:74bc f1             pop af               	;.
l74bdh:
	ram:74bd 21 a3 80       ld hl,080a3h         	;! . .
	ram:74c0 22 eb 85       ld (085ebh),hl       	;" . .
l74c3h:
	ram:74c3 cd 15 74       call sub_7415h       	;. . t
	ram:74c6 38 ec          jr c,l74b4h          	;8 .
	ram:74c8 cd e0 11       call 011e0h          	;. . .
	ram:74cb 21 7a 85       ld hl,0857ah         	;! z .
	ram:74ce cd 0b 21       call 0210bh          	;. . !
	ram:74d1 21 98 85       ld hl,08598h         	;! . .
	ram:74d4 cb 7e          bit 7,(hl)           	;. ~
	ram:74d6 28 0d          jr z,l74e5h          	;( .
	ram:74d8 cd 8e 1f       call 01f8eh          	;. . .
	ram:74db 28 02          jr z,l74dfh          	;( .
	ram:74dd 30 e4          jr nc,l74c3h         	;0 .
l74dfh:
	ram:74df cd 56 20       call 02056h          	;. V  
	ram:74e2 c3 9b 25       jp 0259bh            	;. . %
l74e5h:
	ram:74e5 cd 8e 1f       call 01f8eh          	;. . .
	ram:74e8 30 f5          jr nc,l74dfh         	;0 .
	ram:74ea 18 d7          jr l74c3h            	;. .
sub_74ech:
	ram:74ec cd 87 74       call sub_7487h       	;. . t
	ram:74ef 18 19          jr l750ah            	;. .
sub_74f1h:
	ram:74f1 21 00 00       ld hl,00000h         	;! . .
	ram:74f4 22 75 83       ld (08375h),hl       	;" u .
	ram:74f7 21 b6 84       ld hl,084b6h         	;! . .
	ram:74fa e7             rst 20h              	;.
	ram:74fb cd 3b 36       call 0363bh          	;. ; 6
	ram:74fe 18 2a          jr l752ah            	;. *
sub_7500h:
	ram:7500 21 13 85       ld hl,08513h         	;! . .
	ram:7503 e7             rst 20h              	;.
	ram:7504 21 00 00       ld hl,00000h         	;! . .
	ram:7507 22 75 83       ld (08375h),hl       	;" u .
l750ah:
	ram:750a cd 4d 36       call 0364dh          	;. M 6
	ram:750d 18 1b          jr l752ah            	;. .
sub_750fh:
	ram:750f af             xor a                	;.
	ram:7510 32 75 83       ld (08375h),a        	;2 u .
	ram:7513 2a 69 83       ld hl,(08369h)       	;* i .
	ram:7516 e7             rst 20h              	;.
	ram:7517 cd ab 73       call sub_73abh       	;. . s
	ram:751a eb             ex de,hl             	;.
	ram:751b fd cb 02 5e    bit 3,(iy+002h)      	;. . . ^
	ram:751f cc 11 21       call z,02111h        	;. . !
	ram:7522 cd 13 00       call 00013h          	;. . .
	ram:7525 20 0a          jr nz,l7531h         	;.
	ram:7527 cd 53 36       call 03653h          	;. S 6
l752ah:
	ram:752a 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:752d 22 eb 85       ld (085ebh),hl       	;" . .
	ram:7530 c9             ret                  	;.
l7531h:
	ram:7531 2a e9 85       ld hl,(085e9h)       	;* . .
	ram:7534 7e             ld a,(hl)            	;~
	ram:7535 32 a3 80       ld (080a3h),a        	;2 . .
	ram:7538 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:753b 2a eb 85       ld hl,(085ebh)       	;* . .
	ram:753e 22 d0 80       ld (080d0h),hl       	;" . .
	ram:7541 cd 4e 2a       call 02a4eh          	;. N *
	ram:7544 ed 5b eb 85    ld de,(085ebh)       	;. [ . .
	ram:7548 c3 11 21       jp 02111h            	;. . !
sub_754bh:
	ram:754b cd 98 21       call 02198h          	;. . !
	ram:754e cd 35 36       call 03635h          	;. 5 6
	ram:7551 18 1a          jr l756dh            	;. .
sub_7553h:
	ram:7553 cd 98 21       call 02198h          	;. . !
	ram:7556 cd 53 36       call 03653h          	;. S 6
	ram:7559 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:755c 22 e1 85       ld (085e1h),hl       	;" . .
	ram:755f 36 00          ld (hl),000h         	;6 .
	ram:7561 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:7564 22 e3 85       ld (085e3h),hl       	;" . .
sub_7567h:
	ram:7567 cd 98 21       call 02198h          	;. . !
	ram:756a cd 47 36       call 03647h          	;. G 6
l756dh:
	ram:756d 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:7570 22 e5 85       ld (085e5h),hl       	;" . .
	ram:7573 36 00          ld (hl),000h         	;6 .
	ram:7575 2a d0 80       ld hl,(080d0h)       	;* . .
	ram:7578 22 e7 85       ld (085e7h),hl       	;" . .
	ram:757b c9             ret                  	;.
sub_757ch:
	ram:757c cd 41 36       call 03641h          	;. A 6
	ram:757f 2a d9 8b       ld hl,(08bd9h)       	;* . .
	ram:7582 22 e9 85       ld (085e9h),hl       	;" . .
	ram:7585 36 00          ld (hl),000h         	;6 .
	ram:7587 c9             ret                  	;.
sub_7588h:
	ram:7588 06 09          ld b,009h            	;. .
sub_758ah:
	ram:758a 11 0a 00       ld de,0000ah         	;. . .
l758dh:
	ram:758d cb b6          res 6,(hl)           	;. .
	ram:758f 19             add hl,de            	;.
	ram:7590 10 fb          djnz l758dh          	;. .
	ram:7592 c9             ret                  	;.
sub_7593h:
	ram:7593 37             scf                  	;7
	ram:7594 18 01          jr l7597h            	;. .
sub_7596h:
	ram:7596 b7             or a                 	;.
l7597h:
	ram:7597 f5             push af              	;.
	ram:7598 21 9f 84       ld hl,0849fh         	;! . .
	ram:759b e7             rst 20h              	;.
	ram:759c 13             inc de               	;.
	ram:759d cd 9d 20       call 0209dh          	;. .  
	ram:75a0 cd 71 0d       call 00d71h          	;. q .
	ram:75a3 cd f5 1f       call 01ff5h          	;. . .
	ram:75a6 21 82 80       ld hl,08082h         	;! . .
	ram:75a9 cb 7e          bit 7,(hl)           	;. ~
	ram:75ab 21 9f 84       ld hl,0849fh         	;! . .
	ram:75ae 16 1b          ld d,01bh            	;. .
	ram:75b0 20 05          jr nz,l75b7h         	;.
	ram:75b2 21 a9 84       ld hl,084a9h         	;! . .
	ram:75b5 16 1a          ld d,01ah            	;. .
l75b7h:
	ram:75b7 d5             push de              	;.
	ram:75b8 e5             push hl              	;.
	ram:75b9 e7             rst 20h              	;.
	ram:75ba 2a 69 83       ld hl,(08369h)       	;* i .
	ram:75bd cd 0b 21       call 0210bh          	;. . !
	ram:75c0 cd 75 20       call 02075h          	;. u  
	ram:75c3 cd 8e 1f       call 01f8eh          	;. . .
	ram:75c6 d1             pop de               	;.
	ram:75c7 c1             pop bc               	;.
	ram:75c8 38 26          jr c,l75f0h          	;8 &
	ram:75ca 21 a3 80       ld hl,080a3h         	;! . .
	ram:75cd cb 7e          bit 7,(hl)           	;. ~
	ram:75cf 21 a9 84       ld hl,084a9h         	;! . .
	ram:75d2 16 1a          ld d,01ah            	;. .
	ram:75d4 20 05          jr nz,l75dbh         	;.
	ram:75d6 21 9f 84       ld hl,0849fh         	;! . .
	ram:75d9 16 1b          ld d,01bh            	;. .
l75dbh:
	ram:75db d5             push de              	;.
	ram:75dc e5             push hl              	;.
	ram:75dd cd 0b 21       call 0210bh          	;. . !
	ram:75e0 2a 6b 83       ld hl,(0836bh)       	;* k .
	ram:75e3 e7             rst 20h              	;.
	ram:75e4 cd 8d 20       call 0208dh          	;. .  
	ram:75e7 cd 8e 1f       call 01f8eh          	;. . .
	ram:75ea d1             pop de               	;.
	ram:75eb c1             pop bc               	;.
	ram:75ec 38 02          jr c,l75f0h          	;8 .
	ram:75ee f1             pop af               	;.
	ram:75ef c9             ret                  	;.
l75f0h:
	ram:75f0 f1             pop af               	;.
	ram:75f1 d2 5a 64       jp nc,sub_645ah      	;. Z d
	ram:75f4 b7             or a                 	;.
	ram:75f5 ca 5a 64       jp z,sub_645ah       	;. Z d
	ram:75f8 c5             push bc              	;.
	ram:75f9 21 ae 80       ld hl,080aeh         	;! . .
	ram:75fc cb b6          res 6,(hl)           	;. .
	ram:75fe cd 9d 20       call 0209dh          	;. .  
	ram:7601 cd 29 20       call 02029h          	;. )  
	ram:7604 cd 56 20       call 02056h          	;. V  
	ram:7607 f1             pop af               	;.
	ram:7608 f5             push af              	;.
	ram:7609 fe 1b          cp 01bh              	;. .
	ram:760b cc 9b 0f       call z,00f9bh        	;. . .
	ram:760e f7             rst 30h              	;.
	ram:760f f1             pop af               	;.
	ram:7610 cd 23 36       call 03623h          	;. # 6
	ram:7613 18 81          jr sub_7596h         	;. .
sub_7615h:
	ram:7615 11 38 84       ld de,08438h         	;. 8 .
	ram:7618 2a 6d 83       ld hl,(0836dh)       	;* m .
	ram:761b cd 24 78       call sub_7824h       	;. $ x
	ram:761e 32 ae 80       ld (080aeh),a        	;2 . .
	ram:7621 11 42 84       ld de,08442h         	;. B .
	ram:7624 2a 73 83       ld hl,(08373h)       	;* s .
	ram:7627 cd 24 78       call sub_7824h       	;. $ x
	ram:762a 32 af 80       ld (080afh),a        	;2 . .
	ram:762d fd cb 04 6e    bit 5,(iy+004h)      	;. . . n
	ram:7631 c2 d0 76       jp nz,l76d0h         	;. . v
	ram:7634 cd 89 21       call 02189h          	;. . !
	ram:7637 11 a3 80       ld de,080a3h         	;. . .
	ram:763a 6b             ld l,e               	;k
	ram:763b 62             ld h,d               	;b
	ram:763c cd 75 42       call sub_4275h       	;. u B
	ram:763f 6f             ld l,a               	;o
	ram:7640 e5             push hl              	;.
	ram:7641 3e ff          ld a,0ffh            	;> .
	ram:7643 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7647 28 1d          jr z,l7666h          	;( .
	ram:7649 3a 77 83       ld a,(08377h)        	;: w .
	ram:764c fe 7f          cp 07fh              	;. .
	ram:764e 30 16          jr nc,l7666h         	;0 .
	ram:7650 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:7654 20 08          jr nz,l765eh         	;.
	ram:7656 d6 08          sub 008h             	;. .
	ram:7658 30 20          jr nc,l767ah         	;0  
	ram:765a cb dd          set 3,l              	;. .
	ram:765c 18 08          jr l7666h            	;. .
l765eh:
	ram:765e c6 08          add a,008h           	;. .
	ram:7660 fe 7f          cp 07fh              	;. .
	ram:7662 38 16          jr c,l767ah          	;8 .
	ram:7664 cb d5          set 2,l              	;. .
l7666h:
	ram:7666 32 77 83       ld (08377h),a        	;2 w .
	ram:7669 af             xor a                	;.
	ram:766a cb 5d          bit 3,l              	;. ]
	ram:766c 20 26          jr nz,l7694h         	;&
	ram:766e 3e 7e          ld a,07eh            	;> ~
	ram:7670 cb 55          bit 2,l              	;. U
	ram:7672 20 20          jr nz,l7694h         	;
	ram:7674 11 a3 80       ld de,080a3h         	;. . .
	ram:7677 cd 4d 43       call sub_434dh       	;. M C
l767ah:
	ram:767a 32 68 83       ld (08368h),a        	;2 h .
	ram:767d 32 77 83       ld (08377h),a        	;2 w .
	ram:7680 cd 64 77       call sub_7764h       	;. d w
	ram:7683 dc a6 6a       call c,06aa6h        	;. . j
	ram:7686 fe 7e          cp 07eh              	;. ~
	ram:7688 20 09          jr nz,l7693h         	;.
	ram:768a 3d             dec a                	;=
	ram:768b 32 68 83       ld (08368h),a        	;2 h .
	ram:768e cd 86 77       call sub_7786h       	;. . w
	ram:7691 18 04          jr l7697h            	;. .
l7693h:
	ram:7693 3c             inc a                	;<
l7694h:
	ram:7694 32 68 83       ld (08368h),a        	;2 h .
l7697h:
	ram:7697 e1             pop hl               	;.
	ram:7698 3e 01          ld a,001h            	;> .
	ram:769a cb 4d          bit 1,l              	;. M
	ram:769c 20 26          jr nz,l76c4h         	;&
	ram:769e 3e 3f          ld a,03fh            	;> ?
	ram:76a0 cb 45          bit 0,l              	;. E
	ram:76a2 20 20          jr nz,l76c4h         	;
	ram:76a4 cd 89 21       call 02189h          	;. . !
	ram:76a7 11 a3 80       ld de,080a3h         	;. . .
	ram:76aa cd 40 43       call sub_4340h       	;. @ C
	ram:76ad 32 67 83       ld (08367h),a        	;2 g .
	ram:76b0 fe 3f          cp 03fh              	;. ?
	ram:76b2 20 03          jr nz,l76b7h         	;.
	ram:76b4 3d             dec a                	;=
	ram:76b5 18 01          jr l76b8h            	;. .
l76b7h:
	ram:76b7 3c             inc a                	;<
l76b8h:
	ram:76b8 ed 5b 67 83    ld de,(08367h)       	;. [ g .
	ram:76bc 01 7e 00       ld bc,0007eh         	;. ~ .
	ram:76bf 51             ld d,c               	;Q
	ram:76c0 4b             ld c,e               	;K
	ram:76c1 cd af 6a       call sub_6aafh       	;. . j
l76c4h:
	ram:76c4 32 67 83       ld (08367h),a        	;2 g .
	ram:76c7 3a 68 83       ld a,(08368h)        	;: h .
	ram:76ca cd 6a 77       call sub_776ah       	;. j w
	ram:76cd dc 86 77       call c,sub_7786h     	;. . w
l76d0h:
	ram:76d0 3a ae 80       ld a,(080aeh)        	;: . .
	ram:76d3 b7             or a                 	;.
	ram:76d4 f5             push af              	;.
	ram:76d5 20 1a          jr nz,l76f1h         	;.
	ram:76d7 01 7e 00       ld bc,0007eh         	;. ~ .
	ram:76da fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:76de 28 0b          jr z,l76ebh          	;( .
	ram:76e0 06 75          ld b,075h            	;. u
	ram:76e2 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:76e6 28 03          jr z,l76ebh          	;( .
	ram:76e8 01 09 00       ld bc,00009h         	;. . .
l76ebh:
	ram:76eb f1             pop af               	;.
	ram:76ec 79             ld a,c               	;y
	ram:76ed f5             push af              	;.
	ram:76ee 78             ld a,b               	;x
	ram:76ef 18 3a          jr l772bh            	;. :
l76f1h:
	ram:76f1 ed 4b 69 83    ld bc,(08369h)       	;. K i .
	ram:76f5 ed 5b 6b 83    ld de,(0836bh)       	;. [ k .
	ram:76f9 2a 6d 83       ld hl,(0836dh)       	;* m .
	ram:76fc fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7700 28 0e          jr z,l7710h          	;( .
	ram:7702 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:7706 20 05          jr nz,l770dh         	;.
	ram:7708 01 b9 80       ld bc,080b9h         	;. . .
	ram:770b 18 03          jr l7710h            	;. .
l770dh:
	ram:770d 11 b9 80       ld de,080b9h         	;. . .
l7710h:
	ram:7710 ed 53 b1 80    ld (080b1h),de       	;. S . .
	ram:7714 cd c0 77       call sub_77c0h       	;. . w
	ram:7717 38 44          jr c,l775dh          	;8 D
l7719h:
	ram:7719 ed 5b b1 80    ld de,(080b1h)       	;. [ . .
	ram:771d 2a 6d 83       ld hl,(0836dh)       	;* m .
	ram:7720 cd fb 77       call sub_77fbh       	;. . w
	ram:7723 38 3a          jr c,l775fh          	;8 :
	ram:7725 11 82 80       ld de,08082h         	;. . .
	ram:7728 cd 4d 43       call sub_434dh       	;. M C
l772bh:
	ram:772b cd 75 00       call 00075h          	;. u .
	ram:772e 20 2f          jr nz,l775fh         	;/
	ram:7730 32 68 83       ld (08368h),a        	;2 h .
	ram:7733 ed 4b 67 83    ld bc,(08367h)       	;. K g .
	ram:7737 fd cb 04 6e    bit 5,(iy+004h)      	;. . . n
	ram:773b cc 23 6b       call z,sub_6b23h     	;. # k
	ram:773e 2a 75 83       ld hl,(08375h)       	;* u .
	ram:7741 fd cb 04 56    bit 2,(iy+004h)      	;. . . V
	ram:7745 28 05          jr z,l774ch          	;( .
	ram:7747 e5             push hl              	;.
	ram:7748 cd 86 77       call sub_7786h       	;. . w
	ram:774b e1             pop hl               	;.
l774ch:
	ram:774c 23             inc hl               	;#
	ram:774d 22 75 83       ld (08375h),hl       	;" u .
	ram:7750 f1             pop af               	;.
	ram:7751 f5             push af              	;.
	ram:7752 20 c5          jr nz,l7719h         	;.
	ram:7754 ed 4b 67 83    ld bc,(08367h)       	;. K g .
	ram:7758 04             inc b                	;.
	ram:7759 b8             cp b                 	;.
	ram:775a 78             ld a,b               	;x
	ram:775b 30 ce          jr nc,l772bh         	;0 .
l775dh:
	ram:775d f1             pop af               	;.
	ram:775e c9             ret                  	;.
l775fh:
	ram:775f f1             pop af               	;.
	ram:7760 c2 0c 2e       jp nz,02e0ch         	;. . .
	ram:7763 c9             ret                  	;.
sub_7764h:
	ram:7764 fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:7768 20 0f          jr nz,l7779h         	;.
sub_776ah:
	ram:776a fd cb 03 6e    bit 5,(iy+003h)      	;. . . n
	ram:776e 20 02          jr nz,l7772h         	;.
l7770h:
	ram:7770 37             scf                  	;7
	ram:7771 c9             ret                  	;.
l7772h:
	ram:7772 b7             or a                 	;.
	ram:7773 28 fb          jr z,l7770h          	;( .
	ram:7775 fe 7e          cp 07eh              	;. ~
	ram:7777 28 f7          jr z,l7770h          	;( .
l7779h:
	ram:7779 fd cb 03 66    bit 4,(iy+003h)      	;. . . f
	ram:777d 28 03          jr z,l7782h          	;( .
	ram:777f fe 0a          cp 00ah              	;. .
	ram:7781 c9             ret                  	;.
l7782h:
	ram:7782 fe 75          cp 075h              	;. u
	ram:7784 3f             ccf                  	;?
	ram:7785 c9             ret                  	;.
sub_7786h:
	ram:7786 3a af 80       ld a,(080afh)        	;: . .
	ram:7789 b7             or a                 	;.
	ram:778a ca a6 6a       jp z,06aa6h          	;. . j
	ram:778d ed 4b 6f 83    ld bc,(0836fh)       	;. K o .
	ram:7791 ed 5b 71 83    ld de,(08371h)       	;. [ q .
	ram:7795 2a 73 83       ld hl,(08373h)       	;* s .
	ram:7798 cd c0 77       call sub_77c0h       	;. . w
	ram:779b d8             ret c                	;.
l779ch:
	ram:779c ed 5b 71 83    ld de,(08371h)       	;. [ q .
	ram:77a0 2a 73 83       ld hl,(08373h)       	;* s .
	ram:77a3 cd fb 77       call sub_77fbh       	;. . w
	ram:77a6 da 0c 2e       jp c,02e0ch          	;. . .
	ram:77a9 2a 75 83       ld hl,(08375h)       	;* u .
	ram:77ac 23             inc hl               	;#
	ram:77ad 22 75 83       ld (08375h),hl       	;" u .
	ram:77b0 11 82 80       ld de,08082h         	;. . .
	ram:77b3 cd 40 43       call sub_4340h       	;. @ C
	ram:77b6 ed 4b 67 83    ld bc,(08367h)       	;. K g .
	ram:77ba 4f             ld c,a               	;O
	ram:77bb cd 23 6b       call sub_6b23h       	;. # k
	ram:77be 18 dc          jr l779ch            	;. .
sub_77c0h:
	ram:77c0 d5             push de              	;.
	ram:77c1 c5             push bc              	;.
	ram:77c2 cd 0b 21       call 0210bh          	;. . !
	ram:77c5 e1             pop hl               	;.
	ram:77c6 e7             rst 20h              	;.
	ram:77c7 cd d6 23       call 023d6h          	;. . #
	ram:77ca 28 2c          jr z,l77f8h          	;( ,
	ram:77cc cd 6e 25       call 0256eh          	;. n %
	ram:77cf cd fe 1f       call 01ffeh          	;. . .
	ram:77d2 cd 23 10       call 01023h          	;. # .
	ram:77d5 cd e0 11       call 011e0h          	;. . .
	ram:77d8 cd 1b 78       call sub_781bh       	;. . x
	ram:77db cd 07 20       call 02007h          	;. .  
	ram:77de ef             rst 28h              	;.
	ram:77df cd f5 1f       call 01ff5h          	;. . .
	ram:77e2 cd e0 11       call 011e0h          	;. . .
	ram:77e5 cf             rst 8                	;.
	ram:77e6 e1             pop hl               	;.
	ram:77e7 e7             rst 20h              	;.
	ram:77e8 cd 8e 1f       call 01f8eh          	;. . .
	ram:77eb d8             ret c                	;.
	ram:77ec cd 56 20       call 02056h          	;. V  
	ram:77ef df             rst 18h              	;.
	ram:77f0 21 00 00       ld hl,00000h         	;! . .
	ram:77f3 22 75 83       ld (08375h),hl       	;" u .
	ram:77f6 af             xor a                	;.
	ram:77f7 c9             ret                  	;.
l77f8h:
	ram:77f8 f1             pop af               	;.
	ram:77f9 37             scf                  	;7
	ram:77fa c9             ret                  	;.
sub_77fbh:
	ram:77fb d5             push de              	;.
	ram:77fc e7             rst 20h              	;.
	ram:77fd cd 73 25       call 02573h          	;. s %
l7800h:
	ram:7800 2a 75 83       ld hl,(08375h)       	;* u .
l7803h:
	ram:7803 cd 87 66       call sub_6687h       	;. . f
	ram:7806 ef             rst 28h              	;.
	ram:7807 cd 1f 2f       call 02f1fh          	;. . /
	ram:780a f7             rst 30h              	;.
	ram:780b cd e0 11       call 011e0h          	;. . .
	ram:780e cd f5 1f       call 01ff5h          	;. . .
	ram:7811 cf             rst 8                	;.
	ram:7812 e1             pop hl               	;.
	ram:7813 e7             rst 20h              	;.
	ram:7814 cd 8e 1f       call 01f8eh          	;. . .
	ram:7817 d8             ret c                	;.
	ram:7818 c3 56 20       jp 02056h            	;. V  
sub_781bh:
	ram:781b cd 9b 0f       call 00f9bh          	;. . .
	ram:781e cd 47 0d       call 00d47h          	;. G .
	ram:7821 c3 9b 0f       jp 00f9bh            	;. . .
sub_7824h:
	ram:7824 d5             push de              	;.
	ram:7825 e7             rst 20h              	;.
	ram:7826 cd 73 25       call 02573h          	;. s %
	ram:7829 cd d1 23       call 023d1h          	;. . #
	ram:782c e1             pop hl               	;.
	ram:782d 28 0d          jr z,l783ch          	;( .
	ram:782f cd 0b 21       call 0210bh          	;. . !
	ram:7832 cd 6e 25       call 0256eh          	;. n %
	ram:7835 cd 8e 1f       call 01f8eh          	;. . .
	ram:7838 30 02          jr nc,l783ch         	;0 .
	ram:783a af             xor a                	;.
	ram:783b c9             ret                  	;.
l783ch:
	ram:783c 3e 01          ld a,001h            	;> .
	ram:783e c9             ret                  	;.
	ram:783f 21 6d 78       ld hl,l786dh         	;! m x
	ram:7842 18 08          jr l784ch            	;. .
	ram:7844 21 7a 78       ld hl,l787ah         	;! z x
	ram:7847 18 03          jr l784ch            	;. .
	ram:7849 21 87 78       ld hl,l7887h         	;! . x
l784ch:
	ram:784c cd 5b 06       call 0065bh          	;. [ .
	ram:784f 3e 6d          ld a,06dh            	;> m
	ram:7851 cd 85 3d       call 03d85h          	;. . =
	ram:7854 3e 00          ld a,000h            	;> .
	ram:7856 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:7859 cd 8b 3d       call 03d8bh          	;. . =
	ram:785c 21 03 04       ld hl,00403h         	;! . .
	ram:785f 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7862 21 b3 30       ld hl,030b3h         	;! . 0
	ram:7865 cd 45 3e       call 03e45h          	;. E >
	ram:7868 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:786c c9             ret                  	;.
l786dh:
	ram:786d 99             sbc a,c              	;.
	ram:786e 78             ld a,b               	;x
	ram:786f d9             exx                  	;.
	ram:7870 34             inc (hl)             	;4
	ram:7871 94             sub h                	;.
	ram:7872 78             ld a,b               	;x
	ram:7873 98             sbc a,b              	;.
	ram:7874 78             ld a,b               	;x
	ram:7875 17             rla                  	;.
	ram:7876 79             ld a,c               	;y
	ram:7877 98             sbc a,b              	;.
	ram:7878 78             ld a,b               	;x
	ram:7879 0a             ld a,(bc)            	;.
l787ah:
	ram:787a cb 78          bit 7,b              	;. x
	ram:787c d9             exx                  	;.
	ram:787d 34             inc (hl)             	;4
	ram:787e 94             sub h                	;.
	ram:787f 78             ld a,b               	;x
	ram:7880 98             sbc a,b              	;.
	ram:7881 78             ld a,b               	;x
	ram:7882 17             rla                  	;.
	ram:7883 79             ld a,c               	;y
	ram:7884 98             sbc a,b              	;.
	ram:7885 78             ld a,b               	;x
	ram:7886 0a             ld a,(bc)            	;.
l7887h:
	ram:7887 05             dec b                	;.
	ram:7888 79             ld a,c               	;y
	ram:7889 d9             exx                  	;.
	ram:788a 34             inc (hl)             	;4
	ram:788b 94             sub h                	;.
	ram:788c 78             ld a,b               	;x
	ram:788d 98             sbc a,b              	;.
	ram:788e 78             ld a,b               	;x
	ram:788f 17             rla                  	;.
	ram:7890 79             ld a,c               	;y
	ram:7891 98             sbc a,b              	;.
	ram:7892 78             ld a,b               	;x
	ram:7893 0a             ld a,(bc)            	;.
	ram:7894 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:7898 c9             ret                  	;.
	ram:7899 fe c0          cp 0c0h              	;. .
	ram:789b 20 77          jr nz,l7914h         	;w
	ram:789d cd 78 0c       call 00c78h          	;. x .
	ram:78a0 cd 5d 3e       call 03e5dh          	;. ] >
	ram:78a3 cd 1b 00       call 0001bh          	;. . .
	ram:78a6 e1             pop hl               	;.
	ram:78a7 e1             pop hl               	;.
	ram:78a8 e1             pop hl               	;.
	ram:78a9 cd b1 78       call sub_78b1h       	;. . x
	ram:78ac 21 d2 31       ld hl,031d2h         	;! . 1
	ram:78af 18 41          jr l78f2h            	;. A
sub_78b1h:
	ram:78b1 cd 39 3e       call 03e39h          	;. 9 >
	ram:78b4 cd 61 3d       call 03d61h          	;. a =
	ram:78b7 21 cb 07       ld hl,007cbh         	;! . .
	ram:78ba cd 96 04       call 00496h          	;. . .
	ram:78bd cd 43 3d       call 03d43h          	;. C =
	ram:78c0 fd cb 0c ee    set 5,(iy+00ch)      	;. . . .
	ram:78c4 21 03 05       ld hl,00503h         	;! . .
	ram:78c7 22 0c 80       ld (0800ch),hl       	;" . .
	ram:78ca c9             ret                  	;.
	ram:78cb fe c0          cp 0c0h              	;. .
	ram:78cd 20 45          jr nz,l7914h         	;E
	ram:78cf cd 73 60       call sub_6073h       	;. s `
	ram:78d2 cd 51 3e       call 03e51h          	;. Q >
	ram:78d5 97             sub a                	;.
	ram:78d6 fd 77 0a       ld (iy+00ah),a       	;. w .
	ram:78d9 3e ff          ld a,0ffh            	;> .
	ram:78db 32 3a 8b       ld (08b3ah),a        	;2 : .
	ram:78de fd cb 08 86    res 0,(iy+008h)      	;. . . .
	ram:78e2 fd cb 00 96    res 2,(iy+000h)      	;. . . .
	ram:78e6 cd 63 3e       call 03e63h          	;. c >
	ram:78e9 e1             pop hl               	;.
	ram:78ea e1             pop hl               	;.
	ram:78eb e1             pop hl               	;.
	ram:78ec cd b1 78       call sub_78b1h       	;. . x
	ram:78ef 21 ee 30       ld hl,030eeh         	;! . 0
l78f2h:
	ram:78f2 cd 45 3e       call 03e45h          	;. E >
l78f5h:
	ram:78f5 cd 7b 3e       call 03e7bh          	;. { >
	ram:78f8 cd 4b 3e       call 03e4bh          	;. K >
	ram:78fb fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:78ff cd 81 3e       call 03e81h          	;. . >
l7902h:
	ram:7902 c3 5a 0c       jp 00c5ah            	;. Z .
	ram:7905 fe c0          cp 0c0h              	;. .
	ram:7907 20 0b          jr nz,l7914h         	;.
	ram:7909 06 14          ld b,014h            	;. .
	ram:790b 21 46 83       ld hl,08346h         	;! F .
	ram:790e cd b8 21       call 021b8h          	;. . !
	ram:7911 c3 d4 0b       jp 00bd4h            	;. . .
l7914h:
	ram:7914 fe 9c          cp 09ch              	;. .
	ram:7916 c0             ret nz               	;.
	ram:7917 c3 62 04       jp 00462h            	;. b .
	ram:791a 04             inc b                	;.
	ram:791b 02             ld (bc),a            	;.
	ram:791c 01 03 00       ld bc,00003h         	;. . .
	ram:791f 00             nop                  	;.
	ram:7920 00             nop                  	;.
	ram:7921 00             nop                  	;.
	ram:7922 06 0c          ld b,00ch            	;. .
	ram:7924 0d             dec c                	;.
	ram:7925 0e 0f          ld c,00fh            	;. .
	ram:7927 10 08          djnz l7931h          	;. .
	ram:7929 00             nop                  	;.
	ram:792a 1a             ld a,(de)            	;.
	ram:792b 1f             rra                  	;.
	ram:792c 22 25 12       ld (01225h),hl       	;" % .
	ram:792f 64             ld h,h               	;d
	ram:7930 73             ld (hl),e            	;s
l7931h:
	ram:7931 00             nop                  	;.
	ram:7932 1b             dec de               	;.
	ram:7933 1e 21          ld e,021h            	;. !
	ram:7935 24             inc h                	;$
	ram:7936 11 62 83       ld de,08362h         	;. b .
	ram:7939 09             add hl,bc            	;.
	ram:793a 1c             inc e                	;.
	ram:793b 1d             dec e                	;.
	ram:793c 20 23          jr nz,l7961h         	;#
	ram:793e 26 60          ld h,060h            	;& `
	ram:7940 80             add a,b              	;.
	ram:7941 5c             ld e,h               	;\
	ram:7942 00             nop                  	;.
	ram:7943 16 18          ld d,018h            	;. .
	ram:7945 66             ld h,(hl)            	;f
	ram:7946 68             ld l,b               	;h
	ram:7947 6a             ld l,d               	;j
	ram:7948 81             add a,c              	;.
	ram:7949 00             nop                  	;.
	ram:794a c6 c5          add a,0c5h           	;. .
	ram:794c c4 c3 c2       call nz,0c2c3h       	;. . .
	ram:794f 00             nop                  	;.
	ram:7950 07             rlca                 	;.
	ram:7951 0b             dec bc               	;.
	ram:7952 04             inc b                	;.
	ram:7953 87             add a,a              	;.
	ram:7954 88             adc a,b              	;.
	ram:7955 03             inc bc               	;.
	ram:7956 00             nop                  	;.
	ram:7957 00             nop                  	;.
	ram:7958 00             nop                  	;.
	ram:7959 00             nop                  	;.
	ram:795a 77             ld (hl),a            	;w
	ram:795b 79             ld a,c               	;y
	ram:795c 7a             ld a,d               	;z
	ram:795d 6c             ld l,h               	;l
	ram:795e 84             add a,h              	;.
	ram:795f 5e             ld e,(hl)            	;^
	ram:7960 86             add a,(hl)           	;.
l7961h:
	ram:7961 00             nop                  	;.
	ram:7962 5d             ld e,l               	;]
	ram:7963 74             ld (hl),h            	;t
	ram:7964 6e             ld l,(hl)            	;n
	ram:7965 6d             ld l,l               	;m
	ram:7966 14             inc d                	;.
	ram:7967 65             ld h,l               	;e
	ram:7968 75             ld (hl),l            	;u
	ram:7969 00             nop                  	;.
	ram:796a 05             dec b                	;.
	ram:796b 6f             ld l,a               	;o
	ram:796c 70             ld (hl),b            	;p
	ram:796d 7b             ld a,e               	;{
	ram:796e 13             inc de               	;.
	ram:796f 63             ld h,e               	;c
	ram:7970 7e             ld a,(hl)            	;~
	ram:7971 0a             ld a,(bc)            	;.
	ram:7972 71             ld (hl),c            	;q
	ram:7973 72             ld (hl),d            	;r
	ram:7974 7c             ld a,h               	;|
	ram:7975 7d             ld a,l               	;}
	ram:7976 5f             ld e,a               	;_
	ram:7977 61             ld h,c               	;a
	ram:7978 7f             ld a,a               	;.
	ram:7979 78             ld a,b               	;x
	ram:797a 00             nop                  	;.
	ram:797b 17             rla                  	;.
	ram:797c 19             add hl,de            	;.
	ram:797d 67             ld h,a               	;g
	ram:797e 69             ld l,c               	;i
	ram:797f 6b             ld l,e               	;k
	ram:7980 85             add a,l              	;.
	ram:7981 00             nop                  	;.
	ram:7982 cb ca          set 1,d              	;. .
	ram:7984 c9             ret                  	;.
	ram:7985 c8             ret z                	;.
	ram:7986 c7             rst 0                	;.
	ram:7987 00             nop                  	;.
	ram:7988 76             halt                 	;v
	ram:7989 82             add a,d              	;.
	ram:798a 04             inc b                	;.
	ram:798b 02             ld (bc),a            	;.
	ram:798c 01 03 00       ld bc,00003h         	;. . .
	ram:798f 00             nop                  	;.
	ram:7990 00             nop                  	;.
	ram:7991 00             nop                  	;.
	ram:7992 06 3f          ld b,03fh            	;. ?
	ram:7994 3b             dec sp               	;;
	ram:7995 36 31          ld (hl),031h         	;6 1
	ram:7997 2c             inc l                	;,
	ram:7998 08             ex af,af'            	;.
	ram:7999 00             nop                  	;.
	ram:799a 27             daa                  	;'
	ram:799b 3e 3a          ld a,03ah            	;> :
	ram:799d 35             dec (hl)             	;5
	ram:799e 30 2b          jr nc,45             	;0 +
	ram:79a0 73             ld (hl),e            	;s
	ram:79a1 00             nop                  	;.
	ram:79a2 41             ld b,c               	;A
	ram:79a3 3d             dec a                	;=
	ram:79a4 39             add hl,sp            	;9
	ram:79a5 34             inc (hl)             	;4
	ram:79a6 2f             cpl                  	;/
	ram:79a7 2a 83 09       ld hl,(00983h)       	;* . .
	ram:79aa 40             ld b,b               	;@
	ram:79ab 3c             inc a                	;<
	ram:79ac 38 33          jr c,l79e1h          	;8 3
	ram:79ae 2e 29          ld l,029h            	;. )
	ram:79b0 80             add a,b              	;.
	ram:79b1 5c             ld e,h               	;\
	ram:79b2 00             nop                  	;.
	ram:79b3 15             dec d                	;.
	ram:79b4 37             scf                  	;7
	ram:79b5 32 2d 28       ld (0282dh),a        	;2 - (
	ram:79b8 81             add a,c              	;.
	ram:79b9 00             nop                  	;.
	ram:79ba c6 c5          add a,0c5h           	;. .
	ram:79bc c4 c3 c2       call nz,0c2c3h       	;. . .
	ram:79bf 00             nop                  	;.
	ram:79c0 07             rlca                 	;.
	ram:79c1 0b             dec bc               	;.
	ram:79c2 04             inc b                	;.
	ram:79c3 02             ld (bc),a            	;.
	ram:79c4 01 03 00       ld bc,00003h         	;. . .
	ram:79c7 00             nop                  	;.
	ram:79c8 00             nop                  	;.
	ram:79c9 00             nop                  	;.
	ram:79ca 06 59          ld b,059h            	;. Y
	ram:79cc 55             ld d,l               	;U
	ram:79cd 50             ld d,b               	;P
	ram:79ce 4b             ld c,e               	;K
	ram:79cf 46             ld b,(hl)            	;F
	ram:79d0 08             ex af,af'            	;.
	ram:79d1 00             nop                  	;.
	ram:79d2 27             daa                  	;'
	ram:79d3 58             ld e,b               	;X
	ram:79d4 54             ld d,h               	;T
	ram:79d5 4f             ld c,a               	;O
	ram:79d6 4a             ld c,d               	;J
	ram:79d7 45             ld b,l               	;E
	ram:79d8 73             ld (hl),e            	;s
	ram:79d9 00             nop                  	;.
	ram:79da 5b             ld e,e               	;[
	ram:79db 57             ld d,a               	;W
	ram:79dc 53             ld d,e               	;S
	ram:79dd 4e             ld c,(hl)            	;N
	ram:79de 49             ld c,c               	;I
	ram:79df 44             ld b,h               	;D
	ram:79e0 83             add a,e              	;.
l79e1h:
	ram:79e1 09             add hl,bc            	;.
	ram:79e2 5a             ld e,d               	;Z
	ram:79e3 56             ld d,(hl)            	;V
	ram:79e4 52             ld d,d               	;R
	ram:79e5 4d             ld c,l               	;M
	ram:79e6 48             ld c,b               	;H
	ram:79e7 43             ld b,e               	;C
	ram:79e8 80             add a,b              	;.
	ram:79e9 5c             ld e,h               	;\
	ram:79ea 00             nop                  	;.
	ram:79eb 15             dec d                	;.
	ram:79ec 51             ld d,c               	;Q
	ram:79ed 4c             ld c,h               	;L
	ram:79ee 47             ld b,a               	;G
	ram:79ef 42             ld b,d               	;B
	ram:79f0 81             add a,c              	;.
	ram:79f1 00             nop                  	;.
	ram:79f2 c6 c5          add a,0c5h           	;. .
	ram:79f4 c4 c3 c2       call nz,0c2c3h       	;. . .
	ram:79f7 00             nop                  	;.
	ram:79f8 07             rlca                 	;.
	ram:79f9 0b             dec bc               	;.
	ram:79fa 21 4e 83       ld hl,0834eh         	;! N .
	ram:79fd 7e             ld a,(hl)            	;~
	ram:79fe cb bf          res 7,a              	;. .
	ram:7a00 b3             or e                 	;.
	ram:7a01 77             ld (hl),a            	;w
	ram:7a02 11 7c 82       ld de,0827ch         	;. | .
l7a05h:
	ram:7a05 cd 11 21       call 02111h          	;. . !
	ram:7a08 21 32 7a       ld hl,l7a32h         	;! 2 z
	ram:7a0b cd 5b 06       call 0065bh          	;. [ .
l7a0eh:
	ram:7a0e 3e 3e          ld a,03eh            	;> >
	ram:7a10 21 c2 32       ld hl,032c2h         	;! . 2
	ram:7a13 fd cb 08 7e    bit 7,(iy+008h)      	;. . . ~
	ram:7a17 28 05          jr z,l7a1eh          	;( .
	ram:7a19 3e 40          ld a,040h            	;> @
	ram:7a1b 21 fb 30       ld hl,030fbh         	;! . 0
l7a1eh:
	ram:7a1e f5             push af              	;.
	ram:7a1f cd 7f 3d       call 03d7fh          	;. . =
	ram:7a22 f1             pop af               	;.
	ram:7a23 cd 11 3c       call 03c11h          	;. . <
	ram:7a26 cd 8b 3d       call 03d8bh          	;. . =
	ram:7a29 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:7a2d 97             sub a                	;.
	ram:7a2e 32 d1 81       ld (081d1h),a        	;2 . .
	ram:7a31 c9             ret                  	;.
l7a32h:
	ram:7a32 3f             ccf                  	;?
	ram:7a33 7a             ld a,d               	;z
	ram:7a34 e2 7b d6       jp po,0d67bh         	;. { .
	ram:7a37 7b             ld a,e               	;{
	ram:7a38 e2 7b e2       jp po,0e27bh         	;. { .
	ram:7a3b 7b             ld a,e               	;{
	ram:7a3c e3             ex (sp),hl           	;.
	ram:7a3d 7b             ld a,e               	;{
	ram:7a3e 08             ex af,af'            	;.
	ram:7a3f fe c1          cp 0c1h              	;. .
	ram:7a41 28 cb          jr z,l7a0eh          	;( .
	ram:7a43 fe af          cp 0afh              	;. .
	ram:7a45 38 51          jr c,l7a98h          	;8 Q
	ram:7a47 fe be          cp 0beh              	;. .
	ram:7a49 30 4d          jr nc,l7a98h         	;0 M
	ram:7a4b d6 af          sub 0afh             	;. .
	ram:7a4d 87             add a,a              	;.
	ram:7a4e 5f             ld e,a               	;_
	ram:7a4f 16 00          ld d,000h            	;. .
	ram:7a51 21 00 09       ld hl,00900h         	;! . .
	ram:7a54 fd cb 08 7e    bit 7,(iy+008h)      	;. . . ~
	ram:7a58 28 02          jr z,l7a5ch          	;( .
	ram:7a5a 26 06          ld h,006h            	;& .
l7a5ch:
	ram:7a5c 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7a5f cd 94 00       call 00094h          	;. . .
	ram:7a62 21 b3 7f       ld hl,l7fb3h         	;! . .
	ram:7a65 19             add hl,de            	;.
	ram:7a66 cd 33 00       call 00033h          	;. 3 .
	ram:7a69 cd 45 3e       call 03e45h          	;. E >
	ram:7a6c 21 95 7f       ld hl,07f95h         	;! . .
	ram:7a6f 19             add hl,de            	;.
	ram:7a70 7e             ld a,(hl)            	;~
	ram:7a71 e6 1f          and 01fh             	;. .
	ram:7a73 32 d0 81       ld (081d0h),a        	;2 . .
	ram:7a76 7e             ld a,(hl)            	;~
	ram:7a77 e6 c0          and 0c0h             	;. .
	ram:7a79 17             rla                  	;.
	ram:7a7a 3e 00          ld a,000h            	;> .
	ram:7a7c 30 02          jr nc,l7a80h         	;0 .
	ram:7a7e 3e 01          ld a,001h            	;> .
l7a80h:
	ram:7a80 f5             push af              	;.
	ram:7a81 23             inc hl               	;#
	ram:7a82 7e             ld a,(hl)            	;~
	ram:7a83 32 dc 81       ld (081dch),a        	;2 . .
	ram:7a86 e1             pop hl               	;.
	ram:7a87 22 da 81       ld (081dah),hl       	;" . .
	ram:7a8a 3e 3f          ld a,03fh            	;> ?
	ram:7a8c cd 11 3c       call 03c11h          	;. . <
	ram:7a8f cd a7 7c       call sub_7ca7h       	;. . |
	ram:7a92 cd ea 7d       call sub_7deah       	;. . }
	ram:7a95 c3 e4 01       jp 001e4h            	;. . .
l7a98h:
	ram:7a98 fe 08          cp 008h              	;. .
	ram:7a9a 20 06          jr nz,l7aa2h         	;.
l7a9ch:
	ram:7a9c cd c3 3e       call 03ec3h          	;. . >
	ram:7a9f c3 c5 05       jp 005c5h            	;. . .
l7aa2h:
	ram:7aa2 47             ld b,a               	;G
	ram:7aa3 3a d1 81       ld a,(081d1h)        	;: . .
	ram:7aa6 b7             or a                 	;.
	ram:7aa7 c8             ret z                	;.
	ram:7aa8 78             ld a,b               	;x
	ram:7aa9 fe 06          cp 006h              	;. .
	ram:7aab 20 60          jr nz,l7b0dh         	;`
	ram:7aad fd cb 08 7e    bit 7,(iy+008h)      	;. . . ~
	ram:7ab1 20 11          jr nz,l7ac4h         	;.
	ram:7ab3 cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7ab6 28 e4          jr z,l7a9ch          	;( .
	ram:7ab8 21 d1 81       ld hl,081d1h         	;! . .
	ram:7abb cd 17 7c       call sub_7c17h       	;. . |
	ram:7abe fd cb 10 e6    set 4,(iy+010h)      	;. . . .
	ram:7ac2 18 d8          jr l7a9ch            	;. .
l7ac4h:
	ram:7ac4 cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7ac7 c8             ret z                	;.
	ram:7ac8 cd cc 7c       call sub_7ccch       	;. . |
	ram:7acb 11 06 7e       ld de,l7e06h         	;. . ~
	ram:7ace cd 55 7d       call sub_7d55h       	;. U }
	ram:7ad1 20 06          jr nz,l7ad9h         	;.
	ram:7ad3 3a 84 80       ld a,(08084h)        	;: . .
	ram:7ad6 fe 66          cp 066h              	;. f
	ram:7ad8 c0             ret nz               	;.
l7ad9h:
	ram:7ad9 cd 65 36       call 03665h          	;. e 6
	ram:7adc 30 17          jr nc,l7af5h         	;0 .
	ram:7ade 2a 84 80       ld hl,(08084h)       	;* . .
	ram:7ae1 7c             ld a,h               	;|
	ram:7ae2 fe 74          cp 074h              	;. t
	ram:7ae4 20 0f          jr nz,l7af5h         	;.
	ram:7ae6 7d             ld a,l               	;}
	ram:7ae7 fe 79          cp 079h              	;. y
	ram:7ae9 c8             ret z                	;.
	ram:7aea cd 0e 7c       call sub_7c0eh       	;. . |
	ram:7aed cd cc 7c       call sub_7ccch       	;. . |
	ram:7af0 3e 79          ld a,079h            	;> y
	ram:7af2 32 84 80       ld (08084h),a        	;2 . .
l7af5h:
	ram:7af5 cd 0e 7c       call sub_7c0eh       	;. . |
	ram:7af8 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:7afb e5             push hl              	;.
	ram:7afc cd b0 7c       call sub_7cb0h       	;. . |
	ram:7aff e1             pop hl               	;.
	ram:7b00 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7b03 cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7b06 20 1c          jr nz,l7b24h         	;.
	ram:7b08 cd c7 3d       call 03dc7h          	;. . =
	ram:7b0b 18 08          jr l7b15h            	;. .
l7b0dh:
	ram:7b0d fe 03          cp 003h              	;. .
	ram:7b0f 20 16          jr nz,l7b27h         	;.
	ram:7b11 cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7b14 c8             ret z                	;.
l7b15h:
	ram:7b15 cd 6b 7d       call sub_7d6bh       	;. k }
	ram:7b18 ca e7 7c       jp z,l7ce7h          	;. . |
	ram:7b1b cd fb 7d       call sub_7dfbh       	;. . }
	ram:7b1e cd 97 3d       call 03d97h          	;. . =
	ram:7b21 dc 21 7c       call c,sub_7c21h     	;. ! |
l7b24h:
	ram:7b24 c3 f1 7d       jp l7df1h            	;. . }
l7b27h:
	ram:7b27 fe 04          cp 004h              	;. .
	ram:7b29 20 15          jr nz,l7b40h         	;.
	ram:7b2b cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7b2e c8             ret z                	;.
	ram:7b2f cd e7 7c       call l7ce7h          	;. . |
	ram:7b32 ca 6b 7d       jp z,sub_7d6bh       	;. k }
	ram:7b35 cd fb 7d       call sub_7dfbh       	;. . }
	ram:7b38 cd 9d 3d       call 03d9dh          	;. . =
	ram:7b3b d4 21 7c       call nc,sub_7c21h    	;. ! |
	ram:7b3e 18 e4          jr l7b24h            	;. .
l7b40h:
	ram:7b40 fe 9f          cp 09fh              	;. .
	ram:7b42 20 32          jr nz,l7b76h         	;2
	ram:7b44 cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7b47 c8             ret z                	;.
l7b48h:
	ram:7b48 cd d5 7c       call sub_7cd5h       	;. . |
	ram:7b4b cd 6b 7d       call sub_7d6bh       	;. k }
	ram:7b4e ca de 7c       jp z,l7cdeh          	;. . |
	ram:7b51 cd fb 7d       call sub_7dfbh       	;. . }
	ram:7b54 cd a3 3d       call 03da3h          	;. . =
	ram:7b57 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:7b5a b7             or a                 	;.
	ram:7b5b 20 14          jr nz,l7b71h         	;.
	ram:7b5d 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:7b60 3d             dec a                	;=
	ram:7b61 47             ld b,a               	;G
l7b62h:
	ram:7b62 c5             push bc              	;.
	ram:7b63 cd 6b 7d       call sub_7d6bh       	;. k }
	ram:7b66 c1             pop bc               	;.
	ram:7b67 28 02          jr z,l7b6bh          	;( .
	ram:7b69 10 f7          djnz l7b62h          	;. .
l7b6bh:
	ram:7b6b cd ad 7c       call sub_7cadh       	;. . |
	ram:7b6e c3 ea 7d       jp sub_7deah         	;. . }
l7b71h:
	ram:7b71 cd f1 7d       call l7df1h          	;. . }
	ram:7b74 18 d2          jr l7b48h            	;. .
l7b76h:
	ram:7b76 fe 9e          cp 09eh              	;. .
	ram:7b78 20 26          jr nz,l7ba0h         	;&
	ram:7b7a cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7b7d c8             ret z                	;.
l7b7eh:
	ram:7b7e cd d5 7c       call sub_7cd5h       	;. . |
	ram:7b81 cd e7 7c       call l7ce7h          	;. . |
	ram:7b84 ca de 7c       jp z,l7cdeh          	;. . |
	ram:7b87 cd fb 7d       call sub_7dfbh       	;. . }
	ram:7b8a cd a9 3d       call 03da9h          	;. . =
	ram:7b8d cd af 3d       call 03dafh          	;. . =
	ram:7b90 38 09          jr c,l7b9bh          	;8 .
	ram:7b92 cd de 7c       call l7cdeh          	;. . |
	ram:7b95 cd ad 7c       call sub_7cadh       	;. . |
	ram:7b98 c3 ea 7d       jp sub_7deah         	;. . }
l7b9bh:
	ram:7b9b cd f1 7d       call l7df1h          	;. . }
	ram:7b9e 18 de          jr l7b7eh            	;. .
l7ba0h:
	ram:7ba0 cd ee 01       call 001eeh          	;. . .
	ram:7ba3 21 05 80       ld hl,08005h         	;! . .
	ram:7ba6 be             cp (hl)              	;.
	ram:7ba7 c0             ret nz               	;.
	ram:7ba8 79             ld a,c               	;y
	ram:7ba9 21 ce 00       ld hl,000ceh         	;! . .
	ram:7bac cd 77 30       call 03077h          	;. w 0
	ram:7baf c8             ret z                	;.
	ram:7bb0 79             ld a,c               	;y
	ram:7bb1 fe 41          cp 041h              	;. A
	ram:7bb3 d8             ret c                	;.
	ram:7bb4 3d             dec a                	;=
	ram:7bb5 21 d1 81       ld hl,081d1h         	;! . .
	ram:7bb8 36 08          ld (hl),008h         	;6 .
	ram:7bba 23             inc hl               	;#
	ram:7bbb 77             ld (hl),a            	;w
	ram:7bbc 23             inc hl               	;#
	ram:7bbd 06 07          ld b,007h            	;. .
l7bbfh:
	ram:7bbf 36 ff          ld (hl),0ffh         	;6 .
	ram:7bc1 23             inc hl               	;#
	ram:7bc2 10 fb          djnz l7bbfh          	;. .
	ram:7bc4 cd 8b 3d       call 03d8bh          	;. . =
	ram:7bc7 cd ad 7c       call sub_7cadh       	;. . |
	ram:7bca cd 4b 3e       call 03e4bh          	;. K >
	ram:7bcd cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7bd0 ca 15 7b       jp z,l7b15h          	;. . {
	ram:7bd3 c3 f1 7d       jp l7df1h            	;. . }
	ram:7bd6 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:7bda fd cb 12 be    res 7,(iy+012h)      	;. . . .
	ram:7bde 21 7c 82       ld hl,0827ch         	;! | .
	ram:7be1 e7             rst 20h              	;.
	ram:7be2 c9             ret                  	;.
	ram:7be3 f5             push af              	;.
	ram:7be4 21 d1 81       ld hl,081d1h         	;! . .
	ram:7be7 7e             ld a,(hl)            	;~
	ram:7be8 b7             or a                 	;.
	ram:7be9 20 02          jr nz,l7bedh         	;.
	ram:7beb f1             pop af               	;.
	ram:7bec c9             ret                  	;.
l7bedh:
	ram:7bed f1             pop af               	;.
	ram:7bee d2 8d 3b       jp nc,03b8dh         	;. . ;
	ram:7bf1 11 af 80       ld de,080afh         	;. . .
	ram:7bf4 cd 9f 20       call 0209fh          	;. .  
	ram:7bf7 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:7bfa e5             push hl              	;.
	ram:7bfb cd 9d 3d       call 03d9dh          	;. . =
	ram:7bfe cd b0 7c       call sub_7cb0h       	;. . |
	ram:7c01 e1             pop hl               	;.
	ram:7c02 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7c05 21 af 80       ld hl,080afh         	;! . .
	ram:7c08 11 d1 81       ld de,081d1h         	;. . .
	ram:7c0b c3 9f 20       jp 0209fh            	;. .  
sub_7c0eh:
	ram:7c0e d7             rst 10h              	;.
	ram:7c0f e6 20          and 020h             	;.  
	ram:7c11 c4 1b 00       call nz,0001bh       	;. . .
	ram:7c14 c3 0b 2c       jp 02c0bh            	;. . ,
sub_7c17h:
	ram:7c17 46             ld b,(hl)            	;F
	ram:7c18 23             inc hl               	;#
l7c19h:
	ram:7c19 7e             ld a,(hl)            	;~
	ram:7c1a 23             inc hl               	;#
	ram:7c1b cd d9 03       call 003d9h          	;. . .
	ram:7c1e 10 f9          djnz l7c19h          	;. .
	ram:7c20 c9             ret                  	;.
sub_7c21h:
	ram:7c21 97             sub a                	;.
	ram:7c22 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7c25 3e 20          ld a,020h            	;>  
	ram:7c27 cd c5 3f       call 03fc5h          	;. . ?
	ram:7c2a 21 d1 81       ld hl,081d1h         	;! . .
	ram:7c2d cd 5d 3b       call 03b5dh          	;. ] ;
	ram:7c30 cd c1 3d       call 03dc1h          	;. . =
	ram:7c33 fd cb 08 7e    bit 7,(iy+008h)      	;. . . ~
	ram:7c37 28 1f          jr z,l7c58h          	;( .
	ram:7c39 3e 0a          ld a,00ah            	;> .
	ram:7c3b 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7c3e cd cc 7c       call sub_7ccch       	;. . |
	ram:7c41 d7             rst 10h              	;.
	ram:7c42 47             ld b,a               	;G
	ram:7c43 2b             dec hl               	;+
	ram:7c44 2b             dec hl               	;+
	ram:7c45 2b             dec hl               	;+
	ram:7c46 7e             ld a,(hl)            	;~
	ram:7c47 c6 04          add a,004h           	;. .
	ram:7c49 4f             ld c,a               	;O
	ram:7c4a 78             ld a,b               	;x
	ram:7c4b 06 00          ld b,000h            	;. .
	ram:7c4d eb             ex de,hl             	;.
	ram:7c4e c5             push bc              	;.
	ram:7c4f cd 3f 2d       call 02d3fh          	;. ? -
	ram:7c52 eb             ex de,hl             	;.
	ram:7c53 c1             pop bc               	;.
	ram:7c54 09             add hl,bc            	;.
	ram:7c55 cd d9 3d       call 03dd9h          	;. . =
l7c58h:
	ram:7c58 cd cc 7c       call sub_7ccch       	;. . |
	ram:7c5b d7             rst 10h              	;.
	ram:7c5c d8             ret c                	;.
	ram:7c5d 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:7c60 26 10          ld h,010h            	;& .
	ram:7c62 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7c65 e5             push hl              	;.
	ram:7c66 e6 1f          and 01fh             	;. .
	ram:7c68 6f             ld l,a               	;o
	ram:7c69 26 00          ld h,000h            	;& .
	ram:7c6b 29             add hl,hl            	;)
	ram:7c6c 11 7d 7c       ld de,l7c7dh         	;. } |
	ram:7c6f 19             add hl,de            	;.
	ram:7c70 cd 33 00       call 00033h          	;. 3 .
	ram:7c73 7d             ld a,l               	;}
	ram:7c74 b4             or h                 	;.
	ram:7c75 c4 45 3e       call nz,03e45h       	;. E >
	ram:7c78 e1             pop hl               	;.
	ram:7c79 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7c7c c9             ret                  	;.
l7c7dh:
	ram:7c7d 4d             ld c,l               	;M
	ram:7c7e 32 e9 30       ld (030e9h),a        	;2 . 0
	ram:7c81 d8             ret c                	;.
	ram:7c82 32 d8 32       ld (032d8h),a        	;2 . 2
	ram:7c85 a9             xor c                	;.
	ram:7c86 31 a9 31       ld sp,031a9h         	;1 . 1
	ram:7c89 cc 31 cc       call z,0cc31h        	;. 1 .
	ram:7c8c 31 db 30       ld sp,030dbh         	;1 . 0
	ram:7c8f db 30          in a,(030h)          	;. 0
	ram:7c91 35             dec (hl)             	;5
	ram:7c92 31 00 00       ld sp,00000h         	;1 . .
	ram:7c95 8b             adc a,e              	;.
	ram:7c96 32 6b 31       ld (0316bh),a        	;2 k 1
	ram:7c99 6b             ld l,e               	;k
	ram:7c9a 31 6b 31       ld sp,0316bh         	;1 k 1
	ram:7c9d 6b             ld l,e               	;k
	ram:7c9e 31 1c 32       ld sp,0321ch         	;1 . 2
	ram:7ca1 27             daa                  	;'
	ram:7ca2 32 00 00       ld (00000h),a        	;2 . .
	ram:7ca5 00             nop                  	;.
	ram:7ca6 00             nop                  	;.
sub_7ca7h:
	ram:7ca7 21 01 40       ld hl,sub_4000h+1    	;! . @
	ram:7caa 22 d1 81       ld (081d1h),hl       	;" . .
sub_7cadh:
	ram:7cad cd 4b 3e       call 03e4bh          	;. K >
sub_7cb0h:
	ram:7cb0 cd e7 7c       call l7ce7h          	;. . |
	ram:7cb3 c8             ret z                	;.
	ram:7cb4 cd d5 7c       call sub_7cd5h       	;. . |
l7cb7h:
	ram:7cb7 cd 21 7c       call sub_7c21h       	;. ! |
	ram:7cba cd a9 3d       call 03da9h          	;. . =
	ram:7cbd cd af 3d       call 03dafh          	;. . =
	ram:7cc0 30 1c          jr nc,l7cdeh         	;0 .
	ram:7cc2 cd e7 7c       call l7ce7h          	;. . |
	ram:7cc5 20 f0          jr nz,l7cb7h         	;.
	ram:7cc7 cd c7 3d       call 03dc7h          	;. . =
	ram:7cca 18 12          jr l7cdeh            	;. .
sub_7ccch:
	ram:7ccc 21 d0 81       ld hl,081d0h         	;! . .
	ram:7ccf 11 82 80       ld de,08082h         	;. . .
	ram:7cd2 c3 9d 20       jp 0209dh            	;. .  
sub_7cd5h:
	ram:7cd5 21 d1 81       ld hl,081d1h         	;! . .
	ram:7cd8 11 a4 80       ld de,080a4h         	;. . .
	ram:7cdb c3 9f 20       jp 0209fh            	;. .  
l7cdeh:
	ram:7cde 21 a4 80       ld hl,080a4h         	;! . .
	ram:7ce1 11 d1 81       ld de,081d1h         	;. . .
	ram:7ce4 c3 9f 20       jp 0209fh            	;. .  
l7ce7h:
	ram:7ce7 cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7cea c8             ret z                	;.
	ram:7ceb cd cc 7c       call sub_7ccch       	;. . |
l7ceeh:
	ram:7cee 3a d0 81       ld a,(081d0h)        	;: . .
	ram:7cf1 32 82 80       ld (08082h),a        	;2 . .
	ram:7cf4 fe 1f          cp 01fh              	;. .
	ram:7cf6 28 11          jr z,l7d09h          	;( .
	ram:7cf8 2a da 81       ld hl,(081dah)       	;* . .
	ram:7cfb e5             push hl              	;.
	ram:7cfc f1             pop af               	;.
	ram:7cfd cd 41 3c       call 03c41h          	;. A <
	ram:7d00 38 07          jr c,l7d09h          	;8 .
	ram:7d02 7e             ld a,(hl)            	;~
	ram:7d03 fe 14          cp 014h              	;. .
	ram:7d05 20 08          jr nz,l7d0fh         	;.
	ram:7d07 18 e5          jr l7ceeh            	;. .
l7d09h:
	ram:7d09 21 01 ff       ld hl,0ff01h         	;! . .
	ram:7d0c 22 83 80       ld (08083h),hl       	;" . .
l7d0fh:
	ram:7d0f cd 52 7d       call sub_7d52h       	;. R }
	ram:7d12 20 06          jr nz,l7d1ah         	;.
	ram:7d14 21 dc 81       ld hl,081dch         	;! . .
	ram:7d17 a6             and (hl)             	;.
	ram:7d18 28 d4          jr z,l7ceeh          	;( .
l7d1ah:
	ram:7d1a 3a dc 81       ld a,(081dch)        	;: . .
	ram:7d1d 4f             ld c,a               	;O
	ram:7d1e cd de 7d       call sub_7ddeh       	;. . }
l7d21h:
	ram:7d21 21 d1 81       ld hl,081d1h         	;! . .
	ram:7d24 cd 51 30       call 03051h          	;. Q 0
	ram:7d27 30 09          jr nc,l7d32h         	;0 .
	ram:7d29 1b             dec de               	;.
	ram:7d2a 1a             ld a,(de)            	;.
	ram:7d2b 13             inc de               	;.
	ram:7d2c a1             and c                	;.
	ram:7d2d 28 03          jr z,l7d32h          	;( .
	ram:7d2f eb             ex de,hl             	;.
	ram:7d30 18 0a          jr l7d3ch            	;. .
l7d32h:
	ram:7d32 1a             ld a,(de)            	;.
	ram:7d33 3c             inc a                	;<
	ram:7d34 3c             inc a                	;<
	ram:7d35 6f             ld l,a               	;o
	ram:7d36 26 00          ld h,000h            	;& .
	ram:7d38 19             add hl,de            	;.
	ram:7d39 eb             ex de,hl             	;.
	ram:7d3a 18 e5          jr l7d21h            	;. .
l7d3ch:
	ram:7d3c 11 83 80       ld de,08083h         	;. . .
	ram:7d3f cd 51 30       call 03051h          	;. Q 0
	ram:7d42 38 03          jr c,l7d47h          	;8 .
	ram:7d44 21 83 80       ld hl,08083h         	;! . .
l7d47h:
	ram:7d47 11 d1 81       ld de,081d1h         	;. . .
	ram:7d4a cd 9f 20       call 0209fh          	;. .  
sub_7d4dh:
	ram:7d4d 3a d2 81       ld a,(081d2h)        	;: . .
	ram:7d50 3c             inc a                	;<
	ram:7d51 c9             ret                  	;.
sub_7d52h:
	ram:7d52 cd de 7d       call sub_7ddeh       	;. . }
sub_7d55h:
	ram:7d55 21 83 80       ld hl,08083h         	;! . .
	ram:7d58 cd 51 30       call 03051h          	;. Q 0
	ram:7d5b 28 0b          jr z,l7d68h          	;( .
	ram:7d5d d8             ret c                	;.
	ram:7d5e 1a             ld a,(de)            	;.
	ram:7d5f 3c             inc a                	;<
	ram:7d60 3c             inc a                	;<
	ram:7d61 6f             ld l,a               	;o
	ram:7d62 26 00          ld h,000h            	;& .
	ram:7d64 19             add hl,de            	;.
	ram:7d65 eb             ex de,hl             	;.
	ram:7d66 18 ed          jr sub_7d55h         	;. .
l7d68h:
	ram:7d68 1b             dec de               	;.
	ram:7d69 1a             ld a,(de)            	;.
	ram:7d6a c9             ret                  	;.
sub_7d6bh:
	ram:7d6b cd d8 7d       call sub_7dd8h       	;. . }
	ram:7d6e c8             ret z                	;.
	ram:7d6f cd cc 7c       call sub_7ccch       	;. . |
l7d72h:
	ram:7d72 3a d0 81       ld a,(081d0h)        	;: . .
	ram:7d75 32 82 80       ld (08082h),a        	;2 . .
	ram:7d78 fe 1f          cp 01fh              	;. .
	ram:7d7a 28 16          jr z,l7d92h          	;( .
	ram:7d7c 2a da 81       ld hl,(081dah)       	;* . .
	ram:7d7f e5             push hl              	;.
	ram:7d80 f1             pop af               	;.
	ram:7d81 cd 47 3c       call 03c47h          	;. G <
	ram:7d84 38 0c          jr c,l7d92h          	;8 .
	ram:7d86 7e             ld a,(hl)            	;~
	ram:7d87 fe 14          cp 014h              	;. .
	ram:7d89 28 e7          jr z,l7d72h          	;( .
	ram:7d8b 3a 84 80       ld a,(08084h)        	;: . .
	ram:7d8e fe 41          cp 041h              	;. A
	ram:7d90 30 03          jr nc,l7d95h         	;0 .
l7d92h:
	ram:7d92 cd 33 26       call 02633h          	;. 3 &
l7d95h:
	ram:7d95 cd 52 7d       call sub_7d52h       	;. R }
	ram:7d98 20 06          jr nz,l7da0h         	;.
	ram:7d9a 21 dc 81       ld hl,081dch         	;! . .
	ram:7d9d a6             and (hl)             	;.
	ram:7d9e 28 d2          jr z,l7d72h          	;( .
l7da0h:
	ram:7da0 3a dc 81       ld a,(081dch)        	;: . .
	ram:7da3 4f             ld c,a               	;O
	ram:7da4 cd de 7d       call sub_7ddeh       	;. . }
	ram:7da7 eb             ex de,hl             	;.
	ram:7da8 22 ae 80       ld (080aeh),hl       	;" . .
l7dabh:
	ram:7dab 11 d1 81       ld de,081d1h         	;. . .
	ram:7dae cd 51 30       call 03051h          	;. Q 0
	ram:7db1 30 11          jr nc,l7dc4h         	;0 .
	ram:7db3 2b             dec hl               	;+
	ram:7db4 7e             ld a,(hl)            	;~
	ram:7db5 23             inc hl               	;#
	ram:7db6 a1             and c                	;.
	ram:7db7 28 03          jr z,l7dbch          	;( .
	ram:7db9 22 ae 80       ld (080aeh),hl       	;" . .
l7dbch:
	ram:7dbc 5e             ld e,(hl)            	;^
	ram:7dbd 1c             inc e                	;.
	ram:7dbe 1c             inc e                	;.
	ram:7dbf 16 00          ld d,000h            	;. .
	ram:7dc1 19             add hl,de            	;.
	ram:7dc2 18 e7          jr l7dabh            	;. .
l7dc4h:
	ram:7dc4 2a ae 80       ld hl,(080aeh)       	;* . .
	ram:7dc7 11 83 80       ld de,08083h         	;. . .
	ram:7dca cd 51 30       call 03051h          	;. Q 0
	ram:7dcd 30 03          jr nc,l7dd2h         	;0 .
	ram:7dcf 21 83 80       ld hl,08083h         	;! . .
l7dd2h:
	ram:7dd2 11 d1 81       ld de,081d1h         	;. . .
	ram:7dd5 cd 9f 20       call 0209fh          	;. .  
sub_7dd8h:
	ram:7dd8 3a d2 81       ld a,(081d2h)        	;: . .
	ram:7ddb fe 40          cp 040h              	;. @
	ram:7ddd c9             ret                  	;.
sub_7ddeh:
	ram:7dde 11 06 7e       ld de,l7e06h         	;. . ~
	ram:7de1 fd cb 08 7e    bit 7,(iy+008h)      	;. . . ~
	ram:7de5 c8             ret z                	;.
	ram:7de6 11 90 7f       ld de,l7f90h         	;. . .
	ram:7de9 c9             ret                  	;.
sub_7deah:
	ram:7dea cd 4d 7d       call sub_7d4dh       	;. M }
	ram:7ded c8             ret z                	;.
	ram:7dee cd 4b 3e       call 03e4bh          	;. K >
l7df1h:
	ram:7df1 97             sub a                	;.
	ram:7df2 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7df5 3e 05          ld a,005h            	;> .
	ram:7df7 cd cd 3d       call 03dcdh          	;. . =
	ram:7dfa c9             ret                  	;.
sub_7dfbh:
	ram:7dfb 97             sub a                	;.
	ram:7dfc 32 0d 80       ld (0800dh),a        	;2 . .
	ram:7dff 3e 20          ld a,020h            	;>  
	ram:7e01 cd cd 3d       call 03dcdh          	;. . =
	ram:7e04 c9             ret                  	;.
	ram:7e05 ff             rst 38h              	;.
l7e06h:
	ram:7e06 01 40 04       ld bc,00440h         	;. @ .
	ram:7e09 03             inc bc               	;.
	ram:7e0a 41             ld b,c               	;A
	ram:7e0b 6e             ld l,(hl)            	;n
	ram:7e0c 73             ld (hl),e            	;s
	ram:7e0d 04             inc b                	;.
	ram:7e0e 02             ld (bc),a            	;.
	ram:7e0f 43             ld b,e               	;C
	ram:7e10 63             ld h,e               	;c
	ram:7e11 04             inc b                	;.
	ram:7e12 02             ld (bc),a            	;.
	ram:7e13 47             ld b,a               	;G
	ram:7e14 63             ld h,e               	;c
	ram:7e15 04             inc b                	;.
	ram:7e16 02             ld (bc),a            	;.
	ram:7e17 4d             ld c,l               	;M
	ram:7e18 65             ld h,l               	;e
	ram:7e19 04             inc b                	;.
	ram:7e1a 02             ld (bc),a            	;.
	ram:7e1b 4d             ld c,l               	;M
	ram:7e1c 6e             ld l,(hl)            	;n
	ram:7e1d 04             inc b                	;.
	ram:7e1e 02             ld (bc),a            	;.
	ram:7e1f 4d             ld c,l               	;M
	ram:7e20 70             ld (hl),b            	;p
	ram:7e21 04             inc b                	;.
	ram:7e22 02             ld (bc),a            	;.
	ram:7e23 4e             ld c,(hl)            	;N
	ram:7e24 61             ld h,c               	;a
	ram:7e25 02             ld (bc),a            	;.
	ram:7e26 05             dec b                	;.
	ram:7e27 50             ld d,b               	;P
	ram:7e28 52             ld d,d               	;R
	ram:7e29 65             ld h,l               	;e
	ram:7e2a 67             ld h,a               	;g
	ram:7e2b 43             ld b,e               	;C
	ram:7e2c 04             inc b                	;.
	ram:7e2d 02             ld (bc),a            	;.
	ram:7e2e 52             ld d,d               	;R
	ram:7e2f 63             ld h,e               	;c
	ram:7e30 02             ld (bc),a            	;.
	ram:7e31 05             dec b                	;.
	ram:7e32 52             ld d,d               	;R
	ram:7e33 65             ld h,l               	;e
	ram:7e34 67             ld h,a               	;g
	ram:7e35 45             ld b,l               	;E
	ram:7e36 71             ld (hl),c            	;q
	ram:7e37 02             ld (bc),a            	;.
	ram:7e38 02             ld (bc),a            	;.
	ram:7e39 53             ld d,e               	;S
	ram:7e3a 78             ld a,b               	;x
	ram:7e3b 02             ld (bc),a            	;.
	ram:7e3c 02             ld (bc),a            	;.
	ram:7e3d 53             ld d,e               	;S
	ram:7e3e 79             ld a,c               	;y
	ram:7e3f 02             ld (bc),a            	;.
	ram:7e40 01 61 02       ld bc,00261h         	;. a .
	ram:7e43 01 62 04       ld bc,00462h         	;. b .
	ram:7e46 01 63 02       ld bc,00263h         	;. c .
	ram:7e49 04             inc b                	;.
	ram:7e4a 63             ld h,e               	;c
	ram:7e4b 6f             ld l,a               	;o
	ram:7e4c 72             ld (hl),d            	;r
	ram:7e4d 72             ld (hl),d            	;r
	ram:7e4e 01 06 64       ld bc,06406h         	;. . d
	ram:7e51 69             ld l,c               	;i
	ram:7e52 66             ld h,(hl)            	;f
	ram:7e53 54             ld d,h               	;T
	ram:7e54 6f             ld l,a               	;o
	ram:7e55 6c             ld l,h               	;l
	ram:7e56 04             inc b                	;.
	ram:7e57 01 65 04       ld bc,00465h         	;. e .
	ram:7e5a 02             ld (bc),a            	;.
	ram:7e5b 65             ld h,l               	;e
	ram:7e5c 63             ld h,e               	;c
	ram:7e5d 04             inc b                	;.
	ram:7e5e 08             ex af,af'            	;.
	ram:7e5f 66             ld h,(hl)            	;f
	ram:7e60 6e             ld l,(hl)            	;n
	ram:7e61 49             ld c,c               	;I
	ram:7e62 6e             ld l,(hl)            	;n
	ram:7e63 74             ld (hl),h            	;t
	ram:7e64 45             ld b,l               	;E
	ram:7e65 72             ld (hl),d            	;r
	ram:7e66 72             ld (hl),d            	;r
	ram:7e67 04             inc b                	;.
	ram:7e68 01 67 04       ld bc,00467h         	;. g .
	ram:7e6b 01 68 04       ld bc,00468h         	;. h .
	ram:7e6e 01 6b 04       ld bc,0046bh         	;. k .
	ram:7e71 05             dec b                	;.
	ram:7e72 6c             ld l,h               	;l
	ram:7e73 6f             ld l,a               	;o
	ram:7e74 77             ld (hl),a            	;w
	ram:7e75 65             ld h,l               	;e
	ram:7e76 72             ld (hl),d            	;r
	ram:7e77 02             ld (bc),a            	;.
	ram:7e78 01 6e 01       ld bc,0016eh         	;. n .
	ram:7e7b 04             inc b                	;.
	ram:7e7c 74             ld (hl),h            	;t
	ram:7e7d 4d             ld c,l               	;M
	ram:7e7e 61             ld h,c               	;a
	ram:7e7f 78             ld a,b               	;x
	ram:7e80 01 04 74       ld bc,07404h         	;. . t
	ram:7e83 4d             ld c,l               	;M
	ram:7e84 69             ld l,c               	;i
	ram:7e85 6e             ld l,(hl)            	;n
	ram:7e86 01 05 74       ld bc,07405h         	;. . t
	ram:7e89 50             ld d,b               	;P
	ram:7e8a 6c             ld l,h               	;l
	ram:7e8b 6f             ld l,a               	;o
	ram:7e8c 74             ld (hl),h            	;t
	ram:7e8d 01 05 74       ld bc,07405h         	;. . t
	ram:7e90 53             ld d,e               	;S
	ram:7e91 74             ld (hl),h            	;t
	ram:7e92 65             ld h,l               	;e
	ram:7e93 70             ld (hl),b            	;p
	ram:7e94 04             inc b                	;.
	ram:7e95 03             inc bc               	;.
	ram:7e96 74             ld (hl),h            	;t
	ram:7e97 6f             ld l,a               	;o
	ram:7e98 6c             ld l,h               	;l
	ram:7e99 04             inc b                	;.
	ram:7e9a 01 75 04       ld bc,00475h         	;. u .
	ram:7e9d 05             dec b                	;.
	ram:7e9e 75             ld (hl),l            	;u
	ram:7e9f 70             ld (hl),b            	;p
	ram:7ea0 70             ld (hl),b            	;p
	ram:7ea1 65             ld h,l               	;e
	ram:7ea2 72             ld (hl),d            	;r
	ram:7ea3 04             inc b                	;.
	ram:7ea4 05             dec b                	;.
	ram:7ea5 78             ld a,b               	;x
	ram:7ea6 46             ld b,(hl)            	;F
	ram:7ea7 61             ld h,c               	;a
	ram:7ea8 63             ld h,e               	;c
	ram:7ea9 74             ld (hl),h            	;t
	ram:7eaa 01 04 78       ld bc,l7803h+1       	;. . x
	ram:7ead 4d             ld c,l               	;M
	ram:7eae 61             ld h,c               	;a
	ram:7eaf 78             ld a,b               	;x
	ram:7eb0 01 04 78       ld bc,l7803h+1       	;. . x
	ram:7eb3 4d             ld c,l               	;M
	ram:7eb4 69             ld l,c               	;i
	ram:7eb5 6e             ld l,(hl)            	;n
	ram:7eb6 01 04 78       ld bc,l7803h+1       	;. . x
	ram:7eb9 53             ld d,e               	;S
	ram:7eba 63             ld h,e               	;c
	ram:7ebb 6c             ld l,h               	;l
	ram:7ebc 02             ld (bc),a            	;.
	ram:7ebd 05             dec b                	;.
	ram:7ebe 78             ld a,b               	;x
	ram:7ebf 53             ld d,e               	;S
	ram:7ec0 74             ld (hl),h            	;t
	ram:7ec1 61             ld h,c               	;a
	ram:7ec2 74             ld (hl),h            	;t
	ram:7ec3 04             inc b                	;.
	ram:7ec4 05             dec b                	;.
	ram:7ec5 79             ld a,c               	;y
	ram:7ec6 46             ld b,(hl)            	;F
	ram:7ec7 61             ld h,c               	;a
	ram:7ec8 63             ld h,e               	;c
	ram:7ec9 74             ld (hl),h            	;t
	ram:7eca 01 04 79       ld bc,l7902h+2       	;. . y
	ram:7ecd 4d             ld c,l               	;M
	ram:7ece 61             ld h,c               	;a
	ram:7ecf 78             ld a,b               	;x
	ram:7ed0 01 04 79       ld bc,l7902h+2       	;. . y
	ram:7ed3 4d             ld c,l               	;M
	ram:7ed4 69             ld l,c               	;i
	ram:7ed5 6e             ld l,(hl)            	;n
	ram:7ed6 01 04 79       ld bc,l7902h+2       	;. . y
	ram:7ed9 53             ld d,e               	;S
	ram:7eda 63             ld h,e               	;c
	ram:7edb 6c             ld l,h               	;l
	ram:7edc 02             ld (bc),a            	;.
	ram:7edd 05             dec b                	;.
	ram:7ede 79             ld a,c               	;y
	ram:7edf 53             ld d,e               	;S
	ram:7ee0 74             ld (hl),h            	;t
	ram:7ee1 61             ld h,c               	;a
	ram:7ee2 74             ld (hl),h            	;t
	ram:7ee3 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7ee6 74             ld (hl),h            	;t
	ram:7ee7 4d             ld c,l               	;M
	ram:7ee8 61             ld h,c               	;a
	ram:7ee9 78             ld a,b               	;x
	ram:7eea 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7eed 74             ld (hl),h            	;t
	ram:7eee 4d             ld c,l               	;M
	ram:7eef 69             ld l,c               	;i
	ram:7ef0 6e             ld l,(hl)            	;n
	ram:7ef1 01 06 7a       ld bc,l7a05h+1       	;. . z
	ram:7ef4 74             ld (hl),h            	;t
	ram:7ef5 50             ld d,b               	;P
	ram:7ef6 6c             ld l,h               	;l
	ram:7ef7 6f             ld l,a               	;o
	ram:7ef8 74             ld (hl),h            	;t
	ram:7ef9 01 06 7a       ld bc,l7a05h+1       	;. . z
	ram:7efc 74             ld (hl),h            	;t
	ram:7efd 53             ld d,e               	;S
	ram:7efe 74             ld (hl),h            	;t
	ram:7eff 65             ld h,l               	;e
	ram:7f00 70             ld (hl),b            	;p
	ram:7f01 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f04 78             ld a,b               	;x
	ram:7f05 4d             ld c,l               	;M
	ram:7f06 61             ld h,c               	;a
	ram:7f07 78             ld a,b               	;x
	ram:7f08 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f0b 78             ld a,b               	;x
	ram:7f0c 4d             ld c,l               	;M
	ram:7f0d 69             ld l,c               	;i
	ram:7f0e 6e             ld l,(hl)            	;n
	ram:7f0f 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f12 78             ld a,b               	;x
	ram:7f13 53             ld d,e               	;S
	ram:7f14 63             ld h,e               	;c
	ram:7f15 6c             ld l,h               	;l
	ram:7f16 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f19 79             ld a,c               	;y
	ram:7f1a 4d             ld c,l               	;M
	ram:7f1b 61             ld h,c               	;a
	ram:7f1c 78             ld a,b               	;x
	ram:7f1d 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f20 79             ld a,c               	;y
	ram:7f21 4d             ld c,l               	;M
	ram:7f22 69             ld l,c               	;i
	ram:7f23 6e             ld l,(hl)            	;n
	ram:7f24 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f27 79             ld a,c               	;y
	ram:7f28 53             ld d,e               	;S
	ram:7f29 63             ld h,e               	;c
	ram:7f2a 6c             ld l,h               	;l
	ram:7f2b 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f2e c1             pop bc               	;.
	ram:7f2f 4d             ld c,l               	;M
	ram:7f30 61             ld h,c               	;a
	ram:7f31 78             ld a,b               	;x
	ram:7f32 01 05 7a       ld bc,l7a05h         	;. . z
	ram:7f35 c1             pop bc               	;.
	ram:7f36 4d             ld c,l               	;M
	ram:7f37 69             ld l,c               	;i
	ram:7f38 6e             ld l,(hl)            	;n
	ram:7f39 01 06 7a       ld bc,l7a05h+1       	;. . z
	ram:7f3c c1             pop bc               	;.
	ram:7f3d 53             ld d,e               	;S
	ram:7f3e 74             ld (hl),h            	;t
	ram:7f3f 65             ld h,l               	;e
	ram:7f40 70             ld (hl),b            	;p
	ram:7f41 01 02 be       ld bc,0be02h         	;. . .
	ram:7f44 78             ld a,b               	;x
	ram:7f45 01 02 be       ld bc,0be02h         	;. . .
	ram:7f48 79             ld a,c               	;y
	ram:7f49 04             inc b                	;.
	ram:7f4a 01 bf 04       ld bc,004bfh         	;. . .
	ram:7f4d 02             ld (bc),a            	;.
	ram:7f4e c0             ret nz               	;.
	ram:7f4f 30 01          jr nc,l7f52h         	;0 .
	ram:7f51 04             inc b                	;.
l7f52h:
	ram:7f52 c1             pop bc               	;.
	ram:7f53 4d             ld c,l               	;M
	ram:7f54 61             ld h,c               	;a
	ram:7f55 78             ld a,b               	;x
	ram:7f56 01 04 c1       ld bc,0c104h         	;. . .
	ram:7f59 4d             ld c,l               	;M
	ram:7f5a 69             ld l,c               	;i
	ram:7f5b 6e             ld l,(hl)            	;n
	ram:7f5c 01 05 c1       ld bc,0c105h         	;. . .
	ram:7f5f 53             ld d,e               	;S
	ram:7f60 74             ld (hl),h            	;t
	ram:7f61 65             ld h,l               	;e
	ram:7f62 70             ld (hl),b            	;p
	ram:7f63 04             inc b                	;.
	ram:7f64 02             ld (bc),a            	;.
	ram:7f65 c3 30 02       jp 00230h            	;. 0 .
	ram:7f68 02             ld (bc),a            	;.
	ram:7f69 c6 78          add a,078h           	;. x
	ram:7f6b 02             ld (bc),a            	;.
	ram:7f6c 03             inc bc               	;.
	ram:7f6d c6 78          add a,078h           	;. x
	ram:7f6f 12             ld (de),a            	;.
	ram:7f70 02             ld (bc),a            	;.
	ram:7f71 03             inc bc               	;.
	ram:7f72 c6 78          add a,078h           	;. x
	ram:7f74 79             ld a,c               	;y
	ram:7f75 02             ld (bc),a            	;.
	ram:7f76 02             ld (bc),a            	;.
	ram:7f77 c6 79          add a,079h           	;. y
	ram:7f79 02             ld (bc),a            	;.
	ram:7f7a 03             inc bc               	;.
	ram:7f7b c6 79          add a,079h           	;. y
	ram:7f7d 12             ld (de),a            	;.
	ram:7f7e 02             ld (bc),a            	;.
	ram:7f7f 02             ld (bc),a            	;.
	ram:7f80 c7             rst 0                	;.
	ram:7f81 78             ld a,b               	;x
	ram:7f82 02             ld (bc),a            	;.
	ram:7f83 02             ld (bc),a            	;.
	ram:7f84 c7             rst 0                	;.
	ram:7f85 79             ld a,c               	;y
	ram:7f86 02             ld (bc),a            	;.
	ram:7f87 01 cb 02       ld bc,002cbh         	;. . .
	ram:7f8a 01 cc ff       ld bc,0ffcch         	;. . .
	ram:7f8d 01 ff ff       ld bc,0ffffh         	;. . .
l7f90h:
	ram:7f90 01 40 ff       ld bc,0ff40h         	;. @ .
	ram:7f93 01 ff c0       ld bc,0c0ffh         	;. . .
	ram:7f96 07             rlca                 	;.
	ram:7f97 00             nop                  	;.
	ram:7f98 00             nop                  	;.
	ram:7f99 48             ld c,b               	;H
	ram:7f9a 80             add a,b              	;.
	ram:7f9b 01 80 0a       ld bc,00a80h         	;. . .
	ram:7f9e 80             add a,b              	;.
	ram:7f9f 4d             ld c,l               	;M
	ram:7fa0 80             add a,b              	;.
	ram:7fa1 44             ld b,h               	;D
	ram:7fa2 80             add a,b              	;.
	ram:7fa3 46             ld b,(hl)            	;F
	ram:7fa4 80             add a,b              	;.
	ram:7fa5 11 80 12       ld de,01280h         	;. . .
	ram:7fa8 80             add a,b              	;.
	ram:7fa9 1f             rra                  	;.
	ram:7faa 01 00 80       ld bc,08000h         	;. . .
	ram:7fad 1f             rra                  	;.
	ram:7fae 02             ld (bc),a            	;.
	ram:7faf 0c             inc c                	;.
	ram:7fb0 80             add a,b              	;.
	ram:7fb1 42             ld b,d               	;B
	ram:7fb2 80             add a,b              	;.
l7fb3h:
	ram:7fb3 a6             and (hl)             	;.
	ram:7fb4 30 00          jr nc,l7fb6h         	;0 .
l7fb6h:
	ram:7fb6 00             nop                  	;.
	ram:7fb7 db 30          in a,(030h)          	;. 0
	ram:7fb9 e9             jp (hl)              	;.
	ram:7fba 30 35          jr nc,l7ff1h         	;0 5
	ram:7fbc 31 6b 31       ld sp,0316bh         	;1 k 1
	ram:7fbf a9             xor c                	;.
	ram:7fc0 31 cc 31       ld sp,031cch         	;1 . 1
	ram:7fc3 1c             inc e                	;.
	ram:7fc4 32 27 32       ld (03227h),a        	;2 ' 2
	ram:7fc7 42             ld b,d               	;B
	ram:7fc8 32 4d 32       ld (0324dh),a        	;2 M 2
	ram:7fcb 7c             ld a,h               	;|
	ram:7fcc 32 8b 32       ld (0328bh),a        	;2 . 2
	ram:7fcf d8             ret c                	;.
	ram:7fd0 32 ff ff       ld (0ffffh),a        	;2 . .
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
l7ff1h:
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
