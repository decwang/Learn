/************************************************************************
//  工具自动生成的Flash客户端协议代码(返回函数参数事件类型)
//  File Name:    TEvt_GetSecondRechargeAward.as
//  Purpose:      协议:活动, 函数:领取二次充值礼包
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.dayActProt
{
	import flash.events.Event;

	/**
	 * 函数GetSecondRechargeAward[领取二次充值礼包]的返回事件
	 */
	public final class TEvt_GetSecondRechargeAward extends Event
	{
		public static const DATA_RETURN:String = "DayActProt_GetSecondRechargeAward";
		public static const DATA_ERROR:String = "DayActProt_GetSecondRechargeAward_Error";

		public var ret:int; //0为成功，1为失败，2为超时
		public var retParam:SRetParam_GetSecondRechargeAward; //返回的参数

		public function TEvt_GetSecondRechargeAward(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		/**
		 * 转换为XML
		 */
		public function toXML():String
		{
			var topXml:XML = <TEvt_GetSecondRechargeAward ret={ret}/>;
			if(retParam != null)
				topXml.appendChild(retParam.toXML("retParam"));
			return topXml.toXMLString();
		}
	}
}