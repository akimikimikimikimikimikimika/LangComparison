#ifndef CDEF
	#define CDEF
		int main(int argc, char *argv[]);
			int cmp(char *s1,char *s2); // 文字列を比較する
			void n(); // 改行文字を入れる
			void nn();
			void nnn();
		void Stdinout();
		void Values();
		void Operators();
		void Condition();
		void Loop();
		void Math();
		void String();
		void Sprintf();
		void RegExp();
		void DateTime();
		void FileHandle();
			void error(); // ファイル操作で生じうるエラーを一括で取り扱う
		void Path();
		void Struct();
		void Arguments(int argc, char *argv[]);
			void ArgumentsDemo();
#endif