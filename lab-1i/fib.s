	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

        .global fibonacci
	.type fibonacci, function

fibonacci:
        @ ADD/ MODIFY CODE BELOW
        @ r3 = previous
        @ r4 = result
        @ r6 = sum
        push {r3, r4, r6, lr}
        mov  r3, #-1
        mov  r4, #1
        mov  r6, #0

loop:
        add  r6, r3, r4  @sum = result + previous
        mov  r3, r4
        mov  r4, r6
        subs r0, #1
        bge  loop

        mov  r0, r6
        pop  {r3, r4, r6, pc}


	.size fibonacci, .-fibonacci
	.end
