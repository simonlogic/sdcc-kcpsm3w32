#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "getopt.h"

//test.exe -h -i argument alone
//-h and -i is options, argument is argument, other is alone
#define MAX_GETOPT_FORMAT  100
typedef struct GETOPT_FMT {
    char** fmt_option;
    char** fmt_argument;
    int nr_options;
    int nr_argument;
}GETOPT_FMT;

typedef enum {
    GETOPT_NOT_FOUND,
    GETOPT_FOUND,
    GETOPT_FOUND_INLINE,
    GETOPT_ERROR
}GETOPT_RET;

static GETOPT_FMT* __getopt_prepare(const char* sformat, const char* lformat[])
{
    GETOPT_FMT* lpgetopt_fmt = NULL;

    int nr_s_items = 0;
    int nr_l_items = 0;
    int nr_items = 0;

    int i = 0;
    int nr_bytes = 0;
    char sfmt_buffer[3];
    char prev_char = 0;

    //////////////////////////////////////////////////////////////////
    //Calculate length of format
    for (i = 0;i < MAX_GETOPT_FORMAT;i++) {
        if (isalpha(sformat[i]) || (sformat[i] == ':')) {
            continue;
        } else {
            break;
        }
    }
    //Check result
    if ((i == 0) || (i == MAX_GETOPT_FORMAT)) {
        printf("%s:%d:Error: sformat too short or too long!\n", __FILE__,__LINE__);
        return NULL;
    }
    nr_s_items = i;

    //Calculate length of format
    for (i = 0;i < MAX_GETOPT_FORMAT;i++) {
        if (lformat[i] == NULL) {
            break;
        }
    }

    //Check result
    if ((i == 0) || (i == MAX_GETOPT_FORMAT)) {
        printf("%s:%d:Error: lformat too short or too long!\n", __FILE__,__LINE__);
        return NULL;
    }
    nr_l_items = i;

    //////////////////////////////////////////////////////////////////
    //Prepare
    nr_items     = nr_s_items + nr_l_items;
    lpgetopt_fmt = (GETOPT_FMT*)malloc(sizeof(GETOPT_FMT));
    lpgetopt_fmt->nr_options   = 0;
    lpgetopt_fmt->nr_argument  = 0;
    lpgetopt_fmt->fmt_option  = (char**)malloc(sizeof(char*) * nr_items);
    lpgetopt_fmt->fmt_argument = (char**)malloc(sizeof(char*) * nr_items);
    
    //Split short format
    prev_char = sformat[0];
    nr_bytes = strlen(sformat) + 1;
    for (i = 1;i < nr_bytes;i++) {
        if (!isalpha(prev_char)) {
            prev_char = sformat[i];
            continue;
        }
        //save
        sprintf(sfmt_buffer, "-%c", prev_char);
        if (sformat[i] == ':') {
            lpgetopt_fmt->fmt_argument[lpgetopt_fmt->nr_argument] = strdup(sfmt_buffer);
            lpgetopt_fmt->nr_argument++;
        } else if (isalpha(sformat[i]) || (sformat[i] == '\0')) {
            lpgetopt_fmt->fmt_option[lpgetopt_fmt->nr_options] = strdup(sfmt_buffer);
            lpgetopt_fmt->nr_options++;
        }
        prev_char = sformat[i];
    }

    //Split long format
    for (i = 0;i < nr_l_items;i++) {
        nr_bytes = strlen(lformat[i]);
        if (nr_bytes == 0) {
            break;
        }
        //save
        if (lformat[i][nr_bytes - 1] == '=') {
            lpgetopt_fmt->fmt_argument[lpgetopt_fmt->nr_argument] = strdup(lformat[i]);
            lpgetopt_fmt->fmt_argument[lpgetopt_fmt->nr_argument][nr_bytes - 1] = '\0';
            lpgetopt_fmt->nr_argument++;
        } else {
            lpgetopt_fmt->fmt_option[lpgetopt_fmt->nr_options] = strdup(lformat[i]);
            lpgetopt_fmt->nr_options++;
        }
    }

    //Debug
    /*
    for (i = 0;i < lpgetopt_fmt->nr_argument;i++) {
        printf("fmt_argument : %s\n", lpgetopt_fmt->fmt_argument[i]);
    }
    for (i = 0;i < lpgetopt_fmt->nr_options;i++) {
        printf("fmt_option : %s\n", lpgetopt_fmt->fmt_option[i]);
    }
    puts("");
    */

    return lpgetopt_fmt;
}

