;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Copyright (C) 2019 Liric Mechan, All rights reserved.;;
;本文件仅供学习参考所用,不得用于任何非法用途.;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;本文件提供了一个使用sdas8051作为汇编器的汇编源程序模版，
;在开始之前是一些约定：
;被<>符号标记的字段表示这个字段可以被替换成任意符合汇编语法的字符串，且<>内的是对这个字段的说明
;接下来所有Sample都会被注释掉
.area   RSEG  (ABS,DATA)
;.globl  <要声明的寄存器的名称>
;<上面声明的寄存器名称>  = <寄存器实际地址>

.area   HOME  (ABS,CODE)
.globl  start
.globl  _halt
;.globl  <要声明的程序地址标签的名称>
.org    0x0000
ljmp    start
.org    0x0100
start:
;程序正文
ljmp  _halt
;<声明了的程序地址标签的名称>:
;程序正文
_halt:
sjmp  _halt
