/************************************************************************
//  工具自动生成的Flash客户端协议代码(接收函数参数事件类型)
//  File Name:    REvt_AchievementShareNotify.as
//  Purpose:      协议:成就相关协议, 函数:成就分享通知
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.achievementProt
{
	import flash.events.Event;

	/**
	 * 函数AchievementShareNotify[成就分享通知]的接收事件
	 */
	public final class REvt_AchievementShareNotify extends Event
	{
		public static const DATA_RECEIVE:String = "AchievementProt_AchievementShareNotify";
		public static const DATA_ERROR:String = "AchievementProt_AchievementShareNotify_Error";

		public var oAchievementShare:SAchievementShare; //成就分享信息

		public function REvt_AchievementShareNotify(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		/**
		 * 转换为XML
		 */
		public function toXML():XML
		{
			var topXml:XML = <REvt_AchievementShareNotify/>;
			if(oAchievementShare != null)
				topXml.appendChild(oAchievementShare.toXML("oAchievementShare"));
			return topXml;
		}
	}
}