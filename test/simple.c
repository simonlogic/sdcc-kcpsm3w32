#define ADDR_ENC 0xFF
#define ADDR_DEC 0xFE
#define ADDR_CRC 0xFD


extern char PBLAZEPORT[];
#define input(addr, pdata) *(pdata) = PBLAZEPORT[addr]
#define output(addr, data) PBLAZEPORT[addr] = (data)

void ihandler() __interrupt (0)
{
    unsigned char tmp = 0;

    input(0xFE, &tmp);
    output(0xFD, tmp);

    __asm ENABLE INTERRUPT __endasm;
}

int main()
{
    unsigned char tmp;

	__asm ENABLE INTERRUPT __endasm;

    while(1) {
        input(0xFF, &tmp);
        output(0xFE, tmp);
    }
}

