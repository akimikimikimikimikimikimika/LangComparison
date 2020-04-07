#include "Header.h"

void Operators(){

	printLn2(1,@"これから演算子を試します",1);
	printLn2(1,@"算術演算子",1);
	printLn([fmt:@"24   + 5 = %d",24  +5],1);
	printLn([fmt:@"24   - 5 = %d",24  -5],1);
	printLn([fmt:@"24   * 5 = %d",24  *5],1);
	printLn([fmt:@"24.0 / 5 = %f",24.0/5],1);
	printLn([fmt:@"24   %% 5 = %d",24 %5],1);

	printLn2(1,@"比較演算子",1);
	printLn([fmt:@"24 <  5 = %d",24< 5],1);
	printLn([fmt:@"24 <= 5 = %d",24<=5],1);
	printLn([fmt:@"24 >  5 = %d",24> 5],1);
	printLn([fmt:@"24 >= 5 = %d",24>=5],1);
	printLn([fmt:@"24 == 5 = %d",24==5],1);
	printLn([fmt:@"24 != 5 = %d",24!=5],1);

	printLn2(1,@"論理演算子",1);
	printLn([fmt:@"YES && NO = %d",YES&&NO],1);
	printLn([fmt:@"YES || NO = %d",YES||NO],1);
	printLn([fmt:@"     ! NO = %d",    !NO],1);

	printLn2(1,@"三項演算子",1);
	printLn([fmt:@"YES ? \"yes\" : \"no\" = \"%@\"",YES?@"yes":@"no"],1);
	printLn([fmt:@" NO ? \"yes\" : \"no\" = \"%@\"", NO?@"yes":@"no"],1);

	nl(2);

}