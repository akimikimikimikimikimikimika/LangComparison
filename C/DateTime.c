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

	printLn2(1,"これから日付と時刻を試します",1);

	printLn2(1,"localtime (ローカル時刻)",1);
	printf("->tm_year = %d (%d年)",local->tm_year,local->tm_year+1900);nr(1);
	printf("->tm_mon  = %d (%d月)",local->tm_mon,local->tm_mon+1);nr(1);
	printf("->tm_mday = %d",local->tm_mday);nr(1); // day/month
	printf("->tm_wday = %d",local->tm_wday);nr(1); // day/week (0:日曜日 ~)
	printf("->tm_yday = %d",local->tm_yday);nr(1); // day/year (0:1月1日 ~)
	printf("->tm_hour = %d",local->tm_hour);nr(1);
	printf("->tm_min  = %d",local->tm_min);nr(1);
	printf("->tm_sec  = %d",local->tm_sec);nr(1);

	printLn2(1,"gmtime (世界標準時)",1);
	printf("->tm_year = %d (%d年)",utc->tm_year,utc->tm_year+1900);nr(1);
	printf("->tm_mon  = %d (%d月)",utc->tm_mon,utc->tm_mon+1);nr(1);
	printf("->tm_mday = %d",utc->tm_mday);nr(1);
	printf("->tm_wday = %d",utc->tm_wday);nr(1);
	printf("->tm_yday = %d",utc->tm_yday);nr(1);
	printf("->tm_hour = %d",utc->tm_hour);nr(1);
	printf("->tm_min  = %d",utc->tm_min);nr(1);
	printf("->tm_sec  = %d",utc->tm_sec);nr(1);

	nr(2);

}