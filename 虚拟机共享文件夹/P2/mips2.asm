$LC0:
        .ascii  "%d%d\000"
$LC1:
        .ascii  "%d\000"
main:
        addiu   $sp,$sp,-40
        lui     $4,%hi($LC0)
        addiu   $6,$sp,24
        addiu   $5,$sp,28
        sw      $31,36($sp)
        jal     scanf
        addiu   $4,$4,%lo($LC0)

        lw      $2,24($sp)
        lw      $5,28($sp)
        lui     $4,%hi($LC1)
        addu    $5,$5,$2
        jal     printf
        addiu   $4,$4,%lo($LC1)

        lw      $31,36($sp)
        move    $2,$0
        j       $31
        addiu   $sp,$sp,40