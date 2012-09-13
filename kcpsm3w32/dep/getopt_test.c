#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "getopt.h"

int main(int argc, char* argv[])
{
    const char* sformat = "o:h";
    const char* lformat[] = {
        "--output=",
        "--verilog",
        "--vhdl",
        "--help",
        NULL};
    GETOPT_LIST* lpgetopt_head = NULL;
    GETOPT_LIST* lpgetopt_iter = NULL;

    lpgetopt_head = getopt_parse(argc, argv, sformat, lformat);
    if (lpgetopt_head == NULL) {
        return -1;
    }

    for(lpgetopt_iter = lpgetopt_head;
        lpgetopt_iter != NULL;
        lpgetopt_iter = lpgetopt_iter->next) {
        printf("\"%s\" = \"%s\"\n", lpgetopt_iter->option, lpgetopt_iter->argument);
    }

    getopt_destroy(lpgetopt_head);
    lpgetopt_head = NULL;
    
    return 0;
}

