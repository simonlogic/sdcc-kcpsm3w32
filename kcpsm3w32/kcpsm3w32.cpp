/**
 * @file
 * @brief source of (module)
 * @details
 *  
 * @author buaa.byl
 * @date 2012-09-09 created
 */

/* ************************************************************************* */
/*              include files                                                */
/* ************************************************************************* */
#include <iostream>
#include <cstdlib>
#include <stdio.h>
#include <windows.h>

#include "getopt.h"

int major_version = 1;
int fix_version   = 0;

BOOL flags_log = FALSE;
BOOL flags_verbose = FALSE;

const char* sformat = "h";
const char* lformat[] = {
    "--help",
    "--log",
    "--verbose",
    "--fmt",
    "--coe",
    "--vhdl",
    "--verilog",
    "--m",
    "--hex",
    "--dec",
    "--mem",
    NULL};

const char* lformat_tips[][2] = {
    {"--help","help message"},
    
    {"--log","enable log"},
    {"--verbose","enable more information"},

    {"--fmt","output *.fmt"},
    {"--coe","output *.coe"},
    {"--vhdl","output *.vhd"},
    {"--verilog","output *.v"},
    {"--m","output *.m"},
    {"--hex","output *.hex"},
    {"--dec","output *.dec"},
    {"--mem","output *.mem"},
    {NULL, NULL}};

void usage(const char* self)
{
    printf( "version   : %d.%d\n"
            "build date: %s\n"
            "build time: %s\n", major_version, fix_version,
            __DATE__, __TIME__);
    printf( "\n");
    printf( "usage     : %s [option] example.psm\n", self);
    printf( "option :\n");
    for (int i = 0;lformat_tips[i][0] != NULL;i++) {
        printf("    %-10s %s\n",
                lformat_tips[i][0],lformat_tips[i][1]);
    }
}


BOOL run(int argc, const char* argv[], char* workdir)
{
    //Adding source below.
    HANDLE hStdOutputWritePipe;
    HANDLE hStdOutputReadPipe;

    HANDLE hStdOutput;
    HANDLE hStdError;

    if (argc == 1) {
        return FALSE;
    }

    CreatePipe(&hStdOutputReadPipe, 
            &hStdOutputWritePipe,
            NULL,
            0);

    DuplicateHandle(GetCurrentProcess(),
            hStdOutputWritePipe,
            GetCurrentProcess(),
            &hStdOutput,// duplicate the "write" end as inheritable stdout
            0,
            TRUE,
            DUPLICATE_SAME_ACCESS);
    
    DuplicateHandle(GetCurrentProcess(),
            hStdOutputWritePipe,
            GetCurrentProcess(),
            &hStdError,// duplicate stdout as inheritable stderr
            0,
            TRUE,
            DUPLICATE_SAME_ACCESS);

    // no longer need the non-inheritable "write" end of the pipe
    CloseHandle(hStdOutputWritePipe);

    PROCESS_INFORMATION pi;
    STARTUPINFO si;
    ZeroMemory(&si, sizeof(STARTUPINFO));

    si.cb           = sizeof(STARTUPINFO);
    si.dwFlags      = STARTF_USESTDHANDLES|STARTF_USESHOWWINDOW;
    si.hStdInput    = GetStdHandle(STD_INPUT_HANDLE);
    si.hStdOutput   = hStdOutput;
    si.hStdError    = hStdError;
    si.wShowWindow  = SW_HIDE;// IMPORTANT: hide subprocess console window

    // CreateProcess requires a modifiable buffer
    char commandLineCopy[4096] = "cmd.exe /c \"";
    int i = 0;

    for (i = 1;i < argc;i++) {
        //If argument have space, using queto.
        if (strstr(argv[i]," ")) {
            strcat(commandLineCopy, "\"");
            strcat(commandLineCopy, argv[i]);
            strcat(commandLineCopy, "\"");
        } else {
            strcat(commandLineCopy, argv[i]);
        }
        strcat(commandLineCopy, " ");
    }
    strcat(commandLineCopy, "\"");

    if (flags_log) {
        printf(" log> Run \"%s\"\n", commandLineCopy);
    }

    //Runner the process
    if (!CreateProcess(
                NULL,
                commandLineCopy,
                NULL,
                NULL,
                TRUE,
                CREATE_NEW_CONSOLE,
                NULL,
                workdir,
                &si,
                &pi)) {
        CloseHandle(hStdOutput);
        CloseHandle(hStdError);
        CloseHandle(hStdOutputReadPipe);
        return FALSE;
    }

    //Clean non-need handle
    CloseHandle(pi.hThread);
    CloseHandle(hStdOutput);
    CloseHandle(hStdError);

    //Read fifo and print
    CHAR buffer[65];
    DWORD read;
    if (flags_verbose) {
        while (ReadFile(hStdOutputReadPipe, buffer, 64, &read, NULL)) {
            for (i = 0;i < read;i++) {
                putchar(buffer[i]);
            }
        }
    }

    //Wait 10 seconds
    WaitForSingleObject(pi.hProcess, 10 * 1000);
    if (flags_verbose) {
        while (ReadFile(hStdOutputReadPipe, buffer, 64, &read, NULL)) {
            for (i = 0;i < read;i++) {
                putchar(buffer[i]);
            }
        }
    }
        
    DWORD exit_code = 0;
    GetExitCodeProcess(pi.hProcess, &exit_code);

    //Clean
    CloseHandle(pi.hProcess);
    CloseHandle(hStdOutputReadPipe);

    if (exit_code == 0) {
        return TRUE;
    } else {
        return FALSE;
    }
}

