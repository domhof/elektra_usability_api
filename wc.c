#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <stdio.h>
#include <errno.h>
#include <ctype.h>

#include "kdb.h"
#include "elektra.h"

#define BUF_SIZ 4096

void process_file(Elektra * elektra, char * file)
{
    int fd = open(file, O_RDONLY);
    if (fd == -1)
    {
        printf("Could not open %s because of %s\n", file, strerror(errno));
        return;
    }

    char buffer[BUF_SIZ];
    ssize_t ret = 1;
    int in_word = 0;

    int bytes = 0;
    int chars = 0;
    int words = 0;
    int lines = 0;
    int current_line_length = 0;
    int min_line_length = INT_MAX;
    int max_line_length = 0;

    while ((ret = read(fd, buffer, BUF_SIZ)) > 0)
    {
        int j;

        for (j=0; j<ret; j++)
        {
            ++bytes;
            ++current_line_length;
            if(buffer[j] == '\n')
            {
                ++lines;
                if (current_line_length > max_line_length)
                {
                    max_line_length = current_line_length;
                }
                if (current_line_length < min_line_length)
                {
                    min_line_length = current_line_length;
                }
                current_line_length = 0;
            }
            if(in_word && isspace(buffer[j]))
            {
                in_word = 0;
                words++;
            }
            else if(isprint(buffer[j]))
            {
                in_word = 1;
                chars ++;
            }
        }
    }

    close(fd);

//    if(!get_sw_wc_show_no_default_args(conf) || get_sw_wc_show_lines(conf))
//    {
//        printf ("%c%d", get_sw_wc_show_separator(conf), lines);
//    }

    printf (" %s\n", file);
}


int main(int argc, char**argv)
{
//    Key *parentKey = keyNew(""); //keyNew(KEY_END);
//    KDB *kdb = kdbOpen(parentKey);
//    KeySet *conf= ksNew(200, KS_END);
//
//    keySetName(parentKey, "user/sw/wc");
//    kdbGet(kdb, conf, parentKey);
//
//    keySetName(parentKey, "system/sw/wc");
//    kdbGet(kdb, conf, parentKey);

    Elektra * elektra = elektraOpen ("/sw/wc");
    const char * separator = elektraGetString(elektra, "show/separator");
    printf ("%s", separator);

    process_file(elektra, argv[0]);

    elektraClose(elektra);

    return 0;
}