static void __getopt_clean_fmt(GETOPT_FMT* lpgetopt_fmt)
{
    int i = 0;
    if (lpgetopt_fmt == NULL) {
        return;
    }

    for (i = 0;i < lpgetopt_fmt->nr_options;i++) {
        free(lpgetopt_fmt->fmt_option[i]);
    }
    for (i = 0;i < lpgetopt_fmt->nr_argument;i++) {
        free(lpgetopt_fmt->fmt_argument[i]);
    }

    free(lpgetopt_fmt->fmt_argument);
    free(lpgetopt_fmt->fmt_option);
    free(lpgetopt_fmt);
    lpgetopt_fmt = NULL;
}

static void __getopt_clean_list(GETOPT_LIST* lpgetopt_list)
{
    GETOPT_LIST* lpgetopt_prev = NULL;
    while (lpgetopt_list != NULL) {
        lpgetopt_prev = lpgetopt_list;
        lpgetopt_list = lpgetopt_list->next;
        
        if (lpgetopt_prev->argument != NULL) {
            free(lpgetopt_prev->argument);
        }
        if (lpgetopt_prev->option != NULL) {
            free(lpgetopt_prev->option);
        }

        free(lpgetopt_prev);
    };
}

static GETOPT_RET __getopt_parse_argument(int argc, char* argv[], 
        int nr_argument, char* fmt_argument[],
        int i)
{
    int j = 0;
    int nr_bytes = 0;
    char sep_char = 0;
    char start_char = 0;

    for (j = 0;j < nr_argument;j++) {
        nr_bytes = strlen(fmt_argument[j]);
        if (strncmp(fmt_argument[j], argv[i], nr_bytes) == 0) {
            break;
        }
    }

    if (j < nr_argument) {
        if (strlen(argv[i]) > nr_bytes + strlen("=")) {
            sep_char = argv[i][nr_bytes];
            if ((sep_char != ':') && (sep_char != ' ') && (sep_char != '=')) {
                printf("getopt.GetoptError: option %s requires argument\n", argv[i]);
                return GETOPT_ERROR;
            }
            start_char = argv[i][nr_bytes + 1];
            if ((start_char == ':') || (start_char == ' ') || (start_char == '=')) {
                printf("getopt.GetoptError: option %s argument illegal\n", argv[i]);
                return GETOPT_ERROR;
            }
            return GETOPT_FOUND_INLINE;
        } else if ((i + 1 >= argc) || (argv[i + 1][0] == '-')) {
            printf("getopt.GetoptError: option %s requires argument\n", argv[i]);
            return GETOPT_ERROR;
        } else {
            //printf("fmt_argument \"%s\" = \"%s\"\n", fmt_argument[j], argv[i + 1]);
            return GETOPT_FOUND;
        }
    }

    return GETOPT_NOT_FOUND;
}

static GETOPT_RET __getopt_parse_option(int argc, char* argv[], 
        int nr_options, char* fmt_option[],
        int i)
{
    int j = 0;

    for (j = 0;j < nr_options;j++) {
        if (strcmp(fmt_option[j], argv[i]) == 0) {
            break;
        }
    }

    if (j < nr_options) {
        //printf("fmt_option \"%s\" found!\n", fmt_option[j]);
        return GETOPT_FOUND;
    }

    return GETOPT_NOT_FOUND;
}

