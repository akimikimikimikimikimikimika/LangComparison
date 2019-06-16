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

	n();printf("これから日付と時刻を試します");n();

	n();printf("localtime (ローカル時刻)");n();
	printf("->tm_year = %d (%d年)",local->tm_year,local->tm_year+1900);n();
	printf("->tm_mon  = %d (%d月)",local->tm_mon,local->tm_mon+1);n();
	printf("->tm_mday = %d",local->tm_mday);n(); // day/month
	printf("->tm_wday = %d",local->tm_wday);n(); // day/week (0:日曜日 ~)
	printf("->tm_yday = %d",local->tm_yday);n(); // day/year (0:1月1日 ~)
	printf("->tm_hour = %d",local->tm_hour);n();
	printf("->tm_min  = %d",local->tm_min);n();
	printf("->tm_sec  = %d",local->tm_sec);n();

	n();printf("gmtime (世界標準時)");n();
	printf("->tm_year = %d (%d年)",utc->tm_year,utc->tm_year+1900);n();
	printf("->tm_mon  = %d (%d月)",utc->tm_mon,utc->tm_mon+1);n();
	printf("->tm_mday = %d",utc->tm_mday);n();
	printf("->tm_wday = %d",utc->tm_wday);n();
	printf("->tm_yday = %d",utc->tm_yday);n();
	printf("->tm_hour = %d",utc->tm_hour);n();
	printf("->tm_min  = %d",utc->tm_min);n();
	printf("->tm_sec  = %d",utc->tm_sec);n();

	nn();

}