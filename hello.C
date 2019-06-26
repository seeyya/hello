/*================================================================
*   Copyright (C) 2019.  All rights reserved.
*
*   文件名称：hello1.C
*   创 建 者：CaoYingying
*   创建日期：2019年06月26日
*   描    述：测试C语言
*
================================================================*/


//#include "hello1.h"
#include<iostream>
using namespace std;

#include <name.h>

int main()
{
	std::cout << "hello, ";
	std::cout << "C++ world!";
	std::cout << std::endl;
	std::cout << "please write your name:_________\b\b\b\b";
	name usrname();
	std::cin >> usrname;
	std::cout << "hello, " << usrname << std::endl;
}
