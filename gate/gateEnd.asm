LF equ 10 ; line feed
NULL equ 0 ; end of string
TRUE equ 1
FALSE equ 0
EXIT_SUCCESS equ 0 ; success code
STDIN equ 0 ; standard input
STDOUT equ 1 ; standard output
STDERR equ 2 ; standard error
SYS_read equ 0 ; read
SYS_write equ 1 ; write
SYS_open equ 2 ; file open
SYS_close equ 3 ; file close
SYS_fork equ 57 ; fork

SYS_exit equ 60 ; terminate
SYS_creat equ 85 ; file open/create

SYS_time equ 201 ; get time

%macro exit 0
	mov rax, SYS_exit
	xor rdi, rdi
	syscall
%endmacro

%macro print 2
	mov rax, SYS_write
	mov rdi, STDOUT
	mov rsi, %1
	mov rdx, %2
	syscall
%endmacro

%macro scan 2
    write_display selectionArea1, lenSelectionArea 
	mov rax, SYS_read
	mov rdi, STDOUT
	mov rsi, %1
	mov rdx, %2
	syscall
%endmacro

%macro opcaoincorreta 4
	print %1, %2
	scan %3, 1
	call %4
	syscall
%endmacro

%macro write_display 2 
    mov   eax, 4			; system call number (sys_write)
    mov   ebx, 1			; file descriptor (stdout)
    mov   ecx, %1			; data
    mov   edx, %2			; lenght data
    int   80h
%endmacro

section .data

menu db "****** Selecione a ação ******", LF, "*                            *", LF,
lenmenu equ $-menu

menuprin db "*  1 - Portão Aberto         *", LF, "*  2 - Portão Fechado        *", LF, "*  0 - Sair                  *", LF, "*                            *", LF, "******************************",LF, LF
lenmenuprin equ $-menuprin

menugateClosed1 db "*  1 - Abrir o portão        *", LF, "*  0 - Sair                  *", LF, "*                            *", LF, "******************************",LF, LF
lenmenugateClosed1 equ $-menugateClosed1

menugateOpening1 db "*  1 - Continuar             *", LF, "*  2 - Fechar o portão       *", LF, "*  0 - Sair                  *", LF, "*                            *", LF, "******************************",LF, LF
lenmenugateOpening1 equ $-menugateOpening1

menugateClosing1 db "*  1 - EMERGÊNCIA            *", LF, "*  2 - Continuar             *", LF, "*  0 - Sair                  *", LF, "*                            *", LF, "******************************",LF, LF
lenmenugateClosing1 equ $-menugateClosing1

menugateOpened1 db "*  2 - Fechar o portão       *", LF, "*  0 - Sair                  *", LF, "*                            *", LF, "******************************",LF, LF
lenmenugateOpened1 equ $-menugateOpened1

resposta db "Opssssss...... Opção Inválida, digite novamente", LF, LF
lenresposta equ $-resposta


; Option scenario

scenario1:	db 10,
scenario2:	db "***** Selecione uma opção ****", 10
scenario3:  db "*                            *", 10
lenScenarioOptio:	equ $ - scenario1

; Selection area
selectionArea1:	db "Digite a opção: ", 10
lenSelectionArea:	equ $ - selectionArea1

opcao db "0", 0

; Gate Closed

gateClosed1:	db "		'---------------------            -------------------------'", 10
gateClosed2:	db "		'    /     /    /   /|           /     /      /      /    /'", 10
gateClosed3:	db "		'-------------------/|            ----------------------   '", 10
gateClosed4:	db "		'   |    |     |    |--------------------|    |    |    |  '", 10
gateClosed5:	db "		'-------------------|                    |--------------   '", 10
gateClosed6:	db "		'     |     |     | |                    |     |    |      '", 10
gateClosed7:	db "   *		'-----------------x||                    |--------------   '", 10
gateClosed8:	db "  ***		'   |    |     |    |                    |    |    |    |  '", 10
gateClosed9:	db " *****		'-------------------|                    |--------------   '", 10
gateClosed10:	db "   |		'             fcf  /|0-----()-----()-----| fca             '", 10
gateClosed11:	db "  _|_		'                 /            /                           '", 10
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


; Gate Opening

gateOpening1:	db "		'----------------------            ---------------------'", 10
gateOpening2:	db "		'     /     /    /   /|           /     /     /    /   /'", 10
gateOpening3:	db "		'--------------------/|            -------------------  '", 10
gateOpening4:	db "		'    |     |     |  | |     -------------------    |  | '", 10
gateOpening5:	db "		'--------------------/|     |                 |-------  '", 10
gateOpening6:	db "		'      |      |     | |     |                 | |   |   '", 10
gateOpening7:	db "   *		'--------------------/|  x| |                 |-------  '", 10
gateOpening8:	db "  ***   	'    |     |     |  | |     |                 |   |   | '", 10
gateOpening9:	db " *****  	'--------------------/      |                 |-------  '", 10
gateOpening10:	db "   |		'               fcf /       |0----()----()----|  fca    '", 10
gateOpening11:	db "  _|_   	'                  /            /                       '", 10
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

; Gate Closing