int pickle_dump(void* buffer, int nr_bytes, const char* filename)
{
    FILE* fp = NULL;
    fp = fopen(filename, "wb");
    fwrite(buffer, sizeof(char), nr_bytes, fp);
    fclose(fp);

    return nr_bytes;
}

int pickle_load(void* buffer, int nr_bytes, const char* filename)
{
    FILE* fp = NULL;
    int nr_load = 0;
    fp = fopen(filename, "wb");
    nr_load = fread(buffer, sizeof(char), nr_bytes, fp);
    fclose(fp);

    return nr_load;
}

char* os_path_join(const char* dirpath, const char* name)
{
    char* target_path = NULL;
    int dirlen = 0;
    int namelen = 0;

    if ((dirpath == NULL) || (name == NULL)) {
        printf("%s:%d:ERROR: dirpath or name is NULL!\n", __FILE__, __LINE__);
        return NULL;
    }

    dirlen = strlen(dirpath);
    namelen = strlen(name);

    target_path = (char*)malloc(sizeof(char) * (dirlen + namelen + 2));
    memset(target_path, 0, sizeof(char) * (dirlen + namelen + 2));
    strcpy(target_path, dirpath);
    if ((target_path[dirlen - 1] != '\\') || (target_path[dirlen - 1] != '/')) {
        target_path[dirlen] = '\\';
        target_path[dirlen+1] = '\0';
    }
    strcat(target_path, name);

    return target_path;
}

char* os_path_split(const char* srcpathname)
{
    const char* srcfilename = srcpathname;
    if (srcpathname == NULL) {
        printf("%s:%d:ERROR: srcpathname is NULL!\n", __FILE__, __LINE__);
        return NULL;
    }

    srcfilename = srcpathname + strlen(srcpathname) - 1;
    while (srcpathname <= srcfilename) {
        if ((*srcfilename == '\\') || (*srcfilename == '/')) {
            break;
        }
        srcfilename--;
    }

    if (srcfilename < srcpathname) {
        srcfilename = srcpathname;
    } else {
        if ((*srcfilename == '\\') || (*srcfilename == '/')) {
            srcfilename++;
        }
    }

    return (char*)srcfilename;
}

char* os_path_splitext(const char* srcpathname)
{
    const char* srcextname = srcpathname;

    if (srcpathname == NULL) {
        printf("%s:%d:ERROR: srcpathname is NULL!\n", __FILE__, __LINE__);
        return NULL;
    }

    srcextname = srcpathname + strlen(srcpathname) - 1;
    while (srcpathname <= srcextname) {
        if (*srcextname == '.') {
            break;
        }
        srcextname--;
    }

    if (srcextname < srcpathname) {
        srcextname = srcpathname;
    } else {
    }

    //return string begin from '.'
    return (char*)srcextname;
}

