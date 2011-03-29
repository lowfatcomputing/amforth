
nvm_waitfor:
    lds temp0, NVM_STATUS
    sbrc temp0, 7
    rjmp nvm_waitfor
    ret

nvm_command:
    ldi temp1,  $D8
    ldi temp2,  $01
    sts NVM_CMD, temp0
    out CPU_CCP, temp1
    sts NVM_CTRLA, temp2
    ret
