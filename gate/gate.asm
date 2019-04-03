section .data                           ;Data segment

	gateOpening1:	db "		'----------------------            ---------------------'", 10
	gateOpening2:	db "		'     /     /    /   /|           /     /     /    /   /'", 10
	gateOpening3:	db "		'--------------------/|            -------------------  '", 10
	gateOpening4:	db "		'    |     |     |  | |     -------------------    |  | '", 10
	gateOpening5:	db "		'--------------------/|     |                 |-------  '", 10
	gateOpening6:	db "		'      |      |     | |     |                 | |   |   '", 10
	gateOpening7:	db "		'--------------------/|  x| |                 |-------  '", 10
	gateOpening8:	db "		'    |     |     |  | |     |                 |   |   | '", 10
	gateOpening9:	db "		'--------------------/      |                 |-------  '", 10
	gateOpening10:	db "		'               fcf /       |0----()----()----|  fca    '", 10
	gateOpening11:	db "		'                  /            /                       '", 10
	gateOpening12:	db "		'                 /    --->    /                        '", 10
	gateOpening13:	db "		'                /            /                         '", 10
	gateOpening14:	db "		'               /            /                          '", 10
	gateOpening15:	db "		'              /            /                           '", 10
	gateOpening16:	db "		'             /            /                            '", 10
	gateOpening17:	db "		'   / \                                                 '", 10
	gateOpening18:	db "		'  /   \                                                '", 10
	gateOpening19:	db "		'    |                                                  '", 10
	gateOpening20:	db "		'    |                                                  '", 10
	gateOpening21:	db "		'  |---|                                                '", 10
	gateOpening22:	db "		'  | 0 | ba                                             '", 10
	gateOpening23:	db "		'  | 0 | bf                                             '", 10
	gateOpening24:	db "		'  |---|                                                '", 10
	lenGateOpening:	equ $ - gateOpening1

	gateOpened1:	db "		'----------------------            ---------------------'", 10
	gateOpened2:	db "		'     /     /    /   /|           /     /     /    /   /'", 10
	gateOpened3:	db "		'--------------------/|            -------------------  '", 10
	gateOpened4:	db "		'    |     |     |  | |            ------------------- |'", 10
	gateOpened5:	db "		'--------------------/|            |                 |-|'", 10
	gateOpened6:	db "		'      |      |     | |            |                 | |'", 10
	gateOpened7:	db "		'--------------------/|         x| |                 |-|'", 10
	gateOpened8:	db "		'    |     |     |  | |            |                 | |'", 10
	gateOpened9:	db "		'--------------------/             |                 |-|'", 10
	gateOpened10:	db "		'               fcf /              |0----()----()----| |'", 10
	gateOpened11:	db "		'                  /            /                       '", 10
	gateOpened12:	db "		'                 /            /                        '", 10
	gateOpened13:	db "		'                /            /                         '", 10
	gateOpened14:	db "		'               /            /                          '", 10
	gateOpened15:	db "		'              /            /                           '", 10
	gateOpened16:	db "		'             /            /                            '", 10
	gateOpened17:	db "		'   / \                                                 '", 10
	gateOpened18:	db "		'  /   \                                                '", 10
	gateOpened19:	db "		'    |                                                  '", 10
	gateOpened20:	db "		'    |                                                  '", 10
	gateOpened21:	db "		'  |---|                                                '", 10
	gateOpened22:	db "		'  | 0 | ba                                             '", 10
	gateOpened23:	db "		'  | 0 | bf                                             '", 10
	gateOpened24:	db "		'  |---|                                                '", 10
	lenGateOpened:	equ $ - gateOpened1

	gateClosing1:	db "		'----------------------            ---------------------'", 10
	gateClosing2:	db "		'     /     /    /   /|           /     /     /    /   /'", 10
	gateClosing3:	db "		'--------------------/|            -------------------  '", 10
	gateClosing4:	db "		'    |     |     |  | |     -------------------    |  | '", 10
	gateClosing5:	db "		'--------------------/|     |                 |-------  '", 10
	gateClosing6:	db "		'      |      |     | |     |                 | |   |   '", 10
	gateClosing7:	db "		'--------------------/|  x| |                 |-------  '", 10
	gateClosing8:	db "		'    |     |     |  | |     |                 |   |   | '", 10
	gateClosing9:	db "		'--------------------/      |                 |-------  '", 10
	gateClosing10:	db "		'               fcf /       |0----()----()----|  fca    '", 10
	gateClosing11:	db "		'                  /            /                       '", 10
	gateClosing12:	db "		'                 /    <---    /                        '", 10
	gateClosing13:	db "		'                /            /                         '", 10
	gateClosing14:	db "		'               /            /                          '", 10
	gateClosing15:	db "		'              /            /                           '", 10
	gateClosing16:	db "		'             /            /                            '", 10
	gateClosing17:	db "		'   / \                                                 '", 10
	gateClosing18:	db "		'  /   \                                                '", 10
	gateClosing19:	db "		'    |                                                  '", 10
	gateClosing20:	db "		'    |                                                  '", 10
	gateClosing21:	db "		'  |---|                                                '", 10
	gateClosing22:	db "		'  | 0 | ba                                             '", 10
	gateClosing23:	db "		'  | 0 | bf                                             '", 10
	gateClosing24:	db "		'  |---|                                                '", 10
	lenGateClosing:	equ $ - gateClosing1

	gateClosed1:	db "		'---------------------            -------------------------'", 10
	gateClosed2:	db "		'    /     /    /   /|           /     /      /      /    /'", 10
	gateClosed3:	db "		'-------------------/|            ----------------------   '", 10
	gateClosed4:	db "		'   |    |     |    |--------------------|    |    |    |  '", 10
	gateClosed5:	db "		'-------------------|                    |--------------   '", 10
	gateClosed6:	db "		'     |     |     | |                    |     |    |      '", 10
	gateClosed7:	db "		'-----------------x||                    |--------------   '", 10
	gateClosed8:	db "		'   |    |     |    |                    |    |    |    |  '", 10
	gateClosed9:	db "		'-------------------|                    |--------------   '", 10
	gateClosed10:	db "		'             fcf  /|0-----()-----()-----| fca             '", 10
	gateClosed11:	db "		'                 /            /                           '", 10
	gateClosed12:	db "		'                /            /                            '", 10
	gateClosed13:	db "		'               /            /                             '", 10
	gateClosed14:	db "		'              /            /                              '", 10
	gateClosed15:	db "		'             /            /                               '", 10
	gateClosed16:	db "		'            /            /                                '", 10
	gateClosed17:	db "		'    / \                                                   '", 10
	gateClosed18:	db "		'   /   \                                                  '", 10
	gateClosed19:	db "		'     |                                                    '", 10
	gateClosed20:	db "		'     |                                                    '", 10
	gateClosed21:	db "		'   |---|                                                  '", 10
	gateClosed22:	db "		'   | 0 | ba                                               '", 10
	gateClosed23:	db "		'   | 0 | bf                                               '", 10
	gateClosed24:	db "		'   |---|                                                  '", 10
	lenGateClosed:	equ $ - gateClosed1


section .text          			;Code Segment
   global _start
	
_start: 
	mov eax, 4 				; system call number (sys_write)
   	mov ebx, 1				; file descriptor (stdout)
   	mov ecx, gateClosed1
   	mov edx, lenGateClosed
   	int 80h

   	mov eax, 4 				; system call number (sys_write)
   	mov ebx, 1				; file descriptor (stdout)
   	mov ecx, gateOpening1
   	mov edx, lenGateOpening
   	int 80h

   	mov eax, 4 				; system call number (sys_write)
   	mov ebx, 1				; file descriptor (stdout)
   	mov ecx, gateClosing1
   	mov edx, lenGateClosing
   	int 80h

   	mov eax, 4 				; system call number (sys_write)
   	mov ebx, 1				; file descriptor (stdout)
   	mov ecx, gateClosed1
   	mov edx, lenGateClosed
   	int 80h

   	; Exit code
   	mov eax, 1
   	mov ebx, 0
   	int 80h