; z80dasm 1.2.0
; command line: z80dasm -alctz -g 0x4000 ti85_p1.rom

	org 04000h

	ram:4000 21 21 40       ld hl,l4021h         	;! ! @
	ram:4003 cd 5b 06       call 0065bh          	;. [ .
	ram:4006 21 ce 30       ld hl,030ceh         	;! . 0
	ram:4009 cd 7f 3d       call 03d7fh          	;. . =
l400ch:
	ram:400c 3e 7a          ld a,07ah            	;> z
	ram:400e cd b9 47       call sub_47b9h       	;. . G
	ram:4011 cd 33 70       call sub_7033h       	;. 3 p
	ram:4014 fd cb 0c e6    set 4,(iy+00ch)      	;. . . .
	ram:4018 cd 24 42       call sub_4224h       	;. $ B
	ram:401b cd 46 42       call sub_4246h       	;. F B
	ram:401e c3 b5 42       jp l42b5h            	;. . B
l4021h:
	ram:4021 2e 40          ld l,040h            	;. @
	ram:4023 e2 41 d2       jp po,0d241h         	;. A .
	ram:4026 41             ld b,c               	;A
	ram:4027 e2 41 77       jp po,l7741h         	;. A w
	ram:402a 42             ld b,d               	;B
	ram:402b e3             ex (sp),hl           	;.
	ram:402c 41             ld b,c               	;A
	ram:402d 08             ex af,af'            	;.
	ram:402e fe 06          cp 006h              	;. .
	ram:4030 20 17          jr nz,l4049h         	;.
	ram:4032 2a d1 81       ld hl,(081d1h)       	;* . .
	ram:4035 7e             ld a,(hl)            	;~
	ram:4036 fd 77 10       ld (iy+010h),a       	;. w .
l4039h:
	ram:4039 23             inc hl               	;#
	ram:403a 7e             ld a,(hl)            	;~
	ram:403b b7             or a                 	;.
	ram:403c 28 05          jr z,l4043h          	;( .
	ram:403e cd d9 03       call 003d9h          	;. . .
	ram:4041 18 f6          jr l4039h            	;. .
l4043h:
	ram:4043 cd fa 48       call sub_48fah       	;. . H
	ram:4046 c3 c5 05       jp 005c5h            	;. . .
l4049h:
	ram:4049 fe 03          cp 003h              	;. .
	ram:404b 20 35          jr nz,l4082h         	;5
	ram:404d cd 90 42       call sub_4290h       	;. . B
	ram:4050 38 1e          jr c,l4070h          	;8 .
	ram:4052 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:4055 fe 07          cp 007h              	;. .
	ram:4057 20 05          jr nz,l405eh         	;.
	ram:4059 21 2e 60       ld hl,l602eh         	;! . `
	ram:405c 18 03          jr l4061h            	;. .
l405eh:
	ram:405e 21 34 60       ld hl,l6034h         	;! 4 `
l4061h:
	ram:4061 22 d1 81       ld (081d1h),hl       	;" . .
	ram:4064 cd 27 42       call sub_4227h       	;. ' B
	ram:4067 21 43 60       ld hl,06043h         	;! C `
	ram:406a 22 d1 81       ld (081d1h),hl       	;" . .
	ram:406d c3 a8 42       jp l42a8h            	;. . B
l4070h:
	ram:4070 cd 84 42       call sub_4284h       	;. . B
	ram:4073 d4 91 3d       call nc,03d91h       	;. . =
	ram:4076 cd c3 42       call sub_42c3h       	;. . B
	ram:4079 cd 6f 6f       call sub_6f6fh       	;. o o
	ram:407c dc 04 42       call c,sub_4204h     	;. . B
	ram:407f c3 b8 42       jp l42b8h            	;. . B
l4082h:
	ram:4082 fe 04          cp 004h              	;. .
	ram:4084 20 14          jr nz,l409ah         	;.
	ram:4086 cd 7a 42       call sub_427ah       	;. z B
	ram:4089 d0             ret nc               	;.
	ram:408a cd 64 42       call sub_4264h       	;. d B
	ram:408d d0             ret nc               	;.
	ram:408e cd c3 42       call sub_42c3h       	;. . B
	ram:4091 cd f8 6e       call sub_6ef8h       	;. . n
	ram:4094 d4 04 42       call nc,sub_4204h    	;. . B
	ram:4097 c3 b8 42       jp l42b8h            	;. . B
l409ah:
	ram:409a fe 9f          cp 09fh              	;. .
	ram:409c 20 2e          jr nz,l40cch         	;.
	ram:409e cd 84 42       call sub_4284h       	;. . B
	ram:40a1 d0             ret nc               	;.
l40a2h:
	ram:40a2 cd 90 42       call sub_4290h       	;. . B
	ram:40a5 d0             ret nc               	;.
	ram:40a6 cd c3 42       call sub_42c3h       	;. . B
	ram:40a9 cd d4 6e       call sub_6ed4h       	;. . n
	ram:40ac 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:40af b7             or a                 	;.
	ram:40b0 20 15          jr nz,l40c7h         	;.
	ram:40b2 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:40b5 3d             dec a                	;=
	ram:40b6 3d             dec a                	;=
	ram:40b7 47             ld b,a               	;G
l40b8h:
	ram:40b8 c5             push bc              	;.
	ram:40b9 cd 90 42       call sub_4290h       	;. . B
	ram:40bc c1             pop bc               	;.
	ram:40bd 30 02          jr nc,l40c1h         	;0 .
	ram:40bf 10 f7          djnz l40b8h          	;. .
l40c1h:
	ram:40c1 cd 27 42       call sub_4227h       	;. ' B
	ram:40c4 c3 b5 42       jp l42b5h            	;. . B
l40c7h:
	ram:40c7 cd b8 42       call l42b8h          	;. . B
	ram:40ca 18 d6          jr l40a2h            	;. .
l40cch:
	ram:40cc fe 9e          cp 09eh              	;. .
	ram:40ce 20 18          jr nz,l40e8h         	;.
	ram:40d0 cd 7a 42       call sub_427ah       	;. z B
	ram:40d3 d0             ret nc               	;.
l40d4h:
	ram:40d4 cd 64 42       call sub_4264h       	;. d B
	ram:40d7 d0             ret nc               	;.
	ram:40d8 cd c3 42       call sub_42c3h       	;. . B
	ram:40db cd 65 6e       call sub_6e65h       	;. e n
	ram:40de cd 5b 6e       call sub_6e5bh       	;. [ n
	ram:40e1 30 de          jr nc,l40c1h         	;0 .
	ram:40e3 cd b8 42       call l42b8h          	;. . B
	ram:40e6 18 ec          jr l40d4h            	;. .
l40e8h:
	ram:40e8 fe c1          cp 0c1h              	;. .
	ram:40ea ca 0c 40       jp z,l400ch          	;. . @
	ram:40ed fe 93          cp 093h              	;. .
	ram:40ef 20 3c          jr nz,l412dh         	;<
	ram:40f1 3e 08          ld a,008h            	;> .
	ram:40f3 32 b1 8b       ld (08bb1h),a        	;2 . .
	ram:40f6 21 b2 8b       ld hl,08bb2h         	;! . .
	ram:40f9 cb 7e          bit 7,(hl)           	;. ~
	ram:40fb 20 2a          jr nz,l4127h         	;*
	ram:40fd cb 76          bit 6,(hl)           	;. v
l40ffh:
	ram:40ff 28 11          jr z,l4112h          	;( .
	ram:4101 cb b6          res 6,(hl)           	;. .
	ram:4103 cb fe          set 7,(hl)           	;. .
	ram:4105 cd ee 4b       call sub_4beeh       	;. . K
	ram:4108 dd cb 02 b6    res 6,(ix+002h)      	;. . . .
	ram:410c dd cb 02 fe    set 7,(ix+002h)      	;. . . .
	ram:4110 18 3e          jr l4150h            	;. >
l4112h:
	ram:4112 3e 0f          ld a,00fh            	;> .
	ram:4114 77             ld (hl),a            	;w
	ram:4115 cb fe          set 7,(hl)           	;. .
l4117h:
	ram:4117 cd 18 49       call sub_4918h       	;. . I
	ram:411a 3e 7b          ld a,07bh            	;> {
	ram:411c cd b9 47       call sub_47b9h       	;. . G
	ram:411f fd cb 0d e6    set 4,(iy+00dh)      	;. . . .
	ram:4123 fd cb 0d 9e    res 3,(iy+00dh)      	;. . . .
l4127h:
	ram:4127 3e 09          ld a,009h            	;> .
	ram:4129 32 b1 8b       ld (08bb1h),a        	;2 . .
	ram:412c c9             ret                  	;.
l412dh:
	ram:412d fe 8b          cp 08bh              	;. .
	ram:412f 20 3b          jr nz,l416ch         	;;
	ram:4131 3e 08          ld a,008h            	;> .
	ram:4133 32 b1 8b       ld (08bb1h),a        	;2 . .
	ram:4136 21 b2 8b       ld hl,08bb2h         	;! . .
	ram:4139 cb 76          bit 6,(hl)           	;. v
	ram:413b 20 ea          jr nz,l4127h         	;.
	ram:413d cb 7e          bit 7,(hl)           	;. ~
	ram:413f 28 24          jr z,l4165h          	;( $
	ram:4141 cb be          res 7,(hl)           	;. .
	ram:4143 cb f6          set 6,(hl)           	;. .
	ram:4145 cd ee 4b       call sub_4beeh       	;. . K
	ram:4148 dd cb 02 be    res 7,(ix+002h)      	;. . . .
	ram:414c dd cb 02 f6    set 6,(ix+002h)      	;. . . .
l4150h:
	ram:4150 3e 09          ld a,009h            	;> .
	ram:4152 32 b1 8b       ld (08bb1h),a        	;2 . .
	ram:4155 2a ed 81       ld hl,(081edh)       	;* . .
	ram:4158 11 fc ff       ld de,0fffch         	;. . .
	ram:415b 19             add hl,de            	;.
sub_415ch:
	ram:415c 2b             dec hl               	;+
	ram:415d 3a de 81       ld a,(081deh)        	;: . .
	ram:4160 77             ld (hl),a            	;w
	ram:4161 cd 5d 4a       call sub_4a5dh       	;. ] J
	ram:4164 c9             ret                  	;.
l4165h:
	ram:4165 3e 0f          ld a,00fh            	;> .
	ram:4167 77             ld (hl),a            	;w
	ram:4168 cb f6          set 6,(hl)           	;. .
	ram:416a 18 ab          jr l4117h            	;. .
l416ch:
	ram:416c fe c2          cp 0c2h              	;. .
	ram:416e 38 33          jr c,l41a3h          	;8 3
	ram:4170 fe cc          cp 0cch              	;. .
	ram:4172 30 2f          jr nc,l41a3h         	;0 /
	ram:4174 01 00 00       ld bc,00000h         	;. . .
	ram:4177 21 b2 8b       ld hl,08bb2h         	;! . .
	ram:417a cb 76          bit 6,(hl)           	;. v
	ram:417c 20 07          jr nz,l4185h         	;.
	ram:417e cb 7e          bit 7,(hl)           	;. ~
	ram:4180 c8             ret z                	;.
	ram:4181 ed 4b d1 81    ld bc,(081d1h)       	;. K . .
l4185h:
	ram:4185 23             inc hl               	;#
	ram:4186 fe c7          cp 0c7h              	;. .
	ram:4188 38 02          jr c,l418ch          	;8 .
	ram:418a d6 05          sub 005h             	;. .
l418ch:
	ram:418c d6 c2          sub 0c2h             	;. .
	ram:418e dd 86 02       add a,(ix+002h)      	;. . .
	ram:4191 e6 0f          and 00fh             	;. .
	ram:4193 87             add a,a              	;.
	ram:4194 cd 9e 41       call sub_419eh       	;. . A
	ram:4197 71             ld (hl),c            	;q
	ram:4198 23             inc hl               	;#
	ram:4199 70             ld (hl),b            	;p
	ram:419a cd bf 49       call sub_49bfh       	;. . I
	ram:419d c9             ret                  	;.
sub_419eh:
	ram:419e 5f             ld e,a               	;_
	ram:419f 16 00          ld d,000h            	;. .
	ram:41a1 19             add hl,de            	;.
	ram:41a2 c9             ret                  	;.
l41a3h:
	ram:41a3 fe 08          cp 008h              	;. .
	ram:41a5 ca 43 40       jp z,l4043h          	;. C @
	ram:41a8 21 05 80       ld hl,08005h         	;! . .
	ram:41ab be             cp (hl)              	;.
	ram:41ac c0             ret nz               	;.
	ram:41ad 79             ld a,c               	;y
	ram:41ae b7             or a                 	;.
	ram:41af c8             ret z                	;.
	ram:41b0 fe 7b          cp 07bh              	;. {
	ram:41b2 d0             ret nc               	;.
	ram:41b3 fe 5b          cp 05bh              	;. [
	ram:41b5 38 02          jr c,l41b9h          	;8 .
	ram:41b7 d6 20          sub 020h             	;.  
l41b9h:
	ram:41b9 fe 41          cp 041h              	;. A
	ram:41bb d8             ret c                	;.
	ram:41bc d6 41          sub 041h             	;. A
	ram:41be 87             add a,a              	;.
	ram:41bf 21 dd 42       ld hl,l42ddh         	;! . B
	ram:41c2 5f             ld e,a               	;_
	ram:41c3 16 00          ld d,000h            	;. .
	ram:41c5 19             add hl,de            	;.
	ram:41c6 cd 33 00       call 00033h          	;. 3 .
	ram:41c9 22 d1 81       ld (081d1h),hl       	;" . .
	ram:41cc cd 27 42       call sub_4227h       	;. ' B
	ram:41cf c3 b5 42       jp l42b5h            	;. . B
	ram:41d2 fd cb 0c a6    res 4,(iy+00ch)      	;. . . .
	ram:41d6 cd d6 01       call 001d6h          	;. . .
	ram:41d9 fd cb 12 be    res 7,(iy+012h)      	;. . . .
	ram:41dd 3e 0f          ld a,00fh            	;> .
	ram:41df 32 b2 8b       ld (08bb2h),a        	;2 . .
	ram:41e2 c9             ret                  	;.
	ram:41e3 38 04          jr c,l41e9h          	;8 .
	ram:41e5 cd 5b 6f       call sub_6f5bh       	;. [ o
	ram:41e8 c9             ret                  	;.
l41e9h:
	ram:41e9 fd cb 0d a6    res 4,(iy+00dh)      	;. . . .
	ram:41ed fd cb 0d de    set 3,(iy+00dh)      	;. . . .
	ram:41f1 3e 0f          ld a,00fh            	;> .
	ram:41f3 32 b2 8b       ld (08bb2h),a        	;2 . .
	ram:41f6 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:41f9 e5             push hl              	;.
	ram:41fa cd 2a 42       call sub_422ah       	;. * B
	ram:41fd e1             pop hl               	;.
	ram:41fe 22 0c 80       ld (0800ch),hl       	;" . .
	ram:4201 c3 b8 42       jp l42b8h            	;. . B
sub_4204h:
	ram:4204 97             sub a                	;.
	ram:4205 32 0d 80       ld (0800dh),a        	;2 . .
	ram:4208 3e 20          ld a,020h            	;>  
	ram:420a cd 2d 6c       call sub_6c2dh       	;. - l
	ram:420d 2a d1 81       ld hl,(081d1h)       	;* . .
	ram:4210 7e             ld a,(hl)            	;~
	ram:4211 23             inc hl               	;#
	ram:4212 cd db 6c       call sub_6cdbh       	;. . l
	ram:4215 e6 60          and 060h             	;. `
	ram:4217 fe 60          cp 060h              	;. `
	ram:4219 20 05          jr nz,l4220h         	;.
	ram:421b 3e 28          ld a,028h            	;> (
	ram:421d cd 2d 6c       call sub_6c2dh       	;. - l
l4220h:
	ram:4220 cd 84 70       call sub_7084h       	;. . p
	ram:4223 c9             ret                  	;.
sub_4224h:
	ram:4224 cd 46 42       call sub_4246h       	;. F B
sub_4227h:
	ram:4227 cd c6 70       call sub_70c6h       	;. . p
sub_422ah:
	ram:422a 2a d1 81       ld hl,(081d1h)       	;* . .
	ram:422d e5             push hl              	;.
l422eh:
	ram:422e cd 04 42       call sub_4204h       	;. . B
	ram:4231 cd 65 6e       call sub_6e65h       	;. e n
	ram:4234 cd 5b 6e       call sub_6e5bh       	;. [ n
	ram:4237 30 08          jr nc,l4241h         	;0 .
	ram:4239 cd 64 42       call sub_4264h       	;. d B
	ram:423c 38 f0          jr c,l422eh          	;8 .
	ram:423e cd a7 70       call sub_70a7h       	;. . p
l4241h:
	ram:4241 e1             pop hl               	;.
	ram:4242 22 d1 81       ld (081d1h),hl       	;" . .
	ram:4245 c9             ret                  	;.
sub_4246h:
	ram:4246 21 9d 5a       ld hl,l5a9dh         	;! . Z
	ram:4249 22 d1 81       ld (081d1h),hl       	;" . .
	ram:424c c9             ret                  	;.
	ram:424d cd a3 21       call 021a3h          	;. . !
	ram:4250 2a d1 81       ld hl,(081d1h)       	;* . .
	ram:4253 3e 03          ld a,003h            	;> .
	ram:4255 be             cp (hl)              	;.
	ram:4256 20 01          jr nz,l4259h         	;.
	ram:4258 23             inc hl               	;#
l4259h:
	ram:4259 23             inc hl               	;#
	ram:425a 11 82 80       ld de,08082h         	;. . .
	ram:425d 97             sub a                	;.
l425eh:
	ram:425e ed a0          ldi                  	;. .
	ram:4260 be             cp (hl)              	;.
	ram:4261 20 fb          jr nz,l425eh         	;.
	ram:4263 c9             ret                  	;.
sub_4264h:
	ram:4264 cd 7a 42       call sub_427ah       	;. z B
	ram:4267 d0             ret nc               	;.
	ram:4268 23             inc hl               	;#
	ram:4269 23             inc hl               	;#
	ram:426a 97             sub a                	;.
	ram:426b 01 0a 00       ld bc,0000ah         	;. . .
	ram:426e ed b1          cpir                 	;. .
	ram:4270 20 05          jr nz,l4277h         	;.
	ram:4272 22 d1 81       ld (081d1h),hl       	;" . .
	ram:4275 37             scf                  	;7
	ram:4276 c9             ret                  	;.
l4277h:
	ram:4277 c3 62 04       jp 00462h            	;. b .
sub_427ah:
	ram:427a 2a d1 81       ld hl,(081d1h)       	;* . .
	ram:427d 11 43 60       ld de,06043h         	;. C `
	ram:4280 cd 8e 00       call 0008eh          	;. . .
	ram:4283 c9             ret                  	;.
sub_4284h:
	ram:4284 ed 5b d1 81    ld de,(081d1h)       	;. [ . .
	ram:4288 21 9d 5a       ld hl,l5a9dh         	;! . Z
	ram:428b cd 8e 00       call 0008eh          	;. . .
	ram:428e eb             ex de,hl             	;.
	ram:428f c9             ret                  	;.
sub_4290h:
	ram:4290 cd 84 42       call sub_4284h       	;. . B
	ram:4293 d0             ret nc               	;.
	ram:4294 2b             dec hl               	;+
	ram:4295 2b             dec hl               	;+
	ram:4296 97             sub a                	;.
	ram:4297 01 0c 00       ld bc,0000ch         	;. . .
	ram:429a ed b9          cpdr                 	;. .
	ram:429c 20 d9          jr nz,l4277h         	;.
	ram:429e be             cp (hl)              	;.
	ram:429f 28 01          jr z,l42a2h          	;( .
	ram:42a1 23             inc hl               	;#
l42a2h:
	ram:42a2 23             inc hl               	;#
	ram:42a3 22 d1 81       ld (081d1h),hl       	;" . .
	ram:42a6 37             scf                  	;7
	ram:42a7 c9             ret                  	;.
l42a8h:
	ram:42a8 e5             push hl              	;.
	ram:42a9 2a 30 8b       ld hl,(08b30h)       	;* 0 .
	ram:42ac 2d             dec l                	;-
	ram:42ad 26 00          ld h,000h            	;& .
	ram:42af 22 0c 80       ld (0800ch),hl       	;" . .
	ram:42b2 e1             pop hl               	;.
	ram:42b3 18 03          jr l42b8h            	;. .
l42b5h:
	ram:42b5 cd c6 70       call sub_70c6h       	;. . p
l42b8h:
	ram:42b8 cd e4 01       call 001e4h          	;. . .
	ram:42bb 97             sub a                	;.
	ram:42bc 32 0d 80       ld (0800dh),a        	;2 . .
	ram:42bf 3e 05          ld a,005h            	;> .
	ram:42c1 18 06          jr l42c9h            	;. .
sub_42c3h:
	ram:42c3 97             sub a                	;.
	ram:42c4 32 0d 80       ld (0800dh),a        	;2 . .
	ram:42c7 3e 20          ld a,020h            	;>  
l42c9h:
	ram:42c9 cd 58 6b       call sub_6b58h       	;. X k
	ram:42cc c9             ret                  	;.
	ram:42cd 21 b1 8b       ld hl,08bb1h         	;! . .
	ram:42d0 3e 09          ld a,009h            	;> .
	ram:42d2 77             ld (hl),a            	;w
	ram:42d3 23             inc hl               	;#
	ram:42d4 3e 0f          ld a,00fh            	;> .
	ram:42d6 77             ld (hl),a            	;w
	ram:42d7 23             inc hl               	;#
	ram:42d8 87             add a,a              	;.
	ram:42d9 47             ld b,a               	;G
	ram:42da c3 b8 21       jp 021b8h            	;. . !
l42ddh:
	ram:42dd 9d             sbc a,l              	;.
	ram:42de 5a             ld e,d               	;Z
	ram:42df d4 5a dc       call nc,0dc5ah       	;. Z .
	ram:42e2 5a             ld e,d               	;Z
	ram:42e3 3c             inc a                	;<
	ram:42e4 5b             ld e,e               	;[
	ram:42e5 b7             or a                 	;.
	ram:42e6 5b             ld e,e               	;[
	ram:42e7 f6 5b          or 05bh              	;. [
	ram:42e9 48             ld c,b               	;H
	ram:42ea 5c             ld e,h               	;\
	ram:42eb 6b             ld l,e               	;k
	ram:42ec 5c             ld e,h               	;\
	ram:42ed 79             ld a,c               	;y
	ram:42ee 5c             ld e,h               	;\
	ram:42ef b0             or b                 	;.
	ram:42f0 5c             ld e,h               	;\
	ram:42f1 b0             or b                 	;.
	ram:42f2 5c             ld e,h               	;\
	ram:42f3 b0             or b                 	;.
	ram:42f4 5c             ld e,h               	;\
	ram:42f5 f9             ld sp,hl             	;.
	ram:42f6 5c             ld e,h               	;\
	ram:42f7 1c             inc e                	;.
	ram:42f8 5d             ld e,l               	;]
	ram:42f9 3f             ccf                  	;?
	ram:42fa 5d             ld e,l               	;]
	ram:42fb 5a             ld e,d               	;Z
	ram:42fc 5d             ld e,l               	;]
	ram:42fd d1             pop de               	;.
	ram:42fe 5d             ld e,l               	;]
	ram:42ff d1             pop de               	;.
	ram:4300 5d             ld e,l               	;]
	ram:4301 52             ld d,d               	;R
	ram:4302 5e             ld e,(hl)            	;^
	ram:4303 07             rlca                 	;.
	ram:4304 5f             ld e,a               	;_
	ram:4305 33             inc sp               	;3
	ram:4306 5f             ld e,a               	;_
	ram:4307 3a 5f 47       ld a,(l475eh+1)      	;: _ G
	ram:430a 5f             ld e,a               	;_
	ram:430b 4e             ld c,(hl)            	;N
	ram:430c 5f             ld e,a               	;_
	ram:430d 5b             ld e,e               	;[
	ram:430e 5f             ld e,a               	;_
	ram:430f 5b             ld e,e               	;[
	ram:4310 5f             ld e,a               	;_
	ram:4311 21 a2 43       ld hl,l43a2h         	;! . C
	ram:4314 cd 5b 06       call 0065bh          	;. [ .
	ram:4317 fd cb 0c 7e    bit 7,(iy+00ch)      	;. . . ~
	ram:431b 20 36          jr nz,l4353h         	;6
	ram:431d fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:4321 c0             ret nz               	;.
	ram:4322 cd 76 04       call 00476h          	;. v .
	ram:4325 cd 1f 28       call 0281fh          	;. . (
	ram:4328 fd cb 01 a6    res 4,(iy+001h)      	;. . . .
	ram:432c cd 8f 3c       call 03c8fh          	;. . <
	ram:432f 21 00 08       ld hl,00800h         	;! . .
	ram:4332 22 89 81       ld (08189h),hl       	;" . .
	ram:4335 2a 15 8b       ld hl,(08b15h)       	;* . .
	ram:4338 22 8a 81       ld (0818ah),hl       	;" . .
	ram:433b 21 6b 8a       ld hl,08a6bh         	;! k .
	ram:433e 11 df 80       ld de,080dfh         	;. . .
	ram:4341 01 a8 00       ld bc,000a8h         	;. . .
	ram:4344 ed b0          ldir                 	;. .
	ram:4346 2a 13 8b       ld hl,(08b13h)       	;* . .
	ram:4349 22 87 81       ld (08187h),hl       	;" . .
	ram:434c cd 49 72       call sub_7249h       	;. I r
	ram:434f cd 9b 3c       call 03c9bh          	;. . <
	ram:4352 c9             ret                  	;.
l4353h:
	ram:4353 fd cb 01 a6    res 4,(iy+001h)      	;. . . .
l4357h:
	ram:4357 fd cb 0c be    res 7,(iy+00ch)      	;. . . .
	ram:435b 21 00 08       ld hl,00800h         	;! . .
	ram:435e 22 2f 8b       ld (08b2fh),hl       	;" / .
	ram:4361 cd 33 70       call sub_7033h       	;. 3 p
	ram:4364 cd a3 45       call sub_45a3h       	;. . E
	ram:4367 fd cb 0c ae    res 5,(iy+00ch)      	;. . . .
	ram:436b 21 55 8a       ld hl,08a55h         	;! U .
	ram:436e e7             rst 20h              	;.
	ram:436f cd a1 3c       call 03ca1h          	;. . <
	ram:4372 da 45 0a       jp c,00a45h          	;. E .
	ram:4375 cd a7 3c       call 03ca7h          	;. . <
	ram:4378 21 56 8a       ld hl,08a56h         	;! V .
	ram:437b 46             ld b,(hl)            	;F
l437ch:
	ram:437c 23             inc hl               	;#
	ram:437d 7e             ld a,(hl)            	;~
	ram:437e e5             push hl              	;.
	ram:437f cd ad 3c       call 03cadh          	;. . <
	ram:4382 28 08          jr z,l438ch          	;( .
	ram:4384 e1             pop hl               	;.
	ram:4385 10 f5          djnz l437ch          	;. .
	ram:4387 3e 3d          ld a,03dh            	;> =
	ram:4389 cd ad 3c       call 03cadh          	;. . <
l438ch:
	ram:438c ca 45 0a       jp z,00a45h          	;. E .
	ram:438f 3a 56 8a       ld a,(08a56h)        	;: V .
	ram:4392 3c             inc a                	;<
	ram:4393 5f             ld e,a               	;_
	ram:4394 50             ld d,b               	;P
	ram:4395 2a 3a 83       ld hl,(0833ah)       	;* : .
	ram:4398 19             add hl,de            	;.
	ram:4399 22 3a 83       ld (0833ah),hl       	;" : .
	ram:439c cd b3 3c       call 03cb3h          	;. . <
	ram:439f c3 2b 00       jp 0002bh            	;. + .
l43a2h:
	ram:43a2 af             xor a                	;.
	ram:43a3 43             ld b,e               	;C
	ram:43a4 18 45          jr 71                	;. E
	ram:43a6 35             dec (hl)             	;5
	ram:43a7 45             ld b,l               	;E
	ram:43a8 28 43          jr z,l43edh          	;( C
	ram:43aa 43             ld b,e               	;C
	ram:43ab 45             ld b,l               	;E
	ram:43ac 5d             ld e,l               	;]
	ram:43ad 45             ld b,l               	;E
	ram:43ae 0e fe          ld c,0feh            	;. .
	ram:43b0 06 c2          ld b,0c2h            	;. .
	ram:43b2 38 44          jr c,70              	;8 D
	ram:43b4 21 00 00       ld hl,00000h         	;! . .
	ram:43b7 22 17 8b       ld (08b17h),hl       	;" . .
	ram:43ba cd d2 01       call 001d2h          	;. . .
	ram:43bd cd b9 3c       call 03cb9h          	;. . <
	ram:43c0 cd bf 3c       call 03cbfh          	;. . <
	ram:43c3 28 2a          jr z,l43efh          	;( *
	ram:43c5 cd 65 6e       call sub_6e65h       	;. e n
	ram:43c8 cd c5 3c       call 03cc5h          	;. . <
	ram:43cb cd cb 3c       call 03ccbh          	;. . <
	ram:43ce cd d1 3c       call 03cd1h          	;. . <
	ram:43d1 cd 2e 26       call 0262eh          	;. . &
	ram:43d4 d7             rst 10h              	;.
	ram:43d5 e5             push hl              	;.
	ram:43d6 cd 29 26       call 02629h          	;. ) &
	ram:43d9 d7             rst 10h              	;.
	ram:43da 11 fc ff       ld de,0fffch         	;. . .
	ram:43dd 19             add hl,de            	;.
	ram:43de 36 23          ld (hl),023h         	;6 #
	ram:43e0 e1             pop hl               	;.
	ram:43e1 19             add hl,de            	;.
	ram:43e2 36 21          ld (hl),021h         	;6 !
	ram:43e4 cd d7 3c       call 03cd7h          	;. . <
	ram:43e7 cd cb 3c       call 03ccbh          	;. . <
	ram:43ea cd 40 0a       call 00a40h          	;. @ .
l43edh:
	ram:43ed 18 06          jr l43f5h            	;. .
l43efh:
	ram:43ef cd cb 3c       call 03ccbh          	;. . <
	ram:43f2 cd d1 3c       call 03cd1h          	;. . <
l43f5h:
	ram:43f5 97             sub a                	;.
	ram:43f6 32 06 80       ld (08006h),a        	;2 . .
	ram:43f9 fd cb 0c f6    set 6,(iy+00ch)      	;. . . .
	ram:43fd fd cb 00 ee    set 5,(iy+000h)      	;. . . .
	ram:4401 cd ad 45       call sub_45adh       	;. . E
	ram:4404 cd dd 3c       call 03cddh          	;. . <
	ram:4407 fd cb 0c b6    res 6,(iy+00ch)      	;. . . .
	ram:440b cd 1f 28       call 0281fh          	;. . (
	ram:440e fd cb 02 56    bit 2,(iy+002h)      	;. . . V
	ram:4412 28 10          jr z,l4424h          	;( .
	ram:4414 cd a3 45       call sub_45a3h       	;. . E
	ram:4417 21 32 08       ld hl,00832h         	;! 2 .
	ram:441a cd 96 04       call 00496h          	;. . .
	ram:441d 3e cc          ld a,0cch            	;> .
	ram:441f 0e 00          ld c,000h            	;. .
	ram:4421 c3 a4 05       jp 005a4h            	;. . .
l4424h:
	ram:4424 cd 0b 00       call 0000bh          	;. . .
	ram:4427 28 05          jr z,l442eh          	;( .
	ram:4429 cd e3 3c       call 03ce3h          	;. . <
	ram:442c 18 07          jr l4435h            	;. .
l442eh:
	ram:442e fd cb 00 6e    bit 5,(iy+000h)      	;. . . n
	ram:4432 c4 e9 3c       call nz,03ce9h       	;. . <
l4435h:
	ram:4435 c3 a3 45       jp sub_45a3h         	;. . E
	ram:4438 fd cb 01 5e    bit 3,(iy+001h)      	;. . . ^
	ram:443c 28 16          jr z,l4454h          	;( .
	ram:443e fe 02          cp 002h              	;. .
	ram:4440 ca ef 3c       jp z,03cefh          	;. . <
	ram:4443 fe 01          cp 001h              	;. .
	ram:4445 ca f5 3c       jp z,03cf5h          	;. . <
	ram:4448 fe 03          cp 003h              	;. .
	ram:444a ca fb 3c       jp z,03cfbh          	;. . <
	ram:444d fe 04          cp 004h              	;. .
	ram:444f ca 01 3d       jp z,03d01h          	;. . =
	ram:4452 18 1e          jr l4472h            	;. .
l4454h:
	ram:4454 fe 02          cp 002h              	;. .
	ram:4456 ca 07 3d       jp z,03d07h          	;. . =
	ram:4459 fe 01          cp 001h              	;. .
	ram:445b ca 0d 3d       jp z,03d0dh          	;. . =
	ram:445e fe 03          cp 003h              	;. .
	ram:4460 ca 13 3d       jp z,03d13h          	;. . =
	ram:4463 fe 04          cp 004h              	;. .
	ram:4465 ca 19 3d       jp z,03d19h          	;. . =
	ram:4468 fe 87          cp 087h              	;. .
	ram:446a ca 1f 3d       jp z,03d1fh          	;. . =
	ram:446d fe 88          cp 088h              	;. .
	ram:446f ca 25 3d       jp z,03d25h          	;. % =
l4472h:
	ram:4472 fe 0a          cp 00ah              	;. .
	ram:4474 ca 2b 3d       jp z,03d2bh          	;. + =
	ram:4477 fe 09          cp 009h              	;. .
	ram:4479 20 0a          jr nz,l4485h         	;.
	ram:447b fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:447f cd 31 3d       call 03d31h          	;. 1 =
	ram:4482 c3 37 3d       jp 03d37h            	;. 7 =
l4485h:
	ram:4485 fe 08          cp 008h              	;. .
	ram:4487 20 1e          jr nz,l44a7h         	;.
	ram:4489 cd bf 3c       call 03cbfh          	;. . <
	ram:448c 20 09          jr nz,l4497h         	;.
	ram:448e cd 33 70       call sub_7033h       	;. 3 p
	ram:4491 fd cb 01 9e    res 3,(iy+001h)      	;. . . .
	ram:4495 18 06          jr l449dh            	;. .
l4497h:
	ram:4497 cd 3d 3d       call 03d3dh          	;. = =
	ram:449a cd a7 70       call sub_70a7h       	;. . p
l449dh:
	ram:449d cd 43 3d       call 03d43h          	;. C =
	ram:44a0 fd cb 0c ee    set 5,(iy+00ch)      	;. . . .
	ram:44a4 c3 d2 01       jp 001d2h            	;. . .
l44a7h:
	ram:44a7 fe 17          cp 017h              	;. .
	ram:44a9 ca 49 3d       jp z,03d49h          	;. I =
	ram:44ac fe 77          cp 077h              	;. w
	ram:44ae c2 dd 44       jp nz,l44ddh         	;. . D
	ram:44b1 cd 3d 3d       call 03d3dh          	;. = =
	ram:44b4 fd cb 01 9e    res 3,(iy+001h)      	;. . . .
	ram:44b8 fd cb 0c ee    set 5,(iy+00ch)      	;. . . .
	ram:44bc cd d2 01       call 001d2h          	;. . .
	ram:44bf cd 2e 26       call 0262eh          	;. . &
	ram:44c2 cd a1 3c       call 03ca1h          	;. . <
	ram:44c5 38 0d          jr c,l44d4h          	;8 .
	ram:44c7 fd cb 0c ae    res 5,(iy+00ch)      	;. . . .
	ram:44cb cd a7 3c       call 03ca7h          	;. . <
	ram:44ce cd b9 3c       call 03cb9h          	;. . <
	ram:44d1 c3 a7 70       jp sub_70a7h         	;. . p
l44d4h:
	ram:44d4 cd 43 3d       call 03d43h          	;. C =
	ram:44d7 cd a7 70       call sub_70a7h       	;. . p
	ram:44da c3 45 0a       jp 00a45h            	;. E .
l44ddh:
	ram:44dd 79             ld a,c               	;y
	ram:44de fe 1c          cp 01ch              	;. .
	ram:44e0 cc ea 01       call z,001eah        	;. . .
	ram:44e3 b7             or a                 	;.
	ram:44e4 c8             ret z                	;.
	ram:44e5 fd cb 01 9e    res 3,(iy+001h)      	;. . . .
	ram:44e9 fd cb 0c 6e    bit 5,(iy+00ch)      	;. . . n
	ram:44ed 28 23          jr z,l4512h          	;( #
	ram:44ef fd cb 0e 7e    bit 7,(iy+00eh)      	;. . . ~
	ram:44f3 20 19          jr nz,l450eh         	;.
	ram:44f5 fd cb 10 7e    bit 7,(iy+010h)      	;. . . ~
	ram:44f9 fd cb 10 be    res 7,(iy+010h)      	;. . . .
	ram:44fd 20 09          jr nz,l4508h         	;.
	ram:44ff 21 b6 45       ld hl,l45b6h         	;! . E
	ram:4502 cd 77 30       call 03077h          	;. w 0
	ram:4505 79             ld a,c               	;y
	ram:4506 28 06          jr z,l450eh          	;( .
l4508h:
	ram:4508 21 aa 30       ld hl,030aah         	;! . 0
	ram:450b cd 4f 3d       call 03d4fh          	;. O =
l450eh:
	ram:450e fd cb 0c ae    res 5,(iy+00ch)      	;. . . .
l4512h:
	ram:4512 cd 55 3d       call 03d55h          	;. U =
	ram:4515 c3 5b 3d       jp 03d5bh            	;. [ =
	ram:4518 cd 19 72       call sub_7219h       	;. . r
	ram:451b fd cb 01 56    bit 2,(iy+001h)      	;. . . V
	ram:451f 28 10          jr z,l4531h          	;( .
	ram:4521 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:4524 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
	ram:4528 b7             or a                 	;.
	ram:4529 ed 52          sbc hl,de            	;. R
	ram:452b 22 17 8b       ld (08b17h),hl       	;" . .
	ram:452e cd cb 3c       call 03ccbh          	;. . <
l4531h:
	ram:4531 cd d1 3c       call 03cd1h          	;. . <
	ram:4534 c9             ret                  	;.
	ram:4535 fd cb 0c 76    bit 6,(iy+00ch)      	;. . . v
	ram:4539 cc 1f 28       call z,0281fh        	;. . (
	ram:453c 3a 50 83       ld a,(08350h)        	;: P .
	ram:453f 32 51 83       ld (08351h),a        	;2 Q .
	ram:4542 c9             ret                  	;.
	ram:4543 cd 8f 3c       call 03c8fh          	;. . <
	ram:4546 cd 33 70       call sub_7033h       	;. 3 p
	ram:4549 cd a3 45       call sub_45a3h       	;. . E
	ram:454c fd cb 0c ae    res 5,(iy+00ch)      	;. . . .
	ram:4550 cd 2e 26       call 0262eh          	;. . &
	ram:4553 cd a1 3c       call 03ca1h          	;. . <
	ram:4556 da 45 0a       jp c,00a45h          	;. E .
	ram:4559 cd b3 3c       call 03cb3h          	;. . <
	ram:455c c9             ret                  	;.
	ram:455d 38 1b          jr c,l457ah          	;8 .
	ram:455f 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:4562 80             add a,b              	;.
	ram:4563 d6 07          sub 007h             	;. .
	ram:4565 fe 01          cp 001h              	;. .
	ram:4567 f8             ret m                	;.
	ram:4568 47             ld b,a               	;G
	ram:4569 21 0c 80       ld hl,0800ch         	;! . .
l456ch:
	ram:456c cd 06 6f       call sub_6f06h       	;. . o
	ram:456f fd cb 01 5e    bit 3,(iy+001h)      	;. . . ^
	ram:4573 c4 6d 3d       call nz,03d6dh       	;. m =
	ram:4576 35             dec (hl)             	;5
	ram:4577 10 f3          djnz l456ch          	;. .
	ram:4579 c9             ret                  	;.
l457ah:
	ram:457a cd 73 3d       call 03d73h          	;. s =
	ram:457d cd 9d 72       call sub_729dh       	;. . r
	ram:4580 c3 37 3d       jp 03d37h            	;. 7 =
	ram:4583 cd 2e 26       call 0262eh          	;. . &
	ram:4586 21 00 00       ld hl,00000h         	;! . .
	ram:4589 cd 4a 2a       call 02a4ah          	;. J *
	ram:458c cd 29 26       call 02629h          	;. ) &
	ram:458f 21 00 00       ld hl,00000h         	;! . .
	ram:4592 22 17 8b       ld (08b17h),hl       	;" . .
	ram:4595 cd 4a 2a       call 02a4ah          	;. J *
	ram:4598 21 a2 43       ld hl,l43a2h         	;! . C
	ram:459b cd 5b 06       call 0065bh          	;. [ .
	ram:459e 3e 01          ld a,001h            	;> .
	ram:45a0 32 9a 81       ld (0819ah),a        	;2 . .
sub_45a3h:
	ram:45a3 cd 29 26       call 02629h          	;. ) &
	ram:45a6 cd d7 3c       call 03cd7h          	;. . <
	ram:45a9 fd cb 0c b6    res 6,(iy+00ch)      	;. . . .
sub_45adh:
	ram:45ad fd cb 0c ee    set 5,(iy+00ch)      	;. . . .
	ram:45b1 fd cb 05 a6    res 4,(iy+005h)      	;. . . .
	ram:45b5 c9             ret                  	;.
l45b6h:
	ram:45b6 00             nop                  	;.
	ram:45b7 00             nop                  	;.
	ram:45b8 f6 13          or 013h              	;. .
	ram:45ba 22 ac 00       ld (000ach),hl       	;" . .
	ram:45bd 50             ld d,b               	;P
	ram:45be 00             nop                  	;.
	ram:45bf 00             nop                  	;.
	ram:45c0 00             nop                  	;.
	ram:45c1 40             ld b,b               	;@
	ram:45c2 00             nop                  	;.
	ram:45c3 00             nop                  	;.
	ram:45c4 00             nop                  	;.
	ram:45c5 00             nop                  	;.
	ram:45c6 00             nop                  	;.
	ram:45c7 00             nop                  	;.
	ram:45c8 00             nop                  	;.
	ram:45c9 00             nop                  	;.
	ram:45ca 00             nop                  	;.
	ram:45cb 00             nop                  	;.
	ram:45cc 00             nop                  	;.
	ram:45cd 00             nop                  	;.
	ram:45ce 00             nop                  	;.
	ram:45cf 00             nop                  	;.
	ram:45d0 00             nop                  	;.
	ram:45d1 21 0b 80       ld hl,0800bh         	;! . .
	ram:45d4 35             dec (hl)             	;5
	ram:45d5 c0             ret nz               	;.
	ram:45d6 fd cb 0c 5e    bit 3,(iy+00ch)      	;. . . ^
	ram:45da 28 60          jr z,l463ch          	;( `
	ram:45dc 18 16          jr l45f4h            	;. .
	ram:45de fd cb 0c 96    res 2,(iy+00ch)      	;. . . .
	ram:45e2 fd cb 0d 6e    bit 5,(iy+00dh)      	;. . . n
	ram:45e6 28 0c          jr z,l45f4h          	;( .
	ram:45e8 f5             push af              	;.
	ram:45e9 cd 5f 3c       call 03c5fh          	;. _ <
	ram:45ec cd 65 3c       call 03c65h          	;. e <
	ram:45ef f1             pop af               	;.
	ram:45f0 fd cb 0c 9e    res 3,(iy+00ch)      	;. . . .
l45f4h:
	ram:45f4 f5             push af              	;.
	ram:45f5 3e 46          ld a,046h            	;> F
	ram:45f7 32 0b 80       ld (0800bh),a        	;2 . .
	ram:45fa f1             pop af               	;.
	ram:45fb fd cb 0c 5e    bit 3,(iy+00ch)      	;. . . ^
	ram:45ff c8             ret z                	;.
	ram:4600 f5             push af              	;.
	ram:4601 fd cb 0d 6e    bit 5,(iy+00dh)      	;. . . n
	ram:4605 28 05          jr z,l460ch          	;( .
	ram:4607 cd 6b 3c       call 03c6bh          	;. k <
	ram:460a 18 1a          jr l4626h            	;. .
l460ch:
	ram:460c fd cb 0d 76    bit 6,(iy+00dh)      	;. . . v
	ram:4610 28 0e          jr z,l4620h          	;( .
	ram:4612 dd e5          push ix              	;. .
	ram:4614 dd 2a 2d 8b    ld ix,(08b2dh)       	;. * - .
	ram:4618 b7             or a                 	;.
	ram:4619 cd 33 66       call sub_6633h       	;. 3 f
	ram:461c dd e1          pop ix               	;. .
	ram:461e 18 06          jr l4626h            	;. .
l4620h:
	ram:4620 3a 0e 80       ld a,(0800eh)        	;: . .
	ram:4623 cd 58 6b       call sub_6b58h       	;. X k
l4626h:
	ram:4626 fd cb 0c 9e    res 3,(iy+00ch)      	;. . . .
	ram:462a f1             pop af               	;.
	ram:462b c9             ret                  	;.
	ram:462c fd cb 0c 66    bit 4,(iy+00ch)      	;. . . f
	ram:4630 c0             ret nz               	;.
	ram:4631 fd cb 0d 6e    bit 5,(iy+00dh)      	;. . . n
	ram:4635 c4 71 3c       call nz,03c71h       	;. q <
	ram:4638 fd cb 0c d6    set 2,(iy+00ch)      	;. . . .
l463ch:
	ram:463c fd cb 0c 56    bit 2,(iy+00ch)      	;. . . V
	ram:4640 c8             ret z                	;.
	ram:4641 f5             push af              	;.
	ram:4642 d5             push de              	;.
	ram:4643 e5             push hl              	;.
	ram:4644 3e 46          ld a,046h            	;> F
	ram:4646 32 0b 80       ld (0800bh),a        	;2 . .
	ram:4649 fd cb 0d 6e    bit 5,(iy+00dh)      	;. . . n
	ram:464d 28 05          jr z,l4654h          	;( .
	ram:464f cd 6b 3c       call 03c6bh          	;. k <
	ram:4652 18 5c          jr l46b0h            	;. \
l4654h:
	ram:4654 fd cb 0d 76    bit 6,(iy+00dh)      	;. . . v
	ram:4658 28 0e          jr z,l4668h          	;( .
	ram:465a dd e5          push ix              	;. .
	ram:465c dd 2a 2d 8b    ld ix,(08b2dh)       	;. * - .
	ram:4660 37             scf                  	;7
	ram:4661 cd 33 66       call sub_6633h       	;. 3 f
	ram:4664 dd e1          pop ix               	;. .
	ram:4666 18 48          jr l46b0h            	;. H
l4668h:
	ram:4668 fd cb 0c 5e    bit 3,(iy+00ch)      	;. . . ^
	ram:466c 20 07          jr nz,l4675h         	;.
	ram:466e cd d1 70       call sub_70d1h       	;. . p
	ram:4671 7e             ld a,(hl)            	;~
	ram:4672 32 0e 80       ld (0800eh),a        	;2 . .
l4675h:
	ram:4675 cd 7d 3c       call 03c7dh          	;. } <
	ram:4678 20 14          jr nz,l468eh         	;.
	ram:467a fd cb 05 66    bit 4,(iy+005h)      	;. . . f
	ram:467e 20 0a          jr nz,l468ah         	;.
	ram:4680 cd 83 3c       call 03c83h          	;. . <
	ram:4683 28 05          jr z,l468ah          	;( .
	ram:4685 1a             ld a,(de)            	;.
	ram:4686 fe d6          cp 0d6h              	;. .
	ram:4688 20 04          jr nz,l468eh         	;.
l468ah:
	ram:468a 3e e0          ld a,0e0h            	;> .
	ram:468c 18 1f          jr l46adh            	;. .
l468eh:
	ram:468e 3e d8          ld a,0d8h            	;> .
	ram:4690 fd cb 05 66    bit 4,(iy+005h)      	;. . . f
	ram:4694 28 02          jr z,l4698h          	;( .
	ram:4696 c6 04          add a,004h           	;. .
l4698h:
	ram:4698 fd 66 12       ld h,(iy+012h)       	;. f .
	ram:469b cb 5c          bit 3,h              	;. \
	ram:469d 28 03          jr z,l46a2h          	;( .
	ram:469f 3c             inc a                	;<
	ram:46a0 18 0b          jr l46adh            	;. .
l46a2h:
	ram:46a2 cb 64          bit 4,h              	;. d
	ram:46a4 28 07          jr z,l46adh          	;( .
	ram:46a6 c6 02          add a,002h           	;. .
	ram:46a8 cb 6c          bit 5,h              	;. l
	ram:46aa 28 01          jr z,l46adh          	;( .
	ram:46ac 3c             inc a                	;<
l46adh:
	ram:46ad cd 58 6b       call sub_6b58h       	;. X k
l46b0h:
	ram:46b0 fd cb 0c de    set 3,(iy+00ch)      	;. . . .
	ram:46b4 e1             pop hl               	;.
	ram:46b5 d1             pop de               	;.
	ram:46b6 f1             pop af               	;.
	ram:46b7 c9             ret                  	;.
l46b8h:
	ram:46b8 3a 82 80       ld a,(08082h)        	;: . .
	ram:46bb fe 16          cp 016h              	;. .
	ram:46bd 38 10          jr c,l46cfh          	;8 .
	ram:46bf fe 1b          cp 01bh              	;. .
	ram:46c1 28 29          jr z,l46ech          	;( )
	ram:46c3 3c             inc a                	;<
l46c4h:
	ram:46c4 32 82 80       ld (08082h),a        	;2 . .
	ram:46c7 21 c1 80       ld hl,080c1h         	;! . .
	ram:46ca 5f             ld e,a               	;_
	ram:46cb 16 00          ld d,000h            	;. .
	ram:46cd 19             add hl,de            	;.
	ram:46ce c9             ret                  	;.
l46cfh:
	ram:46cf f5             push af              	;.
	ram:46d0 af             xor a                	;.
	ram:46d1 d6 01          sub 001h             	;. .
	ram:46d3 3e 00          ld a,000h            	;> .
	ram:46d5 cd 41 3c       call 03c41h          	;. A <
	ram:46d8 30 19          jr nc,l46f3h         	;0 .
	ram:46da f1             pop af               	;.
	ram:46db cd 27 47       call sub_4727h       	;. ' G
	ram:46de d8             ret c                	;.
	ram:46df 32 82 80       ld (08082h),a        	;2 . .
	ram:46e2 c0             ret nz               	;.
l46e3h:
	ram:46e3 26 00          ld h,000h            	;& .
	ram:46e5 2e 01          ld l,001h            	;. .
	ram:46e7 22 83 80       ld (08083h),hl       	;" . .
	ram:46ea 18 cc          jr l46b8h            	;. .
l46ech:
	ram:46ec 3e 0c          ld a,00ch            	;> .
	ram:46ee 32 82 80       ld (08082h),a        	;2 . .
	ram:46f1 18 f0          jr l46e3h            	;. .
l46f3h:
	ram:46f3 c1             pop bc               	;.
	ram:46f4 c9             ret                  	;.
l46f5h:
	ram:46f5 3a 82 80       ld a,(08082h)        	;: . .
	ram:46f8 fe 17          cp 017h              	;. .
	ram:46fa 38 06          jr c,l4702h          	;8 .
	ram:46fc 28 22          jr z,l4720h          	;( "
	ram:46fe 3d             dec a                	;=
	ram:46ff c3 c4 46       jp l46c4h            	;. . F
l4702h:
	ram:4702 f5             push af              	;.
	ram:4703 af             xor a                	;.
	ram:4704 c6 01          add a,001h           	;. .
	ram:4706 3e 00          ld a,000h            	;> .
	ram:4708 cd 47 3c       call 03c47h          	;. G <
	ram:470b d2 f3 46       jp nc,l46f3h         	;. . F
	ram:470e f1             pop af               	;.
	ram:470f cd 70 47       call sub_4770h       	;. p G
	ram:4712 d8             ret c                	;.
	ram:4713 32 82 80       ld (08082h),a        	;2 . .
	ram:4716 c0             ret nz               	;.
l4717h:
	ram:4717 26 f0          ld h,0f0h            	;& .
	ram:4719 2e 01          ld l,001h            	;. .
	ram:471b 22 83 80       ld (08083h),hl       	;" . .
	ram:471e 18 d5          jr l46f5h            	;. .
l4720h:
	ram:4720 3e 11          ld a,011h            	;> .
	ram:4722 32 82 80       ld (08082h),a        	;2 . .
	ram:4725 18 f0          jr l4717h            	;. .
sub_4727h:
	ram:4727 fe 0c          cp 00ch              	;. .
	ram:4729 37             scf                  	;7
	ram:472a c8             ret z                	;.
	ram:472b fe 11          cp 011h              	;. .
	ram:472d 20 07          jr nz,l4736h         	;.
	ram:472f 21 d8 80       ld hl,080d8h         	;! . .
	ram:4732 3e 17          ld a,017h            	;> .
	ram:4734 b7             or a                 	;.
	ram:4735 c9             ret                  	;.
l4736h:
	ram:4736 fe 0a          cp 00ah              	;. .
	ram:4738 28 20          jr z,l475ah          	;(  
	ram:473a fe 00          cp 000h              	;. .
	ram:473c 20 03          jr nz,l4741h         	;.
	ram:473e 3e 01          ld a,001h            	;> .
	ram:4740 c9             ret                  	;.
l4741h:
	ram:4741 fe 01          cp 001h              	;. .
	ram:4743 20 03          jr nz,l4748h         	;.
	ram:4745 3e 0a          ld a,00ah            	;> .
	ram:4747 c9             ret                  	;.
l4748h:
	ram:4748 fe 12          cp 012h              	;. .
	ram:474a 20 03          jr nz,l474fh         	;.
	ram:474c 3e 06          ld a,006h            	;> .
	ram:474e c9             ret                  	;.
l474fh:
	ram:474f cd 4d 3c       call 03c4dh          	;. M <
	ram:4752 fe 04          cp 004h              	;. .
	ram:4754 28 04          jr z,l475ah          	;( .
	ram:4756 fe 02          cp 002h              	;. .
	ram:4758 20 04          jr nz,l475eh         	;.
l475ah:
	ram:475a d6 02          sub 002h             	;. .
	ram:475c bf             cp a                 	;.
	ram:475d c9             ret                  	;.
l475eh:
	ram:475e fe 06          cp 006h              	;. .
	ram:4760 20 03          jr nz,l4765h         	;.
	ram:4762 3e 0d          ld a,00dh            	;> .
	ram:4764 c9             ret                  	;.
l4765h:
	ram:4765 fe 0d          cp 00dh              	;. .
	ram:4767 20 03          jr nz,l476ch         	;.
	ram:4769 3e 04          ld a,004h            	;> .
	ram:476b c9             ret                  	;.
l476ch:
	ram:476c af             xor a                	;.
	ram:476d 3e 11          ld a,011h            	;> .
	ram:476f c9             ret                  	;.
sub_4770h:
	ram:4770 fe 12          cp 012h              	;. .
	ram:4772 37             scf                  	;7
	ram:4773 c8             ret z                	;.
	ram:4774 fe 0c          cp 00ch              	;. .
	ram:4776 20 07          jr nz,l477fh         	;.
	ram:4778 21 dc 80       ld hl,080dch         	;! . .
	ram:477b 3e 1b          ld a,01bh            	;> .
	ram:477d b7             or a                 	;.
	ram:477e c9             ret                  	;.
l477fh:
	ram:477f fe 0a          cp 00ah              	;. .
	ram:4781 20 03          jr nz,l4786h         	;.
	ram:4783 3e 01          ld a,001h            	;> .
	ram:4785 c9             ret                  	;.
l4786h:
	ram:4786 fe 00          cp 000h              	;. .
	ram:4788 28 19          jr z,l47a3h          	;( .
	ram:478a fe 01          cp 001h              	;. .
	ram:478c 20 03          jr nz,l4791h         	;.
	ram:478e 3e 00          ld a,000h            	;> .
	ram:4790 c9             ret                  	;.
l4791h:
	ram:4791 fe 11          cp 011h              	;. .
	ram:4793 20 03          jr nz,l4798h         	;.
	ram:4795 3e 08          ld a,008h            	;> .
	ram:4797 c9             ret                  	;.
l4798h:
	ram:4798 cd 4d 3c       call 03c4dh          	;. M <
	ram:479b fe 02          cp 002h              	;. .
	ram:479d 28 04          jr z,l47a3h          	;( .
	ram:479f fe 08          cp 008h              	;. .
	ram:47a1 20 04          jr nz,l47a7h         	;.
l47a3h:
	ram:47a3 c6 02          add a,002h           	;. .
	ram:47a5 bf             cp a                 	;.
	ram:47a6 c9             ret                  	;.
l47a7h:
	ram:47a7 fe 04          cp 004h              	;. .
	ram:47a9 20 03          jr nz,l47aeh         	;.
	ram:47ab 3e 0d          ld a,00dh            	;> .
	ram:47ad c9             ret                  	;.
l47aeh:
	ram:47ae fe 0d          cp 00dh              	;. .
	ram:47b0 20 03          jr nz,l47b5h         	;.
	ram:47b2 3e 06          ld a,006h            	;> .
	ram:47b4 c9             ret                  	;.
l47b5h:
	ram:47b5 af             xor a                	;.
	ram:47b6 3e 12          ld a,012h            	;> .
	ram:47b8 c9             ret                  	;.
sub_47b9h:
	ram:47b9 fd cb 11 de    set 3,(iy+011h)      	;. . . .
	ram:47bd 18 2c          jr l47ebh            	;. ,
	ram:47bf 3a fe 81       ld a,(081feh)        	;: . .
	ram:47c2 b7             or a                 	;.
	ram:47c3 c8             ret z                	;.
	ram:47c4 2a f0 81       ld hl,(081f0h)       	;* . .
	ram:47c7 11 34 54       ld de,l5434h         	;. 4 T
	ram:47ca cd 8e 00       call 0008eh          	;. . .
	ram:47cd d8             ret c                	;.
	ram:47ce 11 2f 55       ld de,l552fh         	;. / U
	ram:47d1 cd 8e 00       call 0008eh          	;. . .
	ram:47d4 d0             ret nc               	;.
sub_47d5h:
	ram:47d5 cd 18 49       call sub_4918h       	;. . I
	ram:47d8 cd fa 4d       call sub_4dfah       	;. . M
	ram:47db 18 0e          jr l47ebh            	;. .
	ram:47dd 3a de 81       ld a,(081deh)        	;: . .
	ram:47e0 fe 06          cp 006h              	;. .
	ram:47e2 38 05          jr c,l47e9h          	;8 .
	ram:47e4 d6 05          sub 005h             	;. .
	ram:47e6 32 de 81       ld (081deh),a        	;2 . .
l47e9h:
	ram:47e9 23             inc hl               	;#
	ram:47ea 7e             ld a,(hl)            	;~
l47ebh:
	ram:47eb cd fa 47       call sub_47fah       	;. . G
	ram:47ee c3 bf 49       jp sub_49bfh         	;. . I
	ram:47f1 cd fa 4d       call sub_4dfah       	;. . M
	ram:47f4 18 04          jr sub_47fah         	;. .
	ram:47f6 fd cb 11 de    set 3,(iy+011h)      	;. . . .
sub_47fah:
	ram:47fa 6f             ld l,a               	;o
	ram:47fb 26 00          ld h,000h            	;& .
	ram:47fd 29             add hl,hl            	;)
	ram:47fe 11 39 4f       ld de,04f39h         	;. 9 O
	ram:4801 19             add hl,de            	;.
	ram:4802 cd 33 00       call 00033h          	;. 3 .
	ram:4805 4e             ld c,(hl)            	;N
	ram:4806 cb 51          bit 2,c              	;. Q
	ram:4808 28 15          jr z,l481fh          	;( .
	ram:480a 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:480d e6 40          and 040h             	;. @
	ram:480f 28 07          jr z,l4818h          	;( .
	ram:4811 cb 49          bit 1,c              	;. I
	ram:4813 c4 24 49       call nz,sub_4924h    	;. $ I
	ram:4816 18 70          jr l4888h            	;. p
l4818h:
	ram:4818 cb 41          bit 0,c              	;. A
	ram:481a c4 18 49       call nz,sub_4918h    	;. . I
	ram:481d 18 47          jr l4866h            	;. G
l481fh:
	ram:481f cb 61          bit 4,c              	;. a
	ram:4821 28 14          jr z,l4837h          	;( .
	ram:4823 cd 09 4c       call sub_4c09h       	;. . L
	ram:4826 cc ee 4b       call z,sub_4beeh     	;. . K
	ram:4829 28 0c          jr z,l4837h          	;( .
	ram:482b dd 5e 00       ld e,(ix+000h)       	;. ^ .
	ram:482e dd 56 01       ld d,(ix+001h)       	;. V .
	ram:4831 1a             ld a,(de)            	;.
	ram:4832 cb 67          bit 4,a              	;. g
	ram:4834 c4 24 49       call nz,sub_4924h    	;. $ I
l4837h:
	ram:4837 fd cb 11 5e    bit 3,(iy+011h)      	;. . . ^
	ram:483b 28 10          jr z,l484dh          	;( .
	ram:483d fd cb 11 9e    res 3,(iy+011h)      	;. . . .
	ram:4841 cb 89          res 1,c              	;. .
	ram:4843 cb 41          bit 0,c              	;. A
	ram:4845 28 04          jr z,l484bh          	;( .
	ram:4847 cb c9          set 1,c              	;. .
	ram:4849 cb 81          res 0,c              	;. .
l484bh:
	ram:484b cb 99          res 3,c              	;. .
l484dh:
	ram:484d cb 41          bit 0,c              	;. A
	ram:484f c4 18 49       call nz,sub_4918h    	;. . I
	ram:4852 cb 49          bit 1,c              	;. I
	ram:4854 c4 24 49       call nz,sub_4924h    	;. $ I
	ram:4857 cb 59          bit 3,c              	;. Y
	ram:4859 20 0b          jr nz,l4866h         	;.
	ram:485b 18 2b          jr l4888h            	;. +
	ram:485d 21 4e 55       ld hl,l554eh         	;! N U
	ram:4860 3a fe 81       ld a,(081feh)        	;: . .
	ram:4863 b7             or a                 	;.
	ram:4864 28 22          jr z,l4888h          	;( "
l4866h:
	ram:4866 e5             push hl              	;.
	ram:4867 eb             ex de,hl             	;.
	ram:4868 2a fc 81       ld hl,(081fch)       	;* . .
	ram:486b 3a fe 81       ld a,(081feh)        	;: . .
	ram:486e b7             or a                 	;.
	ram:486f 28 06          jr z,l4877h          	;( .
	ram:4871 2b             dec hl               	;+
	ram:4872 3a de 81       ld a,(081deh)        	;: . .
	ram:4875 77             ld (hl),a            	;w
	ram:4876 23             inc hl               	;#
l4877h:
	ram:4877 73             ld (hl),e            	;s
	ram:4878 23             inc hl               	;#
	ram:4879 72             ld (hl),d            	;r
	ram:487a 23             inc hl               	;#
	ram:487b 97             sub a                	;.
	ram:487c 77             ld (hl),a            	;w
	ram:487d 23             inc hl               	;#
	ram:487e 23             inc hl               	;#
	ram:487f 22 fc 81       ld (081fch),hl       	;" . .
	ram:4882 21 fe 81       ld hl,081feh         	;! . .
	ram:4885 34             inc (hl)             	;4
	ram:4886 e1             pop hl               	;.
	ram:4887 c9             ret                  	;.
l4888h:
	ram:4888 e5             push hl              	;.
	ram:4889 eb             ex de,hl             	;.
	ram:488a 2a ed 81       ld hl,(081edh)       	;* . .
	ram:488d 3a ef 81       ld a,(081efh)        	;: . .
	ram:4890 b7             or a                 	;.
	ram:4891 28 06          jr z,l4899h          	;( .
	ram:4893 2b             dec hl               	;+
	ram:4894 3a de 81       ld a,(081deh)        	;: . .
	ram:4897 77             ld (hl),a            	;w
	ram:4898 23             inc hl               	;#
l4899h:
	ram:4899 73             ld (hl),e            	;s
	ram:489a 23             inc hl               	;#
	ram:489b 72             ld (hl),d            	;r
	ram:489c 23             inc hl               	;#
	ram:489d 97             sub a                	;.
	ram:489e fd cb 11 76    bit 6,(iy+011h)      	;. . . v
	ram:48a2 28 03          jr z,l48a7h          	;( .
	ram:48a4 3a 7c 82       ld a,(0827ch)        	;: | .
l48a7h:
	ram:48a7 77             ld (hl),a            	;w
	ram:48a8 e5             push hl              	;.
	ram:48a9 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:48ac fe 97          cp 097h              	;. .
	ram:48ae 20 10          jr nz,l48c0h         	;.
	ram:48b0 21 b1 8b       ld hl,08bb1h         	;! . .
	ram:48b3 ed 52          sbc hl,de            	;. R
	ram:48b5 20 09          jr nz,l48c0h         	;.
	ram:48b7 eb             ex de,hl             	;.
	ram:48b8 23             inc hl               	;#
	ram:48b9 7e             ld a,(hl)            	;~
	ram:48ba e6 c0          and 0c0h             	;. .
	ram:48bc e1             pop hl               	;.
	ram:48bd 77             ld (hl),a            	;w
	ram:48be 18 01          jr l48c1h            	;. .
l48c0h:
	ram:48c0 e1             pop hl               	;.
l48c1h:
	ram:48c1 23             inc hl               	;#
	ram:48c2 23             inc hl               	;#
	ram:48c3 22 ed 81       ld (081edh),hl       	;" . .
	ram:48c6 21 ef 81       ld hl,081efh         	;! . .
	ram:48c9 34             inc (hl)             	;4
	ram:48ca e1             pop hl               	;.
	ram:48cb c9             ret                  	;.
	ram:48cc e5             push hl              	;.
	ram:48cd 2a fc 81       ld hl,(081fch)       	;* . .
	ram:48d0 11 fc ff       ld de,0fffch         	;. . .
	ram:48d3 19             add hl,de            	;.
	ram:48d4 22 fc 81       ld (081fch),hl       	;" . .
	ram:48d7 21 fe 81       ld hl,081feh         	;! . .
	ram:48da 35             dec (hl)             	;5
	ram:48db e1             pop hl               	;.
	ram:48dc c9             ret                  	;.
	ram:48dd e5             push hl              	;.
	ram:48de 2a ed 81       ld hl,(081edh)       	;* . .
	ram:48e1 11 fc ff       ld de,0fffch         	;. . .
	ram:48e4 19             add hl,de            	;.
	ram:48e5 22 ed 81       ld (081edh),hl       	;" . .
	ram:48e8 21 ef 81       ld hl,081efh         	;! . .
	ram:48eb 35             dec (hl)             	;5
	ram:48ec e1             pop hl               	;.
	ram:48ed c9             ret                  	;.
	ram:48ee cd ee 4b       call sub_4beeh       	;. . K
	ram:48f1 dd 6e 00       ld l,(ix+000h)       	;. n .
	ram:48f4 dd 66 01       ld h,(ix+001h)       	;. f .
	ram:48f7 cb 66          bit 4,(hl)           	;. f
	ram:48f9 c9             ret                  	;.
sub_48fah:
	ram:48fa cd 18 49       call sub_4918h       	;. . I
	ram:48fd cd 24 49       call sub_4924h       	;. $ I
	ram:4900 cd a8 4b       call sub_4ba8h       	;. . K
	ram:4903 11 df ff       ld de,0ffdfh         	;. . .
	ram:4906 1a             ld a,(de)            	;.
	ram:4907 cb 87          res 0,a              	;. .
	ram:4909 12             ld (de),a            	;.
	ram:490a 3e 08          ld a,008h            	;> .
	ram:490c 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:490f 97             sub a                	;.
	ram:4910 32 dd 81       ld (081ddh),a        	;2 . .
sub_4913h:
	ram:4913 fd cb 08 b6    res 6,(iy+008h)      	;. . . .
	ram:4917 c9             ret                  	;.
sub_4918h:
	ram:4918 97             sub a                	;.
	ram:4919 32 fe 81       ld (081feh),a        	;2 . .
	ram:491c 11 f0 81       ld de,081f0h         	;. . .
	ram:491f ed 53 fc 81    ld (081fch),de       	;. S . .
	ram:4923 c9             ret                  	;.
sub_4924h:
	ram:4924 97             sub a                	;.
	ram:4925 32 ef 81       ld (081efh),a        	;2 . .
	ram:4928 11 e1 81       ld de,081e1h         	;. . .
	ram:492b ed 53 ed 81    ld (081edh),de       	;. S . .
	ram:492f c9             ret                  	;.
sub_4930h:
	ram:4930 f5             push af              	;.
	ram:4931 e5             push hl              	;.
	ram:4932 11 18 82       ld de,08218h         	;. . .
	ram:4935 2b             dec hl               	;+
	ram:4936 3a 57 83       ld a,(08357h)        	;: W .
	ram:4939 f5             push af              	;.
	ram:493a 7e             ld a,(hl)            	;~
	ram:493b 32 de 81       ld (081deh),a        	;2 . .
	ram:493e cd 6c 49       call sub_496ch       	;. l I
	ram:4941 f1             pop af               	;.
l4942h:
	ram:4942 32 57 83       ld (08357h),a        	;2 W .
	ram:4945 3a de 81       ld a,(081deh)        	;: . .
sub_4948h:
	ram:4948 3d             dec a                	;=
	ram:4949 20 11          jr nz,l495ch         	;.
	ram:494b 11 a3 63       ld de,l63a3h         	;. . c
	ram:494e 2a 18 82       ld hl,(08218h)       	;* . .
	ram:4951 cd 8e 00       call 0008eh          	;. . .
	ram:4954 20 06          jr nz,l495ch         	;.
	ram:4956 21 0a ff       ld hl,0ff0ah         	;! . .
	ram:4959 22 18 82       ld (08218h),hl       	;" . .
l495ch:
	ram:495c e1             pop hl               	;.
l495dh:
	ram:495d f1             pop af               	;.
	ram:495e c9             ret                  	;.
sub_495fh:
	ram:495f e5             push hl              	;.
	ram:4960 f5             push af              	;.
	ram:4961 11 0e 82       ld de,0820eh         	;. . .
	ram:4964 2b             dec hl               	;+
	ram:4965 cd 6c 49       call sub_496ch       	;. l I
	ram:4968 e1             pop hl               	;.
	ram:4969 7c             ld a,h               	;|
	ram:496a e1             pop hl               	;.
	ram:496b c9             ret                  	;.
sub_496ch:
	ram:496c fd cb 11 ae    res 5,(iy+011h)      	;. . . .
	ram:4970 d5             push de              	;.
	ram:4971 2b             dec hl               	;+
	ram:4972 7e             ld a,(hl)            	;~
	ram:4973 e6 1f          and 01fh             	;. .
	ram:4975 4f             ld c,a               	;O
	ram:4976 2b             dec hl               	;+
	ram:4977 56             ld d,(hl)            	;V
	ram:4978 2b             dec hl               	;+
	ram:4979 5e             ld e,(hl)            	;^
	ram:497a 3a ef 81       ld a,(081efh)        	;: . .
	ram:497d b7             or a                 	;.
	ram:497e 28 10          jr z,l4990h          	;( .
	ram:4980 7b             ld a,e               	;{
	ram:4981 fe 0b          cp 00bh              	;. .
	ram:4983 20 0b          jr nz,l4990h         	;.
	ram:4985 7a             ld a,d               	;z
	ram:4986 fe 51          cp 051h              	;. Q
	ram:4988 20 06          jr nz,l4990h         	;.
	ram:498a 11 17 51       ld de,l5117h         	;. . Q
	ram:498d 73             ld (hl),e            	;s
	ram:498e 23             inc hl               	;#
	ram:498f 72             ld (hl),d            	;r
l4990h:
	ram:4990 eb             ex de,hl             	;.
	ram:4991 cb 66          bit 4,(hl)           	;. f
	ram:4993 28 06          jr z,l499bh          	;( .
	ram:4995 23             inc hl               	;#
	ram:4996 cd 33 00       call 00033h          	;. 3 .
	ram:4999 e3             ex (sp),hl           	;.
	ram:499a c9             ret                  	;.
l499bh:
	ram:499b 23             inc hl               	;#
	ram:499c 7e             ld a,(hl)            	;~
	ram:499d e6 1f          and 01fh             	;. .
	ram:499f 28 1b          jr z,l49bch          	;( .
	ram:49a1 23             inc hl               	;#
	ram:49a2 91             sub c                	;.
	ram:49a3 fe 06          cp 006h              	;. .
	ram:49a5 38 06          jr c,l49adh          	;8 .
	ram:49a7 3e 05          ld a,005h            	;> .
	ram:49a9 fd cb 11 ee    set 5,(iy+011h)      	;. . . .
l49adh:
	ram:49ad 87             add a,a              	;.
	ram:49ae 47             ld b,a               	;G
	ram:49af 79             ld a,c               	;y
	ram:49b0 87             add a,a              	;.
	ram:49b1 5f             ld e,a               	;_
	ram:49b2 16 00          ld d,000h            	;. .
	ram:49b4 19             add hl,de            	;.
	ram:49b5 48             ld c,b               	;H
	ram:49b6 42             ld b,d               	;B
	ram:49b7 d1             pop de               	;.
	ram:49b8 ed b0          ldir                 	;. .
	ram:49ba b7             or a                 	;.
	ram:49bb c9             ret                  	;.
l49bch:
	ram:49bc d1             pop de               	;.
	ram:49bd 37             scf                  	;7
	ram:49be c9             ret                  	;.
sub_49bfh:
	ram:49bf fd cb 11 8e    res 1,(iy+011h)      	;. . . .
	ram:49c3 cd a8 4b       call sub_4ba8h       	;. . K
	ram:49c6 3a ef 81       ld a,(081efh)        	;: . .
	ram:49c9 b7             or a                 	;.
	ram:49ca 28 32          jr z,l49feh          	;( 2
	ram:49cc 3a fe 81       ld a,(081feh)        	;: . .
	ram:49cf b7             or a                 	;.
	ram:49d0 28 14          jr z,l49e6h          	;( .
	ram:49d2 2a fc 81       ld hl,(081fch)       	;* . .
	ram:49d5 cd 5f 49       call sub_495fh       	;. _ I
	ram:49d8 38 3f          jr c,l4a19h          	;8 ?
	ram:49da 2a ed 81       ld hl,(081edh)       	;* . .
	ram:49dd cd 30 49       call sub_4930h       	;. 0 I
	ram:49e0 97             sub a                	;.
	ram:49e1 32 de 81       ld (081deh),a        	;2 . .
	ram:49e4 18 3a          jr l4a20h            	;. :
l49e6h:
	ram:49e6 2a ed 81       ld hl,(081edh)       	;* . .
	ram:49e9 cd 5f 49       call sub_495fh       	;. _ I
	ram:49ec 38 2b          jr c,l4a19h          	;8 +
	ram:49ee 3a ef 81       ld a,(081efh)        	;: . .
	ram:49f1 fe 02          cp 002h              	;. .
	ram:49f3 38 2b          jr c,l4a20h          	;8 +
	ram:49f5 11 fc ff       ld de,0fffch         	;. . .
	ram:49f8 19             add hl,de            	;.
	ram:49f9 cd 30 49       call sub_4930h       	;. 0 I
	ram:49fc 18 22          jr l4a20h            	;. "
l49feh:
	ram:49fe 3a fe 81       ld a,(081feh)        	;: . .
	ram:4a01 b7             or a                 	;.
	ram:4a02 28 1c          jr z,l4a20h          	;( .
	ram:4a04 2a fc 81       ld hl,(081fch)       	;* . .
	ram:4a07 cd 5f 49       call sub_495fh       	;. _ I
	ram:4a0a 38 0d          jr c,l4a19h          	;8 .
	ram:4a0c fe 02          cp 002h              	;. .
	ram:4a0e 38 10          jr c,l4a20h          	;8 .
	ram:4a10 11 fc ff       ld de,0fffch         	;. . .
	ram:4a13 19             add hl,de            	;.
	ram:4a14 cd 30 49       call sub_4930h       	;. 0 I
	ram:4a17 18 07          jr l4a20h            	;. .
l4a19h:
	ram:4a19 97             sub a                	;.
	ram:4a1a fd cb 11 ce    set 1,(iy+011h)      	;. . . .
	ram:4a1e 18 0d          jr l4a2dh            	;. .
l4a20h:
	ram:4a20 3a fe 81       ld a,(081feh)        	;: . .
	ram:4a23 21 ef 81       ld hl,081efh         	;! . .
	ram:4a26 86             add a,(hl)           	;.
	ram:4a27 fe 03          cp 003h              	;. .
	ram:4a29 38 02          jr c,l4a2dh          	;8 .
	ram:4a2b 3e 02          ld a,002h            	;> .
l4a2dh:
	ram:4a2d 21 dd 81       ld hl,081ddh         	;! . .
	ram:4a30 be             cp (hl)              	;.
	ram:4a31 28 2a          jr z,sub_4a5dh       	;( *
	ram:4a33 77             ld (hl),a            	;w
	ram:4a34 30 19          jr nc,l4a4fh         	;0 .
	ram:4a36 fd cb 11 d6    set 2,(iy+011h)      	;. . . .
	ram:4a3a 21 00 ff       ld hl,0ff00h         	;! . .
	ram:4a3d 36 00          ld (hl),000h         	;6 .
	ram:4a3f 01 7f 00       ld bc,0007fh         	;. . .
	ram:4a42 b7             or a                 	;.
	ram:4a43 20 03          jr nz,l4a48h         	;.
	ram:4a45 01 ff 00       ld bc,000ffh         	;. . .
l4a48h:
	ram:4a48 11 01 ff       ld de,0ff01h         	;. . .
	ram:4a4b ed b0          ldir                 	;. .
	ram:4a4d 18 0b          jr l4a5ah            	;. .
l4a4fh:
	ram:4a4f fd cb 11 56    bit 2,(iy+011h)      	;. . . V
	ram:4a53 fd cb 11 96    res 2,(iy+011h)      	;. . . .
	ram:4a57 cc 81 05       call z,00581h        	;. . .
l4a5ah:
	ram:4a5a cd b3 4b       call sub_4bb3h       	;. . K
sub_4a5dh:
	ram:4a5d dd e5          push ix              	;. .
	ram:4a5f dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4a63 dd 39          add ix,sp            	;. 9
	ram:4a65 e5             push hl              	;.
	ram:4a66 e5             push hl              	;.
	ram:4a67 e5             push hl              	;.
	ram:4a68 e5             push hl              	;.
	ram:4a69 3a dd 81       ld a,(081ddh)        	;: . .
	ram:4a6c b7             or a                 	;.
	ram:4a6d 28 54          jr z,l4ac3h          	;( T
	ram:4a6f 21 0e 82       ld hl,0820eh         	;! . .
	ram:4a72 11 80 ff       ld de,0ff80h         	;. . .
	ld (ix-001h),01fh	;4a75	dd 36 ff 1f	. 6 . .
	ram:4a79 3e 3a          ld a,03ah            	;> :
	ram:4a7b cd ce 4a       call sub_4aceh       	;. . J
	ram:4a7e fd cb 11 6e    bit 5,(iy+011h)      	;. . . n
	ram:4a82 28 18          jr z,l4a9ch          	;( .
	ram:4a84 21 c8 4a       ld hl,l4ac8h         	;! . J
	ram:4a87 e5             push hl              	;.
	ram:4a88 21 af ff       ld hl,0ffafh         	;! . .
	ram:4a8b 11 10 00       ld de,00010h         	;. . .
	ram:4a8e 06 06          ld b,006h            	;. .
l4a90h:
	ram:4a90 7e             ld a,(hl)            	;~
	ram:4a91 e6 f8          and 0f8h             	;. .
	ram:4a93 e3             ex (sp),hl           	;.
	ram:4a94 b6             or (hl)              	;.
	ram:4a95 23             inc hl               	;#
	ram:4a96 e3             ex (sp),hl           	;.
	ram:4a97 77             ld (hl),a            	;w
	ram:4a98 19             add hl,de            	;.
	ram:4a99 10 f5          djnz l4a90h          	;. .
	ram:4a9b e1             pop hl               	;.
l4a9ch:
	ram:4a9c 3a dd 81       ld a,(081ddh)        	;: . .
	ram:4a9f fe 02          cp 002h              	;. .
	ram:4aa1 20 20          jr nz,l4ac3h         	;
	ram:4aa3 21 18 82       ld hl,08218h         	;! . .
	ram:4aa6 11 00 ff       ld de,0ff00h         	;. . .
	ram:4aa9 3a de 81       ld a,(081deh)        	;: . .
	ram:4aac b7             or a                 	;.
	ram:4aad 28 0c          jr z,l4abbh          	;( .
	ram:4aaf fe 06          cp 006h              	;. .
	ram:4ab1 38 02          jr c,l4ab5h          	;8 .
	ram:4ab3 d6 05          sub 005h             	;. .
l4ab5h:
	ram:4ab5 47             ld b,a               	;G
	ram:4ab6 97             sub a                	;.
	ram:4ab7 37             scf                  	;7
l4ab8h:
	ram:4ab8 17             rla                  	;.
	ram:4ab9 10 fd          djnz l4ab8h          	;. .
l4abbh:
	ld (ix-001h),a		;4abb	dd 77 ff	. w .
	ram:4abe 3e 32          ld a,032h            	;> 2
	ram:4ac0 cd ce 4a       call sub_4aceh       	;. . J
l4ac3h:
	ram:4ac3 dd f9          ld sp,ix             	;. .
	ram:4ac5 dd e1          pop ix               	;. .
	ram:4ac7 c9             ret                  	;.
l4ac8h:
	ram:4ac8 00             nop                  	;.
	ram:4ac9 04             inc b                	;.
	ram:4aca 06 07          ld b,007h            	;. .
	ram:4acc 06 04          ld b,004h            	;. .
sub_4aceh:
	ram:4ace 32 34 83       ld (08334h),a        	;2 4 .
	ld (ix-004h),l		;4ad1	dd 75 fc	. u .
	ld (ix-003h),h		;4ad4	dd 74 fd	. t .
	ram:4ad7 21 e9 4e       ld hl,04ee9h         	;! . N
	ld (ix-008h),l		;4ada	dd 75 f8	. u .
	ld (ix-007h),h		;4add	dd 74 f9	. t .
	ram:4ae0 01 10 00       ld bc,00010h         	;. . .
	ram:4ae3 21 c9 4e       ld hl,l4ec9h         	;! . N
	ram:4ae6 e5             push hl              	;.
	ram:4ae7 ed b0          ldir                 	;. .
	ram:4ae9 e1             pop hl               	;.
	ram:4aea 01 20 00       ld bc,00020h         	;.   .
	ram:4aed ed b0          ldir                 	;. .
	ram:4aef 6b             ld l,e               	;k
	ram:4af0 62             ld h,d               	;b
	ram:4af1 01 f0 ff       ld bc,0fff0h         	;. . .
	ram:4af4 09             add hl,bc            	;.
	ld (ix-006h),l		;4af5	dd 75 fa	. u .
	ld (ix-005h),h		;4af8	dd 74 fb	. t .
	ram:4afb 01 50 00       ld bc,00050h         	;. P .
	ram:4afe ed b0          ldir                 	;. .
	ram:4b00 0e 05          ld c,005h            	;. .
	ram:4b02 3e 03          ld a,003h            	;> .
l4b04h:
	ld (ix-002h),a		;4b04	dd 77 fe	. w .
	ld l,(ix-008h)		;4b07	dd 6e f8	. n .
	ld h,(ix-007h)		;4b0a	dd 66 f9	. f .
	rr (ix-001h)		;4b0d	dd cb ff 1e	. . . .
	ram:4b11 38 1c          jr c,l4b2fh          	;8 .
	ram:4b13 fd cb 05 de    set 3,(iy+005h)      	;. . . .
	ld e,(ix-006h)		;4b17	dd 5e fa	. ^ .
	ld d,(ix-005h)		;4b1a	dd 56 fb	. V .
	ram:4b1d c5             push bc              	;.
	ram:4b1e 0e 06          ld c,006h            	;. .
l4b20h:
	ram:4b20 e5             push hl              	;.
	ram:4b21 06 10          ld b,010h            	;. .
l4b23h:
	ram:4b23 1a             ld a,(de)            	;.
	ram:4b24 b6             or (hl)              	;.
	ram:4b25 23             inc hl               	;#
	ram:4b26 12             ld (de),a            	;.
	ram:4b27 13             inc de               	;.
	ram:4b28 10 f9          djnz l4b23h          	;. .
	ram:4b2a e1             pop hl               	;.
	ram:4b2b 0d             dec c                	;.
	ram:4b2c 20 f2          jr nz,l4b20h         	;.
	ram:4b2e c1             pop bc               	;.
l4b2fh:
	ram:4b2f 11 10 00       ld de,00010h         	;. . .
	ram:4b32 19             add hl,de            	;.
	ld (ix-008h),l		;4b33	dd 75 f8	. u .
	ld (ix-007h),h		;4b36	dd 74 f9	. t .
	ld l,(ix-004h)		;4b39	dd 6e fc	. n .
	ld h,(ix-003h)		;4b3c	dd 66 fd	. f .
	ram:4b3f 5e             ld e,(hl)            	;^
	ram:4b40 23             inc hl               	;#
	ram:4b41 56             ld d,(hl)            	;V
	ram:4b42 23             inc hl               	;#
	ld (ix-004h),l		;4b43	dd 75 fc	. u .
	ld (ix-003h),h		;4b46	dd 74 fd	. t .
	ram:4b49 7a             ld a,d               	;z
	ram:4b4a b3             or e                 	;.
	ram:4b4b 28 25          jr z,l4b72h          	;( %
	ram:4b4d 7a             ld a,d               	;z
	ram:4b4e 3c             inc a                	;<
	ram:4b4f 20 06          jr nz,l4b57h         	;.
	ram:4b51 21 df 81       ld hl,081dfh         	;! . .
	ram:4b54 73             ld (hl),e            	;s
	ram:4b55 18 18          jr l4b6fh            	;. .
l4b57h:
	ram:4b57 eb             ex de,hl             	;.
	ram:4b58 7e             ld a,(hl)            	;~
	ram:4b59 23             inc hl               	;#
	ram:4b5a e6 07          and 007h             	;. .
	ram:4b5c 28 11          jr z,l4b6fh          	;( .
	ram:4b5e 23             inc hl               	;#
	ram:4b5f fe 02          cp 002h              	;. .
	ram:4b61 28 0c          jr z,l4b6fh          	;( .
	ram:4b63 fe 03          cp 003h              	;. .
	ram:4b65 28 08          jr z,l4b6fh          	;( .
	ram:4b67 23             inc hl               	;#
	ram:4b68 23             inc hl               	;#
	ram:4b69 fe 04          cp 004h              	;. .
	ram:4b6b 28 02          jr z,l4b6fh          	;( .
	ram:4b6d 23             inc hl               	;#
	ram:4b6e 23             inc hl               	;#
l4b6fh:
	ram:4b6f cd 7f 4b       call sub_4b7fh       	;. . K
l4b72h:
	ld a,(ix-002h)		;4b72	dd 7e fe	. ~ .
	ram:4b75 c6 19          add a,019h           	;. .
	ram:4b77 0d             dec c                	;.
	ram:4b78 20 8a          jr nz,l4b04h         	;.
	ram:4b7a fd cb 05 9e    res 3,(iy+005h)      	;. . . .
	ram:4b7e c9             ret                  	;.
sub_4b7fh:
	ram:4b7f d5             push de              	;.
	ram:4b80 e5             push hl              	;.
	ram:4b81 06 ff          ld b,0ffh            	;. .
	ram:4b83 3e e9          ld a,0e9h            	;> .
l4b85h:
	ram:4b85 5f             ld e,a               	;_
	ram:4b86 04             inc b                	;.
	ram:4b87 7e             ld a,(hl)            	;~
	ram:4b88 23             inc hl               	;#
	ram:4b89 b7             or a                 	;.
	ram:4b8a 28 06          jr z,l4b92h          	;( .
	ram:4b8c cd 52 6e       call sub_6e52h       	;. R n
	ram:4b8f 83             add a,e              	;.
	ram:4b90 30 f3          jr nc,l4b85h         	;0 .
l4b92h:
	ram:4b92 7b             ld a,e               	;{
	ram:4b93 ed 44          neg                  	;. D
	ram:4b95 3d             dec a                	;=
	ram:4b96 cb 3f          srl a                	;. ?
	ram:4b98 e1             pop hl               	;.
	ram:4b99 d1             pop de               	;.
	add a,(ix-002h)		;4b9a	dd 86 fe	. . .
	ram:4b9d 32 33 83       ld (08333h),a        	;2 3 .
	ram:4ba0 cd d9 71       call sub_71d9h       	;. . q
	ram:4ba3 fd cb 05 9e    res 3,(iy+005h)      	;. . . .
	ram:4ba7 c9             ret                  	;.
sub_4ba8h:
	ram:4ba8 e5             push hl              	;.
	ram:4ba9 21 0e 82       ld hl,0820eh         	;! . .
	ram:4bac 06 14          ld b,014h            	;. .
	ram:4bae cd b8 21       call 021b8h          	;. . !
	ram:4bb1 e1             pop hl               	;.
	ram:4bb2 c9             ret                  	;.
sub_4bb3h:
	ram:4bb3 3e 08          ld a,008h            	;> .
	ram:4bb5 21 dd 81       ld hl,081ddh         	;! . .
	ram:4bb8 96             sub (hl)             	;.
	ram:4bb9 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:4bbc c9             ret                  	;.
l4bbdh:
	ram:4bbd cd ee 4b       call sub_4beeh       	;. . K
	ram:4bc0 ca fa 01       jp z,001fah          	;. . .
	ram:4bc3 dd 6e 00       ld l,(ix+000h)       	;. n .
	ram:4bc6 dd 66 01       ld h,(ix+001h)       	;. f .
	ram:4bc9 3e 02          ld a,002h            	;> .
	ram:4bcb cb 66          bit 4,(hl)           	;. f
	ram:4bcd 20 13          jr nz,l4be2h         	;.
	ram:4bcf 23             inc hl               	;#
	ram:4bd0 7e             ld a,(hl)            	;~
	ram:4bd1 e6 1f          and 01fh             	;. .
	ram:4bd3 4f             ld c,a               	;O
	ram:4bd4 dd 7e 02       ld a,(ix+002h)       	;. ~ .
	ram:4bd7 c6 05          add a,005h           	;. .
	ram:4bd9 47             ld b,a               	;G
	ram:4bda e6 1f          and 01fh             	;. .
	ram:4bdc b9             cp c                 	;.
	ram:4bdd 78             ld a,b               	;x
	ram:4bde 38 02          jr c,l4be2h          	;8 .
	ram:4be0 e6 c0          and 0c0h             	;. .
l4be2h:
	ram:4be2 dd 77 02       ld (ix+002h),a       	;. w .
	ram:4be5 cd bf 49       call sub_49bfh       	;. . I
	ram:4be8 cd 75 3e       call 03e75h          	;. u >
	ram:4beb c3 fa 01       jp 001fah            	;. . .
sub_4beeh:
	ram:4bee 3a fe 81       ld a,(081feh)        	;: . .
	ram:4bf1 b7             or a                 	;.
	ram:4bf2 28 06          jr z,l4bfah          	;( .
	ram:4bf4 dd 2a fc 81    ld ix,(081fch)       	;. * . .
	ram:4bf8 18 09          jr l4c03h            	;. .
l4bfah:
	ram:4bfa 3a ef 81       ld a,(081efh)        	;: . .
	ram:4bfd b7             or a                 	;.
	ram:4bfe c8             ret z                	;.
l4bffh:
	ram:4bff dd 2a ed 81    ld ix,(081edh)       	;. * . .
l4c03h:
	ram:4c03 11 fc ff       ld de,0fffch         	;. . .
	ram:4c06 dd 19          add ix,de            	;. .
	ram:4c08 c9             ret                  	;.
sub_4c09h:
	ram:4c09 3a fe 81       ld a,(081feh)        	;: . .
	ram:4c0c 5f             ld e,a               	;_
	ram:4c0d 3a ef 81       ld a,(081efh)        	;: . .
	ram:4c10 b7             or a                 	;.
	ram:4c11 20 0a          jr nz,l4c1dh         	;.
	ram:4c13 b3             or e                 	;.
	ram:4c14 c8             ret z                	;.
	ram:4c15 1d             dec e                	;.
	ram:4c16 c8             ret z                	;.
	ram:4c17 dd 2a fc 81    ld ix,(081fch)       	;. * . .
	ram:4c1b 18 10          jr l4c2dh            	;. .
l4c1dh:
	ram:4c1d 3d             dec a                	;=
	ram:4c1e 20 04          jr nz,l4c24h         	;.
	ram:4c20 b3             or e                 	;.
	ram:4c21 c8             ret z                	;.
	ram:4c22 18 db          jr l4bffh            	;. .
l4c24h:
	ram:4c24 7b             ld a,e               	;{
	ram:4c25 b7             or a                 	;.
	ram:4c26 20 d7          jr nz,l4bffh         	;.
	ram:4c28 3c             inc a                	;<
	ram:4c29 dd 2a ed 81    ld ix,(081edh)       	;. * . .
l4c2dh:
	ram:4c2d 11 f8 ff       ld de,0fff8h         	;. . .
	ram:4c30 dd 19          add ix,de            	;. .
	ram:4c32 c9             ret                  	;.
	ram:4c33 3e 08          ld a,008h            	;> .
	ram:4c35 18 3b          jr l4c72h            	;. ;
	ram:4c37 3e 02          ld a,002h            	;> .
	ram:4c39 18 37          jr l4c72h            	;. 7
	ram:4c3b 3e 06          ld a,006h            	;> .
	ram:4c3d 18 33          jr l4c72h            	;. 3
	ram:4c3f 3e 12          ld a,012h            	;> .
	ram:4c41 18 2f          jr l4c72h            	;. /
	ram:4c43 fd cb 08 76    bit 6,(iy+008h)      	;. . . v
	ram:4c47 20 04          jr nz,l4c4dh         	;.
	ram:4c49 fd cb 08 ee    set 5,(iy+008h)      	;. . . .
l4c4dh:
	ram:4c4d 3e 04          ld a,004h            	;> .
	ram:4c4f 18 21          jr l4c72h            	;. !
	ram:4c51 3e 0a          ld a,00ah            	;> .
	ram:4c53 18 1d          jr l4c72h            	;. .
	ram:4c55 3e 11          ld a,011h            	;> .
	ram:4c57 18 19          jr l4c72h            	;. .
	ram:4c59 3e 0d          ld a,00dh            	;> .
	ram:4c5b cd 7a 00       call 0007ah          	;. z .
	ram:4c5e 20 12          jr nz,l4c72h         	;.
	ram:4c60 3e 0e          ld a,00eh            	;> .
	ram:4c62 cd 7f 00       call 0007fh          	;. . .
	ram:4c65 20 0b          jr nz,l4c72h         	;.
	ram:4c67 3e 0f          ld a,00fh            	;> .
	ram:4c69 cd 84 00       call 00084h          	;. . .
	ram:4c6c 20 04          jr nz,l4c72h         	;.
	ram:4c6e 3e 10          ld a,010h            	;> .
	ram:4c70 18 00          jr l4c72h            	;. .
l4c72h:
	ram:4c72 f5             push af              	;.
	ram:4c73 d5             push de              	;.
	ram:4c74 e5             push hl              	;.
	ram:4c75 11 87 82       ld de,08287h         	;. . .
	ram:4c78 cd 11 21       call 02111h          	;. . !
	ram:4c7b e1             pop hl               	;.
	ram:4c7c d1             pop de               	;.
	ram:4c7d f1             pop af               	;.
	ram:4c7e cd 86 4c       call sub_4c86h       	;. . L
	ram:4c81 21 87 82       ld hl,08287h         	;! . .
	ram:4c84 e7             rst 20h              	;.
	ram:4c85 c9             ret                  	;.
sub_4c86h:
	ram:4c86 f5             push af              	;.
	ram:4c87 eb             ex de,hl             	;.
	ram:4c88 23             inc hl               	;#
	ram:4c89 23             inc hl               	;#
	ram:4c8a 7e             ld a,(hl)            	;~
	ram:4c8b 36 01          ld (hl),001h         	;6 .
	ram:4c8d eb             ex de,hl             	;.
	ram:4c8e fe 01          cp 001h              	;. .
	ram:4c90 38 1b          jr c,l4cadh          	;8 .
	ram:4c92 20 13          jr nz,l4ca7h         	;.
	ram:4c94 e5             push hl              	;.
	ram:4c95 21 23 82       ld hl,08223h         	;! # .
	ram:4c98 cd cf 4d       call sub_4dcfh       	;. . M
	ram:4c9b e1             pop hl               	;.
	ram:4c9c 28 0f          jr z,l4cadh          	;( .
	ram:4c9e cd dd 4d       call sub_4dddh       	;. . M
	ram:4ca1 f1             pop af               	;.
	ram:4ca2 cd b9 4c       call sub_4cb9h       	;. . L
	ram:4ca5 b7             or a                 	;.
	ram:4ca6 c9             ret                  	;.
l4ca7h:
	ram:4ca7 f1             pop af               	;.
	ram:4ca8 cd a7 4d       call sub_4da7h       	;. . M
	ram:4cab 18 04          jr l4cb1h            	;. .
l4cadh:
	ram:4cad f1             pop af               	;.
	ram:4cae cd 7e 4d       call sub_4d7eh       	;. ~ M
l4cb1h:
	ram:4cb1 cd dd 4d       call sub_4dddh       	;. . M
	ram:4cb4 d4 b9 4c       call nc,sub_4cb9h    	;. . L
	ram:4cb7 b7             or a                 	;.
	ram:4cb8 c9             ret                  	;.
sub_4cb9h:
	ram:4cb9 dd e5          push ix              	;. .
	ram:4cbb dd 21 00 00    ld ix,00000h         	;. ! . .
	ram:4cbf dd 39          add ix,sp            	;. 9
	ram:4cc1 e5             push hl              	;.
	ram:4cc2 e5             push hl              	;.
	ld (ix-001h),a		;4cc3	dd 77 ff	. w .
	ld (ix-002h),005h	;4cc6	dd 36 fe 05	. 6 . .
	ram:4cca 21 22 82       ld hl,08222h         	;! " .
	ram:4ccd e5             push hl              	;.
l4cceh:
	ram:4cce d1             pop de               	;.
	ram:4ccf e1             pop hl               	;.
	ram:4cd0 73             ld (hl),e            	;s
	ram:4cd1 23             inc hl               	;#
	ram:4cd2 72             ld (hl),d            	;r
	ram:4cd3 23             inc hl               	;#
	ram:4cd4 e5             push hl              	;.
	ram:4cd5 d5             push de              	;.
	ram:4cd6 3e 10          ld a,010h            	;> .
	ram:4cd8 12             ld (de),a            	;.
	ram:4cd9 13             inc de               	;.
	ram:4cda 21 83 80       ld hl,08083h         	;! . .
	ram:4cdd 46             ld b,(hl)            	;F
	ram:4cde 23             inc hl               	;#
l4cdfh:
	ram:4cdf 7e             ld a,(hl)            	;~
	ram:4ce0 23             inc hl               	;#
	ram:4ce1 12             ld (de),a            	;.
	ram:4ce2 13             inc de               	;.
	ram:4ce3 10 fa          djnz l4cdfh          	;. .
	ram:4ce5 97             sub a                	;.
	ram:4ce6 12             ld (de),a            	;.
	dec (ix-002h)		;4ce7	dd 35 fe	. 5 .
	ram:4cea 28 37          jr z,l4d23h          	;( 7
	ram:4cec e1             pop hl               	;.
	ram:4ced 11 0a 00       ld de,0000ah         	;. . .
	ram:4cf0 19             add hl,de            	;.
	ram:4cf1 e5             push hl              	;.
	ram:4cf2 fd cb 08 6e    bit 5,(iy+008h)      	;. . . n
	ram:4cf6 28 1c          jr z,l4d14h          	;( .
	ld a,(ix-002h)		;4cf8	dd 7e fe	. ~ .
	ram:4cfb fe 04          cp 004h              	;. .
	ram:4cfd 20 06          jr nz,l4d05h         	;.
	ram:4cff cd e7 3b       call 03be7h          	;. . ;
	ram:4d02 d7             rst 10h              	;.
	ram:4d03 18 c9          jr l4cceh            	;. .
l4d05h:
	ram:4d05 fd cb 08 ae    res 5,(iy+008h)      	;. . . .
	ram:4d09 fd cb 08 f6    set 6,(iy+008h)      	;. . . .
	ram:4d0d 3e 04          ld a,004h            	;> .
	ram:4d0f cd 7e 4d       call sub_4d7eh       	;. ~ M
	ram:4d12 18 06          jr l4d1ah            	;. .
l4d14h:
	ld a,(ix-001h)		;4d14	dd 7e ff	. ~ .
	ram:4d17 cd ec 4d       call sub_4dech       	;. . M
l4d1ah:
	ram:4d1a cd 3b 4d       call sub_4d3bh       	;. ; M
	ram:4d1d 38 15          jr c,l4d34h          	;8 .
	ram:4d1f 28 f3          jr z,l4d14h          	;( .
	ram:4d21 18 ab          jr l4cceh            	;. .
l4d23h:
	ld a,(ix-001h)		;4d23	dd 7e ff	. ~ .
	ram:4d26 cd ec 4d       call sub_4dech       	;. . M
	ram:4d29 cd 3b 4d       call sub_4d3bh       	;. ; M
	ram:4d2c 38 06          jr c,l4d34h          	;8 .
	ram:4d2e 28 f3          jr z,l4d23h          	;( .
	ram:4d30 fd cb 11 ee    set 5,(iy+011h)      	;. . . .
l4d34h:
	ram:4d34 e1             pop hl               	;.
	ram:4d35 e1             pop hl               	;.
	ram:4d36 dd f9          ld sp,ix             	;. .
	ram:4d38 dd e1          pop ix               	;. .
	ram:4d3a c9             ret                  	;.
sub_4d3bh:
	ram:4d3b 38 32          jr c,l4d6fh          	;8 2
	ram:4d3d 3a 82 80       ld a,(08082h)        	;: . .
	ram:4d40 fd cb 08 76    bit 6,(iy+008h)      	;. . . v
	ram:4d44 28 19          jr z,l4d5fh          	;( .
l4d46h:
	ram:4d46 fe 05          cp 005h              	;. .
	ram:4d48 c8             ret z                	;.
	ram:4d49 cf             rst 8                	;.
	ram:4d4a cd f1 3d       call 03df1h          	;. . =
	ram:4d4d c8             ret z                	;.
	ram:4d4e cd f7 3d       call 03df7h          	;. . =
	ram:4d51 c8             ret z                	;.
l4d52h:
	ram:4d52 cd 12 26       call 02612h          	;. . &
	ram:4d55 cd ed 3b       call 03bedh          	;. . ;
	ram:4d58 cd 95 20       call 02095h          	;. .  
	ram:4d5b c8             ret z                	;.
l4d5ch:
	ram:4d5c 97             sub a                	;.
	ram:4d5d 3c             inc a                	;<
	ram:4d5e c9             ret                  	;.
l4d5fh:
	ram:4d5f e6 1e          and 01eh             	;. .
	ram:4d61 fe 04          cp 004h              	;. .
	ram:4d63 20 f7          jr nz,l4d5ch         	;.
	ram:4d65 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:4d68 fe 10          cp 010h              	;. .
	ram:4d6a 20 f0          jr nz,l4d5ch         	;.
	ram:4d6c cf             rst 8                	;.
	ram:4d6d 18 e3          jr l4d52h            	;. .
l4d6fh:
	ram:4d6f fd cb 08 76    bit 6,(iy+008h)      	;. . . v
	ram:4d73 28 07          jr z,l4d7ch          	;( .
	ram:4d75 fd cb 08 ee    set 5,(iy+008h)      	;. . . .
	ram:4d79 cd 13 49       call sub_4913h       	;. . I
l4d7ch:
	ram:4d7c 37             scf                  	;7
	ram:4d7d c9             ret                  	;.
sub_4d7eh:
	ram:4d7e e5             push hl              	;.
	ram:4d7f d5             push de              	;.
	ram:4d80 f5             push af              	;.
	ram:4d81 fd cb 08 6e    bit 5,(iy+008h)      	;. . . n
	ram:4d85 28 06          jr z,l4d8dh          	;( .
	ram:4d87 cd f3 3b       call 03bf3h          	;. . ;
	ram:4d8a d7             rst 10h              	;.
	ram:4d8b 18 15          jr l4da2h            	;. .
l4d8dh:
	ram:4d8d 32 82 80       ld (08082h),a        	;2 . .
	ram:4d90 cd 33 26       call 02633h          	;. 3 &
l4d93h:
	ram:4d93 cd ec 4d       call sub_4dech       	;. . M
	ram:4d96 38 0a          jr c,l4da2h          	;8 .
	ram:4d98 cd 3b 4d       call sub_4d3bh       	;. ; M
	ram:4d9b 20 05          jr nz,l4da2h         	;.
	ram:4d9d 3a 82 80       ld a,(08082h)        	;: . .
	ram:4da0 18 f1          jr l4d93h            	;. .
l4da2h:
	ram:4da2 e1             pop hl               	;.
	ram:4da3 7c             ld a,h               	;|
	ram:4da4 d1             pop de               	;.
	ram:4da5 e1             pop hl               	;.
	ram:4da6 c9             ret                  	;.
sub_4da7h:
	ram:4da7 e5             push hl              	;.
	ram:4da8 d5             push de              	;.
	ram:4da9 f5             push af              	;.
	ram:4daa 32 82 80       ld (08082h),a        	;2 . .
	ram:4dad 21 4b 82       ld hl,0824bh         	;! K .
	ram:4db0 cd cf 4d       call sub_4dcfh       	;. . M
	ram:4db3 28 0f          jr z,l4dc4h          	;( .
l4db5h:
	ram:4db5 3a 82 80       ld a,(08082h)        	;: . .
	ram:4db8 cd ec 4d       call sub_4dech       	;. . M
	ram:4dbb cd 3b 4d       call sub_4d3bh       	;. ; M
	ram:4dbe 38 04          jr c,l4dc4h          	;8 .
	ram:4dc0 28 f3          jr z,l4db5h          	;( .
	ram:4dc2 18 06          jr l4dcah            	;. .
l4dc4h:
	ram:4dc4 3a 82 80       ld a,(08082h)        	;: . .
	ram:4dc7 cd 7e 4d       call sub_4d7eh       	;. ~ M
l4dcah:
	ram:4dca e1             pop hl               	;.
	ram:4dcb 7c             ld a,h               	;|
	ram:4dcc d1             pop de               	;.
	ram:4dcd e1             pop hl               	;.
	ram:4dce c9             ret                  	;.
sub_4dcfh:
	ram:4dcf cd 2f 30       call 0302fh          	;. / 0
	ram:4dd2 79             ld a,c               	;y
	ram:4dd3 b7             or a                 	;.
	ram:4dd4 c8             ret z                	;.
	ram:4dd5 11 83 80       ld de,08083h         	;. . .
	ram:4dd8 12             ld (de),a            	;.
	ram:4dd9 13             inc de               	;.
	ram:4dda ed b0          ldir                 	;. .
	ram:4ddc c9             ret                  	;.
sub_4dddh:
	ram:4ddd f5             push af              	;.
	ram:4dde e5             push hl              	;.
	ram:4ddf 21 22 82       ld hl,08222h         	;! " .
	ram:4de2 06 32          ld b,032h            	;. 2
	ram:4de4 97             sub a                	;.
l4de5h:
	ram:4de5 77             ld (hl),a            	;w
	ram:4de6 23             inc hl               	;#
	ram:4de7 10 fc          djnz l4de5h          	;. .
	ram:4de9 e1             pop hl               	;.
	ram:4dea f1             pop af               	;.
	ram:4deb c9             ret                  	;.
sub_4dech:
	ram:4dec 32 82 80       ld (08082h),a        	;2 . .
	ram:4def fe 0a          cp 00ah              	;. .
	ram:4df1 3e 00          ld a,000h            	;> .
	ram:4df3 38 01          jr c,l4df6h          	;8 .
	ram:4df5 bf             cp a                 	;.
l4df6h:
	ram:4df6 cd 41 3c       call 03c41h          	;. A <
	ram:4df9 c9             ret                  	;.
sub_4dfah:
	ram:4dfa 21 48 83       ld hl,08348h         	;! H .
	ram:4dfd 3e 41          ld a,041h            	;> A
	ram:4dff cb 66          bit 4,(hl)           	;. f
	ram:4e01 c0             ret nz               	;.
	ram:4e02 3e 45          ld a,045h            	;> E
	ram:4e04 cb 6e          bit 5,(hl)           	;. n
	ram:4e06 c0             ret nz               	;.
	ram:4e07 3e 48          ld a,048h            	;> H
	ram:4e09 cb 76          bit 6,(hl)           	;. v
	ram:4e0b c0             ret nz               	;.
	ram:4e0c 3e 4a          ld a,04ah            	;> J
	ram:4e0e c9             ret                  	;.
	ram:4e0f fd cb 0d 66    bit 4,(iy+00dh)      	;. . . f
	ram:4e13 c2 fa 01       jp nz,001fah         	;. . .
	ram:4e16 cd f9 3b       call 03bf9h          	;. . ;
	ram:4e19 cd 13 00       call 00013h          	;. . .
	ram:4e1c 28 0b          jr z,l4e29h          	;( .
	ram:4e1e fd cb 08 8e    res 1,(iy+008h)      	;. . . .
	ram:4e22 fd cb 0d 9e    res 3,(iy+00dh)      	;. . . .
	ram:4e26 cd 1b 00       call 0001bh          	;. . .
l4e29h:
	ram:4e29 fd cb 03 46    bit 0,(iy+003h)      	;. . . F
	ram:4e2d 20 08          jr nz,l4e37h         	;.
	ram:4e2f 21 32 08       ld hl,00832h         	;! 2 .
	ram:4e32 cd 96 04       call 00496h          	;. . .
	ram:4e35 18 0a          jr l4e41h            	;. .
l4e37h:
	ram:4e37 fd cb 0d 5e    bit 3,(iy+00dh)      	;. . . ^
	ram:4e3b 21 cb 07       ld hl,007cbh         	;! . .
	ram:4e3e cc 96 04       call z,00496h        	;. . .
l4e41h:
	ram:4e41 fd cb 01 f6    set 6,(iy+001h)      	;. . . .
	ram:4e45 cd d5 47       call sub_47d5h       	;. . G
	ram:4e48 fd cb 01 b6    res 6,(iy+001h)      	;. . . .
	ram:4e4c 3e 81          ld a,081h            	;> .
	ram:4e4e 0e 00          ld c,000h            	;. .
	ram:4e50 c3 c6 02       jp 002c6h            	;. . .
l4e53h:
	ram:4e53 3e 01          ld a,001h            	;> .
	ram:4e55 18 0a          jr l4e61h            	;. .
l4e57h:
	ram:4e57 3e 02          ld a,002h            	;> .
	ram:4e59 18 06          jr l4e61h            	;. .
l4e5bh:
	ram:4e5b 3e 03          ld a,003h            	;> .
	ram:4e5d 18 02          jr l4e61h            	;. .
l4e5fh:
	ram:4e5f 3e 04          ld a,004h            	;> .
l4e61h:
	ram:4e61 32 8c 81       ld (0818ch),a        	;2 . .
	ram:4e64 fd cb 12 66    bit 4,(iy+012h)      	;. . . f
	ram:4e68 cc ea 01       call z,001eah        	;. . .
	ram:4e6b c3 fa 01       jp 001fah            	;. . .
	ram:4e6e cd ff 3b       call 03bffh          	;. . ;
	ram:4e71 fe 33          cp 033h              	;. 3
	ram:4e73 da 1c 0a       jp c,00a1ch          	;. . .
	ram:4e76 fe 3b          cp 03bh              	;. ;
	ram:4e78 d2 1c 0a       jp nc,00a1ch         	;. . .
	ram:4e7b d6 32          sub 032h             	;. 2
	ram:4e7d 21 41 61       ld hl,l6141h         	;! A a
l4e80h:
	ram:4e80 f5             push af              	;.
	ram:4e81 c5             push bc              	;.
l4e82h:
	ram:4e82 f5             push af              	;.
	ram:4e83 23             inc hl               	;#
	ram:4e84 7e             ld a,(hl)            	;~
	ram:4e85 b7             or a                 	;.
	ram:4e86 20 1d          jr nz,l4ea5h         	;.
	ram:4e88 f1             pop af               	;.
	ram:4e89 b7             or a                 	;.
	ram:4e8a 28 10          jr z,l4e9ch          	;( .
l4e8ch:
	ram:4e8c 23             inc hl               	;#
	ram:4e8d 23             inc hl               	;#
	ram:4e8e e5             push hl              	;.
	ram:4e8f 11 6a 63       ld de,l636ah         	;. j c
	ram:4e92 ed 52          sbc hl,de            	;. R
	ram:4e94 d2 1c 0a       jp nc,00a1ch         	;. . .
	ram:4e97 e1             pop hl               	;.
	ram:4e98 c1             pop bc               	;.
	ram:4e99 f1             pop af               	;.
	ram:4e9a 18 e4          jr l4e80h            	;. .
l4e9ch:
	ram:4e9c 23             inc hl               	;#
	ram:4e9d 7e             ld a,(hl)            	;~
	ram:4e9e ed 43 61 8a    ld (08a61h),bc       	;. C a .
	ram:4ea2 c1             pop bc               	;.
	ram:4ea3 c1             pop bc               	;.
	ram:4ea4 c9             ret                  	;.
l4ea5h:
	ram:4ea5 cd c0 4e       call sub_4ec0h       	;. . N
	ram:4ea8 57             ld d,a               	;W
	ram:4ea9 03             inc bc               	;.
	ram:4eaa 0a             ld a,(bc)            	;.
	ram:4eab cd c0 4e       call sub_4ec0h       	;. . N
	ram:4eae ba             cp d                 	;.
	ram:4eaf 28 08          jr z,l4eb9h          	;( .
	ram:4eb1 f1             pop af               	;.
l4eb2h:
	ram:4eb2 af             xor a                	;.
l4eb3h:
	ram:4eb3 23             inc hl               	;#
	ram:4eb4 be             cp (hl)              	;.
	ram:4eb5 20 fc          jr nz,l4eb3h         	;.
	ram:4eb7 18 d3          jr l4e8ch            	;. .
l4eb9h:
	ram:4eb9 f1             pop af               	;.
	ram:4eba d6 01          sub 001h             	;. .
	ram:4ebc 30 c4          jr nc,l4e82h         	;0 .
	ram:4ebe 18 f2          jr l4eb2h            	;. .
sub_4ec0h:
	ram:4ec0 fe 61          cp 061h              	;. a
	ram:4ec2 d8             ret c                	;.
	ram:4ec3 fe 7b          cp 07bh              	;. {
	ram:4ec5 d0             ret nc               	;.
	ram:4ec6 d6 20          sub 020h             	;.  
	ram:4ec8 c9             ret                  	;.
l4ec9h:
	ram:4ec9 ff             rst 38h              	;.
	ram:4eca ff             rst 38h              	;.
	ram:4ecb ff             rst 38h              	;.
	ram:4ecc ff             rst 38h              	;.
	ram:4ecd ff             rst 38h              	;.
	ram:4ece ff             rst 38h              	;.
	ram:4ecf ff             rst 38h              	;.
	ram:4ed0 ff             rst 38h              	;.
	ram:4ed1 ff             rst 38h              	;.
	ram:4ed2 ff             rst 38h              	;.
	ram:4ed3 ff             rst 38h              	;.
	ram:4ed4 ff             rst 38h              	;.
	ram:4ed5 ff             rst 38h              	;.
	ram:4ed6 ff             rst 38h              	;.
	ram:4ed7 ff             rst 38h              	;.
	ram:4ed8 fe c0          cp 0c0h              	;. .
	ram:4eda 00             nop                  	;.
	ram:4edb 00             nop                  	;.
	ram:4edc 60             ld h,b               	;`
	ram:4edd 00             nop                  	;.
	ram:4ede 00             nop                  	;.
	ram:4edf 30 00          jr nc,l4ee1h         	;0 .
l4ee1h:
	ram:4ee1 00             nop                  	;.
	ram:4ee2 18 00          jr l4ee4h            	;. .
l4ee4h:
	ram:4ee4 00             nop                  	;.
	ram:4ee5 0c             inc c                	;.
	ram:4ee6 00             nop                  	;.
	ram:4ee7 00             nop                  	;.
	ram:4ee8 06 ff          ld b,0ffh            	;. .
	ram:4eea ff             rst 38h              	;.
	ram:4eeb ff             rst 38h              	;.
	ram:4eec e0             ret po               	;.
	ram:4eed 00             nop                  	;.
	ram:4eee 00             nop                  	;.
	ram:4eef 30 00          jr nc,l4ef1h         	;0 .
l4ef1h:
	ram:4ef1 00             nop                  	;.
	ram:4ef2 18 00          jr l4ef4h            	;. .
l4ef4h:
	ram:4ef4 00             nop                  	;.
	ram:4ef5 0c             inc c                	;.
	ram:4ef6 00             nop                  	;.
	ram:4ef7 00             nop                  	;.
	ram:4ef8 06 c0          ld b,0c0h            	;. .
	ram:4efa 00             nop                  	;.
	ram:4efb 00             nop                  	;.
	ram:4efc 7f             ld a,a               	;.
	ram:4efd ff             rst 38h              	;.
	ram:4efe ff             rst 38h              	;.
	ram:4eff f0             ret p                	;.
	ram:4f00 00             nop                  	;.
	ram:4f01 00             nop                  	;.
	ram:4f02 18 00          jr l4f04h            	;. .
l4f04h:
	ram:4f04 00             nop                  	;.
	ram:4f05 0c             inc c                	;.
	ram:4f06 00             nop                  	;.
	ram:4f07 00             nop                  	;.
	ram:4f08 06 c0          ld b,0c0h            	;. .
	ram:4f0a 00             nop                  	;.
	ram:4f0b 00             nop                  	;.
	ram:4f0c 60             ld h,b               	;`
	ram:4f0d 00             nop                  	;.
	ram:4f0e 00             nop                  	;.
	ram:4f0f 3f             ccf                  	;?
	ram:4f10 ff             rst 38h              	;.
	ram:4f11 ff             rst 38h              	;.
	ram:4f12 f8             ret m                	;.
	ram:4f13 00             nop                  	;.
	ram:4f14 00             nop                  	;.
	ram:4f15 0c             inc c                	;.
	ram:4f16 00             nop                  	;.
	ram:4f17 00             nop                  	;.
	ram:4f18 06 c0          ld b,0c0h            	;. .
	ram:4f1a 00             nop                  	;.
	ram:4f1b 00             nop                  	;.
	ram:4f1c 60             ld h,b               	;`
	ram:4f1d 00             nop                  	;.
	ram:4f1e 00             nop                  	;.
	ram:4f1f 30 00          jr nc,l4f21h         	;0 .
l4f21h:
	ram:4f21 00             nop                  	;.
	ram:4f22 1f             rra                  	;.
	ram:4f23 ff             rst 38h              	;.
	ram:4f24 ff             rst 38h              	;.
	ram:4f25 fc 00 00       call m,00000h        	;. . .
	ram:4f28 06 c0          ld b,0c0h            	;. .
	ram:4f2a 00             nop                  	;.
	ram:4f2b 00             nop                  	;.
	ram:4f2c 60             ld h,b               	;`
	ram:4f2d 00             nop                  	;.
	ram:4f2e 00             nop                  	;.
	ram:4f2f 30 00          jr nc,l4f31h         	;0 .
l4f31h:
	ram:4f31 00             nop                  	;.
	ram:4f32 18 00          jr l4f34h            	;. .
l4f34h:
	ram:4f34 00             nop                  	;.
	ram:4f35 0f             rrca                 	;.
	ram:4f36 ff             rst 38h              	;.
	ram:4f37 ff             rst 38h              	;.
	ram:4f38 fe 33          cp 033h              	;. 3
	ram:4f3a 50             ld d,b               	;P
	ram:4f3b 3b             dec sp               	;;
	ram:4f3c 50             ld d,b               	;P
	ram:4f3d 5b             ld e,e               	;[
	ram:4f3e 50             ld d,b               	;P
	ram:4f3f 7b             ld a,e               	;{
	ram:4f40 50             ld d,b               	;P
	ram:4f41 85             add a,l              	;.
sub_4f42h:
	ram:4f42 50             ld d,b               	;P
	ram:4f43 93             sub e                	;.
	ram:4f44 50             ld d,b               	;P
	ram:4f45 a7             and a                	;.
	ram:4f46 50             ld d,b               	;P
	ram:4f47 b1             or c                 	;.
	ram:4f48 50             ld d,b               	;P
	ram:4f49 bb             cp e                 	;.
	ram:4f4a 50             ld d,b               	;P
	ram:4f4b c9             ret                  	;.
l4f4ch:
	ram:4f4c 50             ld d,b               	;P
	ram:4f4d df             rst 18h              	;.
	ram:4f4e 50             ld d,b               	;P
	ram:4f4f ed 50          in d,(c)             	;. P
	ram:4f51 ff             rst 38h              	;.
	ram:4f52 50             ld d,b               	;P
	ram:4f53 0b             dec bc               	;.
	ram:4f54 51             ld d,c               	;Q
	ram:4f55 2d             dec l                	;-
	ram:4f56 51             ld d,c               	;Q
	ram:4f57 37             scf                  	;7
	ram:4f58 51             ld d,c               	;Q
	ram:4f59 41             ld b,c               	;A
l4f5ah:
	ram:4f5a 51             ld d,c               	;Q
	ram:4f5b 4b             ld c,e               	;K
	ram:4f5c 51             ld d,c               	;Q
	ram:4f5d 46             ld b,(hl)            	;F
	ram:4f5e 52             ld d,d               	;R
	ram:4f5f 52             ld d,d               	;R
	ram:4f60 52             ld d,d               	;R
sub_4f61h:
	ram:4f61 6a             ld l,d               	;j
	ram:4f62 52             ld d,d               	;R
	ram:4f63 55             ld d,l               	;U
	ram:4f64 51             ld d,c               	;Q
	ram:4f65 63             ld h,e               	;c
	ram:4f66 51             ld d,c               	;Q
	ram:4f67 73             ld (hl),e            	;s
	ram:4f68 51             ld d,c               	;Q
	ram:4f69 7f             ld a,a               	;.
	ram:4f6a 51             ld d,c               	;Q
	ram:4f6b 87             add a,a              	;.
	ram:4f6c 51             ld d,c               	;Q
	ram:4f6d a7             and a                	;.
	ram:4f6e 51             ld d,c               	;Q
	ram:4f6f aa             xor d                	;.
	ram:4f70 51             ld d,c               	;Q
	ram:4f71 b0             or b                 	;.
	ram:4f72 51             ld d,c               	;Q
	ram:4f73 bc             cp h                 	;.
	ram:4f74 51             ld d,c               	;Q
	ram:4f75 bf             cp a                 	;.
	ram:4f76 51             ld d,c               	;Q
	ram:4f77 c9             ret                  	;.
	ram:4f78 51             ld d,c               	;Q
	ram:4f79 db 51          in a,(051h)          	;. Q
	ram:4f7b e5             push hl              	;.
	ram:4f7c 51             ld d,c               	;Q
	ram:4f7d 2c             inc l                	;,
	ram:4f7e 52             ld d,d               	;R
	ram:4f7f f1             pop af               	;.
	ram:4f80 51             ld d,c               	;Q
	ram:4f81 f4 51 14       call p,01451h        	;. Q .
	ram:4f84 52             ld d,d               	;R
	ram:4f85 08             ex af,af'            	;.
	ram:4f86 52             ld d,d               	;R
	ram:4f87 3c             inc a                	;<
	ram:4f88 52             ld d,d               	;R
	ram:4f89 74             ld (hl),h            	;t
	ram:4f8a 52             ld d,d               	;R
	ram:4f8b 7a             ld a,d               	;z
	ram:4f8c 52             ld d,d               	;R
	ram:4f8d 7d             ld a,l               	;}
	ram:4f8e 52             ld d,d               	;R
	ram:4f8f 80             add a,b              	;.
	ram:4f90 52             ld d,d               	;R
	ram:4f91 90             sub b                	;.
	ram:4f92 52             ld d,d               	;R
	ram:4f93 a6             and (hl)             	;.
	ram:4f94 52             ld d,d               	;R
	ram:4f95 c6 52          add a,052h           	;. R
	ram:4f97 e2 52 00       jp po,00052h         	;. R .
	ram:4f9a 53             ld d,e               	;S
	ram:4f9b 1e 53          ld e,053h            	;. S
	ram:4f9d 34             inc (hl)             	;4
	ram:4f9e 53             ld d,e               	;S
	ram:4f9f 3e 53          ld a,053h            	;> S
	ram:4fa1 56             ld d,(hl)            	;V
	ram:4fa2 53             ld d,e               	;S
	ram:4fa3 62             ld h,d               	;b
	ram:4fa4 53             ld d,e               	;S
	ram:4fa5 e9             jp (hl)              	;.
	ram:4fa6 55             ld d,l               	;U
	ram:4fa7 6c             ld l,h               	;l
	ram:4fa8 53             ld d,e               	;S
	ram:4fa9 80             add a,b              	;.
	ram:4faa 53             ld d,e               	;S
	ram:4fab 8c             adc a,h              	;.
	ram:4fac 53             ld d,e               	;S
	ram:4fad b0             or b                 	;.
	ram:4fae 53             ld d,e               	;S
	ram:4faf c2 53 d2       jp nz,0d253h         	;. S .
	ram:4fb2 53             ld d,e               	;S
	ram:4fb3 e6 53          and 053h             	;. S
	ram:4fb5 f6 53          or 053h              	;. S
	ram:4fb7 14             inc d                	;.
	ram:4fb8 54             ld d,h               	;T
	ram:4fb9 1a             ld a,(de)            	;.
	ram:4fba 54             ld d,h               	;T
	ram:4fbb 34             inc (hl)             	;4
	ram:4fbc 54             ld d,h               	;T
	ram:4fbd 50             ld d,b               	;P
	ram:4fbe 54             ld d,h               	;T
	ram:4fbf 70             ld (hl),b            	;p
	ram:4fc0 54             ld d,h               	;T
	ram:4fc1 8c             adc a,h              	;.
	ram:4fc2 54             ld d,h               	;T
	ram:4fc3 a6             and (hl)             	;.
	ram:4fc4 54             ld d,h               	;T
	ram:4fc5 c2 54 ce       jp nz,0ce54h         	;. T .
	ram:4fc8 54             ld d,h               	;T
	ram:4fc9 e6 54          and 054h             	;. T
	ram:4fcb 02             ld (bc),a            	;.
	ram:4fcc 55             ld d,l               	;U
	ram:4fcd 10 55          djnz l5024h          	;. U
	ram:4fcf 2e 55          ld l,055h            	;. U
	ram:4fd1 46             ld b,(hl)            	;F
	ram:4fd2 55             ld d,l               	;U
	ram:4fd3 4e             ld c,(hl)            	;N
	ram:4fd4 55             ld d,l               	;U
	ram:4fd5 50             ld d,b               	;P
	ram:4fd6 55             ld d,l               	;U
	ram:4fd7 5c             ld e,h               	;\
	ram:4fd8 55             ld d,l               	;U
	ram:4fd9 62             ld h,d               	;b
	ram:4fda 55             ld d,l               	;U
	ram:4fdb 6e             ld l,(hl)            	;n
	ram:4fdc 55             ld d,l               	;U
	ram:4fdd 7a             ld a,d               	;z
	ram:4fde 55             ld d,l               	;U
	ram:4fdf 86             add a,(hl)           	;.
	ram:4fe0 55             ld d,l               	;U
	ram:4fe1 90             sub b                	;.
	ram:4fe2 55             ld d,l               	;U
	ram:4fe3 a0             and b                	;.
	ram:4fe4 55             ld d,l               	;U
	ram:4fe5 b0             or b                 	;.
	ram:4fe6 55             ld d,l               	;U
	ram:4fe7 c2 55 d2       jp nz,0d255h         	;. U .
	ram:4fea 55             ld d,l               	;U
	ram:4feb da 55 e6       jp c,0e655h          	;. U .
	ram:4fee 55             ld d,l               	;U
	ram:4fef ec 55 f4       call pe,0f455h       	;. U .
	ram:4ff2 55             ld d,l               	;U
	ram:4ff3 fa 55 18       jp m,01855h          	;. U .
	ram:4ff6 56             ld d,(hl)            	;V
	ram:4ff7 22 56 26       ld (02656h),hl       	;" V &
	ram:4ffa 56             ld d,(hl)            	;V
	ram:4ffb 2c             inc l                	;,
	ram:4ffc 56             ld d,(hl)            	;V
	ram:4ffd 36 56          ld (hl),056h         	;6 V
	ram:4fff 3a 56 40       ld a,(04056h)        	;: V @
	ram:5002 56             ld d,(hl)            	;V
	ram:5003 43             ld b,e               	;C
	ram:5004 56             ld d,(hl)            	;V
	ram:5005 4f             ld c,a               	;O
	ram:5006 56             ld d,(hl)            	;V
	ram:5007 5f             ld e,a               	;_
	ram:5008 56             ld d,(hl)            	;V
	ram:5009 6b             ld l,e               	;k
	ram:500a 56             ld d,(hl)            	;V
	ram:500b 75             ld (hl),l            	;u
	ram:500c 56             ld d,(hl)            	;V
	ram:500d 78             ld a,b               	;x
	ram:500e 56             ld d,(hl)            	;V
	ram:500f 5d             ld e,l               	;]
	ram:5010 57             ld d,a               	;W
	ram:5011 65             ld h,l               	;e
	ram:5012 57             ld d,a               	;W
	ram:5013 6d             ld l,l               	;m
	ram:5014 57             ld d,a               	;W
	ram:5015 7b             ld a,e               	;{
	ram:5016 56             ld d,(hl)            	;V
	ram:5017 93             sub e                	;.
	ram:5018 56             ld d,(hl)            	;V
	ram:5019 b3             or e                 	;.
	ram:501a 56             ld d,(hl)            	;V
	ram:501b c7             rst 0                	;.
	ram:501c 56             ld d,(hl)            	;V
	ram:501d e7             rst 20h              	;.
	ram:501e 56             ld d,(hl)            	;V
	ram:501f fb             ei                   	;.
	ram:5020 56             ld d,(hl)            	;V
	ram:5021 05             dec b                	;.
	ram:5022 57             ld d,a               	;W
	ram:5023 15             dec d                	;.
l5024h:
	ram:5024 57             ld d,a               	;W
	ram:5025 21 57 33       ld hl,03357h         	;! W 3
	ram:5028 57             ld d,a               	;W
	ram:5029 45             ld b,l               	;E
	ram:502a 57             ld d,a               	;W
	ram:502b 51             ld d,c               	;Q
	ram:502c 57             ld d,a               	;W
	ram:502d 79             ld a,c               	;y
	ram:502e 57             ld d,a               	;W
	ram:502f b1             or c                 	;.
	ram:5030 8b             adc a,e              	;.
	ram:5031 83             add a,e              	;.
	ram:5032 57             ld d,a               	;W
	ram:5033 09             add hl,bc            	;.
	ram:5034 03             inc bc               	;.
	ram:5035 6b             ld l,e               	;k
	ram:5036 63             ld h,e               	;c
	ram:5037 72             ld (hl),d            	;r
	ram:5038 63             ld h,e               	;c
	ram:5039 7a             ld a,d               	;z
	ram:503a 63             ld h,e               	;c
	ram:503b 08             ex af,af'            	;.
	ram:503c 0f             rrca                 	;.
	ram:503d 3f             ccf                  	;?
	ram:503e ff             rst 38h              	;.
	ram:503f 23             inc hl               	;#
	ram:5040 ff             rst 38h              	;.
	ram:5041 26 ff          ld h,0ffh            	;& .
	ram:5043 25             dec h                	;%
	ram:5044 ff             rst 38h              	;.
	ram:5045 27             daa                  	;'
	ram:5046 ff             rst 38h              	;.
	ram:5047 21 ff 40       ld hl,l40ffh         	;! . @
	ram:504a ff             rst 38h              	;.
	ram:504b 24             inc h                	;$
	ram:504c ff             rst 38h              	;.
	ram:504d 7e             ld a,(hl)            	;~
	ram:504e ff             rst 38h              	;.
	ram:504f 7c             ld a,h               	;|
	ram:5050 ff             rst 38h              	;.
	ram:5051 b9             cp c                 	;.
	ram:5052 ff             rst 38h              	;.
	ram:5053 b4             or h                 	;.
	ram:5054 ff             rst 38h              	;.
	ram:5055 b5             or l                 	;.
	ram:5056 ff             rst 38h              	;.
	ram:5057 b2             or d                 	;.
	ram:5058 ff             rst 38h              	;.
	ram:5059 b3             or e                 	;.
sub_505ah:
	ram:505a ff             rst 38h              	;.
	ram:505b 08             ex af,af'            	;.
	ram:505c 0f             rrca                 	;.
	ram:505d bb             cp e                 	;.
	ram:505e ff             rst 38h              	;.
	ram:505f bc             cp h                 	;.
	ram:5060 ff             rst 38h              	;.
	ram:5061 bd             cp l                 	;.
	ram:5062 ff             rst 38h              	;.
	ram:5063 be             cp (hl)              	;.
	ram:5064 ff             rst 38h              	;.
	ram:5065 bf             cp a                 	;.
	ram:5066 ff             rst 38h              	;.
	ram:5067 c0             ret nz               	;.
	ram:5068 ff             rst 38h              	;.
	ram:5069 c1             pop bc               	;.
l506ah:
	ram:506a ff             rst 38h              	;.
l506bh:
	ram:506b c2 ff c3       jp nz,0c3ffh         	;. . .
	ram:506e ff             rst 38h              	;.
	ram:506f c5             push bc              	;.
	ram:5070 ff             rst 38h              	;.
	ram:5071 c6 ff          add a,0ffh           	;. .
	ram:5073 c7             rst 0                	;.
	ram:5074 ff             rst 38h              	;.
	ram:5075 c8             ret z                	;.
	ram:5076 ff             rst 38h              	;.
	ram:5077 c9             ret                  	;.
	ram:5078 ff             rst 38h              	;.
	ram:5079 ca ff 08       jp z,008ffh          	;. . .
	ram:507c 04             inc b                	;.
	ram:507d fe 64          cp 064h              	;. d
	ram:507f 04             inc b                	;.
	ram:5080 65             ld h,l               	;e
	ram:5081 0a             ld a,(bc)            	;.
	ram:5082 65             ld h,l               	;e
	ram:5083 10 65          djnz l50eah          	;. e
	ram:5085 09             add hl,bc            	;.
	ram:5086 06 81          ld b,081h            	;. .
	ram:5088 63             ld h,e               	;c
	ram:5089 87             add a,a              	;.
	ram:508a 63             ld h,e               	;c
	ram:508b 8e             adc a,(hl)           	;.
	ram:508c 63             ld h,e               	;c
	ram:508d 96             sub (hl)             	;.
	ram:508e 63             ld h,e               	;c
	ram:508f 9c             sbc a,h              	;.
	ram:5090 63             ld h,e               	;c
	ram:5091 cf             rst 8                	;.
	ram:5092 08             ex af,af'            	;.
	ram:5093 08             ex af,af'            	;.
	ram:5094 09             add hl,bc            	;.
	ram:5095 3e 5e          ld a,05eh            	;> ^
	ram:5097 a4             and h                	;.
	ram:5098 5c             ld e,h               	;\
	ram:5099 3b             dec sp               	;;
	ram:509a 5c             ld e,h               	;\
	ram:509b 98             sbc a,b              	;.
	ram:509c 5c             ld e,h               	;\
	ram:509d 9d             sbc a,l              	;.
	ram:509e 5a             ld e,d               	;Z
	ram:509f 87             add a,a              	;.
	ram:50a0 5e             ld e,(hl)            	;^
	ram:50a1 04             inc b                	;.
	ram:50a2 5d             ld e,l               	;]
	ram:50a3 f9             ld sp,hl             	;.
	ram:50a4 5c             ld e,h               	;\
	ram:50a5 09             add hl,bc            	;.
	ram:50a6 5d             ld e,l               	;]
	ram:50a7 08             ex af,af'            	;.
	ram:50a8 04             inc b                	;.
	ram:50a9 21 ff 3a       ld hl,03affh         	;! . :
	ram:50ac 5d             ld e,l               	;]
	ram:50ad 1c             inc e                	;.
	ram:50ae 5d             ld e,l               	;]
	ram:50af df             rst 18h              	;.
	ram:50b0 5d             ld e,l               	;]
	ram:50b1 08             ex af,af'            	;.
	ram:50b2 04             inc b                	;.
	ram:50b3 14             inc d                	;.
	ram:50b4 ff             rst 38h              	;.
	ram:50b5 15             dec d                	;.
	ram:50b6 ff             rst 38h              	;.
	ram:50b7 27             daa                  	;'
	ram:50b8 ff             rst 38h              	;.
	ram:50b9 0f             rrca                 	;.
	ram:50ba 60             ld h,b               	;`
	ram:50bb 08             ex af,af'            	;.
	ram:50bc 06 a8          ld b,0a8h            	;. .
	ram:50be 5e             ld e,(hl)            	;^
	ram:50bf 22 5b 12       ld (0125bh),hl       	;" [ .
	ram:50c2 5f             ld e,a               	;_
	ram:50c3 ae             xor (hl)             	;.
	ram:50c4 5e             ld e,(hl)            	;^
	ram:50c5 28 5b          jr z,l5122h          	;( [
	ram:50c7 18 5f          jr l5128h            	;. _
	ram:50c9 08             ex af,af'            	;.
	ram:50ca 0a             ld a,(bc)            	;.
	ram:50cb 02             ld (bc),a            	;.
	ram:50cc 5f             ld e,a               	;_
	ram:50cd a0             and b                	;.
	ram:50ce 5d             ld e,l               	;]
	ram:50cf 60             ld h,b               	;`
	ram:50d0 5e             ld e,(hl)            	;^
	ram:50d1 c8             ret z                	;.
	ram:50d2 5c             ld e,h               	;\
	ram:50d3 48             ld c,b               	;H
	ram:50d4 5c             ld e,h               	;\
	ram:50d5 15             dec d                	;.
	ram:50d6 60             ld h,b               	;`
	ram:50d7 25             dec h                	;%
	ram:50d8 ff             rst 38h              	;.
	ram:50d9 7d             ld a,l               	;}
	ram:50da 5d             ld e,l               	;]
	ram:50db b1             or c                 	;.
	ram:50dc 5f             ld e,a               	;_
	ram:50dd df             rst 18h              	;.
	ram:50de 5b             ld e,e               	;[
	ram:50df 09             add hl,bc            	;.
	ram:50e0 06 81          ld b,081h            	;. .
	ram:50e2 63             ld h,e               	;c
	ram:50e3 87             add a,a              	;.
	ram:50e4 63             ld h,e               	;c
	ram:50e5 8e             adc a,(hl)           	;.
	ram:50e6 63             ld h,e               	;c
	ram:50e7 96             sub (hl)             	;.
	ram:50e8 63             ld h,e               	;c
	ram:50e9 9c             sbc a,h              	;.
l50eah:
	ram:50ea 63             ld h,e               	;c
	ram:50eb 9d             sbc a,l              	;.
	ram:50ec 5c             ld e,h               	;\
	ram:50ed 09             add hl,bc            	;.
	ram:50ee 08             ex af,af'            	;.
	ram:50ef e5             push hl              	;.
	ram:50f0 5b             ld e,e               	;[
	ram:50f1 21 5d 49       ld hl,l495dh         	;! ] I
	ram:50f4 5b             ld e,e               	;[
	ram:50f5 4f             ld c,a               	;O
	ram:50f6 5b             ld e,e               	;[
	ram:50f7 22 5c 1c       ld (01c5ch),hl       	;" \ .
	ram:50fa 5c             ld e,h               	;\
	ram:50fb 16 5c          ld d,05ch            	;. \
	ram:50fd b3             or e                 	;.
	ram:50fe 5a             ld e,d               	;Z
	ram:50ff 09             add hl,bc            	;.
	ram:5100 05             dec b                	;.
	ram:5101 a3             and e                	;.
	ram:5102 63             ld h,e               	;c
	ram:5103 a9             xor c                	;.
	ram:5104 63             ld h,e               	;c
	ram:5105 b0             or b                 	;.
	ram:5106 63             ld h,e               	;c
	ram:5107 b7             or a                 	;.
	ram:5108 63             ld h,e               	;c
	ram:5109 be             cp (hl)              	;.
	ram:510a 63             ld h,e               	;c
	ram:510b 08             ex af,af'            	;.
	ram:510c 05             dec b                	;.
	ram:510d 0b             dec bc               	;.
	ram:510e ff             rst 38h              	;.
	ram:510f 0c             inc c                	;.
	ram:5110 ff             rst 38h              	;.
	ram:5111 0d             dec c                	;.
	ram:5112 ff             rst 38h              	;.
	ram:5113 0e ff          ld c,0ffh            	;. .
	ram:5115 0f             rrca                 	;.
	ram:5116 ff             rst 38h              	;.
l5117h:
	ram:5117 08             ex af,af'            	;.
	ram:5118 0a             ld a,(bc)            	;.
	ram:5119 16 65          ld d,065h            	;. e
	ram:511b 0c             inc c                	;.
	ram:511c ff             rst 38h              	;.
	ram:511d 0d             dec c                	;.
	ram:511e ff             rst 38h              	;.
	ram:511f 0e ff          ld c,0ffh            	;. .
	ram:5121 0f             rrca                 	;.
l5122h:
	ram:5122 ff             rst 38h              	;.
	ram:5123 0a             ld a,(bc)            	;.
	ram:5124 ff             rst 38h              	;.
	ram:5125 0b             dec bc               	;.
	ram:5126 ff             rst 38h              	;.
	ram:5127 0c             inc c                	;.
l5128h:
	ram:5128 ff             rst 38h              	;.
	ram:5129 0d             dec c                	;.
	ram:512a ff             rst 38h              	;.
	ram:512b 1e 65          ld e,065h            	;. e
	ram:512d 08             ex af,af'            	;.
	ram:512e 04             inc b                	;.
	ram:512f 01 ff 04       ld bc,004ffh         	;. . .
	ram:5132 ff             rst 38h              	;.
	ram:5133 02             ld (bc),a            	;.
	ram:5134 ff             rst 38h              	;.
	ram:5135 03             inc bc               	;.
	ram:5136 ff             rst 38h              	;.
	ram:5137 08             ex af,af'            	;.
	ram:5138 04             inc b                	;.
	ram:illegal sequence                defb 0fdh,05fh,01ch  	;;5139	fd 5f 1c	. _ .
	ram:513c 60             ld h,b               	;`
	ram:513d 22 60 09       ld (00960h),hl       	;" ` .
	ram:5140 60             ld h,b               	;`
	ram:5141 08             ex af,af'            	;.
	ram:5142 04             inc b                	;.
	ram:5143 a2             and d                	;.
	ram:5144 5a             ld e,d               	;Z
	ram:5145 4c             ld c,h               	;L
	ram:5146 5d             ld e,l               	;]
	ram:5147 4e             ld c,(hl)            	;N
	ram:5148 5f             ld e,a               	;_
	ram:5149 35             dec (hl)             	;5
	ram:514a 5d             ld e,l               	;]
	ram:514b 08             ex af,af'            	;.
	ram:514c 04             inc b                	;.
	ram:514d 38 5e          jr c,96              	;8 ^
	ram:514f 32 5e 79       ld (l795eh),a        	;2 ^ y
	ram:5152 5e             ld e,(hl)            	;^
	ram:5153 72             ld (hl),d            	;r
	ram:5154 5e             ld e,(hl)            	;^
	ram:5155 09             add hl,bc            	;.
	ram:5156 06 d2          ld b,0d2h            	;. .
	ram:5158 5f             ld e,a               	;_
	ram:5159 3c             inc a                	;<
	ram:515a ff             rst 38h              	;.
	ram:515b 3e ff          ld a,0ffh            	;> .
	ram:515d 17             rla                  	;.
	ram:515e ff             rst 38h              	;.
	ram:515f 19             add hl,de            	;.
	ram:5160 ff             rst 38h              	;.
	ram:5161 18 ff          jr 1                 	;. .
	ram:5163 09             add hl,bc            	;.
	ram:5164 07             rlca                 	;.
	ram:5165 fe 5a          cp 05ah              	;. Z
	ram:5167 fa 5d 84       jp m,0845dh          	;. ] .
	ram:516a 5c             ld e,h               	;\
	ram:516b 9d             sbc a,l              	;.
	ram:516c 5a             ld e,d               	;Z
	ram:516d a7             and a                	;.
	ram:516e 5a             ld e,d               	;Z
	ram:516f 2e 60          ld l,060h            	;. `
	ram:5171 28 60          jr z,l51d3h          	;( `
	ram:5173 09             add hl,bc            	;.
	ram:5174 05             dec b                	;.
	ram:5175 22 ff fd       ld (0fdffh),hl       	;" . .
	ram:5178 5e             ld e,(hl)            	;^
	ram:5179 e4 5c d8       call po,0d85ch       	;. \ .
	ram:517c 5b             ld e,e               	;[
	ram:517d f6 5e          or 05eh              	;. ^
	ram:517f 09             add hl,bc            	;.
	ram:5180 03             inc bc               	;.
	ram:5181 ca 63 06       jp z,00663h          	;. c .
	ram:5184 08             ex af,af'            	;.
	ram:5185 d2 63 08       jp nc,00863h         	;. c .
	ram:5188 0f             rrca                 	;.
	ram:5189 0a             ld a,(bc)            	;.
	ram:518a 61             ld h,c               	;a
	ram:518b 0e 61          ld c,061h            	;. a
	ram:518d 11 61 15       ld de,01561h         	;. a .
	ram:5190 61             ld h,c               	;a
	ram:5191 19             add hl,de            	;.
	ram:5192 61             ld h,c               	;a
	ram:5193 1d             dec e                	;.
	ram:5194 61             ld h,c               	;a
	ram:5195 21 61 24       ld hl,02461h         	;! a $
	ram:5198 61             ld h,c               	;a
	ram:5199 28 61          jr z,l51fch          	;( a
	ram:519b 2c             inc l                	;,
	ram:519c 61             ld h,c               	;a
	ram:519d 30 61          jr nc,l5200h         	;0 a
	ram:519f 34             inc (hl)             	;4
	ram:51a0 61             ld h,c               	;a
	ram:51a1 38 61          jr c,l5204h          	;8 a
	ram:51a3 3b             dec sp               	;;
	ram:51a4 61             ld h,c               	;a
	ram:51a5 3e 61          ld a,061h            	;> a
	ram:51a7 18 33          jr l51dch            	;. 3
	ram:51a9 4c             ld c,h               	;L
	ram:51aa 09             add hl,bc            	;.
	ram:51ab 02             ld (bc),a            	;.
	ram:51ac ca 63 d2       jp z,0d263h          	;. c .
	ram:51af 63             ld h,e               	;c
	ram:51b0 09             add hl,bc            	;.
	ram:51b1 05             dec b                	;.
	ram:51b2 d9             exx                  	;.
	ram:51b3 63             ld h,e               	;c
	ram:51b4 11 08 e1       ld de,0e108h         	;. . .
	ram:51b7 63             ld h,e               	;c
	ram:51b8 e8             ret pe               	;.
	ram:51b9 63             ld h,e               	;c
	ram:51ba 03             inc bc               	;.
	ram:51bb 64             ld h,h               	;d
	ram:51bc 18 37          jr l51f5h            	;. 7
	ram:51be 4c             ld c,h               	;L
	ram:51bf 08             ex af,af'            	;.
	ram:51c0 04             inc b                	;.
	ram:51c1 2f             cpl                  	;/
	ram:51c2 5b             ld e,e               	;[
	ram:51c3 33             inc sp               	;3
	ram:51c4 5f             ld e,a               	;_
	ram:51c5 27             daa                  	;'
	ram:51c6 5d             ld e,l               	;]
	ram:51c7 79             ld a,c               	;y
	ram:51c8 5b             ld e,e               	;[
	ram:51c9 08             ex af,af'            	;.
	ram:51ca 08             ex af,af'            	;.
	ram:51cb 61             ld h,c               	;a
	ram:51cc 5b             ld e,e               	;[
	ram:51cd 04             inc b                	;.
	ram:51ce 5c             ld e,h               	;\
	ram:51cf 28 60          jr z,l5231h          	;( `
	ram:51d1 03             inc bc               	;.
	ram:51d2 60             ld h,b               	;`
l51d3h:
	ram:51d3 34             inc (hl)             	;4
	ram:51d4 60             ld h,b               	;`
	ram:51d5 2e 60          ld l,060h            	;. `
	ram:51d7 d9             exx                  	;.
	ram:51d8 5c             ld e,h               	;\
	ram:51d9 3a 5f 09       ld a,(0095fh)        	;: _ .
l51dch:
	ram:51dc 04             inc b                	;.
	ram:51dd d9             exx                  	;.
	ram:51de 63             ld h,e               	;c
	ram:51df e1             pop hl               	;.
	ram:51e0 63             ld h,e               	;c
	ram:51e1 e8             ret pe               	;.
	ram:51e2 63             ld h,e               	;c
	ram:51e3 03             inc bc               	;.
	ram:51e4 64             ld h,h               	;d
	ram:51e5 09             add hl,bc            	;.
	ram:51e6 05             dec b                	;.
	ram:51e7 ee 63          xor 063h             	;. c
	ram:51e9 1c             inc e                	;.
	ram:51ea 08             ex af,af'            	;.
	ram:51eb f6 63          or 063h              	;. c
	ram:ld iyh,e                defb 0fdh,063h       	;;51ed	fd 63		. c
	ram:51ef 03             inc bc               	;.
	ram:51f0 64             ld h,h               	;d
	ram:51f1 18 3b          jr l522eh            	;. ;
	ram:51f3 4c             ld c,h               	;L
	ram:51f4 08             ex af,af'            	;.
l51f5h:
	ram:51f5 09             add hl,bc            	;.
	ram:51f6 55             ld d,l               	;U
	ram:51f7 5b             ld e,e               	;[
	ram:51f8 16 ff          ld d,0ffh            	;. .
	ram:51fa 27             daa                  	;'
	ram:51fb 5d             ld e,l               	;]
l51fch:
	ram:51fc c1             pop bc               	;.
	ram:51fd 5b             ld e,e               	;[
	ram:51fe ba             cp d                 	;.
	ram:51ff 5b             ld e,e               	;[
l5200h:
	ram:5200 2b             dec hl               	;+
	ram:5201 5e             ld e,(hl)            	;^
	ram:5202 f1             pop af               	;.
	ram:5203 5a             ld e,d               	;Z
l5204h:
	ram:5204 f5             push af              	;.
	ram:5205 5c             ld e,h               	;\
	ram:5206 f8             ret m                	;.
	ram:5207 5a             ld e,d               	;Z
	ram:5208 08             ex af,af'            	;.
	ram:5209 05             dec b                	;.
	ram:520a fe 5a          cp 05ah              	;. Z
	ram:520c fa 5d 84       jp m,0845dh          	;. ] .
	ram:520f 5c             ld e,h               	;\
	ram:5210 9d             sbc a,l              	;.
	ram:5211 5a             ld e,d               	;Z
	ram:5212 a7             and a                	;.
	ram:5213 5a             ld e,d               	;Z
	ram:5214 08             ex af,af'            	;.
	ram:5215 0b             dec bc               	;.
	ram:5216 61             ld h,c               	;a
	ram:5217 5b             ld e,e               	;[
	ram:5218 04             inc b                	;.
	ram:5219 5c             ld e,h               	;\
	ram:521a 79             ld a,c               	;y
	ram:521b 5c             ld e,h               	;\
	ram:521c 16 5e          ld d,05eh            	;. ^
	ram:521e 45             ld b,l               	;E
	ram:521f 5e             ld e,(hl)            	;^
	ram:5220 b8             cp b                 	;.
	ram:5221 5a             ld e,d               	;Z
	ram:5222 4b             ld c,e               	;K
	ram:5223 5e             ld e,(hl)            	;^
	ram:5224 d1             pop de               	;.
	ram:5225 5d             ld e,l               	;]
	ram:5226 15             dec d                	;.
	ram:5227 5d             ld e,l               	;]
	ram:5228 0e 5d          ld c,05dh            	;. ]
	ram:522a e5             push hl              	;.
	ram:522b 5d             ld e,l               	;]
	ram:522c 03             inc bc               	;.
	ram:522d 07             rlca                 	;.
l522eh:
	ram:522e cc 57 d3       call z,0d357h        	;. W .
l5231h:
	ram:5231 57             ld d,a               	;W
	ram:5232 8b             adc a,e              	;.
	ram:5233 58             ld e,b               	;X
	ram:5234 06 58          ld b,058h            	;. X
	ram:5236 76             halt                 	;v
	ram:5237 58             ld e,b               	;X
	ram:5238 e9             jp (hl)              	;.
	ram:5239 57             ld d,a               	;W
	ram:523a c6 59          add a,059h           	;. Y
	ram:523c 09             add hl,bc            	;.
	ram:523d 04             inc b                	;.
	ram:523e ee 63          xor 063h             	;. c
	ram:5240 f6 63          or 063h              	;. c
	ram:5242 fd 63          ld iyh,e                ;defb 0fdh,063h ;. c
l5244h:
	ram:5244 03             inc bc               	;.
	ram:5245 64             ld h,h               	;d
	ram:5246 09             add hl,bc            	;.
sub_5247h:
	ram:5247 05             dec b                	;.
	ram:5248 7b             ld a,e               	;{
	ram:5249 ff             rst 38h              	;.
	ram:524a 7d             ld a,l               	;}
	ram:524b ff             rst 38h              	;.
	ram:524c 7a             ld a,d               	;z
	ram:524d 64             ld h,h               	;d
	ram:524e db 08          in a,(008h)          	;. .
	ram:5250 c4 63 08       call nz,00863h       	;. c .
	ram:5253 0b             dec bc               	;.
	ram:5254 66             ld h,(hl)            	;f
	ram:5255 5b             ld e,e               	;[
	ram:5256 bd             cp l                 	;.
	ram:5257 5e             ld e,(hl)            	;^
	ram:5258 c4 5e 04       call nz,0045eh       	;. ^ .
	ram:525b 5d             ld e,l               	;]
	ram:525c f9             ld sp,hl             	;.
	ram:525d 5c             ld e,h               	;\
	ram:525e 02             ld (bc),a            	;.
	ram:525f 5f             ld e,a               	;_
	ram:5260 a0             and b                	;.
	ram:5261 5d             ld e,l               	;]
	ram:5262 60             ld h,b               	;`
	ram:5263 5e             ld e,(hl)            	;^
	ram:5264 d9             exx                  	;.
	ram:5265 5c             ld e,h               	;\
	ram:5266 3a 5f 04       ld a,(0045fh)        	;: _ .
	ram:5269 5c             ld e,h               	;\
	ram:526a 09             add hl,bc            	;.
	ram:526b 04             inc b                	;.
	ram:526c 7b             ld a,e               	;{
	ram:526d ff             rst 38h              	;.
	ram:526e 7d             ld a,l               	;}
	ram:526f ff             rst 38h              	;.
	ram:5270 7a             ld a,d               	;z
	ram:5271 64             ld h,h               	;d
	ram:5272 c4 63 09       call nz,00963h       	;. c .
	ram:5275 02             ld (bc),a            	;.
	ram:5276 0a             ld a,(bc)            	;.
	ram:5277 64             ld h,h               	;d
	ram:5278 27             daa                  	;'
	ram:5279 08             ex af,af'            	;.
	ram:527a 18 3f          jr l52bbh            	;. ?
	ram:527c 4c             ld c,h               	;L
	ram:527d 19             add hl,de            	;.
	ram:527e 3f             ccf                  	;?
	ram:527f 4c             ld c,h               	;L
	ram:5280 03             inc bc               	;.
	ram:5281 07             rlca                 	;.
	ram:5282 c5             push bc              	;.
	ram:5283 58             ld e,b               	;X
	ram:5284 bd             cp l                 	;.
	ram:5285 58             ld e,b               	;X
	ram:5286 12             ld (de),a            	;.
	ram:5287 64             ld h,h               	;d
	ram:5288 18 64          jr l52eeh            	;. d
	ram:528a 76             halt                 	;v
	ram:528b 58             ld e,b               	;X
	ram:528c e9             jp (hl)              	;.
	ram:528d 57             ld d,a               	;W
	ram:528e 89             adc a,c              	;.
	ram:528f 59             ld e,c               	;Y
	ram:5290 00             nop                  	;.
	ram:5291 0a             ld a,(bc)            	;.
	ram:5292 91             sub c                	;.
	ram:5293 5c             ld e,h               	;\
	ram:5294 a6             and (hl)             	;.
	ram:5295 5d             ld e,l               	;]
	ram:5296 6c             ld l,h               	;l
	ram:5297 5b             ld e,e               	;[
	ram:5298 72             ld (hl),d            	;r
	ram:5299 5b             ld e,e               	;[
	ram:529a 50             ld d,b               	;P
	ram:529b 5d             ld e,l               	;]
	ram:529c 8a             adc a,d              	;.
	ram:529d 5c             ld e,h               	;\
	ram:529e 4d             ld c,l               	;M
	ram:529f 5c             ld e,h               	;\
	ram:52a0 ea 5a ae       jp pe,0ae5ah         	;. Z .
	ram:52a3 5d             ld e,l               	;]
	ram:52a4 22 ff 00       ld (000ffh),hl       	;" . .
	ram:52a7 0f             rrca                 	;.
	ram:52a8 80             add a,b              	;.
	ram:52a9 5c             ld e,h               	;\
	ram:52aa 26 5f          ld h,05fh            	;& _
	ram:52ac c8             ret z                	;.
	ram:52ad 5b             ld e,e               	;[
	ram:52ae 36 5c          ld (hl),05ch         	;6 \
	ram:52b0 ce 5b          adc a,05bh           	;. [
	ram:52b2 47             ld b,a               	;G
	ram:52b3 5f             ld e,a               	;_
	ram:52b4 1b             dec de               	;.
	ram:52b5 5e             ld e,(hl)            	;^
	ram:52b6 fe 5c          cp 05ch              	;. \
	ram:52b8 c3 5c 54       jp l545ch            	;. \ T
l52bbh:
	ram:52bb 5c             ld e,h               	;\
	ram:52bc ab             xor e                	;.
	ram:52bd 5c             ld e,h               	;\
	ram:52be 9f             sbc a,a              	;.
	ram:52bf 5b             ld e,e               	;[
	ram:52c0 76             halt                 	;v
	ram:52c1 5d             ld e,l               	;]
	ram:52c2 23             inc hl               	;#
	ram:52c3 5e             ld e,(hl)            	;^
	ram:52c4 e9             jp (hl)              	;.
	ram:52c5 5e             ld e,(hl)            	;^
	ram:52c6 09             add hl,bc            	;.
	ram:52c7 0d             dec c                	;.
	ram:52c8 1e 64          ld e,064h            	;. d
	ram:52ca 25             dec h                	;%
	ram:52cb 64             ld h,h               	;d
	ram:52cc 2d             dec l                	;-
	ram:52cd 64             ld h,h               	;d
	ram:52ce 2c             inc l                	;,
	ram:52cf 5f             ld e,a               	;_
	ram:52d0 72             ld (hl),d            	;r
	ram:52d1 5b             ld e,e               	;[
	ram:52d2 34             inc (hl)             	;4
	ram:52d3 64             ld h,h               	;d
	ram:52d4 3b             dec sp               	;;
	ram:52d5 64             ld h,h               	;d
	ram:52d6 8c             adc a,h              	;.
	ram:52d7 08             ex af,af'            	;.
	ram:52d8 e2 5e ec       jp po,0ec5eh         	;. ^ .
	ram:52db 5d             ld e,l               	;]
	ram:52dc df             rst 18h              	;.
	ram:52dd 5b             ld e,e               	;[
	ram:52de ef             rst 28h              	;.
	ram:52df 5e             ld e,(hl)            	;^
	ram:52e0 f3             di                   	;.
	ram:52e1 5d             ld e,l               	;]
	ram:52e2 08             ex af,af'            	;.
	ram:52e3 0e 5b          ld c,05bh            	;. [
	ram:52e5 60             ld h,b               	;`
	ram:52e6 c8             ret z                	;.
	ram:52e7 07             rlca                 	;.
	ram:52e8 57             ld d,a               	;W
	ram:52e9 60             ld h,b               	;`
	ram:52ea 5e             ld e,(hl)            	;^
	ram:52eb 60             ld h,b               	;`
	ram:52ec 54             ld d,h               	;T
	ram:52ed 60             ld h,b               	;`
l52eeh:
	ram:52ee 51             ld d,c               	;Q
	ram:52ef 60             ld h,b               	;`
	ram:52f0 62             ld h,d               	;b
	ram:52f1 60             ld h,b               	;`
	ram:52f2 46             ld b,(hl)            	;F
	ram:52f3 60             ld h,b               	;`
	ram:52f4 49             ld c,c               	;I
	ram:52f5 60             ld h,b               	;`
	ram:52f6 54             ld d,h               	;T
	ram:52f7 60             ld h,b               	;`
	ram:52f8 30 5c          jr nc,l5356h         	;0 \
	ram:52fa 29             add hl,hl            	;)
	ram:52fb 5c             ld e,h               	;\
	ram:52fc bd             cp l                 	;.
	ram:52fd 5a             ld e,d               	;Z
	ram:52fe 4d             ld c,l               	;M
	ram:52ff 60             ld h,b               	;`
	ram:5300 08             ex af,af'            	;.
	ram:5301 0e 65          ld c,065h            	;. e
	ram:5303 60             ld h,b               	;`
	ram:5304 6b             ld l,e               	;k
	ram:5305 60             ld h,b               	;`
	ram:5306 71             ld (hl),c            	;q
	ram:5307 60             ld h,b               	;`
	ram:5308 77             ld (hl),a            	;w
	ram:5309 60             ld h,b               	;`
	ram:530a 7d             ld a,l               	;}
	ram:530b 60             ld h,b               	;`
	ram:530c 83             add a,e              	;.
	ram:530d 60             ld h,b               	;`
	ram:530e 89             adc a,c              	;.
	ram:530f 60             ld h,b               	;`
	ram:5310 8f             adc a,a              	;.
	ram:5311 60             ld h,b               	;`
	ram:5312 95             sub l                	;.
	ram:5313 60             ld h,b               	;`
	ram:5314 9c             sbc a,h              	;.
	ram:5315 60             ld h,b               	;`
	ram:5316 a2             and d                	;.
	ram:5317 60             ld h,b               	;`
	ram:5318 a8             xor b                	;.
	ram:5319 60             ld h,b               	;`
	ram:531a af             xor a                	;.
	ram:531b 60             ld h,b               	;`
	ram:531c b6             or (hl)              	;.
	ram:531d 60             ld h,b               	;`
	ram:531e 08             ex af,af'            	;.
	ram:531f 0a             ld a,(bc)            	;.
	ram:5320 6d             ld l,l               	;m
	ram:5321 5f             ld e,a               	;_
	ram:5322 68             ld l,b               	;h
	ram:5323 5f             ld e,a               	;_
	ram:5324 73             ld (hl),e            	;s
	ram:5325 5f             ld e,a               	;_
	ram:5326 8c             adc a,h              	;.
	ram:5327 5f             ld e,a               	;_
	ram:5328 79             ld a,c               	;y
	ram:5329 5f             ld e,a               	;_
	ram:532a 62             ld h,d               	;b
	ram:532b 5f             ld e,a               	;_
	ram:532c 86             add a,(hl)           	;.
	ram:532d 5f             ld e,a               	;_
	ram:532e 92             sub d                	;.
	ram:532f 5f             ld e,a               	;_
	ram:5330 5b             ld e,e               	;[
	ram:5331 5f             ld e,a               	;_
	ram:5332 80             add a,b              	;.
	ram:5333 5f             ld e,a               	;_
	ram:5334 08             ex af,af'            	;.
	ram:5335 04             inc b                	;.
	ram:5336 1c             inc e                	;.
	ram:5337 5c             ld e,h               	;\
	ram:5338 16 5c          ld d,05ch            	;. \
	ram:533a b3             or e                 	;.
	ram:533b 5a             ld e,d               	;Z
	ram:533c 22 5c 08       ld (0085ch),hl       	;" \ .
	ram:533f 0b             dec bc               	;.
	ram:5340 6b             ld l,e               	;k
	ram:5341 5e             ld e,(hl)            	;^
	ram:5342 cd 5c 41       call sub_415ch       	;. \ A
	ram:5345 5f             ld e,a               	;_
	ram:5346 dc 5a 87       call c,0875ah        	;. Z .
	ram:5349 5b             ld e,e               	;[
	ram:534a c5             push bc              	;.
	ram:534b 5d             ld e,l               	;]
	ram:534c be             cp (hl)              	;.
	ram:534d 5d             ld e,l               	;]
	ram:534e b7             or a                 	;.
	ram:534f 5d             ld e,l               	;]
	ram:5350 e3             ex (sp),hl           	;.
	ram:5351 5a             ld e,d               	;Z
	ram:5352 1f             rra                  	;.
	ram:5353 5f             ld e,a               	;_
	ram:5354 98             sbc a,b              	;.
	ram:5355 5b             ld e,e               	;[
l5356h:
	ram:5356 09             add hl,bc            	;.
	ram:5357 05             dec b                	;.
	ram:5358 e6 08          and 008h             	;. .
sub_535ah:
	ram:535a a4             and h                	;.
	ram:535b 08             ex af,af'            	;.
	ram:535c 38 08          jr c,l5366h          	;8 .
	ram:535e 4c             ld c,h               	;L
	ram:535f 09             add hl,bc            	;.
	ram:5360 82             add a,d              	;.
	ram:5361 64             ld h,h               	;d
	ram:5362 09             add hl,bc            	;.
	ram:5363 04             inc b                	;.
	ram:5364 e6 08          and 008h             	;. .
l5366h:
	ram:5366 a4             and h                	;.
	ram:5367 08             ex af,af'            	;.
	ram:5368 38 08          jr c,10              	;8 .
	ram:536a 4c             ld c,h               	;L
	ram:536b 09             add hl,bc            	;.
	ram:536c 08             ex af,af'            	;.
	ram:536d 09             add hl,bc            	;.
	ram:536e f1             pop af               	;.
	ram:536f 08             ex af,af'            	;.
    ram:5370 fd 08 08       ;illegal sequence                defb 0fdh,008h,008h  	;. . .
	ram:5373 09             add hl,bc            	;.
	ram:5374 12             ld (de),a            	;.
	ram:5375 09             add hl,bc            	;.
	ram:5376 1d             dec e                	;.
	ram:5377 09             add hl,bc            	;.
	ram:5378 28 09          jr z,l5383h          	;( .
	ram:537a 34             inc (hl)             	;4
	ram:537b 09             add hl,bc            	;.
	ram:537c 40             ld b,b               	;@
	ram:537d 09             add hl,bc            	;.
	ram:537e 71             ld (hl),c            	;q
	ram:537f 59             ld e,c               	;Y
	ram:5380 00             nop                  	;.
	ram:5381 05             dec b                	;.
	ram:5382 84             add a,h              	;.
l5383h:
	ram:5383 58             ld e,b               	;X
	ram:5384 ff             rst 38h              	;.
	ram:5385 57             ld d,a               	;W
	ram:5386 3c             inc a                	;<
	ram:5387 59             ld e,c               	;Y
	ram:5388 44             ld b,h               	;D
	ram:5389 59             ld e,c               	;Y
	ram:538a bc             cp h                 	;.
	ram:538b 57             ld d,a               	;W
	ram:538c 08             ex af,af'            	;.
	ram:538d 11 cb ff       ld de,0ffcbh         	;. . .
	ram:5390 c6 60          add a,060h           	;. `
	ram:5392 ca 60 cc       jp z,0cc60h          	;. ` .
	ram:5395 ff             rst 38h              	;.
	ram:5396 ce 60          adc a,060h           	;. `
	ram:5398 d2 60 d6       jp nc,0d660h         	;. ` .
	ram:539b 60             ld h,b               	;`
	ram:539c da 60 df       jp c,0df60h          	;. ` .
	ram:539f 60             ld h,b               	;`
	ram:53a0 e3             ex (sp),hl           	;.
	ram:53a1 60             ld h,b               	;`
	ram:53a2 e8             ret pe               	;.
 ; BEGIN Looks like data block
	ram:53a3 60             ld h,b               	;`
	ram:53a4 ed 60          in h,(c)             	;. `
	ram:53a6 f4 60 fa       call p,0fa60h        	;. ` .
	ram:53a9 60             ld h,b               	;`
	ram:ld iyh,b                defb 0fdh,060h       	;;53aa	fd 60		. `
	ram:53ac 00             nop                  	;.
	ram:53ad 61             ld h,c               	;a
	ram:53ae 03             inc bc               	;.
	ram:53af 61             ld h,c               	;a
	ram:53b0 00             nop                  	;.
	ram:53b1 08             ex af,af'            	;.
	ram:53b2 67             ld h,a               	;g
	ram:53b3 58             ld e,b               	;X
	ram:53b4 17             rla                  	;.
	ram:53b5 59             ld e,c               	;Y
	ram:53b6 a7             and a                	;.
	ram:53b7 59             ld e,c               	;Y
	ram:53b8 1c             inc e                	;.
	ram:53b9 58             ld e,b               	;X
	ram:53ba ad             xor l                	;.
	ram:53bb 57             ld d,a               	;W
	ram:53bc 87             add a,a              	;.
	ram:53bd 5b             ld e,e               	;[
	ram:53be 69             ld l,c               	;i
	ram:53bf 59             ld e,c               	;Y
	ram:53c0 f9             ld sp,hl             	;.
	ram:53c1 58             ld e,b               	;X
	ram:53c2 09             add hl,bc            	;.
	ram:53c3 07             rlca                 	;.
	ram:53c4 90             sub b                	;.
	ram:53c5 64             ld h,h               	;d
	ram:53c6 82             add a,d              	;.
	ram:53c7 64             ld h,h               	;d
	ram:53c8 97             sub a                	;.
	ram:53c9 64             ld h,h               	;d
	ram:53ca f6 5b          or 05bh              	;. [
    ram:53cc fd 5b cb       ;illegal sequence   defb 0fdh,05bh,0cbh  	;. [ .
	ram:53cf 5e             ld e,(hl)            	;^
	ram:53d0 d2 5e 08       jp nc,0085eh         	;. ^ .
	ram:53d3 09             add hl,bc            	;.
	ram:53d4 44             ld b,h               	;D
	ram:53d5 5d             ld e,l               	;]
	ram:53d6 d3 5c          out (05ch),a         	;. \
	ram:53d8 eb             ex de,hl             	;.
	ram:53d9 5c             ld e,h               	;\
	ram:53da ec 5b cb       call pe,0cb5bh       	;. [ .
	ram:53dd 5d             ld e,l               	;]
	ram:53de 5a             ld e,d               	;Z
	ram:53df 5d             ld e,l               	;]
	ram:53e0 61             ld h,c               	;a
	ram:53e1 5d             ld e,l               	;]
	ram:53e2 68             ld l,b               	;h
	ram:53e3 5d             ld e,l               	;]
	ram:53e4 80             add a,b              	;.
	ram:53e5 5e             ld e,(hl)            	;^
	ram:53e6 08             ex af,af'            	;.
	ram:53e7 07             rlca                 	;.
	ram:53e8 70             ld (hl),b            	;p
	ram:53e9 5c             ld e,h               	;\
	ram:53ea 52             ld d,d               	;R
	ram:53eb 5e             ld e,(hl)            	;^
	ram:53ec 53             ld d,e               	;S
	ram:53ed 5f             ld e,a               	;_
	ram:53ee 87             add a,a              	;.
	ram:53ef 5b             ld e,e               	;[
	ram:53f0 e3             ex (sp),hl           	;.
	ram:53f1 5a             ld e,d               	;Z
	ram:53f2 ef             rst 28h              	;.
	ram:53f3 5e             ld e,(hl)            	;^
	ram:53f4 f3             di                   	;.
	ram:53f5 5d             ld e,l               	;]
	ram:53f6 03             inc bc               	;.
	ram:53f7 0e 33          ld c,033h            	;. 3
	ram:53f9 5a             ld e,d               	;Z
	ram:53fa 7f             ld a,a               	;.
	ram:53fb 5a             ld e,d               	;Z
	ram:53fc 48             ld c,b               	;H
	ram:53fd 5a             ld e,d               	;Z
	ram:53fe 5b             ld e,e               	;[
	ram:53ff 5a             ld e,d               	;Z
	ram:5400 95             sub l                	;.
	ram:5401 5a             ld e,d               	;Z
	ram:5402 62             ld h,d               	;b
	ram:5403 5a             ld e,d               	;Z
	ram:5404 8d             adc a,l              	;.
	ram:5405 5a             ld e,d               	;Z
	ram:5406 4f             ld c,a               	;O
	ram:5407 5a             ld e,d               	;Z
	ram:5408 41             ld b,c               	;A
	ram:5409 5a             ld e,d               	;Z
	ram:540a 70             ld (hl),b            	;p
	ram:540b 5a             ld e,d               	;Z
	ram:540c 55             ld d,l               	;U
	ram:540d 5a             ld e,d               	;Z
	ram:540e 6a             ld l,d               	;j
	ram:540f 5a             ld e,d               	;Z
	ram:5410 86             add a,(hl)           	;.
	ram:5411 5a             ld e,d               	;Z
	ram:5412 77             ld (hl),a            	;w
	ram:5413 5a             ld e,d               	;Z
	ram:5414 03             inc bc               	;.
	ram:5415 02             ld (bc),a            	;.
	ram:5416 c5             push bc              	;.
	ram:5417 58             ld e,b               	;X
	ram:5418 bd             cp l                 	;.
	ram:5419 58             ld e,b               	;X
	ram:541a 03             inc bc               	;.
	ram:541b 0c             inc c                	;.
	ram:541c 33             inc sp               	;3
	ram:541d 5a             ld e,d               	;Z
	ram:541e 7f             ld a,a               	;.
	ram:541f 5a             ld e,d               	;Z
	ram:5420 48             ld c,b               	;H
	ram:5421 5a             ld e,d               	;Z
	ram:5422 5b             ld e,e               	;[
	ram:5423 5a             ld e,d               	;Z
	ram:5424 95             sub l                	;.
	ram:5425 5a             ld e,d               	;Z
	ram:5426 62             ld h,d               	;b
	ram:5427 5a             ld e,d               	;Z
	ram:5428 8d             adc a,l              	;.
	ram:5429 5a             ld e,d               	;Z
	ram:542a 4f             ld c,a               	;O
	ram:542b 5a             ld e,d               	;Z
	ram:542c 41             ld b,c               	;A
	ram:542d 5a             ld e,d               	;Z
	ram:542e 70             ld (hl),b            	;p
	ram:542f 5a             ld e,d               	;Z
	ram:5430 55             ld d,l               	;U
	ram:5431 5a             ld e,d               	;Z
	ram:5432 6a             ld l,d               	;j
	ram:5433 5a             ld e,d               	;Z
; END -- looks like data block
l5434h:
	ram:5434 07             rlca                 	;.
	ram:5435 0d             dec c                	;.
	ram:5436 43             ld b,e               	;C
	ram:5437 08             ex af,af'            	;.
	ram:5438 74             ld (hl),h            	;t
	ram:5439 08             ex af,af'            	;.
	ram:543a 42             ld b,d               	;B
	ram:543b 64             ld h,h               	;d
	ram:543c 81             add a,c              	;.
	ram:543d 59             ld e,c               	;Y
	ram:543e 5f             ld e,a               	;_
	ram:543f 58             ld e,b               	;X
	ram:5440 49             ld c,c               	;I
	ram:5441 64             ld h,h               	;d
	ram:5442 50             ld d,b               	;P
	ram:5443 64             ld h,h               	;d
	ram:5444 80             add a,b              	;.
	ram:5445 08             ex af,af'            	;.
	ram:5446 4c             ld c,h               	;L
	ram:5447 59             ld e,c               	;Y
	ram:5448 f1             pop af               	;.
	ram:5449 58             ld e,b               	;X
	ram:544a 3c             inc a                	;<
	ram:544b 58             ld e,b               	;X
	ram:544c 69             ld l,c               	;i
	ram:544d 59             ld e,c               	;Y
	ram:544e f9             ld sp,hl             	;.
	ram:544f 58             ld e,b               	;X
sub_5450h:
	ram:5450 04             inc b                	;.
	ram:5451 0f             rrca                 	;.
	ram:5452 ce 59          adc a,059h           	;. Y
	ram:5454 e3             ex (sp),hl           	;.
	ram:5455 59             ld e,c               	;Y
	ram:5456 00             nop                  	;.
sub_5457h:
	ram:5457 5a             ld e,d               	;Z
	ram:5458 16 5a          ld d,05ah            	;. Z
l545ah:
	ram:545a 07             rlca                 	;.
	ram:545b 5a             ld e,d               	;Z
l545ch:
	ram:545c dc 59 0f       call c,00f59h        	;. Y .
	ram:545f 5a             ld e,d               	;Z
	ram:5460 24             inc h                	;$
	ram:5461 5a             ld e,d               	;Z
	ram:5462 d4 59 2c       call nc,02c59h       	;. Y ,
	ram:5465 5a             ld e,d               	;Z
	ram:5466 98             sbc a,b              	;.
	ram:5467 08             ex af,af'            	;.
	ram:5468 f0             ret p                	;.
	ram:5469 59             ld e,c               	;Y
	ram:546a f8             ret m                	;.
	ram:546b 59             ld e,c               	;Y
	ram:546c e9             jp (hl)              	;.
	ram:546d 59             ld e,c               	;Y
	ram:546e 1d             dec e                	;.
	ram:546f 5a             ld e,d               	;Z
	ram:5470 04             inc b                	;.
	ram:5471 0d             dec c                	;.
	ram:5472 a1             and c                	;.
	ram:5473 58             ld e,b               	;X
	ram:5474 91             sub c                	;.
	ram:5475 59             ld e,c               	;Y
	ram:5476 10 59          djnz l54d1h          	;. Y
	ram:5478 34             inc (hl)             	;4
	ram:5479 58             ld e,b               	;X
	ram:547a be             cp (hl)              	;.
	ram:547b 59             ld e,c               	;Y
	ram:547c 51             ld d,c               	;Q
	ram:547d 58             ld e,b               	;X
	ram:547e 4a             ld c,d               	;J
	ram:547f 58             ld e,b               	;X
	ram:5480 6e             ld l,(hl)            	;n
	ram:5481 58             ld e,b               	;X
	ram:5482 b6             or (hl)              	;.
	ram:5483 59             ld e,c               	;Y
	ram:5484 92             sub d                	;.
	ram:5485 58             ld e,b               	;X
	ram:5486 0d             dec c                	;.
	ram:5487 58             ld e,b               	;X
	ram:5488 97             sub a                	;.
	ram:5489 57             ld d,a               	;W
	ram:548a 79             ld a,c               	;y
	ram:548b 59             ld e,c               	;Y
	ram:548c 04             inc b                	;.
	ram:548d 0c             inc c                	;.
	ram:548e 6b             ld l,e               	;k
	ram:548f 5e             ld e,(hl)            	;^
	ram:5490 9a             sbc a,d              	;.
	ram:5491 58             ld e,b               	;X
	ram:5492 99             sbc a,c              	;.
	ram:5493 59             ld e,c               	;Y
	ram:5494 a5             and l                	;.
	ram:5495 57             ld d,a               	;W
	ram:5496 87             add a,a              	;.
	ram:5497 5b             ld e,e               	;[
	ram:5498 cd 58 ea       call 0ea58h          	;. X .
	ram:549b 58             ld e,b               	;X
	ram:549c e2 58 da       jp po,0da58h         	;. X .
	ram:549f 58             ld e,b               	;X
	ram:54a0 ad             xor l                	;.
	ram:54a1 57             ld d,a               	;W
	ram:54a2 1f             rra                  	;.
	ram:54a3 5f             ld e,a               	;_
	ram:54a4 98             sbc a,b              	;.
	ram:54a5 5b             ld e,e               	;[
	ram:54a6 07             rlca                 	;.
	ram:54a7 0d             dec c                	;.
	ram:54a8 5b             ld e,e               	;[
	ram:54a9 08             ex af,af'            	;.
	ram:54aa 74             ld (hl),h            	;t
	ram:54ab 08             ex af,af'            	;.
	ram:54ac 42             ld b,d               	;B
	ram:54ad 64             ld h,h               	;d
	ram:54ae 81             add a,c              	;.
	ram:54af 59             ld e,c               	;Y
	ram:54b0 5f             ld e,a               	;_
	ram:54b1 58             ld e,b               	;X
	ram:54b2 57             ld d,a               	;W
	ram:54b3 64             ld h,h               	;d
	ram:54b4 5e             ld e,(hl)            	;^
	ram:54b5 64             ld h,h               	;d
	ram:54b6 80             add a,b              	;.
	ram:54b7 08             ex af,af'            	;.
	ram:54b8 4c             ld c,h               	;L
	ram:54b9 59             ld e,c               	;Y
	ram:54ba f1             pop af               	;.
	ram:54bb 58             ld e,b               	;X
	ram:54bc 3c             inc a                	;<
	ram:54bd 58             ld e,b               	;X
	ram:54be 69             ld l,c               	;i
	ram:54bf 59             ld e,c               	;Y
	ram:54c0 f9             ld sp,hl             	;.
	ram:54c1 58             ld e,b               	;X
	ram:54c2 04             inc b                	;.
	ram:54c3 05             dec b                	;.
	ram:54c4 0d             dec c                	;.
	ram:54c5 58             ld e,b               	;X
	ram:54c6 34             inc (hl)             	;4
	ram:54c7 58             ld e,b               	;X
	ram:54c8 14             inc d                	;.
	ram:54c9 58             ld e,b               	;X
	ram:54ca 97             sub a                	;.
	ram:54cb 57             ld d,a               	;W
	ram:54cc 79             ld a,c               	;y
	ram:54cd 59             ld e,c               	;Y
	ram:54ce 04             inc b                	;.
	ram:54cf 0b             dec bc               	;.
	ram:54d0 6b             ld l,e               	;k
l54d1h:
	ram:54d1 5e             ld e,(hl)            	;^
	ram:54d2 9a             sbc a,d              	;.
	ram:54d3 58             ld e,b               	;X
	ram:54d4 99             sbc a,c              	;.
	ram:54d5 59             ld e,c               	;Y
	ram:54d6 a5             and l                	;.
	ram:54d7 57             ld d,a               	;W
	ram:54d8 87             add a,a              	;.
	ram:54d9 5b             ld e,e               	;[
	ram:54da cd 58 ea       call 0ea58h          	;. X .
	ram:54dd 58             ld e,b               	;X
	ram:54de e2 58 da       jp po,0da58h         	;. X .
	ram:54e1 58             ld e,b               	;X
	ram:54e2 ad             xor l                	;.
	ram:54e3 57             ld d,a               	;W
	ram:54e4 1f             rra                  	;.
	ram:54e5 5f             ld e,a               	;_
	ram:54e6 07             rlca                 	;.
	ram:54e7 0d             dec c                	;.
	ram:54e8 4f             ld c,a               	;O
	ram:54e9 08             ex af,af'            	;.
	ram:54ea 74             ld (hl),h            	;t
	ram:54eb 08             ex af,af'            	;.
	ram:54ec 42             ld b,d               	;B
	ram:54ed 64             ld h,h               	;d
	ram:54ee 81             add a,c              	;.
	ram:54ef 59             ld e,c               	;Y
	ram:54f0 5f             ld e,a               	;_
	ram:54f1 58             ld e,b               	;X
	ram:54f2 65             ld h,l               	;e
	ram:54f3 64             ld h,h               	;d
	ram:54f4 5e             ld e,(hl)            	;^
	ram:54f5 64             ld h,h               	;d
	ram:54f6 80             add a,b              	;.
	ram:54f7 08             ex af,af'            	;.
	ram:54f8 4c             ld c,h               	;L
	ram:54f9 59             ld e,c               	;Y
	ram:54fa f1             pop af               	;.
	ram:54fb 58             ld e,b               	;X
	ram:54fc 3c             inc a                	;<
	ram:54fd 58             ld e,b               	;X
	ram:54fe 69             ld l,c               	;i
	ram:54ff 59             ld e,c               	;Y
	ram:5500 f9             ld sp,hl             	;.
	ram:5501 58             ld e,b               	;X
	ram:5502 04             inc b                	;.
	ram:5503 06 0d          ld b,00dh            	;. .
	ram:5505 58             ld e,b               	;X
	ram:5506 34             inc (hl)             	;4
	ram:5507 58             ld e,b               	;X
	ram:5508 2c             inc l                	;,
	ram:5509 58             ld e,b               	;X
	ram:550a 24             inc h                	;$
	ram:550b 58             ld e,b               	;X
	ram:550c 97             sub a                	;.
	ram:550d 57             ld d,a               	;W
	ram:550e 79             ld a,c               	;y
	ram:550f 59             ld e,c               	;Y
	ram:5510 07             rlca                 	;.
	ram:5511 0e 67          ld c,067h            	;. g
	ram:5513 08             ex af,af'            	;.
	ram:5514 74             ld (hl),h            	;t
	ram:5515 08             ex af,af'            	;.
	ram:5516 5f             ld e,a               	;_
	ram:5517 09             add hl,bc            	;.
	ram:5518 6b             ld l,e               	;k
	ram:5519 09             add hl,bc            	;.
	ram:551a 5f             ld e,a               	;_
	ram:551b 58             ld e,b               	;X
	ram:551c 80             add a,b              	;.
	ram:551d 08             ex af,af'            	;.
	ram:551e 6c             ld l,h               	;l
	ram:551f 64             ld h,h               	;d
	ram:5520 42             ld b,d               	;B
	ram:5521 64             ld h,h               	;d
	ram:5522 81             add a,c              	;.
	ram:5523 59             ld e,c               	;Y
	ram:5524 3c             inc a                	;<
	ram:5525 58             ld e,b               	;X
	ram:5526 4c             ld c,h               	;L
	ram:5527 59             ld e,c               	;Y
	ram:5528 f1             pop af               	;.
	ram:5529 58             ld e,b               	;X
	ram:552a 69             ld l,c               	;i
	ram:552b 59             ld e,c               	;Y
	ram:552c f9             ld sp,hl             	;.
	ram:552d 58             ld e,b               	;X
	ram:552e 04             inc b                	;.
l552fh:
	ram:552f 0b             dec bc               	;.
	ram:5530 6b             ld l,e               	;k
	ram:5531 5e             ld e,(hl)            	;^
	ram:5532 9a             sbc a,d              	;.
	ram:5533 58             ld e,b               	;X
	ram:5534 99             sbc a,c              	;.
	ram:5535 59             ld e,c               	;Y
	ram:5536 a5             and l                	;.
	ram:5537 57             ld d,a               	;W
	ram:5538 87             add a,a              	;.
	ram:5539 5b             ld e,e               	;[
	ram:553a cd 58 ea       call 0ea58h          	;. X .
	ram:553d 58             ld e,b               	;X
	ram:553e e2 58 da       jp po,0da58h         	;. X .
	ram:5541 58             ld e,b               	;X
	ram:5542 ad             xor l                	;.
	ram:5543 57             ld d,a               	;W
	ram:5544 1f             rra                  	;.
	ram:5545 5f             ld e,a               	;_
	ram:5546 00             nop                  	;.
	ram:5547 03             inc bc               	;.
	ram:5548 46             ld b,(hl)            	;F
	ram:5549 60             ld h,b               	;`
	ram:554a 54             ld d,h               	;T
	ram:554b 60             ld h,b               	;`
	ram:554c 49             ld c,c               	;I
	ram:554d 60             ld h,b               	;`
l554eh:
	ram:554e 00             nop                  	;.
	ram:554f 00             nop                  	;.
	ram:5550 03             inc bc               	;.
	ram:5551 05             dec b                	;.
	ram:5552 b5             or l                 	;.
	ram:5553 57             ld d,a               	;W
	ram:5554 00             nop                  	;.
	ram:5555 00             nop                  	;.
	ram:5556 00             nop                  	;.
	ram:5557 00             nop                  	;.
	ram:5558 00             nop                  	;.
	ram:5559 00             nop                  	;.
	ram:555a 34             inc (hl)             	;4
	ram:555b 59             ld e,c               	;Y
	ram:555c 03             inc bc               	;.
	ram:555d 02             ld (bc),a            	;.
	ram:555e c4 57 54       call nz,sub_5457h    	;. W T
	ram:5561 59             ld e,c               	;Y
	ram:5562 00             nop                  	;.
	ram:5563 05             dec b                	;.
	ram:5564 58             ld e,b               	;X
	ram:5565 58             ld e,b               	;X
	ram:5566 00             nop                  	;.
	ram:5567 00             nop                  	;.
	ram:5568 00             nop                  	;.
	ram:5569 00             nop                  	;.
	ram:556a 00             nop                  	;.
	ram:556b 00             nop                  	;.
	ram:556c ff             rst 38h              	;.
	ram:556d 09             add hl,bc            	;.
	ram:556e 00             nop                  	;.
	ram:556f 05             dec b                	;.
	ram:5570 00             nop                  	;.
	ram:5571 00             nop                  	;.
	ram:5572 00             nop                  	;.
	ram:5573 00             nop                  	;.
	ram:5574 00             nop                  	;.
	ram:5575 00             nop                  	;.
	ram:5576 00             nop                  	;.
	ram:5577 00             nop                  	;.
	ram:5578 ff             rst 38h              	;.
	ram:5579 09             add hl,bc            	;.
	ram:557a 03             inc bc               	;.
	ram:557b 05             dec b                	;.
	ram:557c d3 58          out (058h),a         	;. X
	ram:557e a9             xor c                	;.
	ram:557f 58             ld e,b               	;X
	ram:5580 b5             or l                 	;.
	ram:5581 57             ld d,a               	;W
	ram:5582 00             nop                  	;.
	ram:5583 00             nop                  	;.
	ram:5584 34             inc (hl)             	;4
	ram:5585 59             ld e,c               	;Y
	ram:5586 03             inc bc               	;.
	ram:5587 04             inc b                	;.
	ram:5588 c4 57 54       call nz,sub_5457h    	;. W T
	ram:558b 59             ld e,c               	;Y
	ram:558c 5b             ld e,e               	;[
	ram:558d 59             ld e,c               	;Y
	ram:558e 62             ld h,d               	;b
	ram:558f 59             ld e,c               	;Y
	ram:5590 00             nop                  	;.
	ram:5591 07             rlca                 	;.
	ram:5592 c8             ret z                	;.
	ram:5593 07             rlca                 	;.
	ram:5594 5b             ld e,e               	;[
	ram:5595 60             ld h,b               	;`
	ram:5596 7d             ld a,l               	;}
	ram:5597 58             ld e,b               	;X
	ram:5598 f8             ret m                	;.
	ram:5599 57             ld d,a               	;W
	ram:559a 1e 59          ld e,059h            	;. Y
	ram:559c 90             sub b                	;.
	ram:559d 57             ld d,a               	;W
	ram:559e 89             adc a,c              	;.
	ram:559f 57             ld d,a               	;W
	ram:55a0 00             nop                  	;.
	ram:55a1 07             rlca                 	;.
	ram:55a2 62             ld h,d               	;b
	ram:55a3 60             ld h,b               	;`
	ram:55a4 51             ld d,c               	;Q
	ram:55a5 60             ld h,b               	;`
	ram:55a6 7d             ld a,l               	;}
	ram:55a7 58             ld e,b               	;X
	ram:55a8 f8             ret m                	;.
	ram:55a9 57             ld d,a               	;W
	ram:55aa 1e 59          ld e,059h            	;. Y
	ram:55ac 90             sub b                	;.
	ram:55ad 57             ld d,a               	;W
	ram:55ae 89             adc a,c              	;.
	ram:55af 57             ld d,a               	;W
	ram:55b0 00             nop                  	;.
	ram:55b1 08             ex af,af'            	;.
	ram:55b2 54             ld d,h               	;T
	ram:55b3 60             ld h,b               	;`
	ram:55b4 57             ld d,a               	;W
	ram:55b5 60             ld h,b               	;`
	ram:55b6 5e             ld e,(hl)            	;^
	ram:55b7 60             ld h,b               	;`
	ram:55b8 f8             ret m                	;.
	ram:55b9 57             ld d,a               	;W
	ram:55ba 1e 59          ld e,059h            	;. Y
	ram:55bc 7d             ld a,l               	;}
	ram:55bd 58             ld e,b               	;X
	ram:55be 90             sub b                	;.
	ram:55bf 57             ld d,a               	;W
	ram:55c0 89             adc a,c              	;.
	ram:55c1 57             ld d,a               	;W
	ram:55c2 00             nop                  	;.
	ram:55c3 07             rlca                 	;.
	ram:55c4 54             ld d,h               	;T
	ram:55c5 60             ld h,b               	;`
	ram:55c6 46             ld b,(hl)            	;F
	ram:55c7 60             ld h,b               	;`
	ram:55c8 7d             ld a,l               	;}
	ram:55c9 58             ld e,b               	;X
	ram:55ca f8             ret m                	;.
	ram:55cb 57             ld d,a               	;W
	ram:55cc 1e 59          ld e,059h            	;. Y
	ram:55ce 90             sub b                	;.
	ram:55cf 57             ld d,a               	;W
	ram:55d0 89             adc a,c              	;.
	ram:55d1 57             ld d,a               	;W
	ram:55d2 03             inc bc               	;.
	ram:55d3 03             inc bc               	;.
	ram:55d4 84             add a,h              	;.
	ram:55d5 58             ld e,b               	;X
	ram:55d6 ff             rst 38h              	;.
	ram:55d7 57             ld d,a               	;W
	ram:55d8 c6 59          add a,059h           	;. Y
	ram:55da 00             nop                  	;.
	ram:55db 05             dec b                	;.
	ram:55dc 00             nop                  	;.
	ram:55dd 00             nop                  	;.
	ram:55de 00             nop                  	;.
	ram:55df 00             nop                  	;.
	ram:55e0 00             nop                  	;.
	ram:55e1 00             nop                  	;.
	ram:55e2 00             nop                  	;.
	ram:55e3 00             nop                  	;.
	ram:55e4 34             inc (hl)             	;4
	ram:55e5 59             ld e,c               	;Y
	ram:55e6 18 4d          jr l5635h            	;. M
	ram:55e8 4c             ld c,h               	;L
	ram:55e9 18 43          jr l562eh            	;. C
	ram:55eb 4c             ld c,h               	;L
	ram:55ec 03             inc bc               	;.
	ram:55ed 03             inc bc               	;.
	ram:55ee d3 58          out (058h),a         	;. X
	ram:55f0 a9             xor c                	;.
	ram:55f1 58             ld e,b               	;X
	ram:55f2 f0             ret p                	;.
	ram:55f3 57             ld d,a               	;W
	ram:55f4 02             ld (bc),a            	;.
	ram:55f5 02             ld (bc),a            	;.
	ram:55f6 26 59          ld h,059h            	;& Y
	ram:55f8 01 59 00       ld bc,00059h         	;. Y .
	ram:55fb 0e 39          ld c,039h            	;. 9
	ram:55fd 5a             ld e,d               	;Z
	ram:55fe 70             ld (hl),b            	;p
	ram:55ff 5a             ld e,d               	;Z
	ram:5600 62             ld h,d               	;b
	ram:5601 5a             ld e,d               	;Z
	ram:5602 55             ld d,l               	;U
	ram:5603 5a             ld e,d               	;Z
	ram:5604 33             inc sp               	;3
	ram:5605 5a             ld e,d               	;Z
	ram:5606 5b             ld e,e               	;[
	ram:5607 5a             ld e,d               	;Z
	ram:5608 95             sub l                	;.
	ram:5609 5a             ld e,d               	;Z
	ram:560a 7f             ld a,a               	;.
	ram:560b 5a             ld e,d               	;Z
	ram:560c 48             ld c,b               	;H
	ram:560d 5a             ld e,d               	;Z
	ram:560e 4f             ld c,a               	;O
	ram:560f 5a             ld e,d               	;Z
	ram:5610 41             ld b,c               	;A
	ram:5611 5a             ld e,d               	;Z
	ram:5612 6a             ld l,d               	;j
	ram:5613 5a             ld e,d               	;Z
	ram:5614 77             ld (hl),a            	;w
	ram:5615 5a             ld e,d               	;Z
	ram:5616 8d             adc a,l              	;.
	ram:5617 5a             ld e,d               	;Z
	ram:5618 00             nop                  	;.
	ram:5619 04             inc b                	;.
	ram:561a a0             and b                	;.
	ram:561b 59             ld e,c               	;Y
	ram:561c 1e 59          ld e,059h            	;. Y
	ram:561e 90             sub b                	;.
	ram:561f 57             ld d,a               	;W
	ram:5620 89             adc a,c              	;.
	ram:5621 57             ld d,a               	;W
	ram:5622 02             ld (bc),a            	;.
	ram:5623 01 a0 59       ld bc,l59a0h         	;. . Y
	ram:5626 02             ld (bc),a            	;.
	ram:5627 02             ld (bc),a            	;.
	ram:5628 da 57 43       jp c,l4357h          	;. W C
	ram:562b 58             ld e,b               	;X
	ram:562c 02             ld (bc),a            	;.
	ram:562d 04             inc b                	;.
l562eh:
	ram:562e 08             ex af,af'            	;.
	ram:562f 59             ld e,c               	;Y
	ram:5630 b5             or l                 	;.
	ram:5631 58             ld e,b               	;X
	ram:5632 2d             dec l                	;-
	ram:5633 59             ld e,c               	;Y
	ram:5634 43             ld b,e               	;C
l5635h:
	ram:5635 58             ld e,b               	;X
	ram:5636 02             ld (bc),a            	;.
	ram:5637 01 43 58       ld bc,l5843h         	;. C X
	ram:563a 02             ld (bc),a            	;.
	ram:563b 02             ld (bc),a            	;.
	ram:563c 2d             dec l                	;-
	ram:563d 59             ld e,c               	;Y
	ram:563e 43             ld b,e               	;C
	ram:563f 58             ld e,b               	;X
	ram:5640 13             inc de               	;.
	ram:5641 51             ld d,c               	;Q
	ram:5642 4c             ld c,h               	;L
	ram:5643 03             inc bc               	;.
	ram:5644 05             dec b                	;.
	ram:5645 5f             ld e,a               	;_
	ram:5646 58             ld e,b               	;X
	ram:5647 74             ld (hl),h            	;t
	ram:5648 08             ex af,af'            	;.
	ram:5649 73             ld (hl),e            	;s
	ram:564a 64             ld h,h               	;d
	ram:564b 81             add a,c              	;.
	ram:564c 59             ld e,c               	;Y
	ram:564d 34             inc (hl)             	;4
	ram:564e 59             ld e,c               	;Y
	ram:564f 03             inc bc               	;.
	ram:5650 07             rlca                 	;.
	ram:5651 e3             ex (sp),hl           	;.
	ram:5652 07             rlca                 	;.
	ram:5653 74             ld (hl),h            	;t
	ram:5654 08             ex af,af'            	;.
	ram:5655 73             ld (hl),e            	;s
	ram:5656 64             ld h,h               	;d
	ram:5657 81             add a,c              	;.
	ram:5658 59             ld e,c               	;Y
	ram:5659 fa 07 a1       jp m,0a107h          	;. . .
	ram:565c 58             ld e,b               	;X
	ram:565d 91             sub c                	;.
	ram:565e 59             ld e,c               	;Y
	ram:565f 00             nop                  	;.
	ram:5660 05             dec b                	;.
	ram:5661 ce 59          adc a,059h           	;. Y
	ram:5663 e3             ex (sp),hl           	;.
	ram:5664 59             ld e,c               	;Y
	ram:5665 00             nop                  	;.
	ram:5666 5a             ld e,d               	;Z
	ram:5667 98             sbc a,b              	;.
	ram:5668 08             ex af,af'            	;.
	ram:5669 16 5a          ld d,05ah            	;. Z
	ram:566b 03             inc bc               	;.
	ram:566c 04             inc b                	;.
	ram:566d 5f             ld e,a               	;_
	ram:566e 58             ld e,b               	;X
	ram:566f e3             ex (sp),hl           	;.
	ram:5670 07             rlca                 	;.
	ram:5671 73             ld (hl),e            	;s
	ram:5672 64             ld h,h               	;d
	ram:5673 81             add a,c              	;.
	ram:5674 59             ld e,c               	;Y
	ram:5675 18 55          jr 87                	;. U
	ram:5677 4c             ld c,h               	;L
	ram:5678 18 59          jr l56d3h            	;. Y
	ram:567a 4c             ld c,h               	;L
	ram:567b 09             add hl,bc            	;.
	ram:567c 0b             dec bc               	;.
	ram:567d ac             xor h                	;.
	ram:567e 64             ld h,h               	;d
	ram:567f b4             or h                 	;.
	ram:5680 64             ld h,h               	;d
	ram:5681 bb             cp e                 	;.
	ram:5682 64             ld h,h               	;d
	ram:5683 c1             pop bc               	;.
	ram:5684 64             ld h,h               	;d
	ram:5685 c8             ret z                	;.
	ram:5686 64             ld h,h               	;d
	ram:5687 cf             rst 8                	;.
	ram:5688 64             ld h,h               	;d
	ram:5689 d6 64          sub 064h             	;. d
	ram:568b de 64          sbc a,064h           	;. d
	ram:568d e6 64          and 064h             	;. d
	ram:568f ee 64          xor 064h             	;. d
	ram:5691 f6 64          or 064h              	;. d
	ram:5693 08             ex af,af'            	;.
	ram:5694 0f             rrca                 	;.
	ram:5695 ac             xor h                	;.
	ram:5696 62             ld h,d               	;b
	ram:5697 7d             ld a,l               	;}
	ram:5698 61             ld h,c               	;a
	ram:5699 83             add a,e              	;.
	ram:569a 62             ld h,d               	;b
	ram:569b 06 62          ld b,062h            	;. b
	ram:569d bb             cp e                 	;.
	ram:569e 61             ld h,c               	;a
	ram:569f 47             ld b,a               	;G
	ram:56a0 63             ld h,e               	;c
	ram:56a1 35             dec (hl)             	;5
	ram:56a2 62             ld h,d               	;b
	ram:56a3 92             sub d                	;.
	ram:56a4 62             ld h,d               	;b
	ram:56a5 e5             push hl              	;.
	ram:56a6 62             ld h,d               	;b
	ram:56a7 73             ld (hl),e            	;s
	ram:56a8 62             ld h,d               	;b
	ram:56a9 8c             adc a,h              	;.
	ram:56aa 62             ld h,d               	;b
	ram:56ab 4e             ld c,(hl)            	;N
	ram:56ac 61             ld h,c               	;a
	ram:56ad b3             or e                 	;.
	ram:56ae 61             ld h,c               	;a
	ram:56af 0f             rrca                 	;.
	ram:56b0 63             ld h,e               	;c
	ram:56b1 ac             xor h                	;.
	ram:56b2 61             ld h,c               	;a
	ram:56b3 08             ex af,af'            	;.
	ram:56b4 09             add hl,bc            	;.
	ram:56b5 c0             ret nz               	;.
	ram:56b6 61             ld h,c               	;a
	ram:56b7 d1             pop de               	;.
	ram:56b8 62             ld h,d               	;b
	ram:56b9 99             sbc a,c              	;.
	ram:56ba 62             ld h,d               	;b
	ram:56bb 3a 62 41       ld a,(04162h)        	;: b A
	ram:56be 61             ld h,c               	;a
	ram:56bf 1a             ld a,(de)            	;.
	ram:56c0 62             ld h,d               	;b
	ram:56c1 82             add a,d              	;.
	ram:56c2 61             ld h,c               	;a
	ram:56c3 4c             ld c,h               	;L
	ram:56c4 63             ld h,e               	;c
	ram:56c5 f7             rst 30h              	;.
	ram:56c6 61             ld h,c               	;a
	ram:56c7 08             ex af,af'            	;.
	ram:56c8 0f             rrca                 	;.
	ram:56c9 6b             ld l,e               	;k
	ram:56ca 62             ld h,d               	;b
	ram:56cb e4 61 0a       call po,00a61h       	;. a .
	ram:56ce 63             ld h,e               	;c
	ram:56cf 05             dec b                	;.
	ram:56d0 63             ld h,e               	;c
	ram:56d1 f9             ld sp,hl             	;.
	ram:56d2 62             ld h,d               	;b
l56d3h:
	ram:56d3 88             adc a,b              	;.
	ram:56d4 61             ld h,c               	;a
	ram:56d5 20 62          jr nz,l5739h         	;b
	ram:56d7 c6 61          add a,061h           	;. a
	ram:56d9 87             add a,a              	;.
	ram:56da 62             ld h,d               	;b
	ram:56db 8e             adc a,(hl)           	;.
	ram:56dc 61             ld h,c               	;a
	ram:56dd 29             add hl,hl            	;)
	ram:56de 63             ld h,e               	;c
	ram:56df 22 63 a7       ld (0a763h),hl       	;" c .
	ram:56e2 62             ld h,d               	;b
	ram:56e3 ea 61 fe       jp pe,0fe61h         	;. a .
	ram:56e6 62             ld h,d               	;b
	ram:56e7 08             ex af,af'            	;.
	ram:56e8 09             add hl,bc            	;.
	ram:56e9 15             dec d                	;.
	ram:56ea 63             ld h,e               	;c
	ram:56eb c0             ret nz               	;.
 ; BEGIN - Looks like data block
	ram:56ec 62             ld h,d               	;b
	ram:56ed 01 62 94       ld bc,09462h         	;. b .
	ram:56f0 61             ld h,c               	;a
	ram:56f1 52             ld d,d               	;R
	ram:56f2 63             ld h,e               	;c
	ram:56f3 40             ld b,b               	;@
	ram:56f4 63             ld h,e               	;c
	ram:56f5 c5             push bc              	;.
	ram:56f6 62             ld h,d               	;b
	ram:56f7 dc 62 ed       call c,0ed62h        	;. b .
	ram:56fa 62             ld h,d               	;b
	ram:56fb 08             ex af,af'            	;.
	ram:56fc 04             inc b                	;.
	ram:56fd 57             ld d,a               	;W
	ram:56fe 63             ld h,e               	;c
	ram:56ff 5c             ld e,h               	;\
	ram:5700 63             ld h,e               	;c
	ram:5701 61             ld h,c               	;a
	ram:5702 63             ld h,e               	;c
	ram:5703 66             ld h,(hl)            	;f
	ram:5704 63             ld h,e               	;c
	ram:5705 08             ex af,af'            	;.
	ram:5706 07             rlca                 	;.
	ram:5707 f2 61 2a       jp p,02a61h          	;. a *
	ram:570a 62             ld h,d               	;b
	ram:570b 57             ld d,a               	;W
	ram:570c 62             ld h,d               	;b
	ram:570d 48             ld c,b               	;H
	ram:570e 61             ld h,c               	;a
	ram:570f 1b             dec de               	;.
	ram:5710 63             ld h,e               	;c
	ram:5711 2f             cpl                  	;/
	ram:5712 63             ld h,e               	;c
	ram:5713 ca 62 08       jp z,00862h          	;. b .
	ram:5716 05             dec b                	;.
	ram:5717 e1             pop hl               	;.
	ram:5718 62             ld h,d               	;b
	ram:5719 9a             sbc a,d              	;.
	ram:571a 61             ld h,c               	;a
	ram:571b 35             dec (hl)             	;5
	ram:571c 63             ld h,e               	;c
	ram:571d 2f             cpl                  	;/
	ram:571e 62             ld h,d               	;b
	ram:571f 5c             ld e,h               	;\
	ram:5720 62             ld h,d               	;b
	ram:5721 08             ex af,af'            	;.
	ram:5722 08             ex af,af'            	;.
	ram:5723 54             ld d,h               	;T
	ram:5724 61             ld h,c               	;a
	ram:5725 5a             ld e,d               	;Z
	ram:5726 61             ld h,c               	;a
	ram:5727 f2 62 62       jp p,l6262h          	;. b b
	ram:572a 62             ld h,d               	;b
	ram:572b b1             or c                 	;.
	ram:572c 62             ld h,d               	;b
	ram:572d b8             cp b                 	;.
	ram:572e 62             ld h,d               	;b
	ram:572f 0b             dec bc               	;.
	ram:5730 62             ld h,d               	;b
	ram:5731 12             ld (de),a            	;.
	ram:5732 62             ld h,d               	;b
	ram:5733 08             ex af,af'            	;.
	ram:5734 08             ex af,af'            	;.
	ram:5735 26 62          ld h,062h            	;& b
	ram:5737 6f             ld l,a               	;o
	ram:5738 61             ld h,c               	;a
l5739h:
	ram:5739 60             ld h,b               	;`
	ram:573a 61             ld h,c               	;a
	ram:573b cc 61 4f       call z,sub_4f61h     	;. a O
	ram:573e 62             ld h,d               	;b
	ram:573f a7             and a                	;.
	ram:5740 61             ld h,c               	;a
	ram:5741 a1             and c                	;.
	ram:5742 61             ld h,c               	;a
	ram:5743 7b             ld a,e               	;{
	ram:5744 62             ld h,d               	;b
	ram:5745 08             ex af,af'            	;.
	ram:5746 05             dec b                	;.
	ram:5747 fc 61 3c       call m,03c61h        	;. a <
	ram:574a 63             ld h,e               	;c
	ram:574b db 61          in a,(061h)          	;. a
	ram:574d 75             ld (hl),l            	;u
	ram:574e 61             ld h,c               	;a
	ram:574f 66             ld h,(hl)            	;f
	ram:5750 61             ld h,c               	;a
	ram:5751 08             ex af,af'            	;.
	ram:5752 05             dec b                	;.
	ram:5753 d4 61 d6       call nc,0d661h       	;. a .
	ram:5756 62             ld h,d               	;b
	ram:5757 9f             sbc a,a              	;.
	ram:5758 62             ld h,d               	;b
	ram:5759 40             ld b,b               	;@
	ram:575a 62             ld h,d               	;b
	ram:575b 48             ld c,b               	;H
	ram:575c 62             ld h,d               	;b
	ram:575d 09             add hl,bc            	;.
	ram:575e 03             inc bc               	;.
	ram:575f a4             and h                	;.
	ram:5760 09             add hl,bc            	;.
	ram:5761 ee 07          xor 007h             	;. .
	ram:5763 a4             and h                	;.
	ram:5764 64             ld h,h               	;d
	ram:5765 08             ex af,af'            	;.
	ram:5766 03             inc bc               	;.
	ram:5767 8c             adc a,h              	;.
	ram:5768 09             add hl,bc            	;.
	ram:5769 76             halt                 	;v
	ram:576a 09             add hl,bc            	;.
	ram:576b 80             add a,b              	;.
	ram:576c 09             add hl,bc            	;.
	ram:576d 00             nop                  	;.
	ram:576e 05             dec b                	;.
	ram:576f 00             nop                  	;.
	ram:5770 00             nop                  	;.
	ram:5771 00             nop                  	;.
	ram:5772 00             nop                  	;.
	ram:5773 00             nop                  	;.
	ram:5774 00             nop                  	;.
	ram:5775 b0             or b                 	;.
	ram:5776 59             ld e,c               	;Y
	ram:5777 b0             or b                 	;.
	ram:5778 58             ld e,b               	;X
	ram:5779 03             inc bc               	;.
	ram:577a 04             inc b                	;.
	ram:577b c5             push bc              	;.
	ram:577c 58             ld e,b               	;X
	ram:577d bd             cp l                 	;.
	ram:577e 58             ld e,b               	;X
	ram:577f e1             pop hl               	;.
	ram:5780 57             ld d,a               	;W
	ram:5781 9d             sbc a,l              	;.
	ram:5782 57             ld d,a               	;W
	ram:5783 09             add hl,bc            	;.
	ram:5784 02             ld (bc),a            	;.
	ram:5785 be             cp (hl)              	;.
	ram:5786 60             ld h,b               	;`
	ram:5787 c1             pop bc               	;.
	ram:5788 60             ld h,b               	;`
	ram:5789 03             inc bc               	;.
	ram:578a 89             adc a,c              	;.
	ram:578b 41             ld b,c               	;A
	ram:578c 4c             ld c,h               	;L
	ram:578d 4c             ld c,h               	;L
	ram:578e 2d             dec l                	;-
	ram:578f 00             nop                  	;.
	ram:5790 03             inc bc               	;.
	ram:5791 8a             adc a,d              	;.
	ram:5792 41             ld b,c               	;A
	ram:5793 4c             ld c,h               	;L
	ram:5794 4c             ld c,h               	;L
	ram:5795 2b             dec hl               	;+
	ram:5796 00             nop                  	;.
	ram:5797 03             inc bc               	;.
	ram:5798 d9             exx                  	;.
	ram:5799 41             ld b,c               	;A
	ram:579a 52             ld d,d               	;R
	ram:579b 43             ld b,e               	;C
	ram:579c 00             nop                  	;.
	ram:579d 03             inc bc               	;.
	ram:579e 8b             adc a,e              	;.
	ram:579f 42             ld b,d               	;B
	ram:57a0 4c             ld c,h               	;L
	ram:57a1 41             ld b,c               	;A
	ram:57a2 4e             ld c,(hl)            	;N
	ram:57a3 4b             ld c,e               	;K
	ram:57a4 00             nop                  	;.
	ram:57a5 03             inc bc               	;.
	ram:57a6 ce 43          adc a,043h           	;. C
	ram:57a8 49             ld c,c               	;I
	ram:57a9 52             ld d,d               	;R
	ram:57aa 43             ld b,e               	;C
	ram:57ab 4c             ld c,h               	;L
	ram:57ac 00             nop                  	;.
	ram:57ad 03             inc bc               	;.
	ram:57ae cf             rst 8                	;.
	ram:57af 43             ld b,e               	;C
	ram:57b0 4c             ld c,h               	;L
	ram:57b1 44             ld b,h               	;D
	ram:57b2 52             ld d,d               	;R
	ram:57b3 57             ld d,a               	;W
	ram:57b4 00             nop                  	;.
	ram:57b5 03             inc bc               	;.
	ram:57b6 8c             adc a,h              	;.
	ram:57b7 43             ld b,e               	;C
	ram:57b8 4c             ld c,h               	;L
	ram:57b9 52             ld d,d               	;R
	ram:57ba 61             ld h,c               	;a
	ram:57bb 00             nop                  	;.
	ram:57bc 03             inc bc               	;.
	ram:57bd 8d             adc a,l              	;.
	ram:57be 43             ld b,e               	;C
	ram:57bf 4c             ld c,h               	;L
	ram:57c0 52             ld d,d               	;R
	ram:57c1 78             ld a,b               	;x
	ram:57c2 79             ld a,c               	;y
	ram:57c3 00             nop                  	;.
	ram:57c4 03             inc bc               	;.
	ram:57c5 8e             adc a,(hl)           	;.
	ram:57c6 43             ld b,e               	;C
	ram:57c7 4f             ld c,a               	;O
	ram:57c8 45             ld b,l               	;E
	ram:57c9 46             ld b,(hl)            	;F
	ram:57ca 53             ld d,e               	;S
	ram:57cb 00             nop                  	;.
	ram:57cc 03             inc bc               	;.
	ram:57cd 8f             adc a,a              	;.
	ram:57ce cf             rst 8                	;.
	ram:57cf 43             ld b,e               	;C
	ram:57d0 4f             ld c,a               	;O
	ram:57d1 4c             ld c,h               	;L
	ram:57d2 00             nop                  	;.
	ram:57d3 03             inc bc               	;.
	ram:57d4 91             sub c                	;.
	ram:57d5 43             ld b,e               	;C
	ram:57d6 4f             ld c,a               	;O
	ram:57d7 4c             ld c,h               	;L
	ram:57d8 05             dec b                	;.
	ram:57d9 00             nop                  	;.
	ram:57da 03             inc bc               	;.
	ram:57db 90             sub b                	;.
	ram:57dc 43             ld b,e               	;C
	ram:57dd 4f             ld c,a               	;O
	ram:57de 4e             ld c,(hl)            	;N
	ram:57df 54             ld d,h               	;T
	ram:57e0 00             nop                  	;.
	ram:57e1 03             inc bc               	;.
	ram:57e2 93             sub e                	;.
	ram:57e3 43             ld b,e               	;C
	ram:57e4 55             ld d,l               	;U
	ram:57e5 53             ld d,e               	;S
	ram:57e6 54             ld d,h               	;T
	ram:57e7 4d             ld c,l               	;M
	ram:57e8 00             nop                  	;.
	ram:57e9 03             inc bc               	;.
	ram:57ea 94             sub h                	;.
	ram:57eb 44             ld b,h               	;D
	ram:57ec 45             ld b,l               	;E
	ram:57ed 4c             ld c,h               	;L
	ram:57ee 63             ld h,e               	;c
	ram:57ef 00             nop                  	;.
	ram:57f0 03             inc bc               	;.
	ram:57f1 95             sub l                	;.
	ram:57f2 44             ld b,h               	;D
	ram:57f3 45             ld b,l               	;E
	ram:57f4 4c             ld c,h               	;L
	ram:57f5 45             ld b,l               	;E
	ram:57f6 54             ld d,h               	;T
	ram:57f7 00             nop                  	;.
	ram:57f8 03             inc bc               	;.
	ram:57f9 96             sub (hl)             	;.
	ram:57fa 44             ld b,h               	;D
	ram:57fb 45             ld b,l               	;E
	ram:57fc 4c             ld c,h               	;L
	ram:57fd 66             ld h,(hl)            	;f
	ram:57fe 00             nop                  	;.
	ram:57ff 03             inc bc               	;.
	ram:5800 96             sub (hl)             	;.
	ram:5801 44             ld b,h               	;D
	ram:5802 45             ld b,l               	;E
	ram:5803 4c             ld c,h               	;L
	ram:5804 69             ld l,c               	;i
	ram:5805 00             nop                  	;.
	ram:5806 03             inc bc               	;.
	ram:5807 97             sub a                	;.
	ram:5808 44             ld b,h               	;D
	ram:5809 45             ld b,l               	;E
	ram:580a 4c             ld c,h               	;L
	ram:580b 72             ld (hl),d            	;r
	ram:580c 00             nop                  	;.
	ram:580d 03             inc bc               	;.
	ram:580e d1             pop de               	;.
	ram:580f 44             ld b,h               	;D
	ram:5810 49             ld c,c               	;I
	ram:5811 53             ld d,e               	;S
	ram:5812 54             ld d,h               	;T
	ram:5813 00             nop                  	;.
	ram:5814 03             inc bc               	;.
	ram:5815 d2 64 72       jp nc,l7264h         	;. d r
	ram:5818 2f             cpl                  	;/
	ram:5819 64             ld h,h               	;d
	ram:581a c1             pop bc               	;.
	ram:581b 00             nop                  	;.
	ram:581c 03             inc bc               	;.
	ram:581d d3 44          out (044h),a         	;. D
	ram:581f 52             ld d,d               	;R
	ram:5820 52             ld d,d               	;R
	ram:5821 45             ld b,l               	;E
	ram:5822 47             ld b,a               	;G
	ram:5823 00             nop                  	;.
	ram:5824 03             inc bc               	;.
	ram:5825 d4 64 78       call nc,sub_7864h    	;. d x
	ram:5828 2f             cpl                  	;/
	ram:5829 64             ld h,h               	;d
	ram:582a 74             ld (hl),h            	;t
	ram:582b 00             nop                  	;.
	ram:582c 03             inc bc               	;.
	ram:582d d5             push de              	;.
	ram:582e 64             ld h,h               	;d
	ram:582f 79             ld a,c               	;y
	ram:5830 2f             cpl                  	;/
	ram:5831 64             ld h,h               	;d
	ram:5832 74             ld (hl),h            	;t
	ram:5833 00             nop                  	;.
	ram:5834 03             inc bc               	;.
	ram:5835 d6 64          sub 064h             	;. d
	ram:5837 79             ld a,c               	;y
	ram:5838 2f             cpl                  	;/
	ram:5839 64             ld h,h               	;d
	ram:583a 78             ld a,b               	;x
	ram:583b 00             nop                  	;.
	ram:583c 03             inc bc               	;.
	ram:583d d7             rst 10h              	;.
	ram:583e 45             ld b,l               	;E
	ram:583f 56             ld d,(hl)            	;V
	ram:5840 41             ld b,c               	;A
	ram:5841 4c             ld c,h               	;L
	ram:5842 00             nop                  	;.
l5843h:
	ram:5843 03             inc bc               	;.
	ram:5844 be             cp (hl)              	;.
	ram:5845 45             ld b,l               	;E
	ram:5846 58             ld e,b               	;X
	ram:5847 49             ld c,c               	;I
	ram:5848 54             ld d,h               	;T
	ram:5849 00             nop                  	;.
	ram:584a 03             inc bc               	;.
	ram:584b da 46 4d       jp c,l4d46h          	;. F M
	ram:584e 41             ld b,c               	;A
	ram:584f 58             ld e,b               	;X
	ram:5850 00             nop                  	;.
	ram:5851 03             inc bc               	;.
	ram:5852 db 46          in a,(046h)          	;. F
	ram:5854 4d             ld c,l               	;M
	ram:5855 49             ld c,c               	;I
	ram:5856 4e             ld c,(hl)            	;N
	ram:5857 00             nop                  	;.
	ram:5858 03             inc bc               	;.
	ram:5859 98             sbc a,b              	;.
	ram:585a 47             ld b,a               	;G
	ram:585b 4f             ld c,a               	;O
	ram:585c 54             ld d,h               	;T
	ram:585d 4f             ld c,a               	;O
	ram:585e 00             nop                  	;.
	ram:585f 03             inc bc               	;.
	ram:5860 cc 47 52       call z,sub_5247h     	;. G R
	ram:5863 41             ld b,c               	;A
	ram:5864 50             ld d,b               	;P
	ram:5865 48             ld c,b               	;H
	ram:5866 00             nop                  	;.
	ram:5867 03             inc bc               	;.
	ram:5868 dc 48 49       call c,sub_4948h     	;. H I
	ram:586b 53             ld d,e               	;S
	ram:586c 54             ld d,h               	;T
	ram:586d 00             nop                  	;.
	ram:586e 03             inc bc               	;.
	ram:illegal sequence                defb 0ddh,049h,04eh  	;;586f	dd 49 4e	. I N
	ram:5872 46             ld b,(hl)            	;F
	ram:5873 4c             ld c,h               	;L
	ram:5874 43             ld b,e               	;C
	ram:5875 00             nop                  	;.
	ram:5876 03             inc bc               	;.
	ram:5877 99             sbc a,c              	;.
	ram:5878 49             ld c,c               	;I
	ram:5879 4e             ld c,(hl)            	;N
	ram:587a 53             ld d,e               	;S
	ram:587b 63             ld h,e               	;c
	ram:587c 00             nop                  	;.
	ram:587d 03             inc bc               	;.
	ram:587e 9a             sbc a,d              	;.
	ram:587f 49             ld c,c               	;I
	ram:5880 4e             ld c,(hl)            	;N
	ram:5881 53             ld d,e               	;S
	ram:5882 66             ld h,(hl)            	;f
	ram:5883 00             nop                  	;.
	ram:5884 03             inc bc               	;.
	ram:5885 9a             sbc a,d              	;.
	ram:5886 49             ld c,c               	;I
	ram:5887 4e             ld c,(hl)            	;N
	ram:5888 53             ld d,e               	;S
	ram:5889 69             ld l,c               	;i
	ram:588a 00             nop                  	;.
	ram:588b 03             inc bc               	;.
	ram:588c 9b             sbc a,e              	;.
	ram:588d 49             ld c,c               	;I
	ram:588e 4e             ld c,(hl)            	;N
	ram:588f 53             ld d,e               	;S
	ram:5890 72             ld (hl),d            	;r
	ram:5891 00             nop                  	;.
	ram:5892 03             inc bc               	;.
	ram:5893 e0             ret po               	;.
	ram:5894 49             ld c,c               	;I
	ram:5895 53             ld d,e               	;S
	ram:5896 45             ld b,l               	;E
	ram:5897 43             ld b,e               	;C
	ram:5898 54             ld d,h               	;T
	ram:5899 00             nop                  	;.
	ram:589a 03             inc bc               	;.
	ram:589b e1             pop hl               	;.
	ram:589c 4c             ld c,h               	;L
	ram:589d 49             ld c,c               	;I
	ram:589e 4e             ld c,(hl)            	;N
	ram:589f 45             ld b,l               	;E
	ram:58a0 00             nop                  	;.
	ram:58a1 03             inc bc               	;.
	ram:58a2 e2 4c 4f       jp po,l4f4ch         	;. L O
	ram:58a5 57             ld d,a               	;W
	ram:58a6 45             ld b,l               	;E
	ram:58a7 52             ld d,d               	;R
	ram:58a8 00             nop                  	;.
	ram:58a9 03             inc bc               	;.
	ram:58aa a5             and l                	;.
	ram:58ab 4e             ld c,(hl)            	;N
	ram:58ac 45             ld b,l               	;E
	ram:58ad 58             ld e,b               	;X
	ram:58ae 54             ld d,h               	;T
	ram:58af 00             nop                  	;.
	ram:58b0 03             inc bc               	;.
	ram:58b1 9c             sbc a,h              	;.
	ram:58b2 4e             ld c,(hl)            	;N
	ram:58b3 4f             ld c,a               	;O
	ram:58b4 00             nop                  	;.
	ram:58b5 03             inc bc               	;.
	ram:58b6 9d             sbc a,l              	;.
	ram:58b7 4f             ld c,a               	;O
	ram:58b8 56             ld d,(hl)            	;V
	ram:58b9 45             ld b,l               	;E
	ram:58ba 52             ld d,d               	;R
	ram:58bb 57             ld d,a               	;W
	ram:58bc 00             nop                  	;.
	ram:58bd 03             inc bc               	;.
	ram:58be 9f             sbc a,a              	;.
	ram:58bf 50             ld d,b               	;P
	ram:58c0 41             ld b,c               	;A
	ram:58c1 47             ld b,a               	;G
	ram:58c2 45             ld b,l               	;E
	ram:58c3 1e 00          ld e,000h            	;. .
	ram:58c5 03             inc bc               	;.
	ram:58c6 9e             sbc a,(hl)           	;.
	ram:58c7 50             ld d,b               	;P
	ram:58c8 41             ld b,c               	;A
	ram:58c9 47             ld b,a               	;G
	ram:58ca 45             ld b,l               	;E
	ram:58cb 1f             rra                  	;.
	ram:58cc 00             nop                  	;.
	ram:58cd 03             inc bc               	;.
	ram:58ce e3             ex (sp),hl           	;.
	ram:58cf 50             ld d,b               	;P
	ram:58d0 45             ld b,l               	;E
	ram:58d1 4e             ld c,(hl)            	;N
	ram:58d2 00             nop                  	;.
	ram:58d3 03             inc bc               	;.
	ram:58d4 a9             xor c                	;.
	ram:58d5 50             ld d,b               	;P
	ram:58d6 52             ld d,d               	;R
	ram:58d7 45             ld b,l               	;E
	ram:58d8 56             ld d,(hl)            	;V
	ram:58d9 00             nop                  	;.
	ram:58da 03             inc bc               	;.
	ram:58db e4 50 54       call po,sub_5450h    	;. P T
	ram:58de 43             ld b,e               	;C
	ram:58df 48             ld c,b               	;H
	ram:58e0 47             ld b,a               	;G
	ram:58e1 00             nop                  	;.
	ram:58e2 03             inc bc               	;.
	ram:58e3 e5             push hl              	;.
	ram:58e4 50             ld d,b               	;P
	ram:58e5 54             ld d,h               	;T
	ram:58e6 4f             ld c,a               	;O
	ram:58e7 46             ld b,(hl)            	;F
	ram:58e8 46             ld b,(hl)            	;F
	ram:58e9 00             nop                  	;.
	ram:58ea 03             inc bc               	;.
	ram:58eb e6 50          and 050h             	;. P
	ram:58ed 54             ld d,h               	;T
	ram:58ee 4f             ld c,a               	;O
	ram:58ef 4e             ld c,(hl)            	;N
	ram:58f0 00             nop                  	;.
	ram:58f1 43             ld b,e               	;C
	ram:58f2 e7             rst 20h              	;.
	ram:58f3 52             ld d,d               	;R
	ram:58f4 43             ld b,e               	;C
	ram:58f5 47             ld b,a               	;G
	ram:58f6 44             ld b,h               	;D
	ram:58f7 42             ld b,d               	;B
	ram:58f8 00             nop                  	;.
	ram:58f9 43             ld b,e               	;C
	ram:58fa e8             ret pe               	;.
	ram:58fb 52             ld d,d               	;R
	ram:58fc 43             ld b,e               	;C
	ram:58fd 50             ld d,b               	;P
	ram:58fe 49             ld c,c               	;I
	ram:58ff 43             ld b,e               	;C
	ram:5900 00             nop                  	;.
	ram:5901 03             inc bc               	;.
	ram:5902 a0             and b                	;.
	ram:5903 52             ld d,d               	;R
	ram:5904 45             ld b,l               	;E
	ram:5905 43             ld b,e               	;C
	ram:5906 56             ld d,(hl)            	;V
	ram:5907 00             nop                  	;.
	ram:5908 03             inc bc               	;.
	ram:5909 a1             and c                	;.
	ram:590a 52             ld d,d               	;R
	ram:590b d7             rst 10h              	;.
	ram:590c 4e             ld c,(hl)            	;N
	ram:590d 41             ld b,c               	;A
	ram:590e 4d             ld c,l               	;M
	ram:590f 00             nop                  	;.
	ram:5910 03             inc bc               	;.
	ram:5911 e9             jp (hl)              	;.
	ram:5912 52             ld d,d               	;R
	ram:5913 4f             ld c,a               	;O
	ram:5914 4f             ld c,a               	;O
	ram:5915 54             ld d,h               	;T
	ram:5916 00             nop                  	;.
	ram:5917 03             inc bc               	;.
	ram:5918 ea 53 43       jp pe,l4353h         	;. S C
	ram:591b 41             ld b,c               	;A
	ram:591c 54             ld d,h               	;T
	ram:591d 00             nop                  	;.
	ram:591e 03             inc bc               	;.
	ram:591f a2             and d                	;.
	ram:5920 53             ld d,e               	;S
	ram:5921 45             ld b,l               	;E
	ram:5922 4c             ld c,h               	;L
	ram:5923 43             ld b,e               	;C
	ram:5924 54             ld d,h               	;T
	ram:5925 00             nop                  	;.
	ram:5926 03             inc bc               	;.
	ram:5927 a3             and e                	;.
	ram:5928 53             ld d,e               	;S
	ram:5929 45             ld b,l               	;E
	ram:592a 4e             ld c,(hl)            	;N
	ram:592b 44             ld b,h               	;D
	ram:592c 00             nop                  	;.
	ram:592d 03             inc bc               	;.
	ram:592e a4             and h                	;.
	ram:592f 53             ld d,e               	;S
	ram:5930 4b             ld c,e               	;K
	ram:5931 49             ld c,c               	;I
	ram:5932 50             ld d,b               	;P
	ram:5933 00             nop                  	;.
	ram:5934 03             inc bc               	;.
	ram:5935 a6             and (hl)             	;.
	ram:5936 53             ld d,e               	;S
	ram:5937 4f             ld c,a               	;O
	ram:5938 4c             ld c,h               	;L
	ram:5939 56             ld d,(hl)            	;V
	ram:593a 45             ld b,l               	;E
	ram:593b 00             nop                  	;.
	ram:593c 03             inc bc               	;.
	ram:593d a7             and a                	;.
	ram:593e 53             ld d,e               	;S
	ram:593f 4f             ld c,a               	;O
	ram:5940 52             ld d,d               	;R
	ram:5941 54             ld d,h               	;T
	ram:5942 58             ld e,b               	;X
	ram:5943 00             nop                  	;.
	ram:5944 03             inc bc               	;.
	ram:5945 a8             xor b                	;.
	ram:5946 53             ld d,e               	;S
	ram:5947 4f             ld c,a               	;O
	ram:5948 52             ld d,d               	;R
	ram:5949 54             ld d,h               	;T
	ram:594a 59             ld e,c               	;Y
	ram:594b 00             nop                  	;.
	ram:594c 43             ld b,e               	;C
	ram:594d ee 53          xor 053h             	;. S
	ram:594f 54             ld d,h               	;T
	ram:5950 47             ld b,a               	;G
	ram:5951 44             ld b,h               	;D
	ram:5952 42             ld b,d               	;B
	ram:5953 00             nop                  	;.
	ram:5954 03             inc bc               	;.
	ram:5955 aa             xor d                	;.
	ram:5956 53             ld d,e               	;S
	ram:5957 54             ld d,h               	;T
	ram:5958 4f             ld c,a               	;O
	ram:5959 61             ld h,c               	;a
	ram:595a 00             nop                  	;.
	ram:595b 03             inc bc               	;.
	ram:595c ab             xor e                	;.
	ram:595d 53             ld d,e               	;S
	ram:595e 54             ld d,h               	;T
	ram:595f 4f             ld c,a               	;O
	ram:5960 62             ld h,d               	;b
	ram:5961 00             nop                  	;.
	ram:5962 03             inc bc               	;.
	ram:5963 ac             xor h                	;.
	ram:5964 53             ld d,e               	;S
	ram:5965 54             ld d,h               	;T
	ram:5966 4f             ld c,a               	;O
	ram:5967 78             ld a,b               	;x
	ram:5968 00             nop                  	;.
	ram:5969 43             ld b,e               	;C
	ram:596a ef             rst 28h              	;.
	ram:596b 53             ld d,e               	;S
	ram:596c 54             ld d,h               	;T
	ram:596d 50             ld d,b               	;P
	ram:596e 49             ld c,c               	;I
	ram:596f 43             ld b,e               	;C
	ram:5970 00             nop                  	;.
	ram:5971 03             inc bc               	;.
	ram:5972 ad             xor l                	;.
	ram:5973 53             ld d,e               	;S
	ram:5974 54             ld d,h               	;T
	ram:5975 52             ld d,d               	;R
	ram:5976 45             ld b,l               	;E
	ram:5977 47             ld b,a               	;G
	ram:5978 00             nop                  	;.
	ram:5979 03             inc bc               	;.
	ram:597a f0             ret p                	;.
	ram:597b 54             ld d,h               	;T
	ram:597c 41             ld b,c               	;A
	ram:597d 4e             ld c,(hl)            	;N
	ram:597e 4c             ld c,h               	;L
	ram:597f 4e             ld c,(hl)            	;N
	ram:5980 00             nop                  	;.
	ram:5981 03             inc bc               	;.
	ram:5982 f1             pop af               	;.
	ram:5983 54             ld d,h               	;T
	ram:5984 52             ld d,d               	;R
	ram:5985 41             ld b,c               	;A
	ram:5986 43             ld b,e               	;C
	ram:5987 45             ld b,l               	;E
	ram:5988 00             nop                  	;.
	ram:5989 03             inc bc               	;.
	ram:598a ae             xor (hl)             	;.
	ram:598b 55             ld d,l               	;U
	ram:598c 4e             ld c,(hl)            	;N
	ram:598d 44             ld b,h               	;D
	ram:598e 45             ld b,l               	;E
	ram:598f 4c             ld c,h               	;L
	ram:5990 00             nop                  	;.
	ram:5991 03             inc bc               	;.
	ram:5992 f3             di                   	;.
	ram:5993 55             ld d,l               	;U
	ram:5994 50             ld d,b               	;P
	ram:5995 50             ld d,b               	;P
	ram:5996 45             ld b,l               	;E
	ram:5997 52             ld d,d               	;R
	ram:5998 00             nop                  	;.
	ram:5999 03             inc bc               	;.
	ram:599a f5             push af              	;.
	ram:599b 56             ld d,(hl)            	;V
	ram:599c 45             ld b,l               	;E
	ram:599d 52             ld d,d               	;R
	ram:599e 54             ld d,h               	;T
	ram:599f 00             nop                  	;.
l59a0h:
	ram:59a0 03             inc bc               	;.
	ram:59a1 bf             cp a                 	;.
	ram:59a2 58             ld e,b               	;X
	ram:59a3 4d             ld c,l               	;M
	ram:59a4 49             ld c,c               	;I
	ram:59a5 54             ld d,h               	;T
	ram:59a6 00             nop                  	;.
	ram:59a7 03             inc bc               	;.
	ram:59a8 f6 78          or 078h              	;. x
	ram:59aa 79             ld a,c               	;y
	ram:59ab 4c             ld c,h               	;L
	ram:59ac 49             ld c,c               	;I
	ram:59ad 4e             ld c,(hl)            	;N
	ram:59ae d7             rst 10h              	;.
	ram:59af 00             nop                  	;.
	ram:59b0 03             inc bc               	;.
	ram:59b1 c0             ret nz               	;.
	ram:59b2 59             ld e,c               	;Y
	ram:59b3 45             ld b,l               	;E
	ram:59b4 53             ld d,e               	;S
	ram:59b5 00             nop                  	;.
	ram:59b6 03             inc bc               	;.
	ram:59b7 f7             rst 30h              	;.
	ram:59b8 59             ld e,c               	;Y
	ram:59b9 49             ld c,c               	;I
	ram:59ba 43             ld b,e               	;C
	ram:59bb 50             ld d,b               	;P
	ram:59bc 54             ld d,h               	;T
	ram:59bd 00             nop                  	;.
	ram:59be 03             inc bc               	;.
	ram:59bf de 08          sbc a,008h           	;. .
	ram:59c1 66             ld h,(hl)            	;f
	ram:59c2 28 78          jr z,l5a3ch          	;( x
	ram:59c4 29             add hl,hl            	;)
	ram:59c5 00             nop                  	;.
	ram:59c6 03             inc bc               	;.
	ram:59c7 92             sub d                	;.
	ram:59c8 05             dec b                	;.
	ram:59c9 52             ld d,d               	;R
	ram:59ca 45             ld b,l               	;E
	ram:59cb 41             ld b,c               	;A
	ram:59cc 4c             ld c,h               	;L
	ram:59cd 00             nop                  	;.
	ram:59ce 03             inc bc               	;.
	ram:59cf cd 42 4f       call sub_4f42h       	;. B O
	ram:59d2 58             ld e,b               	;X
	ram:59d3 00             nop                  	;.
	ram:59d4 03             inc bc               	;.
	ram:59d5 d0             ret nc               	;.
	ram:59d6 5a             ld e,d               	;Z
	ram:59d7 44             ld b,h               	;D
	ram:59d8 45             ld b,l               	;E
	ram:59d9 43             ld b,e               	;C
	ram:59da 4d             ld c,l               	;M
	ram:59db 00             nop                  	;.
	ram:59dc 03             inc bc               	;.
	ram:59dd d8             ret c                	;.
	ram:59de 5a             ld e,d               	;Z
	ram:59df 46             ld b,(hl)            	;F
	ram:59e0 49             ld c,c               	;I
	ram:59e1 54             ld d,h               	;T
	ram:59e2 00             nop                  	;.
	ram:59e3 03             inc bc               	;.
	ram:59e4 f8             ret m                	;.
	ram:59e5 5a             ld e,d               	;Z
	ram:59e6 49             ld c,c               	;I
	ram:59e7 4e             ld c,(hl)            	;N
	ram:59e8 00             nop                  	;.
	ram:59e9 03             inc bc               	;.
	ram:59ea df             rst 18h              	;.
	ram:59eb 5a             ld e,d               	;Z
	ram:59ec 49             ld c,c               	;I
	ram:59ed 4e             ld c,(hl)            	;N
	ram:59ee 54             ld d,h               	;T
	ram:59ef 00             nop                  	;.
	ram:59f0 03             inc bc               	;.
	ram:59f1 f9             ld sp,hl             	;.
	ram:59f2 5a             ld e,d               	;Z
	ram:59f3 4f             ld c,a               	;O
	ram:59f4 4f             ld c,a               	;O
	ram:59f5 4d             ld c,l               	;M
	ram:59f6 58             ld e,b               	;X
	ram:59f7 00             nop                  	;.
	ram:59f8 03             inc bc               	;.
	ram:59f9 fa 5a 4f       jp m,l4f5ah          	;. Z O
	ram:59fc 4f             ld c,a               	;O
	ram:59fd 4d             ld c,l               	;M
	ram:59fe 59             ld e,c               	;Y
	ram:59ff 00             nop                  	;.
	ram:5a00 03             inc bc               	;.
	ram:5a01 fb             ei                   	;.
	ram:5a02 5a             ld e,d               	;Z
	ram:5a03 4f             ld c,a               	;O
	ram:5a04 55             ld d,l               	;U
	ram:5a05 54             ld d,h               	;T
	ram:5a06 00             nop                  	;.
	ram:5a07 03             inc bc               	;.
	ram:5a08 fc 5a 50       call m,sub_505ah     	;. Z P
	ram:5a0b 52             ld d,d               	;R
	ram:5a0c 45             ld b,l               	;E
	ram:5a0d 56             ld d,(hl)            	;V
	ram:5a0e 00             nop                  	;.
	ram:5a0f 03             inc bc               	;.
	ram:5a10 ec 5a 53       call pe,sub_535ah    	;. Z S
	ram:5a13 51             ld d,c               	;Q
	ram:5a14 52             ld d,d               	;R
	ram:5a15 00             nop                  	;.
	ram:5a16 03             inc bc               	;.
	ram:5a17 ed 5a          adc hl,de            	;. Z
	ram:5a19 53             ld d,e               	;S
	ram:5a1a 54             ld d,h               	;T
	ram:5a1b 44             ld b,h               	;D
	ram:5a1c 00             nop                  	;.
	ram:5a1d 03             inc bc               	;.
	ram:5a1e eb             ex de,hl             	;.
	ram:5a1f 5a             ld e,d               	;Z
	ram:5a20 53             ld d,e               	;S
	ram:5a21 54             ld d,h               	;T
	ram:5a22 4f             ld c,a               	;O
	ram:5a23 00             nop                  	;.
	ram:5a24 03             inc bc               	;.
	ram:5a25 f2 5a 54       jp p,l545ah          	;. Z T
	ram:5a28 52             ld d,d               	;R
	ram:5a29 49             ld c,c               	;I
	ram:5a2a 47             ld b,a               	;G
	ram:5a2b 00             nop                  	;.
	ram:5a2c 03             inc bc               	;.
	ram:5a2d f4 5a 52       call p,0525ah        	;. Z R
	ram:5a30 43             ld b,e               	;C
	ram:5a31 4c             ld c,h               	;L
	ram:5a32 00             nop                  	;.
	ram:5a33 03             inc bc               	;.
	ram:5a34 af             xor a                	;.
	ram:5a35 41             ld b,c               	;A
	ram:5a36 4c             ld c,h               	;L
	ram:5a37 4c             ld c,h               	;L
	ram:5a38 00             nop                  	;.
	ram:5a39 03             inc bc               	;.
	ram:5a3a b0             or b                 	;.
	ram:5a3b 42             ld b,d               	;B
l5a3ch:
	ram:5a3c 43             ld b,e               	;C
	ram:5a3d 4b             ld c,e               	;K
	ram:5a3e 55             ld d,l               	;U
	ram:5a3f 50             ld d,b               	;P
	ram:5a40 00             nop                  	;.
	ram:5a41 03             inc bc               	;.
	ram:5a42 b1             or c                 	;.
	ram:5a43 43             ld b,e               	;C
	ram:5a44 4f             ld c,a               	;O
	ram:5a45 4e             ld c,(hl)            	;N
	ram:5a46 53             ld d,e               	;S
	ram:5a47 00             nop                  	;.
	ram:5a48 03             inc bc               	;.
	ram:5a49 b2             or d                 	;.
	ram:5a4a 43             ld b,e               	;C
	ram:5a4b 50             ld d,b               	;P
	ram:5a4c 4c             ld c,h               	;L
	ram:5a4d 58             ld e,b               	;X
	ram:5a4e 00             nop                  	;.
	ram:5a4f 03             inc bc               	;.
	ram:5a50 b3             or e                 	;.
	ram:5a51 45             ld b,l               	;E
	ram:5a52 51             ld d,c               	;Q
	ram:5a53 55             ld d,l               	;U
	ram:5a54 00             nop                  	;.
	ram:5a55 03             inc bc               	;.
	ram:5a56 b4             or h                 	;.
	ram:5a57 47             ld b,a               	;G
	ram:5a58 44             ld b,h               	;D
	ram:5a59 42             ld b,d               	;B
	ram:5a5a 00             nop                  	;.
	ram:5a5b 03             inc bc               	;.
	ram:5a5c b5             or l                 	;.
	ram:5a5d 4c             ld c,h               	;L
	ram:5a5e 49             ld c,c               	;I
	ram:5a5f 53             ld d,e               	;S
	ram:5a60 54             ld d,h               	;T
	ram:5a61 00             nop                  	;.
	ram:5a62 03             inc bc               	;.
	ram:5a63 b6             or (hl)              	;.
	ram:5a64 4d             ld c,l               	;M
	ram:5a65 41             ld b,c               	;A
	ram:5a66 54             ld d,h               	;T
	ram:5a67 52             ld d,d               	;R
	ram:5a68 58             ld e,b               	;X
	ram:5a69 00             nop                  	;.
	ram:5a6a 03             inc bc               	;.
	ram:5a6b b7             or a                 	;.
	ram:5a6c 50             ld d,b               	;P
	ram:5a6d 49             ld c,c               	;I
	ram:5a6e 43             ld b,e               	;C
	ram:5a6f 00             nop                  	;.
	ram:5a70 03             inc bc               	;.
	ram:5a71 b8             cp b                 	;.
	ram:5a72 50             ld d,b               	;P
	ram:5a73 52             ld d,d               	;R
	ram:5a74 47             ld b,a               	;G
	ram:5a75 4d             ld c,l               	;M
	ram:5a76 00             nop                  	;.
	ram:5a77 03             inc bc               	;.
	ram:5a78 b9             cp c                 	;.
	ram:5a79 52             ld d,d               	;R
	ram:5a7a 41             ld b,c               	;A
	ram:5a7b 4e             ld c,(hl)            	;N
	ram:5a7c 47             ld b,a               	;G
	ram:5a7d 45             ld b,l               	;E
	ram:5a7e 00             nop                  	;.
	ram:5a7f 03             inc bc               	;.
	ram:5a80 ba             cp d                 	;.
	ram:5a81 52             ld d,d               	;R
	ram:5a82 45             ld b,l               	;E
	ram:5a83 41             ld b,c               	;A
	ram:5a84 4c             ld c,h               	;L
	ram:5a85 00             nop                  	;.
	ram:5a86 03             inc bc               	;.
	ram:5a87 bb             cp e                 	;.
	ram:5a88 53             ld d,e               	;S
	ram:5a89 54             ld d,h               	;T
	ram:5a8a 41             ld b,c               	;A
	ram:5a8b 54             ld d,h               	;T
	ram:5a8c 00             nop                  	;.
	ram:5a8d 03             inc bc               	;.
	ram:5a8e bc             cp h                 	;.
	ram:5a8f 53             ld d,e               	;S
	ram:5a90 54             ld d,h               	;T
	ram:5a91 52             ld d,d               	;R
	ram:5a92 4e             ld c,(hl)            	;N
	ram:5a93 47             ld b,a               	;G
	ram:5a94 00             nop                  	;.
	ram:5a95 03             inc bc               	;.
	ram:5a96 bd             cp l                 	;.
	ram:5a97 56             ld d,(hl)            	;V
	ram:5a98 45             ld b,l               	;E
	ram:5a99 43             ld b,e               	;C
	ram:5a9a 54             ld d,h               	;T
	ram:5a9b 52             ld d,d               	;R
	ram:5a9c 00             nop                  	;.
l5a9dh:
	ram:5a9d 30 61          jr nc,l5b00h         	;0 a
	ram:5a9f 62             ld h,d               	;b
	ram:5aa0 73             ld (hl),e            	;s
	ram:5aa1 00             nop                  	;.
	ram:5aa2 d0             ret nc               	;.
	ram:5aa3 61             ld h,c               	;a
	ram:5aa4 6e             ld l,(hl)            	;n
	ram:5aa5 64             ld h,h               	;d
	ram:5aa6 00             nop                  	;.
	ram:5aa7 30 61          jr nc,l5b0ah         	;0 a
	ram:5aa9 6e             ld l,(hl)            	;n
	ram:5aaa 67             ld h,a               	;g
	ram:5aab 6c             ld l,h               	;l
	ram:5aac 65             ld h,l               	;e
	ram:5aad 00             nop                  	;.
	ram:5aae 10 41          djnz l5af1h          	;. A
	ram:5ab0 6e             ld l,(hl)            	;n
	ram:5ab1 73             ld (hl),e            	;s
	ram:5ab2 00             nop                  	;.
	ram:5ab3 70             ld (hl),b            	;p
	ram:5ab4 61             ld h,c               	;a
	ram:5ab5 72             ld (hl),d            	;r
	ram:5ab6 63             ld h,e               	;c
	ram:5ab7 00             nop                  	;.
	ram:5ab8 70             ld (hl),b            	;p
	ram:5ab9 61             ld h,c               	;a
	ram:5aba 75             ld (hl),l            	;u
	ram:5abb 67             ld h,a               	;g
	ram:5abc 00             nop                  	;.
	ram:5abd 60             ld h,b               	;`
	ram:5abe 41             ld b,c               	;A
	ram:5abf 78             ld a,b               	;x
	ram:5ac0 65             ld h,l               	;e
	ram:5ac1 73             ld (hl),e            	;s
	ram:5ac2 00             nop                  	;.
	ram:5ac3 00             nop                  	;.
	ram:5ac4 41             ld b,c               	;A
	ram:5ac5 78             ld a,b               	;x
	ram:5ac6 65             ld h,l               	;e
	ram:5ac7 73             ld (hl),e            	;s
	ram:5ac8 4f             ld c,a               	;O
	ram:5ac9 66             ld h,(hl)            	;f
	ram:5aca 66             ld h,(hl)            	;f
	ram:5acb 00             nop                  	;.
	ram:5acc 00             nop                  	;.
	ram:5acd 41             ld b,c               	;A
	ram:5ace 78             ld a,b               	;x
	ram:5acf 65             ld h,l               	;e
	ram:5ad0 73             ld (hl),e            	;s
	ram:5ad1 4f             ld c,a               	;O
	ram:5ad2 6e             ld l,(hl)            	;n
	ram:5ad3 00             nop                  	;.
	ram:5ad4 00             nop                  	;.
	ram:5ad5 42             ld b,d               	;B
	ram:5ad6 69             ld l,c               	;i
	ram:5ad7 6e             ld l,(hl)            	;n
	ram:5ad8 00             nop                  	;.
	ram:5ad9 00             nop                  	;.
	ram:5ada 01 00 60       ld bc,l6000h         	;. . `
	ram:5add 43             ld b,e               	;C
	ram:5ade 69             ld l,c               	;i
	ram:5adf 72             ld (hl),d            	;r
	ram:5ae0 63             ld h,e               	;c
	ram:5ae1 6c             ld l,h               	;l
	ram:5ae2 00             nop                  	;.
	ram:5ae3 00             nop                  	;.
	ram:5ae4 43             ld b,e               	;C
	ram:5ae5 6c             ld l,h               	;l
	ram:5ae6 44             ld b,h               	;D
	ram:5ae7 72             ld (hl),d            	;r
	ram:5ae8 77             ld (hl),a            	;w
	ram:5ae9 00             nop                  	;.
	ram:5aea 00             nop                  	;.
	ram:5aeb 43             ld b,e               	;C
	ram:5aec 6c             ld l,h               	;l
	ram:5aed 4c             ld c,h               	;L
	ram:5aee 43             ld b,e               	;C
	ram:5aef 44             ld b,h               	;D
	ram:5af0 00             nop                  	;.
l5af1h:
	ram:5af1 30 63          jr nc,l5b56h         	;0 c
	ram:5af3 6e             ld l,(hl)            	;n
	ram:5af4 6f             ld l,a               	;o
	ram:5af5 72             ld (hl),d            	;r
	ram:5af6 6d             ld l,l               	;m
	ram:5af7 00             nop                  	;.
	ram:5af8 30 63          jr nc,l5b5dh         	;0 c
	ram:5afa 6f             ld l,a               	;o
	ram:5afb 6e             ld l,(hl)            	;n
	ram:5afc 64             ld h,h               	;d
	ram:5afd 00             nop                  	;.
	ram:5afe 30 63          jr nc,l5b63h         	;0 c
l5b00h:
	ram:5b00 6f             ld l,a               	;o
	ram:5b01 6e             ld l,(hl)            	;n
	ram:5b02 6a             ld l,d               	;j
	ram:5b03 00             nop                  	;.
	ram:5b04 00             nop                  	;.
	ram:5b05 43             ld b,e               	;C
	ram:5b06 6f             ld l,a               	;o
	ram:5b07 6f             ld l,a               	;o
	ram:5b08 72             ld (hl),d            	;r
	ram:5b09 64             ld h,h               	;d
l5b0ah:
	ram:5b0a 4f             ld c,a               	;O
	ram:5b0b 66             ld h,(hl)            	;f
	ram:5b0c 66             ld h,(hl)            	;f
	ram:5b0d 00             nop                  	;.
	ram:5b0e 00             nop                  	;.
	ram:5b0f 43             ld b,e               	;C
	ram:5b10 6f             ld l,a               	;o
	ram:5b11 6f             ld l,a               	;o
	ram:5b12 72             ld (hl),d            	;r
	ram:5b13 64             ld h,h               	;d
	ram:5b14 4f             ld c,a               	;O
	ram:5b15 6e             ld l,(hl)            	;n
	ram:5b16 00             nop                  	;.
	ram:5b17 30 63          jr nc,l5b7ch         	;0 c
	ram:5b19 6f             ld l,a               	;o
	ram:5b1a 73             ld (hl),e            	;s
	ram:5b1b 00             nop                  	;.
	ram:5b1c 30 63          jr nc,l5b81h         	;0 c
	ram:5b1e 6f             ld l,a               	;o
	ram:5b1f 73             ld (hl),e            	;s
	ram:5b20 11 00 30       ld de,03000h         	;. . 0
	ram:5b23 63             ld h,e               	;c
	ram:5b24 6f             ld l,a               	;o
	ram:5b25 73             ld (hl),e            	;s
	ram:5b26 68             ld l,b               	;h
	ram:5b27 00             nop                  	;.
	ram:5b28 30 63          jr nc,l5b8dh         	;0 c
	ram:5b2a 6f             ld l,a               	;o
	ram:5b2b 73             ld (hl),e            	;s
	ram:5b2c 68             ld l,b               	;h
	ram:5b2d 11 00 70       ld de,l7000h         	;. . p
	ram:5b30 63             ld h,e               	;c
	ram:5b31 72             ld (hl),d            	;r
	ram:5b32 6f             ld l,a               	;o
	ram:5b33 73             ld (hl),e            	;s
	ram:5b34 73             ld (hl),e            	;s
	ram:5b35 00             nop                  	;.
	ram:5b36 00             nop                  	;.
	ram:5b37 43             ld b,e               	;C
	ram:5b38 79             ld a,c               	;y
	ram:5b39 6c             ld l,h               	;l
	ram:5b3a 56             ld d,(hl)            	;V
	ram:5b3b 00             nop                  	;.
	ram:5b3c 00             nop                  	;.
	ram:5b3d 44             ld b,h               	;D
	ram:5b3e 65             ld h,l               	;e
	ram:5b3f 63             ld h,e               	;c
	ram:5b40 00             nop                  	;.
	ram:5b41 00             nop                  	;.
	ram:5b42 44             ld b,h               	;D
	ram:5b43 65             ld h,l               	;e
	ram:5b44 67             ld h,a               	;g
	ram:5b45 72             ld (hl),d            	;r
	ram:5b46 65             ld h,l               	;e
	ram:5b47 65             ld h,l               	;e
	ram:5b48 00             nop                  	;.
	ram:5b49 70             ld (hl),b            	;p
	ram:5b4a 64             ld h,h               	;d
	ram:5b4b 65             ld h,l               	;e
	ram:5b4c 72             ld (hl),d            	;r
	ram:5b4d 31 00 70       ld sp,l7000h         	;1 . p
	ram:5b50 64             ld h,h               	;d
	ram:5b51 65             ld h,l               	;e
	ram:5b52 72             ld (hl),d            	;r
	ram:5b53 32 00 30       ld (03000h),a        	;2 . 0
l5b56h:
	ram:5b56 64             ld h,h               	;d
	ram:5b57 65             ld h,l               	;e
	ram:5b58 74             ld (hl),h            	;t
	ram:5b59 00             nop                  	;.
	ram:5b5a 00             nop                  	;.
	ram:5b5b 44             ld b,h               	;D
	ram:5b5c 69             ld l,c               	;i
l5b5dh:
	ram:5b5d 66             ld h,(hl)            	;f
	ram:5b5e 45             ld b,l               	;E
	ram:5b5f 71             ld (hl),c            	;q
	ram:5b60 00             nop                  	;.
	ram:5b61 30 64          jr nc,l5bc7h         	;0 d
l5b63h:
	ram:5b63 69             ld l,c               	;i
	ram:5b64 6d             ld l,l               	;m
	ram:5b65 00             nop                  	;.
	ram:5b66 30 64          jr nc,l5bcch         	;0 d
	ram:5b68 69             ld l,c               	;i
	ram:5b69 6d             ld l,l               	;m
	ram:5b6a 4c             ld c,h               	;L
	ram:5b6b 00             nop                  	;.
	ram:5b6c 20 44          jr nz,l5bb2h         	;D
	ram:5b6e 69             ld l,c               	;i
	ram:5b6f 73             ld (hl),e            	;s
	ram:5b70 70             ld (hl),b            	;p
	ram:5b71 00             nop                  	;.
	ram:5b72 00             nop                  	;.
	ram:5b73 44             ld b,h               	;D
	ram:5b74 69             ld l,c               	;i
	ram:5b75 73             ld (hl),e            	;s
	ram:5b76 70             ld (hl),b            	;p
	ram:5b77 47             ld b,a               	;G
	ram:5b78 00             nop                  	;.
	ram:5b79 70             ld (hl),b            	;p
	ram:5b7a 64             ld h,h               	;d
	ram:5b7b 6f             ld l,a               	;o
l5b7ch:
	ram:5b7c 74             ld (hl),h            	;t
	ram:5b7d 00             nop                  	;.
	ram:5b7e 00             nop                  	;.
	ram:5b7f 44             ld b,h               	;D
	ram:5b80 72             ld (hl),d            	;r
l5b81h:
	ram:5b81 61             ld h,c               	;a
	ram:5b82 77             ld (hl),a            	;w
	ram:5b83 44             ld b,h               	;D
	ram:5b84 6f             ld l,a               	;o
	ram:5b85 74             ld (hl),h            	;t
	ram:5b86 00             nop                  	;.
	ram:5b87 20 44          jr nz,l5bcdh         	;D
	ram:5b89 72             ld (hl),d            	;r
	ram:5b8a 61             ld h,c               	;a
	ram:5b8b 77             ld (hl),a            	;w
	ram:5b8c 46             ld b,(hl)            	;F
l5b8dh:
	ram:5b8d 00             nop                  	;.
	ram:5b8e 00             nop                  	;.
	ram:5b8f 44             ld b,h               	;D
	ram:5b90 72             ld (hl),d            	;r
	ram:5b91 61             ld h,c               	;a
	ram:5b92 77             ld (hl),a            	;w
	ram:5b93 4c             ld c,h               	;L
	ram:5b94 69             ld l,c               	;i
	ram:5b95 6e             ld l,(hl)            	;n
	ram:5b96 65             ld h,l               	;e
	ram:5b97 00             nop                  	;.
	ram:5b98 20 44          jr nz,l5bdeh         	;D
	ram:5b9a 72             ld (hl),d            	;r
	ram:5b9b 49             ld c,c               	;I
	ram:5b9c 6e             ld l,(hl)            	;n
	ram:5b9d 76             halt                 	;v
	ram:5b9e 00             nop                  	;.
	ram:5b9f 60             ld h,b               	;`
	ram:5ba0 44             ld b,h               	;D
	ram:5ba1 53             ld d,e               	;S
	ram:5ba2 3c             inc a                	;<
	ram:5ba3 00             nop                  	;.
	ram:5ba4 00             nop                  	;.
	ram:5ba5 64             ld h,h               	;d
	ram:5ba6 78             ld a,b               	;x
	ram:5ba7 44             ld b,h               	;D
	ram:5ba8 65             ld h,l               	;e
	ram:5ba9 72             ld (hl),d            	;r
	ram:5baa 31 00 00       ld sp,00000h         	;1 . .
	ram:5bad 64             ld h,h               	;d
	ram:5bae 78             ld a,b               	;x
	ram:5baf 4e             ld c,(hl)            	;N
	ram:5bb0 44             ld b,h               	;D
	ram:5bb1 65             ld h,l               	;e
l5bb2h:
	ram:5bb2 72             ld (hl),d            	;r
	ram:5bb3 00             nop                  	;.
	ram:5bb4 00             nop                  	;.
	ram:5bb5 03             inc bc               	;.
	ram:5bb6 00             nop                  	;.
	ram:5bb7 00             nop                  	;.
	ram:5bb8 1b             dec de               	;.
	ram:5bb9 00             nop                  	;.
	ram:5bba 30 65          jr nc,l5c21h         	;0 e
	ram:5bbc 69             ld l,c               	;i
	ram:5bbd 67             ld h,a               	;g
	ram:5bbe 56             ld d,(hl)            	;V
	ram:5bbf 63             ld h,e               	;c
	ram:5bc0 00             nop                  	;.
	ram:5bc1 30 65          jr nc,l5c28h         	;0 e
	ram:5bc3 69             ld l,c               	;i
	ram:5bc4 67             ld h,a               	;g
	ram:5bc5 56             ld d,(hl)            	;V
	ram:5bc6 6c             ld l,h               	;l
l5bc7h:
	ram:5bc7 00             nop                  	;.
	ram:5bc8 00             nop                  	;.
	ram:5bc9 45             ld b,l               	;E
	ram:5bca 6c             ld l,h               	;l
	ram:5bcb 73             ld (hl),e            	;s
l5bcch:
	ram:5bcc 65             ld h,l               	;e
l5bcdh:
	ram:5bcd 00             nop                  	;.
	ram:5bce 00             nop                  	;.
	ram:5bcf 45             ld b,l               	;E
	ram:5bd0 6e             ld l,(hl)            	;n
	ram:5bd1 64             ld h,h               	;d
	ram:5bd2 00             nop                  	;.
	ram:5bd3 00             nop                  	;.
	ram:5bd4 45             ld b,l               	;E
	ram:5bd5 6e             ld l,(hl)            	;n
	ram:5bd6 67             ld h,a               	;g
	ram:5bd7 00             nop                  	;.
	ram:5bd8 60             ld h,b               	;`
	ram:5bd9 45             ld b,l               	;E
	ram:5bda 71             ld (hl),c            	;q
	ram:5bdb 05             dec b                	;.
	ram:5bdc 53             ld d,e               	;S
	ram:5bdd 74             ld (hl),h            	;t
l5bdeh:
	ram:5bde 00             nop                  	;.
	ram:5bdf 30 65          jr nc,l5c46h         	;0 e
	ram:5be1 76             halt                 	;v
	ram:5be2 61             ld h,c               	;a
	ram:5be3 6c             ld l,h               	;l
	ram:5be4 00             nop                  	;.
	ram:5be5 70             ld (hl),b            	;p
	ram:5be6 65             ld h,l               	;e
	ram:5be7 76             halt                 	;v
	ram:5be8 61             ld h,c               	;a
	ram:5be9 6c             ld l,h               	;l
	ram:5bea 46             ld b,(hl)            	;F
	ram:5beb 00             nop                  	;.
	ram:5bec 20 45          jr nz,l5c33h         	;E
	ram:5bee 78             ld a,b               	;x
	ram:5bef 70             ld (hl),b            	;p
	ram:5bf0 52             ld d,d               	;R
	ram:5bf1 00             nop                  	;.
	ram:5bf2 10 65          djnz l5c59h          	;. e
	ram:5bf4 5e             ld e,(hl)            	;^
	ram:5bf5 00             nop                  	;.
	ram:5bf6 30 66          jr nc,l5c5eh         	;0 f
	ram:5bf8 63             ld h,e               	;c
	ram:5bf9 73             ld (hl),e            	;s
	ram:5bfa 74             ld (hl),h            	;t
	ram:5bfb 78             ld a,b               	;x
	ram:5bfc 00             nop                  	;.
	ram:5bfd 30 66          jr nc,l5c65h         	;0 f
	ram:5bff 63             ld h,e               	;c
	ram:5c00 73             ld (hl),e            	;s
	ram:5c01 74             ld (hl),h            	;t
	ram:5c02 79             ld a,c               	;y
	ram:5c03 00             nop                  	;.
	ram:5c04 60             ld h,b               	;`
	ram:5c05 46             ld b,(hl)            	;F
	ram:5c06 69             ld l,c               	;i
	ram:5c07 6c             ld l,h               	;l
	ram:5c08 6c             ld l,h               	;l
	ram:5c09 00             nop                  	;.
	ram:5c0a 20 46          jr nz,l5c52h         	;F
	ram:5c0c 69             ld l,c               	;i
	ram:5c0d 78             ld a,b               	;x
	ram:5c0e 00             nop                  	;.
	ram:5c0f 00             nop                  	;.
	ram:5c10 46             ld b,(hl)            	;F
	ram:5c11 6c             ld l,h               	;l
	ram:5c12 6f             ld l,a               	;o
	ram:5c13 61             ld h,c               	;a
	ram:5c14 74             ld (hl),h            	;t
	ram:5c15 00             nop                  	;.
	ram:5c16 70             ld (hl),b            	;p
	ram:5c17 66             ld h,(hl)            	;f
	ram:5c18 4d             ld c,l               	;M
	ram:5c19 61             ld h,c               	;a
	ram:5c1a 78             ld a,b               	;x
	ram:5c1b 00             nop                  	;.
	ram:5c1c 70             ld (hl),b            	;p
	ram:5c1d 66             ld h,(hl)            	;f
	ram:5c1e 4d             ld c,l               	;M
	ram:5c1f 69             ld l,c               	;i
	ram:5c20 6e             ld l,(hl)            	;n
l5c21h:
	ram:5c21 00             nop                  	;.
	ram:5c22 70             ld (hl),b            	;p
	ram:5c23 66             ld h,(hl)            	;f
	ram:5c24 6e             ld l,(hl)            	;n
	ram:5c25 49             ld c,c               	;I
	ram:5c26 6e             ld l,(hl)            	;n
	ram:5c27 74             ld (hl),h            	;t
l5c28h:
	ram:5c28 00             nop                  	;.
	ram:5c29 20 46          jr nz,72             	;F
	ram:5c2b 6e             ld l,(hl)            	;n
	ram:5c2c 4f             ld c,a               	;O
	ram:5c2d 66             ld h,(hl)            	;f
	ram:5c2e 66             ld h,(hl)            	;f
	ram:5c2f 00             nop                  	;.
	ram:5c30 20 46          jr nz,l5c78h         	;F
	ram:5c32 6e             ld l,(hl)            	;n
l5c33h:
	ram:5c33 4f             ld c,a               	;O
	ram:5c34 6e             ld l,(hl)            	;n
	ram:5c35 00             nop                  	;.
	ram:5c36 60             ld h,b               	;`
	ram:5c37 46             ld b,(hl)            	;F
	ram:5c38 6f             ld l,a               	;o
	ram:5c39 72             ld (hl),d            	;r
	ram:5c3a 00             nop                  	;.
	ram:5c3b 30 66          jr nc,l5ca3h         	;0 f
	ram:5c3d 50             ld d,b               	;P
	ram:5c3e 61             ld h,c               	;a
	ram:5c3f 72             ld (hl),d            	;r
	ram:5c40 74             ld (hl),h            	;t
	ram:5c41 00             nop                  	;.
	ram:5c42 00             nop                  	;.
	ram:5c43 46             ld b,(hl)            	;F
	ram:5c44 75             ld (hl),l            	;u
	ram:5c45 6e             ld l,(hl)            	;n
l5c46h:
	ram:5c46 63             ld h,e               	;c
	ram:5c47 00             nop                  	;.
	ram:5c48 70             ld (hl),b            	;p
	ram:5c49 67             ld h,a               	;g
	ram:5c4a 63             ld h,e               	;c
	ram:5c4b 64             ld h,h               	;d
	ram:5c4c 00             nop                  	;.
	ram:5c4d 10 67          djnz l5cb6h          	;. g
	ram:5c4f 65             ld h,l               	;e
	ram:5c50 74             ld (hl),h            	;t
	ram:5c51 4b             ld c,e               	;K
l5c52h:
	ram:5c52 79             ld a,c               	;y
	ram:5c53 00             nop                  	;.
	ram:5c54 20 47          jr nz,l5c9dh         	;G
	ram:5c56 6f             ld l,a               	;o
	ram:5c57 74             ld (hl),h            	;t
	ram:5c58 6f             ld l,a               	;o
l5c59h:
	ram:5c59 00             nop                  	;.
	ram:5c5a 00             nop                  	;.
	ram:5c5b 47             ld b,a               	;G
	ram:5c5c 72             ld (hl),d            	;r
	ram:5c5d 69             ld l,c               	;i
l5c5eh:
	ram:5c5e 64             ld h,h               	;d
	ram:5c5f 4f             ld c,a               	;O
	ram:5c60 66             ld h,(hl)            	;f
	ram:5c61 66             ld h,(hl)            	;f
	ram:5c62 00             nop                  	;.
	ram:5c63 00             nop                  	;.
	ram:5c64 47             ld b,a               	;G
l5c65h:
	ram:5c65 72             ld (hl),d            	;r
	ram:5c66 69             ld l,c               	;i
	ram:5c67 64             ld h,h               	;d
	ram:5c68 4f             ld c,a               	;O
	ram:5c69 6e             ld l,(hl)            	;n
	ram:5c6a 00             nop                  	;.
	ram:5c6b 00             nop                  	;.
	ram:5c6c 48             ld c,b               	;H
	ram:5c6d 65             ld h,l               	;e
	ram:5c6e 78             ld a,b               	;x
	ram:5c6f 00             nop                  	;.
	ram:5c70 20 48          jr nz,l5cbah         	;H
	ram:5c72 69             ld l,c               	;i
	ram:5c73 73             ld (hl),e            	;s
	ram:5c74 74             ld (hl),h            	;t
	ram:5c75 00             nop                  	;.
	ram:5c76 00             nop                  	;.
	ram:5c77 04             inc b                	;.
l5c78h:
	ram:5c78 00             nop                  	;.
	ram:5c79 30 69          jr nc,l5ce4h         	;0 i
	ram:5c7b 64             ld h,h               	;d
	ram:5c7c 65             ld h,l               	;e
	ram:5c7d 6e             ld l,(hl)            	;n
	ram:5c7e 74             ld (hl),h            	;t
	ram:5c7f 00             nop                  	;.
	ram:5c80 20 49          jr nz,l5ccbh         	;I
	ram:5c82 66             ld h,(hl)            	;f
	ram:5c83 00             nop                  	;.
	ram:5c84 30 69          jr nc,l5cefh         	;0 i
	ram:5c86 6d             ld l,l               	;m
	ram:5c87 61             ld h,c               	;a
	ram:5c88 67             ld h,a               	;g
	ram:5c89 00             nop                  	;.
	ram:5c8a 20 49          jr nz,l5cd5h         	;I
	ram:5c8c 6e             ld l,(hl)            	;n
	ram:5c8d 70             ld (hl),b            	;p
	ram:5c8e 53             ld d,e               	;S
	ram:5c8f 74             ld (hl),h            	;t
	ram:5c90 00             nop                  	;.
	ram:5c91 20 49          jr nz,l5cdch         	;I
	ram:5c93 6e             ld l,(hl)            	;n
	ram:5c94 70             ld (hl),b            	;p
	ram:5c95 75             ld (hl),l            	;u
	ram:5c96 74             ld (hl),h            	;t
	ram:5c97 00             nop                  	;.
	ram:5c98 30 69          jr nc,l5d03h         	;0 i
	ram:5c9a 6e             ld l,(hl)            	;n
	ram:5c9b 74             ld (hl),h            	;t
	ram:5c9c 00             nop                  	;.
l5c9dh:
	ram:5c9d 70             ld (hl),b            	;p
	ram:5c9e 69             ld l,c               	;i
	ram:5c9f 6e             ld l,(hl)            	;n
	ram:5ca0 74             ld (hl),h            	;t
	ram:5ca1 65             ld h,l               	;e
	ram:5ca2 72             ld (hl),d            	;r
l5ca3h:
	ram:5ca3 00             nop                  	;.
	ram:5ca4 30 69          jr nc,l5d0fh         	;0 i
	ram:5ca6 50             ld d,b               	;P
	ram:5ca7 61             ld h,c               	;a
	ram:5ca8 72             ld (hl),d            	;r
	ram:5ca9 74             ld (hl),h            	;t
	ram:5caa 00             nop                  	;.
	ram:5cab 60             ld h,b               	;`
	ram:5cac 49             ld c,c               	;I
	ram:5cad 53             ld d,e               	;S
	ram:5cae 3e 00          ld a,000h            	;> .
	ram:5cb0 00             nop                  	;.
	ram:5cb1 4c             ld c,h               	;L
	ram:5cb2 61             ld h,c               	;a
	ram:5cb3 62             ld h,d               	;b
	ram:5cb4 65             ld h,l               	;e
	ram:5cb5 6c             ld l,h               	;l
l5cb6h:
	ram:5cb6 4f             ld c,a               	;O
	ram:5cb7 66             ld h,(hl)            	;f
	ram:5cb8 66             ld h,(hl)            	;f
	ram:5cb9 00             nop                  	;.
l5cbah:
	ram:5cba 00             nop                  	;.
	ram:5cbb 4c             ld c,h               	;L
	ram:5cbc 61             ld h,c               	;a
	ram:5cbd 62             ld h,d               	;b
	ram:5cbe 65             ld h,l               	;e
	ram:5cbf 6c             ld l,h               	;l
	ram:5cc0 4f             ld c,a               	;O
	ram:5cc1 6e             ld l,(hl)            	;n
	ram:5cc2 00             nop                  	;.
	ram:5cc3 20 4c          jr nz,l5d11h         	;L
	ram:5cc5 62             ld h,d               	;b
	ram:5cc6 6c             ld l,h               	;l
	ram:5cc7 00             nop                  	;.
	ram:5cc8 70             ld (hl),b            	;p
	ram:5cc9 6c             ld l,h               	;l
	ram:5cca 63             ld h,e               	;c
l5ccbh:
	ram:5ccb 6d             ld l,l               	;m
	ram:5ccc 00             nop                  	;.
	ram:5ccd 60             ld h,b               	;`
	ram:5cce 4c             ld c,h               	;L
	ram:5ccf 69             ld l,c               	;i
	ram:5cd0 6e             ld l,(hl)            	;n
	ram:5cd1 65             ld h,l               	;e
	ram:5cd2 00             nop                  	;.
	ram:5cd3 20 4c          jr nz,l5d21h         	;L
l5cd5h:
	ram:5cd5 69             ld l,c               	;i
	ram:5cd6 6e             ld l,(hl)            	;n
	ram:5cd7 52             ld d,d               	;R
	ram:5cd8 00             nop                  	;.
	ram:5cd9 30 6c          jr nc,l5d47h         	;0 l
	ram:5cdb 69             ld l,c               	;i
l5cdch:
	ram:5cdc 05             dec b                	;.
	ram:5cdd 76             halt                 	;v
	ram:5cde 63             ld h,e               	;c
	ram:5cdf 00             nop                  	;.
	ram:5ce0 30 6c          jr nc,l5d4eh         	;0 l
	ram:5ce2 6e             ld l,(hl)            	;n
	ram:5ce3 00             nop                  	;.
l5ce4h:
	ram:5ce4 30 6c          jr nc,l5d52h         	;0 l
	ram:5ce6 6e             ld l,(hl)            	;n
	ram:5ce7 67             ld h,a               	;g
	ram:5ce8 74             ld (hl),h            	;t
	ram:5ce9 68             ld l,b               	;h
	ram:5cea 00             nop                  	;.
	ram:5ceb 20 4c          jr nz,l5d39h         	;L
	ram:5ced 6e             ld l,(hl)            	;n
	ram:5cee 52             ld d,d               	;R
l5cefh:
	ram:5cef 00             nop                  	;.
	ram:5cf0 30 6c          jr nc,110            	;0 l
	ram:5cf2 6f             ld l,a               	;o
	ram:5cf3 67             ld h,a               	;g
	ram:5cf4 00             nop                  	;.
	ram:5cf5 70             ld (hl),b            	;p
	ram:5cf6 4c             ld c,h               	;L
	ram:5cf7 55             ld d,l               	;U
	ram:5cf8 00             nop                  	;.
	ram:5cf9 70             ld (hl),b            	;p
	ram:5cfa 6d             ld l,l               	;m
	ram:5cfb 61             ld h,c               	;a
	ram:5cfc 78             ld a,b               	;x
	ram:5cfd 00             nop                  	;.
	ram:5cfe 60             ld h,b               	;`
	ram:5cff 4d             ld c,l               	;M
	ram:5d00 65             ld h,l               	;e
	ram:5d01 6e             ld l,(hl)            	;n
	ram:5d02 75             ld (hl),l            	;u
l5d03h:
	ram:5d03 00             nop                  	;.
	ram:5d04 70             ld (hl),b            	;p
	ram:5d05 6d             ld l,l               	;m
	ram:5d06 69             ld l,c               	;i
	ram:5d07 6e             ld l,(hl)            	;n
	ram:5d08 00             nop                  	;.
	ram:5d09 70             ld (hl),b            	;p
	ram:5d0a 6d             ld l,l               	;m
	ram:5d0b 6f             ld l,a               	;o
	ram:5d0c 64             ld h,h               	;d
	ram:5d0d 00             nop                  	;.
	ram:5d0e 70             ld (hl),b            	;p
l5d0fh:
	ram:5d0f 6d             ld l,l               	;m
	ram:5d10 52             ld d,d               	;R
l5d11h:
	ram:5d11 41             ld b,c               	;A
	ram:5d12 64             ld h,h               	;d
	ram:5d13 64             ld h,h               	;d
	ram:5d14 00             nop                  	;.
	ram:5d15 70             ld (hl),b            	;p
	ram:5d16 6d             ld l,l               	;m
	ram:5d17 75             ld (hl),l            	;u
	ram:5d18 6c             ld l,h               	;l
	ram:5d19 74             ld (hl),h            	;t
	ram:5d1a 52             ld d,d               	;R
	ram:5d1b 00             nop                  	;.
	ram:5d1c d0             ret nc               	;.
	ram:5d1d 6e             ld l,(hl)            	;n
	ram:5d1e 43             ld b,e               	;C
	ram:5d1f 72             ld (hl),d            	;r
	ram:5d20 00             nop                  	;.
l5d21h:
	ram:5d21 70             ld (hl),b            	;p
	ram:5d22 6e             ld l,(hl)            	;n
	ram:5d23 44             ld b,h               	;D
	ram:5d24 65             ld h,l               	;e
	ram:5d25 72             ld (hl),d            	;r
	ram:5d26 00             nop                  	;.
	ram:5d27 30 6e          jr nc,l5d97h         	;0 n
	ram:5d29 6f             ld l,a               	;o
	ram:5d2a 72             ld (hl),d            	;r
	ram:5d2b 6d             ld l,l               	;m
	ram:5d2c 00             nop                  	;.
	ram:5d2d 00             nop                  	;.
	ram:5d2e 4e             ld c,(hl)            	;N
	ram:5d2f 6f             ld l,a               	;o
	ram:5d30 72             ld (hl),d            	;r
	ram:5d31 6d             ld l,l               	;m
	ram:5d32 61             ld h,c               	;a
	ram:5d33 6c             ld l,h               	;l
	ram:5d34 00             nop                  	;.
	ram:5d35 30 6e          jr nc,l5da5h         	;0 n
	ram:5d37 6f             ld l,a               	;o
	ram:5d38 74             ld (hl),h            	;t
l5d39h:
	ram:5d39 00             nop                  	;.
	ram:5d3a d0             ret nc               	;.
	ram:5d3b 6e             ld l,(hl)            	;n
	ram:5d3c 50             ld d,b               	;P
	ram:5d3d 72             ld (hl),d            	;r
	ram:5d3e 00             nop                  	;.
	ram:5d3f 00             nop                  	;.
	ram:5d40 4f             ld c,a               	;O
	ram:5d41 63             ld h,e               	;c
	ram:5d42 74             ld (hl),h            	;t
	ram:5d43 00             nop                  	;.
	ram:5d44 20 4f          jr nz,l5d95h         	;O
	ram:5d46 6e             ld l,(hl)            	;n
l5d47h:
	ram:5d47 65             ld h,l               	;e
	ram:5d48 56             ld d,(hl)            	;V
	ram:5d49 61             ld h,c               	;a
	ram:5d4a 72             ld (hl),d            	;r
	ram:5d4b 00             nop                  	;.
	ram:5d4c d0             ret nc               	;.
	ram:5d4d 6f             ld l,a               	;o
l5d4eh:
	ram:5d4e 72             ld (hl),d            	;r
	ram:5d4f 00             nop                  	;.
	ram:5d50 60             ld h,b               	;`
	ram:5d51 4f             ld c,a               	;O
l5d52h:
	ram:5d52 75             ld (hl),l            	;u
	ram:5d53 74             ld (hl),h            	;t
	ram:5d54 70             ld (hl),b            	;p
	ram:5d55 74             ld (hl),h            	;t
	ram:5d56 00             nop                  	;.
	ram:5d57 00             nop                  	;.
	ram:5d58 02             ld (bc),a            	;.
	ram:5d59 00             nop                  	;.
	ram:5d5a 20 50          jr nz,l5dach         	;P
	ram:5d5c 32 52 65       ld (l6552h),a        	;2 R e
	ram:5d5f 67             ld h,a               	;g
	ram:5d60 00             nop                  	;.
	ram:5d61 20 50          jr nz,l5db3h         	;P
	ram:5d63 33             inc sp               	;3
	ram:5d64 52             ld d,d               	;R
	ram:5d65 65             ld h,l               	;e
	ram:5d66 67             ld h,a               	;g
	ram:5d67 00             nop                  	;.
	ram:5d68 20 50          jr nz,l5dbah         	;P
	ram:5d6a 34             inc (hl)             	;4
	ram:5d6b 52             ld d,d               	;R
	ram:5d6c 65             ld h,l               	;e
	ram:5d6d 67             ld h,a               	;g
	ram:5d6e 00             nop                  	;.
	ram:5d6f 00             nop                  	;.
	ram:5d70 50             ld d,b               	;P
	ram:5d71 61             ld h,c               	;a
	ram:5d72 72             ld (hl),d            	;r
	ram:5d73 61             ld h,c               	;a
	ram:5d74 6d             ld l,l               	;m
	ram:5d75 00             nop                  	;.
	ram:5d76 20 50          jr nz,l5dc8h         	;P
	ram:5d78 61             ld h,c               	;a
	ram:5d79 75             ld (hl),l            	;u
	ram:5d7a 73             ld (hl),e            	;s
	ram:5d7b 65             ld h,l               	;e
	ram:5d7c 00             nop                  	;.
	ram:5d7d 70             ld (hl),b            	;p
	ram:5d7e 70             ld (hl),b            	;p
	ram:5d7f 45             ld b,l               	;E
	ram:5d80 76             halt                 	;v
	ram:5d81 61             ld h,c               	;a
	ram:5d82 6c             ld l,h               	;l
	ram:5d83 00             nop                  	;.
	ram:5d84 00             nop                  	;.
	ram:5d85 50             ld d,b               	;P
	ram:5d86 6f             ld l,a               	;o
	ram:5d87 6c             ld l,h               	;l
	ram:5d88 00             nop                  	;.
	ram:5d89 00             nop                  	;.
	ram:5d8a 50             ld d,b               	;P
	ram:5d8b 6f             ld l,a               	;o
	ram:5d8c 6c             ld l,h               	;l
	ram:5d8d 61             ld h,c               	;a
	ram:5d8e 72             ld (hl),d            	;r
	ram:5d8f 43             ld b,e               	;C
	ram:5d90 00             nop                  	;.
	ram:5d91 00             nop                  	;.
	ram:5d92 50             ld d,b               	;P
	ram:5d93 6f             ld l,a               	;o
	ram:5d94 6c             ld l,h               	;l
l5d95h:
	ram:5d95 61             ld h,c               	;a
	ram:5d96 72             ld (hl),d            	;r
l5d97h:
	ram:5d97 47             ld b,a               	;G
	ram:5d98 43             ld b,e               	;C
	ram:5d99 00             nop                  	;.
	ram:5d9a 30 70          jr nc,l5e0ch         	;0 p
	ram:5d9c 6f             ld l,a               	;o
	ram:5d9d 6c             ld l,h               	;l
	ram:5d9e 79             ld a,c               	;y
	ram:5d9f 00             nop                  	;.
	ram:5da0 30 70          jr nc,l5e12h         	;0 p
	ram:5da2 72             ld (hl),d            	;r
	ram:5da3 6f             ld l,a               	;o
	ram:5da4 64             ld h,h               	;d
l5da5h:
	ram:5da5 00             nop                  	;.
	ram:5da6 20 50          jr nz,l5df8h         	;P
	ram:5da8 72             ld (hl),d            	;r
	ram:5da9 6f             ld l,a               	;o
	ram:5daa 6d             ld l,l               	;m
	ram:5dab 70             ld (hl),b            	;p
l5dach:
	ram:5dac 74             ld (hl),h            	;t
	ram:5dad 00             nop                  	;.
	ram:5dae 00             nop                  	;.
	ram:5daf 50             ld d,b               	;P
	ram:5db0 72             ld (hl),d            	;r
	ram:5db1 74             ld (hl),h            	;t
	ram:5db2 53             ld d,e               	;S
l5db3h:
	ram:5db3 63             ld h,e               	;c
	ram:5db4 72             ld (hl),d            	;r
	ram:5db5 6e             ld l,(hl)            	;n
	ram:5db6 00             nop                  	;.
	ram:5db7 60             ld h,b               	;`
	ram:5db8 50             ld d,b               	;P
	ram:5db9 74             ld (hl),h            	;t
l5dbah:
	ram:5dba 43             ld b,e               	;C
	ram:5dbb 68             ld l,b               	;h
	ram:5dbc 67             ld h,a               	;g
	ram:5dbd 00             nop                  	;.
	ram:5dbe 60             ld h,b               	;`
	ram:5dbf 50             ld d,b               	;P
	ram:5dc0 74             ld (hl),h            	;t
	ram:5dc1 4f             ld c,a               	;O
	ram:5dc2 66             ld h,(hl)            	;f
	ram:5dc3 66             ld h,(hl)            	;f
	ram:5dc4 00             nop                  	;.
	ram:5dc5 60             ld h,b               	;`
	ram:5dc6 50             ld d,b               	;P
	ram:5dc7 74             ld (hl),h            	;t
l5dc8h:
	ram:5dc8 4f             ld c,a               	;O
	ram:5dc9 6e             ld l,(hl)            	;n
	ram:5dca 00             nop                  	;.
	ram:5dcb 20 50          jr nz,l5e1dh         	;P
	ram:5dcd 77             ld (hl),a            	;w
	ram:5dce 72             ld (hl),d            	;r
	ram:5dcf 52             ld d,d               	;R
	ram:5dd0 00             nop                  	;.
	ram:5dd1 70             ld (hl),b            	;p
	ram:5dd2 72             ld (hl),d            	;r
	ram:5dd3 41             ld b,c               	;A
	ram:5dd4 64             ld h,h               	;d
	ram:5dd5 64             ld h,h               	;d
	ram:5dd6 00             nop                  	;.
	ram:5dd7 00             nop                  	;.
	ram:5dd8 52             ld d,d               	;R
	ram:5dd9 61             ld h,c               	;a
	ram:5dda 64             ld h,h               	;d
	ram:5ddb 69             ld l,c               	;i
	ram:5ddc 61             ld h,c               	;a
	ram:5ddd 6e             ld l,(hl)            	;n
	ram:5dde 00             nop                  	;.
	ram:5ddf 10 72          djnz 116             	;. r
	ram:5de1 61             ld h,c               	;a
	ram:5de2 6e             ld l,(hl)            	;n
	ram:5de3 64             ld h,h               	;d
	ram:5de4 00             nop                  	;.
	ram:5de5 70             ld (hl),b            	;p
	ram:5de6 72             ld (hl),d            	;r
	ram:5de7 61             ld h,c               	;a
	ram:5de8 6e             ld l,(hl)            	;n
	ram:5de9 64             ld h,h               	;d
	ram:5dea 4d             ld c,l               	;M
	ram:5deb 00             nop                  	;.
	ram:5dec 20 52          jr nz,l5e40h         	;R
	ram:5dee 63             ld h,e               	;c
	ram:5def 47             ld b,a               	;G
	ram:5df0 44             ld b,h               	;D
	ram:5df1 42             ld b,d               	;B
	ram:5df2 00             nop                  	;.
	ram:5df3 20 52          jr nz,l5e47h         	;R
	ram:5df5 63             ld h,e               	;c
	ram:5df6 50             ld d,b               	;P
	ram:5df7 69             ld l,c               	;i
l5df8h:
	ram:5df8 63             ld h,e               	;c
	ram:5df9 00             nop                  	;.
	ram:5dfa 30 72          jr nc,l5e6eh         	;0 r
	ram:5dfc 65             ld h,l               	;e
	ram:5dfd 61             ld h,c               	;a
	ram:5dfe 6c             ld l,h               	;l
	ram:5dff 00             nop                  	;.
	ram:5e00 00             nop                  	;.
	ram:5e01 52             ld d,d               	;R
	ram:5e02 65             ld h,l               	;e
	ram:5e03 63             ld h,e               	;c
	ram:5e04 74             ld (hl),h            	;t
	ram:5e05 43             ld b,e               	;C
	ram:5e06 00             nop                  	;.
	ram:5e07 00             nop                  	;.
	ram:5e08 52             ld d,d               	;R
	ram:5e09 65             ld h,l               	;e
	ram:5e0a 63             ld h,e               	;c
	ram:5e0b 74             ld (hl),h            	;t
l5e0ch:
	ram:5e0c 47             ld b,a               	;G
	ram:5e0d 43             ld b,e               	;C
	ram:5e0e 00             nop                  	;.
	ram:5e0f 00             nop                  	;.
	ram:5e10 52             ld d,d               	;R
	ram:5e11 65             ld h,l               	;e
l5e12h:
	ram:5e12 63             ld h,e               	;c
	ram:5e13 74             ld (hl),h            	;t
	ram:5e14 56             ld d,(hl)            	;V
	ram:5e15 00             nop                  	;.
	ram:5e16 30 72          jr nc,l5e8ah         	;0 r
	ram:5e18 65             ld h,l               	;e
	ram:5e19 66             ld h,(hl)            	;f
	ram:5e1a 00             nop                  	;.
	ram:5e1b 20 52          jr nz,l5e6fh         	;R
l5e1dh:
	ram:5e1d 65             ld h,l               	;e
	ram:5e1e 70             ld (hl),b            	;p
	ram:5e1f 65             ld h,l               	;e
	ram:5e20 61             ld h,c               	;a
	ram:5e21 74             ld (hl),h            	;t
	ram:5e22 00             nop                  	;.
	ram:5e23 00             nop                  	;.
	ram:5e24 52             ld d,d               	;R
	ram:5e25 65             ld h,l               	;e
	ram:5e26 74             ld (hl),h            	;t
	ram:5e27 75             ld (hl),l            	;u
	ram:5e28 72             ld (hl),d            	;r
	ram:5e29 6e             ld l,(hl)            	;n
	ram:5e2a 00             nop                  	;.
	ram:5e2b 30 72          jr nc,l5e9fh         	;0 r
	ram:5e2d 6e             ld l,(hl)            	;n
	ram:5e2e 6f             ld l,a               	;o
	ram:5e2f 72             ld (hl),d            	;r
	ram:5e30 6d             ld l,l               	;m
	ram:5e31 00             nop                  	;.
	ram:5e32 30 72          jr nc,l5ea6h         	;0 r
	ram:5e34 6f             ld l,a               	;o
	ram:5e35 74             ld (hl),h            	;t
	ram:5e36 4c             ld c,h               	;L
	ram:5e37 00             nop                  	;.
	ram:5e38 30 72          jr nc,l5each         	;0 r
	ram:5e3a 6f             ld l,a               	;o
	ram:5e3b 74             ld (hl),h            	;t
	ram:5e3c 52             ld d,d               	;R
	ram:5e3d 00             nop                  	;.
	ram:5e3e 70             ld (hl),b            	;p
	ram:5e3f 72             ld (hl),d            	;r
l5e40h:
	ram:5e40 6f             ld l,a               	;o
	ram:5e41 75             ld (hl),l            	;u
	ram:5e42 6e             ld l,(hl)            	;n
	ram:5e43 64             ld h,h               	;d
	ram:5e44 00             nop                  	;.
	ram:5e45 30 72          jr nc,l5eb9h         	;0 r
l5e47h:
	ram:5e47 72             ld (hl),d            	;r
	ram:5e48 65             ld h,l               	;e
	ram:5e49 66             ld h,(hl)            	;f
	ram:5e4a 00             nop                  	;.
	ram:5e4b 70             ld (hl),b            	;p
	ram:5e4c 72             ld (hl),d            	;r
	ram:5e4d 53             ld d,e               	;S
	ram:5e4e 77             ld (hl),a            	;w
	ram:5e4f 61             ld h,c               	;a
	ram:5e50 70             ld (hl),b            	;p
	ram:5e51 00             nop                  	;.
	ram:5e52 20 53          jr nz,85             	;S
	ram:5e54 63             ld h,e               	;c
	ram:5e55 61             ld h,c               	;a
	ram:5e56 74             ld (hl),h            	;t
	ram:5e57 74             ld (hl),h            	;t
	ram:5e58 65             ld h,l               	;e
	ram:5e59 72             ld (hl),d            	;r
	ram:5e5a 00             nop                  	;.
	ram:5e5b 00             nop                  	;.
	ram:5e5c 53             ld d,e               	;S
	ram:5e5d 63             ld h,e               	;c
	ram:5e5e 69             ld l,c               	;i
	ram:5e5f 00             nop                  	;.
	ram:5e60 70             ld (hl),b            	;p
	ram:5e61 73             ld (hl),e            	;s
	ram:5e62 65             ld h,l               	;e
	ram:5e63 71             ld (hl),c            	;q
	ram:5e64 00             nop                  	;.
	ram:5e65 00             nop                  	;.
	ram:5e66 53             ld d,e               	;S
	ram:5e67 65             ld h,l               	;e
	ram:5e68 71             ld (hl),c            	;q
	ram:5e69 47             ld b,a               	;G
	ram:5e6a 00             nop                  	;.
	ram:5e6b 70             ld (hl),b            	;p
	ram:5e6c 53             ld d,e               	;S
	ram:5e6d 68             ld l,b               	;h
l5e6eh:
	ram:5e6e 61             ld h,c               	;a
l5e6fh:
	ram:5e6f 64             ld h,h               	;d
	ram:5e70 65             ld h,l               	;e
	ram:5e71 00             nop                  	;.
	ram:5e72 30 73          jr nc,l5ee7h         	;0 s
	ram:5e74 68             ld l,b               	;h
	ram:5e75 66             ld h,(hl)            	;f
	ram:5e76 74             ld (hl),h            	;t
	ram:5e77 4c             ld c,h               	;L
	ram:5e78 00             nop                  	;.
	ram:5e79 30 73          jr nc,l5eeeh         	;0 s
	ram:5e7b 68             ld l,b               	;h
	ram:5e7c 66             ld h,(hl)            	;f
	ram:5e7d 74             ld (hl),h            	;t
	ram:5e7e 52             ld d,d               	;R
	ram:5e7f 00             nop                  	;.
	ram:5e80 00             nop                  	;.
	ram:5e81 53             ld d,e               	;S
	ram:5e82 68             ld l,b               	;h
	ram:5e83 77             ld (hl),a            	;w
	ram:5e84 53             ld d,e               	;S
	ram:5e85 74             ld (hl),h            	;t
	ram:5e86 00             nop                  	;.
	ram:5e87 30 73          jr nc,l5efch         	;0 s
	ram:5e89 69             ld l,c               	;i
l5e8ah:
	ram:5e8a 67             ld h,a               	;g
	ram:5e8b 6e             ld l,(hl)            	;n
	ram:5e8c 00             nop                  	;.
	ram:5e8d 00             nop                  	;.
	ram:5e8e 53             ld d,e               	;S
	ram:5e8f 69             ld l,c               	;i
	ram:5e90 6d             ld l,l               	;m
	ram:5e91 75             ld (hl),l            	;u
	ram:5e92 6c             ld l,h               	;l
	ram:5e93 47             ld b,a               	;G
	ram:5e94 00             nop                  	;.
	ram:5e95 70             ld (hl),b            	;p
	ram:5e96 73             ld (hl),e            	;s
	ram:5e97 69             ld l,c               	;i
	ram:5e98 6d             ld l,l               	;m
	ram:5e99 75             ld (hl),l            	;u
	ram:5e9a 6c             ld l,h               	;l
	ram:5e9b 74             ld (hl),h            	;t
	ram:5e9c 00             nop                  	;.
	ram:5e9d 30 73          jr nc,117            	;0 s
l5e9fh:
	ram:5e9f 69             ld l,c               	;i
	ram:5ea0 6e             ld l,(hl)            	;n
	ram:5ea1 00             nop                  	;.
	ram:5ea2 30 73          jr nc,l5f17h         	;0 s
	ram:5ea4 69             ld l,c               	;i
	ram:5ea5 6e             ld l,(hl)            	;n
l5ea6h:
	ram:5ea6 11 00 30       ld de,03000h         	;. . 0
	ram:5ea9 73             ld (hl),e            	;s
	ram:5eaa 69             ld l,c               	;i
	ram:5eab 6e             ld l,(hl)            	;n
l5each:
	ram:5eac 68             ld l,b               	;h
	ram:5ead 00             nop                  	;.
	ram:5eae 30 73          jr nc,l5f23h         	;0 s
	ram:5eb0 69             ld l,c               	;i
	ram:5eb1 6e             ld l,(hl)            	;n
	ram:5eb2 68             ld l,b               	;h
	ram:5eb3 11 00 60       ld de,l6000h         	;. . `
	ram:5eb6 53             ld d,e               	;S
	ram:5eb7 6f             ld l,a               	;o
	ram:5eb8 6c             ld l,h               	;l
l5eb9h:
	ram:5eb9 76             halt                 	;v
	ram:5eba 65             ld h,l               	;e
	ram:5ebb 72             ld (hl),d            	;r
	ram:5ebc 00             nop                  	;.
	ram:5ebd 30 73          jr nc,l5f32h         	;0 s
	ram:5ebf 6f             ld l,a               	;o
	ram:5ec0 72             ld (hl),d            	;r
	ram:5ec1 74             ld (hl),h            	;t
	ram:5ec2 41             ld b,c               	;A
	ram:5ec3 00             nop                  	;.
	ram:5ec4 30 73          jr nc,l5f39h         	;0 s
	ram:5ec6 6f             ld l,a               	;o
	ram:5ec7 72             ld (hl),d            	;r
	ram:5ec8 74             ld (hl),h            	;t
	ram:5ec9 44             ld b,h               	;D
	ram:5eca 00             nop                  	;.
	ram:5ecb 20 53          jr nz,l5f20h         	;S
	ram:5ecd 6f             ld l,a               	;o
	ram:5ece 72             ld (hl),d            	;r
	ram:5ecf 74             ld (hl),h            	;t
	ram:5ed0 78             ld a,b               	;x
	ram:5ed1 00             nop                  	;.
	ram:5ed2 20 53          jr nz,l5f27h         	;S
	ram:5ed4 6f             ld l,a               	;o
	ram:5ed5 72             ld (hl),d            	;r
	ram:5ed6 74             ld (hl),h            	;t
	ram:5ed7 79             ld a,c               	;y
	ram:5ed8 00             nop                  	;.
	ram:5ed9 00             nop                  	;.
	ram:5eda 53             ld d,e               	;S
	ram:5edb 70             ld (hl),b            	;p
	ram:5edc 68             ld l,b               	;h
	ram:5edd 65             ld h,l               	;e
	ram:5ede 72             ld (hl),d            	;r
	ram:5edf 65             ld h,l               	;e
	ram:5ee0 56             ld d,(hl)            	;V
	ram:5ee1 00             nop                  	;.
	ram:5ee2 20 53          jr nz,l5f37h         	;S
	ram:5ee4 74             ld (hl),h            	;t
	ram:5ee5 47             ld b,a               	;G
	ram:5ee6 44             ld b,h               	;D
l5ee7h:
	ram:5ee7 42             ld b,d               	;B
	ram:5ee8 00             nop                  	;.
	ram:5ee9 00             nop                  	;.
	ram:5eea 53             ld d,e               	;S
	ram:5eeb 74             ld (hl),h            	;t
	ram:5eec 6f             ld l,a               	;o
	ram:5eed 70             ld (hl),b            	;p
l5eeeh:
	ram:5eee 00             nop                  	;.
	ram:5eef 20 53          jr nz,l5f44h         	;S
	ram:5ef1 74             ld (hl),h            	;t
	ram:5ef2 50             ld d,b               	;P
	ram:5ef3 69             ld l,c               	;i
	ram:5ef4 63             ld h,e               	;c
	ram:5ef5 00             nop                  	;.
	ram:5ef6 60             ld h,b               	;`
	ram:5ef7 53             ld d,e               	;S
	ram:5ef8 74             ld (hl),h            	;t
	ram:5ef9 05             dec b                	;.
	ram:5efa 45             ld b,l               	;E
	ram:5efb 71             ld (hl),c            	;q
l5efch:
	ram:5efc 00             nop                  	;.
	ram:5efd 70             ld (hl),b            	;p
	ram:5efe 73             ld (hl),e            	;s
	ram:5eff 75             ld (hl),l            	;u
	ram:5f00 62             ld h,d               	;b
l5f01h:
	ram:5f01 00             nop                  	;.
	ram:5f02 30 73          jr nc,l5f77h         	;0 s
	ram:5f04 75             ld (hl),l            	;u
	ram:5f05 6d             ld l,l               	;m
	ram:5f06 00             nop                  	;.
	ram:5f07 30 74          jr nc,l5f7dh         	;0 t
	ram:5f09 61             ld h,c               	;a
	ram:5f0a 6e             ld l,(hl)            	;n
	ram:5f0b 00             nop                  	;.
	ram:5f0c 30 74          jr nc,l5f82h         	;0 t
	ram:5f0e 61             ld h,c               	;a
	ram:5f0f 6e             ld l,(hl)            	;n
	ram:5f10 11 00 30       ld de,03000h         	;. . 0
	ram:5f13 74             ld (hl),h            	;t
	ram:5f14 61             ld h,c               	;a
	ram:5f15 6e             ld l,(hl)            	;n
	ram:5f16 68             ld l,b               	;h
l5f17h:
	ram:5f17 00             nop                  	;.
	ram:5f18 30 74          jr nc,l5f8eh         	;0 t
	ram:5f1a 61             ld h,c               	;a
	ram:5f1b 6e             ld l,(hl)            	;n
	ram:5f1c 68             ld l,b               	;h
	ram:5f1d 11 00 60       ld de,l6000h         	;. . `
l5f20h:
	ram:5f20 54             ld d,h               	;T
	ram:5f21 61             ld h,c               	;a
	ram:5f22 6e             ld l,(hl)            	;n
l5f23h:
	ram:5f23 4c             ld c,h               	;L
	ram:5f24 6e             ld l,(hl)            	;n
	ram:5f25 00             nop                  	;.
	ram:5f26 00             nop                  	;.
l5f27h:
	ram:5f27 54             ld d,h               	;T
	ram:5f28 68             ld l,b               	;h
	ram:5f29 65             ld h,l               	;e
	ram:5f2a 6e             ld l,(hl)            	;n
	ram:5f2b 00             nop                  	;.
	ram:5f2c 00             nop                  	;.
	ram:5f2d 54             ld d,h               	;T
	ram:5f2e 72             ld (hl),d            	;r
	ram:5f2f 61             ld h,c               	;a
	ram:5f30 63             ld h,e               	;c
	ram:5f31 65             ld h,l               	;e
l5f32h:
	ram:5f32 00             nop                  	;.
	ram:5f33 30 75          jr nc,l5faah         	;0 u
	ram:5f35 6e             ld l,(hl)            	;n
	ram:5f36 69             ld l,c               	;i
l5f37h:
	ram:5f37 74             ld (hl),h            	;t
	ram:5f38 56             ld d,(hl)            	;V
l5f39h:
	ram:5f39 00             nop                  	;.
	ram:5f3a 30 76          jr nc,l5fb2h         	;0 v
	ram:5f3c 63             ld h,e               	;c
	ram:5f3d 05             dec b                	;.
	ram:5f3e 6c             ld l,h               	;l
	ram:5f3f 69             ld l,c               	;i
	ram:5f40 00             nop                  	;.
	ram:5f41 20 56          jr nz,l5f99h         	;V
	ram:5f43 65             ld h,l               	;e
l5f44h:
	ram:5f44 72             ld (hl),d            	;r
	ram:5f45 74             ld (hl),h            	;t
	ram:5f46 00             nop                  	;.
	ram:5f47 20 57          jr nz,l5fa0h         	;W
	ram:5f49 68             ld l,b               	;h
	ram:5f4a 69             ld l,c               	;i
	ram:5f4b 6c             ld l,h               	;l
	ram:5f4c 65             ld h,l               	;e
	ram:5f4d 00             nop                  	;.
	ram:5f4e d0             ret nc               	;.
	ram:5f4f 78             ld a,b               	;x
	ram:5f50 6f             ld l,a               	;o
	ram:5f51 72             ld (hl),d            	;r
	ram:5f52 00             nop                  	;.
	ram:5f53 20 78          jr nz,l5fcdh         	;x
	ram:5f55 79             ld a,c               	;y
	ram:5f56 6c             ld l,h               	;l
	ram:5f57 69             ld l,c               	;i
	ram:5f58 6e             ld l,(hl)            	;n
	ram:5f59 65             ld h,l               	;e
	ram:5f5a 00             nop                  	;.
	ram:5f5b 00             nop                  	;.
	ram:5f5c 5a             ld e,d               	;Z
	ram:5f5d 44             ld b,h               	;D
	ram:5f5e 65             ld h,l               	;e
	ram:5f5f 63             ld h,e               	;c
	ram:5f60 6d             ld l,l               	;m
	ram:5f61 00             nop                  	;.
	ram:5f62 00             nop                  	;.
	ram:5f63 5a             ld e,d               	;Z
	ram:5f64 46             ld b,(hl)            	;F
	ram:5f65 69             ld l,c               	;i
	ram:5f66 74             ld (hl),h            	;t
	ram:5f67 00             nop                  	;.
	ram:5f68 00             nop                  	;.
	ram:5f69 5a             ld e,d               	;Z
	ram:5f6a 49             ld c,c               	;I
	ram:5f6b 6e             ld l,(hl)            	;n
	ram:5f6c 00             nop                  	;.
	ram:5f6d 00             nop                  	;.
	ram:5f6e 5a             ld e,d               	;Z
	ram:5f6f 49             ld c,c               	;I
	ram:5f70 6e             ld l,(hl)            	;n
	ram:5f71 74             ld (hl),h            	;t
	ram:5f72 00             nop                  	;.
	ram:5f73 00             nop                  	;.
	ram:5f74 5a             ld e,d               	;Z
	ram:5f75 4f             ld c,a               	;O
	ram:5f76 75             ld (hl),l            	;u
l5f77h:
	ram:5f77 74             ld (hl),h            	;t
	ram:5f78 00             nop                  	;.
	ram:5f79 00             nop                  	;.
	ram:5f7a 5a             ld e,d               	;Z
	ram:5f7b 50             ld d,b               	;P
	ram:5f7c 72             ld (hl),d            	;r
l5f7dh:
	ram:5f7d 65             ld h,l               	;e
	ram:5f7e 76             halt                 	;v
	ram:5f7f 00             nop                  	;.
	ram:5f80 00             nop                  	;.
	ram:5f81 5a             ld e,d               	;Z
l5f82h:
	ram:5f82 52             ld d,d               	;R
	ram:5f83 63             ld h,e               	;c
	ram:5f84 6c             ld l,h               	;l
	ram:5f85 00             nop                  	;.
	ram:5f86 00             nop                  	;.
	ram:5f87 5a             ld e,d               	;Z
	ram:5f88 53             ld d,e               	;S
	ram:5f89 71             ld (hl),c            	;q
	ram:5f8a 72             ld (hl),d            	;r
	ram:5f8b 00             nop                  	;.
	ram:5f8c 00             nop                  	;.
	ram:5f8d 5a             ld e,d               	;Z
l5f8eh:
	ram:5f8e 53             ld d,e               	;S
	ram:5f8f 74             ld (hl),h            	;t
	ram:5f90 64             ld h,h               	;d
	ram:5f91 00             nop                  	;.
	ram:5f92 00             nop                  	;.
	ram:5f93 5a             ld e,d               	;Z
	ram:5f94 54             ld d,h               	;T
	ram:5f95 72             ld (hl),d            	;r
	ram:5f96 69             ld l,c               	;i
	ram:5f97 67             ld h,a               	;g
	ram:5f98 00             nop                  	;.
l5f99h:
	ram:5f99 80             add a,b              	;.
	ram:5f9a 21 00 80       ld hl,08000h         	;! . .
	ram:5f9d 14             inc d                	;.
	ram:5f9e 00             nop                  	;.
	ram:5f9f 80             add a,b              	;.
l5fa0h:
	ram:5fa0 15             dec d                	;.
	ram:5fa1 00             nop                  	;.
	ram:5fa2 80             add a,b              	;.
	ram:5fa3 25             dec h                	;%
	ram:5fa4 00             nop                  	;.
	ram:5fa5 80             add a,b              	;.
	ram:5fa6 11 00 80       ld de,08000h         	;. . .
	ram:5fa9 12             ld (de),a            	;.
l5faah:
	ram:5faa 00             nop                  	;.
	ram:5fab 80             add a,b              	;.
	ram:5fac 16 00          ld d,000h            	;. .
	ram:5fae 80             add a,b              	;.
	ram:5faf 5e             ld e,(hl)            	;^
	ram:5fb0 00             nop                  	;.
	ram:5fb1 80             add a,b              	;.
l5fb2h:
	ram:5fb2 cd 10 00       call 00010h          	;. . .
	ram:5fb5 00             nop                  	;.
	ram:5fb6 1a             ld a,(de)            	;.
	ram:5fb7 00             nop                  	;.
	ram:5fb8 10 65          djnz l601fh          	;. e
	ram:5fba 5e             ld e,(hl)            	;^
	ram:5fbb 00             nop                  	;.
	ram:5fbc 00             nop                  	;.
	ram:5fbd 1d             dec e                	;.
	ram:5fbe 5e             ld e,(hl)            	;^
	ram:5fbf 00             nop                  	;.
	ram:5fc0 00             nop                  	;.
	ram:5fc1 10 00          djnz l5fc3h          	;. .
l5fc3h:
	ram:5fc3 80             add a,b              	;.
	ram:5fc4 2a 00 80       ld hl,(08000h)       	;* . .
	ram:5fc7 2f             cpl                  	;/
	ram:5fc8 00             nop                  	;.
	ram:5fc9 80             add a,b              	;.
	ram:5fca 2b             dec hl               	;+
	ram:5fcb 00             nop                  	;.
	ram:5fcc 80             add a,b              	;.
l5fcdh:
	ram:5fcd 2d             dec l                	;-
	ram:5fce 00             nop                  	;.
	ram:5fcf 00             nop                  	;.
	ram:5fd0 3d             dec a                	;=
	ram:5fd1 00             nop                  	;.
	ram:5fd2 80             add a,b              	;.
	ram:5fd3 3d             dec a                	;=
	ram:5fd4 3d             dec a                	;=
	ram:5fd5 00             nop                  	;.
	ram:5fd6 80             add a,b              	;.
	ram:5fd7 18 00          jr l5fd9h            	;. .
l5fd9h:
	ram:5fd9 80             add a,b              	;.
	ram:5fda 3c             inc a                	;<
	ram:5fdb 00             nop                  	;.
	ram:5fdc 80             add a,b              	;.
	ram:5fdd 3e 00          ld a,000h            	;> .
	ram:5fdf 80             add a,b              	;.
	ram:5fe0 17             rla                  	;.
	ram:5fe1 00             nop                  	;.
	ram:5fe2 80             add a,b              	;.
	ram:5fe3 19             add hl,de            	;.
	ram:5fe4 00             nop                  	;.
	ram:5fe5 00             nop                  	;.
	ram:5fe6 7b             ld a,e               	;{
	ram:5fe7 00             nop                  	;.
	ram:5fe8 00             nop                  	;.
	ram:5fe9 5b             ld e,e               	;[
	ram:5fea 00             nop                  	;.
	ram:5feb 00             nop                  	;.
	ram:5fec 28 00          jr z,l5feeh          	;( .
l5feeh:
	ram:5fee 00             nop                  	;.
	ram:5fef 7d             ld a,l               	;}
	ram:5ff0 00             nop                  	;.
	ram:5ff1 00             nop                  	;.
	ram:5ff2 5d             ld e,l               	;]
	ram:5ff3 00             nop                  	;.
	ram:5ff4 00             nop                  	;.
	ram:5ff5 29             add hl,hl            	;)
	ram:5ff6 00             nop                  	;.
	ram:5ff7 00             nop                  	;.
	ram:5ff8 2c             inc l                	;,
	ram:5ff9 00             nop                  	;.
	ram:5ffa 00             nop                  	;.
	ram:5ffb 13             inc de               	;.
	ram:5ffc 00             nop                  	;.
	ram:5ffd 80             add a,b              	;.
	ram:5ffe 05             dec b                	;.
	ram:5fff 42             ld b,d               	;B
l6000h:
	ram:6000 69             ld l,c               	;i
	ram:6001 6e             ld l,(hl)            	;n
	ram:6002 00             nop                  	;.
	ram:6003 80             add a,b              	;.
	ram:6004 05             dec b                	;.
	ram:6005 43             ld b,e               	;C
	ram:6006 79             ld a,c               	;y
	ram:6007 6c             ld l,h               	;l
	ram:6008 00             nop                  	;.
	ram:6009 80             add a,b              	;.
	ram:600a 05             dec b                	;.
	ram:600b 44             ld b,h               	;D
	ram:600c 65             ld h,l               	;e
	ram:600d 63             ld h,e               	;c
	ram:600e 00             nop                  	;.
	ram:600f 80             add a,b              	;.
	ram:6010 05             dec b                	;.
	ram:6011 44             ld b,h               	;D
	ram:6012 4d             ld c,l               	;M
	ram:6013 53             ld d,e               	;S
	ram:6014 00             nop                  	;.
	ram:6015 80             add a,b              	;.
	ram:6016 05             dec b                	;.
	ram:6017 46             ld b,(hl)            	;F
	ram:6018 72             ld (hl),d            	;r
	ram:6019 61             ld h,c               	;a
	ram:601a 63             ld h,e               	;c
	ram:601b 00             nop                  	;.
	ram:601c 80             add a,b              	;.
	ram:601d 05             dec b                	;.
	ram:601e 48             ld c,b               	;H
l601fh:
	ram:601f 65             ld h,l               	;e
	ram:6020 78             ld a,b               	;x
	ram:6021 00             nop                  	;.
	ram:6022 80             add a,b              	;.
	ram:6023 05             dec b                	;.
	ram:6024 4f             ld c,a               	;O
l6025h:
	ram:6025 63             ld h,e               	;c
	ram:6026 74             ld (hl),h            	;t
	ram:6027 00             nop                  	;.
	ram:6028 80             add a,b              	;.
	ram:6029 05             dec b                	;.
	ram:602a 50             ld d,b               	;P
	ram:602b 6f             ld l,a               	;o
	ram:602c 6c             ld l,h               	;l
	ram:602d 00             nop                  	;.
l602eh:
	ram:602e 80             add a,b              	;.
	ram:602f 05             dec b                	;.
	ram:6030 52             ld d,d               	;R
	ram:6031 65             ld h,l               	;e
	ram:6032 63             ld h,e               	;c
	ram:6033 00             nop                  	;.
l6034h:
	ram:6034 80             add a,b              	;.
	ram:6035 05             dec b                	;.
	ram:6036 53             ld d,e               	;S
	ram:6037 70             ld (hl),b            	;p
	ram:6038 68             ld l,b               	;h
	ram:6039 00             nop                  	;.
	ram:603a 00             nop                  	;.
	ram:603b 27             daa                  	;'
	ram:603c 00             nop                  	;.
	ram:603d 00             nop                  	;.
	ram:603e 22 00 00       ld (00000h),hl       	;" . .
	ram:6041 3a 00 00       ld a,(00000h)        	;: . .
	ram:6044 c4 00 10       call nz,01000h       	;. . .
	ram:6047 51             ld d,c               	;Q
	ram:6048 00             nop                  	;.
	ram:6049 10 51          djnz l609ch          	;. Q
	ram:604b 27             daa                  	;'
	ram:604c 00             nop                  	;.
	ram:604d 10 51          djnz l60a0h          	;. Q
	ram:604f 49             ld c,c               	;I
	ram:6050 00             nop                  	;.
	ram:6051 10 72          djnz l60c5h          	;. r
	ram:6053 00             nop                  	;.
	ram:6054 10 74          djnz l60cah          	;. t
	ram:6056 00             nop                  	;.
	ram:6057 10 78          djnz l60d1h          	;. x
	ram:6059 74             ld (hl),h            	;t
	ram:605a 00             nop                  	;.
	ram:605b 10 79          djnz l60d6h          	;. y
	ram:605d 00             nop                  	;.
	ram:605e 10 79          djnz l60d9h          	;. y
	ram:6060 74             ld (hl),h            	;t
	ram:6061 00             nop                  	;.
	ram:6062 10 c1          djnz l6025h          	;. .
	ram:6064 00             nop                  	;.
l6065h:
	ram:6065 10 78          djnz l60dfh          	;. x
	ram:6067 4d             ld c,l               	;M
	ram:6068 69             ld l,c               	;i
	ram:6069 6e             ld l,(hl)            	;n
	ram:606a 00             nop                  	;.
l606bh:
	ram:606b 10 78          djnz l60e5h          	;. x
	ram:606d 4d             ld c,l               	;M
	ram:606e 61             ld h,c               	;a
	ram:606f 78             ld a,b               	;x
	ram:6070 00             nop                  	;.
	ram:6071 10 78          djnz l60ebh          	;. x
	ram:6073 53             ld d,e               	;S
	ram:6074 63             ld h,e               	;c
	ram:6075 6c             ld l,h               	;l
	ram:6076 00             nop                  	;.
	ram:6077 10 79          djnz l60f2h          	;. y
	ram:6079 4d             ld c,l               	;M
	ram:607a 69             ld l,c               	;i
	ram:607b 6e             ld l,(hl)            	;n
	ram:607c 00             nop                  	;.
	ram:607d 10 79          djnz l60f8h          	;. y
l607fh:
	ram:607f 4d             ld c,l               	;M
	ram:6080 61             ld h,c               	;a
	ram:6081 78             ld a,b               	;x
	ram:6082 00             nop                  	;.
	ram:6083 10 79          djnz 123             	;. y
	ram:6085 53             ld d,e               	;S
	ram:6086 63             ld h,e               	;c
	ram:6087 6c             ld l,h               	;l
	ram:6088 00             nop                  	;.
	ram:6089 10 74          djnz l60ffh          	;. t
	ram:608b 4d             ld c,l               	;M
	ram:608c 69             ld l,c               	;i
	ram:608d 6e             ld l,(hl)            	;n
	ram:608e 00             nop                  	;.
l608fh:
	ram:608f 10 74          djnz l6105h          	;. t
	ram:6091 4d             ld c,l               	;M
	ram:6092 61             ld h,c               	;a
	ram:6093 78             ld a,b               	;x
	ram:6094 00             nop                  	;.
	ram:6095 10 74          djnz 118             	;. t
l6097h:
	ram:6097 53             ld d,e               	;S
	ram:6098 74             ld (hl),h            	;t
	ram:6099 65             ld h,l               	;e
	ram:609a 70             ld (hl),b            	;p
	ram:609b 00             nop                  	;.
l609ch:
	djnz -61		;609c	10 c1		. .
l609eh:
	ram:609e 4d             ld c,l               	;M
	ram:609f 69             ld l,c               	;i
l60a0h:
	ram:60a0 6e             ld l,(hl)            	;n
	ram:60a1 00             nop                  	;.
l60a2h:
	ram:60a2 10 c1          djnz l6065h          	;. .
	ram:60a4 4d             ld c,l               	;M
	ram:60a5 61             ld h,c               	;a
	ram:60a6 78             ld a,b               	;x
l60a7h:
	ram:60a7 00             nop                  	;.
	ram:60a8 10 c1          djnz l606bh          	;. .
	ram:60aa 53             ld d,e               	;S
l60abh:
	ram:60ab 74             ld (hl),h            	;t
	ram:60ac 65             ld h,l               	;e
	ram:60ad 70             ld (hl),b            	;p
	ram:60ae 00             nop                  	;.
	ram:60af 10 74          djnz 118             	;. t
	ram:60b1 50             ld d,b               	;P
	ram:60b2 6c             ld l,h               	;l
	ram:60b3 6f             ld l,a               	;o
	ram:60b4 74             ld (hl),h            	;t
	ram:60b5 00             nop                  	;.
	ram:60b6 10 64          djnz l611ch          	;. d
	ram:60b8 69             ld l,c               	;i
	ram:60b9 66             ld h,(hl)            	;f
	ram:60ba 54             ld d,h               	;T
	ram:60bb 6f             ld l,a               	;o
	ram:60bc 6c             ld l,h               	;l
	ram:60bd 00             nop                  	;.
	ram:60be 10 bf          djnz l607fh          	;. .
	ram:60c0 00             nop                  	;.
	ram:60c1 10 74          djnz 118             	;. t
	ram:60c3 6f             ld l,a               	;o
	ram:60c4 6c             ld l,h               	;l
l60c5h:
	ram:60c5 00             nop                  	;.
	ram:60c6 10 c7          djnz l608fh          	;. .
	ram:60c8 78             ld a,b               	;x
	ram:60c9 00             nop                  	;.
l60cah:
	ram:60ca 10 53          djnz l611fh          	;. S
	ram:60cc 78             ld a,b               	;x
	ram:60cd 00             nop                  	;.
	ram:60ce 10 c7          djnz l6097h          	;. .
	ram:60d0 79             ld a,c               	;y
l60d1h:
	ram:60d1 00             nop                  	;.
	ram:60d2 10 53          djnz l6127h          	;. S
	ram:60d4 79             ld a,c               	;y
	ram:60d5 00             nop                  	;.
l60d6h:
	ram:60d6 10 c6          djnz l609eh          	;. .
	ram:60d8 78             ld a,b               	;x
l60d9h:
	ram:60d9 00             nop                  	;.
	ram:60da 10 c6          djnz l60a2h          	;. .
	ram:60dc 78             ld a,b               	;x
	ram:60dd 12             ld (de),a            	;.
	ram:60de 00             nop                  	;.
l60dfh:
	ram:60df 10 c6          djnz l60a7h          	;. .
	ram:60e1 79             ld a,c               	;y
	ram:60e2 00             nop                  	;.
	ram:60e3 10 c6          djnz l60abh          	;. .
l60e5h:
	ram:60e5 79             ld a,c               	;y
	ram:60e6 12             ld (de),a            	;.
	ram:60e7 00             nop                  	;.
	djnz -56		;60e8	10 c6		. .
	ram:60ea 78             ld a,b               	;x
l60ebh:
	ram:60eb 79             ld a,c               	;y
	ram:60ec 00             nop                  	;.
	ram:60ed 10 52          djnz l6141h          	;. R
	ram:60ef 65             ld h,l               	;e
	ram:60f0 67             ld h,a               	;g
	ram:60f1 45             ld b,l               	;E
l60f2h:
	ram:60f2 71             ld (hl),c            	;q
	ram:60f3 00             nop                  	;.
	ram:60f4 10 63          djnz l6159h          	;. c
l60f6h:
	ram:60f6 6f             ld l,a               	;o
	ram:60f7 72             ld (hl),d            	;r
l60f8h:
	ram:60f8 72             ld (hl),d            	;r
	ram:60f9 00             nop                  	;.
	ram:60fa 10 61          djnz l615dh          	;. a
	ram:60fc 00             nop                  	;.
	ram:60fd 10 62          djnz l6161h          	;. b
l60ffh:
	ram:60ff 00             nop                  	;.
	ram:6100 10 6e          djnz l6170h          	;. n
	ram:6102 00             nop                  	;.
	ram:6103 10 50          djnz l6155h          	;. P
l6105h:
	ram:6105 52             ld d,d               	;R
	ram:6106 65             ld h,l               	;e
	ram:6107 67             ld h,a               	;g
	ram:6108 43             ld b,e               	;C
	ram:6109 00             nop                  	;.
	ram:610a 10 4e          djnz l615ah          	;. N
	ram:610c 61             ld h,c               	;a
	ram:610d 00             nop                  	;.
	ram:610e 10 6b          djnz l617bh          	;. k
	ram:6110 00             nop                  	;.
	ram:6111 10 43          djnz l6156h          	;. C
	ram:6113 63             ld h,e               	;c
	ram:6114 00             nop                  	;.
	ram:6115 10 65          djnz l617ch          	;. e
	ram:6117 63             ld h,e               	;c
	ram:6118 00             nop                  	;.
	ram:6119 10 52          djnz l616dh          	;. R
	ram:611b 63             ld h,e               	;c
l611ch:
	ram:611c 00             nop                  	;.
	ram:611d 10 47          djnz l6166h          	;. G
l611fh:
	ram:611f 63             ld h,e               	;c
	ram:6120 00             nop                  	;.
	ram:6121 10 67          djnz l618ah          	;. g
	ram:6123 00             nop                  	;.
	ram:6124 10 4d          djnz l6173h          	;. M
	ram:6126 65             ld h,l               	;e
l6127h:
	ram:6127 00             nop                  	;.
	ram:6128 10 4d          djnz l6177h          	;. M
	ram:612a 70             ld (hl),b            	;p
	ram:612b 00             nop                  	;.
	ram:612c 10 4d          djnz l617bh          	;. M
	ram:612e 6e             ld l,(hl)            	;n
	ram:612f 00             nop                  	;.
	djnz -59		;6130	10 c3		. .
	ram:6132 30 00          jr nc,l6134h         	;0 .
l6134h:
	ram:6134 10 c0          djnz l60f6h          	;. .
	ram:6136 30 00          jr nc,l6138h         	;0 .
l6138h:
	ram:6138 10 68          djnz l61a2h          	;. h
	ram:613a 00             nop                  	;.
	ram:613b 10 63          djnz l61a0h          	;. c
	ram:613d 00             nop                  	;.
	ram:613e 10 75          djnz l61b5h          	;. u
	ram:6140 00             nop                  	;.
l6141h:
	ram:6141 98             sbc a,b              	;.
	ram:6142 61             ld h,c               	;a
	ram:6143 63             ld h,e               	;c
	ram:6144 72             ld (hl),d            	;r
	ram:6145 65             ld h,l               	;e
	ram:6146 00             nop                  	;.
	ram:6147 16 98          ld d,098h            	;. .
	ram:6149 61             ld h,c               	;a
	ram:614a 6d             ld l,l               	;m
	ram:614b 75             ld (hl),l            	;u
	ram:614c 00             nop                  	;.
	ram:614d 62             ld h,d               	;b
	ram:614e 98             sbc a,b              	;.
	ram:614f 41             ld b,c               	;A
	ram:6150 6e             ld l,(hl)            	;n
	ram:6151 67             ld h,a               	;g
	ram:6152 00             nop                  	;.
	ram:6153 0a             ld a,(bc)            	;.
	ram:6154 98             sbc a,b              	;.
l6155h:
	ram:6155 61             ld h,c               	;a
l6156h:
	ram:6156 74             ld (hl),h            	;t
	ram:6157 6d             ld l,l               	;m
	ram:6158 00             nop                  	;.
l6159h:
	ram:6159 87             add a,a              	;.
l615ah:
	ram:615a 98             sbc a,b              	;.
	ram:615b 62             ld h,d               	;b
	ram:615c 61             ld h,c               	;a
l615dh:
	ram:615d 72             ld (hl),d            	;r
	ram:615e 00             nop                  	;.
l615fh:
	ram:615f 80             add a,b              	;.
	ram:6160 98             sbc a,b              	;.
l6161h:
	ram:6161 42             ld b,d               	;B
	ram:6162 74             ld (hl),h            	;t
	ram:6163 75             ld (hl),l            	;u
	ram:6164 00             nop                  	;.
	ram:6165 91             sub c                	;.
l6166h:
	ram:6166 98             sbc a,b              	;.
	ram:6167 42             ld b,d               	;B
	ram:6168 74             ld (hl),h            	;t
	ram:6169 75             ld (hl),l            	;u
	ram:616a d1             pop de               	;.
	ram:616b 6d             ld l,l               	;m
	ram:616c 6e             ld l,(hl)            	;n
l616dh:
	ram:616d 00             nop                  	;.
	ram:616e a3             and e                	;.
	ram:616f 98             sbc a,b              	;.
l6170h:
	ram:6170 63             ld h,e               	;c
	ram:6171 61             ld h,c               	;a
	ram:6172 6c             ld l,h               	;l
l6173h:
	ram:6173 00             nop                  	;.
	ram:6174 90             sub b                	;.
	ram:6175 98             sbc a,b              	;.
	ram:6176 63             ld h,e               	;c
l6177h:
	ram:6177 61             ld h,c               	;a
	ram:6178 6c             ld l,h               	;l
	ram:6179 d1             pop de               	;.
	ram:617a 73             ld (hl),e            	;s
l617bh:
	ram:617b 00             nop                  	;.
l617ch:
	ram:617c a2             and d                	;.
	ram:617d 98             sbc a,b              	;.
	ram:617e 63             ld h,e               	;c
	ram:617f 6d             ld l,l               	;m
	ram:6180 00             nop                  	;.
	ram:6181 01 98 63       ld bc,l6398h         	;. . c
	ram:6184 6d             ld l,l               	;m
	ram:6185 d3 00          out (000h),a         	;. .
	ram:6187 14             inc d                	;.
	ram:6188 98             sbc a,b              	;.
	ram:6189 63             ld h,e               	;c
l618ah:
	ram:618a 6d             ld l,l               	;m
	ram:618b d5             push de              	;.
	ram:618c 00             nop                  	;.
	ram:618d 24             inc h                	;$
	ram:618e 98             sbc a,b              	;.
	ram:618f 63             ld h,e               	;c
	ram:6190 75             ld (hl),l            	;u
	ram:6191 70             ld (hl),b            	;p
	ram:6192 00             nop                  	;.
	jr z,-102		;6193	28 98		( .
	ram:6195 64             ld h,h               	;d
	ram:6196 61             ld h,c               	;a
	ram:6197 79             ld a,c               	;y
	ram:6198 00             nop                  	;.
	ram:6199 32 98 64       ld (l6498h),a        	;2 . d
	ram:619c 79             ld a,c               	;y
	ram:619d 6e             ld l,(hl)            	;n
	ram:619e 65             ld h,l               	;e
	ram:619f 00             nop                  	;.
l61a0h:
	ram:61a0 70             ld (hl),b            	;p
	ram:61a1 98             sbc a,b              	;.
l61a2h:
	ram:61a2 65             ld h,l               	;e
	ram:61a3 72             ld (hl),d            	;r
	ram:61a4 67             ld h,a               	;g
	ram:61a5 00             nop                  	;.
	ram:61a6 95             sub l                	;.
	ram:61a7 98             sbc a,b              	;.
	ram:61a8 65             ld h,l               	;e
	ram:61a9 56             ld d,(hl)            	;V
	ram:61aa 00             nop                  	;.
	ram:61ab 94             sub h                	;.
	ram:61ac 98             sbc a,b              	;.
	ram:61ad 66             ld h,(hl)            	;f
	ram:61ae 61             ld h,c               	;a
	ram:61af 74             ld (hl),h            	;t
	ram:61b0 68             ld l,b               	;h
	ram:61b1 00             nop                  	;.
	ram:61b2 0d             dec c                	;.
	ram:61b3 98             sbc a,b              	;.
	ram:61b4 66             ld h,(hl)            	;f
l61b5h:
	ram:61b5 65             ld h,l               	;e
	ram:61b6 72             ld (hl),d            	;r
	ram:61b7 6d             ld l,l               	;m
	ram:61b8 69             ld l,c               	;i
	ram:61b9 00             nop                  	;.
	ram:61ba 0b             dec bc               	;.
	ram:61bb 98             sbc a,b              	;.
	ram:61bc 66             ld h,(hl)            	;f
	ram:61bd 74             ld (hl),h            	;t
	ram:61be 00             nop                  	;.
	ram:61bf 03             inc bc               	;.
	ram:61c0 98             sbc a,b              	;.
	ram:61c1 66             ld h,(hl)            	;f
	ram:61c2 74             ld (hl),h            	;t
	ram:61c3 d3 00          out (000h),a         	;. .
	ram:61c5 10 98          djnz l615fh          	;. .
	ram:61c7 66             ld h,(hl)            	;f
	ram:61c8 74             ld (hl),h            	;t
	ram:61c9 d5             push de              	;.
	ram:61ca 00             nop                  	;.
	ram:61cb 26 98          ld h,098h            	;& .
	ram:61cd 66             ld h,(hl)            	;f
	ram:61ce 74             ld (hl),h            	;t
	ram:61cf d2 6c 62       jp nc,l626ch         	;. l b
	ram:61d2 00             nop                  	;.
	ram:61d3 92             sub d                	;.
	ram:61d4 98             sbc a,b              	;.
	ram:61d5 66             ld h,(hl)            	;f
	ram:61d6 74             ld (hl),h            	;t
	ram:61d7 d1             pop de               	;.
	ram:61d8 73             ld (hl),e            	;s
	ram:61d9 00             nop                  	;.
	ram:61da 50             ld d,b               	;P
	ram:61db 98             sbc a,b              	;.
	ram:61dc 66             ld h,(hl)            	;f
	ram:61dd 74             ld (hl),h            	;t
	ram:61de 6c             ld l,h               	;l
	ram:61df 62             ld h,d               	;b
	ram:61e0 d1             pop de               	;.
	ram:61e1 73             ld (hl),e            	;s
	ram:61e2 00             nop                  	;.
	ram:61e3 a1             and c                	;.
	ram:61e4 98             sbc a,b              	;.
	ram:61e5 67             ld h,a               	;g
	ram:61e6 61             ld h,c               	;a
	ram:61e7 6c             ld l,h               	;l
	ram:61e8 00             nop                  	;.
	jr nz,-102		;61e9	20 98		  .
	ram:61eb 67             ld h,a               	;g
	ram:61ec 61             ld h,c               	;a
	ram:61ed 6c             ld l,h               	;l
	ram:61ee 55             ld d,l               	;U
	ram:61ef 4b             ld c,e               	;K
	ram:61f0 00             nop                  	;.
	ram:61f1 2c             inc l                	;,
	ram:61f2 98             sbc a,b              	;.
	ram:61f3 67             ld h,a               	;g
	ram:61f4 6d             ld l,l               	;m
	ram:61f5 00             nop                  	;.
	ram:61f6 60             ld h,b               	;`
	ram:61f7 98             sbc a,b              	;.
	ram:61f8 68             ld l,b               	;h
	ram:61f9 61             ld h,c               	;a
	ram:61fa 00             nop                  	;.
	ram:61fb 17             rla                  	;.
	ram:61fc 98             sbc a,b              	;.
	ram:61fd 68             ld l,b               	;h
	ram:61fe 70             ld (hl),b            	;p
	ram:61ff 00             nop                  	;.
	ram:6200 a4             and h                	;.
	ram:6201 98             sbc a,b              	;.
	ram:6202 68             ld l,b               	;h
	ram:6203 72             ld (hl),d            	;r
	ram:6204 00             nop                  	;.
	ram:6205 31 98 69       ld sp,l6998h         	;1 . i
	ram:6208 6e             ld l,(hl)            	;n
	ram:6209 00             nop                  	;.
	ram:620a 02             ld (bc),a            	;.
	ram:620b 98             sbc a,b              	;.
	ram:620c 69             ld l,c               	;i
	ram:620d 6e             ld l,(hl)            	;n
	ram:620e 48             ld c,b               	;H
	ram:620f 67             ld h,a               	;g
	ram:6210 00             nop                  	;.
	ram:6211 85             add a,l              	;.
	ram:6212 98             sbc a,b              	;.
	ram:6213 69             ld l,c               	;i
	ram:6214 6e             ld l,(hl)            	;n
	ram:6215 48             ld c,b               	;H
	ram:6216 82             add a,d              	;.
	ram:6217 4f             ld c,a               	;O
	ram:6218 00             nop                  	;.
	ram:6219 86             add a,(hl)           	;.
	ram:621a 98             sbc a,b              	;.
	ram:621b 69             ld l,c               	;i
	ram:621c 6e             ld l,(hl)            	;n
	ram:621d d3 00          out (000h),a         	;. .
	ram:621f 13             inc de               	;.
	ram:6220 98             sbc a,b              	;.
	ram:6221 69             ld l,c               	;i
	ram:6222 6e             ld l,(hl)            	;n
	ram:6223 d5             push de              	;.
	ram:6224 00             nop                  	;.
	ram:6225 25             dec h                	;%
	ram:6226 98             sbc a,b              	;.
	ram:6227 4a             ld c,d               	;J
	ram:6228 00             nop                  	;.
	ram:6229 97             sub a                	;.
	ram:622a 98             sbc a,b              	;.
	ram:622b 6b             ld l,e               	;k
	ram:622c 67             ld h,a               	;g
	ram:622d 00             nop                  	;.
	ram:622e 66             ld h,(hl)            	;f
	ram:622f 98             sbc a,b              	;.
	ram:6230 6b             ld l,e               	;k
	ram:6231 67             ld h,a               	;g
	ram:6232 66             ld h,(hl)            	;f
	ram:6233 00             nop                  	;.
	ram:6234 72             ld (hl),d            	;r
	ram:6235 98             sbc a,b              	;.
	ram:6236 6b             ld l,e               	;k
	ram:6237 6d             ld l,l               	;m
	ram:6238 00             nop                  	;.
	ram:6239 05             dec b                	;.
	ram:623a 98             sbc a,b              	;.
	ram:623b 6b             ld l,e               	;k
	ram:623c 6d             ld l,l               	;m
	ram:623d d3 00          out (000h),a         	;. .
	ram:623f 12             ld (de),a            	;.
	ram:6240 98             sbc a,b              	;.
	ram:6241 6b             ld l,e               	;k
	ram:6242 6d             ld l,l               	;m
	ram:6243 d1             pop de               	;.
	ram:6244 68             ld l,b               	;h
	ram:6245 72             ld (hl),d            	;r
	ram:6246 00             nop                  	;.
	ram:6247 52             ld d,d               	;R
	ram:6248 98             sbc a,b              	;.
	ram:6249 6b             ld l,e               	;k
	ram:624a 6e             ld l,(hl)            	;n
	ram:624b 6f             ld l,a               	;o
	ram:624c 74             ld (hl),h            	;t
	ram:624d 00             nop                  	;.
	ram:624e 53             ld d,e               	;S
	ram:624f 98             sbc a,b              	;.
	ram:6250 6b             ld l,e               	;k
	ram:6251 77             ld (hl),a            	;w
	ram:6252 d2 68 72       jp nc,07268h         	;. h r
	ram:6255 00             nop                  	;.
	ram:6256 93             sub e                	;.
	ram:6257 98             sbc a,b              	;.
	ram:6258 6c             ld l,h               	;l
	ram:6259 62             ld h,d               	;b
	ram:625a 00             nop                  	;.
	ram:625b 61             ld h,c               	;a
	ram:625c 98             sbc a,b              	;.
	ram:625d 6c             ld l,h               	;l
l625eh:
	ram:625e 62             ld h,d               	;b
	ram:625f 66             ld h,(hl)            	;f
	ram:6260 00             nop                  	;.
	ram:6261 73             ld (hl),e            	;s
l6262h:
	ram:6262 98             sbc a,b              	;.
	ram:6263 6c             ld l,h               	;l
	ram:6264 62             ld h,d               	;b
	ram:6265 d1             pop de               	;.
	ram:6266 69             ld l,c               	;i
	ram:6267 6e             ld l,(hl)            	;n
	ram:6268 d3 00          out (000h),a         	;. .
	ram:626a 82             add a,d              	;.
	ram:626b 98             sbc a,b              	;.
l626ch:
	ram:626c 6c             ld l,h               	;l
	ram:626d 69             ld l,c               	;i
	ram:626e 74             ld (hl),h            	;t
l626fh:
	ram:626f 65             ld h,l               	;e
	ram:6270 72             ld (hl),d            	;r
	ram:6271 00             nop                  	;.
	ram:6272 2e 98          ld l,098h            	;. .
	ram:6274 6c             ld l,h               	;l
	ram:6275 74             ld (hl),h            	;t
	ram:6276 d2 79 72       jp nc,07279h         	;. y r
	ram:6279 00             nop                  	;.
	ram:627a 08             ex af,af'            	;.
	ram:627b 98             sbc a,b              	;.
	ram:627c 6c             ld l,h               	;l
	ram:627d d2 61 74       jp nc,l7461h         	;. a t
	ram:6280 6d             ld l,l               	;m
	ram:6281 00             nop                  	;.
	ram:6282 96             sub (hl)             	;.
	ram:6283 98             sbc a,b              	;.
	ram:6284 6d             ld l,l               	;m
	ram:6285 00             nop                  	;.
	ram:6286 0e 98          ld c,098h            	;. .
	ram:6288 6d             ld l,l               	;m
	ram:6289 d5             push de              	;.
	ram:628a 00             nop                  	;.
	ram:628b 27             daa                  	;'
	ram:628c 98             sbc a,b              	;.
	ram:628d 6d             ld l,l               	;m
	ram:628e 69             ld l,c               	;i
	ram:628f 6c             ld l,h               	;l
	ram:6290 00             nop                  	;.
	ram:6291 09             add hl,bc            	;.
	ram:6292 98             sbc a,b              	;.
	ram:6293 6d             ld l,l               	;m
	ram:6294 69             ld l,c               	;i
	ram:6295 6c             ld l,h               	;l
	ram:6296 65             ld h,l               	;e
	ram:6297 00             nop                  	;.
	ram:6298 06 98          ld b,098h            	;. .
	ram:629a 6d             ld l,l               	;m
	ram:629b 69             ld l,c               	;i
	ram:629c d3 00          out (000h),a         	;. .
	ram:629e 11 98 6d       ld de,l6d98h         	;. . m
	ram:62a1 69             ld l,c               	;i
	ram:62a2 d1             pop de               	;.
	ram:62a3 68             ld l,b               	;h
	ram:62a4 72             ld (hl),d            	;r
	ram:62a5 00             nop                  	;.
	ram:62a6 51             ld d,c               	;Q
	ram:62a7 98             sbc a,b              	;.
	ram:62a8 6d             ld l,l               	;m
	ram:62a9 6c             ld l,h               	;l
	ram:62aa 00             nop                  	;.
	ram:62ab 2b             dec hl               	;+
	ram:62ac 98             sbc a,b              	;.
	ram:62ad 6d             ld l,l               	;m
	ram:62ae 6d             ld l,l               	;m
	ram:62af 00             nop                  	;.
	ram:62b0 00             nop                  	;.
	ram:62b1 98             sbc a,b              	;.
	ram:62b2 6d             ld l,l               	;m
	ram:62b3 6d             ld l,l               	;m
l62b4h:
	ram:62b4 48             ld c,b               	;H
	ram:62b5 67             ld h,a               	;g
	ram:62b6 00             nop                  	;.
	ram:62b7 83             add a,e              	;.
	ram:62b8 98             sbc a,b              	;.
	ram:62b9 6d             ld l,l               	;m
	ram:62ba 6d             ld l,l               	;m
	ram:62bb 48             ld c,b               	;H
	ram:62bc 82             add a,d              	;.
	ram:62bd 4f             ld c,a               	;O
	ram:62be 00             nop                  	;.
	ram:62bf 84             add a,h              	;.
	ram:62c0 98             sbc a,b              	;.
	ram:62c1 6d             ld l,l               	;m
	ram:62c2 6e             ld l,(hl)            	;n
	ram:62c3 00             nop                  	;.
	ram:62c4 30 98          jr nc,l625eh         	;0 .
	ram:62c6 6d             ld l,l               	;m
	ram:62c7 73             ld (hl),e            	;s
	ram:62c8 00             nop                  	;.
	ram:62c9 35             dec (hl)             	;5
	ram:62ca 98             sbc a,b              	;.
	ram:62cb 6d             ld l,l               	;m
	ram:62cc 74             ld (hl),h            	;t
	ram:62cd 6f             ld l,a               	;o
	ram:62ce 6e             ld l,(hl)            	;n
	ram:62cf 00             nop                  	;.
	ram:62d0 65             ld h,l               	;e
	ram:62d1 98             sbc a,b              	;.
	ram:62d2 6d             ld l,l               	;m
	ram:62d3 d3 00          out (000h),a         	;. .
	ram:62d5 18 98          jr l626fh            	;. .
	ram:62d7 6d             ld l,l               	;m
	ram:62d8 d1             pop de               	;.
	ram:62d9 73             ld (hl),e            	;s
	ram:62da 00             nop                  	;.
	ram:62db 54             ld d,h               	;T
	ram:62dc 98             sbc a,b              	;.
	ram:62dd c3 73 00       jp 00073h            	;. s .
	ram:62e0 36 98          ld (hl),098h         	;6 .
	ram:62e2 4e             ld c,(hl)            	;N
	ram:62e3 00             nop                  	;.
	ram:62e4 74             ld (hl),h            	;t
	ram:62e5 98             sbc a,b              	;.
	ram:62e6 6e             ld l,(hl)            	;n
	ram:62e7 6d             ld l,l               	;m
	ram:62e8 69             ld l,c               	;i
	ram:62e9 6c             ld l,h               	;l
	ram:62ea 65             ld h,l               	;e
	ram:62eb 00             nop                  	;.
	ram:62ec 07             rlca                 	;.
	ram:62ed 98             sbc a,b              	;.
	ram:62ee 6e             ld l,(hl)            	;n
	ram:62ef 73             ld (hl),e            	;s
	ram:62f0 00             nop                  	;.
	ram:62f1 37             scf                  	;7
	ram:62f2 98             sbc a,b              	;.
	ram:62f3 4e             ld c,(hl)            	;N
	ram:62f4 d1             pop de               	;.
	ram:62f5 6d             ld l,l               	;m
	ram:62f6 d3 00          out (000h),a         	;. .
	ram:62f8 81             add a,c              	;.
	ram:62f9 98             sbc a,b              	;.
	ram:62fa 6f             ld l,a               	;o
	ram:62fb 7a             ld a,d               	;z
	ram:62fc 00             nop                  	;.
	ram:62fd 23             inc hl               	;#
	ram:62fe 98             sbc a,b              	;.
	ram:62ff 6f             ld l,a               	;o
	ram:6300 7a             ld a,d               	;z
	ram:6301 55             ld d,l               	;U
	ram:6302 4b             ld c,e               	;K
	ram:6303 00             nop                  	;.
	ram:6304 2d             dec l                	;-
	ram:6305 98             sbc a,b              	;.
	ram:6306 70             ld (hl),b            	;p
	ram:6307 74             ld (hl),h            	;t
	ram:6308 00             nop                  	;.
	ram:6309 22 98 71       ld (07198h),hl       	;" . q
	ram:630c 74             ld (hl),h            	;t
	ram:630d 00             nop                  	;.
	ram:630e 21 98 72       ld hl,07298h         	;! . r
	ram:6311 6f             ld l,a               	;o
	ram:6312 64             ld h,h               	;d
	ram:6313 00             nop                  	;.
	ram:6314 0c             inc c                	;.
	ram:6315 98             sbc a,b              	;.
	ram:6316 73             ld (hl),e            	;s
	ram:6317 65             ld h,l               	;e
	ram:6318 63             ld h,e               	;c
	ram:6319 00             nop                  	;.
	ram:631a 38 98          jr c,l62b4h          	;8 .
	ram:631c 73             ld (hl),e            	;s
	ram:631d 6c             ld l,h               	;l
	ram:631e 75             ld (hl),l            	;u
	ram:631f 67             ld h,a               	;g
	ram:6320 00             nop                  	;.
	ram:6321 63             ld h,e               	;c
	ram:6322 98             sbc a,b              	;.
	ram:6323 74             ld (hl),h            	;t
	ram:6324 62             ld h,d               	;b
	ram:6325 73             ld (hl),e            	;s
	ram:6326 70             ld (hl),b            	;p
	ram:6327 00             nop                  	;.
	ram:6328 2a 98 74       ld hl,(l7498h)       	;* . t
	ram:632b 73             ld (hl),e            	;s
	ram:632c 70             ld (hl),b            	;p
	ram:632d 00             nop                  	;.
	ram:632e 29             add hl,hl            	;)
	ram:632f 98             sbc a,b              	;.
	ram:6330 74             ld (hl),h            	;t
	ram:6331 6f             ld l,a               	;o
	ram:6332 6e             ld l,(hl)            	;n
	ram:6333 00             nop                  	;.
	ram:6334 64             ld h,h               	;d
	ram:6335 98             sbc a,b              	;.
	ram:6336 74             ld (hl),h            	;t
	ram:6337 6f             ld l,a               	;o
	ram:6338 6e             ld l,(hl)            	;n
	ram:6339 66             ld h,(hl)            	;f
	ram:633a 00             nop                  	;.
	ram:633b 71             ld (hl),c            	;q
	ram:633c 98             sbc a,b              	;.
	ram:633d 57             ld d,a               	;W
	ram:633e 00             nop                  	;.
	ram:633f a0             and b                	;.
	ram:6340 98             sbc a,b              	;.
	ram:6341 77             ld (hl),a            	;w
	ram:6342 65             ld h,l               	;e
	ram:6343 65             ld h,l               	;e
	ram:6344 6b             ld l,e               	;k
	ram:6345 00             nop                  	;.
	ram:6346 34             inc (hl)             	;4
	ram:6347 98             sbc a,b              	;.
	ram:6348 79             ld a,c               	;y
	ram:6349 64             ld h,h               	;d
	ram:634a 00             nop                  	;.
	ram:634b 04             inc b                	;.
	ram:634c 98             sbc a,b              	;.
	ram:634d 79             ld a,c               	;y
	ram:634e 64             ld h,h               	;d
	ram:634f d3 00          out (000h),a         	;. .
	ram:6351 15             dec d                	;.
	ram:6352 98             sbc a,b              	;.
	ram:6353 79             ld a,c               	;y
	ram:6354 72             ld (hl),d            	;r
	ram:6355 00             nop                  	;.
	ram:6356 33             inc sp               	;3
	ram:6357 98             sbc a,b              	;.
	ram:6358 d4 43 00       call nc,00043h       	;. C .
	ram:635b 43             ld b,e               	;C
	ram:635c 98             sbc a,b              	;.
	ram:635d d4 46 00       call nc,00046h       	;. F .
	ram:6360 40             ld b,b               	;@
	ram:6361 98             sbc a,b              	;.
	ram:6362 d4 4b 00       call nc,0004bh       	;. K .
	ram:6365 41             ld b,c               	;A
	ram:6366 98             sbc a,b              	;.
	ram:6367 d4 52 00       call nc,00052h       	;. R .
l636ah:
	ram:636a 42             ld b,d               	;B
	ram:636b 42             ld b,d               	;B
	ram:636c 01 4d 49       ld bc,0494dh         	;. M I
	ram:636f 53             ld d,e               	;S
	ram:6370 43             ld b,e               	;C
	ram:6371 00             nop                  	;.
	ram:6372 42             ld b,d               	;B
	ram:6373 02             ld (bc),a            	;.
	ram:6374 47             ld b,a               	;G
	ram:6375 52             ld d,d               	;R
	ram:6376 45             ld b,l               	;E
	ram:6377 45             ld b,l               	;E
	ram:6378 4b             ld c,e               	;K
	ram:6379 00             nop                  	;.
	ram:637a 42             ld b,d               	;B
	ram:637b 03             inc bc               	;.
	ram:637c 49             ld c,c               	;I
	ram:637d 4e             ld c,(hl)            	;N
	ram:637e 54             ld d,h               	;T
	ram:637f 4c             ld c,h               	;L
	ram:6380 00             nop                  	;.
	ram:6381 02             ld (bc),a            	;.
	ram:6382 05             dec b                	;.
	ram:6383 4e             ld c,(hl)            	;N
	ram:6384 55             ld d,l               	;U
	ram:6385 4d             ld c,l               	;M
	ram:6386 00             nop                  	;.
	ram:6387 02             ld (bc),a            	;.
	ram:6388 06 50          ld b,050h            	;. P
	ram:638a 52             ld d,d               	;R
	ram:638b 4f             ld c,a               	;O
	ram:638c 42             ld b,d               	;B
	ram:638d 00             nop                  	;.
	ram:638e 02             ld (bc),a            	;.
	ram:638f 07             rlca                 	;.
	ram:6390 41             ld b,c               	;A
	ram:6391 4e             ld c,(hl)            	;N
	ram:6392 47             ld b,a               	;G
	ram:6393 4c             ld c,h               	;L
	ram:6394 45             ld b,l               	;E
	ram:6395 00             nop                  	;.
	ram:6396 02             ld (bc),a            	;.
	ram:6397 08             ex af,af'            	;.
l6398h:
	ram:6398 48             ld c,b               	;H
	ram:6399 59             ld e,c               	;Y
	ram:639a 50             ld d,b               	;P
	ram:639b 00             nop                  	;.
	ram:639c 02             ld (bc),a            	;.
	ram:639d 09             add hl,bc            	;.
	ram:639e 4d             ld c,l               	;M
	ram:639f 49             ld c,c               	;I
	ram:63a0 53             ld d,e               	;S
	ram:63a1 43             ld b,e               	;C
	ram:63a2 00             nop                  	;.
l63a3h:
	ram:63a3 42             ld b,d               	;B
	ram:63a4 0d             dec c                	;.
	ram:63a5 0a             ld a,(bc)            	;.
	ram:63a6 2d             dec l                	;-
	ram:63a7 0f             rrca                 	;.
	ram:63a8 00             nop                  	;.
	ram:63a9 02             ld (bc),a            	;.
	ram:63aa 0e 54          ld c,054h            	;. T
	ram:63ac 59             ld e,c               	;Y
	ram:63ad 50             ld d,b               	;P
	ram:63ae 45             ld b,l               	;E
	ram:63af 00             nop                  	;.
	ram:63b0 02             ld (bc),a            	;.
	ram:63b1 0f             rrca                 	;.
	ram:63b2 43             ld b,e               	;C
	ram:63b3 4f             ld c,a               	;O
	ram:63b4 4e             ld c,(hl)            	;N
	ram:63b5 56             ld d,(hl)            	;V
	ram:63b6 00             nop                  	;.
	ram:63b7 02             ld (bc),a            	;.
	ram:63b8 10 42          djnz l63fch          	;. B
	ram:63ba 4f             ld c,a               	;O
	ram:63bb 4f             ld c,a               	;O
	ram:63bc 4c             ld c,h               	;L
	ram:63bd 00             nop                  	;.
	ram:63be 02             ld (bc),a            	;.
	ram:63bf 11 42 49       ld de,l4942h         	;. B I
	ram:63c2 54             ld d,h               	;T
	ram:63c3 00             nop                  	;.
	ram:63c4 02             ld (bc),a            	;.
	ram:63c5 13             inc de               	;.
	ram:63c6 4f             ld c,a               	;O
	ram:63c7 50             ld d,b               	;P
	ram:63c8 53             ld d,e               	;S
	ram:63c9 00             nop                  	;.
	ram:63ca 02             ld (bc),a            	;.
	ram:63cb 19             add hl,de            	;.
	ram:63cc 42             ld b,d               	;B
	ram:63cd 4c             ld c,h               	;L
	ram:63ce 54             ld d,h               	;T
	ram:63cf 49             ld c,c               	;I
	ram:63d0 4e             ld c,(hl)            	;N
	ram:63d1 00             nop                  	;.
	ram:63d2 02             ld (bc),a            	;.
	ram:63d3 1a             ld a,(de)            	;.
	ram:63d4 55             ld d,l               	;U
	ram:63d5 53             ld d,e               	;S
	ram:63d6 45             ld b,l               	;E
	ram:63d7 52             ld d,d               	;R
	ram:63d8 00             nop                  	;.
	ram:63d9 02             ld (bc),a            	;.
	ram:63da 1d             dec e                	;.
	ram:63db 4e             ld c,(hl)            	;N
	ram:63dc 41             ld b,c               	;A
	ram:63dd 4d             ld c,l               	;M
	ram:63de d7             rst 10h              	;.
	ram:63df 53             ld d,e               	;S
	ram:63e0 00             nop                  	;.
	ram:63e1 02             ld (bc),a            	;.
	ram:63e2 1e 4d          ld e,04dh            	;. M
	ram:63e4 41             ld b,c               	;A
	ram:63e5 54             ld d,h               	;T
	ram:63e6 48             ld c,b               	;H
	ram:63e7 00             nop                  	;.
	ram:63e8 02             ld (bc),a            	;.
	ram:63e9 1f             rra                  	;.
	ram:63ea 4f             ld c,a               	;O
	ram:63eb 50             ld d,b               	;P
	ram:63ec 53             ld d,e               	;S
	ram:63ed 00             nop                  	;.
	ram:63ee 02             ld (bc),a            	;.
	ram:63ef 23             inc hl               	;#
	ram:63f0 4e             ld c,(hl)            	;N
	ram:63f1 41             ld b,c               	;A
	ram:63f2 4d             ld c,l               	;M
	ram:63f3 d7             rst 10h              	;.
	ram:63f4 53             ld d,e               	;S
	ram:63f5 00             nop                  	;.
	ram:63f6 02             ld (bc),a            	;.
	ram:63f7 24             inc h                	;$
	ram:63f8 4d             ld c,l               	;M
	ram:63f9 41             ld b,c               	;A
	ram:63fa 54             ld d,h               	;T
	ram:63fb 48             ld c,b               	;H
l63fch:
	ram:63fc 00             nop                  	;.
	ram:63fd 02             ld (bc),a            	;.
	ram:63fe 25             dec h                	;%
	ram:63ff 4f             ld c,a               	;O
l6400h:
	ram:6400 50             ld d,b               	;P
	ram:6401 53             ld d,e               	;S
	ram:6402 00             nop                  	;.
	ram:6403 02             ld (bc),a            	;.
	ram:6404 26 43          ld h,043h            	;& C
	ram:6406 50             ld d,b               	;P
	ram:6407 4c             ld c,h               	;L
	ram:6408 58             ld e,b               	;X
	ram:6409 00             nop                  	;.
	ram:640a 02             ld (bc),a            	;.
	ram:640b 29             add hl,hl            	;)
	ram:640c 4e             ld c,(hl)            	;N
	ram:640d 41             ld b,c               	;A
	ram:640e 4d             ld c,l               	;M
	ram:640f d7             rst 10h              	;.
	ram:6410 53             ld d,e               	;S
	ram:6411 00             nop                  	;.
	ram:6412 02             ld (bc),a            	;.
	ram:6413 2c             inc l                	;,
	ram:6414 49             ld c,c               	;I
	ram:6415 2f             cpl                  	;/
	ram:6416 4f             ld c,a               	;O
	ram:6417 00             nop                  	;.
	ram:6418 02             ld (bc),a            	;.
	ram:6419 2d             dec l                	;-
	ram:641a 43             ld b,e               	;C
	ram:641b 54             ld d,h               	;T
	ram:641c 4c             ld c,h               	;L
	ram:641d 00             nop                  	;.
	ram:641e 02             ld (bc),a            	;.
	ram:641f 2f             cpl                  	;/
	ram:6420 56             ld d,(hl)            	;V
	ram:6421 41             ld b,c               	;A
	ram:6422 52             ld d,d               	;R
	ram:6423 53             ld d,e               	;S
	ram:6424 00             nop                  	;.
	ram:6425 02             ld (bc),a            	;.
	ram:6426 30 52          jr nc,l647ah         	;0 R
	ram:6428 41             ld b,c               	;A
	ram:6429 4e             ld c,(hl)            	;N
	ram:642a 47             ld b,a               	;G
	ram:642b 45             ld b,l               	;E
	ram:642c 00             nop                  	;.
	ram:642d 02             ld (bc),a            	;.
	ram:642e 31 5a 4f       ld sp,l4f5ah         	;1 Z O
	ram:6431 4f             ld c,a               	;O
	ram:6432 4d             ld c,l               	;M
	ram:6433 00             nop                  	;.
	ram:6434 02             ld (bc),a            	;.
	ram:6435 32 4d 41       ld (0414dh),a        	;2 M A
	ram:6438 54             ld d,h               	;T
	ram:6439 48             ld c,b               	;H
	ram:643a 00             nop                  	;.
	ram:643b 02             ld (bc),a            	;.
	ram:643c 33             inc sp               	;3
	ram:643d 44             ld b,h               	;D
	ram:643e 52             ld d,d               	;R
	ram:643f 41             ld b,c               	;A
	ram:6440 57             ld d,a               	;W
	ram:6441 00             nop                  	;.
	ram:6442 02             ld (bc),a            	;.
	ram:6443 42             ld b,d               	;B
	ram:6444 5a             ld e,d               	;Z
	ram:6445 4f             ld c,a               	;O
	ram:6446 4f             ld c,a               	;O
	ram:6447 4d             ld c,l               	;M
	ram:6448 00             nop                  	;.
	ram:6449 02             ld (bc),a            	;.
	ram:644a 43             ld b,e               	;C
	ram:644b 4d             ld c,l               	;M
	ram:644c 41             ld b,c               	;A
	ram:644d 54             ld d,h               	;T
	ram:644e 48             ld c,b               	;H
	ram:644f 00             nop                  	;.
	ram:6450 02             ld (bc),a            	;.
	ram:6451 44             ld b,h               	;D
	ram:6452 44             ld b,h               	;D
	ram:6453 52             ld d,d               	;R
	ram:6454 41             ld b,c               	;A
	ram:6455 57             ld d,a               	;W
	ram:6456 00             nop                  	;.
	ram:6457 02             ld (bc),a            	;.
	ram:6458 46             ld b,(hl)            	;F
	ram:6459 4d             ld c,l               	;M
	ram:645a 41             ld b,c               	;A
	ram:645b 54             ld d,h               	;T
	ram:645c 48             ld c,b               	;H
	ram:645d 00             nop                  	;.
	ram:645e 02             ld (bc),a            	;.
	ram:645f 47             ld b,a               	;G
	ram:6460 44             ld b,h               	;D
	ram:6461 52             ld d,d               	;R
	ram:6462 41             ld b,c               	;A
	ram:6463 57             ld d,a               	;W
	ram:6464 00             nop                  	;.
	ram:6465 02             ld (bc),a            	;.
	ram:6466 49             ld c,c               	;I
	ram:6467 4d             ld c,l               	;M
	ram:6468 41             ld b,c               	;A
	ram:6469 54             ld d,h               	;T
	ram:646a 48             ld c,b               	;H
	ram:646b 00             nop                  	;.
	ram:646c 02             ld (bc),a            	;.
	ram:646d 4b             ld c,e               	;K
	ram:646e 44             ld b,h               	;D
	ram:646f 52             ld d,d               	;R
	ram:6470 41             ld b,c               	;A
	ram:6471 57             ld d,a               	;W
	ram:6472 00             nop                  	;.
	ram:6473 02             ld (bc),a            	;.
	ram:6474 67             ld h,a               	;g
	ram:6475 5a             ld e,d               	;Z
	ram:6476 4f             ld c,a               	;O
	ram:6477 4f             ld c,a               	;O
	ram:6478 4d             ld c,l               	;M
	ram:6479 00             nop                  	;.
l647ah:
	ram:647a 02             ld (bc),a            	;.
	ram:647b 5a             ld e,d               	;Z
	ram:647c 4e             ld c,(hl)            	;N
	ram:647d 41             ld b,c               	;A
	ram:647e 4d             ld c,l               	;M
	ram:647f d7             rst 10h              	;.
	ram:6480 53             ld d,e               	;S
	ram:6481 00             nop                  	;.
	ram:6482 02             ld (bc),a            	;.
	ram:6483 39             add hl,sp            	;9
	ram:6484 56             ld d,(hl)            	;V
	ram:6485 41             ld b,c               	;A
	ram:6486 52             ld d,d               	;R
	ram:6487 53             ld d,e               	;S
	ram:6488 00             nop                  	;.
	ram:6489 02             ld (bc),a            	;.
	ram:648a 3a 44 52       ld a,(l5244h)        	;: D R
	ram:648d 41             ld b,c               	;A
	ram:648e 57             ld d,a               	;W
	ram:648f 00             nop                  	;.
	ram:6490 02             ld (bc),a            	;.
	ram:6491 3c             inc a                	;<
	ram:6492 43             ld b,e               	;C
	ram:6493 41             ld b,c               	;A
	ram:6494 4c             ld c,h               	;L
	ram:6495 43             ld b,e               	;C
	ram:6496 00             nop                  	;.
	ram:6497 02             ld (bc),a            	;.
l6498h:
	ram:6498 3d             dec a                	;=
	ram:6499 44             ld b,h               	;D
	ram:649a 52             ld d,d               	;R
	ram:649b 41             ld b,c               	;A
	ram:649c 57             ld d,a               	;W
	ram:649d 00             nop                  	;.
	ram:649e 02             ld (bc),a            	;.
	ram:649f 6b             ld l,e               	;k
	ram:64a0 4d             ld c,l               	;M
	ram:64a1 45             ld b,l               	;E
	ram:64a2 4d             ld c,l               	;M
	ram:64a3 00             nop                  	;.
	ram:64a4 02             ld (bc),a            	;.
	ram:64a5 6c             ld l,h               	;l
	ram:64a6 52             ld d,d               	;R
	ram:64a7 45             ld b,l               	;E
	ram:64a8 53             ld d,e               	;S
	ram:64a9 45             ld b,l               	;E
	ram:64aa 54             ld d,h               	;T
	ram:64ab 00             nop                  	;.
	ram:64ac 02             ld (bc),a            	;.
	ram:64ad 6f             ld l,a               	;o
	ram:64ae 4c             ld c,h               	;L
	ram:64af 4e             ld c,(hl)            	;N
	ram:64b0 47             ld b,a               	;G
	ram:64b1 54             ld d,h               	;T
	ram:64b2 48             ld c,b               	;H
	ram:64b3 00             nop                  	;.
	ram:64b4 02             ld (bc),a            	;.
	ram:64b5 70             ld (hl),b            	;p
	ram:64b6 41             ld b,c               	;A
	ram:64b7 52             ld d,d               	;R
	ram:64b8 45             ld b,l               	;E
	ram:64b9 41             ld b,c               	;A
	ram:64ba 00             nop                  	;.
	ram:64bb 02             ld (bc),a            	;.
	ram:64bc 71             ld (hl),c            	;q
	ram:64bd 56             ld d,(hl)            	;V
	ram:64be 4f             ld c,a               	;O
	ram:64bf 4c             ld c,h               	;L
	ram:64c0 00             nop                  	;.
	ram:64c1 02             ld (bc),a            	;.
	ram:64c2 72             ld (hl),d            	;r
	ram:64c3 54             ld d,h               	;T
	ram:64c4 49             ld c,c               	;I
	ram:64c5 4d             ld c,l               	;M
	ram:64c6 45             ld b,l               	;E
	ram:64c7 00             nop                  	;.
	ram:64c8 02             ld (bc),a            	;.
	ram:64c9 73             ld (hl),e            	;s
	ram:64ca 54             ld d,h               	;T
	ram:64cb 45             ld b,l               	;E
	ram:64cc 4d             ld c,l               	;M
	ram:64cd 50             ld d,b               	;P
	ram:64ce 00             nop                  	;.
	ram:64cf 02             ld (bc),a            	;.
	ram:64d0 74             ld (hl),h            	;t
	ram:64d1 4d             ld c,l               	;M
	ram:64d2 41             ld b,c               	;A
	ram:64d3 53             ld d,e               	;S
	ram:64d4 53             ld d,e               	;S
	ram:64d5 00             nop                  	;.
	ram:64d6 02             ld (bc),a            	;.
	ram:64d7 75             ld (hl),l            	;u
	ram:64d8 46             ld b,(hl)            	;F
	ram:64d9 4f             ld c,a               	;O
	ram:64da 52             ld d,d               	;R
	ram:64db 43             ld b,e               	;C
	ram:64dc 45             ld b,l               	;E
	ram:64dd 00             nop                  	;.
	ram:64de 02             ld (bc),a            	;.
	ram:64df 76             halt                 	;v
	ram:64e0 50             ld d,b               	;P
	ram:64e1 52             ld d,d               	;R
	ram:64e2 45             ld b,l               	;E
	ram:64e3 53             ld d,e               	;S
	ram:64e4 53             ld d,e               	;S
	ram:64e5 00             nop                  	;.
	ram:64e6 02             ld (bc),a            	;.
	ram:64e7 77             ld (hl),a            	;w
	ram:64e8 45             ld b,l               	;E
	ram:64e9 4e             ld c,(hl)            	;N
	ram:64ea 52             ld d,d               	;R
	ram:64eb 47             ld b,a               	;G
	ram:64ec 59             ld e,c               	;Y
	ram:64ed 00             nop                  	;.
	ram:64ee 02             ld (bc),a            	;.
	ram:64ef 78             ld a,b               	;x
	ram:64f0 50             ld d,b               	;P
	ram:64f1 4f             ld c,a               	;O
	ram:64f2 57             ld d,a               	;W
	ram:64f3 45             ld b,l               	;E
	ram:64f4 52             ld d,d               	;R
	ram:64f5 00             nop                  	;.
	ram:64f6 02             ld (bc),a            	;.
	ram:64f7 79             ld a,c               	;y
	ram:64f8 53             ld d,e               	;S
	ram:64f9 50             ld d,b               	;P
	ram:64fa 45             ld b,l               	;E
	ram:64fb 45             ld b,l               	;E
	ram:64fc 44             ld b,h               	;D
	ram:64fd 00             nop                  	;.
	ram:64fe 04             inc b                	;.
	ram:64ff c3 53 4e       jp l4e53h            	;. S N
	ram:6502 b6             or (hl)              	;.
	ram:6503 00             nop                  	;.
	ram:6504 04             inc b                	;.
	ram:6505 c3 57 4e       jp l4e57h            	;. W N
	ram:6508 b7             or a                 	;.
	ram:6509 00             nop                  	;.
	ram:650a 04             inc b                	;.
	ram:650b c3 5b 4e       jp l4e5bh            	;. [ N
	ram:650e 5e             ld e,(hl)            	;^
	ram:650f 00             nop                  	;.
	ram:6510 04             inc b                	;.
	ram:6511 c3 5f 4e       jp l4e5fh            	;. _ N
	ram:6514 b8             cp b                 	;.
	ram:6515 00             nop                  	;.
	ram:6516 04             inc b                	;.
	ram:6517 c3 bd 4b       jp l4bbdh            	;. . K
	ram:651a 0a             ld a,(bc)            	;.
	ram:651b 2d             dec l                	;-
	ram:651c 0b             dec bc               	;.
	ram:651d 00             nop                  	;.
	ram:651e 04             inc b                	;.
	ram:651f c3 bd 4b       jp l4bbdh            	;. . K
	ram:6522 0e 2d          ld c,02dh            	;. -
	ram:6524 0f             rrca                 	;.
	ram:6525 00             nop                  	;.
	ram:6526 21 55 65       ld hl,l6555h         	;! U e
	ram:6529 cd 5b 06       call 0065bh          	;. [ .
	ram:652c 21 b6 66       ld hl,l66b6h         	;! . f
	ram:652f 3e 21          ld a,021h            	;> !
sub_6531h:
	ram:6531 22 29 8b       ld (08b29h),hl       	;" ) .
	ram:6534 32 2b 8b       ld (08b2bh),a        	;2 + .
	ram:6537 97             sub a                	;.
	ram:6538 32 2c 8b       ld (08b2ch),a        	;2 , .
	ram:653b cd fa 65       call sub_65fah       	;. . e
	ram:653e cd 1d 70       call sub_701dh       	;. . p
l6541h:
	ram:6541 3a 2b 8b       ld a,(08b2bh)        	;: + .
	ram:6544 47             ld b,a               	;G
	ram:6545 11 11 00       ld de,00011h         	;. . .
	ram:6548 dd 2a 29 8b    ld ix,(08b29h)       	;. * ) .
l654ch:
	ram:654c b7             or a                 	;.
	ram:654d cd 33 66       call sub_6633h       	;. 3 f
	ram:6550 dd 19          add ix,de            	;. .
l6552h:
	ram:6552 10 f8          djnz l654ch          	;. .
	ram:6554 c9             ret                  	;.
l6555h:
	ram:6555 98             sbc a,b              	;.
	ram:6556 65             ld h,l               	;e
	ram:6557 54             ld d,h               	;T
	ram:6558 65             ld h,l               	;e
	ram:6559 54             ld d,h               	;T
	ram:655a 65             ld h,l               	;e
	ram:655b b1             or c                 	;.
	ram:655c 66             ld h,(hl)            	;f
	ram:655d 54             ld d,h               	;T
	ram:655e 65             ld h,l               	;e
	ram:655f 54             ld d,h               	;T
	ram:6560 65             ld h,l               	;e
	ram:6561 40             ld b,b               	;@
	ram:6562 cd e7 3e       call 03ee7h          	;. . >
	ram:6565 21 8b 65       ld hl,l658bh         	;! . e
	ram:6568 cd 5b 06       call 0065bh          	;. [ .
	ram:656b 21 e7 68       ld hl,068e7h         	;! . h
	ram:656e 3e 0e          ld a,00eh            	;> .
	ram:6570 cd 89 00       call 00089h          	;. . .
	ram:6573 28 0b          jr z,l6580h          	;( .
	ram:6575 fd cb 09 46    bit 0,(iy+009h)      	;. . . F
	ram:6579 20 05          jr nz,l6580h         	;.
	ram:657b 21 d5 69       ld hl,l69d5h         	;! . i
	ram:657e 3e 08          ld a,008h            	;> .
l6580h:
	ram:6580 cd 31 65       call sub_6531h       	;. 1 e
	ram:6583 fd cb 09 46    bit 0,(iy+009h)      	;. . . F
	ram:6587 cc d5 47       call z,sub_47d5h     	;. . G
	ram:658a c9             ret                  	;.
l658bh:
	ram:658b 98             sbc a,b              	;.
	ram:658c 65             ld h,l               	;e
	ram:658d 54             ld d,h               	;T
	ram:658e 65             ld h,l               	;e
	ram:658f 54             ld d,h               	;T
	ram:6590 65             ld h,l               	;e
	ram:6591 b1             or c                 	;.
	ram:6592 66             ld h,(hl)            	;f
	ram:6593 54             ld d,h               	;T
	ram:6594 65             ld h,l               	;e
	ram:6595 a6             and (hl)             	;.
	ram:6596 66             ld h,(hl)            	;f
	ram:6597 48             ld c,b               	;H
	ram:6598 dd 2a 2d 8b    ld ix,(08b2dh)       	;. * - .
	ram:659c fe 06          cp 006h              	;. .
	ram:659e 20 46          jr nz,l65e6h         	;F
	ram:65a0 fd cb 09 46    bit 0,(iy+009h)      	;. . . F
	ram:65a4 28 34          jr z,l65dah          	;( 4
	ram:65a6 dd 6e 07       ld l,(ix+007h)       	;. n .
	ram:65a9 dd 66 08       ld h,(ix+008h)       	;. f .
	ram:65ac 7e             ld a,(hl)            	;~
	ram:65ad fe 30          cp 030h              	;. 0
	ram:65af 38 23          jr c,l65d4h          	;8 #
	ram:65b1 fe 3a          cp 03ah              	;. :
	ram:65b3 30 1f          jr nc,l65d4h         	;0 .
	ram:65b5 21 ce 6a       ld hl,l6aceh         	;! . j
	ram:65b8 cd 9d 66       call sub_669dh       	;. . f
	ram:65bb dd 7e 0f       ld a,(ix+00fh)       	;. ~ .
	ram:65be fe 0a          cp 00ah              	;. .
	ram:65c0 38 0a          jr c,l65cch          	;8 .
	ram:65c2 3e 31          ld a,031h            	;> 1
	ram:65c4 cd d9 03       call 003d9h          	;. . .
	ram:65c7 dd 7e 0f       ld a,(ix+00fh)       	;. ~ .
	ram:65ca d6 0a          sub 00ah             	;. .
l65cch:
	ram:65cc c6 30          add a,030h           	;. 0
	ram:65ce cd d9 03       call 003d9h          	;. . .
	ram:65d1 c3 c5 05       jp 005c5h            	;. . .
l65d4h:
	ram:65d4 cd 9d 66       call sub_669dh       	;. . f
	ram:65d7 c3 c5 05       jp 005c5h            	;. . .
l65dah:
	ram:65da 21 41 65       ld hl,l6541h         	;! A e
	ram:65dd e5             push hl              	;.
	ram:65de dd e5          push ix              	;. .
	ram:65e0 e1             pop hl               	;.
	ram:65e1 11 0b 00       ld de,0000bh         	;. . .
	ram:65e4 19             add hl,de            	;.
	ram:65e5 e9             jp (hl)              	;.
l65e6h:
	ram:65e6 fe 01          cp 001h              	;. .
	ram:65e8 38 29          jr c,l6613h          	;8 )
	ram:65ea fe 05          cp 005h              	;. .
	ram:65ec 30 25          jr nc,l6613h         	;0 %
	ram:65ee 3d             dec a                	;=
	ram:65ef 5f             ld e,a               	;_
	ram:65f0 16 00          ld d,000h            	;. .
	ram:65f2 dd 19          add ix,de            	;. .
	ram:65f4 dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:65f7 32 2c 8b       ld (08b2ch),a        	;2 , .
sub_65fah:
	ram:65fa 3a 2c 8b       ld a,(08b2ch)        	;: , .
	ram:65fd 6f             ld l,a               	;o
	ram:65fe 26 00          ld h,000h            	;& .
	ram:6600 5d             ld e,l               	;]
	ram:6601 54             ld d,h               	;T
	ram:6602 29             add hl,hl            	;)
	ram:6603 29             add hl,hl            	;)
	ram:6604 29             add hl,hl            	;)
	ram:6605 29             add hl,hl            	;)
	ram:6606 19             add hl,de            	;.
	ram:6607 ed 5b 29 8b    ld de,(08b29h)       	;. [ ) .
	ram:660b 19             add hl,de            	;.
	ram:660c 22 2d 8b       ld (08b2dh),hl       	;" - .
	ram:660f e5             push hl              	;.
	ram:6610 dd e1          pop ix               	;. .
	ram:6612 c9             ret                  	;.
l6613h:
	ram:6613 fe 08          cp 008h              	;. .
	ram:6615 20 0a          jr nz,l6621h         	;.
	ram:6617 fd cb 09 46    bit 0,(iy+009h)      	;. . . F
	ram:661b ca 64 04       jp z,00464h          	;. d .
	ram:661e c3 c5 05       jp 005c5h            	;. . .
l6621h:
	ram:6621 79             ld a,c               	;y
	ram:6622 fe 53          cp 053h              	;. S
	ram:6624 c0             ret nz               	;.
	ram:6625 fd cb 09 46    bit 0,(iy+009h)      	;. . . F
	ram:6629 c0             ret nz               	;.
	ram:662a 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:662d fe 1f          cp 01fh              	;. .
	ram:662f ca cf 2f       jp z,02fcfh          	;. . /
	ram:6632 c9             ret                  	;.
sub_6633h:
	ram:6633 c5             push bc              	;.
	ram:6634 3a 4b 83       ld a,(0834bh)        	;: K .
	ram:6637 f5             push af              	;.
	ram:6638 dd 6e 04       ld l,(ix+004h)       	;. n .
	ram:663b dd 66 05       ld h,(ix+005h)       	;. f .
	ram:663e 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6641 30 13          jr nc,l6656h         	;0 .
	ram:6643 dd 7e 06       ld a,(ix+006h)       	;. ~ .
	ram:6646 e6 0f          and 00fh             	;. .
	ram:6648 47             ld b,a               	;G
	ram:6649 fd cb 05 de    set 3,(iy+005h)      	;. . . .
	ram:664d 3e 20          ld a,020h            	;>  
l664fh:
	ram:664f cd 2d 6c       call sub_6c2dh       	;. - l
	ram:6652 10 fb          djnz l664fh          	;. .
	ram:6654 18 22          jr l6678h            	;. "
l6656h:
	ram:6656 fd cb 09 46    bit 0,(iy+009h)      	;. . . F
	ram:665a 20 13          jr nz,l666fh         	;.
	ram:665c dd 6e 09       ld l,(ix+009h)       	;. n .
	ram:665f dd 66 0a       ld h,(ix+00ah)       	;. f .
	ram:6662 7e             ld a,(hl)            	;~
	ram:6663 dd a6 10       and (ix+010h)        	;. . .
	ram:6666 dd be 0f       cp (ix+00fh)         	;. . .
	ram:6669 20 04          jr nz,l666fh         	;.
	ram:666b fd cb 05 de    set 3,(iy+005h)      	;. . . .
l666fh:
	ram:666f dd 6e 07       ld l,(ix+007h)       	;. n .
	ram:6672 dd 66 08       ld h,(ix+008h)       	;. f .
	ram:6675 cd db 6c       call sub_6cdbh       	;. . l
l6678h:
	ram:6678 f1             pop af               	;.
	ram:6679 32 4b 83       ld (0834bh),a        	;2 K .
	ram:667c c1             pop bc               	;.
	ram:667d c9             ret                  	;.
sub_667eh:
	ram:667e dd 6e 09       ld l,(ix+009h)       	;. n .
	ram:6681 dd 66 0a       ld h,(ix+00ah)       	;. f .
	ram:6684 7e             ld a,(hl)            	;~
	ram:6685 dd a6 10       and (ix+010h)        	;. . .
	ram:6688 dd be 0f       cp (ix+00fh)         	;. . .
	ram:668b c8             ret z                	;.
	ram:668c dd 7e 10       ld a,(ix+010h)       	;. ~ .
	ram:668f 2f             cpl                  	;/
	ram:6690 a6             and (hl)             	;.
	ram:6691 dd b6 0f       or (ix+00fh)         	;. . .
	ram:6694 77             ld (hl),a            	;w
	ram:6695 dd cb 06 7e    bit 7,(ix+006h)      	;. . . ~
	ram:6699 c8             ret z                	;.
	ram:669a c3 1b 00       jp 0001bh            	;. . .
sub_669dh:
	ram:669d 7e             ld a,(hl)            	;~
	ram:669e b7             or a                 	;.
	ram:669f c8             ret z                	;.
	ram:66a0 cd d9 03       call 003d9h          	;. . .
	ram:66a3 23             inc hl               	;#
	ram:66a4 18 f7          jr sub_669dh         	;. .
	ram:66a6 d8             ret c                	;.
	ram:66a7 cd 89 00       call 00089h          	;. . .
	ram:66aa c0             ret nz               	;.
	ram:66ab 3e 01          ld a,001h            	;> .
	ram:66ad 32 dd 81       ld (081ddh),a        	;2 . .
	ram:66b0 c9             ret                  	;.
	ram:66b1 0e 00          ld c,000h            	;. .
	ram:66b3 c3 64 04       jp 00464h            	;. d .
l66b6h:
	ram:66b6 01 00 00       ld bc,00000h         	;. . .
	ram:66b9 03             inc bc               	;.
	ram:66ba 00             nop                  	;.
	ram:66bb 00             nop                  	;.
	ram:66bc 06 02          ld b,002h            	;. .
	ram:66be 6b             ld l,e               	;k
	ram:66bf 50             ld d,b               	;P
	ram:66c0 83             add a,e              	;.
	ram:66c1 cd 7e 66       call sub_667eh       	;. ~ f
	ram:66c4 c9             ret                  	;.
	ram:66c5 00             nop                  	;.
	ram:66c6 03             inc bc               	;.
	ram:66c7 02             ld (bc),a            	;.
	ram:66c8 00             nop                  	;.
	ram:66c9 01 03 00       ld bc,00003h         	;. . .
	ram:66cc 07             rlca                 	;.
	ram:66cd 03             inc bc               	;.
	ram:66ce 40             ld b,b               	;@
	ram:66cf 6b             ld l,e               	;k
	ram:66d0 50             ld d,b               	;P
	ram:66d1 83             add a,e              	;.
	ram:66d2 cd 7e 66       call sub_667eh       	;. ~ f
	ram:66d5 c9             ret                  	;.
	ram:66d6 01 03 02       ld bc,00203h         	;. . .
	ram:66d9 01 02 03       ld bc,00302h         	;. . .
	ram:66dc 00             nop                  	;.
	ram:66dd 0b             dec bc               	;.
	ram:66de 03             inc bc               	;.
	ram:66df ca 6a 50       jp z,l506ah          	;. j P
	ram:66e2 83             add a,e              	;.
	ram:66e3 cd 7e 66       call sub_667eh       	;. ~ f
	ram:66e6 c9             ret                  	;.
	ram:66e7 03             inc bc               	;.
	ram:66e8 03             inc bc               	;.
	ram:66e9 04             inc b                	;.
	ram:66ea 03             inc bc               	;.
	ram:66eb 00             nop                  	;.
	ram:66ec 10 01          djnz l66efh          	;. .
	ram:66ee 00             nop                  	;.
l66efh:
	ram:66ef 05             dec b                	;.
	ram:66f0 d3 6a          out (06ah),a         	;. j
	ram:66f2 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:66f5 7e             ld a,(hl)            	;~
	ram:66f6 66             ld h,(hl)            	;f
	ram:66f7 c9             ret                  	;.
	ram:66f8 ff             rst 38h              	;.
	ram:66f9 ff             rst 38h              	;.
	ram:66fa 05             dec b                	;.
	ram:66fb 03             inc bc               	;.
	ram:66fc 00             nop                  	;.
	ram:66fd 10 01          djnz 3               	;. .
	ram:66ff 06 01          ld b,001h            	;. .
	ram:6701 5d             ld e,l               	;]
	ram:6702 6a             ld l,d               	;j
	ram:6703 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:6706 7e             ld a,(hl)            	;~
	ram:6707 66             ld h,(hl)            	;f
	ram:6708 c9             ret                  	;.
	ram:6709 00             nop                  	;.
	ram:670a ff             rst 38h              	;.
	ram:670b 06 04          ld b,004h            	;. .
	ram:670d 00             nop                  	;.
	ram:670e 10 01          djnz l6711h          	;. .
	ram:6710 07             rlca                 	;.
l6711h:
	ram:6711 01 5f 6a       ld bc,l6a5fh         	;. _ j
	ram:6714 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:6717 7e             ld a,(hl)            	;~
	ram:6718 66             ld h,(hl)            	;f
	ram:6719 c9             ret                  	;.
	ram:671a 01 ff 07       ld bc,007ffh         	;. . .
	ram:671d 05             dec b                	;.
	ram:671e 00             nop                  	;.
	ram:671f 10 01          djnz l6722h          	;. .
	ram:6721 08             ex af,af'            	;.
l6722h:
	ram:6722 01 61 6a       ld bc,l6a5fh+2       	;. a j
	ram:6725 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:6728 7e             ld a,(hl)            	;~
	ram:6729 66             ld h,(hl)            	;f
	ram:672a c9             ret                  	;.
	ram:672b 02             ld (bc),a            	;.
	ram:672c ff             rst 38h              	;.
	ram:672d 08             ex af,af'            	;.
	ram:672e 06 00          ld b,000h            	;. .
	ram:6730 10 01          djnz l6733h          	;. .
	ram:6732 09             add hl,bc            	;.
l6733h:
	ram:6733 01 63 6a       ld bc,l6a63h         	;. c j
	ram:6736 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:6739 7e             ld a,(hl)            	;~
	ram:673a 66             ld h,(hl)            	;f
	ram:673b c9             ret                  	;.
	ram:673c 03             inc bc               	;.
	ram:673d ff             rst 38h              	;.
	ram:673e 09             add hl,bc            	;.
	ram:673f 07             rlca                 	;.
	ram:6740 00             nop                  	;.
	ram:6741 10 01          djnz l6744h          	;. .
	ram:6743 0a             ld a,(bc)            	;.
l6744h:
	ram:6744 01 65 6a       ld bc,l6a65h         	;. e j
	ram:6747 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:674a 7e             ld a,(hl)            	;~
	ram:674b 66             ld h,(hl)            	;f
	ram:674c c9             ret                  	;.
	ram:674d 04             inc b                	;.
	ram:674e ff             rst 38h              	;.
	ram:674f 0a             ld a,(bc)            	;.
	ram:6750 08             ex af,af'            	;.
	ram:6751 00             nop                  	;.
	ram:6752 10 01          djnz l6755h          	;. .
	ram:6754 0b             dec bc               	;.
l6755h:
	ram:6755 01 67 6a       ld bc,l6a67h         	;. g j
	ram:6758 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:675b 7e             ld a,(hl)            	;~
	ram:675c 66             ld h,(hl)            	;f
	ram:675d c9             ret                  	;.
	ram:675e 05             dec b                	;.
	ram:675f ff             rst 38h              	;.
	ram:6760 0b             dec bc               	;.
	ram:6761 09             add hl,bc            	;.
	ram:6762 00             nop                  	;.
	ram:6763 10 01          djnz l6766h          	;. .
	ram:6765 0c             inc c                	;.
l6766h:
	ram:6766 01 69 6a       ld bc,l6a69h         	;. i j
	ram:6769 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:676c 7e             ld a,(hl)            	;~
	ram:676d 66             ld h,(hl)            	;f
	ram:676e c9             ret                  	;.
	ram:676f 06 ff          ld b,0ffh            	;. .
	ram:6771 0c             inc c                	;.
	ram:6772 0a             ld a,(bc)            	;.
	ram:6773 00             nop                  	;.
	ram:6774 10 01          djnz l6777h          	;. .
	ram:6776 0d             dec c                	;.
l6777h:
	ram:6777 01 6b 6a       ld bc,l6a6bh         	;. k j
	ram:677a 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:677d 7e             ld a,(hl)            	;~
	ram:677e 66             ld h,(hl)            	;f
	ram:677f c9             ret                  	;.
	ram:6780 07             rlca                 	;.
	ram:6781 ff             rst 38h              	;.
	ram:6782 0d             dec c                	;.
	ram:6783 0b             dec bc               	;.
	ram:6784 00             nop                  	;.
	ram:6785 10 01          djnz 3               	;. .
	ram:6787 0e 01          ld c,001h            	;. .
	ram:6789 6d             ld l,l               	;m
	ram:678a 6a             ld l,d               	;j
	ram:678b 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:678e 7e             ld a,(hl)            	;~
	ram:678f 66             ld h,(hl)            	;f
	ram:6790 c9             ret                  	;.
	ram:6791 08             ex af,af'            	;.
	ram:6792 ff             rst 38h              	;.
	ram:6793 0e 0c          ld c,00ch            	;. .
	ram:6795 00             nop                  	;.
	ram:6796 10 01          djnz l6799h          	;. .
	ram:6798 0f             rrca                 	;.
l6799h:
	ram:6799 01 6f 6a       ld bc,l6a6fh         	;. o j
	ram:679c 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:679f 7e             ld a,(hl)            	;~
	ram:67a0 66             ld h,(hl)            	;f
	ram:67a1 c9             ret                  	;.
	ram:67a2 09             add hl,bc            	;.
	ram:67a3 ff             rst 38h              	;.
	ram:67a4 0f             rrca                 	;.
	ram:67a5 0d             dec c                	;.
	ram:67a6 00             nop                  	;.
	ram:67a7 10 01          djnz 3               	;. .
	ram:67a9 10 01          djnz l67ach          	;. .
	ram:67ab 5d             ld e,l               	;]
l67ach:
	ram:67ac 6a             ld l,d               	;j
	ram:67ad 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:67b0 7e             ld a,(hl)            	;~
	ram:67b1 66             ld h,(hl)            	;f
	ram:67b2 c9             ret                  	;.
	ram:67b3 0a             ld a,(bc)            	;.
	ram:67b4 ff             rst 38h              	;.
	ram:67b5 0f             rrca                 	;.
	ram:67b6 0e 00          ld c,000h            	;. .
	ram:67b8 10 01          djnz 3               	;. .
	ram:67ba 11 01 5f       ld de,l5f01h         	;. . _
	ram:67bd 6a             ld l,d               	;j
	ram:67be 3a 8b cd       ld a,(0cd8bh)        	;: . .
	ram:67c1 7e             ld a,(hl)            	;~
	ram:67c2 66             ld h,(hl)            	;f
	ram:67c3 c9             ret                  	;.
	ram:67c4 0b             dec bc               	;.
	ram:67c5 ff             rst 38h              	;.
	ram:67c6 11 10 03       ld de,00310h         	;. . .
	ram:67c9 12             ld (de),a            	;.
	ram:67ca 02             ld (bc),a            	;.
	ram:67cb 00             nop                  	;.
	ram:67cc 86             add a,(hl)           	;.
	ram:67cd 26 6b          ld h,06bh            	;& k
	ram:67cf 46             ld b,(hl)            	;F
	ram:67d0 83             add a,e              	;.
	ram:67d1 cd 7e 66       call sub_667eh       	;. ~ f
	ram:67d4 c9             ret                  	;.
	ram:67d5 00             nop                  	;.
	ram:67d6 04             inc b                	;.
	ram:67d7 11 10 03       ld de,00310h         	;. . .
	ram:67da 12             ld (de),a            	;.
	ram:67db 02             ld (bc),a            	;.
	ram:67dc 07             rlca                 	;.
	ram:67dd 86             add a,(hl)           	;.
	ram:67de 9e             sbc a,(hl)           	;.
	ram:67df 6a             ld l,d               	;j
	ram:67e0 46             ld b,(hl)            	;F
	ram:67e1 83             add a,e              	;.
	ram:67e2 cd 7e 66       call sub_667eh       	;. ~ f
	ram:67e5 c9             ret                  	;.
	ram:67e6 04             inc b                	;.
	ram:67e7 04             inc b                	;.
	ram:67e8 13             inc de               	;.
	ram:67e9 12             ld (de),a            	;.
	ram:67ea 10 14          djnz l6800h          	;. .
	ram:67ec 03             inc bc               	;.
	ram:67ed 00             nop                  	;.
	ram:67ee 05             dec b                	;.
	ram:67ef 2d             dec l                	;-
	ram:67f0 6b             ld l,e               	;k
	ram:67f1 50             ld d,b               	;P
	ram:67f2 83             add a,e              	;.
	ram:67f3 cd 7e 66       call sub_667eh       	;. ~ f
	ram:67f6 c9             ret                  	;.
	ram:67f7 00             nop                  	;.
	ram:67f8 20 13          jr nz,l680dh         	;.
	ram:67fa 12             ld (de),a            	;.
	ram:67fb 10 14          djnz l6811h          	;. .
	ram:67fd 03             inc bc               	;.
	ram:67fe 06 06          ld b,006h            	;. .
l6800h:
	ram:6800 17             rla                  	;.
	ram:6801 6b             ld l,e               	;k
	ram:6802 50             ld d,b               	;P
	ram:6803 83             add a,e              	;.
	ram:6804 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6807 c9             ret                  	;.
	ram:6808 20 20          jr nz,l682ah         	;
	ram:680a 15             dec d                	;.
l680bh:
	ram:680b 14             inc d                	;.
	ram:680c 12             ld (de),a            	;.
l680dh:
	ram:680d 18 04          jr l6813h            	;. .
	ram:680f 00             nop                  	;.
	ram:6810 84             add a,h              	;.
l6811h:
	ram:6811 d9             exx                  	;.
	ram:6812 6a             ld l,d               	;j
l6813h:
	ram:6813 48             ld c,b               	;H
	ram:6814 83             add a,e              	;.
	ram:6815 cd c9 3b       call 03bc9h          	;. . ;
	ram:6818 c9             ret                  	;.
	ram:6819 10 f0          djnz l680bh          	;. .
	ram:681b 16 14          ld d,014h            	;. .
	ram:681d 12             ld (de),a            	;.
	ram:681e 18 04          jr l6824h            	;. .
	ram:6820 05             dec b                	;.
	ram:6821 83             add a,e              	;.
	ram:6822 13             inc de               	;.
	ram:6823 6b             ld l,e               	;k
l6824h:
	ram:6824 48             ld c,b               	;H
	ram:6825 83             add a,e              	;.
	ram:6826 cd cf 3b       call 03bcfh          	;. . ;
	ram:6829 c9             ret                  	;.
l682ah:
	jr nz,-14		;682a	20 f0		  .
	ram:682c 17             rla                  	;.
	ram:682d 15             dec d                	;.
	ram:682e 12             ld (de),a            	;.
	ram:682f 18 04          jr l6835h            	;. .
	ram:6831 09             add hl,bc            	;.
	ram:6832 85             add a,l              	;.
	ram:6833 0d             dec c                	;.
	ram:6834 6b             ld l,e               	;k
l6835h:
	ram:6835 48             ld c,b               	;H
	ram:6836 83             add a,e              	;.
	ram:6837 cd d5 3b       call 03bd5h          	;. . ;
	ram:683a c9             ret                  	;.
	ram:683b 40             ld b,b               	;@
	ram:683c f0             ret p                	;.
	ram:683d 17             rla                  	;.
	ram:683e 16 12          ld d,012h            	;. .
	ram:6840 18 04          jr l6846h            	;. .
	ram:6842 0f             rrca                 	;.
	ram:6843 85             add a,l              	;.
	ram:6844 a5             and l                	;.
	ram:6845 6a             ld l,d               	;j
l6846h:
	ram:6846 48             ld c,b               	;H
	ram:6847 83             add a,e              	;.
	ram:6848 cd db 3b       call 03bdbh          	;. . ;
	ram:684b c9             ret                  	;.
	ram:684c 80             add a,b              	;.
	ram:684d f0             ret p                	;.
	ram:684e 19             add hl,de            	;.
	ram:684f 18 14          jr l6865h            	;. .
	ram:6851 1c             inc e                	;.
	ram:6852 05             dec b                	;.
	ram:6853 00             nop                  	;.
	ram:6854 83             add a,e              	;.
	ram:6855 9a             sbc a,d              	;.
	ram:6856 6a             ld l,d               	;j
	ram:6857 50             ld d,b               	;P
	ram:6858 83             add a,e              	;.
	ram:6859 cd 7e 66       call sub_667eh       	;. ~ f
	ram:685c c9             ret                  	;.
	ram:685d 00             nop                  	;.
	ram:685e 1c             inc e                	;.
	ram:685f 1a             ld a,(de)            	;.
	ram:6860 18 14          jr l6876h            	;. .
	ram:6862 1c             inc e                	;.
	ram:6863 05             dec b                	;.
	ram:6864 04             inc b                	;.
l6865h:
	ram:6865 83             add a,e              	;.
	ram:6866 80             add a,b              	;.
	ram:6867 6a             ld l,d               	;j
	ram:6868 50             ld d,b               	;P
	ram:6869 83             add a,e              	;.
	ram:686a cd 7e 66       call sub_667eh       	;. ~ f
	ram:686d c9             ret                  	;.
	ram:686e 10 1c          djnz l688ch          	;. .
	ram:6870 1b             dec de               	;.
	ram:6871 19             add hl,de            	;.
	ram:6872 14             inc d                	;.
	ram:6873 1c             inc e                	;.
	ram:6874 05             dec b                	;.
	ram:6875 08             ex af,af'            	;.
l6876h:
	ram:6876 83             add a,e              	;.
	ram:6877 09             add hl,bc            	;.
	ram:6878 6b             ld l,e               	;k
	ram:6879 50             ld d,b               	;P
	ram:687a 83             add a,e              	;.
	ram:687b cd 7e 66       call sub_667eh       	;. ~ f
	ram:687e c9             ret                  	;.
	ram:687f 08             ex af,af'            	;.
	ram:6880 1c             inc e                	;.
	ram:6881 1b             dec de               	;.
	ram:6882 1a             ld a,(de)            	;.
	ram:6883 14             inc d                	;.
	ram:6884 1c             inc e                	;.
	ram:6885 05             dec b                	;.
	ram:6886 0c             inc c                	;.
	ram:6887 83             add a,e              	;.
	ram:6888 ed 6a          adc hl,hl            	;. j
	ram:688a 50             ld d,b               	;P
	ram:688b 83             add a,e              	;.
l688ch:
	ram:688c cd 7e 66       call sub_667eh       	;. ~ f
	ram:688f c9             ret                  	;.
	ram:6890 04             inc b                	;.
	ram:6891 1c             inc e                	;.
	ram:6892 1d             dec e                	;.
	ram:6893 1c             inc e                	;.
	ram:6894 18 1f          jr 33                	;. .
	ram:6896 06 00          ld b,000h            	;. .
	ram:6898 05             dec b                	;.
	ram:6899 3a 6b 50       ld a,(l506bh)        	;: k P
	ram:689c 83             add a,e              	;.
	ram:689d cd 7e 66       call sub_667eh       	;. ~ f
	ram:68a0 c9             ret                  	;.
	ram:68a1 00             nop                  	;.
	ram:68a2 c0             ret nz               	;.
	ram:68a3 1e 1c          ld e,01ch            	;. .
	ram:68a5 18 1f          jr 33                	;. .
	ram:68a7 06 06          ld b,006h            	;. .
	ram:68a9 04             inc b                	;.
	ram:68aa 95             sub l                	;.
	ram:68ab 6a             ld l,d               	;j
	ram:68ac 50             ld d,b               	;P
	ram:68ad 83             add a,e              	;.
	ram:68ae cd 7e 66       call sub_667eh       	;. ~ f
	ram:68b1 c9             ret                  	;.
	ram:68b2 40             ld b,b               	;@
	ram:68b3 c0             ret nz               	;.
	ram:68b4 1e 1d          ld e,01dh            	;. .
	ram:68b6 18 1f          jr 33                	;. .
	ram:68b8 06 0b          ld b,00bh            	;. .
	ram:68ba 07             rlca                 	;.
	ram:68bb 50             ld d,b               	;P
	ram:68bc 6b             ld l,e               	;k
	ram:68bd 50             ld d,b               	;P
	ram:68be 83             add a,e              	;.
	ram:68bf cd 7e 66       call sub_667eh       	;. ~ f
	ram:68c2 c9             ret                  	;.
	ram:68c3 c0             ret nz               	;.
	ram:68c4 c0             ret nz               	;.
	ram:68c5 20 1f          jr nz,33             	;.
	ram:68c7 1c             inc e                	;.
	ram:68c8 1f             rra                  	;.
	ram:68c9 07             rlca                 	;.
	ram:68ca 00             nop                  	;.
	ram:68cb 86             add a,(hl)           	;.
	ram:68cc bc             cp h                 	;.
	ram:68cd 6a             ld l,d               	;j
	ram:68ce 4e             ld c,(hl)            	;N
	ram:68cf 83             add a,e              	;.
	ram:68d0 cd 7e 66       call sub_667eh       	;. ~ f
	ram:68d3 c9             ret                  	;.
	ram:68d4 00             nop                  	;.
	ram:68d5 01 20 1f       ld bc,01f20h         	;.   .
	ram:68d8 1c             inc e                	;.
	ram:68d9 20 07          jr nz,9              	;.
	ram:68db 07             rlca                 	;.
	ram:68dc 86             add a,(hl)           	;.
	ram:68dd c3 6a 4e       jp 04e6ah            	;. j N
	ram:68e0 83             add a,e              	;.
	ram:68e1 cd 7e 66       call sub_667eh       	;. ~ f
	ram:68e4 c9             ret                  	;.
	ram:68e5 01 01 01       ld bc,00101h         	;. . .
	ram:68e8 00             nop                  	;.
	ram:68e9 00             nop                  	;.
	ram:68ea 02             ld (bc),a            	;.
	ram:68eb 00             nop                  	;.
	ram:68ec 00             nop                  	;.
	ram:68ed 06 33          ld b,033h            	;. 3
	ram:68ef 6b             ld l,e               	;k
	ram:68f0 4a             ld c,d               	;J
	ram:68f1 83             add a,e              	;.
	ram:68f2 cd 7e 66       call sub_667eh       	;. ~ f
	ram:68f5 c9             ret                  	;.
	ram:68f6 00             nop                  	;.
	ram:68f7 08             ex af,af'            	;.
	ram:68f8 01 00 01       ld bc,00100h         	;. . .
	ram:68fb 02             ld (bc),a            	;.
	ram:68fc 00             nop                  	;.
	ram:68fd 07             rlca                 	;.
	ram:68fe 07             rlca                 	;.
	ram:68ff 1e 6b          ld e,06bh            	;. k
	ram:6901 4a             ld c,d               	;J
	ram:6902 83             add a,e              	;.
	ram:6903 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6906 c9             ret                  	;.
	ram:6907 08             ex af,af'            	;.
	ram:6908 08             ex af,af'            	;.
	ram:6909 03             inc bc               	;.
	ram:690a 02             ld (bc),a            	;.
	ram:690b 00             nop                  	;.
	ram:690c 04             inc b                	;.
	ram:690d 01 00 07       ld bc,00700h         	;. . .
	ram:6910 8d             adc a,l              	;.
	ram:6911 6a             ld l,d               	;j
	ram:6912 4a             ld c,d               	;J
	ram:6913 83             add a,e              	;.
	ram:6914 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6917 c9             ret                  	;.
	ram:6918 00             nop                  	;.
	ram:6919 10 03          djnz l691eh          	;. .
	ram:691b 02             ld (bc),a            	;.
	ram:691c 00             nop                  	;.
	ram:691d 04             inc b                	;.
l691eh:
	ram:691e 01 08 08       ld bc,00808h         	;. . .
	ram:6921 84             add a,h              	;.
	ram:6922 6a             ld l,d               	;j
	ram:6923 4a             ld c,d               	;J
	ram:6924 83             add a,e              	;.
	ram:6925 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6928 c9             ret                  	;.
	ram:6929 10 10          djnz l693bh          	;. .
	ram:692b 05             dec b                	;.
	ram:692c 04             inc b                	;.
	ram:692d 02             ld (bc),a            	;.
	ram:692e 06 02          ld b,002h            	;. .
	ram:6930 00             nop                  	;.
	ram:6931 88             adc a,b              	;.
	ram:6932 b3             or e                 	;.
	ram:6933 6a             ld l,d               	;j
	ram:6934 4a             ld c,d               	;J
	ram:6935 83             add a,e              	;.
	ram:6936 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6939 c9             ret                  	;.
	ram:693a 00             nop                  	;.
l693bh:
	ram:693b 01 05 04       ld bc,00405h         	;. . .
	ram:693e 02             ld (bc),a            	;.
	ram:693f 06 02          ld b,002h            	;. .
	ram:6941 09             add hl,bc            	;.
	ram:6942 87             add a,a              	;.
	ram:6943 ab             xor e                	;.
	ram:6944 6a             ld l,d               	;j
	ram:6945 4a             ld c,d               	;J
	ram:6946 83             add a,e              	;.
	ram:6947 cd 7e 66       call sub_667eh       	;. ~ f
	ram:694a c9             ret                  	;.
	ram:694b 01 01 07       ld bc,00701h         	;. . .
	ram:694e 06 04          ld b,004h            	;. .
	ram:6950 08             ex af,af'            	;.
	ram:6951 03             inc bc               	;.
	ram:6952 00             nop                  	;.
	ram:6953 84             add a,h              	;.
	ram:6954 44             ld b,h               	;D
	ram:6955 6b             ld l,e               	;k
	ram:6956 4a             ld c,d               	;J
	ram:6957 83             add a,e              	;.
	ram:6958 cd 7e 66       call sub_667eh       	;. ~ f
	ram:695b c9             ret                  	;.
	ram:695c 00             nop                  	;.
	ram:695d 02             ld (bc),a            	;.
	ram:695e 07             rlca                 	;.
	ram:695f 06 04          ld b,004h            	;. .
	ram:6961 08             ex af,af'            	;.
	ram:6962 03             inc bc               	;.
	ram:6963 05             dec b                	;.
	ram:6964 86             add a,(hl)           	;.
	ram:6965 49             ld c,c               	;I
	ram:6966 6b             ld l,e               	;k
	ram:6967 4a             ld c,d               	;J
	ram:6968 83             add a,e              	;.
	ram:6969 cd 7e 66       call sub_667eh       	;. ~ f
	ram:696c c9             ret                  	;.
	ram:696d 02             ld (bc),a            	;.
	ram:696e 02             ld (bc),a            	;.
	ram:696f 09             add hl,bc            	;.
	ram:6970 08             ex af,af'            	;.
	ram:6971 06 0a          ld b,00ah            	;. .
	ram:6973 04             inc b                	;.
	ram:6974 00             nop                  	;.
	ram:6975 87             add a,a              	;.
	ram:6976 de 6a          sbc a,06ah           	;. j
	ram:6978 4a             ld c,d               	;J
	ram:6979 83             add a,e              	;.
	ram:697a cd 7e 66       call sub_667eh       	;. ~ f
	ram:697d c9             ret                  	;.
	ram:697e 00             nop                  	;.
	ram:697f 04             inc b                	;.
	ram:6980 09             add hl,bc            	;.
	ram:6981 08             ex af,af'            	;.
	ram:6982 06 0a          ld b,00ah            	;. .
	ram:6984 04             inc b                	;.
	ram:6985 08             ex af,af'            	;.
	ram:6986 86             add a,(hl)           	;.
	ram:6987 e6 6a          and 06ah             	;. j
	ram:6989 4a             ld c,d               	;J
	ram:698a 83             add a,e              	;.
	ram:698b cd 7e 66       call sub_667eh       	;. ~ f
	ram:698e c9             ret                  	;.
	ram:698f 04             inc b                	;.
	ram:6990 04             inc b                	;.
	ram:6991 0b             dec bc               	;.
	ram:6992 0a             ld a,(bc)            	;.
	ram:6993 08             ex af,af'            	;.
	ram:6994 0c             inc c                	;.
	ram:6995 05             dec b                	;.
	ram:6996 00             nop                  	;.
	ram:6997 86             add a,(hl)           	;.
l6998h:
	ram:6998 79             ld a,c               	;y
	ram:6999 6a             ld l,d               	;j
	ram:699a 4a             ld c,d               	;J
	ram:699b 83             add a,e              	;.
	ram:699c cd 7e 66       call sub_667eh       	;. ~ f
	ram:699f c9             ret                  	;.
	ram:69a0 00             nop                  	;.
	ram:69a1 20 0b          jr nz,13             	;.
	ram:69a3 0a             ld a,(bc)            	;.
	ram:69a4 08             ex af,af'            	;.
	ram:69a5 0c             inc c                	;.
	ram:69a6 05             dec b                	;.
	ram:69a7 07             rlca                 	;.
	ram:69a8 87             add a,a              	;.
	ram:69a9 71             ld (hl),c            	;q
	ram:69aa 6a             ld l,d               	;j
	ram:69ab 4a             ld c,d               	;J
	ram:69ac 83             add a,e              	;.
	ram:69ad cd 7e 66       call sub_667eh       	;. ~ f
	ram:69b0 c9             ret                  	;.
	ram:69b1 20 20          jr nz,l69d3h         	;
	ram:69b3 0d             dec c                	;.
	ram:69b4 0c             inc c                	;.
	ram:69b5 0a             ld a,(bc)            	;.
	ram:69b6 0c             inc c                	;.
	ram:69b7 06 00          ld b,000h            	;. .
	ram:69b9 08             ex af,af'            	;.
	ram:69ba f1             pop af               	;.
	ram:69bb 6a             ld l,d               	;j
	ram:69bc 4a             ld c,d               	;J
	ram:69bd 83             add a,e              	;.
	ram:69be cd 7e 66       call sub_667eh       	;. ~ f
	ram:69c1 c9             ret                  	;.
	ram:69c2 00             nop                  	;.
	ram:69c3 40             ld b,b               	;@
	ram:69c4 0d             dec c                	;.
	ram:69c5 0c             inc c                	;.
	ram:69c6 0a             ld a,(bc)            	;.
	ram:69c7 0d             dec c                	;.
	ram:69c8 06 09          ld b,009h            	;. .
	ram:69ca 07             rlca                 	;.
	ram:69cb fa 6a 4a       jp m,04a6ah          	;. j J
	ram:69ce 83             add a,e              	;.
	ram:69cf cd 7e 66       call sub_667eh       	;. ~ f
	ram:69d2 c9             ret                  	;.
l69d3h:
	ram:69d3 40             ld b,b               	;@
	ram:69d4 40             ld b,b               	;@
l69d5h:
	ram:69d5 01 00 00       ld bc,00000h         	;. . .
	ram:69d8 02             ld (bc),a            	;.
	ram:69d9 00             nop                  	;.
	ram:69da 00             nop                  	;.
	ram:69db 07             rlca                 	;.
	ram:69dc 8d             adc a,l              	;.
	ram:69dd 6a             ld l,d               	;j
	ram:69de 4a             ld c,d               	;J
	ram:69df 83             add a,e              	;.
	ram:69e0 cd 7e 66       call sub_667eh       	;. ~ f
	ram:69e3 c9             ret                  	;.
	ram:69e4 00             nop                  	;.
	ram:69e5 10 01          djnz l69e8h          	;. .
	ram:69e7 00             nop                  	;.
l69e8h:
	ram:69e8 01 02 00       ld bc,00002h         	;. . .
	ram:69eb 08             ex af,af'            	;.
	ram:69ec 08             ex af,af'            	;.
	ram:69ed 84             add a,h              	;.
	ram:69ee 6a             ld l,d               	;j
	ram:69ef 4a             ld c,d               	;J
	ram:69f0 83             add a,e              	;.
	ram:69f1 cd 7e 66       call sub_667eh       	;. ~ f
	ram:69f4 c9             ret                  	;.
	ram:69f5 10 10          djnz l6a07h          	;. .
	ram:69f7 03             inc bc               	;.
	ram:69f8 02             ld (bc),a            	;.
	ram:69f9 00             nop                  	;.
	ram:69fa 04             inc b                	;.
	ram:69fb 01 00 86       ld bc,08600h         	;. . .
	ram:69fe 79             ld a,c               	;y
	ram:69ff 6a             ld l,d               	;j
	ram:6a00 4a             ld c,d               	;J
	ram:6a01 83             add a,e              	;.
	ram:6a02 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6a05 c9             ret                  	;.
	ram:6a06 00             nop                  	;.
l6a07h:
	ram:6a07 20 03          jr nz,l6a0ch         	;.
	ram:6a09 02             ld (bc),a            	;.
	ram:6a0a 00             nop                  	;.
	ram:6a0b 04             inc b                	;.
l6a0ch:
	ram:6a0c 01 07 87       ld bc,08707h         	;. . .
	ram:6a0f 71             ld (hl),c            	;q
	ram:6a10 6a             ld l,d               	;j
	ram:6a11 4a             ld c,d               	;J
	ram:6a12 83             add a,e              	;.
	ram:6a13 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6a16 c9             ret                  	;.
	ram:6a17 20 20          jr nz,l6a39h         	;
	ram:6a19 05             dec b                	;.
	ram:6a1a 04             inc b                	;.
	ram:6a1b 02             ld (bc),a            	;.
	ram:6a1c 06 02          ld b,002h            	;. .
	ram:6a1e 00             nop                  	;.
	ram:6a1f 87             add a,a              	;.
	ram:6a20 de 6a          sbc a,06ah           	;. j
	ram:6a22 4a             ld c,d               	;J
	ram:6a23 83             add a,e              	;.
	ram:6a24 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6a27 c9             ret                  	;.
	ram:6a28 00             nop                  	;.
	ram:6a29 04             inc b                	;.
	ram:6a2a 05             dec b                	;.
	ram:6a2b 04             inc b                	;.
	ram:6a2c 02             ld (bc),a            	;.
	ram:6a2d 06 02          ld b,002h            	;. .
	ram:6a2f 08             ex af,af'            	;.
	ram:6a30 86             add a,(hl)           	;.
	ram:6a31 e6 6a          and 06ah             	;. j
	ram:6a33 4a             ld c,d               	;J
	ram:6a34 83             add a,e              	;.
	ram:6a35 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6a38 c9             ret                  	;.
l6a39h:
	ram:6a39 04             inc b                	;.
	ram:6a3a 04             inc b                	;.
	ram:6a3b 07             rlca                 	;.
	ram:6a3c 06 04          ld b,004h            	;. .
	ram:6a3e 06 03          ld b,003h            	;. .
	ram:6a40 00             nop                  	;.
	ram:6a41 08             ex af,af'            	;.
	ram:6a42 f1             pop af               	;.
	ram:6a43 6a             ld l,d               	;j
	ram:6a44 4a             ld c,d               	;J
	ram:6a45 83             add a,e              	;.
	ram:6a46 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6a49 c9             ret                  	;.
	ram:6a4a 00             nop                  	;.
	ram:6a4b 40             ld b,b               	;@
	ram:6a4c 07             rlca                 	;.
	ram:6a4d 06 04          ld b,004h            	;. .
	ram:6a4f 07             rlca                 	;.
	ram:6a50 03             inc bc               	;.
	ram:6a51 09             add hl,bc            	;.
	ram:6a52 07             rlca                 	;.
	ram:6a53 fa 6a 4a       jp m,04a6ah          	;. j J
	ram:6a56 83             add a,e              	;.
	ram:6a57 cd 7e 66       call sub_667eh       	;. ~ f
	ram:6a5a c9             ret                  	;.
	ram:6a5b 40             ld b,b               	;@
	ram:6a5c 40             ld b,b               	;@
	ram:6a5d 30 00          jr nc,l6a5fh         	;0 .
l6a5fh:
	ram:6a5f 31 00 32       ld sp,03200h         	;1 . 2
	ram:6a62 00             nop                  	;.
l6a63h:
	ram:6a63 33             inc sp               	;3
	ram:6a64 00             nop                  	;.
l6a65h:
	ram:6a65 34             inc (hl)             	;4
	ram:6a66 00             nop                  	;.
l6a67h:
	ram:6a67 35             dec (hl)             	;5
	ram:6a68 00             nop                  	;.
l6a69h:
	ram:6a69 36 00          ld (hl),000h         	;6 .
l6a6bh:
	ram:6a6b 37             scf                  	;7
	ram:6a6c 00             nop                  	;.
	ram:6a6d 38 00          jr c,l6a6fh          	;8 .
l6a6fh:
	ram:6a6f 39             add hl,sp            	;9
	ram:6a70 00             nop                  	;.
	ram:6a71 41             ld b,c               	;A
	ram:6a72 78             ld a,b               	;x
	ram:6a73 65             ld h,l               	;e
	ram:6a74 73             ld (hl),e            	;s
	ram:6a75 4f             ld c,a               	;O
	ram:6a76 66             ld h,(hl)            	;f
	ram:6a77 66             ld h,(hl)            	;f
	ram:6a78 00             nop                  	;.
	ram:6a79 41             ld b,c               	;A
	ram:6a7a 78             ld a,b               	;x
	ram:6a7b 65             ld h,l               	;e
	ram:6a7c 73             ld (hl),e            	;s
	ram:6a7d 4f             ld c,a               	;O
	ram:6a7e 6e             ld l,(hl)            	;n
	ram:6a7f 00             nop                  	;.
	ram:6a80 42             ld b,d               	;B
	ram:6a81 69             ld l,c               	;i
	ram:6a82 6e             ld l,(hl)            	;n
	ram:6a83 00             nop                  	;.
	ram:6a84 43             ld b,e               	;C
	ram:6a85 6f             ld l,a               	;o
	ram:6a86 6f             ld l,a               	;o
	ram:6a87 72             ld (hl),d            	;r
	ram:6a88 64             ld h,h               	;d
	ram:6a89 4f             ld c,a               	;O
	ram:6a8a 66             ld h,(hl)            	;f
	ram:6a8b 66             ld h,(hl)            	;f
	ram:6a8c 00             nop                  	;.
	ram:6a8d 43             ld b,e               	;C
	ram:6a8e 6f             ld l,a               	;o
	ram:6a8f 6f             ld l,a               	;o
	ram:6a90 72             ld (hl),d            	;r
	ram:6a91 64             ld h,h               	;d
	ram:6a92 4f             ld c,a               	;O
	ram:6a93 6e             ld l,(hl)            	;n
	ram:6a94 00             nop                  	;.
	ram:6a95 43             ld b,e               	;C
	ram:6a96 79             ld a,c               	;y
	ram:6a97 6c             ld l,h               	;l
	ram:6a98 56             ld d,(hl)            	;V
	ram:6a99 00             nop                  	;.
	ram:6a9a 44             ld b,h               	;D
	ram:6a9b 65             ld h,l               	;e
	ram:6a9c 63             ld h,e               	;c
	ram:6a9d 00             nop                  	;.
	ram:6a9e 44             ld b,h               	;D
	ram:6a9f 65             ld h,l               	;e
	ram:6aa0 67             ld h,a               	;g
	ram:6aa1 72             ld (hl),d            	;r
	ram:6aa2 65             ld h,l               	;e
	ram:6aa3 65             ld h,l               	;e
	ram:6aa4 00             nop                  	;.
	ram:6aa5 44             ld b,h               	;D
	ram:6aa6 69             ld l,c               	;i
	ram:6aa7 66             ld h,(hl)            	;f
	ram:6aa8 45             ld b,l               	;E
	ram:6aa9 71             ld (hl),c            	;q
	ram:6aaa 00             nop                  	;.
	ram:6aab 44             ld b,h               	;D
	ram:6aac 72             ld (hl),d            	;r
	ram:6aad 61             ld h,c               	;a
	ram:6aae 77             ld (hl),a            	;w
	ram:6aaf 44             ld b,h               	;D
	ram:6ab0 6f             ld l,a               	;o
	ram:6ab1 74             ld (hl),h            	;t
	ram:6ab2 00             nop                  	;.
	ram:6ab3 44             ld b,h               	;D
	ram:6ab4 72             ld (hl),d            	;r
	ram:6ab5 61             ld h,c               	;a
	ram:6ab6 77             ld (hl),a            	;w
	ram:6ab7 4c             ld c,h               	;L
	ram:6ab8 69             ld l,c               	;i
	ram:6ab9 6e             ld l,(hl)            	;n
	ram:6aba 65             ld h,l               	;e
	ram:6abb 00             nop                  	;.
	ram:6abc 64             ld h,h               	;d
	ram:6abd 78             ld a,b               	;x
	ram:6abe 44             ld b,h               	;D
	ram:6abf 65             ld h,l               	;e
	ram:6ac0 72             ld (hl),d            	;r
	ram:6ac1 31 00 64       ld sp,l6400h         	;1 . d
	ram:6ac4 78             ld a,b               	;x
	ram:6ac5 4e             ld c,(hl)            	;N
	ram:6ac6 44             ld b,h               	;D
	ram:6ac7 65             ld h,l               	;e
	ram:6ac8 72             ld (hl),d            	;r
	ram:6ac9 00             nop                  	;.
	ram:6aca 45             ld b,l               	;E
	ram:6acb 6e             ld l,(hl)            	;n
	ram:6acc 67             ld h,a               	;g
	ram:6acd 00             nop                  	;.
l6aceh:
	ram:6ace 46             ld b,(hl)            	;F
	ram:6acf 69             ld l,c               	;i
	ram:6ad0 78             ld a,b               	;x
	ram:6ad1 20 00          jr nz,l6ad3h         	;.
l6ad3h:
	ram:6ad3 46             ld b,(hl)            	;F
	ram:6ad4 6c             ld l,h               	;l
	ram:6ad5 6f             ld l,a               	;o
	ram:6ad6 61             ld h,c               	;a
	ram:6ad7 74             ld (hl),h            	;t
	ram:6ad8 00             nop                  	;.
	ram:6ad9 46             ld b,(hl)            	;F
	ram:6ada 75             ld (hl),l            	;u
	ram:6adb 6e             ld l,(hl)            	;n
	ram:6adc 63             ld h,e               	;c
	ram:6add 00             nop                  	;.
	ram:6ade 47             ld b,a               	;G
	ram:6adf 72             ld (hl),d            	;r
	ram:6ae0 69             ld l,c               	;i
	ram:6ae1 64             ld h,h               	;d
	ram:6ae2 4f             ld c,a               	;O
	ram:6ae3 66             ld h,(hl)            	;f
	ram:6ae4 66             ld h,(hl)            	;f
	ram:6ae5 00             nop                  	;.
	ram:6ae6 47             ld b,a               	;G
	ram:6ae7 72             ld (hl),d            	;r
	ram:6ae8 69             ld l,c               	;i
	ram:6ae9 64             ld h,h               	;d
	ram:6aea 4f             ld c,a               	;O
	ram:6aeb 6e             ld l,(hl)            	;n
	ram:6aec 00             nop                  	;.
	ram:6aed 48             ld c,b               	;H
	ram:6aee 65             ld h,l               	;e
	ram:6aef 78             ld a,b               	;x
	ram:6af0 00             nop                  	;.
	ram:6af1 4c             ld c,h               	;L
	ram:6af2 61             ld h,c               	;a
	ram:6af3 62             ld h,d               	;b
	ram:6af4 65             ld h,l               	;e
	ram:6af5 6c             ld l,h               	;l
	ram:6af6 4f             ld c,a               	;O
	ram:6af7 66             ld h,(hl)            	;f
	ram:6af8 66             ld h,(hl)            	;f
	ram:6af9 00             nop                  	;.
	ram:6afa 4c             ld c,h               	;L
	ram:6afb 61             ld h,c               	;a
	ram:6afc 62             ld h,d               	;b
	ram:6afd 65             ld h,l               	;e
	ram:6afe 6c             ld l,h               	;l
	ram:6aff 4f             ld c,a               	;O
	ram:6b00 6e             ld l,(hl)            	;n
	ram:6b01 00             nop                  	;.
	ram:6b02 4e             ld c,(hl)            	;N
	ram:6b03 6f             ld l,a               	;o
	ram:6b04 72             ld (hl),d            	;r
	ram:6b05 6d             ld l,l               	;m
	ram:6b06 61             ld h,c               	;a
	ram:6b07 6c             ld l,h               	;l
	ram:6b08 00             nop                  	;.
	ram:6b09 4f             ld c,a               	;O
	ram:6b0a 63             ld h,e               	;c
	ram:6b0b 74             ld (hl),h            	;t
	ram:6b0c 00             nop                  	;.
	ram:6b0d 50             ld d,b               	;P
	ram:6b0e 61             ld h,c               	;a
	ram:6b0f 72             ld (hl),d            	;r
	ram:6b10 61             ld h,c               	;a
	ram:6b11 6d             ld l,l               	;m
	ram:6b12 00             nop                  	;.
	ram:6b13 50             ld d,b               	;P
	ram:6b14 6f             ld l,a               	;o
	ram:6b15 6c             ld l,h               	;l
	ram:6b16 00             nop                  	;.
	ram:6b17 50             ld d,b               	;P
	ram:6b18 6f             ld l,a               	;o
	ram:6b19 6c             ld l,h               	;l
	ram:6b1a 61             ld h,c               	;a
	ram:6b1b 72             ld (hl),d            	;r
	ram:6b1c 43             ld b,e               	;C
	ram:6b1d 00             nop                  	;.
	ram:6b1e 50             ld d,b               	;P
	ram:6b1f 6f             ld l,a               	;o
	ram:6b20 6c             ld l,h               	;l
	ram:6b21 61             ld h,c               	;a
	ram:6b22 72             ld (hl),d            	;r
	ram:6b23 47             ld b,a               	;G
	ram:6b24 43             ld b,e               	;C
	ram:6b25 00             nop                  	;.
	ram:6b26 52             ld d,d               	;R
	ram:6b27 61             ld h,c               	;a
	ram:6b28 64             ld h,h               	;d
	ram:6b29 69             ld l,c               	;i
	ram:6b2a 61             ld h,c               	;a
	ram:6b2b 6e             ld l,(hl)            	;n
	ram:6b2c 00             nop                  	;.
	ram:6b2d 52             ld d,d               	;R
	ram:6b2e 65             ld h,l               	;e
	ram:6b2f 63             ld h,e               	;c
	ram:6b30 74             ld (hl),h            	;t
	ram:6b31 43             ld b,e               	;C
	ram:6b32 00             nop                  	;.
	ram:6b33 52             ld d,d               	;R
	ram:6b34 65             ld h,l               	;e
	ram:6b35 63             ld h,e               	;c
	ram:6b36 74             ld (hl),h            	;t
	ram:6b37 47             ld b,a               	;G
	ram:6b38 43             ld b,e               	;C
	ram:6b39 00             nop                  	;.
	ram:6b3a 52             ld d,d               	;R
	ram:6b3b 65             ld h,l               	;e
	ram:6b3c 63             ld h,e               	;c
	ram:6b3d 74             ld (hl),h            	;t
	ram:6b3e 56             ld d,(hl)            	;V
	ram:6b3f 00             nop                  	;.
	ram:6b40 53             ld d,e               	;S
	ram:6b41 63             ld h,e               	;c
	ram:6b42 69             ld l,c               	;i
	ram:6b43 00             nop                  	;.
	ram:6b44 53             ld d,e               	;S
	ram:6b45 65             ld h,l               	;e
	ram:6b46 71             ld (hl),c            	;q
	ram:6b47 47             ld b,a               	;G
	ram:6b48 00             nop                  	;.
	ram:6b49 53             ld d,e               	;S
	ram:6b4a 69             ld l,c               	;i
	ram:6b4b 6d             ld l,l               	;m
	ram:6b4c 75             ld (hl),l            	;u
	ram:6b4d 6c             ld l,h               	;l
	ram:6b4e 47             ld b,a               	;G
	ram:6b4f 00             nop                  	;.
	ram:6b50 53             ld d,e               	;S
	ram:6b51 70             ld (hl),b            	;p
	ram:6b52 68             ld l,b               	;h
	ram:6b53 65             ld h,l               	;e
	ram:6b54 72             ld (hl),d            	;r
	ram:6b55 65             ld h,l               	;e
	ram:6b56 56             ld d,(hl)            	;V
	ram:6b57 00             nop                  	;.
sub_6b58h:
	ram:6b58 f5             push af              	;.
	ram:6b59 c5             push bc              	;.
	ram:6b5a d5             push de              	;.
	ram:6b5b e5             push hl              	;.
	ram:6b5c dd e5          push ix              	;. .
	ram:6b5e fd cb 02 96    res 2,(iy+002h)      	;. . . .
	ram:6b62 fd cb 0d 4e    bit 1,(iy+00dh)      	;. . . N
	ram:6b66 28 04          jr z,l6b6ch          	;( .
	ram:6b68 cd d1 70       call sub_70d1h       	;. . p
	ram:6b6b 77             ld (hl),a            	;w
l6b6ch:
	ram:6b6c b7             or a                 	;.
	ram:6b6d 28 04          jr z,l6b73h          	;( .
	ram:6b6f fe e1          cp 0e1h              	;. .
	ram:6b71 38 02          jr c,l6b75h          	;8 .
l6b73h:
	ram:6b73 3e d0          ld a,0d0h            	;> .
l6b75h:
	ram:6b75 11 56 73       ld de,l7356h         	;. V s
	ram:6b78 cd b2 71       call sub_71b2h       	;. . q
	ram:6b7b e5             push hl              	;.
	ram:6b7c dd e1          pop ix               	;. .
	ram:6b7e 2a 0b 80       ld hl,(0800bh)       	;* . .
	ram:6b81 2e 00          ld l,000h            	;. .
	ram:6b83 cb 3c          srl h                	;. <
	ram:6b85 cb 1d          rr l                 	;. .
	ram:6b87 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:6b8a 47             ld b,a               	;G
	ram:6b8b e6 fc          and 0fch             	;. .
	ram:6b8d 0f             rrca                 	;.
	ram:6b8e 5f             ld e,a               	;_
	ram:6b8f 0f             rrca                 	;.
	ram:6b90 83             add a,e              	;.
	ram:6b91 85             add a,l              	;.
	ram:6b92 6f             ld l,a               	;o
	ram:6b93 11 00 fc       ld de,0fc00h         	;. . .
	ram:6b96 19             add hl,de            	;.
	ram:6b97 78             ld a,b               	;x
	ram:6b98 06 08          ld b,008h            	;. .
	ram:6b9a 11 10 00       ld de,00010h         	;. . .
	ram:6b9d e6 03          and 003h             	;. .
	ram:6b9f 28 12          jr z,l6bb3h          	;( .
	ram:6ba1 3d             dec a                	;=
	ram:6ba2 28 2e          jr z,l6bd2h          	;( .
	ram:6ba4 3d             dec a                	;=
	ram:6ba5 28 4d          jr z,l6bf4h          	;( M
	ram:6ba7 23             inc hl               	;#
	ram:6ba8 23             inc hl               	;#
l6ba9h:
	ram:6ba9 7e             ld a,(hl)            	;~
	ram:6baa cd 1a 6c       call sub_6c1ah       	;. . l
	ram:6bad 77             ld (hl),a            	;w
	ram:6bae 19             add hl,de            	;.
	ram:6baf 10 f8          djnz l6ba9h          	;. .
	ram:6bb1 18 60          jr l6c13h            	;. `
l6bb3h:
	ram:6bb3 0e 00          ld c,000h            	;. .
	ram:6bb5 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:6bb8 fe 14          cp 014h              	;. .
	ram:6bba 20 02          jr nz,l6bbeh         	;.
	ram:6bbc cb c1          set 0,c              	;. .
l6bbeh:
	ram:6bbe 7e             ld a,(hl)            	;~
	ram:6bbf 0f             rrca                 	;.
	ram:6bc0 0f             rrca                 	;.
	ram:6bc1 cd 1a 6c       call sub_6c1ah       	;. . l
	ram:6bc4 07             rlca                 	;.
	ram:6bc5 07             rlca                 	;.
	ram:6bc6 cb 41          bit 0,c              	;. A
	ram:6bc8 28 02          jr z,l6bcch          	;( .
	ram:6bca e6 fd          and 0fdh             	;. .
l6bcch:
	ram:6bcc 77             ld (hl),a            	;w
	ram:6bcd 19             add hl,de            	;.
	ram:6bce 10 ee          djnz l6bbeh          	;. .
	ram:6bd0 18 41          jr l6c13h            	;. A
l6bd2h:
	ram:6bd2 c5             push bc              	;.
	ram:6bd3 cd 1a 6c       call sub_6c1ah       	;. . l
	ram:6bd6 0f             rrca                 	;.
	ram:6bd7 0f             rrca                 	;.
	ram:6bd8 0f             rrca                 	;.
	ram:6bd9 0f             rrca                 	;.
	ram:6bda 4f             ld c,a               	;O
	ram:6bdb e6 03          and 003h             	;. .
	ram:6bdd 47             ld b,a               	;G
	ram:6bde 7e             ld a,(hl)            	;~
	ram:6bdf e6 fc          and 0fch             	;. .
	ram:6be1 b0             or b                 	;.
	ram:6be2 77             ld (hl),a            	;w
	ram:6be3 23             inc hl               	;#
	ram:6be4 79             ld a,c               	;y
	ram:6be5 e6 f0          and 0f0h             	;. .
	ram:6be7 47             ld b,a               	;G
	ram:6be8 7e             ld a,(hl)            	;~
	ram:6be9 e6 0f          and 00fh             	;. .
	ram:6beb b0             or b                 	;.
	ram:6bec 77             ld (hl),a            	;w
	ram:6bed 2b             dec hl               	;+
	ram:6bee c1             pop bc               	;.
	ram:6bef 19             add hl,de            	;.
	ram:6bf0 10 e0          djnz l6bd2h          	;. .
	ram:6bf2 18 1f          jr l6c13h            	;. .
l6bf4h:
	ram:6bf4 23             inc hl               	;#
l6bf5h:
	ram:6bf5 c5             push bc              	;.
	ram:6bf6 cd 1a 6c       call sub_6c1ah       	;. . l
	ram:6bf9 0f             rrca                 	;.
	ram:6bfa 0f             rrca                 	;.
	ram:6bfb 4f             ld c,a               	;O
	ram:6bfc e6 0f          and 00fh             	;. .
	ram:6bfe 47             ld b,a               	;G
	ram:6bff 7e             ld a,(hl)            	;~
	ram:6c00 e6 f0          and 0f0h             	;. .
	ram:6c02 b0             or b                 	;.
	ram:6c03 77             ld (hl),a            	;w
	ram:6c04 23             inc hl               	;#
	ram:6c05 79             ld a,c               	;y
	ram:6c06 e6 c0          and 0c0h             	;. .
	ram:6c08 47             ld b,a               	;G
	ram:6c09 7e             ld a,(hl)            	;~
	ram:6c0a e6 3f          and 03fh             	;. ?
	ram:6c0c b0             or b                 	;.
	ram:6c0d 77             ld (hl),a            	;w
	ram:6c0e 2b             dec hl               	;+
	ram:6c0f c1             pop bc               	;.
	ram:6c10 19             add hl,de            	;.
	ram:6c11 10 e2          djnz l6bf5h          	;. .
l6c13h:
	ram:6c13 dd e1          pop ix               	;. .
l6c15h:
	ram:6c15 e1             pop hl               	;.
	ram:6c16 d1             pop de               	;.
	ram:6c17 c1             pop bc               	;.
	ram:6c18 f1             pop af               	;.
	ram:6c19 c9             ret                  	;.
sub_6c1ah:
	ram:6c1a e6 c0          and 0c0h             	;. .
	ram:6c1c 05             dec b                	;.
	ram:6c1d 28 05          jr z,l6c24h          	;( .
	ram:6c1f dd b6 00       or (ix+000h)         	;. . .
	ram:6c22 dd 23          inc ix               	;. #
l6c24h:
	ram:6c24 04             inc b                	;.
	ram:6c25 fd cb 05 5e    bit 3,(iy+005h)      	;. . . ^
	ram:6c29 c8             ret z                	;.
	ram:6c2a ee 3f          xor 03fh             	;. ?
	ram:6c2c c9             ret                  	;.
sub_6c2dh:
	ram:6c2d f5             push af              	;.
	ram:6c2e e5             push hl              	;.
	ram:6c2f fe d6          cp 0d6h              	;. .
	ram:6c31 20 12          jr nz,l6c45h         	;.
	ram:6c33 cd 84 70       call sub_7084h       	;. . p
	ram:6c36 cd 65 6e       call sub_6e65h       	;. e n
	ram:6c39 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6c3c 6f             ld l,a               	;o
	ram:6c3d 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6c40 bd             cp l                 	;.
	ram:6c41 30 0f          jr nc,l6c52h         	;0 .
	ram:6c43 3e 3a          ld a,03ah            	;> :
l6c45h:
	ram:6c45 cd 58 6b       call sub_6b58h       	;. X k
	ram:6c48 21 0d 80       ld hl,0800dh         	;! . .
	ram:6c4b 34             inc (hl)             	;4
	ram:6c4c 7e             ld a,(hl)            	;~
	ram:6c4d fe 15          cp 015h              	;. .
	ram:6c4f d4 65 6e       call nc,sub_6e65h    	;. e n
l6c52h:
	ram:6c52 e1             pop hl               	;.
	ram:6c53 f1             pop af               	;.
	ram:6c54 c9             ret                  	;.
	ram:6c55 c5             push bc              	;.
	ram:6c56 d5             push de              	;.
	ram:6c57 e5             push hl              	;.
	ram:6c58 21 0d 80       ld hl,0800dh         	;! . .
	ram:6c5b fe d6          cp 0d6h              	;. .
	ram:6c5d 20 36          jr nz,l6c95h         	;6
	ram:6c5f 35             dec (hl)             	;5
	ram:6c60 3e 3a          ld a,03ah            	;> :
	ram:6c62 cd 58 6b       call sub_6b58h       	;. X k
	ram:6c65 cd d4 6e       call sub_6ed4h       	;. . n
	ram:6c68 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6c6b 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:6c6e be             cp (hl)              	;.
	ram:6c6f fa ab 6c       jp m,l6cabh          	;. . l
	ram:6c72 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:6c75 ed 5b 19 8b    ld de,(08b19h)       	;. [ . .
l6c79h:
	ram:6c79 2b             dec hl               	;+
	ram:6c7a cd 8e 00       call 0008eh          	;. . .
	ram:6c7d 38 05          jr c,l6c84h          	;8 .
	ram:6c7f 7e             ld a,(hl)            	;~
	ram:6c80 fe d6          cp 0d6h              	;. .
	ram:6c82 20 f5          jr nz,l6c79h         	;.
l6c84h:
	ram:6c84 eb             ex de,hl             	;.
	ram:6c85 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:6c88 b7             or a                 	;.
	ram:6c89 ed 52          sbc hl,de            	;. R
	ram:6c8b 3e 15          ld a,015h            	;> .
	ram:6c8d cd 9c 00       call 0009ch          	;. . .
	ram:6c90 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6c93 18 1d          jr l6cb2h            	;. .
l6c95h:
	ram:6c95 47             ld b,a               	;G
	ram:6c96 7e             ld a,(hl)            	;~
	ram:6c97 3d             dec a                	;=
	ram:6c98 fa 9e 6c       jp m,l6c9eh          	;. . l
	ram:6c9b 77             ld (hl),a            	;w
	ram:6c9c 18 03          jr l6ca1h            	;. .
l6c9eh:
	ram:6c9e cd d4 6e       call sub_6ed4h       	;. . n
l6ca1h:
	ram:6ca1 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6ca4 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:6ca7 be             cp (hl)              	;.
	ram:6ca8 f2 ae 6c       jp p,l6caeh          	;. . l
l6cabh:
	ram:6cab b7             or a                 	;.
	ram:6cac 18 05          jr l6cb3h            	;. .
l6caeh:
	ram:6cae 78             ld a,b               	;x
	ram:6caf cd 58 6b       call sub_6b58h       	;. X k
l6cb2h:
	ram:6cb2 37             scf                  	;7
l6cb3h:
	ram:6cb3 e1             pop hl               	;.
	ram:6cb4 d1             pop de               	;.
	ram:6cb5 c1             pop bc               	;.
	ram:6cb6 c9             ret                  	;.
	ram:6cb7 c5             push bc              	;.
	ram:6cb8 11 86 80       ld de,08086h         	;. . .
	ram:6cbb 06 05          ld b,005h            	;. .
l6cbdh:
	ram:6cbd cd 9a 00       call 0009ah          	;. . .
	ram:6cc0 c6 30          add a,030h           	;. 0
	ram:6cc2 12             ld (de),a            	;.
	ram:6cc3 1b             dec de               	;.
	ram:6cc4 10 f7          djnz l6cbdh          	;. .
	ram:6cc6 97             sub a                	;.
	ram:6cc7 32 87 80       ld (08087h),a        	;2 . .
	ram:6cca eb             ex de,hl             	;.
	ram:6ccb 3e 30          ld a,030h            	;> 0
	ram:6ccd 06 04          ld b,004h            	;. .
l6ccfh:
	ram:6ccf 23             inc hl               	;#
	ram:6cd0 be             cp (hl)              	;.
	ram:6cd1 20 04          jr nz,l6cd7h         	;.
	ram:6cd3 36 20          ld (hl),020h         	;6  
	ram:6cd5 10 f8          djnz l6ccfh          	;. .
l6cd7h:
	ram:6cd7 21 82 80       ld hl,08082h         	;! . .
	ram:6cda c1             pop bc               	;.
sub_6cdbh:
	ram:6cdb c5             push bc              	;.
	ram:6cdc f5             push af              	;.
	ram:6cdd 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6ce0 47             ld b,a               	;G
l6ce1h:
	ram:6ce1 7e             ld a,(hl)            	;~
	ram:6ce2 23             inc hl               	;#
	ram:6ce3 b7             or a                 	;.
	ram:6ce4 37             scf                  	;7
	ram:6ce5 28 09          jr z,l6cf0h          	;( .
	ram:6ce7 cd 2d 6c       call sub_6c2dh       	;. - l
	ram:6cea 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6ced b8             cp b                 	;.
	ram:6cee 38 f1          jr c,l6ce1h          	;8 .
l6cf0h:
	ram:6cf0 c1             pop bc               	;.
	ram:6cf1 78             ld a,b               	;x
	ram:6cf2 c1             pop bc               	;.
	ram:6cf3 c9             ret                  	;.
	ram:6cf4 46             ld b,(hl)            	;F
	ram:6cf5 23             inc hl               	;#
l6cf6h:
	ram:6cf6 7e             ld a,(hl)            	;~
	ram:6cf7 23             inc hl               	;#
	ram:6cf8 cd 2d 6c       call sub_6c2dh       	;. - l
	ram:6cfb 10 f9          djnz l6cf6h          	;. .
	ram:6cfd c9             ret                  	;.
	ram:6cfe 4f             ld c,a               	;O
	ram:6cff 2a 1b 8b       ld hl,(08b1bh)       	;* . .
	ram:6d02 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
	ram:6d06 cd 8e 00       call 0008eh          	;. . .
	ram:6d09 20 17          jr nz,l6d22h         	;.
	ram:6d0b 3a 9a 81       ld a,(0819ah)        	;: . .
	ram:6d0e fe 07          cp 007h              	;. .
	ram:6d10 20 0f          jr nz,l6d21h         	;.
	ram:6d12 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6d15 b7             or a                 	;.
	ram:6d16 20 09          jr nz,l6d21h         	;.
	ram:6d18 79             ld a,c               	;y
	ram:6d19 cd 58 6b       call sub_6b58h       	;. X k
	ram:6d1c cd 51 3b       call 03b51h          	;. Q ;
	ram:6d1f 79             ld a,c               	;y
	ram:6d20 c9             ret                  	;.
l6d21h:
	ram:6d21 79             ld a,c               	;y
l6d22h:
	ram:6d22 c3 2d 6c       jp sub_6c2dh         	;. - l
sub_6d25h:
	ram:6d25 c5             push bc              	;.
	ram:6d26 d5             push de              	;.
	ram:6d27 e5             push hl              	;.
	ram:6d28 4f             ld c,a               	;O
	ram:6d29 2a 36 8b       ld hl,(08b36h)       	;* 6 .
	ram:6d2c ed 5b 34 8b    ld de,(08b34h)       	;. [ 4 .
	ram:6d30 b7             or a                 	;.
	ram:6d31 ed 52          sbc hl,de            	;. R
	ram:6d33 f2 3c 6d       jp p,l6d3ch          	;. < m
	ram:6d36 fd cb 0e d6    set 2,(iy+00eh)      	;. . . .
	ram:6d3a 18 5c          jr l6d98h            	;. \
l6d3ch:
	ram:6d3c 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:6d3f 5f             ld e,a               	;_
	ram:6d40 16 00          ld d,000h            	;. .
	ram:6d42 cd 8e 00       call 0008eh          	;. . .
	ram:6d45 38 07          jr c,l6d4eh          	;8 .
	ram:6d47 37             scf                  	;7
	ram:6d48 fd cb 0e de    set 3,(iy+00eh)      	;. . . .
	ram:6d4c 18 4a          jr l6d98h            	;. J
l6d4eh:
	ram:6d4e 7d             ld a,l               	;}
	ram:6d4f 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6d52 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:6d55 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:6d58 5f             ld e,a               	;_
	ram:6d59 19             add hl,de            	;.
	ram:6d5a eb             ex de,hl             	;.
	ram:6d5b 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:6d5e cd 8e 00       call 0008eh          	;. . .
	ram:6d61 fa 9c 6d       jp m,l6d9ch          	;. . m
	ram:6d64 2a 32 8b       ld hl,(08b32h)       	;* 2 .
	ram:6d67 11 15 00       ld de,00015h         	;. . .
	ram:6d6a 19             add hl,de            	;.
	ram:6d6b eb             ex de,hl             	;.
	ram:6d6c 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:6d6f cd 8e 00       call 0008eh          	;. . .
	ram:6d72 f2 b0 6d       jp p,l6db0h          	;. . m
	ram:6d75 ed 5b 32 8b    ld de,(08b32h)       	;. [ 2 .
	ram:6d79 b7             or a                 	;.
	ram:6d7a ed 52          sbc hl,de            	;. R
	ram:6d7c 7d             ld a,l               	;}
	ram:6d7d 21 31 8b       ld hl,08b31h         	;! 1 .
	ram:6d80 be             cp (hl)              	;.
	ram:6d81 20 06          jr nz,l6d89h         	;.
	ram:6d83 fd cb 0e 46    bit 0,(iy+00eh)      	;. . . F
	ram:6d87 20 08          jr nz,l6d91h         	;.
l6d89h:
	ram:6d89 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6d8c 79             ld a,c               	;y
	ram:6d8d cd 2d 6c       call sub_6c2dh       	;. - l
	ram:6d90 b7             or a                 	;.
l6d91h:
	ram:6d91 2a 38 8b       ld hl,(08b38h)       	;* 8 .
	ram:6d94 23             inc hl               	;#
	ram:6d95 22 38 8b       ld (08b38h),hl       	;" 8 .
l6d98h:
	ram:6d98 e1             pop hl               	;.
	ram:6d99 d1             pop de               	;.
	ram:6d9a c1             pop bc               	;.
	ram:6d9b c9             ret                  	;.
l6d9ch:
	ram:6d9c b7             or a                 	;.
	ram:6d9d fd cb 0e 46    bit 0,(iy+00eh)      	;. . . F
	ram:6da1 20 ee          jr nz,l6d91h         	;.
	ram:6da3 fd cb 0e c6    set 0,(iy+00eh)      	;. . . .
	ram:6da7 fd cb 0e e6    set 4,(iy+00eh)      	;. . . .
	ram:6dab 3a 31 8b       ld a,(08b31h)        	;: 1 .
	ram:6dae 18 11          jr l6dc1h            	;. .
l6db0h:
	ram:6db0 37             scf                  	;7
	ram:6db1 fd cb 0e 4e    bit 1,(iy+00eh)      	;. . . N
	ram:6db5 20 da          jr nz,l6d91h         	;.
	ram:6db7 fd cb 0e ce    set 1,(iy+00eh)      	;. . . .
	ram:6dbb fd cb 0e ee    set 5,(iy+00eh)      	;. . . .
	ram:6dbf 3e 14          ld a,014h            	;> .
l6dc1h:
	ram:6dc1 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6dc4 3e ce          ld a,0ceh            	;> .
	ram:6dc6 cd 58 6b       call sub_6b58h       	;. X k
	ram:6dc9 18 c6          jr l6d91h            	;. .
	ram:6dcb ed 5b 0c 80    ld de,(0800ch)       	;. [ . .
	ram:6dcf d5             push de              	;.
l6dd0h:
	ram:6dd0 7e             ld a,(hl)            	;~
	ram:6dd1 b7             or a                 	;.
	ram:6dd2 28 06          jr z,l6ddah          	;( .
	ram:6dd4 cd 25 6d       call sub_6d25h       	;. % m
	ram:6dd7 23             inc hl               	;#
	ram:6dd8 30 f6          jr nc,l6dd0h         	;0 .
l6ddah:
	ram:6dda e1             pop hl               	;.
	ram:6ddb 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6dde c9             ret                  	;.
	ram:6ddf ed 5b 0c 80    ld de,(0800ch)       	;. [ . .
	ram:6de3 d5             push de              	;.
l6de4h:
	ram:6de4 7e             ld a,(hl)            	;~
	ram:6de5 b7             or a                 	;.
	ram:6de6 28 08          jr z,l6df0h          	;( .
	ram:6de8 cd 25 6d       call sub_6d25h       	;. % m
	ram:6deb 23             inc hl               	;#
	ram:6dec 30 f6          jr nc,l6de4h         	;0 .
	ram:6dee 18 07          jr l6df7h            	;. .
l6df0h:
	ram:6df0 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:6df3 b7             or a                 	;.
	ram:6df4 c4 84 70       call nz,sub_7084h    	;. . p
l6df7h:
	ram:6df7 e1             pop hl               	;.
	ram:6df8 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6dfb c9             ret                  	;.
	ram:6dfc 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:6dff e5             push hl              	;.
	ram:6e00 2a 1d 8b       ld hl,(08b1dh)       	;* . .
	ram:6e03 ed 5b 1f 8b    ld de,(08b1fh)       	;. [ . .
l6e07h:
	ram:6e07 cd 8e 00       call 0008eh          	;. . .
	ram:6e0a 28 09          jr z,l6e15h          	;( .
	ram:6e0c 7e             ld a,(hl)            	;~
	ram:6e0d cd 25 6d       call sub_6d25h       	;. % m
	ram:6e10 23             inc hl               	;#
	ram:6e11 30 f4          jr nc,l6e07h         	;0 .
	ram:6e13 18 07          jr l6e1ch            	;. .
l6e15h:
	ram:6e15 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:6e18 b7             or a                 	;.
	ram:6e19 c4 84 70       call nz,sub_7084h    	;. . p
l6e1ch:
	ram:6e1c e1             pop hl               	;.
	ram:6e1d 22 0c 80       ld (0800ch),hl       	;" . .
	ram:6e20 c9             ret                  	;.
sub_6e21h:
	ram:6e21 21 00 00       ld hl,00000h         	;! . .
	ram:6e24 22 36 8b       ld (08b36h),hl       	;" 6 .
	ram:6e27 22 38 8b       ld (08b38h),hl       	;" 8 .
	ram:6e2a c9             ret                  	;.
	ram:6e2b cd 21 6e       call sub_6e21h       	;. ! n
	ram:6e2e 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6e31 5f             ld e,a               	;_
	ram:6e32 54             ld d,h               	;T
	ram:6e33 b7             or a                 	;.
	ram:6e34 ed 52          sbc hl,de            	;. R
	ram:6e36 22 34 8b       ld (08b34h),hl       	;" 4 .
	ram:6e39 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:6e3c 32 31 8b       ld (08b31h),a        	;2 1 .
	ram:6e3f 5f             ld e,a               	;_
	ram:6e40 21 00 00       ld hl,00000h         	;! . .
	ram:6e43 b7             or a                 	;.
	ram:6e44 ed 52          sbc hl,de            	;. R
	ram:6e46 22 32 8b       ld (08b32h),hl       	;" 2 .
	ram:6e49 fd cb 0e 8e    res 1,(iy+00eh)      	;. . . .
	ram:6e4d fd cb 0e 86    res 0,(iy+00eh)      	;. . . .
	ram:6e51 c9             ret                  	;.
sub_6e52h:
	ram:6e52 d5             push de              	;.
	ram:6e53 e5             push hl              	;.
	ram:6e54 cd af 71       call sub_71afh       	;. . q
	ram:6e57 7e             ld a,(hl)            	;~
	ram:6e58 e1             pop hl               	;.
	ram:6e59 d1             pop de               	;.
	ram:6e5a c9             ret                  	;.
sub_6e5bh:
	ram:6e5b e5             push hl              	;.
	ram:6e5c 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6e5f 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:6e62 be             cp (hl)              	;.
	ram:6e63 e1             pop hl               	;.
	ram:6e64 c9             ret                  	;.
sub_6e65h:
	ram:6e65 f5             push af              	;.
	ram:6e66 c5             push bc              	;.
	ram:6e67 d5             push de              	;.
	ram:6e68 e5             push hl              	;.
	ram:6e69 dd e5          push ix              	;. .
	ram:6e6b 97             sub a                	;.
	ram:6e6c 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6e6f 21 0c 80       ld hl,0800ch         	;! . .
	ram:6e72 dd 21 2f 8b    ld ix,08b2fh         	;. ! / .
	ram:6e76 7e             ld a,(hl)            	;~
	ram:6e77 3c             inc a                	;<
	ram:6e78 dd be 01       cp (ix+001h)         	;. . .
	ram:6e7b 38 53          jr c,l6ed0h          	;8 S
	ram:6e7d fd cb 0d 56    bit 2,(iy+00dh)      	;. . . V
	ram:6e81 28 4d          jr z,l6ed0h          	;( M
	ram:6e83 fd cb 05 d6    set 2,(iy+005h)      	;. . . .
	ram:6e87 dd 66 00       ld h,(ix+000h)       	;. f .
	ram:6e8a 2e 00          ld l,000h            	;. .
	ram:6e8c cb 3c          srl h                	;. <
	ram:6e8e cb 1d          rr l                 	;. .
	ram:6e90 11 00 fc       ld de,0fc00h         	;. . .
	ram:6e93 19             add hl,de            	;.
	ram:6e94 54             ld d,h               	;T
	ram:6e95 5d             ld e,l               	;]
	ram:6e96 01 80 00       ld bc,00080h         	;. . .
	ram:6e99 09             add hl,bc            	;.
	ram:6e9a cd dc 6f       call sub_6fdch       	;. . o
	ram:6e9d ed b0          ldir                 	;. .
	ram:6e9f 62             ld h,d               	;b
	ram:6ea0 6b             ld l,e               	;k
	ram:6ea1 13             inc de               	;.
	ram:6ea2 71             ld (hl),c            	;q
	ram:6ea3 01 7f 00       ld bc,0007fh         	;. . .
	ram:6ea6 ed b0          ldir                 	;. .
	ram:6ea8 fd cb 0d 4e    bit 1,(iy+00dh)      	;. . . N
	ram:6eac 28 23          jr z,l6ed1h          	;( #
	ram:6eae dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:6eb1 cd 0e 73       call sub_730eh       	;. . s
	ram:6eb4 6f             ld l,a               	;o
	ram:6eb5 26 00          ld h,000h            	;& .
	ram:6eb7 11 df 80       ld de,080dfh         	;. . .
	ram:6eba 19             add hl,de            	;.
	ram:6ebb 5d             ld e,l               	;]
	ram:6ebc 54             ld d,h               	;T
	ram:6ebd 01 15 00       ld bc,00015h         	;. . .
	ram:6ec0 09             add hl,bc            	;.
	ram:6ec1 cd eb 6f       call sub_6febh       	;. . o
	ram:6ec4 ed b0          ldir                 	;. .
	ram:6ec6 06 15          ld b,015h            	;. .
	ram:6ec8 3e 20          ld a,020h            	;>  
l6ecah:
	ram:6eca 12             ld (de),a            	;.
	ram:6ecb 13             inc de               	;.
	ram:6ecc 10 fc          djnz l6ecah          	;. .
	ram:6ece 18 01          jr l6ed1h            	;. .
l6ed0h:
	ram:6ed0 77             ld (hl),a            	;w
l6ed1h:
	ram:6ed1 c3 13 6c       jp l6c13h            	;. . l
sub_6ed4h:
	ram:6ed4 f5             push af              	;.
	ram:6ed5 d5             push de              	;.
	ram:6ed6 e5             push hl              	;.
	ram:6ed7 3e 14          ld a,014h            	;> .
	ram:6ed9 32 0d 80       ld (0800dh),a        	;2 . .
	ram:6edc 11 0c 80       ld de,0800ch         	;. . .
	ram:6edf 1a             ld a,(de)            	;.
	ram:6ee0 3d             dec a                	;=
	ram:6ee1 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:6ee4 be             cp (hl)              	;.
	ram:6ee5 f2 f3 6e       jp p,l6ef3h          	;. . n
	ram:6ee8 fd cb 0d 56    bit 2,(iy+00dh)      	;. . . V
	ram:6eec 28 05          jr z,l6ef3h          	;( .
	ram:6eee cd 7e 6f       call sub_6f7eh       	;. ~ o
	ram:6ef1 18 01          jr l6ef4h            	;. .
l6ef3h:
	ram:6ef3 12             ld (de),a            	;.
l6ef4h:
	ram:6ef4 e1             pop hl               	;.
	ram:6ef5 d1             pop de               	;.
	ram:6ef6 f1             pop af               	;.
	ram:6ef7 c9             ret                  	;.
sub_6ef8h:
	ram:6ef8 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6efb 3c             inc a                	;<
	ram:6efc 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:6eff be             cp (hl)              	;.
	ram:6f00 30 04          jr nc,sub_6f06h      	;0 .
	ram:6f02 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6f05 c9             ret                  	;.
sub_6f06h:
	ram:6f06 f5             push af              	;.
	ram:6f07 c5             push bc              	;.
	ram:6f08 d5             push de              	;.
	ram:6f09 e5             push hl              	;.
	ram:6f0a dd e5          push ix              	;. .
	ram:6f0c dd 21 2f 8b    ld ix,08b2fh         	;. ! / .
	ram:6f10 dd 66 00       ld h,(ix+000h)       	;. f .
	ram:6f13 2e 00          ld l,000h            	;. .
	ram:6f15 cb 3c          srl h                	;. <
	ram:6f17 cb 1d          rr l                 	;. .
	ram:6f19 11 00 fc       ld de,0fc00h         	;. . .
	ram:6f1c 19             add hl,de            	;.
	ram:6f1d 5d             ld e,l               	;]
	ram:6f1e 54             ld d,h               	;T
	ram:6f1f 01 80 00       ld bc,00080h         	;. . .
	ram:6f22 09             add hl,bc            	;.
	ram:6f23 cd dc 6f       call sub_6fdch       	;. . o
	ram:6f26 ed b0          ldir                 	;. .
	ram:6f28 6b             ld l,e               	;k
	ram:6f29 62             ld h,d               	;b
	ram:6f2a 13             inc de               	;.
	ram:6f2b 71             ld (hl),c            	;q
	ram:6f2c 01 7f 00       ld bc,0007fh         	;. . .
	ram:6f2f ed b0          ldir                 	;. .
	ram:6f31 fd cb 0d 4e    bit 1,(iy+00dh)      	;. . . N
	ram:6f35 ca 13 6c       jp z,l6c13h          	;. . l
	ram:6f38 dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:6f3b cd 0e 73       call sub_730eh       	;. . s
	ram:6f3e 6f             ld l,a               	;o
	ram:6f3f 26 00          ld h,000h            	;& .
	ram:6f41 11 df 80       ld de,080dfh         	;. . .
	ram:6f44 19             add hl,de            	;.
	ram:6f45 5d             ld e,l               	;]
	ram:6f46 54             ld d,h               	;T
	ram:6f47 01 15 00       ld bc,00015h         	;. . .
	ram:6f4a 09             add hl,bc            	;.
	ram:6f4b cd eb 6f       call sub_6febh       	;. . o
	ram:6f4e ed b0          ldir                 	;. .
	ram:6f50 06 15          ld b,015h            	;. .
	ram:6f52 3e 20          ld a,020h            	;>  
l6f54h:
	ram:6f54 12             ld (de),a            	;.
	ram:6f55 13             inc de               	;.
	ram:6f56 10 fc          djnz l6f54h          	;. .
	ram:6f58 c3 13 6c       jp l6c13h            	;. . l
sub_6f5bh:
	ram:6f5b 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6f5e 80             add a,b              	;.
	ram:6f5f d6 07          sub 007h             	;. .
	ram:6f61 fe 01          cp 001h              	;. .
	ram:6f63 f8             ret m                	;.
	ram:6f64 47             ld b,a               	;G
	ram:6f65 21 0c 80       ld hl,0800ch         	;! . .
l6f68h:
	ram:6f68 cd 06 6f       call sub_6f06h       	;. . o
	ram:6f6b 35             dec (hl)             	;5
	ram:6f6c 10 fa          djnz l6f68h          	;. .
	ram:6f6e c9             ret                  	;.
sub_6f6fh:
	ram:6f6f 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:6f72 3d             dec a                	;=
	ram:6f73 21 2f 8b       ld hl,08b2fh         	;! / .
	ram:6f76 be             cp (hl)              	;.
	ram:6f77 fa 7e 6f       jp m,sub_6f7eh       	;. ~ o
	ram:6f7a 32 0c 80       ld (0800ch),a        	;2 . .
	ram:6f7d c9             ret                  	;.
sub_6f7eh:
	ram:6f7e f5             push af              	;.
	ram:6f7f c5             push bc              	;.
	ram:6f80 d5             push de              	;.
	ram:6f81 e5             push hl              	;.
	ram:6f82 dd e5          push ix              	;. .
	ram:6f84 cd 01 72       call sub_7201h       	;. . r
	ram:6f87 fd cb 05 d6    set 2,(iy+005h)      	;. . . .
	ram:6f8b dd 21 2f 8b    ld ix,08b2fh         	;. ! / .
	ram:6f8f dd 66 01       ld h,(ix+001h)       	;. f .
	ram:6f92 2e 00          ld l,000h            	;. .
	ram:6f94 cb 3c          srl h                	;. <
	ram:6f96 cb 1d          rr l                 	;. .
	ram:6f98 11 ff fb       ld de,0fbffh         	;. . .
	ram:6f9b 19             add hl,de            	;.
	ram:6f9c 5d             ld e,l               	;]
	ram:6f9d 54             ld d,h               	;T
	ram:6f9e 01 80 ff       ld bc,0ff80h         	;. . .
	ram:6fa1 09             add hl,bc            	;.
	ram:6fa2 cd dc 6f       call sub_6fdch       	;. . o
	ram:6fa5 ed b8          lddr                 	;. .
	ram:6fa7 6b             ld l,e               	;k
	ram:6fa8 62             ld h,d               	;b
	ram:6fa9 1b             dec de               	;.
	ram:6faa 71             ld (hl),c            	;q
	ram:6fab 01 7f 00       ld bc,0007fh         	;. . .
	ram:6fae ed b8          lddr                 	;. .
	ram:6fb0 cd e9 71       call sub_71e9h       	;. . q
	ram:6fb3 fd cb 0d 4e    bit 1,(iy+00dh)      	;. . . N
	ram:6fb7 28 20          jr z,l6fd9h          	;(  
	ram:6fb9 dd 7e 01       ld a,(ix+001h)       	;. ~ .
	ram:6fbc cd 0e 73       call sub_730eh       	;. . s
	ram:6fbf 6f             ld l,a               	;o
	ram:6fc0 26 00          ld h,000h            	;& .
	ram:6fc2 11 de 80       ld de,080deh         	;. . .
	ram:6fc5 19             add hl,de            	;.
	ram:6fc6 5d             ld e,l               	;]
	ram:6fc7 54             ld d,h               	;T
	ram:6fc8 01 eb ff       ld bc,0ffebh         	;. . .
	ram:6fcb 09             add hl,bc            	;.
	ram:6fcc cd eb 6f       call sub_6febh       	;. . o
	ram:6fcf ed b8          lddr                 	;. .
	ram:6fd1 06 15          ld b,015h            	;. .
	ram:6fd3 3e 20          ld a,020h            	;>  
l6fd5h:
	ram:6fd5 12             ld (de),a            	;.
	ram:6fd6 1b             dec de               	;.
	ram:6fd7 10 fc          djnz l6fd5h          	;. .
l6fd9h:
	ram:6fd9 c3 13 6c       jp l6c13h            	;. . l
sub_6fdch:
	ram:6fdc dd 7e 01       ld a,(ix+001h)       	;. ~ .
	ram:6fdf dd 96 00       sub (ix+000h)        	;. . .
	ram:6fe2 3d             dec a                	;=
	ram:6fe3 47             ld b,a               	;G
	ram:6fe4 0e 00          ld c,000h            	;. .
	ram:6fe6 cb 38          srl b                	;. 8
	ram:6fe8 cb 19          rr c                 	;. .
	ram:6fea c9             ret                  	;.
sub_6febh:
	ram:6feb dd 7e 01       ld a,(ix+001h)       	;. ~ .
	ram:6fee dd 96 00       sub (ix+000h)        	;. . .
	ram:6ff1 3d             dec a                	;=
	ram:6ff2 cd 0e 73       call sub_730eh       	;. . s
	ram:6ff5 4f             ld c,a               	;O
	ram:6ff6 06 00          ld b,000h            	;. .
	ram:6ff8 c9             ret                  	;.
sub_6ff9h:
	ram:6ff9 f5             push af              	;.
	ram:6ffa cd 10 70       call sub_7010h       	;. . p
	ram:6ffd 01 ff 03       ld bc,003ffh         	;. . .
l7000h:
	ram:7000 11 01 fc       ld de,0fc01h         	;. . .
	ram:7003 21 00 fc       ld hl,0fc00h         	;! . .
	ram:7006 36 00          ld (hl),000h         	;6 .
	ram:7008 ed b0          ldir                 	;. .
	ram:700a f1             pop af               	;.
	ram:700b e1             pop hl               	;.
	ram:700c b6             or (hl)              	;.
	ram:700d 77             ld (hl),a            	;w
	ram:700e f1             pop af               	;.
	ram:700f c9             ret                  	;.
sub_7010h:
	ram:7010 d1             pop de               	;.
	ram:7011 21 58 83       ld hl,08358h         	;! X .
	ram:7014 e5             push hl              	;.
	ram:7015 7e             ld a,(hl)            	;~
	ram:7016 e6 01          and 001h             	;. .
	ram:7018 f5             push af              	;.
	ram:7019 cb 86          res 0,(hl)           	;. .
	ram:701b eb             ex de,hl             	;.
	ram:701c e9             jp (hl)              	;.
sub_701dh:
	ram:701d cd f9 6f       call sub_6ff9h       	;. . o
	ram:7020 fd cb 0d 4e    bit 1,(iy+00dh)      	;. . . N
	ram:7024 c8             ret z                	;.
	ram:7025 01 a7 00       ld bc,000a7h         	;. . .
	ram:7028 11 e0 80       ld de,080e0h         	;. . .
	ram:702b 21 df 80       ld hl,080dfh         	;! . .
	ram:702e 36 20          ld (hl),020h         	;6  
	ram:7030 ed b0          ldir                 	;. .
	ram:7032 c9             ret                  	;.
sub_7033h:
	ram:7033 cd c6 70       call sub_70c6h       	;. . p
	ram:7036 cd 10 70       call sub_7010h       	;. . p
	ram:7039 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:703c 67             ld h,a               	;g
	ram:703d 2e 00          ld l,000h            	;. .
	ram:703f cb 3c          srl h                	;. <
	ram:7041 cb 1d          rr l                 	;. .
	ram:7043 11 00 fc       ld de,0fc00h         	;. . .
	ram:7046 19             add hl,de            	;.
	ram:7047 5d             ld e,l               	;]
	ram:7048 54             ld d,h               	;T
	ram:7049 13             inc de               	;.
	ram:704a 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:704d 47             ld b,a               	;G
	ram:704e 3a 30 8b       ld a,(08b30h)        	;: 0 .
	ram:7051 90             sub b                	;.
	ram:7052 47             ld b,a               	;G
	ram:7053 0e 00          ld c,000h            	;. .
	ram:7055 cb 38          srl b                	;. 8
	ram:7057 cb 19          rr c                 	;. .
	ram:7059 0b             dec bc               	;.
	ram:705a 36 00          ld (hl),000h         	;6 .
	ram:705c ed b0          ldir                 	;. .
	ram:705e 47             ld b,a               	;G
	ram:705f f1             pop af               	;.
	ram:7060 e1             pop hl               	;.
	ram:7061 b6             or (hl)              	;.
	ram:7062 77             ld (hl),a            	;w
	ram:7063 fd cb 0d 4e    bit 1,(iy+00dh)      	;. . . N
	ram:7067 c8             ret z                	;.
	ram:7068 78             ld a,b               	;x
	ram:7069 cd 0e 73       call sub_730eh       	;. . s
	ram:706c 3d             dec a                	;=
	ram:706d 4f             ld c,a               	;O
	ram:706e 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:7071 cd 0e 73       call sub_730eh       	;. . s
	ram:7074 6f             ld l,a               	;o
	ram:7075 26 00          ld h,000h            	;& .
	ram:7077 44             ld b,h               	;D
	ram:7078 11 df 80       ld de,080dfh         	;. . .
	ram:707b 19             add hl,de            	;.
	ram:707c 5d             ld e,l               	;]
	ram:707d 54             ld d,h               	;T
	ram:707e 13             inc de               	;.
	ram:707f 36 20          ld (hl),020h         	;6  
	ram:7081 ed b0          ldir                 	;. .
	ram:7083 c9             ret                  	;.
sub_7084h:
	ram:7084 f5             push af              	;.
	ram:7085 c5             push bc              	;.
	ram:7086 d5             push de              	;.
	ram:7087 e5             push hl              	;.
	ram:7088 3a 0d 80       ld a,(0800dh)        	;: . .
	ram:708b f5             push af              	;.
	ram:708c d6 15          sub 015h             	;. .
	ram:708e 30 10          jr nc,l70a0h         	;0 .
	ram:7090 ed 44          neg                  	;. D
	ram:7092 47             ld b,a               	;G
	ram:7093 3e 20          ld a,020h            	;>  
	ram:7095 05             dec b                	;.
	ram:7096 28 05          jr z,l709dh          	;( .
l7098h:
	ram:7098 cd 2d 6c       call sub_6c2dh       	;. - l
	ram:709b 10 fb          djnz l7098h          	;. .
l709dh:
	ram:709d cd 58 6b       call sub_6b58h       	;. X k
l70a0h:
	ram:70a0 f1             pop af               	;.
	ram:70a1 32 0d 80       ld (0800dh),a        	;2 . .
	ram:70a4 c3 15 6c       jp l6c15h            	;. . l
sub_70a7h:
	ram:70a7 f5             push af              	;.
	ram:70a8 e5             push hl              	;.
	ram:70a9 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:70ac e5             push hl              	;.
	ram:70ad 7d             ld a,l               	;}
	ram:70ae 21 30 8b       ld hl,08b30h         	;! 0 .
	ram:70b1 96             sub (hl)             	;.
	ram:70b2 28 0b          jr z,l70bfh          	;( .
l70b4h:
	ram:70b4 cd 84 70       call sub_7084h       	;. . p
	ram:70b7 3c             inc a                	;<
	ram:70b8 28 05          jr z,l70bfh          	;( .
	ram:70ba cd 65 6e       call sub_6e65h       	;. e n
	ram:70bd 18 f5          jr l70b4h            	;. .
l70bfh:
	ram:70bf e1             pop hl               	;.
	ram:70c0 22 0c 80       ld (0800ch),hl       	;" . .
	ram:70c3 e1             pop hl               	;.
	ram:70c4 f1             pop af               	;.
	ram:70c5 c9             ret                  	;.
sub_70c6h:
	ram:70c6 e5             push hl              	;.
	ram:70c7 2a 2f 8b       ld hl,(08b2fh)       	;* / .
	ram:70ca 26 00          ld h,000h            	;& .
	ram:70cc 22 0c 80       ld (0800ch),hl       	;" . .
	ram:70cf e1             pop hl               	;.
	ram:70d0 c9             ret                  	;.
sub_70d1h:
	ram:70d1 f5             push af              	;.
	ram:70d2 c5             push bc              	;.
	ram:70d3 d5             push de              	;.
	ram:70d4 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:70d7 7d             ld a,l               	;}
	ram:70d8 cd 0e 73       call sub_730eh       	;. . s
	ram:70db 84             add a,h              	;.
	ram:70dc 6f             ld l,a               	;o
	ram:70dd 26 00          ld h,000h            	;& .
	ram:70df 11 df 80       ld de,080dfh         	;. . .
	ram:70e2 19             add hl,de            	;.
	ram:70e3 d1             pop de               	;.
	ram:70e4 c1             pop bc               	;.
	ram:70e5 f1             pop af               	;.
	ram:70e6 c9             ret                  	;.
sub_70e7h:
	ram:70e7 c5             push bc              	;.
	ram:70e8 e5             push hl              	;.
	ram:70e9 cd af 71       call sub_71afh       	;. . q
	ram:70ec e5             push hl              	;.
	ram:70ed dd e1          pop ix               	;. .
	ram:70ef dd 5e 00       ld e,(ix+000h)       	;. ^ .
	ram:70f2 16 00          ld d,000h            	;. .
	ram:70f4 21 bf 71       ld hl,l71bfh         	;! . q
	ram:70f7 19             add hl,de            	;.
	ram:70f8 56             ld d,(hl)            	;V
	ram:70f9 d5             push de              	;.
	ram:70fa 2a 33 83       ld hl,(08333h)       	;* 3 .
	ram:70fd 7d             ld a,l               	;}
	ram:70fe 83             add a,e              	;.
	ram:70ff 32 33 83       ld (08333h),a        	;2 3 .
	ram:7102 cb 25          sla l                	;. %
	ram:7104 cb 3c          srl h                	;. <
	ram:7106 cb 1d          rr l                 	;. .
	ram:7108 7d             ld a,l               	;}
	ram:7109 e6 07          and 007h             	;. .
	ram:710b 4f             ld c,a               	;O
	ram:710c cb 3c          srl h                	;. <
	ram:710e cb 1d          rr l                 	;. .
	ram:7110 cb 3c          srl h                	;. <
	ram:7112 cb 1d          rr l                 	;. .
	ram:7114 cb 3c          srl h                	;. <
	ram:7116 cb 1d          rr l                 	;. .
	ram:7118 11 00 fc       ld de,0fc00h         	;. . .
	ram:711b 19             add hl,de            	;.
	ram:711c d1             pop de               	;.
	ram:711d 06 06          ld b,006h            	;. .
	ram:711f fd cb 05 4e    bit 1,(iy+005h)      	;. . . N
	ram:7123 28 01          jr z,l7126h          	;( .
	ram:7125 04             inc b                	;.
l7126h:
	ram:7126 3e 08          ld a,008h            	;> .
	ram:7128 91             sub c                	;.
	ram:7129 dd 96 00       sub (ix+000h)        	;. . .
	ram:712c dd 23          inc ix               	;. #
	ram:712e fa 69 71       jp m,l7169h          	;. i q
	ram:7131 4f             ld c,a               	;O
	ram:7132 0c             inc c                	;.
l7133h:
	ram:7133 c5             push bc              	;.
	ram:7134 78             ld a,b               	;x
	ram:7135 41             ld b,c               	;A
	ram:7136 fe 01          cp 001h              	;. .
	ram:7138 20 0a          jr nz,l7144h         	;.
	ram:713a fd cb 05 4e    bit 1,(iy+005h)      	;. . . N
	ram:713e 28 04          jr z,l7144h          	;( .
	ram:7140 dd 21 ae 71    ld ix,l71aeh         	;. ! . q
l7144h:
	ram:7144 7e             ld a,(hl)            	;~
	ram:7145 18 01          jr l7148h            	;. .
l7147h:
	ram:7147 0f             rrca                 	;.
l7148h:
	ram:7148 10 fd          djnz l7147h          	;. .
	ram:714a fd cb 05 5e    bit 3,(iy+005h)      	;. . . ^
	ram:714e 20 01          jr nz,l7151h         	;.
	ram:7150 a2             and d                	;.
l7151h:
	ram:7151 dd ae 00       xor (ix+000h)        	;. . .
	ram:7154 dd 23          inc ix               	;. #
	ram:7156 41             ld b,c               	;A
	ram:7157 18 01          jr l715ah            	;. .
l7159h:
	ram:7159 07             rlca                 	;.
l715ah:
	ram:715a 10 fd          djnz l7159h          	;. .
	ram:715c 77             ld (hl),a            	;w
	ram:715d d5             push de              	;.
	ram:715e 11 10 00       ld de,00010h         	;. . .
	ram:7161 19             add hl,de            	;.
	ram:7162 d1             pop de               	;.
	ram:7163 c1             pop bc               	;.
	ram:7164 10 cd          djnz l7133h          	;. .
	ram:7166 e1             pop hl               	;.
	ram:7167 c1             pop bc               	;.
	ram:7168 c9             ret                  	;.
l7169h:
	ram:7169 ed 44          neg                  	;. D
	ram:716b 4f             ld c,a               	;O
l716ch:
	ram:716c c5             push bc              	;.
	ram:716d 78             ld a,b               	;x
	ram:716e 41             ld b,c               	;A
	ram:716f fe 01          cp 001h              	;. .
	ram:7171 20 0a          jr nz,l717dh         	;.
	ram:7173 fd cb 05 4e    bit 1,(iy+005h)      	;. . . N
	ram:7177 28 04          jr z,l717dh          	;( .
	ram:7179 dd 21 ae 71    ld ix,l71aeh         	;. ! . q
l717dh:
	ram:717d 7e             ld a,(hl)            	;~
	ram:717e 23             inc hl               	;#
	ram:717f 5e             ld e,(hl)            	;^
l7180h:
	ram:7180 cb 23          sla e                	;. #
	ram:7182 17             rla                  	;.
	ram:7183 30 01          jr nc,l7186h         	;0 .
	ram:7185 1c             inc e                	;.
l7186h:
	ram:7186 10 f8          djnz l7180h          	;. .
	ram:7188 fd cb 05 5e    bit 3,(iy+005h)      	;. . . ^
	ram:718c 20 01          jr nz,l718fh         	;.
	ram:718e a2             and d                	;.
l718fh:
	ram:718f dd ae 00       xor (ix+000h)        	;. . .
	ram:7192 dd 23          inc ix               	;. #
	ram:7194 41             ld b,c               	;A
l7195h:
	ram:7195 cb 3f          srl a                	;. ?
	ram:7197 cb 1b          rr e                 	;. .
	ram:7199 30 02          jr nc,l719dh         	;0 .
	ram:719b c6 80          add a,080h           	;. .
l719dh:
	ram:719d 10 f6          djnz l7195h          	;. .
	ram:719f 73             ld (hl),e            	;s
	ram:71a0 2b             dec hl               	;+
	ram:71a1 77             ld (hl),a            	;w
	ram:71a2 d5             push de              	;.
	ram:71a3 11 10 00       ld de,00010h         	;. . .
	ram:71a6 19             add hl,de            	;.
	ram:71a7 d1             pop de               	;.
	ram:71a8 c1             pop bc               	;.
	ram:71a9 10 c1          djnz l716ch          	;. .
	ram:71ab e1             pop hl               	;.
	ram:71ac c1             pop bc               	;.
	ram:71ad c9             ret                  	;.
l71aeh:
	ram:71ae 00             nop                  	;.
sub_71afh:
	ram:71af 11 76 79       ld de,l7976h         	;. v y
sub_71b2h:
	ram:71b2 d5             push de              	;.
	ram:71b3 6f             ld l,a               	;o
	ram:71b4 26 00          ld h,000h            	;& .
	ram:71b6 54             ld d,h               	;T
	ram:71b7 5d             ld e,l               	;]
	ram:71b8 29             add hl,hl            	;)
	ram:71b9 29             add hl,hl            	;)
	ram:71ba 19             add hl,de            	;.
	ram:71bb 19             add hl,de            	;.
	ram:71bc 19             add hl,de            	;.
	ram:71bd d1             pop de               	;.
	ram:71be 19             add hl,de            	;.
l71bfh:
	ram:71bf c9             ret                  	;.
	ram:71c0 fe fc          cp 0fch              	;. .
	ram:71c2 f8             ret m                	;.
	ram:71c3 f0             ret p                	;.
	ram:71c4 e0             ret po               	;.
	ram:71c5 c0             ret nz               	;.
	ram:71c6 f5             push af              	;.
	ram:71c7 d5             push de              	;.
	ram:71c8 dd e5          push ix              	;. .
l71cah:
	ram:71ca 7e             ld a,(hl)            	;~
	ram:71cb 23             inc hl               	;#
	ram:71cc b7             or a                 	;.
	ram:71cd 28 05          jr z,l71d4h          	;( .
	ram:71cf cd e7 70       call sub_70e7h       	;. . p
	ram:71d2 18 f6          jr l71cah            	;. .
l71d4h:
	ram:71d4 dd e1          pop ix               	;. .
	ram:71d6 d1             pop de               	;.
	ram:71d7 f1             pop af               	;.
	ram:71d8 c9             ret                  	;.
sub_71d9h:
	ram:71d9 f5             push af              	;.
	ram:71da d5             push de              	;.
	ram:71db dd e5          push ix              	;. .
l71ddh:
	ram:71dd 7e             ld a,(hl)            	;~
	ram:71de 23             inc hl               	;#
	ram:71df cd e7 70       call sub_70e7h       	;. . p
	ram:71e2 10 f9          djnz l71ddh          	;. .
	ram:71e4 dd e1          pop ix               	;. .
	ram:71e6 d1             pop de               	;.
	ram:71e7 f1             pop af               	;.
	ram:71e8 c9             ret                  	;.
sub_71e9h:
	ram:71e9 f5             push af              	;.
	ram:71ea c5             push bc              	;.
	ram:71eb d5             push de              	;.
	ram:71ec e5             push hl              	;.
	ram:71ed 3e f0          ld a,0f0h            	;> .
	ram:71ef 32 81 80       ld (08081h),a        	;2 . .
	ram:71f2 3e 01          ld a,001h            	;> .
	ram:71f4 32 80 80       ld (08080h),a        	;2 . .
	ram:71f7 cd ac 00       call 000ach          	;. . .
	ram:71fa fd cb 12 c6    set 0,(iy+012h)      	;. . . .
	ram:71fe c3 15 6c       jp l6c15h            	;. . l
sub_7201h:
	ram:7201 c5             push bc              	;.
	ram:7202 d5             push de              	;.
	ram:7203 e5             push hl              	;.
	ram:7204 fd cb 12 86    res 0,(iy+012h)      	;. . . .
	ram:7208 21 0f fc       ld hl,0fc0fh         	;! . .
	ram:720b 11 10 00       ld de,00010h         	;. . .
	ram:720e 06 08          ld b,008h            	;. .
l7210h:
	ram:7210 cb 86          res 0,(hl)           	;. .
	ram:7212 19             add hl,de            	;.
	ram:7213 10 fb          djnz l7210h          	;. .
	ram:7215 e1             pop hl               	;.
	ram:7216 d1             pop de               	;.
	ram:7217 c1             pop bc               	;.
	ram:7218 c9             ret                  	;.
sub_7219h:
	ram:7219 cd 2e 72       call sub_722eh       	;. . r
	ram:721c 11 6b 8a       ld de,08a6bh         	;. k .
	ram:721f 21 df 80       ld hl,080dfh         	;! . .
	ram:7222 01 a8 00       ld bc,000a8h         	;. . .
	ram:7225 ed b0          ldir                 	;. .
	ram:7227 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:722a 22 13 8b       ld (08b13h),hl       	;" . .
	ram:722d c9             ret                  	;.
sub_722eh:
	ram:722e 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:7231 22 87 81       ld (08187h),hl       	;" . .
	ram:7234 3a 2f 8b       ld a,(08b2fh)        	;: / .
	ram:7237 32 89 81       ld (08189h),a        	;2 . .
	ram:723a 3a 58 83       ld a,(08358h)        	;: X .
	ram:723d 32 8a 81       ld (0818ah),a        	;2 . .
	ram:7240 3a 4b 83       ld a,(0834bh)        	;: K .
	ram:7243 e6 10          and 010h             	;. .
	ram:7245 32 8b 81       ld (0818bh),a        	;2 . .
	ram:7248 c9             ret                  	;.
sub_7249h:
	ram:7249 3a 89 81       ld a,(08189h)        	;: . .
	ram:724c 32 2f 8b       ld (08b2fh),a        	;2 / .
	ram:724f 3e 08          ld a,008h            	;> .
	ram:7251 21 ef 81       ld hl,081efh         	;! . .
	ram:7254 96             sub (hl)             	;.
	ram:7255 fe 06          cp 006h              	;. .
	ram:7257 30 02          jr nc,l725bh         	;0 .
	ram:7259 3e 06          ld a,006h            	;> .
l725bh:
	ram:725b 32 30 8b       ld (08b30h),a        	;2 0 .
	ram:725e 21 00 00       ld hl,00000h         	;! . .
	ram:7261 22 0c 80       ld (0800ch),hl       	;" . .
l7264h:
	ram:7264 21 df 80       ld hl,080dfh         	;! . .
	ram:7267 cd 0e 73       call sub_730eh       	;. . s
	ram:726a 47             ld b,a               	;G
	ram:726b 05             dec b                	;.
l726ch:
	ram:726c 7e             ld a,(hl)            	;~
	ram:726d 23             inc hl               	;#
	ram:726e cd 2d 6c       call sub_6c2dh       	;. - l
	ram:7271 10 f9          djnz l726ch          	;. .
	ram:7273 7e             ld a,(hl)            	;~
	ram:7274 cd 58 6b       call sub_6b58h       	;. X k
	ram:7277 2a 87 81       ld hl,(08187h)       	;* . .
	ram:727a 22 0c 80       ld (0800ch),hl       	;" . .
	ram:727d 3a 8a 81       ld a,(0818ah)        	;: . .
	ram:7280 32 58 83       ld (08358h),a        	;2 X .
	ram:7283 3a 8b 81       ld a,(0818bh)        	;: . .
	ram:7286 e6 ef          and 0efh             	;. .
	ram:7288 21 4b 83       ld hl,0834bh         	;! K .
	ram:728b b6             or (hl)              	;.
	ram:728c 77             ld (hl),a            	;w
	ram:728d c9             ret                  	;.
	ram:728e 2a 87 81       ld hl,(08187h)       	;* . .
	ram:7291 26 00          ld h,000h            	;& .
	ram:7293 22 0c 80       ld (0800ch),hl       	;" . .
	ram:7296 cd d1 70       call sub_70d1h       	;. . p
	ram:7299 06 14          ld b,014h            	;. .
	ram:729b 18 cf          jr l726ch            	;. .
sub_729dh:
	ram:729d 3a 0c 80       ld a,(0800ch)        	;: . .
	ram:72a0 fe 06          cp 006h              	;. .
	ram:72a2 d8             ret c                	;.
	ram:72a3 2a 0c 80       ld hl,(0800ch)       	;* . .
	ram:72a6 e5             push hl              	;.
	ram:72a7 97             sub a                	;.
	ram:72a8 32 0d 80       ld (0800dh),a        	;2 . .
	ram:72ab 06 14          ld b,014h            	;. .
	ram:72ad cd d1 70       call sub_70d1h       	;. . p
l72b0h:
	ram:72b0 7e             ld a,(hl)            	;~
	ram:72b1 23             inc hl               	;#
	ram:72b2 cd 2d 6c       call sub_6c2dh       	;. - l
	ram:72b5 10 f9          djnz l72b0h          	;. .
	ram:72b7 7e             ld a,(hl)            	;~
	ram:72b8 cd 58 6b       call sub_6b58h       	;. X k
	ram:72bb e1             pop hl               	;.
	ram:72bc 22 0c 80       ld (0800ch),hl       	;" . .
	ram:72bf c9             ret                  	;.
	ram:72c0 fd cb 12 4e    bit 1,(iy+012h)      	;. . . N
	ram:72c4 c0             ret nz               	;.
	ram:72c5 f5             push af              	;.
	ram:72c6 c5             push bc              	;.
	ram:72c7 d5             push de              	;.
	ram:72c8 e5             push hl              	;.
	ram:72c9 dd e5          push ix              	;. .
	ram:72cb fd cb 12 ce    set 1,(iy+012h)      	;. . . .
	ram:72cf 21 0f fc       ld hl,0fc0fh         	;! . .
	ram:72d2 06 08          ld b,008h            	;. .
	ram:72d4 11 10 00       ld de,00010h         	;. . .
	ram:72d7 dd 21 78 80    ld ix,08078h         	;. ! x .
l72dbh:
	ram:72db 7e             ld a,(hl)            	;~
	ram:72dc 19             add hl,de            	;.
	ram:72dd dd 77 00       ld (ix+000h),a       	;. w .
	ram:72e0 dd 23          inc ix               	;. #
	ram:72e2 10 f7          djnz l72dbh          	;. .
	ram:72e4 c3 13 6c       jp l6c13h            	;. . l
	ram:72e7 fd cb 12 4e    bit 1,(iy+012h)      	;. . . N
	ram:72eb c8             ret z                	;.
	ram:72ec f5             push af              	;.
	ram:72ed c5             push bc              	;.
	ram:72ee d5             push de              	;.
	ram:72ef e5             push hl              	;.
	ram:72f0 dd e5          push ix              	;. .
	ram:72f2 21 0f fc       ld hl,0fc0fh         	;! . .
	ram:72f5 06 08          ld b,008h            	;. .
	ram:72f7 11 10 00       ld de,00010h         	;. . .
	ram:72fa dd 21 78 80    ld ix,08078h         	;. ! x .
l72feh:
	ram:72fe dd 7e 00       ld a,(ix+000h)       	;. ~ .
	ram:7301 dd 23          inc ix               	;. #
	ram:7303 77             ld (hl),a            	;w
	ram:7304 19             add hl,de            	;.
	ram:7305 10 f7          djnz l72feh          	;. .
	ram:7307 fd cb 12 8e    res 1,(iy+012h)      	;. . . .
	ram:730b c3 13 6c       jp l6c13h            	;. . l
sub_730eh:
	ram:730e 47             ld b,a               	;G
	ram:730f 87             add a,a              	;.
	ram:7310 87             add a,a              	;.
	ram:7311 80             add a,b              	;.
	ram:7312 87             add a,a              	;.
	ram:7313 87             add a,a              	;.
	ram:7314 80             add a,b              	;.
	ram:7315 c9             ret                  	;.
	ram:7316 5f             ld e,a               	;_
	ram:7317 1d             dec e                	;.
	ram:7318 79             ld a,c               	;y
	ram:7319 16 8a          ld d,08ah            	;. .
	ram:731b fe 41          cp 041h              	;. A
	ram:731d 28 36          jr z,l7355h          	;( 6
	ram:731f 16 8e          ld d,08eh            	;. .
	ram:7321 fe 61          cp 061h              	;. a
	ram:7323 28 30          jr z,l7355h          	;( 0
	ram:7325 16 92          ld d,092h            	;. .
	ram:7327 fe 45          cp 045h              	;. E
	ram:7329 28 2a          jr z,l7355h          	;( *
	ram:732b 16 96          ld d,096h            	;. .
	ram:732d fe 65          cp 065h              	;. e
	ram:732f 28 24          jr z,l7355h          	;( $
	ram:7331 16 9a          ld d,09ah            	;. .
	ram:7333 fe 49          cp 049h              	;. I
	ram:7335 28 1e          jr z,l7355h          	;( .
	ram:7337 16 9e          ld d,09eh            	;. .
	ram:7339 fe 69          cp 069h              	;. i
	ram:733b 28 18          jr z,l7355h          	;( .
	ram:733d 16 a2          ld d,0a2h            	;. .
	ram:733f fe 4f          cp 04fh              	;. O
	ram:7341 28 12          jr z,l7355h          	;( .
	ram:7343 16 a6          ld d,0a6h            	;. .
	ram:7345 fe 6f          cp 06fh              	;. o
	ram:7347 28 0c          jr z,l7355h          	;( .
	ram:7349 16 aa          ld d,0aah            	;. .
	ram:734b fe 55          cp 055h              	;. U
	ram:734d 28 06          jr z,l7355h          	;( .
	ram:734f 16 ae          ld d,0aeh            	;. .
	ram:7351 fe 75          cp 075h              	;. u
	ram:7353 20 03          jr nz,l7358h         	;.
l7355h:
	ram:7355 7a             ld a,d               	;z
l7356h:
	ram:7356 83             add a,e              	;.
	ram:7357 4f             ld c,a               	;O
l7358h:
	ram:7358 97             sub a                	;.
	ram:7359 32 8c 81       ld (0818ch),a        	;2 . .
	ram:735c c9             ret                  	;.
	ram:735d 18 18          jr l7377h            	;. .
	ram:735f 1e 19          ld e,019h            	;. .
	ram:7361 19             add hl,de            	;.
	ram:7362 19             add hl,de            	;.
	ram:7363 1e 00          ld e,000h            	;. .
	ram:7365 00             nop                  	;.
	ram:7366 0e 19          ld c,019h            	;. .
	ram:7368 19             add hl,de            	;.
	ram:7369 19             add hl,de            	;.
	ram:736a 0e 03          ld c,003h            	;. .
	ram:736c 03             inc bc               	;.
	ram:736d 0f             rrca                 	;.
	ram:736e 13             inc de               	;.
	ram:736f 13             inc de               	;.
	ram:7370 13             inc de               	;.
	ram:7371 0f             rrca                 	;.
	ram:7372 18 18          jr l738ch            	;. .
	ram:7374 1e 19          ld e,019h            	;. .
	ram:7376 19             add hl,de            	;.
l7377h:
	ram:7377 19             add hl,de            	;.
	ram:7378 19             add hl,de            	;.
	ram:7379 00             nop                  	;.
	ram:737a 08             ex af,af'            	;.
	ram:737b 0c             inc c                	;.
	ram:737c 0e 0c          ld c,00ch            	;. .
	ram:737e 08             ex af,af'            	;.
	ram:737f 00             nop                  	;.
	ram:7380 04             inc b                	;.
	ram:7381 0e 1f          ld c,01fh            	;. .
	ram:7383 0e 0e          ld c,00eh            	;. .
	ram:7385 00             nop                  	;.
	ram:7386 00             nop                  	;.
	ram:7387 00             nop                  	;.
	ram:7388 00             nop                  	;.
	ram:7389 0e 0e          ld c,00eh            	;. .
	ram:738b 1f             rra                  	;.
l738ch:
	ram:738c 0e 04          ld c,004h            	;. .
	ram:738e 02             ld (bc),a            	;.
	ram:738f 05             dec b                	;.
	ram:7390 04             inc b                	;.
	ram:7391 04             inc b                	;.
	ram:7392 04             inc b                	;.
	ram:7393 14             inc d                	;.
	ram:7394 08             ex af,af'            	;.
	ram:7395 00             nop                  	;.
	ram:7396 11 0a 04       ld de,0040ah         	;. . .
	ram:7399 0a             ld a,(bc)            	;.
	ram:739a 11 00 0e       ld de,00e00h         	;. . .
	ram:739d 19             add hl,de            	;.
	ram:739e 19             add hl,de            	;.
	ram:739f 1f             rra                  	;.
	ram:73a0 19             add hl,de            	;.
	ram:73a1 19             add hl,de            	;.
	ram:73a2 19             add hl,de            	;.
	ram:73a3 1e 19          ld e,019h            	;. .
	ram:73a5 19             add hl,de            	;.
	ram:73a6 1e 19          ld e,019h            	;. .
	ram:73a8 19             add hl,de            	;.
	ram:73a9 1e 0e          ld e,00eh            	;. .
	ram:73ab 19             add hl,de            	;.
	ram:73ac 18 18          jr l73c6h            	;. .
	ram:73ae 18 19          jr l73c9h            	;. .
	ram:73b0 0e 1e          ld c,01eh            	;. .
	ram:73b2 19             add hl,de            	;.
	ram:73b3 19             add hl,de            	;.
	ram:73b4 19             add hl,de            	;.
	ram:73b5 19             add hl,de            	;.
	ram:73b6 19             add hl,de            	;.
	ram:73b7 1e 1f          ld e,01fh            	;. .
	ram:73b9 18 18          jr 26                	;. .
	ram:73bb 1e 18          ld e,018h            	;. .
	ram:73bd 18 1f          jr 33                	;. .
	ram:73bf 1f             rra                  	;.
	ram:73c0 18 18          jr l73dah            	;. .
	ram:73c2 1e 18          ld e,018h            	;. .
	ram:73c4 18 18          jr 26                	;. .
l73c6h:
	ram:73c6 07             rlca                 	;.
	ram:73c7 04             inc b                	;.
	ram:73c8 04             inc b                	;.
l73c9h:
	ram:73c9 04             inc b                	;.
	ram:73ca 14             inc d                	;.
	ram:73cb 0c             inc c                	;.
	ram:73cc 04             inc b                	;.
	ram:73cd 03             inc bc               	;.
	ram:73ce 01 19 01       ld bc,00119h         	;. . .
	ram:73d1 01 00 00       ld bc,00000h         	;. . .
	ram:73d4 0c             inc c                	;.
	ram:73d5 02             ld (bc),a            	;.
	ram:73d6 04             inc b                	;.
	ram:73d7 08             ex af,af'            	;.
	ram:73d8 0e 00          ld c,000h            	;. .
l73dah:
	ram:73da 00             nop                  	;.
	ram:73db 00             nop                  	;.
	ram:73dc 00             nop                  	;.
	ram:73dd 01 02 04       ld bc,00402h         	;. . .
	ram:73e0 08             ex af,af'            	;.
	ram:73e1 1f             rra                  	;.
	ram:73e2 0c             inc c                	;.
	ram:73e3 12             ld (de),a            	;.
	ram:73e4 12             ld (de),a            	;.
	ram:73e5 0c             inc c                	;.
	ram:73e6 00             nop                  	;.
	ram:73e7 00             nop                  	;.
	ram:73e8 00             nop                  	;.
	ram:73e9 16 18          ld d,018h            	;. .
	ram:73eb 10 10          djnz l73fdh          	;. .
	ram:73ed 00             nop                  	;.
	ram:73ee 00             nop                  	;.
	ram:73ef 00             nop                  	;.
	ram:73f0 0e 04          ld c,004h            	;. .
	ram:73f2 04             inc b                	;.
	ram:73f3 04             inc b                	;.
	ram:73f4 04             inc b                	;.
	ram:73f5 00             nop                  	;.
	ram:73f6 00             nop                  	;.
	ram:73f7 01 06 18       ld bc,01806h         	;. . .
	ram:73fa 06 01          ld b,001h            	;. .
	ram:73fc 00             nop                  	;.
l73fdh:
	ram:73fd 1f             rra                  	;.
	ram:73fe 02             ld (bc),a            	;.
	ram:73ff 02             ld (bc),a            	;.
	ram:7400 1f             rra                  	;.
	ram:7401 04             inc b                	;.
	ram:7402 1f             rra                  	;.
	ram:7403 08             ex af,af'            	;.
	ram:7404 08             ex af,af'            	;.
	ram:7405 10 0c          djnz l7413h          	;. .
	ram:7407 03             inc bc               	;.
	ram:7408 0c             inc c                	;.
	ram:7409 10 00          djnz l740bh          	;. .
l740bh:
	ram:740b 1f             rra                  	;.
	ram:740c 00             nop                  	;.
	ram:740d 00             nop                  	;.
	ram:740e 07             rlca                 	;.
	ram:740f 00             nop                  	;.
	ram:7410 00             nop                  	;.
	ram:7411 00             nop                  	;.
	ram:7412 00             nop                  	;.
l7413h:
	ram:7413 00             nop                  	;.
	ram:7414 00             nop                  	;.
	ram:7415 0f             rrca                 	;.
	ram:7416 08             ex af,af'            	;.
	ram:7417 0e 08          ld c,008h            	;. .
	ram:7419 0f             rrca                 	;.
	ram:741a 00             nop                  	;.
	ram:741b 04             inc b                	;.
	ram:741c 02             ld (bc),a            	;.
	ram:741d 1f             rra                  	;.
	ram:741e 02             ld (bc),a            	;.
	ram:741f 04             inc b                	;.
	ram:7420 00             nop                  	;.
	ram:7421 00             nop                  	;.
	ram:7422 00             nop                  	;.
	ram:7423 17             rla                  	;.
	ram:7424 15             dec d                	;.
	ram:7425 15             dec d                	;.
	ram:7426 15             dec d                	;.
	ram:7427 17             rla                  	;.
	ram:7428 04             inc b                	;.
	ram:7429 0e 15          ld c,015h            	;. .
	ram:742b 04             inc b                	;.
	ram:742c 04             inc b                	;.
	ram:742d 04             inc b                	;.
	ram:742e 04             inc b                	;.
	ram:742f 04             inc b                	;.
	ram:7430 04             inc b                	;.
	ram:7431 04             inc b                	;.
	ram:7432 04             inc b                	;.
	ram:7433 15             dec d                	;.
	ram:7434 0e 04          ld c,004h            	;. .
	ram:7436 00             nop                  	;.
	ram:7437 00             nop                  	;.
	ram:7438 00             nop                  	;.
	ram:7439 00             nop                  	;.
	ram:743a 00             nop                  	;.
	ram:743b 00             nop                  	;.
	ram:743c 00             nop                  	;.
	ram:743d 04             inc b                	;.
	ram:743e 04             inc b                	;.
	ram:743f 04             inc b                	;.
	ram:7440 04             inc b                	;.
	ram:7441 00             nop                  	;.
	ram:7442 04             inc b                	;.
	ram:7443 04             inc b                	;.
	ram:7444 0a             ld a,(bc)            	;.
	ram:7445 0a             ld a,(bc)            	;.
	ram:7446 0a             ld a,(bc)            	;.
	ram:7447 00             nop                  	;.
	ram:7448 00             nop                  	;.
	ram:7449 00             nop                  	;.
	ram:744a 00             nop                  	;.
	ram:744b 0a             ld a,(bc)            	;.
	ram:744c 0a             ld a,(bc)            	;.
	ram:744d 1f             rra                  	;.
	ram:744e 0a             ld a,(bc)            	;.
	ram:744f 1f             rra                  	;.
	ram:7450 0a             ld a,(bc)            	;.
	ram:7451 0a             ld a,(bc)            	;.
	ram:7452 04             inc b                	;.
	ram:7453 0f             rrca                 	;.
	ram:7454 14             inc d                	;.
	ram:7455 0e 05          ld c,005h            	;. .
	ram:7457 1e 04          ld e,004h            	;. .
	ram:7459 18 19          jr l7474h            	;. .
	ram:745b 02             ld (bc),a            	;.
	ram:745c 04             inc b                	;.
	ram:745d 08             ex af,af'            	;.
	ram:745e 13             inc de               	;.
	ram:745f 03             inc bc               	;.
	ram:7460 08             ex af,af'            	;.
l7461h:
	ram:7461 14             inc d                	;.
	ram:7462 14             inc d                	;.
	ram:7463 08             ex af,af'            	;.
	ram:7464 15             dec d                	;.
	ram:7465 12             ld (de),a            	;.
	ram:7466 0d             dec c                	;.
	ram:7467 04             inc b                	;.
	ram:7468 04             inc b                	;.
	ram:7469 04             inc b                	;.
	ram:746a 00             nop                  	;.
	ram:746b 00             nop                  	;.
	ram:746c 00             nop                  	;.
	ram:746d 00             nop                  	;.
	ram:746e 02             ld (bc),a            	;.
	ram:746f 04             inc b                	;.
	ram:7470 08             ex af,af'            	;.
	ram:7471 08             ex af,af'            	;.
	ram:7472 08             ex af,af'            	;.
	ram:7473 04             inc b                	;.
l7474h:
	ram:7474 02             ld (bc),a            	;.
	ram:7475 08             ex af,af'            	;.
	ram:7476 04             inc b                	;.
	ram:7477 02             ld (bc),a            	;.
	ram:7478 02             ld (bc),a            	;.
	ram:7479 02             ld (bc),a            	;.
	ram:747a 04             inc b                	;.
	ram:747b 08             ex af,af'            	;.
	ram:747c 00             nop                  	;.
	ram:747d 04             inc b                	;.
	ram:747e 15             dec d                	;.
	ram:747f 0e 15          ld c,015h            	;. .
	ram:7481 04             inc b                	;.
	ram:7482 00             nop                  	;.
	ram:7483 00             nop                  	;.
	ram:7484 04             inc b                	;.
	ram:7485 04             inc b                	;.
	ram:7486 1f             rra                  	;.
	ram:7487 04             inc b                	;.
	ram:7488 04             inc b                	;.
	ram:7489 00             nop                  	;.
	ram:748a 00             nop                  	;.
	ram:748b 00             nop                  	;.
	ram:748c 00             nop                  	;.
	ram:748d 00             nop                  	;.
	ram:748e 0c             inc c                	;.
	ram:748f 04             inc b                	;.
	ram:7490 08             ex af,af'            	;.
	ram:7491 00             nop                  	;.
	ram:7492 00             nop                  	;.
	ram:7493 00             nop                  	;.
	ram:7494 1f             rra                  	;.
	ram:7495 00             nop                  	;.
	ram:7496 00             nop                  	;.
	ram:7497 00             nop                  	;.
l7498h:
	ram:7498 00             nop                  	;.
	ram:7499 00             nop                  	;.
	ram:749a 00             nop                  	;.
	ram:749b 00             nop                  	;.
	ram:749c 00             nop                  	;.
	ram:749d 0c             inc c                	;.
	ram:749e 0c             inc c                	;.
	ram:749f 00             nop                  	;.
	ram:74a0 01 02 04       ld bc,00402h         	;. . .
	ram:74a3 08             ex af,af'            	;.
	ram:74a4 10 00          djnz l74a6h          	;. .
l74a6h:
	ram:74a6 0e 11          ld c,011h            	;. .
	ram:74a8 13             inc de               	;.
	ram:74a9 15             dec d                	;.
	ram:74aa 19             add hl,de            	;.
	ram:74ab 11 0e 04       ld de,0040eh         	;. . .
	ram:74ae 0c             inc c                	;.
	ram:74af 04             inc b                	;.
	ram:74b0 04             inc b                	;.
	ram:74b1 04             inc b                	;.
	ram:74b2 04             inc b                	;.
	ram:74b3 0e 0e          ld c,00eh            	;. .
	ram:74b5 11 01 02       ld de,00201h         	;. . .
	ram:74b8 04             inc b                	;.
	ram:74b9 08             ex af,af'            	;.
	ram:74ba 1f             rra                  	;.
	ram:74bb 1f             rra                  	;.
	ram:74bc 02             ld (bc),a            	;.
	ram:74bd 04             inc b                	;.
	ram:74be 02             ld (bc),a            	;.
	ram:74bf 01 11 0e       ld bc,00e11h         	;. . .
	ram:74c2 02             ld (bc),a            	;.
	ram:74c3 06 0a          ld b,00ah            	;. .
	ram:74c5 12             ld (de),a            	;.
	ram:74c6 1f             rra                  	;.
	ram:74c7 02             ld (bc),a            	;.
	ram:74c8 02             ld (bc),a            	;.
	ram:74c9 1f             rra                  	;.
	ram:74ca 10 1e          djnz 32              	;. .
	ram:74cc 01 01 11       ld bc,01101h         	;. . .
	ram:74cf 0e 06          ld c,006h            	;. .
	ram:74d1 08             ex af,af'            	;.
	ram:74d2 10 1e          djnz l74f2h          	;. .
	ram:74d4 11 11 0e       ld de,00e11h         	;. . .
	ram:74d7 1f             rra                  	;.
	ram:74d8 01 02 04       ld bc,00402h         	;. . .
	ram:74db 08             ex af,af'            	;.
	ram:74dc 08             ex af,af'            	;.
	ram:74dd 08             ex af,af'            	;.
	ram:74de 0e 11          ld c,011h            	;. .
	ram:74e0 11 0e 11       ld de,0110eh         	;. . .
	ram:74e3 11 0e 0e       ld de,00e0eh         	;. . .
	ram:74e6 11 11 0f       ld de,00f11h         	;. . .
	ram:74e9 01 02 0c       ld bc,00c02h         	;. . .
	ram:74ec 00             nop                  	;.
	ram:74ed 0c             inc c                	;.
	ram:74ee 0c             inc c                	;.
	ram:74ef 00             nop                  	;.
	ram:74f0 0c             inc c                	;.
	ram:74f1 0c             inc c                	;.
l74f2h:
	ram:74f2 00             nop                  	;.
	ram:74f3 00             nop                  	;.
	ram:74f4 0c             inc c                	;.
	ram:74f5 0c             inc c                	;.
	ram:74f6 00             nop                  	;.
	ram:74f7 0c             inc c                	;.
	ram:74f8 04             inc b                	;.
	ram:74f9 08             ex af,af'            	;.
	ram:74fa 02             ld (bc),a            	;.
	ram:74fb 04             inc b                	;.
	ram:74fc 08             ex af,af'            	;.
	ram:74fd 10 08          djnz l7507h          	;. .
	ram:74ff 04             inc b                	;.
	ram:7500 02             ld (bc),a            	;.
	ram:7501 00             nop                  	;.
	ram:7502 00             nop                  	;.
	ram:7503 1f             rra                  	;.
	ram:7504 00             nop                  	;.
	ram:7505 1f             rra                  	;.
	ram:7506 00             nop                  	;.
l7507h:
	ram:7507 00             nop                  	;.
	ram:7508 08             ex af,af'            	;.
	ram:7509 04             inc b                	;.
	ram:750a 02             ld (bc),a            	;.
	ram:750b 01 02 04       ld bc,00402h         	;. . .
	ram:750e 08             ex af,af'            	;.
	ram:750f 0e 11          ld c,011h            	;. .
	ram:7511 01 02 04       ld bc,00402h         	;. . .
	ram:7514 00             nop                  	;.
	ram:7515 04             inc b                	;.
	ram:7516 0e 11          ld c,011h            	;. .
	ram:7518 15             dec d                	;.
	ram:7519 17             rla                  	;.
	ram:751a 14             inc d                	;.
	ram:751b 10 0f          djnz 17              	;. .
	ram:751d 0e 11          ld c,011h            	;. .
	ram:751f 11 1f 11       ld de,0111fh         	;. . .
	ram:7522 11 11 1e       ld de,01e11h         	;. . .
	ram:7525 11 11 1e       ld de,01e11h         	;. . .
	ram:7528 11 11 1e       ld de,01e11h         	;. . .
	ram:752b 0e 11          ld c,011h            	;. .
	ram:752d 10 10          djnz 18              	;. .
	ram:752f 10 11          djnz 19              	;. .
	ram:7531 0e 1e          ld c,01eh            	;. .
	ram:7533 11 11 11       ld de,01111h         	;. . .
	ram:7536 11 11 1e       ld de,01e11h         	;. . .
	ram:7539 1f             rra                  	;.
	ram:753a 10 10          djnz 18              	;. .
	ram:753c 1e 10          ld e,010h            	;. .
	ram:753e 10 1f          djnz l755fh          	;. .
	ram:7540 1f             rra                  	;.
	ram:7541 10 10          djnz 18              	;. .
	ram:7543 1e 10          ld e,010h            	;. .
	ram:7545 10 10          djnz l7557h          	;. .
	ram:7547 0e 11          ld c,011h            	;. .
	ram:7549 10 17          djnz l7562h          	;. .
	ram:754b 11 11 0f       ld de,00f11h         	;. . .
	ram:754e 11 11 11       ld de,01111h         	;. . .
	ram:7551 1f             rra                  	;.
	ram:7552 11 11 11       ld de,01111h         	;. . .
	ram:7555 0e 04          ld c,004h            	;. .
l7557h:
	ram:7557 04             inc b                	;.
	ram:7558 04             inc b                	;.
	ram:7559 04             inc b                	;.
	ram:755a 04             inc b                	;.
	ram:755b 0e 07          ld c,007h            	;. .
	ram:755d 02             ld (bc),a            	;.
	ram:755e 02             ld (bc),a            	;.
l755fh:
	ram:755f 02             ld (bc),a            	;.
	ram:7560 02             ld (bc),a            	;.
	ram:7561 12             ld (de),a            	;.
l7562h:
	ram:7562 0c             inc c                	;.
	ram:7563 11 12 14       ld de,01412h         	;. . .
	ram:7566 18 14          jr l757ch            	;. .
	ram:7568 12             ld (de),a            	;.
	ram:7569 11 10 10       ld de,01010h         	;. . .
	ram:756c 10 10          djnz 18              	;. .
	ram:756e 10 10          djnz l7580h          	;. .
	ram:7570 1f             rra                  	;.
	ram:7571 11 1b 15       ld de,0151bh         	;. . .
	ram:7574 15             dec d                	;.
	ram:7575 11 11 11       ld de,01111h         	;. . .
	ram:7578 11 11 19       ld de,01911h         	;. . .
	ram:757b 15             dec d                	;.
l757ch:
	ram:757c 13             inc de               	;.
	ram:757d 11 11 0e       ld de,00e11h         	;. . .
l7580h:
	ram:7580 11 11 11       ld de,01111h         	;. . .
	ram:7583 11 11 0e       ld de,00e11h         	;. . .
	ram:7586 1e 11          ld e,011h            	;. .
	ram:7588 11 1e 10       ld de,0101eh         	;. . .
	ram:758b 10 10          djnz l759dh          	;. .
	ram:758d 0e 11          ld c,011h            	;. .
	ram:758f 11 11 15       ld de,01511h         	;. . .
	ram:7592 12             ld (de),a            	;.
	ram:7593 0d             dec c                	;.
	ram:7594 1e 11          ld e,011h            	;. .
	ram:7596 11 1e 14       ld de,0141eh         	;. . .
	ram:7599 12             ld (de),a            	;.
	ram:759a 11 0f 10       ld de,0100fh         	;. . .
l759dh:
	ram:759d 10 0e          djnz 16              	;. .
	ram:759f 01 01 1e       ld bc,01e01h         	;. . .
	ram:75a2 1f             rra                  	;.
	ram:75a3 04             inc b                	;.
	ram:75a4 04             inc b                	;.
	ram:75a5 04             inc b                	;.
	ram:75a6 04             inc b                	;.
	ram:75a7 04             inc b                	;.
	ram:75a8 04             inc b                	;.
	ram:75a9 11 11 11       ld de,01111h         	;. . .
	ram:75ac 11 11 11       ld de,01111h         	;. . .
	ram:75af 0e 11          ld c,011h            	;. .
	ram:75b1 11 11 11       ld de,01111h         	;. . .
	ram:75b4 11 0a 04       ld de,0040ah         	;. . .
	ram:75b7 11 11 11       ld de,01111h         	;. . .
	ram:75ba 15             dec d                	;.
	ram:75bb 15             dec d                	;.
	ram:75bc 15             dec d                	;.
	ram:75bd 0a             ld a,(bc)            	;.
	ram:75be 11 11 0a       ld de,00a11h         	;. . .
	ram:75c1 04             inc b                	;.
	ram:75c2 0a             ld a,(bc)            	;.
	ram:75c3 11 11 11       ld de,01111h         	;. . .
	ram:75c6 11 11 0a       ld de,00a11h         	;. . .
	ram:75c9 04             inc b                	;.
	ram:75ca 04             inc b                	;.
	ram:75cb 04             inc b                	;.
	ram:75cc 1f             rra                  	;.
	ram:75cd 01 02 04       ld bc,00402h         	;. . .
	ram:75d0 08             ex af,af'            	;.
	ram:75d1 10 1f          djnz l75f2h          	;. .
	ram:75d3 06 04          ld b,004h            	;. .
	ram:75d5 04             inc b                	;.
	ram:75d6 04             inc b                	;.
	ram:75d7 04             inc b                	;.
	ram:75d8 04             inc b                	;.
	ram:75d9 06 00          ld b,000h            	;. .
	ram:75db 10 08          djnz l75e5h          	;. .
	ram:75dd 04             inc b                	;.
	ram:75de 02             ld (bc),a            	;.
	ram:75df 01 00 0c       ld bc,00c00h         	;. . .
	ram:75e2 04             inc b                	;.
	ram:75e3 04             inc b                	;.
	ram:75e4 04             inc b                	;.
l75e5h:
	ram:75e5 04             inc b                	;.
	ram:75e6 04             inc b                	;.
	ram:75e7 0c             inc c                	;.
	ram:75e8 04             inc b                	;.
	ram:75e9 0a             ld a,(bc)            	;.
	ram:75ea 11 00 00       ld de,00000h         	;. . .
	ram:75ed 00             nop                  	;.
	ram:75ee 00             nop                  	;.
	ram:75ef 00             nop                  	;.
	ram:75f0 00             nop                  	;.
	ram:75f1 00             nop                  	;.
l75f2h:
	ram:75f2 00             nop                  	;.
	ram:75f3 00             nop                  	;.
	ram:75f4 00             nop                  	;.
	ram:75f5 1f             rra                  	;.
	ram:75f6 04             inc b                	;.
	ram:75f7 04             inc b                	;.
	ram:75f8 02             ld (bc),a            	;.
	ram:75f9 00             nop                  	;.
	ram:75fa 00             nop                  	;.
	ram:75fb 00             nop                  	;.
	ram:75fc 00             nop                  	;.
	ram:75fd 00             nop                  	;.
	ram:75fe 00             nop                  	;.
	ram:75ff 0e 01          ld c,001h            	;. .
	ram:7601 0f             rrca                 	;.
	ram:7602 11 0f 10       ld de,0100fh         	;. . .
	ram:7605 10 16          djnz l761dh          	;. .
	ram:7607 19             add hl,de            	;.
	ram:7608 11 11 1e       ld de,01e11h         	;. . .
	ram:760b 00             nop                  	;.
	ram:760c 00             nop                  	;.
	ram:760d 0e 10          ld c,010h            	;. .
	ram:760f 10 11          djnz l7622h          	;. .
	ram:7611 0e 01          ld c,001h            	;. .
	ram:7613 01 0d 13       ld bc,0130dh         	;. . .
	ram:7616 11 11 0f       ld de,00f11h         	;. . .
	ram:7619 00             nop                  	;.
	ram:761a 00             nop                  	;.
	ram:761b 0e 11          ld c,011h            	;. .
l761dh:
	ram:761d 1f             rra                  	;.
	ram:761e 10 0e          djnz 16              	;. .
	ram:7620 06 09          ld b,009h            	;. .
l7622h:
	ram:7622 08             ex af,af'            	;.
	ram:7623 1c             inc e                	;.
	ram:7624 08             ex af,af'            	;.
	ram:7625 08             ex af,af'            	;.
	ram:7626 08             ex af,af'            	;.
	ram:7627 00             nop                  	;.
	ram:7628 0f             rrca                 	;.
	ram:7629 11 11 0f       ld de,00f11h         	;. . .
	ram:762c 01 0e 10       ld bc,0100eh         	;. . .
	ram:762f 10 16          djnz l7647h          	;. .
	ram:7631 19             add hl,de            	;.
	ram:7632 11 11 11       ld de,01111h         	;. . .
	ram:7635 04             inc b                	;.
	ram:7636 00             nop                  	;.
	ram:7637 0c             inc c                	;.
	ram:7638 04             inc b                	;.
	ram:7639 04             inc b                	;.
	ram:763a 04             inc b                	;.
	ram:763b 0e 02          ld c,002h            	;. .
	ram:763d 00             nop                  	;.
	ram:763e 06 02          ld b,002h            	;. .
	ram:7640 02             ld (bc),a            	;.
	ram:7641 12             ld (de),a            	;.
	ram:7642 0c             inc c                	;.
	ram:7643 08             ex af,af'            	;.
	ram:7644 08             ex af,af'            	;.
	ram:7645 09             add hl,bc            	;.
	ram:7646 0a             ld a,(bc)            	;.
l7647h:
	ram:7647 0c             inc c                	;.
	ram:7648 0a             ld a,(bc)            	;.
	ram:7649 09             add hl,bc            	;.
	ram:764a 0c             inc c                	;.
	ram:764b 04             inc b                	;.
	ram:764c 04             inc b                	;.
	ram:764d 04             inc b                	;.
	ram:764e 04             inc b                	;.
	ram:764f 04             inc b                	;.
	ram:7650 0e 00          ld c,000h            	;. .
	ram:7652 00             nop                  	;.
	ram:7653 1a             ld a,(de)            	;.
	ram:7654 15             dec d                	;.
	ram:7655 15             dec d                	;.
	ram:7656 11 11 00       ld de,00011h         	;. . .
	ram:7659 00             nop                  	;.
	ram:765a 16 19          ld d,019h            	;. .
	ram:765c 11 11 11       ld de,01111h         	;. . .
	ram:765f 00             nop                  	;.
	ram:7660 00             nop                  	;.
	ram:7661 0e 11          ld c,011h            	;. .
	ram:7663 11 11 0e       ld de,00e11h         	;. . .
	ram:7666 00             nop                  	;.
	ram:7667 00             nop                  	;.
	ram:7668 1e 11          ld e,011h            	;. .
	ram:766a 1e 10          ld e,010h            	;. .
	ram:766c 10 00          djnz l766eh          	;. .
l766eh:
	ram:766e 00             nop                  	;.
	ram:766f 0d             dec c                	;.
	ram:7670 13             inc de               	;.
	ram:7671 0f             rrca                 	;.
	ram:7672 01 01 00       ld bc,00001h         	;. . .
	ram:7675 00             nop                  	;.
	ram:7676 16 19          ld d,019h            	;. .
	ram:7678 10 10          djnz l768ah          	;. .
	ram:767a 10 00          djnz l767ch          	;. .
l767ch:
	ram:767c 00             nop                  	;.
	ram:767d 0e 10          ld c,010h            	;. .
	ram:767f 0e 01          ld c,001h            	;. .
	ram:7681 1e 08          ld e,008h            	;. .
	ram:7683 08             ex af,af'            	;.
	ram:7684 1c             inc e                	;.
	ram:7685 08             ex af,af'            	;.
	ram:7686 08             ex af,af'            	;.
	ram:7687 09             add hl,bc            	;.
	ram:7688 06 00          ld b,000h            	;. .
l768ah:
	ram:768a 00             nop                  	;.
	ram:768b 11 11 11       ld de,01111h         	;. . .
	ram:768e 13             inc de               	;.
	ram:768f 0d             dec c                	;.
	ram:7690 00             nop                  	;.
	ram:7691 00             nop                  	;.
	ram:7692 11 11 11       ld de,01111h         	;. . .
	ram:7695 0a             ld a,(bc)            	;.
	ram:7696 04             inc b                	;.
	ram:7697 00             nop                  	;.
	ram:7698 00             nop                  	;.
	ram:7699 11 11 15       ld de,01511h         	;. . .
	ram:769c 15             dec d                	;.
	ram:769d 0a             ld a,(bc)            	;.
	ram:769e 00             nop                  	;.
	ram:769f 00             nop                  	;.
	ram:76a0 11 0a 04       ld de,0040ah         	;. . .
	ram:76a3 0a             ld a,(bc)            	;.
	ram:76a4 11 00 00       ld de,00000h         	;. . .
	ram:76a7 11 11 0f       ld de,00f11h         	;. . .
	ram:76aa 01 0e 00       ld bc,0000eh         	;. . .
	ram:76ad 00             nop                  	;.
	ram:76ae 1f             rra                  	;.
	ram:76af 02             ld (bc),a            	;.
	ram:76b0 04             inc b                	;.
	ram:76b1 08             ex af,af'            	;.
	ram:76b2 1f             rra                  	;.
	ram:76b3 03             inc bc               	;.
	ram:76b4 04             inc b                	;.
	ram:76b5 04             inc b                	;.
	ram:76b6 08             ex af,af'            	;.
	ram:76b7 04             inc b                	;.
	ram:76b8 04             inc b                	;.
	ram:76b9 03             inc bc               	;.
	ram:76ba 04             inc b                	;.
	ram:76bb 04             inc b                	;.
	ram:76bc 04             inc b                	;.
	ram:76bd 04             inc b                	;.
	ram:76be 04             inc b                	;.
	ram:76bf 04             inc b                	;.
	ram:76c0 04             inc b                	;.
	ram:76c1 18 04          jr l76c7h            	;. .
	ram:76c3 04             inc b                	;.
	ram:76c4 02             ld (bc),a            	;.
	ram:76c5 04             inc b                	;.
	ram:76c6 04             inc b                	;.
l76c7h:
	ram:76c7 18 00          jr l76c9h            	;. .
l76c9h:
	ram:76c9 08             ex af,af'            	;.
	ram:76ca 15             dec d                	;.
	ram:76cb 02             ld (bc),a            	;.
	ram:76cc 00             nop                  	;.
	ram:76cd 00             nop                  	;.
	ram:76ce 00             nop                  	;.
	ram:76cf 1f             rra                  	;.
	ram:76d0 1f             rra                  	;.
	ram:76d1 11 1f 11       ld de,0111fh         	;. . .
	ram:76d4 1f             rra                  	;.
	ram:76d5 1f             rra                  	;.
	ram:76d6 00             nop                  	;.
	ram:76d7 00             nop                  	;.
	ram:76d8 0e 0a          ld c,00ah            	;. .
	ram:76da 0a             ld a,(bc)            	;.
	ram:76db 0a             ld a,(bc)            	;.
	ram:76dc 0e 00          ld c,000h            	;. .
	ram:76de 00             nop                  	;.
	ram:76df 04             inc b                	;.
	ram:76e0 0c             inc c                	;.
	ram:76e1 04             inc b                	;.
	ram:76e2 04             inc b                	;.
	ram:76e3 04             inc b                	;.
	ram:76e4 00             nop                  	;.
	ram:76e5 00             nop                  	;.
	ram:76e6 0c             inc c                	;.
	ram:76e7 02             ld (bc),a            	;.
	ram:76e8 04             inc b                	;.
	ram:76e9 08             ex af,af'            	;.
	ram:76ea 0e 00          ld c,000h            	;. .
	ram:76ec 00             nop                  	;.
	ram:76ed 0c             inc c                	;.
	ram:76ee 02             ld (bc),a            	;.
	ram:76ef 04             inc b                	;.
	ram:76f0 02             ld (bc),a            	;.
	ram:76f1 0c             inc c                	;.
	ram:76f2 00             nop                  	;.
	ram:76f3 00             nop                  	;.
	ram:76f4 08             ex af,af'            	;.
	ram:76f5 0a             ld a,(bc)            	;.
	ram:76f6 0e 02          ld c,002h            	;. .
	ram:76f8 02             ld (bc),a            	;.
	ram:76f9 00             nop                  	;.
	ram:76fa 00             nop                  	;.
	ram:76fb 0e 08          ld c,008h            	;. .
	ram:76fd 0c             inc c                	;.
	ram:76fe 02             ld (bc),a            	;.
	ram:76ff 0c             inc c                	;.
	ram:7700 00             nop                  	;.
	ram:7701 00             nop                  	;.
	ram:7702 06 08          ld b,008h            	;. .
	ram:7704 0e 0a          ld c,00ah            	;. .
	ram:7706 0e 00          ld c,000h            	;. .
	ram:7708 00             nop                  	;.
	ram:7709 0e 02          ld c,002h            	;. .
	ram:770b 04             inc b                	;.
	ram:770c 08             ex af,af'            	;.
	ram:770d 08             ex af,af'            	;.
	ram:770e 00             nop                  	;.
	ram:770f 00             nop                  	;.
	ram:7710 0e 0a          ld c,00ah            	;. .
	ram:7712 0e 0a          ld c,00ah            	;. .
	ram:7714 0e 00          ld c,000h            	;. .
	ram:7716 00             nop                  	;.
	ram:7717 0e 0a          ld c,00ah            	;. .
	ram:7719 0e 02          ld c,002h            	;. .
	ram:771b 0c             inc c                	;.
	ram:771c 02             ld (bc),a            	;.
	ram:771d 04             inc b                	;.
	ram:771e 0e 11          ld c,011h            	;. .
	ram:7720 11 1f 11       ld de,0111fh         	;. . .
	ram:7723 08             ex af,af'            	;.
	ram:7724 04             inc b                	;.
	ram:7725 0e 11          ld c,011h            	;. .
	ram:7727 11 1f 11       ld de,0111fh         	;. . .
	ram:772a 04             inc b                	;.
	ram:772b 0a             ld a,(bc)            	;.
	ram:772c 00             nop                  	;.
	ram:772d 0e 11          ld c,011h            	;. .
	ram:772f 1f             rra                  	;.
	ram:7730 11 0a 00       ld de,0000ah         	;. . .
	ram:7733 0e 11          ld c,011h            	;. .
	ram:7735 11 1f 11       ld de,0111fh         	;. . .
	ram:7738 02             ld (bc),a            	;.
	ram:7739 04             inc b                	;.
	ram:773a 0e 01          ld c,001h            	;. .
	ram:773c 0f             rrca                 	;.
	ram:773d 11 0f 08       ld de,0080fh         	;. . .
	ram:7740 04             inc b                	;.
l7741h:
	ram:7741 0e 01          ld c,001h            	;. .
	ram:7743 0f             rrca                 	;.
	ram:7744 11 0f 04       ld de,0040fh         	;. . .
	ram:7747 0a             ld a,(bc)            	;.
	ram:7748 0e 01          ld c,001h            	;. .
	ram:774a 0f             rrca                 	;.
	ram:774b 11 0f 0a       ld de,00a0fh         	;. . .
	ram:774e 00             nop                  	;.
	ram:774f 0e 01          ld c,001h            	;. .
	ram:7751 0f             rrca                 	;.
	ram:7752 11 0f 02       ld de,0020fh         	;. . .
	ram:7755 04             inc b                	;.
	ram:7756 1f             rra                  	;.
	ram:7757 10 1e          djnz l7777h          	;. .
	ram:7759 10 1f          djnz 33              	;. .
	ram:775b 08             ex af,af'            	;.
	ram:775c 04             inc b                	;.
	ram:775d 1f             rra                  	;.
	ram:775e 10 1e          djnz l777eh          	;. .
	ram:7760 10 1f          djnz 33              	;. .
	ram:7762 04             inc b                	;.
	ram:7763 0a             ld a,(bc)            	;.
	ram:7764 1f             rra                  	;.
	ram:7765 10 1e          djnz l7785h          	;. .
	ram:7767 10 1f          djnz 33              	;. .
	ram:7769 0a             ld a,(bc)            	;.
	ram:776a 00             nop                  	;.
	ram:776b 1f             rra                  	;.
	ram:776c 10 1e          djnz l778ch          	;. .
	ram:776e 10 1f          djnz 33              	;. .
	ram:7770 02             ld (bc),a            	;.
	ram:7771 04             inc b                	;.
	ram:7772 0e 11          ld c,011h            	;. .
	ram:7774 1f             rra                  	;.
	ram:7775 10 0e          djnz l7785h          	;. .
l7777h:
	ram:7777 08             ex af,af'            	;.
	ram:7778 04             inc b                	;.
	ram:7779 0e 11          ld c,011h            	;. .
	ram:777b 1f             rra                  	;.
	ram:777c 10 0e          djnz l778ch          	;. .
l777eh:
	ram:777e 04             inc b                	;.
	ram:777f 0a             ld a,(bc)            	;.
	ram:7780 0e 11          ld c,011h            	;. .
	ram:7782 1f             rra                  	;.
	ram:7783 10 0e          djnz 16              	;. .
l7785h:
	ram:7785 0a             ld a,(bc)            	;.
	ram:7786 00             nop                  	;.
	ram:7787 0e 11          ld c,011h            	;. .
	ram:7789 1f             rra                  	;.
	ram:778a 10 0e          djnz 16              	;. .
l778ch:
	ram:778c 02             ld (bc),a            	;.
	ram:778d 04             inc b                	;.
	ram:778e 0e 04          ld c,004h            	;. .
	ram:7790 04             inc b                	;.
	ram:7791 04             inc b                	;.
	ram:7792 0e 08          ld c,008h            	;. .
	ram:7794 04             inc b                	;.
	ram:7795 0e 04          ld c,004h            	;. .
	ram:7797 04             inc b                	;.
	ram:7798 04             inc b                	;.
	ram:7799 0e 04          ld c,004h            	;. .
	ram:779b 0a             ld a,(bc)            	;.
	ram:779c 0e 04          ld c,004h            	;. .
	ram:779e 04             inc b                	;.
	ram:779f 04             inc b                	;.
	ram:77a0 0e 0a          ld c,00ah            	;. .
	ram:77a2 00             nop                  	;.
	ram:77a3 0e 04          ld c,004h            	;. .
	ram:77a5 04             inc b                	;.
	ram:77a6 04             inc b                	;.
	ram:77a7 0e 02          ld c,002h            	;. .
	ram:77a9 04             inc b                	;.
	ram:77aa 00             nop                  	;.
	ram:77ab 0c             inc c                	;.
	ram:77ac 04             inc b                	;.
	ram:77ad 04             inc b                	;.
	ram:77ae 0e 08          ld c,008h            	;. .
	ram:77b0 04             inc b                	;.
	ram:77b1 00             nop                  	;.
	ram:77b2 0c             inc c                	;.
	ram:77b3 04             inc b                	;.
	ram:77b4 04             inc b                	;.
	ram:77b5 0e 04          ld c,004h            	;. .
	ram:77b7 0a             ld a,(bc)            	;.
	ram:77b8 00             nop                  	;.
	ram:77b9 0c             inc c                	;.
	ram:77ba 04             inc b                	;.
	ram:77bb 04             inc b                	;.
	ram:77bc 0e 0a          ld c,00ah            	;. .
	ram:77be 00             nop                  	;.
	ram:77bf 00             nop                  	;.
	ram:77c0 0c             inc c                	;.
	ram:77c1 04             inc b                	;.
	ram:77c2 04             inc b                	;.
	ram:77c3 0e 02          ld c,002h            	;. .
	ram:77c5 04             inc b                	;.
	ram:77c6 0e 11          ld c,011h            	;. .
	ram:77c8 11 11 0e       ld de,00e11h         	;. . .
	ram:77cb 08             ex af,af'            	;.
	ram:77cc 04             inc b                	;.
	ram:77cd 0e 11          ld c,011h            	;. .
	ram:77cf 11 11 0e       ld de,00e11h         	;. . .
	ram:77d2 04             inc b                	;.
	ram:77d3 0a             ld a,(bc)            	;.
	ram:77d4 0e 11          ld c,011h            	;. .
	ram:77d6 11 11 0e       ld de,00e11h         	;. . .
	ram:77d9 0a             ld a,(bc)            	;.
	ram:77da 00             nop                  	;.
	ram:77db 0e 11          ld c,011h            	;. .
	ram:77dd 11 11 0e       ld de,00e11h         	;. . .
	ram:77e0 02             ld (bc),a            	;.
	ram:77e1 04             inc b                	;.
	ram:77e2 00             nop                  	;.
	ram:77e3 0e 11          ld c,011h            	;. .
	ram:77e5 11 0e 08       ld de,0080eh         	;. . .
	ram:77e8 04             inc b                	;.
	ram:77e9 00             nop                  	;.
	ram:77ea 0e 11          ld c,011h            	;. .
	ram:77ec 11 0e 04       ld de,0040eh         	;. . .
	ram:77ef 0a             ld a,(bc)            	;.
	ram:77f0 00             nop                  	;.
	ram:77f1 0e 11          ld c,011h            	;. .
	ram:77f3 11 0e 0a       ld de,00a0eh         	;. . .
	ram:77f6 00             nop                  	;.
	ram:77f7 00             nop                  	;.
	ram:77f8 0e 11          ld c,011h            	;. .
	ram:77fa 11 0e 02       ld de,0020eh         	;. . .
	ram:77fd 04             inc b                	;.
	ram:77fe 11 11 11       ld de,01111h         	;. . .
	ram:7801 11 0e 08       ld de,0080eh         	;. . .
	ram:7804 04             inc b                	;.
	ram:7805 11 11 11       ld de,01111h         	;. . .
	ram:7808 11 0e 04       ld de,0040eh         	;. . .
	ram:780b 0a             ld a,(bc)            	;.
	ram:780c 00             nop                  	;.
	ram:780d 11 11 11       ld de,01111h         	;. . .
	ram:7810 0e 0a          ld c,00ah            	;. .
	ram:7812 00             nop                  	;.
	ram:7813 11 11 11       ld de,01111h         	;. . .
	ram:7816 11 0e 02       ld de,0020eh         	;. . .
	ram:7819 04             inc b                	;.
	ram:781a 11 11 11       ld de,01111h         	;. . .
	ram:781d 13             inc de               	;.
	ram:781e 0d             dec c                	;.
	ram:781f 08             ex af,af'            	;.
	ram:7820 04             inc b                	;.
	ram:7821 11 11 11       ld de,01111h         	;. . .
	ram:7824 13             inc de               	;.
	ram:7825 0d             dec c                	;.
	ram:7826 04             inc b                	;.
	ram:7827 0a             ld a,(bc)            	;.
	ram:7828 00             nop                  	;.
	ram:7829 11 11 13       ld de,01311h         	;. . .
	ram:782c 0d             dec c                	;.
	ram:782d 0a             ld a,(bc)            	;.
	ram:782e 00             nop                  	;.
	ram:782f 11 11 11       ld de,01111h         	;. . .
	ram:7832 13             inc de               	;.
	ram:7833 0d             dec c                	;.
	ram:7834 0e 11          ld c,011h            	;. .
	ram:7836 10 11          djnz 19              	;. .
	ram:7838 0e 04          ld c,004h            	;. .
	ram:783a 1c             inc e                	;.
	ram:783b 00             nop                  	;.
	ram:783c 00             nop                  	;.
	ram:783d 0e 10          ld c,010h            	;. .
	ram:783f 11 0e 1c       ld de,01c0eh         	;. . .
	ram:7842 05             dec b                	;.
	ram:7843 0a             ld a,(bc)            	;.
	ram:7844 11 19 15       ld de,01519h         	;. . .
	ram:7847 13             inc de               	;.
	ram:7848 11 05 0a       ld de,00a05h         	;. . .
	ram:784b 00             nop                  	;.
	ram:784c 16 19          ld d,019h            	;. .
	ram:784e 11 11 01       ld de,00111h         	;. . .
	ram:7851 02             ld (bc),a            	;.
	ram:7852 04             inc b                	;.
	ram:7853 00             nop                  	;.
	ram:7854 00             nop                  	;.
	ram:7855 00             nop                  	;.
	ram:7856 00             nop                  	;.
	ram:7857 10 08          djnz l7861h          	;. .
	ram:7859 04             inc b                	;.
	ram:785a 00             nop                  	;.
	ram:785b 00             nop                  	;.
	ram:785c 00             nop                  	;.
	ram:785d 00             nop                  	;.
	ram:785e 00             nop                  	;.
	ram:785f 0a             ld a,(bc)            	;.
	ram:7860 00             nop                  	;.
l7861h:
	ram:7861 00             nop                  	;.
	ram:7862 00             nop                  	;.
	ram:7863 00             nop                  	;.
sub_7864h:
	ram:7864 00             nop                  	;.
	ram:7865 04             inc b                	;.
	ram:7866 00             nop                  	;.
	ram:7867 04             inc b                	;.
	ram:7868 08             ex af,af'            	;.
	ram:7869 10 11          djnz l787ch          	;. .
	ram:786b 0e 04          ld c,004h            	;. .
	ram:786d 04             inc b                	;.
	ram:786e 00             nop                  	;.
	ram:786f 04             inc b                	;.
	ram:7870 04             inc b                	;.
	ram:7871 04             inc b                	;.
	ram:7872 04             inc b                	;.
	ram:7873 00             nop                  	;.
	ram:7874 00             nop                  	;.
	ram:7875 0d             dec c                	;.
	ram:7876 12             ld (de),a            	;.
	ram:7877 12             ld (de),a            	;.
	ram:7878 12             ld (de),a            	;.
	ram:7879 0d             dec c                	;.
	ram:787a 06 09          ld b,009h            	;. .
l787ch:
	ram:787c 09             add hl,bc            	;.
	ram:787d 0e 09          ld c,009h            	;. .
	ram:787f 09             add hl,bc            	;.
	ram:7880 16 00          ld d,000h            	;. .
	ram:7882 00             nop                  	;.
	ram:7883 09             add hl,bc            	;.
	ram:7884 15             dec d                	;.
	ram:7885 02             ld (bc),a            	;.
	ram:7886 02             ld (bc),a            	;.
	ram:7887 02             ld (bc),a            	;.
	ram:7888 00             nop                  	;.
	ram:7889 00             nop                  	;.
	ram:788a 00             nop                  	;.
	ram:788b 04             inc b                	;.
	ram:788c 0a             ld a,(bc)            	;.
	ram:788d 11 1f 06       ld de,0061fh         	;. . .
	ram:7890 08             ex af,af'            	;.
	ram:7891 04             inc b                	;.
	ram:7892 02             ld (bc),a            	;.
	ram:7893 0f             rrca                 	;.
	ram:7894 11 0e 00       ld de,0000eh         	;. . .
	ram:7897 00             nop                  	;.
	ram:7898 0e 10          ld c,010h            	;. .
	ram:789a 1e 10          ld e,010h            	;. .
	ram:789c 0e 06          ld c,006h            	;. .
	ram:789e 09             add hl,bc            	;.
	ram:789f 11 1f 11       ld de,0111fh         	;. . .
	ram:78a2 12             ld (de),a            	;.
	ram:78a3 0c             inc c                	;.
	ram:78a4 00             nop                  	;.
	ram:78a5 08             ex af,af'            	;.
	ram:78a6 04             inc b                	;.
	ram:78a7 02             ld (bc),a            	;.
	ram:78a8 06 09          ld b,009h            	;. .
	ram:78aa 11 00 00       ld de,00000h         	;. . .
	ram:78ad 12             ld (de),a            	;.
	ram:78ae 12             ld (de),a            	;.
	ram:78af 12             ld (de),a            	;.
	ram:78b0 1d             dec e                	;.
	ram:78b1 10 00          djnz l78b3h          	;. .
l78b3h:
	ram:78b3 00             nop                  	;.
	ram:78b4 1f             rra                  	;.
	ram:78b5 0a             ld a,(bc)            	;.
	ram:78b6 0a             ld a,(bc)            	;.
	ram:78b7 0a             ld a,(bc)            	;.
	ram:78b8 13             inc de               	;.
	ram:78b9 00             nop                  	;.
	ram:78ba 06 09          ld b,009h            	;. .
	ram:78bc 09             add hl,bc            	;.
	ram:78bd 0e 08          ld c,008h            	;. .
	ram:78bf 10 1f          djnz 33              	;. .
	ram:78c1 08             ex af,af'            	;.
	ram:78c2 04             inc b                	;.
	ram:78c3 02             ld (bc),a            	;.
	ram:78c4 04             inc b                	;.
	ram:78c5 08             ex af,af'            	;.
	ram:78c6 1f             rra                  	;.
	ram:78c7 00             nop                  	;.
	ram:78c8 00             nop                  	;.
	ram:78c9 0f             rrca                 	;.
	ram:78ca 12             ld (de),a            	;.
	ram:78cb 12             ld (de),a            	;.
	ram:78cc 12             ld (de),a            	;.
	ram:78cd 0c             inc c                	;.
	ram:78ce 00             nop                  	;.
	ram:78cf 00             nop                  	;.
	ram:78d0 0f             rrca                 	;.
	ram:78d1 14             inc d                	;.
	ram:78d2 04             inc b                	;.
	ram:78d3 05             dec b                	;.
	ram:78d4 02             ld (bc),a            	;.
	ram:78d5 04             inc b                	;.
	ram:78d6 04             inc b                	;.
	ram:78d7 0e 15          ld c,015h            	;. .
	ram:78d9 0e 04          ld c,004h            	;. .
	ram:78db 04             inc b                	;.
	ram:78dc 0e 11          ld c,011h            	;. .
	ram:78de 11 11 0a       ld de,00a11h         	;. . .
	ram:78e1 0a             ld a,(bc)            	;.
	ram:78e2 1b             dec de               	;.
	ram:78e3 1f             rra                  	;.
	ram:78e4 00             nop                  	;.
	ram:78e5 11 0a 04       ld de,0040ah         	;. . .
	ram:78e8 0a             ld a,(bc)            	;.
	ram:78e9 11 1f 00       ld de,0001fh         	;. . .
	ram:78ec 11 11 0f       ld de,00f11h         	;. . .
	ram:78ef 01 0e 05       ld bc,0050eh         	;. . .
	ram:78f2 02             ld (bc),a            	;.
	ram:78f3 05             dec b                	;.
	ram:78f4 00             nop                  	;.
	ram:78f5 00             nop                  	;.
	ram:78f6 00             nop                  	;.
	ram:78f7 00             nop                  	;.
	ram:78f8 00             nop                  	;.
	ram:78f9 00             nop                  	;.
	ram:78fa 00             nop                  	;.
	ram:78fb 00             nop                  	;.
	ram:78fc 00             nop                  	;.
	ram:78fd 00             nop                  	;.
	ram:78fe 15             dec d                	;.
	ram:78ff 00             nop                  	;.
	ram:7900 02             ld (bc),a            	;.
	ram:7901 06 0e          ld b,00eh            	;. .
	ram:7903 06 02          ld b,002h            	;. .
	ram:7905 00             nop                  	;.
	ram:7906 00             nop                  	;.
	ram:7907 00             nop                  	;.
	ram:7908 1c             inc e                	;.
	ram:7909 1c             inc e                	;.
	ram:790a 1c             inc e                	;.
	ram:790b 00             nop                  	;.
	ram:790c 00             nop                  	;.
	ram:790d 02             ld (bc),a            	;.
	ram:790e 02             ld (bc),a            	;.
	ram:790f 02             ld (bc),a            	;.
	ram:7910 04             inc b                	;.
	ram:7911 08             ex af,af'            	;.
	ram:7912 08             ex af,af'            	;.
	ram:7913 08             ex af,af'            	;.
	ram:7914 00             nop                  	;.
	ram:7915 00             nop                  	;.
	ram:7916 00             nop                  	;.
	ram:7917 0e 00          ld c,000h            	;. .
	ram:7919 00             nop                  	;.
	ram:791a 00             nop                  	;.
	ram:791b 0e 02          ld c,002h            	;. .
	ram:791d 0e 08          ld c,008h            	;. .
	ram:791f 0e 00          ld c,000h            	;. .
	ram:7921 00             nop                  	;.
	ram:7922 0e 0a          ld c,00ah            	;. .
	ram:7924 0e 00          ld c,000h            	;. .
	ram:7926 00             nop                  	;.
	ram:7927 00             nop                  	;.
	ram:7928 00             nop                  	;.
	ram:7929 0e 02          ld c,002h            	;. .
	ram:792b 0e 02          ld c,002h            	;. .
	ram:792d 0e 00          ld c,000h            	;. .
	ram:792f 00             nop                  	;.
	ram:7930 00             nop                  	;.
	ram:7931 00             nop                  	;.
	ram:7932 00             nop                  	;.
	ram:7933 00             nop                  	;.
	ram:7934 00             nop                  	;.
	ram:7935 00             nop                  	;.
	ram:7936 00             nop                  	;.
	ram:7937 00             nop                  	;.
	ram:7938 08             ex af,af'            	;.
	ram:7939 1c             inc e                	;.
	ram:793a 1e 1c          ld e,01ch            	;. .
	ram:793c 08             ex af,af'            	;.
	ram:793d 00             nop                  	;.
	ram:793e 1f             rra                  	;.
	ram:793f 1f             rra                  	;.
	ram:7940 1f             rra                  	;.
	ram:7941 1f             rra                  	;.
	ram:7942 1f             rra                  	;.
	ram:7943 1f             rra                  	;.
	ram:7944 1f             rra                  	;.
	ram:7945 1f             rra                  	;.
	ram:7946 1b             dec de               	;.
	ram:7947 11 0a 1b       ld de,01b0ah         	;. . .
	ram:794a 1b             dec de               	;.
	ram:794b 1b             dec de               	;.
	ram:794c 1f             rra                  	;.
	ram:794d 1b             dec de               	;.
	ram:794e 15             dec d                	;.
	ram:794f 11 15 15       ld de,01515h         	;. . .
	ram:7952 1f             rra                  	;.
	ram:7953 1f             rra                  	;.
	ram:7954 1b             dec de               	;.
	ram:7955 1d             dec e                	;.
	ram:7956 19             add hl,de            	;.
	ram:7957 15             dec d                	;.
	ram:7958 19             add hl,de            	;.
	ram:7959 1f             rra                  	;.
	ram:795a 00             nop                  	;.
	ram:795b 00             nop                  	;.
	ram:795c 00             nop                  	;.
	ram:795d 00             nop                  	;.
l795eh:
	ram:795e 00             nop                  	;.
	ram:795f 00             nop                  	;.
	ram:7960 1f             rra                  	;.
	ram:7961 04             inc b                	;.
	ram:7962 0e 15          ld c,015h            	;. .
	ram:7964 04             inc b                	;.
	ram:7965 04             inc b                	;.
	ram:7966 00             nop                  	;.
	ram:7967 1f             rra                  	;.
	ram:7968 04             inc b                	;.
	ram:7969 0a             ld a,(bc)            	;.
	ram:796a 0e 0a          ld c,00ah            	;. .
	ram:796c 0a             ld a,(bc)            	;.
	ram:796d 00             nop                  	;.
	ram:796e 1f             rra                  	;.
	ram:796f 04             inc b                	;.
	ram:7970 02             ld (bc),a            	;.
	ram:7971 06 0a          ld b,00ah            	;. .
	ram:7973 06 00          ld b,000h            	;. .
	ram:7975 1f             rra                  	;.
l7976h:
	ram:7976 15             dec d                	;.
	ram:7977 0a             ld a,(bc)            	;.
	ram:7978 15             dec d                	;.
	ram:7979 0a             ld a,(bc)            	;.
	ram:797a 15             dec d                	;.
	ram:797b 0a             ld a,(bc)            	;.
	ram:797c 15             dec d                	;.
	ram:797d 05             dec b                	;.
	ram:797e 00             nop                  	;.
	ram:797f 18 1c          jr l799dh            	;. .
	ram:7981 1a             ld a,(de)            	;.
	ram:7982 1a             ld a,(de)            	;.
	ram:7983 1c             inc e                	;.
	ram:7984 05             dec b                	;.
	ram:7985 00             nop                  	;.
	ram:7986 00             nop                  	;.
	ram:7987 0c             inc c                	;.
	ram:7988 1a             ld a,(de)            	;.
	ram:7989 1a             ld a,(de)            	;.
	ram:798a 0c             inc c                	;.
	ram:798b 05             dec b                	;.
	ram:798c 00             nop                  	;.
	ram:798d 06 0e          ld b,00eh            	;. .
	ram:798f 16 16          ld d,016h            	;. .
	ram:7991 0e 05          ld c,005h            	;. .
	ram:7993 00             nop                  	;.
	ram:7994 18 1c          jr l79b2h            	;. .
	ram:7996 1a             ld a,(de)            	;.
	ram:7997 1a             ld a,(de)            	;.
	ram:7998 1a             ld a,(de)            	;.
	ram:7999 04             inc b                	;.
	ram:799a 00             nop                  	;.
	ram:799b 08             ex af,af'            	;.
	ram:799c 0c             inc c                	;.
l799dh:
	ram:799d 0e 0c          ld c,00ch            	;. .
	ram:799f 08             ex af,af'            	;.
	ram:79a0 05             dec b                	;.
	ram:79a1 00             nop                  	;.
	ram:79a2 04             inc b                	;.
	ram:79a3 0e 1f          ld c,01fh            	;. .
	ram:79a5 0e 00          ld c,000h            	;. .
	ram:79a7 05             dec b                	;.
	ram:79a8 00             nop                  	;.
	ram:79a9 00             nop                  	;.
	ram:79aa 0e 1f          ld c,01fh            	;. .
	ram:79ac 0e 04          ld c,004h            	;. .
	ram:79ae 04             inc b                	;.
	ram:79af 00             nop                  	;.
	ram:79b0 02             ld (bc),a            	;.
	ram:79b1 04             inc b                	;.
l79b2h:
	ram:79b2 04             inc b                	;.
	ram:79b3 04             inc b                	;.
	ram:79b4 08             ex af,af'            	;.
	ram:79b5 04             inc b                	;.
	ram:79b6 00             nop                  	;.
	ram:79b7 00             nop                  	;.
	ram:79b8 0a             ld a,(bc)            	;.
	ram:79b9 04             inc b                	;.
	ram:79ba 0a             ld a,(bc)            	;.
	ram:79bb 00             nop                  	;.
	ram:79bc 05             dec b                	;.
	ram:79bd 00             nop                  	;.
	ram:79be 0c             inc c                	;.
	ram:79bf 1a             ld a,(de)            	;.
	ram:79c0 1e 1a          ld e,01ah            	;. .
	ram:79c2 1a             ld a,(de)            	;.
	ram:79c3 05             dec b                	;.
	ram:79c4 00             nop                  	;.
	ram:79c5 1c             inc e                	;.
	ram:79c6 1a             ld a,(de)            	;.
	ram:79c7 1c             inc e                	;.
	ram:79c8 1a             ld a,(de)            	;.
	ram:79c9 1c             inc e                	;.
	ram:79ca 05             dec b                	;.
	ram:79cb 00             nop                  	;.
	ram:79cc 0c             inc c                	;.
	ram:79cd 1a             ld a,(de)            	;.
	ram:79ce 18 1a          jr l79eah            	;. .
	ram:79d0 0c             inc c                	;.
	ram:79d1 05             dec b                	;.
	ram:79d2 00             nop                  	;.
	ram:79d3 1c             inc e                	;.
	ram:79d4 1a             ld a,(de)            	;.
	ram:79d5 1a             ld a,(de)            	;.
	ram:79d6 1a             ld a,(de)            	;.
	ram:79d7 1c             inc e                	;.
	ram:79d8 05             dec b                	;.
	ram:79d9 00             nop                  	;.
	ram:79da 1e 18          ld e,018h            	;. .
	ram:79dc 1e 18          ld e,018h            	;. .
	ram:79de 1e 05          ld e,005h            	;. .
	ram:79e0 00             nop                  	;.
	ram:79e1 1e 18          ld e,018h            	;. .
	ram:79e3 1e 18          ld e,018h            	;. .
	ram:79e5 18 04          jr l79ebh            	;. .
	ram:79e7 00             nop                  	;.
	ram:79e8 06 04          ld b,004h            	;. .
l79eah:
	ram:79ea 04             inc b                	;.
l79ebh:
	ram:79eb 0c             inc c                	;.
	ram:79ec 04             inc b                	;.
	ram:79ed 05             dec b                	;.
	ram:79ee 00             nop                  	;.
	ram:79ef 06 02          ld b,002h            	;. .
	ram:79f1 1a             ld a,(de)            	;.
	ram:79f2 02             ld (bc),a            	;.
	ram:79f3 00             nop                  	;.
	ram:79f4 04             inc b                	;.
	ram:79f5 00             nop                  	;.
	ram:79f6 0c             inc c                	;.
	ram:79f7 02             ld (bc),a            	;.
	ram:79f8 04             inc b                	;.
	ram:79f9 0e 00          ld c,000h            	;. .
	ram:79fb 04             inc b                	;.
	ram:79fc 00             nop                  	;.
	ram:79fd 00             nop                  	;.
	ram:79fe 02             ld (bc),a            	;.
	ram:79ff 04             inc b                	;.
	ram:7a00 08             ex af,af'            	;.
	ram:7a01 0e 05          ld c,005h            	;. .
	ram:7a03 00             nop                  	;.
	ram:7a04 0c             inc c                	;.
	ram:7a05 12             ld (de),a            	;.
	ram:7a06 12             ld (de),a            	;.
	ram:7a07 0c             inc c                	;.
	ram:7a08 00             nop                  	;.
	ram:7a09 05             dec b                	;.
	ram:7a0a 00             nop                  	;.
	ram:7a0b 16 18          ld d,018h            	;. .
	ram:7a0d 10 10          djnz l7a1fh          	;. .
	ram:7a0f 00             nop                  	;.
	ram:7a10 04             inc b                	;.
	ram:7a11 00             nop                  	;.
	ram:7a12 0e 04          ld c,004h            	;. .
	ram:7a14 04             inc b                	;.
	ram:7a15 00             nop                  	;.
	ram:7a16 00             nop                  	;.
	ram:7a17 05             dec b                	;.
	ram:7a18 00             nop                  	;.
	ram:7a19 06 18          ld b,018h            	;. .
	ram:7a1b 06 00          ld b,000h            	;. .
	ram:7a1d 1e 06          ld e,006h            	;. .
l7a1fh:
	ram:7a1f 00             nop                  	;.
	ram:7a20 04             inc b                	;.
	ram:7a21 3e 08          ld a,008h            	;> .
	ram:7a23 3e 10          ld a,010h            	;> .
	ram:7a25 05             dec b                	;.
	ram:7a26 00             nop                  	;.
	ram:7a27 18 06          jr l7a2fh            	;. .
	ram:7a29 18 00          jr l7a2bh            	;. .
l7a2bh:
	ram:7a2b 1e 04          ld e,004h            	;. .
	ram:7a2d 00             nop                  	;.
	ram:7a2e 00             nop                  	;.
l7a2fh:
	ram:7a2f 06 00          ld b,000h            	;. .
	ram:7a31 00             nop                  	;.
	ram:7a32 00             nop                  	;.
	ram:7a33 04             inc b                	;.
	ram:7a34 00             nop                  	;.
	ram:7a35 0e 08          ld c,008h            	;. .
	ram:7a37 0c             inc c                	;.
	ram:7a38 08             ex af,af'            	;.
	ram:7a39 0e 05          ld c,005h            	;. .
	ram:7a3b 00             nop                  	;.
	ram:7a3c 08             ex af,af'            	;.
	ram:7a3d 04             inc b                	;.
	ram:7a3e 1e 04          ld e,004h            	;. .
	ram:7a40 08             ex af,af'            	;.
	ram:7a41 06 00          ld b,000h            	;. .
	ram:7a43 00             nop                  	;.
	ram:7a44 2e 2a          ld l,02ah            	;. *
	ram:7a46 2a 2e 04       ld hl,(0042eh)       	;* . .
	ram:7a49 00             nop                  	;.
	ram:7a4a 04             inc b                	;.
	ram:7a4b 0e 04          ld c,004h            	;. .
	ram:7a4d 04             inc b                	;.
	ram:7a4e 04             inc b                	;.
	ram:7a4f 04             inc b                	;.
	ram:7a50 00             nop                  	;.
	ram:7a51 04             inc b                	;.
	ram:7a52 04             inc b                	;.
	ram:7a53 04             inc b                	;.
	ram:7a54 0e 04          ld c,004h            	;. .
	ram:7a56 01 00 00       ld bc,00000h         	;. . .
	ram:7a59 00             nop                  	;.
	ram:7a5a 00             nop                  	;.
	ram:7a5b 00             nop                  	;.
	ram:7a5c 00             nop                  	;.
	ram:7a5d 02             ld (bc),a            	;.
	ram:7a5e 00             nop                  	;.
	ram:7a5f 02             ld (bc),a            	;.
	ram:7a60 02             ld (bc),a            	;.
	ram:7a61 02             ld (bc),a            	;.
	ram:7a62 00             nop                  	;.
	ram:7a63 02             ld (bc),a            	;.
	ram:7a64 04             inc b                	;.
	ram:7a65 00             nop                  	;.
	ram:7a66 0a             ld a,(bc)            	;.
	ram:7a67 0a             ld a,(bc)            	;.
	ram:7a68 0a             ld a,(bc)            	;.
	ram:7a69 00             nop                  	;.
	ram:7a6a 00             nop                  	;.
	ram:7a6b 06 00          ld b,000h            	;. .
	ram:7a6d 14             inc d                	;.
	ram:7a6e 3e 14          ld a,014h            	;> .
	ram:7a70 3e 14          ld a,014h            	;> .
	ram:7a72 06 00          ld b,000h            	;. .
	ram:7a74 1c             inc e                	;.
	ram:7a75 28 1c          jr z,l7a93h          	;( .
	ram:7a77 0a             ld a,(bc)            	;.
	ram:7a78 3c             inc a                	;<
	ram:7a79 04             inc b                	;.
	ram:7a7a 00             nop                  	;.
	ram:7a7b 0a             ld a,(bc)            	;.
	ram:7a7c 02             ld (bc),a            	;.
	ram:7a7d 04             inc b                	;.
	ram:7a7e 08             ex af,af'            	;.
	ram:7a7f 0a             ld a,(bc)            	;.
	ram:7a80 05             dec b                	;.
	ram:7a81 00             nop                  	;.
	ram:7a82 08             ex af,af'            	;.
	ram:7a83 14             inc d                	;.
	ram:7a84 08             ex af,af'            	;.
	ram:7a85 14             inc d                	;.
	ram:7a86 0a             ld a,(bc)            	;.
	ram:7a87 02             ld (bc),a            	;.
	ram:7a88 00             nop                  	;.
	ram:7a89 02             ld (bc),a            	;.
	ram:7a8a 02             ld (bc),a            	;.
	ram:7a8b 02             ld (bc),a            	;.
	ram:7a8c 00             nop                  	;.
	ram:7a8d 00             nop                  	;.
	ram:7a8e 03             inc bc               	;.
	ram:7a8f 00             nop                  	;.
	ram:7a90 02             ld (bc),a            	;.
	ram:7a91 04             inc b                	;.
	ram:7a92 04             inc b                	;.
l7a93h:
	ram:7a93 04             inc b                	;.
	ram:7a94 02             ld (bc),a            	;.
	ram:7a95 03             inc bc               	;.
	ram:7a96 00             nop                  	;.
	ram:7a97 04             inc b                	;.
	ram:7a98 02             ld (bc),a            	;.
	ram:7a99 02             ld (bc),a            	;.
	ram:7a9a 02             ld (bc),a            	;.
	ram:7a9b 04             inc b                	;.
	ram:7a9c 06 00          ld b,000h            	;. .
	ram:7a9e 08             ex af,af'            	;.
	ram:7a9f 2a 1c 2a       ld hl,(02a1ch)       	;* . *
	ram:7aa2 08             ex af,af'            	;.
	ram:7aa3 04             inc b                	;.
	ram:7aa4 00             nop                  	;.
	ram:7aa5 00             nop                  	;.
	ram:7aa6 04             inc b                	;.
	ram:7aa7 0e 04          ld c,004h            	;. .
	ram:7aa9 00             nop                  	;.
	ram:7aaa 03             inc bc               	;.
	ram:7aab 00             nop                  	;.
	ram:7aac 00             nop                  	;.
	ram:7aad 00             nop                  	;.
	ram:7aae 02             ld (bc),a            	;.
	ram:7aaf 02             ld (bc),a            	;.
	ram:7ab0 04             inc b                	;.
	ram:7ab1 04             inc b                	;.
	ram:7ab2 00             nop                  	;.
	ram:7ab3 00             nop                  	;.
	ram:7ab4 00             nop                  	;.
	ram:7ab5 0e 00          ld c,000h            	;. .
	ram:7ab7 00             nop                  	;.
	ram:7ab8 02             ld (bc),a            	;.
	ram:7ab9 00             nop                  	;.
	ram:7aba 00             nop                  	;.
	ram:7abb 00             nop                  	;.
	ram:7abc 00             nop                  	;.
	ram:7abd 00             nop                  	;.
	ram:7abe 02             ld (bc),a            	;.
	ram:7abf 04             inc b                	;.
	ram:7ac0 00             nop                  	;.
	ram:7ac1 02             ld (bc),a            	;.
	ram:7ac2 02             ld (bc),a            	;.
	ram:7ac3 04             inc b                	;.
	ram:7ac4 08             ex af,af'            	;.
	ram:7ac5 08             ex af,af'            	;.
	ram:7ac6 04             inc b                	;.
	ram:7ac7 00             nop                  	;.
	ram:7ac8 04             inc b                	;.
	ram:7ac9 0a             ld a,(bc)            	;.
	ram:7aca 0a             ld a,(bc)            	;.
	ram:7acb 0a             ld a,(bc)            	;.
	ram:7acc 04             inc b                	;.
	ram:7acd 04             inc b                	;.
	ram:7ace 00             nop                  	;.
	ram:7acf 04             inc b                	;.
	ram:7ad0 0c             inc c                	;.
	ram:7ad1 04             inc b                	;.
	ram:7ad2 04             inc b                	;.
	ram:7ad3 0e 04          ld c,004h            	;. .
	ram:7ad5 00             nop                  	;.
	ram:7ad6 0c             inc c                	;.
	ram:7ad7 02             ld (bc),a            	;.
	ram:7ad8 04             inc b                	;.
	ram:7ad9 08             ex af,af'            	;.
	ram:7ada 0e 04          ld c,004h            	;. .
	ram:7adc 00             nop                  	;.
	ram:7add 0c             inc c                	;.
	ram:7ade 02             ld (bc),a            	;.
	ram:7adf 04             inc b                	;.
	ram:7ae0 02             ld (bc),a            	;.
	ram:7ae1 0c             inc c                	;.
	ram:7ae2 04             inc b                	;.
	ram:7ae3 00             nop                  	;.
	ram:7ae4 08             ex af,af'            	;.
	ram:7ae5 0a             ld a,(bc)            	;.
	ram:7ae6 0e 02          ld c,002h            	;. .
	ram:7ae8 02             ld (bc),a            	;.
	ram:7ae9 04             inc b                	;.
	ram:7aea 00             nop                  	;.
	ram:7aeb 0e 08          ld c,008h            	;. .
	ram:7aed 0c             inc c                	;.
	ram:7aee 02             ld (bc),a            	;.
	ram:7aef 0c             inc c                	;.
	ram:7af0 04             inc b                	;.
	ram:7af1 00             nop                  	;.
	ram:7af2 06 08          ld b,008h            	;. .
	ram:7af4 0e 0a          ld c,00ah            	;. .
	ram:7af6 0e 04          ld c,004h            	;. .
	ram:7af8 00             nop                  	;.
	ram:7af9 0e 02          ld c,002h            	;. .
	ram:7afb 04             inc b                	;.
	ram:7afc 08             ex af,af'            	;.
	ram:7afd 08             ex af,af'            	;.
	ram:7afe 04             inc b                	;.
	ram:7aff 00             nop                  	;.
	ram:7b00 0e 0a          ld c,00ah            	;. .
	ram:7b02 0e 0a          ld c,00ah            	;. .
	ram:7b04 0e 04          ld c,004h            	;. .
	ram:7b06 00             nop                  	;.
	ram:7b07 0e 0a          ld c,00ah            	;. .
	ram:7b09 0e 02          ld c,002h            	;. .
	ram:7b0b 0c             inc c                	;.
	ram:7b0c 02             ld (bc),a            	;.
	ram:7b0d 00             nop                  	;.
	ram:7b0e 00             nop                  	;.
	ram:7b0f 02             ld (bc),a            	;.
	ram:7b10 00             nop                  	;.
	ram:7b11 02             ld (bc),a            	;.
	ram:7b12 00             nop                  	;.
	ram:7b13 03             inc bc               	;.
	ram:7b14 00             nop                  	;.
	ram:7b15 00             nop                  	;.
	ram:7b16 02             ld (bc),a            	;.
	ram:7b17 00             nop                  	;.
	ram:7b18 02             ld (bc),a            	;.
	ram:7b19 04             inc b                	;.
	ram:7b1a 04             inc b                	;.
	ram:7b1b 00             nop                  	;.
	ram:7b1c 02             ld (bc),a            	;.
	ram:7b1d 04             inc b                	;.
	ram:7b1e 08             ex af,af'            	;.
	ram:7b1f 04             inc b                	;.
	ram:7b20 02             ld (bc),a            	;.
	ram:7b21 04             inc b                	;.
	ram:7b22 00             nop                  	;.
	ram:7b23 00             nop                  	;.
	ram:7b24 0e 00          ld c,000h            	;. .
	ram:7b26 0e 00          ld c,000h            	;. .
	ram:7b28 04             inc b                	;.
	ram:7b29 00             nop                  	;.
	ram:7b2a 08             ex af,af'            	;.
	ram:7b2b 04             inc b                	;.
	ram:7b2c 02             ld (bc),a            	;.
	ram:7b2d 04             inc b                	;.
	ram:7b2e 08             ex af,af'            	;.
	ram:7b2f 04             inc b                	;.
	ram:7b30 00             nop                  	;.
	ram:7b31 0c             inc c                	;.
	ram:7b32 02             ld (bc),a            	;.
	ram:7b33 04             inc b                	;.
	ram:7b34 00             nop                  	;.
	ram:7b35 04             inc b                	;.
	ram:7b36 06 00          ld b,000h            	;. .
	ram:7b38 1c             inc e                	;.
	ram:7b39 02             ld (bc),a            	;.
	ram:7b3a 1a             ld a,(de)            	;.
	ram:7b3b 2a 1c 04       ld hl,(0041ch)       	;* . .
	ram:7b3e 00             nop                  	;.
	ram:7b3f 04             inc b                	;.
	ram:7b40 0a             ld a,(bc)            	;.
	ram:7b41 0e 0a          ld c,00ah            	;. .
	ram:7b43 0a             ld a,(bc)            	;.
	ram:7b44 04             inc b                	;.
	ram:7b45 00             nop                  	;.
	ram:7b46 0c             inc c                	;.
	ram:7b47 0a             ld a,(bc)            	;.
	ram:7b48 0c             inc c                	;.
	ram:7b49 0a             ld a,(bc)            	;.
	ram:7b4a 0c             inc c                	;.
	ram:7b4b 04             inc b                	;.
	ram:7b4c 00             nop                  	;.
	ram:7b4d 06 08          ld b,008h            	;. .
	ram:7b4f 08             ex af,af'            	;.
	ram:7b50 08             ex af,af'            	;.
	ram:7b51 06 04          ld b,004h            	;. .
	ram:7b53 00             nop                  	;.
	ram:7b54 0c             inc c                	;.
	ram:7b55 0a             ld a,(bc)            	;.
	ram:7b56 0a             ld a,(bc)            	;.
	ram:7b57 0a             ld a,(bc)            	;.
	ram:7b58 0c             inc c                	;.
	ram:7b59 04             inc b                	;.
	ram:7b5a 00             nop                  	;.
	ram:7b5b 0e 08          ld c,008h            	;. .
	ram:7b5d 0c             inc c                	;.
	ram:7b5e 08             ex af,af'            	;.
	ram:7b5f 0e 04          ld c,004h            	;. .
	ram:7b61 00             nop                  	;.
	ram:7b62 0e 08          ld c,008h            	;. .
	ram:7b64 0c             inc c                	;.
	ram:7b65 08             ex af,af'            	;.
	ram:7b66 08             ex af,af'            	;.
	ram:7b67 05             dec b                	;.
	ram:7b68 00             nop                  	;.
	ram:7b69 0e 10          ld c,010h            	;. .
	ram:7b6b 16 12          ld d,012h            	;. .
	ram:7b6d 0e 04          ld c,004h            	;. .
	ram:7b6f 00             nop                  	;.
	ram:7b70 0a             ld a,(bc)            	;.
	ram:7b71 0a             ld a,(bc)            	;.
	ram:7b72 0e 0a          ld c,00ah            	;. .
	ram:7b74 0a             ld a,(bc)            	;.
	ram:7b75 02             ld (bc),a            	;.
	ram:7b76 00             nop                  	;.
	ram:7b77 02             ld (bc),a            	;.
	ram:7b78 02             ld (bc),a            	;.
	ram:7b79 02             ld (bc),a            	;.
	ram:7b7a 02             ld (bc),a            	;.
	ram:7b7b 02             ld (bc),a            	;.
	ram:7b7c 04             inc b                	;.
	ram:7b7d 00             nop                  	;.
	ram:7b7e 02             ld (bc),a            	;.
	ram:7b7f 02             ld (bc),a            	;.
	ram:7b80 02             ld (bc),a            	;.
	ram:7b81 0a             ld a,(bc)            	;.
	ram:7b82 0e 05          ld c,005h            	;. .
	ram:7b84 00             nop                  	;.
	ram:7b85 12             ld (de),a            	;.
	ram:7b86 14             inc d                	;.
	ram:7b87 18 14          jr 22                	;. .
	ram:7b89 12             ld (de),a            	;.
	ram:7b8a 04             inc b                	;.
	ram:7b8b 00             nop                  	;.
	ram:7b8c 08             ex af,af'            	;.
	ram:7b8d 08             ex af,af'            	;.
	ram:7b8e 08             ex af,af'            	;.
	ram:7b8f 08             ex af,af'            	;.
	ram:7b90 0e 06          ld c,006h            	;. .
	ram:7b92 00             nop                  	;.
	ram:7b93 22 36 2a       ld (02a36h),hl       	;" 6 *
	ram:7b96 22 22 05       ld (00522h),hl       	;" " .
	ram:7b99 00             nop                  	;.
	ram:7b9a 12             ld (de),a            	;.
	ram:7b9b 1a             ld a,(de)            	;.
	ram:7b9c 1e 16          ld e,016h            	;. .
	ram:7b9e 12             ld (de),a            	;.
	ram:7b9f 04             inc b                	;.
	ram:7ba0 00             nop                  	;.
	ram:7ba1 0e 0a          ld c,00ah            	;. .
	ram:7ba3 0a             ld a,(bc)            	;.
	ram:7ba4 0a             ld a,(bc)            	;.
	ram:7ba5 0e 04          ld c,004h            	;. .
	ram:7ba7 00             nop                  	;.
	ram:7ba8 0c             inc c                	;.
	ram:7ba9 0a             ld a,(bc)            	;.
	ram:7baa 0c             inc c                	;.
	ram:7bab 08             ex af,af'            	;.
	ram:7bac 08             ex af,af'            	;.
	ram:7bad 05             dec b                	;.
	ram:7bae 00             nop                  	;.
	ram:7baf 0c             inc c                	;.
	ram:7bb0 12             ld (de),a            	;.
	ram:7bb1 12             ld (de),a            	;.
	ram:7bb2 14             inc d                	;.
	ram:7bb3 0a             ld a,(bc)            	;.
	ram:7bb4 04             inc b                	;.
	ram:7bb5 00             nop                  	;.
	ram:7bb6 0c             inc c                	;.
	ram:7bb7 0a             ld a,(bc)            	;.
	ram:7bb8 0c             inc c                	;.
	ram:7bb9 0a             ld a,(bc)            	;.
	ram:7bba 0a             ld a,(bc)            	;.
	ram:7bbb 04             inc b                	;.
	ram:7bbc 00             nop                  	;.
	ram:7bbd 06 08          ld b,008h            	;. .
	ram:7bbf 04             inc b                	;.
	ram:7bc0 02             ld (bc),a            	;.
	ram:7bc1 0c             inc c                	;.
	ram:7bc2 04             inc b                	;.
	ram:7bc3 00             nop                  	;.
	ram:7bc4 0e 04          ld c,004h            	;. .
	ram:7bc6 04             inc b                	;.
	ram:7bc7 04             inc b                	;.
	ram:7bc8 04             inc b                	;.
	ram:7bc9 04             inc b                	;.
	ram:7bca 00             nop                  	;.
	ram:7bcb 0a             ld a,(bc)            	;.
	ram:7bcc 0a             ld a,(bc)            	;.
	ram:7bcd 0a             ld a,(bc)            	;.
	ram:7bce 0a             ld a,(bc)            	;.
	ram:7bcf 0e 04          ld c,004h            	;. .
	ram:7bd1 00             nop                  	;.
	ram:7bd2 0a             ld a,(bc)            	;.
	ram:7bd3 0a             ld a,(bc)            	;.
	ram:7bd4 0a             ld a,(bc)            	;.
	ram:7bd5 04             inc b                	;.
	ram:7bd6 04             inc b                	;.
	ram:7bd7 06 00          ld b,000h            	;. .
	ram:7bd9 22 22 2a       ld (02a22h),hl       	;" " *
	ram:7bdc 36 22          ld (hl),022h         	;6 "
	ram:7bde 04             inc b                	;.
	ram:7bdf 00             nop                  	;.
	ram:7be0 0a             ld a,(bc)            	;.
	ram:7be1 0a             ld a,(bc)            	;.
	ram:7be2 04             inc b                	;.
	ram:7be3 0a             ld a,(bc)            	;.
	ram:7be4 0a             ld a,(bc)            	;.
	ram:7be5 04             inc b                	;.
	ram:7be6 00             nop                  	;.
	ram:7be7 0a             ld a,(bc)            	;.
	ram:7be8 0a             ld a,(bc)            	;.
	ram:7be9 04             inc b                	;.
	ram:7bea 04             inc b                	;.
	ram:7beb 04             inc b                	;.
	ram:7bec 04             inc b                	;.
	ram:7bed 00             nop                  	;.
	ram:7bee 0e 02          ld c,002h            	;. .
	ram:7bf0 04             inc b                	;.
	ram:7bf1 08             ex af,af'            	;.
	ram:7bf2 0e 03          ld c,003h            	;. .
	ram:7bf4 00             nop                  	;.
	ram:7bf5 06 04          ld b,004h            	;. .
	ram:7bf7 04             inc b                	;.
	ram:7bf8 04             inc b                	;.
	ram:7bf9 06 04          ld b,004h            	;. .
	ram:7bfb 00             nop                  	;.
	ram:7bfc 08             ex af,af'            	;.
	ram:7bfd 08             ex af,af'            	;.
	ram:7bfe 04             inc b                	;.
	ram:7bff 02             ld (bc),a            	;.
	ram:7c00 02             ld (bc),a            	;.
	ram:7c01 03             inc bc               	;.
	ram:7c02 00             nop                  	;.
	ram:7c03 06 02          ld b,002h            	;. .
	ram:7c05 02             ld (bc),a            	;.
	ram:7c06 02             ld (bc),a            	;.
	ram:7c07 06 04          ld b,004h            	;. .
	ram:7c09 00             nop                  	;.
	ram:7c0a 04             inc b                	;.
	ram:7c0b 0a             ld a,(bc)            	;.
	ram:7c0c 00             nop                  	;.
	ram:7c0d 00             nop                  	;.
	ram:7c0e 00             nop                  	;.
	ram:7c0f 04             inc b                	;.
	ram:7c10 00             nop                  	;.
	ram:7c11 00             nop                  	;.
	ram:7c12 00             nop                  	;.
	ram:7c13 00             nop                  	;.
	ram:7c14 00             nop                  	;.
	ram:7c15 0e 03          ld c,003h            	;. .
	ram:7c17 00             nop                  	;.
	ram:7c18 04             inc b                	;.
	ram:7c19 02             ld (bc),a            	;.
	ram:7c1a 00             nop                  	;.
	ram:7c1b 00             nop                  	;.
	ram:7c1c 00             nop                  	;.
	ram:7c1d 04             inc b                	;.
	ram:7c1e 00             nop                  	;.
	ram:7c1f 00             nop                  	;.
	ram:7c20 06 0a          ld b,00ah            	;. .
	ram:7c22 0a             ld a,(bc)            	;.
	ram:7c23 06 04          ld b,004h            	;. .
	ram:7c25 00             nop                  	;.
	ram:7c26 08             ex af,af'            	;.
	ram:7c27 0c             inc c                	;.
	ram:7c28 0a             ld a,(bc)            	;.
	ram:7c29 0a             ld a,(bc)            	;.
	ram:7c2a 0c             inc c                	;.
	ram:7c2b 04             inc b                	;.
	ram:7c2c 00             nop                  	;.
	ram:7c2d 00             nop                  	;.
	ram:7c2e 06 08          ld b,008h            	;. .
	ram:7c30 08             ex af,af'            	;.
	ram:7c31 06 04          ld b,004h            	;. .
	ram:7c33 00             nop                  	;.
	ram:7c34 02             ld (bc),a            	;.
	ram:7c35 06 0a          ld b,00ah            	;. .
	ram:7c37 0a             ld a,(bc)            	;.
	ram:7c38 06 04          ld b,004h            	;. .
	ram:7c3a 00             nop                  	;.
	ram:7c3b 00             nop                  	;.
	ram:7c3c 04             inc b                	;.
	ram:7c3d 0a             ld a,(bc)            	;.
	ram:7c3e 0c             inc c                	;.
	ram:7c3f 06 03          ld b,003h            	;. .
	ram:7c41 00             nop                  	;.
	ram:7c42 02             ld (bc),a            	;.
	ram:7c43 04             inc b                	;.
	ram:7c44 06 04          ld b,004h            	;. .
	ram:7c46 04             inc b                	;.
	ram:7c47 04             inc b                	;.
	ram:7c48 00             nop                  	;.
	ram:7c49 06 0a          ld b,00ah            	;. .
	ram:7c4b 06 02          ld b,002h            	;. .
	ram:7c4d 0c             inc c                	;.
	ram:7c4e 04             inc b                	;.
	ram:7c4f 00             nop                  	;.
	ram:7c50 08             ex af,af'            	;.
	ram:7c51 0c             inc c                	;.
	ram:7c52 0a             ld a,(bc)            	;.
	ram:7c53 0a             ld a,(bc)            	;.
	ram:7c54 0a             ld a,(bc)            	;.
	ram:7c55 02             ld (bc),a            	;.
	ram:7c56 00             nop                  	;.
	ram:7c57 02             ld (bc),a            	;.
	ram:7c58 00             nop                  	;.
	ram:7c59 02             ld (bc),a            	;.
	ram:7c5a 02             ld (bc),a            	;.
	ram:7c5b 02             ld (bc),a            	;.
	ram:7c5c 04             inc b                	;.
	ram:7c5d 00             nop                  	;.
	ram:7c5e 02             ld (bc),a            	;.
	ram:7c5f 00             nop                  	;.
	ram:7c60 02             ld (bc),a            	;.
	ram:7c61 0a             ld a,(bc)            	;.
	ram:7c62 04             inc b                	;.
	ram:7c63 04             inc b                	;.
	ram:7c64 00             nop                  	;.
	ram:7c65 08             ex af,af'            	;.
	ram:7c66 08             ex af,af'            	;.
	ram:7c67 0a             ld a,(bc)            	;.
	ram:7c68 0c             inc c                	;.
	ram:7c69 0a             ld a,(bc)            	;.
	ram:7c6a 03             inc bc               	;.
	ram:7c6b 00             nop                  	;.
	ram:7c6c 06 02          ld b,002h            	;. .
	ram:7c6e 02             ld (bc),a            	;.
	ram:7c6f 02             ld (bc),a            	;.
	ram:7c70 02             ld (bc),a            	;.
	ram:7c71 06 00          ld b,000h            	;. .
	ram:7c73 00             nop                  	;.
	ram:7c74 34             inc (hl)             	;4
	ram:7c75 2a 2a 22       ld hl,(0222ah)       	;* * "
	ram:7c78 04             inc b                	;.
	ram:7c79 00             nop                  	;.
	ram:7c7a 00             nop                  	;.
	ram:7c7b 0c             inc c                	;.
	ram:7c7c 0a             ld a,(bc)            	;.
	ram:7c7d 0a             ld a,(bc)            	;.
	ram:7c7e 0a             ld a,(bc)            	;.
	ram:7c7f 04             inc b                	;.
	ram:7c80 00             nop                  	;.
	ram:7c81 00             nop                  	;.
	ram:7c82 04             inc b                	;.
	ram:7c83 0a             ld a,(bc)            	;.
	ram:7c84 0a             ld a,(bc)            	;.
	ram:7c85 04             inc b                	;.
	ram:7c86 04             inc b                	;.
	ram:7c87 00             nop                  	;.
	ram:7c88 00             nop                  	;.
	ram:7c89 0c             inc c                	;.
	ram:7c8a 0a             ld a,(bc)            	;.
	ram:7c8b 0c             inc c                	;.
	ram:7c8c 08             ex af,af'            	;.
	ram:7c8d 04             inc b                	;.
	ram:7c8e 00             nop                  	;.
	ram:7c8f 00             nop                  	;.
	ram:7c90 06 0a          ld b,00ah            	;. .
	ram:7c92 06 02          ld b,002h            	;. .
	ram:7c94 04             inc b                	;.
	ram:7c95 00             nop                  	;.
	ram:7c96 00             nop                  	;.
	ram:7c97 0a             ld a,(bc)            	;.
	ram:7c98 0c             inc c                	;.
	ram:7c99 08             ex af,af'            	;.
	ram:7c9a 08             ex af,af'            	;.
	ram:7c9b 03             inc bc               	;.
	ram:7c9c 00             nop                  	;.
	ram:7c9d 00             nop                  	;.
	ram:7c9e 06 04          ld b,004h            	;. .
	ram:7ca0 02             ld (bc),a            	;.
	ram:7ca1 06 03          ld b,003h            	;. .
	ram:7ca3 00             nop                  	;.
	ram:7ca4 04             inc b                	;.
	ram:7ca5 06 04          ld b,004h            	;. .
	ram:7ca7 04             inc b                	;.
	ram:7ca8 02             ld (bc),a            	;.
	ram:7ca9 04             inc b                	;.
	ram:7caa 00             nop                  	;.
	ram:7cab 00             nop                  	;.
	ram:7cac 0a             ld a,(bc)            	;.
	ram:7cad 0a             ld a,(bc)            	;.
	ram:7cae 0a             ld a,(bc)            	;.
	ram:7caf 0e 04          ld c,004h            	;. .
	ram:7cb1 00             nop                  	;.
	ram:7cb2 00             nop                  	;.
	ram:7cb3 0a             ld a,(bc)            	;.
	ram:7cb4 0a             ld a,(bc)            	;.
	ram:7cb5 0a             ld a,(bc)            	;.
	ram:7cb6 04             inc b                	;.
	ram:7cb7 06 00          ld b,000h            	;. .
	ram:7cb9 00             nop                  	;.
	ram:7cba 22 2a 2a       ld (02a2ah),hl       	;" * *
	ram:7cbd 14             inc d                	;.
	ram:7cbe 04             inc b                	;.
	ram:7cbf 00             nop                  	;.
	ram:7cc0 00             nop                  	;.
	ram:7cc1 0a             ld a,(bc)            	;.
	ram:7cc2 04             inc b                	;.
	ram:7cc3 04             inc b                	;.
	ram:7cc4 0a             ld a,(bc)            	;.
	ram:7cc5 04             inc b                	;.
	ram:7cc6 00             nop                  	;.
	ram:7cc7 00             nop                  	;.
	ram:7cc8 0a             ld a,(bc)            	;.
	ram:7cc9 0a             ld a,(bc)            	;.
	ram:7cca 04             inc b                	;.
	ram:7ccb 08             ex af,af'            	;.
	ram:7ccc 05             dec b                	;.
	ram:7ccd 00             nop                  	;.
	ram:7cce 00             nop                  	;.
	ram:7ccf 1e 04          ld e,004h            	;. .
	ram:7cd1 08             ex af,af'            	;.
	ram:7cd2 1e 04          ld e,004h            	;. .
	ram:7cd4 00             nop                  	;.
	ram:7cd5 06 04          ld b,004h            	;. .
	ram:7cd7 08             ex af,af'            	;.
	ram:7cd8 04             inc b                	;.
	ram:7cd9 06 02          ld b,002h            	;. .
	ram:7cdb 00             nop                  	;.
	ram:7cdc 02             ld (bc),a            	;.
	ram:7cdd 02             ld (bc),a            	;.
	ram:7cde 02             ld (bc),a            	;.
	ram:7cdf 02             ld (bc),a            	;.
	ram:7ce0 02             ld (bc),a            	;.
	ram:7ce1 04             inc b                	;.
	ram:7ce2 00             nop                  	;.
	ram:7ce3 0c             inc c                	;.
	ram:7ce4 04             inc b                	;.
	ram:7ce5 02             ld (bc),a            	;.
	ram:7ce6 04             inc b                	;.
	ram:7ce7 0c             inc c                	;.
	ram:7ce8 05             dec b                	;.
	ram:7ce9 00             nop                  	;.
	ram:7cea 00             nop                  	;.
	ram:7ceb 0a             ld a,(bc)            	;.
	ram:7cec 14             inc d                	;.
	ram:7ced 00             nop                  	;.
	ram:7cee 00             nop                  	;.
	ram:7cef 04             inc b                	;.
	ram:7cf0 00             nop                  	;.
	ram:7cf1 0e 00          ld c,000h            	;. .
	ram:7cf3 0e 00          ld c,000h            	;. .
	ram:7cf5 0e 04          ld c,004h            	;. .
	ram:7cf7 00             nop                  	;.
	ram:7cf8 0e 0a          ld c,00ah            	;. .
	ram:7cfa 0a             ld a,(bc)            	;.
	ram:7cfb 0a             ld a,(bc)            	;.
	ram:7cfc 0e 03          ld c,003h            	;. .
	ram:7cfe 00             nop                  	;.
	ram:7cff 02             ld (bc),a            	;.
	ram:7d00 06 02          ld b,002h            	;. .
	ram:7d02 02             ld (bc),a            	;.
	ram:7d03 02             ld (bc),a            	;.
	ram:7d04 04             inc b                	;.
	ram:7d05 00             nop                  	;.
	ram:7d06 00             nop                  	;.
	ram:7d07 0c             inc c                	;.
	ram:7d08 02             ld (bc),a            	;.
	ram:7d09 04             inc b                	;.
	ram:7d0a 0e 04          ld c,004h            	;. .
	ram:7d0c 00             nop                  	;.
	ram:7d0d 0c             inc c                	;.
	ram:7d0e 02             ld (bc),a            	;.
	ram:7d0f 04             inc b                	;.
	ram:7d10 02             ld (bc),a            	;.
	ram:7d11 0c             inc c                	;.
	ram:7d12 04             inc b                	;.
	ram:7d13 00             nop                  	;.
	ram:7d14 08             ex af,af'            	;.
	ram:7d15 0a             ld a,(bc)            	;.
	ram:7d16 0e 02          ld c,002h            	;. .
	ram:7d18 02             ld (bc),a            	;.
	ram:7d19 04             inc b                	;.
	ram:7d1a 00             nop                  	;.
	ram:7d1b 0e 08          ld c,008h            	;. .
	ram:7d1d 0c             inc c                	;.
	ram:7d1e 02             ld (bc),a            	;.
	ram:7d1f 0c             inc c                	;.
	ram:7d20 04             inc b                	;.
	ram:7d21 00             nop                  	;.
	ram:7d22 06 08          ld b,008h            	;. .
	ram:7d24 0e 0a          ld c,00ah            	;. .
	ram:7d26 0e 04          ld c,004h            	;. .
	ram:7d28 00             nop                  	;.
	ram:7d29 0e 02          ld c,002h            	;. .
	ram:7d2b 04             inc b                	;.
	ram:7d2c 08             ex af,af'            	;.
	ram:7d2d 08             ex af,af'            	;.
	ram:7d2e 04             inc b                	;.
	ram:7d2f 00             nop                  	;.
	ram:7d30 0e 0a          ld c,00ah            	;. .
	ram:7d32 0e 0a          ld c,00ah            	;. .
	ram:7d34 0e 04          ld c,004h            	;. .
	ram:7d36 00             nop                  	;.
	ram:7d37 0e 0a          ld c,00ah            	;. .
	ram:7d39 0e 02          ld c,002h            	;. .
	ram:7d3b 0c             inc c                	;.
	ram:7d3c 04             inc b                	;.
	ram:7d3d 00             nop                  	;.
	ram:7d3e 04             inc b                	;.
	ram:7d3f 0a             ld a,(bc)            	;.
	ram:7d40 0e 0a          ld c,00ah            	;. .
	ram:7d42 0a             ld a,(bc)            	;.
	ram:7d43 04             inc b                	;.
	ram:7d44 00             nop                  	;.
	ram:7d45 04             inc b                	;.
	ram:7d46 0a             ld a,(bc)            	;.
	ram:7d47 0e 0a          ld c,00ah            	;. .
	ram:7d49 0a             ld a,(bc)            	;.
	ram:7d4a 04             inc b                	;.
	ram:7d4b 00             nop                  	;.
	ram:7d4c 04             inc b                	;.
	ram:7d4d 0a             ld a,(bc)            	;.
	ram:7d4e 0e 0a          ld c,00ah            	;. .
	ram:7d50 0a             ld a,(bc)            	;.
	ram:7d51 04             inc b                	;.
	ram:7d52 00             nop                  	;.
	ram:7d53 04             inc b                	;.
	ram:7d54 0a             ld a,(bc)            	;.
	ram:7d55 0e 0a          ld c,00ah            	;. .
	ram:7d57 0a             ld a,(bc)            	;.
	ram:7d58 04             inc b                	;.
	ram:7d59 00             nop                  	;.
	ram:7d5a 00             nop                  	;.
	ram:7d5b 06 0a          ld b,00ah            	;. .
	ram:7d5d 0a             ld a,(bc)            	;.
	ram:7d5e 06 04          ld b,004h            	;. .
	ram:7d60 00             nop                  	;.
	ram:7d61 00             nop                  	;.
	ram:7d62 06 0a          ld b,00ah            	;. .
	ram:7d64 0a             ld a,(bc)            	;.
	ram:7d65 06 04          ld b,004h            	;. .
	ram:7d67 00             nop                  	;.
	ram:7d68 00             nop                  	;.
	ram:7d69 06 0a          ld b,00ah            	;. .
	ram:7d6b 0a             ld a,(bc)            	;.
	ram:7d6c 06 04          ld b,004h            	;. .
	ram:7d6e 00             nop                  	;.
	ram:7d6f 00             nop                  	;.
	ram:7d70 06 0a          ld b,00ah            	;. .
	ram:7d72 0a             ld a,(bc)            	;.
	ram:7d73 06 04          ld b,004h            	;. .
	ram:7d75 00             nop                  	;.
	ram:7d76 0e 08          ld c,008h            	;. .
	ram:7d78 0c             inc c                	;.
	ram:7d79 08             ex af,af'            	;.
	ram:7d7a 0e 04          ld c,004h            	;. .
	ram:7d7c 00             nop                  	;.
	ram:7d7d 0e 08          ld c,008h            	;. .
	ram:7d7f 0c             inc c                	;.
	ram:7d80 08             ex af,af'            	;.
	ram:7d81 0e 04          ld c,004h            	;. .
	ram:7d83 00             nop                  	;.
	ram:7d84 0e 08          ld c,008h            	;. .
	ram:7d86 0c             inc c                	;.
	ram:7d87 08             ex af,af'            	;.
	ram:7d88 0e 04          ld c,004h            	;. .
	ram:7d8a 00             nop                  	;.
	ram:7d8b 0e 08          ld c,008h            	;. .
	ram:7d8d 0c             inc c                	;.
	ram:7d8e 08             ex af,af'            	;.
	ram:7d8f 0e 04          ld c,004h            	;. .
	ram:7d91 00             nop                  	;.
	ram:7d92 00             nop                  	;.
	ram:7d93 04             inc b                	;.
	ram:7d94 0a             ld a,(bc)            	;.
	ram:7d95 0c             inc c                	;.
	ram:7d96 06 04          ld b,004h            	;. .
	ram:7d98 00             nop                  	;.
	ram:7d99 00             nop                  	;.
	ram:7d9a 04             inc b                	;.
	ram:7d9b 0a             ld a,(bc)            	;.
	ram:7d9c 0c             inc c                	;.
	ram:7d9d 06 04          ld b,004h            	;. .
	ram:7d9f 00             nop                  	;.
	ram:7da0 00             nop                  	;.
	ram:7da1 04             inc b                	;.
	ram:7da2 0a             ld a,(bc)            	;.
	ram:7da3 0c             inc c                	;.
	ram:7da4 06 04          ld b,004h            	;. .
	ram:7da6 00             nop                  	;.
	ram:7da7 00             nop                  	;.
	ram:7da8 04             inc b                	;.
	ram:7da9 0a             ld a,(bc)            	;.
	ram:7daa 0c             inc c                	;.
	ram:7dab 06 02          ld b,002h            	;. .
	ram:7dad 00             nop                  	;.
	ram:7dae 02             ld (bc),a            	;.
	ram:7daf 02             ld (bc),a            	;.
	ram:7db0 02             ld (bc),a            	;.
	ram:7db1 02             ld (bc),a            	;.
	ram:7db2 02             ld (bc),a            	;.
	ram:7db3 02             ld (bc),a            	;.
	ram:7db4 00             nop                  	;.
	ram:7db5 02             ld (bc),a            	;.
	ram:7db6 02             ld (bc),a            	;.
	ram:7db7 02             ld (bc),a            	;.
	ram:7db8 02             ld (bc),a            	;.
	ram:7db9 02             ld (bc),a            	;.
	ram:7dba 02             ld (bc),a            	;.
	ram:7dbb 00             nop                  	;.
	ram:7dbc 02             ld (bc),a            	;.
	ram:7dbd 02             ld (bc),a            	;.
	ram:7dbe 02             ld (bc),a            	;.
	ram:7dbf 02             ld (bc),a            	;.
	ram:7dc0 02             ld (bc),a            	;.
	ram:7dc1 02             ld (bc),a            	;.
	ram:7dc2 00             nop                  	;.
	ram:7dc3 02             ld (bc),a            	;.
	ram:7dc4 02             ld (bc),a            	;.
	ram:7dc5 02             ld (bc),a            	;.
	ram:7dc6 02             ld (bc),a            	;.
	ram:7dc7 02             ld (bc),a            	;.
	ram:7dc8 02             ld (bc),a            	;.
	ram:7dc9 00             nop                  	;.
	ram:7dca 02             ld (bc),a            	;.
	ram:7dcb 00             nop                  	;.
	ram:7dcc 02             ld (bc),a            	;.
	ram:7dcd 02             ld (bc),a            	;.
	ram:7dce 02             ld (bc),a            	;.
	ram:7dcf 02             ld (bc),a            	;.
	ram:7dd0 00             nop                  	;.
	ram:7dd1 02             ld (bc),a            	;.
	ram:7dd2 00             nop                  	;.
	ram:7dd3 02             ld (bc),a            	;.
	ram:7dd4 02             ld (bc),a            	;.
	ram:7dd5 02             ld (bc),a            	;.
	ram:7dd6 02             ld (bc),a            	;.
	ram:7dd7 00             nop                  	;.
	ram:7dd8 02             ld (bc),a            	;.
	ram:7dd9 00             nop                  	;.
	ram:7dda 02             ld (bc),a            	;.
	ram:7ddb 02             ld (bc),a            	;.
	ram:7ddc 02             ld (bc),a            	;.
	ram:7ddd 02             ld (bc),a            	;.
	ram:7dde 00             nop                  	;.
	ram:7ddf 02             ld (bc),a            	;.
	ram:7de0 00             nop                  	;.
	ram:7de1 02             ld (bc),a            	;.
	ram:7de2 02             ld (bc),a            	;.
	ram:7de3 02             ld (bc),a            	;.
	ram:7de4 04             inc b                	;.
	ram:7de5 00             nop                  	;.
	ram:7de6 0e 0a          ld c,00ah            	;. .
	ram:7de8 0a             ld a,(bc)            	;.
	ram:7de9 0a             ld a,(bc)            	;.
	ram:7dea 0e 04          ld c,004h            	;. .
	ram:7dec 00             nop                  	;.
	ram:7ded 0e 0a          ld c,00ah            	;. .
	ram:7def 0a             ld a,(bc)            	;.
	ram:7df0 0a             ld a,(bc)            	;.
	ram:7df1 0e 04          ld c,004h            	;. .
	ram:7df3 00             nop                  	;.
	ram:7df4 0e 0a          ld c,00ah            	;. .
	ram:7df6 0a             ld a,(bc)            	;.
	ram:7df7 0a             ld a,(bc)            	;.
	ram:7df8 0e 04          ld c,004h            	;. .
	ram:7dfa 00             nop                  	;.
	ram:7dfb 0e 0a          ld c,00ah            	;. .
	ram:7dfd 0a             ld a,(bc)            	;.
	ram:7dfe 0a             ld a,(bc)            	;.
	ram:7dff 0e 04          ld c,004h            	;. .
	ram:7e01 00             nop                  	;.
	ram:7e02 00             nop                  	;.
	ram:7e03 04             inc b                	;.
	ram:7e04 0a             ld a,(bc)            	;.
	ram:7e05 0a             ld a,(bc)            	;.
	ram:7e06 04             inc b                	;.
	ram:7e07 04             inc b                	;.
	ram:7e08 00             nop                  	;.
	ram:7e09 00             nop                  	;.
	ram:7e0a 04             inc b                	;.
	ram:7e0b 0a             ld a,(bc)            	;.
	ram:7e0c 0a             ld a,(bc)            	;.
	ram:7e0d 04             inc b                	;.
	ram:7e0e 04             inc b                	;.
	ram:7e0f 00             nop                  	;.
	ram:7e10 00             nop                  	;.
	ram:7e11 04             inc b                	;.
	ram:7e12 0a             ld a,(bc)            	;.
	ram:7e13 0a             ld a,(bc)            	;.
	ram:7e14 04             inc b                	;.
	ram:7e15 04             inc b                	;.
	ram:7e16 00             nop                  	;.
	ram:7e17 00             nop                  	;.
	ram:7e18 04             inc b                	;.
	ram:7e19 0a             ld a,(bc)            	;.
	ram:7e1a 0a             ld a,(bc)            	;.
	ram:7e1b 04             inc b                	;.
	ram:7e1c 04             inc b                	;.
	ram:7e1d 00             nop                  	;.
	ram:7e1e 0a             ld a,(bc)            	;.
	ram:7e1f 0a             ld a,(bc)            	;.
	ram:7e20 0a             ld a,(bc)            	;.
	ram:7e21 0a             ld a,(bc)            	;.
	ram:7e22 0e 04          ld c,004h            	;. .
	ram:7e24 00             nop                  	;.
	ram:7e25 0a             ld a,(bc)            	;.
	ram:7e26 0a             ld a,(bc)            	;.
	ram:7e27 0a             ld a,(bc)            	;.
	ram:7e28 0a             ld a,(bc)            	;.
	ram:7e29 0e 04          ld c,004h            	;. .
	ram:7e2b 00             nop                  	;.
	ram:7e2c 0a             ld a,(bc)            	;.
	ram:7e2d 0a             ld a,(bc)            	;.
	ram:7e2e 0a             ld a,(bc)            	;.
	ram:7e2f 0a             ld a,(bc)            	;.
	ram:7e30 0e 04          ld c,004h            	;. .
	ram:7e32 00             nop                  	;.
	ram:7e33 0a             ld a,(bc)            	;.
	ram:7e34 0a             ld a,(bc)            	;.
	ram:7e35 0a             ld a,(bc)            	;.
	ram:7e36 0a             ld a,(bc)            	;.
	ram:7e37 0e 04          ld c,004h            	;. .
	ram:7e39 00             nop                  	;.
	ram:7e3a 00             nop                  	;.
	ram:7e3b 0a             ld a,(bc)            	;.
	ram:7e3c 0a             ld a,(bc)            	;.
	ram:7e3d 0a             ld a,(bc)            	;.
	ram:7e3e 0e 04          ld c,004h            	;. .
	ram:7e40 00             nop                  	;.
	ram:7e41 00             nop                  	;.
	ram:7e42 0a             ld a,(bc)            	;.
	ram:7e43 0a             ld a,(bc)            	;.
	ram:7e44 0a             ld a,(bc)            	;.
	ram:7e45 0e 04          ld c,004h            	;. .
	ram:7e47 00             nop                  	;.
	ram:7e48 00             nop                  	;.
	ram:7e49 0a             ld a,(bc)            	;.
	ram:7e4a 0a             ld a,(bc)            	;.
	ram:7e4b 0a             ld a,(bc)            	;.
	ram:7e4c 0e 04          ld c,004h            	;. .
	ram:7e4e 00             nop                  	;.
	ram:7e4f 00             nop                  	;.
	ram:7e50 0a             ld a,(bc)            	;.
	ram:7e51 0a             ld a,(bc)            	;.
	ram:7e52 0a             ld a,(bc)            	;.
	ram:7e53 0e 04          ld c,004h            	;. .
	ram:7e55 00             nop                  	;.
	ram:7e56 06 08          ld b,008h            	;. .
	ram:7e58 08             ex af,af'            	;.
	ram:7e59 06 0c          ld b,00ch            	;. .
	ram:7e5b 04             inc b                	;.
	ram:7e5c 00             nop                  	;.
	ram:7e5d 00             nop                  	;.
	ram:7e5e 06 08          ld b,008h            	;. .
	ram:7e60 06 0c          ld b,00ch            	;. .
	ram:7e62 05             dec b                	;.
	ram:7e63 0a             ld a,(bc)            	;.
	ram:7e64 14             inc d                	;.
	ram:7e65 12             ld (de),a            	;.
	ram:7e66 1a             ld a,(de)            	;.
	ram:7e67 16 12          ld d,012h            	;. .
	ram:7e69 05             dec b                	;.
	ram:7e6a 0a             ld a,(bc)            	;.
	ram:7e6b 14             inc d                	;.
	ram:7e6c 00             nop                  	;.
	ram:7e6d 1c             inc e                	;.
	ram:7e6e 12             ld (de),a            	;.
	ram:7e6f 12             ld (de),a            	;.
	ram:7e70 03             inc bc               	;.
	ram:7e71 00             nop                  	;.
	ram:7e72 02             ld (bc),a            	;.
	ram:7e73 04             inc b                	;.
	ram:7e74 00             nop                  	;.
	ram:7e75 00             nop                  	;.
	ram:7e76 00             nop                  	;.
	ram:7e77 03             inc bc               	;.
	ram:7e78 00             nop                  	;.
	ram:7e79 04             inc b                	;.
	ram:7e7a 02             ld (bc),a            	;.
	ram:7e7b 00             nop                  	;.
	ram:7e7c 00             nop                  	;.
	ram:7e7d 00             nop                  	;.
	ram:7e7e 04             inc b                	;.
	ram:7e7f 00             nop                  	;.
	ram:7e80 0a             ld a,(bc)            	;.
	ram:7e81 00             nop                  	;.
	ram:7e82 00             nop                  	;.
	ram:7e83 00             nop                  	;.
	ram:7e84 00             nop                  	;.
	ram:7e85 04             inc b                	;.
	ram:7e86 00             nop                  	;.
	ram:7e87 04             inc b                	;.
	ram:7e88 00             nop                  	;.
	ram:7e89 04             inc b                	;.
	ram:7e8a 08             ex af,af'            	;.
	ram:7e8b 06 02          ld b,002h            	;. .
	ram:7e8d 00             nop                  	;.
	ram:7e8e 02             ld (bc),a            	;.
	ram:7e8f 00             nop                  	;.
	ram:7e90 02             ld (bc),a            	;.
	ram:7e91 02             ld (bc),a            	;.
	ram:7e92 02             ld (bc),a            	;.
	ram:7e93 05             dec b                	;.
	ram:7e94 00             nop                  	;.
	ram:7e95 00             nop                  	;.
	ram:7e96 0a             ld a,(bc)            	;.
	ram:7e97 14             inc d                	;.
	ram:7e98 14             inc d                	;.
	ram:7e99 0a             ld a,(bc)            	;.
	ram:7e9a 04             inc b                	;.
	ram:7e9b 00             nop                  	;.
	ram:7e9c 04             inc b                	;.
	ram:7e9d 0a             ld a,(bc)            	;.
	ram:7e9e 0c             inc c                	;.
	ram:7e9f 0a             ld a,(bc)            	;.
	ram:7ea0 0c             inc c                	;.
	ram:7ea1 05             dec b                	;.
	ram:7ea2 00             nop                  	;.
	ram:7ea3 02             ld (bc),a            	;.
	ram:7ea4 0a             ld a,(bc)            	;.
	ram:7ea5 14             inc d                	;.
	ram:7ea6 04             inc b                	;.
	ram:7ea7 04             inc b                	;.
	ram:7ea8 06 00          ld b,000h            	;. .
	ram:7eaa 00             nop                  	;.
	ram:7eab 08             ex af,af'            	;.
	ram:7eac 14             inc d                	;.
	ram:7ead 22 3e 04       ld (0043eh),hl       	;" > .
	ram:7eb0 00             nop                  	;.
	ram:7eb1 04             inc b                	;.
	ram:7eb2 08             ex af,af'            	;.
	ram:7eb3 04             inc b                	;.
	ram:7eb4 0a             ld a,(bc)            	;.
	ram:7eb5 04             inc b                	;.
	ram:7eb6 04             inc b                	;.
	ram:7eb7 00             nop                  	;.
	ram:7eb8 06 08          ld b,008h            	;. .
	ram:7eba 0e 08          ld c,008h            	;. .
	ram:7ebc 06 04          ld b,004h            	;. .
	ram:7ebe 00             nop                  	;.
	ram:7ebf 04             inc b                	;.
	ram:7ec0 0a             ld a,(bc)            	;.
	ram:7ec1 0e 0a          ld c,00ah            	;. .
	ram:7ec3 04             inc b                	;.
	ram:7ec4 04             inc b                	;.
	ram:7ec5 00             nop                  	;.
	ram:7ec6 08             ex af,af'            	;.
	ram:7ec7 04             inc b                	;.
	ram:7ec8 04             inc b                	;.
	ram:7ec9 0a             ld a,(bc)            	;.
	ram:7eca 0a             ld a,(bc)            	;.
	ram:7ecb 05             dec b                	;.
	ram:7ecc 00             nop                  	;.
	ram:7ecd 00             nop                  	;.
	ram:7ece 14             inc d                	;.
	ram:7ecf 14             inc d                	;.
	ram:7ed0 1e 10          ld e,010h            	;. .
	ram:7ed2 06 00          ld b,000h            	;. .
	ram:7ed4 00             nop                  	;.
	ram:7ed5 3e 14          ld a,014h            	;> .
	ram:7ed7 14             inc d                	;.
	ram:7ed8 14             inc d                	;.
	ram:7ed9 05             dec b                	;.
	ram:7eda 00             nop                  	;.
	ram:7edb 04             inc b                	;.
	ram:7edc 0a             ld a,(bc)            	;.
	ram:7edd 0c             inc c                	;.
	ram:7ede 08             ex af,af'            	;.
	ram:7edf 10 05          djnz l7ee6h          	;. .
	ram:7ee1 00             nop                  	;.
	ram:7ee2 1e 08          ld e,008h            	;. .
	ram:7ee4 04             inc b                	;.
	ram:7ee5 08             ex af,af'            	;.
l7ee6h:
	ram:7ee6 1e 05          ld e,005h            	;. .
	ram:7ee8 00             nop                  	;.
	ram:7ee9 00             nop                  	;.
	ram:7eea 0e 14          ld c,014h            	;. .
	ram:7eec 14             inc d                	;.
	ram:7eed 08             ex af,af'            	;.
	ram:7eee 05             dec b                	;.
	ram:7eef 00             nop                  	;.
	ram:7ef0 00             nop                  	;.
	ram:7ef1 1c             inc e                	;.
	ram:7ef2 08             ex af,af'            	;.
	ram:7ef3 0a             ld a,(bc)            	;.
	ram:7ef4 04             inc b                	;.
	ram:7ef5 06 00          ld b,000h            	;. .
	ram:7ef7 08             ex af,af'            	;.
	ram:7ef8 1c             inc e                	;.
	ram:7ef9 2a 1c 08       ld hl,(0081ch)       	;* . .
	ram:7efc 06 00          ld b,000h            	;. .
	ram:7efe 1c             inc e                	;.
	ram:7eff 22 22 14       ld (01422h),hl       	;" " .
	ram:7f02 36 04          ld (hl),004h         	;6 .
	ram:7f04 00             nop                  	;.
	ram:7f05 0e 00          ld c,000h            	;. .
	ram:7f07 0a             ld a,(bc)            	;.
	ram:7f08 04             inc b                	;.
	ram:7f09 0a             ld a,(bc)            	;.
	ram:7f0a 04             inc b                	;.
	ram:7f0b 00             nop                  	;.
	ram:7f0c 0e 00          ld c,000h            	;. .
	ram:7f0e 0a             ld a,(bc)            	;.
	ram:7f0f 04             inc b                	;.
	ram:7f10 08             ex af,af'            	;.
	ram:7f11 04             inc b                	;.
	ram:7f12 00             nop                  	;.
	ram:7f13 0a             ld a,(bc)            	;.
	ram:7f14 04             inc b                	;.
	ram:7f15 0a             ld a,(bc)            	;.
	ram:7f16 00             nop                  	;.
	ram:7f17 00             nop                  	;.
	ram:7f18 06 00          ld b,000h            	;. .
	ram:7f1a 00             nop                  	;.
	ram:7f1b 00             nop                  	;.
	ram:7f1c 00             nop                  	;.
	ram:7f1d 00             nop                  	;.
	ram:7f1e 2a 04 00       ld hl,(00004h)       	;* . .
	ram:7f21 02             ld (bc),a            	;.
	ram:7f22 06 0e          ld b,00eh            	;. .
	ram:7f24 06 02          ld b,002h            	;. .
	ram:7f26 03             inc bc               	;.
	ram:7f27 00             nop                  	;.
	ram:7f28 00             nop                  	;.
	ram:7f29 06 06          ld b,006h            	;. .
	ram:7f2b 00             nop                  	;.
	ram:7f2c 00             nop                  	;.
	ram:7f2d 04             inc b                	;.
	ram:7f2e 00             nop                  	;.
	ram:7f2f 02             ld (bc),a            	;.
	ram:7f30 02             ld (bc),a            	;.
	ram:7f31 04             inc b                	;.
	ram:7f32 08             ex af,af'            	;.
	ram:7f33 08             ex af,af'            	;.
	ram:7f34 03             inc bc               	;.
	ram:7f35 00             nop                  	;.
	ram:7f36 00             nop                  	;.
	ram:7f37 00             nop                  	;.
	ram:7f38 06 00          ld b,000h            	;. .
	ram:7f3a 00             nop                  	;.
	ram:7f3b 04             inc b                	;.
	ram:7f3c 00             nop                  	;.
	ram:7f3d 0c             inc c                	;.
	ram:7f3e 02             ld (bc),a            	;.
	ram:7f3f 04             inc b                	;.
	ram:7f40 0e 00          ld c,000h            	;. .
	ram:7f42 04             inc b                	;.
	ram:7f43 00             nop                  	;.
	ram:7f44 04             inc b                	;.
	ram:7f45 0a             ld a,(bc)            	;.
	ram:7f46 04             inc b                	;.
	ram:7f47 00             nop                  	;.
	ram:7f48 00             nop                  	;.
	ram:7f49 04             inc b                	;.
	ram:7f4a 00             nop                  	;.
	ram:7f4b 0e 04          ld c,004h            	;. .
	ram:7f4d 02             ld (bc),a            	;.
	ram:7f4e 0c             inc c                	;.
	ram:7f4f 00             nop                  	;.
	ram:7f50 00             nop                  	;.
	ram:7f51 00             nop                  	;.
	ram:7f52 00             nop                  	;.
	ram:7f53 00             nop                  	;.
	ram:7f54 00             nop                  	;.
	ram:7f55 00             nop                  	;.
	ram:7f56 00             nop                  	;.
	ram:7f57 03             inc bc               	;.
	ram:7f58 00             nop                  	;.
	ram:7f59 06 04          ld b,004h            	;. .
	ram:7f5b 06 04          ld b,004h            	;. .
	ram:7f5d 06                                     ;.
  ; END - Looks like data block
  ; Unused fills 16k block
    ram:7f5e ff             rst 38h                 ;.
	ram:7f5f ff             rst 38h              	;.
	ram:7f60 ff             rst 38h              	;.
	ram:7f61 ff             rst 38h              	;.
	ram:7f62 ff             rst 38h              	;.
	ram:7f63 ff             rst 38h              	;.
	ram:7f64 ff             rst 38h              	;.
	ram:7f65 ff             rst 38h              	;.
	ram:7f66 ff             rst 38h              	;.
	ram:7f67 ff             rst 38h              	;.
	ram:7f68 ff             rst 38h              	;.
	ram:7f69 ff             rst 38h              	;.
	ram:7f6a ff             rst 38h              	;.
	ram:7f6b ff             rst 38h              	;.
	ram:7f6c ff             rst 38h              	;.
	ram:7f6d ff             rst 38h              	;.
	ram:7f6e ff             rst 38h              	;.
	ram:7f6f ff             rst 38h              	;.
	ram:7f70 ff             rst 38h              	;.
	ram:7f71 ff             rst 38h              	;.
	ram:7f72 ff             rst 38h              	;.
	ram:7f73 ff             rst 38h              	;.
	ram:7f74 ff             rst 38h              	;.
	ram:7f75 ff             rst 38h              	;.
	ram:7f76 ff             rst 38h              	;.
	ram:7f77 ff             rst 38h              	;.
	ram:7f78 ff             rst 38h              	;.
	ram:7f79 ff             rst 38h              	;.
	ram:7f7a ff             rst 38h              	;.
	ram:7f7b ff             rst 38h              	;.
	ram:7f7c ff             rst 38h              	;.
	ram:7f7d ff             rst 38h              	;.
	ram:7f7e ff             rst 38h              	;.
	ram:7f7f ff             rst 38h              	;.
	ram:7f80 ff             rst 38h              	;.
	ram:7f81 ff             rst 38h              	;.
	ram:7f82 ff             rst 38h              	;.
	ram:7f83 ff             rst 38h              	;.
	ram:7f84 ff             rst 38h              	;.
	ram:7f85 ff             rst 38h              	;.
	ram:7f86 ff             rst 38h              	;.
	ram:7f87 ff             rst 38h              	;.
	ram:7f88 ff             rst 38h              	;.
	ram:7f89 ff             rst 38h              	;.
	ram:7f8a ff             rst 38h              	;.
	ram:7f8b ff             rst 38h              	;.
	ram:7f8c ff             rst 38h              	;.
	ram:7f8d ff             rst 38h              	;.
	ram:7f8e ff             rst 38h              	;.
	ram:7f8f ff             rst 38h              	;.
	ram:7f90 ff             rst 38h              	;.
	ram:7f91 ff             rst 38h              	;.
	ram:7f92 ff             rst 38h              	;.
	ram:7f93 ff             rst 38h              	;.
	ram:7f94 ff             rst 38h              	;.
	ram:7f95 ff             rst 38h              	;.
	ram:7f96 ff             rst 38h              	;.
	ram:7f97 ff             rst 38h              	;.
	ram:7f98 ff             rst 38h              	;.
	ram:7f99 ff             rst 38h              	;.
	ram:7f9a ff             rst 38h              	;.
	ram:7f9b ff             rst 38h              	;.
	ram:7f9c ff             rst 38h              	;.
	ram:7f9d ff             rst 38h              	;.
	ram:7f9e ff             rst 38h              	;.
	ram:7f9f ff             rst 38h              	;.
	ram:7fa0 ff             rst 38h              	;.
	ram:7fa1 ff             rst 38h              	;.
	ram:7fa2 ff             rst 38h              	;.
	ram:7fa3 ff             rst 38h              	;.
	ram:7fa4 ff             rst 38h              	;.
	ram:7fa5 ff             rst 38h              	;.
	ram:7fa6 ff             rst 38h              	;.
	ram:7fa7 ff             rst 38h              	;.
	ram:7fa8 ff             rst 38h              	;.
	ram:7fa9 ff             rst 38h              	;.
	ram:7faa ff             rst 38h              	;.
	ram:7fab ff             rst 38h              	;.
	ram:7fac ff             rst 38h              	;.
	ram:7fad ff             rst 38h              	;.
	ram:7fae ff             rst 38h              	;.
	ram:7faf ff             rst 38h              	;.
	ram:7fb0 ff             rst 38h              	;.
	ram:7fb1 ff             rst 38h              	;.
	ram:7fb2 ff             rst 38h              	;.
	ram:7fb3 ff             rst 38h              	;.
	ram:7fb4 ff             rst 38h              	;.
	ram:7fb5 ff             rst 38h              	;.
	ram:7fb6 ff             rst 38h              	;.
	ram:7fb7 ff             rst 38h              	;.
	ram:7fb8 ff             rst 38h              	;.
	ram:7fb9 ff             rst 38h              	;.
	ram:7fba ff             rst 38h              	;.
	ram:7fbb ff             rst 38h              	;.
	ram:7fbc ff             rst 38h              	;.
	ram:7fbd ff             rst 38h              	;.
	ram:7fbe ff             rst 38h              	;.
	ram:7fbf ff             rst 38h              	;.
	ram:7fc0 ff             rst 38h              	;.
	ram:7fc1 ff             rst 38h              	;.
	ram:7fc2 ff             rst 38h              	;.
	ram:7fc3 ff             rst 38h              	;.
	ram:7fc4 ff             rst 38h              	;.
	ram:7fc5 ff             rst 38h              	;.
	ram:7fc6 ff             rst 38h              	;.
	ram:7fc7 ff             rst 38h              	;.
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
