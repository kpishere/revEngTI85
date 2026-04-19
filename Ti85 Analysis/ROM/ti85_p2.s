; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p2.rom

	org 04000h

sub_4000h:
	ram:4000 cd 98 0f       call 00f98h          	;. . .
l4003h:
	ram:4003 cd 06 40       call sub_4006h       	;. . @
sub_4006h:
	ram:4006 cd 21 20       call 02021h          	;. !  
	ram:4009 cd f4 2d       call 02df4h          	;. . -
	ram:400c f7             rst 30h              	;.
	ram:400d cd 19 20       call 02019h          	;. .  
	ram:4010 18 2b          jr l403dh            	;. +
l4012h:
	ram:4012 cd 91 2e       call 02e91h          	;. . .
sub_4015h:
	ram:4015 cd 4a 2e       call 02e4ah          	;. J .
	ram:4018 cd 52 2f       call 02f52h          	;. R /
	ram:401b ef             rst 28h              	;.
	ram:401c cd f9 44       call sub_44f9h       	;. . D
	ram:401f cd bb 2e       call 02ebbh          	;. . .
	ram:4022 cf             rst 8                	;.
	ram:4023 cd fc 44       call sub_44fch       	;. . D
	ram:4026 cd a3 23       call 023a3h          	;. . #
	ram:4029 f7             rst 30h              	;.
	ram:402a cd b5 23       call 023b5h          	;. . #
	ram:402d cd 4d 2f       call 02f4dh          	;. M /
	ram:4030 ef             rst 28h              	;.
	ram:4031 cd ef 2d       call 02defh          	;. . -
	ram:4034 cd 71 0d       call 00d71h          	;. q .
	ram:4037 cd 09 2e       call 02e09h          	;. . .
l403ah:
	ram:403a cd 07 20       call 02007h          	;. .  
l403dh:
	ram:403d c3 66 1f       jp 01f66h            	;. f .
sub_4040h:
	ram:4040 cd 1c 21       call 0211ch          	;. . !
	ram:4043 cd 40 2e       call 02e40h          	;. @ .
	ram:4046 af             xor a                	;.
	ram:4047 32 9b 80       ld (0809bh),a        	;2 . .
	ram:404a cd 40 2e       call 02e40h          	;. @ .
l404dh:
	ram:404d cd 03 45       call sub_4503h       	;. . E
	ram:4050 d5             push de              	;.
	ram:4051 cd f9 44       call sub_44f9h       	;. . D
	ram:4054 cd 4a 2e       call 02e4ah          	;. J .
	ram:4057 cd a3 23       call 023a3h          	;. . #
	ram:405a cd fc 44       call sub_44fch       	;. . D
	ram:405d cd 1f 2f       call 02f1fh          	;. . /
	ram:4060 cd 71 0d       call 00d71h          	;. q .
	ram:4063 cd 6b 2f       call 02f6bh          	;. k /
	ram:4066 cd 19 20       call 02019h          	;. .  
	ram:4069 cd 52 2f       call 02f52h          	;. R /
	ram:406c ef             rst 28h              	;.
	ram:406d cd 9c 2f       call 02f9ch          	;. . /
	ram:4070 cd a3 23       call 023a3h          	;. . #
	ram:4073 cd fc 44       call sub_44fch       	;. . D
	ram:4076 cd 4d 2f       call 02f4dh          	;. M /
	ram:4079 f7             rst 30h              	;.
	ram:407a cd 9c 2f       call 02f9ch          	;. . /
	ram:407d cd 60 20       call 02060h          	;. `  
	ram:4080 cd c5 40       call sub_40c5h       	;. . @
	ram:4083 d1             pop de               	;.
	ram:4084 cd a3 40       call sub_40a3h       	;. . @
	ram:4087 cd 21 20       call 02021h          	;. !  
	ram:408a cd ef 2d       call 02defh          	;. . -
	ram:408d cd 0c 2e       call 02e0ch          	;. . .
	ram:4090 cd f4 2d       call 02df4h          	;. . -
	ram:4093 cd b5 44       call sub_44b5h       	;. . D
	ram:4096 18 a5          jr l403dh            	;. .
sub_4098h:
	ram:4098 cd 03 45       call sub_4503h       	;. . E
	ram:409b d5             push de              	;.
	ram:409c cd c2 40       call sub_40c2h       	;. . @
	ram:409f cd f7 10       call 010f7h          	;. . .
	ram:40a2 d1             pop de               	;.
sub_40a3h:
	ram:40a3 cb 7a          bit 7,d              	;. z
	ram:40a5 28 12          jr z,l40b9h          	;( .
	ram:40a7 cb ba          res 7,d              	;. .
l40a9h:
	ram:40a9 cd 8b 26       call 0268bh          	;. . &
	ram:40ac da 98 21       jp c,02198h          	;. . !
l40afh:
	ram:40af 22 83 80       ld (08083h),hl       	;" . .
	ram:40b2 c9             ret                  	;.
sub_40b3h:
	ram:40b3 cb 7a          bit 7,d              	;. z
	ram:40b5 28 f2          jr z,l40a9h          	;( .
	ram:40b7 cb ba          res 7,d              	;. .
l40b9h:
	ram:40b9 2a 83 80       ld hl,(08083h)       	;* . .
	ram:40bc 19             add hl,de            	;.
	ram:40bd da 08 0a       jp c,00a08h          	;. . .
	ram:40c0 18 ed          jr l40afh            	;. .
sub_40c2h:
	ram:40c2 cd fe 1f       call 01ffeh          	;. . .
sub_40c5h:
	ram:40c5 cd 5a 0e       call 00e5ah          	;. Z .
	ram:40c8 cd b5 23       call 023b5h          	;. . #
	ram:40cb cd 5a 0e       call 00e5ah          	;. Z .
sub_40ceh:
	ram:40ce cd 07 20       call 02007h          	;. .  
	ram:40d1 f7             rst 30h              	;.
	ram:40d2 c9             ret                  	;.
l40d3h:
	ram:40d3 cd 8d 20       call 0208dh          	;. .  
	ram:40d6 cd 7d 20       call 0207dh          	;. }  
	ram:40d9 cd 98 40       call sub_4098h       	;. . @
	ram:40dc cd 29 20       call 02029h          	;. )  
	ram:40df af             xor a                	;.
	ram:40e0 32 8d 80       ld (0808dh),a        	;2 . .
	ram:40e3 f7             rst 30h              	;.
	ram:40e4 cd 52 0e       call 00e52h          	;. R .
	ram:40e7 cd f7 10       call 010f7h          	;. . .
	ram:40ea cd d1 23       call 023d1h          	;. . #
	ram:40ed 20 03          jr nz,l40f2h         	;.
	ram:40ef cf             rst 8                	;.
	ram:40f0 18 24          jr l4116h            	;. $
l40f2h:
	ram:40f2 cd f5 1f       call 01ff5h          	;. . .
	ram:40f5 cd 66 0d       call 00d66h          	;. f .
	ram:40f8 cf             rst 8                	;.
	ram:40f9 cd 51 20       call 02051h          	;. Q  
	ram:40fc cd 23 10       call 01023h          	;. # .
	ram:40ff cd 07 20       call 02007h          	;. .  
	ram:4102 3a ae 80       ld a,(080aeh)        	;: . .
	ram:4105 e6 80          and 080h             	;. .
	ram:4107 28 0a          jr z,l4113h          	;( .
	ram:4109 3a b9 80       ld a,(080b9h)        	;: . .
	ram:410c e6 80          and 080h             	;. .
	ram:410e c4 98 0f       call nz,00f98h       	;. . .
	ram:4111 18 03          jr l4116h            	;. .
l4113h:
	ram:4113 cd ba 23       call 023bah          	;. . #
l4116h:
	ram:4116 c3 66 1f       jp 01f66h            	;. f .
l4119h:
	ram:4119 cd 8f 44       call sub_448fh       	;. . D
	ram:411c 3e 80          ld a,080h            	;> .
	ram:411e 18 0c          jr l412ch            	;. .
l4120h:
	ram:4120 cd 8f 44       call sub_448fh       	;. . D
	ram:4123 3e 51          ld a,051h            	;> Q
	ram:4125 18 05          jr l412ch            	;. .
l4127h:
	ram:4127 af             xor a                	;.
	ram:4128 18 02          jr l412ch            	;. .
l412ah:
	ram:412a 3e 01          ld a,001h            	;> .
l412ch:
	ram:412c 32 c5 80       ld (080c5h),a        	;2 . .
	ram:412f cd 7d 20       call 0207dh          	;. }  
	ram:4132 cd 65 16       call 01665h          	;. e .
	ram:4135 cd 9e 23       call 0239eh          	;. . #
	ram:4138 cd 45 2e       call 02e45h          	;. E .
	ram:413b cd 50 1a       call 01a50h          	;. P .
	ram:413e cd e0 2d       call 02de0h          	;. . -
	ram:4141 3a c5 80       ld a,(080c5h)        	;: . .
	ram:4144 e6 01          and 001h             	;. .
	ram:4146 28 06          jr z,l414eh          	;( .
	ram:4148 cd 91 23       call 02391h          	;. . #
	ram:414b cd 9b 0f       call 00f9bh          	;. . .
l414eh:
	ram:414e cd a8 23       call 023a8h          	;. . #
	ram:4151 ef             rst 28h              	;.
	ram:4152 cd 99 23       call 02399h          	;. . #
	ram:4155 cd 49 20       call 02049h          	;. I  
	ram:4158 ef             rst 28h              	;.
	ram:4159 cd 29 20       call 02029h          	;. )  
	ram:415c 3a c5 80       ld a,(080c5h)        	;: . .
	ram:415f b7             or a                 	;.
	ram:4160 f2 66 1f       jp p,01f66h          	;. f .
	ram:4163 e6 01          and 001h             	;. .
l4165h:
	ram:4165 cc 95 44       call z,sub_4495h     	;. . D
	ram:4168 18 ac          jr l4116h            	;. .
l416ah:
	ram:416a cd 8f 44       call sub_448fh       	;. . D
	ram:416d 3e 80          ld a,080h            	;> .
	ram:416f 18 01          jr l4172h            	;. .
l4171h:
	ram:4171 af             xor a                	;.
l4172h:
	ram:4172 32 c5 80       ld (080c5h),a        	;2 . .
	ram:4175 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:4178 cd f1 25       call 025f1h          	;. . %
	ram:417b 38 20          jr c,l419dh          	;8  
	ram:417d 20 0e          jr nz,l418dh         	;.
	ram:417f 7d             ld a,l               	;}
	ram:4180 fe 03          cp 003h              	;. .
	ram:4182 38 19          jr c,l419dh          	;8 .
	ram:4184 20 07          jr nz,l418dh         	;.
	ram:4186 3a 90 80       ld a,(08090h)        	;: . .
	ram:4189 fe 11          cp 011h              	;. .
	ram:418b 38 10          jr c,l419dh          	;8 .
l418dh:
	ram:418d cd 98 21       call 02198h          	;. . !
	ram:4190 cd 6e 25       call 0256eh          	;. n %
	ram:4193 f5             push af              	;.
	ram:4194 cd 66 21       call 02166h          	;. f !
	ram:4197 f1             pop af               	;.
	ram:4198 32 8d 80       ld (0808dh),a        	;2 . .
	ram:419b 18 29          jr l41c6h            	;. )
l419dh:
	ram:419d cd 7d 20       call 0207dh          	;. }  
	ram:41a0 cd 65 16       call 01665h          	;. e .
	ram:41a3 cd 45 2e       call 02e45h          	;. E .
	ram:41a6 ef             rst 28h              	;.
	ram:41a7 cd 9e 23       call 0239eh          	;. . #
	ram:41aa cd 50 1a       call 01a50h          	;. P .
	ram:41ad cd 8d 20       call 0208dh          	;. .  
	ram:41b0 ef             rst 28h              	;.
	ram:41b1 cd 99 23       call 02399h          	;. . #
	ram:41b4 cd ef 2d       call 02defh          	;. . -
	ram:41b7 cd c2 40       call sub_40c2h       	;. . @
	ram:41ba cd 21 20       call 02021h          	;. !  
	ram:41bd cd 51 20       call 02051h          	;. Q  
	ram:41c0 cd 29 20       call 02029h          	;. )  
	ram:41c3 cd b5 44       call sub_44b5h       	;. . D
l41c6h:
	ram:41c6 3a c5 80       ld a,(080c5h)        	;: . .
	ram:41c9 b7             or a                 	;.
	ram:41ca fc 95 44       call m,sub_4495h     	;. . D
	ram:41cd c3 66 1f       jp 01f66h            	;. f .
l41d0h:
	ram:41d0 cd 8f 44       call sub_448fh       	;. . D
	ram:41d3 3e 80          ld a,080h            	;> .
	ram:41d5 18 09          jr l41e0h            	;. .
l41d7h:
	ram:41d7 3e 81          ld a,081h            	;> .
	ram:41d9 18 05          jr l41e0h            	;. .
l41dbh:
	ram:41db 3e 01          ld a,001h            	;> .
	ram:41dd 18 01          jr l41e0h            	;. .
l41dfh:
	ram:41df af             xor a                	;.
l41e0h:
	ram:41e0 32 c5 80       ld (080c5h),a        	;2 . .
	ram:41e3 cd 91 2e       call 02e91h          	;. . .
	ram:41e6 cd 69 0d       call 00d69h          	;. i .
	ram:41e9 cd fb 42       call sub_42fbh       	;. . B
	ram:41ec cd 8d 20       call 0208dh          	;. .  
	ram:41ef cd 43 2f       call 02f43h          	;. C /
	ram:41f2 cd 6e 0d       call 00d6eh          	;. n .
	ram:41f5 cd fb 42       call sub_42fbh       	;. . B
	ram:41f8 cd 29 20       call 02029h          	;. )  
	ram:41fb f7             rst 30h              	;.
	ram:41fc cd 1f 2f       call 02f1fh          	;. . /
	ram:41ff cd 6e 25       call 0256eh          	;. n %
	ram:4202 ef             rst 28h              	;.
	ram:4203 cd 8d 20       call 0208dh          	;. .  
	ram:4206 cd 66 21       call 02166h          	;. f !
	ram:4209 11 b9 80       ld de,080b9h         	;. . .
	ram:420c cd 46 2f       call 02f46h          	;. F /
	ram:420f 3a bb 80       ld a,(080bbh)        	;: . .
	ram:4212 fe fc          cp 0fch              	;. .
	ram:4214 38 0d          jr c,l4223h          	;8 .
	ram:4216 3a bc 80       ld a,(080bch)        	;: . .
	ram:4219 b7             or a                 	;.
	ram:421a 28 07          jr z,l4223h          	;( .
	ram:421c cd 49 20       call 02049h          	;. I  
	ram:421f af             xor a                	;.
	ram:4220 32 8d 80       ld (0808dh),a        	;2 . .
l4223h:
	ram:4223 cd fe 1f       call 01ffeh          	;. . .
	ram:4226 f7             rst 30h              	;.
	ram:4227 cd 85 20       call 02085h          	;. .  
	ram:422a 2a 83 80       ld hl,(08083h)       	;* . .
	ram:422d 11 0e fc       ld de,0fc0eh         	;. . .
	ram:4230 b7             or a                 	;.
	ram:4231 ed 52          sbc hl,de            	;. R
	ram:4233 30 21          jr nc,l4256h         	;0 !
	ram:4235 cd ce 40       call sub_40ceh       	;. . @
	ram:4238 cd 29 20       call 02029h          	;. )  
	ram:423b ef             rst 28h              	;.
	ram:423c cd 8d 20       call 0208dh          	;. .  
	ram:423f cd 56 20       call 02056h          	;. V  
	ram:4242 cd 6e 0d       call 00d6eh          	;. n .
	ram:4245 cd b5 23       call 023b5h          	;. . #
	ram:4248 cd 69 0d       call 00d69h          	;. i .
	ram:424b cd 07 20       call 02007h          	;. .  
	ram:424e ef             rst 28h              	;.
	ram:424f cd 29 20       call 02029h          	;. )  
	ram:4252 f7             rst 30h              	;.
	ram:4253 cd f7 10       call 010f7h          	;. . .
l4256h:
	ram:4256 cd d1 23       call 023d1h          	;. . #
	ram:4259 20 1a          jr nz,l4275h         	;.
	ram:425b cd 0c 2e       call 02e0ch          	;. . .
	ram:425e cd 85 20       call 02085h          	;. .  
	ram:4261 cd f4 2d       call 02df4h          	;. . -
	ram:4264 3a c5 80       ld a,(080c5h)        	;: . .
	ram:4267 e6 01          and 001h             	;. .
	ram:4269 28 05          jr z,l4270h          	;( .
	ram:426b cd f7 1a       call 01af7h          	;. . .
	ram:426e 18 69          jr l42d9h            	;. i
l4270h:
	ram:4270 cd 08 1b       call 01b08h          	;. . .
	ram:4273 18 64          jr l42d9h            	;. d
l4275h:
	ram:4275 cd 1f 2f       call 02f1fh          	;. . /
	ram:4278 cd 4a 2e       call 02e4ah          	;. J .
	ram:427b cd 62 25       call 02562h          	;. b %
	ram:427e 20 17          jr nz,l4297h         	;.
	ram:4280 cd d6 23       call 023d6h          	;. . #
	ram:4283 20 12          jr nz,l4297h         	;.
	ram:4285 cd 52 2f       call 02f52h          	;. R /
	ram:4288 cd d1 23       call 023d1h          	;. . #
	ram:428b 28 0a          jr z,l4297h          	;( .
	ram:428d cd 68 25       call 02568h          	;. h %
	ram:4290 20 05          jr nz,l4297h         	;.
	ram:4292 3e 80          ld a,080h            	;> .
	ram:4294 32 8d 80       ld (0808dh),a        	;2 . .
l4297h:
	ram:4297 cd 24 2f       call 02f24h          	;. $ /
	ram:429a 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:429d 32 82 80       ld (08082h),a        	;2 . .
	ram:42a0 cd 6b 2f       call 02f6bh          	;. k /
	ram:42a3 cd 98 1d       call 01d98h          	;. . .
	ram:42a6 cd 49 20       call 02049h          	;. I  
	ram:42a9 cd 85 20       call 02085h          	;. .  
	ram:42ac cd 52 2f       call 02f52h          	;. R /
	ram:42af cd 23 10       call 01023h          	;. # .
	ram:42b2 cd f5 1f       call 01ff5h          	;. . .
	ram:42b5 cd fc 2d       call 02dfch          	;. . -
	ram:42b8 cd 0c 2e       call 02e0ch          	;. . .
	ram:42bb cd 23 10       call 01023h          	;. # .
	ram:42be cf             rst 8                	;.
	ram:42bf cd 56 20       call 02056h          	;. V  
	ram:42c2 3a c5 80       ld a,(080c5h)        	;: . .
	ram:42c5 e6 01          and 001h             	;. .
	ram:42c7 28 0b          jr z,l42d4h          	;( .
	ram:42c9 cd ba 23       call 023bah          	;. . #
	ram:42cc 3a b9 80       ld a,(080b9h)        	;: . .
	ram:42cf ee 80          xor 080h             	;. .
	ram:42d1 32 b9 80       ld (080b9h),a        	;2 . .
l42d4h:
	ram:42d4 16 00          ld d,000h            	;. .
	ram:42d6 cd 02 1b       call 01b02h          	;. . .
l42d9h:
	ram:42d9 cd 49 20       call 02049h          	;. I  
	ram:42dc 3a c5 80       ld a,(080c5h)        	;: . .
	ram:42df b7             or a                 	;.
	ram:42e0 f2 66 1f       jp p,01f66h          	;. f .
	ram:42e3 e6 01          and 001h             	;. .
	ram:42e5 ca 65 41       jp z,l4165h          	;. e A
	ram:42e8 cd ba 23       call 023bah          	;. . #
	ram:42eb cd 68 25       call 02568h          	;. h %
	ram:42ee 20 06          jr nz,l42f6h         	;.
	ram:42f0 cd d1 23       call 023d1h          	;. . #
	ram:42f3 c4 ac 0f       call nz,00fach       	;. . .
l42f6h:
	ram:42f6 cd 73 25       call 02573h          	;. s %
	ram:42f9 18 42          jr l433dh            	;. B
sub_42fbh:
	ram:42fb cd 1f 2f       call 02f1fh          	;. . /
	ram:42fe cd 4a 2e       call 02e4ah          	;. J .
	ram:4301 cd 98 40       call sub_4098h       	;. . @
	ram:4304 cd d1 23       call 023d1h          	;. . #
	ram:4307 ca 0c 2e       jp z,02e0ch          	;. . .
	ram:430a cd ef 2d       call 02defh          	;. . -
	ram:430d cd 3f 0d       call 00d3fh          	;. ? .
	ram:4310 cd f5 1f       call 01ff5h          	;. . .
	ram:4313 cd 24 2f       call 02f24h          	;. $ /
	ram:4316 cd 52 0e       call 00e52h          	;. R .
	ram:4319 cd 07 20       call 02007h          	;. .  
	ram:431c cd 23 10       call 01023h          	;. # .
	ram:431f c3 73 25       jp 02573h            	;. s %
sub_4322h:
	ram:4322 cd 7d 20       call 0207dh          	;. }  
	ram:4325 cd 4a 2e       call 02e4ah          	;. J .
	ram:4328 cd 98 40       call sub_4098h       	;. . @
	ram:432b cd 6e 12       call 0126eh          	;. n .
	ram:432e cd 9e 23       call 0239eh          	;. . #
	ram:4331 cd ef 2d       call 02defh          	;. . -
	ram:4334 16 00          ld d,000h            	;. .
	ram:4336 cd 02 1b       call 01b02h          	;. . .
l4339h:
	ram:4339 cf             rst 8                	;.
	ram:433a cd 51 20       call 02051h          	;. Q  
l433dh:
	ram:433d c3 66 1f       jp 01f66h            	;. f .
l4340h:
	ram:4340 cd 7d 20       call 0207dh          	;. }  
	ram:4343 cd 4a 2e       call 02e4ah          	;. J .
	ram:4346 cd 98 40       call sub_4098h       	;. . @
	ram:4349 cd 89 12       call 01289h          	;. . .
	ram:434c cd 9e 23       call 0239eh          	;. . #
	ram:434f cd ef 2d       call 02defh          	;. . -
	ram:4352 16 00          ld d,000h            	;. .
	ram:4354 cd 02 1b       call 01b02h          	;. . .
	ram:4357 3e 03          ld a,003h            	;> .
	ram:4359 cd 86 24       call 02486h          	;. . $
	ram:435c ef             rst 28h              	;.
	ram:435d 18 da          jr l4339h            	;. .
l435fh:
	ram:435f cd 8f 44       call sub_448fh       	;. . D
	ram:4362 3e 80          ld a,080h            	;> .
	ram:4364 18 01          jr l4367h            	;. .
l4366h:
	ram:4366 af             xor a                	;.
l4367h:
	ram:4367 32 c5 80       ld (080c5h),a        	;2 . .
	ram:436a cd 91 2e       call 02e91h          	;. . .
	ram:436d cd d1 23       call 023d1h          	;. . #
	ram:4370 20 17          jr nz,l4389h         	;.
	ram:4372 cd 3e 21       call 0213eh          	;. > !
	ram:4375 cd 9b 0f       call 00f9bh          	;. . .
	ram:4378 cd 8e 1f       call 01f8eh          	;. . .
	ram:437b 38 0c          jr c,l4389h          	;8 .
	ram:437d 28 0a          jr z,l4389h          	;( .
	ram:437f 3e 04          ld a,004h            	;> .
	ram:4381 cd 81 24       call 02481h          	;. . $
	ram:4384 cd 9b 0f       call 00f9bh          	;. . .
	ram:4387 18 31          jr l43bah            	;. 1
l4389h:
	ram:4389 cd 24 2f       call 02f24h          	;. $ /
	ram:438c cd 86 1d       call 01d86h          	;. . .
	ram:438f ef             rst 28h              	;.
	ram:4390 cd f5 1f       call 01ff5h          	;. . .
	ram:4393 cd 43 2f       call 02f43h          	;. C /
	ram:4396 cd 5a 0e       call 00e5ah          	;. Z .
	ram:4399 cd 07 20       call 02007h          	;. .  
	ram:439c cd 61 0d       call 00d61h          	;. a .
	ram:439f cd f5 1f       call 01ff5h          	;. . .
	ram:43a2 cd 43 2f       call 02f43h          	;. C /
	ram:43a5 cd 73 25       call 02573h          	;. s %
	ram:43a8 f5             push af              	;.
	ram:43a9 cd 66 0d       call 00d66h          	;. f .
	ram:43ac cd 07 20       call 02007h          	;. .  
	ram:43af 16 00          ld d,000h            	;. .
	ram:43b1 cd 02 1b       call 01b02h          	;. . .
	ram:43b4 f1             pop af               	;.
	ram:43b5 e6 80          and 080h             	;. .
	ram:43b7 c4 9b 0f       call nz,00f9bh       	;. . .
l43bah:
	ram:43ba cd 4a 2e       call 02e4ah          	;. J .
	ram:43bd cd 52 2f       call 02f52h          	;. R /
	ram:43c0 cd 3b 2f       call 02f3bh          	;. ; /
	ram:43c3 cd c2 40       call sub_40c2h       	;. . @
	ram:43c6 cd 69 0d       call 00d69h          	;. i .
	ram:43c9 cd f5 1f       call 01ff5h          	;. . .
	ram:43cc cd 43 2f       call 02f43h          	;. C /
	ram:43cf cd 66 0d       call 00d66h          	;. f .
	ram:43d2 cd 07 20       call 02007h          	;. .  
	ram:43d5 cd 23 10       call 01023h          	;. # .
	ram:43d8 cd f5 1f       call 01ff5h          	;. . .
	ram:43db cf             rst 8                	;.
	ram:43dc cd 3e 21       call 0213eh          	;. > !
	ram:43df cd 88 25       call 02588h          	;. . %
	ram:43e2 cd 88 1f       call 01f88h          	;. . .
	ram:43e5 38 08          jr c,l43efh          	;8 .
	ram:43e7 cd 56 20       call 02056h          	;. V  
	ram:43ea cd 4b 1d       call 01d4bh          	;. K .
	ram:43ed 18 21          jr l4410h            	;. !
l43efh:
	ram:43ef cd 43 2f       call 02f43h          	;. C /
	ram:43f2 cd 86 1d       call 01d86h          	;. . .
	ram:43f5 cd 8d 20       call 0208dh          	;. .  
	ram:43f8 cd 52 2f       call 02f52h          	;. R /
	ram:43fb cd 98 40       call sub_4098h       	;. . @
	ram:43fe cd 99 23       call 02399h          	;. . #
	ram:4401 cd 4d 2f       call 02f4dh          	;. M /
	ram:4404 cd 98 40       call sub_4098h       	;. . @
	ram:4407 cd 29 20       call 02029h          	;. )  
	ram:440a cd 23 10       call 01023h          	;. # .
	ram:440d cd 6e 12       call 0126eh          	;. n .
l4410h:
	ram:4410 cf             rst 8                	;.
	ram:4411 cd f4 2d       call 02df4h          	;. . -
	ram:4414 cd 51 21       call 02151h          	;. Q !
	ram:4417 cd b5 44       call sub_44b5h       	;. . D
	ram:441a cd 09 2e       call 02e09h          	;. . .
	ram:441d c3 c6 41       jp l41c6h            	;. . A
l4420h:
	ram:4420 cd fe 1f       call 01ffeh          	;. . .
	ram:4423 3e 03          ld a,003h            	;> .
	ram:4425 cd 86 24       call 02486h          	;. . $
	ram:4428 cd 23 10       call 01023h          	;. # .
	ram:442b cd b5 23       call 023b5h          	;. . #
	ram:442e cd 23 10       call 01023h          	;. # .
	ram:4431 cf             rst 8                	;.
	ram:4432 cd 56 20       call 02056h          	;. V  
l4435h:
	ram:4435 cd 7d 20       call 0207dh          	;. }  
	ram:4438 cd 75 14       call 01475h          	;. u .
	ram:443b cd 9e 23       call 0239eh          	;. . #
	ram:443e cd 65 16       call 01665h          	;. e .
	ram:4441 cd 8c 23       call 0238ch          	;. . #
	ram:4444 ef             rst 28h              	;.
	ram:4445 cd f5 1f       call 01ff5h          	;. . .
	ram:4448 cd 51 20       call 02051h          	;. Q  
	ram:444b ef             rst 28h              	;.
	ram:444c c3 3a 40       jp l403ah            	;. : @
	ram:444f cd 56 20       call 02056h          	;. V  
	ram:4452 cd 93 21       call 02193h          	;. . !
	ram:4455 cd 91 2e       call 02e91h          	;. . .
	ram:4458 cd 51 20       call 02051h          	;. Q  
	ram:445b 18 0b          jr l4468h            	;. .
l445dh:
	ram:445d cd a6 2e       call 02ea6h          	;. . .
	ram:4460 cd cc 23       call 023cch          	;. . #
	ram:4463 28 12          jr z,l4477h          	;( .
	ram:4465 cd 40 40       call sub_4040h       	;. @ @
l4468h:
	ram:4468 cd 21 20       call 02021h          	;. !  
	ram:446b cd a6 2e       call 02ea6h          	;. . .
	ram:446e cd cc 23       call 023cch          	;. . #
	ram:4471 20 14          jr nz,l4487h         	;.
	ram:4473 3a 9b 80       ld a,(0809bh)        	;: . .
	ram:4476 b7             or a                 	;.
l4477h:
	ram:4477 ca 14 0a       jp z,00a14h          	;. . .
	ram:447a 3a 98 80       ld a,(08098h)        	;: . .
	ram:447d b7             or a                 	;.
	ram:447e fa 14 0a       jp m,00a14h          	;. . .
	ram:4481 cd 09 2e       call 02e09h          	;. . .
	ram:4484 c3 60 1f       jp 01f60h            	;. ` .
l4487h:
	ram:4487 cd 22 43       call sub_4322h       	;. " C
	ram:448a cd 15 40       call sub_4015h       	;. . @
	ram:448d 18 a6          jr l4435h            	;. .
sub_448fh:
	ram:448f cd ba 23       call 023bah          	;. . #
	ram:4492 c3 9b 0f       jp 00f9bh            	;. . .
sub_4495h:
	ram:4495 cd 9b 0f       call 00f9bh          	;. . .
	ram:4498 c3 ba 23       jp 023bah            	;. . #
l449bh:
	ram:449b cd ac 0f       call 00fach          	;. . .
l449eh:
	ram:449e c3 66 1f       jp 01f66h            	;. f .
	ram:44a1 cd fe 1f       call 01ffeh          	;. . .
	ram:44a4 cd 19 20       call 02019h          	;. .  
	ram:44a7 ef             rst 28h              	;.
	ram:44a8 cd b5 23       call 023b5h          	;. . #
	ram:44ab ef             rst 28h              	;.
l44ach:
	ram:44ac cd f4 20       call 020f4h          	;. .  
	ram:44af cf             rst 8                	;.
	ram:44b0 cd 56 20       call 02056h          	;. V  
	ram:44b3 18 e9          jr l449eh            	;. .
sub_44b5h:
	ram:44b5 cd fe 1f       call 01ffeh          	;. . .
	ram:44b8 cd 19 20       call 02019h          	;. .  
	ram:44bb cd 23 10       call 01023h          	;. # .
	ram:44be cd b5 23       call 023b5h          	;. . #
	ram:44c1 cd 23 10       call 01023h          	;. # .
	ram:44c4 18 e6          jr l44ach            	;. .
l44c6h:
	ram:44c6 cd f4 20       call 020f4h          	;. .  
	ram:44c9 cd 5d 0d       call 00d5dh          	;. ] .
	ram:44cc cd b0 23       call 023b0h          	;. . #
	ram:44cf cd 5d 0d       call 00d5dh          	;. ] .
	ram:44d2 cf             rst 8                	;.
	ram:44d3 cd 60 20       call 02060h          	;. `  
	ram:44d6 18 1e          jr l44f6h            	;. .
l44d8h:
	ram:44d8 cd c3 0f       call 00fc3h          	;. . .
	ram:44db cd ba 23       call 023bah          	;. . #
	ram:44de cd c3 0f       call 00fc3h          	;. . .
	ram:44e1 cd ba 23       call 023bah          	;. . #
	ram:44e4 18 10          jr l44f6h            	;. .
l44e6h:
	ram:44e6 cd fe 1f       call 01ffeh          	;. . .
	ram:44e9 cd 47 0d       call 00d47h          	;. G .
	ram:44ec cd b5 23       call 023b5h          	;. . #
	ram:44ef cd 47 0d       call 00d47h          	;. G .
	ram:44f2 cf             rst 8                	;.
	ram:44f3 cd 56 20       call 02056h          	;. V  
l44f6h:
	ram:44f6 c3 66 1f       jp 01f66h            	;. f .
sub_44f9h:
	ram:44f9 cd f5 1f       call 01ff5h          	;. . .
sub_44fch:
	ram:44fc cd 43 2f       call 02f43h          	;. C /
	ram:44ff ef             rst 28h              	;.
	ram:4500 c3 f4 20       jp 020f4h            	;. .  
sub_4503h:
	ram:4503 cd 82 26       call 02682h          	;. . &
	ram:4506 eb             ex de,hl             	;.
	ram:4507 38 03          jr c,l450ch          	;8 .
	ram:4509 2a 83 80       ld hl,(08083h)       	;* . .
l450ch:
	ram:450c cd f1 25       call 025f1h          	;. . %
	ram:450f 38 15          jr c,l4526h          	;8 .
	ram:4511 d6 fc          sub 0fch             	;. .
	ram:4513 67             ld h,a               	;g
l4514h:
	ram:4514 e5             push hl              	;.
	ram:4515 eb             ex de,hl             	;.
	ram:4516 cd b3 40       call sub_40b3h       	;. . @
	ram:4519 cd ba 23       call 023bah          	;. . #
	ram:451c d1             pop de               	;.
	ram:451d d5             push de              	;.
	ram:451e cd b3 40       call sub_40b3h       	;. . @
	ram:4521 cd ba 23       call 023bah          	;. . #
	ram:4524 d1             pop de               	;.
	ram:4525 c9             ret                  	;.
l4526h:
	ram:4526 11 00 fc       ld de,0fc00h         	;. . .
	ram:4529 eb             ex de,hl             	;.
	ram:452a b7             or a                 	;.
	ram:452b ed 52          sbc hl,de            	;. R
	ram:452d cb fc          set 7,h              	;. .
	ram:452f 18 e3          jr l4514h            	;. .
	ram:4531 cd 0a 49       call sub_490ah       	;. . I
	ram:4534 f5             push af              	;.
	ram:4535 fe a1          cp 0a1h              	;. .
	ram:4537 20 1a          jr nz,l4553h         	;.
	ram:4539 cd 0f 47       call sub_470fh       	;. . G
	ram:453c cd 4e 45       call sub_454eh       	;. N E
	ram:453f cd 40 4b       call sub_4b40h       	;. @ K
	ram:4542 f1             pop af               	;.
	ram:4543 f5             push af              	;.
	ram:4544 cd 4e 45       call sub_454eh       	;. N E
	ram:4547 f1             pop af               	;.
	ram:4548 c8             ret z                	;.
	ram:4549 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:454c 3e a1          ld a,0a1h            	;> .
sub_454eh:
	ram:454e cd b6 56       call sub_56b6h       	;. . V
	ram:4551 18 2c          jr l457fh            	;. ,
l4553h:
	ram:4553 f1             pop af               	;.
	ram:4554 f5             push af              	;.
	ram:4555 cd b6 56       call sub_56b6h       	;. . V
	ram:4558 f1             pop af               	;.
	ram:4559 f5             push af              	;.
	ram:455a fe ab          cp 0abh              	;. .
	ram:455c 28 08          jr z,l4566h          	;( .
	ram:455e fe ad          cp 0adh              	;. .
	ram:4560 28 04          jr z,l4566h          	;( .
	ram:4562 fe af          cp 0afh              	;. .
	ram:4564 20 05          jr nz,l456bh         	;.
l4566h:
	ram:4566 cd 0a 46       call sub_460ah       	;. . F
	ram:4569 f1             pop af               	;.
	ram:456a f5             push af              	;.
l456bh:
	ram:456b df             rst 18h              	;.
	ram:456c cd 40 4b       call sub_4b40h       	;. @ K
	ram:456f f1             pop af               	;.
	ram:4570 20 0f          jr nz,l4581h         	;.
	ram:4572 cd 0f 47       call sub_470fh       	;. . G
	ram:4575 cd b7 45       call sub_45b7h       	;. . E
	ram:4578 df             rst 18h              	;.
	ram:4579 cd 40 4b       call sub_4b40h       	;. @ K
sub_457ch:
	ram:457c cd 4b 46       call sub_464bh       	;. K F
l457fh:
	ram:457f df             rst 18h              	;.
	ram:4580 c9             ret                  	;.
l4581h:
	ram:4581 f5             push af              	;.
	ram:4582 cd b7 45       call sub_45b7h       	;. . E
	ram:4585 cd 5f 4b       call sub_4b5fh       	;. _ K
	ram:4588 df             rst 18h              	;.
	ram:4589 df             rst 18h              	;.
	ram:458a cd 40 4b       call sub_4b40h       	;. @ K
	ram:458d f1             pop af               	;.
	ram:458e f5             push af              	;.
	ram:458f cd 4b 46       call sub_464bh       	;. K F
	ram:4592 cd bf 2d       call 02dbfh          	;. . -
	ram:4595 df             rst 18h              	;.
	ram:4596 cd 6f 2e       call 02e6fh          	;. o .
	ram:4599 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:459c cd 0f 47       call sub_470fh       	;. . G
	ram:459f cd 7c 45       call sub_457ch       	;. | E
	ram:45a2 f1             pop af               	;.
	ram:45a3 cd 5d 47       call sub_475dh       	;. ] G
	ram:45a6 df             rst 18h              	;.
	ram:45a7 cd 40 4b       call sub_4b40h       	;. @ K
	ram:45aa cd db 48       call sub_48dbh       	;. . H
	ram:45ad cd 4b 46       call sub_464bh       	;. K F
	ram:45b0 3e 60          ld a,060h            	;> `
	ram:45b2 cd 74 4c       call sub_4c74h       	;. t L
	ram:45b5 df             rst 18h              	;.
	ram:45b6 c9             ret                  	;.
sub_45b7h:
	ram:45b7 f5             push af              	;.
	ram:45b8 cd 44 4b       call sub_4b44h       	;. D K
	ram:45bb f1             pop af               	;.
	ram:45bc fe aa          cp 0aah              	;. .
	ram:45be 20 1a          jr nz,l45dah         	;.
sub_45c0h:
	ram:45c0 3e ac          ld a,0ach            	;> .
	ram:45c2 cd b6 56       call sub_56b6h       	;. . V
sub_45c5h:
	ram:45c5 21 60 4c       ld hl,l4c60h         	;! ` L
l45c8h:
	ram:45c8 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:45cc c8             ret z                	;.
	ram:45cd 3a 82 80       ld a,(08082h)        	;: . .
	ram:45d0 e6 01          and 001h             	;. .
	ram:45d2 c0             ret nz               	;.
	ram:45d3 e5             push hl              	;.
	ram:45d4 df             rst 18h              	;.
	ram:45d5 e1             pop hl               	;.
	ram:45d6 e7             rst 20h              	;.
	ram:45d7 c3 4b 46       jp sub_464bh         	;. K F
l45dah:
	ram:45da fe ac          cp 0ach              	;. .
	ram:45dc 20 0d          jr nz,l45ebh         	;.
sub_45deh:
	ram:45de 3e aa          ld a,0aah            	;> .
	ram:45e0 cd b6 56       call sub_56b6h       	;. . V
	ram:45e3 cd c5 45       call sub_45c5h       	;. . E
l45e6h:
	ram:45e6 3e a1          ld a,0a1h            	;> .
	ram:45e8 c3 b6 56       jp sub_56b6h         	;. . V
l45ebh:
	ram:45eb fe ae          cp 0aeh              	;. .
	ram:45ed 20 14          jr nz,l4603h         	;.
	ram:45ef cd b6 56       call sub_56b6h       	;. . V
sub_45f2h:
	ram:45f2 cd f7 45       call sub_45f7h       	;. . E
	ram:45f5 18 ce          jr sub_45c5h         	;. .
sub_45f7h:
	ram:45f7 cd db 48       call sub_48dbh       	;. . H
l45fah:
	ram:45fa df             rst 18h              	;.
	ram:45fb cd 3e 21       call 0213eh          	;. > !
l45feh:
	ram:45fe 3e 60          ld a,060h            	;> `
l4600h:
	ram:4600 c3 74 4c       jp sub_4c74h         	;. t L
l4603h:
	ram:4603 fe ab          cp 0abh              	;. .
	ram:4605 20 15          jr nz,l461ch         	;.
sub_4607h:
	ram:4607 cd 0f 46       call sub_460fh       	;. . F
sub_460ah:
	ram:460a 21 6a 4c       ld hl,l4c6ah         	;! j L
	ram:460d 18 b9          jr l45c8h            	;. .
sub_460fh:
	ram:460f cd 32 47       call sub_4732h       	;. 2 G
l4612h:
	ram:4612 3e a0          ld a,0a0h            	;> .
	ram:4614 cd b6 56       call sub_56b6h       	;. . V
sub_4617h:
	ram:4617 3e 49          ld a,049h            	;> I
l4619h:
	ram:4619 c3 b6 56       jp sub_56b6h         	;. . V
l461ch:
	ram:461c fe ad          cp 0adh              	;. .
	ram:461e 20 05          jr nz,l4625h         	;.
	ram:4620 cd 07 46       call sub_4607h       	;. . F
l4623h:
	ram:4623 18 c1          jr l45e6h            	;. .
l4625h:
	ram:4625 fe af          cp 0afh              	;. .
	ram:4627 20 08          jr nz,l4631h         	;.
	ram:4629 cd 02 47       call sub_4702h       	;. . G
	ram:462c cd 17 46       call sub_4617h       	;. . F
	ram:462f 18 d9          jr sub_460ah         	;. .
l4631h:
	ram:4631 fe a8          cp 0a8h              	;. .
	ram:4633 20 05          jr nz,l463ah         	;.
sub_4635h:
	ram:4635 cd 45 46       call sub_4645h       	;. E F
	ram:4638 18 dd          jr sub_4617h         	;. .
l463ah:
	ram:463a fe a6          cp 0a6h              	;. .
	ram:463c 28 d9          jr z,sub_4617h       	;( .
	ram:463e fe a9          cp 0a9h              	;. .
	ram:4640 20 0d          jr nz,l464fh         	;.
sub_4642h:
	ram:4642 cd b6 56       call sub_56b6h       	;. . V
sub_4645h:
	ram:4645 df             rst 18h              	;.
	ram:4646 3e 06          ld a,006h            	;> .
	ram:4648 cd 81 24       call 02481h          	;. . $
sub_464bh:
	ram:464b 3e 70          ld a,070h            	;> p
	ram:464d 18 b1          jr l4600h            	;. .
l464fh:
	ram:464f fe a7          cp 0a7h              	;. .
	ram:4651 28 c6          jr z,l4619h          	;( .
	ram:4653 fe 49          cp 049h              	;. I
	ram:4655 20 0a          jr nz,l4661h         	;.
	ram:4657 cd db 48       call sub_48dbh       	;. . H
l465ah:
	ram:465a 3e 49          ld a,049h            	;> I
	ram:465c cd b6 56       call sub_56b6h       	;. . V
	ram:465f 18 c2          jr l4623h            	;. .
l4661h:
	ram:4661 fe b0          cp 0b0h              	;. .
	ram:4663 20 04          jr nz,l4669h         	;.
sub_4665h:
	ram:4665 3e b2          ld a,0b2h            	;> .
	ram:4667 18 b0          jr l4619h            	;. .
l4669h:
	ram:4669 fe b2          cp 0b2h              	;. .
	ram:466b 20 04          jr nz,l4671h         	;.
sub_466dh:
	ram:466d 3e b0          ld a,0b0h            	;> .
	ram:466f 18 a8          jr l4619h            	;. .
l4671h:
	ram:4671 fe b4          cp 0b4h              	;. .
	ram:4673 20 08          jr nz,l467dh         	;.
	ram:4675 cd 65 46       call sub_4665h       	;. e F
	ram:4678 cd db 48       call sub_48dbh       	;. . H
	ram:467b 18 9a          jr sub_4617h         	;. .
l467dh:
	ram:467d fe b1          cp 0b1h              	;. .
	ram:467f 20 06          jr nz,l4687h         	;.
	ram:4681 cd 02 47       call sub_4702h       	;. . G
	ram:4684 c3 12 46       jp l4612h            	;. . F
l4687h:
	ram:4687 fe b3          cp 0b3h              	;. .
	ram:4689 20 16          jr nz,l46a1h         	;.
	ram:468b fd 7e 07       ld a,(iy+007h)       	;. ~ .
	ram:468e f5             push af              	;.
	ram:468f cd 08 47       call sub_4708h       	;. . G
	ram:4692 f1             pop af               	;.
	ram:4693 f5             push af              	;.
	ram:4694 cd 42 47       call sub_4742h       	;. B G
	ram:4697 cd 1b 47       call sub_471bh       	;. . G
	ram:469a f1             pop af               	;.
	ram:469b cd 42 47       call sub_4742h       	;. B G
	ram:469e c3 12 46       jp l4612h            	;. . F
l46a1h:
	ram:46a1 fe b5          cp 0b5h              	;. .
	ram:46a3 20 06          jr nz,l46abh         	;.
	ram:46a5 cd 32 47       call sub_4732h       	;. 2 G
	ram:46a8 c3 17 46       jp sub_4617h         	;. . F
l46abh:
	ram:46ab fe 4a          cp 04ah              	;. J
	ram:46ad 20 06          jr nz,l46b5h         	;.
sub_46afh:
	ram:46af df             rst 18h              	;.
	ram:46b0 cd 56 21       call 02156h          	;. V !
	ram:46b3 18 96          jr sub_464bh         	;. .
l46b5h:
	ram:46b5 fe a0          cp 0a0h              	;. .
	ram:46b7 20 09          jr nz,l46c2h         	;.
	ram:46b9 cd b6 56       call sub_56b6h       	;. . V
	ram:46bc cd af 46       call sub_46afh       	;. . F
	ram:46bf c3 17 46       jp sub_4617h         	;. . F
l46c2h:
	ram:46c2 fe a2          cp 0a2h              	;. .
	ram:46c4 c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:46c7 cd 47 1f       call 01f47h          	;. G .
	ram:46ca 20 08          jr nz,l46d4h         	;.
	ram:46cc cd d1 23       call 023d1h          	;. . #
	ram:46cf 20 20          jr nz,l46f1h         	;
l46d1h:
	ram:46d1 c3 14 0a       jp 00a14h            	;. . .
l46d4h:
	ram:46d4 e6 01          and 001h             	;. .
	ram:46d6 20 f9          jr nz,l46d1h         	;.
	ram:46d8 df             rst 18h              	;.
	ram:46d9 cd 65 4b       call sub_4b65h       	;. e K
	ram:46dc 3e a2          ld a,0a2h            	;> .
	ram:46de cd b6 56       call sub_56b6h       	;. . V
	ram:46e1 3e 14          ld a,014h            	;> .
	ram:46e3 cd b6 56       call sub_56b6h       	;. . V
	ram:46e6 cd d1 23       call 023d1h          	;. . #
	ram:46e9 28 e6          jr z,l46d1h          	;( .
	ram:46eb cd 0f 47       call sub_470fh       	;. . G
	ram:46ee cd cf 2d       call 02dcfh          	;. . -
l46f1h:
	ram:46f1 3e b6          ld a,0b6h            	;> .
	ram:46f3 c3 b6 56       jp sub_56b6h         	;. . V
sub_46f6h:
	ram:46f6 cd 65 4b       call sub_4b65h       	;. e K
	ram:46f9 cd db 48       call sub_48dbh       	;. . H
	ram:46fc cd 0f 47       call sub_470fh       	;. . G
	ram:46ff c3 fa 45       jp l45fah            	;. . E
sub_4702h:
	ram:4702 cd db 48       call sub_48dbh       	;. . H
	ram:4705 c3 fa 45       jp l45fah            	;. . E
sub_4708h:
	ram:4708 cd 65 4b       call sub_4b65h       	;. e K
	ram:470b df             rst 18h              	;.
	ram:470c cd fa 45       call l45fah          	;. . E
sub_470fh:
	ram:470f fd cb 07 a6    res 4,(iy+007h)      	;. . . .
	ram:4713 c9             ret                  	;.
sub_4714h:
	ram:4714 cd 65 4b       call sub_4b65h       	;. e K
	ram:4717 df             rst 18h              	;.
	ram:4718 cd fa 45       call l45fah          	;. . E
sub_471bh:
	ram:471b cd bf 2d       call 02dbfh          	;. . -
	ram:471e df             rst 18h              	;.
	ram:471f cd 60 20       call 02060h          	;. `  
	ram:4722 cd 07 20       call 02007h          	;. .  
	ram:4725 df             rst 18h              	;.
	ram:4726 cd 3e 21       call 0213eh          	;. > !
l4729h:
	ram:4729 cd 9b 49       call sub_499bh       	;. . I
	ram:472c cd 0f 47       call sub_470fh       	;. . G
	ram:472f c3 4b 46       jp sub_464bh         	;. K F
sub_4732h:
	ram:4732 fd 7e 07       ld a,(iy+007h)       	;. ~ .
	ram:4735 f5             push af              	;.
	ram:4736 cd 08 47       call sub_4708h       	;. . G
	ram:4739 f1             pop af               	;.
	ram:473a f5             push af              	;.
	ram:473b cd 42 47       call sub_4742h       	;. B G
	ram:473e cd 4d 47       call sub_474dh       	;. M G
	ram:4741 f1             pop af               	;.
sub_4742h:
	ram:4742 fd 77 07       ld (iy+007h),a       	;. w .
	ram:4745 c9             ret                  	;.
sub_4746h:
	ram:4746 cd 65 4b       call sub_4b65h       	;. e K
	ram:4749 df             rst 18h              	;.
	ram:474a cd fa 45       call l45fah          	;. . E
sub_474dh:
	ram:474d cd bf 2d       call 02dbfh          	;. . -
	ram:4750 df             rst 18h              	;.
	ram:4751 cd 3e 21       call 0213eh          	;. > !
	ram:4754 df             rst 18h              	;.
	ram:4755 cd 60 20       call 02060h          	;. `  
	ram:4758 cd 07 20       call 02007h          	;. .  
	ram:475b 18 cc          jr l4729h            	;. .
sub_475dh:
	ram:475d f5             push af              	;.
	ram:475e cd 44 4b       call sub_4b44h       	;. D K
	ram:4761 f1             pop af               	;.
	ram:4762 fe aa          cp 0aah              	;. .
	ram:4764 20 06          jr nz,l476ch         	;.
	ram:4766 cd de 45       call sub_45deh       	;. . E
	ram:4769 c3 c5 45       jp sub_45c5h         	;. . E
l476ch:
	ram:476c fe ac          cp 0ach              	;. .
	ram:476e 20 08          jr nz,l4778h         	;.
	ram:4770 cd c0 45       call sub_45c0h       	;. . E
	ram:4773 cd c5 45       call sub_45c5h       	;. . E
	ram:4776 18 46          jr l47beh            	;. F
l4778h:
	ram:4778 fe ae          cp 0aeh              	;. .
	ram:477a 20 15          jr nz,l4791h         	;.
	ram:477c cd 4e 45       call sub_454eh       	;. N E
	ram:477f cd 5f 4b       call sub_4b5fh       	;. _ K
	ram:4782 cd f2 45       call sub_45f2h       	;. . E
	ram:4785 cd 0f 47       call sub_470fh       	;. . G
	ram:4788 cd 4b 46       call sub_464bh       	;. K F
	ram:478b cd c5 45       call sub_45c5h       	;. . E
	ram:478e c3 af 46       jp sub_46afh         	;. . F
l4791h:
	ram:4791 fe ab          cp 0abh              	;. .
	ram:4793 20 12          jr nz,l47a7h         	;.
sub_4795h:
	ram:4795 cd 9b 47       call sub_479bh       	;. . G
	ram:4798 c3 0a 46       jp sub_460ah         	;. . F
sub_479bh:
	ram:479b df             rst 18h              	;.
	ram:479c cd 46 47       call sub_4746h       	;. F G
sub_479fh:
	ram:479f cd 78 48       call sub_4878h       	;. x H
l47a2h:
	ram:47a2 3e 71          ld a,071h            	;> q
	ram:47a4 c3 74 4c       jp sub_4c74h         	;. t L
l47a7h:
	ram:47a7 fe ad          cp 0adh              	;. .
	ram:47a9 20 05          jr nz,l47b0h         	;.
	ram:47ab cd 95 47       call sub_4795h       	;. . G
	ram:47ae 18 0e          jr l47beh            	;. .
l47b0h:
	ram:47b0 fe af          cp 0afh              	;. .
	ram:47b2 20 0d          jr nz,l47c1h         	;.
	ram:47b4 df             rst 18h              	;.
	ram:47b5 cd f6 46       call sub_46f6h       	;. . F
	ram:47b8 cd 45 48       call sub_4845h       	;. E H
	ram:47bb cd 0a 46       call sub_460ah       	;. . F
l47beh:
	ram:47be c3 e6 45       jp l45e6h            	;. . E
l47c1h:
	ram:47c1 fe a8          cp 0a8h              	;. .
	ram:47c3 20 08          jr nz,l47cdh         	;.
	ram:47c5 cd db 48       call sub_48dbh       	;. . H
	ram:47c8 cd 35 46       call sub_4635h       	;. 5 F
	ram:47cb 18 f1          jr l47beh            	;. .
l47cdh:
	ram:47cd fe a6          cp 0a6h              	;. .
	ram:47cf 20 06          jr nz,l47d7h         	;.
	ram:47d1 cd db 48       call sub_48dbh       	;. . H
	ram:47d4 c3 5a 46       jp l465ah            	;. Z F
l47d7h:
	ram:47d7 fe a9          cp 0a9h              	;. .
	ram:47d9 20 06          jr nz,l47e1h         	;.
	ram:47db cd 42 46       call sub_4642h       	;. B F
	ram:47de c3 45 46       jp sub_4645h         	;. E F
l47e1h:
	ram:47e1 fe a7          cp 0a7h              	;. .
l47e3h:
	ram:47e3 ca b6 56       jp z,sub_56b6h       	;. . V
	ram:47e6 fe 49          cp 049h              	;. I
	ram:47e8 20 0b          jr nz,l47f5h         	;.
	ram:47ea cd 86 48       call sub_4886h       	;. . H
	ram:47ed 3e 49          ld a,049h            	;> I
	ram:47ef cd b6 56       call sub_56b6h       	;. . V
	ram:47f2 c3 af 46       jp sub_46afh         	;. . F
l47f5h:
	ram:47f5 fe b0          cp 0b0h              	;. .
	ram:47f7 28 ea          jr z,l47e3h          	;( .
	ram:47f9 fe b2          cp 0b2h              	;. .
	ram:47fb 28 e6          jr z,l47e3h          	;( .
	ram:47fd fe b4          cp 0b4h              	;. .
	ram:47ff 20 25          jr nz,l4826h         	;%
	ram:4801 df             rst 18h              	;.
	ram:4802 cd 65 4b       call sub_4b65h       	;. e K
	ram:4805 cd 65 46       call sub_4665h       	;. e F
	ram:4808 cd 0f 47       call sub_470fh       	;. . G
	ram:480b cd 86 48       call sub_4886h       	;. . H
	ram:480e cd 17 46       call sub_4617h       	;. . F
	ram:4811 cd bf 2d       call 02dbfh          	;. . -
	ram:4814 df             rst 18h              	;.
	ram:4815 cd 60 20       call 02060h          	;. `  
	ram:4818 cd 07 20       call 02007h          	;. .  
	ram:481b cd 6d 46       call sub_466dh       	;. m F
	ram:481e cd 4b 46       call sub_464bh       	;. K F
	ram:4821 cd af 46       call sub_46afh       	;. . F
l4824h:
	ram:4824 18 98          jr l47beh            	;. .
l4826h:
	ram:4826 fe b1          cp 0b1h              	;. .
	ram:4828 20 09          jr nz,l4833h         	;.
	ram:482a df             rst 18h              	;.
	ram:482b cd f6 46       call sub_46f6h       	;. . F
l482eh:
	ram:482e cd 9f 47       call sub_479fh       	;. . G
	ram:4831 18 f1          jr l4824h            	;. .
l4833h:
	ram:4833 fe b3          cp 0b3h              	;. .
	ram:4835 20 06          jr nz,l483dh         	;.
	ram:4837 df             rst 18h              	;.
	ram:4838 cd 14 47       call sub_4714h       	;. . G
	ram:483b 18 f1          jr l482eh            	;. .
l483dh:
	ram:483d fe b5          cp 0b5h              	;. .
	ram:483f 20 0a          jr nz,l484bh         	;.
	ram:4841 df             rst 18h              	;.
	ram:4842 cd 46 47       call sub_4746h       	;. F G
sub_4845h:
	ram:4845 cd 95 48       call sub_4895h       	;. . H
	ram:4848 c3 af 46       jp sub_46afh         	;. . F
l484bh:
	ram:484b fe 4a          cp 04ah              	;. J
	ram:484d 20 0d          jr nz,l485ch         	;.
	ram:484f df             rst 18h              	;.
	ram:4850 cd 98 21       call 02198h          	;. . !
	ram:4853 cd 7c 45       call sub_457ch       	;. | E
	ram:4856 cd 56 21       call 02156h          	;. V !
	ram:4859 c3 fe 45       jp l45feh            	;. . E
l485ch:
	ram:485c fe a0          cp 0a0h              	;. .
	ram:485e 20 0d          jr nz,l486dh         	;.
	ram:4860 cd 78 48       call sub_4878h       	;. x H
	ram:4863 df             rst 18h              	;.
	ram:4864 cd 43 21       call 02143h          	;. C !
	ram:4867 cd 4b 46       call sub_464bh       	;. K F
	ram:486a c3 5a 46       jp l465ah            	;. Z F
l486dh:
	ram:486d fe a2          cp 0a2h              	;. .
	ram:486f c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:4872 df             rst 18h              	;.
	ram:4873 cd 98 21       call 02198h          	;. . !
	ram:4876 18 57          jr l48cfh            	;. W
sub_4878h:
	ram:4878 df             rst 18h              	;.
	ram:4879 cd 3e 21       call 0213eh          	;. > !
	ram:487c 3e 15          ld a,015h            	;> .
	ram:487e 32 85 80       ld (08085h),a        	;2 . .
l4881h:
	ram:4881 3e f0          ld a,0f0h            	;> .
	ram:4883 c3 74 4c       jp sub_4c74h         	;. t L
sub_4886h:
	ram:4886 df             rst 18h              	;.
	ram:4887 cd 4a 21       call 0214ah          	;. J !
	ram:488a 18 f5          jr l4881h            	;. .
sub_488ch:
	ram:488c cd 50 4b       call sub_4b50h       	;. P K
	ram:488f df             rst 18h              	;.
	ram:4890 cd 44 4b       call sub_4b44h       	;. D K
	ram:4893 18 ec          jr l4881h            	;. .
sub_4895h:
	ram:4895 cd db 48       call sub_48dbh       	;. . H
	ram:4898 c3 a2 47       jp l47a2h            	;. . G
sub_489bh:
	ram:489b df             rst 18h              	;.
	ram:489c cd 50 4b       call sub_4b50h       	;. P K
	ram:489f 18 2e          jr l48cfh            	;. .
sub_48a1h:
	ram:48a1 cd 40 4b       call sub_4b40h       	;. @ K
	ram:48a4 cd 9b 48       call sub_489bh       	;. . H
	ram:48a7 df             rst 18h              	;.
sub_48a8h:
	ram:48a8 cd 4c 4b       call sub_4b4ch       	;. L K
l48abh:
	ram:48ab df             rst 18h              	;.
	ram:48ac cd 44 4b       call sub_4b44h       	;. D K
	ram:48af 18 1e          jr l48cfh            	;. .
sub_48b1h:
	ram:48b1 cd 4c 4b       call sub_4b4ch       	;. L K
	ram:48b4 cd ba 48       call sub_48bah       	;. . H
	ram:48b7 c3 af 46       jp sub_46afh         	;. . F
sub_48bah:
	ram:48ba df             rst 18h              	;.
	ram:48bb cd 40 4b       call sub_4b40h       	;. @ K
	ram:48be 18 0f          jr l48cfh            	;. .
sub_48c0h:
	ram:48c0 cd 48 4b       call sub_4b48h       	;. H K
	ram:48c3 18 e6          jr l48abh            	;. .
sub_48c5h:
	ram:48c5 cd 50 4b       call sub_4b50h       	;. P K
	ram:48c8 df             rst 18h              	;.
	ram:48c9 cd 00 49       call sub_4900h       	;. . I
sub_48cch:
	ram:48cc cd 81 48       call l4881h          	;. . H
l48cfh:
	ram:48cf c3 4b 46       jp sub_464bh         	;. K F
sub_48d2h:
	ram:48d2 df             rst 18h              	;.
	ram:48d3 cd 4c 4b       call sub_4b4ch       	;. L K
	ram:48d6 cd db 48       call sub_48dbh       	;. . H
	ram:48d9 18 f4          jr l48cfh            	;. .
sub_48dbh:
	ram:48db 3e 4a          ld a,04ah            	;> J
	ram:48dd c3 b6 56       jp sub_56b6h         	;. . V
sub_48e0h:
	ram:48e0 df             rst 18h              	;.
	ram:48e1 cd 50 4b       call sub_4b50h       	;. P K
	ram:48e4 c3 a2 47       jp l47a2h            	;. . G
sub_48e7h:
	ram:48e7 df             rst 18h              	;.
	ram:48e8 cd a8 48       call sub_48a8h       	;. . H
	ram:48eb cd e0 48       call sub_48e0h       	;. . H
	ram:48ee df             rst 18h              	;.
	ram:48ef cd 50 4b       call sub_4b50h       	;. P K
	ram:48f2 3e a6          ld a,0a6h            	;> .
	ram:48f4 cd b6 56       call sub_56b6h       	;. . V
	ram:48f7 cd ba 48       call sub_48bah       	;. . H
sub_48fah:
	ram:48fa cd fe 45       call l45feh          	;. . E
	ram:48fd c3 4b 46       jp sub_464bh         	;. K F
sub_4900h:
	ram:4900 cd 44 4b       call sub_4b44h       	;. D K
sub_4903h:
	ram:4903 df             rst 18h              	;.
	ram:4904 cd 3e 21       call 0213eh          	;. > !
	ram:4907 c3 9b 49       jp sub_499bh         	;. . I
sub_490ah:
	ram:490a fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:490e f5             push af              	;.
	ram:490f 28 06          jr z,l4917h          	;( .
	ram:4911 cd cf 2d       call 02dcfh          	;. . -
	ram:4914 cd 1b 4b       call sub_4b1bh       	;. . K
l4917h:
	ram:4917 cd 5f 4b       call sub_4b5fh       	;. _ K
	ram:491a cd cf 2d       call 02dcfh          	;. . -
	ram:491d cd 1f 4b       call sub_4b1fh       	;. . K
	ram:4920 cd cf 2d       call 02dcfh          	;. . -
	ram:4923 cd 23 4b       call sub_4b23h       	;. # K
	ram:4926 f1             pop af               	;.
	ram:4927 c9             ret                  	;.
	ram:4928 cd 0a 49       call sub_490ah       	;. . I
	ram:492b f5             push af              	;.
	ram:492c cd cf 2d       call 02dcfh          	;. . -
	ram:492f f1             pop af               	;.
	ram:4930 f5             push af              	;.
	ram:4931 28 06          jr z,l4939h          	;( .
	ram:4933 cd 27 4b       call sub_4b27h       	;. ' K
	ram:4936 cd cf 2d       call 02dcfh          	;. . -
l4939h:
	ram:4939 cd 2b 4b       call sub_4b2bh       	;. + K
	ram:493c cd cf 2d       call 02dcfh          	;. . -
	ram:493f cd 2f 4b       call sub_4b2fh       	;. / K
	ram:4942 df             rst 18h              	;.
	ram:4943 cd 44 4b       call sub_4b44h       	;. D K
	ram:4946 f1             pop af               	;.
	ram:4947 f5             push af              	;.
	ram:4948 cd 74 4c       call sub_4c74h       	;. t L
	ram:494b df             rst 18h              	;.
	ram:494c f1             pop af               	;.
	ram:494d f5             push af              	;.
	ram:494e fe 60          cp 060h              	;. `
	ram:4950 20 28          jr nz,l497ah         	;(
	ram:4952 cd 0f 47       call sub_470fh       	;. . G
	ram:4955 cd 4c 4b       call sub_4b4ch       	;. L K
	ram:4958 df             rst 18h              	;.
	ram:4959 cd 40 4b       call sub_4b40h       	;. @ K
	ram:495c cd fe 45       call l45feh          	;. . E
	ram:495f f1             pop af               	;.
	ram:4960 28 0b          jr z,l496dh          	;( .
	ram:4962 df             rst 18h              	;.
	ram:4963 cd 48 4b       call sub_4b48h       	;. H K
	ram:4966 df             rst 18h              	;.
	ram:4967 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:496a cd fe 45       call l45feh          	;. . E
l496dh:
	ram:496d df             rst 18h              	;.
	ram:496e cd 44 4b       call sub_4b44h       	;. D K
	ram:4971 cd f9 49       call sub_49f9h       	;. . I
	ram:4974 cd 50 4b       call sub_4b50h       	;. P K
	ram:4977 c3 f9 49       jp sub_49f9h         	;. . I
l497ah:
	ram:497a fe 61          cp 061h              	;. a
	ram:497c 20 22          jr nz,l49a0h         	;"
	ram:497e cd 0f 47       call sub_470fh       	;. . G
	ram:4981 cd 4c 4b       call sub_4b4ch       	;. L K
	ram:4984 df             rst 18h              	;.
	ram:4985 cd 40 4b       call sub_4b40h       	;. @ K
	ram:4988 cd 9b 49       call sub_499bh       	;. . I
	ram:498b f1             pop af               	;.
	ram:498c 28 df          jr z,l496dh          	;( .
	ram:498e df             rst 18h              	;.
	ram:498f cd 48 4b       call sub_4b48h       	;. H K
	ram:4992 df             rst 18h              	;.
	ram:4993 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:4996 cd 9b 49       call sub_499bh       	;. . I
	ram:4999 18 d2          jr l496dh            	;. .
sub_499bh:
	ram:499b 3e 61          ld a,061h            	;> a
	ram:499d c3 74 4c       jp sub_4c74h         	;. t L
l49a0h:
	ram:49a0 fe 70          cp 070h              	;. p
	ram:49a2 20 2c          jr nz,l49d0h         	;,
	ram:49a4 f1             pop af               	;.
	ram:49a5 20 0b          jr nz,l49b2h         	;.
	ram:49a7 cd 0f 47       call sub_470fh       	;. . G
sub_49aah:
	ram:49aa cd a1 48       call sub_48a1h       	;. . H
sub_49adh:
	ram:49ad cd fe 45       call l45feh          	;. . E
	ram:49b0 df             rst 18h              	;.
	ram:49b1 c9             ret                  	;.
l49b2h:
	ram:49b2 cd aa 49       call sub_49aah       	;. . I
	ram:49b5 cd 0f 47       call sub_470fh       	;. . G
	ram:49b8 cd b1 48       call sub_48b1h       	;. . H
	ram:49bb df             rst 18h              	;.
	ram:49bc cd c0 48       call sub_48c0h       	;. . H
	ram:49bf cd ad 49       call sub_49adh       	;. . I
	ram:49c2 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:49c5 cd 9b 48       call sub_489bh       	;. . H
	ram:49c8 18 e3          jr sub_49adh         	;. .
sub_49cah:
	ram:49ca cd 9b 48       call sub_489bh       	;. . H
	ram:49cd c3 fe 45       jp l45feh            	;. . E
l49d0h:
	ram:49d0 fe 71          cp 071h              	;. q
	ram:49d2 c2 5b 4a       jp nz,l4a5bh         	;. [ J
	ram:49d5 f1             pop af               	;.
	ram:49d6 20 2a          jr nz,l4a02h         	;*
	ram:49d8 cd 4c 4b       call sub_4b4ch       	;. L K
	ram:49db df             rst 18h              	;.
	ram:49dc cd 44 4b       call sub_4b44h       	;. D K
	ram:49df cd 7c 45       call sub_457ch       	;. | E
	ram:49e2 cd 0f 47       call sub_470fh       	;. . G
	ram:49e5 cd 40 4b       call sub_4b40h       	;. @ K
	ram:49e8 cd 9b 48       call sub_489bh       	;. . H
	ram:49eb cd 9b 49       call sub_499bh       	;. . I
	ram:49ee df             rst 18h              	;.
	ram:49ef cd 44 4b       call sub_4b44h       	;. D K
	ram:49f2 cd 95 48       call sub_4895h       	;. . H
	ram:49f5 df             rst 18h              	;.
sub_49f6h:
	ram:49f6 cd 4c 4b       call sub_4b4ch       	;. L K
sub_49f9h:
	ram:49f9 3a 82 80       ld a,(08082h)        	;: . .
	ram:49fc e6 1e          and 01eh             	;. .
	ram:49fe c8             ret z                	;.
	ram:49ff c3 60 26       jp 02660h            	;. ` &
l4a02h:
	ram:4a02 cd a1 48       call sub_48a1h       	;. . H
	ram:4a05 cd 9b 49       call sub_499bh       	;. . I
	ram:4a08 cd e6 45       call l45e6h          	;. . E
	ram:4a0b df             rst 18h              	;.
	ram:4a0c cd 44 4b       call sub_4b44h       	;. D K
	ram:4a0f cd 95 48       call sub_4895h       	;. . H
	ram:4a12 df             rst 18h              	;.
	ram:4a13 cd c0 48       call sub_48c0h       	;. . H
	ram:4a16 df             rst 18h              	;.
	ram:4a17 cd b1 48       call sub_48b1h       	;. . H
	ram:4a1a cd 9b 49       call sub_499bh       	;. . I
	ram:4a1d cd ab 48       call l48abh          	;. . H
	ram:4a20 df             rst 18h              	;.
	ram:4a21 cd 40 4b       call sub_4b40h       	;. @ K
	ram:4a24 cd 0f 47       call sub_470fh       	;. . G
	ram:4a27 cd ba 48       call sub_48bah       	;. . H
	ram:4a2a cd af 46       call sub_46afh       	;. . F
	ram:4a2d df             rst 18h              	;.
	ram:4a2e cd 65 4b       call sub_4b65h       	;. e K
	ram:4a31 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:4a34 cd ab 48       call l48abh          	;. . H
	ram:4a37 cd 9b 49       call sub_499bh       	;. . I
	ram:4a3a cd 0f 47       call sub_470fh       	;. . G
	ram:4a3d cd ca 49       call sub_49cah       	;. . I
	ram:4a40 df             rst 18h              	;.
	ram:4a41 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:4a44 cd f9 49       call sub_49f9h       	;. . I
	ram:4a47 cd 48 4b       call sub_4b48h       	;. H K
	ram:4a4a cd f9 49       call sub_49f9h       	;. . I
	ram:4a4d cd f6 49       call sub_49f6h       	;. . I
	ram:4a50 cd 44 4b       call sub_4b44h       	;. D K
	ram:4a53 cd 86 48       call sub_4886h       	;. . H
	ram:4a56 cd a2 47       call l47a2h          	;. . G
	ram:4a59 df             rst 18h              	;.
	ram:4a5a c9             ret                  	;.
l4a5bh:
	ram:4a5b fe f0          cp 0f0h              	;. .
	ram:4a5d c2 4d 0a       jp nz,00a4dh         	;. M .
	ram:4a60 cd 40 4b       call sub_4b40h       	;. @ K
	ram:4a63 cd 38 4c       call sub_4c38h       	;. 8 L
	ram:4a66 20 42          jr nz,l4aaah         	;B
	ram:4a68 cd a8 48       call sub_48a8h       	;. . H
	ram:4a6b df             rst 18h              	;.
	ram:4a6c cd c5 48       call sub_48c5h       	;. . H
	ram:4a6f f1             pop af               	;.
	ram:4a70 28 41          jr z,l4ab3h          	;( A
	ram:4a72 df             rst 18h              	;.
	ram:4a73 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:4a76 cd 38 4c       call sub_4c38h       	;. 8 L
	ram:4a79 20 48          jr nz,l4ac3h         	;H
	ram:4a7b cd 48 4b       call sub_4b48h       	;. H K
	ram:4a7e df             rst 18h              	;.
	ram:4a7f cd c5 48       call sub_48c5h       	;. . H
	ram:4a82 df             rst 18h              	;.
	ram:4a83 cd 00 49       call sub_4900h       	;. . I
	ram:4a86 df             rst 18h              	;.
	ram:4a87 cd 50 4b       call sub_4b50h       	;. P K
	ram:4a8a df             rst 18h              	;.
	ram:4a8b cd 00 49       call sub_4900h       	;. . I
	ram:4a8e cd 03 49       call sub_4903h       	;. . I
	ram:4a91 cd 0f 47       call sub_470fh       	;. . G
	ram:4a94 cd cc 48       call sub_48cch       	;. . H
	ram:4a97 cd d2 48       call sub_48d2h       	;. . H
	ram:4a9a cd fe 45       call l45feh          	;. . E
	ram:4a9d cd ab 48       call l48abh          	;. . H
	ram:4aa0 df             rst 18h              	;.
	ram:4aa1 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:4aa4 cd f9 49       call sub_49f9h       	;. . I
	ram:4aa7 c3 0f 4b       jp l4b0fh            	;. . K
l4aaah:
	ram:4aaa cd 8c 48       call sub_488ch       	;. . H
	ram:4aad cd e7 48       call sub_48e7h       	;. . H
	ram:4ab0 f1             pop af               	;.
	ram:4ab1 20 0f          jr nz,l4ac2h         	;.
l4ab3h:
	ram:4ab3 cd 0f 47       call sub_470fh       	;. . G
	ram:4ab6 cd 6d 49       call l496dh          	;. m I
	ram:4ab9 cd 40 4b       call sub_4b40h       	;. @ K
	ram:4abc cd f9 49       call sub_49f9h       	;. . I
	ram:4abf c3 f6 49       jp sub_49f6h         	;. . I
l4ac2h:
	ram:4ac2 df             rst 18h              	;.
l4ac3h:
	ram:4ac3 cd 5f 4b       call sub_4b5fh       	;. _ K
	ram:4ac6 cd e7 48       call sub_48e7h       	;. . H
	ram:4ac9 df             rst 18h              	;.
	ram:4aca cd 8c 48       call sub_488ch       	;. . H
	ram:4acd df             rst 18h              	;.
	ram:4ace cd c0 48       call sub_48c0h       	;. . H
	ram:4ad1 cd e0 48       call sub_48e0h       	;. . H
	ram:4ad4 df             rst 18h              	;.
	ram:4ad5 cd b1 48       call sub_48b1h       	;. . H
	ram:4ad8 cd e0 48       call sub_48e0h       	;. . H
	ram:4adb cd ad 49       call sub_49adh       	;. . I
	ram:4ade cd 44 4b       call sub_4b44h       	;. D K
	ram:4ae1 cd 0f 47       call sub_470fh       	;. . G
	ram:4ae4 cd d2 48       call sub_48d2h       	;. . H
	ram:4ae7 df             rst 18h              	;.
	ram:4ae8 cd 65 4b       call sub_4b65h       	;. e K
	ram:4aeb cd 50 4b       call sub_4b50h       	;. P K
	ram:4aee cd db 48       call sub_48dbh       	;. . H
	ram:4af1 cd 0f 47       call sub_470fh       	;. . G
	ram:4af4 cd a2 47       call l47a2h          	;. . G
	ram:4af7 cd 9b 49       call sub_499bh       	;. . I
	ram:4afa df             rst 18h              	;.
	ram:4afb cd 50 4b       call sub_4b50h       	;. P K
	ram:4afe 3e a6          ld a,0a6h            	;> .
	ram:4b00 cd 4e 45       call sub_454eh       	;. N E
	ram:4b03 cd 3c 4b       call sub_4b3ch       	;. < K
	ram:4b06 cd 4b 46       call sub_464bh       	;. K F
	ram:4b09 cd fa 48       call sub_48fah       	;. . H
	ram:4b0c cd ad 49       call sub_49adh       	;. . I
l4b0fh:
	ram:4b0f cd 40 4b       call sub_4b40h       	;. @ K
	ram:4b12 cd f9 49       call sub_49f9h       	;. . I
	ram:4b15 cd 48 4b       call sub_4b48h       	;. H K
	ram:4b18 c3 f9 49       jp sub_49f9h         	;. . I
sub_4b1bh:
	ram:4b1b 1e 14          ld e,014h            	;. .
	ram:4b1d 18 12          jr l4b31h            	;. .
sub_4b1fh:
	ram:4b1f 1e 28          ld e,028h            	;. (
	ram:4b21 18 0e          jr l4b31h            	;. .
sub_4b23h:
	ram:4b23 1e 3c          ld e,03ch            	;. <
	ram:4b25 18 0a          jr l4b31h            	;. .
sub_4b27h:
	ram:4b27 1e 50          ld e,050h            	;. P
	ram:4b29 18 06          jr l4b31h            	;. .
sub_4b2bh:
	ram:4b2b 1e 64          ld e,064h            	;. d
	ram:4b2d 18 02          jr l4b31h            	;. .
sub_4b2fh:
	ram:4b2f 1e 78          ld e,078h            	;. x
l4b31h:
	ram:4b31 2a 2b 86       ld hl,(0862bh)       	;* + .
	ram:4b34 af             xor a                	;.
	ram:4b35 57             ld d,a               	;W
	ram:4b36 ed 52          sbc hl,de            	;. R
	ram:4b38 eb             ex de,hl             	;.
	ram:4b39 c3 e5 1f       jp 01fe5h            	;. . .
sub_4b3ch:
	ram:4b3c 1e 14          ld e,014h            	;. .
	ram:4b3e 18 12          jr l4b52h            	;. .
sub_4b40h:
	ram:4b40 1e 28          ld e,028h            	;. (
	ram:4b42 18 0e          jr l4b52h            	;. .
sub_4b44h:
	ram:4b44 1e 3c          ld e,03ch            	;. <
	ram:4b46 18 0a          jr l4b52h            	;. .
sub_4b48h:
	ram:4b48 1e 50          ld e,050h            	;. P
	ram:4b4a 18 06          jr l4b52h            	;. .
sub_4b4ch:
	ram:4b4c 1e 64          ld e,064h            	;. d
	ram:4b4e 18 02          jr l4b52h            	;. .
sub_4b50h:
	ram:4b50 1e 78          ld e,078h            	;. x
l4b52h:
	ram:4b52 2a 2b 86       ld hl,(0862bh)       	;* + .
	ram:4b55 af             xor a                	;.
	ram:4b56 57             ld d,a               	;W
	ram:4b57 ed 52          sbc hl,de            	;. R
	ram:4b59 11 82 80       ld de,08082h         	;. . .
	ram:4b5c c3 02 2e       jp 02e02h            	;. . .
sub_4b5fh:
	ram:4b5f 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:4b62 22 2d 86       ld (0862dh),hl       	;" - .
sub_4b65h:
	ram:4b65 fd cb 07 e6    set 4,(iy+007h)      	;. . . .
	ram:4b69 c9             ret                  	;.
sub_4b6ah:
	ram:4b6a f5             push af              	;.
	ram:4b6b cd 1a 2f       call 02f1ah          	;. . /
	ram:4b6e cd 2c 4c       call sub_4c2ch       	;. , L
	ram:4b71 df             rst 18h              	;.
	ram:4b72 cd 60 20       call 02060h          	;. `  
	ram:4b75 cd 2f 7e       call sub_7e2fh       	;. / ~
	ram:4b78 cd cf 2d       call 02dcfh          	;. . -
	ram:4b7b 21 8d 4b       ld hl,l4b8dh         	;! . K
	ram:4b7e cd b5 0a       call 00ab5h          	;. . .
	ram:4b81 cd 55 4c       call sub_4c55h       	;. U L
	ram:4b84 df             rst 18h              	;.
	ram:4b85 cd 60 20       call 02060h          	;. `  
	ram:4b88 cd af 3a       call 03aafh          	;. . :
	ram:4b8b 18 1f          jr l4bach            	;. .
l4b8dh:
	ram:4b8d f1             pop af               	;.
	ram:4b8e 21 31 86       ld hl,08631h         	;! 1 .
	ram:4b91 35             dec (hl)             	;5
	ram:4b92 c3 28 5f       jp l5f28h            	;. ( _
sub_4b95h:
	ram:4b95 f5             push af              	;.
	ram:4b96 cd 40 2e       call 02e40h          	;. @ .
	ram:4b99 cd 4a 2e       call 02e4ah          	;. J .
	ram:4b9c d7             rst 10h              	;.
	ram:4b9d da 38 0a       jp c,00a38h          	;. 8 .
	ram:4ba0 cd 2f 7e       call sub_7e2fh       	;. / ~
	ram:4ba3 21 8d 4b       ld hl,l4b8dh         	;! . K
	ram:4ba6 cd b5 0a       call 00ab5h          	;. . .
	ram:4ba9 cd 55 4c       call sub_4c55h       	;. U L
l4bach:
	ram:4bac cd 59 26       call 02659h          	;. Y &
	ram:4baf cd b5 3a       call 03ab5h          	;. . :
	ram:4bb2 d7             rst 10h              	;.
	ram:4bb3 cd bb 3a       call 03abbh          	;. . :
	ram:4bb6 3a 82 80       ld a,(08082h)        	;: . .
	ram:4bb9 e6 1e          and 01eh             	;. .
	ram:4bbb 28 0c          jr z,l4bc9h          	;( .
	ram:4bbd df             rst 18h              	;.
	ram:4bbe cd 98 21       call 02198h          	;. . !
	ram:4bc1 cd ad 49       call sub_49adh       	;. . I
	ram:4bc4 cd b5 3a       call 03ab5h          	;. . :
	ram:4bc7 18 04          jr l4bcdh            	;. .
l4bc9h:
	ram:4bc9 cd c1 3a       call 03ac1h          	;. . :
	ram:4bcc df             rst 18h              	;.
l4bcdh:
	ram:4bcd df             rst 18h              	;.
	ram:4bce 3e 22          ld a,022h            	;> "
	ram:4bd0 cd c7 3a       call 03ac7h          	;. . :
	ram:4bd3 cd fe 45       call l45feh          	;. . E
	ram:4bd6 cd 1c 4c       call sub_4c1ch       	;. . L
	ram:4bd9 cd 47 1f       call 01f47h          	;. G .
	ram:4bdc cd 17 62       call sub_6217h       	;. . b
	ram:4bdf cd bf 2d       call 02dbfh          	;. . -
	ram:4be2 cd 59 26       call 02659h          	;. Y &
	ram:4be5 df             rst 18h              	;.
	ram:4be6 cd 6f 2e       call 02e6fh          	;. o .
	ram:4be9 21 10 84       ld hl,08410h         	;! . .
	ram:4bec e7             rst 20h              	;.
	ram:4bed cd 9b 49       call sub_499bh       	;. . I
	ram:4bf0 cd 1c 4c       call sub_4c1ch       	;. . L
	ram:4bf3 cd 9b 49       call sub_499bh       	;. . I
l4bf6h:
	ram:4bf6 df             rst 18h              	;.
	ram:4bf7 21 10 84       ld hl,08410h         	;! . .
	ram:4bfa e7             rst 20h              	;.
	ram:4bfb cd 66 0d       call 00d66h          	;. f .
	ram:4bfe cd a2 47       call l47a2h          	;. . G
	ram:4c01 cd db 0a       call 00adbh          	;. . .
	ram:4c04 21 31 86       ld hl,08631h         	;! 1 .
	ram:4c07 35             dec (hl)             	;5
	ram:4c08 cd 15 5f       call sub_5f15h       	;. . _
	ram:4c0b f1             pop af               	;.
	ram:4c0c c2 0c 2e       jp nz,02e0ch         	;. . .
	ram:4c0f cd ea 2d       call 02deah          	;. . -
	ram:4c12 df             rst 18h              	;.
	ram:4c13 cd 60 20       call 02060h          	;. `  
	ram:4c16 cd 60 26       call 02660h          	;. ` &
	ram:4c19 c3 cf 2d       jp 02dcfh            	;. . -
sub_4c1ch:
	ram:4c1c df             rst 18h              	;.
	ram:4c1d cd b5 3a       call 03ab5h          	;. . :
	ram:4c20 cd af 3a       call 03aafh          	;. . :
	ram:4c23 cd cd 3a       call 03acdh          	;. . :
	ram:4c26 cd d3 3a       call 03ad3h          	;. . :
	ram:4c29 cd 9c 26       call 0269ch          	;. . &
sub_4c2ch:
	ram:4c2c 3a 82 80       ld a,(08082h)        	;: . .
	ram:4c2f e6 1e          and 01eh             	;. .
	ram:4c31 c8             ret z                	;.
	ram:4c32 fe 04          cp 004h              	;. .
	ram:4c34 c8             ret z                	;.
	ram:4c35 c3 28 0a       jp 00a28h            	;. ( .
sub_4c38h:
	ram:4c38 3a 82 80       ld a,(08082h)        	;: . .
	ram:4c3b e6 1e          and 01eh             	;. .
	ram:4c3d ca 35 71       jp z,l7135h          	;. 5 q
	ram:4c40 cd 3a 56       call sub_563ah       	;. : V
l4c43h:
	ram:4c43 e5             push hl              	;.
	ram:4c44 cd 4b 62       call sub_624bh       	;. K b
	ram:4c47 cd 35 71       call l7135h          	;. 5 q
	ram:4c4a 20 07          jr nz,l4c53h         	;.
	ram:4c4c e1             pop hl               	;.
	ram:4c4d 2b             dec hl               	;+
	ram:4c4e 7c             ld a,h               	;|
	ram:4c4f b5             or l                 	;.
	ram:4c50 c8             ret z                	;.
	ram:4c51 18 f0          jr l4c43h            	;. .
l4c53h:
	ram:4c53 e1             pop hl               	;.
	ram:4c54 c9             ret                  	;.
sub_4c55h:
	ram:4c55 21 31 86       ld hl,08631h         	;! 1 .
	ram:4c58 34             inc (hl)             	;4
	ram:4c59 7e             ld a,(hl)            	;~
	ram:4c5a fe 03          cp 003h              	;. .
	ram:4c5c ca 51 0a       jp z,00a51h          	;. Q .
	ram:4c5f c9             ret                  	;.
l4c60h:
	ram:4c60 00             nop                  	;.
	ram:4c61 fe fb          cp 0fbh              	;. .
	ram:4c63 17             rla                  	;.
	ram:4c64 45             ld b,l               	;E
	ram:4c65 32 92 51       ld (l5192h),a        	;2 . Q
	ram:4c68 99             sbc a,c              	;.
	ram:4c69 43             ld b,e               	;C
l4c6ah:
	ram:4c6a 00             nop                  	;.
	ram:4c6b 01 fc 57       ld bc,057fch         	;. . W
	ram:4c6e 29             add hl,hl            	;)
	ram:4c6f 57             ld d,a               	;W
	ram:4c70 79             ld a,c               	;y
	ram:4c71 51             ld d,c               	;Q
	ram:4c72 30 82          jr nc,l4bf6h         	;0 .
sub_4c74h:
	ram:4c74 cd af 26       call 026afh          	;. . &
	ram:4c77 21 d4 8b       ld hl,08bd4h         	;! . .
	ram:4c7a 36 00          ld (hl),000h         	;6 .
sub_4c7ch:
	ram:4c7c f5             push af              	;.
	ram:4c7d cd 1a 2f       call 02f1ah          	;. . /
	ram:4c80 3a 98 80       ld a,(08098h)        	;: . .
	ram:4c83 e6 1f          and 01fh             	;. .
	ram:4c85 57             ld d,a               	;W
	ram:4c86 fe 01          cp 001h              	;. .
	ram:4c88 c4 0c 2e       call nz,02e0ch       	;. . .
	ram:4c8b 7a             ld a,d               	;z
	ram:4c8c cd c7 21       call 021c7h          	;. . !
	ram:4c8f 47             ld b,a               	;G
	ram:4c90 cd 47 1f       call 01f47h          	;. G .
	ram:4c93 80             add a,b              	;.
	ram:4c94 20 04          jr nz,l4c9ah         	;.
	ram:4c96 cf             rst 8                	;.
	ram:4c97 cd 60 20       call 02060h          	;. `  
l4c9ah:
	ram:4c9a 4f             ld c,a               	;O
	ram:4c9b f1             pop af               	;.
	ram:4c9c 47             ld b,a               	;G
	ram:4c9d fe 60          cp 060h              	;. `
	ram:4c9f ca 0d 52       jp z,l520dh          	;. . R
	ram:4ca2 fe 61          cp 061h              	;. a
	ram:4ca4 ca 6e 52       jp z,l526eh          	;. n R
	ram:4ca7 fe 70          cp 070h              	;. p
	ram:4ca9 ca 75 52       jp z,l5275h          	;. u R
	ram:4cac fe 71          cp 071h              	;. q
	ram:4cae ca 50 53       jp z,l5350h          	;. P S
	ram:4cb1 fe f0          cp 0f0h              	;. .
	ram:4cb3 ca d0 4f       jp z,l4fd0h          	;. . O
	ram:4cb6 fe f1          cp 0f1h              	;. .
	ram:4cb8 ca fe 4f       jp z,l4ffeh          	;. . O
	ram:4cbb fe 50          cp 050h              	;. P
	ram:4cbd ca 06 4f       jp z,l4f06h          	;. . O
	ram:4cc0 fe 55          cp 055h              	;. U
	ram:4cc2 ca 06 4f       jp z,l4f06h          	;. . O
	ram:4cc5 fe 12          cp 012h              	;. .
	ram:4cc7 ca 08 50       jp z,l5008h          	;. . P
	ram:4cca fe ef          cp 0efh              	;. .
	ram:4ccc ca 09 51       jp z,l5109h          	;. . Q
	ram:4ccf fe 16          cp 016h              	;. .
	ram:4cd1 ca 88 50       jp z,l5088h          	;. . P
	ram:4cd4 fe 17          cp 017h              	;. .
	ram:4cd6 ca c1 50       jp z,l50c1h          	;. . P
	ram:4cd9 fe 18          cp 018h              	;. .
	ram:4cdb ca d9 50       jp z,l50d9h          	;. . P
	ram:4cde fe 1e          cp 01eh              	;. .
	ram:4ce0 ca 64 4d       jp z,l4d64h          	;. d M
	ram:4ce3 fe 1f          cp 01fh              	;. .
	ram:4ce5 ca 69 4d       jp z,l4d69h          	;. i M
	ram:4ce8 fe 13          cp 013h              	;. .
	ram:4cea ca 6d 4e       jp z,l4e6dh          	;. m N
	ram:4ced fe 14          cp 014h              	;. .
	ram:4cef ca 66 4e       jp z,l4e66h          	;. f N
	ram:4cf2 fe 15          cp 015h              	;. .
	ram:4cf4 ca 6e 4d       jp z,l4d6eh          	;. n M
	ram:4cf7 fe 40          cp 040h              	;. @
	ram:4cf9 28 4e          jr z,l4d49h          	;( N
	ram:4cfb fe 30          cp 030h              	;. 0
	ram:4cfd 28 4f          jr z,l4d4eh          	;( O
	ram:4cff fe 31          cp 031h              	;. 1
	ram:4d01 28 50          jr z,l4d53h          	;( P
	ram:4d03 fe 81          cp 081h              	;. .
	ram:4d05 28 53          jr z,l4d5ah          	;( S
	ram:4d07 fe 80          cp 080h              	;. .
	ram:4d09 28 54          jr z,l4d5fh          	;( T
	ram:4d0b fe 51          cp 051h              	;. Q
	ram:4d0d 28 68          jr z,l4d77h          	;( h
	ram:4d0f fe 53          cp 053h              	;. S
	ram:4d11 28 69          jr z,l4d7ch          	;( i
	ram:4d13 fe 52          cp 052h              	;. R
	ram:4d15 28 6a          jr z,l4d81h          	;( j
	ram:4d17 fe 54          cp 054h              	;. T
	ram:4d19 28 6b          jr z,l4d86h          	;( k
	ram:4d1b fe 2a          cp 02ah              	;. *
	ram:4d1d ca ca 53       jp z,l53cah          	;. . S
	ram:4d20 fe 2b          cp 02bh              	;. +
	ram:4d22 ca d0 53       jp z,l53d0h          	;. . S
	ram:4d25 fe 23          cp 023h              	;. #
	ram:4d27 ca 28 54       jp z,l5428h          	;. ( T
	ram:4d2a fe 22          cp 022h              	;. "
	ram:4d2c ca c7 54       jp z,l54c7h          	;. . T
	ram:4d2f fe 20          cp 020h              	;.  
	ram:4d31 ca ee 54       jp z,l54eeh          	;. . T
	ram:4d34 fe 2c          cp 02ch              	;. ,
	ram:4d36 20 04          jr nz,l4d3ch         	;.
	ram:4d38 cd 95 4b       call sub_4b95h       	;. . K
	ram:4d3b c9             ret                  	;.
l4d3ch:
	ram:4d3c fe fc          cp 0fch              	;. .
	ram:4d3e ca 91 54       jp z,l5491h          	;. . T
	ram:4d41 fe fd          cp 0fdh              	;. .
	ram:4d43 ca c0 54       jp z,l54c0h          	;. . T
	ram:4d46 c3 2c 0a       jp 00a2ch            	;. , .
l4d49h:
	ram:4d49 21 4d 39       ld hl,0394dh         	;! M 9
	ram:4d4c 18 08          jr l4d56h            	;. .
l4d4eh:
	ram:4d4e 21 53 39       ld hl,03953h         	;! S 9
	ram:4d51 18 03          jr l4d56h            	;. .
l4d53h:
	ram:4d53 21 59 39       ld hl,03959h         	;! Y 9
l4d56h:
	ram:4d56 cd 5f 39       call 0395fh          	;. _ 9
	ram:4d59 c9             ret                  	;.
l4d5ah:
	ram:4d5a 21 2f 1e       ld hl,01e2fh         	;! / .
	ram:4d5d 18 12          jr l4d71h            	;. .
l4d5fh:
	ram:4d5f 21 81 1e       ld hl,01e81h         	;! . .
	ram:4d62 18 0d          jr l4d71h            	;. .
l4d64h:
	ram:4d64 21 4f 64       ld hl,l644fh         	;! O d
	ram:4d67 18 08          jr l4d71h            	;. .
l4d69h:
	ram:4d69 21 00 64       ld hl,l6400h         	;! . d
	ram:4d6c 18 1b          jr l4d89h            	;. .
l4d6eh:
	ram:4d6e 21 9a 63       ld hl,l639ah         	;! . c
l4d71h:
	ram:4d71 79             ld a,c               	;y
l4d72h:
	ram:4d72 b7             or a                 	;.
	ram:4d73 c2 28 0a       jp nz,00a28h         	;. ( .
	ram:4d76 e9             jp (hl)              	;.
l4d77h:
	ram:4d77 21 ca 65       ld hl,l65cah         	;! . e
	ram:4d7a 18 0d          jr l4d89h            	;. .
l4d7ch:
	ram:4d7c 21 65 39       ld hl,03965h         	;! e 9
	ram:4d7f 18 08          jr l4d89h            	;. .
l4d81h:
	ram:4d81 21 dc 65       ld hl,l65dch         	;! . e
	ram:4d84 18 03          jr l4d89h            	;. .
l4d86h:
	ram:4d86 21 6b 39       ld hl,0396bh         	;! k 9
l4d89h:
	ram:4d89 79             ld a,c               	;y
	ram:4d8a fe 44          cp 044h              	;. D
	ram:4d8c 20 e4          jr nz,l4d72h         	;.
	ram:4d8e 18 30          jr l4dc0h            	;. 0
l4d90h:
	ram:4d90 d1             pop de               	;.
l4d91h:
	ram:4d91 cd af 26       call 026afh          	;. . &
	ram:4d94 fe 44          cp 044h              	;. D
	ram:4d96 28 28          jr z,l4dc0h          	;( (
	ram:4d98 fe 40          cp 040h              	;. @
	ram:4d9a 28 11          jr z,l4dadh          	;( .
	ram:4d9c fe 04          cp 004h              	;. .
	ram:4d9e 28 1a          jr z,l4dbah          	;( .
	ram:4da0 cd 7d 26       call 0267dh          	;. } &
	ram:4da3 fe 41          cp 041h              	;. A
	ram:4da5 28 06          jr z,l4dadh          	;( .
	ram:4da7 fe 50          cp 050h              	;. P
	ram:4da9 28 02          jr z,l4dadh          	;( .
	ram:4dab fe 51          cp 051h              	;. Q
l4dadh:
	ram:4dad ca 83 4e       jp z,l4e83h          	;. . N
	ram:4db0 fe 05          cp 005h              	;. .
	ram:4db2 28 06          jr z,l4dbah          	;( .
	ram:4db4 fe 14          cp 014h              	;. .
	ram:4db6 28 02          jr z,l4dbah          	;( .
	ram:4db8 fe 15          cp 015h              	;. .
l4dbah:
	ram:4dba ca 8c 4e       jp z,l4e8ch          	;. . N
	ram:4dbd cd 85 54       call sub_5485h       	;. . T
l4dc0h:
	ram:4dc0 78             ld a,b               	;x
	ram:4dc1 37             scf                  	;7
	ram:4dc2 f5             push af              	;.
	ram:4dc3 cd 89 55       call sub_5589h       	;. . U
	ram:4dc6 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:4dc9 ed 53 c1 80    ld (080c1h),de       	;. S . .
	ram:4dcd b7             or a                 	;.
	ram:4dce 28 04          jr z,l4dd4h          	;( .
	ram:4dd0 eb             ex de,hl             	;.
l4dd1h:
	ram:4dd1 cd a9 56       call sub_56a9h       	;. . V
l4dd4h:
	ram:4dd4 cd 3b 2e       call 02e3bh          	;. ; .
l4dd7h:
	ram:4dd7 cd 31 2e       call 02e31h          	;. 1 .
	ram:4dda cd 48 62       call sub_6248h       	;. H b
	ram:4ddd f1             pop af               	;.
	ram:4dde f5             push af              	;.
	ram:4ddf 38 05          jr c,l4de6h          	;8 .
	ram:4de1 cd be 56       call sub_56beh       	;. . V
	ram:4de4 18 18          jr l4dfeh            	;. .
l4de6h:
	ram:4de6 df             rst 18h              	;.
	ram:4de7 cd 6a 62       call sub_626ah       	;. j b
	ram:4dea f1             pop af               	;.
	ram:4deb f5             push af              	;.
	ram:4dec fe 13          cp 013h              	;. .
	ram:4dee 28 04          jr z,l4df4h          	;( .
	ram:4df0 fe 14          cp 014h              	;. .
	ram:4df2 20 07          jr nz,l4dfbh         	;.
l4df4h:
	ram:4df4 2a 69 8a       ld hl,(08a69h)       	;* i .
	ram:4df7 23             inc hl               	;#
	ram:4df8 22 69 8a       ld (08a69h),hl       	;" i .
l4dfbh:
	ram:4dfb cd 7c 4c       call sub_4c7ch       	;. | L
l4dfeh:
	ram:4dfe cd 09 4e       call sub_4e09h       	;. . N
	ram:4e01 38 30          jr c,l4e33h          	;8 0
	ram:4e03 20 d2          jr nz,l4dd7h         	;.
	ram:4e05 f1             pop af               	;.
	ram:4e06 c3 dc 57       jp l57dch            	;. . W
sub_4e09h:
	ram:4e09 cd db 2d       call 02ddbh          	;. . -
	ram:4e0c cd 3f 1f       call 01f3fh          	;. ? .
	ram:4e0f 20 07          jr nz,l4e18h         	;.
	ram:4e11 cd 78 26       call 02678h          	;. x &
	ram:4e14 20 0a          jr nz,l4e20h         	;.
	ram:4e16 37             scf                  	;7
	ram:4e17 c9             ret                  	;.
l4e18h:
	ram:4e18 cd 78 26       call 02678h          	;. x &
	ram:4e1b 28 03          jr z,l4e20h          	;( .
	ram:4e1d cd 63 1f       call 01f63h          	;. c .
l4e20h:
	ram:4e20 cd 82 62       call sub_6282h       	;. . b
	ram:4e23 2a c1 80       ld hl,(080c1h)       	;* . .
	ram:4e26 2b             dec hl               	;+
	ram:4e27 7c             ld a,h               	;|
	ram:4e28 b5             or l                 	;.
sub_4e29h:
	ram:4e29 22 bd 80       ld (080bdh),hl       	;" . .
sub_4e2ch:
	ram:4e2c 22 c1 80       ld (080c1h),hl       	;" . .
	ram:4e2f 22 b9 80       ld (080b9h),hl       	;" . .
	ram:4e32 c9             ret                  	;.
l4e33h:
	ram:4e33 cd 4f 4e       call sub_4e4fh       	;. O N
	ram:4e36 ed 4b c8 80    ld bc,(080c8h)       	;. K . .
	ram:4e3a 2a ca 80       ld hl,(080cah)       	;* . .
	ram:4e3d b7             or a                 	;.
	ram:4e3e ed 42          sbc hl,bc            	;. B
	ram:4e40 20 04          jr nz,l4e46h         	;.
	ram:4e42 ed 53 c8 80    ld (080c8h),de       	;. S . .
l4e46h:
	ram:4e46 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:4e4a cd 7d 26       call 0267dh          	;. } &
	ram:4e4d 18 88          jr l4dd7h            	;. .
sub_4e4fh:
	ram:4e4f ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:4e53 cd e5 7c       call sub_7ce5h       	;. . |
	ram:4e56 ed 4b c6 80    ld bc,(080c6h)       	;. K . .
	ram:4e5a 2a ca 80       ld hl,(080cah)       	;* . .
	ram:4e5d b7             or a                 	;.
	ram:4e5e ed 42          sbc hl,bc            	;. B
	ram:4e60 c0             ret nz               	;.
	ram:4e61 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:4e65 c9             ret                  	;.
l4e66h:
	ram:4e66 21 1c 0d       ld hl,00d1ch         	;! . .
	ram:4e69 3e 01          ld a,001h            	;> .
	ram:4e6b 18 04          jr l4e71h            	;. .
l4e6dh:
	ram:4e6d 21 2b 0d       ld hl,00d2bh         	;! + .
	ram:4e70 af             xor a                	;.
l4e71h:
	ram:4e71 cd 0b 5d       call sub_5d0bh       	;. . ]
	ram:4e74 57             ld d,a               	;W
	ram:4e75 79             ld a,c               	;y
	ram:4e76 fe 55          cp 055h              	;. U
	ram:4e78 ca c0 4d       jp z,l4dc0h          	;. . M
	ram:4e7b fe 11          cp 011h              	;. .
	ram:4e7d c2 89 4d       jp nz,l4d89h         	;. . M
	ram:4e80 c3 98 61       jp l6198h            	;. . a
l4e83h:
	ram:4e83 78             ld a,b               	;x
	ram:4e84 b7             or a                 	;.
	ram:4e85 f5             push af              	;.
	ram:4e86 df             rst 18h              	;.
	ram:4e87 cd 60 20       call 02060h          	;. `  
	ram:4e8a 18 09          jr l4e95h            	;. .
l4e8ch:
	ram:4e8c c5             push bc              	;.
	ram:4e8d e6 f0          and 0f0h             	;. .
	ram:4e8f cc 40 2e       call z,02e40h        	;. @ .
	ram:4e92 f1             pop af               	;.
	ram:4e93 37             scf                  	;7
	ram:4e94 f5             push af              	;.
l4e95h:
	ram:4e95 cd 14 56       call sub_5614h       	;. . V
	ram:4e98 22 c1 80       ld (080c1h),hl       	;" . .
	ram:4e9b 28 03          jr z,l4ea0h          	;( .
	ram:4e9d cd a9 56       call sub_56a9h       	;. . V
l4ea0h:
	ram:4ea0 cd cf 2d       call 02dcfh          	;. . -
	ram:4ea3 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4ea6 df             rst 18h              	;.
l4ea7h:
	ram:4ea7 cd 73 62       call sub_6273h       	;. s b
	ram:4eaa cd 24 2f       call 02f24h          	;. $ /
	ram:4ead cd 3f 1f       call 01f3fh          	;. ? .
	ram:4eb0 20 10          jr nz,l4ec2h         	;.
	ram:4eb2 cf             rst 8                	;.
	ram:4eb3 cd 43 2f       call 02f43h          	;. C /
	ram:4eb6 f1             pop af               	;.
	ram:4eb7 f5             push af              	;.
	ram:4eb8 30 15          jr nc,l4ecfh         	;0 .
	ram:4eba cd b0 23       call 023b0h          	;. . #
	ram:4ebd cd a3 23       call 023a3h          	;. . #
	ram:4ec0 18 0d          jr l4ecfh            	;. .
l4ec2h:
	ram:4ec2 f1             pop af               	;.
	ram:4ec3 f5             push af              	;.
	ram:4ec4 30 09          jr nc,l4ecfh         	;0 .
	ram:4ec6 cd b0 23       call 023b0h          	;. . #
	ram:4ec9 cd 3f 1f       call 01f3fh          	;. ? .
	ram:4ecc cc a3 23       call z,023a3h        	;. . #
l4ecfh:
	ram:4ecf cd 31 2e       call 02e31h          	;. 1 .
	ram:4ed2 cd 6f 2e       call 02e6fh          	;. o .
	ram:4ed5 f1             pop af               	;.
	ram:4ed6 f5             push af              	;.
	ram:4ed7 cd 7c 4c       call sub_4c7ch       	;. | L
	ram:4eda cd 09 4e       call sub_4e09h       	;. . N
	ram:4edd 38 0e          jr c,l4eedh          	;8 .
	ram:4edf 20 c6          jr nz,l4ea7h         	;.
	ram:4ee1 f1             pop af               	;.
	ram:4ee2 cd 0c 2e       call 02e0ch          	;. . .
	ram:4ee5 cb 46          bit 0,(hl)           	;. F
	ram:4ee7 c4 0c 2e       call nz,02e0ch       	;. . .
	ram:4eea c3 dc 57       jp l57dch            	;. . W
l4eedh:
	ram:4eed cd cf 2d       call 02dcfh          	;. . -
	ram:4ef0 cd e5 2d       call 02de5h          	;. . -
	ram:4ef3 df             rst 18h              	;.
	ram:4ef4 cd 3b 2e       call 02e3bh          	;. ; .
	ram:4ef7 cd 4f 4e       call sub_4e4fh       	;. O N
	ram:4efa ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:4efe cd 7d 26       call 0267dh          	;. } &
	ram:4f01 cd e5 2d       call 02de5h          	;. . -
	ram:4f04 18 9a          jr l4ea0h            	;. .
l4f06h:
	ram:4f06 fe 50          cp 050h              	;. P
	ram:4f08 f5             push af              	;.
	ram:4f09 79             ld a,c               	;y
	ram:4f0a b7             or a                 	;.
	ram:4f0b 20 1a          jr nz,l4f27h         	;.
	ram:4f0d cd 8e 1f       call 01f8eh          	;. . .
l4f10h:
	ram:4f10 20 0a          jr nz,l4f1ch         	;.
	ram:4f12 f1             pop af               	;.
sub_4f13h:
	ram:4f13 f5             push af              	;.
	ram:4f14 cd 98 21       call 02198h          	;. . !
	ram:4f17 f1             pop af               	;.
	ram:4f18 c0             ret nz               	;.
	ram:4f19 18 06          jr l4f21h            	;. .
sub_4f1bh:
	ram:4f1b f5             push af              	;.
l4f1ch:
	ram:4f1c cd 98 21       call 02198h          	;. . !
	ram:4f1f f1             pop af               	;.
	ram:4f20 c8             ret z                	;.
l4f21h:
	ram:4f21 3e 10          ld a,010h            	;> .
	ram:4f23 32 85 80       ld (08085h),a        	;2 . .
	ram:4f26 c9             ret                  	;.
l4f27h:
	ram:4f27 fe 11          cp 011h              	;. .
	ram:4f29 20 08          jr nz,l4f33h         	;.
	ram:4f2b cd 00 40       call sub_4000h       	;. . @
	ram:4f2e cd cc 23       call 023cch          	;. . #
	ram:4f31 18 dd          jr l4f10h            	;. .
l4f33h:
	ram:4f33 cd 19 20       call 02019h          	;. .  
	ram:4f36 fe 66          cp 066h              	;. f
	ram:4f38 20 2b          jr nz,l4f65h         	;+
l4f3ah:
	ram:4f3a cd f0 55       call sub_55f0h       	;. . U
	ram:4f3d c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:4f40 ed 53 c1 80    ld (080c1h),de       	;. S . .
l4f44h:
	ram:4f44 cd 07 69       call sub_6907h       	;. . i
	ram:4f47 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:4f4b cd 1f 69       call sub_691fh       	;. . i
	ram:4f4e cd 8e 1f       call 01f8eh          	;. . .
	ram:4f51 20 0c          jr nz,l4f5fh         	;.
	ram:4f53 cd 65 69       call sub_6965h       	;. e i
	ram:4f56 20 ec          jr nz,l4f44h         	;.
l4f58h:
	ram:4f58 f1             pop af               	;.
	ram:4f59 cd 13 4f       call sub_4f13h       	;. . O
l4f5ch:
	ram:4f5c c3 df 57       jp l57dfh            	;. . W
l4f5fh:
	ram:4f5f f1             pop af               	;.
	ram:4f60 cd 1b 4f       call sub_4f1bh       	;. . O
	ram:4f63 18 f7          jr l4f5ch            	;. .
l4f65h:
	ram:4f65 fe 22          cp 022h              	;. "
	ram:4f67 28 d1          jr z,l4f3ah          	;( .
	ram:4f69 cd 7d 26       call 0267dh          	;. } &
	ram:4f6c fe 77          cp 077h              	;. w
	ram:4f6e 20 2a          jr nz,l4f9ah         	;*
l4f70h:
	ram:4f70 cd f0 55       call sub_55f0h       	;. . U
	ram:4f73 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:4f76 ed 53 c1 80    ld (080c1h),de       	;. S . .
l4f7ah:
	ram:4f7a cd 07 69       call sub_6907h       	;. . i
	ram:4f7d cd 91 2e       call 02e91h          	;. . .
	ram:4f80 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:4f84 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:4f88 cd 0f 69       call sub_690fh       	;. . i
	ram:4f8b cd 00 40       call sub_4000h       	;. . @
	ram:4f8e cd cc 23       call 023cch          	;. . #
	ram:4f91 20 cc          jr nz,l4f5fh         	;.
	ram:4f93 cd 65 69       call sub_6965h       	;. e i
	ram:4f96 20 e2          jr nz,l4f7ah         	;.
	ram:4f98 18 be          jr l4f58h            	;. .
l4f9ah:
	ram:4f9a fe 33          cp 033h              	;. 3
	ram:4f9c 28 d2          jr z,l4f70h          	;( .
	ram:4f9e fe cc          cp 0cch              	;. .
	ram:4fa0 20 1d          jr nz,l4fbfh         	;.
	ram:4fa2 cd f0 55       call sub_55f0h       	;. . U
	ram:4fa5 20 b8          jr nz,l4f5fh         	;.
	ram:4fa7 42             ld b,d               	;B
	ram:4fa8 4b             ld c,e               	;K
	ram:4fa9 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:4fac ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:4fb0 23             inc hl               	;#
	ram:4fb1 13             inc de               	;.
l4fb2h:
	ram:4fb2 78             ld a,b               	;x
	ram:4fb3 b1             or c                 	;.
	ram:4fb4 28 a2          jr z,l4f58h          	;( .
	ram:4fb6 23             inc hl               	;#
	ram:4fb7 13             inc de               	;.
	ram:4fb8 1a             ld a,(de)            	;.
	ram:4fb9 be             cp (hl)              	;.
	ram:4fba 20 a3          jr nz,l4f5fh         	;.
	ram:4fbc 0b             dec bc               	;.
	ram:4fbd 18 f3          jr l4fb2h            	;. .
l4fbfh:
	ram:4fbf d1             pop de               	;.
	ram:4fc0 cd af 26       call 026afh          	;. . &
	ram:4fc3 fe 55          cp 055h              	;. U
	ram:4fc5 ca c0 4d       jp z,l4dc0h          	;. . M
	ram:4fc8 fe 44          cp 044h              	;. D
	ram:4fca ca c0 4d       jp z,l4dc0h          	;. . M
l4fcdh:
	ram:4fcd c3 28 0a       jp 00a28h            	;. ( .
l4fd0h:
	ram:4fd0 79             ld a,c               	;y
	ram:4fd1 b7             or a                 	;.
	ram:4fd2 ca b8 15       jp z,015b8h          	;. . .
	ram:4fd5 fe 60          cp 060h              	;. `
	ram:4fd7 ca 7e 73       jp z,l737eh          	;. ~ s
	ram:4fda fe 70          cp 070h              	;. p
	ram:4fdc ca 7b 73       jp z,l737bh          	;. { s
	ram:4fdf 21 68 44       ld hl,l4468h         	;! h D
l4fe2h:
	ram:4fe2 fe 11          cp 011h              	;. .
	ram:4fe4 28 09          jr z,l4fefh          	;( .
	ram:4fe6 fe 10          cp 010h              	;. .
	ram:4fe8 20 06          jr nz,l4ff0h         	;.
	ram:4fea e5             push hl              	;.
	ram:4feb cd 93 21       call 02193h          	;. . !
l4feeh:
	ram:4fee e1             pop hl               	;.
l4fefh:
	ram:4fef e9             jp (hl)              	;.
l4ff0h:
	ram:4ff0 fe 01          cp 001h              	;. .
	ram:4ff2 c2 91 4d       jp nz,l4d91h         	;. . M
	ram:4ff5 e5             push hl              	;.
	ram:4ff6 cd 89 21       call 02189h          	;. . !
	ram:4ff9 cd 82 2e       call 02e82h          	;. . .
	ram:4ffc 18 f0          jr l4feeh            	;. .
l4ffeh:
	ram:4ffe 79             ld a,c               	;y
	ram:4fff b7             or a                 	;.
	ram:5000 ca a9 15       jp z,015a9h          	;. . .
	ram:5003 21 5d 44       ld hl,l445dh         	;! ] D
	ram:5006 18 da          jr l4fe2h            	;. .
l5008h:
	ram:5008 79             ld a,c               	;y
	ram:5009 f5             push af              	;.
	ram:500a b7             or a                 	;.
	ram:500b cc 95 20       call z,02095h        	;. .  
	ram:500e e6 0f          and 00fh             	;. .
	ram:5010 20 bb          jr nz,l4fcdh         	;.
	ram:5012 cd e7 23       call 023e7h          	;. . #
	ram:5015 c2 14 0a       jp nz,00a14h         	;. . .
	ram:5018 ed 5b 83 80    ld de,(08083h)       	;. [ . .
	ram:501c 21 02 fc       ld hl,0fc02h         	;! . .
	ram:501f b7             or a                 	;.
	ram:5020 ed 52          sbc hl,de            	;. R
	ram:5022 38 0b          jr c,l502fh          	;8 .
	ram:5024 cd 41 20       call 02041h          	;. A  
	ram:5027 cd 95 39       call 03995h          	;. . 9
	ram:502a 21 0b 00       ld hl,0000bh         	;! . .
	ram:502d ed 52          sbc hl,de            	;. R
l502fh:
	ram:502f da 14 0a       jp c,00a14h          	;. . .
	ram:5032 d5             push de              	;.
	ram:5033 cd 60 20       call 02060h          	;. `  
	ram:5036 d1             pop de               	;.
	ram:5037 53             ld d,e               	;S
	ram:5038 f1             pop af               	;.
	ram:5039 b7             or a                 	;.
	ram:503a ca fe 11       jp z,011feh          	;. . .
	ram:503d d5             push de              	;.
	ram:503e fe 10          cp 010h              	;. .
	ram:5040 20 07          jr nz,l5049h         	;.
	ram:5042 cd fc 2d       call 02dfch          	;. . -
	ram:5045 d1             pop de               	;.
	ram:5046 c3 d3 11       jp 011d3h            	;. . .
l5049h:
	ram:5049 fe 60          cp 060h              	;. `
	ram:504b 20 09          jr nz,l5056h         	;.
	ram:504d cd 57 56       call sub_5657h       	;. W V
l5050h:
	ram:5050 f1             pop af               	;.
	ram:5051 cd 90 6f       call sub_6f90h       	;. . o
	ram:5054 18 58          jr l50aeh            	;. X
l5056h:
	ram:5056 fe 70          cp 070h              	;. p
	ram:5058 20 05          jr nz,l505fh         	;.
	ram:505a cd 54 56       call sub_5654h       	;. T V
	ram:505d 18 f1          jr l5050h            	;. .
l505fh:
	ram:505f fe 20          cp 020h              	;.  
	ram:5061 20 05          jr nz,l5068h         	;.
	ram:5063 cd 74 56       call sub_5674h       	;. t V
	ram:5066 18 e8          jr l5050h            	;. .
l5068h:
	ram:5068 fe 30          cp 030h              	;. 0
	ram:506a 20 05          jr nz,l5071h         	;.
	ram:506c cd 71 56       call sub_5671h       	;. q V
	ram:506f 18 df          jr l5050h            	;. .
l5071h:
	ram:5071 cd 21 20       call 02021h          	;. !  
	ram:5074 cd 95 20       call 02095h          	;. .  
	ram:5077 06 12          ld b,012h            	;. .
	ram:5079 d1             pop de               	;.
	ram:507a cb 7a          bit 7,d              	;. z
	ram:507c ca 91 4d       jp z,l4d91h          	;. . M
	ram:507f cd bf 21       call 021bfh          	;. . !
	ram:5082 cd 60 20       call 02060h          	;. `  
	ram:5085 c3 ac 53       jp l53ach            	;. . S
l5088h:
	ram:5088 79             ld a,c               	;y
	ram:5089 fe 22          cp 022h              	;. "
	ram:508b 20 24          jr nz,l50b1h         	;$
l508dh:
	ram:508d cd f0 55       call sub_55f0h       	;. . U
	ram:5090 19             add hl,de            	;.
	ram:5091 2e 03          ld l,003h            	;. .
	ram:5093 7a             ld a,d               	;z
	ram:5094 fe 02          cp 002h              	;. .
	ram:5096 38 26          jr c,l50beh          	;8 &
	ram:5098 fe 04          cp 004h              	;. .
	ram:509a 30 22          jr nc,l50beh         	;0 "
	ram:509c 7c             ld a,h               	;|
	ram:509d fe 02          cp 002h              	;. .
	ram:509f 38 1d          jr c,l50beh          	;8 .
	ram:50a1 fe 04          cp 004h              	;. .
	ram:50a3 30 19          jr nc,l50beh         	;0 .
	ram:50a5 22 c1 80       ld (080c1h),hl       	;" . .
	ram:50a8 cd 7d 56       call sub_567dh       	;. } V
	ram:50ab cd 33 6b       call sub_6b33h       	;. 3 k
l50aeh:
	ram:50ae c3 dc 57       jp l57dch            	;. . W
l50b1h:
	ram:50b1 cd 77 61       call sub_6177h       	;. w a
	ram:50b4 28 d7          jr z,l508dh          	;( .
	ram:50b6 18 1e          jr l50d6h            	;. .
sub_50b8h:
	ram:50b8 cd 3d 56       call sub_563dh       	;. = V
sub_50bbh:
	ram:50bb 7c             ld a,h               	;|
	ram:50bc bd             cp l                 	;.
	ram:50bd c8             ret z                	;.
l50beh:
	ram:50be c3 34 0a       jp 00a34h            	;. 4 .
l50c1h:
	ram:50c1 79             ld a,c               	;y
	ram:50c2 fe 22          cp 022h              	;. "
	ram:50c4 20 0b          jr nz,l50d1h         	;.
l50c6h:
	ram:50c6 cd f0 55       call sub_55f0h       	;. . U
	ram:50c9 20 f3          jr nz,l50beh         	;.
	ram:50cb cd f8 6a       call sub_6af8h       	;. . j
	ram:50ce c3 df 57       jp l57dfh            	;. . W
l50d1h:
	ram:50d1 cd 77 61       call sub_6177h       	;. w a
	ram:50d4 28 f0          jr z,l50c6h          	;( .
l50d6h:
	ram:50d6 c3 28 0a       jp 00a28h            	;. ( .
l50d9h:
	ram:50d9 79             ld a,c               	;y
	ram:50da fe 66          cp 066h              	;. f
	ram:50dc 28 12          jr z,l50f0h          	;( .
	ram:50de cd 6e 61       call sub_616eh       	;. n a
	ram:50e1 28 0a          jr z,l50edh          	;( .
	ram:50e3 fe 62          cp 062h              	;. b
	ram:50e5 28 09          jr z,l50f0h          	;( .
	ram:50e7 f6 11          or 011h              	;. .
	ram:50e9 fe 73          cp 073h              	;. s
	ram:50eb 20 e9          jr nz,l50d6h         	;.
l50edh:
	ram:50ed cd 7d 26       call 0267dh          	;. } &
l50f0h:
	ram:50f0 cd f0 55       call sub_55f0h       	;. . U
	ram:50f3 19             add hl,de            	;.
sub_50f4h:
	ram:50f4 7c             ld a,h               	;|
	ram:50f5 ba             cp d                 	;.
	ram:50f6 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:50f9 7d             ld a,l               	;}
	ram:50fa 83             add a,e              	;.
	ram:50fb 38 c1          jr c,l50beh          	;8 .
	ram:50fd 6f             ld l,a               	;o
	ram:50fe 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5101 cd 5f 56       call sub_565fh       	;. _ V
	ram:5104 cd f1 70       call sub_70f1h       	;. . p
	ram:5107 18 a5          jr l50aeh            	;. .
l5109h:
	ram:5109 79             ld a,c               	;y
	ram:510a fe 06          cp 006h              	;. .
	ram:510c 20 16          jr nz,l5124h         	;.
l510eh:
	ram:510e cd 6f 2e       call 02e6fh          	;. o .
l5111h:
	ram:5111 cd 91 61       call sub_6191h       	;. . a
l5114h:
	ram:5114 cd 3d 56       call sub_563dh       	;. = V
	ram:5117 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:511b cd 71 26       call 02671h          	;. q &
	ram:511e cd cf 2d       call 02dcfh          	;. . -
	ram:5121 c3 e5 70       jp l70e5h            	;. . p
l5124h:
	ram:5124 fe 07          cp 007h              	;. .
	ram:5126 c2 8b 51       jp nz,l518bh         	;. . Q
l5129h:
	ram:5129 cd 40 2e       call 02e40h          	;. @ .
l512ch:
	ram:512c cd 91 61       call sub_6191h       	;. . a
	ram:512f cd 68 26       call 02668h          	;. h &
	ram:5132 ca 28 0a       jp z,00a28h          	;. ( .
	ram:5135 cd 95 20       call 02095h          	;. .  
	ram:5138 cd 71 26       call 02671h          	;. q &
	ram:513b 22 d9 8b       ld (08bd9h),hl       	;" . .
	ram:513e ed 53 d0 80    ld (080d0h),de       	;. S . .
	ram:5142 ed 53 d2 80    ld (080d2h),de       	;. S . .
	ram:5146 1a             ld a,(de)            	;.
	ram:5147 4f             ld c,a               	;O
	ram:5148 13             inc de               	;.
	ram:5149 1a             ld a,(de)            	;.
	ram:514a 47             ld b,a               	;G
	ram:514b ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:514f ed 43 c1 80    ld (080c1h),bc       	;. C . .
	ram:5153 cd f5 1f       call 01ff5h          	;. . .
	ram:5156 21 82 80       ld hl,08082h         	;! . .
	ram:5159 cb 86          res 0,(hl)           	;. .
	ram:515b cd 78 26       call 02678h          	;. x &
	ram:515e 28 02          jr z,l5162h          	;( .
	ram:5160 cb c6          set 0,(hl)           	;. .
l5162h:
	ram:5162 cd 4e 2a       call 02a4eh          	;. N *
	ram:5165 ed 5b d0 80    ld de,(080d0h)       	;. [ . .
	ram:5169 3a 82 80       ld a,(08082h)        	;: . .
	ram:516c 47             ld b,a               	;G
	ram:516d e6 1e          and 01eh             	;. .
	ram:516f fe 04          cp 004h              	;. .
	ram:5171 f5             push af              	;.
	ram:5172 3a b9 80       ld a,(080b9h)        	;: . .
	ram:5175 12             ld (de),a            	;.
	ram:5176 13             inc de               	;.
	ram:5177 3a ba 80       ld a,(080bah)        	;: . .
	ram:517a 12             ld (de),a            	;.
	ram:517b 13             inc de               	;.
	ram:517c af             xor a                	;.
	ram:517d cb 40          bit 0,b              	;. @
	ram:517f 28 02          jr z,l5183h          	;( .
	ram:5181 3e 01          ld a,001h            	;> .
l5183h:
	ram:5183 12             ld (de),a            	;.
	ram:5184 1b             dec de               	;.
	ram:5185 1b             dec de               	;.
	ram:5186 f1             pop af               	;.
	ram:5187 28 16          jr z,l519fh          	;( .
	ram:5189 18 89          jr l5114h            	;. .
l518bh:
	ram:518b fe 02          cp 002h              	;. .
	ram:518d ca 0e 51       jp z,l510eh          	;. . Q
	ram:5190 fe 03          cp 003h              	;. .
l5192h:
	ram:5192 ca 29 51       jp z,l5129h          	;. ) Q
	ram:5195 fe 04          cp 004h              	;. .
	ram:5197 20 16          jr nz,l51afh         	;.
	ram:5199 cd 40 2e       call 02e40h          	;. @ .
l519ch:
	ram:519c cd 91 61       call sub_6191h       	;. . a
l519fh:
	ram:519f cd 3d 56       call sub_563dh       	;. = V
	ram:51a2 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:51a6 cd 79 54       call sub_5479h       	;. y T
	ram:51a9 cd cf 2d       call 02dcfh          	;. . -
	ram:51ac c3 84 63       jp l6384h            	;. . c
l51afh:
	ram:51af fe 05          cp 005h              	;. .
	ram:51b1 ca 29 51       jp z,l5129h          	;. ) Q
	ram:51b4 cd 7d 26       call 0267dh          	;. } &
	ram:51b7 fe 16          cp 016h              	;. .
	ram:51b9 ca 2c 51       jp z,l512ch          	;. , Q
	ram:51bc fe 17          cp 017h              	;. .
	ram:51be ca 11 51       jp z,l5111h          	;. . Q
	ram:51c1 fe 12          cp 012h              	;. .
	ram:51c3 ca 2c 51       jp z,l512ch          	;. , Q
	ram:51c6 fe 13          cp 013h              	;. .
	ram:51c8 ca 11 51       jp z,l5111h          	;. . Q
	ram:51cb fe 14          cp 014h              	;. .
	ram:51cd ca 2c 51       jp z,l512ch          	;. , Q
	ram:51d0 fe 15          cp 015h              	;. .
	ram:51d2 ca 9c 51       jp z,l519ch          	;. . Q
	ram:51d5 c3 28 0a       jp 00a28h            	;. ( .
l51d8h:
	ram:51d8 cd f0 55       call sub_55f0h       	;. . U
	ram:51db 19             add hl,de            	;.
	ram:51dc 19             add hl,de            	;.
	ram:51dd 22 c1 80       ld (080c1h),hl       	;" . .
	ram:51e0 cd 17 2a       call 02a17h          	;. . *
	ram:51e3 13             inc de               	;.
	ram:51e4 13             inc de               	;.
	ram:51e5 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:51e8 23             inc hl               	;#
	ram:51e9 23             inc hl               	;#
	ram:51ea ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:51ee ed b0          ldir                 	;. .
	ram:51f0 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:51f3 23             inc hl               	;#
	ram:51f4 23             inc hl               	;#
	ram:51f5 ed 4b bd 80    ld bc,(080bdh)       	;. K . .
	ram:51f9 ed b0          ldir                 	;. .
	ram:51fb cd 56 20       call 02056h          	;. V  
	ram:51fe c3 df 57       jp l57dfh            	;. . W
sub_5201h:
	ram:5201 cd 89 55       call sub_5589h       	;. . U
	ram:5204 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:5207 ed 53 c1 80    ld (080c1h),de       	;. S . .
	ram:520b b7             or a                 	;.
	ram:520c c9             ret                  	;.
l520dh:
	ram:520d 79             ld a,c               	;y
	ram:520e b7             or a                 	;.
	ram:520f ca 78 0d       jp z,00d78h          	;. x .
	ram:5212 fe cc          cp 0cch              	;. .
	ram:5214 28 c2          jr z,l51d8h          	;( .
	ram:5216 37             scf                  	;7
l5217h:
	ram:5217 f5             push af              	;.
	ram:5218 fe 01          cp 001h              	;. .
	ram:521a 20 0d          jr nz,l5229h         	;.
	ram:521c cd 89 21       call 02189h          	;. . !
	ram:521f cd 82 2e       call 02e82h          	;. . .
l5222h:
	ram:5222 f1             pop af               	;.
	ram:5223 da 03 40       jp c,l4003h          	;. . @
	ram:5226 c3 00 40       jp sub_4000h         	;. . @
l5229h:
	ram:5229 fe 10          cp 010h              	;. .
	ram:522b 20 05          jr nz,l5232h         	;.
	ram:522d cd 93 21       call 02193h          	;. . !
	ram:5230 18 f0          jr l5222h            	;. .
l5232h:
	ram:5232 fe 11          cp 011h              	;. .
	ram:5234 28 ec          jr z,l5222h          	;( .
	ram:5236 fe 66          cp 066h              	;. f
	ram:5238 20 1a          jr nz,l5254h         	;.
l523ah:
	ram:523a cd 01 52       call sub_5201h       	;. . R
	ram:523d 28 06          jr z,l5245h          	;( .
	ram:523f eb             ex de,hl             	;.
	ram:5240 cd 5f 56       call sub_565fh       	;. _ V
	ram:5243 18 03          jr l5248h            	;. .
l5245h:
	ram:5245 cd 3b 2e       call 02e3bh          	;. ; .
l5248h:
	ram:5248 f1             pop af               	;.
	ram:5249 f5             push af              	;.
	ram:524a dc a5 69       call c,sub_69a5h     	;. . i
	ram:524d f1             pop af               	;.
	ram:524e d4 a1 69       call nc,sub_69a1h    	;. . i
	ram:5251 c3 dc 57       jp l57dch            	;. . W
l5254h:
	ram:5254 fe 22          cp 022h              	;. "
	ram:5256 28 0b          jr z,l5263h          	;( .
	ram:5258 cd 6b 61       call sub_616bh       	;. k a
	ram:525b 28 dd          jr z,l523ah          	;( .
	ram:525d cd 77 61       call sub_6177h       	;. w a
	ram:5260 c2 90 4d       jp nz,l4d90h         	;. . M
l5263h:
	ram:5263 cd 01 52       call sub_5201h       	;. . R
	ram:5266 28 dd          jr z,l5245h          	;( .
	ram:5268 6a             ld l,d               	;j
	ram:5269 cd 7d 56       call sub_567dh       	;. } V
	ram:526c 18 da          jr l5248h            	;. .
l526eh:
	ram:526e 79             ld a,c               	;y
	ram:526f b7             or a                 	;.
	ram:5270 ca 71 0d       jp z,00d71h          	;. q .
	ram:5273 18 a2          jr l5217h            	;. .
l5275h:
	ram:5275 79             ld a,c               	;y
	ram:5276 b7             or a                 	;.
	ram:5277 ca 5b 0e       jp z,00e5bh          	;. [ .
	ram:527a fe 01          cp 001h              	;. .
	ram:527c 20 09          jr nz,l5287h         	;.
	ram:527e cd 89 21       call 02189h          	;. . !
	ram:5281 cd 82 2e       call 02e82h          	;. . .
l5284h:
	ram:5284 c3 15 40       jp sub_4015h         	;. . @
l5287h:
	ram:5287 fe 10          cp 010h              	;. .
	ram:5289 20 05          jr nz,l5290h         	;.
	ram:528b cd 93 21       call 02193h          	;. . !
	ram:528e 18 f4          jr l5284h            	;. .
l5290h:
	ram:5290 fe 11          cp 011h              	;. .
	ram:5292 28 f0          jr z,l5284h          	;( .
	ram:5294 fe 06          cp 006h              	;. .
	ram:5296 28 1d          jr z,l52b5h          	;( .
	ram:5298 fe 60          cp 060h              	;. `
	ram:529a 20 05          jr nz,l52a1h         	;.
l529ch:
	ram:529c cd b0 23       call 023b0h          	;. . #
	ram:529f 18 14          jr l52b5h            	;. .
l52a1h:
	ram:52a1 cd 7d 26       call 0267dh          	;. } &
	ram:52a4 fe 07          cp 007h              	;. .
	ram:52a6 28 07          jr z,l52afh          	;( .
	ram:52a8 fe 70          cp 070h              	;. p
	ram:52aa 20 39          jr nz,l52e5h         	;9
l52ach:
	ram:52ac cd b0 23       call 023b0h          	;. . #
l52afh:
	ram:52af cd 89 21       call 02189h          	;. . !
l52b2h:
	ram:52b2 cd 82 2e       call 02e82h          	;. . .
l52b5h:
	ram:52b5 3a 82 80       ld a,(08082h)        	;: . .
	ram:52b8 e6 1e          and 01eh             	;. .
	ram:52ba fe 06          cp 006h              	;. .
	ram:52bc 28 05          jr z,l52c3h          	;( .
	ram:52be cd 74 56       call sub_5674h       	;. t V
	ram:52c1 18 03          jr l52c6h            	;. .
l52c3h:
	ram:52c3 cd 57 56       call sub_5657h       	;. W V
l52c6h:
	ram:52c6 cd 78 26       call 02678h          	;. x &
	ram:52c9 f5             push af              	;.
	ram:52ca cc 19 20       call z,02019h        	;. .  
	ram:52cd f1             pop af               	;.
	ram:52ce 28 09          jr z,l52d9h          	;( .
	ram:52d0 cd 0c 2e       call 02e0ch          	;. . .
	ram:52d3 cd fc 2d       call 02dfch          	;. . -
	ram:52d6 cd 3b 2e       call 02e3bh          	;. ; .
l52d9h:
	ram:52d9 af             xor a                	;.
	ram:52da c3 9f 53       jp l539fh            	;. . S
l52ddh:
	ram:52dd cd b0 23       call 023b0h          	;. . #
	ram:52e0 cd fe 1f       call 01ffeh          	;. . .
	ram:52e3 18 cd          jr l52b2h            	;. .
l52e5h:
	ram:52e5 fe 16          cp 016h              	;. .
	ram:52e7 28 cc          jr z,l52b5h          	;( .
	ram:52e9 fe 17          cp 017h              	;. .
	ram:52eb 28 c8          jr z,l52b5h          	;( .
	ram:52ed fe 61          cp 061h              	;. a
	ram:52ef 28 ec          jr z,l52ddh          	;( .
	ram:52f1 fe 71          cp 071h              	;. q
	ram:52f3 28 e8          jr z,l52ddh          	;( .
	ram:52f5 cd af 26       call 026afh          	;. . &
	ram:52f8 fe 02          cp 002h              	;. .
	ram:52fa 28 b9          jr z,l52b5h          	;( .
	ram:52fc fe 20          cp 020h              	;.  
	ram:52fe 28 9c          jr z,l529ch          	;( .
	ram:5300 cd 7d 26       call 0267dh          	;. } &
	ram:5303 fe 03          cp 003h              	;. .
	ram:5305 28 a8          jr z,l52afh          	;( .
	ram:5307 fe 30          cp 030h              	;. 0
	ram:5309 28 a1          jr z,l52ach          	;( .
	ram:530b fe 12          cp 012h              	;. .
	ram:530d ca b5 52       jp z,l52b5h          	;. . R
	ram:5310 fe 13          cp 013h              	;. .
	ram:5312 ca b5 52       jp z,l52b5h          	;. . R
	ram:5315 fe 21          cp 021h              	;. !
	ram:5317 28 c4          jr z,l52ddh          	;( .
	ram:5319 fe 31          cp 031h              	;. 1
	ram:531b 28 c0          jr z,l52ddh          	;( .
	ram:531d cd af 26       call 026afh          	;. . &
	ram:5320 fe 62          cp 062h              	;. b
	ram:5322 28 18          jr z,l533ch          	;( .
	ram:5324 fe 66          cp 066h              	;. f
	ram:5326 20 0b          jr nz,l5333h         	;.
l5328h:
	ram:5328 cd 83 61       call sub_6183h       	;. . a
	ram:532b cd 5f 56       call sub_565fh       	;. _ V
l532eh:
	ram:532e cd cd 69       call sub_69cdh       	;. . i
	ram:5331 18 6f          jr l53a2h            	;. o
l5333h:
	ram:5333 cd 6b 61       call sub_616bh       	;. k a
	ram:5336 28 f0          jr z,l5328h          	;( .
	ram:5338 fe 63          cp 063h              	;. c
	ram:533a 20 09          jr nz,l5345h         	;.
l533ch:
	ram:533c cd 83 61       call sub_6183h       	;. . a
	ram:533f 6c             ld l,h               	;l
	ram:5340 cd 7d 56       call sub_567dh       	;. } V
	ram:5343 18 e9          jr l532eh            	;. .
l5345h:
	ram:5345 fe 72          cp 072h              	;. r
	ram:5347 28 f3          jr z,l533ch          	;( .
	ram:5349 fe 73          cp 073h              	;. s
	ram:534b 28 ef          jr z,l533ch          	;( .
	ram:534d c3 91 4d       jp l4d91h            	;. . M
l5350h:
	ram:5350 79             ld a,c               	;y
	ram:5351 fe 00          cp 000h              	;. .
	ram:5353 ca 23 10       jp z,01023h          	;. # .
	ram:5356 fe 11          cp 011h              	;. .
	ram:5358 28 0a          jr z,l5364h          	;( .
	ram:535a fe 01          cp 001h              	;. .
	ram:535c 20 09          jr nz,l5367h         	;.
	ram:535e cd 89 21       call 02189h          	;. . !
	ram:5361 cd 82 2e       call 02e82h          	;. . .
l5364h:
	ram:5364 c3 4d 40       jp l404dh            	;. M @
l5367h:
	ram:5367 fe 10          cp 010h              	;. .
	ram:5369 20 05          jr nz,l5370h         	;.
	ram:536b cd 93 21       call 02193h          	;. . !
	ram:536e 18 f4          jr l5364h            	;. .
l5370h:
	ram:5370 fe 20          cp 020h              	;.  
	ram:5372 28 11          jr z,l5385h          	;( .
	ram:5374 cd 7d 26       call 0267dh          	;. } &
	ram:5377 fe 21          cp 021h              	;. !
	ram:5379 28 07          jr z,l5382h          	;( .
	ram:537b fe 30          cp 030h              	;. 0
	ram:537d 20 26          jr nz,l53a5h         	;&
	ram:537f cd 93 21       call 02193h          	;. . !
l5382h:
	ram:5382 cd 91 2e       call 02e91h          	;. . .
l5385h:
	ram:5385 cd b0 23       call 023b0h          	;. . #
	ram:5388 cd 74 56       call sub_5674h       	;. t V
	ram:538b cd 78 26       call 02678h          	;. x &
	ram:538e 28 0b          jr z,l539bh          	;( .
	ram:5390 cd 0c 2e       call 02e0ch          	;. . .
	ram:5393 cd fc 2d       call 02dfch          	;. . -
	ram:5396 cd 3b 2e       call 02e3bh          	;. ; .
	ram:5399 18 03          jr l539eh            	;. .
l539bh:
	ram:539b cd 19 20       call 02019h          	;. .  
l539eh:
	ram:539e 37             scf                  	;7
l539fh:
	ram:539f cd 97 6f       call sub_6f97h       	;. . o
l53a2h:
	ram:53a2 c3 dc 57       jp l57dch            	;. . W
l53a5h:
	ram:53a5 fe 31          cp 031h              	;. 1
	ram:53a7 28 d9          jr z,l5382h          	;( .
	ram:53a9 c3 91 4d       jp l4d91h            	;. . M
l53ach:
	ram:53ac cd af 26       call 026afh          	;. . &
	ram:53af fe 04          cp 004h              	;. .
	ram:53b1 28 08          jr z,l53bbh          	;( .
l53b3h:
	ram:53b3 cd 7d 26       call 0267dh          	;. } &
	ram:53b6 fe 05          cp 005h              	;. .
	ram:53b8 c2 28 0a       jp nz,00a28h         	;. ( .
l53bbh:
	ram:53bb 78             ld a,b               	;x
	ram:53bc b7             or a                 	;.
	ram:53bd f5             push af              	;.
	ram:53be cd 14 56       call sub_5614h       	;. . V
	ram:53c1 22 c1 80       ld (080c1h),hl       	;" . .
	ram:53c4 c2 d1 4d       jp nz,l4dd1h         	;. . M
	ram:53c7 c3 d4 4d       jp l4dd4h            	;. . M
l53cah:
	ram:53ca fd cb 07 96    res 2,(iy+007h)      	;. . . .
	ram:53ce 18 04          jr l53d4h            	;. .
l53d0h:
	ram:53d0 fd cb 07 d6    set 2,(iy+007h)      	;. . . .
l53d4h:
	ram:53d4 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:53d8 c2 51 0a       jp nz,00a51h         	;. Q .
	ram:53db fd cb 07 de    set 3,(iy+007h)      	;. . . .
	ram:53df cd 40 2e       call 02e40h          	;. @ .
	ram:53e2 cd 4a 2e       call 02e4ah          	;. J .
	ram:53e5 d7             rst 10h              	;.
	ram:53e6 da 38 0a       jp c,00a38h          	;. 8 .
	ram:53e9 cd 60 20       call 02060h          	;. `  
sub_53ech:
	ram:53ec 21 78 00       ld hl,00078h         	;! x .
	ram:53ef cd 28 2e       call 02e28h          	;. ( .
	ram:53f2 22 2b 86       ld (0862bh),hl       	;" + .
	ram:53f5 21 00 00       ld hl,00000h         	;! . .
	ram:53f8 22 2f 86       ld (0862fh),hl       	;" / .
	ram:53fb cd d3 3a       call 03ad3h          	;. . :
	ram:53fe cd 9c 26       call 0269ch          	;. . &
	ram:5401 cd cf 2d       call 02dcfh          	;. . -
	ram:5404 cd bf 2d       call 02dbfh          	;. . -
	ram:5407 fd cb 07 56    bit 2,(iy+007h)      	;. . . V
	ram:540b c4 bf 2d       call nz,02dbfh       	;. . -
	ram:540e 11 78 00       ld de,00078h         	;. x .
	ram:5411 cd 1b 2e       call 02e1bh          	;. . .
	ram:5414 cd 0c 2e       call 02e0ch          	;. . .
	ram:5417 cd ea 2d       call 02deah          	;. . -
	ram:541a df             rst 18h              	;.
	ram:541b fd cb 07 9e    res 3,(iy+007h)      	;. . . .
	ram:541f cd 60 20       call 02060h          	;. `  
	ram:5422 cd 60 26       call 02660h          	;. ` &
	ram:5425 c3 cf 2d       jp 02dcfh            	;. . -
l5428h:
	ram:5428 79             ld a,c               	;y
	ram:5429 b7             or a                 	;.
	ram:542a 20 62          jr nz,l548eh         	;b
	ram:542c cd f4 60       call sub_60f4h       	;. . `
	ram:542f f5             push af              	;.
	ram:5430 cd 95 20       call 02095h          	;. .  
	ram:5433 cd f4 60       call sub_60f4h       	;. . `
	ram:5436 e1             pop hl               	;.
	ram:5437 6b             ld l,e               	;k
	ram:5438 cd 2c 4e       call sub_4e2ch       	;. , N
	ram:543b cd fc 29       call 029fch          	;. . )
	ram:543e ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5442 cd 3b 2e       call 02e3bh          	;. ; .
	ram:5445 cd 4a 2e       call 02e4ah          	;. J .
l5448h:
	ram:5448 cd 66 2f       call 02f66h          	;. f /
	ram:544b cd a7 39       call 039a7h          	;. . 9
	ram:544e cd 66 21       call 02166h          	;. f !
	ram:5451 21 8e 80       ld hl,0808eh         	;! . .
	ram:5454 36 01          ld (hl),001h         	;6 .
	ram:5456 23             inc hl               	;#
	ram:5457 23             inc hl               	;#
	ram:5458 36 19          ld (hl),019h         	;6 .
	ram:545a cd 5b 0e       call 00e5bh          	;. [ .
	ram:545d cd 47 0d       call 00d47h          	;. G .
	ram:5460 cd 66 21       call 02166h          	;. f !
	ram:5463 3e 90          ld a,090h            	;> .
	ram:5465 32 90 80       ld (08090h),a        	;2 . .
	ram:5468 cd 71 0d       call 00d71h          	;. q .
	ram:546b cd 10 2f       call 02f10h          	;. . /
	ram:546e cd 5e 69       call sub_695eh       	;. ^ i
	ram:5471 20 d5          jr nz,l5448h         	;.
	ram:5473 cd 0c 2e       call 02e0ch          	;. . .
	ram:5476 c3 f4 2d       jp 02df4h            	;. . -
sub_5479h:
	ram:5479 cd 71 26       call 02671h          	;. q &
	ram:547c cd 68 26       call 02668h          	;. h &
	ram:547f cc b3 39       call z,039b3h        	;. . 9
	ram:5482 c3 95 20       jp 02095h            	;. .  
sub_5485h:
	ram:5485 fe 55          cp 055h              	;. U
	ram:5487 c8             ret z                	;.
	ram:5488 fe 45          cp 045h              	;. E
	ram:548a c8             ret z                	;.
	ram:548b fe 54          cp 054h              	;. T
	ram:548d c8             ret z                	;.
l548eh:
	ram:548e c3 28 0a       jp 00a28h            	;. ( .
l5491h:
	ram:5491 79             ld a,c               	;y
	ram:5492 fe 44          cp 044h              	;. D
	ram:5494 28 03          jr z,l5499h          	;( .
	ram:5496 cd 85 54       call sub_5485h       	;. . T
l5499h:
	ram:5499 cd 91 61       call sub_6191h       	;. . a
	ram:549c 3a 9a 80       ld a,(0809ah)        	;: . .
	ram:549f fe 24          cp 024h              	;. $
	ram:54a1 ca 1c 0a       jp z,00a1ch          	;. . .
	ram:54a4 cd 79 54       call sub_5479h       	;. y T
	ram:54a7 cd b0 23       call 023b0h          	;. . #
	ram:54aa cd 79 54       call sub_5479h       	;. y T
	ram:54ad cd b0 23       call 023b0h          	;. . #
	ram:54b0 cd f0 55       call sub_55f0h       	;. . U
	ram:54b3 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:54b6 ed 53 c1 80    ld (080c1h),de       	;. S . .
	ram:54ba 3e 01          ld a,001h            	;> .
	ram:54bc cd a4 62       call sub_62a4h       	;. . b
	ram:54bf c9             ret                  	;.
l54c0h:
	ram:54c0 c5             push bc              	;.
	ram:54c1 cd b0 23       call 023b0h          	;. . #
	ram:54c4 c1             pop bc               	;.
	ram:54c5 18 ca          jr l5491h            	;. .
l54c7h:
	ram:54c7 79             ld a,c               	;y
	ram:54c8 fe 40          cp 040h              	;. @
	ram:54ca 28 12          jr z,l54deh          	;( .
	ram:54cc cd 7d 26       call 0267dh          	;. } &
	ram:54cf fe 41          cp 041h              	;. A
	ram:54d1 28 0b          jr z,l54deh          	;( .
	ram:54d3 fe 51          cp 051h              	;. Q
	ram:54d5 28 07          jr z,l54deh          	;( .
	ram:54d7 fe 50          cp 050h              	;. P
	ram:54d9 20 b3          jr nz,l548eh         	;.
	ram:54db cd 63 1f       call 01f63h          	;. c .
l54deh:
	ram:54de df             rst 18h              	;.
	ram:54df cd 60 20       call 02060h          	;. `  
	ram:54e2 cd 3d 56       call sub_563dh       	;. = V
	ram:54e5 cd b9 39       call 039b9h          	;. . 9
	ram:54e8 cd 0b 5d       call sub_5d0bh       	;. . ]
	ram:54eb c3 df 57       jp l57dfh            	;. . W
l54eeh:
	ram:54ee cd bf 39       call 039bfh          	;. . 9
	ram:54f1 79             ld a,c               	;y
	ram:54f2 fe 62          cp 062h              	;. b
	ram:54f4 20 38          jr nz,l552eh         	;8
l54f6h:
	ram:54f6 cd f0 55       call sub_55f0h       	;. . U
	ram:54f9 19             add hl,de            	;.
	ram:54fa 7c             ld a,h               	;|
	ram:54fb bd             cp l                 	;.
	ram:54fc c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:54ff cd f4 50       call sub_50f4h       	;. . P
	ram:5502 cd 3d 56       call sub_563dh       	;. = V
	ram:5505 e5             push hl              	;.
	ram:5506 cd f5 25       call 025f5h          	;. . %
	ram:5509 28 13          jr z,l551eh          	;( .
	ram:550b e1             pop hl               	;.
	ram:550c e5             push hl              	;.
	ram:550d e5             push hl              	;.
	ram:550e cd 64 56       call sub_5664h       	;. d V
	ram:5511 cd 75 55       call sub_5575h       	;. u U
	ram:5514 cd 46 71       call sub_7146h       	;. F q
	ram:5517 2a ca 80       ld hl,(080cah)       	;* . .
	ram:551a 22 c6 80       ld (080c6h),hl       	;" . .
	ram:551d e1             pop hl               	;.
l551eh:
	ram:551e 2e 01          ld l,001h            	;. .
	ram:5520 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5523 e1             pop hl               	;.
	ram:5524 6c             ld l,h               	;l
	ram:5525 cd 7d 56       call sub_567dh       	;. } V
	ram:5528 cd 17 6d       call sub_6d17h       	;. . m
	ram:552b c3 dc 57       jp l57dch            	;. . W
l552eh:
	ram:552e cd 7d 26       call 0267dh          	;. } &
	ram:5531 fe 63          cp 063h              	;. c
	ram:5533 28 c1          jr z,l54f6h          	;( .
	ram:5535 fe 72          cp 072h              	;. r
	ram:5537 28 bd          jr z,l54f6h          	;( .
	ram:5539 fe 73          cp 073h              	;. s
	ram:553b 28 b9          jr z,l54f6h          	;( .
	ram:553d c3 28 0a       jp 00a28h            	;. ( .
l5540h:
	ram:5540 78             ld a,b               	;x
	ram:5541 b7             or a                 	;.
	ram:5542 f5             push af              	;.
	ram:5543 cd 3d 56       call sub_563dh       	;. = V
	ram:5546 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5549 cd d4 29       call 029d4h          	;. . )
	ram:554c ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5550 c3 d4 4d       jp l4dd4h            	;. . M
sub_5553h:
	ram:5553 d7             rst 10h              	;.
	ram:5554 3a 84 80       ld a,(08084h)        	;: . .
	ram:5557 fe 24          cp 024h              	;. $
	ram:5559 c0             ret nz               	;.
	ram:555a fd cb 07 66    bit 4,(iy+007h)      	;. . . f
	ram:555e 28 15          jr z,sub_5575h       	;( .
	ram:5560 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:5564 28 0f          jr z,sub_5575h       	;( .
	ram:5566 d5             push de              	;.
	ram:5567 e5             push hl              	;.
	ram:5568 ed 5b 2d 86    ld de,(0862dh)       	;. [ - .
	ram:556c 2a 85 80       ld hl,(08085h)       	;* . .
	ram:556f b7             or a                 	;.
	ram:5570 ed 52          sbc hl,de            	;. R
	ram:5572 e1             pop hl               	;.
	ram:5573 d1             pop de               	;.
	ram:5574 d8             ret c                	;.
sub_5575h:
	ram:5575 3a d4 8b       ld a,(08bd4h)        	;: . .
	ram:5578 b7             or a                 	;.
	ram:5579 28 05          jr z,l5580h          	;( .
	ram:557b 22 d7 8b       ld (08bd7h),hl       	;" . .
	ram:557e 18 03          jr l5583h            	;. .
l5580h:
	ram:5580 22 d5 8b       ld (08bd5h),hl       	;" . .
l5583h:
	ram:5583 3c             inc a                	;<
	ram:5584 32 d4 8b       ld (08bd4h),a        	;2 . .
	ram:5587 af             xor a                	;.
	ram:5588 c9             ret                  	;.
sub_5589h:
	ram:5589 cd fe 55       call sub_55feh       	;. . U
	ram:558c e5             push hl              	;.
	ram:558d 20 0c          jr nz,l559bh         	;.
	ram:558f 3a 82 80       ld a,(08082h)        	;: . .
	ram:5592 cd 78 26       call 02678h          	;. x &
	ram:5595 20 07          jr nz,l559eh         	;.
	ram:5597 e6 01          and 001h             	;. .
	ram:5599 28 07          jr z,l55a2h          	;( .
l559bh:
	ram:559b 37             scf                  	;7
	ram:559c 18 11          jr l55afh            	;. .
l559eh:
	ram:559e e6 01          and 001h             	;. .
	ram:55a0 28 f9          jr z,l559bh          	;( .
l55a2h:
	ram:55a2 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:55a5 22 ca 80       ld (080cah),hl       	;" . .
	ram:55a8 af             xor a                	;.
	ram:55a9 32 d4 8b       ld (08bd4h),a        	;2 . .
	ram:55ac cd f5 1f       call 01ff5h          	;. . .
l55afh:
	ram:55af f5             push af              	;.
	ram:55b0 cd 60 20       call 02060h          	;. `  
	ram:55b3 cd 53 55       call sub_5553h       	;. S U
	ram:55b6 20 11          jr nz,l55c9h         	;.
	ram:55b8 f1             pop af               	;.
	ram:55b9 30 2a          jr nc,l55e5h         	;0 *
	ram:55bb 3a 82 80       ld a,(08082h)        	;: . .
	ram:55be cd 78 26       call 02678h          	;. x &
	ram:55c1 20 0b          jr nz,l55ceh         	;.
	ram:55c3 e6 01          and 001h             	;. .
	ram:55c5 20 33          jr nz,l55fah         	;3
	ram:55c7 18 09          jr l55d2h            	;. .
l55c9h:
	ram:55c9 f1             pop af               	;.
	ram:55ca 30 19          jr nc,l55e5h         	;0 .
	ram:55cc 18 2c          jr l55fah            	;. ,
l55ceh:
	ram:55ce e6 01          and 001h             	;. .
	ram:55d0 28 28          jr z,l55fah          	;( (
l55d2h:
	ram:55d2 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:55d6 21 d4 8b       ld hl,08bd4h         	;! . .
	ram:55d9 35             dec (hl)             	;5
	ram:55da 2a d7 8b       ld hl,(08bd7h)       	;* . .
	ram:55dd 22 d5 8b       ld (08bd5h),hl       	;" . .
	ram:55e0 d5             push de              	;.
	ram:55e1 cd f5 1f       call 01ff5h          	;. . .
	ram:55e4 d1             pop de               	;.
l55e5h:
	ram:55e5 af             xor a                	;.
l55e6h:
	ram:55e6 f5             push af              	;.
	ram:55e7 cd 40 56       call sub_5640h       	;. @ V
	ram:55ea f1             pop af               	;.
	ram:55eb d1             pop de               	;.
	ram:55ec b7             or a                 	;.
	ram:55ed ed 52          sbc hl,de            	;. R
	ram:55ef c9             ret                  	;.
sub_55f0h:
	ram:55f0 cd fe 55       call sub_55feh       	;. . U
	ram:55f3 e5             push hl              	;.
	ram:55f4 cd 60 20       call 02060h          	;. `  
	ram:55f7 cd 53 55       call sub_5553h       	;. S U
l55fah:
	ram:55fa 3e 01          ld a,001h            	;> .
	ram:55fc 18 e8          jr l55e6h            	;. .
sub_55feh:
	ram:55fe cd 53 55       call sub_5553h       	;. S U
	ram:5601 ed 53 c8 80    ld (080c8h),de       	;. S . .
	ram:5605 1a             ld a,(de)            	;.
	ram:5606 6f             ld l,a               	;o
	ram:5607 13             inc de               	;.
	ram:5608 1a             ld a,(de)            	;.
	ram:5609 f5             push af              	;.
	ram:560a b5             or l                 	;.
	ram:560b ca 34 0a       jp z,00a34h          	;. 4 .
	ram:560e f1             pop af               	;.
	ram:560f 67             ld h,a               	;g
	ram:5610 22 bd 80       ld (080bdh),hl       	;" . .
	ram:5613 c9             ret                  	;.
sub_5614h:
	ram:5614 cd f5 1f       call 01ff5h          	;. . .
	ram:5617 cd 3d 56       call sub_563dh       	;. = V
	ram:561a 13             inc de               	;.
	ram:561b c0             ret nz               	;.
	ram:561c 3a 82 80       ld a,(08082h)        	;: . .
	ram:561f cd 78 26       call 02678h          	;. x &
	ram:5622 20 05          jr nz,l5629h         	;.
	ram:5624 e6 01          and 001h             	;. .
	ram:5626 28 08          jr z,l5630h          	;( .
	ram:5628 c9             ret                  	;.
l5629h:
	ram:5629 e6 01          and 001h             	;. .
	ram:562b 20 03          jr nz,l5630h         	;.
	ram:562d c6 01          add a,001h           	;. .
	ram:562f c9             ret                  	;.
l5630h:
	ram:5630 1b             dec de               	;.
	ram:5631 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5635 af             xor a                	;.
	ram:5636 32 d4 8b       ld (08bd4h),a        	;2 . .
	ram:5639 c9             ret                  	;.
sub_563ah:
	ram:563a d7             rst 10h              	;.
	ram:563b 18 03          jr sub_5640h         	;. .
sub_563dh:
	ram:563d cd 53 55       call sub_5553h       	;. S U
sub_5640h:
	ram:5640 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:5644 1a             ld a,(de)            	;.
	ram:5645 6f             ld l,a               	;o
	ram:5646 13             inc de               	;.
	ram:5647 1a             ld a,(de)            	;.
	ram:5648 1b             dec de               	;.
	ram:5649 f5             push af              	;.
	ram:564a b5             or l                 	;.
	ram:564b ca 34 0a       jp z,00a34h          	;. 4 .
	ram:564e f1             pop af               	;.
	ram:564f 67             ld h,a               	;g
	ram:5650 22 b9 80       ld (080b9h),hl       	;" . .
	ram:5653 c9             ret                  	;.
sub_5654h:
	ram:5654 cd 7d 26       call 0267dh          	;. } &
sub_5657h:
	ram:5657 cd 14 56       call sub_5614h       	;. . V
	ram:565a 22 c1 80       ld (080c1h),hl       	;" . .
	ram:565d 28 21          jr z,l5680h          	;( !
sub_565fh:
	ram:565f cd 64 56       call sub_5664h       	;. d V
	ram:5662 18 1c          jr l5680h            	;. .
sub_5664h:
	ram:5664 cd 78 26       call 02678h          	;. x &
	ram:5667 f5             push af              	;.
	ram:5668 cc fc 29       call z,029fch        	;. . )
	ram:566b f1             pop af               	;.
	ram:566c c4 09 2a       call nz,02a09h       	;. . *
	ram:566f 18 1d          jr l568eh            	;. .
sub_5671h:
	ram:5671 cd 7d 26       call 0267dh          	;. } &
sub_5674h:
	ram:5674 cd 14 56       call sub_5614h       	;. . V
	ram:5677 22 c1 80       ld (080c1h),hl       	;" . .
	ram:567a 28 04          jr z,l5680h          	;( .
	ram:567c 6c             ld l,h               	;l
sub_567dh:
	ram:567d cd 83 56       call sub_5683h       	;. . V
l5680h:
	ram:5680 c3 3b 2e       jp 02e3bh            	;. ; .
sub_5683h:
	ram:5683 cd 78 26       call 02678h          	;. x &
	ram:5686 f5             push af              	;.
	ram:5687 cc 9b 29       call z,0299bh        	;. . )
	ram:568a f1             pop af               	;.
	ram:568b c4 c3 29       call nz,029c3h       	;. . )
l568eh:
	ram:568e ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5692 c9             ret                  	;.
sub_5693h:
	ram:5693 cd 14 56       call sub_5614h       	;. . V
	ram:5696 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5699 28 e5          jr z,l5680h          	;( .
	ram:569b cd a9 56       call sub_56a9h       	;. . V
	ram:569e cd 3e 71       call sub_713eh       	;. > q
	ram:56a1 2a ca 80       ld hl,(080cah)       	;* . .
	ram:56a4 22 c6 80       ld (080c6h),hl       	;" . .
	ram:56a7 18 d7          jr l5680h            	;. .
sub_56a9h:
	ram:56a9 cd 78 26       call 02678h          	;. x &
	ram:56ac f5             push af              	;.
	ram:56ad cc d4 29       call z,029d4h        	;. . )
	ram:56b0 f1             pop af               	;.
	ram:56b1 c4 f1 29       call nz,029f1h       	;. . )
	ram:56b4 18 d8          jr l568eh            	;. .
sub_56b6h:
	ram:56b6 21 d4 8b       ld hl,08bd4h         	;! . .
	ram:56b9 36 00          ld (hl),000h         	;6 .
	ram:56bb cd af 26       call 026afh          	;. . &
sub_56beh:
	ram:56be f5             push af              	;.
	ram:56bf cd 47 1f       call 01f47h          	;. G .
	ram:56c2 c1             pop bc               	;.
	ram:56c3 fe 01          cp 001h              	;. .
	ram:56c5 f5             push af              	;.
	ram:56c6 78             ld a,b               	;x
	ram:56c7 fe a8          cp 0a8h              	;. .
	ram:56c9 20 09          jr nz,l56d4h         	;.
	ram:56cb f1             pop af               	;.
	ram:56cc da 85 12       jp c,01285h          	;. . .
	ram:56cf ca 40 43       jp z,l4340h          	;. @ C
	ram:56d2 18 50          jr l5724h            	;. P
l56d4h:
	ram:56d4 fe a9          cp 0a9h              	;. .
	ram:56d6 20 09          jr nz,l56e1h         	;.
	ram:56d8 f1             pop af               	;.
	ram:56d9 da 7f 14       jp c,0147fh          	;. . .
	ram:56dc ca 20 44       jp z,l4420h          	;.   D
	ram:56df 18 43          jr l5724h            	;. C
l56e1h:
	ram:56e1 fe a6          cp 0a6h              	;. .
	ram:56e3 20 09          jr nz,l56eeh         	;.
	ram:56e5 f1             pop af               	;.
	ram:56e6 da 76 12       jp c,01276h          	;. v .
	ram:56e9 ca 22 43       jp z,sub_4322h       	;. " C
	ram:56ec 18 36          jr l5724h            	;. 6
l56eeh:
	ram:56ee fe a7          cp 0a7h              	;. .
	ram:56f0 20 09          jr nz,l56fbh         	;.
	ram:56f2 f1             pop af               	;.
	ram:56f3 da 75 14       jp c,01475h          	;. u .
	ram:56f6 ca 35 44       jp z,l4435h          	;. 5 D
	ram:56f9 18 17          jr l5712h            	;. .
l56fbh:
	ram:56fb fe cc          cp 0cch              	;. .
	ram:56fd 20 08          jr nz,l5707h         	;.
	ram:56ff f1             pop af               	;.
	ram:5700 d2 28 0a       jp nc,00a28h         	;. ( .
	ram:5703 cd c5 39       call 039c5h          	;. . 9
	ram:5706 c9             ret                  	;.
l5707h:
	ram:5707 fe aa          cp 0aah              	;. .
	ram:5709 20 0e          jr nz,l5719h         	;.
	ram:570b f1             pop af               	;.
	ram:570c da 69 16       jp c,01669h          	;. i .
	ram:570f ca 27 41       jp z,l4127h          	;. ' A
l5712h:
	ram:5712 fe 06          cp 006h              	;. .
	ram:5714 20 4f          jr nz,l5765h         	;O
	ram:5716 c3 3d 5c       jp l5c3dh            	;. = \
l5719h:
	ram:5719 fe ab          cp 0abh              	;. .
	ram:571b 20 09          jr nz,l5726h         	;.
	ram:571d f1             pop af               	;.
	ram:571e da 27 1b       jp c,01b27h          	;. ' .
	ram:5721 ca df 41       jp z,l41dfh          	;. . A
l5724h:
	ram:5724 18 3f          jr l5765h            	;. ?
l5726h:
	ram:5726 fe ac          cp 0ach              	;. .
	ram:5728 20 09          jr nz,l5733h         	;.
	ram:572a f1             pop af               	;.
	ram:572b da 6d 16       jp c,0166dh          	;. m .
	ram:572e ca 2a 41       jp z,l412ah          	;. * A
	ram:5731 18 df          jr l5712h            	;. .
l5733h:
	ram:5733 fe ad          cp 0adh              	;. .
	ram:5735 20 09          jr nz,l5740h         	;.
	ram:5737 f1             pop af               	;.
	ram:5738 da 15 1b       jp c,01b15h          	;. . .
	ram:573b ca db 41       jp z,l41dbh          	;. . A
	ram:573e 18 25          jr l5765h            	;. %
l5740h:
	ram:5740 fe ae          cp 0aeh              	;. .
	ram:5742 20 09          jr nz,l574dh         	;.
	ram:5744 f1             pop af               	;.
	ram:5745 da 71 16       jp c,01671h          	;. q .
	ram:5748 ca 71 41       jp z,l4171h          	;. q A
	ram:574b 18 18          jr l5765h            	;. .
l574dh:
	ram:574d fe af          cp 0afh              	;. .
	ram:574f 20 09          jr nz,l575ah         	;.
	ram:5751 f1             pop af               	;.
	ram:5752 da 1f 1b       jp c,01b1fh          	;. . .
	ram:5755 ca 66 43       jp z,l4366h          	;. f C
	ram:5758 18 0b          jr l5765h            	;. .
l575ah:
	ram:575a fe b0          cp 0b0h              	;. .
	ram:575c 20 0a          jr nz,l5768h         	;.
	ram:575e f1             pop af               	;.
	ram:575f da 5c 1a       jp c,01a5ch          	;. \ .
	ram:5762 ca 19 41       jp z,l4119h          	;. . A
l5765h:
	ram:5765 c3 ac 53       jp l53ach            	;. . S
l5768h:
	ram:5768 fe b1          cp 0b1h              	;. .
	ram:576a 20 09          jr nz,l5775h         	;.
	ram:576c f1             pop af               	;.
	ram:576d da 98 1d       jp c,01d98h          	;. . .
	ram:5770 ca d0 41       jp z,l41d0h          	;. . A
	ram:5773 18 f0          jr l5765h            	;. .
l5775h:
	ram:5775 fe b2          cp 0b2h              	;. .
	ram:5777 20 09          jr nz,l5782h         	;.
	ram:5779 f1             pop af               	;.
	ram:577a da 58 1a       jp c,01a58h          	;. X .
	ram:577d ca 20 41       jp z,l4120h          	;.   A
	ram:5780 18 e3          jr l5765h            	;. .
l5782h:
	ram:5782 fe b3          cp 0b3h              	;. .
	ram:5784 20 09          jr nz,l578fh         	;.
	ram:5786 f1             pop af               	;.
	ram:5787 da a6 1d       jp c,01da6h          	;. . .
	ram:578a ca d7 41       jp z,l41d7h          	;. . A
	ram:578d 18 d6          jr l5765h            	;. .
l578fh:
	ram:578f fe b4          cp 0b4h              	;. .
	ram:5791 20 09          jr nz,l579ch         	;.
	ram:5793 f1             pop af               	;.
	ram:5794 da 54 1a       jp c,01a54h          	;. T .
	ram:5797 ca 6a 41       jp z,l416ah          	;. j A
	ram:579a 18 c9          jr l5765h            	;. .
l579ch:
	ram:579c fe b5          cp 0b5h              	;. .
	ram:579e 20 09          jr nz,l57a9h         	;.
	ram:57a0 f1             pop af               	;.
	ram:57a1 da 4b 1d       jp c,01d4bh          	;. K .
	ram:57a4 ca 5f 43       jp z,l435fh          	;. _ C
	ram:57a7 18 bc          jr l5765h            	;. .
l57a9h:
	ram:57a9 fe 49          cp 049h              	;. I
	ram:57ab 20 49          jr nz,l57f6h         	;I
	ram:57ad f1             pop af               	;.
	ram:57ae da 1f 10       jp c,0101fh          	;. . .
	ram:57b1 ca 40 40       jp z,sub_4040h       	;. @ @
sub_57b4h:
	ram:57b4 fe 06          cp 006h              	;. .
	ram:57b6 28 07          jr z,l57bfh          	;( .
	ram:57b8 cd 7d 26       call 0267dh          	;. } &
	ram:57bb fe 07          cp 007h              	;. .
	ram:57bd 20 a6          jr nz,l5765h         	;.
l57bfh:
	ram:57bf cd 21 5d       call sub_5d21h       	;. ! ]
	ram:57c2 3a b9 80       ld a,(080b9h)        	;: . .
	ram:57c5 26 00          ld h,000h            	;& .
	ram:57c7 6f             ld l,a               	;o
	ram:57c8 cd 17 2a       call 02a17h          	;. . *
	ram:57cb ed 53 c8 80    ld (080c8h),de       	;. S . .
	ram:57cf cd 3b 2e       call 02e3bh          	;. ; .
	ram:57d2 af             xor a                	;.
	ram:57d3 cd 1f 6d       call sub_6d1fh       	;. . m
l57d6h:
	ram:57d6 cd f4 2d       call 02df4h          	;. . -
l57d9h:
	ram:57d9 d7             rst 10h              	;.
	ram:57da cb fe          set 7,(hl)           	;. .
l57dch:
	ram:57dc cd f4 2d       call 02df4h          	;. . -
l57dfh:
	ram:57df 3a d4 8b       ld a,(08bd4h)        	;: . .
	ram:57e2 fe 01          cp 001h              	;. .
	ram:57e4 d8             ret c                	;.
	ram:57e5 2a d5 8b       ld hl,(08bd5h)       	;* . .
	ram:57e8 cb fe          set 7,(hl)           	;. .
	ram:57ea 28 05          jr z,l57f1h          	;( .
	ram:57ec 2a d7 8b       ld hl,(08bd7h)       	;* . .
	ram:57ef cb fe          set 7,(hl)           	;. .
l57f1h:
	ram:57f1 af             xor a                	;.
	ram:57f2 32 d4 8b       ld (08bd4h),a        	;2 . .
	ram:57f5 c9             ret                  	;.
l57f6h:
	ram:57f6 fe b7          cp 0b7h              	;. .
	ram:57f8 20 2a          jr nz,l5824h         	;*
	ram:57fa cd bf 39       call 039bfh          	;. . 9
	ram:57fd f1             pop af               	;.
	ram:57fe cd 11 61       call sub_6111h       	;. . a
	ram:5801 cd b8 50       call sub_50b8h       	;. . P
	ram:5804 3a 84 80       ld a,(08084h)        	;: . .
	ram:5807 fe 24          cp 024h              	;. $
	ram:5809 28 11          jr z,l581ch          	;( .
	ram:580b cd 64 56       call sub_5664h       	;. d V
	ram:580e cd 75 55       call sub_5575h       	;. u U
	ram:5811 cd 50 71       call sub_7150h       	;. P q
	ram:5814 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:5818 ed 53 c6 80    ld (080c6h),de       	;. S . .
l581ch:
	ram:581c 3e 40          ld a,040h            	;> @
	ram:581e cd 1f 6d       call sub_6d1fh       	;. . m
	ram:5821 c3 df 57       jp l57dfh            	;. . W
l5824h:
	ram:5824 fe a0          cp 0a0h              	;. .
	ram:5826 20 09          jr nz,l5831h         	;.
	ram:5828 f1             pop af               	;.
	ram:5829 da fc 10       jp c,010fch          	;. . .
	ram:582c ca d3 40       jp z,l40d3h          	;. . @
	ram:582f 18 30          jr l5861h            	;. 0
l5831h:
	ram:5831 fe 4a          cp 04ah              	;. J
	ram:5833 20 2f          jr nz,l5864h         	;/
	ram:5835 f1             pop af               	;.
	ram:5836 da 5a 0e       jp c,00e5ah          	;. Z .
	ram:5839 ca 12 40       jp z,l4012h          	;. . @
	ram:583c fe 06          cp 006h              	;. .
	ram:583e 20 1a          jr nz,l585ah         	;.
l5840h:
	ram:5840 cd b8 50       call sub_50b8h       	;. . P
	ram:5843 cd 5f 56       call sub_565fh       	;. _ V
	ram:5846 cd 50 71       call sub_7150h       	;. P q
	ram:5849 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:584c 22 c8 80       ld (080c8h),hl       	;" . .
	ram:584f 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5852 cd 29 4e       call sub_4e29h       	;. ) N
	ram:5855 cd cd 69       call sub_69cdh       	;. . i
	ram:5858 18 23          jr l587dh            	;. #
l585ah:
	ram:585a cd 7d 26       call 0267dh          	;. } &
	ram:585d fe 07          cp 007h              	;. .
	ram:585f 28 df          jr z,l5840h          	;( .
l5861h:
	ram:5861 c3 ac 53       jp l53ach            	;. . S
l5864h:
	ram:5864 fe a1          cp 0a1h              	;. .
	ram:5866 20 2f          jr nz,l5897h         	;/
	ram:5868 f1             pop af               	;.
	ram:5869 da 9b 0f       jp c,00f9bh          	;. . .
	ram:586c ca 98 0f       jp z,00f98h          	;. . .
	ram:586f 16 05          ld d,005h            	;. .
l5871h:
	ram:5871 d5             push de              	;.
	ram:5872 fe 06          cp 006h              	;. .
	ram:5874 20 0a          jr nz,l5880h         	;.
l5876h:
	ram:5876 cd 57 56       call sub_5657h       	;. W V
l5879h:
	ram:5879 f1             pop af               	;.
l587ah:
	ram:587a cd d3 6f       call sub_6fd3h       	;. . o
l587dh:
	ram:587d c3 dc 57       jp l57dch            	;. . W
l5880h:
	ram:5880 fe 02          cp 002h              	;. .
	ram:5882 20 05          jr nz,l5889h         	;.
l5884h:
	ram:5884 cd 74 56       call sub_5674h       	;. t V
	ram:5887 18 f0          jr l5879h            	;. .
l5889h:
	ram:5889 cd 7d 26       call 0267dh          	;. } &
	ram:588c fe 07          cp 007h              	;. .
	ram:588e 28 e6          jr z,l5876h          	;( .
	ram:5890 fe 03          cp 003h              	;. .
	ram:5892 28 f0          jr z,l5884h          	;( .
	ram:5894 d1             pop de               	;.
	ram:5895 18 ca          jr l5861h            	;. .
l5897h:
	ram:5897 fe a3          cp 0a3h              	;. .
	ram:5899 20 0b          jr nz,l58a6h         	;.
	ram:589b f1             pop af               	;.
	ram:589c da 5d 0d       jp c,00d5dh          	;. ] .
	ram:589f ca c6 44       jp z,l44c6h          	;. . D
	ram:58a2 16 06          ld d,006h            	;. .
	ram:58a4 18 cb          jr l5871h            	;. .
l58a6h:
	ram:58a6 fe a4          cp 0a4h              	;. .
	ram:58a8 20 0b          jr nz,l58b5h         	;.
	ram:58aa f1             pop af               	;.
	ram:58ab da c3 0f       jp c,00fc3h          	;. . .
	ram:58ae ca d8 44       jp z,l44d8h          	;. . D
	ram:58b1 16 07          ld d,007h            	;. .
	ram:58b3 18 bc          jr l5871h            	;. .
l58b5h:
	ram:58b5 fe a5          cp 0a5h              	;. .
	ram:58b7 20 0b          jr nz,l58c4h         	;.
	ram:58b9 f1             pop af               	;.
	ram:58ba da 47 0d       jp c,00d47h          	;. G .
	ram:58bd ca e6 44       jp z,l44e6h          	;. . D
	ram:58c0 16 08          ld d,008h            	;. .
	ram:58c2 18 ad          jr l5871h            	;. .
l58c4h:
	ram:58c4 fe c8          cp 0c8h              	;. .
	ram:58c6 20 42          jr nz,l590ah         	;B
	ram:58c8 f1             pop af               	;.
	ram:58c9 ca 9b 44       jp z,l449bh          	;. . D
	ram:58cc d8             ret c                	;.
	ram:58cd fe 07          cp 007h              	;. .
	ram:58cf 20 07          jr nz,l58d8h         	;.
	ram:58d1 cd 54 56       call sub_5654h       	;. T V
l58d4h:
	ram:58d4 3e 04          ld a,004h            	;> .
	ram:58d6 18 a2          jr l587ah            	;. .
l58d8h:
	ram:58d8 fe 03          cp 003h              	;. .
	ram:58da 20 05          jr nz,l58e1h         	;.
	ram:58dc cd 71 56       call sub_5671h       	;. q V
	ram:58df 18 f3          jr l58d4h            	;. .
l58e1h:
	ram:58e1 fe 06          cp 006h              	;. .
	ram:58e3 20 05          jr nz,l58eah         	;.
	ram:58e5 cd 57 56       call sub_5657h       	;. W V
	ram:58e8 18 11          jr l58fbh            	;. .
l58eah:
	ram:58ea fe 02          cp 002h              	;. .
	ram:58ec 20 05          jr nz,l58f3h         	;.
	ram:58ee cd 74 56       call sub_5674h       	;. t V
	ram:58f1 18 08          jr l58fbh            	;. .
l58f3h:
	ram:58f3 fe 04          cp 004h              	;. .
	ram:58f5 c2 b3 53       jp nz,l53b3h         	;. . S
	ram:58f8 cd 93 56       call sub_5693h       	;. . V
l58fbh:
	ram:58fb 3a a3 80       ld a,(080a3h)        	;: . .
	ram:58fe e6 1e          and 01eh             	;. .
	ram:5900 47             ld b,a               	;G
	ram:5901 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:5905 cd 56 71       call sub_7156h       	;. V q
	ram:5908 18 79          jr l5983h            	;. y
l590ah:
	ram:590a fe 46          cp 046h              	;. F
	ram:590c 20 0b          jr nz,l5919h         	;.
	ram:590e f1             pop af               	;.
	ram:590f da 53 67       jp c,l6753h          	;. S g
l5912h:
	ram:5912 fe 04          cp 004h              	;. .
	ram:5914 ca bb 53       jp z,l53bbh          	;. . S
	ram:5917 18 4b          jr l5964h            	;. K
l5919h:
	ram:5919 fe a2          cp 0a2h              	;. .
	ram:591b 20 28          jr nz,l5945h         	;(
	ram:591d f1             pop af               	;.
	ram:591e da 73 25       jp c,02573h          	;. s %
	ram:5921 ca 98 40       jp z,sub_4098h       	;. . @
	ram:5924 fe 05          cp 005h              	;. .
	ram:5926 ca 40 55       jp z,l5540h          	;. @ U
	ram:5929 21 ca 6f       ld hl,l6fcah         	;! . o
	ram:592c e5             push hl              	;.
	ram:592d fe 06          cp 006h              	;. .
	ram:592f ca 87 5a       jp z,l5a87h          	;. . Z
	ram:5932 fe 07          cp 007h              	;. .
	ram:5934 ca 87 5a       jp z,l5a87h          	;. . Z
	ram:5937 fe 03          cp 003h              	;. .
	ram:5939 ca 91 5a       jp z,l5a91h          	;. . Z
	ram:593c fe 02          cp 002h              	;. .
	ram:593e ca 91 5a       jp z,l5a91h          	;. . Z
	ram:5941 e1             pop hl               	;.
	ram:5942 c3 ac 53       jp l53ach            	;. . S
l5945h:
	ram:5945 fe b6          cp 0b6h              	;. .
	ram:5947 20 13          jr nz,l595ch         	;.
	ram:5949 f1             pop af               	;.
	ram:594a 30 c6          jr nc,l5912h         	;0 .
	ram:594c cd d1 23       call 023d1h          	;. . #
	ram:594f c8             ret z                	;.
	ram:5950 3a 82 80       ld a,(08082h)        	;: . .
	ram:5953 f5             push af              	;.
	ram:5954 cd 3e 21       call 0213eh          	;. > !
	ram:5957 f1             pop af               	;.
	ram:5958 32 82 80       ld (08082h),a        	;2 . .
	ram:595b c9             ret                  	;.
l595ch:
	ram:595c fe 45          cp 045h              	;. E
	ram:595e 20 07          jr nz,l5967h         	;.
	ram:5960 f1             pop af               	;.
	ram:5961 da 7a 25       jp c,0257ah          	;. z %
l5964h:
	ram:5964 c3 28 0a       jp 00a28h            	;. ( .
l5967h:
	ram:5967 fe b8          cp 0b8h              	;. .
	ram:5969 20 1a          jr nz,l5985h         	;.
	ram:596b f1             pop af               	;.
	ram:596c 30 f6          jr nc,l5964h         	;0 .
	ram:596e cd f4 60       call sub_60f4h       	;. . `
	ram:5971 67             ld h,a               	;g
	ram:5972 6f             ld l,a               	;o
	ram:5973 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5976 cd fc 29       call 029fch          	;. . )
	ram:5979 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:597d cd 3b 2e       call 02e3bh          	;. ; .
	ram:5980 cd d0 6a       call sub_6ad0h       	;. . j
l5983h:
	ram:5983 18 17          jr l599ch            	;. .
l5985h:
	ram:5985 fe 4b          cp 04bh              	;. K
	ram:5987 20 16          jr nz,l599fh         	;.
	ram:5989 f1             pop af               	;.
	ram:598a cd 11 61       call sub_6111h       	;. . a
	ram:598d cd 3d 56       call sub_563dh       	;. = V
	ram:5990 7c             ld a,h               	;|
	ram:5991 65             ld h,l               	;e
	ram:5992 6f             ld l,a               	;o
	ram:5993 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5996 cd 5f 56       call sub_565fh       	;. _ V
	ram:5999 cd 7b 6b       call sub_6b7bh       	;. { k
l599ch:
	ram:599c c3 dc 57       jp l57dch            	;. . W
l599fh:
	ram:599f fe c1          cp 0c1h              	;. .
	ram:59a1 20 05          jr nz,l59a8h         	;.
	ram:59a3 21 6e 63       ld hl,l636eh         	;! n c
	ram:59a6 18 10          jr l59b8h            	;. .
l59a8h:
	ram:59a8 fe c2          cp 0c2h              	;. .
	ram:59aa 20 05          jr nz,l59b1h         	;.
	ram:59ac 21 67 63       ld hl,l6367h         	;! g c
	ram:59af 18 07          jr l59b8h            	;. .
l59b1h:
	ram:59b1 fe 14          cp 014h              	;. .
	ram:59b3 20 12          jr nz,l59c7h         	;.
	ram:59b5 21 55 63       ld hl,l6355h         	;! U c
l59b8h:
	ram:59b8 cd 0b 5d       call sub_5d0bh       	;. . ]
	ram:59bb f1             pop af               	;.
	ram:59bc e5             push hl              	;.
	ram:59bd fe 04          cp 004h              	;. .
	ram:59bf 28 50          jr z,l5a11h          	;( P
	ram:59c1 fe 05          cp 005h              	;. .
	ram:59c3 28 4c          jr z,l5a11h          	;( L
	ram:59c5 18 9d          jr l5964h            	;. .
l59c7h:
	ram:59c7 fe 13          cp 013h              	;. .
	ram:59c9 20 05          jr nz,l59d0h         	;.
	ram:59cb 21 63 63       ld hl,l6363h         	;! c c
	ram:59ce 18 e8          jr l59b8h            	;. .
l59d0h:
	ram:59d0 fe c3          cp 0c3h              	;. .
	ram:59d2 20 18          jr nz,l59ech         	;.
	ram:59d4 f1             pop af               	;.
	ram:59d5 fe 04          cp 004h              	;. .
	ram:59d7 28 08          jr z,l59e1h          	;( .
	ram:59d9 cd 7d 26       call 0267dh          	;. } &
	ram:59dc fe 05          cp 005h              	;. .
	ram:59de c2 56 5a       jp nz,l5a56h         	;. V Z
l59e1h:
	ram:59e1 cd 93 56       call sub_5693h       	;. . V
	ram:59e4 cd a3 62       call sub_62a3h       	;. . b
l59e7h:
	ram:59e7 cd 0b 5d       call sub_5d0bh       	;. . ]
	ram:59ea 18 b0          jr l599ch            	;. .
l59ech:
	ram:59ec fe c4          cp 0c4h              	;. .
	ram:59ee 20 14          jr nz,l5a04h         	;.
	ram:59f0 f1             pop af               	;.
	ram:59f1 fe 04          cp 004h              	;. .
	ram:59f3 28 07          jr z,l59fch          	;( .
	ram:59f5 cd 7d 26       call 0267dh          	;. } &
	ram:59f8 fe 05          cp 005h              	;. .
	ram:59fa 20 5a          jr nz,l5a56h         	;Z
l59fch:
	ram:59fc cd 93 56       call sub_5693h       	;. . V
	ram:59ff cd 9f 62       call sub_629fh       	;. . b
	ram:5a02 18 e3          jr l59e7h            	;. .
l5a04h:
	ram:5a04 fe bc          cp 0bch              	;. .
	ram:5a06 20 25          jr nz,l5a2dh         	;%
	ram:5a08 21 6a 6a       ld hl,l6a6ah         	;! j j
l5a0bh:
	ram:5a0b f1             pop af               	;.
	ram:5a0c e5             push hl              	;.
	ram:5a0d fe 06          cp 006h              	;. .
	ram:5a0f 20 0b          jr nz,l5a1ch         	;.
l5a11h:
	ram:5a11 cd 3d 56       call sub_563dh       	;. = V
	ram:5a14 e1             pop hl               	;.
	ram:5a15 cd 1b 5a       call sub_5a1bh       	;. . Z
	ram:5a18 c3 df 57       jp l57dfh            	;. . W
sub_5a1bh:
	ram:5a1b e9             jp (hl)              	;.
l5a1ch:
	ram:5a1c fe 02          cp 002h              	;. .
	ram:5a1e 28 f1          jr z,l5a11h          	;( .
	ram:5a20 cd 7d 26       call 0267dh          	;. } &
	ram:5a23 fe 07          cp 007h              	;. .
	ram:5a25 28 ea          jr z,l5a11h          	;( .
	ram:5a27 fe 03          cp 003h              	;. .
	ram:5a29 28 e6          jr z,l5a11h          	;( .
	ram:5a2b 18 29          jr l5a56h            	;. )
l5a2dh:
	ram:5a2d fe bb          cp 0bbh              	;. .
	ram:5a2f 20 05          jr nz,l5a36h         	;.
	ram:5a31 21 76 6a       ld hl,l6a76h         	;! v j
	ram:5a34 18 d5          jr l5a0bh            	;. .
l5a36h:
	ram:5a36 fe c9          cp 0c9h              	;. .
	ram:5a38 20 1f          jr nz,l5a59h         	;.
	ram:5a3a f1             pop af               	;.
	ram:5a3b ca 58 1f       jp z,01f58h          	;. X .
	ram:5a3e d8             ret c                	;.
	ram:5a3f 21 d2 6f       ld hl,l6fd2h         	;! . o
l5a42h:
	ram:5a42 fe 05          cp 005h              	;. .
	ram:5a44 ca 40 55       jp z,l5540h          	;. @ U
	ram:5a47 e5             push hl              	;.
	ram:5a48 fe 07          cp 007h              	;. .
	ram:5a4a ca 87 5a       jp z,l5a87h          	;. . Z
	ram:5a4d fe 03          cp 003h              	;. .
	ram:5a4f ca 91 5a       jp z,l5a91h          	;. . Z
	ram:5a52 e1             pop hl               	;.
	ram:5a53 c3 e1 58       jp l58e1h            	;. . X
l5a56h:
	ram:5a56 c3 28 0a       jp 00a28h            	;. ( .
l5a59h:
	ram:5a59 fe ba          cp 0bah              	;. .
	ram:5a5b 20 39          jr nz,l5a96h         	;9
	ram:5a5d f1             pop af               	;.
	ram:5a5e ca 98 40       jp z,sub_4098h       	;. . @
	ram:5a61 da 73 25       jp c,02573h          	;. s %
	ram:5a64 fe 06          cp 006h              	;. .
	ram:5a66 20 09          jr nz,l5a71h         	;.
l5a68h:
	ram:5a68 cd 3d 56       call sub_563dh       	;. = V
	ram:5a6b cd 7a 6a       call sub_6a7ah       	;. z j
	ram:5a6e c3 df 57       jp l57dfh            	;. . W
l5a71h:
	ram:5a71 fe 07          cp 007h              	;. .
	ram:5a73 28 f3          jr z,l5a68h          	;( .
	ram:5a75 fe 02          cp 002h              	;. .
	ram:5a77 28 ef          jr z,l5a68h          	;( .
	ram:5a79 fe 03          cp 003h              	;. .
	ram:5a7b 28 eb          jr z,l5a68h          	;( .
	ram:5a7d 06 a2          ld b,0a2h            	;. .
	ram:5a7f fe 05          cp 005h              	;. .
	ram:5a81 ca 40 55       jp z,l5540h          	;. @ U
	ram:5a84 c3 ac 53       jp l53ach            	;. . S
l5a87h:
	ram:5a87 cd 57 56       call sub_5657h       	;. W V
l5a8ah:
	ram:5a8a e1             pop hl               	;.
	ram:5a8b cd 1b 5a       call sub_5a1bh       	;. . Z
l5a8eh:
	ram:5a8e c3 dc 57       jp l57dch            	;. . W
l5a91h:
	ram:5a91 cd 74 56       call sub_5674h       	;. t V
	ram:5a94 18 f4          jr l5a8ah            	;. .
l5a96h:
	ram:5a96 fe ca          cp 0cah              	;. .
	ram:5a98 20 15          jr nz,l5aafh         	;.
	ram:5a9a f1             pop af               	;.
	ram:5a9b ca 55 1f       jp z,01f55h          	;. U .
	ram:5a9e da 98 21       jp c,02198h          	;. . !
	ram:5aa1 fe 05          cp 005h              	;. .
	ram:5aa3 ca 40 55       jp z,l5540h          	;. @ U
	ram:5aa6 fe 02          cp 002h              	;. .
	ram:5aa8 28 21          jr z,l5acbh          	;( !
	ram:5aaa 21 ce 6f       ld hl,l6fceh         	;! . o
	ram:5aad 18 24          jr l5ad3h            	;. $
l5aafh:
	ram:5aaf fe cb          cp 0cbh              	;. .
	ram:5ab1 20 3f          jr nz,l5af2h         	;?
	ram:5ab3 f1             pop af               	;.
	ram:5ab4 da 98 21       jp c,02198h          	;. . !
	ram:5ab7 28 0f          jr z,l5ac8h          	;( .
	ram:5ab9 fe 05          cp 005h              	;. .
	ram:5abb ca 40 55       jp z,l5540h          	;. @ U
	ram:5abe fe 02          cp 002h              	;. .
	ram:5ac0 20 0e          jr nz,l5ad0h         	;.
	ram:5ac2 d7             rst 10h              	;.
	ram:5ac3 cd 03 61       call sub_6103h       	;. . a
	ram:5ac6 20 03          jr nz,l5acbh         	;.
l5ac8h:
	ram:5ac8 c3 4d 1f       jp 01f4dh            	;. M .
l5acbh:
	ram:5acb cd 74 56       call sub_5674h       	;. t V
	ram:5ace 18 0a          jr l5adah            	;. .
l5ad0h:
	ram:5ad0 21 c6 6f       ld hl,l6fc6h         	;! . o
l5ad3h:
	ram:5ad3 fe 06          cp 006h              	;. .
	ram:5ad5 20 0b          jr nz,l5ae2h         	;.
	ram:5ad7 cd 57 56       call sub_5657h       	;. W V
l5adah:
	ram:5ada cd 98 21       call 02198h          	;. . !
	ram:5add cd e5 70       call l70e5h          	;. . p
	ram:5ae0 18 ac          jr l5a8eh            	;. .
l5ae2h:
	ram:5ae2 fe 04          cp 004h              	;. .
	ram:5ae4 c2 42 5a       jp nz,l5a42h         	;. B Z
	ram:5ae7 cd 93 56       call sub_5693h       	;. . V
	ram:5aea cd 98 21       call 02198h          	;. . !
	ram:5aed cd 84 63       call l6384h          	;. . c
	ram:5af0 18 9c          jr l5a8eh            	;. .
l5af2h:
	ram:5af2 fe b9          cp 0b9h              	;. .
	ram:5af4 20 16          jr nz,l5b0ch         	;.
	ram:5af6 f1             pop af               	;.
	ram:5af7 fe 02          cp 002h              	;. .
	ram:5af9 20 08          jr nz,l5b03h         	;.
	ram:5afb cd 74 56       call sub_5674h       	;. t V
l5afeh:
	ram:5afe cd 71 6f       call sub_6f71h       	;. q o
	ram:5b01 18 8b          jr l5a8eh            	;. .
l5b03h:
	ram:5b03 fe 03          cp 003h              	;. .
	ram:5b05 20 51          jr nz,l5b58h         	;Q
	ram:5b07 cd 71 56       call sub_5671h       	;. q V
	ram:5b0a 18 f2          jr l5afeh            	;. .
l5b0ch:
	ram:5b0c fe c6          cp 0c6h              	;. .
	ram:5b0e 20 1f          jr nz,l5b2fh         	;.
	ram:5b10 f1             pop af               	;.
	ram:5b11 fe 02          cp 002h              	;. .
	ram:5b13 20 11          jr nz,l5b26h         	;.
l5b15h:
	ram:5b15 cd 3d 56       call sub_563dh       	;. = V
	ram:5b18 6c             ld l,h               	;l
	ram:5b19 26 00          ld h,000h            	;& .
	ram:5b1b cd a9 56       call sub_56a9h       	;. . V
	ram:5b1e cd 54 71       call sub_7154h       	;. T q
	ram:5b21 cd 56 20       call 02056h          	;. V  
	ram:5b24 18 28          jr l5b4eh            	;. (
l5b26h:
	ram:5b26 fe 03          cp 003h              	;. .
	ram:5b28 20 2e          jr nz,l5b58h         	;.
	ram:5b2a cd 7d 26       call 0267dh          	;. } &
	ram:5b2d 18 e6          jr l5b15h            	;. .
l5b2fh:
	ram:5b2f fe c5          cp 0c5h              	;. .
	ram:5b31 20 28          jr nz,l5b5bh         	;(
	ram:5b33 cd 0b 5d       call sub_5d0bh       	;. . ]
	ram:5b36 f1             pop af               	;.
	ram:5b37 fe 04          cp 004h              	;. .
	ram:5b39 20 16          jr nz,l5b51h         	;.
l5b3bh:
	ram:5b3b cd 3d 56       call sub_563dh       	;. = V
	ram:5b3e 7c             ld a,h               	;|
	ram:5b3f b7             or a                 	;.
	ram:5b40 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:5b43 cd 83 56       call sub_5683h       	;. . V
	ram:5b46 06 04          ld b,004h            	;. .
	ram:5b48 cd 56 71       call sub_7156h       	;. V q
	ram:5b4b cd 56 20       call 02056h          	;. V  
l5b4eh:
	ram:5b4e c3 df 57       jp l57dfh            	;. . W
l5b51h:
	ram:5b51 cd 7d 26       call 0267dh          	;. } &
	ram:5b54 fe 05          cp 005h              	;. .
	ram:5b56 28 e3          jr z,l5b3bh          	;( .
l5b58h:
	ram:5b58 c3 28 0a       jp 00a28h            	;. ( .
l5b5bh:
	ram:5b5b fe 0a          cp 00ah              	;. .
	ram:5b5d 20 06          jr nz,l5b65h         	;.
	ram:5b5f f1             pop af               	;.
	ram:5b60 da 64 64       jp c,l6464h          	;. d d
	ram:5b63 18 f3          jr l5b58h            	;. .
l5b65h:
	ram:5b65 fe cd          cp 0cdh              	;. .
	ram:5b67 20 07          jr nz,l5b70h         	;.
	ram:5b69 f1             pop af               	;.
	ram:5b6a 30 ec          jr nc,l5b58h         	;0 .
	ram:5b6c cd d7 39       call 039d7h          	;. . 9
	ram:5b6f c9             ret                  	;.
l5b70h:
	ram:5b70 fe ce          cp 0ceh              	;. .
	ram:5b72 20 07          jr nz,l5b7bh         	;.
	ram:5b74 f1             pop af               	;.
	ram:5b75 30 e1          jr nc,l5b58h         	;0 .
	ram:5b77 cd dd 39       call 039ddh          	;. . 9
	ram:5b7a c9             ret                  	;.
l5b7bh:
	ram:5b7b fe cf          cp 0cfh              	;. .
	ram:5b7d 20 07          jr nz,l5b86h         	;.
	ram:5b7f f1             pop af               	;.
	ram:5b80 30 d6          jr nc,l5b58h         	;0 .
	ram:5b82 cd e3 39       call 039e3h          	;. . 9
	ram:5b85 c9             ret                  	;.
l5b86h:
	ram:5b86 fe d0          cp 0d0h              	;. .
	ram:5b88 20 07          jr nz,l5b91h         	;.
	ram:5b8a f1             pop af               	;.
	ram:5b8b 30 cb          jr nc,l5b58h         	;0 .
	ram:5b8d cd e9 39       call 039e9h          	;. . 9
	ram:5b90 c9             ret                  	;.
l5b91h:
	ram:5b91 fe c7          cp 0c7h              	;. .
	ram:5b93 20 15          jr nz,l5baah         	;.
	ram:5b95 f1             pop af               	;.
	ram:5b96 fe 0c          cp 00ch              	;. .
	ram:5b98 20 be          jr nz,l5b58h         	;.
l5b9ah:
	ram:5b9a cd 53 55       call sub_5553h       	;. S U
	ram:5b9d eb             ex de,hl             	;.
	ram:5b9e 5e             ld e,(hl)            	;^
	ram:5b9f 23             inc hl               	;#
	ram:5ba0 56             ld d,(hl)            	;V
	ram:5ba1 eb             ex de,hl             	;.
	ram:5ba2 cd ef 39       call 039efh          	;. . 9
	ram:5ba5 cd 95 20       call 02095h          	;. .  
	ram:5ba8 18 a4          jr l5b4eh            	;. .
l5baah:
	ram:5baa fe 01          cp 001h              	;. .
	ram:5bac 20 0f          jr nz,l5bbdh         	;.
	ram:5bae f1             pop af               	;.
	ram:5baf c8             ret z                	;.
	ram:5bb0 fe 02          cp 002h              	;. .
	ram:5bb2 20 a4          jr nz,l5b58h         	;.
	ram:5bb4 cd 3d 56       call sub_563dh       	;. = V
	ram:5bb7 7c             ld a,h               	;|
	ram:5bb8 cd f3 5b       call sub_5bf3h       	;. . [
	ram:5bbb 18 28          jr l5be5h            	;. (
l5bbdh:
	ram:5bbd fe 02          cp 002h              	;. .
	ram:5bbf 20 19          jr nz,l5bdah         	;.
	ram:5bc1 f1             pop af               	;.
	ram:5bc2 ca a5 1e       jp z,01ea5h          	;. . .
	ram:5bc5 fe 02          cp 002h              	;. .
	ram:5bc7 20 4b          jr nz,l5c14h         	;K
	ram:5bc9 cd 3d 56       call sub_563dh       	;. = V
	ram:5bcc 7c             ld a,h               	;|
	ram:5bcd fe 02          cp 002h              	;. .
	ram:5bcf c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:5bd2 cd fd 5b       call sub_5bfdh       	;. . [
	ram:5bd5 cd 46 70       call sub_7046h       	;. F p
	ram:5bd8 18 0b          jr l5be5h            	;. .
l5bdah:
	ram:5bda fe 03          cp 003h              	;. .
	ram:5bdc 20 29          jr nz,l5c07h         	;)
	ram:5bde f1             pop af               	;.
	ram:5bdf cd e8 5b       call sub_5be8h       	;. . [
	ram:5be2 cd 33 70       call sub_7033h       	;. 3 p
l5be5h:
	ram:5be5 c3 dc 57       jp l57dch            	;. . W
sub_5be8h:
	ram:5be8 fe 02          cp 002h              	;. .
	ram:5bea 20 28          jr nz,l5c14h         	;(
	ram:5bec cd 3d 56       call sub_563dh       	;. = V
	ram:5bef 7c             ld a,h               	;|
	ram:5bf0 21 31 00       ld hl,00031h         	;! 1 .
sub_5bf3h:
	ram:5bf3 fe 01          cp 001h              	;. .
	ram:5bf5 ca 34 0a       jp z,00a34h          	;. 4 .
	ram:5bf8 fe 04          cp 004h              	;. .
	ram:5bfa d2 34 0a       jp nc,00a34h         	;. 4 .
sub_5bfdh:
	ram:5bfd 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5c00 6c             ld l,h               	;l
	ram:5c01 cd 9b 29       call 0299bh          	;. . )
	ram:5c04 c3 8e 56       jp l568eh            	;. . V
l5c07h:
	ram:5c07 fe 04          cp 004h              	;. .
	ram:5c09 20 0c          jr nz,l5c17h         	;.
	ram:5c0b f1             pop af               	;.
	ram:5c0c cd e8 5b       call sub_5be8h       	;. . [
	ram:5c0f cd 4c 70       call sub_704ch       	;. L p
	ram:5c12 18 d1          jr l5be5h            	;. .
l5c14h:
	ram:5c14 c3 28 0a       jp 00a28h            	;. ( .
l5c17h:
	ram:5c17 16 03          ld d,003h            	;. .
	ram:5c19 fe 06          cp 006h              	;. .
	ram:5c1b 20 08          jr nz,l5c25h         	;.
l5c1dh:
	ram:5c1d f1             pop af               	;.
	ram:5c1e 30 f4          jr nc,l5c14h         	;0 .
	ram:5c20 7a             ld a,d               	;z
	ram:5c21 cd f5 39       call 039f5h          	;. . 9
	ram:5c24 c9             ret                  	;.
l5c25h:
	ram:5c25 15             dec d                	;.
	ram:5c26 fe 08          cp 008h              	;. .
	ram:5c28 28 f3          jr z,l5c1dh          	;( .
	ram:5c2a 15             dec d                	;.
	ram:5c2b fe 07          cp 007h              	;. .
	ram:5c2d 28 ee          jr z,l5c1dh          	;( .
	ram:5c2f fe 09          cp 009h              	;. .
	ram:5c31 20 04          jr nz,l5c37h         	;.
	ram:5c33 f1             pop af               	;.
	ram:5c34 d8             ret c                	;.
	ram:5c35 18 dd          jr l5c14h            	;. .
l5c37h:
	ram:5c37 fe d2          cp 0d2h              	;. .
	ram:5c39 c2 c5 5c       jp nz,l5cc5h         	;. . \
	ram:5c3c f1             pop af               	;.
l5c3dh:
	ram:5c3d cd af 26       call 026afh          	;. . &
	ram:5c40 fd cb 00 8e    res 1,(iy+000h)      	;. . . .
l5c44h:
	ram:5c44 cd bf 39       call 039bfh          	;. . 9
	ram:5c47 cd 11 61       call sub_6111h       	;. . a
	ram:5c4a c5             push bc              	;.
	ram:5c4b cd 3d 56       call sub_563dh       	;. = V
	ram:5c4e cd f5 25       call 025f5h          	;. . %
	ram:5c51 28 1a          jr z,l5c6dh          	;( .
	ram:5c53 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5c56 cd 78 26       call 02678h          	;. x &
	ram:5c59 f5             push af              	;.
	ram:5c5a cc fc 29       call z,029fch        	;. . )
	ram:5c5d f1             pop af               	;.
	ram:5c5e c4 09 2a       call nz,02a09h       	;. . *
	ram:5c61 cd 75 55       call sub_5575h       	;. u U
	ram:5c64 d5             push de              	;.
	ram:5c65 cd 54 71       call sub_7154h       	;. T q
	ram:5c68 d1             pop de               	;.
	ram:5c69 ed 53 c6 80    ld (080c6h),de       	;. S . .
l5c6dh:
	ram:5c6d 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5c70 cd bb 50       call sub_50bbh       	;. . P
	ram:5c73 fd cb 00 4e    bit 1,(iy+000h)      	;. . . N
	ram:5c77 20 03          jr nz,l5c7ch         	;.
	ram:5c79 cd 5f 56       call sub_565fh       	;. _ V
l5c7ch:
	ram:5c7c 3a b9 80       ld a,(080b9h)        	;: . .
	ram:5c7f 26 00          ld h,000h            	;& .
	ram:5c81 6f             ld l,a               	;o
	ram:5c82 e5             push hl              	;.
	ram:5c83 cd f1 29       call 029f1h          	;. . )
	ram:5c86 ed 53 c8 80    ld (080c8h),de       	;. S . .
	ram:5c8a cd 3b 2e       call 02e3bh          	;. ; .
	ram:5c8d e1             pop hl               	;.
	ram:5c8e cd 78 26       call 02678h          	;. x &
	ram:5c91 28 05          jr z,l5c98h          	;( .
	ram:5c93 cd f1 29       call 029f1h          	;. . )
	ram:5c96 18 03          jr l5c9bh            	;. .
l5c98h:
	ram:5c98 cd 17 2a       call 02a17h          	;. . *
l5c9bh:
	ram:5c9b ed 53 ce 80    ld (080ceh),de       	;. S . .
	ram:5c9f cd 75 55       call sub_5575h       	;. u U
	ram:5ca2 cd fb 39       call 039fbh          	;. . 9
	ram:5ca5 f1             pop af               	;.
	ram:5ca6 fd cb 00 4e    bit 1,(iy+000h)      	;. . . N
	ram:5caa 28 11          jr z,l5cbdh          	;( .
	ram:5cac cb 40          bit 0,b              	;. @
	ram:5cae 20 03          jr nz,l5cb3h         	;.
	ram:5cb0 cd 78 26       call 02678h          	;. x &
l5cb3h:
	ram:5cb3 c2 dc 57       jp nz,l57dch         	;. . W
	ram:5cb6 cd dc 57       call l57dch          	;. . W
	ram:5cb9 cd 89 7a       call sub_7a89h       	;. . z
	ram:5cbc c9             ret                  	;.
l5cbdh:
	ram:5cbd fe d2          cp 0d2h              	;. .
	ram:5cbf c2 d3 72       jp nz,l72d3h         	;. . r
	ram:5cc2 c3 d6 57       jp l57d6h            	;. . W
l5cc5h:
	ram:5cc5 fe d1          cp 0d1h              	;. .
	ram:5cc7 20 0b          jr nz,l5cd4h         	;.
	ram:5cc9 f1             pop af               	;.
	ram:5cca cd af 26       call 026afh          	;. . &
	ram:5ccd fd cb 00 ce    set 1,(iy+000h)      	;. . . .
	ram:5cd1 c3 44 5c       jp l5c44h            	;. D \
l5cd4h:
	ram:5cd4 fe 12          cp 012h              	;. .
	ram:5cd6 20 14          jr nz,l5cech         	;.
	ram:5cd8 f1             pop af               	;.
	ram:5cd9 da e0 11       jp c,011e0h          	;. . .
	ram:5cdc ca c4 11       jp z,011c4h          	;. . .
	ram:5cdf cd c7 21       call 021c7h          	;. . !
	ram:5ce2 11 00 80       ld de,08000h         	;. . .
	ram:5ce5 d5             push de              	;.
	ram:5ce6 c3 49 50       jp l5049h            	;. I P
l5ce9h:
	ram:5ce9 c3 28 0a       jp 00a28h            	;. ( .
l5cech:
	ram:5cec fe d4          cp 0d4h              	;. .
	ram:5cee 20 4e          jr nz,l5d3eh         	;N
	ram:5cf0 cd bf 39       call 039bfh          	;. . 9
	ram:5cf3 f1             pop af               	;.
	ram:5cf4 fe 04          cp 004h              	;. .
	ram:5cf6 20 1d          jr nz,l5d15h         	;.
l5cf8h:
	ram:5cf8 cd 3d 56       call sub_563dh       	;. = V
	ram:5cfb 11 01 00       ld de,00001h         	;. . .
	ram:5cfe b7             or a                 	;.
	ram:5cff ed 52          sbc hl,de            	;. R
	ram:5d01 ca 34 0a       jp z,00a34h          	;. 4 .
	ram:5d04 19             add hl,de            	;.
	ram:5d05 cd 07 3a       call 03a07h          	;. . :
	ram:5d08 cd df 57       call l57dfh          	;. . W
sub_5d0bh:
	ram:5d0b ed 5b 69 8a    ld de,(08a69h)       	;. [ i .
	ram:5d0f 1b             dec de               	;.
	ram:5d10 ed 53 69 8a    ld (08a69h),de       	;. S i .
	ram:5d14 c9             ret                  	;.
l5d15h:
	ram:5d15 cd 7d 26       call 0267dh          	;. } &
	ram:5d18 fe 05          cp 005h              	;. .
	ram:5d1a 28 dc          jr z,l5cf8h          	;( .
	ram:5d1c 18 cb          jr l5ce9h            	;. .
sub_5d1eh:
	ram:5d1e cd 11 61       call sub_6111h       	;. . a
sub_5d21h:
	ram:5d21 cd 14 56       call sub_5614h       	;. . V
	ram:5d24 f5             push af              	;.
	ram:5d25 cd bb 50       call sub_50bbh       	;. . P
	ram:5d28 f1             pop af               	;.
sub_5d29h:
	ram:5d29 22 c1 80       ld (080c1h),hl       	;" . .
	ram:5d2c ca 3b 2e       jp z,02e3bh          	;. ; .
	ram:5d2f cd 5f 56       call sub_565fh       	;. _ V
	ram:5d32 cd 50 71       call sub_7150h       	;. P q
	ram:5d35 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:5d39 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:5d3d c9             ret                  	;.
l5d3eh:
	ram:5d3e fe bd          cp 0bdh              	;. .
	ram:5d40 20 20          jr nz,l5d62h         	;
	ram:5d42 f1             pop af               	;.
	ram:5d43 47             ld b,a               	;G
	ram:5d44 37             scf                  	;7
l5d45h:
	ram:5d45 f5             push af              	;.
	ram:5d46 cd bf 39       call 039bfh          	;. . 9
	ram:5d49 78             ld a,b               	;x
	ram:5d4a cd 11 61       call sub_6111h       	;. . a
	ram:5d4d cd 14 56       call sub_5614h       	;. . V
	ram:5d50 f5             push af              	;.
	ram:5d51 7c             ld a,h               	;|
	ram:5d52 bd             cp l                 	;.
	ram:5d53 28 02          jr z,l5d57h          	;( .
	ram:5d55 30 92          jr nc,l5ce9h         	;0 .
l5d57h:
	ram:5d57 f1             pop af               	;.
	ram:5d58 cd 29 5d       call sub_5d29h       	;. ) ]
	ram:5d5b f1             pop af               	;.
	ram:5d5c cd ae 71       call sub_71aeh       	;. . q
	ram:5d5f c3 dc 57       jp l57dch            	;. . W
l5d62h:
	ram:5d62 fe be          cp 0beh              	;. .
	ram:5d64 20 05          jr nz,l5d6bh         	;.
	ram:5d66 f1             pop af               	;.
	ram:5d67 47             ld b,a               	;G
	ram:5d68 af             xor a                	;.
	ram:5d69 18 da          jr l5d45h            	;. .
l5d6bh:
	ram:5d6b fe d3          cp 0d3h              	;. .
	ram:5d6d 20 2a          jr nz,l5d99h         	;*
	ram:5d6f f1             pop af               	;.
	ram:5d70 cd 11 61       call sub_6111h       	;. . a
	ram:5d73 df             rst 18h              	;.
	ram:5d74 cd 3a 56       call sub_563ah       	;. : V
	ram:5d77 cd bb 50       call sub_50bbh       	;. . P
	ram:5d7a 21 6a 6a       ld hl,l6a6ah         	;! j j
	ram:5d7d cd 1b 5a       call sub_5a1bh       	;. . Z
	ram:5d80 cf             rst 8                	;.
	ram:5d81 cd f4 2d       call 02df4h          	;. . -
	ram:5d84 cd 45 2e       call 02e45h          	;. E .
	ram:5d87 cd bf 57       call l57bfh          	;. . W
	ram:5d8a cd 3d 56       call sub_563dh       	;. = V
	ram:5d8d 21 6a 6a       ld hl,l6a6ah         	;! j j
	ram:5d90 cd 1b 5a       call sub_5a1bh       	;. . Z
	ram:5d93 cd ef 2d       call 02defh          	;. . -
	ram:5d96 ef             rst 28h              	;.
	ram:5d97 18 5d          jr l5df6h            	;. ]
l5d99h:
	ram:5d99 fe c0          cp 0c0h              	;. .
	ram:5d9b 20 0e          jr nz,l5dabh         	;.
	ram:5d9d cd 0b 5d       call sub_5d0bh       	;. . ]
	ram:5da0 f1             pop af               	;.
	ram:5da1 e6 1e          and 01eh             	;. .
	ram:5da3 fe 04          cp 004h              	;. .
	ram:5da5 ca 9a 5b       jp z,l5b9ah          	;. . [
l5da8h:
	ram:5da8 c3 28 0a       jp 00a28h            	;. ( .
l5dabh:
	ram:5dab fe d5          cp 0d5h              	;. .
	ram:5dad 20 05          jr nz,l5db4h         	;.
	ram:5daf f1             pop af               	;.
	ram:5db0 cd b9 79       call sub_79b9h       	;. . y
	ram:5db3 c9             ret                  	;.
l5db4h:
	ram:5db4 fe d6          cp 0d6h              	;. .
	ram:5db6 20 05          jr nz,l5dbdh         	;.
	ram:5db8 f1             pop af               	;.
	ram:5db9 cd 12 7a       call sub_7a12h       	;. . z
	ram:5dbc c9             ret                  	;.
l5dbdh:
	ram:5dbd fe bf          cp 0bfh              	;. .
	ram:5dbf 20 41          jr nz,l5e02h         	;A
	ram:5dc1 f1             pop af               	;.
	ram:5dc2 e6 1e          and 01eh             	;. .
	ram:5dc4 fe 06          cp 006h              	;. .
	ram:5dc6 20 24          jr nz,l5dech         	;$
	ram:5dc8 cd 3d 56       call sub_563dh       	;. = V
	ram:5dcb e5             push hl              	;.
	ram:5dcc 21 02 00       ld hl,00002h         	;! . .
	ram:5dcf cd a9 56       call sub_56a9h       	;. . V
	ram:5dd2 e1             pop hl               	;.
	ram:5dd3 e5             push hl              	;.
	ram:5dd4 cd fa 5d       call sub_5dfah       	;. . ]
	ram:5dd7 21 02 00       ld hl,00002h         	;! . .
	ram:5dda cd 85 62       call sub_6285h       	;. . b
	ram:5ddd e1             pop hl               	;.
	ram:5dde cd f9 5d       call sub_5df9h       	;. . ]
	ram:5de1 21 01 00       ld hl,00001h         	;! . .
	ram:5de4 cd 85 62       call sub_6285h       	;. . b
	ram:5de7 cd 56 20       call 02056h          	;. V  
	ram:5dea 18 0a          jr l5df6h            	;. .
l5dech:
	ram:5dec fe 02          cp 002h              	;. .
	ram:5dee 20 b8          jr nz,l5da8h         	;.
	ram:5df0 cd 3d 56       call sub_563dh       	;. = V
	ram:5df3 cd f9 5d       call sub_5df9h       	;. . ]
l5df6h:
	ram:5df6 c3 df 57       jp l57dfh            	;. . W
sub_5df9h:
	ram:5df9 6c             ld l,h               	;l
sub_5dfah:
	ram:5dfa 26 00          ld h,000h            	;& .
	ram:5dfc cd ef 39       call 039efh          	;. . 9
	ram:5dff c3 95 20       jp 02095h            	;. .  
l5e02h:
	ram:5e02 fe d7          cp 0d7h              	;. .
	ram:5e04 20 05          jr nz,l5e0bh         	;.
	ram:5e06 f1             pop af               	;.
	ram:5e07 cd 1f 3a       call 03a1fh          	;. . :
	ram:5e0a c9             ret                  	;.
l5e0bh:
	ram:5e0b fe 47          cp 047h              	;. G
	ram:5e0d 20 0c          jr nz,l5e1bh         	;.
	ram:5e0f f1             pop af               	;.
	ram:5e10 d2 12 59       jp nc,l5912h         	;. . Y
	ram:5e13 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:5e17 c8             ret z                	;.
	ram:5e18 c3 44 0e       jp 00e44h            	;. D .
l5e1bh:
	ram:5e1b fe 48          cp 048h              	;. H
	ram:5e1d 20 0c          jr nz,l5e2bh         	;.
	ram:5e1f f1             pop af               	;.
	ram:5e20 d2 12 59       jp nc,l5912h         	;. . Y
	ram:5e23 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:5e27 c0             ret nz               	;.
	ram:5e28 c3 3b 0e       jp 00e3bh            	;. ; .
l5e2bh:
	ram:5e2b c3 2c 0a       jp 00a2ch            	;. , .
l5e2eh:
	ram:5e2e cd db 23       call 023dbh          	;. . #
l5e31h:
	ram:5e31 c2 14 0a       jp nz,00a14h         	;. . .
	ram:5e34 cd 95 39       call 03995h          	;. . 9
	ram:5e37 da 34 0a       jp c,00a34h          	;. 4 .
	ram:5e3a d5             push de              	;.
	ram:5e3b eb             ex de,hl             	;.
	ram:5e3c cd 17 2a       call 02a17h          	;. . *
	ram:5e3f ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5e43 cd cf 2d       call 02dcfh          	;. . -
	ram:5e46 cd db 23       call 023dbh          	;. . #
	ram:5e49 20 e6          jr nz,l5e31h         	;.
	ram:5e4b cd 95 39       call 03995h          	;. . 9
	ram:5e4e d5             push de              	;.
	ram:5e4f cd cf 2d       call 02dcfh          	;. . -
	ram:5e52 cd 47 1f       call 01f47h          	;. G .
	ram:5e55 fe 0c          cp 00ch              	;. .
	ram:5e57 20 6a          jr nz,l5ec3h         	;j
	ram:5e59 cd 3d 56       call sub_563dh       	;. = V
	ram:5e5c eb             ex de,hl             	;.
	ram:5e5d c1             pop bc               	;.
	ram:5e5e e1             pop hl               	;.
	ram:5e5f e5             push hl              	;.
	ram:5e60 2b             dec hl               	;+
	ram:5e61 09             add hl,bc            	;.
	ram:5e62 38 5f          jr c,l5ec3h          	;8 _
	ram:5e64 eb             ex de,hl             	;.
	ram:5e65 ed 52          sbc hl,de            	;. R
	ram:5e67 da 34 0a       jp c,00a34h          	;. 4 .
	ram:5e6a 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:5e6d 23             inc hl               	;#
	ram:5e6e 09             add hl,bc            	;.
	ram:5e6f ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:5e73 13             inc de               	;.
	ram:5e74 13             inc de               	;.
	ram:5e75 c1             pop bc               	;.
	ram:5e76 ed b0          ldir                 	;. .
	ram:5e78 cd 56 20       call 02056h          	;. V  
l5e7bh:
	ram:5e7b c3 df 57       jp l57dfh            	;. . W
l5e7eh:
	ram:5e7e cd 8b 5f       call sub_5f8bh       	;. . _
	ram:5e81 cd 25 3a       call 03a25h          	;. % :
	ram:5e84 c9             ret                  	;.
	ram:5e85 cd af 26       call 026afh          	;. . &
	ram:5e88 21 d4 8b       ld hl,08bd4h         	;! . .
	ram:5e8b 36 00          ld (hl),000h         	;6 .
	ram:5e8d fe 1d          cp 01dh              	;. .
	ram:5e8f 28 9d          jr z,l5e2eh          	;( .
	ram:5e91 fe 2c          cp 02ch              	;. ,
	ram:5e93 20 04          jr nz,l5e99h         	;.
	ram:5e95 cd 6a 4b       call sub_4b6ah       	;. j K
	ram:5e98 c9             ret                  	;.
l5e99h:
	ram:5e99 fe 2a          cp 02ah              	;. *
	ram:5e9b 28 29          jr z,l5ec6h          	;( )
	ram:5e9d fe 2b          cp 02bh              	;. +
	ram:5e9f 28 2b          jr z,l5ecch          	;( +
	ram:5ea1 fe 1a          cp 01ah              	;. .
	ram:5ea3 ca 31 5f       jp z,l5f31h          	;. 1 _
	ram:5ea6 fe 19          cp 019h              	;. .
	ram:5ea8 ca 3b 5f       jp z,l5f3bh          	;. ; _
	ram:5eab fe 1b          cp 01bh              	;. .
	ram:5ead ca 44 5f       jp z,l5f44h          	;. D _
	ram:5eb0 fe 1c          cp 01ch              	;. .
	ram:5eb2 ca 60 60       jp z,l6060h          	;. ` `
	ram:5eb5 fe f2          cp 0f2h              	;. .
	ram:5eb7 28 c5          jr z,l5e7eh          	;( .
	ram:5eb9 fe 25          cp 025h              	;. %
	ram:5ebb c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5ebe cd c0 61       call sub_61c0h       	;. . a
	ram:5ec1 18 b8          jr l5e7bh            	;. .
l5ec3h:
	ram:5ec3 c3 28 0a       jp 00a28h            	;. ( .
l5ec6h:
	ram:5ec6 fd cb 07 96    res 2,(iy+007h)      	;. . . .
	ram:5eca 18 04          jr l5ed0h            	;. .
l5ecch:
	ram:5ecc fd cb 07 d6    set 2,(iy+007h)      	;. . . .
l5ed0h:
	ram:5ed0 fd cb 07 5e    bit 3,(iy+007h)      	;. . . ^
	ram:5ed4 c2 51 0a       jp nz,00a51h         	;. Q .
	ram:5ed7 fd cb 07 de    set 3,(iy+007h)      	;. . . .
	ram:5edb cd ea 2d       call 02deah          	;. . -
	ram:5ede 3a 82 80       ld a,(08082h)        	;: . .
	ram:5ee1 e6 1e          and 01eh             	;. .
	ram:5ee3 28 04          jr z,l5ee9h          	;( .
	ram:5ee5 fe 04          cp 004h              	;. .
	ram:5ee7 20 da          jr nz,l5ec3h         	;.
l5ee9h:
	ram:5ee9 cd e5 2d       call 02de5h          	;. . -
	ram:5eec cd 40 2e       call 02e40h          	;. @ .
	ram:5eef cd 3b 2e       call 02e3bh          	;. ; .
	ram:5ef2 cd 40 2e       call 02e40h          	;. @ .
	ram:5ef5 df             rst 18h              	;.
	ram:5ef6 cd 60 20       call 02060h          	;. `  
	ram:5ef9 cd 2f 7e       call sub_7e2fh       	;. / ~
	ram:5efc cd cf 2d       call 02dcfh          	;. . -
	ram:5eff 21 28 5f       ld hl,l5f28h         	;! ( _
	ram:5f02 cd b5 0a       call 00ab5h          	;. . .
	ram:5f05 df             rst 18h              	;.
	ram:5f06 cd 60 20       call 02060h          	;. `  
	ram:5f09 cd af 3a       call 03aafh          	;. . :
	ram:5f0c cd 43 2f       call 02f43h          	;. C /
	ram:5f0f cd ec 53       call sub_53ech       	;. . S
	ram:5f12 cd db 0a       call 00adbh          	;. . .
sub_5f15h:
	ram:5f15 cd 47 1f       call 01f47h          	;. G .
	ram:5f18 cd 17 62       call sub_6217h       	;. . b
	ram:5f1b cd ea 2d       call 02deah          	;. . -
	ram:5f1e df             rst 18h              	;.
	ram:5f1f cd 60 20       call 02060h          	;. `  
	ram:5f22 cd 8e 7e       call sub_7e8eh       	;. . ~
	ram:5f25 c3 cf 2d       jp 02dcfh            	;. . -
l5f28h:
	ram:5f28 cd f4 2d       call 02df4h          	;. . -
l5f2bh:
	ram:5f2b cd 8e 7e       call sub_7e8eh       	;. . ~
	ram:5f2e c3 8a 0a       jp 00a8ah            	;. . .
l5f31h:
	ram:5f31 af             xor a                	;.
	ram:5f32 cd 88 60       call sub_6088h       	;. . `
	ram:5f35 cd d2 6b       call sub_6bd2h       	;. . k
l5f38h:
	ram:5f38 c3 dc 57       jp l57dch            	;. . W
l5f3bh:
	ram:5f3b af             xor a                	;.
	ram:5f3c cd 88 60       call sub_6088h       	;. . `
	ram:5f3f cd a1 6b       call sub_6ba1h       	;. . k
	ram:5f42 18 f4          jr l5f38h            	;. .
l5f44h:
	ram:5f44 df             rst 18h              	;.
	ram:5f45 cd 3e 21       call 0213eh          	;. > !
	ram:5f48 37             scf                  	;7
	ram:5f49 cd 88 60       call sub_6088h       	;. . `
	ram:5f4c cd 2b 6c       call sub_6c2bh       	;. + l
	ram:5f4f 18 e7          jr l5f38h            	;. .
	ram:5f51 cd af 26       call 026afh          	;. . &
	ram:5f54 21 d4 8b       ld hl,08bd4h         	;! . .
	ram:5f57 36 00          ld (hl),000h         	;6 .
	ram:5f59 fe 28          cp 028h              	;. (
	ram:5f5b ca 6d 60       jp z,l606dh          	;. m `
	ram:5f5e fe 29          cp 029h              	;. )
	ram:5f60 ca 6a 60       jp z,l606ah          	;. j `
	ram:5f63 fe 1c          cp 01ch              	;. .
	ram:5f65 ca 60 60       jp z,l6060h          	;. ` `
	ram:5f68 fe 26          cp 026h              	;. &
	ram:5f6a 20 04          jr nz,l5f70h         	;.
	ram:5f6c cd 31 3a       call 03a31h          	;. 1 :
	ram:5f6f c9             ret                  	;.
l5f70h:
	ram:5f70 fe f2          cp 0f2h              	;. .
	ram:5f72 20 2e          jr nz,l5fa2h         	;.
	ram:5f74 cd bf 2d       call 02dbfh          	;. . -
	ram:5f77 cd 47 1f       call 01f47h          	;. G .
	ram:5f7a fe 04          cp 004h              	;. .
	ram:5f7c 20 14          jr nz,l5f92h         	;.
	ram:5f7e cd b0 23       call 023b0h          	;. . #
	ram:5f81 cd 8b 5f       call sub_5f8bh       	;. . _
	ram:5f84 cd 40 2e       call 02e40h          	;. @ .
	ram:5f87 cd 37 3a       call 03a37h          	;. 7 :
	ram:5f8a c9             ret                  	;.
sub_5f8bh:
	ram:5f8b cd 47 1f       call 01f47h          	;. G .
	ram:5f8e 28 05          jr z,l5f95h          	;( .
	ram:5f90 fe 04          cp 004h              	;. .
l5f92h:
	ram:5f92 c2 28 0a       jp nz,00a28h         	;. ( .
l5f95h:
	ram:5f95 cd 4a 2e       call 02e4ah          	;. J .
	ram:5f98 cd 43 2f       call 02f43h          	;. C /
	ram:5f9b cd 71 26       call 02671h          	;. q &
	ram:5f9e cd af 3a       call 03aafh          	;. . :
	ram:5fa1 c9             ret                  	;.
l5fa2h:
	ram:5fa2 fe 27          cp 027h              	;. '
	ram:5fa4 20 04          jr nz,l5faah         	;.
	ram:5fa6 cd ea 65       call sub_65eah       	;. . e
	ram:5fa9 c9             ret                  	;.
l5faah:
	ram:5faa fe fe          cp 0feh              	;. .
	ram:5fac c2 2c 0a       jp nz,00a2ch         	;. , .
	ram:5faf cd 4d 2f       call 02f4dh          	;. M /
	ram:5fb2 cd 9c 2f       call 02f9ch          	;. . /
	ram:5fb5 cd 95 20       call 02095h          	;. .  
	ram:5fb8 cd 47 1f       call 01f47h          	;. G .
	ram:5fbb cd 1e 5d       call sub_5d1eh       	;. . ]
	ram:5fbe 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:5fc1 cd fc 29       call 029fch          	;. . )
	ram:5fc4 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:5fc8 cd 3b 2e       call 02e3bh          	;. ; .
	ram:5fcb cd 3e 21       call 0213eh          	;. > !
	ram:5fce cd e1 6a       call sub_6ae1h       	;. . j
	ram:5fd1 2a c1 80       ld hl,(080c1h)       	;* . .
	ram:5fd4 22 b9 80       ld (080b9h),hl       	;" . .
	ram:5fd7 3e 02          ld a,002h            	;> .
	ram:5fd9 cd 1f 6d       call sub_6d1fh       	;. . m
	ram:5fdc cd ff 2e       call 02effh          	;. . .
	ram:5fdf cd af 3a       call 03aafh          	;. . :
	ram:5fe2 cd 43 2f       call 02f43h          	;. C /
	ram:5fe5 cd 0b 60       call sub_600bh       	;. . `
	ram:5fe8 cd d0 6a       call sub_6ad0h       	;. . j
	ram:5feb 37             scf                  	;7
	ram:5fec cd 39 60       call sub_6039h       	;. 9 `
	ram:5fef cd 52 2f       call 02f52h          	;. R /
	ram:5ff2 cd 0b 60       call sub_600bh       	;. . `
	ram:5ff5 cd 46 71       call sub_7146h       	;. F q
	ram:5ff8 cd 61 6a       call sub_6a61h       	;. a j
	ram:5ffb af             xor a                	;.
	ram:5ffc cd 39 60       call sub_6039h       	;. 9 `
	ram:5fff cd dc 57       call l57dch          	;. . W
	ram:6002 11 1e 00       ld de,0001eh         	;. . .
	ram:6005 cd 1b 2e       call 02e1bh          	;. . .
	ram:6008 c3 98 21       jp 02198h            	;. . !
sub_600bh:
	ram:600b cd 41 20       call 02041h          	;. A  
	ram:600e cd 24 2f       call 02f24h          	;. $ /
	ram:6011 cd 3a 56       call sub_563ah       	;. : V
	ram:6014 22 c1 80       ld (080c1h),hl       	;" . .
	ram:6017 cd 95 20       call 02095h          	;. .  
	ram:601a 3a 82 80       ld a,(08082h)        	;: . .
	ram:601d cd 49 3a       call 03a49h          	;. I :
	ram:6020 cd c8 26       call 026c8h          	;. . &
	ram:6023 d4 0b 2c       call nc,02c0bh       	;. . ,
	ram:6026 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6029 cd 78 26       call 02678h          	;. x &
	ram:602c f5             push af              	;.
	ram:602d cc 01 2a       call z,02a01h        	;. . *
	ram:6030 f1             pop af               	;.
	ram:6031 c4 0e 2a       call nz,02a0eh       	;. . *
	ram:6034 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:6038 c9             ret                  	;.
sub_6039h:
	ram:6039 ed 4b c1 80    ld bc,(080c1h)       	;. K . .
	ram:603d f5             push af              	;.
	ram:603e 18 0a          jr l604ah            	;. .
l6040h:
	ram:6040 0d             dec c                	;.
	ram:6041 28 05          jr z,l6048h          	;( .
	ram:6043 79             ld a,c               	;y
	ram:6044 fe 01          cp 001h              	;. .
	ram:6046 20 02          jr nz,l604ah         	;.
l6048h:
	ram:6048 f1             pop af               	;.
	ram:6049 c9             ret                  	;.
l604ah:
	ram:604a 41             ld b,c               	;A
l604bh:
	ram:604b 05             dec b                	;.
	ram:604c 28 f2          jr z,l6040h          	;( .
	ram:604e f1             pop af               	;.
	ram:604f f5             push af              	;.
	ram:6050 c5             push bc              	;.
	ram:6051 38 06          jr c,l6059h          	;8 .
l6053h:
	ram:6053 cd 45 69       call sub_6945h       	;. E i
	ram:6056 c1             pop bc               	;.
	ram:6057 18 f2          jr l604bh            	;. .
l6059h:
	ram:6059 cd 0b 69       call sub_690bh       	;. . i
	ram:605c c1             pop bc               	;.
	ram:605d c5             push bc              	;.
	ram:605e 18 f3          jr l6053h            	;. .
l6060h:
	ram:6060 37             scf                  	;7
	ram:6061 cd 88 60       call sub_6088h       	;. . `
	ram:6064 cd d5 6b       call sub_6bd5h       	;. . k
	ram:6067 c3 38 5f       jp l5f38h            	;. 8 _
l606ah:
	ram:606a 37             scf                  	;7
	ram:606b 18 01          jr l606eh            	;. .
l606dh:
	ram:606d af             xor a                	;.
l606eh:
	ram:606e f5             push af              	;.
	ram:606f cd 22 26       call 02622h          	;. " &
	ram:6072 cd 21 20       call 02021h          	;. !  
	ram:6075 cd cf 2d       call 02dcfh          	;. . -
	ram:6078 cd 22 26       call 02622h          	;. " &
	ram:607b cf             rst 8                	;.
	ram:607c cd e5 2d       call 02de5h          	;. . -
	ram:607f cd cf 2d       call 02dcfh          	;. . -
	ram:6082 f1             pop af               	;.
	ram:6083 06 01          ld b,001h            	;. .
	ram:6085 c3 55 3a       jp 03a55h            	;. U :
sub_6088h:
	ram:6088 f5             push af              	;.
	ram:6089 cd f4 60       call sub_60f4h       	;. . `
	ram:608c 32 be 80       ld (080beh),a        	;2 . .
	ram:608f cd cf 2d       call 02dcfh          	;. . -
	ram:6092 cd f4 60       call sub_60f4h       	;. . `
	ram:6095 32 bd 80       ld (080bdh),a        	;2 . .
	ram:6098 cd cf 2d       call 02dcfh          	;. . -
	ram:609b 3a 82 80       ld a,(08082h)        	;: . .
	ram:609e cb 47          bit 0,a              	;. G
	ram:60a0 28 03          jr z,l60a5h          	;( .
	ram:60a2 cd 7d 26       call 0267dh          	;. } &
l60a5h:
	ram:60a5 e6 1e          and 01eh             	;. .
	ram:60a7 fe 06          cp 006h              	;. .
	ram:60a9 20 46          jr nz,l60f1h         	;F
	ram:60ab f1             pop af               	;.
	ram:60ac f5             push af              	;.
	ram:60ad 38 2c          jr c,l60dbh          	;8 ,
l60afh:
	ram:60af cd 14 56       call sub_5614h       	;. . V
	ram:60b2 f5             push af              	;.
	ram:60b3 3a bd 80       ld a,(080bdh)        	;: . .
	ram:60b6 bc             cp h                 	;.
	ram:60b7 38 03          jr c,l60bch          	;8 .
l60b9h:
	ram:60b9 c2 34 0a       jp nz,00a34h         	;. 4 .
l60bch:
	ram:60bc 3a be 80       ld a,(080beh)        	;: . .
	ram:60bf bc             cp h                 	;.
	ram:60c0 38 02          jr c,l60c4h          	;8 .
	ram:60c2 20 f5          jr nz,l60b9h         	;.
l60c4h:
	ram:60c4 22 c1 80       ld (080c1h),hl       	;" . .
	ram:60c7 f1             pop af               	;.
	ram:60c8 28 0a          jr z,l60d4h          	;( .
	ram:60ca cd 64 56       call sub_5664h       	;. d V
	ram:60cd cd 46 71       call sub_7146h       	;. F q
	ram:60d0 ed 5b ca 80    ld de,(080cah)       	;. [ . .
l60d4h:
	ram:60d4 f1             pop af               	;.
	ram:60d5 dc cf 2d       call c,02dcfh        	;. . -
	ram:60d8 c3 3b 2e       jp 02e3bh            	;. ; .
l60dbh:
	ram:60db cd 78 26       call 02678h          	;. x &
	ram:60de 20 cf          jr nz,l60afh         	;.
	ram:60e0 cd 1f 2f       call 02f1fh          	;. . /
	ram:60e3 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:60e6 e6 1f          and 01fh             	;. .
	ram:60e8 28 c5          jr z,l60afh          	;( .
	ram:60ea cd 7d 26       call 0267dh          	;. } &
	ram:60ed fe 01          cp 001h              	;. .
	ram:60ef 28 be          jr z,l60afh          	;( .
l60f1h:
	ram:60f1 c3 28 0a       jp 00a28h            	;. ( .
sub_60f4h:
	ram:60f4 cd db 23       call 023dbh          	;. . #
	ram:60f7 20 07          jr nz,l6100h         	;.
	ram:60f9 cd 95 39       call 03995h          	;. . 9
	ram:60fc 7a             ld a,d               	;z
	ram:60fd b7             or a                 	;.
	ram:60fe 7b             ld a,e               	;{
	ram:60ff c8             ret z                	;.
l6100h:
	ram:6100 c3 34 0a       jp 00a34h            	;. 4 .
sub_6103h:
	ram:6103 13             inc de               	;.
	ram:6104 1a             ld a,(de)            	;.
	ram:6105 fe 02          cp 002h              	;. .
	ram:6107 c0             ret nz               	;.
	ram:6108 13             inc de               	;.
	ram:6109 eb             ex de,hl             	;.
	ram:610a e7             rst 20h              	;.
	ram:610b 13             inc de               	;.
	ram:610c cd 9d 20       call 0209dh          	;. .  
	ram:610f af             xor a                	;.
	ram:6110 c9             ret                  	;.
sub_6111h:
	ram:6111 fe 06          cp 006h              	;. .
	ram:6113 c8             ret z                	;.
	ram:6114 fe 07          cp 007h              	;. .
	ram:6116 20 d9          jr nz,l60f1h         	;.
	ram:6118 c3 7d 26       jp 0267dh            	;. } &
	ram:611b fe 24          cp 024h              	;. $
	ram:611d 20 04          jr nz,l6123h         	;.
	ram:611f cd 5d 74       call sub_745dh       	;. ] t
	ram:6122 c9             ret                  	;.
l6123h:
	ram:6123 fe 21          cp 021h              	;. !
	ram:6125 20 3b          jr nz,l6162h         	;;
	ram:6127 cd ef 2d       call 02defh          	;. . -
	ram:612a cd ea 2d       call 02deah          	;. . -
	ram:612d cd e5 2d       call 02de5h          	;. . -
	ram:6130 cd e0 2d       call 02de0h          	;. . -
	ram:6133 cd 4a 2e       call 02e4ah          	;. J .
	ram:6136 cd 65 61       call sub_6165h       	;. e a
	ram:6139 cd 95 20       call 02095h          	;. .  
	ram:613c cd 65 61       call sub_6165h       	;. e a
	ram:613f cd 60 20       call 02060h          	;. `  
	ram:6142 cd 65 61       call sub_6165h       	;. e a
	ram:6145 cd 56 20       call 02056h          	;. V  
	ram:6148 cd 65 61       call sub_6165h       	;. e a
	ram:614b cd 5b 20       call 0205bh          	;. [  
	ram:614e cd 65 61       call sub_6165h       	;. e a
	ram:6151 ed 53 29 86    ld (08629h),de       	;. S ) .
	ram:6155 37             scf                  	;7
	ram:6156 cd 6a 65       call sub_656ah       	;. j e
	ram:6159 cd 61 3a       call 03a61h          	;. a :
	ram:615c 11 3c 00       ld de,0003ch         	;. < .
	ram:615f c3 1b 2e       jp 02e1bh            	;. . .
l6162h:
	ram:6162 c3 2c 0a       jp 00a2ch            	;. , .
sub_6165h:
	ram:6165 cd 22 26       call 02622h          	;. " &
	ram:6168 c3 4a 2e       jp 02e4ah            	;. J .
sub_616bh:
	ram:616b cd 7d 26       call 0267dh          	;. } &
sub_616eh:
	ram:616e fe 67          cp 067h              	;. g
	ram:6170 c8             ret z                	;.
	ram:6171 fe 76          cp 076h              	;. v
	ram:6173 c8             ret z                	;.
	ram:6174 fe 77          cp 077h              	;. w
	ram:6176 c9             ret                  	;.
sub_6177h:
	ram:6177 cd 7d 26       call 0267dh          	;. } &
	ram:617a fe 23          cp 023h              	;. #
	ram:617c c8             ret z                	;.
	ram:617d fe 33          cp 033h              	;. 3
	ram:617f c8             ret z                	;.
	ram:6180 fe 32          cp 032h              	;. 2
	ram:6182 c9             ret                  	;.
sub_6183h:
	ram:6183 cd f0 55       call sub_55f0h       	;. . U
	ram:6186 19             add hl,de            	;.
	ram:6187 7a             ld a,d               	;z
	ram:6188 bd             cp l                 	;.
	ram:6189 c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:618c 6b             ld l,e               	;k
	ram:618d 22 c1 80       ld (080c1h),hl       	;" . .
	ram:6190 c9             ret                  	;.
sub_6191h:
	ram:6191 cd f5 25       call 025f5h          	;. . %
	ram:6194 c0             ret nz               	;.
	ram:6195 c3 1c 0a       jp 00a1ch            	;. . .
l6198h:
	ram:6198 d5             push de              	;.
	ram:6199 df             rst 18h              	;.
	ram:619a cd 98 40       call sub_4098h       	;. . @
	ram:619d cd 85 20       call 02085h          	;. .  
	ram:61a0 cd f2 2e       call 02ef2h          	;. . .
	ram:61a3 cd 98 40       call sub_4098h       	;. . @
	ram:61a6 cd 49 20       call 02049h          	;. I  
	ram:61a9 cd 8e 1f       call 01f8eh          	;. . .
	ram:61ac d1             pop de               	;.
	ram:61ad cb 42          bit 0,d              	;. B
	ram:61af 28 01          jr z,l61b2h          	;( .
	ram:61b1 3f             ccf                  	;?
l61b2h:
	ram:61b2 f5             push af              	;.
	ram:61b3 cd fc 2d       call 02dfch          	;. . -
	ram:61b6 f1             pop af               	;.
	ram:61b7 f5             push af              	;.
	ram:61b8 d4 fc 2d       call nc,02dfch       	;. . -
	ram:61bb f1             pop af               	;.
	ram:61bc da 09 2e       jp c,02e09h          	;. . .
	ram:61bf c9             ret                  	;.
sub_61c0h:
	ram:61c0 fd cb 07 7e    bit 7,(iy+007h)      	;. . . ~
	ram:61c4 c2 51 0a       jp nz,00a51h         	;. Q .
	ram:61c7 cd 47 1f       call 01f47h          	;. G .
	ram:61ca fe 0a          cp 00ah              	;. .
	ram:61cc d2 28 0a       jp nc,00a28h         	;. ( .
	ram:61cf cd 17 62       call sub_6217h       	;. . b
	ram:61d2 cd 1a 2f       call 02f1ah          	;. . /
	ram:61d5 df             rst 18h              	;.
	ram:61d6 cd 60 20       call 02060h          	;. `  
	ram:61d9 cd 2f 7e       call sub_7e2fh       	;. / ~
	ram:61dc cd cf 2d       call 02dcfh          	;. . -
	ram:61df 21 10 62       ld hl,l6210h         	;! . b
	ram:61e2 cd b5 0a       call 00ab5h          	;. . .
	ram:61e5 fd cb 07 fe    set 7,(iy+007h)      	;. . . .
	ram:61e9 df             rst 18h              	;.
	ram:61ea cd 60 20       call 02060h          	;. `  
	ram:61ed cd af 3a       call 03aafh          	;. . :
	ram:61f0 cd 43 2f       call 02f43h          	;. C /
	ram:61f3 cd d3 3a       call 03ad3h          	;. . :
	ram:61f6 cd 9c 26       call 0269ch          	;. . &
	ram:61f9 fd cb 07 be    res 7,(iy+007h)      	;. . . .
	ram:61fd cd 15 5f       call sub_5f15h       	;. . _
	ram:6200 cd db 0a       call 00adbh          	;. . .
	ram:6203 cd ea 2d       call 02deah          	;. . -
	ram:6206 df             rst 18h              	;.
	ram:6207 cd 60 20       call 02060h          	;. `  
	ram:620a cd 60 26       call 02660h          	;. ` &
	ram:620d c3 cf 2d       jp 02dcfh            	;. . -
l6210h:
	ram:6210 fd cb 07 be    res 7,(iy+007h)      	;. . . .
	ram:6214 c3 28 5f       jp l5f28h            	;. ( _
sub_6217h:
	ram:6217 e6 1e          and 01eh             	;. .
	ram:6219 c8             ret z                	;.
	ram:621a cd f5 25       call 025f5h          	;. . %
	ram:621d c8             ret z                	;.
	ram:621e cd 4a 2e       call 02e4ah          	;. J .
	ram:6221 21 00 00       ld hl,00000h         	;! . .
	ram:6224 cd d4 29       call 029d4h          	;. . )
	ram:6227 cd 56 20       call 02056h          	;. V  
	ram:622a cd af 3a       call 03aafh          	;. . :
	ram:622d c9             ret                  	;.
sub_622eh:
	ram:622e ed 5b c6 80    ld de,(080c6h)       	;. [ . .
sub_6232h:
	ram:6232 13             inc de               	;.
	ram:6233 13             inc de               	;.
	ram:6234 1a             ld a,(de)            	;.
	ram:6235 e6 01          and 001h             	;. .
	ram:6237 f5             push af              	;.
	ram:6238 2b             dec hl               	;+
	ram:6239 cd 33 1f       call 01f33h          	;. 3 .
	ram:623c f1             pop af               	;.
	ram:623d 28 01          jr z,l6240h          	;( .
	ram:623f 29             add hl,hl            	;)
l6240h:
	ram:6240 19             add hl,de            	;.
	ram:6241 c9             ret                  	;.
sub_6242h:
	ram:6242 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:6246 18 07          jr l624fh            	;. .
sub_6248h:
	ram:6248 2a b9 80       ld hl,(080b9h)       	;* . .
sub_624bh:
	ram:624b ed 5b c6 80    ld de,(080c6h)       	;. [ . .
l624fh:
	ram:624f cd 32 62       call sub_6232h       	;. 2 b
	ram:6252 11 82 80       ld de,08082h         	;. . .
l6255h:
	ram:6255 b7             or a                 	;.
	ram:6256 28 44          jr z,l629ch          	;( D
	ram:6258 c3 02 2e       jp 02e02h            	;. . .
	ram:625b 2a b9 80       ld hl,(080b9h)       	;* . .
l625eh:
	ram:625e ed 5b c6 80    ld de,(080c6h)       	;. [ . .
l6262h:
	ram:6262 cd 32 62       call sub_6232h       	;. 2 b
	ram:6265 11 8d 80       ld de,0808dh         	;. . .
	ram:6268 18 eb          jr l6255h            	;. .
sub_626ah:
	ram:626a 2a bd 80       ld hl,(080bdh)       	;* . .
sub_626dh:
	ram:626d ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:6271 18 dc          jr l624fh            	;. .
sub_6273h:
	ram:6273 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6276 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:627a cd 32 62       call sub_6232h       	;. 2 b
	ram:627d 11 98 80       ld de,08098h         	;. . .
	ram:6280 18 d3          jr l6255h            	;. .
sub_6282h:
	ram:6282 2a c1 80       ld hl,(080c1h)       	;* . .
sub_6285h:
	ram:6285 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:6289 cd 32 62       call sub_6232h       	;. 2 b
	ram:628c e5             push hl              	;.
	ram:628d cd 9b 25       call 0259bh          	;. . %
	ram:6290 d1             pop de               	;.
	ram:6291 21 82 80       ld hl,08082h         	;! . .
	ram:6294 7e             ld a,(hl)            	;~
	ram:6295 cd 9d 20       call 0209dh          	;. .  
	ram:6298 e6 01          and 001h             	;. .
	ram:629a c8             ret z                	;.
	ram:629b 23             inc hl               	;#
l629ch:
	ram:629c c3 9d 20       jp 0209dh            	;. .  
sub_629fh:
	ram:629f 3e 02          ld a,002h            	;> .
	ram:62a1 18 01          jr sub_62a4h         	;. .
sub_62a3h:
	ram:62a3 af             xor a                	;.
sub_62a4h:
	ram:62a4 f5             push af              	;.
	ram:62a5 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
l62a9h:
	ram:62a9 b7             or a                 	;.
	ram:62aa 21 01 00       ld hl,00001h         	;! . .
	ram:62ad ed 42          sbc hl,bc            	;. B
	ram:62af 28 4d          jr z,l62feh          	;( M
	ram:62b1 09             add hl,bc            	;.
	ram:62b2 f1             pop af               	;.
	ram:62b3 f5             push af              	;.
	ram:62b4 c5             push bc              	;.
	ram:62b5 fe 02          cp 002h              	;. .
	ram:62b7 3e 01          ld a,001h            	;> .
	ram:62b9 38 01          jr c,l62bch          	;8 .
	ram:62bb 3d             dec a                	;=
l62bch:
	ram:62bc cd 05 63       call sub_6305h       	;. . c
	ram:62bf c1             pop bc               	;.
	ram:62c0 b7             or a                 	;.
	ram:62c1 ed 42          sbc hl,bc            	;. B
	ram:62c3 28 1f          jr z,l62e4h          	;( .
	ram:62c5 09             add hl,bc            	;.
	ram:62c6 e5             push hl              	;.
	ram:62c7 cd e7 62       call sub_62e7h       	;. . b
	ram:62ca e1             pop hl               	;.
	ram:62cb f1             pop af               	;.
	ram:62cc f5             push af              	;.
	ram:62cd 3d             dec a                	;=
	ram:62ce 20 14          jr nz,l62e4h         	;.
	ram:62d0 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:62d4 d5             push de              	;.
	ram:62d5 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:62d9 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:62dd cd e7 62       call sub_62e7h       	;. . b
	ram:62e0 e1             pop hl               	;.
	ram:62e1 22 c6 80       ld (080c6h),hl       	;" . .
l62e4h:
	ram:62e4 0b             dec bc               	;.
	ram:62e5 18 c2          jr l62a9h            	;. .
sub_62e7h:
	ram:62e7 c5             push bc              	;.
	ram:62e8 cd 2e 62       call sub_622eh       	;. . b
	ram:62eb eb             ex de,hl             	;.
	ram:62ec e1             pop hl               	;.
	ram:62ed e5             push hl              	;.
	ram:62ee d5             push de              	;.
	ram:62ef cd 2e 62       call sub_622eh       	;. . b
	ram:62f2 d1             pop de               	;.
	ram:62f3 06 0a          ld b,00ah            	;. .
	ram:62f5 cb 46          bit 0,(hl)           	;. F
	ram:62f7 28 02          jr z,l62fbh          	;( .
	ram:62f9 06 14          ld b,014h            	;. .
l62fbh:
	ram:62fb cd c2 23       call 023c2h          	;. . #
l62feh:
	ram:62fe c1             pop bc               	;.
	ram:62ff c9             ret                  	;.
	ram:6300 af             xor a                	;.
	ram:6301 18 02          jr sub_6305h         	;. .
	ram:6303 3e 01          ld a,001h            	;> .
sub_6305h:
	ram:6305 32 bf 80       ld (080bfh),a        	;2 . .
	ram:6308 22 bd 80       ld (080bdh),hl       	;" . .
	ram:630b e5             push hl              	;.
	ram:630c c5             push bc              	;.
	ram:630d cd 4b 62       call sub_624bh       	;. K b
	ram:6310 cd 3f 1f       call 01f3fh          	;. ? .
	ram:6313 cc c2 40       call z,sub_40c2h     	;. . @
	ram:6316 cd 8d 20       call 0208dh          	;. .  
l6319h:
	ram:6319 c1             pop bc               	;.
	ram:631a e1             pop hl               	;.
l631bh:
	ram:631b b7             or a                 	;.
	ram:631c ed 42          sbc hl,bc            	;. B
	ram:631e 20 04          jr nz,l6324h         	;.
	ram:6320 2a bd 80       ld hl,(080bdh)       	;* . .
	ram:6323 c9             ret                  	;.
l6324h:
	ram:6324 09             add hl,bc            	;.
	ram:6325 23             inc hl               	;#
	ram:6326 e5             push hl              	;.
	ram:6327 c5             push bc              	;.
	ram:6328 cd 4b 62       call sub_624bh       	;. K b
	ram:632b cd 3f 1f       call 01f3fh          	;. ? .
	ram:632e cc c2 40       call z,sub_40c2h     	;. . @
	ram:6331 cd f5 1f       call 01ff5h          	;. . .
	ram:6334 cd 29 20       call 02029h          	;. )  
	ram:6337 3a bf 80       ld a,(080bfh)        	;: . .
	ram:633a b7             or a                 	;.
	ram:633b 20 07          jr nz,l6344h         	;.
	ram:633d cd 8e 1f       call 01f8eh          	;. . .
	ram:6340 30 d7          jr nc,l6319h         	;0 .
	ram:6342 18 07          jr l634bh            	;. .
l6344h:
	ram:6344 cd 8e 1f       call 01f8eh          	;. . .
	ram:6347 38 d0          jr c,l6319h          	;8 .
	ram:6349 28 ce          jr z,l6319h          	;( .
l634bh:
	ram:634b cd 65 20       call 02065h          	;. e  
	ram:634e c1             pop bc               	;.
	ram:634f e1             pop hl               	;.
	ram:6350 22 bd 80       ld (080bdh),hl       	;" . .
	ram:6353 18 c6          jr l631bh            	;. .
l6355h:
	ram:6355 af             xor a                	;.
l6356h:
	ram:6356 21 01 00       ld hl,00001h         	;! . .
	ram:6359 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:635d cd 05 63       call sub_6305h       	;. . c
	ram:6360 c3 4b 62       jp sub_624bh         	;. K b
l6363h:
	ram:6363 3e 01          ld a,001h            	;> .
	ram:6365 18 ef          jr l6356h            	;. .
l6367h:
	ram:6367 cd 3e 21       call 0213eh          	;. > !
	ram:636a 3e 70          ld a,070h            	;> p
	ram:636c 18 05          jr l6373h            	;. .
l636eh:
	ram:636e cd 98 21       call 02198h          	;. . !
	ram:6371 3e 60          ld a,060h            	;> `
l6373h:
	ram:6373 f5             push af              	;.
l6374h:
	ram:6374 df             rst 18h              	;.
	ram:6375 cd 48 62       call sub_6248h       	;. H b
	ram:6378 f1             pop af               	;.
	ram:6379 f5             push af              	;.
	ram:637a cd 7c 4c       call sub_4c7ch       	;. | L
	ram:637d cd 90 63       call sub_6390h       	;. . c
	ram:6380 20 f2          jr nz,l6374h         	;.
	ram:6382 f1             pop af               	;.
	ram:6383 c9             ret                  	;.
l6384h:
	ram:6384 2a b9 80       ld hl,(080b9h)       	;* . .
l6387h:
	ram:6387 cd 85 62       call sub_6285h       	;. . b
	ram:638a cd 90 63       call sub_6390h       	;. . c
	ram:638d 20 f8          jr nz,l6387h         	;.
	ram:638f c9             ret                  	;.
sub_6390h:
	ram:6390 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6393 2b             dec hl               	;+
	ram:6394 7c             ld a,h               	;|
	ram:6395 b5             or l                 	;.
	ram:6396 22 b9 80       ld (080b9h),hl       	;" . .
	ram:6399 c9             ret                  	;.
l639ah:
	ram:639a cd d6 23       call 023d6h          	;. . #
	ram:639d c8             ret z                	;.
	ram:639e cd 8d 20       call 0208dh          	;. .  
	ram:63a1 cd 7d 20       call 0207dh          	;. }  
	ram:63a4 cd 88 1f       call 01f88h          	;. . .
	ram:63a7 ca 98 21       jp z,02198h          	;. . !
	ram:63aa f5             push af              	;.
	ram:63ab cd 5b 20       call 0205bh          	;. [  
	ram:63ae f1             pop af               	;.
	ram:63af 38 35          jr c,l63e6h          	;8 5
	ram:63b1 cd 49 20       call 02049h          	;. I  
	ram:63b4 cd e3 1e       call 01ee3h          	;. . .
	ram:63b7 cd e8 0f       call 00fe8h          	;. . .
	ram:63ba 21 00 fc       ld hl,0fc00h         	;! . .
	ram:63bd b7             or a                 	;.
	ram:63be eb             ex de,hl             	;.
	ram:63bf ed 52          sbc hl,de            	;. R
	ram:63c1 e5             push hl              	;.
	ram:63c2 0e 00          ld c,000h            	;. .
l63c4h:
	ram:63c4 cd 30 23       call 02330h          	;. 0 #
	ram:63c7 30 fb          jr nc,l63c4h         	;0 .
	ram:63c9 0d             dec c                	;.
	ram:63ca f2 c4 63       jp p,l63c4h          	;. . c
	ram:63cd cd b2 22       call 022b2h          	;. . "
	ram:63d0 e1             pop hl               	;.
	ram:63d1 7c             ld a,h               	;|
	ram:63d2 b5             or l                 	;.
	ram:63d3 28 08          jr z,l63ddh          	;( .
	ram:63d5 2b             dec hl               	;+
	ram:63d6 e5             push hl              	;.
	ram:63d7 cd 02 22       call 02202h          	;. . "
	ram:63da 4f             ld c,a               	;O
	ram:63db 18 e7          jr l63c4h            	;. .
l63ddh:
	ram:63dd 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:63e0 22 83 80       ld (08083h),hl       	;" . .
	ram:63e3 cd 53 0f       call 00f53h          	;. S .
l63e6h:
	ram:63e6 cd d1 23       call 023d1h          	;. . #
	ram:63e9 c8             ret z                	;.
	ram:63ea 3a ae 80       ld a,(080aeh)        	;: . .
	ram:63ed 32 82 80       ld (08082h),a        	;2 . .
	ram:63f0 cd 49 20       call 02049h          	;. I  
	ram:63f3 3a 82 80       ld a,(08082h)        	;: . .
	ram:63f6 21 8d 80       ld hl,0808dh         	;! . .
	ram:63f9 ae             xor (hl)             	;.
	ram:63fa e6 80          and 080h             	;. .
	ram:63fc c4 78 0d       call nz,00d78h       	;. x .
	ram:63ff c9             ret                  	;.
l6400h:
	ram:6400 cd e7 23       call 023e7h          	;. . #
	ram:6403 28 03          jr z,l6408h          	;( .
l6405h:
	ram:6405 c3 14 0a       jp 00a14h            	;. . .
l6408h:
	ram:6408 cd 62 25       call 02562h          	;. b %
	ram:640b 20 f8          jr nz,l6405h         	;.
	ram:640d 21 8e 80       ld hl,0808eh         	;! . .
	ram:6410 cd f0 23       call 023f0h          	;. . #
	ram:6413 20 f0          jr nz,l6405h         	;.
	ram:6415 cd 97 26       call 02697h          	;. . &
	ram:6418 30 eb          jr nc,l6405h         	;0 .
	ram:641a 2a 8e 80       ld hl,(0808eh)       	;* . .
	ram:641d b7             or a                 	;.
	ram:641e ed 52          sbc hl,de            	;. R
	ram:6420 30 e3          jr nc,l6405h         	;0 .
	ram:6422 cd d1 23       call 023d1h          	;. . #
	ram:6425 20 07          jr nz,l642eh         	;.
	ram:6427 cd d6 23       call 023d6h          	;. . #
	ram:642a c8             ret z                	;.
	ram:642b c3 95 20       jp 02095h            	;. .  
l642eh:
	ram:642e cd d6 23       call 023d6h          	;. . #
	ram:6431 c8             ret z                	;.
l6432h:
	ram:6432 cd 23 10       call 01023h          	;. # .
	ram:6435 cd c3 0f       call 00fc3h          	;. . .
	ram:6438 ef             rst 28h              	;.
	ram:6439 cd f4 20       call 020f4h          	;. .  
	ram:643c 21 eb 1e       ld hl,01eebh         	;! . .
	ram:643f cd 3a 0d       call 00d3ah          	;. : .
	ram:6442 cd 5d 0d       call 00d5dh          	;. ] .
	ram:6445 cf             rst 8                	;.
	ram:6446 cd 60 20       call 02060h          	;. `  
	ram:6449 cd d6 23       call 023d6h          	;. . #
	ram:644c c8             ret z                	;.
	ram:644d 18 e3          jr l6432h            	;. .
l644fh:
	ram:644f cd f5 1f       call 01ff5h          	;. . .
	ram:6452 ef             rst 28h              	;.
	ram:6453 cd b5 23       call 023b5h          	;. . #
	ram:6456 cd 00 64       call l6400h          	;. . d
	ram:6459 cd d1 23       call 023d1h          	;. . #
	ram:645c c8             ret z                	;.
	ram:645d cf             rst 8                	;.
	ram:645e cd 56 20       call 02056h          	;. V  
	ram:6461 c3 23 10       jp 01023h            	;. # .
l6464h:
	ram:6464 cd ed 23       call 023edh          	;. . #
	ram:6467 28 09          jr z,l6472h          	;( .
	ram:6469 2a 83 80       ld hl,(08083h)       	;* . .
	ram:646c 11 04 fc       ld de,0fc04h         	;. . .
	ram:646f b7             or a                 	;.
	ram:6470 ed 52          sbc hl,de            	;. R
l6472h:
	ram:6472 d2 53 65       jp nc,l6553h         	;. S e
	ram:6475 19             add hl,de            	;.
	ram:6476 11 0b 00       ld de,0000bh         	;. . .
	ram:6479 b7             or a                 	;.
	ram:647a ed 52          sbc hl,de            	;. R
	ram:647c e5             push hl              	;.
	ram:647d 11 7c 82       ld de,0827ch         	;. | .
	ram:6480 cd 11 21       call 02111h          	;. . !
	ram:6483 cd 11 21       call 02111h          	;. . !
	ram:6486 cd 3e 21       call 0213eh          	;. > !
	ram:6489 cd 8d 20       call 0208dh          	;. .  
	ram:648c 11 90 82       ld de,08290h         	;. . .
	ram:648f cd 11 21       call 02111h          	;. . !
	ram:6492 af             xor a                	;.
	ram:6493 32 85 80       ld (08085h),a        	;2 . .
	ram:6496 cd 11 21       call 02111h          	;. . !
	ram:6499 cd 85 20       call 02085h          	;. .  
l649ch:
	ram:649c 21 86 82       ld hl,08286h         	;! . .
	ram:649f e7             rst 20h              	;.
	ram:64a0 21 eb 1e       ld hl,01eebh         	;! . .
	ram:64a3 cd 0b 21       call 0210bh          	;. . !
	ram:64a6 3a 82 80       ld a,(08082h)        	;: . .
	ram:64a9 32 8d 80       ld (0808dh),a        	;2 . .
	ram:64ac f7             rst 30h              	;.
	ram:64ad cd 5d 0d       call 00d5dh          	;. ] .
	ram:64b0 cd f5 1f       call 01ff5h          	;. . .
	ram:64b3 cf             rst 8                	;.
	ram:64b4 21 86 82       ld hl,08286h         	;! . .
	ram:64b7 e7             rst 20h              	;.
	ram:64b8 cd 71 0d       call 00d71h          	;. q .
	ram:64bb 11 86 82       ld de,08286h         	;. . .
	ram:64be cd 11 21       call 02111h          	;. . !
	ram:64c1 cd 51 20       call 02051h          	;. Q  
	ram:64c4 cd 07 20       call 02007h          	;. .  
	ram:64c7 ef             rst 28h              	;.
	ram:64c8 21 90 82       ld hl,08290h         	;! . .
	ram:64cb cd 3a 0d       call 00d3ah          	;. : .
	ram:64ce 2a 83 80       ld hl,(08083h)       	;* . .
	ram:64d1 11 04 fc       ld de,0fc04h         	;. . .
	ram:64d4 b7             or a                 	;.
	ram:64d5 ed 52          sbc hl,de            	;. R
	ram:64d7 30 42          jr nc,l651bh         	;0 B
	ram:64d9 cd 9e 23       call 0239eh          	;. . #
	ram:64dc 11 90 82       ld de,08290h         	;. . .
	ram:64df cd 11 21       call 02111h          	;. . !
	ram:64e2 cd 5b 20       call 0205bh          	;. [  
	ram:64e5 cd 07 20       call 02007h          	;. .  
	ram:64e8 ef             rst 28h              	;.
	ram:64e9 21 9a 82       ld hl,0829ah         	;! . .
	ram:64ec cd 3a 0d       call 00d3ah          	;. : .
	ram:64ef cd 99 23       call 02399h          	;. . #
	ram:64f2 11 9a 82       ld de,0829ah         	;. . .
	ram:64f5 cd 11 21       call 02111h          	;. . !
	ram:64f8 21 86 82       ld hl,08286h         	;! . .
	ram:64fb e7             rst 20h              	;.
	ram:64fc cd 66 21       call 02166h          	;. f !
	ram:64ff 21 fc fb       ld hl,0fbfch         	;! . .
	ram:6502 22 8e 80       ld (0808eh),hl       	;" . .
	ram:6505 cd 88 1f       call 01f88h          	;. . .
	ram:6508 38 11          jr c,l651bh          	;8 .
	ram:650a 28 0f          jr z,l651bh          	;( .
	ram:650c 21 86 82       ld hl,08286h         	;! . .
	ram:650f e7             rst 20h              	;.
	ram:6510 cd 1f 10       call 0101fh          	;. . .
	ram:6513 11 86 82       ld de,08286h         	;. . .
	ram:6516 cd 11 21       call 02111h          	;. . !
	ram:6519 18 81          jr l649ch            	;. .
l651bh:
	ram:651b cd 49 20       call 02049h          	;. I  
	ram:651e cd d6 23       call 023d6h          	;. . #
	ram:6521 28 2b          jr z,l654eh          	;( +
	ram:6523 cd 5b 20       call 0205bh          	;. [  
	ram:6526 cd 23 10       call 01023h          	;. # .
	ram:6529 cd 9b 0f       call 00f9bh          	;. . .
	ram:652c 21 7c 82       ld hl,0827ch         	;! | .
	ram:652f cd 3a 0d       call 00d3ah          	;. : .
	ram:6532 cd 66 21       call 02166h          	;. f !
	ram:6535 e1             pop hl               	;.
	ram:6536 22 8e 80       ld (0808eh),hl       	;" . .
	ram:6539 cd 88 1f       call 01f88h          	;. . .
	ram:653c 30 11          jr nc,l654fh         	;0 .
	ram:653e cd 5b 20       call 0205bh          	;. [  
	ram:6541 cd 49 20       call 02049h          	;. I  
	ram:6544 cd 6e 25       call 0256eh          	;. n %
	ram:6547 21 82 80       ld hl,08082h         	;! . .
	ram:654a ae             xor (hl)             	;.
	ram:654b 77             ld (hl),a            	;w
	ram:654c b7             or a                 	;.
	ram:654d c9             ret                  	;.
l654eh:
	ram:654e f1             pop af               	;.
l654fh:
	ram:654f 21 7c 82       ld hl,0827ch         	;! | .
	ram:6552 e7             rst 20h              	;.
l6553h:
	ram:6553 37             scf                  	;7
	ram:6554 c9             ret                  	;.
l6555h:
	ram:6555 f1             pop af               	;.
	ram:6556 38 67          jr c,l65bfh          	;8 g
	ram:6558 cd a4 65       call sub_65a4h       	;. . e
	ram:655b 20 08          jr nz,l6565h         	;.
	ram:655d 18 3a          jr l6599h            	;. :
l655fh:
	ram:655f f1             pop af               	;.
	ram:6560 30 37          jr nc,l6599h         	;0 7
	ram:6562 cd b0 65       call sub_65b0h       	;. . e
l6565h:
	ram:6565 c2 14 0a       jp nz,00a14h         	;. . .
	ram:6568 18 55          jr l65bfh            	;. U
sub_656ah:
	ram:656a f5             push af              	;.
	ram:656b cd b5 3a       call 03ab5h          	;. . :
	ram:656e cd f3 38       call 038f3h          	;. . 8
	ram:6571 cd aa 65       call sub_65aah       	;. . e
	ram:6574 28 e9          jr z,l655fh          	;( .
	ram:6576 cd 21 20       call 02021h          	;. !  
	ram:6579 cd cd 3a       call 03acdh          	;. . :
	ram:657c cd f9 38       call 038f9h          	;. . 8
	ram:657f cd aa 65       call sub_65aah       	;. . e
	ram:6582 28 d1          jr z,l6555h          	;( .
	ram:6584 cd 19 20       call 02019h          	;. .  
	ram:6587 cd 23 10       call 01023h          	;. # .
	ram:658a cd f5 1f       call 01ff5h          	;. . .
	ram:658d f1             pop af               	;.
	ram:658e 38 28          jr c,l65b8h          	;8 (
	ram:6590 cd a4 65       call sub_65a4h       	;. . e
	ram:6593 cd 07 20       call 02007h          	;. .  
	ram:6596 cd 23 10       call 01023h          	;. # .
l6599h:
	ram:6599 cd ff 38       call 038ffh          	;. . 8
	ram:659c f7             rst 30h              	;.
	ram:659d cd 9b 25       call 0259bh          	;. . %
	ram:65a0 cd 05 39       call 03905h          	;. . 9
	ram:65a3 c9             ret                  	;.
sub_65a4h:
	ram:65a4 cd 61 3a       call 03a61h          	;. a :
	ram:65a7 cd 0b 39       call 0390bh          	;. . 9
sub_65aah:
	ram:65aa cd 71 0d       call 00d71h          	;. q .
	ram:65ad c3 d1 23       jp 023d1h            	;. . #
sub_65b0h:
	ram:65b0 cd 11 39       call 03911h          	;. . 9
	ram:65b3 cd ff 38       call 038ffh          	;. . 8
	ram:65b6 18 f2          jr sub_65aah         	;. .
l65b8h:
	ram:65b8 cd b0 65       call sub_65b0h       	;. . e
	ram:65bb cd 07 20       call 02007h          	;. .  
	ram:65be ef             rst 28h              	;.
l65bfh:
	ram:65bf cd 0b 39       call 0390bh          	;. . 9
	ram:65c2 f7             rst 30h              	;.
	ram:65c3 cd 9b 25       call 0259bh          	;. . %
	ram:65c6 cd 17 39       call 03917h          	;. . 9
	ram:65c9 c9             ret                  	;.
l65cah:
	ram:65ca cd 8e 1f       call 01f8eh          	;. . .
	ram:65cd 30 0a          jr nc,l65d9h         	;0 .
l65cfh:
	ram:65cf c3 3e 21       jp 0213eh            	;. > !
	ram:65d2 cd 8e 1f       call 01f8eh          	;. . .
	ram:65d5 38 f8          jr c,l65cfh          	;8 .
	ram:65d7 28 f6          jr z,l65cfh          	;( .
l65d9h:
	ram:65d9 c3 98 21       jp 02198h            	;. . !
l65dch:
	ram:65dc cd 8e 1f       call 01f8eh          	;. . .
	ram:65df 28 f8          jr z,l65d9h          	;( .
l65e1h:
	ram:65e1 38 f6          jr c,l65d9h          	;8 .
	ram:65e3 18 ea          jr l65cfh            	;. .
	ram:65e5 cd 8e 1f       call 01f8eh          	;. . .
	ram:65e8 18 f7          jr l65e1h            	;. .
sub_65eah:
	ram:65ea fd cb 07 4e    bit 1,(iy+007h)      	;. . . N
	ram:65ee c2 51 0a       jp nz,00a51h         	;. Q .
	ram:65f1 df             rst 18h              	;.
	ram:65f2 cd f5 2e       call 02ef5h          	;. . .
	ram:65f5 cd 47 1f       call 01f47h          	;. G .
	ram:65f8 fe 0a          cp 00ah              	;. .
	ram:65fa c2 28 0a       jp nz,00a28h         	;. ( .
	ram:65fd 21 08 00       ld hl,00008h         	;! . .
	ram:6600 cd b8 2f       call 02fb8h          	;. . /
	ram:6603 d7             rst 10h              	;.
	ram:6604 ed 53 3f 86    ld (0863fh),de       	;. S ? .
	ram:6608 13             inc de               	;.
	ram:6609 13             inc de               	;.
	ram:660a 1a             ld a,(de)            	;.
	ram:660b 13             inc de               	;.
	ram:660c b7             or a                 	;.
	ram:660d 28 15          jr z,l6624h          	;( .
	ram:660f 6f             ld l,a               	;o
	ram:6610 26 00          ld h,000h            	;& .
	ram:6612 19             add hl,de            	;.
	ram:6613 5e             ld e,(hl)            	;^
	ram:6614 23             inc hl               	;#
	ram:6615 56             ld d,(hl)            	;V
	ram:6616 eb             ex de,hl             	;.
	ram:6617 01 08 00       ld bc,00008h         	;. . .
	ram:661a b7             or a                 	;.
	ram:661b ed 42          sbc hl,bc            	;. B
	ram:661d eb             ex de,hl             	;.
	ram:661e 72             ld (hl),d            	;r
	ram:661f 2b             dec hl               	;+
	ram:6620 73             ld (hl),e            	;s
	ram:6621 23             inc hl               	;#
	ram:6622 23             inc hl               	;#
	ram:6623 eb             ex de,hl             	;.
l6624h:
	ram:6624 21 08 00       ld hl,00008h         	;! . .
	ram:6627 cd fa 27       call 027fah          	;. . '
	ram:662a 21 76 66       ld hl,l6676h         	;! v f
	ram:662d cd a1 20       call 020a1h          	;. .  
	ram:6630 cd 48 67       call sub_6748h       	;. H g
	ram:6633 cd 52 2f       call 02f52h          	;. R /
	ram:6636 3a 83 80       ld a,(08083h)        	;: . .
	ram:6639 c6 04          add a,004h           	;. .
	ram:663b 6f             ld l,a               	;o
	ram:663c 26 00          ld h,000h            	;& .
	ram:663e e5             push hl              	;.
	ram:663f cd b8 2f       call 02fb8h          	;. . /
	ram:6642 2a 3f 86       ld hl,(0863fh)       	;* ? .
	ram:6645 4e             ld c,(hl)            	;N
	ram:6646 23             inc hl               	;#
	ram:6647 46             ld b,(hl)            	;F
	ram:6648 c5             push bc              	;.
	ram:6649 09             add hl,bc            	;.
	ram:664a 01 09 00       ld bc,00009h         	;. . .
	ram:664d 09             add hl,bc            	;.
	ram:664e eb             ex de,hl             	;.
	ram:664f cd fa 27       call 027fah          	;. . '
	ram:6652 3e 2f          ld a,02fh            	;> /
	ram:6654 12             ld (de),a            	;.
	ram:6655 13             inc de               	;.
	ram:6656 cd a0 66       call 066a0h          	;. . f
	ram:6659 eb             ex de,hl             	;.
	ram:665a 36 11          ld (hl),011h         	;6 .
	ram:665c 23             inc hl               	;#
	ram:665d 36 4a          ld (hl),04ah         	;6 J
	ram:665f 23             inc hl               	;#
	ram:6660 eb             ex de,hl             	;.
	ram:6661 e1             pop hl               	;.
	ram:6662 c1             pop bc               	;.
	ram:6663 09             add hl,bc            	;.
	ram:6664 01 08 00       ld bc,00008h         	;. . .
	ram:6667 09             add hl,bc            	;.
	ram:6668 eb             ex de,hl             	;.
	ram:6669 2a 3f 86       ld hl,(0863fh)       	;* ? .
	ram:666c 73             ld (hl),e            	;s
	ram:666d 23             inc hl               	;#
	ram:666e 72             ld (hl),d            	;r
	ram:666f cd cf 2d       call 02dcfh          	;. . -
l6672h:
	ram:6672 cd 31 3a       call 03a31h          	;. 1 :
	ram:6675 c9             ret                  	;.
l6676h:
	ram:6676 a0             and b                	;.
	ram:6677 10 44          djnz 70              	;. D
	ram:6679 31 00 60       ld sp,06000h         	;1 . `
	ram:667c 2a 10 a0       ld hl,(0a010h)       	;* . .
	ram:667f 10 2a          djnz 44              	;. *
	ram:6681 10 2f          djnz 49              	;. /
	ram:6683 33             inc sp               	;3
	ram:6684 74             ld (hl),h            	;t
	ram:6685 11 4a 60       ld de,l604ah         	;. J `
	ram:6688 2a 10 2f       ld hl,(02f10h)       	;* . /
	ram:668b 33             inc sp               	;3
	ram:668c 74             ld (hl),h            	;t
	ram:668d 11 4a 2f       ld de,02f4ah         	;. J /
	ram:6690 33             inc sp               	;3
	ram:6691 c1             pop bc               	;.
	ram:6692 11 4a 60       ld de,l604ah         	;. J `
	ram:6695 10 71          djnz 115             	;. q
	ram:6697 10 44          djnz 70              	;. D
	ram:6699 31 38 30       ld sp,03038h         	;1 8 0
	ram:669c 00             nop                  	;.
	ram:669d 71             ld (hl),c            	;q
	ram:669e 42             ld b,d               	;B
	ram:669f 11 06 32       ld de,03206h         	;. . 2
	ram:66a2 3a 83 80       ld a,(08083h)        	;: . .
	ram:66a5 80             add a,b              	;.
	ram:66a6 12             ld (de),a            	;.
	ram:66a7 3a 83 80       ld a,(08083h)        	;: . .
	ram:66aa 21 84 80       ld hl,08084h         	;! . .
	ram:66ad 4f             ld c,a               	;O
	ram:66ae 06 00          ld b,000h            	;. .
	ram:66b0 13             inc de               	;.
	ram:66b1 ed b0          ldir                 	;. .
	ram:66b3 c9             ret                  	;.
	ram:66b4 cd 41 20       call 02041h          	;. A  
	ram:66b7 3a 83 80       ld a,(08083h)        	;: . .
	ram:66ba 3c             inc a                	;<
	ram:66bb 87             add a,a              	;.
	ram:66bc c6 11          add a,011h           	;. .
	ram:66be cd ee 66       call sub_66eeh       	;. . f
	ram:66c1 cd a1 20       call 020a1h          	;. .  
	ram:66c4 e5             push hl              	;.
	ram:66c5 d5             push de              	;.
	ram:66c6 cd 48 67       call sub_6748h       	;. H g
	ram:66c9 3e 79          ld a,079h            	;> y
	ram:66cb 32 84 80       ld (08084h),a        	;2 . .
	ram:66ce d1             pop de               	;.
	ram:66cf cd a0 66       call 066a0h          	;. . f
	ram:66d2 e1             pop hl               	;.
	ram:66d3 cd a7 20       call 020a7h          	;. .  
	ram:66d6 cd 54 26       call 02654h          	;. T &
l66d9h:
	ram:66d9 cd ef 2d       call 02defh          	;. . -
	ram:66dc cd ea 2d       call 02deah          	;. . -
	ram:66df cd 3b 2e       call 02e3bh          	;. ; .
	ram:66e2 cd 4a 2e       call 02e4ah          	;. J .
	ram:66e5 cd 40 2e       call 02e40h          	;. @ .
	ram:66e8 cd 95 20       call 02095h          	;. .  
	ram:66eb c3 72 66       jp l6672h            	;. r f
sub_66eeh:
	ram:66ee 6f             ld l,a               	;o
	ram:66ef 26 00          ld h,000h            	;& .
	ram:66f1 23             inc hl               	;#
	ram:66f2 cd 2a 2a       call 02a2ah          	;. * *
	ram:66f5 ed 53 3f 86    ld (0863fh),de       	;. S ? .
	ram:66f9 13             inc de               	;.
	ram:66fa 13             inc de               	;.
	ram:66fb af             xor a                	;.
	ram:66fc 12             ld (de),a            	;.
	ram:66fd 13             inc de               	;.
	ram:66fe 21 7e 66       ld hl,0667eh         	;! ~ f
	ram:6701 cd a9 20       call 020a9h          	;. .  
	ram:6704 e5             push hl              	;.
	ram:6705 d5             push de              	;.
	ram:6706 cd 48 67       call sub_6748h       	;. H g
	ram:6709 cd 95 20       call 02095h          	;. .  
	ram:670c d1             pop de               	;.
	ram:670d cd a0 66       call 066a0h          	;. . f
	ram:6710 e1             pop hl               	;.
	ram:6711 c9             ret                  	;.
	ram:6712 cd 41 20       call 02041h          	;. A  
	ram:6715 3a 83 80       ld a,(08083h)        	;: . .
	ram:6718 3c             inc a                	;<
	ram:6719 87             add a,a              	;.
	ram:671a c6 0d          add a,00dh           	;. .
	ram:671c fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:6720 28 02          jr z,l6724h          	;( .
	ram:6722 c6 0a          add a,00ah           	;. .
l6724h:
	ram:6724 cd ee 66       call sub_66eeh       	;. . f
	ram:6727 21 8f 66       ld hl,0668fh         	;! . f
	ram:672a cd a3 20       call 020a3h          	;. .  
	ram:672d cd a0 66       call 066a0h          	;. . f
	ram:6730 fd cb 00 56    bit 2,(iy+000h)      	;. . . V
	ram:6734 28 06          jr z,l673ch          	;( .
	ram:6736 21 96 66       ld hl,06696h         	;! . f
	ram:6739 cd 9d 20       call 0209dh          	;. .  
l673ch:
	ram:673c eb             ex de,hl             	;.
	ram:673d 36 11          ld (hl),011h         	;6 .
	ram:673f 23             inc hl               	;#
	ram:6740 36 4a          ld (hl),04ah         	;6 J
	ram:6742 cd 3d 26       call 0263dh          	;. = &
	ram:6745 c3 d9 66       jp l66d9h            	;. . f
sub_6748h:
	ram:6748 fd cb 08 46    bit 0,(iy+008h)      	;. . . F
	ram:674c c8             ret z                	;.
	ram:674d 1b             dec de               	;.
	ram:674e 1b             dec de               	;.
	ram:674f eb             ex de,hl             	;.
	ram:6750 36 2c          ld (hl),02ch         	;6 ,
	ram:6752 c9             ret                  	;.
l6753h:
	ram:6753 cd d1 23       call 023d1h          	;. . #
	ram:6756 ca 3e 21       jp z,0213eh          	;. > !
	ram:6759 cd 21 20       call 02021h          	;. !  
	ram:675c cd e7 23       call 023e7h          	;. . #
	ram:675f c2 14 0a       jp nz,00a14h         	;. . .
	ram:6762 cd 60 20       call 02060h          	;. `  
	ram:6765 cf             rst 8                	;.
	ram:6766 cd ee 25       call 025eeh          	;. . %
	ram:6769 c2 08 0a       jp nz,00a08h         	;. . .
	ram:676c cd 94 67       call sub_6794h       	;. . g
l676fh:
	ram:676f 21 91 80       ld hl,08091h         	;! . .
	ram:6772 7e             ld a,(hl)            	;~
	ram:6773 91             sub c                	;.
	ram:6774 27             daa                  	;'
	ram:6775 77             ld (hl),a            	;w
	ram:6776 2b             dec hl               	;+
	ram:6777 7e             ld a,(hl)            	;~
	ram:6778 98             sbc a,b              	;.
	ram:6779 27             daa                  	;'
	ram:677a c8             ret z                	;.
	ram:677b d8             ret c                	;.
	ram:677c 77             ld (hl),a            	;w
	ram:677d fe 10          cp 010h              	;. .
	ram:677f 30 0e          jr nc,l678fh         	;0 .
	ram:6781 cd c7 21       call 021c7h          	;. . !
	ram:6784 23             inc hl               	;#
	ram:6785 ed 6f          rld                  	;. o
	ram:6787 2b             dec hl               	;+
	ram:6788 77             ld (hl),a            	;w
	ram:6789 2b             dec hl               	;+
	ram:678a 2b             dec hl               	;+
	ram:678b 35             dec (hl)             	;5
	ram:678c cd 94 67       call sub_6794h       	;. . g
l678fh:
	ram:678f c5             push bc              	;.
	ram:6790 ef             rst 28h              	;.
	ram:6791 c1             pop bc               	;.
	ram:6792 18 db          jr l676fh            	;. .
sub_6794h:
	ram:6794 3a 8e 80       ld a,(0808eh)        	;: . .
	ram:6797 01 00 00       ld bc,00000h         	;. . .
	ram:679a fe 01          cp 001h              	;. .
	ram:679c 20 03          jr nz,l67a1h         	;.
	ram:679e 06 01          ld b,001h            	;. .
	ram:67a0 c9             ret                  	;.
l67a1h:
	ram:67a1 30 03          jr nc,l67a6h         	;0 .
	ram:67a3 06 10          ld b,010h            	;. .
	ram:67a5 c9             ret                  	;.
l67a6h:
	ram:67a6 0e 10          ld c,010h            	;. .
	ram:67a8 c9             ret                  	;.
l67a9h:
	ram:67a9 2f             cpl                  	;/
	ram:67aa 33             inc sp               	;3
	ram:67ab 78             ld a,b               	;x
	ram:67ac 2f             cpl                  	;/
	ram:67ad 33             inc sp               	;3
	ram:67ae 78             ld a,b               	;x
	ram:67af 11 2f 33       ld de,0332fh         	;. / 3
	ram:67b2 78             ld a,b               	;x
	ram:67b3 2f             cpl                  	;/
	ram:67b4 33             inc sp               	;3
	ram:67b5 78             ld a,b               	;x
	ram:67b6 21 08 00       ld hl,00008h         	;! . .
	ram:67b9 fd cb 08 46    bit 0,(iy+008h)      	;. . . F
	ram:67bd 28 03          jr z,l67c2h          	;( .
	ram:67bf 21 11 00       ld hl,00011h         	;! . .
l67c2h:
	ram:67c2 e5             push hl              	;.
	ram:67c3 f5             push af              	;.
	ram:67c4 cd b8 2f       call 02fb8h          	;. . /
	ram:67c7 d7             rst 10h              	;.
	ram:67c8 ed 53 34 86    ld (08634h),de       	;. S 4 .
	ram:67cc 13             inc de               	;.
	ram:67cd 13             inc de               	;.
	ram:67ce 13             inc de               	;.
	ram:67cf f1             pop af               	;.
	ram:67d0 f5             push af              	;.
	ram:67d1 20 48          jr nz,l681bh         	;H
	ram:67d3 21 02 00       ld hl,00002h         	;! . .
	ram:67d6 cd fa 27       call 027fah          	;. . '
	ram:67d9 eb             ex de,hl             	;.
	ram:67da 36 2b          ld (hl),02bh         	;6 +
l67dch:
	ram:67dc 23             inc hl               	;#
	ram:67dd 36 10          ld (hl),010h         	;6 .
	ram:67df eb             ex de,hl             	;.
	ram:67e0 2a 34 86       ld hl,(08634h)       	;* 4 .
	ram:67e3 4e             ld c,(hl)            	;N
	ram:67e4 23             inc hl               	;#
	ram:67e5 46             ld b,(hl)            	;F
	ram:67e6 eb             ex de,hl             	;.
	ram:67e7 09             add hl,bc            	;.
	ram:67e8 eb             ex de,hl             	;.
	ram:67e9 f1             pop af               	;.
	ram:67ea c5             push bc              	;.
	ram:67eb 20 3f          jr nz,l682ch         	;?
	ram:67ed 21 06 00       ld hl,00006h         	;! . .
	ram:67f0 cd fa 27       call 027fah          	;. . '
	ram:67f3 01 06 00       ld bc,00006h         	;. . .
l67f6h:
	ram:67f6 21 a9 67       ld hl,l67a9h         	;! . g
	ram:67f9 ed b0          ldir                 	;. .
	ram:67fb c1             pop bc               	;.
	ram:67fc e1             pop hl               	;.
	ram:67fd 09             add hl,bc            	;.
	ram:67fe eb             ex de,hl             	;.
	ram:67ff 2a 34 86       ld hl,(08634h)       	;* 4 .
	ram:6802 73             ld (hl),e            	;s
	ram:6803 23             inc hl               	;#
	ram:6804 72             ld (hl),d            	;r
	ram:6805 cd 4a 2e       call 02e4ah          	;. J .
	ram:6808 cd 4a 2e       call 02e4ah          	;. J .
	ram:680b cd 48 26       call 02648h          	;. H &
	ram:680e cd 4a 2e       call 02e4ah          	;. J .
	ram:6811 cd c9 38       call 038c9h          	;. . 8
	ram:6814 cd f4 2d       call 02df4h          	;. . -
	ram:6817 cd 60 26       call 02660h          	;. ` &
	ram:681a c9             ret                  	;.
l681bh:
	ram:681b 21 04 00       ld hl,00004h         	;! . .
	ram:681e cd fa 27       call 027fah          	;. . '
	ram:6821 eb             ex de,hl             	;.
	ram:6822 36 2c          ld (hl),02ch         	;6 ,
	ram:6824 23             inc hl               	;#
	ram:6825 36 10          ld (hl),010h         	;6 .
	ram:6827 23             inc hl               	;#
	ram:6828 36 2c          ld (hl),02ch         	;6 ,
	ram:682a 18 b0          jr l67dch            	;. .
l682ch:
	ram:682c 21 0d 00       ld hl,0000dh         	;! . .
	ram:682f cd fa 27       call 027fah          	;. . '
	ram:6832 01 0d 00       ld bc,0000dh         	;. . .
	ram:6835 18 bf          jr l67f6h            	;. .
	ram:6837 cd 4a 2e       call 02e4ah          	;. J .
	ram:683a cd 48 26       call 02648h          	;. H &
	ram:683d 18 0e          jr l684dh            	;. .
sub_683fh:
	ram:683f cd 4a 2e       call 02e4ah          	;. J .
	ram:6842 cd 3d 26       call 0263dh          	;. = &
	ram:6845 18 06          jr l684dh            	;. .
sub_6847h:
	ram:6847 cd 4a 2e       call 02e4ah          	;. J .
	ram:684a cd 54 26       call 02654h          	;. T &
l684dh:
	ram:684d 3e 2a          ld a,02ah            	;> *
	ram:684f fd cb 08 46    bit 0,(iy+008h)      	;. . . F
	ram:6853 28 02          jr z,l6857h          	;( .
	ram:6855 3e 2c          ld a,02ch            	;> ,
l6857h:
	ram:6857 cd 74 4c       call sub_4c74h       	;. t L
	ram:685a cd 47 1f       call 01f47h          	;. G .
	ram:685d c2 14 0a       jp nz,00a14h         	;. . .
	ram:6860 c9             ret                  	;.
	ram:6861 cd 3f 68       call sub_683fh       	;. ? h
	ram:6864 cd 0a 46       call sub_460ah       	;. . F
	ram:6867 cd 4a 2e       call 02e4ah          	;. J .
	ram:686a cd 3d 26       call 0263dh          	;. = &
	ram:686d cd c1 3a       call 03ac1h          	;. . :
	ram:6870 cd 69 16       call 01669h          	;. i .
	ram:6873 cd 7d 20       call 0207dh          	;. }  
	ram:6876 cd 8d 20       call 0208dh          	;. .  
	ram:6879 cd 1f 2f       call 02f1fh          	;. . /
	ram:687c ef             rst 28h              	;.
	ram:687d cd f5 1f       call 01ff5h          	;. . .
	ram:6880 cd 51 20       call 02051h          	;. Q  
	ram:6883 ef             rst 28h              	;.
	ram:6884 cd 6b 2f       call 02f6bh          	;. k /
	ram:6887 cd 43 26       call 02643h          	;. C &
	ram:688a cd c1 3a       call 03ac1h          	;. . :
	ram:688d cf             rst 8                	;.
	ram:688e cd 51 20       call 02051h          	;. Q  
	ram:6891 ef             rst 28h              	;.
	ram:6892 cd 85 20       call 02085h          	;. .  
	ram:6895 cd 5b 20       call 0205bh          	;. [  
	ram:6898 ef             rst 28h              	;.
	ram:6899 cd ef 2d       call 02defh          	;. . -
	ram:689c cd 61 0d       call 00d61h          	;. a .
	ram:689f cd 8d 20       call 0208dh          	;. .  
	ram:68a2 cd 56 20       call 02056h          	;. V  
	ram:68a5 cd 49 20       call 02049h          	;. I  
	ram:68a8 cd 78 0d       call 00d78h          	;. x .
	ram:68ab c3 29 20       jp 02029h            	;. )  
	ram:68ae cd 47 68       call sub_6847h       	;. G h
	ram:68b1 cd 1f 2f       call 02f1fh          	;. . /
	ram:68b4 cd 6b 2f       call 02f6bh          	;. k /
	ram:68b7 cd 95 20       call 02095h          	;. .  
	ram:68ba cd 47 68       call sub_6847h       	;. G h
	ram:68bd cd ef 2d       call 02defh          	;. . -
	ram:68c0 c3 23 10       jp 01023h            	;. # .
sub_68c3h:
	ram:68c3 0e 01          ld c,001h            	;. .
sub_68c5h:
	ram:68c5 78             ld a,b               	;x
	ram:68c6 b7             or a                 	;.
	ram:68c7 20 05          jr nz,l68ceh         	;.
l68c9h:
	ram:68c9 3e 78          ld a,078h            	;> x
	ram:68cb c3 87 0a       jp 00a87h            	;. . .
l68ceh:
	ram:68ce 79             ld a,c               	;y
	ram:68cf b7             or a                 	;.
	ram:68d0 28 f7          jr z,l68c9h          	;( .
	ram:68d2 1a             ld a,(de)            	;.
	ram:68d3 6f             ld l,a               	;o
	ram:68d4 13             inc de               	;.
	ram:68d5 13             inc de               	;.
	ram:68d6 1a             ld a,(de)            	;.
	ram:68d7 e6 01          and 001h             	;. .
	ram:68d9 f5             push af              	;.
	ram:68da af             xor a                	;.
	ram:68db 67             ld h,a               	;g
	ram:68dc 18 04          jr l68e2h            	;. .
l68deh:
	ram:68de 85             add a,l              	;.
	ram:68df 30 01          jr nc,l68e2h         	;0 .
	ram:68e1 24             inc h                	;$
l68e2h:
	ram:68e2 10 fa          djnz l68deh          	;. .
	ram:68e4 0d             dec c                	;.
	ram:68e5 81             add a,c              	;.
	ram:68e6 30 01          jr nc,l68e9h         	;0 .
	ram:68e8 24             inc h                	;$
l68e9h:
	ram:68e9 6f             ld l,a               	;o
	ram:68ea cd 33 1f       call 01f33h          	;. 3 .
	ram:68ed f1             pop af               	;.
	ram:68ee 28 01          jr z,l68f1h          	;( .
	ram:68f0 29             add hl,hl            	;)
l68f1h:
	ram:68f1 19             add hl,de            	;.
	ram:68f2 c9             ret                  	;.
	ram:68f3 ed 4b c1 80    ld bc,(080c1h)       	;. K . .
sub_68f7h:
	ram:68f7 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:68fb 18 12          jr sub_690fh         	;. .
sub_68fdh:
	ram:68fd ed 4b bd 80    ld bc,(080bdh)       	;. K . .
	ram:6901 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:6905 18 08          jr sub_690fh         	;. .
sub_6907h:
	ram:6907 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
sub_690bh:
	ram:690b ed 5b c6 80    ld de,(080c6h)       	;. [ . .
sub_690fh:
	ram:690f cd c5 68       call sub_68c5h       	;. . h
	ram:6912 11 82 80       ld de,08082h         	;. . .
	ram:6915 b7             or a                 	;.
	ram:6916 28 11          jr z,l6929h          	;( .
	ram:6918 c3 02 2e       jp 02e02h            	;. . .
sub_691bh:
	ram:691b ed 4b bd 80    ld bc,(080bdh)       	;. K . .
sub_691fh:
	ram:691f ed 5b c8 80    ld de,(080c8h)       	;. [ . .
sub_6923h:
	ram:6923 cd c5 68       call sub_68c5h       	;. . h
	ram:6926 11 8d 80       ld de,0808dh         	;. . .
l6929h:
	ram:6929 c3 9d 20       jp 0209dh            	;. .  
l692ch:
	ram:692c ed 4b b9 80    ld bc,(080b9h)       	;. K . .
sub_6930h:
	ram:6930 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:6934 18 13          jr l6949h            	;. .
sub_6936h:
	ram:6936 cd 78 26       call 02678h          	;. x &
	ram:6939 28 06          jr z,l6941h          	;( .
	ram:693b cd 3f 1f       call 01f3fh          	;. ? .
	ram:693e c4 63 1f       call nz,01f63h       	;. c .
l6941h:
	ram:6941 ed 4b c1 80    ld bc,(080c1h)       	;. K . .
sub_6945h:
	ram:6945 ed 5b ca 80    ld de,(080cah)       	;. [ . .
l6949h:
	ram:6949 cd c5 68       call sub_68c5h       	;. . h
	ram:694c e5             push hl              	;.
	ram:694d cd 9b 25       call 0259bh          	;. . %
	ram:6950 d1             pop de               	;.
	ram:6951 21 82 80       ld hl,08082h         	;! . .
	ram:6954 7e             ld a,(hl)            	;~
	ram:6955 cd 9d 20       call 0209dh          	;. .  
	ram:6958 e6 01          and 001h             	;. .
	ram:695a c8             ret z                	;.
	ram:695b 23             inc hl               	;#
	ram:695c 18 cb          jr l6929h            	;. .
sub_695eh:
	ram:695e ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6962 cd 45 69       call sub_6945h       	;. E i
sub_6965h:
	ram:6965 21 b9 80       ld hl,080b9h         	;! . .
	ram:6968 35             dec (hl)             	;5
	ram:6969 c0             ret nz               	;.
	ram:696a 3a c1 80       ld a,(080c1h)        	;: . .
	ram:696d 77             ld (hl),a            	;w
	ram:696e 23             inc hl               	;#
	ram:696f 35             dec (hl)             	;5
	ram:6970 c9             ret                  	;.
sub_6971h:
	ram:6971 21 ba 80       ld hl,080bah         	;! . .
	ram:6974 35             dec (hl)             	;5
	ram:6975 c0             ret nz               	;.
	ram:6976 3a c2 80       ld a,(080c2h)        	;: . .
	ram:6979 77             ld (hl),a            	;w
	ram:697a 2b             dec hl               	;+
	ram:697b 35             dec (hl)             	;5
	ram:697c c9             ret                  	;.
sub_697dh:
	ram:697d ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6981 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
sub_6985h:
	ram:6985 cd 0f 69       call sub_690fh       	;. . i
	ram:6988 cd 78 26       call 02678h          	;. x &
	ram:698b c8             ret z                	;.
sub_698ch:
	ram:698c cd 3f 1f       call 01f3fh          	;. ? .
	ram:698f c4 93 21       call nz,02193h       	;. . !
	ram:6992 c9             ret                  	;.
sub_6993h:
	ram:6993 cd 07 69       call sub_6907h       	;. . i
	ram:6996 cd 8c 69       call sub_698ch       	;. . i
	ram:6999 cd 91 2e       call 02e91h          	;. . .
	ram:699c cd fd 68       call sub_68fdh       	;. . h
	ram:699f 18 eb          jr sub_698ch         	;. .
sub_69a1h:
	ram:69a1 3e 01          ld a,001h            	;> .
	ram:69a3 18 01          jr l69a6h            	;. .
sub_69a5h:
	ram:69a5 af             xor a                	;.
l69a6h:
	ram:69a6 f5             push af              	;.
l69a7h:
	ram:69a7 cd 78 26       call 02678h          	;. x &
	ram:69aa 28 05          jr z,l69b1h          	;( .
	ram:69ac cd 93 69       call sub_6993h       	;. . i
	ram:69af 18 0a          jr l69bbh            	;. .
l69b1h:
	ram:69b1 cd 07 69       call sub_6907h       	;. . i
	ram:69b4 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:69b8 cd 1f 69       call sub_691fh       	;. . i
l69bbh:
	ram:69bb f1             pop af               	;.
	ram:69bc f5             push af              	;.
	ram:69bd cd 42 6a       call sub_6a42h       	;. B j
	ram:69c0 cd 5e 69       call sub_695eh       	;. ^ i
	ram:69c3 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:69c6 22 bd 80       ld (080bdh),hl       	;" . .
	ram:69c9 20 dc          jr nz,l69a7h         	;.
	ram:69cb f1             pop af               	;.
	ram:69cc c9             ret                  	;.
sub_69cdh:
	ram:69cd 2a c1 80       ld hl,(080c1h)       	;* . .
	ram:69d0 e5             push hl              	;.
	ram:69d1 ed 4b bd 80    ld bc,(080bdh)       	;. K . .
	ram:69d5 c5             push bc              	;.
l69d6h:
	ram:69d6 cd 61 6a       call sub_6a61h       	;. a j
l69d9h:
	ram:69d9 af             xor a                	;.
	ram:69da cd 09 6a       call sub_6a09h       	;. . j
	ram:69dd c1             pop bc               	;.
	ram:69de c5             push bc              	;.
	ram:69df 21 b9 80       ld hl,080b9h         	;! . .
	ram:69e2 35             dec (hl)             	;5
	ram:69e3 e5             push hl              	;.
	ram:69e4 21 be 80       ld hl,080beh         	;! . .
	ram:69e7 35             dec (hl)             	;5
	ram:69e8 d1             pop de               	;.
	ram:69e9 20 ee          jr nz,l69d9h         	;.
	ram:69eb 70             ld (hl),b            	;p
	ram:69ec 2b             dec hl               	;+
	ram:69ed 35             dec (hl)             	;5
	ram:69ee eb             ex de,hl             	;.
	ram:69ef 70             ld (hl),b            	;p
	ram:69f0 20 04          jr nz,l69f6h         	;.
	ram:69f2 23             inc hl               	;#
	ram:69f3 35             dec (hl)             	;5
	ram:69f4 eb             ex de,hl             	;.
	ram:69f5 71             ld (hl),c            	;q
l69f6h:
	ram:69f6 cd 41 69       call l6941h          	;. A i
	ram:69f9 21 c1 80       ld hl,080c1h         	;! . .
	ram:69fc 35             dec (hl)             	;5
	ram:69fd 20 d7          jr nz,l69d6h         	;.
	ram:69ff c1             pop bc               	;.
	ram:6a00 c5             push bc              	;.
	ram:6a01 71             ld (hl),c            	;q
	ram:6a02 23             inc hl               	;#
	ram:6a03 35             dec (hl)             	;5
	ram:6a04 20 d0          jr nz,l69d6h         	;.
	ram:6a06 c1             pop bc               	;.
	ram:6a07 c1             pop bc               	;.
	ram:6a08 c9             ret                  	;.
sub_6a09h:
	ram:6a09 cd 78 26       call 02678h          	;. x &
	ram:6a0c 28 1e          jr z,l6a2ch          	;( .
	ram:6a0e f5             push af              	;.
	ram:6a0f cd 91 2e       call 02e91h          	;. . .
	ram:6a12 cd 93 69       call sub_6993h       	;. . i
	ram:6a15 f1             pop af               	;.
	ram:6a16 30 0e          jr nc,l6a26h         	;0 .
	ram:6a18 cd 1a 2f       call 02f1ah          	;. . /
	ram:6a1b 3a 98 80       ld a,(08098h)        	;: . .
	ram:6a1e ee 80          xor 080h             	;. .
	ram:6a20 32 98 80       ld (08098h),a        	;2 . .
	ram:6a23 cd 5c 2f       call 02f5ch          	;. \ /
l6a26h:
	ram:6a26 cd 15 40       call sub_4015h       	;. . @
l6a29h:
	ram:6a29 c3 03 40       jp l4003h            	;. . @
l6a2ch:
	ram:6a2c cd 8d 20       call 0208dh          	;. .  
	ram:6a2f cd 07 69       call sub_6907h       	;. . i
	ram:6a32 cd 1b 69       call sub_691bh       	;. . i
	ram:6a35 ef             rst 28h              	;.
	ram:6a36 cd 29 20       call 02029h          	;. )  
l6a39h:
	ram:6a39 f7             rst 30h              	;.
	ram:6a3a c9             ret                  	;.
l6a3bh:
	ram:6a3b cd 78 26       call 02678h          	;. x &
	ram:6a3e 28 f9          jr z,l6a39h          	;( .
	ram:6a40 18 e7          jr l6a29h            	;. .
sub_6a42h:
	ram:6a42 28 f7          jr z,l6a3bh          	;( .
	ram:6a44 cd 78 26       call 02678h          	;. x &
	ram:6a47 ca 71 0d       jp z,00d71h          	;. q .
	ram:6a4a c3 00 40       jp sub_4000h         	;. . @
sub_6a4dh:
	ram:6a4d 30 09          jr nc,l6a58h         	;0 .
	ram:6a4f cd 78 26       call 02678h          	;. x &
	ram:6a52 ca 23 10       jp z,01023h          	;. # .
	ram:6a55 c3 4d 40       jp l404dh            	;. M @
l6a58h:
	ram:6a58 cd 78 26       call 02678h          	;. x &
	ram:6a5b ca 5b 0e       jp z,00e5bh          	;. [ .
	ram:6a5e c3 15 40       jp sub_4015h         	;. . @
sub_6a61h:
	ram:6a61 cd 78 26       call 02678h          	;. x &
	ram:6a64 ca 98 21       jp z,02198h          	;. . !
	ram:6a67 c3 60 1f       jp 01f60h            	;. ` .
l6a6ah:
	ram:6a6a af             xor a                	;.
	ram:6a6b d6 01          sub 001h             	;. .
	ram:6a6d 3a ba 80       ld a,(080bah)        	;: . .
	ram:6a70 32 c2 80       ld (080c2h),a        	;2 . .
	ram:6a73 f5             push af              	;.
	ram:6a74 18 0d          jr l6a83h            	;. .
l6a76h:
	ram:6a76 3e 01          ld a,001h            	;> .
	ram:6a78 18 01          jr l6a7bh            	;. .
sub_6a7ah:
	ram:6a7a af             xor a                	;.
l6a7bh:
	ram:6a7b b7             or a                 	;.
	ram:6a7c f5             push af              	;.
	ram:6a7d 3a b9 80       ld a,(080b9h)        	;: . .
	ram:6a80 32 c1 80       ld (080c1h),a        	;2 . .
l6a83h:
	ram:6a83 cd 98 21       call 02198h          	;. . !
	ram:6a86 f1             pop af               	;.
	ram:6a87 f5             push af              	;.
	ram:6a88 c4 4a 2e       call nz,02e4ah       	;. J .
l6a8bh:
	ram:6a8b cd 8d 20       call 0208dh          	;. .  
	ram:6a8e cd 51 74       call sub_7451h       	;. Q t
	ram:6a91 f1             pop af               	;.
	ram:6a92 f5             push af              	;.
	ram:6a93 cc 5a 0e       call z,00e5ah        	;. Z .
	ram:6a96 cd 29 20       call 02029h          	;. )  
	ram:6a99 cd 3f 0d       call 00d3fh          	;. ? .
	ram:6a9c f1             pop af               	;.
	ram:6a9d f5             push af              	;.
	ram:6a9e 28 1b          jr z,l6abbh          	;( .
	ram:6aa0 3a b9 80       ld a,(080b9h)        	;: . .
	ram:6aa3 30 03          jr nc,l6aa8h         	;0 .
	ram:6aa5 3a ba 80       ld a,(080bah)        	;: . .
l6aa8h:
	ram:6aa8 fe 01          cp 001h              	;. .
	ram:6aaa 20 0f          jr nz,l6abbh         	;.
	ram:6aac cd 1f 2f       call 02f1fh          	;. . /
	ram:6aaf cd 21 20       call 02021h          	;. !  
	ram:6ab2 cd 8e 1f       call 01f8eh          	;. . .
	ram:6ab5 d4 5c 2f       call nc,02f5ch       	;. \ /
	ram:6ab8 cd 98 21       call 02198h          	;. . !
l6abbh:
	ram:6abb f1             pop af               	;.
	ram:6abc f5             push af              	;.
	ram:6abd 30 05          jr nc,l6ac4h         	;0 .
	ram:6abf cd 71 69       call sub_6971h       	;. q i
	ram:6ac2 18 03          jr l6ac7h            	;. .
l6ac4h:
	ram:6ac4 cd 65 69       call sub_6965h       	;. e i
l6ac7h:
	ram:6ac7 20 c2          jr nz,l6a8bh         	;.
	ram:6ac9 f1             pop af               	;.
	ram:6aca ca f7 10       jp z,010f7h          	;. . .
	ram:6acd c3 f4 2d       jp 02df4h            	;. . -
sub_6ad0h:
	ram:6ad0 ed 4b c1 80    ld bc,(080c1h)       	;. K . .
	ram:6ad4 ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:6ad8 cd 3e 21       call 0213eh          	;. > !
	ram:6adb cd 78 26       call 02678h          	;. x &
	ram:6ade c4 63 1f       call nz,01f63h       	;. c .
sub_6ae1h:
	ram:6ae1 cd 5e 69       call sub_695eh       	;. ^ i
	ram:6ae4 c8             ret z                	;.
	ram:6ae5 21 85 80       ld hl,08085h         	;! . .
	ram:6ae8 36 00          ld (hl),000h         	;6 .
	ram:6aea 3a b9 80       ld a,(080b9h)        	;: . .
	ram:6aed 47             ld b,a               	;G
	ram:6aee 3a ba 80       ld a,(080bah)        	;: . .
	ram:6af1 b8             cp b                 	;.
	ram:6af2 20 ed          jr nz,sub_6ae1h      	;.
	ram:6af4 36 10          ld (hl),010h         	;6 .
	ram:6af6 18 e9          jr sub_6ae1h         	;. .
sub_6af8h:
	ram:6af8 3a b9 80       ld a,(080b9h)        	;: . .
	ram:6afb 32 c1 80       ld (080c1h),a        	;2 . .
	ram:6afe cd 61 6a       call sub_6a61h       	;. a j
l6b01h:
	ram:6b01 37             scf                  	;7
	ram:6b02 cd 09 6a       call sub_6a09h       	;. . j
	ram:6b05 cd 65 69       call sub_6965h       	;. e i
	ram:6b08 c8             ret z                	;.
	ram:6b09 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6b0d ed 43 bd 80    ld (080bdh),bc       	;. C . .
	ram:6b11 18 ee          jr l6b01h            	;. .
sub_6b13h:
	ram:6b13 3a be 80       ld a,(080beh)        	;: . .
	ram:6b16 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:6b1a 18 07          jr l6b23h            	;. .
sub_6b1ch:
	ram:6b1c 3a ba 80       ld a,(080bah)        	;: . .
	ram:6b1f ed 5b c6 80    ld de,(080c6h)       	;. [ . .
l6b23h:
	ram:6b23 b8             cp b                 	;.
	ram:6b24 30 05          jr nc,l6b2bh         	;0 .
	ram:6b26 cd 61 6a       call sub_6a61h       	;. a j
	ram:6b29 18 05          jr l6b30h            	;. .
l6b2bh:
	ram:6b2b 0e 01          ld c,001h            	;. .
	ram:6b2d cd 85 69       call sub_6985h       	;. . i
l6b30h:
	ram:6b30 c3 78 26       jp 02678h            	;. x &
sub_6b33h:
	ram:6b33 01 03 02       ld bc,00203h         	;. . .
	ram:6b36 cd 51 6b       call sub_6b51h       	;. Q k
	ram:6b39 cd c2 70       call sub_70c2h       	;. . p
	ram:6b3c 01 01 03       ld bc,00301h         	;. . .
	ram:6b3f cd 51 6b       call sub_6b51h       	;. Q k
	ram:6b42 cd 8b 70       call sub_708bh       	;. . p
	ram:6b45 01 02 01       ld bc,00102h         	;. . .
	ram:6b48 cd 51 6b       call sub_6b51h       	;. Q k
sub_6b4bh:
	ram:6b4b 01 01 03       ld bc,00301h         	;. . .
	ram:6b4e c3 45 69       jp sub_6945h         	;. E i
sub_6b51h:
	ram:6b51 cd 68 6b       call sub_6b68h       	;. h k
	ram:6b54 c5             push bc              	;.
	ram:6b55 df             rst 18h              	;.
	ram:6b56 d1             pop de               	;.
	ram:6b57 43             ld b,e               	;C
	ram:6b58 4a             ld c,d               	;J
	ram:6b59 cd 68 6b       call sub_6b68h       	;. h k
	ram:6b5c cd 78 26       call 02678h          	;. x &
	ram:6b5f c2 00 40       jp nz,sub_4000h      	;. . @
	ram:6b62 cd ef 2d       call 02defh          	;. . -
	ram:6b65 c3 61 0d       jp 00d61h            	;. a .
sub_6b68h:
	ram:6b68 c5             push bc              	;.
	ram:6b69 cd 1c 6b       call sub_6b1ch       	;. . k
	ram:6b6c c4 91 2e       call nz,02e91h       	;. . .
	ram:6b6f cf             rst 8                	;.
	ram:6b70 c1             pop bc               	;.
	ram:6b71 c5             push bc              	;.
	ram:6b72 41             ld b,c               	;A
	ram:6b73 cd 13 6b       call sub_6b13h       	;. . k
	ram:6b76 cd 58 6a       call l6a58h          	;. X j
	ram:6b79 c1             pop bc               	;.
	ram:6b7a c9             ret                  	;.
sub_6b7bh:
	ram:6b7b 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6b7e e5             push hl              	;.
l6b7fh:
	ram:6b7f cd 07 69       call sub_6907h       	;. . i
	ram:6b82 cd 3f 1f       call 01f3fh          	;. ? .
	ram:6b85 cc 9b 44       call z,l449bh        	;. . D
	ram:6b88 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6b8b 45             ld b,l               	;E
	ram:6b8c 4c             ld c,h               	;L
	ram:6b8d cd 45 69       call sub_6945h       	;. E i
	ram:6b90 21 b9 80       ld hl,080b9h         	;! . .
	ram:6b93 35             dec (hl)             	;5
	ram:6b94 20 e9          jr nz,l6b7fh         	;.
	ram:6b96 c1             pop bc               	;.
	ram:6b97 c5             push bc              	;.
	ram:6b98 71             ld (hl),c            	;q
	ram:6b99 23             inc hl               	;#
	ram:6b9a 35             dec (hl)             	;5
	ram:6b9b 20 e2          jr nz,l6b7fh         	;.
	ram:6b9d e1             pop hl               	;.
	ram:6b9e 45             ld b,l               	;E
	ram:6b9f 4c             ld c,h               	;L
	ram:6ba0 c9             ret                  	;.
sub_6ba1h:
	ram:6ba1 ed 5b ca 80    ld de,(080cah)       	;. [ . .
sub_6ba5h:
	ram:6ba5 1a             ld a,(de)            	;.
	ram:6ba6 6f             ld l,a               	;o
	ram:6ba7 26 00          ld h,000h            	;& .
	ram:6ba9 cd 33 1f       call 01f33h          	;. 3 .
	ram:6bac cd 78 26       call 02678h          	;. x &
	ram:6baf 28 01          jr z,l6bb2h          	;( .
	ram:6bb1 29             add hl,hl            	;)
l6bb2h:
	ram:6bb2 e5             push hl              	;.
	ram:6bb3 3a bd 80       ld a,(080bdh)        	;: . .
	ram:6bb6 47             ld b,a               	;G
	ram:6bb7 d5             push de              	;.
	ram:6bb8 cd c3 68       call sub_68c3h       	;. . h
	ram:6bbb d1             pop de               	;.
	ram:6bbc e5             push hl              	;.
	ram:6bbd 3a be 80       ld a,(080beh)        	;: . .
	ram:6bc0 47             ld b,a               	;G
	ram:6bc1 cd c3 68       call sub_68c3h       	;. . h
	ram:6bc4 d1             pop de               	;.
	ram:6bc5 c1             pop bc               	;.
l6bc6h:
	ram:6bc6 c5             push bc              	;.
	ram:6bc7 41             ld b,c               	;A
	ram:6bc8 cd c2 23       call 023c2h          	;. . #
	ram:6bcb c1             pop bc               	;.
	ram:6bcc 05             dec b                	;.
	ram:6bcd f8             ret m                	;.
	ram:6bce 0e 00          ld c,000h            	;. .
	ram:6bd0 18 f4          jr l6bc6h            	;. .
sub_6bd2h:
	ram:6bd2 af             xor a                	;.
	ram:6bd3 18 05          jr l6bdah            	;. .
sub_6bd5h:
	ram:6bd5 3e 01          ld a,001h            	;> .
l6bd7h:
	ram:6bd7 f5             push af              	;.
	ram:6bd8 df             rst 18h              	;.
	ram:6bd9 f1             pop af               	;.
l6bdah:
	ram:6bda 32 b9 80       ld (080b9h),a        	;2 . .
	ram:6bdd 3a c1 80       ld a,(080c1h)        	;: . .
	ram:6be0 32 bf 80       ld (080bfh),a        	;2 . .
l6be3h:
	ram:6be3 21 bd 80       ld hl,080bdh         	;! . .
	ram:6be6 46             ld b,(hl)            	;F
	ram:6be7 23             inc hl               	;#
	ram:6be8 23             inc hl               	;#
	ram:6be9 4e             ld c,(hl)            	;N
	ram:6bea c5             push bc              	;.
	ram:6beb 3a b9 80       ld a,(080b9h)        	;: . .
	ram:6bee d6 01          sub 001h             	;. .
	ram:6bf0 38 15          jr c,l6c07h          	;8 .
	ram:6bf2 f5             push af              	;.
	ram:6bf3 c5             push bc              	;.
	ram:6bf4 cd cf 2d       call 02dcfh          	;. . -
	ram:6bf7 df             rst 18h              	;.
	ram:6bf8 df             rst 18h              	;.
	ram:6bf9 c1             pop bc               	;.
	ram:6bfa cd f7 68       call sub_68f7h       	;. . h
	ram:6bfd 3e 70          ld a,070h            	;> p
	ram:6bff cd 7c 4c       call sub_4c7ch       	;. | L
	ram:6c02 f1             pop af               	;.
	ram:6c03 20 14          jr nz,l6c19h         	;.
	ram:6c05 18 03          jr l6c0ah            	;. .
l6c07h:
	ram:6c07 cd f7 68       call sub_68f7h       	;. . h
l6c0ah:
	ram:6c0a df             rst 18h              	;.
	ram:6c0b c1             pop bc               	;.
	ram:6c0c 3a be 80       ld a,(080beh)        	;: . .
	ram:6c0f 47             ld b,a               	;G
	ram:6c10 c5             push bc              	;.
	ram:6c11 cd f7 68       call sub_68f7h       	;. . h
	ram:6c14 3e 60          ld a,060h            	;> `
	ram:6c16 cd 7c 4c       call sub_4c7ch       	;. | L
l6c19h:
	ram:6c19 c1             pop bc               	;.
	ram:6c1a cd 45 69       call sub_6945h       	;. E i
	ram:6c1d 21 bf 80       ld hl,080bfh         	;! . .
	ram:6c20 35             dec (hl)             	;5
	ram:6c21 20 c0          jr nz,l6be3h         	;.
	ram:6c23 3a b9 80       ld a,(080b9h)        	;: . .
	ram:6c26 b7             or a                 	;.
	ram:6c27 c8             ret z                	;.
	ram:6c28 c3 bf 2d       jp 02dbfh            	;. . -
sub_6c2bh:
	ram:6c2b 3e 02          ld a,002h            	;> .
	ram:6c2d 18 a8          jr l6bd7h            	;. .
l6c2fh:
	ram:6c2f c5             push bc              	;.
	ram:6c30 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:6c33 23             inc hl               	;#
	ram:6c34 23             inc hl               	;#
	ram:6c35 48             ld c,b               	;H
	ram:6c36 06 00          ld b,000h            	;. .
	ram:6c38 09             add hl,bc            	;.
	ram:6c39 2b             dec hl               	;+
	ram:6c3a 41             ld b,c               	;A
l6c3bh:
	ram:6c3b 7e             ld a,(hl)            	;~
	ram:6c3c b8             cp b                 	;.
	ram:6c3d 20 05          jr nz,l6c44h         	;.
	ram:6c3f 2b             dec hl               	;+
	ram:6c40 10 f9          djnz l6c3bh          	;. .
	ram:6c42 c1             pop bc               	;.
	ram:6c43 c9             ret                  	;.
l6c44h:
	ram:6c44 78             ld a,b               	;x
l6c45h:
	ram:6c45 2b             dec hl               	;+
	ram:6c46 05             dec b                	;.
	ram:6c47 be             cp (hl)              	;.
	ram:6c48 20 fb          jr nz,l6c45h         	;.
	ram:6c4a 4f             ld c,a               	;O
	ram:6c4b c5             push bc              	;.
	ram:6c4c 78             ld a,b               	;x
	ram:6c4d cd 80 6c       call sub_6c80h       	;. . l
	ram:6c50 c1             pop bc               	;.
	ram:6c51 f1             pop af               	;.
	ram:6c52 f5             push af              	;.
l6c53h:
	ram:6c53 f5             push af              	;.
	ram:6c54 c5             push bc              	;.
	ram:6c55 47             ld b,a               	;G
	ram:6c56 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:6c5a cd c5 68       call sub_68c5h       	;. . h
	ram:6c5d c1             pop bc               	;.
	ram:6c5e f1             pop af               	;.
	ram:6c5f f5             push af              	;.
	ram:6c60 c5             push bc              	;.
	ram:6c61 48             ld c,b               	;H
	ram:6c62 47             ld b,a               	;G
	ram:6c63 e5             push hl              	;.
	ram:6c64 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:6c68 cd c5 68       call sub_68c5h       	;. . h
	ram:6c6b d1             pop de               	;.
	ram:6c6c 06 0a          ld b,00ah            	;. .
	ram:6c6e cd 78 26       call 02678h          	;. x &
	ram:6c71 28 02          jr z,l6c75h          	;( .
	ram:6c73 06 14          ld b,014h            	;. .
l6c75h:
	ram:6c75 cd c2 23       call 023c2h          	;. . #
	ram:6c78 c1             pop bc               	;.
	ram:6c79 f1             pop af               	;.
	ram:6c7a 3d             dec a                	;=
	ram:6c7b 20 d6          jr nz,l6c53h         	;.
	ram:6c7d c1             pop bc               	;.
	ram:6c7e 18 af          jr l6c2fh            	;. .
sub_6c80h:
	ram:6c80 16 00          ld d,000h            	;. .
	ram:6c82 5f             ld e,a               	;_
	ram:6c83 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:6c86 23             inc hl               	;#
	ram:6c87 19             add hl,de            	;.
	ram:6c88 e5             push hl              	;.
	ram:6c89 ed 52          sbc hl,de            	;. R
	ram:6c8b 59             ld e,c               	;Y
	ram:6c8c 19             add hl,de            	;.
	ram:6c8d d1             pop de               	;.
	ram:6c8e 1a             ld a,(de)            	;.
	ram:6c8f 46             ld b,(hl)            	;F
	ram:6c90 77             ld (hl),a            	;w
	ram:6c91 78             ld a,b               	;x
	ram:6c92 12             ld (de),a            	;.
	ram:6c93 c9             ret                  	;.
sub_6c94h:
	ram:6c94 f5             push af              	;.
	ram:6c95 c5             push bc              	;.
	ram:6c96 cd 51 74       call sub_7451h       	;. Q t
	ram:6c99 cd 4a 2e       call 02e4ah          	;. J .
l6c9ch:
	ram:6c9c 3a ba 80       ld a,(080bah)        	;: . .
	ram:6c9f c1             pop bc               	;.
	ram:6ca0 b9             cp c                 	;.
	ram:6ca1 20 05          jr nz,l6ca8h         	;.
	ram:6ca3 cd ea 2d       call 02deah          	;. . -
	ram:6ca6 f1             pop af               	;.
	ram:6ca7 c9             ret                  	;.
l6ca8h:
	ram:6ca8 c5             push bc              	;.
	ram:6ca9 3c             inc a                	;<
	ram:6caa 32 ba 80       ld (080bah),a        	;2 . .
	ram:6cad cd 51 74       call sub_7451h       	;. Q t
	ram:6cb0 cd 1f 2f       call 02f1fh          	;. . /
	ram:6cb3 cd 8e 1f       call 01f8eh          	;. . .
	ram:6cb6 38 e4          jr c,l6c9ch          	;8 .
	ram:6cb8 28 e2          jr z,l6c9ch          	;( .
	ram:6cba cd 51 74       call sub_7451h       	;. Q t
	ram:6cbd cd 6b 2f       call 02f6bh          	;. k /
	ram:6cc0 c1             pop bc               	;.
	ram:6cc1 f1             pop af               	;.
	ram:6cc2 ee 01          xor 001h             	;. .
	ram:6cc4 f5             push af              	;.
	ram:6cc5 c5             push bc              	;.
	ram:6cc6 48             ld c,b               	;H
	ram:6cc7 47             ld b,a               	;G
	ram:6cc8 3a ba 80       ld a,(080bah)        	;: . .
	ram:6ccb cd 66 6e       call sub_6e66h       	;. f n
	ram:6cce 18 cc          jr l6c9ch            	;. .
sub_6cd0h:
	ram:6cd0 3e 01          ld a,001h            	;> .
sub_6cd2h:
	ram:6cd2 32 bd 80       ld (080bdh),a        	;2 . .
sub_6cd5h:
	ram:6cd5 cd 61 6a       call sub_6a61h       	;. a j
sub_6cd8h:
	ram:6cd8 21 bd 80       ld hl,080bdh         	;! . .
l6cdbh:
	ram:6cdb 4e             ld c,(hl)            	;N
	ram:6cdc 3a ba 80       ld a,(080bah)        	;: . .
	ram:6cdf 47             ld b,a               	;G
	ram:6ce0 3a be 80       ld a,(080beh)        	;: . .
	ram:6ce3 be             cp (hl)              	;.
	ram:6ce4 d8             ret c                	;.
	ram:6ce5 c5             push bc              	;.
	ram:6ce6 df             rst 18h              	;.
	ram:6ce7 c1             pop bc               	;.
	ram:6ce8 cd 0b 69       call sub_690bh       	;. . i
	ram:6ceb ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6cef 3a bd 80       ld a,(080bdh)        	;: . .
	ram:6cf2 47             ld b,a               	;G
	ram:6cf3 cd 78 26       call 02678h          	;. x &
	ram:6cf6 28 0d          jr z,l6d05h          	;( .
	ram:6cf8 c5             push bc              	;.
	ram:6cf9 cd 91 2e       call 02e91h          	;. . .
	ram:6cfc c1             pop bc               	;.
	ram:6cfd cd 0b 69       call sub_690bh       	;. . i
	ram:6d00 cd 26 6a       call l6a26h          	;. & j
	ram:6d03 18 0c          jr l6d11h            	;. .
l6d05h:
	ram:6d05 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:6d09 cd 23 69       call sub_6923h       	;. # i
	ram:6d0c ef             rst 28h              	;.
	ram:6d0d cd ef 2d       call 02defh          	;. . -
	ram:6d10 f7             rst 30h              	;.
l6d11h:
	ram:6d11 21 bd 80       ld hl,080bdh         	;! . .
	ram:6d14 34             inc (hl)             	;4
	ram:6d15 18 c4          jr l6cdbh            	;. .
sub_6d17h:
	ram:6d17 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6d1a 6c             ld l,h               	;l
	ram:6d1b 3e 08          ld a,008h            	;> .
	ram:6d1d 18 22          jr l6d41h            	;. "
sub_6d1fh:
	ram:6d1f f5             push af              	;.
	ram:6d20 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:6d23 7c             ld a,h               	;|
	ram:6d24 bd             cp l                 	;.
	ram:6d25 c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:6d28 fe 01          cp 001h              	;. .
	ram:6d2a 20 14          jr nz,l6d40h         	;.
	ram:6d2c cd 07 69       call sub_6907h       	;. . i
	ram:6d2f f1             pop af               	;.
	ram:6d30 b7             or a                 	;.
	ram:6d31 c0             ret nz               	;.
	ram:6d32 cd 78 26       call 02678h          	;. x &
	ram:6d35 f5             push af              	;.
	ram:6d36 cc 1f 10       call z,0101fh        	;. . .
	ram:6d39 f1             pop af               	;.
	ram:6d3a c4 40 40       call nz,sub_4040h    	;. @ @
	ram:6d3d c3 2c 69       jp l692ch            	;. , i
l6d40h:
	ram:6d40 f1             pop af               	;.
l6d41h:
	ram:6d41 e5             push hl              	;.
	ram:6d42 f5             push af              	;.
	ram:6d43 b7             or a                 	;.
	ram:6d44 20 0d          jr nz,l6d53h         	;.
	ram:6d46 4c             ld c,h               	;L
	ram:6d47 06 00          ld b,000h            	;. .
	ram:6d49 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:6d4c 23             inc hl               	;#
	ram:6d4d 09             add hl,bc            	;.
	ram:6d4e 41             ld b,c               	;A
l6d4fh:
	ram:6d4f 70             ld (hl),b            	;p
	ram:6d50 2b             dec hl               	;+
	ram:6d51 10 fc          djnz l6d4fh          	;. .
l6d53h:
	ram:6d53 01 00 00       ld bc,00000h         	;. . .
	ram:6d56 ed 43 b9 80    ld (080b9h),bc       	;. C . .
l6d5ah:
	ram:6d5a f1             pop af               	;.
l6d5bh:
	ram:6d5b e1             pop hl               	;.
	ram:6d5c e5             push hl              	;.
	ram:6d5d e6 6f          and 06fh             	;. o
	ram:6d5f f5             push af              	;.
	ram:6d60 48             ld c,b               	;H
	ram:6d61 0c             inc c                	;.
	ram:6d62 cb 5f          bit 3,a              	;. _
	ram:6d64 28 05          jr z,l6d6bh          	;( .
	ram:6d66 7c             ld a,h               	;|
	ram:6d67 b9             cp c                 	;.
	ram:6d68 da 8d 6e       jp c,l6e8dh          	;. . n
l6d6bh:
	ram:6d6b 78             ld a,b               	;x
	ram:6d6c 41             ld b,c               	;A
	ram:6d6d 32 be 80       ld (080beh),a        	;2 . .
l6d70h:
	ram:6d70 ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:6d74 f1             pop af               	;.
	ram:6d75 f5             push af              	;.
	ram:6d76 cb 6f          bit 5,a              	;. o
	ram:6d78 28 1e          jr z,l6d98h          	;( .
	ram:6d7a cb 7f          bit 7,a              	;. .
	ram:6d7c 20 11          jr nz,l6d8fh         	;.
	ram:6d7e cd 3e 21       call 0213eh          	;. > !
	ram:6d81 f1             pop af               	;.
	ram:6d82 cb ff          set 7,a              	;. .
	ram:6d84 f5             push af              	;.
	ram:6d85 cd 78 26       call 02678h          	;. x &
	ram:6d88 28 31          jr z,l6dbbh          	;( 1
	ram:6d8a cd 63 1f       call 01f63h          	;. c .
	ram:6d8d 18 2c          jr l6dbbh            	;. ,
l6d8fh:
	ram:6d8f 79             ld a,c               	;y
	ram:6d90 cd d2 6c       call sub_6cd2h       	;. . l
	ram:6d93 cd fe 6f       call sub_6ffeh       	;. . o
	ram:6d96 18 23          jr l6dbbh            	;. #
l6d98h:
	ram:6d98 cd d0 6c       call sub_6cd0h       	;. . l
	ram:6d9b cd 2a 6f       call sub_6f2ah       	;. * o
	ram:6d9e f1             pop af               	;.
	ram:6d9f cb 67          bit 4,a              	;. g
	ram:6da1 20 17          jr nz,l6dbah         	;.
	ram:6da3 b7             or a                 	;.
	ram:6da4 cb ff          set 7,a              	;. .
	ram:6da6 f5             push af              	;.
	ram:6da7 cd 2c 69       call l692ch          	;. , i
l6daah:
	ram:6daa f1             pop af               	;.
	ram:6dab e1             pop hl               	;.
	ram:6dac e5             push hl              	;.
	ram:6dad f5             push af              	;.
	ram:6dae 6f             ld l,a               	;o
	ram:6daf ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6db3 7c             ld a,h               	;|
	ram:6db4 b8             cp b                 	;.
	ram:6db5 28 48          jr z,l6dffh          	;( H
	ram:6db7 04             inc b                	;.
	ram:6db8 18 b6          jr l6d70h            	;. .
l6dbah:
	ram:6dba f5             push af              	;.
l6dbbh:
	ram:6dbb ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6dbf 48             ld c,b               	;H
	ram:6dc0 cd 78 26       call 02678h          	;. x &
	ram:6dc3 28 0d          jr z,l6dd2h          	;( .
	ram:6dc5 c5             push bc              	;.
	ram:6dc6 cd 91 2e       call 02e91h          	;. . .
	ram:6dc9 c1             pop bc               	;.
	ram:6dca cd 0b 69       call sub_690bh       	;. . i
	ram:6dcd cd 4d 40       call l404dh          	;. M @
	ram:6dd0 18 0a          jr l6ddch            	;. .
l6dd2h:
	ram:6dd2 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:6dd6 cd 23 69       call sub_6923h       	;. # i
	ram:6dd9 cd 23 10       call 01023h          	;. # .
l6ddch:
	ram:6ddc cd 2c 69       call l692ch          	;. , i
	ram:6ddf c1             pop bc               	;.
	ram:6de0 e1             pop hl               	;.
	ram:6de1 e5             push hl              	;.
	ram:6de2 c5             push bc              	;.
	ram:6de3 cb 68          bit 5,b              	;. h
	ram:6de5 28 06          jr z,l6dedh          	;( .
	ram:6de7 21 be 80       ld hl,080beh         	;! . .
	ram:6dea 34             inc (hl)             	;4
	ram:6deb 18 bd          jr l6daah            	;. .
l6dedh:
	ram:6ded cb 58          bit 3,b              	;. X
	ram:6def 28 01          jr z,l6df2h          	;( .
	ram:6df1 24             inc h                	;$
l6df2h:
	ram:6df2 7c             ld a,h               	;|
	ram:6df3 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6df7 b9             cp c                 	;.
	ram:6df8 ca 5a 6d       jp z,l6d5ah          	;. Z m
	ram:6dfb 0c             inc c                	;.
l6dfch:
	ram:6dfc c3 70 6d       jp l6d70h            	;. p m
l6dffh:
	ram:6dff cb 5d          bit 3,l              	;. ]
	ram:6e01 28 01          jr z,l6e04h          	;( .
	ram:6e03 3c             inc a                	;<
l6e04h:
	ram:6e04 b9             cp c                 	;.
	ram:6e05 28 09          jr z,l6e10h          	;( .
	ram:6e07 f1             pop af               	;.
	ram:6e08 cb 6f          bit 5,a              	;. o
	ram:6e0a 28 0b          jr z,l6e17h          	;( .
	ram:6e0c 41             ld b,c               	;A
	ram:6e0d c3 5b 6d       jp l6d5bh            	;. [ m
l6e10h:
	ram:6e10 cd 35 71       call l7135h          	;. 5 q
	ram:6e13 28 1a          jr z,l6e2fh          	;( .
	ram:6e15 18 76          jr l6e8dh            	;. v
l6e17h:
	ram:6e17 f6 10          or 010h              	;. .
	ram:6e19 c5             push bc              	;.
	ram:6e1a f5             push af              	;.
	ram:6e1b 78             ld a,b               	;x
	ram:6e1c 41             ld b,c               	;A
	ram:6e1d ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:6e21 4f             ld c,a               	;O
	ram:6e22 f1             pop af               	;.
	ram:6e23 cd 94 6c       call sub_6c94h       	;. . l
	ram:6e26 f5             push af              	;.
	ram:6e27 cd 60 20       call 02060h          	;. `  
	ram:6e2a cd d1 23       call 023d1h          	;. . #
	ram:6e2d 20 0b          jr nz,l6e3ah         	;.
l6e2fh:
	ram:6e2f f1             pop af               	;.
	ram:6e30 c1             pop bc               	;.
	ram:6e31 cb 77          bit 6,a              	;. w
	ram:6e33 ca 10 0a       jp z,00a10h          	;. . .
	ram:6e36 f1             pop af               	;.
	ram:6e37 c3 61 6a       jp sub_6a61h         	;. a j
l6e3ah:
	ram:6e3a f1             pop af               	;.
	ram:6e3b c1             pop bc               	;.
	ram:6e3c f5             push af              	;.
	ram:6e3d 41             ld b,c               	;A
	ram:6e3e 0c             inc c                	;.
	ram:6e3f e6 08          and 008h             	;. .
l6e41h:
	ram:6e41 18 b9          jr l6dfch            	;. .
	ram:6e43 28 b7          jr z,l6dfch          	;( .
	ram:6e45 3a be 80       ld a,(080beh)        	;: . .
	ram:6e48 3c             inc a                	;<
	ram:6e49 32 be 80       ld (080beh),a        	;2 . .
	ram:6e4c 18 ae          jr l6dfch            	;. .
l6e4eh:
	ram:6e4e c5             push bc              	;.
	ram:6e4f cd 73 6e       call sub_6e73h       	;. s n
	ram:6e52 c1             pop bc               	;.
	ram:6e53 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:6e57 fd 7e 00       ld a,(iy+000h)       	;. ~ .
	ram:6e5a f5             push af              	;.
	ram:6e5b cd af 26       call 026afh          	;. . &
	ram:6e5e cd 77 6e       call sub_6e77h       	;. w n
	ram:6e61 f1             pop af               	;.
	ram:6e62 fd 77 00       ld (iy+000h),a       	;. w .
	ram:6e65 c9             ret                  	;.
sub_6e66h:
	ram:6e66 cb 58          bit 3,b              	;. X
	ram:6e68 20 09          jr nz,sub_6e73h      	;.
	ram:6e6a cb 48          bit 1,b              	;. H
	ram:6e6c 20 e0          jr nz,l6e4eh         	;.
	ram:6e6e cb 70          bit 6,b              	;. p
	ram:6e70 cc 80 6c       call z,sub_6c80h     	;. . l
sub_6e73h:
	ram:6e73 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
sub_6e77h:
	ram:6e77 79             ld a,c               	;y
	ram:6e78 32 bd 80       ld (080bdh),a        	;2 . .
	ram:6e7b 3a be 80       ld a,(080beh)        	;: . .
	ram:6e7e f5             push af              	;.
	ram:6e7f 3a ba 80       ld a,(080bah)        	;: . .
	ram:6e82 32 be 80       ld (080beh),a        	;2 . .
	ram:6e85 cd a5 6b       call sub_6ba5h       	;. . k
	ram:6e88 f1             pop af               	;.
	ram:6e89 32 be 80       ld (080beh),a        	;2 . .
	ram:6e8c c9             ret                  	;.
l6e8dh:
	ram:6e8d f1             pop af               	;.
	ram:6e8e cb 77          bit 6,a              	;. w
	ram:6e90 28 1f          jr z,l6eb1h          	;( .
	ram:6e92 e1             pop hl               	;.
	ram:6e93 f5             push af              	;.
	ram:6e94 cd 3e 21       call 0213eh          	;. > !
l6e97h:
	ram:6e97 df             rst 18h              	;.
	ram:6e98 cd 07 69       call sub_6907h       	;. . i
	ram:6e9b 3e 70          ld a,070h            	;> p
	ram:6e9d cd 7c 4c       call sub_4c7ch       	;. | L
	ram:6ea0 21 ba 80       ld hl,080bah         	;! . .
	ram:6ea3 35             dec (hl)             	;5
	ram:6ea4 28 04          jr z,l6eaah          	;( .
	ram:6ea6 2b             dec hl               	;+
	ram:6ea7 35             dec (hl)             	;5
	ram:6ea8 18 ed          jr l6e97h            	;. .
l6eaah:
	ram:6eaa f1             pop af               	;.
	ram:6eab e6 01          and 001h             	;. .
	ram:6ead c2 fe 6f       jp nz,sub_6ffeh      	;. . o
	ram:6eb0 c9             ret                  	;.
l6eb1h:
	ram:6eb1 e1             pop hl               	;.
	ram:6eb2 cb 4f          bit 1,a              	;. O
	ram:6eb4 c0             ret nz               	;.
	ram:6eb5 cb 5f          bit 3,a              	;. _
	ram:6eb7 c2 42 6f       jp nz,l6f42h         	;. B o
	ram:6eba e5             push hl              	;.
	ram:6ebb cb 6f          bit 5,a              	;. o
	ram:6ebd 20 08          jr nz,l6ec7h         	;.
	ram:6ebf cb ef          set 5,a              	;. .
	ram:6ec1 01 00 00       ld bc,00000h         	;. . .
	ram:6ec4 c3 5b 6d       jp l6d5bh            	;. [ m
l6ec7h:
	ram:6ec7 e1             pop hl               	;.
	ram:6ec8 e5             push hl              	;.
	ram:6ec9 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6ecd 05             dec b                	;.
	ram:6ece 28 23          jr z,l6ef3h          	;( #
	ram:6ed0 4c             ld c,h               	;L
l6ed1h:
	ram:6ed1 ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:6ed5 68             ld l,b               	;h
	ram:6ed6 2c             inc l                	;,
	ram:6ed7 61             ld h,c               	;a
	ram:6ed8 25             dec h                	;%
	ram:6ed9 22 bd 80       ld (080bdh),hl       	;" . .
	ram:6edc cd 07 69       call sub_6907h       	;. . i
	ram:6edf cd d8 6c       call sub_6cd8h       	;. . l
	ram:6ee2 cd fe 6f       call sub_6ffeh       	;. . o
	ram:6ee5 cd 2c 69       call l692ch          	;. , i
	ram:6ee8 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6eec 0d             dec c                	;.
	ram:6eed 79             ld a,c               	;y
	ram:6eee b8             cp b                 	;.
	ram:6eef 28 d6          jr z,l6ec7h          	;( .
	ram:6ef1 18 de          jr l6ed1h            	;. .
l6ef3h:
	ram:6ef3 06 01          ld b,001h            	;. .
	ram:6ef5 f1             pop af               	;.
	ram:6ef6 f5             push af              	;.
	ram:6ef7 32 be 80       ld (080beh),a        	;2 . .
l6efah:
	ram:6efa 0e 01          ld c,001h            	;. .
l6efch:
	ram:6efc cd 61 6a       call sub_6a61h       	;. a j
	ram:6eff ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:6f03 79             ld a,c               	;y
	ram:6f04 04             inc b                	;.
	ram:6f05 b8             cp b                 	;.
	ram:6f06 30 01          jr nc,l6f09h         	;0 .
	ram:6f08 78             ld a,b               	;x
l6f09h:
	ram:6f09 32 bd 80       ld (080bdh),a        	;2 . .
	ram:6f0c dc 07 69       call c,sub_6907h     	;. . i
	ram:6f0f cd d8 6c       call sub_6cd8h       	;. . l
	ram:6f12 cd 2c 69       call l692ch          	;. , i
	ram:6f15 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6f19 3a be 80       ld a,(080beh)        	;: . .
	ram:6f1c b9             cp c                 	;.
	ram:6f1d 28 03          jr z,l6f22h          	;( .
	ram:6f1f 0c             inc c                	;.
	ram:6f20 18 da          jr l6efch            	;. .
l6f22h:
	ram:6f22 04             inc b                	;.
	ram:6f23 b8             cp b                 	;.
	ram:6f24 20 d4          jr nz,l6efah         	;.
	ram:6f26 c1             pop bc               	;.
	ram:6f27 c3 2f 6c       jp l6c2fh            	;. / l
sub_6f2ah:
	ram:6f2a cd 78 26       call 02678h          	;. x &
	ram:6f2d 28 0c          jr z,l6f3bh          	;( .
	ram:6f2f cd 98 0f       call 00f98h          	;. . .
	ram:6f32 cd 91 2e       call 02e91h          	;. . .
	ram:6f35 cd 07 69       call sub_6907h       	;. . i
	ram:6f38 c3 03 40       jp l4003h            	;. . @
l6f3bh:
	ram:6f3b cf             rst 8                	;.
	ram:6f3c cd 07 69       call sub_6907h       	;. . i
	ram:6f3f c3 71 0d       jp 00d71h            	;. q .
l6f42h:
	ram:6f42 7c             ld a,h               	;|
	ram:6f43 32 ba 80       ld (080bah),a        	;2 . .
	ram:6f46 32 be 80       ld (080beh),a        	;2 . .
	ram:6f49 3c             inc a                	;<
	ram:6f4a 32 b9 80       ld (080b9h),a        	;2 . .
	ram:6f4d cd 07 69       call sub_6907h       	;. . i
l6f50h:
	ram:6f50 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:6f54 c5             push bc              	;.
	ram:6f55 0e 01          ld c,001h            	;. .
	ram:6f57 cd 45 69       call sub_6945h       	;. E i
	ram:6f5a c1             pop bc               	;.
	ram:6f5b cd 30 69       call sub_6930h       	;. 0 i
	ram:6f5e 3a ba 80       ld a,(080bah)        	;: . .
	ram:6f61 32 bd 80       ld (080bdh),a        	;2 . .
	ram:6f64 3d             dec a                	;=
	ram:6f65 c8             ret z                	;.
	ram:6f66 32 ba 80       ld (080bah),a        	;2 . .
	ram:6f69 cd d5 6c       call sub_6cd5h       	;. . l
	ram:6f6c cd 2a 6f       call sub_6f2ah       	;. * o
	ram:6f6f 18 df          jr l6f50h            	;. .
sub_6f71h:
	ram:6f71 3a ba 80       ld a,(080bah)        	;: . .
	ram:6f74 f5             push af              	;.
	ram:6f75 cd 7a 6a       call sub_6a7ah       	;. z j
	ram:6f78 f1             pop af               	;.
	ram:6f79 21 b9 80       ld hl,080b9h         	;! . .
	ram:6f7c 36 01          ld (hl),001h         	;6 .
	ram:6f7e 23             inc hl               	;#
	ram:6f7f 77             ld (hl),a            	;w
	ram:6f80 cd 78 26       call 02678h          	;. x &
	ram:6f83 20 03          jr nz,l6f88h         	;.
	ram:6f85 cf             rst 8                	;.
	ram:6f86 18 03          jr l6f8bh            	;. .
l6f88h:
	ram:6f88 cd 93 21       call 02193h          	;. . !
l6f8bh:
	ram:6f8b 37             scf                  	;7
	ram:6f8c 18 09          jr sub_6f97h         	;. .
	ram:6f8e 3e 80          ld a,080h            	;> .
sub_6f90h:
	ram:6f90 32 be 80       ld (080beh),a        	;2 . .
	ram:6f93 3e 09          ld a,009h            	;> .
	ram:6f95 18 3c          jr sub_6fd3h         	;. <
sub_6f97h:
	ram:6f97 f5             push af              	;.
l6f98h:
	ram:6f98 cd 78 26       call 02678h          	;. x &
	ram:6f9b 28 06          jr z,l6fa3h          	;( .
	ram:6f9d cd 91 2e       call 02e91h          	;. . .
	ram:6fa0 cd 91 2e       call 02e91h          	;. . .
l6fa3h:
	ram:6fa3 cd 7d 69       call sub_697dh       	;. } i
	ram:6fa6 cd 78 26       call 02678h          	;. x &
	ram:6fa9 c4 a6 2e       call nz,02ea6h       	;. . .
	ram:6fac f1             pop af               	;.
	ram:6fad f5             push af              	;.
	ram:6fae cd 4d 6a       call sub_6a4dh       	;. M j
	ram:6fb1 cd 5e 69       call sub_695eh       	;. ^ i
	ram:6fb4 28 08          jr z,l6fbeh          	;( .
	ram:6fb6 cd 78 26       call 02678h          	;. x &
	ram:6fb9 c4 fc 2d       call nz,02dfch       	;. . -
	ram:6fbc 18 da          jr l6f98h            	;. .
l6fbeh:
	ram:6fbe f1             pop af               	;.
	ram:6fbf cd 78 26       call 02678h          	;. x &
	ram:6fc2 c2 09 2e       jp nz,02e09h         	;. . .
	ram:6fc5 c9             ret                  	;.
l6fc6h:
	ram:6fc6 3e 02          ld a,002h            	;> .
	ram:6fc8 18 09          jr sub_6fd3h         	;. .
l6fcah:
	ram:6fca 3e 03          ld a,003h            	;> .
	ram:6fcc 18 05          jr sub_6fd3h         	;. .
l6fceh:
	ram:6fce 3e 01          ld a,001h            	;> .
	ram:6fd0 18 01          jr sub_6fd3h         	;. .
l6fd2h:
	ram:6fd2 af             xor a                	;.
sub_6fd3h:
	ram:6fd3 32 bd 80       ld (080bdh),a        	;2 . .
l6fd6h:
	ram:6fd6 cd 07 69       call sub_6907h       	;. . i
	ram:6fd9 cd 8c 69       call sub_698ch       	;. . i
	ram:6fdc cd e5 6f       call sub_6fe5h       	;. . o
	ram:6fdf cd 5e 69       call sub_695eh       	;. ^ i
	ram:6fe2 20 f2          jr nz,l6fd6h         	;.
	ram:6fe4 c9             ret                  	;.
sub_6fe5h:
	ram:6fe5 3a bd 80       ld a,(080bdh)        	;: . .
	ram:6fe8 fe 01          cp 001h              	;. .
	ram:6fea da 58 1f       jp c,01f58h          	;. X .
	ram:6fed ca 55 1f       jp z,01f55h          	;. U .
	ram:6ff0 fe 03          cp 003h              	;. .
	ram:6ff2 da 4d 1f       jp c,01f4dh          	;. M .
	ram:6ff5 20 03          jr nz,l6ffah         	;.
	ram:6ff7 c3 54 74       jp l7454h            	;. T t
l6ffah:
	ram:6ffa fe 05          cp 005h              	;. .
	ram:6ffc 20 05          jr nz,l7003h         	;.
sub_6ffeh:
	ram:6ffe 3e a1          ld a,0a1h            	;> .
l7000h:
	ram:7000 c3 be 56       jp sub_56beh         	;. . V
l7003h:
	ram:7003 da 9b 44       jp c,l449bh          	;. . D
	ram:7006 fe 07          cp 007h              	;. .
	ram:7008 20 04          jr nz,l700eh         	;.
	ram:700a 3e a4          ld a,0a4h            	;> .
	ram:700c 18 f2          jr l7000h            	;. .
l700eh:
	ram:700e 30 04          jr nc,l7014h         	;0 .
	ram:7010 3e a3          ld a,0a3h            	;> .
	ram:7012 18 ec          jr l7000h            	;. .
l7014h:
	ram:7014 fe 09          cp 009h              	;. .
	ram:7016 20 17          jr nz,l702fh         	;.
	ram:7018 3a be 80       ld a,(080beh)        	;: . .
	ram:701b 57             ld d,a               	;W
	ram:701c fe 80          cp 080h              	;. .
	ram:701e cd 78 26       call 02678h          	;. x &
	ram:7021 28 06          jr z,l7029h          	;( .
	ram:7023 da d3 11       jp c,011d3h          	;. . .
	ram:7026 c3 c4 11       jp 011c4h            	;. . .
l7029h:
	ram:7029 da fe 11       jp c,011feh          	;. . .
	ram:702c c3 e0 11       jp 011e0h            	;. . .
l702fh:
	ram:702f 3e a5          ld a,0a5h            	;> .
	ram:7031 18 cd          jr l7000h            	;. .
sub_7033h:
	ram:7033 cd 98 21       call 02198h          	;. . !
	ram:7036 3a ba 80       ld a,(080bah)        	;: . .
	ram:7039 fe 02          cp 002h              	;. .
	ram:703b 28 06          jr z,l7043h          	;( .
	ram:703d 01 01 03       ld bc,00301h         	;. . .
	ram:7040 cd 0b 69       call sub_690bh       	;. . i
l7043h:
	ram:7043 cd 4b 6b       call sub_6b4bh       	;. K k
sub_7046h:
	ram:7046 cd c7 70       call sub_70c7h       	;. . p
	ram:7049 cd 7f 70       call sub_707fh       	;. . p
sub_704ch:
	ram:704c cd c7 70       call sub_70c7h       	;. . p
	ram:704f cd ba 23       call 023bah          	;. . #
	ram:7052 cd 8b 70       call sub_708bh       	;. . p
	ram:7055 cd 98 21       call 02198h          	;. . !
	ram:7058 3a ba 80       ld a,(080bah)        	;: . .
	ram:705b fe 02          cp 002h              	;. .
	ram:705d 28 09          jr z,l7068h          	;( .
	ram:705f 01 01 03       ld bc,00301h         	;. . .
	ram:7062 cd 0b 69       call sub_690bh       	;. . i
	ram:7065 cd 23 10       call 01023h          	;. # .
l7068h:
	ram:7068 cd 0d 1b       call 01b0dh          	;. . .
	ram:706b cd 4b 6b       call sub_6b4bh       	;. K k
	ram:706e cd 7a 6a       call sub_6a7ah       	;. z j
	ram:7071 18 4f          jr sub_70c2h         	;. O
	ram:7073 cd f4 2d       call 02df4h          	;. . -
	ram:7076 cd 4b 6b       call sub_6b4bh       	;. K k
	ram:7079 cd fc 2d       call 02dfch          	;. . -
	ram:707c cd 8b 1e       call 01e8bh          	;. . .
sub_707fh:
	ram:707f cd 58 1f       call 01f58h          	;. X .
	ram:7082 cd c2 70       call sub_70c2h       	;. . p
	ram:7085 cd 95 20       call 02095h          	;. .  
	ram:7088 cd 58 1f       call 01f58h          	;. X .
sub_708bh:
	ram:708b 01 01 02       ld bc,00201h         	;. . .
l708eh:
	ram:708e c3 45 69       jp sub_6945h         	;. E i
	ram:7091 cd f4 2d       call 02df4h          	;. . -
	ram:7094 cd 69 16       call 01669h          	;. i .
	ram:7097 cd f5 1f       call 01ff5h          	;. . .
	ram:709a cd 95 20       call 02095h          	;. .  
	ram:709d cd 3b 2f       call 02f3bh          	;. ; /
	ram:70a0 ef             rst 28h              	;.
	ram:70a1 cd 4b 6b       call sub_6b4bh       	;. K k
	ram:70a4 cd 56 20       call 02056h          	;. V  
	ram:70a7 ef             rst 28h              	;.
	ram:70a8 cd 85 20       call 02085h          	;. .  
	ram:70ab cd f4 2d       call 02df4h          	;. . -
	ram:70ae cd 69 16       call 01669h          	;. i .
	ram:70b1 cd fe 1f       call 01ffeh          	;. . .
	ram:70b4 cd 49 20       call 02049h          	;. I  
	ram:70b7 ef             rst 28h              	;.
	ram:70b8 cd 8b 70       call sub_708bh       	;. . p
	ram:70bb cd 56 20       call 02056h          	;. V  
	ram:70be ef             rst 28h              	;.
	ram:70bf cd 0c 2e       call 02e0ch          	;. . .
sub_70c2h:
	ram:70c2 01 01 01       ld bc,00101h         	;. . .
	ram:70c5 18 c7          jr l708eh            	;. .
sub_70c7h:
	ram:70c7 cd 31 2e       call 02e31h          	;. 1 .
	ram:70ca 01 01 02       ld bc,00201h         	;. . .
	ram:70cd cd 0b 69       call sub_690bh       	;. . i
	ram:70d0 cf             rst 8                	;.
	ram:70d1 01 01 01       ld bc,00101h         	;. . .
	ram:70d4 cd 0b 69       call sub_690bh       	;. . i
	ram:70d7 cd a5 1e       call 01ea5h          	;. . .
	ram:70da cd 58 1f       call 01f58h          	;. X .
	ram:70dd 21 8d 80       ld hl,0808dh         	;! . .
	ram:70e0 cb 86          res 0,(hl)           	;. .
	ram:70e2 c3 db 2d       jp 02ddbh            	;. . -
l70e5h:
	ram:70e5 3a b9 80       ld a,(080b9h)        	;: . .
	ram:70e8 32 c1 80       ld (080c1h),a        	;2 . .
l70ebh:
	ram:70eb cd 5e 69       call sub_695eh       	;. ^ i
	ram:70ee 20 fb          jr nz,l70ebh         	;.
	ram:70f0 c9             ret                  	;.
sub_70f1h:
	ram:70f1 3a c1 80       ld a,(080c1h)        	;: . .
	ram:70f4 47             ld b,a               	;G
	ram:70f5 3a bd 80       ld a,(080bdh)        	;: . .
	ram:70f8 4f             ld c,a               	;O
	ram:70f9 c5             push bc              	;.
l70fah:
	ram:70fa cd fd 68       call sub_68fdh       	;. . h
	ram:70fd cd 36 69       call sub_6936h       	;. 6 i
	ram:7100 3a c1 80       ld a,(080c1h)        	;: . .
	ram:7103 3d             dec a                	;=
	ram:7104 32 c1 80       ld (080c1h),a        	;2 . .
	ram:7107 3a bd 80       ld a,(080bdh)        	;: . .
	ram:710a 3d             dec a                	;=
	ram:710b 28 05          jr z,l7112h          	;( .
	ram:710d 32 bd 80       ld (080bdh),a        	;2 . .
	ram:7110 18 e8          jr l70fah            	;. .
l7112h:
	ram:7112 ed 4b c1 80    ld bc,(080c1h)       	;. K . .
	ram:7116 cd 0b 69       call sub_690bh       	;. . i
	ram:7119 cd 36 69       call sub_6936h       	;. 6 i
	ram:711c 2a c1 80       ld hl,(080c1h)       	;* . .
	ram:711f 2d             dec l                	;-
	ram:7120 28 05          jr z,l7127h          	;( .
	ram:7122 22 c1 80       ld (080c1h),hl       	;" . .
	ram:7125 18 eb          jr l7112h            	;. .
l7127h:
	ram:7127 c1             pop bc               	;.
	ram:7128 25             dec h                	;%
	ram:7129 c8             ret z                	;.
	ram:712a 69             ld l,c               	;i
	ram:712b 22 bd 80       ld (080bdh),hl       	;" . .
	ram:712e 68             ld l,b               	;h
	ram:712f 22 c1 80       ld (080c1h),hl       	;" . .
	ram:7132 c5             push bc              	;.
	ram:7133 18 c5          jr l70fah            	;. .
l7135h:
	ram:7135 cd 3f 1f       call 01f3fh          	;. ? .
	ram:7138 ca cc 23       jp z,023cch          	;. . #
	ram:713b c3 d1 23       jp 023d1h            	;. . #
sub_713eh:
	ram:713e 06 04          ld b,004h            	;. .
	ram:7140 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:7144 18 10          jr sub_7156h         	;. .
sub_7146h:
	ram:7146 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7149 23             inc hl               	;#
	ram:714a 23             inc hl               	;#
	ram:714b 7e             ld a,(hl)            	;~
	ram:714c e6 1f          and 01fh             	;. .
	ram:714e 28 1d          jr z,l716dh          	;( .
sub_7150h:
	ram:7150 ed 5b ca 80    ld de,(080cah)       	;. [ . .
sub_7154h:
	ram:7154 06 06          ld b,006h            	;. .
sub_7156h:
	ram:7156 13             inc de               	;.
	ram:7157 13             inc de               	;.
	ram:7158 d5             push de              	;.
	ram:7159 1a             ld a,(de)            	;.
	ram:715a e6 01          and 001h             	;. .
	ram:715c b0             or b                 	;.
	ram:715d 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7160 cd 3f 2d       call 02d3fh          	;. ? -
	ram:7163 42             ld b,d               	;B
	ram:7164 4b             ld c,e               	;K
	ram:7165 0b             dec bc               	;.
	ram:7166 0b             dec bc               	;.
	ram:7167 23             inc hl               	;#
	ram:7168 23             inc hl               	;#
	ram:7169 d1             pop de               	;.
	ram:716a ed b0          ldir                 	;. .
	ram:716c c9             ret                  	;.
l716dh:
	ram:716d cd 78 26       call 02678h          	;. x &
	ram:7170 28 de          jr z,sub_7150h       	;( .
	ram:7172 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:7175 ed 4b c6 80    ld bc,(080c6h)       	;. K . .
	ram:7179 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:717d 03             inc bc               	;.
	ram:717e 03             inc bc               	;.
	ram:717f 13             inc de               	;.
	ram:7180 13             inc de               	;.
	ram:7181 d5             push de              	;.
	ram:7182 c5             push bc              	;.
	ram:7183 cd 01 26       call 02601h          	;. . &
	ram:7186 d1             pop de               	;.
l7187h:
	ram:7187 e5             push hl              	;.
	ram:7188 cd 93 21       call 02193h          	;. . !
	ram:718b eb             ex de,hl             	;.
l718ch:
	ram:718c 11 82 80       ld de,08082h         	;. . .
	ram:718f cd 9d 20       call 0209dh          	;. .  
	ram:7192 cd 66 1f       call 01f66h          	;. f .
	ram:7195 c1             pop bc               	;.
	ram:7196 d1             pop de               	;.
	ram:7197 e5             push hl              	;.
	ram:7198 c5             push bc              	;.
	ram:7199 cd e5 1f       call 01fe5h          	;. . .
	ram:719c e1             pop hl               	;.
	ram:719d 01 01 00       ld bc,00001h         	;. . .
	ram:71a0 b7             or a                 	;.
	ram:71a1 ed 42          sbc hl,bc            	;. B
	ram:71a3 c1             pop bc               	;.
	ram:71a4 c8             ret z                	;.
	ram:71a5 d5             push de              	;.
	ram:71a6 e5             push hl              	;.
	ram:71a7 60             ld h,b               	;`
	ram:71a8 69             ld l,c               	;i
	ram:71a9 18 e1          jr l718ch            	;. .
	ram:71ab c5             push bc              	;.
	ram:71ac 18 d9          jr l7187h            	;. .
sub_71aeh:
	ram:71ae f5             push af              	;.
	ram:71af 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:71b2 e5             push hl              	;.
	ram:71b3 cd 76 6a       call l6a76h          	;. v j
	ram:71b6 e1             pop hl               	;.
	ram:71b7 22 b9 80       ld (080b9h),hl       	;" . .
	ram:71ba 22 c1 80       ld (080c1h),hl       	;" . .
	ram:71bd 7c             ld a,h               	;|
	ram:71be bd             cp l                 	;.
	ram:71bf 38 01          jr c,l71c2h          	;8 .
	ram:71c1 6c             ld l,h               	;l
l71c2h:
	ram:71c2 26 00          ld h,000h            	;& .
	ram:71c4 cd ef 39       call 039efh          	;. . 9
	ram:71c7 ef             rst 28h              	;.
	ram:71c8 cd 66 21       call 02166h          	;. f !
	ram:71cb 21 f3 fb       ld hl,0fbf3h         	;! . .
	ram:71ce 22 8e 80       ld (0808eh),hl       	;" . .
	ram:71d1 ef             rst 28h              	;.
	ram:71d2 cd 4a 2e       call 02e4ah          	;. J .
	ram:71d5 01 01 01       ld bc,00101h         	;. . .
l71d8h:
	ram:71d8 ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:71dc c5             push bc              	;.
	ram:71dd 3a ba 80       ld a,(080bah)        	;: . .
	ram:71e0 47             ld b,a               	;G
	ram:71e1 3a c2 80       ld a,(080c2h)        	;: . .
	ram:71e4 4f             ld c,a               	;O
	ram:71e5 3e 08          ld a,008h            	;> .
	ram:71e7 cd 94 6c       call sub_6c94h       	;. . l
	ram:71ea cd 1f 2f       call 02f1fh          	;. . /
	ram:71ed cd 60 20       call 02060h          	;. `  
	ram:71f0 cd 8e 1f       call 01f8eh          	;. . .
	ram:71f3 c1             pop bc               	;.
	ram:71f4 c5             push bc              	;.
	ram:71f5 38 02          jr c,l71f9h          	;8 .
	ram:71f7 20 13          jr nz,l720ch         	;.
l71f9h:
	ram:71f9 c5             push bc              	;.
	ram:71fa cd 61 6a       call sub_6a61h       	;. a j
	ram:71fd cd 30 69       call sub_6930h       	;. 0 i
	ram:7200 c1             pop bc               	;.
	ram:7201 04             inc b                	;.
	ram:7202 3a c2 80       ld a,(080c2h)        	;: . .
	ram:7205 b8             cp b                 	;.
	ram:7206 30 f1          jr nc,l71f9h         	;0 .
	ram:7208 c1             pop bc               	;.
	ram:7209 c3 7c 72       jp l727ch            	;. | r
l720ch:
	ram:720c ed 43 b9 80    ld (080b9h),bc       	;. C . .
	ram:7210 cd 07 69       call sub_6907h       	;. . i
	ram:7213 df             rst 18h              	;.
	ram:7214 c1             pop bc               	;.
l7215h:
	ram:7215 c5             push bc              	;.
	ram:7216 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:721a cd 0f 69       call sub_690fh       	;. . i
	ram:721d cd 78 26       call 02678h          	;. x &
	ram:7220 20 08          jr nz,l722ah         	;.
	ram:7222 cd 1f 2f       call 02f1fh          	;. . /
	ram:7225 cd 23 10       call 01023h          	;. # .
	ram:7228 18 0d          jr l7237h            	;. .
l722ah:
	ram:722a cd 33 2f       call 02f33h          	;. 3 /
	ram:722d df             rst 18h              	;.
	ram:722e cd 60 20       call 02060h          	;. `  
	ram:7231 cd 07 20       call 02007h          	;. .  
	ram:7234 cd 4d 40       call l404dh          	;. M @
l7237h:
	ram:7237 c1             pop bc               	;.
	ram:7238 c5             push bc              	;.
	ram:7239 cd 30 69       call sub_6930h       	;. 0 i
	ram:723c c1             pop bc               	;.
	ram:723d 0c             inc c                	;.
	ram:723e 28 06          jr z,l7246h          	;( .
	ram:7240 3a c1 80       ld a,(080c1h)        	;: . .
	ram:7243 b9             cp c                 	;.
	ram:7244 30 cf          jr nc,l7215h         	;0 .
l7246h:
	ram:7246 cd cf 2d       call 02dcfh          	;. . -
	ram:7249 f1             pop af               	;.
	ram:724a f5             push af              	;.
	ram:724b 38 11          jr c,l725eh          	;8 .
	ram:724d 3e 01          ld a,001h            	;> .
	ram:724f 21 be 80       ld hl,080beh         	;! . .
	ram:7252 77             ld (hl),a            	;w
l7253h:
	ram:7253 3a ba 80       ld a,(080bah)        	;: . .
	ram:7256 be             cp (hl)              	;.
	ram:7257 28 05          jr z,l725eh          	;( .
	ram:7259 cd 8b 72       call sub_728bh       	;. . r
	ram:725c 18 f5          jr l7253h            	;. .
l725eh:
	ram:725e 3a ba 80       ld a,(080bah)        	;: . .
	ram:7261 3c             inc a                	;<
	ram:7262 21 be 80       ld hl,080beh         	;! . .
	ram:7265 77             ld (hl),a            	;w
l7266h:
	ram:7266 3a c2 80       ld a,(080c2h)        	;: . .
	ram:7269 be             cp (hl)              	;.
	ram:726a 38 05          jr c,l7271h          	;8 .
	ram:726c cd 8b 72       call sub_728bh       	;. . r
	ram:726f 18 f5          jr l7266h            	;. .
l7271h:
	ram:7271 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:7275 04             inc b                	;.
	ram:7276 3a c2 80       ld a,(080c2h)        	;: . .
	ram:7279 b8             cp b                 	;.
	ram:727a 38 0a          jr c,l7286h          	;8 .
l727ch:
	ram:727c 3a c1 80       ld a,(080c1h)        	;: . .
	ram:727f 0c             inc c                	;.
	ram:7280 28 04          jr z,l7286h          	;( .
	ram:7282 b9             cp c                 	;.
	ram:7283 d2 d8 71       jp nc,l71d8h         	;. . q
l7286h:
	ram:7286 cd 0c 2e       call 02e0ch          	;. . .
	ram:7289 f1             pop af               	;.
	ram:728a c9             ret                  	;.
sub_728bh:
	ram:728b 3a c1 80       ld a,(080c1h)        	;: . .
	ram:728e 32 bd 80       ld (080bdh),a        	;2 . .
l7291h:
	ram:7291 ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:7295 3a bd 80       ld a,(080bdh)        	;: . .
	ram:7298 4f             ld c,a               	;O
	ram:7299 cd 0b 69       call sub_690bh       	;. . i
	ram:729c df             rst 18h              	;.
	ram:729d ed 4b b9 80    ld bc,(080b9h)       	;. K . .
	ram:72a1 3a be 80       ld a,(080beh)        	;: . .
	ram:72a4 47             ld b,a               	;G
	ram:72a5 cd 0b 69       call sub_690bh       	;. . i
	ram:72a8 3e 70          ld a,070h            	;> p
	ram:72aa cd 7c 4c       call sub_4c7ch       	;. | L
	ram:72ad cd fe 6f       call sub_6ffeh       	;. . o
	ram:72b0 df             rst 18h              	;.
	ram:72b1 ed 4b bd 80    ld bc,(080bdh)       	;. K . .
	ram:72b5 cd 0b 69       call sub_690bh       	;. . i
	ram:72b8 3e 60          ld a,060h            	;> `
	ram:72ba cd 7c 4c       call sub_4c7ch       	;. | L
	ram:72bd ed 4b bd 80    ld bc,(080bdh)       	;. K . .
	ram:72c1 cd 30 69       call sub_6930h       	;. 0 i
	ram:72c4 21 bd 80       ld hl,080bdh         	;! . .
	ram:72c7 35             dec (hl)             	;5
	ram:72c8 3a b9 80       ld a,(080b9h)        	;: . .
	ram:72cb be             cp (hl)              	;.
	ram:72cc 38 c3          jr c,l7291h          	;8 .
	ram:72ce 28 c1          jr z,l7291h          	;( .
	ram:72d0 23             inc hl               	;#
	ram:72d1 34             inc (hl)             	;4
	ram:72d2 c9             ret                  	;.
l72d3h:
	ram:72d3 f5             push af              	;.
	ram:72d4 cd df 57       call l57dfh          	;. . W
	ram:72d7 3a b9 80       ld a,(080b9h)        	;: . .
	ram:72da 67             ld h,a               	;g
	ram:72db 6f             ld l,a               	;o
	ram:72dc cd 09 2a       call 02a09h          	;. . *
	ram:72df cd 75 55       call sub_5575h       	;. u U
	ram:72e2 cd 7d 26       call 0267dh          	;. } &
	ram:72e5 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:72e9 3a b9 80       ld a,(080b9h)        	;: . .
	ram:72ec 32 ba 80       ld (080bah),a        	;2 . .
l72efh:
	ram:72ef cd 60 1f       call 01f60h          	;. ` .
	ram:72f2 3a b9 80       ld a,(080b9h)        	;: . .
	ram:72f5 32 bb 80       ld (080bbh),a        	;2 . .
l72f8h:
	ram:72f8 cd 87 38       call 03887h          	;. . 8
	ram:72fb 21 bb 80       ld hl,080bbh         	;! . .
	ram:72fe 35             dec (hl)             	;5
	ram:72ff 20 f7          jr nz,l72f8h         	;.
	ram:7301 cd 8d 38       call 0388dh          	;. . 8
	ram:7304 cd 31 2e       call 02e31h          	;. 1 .
	ram:7307 f1             pop af               	;.
	ram:7308 f5             push af              	;.
	ram:7309 cd 5a 73       call sub_735ah       	;. Z s
	ram:730c cd db 2d       call 02ddbh          	;. . -
	ram:730f cd 93 38       call 03893h          	;. . 8
	ram:7312 21 ba 80       ld hl,080bah         	;! . .
	ram:7315 35             dec (hl)             	;5
	ram:7316 20 d7          jr nz,l72efh         	;.
	ram:7318 f1             pop af               	;.
	ram:7319 cd f4 2d       call 02df4h          	;. . -
	ram:731c d7             rst 10h              	;.
	ram:731d cb fe          set 7,(hl)           	;. .
	ram:731f 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7322 22 c8 80       ld (080c8h),hl       	;" . .
	ram:7325 2a ca 80       ld hl,(080cah)       	;* . .
	ram:7328 22 c6 80       ld (080c6h),hl       	;" . .
	ram:732b 3a b9 80       ld a,(080b9h)        	;: . .
	ram:732e 67             ld h,a               	;g
	ram:732f 6f             ld l,a               	;o
	ram:7330 cd 29 4e       call sub_4e29h       	;. ) N
	ram:7333 cd 5f 56       call sub_565fh       	;. _ V
	ram:7336 cd cd 69       call sub_69cdh       	;. . i
	ram:7339 cd ef 2d       call 02defh          	;. . -
	ram:733c cd f4 2d       call 02df4h          	;. . -
	ram:733f cd 45 2e       call 02e45h          	;. E .
	ram:7342 cd df 57       call l57dfh          	;. . W
	ram:7345 cd 47 1f       call 01f47h          	;. G .
	ram:7348 cd af 26       call 026afh          	;. . &
	ram:734b cd b4 57       call sub_57b4h       	;. . W
	ram:734e cd ea 2d       call 02deah          	;. . -
	ram:7351 cd 7d 26       call 0267dh          	;. } &
	ram:7354 cd 28 53       call l5328h          	;. ( S
	ram:7357 c3 89 7a       jp sub_7a89h         	;. . z
sub_735ah:
	ram:735a f5             push af              	;.
	ram:735b cd d6 23       call 023d6h          	;. . #
	ram:735e 28 04          jr z,l7364h          	;( .
	ram:7360 f1             pop af               	;.
	ram:7361 c3 be 56       jp sub_56beh         	;. . V
l7364h:
	ram:7364 f1             pop af               	;.
	ram:7365 fe a7          cp 0a7h              	;. .
	ram:7367 20 05          jr nz,l736eh         	;.
	ram:7369 cd 75 14       call 01475h          	;. u .
	ram:736c 18 0a          jr l7378h            	;. .
l736eh:
	ram:736e f5             push af              	;.
	ram:736f cd 65 16       call 01665h          	;. e .
	ram:7372 f1             pop af               	;.
	ram:7373 fe aa          cp 0aah              	;. .
	ram:7375 c4 95 20       call nz,02095h       	;. .  
l7378h:
	ram:7378 c3 63 1f       jp 01f63h            	;. c .
l737bh:
	ram:737b cd 7d 26       call 0267dh          	;. } &
l737eh:
	ram:737e cd e7 23       call 023e7h          	;. . #
	ram:7381 c2 14 0a       jp nz,00a14h         	;. . .
	ram:7384 cd 95 39       call 03995h          	;. . 9
	ram:7387 21 ff 00       ld hl,000ffh         	;! . .
	ram:738a b7             or a                 	;.
	ram:738b ed 52          sbc hl,de            	;. R
	ram:738d da 14 0a       jp c,00a14h          	;. . .
	ram:7390 7b             ld a,e               	;{
	ram:7391 f5             push af              	;.
	ram:7392 cd 60 20       call 02060h          	;. `  
	ram:7395 cd 14 56       call sub_5614h       	;. . V
	ram:7398 28 0d          jr z,l73a7h          	;( .
	ram:739a 7c             ld a,h               	;|
	ram:739b bd             cp l                 	;.
	ram:739c c2 34 0a       jp nz,00a34h         	;. 4 .
	ram:739f cd 5f 56       call sub_565fh       	;. _ V
	ram:73a2 cd 50 71       call sub_7150h       	;. P q
	ram:73a5 18 03          jr l73aah            	;. .
l73a7h:
	ram:73a7 cd 3b 2e       call 02e3bh          	;. ; .
l73aah:
	ram:73aa 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:73ad f1             pop af               	;.
	ram:73ae b7             or a                 	;.
	ram:73af 20 09          jr nz,l73bah         	;.
	ram:73b1 22 c1 80       ld (080c1h),hl       	;" . .
	ram:73b4 cd d0 6a       call sub_6ad0h       	;. . j
	ram:73b7 c3 f4 2d       jp 02df4h            	;. . -
l73bah:
	ram:73ba 57             ld d,a               	;W
	ram:73bb 06 08          ld b,008h            	;. .
l73bdh:
	ram:73bd 05             dec b                	;.
	ram:73be 17             rla                  	;.
	ram:73bf 30 fc          jr nc,l73bdh         	;0 .
	ram:73c1 c5             push bc              	;.
	ram:73c2 d5             push de              	;.
	ram:73c3 2a ca 80       ld hl,(080cah)       	;* . .
	ram:73c6 22 c6 80       ld (080c6h),hl       	;" . .
	ram:73c9 22 c8 80       ld (080c8h),hl       	;" . .
	ram:73cc 2a b9 80       ld hl,(080b9h)       	;* . .
	ram:73cf e5             push hl              	;.
	ram:73d0 cd 64 56       call sub_5664h       	;. d V
	ram:73d3 cd 75 55       call sub_5575h       	;. u U
	ram:73d6 01 00 01       ld bc,00100h         	;. . .
l73d9h:
	ram:73d9 e1             pop hl               	;.
	ram:73da f1             pop af               	;.
	ram:73db f5             push af              	;.
	ram:73dc a0             and b                	;.
	ram:73dd 20 0b          jr nz,l73eah         	;.
	ram:73df e5             push hl              	;.
	ram:73e0 c5             push bc              	;.
	ram:73e1 cd 34 74       call sub_7434h       	;. 4 t
	ram:73e4 c1             pop bc               	;.
	ram:73e5 0c             inc c                	;.
	ram:73e6 cb 20          sla b                	;.  
	ram:73e8 18 ef          jr l73d9h            	;. .
l73eah:
	ram:73ea c5             push bc              	;.
	ram:73eb e5             push hl              	;.
	ram:73ec cd 78 26       call 02678h          	;. x &
	ram:73ef f5             push af              	;.
	ram:73f0 cc fc 29       call z,029fch        	;. . )
	ram:73f3 f1             pop af               	;.
	ram:73f4 c4 09 2a       call nz,02a09h       	;. . *
	ram:73f7 ed 53 cc 80    ld (080cch),de       	;. S . .
	ram:73fb cd 54 71       call sub_7154h       	;. T q
	ram:73fe cd 3b 2e       call 02e3bh          	;. ; .
l7401h:
	ram:7401 e1             pop hl               	;.
	ram:7402 c1             pop bc               	;.
l7403h:
	ram:7403 d1             pop de               	;.
	ram:7404 f1             pop af               	;.
	ram:7405 b9             cp c                 	;.
	ram:7406 20 0c          jr nz,l7414h         	;.
	ram:7408 cd ef 2d       call 02defh          	;. . -
	ram:740b cd 24 2f       call 02f24h          	;. $ /
	ram:740e cd 61 2f       call 02f61h          	;. a /
	ram:7411 c3 d9 57       jp l57d9h            	;. . W
l7414h:
	ram:7414 f5             push af              	;.
	ram:7415 d5             push de              	;.
	ram:7416 c5             push bc              	;.
	ram:7417 e5             push hl              	;.
	ram:7418 cd 34 74       call sub_7434h       	;. 4 t
	ram:741b e1             pop hl               	;.
	ram:741c c1             pop bc               	;.
	ram:741d f1             pop af               	;.
	ram:741e f5             push af              	;.
	ram:741f 0c             inc c                	;.
	ram:7420 cb 20          sla b                	;.  
	ram:7422 a0             and b                	;.
	ram:7423 28 de          jr z,l7403h          	;( .
	ram:7425 c5             push bc              	;.
	ram:7426 e5             push hl              	;.
	ram:7427 ed 5b cc 80    ld de,(080cch)       	;. [ . .
	ram:742b ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:742f cd 37 74       call sub_7437h       	;. 7 t
	ram:7432 18 cd          jr l7401h            	;. .
sub_7434h:
	ram:7434 cd a3 26       call 026a3h          	;. . &
sub_7437h:
	ram:7437 cd 29 4e       call sub_4e29h       	;. ) N
	ram:743a cd cd 69       call sub_69cdh       	;. . i
	ram:743d 2a ca 80       ld hl,(080cah)       	;* . .
	ram:7440 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7444 22 c6 80       ld (080c6h),hl       	;" . .
	ram:7447 cd 54 71       call sub_7154h       	;. T q
	ram:744a 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:744d 22 c6 80       ld (080c6h),hl       	;" . .
	ram:7450 c9             ret                  	;.
sub_7451h:
	ram:7451 cd 07 69       call sub_6907h       	;. . i
l7454h:
	ram:7454 cd 3f 1f       call 01f3fh          	;. ? .
	ram:7457 cc 98 40       call z,sub_4098h     	;. . @
	ram:745a c3 73 25       jp 02573h            	;. s %
sub_745dh:
	ram:745d fd cb 07 76    bit 6,(iy+007h)      	;. . . v
	ram:7461 c2 51 0a       jp nz,00a51h         	;. Q .
	ram:7464 cd 38 75       call sub_7538h       	;. 8 u
	ram:7467 cd 8e 1f       call 01f8eh          	;. . .
	ram:746a 28 11          jr z,l747dh          	;( .
	ram:746c f5             push af              	;.
	ram:746d 3a 98 80       ld a,(08098h)        	;: . .
	ram:7470 e6 80          and 080h             	;. .
	ram:7472 20 06          jr nz,l747ah         	;.
	ram:7474 f1             pop af               	;.
	ram:7475 38 06          jr c,l747dh          	;8 .
l7477h:
	ram:7477 c3 18 0a       jp 00a18h            	;. . .
l747ah:
	ram:747a f1             pop af               	;.
	ram:747b 38 fa          jr c,l7477h          	;8 .
l747dh:
	ram:747d cd 63 38       call 03863h          	;. c 8
	ram:7480 21 00 00       ld hl,00000h         	;! . .
	ram:7483 cd d4 29       call 029d4h          	;. . )
	ram:7486 cd 3b 2e       call 02e3bh          	;. ; .
	ram:7489 cd 59 26       call 02659h          	;. Y &
	ram:748c cd 61 3a       call 03a61h          	;. a :
	ram:748f cd 2f 7e       call sub_7e2fh       	;. / ~
	ram:7492 fd cb 07 f6    set 6,(iy+007h)      	;. . . .
	ram:7496 21 5a 75       ld hl,l755ah         	;! Z u
	ram:7499 cd b5 0a       call 00ab5h          	;. . .
	ram:749c cd 93 21       call 02193h          	;. . !
	ram:749f cd 45 2e       call 02e45h          	;. E .
	ram:74a2 cd af 3a       call 03aafh          	;. . :
	ram:74a5 cd 11 39       call 03911h          	;. . 9
l74a8h:
	ram:74a8 cf             rst 8                	;.
	ram:74a9 cd 61 3a       call 03a61h          	;. a :
	ram:74ac d7             rst 10h              	;.
	ram:74ad 21 8d 80       ld hl,0808dh         	;! . .
	ram:74b0 cd 9d 20       call 0209dh          	;. .  
	ram:74b3 cd 69 38       call 03869h          	;. i 8
	ram:74b6 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:74b9 e5             push hl              	;.
	ram:74ba cd d3 3a       call 03ad3h          	;. . :
	ram:74bd e1             pop hl               	;.
	ram:74be 22 e7 8b       ld (08be7h),hl       	;" . .
	ram:74c1 cd 9c 26       call 0269ch          	;. . &
	ram:74c4 cd 59 26       call 02659h          	;. Y &
	ram:74c7 cd 22 26       call 02622h          	;. " &
	ram:74ca cd 9b 25       call 0259bh          	;. . %
	ram:74cd cd 85 20       call 02085h          	;. .  
	ram:74d0 cd b5 3a       call 03ab5h          	;. . :
	ram:74d3 d7             rst 10h              	;.
	ram:74d4 3e 04          ld a,004h            	;> .
	ram:74d6 cd ff 7c       call sub_7cffh       	;. . |
	ram:74d9 cd 32 62       call sub_6232h       	;. 2 b
	ram:74dc eb             ex de,hl             	;.
	ram:74dd 21 b9 80       ld hl,080b9h         	;! . .
	ram:74e0 cd 9d 20       call 0209dh          	;. .  
	ram:74e3 cd 11 39       call 03911h          	;. . 9
	ram:74e6 cd f3 38       call 038f3h          	;. . 8
	ram:74e9 cd 62 25       call 02562h          	;. b %
	ram:74ec f5             push af              	;.
	ram:74ed f7             rst 30h              	;.
	ram:74ee cd 75 38       call 03875h          	;. u 8
	ram:74f1 cd 05 39       call 03905h          	;. . 9
	ram:74f4 cd 8e 1f       call 01f8eh          	;. . .
	ram:74f7 ca 77 74       jp z,l7477h          	;. w t
	ram:74fa cd 11 39       call 03911h          	;. . 9
	ram:74fd cd f9 38       call 038f9h          	;. . 8
	ram:7500 cd 8e 1f       call 01f8eh          	;. . .
	ram:7503 28 2c          jr z,l7531h          	;( ,
	ram:7505 38 05          jr c,l750ch          	;8 .
	ram:7507 f1             pop af               	;.
	ram:7508 28 05          jr z,l750fh          	;( .
	ram:750a 18 26          jr l7532h            	;. &
l750ch:
	ram:750c f1             pop af               	;.
	ram:750d 28 23          jr z,l7532h          	;( #
l750fh:
	ram:750f cd db 0a       call 00adbh          	;. . .
	ram:7512 fd cb 07 b6    res 6,(iy+007h)      	;. . . .
	ram:7516 cd 61 3a       call 03a61h          	;. a :
	ram:7519 cd 8e 7e       call sub_7e8eh       	;. . ~
	ram:751c cd cd 3a       call 03acdh          	;. . :
	ram:751f cd 7b 38       call 0387bh          	;. { 8
	ram:7522 cd 69 38       call 03869h          	;. i 8
	ram:7525 cd 60 26       call 02660h          	;. ` &
	ram:7528 cd b5 3a       call 03ab5h          	;. . :
	ram:752b 11 46 00       ld de,00046h         	;. F .
	ram:752e c3 1b 2e       jp 02e1bh            	;. . .
l7531h:
	ram:7531 f1             pop af               	;.
l7532h:
	ram:7532 cd 11 39       call 03911h          	;. . 9
	ram:7535 c3 a8 74       jp l74a8h            	;. . t
sub_7538h:
	ram:7538 cd 22 26       call 02622h          	;. " &
	ram:753b cd d1 23       call 023d1h          	;. . #
	ram:753e ca 18 0a       jp z,00a18h          	;. . .
	ram:7541 cd 21 20       call 02021h          	;. !  
	ram:7544 cd cf 2d       call 02dcfh          	;. . -
	ram:7547 cd 22 26       call 02622h          	;. " &
	ram:754a cf             rst 8                	;.
	ram:754b cd cf 2d       call 02dcfh          	;. . -
	ram:754e cd 22 26       call 02622h          	;. " &
	ram:7551 cd 4a 2e       call 02e4ah          	;. J .
	ram:7554 cd 45 2e       call 02e45h          	;. E .
	ram:7557 c3 40 2e       jp 02e40h            	;. @ .
l755ah:
	ram:755a fd cb 07 b6    res 6,(iy+007h)      	;. . . .
	ram:755e cd d4 2e       call 02ed4h          	;. . .
	ram:7561 c3 2b 5f       jp l5f2bh            	;. + _
l7564h:
	ram:7564 3d             dec a                	;=
	ram:7565 f5             push af              	;.
	ram:7566 21 00 00       ld hl,00000h         	;! . .
	ram:7569 22 d4 8b       ld (08bd4h),hl       	;" . .
	ram:756c cd af 26       call 026afh          	;. . &
	ram:756f 23             inc hl               	;#
	ram:7570 cd d9 29       call 029d9h          	;. . )
	ram:7573 ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:7577 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:757a 5e             ld e,(hl)            	;^
	ram:757b 23             inc hl               	;#
	ram:757c 56             ld d,(hl)            	;V
	ram:757d 7a             ld a,d               	;z
	ram:757e b7             or a                 	;.
	ram:757f 20 06          jr nz,l7587h         	;.
	ram:7581 f1             pop af               	;.
	ram:7582 6f             ld l,a               	;o
	ram:7583 63             ld h,e               	;c
	ram:7584 bb             cp e                 	;.
	ram:7585 38 03          jr c,l758ah          	;8 .
l7587h:
	ram:7587 c2 65 0a       jp nz,00a65h         	;. e .
l758ah:
	ram:758a e5             push hl              	;.
	ram:758b eb             ex de,hl             	;.
	ram:758c 26 00          ld h,000h            	;& .
	ram:758e cd ef 39       call 039efh          	;. . 9
	ram:7591 cd 95 20       call 02095h          	;. .  
	ram:7594 21 01 00       ld hl,00001h         	;! . .
	ram:7597 cd 85 62       call sub_6285h       	;. . b
	ram:759a e1             pop hl               	;.
	ram:759b e5             push hl              	;.
	ram:759c cd fc 29       call 029fch          	;. . )
	ram:759f ed 53 cc 80    ld (080cch),de       	;. S . .
	ram:75a3 cd 3b 2e       call 02e3bh          	;. ; .
	ram:75a6 11 01 01       ld de,00101h         	;. . .
	ram:75a9 e1             pop hl               	;.
	ram:75aa e5             push hl              	;.
	ram:75ab 26 00          ld h,000h            	;& .
	ram:75ad 2d             dec l                	;-
l75aeh:
	ram:75ae e5             push hl              	;.
	ram:75af d5             push de              	;.
	ram:75b0 cd ef 39       call 039efh          	;. . 9
	ram:75b3 e1             pop hl               	;.
	ram:75b4 e5             push hl              	;.
	ram:75b5 6c             ld l,h               	;l
	ram:75b6 26 00          ld h,000h            	;& .
	ram:75b8 cd 4b 62       call sub_624bh       	;. K b
	ram:75bb cd 02 7a       call sub_7a02h       	;. . z
	ram:75be c1             pop bc               	;.
	ram:75bf c5             push bc              	;.
	ram:75c0 ed 5b cc 80    ld de,(080cch)       	;. [ . .
	ram:75c4 cd 49 69       call l6949h          	;. I i
	ram:75c7 d1             pop de               	;.
	ram:75c8 14             inc d                	;.
	ram:75c9 e1             pop hl               	;.
	ram:75ca c1             pop bc               	;.
	ram:75cb c5             push bc              	;.
	ram:75cc 78             ld a,b               	;x
	ram:75cd ba             cp d                 	;.
	ram:75ce 30 de          jr nc,l75aeh         	;0 .
	ram:75d0 1c             inc e                	;.
	ram:75d1 16 01          ld d,001h            	;. .
	ram:75d3 2d             dec l                	;-
	ram:75d4 20 d8          jr nz,l75aeh         	;.
	ram:75d6 cd 3e 21       call 0213eh          	;. > !
	ram:75d9 d5             push de              	;.
	ram:75da c1             pop bc               	;.
l75dbh:
	ram:75db c5             push bc              	;.
	ram:75dc ed 5b cc 80    ld de,(080cch)       	;. [ . .
	ram:75e0 cd 49 69       call l6949h          	;. I i
	ram:75e3 c1             pop bc               	;.
	ram:75e4 04             inc b                	;.
	ram:75e5 d1             pop de               	;.
	ram:75e6 d5             push de              	;.
	ram:75e7 7a             ld a,d               	;z
	ram:75e8 b8             cp b                 	;.
	ram:75e9 30 f0          jr nc,l75dbh         	;0 .
	ram:75eb c1             pop bc               	;.
	ram:75ec c5             push bc              	;.
	ram:75ed 78             ld a,b               	;x
	ram:75ee b9             cp c                 	;.
	ram:75ef 20 40          jr nz,l7631h         	;@
	ram:75f1 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:75f4 22 cc 80       ld (080cch),hl       	;" . .
	ram:75f7 cd f4 2d       call 02df4h          	;. . -
	ram:75fa cd bf 57       call l57bfh          	;. . W
l75fdh:
	ram:75fd cd 4a 2e       call 02e4ah          	;. J .
	ram:7600 e1             pop hl               	;.
	ram:7601 6c             ld l,h               	;l
	ram:7602 cd 7d 56       call sub_567dh       	;. } V
	ram:7605 2a cc 80       ld hl,(080cch)       	;* . .
	ram:7608 22 c6 80       ld (080c6h),hl       	;" . .
	ram:760b cd 3e 71       call sub_713eh       	;. > q
	ram:760e cd f4 2d       call 02df4h          	;. . -
	ram:7611 cd ea 2d       call 02deah          	;. . -
	ram:7614 cd 3c 53       call l533ch          	;. < S
	ram:7617 d7             rst 10h              	;.
	ram:7618 3e 04          ld a,004h            	;> .
	ram:761a 77             ld (hl),a            	;w
	ram:761b 32 82 80       ld (08082h),a        	;2 . .
	ram:761e eb             ex de,hl             	;.
	ram:761f 23             inc hl               	;#
	ram:7620 7e             ld a,(hl)            	;~
	ram:7621 36 00          ld (hl),000h         	;6 .
	ram:7623 2b             dec hl               	;+
	ram:7624 77             ld (hl),a            	;w
	ram:7625 cd 4a 2e       call 02e4ah          	;. J .
	ram:7628 cd 12 26       call 02612h          	;. . &
	ram:762b cd af 3a       call 03aafh          	;. . :
	ram:762e c3 30 79       jp l7930h            	;. 0 y
l7631h:
	ram:7631 ed 5b cc 80    ld de,(080cch)       	;. [ . .
	ram:7635 cd 40 56       call sub_5640h       	;. @ V
	ram:7638 7c             ld a,h               	;|
	ram:7639 65             ld h,l               	;e
	ram:763a 6f             ld l,a               	;o
	ram:763b 22 c1 80       ld (080c1h),hl       	;" . .
	ram:763e cd 5f 56       call sub_565fh       	;. _ V
	ram:7641 cd 7b 6b       call sub_6b7bh       	;. { k
	ram:7644 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:7647 22 cc 80       ld (080cch),hl       	;" . .
	ram:764a 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:764d 22 c8 80       ld (080c8h),hl       	;" . .
	ram:7650 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:7654 cd 40 56       call sub_5640h       	;. @ V
	ram:7657 e1             pop hl               	;.
	ram:7658 e5             push hl              	;.
	ram:7659 22 bd 80       ld (080bdh),hl       	;" . .
	ram:765c 65             ld h,l               	;e
	ram:765d 22 c1 80       ld (080c1h),hl       	;" . .
	ram:7660 cd 5f 56       call sub_565fh       	;. _ V
	ram:7663 cd cd 69       call sub_69cdh       	;. . i
	ram:7666 cd ef 2d       call 02defh          	;. . -
	ram:7669 cd ea 2d       call 02deah          	;. . -
	ram:766c cd f4 2d       call 02df4h          	;. . -
	ram:766f cd 60 26       call 02660h          	;. ` &
	ram:7672 cd 40 2e       call 02e40h          	;. @ .
	ram:7675 cd 95 20       call 02095h          	;. .  
	ram:7678 cd bf 57       call l57bfh          	;. . W
	ram:767b cd 21 20       call 02021h          	;. !  
	ram:767e cd f4 2d       call 02df4h          	;. . -
	ram:7681 cd 28 53       call l5328h          	;. ( S
	ram:7684 c3 fd 75       jp l75fdh            	;. . u
l7687h:
	ram:7687 cd b3 39       call 039b3h          	;. . 9
	ram:768a c3 8a 0a       jp 00a8ah            	;. . .
l768dh:
	ram:768d cd 4a 2e       call 02e4ah          	;. J .
	ram:7690 cd 36 2f       call 02f36h          	;. 6 /
	ram:7693 3a 98 80       ld a,(08098h)        	;: . .
	ram:7696 e6 1f          and 01fh             	;. .
	ram:7698 fe 04          cp 004h              	;. .
	ram:769a 20 23          jr nz,l76bfh         	;#
	ram:769c cd f0 55       call sub_55f0h       	;. . U
	ram:769f c2 30 0a       jp nz,00a30h         	;. 0 .
	ram:76a2 18 39          jr l76ddh            	;. 9
	ram:76a4 fd cb 09 ae    res 5,(iy+009h)      	;. . . .
	ram:76a8 18 06          jr l76b0h            	;. .
	ram:76aa fd cb 09 ee    set 5,(iy+009h)      	;. . . .
	ram:76ae 06 00          ld b,000h            	;. .
l76b0h:
	ram:76b0 32 a3 80       ld (080a3h),a        	;2 . .
	ram:76b3 c5             push bc              	;.
	ram:76b4 21 d4 8b       ld hl,08bd4h         	;! . .
	ram:76b7 36 00          ld (hl),000h         	;6 .
	ram:76b9 47             ld b,a               	;G
	ram:76ba cd 47 1f       call 01f47h          	;. G .
	ram:76bd fe 04          cp 004h              	;. .
l76bfh:
	ram:76bf c2 28 0a       jp nz,00a28h         	;. ( .
	ram:76c2 78             ld a,b               	;x
	ram:76c3 fe 02          cp 002h              	;. .
	ram:76c5 28 c6          jr z,l768dh          	;( .
	ram:76c7 38 03          jr c,l76cch          	;8 .
l76c9h:
	ram:76c9 c3 2c 0a       jp 00a2ch            	;. , .
l76cch:
	ram:76cc cd aa 26       call 026aah          	;. . &
	ram:76cf 28 f8          jr z,l76c9h          	;( .
	ram:76d1 cd 4a 2e       call 02e4ah          	;. J .
	ram:76d4 21 00 00       ld hl,00000h         	;! . .
	ram:76d7 22 c8 80       ld (080c8h),hl       	;" . .
	ram:76da cd 3d 56       call sub_563dh       	;. = V
l76ddh:
	ram:76dd f1             pop af               	;.
	ram:76de 32 de 80       ld (080deh),a        	;2 . .
	ram:76e1 21 87 76       ld hl,l7687h         	;! . v
	ram:76e4 cd b5 0a       call 00ab5h          	;. . .
	ram:76e7 3a a3 80       ld a,(080a3h)        	;: . .
	ram:76ea f5             push af              	;.
	ram:76eb cd 72 77       call sub_7772h       	;. r w
	ram:76ee 3e 33          ld a,033h            	;> 3
	ram:76f0 cd 6a 77       call sub_776ah       	;. j w
	ram:76f3 d5             push de              	;.
	ram:76f4 3e 34          ld a,034h            	;> 4
	ram:76f6 cd 6a 77       call sub_776ah       	;. j w
	ram:76f9 e1             pop hl               	;.
	ram:76fa 19             add hl,de            	;.
	ram:76fb e5             push hl              	;.
	ram:76fc cd 24 2f       call 02f24h          	;. $ /
	ram:76ff cd 6d 77       call sub_776dh       	;. m w
	ram:7702 eb             ex de,hl             	;.
	ram:7703 29             add hl,hl            	;)
	ram:7704 d1             pop de               	;.
	ram:7705 b7             or a                 	;.
	ram:7706 ed 52          sbc hl,de            	;. R
	ram:7708 38 05          jr c,l770fh          	;8 .
	ram:770a 28 03          jr z,l770fh          	;( .
	ram:770c cd b8 2f       call 02fb8h          	;. . /
l770fh:
	ram:770f f1             pop af               	;.
	ram:7710 fe 01          cp 001h              	;. .
	ram:7712 28 22          jr z,l7736h          	;( "
	ram:7714 cf             rst 8                	;.
	ram:7715 cd f1 3d       call 03df1h          	;. . =
	ram:7718 28 0c          jr z,l7726h          	;( .
	ram:771a fd cb 09 b6    res 6,(iy+009h)      	;. . . .
	ram:771e cd af 3a       call 03aafh          	;. . :
	ram:7721 cd 30 79       call l7930h          	;. 0 y
	ram:7724 18 03          jr l7729h            	;. .
l7726h:
	ram:7726 cd 0c 2e       call 02e0ch          	;. . .
l7729h:
	ram:7729 cd 57 77       call sub_7757h       	;. W w
l772ch:
	ram:772c cd db 0a       call 00adbh          	;. . .
	ram:772f cd df 57       call l57dfh          	;. . W
	ram:7732 cd 45 38       call 03845h          	;. E 8
	ram:7735 c9             ret                  	;.
l7736h:
	ram:7736 cd 9b 79       call sub_799bh       	;. . y
	ram:7739 cd 95 39       call 03995h          	;. . 9
	ram:773c d5             push de              	;.
	ram:773d cd 57 77       call sub_7757h       	;. W w
	ram:7740 cd e7 3b       call 03be7h          	;. . ;
	ram:7743 d7             rst 10h              	;.
	ram:7744 cd 0b 2c       call 02c0bh          	;. . ,
	ram:7747 e1             pop hl               	;.
	ram:7748 e5             push hl              	;.
	ram:7749 cd d9 29       call 029d9h          	;. . )
	ram:774c 13             inc de               	;.
	ram:774d 13             inc de               	;.
	ram:774e cd 3e 21       call 0213eh          	;. > !
	ram:7751 e1             pop hl               	;.
	ram:7752 cd da 1f       call 01fdah          	;. . .
	ram:7755 18 d5          jr l772ch            	;. .
sub_7757h:
	ram:7757 cd 1f 2f       call 02f1fh          	;. . /
	ram:775a cd f7 3d       call 03df7h          	;. . =
	ram:775d ca 0c 2e       jp z,02e0ch          	;. . .
	ram:7760 fd cb 09 b6    res 6,(iy+009h)      	;. . . .
	ram:7764 cd af 3a       call 03aafh          	;. . :
	ram:7767 c3 30 79       jp l7930h            	;. 0 y
sub_776ah:
	ram:776a cd 4b 38       call 0384bh          	;. K 8
sub_776dh:
	ram:776d d7             rst 10h              	;.
	ram:776e eb             ex de,hl             	;.
	ram:776f c3 3f 2d       jp 02d3fh            	;. ? -
sub_7772h:
	ram:7772 cd b3 39       call 039b3h          	;. . 9
	ram:7775 cd 0d 26       call 0260dh          	;. . &
	ram:7778 3a de 80       ld a,(080deh)        	;: . .
	ram:777b fe 04          cp 004h              	;. .
	ram:777d d2 64 75       jp nc,l7564h         	;. d u
	ram:7780 21 06 00       ld hl,00006h         	;! . .
	ram:7783 cd aa 26       call 026aah          	;. . &
	ram:7786 20 03          jr nz,l778bh         	;.
	ram:7788 21 0f 00       ld hl,0000fh         	;! . .
l778bh:
	ram:778b cd d9 29       call 029d9h          	;. . )
	ram:778e ed 53 ca 80    ld (080cah),de       	;. S . .
	ram:7792 cd 98 21       call 02198h          	;. . !
	ram:7795 cd 4a 2e       call 02e4ah          	;. J .
	ram:7798 2e 06          ld l,006h            	;. .
	ram:779a cd aa 26       call 026aah          	;. . &
	ram:779d 20 02          jr nz,l77a1h         	;.
	ram:779f 2e 0a          ld l,00ah            	;. .
l77a1h:
	ram:77a1 26 00          ld h,000h            	;& .
	ram:77a3 22 c1 80       ld (080c1h),hl       	;" . .
l77a6h:
	ram:77a6 cd 82 62       call sub_6282h       	;. . b
	ram:77a9 21 c1 80       ld hl,080c1h         	;! . .
	ram:77ac 35             dec (hl)             	;5
	ram:77ad 20 f7          jr nz,l77a6h         	;.
	ram:77af 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:77b2 5e             ld e,(hl)            	;^
	ram:77b3 23             inc hl               	;#
	ram:77b4 56             ld d,(hl)            	;V
l77b5h:
	ram:77b5 cd a3 26       call 026a3h          	;. . &
	ram:77b8 d5             push de              	;.
	ram:77b9 eb             ex de,hl             	;.
	ram:77ba 3a c9 80       ld a,(080c9h)        	;: . .
	ram:77bd b7             or a                 	;.
	ram:77be 20 05          jr nz,l77c5h         	;.
	ram:77c0 cd 3e 21       call 0213eh          	;. > !
	ram:77c3 18 13          jr l77d8h            	;. .
l77c5h:
	ram:77c5 cd 6d 62       call sub_626dh       	;. m b
	ram:77c8 06 01          ld b,001h            	;. .
	ram:77ca cd 08 7a       call sub_7a08h       	;. . z
	ram:77cd cd aa 26       call 026aah          	;. . &
	ram:77d0 28 06          jr z,l77d8h          	;( .
	ram:77d2 cd e7 23       call 023e7h          	;. . #
	ram:77d5 c2 65 0a       jp nz,00a65h         	;. e .
l77d8h:
	ram:77d8 cd 6b 2f       call 02f6bh          	;. k /
	ram:77db e1             pop hl               	;.
	ram:77dc e5             push hl              	;.
	ram:77dd cd 4b 62       call sub_624bh       	;. K b
	ram:77e0 06 02          ld b,002h            	;. .
	ram:77e2 cd 08 7a       call sub_7a08h       	;. . z
	ram:77e5 21 03 00       ld hl,00003h         	;! . .
	ram:77e8 cd 5d 79       call sub_795dh       	;. ] y
	ram:77eb cd 1f 2f       call 02f1fh          	;. . /
	ram:77ee cd aa 26       call 026aah          	;. . &
	ram:77f1 20 17          jr nz,l780ah         	;.
	ram:77f3 cd 56 20       call 02056h          	;. V  
	ram:77f6 ef             rst 28h              	;.
	ram:77f7 cf             rst 8                	;.
	ram:77f8 21 0a 00       ld hl,0000ah         	;! . .
	ram:77fb cd 76 79       call sub_7976h       	;. v y
	ram:77fe cd 24 2f       call 02f24h          	;. $ /
	ram:7801 21 08 00       ld hl,00008h         	;! . .
	ram:7804 cd 5d 79       call sub_795dh       	;. ] y
	ram:7807 cd 66 21       call 02166h          	;. f !
l780ah:
	ram:780a cd 9b 79       call sub_799bh       	;. . y
	ram:780d f7             rst 30h              	;.
	ram:780e 21 01 00       ld hl,00001h         	;! . .
	ram:7811 cd 85 62       call sub_6285h       	;. . b
	ram:7814 d1             pop de               	;.
	ram:7815 1b             dec de               	;.
	ram:7816 7a             ld a,d               	;z
	ram:7817 b3             or e                 	;.
	ram:7818 20 9b          jr nz,l77b5h         	;.
	ram:781a cd 0c 2e       call 02e0ch          	;. . .
	ram:781d 21 04 00       ld hl,00004h         	;! . .
	ram:7820 cd 42 62       call sub_6242h       	;. B b
	ram:7823 cf             rst 8                	;.
	ram:7824 cd 9b 79       call sub_799bh       	;. . y
	ram:7827 cd d1 23       call 023d1h          	;. . #
	ram:782a ca 65 0a       jp z,00a65h          	;. e .
	ram:782d ef             rst 28h              	;.
	ram:782e cd 8d 20       call 0208dh          	;. .  
	ram:7831 cd 9b 79       call sub_799bh       	;. . y
	ram:7834 cf             rst 8                	;.
	ram:7835 cd 91 79       call sub_7991h       	;. . y
	ram:7838 cd 23 10       call 01023h          	;. # .
	ram:783b 21 02 00       ld hl,00002h         	;! . .
	ram:783e cd 85 62       call sub_6285h       	;. . b
	ram:7841 cd 91 79       call sub_7991h       	;. . y
	ram:7844 cd 5a 0e       call 00e5ah          	;. Z .
	ram:7847 cd 29 20       call 02029h          	;. )  
	ram:784a cd 61 0d       call 00d61h          	;. a .
	ram:784d cd f5 1f       call 01ff5h          	;. . .
	ram:7850 11 05 00       ld de,00005h         	;. . .
	ram:7853 cd 39 79       call sub_7939h       	;. 9 y
	ram:7856 11 06 00       ld de,00006h         	;. . .
	ram:7859 cd 35 79       call sub_7935h       	;. 5 y
	ram:785c cd aa 26       call 026aah          	;. . &
	ram:785f c2 30 79       jp nz,l7930h         	;. 0 y
	ram:7862 21 09 00       ld hl,00009h         	;! . .
	ram:7865 cd a1 79       call sub_79a1h       	;. . y
	ram:7868 cd 8d 20       call 0208dh          	;. .  
	ram:786b cd 9b 79       call sub_799bh       	;. . y
	ram:786e cf             rst 8                	;.
	ram:786f cd 96 79       call sub_7996h       	;. . y
	ram:7872 cd 23 10       call 01023h          	;. # .
	ram:7875 21 07 00       ld hl,00007h         	;! . .
	ram:7878 cd 85 62       call sub_6285h       	;. . b
	ram:787b cd 96 79       call sub_7996h       	;. . y
	ram:787e cd 5a 0e       call 00e5ah          	;. Z .
	ram:7881 cd 29 20       call 02029h          	;. )  
	ram:7884 cd 61 0d       call 00d61h          	;. a .
	ram:7887 11 0b 00       ld de,0000bh         	;. . .
	ram:788a cd 39 79       call sub_7939h       	;. 9 y
	ram:788d 11 0c 00       ld de,0000ch         	;. . .
	ram:7890 cd 35 79       call sub_7935h       	;. 5 y
	ram:7893 21 0a 00       ld hl,0000ah         	;! . .
	ram:7896 cd a1 79       call sub_79a1h       	;. . y
	ram:7899 cd 85 20       call 02085h          	;. .  
	ram:789c cd 96 79       call sub_7996h       	;. . y
	ram:789f cf             rst 8                	;.
	ram:78a0 cd 91 79       call sub_7991h       	;. . y
	ram:78a3 ef             rst 28h              	;.
	ram:78a4 cd 49 20       call 02049h          	;. I  
	ram:78a7 cd 61 0d       call 00d61h          	;. a .
	ram:78aa cd 85 20       call 02085h          	;. .  
	ram:78ad cd 5b 20       call 0205bh          	;. [  
	ram:78b0 cd f7 10       call 010f7h          	;. . .
	ram:78b3 cd 8d 20       call 0208dh          	;. .  
	ram:78b6 cd 56 20       call 02056h          	;. V  
	ram:78b9 cd f7 10       call 010f7h          	;. . .
	ram:78bc cd 29 20       call 02029h          	;. )  
	ram:78bf ef             rst 28h              	;.
	ram:78c0 cd 49 20       call 02049h          	;. I  
	ram:78c3 cd 75 20       call 02075h          	;. u  
	ram:78c6 cd ba 23       call 023bah          	;. . #
	ram:78c9 cd d1 23       call 023d1h          	;. . #
	ram:78cc c4 23 10       call nz,01023h       	;. # .
	ram:78cf cd 21 20       call 02021h          	;. !  
	ram:78d2 cd 66 21       call 02166h          	;. f !
	ram:78d5 cd 88 1f       call 01f88h          	;. . .
	ram:78d8 f5             push af              	;.
	ram:78d9 d4 3e 21       call nc,0213eh       	;. > !
	ram:78dc f1             pop af               	;.
	ram:78dd dc 60 20       call c,02060h        	;. `  
	ram:78e0 3a 98 80       ld a,(08098h)        	;: . .
	ram:78e3 32 82 80       ld (08082h),a        	;2 . .
	ram:78e6 21 0d 00       ld hl,0000dh         	;! . .
	ram:78e9 cd 85 62       call sub_6285h       	;. . b
	ram:78ec cd 5b 20       call 0205bh          	;. [  
	ram:78ef cd 07 20       call 02007h          	;. .  
	ram:78f2 cd 23 10       call 01023h          	;. # .
	ram:78f5 21 0f 00       ld hl,0000fh         	;! . .
	ram:78f8 cd 85 62       call sub_6285h       	;. . b
	ram:78fb cf             rst 8                	;.
	ram:78fc cd 91 79       call sub_7991h       	;. . y
	ram:78ff ef             rst 28h              	;.
	ram:7900 cf             rst 8                	;.
	ram:7901 cd 96 79       call sub_7996h       	;. . y
	ram:7904 cd 71 0d       call 00d71h          	;. q .
	ram:7907 cd aa 79       call sub_79aah       	;. . y
	ram:790a cd 23 10       call 01023h          	;. # .
	ram:790d 3a de 80       ld a,(080deh)        	;: . .
	ram:7910 e6 01          and 001h             	;. .
	ram:7912 c4 75 14       call nz,01475h       	;. u .
	ram:7915 21 0e 00       ld hl,0000eh         	;! . .
	ram:7918 cd 85 62       call sub_6285h       	;. . b
	ram:791b 3a de 80       ld a,(080deh)        	;: . .
	ram:791e 3d             dec a                	;=
	ram:791f 20 0f          jr nz,l7930h         	;.
	ram:7921 21 0f 00       ld hl,0000fh         	;! . .
	ram:7924 cd 42 62       call sub_6242h       	;. B b
	ram:7927 cd 75 14       call 01475h          	;. u .
	ram:792a 21 0f 00       ld hl,0000fh         	;! . .
	ram:792d cd 85 62       call sub_6285h       	;. . b
l7930h:
	ram:7930 fd cb 09 f6    set 6,(iy+009h)      	;. . . .
	ram:7934 c9             ret                  	;.
sub_7935h:
	ram:7935 d5             push de              	;.
	ram:7936 af             xor a                	;.
	ram:7937 18 05          jr l793eh            	;. .
sub_7939h:
	ram:7939 d5             push de              	;.
	ram:793a cd 8d 20       call 0208dh          	;. .  
	ram:793d 37             scf                  	;7
l793eh:
	ram:793e f5             push af              	;.
	ram:793f cd 9b 79       call sub_799bh       	;. . y
	ram:7942 cd 5a 0e       call 00e5ah          	;. Z .
	ram:7945 f1             pop af               	;.
	ram:7946 dc 71 0d       call c,00d71h        	;. q .
	ram:7949 cf             rst 8                	;.
	ram:794a cd d1 23       call 023d1h          	;. . #
	ram:794d ca 65 0a       jp z,00a65h          	;. e .
	ram:7950 cd 5b 20       call 0205bh          	;. [  
	ram:7953 cd 23 10       call 01023h          	;. # .
	ram:7956 cd f7 10       call 010f7h          	;. . .
	ram:7959 e1             pop hl               	;.
	ram:795a c3 85 62       jp sub_6285h         	;. . b
sub_795dh:
	ram:795d e5             push hl              	;.
	ram:795e cd f5 1f       call 01ff5h          	;. . .
	ram:7961 37             scf                  	;7
	ram:7962 e1             pop hl               	;.
	ram:7963 cd 68 79       call sub_7968h       	;. h y
	ram:7966 23             inc hl               	;#
	ram:7967 b7             or a                 	;.
sub_7968h:
	ram:7968 e5             push hl              	;.
	ram:7969 f5             push af              	;.
	ram:796a cd 56 20       call 02056h          	;. V  
	ram:796d f1             pop af               	;.
	ram:796e d4 5a 0e       call nc,00e5ah       	;. Z .
	ram:7971 cd 88 79       call sub_7988h       	;. . y
	ram:7974 cf             rst 8                	;.
	ram:7975 e1             pop hl               	;.
sub_7976h:
	ram:7976 e5             push hl              	;.
	ram:7977 ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:797b cd 4f 62       call l624fh          	;. O b
	ram:797e d1             pop de               	;.
	ram:797f d5             push de              	;.
	ram:7980 f7             rst 30h              	;.
	ram:7981 e1             pop hl               	;.
	ram:7982 e5             push hl              	;.
	ram:7983 cd 85 62       call sub_6285h       	;. . b
	ram:7986 e1             pop hl               	;.
	ram:7987 c9             ret                  	;.
sub_7988h:
	ram:7988 cd aa 26       call 026aah          	;. . &
	ram:798b c8             ret z                	;.
	ram:798c cd 1f 2f       call 02f1fh          	;. . /
	ram:798f ef             rst 28h              	;.
	ram:7990 c9             ret                  	;.
sub_7991h:
	ram:7991 21 03 00       ld hl,00003h         	;! . .
	ram:7994 18 08          jr l799eh            	;. .
sub_7996h:
	ram:7996 21 08 00       ld hl,00008h         	;! . .
	ram:7999 18 03          jr l799eh            	;. .
sub_799bh:
	ram:799b 21 01 00       ld hl,00001h         	;! . .
l799eh:
	ram:799e c3 42 62       jp sub_6242h         	;. B b
sub_79a1h:
	ram:79a1 cd 42 62       call sub_6242h       	;. B b
	ram:79a4 cf             rst 8                	;.
	ram:79a5 cd 9b 79       call sub_799bh       	;. . y
	ram:79a8 ef             rst 28h              	;.
	ram:79a9 c9             ret                  	;.
sub_79aah:
	ram:79aa 21 01 00       ld hl,00001h         	;! . .
	ram:79ad ed 5b ca 80    ld de,(080cah)       	;. [ . .
	ram:79b1 c3 62 62       jp l6262h            	;. b b
sub_79b4h:
	ram:79b4 cd 78 7a       call sub_7a78h       	;. x z
	ram:79b7 18 15          jr l79ceh            	;. .
sub_79b9h:
	ram:79b9 cd 50 7a       call sub_7a50h       	;. P z
	ram:79bc fe 04          cp 004h              	;. .
	ram:79be d2 65 0a       jp nc,00a65h         	;. e .
	ram:79c1 fe 01          cp 001h              	;. .
	ram:79c3 30 0c          jr nc,l79d1h         	;0 .
sub_79c5h:
	ram:79c5 cd 78 7a       call sub_7a78h       	;. x z
	ram:79c8 cd 71 0d       call 00d71h          	;. q .
	ram:79cb cd 7e 7a       call sub_7a7eh       	;. ~ z
l79ceh:
	ram:79ce c3 23 10       jp 01023h            	;. # .
l79d1h:
	ram:79d1 20 15          jr nz,l79e8h         	;.
	ram:79d3 cd b4 79       call sub_79b4h       	;. . y
	ram:79d6 cd 0d 7a       call sub_7a0dh       	;. . z
	ram:79d9 cd 85 20       call 02085h          	;. .  
	ram:79dc cd 83 7a       call sub_7a83h       	;. . z
	ram:79df cd 0d 7a       call sub_7a0dh       	;. . z
	ram:79e2 cf             rst 8                	;.
	ram:79e3 cd 51 20       call 02051h          	;. Q  
	ram:79e6 18 e6          jr l79ceh            	;. .
l79e8h:
	ram:79e8 fe 02          cp 002h              	;. .
	ram:79ea 20 06          jr nz,l79f2h         	;.
	ram:79ec cd c5 79       call sub_79c5h       	;. . y
	ram:79ef c3 75 14       jp 01475h            	;. u .
l79f2h:
	ram:79f2 cd b4 79       call sub_79b4h       	;. . y
	ram:79f5 cd f5 1f       call 01ff5h          	;. . .
	ram:79f8 cd 83 7a       call sub_7a83h       	;. . z
	ram:79fb cd 1f 10       call 0101fh          	;. . .
	ram:79fe cf             rst 8                	;.
	ram:79ff cd 56 20       call 02056h          	;. V  
sub_7a02h:
	ram:7a02 cd b8 15       call 015b8h          	;. . .
l7a05h:
	ram:7a05 c3 22 26       jp 02622h            	;. " &
sub_7a08h:
	ram:7a08 3a de 80       ld a,(080deh)        	;: . .
	ram:7a0b a0             and b                	;.
	ram:7a0c c8             ret z                	;.
sub_7a0dh:
	ram:7a0d cd 6e 12       call 0126eh          	;. n .
	ram:7a10 18 f3          jr l7a05h            	;. .
sub_7a12h:
	ram:7a12 cd 50 7a       call sub_7a50h       	;. P z
	ram:7a15 fe 01          cp 001h              	;. .
	ram:7a17 30 09          jr nc,l7a22h         	;0 .
l7a19h:
	ram:7a19 cd 7e 7a       call sub_7a7eh       	;. ~ z
	ram:7a1c ef             rst 28h              	;.
	ram:7a1d cd 78 7a       call sub_7a78h       	;. x z
	ram:7a20 f7             rst 30h              	;.
	ram:7a21 c9             ret                  	;.
l7a22h:
	ram:7a22 20 0c          jr nz,l7a30h         	;.
	ram:7a24 cf             rst 8                	;.
	ram:7a25 cd 83 7a       call sub_7a83h       	;. . z
l7a28h:
	ram:7a28 cd 02 7a       call sub_7a02h       	;. . z
	ram:7a2b cd 78 7a       call sub_7a78h       	;. x z
	ram:7a2e ef             rst 28h              	;.
	ram:7a2f c9             ret                  	;.
l7a30h:
	ram:7a30 fe 03          cp 003h              	;. .
	ram:7a32 30 05          jr nc,l7a39h         	;0 .
	ram:7a34 cd 0d 7a       call sub_7a0dh       	;. . z
	ram:7a37 18 e0          jr l7a19h            	;. .
l7a39h:
	ram:7a39 20 05          jr nz,l7a40h         	;.
	ram:7a3b cd 7e 7a       call sub_7a7eh       	;. ~ z
	ram:7a3e 18 e8          jr l7a28h            	;. .
l7a40h:
	ram:7a40 cd af 26       call 026afh          	;. . &
	ram:7a43 cd 4a 2e       call 02e4ah          	;. J .
	ram:7a46 cd 12 26       call 02612h          	;. . &
	ram:7a49 cd 3d 56       call sub_563dh       	;. = V
	ram:7a4c cd b9 39       call 039b9h          	;. . 9
	ram:7a4f c9             ret                  	;.
sub_7a50h:
	ram:7a50 fd cb 09 76    bit 6,(iy+009h)      	;. . . v
	ram:7a54 ca 65 0a       jp z,00a65h          	;. e .
	ram:7a57 cd aa 26       call 026aah          	;. . &
	ram:7a5a c2 65 0a       jp nz,00a65h         	;. e .
	ram:7a5d cf             rst 8                	;.
	ram:7a5e cd 0d 26       call 0260dh          	;. . &
	ram:7a61 d7             rst 10h              	;.
	ram:7a62 ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:7a66 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:7a6a 28 02          jr z,l7a6eh          	;( .
	ram:7a6c cb f6          set 6,(hl)           	;. .
l7a6eh:
	ram:7a6e cd 95 20       call 02095h          	;. .  
	ram:7a71 cd 22 26       call 02622h          	;. " &
	ram:7a74 3a de 80       ld a,(080deh)        	;: . .
	ram:7a77 c9             ret                  	;.
sub_7a78h:
	ram:7a78 21 0e 00       ld hl,0000eh         	;! . .
l7a7bh:
	ram:7a7b c3 5e 62       jp l625eh            	;. ^ b
sub_7a7eh:
	ram:7a7e 21 0f 00       ld hl,0000fh         	;! . .
	ram:7a81 18 f8          jr l7a7bh            	;. .
sub_7a83h:
	ram:7a83 21 0f 00       ld hl,0000fh         	;! . .
	ram:7a86 c3 4b 62       jp sub_624bh         	;. K b
sub_7a89h:
	ram:7a89 d7             rst 10h              	;.
	ram:7a8a e5             push hl              	;.
	ram:7a8b eb             ex de,hl             	;.
	ram:7a8c 5e             ld e,(hl)            	;^
	ram:7a8d 23             inc hl               	;#
	ram:7a8e 56             ld d,(hl)            	;V
	ram:7a8f 23             inc hl               	;#
	ram:7a90 e5             push hl              	;.
	ram:7a91 eb             ex de,hl             	;.
	ram:7a92 3a 82 80       ld a,(08082h)        	;: . .
	ram:7a95 e6 1e          and 01eh             	;. .
	ram:7a97 fe 04          cp 004h              	;. .
	ram:7a99 c4 01 26       call nz,02601h       	;. . &
	ram:7a9c 7c             ld a,h               	;|
	ram:7a9d b5             or l                 	;.
	ram:7a9e 20 03          jr nz,l7aa3h         	;.
	ram:7aa0 e1             pop hl               	;.
	ram:7aa1 18 1f          jr l7ac2h            	;. .
l7aa3h:
	ram:7aa3 cd 33 1f       call 01f33h          	;. 3 .
	ram:7aa6 d1             pop de               	;.
	ram:7aa7 e5             push hl              	;.
	ram:7aa8 62             ld h,d               	;b
	ram:7aa9 6b             ld l,e               	;k
	ram:7aaa c5             push bc              	;.
l7aabh:
	ram:7aab cb 86          res 0,(hl)           	;. .
	ram:7aad cd 9d 20       call 0209dh          	;. .  
	ram:7ab0 c1             pop bc               	;.
	ram:7ab1 0b             dec bc               	;.
	ram:7ab2 78             ld a,b               	;x
	ram:7ab3 b1             or c                 	;.
	ram:7ab4 28 07          jr z,l7abdh          	;( .
	ram:7ab6 c5             push bc              	;.
	ram:7ab7 01 0a 00       ld bc,0000ah         	;. . .
	ram:7aba 09             add hl,bc            	;.
	ram:7abb 18 ee          jr l7aabh            	;. .
l7abdh:
	ram:7abd eb             ex de,hl             	;.
	ram:7abe d1             pop de               	;.
	ram:7abf cd 46 2c       call 02c46h          	;. F ,
l7ac2h:
	ram:7ac2 e1             pop hl               	;.
	ram:7ac3 cb 86          res 0,(hl)           	;. .
	ram:7ac5 21 82 80       ld hl,08082h         	;! . .
	ram:7ac8 cb 86          res 0,(hl)           	;. .
	ram:7aca c9             ret                  	;.
	ram:7acb e5             push hl              	;.
	ram:7acc cd 01 26       call 02601h          	;. . &
	ram:7acf e5             push hl              	;.
	ram:7ad0 d7             rst 10h              	;.
	ram:7ad1 cd af 26       call 026afh          	;. . &
	ram:7ad4 e6 01          and 001h             	;. .
	ram:7ad6 28 03          jr z,l7adbh          	;( .
	ram:7ad8 cd 7d 26       call 0267dh          	;. } &
l7adbh:
	ram:7adb ed 53 c6 80    ld (080c6h),de       	;. S . .
	ram:7adf eb             ex de,hl             	;.
	ram:7ae0 5e             ld e,(hl)            	;^
	ram:7ae1 23             inc hl               	;#
	ram:7ae2 56             ld d,(hl)            	;V
	ram:7ae3 ed 53 98 80    ld (08098h),de       	;. S . .
	ram:7ae7 eb             ex de,hl             	;.
	ram:7ae8 cd 01 26       call 02601h          	;. . &
	ram:7aeb d1             pop de               	;.
	ram:7aec eb             ex de,hl             	;.
	ram:7aed b7             or a                 	;.
	ram:7aee ed 52          sbc hl,de            	;. R
	ram:7af0 28 08          jr z,l7afah          	;( .
	ram:7af2 38 06          jr c,l7afah          	;8 .
	ram:7af4 cd 11 7c       call sub_7c11h       	;. . |
	ram:7af7 cd b8 2f       call 02fb8h          	;. . /
l7afah:
	ram:7afa e1             pop hl               	;.
	ram:7afb ed 4b 98 80    ld bc,(08098h)       	;. K . .
	ram:7aff 78             ld a,b               	;x
	ram:7b00 94             sub h                	;.
	ram:7b01 38 47          jr c,l7b4ah          	;8 G
	ram:7b03 47             ld b,a               	;G
	ram:7b04 cd 07 7c       call sub_7c07h       	;. . |
	ram:7b07 4f             ld c,a               	;O
	ram:7b08 c5             push bc              	;.
	ram:7b09 38 56          jr c,l7b61h          	;8 V
	ram:7b0b e5             push hl              	;.
	ram:7b0c cd ea 7b       call sub_7beah       	;. . {
	ram:7b0f c1             pop bc               	;.
	ram:7b10 0c             inc c                	;.
	ram:7b11 e1             pop hl               	;.
	ram:7b12 45             ld b,l               	;E
sub_7b13h:
	ram:7b13 c5             push bc              	;.
	ram:7b14 cd 1f 7c       call sub_7c1fh       	;. . |
	ram:7b17 20 02          jr nz,l7b1bh         	;.
	ram:7b19 c1             pop bc               	;.
	ram:7b1a c9             ret                  	;.
l7b1bh:
	ram:7b1b 47             ld b,a               	;G
	ram:7b1c 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:7b1f e5             push hl              	;.
l7b20h:
	ram:7b20 c5             push bc              	;.
	ram:7b21 d5             push de              	;.
	ram:7b22 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7b26 cd c5 68       call sub_68c5h       	;. . h
	ram:7b29 d1             pop de               	;.
	ram:7b2a d5             push de              	;.
	ram:7b2b cd f5 2b       call 02bf5h          	;. . +
	ram:7b2e d1             pop de               	;.
	ram:7b2f c1             pop bc               	;.
	ram:7b30 cd 1b 2e       call 02e1bh          	;. . .
	ram:7b33 10 eb          djnz l7b20h          	;. .
	ram:7b35 e1             pop hl               	;.
	ram:7b36 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:7b39 ed 4b d2 8b    ld bc,(08bd2h)       	;. K . .
	ram:7b3d ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7b41 cd 49 2c       call 02c49h          	;. I ,
	ram:7b44 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7b47 c3 02 7c       jp l7c02h            	;. . |
l7b4ah:
	ram:7b4a 7c             ld a,h               	;|
	ram:7b4b 90             sub b                	;.
	ram:7b4c 47             ld b,a               	;G
	ram:7b4d cd 07 7c       call sub_7c07h       	;. . |
	ram:7b50 4f             ld c,a               	;O
	ram:7b51 c5             push bc              	;.
	ram:7b52 38 62          jr c,l7bb6h          	;8 b
	ram:7b54 41             ld b,c               	;A
	ram:7b55 4d             ld c,l               	;M
	ram:7b56 0c             inc c                	;.
	ram:7b57 cd 13 7b       call sub_7b13h       	;. . {
	ram:7b5a c1             pop bc               	;.
	ram:7b5b 3a 99 80       ld a,(08099h)        	;: . .
	ram:7b5e 4f             ld c,a               	;O
	ram:7b5f 18 62          jr l7bc3h            	;. b
l7b61h:
	ram:7b61 cd ea 7b       call sub_7beah       	;. . {
	ram:7b64 c1             pop bc               	;.
	ram:7b65 41             ld b,c               	;A
	ram:7b66 3a 98 80       ld a,(08098h)        	;: . .
	ram:7b69 4f             ld c,a               	;O
sub_7b6ah:
	ram:7b6a c5             push bc              	;.
	ram:7b6b cd 1f 7c       call sub_7c1fh       	;. . |
	ram:7b6e 20 02          jr nz,l7b72h         	;.
	ram:7b70 c1             pop bc               	;.
	ram:7b71 c9             ret                  	;.
l7b72h:
	ram:7b72 47             ld b,a               	;G
	ram:7b73 0c             inc c                	;.
	ram:7b74 c5             push bc              	;.
	ram:7b75 d5             push de              	;.
	ram:7b76 cd b8 2f       call 02fb8h          	;. . /
	ram:7b79 d1             pop de               	;.
	ram:7b7a c1             pop bc               	;.
	ram:7b7b 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:7b7e e5             push hl              	;.
l7b7fh:
	ram:7b7f c5             push bc              	;.
	ram:7b80 d5             push de              	;.
	ram:7b81 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7b85 cd c5 68       call sub_68c5h       	;. . h
	ram:7b88 eb             ex de,hl             	;.
	ram:7b89 e1             pop hl               	;.
	ram:7b8a e5             push hl              	;.
	ram:7b8b cd 04 28       call 02804h          	;. . (
	ram:7b8e e1             pop hl               	;.
	ram:7b8f e5             push hl              	;.
	ram:7b90 ed 4b e1 8b    ld bc,(08be1h)       	;. K . .
	ram:7b94 09             add hl,bc            	;.
	ram:7b95 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:7b98 ed 42          sbc hl,bc            	;. B
	ram:7b9a b7             or a                 	;.
	ram:7b9b cd 47 7c       call sub_7c47h       	;. G |
	ram:7b9e d1             pop de               	;.
	ram:7b9f c1             pop bc               	;.
	ram:7ba0 10 dd          djnz l7b7fh          	;. .
	ram:7ba2 e1             pop hl               	;.
	ram:7ba3 22 e1 8b       ld (08be1h),hl       	;" . .
	ram:7ba6 ed 4b d2 8b    ld bc,(08bd2h)       	;. K . .
	ram:7baa ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7bae cd 74 2c       call 02c74h          	;. t ,
	ram:7bb1 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7bb4 18 30          jr l7be6h            	;. 0
l7bb6h:
	ram:7bb6 41             ld b,c               	;A
	ram:7bb7 3a 98 80       ld a,(08098h)        	;: . .
	ram:7bba 4f             ld c,a               	;O
	ram:7bbb cd 6a 7b       call sub_7b6ah       	;. j {
	ram:7bbe c1             pop bc               	;.
	ram:7bbf 3a 99 80       ld a,(08099h)        	;: . .
	ram:7bc2 4f             ld c,a               	;O
l7bc3h:
	ram:7bc3 cd 2e 7c       call sub_7c2eh       	;. . |
	ram:7bc6 c8             ret z                	;.
	ram:7bc7 c5             push bc              	;.
	ram:7bc8 e5             push hl              	;.
	ram:7bc9 41             ld b,c               	;A
	ram:7bca 04             inc b                	;.
	ram:7bcb c5             push bc              	;.
	ram:7bcc cd b8 2f       call 02fb8h          	;. . /
	ram:7bcf c1             pop bc               	;.
	ram:7bd0 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7bd4 cd c3 68       call sub_68c3h       	;. . h
	ram:7bd7 eb             ex de,hl             	;.
	ram:7bd8 e1             pop hl               	;.
	ram:7bd9 e5             push hl              	;.
	ram:7bda cd fa 27       call 027fah          	;. . '
	ram:7bdd e1             pop hl               	;.
	ram:7bde b7             or a                 	;.
	ram:7bdf cd 47 7c       call sub_7c47h       	;. G |
	ram:7be2 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7be5 23             inc hl               	;#
l7be6h:
	ram:7be6 f1             pop af               	;.
	ram:7be7 86             add a,(hl)           	;.
	ram:7be8 77             ld (hl),a            	;w
	ram:7be9 c9             ret                  	;.
sub_7beah:
	ram:7bea 4c             ld c,h               	;L
	ram:7beb 0c             inc c                	;.
	ram:7bec cd 2e 7c       call sub_7c2eh       	;. . |
	ram:7bef c8             ret z                	;.
	ram:7bf0 c5             push bc              	;.
	ram:7bf1 e5             push hl              	;.
	ram:7bf2 41             ld b,c               	;A
	ram:7bf3 ed 5b c6 80    ld de,(080c6h)       	;. [ . .
	ram:7bf7 cd c3 68       call sub_68c3h       	;. . h
	ram:7bfa d1             pop de               	;.
	ram:7bfb cd 46 2c       call 02c46h          	;. F ,
	ram:7bfe 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7c01 23             inc hl               	;#
l7c02h:
	ram:7c02 c1             pop bc               	;.
	ram:7c03 7e             ld a,(hl)            	;~
	ram:7c04 90             sub b                	;.
	ram:7c05 77             ld (hl),a            	;w
	ram:7c06 c9             ret                  	;.
sub_7c07h:
	ram:7c07 79             ld a,c               	;y
	ram:7c08 95             sub l                	;.
	ram:7c09 d0             ret nc               	;.
	ram:7c0a 7d             ld a,l               	;}
	ram:7c0b 91             sub c                	;.
	ram:7c0c 37             scf                  	;7
	ram:7c0d c9             ret                  	;.
sub_7c0eh:
	ram:7c0e 68             ld l,b               	;h
	ram:7c0f 26 00          ld h,000h            	;& .
sub_7c11h:
	ram:7c11 cd 33 1f       call 01f33h          	;. 3 .
l7c14h:
	ram:7c14 da 3c 0a       jp c,00a3ch          	;. < .
	ram:7c17 cd 78 26       call 02678h          	;. x &
	ram:7c1a c8             ret z                	;.
	ram:7c1b 29             add hl,hl            	;)
	ram:7c1c 38 f6          jr c,l7c14h          	;8 .
	ram:7c1e c9             ret                  	;.
sub_7c1fh:
	ram:7c1f 78             ld a,b               	;x
	ram:7c20 b7             or a                 	;.
	ram:7c21 c8             ret z                	;.
	ram:7c22 c5             push bc              	;.
	ram:7c23 cd 0e 7c       call sub_7c0eh       	;. . |
	ram:7c26 eb             ex de,hl             	;.
	ram:7c27 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7c2a 23             inc hl               	;#
	ram:7c2b 7e             ld a,(hl)            	;~
	ram:7c2c 18 0c          jr l7c3ah            	;. .
sub_7c2eh:
	ram:7c2e 78             ld a,b               	;x
	ram:7c2f b7             or a                 	;.
	ram:7c30 c8             ret z                	;.
	ram:7c31 c5             push bc              	;.
	ram:7c32 2a c6 80       ld hl,(080c6h)       	;* . .
	ram:7c35 46             ld b,(hl)            	;F
	ram:7c36 cd 0e 7c       call sub_7c0eh       	;. . |
	ram:7c39 eb             ex de,hl             	;.
l7c3ah:
	ram:7c3a 47             ld b,a               	;G
	ram:7c3b 21 00 00       ld hl,00000h         	;! . .
l7c3eh:
	ram:7c3e 19             add hl,de            	;.
	ram:7c3f 10 fd          djnz l7c3eh          	;. .
	ram:7c41 22 d2 8b       ld (08bd2h),hl       	;" . .
	ram:7c44 05             dec b                	;.
	ram:7c45 c1             pop bc               	;.
	ram:7c46 c9             ret                  	;.
sub_7c47h:
	ram:7c47 f5             push af              	;.
	ram:7c48 19             add hl,de            	;.
	ram:7c49 f1             pop af               	;.
	ram:7c4a e5             push hl              	;.
	ram:7c4b f5             push af              	;.
	ram:7c4c cd 78 26       call 02678h          	;. x &
	ram:7c4f 20 15          jr nz,l7c66h         	;.
l7c51h:
	ram:7c51 f1             pop af               	;.
	ram:7c52 30 05          jr nc,l7c59h         	;0 .
	ram:7c54 cd 2d 1f       call 01f2dh          	;. - .
	ram:7c57 18 03          jr l7c5ch            	;. .
l7c59h:
	ram:7c59 cd 27 1f       call 01f27h          	;. ' .
l7c5ch:
	ram:7c5c e1             pop hl               	;.
	ram:7c5d e5             push hl              	;.
	ram:7c5e f5             push af              	;.
	ram:7c5f af             xor a                	;.
	ram:7c60 ed 52          sbc hl,de            	;. R
	ram:7c62 28 19          jr z,l7c7dh          	;( .
	ram:7c64 18 eb          jr l7c51h            	;. .
l7c66h:
	ram:7c66 f1             pop af               	;.
	ram:7c67 21 ff 1e       ld hl,01effh         	;! . .
	ram:7c6a 30 03          jr nc,l7c6fh         	;0 .
	ram:7c6c 21 f5 1e       ld hl,01ef5h         	;! . .
l7c6fh:
	ram:7c6f cd 9d 20       call 0209dh          	;. .  
	ram:7c72 cd 9d 20       call 0209dh          	;. .  
	ram:7c75 e1             pop hl               	;.
	ram:7c76 e5             push hl              	;.
	ram:7c77 f5             push af              	;.
	ram:7c78 af             xor a                	;.
	ram:7c79 ed 52          sbc hl,de            	;. R
	ram:7c7b 20 e9          jr nz,l7c66h         	;.
l7c7dh:
	ram:7c7d e1             pop hl               	;.
	ram:7c7e e1             pop hl               	;.
	ram:7c7f c9             ret                  	;.
	ram:7c80 3e 02          ld a,002h            	;> .
	ram:7c82 18 02          jr l7c86h            	;. .
	ram:7c84 3e 06          ld a,006h            	;> .
l7c86h:
	ram:7c86 ed 53 d4 80    ld (080d4h),de       	;. S . .
	ram:7c8a eb             ex de,hl             	;.
	ram:7c8b cd 3f 2d       call 02d3fh          	;. ? -
	ram:7c8e 1b             dec de               	;.
	ram:7c8f 1b             dec de               	;.
	ram:7c90 eb             ex de,hl             	;.
	ram:7c91 cd b8 2f       call 02fb8h          	;. . /
	ram:7c94 2a d4 80       ld hl,(080d4h)       	;* . .
	ram:7c97 23             inc hl               	;#
	ram:7c98 23             inc hl               	;#
	ram:7c99 19             add hl,de            	;.
	ram:7c9a eb             ex de,hl             	;.
	ram:7c9b cd fa 27       call 027fah          	;. . '
	ram:7c9e eb             ex de,hl             	;.
	ram:7c9f e5             push hl              	;.
	ram:7ca0 29             add hl,hl            	;)
	ram:7ca1 ed 5b d4 80    ld de,(080d4h)       	;. [ . .
	ram:7ca5 13             inc de               	;.
	ram:7ca6 13             inc de               	;.
	ram:7ca7 b7             or a                 	;.
	ram:7ca8 ed 52          sbc hl,de            	;. R
l7caah:
	ram:7caa d1             pop de               	;.
	ram:7cab e5             push hl              	;.
	ram:7cac 21 f6 ff       ld hl,0fff6h         	;! . .
	ram:7caf 19             add hl,de            	;.
	ram:7cb0 c1             pop bc               	;.
	ram:7cb1 e5             push hl              	;.
	ram:7cb2 ed 5b d4 80    ld de,(080d4h)       	;. [ . .
	ram:7cb6 b7             or a                 	;.
	ram:7cb7 ed 52          sbc hl,de            	;. R
	ram:7cb9 38 1f          jr c,l7cdah          	;8 .
	ram:7cbb 60             ld h,b               	;`
	ram:7cbc 69             ld l,c               	;i
	ram:7cbd 11 f6 ff       ld de,0fff6h         	;. . .
	ram:7cc0 19             add hl,de            	;.
	ram:7cc1 e5             push hl              	;.
	ram:7cc2 eb             ex de,hl             	;.
	ram:7cc3 21 ff 1e       ld hl,01effh         	;! . .
	ram:7cc6 cd 9d 20       call 0209dh          	;. .  
	ram:7cc9 e1             pop hl               	;.
	ram:7cca 11 f6 ff       ld de,0fff6h         	;. . .
	ram:7ccd 19             add hl,de            	;.
	ram:7cce d1             pop de               	;.
	ram:7ccf d5             push de              	;.
	ram:7cd0 e5             push hl              	;.
	ram:7cd1 eb             ex de,hl             	;.
	ram:7cd2 cd 9d 20       call 0209dh          	;. .  
	ram:7cd5 e1             pop hl               	;.
	ram:7cd6 cb c6          set 0,(hl)           	;. .
	ram:7cd8 18 d0          jr l7caah            	;. .
l7cdah:
	ram:7cda e1             pop hl               	;.
	ram:7cdb ed 5b d4 80    ld de,(080d4h)       	;. [ . .
	ram:7cdf 18 0e          jr l7cefh            	;. .
l7ce1h:
	ram:7ce1 3e 04          ld a,004h            	;> .
	ram:7ce3 18 a1          jr l7c86h            	;. .
sub_7ce5h:
	ram:7ce5 1a             ld a,(de)            	;.
	ram:7ce6 b7             or a                 	;.
	ram:7ce7 20 f8          jr nz,l7ce1h         	;.
	ram:7ce9 13             inc de               	;.
	ram:7cea 1a             ld a,(de)            	;.
	ram:7ceb 1b             dec de               	;.
	ram:7cec b7             or a                 	;.
	ram:7ced 28 f2          jr z,l7ce1h          	;( .
l7cefh:
	ram:7cef d5             push de              	;.
	ram:7cf0 cd 24 2f       call 02f24h          	;. $ /
	ram:7cf3 d7             rst 10h              	;.
	ram:7cf4 f6 01          or 001h              	;. .
	ram:7cf6 77             ld (hl),a            	;w
	ram:7cf7 32 82 80       ld (08082h),a        	;2 . .
	ram:7cfa cd 6b 2f       call 02f6bh          	;. k /
	ram:7cfd d1             pop de               	;.
	ram:7cfe c9             ret                  	;.
sub_7cffh:
	ram:7cff eb             ex de,hl             	;.
	ram:7d00 4e             ld c,(hl)            	;N
	ram:7d01 23             inc hl               	;#
	ram:7d02 46             ld b,(hl)            	;F
	ram:7d03 2b             dec hl               	;+
	ram:7d04 eb             ex de,hl             	;.
	ram:7d05 21 01 00       ld hl,00001h         	;! . .
	ram:7d08 b7             or a                 	;.
	ram:7d09 ed 53 d4 80    ld (080d4h),de       	;. S . .
	ram:7d0d e5             push hl              	;.
	ram:7d0e f5             push af              	;.
	ram:7d0f c5             push bc              	;.
	ram:7d10 cd af 26       call 026afh          	;. . &
	ram:7d13 e6 01          and 001h             	;. .
	ram:7d15 28 03          jr z,l7d1ah          	;( .
	ram:7d17 cd 7d 26       call 0267dh          	;. } &
l7d1ah:
	ram:7d1a cd 11 7c       call sub_7c11h       	;. . |
	ram:7d1d cd b8 2f       call 02fb8h          	;. . /
	ram:7d20 e1             pop hl               	;.
	ram:7d21 d5             push de              	;.
	ram:7d22 23             inc hl               	;#
	ram:7d23 ed 5b d4 80    ld de,(080d4h)       	;. [ . .
	ram:7d27 cd 32 62       call sub_6232h       	;. 2 b
	ram:7d2a eb             ex de,hl             	;.
	ram:7d2b e1             pop hl               	;.
	ram:7d2c e5             push hl              	;.
	ram:7d2d cd fa 27       call 027fah          	;. . '
	ram:7d30 e1             pop hl               	;.
	ram:7d31 f1             pop af               	;.
	ram:7d32 cd 47 7c       call sub_7c47h       	;. G |
	ram:7d35 d1             pop de               	;.
	ram:7d36 2a d4 80       ld hl,(080d4h)       	;* . .
	ram:7d39 4e             ld c,(hl)            	;N
	ram:7d3a 23             inc hl               	;#
	ram:7d3b 46             ld b,(hl)            	;F
	ram:7d3c 78             ld a,b               	;x
	ram:7d3d b1             or c                 	;.
	ram:7d3e 20 0b          jr nz,l7d4bh         	;.
	ram:7d40 af             xor a                	;.
	ram:7d41 23             inc hl               	;#
	ram:7d42 cd 78 26       call 02678h          	;. x &
	ram:7d45 28 02          jr z,l7d49h          	;( .
	ram:7d47 3e 01          ld a,001h            	;> .
l7d49h:
	ram:7d49 77             ld (hl),a            	;w
	ram:7d4a 2b             dec hl               	;+
l7d4bh:
	ram:7d4b eb             ex de,hl             	;.
	ram:7d4c 09             add hl,bc            	;.
	ram:7d4d cd 73 7d       call sub_7d73h       	;. s }
	ram:7d50 eb             ex de,hl             	;.
	ram:7d51 c9             ret                  	;.
	ram:7d52 ed 53 d4 80    ld (080d4h),de       	;. S . .
	ram:7d56 e5             push hl              	;.
	ram:7d57 c5             push bc              	;.
	ram:7d58 e6 01          and 001h             	;. .
	ram:7d5a 28 01          jr z,l7d5dh          	;( .
	ram:7d5c 29             add hl,hl            	;)
l7d5dh:
	ram:7d5d cd 33 1f       call 01f33h          	;. 3 .
	ram:7d60 e3             ex (sp),hl           	;.
	ram:7d61 cd 32 62       call sub_6232h       	;. 2 b
	ram:7d64 d1             pop de               	;.
	ram:7d65 cd 46 2c       call 02c46h          	;. F ,
	ram:7d68 2a d4 80       ld hl,(080d4h)       	;* . .
	ram:7d6b c1             pop bc               	;.
	ram:7d6c 5e             ld e,(hl)            	;^
	ram:7d6d 23             inc hl               	;#
	ram:7d6e 56             ld d,(hl)            	;V
	ram:7d6f eb             ex de,hl             	;.
	ram:7d70 b7             or a                 	;.
	ram:7d71 ed 42          sbc hl,bc            	;. B
sub_7d73h:
	ram:7d73 eb             ex de,hl             	;.
	ram:7d74 72             ld (hl),d            	;r
	ram:7d75 2b             dec hl               	;+
	ram:7d76 73             ld (hl),e            	;s
	ram:7d77 c9             ret                  	;.
	ram:7d78 eb             ex de,hl             	;.
	ram:7d79 22 c6 80       ld (080c6h),hl       	;" . .
	ram:7d7c 5e             ld e,(hl)            	;^
	ram:7d7d 23             inc hl               	;#
	ram:7d7e 56             ld d,(hl)            	;V
	ram:7d7f 19             add hl,de            	;.
	ram:7d80 23             inc hl               	;#
	ram:7d81 22 c8 80       ld (080c8h),hl       	;" . .
	ram:7d84 eb             ex de,hl             	;.
	ram:7d85 2a e1 8b       ld hl,(08be1h)       	;* . .
	ram:7d88 b7             or a                 	;.
	ram:7d89 ed 52          sbc hl,de            	;. R
	ram:7d8b 22 cc 80       ld (080cch),hl       	;" . .
	ram:7d8e 20 08          jr nz,l7d98h         	;.
	ram:7d90 19             add hl,de            	;.
	ram:7d91 2b             dec hl               	;+
	ram:7d92 e5             push hl              	;.
	ram:7d93 2a e5 8b       ld hl,(08be5h)       	;* . .
	ram:7d96 18 0c          jr l7da4h            	;. .
l7d98h:
	ram:7d98 44             ld b,h               	;D
	ram:7d99 4d             ld c,l               	;M
	ram:7d9a 19             add hl,de            	;.
	ram:7d9b 2b             dec hl               	;+
	ram:7d9c ed 5b e5 8b    ld de,(08be5h)       	;. [ . .
	ram:7da0 ed b8          lddr                 	;. .
	ram:7da2 eb             ex de,hl             	;.
	ram:7da3 d5             push de              	;.
l7da4h:
	ram:7da4 23             inc hl               	;#
	ram:7da5 22 ca 80       ld (080cah),hl       	;" . .
	ram:7da8 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:7dac b7             or a                 	;.
	ram:7dad ed 52          sbc hl,de            	;. R
	ram:7daf 7d             ld a,l               	;}
	ram:7db0 2f             cpl                  	;/
	ram:7db1 4f             ld c,a               	;O
	ram:7db2 7c             ld a,h               	;|
	ram:7db3 2f             cpl                  	;/
	ram:7db4 47             ld b,a               	;G
	ram:7db5 03             inc bc               	;.
	ram:7db6 d1             pop de               	;.
	ram:7db7 cd 08 2b       call 02b08h          	;. . +
	ram:7dba c3 4c 2c       jp 02c4ch            	;. L ,
	ram:7dbd ed 4b cc 80    ld bc,(080cch)       	;. K . .
	ram:7dc1 2a c8 80       ld hl,(080c8h)       	;* . .
	ram:7dc4 78             ld a,b               	;x
	ram:7dc5 b1             or c                 	;.
	ram:7dc6 28 06          jr z,l7dceh          	;( .
	ram:7dc8 eb             ex de,hl             	;.
	ram:7dc9 2a ca 80       ld hl,(080cah)       	;* . .
	ram:7dcc ed b0          ldir                 	;. .
l7dceh:
	ram:7dce 2a ca 80       ld hl,(080cah)       	;* . .
	ram:7dd1 ed 5b c8 80    ld de,(080c8h)       	;. [ . .
	ram:7dd5 b7             or a                 	;.
	ram:7dd6 ed 52          sbc hl,de            	;. R
	ram:7dd8 44             ld b,h               	;D
	ram:7dd9 4d             ld c,l               	;M
	ram:7dda 1b             dec de               	;.
	ram:7ddb cd 08 2b       call 02b08h          	;. . +
	ram:7dde c3 4c 2c       jp 02c4ch            	;. L ,
	ram:7de1 21 6f fa       ld hl,0fa6fh         	;! o .
	ram:7de4 ed 4b e3 8b    ld bc,(08be3h)       	;. K . .
	ram:7de8 03             inc bc               	;.
	ram:7de9 16 00          ld d,000h            	;. .
l7debh:
	ram:7deb ed 42          sbc hl,bc            	;. B
	ram:7ded d8             ret c                	;.
	ram:7dee 09             add hl,bc            	;.
	ram:7def cb b6          res 6,(hl)           	;. .
	ram:7df1 2b             dec hl               	;+
	ram:7df2 2b             dec hl               	;+
	ram:7df3 2b             dec hl               	;+
	ram:7df4 5e             ld e,(hl)            	;^
	ram:7df5 1c             inc e                	;.
	ram:7df6 ed 52          sbc hl,de            	;. R
	ram:7df8 18 f1          jr l7debh            	;. .
	ram:7dfa 7a             ld a,d               	;z
	ram:7dfb b3             or e                 	;.
	ram:7dfc ca 1f 28       jp z,0281fh          	;. . (
	ram:7dff ed 53 e7 8b    ld (08be7h),de       	;. S . .
	ram:7e03 2a eb 8b       ld hl,(08bebh)       	;* . .
l7e06h:
	ram:7e06 e5             push hl              	;.
	ram:7e07 2b             dec hl               	;+
	ram:7e08 2b             dec hl               	;+
	ram:7e09 2b             dec hl               	;+
	ram:7e0a 2b             dec hl               	;+
	ram:7e0b 2b             dec hl               	;+
	ram:7e0c b7             or a                 	;.
	ram:7e0d ed 4b e3 8b    ld bc,(08be3h)       	;. K . .
	ram:7e11 ed 42          sbc hl,bc            	;. B
	ram:7e13 30 02          jr nc,l7e17h         	;0 .
	ram:7e15 e1             pop hl               	;.
	ram:7e16 c9             ret                  	;.
l7e17h:
	ram:7e17 09             add hl,bc            	;.
	ram:7e18 5e             ld e,(hl)            	;^
	ram:7e19 2b             dec hl               	;+
	ram:7e1a 56             ld d,(hl)            	;V
	ram:7e1b 2b             dec hl               	;+
	ram:7e1c c1             pop bc               	;.
	ram:7e1d e5             push hl              	;.
	ram:7e1e 2a e7 8b       ld hl,(08be7h)       	;* . .
	ram:7e21 b7             or a                 	;.
	ram:7e22 ed 52          sbc hl,de            	;. R
	ram:7e24 38 02          jr c,l7e28h          	;8 .
	ram:7e26 20 04          jr nz,l7e2ch         	;.
l7e28h:
	ram:7e28 60             ld h,b               	;`
	ram:7e29 69             ld l,c               	;i
	ram:7e2a cb fe          set 7,(hl)           	;. .
l7e2ch:
	ram:7e2c e1             pop hl               	;.
	ram:7e2d 18 d7          jr l7e06h            	;. .
sub_7e2fh:
	ram:7e2f cd 4a 2e       call 02e4ah          	;. J .
	ram:7e32 d7             rst 10h              	;.
	ram:7e33 30 0b          jr nc,l7e40h         	;0 .
	ram:7e35 cd 86 29       call 02986h          	;. . )
	ram:7e38 cd 27 1f       call 01f27h          	;. ' .
	ram:7e3b cd 98 21       call 02198h          	;. . !
	ram:7e3e 18 13          jr l7e53h            	;. .
l7e40h:
	ram:7e40 3a 82 80       ld a,(08082h)        	;: . .
	ram:7e43 e6 1e          and 01eh             	;. .
	ram:7e45 20 05          jr nz,l7e4ch         	;.
	ram:7e47 cd c1 3a       call 03ac1h          	;. . :
	ram:7e4a 18 07          jr l7e53h            	;. .
l7e4ch:
	ram:7e4c fe 04          cp 004h              	;. .
	ram:7e4e 28 03          jr z,l7e53h          	;( .
	ram:7e50 cd 98 21       call 02198h          	;. . !
l7e53h:
	ram:7e53 df             rst 18h              	;.
	ram:7e54 3a d1 8b       ld a,(08bd1h)        	;: . .
	ram:7e57 f5             push af              	;.
	ram:7e58 47             ld b,a               	;G
	ram:7e59 3c             inc a                	;<
	ram:7e5a 32 d1 8b       ld (08bd1h),a        	;2 . .
	ram:7e5d 21 02 00       ld hl,00002h         	;! . .
	ram:7e60 22 83 80       ld (08083h),hl       	;" . .
	ram:7e63 78             ld a,b               	;x
	ram:7e64 32 85 80       ld (08085h),a        	;2 . .
	ram:7e67 cd af 3a       call 03aafh          	;. . :
	ram:7e6a f1             pop af               	;.
	ram:7e6b 21 02 00       ld hl,00002h         	;! . .
	ram:7e6e 22 83 80       ld (08083h),hl       	;" . .
	ram:7e71 32 85 80       ld (08085h),a        	;2 . .
	ram:7e74 d7             rst 10h              	;.
	ram:7e75 d5             push de              	;.
	ram:7e76 e5             push hl              	;.
	ram:7e77 cd f4 2d       call 02df4h          	;. . -
	ram:7e7a d7             rst 10h              	;.
l7e7bh:
	ram:7e7b e3             ex (sp),hl           	;.
	ram:7e7c cd 89 7e       call sub_7e89h       	;. . ~
	ram:7e7f 23             inc hl               	;#
	ram:7e80 23             inc hl               	;#
	ram:7e81 d1             pop de               	;.
	ram:7e82 1a             ld a,(de)            	;.
	ram:7e83 46             ld b,(hl)            	;F
	ram:7e84 77             ld (hl),a            	;w
	ram:7e85 78             ld a,b               	;x
	ram:7e86 12             ld (de),a            	;.
	ram:7e87 eb             ex de,hl             	;.
	ram:7e88 d1             pop de               	;.
sub_7e89h:
	ram:7e89 2b             dec hl               	;+
	ram:7e8a 73             ld (hl),e            	;s
	ram:7e8b 2b             dec hl               	;+
	ram:7e8c 72             ld (hl),d            	;r
	ram:7e8d c9             ret                  	;.
sub_7e8eh:
	ram:7e8e d7             rst 10h              	;.
l7e8fh:
	ram:7e8f 3a d1 8b       ld a,(08bd1h)        	;: . .
	ram:7e92 d6 01          sub 001h             	;. .
	ram:7e94 d8             ret c                	;.
	ram:7e95 32 d1 8b       ld (08bd1h),a        	;2 . .
	ram:7e98 01 02 00       ld bc,00002h         	;. . .
	ram:7e9b ed 43 83 80    ld (08083h),bc       	;. C . .
	ram:7e9f 32 85 80       ld (08085h),a        	;2 . .
	ram:7ea2 d5             push de              	;.
	ram:7ea3 e5             push hl              	;.
	ram:7ea4 d7             rst 10h              	;.
	ram:7ea5 e1             pop hl               	;.
	ram:7ea6 d1             pop de               	;.
	ram:7ea7 38 e6          jr c,l7e8fh          	;8 .
	ram:7ea9 cd b0 7e       call sub_7eb0h       	;. . ~
	ram:7eac d7             rst 10h              	;.
	ram:7ead c3 0b 2c       jp 02c0bh            	;. . ,
sub_7eb0h:
	ram:7eb0 d5             push de              	;.
	ram:7eb1 e5             push hl              	;.
	ram:7eb2 d7             rst 10h              	;.
	ram:7eb3 fd cb 03 4e    bit 1,(iy+003h)      	;. . . N
	ram:7eb7 28 c2          jr z,l7e7bh          	;( .
	ram:7eb9 cb f6          set 6,(hl)           	;. .
	ram:7ebb 18 be          jr l7e7bh            	;. .
	ram:7ebd 37             scf                  	;7
	ram:7ebe 18 02          jr l7ec2h            	;. .
	ram:7ec0 37             scf                  	;7
	ram:7ec1 3f             ccf                  	;?
l7ec2h:
	ram:7ec2 e5             push hl              	;.
	ram:7ec3 cb 8f          res 1,a              	;. .
	ram:7ec5 f5             push af              	;.
	ram:7ec6 21 83 80       ld hl,08083h         	;! . .
	ram:7ec9 cd c9 7f       call sub_7fc9h       	;. . .
	ram:7ecc cd 21 20       call 02021h          	;. !  
	ram:7ecf 21 6f fa       ld hl,0fa6fh         	;! o .
	ram:7ed2 cd 47 1f       call 01f47h          	;. G .
	ram:7ed5 47             ld b,a               	;G
	ram:7ed6 f1             pop af               	;.
	ram:7ed7 f5             push af              	;.
	ram:7ed8 78             ld a,b               	;x
	ram:7ed9 c4 b6 7f       call nz,sub_7fb6h    	;. . .
	ram:7edc 32 82 80       ld (08082h),a        	;2 . .
l7edfh:
	ram:7edf 3a 82 80       ld a,(08082h)        	;: . .
	ram:7ee2 47             ld b,a               	;G
	ram:7ee3 ed 5b eb 8b    ld de,(08bebh)       	;. [ . .
	ram:7ee7 13             inc de               	;.
	ram:7ee8 b7             or a                 	;.
	ram:7ee9 ed 52          sbc hl,de            	;. R
	ram:7eeb da 87 7f       jp c,l7f87h          	;. . .
	ram:7eee 19             add hl,de            	;.
	ram:7eef 22 d6 80       ld (080d6h),hl       	;" . .
	ram:7ef2 4e             ld c,(hl)            	;N
	ram:7ef3 2b             dec hl               	;+
	ram:7ef4 2b             dec hl               	;+
	ram:7ef5 2b             dec hl               	;+
	ram:7ef6 f1             pop af               	;.
	ram:7ef7 f5             push af              	;.
	ram:7ef8 cb 47          bit 0,a              	;. G
	ram:7efa 20 1b          jr nz,l7f17h         	;.
	ram:7efc 79             ld a,c               	;y
	ram:7efd e6 1f          and 01fh             	;. .
	ram:7eff 32 8d 80       ld (0808dh),a        	;2 . .
	ram:7f02 f1             pop af               	;.
	ram:7f03 f5             push af              	;.
	ram:7f04 3a 8d 80       ld a,(0808dh)        	;: . .
	ram:7f07 c4 b6 7f       call nz,sub_7fb6h    	;. . .
	ram:7f0a b8             cp b                 	;.
	ram:7f0b 28 0a          jr z,l7f17h          	;( .
	ram:7f0d 16 00          ld d,000h            	;. .
	ram:7f0f 5e             ld e,(hl)            	;^
	ram:7f10 1c             inc e                	;.
	ram:7f11 b7             or a                 	;.
	ram:7f12 ed 52          sbc hl,de            	;. R
	ram:7f14 c3 df 7e       jp l7edfh            	;. . ~
l7f17h:
	ram:7f17 11 8e 80       ld de,0808eh         	;. . .
	ram:7f1a 7e             ld a,(hl)            	;~
	ram:7f1b 47             ld b,a               	;G
	ram:7f1c 12             ld (de),a            	;.
l7f1dh:
	ram:7f1d 2b             dec hl               	;+
	ram:7f1e 13             inc de               	;.
	ram:7f1f 7e             ld a,(hl)            	;~
	ram:7f20 12             ld (de),a            	;.
	ram:7f21 10 fa          djnz l7f1dh          	;. .
	ram:7f23 eb             ex de,hl             	;.
	ram:7f24 1b             dec de               	;.
	ram:7f25 21 8e 80       ld hl,0808eh         	;! . .
	ram:7f28 7e             ld a,(hl)            	;~
	ram:7f29 fe 03          cp 003h              	;. .
	ram:7f2b 20 17          jr nz,l7f44h         	;.
	ram:7f2d 2a 8f 80       ld hl,(0808fh)       	;* . .
	ram:7f30 01 41 6e       ld bc,l6e41h         	;. A n
	ram:7f33 ed 42          sbc hl,bc            	;. B
	ram:7f35 20 0a          jr nz,l7f41h         	;.
	ram:7f37 3a 91 80       ld a,(08091h)        	;: . .
	ram:7f3a fe 73          cp 073h              	;. s
	ram:7f3c 20 03          jr nz,l7f41h         	;.
	ram:7f3e eb             ex de,hl             	;.
	ram:7f3f 18 9e          jr l7edfh            	;. .
l7f41h:
	ram:7f41 21 8e 80       ld hl,0808eh         	;! . .
l7f44h:
	ram:7f44 cd c9 7f       call sub_7fc9h       	;. . .
	ram:7f47 eb             ex de,hl             	;.
	ram:7f48 3a 8f 80       ld a,(0808fh)        	;: . .
	ram:7f4b fe 41          cp 041h              	;. A
	ram:7f4d 38 90          jr c,l7edfh          	;8 .
	ram:7f4f e5             push hl              	;.
	ram:7f50 11 8b 80       ld de,0808bh         	;. . .
	ram:7f53 cd 91 7f       call sub_7f91h       	;. . .
	ram:7f56 e1             pop hl               	;.
	ram:7f57 38 1a          jr c,l7f73h          	;8 .
	ram:7f59 cb 59          bit 3,c              	;. Y
	ram:7f5b 20 82          jr nz,l7edfh         	;.
	ram:7f5d f1             pop af               	;.
	ram:7f5e f5             push af              	;.
	ram:7f5f da df 7e       jp c,l7edfh          	;. . ~
	ram:7f62 cb 4f          bit 1,a              	;. O
	ram:7f64 28 3c          jr z,l7fa2h          	;( <
	ram:7f66 e5             push hl              	;.
	ram:7f67 11 a1 80       ld de,080a1h         	;. . .
	ram:7f6a cd 91 7f       call sub_7f91h       	;. . .
	ram:7f6d 38 38          jr c,l7fa7h          	;8 8
l7f6fh:
	ram:7f6f e1             pop hl               	;.
	ram:7f70 c3 df 7e       jp l7edfh            	;. . ~
l7f73h:
	ram:7f73 f1             pop af               	;.
	ram:7f74 f5             push af              	;.
	ram:7f75 d2 df 7e       jp nc,l7edfh         	;. . ~
	ram:7f78 cb 4f          bit 1,a              	;. O
	ram:7f7a 28 26          jr z,l7fa2h          	;( &
	ram:7f7c e5             push hl              	;.
	ram:7f7d 11 a1 80       ld de,080a1h         	;. . .
	ram:7f80 cd 91 7f       call sub_7f91h       	;. . .
	ram:7f83 38 ea          jr c,l7f6fh          	;8 .
	ram:7f85 18 20          jr l7fa7h            	;.  
l7f87h:
	ram:7f87 cd 60 20       call 02060h          	;. `  
	ram:7f8a f1             pop af               	;.
	ram:7f8b e1             pop hl               	;.
	ram:7f8c cb 87          res 0,a              	;. .
	ram:7f8e d6 02          sub 002h             	;. .
	ram:7f90 c9             ret                  	;.
sub_7f91h:
	ram:7f91 21 96 80       ld hl,08096h         	;! . .
	ram:7f94 06 08          ld b,008h            	;. .
	ram:7f96 af             xor a                	;.
	ram:7f97 4f             ld c,a               	;O
l7f98h:
	ram:7f98 1a             ld a,(de)            	;.
	ram:7f99 9e             sbc a,(hl)           	;.
	ram:7f9a 20 01          jr nz,l7f9dh         	;.
	ram:7f9c 0c             inc c                	;.
l7f9dh:
	ram:7f9d 1b             dec de               	;.
	ram:7f9e 2b             dec hl               	;+
	ram:7f9f 10 f7          djnz l7f98h          	;. .
	ram:7fa1 c9             ret                  	;.
l7fa2h:
	ram:7fa2 f1             pop af               	;.
	ram:7fa3 cb cf          set 1,a              	;. .
	ram:7fa5 f5             push af              	;.
	ram:7fa6 e5             push hl              	;.
l7fa7h:
	ram:7fa7 cd f4 20       call 020f4h          	;. .  
	ram:7faa e1             pop hl               	;.
	ram:7fab f1             pop af               	;.
	ram:7fac d1             pop de               	;.
	ram:7fad ed 5b d6 80    ld de,(080d6h)       	;. [ . .
	ram:7fb1 d5             push de              	;.
	ram:7fb2 f5             push af              	;.
	ram:7fb3 c3 df 7e       jp l7edfh            	;. . ~
sub_7fb6h:
	ram:7fb6 fe 02          cp 002h              	;. .
	ram:7fb8 d8             ret c                	;.
	ram:7fb9 fe 0a          cp 00ah              	;. .
	ram:7fbb 30 03          jr nc,l7fc0h         	;0 .
	ram:7fbd e6 1e          and 01eh             	;. .
	ram:7fbf c9             ret                  	;.
l7fc0h:
	ram:7fc0 fe 0d          cp 00dh              	;. .
	ram:7fc2 d8             ret c                	;.
	ram:7fc3 fe 11          cp 011h              	;. .
	ram:7fc5 d0             ret nc               	;.
	ram:7fc6 3e 0d          ld a,00dh            	;> .
	ram:7fc8 c9             ret                  	;.
sub_7fc9h:
	ram:7fc9 4e             ld c,(hl)            	;N
	ram:7fca 06 00          ld b,000h            	;. .
	ram:7fcc 09             add hl,bc            	;.
	ram:7fcd 3e 08          ld a,008h            	;> .
	ram:7fcf 91             sub c                	;.
	ram:7fd0 c8             ret z                	;.
	ram:7fd1 47             ld b,a               	;G
l7fd2h:
	ram:7fd2 23             inc hl               	;#
	ram:7fd3 36 20          ld (hl),020h         	;6  
	ram:7fd5 10 fb          djnz l7fd2h          	;. .
	ram:7fd7 c9             ret                  	;.
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
