/************************************************************************
//  工具自动生成的Flash客户端协议代码(结构体类型)
//  File Name:    SRetParam_SellItem.as
//  Purpose:      请求出售包裹中的道具-出售给系统
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.itemProt
{
	/**
	 * 请求出售包裹中的道具-出售给系统的返回的参数组成的结构体
	 */
	public final class SRetParam_SellItem
	{
		public var eResult:uint; //(枚举类型：EItemResult)使用道具结果

		/**
		 * 转换为XML
		 * @param name_ 此类型作为成员变量时的变量名
		 */
		public function toXML(name_:String = null):XML
		{
			var topXml:XML
			if(name_ != null && name_ != "")
				topXml = <SRetParam_SellItem _name_={name_} eResult={eResult}/>;
			else
				topXml = <SRetParam_SellItem eResult={eResult}/>;
			return topXml;
		}
	}
}