static GETOPT_LIST* __getopt_create_item(const char* option, const char* argument)
{
    GETOPT_LIST* lpgetopt_tmp = (GETOPT_LIST*)malloc(sizeof(GETOPT_LIST));
    lpgetopt_tmp->next = NULL;
    lpgetopt_tmp->option = NULL;
    lpgetopt_tmp->argument = NULL;

    if (option != NULL) {
        lpgetopt_tmp->option   = strdup(option);
    }

    if (argument != NULL) {
        lpgetopt_tmp->argument = strdup(argument);
    }

    return lpgetopt_tmp;
}

static int __getopt_find_seperate_index(const char* s, const char* sep)
{
    int idx = 0;
    const char* iter = NULL;

    for (;*s != '\0';s++,idx++) {
        for (iter = sep; *iter != '\0'; iter++) {
            if (*iter == *s) {
                return idx;
            }
        }
    }

    return -1;
}

static GETOPT_LIST* __getopt_parse_commandline(int argc, char* argv[], GETOPT_FMT* lpgetopt_fmt)
{
    int i = 0;
    int sep_idx = -1;

    GETOPT_RET ret = GETOPT_NOT_FOUND;

    GETOPT_LIST getopt_head;//head is null element
    GETOPT_LIST* lpgetopt_tail = &getopt_head;
    lpgetopt_tail->next = NULL;

    for (i = 1;i < argc;i++) {
        //Check argument first
        ret = __getopt_parse_argument(argc, argv, 
                lpgetopt_fmt->nr_argument, lpgetopt_fmt->fmt_argument, i);
        if (ret == GETOPT_ERROR) {
            break;
        } else if (ret == GETOPT_FOUND) {
            lpgetopt_tail->next = 
                __getopt_create_item(argv[i], argv[i + 1]);
            lpgetopt_tail = lpgetopt_tail->next;

            i++;
            continue;
        } else if (ret == GETOPT_FOUND_INLINE) {
            sep_idx = __getopt_find_seperate_index(argv[i], ": =");
            lpgetopt_tail->next = 
                __getopt_create_item(argv[i], argv[i]+sep_idx+1);
            lpgetopt_tail = lpgetopt_tail->next;

            lpgetopt_tail->option[sep_idx] = '\0';
            continue;
        } else {
        }

        //Check option then
        ret = __getopt_parse_option(argc, argv,
                lpgetopt_fmt->nr_options, lpgetopt_fmt->fmt_option, i);
        if (ret == GETOPT_FOUND) {
            lpgetopt_tail->next = 
                __getopt_create_item(argv[i], NULL);
            lpgetopt_tail = lpgetopt_tail->next;
            continue;
        } else {
        }

        //Lonely item
        if (argv[i][0] != '-') {
            //printf("fmt_argument (NULL) = \"%s\"\n", argv[i]);
            lpgetopt_tail->next = 
                __getopt_create_item(NULL, argv[i]);
            lpgetopt_tail = lpgetopt_tail->next;
            continue;
        }

        //Option or argument not recognized
        printf("getopt.GetoptError: option %s not recognized\n", argv[i]);
        break;
    }

    //Fail
    if (i < argc) {
        __getopt_clean_list(getopt_head.next);
        getopt_head.next = NULL;
        return NULL;
    }

    return getopt_head.next;
}

GETOPT_LIST* getopt_parse(int argc, char* argv[], 
        const char* sformat, const char* lformat[])
{
    GETOPT_FMT* lpgetopt_fmt = NULL;
    GETOPT_LIST* lpgetopt_head = NULL;

    lpgetopt_fmt = __getopt_prepare(sformat, lformat);
    if (lpgetopt_fmt == NULL) {
        return NULL;
    }

    lpgetopt_head = __getopt_parse_commandline(argc, argv, lpgetopt_fmt);
    __getopt_clean_fmt(lpgetopt_fmt);
    lpgetopt_fmt = NULL;

    if (lpgetopt_head == NULL) {
        printf("Error\n");
        return NULL;
    } else {
        return lpgetopt_head;
    }
}

void getopt_destroy(GETOPT_LIST* lpgetopt_list)
{
    __getopt_clean_list(lpgetopt_list);
}