gateClosing1:	db "		'----------------------            ---------------------'", 10
gateClosing2:	db "		'     /     /    /   /|           /     /     /    /   /'", 10
gateClosing3:	db "		'--------------------/|            -------------------  '", 10
gateClosing4:	db "		'    |     |     |  | |     -------------------    |  | '", 10
gateClosing5:	db "		'--------------------/|     |                 |-------  '", 10
gateClosing6:	db "		'      |      |     | |     |                 | |   |   '", 10
gateClosing7:	db "   *		'--------------------/|  x| |                 |-------  '", 10
gateClosing8:	db "  ***		'    |     |     |  | |     |                 |   |   | '", 10
gateClosing9:	db " *****		'--------------------/      |                 |-------  '", 10
gateClosing10:	db "   |		'               fcf /       |0----()----()----|  fca    '", 10
gateClosing11:	db "  _|_		'                  /            /                       '", 10
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

; Gate Opened

gateOpened1:	db "		'----------------------            ---------------------'", 10
gateOpened2:	db "		'     /     /    /   /|           /     /     /    /   /'", 10
gateOpened3:	db "		'--------------------/|            -------------------  '", 10
gateOpened4:	db "		'    |     |     |  | |            ------------------- |'", 10
gateOpened5:	db "		'--------------------/|            |                 |-|'", 10
gateOpened6:	db "		'      |      |     | |            |                 | |'", 10
gateOpened7:	db "   *		'--------------------/|         x| |                 |-|'", 10
gateOpened8:	db "  ***		'    |     |     |  | |            |                 | |'", 10
gateOpened9:	db " *****		'--------------------/             |                 |-|'", 10
gateOpened10:	db "   |		'               fcf /              |0----()----()----| |'", 10
gateOpened11:	db "  _|_		'                  /            /                       '", 10
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

section .text
global _start
_start:
	call _menu
	
	_menu:
	print menu, lenmenu
	print menuprin, lenmenuprin
	scan opcao, 1
	call _checkoption
	
	_menugateOpened1:
    write_display scenario1, lenScenarioOptio
	print menugateOpened1, lenmenugateOpened1
	scan opcao, 1
	call _checkoptiongateOpened1
	
	_menugateOpening1:
    write_display scenario1, lenScenarioOptio
	print menugateOpening1, lenmenugateOpening1
	scan opcao, 1
	call _checkoptiongateOpening1
	
	_menugateClosed1:
    write_display scenario1, lenScenarioOptio
	print menugateClosed1, lenmenugateClosed1
	scan opcao, 1
	call _checkoptiongateClosed1
	
	_menugateClosing1:
    write_display scenario1, lenScenarioOptio
	print menugateClosing1, lenmenugateClosing1
	scan opcao, 1
	call _checkoptiongateClosing1
	
	_checkoption:
	mov al, '0'
	cmp [opcao], al
	je .end
	
	mov al, '1'
	cmp [opcao], al
	je .open
	
	mov al, '2'
	cmp [opcao], al
	je .close
	opcaoincorreta resposta, lenresposta, opcao, _menu
	
	.open:
	print gateOpened1, lenGateOpened
	scan opcao, 1
	call _menugateOpened1
	
	.close:
	print gateClosed1, lenGateClosed
	scan opcao, 1
	call _menugateClosed1
	
.end:
	exit
	
	_checkoptiongateOpened1:
            mov     al, '0'
            cmp     [opcao], al
            je      .end

            mov     al, '2'
            cmp     [opcao], al
            je      .close
            opcaoincorreta resposta, lenresposta, opcao, _menugateOpened1

            .close:
                print gateClosing1, lenGateClosing
                scan opcao, 1
                call _menugateClosing1
        .end:
            exit

        _checkoptiongateOpening1:
            mov     al, '0'
            cmp     [opcao], al
            je      .end

            mov     al, '1'
            cmp     [opcao], al
            je      .open

            mov     al, '2'
            cmp     [opcao], al
            je      .close
            opcaoincorreta resposta, lenresposta, opcao, _menugateOpening1

            .open:
                print gateOpened1, lenGateOpened
                scan opcao, 1
                call _menugateOpened1

            .close:
                print gateClosing1, lenGateClosing
                scan opcao, 1
                call _menugateClosing1
        .end:
            exit

        _checkoptiongateClosing1:
            mov     al, '0'
            cmp     [opcao], al
            je      .end

            mov     al, '1'
            cmp     [opcao], al
            je      .open

            mov     al, '2'
            cmp     [opcao], al
            je      .close
            opcaoincorreta resposta, lenresposta, opcao, _menugateClosing1

            .open:
                print gateOpening1, lenGateOpening
                scan opcao, 1
                call _menugateOpening1

            .close:
                print gateClosed1, lenGateClosed
                scan opcao, 1


                call _menugateClosed1
        .end:
            exit

        _checkoptiongateClosed1:
            mov     al, '0'
            cmp     [opcao], al
            je      .end

            mov     al, '1'
            cmp     [opcao], al
            je      .open
            opcaoincorreta resposta, lenresposta, opcao, _menugateClosed1

            .open:
                print gateOpening1, lenGateOpening
                scan opcao, 1
                call _menugateOpening1
        .end:
            exit
