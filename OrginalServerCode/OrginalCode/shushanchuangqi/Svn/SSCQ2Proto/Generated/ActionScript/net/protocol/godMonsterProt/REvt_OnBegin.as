/************************************************************************
//  工具自动生成的Flash客户端协议代码(接收函数参数事件类型)
//  File Name:    REvt_OnBegin.as
//  Purpose:      协议:天元神兽协议, 函数:活动开始
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.godMonsterProt
{
	import flash.events.Event;

	/**
	 * 函数OnBegin[活动开始]的接收事件
	 */
	public final class REvt_OnBegin extends Event
	{
		public static const DATA_RECEIVE:String = "GodMonsterProt_OnBegin";
		public static const DATA_ERROR:String = "GodMonsterProt_OnBegin_Error";

		public var dwTime:uint; //(无符号32位整数)时间

		public function REvt_OnBegin(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		/**
		 * 转换为XML
		 */
		public function toXML():XML
		{
			var topXml:XML = <REvt_OnBegin dwTime={dwTime}/>;
			return topXml;
		}
	}
}