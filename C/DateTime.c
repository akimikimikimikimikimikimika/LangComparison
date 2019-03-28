#include <stdio.h>
#include <time.h>
#include "Header.h"

void DateTime(){

    time_t tm;
    struct tm *local;
    struct tm *utc;

    tm = time(NULL);
    local = localtime(&tm);
    utc = gmtime(&tm);

    printf("\r\nこれから日付と時刻を試します\r\n");

    printf("\r\nlocaltime (ローカル時刻)\r\n");
    printf("->tm_year = %d (%d年)\r\n",local->tm_year,local->tm_year+1900);
    printf("->tm_mon  = %d (%d月)\r\n",local->tm_mon,local->tm_mon+1);
    printf("->tm_mday = %d\r\n",local->tm_mday); // day/month
    printf("->tm_wday = %d\r\n",local->tm_wday); // day/week (0:日曜日 ~)
    printf("->tm_yday = %d\r\n",local->tm_yday); // day/year (0:1月1日 ~)
    printf("->tm_hour = %d\r\n",local->tm_hour);
    printf("->tm_min  = %d\r\n",local->tm_min);
    printf("->tm_sec  = %d\r\n",local->tm_sec);

    printf("\r\ngmtime (世界標準時)\r\n");
    printf("->tm_year = %d (%d年)\r\n",utc->tm_year,utc->tm_year+1900);
    printf("->tm_mon  = %d (%d月)\r\n",utc->tm_mon,utc->tm_mon+1);
    printf("->tm_mday = %d\r\n",utc->tm_mday);
    printf("->tm_wday = %d\r\n",utc->tm_wday);
    printf("->tm_yday = %d\r\n",utc->tm_yday);
    printf("->tm_hour = %d\r\n",utc->tm_hour);
    printf("->tm_min  = %d\r\n",utc->tm_min);
    printf("->tm_sec  = %d\r\n",utc->tm_sec);

}