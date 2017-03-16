#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <stdio.h>
#include <errno.h>
#include <ctype.h>

// Elektra
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
    int min_line_length = SIZEOF_INT;
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

    // Configuration part (parent key is "/sw/wc/"):

//    const char separator = // Get the separator. It is stored under the key "show/separator".
//
//    // If "/sw/wc/show/no_default_args" is false or "/sw/wc/show/lines" is true.
//    {
//        printf ("%c%d", separator , lines);
//    }
//
//    // If "/sw/wc/show/no_default_args" is false or "/sw/wc/show/words" is true.
//    {
//        printf ("%c%d", separator, words);
//    }

    printf (" %s\n", file);
}


int main(int argc, char ** argv)
{
    Elektra * elektra = elektraOpen ("/sw/wc");

    process_file(elektra, argv[1]);

    elektraClose(elektra);

    return 0;
}
