/************************************************************************
//  工具自动生成的Flash客户端协议代码(返回函数参数事件类型)
//  File Name:    TEvt_GetState.as
//  Purpose:      协议:新帮派战相关协议, 函数:获取帮派战状态
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.newGuildBattleProt
{
	import flash.events.Event;

	/**
	 * 函数GetState[获取帮派战状态]的返回事件
	 */
	public final class TEvt_GetState extends Event
	{
		public static const DATA_RETURN:String = "NewGuildBattleProt_GetState";
		public static const DATA_ERROR:String = "NewGuildBattleProt_GetState_Error";

		public var ret:int; //0为成功，1为失败，2为超时
		public var retParam:SRetParam_GetState; //返回的参数

		public function TEvt_GetState(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		/**
		 * 转换为XML
		 */
		public function toXML():String
		{
			var topXml:XML = <TEvt_GetState ret={ret}/>;
			if(retParam != null)
				topXml.appendChild(retParam.toXML("retParam"));
			return topXml.toXMLString();
		}
	}
}