const char* c_kcpsm3_exe_name = "kcpsm3.exe";
extern int  c_kcpsm3_exe_size;
extern char c_kcpsm3_exe_data[];

const char* c_ROM_form_coe_name = "ROM_form.coe";
extern int  c_ROM_form_coe_size;
extern char c_ROM_form_coe_data[];

const char* c_ROM_form_v_name = "ROM_form.v";
extern int  c_ROM_form_v_size;
extern char c_ROM_form_v_data[];

const char* c_ROM_form_vhd_name = "ROM_form.vhd";
extern int  c_ROM_form_vhd_size;
extern char c_ROM_form_vhd_data[];

BOOL package_extract(const char* workdir)
{
    char* workdirfile = NULL;

    if (workdir == NULL) {
        printf("%s:%d:ERROR: workdir is NULL!\n", __FILE__, __LINE__);
        return FALSE;
    }

    workdirfile = os_path_join(workdir, c_kcpsm3_exe_name);
    pickle_dump(c_kcpsm3_exe_data, c_kcpsm3_exe_size, workdirfile);
    free(workdirfile);

    workdirfile = os_path_join(workdir, c_ROM_form_coe_name);
    pickle_dump(c_ROM_form_coe_data, c_ROM_form_coe_size, workdirfile);
    free(workdirfile);

    workdirfile = os_path_join(workdir, c_ROM_form_v_name);
    pickle_dump(c_ROM_form_v_data, c_ROM_form_v_size, workdirfile);
    free(workdirfile);

    workdirfile = os_path_join(workdir, c_ROM_form_vhd_name);
    pickle_dump(c_ROM_form_vhd_data, c_ROM_form_vhd_size, workdirfile);
    free(workdirfile);

    return TRUE;
}

BOOL package_clean(const char* workdir)
{
    char* workdirfile = NULL;

    if (workdir == NULL) {
        printf("%s:%d:ERROR: workdir is NULL!\n", __FILE__, __LINE__);
        return FALSE;
    }

    workdirfile = os_path_join(workdir, c_kcpsm3_exe_name);
    DeleteFile(workdirfile);
    free(workdirfile);

    workdirfile = os_path_join(workdir, c_ROM_form_coe_name);
    DeleteFile(workdirfile);
    free(workdirfile);

    workdirfile = os_path_join(workdir, c_ROM_form_v_name);
    DeleteFile(workdirfile);
    free(workdirfile);

    workdirfile = os_path_join(workdir, c_ROM_form_vhd_name);
    DeleteFile(workdirfile);
    free(workdirfile);

    return TRUE;
}

////////////////////////////////////////////////////////////////////////////////
//Extend windows api
BOOL CreateTempDirectory(char* workdir)
{
    char temp_path[MAX_PATH + 1];
    int nr_bytes = 0;
    int bsuccess = 0;

    //Get temp path
    nr_bytes = GetTempPath(MAX_PATH + 1, temp_path);
    if (nr_bytes <= 0) {
        printf("Fail to call GetTempPath, last_error %d\n", GetLastError());
        return FALSE;
    }

    //Append temp file name to path.
    bsuccess = GetTempFileName(temp_path,
            "kcp",//prefix
            0,//unique name
            workdir);
    if (!bsuccess) {
        printf("Fail to call GetTempFileName, last_error %d\n", GetLastError());
        return FALSE;
    }

    //Because windows create a file, we need to delete it.
    DeleteFile(workdir);
    CreateDirectory(workdir, NULL);

    return TRUE;
}

int RemoveDirectoryWithFiles(char* dir)
{
    SHFILEOPSTRUCT file_op = {
        NULL,//hwnd
        FO_DELETE,
        dir,//from path
        "",//to path
        FOF_NOCONFIRMATION |
        FOF_NOERRORUI |
        FOF_SILENT,
        false,
        0,
        "" };
    return SHFileOperation(&file_op);
}

BOOL FileExists(char* name) 
{
    HANDLE h = CreateFile(name,
            GENERIC_READ, FILE_SHARE_READ,
            NULL, OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL, NULL); 
    if (h == INVALID_HANDLE_VALUE) {
        return FALSE;
    } else {
        CloseHandle(h); 
        return TRUE;
    }
}

