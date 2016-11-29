﻿// ******************************************************************************************************/
// 这个是工具自动生成的表代码，这个里面的任何更改在下次生成之后会变得无效，请注意！<UTF-8 With BOM>
// 文件名：     SItemUpgradeCFG.h
// Copyright(c) 2012-2100 上海恺英网络科技有限公司，All rights reserved.
// ******************************************************************************************************/


#ifndef _CITEMUPGRADELOADER_H
#define _CITEMUPGRADELOADER_H

#include <string>
#include <vector>
#include "Platform.h"

using namespace std;

//struct definition for the excel table
struct SItemUpgradeCFG
{
	/**
	序列
	**/
	UINT8	_ID;

	/**
	道具Id
	**/
	UINT16	_ItemID;

	/**
	需要物品
	**/
	string	_RequiredItem;

	/**
	需要银币
	**/
	UINT32	_RequiredSilver;
}; // SItemUpgradeCFG define end

//data loader for the excel table
class CItemUpgradeLoader
{
public:
	std::vector<SItemUpgradeCFG*> _vecData;

	~CItemUpgradeLoader();
	bool LoadData(const std::string& strPath);
	void ClearData();
};
#endif
