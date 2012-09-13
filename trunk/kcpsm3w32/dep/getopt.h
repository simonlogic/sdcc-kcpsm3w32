/**
 * @module getopt(new version)
 * @author buaa.byl
 * @version 1.2
 * @date 2012.09.11
 */
#ifndef GETOPT_H_0CD9A7B0_FBEC_11E1_A565_005056C00008_INCLUDED_
#define GETOPT_H_0CD9A7B0_FBEC_11E1_A565_005056C00008_INCLUDED_

/* ************************************************************************* */
/*              include files                                                */
/* ************************************************************************* */


/* ************************************************************************* */
/*              C linkage declaration (begin)                                */
/* ************************************************************************* */
#if defined(__cplusplus)
extern "C"
{
#endif


/* ************************************************************************* */
/*              declare of module type or struct                             */
/* ************************************************************************* */
typedef enum{
    GETOPT_TYPE_OPTION,
    GETOPT_TYPE_ARGUMENT,
    GETOPT_TYPE_ORPHAN
}GETOPT_TYPE;

typedef struct GETOPT_LIST{
    char* option;
    char* argument;
    struct GETOPT_LIST* next;
}GETOPT_LIST;

#define GETOPT_IS_OPTION(node)   (((node).option != NULL) && ((node).argument == NULL))
#define GETOPT_IS_ARGUMENT(node) (((node).option != NULL) && ((node).argument != NULL))
#define GETOPT_IS_ORPHAN(node)   (((node).option == NULL) && ((node).argument != NULL))


/* ************************************************************************* */
/*              declare of module interface                                  */
/* ************************************************************************* */
GETOPT_LIST* getopt_parse(int argc, char* argv[], 
        const char* sformat, const char* lformat[]);
void getopt_destroy(GETOPT_LIST* lpgetopt_list);


/* ************************************************************************* */
/*              C linkage declaration (end)                                  */
/* ************************************************************************* */
#if defined(__cplusplus)
}
#endif


#endif