void free_string(char** s) {
    if (*s != NULL) {
        free(*s);
        *s = NULL;
    }
}

void string_toupper(char* s)
{
    while (*s != '\0') {
        *s = toupper(*s);
        s++;
    }
}

char* string_join(char*s1, char* s2)
{
    char* dst = NULL;
    int len1 = strlen(s1);
    int len2 = strlen(s2);

    dst = (char*)malloc(sizeof(char) * (len1 + len2 + 1));
    memcpy(dst, s1, len1);
    memcpy(dst+len1, s2, len2);
    dst[len1+len2] = '\0';

    return dst;
}

void copy_result(char* dstfilenoext, char* srcfilenoext, char* ext)
{
    char* dym_ext_upper = NULL;
    char* dym_dstfullname   = NULL;
    char* dym_srcfullname  = NULL;

    dym_ext_upper = strdup(ext);
    string_toupper(dym_ext_upper);

    dym_dstfullname = string_join(dstfilenoext, ext);
    dym_srcfullname = string_join(srcfilenoext, dym_ext_upper);

    if (flags_log) {
        printf(" log> Copy \"%s\" to \"%s\"\n", dym_srcfullname, dym_dstfullname);
    }
    CopyFile(dym_srcfullname, dym_dstfullname, FALSE);

    free_string(&dym_ext_upper);
    free_string(&dym_srcfullname);
    free_string(&dym_dstfullname);
}

void output_result(char* workdir, char* dstfilenoext, GETOPT_LIST* lpgetopt_head)
{
    GETOPT_LIST* lpgetopt_iter = NULL;
    char* dym_srcfilenoext_upper = NULL;
    char* dym_srcfilepathnoext   = NULL;

    dym_srcfilenoext_upper = strdup(dstfilenoext);
    string_toupper(dym_srcfilenoext_upper);

    dym_srcfilepathnoext = os_path_join(workdir, dym_srcfilenoext_upper);

    for(lpgetopt_iter = lpgetopt_head;
        lpgetopt_iter != NULL;
        lpgetopt_iter = lpgetopt_iter->next) {
        if (GETOPT_IS_OPTION(*lpgetopt_iter)) {
            if (strcmp(lpgetopt_iter->option, "--fmt") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".fmt");

            } else if (strcmp(lpgetopt_iter->option, "--coe") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".coe");
 
            } else if (strcmp(lpgetopt_iter->option, "--vhdl") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".vhd");
 
            } else if (strcmp(lpgetopt_iter->option, "--verilog") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".v");
 
            } else if (strcmp(lpgetopt_iter->option, "--m") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".m");
 
            } else if (strcmp(lpgetopt_iter->option, "--hex") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".hex");
 
            } else if (strcmp(lpgetopt_iter->option, "--dec") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".dec");
 
            } else if (strcmp(lpgetopt_iter->option, "--mem") == 0) {
                copy_result(dstfilenoext, dym_srcfilepathnoext, ".mem");
 
            }
        }
    }

    free_string(&dym_srcfilenoext_upper);
    free_string(&dym_srcfilepathnoext);
}

