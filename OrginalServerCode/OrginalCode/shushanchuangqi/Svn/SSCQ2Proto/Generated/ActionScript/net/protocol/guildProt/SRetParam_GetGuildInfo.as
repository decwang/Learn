/************************************************************************
//  工具自动生成的Flash客户端协议代码(结构体类型)
//  File Name:    SRetParam_GetGuildInfo.as
//  Purpose:      获取帮派面板信息
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.guildProt
{
	/**
	 * 获取帮派面板信息的返回的参数组成的结构体
	 */
	public final class SRetParam_GetGuildInfo
	{
		public var sGuildInfoBase:SGetGuildInfoBase; //返回结果

		/**
		 * 转换为XML
		 * @param name_ 此类型作为成员变量时的变量名
		 */
		public function toXML(name_:String = null):XML
		{
			var topXml:XML
			if(name_ != null && name_ != "")
				topXml = <SRetParam_GetGuildInfo _name_={name_}/>;
			else
				topXml = <SRetParam_GetGuildInfo/>;
			if(sGuildInfoBase != null)
				topXml.appendChild(sGuildInfoBase.toXML("sGuildInfoBase"));
			return topXml;
		}
	}
}
