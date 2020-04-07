#ifndef CDEF
	#define CDEF
		int main(int argc, char *argv[]);
			int cmp(char *s1,char *s2); // 文字列を比較する
			void nl(unsigned int n); // n個だけ改行文字を入れる
			void printLn(const char *text,unsigned int n); // textを出力し,n個だけ改行文字を入れる
			void printLn2(unsigned int begin,const char *text,unsigned int end);
		void Stdio();
		void Values();
		void Operators();
		void Condition();
		void Repeat();
		void Math();
		void Strings();
		void Format();
		void RegEx();
		void DateTime();
		void Files();
			void error(); // ファイル操作で生じうるエラーを一括で取り扱う
		void Path();
		void Struct();
		void Arguments(int argc, char *argv[]);
			void ArgumentsDemo();
#endif