int main(int argc, char* argv[])
{
    int ret = 0;
    static char workdir[MAX_PATH + 1];

    GETOPT_LIST* lpgetopt_head = NULL;
    GETOPT_LIST* lpgetopt_iter = NULL;

    ////////////////////////////////////////////////////////////////////////////
    lpgetopt_head = getopt_parse(argc, argv, sformat, lformat);
    if (lpgetopt_head == NULL) {
        if (argc == 1) {
            usage(argv[0]);
        }
        return -1;
    }

    ////////////////////////////////////
    //Process global flags and check help
    {
        BOOL bprint_usage = FALSE;
        for(lpgetopt_iter = lpgetopt_head;
            lpgetopt_iter != NULL;
            lpgetopt_iter = lpgetopt_iter->next) {
            if (GETOPT_IS_OPTION(*lpgetopt_iter)) {
                if (strcmp(lpgetopt_iter->option, "--log") == 0) {
                    flags_log = TRUE;
                } else if (strcmp(lpgetopt_iter->option, "--verbose") == 0) {
                    flags_verbose = TRUE;
                } else if (strcmp(lpgetopt_iter->option, "--help") == 0) {
                    bprint_usage = TRUE;
                } else if (strcmp(lpgetopt_iter->option, "-h") == 0) {
                    bprint_usage = TRUE;
                }
            }
        }

        if (bprint_usage) {
            usage(argv[0]);

            getopt_destroy(lpgetopt_head);
            lpgetopt_head = NULL;
            return 0;
        }
    }

    char* dym_inputfullname = NULL;
    for(lpgetopt_iter = lpgetopt_head;
        lpgetopt_iter != NULL;
        lpgetopt_iter = lpgetopt_iter->next) {
        if (GETOPT_IS_ORPHAN(*lpgetopt_iter)) {
            dym_inputfullname = strdup(lpgetopt_iter->argument);
            break;
        }
    }

    if (dym_inputfullname == NULL) {
        usage(argv[0]);

        getopt_destroy(lpgetopt_head);
        lpgetopt_head = NULL;
        return -1;
    }

    //Get file name
    char* dym_inputfilename = os_path_split(dym_inputfullname);
    int idx_inputextname    = os_path_splitext(dym_inputfilename) - dym_inputfilename;

    char* dym_inputfilenoext = strdup(dym_inputfilename);
    dym_inputfilenoext[idx_inputextname] = '\0';

    ////////////////////////////////////
    //Create working dir
    memset(workdir, 0, sizeof(workdir));
    if (!CreateTempDirectory(workdir)) {
        free_string(&dym_inputfullname);
        free_string(&dym_inputfilename);
        free_string(&dym_inputfilenoext);

        getopt_destroy(lpgetopt_head);
        lpgetopt_head = NULL;

        return -1;
    }

    ////////////////////////////////////////////////////////////////////////////
    if (flags_log) {
        printf(" log> $(workdir)=%s\n", workdir);
        printf(" log> input file full path is \"%s\"\n", dym_inputfullname);
        printf(" log> input file no ext is    \"%s\"\n", dym_inputfilenoext);
        printf(" log> input file iwht ext is  \"%s\"\n", dym_inputfilename);
    }

    if (flags_log) {
        printf(" log> Extract files...\n");
    }
    package_extract(workdir);

    ////////////////////////////////////
    //Build target 
    {
        char* dym_outputfullname = os_path_join(workdir, dym_inputfilename);

        if (flags_log) {
            printf(" log> Copy \"%s\" to \"%s\"\n", dym_inputfullname, dym_outputfullname);
        }
        CopyFile(dym_inputfullname, dym_outputfullname, FALSE);

        free(dym_outputfullname);
        dym_outputfullname = NULL;
    }

    ////////////////////////////////////
    //Run
    {
        if (flags_log) {
            printf(" log> Change to workdir \"%s\"...\n", workdir);
        }

        int custom_argc = 3;
        const char* custom_argv[3] = {NULL,
            "kcpsm3.exe",
            dym_inputfilename};
        ret = run(custom_argc, custom_argv, workdir);
        
        //Check result
        char* dym_pass5fullname = os_path_join(workdir, "PASS5.DAT");
        if (!FileExists(dym_pass5fullname)) {
            if (flags_log) {
                printf(" log> Fail\n");
            } else if (!flags_verbose) {
                printf("!ERROR: Some thing error! add --verbose to see details.\n");
            }
        } else {
            if (flags_log) {
                printf(" log> Success\n");
            }
            output_result(workdir, dym_inputfilenoext, lpgetopt_head);
        }
        free(dym_pass5fullname);
    }

    ////////////////////////////////////
    //Clean
    if (flags_log) {
        printf(" log> Clear all files in \"%s\"\n", workdir);
    }

    RemoveDirectoryWithFiles(workdir);

    free_string(&dym_inputfullname);
    free_string(&dym_inputfilename);
    free_string(&dym_inputfilenoext);

    getopt_destroy(lpgetopt_head);
    lpgetopt_head = NULL;

    return ret;
}


#include "bin2c_kcpsm3.EXE.c"
#include "bin2c_ROM_form.coe.c"
#include "bin2c_ROM_form.v.c"
#include "bin2c_ROM_form.vhd.c"


