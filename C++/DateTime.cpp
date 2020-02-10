#include <iostream>
#include <sstream>
#include <ctime>
#include <iomanip>
#include <locale>
#include "Header.hpp"

using namespace std;

void DateTime(){

	std::cout.imbue(std::locale("ja_JP")); // ロケールを変更すると,また違う表記の仕方になる

	std::time_t tm = std::time(nullptr);
	std::tm* time = localtime(&tm);

	cout <<
	endl <<
	"これから日付と時刻を試します" << endl <<

	endl <<
	"日付/時刻" << endl << // <ctime>
		"localtime : " << std::put_time(std::localtime(&tm),"%c %Z") << endl <<
		"gmtime    : " << std::put_time(std::gmtime(&tm),"%c %Z") << endl <<
			// put_time を利用するには, <iomanip> が必要

	endl <<
	"フォーマット" << endl; // <iomanip>

		// テンプレート文字列をstringstreamで作成
		stringstream ss;
		ss <<
			"datetime" << endl <<
			"  %%c : %c" << endl <<
			" %%Ec : %Ec" << endl <<
			"date" << endl <<
			"  %%x : %x" << endl <<
			" %%Ex : %Ex" << endl <<
			"  %%D : %D" << endl <<
			"  %%F : %F" << endl <<
			"time" << endl <<
			"  %%X : %X" << endl <<
			" %%EX : %EX" << endl <<
			"  %%R : %R" << endl <<
			"  %%r : %r" << endl <<
			"  %%T : %T" << endl <<
			endl <<
			"year" << endl <<
			"  %%Y : %Y" << endl <<
			" %%EY : %EY" << endl <<
			"  %%y : %y" << endl <<
			" %%Oy : %Oy" << endl <<
			" %%Ey : %Ey" << endl <<
			"  %%C : %C" << endl <<
			" %%EC : %EC" << endl <<
			"  %%G : %G" << endl <<
			"  %%g : %g" << endl <<
			"month" << endl <<
			"  %%b : %b" << endl <<
			"  %%B : %B" << endl <<
			"  %%m : %m" << endl <<
			" %%Om : %Om" << endl <<
			"week/year" << endl <<
			"  %%U : %U" << endl <<
			" %%OU : %OU" << endl <<
			"  %%W : %W" << endl <<
			" %%OW : %OW" << endl <<
			"  %%V : %V" << endl <<
			" %%OV : %OV" << endl <<
			"day/year" << endl <<
			"  %%j : %j" << endl <<
			"day/month" << endl <<
			"  %%d : %d" << endl <<
			" %%Od : %Od" << endl <<
			"  %%e : %e" << endl <<
			" %%Oe : %Oe" << endl <<
			"day/week" << endl <<
			"  %%a : %a" << endl <<
			"  %%A : %A" << endl <<
			"  %%w : %w (0:Sunday~)" << endl <<
			" %%Ow : %Ow" << endl <<
			"  %%u : %u (1:Monday~)" << endl <<
			" %%Ou : %Ou" << endl <<
			endl <<
			"hour" << endl <<
			"  %%H : %H" << endl <<
			" %%OH : %OH" << endl <<
			"  %%I : %I" << endl <<
			" %%OI : %OI" << endl <<
			"  %%p : %p" << endl <<
			"minute" << endl <<
			"  %%M : %M" << endl <<
			" %%OM : %OM" << endl <<
			"second" << endl <<
			"  %%S : %S" << endl <<
			" %%OS : %OS" << endl <<
			endl <<
			"timezone" << endl <<
			"  %%z : %z" << endl <<
			"  %%Z : %Z" << endl;

		cout <<
		"put_time() = \"" << endl <<
		std::put_time(time,ss.str().c_str()) << "\"" << endl <<
		endl;

	cout << endl << endl;

}