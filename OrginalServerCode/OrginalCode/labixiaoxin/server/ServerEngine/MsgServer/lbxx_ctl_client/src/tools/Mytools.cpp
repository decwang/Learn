#include "Mytools.h"
#include <fstream> 
#include <iostream>
#include "..\json\MyJson.h"
#include "..\data\IGameBase.h"

CMytools::CMytools(void)
{
	m_serverPort = 0;
}

CMytools::~CMytools(void)
{
}

bool CMytools::ReadText()
{
	//如果是个很大的多行存储的文本型文件可以这么读：  
	char buf[1024];                //临时保存读取出来的文件内容  
	std::string str;  
	std::ifstream infile;  
	infile.open("config.json");  
	if(infile.is_open())          //文件打开成功,说明曾经写入过东西  
	{  
		while(infile.good() && !infile.eof())  
		{  
			memset(buf,0,1024);  
			infile.getline(buf,1024); 
			str.append(buf); 
			str.append("\n");
		}  
		infile.close();  

		return ParseJson(str);
	}  
	else
	{
		std::cout<<"查找config.json文件失败"<<std::endl;
		std::cin.get();
		return false;
	}
}

bool CMytools::ParseJson( const std::string & str )
{
	//m_verTOaddress.clear();
	//std::vector<std::string>().swap(m_verTOaddress);
	CMyJson m_myjson;
	CMyJson::JsonRoot json;
	m_myjson.InitJson(str,json);
	m_serverIP = m_myjson.GetStrValue(json,"serverIP");
	m_serverPort = m_myjson.GetValue<int>(json,"serverPort");
	for (unsigned i=0;i<json["opKey"].size();i++)
	{
		m_opMap[json["opKey"][i].asString()] = json["opvalue"][i].asInt();
	}
	m_title = m_myjson.GetStrValue(json,"title");;
	m_exestart = m_myjson.GetStrValue(json,"exestart");;

	IGameBase::isLog = m_myjson.GetValue<bool>(json,"isLog");

	return true;
}
