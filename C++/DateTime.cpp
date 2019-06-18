#include <iostream>
#include <ctime>
#include <iomanip>
#include <locale>
#include "Header.hpp"

using namespace std;

void DateTime(){

	std::cout.imbue(std::locale("ja_JP")); // ロケールを変更すると,また違う表記の仕方になる

	std::time_t tm = std::time(nullptr);
	std::tm* time = localtime(&tm);

	cout << endl << "これから日付と時刻を試します" << endl;

	cout << endl << "日付/時刻" << endl; // <ctime>
	cout << "localtime : " << std::put_time(std::localtime(&tm),"%c %Z") << endl;
	cout << "gmtime    : " << std::put_time(std::gmtime(&tm),"%c %Z") << endl;
		// put_time を利用するには, <iomanip> が必要

	cout << endl << "フォーマット" << endl; // <iomanip>
	cout << "put_time() = " << endl << std::put_time(time,"\n\
datetime\n\
  %%c : %c\n\
 %%Ec : %Ec\n\
date\n\
  %%x : %x\n\
 %%Ex : %Ex\n\
  %%D : %D\n\
  %%F : %F\n\
time\n\
  %%X : %X\n\
 %%EX : %EX\n\
  %%R : %R\n\
  %%r : %r\n\
  %%T : %T\n\
\n\
year\n\
  %%Y : %Y\n\
 %%EY : %EY\n\
  %%y : %y\n\
 %%Oy : %Oy\n\
 %%Ey : %Ey\n\
  %%C : %C\n\
 %%EC : %EC\n\
  %%G : %G\n\
  %%g : %g\n\
month\n\
  %%b : %b\n\
  %%B : %B\n\
  %%m : %m\n\
 %%Om : %Om\n\
week/year\n\
  %%U : %U\n\
 %%OU : %OU\n\
  %%W : %W\n\
 %%OW : %OW\n\
  %%V : %V\n\
 %%OV : %OV\n\
day/year\n\
  %%j : %j\n\
day/month\n\
  %%d : %d\n\
 %%Od : %Od\n\
  %%e : %e\n\
 %%Oe : %Oe\n\
day/week\n\
  %%a : %a\n\
  %%A : %A\n\
  %%w : %w (0:Sunday~)\n\
 %%Ow : %Ow\n\
  %%u : %u (1:Monday~)\n\
 %%Ou : %Ou\n\
\n\
hour\n\
  %%H : %H\n\
 %%OH : %OH\n\
  %%I : %I\n\
 %%OI : %OI\n\
  %%p : %p\n\
minute\n\
  %%M : %M\n\
 %%OM : %OM\n\
second\n\
  %%S : %S\n\
 %%OS : %OS\n\
\n\
timezone\n\
  %%z : %z\n\
  %%Z : %Z\n\
") << endl << endl;

}