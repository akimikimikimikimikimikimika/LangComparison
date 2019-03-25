#include <iostream>
#include <filesystem>
#include "Header.hpp"

namespace fs = std::filesystem;

void File(){

	cout << "\r\nこれからファイル操作を試します\r\n";

	fs::create_directory("Blank");

}